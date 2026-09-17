Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nickel-rs/original/lsp_harness-e10ca737dc62e248.lsp_harness.17c7a790e090b353-cgu.0?download=true
inline.NumInlined: 14236
inline.NumDeleted: 7074
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumRuntimeUnrolled: 24
loop-unroll.NumUnrolled: 46
begin_hunk_0_@"_ZN105_$LT$lsp_types..url_map..deserialize..OptionUrlMapVisitor$LT$V$GT$$u20$as$u20$serde_core..de..Visitor$GT$10visit_some17hc65f7b4a12bc122dE":bb.a

"_ZN4core3ptr109drop_in_place$LT$core..option..Option$LT$lsp_types..document_diagnostic..DocumentDiagnosticReportKind$GT$$GT$17hf9488d7f07266e6aE.exit.i.i.i": ; preds = %bb.eu, %bb.et, %bb.es, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0ff745720a255f74E.exit.i.i.i.i", %bb.ei
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba), !noalias !815
  %i.mm = icmp eq ptr %i.dd, %i.bk
  br i1 %i.mm, label %.thread.i.i, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc5ecfc9063bcde1dE.exit.i.i.i.i.i.i"

bb.ev:                                            ; preds = %.body.i.i.i
  %i.mn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #40, !noalias !815
  unreachable

.thread39.i.i:                                    ; preds = %"_ZN3std6thread5local17LocalKey$LT$T$GT$4with17hb53b624a57bd52f3E.exit.i.i.i", %bb.eg, %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17ha003a7c74725302bE.exit.i.i.i.i.i"
  %lpad.thr_comm.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread34.i.i

bb.ew:                                            ; preds = %.thread.i.i, %.thread42.i.i
  %.sroa.5.045.i.i = phi ptr [ %.sroa.8.0.i.i.i, %.thread42.i.i ], [ %.sroa.5.0.copyload16.i.i, %.thread.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf), !noalias !814
  call fastcc void @"_ZN4core3ptr145drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$$LP$serde_core..private..content..Content$C$serde_core..private..content..Content$RP$$GT$$GT$17h87196d6649e0d9c0E"(ptr noalias noundef readonly align 8 dereferenceable(32) %i.bl), !noalias !814
  br label %"_ZN106_$LT$serde..private..de..content..ContentDeserializer$LT$E$GT$$u20$as$u20$serde_core..de..Deserializer$GT$15deserialize_map17h57982c0e2dbba431E.exit.thread10"

bb.ex:                                            ; preds = %.thread.i.i
  %.sroa.520.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.520.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.i.i, i64 32, i1 false), !noalias !814
  store ptr %.sroa.0.0.copyload12.i.i, ptr %i.bf, align 8, !noalias !814
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  store ptr %.sroa.5.0.copyload16.i.i, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !814
  %i.mo = invoke fastcc noundef align 8 ptr @"_ZN5serde7private2de7content24MapDeserializer$LT$E$GT$3end17h0ae61a9d1927b883E"(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.be)
          to label %bb.ez unwind label %bb.ey, !noalias !814 ; 2 uses

bb.ey:                                            ; preds = %bb.ex
  %i.mp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr136drop_in_place$LT$std..collections..hash..map..HashMap$LT$url..Url$C$lsp_types..document_diagnostic..DocumentDiagnosticReportKind$GT$$GT$17h9413abb1c555cb79E"(ptr noalias noundef align 8 dereferenceable(48) %i.bf) #43
          to label %.body.i unwind label %bb.fa, !noalias !814

bb.ez:                                            ; preds = %bb.ex
  %.not.i.i = icmp eq ptr %i.mo, null
  br i1 %.not.i.i, label %bb.fc, label %.noexc4.i

.noexc4.i:                                        ; preds = %bb.ez
  call fastcc void @"_ZN4core3ptr136drop_in_place$LT$std..collections..hash..map..HashMap$LT$url..Url$C$lsp_types..document_diagnostic..DocumentDiagnosticReportKind$GT$$GT$17h9413abb1c555cb79E"(ptr noalias noundef align 8 dereferenceable(48) %i.bf), !noalias !813
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf), !noalias !814
  br label %"_ZN106_$LT$serde..private..de..content..ContentDeserializer$LT$E$GT$$u20$as$u20$serde_core..de..Deserializer$GT$15deserialize_map17h57982c0e2dbba431E.exit.thread10"

bb.fa:                                            ; preds = %.thread34.i.i, %bb.ey
  %i.mq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #40, !noalias !814
  unreachable

.thread34.i.i:                                    ; preds = %.thread39.i.i, %.body.i.i.i
  %eh.lpad-body37.i.i = phi { ptr, i32 } [ %lpad.thr_comm.i.i, %.thread39.i.i ], [ %eh.lpad-body.i.i.i, %.body.i.i.i ]
  invoke fastcc void @"_ZN4core3ptr97drop_in_place$LT$serde..private..de..content..MapDeserializer$LT$serde_json..error..Error$GT$$GT$17h66597dc5c20beabaE"(ptr noalias noundef align 8 dereferenceable(72) %i.be) #43
          to label %.body.i unwind label %bb.fa, !noalias !814

"_ZN106_$LT$serde..private..de..content..ContentDeserializer$LT$E$GT$$u20$as$u20$serde_core..de..Deserializer$GT$15deserialize_map17h57982c0e2dbba431E.exit.thread": ; preds = %bb.a
  %i.mr = call fastcc noundef nonnull align 8 ptr @"_ZN5serde7private2de7content28ContentDeserializer$LT$E$GT$12invalid_type17hee577c6f6d2deb53E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(32) %1, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @20), !noalias !812
  br label %bb.fb

.body.i:                                          ; preds = %.thread34.i.i, %bb.ey
  %eh.lpad-body.i = phi { ptr, i32 } [ %eh.lpad-body37.i.i, %.thread34.i.i ], [ %i.mp, %bb.ey ]
  resume { ptr, i32 } %eh.lpad-body.i

"_ZN106_$LT$serde..private..de..content..ContentDeserializer$LT$E$GT$$u20$as$u20$serde_core..de..Deserializer$GT$15deserialize_map17h57982c0e2dbba431E.exit.thread10": ; preds = %bb.ew, %.noexc4.i
  %.sroa.8.0.ph = phi ptr [ %i.mo, %.noexc4.i ], [ %.sroa.5.045.i.i, %bb.ew ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be), !noalias !813
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i)
  br label %bb.fb

bb.fb:                                            ; preds = %"_ZN106_$LT$serde..private..de..content..ContentDeserializer$LT$E$GT$$u20$as$u20$serde_core..de..Deserializer$GT$15deserialize_map17h57982c0e2dbba431E.exit.thread10", %"_ZN106_$LT$serde..private..de..content..ContentDeserializer$LT$E$GT$$u20$as$u20$serde_core..de..Deserializer$GT$15deserialize_map17h57982c0e2dbba431E.exit.thread"
  %.sroa.8.19 = phi ptr [ %i.mr, %"_ZN106_$LT$serde..private..de..content..ContentDeserializer$LT$E$GT$$u20$as$u20$serde_core..de..Deserializer$GT$15deserialize_map17h57982c0e2dbba431E.exit.thread" ], [ %.sroa.8.0.ph, %"_ZN106_$LT$serde..private..de..content..ContentDeserializer$LT$E$GT$$u20$as$u20$serde_core..de..Deserializer$GT$15deserialize_map17h57982c0e2dbba431E.exit.thread10" ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.19) ]
  br label %bb.fd

bb.fc:                                            ; preds = %bb.ez
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.12, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.i.i, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf), !noalias !814
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be), !noalias !813
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i)
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.12, i64 32, i1 false)
  %i.ms = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.0.copyload12.i.i, ptr %i.ms, align 8
  br label %bb.fd

bb.fd:                                            ; preds = %bb.fc, %bb.fb
  %.sink = phi i64 [ 16, %bb.fc ], [ 8, %bb.fb ]
  %.sroa.5.0.copyload16.i.i.sink = phi ptr [ %.sroa.5.0.copyload16.i.i, %bb.fc ], [ %.sroa.8.19, %bb.fb ]
  %storemerge = phi i64 [ 0, %bb.fc ], [ 1, %bb.fb ]
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 %.sink
  store ptr %.sroa.5.0.copyload16.i.i.sink, ptr %.sroa.4.0..sroa_idx, align 8
  store i64 %storemerge, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN105_$LT$serde..private..ser..FlatMapSerializeStruct$LT$M$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h5287490787fa0134E"(ptr nofree captures(none) %.0.val, ptr noalias noundef nonnull readonly align 1 captures(none) %0, i64 noundef range(i64 13, 19) %1, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2) unnamed_addr #1 {
bb.a:
  %i.a = alloca [40 x i8], align 1                ; 9 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !992)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !993)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !994)
  %i.b = load ptr, ptr %.0.val, align 8, !alias.scope !995, !noalias !996, !nonnull !28, !align !35, !noundef !28 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.0.val, i64 8 ; 2 uses
  %i.d = load i8, ptr %i.c, align 8, !range !42, !alias.scope !995, !noalias !996, !noundef !28
  %i.e = icmp eq i8 %i.d, 1
  %.val.i.i = load ptr, ptr %i.b, align 8, !noalias !997 ; 6 uses
  br i1 %i.e, label %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit.i", label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !998)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !999)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1000)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1001)
  %i.f = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 16 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !1002, !noalias !1003, !noundef !28 ; 3 uses
  %i.h = load i64, ptr %.val.i.i, align 8, !range !29, !alias.scope !1002, !noalias !1003, !noundef !28
  %i.i = icmp eq i64 %i.h, %i.g
  br i1 %i.i, label %bb.c, label %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h4ab301283a333dfdE.exit.i.i.i", !prof !30

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hbfe87a90490e90eaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i, i64 noundef %i.g, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !1003
  %.pre.i.i.i.i.i.i.i.i = load i64, ptr %i.f, align 8, !alias.scope !1004, !noalias !1003
  br label %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h4ab301283a333dfdE.exit.i.i.i"

"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h4ab301283a333dfdE.exit.i.i.i": ; preds = %bb.c, %bb.b
  %i.j = phi i64 [ %i.g, %bb.b ], [ %.pre.i.i.i.i.i.i.i.i, %bb.c ] ; 3 uses
  %i.k = icmp sgt i64 %i.j, -1
  tail call void @llvm.assume(i1 %i.k)
  %i.l = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !1004, !noalias !1003, !nonnull !28, !noundef !28
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.j
  store i8 44, ptr %i.n, align 1, !noalias !1005
  %i.o = add nuw i64 %i.j, 1
  store i64 %i.o, ptr %i.f, align 8, !alias.scope !1004, !noalias !1003
  %.val9.pre.i.i = load ptr, ptr %i.b, align 8, !noalias !997
  br label %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit.i"

"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit.i": ; preds = %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h4ab301283a333dfdE.exit.i.i.i", %bb.a
  %.val9.i.i = phi ptr [ %.val.i.i, %bb.a ], [ %.val9.pre.i.i, %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h4ab301283a333dfdE.exit.i.i.i" ]
  store i8 2, ptr %i.c, align 8, !alias.scope !995, !noalias !996
  tail call fastcc void @"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_str17hf58c26c162f17e29E"(ptr nonnull %.val9.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %0, i64 noundef range(i64 13, 19) %1)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1006)
  %.val.i4.i = load ptr, ptr %i.b, align 8, !noalias !1007, !nonnull !28, !align !35, !noundef !28 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1008)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1009)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1010)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1011)
  %i.p = getelementptr inbounds nuw i8, ptr %.val.i4.i, i64 16 ; 3 uses
  %i.q = load i64, ptr %i.p, align 8, !alias.scope !1012, !noalias !1013, !noundef !28 ; 3 uses
  %i.r = load i64, ptr %.val.i4.i, align 8, !range !29, !alias.scope !1012, !noalias !1013, !noundef !28
  %i.s = icmp eq i64 %i.r, %i.q
  br i1 %i.s, label %bb.d, label %_ZN10serde_json3ser9Formatter18begin_object_value17h6d3bc186cdc16551E.exit.i.i, !prof !30

bb.d:                                             ; preds = %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit.i"
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hbfe87a90490e90eaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i4.i, i64 noundef %i.q, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !1013
  %.pre.i.i.i.i.i.i.i6.i = load i64, ptr %i.p, align 8, !alias.scope !1014, !noalias !1013
  br label %_ZN10serde_json3ser9Formatter18begin_object_value17h6d3bc186cdc16551E.exit.i.i

_ZN10serde_json3ser9Formatter18begin_object_value17h6d3bc186cdc16551E.exit.i.i: ; preds = %bb.d, %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit.i"
  %i.t = phi i64 [ %i.q, %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit.i" ], [ %.pre.i.i.i.i.i.i.i6.i, %bb.d ] ; 3 uses
  %i.u = icmp sgt i64 %i.t, -1
  tail call void @llvm.assume(i1 %i.u)
  %i.v = getelementptr inbounds nuw i8, ptr %.val.i4.i, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !alias.scope !1014, !noalias !1013, !nonnull !28, !noundef !28
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.t
  store i8 58, ptr %i.x, align 1, !noalias !1015
  %i.y = add nuw i64 %i.t, 1
  store i64 %i.y, ptr %i.p, align 8, !alias.scope !1014, !noalias !1013
  %.val9.i5.i = load ptr, ptr %i.b, align 8, !noalias !1007 ; 12 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1016)
  %i.z = load i64, ptr %2, align 8, !range !40, !alias.scope !1017, !noalias !1018, !noundef !28 ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.z, -9223372036854775807
  br i1 %.not.i.i.i, label %bb.o, label %bb.e

bb.e:                                             ; preds = %_ZN10serde_json3ser9Formatter18begin_object_value17h6d3bc186cdc16551E.exit.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1019)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1020)
  %.not.i.i.i.i.i = icmp eq i64 %i.z, -9223372036854775808
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  br i1 %.not.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ab = load ptr, ptr %i.aa, align 8, !alias.scope !1021, !noalias !1018, !nonnull !28, !noundef !28
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ad = load i64, ptr %i.ac, align 8, !alias.scope !1021, !noalias !1018, !noundef !28
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9.i5.i) ]
  tail call fastcc void @"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_str17hf58c26c162f17e29E"(ptr nonnull %.val9.i5.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ab, i64 noundef %i.ad)
  br label %_ZN10serde_core3ser12SerializeMap15serialize_entry17h856a737551afe604E.exit

bb.g:                                             ; preds = %bb.e
  %i.ae = load i32, ptr %i.aa, align 8, !alias.scope !1021, !noalias !1018, !noundef !28 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1022
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1023)
  %3 = icmp sgt i32 %i.ae, -1
  %.sroa.0.0.i.i.i.i.i.i.i.i = tail call i32 @llvm.abs.i32(i32 %i.ae, i1 false) ; 3 uses
  %i.af = icmp ugt i32 %.sroa.0.0.i.i.i.i.i.i.i.i, 9999
  br i1 %i.af, label %.lr.ph.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i:                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %bb.g
  %.sroa.09.0.lcssa.i.i.i.i.i.i.i.i = phi i64 [ 11, %bb.g ], [ %i.ap, %.lr.ph.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.0.1.lcssa.i.i.i.i.i.i.i.i = phi i32 [ %.sroa.0.0.i.i.i.i.i.i.i.i, %bb.g ], [ %i.ai, %.lr.ph.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.ag = icmp samesign ugt i32 %.sroa.0.1.lcssa.i.i.i.i.i.i.i.i, 99
  br i1 %i.ag, label %bb.h, label %bb.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.g, %.lr.ph.i.i.i.i.i.i.i.i
  %.sroa.0.129.i.i.i.i.i.i.i.i = phi i32 [ %i.ai, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.sroa.0.0.i.i.i.i.i.i.i.i, %bb.g ] ; 3 uses
  %.sroa.09.028.i.i.i.i.i.i.i.i = phi i64 [ %i.ap, %.lr.ph.i.i.i.i.i.i.i.i ], [ 11, %bb.g ] ; 2 uses
  %i.ah = urem i32 %.sroa.0.129.i.i.i.i.i.i.i.i, 10000
  %i.ai = udiv i32 %.sroa.0.129.i.i.i.i.i.i.i.i, 10000 ; 2 uses
  %.lhs.trunc.i.i.i.i.i.i.i.i = trunc nuw nsw i32 %i.ah to i16 ; 2 uses
  %i.aj = udiv i16 %.lhs.trunc.i.i.i.i.i.i.i.i, 100
  %i.ak = shl nuw nsw i16 %i.aj, 1
  %i.al = zext nneg i16 %i.ak to i64
  %i.am = urem i16 %.lhs.trunc.i.i.i.i.i.i.i.i, 100
  %i.an = shl nuw nsw i16 %i.am, 1
  %i.ao = zext nneg i16 %i.an to i64
  %i.ap = add i64 %.sroa.09.028.i.i.i.i.i.i.i.i, -4 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr @849, i64 %i.al
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ap
  %i.as = load i16, ptr %i.aq, align 1, !noalias !1024
  store i16 %i.as, ptr %i.ar, align 1, !alias.scope !1023, !noalias !1022
  %i.at = getelementptr inbounds nuw i8, ptr @849, i64 %i.ao
  %i.au = getelementptr i8, ptr %i.a, i64 %.sroa.09.028.i.i.i.i.i.i.i.i
  %i.av = getelementptr i8, ptr %i.au, i64 -2
  %i.aw = load i16, ptr %i.at, align 1, !noalias !1024
  store i16 %i.aw, ptr %i.av, align 1, !alias.scope !1023, !noalias !1022
  %i.ax = icmp ugt i32 %.sroa.0.129.i.i.i.i.i.i.i.i, 99999999
  br i1 %i.ax, label %.lr.ph.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i

bb.h:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i
  %.lhs.trunc24.i.i.i.i.i.i.i.i = trunc nuw i32 %.sroa.0.1.lcssa.i.i.i.i.i.i.i.i to i16 ; 2 uses
  %i.ay = urem i16 %.lhs.trunc24.i.i.i.i.i.i.i.i, 100
  %i.az = shl nuw nsw i16 %i.ay, 1
  %i.ba = zext nneg i16 %i.az to i64
  %i.bb = udiv i16 %.lhs.trunc24.i.i.i.i.i.i.i.i, 100
  %.zext27.i.i.i.i.i.i.i.i = zext nneg i16 %i.bb to i32
  %i.bc = add i64 %.sroa.09.0.lcssa.i.i.i.i.i.i.i.i, -2 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr @849, i64 %i.ba
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bc
  %i.bf = load i16, ptr %i.bd, align 1, !noalias !1024
  store i16 %i.bf, ptr %i.be, align 1, !alias.scope !1023, !noalias !1022
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge.i.i.i.i.i.i.i.i
  %.sroa.09.1.i.i.i.i.i.i.i.i = phi i64 [ %i.bc, %bb.h ], [ %.sroa.09.0.lcssa.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.0.2.i.i.i.i.i.i.i.i = phi i32 [ %.zext27.i.i.i.i.i.i.i.i, %bb.h ], [ %.sroa.0.1.lcssa.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.bg = icmp samesign ult i32 %.sroa.0.2.i.i.i.i.i.i.i.i, 10
  br i1 %i.bg, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bh = shl nuw nsw i32 %.sroa.0.2.i.i.i.i.i.i.i.i, 1
  %i.bi = zext nneg i32 %i.bh to i64
  %i.bj = add i64 %.sroa.09.1.i.i.i.i.i.i.i.i, -2 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr @849, i64 %i.bi
  %i.bl = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bj
  %i.bm = load i16, ptr %i.bk, align 1, !noalias !1024
  store i16 %i.bm, ptr %i.bl, align 1, !alias.scope !1023, !noalias !1022
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.bn = add i64 %.sroa.09.1.i.i.i.i.i.i.i.i, -1 ; 2 uses
  %i.bo = trunc nuw nsw i32 %.sroa.0.2.i.i.i.i.i.i.i.i to i8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bn
  %i.bq = or disjoint i8 %i.bo, 48
  store i8 %i.bq, ptr %i.bp, align 1, !alias.scope !1023, !noalias !1022
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.sroa.09.2.i.i.i.i.i.i.i.i = phi i64 [ %i.bn, %bb.k ], [ %i.bj, %bb.j ] ; 2 uses
  br i1 %3, label %"_ZN4itoa55_$LT$impl$u20$itoa..private..Sealed$u20$for$u20$i32$GT$5write17h60888a2bbedeb6fbE.exit.i.i.i.i.i.i.i", label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.br = add i64 %.sroa.09.2.i.i.i.i.i.i.i.i, -1 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.br
  store i8 45, ptr %i.bs, align 1, !alias.scope !1023, !noalias !1022
  br label %"_ZN4itoa55_$LT$impl$u20$itoa..private..Sealed$u20$for$u20$i32$GT$5write17h60888a2bbedeb6fbE.exit.i.i.i.i.i.i.i"

"_ZN4itoa55_$LT$impl$u20$itoa..private..Sealed$u20$for$u20$i32$GT$5write17h60888a2bbedeb6fbE.exit.i.i.i.i.i.i.i": ; preds = %bb.m, %bb.l
  %.sroa.09.3.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.09.2.i.i.i.i.i.i.i.i, %bb.l ], [ %i.br, %bb.m ] ; 2 uses
  %i.bt = sub i64 11, %.sroa.09.3.i.i.i.i.i.i.i.i ; 5 uses
  %i.bu = icmp ult i64 %i.bt, 12
  tail call void @llvm.assume(i1 %i.bu)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9.i5.i) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1025)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1026)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1027)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1028)
  %i.bv = getelementptr inbounds nuw i8, ptr %.val9.i5.i, i64 16 ; 3 uses
  %i.bw = load i64, ptr %i.bv, align 8, !alias.scope !1029, !noalias !1030, !noundef !28 ; 3 uses
  %i.bx = load i64, ptr %.val9.i5.i, align 8, !range !29, !alias.scope !1029, !noalias !1030, !noundef !28
  %i.by = sub i64 %i.bx, %i.bw
  %i.bz = icmp ugt i64 %i.bt, %i.by
  br i1 %i.bz, label %bb.n, label %"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_i3217h726c845337975a7aE.exit.i.i.i.i.i", !prof !30

bb.n:                                             ; preds = %"_ZN4itoa55_$LT$impl$u20$itoa..private..Sealed$u20$for$u20$i32$GT$5write17h60888a2bbedeb6fbE.exit.i.i.i.i.i.i.i"
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hbfe87a90490e90eaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val9.i5.i, i64 noundef %i.bw, i64 noundef %i.bt, i64 noundef 1, i64 noundef 1), !noalias !1030
  %.pre.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.bv, align 8, !alias.scope !1031, !noalias !1030
  br label %"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_i3217h726c845337975a7aE.exit.i.i.i.i.i"

"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_i3217h726c845337975a7aE.exit.i.i.i.i.i": ; preds = %bb.n, %"_ZN4itoa55_$LT$impl$u20$itoa..private..Sealed$u20$for$u20$i32$GT$5write17h60888a2bbedeb6fbE.exit.i.i.i.i.i.i.i"
  %i.ca = phi i64 [ %i.bw, %"_ZN4itoa55_$LT$impl$u20$itoa..private..Sealed$u20$for$u20$i32$GT$5write17h60888a2bbedeb6fbE.exit.i.i.i.i.i.i.i" ], [ %.pre.i.i.i.i.i.i.i.i.i.i.i.i, %bb.n ] ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.09.3.i.i.i.i.i.i.i.i
  %i.cc = icmp sgt i64 %i.ca, -1
  tail call void @llvm.assume(i1 %i.cc)
  %i.cd = getelementptr inbounds nuw i8, ptr %.val9.i5.i, i64 8
  %i.ce = load ptr, ptr %i.cd, align 8, !alias.scope !1031, !noalias !1030, !nonnull !28, !noundef !28
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.ca
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cf, ptr nonnull readonly align 1 %i.cb, i64 %i.bt, i1 false), !noalias !1032
  %i.cg = add nuw i64 %i.ca, %i.bt
  store i64 %i.cg, ptr %i.bv, align 8, !alias.scope !1031, !noalias !1030
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1022
  br label %_ZN10serde_core3ser12SerializeMap15serialize_entry17h856a737551afe604E.exit

bb.o:                                             ; preds = %_ZN10serde_json3ser9Formatter18begin_object_value17h6d3bc186cdc16551E.exit.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9.i5.i) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1033)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1034)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1035)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1036)
  %i.ch = getelementptr inbounds nuw i8, ptr %.val9.i5.i, i64 16 ; 3 uses
  %i.ci = load i64, ptr %i.ch, align 8, !alias.scope !1037, !noalias !1038, !noundef !28 ; 3 uses
  %i.cj = load i64, ptr %.val9.i5.i, align 8, !range !29, !alias.scope !1037, !noalias !1038, !noundef !28
  %i.ck = sub i64 %i.cj, %i.ci
  %i.cl = icmp ult i64 %i.ck, 4
  br i1 %i.cl, label %bb.p, label %"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$14serialize_none17h5a51276ae0ab8e9eE.exit.i.i.i", !prof !30

bb.p:                                             ; preds = %bb.o
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hbfe87a90490e90eaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val9.i5.i, i64 noundef %i.ci, i64 noundef 4, i64 noundef 1, i64 noundef 1), !noalias !1038
  %.pre.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ch, align 8, !alias.scope !1039, !noalias !1038
  br label %"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$14serialize_none17h5a51276ae0ab8e9eE.exit.i.i.i"

"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$14serialize_none17h5a51276ae0ab8e9eE.exit.i.i.i": ; preds = %bb.p, %bb.o
  %i.cm = phi i64 [ %i.ci, %bb.o ], [ %.pre.i.i.i.i.i.i.i.i.i.i.i, %bb.p ] ; 3 uses
  %i.cn = icmp sgt i64 %i.cm, -1
  tail call void @llvm.assume(i1 %i.cn)
  %i.co = getelementptr inbounds nuw i8, ptr %.val9.i5.i, i64 8
  %i.cp = load ptr, ptr %i.co, align 8, !alias.scope !1039, !noalias !1038, !nonnull !28, !noundef !28
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 %i.cm
  store i32 1819047278, ptr %i.cq, align 1, !noalias !1040
  %i.cr = add nuw i64 %i.cm, 4
  store i64 %i.cr, ptr %i.ch, align 8, !alias.scope !1039, !noalias !1038
  br label %_ZN10serde_core3ser12SerializeMap15serialize_entry17h856a737551afe604E.exit

_ZN10serde_core3ser12SerializeMap15serialize_entry17h856a737551afe604E.exit: ; preds = %bb.f, %"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_i3217h726c845337975a7aE.exit.i.i.i.i.i", %"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$14serialize_none17h5a51276ae0ab8e9eE.exit.i.i.i"
  ret void
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal fastcc void @"_ZN106_$LT$core..iter..adapters..flatten..Flatten$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h2312c97b28139accE"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(112) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(184) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.7.i4.i = alloca [104 x i8], align 8      ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1089)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1090)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.sroa.731.0..sroa_idx32.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.731.sroa.6.0..sroa.731.0..sroa_idx32.sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.547.0..sroa_idx48.i = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.sroa.650.0..sroa_idx51.i = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.sroa.959.0..sroa_idx60.i = getelementptr inbounds nuw i8, ptr %1, i64 96
  %.pre.i = load i64, ptr %i.a, align 8, !range !40, !alias.scope !1091, !noalias !1092
  %i.g = icmp eq i64 %.pre.i, -9223372036854775807
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1093)
  br i1 %i.g, label %"_ZN4core3ptr110drop_in_place$LT$core..option..Option$LT$$LP$url..Url$C$alloc..vec..Vec$LT$lsp_types..TextEdit$GT$$RP$$GT$$GT$17h015f5b8265b14f02E.exit.i", label %bb.b

bb.b:                                             ; preds = %"_ZN115_$LT$std..collections..hash..map..HashMap$LT$K$C$V$C$S$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h610b160f08db47e0E.exit.i", %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1094)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1095)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1096)
  %i.h = load i64, ptr %i.b, align 8, !alias.scope !1097, !noalias !1098, !noundef !28 ; 2 uses
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %_ZN4core4iter8adapters7flatten17and_then_or_clear17h87344192db3d83b3E.exit.thread81.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1099)
  %i.j = load i16, ptr %i.d, align 8, !alias.scope !1100, !noalias !1098, !noundef !28 ; 2 uses
  %.not13.i.i.i.i.i.i = icmp eq i16 %i.j, 0
  %.promoted.i.i.i.i.i.i = load ptr, ptr %i.c, align 8, !alias.scope !1100, !noalias !1098 ; 2 uses
  br i1 %.not13.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, label %_ZN4core3ops8function6FnOnce9call_once17ha91c493442e90d8bE.exit.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.c
  %.promoted15.i.i.i.i.i.i = load ptr, ptr %i.e, align 8, !alias.scope !1100, !noalias !1098
  br label %bb.d

._crit_edge.i.i.i.i.i.i:                          ; preds = %bb.d
  store ptr %i.o, ptr %i.e, align 8, !alias.scope !1100, !noalias !1098
  store ptr %i.n, ptr %i.c, align 8, !alias.scope !1100, !noalias !1098
  br label %_ZN4core3ops8function6FnOnce9call_once17ha91c493442e90d8bE.exit.i.i

bb.d:                                             ; preds = %bb.d, %.lr.ph.i.i.i.i.i.i
  %i.k = phi ptr [ %.promoted15.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %i.o, %bb.d ] ; 2 uses
  %i.l = phi ptr [ %.promoted.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %i.n, %bb.d ]
  %.val11.i.i.i.i.i.i = load <16 x i8>, ptr %i.k, align 16, !noalias !1101
  %i.m = icmp sgt <16 x i8> %.val11.i.i.i.i.i.i, splat (i8 -1)
  %i.n = getelementptr inbounds i8, ptr %i.l, i64 -1792 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i = bitcast <16 x i1> %i.m to i16 ; 2 uses
end_hunk_0
begin_hunk_1_@"_ZN10serde_json5value3ser81_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$serde_json..value..Value$GT$9serialize17hcf298494b73328fcE":bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.j
  store i32 1819047278, ptr %i.n, align 1, !noalias !9357
  %i.o = add nuw i64 %i.j, 4
  store i64 %i.o, ptr %i.e, align 8, !alias.scope !9357, !noalias !9356
  br label %"_ZN73_$LT$serde_json..number..Number$u20$as$u20$serde_core..ser..Serialize$GT$9serialize17hbbc1956e8619af6aE.exit"

bb.d:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.q = load i8, ptr %i.p, align 1, !range !33, !noundef !28
  %i.r = trunc nuw i8 %i.q to i1
  %.val44 = load ptr, ptr %1, align 8, !nonnull !28, !noundef !28 ; 7 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.val44, i64 16 ; 5 uses
  br i1 %i.r, label %.split.i.i, label %.split2.i.i

.split2.i.i:                                      ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9358)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9359)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9360)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9361)
  %i.t = load i64, ptr %i.s, align 8, !alias.scope !9362, !noalias !9363, !noundef !28 ; 3 uses
  %i.u = load i64, ptr %.val44, align 8, !range !29, !alias.scope !9362, !noalias !9363, !noundef !28
  %i.v = sub i64 %i.u, %i.t
  %i.w = icmp ult i64 %i.v, 5
  br i1 %i.w, label %bb.e, label %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h4ab301283a333dfdE.exit.i.i", !prof !30

bb.e:                                             ; preds = %.split2.i.i
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hbfe87a90490e90eaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val44, i64 noundef %i.t, i64 noundef 5, i64 noundef 1, i64 noundef 1), !noalias !9363
  %.pre.i.i.i.i.i.i.i46 = load i64, ptr %i.s, align 8, !alias.scope !9364, !noalias !9363
  br label %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h4ab301283a333dfdE.exit.i.i"

"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h4ab301283a333dfdE.exit.i.i": ; preds = %bb.e, %.split2.i.i
  %i.x = phi i64 [ %i.t, %.split2.i.i ], [ %.pre.i.i.i.i.i.i.i46, %bb.e ] ; 3 uses
  %i.y = icmp sgt i64 %i.x, -1
  tail call void @llvm.assume(i1 %i.y)
  %i.z = getelementptr inbounds nuw i8, ptr %.val44, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !alias.scope !9364, !noalias !9363, !nonnull !28, !noundef !28
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.x
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.ab, ptr noundef nonnull readonly align 1 dereferenceable(5) @268, i64 5, i1 false), !noalias !9364
  %i.ac = add nuw i64 %i.x, 5
  br label %"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$14serialize_bool17h774529df6e53759aE.exit"

.split.i.i:                                       ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9365)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9366)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9367)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9368)
  %i.ad = load i64, ptr %i.s, align 8, !alias.scope !9369, !noalias !9370, !noundef !28 ; 3 uses
  %i.ae = load i64, ptr %.val44, align 8, !range !29, !alias.scope !9369, !noalias !9370, !noundef !28
  %i.af = sub i64 %i.ae, %i.ad
  %i.ag = icmp ult i64 %i.af, 4
  br i1 %i.ag, label %bb.f, label %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h4ab301283a333dfdE.exit5.i.i", !prof !30

bb.f:                                             ; preds = %.split.i.i
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hbfe87a90490e90eaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val44, i64 noundef %i.ad, i64 noundef 4, i64 noundef 1, i64 noundef 1), !noalias !9370
  %.pre.i.i.i.i.i4.i.i = load i64, ptr %i.s, align 8, !alias.scope !9371, !noalias !9370
  br label %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h4ab301283a333dfdE.exit5.i.i"

"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h4ab301283a333dfdE.exit5.i.i": ; preds = %bb.f, %.split.i.i
  %i.ah = phi i64 [ %i.ad, %.split.i.i ], [ %.pre.i.i.i.i.i4.i.i, %bb.f ] ; 3 uses
  %i.ai = icmp sgt i64 %i.ah, -1
  tail call void @llvm.assume(i1 %i.ai)
  %i.aj = getelementptr inbounds nuw i8, ptr %.val44, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !alias.scope !9371, !noalias !9370, !nonnull !28, !noundef !28
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.ah
  store i32 1702195828, ptr %i.al, align 1, !noalias !9371
  %i.am = add nuw i64 %i.ah, 4
  br label %"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$14serialize_bool17h774529df6e53759aE.exit"

"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$14serialize_bool17h774529df6e53759aE.exit": ; preds = %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h4ab301283a333dfdE.exit.i.i", %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h4ab301283a333dfdE.exit5.i.i"
  %.sink.i.i = phi i64 [ %i.am, %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h4ab301283a333dfdE.exit5.i.i" ], [ %i.ac, %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h4ab301283a333dfdE.exit.i.i" ]
  store i64 %.sink.i.i, ptr %i.s, align 8, !noalias !28
  br label %"_ZN73_$LT$serde_json..number..Number$u20$as$u20$serde_core..ser..Serialize$GT$9serialize17hbbc1956e8619af6aE.exit"

bb.g:                                             ; preds = %bb.a
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val45 = load ptr, ptr %1, align 8             ; 20 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9372)
  %i.ao = load i64, ptr %i.an, align 8, !range !67, !alias.scope !9372, !noundef !28
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  switch i64 %i.ao, label %default.unreachable117 [
    i64 0, label %bb.h
    i64 1, label %bb.n
    i64 2, label %bb.v
  ]

bb.h:                                             ; preds = %bb.g
  %i.aq = load i64, ptr %i.ap, align 8, !alias.scope !9372, !noundef !28 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !9372
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9373)
  %i.ar = icmp ugt i64 %i.aq, 9999
  br i1 %i.ar, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %bb.h
  %.sroa.09.0.lcssa.i.i.i.i = phi i64 [ 20, %bb.h ], [ %i.bb, %.lr.ph.i.i.i.i ] ; 2 uses
  %.sroa.0.1.lcssa.i.i.i.i = phi i64 [ %i.aq, %bb.h ], [ %i.au, %.lr.ph.i.i.i.i ] ; 3 uses
  %i.as = icmp samesign ugt i64 %.sroa.0.1.lcssa.i.i.i.i, 99
  br i1 %i.as, label %bb.i, label %bb.j

.lr.ph.i.i.i.i:                                   ; preds = %bb.h, %.lr.ph.i.i.i.i
  %.sroa.0.129.i.i.i.i = phi i64 [ %i.au, %.lr.ph.i.i.i.i ], [ %i.aq, %bb.h ] ; 3 uses
  %.sroa.09.028.i.i.i.i = phi i64 [ %i.bb, %.lr.ph.i.i.i.i ], [ 20, %bb.h ] ; 2 uses
  %i.at = urem i64 %.sroa.0.129.i.i.i.i, 10000
  %i.au = udiv i64 %.sroa.0.129.i.i.i.i, 10000    ; 2 uses
  %.lhs.trunc.i.i.i.i = trunc nuw nsw i64 %i.at to i16 ; 2 uses
  %i.av = udiv i16 %.lhs.trunc.i.i.i.i, 100
  %i.aw = shl nuw nsw i16 %i.av, 1
  %i.ax = zext nneg i16 %i.aw to i64
  %i.ay = urem i16 %.lhs.trunc.i.i.i.i, 100
  %i.az = shl nuw nsw i16 %i.ay, 1
  %i.ba = zext nneg i16 %i.az to i64
  %i.bb = add i64 %.sroa.09.028.i.i.i.i, -4       ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr @849, i64 %i.ax
  %i.bd = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.bb
  %i.be = load i16, ptr %i.bc, align 1, !noalias !9374
  store i16 %i.be, ptr %i.bd, align 1, !alias.scope !9373, !noalias !9372
  %i.bf = getelementptr inbounds nuw i8, ptr @849, i64 %i.ba
  %i.bg = getelementptr i8, ptr %i.c, i64 %.sroa.09.028.i.i.i.i
  %i.bh = getelementptr i8, ptr %i.bg, i64 -2
  %i.bi = load i16, ptr %i.bf, align 1, !noalias !9374
  store i16 %i.bi, ptr %i.bh, align 1, !alias.scope !9373, !noalias !9372
  %i.bj = icmp ugt i64 %.sroa.0.129.i.i.i.i, 99999999
  br i1 %i.bj, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

bb.i:                                             ; preds = %._crit_edge.i.i.i.i
  %.lhs.trunc24.i.i.i.i = trunc nuw i64 %.sroa.0.1.lcssa.i.i.i.i to i16 ; 2 uses
  %i.bk = urem i16 %.lhs.trunc24.i.i.i.i, 100
  %i.bl = shl nuw nsw i16 %i.bk, 1
  %i.bm = zext nneg i16 %i.bl to i64
  %i.bn = udiv i16 %.lhs.trunc24.i.i.i.i, 100
  %.zext27.i.i.i.i = zext nneg i16 %i.bn to i64
  %i.bo = add i64 %.sroa.09.0.lcssa.i.i.i.i, -2   ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr @849, i64 %i.bm
  %i.bq = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.bo
  %i.br = load i16, ptr %i.bp, align 1, !noalias !9374
  store i16 %i.br, ptr %i.bq, align 1, !alias.scope !9373, !noalias !9372
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge.i.i.i.i
  %.sroa.09.1.i.i.i.i = phi i64 [ %i.bo, %bb.i ], [ %.sroa.09.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 2 uses
  %.sroa.0.2.i.i.i.i = phi i64 [ %.zext27.i.i.i.i, %bb.i ], [ %.sroa.0.1.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %i.bs = icmp samesign ult i64 %.sroa.0.2.i.i.i.i, 10
  br i1 %i.bs, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bt = shl nuw nsw i64 %.sroa.0.2.i.i.i.i, 1
  %i.bu = add i64 %.sroa.09.1.i.i.i.i, -2         ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr @849, i64 %i.bt
  %i.bw = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.bu
  %i.bx = load i16, ptr %i.bv, align 1, !noalias !9374
  store i16 %i.bx, ptr %i.bw, align 1, !alias.scope !9373, !noalias !9372
  br label %"_ZN4itoa55_$LT$impl$u20$itoa..private..Sealed$u20$for$u20$u64$GT$5write17h47e48a1441d56637E.exit.i.i.i"

bb.l:                                             ; preds = %bb.j
  %i.by = add i64 %.sroa.09.1.i.i.i.i, -1         ; 2 uses
  %i.bz = trunc nuw nsw i64 %.sroa.0.2.i.i.i.i to i8
  %i.ca = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.by
  %i.cb = or disjoint i8 %i.bz, 48
  store i8 %i.cb, ptr %i.ca, align 1, !alias.scope !9373, !noalias !9372
  br label %"_ZN4itoa55_$LT$impl$u20$itoa..private..Sealed$u20$for$u20$u64$GT$5write17h47e48a1441d56637E.exit.i.i.i"

"_ZN4itoa55_$LT$impl$u20$itoa..private..Sealed$u20$for$u20$u64$GT$5write17h47e48a1441d56637E.exit.i.i.i": ; preds = %bb.l, %bb.k
  %.sroa.09.2.i.i.i.i = phi i64 [ %i.by, %bb.l ], [ %i.bu, %bb.k ] ; 2 uses
  %i.cc = sub i64 20, %.sroa.09.2.i.i.i.i         ; 5 uses
  %i.cd = icmp ult i64 %i.cc, 21
  tail call void @llvm.assume(i1 %i.cd)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val45) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9375)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9376)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9377)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9378)
  %i.ce = getelementptr inbounds nuw i8, ptr %.val45, i64 16 ; 3 uses
  %i.cf = load i64, ptr %i.ce, align 8, !alias.scope !9379, !noalias !9380, !noundef !28 ; 3 uses
  %i.cg = load i64, ptr %.val45, align 8, !range !29, !alias.scope !9379, !noalias !9380, !noundef !28
  %i.ch = sub i64 %i.cg, %i.cf
  %i.ci = icmp ugt i64 %i.cc, %i.ch
  br i1 %i.ci, label %bb.m, label %"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_u6417hba1b5ac95eff77afE.exit.i", !prof !30

bb.m:                                             ; preds = %"_ZN4itoa55_$LT$impl$u20$itoa..private..Sealed$u20$for$u20$u64$GT$5write17h47e48a1441d56637E.exit.i.i.i"
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hbfe87a90490e90eaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val45, i64 noundef %i.cf, i64 noundef %i.cc, i64 noundef 1, i64 noundef 1), !noalias !9380
  %.pre.i.i.i.i.i.i.i.i = load i64, ptr %i.ce, align 8, !alias.scope !9381, !noalias !9380
  br label %"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_u6417hba1b5ac95eff77afE.exit.i"

"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_u6417hba1b5ac95eff77afE.exit.i": ; preds = %bb.m, %"_ZN4itoa55_$LT$impl$u20$itoa..private..Sealed$u20$for$u20$u64$GT$5write17h47e48a1441d56637E.exit.i.i.i"
  %i.cj = phi i64 [ %i.cf, %"_ZN4itoa55_$LT$impl$u20$itoa..private..Sealed$u20$for$u20$u64$GT$5write17h47e48a1441d56637E.exit.i.i.i" ], [ %.pre.i.i.i.i.i.i.i.i, %bb.m ] ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.c, i64 %.sroa.09.2.i.i.i.i
  %i.cl = icmp sgt i64 %i.cj, -1
  tail call void @llvm.assume(i1 %i.cl)
  %i.cm = getelementptr inbounds nuw i8, ptr %.val45, i64 8
  %i.cn = load ptr, ptr %i.cm, align 8, !alias.scope !9381, !noalias !9380, !nonnull !28, !noundef !28
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 %i.cj
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.co, ptr nonnull readonly align 1 %i.ck, i64 %i.cc, i1 false), !noalias !9382
  %i.cp = add nuw i64 %i.cj, %i.cc
  store i64 %i.cp, ptr %i.ce, align 8, !alias.scope !9381, !noalias !9380
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !9372
  br label %"_ZN73_$LT$serde_json..number..Number$u20$as$u20$serde_core..ser..Serialize$GT$9serialize17hbbc1956e8619af6aE.exit"

bb.n:                                             ; preds = %bb.g
  %i.cq = load i64, ptr %i.ap, align 8, !alias.scope !9372, !noundef !28 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !9372
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9383)
  %2 = icmp sgt i64 %i.cq, -1
  %.sroa.0.0.i.i.i.i = tail call i64 @llvm.abs.i64(i64 %i.cq, i1 false) ; 3 uses
  %i.cr = icmp ugt i64 %.sroa.0.0.i.i.i.i, 9999
  br i1 %i.cr, label %.lr.ph.i.i.i12.i, label %._crit_edge.i.i.i3.i

._crit_edge.i.i.i3.i:                             ; preds = %.lr.ph.i.i.i12.i, %bb.n
  %.sroa.09.0.lcssa.i.i.i4.i = phi i64 [ 20, %bb.n ], [ %i.db, %.lr.ph.i.i.i12.i ] ; 2 uses
  %.sroa.0.1.lcssa.i.i.i5.i = phi i64 [ %.sroa.0.0.i.i.i.i, %bb.n ], [ %i.cu, %.lr.ph.i.i.i12.i ] ; 3 uses
  %i.cs = icmp samesign ugt i64 %.sroa.0.1.lcssa.i.i.i5.i, 99
  br i1 %i.cs, label %bb.o, label %bb.p

.lr.ph.i.i.i12.i:                                 ; preds = %bb.n, %.lr.ph.i.i.i12.i
  %.sroa.0.129.i.i.i13.i = phi i64 [ %i.cu, %.lr.ph.i.i.i12.i ], [ %.sroa.0.0.i.i.i.i, %bb.n ] ; 3 uses
  %.sroa.09.028.i.i.i14.i = phi i64 [ %i.db, %.lr.ph.i.i.i12.i ], [ 20, %bb.n ] ; 2 uses
  %i.ct = urem i64 %.sroa.0.129.i.i.i13.i, 10000
  %i.cu = udiv i64 %.sroa.0.129.i.i.i13.i, 10000  ; 2 uses
  %.lhs.trunc.i.i.i15.i = trunc nuw nsw i64 %i.ct to i16 ; 2 uses
  %i.cv = udiv i16 %.lhs.trunc.i.i.i15.i, 100
  %i.cw = shl nuw nsw i16 %i.cv, 1
  %i.cx = zext nneg i16 %i.cw to i64
  %i.cy = urem i16 %.lhs.trunc.i.i.i15.i, 100
  %i.cz = shl nuw nsw i16 %i.cy, 1
  %i.da = zext nneg i16 %i.cz to i64
  %i.db = add i64 %.sroa.09.028.i.i.i14.i, -4     ; 3 uses
  %i.dc = getelementptr inbounds nuw i8, ptr @849, i64 %i.cx
  %i.dd = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.db
  %i.de = load i16, ptr %i.dc, align 1, !noalias !9384
  store i16 %i.de, ptr %i.dd, align 1, !alias.scope !9383, !noalias !9372
  %i.df = getelementptr inbounds nuw i8, ptr @849, i64 %i.da
  %i.dg = getelementptr i8, ptr %i.b, i64 %.sroa.09.028.i.i.i14.i
  %i.dh = getelementptr i8, ptr %i.dg, i64 -2
  %i.di = load i16, ptr %i.df, align 1, !noalias !9384
  store i16 %i.di, ptr %i.dh, align 1, !alias.scope !9383, !noalias !9372
  %i.dj = icmp ugt i64 %.sroa.0.129.i.i.i13.i, 99999999
  br i1 %i.dj, label %.lr.ph.i.i.i12.i, label %._crit_edge.i.i.i3.i

bb.o:                                             ; preds = %._crit_edge.i.i.i3.i
  %.lhs.trunc24.i.i.i10.i = trunc nuw i64 %.sroa.0.1.lcssa.i.i.i5.i to i16 ; 2 uses
  %i.dk = urem i16 %.lhs.trunc24.i.i.i10.i, 100
  %i.dl = shl nuw nsw i16 %i.dk, 1
  %i.dm = zext nneg i16 %i.dl to i64
  %i.dn = udiv i16 %.lhs.trunc24.i.i.i10.i, 100
  %.zext27.i.i.i11.i = zext nneg i16 %i.dn to i64
  %i.do = add i64 %.sroa.09.0.lcssa.i.i.i4.i, -2  ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr @849, i64 %i.dm
  %i.dq = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.do
  %i.dr = load i16, ptr %i.dp, align 1, !noalias !9384
  store i16 %i.dr, ptr %i.dq, align 1, !alias.scope !9383, !noalias !9372
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %._crit_edge.i.i.i3.i
  %.sroa.09.1.i.i.i6.i = phi i64 [ %i.do, %bb.o ], [ %.sroa.09.0.lcssa.i.i.i4.i, %._crit_edge.i.i.i3.i ] ; 2 uses
  %.sroa.0.2.i.i.i7.i = phi i64 [ %.zext27.i.i.i11.i, %bb.o ], [ %.sroa.0.1.lcssa.i.i.i5.i, %._crit_edge.i.i.i3.i ] ; 3 uses
  %i.ds = icmp samesign ult i64 %.sroa.0.2.i.i.i7.i, 10
  br i1 %i.ds, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dt = shl nuw nsw i64 %.sroa.0.2.i.i.i7.i, 1
  %i.du = add i64 %.sroa.09.1.i.i.i6.i, -2        ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr @849, i64 %i.dt
  %i.dw = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.du
  %i.dx = load i16, ptr %i.dv, align 1, !noalias !9384
  store i16 %i.dx, ptr %i.dw, align 1, !alias.scope !9383, !noalias !9372
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.dy = add i64 %.sroa.09.1.i.i.i6.i, -1        ; 2 uses
  %i.dz = trunc nuw nsw i64 %.sroa.0.2.i.i.i7.i to i8
  %i.ea = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.dy
  %i.eb = or disjoint i8 %i.dz, 48
  store i8 %i.eb, ptr %i.ea, align 1, !alias.scope !9383, !noalias !9372
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.sroa.09.2.i.i.i8.i = phi i64 [ %i.dy, %bb.r ], [ %i.du, %bb.q ] ; 2 uses
  br i1 %2, label %"_ZN4itoa55_$LT$impl$u20$itoa..private..Sealed$u20$for$u20$i64$GT$5write17h42c6985404d13a9fE.exit.i.i.i", label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ec = add i64 %.sroa.09.2.i.i.i8.i, -1        ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ec
  store i8 45, ptr %i.ed, align 1, !alias.scope !9383, !noalias !9372
  br label %"_ZN4itoa55_$LT$impl$u20$itoa..private..Sealed$u20$for$u20$i64$GT$5write17h42c6985404d13a9fE.exit.i.i.i"

"_ZN4itoa55_$LT$impl$u20$itoa..private..Sealed$u20$for$u20$i64$GT$5write17h42c6985404d13a9fE.exit.i.i.i": ; preds = %bb.t, %bb.s
  %.sroa.09.3.i.i.i.i = phi i64 [ %.sroa.09.2.i.i.i8.i, %bb.s ], [ %i.ec, %bb.t ] ; 2 uses
  %i.ee = sub i64 20, %.sroa.09.3.i.i.i.i         ; 5 uses
  %i.ef = icmp ult i64 %i.ee, 21
  tail call void @llvm.assume(i1 %i.ef)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val45) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9385)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9386)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9387)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9388)
  %i.eg = getelementptr inbounds nuw i8, ptr %.val45, i64 16 ; 3 uses
  %i.eh = load i64, ptr %i.eg, align 8, !alias.scope !9389, !noalias !9390, !noundef !28 ; 3 uses
  %i.ei = load i64, ptr %.val45, align 8, !range !29, !alias.scope !9389, !noalias !9390, !noundef !28
  %i.ej = sub i64 %i.ei, %i.eh
  %i.ek = icmp ugt i64 %i.ee, %i.ej
  br i1 %i.ek, label %bb.u, label %"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_i6417h12a72c7523648c3eE.exit.i", !prof !30

bb.u:                                             ; preds = %"_ZN4itoa55_$LT$impl$u20$itoa..private..Sealed$u20$for$u20$i64$GT$5write17h42c6985404d13a9fE.exit.i.i.i"
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hbfe87a90490e90eaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val45, i64 noundef %i.eh, i64 noundef %i.ee, i64 noundef 1, i64 noundef 1), !noalias !9390
  %.pre.i.i.i.i.i.i.i9.i = load i64, ptr %i.eg, align 8, !alias.scope !9391, !noalias !9390
  br label %"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_i6417h12a72c7523648c3eE.exit.i"

"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_i6417h12a72c7523648c3eE.exit.i": ; preds = %bb.u, %"_ZN4itoa55_$LT$impl$u20$itoa..private..Sealed$u20$for$u20$i64$GT$5write17h42c6985404d13a9fE.exit.i.i.i"
  %i.el = phi i64 [ %i.eh, %"_ZN4itoa55_$LT$impl$u20$itoa..private..Sealed$u20$for$u20$i64$GT$5write17h42c6985404d13a9fE.exit.i.i.i" ], [ %.pre.i.i.i.i.i.i.i9.i, %bb.u ] ; 3 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.b, i64 %.sroa.09.3.i.i.i.i
  %i.en = icmp sgt i64 %i.el, -1
  tail call void @llvm.assume(i1 %i.en)
  %i.eo = getelementptr inbounds nuw i8, ptr %.val45, i64 8
  %i.ep = load ptr, ptr %i.eo, align 8, !alias.scope !9391, !noalias !9390, !nonnull !28, !noundef !28
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 %i.el
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.eq, ptr nonnull readonly align 1 %i.em, i64 %i.ee, i1 false), !noalias !9392
  %i.er = add nuw i64 %i.el, %i.ee
  store i64 %i.er, ptr %i.eg, align 8, !alias.scope !9391, !noalias !9390
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !9372
  br label %"_ZN73_$LT$serde_json..number..Number$u20$as$u20$serde_core..ser..Serialize$GT$9serialize17hbbc1956e8619af6aE.exit"

bb.v:                                             ; preds = %bb.g
  %i.es = load double, ptr %i.ap, align 8, !alias.scope !9372, !noundef !28 ; 2 uses
  %i.et = tail call double @llvm.fabs.f64(double %i.es)
  %or.cond6.i.i = fcmp ueq double %i.et, +inf
  br i1 %or.cond6.i.i, label %bb.w, label %bb.y

bb.w:                                             ; preds = %bb.v
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val45) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9393)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9394)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9395)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9396)
  %i.eu = getelementptr inbounds nuw i8, ptr %.val45, i64 16 ; 3 uses
  %i.ev = load i64, ptr %i.eu, align 8, !alias.scope !9397, !noalias !9398, !noundef !28 ; 3 uses
  %i.ew = load i64, ptr %.val45, align 8, !range !29, !alias.scope !9397, !noalias !9398, !noundef !28
  %i.ex = sub i64 %i.ew, %i.ev
  %i.ey = icmp ult i64 %i.ex, 4
  br i1 %i.ey, label %bb.x, label %_ZN10serde_json3ser9Formatter10write_null17h977cbb241d22cb63E.exit.i.i, !prof !30

bb.x:                                             ; preds = %bb.w
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hbfe87a90490e90eaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val45, i64 noundef %i.ev, i64 noundef 4, i64 noundef 1, i64 noundef 1), !noalias !9398
  %.pre.i.i.i.i.i.i.i16.i = load i64, ptr %i.eu, align 8, !alias.scope !9399, !noalias !9398
  br label %_ZN10serde_json3ser9Formatter10write_null17h977cbb241d22cb63E.exit.i.i

_ZN10serde_json3ser9Formatter10write_null17h977cbb241d22cb63E.exit.i.i: ; preds = %bb.x, %bb.w
  %i.ez = phi i64 [ %i.ev, %bb.w ], [ %.pre.i.i.i.i.i.i.i16.i, %bb.x ] ; 3 uses
  %i.fa = icmp sgt i64 %i.ez, -1
  tail call void @llvm.assume(i1 %i.fa)
  %i.fb = getelementptr inbounds nuw i8, ptr %.val45, i64 8
  %i.fc = load ptr, ptr %i.fb, align 8, !alias.scope !9399, !noalias !9398, !nonnull !28, !noundef !28
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 %i.ez
  store i32 1819047278, ptr %i.fd, align 1, !noalias !9400
  %i.fe = add nuw i64 %i.ez, 4
  store i64 %i.fe, ptr %i.eu, align 8, !alias.scope !9399, !noalias !9398
  br label %"_ZN73_$LT$serde_json..number..Number$u20$as$u20$serde_core..ser..Serialize$GT$9serialize17hbbc1956e8619af6aE.exit"

bb.y:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !9372
  %i.ff = call noundef i64 @_ZN3ryu6pretty8format6417he1b9def6a5d3c69cE(double noundef %i.es, ptr noundef nonnull %i.a), !noalias !9372 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val45) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !9401)
  call void @llvm.experimental.noalias.scope.decl(metadata !9402)
  call void @llvm.experimental.noalias.scope.decl(metadata !9403)
  call void @llvm.experimental.noalias.scope.decl(metadata !9404)
  %i.fg = getelementptr inbounds nuw i8, ptr %.val45, i64 16 ; 3 uses
  %i.fh = load i64, ptr %i.fg, align 8, !alias.scope !9405, !noalias !9406, !noundef !28 ; 3 uses
  %i.fi = load i64, ptr %.val45, align 8, !range !29, !alias.scope !9405, !noalias !9406, !noundef !28
  %i.fj = sub i64 %i.fi, %i.fh
  %i.fk = icmp ugt i64 %i.ff, %i.fj
  br i1 %i.fk, label %bb.z, label %_ZN10serde_json3ser9Formatter9write_f6417ha5ffb072194c5d4eE.exit.i.i, !prof !30

bb.z:                                             ; preds = %bb.y
  call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hbfe87a90490e90eaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val45, i64 noundef %i.fh, i64 noundef %i.ff, i64 noundef 1, i64 noundef 1), !noalias !9406
  %.pre.i.i.i.i.i.i8.i.i = load i64, ptr %i.fg, align 8, !alias.scope !9407, !noalias !9406
  br label %_ZN10serde_json3ser9Formatter9write_f6417ha5ffb072194c5d4eE.exit.i.i

_ZN10serde_json3ser9Formatter9write_f6417ha5ffb072194c5d4eE.exit.i.i: ; preds = %bb.z, %bb.y
  %i.fl = phi i64 [ %i.fh, %bb.y ], [ %.pre.i.i.i.i.i.i8.i.i, %bb.z ] ; 3 uses
  %i.fm = icmp sgt i64 %i.fl, -1
  call void @llvm.assume(i1 %i.fm)
  %i.fn = getelementptr inbounds nuw i8, ptr %.val45, i64 8
  %i.fo = load ptr, ptr %i.fn, align 8, !alias.scope !9407, !noalias !9406, !nonnull !28, !noundef !28
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 %i.fl
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.fp, ptr nonnull readonly align 1 %i.a, i64 %i.ff, i1 false), !noalias !9408
  %i.fq = add i64 %i.fl, %i.ff
  store i64 %i.fq, ptr %i.fg, align 8, !alias.scope !9407, !noalias !9406
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !9372
  br label %"_ZN73_$LT$serde_json..number..Number$u20$as$u20$serde_core..ser..Serialize$GT$9serialize17hbbc1956e8619af6aE.exit"

bb.aa:                                            ; preds = %bb.a
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.fs = load ptr, ptr %i.fr, align 8, !nonnull !28, !noundef !28
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.fu = load i64, ptr %i.ft, align 8, !noundef !28
  %.val = load ptr, ptr %1, align 8, !nonnull !28, !align !35, !noundef !28
  tail call fastcc void @"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_str17hf58c26c162f17e29E"(ptr nonnull %.val, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.fs, i64 noundef %i.fu)
  br label %"_ZN73_$LT$serde_json..number..Number$u20$as$u20$serde_core..ser..Serialize$GT$9serialize17hbbc1956e8619af6aE.exit"

bb.ab:                                            ; preds = %bb.a
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.fw = tail call fastcc noundef align 8 ptr @_ZN10serde_core3ser10Serializer11collect_seq17h3121c50c8bb62f3bE(ptr noalias noundef align 8 dereferenceable(8) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.fv)
  br label %"_ZN73_$LT$serde_json..number..Number$u20$as$u20$serde_core..ser..Serialize$GT$9serialize17hbbc1956e8619af6aE.exit"

bb.ac:                                            ; preds = %bb.a
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.fy = load i64, ptr %i.fx, align 8, !noundef !28 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9409)
  %.val.i = load ptr, ptr %1, align 8, !alias.scope !9409, !noalias !9410, !nonnull !28, !align !35, !noundef !28 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9411)
end_hunk_1
begin_hunk_2_@_ZN11lsp_harness11TestHarness11request_dyn17hd03fa646217f1f01E:bb.a
  %.not.i.i.i.i.i.i.i.i.i.i.i.i53 = icmp eq ptr %i.aei, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i53, label %"_ZN9lsp_types1_94_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$lsp_types..TextDocumentPositionParams$GT$9serialize17ha29121d75a9d5a89E.exit.i.i.i.i.i.i.i.i.i.i.i85", label %bb.ir

"_ZN9lsp_types1_94_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$lsp_types..TextDocumentPositionParams$GT$9serialize17ha29121d75a9d5a89E.exit.i.i.i.i.i.i.i.i.i.i.i85": ; preds = %.noexc14.i.i.i.i.i52
  %i.aej = getelementptr inbounds nuw i8, ptr %i.gx, i64 88
  %.val19.i.i.i.i.i.i.i.i.i.i.i.i86 = load i32, ptr %i.aej, align 8, !alias.scope !13474, !noalias !13475
  %i.aek = getelementptr inbounds nuw i8, ptr %i.gx, i64 92
  %.val20.i.i.i.i.i.i.i.i.i.i.i.i87 = load i32, ptr %i.aek, align 4, !alias.scope !13474, !noalias !13475
  %i.ael = invoke fastcc noalias noundef align 8 ptr @_ZN10serde_core3ser12SerializeMap15serialize_entry17ha93bf474a9d43a57E(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.gk, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @555, i64 noundef 8, i32 %.val19.i.i.i.i.i.i.i.i.i.i.i.i86, i32 %.val20.i.i.i.i.i.i.i.i.i.i.i.i87)
          to label %.noexc15.i.i.i.i.i88 unwind label %bb.ip, !noalias !13412 ; 2 uses

.noexc15.i.i.i.i.i88:                             ; preds = %"_ZN9lsp_types1_94_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$lsp_types..TextDocumentPositionParams$GT$9serialize17ha29121d75a9d5a89E.exit.i.i.i.i.i.i.i.i.i.i.i85"
  %.not.i.i.i.i.i.i.i.i.i.i.i89 = icmp eq ptr %i.ael, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i89, label %bb.hq, label %bb.ir

bb.hq:                                            ; preds = %.noexc15.i.i.i.i.i88
  %i.aem = getelementptr inbounds nuw i8, ptr %i.gx, i64 96 ; 2 uses
  %i.aen = load i64, ptr %i.aem, align 8, !range !40, !alias.scope !13476, !noalias !13477, !noundef !28
  %.not.i19.i.i.i.i.i.i.i.i.i.i.i90 = icmp eq i64 %i.aen, -9223372036854775807
  br i1 %.not.i19.i.i.i.i.i.i.i.i.i.i.i90, label %"_ZN9lsp_types8progress1_100_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$lsp_types..progress..WorkDoneProgressParams$GT$9serialize17h2a2ada663eed00dcE.exit.i.i.i.i.i.i.i.i.i.i.i91", label %bb.hr

bb.hr:                                            ; preds = %bb.hq
  invoke fastcc void @"_ZN105_$LT$serde..private..ser..FlatMapSerializeStruct$LT$M$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h5287490787fa0134E"(ptr nonnull align 8 dereferenceable(16) %i.gk, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @557, i64 noundef 13, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aem)
          to label %"_ZN9lsp_types8progress1_100_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$lsp_types..progress..WorkDoneProgressParams$GT$9serialize17h2a2ada663eed00dcE.exit.i.i.i.i.i.i.i.i.i.i.i91" unwind label %bb.ip

"_ZN9lsp_types8progress1_100_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$lsp_types..progress..WorkDoneProgressParams$GT$9serialize17h2a2ada663eed00dcE.exit.i.i.i.i.i.i.i.i.i.i.i91": ; preds = %bb.hr, %bb.hq
  %i.aeo = getelementptr inbounds nuw i8, ptr %i.gx, i64 120 ; 2 uses
  %i.aep = load i64, ptr %i.aeo, align 8, !range !40, !alias.scope !13478, !noalias !13479, !noundef !28
  %.not.i20.i.i.i.i.i.i.i.i.i.i.i92 = icmp eq i64 %i.aep, -9223372036854775807
  br i1 %.not.i20.i.i.i.i.i.i.i.i.i.i.i92, label %"_ZN9lsp_types1_87_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$lsp_types..PartialResultParams$GT$9serialize17h6b1337eec6ec53ffE.exit.i.i.i.i.i.i.i.i.i.i.i93", label %bb.hs

bb.hs:                                            ; preds = %"_ZN9lsp_types8progress1_100_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$lsp_types..progress..WorkDoneProgressParams$GT$9serialize17h2a2ada663eed00dcE.exit.i.i.i.i.i.i.i.i.i.i.i91"
  invoke fastcc void @"_ZN105_$LT$serde..private..ser..FlatMapSerializeStruct$LT$M$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h5287490787fa0134E"(ptr nonnull align 8 dereferenceable(16) %i.gk, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @550, i64 noundef 18, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aeo)
          to label %"_ZN9lsp_types1_87_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$lsp_types..PartialResultParams$GT$9serialize17h6b1337eec6ec53ffE.exit.i.i.i.i.i.i.i.i.i.i.i93" unwind label %bb.ip

"_ZN9lsp_types1_87_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$lsp_types..PartialResultParams$GT$9serialize17h6b1337eec6ec53ffE.exit.i.i.i.i.i.i.i.i.i.i.i93": ; preds = %bb.hs, %"_ZN9lsp_types8progress1_100_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$lsp_types..progress..WorkDoneProgressParams$GT$9serialize17h2a2ada663eed00dcE.exit.i.i.i.i.i.i.i.i.i.i.i91"
  %i.aeq = getelementptr inbounds nuw i8, ptr %i.gx, i64 144 ; 2 uses
  %i.aer = load i64, ptr %i.aeq, align 8, !range !40, !alias.scope !13480, !noalias !13481, !noundef !28 ; 2 uses
  %.not17.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.aer, -9223372036854775807
  %.pre.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.gk, align 8, !noalias !13461 ; 9 uses
  %.pre27.i.i.i.i.i.i.i.i.i.i.i = load i8, ptr %i.aef, align 8, !range !42, !noalias !13461 ; 2 uses
  br i1 %.not17.i.i.i.i.i.i.i.i.i.i.i, label %bb.ij, label %bb.ht

bb.ht:                                            ; preds = %"_ZN9lsp_types1_87_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$lsp_types..PartialResultParams$GT$9serialize17h6b1337eec6ec53ffE.exit.i.i.i.i.i.i.i.i.i.i.i93"
  call void @llvm.experimental.noalias.scope.decl(metadata !13482)
  %i.aes = icmp eq i8 %.pre27.i.i.i.i.i.i.i.i.i.i.i, 1
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i94 = load ptr, ptr %.pre.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !13483 ; 6 uses
  br i1 %i.aes, label %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit.i.i.i.i.i.i.i.i.i.i.i.i97", label %bb.hu

bb.hu:                                            ; preds = %bb.ht
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i94) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !13484)
  call void @llvm.experimental.noalias.scope.decl(metadata !13485)
  call void @llvm.experimental.noalias.scope.decl(metadata !13486)
  call void @llvm.experimental.noalias.scope.decl(metadata !13487)
  %i.aet = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i94, i64 16 ; 3 uses
  %i.aeu = load i64, ptr %i.aet, align 8, !alias.scope !13488, !noalias !13489, !noundef !28 ; 3 uses
  %i.aev = load i64, ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i94, align 8, !range !29, !alias.scope !13488, !noalias !13489, !noundef !28
  %i.aew = icmp eq i64 %i.aev, %i.aeu
  br i1 %i.aew, label %bb.hv, label %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h4ab301283a333dfdE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i95", !prof !30

bb.hv:                                            ; preds = %bb.hu
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hbfe87a90490e90eaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i.i.i.i.i.i.i.i.i.i.i.i94, i64 noundef %i.aeu, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %.noexc18.i.i.i.i.i191 unwind label %bb.ip, !noalias !13412

.noexc18.i.i.i.i.i191:                            ; preds = %bb.hv
  %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i192 = load i64, ptr %i.aet, align 8, !alias.scope !13490, !noalias !13489
  br label %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h4ab301283a333dfdE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i95"

"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h4ab301283a333dfdE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i95": ; preds = %.noexc18.i.i.i.i.i191, %bb.hu
  %i.aex = phi i64 [ %i.aeu, %bb.hu ], [ %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i192, %.noexc18.i.i.i.i.i191 ] ; 3 uses
  %i.aey = icmp sgt i64 %i.aex, -1
  call void @llvm.assume(i1 %i.aey)
  %i.aez = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i94, i64 8
  %i.afa = load ptr, ptr %i.aez, align 8, !alias.scope !13490, !noalias !13489, !nonnull !28, !noundef !28
  %i.afb = getelementptr inbounds nuw i8, ptr %i.afa, i64 %i.aex
  store i8 44, ptr %i.afb, align 1, !noalias !13491
  %i.afc = add nuw i64 %i.aex, 1
  store i64 %i.afc, ptr %i.aet, align 8, !alias.scope !13490, !noalias !13489
  %.val9.pre.i.i.i.i.i.i.i.i.i.i.i.i.i96 = load ptr, ptr %.pre.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !13483
  br label %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit.i.i.i.i.i.i.i.i.i.i.i.i97"

"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit.i.i.i.i.i.i.i.i.i.i.i.i97": ; preds = %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h4ab301283a333dfdE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i95", %bb.ht
  %.val9.i.i.i.i.i.i.i.i.i.i.i.i.i98 = phi ptr [ %.val.i.i.i.i.i.i.i.i.i.i.i.i.i94, %bb.ht ], [ %.val9.pre.i.i.i.i.i.i.i.i.i.i.i.i.i96, %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h4ab301283a333dfdE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i95" ]
  invoke fastcc void @"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_str17hf58c26c162f17e29E"(ptr nonnull %.val9.i.i.i.i.i.i.i.i.i.i.i.i.i98, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @639, i64 noundef 7)
          to label %.noexc19.i.i.i.i.i99 unwind label %bb.ip

.noexc19.i.i.i.i.i99:                             ; preds = %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit.i.i.i.i.i.i.i.i.i.i.i.i97"
  call void @llvm.experimental.noalias.scope.decl(metadata !13492)
  %.val.i4.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.pre.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !13493, !nonnull !28, !align !35, !noundef !28 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !13494)
  call void @llvm.experimental.noalias.scope.decl(metadata !13495)
  call void @llvm.experimental.noalias.scope.decl(metadata !13496)
  call void @llvm.experimental.noalias.scope.decl(metadata !13497)
  %i.afd = getelementptr inbounds nuw i8, ptr %.val.i4.i.i.i.i.i.i.i.i.i.i.i.i, i64 16 ; 3 uses
  %i.afe = load i64, ptr %i.afd, align 8, !alias.scope !13498, !noalias !13499, !noundef !28 ; 3 uses
  %i.aff = load i64, ptr %.val.i4.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !range !29, !alias.scope !13498, !noalias !13499, !noundef !28
  %i.afg = icmp eq i64 %i.aff, %i.afe
  br i1 %i.afg, label %bb.hw, label %bb.hx, !prof !30

bb.hw:                                            ; preds = %.noexc19.i.i.i.i.i99
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hbfe87a90490e90eaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i4.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %i.afe, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %.noexc20.i.i.i.i.i190 unwind label %bb.ip, !noalias !13412

.noexc20.i.i.i.i.i190:                            ; preds = %bb.hw
  %.pre.i.i.i.i.i.i.i5.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.afd, align 8, !alias.scope !13500, !noalias !13499
  br label %bb.hx

bb.hx:                                            ; preds = %.noexc20.i.i.i.i.i190, %.noexc19.i.i.i.i.i99
  %i.afh = phi i64 [ %i.afe, %.noexc19.i.i.i.i.i99 ], [ %.pre.i.i.i.i.i.i.i5.i.i.i.i.i.i.i.i.i.i.i.i, %.noexc20.i.i.i.i.i190 ] ; 3 uses
  %i.afi = icmp sgt i64 %i.afh, -1
  call void @llvm.assume(i1 %i.afi)
  %i.afj = getelementptr inbounds nuw i8, ptr %.val.i4.i.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.afk = load ptr, ptr %i.afj, align 8, !alias.scope !13500, !noalias !13499, !nonnull !28, !noundef !28
  %i.afl = getelementptr inbounds nuw i8, ptr %i.afk, i64 %i.afh
  store i8 58, ptr %i.afl, align 1, !noalias !13501
  %i.afm = add nuw i64 %i.afh, 1
  store i64 %i.afm, ptr %i.afd, align 8, !alias.scope !13500, !noalias !13499
  call void @llvm.experimental.noalias.scope.decl(metadata !13502)
  call void @llvm.experimental.noalias.scope.decl(metadata !13503)
  call void @llvm.experimental.noalias.scope.decl(metadata !13504)
  call void @llvm.experimental.noalias.scope.decl(metadata !13505)
  call void @llvm.experimental.noalias.scope.decl(metadata !13506)
  call void @llvm.experimental.noalias.scope.decl(metadata !13507)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gj), !noalias !13508
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.aer, -9223372036854775808
  call void @llvm.experimental.noalias.scope.decl(metadata !13509)
  call void @llvm.experimental.noalias.scope.decl(metadata !13510)
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.pre.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !13511, !noalias !13512, !nonnull !28, !align !35, !noundef !28 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !13513)
  call void @llvm.experimental.noalias.scope.decl(metadata !13514)
  call void @llvm.experimental.noalias.scope.decl(metadata !13515)
  call void @llvm.experimental.noalias.scope.decl(metadata !13516)
  %i.afn = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 16 ; 3 uses
  %i.afo = load i64, ptr %i.afn, align 8, !alias.scope !13517, !noalias !13518, !noundef !28 ; 3 uses
  %i.afp = load i64, ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !range !29, !alias.scope !13517, !noalias !13518, !noundef !28
  %i.afq = icmp eq i64 %i.afp, %i.afo
  br i1 %i.afq, label %bb.hy, label %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", !prof !30

bb.hy:                                            ; preds = %bb.hx
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hbfe87a90490e90eaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %i.afo, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %.noexc21.i.i.i.i.i189 unwind label %bb.ip, !noalias !13412

.noexc21.i.i.i.i.i189:                            ; preds = %bb.hy
  %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.afn, align 8, !alias.scope !13519, !noalias !13518
  br label %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"

"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %.noexc21.i.i.i.i.i189, %bb.hx
  %i.afr = phi i64 [ %i.afo, %bb.hx ], [ %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.noexc21.i.i.i.i.i189 ] ; 3 uses
  %i.afs = icmp sgt i64 %i.afr, -1
  call void @llvm.assume(i1 %i.afs)
  %i.aft = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.afu = load ptr, ptr %i.aft, align 8, !alias.scope !13519, !noalias !13518, !nonnull !28, !noundef !28
  %i.afv = getelementptr inbounds nuw i8, ptr %i.afu, i64 %i.afr
  store i8 123, ptr %i.afv, align 1, !noalias !13520
  %i.afw = add nuw i64 %i.afr, 1
  store i64 %i.afw, ptr %i.afn, align 8, !alias.scope !13519, !noalias !13518
  store ptr %.pre.i.i.i.i.i.i.i.i.i.i.i, ptr %i.gj, align 8, !noalias !13508
  %i.afx = getelementptr inbounds nuw i8, ptr %i.gj, i64 8 ; 2 uses
  %i.afy = getelementptr inbounds nuw i8, ptr %i.gx, i64 168
  %.val16.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i32, ptr %i.afy, align 8, !alias.scope !13521, !noalias !13522 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !13523)
  call void @llvm.experimental.noalias.scope.decl(metadata !13524)
  store i8 2, ptr %i.afx, align 8, !alias.scope !13525, !noalias !13526
  invoke fastcc void @"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_str17hf58c26c162f17e29E"(ptr nonnull %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @649, i64 noundef 11)
          to label %.noexc22.i.i.i.i.i100 unwind label %bb.ip

.noexc22.i.i.i.i.i100:                            ; preds = %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %.val.i5.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.pre.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !13527, !noalias !13528, !nonnull !28, !align !35, !noundef !28 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !13529)
  call void @llvm.experimental.noalias.scope.decl(metadata !13530)
  call void @llvm.experimental.noalias.scope.decl(metadata !13531)
  call void @llvm.experimental.noalias.scope.decl(metadata !13532)
  %i.afz = getelementptr inbounds nuw i8, ptr %.val.i5.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 16 ; 3 uses
  %i.aga = load i64, ptr %i.afz, align 8, !alias.scope !13533, !noalias !13534, !noundef !28 ; 3 uses
  %i.agb = load i64, ptr %.val.i5.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !range !29, !alias.scope !13533, !noalias !13534, !noundef !28
  %i.agc = icmp eq i64 %i.agb, %i.aga
  br i1 %i.agc, label %bb.hz, label %_ZN10serde_json3ser9Formatter18begin_object_value17h6d3bc186cdc16551E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !prof !30

bb.hz:                                            ; preds = %.noexc22.i.i.i.i.i100
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hbfe87a90490e90eaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i5.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %i.aga, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %.noexc23.i.i.i.i.i188 unwind label %bb.ip, !noalias !13412

.noexc23.i.i.i.i.i188:                            ; preds = %bb.hz
  %.pre.i.i.i.i.i.i.i6.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.afz, align 8, !alias.scope !13535, !noalias !13534
  br label %_ZN10serde_json3ser9Formatter18begin_object_value17h6d3bc186cdc16551E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZN10serde_json3ser9Formatter18begin_object_value17h6d3bc186cdc16551E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.noexc23.i.i.i.i.i188, %.noexc22.i.i.i.i.i100
  %i.agd = phi i64 [ %i.aga, %.noexc22.i.i.i.i.i100 ], [ %.pre.i.i.i.i.i.i.i6.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.noexc23.i.i.i.i.i188 ] ; 3 uses
  %i.age = icmp sgt i64 %i.agd, -1
  call void @llvm.assume(i1 %i.age)
  %i.agf = getelementptr inbounds nuw i8, ptr %.val.i5.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.agg = load ptr, ptr %i.agf, align 8, !alias.scope !13535, !noalias !13534, !nonnull !28, !noundef !28
  %i.agh = getelementptr inbounds nuw i8, ptr %i.agg, i64 %i.agd
  store i8 58, ptr %i.agh, align 1, !noalias !13536
  %i.agi = add nuw i64 %i.agd, 1
  store i64 %i.agi, ptr %i.afz, align 8, !alias.scope !13535, !noalias !13534
  %.val10.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.pre.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !13527, !noalias !13528 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gi), !noalias !13537
  call void @llvm.experimental.noalias.scope.decl(metadata !13538)
  %2 = icmp sgt i32 %.val16.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, -1
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = call i32 @llvm.abs.i32(i32 %.val16.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i1 false) ; 3 uses
  %i.agj = icmp ugt i32 %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 9999
  br i1 %i.agj, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN10serde_json3ser9Formatter18begin_object_value17h6d3bc186cdc16551E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.09.0.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 11, %_ZN10serde_json3ser9Formatter18begin_object_value17h6d3bc186cdc16551E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.agt, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.0.1.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN10serde_json3ser9Formatter18begin_object_value17h6d3bc186cdc16551E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.agm, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.agk = icmp samesign ugt i32 %.sroa.0.1.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 99
  br i1 %i.agk, label %bb.ia, label %bb.ib

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZN10serde_json3ser9Formatter18begin_object_value17h6d3bc186cdc16551E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.0.129.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.agm, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN10serde_json3ser9Formatter18begin_object_value17h6d3bc186cdc16551E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %.sroa.09.028.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.agt, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ 11, %_ZN10serde_json3ser9Formatter18begin_object_value17h6d3bc186cdc16551E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.agl = urem i32 %.sroa.0.129.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 10000
  %i.agm = udiv i32 %.sroa.0.129.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 10000 ; 2 uses
  %.lhs.trunc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = trunc nuw nsw i32 %i.agl to i16 ; 2 uses
  %i.agn = udiv i16 %.lhs.trunc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 100
  %i.ago = shl nuw nsw i16 %i.agn, 1
  %i.agp = zext nneg i16 %i.ago to i64
  %i.agq = urem i16 %.lhs.trunc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 100
  %i.agr = shl nuw nsw i16 %i.agq, 1
  %i.ags = zext nneg i16 %i.agr to i64
  %i.agt = add i64 %.sroa.09.028.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, -4 ; 3 uses
  %i.agu = getelementptr inbounds nuw i8, ptr @849, i64 %i.agp
  %i.agv = getelementptr inbounds nuw i8, ptr %i.gi, i64 %i.agt
  %i.agw = load i16, ptr %i.agu, align 1, !noalias !13539
  store i16 %i.agw, ptr %i.agv, align 1, !alias.scope !13538, !noalias !13537
  %i.agx = getelementptr inbounds nuw i8, ptr @849, i64 %i.ags
  %i.agy = getelementptr i8, ptr %i.gi, i64 %.sroa.09.028.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.agz = getelementptr i8, ptr %i.agy, i64 -2
  %i.aha = load i16, ptr %i.agx, align 1, !noalias !13539
  store i16 %i.aha, ptr %i.agz, align 1, !alias.scope !13538, !noalias !13537
  %i.ahb = icmp ugt i32 %.sroa.0.129.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 99999999
  br i1 %i.ahb, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.ia:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.lhs.trunc24.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = trunc nuw i32 %.sroa.0.1.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i to i16 ; 2 uses
  %i.ahc = urem i16 %.lhs.trunc24.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 100
  %i.ahd = shl nuw nsw i16 %i.ahc, 1
  %i.ahe = zext nneg i16 %i.ahd to i64
  %i.ahf = udiv i16 %.lhs.trunc24.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 100
  %.zext27.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = zext nneg i16 %i.ahf to i32
  %i.ahg = add i64 %.sroa.09.0.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, -2 ; 2 uses
  %i.ahh = getelementptr inbounds nuw i8, ptr @849, i64 %i.ahe
  %i.ahi = getelementptr inbounds nuw i8, ptr %i.gi, i64 %i.ahg
  %i.ahj = load i16, ptr %i.ahh, align 1, !noalias !13539
  store i16 %i.ahj, ptr %i.ahi, align 1, !alias.scope !13538, !noalias !13537
  br label %bb.ib

bb.ib:                                            ; preds = %bb.ia, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.09.1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ahg, %bb.ia ], [ %.sroa.09.0.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.0.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %.zext27.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ia ], [ %.sroa.0.1.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.ahk = icmp samesign ult i32 %.sroa.0.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 10
  br i1 %i.ahk, label %bb.id, label %bb.ic

bb.ic:                                            ; preds = %bb.ib
  %i.ahl = shl nuw nsw i32 %.sroa.0.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 1
  %i.ahm = zext nneg i32 %i.ahl to i64
  %i.ahn = add i64 %.sroa.09.1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, -2 ; 2 uses
  %i.aho = getelementptr inbounds nuw i8, ptr @849, i64 %i.ahm
  %i.ahp = getelementptr inbounds nuw i8, ptr %i.gi, i64 %i.ahn
  %i.ahq = load i16, ptr %i.aho, align 1, !noalias !13539
  store i16 %i.ahq, ptr %i.ahp, align 1, !alias.scope !13538, !noalias !13537
  br label %bb.ie

bb.id:                                            ; preds = %bb.ib
  %i.ahr = add i64 %.sroa.09.1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, -1 ; 2 uses
  %i.ahs = trunc nuw nsw i32 %.sroa.0.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i to i8
  %i.aht = getelementptr inbounds nuw i8, ptr %i.gi, i64 %i.ahr
  %i.ahu = or disjoint i8 %i.ahs, 48
  store i8 %i.ahu, ptr %i.aht, align 1, !alias.scope !13538, !noalias !13537
  br label %bb.ie

bb.ie:                                            ; preds = %bb.id, %bb.ic
  %.sroa.09.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ahr, %bb.id ], [ %i.ahn, %bb.ic ] ; 2 uses
  br i1 %2, label %"_ZN4itoa55_$LT$impl$u20$itoa..private..Sealed$u20$for$u20$i32$GT$5write17h60888a2bbedeb6fbE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", label %bb.if

bb.if:                                            ; preds = %bb.ie
  %i.ahv = add i64 %.sroa.09.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, -1 ; 2 uses
  %i.ahw = getelementptr inbounds nuw i8, ptr %i.gi, i64 %i.ahv
  store i8 45, ptr %i.ahw, align 1, !alias.scope !13538, !noalias !13537
  br label %"_ZN4itoa55_$LT$impl$u20$itoa..private..Sealed$u20$for$u20$i32$GT$5write17h60888a2bbedeb6fbE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"

"_ZN4itoa55_$LT$impl$u20$itoa..private..Sealed$u20$for$u20$i32$GT$5write17h60888a2bbedeb6fbE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.if, %bb.ie
  %.sroa.09.3.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.09.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ie ], [ %i.ahv, %bb.if ] ; 2 uses
  %i.ahx = sub i64 11, %.sroa.09.3.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ; 5 uses
  %i.ahy = icmp ult i64 %i.ahx, 12
  call void @llvm.assume(i1 %i.ahy)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val10.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !13540)
  call void @llvm.experimental.noalias.scope.decl(metadata !13541)
  call void @llvm.experimental.noalias.scope.decl(metadata !13542)
  call void @llvm.experimental.noalias.scope.decl(metadata !13543)
  %i.ahz = getelementptr inbounds nuw i8, ptr %.val10.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 16 ; 3 uses
  %i.aia = load i64, ptr %i.ahz, align 8, !alias.scope !13544, !noalias !13545, !noundef !28 ; 3 uses
  %i.aib = load i64, ptr %.val10.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !range !29, !alias.scope !13544, !noalias !13545, !noundef !28
  %i.aic = sub i64 %i.aib, %i.aia
  %i.aid = icmp ugt i64 %i.ahx, %i.aic
  br i1 %i.aid, label %bb.ig, label %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17hab6fbc409469b31bE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", !prof !30

bb.ig:                                            ; preds = %"_ZN4itoa55_$LT$impl$u20$itoa..private..Sealed$u20$for$u20$i32$GT$5write17h60888a2bbedeb6fbE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hbfe87a90490e90eaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val10.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %i.aia, i64 noundef %i.ahx, i64 noundef 1, i64 noundef 1)
          to label %.noexc24.i.i.i.i.i187 unwind label %bb.ip, !noalias !13412

.noexc24.i.i.i.i.i187:                            ; preds = %bb.ig
  %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ahz, align 8, !alias.scope !13546, !noalias !13545
  br label %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17hab6fbc409469b31bE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"

"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17hab6fbc409469b31bE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %.noexc24.i.i.i.i.i187, %"_ZN4itoa55_$LT$impl$u20$itoa..private..Sealed$u20$for$u20$i32$GT$5write17h60888a2bbedeb6fbE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %i.aie = phi i64 [ %i.aia, %"_ZN4itoa55_$LT$impl$u20$itoa..private..Sealed$u20$for$u20$i32$GT$5write17h60888a2bbedeb6fbE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.noexc24.i.i.i.i.i187 ] ; 3 uses
  %i.aif = getelementptr inbounds nuw i8, ptr %i.gi, i64 %.sroa.09.3.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.aig = icmp sgt i64 %i.aie, -1
  call void @llvm.assume(i1 %i.aig)
  %i.aih = getelementptr inbounds nuw i8, ptr %.val10.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.aii = load ptr, ptr %i.aih, align 8, !alias.scope !13546, !noalias !13545, !nonnull !28, !noundef !28
  %i.aij = getelementptr inbounds nuw i8, ptr %i.aii, i64 %i.aie
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aij, ptr nonnull readonly align 1 %i.aif, i64 %i.ahx, i1 false), !noalias !13547
  %i.aik = add nuw i64 %i.aie, %i.ahx
  store i64 %i.aik, ptr %i.ahz, align 8, !alias.scope !13546, !noalias !13545
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gi), !noalias !13537
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i102, label %bb.ih

bb.ih:                                            ; preds = %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17hab6fbc409469b31bE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  invoke fastcc void @_ZN10serde_core3ser12SerializeMap15serialize_entry17h465b17677545fb91E(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.gj, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @650, i64 noundef 16, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.aeq)
          to label %.noexc25.i.i.i.i.i101 unwind label %bb.ip

.noexc25.i.i.i.i.i101:                            ; preds = %bb.ih
  %.pre.i.i.i.i.i.i9.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.gj, align 8, !noalias !13508
  %.pre21.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i8, ptr %i.afx, align 8, !range !42, !noalias !13508
  %i.ail = icmp eq i8 %.pre21.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.ail, label %.thread.i.i.i.i.i.i.i.i.i.i.i, label %.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i102

.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i102:       ; preds = %.noexc25.i.i.i.i.i101, %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17hab6fbc409469b31bE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %.val28.in.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.pre.i.i.i.i.i.i9.i.i.i.i.i.i.i.i.i.i, %.noexc25.i.i.i.i.i101 ], [ %.pre.i.i.i.i.i.i.i.i.i.i.i, %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17hab6fbc409469b31bE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ]
  %.val28.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.val28.in.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !13548, !nonnull !28, !noundef !28 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !13549)
  call void @llvm.experimental.noalias.scope.decl(metadata !13550)
  call void @llvm.experimental.noalias.scope.decl(metadata !13551)
  call void @llvm.experimental.noalias.scope.decl(metadata !13552)
  %i.aim = getelementptr inbounds nuw i8, ptr %.val28.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 16 ; 3 uses
  %i.ain = load i64, ptr %i.aim, align 8, !alias.scope !13553, !noalias !13554, !noundef !28 ; 3 uses
  %i.aio = load i64, ptr %.val28.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !range !29, !alias.scope !13553, !noalias !13554, !noundef !28
  %i.aip = icmp eq i64 %i.aio, %i.ain
  br i1 %i.aip, label %bb.ii, label %_ZN10serde_json3ser9Formatter10end_object17h325f3d47e1b1e2e2E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !prof !30

bb.ii:                                            ; preds = %.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i102
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hbfe87a90490e90eaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val28.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %i.ain, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %.noexc26.i.i.i.i.i186 unwind label %bb.ip, !noalias !13412

.noexc26.i.i.i.i.i186:                            ; preds = %bb.ii
  %.pre.i.i.i.i.i.i.i.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.aim, align 8, !alias.scope !13555, !noalias !13554
  br label %_ZN10serde_json3ser9Formatter10end_object17h325f3d47e1b1e2e2E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZN10serde_json3ser9Formatter10end_object17h325f3d47e1b1e2e2E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.noexc26.i.i.i.i.i186, %.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i102
  %i.aiq = phi i64 [ %i.ain, %.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i102 ], [ %.pre.i.i.i.i.i.i.i.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.noexc26.i.i.i.i.i186 ] ; 3 uses
  %i.air = icmp sgt i64 %i.aiq, -1
  call void @llvm.assume(i1 %i.air)
  %i.ais = getelementptr inbounds nuw i8, ptr %.val28.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.ait = load ptr, ptr %i.ais, align 8, !alias.scope !13555, !noalias !13554, !nonnull !28, !noundef !28
  %i.aiu = getelementptr inbounds nuw i8, ptr %i.ait, i64 %i.aiq
  store i8 125, ptr %i.aiu, align 1, !noalias !13556
  %i.aiv = add nuw i64 %i.aiq, 1
  store i64 %i.aiv, ptr %i.aim, align 8, !alias.scope !13555, !noalias !13554
  br label %.thread.i.i.i.i.i.i.i.i.i.i.i

.thread.i.i.i.i.i.i.i.i.i.i.i:                    ; preds = %_ZN10serde_json3ser9Formatter10end_object17h325f3d47e1b1e2e2E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.noexc25.i.i.i.i.i101
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gj), !noalias !13508
  br label %bb.ik

bb.ij:                                            ; preds = %"_ZN9lsp_types1_87_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$lsp_types..PartialResultParams$GT$9serialize17h6b1337eec6ec53ffE.exit.i.i.i.i.i.i.i.i.i.i.i93"
  %i.aiw = icmp eq i8 %.pre27.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.aiw, label %bb.im, label %bb.ik

bb.ik:                                            ; preds = %bb.ij, %.thread.i.i.i.i.i.i.i.i.i.i.i
  %.val45.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.pre.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !13557, !nonnull !28, !noundef !28 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !13558)
  call void @llvm.experimental.noalias.scope.decl(metadata !13559)
  call void @llvm.experimental.noalias.scope.decl(metadata !13560)
  call void @llvm.experimental.noalias.scope.decl(metadata !13561)
  %i.aix = getelementptr inbounds nuw i8, ptr %.val45.i.i.i.i.i.i.i.i.i.i.i, i64 16 ; 3 uses
  %i.aiy = load i64, ptr %i.aix, align 8, !alias.scope !13562, !noalias !13563, !noundef !28 ; 3 uses
  %i.aiz = load i64, ptr %.val45.i.i.i.i.i.i.i.i.i.i.i, align 8, !range !29, !alias.scope !13562, !noalias !13563, !noundef !28
  %i.aja = icmp eq i64 %i.aiz, %i.aiy
  br i1 %i.aja, label %bb.il, label %_ZN10serde_json3ser9Formatter10end_object17h325f3d47e1b1e2e2E.exit.i.i.i.i.i.i.i.i.i.i.i.i, !prof !30

bb.il:                                            ; preds = %bb.ik
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hbfe87a90490e90eaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val45.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %i.aiy, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %.noexc27.i.i.i.i.i unwind label %bb.ip, !noalias !13412

.noexc27.i.i.i.i.i:                               ; preds = %bb.il
  %.pre.i.i.i.i.i.i.i21.i.i.i.i.i.i.i.i.i.i.i185 = load i64, ptr %i.aix, align 8, !alias.scope !13564, !noalias !13563
  br label %_ZN10serde_json3ser9Formatter10end_object17h325f3d47e1b1e2e2E.exit.i.i.i.i.i.i.i.i.i.i.i.i

_ZN10serde_json3ser9Formatter10end_object17h325f3d47e1b1e2e2E.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.noexc27.i.i.i.i.i, %bb.ik
  %i.ajb = phi i64 [ %i.aiy, %bb.ik ], [ %.pre.i.i.i.i.i.i.i21.i.i.i.i.i.i.i.i.i.i.i185, %.noexc27.i.i.i.i.i ] ; 3 uses
  %i.ajc = icmp sgt i64 %i.ajb, -1
  call void @llvm.assume(i1 %i.ajc)
  %i.ajd = getelementptr inbounds nuw i8, ptr %.val45.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.aje = load ptr, ptr %i.ajd, align 8, !alias.scope !13564, !noalias !13563, !nonnull !28, !noundef !28
  %i.ajf = getelementptr inbounds nuw i8, ptr %i.aje, i64 %i.ajb
  store i8 125, ptr %i.ajf, align 1, !noalias !13565
  %i.ajg = add nuw i64 %i.ajb, 1
  store i64 %i.ajg, ptr %i.aix, align 8, !alias.scope !13564, !noalias !13563
  br label %bb.im

bb.im:                                            ; preds = %_ZN10serde_json3ser9Formatter10end_object17h325f3d47e1b1e2e2E.exit.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ij
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gk), !noalias !13461
end_hunk_2
begin_hunk_3_@_ZN11lsp_harness11TestHarness11request_dyn17hd03fa646217f1f01E:bb.a
  %i.bfe = phi i64 [ %i.beu, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.bfq, %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h5758dfdec1c116c4E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ]
  %.lcssa141920.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.bew, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.lcssa1418.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h5758dfdec1c116c4E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ] ; 2 uses
  %.not13.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.bfd, 0
  br i1 %.not13.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge20.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:   ; preds = %bb.qv, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bff = phi ptr [ %i.bfj, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.lcssa24.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.qv ] ; 2 uses
  %i.bfg = phi ptr [ %i.bfi, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.lcssa141920.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.qv ]
  %.val11.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.bff, align 16, !noalias !13844
  %i.bfh = icmp sgt <16 x i8> %.val11.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.bfi = getelementptr inbounds i8, ptr %i.bfg, i64 -768 ; 2 uses
  %i.bfj = getelementptr inbounds nuw i8, ptr %i.bff, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = bitcast <16 x i1> %i.bfh to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge20.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

._crit_edge20.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.qv
  %.lcssa23.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.lcssa24.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.qv ], [ %i.bfj, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.lcssa1418.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.lcssa141920.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.qv ], [ %i.bfi, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i16 [ %i.bfd, %bb.qv ], [ %.cast.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.bfk = add i16 %.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, -1
  %i.bfl = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i1 true)
  %i.bfm = zext nneg i16 %i.bfl to i64
  %i.bfn = and i16 %i.bfk, %.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bfo = sub nsw i64 0, %i.bfm
  %i.bfp = getelementptr inbounds [48 x i8], ptr %.lcssa1418.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 %i.bfo ; 5 uses
  %i.bfq = add i64 %i.bfe, -1                     ; 2 uses
  %i.bfr = getelementptr inbounds i8, ptr %i.bfp, i64 -24
  %i.bfs = getelementptr i8, ptr %i.bfp, i64 -40
  %.val9.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.bfs, align 8, !noalias !13845 ; 2 uses
  %i.bft = getelementptr i8, ptr %i.bfp, i64 -32
  %.val10.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.bft, align 8, !noalias !13845
  call void @llvm.experimental.noalias.scope.decl(metadata !13846)
  call void @llvm.experimental.noalias.scope.decl(metadata !13847)
  call void @llvm.experimental.noalias.scope.decl(metadata !13848)
  call void @llvm.experimental.noalias.scope.decl(metadata !13849)
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.bfb, align 8, !noalias !13850 ; 6 uses
  br i1 %i.bfc, label %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17haec57e87a3692354E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", label %bb.qw

bb.qw:                                            ; preds = %._crit_edge20.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !13851)
  call void @llvm.experimental.noalias.scope.decl(metadata !13852)
  call void @llvm.experimental.noalias.scope.decl(metadata !13853)
  call void @llvm.experimental.noalias.scope.decl(metadata !13854)
  %i.bfu = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 16 ; 3 uses
  %i.bfv = load i64, ptr %i.bfu, align 8, !alias.scope !13855, !noalias !13856, !noundef !28 ; 3 uses
  %i.bfw = load i64, ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !range !29, !alias.scope !13855, !noalias !13856, !noundef !28
  %i.bfx = icmp eq i64 %i.bfw, %i.bfv
  br i1 %i.bfx, label %bb.qx, label %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h4ab301283a333dfdE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", !prof !30

bb.qx:                                            ; preds = %bb.qw
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hbfe87a90490e90eaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %i.bfv, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %.noexc21.i.i.i.i.i371 unwind label %.loopexit.i.i.i.i.i, !noalias !13730

.noexc21.i.i.i.i.i371:                            ; preds = %bb.qx
  %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.bfu, align 8, !alias.scope !13857, !noalias !13856
  br label %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h4ab301283a333dfdE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"

"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h4ab301283a333dfdE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %.noexc21.i.i.i.i.i371, %bb.qw
  %i.bfy = phi i64 [ %i.bfv, %bb.qw ], [ %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.noexc21.i.i.i.i.i371 ] ; 3 uses
  %i.bfz = icmp sgt i64 %i.bfy, -1
  call void @llvm.assume(i1 %i.bfz)
  %i.bga = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.bgb = load ptr, ptr %i.bga, align 8, !alias.scope !13857, !noalias !13856, !nonnull !28, !noundef !28
  %i.bgc = getelementptr inbounds nuw i8, ptr %i.bgb, i64 %i.bfy
  store i8 44, ptr %i.bgc, align 1, !noalias !13858
  %i.bgd = add nuw i64 %i.bfy, 1
  store i64 %i.bgd, ptr %i.bfu, align 8, !alias.scope !13857, !noalias !13856
  %.val10.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.bfb, align 8, !noalias !13850
  br label %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17haec57e87a3692354E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"

"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17haec57e87a3692354E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h4ab301283a333dfdE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", %._crit_edge20.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.val10.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %._crit_edge20.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.val10.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h4ab301283a333dfdE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i) ]
  invoke fastcc void @"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_str17hf58c26c162f17e29E"(ptr nonnull %.val10.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val9.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %.val10.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i)
          to label %.noexc22.i.i.i.i.i276 unwind label %.loopexit.i.i.i.i.i

.noexc22.i.i.i.i.i276:                            ; preds = %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17haec57e87a3692354E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %.val.i6.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.bfb, align 8, !noalias !13859, !nonnull !28, !align !35, !noundef !28 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !13860)
  call void @llvm.experimental.noalias.scope.decl(metadata !13861)
  call void @llvm.experimental.noalias.scope.decl(metadata !13862)
  call void @llvm.experimental.noalias.scope.decl(metadata !13863)
  %i.bge = getelementptr inbounds nuw i8, ptr %.val.i6.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 16 ; 3 uses
  %i.bgf = load i64, ptr %i.bge, align 8, !alias.scope !13864, !noalias !13865, !noundef !28 ; 3 uses
  %i.bgg = load i64, ptr %.val.i6.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !range !29, !alias.scope !13864, !noalias !13865, !noundef !28
  %i.bgh = icmp eq i64 %i.bgg, %i.bgf
  br i1 %i.bgh, label %bb.qy, label %_ZN10serde_json3ser9Formatter18begin_object_value17h6d3bc186cdc16551E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !prof !30

bb.qy:                                            ; preds = %.noexc22.i.i.i.i.i276
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hbfe87a90490e90eaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i6.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %i.bgf, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %.noexc23.i.i.i.i.i370 unwind label %.loopexit.i.i.i.i.i, !noalias !13730

.noexc23.i.i.i.i.i370:                            ; preds = %bb.qy
  %.pre.i.i.i.i.i.i.i8.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.bge, align 8, !alias.scope !13866, !noalias !13865
  br label %_ZN10serde_json3ser9Formatter18begin_object_value17h6d3bc186cdc16551E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZN10serde_json3ser9Formatter18begin_object_value17h6d3bc186cdc16551E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.noexc23.i.i.i.i.i370, %.noexc22.i.i.i.i.i276
  %i.bgi = phi i64 [ %i.bgf, %.noexc22.i.i.i.i.i276 ], [ %.pre.i.i.i.i.i.i.i8.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.noexc23.i.i.i.i.i370 ] ; 3 uses
  %i.bgj = icmp sgt i64 %i.bgi, -1
  call void @llvm.assume(i1 %i.bgj)
  %i.bgk = getelementptr inbounds nuw i8, ptr %.val.i6.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.bgl = load ptr, ptr %i.bgk, align 8, !alias.scope !13866, !noalias !13865, !nonnull !28, !noundef !28
  %i.bgm = getelementptr inbounds nuw i8, ptr %i.bgl, i64 %i.bgi
  store i8 58, ptr %i.bgm, align 1, !noalias !13867
  %i.bgn = add nuw i64 %i.bgi, 1
  store i64 %i.bgn, ptr %i.bge, align 8, !alias.scope !13866, !noalias !13865
  %.val10.i7.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.bfb, align 8, !noalias !13859 ; 15 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !13868)
  %i.bgo = load i64, ptr %i.bfr, align 8, !range !40, !alias.scope !13869, !noalias !13870, !noundef !28 ; 2 uses
  %i.bgp = xor i64 %i.bgo, -9223372036854775808
  %i.bgq = icmp slt i64 %i.bgo, 0
  %i.bgr = select i1 %i.bgq, i64 %i.bgp, i64 2
  %i.bgs = getelementptr inbounds i8, ptr %i.bfp, i64 -16 ; 3 uses
  switch i64 %i.bgr, label %bb.qz [
    i64 0, label %bb.ra
    i64 1, label %bb.rd
    i64 2, label %bb.rl
  ]

bb.qz:                                            ; preds = %_ZN10serde_json3ser9Formatter18begin_object_value17h6d3bc186cdc16551E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  unreachable

bb.ra:                                            ; preds = %_ZN10serde_json3ser9Formatter18begin_object_value17h6d3bc186cdc16551E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bgt = load i8, ptr %i.bgs, align 8, !range !33, !alias.scope !13869, !noalias !13870, !noundef !28
  %i.bgu = trunc nuw i8 %i.bgt to i1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val10.i7.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i) ]
  %i.bgv = getelementptr inbounds nuw i8, ptr %.val10.i7.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 16 ; 5 uses
  br i1 %i.bgu, label %.split.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.split2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.split2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ra
  call void @llvm.experimental.noalias.scope.decl(metadata !13871)
  call void @llvm.experimental.noalias.scope.decl(metadata !13872)
  call void @llvm.experimental.noalias.scope.decl(metadata !13873)
  call void @llvm.experimental.noalias.scope.decl(metadata !13874)
  %i.bgw = load i64, ptr %i.bgv, align 8, !alias.scope !13875, !noalias !13876, !noundef !28 ; 3 uses
  %i.bgx = load i64, ptr %.val10.i7.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !range !29, !alias.scope !13875, !noalias !13876, !noundef !28
  %i.bgy = sub i64 %i.bgx, %i.bgw
  %i.bgz = icmp ult i64 %i.bgy, 5
  br i1 %i.bgz, label %bb.rb, label %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h4ab301283a333dfdE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", !prof !30

bb.rb:                                            ; preds = %.split2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hbfe87a90490e90eaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val10.i7.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %i.bgw, i64 noundef 5, i64 noundef 1, i64 noundef 1)
          to label %.noexc24.i.i.i.i.i368 unwind label %.loopexit.i.i.i.i.i, !noalias !13730

.noexc24.i.i.i.i.i368:                            ; preds = %bb.rb
  %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.bgv, align 8, !alias.scope !13877, !noalias !13876
  br label %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h4ab301283a333dfdE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"

"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h4ab301283a333dfdE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %.noexc24.i.i.i.i.i368, %.split2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bha = phi i64 [ %i.bgw, %.split2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.noexc24.i.i.i.i.i368 ] ; 3 uses
  %i.bhb = icmp sgt i64 %i.bha, -1
  call void @llvm.assume(i1 %i.bhb)
  %i.bhc = getelementptr inbounds nuw i8, ptr %.val10.i7.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.bhd = load ptr, ptr %i.bhc, align 8, !alias.scope !13877, !noalias !13876, !nonnull !28, !noundef !28
  %i.bhe = getelementptr inbounds nuw i8, ptr %i.bhd, i64 %i.bha
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.bhe, ptr noundef nonnull readonly align 1 dereferenceable(5) @268, i64 5, i1 false), !noalias !13878
  %i.bhf = add nuw i64 %i.bha, 5
  br label %"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$14serialize_bool17h774529df6e53759aE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"

.split.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ra
  call void @llvm.experimental.noalias.scope.decl(metadata !13879)
  call void @llvm.experimental.noalias.scope.decl(metadata !13880)
  call void @llvm.experimental.noalias.scope.decl(metadata !13881)
  call void @llvm.experimental.noalias.scope.decl(metadata !13882)
  %i.bhg = load i64, ptr %i.bgv, align 8, !alias.scope !13883, !noalias !13884, !noundef !28 ; 3 uses
  %i.bhh = load i64, ptr %.val10.i7.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !range !29, !alias.scope !13883, !noalias !13884, !noundef !28
  %i.bhi = sub i64 %i.bhh, %i.bhg
  %i.bhj = icmp ult i64 %i.bhi, 4
  br i1 %i.bhj, label %bb.rc, label %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h4ab301283a333dfdE.exit5.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", !prof !30

bb.rc:                                            ; preds = %.split.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hbfe87a90490e90eaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val10.i7.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %i.bhg, i64 noundef 4, i64 noundef 1, i64 noundef 1)
          to label %.noexc25.i.i.i.i.i369 unwind label %.loopexit.i.i.i.i.i, !noalias !13730

.noexc25.i.i.i.i.i369:                            ; preds = %bb.rc
  %.pre.i.i.i.i.i4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.bgv, align 8, !alias.scope !13885, !noalias !13884
  br label %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h4ab301283a333dfdE.exit5.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"

"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h4ab301283a333dfdE.exit5.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %.noexc25.i.i.i.i.i369, %.split.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bhk = phi i64 [ %i.bhg, %.split.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.pre.i.i.i.i.i4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.noexc25.i.i.i.i.i369 ] ; 3 uses
  %i.bhl = icmp sgt i64 %i.bhk, -1
  call void @llvm.assume(i1 %i.bhl)
  %i.bhm = getelementptr inbounds nuw i8, ptr %.val10.i7.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.bhn = load ptr, ptr %i.bhm, align 8, !alias.scope !13885, !noalias !13884, !nonnull !28, !noundef !28
  %i.bho = getelementptr inbounds nuw i8, ptr %i.bhn, i64 %i.bhk
  store i32 1702195828, ptr %i.bho, align 1, !noalias !13886
  %i.bhp = add nuw i64 %i.bhk, 4
  br label %"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$14serialize_bool17h774529df6e53759aE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"

"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$14serialize_bool17h774529df6e53759aE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h4ab301283a333dfdE.exit5.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h4ab301283a333dfdE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %.sink.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.bhp, %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h4ab301283a333dfdE.exit5.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %i.bhf, %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h4ab301283a333dfdE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ]
  store i64 %.sink.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.bgv, align 8, !noalias !13887
  br label %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h5758dfdec1c116c4E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"

bb.rd:                                            ; preds = %_ZN10serde_json3ser9Formatter18begin_object_value17h6d3bc186cdc16551E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bhq = load i32, ptr %i.bgs, align 8, !alias.scope !13869, !noalias !13870, !noundef !28 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ew), !noalias !13888
  call void @llvm.experimental.noalias.scope.decl(metadata !13889)
  %3 = icmp sgt i32 %i.bhq, -1
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = call i32 @llvm.abs.i32(i32 %i.bhq, i1 false) ; 3 uses
  %i.bhr = icmp ugt i32 %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 9999
  br i1 %i.bhr, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.rd
  %.sroa.09.0.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 11, %bb.rd ], [ %i.bib, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.0.1.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.rd ], [ %i.bhu, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.bhs = icmp samesign ugt i32 %.sroa.0.1.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 99
  br i1 %i.bhs, label %bb.re, label %bb.rf

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.rd, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.0.129.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.bhu, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.rd ] ; 3 uses
  %.sroa.09.028.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.bib, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ 11, %bb.rd ] ; 2 uses
  %i.bht = urem i32 %.sroa.0.129.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 10000
  %i.bhu = udiv i32 %.sroa.0.129.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 10000 ; 2 uses
  %.lhs.trunc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = trunc nuw nsw i32 %i.bht to i16 ; 2 uses
  %i.bhv = udiv i16 %.lhs.trunc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 100
  %i.bhw = shl nuw nsw i16 %i.bhv, 1
  %i.bhx = zext nneg i16 %i.bhw to i64
  %i.bhy = urem i16 %.lhs.trunc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 100
  %i.bhz = shl nuw nsw i16 %i.bhy, 1
  %i.bia = zext nneg i16 %i.bhz to i64
  %i.bib = add i64 %.sroa.09.028.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, -4 ; 3 uses
  %i.bic = getelementptr inbounds nuw i8, ptr @849, i64 %i.bhx
  %i.bid = getelementptr inbounds nuw i8, ptr %i.ew, i64 %i.bib
  %i.bie = load i16, ptr %i.bic, align 1, !noalias !13890
  store i16 %i.bie, ptr %i.bid, align 1, !alias.scope !13889, !noalias !13888
  %i.bif = getelementptr inbounds nuw i8, ptr @849, i64 %i.bia
  %i.big = getelementptr i8, ptr %i.ew, i64 %.sroa.09.028.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bih = getelementptr i8, ptr %i.big, i64 -2
  %i.bii = load i16, ptr %i.bif, align 1, !noalias !13890
  store i16 %i.bii, ptr %i.bih, align 1, !alias.scope !13889, !noalias !13888
  %i.bij = icmp ugt i32 %.sroa.0.129.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 99999999
  br i1 %i.bij, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.re:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.lhs.trunc24.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = trunc nuw i32 %.sroa.0.1.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i to i16 ; 2 uses
  %i.bik = urem i16 %.lhs.trunc24.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 100
  %i.bil = shl nuw nsw i16 %i.bik, 1
  %i.bim = zext nneg i16 %i.bil to i64
  %i.bin = udiv i16 %.lhs.trunc24.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 100
  %.zext27.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = zext nneg i16 %i.bin to i32
  %i.bio = add i64 %.sroa.09.0.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, -2 ; 2 uses
  %i.bip = getelementptr inbounds nuw i8, ptr @849, i64 %i.bim
  %i.biq = getelementptr inbounds nuw i8, ptr %i.ew, i64 %i.bio
  %i.bir = load i16, ptr %i.bip, align 1, !noalias !13890
  store i16 %i.bir, ptr %i.biq, align 1, !alias.scope !13889, !noalias !13888
  br label %bb.rf

bb.rf:                                            ; preds = %bb.re, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.09.1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.bio, %bb.re ], [ %.sroa.09.0.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.0.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %.zext27.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.re ], [ %.sroa.0.1.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.bis = icmp samesign ult i32 %.sroa.0.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 10
  br i1 %i.bis, label %bb.rh, label %bb.rg

bb.rg:                                            ; preds = %bb.rf
  %i.bit = shl nuw nsw i32 %.sroa.0.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 1
  %i.biu = zext nneg i32 %i.bit to i64
  %i.biv = add i64 %.sroa.09.1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, -2 ; 2 uses
  %i.biw = getelementptr inbounds nuw i8, ptr @849, i64 %i.biu
  %i.bix = getelementptr inbounds nuw i8, ptr %i.ew, i64 %i.biv
  %i.biy = load i16, ptr %i.biw, align 1, !noalias !13890
  store i16 %i.biy, ptr %i.bix, align 1, !alias.scope !13889, !noalias !13888
  br label %bb.ri

bb.rh:                                            ; preds = %bb.rf
  %i.biz = add i64 %.sroa.09.1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, -1 ; 2 uses
  %i.bja = trunc nuw nsw i32 %.sroa.0.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i to i8
  %i.bjb = getelementptr inbounds nuw i8, ptr %i.ew, i64 %i.biz
  %i.bjc = or disjoint i8 %i.bja, 48
  store i8 %i.bjc, ptr %i.bjb, align 1, !alias.scope !13889, !noalias !13888
  br label %bb.ri

bb.ri:                                            ; preds = %bb.rh, %bb.rg
  %.sroa.09.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.biz, %bb.rh ], [ %i.biv, %bb.rg ] ; 2 uses
  br i1 %3, label %"_ZN4itoa55_$LT$impl$u20$itoa..private..Sealed$u20$for$u20$i32$GT$5write17h60888a2bbedeb6fbE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", label %bb.rj

bb.rj:                                            ; preds = %bb.ri
  %i.bjd = add i64 %.sroa.09.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, -1 ; 2 uses
  %i.bje = getelementptr inbounds nuw i8, ptr %i.ew, i64 %i.bjd
  store i8 45, ptr %i.bje, align 1, !alias.scope !13889, !noalias !13888
  br label %"_ZN4itoa55_$LT$impl$u20$itoa..private..Sealed$u20$for$u20$i32$GT$5write17h60888a2bbedeb6fbE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"

"_ZN4itoa55_$LT$impl$u20$itoa..private..Sealed$u20$for$u20$i32$GT$5write17h60888a2bbedeb6fbE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.rj, %bb.ri
  %.sroa.09.3.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.09.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ri ], [ %i.bjd, %bb.rj ] ; 2 uses
  %i.bjf = sub i64 11, %.sroa.09.3.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ; 5 uses
  %i.bjg = icmp ult i64 %i.bjf, 12
  call void @llvm.assume(i1 %i.bjg)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val10.i7.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !13891)
  call void @llvm.experimental.noalias.scope.decl(metadata !13892)
  call void @llvm.experimental.noalias.scope.decl(metadata !13893)
  call void @llvm.experimental.noalias.scope.decl(metadata !13894)
  %i.bjh = getelementptr inbounds nuw i8, ptr %.val10.i7.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 16 ; 3 uses
  %i.bji = load i64, ptr %i.bjh, align 8, !alias.scope !13895, !noalias !13896, !noundef !28 ; 3 uses
  %i.bjj = load i64, ptr %.val10.i7.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !range !29, !alias.scope !13895, !noalias !13896, !noundef !28
  %i.bjk = sub i64 %i.bjj, %i.bji
  %i.bjl = icmp ugt i64 %i.bjf, %i.bjk
  br i1 %i.bjl, label %bb.rk, label %"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_i3217h726c845337975a7aE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", !prof !30

bb.rk:                                            ; preds = %"_ZN4itoa55_$LT$impl$u20$itoa..private..Sealed$u20$for$u20$i32$GT$5write17h60888a2bbedeb6fbE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hbfe87a90490e90eaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val10.i7.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %i.bji, i64 noundef %i.bjf, i64 noundef 1, i64 noundef 1)
          to label %.noexc26.i.i.i.i.i367 unwind label %.loopexit.i.i.i.i.i, !noalias !13730

.noexc26.i.i.i.i.i367:                            ; preds = %bb.rk
  %.pre.i.i.i.i.i.i.i3.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.bjh, align 8, !alias.scope !13897, !noalias !13896
  br label %"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_i3217h726c845337975a7aE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"

"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_i3217h726c845337975a7aE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %.noexc26.i.i.i.i.i367, %"_ZN4itoa55_$LT$impl$u20$itoa..private..Sealed$u20$for$u20$i32$GT$5write17h60888a2bbedeb6fbE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %i.bjm = phi i64 [ %i.bji, %"_ZN4itoa55_$LT$impl$u20$itoa..private..Sealed$u20$for$u20$i32$GT$5write17h60888a2bbedeb6fbE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %.pre.i.i.i.i.i.i.i3.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.noexc26.i.i.i.i.i367 ] ; 3 uses
  %i.bjn = getelementptr inbounds nuw i8, ptr %i.ew, i64 %.sroa.09.3.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bjo = icmp sgt i64 %i.bjm, -1
  call void @llvm.assume(i1 %i.bjo)
  %i.bjp = getelementptr inbounds nuw i8, ptr %.val10.i7.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.bjq = load ptr, ptr %i.bjp, align 8, !alias.scope !13897, !noalias !13896, !nonnull !28, !noundef !28
  %i.bjr = getelementptr inbounds nuw i8, ptr %i.bjq, i64 %i.bjm
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bjr, ptr nonnull readonly align 1 %i.bjn, i64 %i.bjf, i1 false), !noalias !13898
  %i.bjs = add nuw i64 %i.bjm, %i.bjf
  store i64 %i.bjs, ptr %i.bjh, align 8, !alias.scope !13897, !noalias !13896
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ew), !noalias !13888
  br label %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h5758dfdec1c116c4E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"

bb.rl:                                            ; preds = %_ZN10serde_json3ser9Formatter18begin_object_value17h6d3bc186cdc16551E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bjt = load ptr, ptr %i.bgs, align 8, !alias.scope !13869, !noalias !13870, !nonnull !28, !noundef !28
  %i.bju = getelementptr inbounds i8, ptr %i.bfp, i64 -8
  %i.bjv = load i64, ptr %i.bju, align 8, !alias.scope !13869, !noalias !13870, !noundef !28
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val10.i7.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i) ]
  invoke fastcc void @"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_str17hf58c26c162f17e29E"(ptr nonnull %.val10.i7.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.bjt, i64 noundef %i.bjv)
          to label %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h5758dfdec1c116c4E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" unwind label %.loopexit.i.i.i.i.i

"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h5758dfdec1c116c4E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.rl, %"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_i3217h726c845337975a7aE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", %"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$14serialize_bool17h774529df6e53759aE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %i.bjw = icmp eq i64 %i.bfq, 0
  br i1 %i.bjw, label %_ZN10serde_core3ser10Serializer11collect_map17h17a3b781edd5c732E.exit.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.qv

_ZN10serde_core3ser10Serializer11collect_map17h17a3b781edd5c732E.exit.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h5758dfdec1c116c4E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  store i8 2, ptr %i.beq, align 8, !noalias !13820
  br label %_ZN10serde_core3ser10Serializer11collect_map17h17a3b781edd5c732E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZN10serde_core3ser10Serializer11collect_map17h17a3b781edd5c732E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZN10serde_core3ser10Serializer11collect_map17h17a3b781edd5c732E.exit.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.noexc20.i.i.i.i.i275
  %i.bjx = getelementptr inbounds nuw i8, ptr %i.fl, i64 164
  %i.bjy = load i8, ptr %i.bjx, align 4, !range !42, !alias.scope !13833, !noalias !13834, !noundef !28 ; 2 uses
  %.not23.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.bjy, 2
  br i1 %.not23.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.noexc28.i.i.i.i.i277, label %bb.rm

bb.rm:                                            ; preds = %_ZN10serde_core3ser10Serializer11collect_map17h17a3b781edd5c732E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  invoke fastcc void @_ZN10serde_core3ser12SerializeMap15serialize_entry17h1dc3500615032f06E(ptr noalias noundef align 8 dereferenceable(16) %i.ex, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @663, i64 noundef 22, i8 %i.bjy)
          to label %.noexc28.i.i.i.i.i277 unwind label %.loopexit.split-lp.i.i.i.i.i

.noexc28.i.i.i.i.i277:                            ; preds = %bb.rm, %_ZN10serde_core3ser10Serializer11collect_map17h17a3b781edd5c732E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bjz = getelementptr inbounds nuw i8, ptr %i.fl, i64 165
  %i.bka = load i8, ptr %i.bjz, align 1, !range !42, !alias.scope !13833, !noalias !13834, !noundef !28 ; 2 uses
  %.not24.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.bka, 2
  br i1 %.not24.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.noexc29.i.i.i.i.i278, label %bb.rn

bb.rn:                                            ; preds = %.noexc28.i.i.i.i.i277
  invoke fastcc void @_ZN10serde_core3ser12SerializeMap15serialize_entry17h1dc3500615032f06E(ptr noalias noundef align 8 dereferenceable(16) %i.ex, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @664, i64 noundef 18, i8 %i.bka)
          to label %.noexc29.i.i.i.i.i278 unwind label %.loopexit.split-lp.i.i.i.i.i

.noexc29.i.i.i.i.i278:                            ; preds = %bb.rn, %.noexc28.i.i.i.i.i277
  %i.bkb = getelementptr inbounds nuw i8, ptr %i.fl, i64 166
  %i.bkc = load i8, ptr %i.bkb, align 2, !range !42, !alias.scope !13833, !noalias !13834, !noundef !28 ; 2 uses
  %.not25.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.bkc, 2
  br i1 %.not25.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.noexc30.i.i.i.i.i, label %bb.ro

bb.ro:                                            ; preds = %.noexc29.i.i.i.i.i278
  invoke fastcc void @_ZN10serde_core3ser12SerializeMap15serialize_entry17h1dc3500615032f06E(ptr noalias noundef align 8 dereferenceable(16) %i.ex, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @665, i64 noundef 17, i8 %i.bkc)
          to label %.noexc30.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i.i

.noexc30.i.i.i.i.i:                               ; preds = %bb.ro, %.noexc29.i.i.i.i.i278
  %i.bkd = load ptr, ptr %i.ex, align 8, !noalias !13820, !nonnull !28, !align !35, !noundef !28
  %i.bke = load i8, ptr %i.beq, align 8, !range !42, !noalias !13820, !noundef !28
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i279 = load ptr, ptr %i.bkd, align 8, !noalias !13899 ; 5 uses
  %i.bkf = icmp eq i8 %i.bke, 0
  br i1 %i.bkf, label %bb.rr, label %bb.rp

bb.rp:                                            ; preds = %.noexc30.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i279) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !13900)
  call void @llvm.experimental.noalias.scope.decl(metadata !13901)
  call void @llvm.experimental.noalias.scope.decl(metadata !13902)
  call void @llvm.experimental.noalias.scope.decl(metadata !13903)
  %i.bkg = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i279, i64 16 ; 3 uses
  %i.bkh = load i64, ptr %i.bkg, align 8, !alias.scope !13904, !noalias !13905, !noundef !28 ; 3 uses
  %i.bki = load i64, ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i279, align 8, !range !29, !alias.scope !13904, !noalias !13905, !noundef !28
  %i.bkj = icmp eq i64 %i.bki, %i.bkh
  br i1 %i.bkj, label %bb.rq, label %_ZN10serde_json3ser9Formatter10end_object17h325f3d47e1b1e2e2E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !prof !30

bb.rq:                                            ; preds = %bb.rp
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hbfe87a90490e90eaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i279, i64 noundef %i.bkh, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %.noexc31.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i.i, !noalias !13730

.noexc31.i.i.i.i.i:                               ; preds = %bb.rq
  %.pre.i.i.i.i.i.i.i31.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.bkg, align 8, !alias.scope !13906, !noalias !13905
  br label %_ZN10serde_json3ser9Formatter10end_object17h325f3d47e1b1e2e2E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZN10serde_json3ser9Formatter10end_object17h325f3d47e1b1e2e2E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.noexc31.i.i.i.i.i, %bb.rp
  %i.bkk = phi i64 [ %i.bkh, %bb.rp ], [ %.pre.i.i.i.i.i.i.i31.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.noexc31.i.i.i.i.i ] ; 3 uses
  %i.bkl = icmp sgt i64 %i.bkk, -1
  call void @llvm.assume(i1 %i.bkl)
  %i.bkm = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i279, i64 8
  %i.bkn = load ptr, ptr %i.bkm, align 8, !alias.scope !13906, !noalias !13905, !nonnull !28, !noundef !28
  %i.bko = getelementptr inbounds nuw i8, ptr %i.bkn, i64 %i.bkk
  store i8 125, ptr %i.bko, align 1, !noalias !13907
  %i.bkp = add nuw i64 %i.bkk, 1
  store i64 %i.bkp, ptr %i.bkg, align 8, !alias.scope !13906, !noalias !13905
  br label %bb.rr

end_hunk_3
begin_hunk_4_@"_ZN5alloc11collections5btree4node208Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..KV$GT$5split17h1eeee35b6221c672E":bb.a
  %.sroa.5.0.copyload.i = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !35868 ; 3 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.sroa.6.0.copyload.i = load i64, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !35868
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !35868
  %i.o = getelementptr inbounds nuw [32 x i8], ptr %.val, i64 %.val1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.o, i64 32, i1 false), !noalias !35868
  %i.p = icmp ult i64 %i.k, 12
  br i1 %i.p, label %bb.i, label %bb.c, !prof !32

bb.c:                                             ; preds = %"_ZN5alloc11collections5btree4node21LeafNode$LT$K$C$V$GT$3new17h5039876404e17435E.exit"
  invoke void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef 0, i64 noundef %i.k, i64 noundef 11, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @893) #42
          to label %bb.e unwind label %bb.d, !noalias !35868

bb.d:                                             ; preds = %bb.c
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr45drop_in_place$LT$serde_json..value..Value$GT$17hd30bb28c59a03f14E"(ptr noalias noundef align 8 dereferenceable(32) %i.a) #43
          to label %bb.g unwind label %bb.f, !noalias !35868

bb.e:                                             ; preds = %bb.c
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #40, !noalias !35868
  unreachable

bb.g:                                             ; preds = %bb.d
  %i.s = icmp eq i64 %.sroa.0.0.copyload.i, 0
  br i1 %i.s, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload.i) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload.i, i64 noundef %.sroa.0.0.copyload.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !35870
  br label %bb.j

bb.i:                                             ; preds = %"_ZN5alloc11collections5btree4node21LeafNode$LT$K$C$V$GT$3new17h5039876404e17435E.exit"
  %i.t = add i64 %.val1, 1                        ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 360
  %i.v = getelementptr inbounds nuw [24 x i8], ptr %i.m, i64 %i.t
  %i.w = mul nuw nsw i64 %i.k, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.u, ptr nonnull readonly align 8 %i.v, i64 %i.w, i1 false), !alias.scope !35871, !noalias !35869
  %i.x = getelementptr inbounds nuw [32 x i8], ptr %.val, i64 %i.t
  %i.y = shl nuw nsw i64 %i.k, 5
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(632) %i.b, ptr nonnull readonly align 8 %i.x, i64 %i.y, i1 false), !alias.scope !35872, !noalias !35869
  %i.z = trunc i64 %.val1 to i16
  store i16 %i.z, ptr %i.g, align 2, !noalias !35868
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !35868
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !noundef !28
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %.val, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %i.ab, ptr %i.ad, align 8
  store i64 %.sroa.0.0.copyload.i, ptr %0, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.5.0.copyload.i, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.6.0.copyload.i, ptr %.sroa.3.0..sroa_idx, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.b, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 0, ptr %i.af, align 8
  ret void

bb.j:                                             ; preds = %bb.h, %bb.g
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.b, i64 noundef 632, i64 noundef 8) #41
  resume { ptr, i32 } %i.q
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN5alloc11collections5btree4node212Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..KV$GT$5split17h40ac6c54c27844a3E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(88) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %i.b = alloca [56 x i8], align 8                ; 8 uses
  %i.c = load ptr, ptr %1, align 8, !nonnull !28, !noundef !28 ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 626 ; 3 uses
  %i.e = load i16, ptr %i.d, align 2, !noundef !28
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41
  %i.f = tail call noalias noundef align 8 dereferenceable_or_null(728) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 728, i64 noundef range(i64 1, -9223372036854775807) 8) #41 ; 9 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.b, label %"_ZN5alloc11collections5btree4node25InternalNode$LT$K$C$V$GT$3new17h67d7c0ed0f821b2cE.exit", !prof !30

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 728) #42
  unreachable

"_ZN5alloc11collections5btree4node25InternalNode$LT$K$C$V$GT$3new17h67d7c0ed0f821b2cE.exit": ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 352
  store ptr null, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 626 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val3 = load i64, ptr %i.j, align 8, !noundef !28 ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35897)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35898)
  %i.k = load i16, ptr %i.d, align 2, !noalias !35899, !noundef !28
  %i.l = zext i16 %i.k to i64
  %i.m = xor i64 %.val3, -1
  %i.n = add i64 %i.l, %i.m                       ; 5 uses
  %i.o = trunc i64 %i.n to i16
  store i16 %i.o, ptr %i.i, align 2, !alias.scope !35898, !noalias !35897
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 360 ; 2 uses
  %i.q = getelementptr inbounds nuw [24 x i8], ptr %i.p, i64 %.val3 ; 3 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.q, align 8, !noalias !35899 ; 3 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.sroa.5.0.copyload.i = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !35899 ; 3 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %.sroa.6.0.copyload.i = load i64, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !35899
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !35899
  %i.r = getelementptr inbounds nuw [32 x i8], ptr %i.c, i64 %.val3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.r, i64 32, i1 false), !noalias !35899
  %i.s = icmp ult i64 %i.n, 12
  br i1 %i.s, label %bb.i, label %bb.c, !prof !32

bb.c:                                             ; preds = %"_ZN5alloc11collections5btree4node25InternalNode$LT$K$C$V$GT$3new17h67d7c0ed0f821b2cE.exit"
  invoke void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef 0, i64 noundef %i.n, i64 noundef 11, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @893) #42
          to label %bb.e unwind label %bb.d, !noalias !35899

bb.d:                                             ; preds = %bb.c
  %i.t = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke fastcc void @"_ZN4core3ptr45drop_in_place$LT$serde_json..value..Value$GT$17hd30bb28c59a03f14E"(ptr noalias noundef align 8 dereferenceable(32) %i.a) #43
          to label %bb.g unwind label %bb.f, !noalias !35899

bb.e:                                             ; preds = %bb.c
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #40, !noalias !35899
  unreachable

bb.g:                                             ; preds = %bb.d
  %i.v = icmp eq i64 %.sroa.0.0.copyload.i, 0
  br i1 %i.v, label %bb.s, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload.i) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload.i, i64 noundef %.sroa.0.0.copyload.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !35900
  br label %bb.s

bb.i:                                             ; preds = %"_ZN5alloc11collections5btree4node25InternalNode$LT$K$C$V$GT$3new17h67d7c0ed0f821b2cE.exit"
  %i.w = add i64 %.val3, 1                        ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.f, i64 360
  %i.y = getelementptr inbounds nuw [24 x i8], ptr %i.p, i64 %i.w
  %i.z = mul nuw nsw i64 %i.n, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.x, ptr nonnull readonly align 8 %i.y, i64 %i.z, i1 false), !alias.scope !35901, !noalias !35897
  %i.aa = getelementptr inbounds nuw [32 x i8], ptr %i.c, i64 %i.w
  %i.ab = shl nuw nsw i64 %i.n, 5
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(632) %i.f, ptr nonnull readonly align 8 %i.aa, i64 %i.ab, i1 false), !alias.scope !35902, !noalias !35897
  %i.ac = trunc i64 %.val3 to i16
  store i16 %i.ac, ptr %i.d, align 2, !noalias !35899
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ad, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false), !noalias !35898
  store i64 %.sroa.0.0.copyload.i, ptr %i.b, align 8, !alias.scope !35897, !noalias !35898
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %.sroa.5.0.copyload.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !35897, !noalias !35898
  %.sroa.57.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %.sroa.6.0.copyload.i, ptr %.sroa.57.0..sroa_idx.i, align 8, !alias.scope !35897, !noalias !35898
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !35899
  %i.ae = load i16, ptr %i.i, align 2, !noundef !28 ; 2 uses
  %i.af = zext i16 %i.ae to i64                   ; 3 uses
  %i.ag = add nuw nsw i64 %i.af, 1                ; 3 uses
  %i.ah = icmp ult i16 %i.ae, 12
  br i1 %i.ah, label %bb.k, label %bb.j, !prof !63

bb.j:                                             ; preds = %bb.i
  invoke void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef 0, i64 noundef %i.ag, i64 noundef 12, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @894) #42
          to label %bb.q unwind label %bb.m

bb.k:                                             ; preds = %bb.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.f, i64 632 ; 2 uses
  %i.aj = zext i16 %i.e to i64
  %i.ak = sub i64 %i.aj, %.val3
  %i.al = icmp eq i64 %i.ak, %i.ag
  br i1 %i.al, label %bb.n, label %bb.l, !prof !32

bb.l:                                             ; preds = %bb.k
  invoke void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @891, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @892) #42
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %bb.l, %bb.j
  %i.am = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr77drop_in_place$LT$$LP$alloc..string..String$C$serde_json..value..Value$RP$$GT$17h8fb521033cff87e4E"(ptr noalias noundef align 8 dereferenceable(56) %i.b) #43
          to label %bb.s unwind label %bb.r

bb.n:                                             ; preds = %bb.k
  %i.an = getelementptr i8, ptr %i.c, i64 640
  %i.ao = getelementptr [8 x i8], ptr %i.an, i64 %.val3
  %i.ap = shl nuw nsw i64 %i.ag, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ai, ptr noundef nonnull readonly align 8 dereferenceable(1) %i.ao, i64 %i.ap, i1 false), !alias.scope !35903
  %2 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %3 = load i64, ptr %2, align 8, !noundef !28    ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35904)
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %bb.n
  %.sroa.0.013.i.i = phi i64 [ 0, %bb.n ], [ %spec.select10.i.i, %bb.o ] ; 5 uses
  %i.aq = icmp samesign uge i64 %.sroa.0.013.i.i, %i.af ; 2 uses
  %not..i.i = xor i1 %i.aq, true
  %i.ar = zext i1 %not..i.i to i64
  %spec.select10.i.i = add nuw nsw i64 %.sroa.0.013.i.i, %i.ar ; 2 uses
  %i.as = icmp samesign ult i64 %.sroa.0.013.i.i, 12
  tail call void @llvm.assume(i1 %i.as)
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %.sroa.0.013.i.i
  %i.au = load ptr, ptr %i.at, align 8, !alias.scope !35904, !noalias !35905, !nonnull !28, !noundef !28 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 352
  store ptr %i.f, ptr %i.av, align 8, !noalias !35906
  %i.aw = trunc nuw nsw i64 %.sroa.0.013.i.i to i16
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 624
  store i16 %i.aw, ptr %i.ax, align 8, !noalias !35907
  %.not.i.i.i.i = icmp samesign ugt i64 %spec.select10.i.i, %i.af
  %or.cond.i.i = select i1 %i.aq, i1 true, i1 %.not.i.i.i.i
  br i1 %or.cond.i.i, label %bb.p, label %bb.o

bb.p:                                             ; preds = %bb.o
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %i.b, i64 56, i1 false)
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.c, ptr %i.ay, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %3, ptr %i.az, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.f, ptr %i.ba, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 %3, ptr %i.bb, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.q:                                             ; preds = %bb.j
  unreachable

bb.r:                                             ; preds = %bb.m
  %i.bc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #40
  unreachable

bb.s:                                             ; preds = %bb.m, %bb.g, %bb.h
  %.pn = phi { ptr, i32 } [ %i.am, %bb.m ], [ %i.t, %bb.g ], [ %i.t, %bb.h ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef 728, i64 noundef 8) #41
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN5alloc3str17join_generic_copy17hdaaa97b87557406bE(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(address) %1, i64 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 6 uses
  %i.b = alloca [48 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %.idx = mul nuw nsw i64 %2, 24                  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 %.idx ; 2 uses
  %i.e = icmp eq i64 %2, 0
  %.sink.sroa.gep = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sink.sroa.gep6 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sink.sroa.gep8 = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sink.sroa.gep9 = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sink.sroa.gep11 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sink.sroa.gep12 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sink.sroa.gep14 = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sink.sroa.gep15 = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  br i1 %i.e, label %bb.d, label %.lr.ph3

.lr.ph3:                                          ; preds = %bb.a
  %gepdiff = add nsw i64 %.idx, -24
  %i.f = udiv exact i64 %gepdiff, 24
  %i.g = shl nuw nsw i64 %i.f, 1
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.j, i64 24 ; 2 uses
  %i.i = icmp eq ptr %i.h, %i.d
  br i1 %i.i, label %._crit_edge, label %bb.c

bb.c:                                             ; preds = %.lr.ph3, %bb.b
  %.sroa.01.0.i2 = phi i64 [ %i.g, %.lr.ph3 ], [ %i.l, %bb.b ] ; 2 uses
  %i.j = phi ptr [ %1, %.lr.ph3 ], [ %i.h, %bb.b ] ; 2 uses
  %i.k = getelementptr i8, ptr %i.j, i64 16
  %.val9.i = load i64, ptr %i.k, align 8, !noalias !35928, !noundef !28
  %i.l = add i64 %.val9.i, %.sroa.01.0.i2         ; 10 uses
  %i.m = icmp ult i64 %i.l, %.sroa.01.0.i2
  br i1 %i.m, label %bb.h, label %bb.b

bb.d:                                             ; preds = %bb.a
  store i64 0, ptr %0, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.o, align 8
  br label %bb.e

bb.e:                                             ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc96528e25e792b48E.exit87.thread", %bb.d
  ret void

._crit_edge:                                      ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.p = icmp slt i64 %i.l, 0
  br i1 %i.p, label %bb.g, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i, !prof !44

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i: ; preds = %._crit_edge
  %i.q = icmp eq i64 %i.l, 0
  br i1 %i.q, label %bb.k, label %bb.f

bb.f:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !35929
  %i.r = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.l, i64 noundef range(i64 1, 9) 1) #41, !noalias !35929 ; 2 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f, %._crit_edge
  %.sroa.4.0.ph.i = phi i64 [ 1, %bb.f ], [ 0, %._crit_edge ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i, i64 %i.l, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @903) #42
  unreachable

bb.h:                                             ; preds = %bb.c
  tail call void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @900, i64 noundef 53, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @902) #42
  unreachable

bb.i:                                             ; preds = %.invoke, %bb.l
  %i.t = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !35930)
  %.val.i = load i64, ptr %i.c, align 8, !range !29, !alias.scope !35930, !noundef !28 ; 2 uses
  %i.u = icmp eq i64 %.val.i, 0
  br i1 %i.u, label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb988938bd244ec3E.exit", label %bb.j

bb.j:                                             ; preds = %bb.i
  %.val1.i = load ptr, ptr %i.v, align 8, !alias.scope !35930, !nonnull !28, !noundef !28
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %.val.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !35930
  br label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb988938bd244ec3E.exit"

bb.k:                                             ; preds = %bb.f, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i
  %.sroa.10.0.i = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i ], [ %i.r, %bb.f ] ; 2 uses
  store i64 %i.l, ptr %i.c, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  store ptr %.sroa.10.0.i, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 3 uses
  store i64 0, ptr %i.w, align 8
  %i.x = getelementptr i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.x, align 8, !nonnull !28, !noundef !28
  %i.y = getelementptr i8, ptr %1, i64 16
  %.val82 = load i64, ptr %i.y, align 8, !noundef !28 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35931)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35932)
  %i.z = icmp ugt i64 %.val82, %i.l
  br i1 %i.z, label %bb.l, label %bb.m, !prof !30

bb.l:                                             ; preds = %bb.k
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hbfe87a90490e90eaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef 0, i64 noundef %.val82, i64 noundef 1, i64 noundef 1)
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.l
  %.pre.i.i = load i64, ptr %i.w, align 8, !alias.scope !35933
  %.pre = load ptr, ptr %i.v, align 8, !alias.scope !35933
  br label %bb.m

bb.m:                                             ; preds = %.noexc, %bb.k
  %i.aa = phi ptr [ %.sroa.10.0.i, %bb.k ], [ %.pre, %.noexc ] ; 2 uses
  %i.ab = phi i64 [ 0, %bb.k ], [ %.pre.i.i, %.noexc ] ; 3 uses
  %i.ac = icmp sgt i64 %i.ab, -1
  tail call void @llvm.assume(i1 %i.ac)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.ab
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ad, ptr nonnull readonly align 1 %.val, i64 %.val82, i1 false), !noalias !35933
  %i.ae = add i64 %i.ab, %.val82                  ; 3 uses
  %i.af = icmp sgt i64 %i.ae, -1
  tail call void @llvm.assume(i1 %i.af)
  %i.ag = sub nsw i64 %i.l, %i.ae                 ; 2 uses
  %i.ah = icmp eq i64 %2, 1
  br i1 %i.ah, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc96528e25e792b48E.exit87.thread", label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.m
  %.sroa.05.028 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ai = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.ae
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hefdf62938972207fE.exit91"
  %.sroa.05.032 = phi ptr [ %.sroa.05.0, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hefdf62938972207fE.exit91" ], [ %.sroa.05.028, %.lr.ph.preheader ] ; 2 uses
  %.sroa.08.331 = phi ptr [ %i.ap, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hefdf62938972207fE.exit91" ], [ %i.ai, %.lr.ph.preheader ] ; 2 uses
  %.sroa.28.330 = phi i64 [ %i.aq, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hefdf62938972207fE.exit91" ], [ %i.ag, %.lr.ph.preheader ] ; 2 uses
  %.pn29 = phi ptr [ %.sroa.05.032, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hefdf62938972207fE.exit91" ], [ %1, %.lr.ph.preheader ] ; 2 uses
  %i.aj = getelementptr i8, ptr %.pn29, i64 32
  %.val83 = load ptr, ptr %i.aj, align 8, !nonnull !28, !noundef !28
  %i.ak = getelementptr i8, ptr %.pn29, i64 40
  %.val84 = load i64, ptr %i.ak, align 8, !noundef !28 ; 4 uses
  %i.al = icmp ugt i64 %.sroa.28.330, 1
  br i1 %i.al, label %bb.o, label %bb.n, !prof !32

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc96528e25e792b48E.exit87.thread": ; preds = %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hefdf62938972207fE.exit91", %bb.m
  %.sroa.28.3.lcssa = phi i64 [ %i.ag, %bb.m ], [ %i.aq, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hefdf62938972207fE.exit91" ]
  %i.am = sub i64 %i.l, %.sroa.28.3.lcssa
  store i64 %i.am, ptr %i.w, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.e

bb.n:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  br label %.invoke

bb.o:                                             ; preds = %.lr.ph
  %i.an = add i64 %.sroa.28.330, -2               ; 2 uses
  store i16 8236, ptr %.sroa.08.331, align 1, !alias.scope !35934, !noalias !35935
  %.not81 = icmp ugt i64 %.val84, %i.an
  br i1 %.not81, label %bb.p, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hefdf62938972207fE.exit91", !prof !30

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %.invoke

.invoke:                                          ; preds = %bb.n, %bb.p
  %.sink.sroa.phi = phi ptr [ %.sink.sroa.gep, %bb.n ], [ %.sink.sroa.gep6, %bb.p ]
  %.sink.sroa.phi7 = phi ptr [ %.sink.sroa.gep8, %bb.n ], [ %.sink.sroa.gep9, %bb.p ]
  %.sink.sroa.phi10 = phi ptr [ %.sink.sroa.gep11, %bb.n ], [ %.sink.sroa.gep12, %bb.p ]
  %.sink.sroa.phi13 = phi ptr [ %.sink.sroa.gep14, %bb.n ], [ %.sink.sroa.gep15, %bb.p ]
  %.sink = phi ptr [ %i.b, %bb.n ], [ %i.a, %bb.p ] ; 2 uses
  store ptr @265, ptr %.sink, align 8
  store i64 1, ptr %.sink.sroa.phi, align 8
end_hunk_4
begin_hunk_5_@"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h181067632ab1ef1dE":bb.a
.loopexit.i.i:                                    ; preds = %bb.bv, %.lr.ph.i.i.i.i, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hf5149a4291ac7aa1E.exit.thread.i.i.i.i"
  %i.ev = phi ptr [ inttoptr (i64 8 to ptr), %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hf5149a4291ac7aa1E.exit.thread.i.i.i.i" ], [ %i.dt, %.lr.ph.i.i.i.i ], [ %i.dt, %bb.bv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !36675
  br label %bb.bx

bb.ci:                                            ; preds = %bb.bx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !36629
  call void @llvm.experimental.noalias.scope.decl(metadata !36682)
  call void @llvm.experimental.noalias.scope.decl(metadata !36683)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !36629
  switch i8 %i.ed, label %default.unreachable [
    i8 0, label %bb.cj
    i8 1, label %bb.ck
    i8 2, label %bb.cl
    i8 3, label %bb.cm
    i8 4, label %bb.cn
    i8 5, label %bb.co
  ]

default.unreachable:                              ; preds = %bb.ci
  unreachable

bb.cj:                                            ; preds = %bb.ci
  store i8 0, ptr %i.k, align 8, !alias.scope !36682, !noalias !36684
  br label %bb.cy

bb.ck:                                            ; preds = %bb.ci
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.k, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.ec, i64 32, i1 false), !alias.scope !36685, !noalias !36631
  br label %bb.cy

bb.cl:                                            ; preds = %bb.ci
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.k, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.ec, i64 32, i1 false), !alias.scope !36685, !noalias !36631
  br label %bb.cy

bb.cm:                                            ; preds = %bb.ci
  %i.ew = getelementptr inbounds nuw i8, ptr %.sroa.027.0705.i, i64 432
  invoke void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17h123bb51dd192bfa5E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ag, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ew, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @931)
          to label %.noexc66.i.i unwind label %.loopexit161.i, !noalias !36631, !inline_history !19

.noexc66.i.i:                                     ; preds = %bb.cm
  store i8 3, ptr %i.k, align 8, !alias.scope !36682, !noalias !36684
  br label %bb.cy

bb.cn:                                            ; preds = %bb.ci
  %i.ex = getelementptr inbounds nuw i8, ptr %.sroa.027.0705.i, i64 432
  invoke fastcc void @"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h115a6a79783cb764E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.ag, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ex)
          to label %.noexc67.i.i unwind label %.loopexit161.i, !noalias !36631, !inline_history !19

.noexc67.i.i:                                     ; preds = %bb.cn
  store i8 4, ptr %i.k, align 8, !alias.scope !36682, !noalias !36684
  br label %bb.cy

bb.co:                                            ; preds = %bb.ci
  %i.ey = getelementptr inbounds nuw i8, ptr %.sroa.027.0705.i, i64 448
  %i.ez = load i64, ptr %i.ey, align 8, !alias.scope !36686, !noalias !36687, !noundef !28
  %i.fa = icmp eq i64 %i.ez, 0
  br i1 %i.fa, label %bb.cp, label %bb.cq

bb.cp:                                            ; preds = %bb.co
  store ptr null, ptr %i.a, align 8, !noalias !36688
  store i64 0, ptr %i.af, align 8, !noalias !36688
  br label %"_ZN96_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h44ac1e5157f50ecaE.exit.i.i.i"

bb.cq:                                            ; preds = %bb.co
  %i.fb = getelementptr inbounds nuw i8, ptr %.sroa.027.0705.i, i64 432
  %i.fc = load ptr, ptr %i.fb, align 8, !alias.scope !36686, !noalias !36687, !noundef !28 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.fc, null
  br i1 %.not.i.i.i.i, label %bb.cs, label %bb.cr, !prof !30

bb.cr:                                            ; preds = %bb.cq
  %i.fd = getelementptr inbounds nuw i8, ptr %.sroa.027.0705.i, i64 440
  %i.fe = load i64, ptr %i.fd, align 8, !alias.scope !36686, !noalias !36687, !noundef !28
  invoke fastcc void @"_ZN96_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone13clone_subtree17hcb1a9ae3da21c450E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a, ptr noundef nonnull %i.fc, i64 noundef %i.fe)
          to label %"_ZN96_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h44ac1e5157f50ecaE.exit.i.i.i" unwind label %.loopexit161.i, !noalias !36631, !inline_history !19

bb.cs:                                            ; preds = %bb.cq
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1068) #42
          to label %.noexc69.i.i unwind label %.loopexit.split-lp162.i, !noalias !36631, !inline_history !19

.noexc69.i.i:                                     ; preds = %bb.cs
  unreachable

"_ZN96_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h44ac1e5157f50ecaE.exit.i.i.i": ; preds = %bb.cr, %bb.cp
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !36684
  store i8 5, ptr %i.k, align 8, !alias.scope !36682, !noalias !36684
  br label %bb.cy

bb.ct:                                            ; preds = %bb.bx
  store i8 6, ptr %i.r, align 8, !noalias !36629
  br label %bb.cu

bb.cu:                                            ; preds = %bb.cy, %bb.ct
  %i.ff = getelementptr inbounds nuw i8, ptr %.sroa.027.0705.i, i64 240
  %i.fg = load i64, ptr %i.ff, align 8, !range !34, !alias.scope !36630, !noalias !36631, !noundef !28
  %.not24.i.i = icmp eq i64 %i.fg, -9223372036854775808
  br i1 %.not24.i.i, label %.loopexit.i, label %bb.cz

"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h79d9528608d63f86E.exit.i.i": ; preds = %bb.de, %bb.dd, %.loopexit.split-lp162.i, %.loopexit161.i
  %.pn.i.i = phi { ptr, i32 } [ %i.gs, %bb.dd ], [ %i.gs, %bb.de ], [ %lpad.loopexit163.i, %.loopexit161.i ], [ %lpad.loopexit.split-lp164.i, %.loopexit.split-lp162.i ] ; 3 uses
  %i.fh = icmp eq i64 %.sroa.0143.0.i, -9223372036854775808
  br i1 %i.fh, label %.body64.i.i, label %bb.cv

bb.cv:                                            ; preds = %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h79d9528608d63f86E.exit.i.i"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6145.0.i) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !36689), !noalias !36670
  %i.fi = icmp eq i64 %.sroa.7147.0.i, 0
  br i1 %i.fi, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h8ac9a7b7c12b2c75E.exit.i.i.i", label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.cv, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit.i.i.i.i.i"
  %.sroa.0.010.i.i.i.i.i = phi i64 [ %i.fk, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit.i.i.i.i.i" ], [ 0, %bb.cv ] ; 2 uses
  %i.fj = getelementptr inbounds nuw [24 x i8], ptr %.sroa.6145.0.i, i64 %.sroa.0.010.i.i.i.i.i ; 2 uses
  %i.fk = add nuw i64 %.sroa.0.010.i.i.i.i.i, 1   ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !36690), !noalias !36670
  call void @llvm.experimental.noalias.scope.decl(metadata !36691), !noalias !36670
  %.val.i.i.i.i.i.i.i = load i64, ptr %i.fj, align 8, !range !29, !alias.scope !36692, !noalias !36693, !noundef !28 ; 2 uses
  %i.fl = icmp eq i64 %.val.i.i.i.i.i.i.i, 0
  br i1 %i.fl, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit.i.i.i.i.i", label %bb.cw

bb.cw:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fj, i64 8
  %.val1.i.i.i.i.i.i.i = load ptr, ptr %i.fm, align 8, !alias.scope !36692, !noalias !36693, !nonnull !28, !noundef !28
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !36694
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit.i.i.i.i.i"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit.i.i.i.i.i": ; preds = %bb.cw, %.lr.ph.i.i.i.i.i
  %i.fn = icmp eq i64 %i.fk, %.sroa.7147.0.i
  br i1 %i.fn, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h8ac9a7b7c12b2c75E.exit.i.i.i", label %.lr.ph.i.i.i.i.i

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h8ac9a7b7c12b2c75E.exit.i.i.i": ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit.i.i.i.i.i", %bb.cv
  %i.fo = icmp eq i64 %.sroa.0143.0.i, 0
  br i1 %i.fo, label %.body64.i.i, label %bb.cx

bb.cx:                                            ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h8ac9a7b7c12b2c75E.exit.i.i.i"
  %i.fp = mul nuw i64 %.sroa.0143.0.i, 24
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6145.0.i, i64 noundef %i.fp, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !36693
  br label %.body64.i.i

.loopexit161.i:                                   ; preds = %bb.cr, %bb.cn, %bb.cm
  %lpad.loopexit163.i = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h79d9528608d63f86E.exit.i.i"

.loopexit.split-lp162.i:                          ; preds = %bb.cs
  %lpad.loopexit.split-lp164.i = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h79d9528608d63f86E.exit.i.i"

bb.cy:                                            ; preds = %"_ZN96_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h44ac1e5157f50ecaE.exit.i.i.i", %.noexc67.i.i, %.noexc66.i.i, %bb.cl, %bb.ck, %bb.cj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !36629
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.r, ptr noundef nonnull align 8 dereferenceable(32) %i.k, i64 32, i1 false), !noalias !36629
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !36629
  br label %bb.cu

bb.cz:                                            ; preds = %bb.cu
  %i.fq = getelementptr inbounds nuw i8, ptr %.sroa.027.0705.i, i64 248
  %.val39.i.i = load ptr, ptr %i.fq, align 8, !alias.scope !36630, !noalias !36631, !nonnull !28, !noundef !28 ; 4 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %.sroa.027.0705.i, i64 256
  %.val40.i.i = load i64, ptr %i.fr, align 8, !alias.scope !36630, !noalias !36631, !noundef !28 ; 12 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !36695)
  %i.fs = shl i64 %.val40.i.i, 2                  ; 4 uses
  %i.ft = icmp ugt i64 %.val40.i.i, 4611686018427387903
  %i.fu = icmp ugt i64 %i.fs, 9223372036854775804
  %or.cond.i.i.i.i.i70.i.i = or i1 %i.ft, %i.fu
  br i1 %or.cond.i.i.i.i.i70.i.i, label %bb.db, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i71.i.i, !prof !44

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i71.i.i: ; preds = %bb.cz
  %i.fv = icmp eq i64 %i.fs, 0
  br i1 %i.fv, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hf5149a4291ac7aa1E.exit.thread.i.i75.i.i", label %bb.da

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hf5149a4291ac7aa1E.exit.thread.i.i75.i.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i71.i.i
  %i.fw = icmp eq i64 %.val40.i.i, 0
  call void @llvm.assume(i1 %i.fw)
  br label %.loopexit.i

bb.da:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i71.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !36696
  %i.fx = call noundef align 4 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.fs, i64 noundef range(i64 1, 9) 4) #41, !noalias !36696 ; 5 uses
  %i.fy = icmp eq ptr %i.fx, null
  br i1 %i.fy, label %bb.db, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hf5149a4291ac7aa1E.exit.i.i72.i.i"

bb.db:                                            ; preds = %bb.da, %bb.cz
  %.sroa.4.0.ph.i.i.i74.i.i = phi i64 [ 4, %bb.da ], [ 0, %bb.cz ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i74.i.i, i64 %i.fs, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1034) #42
          to label %.noexc76.i.i unwind label %bb.dd, !noalias !36631

.noexc76.i.i:                                     ; preds = %bb.db
  unreachable

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hf5149a4291ac7aa1E.exit.i.i72.i.i": ; preds = %bb.da
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %.val39.i.i, i64 %.val40.i.i
  %i.ga = add nsw i64 %.val40.i.i, -1
  %i.gb = call i64 @llvm.umin.i64(i64 %.val40.i.i, i64 %i.ga) ; 2 uses
  %min.iters.check = icmp ult i64 %i.gb, 8
  br i1 %min.iters.check, label %.lr.ph.i.i73.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hf5149a4291ac7aa1E.exit.i.i72.i.i"
  %i.gc = add nuw nsw i64 %i.gb, 1                ; 2 uses
  %i.gd = and i64 %i.gc, 7                        ; 2 uses
  %i.ge = icmp eq i64 %i.gd, 0
  %i.gf = select i1 %i.ge, i64 8, i64 %i.gd
  %n.vec = sub nsw i64 %i.gc, %i.gf               ; 4 uses
  %1 = shl i64 %n.vec, 2
  %2 = getelementptr i8, ptr %.val39.i.i, i64 %1
  %i.gg = sub i64 %.val40.i.i, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.gh = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.val39.i.i, i64 %i.gh ; 2 uses
  %i.gi = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !alias.scope !36695, !noalias !36697
  %wide.load2035 = load <4 x i32>, ptr %i.gi, align 4, !alias.scope !36695, !noalias !36697
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %i.fx, i64 %index ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 16
  store <4 x i32> %wide.load, ptr %i.gj, align 4, !noalias !36698
  store <4 x i32> %wide.load2035, ptr %i.gk, align 4, !noalias !36698
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.gl = icmp eq i64 %index.next, %n.vec
  br i1 %i.gl, label %.lr.ph.i.i73.i.i.preheader, label %vector.body, !llvm.loop !36617

.lr.ph.i.i73.i.i.preheader:                       ; preds = %vector.body, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hf5149a4291ac7aa1E.exit.i.i72.i.i"
  %.sroa.015.024.i.i.i.i.ph = phi ptr [ %.val39.i.i, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hf5149a4291ac7aa1E.exit.i.i72.i.i" ], [ %2, %vector.body ]
  %.sroa.7.023.i.i.i.i.ph = phi i64 [ 0, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hf5149a4291ac7aa1E.exit.i.i72.i.i" ], [ %n.vec, %vector.body ]
  %.sroa.10.022.i.i.i.i.ph = phi i64 [ %.val40.i.i, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hf5149a4291ac7aa1E.exit.i.i72.i.i" ], [ %i.gg, %vector.body ]
  br label %.lr.ph.i.i73.i.i

.lr.ph.i.i73.i.i:                                 ; preds = %.lr.ph.i.i73.i.i.preheader, %bb.dc
  %.sroa.015.024.i.i.i.i = phi ptr [ %i.gp, %bb.dc ], [ %.sroa.015.024.i.i.i.i.ph, %.lr.ph.i.i73.i.i.preheader ] ; 3 uses
  %.sroa.7.023.i.i.i.i = phi i64 [ %i.go, %bb.dc ], [ %.sroa.7.023.i.i.i.i.ph, %.lr.ph.i.i73.i.i.preheader ] ; 2 uses
  %.sroa.10.022.i.i.i.i = phi i64 [ %i.gn, %bb.dc ], [ %.sroa.10.022.i.i.i.i.ph, %.lr.ph.i.i73.i.i.preheader ]
  %i.gm = icmp eq ptr %.sroa.015.024.i.i.i.i, %i.fz
  br i1 %i.gm, label %.loopexit.i, label %bb.dc

bb.dc:                                            ; preds = %.lr.ph.i.i73.i.i
  %i.gn = add nsw i64 %.sroa.10.022.i.i.i.i, -1   ; 2 uses
  %i.go = add nuw nsw i64 %.sroa.7.023.i.i.i.i, 1
  %i.gp = getelementptr inbounds nuw i8, ptr %.sroa.015.024.i.i.i.i, i64 4
  %.val14.i.i.i.i = load i32, ptr %.sroa.015.024.i.i.i.i, align 4, !alias.scope !36695, !noalias !36697, !noundef !28
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %i.fx, i64 %.sroa.7.023.i.i.i.i
  store i32 %.val14.i.i.i.i, ptr %i.gq, align 4, !noalias !36698
  %i.gr = icmp eq i64 %i.gn, 0
  br i1 %i.gr, label %.loopexit.i, label %.lr.ph.i.i73.i.i, !llvm.loop !36618

bb.dd:                                            ; preds = %bb.db
  %i.gs = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gt = load i8, ptr %i.r, align 8, !range !45, !alias.scope !36699, !noalias !36629, !noundef !28
  %i.gu = icmp eq i8 %i.gt, 6
  br i1 %i.gu, label %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h79d9528608d63f86E.exit.i.i", label %bb.de

bb.de:                                            ; preds = %bb.dd
  invoke fastcc void @"_ZN4core3ptr45drop_in_place$LT$serde_json..value..Value$GT$17hd30bb28c59a03f14E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %i.r)
          to label %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h79d9528608d63f86E.exit.i.i" unwind label %bb.df, !noalias !36631

bb.df:                                            ; preds = %bb.de
  %i.gv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body25.i

.body25.i:                                        ; preds = %bb.df, %bb.cf, %.body.i23.i
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #40, !noalias !36631
  unreachable

.loopexit.i:                                      ; preds = %bb.dc, %.lr.ph.i.i73.i.i, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hf5149a4291ac7aa1E.exit.thread.i.i75.i.i", %bb.cu
  %.sroa.59.sroa.4.0.i.i = phi i64 [ undef, %bb.cu ], [ 0, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hf5149a4291ac7aa1E.exit.thread.i.i75.i.i" ], [ %.val40.i.i, %.lr.ph.i.i73.i.i ], [ %.val40.i.i, %bb.dc ]
  %.sroa.59.sroa.0.0.i.i = phi ptr [ undef, %bb.cu ], [ inttoptr (i64 4 to ptr), %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hf5149a4291ac7aa1E.exit.thread.i.i75.i.i" ], [ %i.fx, %.lr.ph.i.i73.i.i ], [ %i.fx, %bb.dc ]
  %.sroa.07.0.i.i = phi i64 [ -9223372036854775808, %bb.cu ], [ 0, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hf5149a4291ac7aa1E.exit.thread.i.i75.i.i" ], [ %.val40.i.i, %.lr.ph.i.i73.i.i ], [ %.val40.i.i, %bb.dc ]
  %i.gw = trunc nuw i32 %i.ca to i1
  %.sroa.56.0.i.i = select i1 %i.gw, i32 %i.cc, i32 undef
  %i.gx = trunc nuw i32 %i.bw to i1
  %.sroa.54.0.i.i = select i1 %i.gx, i32 %i.by, i32 undef
  %i.gy = trunc nuw i32 %i.ar to i1
  %.sroa.5.0.i.i = select i1 %i.gy, i32 %i.at, i32 undef
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.065.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.065.i, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false), !noalias !36700
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.2486.sroa.6.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2486.sroa.6.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10118.i, i64 24, i1 false), !noalias !36700
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3193.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.3193.i, ptr noundef nonnull align 8 dereferenceable(32) %i.r, i64 32, i1 false), !noalias !36700
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !36629
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10118.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !36629
  %i.gz = getelementptr inbounds nuw [464 x i8], ptr %i.w, i64 %.sroa.7.0704.i ; 55 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gz, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.065.i, i64 24, i1 false), !noalias !36627
  %.sroa.466.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gz, i64 24
  store i64 %.sroa.0.0123.i.i, ptr %.sroa.466.0..sroa_idx.i, align 8, !noalias !36627
  %.sroa.567.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gz, i64 32
  store ptr %.sroa.6.0.i.i, ptr %.sroa.567.0..sroa_idx.i, align 8, !noalias !36627
  %.sroa.668.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gz, i64 40
  store i64 %.sroa.7.0.i.i, ptr %.sroa.668.0..sroa_idx.i, align 8, !noalias !36627
  %.sroa.769.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gz, i64 48
  store i64 %.sroa.083.0.i.i, ptr %.sroa.769.0..sroa_idx.i, align 8, !noalias !36627
  %.sroa.870.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gz, i64 56
  store ptr %.sroa.685.0.i.i, ptr %.sroa.870.0..sroa_idx.i, align 8, !noalias !36627
  %.sroa.971.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gz, i64 64
  store i64 %.sroa.788.0.i.i, ptr %.sroa.971.0..sroa_idx.i, align 8, !noalias !36627
  %.sroa.1072.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gz, i64 72
  store i64 %.sroa.091.0.i.i, ptr %.sroa.1072.0..sroa_idx.i, align 8, !noalias !36627
  %.sroa.1173.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gz, i64 80
  store ptr %.sroa.693.0.i.i, ptr %.sroa.1173.0..sroa_idx.i, align 8, !noalias !36627
  %.sroa.1274.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gz, i64 88
  store i64 %.sroa.796.0.i.i, ptr %.sroa.1274.0..sroa_idx.i, align 8, !noalias !36627
  %.sroa.1375.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gz, i64 96
  store i64 %.sroa.099.0.i.i, ptr %.sroa.1375.0..sroa_idx.i, align 8, !noalias !36627
  %.sroa.1476.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gz, i64 104
  store ptr %.sroa.6101.0.i.i, ptr %.sroa.1476.0..sroa_idx.i, align 8, !noalias !36627
  %.sroa.1577.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gz, i64 112
  store i64 %.sroa.7104.0.i.i, ptr %.sroa.1577.0..sroa_idx.i, align 8, !noalias !36627
  %.sroa.1678.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gz, i64 120
  store i64 %.sroa.0122.0.i, ptr %.sroa.1678.0..sroa_idx.i, align 8, !noalias !36627
  %.sroa.1678.sroa.4.0..sroa.1678.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gz, i64 128
  store ptr %.sroa.6124.0.i, ptr %.sroa.1678.sroa.4.0..sroa.1678.0..sroa_idx.sroa_idx.i, align 8, !noalias !36627
  %.sroa.1678.sroa.5.0..sroa.1678.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gz, i64 136
  store i64 %.sroa.7126.0.i, ptr %.sroa.1678.sroa.5.0..sroa.1678.0..sroa_idx.sroa_idx.i, align 8, !noalias !36627
  %.sroa.1779.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gz, i64 144
  store i64 %.sroa.0128.0.i, ptr %.sroa.1779.0..sroa_idx.i, align 8, !noalias !36627
  %.sroa.1779.sroa.4.0..sroa.1779.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gz, i64 152
  store ptr %.sroa.6130.0.i, ptr %.sroa.1779.sroa.4.0..sroa.1779.0..sroa_idx.sroa_idx.i, align 8, !noalias !36627
  %.sroa.1779.sroa.5.0..sroa.1779.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gz, i64 160
  store i64 %.sroa.7132.0.i, ptr %.sroa.1779.sroa.5.0..sroa.1779.0..sroa_idx.sroa_idx.i, align 8, !noalias !36627
  %.sroa.1779.sroa.6.0..sroa.1779.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gz, i64 168
  store i64 %.sroa.7134.0.i, ptr %.sroa.1779.sroa.6.0..sroa.1779.0..sroa_idx.sroa_idx.i, align 8, !noalias !36627
  %.sroa.1779.sroa.7.0..sroa.1779.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gz, i64 176
  store ptr %.sroa.8136.0.i, ptr %.sroa.1779.sroa.7.0..sroa.1779.0..sroa_idx.sroa_idx.i, align 8, !noalias !36627
  %.sroa.1779.sroa.8.0..sroa.1779.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gz, i64 184
  store i64 %.sroa.9138.0.i, ptr %.sroa.1779.sroa.8.0..sroa.1779.0..sroa_idx.sroa_idx.i, align 8, !noalias !36627
  %.sroa.1779.sroa.9.0..sroa.1779.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gz, i64 192
  store i64 %.sroa.9140.0.i, ptr %.sroa.1779.sroa.9.0..sroa.1779.0..sroa_idx.sroa_idx.i, align 8, !noalias !36627
  %.sroa.1779.sroa.10.0..sroa.1779.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gz, i64 200
  store ptr %.sroa.13141.0.i, ptr %.sroa.1779.sroa.10.0..sroa.1779.0..sroa_idx.sroa_idx.i, align 8, !noalias !36627
  %.sroa.1779.sroa.11.0..sroa.1779.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gz, i64 208
  store i64 %.sroa.15142.0.i, ptr %.sroa.1779.sroa.11.0..sroa.1779.0..sroa_idx.sroa_idx.i, align 8, !noalias !36627
  %.sroa.1880.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gz, i64 216
  store i64 %.sroa.0143.0.i, ptr %.sroa.1880.0..sroa_idx.i, align 8, !noalias !36627
  %.sroa.1880.sroa.4.0..sroa.1880.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gz, i64 224
  store ptr %.sroa.6145.0.i, ptr %.sroa.1880.sroa.4.0..sroa.1880.0..sroa_idx.sroa_idx.i, align 8, !noalias !36627
  %.sroa.1880.sroa.5.0..sroa.1880.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gz, i64 232
  store i64 %.sroa.7147.0.i, ptr %.sroa.1880.sroa.5.0..sroa.1880.0..sroa_idx.sroa_idx.i, align 8, !noalias !36627
  %.sroa.1981.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gz, i64 240
  store i64 %.sroa.07.0.i.i, ptr %.sroa.1981.0..sroa_idx.i, align 8, !noalias !36627
  %.sroa.2082.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gz, i64 248
  store ptr %.sroa.59.sroa.0.0.i.i, ptr %.sroa.2082.0..sroa_idx.i, align 8, !noalias !36627
  %.sroa.2183.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gz, i64 256
  store i64 %.sroa.59.sroa.4.0.i.i, ptr %.sroa.2183.0..sroa_idx.i, align 8, !noalias !36627
  %.sroa.2284.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gz, i64 264
  store i64 %.sroa.097.0.i, ptr %.sroa.2284.0..sroa_idx.i, align 8, !noalias !36627
  %.sroa.2284.sroa.4.0..sroa.2284.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gz, i64 272
  store ptr %.sroa.698.0.i, ptr %.sroa.2284.sroa.4.0..sroa.2284.0..sroa_idx.sroa_idx.i, align 8, !noalias !36627
  %.sroa.2284.sroa.5.0..sroa.2284.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gz, i64 280
  store i64 %.sroa.899.0.i, ptr %.sroa.2284.sroa.5.0..sroa.2284.0..sroa_idx.sroa_idx.i, align 8, !noalias !36627
  %.sroa.2284.sroa.6.0..sroa.2284.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gz, i64 288
  store i64 %.sroa.9100.0.i, ptr %.sroa.2284.sroa.6.0..sroa.2284.0..sroa_idx.sroa_idx.i, align 8, !noalias !36627
  %.sroa.2284.sroa.7.0..sroa.2284.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gz, i64 296
  store ptr %.sroa.11101.0.i, ptr %.sroa.2284.sroa.7.0..sroa.2284.0..sroa_idx.sroa_idx.i, align 8, !noalias !36627
  %.sroa.2284.sroa.8.0..sroa.2284.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gz, i64 304
  store i64 %.sroa.13102.0.i, ptr %.sroa.2284.sroa.8.0..sroa.2284.0..sroa_idx.sroa_idx.i, align 8, !noalias !36627
  %.sroa.2385.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gz, i64 312
  store i64 %.sroa.0104.0.i, ptr %.sroa.2385.0..sroa_idx.i, align 8, !noalias !36627
  %.sroa.2385.sroa.4.0..sroa.2385.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gz, i64 320
  store i64 %.sroa.6106.0.i, ptr %.sroa.2385.sroa.4.0..sroa.2385.0..sroa_idx.sroa_idx.i, align 8, !noalias !36627
  %.sroa.2385.sroa.5.0..sroa.2385.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gz, i64 328
  store ptr %.sroa.8108.0.i, ptr %.sroa.2385.sroa.5.0..sroa.2385.0..sroa_idx.sroa_idx.i, align 8, !noalias !36627
  %.sroa.2385.sroa.6.0..sroa.2385.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gz, i64 336
  store i64 %.sroa.9110.0.i, ptr %.sroa.2385.sroa.6.0..sroa.2385.0..sroa_idx.sroa_idx.i, align 8, !noalias !36627
  %.sroa.2486.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gz, i64 344
  store i64 %.sroa.0115.0.i, ptr %.sroa.2486.0..sroa_idx.i, align 8, !noalias !36627
  %.sroa.2486.sroa.4.0..sroa.2486.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gz, i64 352
  store i64 %.sroa.6116.0.i, ptr %.sroa.2486.sroa.4.0..sroa.2486.0..sroa_idx.sroa_idx.i, align 8, !noalias !36627
  %.sroa.2486.sroa.5.0..sroa.2486.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gz, i64 360
  store ptr %.sroa.9117.0.i, ptr %.sroa.2486.sroa.5.0..sroa.2486.0..sroa_idx.sroa_idx.i, align 8, !noalias !36627
  %.sroa.2486.sroa.6.0..sroa.2486.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gz, i64 368
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2486.sroa.6.0..sroa.2486.0..sroa_idx.sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2486.sroa.6.i, i64 24, i1 false), !noalias !36627
  %.sroa.2486.sroa.7.0..sroa.2486.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gz, i64 392
  store i64 %.sroa.10119.0.i, ptr %.sroa.2486.sroa.7.0..sroa.2486.0..sroa_idx.sroa_idx.i, align 8, !noalias !36627
  %.sroa.2587.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gz, i64 400
  store i32 %i.ar, ptr %.sroa.2587.0..sroa_idx.i, align 8, !noalias !36627
  %.sroa.2688.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gz, i64 404
  store i32 %.sroa.5.0.i.i, ptr %.sroa.2688.0..sroa_idx.i, align 4, !noalias !36627
  %.sroa.2789.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gz, i64 408
  store i32 %i.bw, ptr %.sroa.2789.0..sroa_idx.i, align 8, !noalias !36627
  %.sroa.2890.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gz, i64 412
  store i32 %.sroa.54.0.i.i, ptr %.sroa.2890.0..sroa_idx.i, align 4, !noalias !36627
  %.sroa.2991.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gz, i64 416
  store i32 %i.ca, ptr %.sroa.2991.0..sroa_idx.i, align 8, !noalias !36627
  %.sroa.3092.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gz, i64 420
  store i32 %.sroa.56.0.i.i, ptr %.sroa.3092.0..sroa_idx.i, align 4, !noalias !36627
  %.sroa.3193.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gz, i64 424
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.3193.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.3193.i, i64 32, i1 false), !noalias !36627
  %.sroa.3294.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gz, i64 456
  store i8 %i.bg, ptr %.sroa.3294.0..sroa_idx.i, align 8, !noalias !36627
  %.sroa.3395.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gz, i64 457
  store i8 %i.bi, ptr %.sroa.3395.0..sroa_idx.i, align 1, !noalias !36627
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.065.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.2486.sroa.6.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3193.i)
  %i.ha = icmp eq i64 %i.ah, 0
  br i1 %i.ha, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17hd5130cc855bc4c46E.exit", label %bb.d

bb.dg:                                            ; preds = %bb.n, %.body.i.i, %.loopexit160.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i.i, %.body.i.i ], [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i.i, %bb.n ], [ %lpad.loopexit.i, %.loopexit160.i ]
  %i.hb = icmp eq i64 %.sroa.7.0704.i, 0
  br i1 %i.hb, label %._crit_edge, label %.lr.ph2031

bb.dh:                                            ; preds = %.lr.ph2031
  %i.hc = icmp eq i64 %i.he, %.sroa.7.0704.i
  br i1 %i.hc, label %._crit_edge, label %.lr.ph2031

.lr.ph2031:                                       ; preds = %bb.dg, %bb.dh
  %.sroa.0.0.i.i.i2030 = phi i64 [ %i.he, %bb.dh ], [ 0, %bb.dg ] ; 2 uses
  %i.hd = getelementptr inbounds nuw [464 x i8], ptr %i.w, i64 %.sroa.0.0.i.i.i2030
  %i.he = add i64 %.sroa.0.0.i.i.i2030, 1         ; 4 uses
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$lsp_types..completion..CompletionItem$GT$17h72d57bb2a92e3f4dE"(ptr noalias noundef readonly align 8 dereferenceable(464) %i.hd)
          to label %bb.dh unwind label %bb.dj, !noalias !36701

bb.di:                                            ; preds = %.lr.ph2034
  %i.hf = add i64 %.sroa.0.1.i.i.i2032, 1         ; 2 uses
  %i.hg = icmp eq i64 %i.hf, %.sroa.7.0704.i
  br i1 %i.hg, label %"_ZN4core3ptr88drop_in_place$LT$alloc..raw_vec..RawVec$LT$lsp_types..completion..CompletionItem$GT$$GT$17h55280cb01fe317afE.exit.i", label %.lr.ph2034

bb.dj:                                            ; preds = %.lr.ph2031
  %i.hh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  %i.hi = icmp eq i64 %i.he, %.sroa.7.0704.i
  br i1 %i.hi, label %"_ZN4core3ptr88drop_in_place$LT$alloc..raw_vec..RawVec$LT$lsp_types..completion..CompletionItem$GT$$GT$17h55280cb01fe317afE.exit.i", label %.lr.ph2034
end_hunk_5
begin_hunk_6_@"_ZN70_$LT$lsp_harness..jsonrpc..Server$u20$as$u20$core..ops..drop..Drop$GT$4drop17h39071a175fa167e9E":bb.a
          cleanup                                 ; 2 uses
  %i.im = icmp eq i64 %.sroa.06.0.copyload.i.i.i, 0
  br i1 %i.im, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit61.i.i.i", label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7.0.copyload.i.i.i, i64 noundef %.sroa.06.0.copyload.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !37387
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit61.i.i.i"

bb.cf:                                            ; preds = %bb.cc
  %.not.i.i.i = icmp eq ptr %i.ik, null
  br i1 %.not.i.i.i, label %bb.ch, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.in = invoke fastcc noundef nonnull ptr @"_ZN6anyhow5error72_$LT$impl$u20$core..convert..From$LT$E$GT$$u20$for$u20$anyhow..Error$GT$4from17h8072883e216f0184E"(ptr noundef nonnull %i.ik)
          to label %bb.cp unwind label %bb.cd, !noalias !37322 ; 2 uses

bb.ch:                                            ; preds = %bb.cf
  %i.io = icmp eq i64 %.sroa.06.0.copyload.i.i.i, 0
  br i1 %i.io, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit65.i.i.i", label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7.0.copyload.i.i.i, i64 noundef %.sroa.06.0.copyload.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !37388
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit65.i.i.i"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit65.i.i.i": ; preds = %bb.ci, %bb.ch
  %i.ip = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !37322, !nonnull !28, !noundef !28
  %i.iq = load i64, ptr %.sroa.5.0..sroa_idx.i.i10.i, align 8, !noalias !37322, !noundef !28
  %i.ir = invoke noundef ptr %i.ij(ptr noundef nonnull align 1 %.val.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ip, i64 noundef %i.iq)
          to label %bb.cj unwind label %bb.bx, !noalias !37322 ; 2 uses

bb.cj:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit65.i.i.i"
  %.not48.i.i.i = icmp eq ptr %i.ir, null
  br i1 %.not48.i.i.i, label %bb.ck, label %.invoke.i.i.i

bb.ck:                                            ; preds = %bb.cj
  %i.is = getelementptr inbounds nuw i8, ptr %.val9.i, i64 48
  %i.it = load ptr, ptr %i.is, align 8, !invariant.load !28, !noalias !37322, !nonnull !28
  %i.iu = invoke noundef ptr %i.it(ptr noundef nonnull align 1 %.val.i)
          to label %bb.cl unwind label %bb.bx, !noalias !37322 ; 2 uses

bb.cl:                                            ; preds = %bb.ck
  %.not50.i.i.i = icmp eq ptr %i.iu, null
  br i1 %.not50.i.i.i, label %bb.cm, label %.invoke.i.i.i

.invoke.i.i.i:                                    ; preds = %bb.cl, %bb.cj
  %i.iv = phi ptr [ %i.ir, %bb.cj ], [ %i.iu, %bb.cl ]
  %i.iw = invoke fastcc noundef nonnull ptr @"_ZN6anyhow5error72_$LT$impl$u20$core..convert..From$LT$E$GT$$u20$for$u20$anyhow..Error$GT$4from17h8072883e216f0184E"(ptr noundef nonnull %i.iv)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit77.i.i.i" unwind label %bb.bx, !noalias !37322

bb.cm:                                            ; preds = %bb.cl
  call void @llvm.experimental.noalias.scope.decl(metadata !37389)
  call void @llvm.experimental.noalias.scope.decl(metadata !37390)
  %.val.i.i66.i.i.i = load i64, ptr %i.k, align 8, !range !29, !alias.scope !37391, !noalias !37322, !noundef !28 ; 2 uses
  %i.ix = icmp eq i64 %.val.i.i66.i.i.i, 0
  br i1 %i.ix, label %bb.cr, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %.val1.i.i67.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !37391, !noalias !37322, !nonnull !28, !noundef !28
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i67.i.i.i, i64 noundef %.val.i.i66.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !37392
  br label %bb.cr

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit77.i.i.i": ; preds = %bb.cq, %bb.cp, %.invoke.i.i.i
  %.sroa.0.1.i.i.i = phi ptr [ %i.in, %bb.cp ], [ %i.iw, %.invoke.i.i.i ], [ %i.in, %bb.cq ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !37393)
  call void @llvm.experimental.noalias.scope.decl(metadata !37394)
  %.val.i.i70.i.i.i = load i64, ptr %i.k, align 8, !range !29, !alias.scope !37395, !noalias !37322, !noundef !28 ; 2 uses
  %i.iy = icmp eq i64 %.val.i.i70.i.i.i, 0
  br i1 %i.iy, label %_ZN11lsp_harness7jsonrpc6Server17send_notification17h2c76b1b73d065c99E.exit.thread.i, label %bb.co

bb.co:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit77.i.i.i"
  %.val1.i.i71.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !37395, !noalias !37322, !nonnull !28, !noundef !28
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i71.i.i.i, i64 noundef %.val.i.i70.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !37396
  br label %_ZN11lsp_harness7jsonrpc6Server17send_notification17h2c76b1b73d065c99E.exit.thread.i

bb.cp:                                            ; preds = %bb.cg
  %i.iz = icmp eq i64 %.sroa.06.0.copyload.i.i.i, 0
  br i1 %i.iz, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit77.i.i.i", label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7.0.copyload.i.i.i, i64 noundef %.sroa.06.0.copyload.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !37397
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit77.i.i.i"

_ZN11lsp_harness7jsonrpc6Server17send_notification17h2c76b1b73d065c99E.exit.thread.i: ; preds = %bb.co, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit77.i.i.i", %bb.bv
  %.sroa.0.0.i.i.ph.i = phi ptr [ %.sroa.0.1.i.i.i, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit77.i.i.i" ], [ %i.hv, %bb.bv ], [ %.sroa.0.1.i.i.i, %bb.co ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !37322
  br label %bb.ct

bb.cr:                                            ; preds = %bb.cn, %bb.cm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !37322
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !37226
  %i.ja = getelementptr inbounds nuw i8, ptr %0, i64 80
  call void @_ZN3std7process5Child4wait17hac923c975d932daeE(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.ad, ptr noalias noundef nonnull align 4 dereferenceable(28) %i.ja)
  %i.jb = load i32, ptr %i.ad, align 8, !range !51, !noalias !37226, !noundef !28
  %i.jc = trunc nuw i32 %i.jb to i1
  br i1 %i.jc, label %bb.cs, label %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h895319dd689b2473E.exit"

bb.cs:                                            ; preds = %bb.cr
  %i.jd = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.je = load ptr, ptr %i.jd, align 8, !noalias !37226, !nonnull !28, !noundef !28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !37226
  %i.jf = call fastcc noundef nonnull ptr @"_ZN6anyhow5error72_$LT$impl$u20$core..convert..From$LT$E$GT$$u20$for$u20$anyhow..Error$GT$4from17h8072883e216f0184E"(ptr noundef nonnull %i.je)
  br label %bb.ct

bb.ct:                                            ; preds = %_ZN11lsp_harness7jsonrpc6Server12send_request17ha68b3451b165e780E.exit.thread.i, %bb.cs, %_ZN11lsp_harness7jsonrpc6Server17send_notification17h2c76b1b73d065c99E.exit.thread.i
  %.sroa.0.0.i.ph = phi ptr [ %.sroa.0.0.i.i.ph.i, %_ZN11lsp_harness7jsonrpc6Server17send_notification17h2c76b1b73d065c99E.exit.thread.i ], [ %i.jf, %bb.cs ], [ %.sroa.0.1.i.ph.i, %_ZN11lsp_harness7jsonrpc6Server12send_request17ha68b3451b165e780E.exit.thread.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !37398
  store ptr %.sroa.0.0.i.ph, ptr %i.ae, align 8, !noalias !37398
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @843, i64 noundef 43, ptr noundef nonnull align 1 %i.ae, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @842, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1008) #42
          to label %bb.cv unwind label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.jg = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN6anyhow5error65_$LT$impl$u20$core..ops..drop..Drop$u20$for$u20$anyhow..Error$GT$4drop17hb615d6e29474b63bE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ae)
          to label %common.resume unwind label %bb.cw

bb.cv:                                            ; preds = %bb.ct
  unreachable

bb.cw:                                            ; preds = %bb.cu
  %i.jh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #40
  unreachable

"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h895319dd689b2473E.exit": ; preds = %bb.cr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !37226
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define internal fastcc void @"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17h6152ea0e6555cc6cE"(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef nonnull readonly align 1 captures(none) %1, i64 noundef %2) unnamed_addr #20 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !28
  %i.c = add i64 %i.b, %2
  store i64 %i.c, ptr %i.a, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !noundef !28 ; 4 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = sub i64 8, %i.e                          ; 3 uses
  %.sroa.0.0.i = tail call noundef i64 @llvm.umin.i64(i64 %i.g, i64 %2) ; 3 uses
  %i.h = icmp ugt i64 %.sroa.0.0.i, 3
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %.sroa.014.0.copyload.i = load i32, ptr %1, align 1, !alias.scope !37407
  %i.i = zext i32 %.sroa.014.0.copyload.i to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.011.0.i = phi i64 [ %i.i, %bb.c ], [ 0, %bb.b ] ; 2 uses
  %.sroa.0.0.i11 = phi i64 [ 4, %bb.c ], [ 0, %bb.b ] ; 5 uses
  %i.j = or disjoint i64 %.sroa.0.0.i11, 1
  %i.k = icmp ult i64 %i.j, %.sroa.0.0.i
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr i8, ptr %1, i64 %.sroa.0.0.i11
  %.sroa.015.0.copyload.i = load i16, ptr %i.l, align 1, !alias.scope !37407
  %i.m = zext i16 %.sroa.015.0.copyload.i to i64
  %i.n = shl nuw nsw i64 %.sroa.0.0.i11, 3
  %i.o = shl nuw nsw i64 %i.m, %i.n
  %i.p = or i64 %i.o, %.sroa.011.0.i
  %i.q = or disjoint i64 %.sroa.0.0.i11, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.011.1.i = phi i64 [ %i.p, %bb.e ], [ %.sroa.011.0.i, %bb.d ] ; 2 uses
  %.sroa.0.1.i = phi i64 [ %i.q, %bb.e ], [ %.sroa.0.0.i11, %bb.d ] ; 3 uses
  %i.r = icmp ult i64 %.sroa.0.1.i, %.sroa.0.0.i
  br i1 %i.r, label %bb.g, label %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.1.i
  %i.t = load i8, ptr %i.s, align 1, !alias.scope !37407, !noundef !28
  %i.u = zext i8 %i.t to i64
  %i.v = shl nuw nsw i64 %.sroa.0.1.i, 3
  %i.w = shl nuw nsw i64 %i.u, %i.v
  %i.x = or i64 %i.w, %.sroa.011.1.i
  br label %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit

_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit: ; preds = %bb.f, %bb.g
  %.sroa.011.2.i = phi i64 [ %i.x, %bb.g ], [ %.sroa.011.1.i, %bb.f ]
  %i.y = shl i64 %i.e, 3
  %i.z = and i64 %i.y, 56
  %i.aa = shl i64 %.sroa.011.2.i, %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !noundef !28
  %i.ad = or i64 %i.ac, %i.aa                     ; 3 uses
  store i64 %i.ad, ptr %i.ab, align 8
  %i.ae = icmp ult i64 %2, %i.g
  br i1 %i.ae, label %bb.j, label %bb.i

bb.h:                                             ; preds = %bb.a, %bb.i
  %.sroa.0.0 = phi i64 [ 0, %bb.a ], [ %i.g, %bb.i ] ; 4 uses
  %i.af = sub i64 %2, %.sroa.0.0                  ; 2 uses
  %3 = and i64 %i.af, 7                           ; 4 uses
  %i.ag = and i64 %i.af, -8                       ; 2 uses
  %i.ah = icmp ult i64 %.sroa.0.0, %i.ag
  br i1 %i.ah, label %.lr.ph, label %bb.k

.lr.ph:                                           ; preds = %bb.h
  %.promoted = load i64, ptr %0, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.promoted21 = load i64, ptr %i.ai, align 8
  %.promoted22 = load i64, ptr %i.aj, align 8, !alias.scope !37408
  %.promoted24 = load i64, ptr %i.ak, align 8, !alias.scope !37408
  br label %bb.q

bb.i:                                             ; preds = %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.am = load i64, ptr %i.al, align 8, !noundef !28
  %i.an = xor i64 %i.am, %i.ad                    ; 3 uses
  %i.ao = load i64, ptr %0, align 8, !alias.scope !37409, !noundef !28
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.aq = load i64, ptr %i.ap, align 8, !alias.scope !37409, !noundef !28 ; 3 uses
  %i.ar = add i64 %i.aq, %i.ao                    ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.at = load i64, ptr %i.as, align 8, !alias.scope !37409, !noundef !28
  %i.au = add i64 %i.at, %i.an                    ; 2 uses
  %i.av = tail call i64 @llvm.fshl.i64(i64 %i.aq, i64 %i.aq, i64 13)
  %i.aw = xor i64 %i.av, %i.ar                    ; 3 uses
  %i.ax = tail call i64 @llvm.fshl.i64(i64 %i.an, i64 %i.an, i64 16)
  %i.ay = xor i64 %i.au, %i.ax                    ; 3 uses
  %i.az = tail call i64 @llvm.fshl.i64(i64 %i.ar, i64 %i.ar, i64 32)
  %i.ba = add i64 %i.au, %i.aw                    ; 3 uses
  %i.bb = add i64 %i.ay, %i.az                    ; 2 uses
  %i.bc = tail call i64 @llvm.fshl.i64(i64 %i.aw, i64 %i.aw, i64 17)
  %i.bd = xor i64 %i.ba, %i.bc
  store i64 %i.bd, ptr %i.ap, align 8, !alias.scope !37409
  %i.be = tail call i64 @llvm.fshl.i64(i64 %i.ay, i64 %i.ay, i64 21)
  %i.bf = xor i64 %i.be, %i.bb
  store i64 %i.bf, ptr %i.al, align 8, !alias.scope !37409
  %i.bg = tail call i64 @llvm.fshl.i64(i64 %i.ba, i64 %i.ba, i64 32)
  store i64 %i.bg, ptr %i.as, align 8, !alias.scope !37409
  %i.bh = xor i64 %i.bb, %i.ad
  store i64 %i.bh, ptr %0, align 8
  br label %bb.h

bb.j:                                             ; preds = %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit
  %i.bi = add i64 %i.e, %2
  br label %bb.r

._crit_edge:                                      ; preds = %bb.q
  store i64 %i.cx, ptr %i.ai, align 8
  store i64 %i.cv, ptr %i.aj, align 8, !alias.scope !37408
  store i64 %i.cy, ptr %i.ak, align 8, !alias.scope !37408
  store i64 %i.cz, ptr %0, align 8
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge, %bb.h
  %.sroa.04.0.lcssa = phi i64 [ %i.da, %._crit_edge ], [ %.sroa.0.0, %bb.h ] ; 3 uses
  %i.bj = icmp samesign ugt i64 %3, 3
  br i1 %i.bj, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.04.0.lcssa
  %.sroa.014.0.copyload.i18 = load i32, ptr %i.bk, align 1, !alias.scope !37410
  %i.bl = zext i32 %.sroa.014.0.copyload.i18 to i64
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.sroa.011.0.i12 = phi i64 [ %i.bl, %bb.l ], [ 0, %bb.k ] ; 2 uses
  %.sroa.0.0.i13 = phi i64 [ 4, %bb.l ], [ 0, %bb.k ] ; 5 uses
  %i.bm = or disjoint i64 %.sroa.0.0.i13, 1
  %i.bn = icmp samesign ult i64 %i.bm, %3
  br i1 %i.bn, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bo = getelementptr i8, ptr %1, i64 %.sroa.04.0.lcssa
  %i.bp = getelementptr i8, ptr %i.bo, i64 %.sroa.0.0.i13
  %.sroa.015.0.copyload.i17 = load i16, ptr %i.bp, align 1, !alias.scope !37410
  %i.bq = zext i16 %.sroa.015.0.copyload.i17 to i64
  %i.br = shl nuw nsw i64 %.sroa.0.0.i13, 3
  %i.bs = shl nuw nsw i64 %i.bq, %i.br
  %i.bt = or i64 %i.bs, %.sroa.011.0.i12
  %i.bu = or disjoint i64 %.sroa.0.0.i13, 2
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.sroa.011.1.i14 = phi i64 [ %i.bt, %bb.n ], [ %.sroa.011.0.i12, %bb.m ] ; 2 uses
  %.sroa.0.1.i15 = phi i64 [ %i.bu, %bb.n ], [ %.sroa.0.0.i13, %bb.m ] ; 3 uses
  %i.bv = icmp samesign ult i64 %.sroa.0.1.i15, %3
  br i1 %i.bv, label %bb.p, label %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit19

bb.p:                                             ; preds = %bb.o
  %i.bw = add i64 %.sroa.0.1.i15, %.sroa.04.0.lcssa ; 2 uses
  %i.bx = icmp ult i64 %i.bw, %2
  tail call void @llvm.assume(i1 %i.bx)
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 %i.bw
  %i.bz = load i8, ptr %i.by, align 1, !alias.scope !37410, !noundef !28
  %i.ca = zext i8 %i.bz to i64
  %i.cb = shl nuw nsw i64 %.sroa.0.1.i15, 3
  %i.cc = shl nuw nsw i64 %i.ca, %i.cb
  %i.cd = or i64 %i.cc, %.sroa.011.1.i14
  br label %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit19

_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit19: ; preds = %bb.o, %bb.p
  %.sroa.011.2.i16 = phi i64 [ %i.cd, %bb.p ], [ %.sroa.011.1.i14, %bb.o ]
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %.sroa.011.2.i16, ptr %i.ce, align 8
  br label %bb.r

bb.q:                                             ; preds = %.lr.ph, %bb.q
  %i.cf = phi i64 [ %.promoted24, %.lr.ph ], [ %i.cy, %bb.q ]
  %i.cg = phi i64 [ %.promoted22, %.lr.ph ], [ %i.cv, %bb.q ] ; 3 uses
  %i.ch = phi i64 [ %.promoted21, %.lr.ph ], [ %i.cx, %bb.q ]
  %.sroa.04.020 = phi i64 [ %.sroa.0.0, %.lr.ph ], [ %i.da, %bb.q ] ; 2 uses
  %i.ci = phi i64 [ %.promoted, %.lr.ph ], [ %i.cz, %bb.q ]
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.04.020
  %.sroa.08.0.copyload = load i64, ptr %i.cj, align 1 ; 2 uses
  %i.ck = xor i64 %i.ch, %.sroa.08.0.copyload     ; 3 uses
  %i.cl = add i64 %i.cg, %i.ci                    ; 3 uses
  %i.cm = add i64 %i.cf, %i.ck                    ; 2 uses
  %i.cn = tail call i64 @llvm.fshl.i64(i64 %i.cg, i64 %i.cg, i64 13)
  %i.co = xor i64 %i.cn, %i.cl                    ; 3 uses
  %i.cp = tail call i64 @llvm.fshl.i64(i64 %i.ck, i64 %i.ck, i64 16)
  %i.cq = xor i64 %i.cm, %i.cp                    ; 3 uses
  %i.cr = tail call i64 @llvm.fshl.i64(i64 %i.cl, i64 %i.cl, i64 32)
  %i.cs = add i64 %i.cm, %i.co                    ; 3 uses
  %i.ct = add i64 %i.cq, %i.cr                    ; 2 uses
  %i.cu = tail call i64 @llvm.fshl.i64(i64 %i.co, i64 %i.co, i64 17)
  %i.cv = xor i64 %i.cs, %i.cu                    ; 2 uses
  %i.cw = tail call i64 @llvm.fshl.i64(i64 %i.cq, i64 %i.cq, i64 21)
  %i.cx = xor i64 %i.cw, %i.ct                    ; 2 uses
  %i.cy = tail call i64 @llvm.fshl.i64(i64 %i.cs, i64 %i.cs, i64 32) ; 2 uses
  %i.cz = xor i64 %i.ct, %.sroa.08.0.copyload     ; 2 uses
  %i.da = add nuw i64 %.sroa.04.020, 8            ; 3 uses
  %i.db = icmp ult i64 %i.da, %i.ag
  br i1 %i.db, label %bb.q, label %._crit_edge

bb.r:                                             ; preds = %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit19, %bb.j
  %storemerge = phi i64 [ %i.bi, %bb.j ], [ %3, %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit19 ]
  store i64 %storemerge, ptr %i.d, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @"_ZN72_$LT$anyhow..error..ErrorImpl$LT$E$GT$$u20$as$u20$core..error..Error$GT$6source17h14299f11805ad853E"(ptr noundef nonnull align 8 %0) unnamed_addr #1 {
bb.a:
  %i.a = tail call { ptr, ptr } @_ZN6anyhow5error9ErrorImpl5error17had6e87419c4c0405E(ptr noundef nonnull %0) ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %i.c = extractvalue { ptr, ptr } %i.a, 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !28, !nonnull !28
  %i.f = tail call { ptr, ptr } %i.e(ptr noundef align 1 %i.b)
  ret { ptr, ptr } %i.f
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @"_ZN72_$LT$anyhow..error..ErrorImpl$LT$E$GT$$u20$as$u20$core..error..Error$GT$6source17h27f7b3d64fb384c7E"(ptr noundef nonnull align 8 %0) unnamed_addr #1 {
bb.a:
  %i.a = tail call { ptr, ptr } @_ZN6anyhow5error9ErrorImpl5error17had6e87419c4c0405E(ptr noundef nonnull %0) ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %i.c = extractvalue { ptr, ptr } %i.a, 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !28, !nonnull !28
  %i.f = tail call { ptr, ptr } %i.e(ptr noundef align 1 %i.b)
  ret { ptr, ptr } %i.f
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @"_ZN72_$LT$anyhow..error..ErrorImpl$LT$E$GT$$u20$as$u20$core..error..Error$GT$6source17h2c578d765276f3d5E"(ptr noundef nonnull align 8 %0) unnamed_addr #1 {
bb.a:
  %i.a = tail call { ptr, ptr } @_ZN6anyhow5error9ErrorImpl5error17had6e87419c4c0405E(ptr noundef nonnull %0) ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %i.c = extractvalue { ptr, ptr } %i.a, 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !28, !nonnull !28
  %i.f = tail call { ptr, ptr } %i.e(ptr noundef align 1 %i.b)
  ret { ptr, ptr } %i.f
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @"_ZN72_$LT$anyhow..error..ErrorImpl$LT$E$GT$$u20$as$u20$core..error..Error$GT$6source17hceec3778f22065c7E"(ptr noundef nonnull align 8 %0) unnamed_addr #1 {
bb.a:
  %i.a = tail call { ptr, ptr } @_ZN6anyhow5error9ErrorImpl5error17had6e87419c4c0405E(ptr noundef nonnull %0) ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %i.c = extractvalue { ptr, ptr } %i.a, 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !28, !nonnull !28
  %i.f = tail call { ptr, ptr } %i.e(ptr noundef align 1 %i.b)
  ret { ptr, ptr } %i.f
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @"_ZN72_$LT$anyhow..error..ErrorImpl$LT$E$GT$$u20$as$u20$core..error..Error$GT$6source17hee2c71a383ed0e9fE"(ptr noundef nonnull align 8 %0) unnamed_addr #1 {
bb.a:
  %i.a = tail call { ptr, ptr } @_ZN6anyhow5error9ErrorImpl5error17had6e87419c4c0405E(ptr noundef nonnull %0) ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %i.c = extractvalue { ptr, ptr } %i.a, 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !28, !nonnull !28
  %i.f = tail call { ptr, ptr } %i.e(ptr noundef align 1 %i.b)
  ret { ptr, ptr } %i.f
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @"_ZN72_$LT$anyhow..error..ErrorImpl$LT$E$GT$$u20$as$u20$core..error..Error$GT$6source17hf9e7b5b46e81c71dE"(ptr noundef nonnull align 8 %0) unnamed_addr #1 {
bb.a:
  %i.a = tail call { ptr, ptr } @_ZN6anyhow5error9ErrorImpl5error17had6e87419c4c0405E(ptr noundef nonnull %0) ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %i.c = extractvalue { ptr, ptr } %i.a, 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !28, !nonnull !28
  %i.f = tail call { ptr, ptr } %i.e(ptr noundef align 1 %i.b)
  ret { ptr, ptr } %i.f
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN72_$LT$anyhow..error..ErrorImpl$LT$E$GT$$u20$as$u20$core..fmt..Display$GT$3fmt17h2ca96cb2e474b8e3E"(ptr noundef nonnull align 8 %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call { ptr, ptr } @_ZN6anyhow5error9ErrorImpl5error17had6e87419c4c0405E(ptr noundef nonnull %0) ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %i.c = extractvalue { ptr, ptr } %i.a, 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !28, !nonnull !28
  %i.f = tail call noundef zeroext i1 %i.e(ptr noundef align 1 %i.b, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.f
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN72_$LT$anyhow..error..ErrorImpl$LT$E$GT$$u20$as$u20$core..fmt..Display$GT$3fmt17h3625f8be0ce10c53E"(ptr noundef nonnull align 8 %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call { ptr, ptr } @_ZN6anyhow5error9ErrorImpl5error17had6e87419c4c0405E(ptr noundef nonnull %0) ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %i.c = extractvalue { ptr, ptr } %i.a, 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !28, !nonnull !28
  %i.f = tail call noundef zeroext i1 %i.e(ptr noundef align 1 %i.b, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.f
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN72_$LT$anyhow..error..ErrorImpl$LT$E$GT$$u20$as$u20$core..fmt..Display$GT$3fmt17h372738295f967d93E"(ptr noundef nonnull align 8 %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call { ptr, ptr } @_ZN6anyhow5error9ErrorImpl5error17had6e87419c4c0405E(ptr noundef nonnull %0) ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %i.c = extractvalue { ptr, ptr } %i.a, 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !28, !nonnull !28
  %i.f = tail call noundef zeroext i1 %i.e(ptr noundef align 1 %i.b, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.f
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN72_$LT$anyhow..error..ErrorImpl$LT$E$GT$$u20$as$u20$core..fmt..Display$GT$3fmt17h68946854d25f44a6E"(ptr noundef nonnull align 8 %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call { ptr, ptr } @_ZN6anyhow5error9ErrorImpl5error17had6e87419c4c0405E(ptr noundef nonnull %0) ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %i.c = extractvalue { ptr, ptr } %i.a, 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
end_hunk_6
begin_hunk_7_@"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h0e8f3ff10c98417bE":bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58492)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58493)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58494)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58495)
  %i.f = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 16 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !58496, !noalias !58497, !noundef !28 ; 3 uses
  %i.h = load i64, ptr %.val.i.i, align 8, !range !29, !alias.scope !58496, !noalias !58497, !noundef !28
  %i.i = icmp eq i64 %i.h, %i.g
  br i1 %i.i, label %bb.c, label %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h4ab301283a333dfdE.exit.i.i.i", !prof !30

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hbfe87a90490e90eaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i, i64 noundef %i.g, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !58497
  %.pre.i.i.i.i.i.i.i.i = load i64, ptr %i.f, align 8, !alias.scope !58498, !noalias !58497
  br label %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h4ab301283a333dfdE.exit.i.i.i"

"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h4ab301283a333dfdE.exit.i.i.i": ; preds = %bb.c, %bb.b
  %i.j = phi i64 [ %i.g, %bb.b ], [ %.pre.i.i.i.i.i.i.i.i, %bb.c ] ; 3 uses
  %i.k = icmp sgt i64 %i.j, -1
  tail call void @llvm.assume(i1 %i.k)
  %i.l = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !58498, !noalias !58497, !nonnull !28, !noundef !28
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.j
  store i8 44, ptr %i.n, align 1, !noalias !58499
  %i.o = add nuw i64 %i.j, 1
  store i64 %i.o, ptr %i.f, align 8, !alias.scope !58498, !noalias !58497
  %.val9.pre.i.i = load ptr, ptr %i.b, align 8, !noalias !58491
  br label %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit.i"

"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit.i": ; preds = %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h4ab301283a333dfdE.exit.i.i.i", %bb.a
  %.val9.i.i = phi ptr [ %.val.i.i, %bb.a ], [ %.val9.pre.i.i, %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h4ab301283a333dfdE.exit.i.i.i" ]
  store i8 2, ptr %i.c, align 8, !alias.scope !58489, !noalias !58490
  tail call fastcc void @"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_str17hf58c26c162f17e29E"(ptr nonnull %.val9.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1137, i64 noundef 10)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58500)
  %.val.i4.i = load ptr, ptr %i.b, align 8, !noalias !58501, !nonnull !28, !align !35, !noundef !28 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58502)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58503)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58504)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58505)
  %i.p = getelementptr inbounds nuw i8, ptr %.val.i4.i, i64 16 ; 3 uses
  %i.q = load i64, ptr %i.p, align 8, !alias.scope !58506, !noalias !58507, !noundef !28 ; 3 uses
  %i.r = load i64, ptr %.val.i4.i, align 8, !range !29, !alias.scope !58506, !noalias !58507, !noundef !28
  %i.s = icmp eq i64 %i.r, %i.q
  br i1 %i.s, label %bb.d, label %_ZN10serde_json3ser9Formatter18begin_object_value17h6d3bc186cdc16551E.exit.i.i, !prof !30

bb.d:                                             ; preds = %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit.i"
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hbfe87a90490e90eaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i4.i, i64 noundef %i.q, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !58507
  %.pre.i.i.i.i.i.i.i6.i = load i64, ptr %i.p, align 8, !alias.scope !58508, !noalias !58507
  br label %_ZN10serde_json3ser9Formatter18begin_object_value17h6d3bc186cdc16551E.exit.i.i

_ZN10serde_json3ser9Formatter18begin_object_value17h6d3bc186cdc16551E.exit.i.i: ; preds = %bb.d, %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit.i"
  %i.t = phi i64 [ %i.q, %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit.i" ], [ %.pre.i.i.i.i.i.i.i6.i, %bb.d ] ; 3 uses
  %i.u = icmp sgt i64 %i.t, -1
  tail call void @llvm.assume(i1 %i.u)
  %i.v = getelementptr inbounds nuw i8, ptr %.val.i4.i, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !alias.scope !58508, !noalias !58507, !nonnull !28, !noundef !28
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.t
  store i8 58, ptr %i.x, align 1, !noalias !58509
  %i.y = add nuw i64 %i.t, 1
  store i64 %i.y, ptr %i.p, align 8, !alias.scope !58508, !noalias !58507
  %.val9.i5.i = load ptr, ptr %i.b, align 8, !noalias !58501 ; 26 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58510)
  %i.z = load i64, ptr %1, align 8, !range !40, !alias.scope !58511, !noalias !58486, !noundef !28 ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.z, -9223372036854775807
  br i1 %.not.i.i.i, label %bb.w, label %bb.e

bb.e:                                             ; preds = %_ZN10serde_json3ser9Formatter18begin_object_value17h6d3bc186cdc16551E.exit.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58512)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58513)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9.i5.i) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58514)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58515)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58516)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58517)
  %i.aa = getelementptr inbounds nuw i8, ptr %.val9.i5.i, i64 16 ; 17 uses
  %i.ab = load i64, ptr %i.aa, align 8, !alias.scope !58518, !noalias !58519, !noundef !28 ; 3 uses
  %i.ac = load i64, ptr %.val9.i5.i, align 8, !range !29, !alias.scope !58518, !noalias !58519, !noundef !28
  %i.ad = icmp eq i64 %i.ac, %i.ab
  br i1 %i.ad, label %bb.f, label %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit.i.i.i.i.i.i.i", !prof !30

bb.f:                                             ; preds = %bb.e
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hbfe87a90490e90eaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val9.i5.i, i64 noundef %i.ab, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !58519
  %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.aa, align 8, !alias.scope !58520, !noalias !58519
  br label %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit.i.i.i.i.i.i.i"

"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit.i.i.i.i.i.i.i": ; preds = %bb.f, %bb.e
  %i.ae = phi i64 [ %i.ab, %bb.e ], [ %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.f ] ; 3 uses
  %i.af = icmp sgt i64 %i.ae, -1
  tail call void @llvm.assume(i1 %i.af)
  %i.ag = getelementptr inbounds nuw i8, ptr %.val9.i5.i, i64 8 ; 8 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !alias.scope !58520, !noalias !58519, !nonnull !28, !noundef !28
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.ae
  store i8 123, ptr %i.ai, align 1, !noalias !58521
  %i.aj = add nuw i64 %i.ae, 1
  store i64 %i.aj, ptr %i.aa, align 8, !alias.scope !58520, !noalias !58519
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58522)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58523)
  tail call fastcc void @"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_str17hf58c26c162f17e29E"(ptr nonnull %.val9.i5.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1082, i64 noundef 8)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58524)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58525)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58526)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58527)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58528)
  %i.ak = load i64, ptr %i.aa, align 8, !alias.scope !58529, !noalias !58530, !noundef !28 ; 3 uses
  %i.al = load i64, ptr %.val9.i5.i, align 8, !range !29, !alias.scope !58529, !noalias !58530, !noundef !28
  %i.am = icmp eq i64 %i.al, %i.ak
  br i1 %i.am, label %bb.g, label %_ZN10serde_json3ser9Formatter18begin_object_value17h6d3bc186cdc16551E.exit.i.i.i.i.i.i.i.i, !prof !30

bb.g:                                             ; preds = %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit.i.i.i.i.i.i.i"
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hbfe87a90490e90eaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val9.i5.i, i64 noundef %i.ak, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !58530
  %.pre.i.i.i.i.i.i.i6.i.i.i.i.i.i.i = load i64, ptr %i.aa, align 8, !alias.scope !58531, !noalias !58530
  br label %_ZN10serde_json3ser9Formatter18begin_object_value17h6d3bc186cdc16551E.exit.i.i.i.i.i.i.i.i

_ZN10serde_json3ser9Formatter18begin_object_value17h6d3bc186cdc16551E.exit.i.i.i.i.i.i.i.i: ; preds = %bb.g, %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit.i.i.i.i.i.i.i"
  %i.an = phi i64 [ %i.ak, %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit.i.i.i.i.i.i.i" ], [ %.pre.i.i.i.i.i.i.i6.i.i.i.i.i.i.i, %bb.g ] ; 3 uses
  %i.ao = icmp sgt i64 %i.an, -1
  tail call void @llvm.assume(i1 %i.ao)
  %i.ap = load ptr, ptr %i.ag, align 8, !alias.scope !58531, !noalias !58530, !nonnull !28, !noundef !28
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.an
  store i8 58, ptr %i.aq, align 1, !noalias !58532
  %i.ar = add nuw i64 %i.an, 1                    ; 7 uses
  store i64 %i.ar, ptr %i.aa, align 8, !alias.scope !58531, !noalias !58530
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58533)
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.z, -9223372036854775808
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.t, label %bb.h

bb.h:                                             ; preds = %_ZN10serde_json3ser9Formatter18begin_object_value17h6d3bc186cdc16551E.exit.i.i.i.i.i.i.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val2.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.as, align 8, !alias.scope !58534, !noalias !58535, !nonnull !28, !noundef !28 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val3.i.i.i.i.i.i.i.i.i = load i64, ptr %i.at, align 8, !alias.scope !58534, !noalias !58535, !noundef !28 ; 2 uses
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i = shl nuw nsw i64 %.val3.i.i.i.i.i.i.i.i.i, 2
  %i.au = getelementptr inbounds nuw i8, ptr %.val2.i.i.i.i.i.i.i.i.i, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58536)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58537)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58538)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58539)
  %i.av = load i64, ptr %.val9.i5.i, align 8, !range !29, !alias.scope !58540, !noalias !58541, !noundef !28
  %i.aw = icmp eq i64 %i.av, %i.ar
  br i1 %i.aw, label %bb.i, label %_ZN10serde_json3ser9Formatter11begin_array17hf03f0e5cad3cbeb7E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, !prof !30

bb.i:                                             ; preds = %bb.h
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hbfe87a90490e90eaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val9.i5.i, i64 noundef %i.ar, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !58541
  %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.aa, align 8, !alias.scope !58542, !noalias !58541
  br label %_ZN10serde_json3ser9Formatter11begin_array17hf03f0e5cad3cbeb7E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZN10serde_json3ser9Formatter11begin_array17hf03f0e5cad3cbeb7E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.i, %bb.h
  %i.ax = phi i64 [ %i.ar, %bb.h ], [ %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.i ] ; 3 uses
  %i.ay = icmp sgt i64 %i.ax, -1
  tail call void @llvm.assume(i1 %i.ay)
  %i.az = load ptr, ptr %i.ag, align 8, !alias.scope !58542, !noalias !58541, !nonnull !28, !noundef !28
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.ax
  store i8 91, ptr %i.ba, align 1, !noalias !58543
  %i.bb = add nuw i64 %i.ax, 1                    ; 5 uses
  store i64 %i.bb, ptr %i.aa, align 8, !alias.scope !58542, !noalias !58541
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %.val3.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.j, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.j:                                             ; preds = %_ZN10serde_json3ser9Formatter11begin_array17hf03f0e5cad3cbeb7E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bc = load i64, ptr %.val9.i5.i, align 8, !range !29, !alias.scope !58544, !noalias !58545, !noundef !28
  %i.bd = icmp eq i64 %i.bc, %i.bb
  br i1 %i.bd, label %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeSeq$GT$3end17h918aa763fb13009fE.exit.sink.split.i.i.i.i.i.i.i.i.i.i.i.i", label %"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$14serialize_some17h1644ae59e17e26feE.exit.i.i.i.i.i.i.i.i.i", !prof !30

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i:               ; preds = %_ZN10serde_json3ser9Formatter11begin_array17hf03f0e5cad3cbeb7E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17hfa22ac0a0ab93ddaE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %i.be = phi i64 [ %i.do, %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17hfa22ac0a0ab93ddaE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %i.bb, %_ZN10serde_json3ser9Formatter11begin_array17hf03f0e5cad3cbeb7E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 4 uses
  %i.bf = phi i1 [ false, %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17hfa22ac0a0ab93ddaE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ true, %_ZN10serde_json3ser9Formatter11begin_array17hf03f0e5cad3cbeb7E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.bg = phi ptr [ %i.bh, %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17hfa22ac0a0ab93ddaE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %.val2.i.i.i.i.i.i.i.i.i, %_ZN10serde_json3ser9Formatter11begin_array17hf03f0e5cad3cbeb7E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 4 ; 2 uses
  %.val8.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i32, ptr %i.bg, align 4, !noalias !58546 ; 2 uses
  br i1 %i.bf, label %_ZN10serde_json3ser9Formatter17begin_array_value17h99dd1a34b9f19112E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58547)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58548)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58549)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58550)
  %i.bi = load i64, ptr %.val9.i5.i, align 8, !range !29, !alias.scope !58551, !noalias !58552, !noundef !28
  %i.bj = icmp eq i64 %i.bi, %i.be
  br i1 %i.bj, label %bb.l, label %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h4ab301283a333dfdE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", !prof !30

bb.l:                                             ; preds = %bb.k
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hbfe87a90490e90eaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val9.i5.i, i64 noundef %i.be, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !58552
  %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.aa, align 8, !alias.scope !58553, !noalias !58552
  br label %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h4ab301283a333dfdE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"

"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h4ab301283a333dfdE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.l, %bb.k
  %i.bk = phi i64 [ %i.be, %bb.k ], [ %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.l ] ; 3 uses
  %i.bl = icmp sgt i64 %i.bk, -1
  tail call void @llvm.assume(i1 %i.bl)
  %i.bm = load ptr, ptr %i.ag, align 8, !alias.scope !58553, !noalias !58552, !nonnull !28, !noundef !28
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.bk
  store i8 44, ptr %i.bn, align 1, !noalias !58554
  %i.bo = add nuw i64 %i.bk, 1                    ; 2 uses
  store i64 %i.bo, ptr %i.aa, align 8, !alias.scope !58553, !noalias !58552
  br label %_ZN10serde_json3ser9Formatter17begin_array_value17h99dd1a34b9f19112E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZN10serde_json3ser9Formatter17begin_array_value17h99dd1a34b9f19112E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h4ab301283a333dfdE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bp = phi i64 [ %i.bo, %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h4ab301283a333dfdE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %i.be, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !58555
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58556)
  %2 = icmp sgt i32 %.val8.i.i.i.i.i.i.i.i.i.i.i.i.i.i, -1
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = tail call i32 @llvm.abs.i32(i32 %.val8.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i1 false) ; 3 uses
  %i.bq = icmp ugt i32 %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 9999
  br i1 %i.bq, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN10serde_json3ser9Formatter17begin_array_value17h99dd1a34b9f19112E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.09.0.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 11, %_ZN10serde_json3ser9Formatter17begin_array_value17h99dd1a34b9f19112E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ca, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.0.1.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN10serde_json3ser9Formatter17begin_array_value17h99dd1a34b9f19112E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.bt, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.br = icmp samesign ugt i32 %.sroa.0.1.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 99
  br i1 %i.br, label %bb.m, label %bb.n

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZN10serde_json3ser9Formatter17begin_array_value17h99dd1a34b9f19112E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.0.129.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.bt, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN10serde_json3ser9Formatter17begin_array_value17h99dd1a34b9f19112E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %.sroa.09.028.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ca, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ 11, %_ZN10serde_json3ser9Formatter17begin_array_value17h99dd1a34b9f19112E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.bs = urem i32 %.sroa.0.129.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 10000
  %i.bt = udiv i32 %.sroa.0.129.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 10000 ; 2 uses
  %.lhs.trunc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = trunc nuw nsw i32 %i.bs to i16 ; 2 uses
  %i.bu = udiv i16 %.lhs.trunc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 100
  %i.bv = shl nuw nsw i16 %i.bu, 1
  %i.bw = zext nneg i16 %i.bv to i64
  %i.bx = urem i16 %.lhs.trunc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 100
  %i.by = shl nuw nsw i16 %i.bx, 1
  %i.bz = zext nneg i16 %i.by to i64
  %i.ca = add i64 %.sroa.09.028.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, -4 ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr @849, i64 %i.bw
  %i.cc = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ca
  %i.cd = load i16, ptr %i.cb, align 1, !noalias !58557
  store i16 %i.cd, ptr %i.cc, align 1, !alias.scope !58556, !noalias !58555
  %i.ce = getelementptr inbounds nuw i8, ptr @849, i64 %i.bz
  %i.cf = getelementptr i8, ptr %i.a, i64 %.sroa.09.028.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.cg = getelementptr i8, ptr %i.cf, i64 -2
  %i.ch = load i16, ptr %i.ce, align 1, !noalias !58557
  store i16 %i.ch, ptr %i.cg, align 1, !alias.scope !58556, !noalias !58555
  %i.ci = icmp ugt i32 %.sroa.0.129.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 99999999
  br i1 %i.ci, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.m:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.lhs.trunc24.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = trunc nuw i32 %.sroa.0.1.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i to i16 ; 2 uses
  %i.cj = urem i16 %.lhs.trunc24.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 100
  %i.ck = shl nuw nsw i16 %i.cj, 1
  %i.cl = zext nneg i16 %i.ck to i64
  %i.cm = udiv i16 %.lhs.trunc24.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 100
  %.zext27.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = zext nneg i16 %i.cm to i32
  %i.cn = add i64 %.sroa.09.0.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, -2 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr @849, i64 %i.cl
  %i.cp = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.cn
  %i.cq = load i16, ptr %i.co, align 1, !noalias !58557
  store i16 %i.cq, ptr %i.cp, align 1, !alias.scope !58556, !noalias !58555
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.09.1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.cn, %bb.m ], [ %.sroa.09.0.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.0.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %.zext27.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.m ], [ %.sroa.0.1.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.cr = icmp samesign ult i32 %.sroa.0.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 10
  br i1 %i.cr, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cs = shl nuw nsw i32 %.sroa.0.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 1
  %i.ct = zext nneg i32 %i.cs to i64
  %i.cu = add i64 %.sroa.09.1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, -2 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr @849, i64 %i.ct
  %i.cw = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.cu
  %i.cx = load i16, ptr %i.cv, align 1, !noalias !58557
  store i16 %i.cx, ptr %i.cw, align 1, !alias.scope !58556, !noalias !58555
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.cy = add i64 %.sroa.09.1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, -1 ; 2 uses
  %i.cz = trunc nuw nsw i32 %.sroa.0.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i to i8
  %i.da = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.cy
  %i.db = or disjoint i8 %i.cz, 48
  store i8 %i.db, ptr %i.da, align 1, !alias.scope !58556, !noalias !58555
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.sroa.09.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.cy, %bb.p ], [ %i.cu, %bb.o ] ; 2 uses
  br i1 %2, label %"_ZN4itoa55_$LT$impl$u20$itoa..private..Sealed$u20$for$u20$i32$GT$5write17h60888a2bbedeb6fbE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dc = add i64 %.sroa.09.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, -1 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.dc
  store i8 45, ptr %i.dd, align 1, !alias.scope !58556, !noalias !58555
  br label %"_ZN4itoa55_$LT$impl$u20$itoa..private..Sealed$u20$for$u20$i32$GT$5write17h60888a2bbedeb6fbE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"

"_ZN4itoa55_$LT$impl$u20$itoa..private..Sealed$u20$for$u20$i32$GT$5write17h60888a2bbedeb6fbE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.r, %bb.q
  %.sroa.09.3.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.09.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.q ], [ %i.dc, %bb.r ] ; 2 uses
  %i.de = sub i64 11, %.sroa.09.3.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ; 5 uses
  %i.df = icmp ult i64 %i.de, 12
  tail call void @llvm.assume(i1 %i.df)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58558)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58559)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58560)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58561)
  %i.dg = load i64, ptr %.val9.i5.i, align 8, !range !29, !alias.scope !58562, !noalias !58563, !noundef !28
  %i.dh = sub i64 %i.dg, %i.bp
  %i.di = icmp ugt i64 %i.de, %i.dh
  br i1 %i.di, label %bb.s, label %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17hfa22ac0a0ab93ddaE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i", !prof !30

bb.s:                                             ; preds = %"_ZN4itoa55_$LT$impl$u20$itoa..private..Sealed$u20$for$u20$i32$GT$5write17h60888a2bbedeb6fbE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hbfe87a90490e90eaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val9.i5.i, i64 noundef %i.bp, i64 noundef %i.de, i64 noundef 1, i64 noundef 1), !noalias !58563
  %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.aa, align 8, !alias.scope !58564, !noalias !58563
  br label %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17hfa22ac0a0ab93ddaE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i"

"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17hfa22ac0a0ab93ddaE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.s, %"_ZN4itoa55_$LT$impl$u20$itoa..private..Sealed$u20$for$u20$i32$GT$5write17h60888a2bbedeb6fbE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %i.dj = phi i64 [ %i.bp, %"_ZN4itoa55_$LT$impl$u20$itoa..private..Sealed$u20$for$u20$i32$GT$5write17h60888a2bbedeb6fbE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.s ] ; 3 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.09.3.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.dl = icmp sgt i64 %i.dj, -1
  tail call void @llvm.assume(i1 %i.dl)
  %i.dm = load ptr, ptr %i.ag, align 8, !alias.scope !58564, !noalias !58563, !nonnull !28, !noundef !28
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 %i.dj
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.dn, ptr nonnull readonly align 1 %i.dk, i64 %i.de, i1 false), !noalias !58565
  %i.do = add nuw i64 %i.dj, %i.de                ; 5 uses
  store i64 %i.do, ptr %i.aa, align 8, !alias.scope !58564, !noalias !58563
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !58555
  %i.dp = icmp eq ptr %i.bh, %i.au
  br i1 %i.dp, label %_ZN4core4iter6traits8iterator8Iterator12try_for_each17hffff358d33068c28E.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZN4core4iter6traits8iterator8Iterator12try_for_each17hffff358d33068c28E.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17hfa22ac0a0ab93ddaE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %i.dq = load i64, ptr %.val9.i5.i, align 8, !range !29, !alias.scope !58566, !noalias !58567, !noundef !28
  %i.dr = icmp eq i64 %i.dq, %i.do
  br i1 %i.dr, label %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeSeq$GT$3end17h918aa763fb13009fE.exit.sink.split.i.i.i.i.i.i.i.i.i.i.i.i", label %"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$14serialize_some17h1644ae59e17e26feE.exit.i.i.i.i.i.i.i.i.i", !prof !30

"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeSeq$GT$3end17h918aa763fb13009fE.exit.sink.split.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %_ZN4core4iter6traits8iterator8Iterator12try_for_each17hffff358d33068c28E.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i, %bb.j
  %.lcssa21.sink.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.bb, %bb.j ], [ %i.do, %_ZN4core4iter6traits8iterator8Iterator12try_for_each17hffff358d33068c28E.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i ]
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hbfe87a90490e90eaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val9.i5.i, i64 noundef %.lcssa21.sink.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !58568
  %.pre.i.i.i.i.i.i.i15.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.aa, align 8, !noalias !58568
  br label %"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$14serialize_some17h1644ae59e17e26feE.exit.i.i.i.i.i.i.i.i.i"

"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$14serialize_some17h1644ae59e17e26feE.exit.i.i.i.i.i.i.i.i.i": ; preds = %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeSeq$GT$3end17h918aa763fb13009fE.exit.sink.split.i.i.i.i.i.i.i.i.i.i.i.i", %_ZN4core4iter6traits8iterator8Iterator12try_for_each17hffff358d33068c28E.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i, %bb.j
  %.sink25.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.do, %_ZN4core4iter6traits8iterator8Iterator12try_for_each17hffff358d33068c28E.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.bb, %bb.j ], [ %.pre.i.i.i.i.i.i.i15.i.i.i.i.i.i.i.i.i.i.i.i, %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeSeq$GT$3end17h918aa763fb13009fE.exit.sink.split.i.i.i.i.i.i.i.i.i.i.i.i" ] ; 3 uses
  %i.ds = icmp sgt i64 %.sink25.i.i.i.i.i.i.i.i.i.i.i.i, -1
  tail call void @llvm.assume(i1 %i.ds)
  %i.dt = load ptr, ptr %i.ag, align 8, !noalias !58568, !nonnull !28, !noundef !28
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 %.sink25.i.i.i.i.i.i.i.i.i.i.i.i
  store i8 93, ptr %i.du, align 1, !noalias !58568
  %i.dv = add nuw i64 %.sink25.i.i.i.i.i.i.i.i.i.i.i.i, 1
  br label %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17he7627a38b911d7c5E.exit.i.i.i.i.i"

bb.t:                                             ; preds = %_ZN10serde_json3ser9Formatter18begin_object_value17h6d3bc186cdc16551E.exit.i.i.i.i.i.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58569)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58570)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58571)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58572)
  %i.dw = load i64, ptr %.val9.i5.i, align 8, !range !29, !alias.scope !58573, !noalias !58574, !noundef !28
  %i.dx = sub i64 %i.dw, %i.ar
  %i.dy = icmp ult i64 %i.dx, 4
  br i1 %i.dy, label %bb.u, label %"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$14serialize_none17h5a51276ae0ab8e9eE.exit.i.i.i.i.i.i.i.i.i", !prof !30

bb.u:                                             ; preds = %bb.t
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hbfe87a90490e90eaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val9.i5.i, i64 noundef %i.ar, i64 noundef 4, i64 noundef 1, i64 noundef 1), !noalias !58574
  %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.aa, align 8, !alias.scope !58575, !noalias !58574
  br label %"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$14serialize_none17h5a51276ae0ab8e9eE.exit.i.i.i.i.i.i.i.i.i"

"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$14serialize_none17h5a51276ae0ab8e9eE.exit.i.i.i.i.i.i.i.i.i": ; preds = %bb.u, %bb.t
  %i.dz = phi i64 [ %i.ar, %bb.t ], [ %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.u ] ; 3 uses
  %i.ea = icmp sgt i64 %i.dz, -1
  tail call void @llvm.assume(i1 %i.ea)
  %i.eb = load ptr, ptr %i.ag, align 8, !alias.scope !58575, !noalias !58574, !nonnull !28, !noundef !28
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 %i.dz
  store i32 1819047278, ptr %i.ec, align 1, !noalias !58576
  %i.ed = add nuw i64 %i.dz, 4
  br label %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17he7627a38b911d7c5E.exit.i.i.i.i.i"

"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17he7627a38b911d7c5E.exit.i.i.i.i.i": ; preds = %"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$14serialize_none17h5a51276ae0ab8e9eE.exit.i.i.i.i.i.i.i.i.i", %"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$14serialize_some17h1644ae59e17e26feE.exit.i.i.i.i.i.i.i.i.i"
  %storemerge.i.i.i.i.i = phi i64 [ %i.dv, %"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$14serialize_some17h1644ae59e17e26feE.exit.i.i.i.i.i.i.i.i.i" ], [ %i.ed, %"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$14serialize_none17h5a51276ae0ab8e9eE.exit.i.i.i.i.i.i.i.i.i" ] ; 4 uses
  store i64 %storemerge.i.i.i.i.i, ptr %i.aa, align 8, !noalias !58577
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58578)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58579)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58580)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58581)
  %i.ee = load i64, ptr %.val9.i5.i, align 8, !range !29, !alias.scope !58582, !noalias !58583, !noundef !28
  %i.ef = icmp eq i64 %i.ee, %storemerge.i.i.i.i.i
  br i1 %i.ef, label %bb.v, label %"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$14serialize_some17h53064306ee8febeeE.exit.i.i.i", !prof !30

bb.v:                                             ; preds = %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17he7627a38b911d7c5E.exit.i.i.i.i.i"
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hbfe87a90490e90eaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val9.i5.i, i64 noundef %storemerge.i.i.i.i.i, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !58583
  %.pre.i.i.i.i.i.i.i.i8.i.i.i.i.i = load i64, ptr %i.aa, align 8, !alias.scope !58584, !noalias !58583
  br label %"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$14serialize_some17h53064306ee8febeeE.exit.i.i.i"

"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$14serialize_some17h53064306ee8febeeE.exit.i.i.i": ; preds = %bb.v, %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17he7627a38b911d7c5E.exit.i.i.i.i.i"
  %i.eg = phi i64 [ %storemerge.i.i.i.i.i, %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17he7627a38b911d7c5E.exit.i.i.i.i.i" ], [ %.pre.i.i.i.i.i.i.i.i8.i.i.i.i.i, %bb.v ] ; 3 uses
  %i.eh = icmp sgt i64 %i.eg, -1
  tail call void @llvm.assume(i1 %i.eh)
  %i.ei = load ptr, ptr %i.ag, align 8, !alias.scope !58584, !noalias !58583, !nonnull !28, !noundef !28
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 %i.eg
  store i8 125, ptr %i.ej, align 1, !noalias !58585
  %i.ek = add nuw i64 %i.eg, 1
  store i64 %i.ek, ptr %i.aa, align 8, !alias.scope !58584, !noalias !58583
  br label %_ZN10serde_core3ser12SerializeMap15serialize_entry17h25c91326fc2c1117E.exit

bb.w:                                             ; preds = %_ZN10serde_json3ser9Formatter18begin_object_value17h6d3bc186cdc16551E.exit.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9.i5.i) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58586)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58587)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58588)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58589)
  %i.el = getelementptr inbounds nuw i8, ptr %.val9.i5.i, i64 16 ; 3 uses
  %i.em = load i64, ptr %i.el, align 8, !alias.scope !58590, !noalias !58591, !noundef !28 ; 3 uses
  %i.en = load i64, ptr %.val9.i5.i, align 8, !range !29, !alias.scope !58590, !noalias !58591, !noundef !28
  %i.eo = sub i64 %i.en, %i.em
  %i.ep = icmp ult i64 %i.eo, 4
  br i1 %i.ep, label %bb.x, label %"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$14serialize_none17h5a51276ae0ab8e9eE.exit.i.i.i", !prof !30

bb.x:                                             ; preds = %bb.w
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hbfe87a90490e90eaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val9.i5.i, i64 noundef %i.em, i64 noundef 4, i64 noundef 1, i64 noundef 1), !noalias !58591
  %.pre.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.el, align 8, !alias.scope !58592, !noalias !58591
  br label %"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$14serialize_none17h5a51276ae0ab8e9eE.exit.i.i.i"

end_hunk_7
begin_hunk_8_@"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h1e6b3ed4599c14f3E":bb.a
  %i.s = load i64, ptr %.val.i4.i, align 8, !range !29, !alias.scope !58772, !noalias !58773, !noundef !28
  %i.t = icmp eq i64 %i.s, %i.r
  br i1 %i.t, label %bb.d, label %_ZN10serde_json3ser9Formatter18begin_object_value17h6d3bc186cdc16551E.exit.i.i, !prof !30

bb.d:                                             ; preds = %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit.i"
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hbfe87a90490e90eaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i4.i, i64 noundef %i.r, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !58773
  %.pre.i.i.i.i.i.i.i5.i = load i64, ptr %i.q, align 8, !alias.scope !58774, !noalias !58773
  br label %_ZN10serde_json3ser9Formatter18begin_object_value17h6d3bc186cdc16551E.exit.i.i

_ZN10serde_json3ser9Formatter18begin_object_value17h6d3bc186cdc16551E.exit.i.i: ; preds = %bb.d, %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit.i"
  %i.u = phi i64 [ %i.r, %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit.i" ], [ %.pre.i.i.i.i.i.i.i5.i, %bb.d ] ; 3 uses
  %i.v = icmp sgt i64 %i.u, -1
  tail call void @llvm.assume(i1 %i.v)
  %i.w = getelementptr inbounds nuw i8, ptr %.val.i4.i, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !alias.scope !58774, !noalias !58773, !nonnull !28, !noundef !28
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.u
  store i8 58, ptr %i.y, align 1, !noalias !58775
  %i.z = add nuw i64 %i.u, 1
  store i64 %i.z, ptr %i.q, align 8, !alias.scope !58774, !noalias !58773
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58776)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58777)
  %i.aa = load i32, ptr %1, align 4, !range !82, !alias.scope !58778, !noalias !58779, !noundef !28 ; 3 uses
  %.not.i.i.i = icmp eq i32 %i.aa, 2
  br i1 %.not.i.i.i, label %bb.ad, label %bb.e

bb.e:                                             ; preds = %_ZN10serde_json3ser9Formatter18begin_object_value17h6d3bc186cdc16551E.exit.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58780)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58781)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58782)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58783)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !58784
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ac = load i8, ptr %i.ab, align 4, !range !42, !alias.scope !58785, !noalias !58786, !noundef !28 ; 2 uses
  %.not.i.i.i.i.i = icmp ne i8 %i.ac, 2           ; 2 uses
  %..i.i.i.i.i = zext i1 %.not.i.i.i.i.i to i64
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.ae = load i8, ptr %i.ad, align 1, !range !42, !alias.scope !58785, !noalias !58786, !noundef !28 ; 2 uses
  %.not36.i.i.i.i.i = icmp ne i8 %i.ae, 2         ; 2 uses
  %.sroa.04.0.i.i.i.i.i = zext i1 %.not36.i.i.i.i.i to i64
  %.not37.not.i.i.i.i.i = icmp eq i32 %i.aa, 0
  %.sroa.05.0.i.i.i.i.i = zext nneg i32 %i.aa to i64
  %i.af = add nuw nsw i64 %..i.i.i.i.i, %.sroa.05.0.i.i.i.i.i
  %i.ag = add nuw nsw i64 %i.af, %.sroa.04.0.i.i.i.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.ai = load i8, ptr %i.ah, align 2, !range !42, !alias.scope !58785, !noalias !58786, !noundef !28 ; 2 uses
  %.not38.i.i.i.i.i = icmp ne i8 %i.ai, 2         ; 2 uses
  %.sroa.06.0.i.i.i.i.i = zext i1 %.not38.i.i.i.i.i to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58787)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58788)
  %.val.i.i.i.i.i.i.i = load ptr, ptr %i.c, align 8, !alias.scope !58789, !noalias !58790, !nonnull !28, !align !35, !noundef !28 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58791)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58792)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58793)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58794)
  %i.aj = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i, i64 16 ; 5 uses
  %i.ak = load i64, ptr %i.aj, align 8, !alias.scope !58795, !noalias !58796, !noundef !28 ; 3 uses
  %i.al = load i64, ptr %.val.i.i.i.i.i.i.i, align 8, !range !29, !alias.scope !58795, !noalias !58796, !noundef !28
  %i.am = icmp eq i64 %i.al, %i.ak
  br i1 %i.am, label %bb.f, label %_ZN10serde_json3ser9Formatter12begin_object17hddb70660d5368bc0E.exit.i.i.i.i.i.i.i, !prof !30

bb.f:                                             ; preds = %bb.e
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hbfe87a90490e90eaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i.i.i.i.i.i, i64 noundef %i.ak, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !58796
  %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.aj, align 8, !alias.scope !58797, !noalias !58796
  br label %_ZN10serde_json3ser9Formatter12begin_object17hddb70660d5368bc0E.exit.i.i.i.i.i.i.i

_ZN10serde_json3ser9Formatter12begin_object17hddb70660d5368bc0E.exit.i.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %i.an = phi i64 [ %i.ak, %bb.e ], [ %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.f ] ; 3 uses
  %i.ao = icmp sgt i64 %i.an, -1
  tail call void @llvm.assume(i1 %i.ao)
  %i.ap = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !alias.scope !58797, !noalias !58796, !nonnull !28, !noundef !28
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.an
  store i8 123, ptr %i.ar, align 1, !noalias !58798
  %i.as = add nuw i64 %i.an, 1                    ; 4 uses
  store i64 %i.as, ptr %i.aj, align 8, !alias.scope !58797, !noalias !58796
  %i.at = or i64 %i.ag, %.sroa.06.0.i.i.i.i.i
  %i.au = icmp eq i64 %i.at, 0
  br i1 %i.au, label %bb.g, label %"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$16serialize_struct17hc8bdd57f0e3297a3E.exit.i.i.i.i.i"

bb.g:                                             ; preds = %_ZN10serde_json3ser9Formatter12begin_object17hddb70660d5368bc0E.exit.i.i.i.i.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58799)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58800)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58801)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58802)
  %i.av = load i64, ptr %.val.i.i.i.i.i.i.i, align 8, !range !29, !alias.scope !58803, !noalias !58804, !noundef !28
  %i.aw = icmp eq i64 %i.av, %i.as
  br i1 %i.aw, label %bb.h, label %_ZN10serde_json3ser9Formatter10end_object17h325f3d47e1b1e2e2E.exit.i.i.i.i.i.i.i, !prof !30

bb.h:                                             ; preds = %bb.g
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hbfe87a90490e90eaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i.i.i.i.i.i, i64 noundef %i.as, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !58804
  %.pre.i.i.i.i.i.i11.i.i.i.i.i.i.i = load i64, ptr %i.aj, align 8, !alias.scope !58805, !noalias !58804
  br label %_ZN10serde_json3ser9Formatter10end_object17h325f3d47e1b1e2e2E.exit.i.i.i.i.i.i.i

_ZN10serde_json3ser9Formatter10end_object17h325f3d47e1b1e2e2E.exit.i.i.i.i.i.i.i: ; preds = %bb.h, %bb.g
  %i.ax = phi i64 [ %i.as, %bb.g ], [ %.pre.i.i.i.i.i.i11.i.i.i.i.i.i.i, %bb.h ] ; 3 uses
  %i.ay = icmp sgt i64 %i.ax, -1
  tail call void @llvm.assume(i1 %i.ay)
  %i.az = load ptr, ptr %i.ap, align 8, !alias.scope !58805, !noalias !58804, !nonnull !28, !noundef !28
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.ax
  store i8 125, ptr %i.ba, align 1, !noalias !58806
  %i.bb = add nuw i64 %i.ax, 1
  store i64 %i.bb, ptr %i.aj, align 8, !alias.scope !58805, !noalias !58804
  br label %"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$16serialize_struct17hc8bdd57f0e3297a3E.exit.i.i.i.i.i"

"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$16serialize_struct17hc8bdd57f0e3297a3E.exit.i.i.i.i.i": ; preds = %_ZN10serde_json3ser9Formatter10end_object17h325f3d47e1b1e2e2E.exit.i.i.i.i.i.i.i, %_ZN10serde_json3ser9Formatter12begin_object17hddb70660d5368bc0E.exit.i.i.i.i.i.i.i
  %.sink.i.i.i.i.i.i.i = phi i8 [ 0, %_ZN10serde_json3ser9Formatter10end_object17h325f3d47e1b1e2e2E.exit.i.i.i.i.i.i.i ], [ 1, %_ZN10serde_json3ser9Formatter12begin_object17hddb70660d5368bc0E.exit.i.i.i.i.i.i.i ]
  store ptr %i.c, ptr %i.b, align 8, !noalias !58784
  %i.bc = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  store i8 %.sink.i.i.i.i.i.i.i, ptr %i.bc, align 8, !noalias !58784
  br i1 %.not.i.i.i.i.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$16serialize_struct17hc8bdd57f0e3297a3E.exit.i.i.i.i.i"
  call fastcc void @_ZN10serde_core3ser12SerializeMap15serialize_entry17h1dc3500615032f06E(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1093, i64 noundef 19, i8 %i.ac)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$16serialize_struct17hc8bdd57f0e3297a3E.exit.i.i.i.i.i"
  br i1 %.not36.i.i.i.i.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  call fastcc void @_ZN10serde_core3ser12SerializeMap15serialize_entry17h1dc3500615032f06E(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1225, i64 noundef 14, i8 %i.ae)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  br i1 %.not37.not.i.i.i.i.i, label %bb.y, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.val47.i.i.i.i.i = load i32, ptr %i.bd, align 4, !alias.scope !58785, !noalias !58786 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58807)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58808)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58809)
  %i.be = load ptr, ptr %i.b, align 8, !alias.scope !58810, !noalias !58811, !nonnull !28, !align !35, !noundef !28 ; 4 uses
  %i.bf = load i8, ptr %i.bc, align 8, !range !42, !alias.scope !58810, !noalias !58811, !noundef !28
  %i.bg = icmp eq i8 %i.bf, 1
  %.val.i.i.i.i.i.i.i.i = load ptr, ptr %i.be, align 8, !noalias !58812 ; 6 uses
  br i1 %i.bg, label %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit.i.i.i.i.i.i.i", label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i.i.i.i.i) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58813)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58814)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58815)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58816)
  %i.bh = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i, i64 16 ; 3 uses
  %i.bi = load i64, ptr %i.bh, align 8, !alias.scope !58817, !noalias !58818, !noundef !28 ; 3 uses
  %i.bj = load i64, ptr %.val.i.i.i.i.i.i.i.i, align 8, !range !29, !alias.scope !58817, !noalias !58818, !noundef !28
  %i.bk = icmp eq i64 %i.bj, %i.bi
  br i1 %i.bk, label %bb.o, label %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h4ab301283a333dfdE.exit.i.i.i.i.i.i.i.i.i", !prof !30

bb.o:                                             ; preds = %bb.n
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hbfe87a90490e90eaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i.i.i.i.i.i.i, i64 noundef %i.bi, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !58818
  %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.bh, align 8, !alias.scope !58819, !noalias !58818
  br label %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h4ab301283a333dfdE.exit.i.i.i.i.i.i.i.i.i"

"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h4ab301283a333dfdE.exit.i.i.i.i.i.i.i.i.i": ; preds = %bb.o, %bb.n
  %i.bl = phi i64 [ %i.bi, %bb.n ], [ %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.o ] ; 3 uses
  %i.bm = icmp sgt i64 %i.bl, -1
  tail call void @llvm.assume(i1 %i.bm)
  %i.bn = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8, !alias.scope !58819, !noalias !58818, !nonnull !28, !noundef !28
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.bl
  store i8 44, ptr %i.bp, align 1, !noalias !58820
  %i.bq = add nuw i64 %i.bl, 1
  store i64 %i.bq, ptr %i.bh, align 8, !alias.scope !58819, !noalias !58818
  %.val9.pre.i.i.i.i.i.i.i.i = load ptr, ptr %i.be, align 8, !noalias !58812
  br label %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit.i.i.i.i.i.i.i"

"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit.i.i.i.i.i.i.i": ; preds = %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h4ab301283a333dfdE.exit.i.i.i.i.i.i.i.i.i", %bb.m
  %.val9.i.i.i.i.i.i.i.i = phi ptr [ %.val.i.i.i.i.i.i.i.i, %bb.m ], [ %.val9.pre.i.i.i.i.i.i.i.i, %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h4ab301283a333dfdE.exit.i.i.i.i.i.i.i.i.i" ]
  store i8 2, ptr %i.bc, align 8, !alias.scope !58810, !noalias !58811
  tail call fastcc void @"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_str17hf58c26c162f17e29E"(ptr nonnull %.val9.i.i.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1226, i64 noundef 29)
  %.val.i6.i.i.i.i.i.i.i = load ptr, ptr %i.be, align 8, !noalias !58821, !nonnull !28, !align !35, !noundef !28 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58822)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58823)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58824)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58825)
  %i.br = getelementptr inbounds nuw i8, ptr %.val.i6.i.i.i.i.i.i.i, i64 16 ; 3 uses
  %i.bs = load i64, ptr %i.br, align 8, !alias.scope !58826, !noalias !58827, !noundef !28 ; 3 uses
  %i.bt = load i64, ptr %.val.i6.i.i.i.i.i.i.i, align 8, !range !29, !alias.scope !58826, !noalias !58827, !noundef !28
  %i.bu = icmp eq i64 %i.bt, %i.bs
  br i1 %i.bu, label %bb.p, label %bb.q, !prof !30

bb.p:                                             ; preds = %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit.i.i.i.i.i.i.i"
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hbfe87a90490e90eaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i6.i.i.i.i.i.i.i, i64 noundef %i.bs, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !58827
  %.pre.i.i.i.i.i.i.i7.i.i.i.i.i.i.i = load i64, ptr %i.br, align 8, !alias.scope !58828, !noalias !58827
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit.i.i.i.i.i.i.i"
  %i.bv = phi i64 [ %i.bs, %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit.i.i.i.i.i.i.i" ], [ %.pre.i.i.i.i.i.i.i7.i.i.i.i.i.i.i, %bb.p ] ; 3 uses
  %i.bw = icmp sgt i64 %i.bv, -1
  tail call void @llvm.assume(i1 %i.bw)
  %i.bx = getelementptr inbounds nuw i8, ptr %.val.i6.i.i.i.i.i.i.i, i64 8
  %i.by = load ptr, ptr %i.bx, align 8, !alias.scope !58828, !noalias !58827, !nonnull !28, !noundef !28
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.bv
  store i8 58, ptr %i.bz, align 1, !noalias !58829
  %i.ca = add nuw i64 %i.bv, 1
  store i64 %i.ca, ptr %i.br, align 8, !alias.scope !58828, !noalias !58827
  %.val11.i.i.i.i.i.i.i.i = load ptr, ptr %i.be, align 8, !noalias !58821 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !58830
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58831)
  %2 = icmp sgt i32 %.val47.i.i.i.i.i, -1
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i = tail call i32 @llvm.abs.i32(i32 %.val47.i.i.i.i.i, i1 false) ; 3 uses
  %i.cb = icmp ugt i32 %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 9999
  br i1 %i.cb, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i:          ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.q
  %.sroa.09.0.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 11, %bb.q ], [ %i.cl, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.0.1.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.q ], [ %i.ce, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.cc = icmp samesign ugt i32 %.sroa.0.1.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 99
  br i1 %i.cc, label %bb.r, label %bb.s

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i:               ; preds = %bb.q, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.0.129.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.ce, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.q ] ; 3 uses
  %.sroa.09.028.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.cl, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ 11, %bb.q ] ; 2 uses
  %i.cd = urem i32 %.sroa.0.129.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 10000
  %i.ce = udiv i32 %.sroa.0.129.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 10000 ; 2 uses
  %.lhs.trunc.i.i.i.i.i.i.i.i.i.i.i.i.i.i = trunc nuw nsw i32 %i.cd to i16 ; 2 uses
  %i.cf = udiv i16 %.lhs.trunc.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 100
  %i.cg = shl nuw nsw i16 %i.cf, 1
  %i.ch = zext nneg i16 %i.cg to i64
  %i.ci = urem i16 %.lhs.trunc.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 100
  %i.cj = shl nuw nsw i16 %i.ci, 1
  %i.ck = zext nneg i16 %i.cj to i64
  %i.cl = add i64 %.sroa.09.028.i.i.i.i.i.i.i.i.i.i.i.i.i.i, -4 ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr @849, i64 %i.ch
  %i.cn = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.cl
  %i.co = load i16, ptr %i.cm, align 1, !noalias !58832
  store i16 %i.co, ptr %i.cn, align 1, !alias.scope !58831, !noalias !58830
  %i.cp = getelementptr inbounds nuw i8, ptr @849, i64 %i.ck
  %i.cq = getelementptr i8, ptr %i.a, i64 %.sroa.09.028.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.cr = getelementptr i8, ptr %i.cq, i64 -2
  %i.cs = load i16, ptr %i.cp, align 1, !noalias !58832
  store i16 %i.cs, ptr %i.cr, align 1, !alias.scope !58831, !noalias !58830
  %i.ct = icmp ugt i32 %.sroa.0.129.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 99999999
  br i1 %i.ct, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.r:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.lhs.trunc24.i.i.i.i.i.i.i.i.i.i.i.i.i.i = trunc nuw i32 %.sroa.0.1.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i to i16 ; 2 uses
  %i.cu = urem i16 %.lhs.trunc24.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 100
  %i.cv = shl nuw nsw i16 %i.cu, 1
  %i.cw = zext nneg i16 %i.cv to i64
  %i.cx = udiv i16 %.lhs.trunc24.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 100
  %.zext27.i.i.i.i.i.i.i.i.i.i.i.i.i.i = zext nneg i16 %i.cx to i32
  %i.cy = add i64 %.sroa.09.0.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i, -2 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr @849, i64 %i.cw
  %i.da = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.cy
  %i.db = load i16, ptr %i.cz, align 1, !noalias !58832
  store i16 %i.db, ptr %i.da, align 1, !alias.scope !58831, !noalias !58830
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.09.1.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.cy, %bb.r ], [ %.sroa.09.0.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.0.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %.zext27.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.r ], [ %.sroa.0.1.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.dc = icmp samesign ult i32 %.sroa.0.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 10
  br i1 %i.dc, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dd = shl nuw nsw i32 %.sroa.0.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 1
  %i.de = zext nneg i32 %i.dd to i64
  %i.df = add i64 %.sroa.09.1.i.i.i.i.i.i.i.i.i.i.i.i.i.i, -2 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr @849, i64 %i.de
  %i.dh = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.df
  %i.di = load i16, ptr %i.dg, align 1, !noalias !58832
  store i16 %i.di, ptr %i.dh, align 1, !alias.scope !58831, !noalias !58830
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  %i.dj = add i64 %.sroa.09.1.i.i.i.i.i.i.i.i.i.i.i.i.i.i, -1 ; 2 uses
  %i.dk = trunc nuw nsw i32 %.sroa.0.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i to i8
  %i.dl = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.dj
  %i.dm = or disjoint i8 %i.dk, 48
  store i8 %i.dm, ptr %i.dl, align 1, !alias.scope !58831, !noalias !58830
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.sroa.09.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.dj, %bb.u ], [ %i.df, %bb.t ] ; 2 uses
  br i1 %2, label %"_ZN4itoa55_$LT$impl$u20$itoa..private..Sealed$u20$for$u20$i32$GT$5write17h60888a2bbedeb6fbE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i", label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dn = add i64 %.sroa.09.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i, -1 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.dn
  store i8 45, ptr %i.do, align 1, !alias.scope !58831, !noalias !58830
  br label %"_ZN4itoa55_$LT$impl$u20$itoa..private..Sealed$u20$for$u20$i32$GT$5write17h60888a2bbedeb6fbE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i"

"_ZN4itoa55_$LT$impl$u20$itoa..private..Sealed$u20$for$u20$i32$GT$5write17h60888a2bbedeb6fbE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.w, %bb.v
  %.sroa.09.3.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.09.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.v ], [ %i.dn, %bb.w ] ; 2 uses
  %i.dp = sub i64 11, %.sroa.09.3.i.i.i.i.i.i.i.i.i.i.i.i.i.i ; 5 uses
  %i.dq = icmp ult i64 %i.dp, 12
  tail call void @llvm.assume(i1 %i.dq)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val11.i.i.i.i.i.i.i.i) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58833)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58834)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58835)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58836)
  %i.dr = getelementptr inbounds nuw i8, ptr %.val11.i.i.i.i.i.i.i.i, i64 16 ; 3 uses
  %i.ds = load i64, ptr %i.dr, align 8, !alias.scope !58837, !noalias !58838, !noundef !28 ; 3 uses
  %i.dt = load i64, ptr %.val11.i.i.i.i.i.i.i.i, align 8, !range !29, !alias.scope !58837, !noalias !58838, !noundef !28
  %i.du = sub i64 %i.dt, %i.ds
  %i.dv = icmp ugt i64 %i.dp, %i.du
  br i1 %i.dv, label %bb.x, label %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h72fa3e6555b23f3cE.exit.i.i.i.i.i", !prof !30

bb.x:                                             ; preds = %"_ZN4itoa55_$LT$impl$u20$itoa..private..Sealed$u20$for$u20$i32$GT$5write17h60888a2bbedeb6fbE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i"
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hbfe87a90490e90eaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val11.i.i.i.i.i.i.i.i, i64 noundef %i.ds, i64 noundef %i.dp, i64 noundef 1, i64 noundef 1), !noalias !58838
  %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.dr, align 8, !alias.scope !58839, !noalias !58838
  br label %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h72fa3e6555b23f3cE.exit.i.i.i.i.i"

"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h72fa3e6555b23f3cE.exit.i.i.i.i.i": ; preds = %bb.x, %"_ZN4itoa55_$LT$impl$u20$itoa..private..Sealed$u20$for$u20$i32$GT$5write17h60888a2bbedeb6fbE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %i.dw = phi i64 [ %i.ds, %"_ZN4itoa55_$LT$impl$u20$itoa..private..Sealed$u20$for$u20$i32$GT$5write17h60888a2bbedeb6fbE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.x ] ; 3 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.09.3.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.dy = icmp sgt i64 %i.dw, -1
  tail call void @llvm.assume(i1 %i.dy)
  %i.dz = getelementptr inbounds nuw i8, ptr %.val11.i.i.i.i.i.i.i.i, i64 8
  %i.ea = load ptr, ptr %i.dz, align 8, !alias.scope !58839, !noalias !58838, !nonnull !28, !noundef !28
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 %i.dw
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.eb, ptr nonnull readonly align 1 %i.dx, i64 %i.dp, i1 false), !noalias !58840
  %i.ec = add nuw i64 %i.dw, %i.dp
  store i64 %i.ec, ptr %i.dr, align 8, !alias.scope !58839, !noalias !58838
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !58830
  br label %bb.y

bb.y:                                             ; preds = %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h72fa3e6555b23f3cE.exit.i.i.i.i.i", %bb.l
  br i1 %.not38.i.i.i.i.i, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  call fastcc void @_ZN10serde_core3ser12SerializeMap15serialize_entry17h1dc3500615032f06E(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1108, i64 noundef 23, i8 %i.ai)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.ed = load ptr, ptr %i.b, align 8, !noalias !58784, !nonnull !28, !align !35, !noundef !28
  %i.ee = load i8, ptr %i.bc, align 8, !range !42, !noalias !58784, !noundef !28
  %.val.i.i.i.i.i = load ptr, ptr %i.ed, align 8, !noalias !58841 ; 5 uses
  %i.ef = icmp eq i8 %i.ee, 0
  br i1 %i.ef, label %"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$14serialize_some17hab6c834b4fa79c18E.exit.i.i.i", label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i.i) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58842)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58843)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58844)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58845)
  %i.eg = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 16 ; 3 uses
  %i.eh = load i64, ptr %i.eg, align 8, !alias.scope !58846, !noalias !58847, !noundef !28 ; 3 uses
  %i.ei = load i64, ptr %.val.i.i.i.i.i, align 8, !range !29, !alias.scope !58846, !noalias !58847, !noundef !28
  %i.ej = icmp eq i64 %i.ei, %i.eh
  br i1 %i.ej, label %bb.ac, label %_ZN10serde_json3ser9Formatter10end_object17h325f3d47e1b1e2e2E.exit.i.i48.i.i.i.i.i, !prof !30

bb.ac:                                            ; preds = %bb.ab
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hbfe87a90490e90eaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i.i.i.i, i64 noundef %i.eh, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !58847
  %.pre.i.i.i.i.i.i.i.i49.i.i.i.i.i = load i64, ptr %i.eg, align 8, !alias.scope !58848, !noalias !58847
  br label %_ZN10serde_json3ser9Formatter10end_object17h325f3d47e1b1e2e2E.exit.i.i48.i.i.i.i.i

_ZN10serde_json3ser9Formatter10end_object17h325f3d47e1b1e2e2E.exit.i.i48.i.i.i.i.i: ; preds = %bb.ac, %bb.ab
  %i.ek = phi i64 [ %i.eh, %bb.ab ], [ %.pre.i.i.i.i.i.i.i.i49.i.i.i.i.i, %bb.ac ] ; 3 uses
  %i.el = icmp sgt i64 %i.ek, -1
  tail call void @llvm.assume(i1 %i.el)
  %i.em = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 8
  %i.en = load ptr, ptr %i.em, align 8, !alias.scope !58848, !noalias !58847, !nonnull !28, !noundef !28
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 %i.ek
  store i8 125, ptr %i.eo, align 1, !noalias !58849
  %i.ep = add nuw i64 %i.ek, 1
  store i64 %i.ep, ptr %i.eg, align 8, !alias.scope !58848, !noalias !58847
  br label %"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$14serialize_some17hab6c834b4fa79c18E.exit.i.i.i"

"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$14serialize_some17hab6c834b4fa79c18E.exit.i.i.i": ; preds = %_ZN10serde_json3ser9Formatter10end_object17h325f3d47e1b1e2e2E.exit.i.i48.i.i.i.i.i, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !58784
  br label %_ZN10serde_core3ser12SerializeMap15serialize_entry17h79060d0b330c8827E.exit

bb.ad:                                            ; preds = %_ZN10serde_json3ser9Formatter18begin_object_value17h6d3bc186cdc16551E.exit.i.i
  %.val.i.i.i = load ptr, ptr %i.c, align 8, !alias.scope !58777, !noalias !58850, !nonnull !28, !align !35, !noundef !28 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58851)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58852)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58853)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58854)
  %i.eq = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 16 ; 3 uses
  %i.er = load i64, ptr %i.eq, align 8, !alias.scope !58855, !noalias !58856, !noundef !28 ; 3 uses
  %i.es = load i64, ptr %.val.i.i.i, align 8, !range !29, !alias.scope !58855, !noalias !58856, !noundef !28
  %i.et = sub i64 %i.es, %i.er
  %i.eu = icmp ult i64 %i.et, 4
  br i1 %i.eu, label %bb.ae, label %"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$14serialize_none17h5a51276ae0ab8e9eE.exit.i.i.i", !prof !30

bb.ae:                                            ; preds = %bb.ad
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hbfe87a90490e90eaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i.i, i64 noundef %i.er, i64 noundef 4, i64 noundef 1, i64 noundef 1), !noalias !58856
  %.pre.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.eq, align 8, !alias.scope !58857, !noalias !58856
  br label %"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$14serialize_none17h5a51276ae0ab8e9eE.exit.i.i.i"

"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$14serialize_none17h5a51276ae0ab8e9eE.exit.i.i.i": ; preds = %bb.ae, %bb.ad
  %i.ev = phi i64 [ %i.er, %bb.ad ], [ %.pre.i.i.i.i.i.i.i.i.i.i.i, %bb.ae ] ; 3 uses
  %i.ew = icmp sgt i64 %i.ev, -1
  tail call void @llvm.assume(i1 %i.ew)
  %i.ex = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 8
  %i.ey = load ptr, ptr %i.ex, align 8, !alias.scope !58857, !noalias !58856, !nonnull !28, !noundef !28
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 %i.ev
  store i32 1819047278, ptr %i.ez, align 1, !noalias !58858
  %i.fa = add nuw i64 %i.ev, 4
  store i64 %i.fa, ptr %i.eq, align 8, !alias.scope !58857, !noalias !58856
  br label %_ZN10serde_core3ser12SerializeMap15serialize_entry17h79060d0b330c8827E.exit

_ZN10serde_core3ser12SerializeMap15serialize_entry17h79060d0b330c8827E.exit: ; preds = %"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$14serialize_some17hab6c834b4fa79c18E.exit.i.i.i", %"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$14serialize_none17h5a51276ae0ab8e9eE.exit.i.i.i"
  ret ptr null
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noalias noundef align 8 ptr @"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h271d7999f04e50f3E"(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, i8 %.0.val, i8 %.1.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58960)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58961)
  %i.b = load ptr, ptr %0, align 8, !alias.scope !58962, !noalias !58963, !nonnull !28, !align !35, !noundef !28 ; 6 uses
end_hunk_8
begin_hunk_9_@"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h5145220c1c40709dE":bb.a
  br i1 %.not48.i.i.i.i.i, label %bb.k, label %bb.ae

bb.k:                                             ; preds = %bb.j
  tail call void @llvm.experimental.noalias.scope.decl(metadata !59366)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !59367)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !59368)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !59369)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !59370)
  %i.bg = load ptr, ptr %i.b, align 8, !alias.scope !59371, !noalias !59372, !nonnull !28, !align !35, !noundef !28 ; 4 uses
  %i.bh = load i8, ptr %i.bf, align 8, !range !42, !alias.scope !59371, !noalias !59372, !noundef !28
  %i.bi = icmp eq i8 %i.bh, 1
  %.val.i.i.i.i.i.i.i.i = load ptr, ptr %i.bg, align 8, !noalias !59373 ; 6 uses
  br i1 %i.bi, label %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit.i.i.i.i.i.i.i", label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i.i.i.i.i) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !59374)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !59375)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !59376)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !59377)
  %i.bj = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i, i64 16 ; 3 uses
  %i.bk = load i64, ptr %i.bj, align 8, !alias.scope !59378, !noalias !59379, !noundef !28 ; 3 uses
  %i.bl = load i64, ptr %.val.i.i.i.i.i.i.i.i, align 8, !range !29, !alias.scope !59378, !noalias !59379, !noundef !28
  %i.bm = icmp eq i64 %i.bl, %i.bk
  br i1 %i.bm, label %bb.m, label %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h4ab301283a333dfdE.exit.i.i.i.i.i.i.i.i.i", !prof !30

bb.m:                                             ; preds = %bb.l
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hbfe87a90490e90eaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i.i.i.i.i.i.i, i64 noundef %i.bk, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !59379
  %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.bj, align 8, !alias.scope !59380, !noalias !59379
  br label %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h4ab301283a333dfdE.exit.i.i.i.i.i.i.i.i.i"

"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h4ab301283a333dfdE.exit.i.i.i.i.i.i.i.i.i": ; preds = %bb.m, %bb.l
  %i.bn = phi i64 [ %i.bk, %bb.l ], [ %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.m ] ; 3 uses
  %i.bo = icmp sgt i64 %i.bn, -1
  tail call void @llvm.assume(i1 %i.bo)
  %i.bp = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8, !alias.scope !59380, !noalias !59379, !nonnull !28, !noundef !28
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.bn
  store i8 44, ptr %i.br, align 1, !noalias !59381
  %i.bs = add nuw i64 %i.bn, 1
  store i64 %i.bs, ptr %i.bj, align 8, !alias.scope !59380, !noalias !59379
  %.val9.pre.i.i.i.i.i.i.i.i = load ptr, ptr %i.bg, align 8, !noalias !59373
  br label %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit.i.i.i.i.i.i.i"

"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit.i.i.i.i.i.i.i": ; preds = %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h4ab301283a333dfdE.exit.i.i.i.i.i.i.i.i.i", %bb.k
  %.val9.i.i.i.i.i.i.i.i = phi ptr [ %.val.i.i.i.i.i.i.i.i, %bb.k ], [ %.val9.pre.i.i.i.i.i.i.i.i, %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h4ab301283a333dfdE.exit.i.i.i.i.i.i.i.i.i" ]
  store i8 2, ptr %i.bf, align 8, !alias.scope !59371, !noalias !59372
  tail call fastcc void @"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_str17hf58c26c162f17e29E"(ptr nonnull %.val9.i.i.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1088, i64 noundef 10)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !59382)
  %.val.i4.i.i.i.i.i.i.i = load ptr, ptr %i.bg, align 8, !noalias !59383, !nonnull !28, !align !35, !noundef !28 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !59384)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !59385)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !59386)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !59387)
  %i.bt = getelementptr inbounds nuw i8, ptr %.val.i4.i.i.i.i.i.i.i, i64 16 ; 3 uses
  %i.bu = load i64, ptr %i.bt, align 8, !alias.scope !59388, !noalias !59389, !noundef !28 ; 3 uses
  %i.bv = load i64, ptr %.val.i4.i.i.i.i.i.i.i, align 8, !range !29, !alias.scope !59388, !noalias !59389, !noundef !28
  %i.bw = icmp eq i64 %i.bv, %i.bu
  br i1 %i.bw, label %bb.n, label %bb.o, !prof !30

bb.n:                                             ; preds = %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit.i.i.i.i.i.i.i"
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hbfe87a90490e90eaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i4.i.i.i.i.i.i.i, i64 noundef %i.bu, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !59389
  %.pre.i.i.i.i.i.i.i6.i.i.i.i.i.i.i = load i64, ptr %i.bt, align 8, !alias.scope !59390, !noalias !59389
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit.i.i.i.i.i.i.i"
  %i.bx = phi i64 [ %i.bu, %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit.i.i.i.i.i.i.i" ], [ %.pre.i.i.i.i.i.i.i6.i.i.i.i.i.i.i, %bb.n ] ; 3 uses
  %i.by = icmp sgt i64 %i.bx, -1
  tail call void @llvm.assume(i1 %i.by)
  %i.bz = getelementptr inbounds nuw i8, ptr %.val.i4.i.i.i.i.i.i.i, i64 8
  %i.ca = load ptr, ptr %i.bz, align 8, !alias.scope !59390, !noalias !59389, !nonnull !28, !noundef !28
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.bx
  store i8 58, ptr %i.cb, align 1, !noalias !59391
  %i.cc = add nuw i64 %i.bx, 1
  store i64 %i.cc, ptr %i.bt, align 8, !alias.scope !59390, !noalias !59389
  %.val9.i5.i.i.i.i.i.i.i = load ptr, ptr %i.bg, align 8, !noalias !59383, !nonnull !28, !noundef !28 ; 18 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !59392)
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val2.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.cd, align 8, !alias.scope !59393, !noalias !59394 ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val3.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ce, align 8, !alias.scope !59393, !noalias !59394 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !59395)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !59396)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !59397)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !59398)
  %i.cf = getelementptr inbounds nuw i8, ptr %.val9.i5.i.i.i.i.i.i.i, i64 16 ; 16 uses
  %i.cg = load i64, ptr %i.cf, align 8, !alias.scope !59399, !noalias !59400, !noundef !28 ; 3 uses
  %i.ch = load i64, ptr %.val9.i5.i.i.i.i.i.i.i, align 8, !range !29, !alias.scope !59399, !noalias !59400, !noundef !28
  %i.ci = icmp eq i64 %i.ch, %i.cg
  br i1 %i.ci, label %bb.p, label %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i", !prof !30

bb.p:                                             ; preds = %bb.o
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hbfe87a90490e90eaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val9.i5.i.i.i.i.i.i.i, i64 noundef %i.cg, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !59400
  %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.cf, align 8, !alias.scope !59401, !noalias !59400
  br label %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i"

"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.p, %bb.o
  %i.cj = phi i64 [ %i.cg, %bb.o ], [ %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.p ] ; 3 uses
  %i.ck = icmp sgt i64 %i.cj, -1
  tail call void @llvm.assume(i1 %i.ck)
  %i.cl = getelementptr inbounds nuw i8, ptr %.val9.i5.i.i.i.i.i.i.i, i64 8 ; 7 uses
  %i.cm = load ptr, ptr %i.cl, align 8, !alias.scope !59401, !noalias !59400, !nonnull !28, !noundef !28
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 %i.cj
  store i8 123, ptr %i.cn, align 1, !noalias !59402
  %i.co = add nuw i64 %i.cj, 1
  store i64 %i.co, ptr %i.cf, align 8, !alias.scope !59401, !noalias !59400
  tail call fastcc void @"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_str17hf58c26c162f17e29E"(ptr nonnull %.val9.i5.i.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1082, i64 noundef 8)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !59403)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !59404)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !59405)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !59406)
  %i.cp = load i64, ptr %i.cf, align 8, !alias.scope !59407, !noalias !59408, !noundef !28 ; 3 uses
  %i.cq = load i64, ptr %.val9.i5.i.i.i.i.i.i.i, align 8, !range !29, !alias.scope !59407, !noalias !59408, !noundef !28
  %i.cr = icmp eq i64 %i.cq, %i.cp
  br i1 %i.cr, label %bb.q, label %_ZN10serde_json3ser9Formatter18begin_object_value17h6d3bc186cdc16551E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !prof !30

bb.q:                                             ; preds = %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i"
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hbfe87a90490e90eaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val9.i5.i.i.i.i.i.i.i, i64 noundef %i.cp, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !59408
  %.pre.i.i.i.i.i.i.i7.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.cf, align 8, !alias.scope !59409, !noalias !59408
  br label %_ZN10serde_json3ser9Formatter18begin_object_value17h6d3bc186cdc16551E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZN10serde_json3ser9Formatter18begin_object_value17h6d3bc186cdc16551E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.q, %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %i.cs = phi i64 [ %i.cp, %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %.pre.i.i.i.i.i.i.i7.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.q ] ; 3 uses
  %i.ct = icmp sgt i64 %i.cs, -1
  tail call void @llvm.assume(i1 %i.ct)
  %i.cu = load ptr, ptr %i.cl, align 8, !alias.scope !59409, !noalias !59408, !nonnull !28, !noundef !28
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.cs
  store i8 58, ptr %i.cv, align 1, !noalias !59410
  %i.cw = add nuw i64 %i.cs, 1                    ; 4 uses
  store i64 %i.cw, ptr %i.cf, align 8, !alias.scope !59409, !noalias !59408
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = shl nuw nsw i64 %.val3.i.i.i.i.i.i.i.i.i, 2
  %i.cx = getelementptr inbounds nuw i8, ptr %.val2.i.i.i.i.i.i.i.i.i, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i.i.i.i.i.i.i.i.i) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !59411)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !59412)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !59413)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !59414)
  %i.cy = load i64, ptr %.val9.i5.i.i.i.i.i.i.i, align 8, !range !29, !alias.scope !59415, !noalias !59416, !noundef !28
  %i.cz = icmp eq i64 %i.cy, %i.cw
  br i1 %i.cz, label %bb.r, label %_ZN10serde_json3ser9Formatter11begin_array17hf03f0e5cad3cbeb7E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !prof !30

bb.r:                                             ; preds = %_ZN10serde_json3ser9Formatter18begin_object_value17h6d3bc186cdc16551E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hbfe87a90490e90eaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val9.i5.i.i.i.i.i.i.i, i64 noundef %i.cw, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !59416
  %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.cf, align 8, !alias.scope !59417, !noalias !59416
  br label %_ZN10serde_json3ser9Formatter11begin_array17hf03f0e5cad3cbeb7E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZN10serde_json3ser9Formatter11begin_array17hf03f0e5cad3cbeb7E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.r, %_ZN10serde_json3ser9Formatter18begin_object_value17h6d3bc186cdc16551E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.da = phi i64 [ %i.cw, %_ZN10serde_json3ser9Formatter18begin_object_value17h6d3bc186cdc16551E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.r ] ; 3 uses
  %i.db = icmp sgt i64 %i.da, -1
  tail call void @llvm.assume(i1 %i.db)
  %i.dc = load ptr, ptr %i.cl, align 8, !alias.scope !59417, !noalias !59416, !nonnull !28, !noundef !28
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.da
  store i8 91, ptr %i.dd, align 1, !noalias !59418
  %i.de = add nuw i64 %i.da, 1                    ; 5 uses
  store i64 %i.de, ptr %i.cf, align 8, !alias.scope !59417, !noalias !59416
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %.val3.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.s, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.s:                                             ; preds = %_ZN10serde_json3ser9Formatter11begin_array17hf03f0e5cad3cbeb7E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.df = load i64, ptr %.val9.i5.i.i.i.i.i.i.i, align 8, !range !29, !alias.scope !59419, !noalias !59420, !noundef !28
  %i.dg = icmp eq i64 %i.df, %i.de
  br i1 %i.dg, label %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeSeq$GT$3end17h918aa763fb13009fE.exit.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", label %bb.ac, !prof !30

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:       ; preds = %_ZN10serde_json3ser9Formatter11begin_array17hf03f0e5cad3cbeb7E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17ha2791a584dc3ae14E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %i.dh = phi i64 [ %i.fr, %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17ha2791a584dc3ae14E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %i.de, %_ZN10serde_json3ser9Formatter11begin_array17hf03f0e5cad3cbeb7E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 4 uses
  %i.di = phi i1 [ false, %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17ha2791a584dc3ae14E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ true, %_ZN10serde_json3ser9Formatter11begin_array17hf03f0e5cad3cbeb7E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.dj = phi ptr [ %i.dk, %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17ha2791a584dc3ae14E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %.val2.i.i.i.i.i.i.i.i.i, %_ZN10serde_json3ser9Formatter11begin_array17hf03f0e5cad3cbeb7E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 4 ; 2 uses
  %.val8.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i32, ptr %i.dj, align 4, !noalias !59421 ; 2 uses
  br i1 %i.di, label %_ZN10serde_json3ser9Formatter17begin_array_value17h99dd1a34b9f19112E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.t

bb.t:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !59422)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !59423)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !59424)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !59425)
  %i.dl = load i64, ptr %.val9.i5.i.i.i.i.i.i.i, align 8, !range !29, !alias.scope !59426, !noalias !59427, !noundef !28
  %i.dm = icmp eq i64 %i.dl, %i.dh
  br i1 %i.dm, label %bb.u, label %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h4ab301283a333dfdE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", !prof !30

bb.u:                                             ; preds = %bb.t
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hbfe87a90490e90eaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val9.i5.i.i.i.i.i.i.i, i64 noundef %i.dh, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !59427
  %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.cf, align 8, !alias.scope !59428, !noalias !59427
  br label %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h4ab301283a333dfdE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"

"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h4ab301283a333dfdE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.u, %bb.t
  %i.dn = phi i64 [ %i.dh, %bb.t ], [ %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.u ] ; 3 uses
  %i.do = icmp sgt i64 %i.dn, -1
  tail call void @llvm.assume(i1 %i.do)
  %i.dp = load ptr, ptr %i.cl, align 8, !alias.scope !59428, !noalias !59427, !nonnull !28, !noundef !28
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.dn
  store i8 44, ptr %i.dq, align 1, !noalias !59429
  %i.dr = add nuw i64 %i.dn, 1                    ; 2 uses
  store i64 %i.dr, ptr %i.cf, align 8, !alias.scope !59428, !noalias !59427
  br label %_ZN10serde_json3ser9Formatter17begin_array_value17h99dd1a34b9f19112E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZN10serde_json3ser9Formatter17begin_array_value17h99dd1a34b9f19112E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h4ab301283a333dfdE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ds = phi i64 [ %i.dr, %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h4ab301283a333dfdE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %i.dh, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !59430
  tail call void @llvm.experimental.noalias.scope.decl(metadata !59431)
  %2 = icmp sgt i32 %.val8.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, -1
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = tail call i32 @llvm.abs.i32(i32 %.val8.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i1 false) ; 3 uses
  %i.dt = icmp ugt i32 %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 9999
  br i1 %i.dt, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN10serde_json3ser9Formatter17begin_array_value17h99dd1a34b9f19112E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.09.0.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 11, %_ZN10serde_json3ser9Formatter17begin_array_value17h99dd1a34b9f19112E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ed, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.0.1.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN10serde_json3ser9Formatter17begin_array_value17h99dd1a34b9f19112E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.dw, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.du = icmp samesign ugt i32 %.sroa.0.1.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 99
  br i1 %i.du, label %bb.v, label %bb.w

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZN10serde_json3ser9Formatter17begin_array_value17h99dd1a34b9f19112E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.0.129.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.dw, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN10serde_json3ser9Formatter17begin_array_value17h99dd1a34b9f19112E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %.sroa.09.028.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ed, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ 11, %_ZN10serde_json3ser9Formatter17begin_array_value17h99dd1a34b9f19112E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.dv = urem i32 %.sroa.0.129.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 10000
  %i.dw = udiv i32 %.sroa.0.129.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 10000 ; 2 uses
  %.lhs.trunc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = trunc nuw nsw i32 %i.dv to i16 ; 2 uses
  %i.dx = udiv i16 %.lhs.trunc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 100
  %i.dy = shl nuw nsw i16 %i.dx, 1
  %i.dz = zext nneg i16 %i.dy to i64
  %i.ea = urem i16 %.lhs.trunc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 100
  %i.eb = shl nuw nsw i16 %i.ea, 1
  %i.ec = zext nneg i16 %i.eb to i64
  %i.ed = add i64 %.sroa.09.028.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, -4 ; 3 uses
  %i.ee = getelementptr inbounds nuw i8, ptr @849, i64 %i.dz
  %i.ef = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ed
  %i.eg = load i16, ptr %i.ee, align 1, !noalias !59432
  store i16 %i.eg, ptr %i.ef, align 1, !alias.scope !59431, !noalias !59430
  %i.eh = getelementptr inbounds nuw i8, ptr @849, i64 %i.ec
  %i.ei = getelementptr i8, ptr %i.a, i64 %.sroa.09.028.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ej = getelementptr i8, ptr %i.ei, i64 -2
  %i.ek = load i16, ptr %i.eh, align 1, !noalias !59432
  store i16 %i.ek, ptr %i.ej, align 1, !alias.scope !59431, !noalias !59430
  %i.el = icmp ugt i32 %.sroa.0.129.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 99999999
  br i1 %i.el, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.v:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.lhs.trunc24.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = trunc nuw i32 %.sroa.0.1.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i to i16 ; 2 uses
  %i.em = urem i16 %.lhs.trunc24.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 100
  %i.en = shl nuw nsw i16 %i.em, 1
  %i.eo = zext nneg i16 %i.en to i64
  %i.ep = udiv i16 %.lhs.trunc24.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 100
  %.zext27.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = zext nneg i16 %i.ep to i32
  %i.eq = add i64 %.sroa.09.0.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, -2 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr @849, i64 %i.eo
  %i.es = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.eq
  %i.et = load i16, ptr %i.er, align 1, !noalias !59432
  store i16 %i.et, ptr %i.es, align 1, !alias.scope !59431, !noalias !59430
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.09.1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.eq, %bb.v ], [ %.sroa.09.0.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.0.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %.zext27.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.v ], [ %.sroa.0.1.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.eu = icmp samesign ult i32 %.sroa.0.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 10
  br i1 %i.eu, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ev = shl nuw nsw i32 %.sroa.0.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 1
  %i.ew = zext nneg i32 %i.ev to i64
  %i.ex = add i64 %.sroa.09.1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, -2 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr @849, i64 %i.ew
  %i.ez = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ex
  %i.fa = load i16, ptr %i.ey, align 1, !noalias !59432
  store i16 %i.fa, ptr %i.ez, align 1, !alias.scope !59431, !noalias !59430
  br label %bb.z

bb.y:                                             ; preds = %bb.w
  %i.fb = add i64 %.sroa.09.1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, -1 ; 2 uses
  %i.fc = trunc nuw nsw i32 %.sroa.0.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i to i8
  %i.fd = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.fb
  %i.fe = or disjoint i8 %i.fc, 48
  store i8 %i.fe, ptr %i.fd, align 1, !alias.scope !59431, !noalias !59430
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.sroa.09.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.fb, %bb.y ], [ %i.ex, %bb.x ] ; 2 uses
  br i1 %2, label %"_ZN4itoa55_$LT$impl$u20$itoa..private..Sealed$u20$for$u20$i32$GT$5write17h60888a2bbedeb6fbE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ff = add i64 %.sroa.09.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, -1 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ff
  store i8 45, ptr %i.fg, align 1, !alias.scope !59431, !noalias !59430
  br label %"_ZN4itoa55_$LT$impl$u20$itoa..private..Sealed$u20$for$u20$i32$GT$5write17h60888a2bbedeb6fbE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"

"_ZN4itoa55_$LT$impl$u20$itoa..private..Sealed$u20$for$u20$i32$GT$5write17h60888a2bbedeb6fbE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.aa, %bb.z
  %.sroa.09.3.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.09.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.z ], [ %i.ff, %bb.aa ] ; 2 uses
  %i.fh = sub i64 11, %.sroa.09.3.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ; 5 uses
  %i.fi = icmp ult i64 %i.fh, 12
  tail call void @llvm.assume(i1 %i.fi)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !59433)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !59434)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !59435)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !59436)
  %i.fj = load i64, ptr %.val9.i5.i.i.i.i.i.i.i, align 8, !range !29, !alias.scope !59437, !noalias !59438, !noundef !28
  %i.fk = sub i64 %i.fj, %i.ds
  %i.fl = icmp ugt i64 %i.fh, %i.fk
  br i1 %i.fl, label %bb.ab, label %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17ha2791a584dc3ae14E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", !prof !30

bb.ab:                                            ; preds = %"_ZN4itoa55_$LT$impl$u20$itoa..private..Sealed$u20$for$u20$i32$GT$5write17h60888a2bbedeb6fbE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hbfe87a90490e90eaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val9.i5.i.i.i.i.i.i.i, i64 noundef %i.ds, i64 noundef %i.fh, i64 noundef 1, i64 noundef 1), !noalias !59438
  %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.cf, align 8, !alias.scope !59439, !noalias !59438
  br label %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17ha2791a584dc3ae14E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"

"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17ha2791a584dc3ae14E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.ab, %"_ZN4itoa55_$LT$impl$u20$itoa..private..Sealed$u20$for$u20$i32$GT$5write17h60888a2bbedeb6fbE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %i.fm = phi i64 [ %i.ds, %"_ZN4itoa55_$LT$impl$u20$itoa..private..Sealed$u20$for$u20$i32$GT$5write17h60888a2bbedeb6fbE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ab ] ; 3 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.09.3.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.fo = icmp sgt i64 %i.fm, -1
  tail call void @llvm.assume(i1 %i.fo)
  %i.fp = load ptr, ptr %i.cl, align 8, !alias.scope !59439, !noalias !59438, !nonnull !28, !noundef !28
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 %i.fm
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.fq, ptr nonnull readonly align 1 %i.fn, i64 %i.fh, i1 false), !noalias !59440
  %i.fr = add nuw i64 %i.fm, %i.fh                ; 5 uses
  store i64 %i.fr, ptr %i.cf, align 8, !alias.scope !59439, !noalias !59438
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !59430
  %i.fs = icmp eq ptr %i.dk, %i.cx
  br i1 %i.fs, label %_ZN4core4iter6traits8iterator8Iterator12try_for_each17hd68f19dcfc464901E.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZN4core4iter6traits8iterator8Iterator12try_for_each17hd68f19dcfc464901E.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17ha2791a584dc3ae14E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %i.ft = load i64, ptr %.val9.i5.i.i.i.i.i.i.i, align 8, !range !29, !alias.scope !59441, !noalias !59442, !noundef !28
  %i.fu = icmp eq i64 %i.ft, %i.fr
  br i1 %i.fu, label %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeSeq$GT$3end17h918aa763fb13009fE.exit.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", label %bb.ac, !prof !30

"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeSeq$GT$3end17h918aa763fb13009fE.exit.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %_ZN4core4iter6traits8iterator8Iterator12try_for_each17hd68f19dcfc464901E.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.s
  %.lcssa21.sink.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.de, %bb.s ], [ %i.fr, %_ZN4core4iter6traits8iterator8Iterator12try_for_each17hd68f19dcfc464901E.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hbfe87a90490e90eaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val9.i5.i.i.i.i.i.i.i, i64 noundef %.lcssa21.sink.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !59443
  %.pre.i.i.i.i.i.i.i15.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.cf, align 8, !noalias !59443
  br label %bb.ac

bb.ac:                                            ; preds = %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeSeq$GT$3end17h918aa763fb13009fE.exit.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", %_ZN4core4iter6traits8iterator8Iterator12try_for_each17hd68f19dcfc464901E.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.s
  %.sink25.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.fr, %_ZN4core4iter6traits8iterator8Iterator12try_for_each17hd68f19dcfc464901E.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.de, %bb.s ], [ %.pre.i.i.i.i.i.i.i15.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeSeq$GT$3end17h918aa763fb13009fE.exit.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ] ; 3 uses
  %i.fv = icmp sgt i64 %.sink25.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, -1
  tail call void @llvm.assume(i1 %i.fv)
  %i.fw = load ptr, ptr %i.cl, align 8, !noalias !59443, !nonnull !28, !noundef !28
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 %.sink25.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  store i8 93, ptr %i.fx, align 1, !noalias !59443
  %i.fy = add nuw i64 %.sink25.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 4 uses
  store i64 %i.fy, ptr %i.cf, align 8, !noalias !59443
  tail call void @llvm.experimental.noalias.scope.decl(metadata !59444)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !59445)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !59446)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !59447)
  %i.fz = load i64, ptr %.val9.i5.i.i.i.i.i.i.i, align 8, !range !29, !alias.scope !59448, !noalias !59449, !noundef !28
  %i.ga = icmp eq i64 %i.fz, %i.fy
  br i1 %i.ga, label %bb.ad, label %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h76f73321ad414e56E.exit.i.i.i.i.i", !prof !30

bb.ad:                                            ; preds = %bb.ac
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hbfe87a90490e90eaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val9.i5.i.i.i.i.i.i.i, i64 noundef %i.fy, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !59449
  %.pre.i.i.i.i.i.i.i.i10.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.cf, align 8, !alias.scope !59450, !noalias !59449
  br label %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h76f73321ad414e56E.exit.i.i.i.i.i"

"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h76f73321ad414e56E.exit.i.i.i.i.i": ; preds = %bb.ad, %bb.ac
  %i.gb = phi i64 [ %i.fy, %bb.ac ], [ %.pre.i.i.i.i.i.i.i.i10.i.i.i.i.i.i.i.i.i.i.i, %bb.ad ] ; 3 uses
  %i.gc = icmp sgt i64 %i.gb, -1
  tail call void @llvm.assume(i1 %i.gc)
  %i.gd = load ptr, ptr %i.cl, align 8, !alias.scope !59450, !noalias !59449, !nonnull !28, !noundef !28
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 %i.gb
  store i8 125, ptr %i.ge, align 1, !noalias !59451
  %i.gf = add nuw i64 %i.gb, 1
  store i64 %i.gf, ptr %i.cf, align 8, !alias.scope !59450, !noalias !59449
  br label %bb.ae

bb.ae:                                            ; preds = %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h76f73321ad414e56E.exit.i.i.i.i.i", %bb.j
  br i1 %.not49.i.i.i.i.i, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  call fastcc void @_ZN10serde_core3ser12SerializeMap15serialize_entry17h1dc3500615032f06E(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1148, i64 noundef 14, i8 %i.af)
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  br i1 %.not50.i.i.i.i.i, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  call fastcc void @_ZN10serde_core3ser12SerializeMap15serialize_entry17h1dc3500615032f06E(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1149, i64 noundef 22, i8 %i.ai)
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  br i1 %.not51.i.i.i.i.i, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  call fastcc void @_ZN10serde_core3ser12SerializeMap15serialize_entry17h1dc3500615032f06E(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1107, i64 noundef 11, i8 %i.al)
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.gg = load ptr, ptr %i.b, align 8, !noalias !59342, !nonnull !28, !align !35, !noundef !28
  %i.gh = load i8, ptr %i.bf, align 8, !range !42, !noalias !59342, !noundef !28
  %.val.i.i.i.i.i = load ptr, ptr %i.gg, align 8, !noalias !59452 ; 5 uses
  %i.gi = icmp eq i8 %i.gh, 0
  br i1 %i.gi, label %"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$14serialize_some17hc806ffabd7f9d211E.exit.i.i.i", label %bb.al

bb.al:                                            ; preds = %bb.ak
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i.i) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !59453)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !59454)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !59455)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !59456)
  %i.gj = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 16 ; 3 uses
  %i.gk = load i64, ptr %i.gj, align 8, !alias.scope !59457, !noalias !59458, !noundef !28 ; 3 uses
  %i.gl = load i64, ptr %.val.i.i.i.i.i, align 8, !range !29, !alias.scope !59457, !noalias !59458, !noundef !28
  %i.gm = icmp eq i64 %i.gl, %i.gk
  br i1 %i.gm, label %bb.am, label %_ZN10serde_json3ser9Formatter10end_object17h325f3d47e1b1e2e2E.exit.i.i63.i.i.i.i.i, !prof !30

bb.am:                                            ; preds = %bb.al
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hbfe87a90490e90eaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i.i.i.i, i64 noundef %i.gk, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !59458
  %.pre.i.i.i.i.i.i.i.i64.i.i.i.i.i = load i64, ptr %i.gj, align 8, !alias.scope !59459, !noalias !59458
  br label %_ZN10serde_json3ser9Formatter10end_object17h325f3d47e1b1e2e2E.exit.i.i63.i.i.i.i.i

_ZN10serde_json3ser9Formatter10end_object17h325f3d47e1b1e2e2E.exit.i.i63.i.i.i.i.i: ; preds = %bb.am, %bb.al
  %i.gn = phi i64 [ %i.gk, %bb.al ], [ %.pre.i.i.i.i.i.i.i.i64.i.i.i.i.i, %bb.am ] ; 3 uses
end_hunk_9
begin_hunk_10_@"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h549e1fa3efcf2df8E":bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !60226)
  %i.b = load ptr, ptr %0, align 8, !alias.scope !60227, !noalias !60228, !nonnull !28, !align !35, !noundef !28 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load i8, ptr %i.c, align 8, !range !42, !alias.scope !60227, !noalias !60228, !noundef !28
  %i.e = icmp eq i8 %i.d, 1
  %.val.i.i = load ptr, ptr %i.b, align 8, !noalias !60229 ; 6 uses
  br i1 %i.e, label %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit.i", label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !60230)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !60231)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !60232)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !60233)
  %i.f = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 16 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !60234, !noalias !60235, !noundef !28 ; 3 uses
  %i.h = load i64, ptr %.val.i.i, align 8, !range !29, !alias.scope !60234, !noalias !60235, !noundef !28
  %i.i = icmp eq i64 %i.h, %i.g
  br i1 %i.i, label %bb.c, label %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h4ab301283a333dfdE.exit.i.i.i", !prof !30

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hbfe87a90490e90eaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i, i64 noundef %i.g, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !60235
  %.pre.i.i.i.i.i.i.i.i = load i64, ptr %i.f, align 8, !alias.scope !60236, !noalias !60235
  br label %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h4ab301283a333dfdE.exit.i.i.i"

"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h4ab301283a333dfdE.exit.i.i.i": ; preds = %bb.c, %bb.b
  %i.j = phi i64 [ %i.g, %bb.b ], [ %.pre.i.i.i.i.i.i.i.i, %bb.c ] ; 3 uses
  %i.k = icmp sgt i64 %i.j, -1
  tail call void @llvm.assume(i1 %i.k)
  %i.l = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !60236, !noalias !60235, !nonnull !28, !noundef !28
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.j
  store i8 44, ptr %i.n, align 1, !noalias !60237
  %i.o = add nuw i64 %i.j, 1
  store i64 %i.o, ptr %i.f, align 8, !alias.scope !60236, !noalias !60235
  %.val9.pre.i.i = load ptr, ptr %i.b, align 8, !noalias !60229
  br label %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit.i"

"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit.i": ; preds = %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h4ab301283a333dfdE.exit.i.i.i", %bb.a
  %.val9.i.i = phi ptr [ %.val.i.i, %bb.a ], [ %.val9.pre.i.i, %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h4ab301283a333dfdE.exit.i.i.i" ]
  store i8 2, ptr %i.c, align 8, !alias.scope !60227, !noalias !60228
  tail call fastcc void @"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_str17hf58c26c162f17e29E"(ptr nonnull %.val9.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1088, i64 noundef 10)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !60238)
  %.val.i4.i = load ptr, ptr %i.b, align 8, !noalias !60239, !nonnull !28, !align !35, !noundef !28 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !60240)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !60241)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !60242)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !60243)
  %i.p = getelementptr inbounds nuw i8, ptr %.val.i4.i, i64 16 ; 3 uses
  %i.q = load i64, ptr %i.p, align 8, !alias.scope !60244, !noalias !60245, !noundef !28 ; 3 uses
  %i.r = load i64, ptr %.val.i4.i, align 8, !range !29, !alias.scope !60244, !noalias !60245, !noundef !28
  %i.s = icmp eq i64 %i.r, %i.q
  br i1 %i.s, label %bb.d, label %_ZN10serde_json3ser9Formatter18begin_object_value17h6d3bc186cdc16551E.exit.i.i, !prof !30

bb.d:                                             ; preds = %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit.i"
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hbfe87a90490e90eaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i4.i, i64 noundef %i.q, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !60245
  %.pre.i.i.i.i.i.i.i6.i = load i64, ptr %i.p, align 8, !alias.scope !60246, !noalias !60245
  br label %_ZN10serde_json3ser9Formatter18begin_object_value17h6d3bc186cdc16551E.exit.i.i

_ZN10serde_json3ser9Formatter18begin_object_value17h6d3bc186cdc16551E.exit.i.i: ; preds = %bb.d, %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit.i"
  %i.t = phi i64 [ %i.q, %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit.i" ], [ %.pre.i.i.i.i.i.i.i6.i, %bb.d ] ; 3 uses
  %i.u = icmp sgt i64 %i.t, -1
  tail call void @llvm.assume(i1 %i.u)
  %i.v = getelementptr inbounds nuw i8, ptr %.val.i4.i, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !alias.scope !60246, !noalias !60245, !nonnull !28, !noundef !28
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.t
  store i8 58, ptr %i.x, align 1, !noalias !60247
  %i.y = add nuw i64 %i.t, 1
  store i64 %i.y, ptr %i.p, align 8, !alias.scope !60246, !noalias !60245
  %.val9.i5.i = load ptr, ptr %i.b, align 8, !noalias !60239 ; 24 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !60248)
  %i.z = load i64, ptr %1, align 8, !range !34, !alias.scope !60249, !noalias !60224, !noundef !28
  %.not.i.i.i = icmp eq i64 %i.z, -9223372036854775808
  br i1 %.not.i.i.i, label %bb.u, label %bb.e

bb.e:                                             ; preds = %_ZN10serde_json3ser9Formatter18begin_object_value17h6d3bc186cdc16551E.exit.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val2.i.i.i = load ptr, ptr %i.aa, align 8, !alias.scope !60249, !noalias !60224 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val3.i.i.i = load i64, ptr %i.ab, align 8, !alias.scope !60249, !noalias !60224 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9.i5.i) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !60250)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !60251)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !60252)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !60253)
  %i.ac = getelementptr inbounds nuw i8, ptr %.val9.i5.i, i64 16 ; 16 uses
  %i.ad = load i64, ptr %i.ac, align 8, !alias.scope !60254, !noalias !60255, !noundef !28 ; 3 uses
  %i.ae = load i64, ptr %.val9.i5.i, align 8, !range !29, !alias.scope !60254, !noalias !60255, !noundef !28
  %i.af = icmp eq i64 %i.ae, %i.ad
  br i1 %i.af, label %bb.f, label %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit.i.i.i.i.i.i.i", !prof !30

bb.f:                                             ; preds = %bb.e
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hbfe87a90490e90eaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val9.i5.i, i64 noundef %i.ad, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !60255
  %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ac, align 8, !alias.scope !60256, !noalias !60255
  br label %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit.i.i.i.i.i.i.i"

"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit.i.i.i.i.i.i.i": ; preds = %bb.f, %bb.e
  %i.ag = phi i64 [ %i.ad, %bb.e ], [ %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.f ] ; 3 uses
  %i.ah = icmp sgt i64 %i.ag, -1
  tail call void @llvm.assume(i1 %i.ah)
  %i.ai = getelementptr inbounds nuw i8, ptr %.val9.i5.i, i64 8 ; 7 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !alias.scope !60256, !noalias !60255, !nonnull !28, !noundef !28
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ag
  store i8 123, ptr %i.ak, align 1, !noalias !60257
  %i.al = add nuw i64 %i.ag, 1
  store i64 %i.al, ptr %i.ac, align 8, !alias.scope !60256, !noalias !60255
  tail call fastcc void @"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_str17hf58c26c162f17e29E"(ptr nonnull %.val9.i5.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1082, i64 noundef 8)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !60258)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !60259)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !60260)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !60261)
  %i.am = load i64, ptr %i.ac, align 8, !alias.scope !60262, !noalias !60263, !noundef !28 ; 3 uses
  %i.an = load i64, ptr %.val9.i5.i, align 8, !range !29, !alias.scope !60262, !noalias !60263, !noundef !28
  %i.ao = icmp eq i64 %i.an, %i.am
  br i1 %i.ao, label %bb.g, label %_ZN10serde_json3ser9Formatter18begin_object_value17h6d3bc186cdc16551E.exit.i.i.i.i.i.i.i.i, !prof !30

bb.g:                                             ; preds = %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit.i.i.i.i.i.i.i"
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hbfe87a90490e90eaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val9.i5.i, i64 noundef %i.am, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !60263
  %.pre.i.i.i.i.i.i.i7.i.i.i.i.i.i.i = load i64, ptr %i.ac, align 8, !alias.scope !60264, !noalias !60263
  br label %_ZN10serde_json3ser9Formatter18begin_object_value17h6d3bc186cdc16551E.exit.i.i.i.i.i.i.i.i

_ZN10serde_json3ser9Formatter18begin_object_value17h6d3bc186cdc16551E.exit.i.i.i.i.i.i.i.i: ; preds = %bb.g, %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit.i.i.i.i.i.i.i"
  %i.ap = phi i64 [ %i.am, %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit.i.i.i.i.i.i.i" ], [ %.pre.i.i.i.i.i.i.i7.i.i.i.i.i.i.i, %bb.g ] ; 3 uses
  %i.aq = icmp sgt i64 %i.ap, -1
  tail call void @llvm.assume(i1 %i.aq)
  %i.ar = load ptr, ptr %i.ai, align 8, !alias.scope !60264, !noalias !60263, !nonnull !28, !noundef !28
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.ap
  store i8 58, ptr %i.as, align 1, !noalias !60265
  %i.at = add nuw i64 %i.ap, 1                    ; 4 uses
  store i64 %i.at, ptr %i.ac, align 8, !alias.scope !60264, !noalias !60263
  %.idx.i.i.i.i.i.i.i.i.i.i = shl nuw nsw i64 %.val3.i.i.i, 2
  %i.au = getelementptr inbounds nuw i8, ptr %.val2.i.i.i, i64 %.idx.i.i.i.i.i.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i.i.i) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !60266)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !60267)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !60268)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !60269)
  %i.av = load i64, ptr %.val9.i5.i, align 8, !range !29, !alias.scope !60270, !noalias !60271, !noundef !28
  %i.aw = icmp eq i64 %i.av, %i.at
  br i1 %i.aw, label %bb.h, label %_ZN10serde_json3ser9Formatter11begin_array17hf03f0e5cad3cbeb7E.exit.i.i.i.i.i.i.i.i.i.i.i, !prof !30

bb.h:                                             ; preds = %_ZN10serde_json3ser9Formatter18begin_object_value17h6d3bc186cdc16551E.exit.i.i.i.i.i.i.i.i
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hbfe87a90490e90eaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val9.i5.i, i64 noundef %i.at, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !60271
  %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ac, align 8, !alias.scope !60272, !noalias !60271
  br label %_ZN10serde_json3ser9Formatter11begin_array17hf03f0e5cad3cbeb7E.exit.i.i.i.i.i.i.i.i.i.i.i

_ZN10serde_json3ser9Formatter11begin_array17hf03f0e5cad3cbeb7E.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.h, %_ZN10serde_json3ser9Formatter18begin_object_value17h6d3bc186cdc16551E.exit.i.i.i.i.i.i.i.i
  %i.ax = phi i64 [ %i.at, %_ZN10serde_json3ser9Formatter18begin_object_value17h6d3bc186cdc16551E.exit.i.i.i.i.i.i.i.i ], [ %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.h ] ; 3 uses
  %i.ay = icmp sgt i64 %i.ax, -1
  tail call void @llvm.assume(i1 %i.ay)
  %i.az = load ptr, ptr %i.ai, align 8, !alias.scope !60272, !noalias !60271, !nonnull !28, !noundef !28
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.ax
  store i8 91, ptr %i.ba, align 1, !noalias !60273
  %i.bb = add nuw i64 %i.ax, 1                    ; 5 uses
  store i64 %i.bb, ptr %i.ac, align 8, !alias.scope !60272, !noalias !60271
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %.val3.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i

bb.i:                                             ; preds = %_ZN10serde_json3ser9Formatter11begin_array17hf03f0e5cad3cbeb7E.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.bc = load i64, ptr %.val9.i5.i, align 8, !range !29, !alias.scope !60274, !noalias !60275, !noundef !28
  %i.bd = icmp eq i64 %i.bc, %i.bb
  br i1 %i.bd, label %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeSeq$GT$3end17h918aa763fb13009fE.exit.sink.split.i.i.i.i.i.i.i.i.i.i", label %bb.s, !prof !30

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i:                   ; preds = %_ZN10serde_json3ser9Formatter11begin_array17hf03f0e5cad3cbeb7E.exit.i.i.i.i.i.i.i.i.i.i.i, %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h293edf2d25b61a0dE.exit.i.i.i.i.i.i.i.i.i.i.i.i"
  %i.be = phi i64 [ %i.do, %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h293edf2d25b61a0dE.exit.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %i.bb, %_ZN10serde_json3ser9Formatter11begin_array17hf03f0e5cad3cbeb7E.exit.i.i.i.i.i.i.i.i.i.i.i ] ; 4 uses
  %i.bf = phi i1 [ false, %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h293edf2d25b61a0dE.exit.i.i.i.i.i.i.i.i.i.i.i.i" ], [ true, %_ZN10serde_json3ser9Formatter11begin_array17hf03f0e5cad3cbeb7E.exit.i.i.i.i.i.i.i.i.i.i.i ]
  %i.bg = phi ptr [ %i.bh, %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h293edf2d25b61a0dE.exit.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %.val2.i.i.i, %_ZN10serde_json3ser9Formatter11begin_array17hf03f0e5cad3cbeb7E.exit.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 4 ; 2 uses
  %.val8.i.i.i.i.i.i.i.i.i.i.i.i = load i32, ptr %i.bg, align 4, !noalias !60276 ; 2 uses
  br i1 %i.bf, label %_ZN10serde_json3ser9Formatter17begin_array_value17h99dd1a34b9f19112E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !60277)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !60278)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !60279)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !60280)
  %i.bi = load i64, ptr %.val9.i5.i, align 8, !range !29, !alias.scope !60281, !noalias !60282, !noundef !28
  %i.bj = icmp eq i64 %i.bi, %i.be
  br i1 %i.bj, label %bb.k, label %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h4ab301283a333dfdE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", !prof !30

bb.k:                                             ; preds = %bb.j
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hbfe87a90490e90eaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val9.i5.i, i64 noundef %i.be, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !60282
  %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ac, align 8, !alias.scope !60283, !noalias !60282
  br label %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h4ab301283a333dfdE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"

"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h4ab301283a333dfdE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.k, %bb.j
  %i.bk = phi i64 [ %i.be, %bb.j ], [ %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.k ] ; 3 uses
  %i.bl = icmp sgt i64 %i.bk, -1
  tail call void @llvm.assume(i1 %i.bl)
  %i.bm = load ptr, ptr %i.ai, align 8, !alias.scope !60283, !noalias !60282, !nonnull !28, !noundef !28
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.bk
  store i8 44, ptr %i.bn, align 1, !noalias !60284
  %i.bo = add nuw i64 %i.bk, 1                    ; 2 uses
  store i64 %i.bo, ptr %i.ac, align 8, !alias.scope !60283, !noalias !60282
  br label %_ZN10serde_json3ser9Formatter17begin_array_value17h99dd1a34b9f19112E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZN10serde_json3ser9Formatter17begin_array_value17h99dd1a34b9f19112E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h4ab301283a333dfdE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bp = phi i64 [ %i.bo, %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h4ab301283a333dfdE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %i.be, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !60285
  tail call void @llvm.experimental.noalias.scope.decl(metadata !60286)
  %2 = icmp sgt i32 %.val8.i.i.i.i.i.i.i.i.i.i.i.i, -1
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = tail call i32 @llvm.abs.i32(i32 %.val8.i.i.i.i.i.i.i.i.i.i.i.i, i1 false) ; 3 uses
  %i.bq = icmp ugt i32 %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 9999
  br i1 %i.bq, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN10serde_json3ser9Formatter17begin_array_value17h99dd1a34b9f19112E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.09.0.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 11, %_ZN10serde_json3ser9Formatter17begin_array_value17h99dd1a34b9f19112E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ca, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.0.1.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN10serde_json3ser9Formatter17begin_array_value17h99dd1a34b9f19112E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.bt, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.br = icmp samesign ugt i32 %.sroa.0.1.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 99
  br i1 %i.br, label %bb.l, label %bb.m

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:   ; preds = %_ZN10serde_json3ser9Formatter17begin_array_value17h99dd1a34b9f19112E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.0.129.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.bt, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN10serde_json3ser9Formatter17begin_array_value17h99dd1a34b9f19112E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %.sroa.09.028.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ca, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ 11, %_ZN10serde_json3ser9Formatter17begin_array_value17h99dd1a34b9f19112E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.bs = urem i32 %.sroa.0.129.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 10000
  %i.bt = udiv i32 %.sroa.0.129.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 10000 ; 2 uses
  %.lhs.trunc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = trunc nuw nsw i32 %i.bs to i16 ; 2 uses
  %i.bu = udiv i16 %.lhs.trunc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 100
  %i.bv = shl nuw nsw i16 %i.bu, 1
  %i.bw = zext nneg i16 %i.bv to i64
  %i.bx = urem i16 %.lhs.trunc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 100
  %i.by = shl nuw nsw i16 %i.bx, 1
  %i.bz = zext nneg i16 %i.by to i64
  %i.ca = add i64 %.sroa.09.028.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, -4 ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr @849, i64 %i.bw
  %i.cc = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ca
  %i.cd = load i16, ptr %i.cb, align 1, !noalias !60287
  store i16 %i.cd, ptr %i.cc, align 1, !alias.scope !60286, !noalias !60285
  %i.ce = getelementptr inbounds nuw i8, ptr @849, i64 %i.bz
  %i.cf = getelementptr i8, ptr %i.a, i64 %.sroa.09.028.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.cg = getelementptr i8, ptr %i.cf, i64 -2
  %i.ch = load i16, ptr %i.ce, align 1, !noalias !60287
  store i16 %i.ch, ptr %i.cg, align 1, !alias.scope !60286, !noalias !60285
  %i.ci = icmp ugt i32 %.sroa.0.129.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 99999999
  br i1 %i.ci, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.l:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.lhs.trunc24.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = trunc nuw i32 %.sroa.0.1.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i to i16 ; 2 uses
  %i.cj = urem i16 %.lhs.trunc24.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 100
  %i.ck = shl nuw nsw i16 %i.cj, 1
  %i.cl = zext nneg i16 %i.ck to i64
  %i.cm = udiv i16 %.lhs.trunc24.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 100
  %.zext27.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = zext nneg i16 %i.cm to i32
  %i.cn = add i64 %.sroa.09.0.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, -2 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr @849, i64 %i.cl
  %i.cp = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.cn
  %i.cq = load i16, ptr %i.co, align 1, !noalias !60287
  store i16 %i.cq, ptr %i.cp, align 1, !alias.scope !60286, !noalias !60285
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.09.1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.cn, %bb.l ], [ %.sroa.09.0.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.0.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %.zext27.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.l ], [ %.sroa.0.1.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.cr = icmp samesign ult i32 %.sroa.0.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 10
  br i1 %i.cr, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cs = shl nuw nsw i32 %.sroa.0.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 1
  %i.ct = zext nneg i32 %i.cs to i64
  %i.cu = add i64 %.sroa.09.1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, -2 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr @849, i64 %i.ct
  %i.cw = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.cu
  %i.cx = load i16, ptr %i.cv, align 1, !noalias !60287
  store i16 %i.cx, ptr %i.cw, align 1, !alias.scope !60286, !noalias !60285
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.cy = add i64 %.sroa.09.1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, -1 ; 2 uses
  %i.cz = trunc nuw nsw i32 %.sroa.0.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i to i8
  %i.da = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.cy
  %i.db = or disjoint i8 %i.cz, 48
  store i8 %i.db, ptr %i.da, align 1, !alias.scope !60286, !noalias !60285
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.sroa.09.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.cy, %bb.o ], [ %i.cu, %bb.n ] ; 2 uses
  br i1 %2, label %"_ZN4itoa55_$LT$impl$u20$itoa..private..Sealed$u20$for$u20$i32$GT$5write17h60888a2bbedeb6fbE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dc = add i64 %.sroa.09.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, -1 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.dc
  store i8 45, ptr %i.dd, align 1, !alias.scope !60286, !noalias !60285
  br label %"_ZN4itoa55_$LT$impl$u20$itoa..private..Sealed$u20$for$u20$i32$GT$5write17h60888a2bbedeb6fbE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"

"_ZN4itoa55_$LT$impl$u20$itoa..private..Sealed$u20$for$u20$i32$GT$5write17h60888a2bbedeb6fbE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.q, %bb.p
  %.sroa.09.3.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.09.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.p ], [ %i.dc, %bb.q ] ; 2 uses
  %i.de = sub i64 11, %.sroa.09.3.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ; 5 uses
  %i.df = icmp ult i64 %i.de, 12
  tail call void @llvm.assume(i1 %i.df)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !60288)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !60289)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !60290)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !60291)
  %i.dg = load i64, ptr %.val9.i5.i, align 8, !range !29, !alias.scope !60292, !noalias !60293, !noundef !28
  %i.dh = sub i64 %i.dg, %i.bp
  %i.di = icmp ugt i64 %i.de, %i.dh
  br i1 %i.di, label %bb.r, label %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h293edf2d25b61a0dE.exit.i.i.i.i.i.i.i.i.i.i.i.i", !prof !30

bb.r:                                             ; preds = %"_ZN4itoa55_$LT$impl$u20$itoa..private..Sealed$u20$for$u20$i32$GT$5write17h60888a2bbedeb6fbE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hbfe87a90490e90eaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val9.i5.i, i64 noundef %i.bp, i64 noundef %i.de, i64 noundef 1, i64 noundef 1), !noalias !60293
  %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ac, align 8, !alias.scope !60294, !noalias !60293
  br label %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h293edf2d25b61a0dE.exit.i.i.i.i.i.i.i.i.i.i.i.i"

"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h293edf2d25b61a0dE.exit.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.r, %"_ZN4itoa55_$LT$impl$u20$itoa..private..Sealed$u20$for$u20$i32$GT$5write17h60888a2bbedeb6fbE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %i.dj = phi i64 [ %i.bp, %"_ZN4itoa55_$LT$impl$u20$itoa..private..Sealed$u20$for$u20$i32$GT$5write17h60888a2bbedeb6fbE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.r ] ; 3 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.09.3.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.dl = icmp sgt i64 %i.dj, -1
  tail call void @llvm.assume(i1 %i.dl)
  %i.dm = load ptr, ptr %i.ai, align 8, !alias.scope !60294, !noalias !60293, !nonnull !28, !noundef !28
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 %i.dj
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.dn, ptr nonnull readonly align 1 %i.dk, i64 %i.de, i1 false), !noalias !60295
  %i.do = add nuw i64 %i.dj, %i.de                ; 5 uses
  store i64 %i.do, ptr %i.ac, align 8, !alias.scope !60294, !noalias !60293
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !60285
  %i.dp = icmp eq ptr %i.bh, %i.au
  br i1 %i.dp, label %_ZN4core4iter6traits8iterator8Iterator12try_for_each17hfa82cb8d959afc20E.exit.thread.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i

_ZN4core4iter6traits8iterator8Iterator12try_for_each17hfa82cb8d959afc20E.exit.thread.i.i.i.i.i.i.i.i.i.i: ; preds = %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h293edf2d25b61a0dE.exit.i.i.i.i.i.i.i.i.i.i.i.i"
  %i.dq = load i64, ptr %.val9.i5.i, align 8, !range !29, !alias.scope !60296, !noalias !60297, !noundef !28
  %i.dr = icmp eq i64 %i.dq, %i.do
  br i1 %i.dr, label %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeSeq$GT$3end17h918aa763fb13009fE.exit.sink.split.i.i.i.i.i.i.i.i.i.i", label %bb.s, !prof !30

"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeSeq$GT$3end17h918aa763fb13009fE.exit.sink.split.i.i.i.i.i.i.i.i.i.i": ; preds = %_ZN4core4iter6traits8iterator8Iterator12try_for_each17hfa82cb8d959afc20E.exit.thread.i.i.i.i.i.i.i.i.i.i, %bb.i
  %.lcssa21.sink.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.bb, %bb.i ], [ %i.do, %_ZN4core4iter6traits8iterator8Iterator12try_for_each17hfa82cb8d959afc20E.exit.thread.i.i.i.i.i.i.i.i.i.i ]
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hbfe87a90490e90eaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val9.i5.i, i64 noundef %.lcssa21.sink.i.i.i.i.i.i.i.i.i.i, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !60298
  %.pre.i.i.i.i.i.i.i15.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ac, align 8, !noalias !60298
  br label %bb.s

bb.s:                                             ; preds = %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeSeq$GT$3end17h918aa763fb13009fE.exit.sink.split.i.i.i.i.i.i.i.i.i.i", %_ZN4core4iter6traits8iterator8Iterator12try_for_each17hfa82cb8d959afc20E.exit.thread.i.i.i.i.i.i.i.i.i.i, %bb.i
  %.sink25.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.do, %_ZN4core4iter6traits8iterator8Iterator12try_for_each17hfa82cb8d959afc20E.exit.thread.i.i.i.i.i.i.i.i.i.i ], [ %i.bb, %bb.i ], [ %.pre.i.i.i.i.i.i.i15.i.i.i.i.i.i.i.i.i.i, %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeSeq$GT$3end17h918aa763fb13009fE.exit.sink.split.i.i.i.i.i.i.i.i.i.i" ] ; 3 uses
  %i.ds = icmp sgt i64 %.sink25.i.i.i.i.i.i.i.i.i.i, -1
  tail call void @llvm.assume(i1 %i.ds)
  %i.dt = load ptr, ptr %i.ai, align 8, !noalias !60298, !nonnull !28, !noundef !28
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 %.sink25.i.i.i.i.i.i.i.i.i.i
  store i8 93, ptr %i.du, align 1, !noalias !60298
  %i.dv = add nuw i64 %.sink25.i.i.i.i.i.i.i.i.i.i, 1 ; 4 uses
  store i64 %i.dv, ptr %i.ac, align 8, !noalias !60298
  tail call void @llvm.experimental.noalias.scope.decl(metadata !60299)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !60300)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !60301)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !60302)
  %i.dw = load i64, ptr %.val9.i5.i, align 8, !range !29, !alias.scope !60303, !noalias !60304, !noundef !28
  %i.dx = icmp eq i64 %i.dw, %i.dv
  br i1 %i.dx, label %bb.t, label %"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$14serialize_some17h0e79aecf6addec67E.exit.i.i.i", !prof !30

bb.t:                                             ; preds = %bb.s
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hbfe87a90490e90eaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val9.i5.i, i64 noundef %i.dv, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !60304
  %.pre.i.i.i.i.i.i.i.i10.i.i.i.i.i = load i64, ptr %i.ac, align 8, !alias.scope !60305, !noalias !60304
  br label %"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$14serialize_some17h0e79aecf6addec67E.exit.i.i.i"

"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$14serialize_some17h0e79aecf6addec67E.exit.i.i.i": ; preds = %bb.t, %bb.s
  %i.dy = phi i64 [ %i.dv, %bb.s ], [ %.pre.i.i.i.i.i.i.i.i10.i.i.i.i.i, %bb.t ] ; 3 uses
  %i.dz = icmp sgt i64 %i.dy, -1
  tail call void @llvm.assume(i1 %i.dz)
  %i.ea = load ptr, ptr %i.ai, align 8, !alias.scope !60305, !noalias !60304, !nonnull !28, !noundef !28
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 %i.dy
  store i8 125, ptr %i.eb, align 1, !noalias !60306
  %i.ec = add nuw i64 %i.dy, 1
  store i64 %i.ec, ptr %i.ac, align 8, !alias.scope !60305, !noalias !60304
  br label %_ZN10serde_core3ser12SerializeMap15serialize_entry17hd86633d0d263f6ebE.exit

bb.u:                                             ; preds = %_ZN10serde_json3ser9Formatter18begin_object_value17h6d3bc186cdc16551E.exit.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9.i5.i) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !60307)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !60308)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !60309)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !60310)
  %i.ed = getelementptr inbounds nuw i8, ptr %.val9.i5.i, i64 16 ; 3 uses
  %i.ee = load i64, ptr %i.ed, align 8, !alias.scope !60311, !noalias !60312, !noundef !28 ; 3 uses
  %i.ef = load i64, ptr %.val9.i5.i, align 8, !range !29, !alias.scope !60311, !noalias !60312, !noundef !28
  %i.eg = sub i64 %i.ef, %i.ee
  %i.eh = icmp ult i64 %i.eg, 4
  br i1 %i.eh, label %bb.v, label %"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$14serialize_none17h5a51276ae0ab8e9eE.exit.i.i.i", !prof !30

bb.v:                                             ; preds = %bb.u
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hbfe87a90490e90eaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val9.i5.i, i64 noundef %i.ee, i64 noundef 4, i64 noundef 1, i64 noundef 1), !noalias !60312
  %.pre.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ed, align 8, !alias.scope !60313, !noalias !60312
  br label %"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$14serialize_none17h5a51276ae0ab8e9eE.exit.i.i.i"

"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$14serialize_none17h5a51276ae0ab8e9eE.exit.i.i.i": ; preds = %bb.v, %bb.u
  %i.ei = phi i64 [ %i.ee, %bb.u ], [ %.pre.i.i.i.i.i.i.i.i.i.i.i, %bb.v ] ; 3 uses
  %i.ej = icmp sgt i64 %i.ei, -1
  tail call void @llvm.assume(i1 %i.ej)
  %i.ek = getelementptr inbounds nuw i8, ptr %.val9.i5.i, i64 8
  %i.el = load ptr, ptr %i.ek, align 8, !alias.scope !60313, !noalias !60312, !nonnull !28, !noundef !28
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 %i.ei
  store i32 1819047278, ptr %i.em, align 1, !noalias !60314
  %i.en = add nuw i64 %i.ei, 4
  store i64 %i.en, ptr %i.ed, align 8, !alias.scope !60313, !noalias !60312
  br label %_ZN10serde_core3ser12SerializeMap15serialize_entry17hd86633d0d263f6ebE.exit

_ZN10serde_core3ser12SerializeMap15serialize_entry17hd86633d0d263f6ebE.exit: ; preds = %"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$14serialize_some17h0e79aecf6addec67E.exit.i.i.i", %"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$14serialize_none17h5a51276ae0ab8e9eE.exit.i.i.i"
  ret ptr null
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noalias noundef align 8 ptr @"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h639b9b5ddbf415d6E"(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, i8 %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !60436)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !60437)
  %i.b = load ptr, ptr %0, align 8, !alias.scope !60438, !noalias !60439, !nonnull !28, !align !35, !noundef !28 ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load i8, ptr %i.c, align 8, !range !42, !alias.scope !60438, !noalias !60439, !noundef !28
  %i.e = icmp eq i8 %i.d, 1
  %.val.i.i = load ptr, ptr %i.b, align 8, !noalias !60440 ; 6 uses
  br i1 %i.e, label %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit.i", label %bb.b

end_hunk_10
begin_hunk_11_@"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h639b9b5ddbf415d6E":bb.a
  %.pre.i.i.i.i.i.i.i.i17.i.i.i.i.i = load i64, ptr %i.ad, align 8, !alias.scope !60482, !noalias !60481
  br label %_ZN10serde_json3ser9Formatter12begin_object17hddb70660d5368bc0E.exit.i.i.i.i.i.i.i

_ZN10serde_json3ser9Formatter12begin_object17hddb70660d5368bc0E.exit.i.i.i.i.i.i.i: ; preds = %bb.g, %.split.i.i.i.i.i
  %i.ah = phi i64 [ %i.ae, %.split.i.i.i.i.i ], [ %.pre.i.i.i.i.i.i.i.i17.i.i.i.i.i, %bb.g ] ; 3 uses
  %i.ai = icmp sgt i64 %i.ah, -1
  tail call void @llvm.assume(i1 %i.ai)
  %i.aj = getelementptr inbounds nuw i8, ptr %.val.i.i16.i.i.i.i.i, i64 8 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !alias.scope !60482, !noalias !60481, !nonnull !28, !noundef !28
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.ah
  store i8 123, ptr %i.al, align 1, !noalias !60483
  %i.am = add nuw i64 %i.ah, 1                    ; 4 uses
  store i64 %i.am, ptr %i.ad, align 8, !alias.scope !60482, !noalias !60481
  tail call void @llvm.experimental.noalias.scope.decl(metadata !60484)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !60485)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !60486)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !60487)
  %i.an = load i64, ptr %.val.i.i16.i.i.i.i.i, align 8, !range !29, !alias.scope !60488, !noalias !60489, !noundef !28
  %i.ao = icmp eq i64 %i.an, %i.am
  br i1 %i.ao, label %bb.h, label %.thread4.i.i.i.i.i, !prof !30

bb.h:                                             ; preds = %_ZN10serde_json3ser9Formatter12begin_object17hddb70660d5368bc0E.exit.i.i.i.i.i.i.i
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hbfe87a90490e90eaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i16.i.i.i.i.i, i64 noundef %i.am, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !60489
  %.pre.i.i.i.i.i.i11.i.i.i.i.i.i.i = load i64, ptr %i.ad, align 8, !alias.scope !60490, !noalias !60489
  br label %.thread4.i.i.i.i.i

.thread4.i.i.i.i.i:                               ; preds = %bb.h, %_ZN10serde_json3ser9Formatter12begin_object17hddb70660d5368bc0E.exit.i.i.i.i.i.i.i
  %i.ap = phi i64 [ %i.am, %_ZN10serde_json3ser9Formatter12begin_object17hddb70660d5368bc0E.exit.i.i.i.i.i.i.i ], [ %.pre.i.i.i.i.i.i11.i.i.i.i.i.i.i, %bb.h ] ; 3 uses
  %i.aq = icmp sgt i64 %i.ap, -1
  tail call void @llvm.assume(i1 %i.aq)
  %i.ar = load ptr, ptr %i.aj, align 8, !alias.scope !60490, !noalias !60489, !nonnull !28, !noundef !28
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.ap
  store i8 125, ptr %i.as, align 1, !noalias !60491
  %i.at = add nuw i64 %i.ap, 1
  store i64 %i.at, ptr %i.ad, align 8, !alias.scope !60490, !noalias !60489
  br label %"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$14serialize_some17h2ce619f1895c779bE.exit.i.i.i"

bb.i:                                             ; preds = %bb.f, %.split13.i.i.i.i.i
  %i.au = phi i64 [ %i.aa, %.split13.i.i.i.i.i ], [ %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.f ] ; 3 uses
  %i.av = icmp sgt i64 %i.au, -1
  tail call void @llvm.assume(i1 %i.av)
  %i.aw = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !alias.scope !60471, !noalias !60470, !nonnull !28, !noundef !28
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.au
  store i8 123, ptr %i.ay, align 1, !noalias !60492
  %i.az = add nuw i64 %i.au, 1
  store i64 %i.az, ptr %i.z, align 8, !alias.scope !60471, !noalias !60470
  store ptr %i.b, ptr %i.a, align 8, !noalias !60460
  %i.ba = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store i8 1, ptr %i.ba, align 8, !noalias !60460
  call fastcc void @_ZN10serde_core3ser12SerializeMap15serialize_entry17h1dc3500615032f06E(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1093, i64 noundef 19, i8 %.0.val)
  %.pr.i.i.i.i.i = load i8, ptr %i.ba, align 8, !noalias !60460
  %i.bb = load ptr, ptr %i.a, align 8, !noalias !60460, !nonnull !28, !align !35, !noundef !28
  %.val.i.i.i.i.i = load ptr, ptr %i.bb, align 8, !noalias !60436 ; 5 uses
  %i.bc = icmp eq i8 %.pr.i.i.i.i.i, 0
  br i1 %i.bc, label %"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$14serialize_some17h2ce619f1895c779bE.exit.i.i.i", label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i.i) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !60493)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !60494)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !60495)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !60496)
  %i.bd = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 16 ; 3 uses
  %i.be = load i64, ptr %i.bd, align 8, !alias.scope !60497, !noalias !60498, !noundef !28 ; 3 uses
  %i.bf = load i64, ptr %.val.i.i.i.i.i, align 8, !range !29, !alias.scope !60497, !noalias !60498, !noundef !28
  %i.bg = icmp eq i64 %i.bf, %i.be
  br i1 %i.bg, label %bb.k, label %_ZN10serde_json3ser9Formatter10end_object17h325f3d47e1b1e2e2E.exit.i.i.i.i.i.i.i, !prof !30

bb.k:                                             ; preds = %bb.j
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hbfe87a90490e90eaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i.i.i.i, i64 noundef %i.be, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !60498
  %.pre.i.i.i.i.i.i.i.i19.i.i.i.i.i = load i64, ptr %i.bd, align 8, !alias.scope !60499, !noalias !60498
  br label %_ZN10serde_json3ser9Formatter10end_object17h325f3d47e1b1e2e2E.exit.i.i.i.i.i.i.i

_ZN10serde_json3ser9Formatter10end_object17h325f3d47e1b1e2e2E.exit.i.i.i.i.i.i.i: ; preds = %bb.k, %bb.j
  %i.bh = phi i64 [ %i.be, %bb.j ], [ %.pre.i.i.i.i.i.i.i.i19.i.i.i.i.i, %bb.k ] ; 3 uses
  %i.bi = icmp sgt i64 %i.bh, -1
  tail call void @llvm.assume(i1 %i.bi)
  %i.bj = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8, !alias.scope !60499, !noalias !60498, !nonnull !28, !noundef !28
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.bh
  store i8 125, ptr %i.bl, align 1, !noalias !60500
  %i.bm = add nuw i64 %i.bh, 1
  store i64 %i.bm, ptr %i.bd, align 8, !alias.scope !60499, !noalias !60498
  br label %"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$14serialize_some17h2ce619f1895c779bE.exit.i.i.i"

"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$14serialize_some17h2ce619f1895c779bE.exit.i.i.i": ; preds = %_ZN10serde_json3ser9Formatter10end_object17h325f3d47e1b1e2e2E.exit.i.i.i.i.i.i.i, %bb.i, %.thread4.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !60460
  br label %_ZN10serde_core3ser12SerializeMap15serialize_entry17h9b78227043f420daE.exit

bb.l:                                             ; preds = %_ZN10serde_json3ser9Formatter18begin_object_value17h6d3bc186cdc16551E.exit.i.i
  %.val.i.i.i = load ptr, ptr %i.b, align 8, !alias.scope !60457, !noalias !60436, !nonnull !28, !align !35, !noundef !28 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !60501)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !60502)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !60503)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !60504)
  %i.bn = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 16 ; 3 uses
  %i.bo = load i64, ptr %i.bn, align 8, !alias.scope !60505, !noalias !60506, !noundef !28 ; 3 uses
  %i.bp = load i64, ptr %.val.i.i.i, align 8, !range !29, !alias.scope !60505, !noalias !60506, !noundef !28
  %i.bq = sub i64 %i.bp, %i.bo
  %i.br = icmp ult i64 %i.bq, 4
  br i1 %i.br, label %bb.m, label %"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$14serialize_none17h5a51276ae0ab8e9eE.exit.i.i.i", !prof !30

bb.m:                                             ; preds = %bb.l
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hbfe87a90490e90eaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i.i, i64 noundef %i.bo, i64 noundef 4, i64 noundef 1, i64 noundef 1), !noalias !60506
  %.pre.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.bn, align 8, !alias.scope !60507, !noalias !60506
  br label %"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$14serialize_none17h5a51276ae0ab8e9eE.exit.i.i.i"

"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$14serialize_none17h5a51276ae0ab8e9eE.exit.i.i.i": ; preds = %bb.m, %bb.l
  %i.bs = phi i64 [ %i.bo, %bb.l ], [ %.pre.i.i.i.i.i.i.i.i.i.i.i, %bb.m ] ; 3 uses
  %i.bt = icmp sgt i64 %i.bs, -1
  tail call void @llvm.assume(i1 %i.bt)
  %i.bu = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 8
  %i.bv = load ptr, ptr %i.bu, align 8, !alias.scope !60507, !noalias !60506, !nonnull !28, !noundef !28
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.bs
  store i32 1819047278, ptr %i.bw, align 1, !noalias !60508
  %i.bx = add nuw i64 %i.bs, 4
  store i64 %i.bx, ptr %i.bn, align 8, !alias.scope !60507, !noalias !60506
  br label %_ZN10serde_core3ser12SerializeMap15serialize_entry17h9b78227043f420daE.exit

_ZN10serde_core3ser12SerializeMap15serialize_entry17h9b78227043f420daE.exit: ; preds = %"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$14serialize_some17h2ce619f1895c779bE.exit.i.i.i", %"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$14serialize_none17h5a51276ae0ab8e9eE.exit.i.i.i"
  ret ptr null
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h648effcfdc905a9eE"(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, i32 %.0.val) unnamed_addr #0 {
bb.a:
  %i.a = alloca [40 x i8], align 1                ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !60558)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !60559)
  %i.b = load ptr, ptr %0, align 8, !alias.scope !60560, !noalias !60561, !nonnull !28, !align !35, !noundef !28 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load i8, ptr %i.c, align 8, !range !42, !alias.scope !60560, !noalias !60561, !noundef !28
  %i.e = icmp eq i8 %i.d, 1
  %.val.i.i = load ptr, ptr %i.b, align 8, !noalias !60562 ; 6 uses
  br i1 %i.e, label %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit.i", label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !60563)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !60564)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !60565)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !60566)
  %i.f = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 16 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !60567, !noalias !60568, !noundef !28 ; 3 uses
  %i.h = load i64, ptr %.val.i.i, align 8, !range !29, !alias.scope !60567, !noalias !60568, !noundef !28
  %i.i = icmp eq i64 %i.h, %i.g
  br i1 %i.i, label %bb.c, label %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h4ab301283a333dfdE.exit.i.i.i", !prof !30

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hbfe87a90490e90eaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i, i64 noundef %i.g, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !60568
  %.pre.i.i.i.i.i.i.i.i = load i64, ptr %i.f, align 8, !alias.scope !60569, !noalias !60568
  br label %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h4ab301283a333dfdE.exit.i.i.i"

"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h4ab301283a333dfdE.exit.i.i.i": ; preds = %bb.c, %bb.b
  %i.j = phi i64 [ %i.g, %bb.b ], [ %.pre.i.i.i.i.i.i.i.i, %bb.c ] ; 3 uses
  %i.k = icmp sgt i64 %i.j, -1
  tail call void @llvm.assume(i1 %i.k)
  %i.l = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !60569, !noalias !60568, !nonnull !28, !noundef !28
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.j
  store i8 44, ptr %i.n, align 1, !noalias !60570
  %i.o = add nuw i64 %i.j, 1
  store i64 %i.o, ptr %i.f, align 8, !alias.scope !60569, !noalias !60568
  %.val9.pre.i.i = load ptr, ptr %i.b, align 8, !noalias !60562
  br label %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit.i"

"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit.i": ; preds = %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h4ab301283a333dfdE.exit.i.i.i", %bb.a
  %.val9.i.i = phi ptr [ %.val.i.i, %bb.a ], [ %.val9.pre.i.i, %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h4ab301283a333dfdE.exit.i.i.i" ]
  store i8 2, ptr %i.c, align 8, !alias.scope !60560, !noalias !60561
  tail call fastcc void @"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_str17hf58c26c162f17e29E"(ptr nonnull %.val9.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @326, i64 noundef 7)
  %.val.i5.i = load ptr, ptr %i.b, align 8, !noalias !60558, !nonnull !28, !align !35, !noundef !28 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !60571)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !60572)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !60573)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !60574)
  %i.p = getelementptr inbounds nuw i8, ptr %.val.i5.i, i64 16 ; 3 uses
  %i.q = load i64, ptr %i.p, align 8, !alias.scope !60575, !noalias !60576, !noundef !28 ; 3 uses
  %i.r = load i64, ptr %.val.i5.i, align 8, !range !29, !alias.scope !60575, !noalias !60576, !noundef !28
  %i.s = icmp eq i64 %i.r, %i.q
  br i1 %i.s, label %bb.d, label %_ZN10serde_json3ser9Formatter18begin_object_value17h6d3bc186cdc16551E.exit.i.i, !prof !30

bb.d:                                             ; preds = %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit.i"
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hbfe87a90490e90eaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i5.i, i64 noundef %i.q, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !60576
  %.pre.i.i.i.i.i.i.i6.i = load i64, ptr %i.p, align 8, !alias.scope !60577, !noalias !60576
  br label %_ZN10serde_json3ser9Formatter18begin_object_value17h6d3bc186cdc16551E.exit.i.i

_ZN10serde_json3ser9Formatter18begin_object_value17h6d3bc186cdc16551E.exit.i.i: ; preds = %bb.d, %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit.i"
  %i.t = phi i64 [ %i.q, %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit.i" ], [ %.pre.i.i.i.i.i.i.i6.i, %bb.d ] ; 3 uses
  %i.u = icmp sgt i64 %i.t, -1
  tail call void @llvm.assume(i1 %i.u)
  %i.v = getelementptr inbounds nuw i8, ptr %.val.i5.i, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !alias.scope !60577, !noalias !60576, !nonnull !28, !noundef !28
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.t
  store i8 58, ptr %i.x, align 1, !noalias !60578
  %i.y = add nuw i64 %i.t, 1
  store i64 %i.y, ptr %i.p, align 8, !alias.scope !60577, !noalias !60576
  %.val10.i.i = load ptr, ptr %i.b, align 8, !noalias !60558 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !60558
  tail call void @llvm.experimental.noalias.scope.decl(metadata !60579)
  %1 = icmp sgt i32 %.0.val, -1
  %.sroa.0.0.i.i.i.i.i.i = tail call i32 @llvm.abs.i32(i32 %.0.val, i1 false) ; 3 uses
  %i.z = icmp ugt i32 %.sroa.0.0.i.i.i.i.i.i, 9999
  br i1 %i.z, label %.lr.ph.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %.lr.ph.i.i.i.i.i.i, %_ZN10serde_json3ser9Formatter18begin_object_value17h6d3bc186cdc16551E.exit.i.i
  %.sroa.09.0.lcssa.i.i.i.i.i.i = phi i64 [ 11, %_ZN10serde_json3ser9Formatter18begin_object_value17h6d3bc186cdc16551E.exit.i.i ], [ %i.aj, %.lr.ph.i.i.i.i.i.i ] ; 2 uses
  %.sroa.0.1.lcssa.i.i.i.i.i.i = phi i32 [ %.sroa.0.0.i.i.i.i.i.i, %_ZN10serde_json3ser9Formatter18begin_object_value17h6d3bc186cdc16551E.exit.i.i ], [ %i.ac, %.lr.ph.i.i.i.i.i.i ] ; 3 uses
  %i.aa = icmp samesign ugt i32 %.sroa.0.1.lcssa.i.i.i.i.i.i, 99
  br i1 %i.aa, label %bb.e, label %bb.f

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZN10serde_json3ser9Formatter18begin_object_value17h6d3bc186cdc16551E.exit.i.i, %.lr.ph.i.i.i.i.i.i
  %.sroa.0.129.i.i.i.i.i.i = phi i32 [ %i.ac, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.0.0.i.i.i.i.i.i, %_ZN10serde_json3ser9Formatter18begin_object_value17h6d3bc186cdc16551E.exit.i.i ] ; 3 uses
  %.sroa.09.028.i.i.i.i.i.i = phi i64 [ %i.aj, %.lr.ph.i.i.i.i.i.i ], [ 11, %_ZN10serde_json3ser9Formatter18begin_object_value17h6d3bc186cdc16551E.exit.i.i ] ; 2 uses
  %i.ab = urem i32 %.sroa.0.129.i.i.i.i.i.i, 10000
  %i.ac = udiv i32 %.sroa.0.129.i.i.i.i.i.i, 10000 ; 2 uses
  %.lhs.trunc.i.i.i.i.i.i = trunc nuw nsw i32 %i.ab to i16 ; 2 uses
  %i.ad = udiv i16 %.lhs.trunc.i.i.i.i.i.i, 100
  %i.ae = shl nuw nsw i16 %i.ad, 1
  %i.af = zext nneg i16 %i.ae to i64
  %i.ag = urem i16 %.lhs.trunc.i.i.i.i.i.i, 100
  %i.ah = shl nuw nsw i16 %i.ag, 1
  %i.ai = zext nneg i16 %i.ah to i64
  %i.aj = add i64 %.sroa.09.028.i.i.i.i.i.i, -4   ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr @849, i64 %i.af
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.aj
  %i.am = load i16, ptr %i.ak, align 1, !noalias !60580
  store i16 %i.am, ptr %i.al, align 1, !alias.scope !60579, !noalias !60558
  %i.an = getelementptr inbounds nuw i8, ptr @849, i64 %i.ai
  %i.ao = getelementptr i8, ptr %i.a, i64 %.sroa.09.028.i.i.i.i.i.i
  %i.ap = getelementptr i8, ptr %i.ao, i64 -2
  %i.aq = load i16, ptr %i.an, align 1, !noalias !60580
  store i16 %i.aq, ptr %i.ap, align 1, !alias.scope !60579, !noalias !60558
  %i.ar = icmp ugt i32 %.sroa.0.129.i.i.i.i.i.i, 99999999
  br i1 %i.ar, label %.lr.ph.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i

bb.e:                                             ; preds = %._crit_edge.i.i.i.i.i.i
  %.lhs.trunc24.i.i.i.i.i.i = trunc nuw i32 %.sroa.0.1.lcssa.i.i.i.i.i.i to i16 ; 2 uses
  %i.as = urem i16 %.lhs.trunc24.i.i.i.i.i.i, 100
  %i.at = shl nuw nsw i16 %i.as, 1
  %i.au = zext nneg i16 %i.at to i64
  %i.av = udiv i16 %.lhs.trunc24.i.i.i.i.i.i, 100
  %.zext27.i.i.i.i.i.i = zext nneg i16 %i.av to i32
  %i.aw = add i64 %.sroa.09.0.lcssa.i.i.i.i.i.i, -2 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr @849, i64 %i.au
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.aw
  %i.az = load i16, ptr %i.ax, align 1, !noalias !60580
  store i16 %i.az, ptr %i.ay, align 1, !alias.scope !60579, !noalias !60558
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge.i.i.i.i.i.i
  %.sroa.09.1.i.i.i.i.i.i = phi i64 [ %i.aw, %bb.e ], [ %.sroa.09.0.lcssa.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i ] ; 2 uses
  %.sroa.0.2.i.i.i.i.i.i = phi i32 [ %.zext27.i.i.i.i.i.i, %bb.e ], [ %.sroa.0.1.lcssa.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i ] ; 3 uses
  %i.ba = icmp samesign ult i32 %.sroa.0.2.i.i.i.i.i.i, 10
  br i1 %i.ba, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bb = shl nuw nsw i32 %.sroa.0.2.i.i.i.i.i.i, 1
  %i.bc = zext nneg i32 %i.bb to i64
  %i.bd = add i64 %.sroa.09.1.i.i.i.i.i.i, -2     ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr @849, i64 %i.bc
  %i.bf = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bd
  %i.bg = load i16, ptr %i.be, align 1, !noalias !60580
  store i16 %i.bg, ptr %i.bf, align 1, !alias.scope !60579, !noalias !60558
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.bh = add i64 %.sroa.09.1.i.i.i.i.i.i, -1     ; 2 uses
  %i.bi = trunc nuw nsw i32 %.sroa.0.2.i.i.i.i.i.i to i8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bh
  %i.bk = or disjoint i8 %i.bi, 48
  store i8 %i.bk, ptr %i.bj, align 1, !alias.scope !60579, !noalias !60558
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.sroa.09.2.i.i.i.i.i.i = phi i64 [ %i.bh, %bb.h ], [ %i.bd, %bb.g ] ; 2 uses
  br i1 %1, label %"_ZN4itoa55_$LT$impl$u20$itoa..private..Sealed$u20$for$u20$i32$GT$5write17h60888a2bbedeb6fbE.exit.i.i.i.i.i", label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bl = add i64 %.sroa.09.2.i.i.i.i.i.i, -1     ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bl
  store i8 45, ptr %i.bm, align 1, !alias.scope !60579, !noalias !60558
  br label %"_ZN4itoa55_$LT$impl$u20$itoa..private..Sealed$u20$for$u20$i32$GT$5write17h60888a2bbedeb6fbE.exit.i.i.i.i.i"

"_ZN4itoa55_$LT$impl$u20$itoa..private..Sealed$u20$for$u20$i32$GT$5write17h60888a2bbedeb6fbE.exit.i.i.i.i.i": ; preds = %bb.j, %bb.i
  %.sroa.09.3.i.i.i.i.i.i = phi i64 [ %.sroa.09.2.i.i.i.i.i.i, %bb.i ], [ %i.bl, %bb.j ] ; 2 uses
  %i.bn = sub i64 11, %.sroa.09.3.i.i.i.i.i.i     ; 5 uses
  %i.bo = icmp ult i64 %i.bn, 12
  tail call void @llvm.assume(i1 %i.bo)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val10.i.i) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !60581)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !60582)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !60583)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !60584)
  %i.bp = getelementptr inbounds nuw i8, ptr %.val10.i.i, i64 16 ; 3 uses
  %i.bq = load i64, ptr %i.bp, align 8, !alias.scope !60585, !noalias !60586, !noundef !28 ; 3 uses
  %i.br = load i64, ptr %.val10.i.i, align 8, !range !29, !alias.scope !60585, !noalias !60586, !noundef !28
  %i.bs = sub i64 %i.br, %i.bq
  %i.bt = icmp ugt i64 %i.bn, %i.bs
  br i1 %i.bt, label %bb.k, label %_ZN10serde_core3ser12SerializeMap15serialize_entry17hfbe3b5aadd2d4ea3E.exit, !prof !30

bb.k:                                             ; preds = %"_ZN4itoa55_$LT$impl$u20$itoa..private..Sealed$u20$for$u20$i32$GT$5write17h60888a2bbedeb6fbE.exit.i.i.i.i.i"
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hbfe87a90490e90eaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val10.i.i, i64 noundef %i.bq, i64 noundef %i.bn, i64 noundef 1, i64 noundef 1), !noalias !60586
  %.pre.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.bp, align 8, !alias.scope !60587, !noalias !60586
  br label %_ZN10serde_core3ser12SerializeMap15serialize_entry17hfbe3b5aadd2d4ea3E.exit

_ZN10serde_core3ser12SerializeMap15serialize_entry17hfbe3b5aadd2d4ea3E.exit: ; preds = %"_ZN4itoa55_$LT$impl$u20$itoa..private..Sealed$u20$for$u20$i32$GT$5write17h60888a2bbedeb6fbE.exit.i.i.i.i.i", %bb.k
  %i.bu = phi i64 [ %i.bq, %"_ZN4itoa55_$LT$impl$u20$itoa..private..Sealed$u20$for$u20$i32$GT$5write17h60888a2bbedeb6fbE.exit.i.i.i.i.i" ], [ %.pre.i.i.i.i.i.i.i.i.i.i, %bb.k ] ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.09.3.i.i.i.i.i.i
  %i.bw = icmp sgt i64 %i.bu, -1
  tail call void @llvm.assume(i1 %i.bw)
  %i.bx = getelementptr inbounds nuw i8, ptr %.val10.i.i, i64 8
  %i.by = load ptr, ptr %i.bx, align 8, !alias.scope !60587, !noalias !60586, !nonnull !28, !noundef !28
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.bu
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bz, ptr nonnull readonly align 1 %i.bv, i64 %i.bn, i1 false), !noalias !60588
  %i.ca = add nuw i64 %i.bu, %i.bn
  store i64 %i.ca, ptr %i.bp, align 8, !alias.scope !60587, !noalias !60586
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !60558
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noalias noundef align 8 ptr @"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h6e1d1747843cab03E"(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = alloca [16 x i8], align 8                ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !61018)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !61019)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !61020)
  %i.c = load ptr, ptr %0, align 8, !alias.scope !61021, !noalias !61022, !nonnull !28, !align !35, !noundef !28 ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = load i8, ptr %i.d, align 8, !range !42, !alias.scope !61021, !noalias !61022, !noundef !28
  %i.f = icmp eq i8 %i.e, 1
  %.val.i.i = load ptr, ptr %i.c, align 8, !noalias !61023 ; 6 uses
  br i1 %i.f, label %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit.i", label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !61024)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !61025)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !61026)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !61027)
  %i.g = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 16 ; 3 uses
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !61028, !noalias !61029, !noundef !28 ; 3 uses
  %i.i = load i64, ptr %.val.i.i, align 8, !range !29, !alias.scope !61028, !noalias !61029, !noundef !28
  %i.j = icmp eq i64 %i.i, %i.h
  br i1 %i.j, label %bb.c, label %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h4ab301283a333dfdE.exit.i.i.i", !prof !30

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hbfe87a90490e90eaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i, i64 noundef %i.h, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !61029
  %.pre.i.i.i.i.i.i.i.i = load i64, ptr %i.g, align 8, !alias.scope !61030, !noalias !61029
  br label %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h4ab301283a333dfdE.exit.i.i.i"

"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h4ab301283a333dfdE.exit.i.i.i": ; preds = %bb.c, %bb.b
  %i.k = phi i64 [ %i.h, %bb.b ], [ %.pre.i.i.i.i.i.i.i.i, %bb.c ] ; 3 uses
  %i.l = icmp sgt i64 %i.k, -1
  tail call void @llvm.assume(i1 %i.l)
  %i.m = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !61030, !noalias !61029, !nonnull !28, !noundef !28
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.k
  store i8 44, ptr %i.o, align 1, !noalias !61031
  %i.p = add nuw i64 %i.k, 1
  store i64 %i.p, ptr %i.g, align 8, !alias.scope !61030, !noalias !61029
  %.val9.pre.i.i = load ptr, ptr %i.c, align 8, !noalias !61023
  br label %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit.i"

"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit.i": ; preds = %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h4ab301283a333dfdE.exit.i.i.i", %bb.a
  %.val9.i.i = phi ptr [ %.val.i.i, %bb.a ], [ %.val9.pre.i.i, %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h4ab301283a333dfdE.exit.i.i.i" ]
  store i8 2, ptr %i.d, align 8, !alias.scope !61021, !noalias !61022
  tail call fastcc void @"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_str17hf58c26c162f17e29E"(ptr nonnull %.val9.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1116, i64 noundef 12)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !61032)
  %.val.i4.i = load ptr, ptr %i.c, align 8, !noalias !61033, !nonnull !28, !align !35, !noundef !28 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !61034)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !61035)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !61036)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !61037)
  %i.q = getelementptr inbounds nuw i8, ptr %.val.i4.i, i64 16 ; 3 uses
  %i.r = load i64, ptr %i.q, align 8, !alias.scope !61038, !noalias !61039, !noundef !28 ; 3 uses
  %i.s = load i64, ptr %.val.i4.i, align 8, !range !29, !alias.scope !61038, !noalias !61039, !noundef !28
  %i.t = icmp eq i64 %i.s, %i.r
  br i1 %i.t, label %bb.d, label %_ZN10serde_json3ser9Formatter18begin_object_value17h6d3bc186cdc16551E.exit.i.i, !prof !30

bb.d:                                             ; preds = %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit.i"
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hbfe87a90490e90eaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i4.i, i64 noundef %i.r, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !61039
  %.pre.i.i.i.i.i.i.i5.i = load i64, ptr %i.q, align 8, !alias.scope !61040, !noalias !61039
  br label %_ZN10serde_json3ser9Formatter18begin_object_value17h6d3bc186cdc16551E.exit.i.i

_ZN10serde_json3ser9Formatter18begin_object_value17h6d3bc186cdc16551E.exit.i.i: ; preds = %bb.d, %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit.i"
  %i.u = phi i64 [ %i.r, %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit.i" ], [ %.pre.i.i.i.i.i.i.i5.i, %bb.d ] ; 3 uses
  %i.v = icmp sgt i64 %i.u, -1
  tail call void @llvm.assume(i1 %i.v)
  %i.w = getelementptr inbounds nuw i8, ptr %.val.i4.i, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !alias.scope !61040, !noalias !61039, !nonnull !28, !noundef !28
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.u
  store i8 58, ptr %i.y, align 1, !noalias !61041
  %i.z = add nuw i64 %i.u, 1
  store i64 %i.z, ptr %i.q, align 8, !alias.scope !61040, !noalias !61039
  tail call void @llvm.experimental.noalias.scope.decl(metadata !61042)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !61043)
  %i.aa = load i64, ptr %1, align 8, !range !50, !alias.scope !61044, !noalias !61045, !noundef !28 ; 3 uses
  %.not.i.i.i = icmp eq i64 %i.aa, -9223372036854775806
  br i1 %.not.i.i.i, label %bb.ax, label %bb.e

bb.e:                                             ; preds = %_ZN10serde_json3ser9Formatter18begin_object_value17h6d3bc186cdc16551E.exit.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !61046)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !61047)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !61048)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !61049)
end_hunk_11
begin_hunk_12_@"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17hd3889885698fc933E":bb.a
  %i.an = add i64 %i.i, 17
  %i.ao = add i64 %i.an, %i.am                    ; 4 uses
  %i.ap = icmp uge i64 %i.ao, %i.am
  %i.aq = icmp ult i64 %i.ao, 9223372036854775793
  call void @llvm.assume(i1 %i.ap), !noalias !65817
  call void @llvm.assume(i1 %i.aq), !noalias !65817
  %i.ar = icmp eq i64 %i.ao, 0
  br i1 %i.ar, label %_ZN9hashbrown3raw13RawTableInner12resize_inner17h7ac0a08fd9256806E.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i
  %i.as = sub nsw i64 0, %i.am
  %i.at = getelementptr inbounds i8, ptr %i.x, i64 %i.as
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.at, i64 noundef %i.ao, i64 noundef range(i64 1, -9223372036854775807) 16) #41, !noalias !65818
  br label %_ZN9hashbrown3raw13RawTableInner12resize_inner17h7ac0a08fd9256806E.exit.i

._crit_edge:                                      ; preds = %.noexc3, %.preheader
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.026, %.preheader ], [ %i.ad, %.noexc3 ] ; 3 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.028, %.preheader ], [ %i.ae, %.noexc3 ] ; 2 uses
  %.sroa.0.1.lcssa = phi ptr [ %.sroa.0.029, %.preheader ], [ %i.ab, %.noexc3 ]
  %i.au = add i16 %.sroa.13.1.lcssa, -1
  %i.av = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true)
  %i.aw = zext nneg i16 %i.av to i64
  %i.ax = and i16 %i.au, %.sroa.13.1.lcssa
  %i.ay = add i64 %.sroa.5.1.lcssa, %i.aw         ; 2 uses
  %i.az = add i64 %.sroa.9.027, -1                ; 2 uses
  %i.ba = sub nsw i64 0, %i.ay
  %i.bb = getelementptr inbounds [80 x i8], ptr %i.x, i64 %i.ba
  %i.bc = getelementptr inbounds i8, ptr %i.bb, i64 -80
  %.val.i = load ptr, ptr %i.c, align 8, !noalias !65819, !nonnull !28, !align !35, !noundef !28 ; 2 uses
  %.val.i.i10 = load i64, ptr %.val.i, align 8, !noalias !65820, !noundef !28
  %i.bd = getelementptr i8, ptr %.val.i, i64 8
  %.val1.i.i11 = load i64, ptr %i.bd, align 8, !noalias !65820, !noundef !28
  %i.be = call fastcc noundef i64 @_ZN4core4hash11BuildHasher8hash_one17h44d017ef2add6e54E(i64 %.val.i.i10, i64 %.val1.i.i11, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.bc), !noalias !65819 ; 2 uses
  %.sroa.0.04.i.i = and i64 %i.be, %i.t           ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.04.i.i
  %.sroa.0.0.copyload.i35.i.i = load <16 x i8>, ptr %i.bf, align 1, !noalias !65821
  %i.bg = icmp slt <16 x i8> %.sroa.0.0.copyload.i35.i.i, zeroinitializer
  %i.bh = bitcast <16 x i1> %i.bg to i16          ; 2 uses
  %.not.not.i.not6.i.i = icmp eq i16 %i.bh, 0
  br i1 %.not.not.i.not6.i.i, label %.lr.ph.i.i, label %._crit_edge.i.i, !prof !78

.lr.ph.i.i:                                       ; preds = %._crit_edge, %.lr.ph.i.i
  %.sroa.0.07.i.i = phi i64 [ %.sroa.0.0.i.i12, %.lr.ph.i.i ], [ %.sroa.0.04.i.i, %._crit_edge ]
  %i.bi = phi i64 [ %i.bj, %.lr.ph.i.i ], [ 0, %._crit_edge ]
  %i.bj = add i64 %i.bi, 16                       ; 2 uses
  %i.bk = add i64 %i.bj, %.sroa.0.07.i.i
  %.sroa.0.0.i.i12 = and i64 %i.bk, %i.t          ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.0.i.i12
  %.sroa.0.0.copyload.i3.i.i = load <16 x i8>, ptr %i.bl, align 1, !noalias !65821
  %i.bm = icmp slt <16 x i8> %.sroa.0.0.copyload.i3.i.i, zeroinitializer
  %i.bn = bitcast <16 x i1> %i.bm to i16          ; 2 uses
  %.not.not.i.not.i.i = icmp eq i16 %i.bn, 0
  br i1 %.not.not.i.not.i.i, label %.lr.ph.i.i, label %._crit_edge.i.i, !prof !79

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %._crit_edge
  %.sroa.0.0.lcssa.i.i = phi i64 [ %.sroa.0.04.i.i, %._crit_edge ], [ %.sroa.0.0.i.i12, %.lr.ph.i.i ]
  %.lcssa.i.i = phi i16 [ %i.bh, %._crit_edge ], [ %i.bn, %.lr.ph.i.i ]
  %i.bo = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i, i1 true)
  %i.bp = zext nneg i16 %i.bo to i64
  %i.bq = add i64 %.sroa.0.0.lcssa.i.i, %i.bp
  %i.br = and i64 %i.bq, %i.t                     ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.br
  %i.bt = load i8, ptr %i.bs, align 1, !noundef !28
  %i.bu = icmp sgt i8 %i.bt, -1
  br i1 %i.bu, label %bb.g, label %bb.h, !prof !30

bb.g:                                             ; preds = %._crit_edge.i.i
  %.val2.i.i.i = load <16 x i8>, ptr %i.q, align 16
  %i.bv = icmp slt <16 x i8> %.val2.i.i.i, zeroinitializer
  %i.bw = bitcast <16 x i1> %i.bv to i16          ; 2 uses
  %i.bx = icmp ne i16 %i.bw, 0
  call void @llvm.assume(i1 %i.bx)
  %i.by = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.bw, i1 true)
  %i.bz = zext nneg i16 %i.by to i64
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge.i.i
  %.sroa.0.0.i5.i.i = phi i64 [ %i.bz, %bb.g ], [ %i.br, %._crit_edge.i.i ] ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.0.i5.i.i
  %i.cb = lshr i64 %i.be, 57
  %i.cc = trunc nuw nsw i64 %i.cb to i8           ; 2 uses
  %i.cd = add i64 %.sroa.0.0.i5.i.i, -16
  %i.ce = and i64 %i.cd, %i.t
  store i8 %i.cc, ptr %i.ca, align 1
  %i.cf = getelementptr i8, ptr %i.q, i64 %i.ce
  %i.cg = getelementptr i8, ptr %i.cf, i64 16
  store i8 %i.cc, ptr %i.cg, align 1
  %.neg.i.i = xor i64 %i.ay, -1
  %.neg62.i.i = mul i64 %.neg.i.i, 80
  %i.ch = getelementptr inbounds i8, ptr %i.x, i64 %.neg62.i.i
  %.neg63.i.i = xor i64 %.sroa.0.0.i5.i.i, -1
  %.neg64.i.i = mul i64 %.neg63.i.i, 80
  %i.ci = getelementptr inbounds i8, ptr %i.q, i64 %.neg64.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(80) %i.ci, ptr noundef nonnull align 1 dereferenceable(80) %i.ch, i64 range(i64 48, 137) 80, i1 false), !noalias !65817
  %i.cj = icmp eq i64 %i.az, 0
  br i1 %i.cj, label %._crit_edge30, label %.preheader

bb.i:                                             ; preds = %bb.b
  call fastcc void @_ZN9hashbrown3raw13RawTableInner15rehash_in_place17h6243273e76fbd181E(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 1 %i.b, ptr nonnull @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash28_$u7b$$u7b$closure$u7d$$u7d$17h4aeba601481b9ad0E", i64 noundef 80, ptr noundef nonnull @_ZN4core3ops8function6FnOnce9call_once17h1aa7047e5a08aca5E)
  br label %_ZN9hashbrown3raw13RawTableInner12resize_inner17h7ac0a08fd9256806E.exit.i

_ZN9hashbrown3raw13RawTableInner12resize_inner17h7ac0a08fd9256806E.exit.i: ; preds = %bb.d, %bb.f, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i, %._crit_edge30, %bb.i
  %.sroa.4.0.i = phi i64 [ undef, %bb.i ], [ undef, %bb.f ], [ undef, %._crit_edge30 ], [ undef, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i ], [ %i.v, %bb.d ]
  %.sroa.0.0.i = phi i64 [ -9223372036854775807, %bb.i ], [ -9223372036854775807, %bb.f ], [ -9223372036854775807, %._crit_edge30 ], [ -9223372036854775807, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i ], [ %i.t, %bb.d ]
  %i.ck = insertvalue { i64, i64 } poison, i64 %.sroa.0.0.i, 0
  %i.cl = insertvalue { i64, i64 } %i.ck, i64 %.sroa.4.0.i, 1
  br label %_ZN9hashbrown3raw13RawTableInner20reserve_rehash_inner17he6f1a402e4206c41E.exit

_ZN9hashbrown3raw13RawTableInner20reserve_rehash_inner17he6f1a402e4206c41E.exit: ; preds = %bb.c, %_ZN9hashbrown3raw13RawTableInner12resize_inner17h7ac0a08fd9256806E.exit.i
  %.merged.i = phi { i64, i64 } [ %i.o, %bb.c ], [ %i.cl, %_ZN9hashbrown3raw13RawTableInner12resize_inner17h7ac0a08fd9256806E.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret { i64, i64 } %.merged.i
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define internal noundef i64 @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash28_$u7b$$u7b$closure$u7d$$u7d$17h4aeba601481b9ad0E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %1, i64 noundef %2) unnamed_addr #22 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !28, !align !35, !noundef !28
  %i.b = load ptr, ptr %1, align 8, !nonnull !28, !noundef !28
  %i.c = sub nsw i64 0, %2
  %i.d = getelementptr inbounds [80 x i8], ptr %i.b, i64 %i.c
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 -80
  %.val = load ptr, ptr %i.a, align 8, !nonnull !28, !align !35, !noundef !28 ; 2 uses
  %.val.i = load i64, ptr %.val, align 8, !noalias !65824, !noundef !28
  %i.f = getelementptr i8, ptr %.val, i64 8
  %.val1.i = load i64, ptr %i.f, align 8, !noalias !65824, !noundef !28
  %i.g = tail call fastcc noundef i64 @_ZN4core4hash11BuildHasher8hash_one17h44d017ef2add6e54E(i64 %.val.i, i64 %.val1.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.e)
  ret i64 %i.g
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define internal noundef i64 @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash28_$u7b$$u7b$closure$u7d$$u7d$17h709fe8eceae96655E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %1, i64 noundef %2) unnamed_addr #22 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !28, !align !35, !noundef !28
  %i.b = load ptr, ptr %1, align 8, !nonnull !28, !noundef !28
  %i.c = sub nsw i64 0, %2
  %i.d = getelementptr inbounds [96 x i8], ptr %i.b, i64 %i.c
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 -96
  %.val = load ptr, ptr %i.a, align 8, !nonnull !28, !align !35, !noundef !28 ; 2 uses
  %.val.i = load i64, ptr %.val, align 8, !noalias !65827, !noundef !28
  %i.f = getelementptr i8, ptr %.val, i64 8
  %.val1.i = load i64, ptr %i.f, align 8, !noalias !65827, !noundef !28
  %i.g = tail call fastcc noundef i64 @_ZN4core4hash11BuildHasher8hash_one17h144984494be52603E(i64 %.val.i, i64 %.val1.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.e)
  ret i64 %i.g
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define internal noundef i64 @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash28_$u7b$$u7b$closure$u7d$$u7d$17h95567f6944dc1ef2E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %1, i64 noundef %2) unnamed_addr #22 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !28, !align !35, !noundef !28
  %i.b = load ptr, ptr %1, align 8, !nonnull !28, !noundef !28
  %i.c = sub nsw i64 0, %2
  %i.d = getelementptr inbounds [112 x i8], ptr %i.b, i64 %i.c
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 -112
  %.val = load ptr, ptr %i.a, align 8, !nonnull !28, !align !35, !noundef !28 ; 2 uses
  %.val.i = load i64, ptr %.val, align 8, !noalias !65830, !noundef !28
  %i.f = getelementptr i8, ptr %.val, i64 8
  %.val1.i = load i64, ptr %i.f, align 8, !noalias !65830, !noundef !28
  %i.g = tail call fastcc noundef i64 @_ZN4core4hash11BuildHasher8hash_one17h144984494be52603E(i64 %.val.i, i64 %.val1.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.e)
  ret i64 %i.g
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define internal noundef i64 @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash28_$u7b$$u7b$closure$u7d$$u7d$17hc3cb7c6a381324b3E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %1, i64 noundef %2) unnamed_addr #22 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !28, !align !35, !noundef !28
  %i.b = load ptr, ptr %1, align 8, !nonnull !28, !noundef !28
  %i.c = sub nsw i64 0, %2
  %i.d = getelementptr inbounds [48 x i8], ptr %i.b, i64 %i.c
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 -48
  %.val = load ptr, ptr %i.a, align 8, !nonnull !28, !align !35, !noundef !28 ; 2 uses
  %.val.i = load i64, ptr %.val, align 8, !noalias !65833, !noundef !28
  %i.f = getelementptr i8, ptr %.val, i64 8
  %.val1.i = load i64, ptr %i.f, align 8, !noalias !65833, !noundef !28
  %i.g = tail call fastcc noundef i64 @_ZN4core4hash11BuildHasher8hash_one17h44d017ef2add6e54E(i64 %.val.i, i64 %.val1.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.e)
  ret i64 %i.g
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define internal noundef i64 @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash28_$u7b$$u7b$closure$u7d$$u7d$17hdfb4383ab71747cfE"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %1, i64 noundef %2) unnamed_addr #22 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !28, !align !35, !noundef !28
  %i.b = load ptr, ptr %1, align 8, !nonnull !28, !noundef !28
  %i.c = sub nsw i64 0, %2
  %i.d = getelementptr inbounds [136 x i8], ptr %i.b, i64 %i.c
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 -136
  %.val = load ptr, ptr %i.a, align 8, !nonnull !28, !align !35, !noundef !28 ; 2 uses
  %.val.i = load i64, ptr %.val, align 8, !noalias !65836, !noundef !28
  %i.f = getelementptr i8, ptr %.val, i64 8
  %.val1.i = load i64, ptr %i.f, align 8, !noalias !65836, !noundef !28
  %i.g = tail call fastcc noundef i64 @_ZN4core4hash11BuildHasher8hash_one17h144984494be52603E(i64 %.val.i, i64 %.val1.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(136) %i.e)
  ret i64 %i.g
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN9lsp_types10completion1_94_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$lsp_types..completion..InsertTextMode$GT$9serialize17hd7d3bf9e49f08ed5E"(i32 %.0.val, ptr nofree captures(none) %.0.val1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [40 x i8], align 1                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !65853)
  %0 = icmp sgt i32 %.0.val, -1
  %.sroa.0.0.i.i.i = tail call i32 @llvm.abs.i32(i32 %.0.val, i1 false) ; 3 uses
  %i.b = icmp ugt i32 %.sroa.0.0.i.i.i, 9999
  br i1 %i.b, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %bb.a
  %.sroa.09.0.lcssa.i.i.i = phi i64 [ 11, %bb.a ], [ %i.l, %.lr.ph.i.i.i ] ; 2 uses
  %.sroa.0.1.lcssa.i.i.i = phi i32 [ %.sroa.0.0.i.i.i, %bb.a ], [ %i.e, %.lr.ph.i.i.i ] ; 3 uses
  %i.c = icmp samesign ugt i32 %.sroa.0.1.lcssa.i.i.i, 99
  br i1 %i.c, label %bb.b, label %bb.c

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.sroa.0.129.i.i.i = phi i32 [ %i.e, %.lr.ph.i.i.i ], [ %.sroa.0.0.i.i.i, %bb.a ] ; 3 uses
  %.sroa.09.028.i.i.i = phi i64 [ %i.l, %.lr.ph.i.i.i ], [ 11, %bb.a ] ; 2 uses
  %i.d = urem i32 %.sroa.0.129.i.i.i, 10000
  %i.e = udiv i32 %.sroa.0.129.i.i.i, 10000       ; 2 uses
  %.lhs.trunc.i.i.i = trunc nuw nsw i32 %i.d to i16 ; 2 uses
  %i.f = udiv i16 %.lhs.trunc.i.i.i, 100
  %i.g = shl nuw nsw i16 %i.f, 1
  %i.h = zext nneg i16 %i.g to i64
  %i.i = urem i16 %.lhs.trunc.i.i.i, 100
  %i.j = shl nuw nsw i16 %i.i, 1
  %i.k = zext nneg i16 %i.j to i64
  %i.l = add i64 %.sroa.09.028.i.i.i, -4          ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr @849, i64 %i.h
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.l
  %i.o = load i16, ptr %i.m, align 1, !noalias !65853
  store i16 %i.o, ptr %i.n, align 1, !alias.scope !65853
  %i.p = getelementptr inbounds nuw i8, ptr @849, i64 %i.k
  %i.q = getelementptr i8, ptr %i.a, i64 %.sroa.09.028.i.i.i
  %i.r = getelementptr i8, ptr %i.q, i64 -2
  %i.s = load i16, ptr %i.p, align 1, !noalias !65853
  store i16 %i.s, ptr %i.r, align 1, !alias.scope !65853
  %i.t = icmp ugt i32 %.sroa.0.129.i.i.i, 99999999
  br i1 %i.t, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

bb.b:                                             ; preds = %._crit_edge.i.i.i
  %.lhs.trunc24.i.i.i = trunc nuw i32 %.sroa.0.1.lcssa.i.i.i to i16 ; 2 uses
  %i.u = urem i16 %.lhs.trunc24.i.i.i, 100
  %i.v = shl nuw nsw i16 %i.u, 1
  %i.w = zext nneg i16 %i.v to i64
  %i.x = udiv i16 %.lhs.trunc24.i.i.i, 100
  %.zext27.i.i.i = zext nneg i16 %i.x to i32
  %i.y = add i64 %.sroa.09.0.lcssa.i.i.i, -2      ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr @849, i64 %i.w
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.y
  %i.ab = load i16, ptr %i.z, align 1, !noalias !65853
  store i16 %i.ab, ptr %i.aa, align 1, !alias.scope !65853
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge.i.i.i
  %.sroa.09.1.i.i.i = phi i64 [ %i.y, %bb.b ], [ %.sroa.09.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 2 uses
  %.sroa.0.2.i.i.i = phi i32 [ %.zext27.i.i.i, %bb.b ], [ %.sroa.0.1.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %i.ac = icmp samesign ult i32 %.sroa.0.2.i.i.i, 10
  br i1 %i.ac, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ad = shl nuw nsw i32 %.sroa.0.2.i.i.i, 1
  %i.ae = zext nneg i32 %i.ad to i64
  %i.af = add i64 %.sroa.09.1.i.i.i, -2           ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr @849, i64 %i.ae
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.af
  %i.ai = load i16, ptr %i.ag, align 1, !noalias !65853
  store i16 %i.ai, ptr %i.ah, align 1, !alias.scope !65853
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.aj = add i64 %.sroa.09.1.i.i.i, -1           ; 2 uses
  %i.ak = trunc nuw nsw i32 %.sroa.0.2.i.i.i to i8
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.aj
  %i.am = or disjoint i8 %i.ak, 48
  store i8 %i.am, ptr %i.al, align 1, !alias.scope !65853
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.09.2.i.i.i = phi i64 [ %i.aj, %bb.e ], [ %i.af, %bb.d ] ; 2 uses
  br i1 %0, label %"_ZN4itoa55_$LT$impl$u20$itoa..private..Sealed$u20$for$u20$i32$GT$5write17h60888a2bbedeb6fbE.exit.i.i", label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.an = add i64 %.sroa.09.2.i.i.i, -1           ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.an
  store i8 45, ptr %i.ao, align 1, !alias.scope !65853
  br label %"_ZN4itoa55_$LT$impl$u20$itoa..private..Sealed$u20$for$u20$i32$GT$5write17h60888a2bbedeb6fbE.exit.i.i"

"_ZN4itoa55_$LT$impl$u20$itoa..private..Sealed$u20$for$u20$i32$GT$5write17h60888a2bbedeb6fbE.exit.i.i": ; preds = %bb.g, %bb.f
  %.sroa.09.3.i.i.i = phi i64 [ %.sroa.09.2.i.i.i, %bb.f ], [ %i.an, %bb.g ] ; 2 uses
  %i.ap = sub i64 11, %.sroa.09.3.i.i.i           ; 5 uses
  %i.aq = icmp ult i64 %i.ap, 12
  tail call void @llvm.assume(i1 %i.aq)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val1) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !65854)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !65855)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !65856)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !65857)
  %i.ar = getelementptr inbounds nuw i8, ptr %.0.val1, i64 16 ; 3 uses
  %i.as = load i64, ptr %i.ar, align 8, !alias.scope !65858, !noalias !65859, !noundef !28 ; 3 uses
  %i.at = load i64, ptr %.0.val1, align 8, !range !29, !alias.scope !65858, !noalias !65859, !noundef !28
  %i.au = sub i64 %i.at, %i.as
  %i.av = icmp ugt i64 %i.ap, %i.au
  br i1 %i.av, label %bb.h, label %"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_i3217h726c845337975a7aE.exit", !prof !30

bb.h:                                             ; preds = %"_ZN4itoa55_$LT$impl$u20$itoa..private..Sealed$u20$for$u20$i32$GT$5write17h60888a2bbedeb6fbE.exit.i.i"
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hbfe87a90490e90eaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.0.val1, i64 noundef %i.as, i64 noundef %i.ap, i64 noundef 1, i64 noundef 1), !noalias !65859
  %.pre.i.i.i.i.i.i.i = load i64, ptr %i.ar, align 8, !alias.scope !65860, !noalias !65859
  br label %"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_i3217h726c845337975a7aE.exit"

"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_i3217h726c845337975a7aE.exit": ; preds = %"_ZN4itoa55_$LT$impl$u20$itoa..private..Sealed$u20$for$u20$i32$GT$5write17h60888a2bbedeb6fbE.exit.i.i", %bb.h
  %i.aw = phi i64 [ %i.as, %"_ZN4itoa55_$LT$impl$u20$itoa..private..Sealed$u20$for$u20$i32$GT$5write17h60888a2bbedeb6fbE.exit.i.i" ], [ %.pre.i.i.i.i.i.i.i, %bb.h ] ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.09.3.i.i.i
  %i.ay = icmp sgt i64 %i.aw, -1
  tail call void @llvm.assume(i1 %i.ay)
  %i.az = getelementptr inbounds nuw i8, ptr %.0.val1, i64 8
  %i.ba = load ptr, ptr %i.az, align 8, !alias.scope !65860, !noalias !65859, !nonnull !28, !noundef !28
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.aw
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bb, ptr nonnull readonly align 1 %i.ax, i64 %i.ap, i1 false), !noalias !65860
  %i.bc = add nuw i64 %i.aw, %i.ap
  store i64 %i.bc, ptr %i.ar, align 8, !alias.scope !65860, !noalias !65859
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN9lsp_types19document_diagnostic1_120_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$lsp_types..document_diagnostic..DocumentDiagnosticReportResult$GT$11deserialize17h3b36f9e749e18504E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(96) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 6 uses
  %i.b = alloca [56 x i8], align 8                ; 8 uses
  %.sroa.5.i.i.i = alloca [40 x i8], align 8      ; 3 uses
  %i.c = alloca [56 x i8], align 8                ; 7 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [56 x i8], align 8                ; 8 uses
  %.sroa.6.i.i.i = alloca [40 x i8], align 8      ; 6 uses
  %i.f = alloca [48 x i8], align 8                ; 7 uses
  %i.g = alloca [32 x i8], align 8                ; 5 uses
  %i.h = alloca [32 x i8], align 8                ; 5 uses
  %i.i = alloca [64 x i8], align 8                ; 11 uses
  %i.j = alloca [16 x i8], align 8                ; 7 uses
  %i.k = alloca [24 x i8], align 8                ; 7 uses
  %i.l = alloca [24 x i8], align 8                ; 7 uses
  %i.m = alloca [24 x i8], align 8                ; 19 uses
  %i.n = alloca [64 x i8], align 8                ; 24 uses
  %i.o = alloca [32 x i8], align 8                ; 4 uses
  %i.p = alloca [56 x i8], align 8                ; 9 uses
  %i.q = alloca [32 x i8], align 8                ; 8 uses
  %i.r = alloca [32 x i8], align 8                ; 13 uses
  %i.s = alloca [48 x i8], align 8                ; 11 uses
  %i.t = alloca [32 x i8], align 8                ; 9 uses
  %i.u = alloca [64 x i8], align 8                ; 9 uses
  %i.v = alloca [24 x i8], align 8                ; 11 uses
  %i.w = alloca [56 x i8], align 8                ; 17 uses
  %i.x = alloca [72 x i8], align 8                ; 25 uses
  %.sroa.17.i.i.i = alloca [48 x i8], align 8     ; 5 uses
  %i.y = alloca [96 x i8], align 8                ; 12 uses
  %i.z = alloca [32 x i8], align 8                ; 5 uses
  %i.aa = alloca [32 x i8], align 8               ; 5 uses
  %i.ab = alloca [64 x i8], align 8               ; 10 uses
  %i.ac = alloca [16 x i8], align 8               ; 7 uses
  %i.ad = alloca [24 x i8], align 8               ; 7 uses
  %i.ae = alloca [64 x i8], align 8               ; 18 uses
  %i.af = alloca [32 x i8], align 8               ; 4 uses
  %i.ag = alloca [56 x i8], align 8               ; 9 uses
  %i.ah = alloca [32 x i8], align 8               ; 8 uses
  %i.ai = alloca [32 x i8], align 8               ; 13 uses
  %i.aj = alloca [48 x i8], align 8               ; 11 uses
  %i.ak = alloca [32 x i8], align 8               ; 9 uses
  %i.al = alloca [64 x i8], align 8               ; 9 uses
  %i.am = alloca [24 x i8], align 8               ; 11 uses
  %i.an = alloca [56 x i8], align 8               ; 17 uses
  %i.ao = alloca [72 x i8], align 8               ; 26 uses
  %.sroa.14.i.i.i = alloca [48 x i8], align 8     ; 5 uses
  %i.ap = alloca [72 x i8], align 8               ; 9 uses
  %i.aq = alloca [8 x i8], align 8                ; 4 uses
  %i.ar = alloca [64 x i8], align 8               ; 6 uses
  %i.as = alloca [32 x i8], align 8               ; 7 uses
  %i.at = alloca [32 x i8], align 8               ; 8 uses
  %i.au = alloca [16 x i8], align 8               ; 7 uses
  %i.av = alloca [32 x i8], align 8               ; 7 uses
  %i.aw = alloca [24 x i8], align 8               ; 11 uses
  %i.ax = alloca [40 x i8], align 8               ; 6 uses
  %i.ay = alloca [32 x i8], align 8               ; 8 uses
  %i.az = alloca [8 x i8], align 8                ; 4 uses
  %i.ba = alloca [16 x i8], align 8               ; 7 uses
  %i.bb = alloca [32 x i8], align 8               ; 8 uses
  %i.bc = alloca [40 x i8], align 8               ; 6 uses
  %i.bd = alloca [24 x i8], align 8               ; 7 uses
  %i.be = alloca [24 x i8], align 8               ; 4 uses
  %i.bf = alloca [24 x i8], align 8               ; 4 uses
  %i.bg = alloca [24 x i8], align 8               ; 4 uses
  %i.bh = alloca [24 x i8], align 8               ; 4 uses
  %i.bi = alloca [24 x i8], align 8               ; 6 uses
  %i.bj = alloca [24 x i8], align 8               ; 6 uses
  %i.bk = alloca [24 x i8], align 8               ; 6 uses
  %i.bl = alloca [24 x i8], align 8               ; 6 uses
  %i.bm = alloca [24 x i8], align 8               ; 5 uses
  %i.bn = alloca [24 x i8], align 8               ; 5 uses
  %i.bo = alloca [24 x i8], align 8               ; 5 uses
  %i.bp = alloca [24 x i8], align 8               ; 5 uses
  %i.bq = alloca [24 x i8], align 8               ; 5 uses
  %i.br = alloca [24 x i8], align 8               ; 5 uses
  %i.bs = alloca [24 x i8], align 8               ; 5 uses
  %i.bt = alloca [24 x i8], align 8               ; 5 uses
  %i.bu = alloca [24 x i8], align 8               ; 5 uses
  %i.bv = alloca [24 x i8], align 8               ; 5 uses
  %i.bw = alloca [24 x i8], align 8               ; 5 uses
  %i.bx = alloca [32 x i8], align 8               ; 4 uses
  %i.by = alloca [32 x i8], align 8               ; 4 uses
  %i.bz = alloca [32 x i8], align 8               ; 4 uses
  %i.ca = alloca [32 x i8], align 8               ; 4 uses
  %i.cb = alloca [32 x i8], align 8               ; 4 uses
end_hunk_12
begin_hunk_13_@"_ZN9lsp_types1_98_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$lsp_types..TextDocumentClientCapabilities$GT$9serialize17h29ee3bea61d8554fE":bb.a
  br i1 %.not100.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.az, label %bb.bt

bb.az:                                            ; preds = %bb.ay
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73701)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73702)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73703)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73704)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73705)
  %i.kx = load ptr, ptr %i.i, align 8, !alias.scope !73706, !noalias !73707, !nonnull !28, !align !35, !noundef !28 ; 4 uses
  %i.ky = load i8, ptr %i.kv, align 8, !range !42, !alias.scope !73706, !noalias !73707, !noundef !28
  %i.kz = icmp eq i8 %i.ky, 1
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.kx, align 8, !noalias !73708 ; 6 uses
  br i1 %i.kz, label %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i", label %bb.ba

bb.ba:                                            ; preds = %bb.az
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73709)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73710)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73711)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73712)
  %i.la = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 16 ; 3 uses
  %i.lb = load i64, ptr %i.la, align 8, !alias.scope !73713, !noalias !73714, !noundef !28 ; 3 uses
  %i.lc = load i64, ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !range !29, !alias.scope !73713, !noalias !73714, !noundef !28
  %i.ld = icmp eq i64 %i.lc, %i.lb
  br i1 %i.ld, label %bb.bb, label %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h4ab301283a333dfdE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", !prof !30

bb.bb:                                            ; preds = %bb.ba
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hbfe87a90490e90eaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %i.lb, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !73714
  %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.la, align 8, !alias.scope !73715, !noalias !73714
  br label %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h4ab301283a333dfdE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"

"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h4ab301283a333dfdE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.bb, %bb.ba
  %i.le = phi i64 [ %i.lb, %bb.ba ], [ %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.bb ] ; 3 uses
  %i.lf = icmp sgt i64 %i.le, -1
  tail call void @llvm.assume(i1 %i.lf)
  %i.lg = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.lh = load ptr, ptr %i.lg, align 8, !alias.scope !73715, !noalias !73714, !nonnull !28, !noundef !28
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 %i.le
  store i8 44, ptr %i.li, align 1, !noalias !73716
  %i.lj = add nuw i64 %i.le, 1
  store i64 %i.lj, ptr %i.la, align 8, !alias.scope !73715, !noalias !73714
  %.val9.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.kx, align 8, !noalias !73708
  br label %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i"

"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h4ab301283a333dfdE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", %bb.az
  %.val9.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.az ], [ %.val9.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h4ab301283a333dfdE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ]
  store i8 2, ptr %i.kv, align 8, !alias.scope !73706, !noalias !73707
  tail call fastcc void @"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_str17hf58c26c162f17e29E"(ptr nonnull %.val9.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1088, i64 noundef 10)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73717)
  %.val.i4.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.kx, align 8, !noalias !73718, !nonnull !28, !align !35, !noundef !28 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73719)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73720)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73721)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73722)
  %i.lk = getelementptr inbounds nuw i8, ptr %.val.i4.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 16 ; 3 uses
  %i.ll = load i64, ptr %i.lk, align 8, !alias.scope !73723, !noalias !73724, !noundef !28 ; 3 uses
  %i.lm = load i64, ptr %.val.i4.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !range !29, !alias.scope !73723, !noalias !73724, !noundef !28
  %i.ln = icmp eq i64 %i.lm, %i.ll
  br i1 %i.ln, label %bb.bc, label %bb.bd, !prof !30

bb.bc:                                            ; preds = %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hbfe87a90490e90eaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i4.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %i.ll, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !73724
  %.pre.i.i.i.i.i.i.i6.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.lk, align 8, !alias.scope !73725, !noalias !73724
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %i.lo = phi i64 [ %i.ll, %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %.pre.i.i.i.i.i.i.i6.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.bc ] ; 3 uses
  %i.lp = icmp sgt i64 %i.lo, -1
  tail call void @llvm.assume(i1 %i.lp)
  %i.lq = getelementptr inbounds nuw i8, ptr %.val.i4.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.lr = load ptr, ptr %i.lq, align 8, !alias.scope !73725, !noalias !73724, !nonnull !28, !noundef !28
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lr, i64 %i.lo
  store i8 58, ptr %i.ls, align 1, !noalias !73726
  %i.lt = add nuw i64 %i.lo, 1
  store i64 %i.lt, ptr %i.lk, align 8, !alias.scope !73725, !noalias !73724
  %.val9.i5.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.kx, align 8, !noalias !73718, !nonnull !28, !noundef !28 ; 18 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73727)
  %i.lu = getelementptr inbounds nuw i8, ptr %0, i64 320
  %.val2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.lu, align 8, !alias.scope !73728, !noalias !73729 ; 3 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %0, i64 328
  %.val3.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.lv, align 8, !alias.scope !73728, !noalias !73729 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73730)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73731)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73732)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73733)
  %i.lw = getelementptr inbounds nuw i8, ptr %.val9.i5.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 16 ; 16 uses
  %i.lx = load i64, ptr %i.lw, align 8, !alias.scope !73734, !noalias !73735, !noundef !28 ; 3 uses
  %i.ly = load i64, ptr %.val9.i5.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !range !29, !alias.scope !73734, !noalias !73735, !noundef !28
  %i.lz = icmp eq i64 %i.ly, %i.lx
  br i1 %i.lz, label %bb.be, label %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", !prof !30

bb.be:                                            ; preds = %bb.bd
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hbfe87a90490e90eaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val9.i5.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %i.lx, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !73735
  %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.lw, align 8, !alias.scope !73736, !noalias !73735
  br label %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"

"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.be, %bb.bd
  %i.ma = phi i64 [ %i.lx, %bb.bd ], [ %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.be ] ; 3 uses
  %i.mb = icmp sgt i64 %i.ma, -1
  tail call void @llvm.assume(i1 %i.mb)
  %i.mc = getelementptr inbounds nuw i8, ptr %.val9.i5.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 8 ; 7 uses
  %i.md = load ptr, ptr %i.mc, align 8, !alias.scope !73736, !noalias !73735, !nonnull !28, !noundef !28
  %i.me = getelementptr inbounds nuw i8, ptr %i.md, i64 %i.ma
  store i8 123, ptr %i.me, align 1, !noalias !73737
  %i.mf = add nuw i64 %i.ma, 1
  store i64 %i.mf, ptr %i.lw, align 8, !alias.scope !73736, !noalias !73735
  tail call fastcc void @"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_str17hf58c26c162f17e29E"(ptr nonnull %.val9.i5.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1082, i64 noundef 8)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73738)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73739)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73740)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73741)
  %i.mg = load i64, ptr %i.lw, align 8, !alias.scope !73742, !noalias !73743, !noundef !28 ; 3 uses
  %i.mh = load i64, ptr %.val9.i5.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !range !29, !alias.scope !73742, !noalias !73743, !noundef !28
  %i.mi = icmp eq i64 %i.mh, %i.mg
  br i1 %i.mi, label %bb.bf, label %_ZN10serde_json3ser9Formatter18begin_object_value17h6d3bc186cdc16551E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !prof !30

bb.bf:                                            ; preds = %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hbfe87a90490e90eaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val9.i5.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %i.mg, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !73743
  %.pre.i.i.i.i.i.i.i7.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.lw, align 8, !alias.scope !73744, !noalias !73743
  br label %_ZN10serde_json3ser9Formatter18begin_object_value17h6d3bc186cdc16551E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZN10serde_json3ser9Formatter18begin_object_value17h6d3bc186cdc16551E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.bf, %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %i.mj = phi i64 [ %i.mg, %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %.pre.i.i.i.i.i.i.i7.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.bf ] ; 3 uses
  %i.mk = icmp sgt i64 %i.mj, -1
  tail call void @llvm.assume(i1 %i.mk)
  %i.ml = load ptr, ptr %i.mc, align 8, !alias.scope !73744, !noalias !73743, !nonnull !28, !noundef !28
  %i.mm = getelementptr inbounds nuw i8, ptr %i.ml, i64 %i.mj
  store i8 58, ptr %i.mm, align 1, !noalias !73745
  %i.mn = add nuw i64 %i.mj, 1                    ; 4 uses
  store i64 %i.mn, ptr %i.lw, align 8, !alias.scope !73744, !noalias !73743
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = shl nuw nsw i64 %.val3.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 2
  %i.mo = getelementptr inbounds nuw i8, ptr %.val2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73746)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73747)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73748)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73749)
  %i.mp = load i64, ptr %.val9.i5.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !range !29, !alias.scope !73750, !noalias !73751, !noundef !28
  %i.mq = icmp eq i64 %i.mp, %i.mn
  br i1 %i.mq, label %bb.bg, label %_ZN10serde_json3ser9Formatter11begin_array17hf03f0e5cad3cbeb7E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !prof !30

bb.bg:                                            ; preds = %_ZN10serde_json3ser9Formatter18begin_object_value17h6d3bc186cdc16551E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hbfe87a90490e90eaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val9.i5.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %i.mn, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !73751
  %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.lw, align 8, !alias.scope !73752, !noalias !73751
  br label %_ZN10serde_json3ser9Formatter11begin_array17hf03f0e5cad3cbeb7E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZN10serde_json3ser9Formatter11begin_array17hf03f0e5cad3cbeb7E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.bg, %_ZN10serde_json3ser9Formatter18begin_object_value17h6d3bc186cdc16551E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.mr = phi i64 [ %i.mn, %_ZN10serde_json3ser9Formatter18begin_object_value17h6d3bc186cdc16551E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.bg ] ; 3 uses
  %i.ms = icmp sgt i64 %i.mr, -1
  tail call void @llvm.assume(i1 %i.ms)
  %i.mt = load ptr, ptr %i.mc, align 8, !alias.scope !73752, !noalias !73751, !nonnull !28, !noundef !28
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mt, i64 %i.mr
  store i8 91, ptr %i.mu, align 1, !noalias !73753
  %i.mv = add nuw i64 %i.mr, 1                    ; 5 uses
  store i64 %i.mv, ptr %i.lw, align 8, !alias.scope !73752, !noalias !73751
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %.val3.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.bh, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.bh:                                            ; preds = %_ZN10serde_json3ser9Formatter11begin_array17hf03f0e5cad3cbeb7E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.mw = load i64, ptr %.val9.i5.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !range !29, !alias.scope !73754, !noalias !73755, !noundef !28
  %i.mx = icmp eq i64 %i.mw, %i.mv
  br i1 %i.mx, label %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeSeq$GT$3end17h918aa763fb13009fE.exit.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", label %bb.br, !prof !30

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZN10serde_json3ser9Formatter11begin_array17hf03f0e5cad3cbeb7E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17hf72fa84c575265a4E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %i.my = phi i64 [ %i.pi, %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17hf72fa84c575265a4E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %i.mv, %_ZN10serde_json3ser9Formatter11begin_array17hf03f0e5cad3cbeb7E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 4 uses
  %i.mz = phi i1 [ false, %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17hf72fa84c575265a4E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ true, %_ZN10serde_json3ser9Formatter11begin_array17hf03f0e5cad3cbeb7E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.na = phi ptr [ %i.nb, %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17hf72fa84c575265a4E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %.val2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN10serde_json3ser9Formatter11begin_array17hf03f0e5cad3cbeb7E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.nb = getelementptr inbounds nuw i8, ptr %i.na, i64 4 ; 2 uses
  %.val8.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i32, ptr %i.na, align 4, !noalias !73756 ; 2 uses
  br i1 %i.mz, label %_ZN10serde_json3ser9Formatter17begin_array_value17h99dd1a34b9f19112E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.bi

bb.bi:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73757)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73758)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73759)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73760)
  %i.nc = load i64, ptr %.val9.i5.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !range !29, !alias.scope !73761, !noalias !73762, !noundef !28
  %i.nd = icmp eq i64 %i.nc, %i.my
  br i1 %i.nd, label %bb.bj, label %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h4ab301283a333dfdE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", !prof !30

bb.bj:                                            ; preds = %bb.bi
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hbfe87a90490e90eaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val9.i5.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %i.my, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !73762
  %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.lw, align 8, !alias.scope !73763, !noalias !73762
  br label %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h4ab301283a333dfdE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"

"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h4ab301283a333dfdE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.bj, %bb.bi
  %i.ne = phi i64 [ %i.my, %bb.bi ], [ %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.bj ] ; 3 uses
  %i.nf = icmp sgt i64 %i.ne, -1
  tail call void @llvm.assume(i1 %i.nf)
  %i.ng = load ptr, ptr %i.mc, align 8, !alias.scope !73763, !noalias !73762, !nonnull !28, !noundef !28
  %i.nh = getelementptr inbounds nuw i8, ptr %i.ng, i64 %i.ne
  store i8 44, ptr %i.nh, align 1, !noalias !73764
  %i.ni = add nuw i64 %i.ne, 1                    ; 2 uses
  store i64 %i.ni, ptr %i.lw, align 8, !alias.scope !73763, !noalias !73762
  br label %_ZN10serde_json3ser9Formatter17begin_array_value17h99dd1a34b9f19112E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZN10serde_json3ser9Formatter17begin_array_value17h99dd1a34b9f19112E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h4ab301283a333dfdE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.nj = phi i64 [ %i.ni, %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h4ab301283a333dfdE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %i.my, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !73765
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73766)
  %2 = icmp sgt i32 %.val8.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, -1
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = tail call i32 @llvm.abs.i32(i32 %.val8.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i1 false) ; 3 uses
  %i.nk = icmp ugt i32 %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 9999
  br i1 %i.nk, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN10serde_json3ser9Formatter17begin_array_value17h99dd1a34b9f19112E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.09.0.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 11, %_ZN10serde_json3ser9Formatter17begin_array_value17h99dd1a34b9f19112E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.nu, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.0.1.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN10serde_json3ser9Formatter17begin_array_value17h99dd1a34b9f19112E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.nn, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.nl = icmp samesign ugt i32 %.sroa.0.1.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 99
  br i1 %i.nl, label %bb.bk, label %bb.bl

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZN10serde_json3ser9Formatter17begin_array_value17h99dd1a34b9f19112E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.0.129.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.nn, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN10serde_json3ser9Formatter17begin_array_value17h99dd1a34b9f19112E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %.sroa.09.028.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.nu, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ 11, %_ZN10serde_json3ser9Formatter17begin_array_value17h99dd1a34b9f19112E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.nm = urem i32 %.sroa.0.129.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 10000
  %i.nn = udiv i32 %.sroa.0.129.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 10000 ; 2 uses
  %.lhs.trunc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = trunc nuw nsw i32 %i.nm to i16 ; 2 uses
  %i.no = udiv i16 %.lhs.trunc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 100
  %i.np = shl nuw nsw i16 %i.no, 1
  %i.nq = zext nneg i16 %i.np to i64
  %i.nr = urem i16 %.lhs.trunc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 100
  %i.ns = shl nuw nsw i16 %i.nr, 1
  %i.nt = zext nneg i16 %i.ns to i64
  %i.nu = add i64 %.sroa.09.028.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, -4 ; 3 uses
  %i.nv = getelementptr inbounds nuw i8, ptr @849, i64 %i.nq
  %i.nw = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.nu
  %i.nx = load i16, ptr %i.nv, align 1, !noalias !73767
  store i16 %i.nx, ptr %i.nw, align 1, !alias.scope !73766, !noalias !73765
  %i.ny = getelementptr inbounds nuw i8, ptr @849, i64 %i.nt
  %i.nz = getelementptr i8, ptr %i.h, i64 %.sroa.09.028.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.oa = getelementptr i8, ptr %i.nz, i64 -2
  %i.ob = load i16, ptr %i.ny, align 1, !noalias !73767
  store i16 %i.ob, ptr %i.oa, align 1, !alias.scope !73766, !noalias !73765
  %i.oc = icmp ugt i32 %.sroa.0.129.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 99999999
  br i1 %i.oc, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.bk:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.lhs.trunc24.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = trunc nuw i32 %.sroa.0.1.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i to i16 ; 2 uses
  %i.od = urem i16 %.lhs.trunc24.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 100
  %i.oe = shl nuw nsw i16 %i.od, 1
  %i.of = zext nneg i16 %i.oe to i64
  %i.og = udiv i16 %.lhs.trunc24.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 100
  %.zext27.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = zext nneg i16 %i.og to i32
  %i.oh = add i64 %.sroa.09.0.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, -2 ; 2 uses
  %i.oi = getelementptr inbounds nuw i8, ptr @849, i64 %i.of
  %i.oj = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.oh
  %i.ok = load i16, ptr %i.oi, align 1, !noalias !73767
  store i16 %i.ok, ptr %i.oj, align 1, !alias.scope !73766, !noalias !73765
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.09.1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.oh, %bb.bk ], [ %.sroa.09.0.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.0.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %.zext27.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.bk ], [ %.sroa.0.1.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.ol = icmp samesign ult i32 %.sroa.0.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 10
  br i1 %i.ol, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.om = shl nuw nsw i32 %.sroa.0.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 1
  %i.on = zext nneg i32 %i.om to i64
  %i.oo = add i64 %.sroa.09.1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, -2 ; 2 uses
  %i.op = getelementptr inbounds nuw i8, ptr @849, i64 %i.on
  %i.oq = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.oo
  %i.or = load i16, ptr %i.op, align 1, !noalias !73767
  store i16 %i.or, ptr %i.oq, align 1, !alias.scope !73766, !noalias !73765
  br label %bb.bo

bb.bn:                                            ; preds = %bb.bl
  %i.os = add i64 %.sroa.09.1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, -1 ; 2 uses
  %i.ot = trunc nuw nsw i32 %.sroa.0.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i to i8
  %i.ou = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.os
  %i.ov = or disjoint i8 %i.ot, 48
  store i8 %i.ov, ptr %i.ou, align 1, !alias.scope !73766, !noalias !73765
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  %.sroa.09.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.os, %bb.bn ], [ %i.oo, %bb.bm ] ; 2 uses
  br i1 %2, label %"_ZN4itoa55_$LT$impl$u20$itoa..private..Sealed$u20$for$u20$i32$GT$5write17h60888a2bbedeb6fbE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.ow = add i64 %.sroa.09.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, -1 ; 2 uses
  %i.ox = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.ow
  store i8 45, ptr %i.ox, align 1, !alias.scope !73766, !noalias !73765
  br label %"_ZN4itoa55_$LT$impl$u20$itoa..private..Sealed$u20$for$u20$i32$GT$5write17h60888a2bbedeb6fbE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"

"_ZN4itoa55_$LT$impl$u20$itoa..private..Sealed$u20$for$u20$i32$GT$5write17h60888a2bbedeb6fbE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.bp, %bb.bo
  %.sroa.09.3.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.09.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.bo ], [ %i.ow, %bb.bp ] ; 2 uses
  %i.oy = sub i64 11, %.sroa.09.3.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ; 5 uses
  %i.oz = icmp ult i64 %i.oy, 12
  tail call void @llvm.assume(i1 %i.oz)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73768)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73769)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73770)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73771)
  %i.pa = load i64, ptr %.val9.i5.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !range !29, !alias.scope !73772, !noalias !73773, !noundef !28
  %i.pb = sub i64 %i.pa, %i.nj
  %i.pc = icmp ugt i64 %i.oy, %i.pb
  br i1 %i.pc, label %bb.bq, label %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17hf72fa84c575265a4E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", !prof !30

bb.bq:                                            ; preds = %"_ZN4itoa55_$LT$impl$u20$itoa..private..Sealed$u20$for$u20$i32$GT$5write17h60888a2bbedeb6fbE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hbfe87a90490e90eaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val9.i5.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %i.nj, i64 noundef %i.oy, i64 noundef 1, i64 noundef 1), !noalias !73773
  %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.lw, align 8, !alias.scope !73774, !noalias !73773
  br label %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17hf72fa84c575265a4E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"

"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17hf72fa84c575265a4E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.bq, %"_ZN4itoa55_$LT$impl$u20$itoa..private..Sealed$u20$for$u20$i32$GT$5write17h60888a2bbedeb6fbE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %i.pd = phi i64 [ %i.nj, %"_ZN4itoa55_$LT$impl$u20$itoa..private..Sealed$u20$for$u20$i32$GT$5write17h60888a2bbedeb6fbE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.bq ] ; 3 uses
  %i.pe = getelementptr inbounds nuw i8, ptr %i.h, i64 %.sroa.09.3.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.pf = icmp sgt i64 %i.pd, -1
  tail call void @llvm.assume(i1 %i.pf)
  %i.pg = load ptr, ptr %i.mc, align 8, !alias.scope !73774, !noalias !73773, !nonnull !28, !noundef !28
  %i.ph = getelementptr inbounds nuw i8, ptr %i.pg, i64 %i.pd
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ph, ptr nonnull readonly align 1 %i.pe, i64 %i.oy, i1 false), !noalias !73775
  %i.pi = add nuw i64 %i.pd, %i.oy                ; 5 uses
  store i64 %i.pi, ptr %i.lw, align 8, !alias.scope !73774, !noalias !73773
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !73765
  %i.pj = icmp eq ptr %i.nb, %i.mo
  br i1 %i.pj, label %_ZN4core4iter6traits8iterator8Iterator12try_for_each17he2d80f862a4ab919E.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZN4core4iter6traits8iterator8Iterator12try_for_each17he2d80f862a4ab919E.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17hf72fa84c575265a4E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %i.pk = load i64, ptr %.val9.i5.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !range !29, !alias.scope !73776, !noalias !73777, !noundef !28
  %i.pl = icmp eq i64 %i.pk, %i.pi
  br i1 %i.pl, label %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeSeq$GT$3end17h918aa763fb13009fE.exit.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", label %bb.br, !prof !30

"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeSeq$GT$3end17h918aa763fb13009fE.exit.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %_ZN4core4iter6traits8iterator8Iterator12try_for_each17he2d80f862a4ab919E.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.bh
  %.lcssa21.sink.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.mv, %bb.bh ], [ %i.pi, %_ZN4core4iter6traits8iterator8Iterator12try_for_each17he2d80f862a4ab919E.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hbfe87a90490e90eaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val9.i5.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %.lcssa21.sink.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !73778
  %.pre.i.i.i.i.i.i.i15.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.lw, align 8, !noalias !73778
  br label %bb.br

bb.br:                                            ; preds = %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeSeq$GT$3end17h918aa763fb13009fE.exit.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", %_ZN4core4iter6traits8iterator8Iterator12try_for_each17he2d80f862a4ab919E.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.bh
  %.sink25.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.pi, %_ZN4core4iter6traits8iterator8Iterator12try_for_each17he2d80f862a4ab919E.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.mv, %bb.bh ], [ %.pre.i.i.i.i.i.i.i15.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeSeq$GT$3end17h918aa763fb13009fE.exit.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ] ; 3 uses
  %i.pm = icmp sgt i64 %.sink25.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, -1
  tail call void @llvm.assume(i1 %i.pm)
  %i.pn = load ptr, ptr %i.mc, align 8, !noalias !73778, !nonnull !28, !noundef !28
  %i.po = getelementptr inbounds nuw i8, ptr %i.pn, i64 %.sink25.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  store i8 93, ptr %i.po, align 1, !noalias !73778
  %i.pp = add nuw i64 %.sink25.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 4 uses
  store i64 %i.pp, ptr %i.lw, align 8, !noalias !73778
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73779)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73780)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73781)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73782)
  %i.pq = load i64, ptr %.val9.i5.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !range !29, !alias.scope !73783, !noalias !73784, !noundef !28
  %i.pr = icmp eq i64 %i.pq, %i.pp
  br i1 %i.pr, label %bb.bs, label %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h27109ef11b2a0b90E.exit.i.i.i.i.i.i.i.i.i.i.i.i", !prof !30

bb.bs:                                            ; preds = %bb.br
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hbfe87a90490e90eaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val9.i5.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %i.pp, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !73784
  %.pre.i.i.i.i.i.i.i.i10.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.lw, align 8, !alias.scope !73785, !noalias !73784
  br label %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h27109ef11b2a0b90E.exit.i.i.i.i.i.i.i.i.i.i.i.i"

"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h27109ef11b2a0b90E.exit.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.bs, %bb.br
  %i.ps = phi i64 [ %i.pp, %bb.br ], [ %.pre.i.i.i.i.i.i.i.i10.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.bs ] ; 3 uses
  %i.pt = icmp sgt i64 %i.ps, -1
  tail call void @llvm.assume(i1 %i.pt)
  %i.pu = load ptr, ptr %i.mc, align 8, !alias.scope !73785, !noalias !73784, !nonnull !28, !noundef !28
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pu, i64 %i.ps
  store i8 125, ptr %i.pv, align 1, !noalias !73786
  %i.pw = add nuw i64 %i.ps, 1
  store i64 %i.pw, ptr %i.lw, align 8, !alias.scope !73785, !noalias !73784
  br label %bb.bt

bb.bt:                                            ; preds = %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h27109ef11b2a0b90E.exit.i.i.i.i.i.i.i.i.i.i.i.i", %bb.ay
  br i1 %.not101.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  call fastcc void @_ZN10serde_core3ser12SerializeMap15serialize_entry17h1dc3500615032f06E(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1089, i64 noundef 20, i8 %i.jn)
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bt
  br i1 %.not102.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.bw, label %bb.cf

bb.bw:                                            ; preds = %bb.bv
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73787)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73788)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73789)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73790)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73791)
  %i.px = load ptr, ptr %i.i, align 8, !alias.scope !73792, !noalias !73793, !nonnull !28, !align !35, !noundef !28 ; 4 uses
  %i.py = load i8, ptr %i.kv, align 8, !range !42, !alias.scope !73792, !noalias !73793, !noundef !28
  %i.pz = icmp eq i8 %i.py, 1
  %.val.i.i.i129.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.px, align 8, !noalias !73794 ; 6 uses
  br i1 %i.pz, label %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit.i.i132.i.i.i.i.i.i.i.i.i.i.i.i", label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i129.i.i.i.i.i.i.i.i.i.i.i.i) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73795)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73796)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73797)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73798)
  %i.qa = getelementptr inbounds nuw i8, ptr %.val.i.i.i129.i.i.i.i.i.i.i.i.i.i.i.i, i64 16 ; 3 uses
  %i.qb = load i64, ptr %i.qa, align 8, !alias.scope !73799, !noalias !73800, !noundef !28 ; 3 uses
  %i.qc = load i64, ptr %.val.i.i.i129.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !range !29, !alias.scope !73799, !noalias !73800, !noundef !28
  %i.qd = icmp eq i64 %i.qc, %i.qb
  br i1 %i.qd, label %bb.by, label %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h4ab301283a333dfdE.exit.i.i.i.i130.i.i.i.i.i.i.i.i.i.i.i.i", !prof !30

bb.by:                                            ; preds = %bb.bx
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hbfe87a90490e90eaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i.i129.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %i.qb, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !73800
  %.pre.i.i.i.i.i.i.i.i.i147.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.qa, align 8, !alias.scope !73801, !noalias !73800
  br label %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h4ab301283a333dfdE.exit.i.i.i.i130.i.i.i.i.i.i.i.i.i.i.i.i"

"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h4ab301283a333dfdE.exit.i.i.i.i130.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.by, %bb.bx
  %i.qe = phi i64 [ %i.qb, %bb.bx ], [ %.pre.i.i.i.i.i.i.i.i.i147.i.i.i.i.i.i.i.i.i.i.i.i, %bb.by ] ; 3 uses
  %i.qf = icmp sgt i64 %i.qe, -1
  tail call void @llvm.assume(i1 %i.qf)
  %i.qg = getelementptr inbounds nuw i8, ptr %.val.i.i.i129.i.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.qh = load ptr, ptr %i.qg, align 8, !alias.scope !73801, !noalias !73800, !nonnull !28, !noundef !28
  %i.qi = getelementptr inbounds nuw i8, ptr %i.qh, i64 %i.qe
  store i8 44, ptr %i.qi, align 1, !noalias !73802
end_hunk_13
begin_hunk_14_@"_ZN9lsp_types1_98_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$lsp_types..TextDocumentClientCapabilities$GT$9serialize17h29ee3bea61d8554fE":bb.a
  tail call fastcc void @"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_str17hf58c26c162f17e29E"(ptr nonnull %.val9.i.i.i84.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1094, i64 noundef 18)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73941)
  %.val.i4.i.i85.i.i.i.i.i.i = load ptr, ptr %i.vm, align 8, !noalias !73942, !nonnull !28, !align !35, !noundef !28 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73943)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73944)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73945)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73946)
  %i.vz = getelementptr inbounds nuw i8, ptr %.val.i4.i.i85.i.i.i.i.i.i, i64 16 ; 3 uses
  %i.wa = load i64, ptr %i.vz, align 8, !alias.scope !73947, !noalias !73948, !noundef !28 ; 3 uses
  %i.wb = load i64, ptr %.val.i4.i.i85.i.i.i.i.i.i, align 8, !range !29, !alias.scope !73947, !noalias !73948, !noundef !28
  %i.wc = icmp eq i64 %i.wb, %i.wa
  br i1 %i.wc, label %bb.db, label %bb.dc, !prof !30

bb.db:                                            ; preds = %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit.i.i83.i.i.i.i.i.i"
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hbfe87a90490e90eaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i4.i.i85.i.i.i.i.i.i, i64 noundef %i.wa, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !73948
  %.pre.i.i.i.i.i.i.i6.i.i.i.i.i.i.i.i = load i64, ptr %i.vz, align 8, !alias.scope !73949, !noalias !73948
  br label %bb.dc

bb.dc:                                            ; preds = %bb.db, %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit.i.i83.i.i.i.i.i.i"
  %i.wd = phi i64 [ %i.wa, %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit.i.i83.i.i.i.i.i.i" ], [ %.pre.i.i.i.i.i.i.i6.i.i.i.i.i.i.i.i, %bb.db ] ; 3 uses
  %i.we = icmp sgt i64 %i.wd, -1
  tail call void @llvm.assume(i1 %i.we)
  %i.wf = getelementptr inbounds nuw i8, ptr %.val.i4.i.i85.i.i.i.i.i.i, i64 8
  %i.wg = load ptr, ptr %i.wf, align 8, !alias.scope !73949, !noalias !73948, !nonnull !28, !noundef !28
  %i.wh = getelementptr inbounds nuw i8, ptr %i.wg, i64 %i.wd
  store i8 58, ptr %i.wh, align 1, !noalias !73950
  %i.wi = add nuw i64 %i.wd, 1
  store i64 %i.wi, ptr %i.vz, align 8, !alias.scope !73949, !noalias !73948
  %.val9.i5.i.i.i.i.i.i.i.i = load ptr, ptr %i.vm, align 8, !noalias !73942, !nonnull !28, !noundef !28 ; 23 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73951)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73952)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73953)
  %.not.i.i.i.i.i.i88.i.i.i.i.i.i = icmp eq i64 %i.hb, -9223372036854775808
  %i.wj = getelementptr inbounds nuw i8, ptr %.val9.i5.i.i.i.i.i.i.i.i, i64 16 ; 20 uses
  br i1 %.not.i.i.i.i.i.i88.i.i.i.i.i.i, label %.split.i.i.i.i.i.i.i.i.i.i.i.i, label %.split13.i.i.i.i.i.i.i.i.i.i.i.i

.split13.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %bb.dc
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73954)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73955)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73956)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73957)
  %i.wk = load i64, ptr %i.wj, align 8, !alias.scope !73958, !noalias !73959, !noundef !28 ; 3 uses
  %i.wl = load i64, ptr %.val9.i5.i.i.i.i.i.i.i.i, align 8, !range !29, !alias.scope !73958, !noalias !73959, !noundef !28
  %i.wm = icmp eq i64 %i.wl, %i.wk
  br i1 %i.wm, label %bb.dd, label %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit.i.i.i.i.i.i.i.i89.i.i.i.i.i.i", !prof !30

bb.dd:                                            ; preds = %.split13.i.i.i.i.i.i.i.i.i.i.i.i
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hbfe87a90490e90eaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val9.i5.i.i.i.i.i.i.i.i, i64 noundef %i.wk, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !73959
  %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i96.i.i.i.i.i.i = load i64, ptr %i.wj, align 8, !alias.scope !73960, !noalias !73959
  br label %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit.i.i.i.i.i.i.i.i89.i.i.i.i.i.i"

.split.i.i.i.i.i.i.i.i.i.i.i.i:                   ; preds = %bb.dc
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73961)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73962)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73963)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73964)
  %i.wn = load i64, ptr %i.wj, align 8, !alias.scope !73965, !noalias !73966, !noundef !28 ; 3 uses
  %i.wo = load i64, ptr %.val9.i5.i.i.i.i.i.i.i.i, align 8, !range !29, !alias.scope !73965, !noalias !73966, !noundef !28
  %i.wp = icmp eq i64 %i.wo, %i.wn
  br i1 %i.wp, label %bb.de, label %_ZN10serde_json3ser9Formatter12begin_object17hddb70660d5368bc0E.exit.i.i.i.i.i.i.i.i97.i.i.i.i.i.i, !prof !30

bb.de:                                            ; preds = %.split.i.i.i.i.i.i.i.i.i.i.i.i
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hbfe87a90490e90eaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val9.i5.i.i.i.i.i.i.i.i, i64 noundef %i.wn, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !73966
  %.pre.i.i.i.i.i.i.i.i17.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.wj, align 8, !alias.scope !73967, !noalias !73966
  br label %_ZN10serde_json3ser9Formatter12begin_object17hddb70660d5368bc0E.exit.i.i.i.i.i.i.i.i97.i.i.i.i.i.i

_ZN10serde_json3ser9Formatter12begin_object17hddb70660d5368bc0E.exit.i.i.i.i.i.i.i.i97.i.i.i.i.i.i: ; preds = %bb.de, %.split.i.i.i.i.i.i.i.i.i.i.i.i
  %i.wq = phi i64 [ %i.wn, %.split.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.pre.i.i.i.i.i.i.i.i17.i.i.i.i.i.i.i.i.i.i.i.i, %bb.de ] ; 3 uses
  %i.wr = icmp sgt i64 %i.wq, -1
  tail call void @llvm.assume(i1 %i.wr)
  %i.ws = getelementptr inbounds nuw i8, ptr %.val9.i5.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.wt = load ptr, ptr %i.ws, align 8, !alias.scope !73967, !noalias !73966, !nonnull !28, !noundef !28
  %i.wu = getelementptr inbounds nuw i8, ptr %i.wt, i64 %i.wq
  store i8 123, ptr %i.wu, align 1, !noalias !73968
  %i.wv = add nuw i64 %i.wq, 1                    ; 4 uses
  store i64 %i.wv, ptr %i.wj, align 8, !alias.scope !73967, !noalias !73966
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73969)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73970)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73971)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73972)
  %i.ww = load i64, ptr %.val9.i5.i.i.i.i.i.i.i.i, align 8, !range !29, !alias.scope !73973, !noalias !73974, !noundef !28
  %i.wx = icmp eq i64 %i.ww, %i.wv
  br i1 %i.wx, label %bb.df, label %.thread27.i.i.i.i.i.i.i.i.i.i.i.i, !prof !30

bb.df:                                            ; preds = %_ZN10serde_json3ser9Formatter12begin_object17hddb70660d5368bc0E.exit.i.i.i.i.i.i.i.i97.i.i.i.i.i.i
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hbfe87a90490e90eaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val9.i5.i.i.i.i.i.i.i.i, i64 noundef %i.wv, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !73974
  %.pre.i.i.i.i.i.i11.i.i.i.i.i.i.i.i98.i.i.i.i.i.i = load i64, ptr %i.wj, align 8, !alias.scope !73975, !noalias !73974
  br label %.thread27.i.i.i.i.i.i.i.i.i.i.i.i

"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit.i.i.i.i.i.i.i.i89.i.i.i.i.i.i": ; preds = %bb.dd, %.split13.i.i.i.i.i.i.i.i.i.i.i.i
  %i.wy = phi i64 [ %i.wk, %.split13.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i96.i.i.i.i.i.i, %bb.dd ] ; 3 uses
  %i.wz = icmp sgt i64 %i.wy, -1
  tail call void @llvm.assume(i1 %i.wz)
  %i.xa = getelementptr inbounds nuw i8, ptr %.val9.i5.i.i.i.i.i.i.i.i, i64 8 ; 7 uses
  %i.xb = load ptr, ptr %i.xa, align 8, !alias.scope !73960, !noalias !73959, !nonnull !28, !noundef !28
  %i.xc = getelementptr inbounds nuw i8, ptr %i.xb, i64 %i.wy
  store i8 123, ptr %i.xc, align 1, !noalias !73976
  %i.xd = add nuw i64 %i.wy, 1
  store i64 %i.xd, ptr %i.wj, align 8, !alias.scope !73960, !noalias !73959
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73977)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73978)
  tail call fastcc void @"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_str17hf58c26c162f17e29E"(ptr nonnull %.val9.i5.i.i.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1082, i64 noundef 8)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73979)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73980)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73981)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73982)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73983)
  %i.xe = load i64, ptr %i.wj, align 8, !alias.scope !73984, !noalias !73985, !noundef !28 ; 3 uses
  %i.xf = load i64, ptr %.val9.i5.i.i.i.i.i.i.i.i, align 8, !range !29, !alias.scope !73984, !noalias !73985, !noundef !28
  %i.xg = icmp eq i64 %i.xf, %i.xe
  br i1 %i.xg, label %bb.dg, label %bb.dh, !prof !30

bb.dg:                                            ; preds = %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit.i.i.i.i.i.i.i.i89.i.i.i.i.i.i"
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hbfe87a90490e90eaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val9.i5.i.i.i.i.i.i.i.i, i64 noundef %i.xe, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !73985
  %.pre.i.i.i.i.i.i.i6.i.i.i.i.i.i.i.i95.i.i.i.i.i.i = load i64, ptr %i.wj, align 8, !alias.scope !73986, !noalias !73985
  br label %bb.dh

bb.dh:                                            ; preds = %bb.dg, %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit.i.i.i.i.i.i.i.i89.i.i.i.i.i.i"
  %i.xh = phi i64 [ %i.xe, %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit.i.i.i.i.i.i.i.i89.i.i.i.i.i.i" ], [ %.pre.i.i.i.i.i.i.i6.i.i.i.i.i.i.i.i95.i.i.i.i.i.i, %bb.dg ] ; 3 uses
  %i.xi = icmp sgt i64 %i.xh, -1
  tail call void @llvm.assume(i1 %i.xi)
  %i.xj = load ptr, ptr %i.xa, align 8, !alias.scope !73986, !noalias !73985, !nonnull !28, !noundef !28
  %i.xk = getelementptr inbounds nuw i8, ptr %i.xj, i64 %i.xh
  store i8 58, ptr %i.xk, align 1, !noalias !73987
  %i.xl = add nuw i64 %i.xh, 1                    ; 4 uses
  store i64 %i.xl, ptr %i.wj, align 8, !alias.scope !73986, !noalias !73985
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73988)
  %i.xm = getelementptr inbounds nuw i8, ptr %0, i64 400
  %.val2.i.i.i.i.i.i.i.i.i.i90.i.i.i.i.i.i = load ptr, ptr %i.xm, align 8, !alias.scope !73989, !noalias !73990, !nonnull !28, !noundef !28 ; 2 uses
  %i.xn = getelementptr inbounds nuw i8, ptr %0, i64 408
  %.val3.i.i.i.i.i.i.i.i.i.i91.i.i.i.i.i.i = load i64, ptr %i.xn, align 8, !alias.scope !73989, !noalias !73990, !noundef !28 ; 2 uses
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = shl nuw nsw i64 %.val3.i.i.i.i.i.i.i.i.i.i91.i.i.i.i.i.i, 2
  %i.xo = getelementptr inbounds nuw i8, ptr %.val2.i.i.i.i.i.i.i.i.i.i90.i.i.i.i.i.i, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73991)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73992)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73993)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73994)
  %i.xp = load i64, ptr %.val9.i5.i.i.i.i.i.i.i.i, align 8, !range !29, !alias.scope !73995, !noalias !73996, !noundef !28
  %i.xq = icmp eq i64 %i.xp, %i.xl
  br i1 %i.xq, label %bb.di, label %_ZN10serde_json3ser9Formatter11begin_array17hf03f0e5cad3cbeb7E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !prof !30

bb.di:                                            ; preds = %bb.dh
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hbfe87a90490e90eaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val9.i5.i.i.i.i.i.i.i.i, i64 noundef %i.xl, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !73996
  %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i94.i.i.i.i.i.i = load i64, ptr %i.wj, align 8, !alias.scope !73997, !noalias !73996
  br label %_ZN10serde_json3ser9Formatter11begin_array17hf03f0e5cad3cbeb7E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZN10serde_json3ser9Formatter11begin_array17hf03f0e5cad3cbeb7E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.di, %bb.dh
  %i.xr = phi i64 [ %i.xl, %bb.dh ], [ %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i94.i.i.i.i.i.i, %bb.di ] ; 3 uses
  %i.xs = icmp sgt i64 %i.xr, -1
  tail call void @llvm.assume(i1 %i.xs)
  %i.xt = load ptr, ptr %i.xa, align 8, !alias.scope !73997, !noalias !73996, !nonnull !28, !noundef !28
  %i.xu = getelementptr inbounds nuw i8, ptr %i.xt, i64 %i.xr
  store i8 91, ptr %i.xu, align 1, !noalias !73998
  %i.xv = add nuw i64 %i.xr, 1                    ; 5 uses
  store i64 %i.xv, ptr %i.wj, align 8, !alias.scope !73997, !noalias !73996
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %.val3.i.i.i.i.i.i.i.i.i.i91.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.dj, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.dj:                                            ; preds = %_ZN10serde_json3ser9Formatter11begin_array17hf03f0e5cad3cbeb7E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.xw = load i64, ptr %.val9.i5.i.i.i.i.i.i.i.i, align 8, !range !29, !alias.scope !73999, !noalias !74000, !noundef !28
  %i.xx = icmp eq i64 %i.xw, %i.xv
  br i1 %i.xx, label %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeSeq$GT$3end17h918aa763fb13009fE.exit.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", label %bb.dt, !prof !30

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZN10serde_json3ser9Formatter11begin_array17hf03f0e5cad3cbeb7E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h10ef2108e8da3637E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %i.xy = phi i64 [ %i.aai, %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h10ef2108e8da3637E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %i.xv, %_ZN10serde_json3ser9Formatter11begin_array17hf03f0e5cad3cbeb7E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 4 uses
  %i.xz = phi i1 [ false, %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h10ef2108e8da3637E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ true, %_ZN10serde_json3ser9Formatter11begin_array17hf03f0e5cad3cbeb7E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.ya = phi ptr [ %i.yb, %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h10ef2108e8da3637E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %.val2.i.i.i.i.i.i.i.i.i.i90.i.i.i.i.i.i, %_ZN10serde_json3ser9Formatter11begin_array17hf03f0e5cad3cbeb7E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.yb = getelementptr inbounds nuw i8, ptr %i.ya, i64 4 ; 2 uses
  %.val8.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i32, ptr %i.ya, align 4, !noalias !74001 ; 2 uses
  br i1 %i.xz, label %_ZN10serde_json3ser9Formatter17begin_array_value17h99dd1a34b9f19112E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.dk

bb.dk:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !74002)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !74003)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !74004)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !74005)
  %i.yc = load i64, ptr %.val9.i5.i.i.i.i.i.i.i.i, align 8, !range !29, !alias.scope !74006, !noalias !74007, !noundef !28
  %i.yd = icmp eq i64 %i.yc, %i.xy
  br i1 %i.yd, label %bb.dl, label %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h4ab301283a333dfdE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", !prof !30

bb.dl:                                            ; preds = %bb.dk
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hbfe87a90490e90eaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val9.i5.i.i.i.i.i.i.i.i, i64 noundef %i.xy, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !74007
  %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i93.i.i.i.i.i.i = load i64, ptr %i.wj, align 8, !alias.scope !74008, !noalias !74007
  br label %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h4ab301283a333dfdE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"

"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h4ab301283a333dfdE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.dl, %bb.dk
  %i.ye = phi i64 [ %i.xy, %bb.dk ], [ %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i93.i.i.i.i.i.i, %bb.dl ] ; 3 uses
  %i.yf = icmp sgt i64 %i.ye, -1
  tail call void @llvm.assume(i1 %i.yf)
  %i.yg = load ptr, ptr %i.xa, align 8, !alias.scope !74008, !noalias !74007, !nonnull !28, !noundef !28
  %i.yh = getelementptr inbounds nuw i8, ptr %i.yg, i64 %i.ye
  store i8 44, ptr %i.yh, align 1, !noalias !74009
  %i.yi = add nuw i64 %i.ye, 1                    ; 2 uses
  store i64 %i.yi, ptr %i.wj, align 8, !alias.scope !74008, !noalias !74007
  br label %_ZN10serde_json3ser9Formatter17begin_array_value17h99dd1a34b9f19112E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZN10serde_json3ser9Formatter17begin_array_value17h99dd1a34b9f19112E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h4ab301283a333dfdE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.yj = phi i64 [ %i.yi, %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h4ab301283a333dfdE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %i.xy, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !74010
  tail call void @llvm.experimental.noalias.scope.decl(metadata !74011)
  %3 = icmp sgt i32 %.val8.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, -1
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = tail call i32 @llvm.abs.i32(i32 %.val8.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i1 false) ; 3 uses
  %i.yk = icmp ugt i32 %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 9999
  br i1 %i.yk, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN10serde_json3ser9Formatter17begin_array_value17h99dd1a34b9f19112E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.09.0.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 11, %_ZN10serde_json3ser9Formatter17begin_array_value17h99dd1a34b9f19112E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.yu, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.0.1.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN10serde_json3ser9Formatter17begin_array_value17h99dd1a34b9f19112E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.yn, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.yl = icmp samesign ugt i32 %.sroa.0.1.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 99
  br i1 %i.yl, label %bb.dm, label %bb.dn

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZN10serde_json3ser9Formatter17begin_array_value17h99dd1a34b9f19112E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.0.129.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.yn, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN10serde_json3ser9Formatter17begin_array_value17h99dd1a34b9f19112E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %.sroa.09.028.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.yu, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ 11, %_ZN10serde_json3ser9Formatter17begin_array_value17h99dd1a34b9f19112E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.ym = urem i32 %.sroa.0.129.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 10000
  %i.yn = udiv i32 %.sroa.0.129.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 10000 ; 2 uses
  %.lhs.trunc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = trunc nuw nsw i32 %i.ym to i16 ; 2 uses
  %i.yo = udiv i16 %.lhs.trunc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 100
  %i.yp = shl nuw nsw i16 %i.yo, 1
  %i.yq = zext nneg i16 %i.yp to i64
  %i.yr = urem i16 %.lhs.trunc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 100
  %i.ys = shl nuw nsw i16 %i.yr, 1
  %i.yt = zext nneg i16 %i.ys to i64
  %i.yu = add i64 %.sroa.09.028.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, -4 ; 3 uses
  %i.yv = getelementptr inbounds nuw i8, ptr @849, i64 %i.yq
  %i.yw = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.yu
  %i.yx = load i16, ptr %i.yv, align 1, !noalias !74012
  store i16 %i.yx, ptr %i.yw, align 1, !alias.scope !74011, !noalias !74010
  %i.yy = getelementptr inbounds nuw i8, ptr @849, i64 %i.yt
  %i.yz = getelementptr i8, ptr %i.g, i64 %.sroa.09.028.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.za = getelementptr i8, ptr %i.yz, i64 -2
  %i.zb = load i16, ptr %i.yy, align 1, !noalias !74012
  store i16 %i.zb, ptr %i.za, align 1, !alias.scope !74011, !noalias !74010
  %i.zc = icmp ugt i32 %.sroa.0.129.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 99999999
  br i1 %i.zc, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.dm:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.lhs.trunc24.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = trunc nuw i32 %.sroa.0.1.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i to i16 ; 2 uses
  %i.zd = urem i16 %.lhs.trunc24.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 100
  %i.ze = shl nuw nsw i16 %i.zd, 1
  %i.zf = zext nneg i16 %i.ze to i64
  %i.zg = udiv i16 %.lhs.trunc24.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 100
  %.zext27.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = zext nneg i16 %i.zg to i32
  %i.zh = add i64 %.sroa.09.0.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, -2 ; 2 uses
  %i.zi = getelementptr inbounds nuw i8, ptr @849, i64 %i.zf
  %i.zj = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.zh
  %i.zk = load i16, ptr %i.zi, align 1, !noalias !74012
  store i16 %i.zk, ptr %i.zj, align 1, !alias.scope !74011, !noalias !74010
  br label %bb.dn

bb.dn:                                            ; preds = %bb.dm, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.09.1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.zh, %bb.dm ], [ %.sroa.09.0.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.0.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %.zext27.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.dm ], [ %.sroa.0.1.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.zl = icmp samesign ult i32 %.sroa.0.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 10
  br i1 %i.zl, label %bb.dp, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.zm = shl nuw nsw i32 %.sroa.0.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 1
  %i.zn = zext nneg i32 %i.zm to i64
  %i.zo = add i64 %.sroa.09.1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, -2 ; 2 uses
  %i.zp = getelementptr inbounds nuw i8, ptr @849, i64 %i.zn
  %i.zq = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.zo
  %i.zr = load i16, ptr %i.zp, align 1, !noalias !74012
  store i16 %i.zr, ptr %i.zq, align 1, !alias.scope !74011, !noalias !74010
  br label %bb.dq

bb.dp:                                            ; preds = %bb.dn
  %i.zs = add i64 %.sroa.09.1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, -1 ; 2 uses
  %i.zt = trunc nuw nsw i32 %.sroa.0.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i to i8
  %i.zu = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.zs
  %i.zv = or disjoint i8 %i.zt, 48
  store i8 %i.zv, ptr %i.zu, align 1, !alias.scope !74011, !noalias !74010
  br label %bb.dq

bb.dq:                                            ; preds = %bb.dp, %bb.do
  %.sroa.09.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.zs, %bb.dp ], [ %i.zo, %bb.do ] ; 2 uses
  br i1 %3, label %"_ZN4itoa55_$LT$impl$u20$itoa..private..Sealed$u20$for$u20$i32$GT$5write17h60888a2bbedeb6fbE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.zw = add i64 %.sroa.09.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, -1 ; 2 uses
  %i.zx = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.zw
  store i8 45, ptr %i.zx, align 1, !alias.scope !74011, !noalias !74010
  br label %"_ZN4itoa55_$LT$impl$u20$itoa..private..Sealed$u20$for$u20$i32$GT$5write17h60888a2bbedeb6fbE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"

"_ZN4itoa55_$LT$impl$u20$itoa..private..Sealed$u20$for$u20$i32$GT$5write17h60888a2bbedeb6fbE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.dr, %bb.dq
  %.sroa.09.3.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.09.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.dq ], [ %i.zw, %bb.dr ] ; 2 uses
  %i.zy = sub i64 11, %.sroa.09.3.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ; 5 uses
  %i.zz = icmp ult i64 %i.zy, 12
  tail call void @llvm.assume(i1 %i.zz)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !74013)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !74014)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !74015)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !74016)
  %i.aaa = load i64, ptr %.val9.i5.i.i.i.i.i.i.i.i, align 8, !range !29, !alias.scope !74017, !noalias !74018, !noundef !28
  %i.aab = sub i64 %i.aaa, %i.yj
  %i.aac = icmp ugt i64 %i.zy, %i.aab
  br i1 %i.aac, label %bb.ds, label %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h10ef2108e8da3637E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", !prof !30

bb.ds:                                            ; preds = %"_ZN4itoa55_$LT$impl$u20$itoa..private..Sealed$u20$for$u20$i32$GT$5write17h60888a2bbedeb6fbE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hbfe87a90490e90eaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val9.i5.i.i.i.i.i.i.i.i, i64 noundef %i.yj, i64 noundef %i.zy, i64 noundef 1, i64 noundef 1), !noalias !74018
  %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.wj, align 8, !alias.scope !74019, !noalias !74018
  br label %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h10ef2108e8da3637E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"

"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h10ef2108e8da3637E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.ds, %"_ZN4itoa55_$LT$impl$u20$itoa..private..Sealed$u20$for$u20$i32$GT$5write17h60888a2bbedeb6fbE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %i.aad = phi i64 [ %i.yj, %"_ZN4itoa55_$LT$impl$u20$itoa..private..Sealed$u20$for$u20$i32$GT$5write17h60888a2bbedeb6fbE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ds ] ; 3 uses
  %i.aae = getelementptr inbounds nuw i8, ptr %i.g, i64 %.sroa.09.3.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.aaf = icmp sgt i64 %i.aad, -1
  tail call void @llvm.assume(i1 %i.aaf)
  %i.aag = load ptr, ptr %i.xa, align 8, !alias.scope !74019, !noalias !74018, !nonnull !28, !noundef !28
  %i.aah = getelementptr inbounds nuw i8, ptr %i.aag, i64 %i.aad
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aah, ptr nonnull readonly align 1 %i.aae, i64 %i.zy, i1 false), !noalias !74020
  %i.aai = add nuw i64 %i.aad, %i.zy              ; 5 uses
  store i64 %i.aai, ptr %i.wj, align 8, !alias.scope !74019, !noalias !74018
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !74010
  %i.aaj = icmp eq ptr %i.yb, %i.xo
  br i1 %i.aaj, label %_ZN4core4iter6traits8iterator8Iterator12try_for_each17hb75d101568fa80ecE.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZN4core4iter6traits8iterator8Iterator12try_for_each17hb75d101568fa80ecE.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h10ef2108e8da3637E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %i.aak = load i64, ptr %.val9.i5.i.i.i.i.i.i.i.i, align 8, !range !29, !alias.scope !74021, !noalias !74022, !noundef !28
  %i.aal = icmp eq i64 %i.aak, %i.aai
  br i1 %i.aal, label %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeSeq$GT$3end17h918aa763fb13009fE.exit.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", label %bb.dt, !prof !30

"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeSeq$GT$3end17h918aa763fb13009fE.exit.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %_ZN4core4iter6traits8iterator8Iterator12try_for_each17hb75d101568fa80ecE.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.dj
  %.lcssa21.sink.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.xv, %bb.dj ], [ %i.aai, %_ZN4core4iter6traits8iterator8Iterator12try_for_each17hb75d101568fa80ecE.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hbfe87a90490e90eaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val9.i5.i.i.i.i.i.i.i.i, i64 noundef %.lcssa21.sink.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !74023
  %.pre.i.i.i.i.i.i.i15.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.wj, align 8, !noalias !74023
  br label %bb.dt

.thread27.i.i.i.i.i.i.i.i.i.i.i.i:                ; preds = %bb.df, %_ZN10serde_json3ser9Formatter12begin_object17hddb70660d5368bc0E.exit.i.i.i.i.i.i.i.i97.i.i.i.i.i.i
  %i.aam = phi i64 [ %i.wv, %_ZN10serde_json3ser9Formatter12begin_object17hddb70660d5368bc0E.exit.i.i.i.i.i.i.i.i97.i.i.i.i.i.i ], [ %.pre.i.i.i.i.i.i11.i.i.i.i.i.i.i.i98.i.i.i.i.i.i, %bb.df ] ; 3 uses
  %i.aan = icmp sgt i64 %i.aam, -1
  tail call void @llvm.assume(i1 %i.aan)
  %i.aao = load ptr, ptr %i.ws, align 8, !alias.scope !73975, !noalias !73974, !nonnull !28, !noundef !28
  %i.aap = getelementptr inbounds nuw i8, ptr %i.aao, i64 %i.aam
  store i8 125, ptr %i.aap, align 1, !noalias !74024
  br label %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17hfdfe025ac0ce5b18E.exit.i.i.i.i.i.i"

bb.dt:                                            ; preds = %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeSeq$GT$3end17h918aa763fb13009fE.exit.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", %_ZN4core4iter6traits8iterator8Iterator12try_for_each17hb75d101568fa80ecE.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.dj
  %.sink25.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.aai, %_ZN4core4iter6traits8iterator8Iterator12try_for_each17hb75d101568fa80ecE.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.xv, %bb.dj ], [ %.pre.i.i.i.i.i.i.i15.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeSeq$GT$3end17h918aa763fb13009fE.exit.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ] ; 3 uses
  %i.aaq = icmp sgt i64 %.sink25.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, -1
  tail call void @llvm.assume(i1 %i.aaq)
  %i.aar = load ptr, ptr %i.xa, align 8, !noalias !74023, !nonnull !28, !noundef !28
  %i.aas = getelementptr inbounds nuw i8, ptr %i.aar, i64 %.sink25.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  store i8 93, ptr %i.aas, align 1, !noalias !74023
  %i.aat = add nuw i64 %.sink25.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 4 uses
  store i64 %i.aat, ptr %i.wj, align 8, !noalias !74023
  tail call void @llvm.experimental.noalias.scope.decl(metadata !74025)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !74026)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !74027)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !74028)
  %i.aau = load i64, ptr %.val9.i5.i.i.i.i.i.i.i.i, align 8, !range !29, !alias.scope !74029, !noalias !74030, !noundef !28
  %i.aav = icmp eq i64 %i.aau, %i.aat
  br i1 %i.aav, label %bb.du, label %_ZN10serde_json3ser9Formatter10end_object17h325f3d47e1b1e2e2E.exit.i.i.i.i.i.i.i.i92.i.i.i.i.i.i, !prof !30

bb.du:                                            ; preds = %bb.dt
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hbfe87a90490e90eaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val9.i5.i.i.i.i.i.i.i.i, i64 noundef %i.aat, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !74030
  %.pre.i.i.i.i.i.i.i.i19.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.wj, align 8, !alias.scope !74031, !noalias !74030
  br label %_ZN10serde_json3ser9Formatter10end_object17h325f3d47e1b1e2e2E.exit.i.i.i.i.i.i.i.i92.i.i.i.i.i.i

_ZN10serde_json3ser9Formatter10end_object17h325f3d47e1b1e2e2E.exit.i.i.i.i.i.i.i.i92.i.i.i.i.i.i: ; preds = %bb.du, %bb.dt
  %i.aaw = phi i64 [ %i.aat, %bb.dt ], [ %.pre.i.i.i.i.i.i.i.i19.i.i.i.i.i.i.i.i.i.i.i.i, %bb.du ] ; 3 uses
  %i.aax = icmp sgt i64 %i.aaw, -1
  tail call void @llvm.assume(i1 %i.aax)
  %i.aay = load ptr, ptr %i.xa, align 8, !alias.scope !74031, !noalias !74030, !nonnull !28, !noundef !28
  %i.aaz = getelementptr inbounds nuw i8, ptr %i.aay, i64 %i.aaw
  store i8 125, ptr %i.aaz, align 1, !noalias !74032
  br label %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17hfdfe025ac0ce5b18E.exit.i.i.i.i.i.i"

"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17hfdfe025ac0ce5b18E.exit.i.i.i.i.i.i": ; preds = %_ZN10serde_json3ser9Formatter10end_object17h325f3d47e1b1e2e2E.exit.i.i.i.i.i.i.i.i92.i.i.i.i.i.i, %.thread27.i.i.i.i.i.i.i.i.i.i.i.i
  %.sink25.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.aam, %.thread27.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.aaw, %_ZN10serde_json3ser9Formatter10end_object17h325f3d47e1b1e2e2E.exit.i.i.i.i.i.i.i.i92.i.i.i.i.i.i ]
  %i.aba = add nuw i64 %.sink25.i.i.i.i.i.i.i.i.i.i.i, 1
  store i64 %i.aba, ptr %i.wj, align 8, !noalias !74033
  br label %bb.dv

bb.dv:                                            ; preds = %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17hfdfe025ac0ce5b18E.exit.i.i.i.i.i.i", %bb.cx
  br i1 %.not61.i.i.i.i.i.i, label %bb.dw, label %bb.dx

bb.dw:                                            ; preds = %bb.dv
  call fastcc void @_ZN10serde_core3ser12SerializeMap15serialize_entry17h1dc3500615032f06E(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.j, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1095, i64 noundef 14, i8 %i.he)
  br label %bb.dx

bb.dx:                                            ; preds = %bb.dw, %bb.dv
  %.pre.pre.i.i.i.i.i.i = load ptr, ptr %i.j, align 8, !noalias !73620 ; 12 uses
  %.pre151.pre.i.i.i.i.i.i = load i8, ptr %i.ie, align 8, !range !42, !noalias !73620 ; 3 uses
  br i1 %.not62.not.i.i.i.i.i.i, label %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h748939a2b0340838E.exit.i.i.i.i.i.i", label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %i.abb = getelementptr inbounds nuw i8, ptr %0, i64 444
  %.val79.i.i.i.i.i.i = load i32, ptr %i.abb, align 4, !alias.scope !73621, !noalias !73622
  %i.abc = icmp eq i8 %.pre151.pre.i.i.i.i.i.i, 1
  %.val.i.i.i101.i.i.i.i.i.i = load ptr, ptr %.pre.pre.i.i.i.i.i.i, align 8, !noalias !74034 ; 6 uses
  br i1 %i.abc, label %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit.i.i104.i.i.i.i.i.i", label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i101.i.i.i.i.i.i) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !74035)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !74036)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !74037)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !74038)
  %i.abd = getelementptr inbounds nuw i8, ptr %.val.i.i.i101.i.i.i.i.i.i, i64 16 ; 3 uses
  %i.abe = load i64, ptr %i.abd, align 8, !alias.scope !74039, !noalias !74040, !noundef !28 ; 3 uses
  %i.abf = load i64, ptr %.val.i.i.i101.i.i.i.i.i.i, align 8, !range !29, !alias.scope !74039, !noalias !74040, !noundef !28
  %i.abg = icmp eq i64 %i.abf, %i.abe
  br i1 %i.abg, label %bb.ea, label %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h4ab301283a333dfdE.exit.i.i.i.i102.i.i.i.i.i.i", !prof !30

bb.ea:                                            ; preds = %bb.dz
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hbfe87a90490e90eaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i.i101.i.i.i.i.i.i, i64 noundef %i.abe, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !74040
  %.pre.i.i.i.i.i.i.i.i.i109.i.i.i.i.i.i = load i64, ptr %i.abd, align 8, !alias.scope !74041, !noalias !74040
end_hunk_14
