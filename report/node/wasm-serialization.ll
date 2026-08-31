Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/wasm-serialization?download=true
inline.NumInlined: 2442
inline.NumDeleted: 1339
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN2v88internal4wasm22NativeModuleSerializer33CanonicalSigIdToModuleLocalTypeIdEj:bb.a
  %.sroa.06.1.i.i = phi ptr [ %.sroa.06.0.i.i, %bb.e ], [ %i.bb, %.thread ], [ %i.bf, %.lr.ph.i.i.i.i ]
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i, i64 12
  %i.bm = load i32, ptr %i.bl, align 4
  ret i32 %i.bm
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal4wasm14WasmSerializerC2EPNS1_12NativeModuleE(ptr noundef nonnull align 8 dereferenceable(88) initializes((0, 8)) %0, ptr noundef %1) unnamed_addr #4 align 2 {
bb.a:
  %2 = alloca %"struct.std::pair.279", align 16   ; 9 uses
  store ptr %1, ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN2v88internal4wasm16WasmCodeRefScopeC1Ev(ptr noundef nonnull align 8 dereferenceable(32) %i.a) #24
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, i8 0, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  call void @_ZNK2v88internal4wasm12NativeModule17SnapshotCodeTableEv(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.279") align 8 %2, ptr noundef nonnull align 8 dereferenceable(552) %1) #24
  %i.d = load ptr, ptr %i.b, align 8              ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = load <2 x ptr>, ptr %2, align 16
  store <2 x ptr> %i.g, ptr %i.b, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 16
  store ptr %i.i, ptr %i.e, align 8
  %.not.i.i.i.i.i.i = icmp eq ptr %i.d, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %2, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIPN2v88internal4wasm8WasmCodeESaIS4_EEaSEOS6_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = ptrtoint ptr %i.f to i64
  %i.k = ptrtoint ptr %i.d to i64
  %i.l = sub i64 %i.j, %i.k
  call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.l) #25
  br label %_ZNSt6vectorIPN2v88internal4wasm8WasmCodeESaIS4_EEaSEOS6_.exit.i

_ZNSt6vectorIPN2v88internal4wasm8WasmCodeESaIS4_EEaSEOS6_.exit.i: ; preds = %bb.b, %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  %i.n = load ptr, ptr %i.c, align 8              ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = load <2 x ptr>, ptr %i.m, align 8
  store <2 x ptr> %i.q, ptr %i.c, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8
  store ptr %i.s, ptr %i.o, align 8
  %.not.i.i.i.i.i3.i = icmp eq ptr %i.n, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i3.i, label %_ZNSt6vectorIN2v88internal4wasm15WellKnownImportESaIS3_EED2Ev.exit.i, label %_ZNSt5tupleIJRSt6vectorIPN2v88internal4wasm8WasmCodeESaIS5_EERS0_INS3_15WellKnownImportESaIS9_EEEEaSIS7_SB_EENSt9enable_ifIXcl12__assignableIT_T0_EEERSD_E4typeEOSt4pairISG_SH_E.exit

_ZNSt5tupleIJRSt6vectorIPN2v88internal4wasm8WasmCodeESaIS5_EERS0_INS3_15WellKnownImportESaIS9_EEEEaSIS7_SB_EENSt9enable_ifIXcl12__assignableIT_T0_EEERSD_E4typeEOSt4pairISG_SH_E.exit: ; preds = %_ZNSt6vectorIPN2v88internal4wasm8WasmCodeESaIS4_EEaSEOS6_.exit.i
  %i.t = ptrtoint ptr %i.p to i64
  %i.u = ptrtoint ptr %i.n to i64
  %i.v = sub i64 %i.t, %i.u
  call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef %i.v) #25
  %.pr = load ptr, ptr %i.m, align 8              ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %.pr, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN2v88internal4wasm15WellKnownImportESaIS3_EED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt5tupleIJRSt6vectorIPN2v88internal4wasm8WasmCodeESaIS5_EERS0_INS3_15WellKnownImportESaIS9_EEEEaSIS7_SB_EENSt9enable_ifIXcl12__assignableIT_T0_EEERSD_E4typeEOSt4pairISG_SH_E.exit
  %i.w = load ptr, ptr %i.r, align 8
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = ptrtoint ptr %.pr to i64
  %i.z = sub i64 %i.x, %i.y
  call void @_ZdlPvm(ptr noundef nonnull %.pr, i64 noundef %i.z) #25
  br label %_ZNSt6vectorIN2v88internal4wasm15WellKnownImportESaIS3_EED2Ev.exit.i

_ZNSt6vectorIN2v88internal4wasm15WellKnownImportESaIS3_EED2Ev.exit.i: ; preds = %_ZNSt6vectorIPN2v88internal4wasm8WasmCodeESaIS4_EEaSEOS6_.exit.i, %bb.c, %_ZNSt5tupleIJRSt6vectorIPN2v88internal4wasm8WasmCodeESaIS5_EERS0_INS3_15WellKnownImportESaIS9_EEEEaSIS7_SB_EENSt9enable_ifIXcl12__assignableIT_T0_EEERSD_E4typeEOSt4pairISG_SH_E.exit
  %i.aa = load ptr, ptr %2, align 16              ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i1.i, label %_ZNSt4pairISt6vectorIPN2v88internal4wasm8WasmCodeESaIS5_EES0_INS3_15WellKnownImportESaIS8_EEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIN2v88internal4wasm15WellKnownImportESaIS3_EED2Ev.exit.i
  %i.ab = load ptr, ptr %i.h, align 16
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = ptrtoint ptr %i.aa to i64
  %i.ae = sub i64 %i.ac, %i.ad
  call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef %i.ae) #25
  br label %_ZNSt4pairISt6vectorIPN2v88internal4wasm8WasmCodeESaIS5_EES0_INS3_15WellKnownImportESaIS8_EEED2Ev.exit

_ZNSt4pairISt6vectorIPN2v88internal4wasm8WasmCodeESaIS5_EES0_INS3_15WellKnownImportESaIS8_EEED2Ev.exit: ; preds = %_ZNSt6vectorIN2v88internal4wasm15WellKnownImportESaIS3_EED2Ev.exit.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  ret void
}

declare void @_ZN2v88internal4wasm16WasmCodeRefScopeC1Ev(ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #5

declare void @_ZNK2v88internal4wasm12NativeModule17SnapshotCodeTableEv(ptr dead_on_unwind writable sret(%"struct.std::pair.279") align 8, ptr noundef nonnull align 8 dereferenceable(552)) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef i64 @_ZNK2v88internal4wasm14WasmSerializer29GetSerializedNativeModuleSizeEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(88) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %1 = alloca %"class.v8::internal::wasm::NativeModuleSerializer", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = ptrtoint ptr %i.g to i64
  %i.l = sub i64 %i.j, %i.k                       ; 2 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i64 %i.l, ptr %.sroa.2.0..sroa_idx.i, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 88
  store ptr %i.n, ptr %i.m, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 48
  store i64 1, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 104
  store i64 0, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 112
  store i32 0, ptr %i.t, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.r, i8 0, i64 17, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  %i.v = load i64, ptr %i.u, align 8
  %i.w = add i64 %i.l, 25
  %i.x = add i64 %i.w, %i.v                       ; 2 uses
  %.not11.i = icmp eq ptr %i.e, %i.c
  br i1 %.not11.i, label %_ZN2v88internal4wasm22NativeModuleSerializerD2Ev.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_ZNK2v88internal4wasm22NativeModuleSerializer11MeasureCodeEPKNS1_8WasmCodeE.exit.i
  %.013.i = phi i64 [ %i.bb, %_ZNK2v88internal4wasm22NativeModuleSerializer11MeasureCodeEPKNS1_8WasmCodeE.exit.i ], [ %i.x, %bb.a ]
  %.01012.i = phi ptr [ %i.bc, %_ZNK2v88internal4wasm22NativeModuleSerializer11MeasureCodeEPKNS1_8WasmCodeE.exit.i ], [ %i.c, %bb.a ] ; 2 uses
  %i.y = load ptr, ptr %.01012.i, align 8         ; 8 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %_ZNK2v88internal4wasm22NativeModuleSerializer11MeasureCodeEPKNS1_8WasmCodeE.exit.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 100
  %i.ab = load i8, ptr %i.aa, align 4
  %i.ac = and i8 %i.ab, 24
  %.not.i.i = icmp eq i8 %i.ac, 16
  br i1 %.not.i.i, label %bb.c, label %_ZNK2v88internal4wasm22NativeModuleSerializer11MeasureCodeEPKNS1_8WasmCodeE.exit.i

bb.c:                                             ; preds = %bb.b
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.ae = load i32, ptr %i.ad, align 8
  %i.af = sext i32 %i.ae to i64
  %i.ag = add nsw i64 %i.af, 66
  %i.ah = getelementptr inbounds nuw i8, ptr %i.y, i64 52
  %i.ai = load i32, ptr %i.ah, align 4
  %i.aj = sext i32 %i.ai to i64
  %i.ak = getelementptr inbounds nuw i8, ptr %i.y, i64 36
  %i.al = load i32, ptr %i.ak, align 4
  %i.am = sext i32 %i.al to i64
  %i.an = getelementptr inbounds nuw i8, ptr %i.y, i64 40
  %i.ao = load i32, ptr %i.an, align 8
  %i.ap = sext i32 %i.ao to i64
  %i.aq = getelementptr inbounds nuw i8, ptr %i.y, i64 44
  %i.ar = load i32, ptr %i.aq, align 4
  %i.as = sext i32 %i.ar to i64
  %i.at = getelementptr inbounds nuw i8, ptr %i.y, i64 48
  %i.au = load i32, ptr %i.at, align 8
  %i.av = sext i32 %i.au to i64
  %i.aw = add nsw i64 %i.ag, %i.aj
  %i.ax = add nsw i64 %i.aw, %i.am
  %i.ay = add nsw i64 %i.ax, %i.ap
  %i.az = add nsw i64 %i.ay, %i.as
  %i.ba = add nsw i64 %i.az, %i.av
  br label %_ZNK2v88internal4wasm22NativeModuleSerializer11MeasureCodeEPKNS1_8WasmCodeE.exit.i

_ZNK2v88internal4wasm22NativeModuleSerializer11MeasureCodeEPKNS1_8WasmCodeE.exit.i: ; preds = %bb.c, %bb.b, %.lr.ph.i
  %.0.i.i = phi i64 [ %i.ba, %bb.c ], [ 1, %.lr.ph.i ], [ 1, %bb.b ]
  %i.bb = add i64 %.0.i.i, %.013.i                ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.01012.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.bc, %i.e
  br i1 %.not.i, label %_ZN2v88internal4wasm22NativeModuleSerializerD2Ev.exit, label %.lr.ph.i

_ZN2v88internal4wasm22NativeModuleSerializerD2Ev.exit: ; preds = %_ZNK2v88internal4wasm22NativeModuleSerializer11MeasureCodeEPKNS1_8WasmCodeE.exit.i, %bb.a
  %.0.lcssa.i = phi i64 [ %i.x, %bb.a ], [ %i.bb, %_ZNK2v88internal4wasm22NativeModuleSerializer11MeasureCodeEPKNS1_8WasmCodeE.exit.i ]
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 216
  %i.be = load ptr, ptr %i.bd, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 96
  %i.bg = load i32, ptr %i.bf, align 8
  %i.bh = zext i32 %i.bg to i64
  %i.bi = shl nuw nsw i64 %i.bh, 2
  %i.bj = add i64 %.0.lcssa.i, 20
  %i.bk = add i64 %i.bj, %i.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  ret i64 %i.bk
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZNK2v88internal4wasm14WasmSerializer21SerializeNativeModuleENS_4base6VectorIhEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(88) %0, ptr %1, i64 %2) local_unnamed_addr #4 align 2 {
bb.a:
  %3 = alloca %"class.v8::internal::RelocIterator", align 8 ; 6 uses
  %4 = alloca %"class.v8::internal::WritableJitAllocation", align 8 ; 10 uses
  %5 = alloca %"class.v8::internal::WritableRelocIterator", align 8 ; 6 uses
  %6 = alloca %"class.v8::internal::WasmCodePointer", align 4 ; 4 uses
  %7 = alloca %"class.absl::flat_hash_map", align 8 ; 12 uses
  %8 = alloca %"class.v8::internal::wasm::NativeModuleSerializer", align 8 ; 24 uses
  %9 = alloca %"class.v8::internal::wasm::(anonymous namespace)::Writer", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  %i.a = load ptr, ptr %0, align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load ptr, ptr %i.b, align 8              ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load ptr, ptr %i.d, align 8              ; 3 uses
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 3
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o                       ; 2 uses
  store ptr %i.a, ptr %8, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  store ptr %i.c, ptr %i.q, align 8
  %.sroa.23.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  store i64 %i.i, ptr %.sroa.23.0..sroa_idx.i, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 2 uses
  store ptr %i.k, ptr %i.r, align 8
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 2 uses
  store i64 %i.p, ptr %.sroa.2.0..sroa_idx.i, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 40 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %8, i64 88 ; 2 uses
  store ptr %i.t, ptr %i.s, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %8, i64 48 ; 3 uses
  store i64 1, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %8, i64 56 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %8, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.v, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %8, i64 80
  %i.y = getelementptr inbounds nuw i8, ptr %8, i64 104 ; 4 uses
  store i64 0, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %8, i64 112 ; 4 uses
  store i32 0, ptr %i.z, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.x, i8 0, i64 17, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  %i.ab = load i64, ptr %i.aa, align 8
  %i.ac = add i64 %i.p, 25
  %i.ad = add i64 %i.ac, %i.ab                    ; 2 uses
  %.not11.i = icmp eq ptr %i.e, %i.c
  br i1 %.not11.i, label %_ZNK2v88internal4wasm22NativeModuleSerializer7MeasureEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_ZNK2v88internal4wasm22NativeModuleSerializer11MeasureCodeEPKNS1_8WasmCodeE.exit.i
  %.013.i = phi i64 [ %i.bh, %_ZNK2v88internal4wasm22NativeModuleSerializer11MeasureCodeEPKNS1_8WasmCodeE.exit.i ], [ %i.ad, %bb.a ]
  %.01012.i = phi ptr [ %i.bi, %_ZNK2v88internal4wasm22NativeModuleSerializer11MeasureCodeEPKNS1_8WasmCodeE.exit.i ], [ %i.c, %bb.a ] ; 2 uses
  %i.ae = load ptr, ptr %.01012.i, align 8        ; 8 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %_ZNK2v88internal4wasm22NativeModuleSerializer11MeasureCodeEPKNS1_8WasmCodeE.exit.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 100
  %i.ah = load i8, ptr %i.ag, align 4
  %i.ai = and i8 %i.ah, 24
  %.not.i.i = icmp eq i8 %i.ai, 16
  br i1 %.not.i.i, label %bb.c, label %_ZNK2v88internal4wasm22NativeModuleSerializer11MeasureCodeEPKNS1_8WasmCodeE.exit.i

bb.c:                                             ; preds = %bb.b
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  %i.ak = load i32, ptr %i.aj, align 8
  %i.al = sext i32 %i.ak to i64
  %i.am = add nsw i64 %i.al, 66
  %i.an = getelementptr inbounds nuw i8, ptr %i.ae, i64 52
  %i.ao = load i32, ptr %i.an, align 4
  %i.ap = sext i32 %i.ao to i64
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ae, i64 36
  %i.ar = load i32, ptr %i.aq, align 4
  %i.as = sext i32 %i.ar to i64
  %i.at = getelementptr inbounds nuw i8, ptr %i.ae, i64 40
  %i.au = load i32, ptr %i.at, align 8
  %i.av = sext i32 %i.au to i64
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ae, i64 44
  %i.ax = load i32, ptr %i.aw, align 4
  %i.ay = sext i32 %i.ax to i64
  %i.az = getelementptr inbounds nuw i8, ptr %i.ae, i64 48
  %i.ba = load i32, ptr %i.az, align 8
  %i.bb = sext i32 %i.ba to i64
  %i.bc = add nsw i64 %i.am, %i.ap
  %i.bd = add nsw i64 %i.bc, %i.as
  %i.be = add nsw i64 %i.bd, %i.av
  %i.bf = add nsw i64 %i.be, %i.ay
  %i.bg = add nsw i64 %i.bf, %i.bb
  br label %_ZNK2v88internal4wasm22NativeModuleSerializer11MeasureCodeEPKNS1_8WasmCodeE.exit.i

_ZNK2v88internal4wasm22NativeModuleSerializer11MeasureCodeEPKNS1_8WasmCodeE.exit.i: ; preds = %bb.c, %bb.b, %.lr.ph.i
  %.0.i.i = phi i64 [ %i.bg, %bb.c ], [ 1, %.lr.ph.i ], [ 1, %bb.b ]
  %i.bh = add i64 %.0.i.i, %.013.i                ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.01012.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.bi, %i.e
  br i1 %.not.i, label %_ZNK2v88internal4wasm22NativeModuleSerializer7MeasureEv.exit, label %.lr.ph.i

_ZNK2v88internal4wasm22NativeModuleSerializer7MeasureEv.exit: ; preds = %_ZNK2v88internal4wasm22NativeModuleSerializer11MeasureCodeEPKNS1_8WasmCodeE.exit.i, %bb.a
  %.0.lcssa.i = phi i64 [ %i.ad, %bb.a ], [ %i.bh, %_ZNK2v88internal4wasm22NativeModuleSerializer11MeasureCodeEPKNS1_8WasmCodeE.exit.i ]
  %i.bj = getelementptr inbounds nuw i8, ptr %i.a, i64 216
  %i.bk = load ptr, ptr %i.bj, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 96
  %i.bm = load i32, ptr %i.bl, align 8
  %i.bn = zext i32 %i.bm to i64
  %i.bo = shl nuw nsw i64 %i.bn, 2
  %i.bp = add i64 %.0.lcssa.i, 20
  %i.bq = add i64 %i.bp, %i.bo
  %i.br = icmp ult i64 %2, %i.bq
  br i1 %i.br, label %_ZNSt10_HashtableIjSt4pairIKjjESaIS2_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %_ZNK2v88internal4wasm22NativeModuleSerializer7MeasureEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  store ptr %1, ptr %9, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 %2
  store ptr %i.bt, ptr %i.bs, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 20 uses
  store ptr %1, ptr %i.bu, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.a, i64 168
  %.sroa.0.0.copyload.i = load i32, ptr %i.bv, align 8
  call fastcc void @_ZN2v88internal4wasm12_GLOBAL__N_111WriteHeaderEPNS2_6WriterENS1_19WasmEnabledFeaturesE(ptr noundef %9, i32 %.sroa.0.0.copyload.i)
  %i.bw = getelementptr inbounds nuw i8, ptr %8, i64 96
  store i8 1, ptr %i.bw, align 8
  %i.bx = load ptr, ptr %i.q, align 8             ; 2 uses
  %i.by = load i64, ptr %.sroa.23.0..sroa_idx.i, align 8 ; 2 uses
  %.not36.i = icmp eq i64 %i.by, 0
  br i1 %.not36.i, label %._crit_edge.i, label %.lr.ph.i10.preheader

.lr.ph.i10.preheader:                             ; preds = %bb.d
  %i.bz = add i64 %i.by, 2305843009213693951      ; 2 uses
  %i.ca = and i64 %i.bz, 2305843009213693951      ; 2 uses
  %i.cb = add nuw nsw i64 %i.ca, 1                ; 2 uses
  %i.cc = icmp eq i64 %i.ca, 0
  br i1 %i.cc, label %.lr.ph.i10.epil.preheader, label %.lr.ph.i10.preheader.new

.lr.ph.i10.preheader.new:                         ; preds = %.lr.ph.i10.preheader
  %unroll_iter = and i64 %i.cb, 4611686018427387902
  br label %.lr.ph.i10

._crit_edge.i.loopexit.unr-lcssa:                 ; preds = %bb.m
  %i.cd = and i64 %i.bz, 1
  %lcmp.mod.not.not = icmp eq i64 %i.cd, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i10.epil.preheader, label %._crit_edge.i

.lr.ph.i10.epil.preheader:                        ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph.i10.preheader
  %.02538.i.epil.init = phi ptr [ %i.bx, %.lr.ph.i10.preheader ], [ %i.eu, %._crit_edge.i.loopexit.unr-lcssa ]
  %.02637.i.epil.init = phi i64 [ 0, %.lr.ph.i10.preheader ], [ %.1.i.1, %._crit_edge.i.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod47 = trunc i64 %i.cb to i1
  call void @llvm.assume(i1 %lcmp.mod47)
  %i.ce = load ptr, ptr %.02538.i.epil.init, align 8 ; 3 uses
  %.not29.i.epil = icmp eq ptr %i.ce, null
  br i1 %.not29.i.epil, label %._crit_edge.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i10.epil.preheader
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 100
  %i.cg = load i8, ptr %i.cf, align 4
  %i.ch = and i8 %i.cg, 24
  %i.ci = icmp eq i8 %i.ch, 16
  br i1 %i.ci, label %bb.f, label %._crit_edge.i

bb.f:                                             ; preds = %bb.e
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ce, i64 32
  %i.ck = load i32, ptr %i.cj, align 8
  %i.cl = sext i32 %i.ck to i64
  %i.cm = add i64 %.02637.i.epil.init, %i.cl
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.loopexit.unr-lcssa, %bb.f, %bb.e, %.lr.ph.i10.epil.preheader, %bb.d
  %.026.lcssa.i = phi i64 [ 0, %bb.d ], [ %.1.i.1, %._crit_edge.i.loopexit.unr-lcssa ], [ %i.cm, %bb.f ], [ %.02637.i.epil.init, %bb.e ], [ %.02637.i.epil.init, %.lr.ph.i10.epil.preheader ] ; 2 uses
  %i.cn = load ptr, ptr %8, align 8
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 280
  %i.cp = load ptr, ptr %i.co, align 8
  %i.cq = call i64 @_ZNK2v88internal4wasm16CompilationState17detected_featuresEv(ptr noundef nonnull align 1 dereferenceable(1) %i.cp) #24
  %.val.i.i.i = load ptr, ptr %i.bu, align 8      ; 6 uses
  store i64 %i.cq, ptr %.val.i.i.i, align 1
  %i.cr = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 8
  store i64 %.026.lcssa.i, ptr %i.cr, align 1
  %i.cs = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 16
  %i.ct = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 923), align 1, !range !10, !noundef !7
  %i.cu = xor i8 %i.ct, 1
  store i8 %i.cu, ptr %i.cs, align 1
  %i.cv = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 17
  %i.cw = load ptr, ptr %8, align 8               ; 4 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 176
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %i.cx, align 8
  store i32 %.sroa.0.0.copyload.i.i.i, ptr %i.cv, align 1
  %i.cy = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 21
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cw, i64 192 ; 2 uses
  %i.da = load i64, ptr %i.cz, align 8
  %i.db = trunc i64 %i.da to i32
  store i32 %i.db, ptr %i.cy, align 1
  %i.dc = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 25 ; 4 uses
  store ptr %i.dc, ptr %i.bu, align 8
  %i.dd = load i64, ptr %i.cz, align 8            ; 3 uses
  %i.de = icmp eq i64 %i.dd, 0
  br i1 %i.de, label %_ZN2v88internal4wasm12_GLOBAL__N_16Writer11WriteVectorIKcEEvNS_4base6VectorIT_EE.exit.i.i, label %bb.g

bb.g:                                             ; preds = %._crit_edge.i
  %i.df = getelementptr inbounds nuw i8, ptr %i.cw, i64 184
end_hunk_0
begin_hunk_1_@_ZNK2v88internal4wasm14WasmSerializer21SerializeNativeModuleENS_4base6VectorIhEE:bb.a
  %i.lr = load i8, ptr %i.dr, align 1, !range !10, !noundef !7
  %i.ls = trunc nuw i8 %i.lr to i1
  store i8 0, ptr %i.dr, align 1
  br i1 %i.ls, label %bb.af, label %_ZNSt14_Optional_baseIN2v88internal19RwxMemoryWriteScopeELb0ELb0EED2Ev.exit.i.i

bb.af:                                            ; preds = %_ZNSt14_Optional_baseIN2v88internal15ThreadIsolation16JitPageReferenceELb0ELb0EED2Ev.exit.i.i
  %i.lt = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 216), align 8, !range !10, !noundef !7
  %i.lu = trunc nuw i8 %i.lt to i1
  %.not.i.i.i.i.i.i = xor i1 %i.lu, true
  %i.lv = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 219), align 1, !range !10
  %i.lw = trunc nuw i8 %i.lv to i1
  %or.cond.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i, i1 true, i1 %i.lw
  br i1 %or.cond.i.i.i.i.i.i, label %bb.ag, label %_ZNSt14_Optional_baseIN2v88internal19RwxMemoryWriteScopeELb0ELb0EED2Ev.exit.i.i

bb.ag:                                            ; preds = %bb.af
  %i.lx = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal15ThreadIsolation13trusted_data_E, i64 8), align 8 ; 2 uses
  %.not2.i.i.i.i.i.i = icmp eq i32 %i.lx, -1
  br i1 %.not2.i.i.i.i.i.i, label %_ZNSt14_Optional_baseIN2v88internal19RwxMemoryWriteScopeELb0ELb0EED2Ev.exit.i.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  call void @_ZN2v84base19MemoryProtectionKey20SetPermissionsForKeyEiNS1_10PermissionE(i32 noundef %i.lx, i32 noundef 2) #24
  br label %_ZNSt14_Optional_baseIN2v88internal19RwxMemoryWriteScopeELb0ELb0EED2Ev.exit.i.i

_ZNSt14_Optional_baseIN2v88internal19RwxMemoryWriteScopeELb0ELb0EED2Ev.exit.i.i: ; preds = %bb.ah, %bb.ag, %bb.af, %_ZNSt14_Optional_baseIN2v88internal15ThreadIsolation16JitPageReferenceELb0ELb0EED2Ev.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %_ZN2v88internal4wasm22NativeModuleSerializer9WriteCodeEPKNS1_8WasmCodeEPNS1_12_GLOBAL__N_16WriterERKN4absl13flat_hash_mapINS0_15WasmCodePointerEjNS9_13hash_internal4HashISB_EESt8equal_toISB_ESaISt4pairIKSB_jEEEE.exit.i

.lr.ph.i.i:                                       ; preds = %_ZN2v88internal4wasm12_GLOBAL__N_16Writer11WriteVectorIKhEEvNS_4base6VectorIT_EE.exit181.i.i, %bb.aq
  %i.ly = load i8, ptr %i.dz, align 8
  switch i8 %i.ly, label %bb.ap [
    i8 5, label %bb.ai
    i8 6, label %bb.aj
    i8 8, label %bb.ak
    i8 7, label %_ZNSt14_Optional_baseIN2v88internal19RwxMemoryWriteScopeELb0ELb0EED2Ev.exit197.i.i
    i8 9, label %bb.al
    i8 10, label %bb.ao
    i8 11, label %bb.ao
  ]

bb.ai:                                            ; preds = %.lr.ph.i.i
  %i.lz = call noundef i64 @_ZNK2v88internal9RelocInfo17wasm_call_addressEv(ptr noundef nonnull align 8 dereferenceable(32) %i.dy) #24
  %i.ma = load ptr, ptr %8, align 8
  %i.mb = call noundef i32 @_ZNK2v88internal4wasm12NativeModule33GetFunctionIndexFromJumpTableSlotEm(ptr noundef nonnull align 8 dereferenceable(552) %i.ma, i64 noundef %i.lz) #24
  %.val127.i.i = load i64, ptr %i.ea, align 8
  %i.mc = inttoptr i64 %.val127.i.i to ptr
  store i32 %i.mb, ptr %i.mc, align 1
  br label %bb.aq

bb.aj:                                            ; preds = %.lr.ph.i.i
  %i.md = call noundef i64 @_ZNK2v88internal9RelocInfo22wasm_stub_call_addressEv(ptr noundef nonnull align 8 dereferenceable(32) %i.dy) #24
  %i.me = load ptr, ptr %8, align 8
  %i.mf = call noundef i32 @_ZNK2v88internal4wasm12NativeModule25GetBuiltinInJumptableSlotEm(ptr noundef nonnull align 8 dereferenceable(552) %i.me, i64 noundef %i.md) #24
  %.val126.i.i = load i64, ptr %i.ea, align 8
  %i.mg = inttoptr i64 %.val126.i.i to ptr
  store i32 %i.mf, ptr %i.mg, align 1
  br label %bb.aq

bb.ak:                                            ; preds = %.lr.ph.i.i
  %i.mh = call noundef i32 @_ZNK2v88internal9RelocInfo21wasm_canonical_sig_idEv(ptr noundef nonnull align 8 dereferenceable(32) %i.dy) #24
  %i.mi = call noundef i32 @_ZN2v88internal4wasm22NativeModuleSerializer33CanonicalSigIdToModuleLocalTypeIdEj(ptr noundef nonnull align 8 dereferenceable(116) %8, i32 noundef %i.mh)
  call void @_ZN2v88internal17WritableRelocInfo25set_wasm_canonical_sig_idEj(ptr noundef nonnull align 8 dereferenceable(40) %i.ea, i32 noundef %i.mi) #24
  br label %bb.aq

_ZNSt14_Optional_baseIN2v88internal19RwxMemoryWriteScopeELb0ELb0EED2Ev.exit197.i.i: ; preds = %.lr.ph.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  %i.mj = load i64, ptr %i.dy, align 8
  %i.mk = inttoptr i64 %i.mj to ptr
  %.0.copyload.i.i.i = load i32, ptr %i.mk, align 1
  store i32 %.0.copyload.i.i.i, ptr %6, align 4
  %i.ml = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK4absl18container_internal12raw_hash_mapINS0_17FlatHashMapPolicyIN2v88internal15WasmCodePointerEjEENS_13hash_internal4HashIS5_EESt8equal_toIS5_ESaISt4pairIKS5_jEEE2atIS5_S6_EEDTclsrT0_5valueclL_ZSt9addressofIKSE_EPT_RSL_EclL_ZSt7declvalIRSK_EDTcl9__declvalISL_ELi0EEEvEEEEERSD_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 4 dereferenceable(4) %6)
  %i.mm = load i32, ptr %i.ml, align 4
  %i.mn = load i64, ptr %i.ea, align 8
  %i.mo = inttoptr i64 %i.mn to ptr
  store i32 %i.mm, ptr %i.mo, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br label %bb.aq

bb.al:                                            ; preds = %.lr.ph.i.i
  %i.mp = load i64, ptr %i.dy, align 8
  %i.mq = inttoptr i64 %i.mp to ptr
  %.0.copyload.i198.i.i = load i64, ptr %i.mq, align 1
  %i.mr = load atomic i8, ptr @_ZGVZN2v88internal4wasm12_GLOBAL__N_121ExternalReferenceList3GetEvE4list acquire, align 8
  %i.ms = icmp eq i8 %i.mr, 0
  br i1 %i.ms, label %bb.am, label %_ZSt9__advanceIPKjlEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.preheader, !prof !12

bb.am:                                            ; preds = %bb.al
  %i.mt = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN2v88internal4wasm12_GLOBAL__N_121ExternalReferenceList3GetEvE4list) #24
  %.not.i.i.i = icmp eq i32 %i.mt, 0
  br i1 %.not.i.i.i, label %_ZSt9__advanceIPKjlEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.preheader, label %bb.an

bb.an:                                            ; preds = %bb.am
  call fastcc void @_ZN2v88internal4wasm12_GLOBAL__N_121ExternalReferenceListC2Ev()
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN2v88internal4wasm12_GLOBAL__N_121ExternalReferenceList3GetEvE4list) #24
  br label %_ZSt9__advanceIPKjlEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.preheader

_ZSt9__advanceIPKjlEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.preheader: ; preds = %bb.an, %bb.am, %bb.al
  br label %_ZSt9__advanceIPKjlEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i

_ZSt9__advanceIPKjlEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i: ; preds = %_ZSt9__advanceIPKjlEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.preheader, %_ZSt9__advanceIPKjlEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi i64 [ %.1.i.i.i.i.i, %_ZSt9__advanceIPKjlEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i ], [ 961, %_ZSt9__advanceIPKjlEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.preheader ] ; 2 uses
  %.0114.i.i.i.i.i = phi ptr [ %.112.i.i.i.i.i, %_ZSt9__advanceIPKjlEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i ], [ getelementptr inbounds nuw (i8, ptr @_ZZN2v88internal4wasm12_GLOBAL__N_121ExternalReferenceList3GetEvE4list, i64 7688), %_ZSt9__advanceIPKjlEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.preheader ] ; 2 uses
  %i.mu = lshr i64 %.05.i.i.i.i.i, 1              ; 3 uses
  %i.mv = getelementptr inbounds nuw [4 x i8], ptr %.0114.i.i.i.i.i, i64 %i.mu ; 2 uses
  %.val13.i.i.i.i.i = load i32, ptr %i.mv, align 4
  %i.mw = zext i32 %.val13.i.i.i.i.i to i64
  %i.mx = getelementptr inbounds nuw [8 x i8], ptr @_ZZN2v88internal4wasm12_GLOBAL__N_121ExternalReferenceList3GetEvE4list, i64 %i.mw
  %i.my = load i64, ptr %i.mx, align 8
  %i.mz = icmp ult i64 %i.my, %.0.copyload.i198.i.i ; 2 uses
  %i.na = getelementptr inbounds nuw i8, ptr %i.mv, i64 4
  %i.nb = xor i64 %i.mu, -1
  %i.nc = add nsw i64 %.05.i.i.i.i.i, %i.nb
  %.112.i.i.i.i.i = select i1 %i.mz, ptr %i.na, ptr %.0114.i.i.i.i.i ; 2 uses
  %.1.i.i.i.i.i = select i1 %i.mz, i64 %i.nc, i64 %i.mu ; 2 uses
  %i.nd = icmp sgt i64 %.1.i.i.i.i.i, 0
  br i1 %i.nd, label %_ZSt9__advanceIPKjlEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i, label %_ZNK2v88internal4wasm12_GLOBAL__N_121ExternalReferenceList16tag_from_addressEm.exit.i.i, !llvm.loop !13

_ZNK2v88internal4wasm12_GLOBAL__N_121ExternalReferenceList16tag_from_addressEm.exit.i.i: ; preds = %_ZSt9__advanceIPKjlEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i
  %i.ne = load i32, ptr %.112.i.i.i.i.i, align 4
  %.val125.i.i = load i64, ptr %i.ea, align 8
  %i.nf = inttoptr i64 %.val125.i.i to ptr
  store i32 %i.ne, ptr %i.nf, align 1
  br label %bb.aq

bb.ao:                                            ; preds = %.lr.ph.i.i, %.lr.ph.i.i
  %i.ng = load i64, ptr %i.dy, align 8
  %i.nh = inttoptr i64 %i.ng to ptr
  %.0.copyload.i200.i.i = load i64, ptr %i.nh, align 1
  %i.ni = load ptr, ptr %i.gu, align 8
  %i.nj = ptrtoint ptr %i.ni to i64
  %i.nk = sub i64 %.0.copyload.i200.i.i, %i.nj
  %i.nl = load i64, ptr %i.ea, align 8
  %i.nm = inttoptr i64 %i.nl to ptr
  store i64 %i.nk, ptr %i.nm, align 1
  br label %bb.aq

bb.ap:                                            ; preds = %.lr.ph.i.i
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #26
  unreachable

bb.aq:                                            ; preds = %bb.ao, %_ZNK2v88internal4wasm12_GLOBAL__N_121ExternalReferenceList16tag_from_addressEm.exit.i.i, %_ZNSt14_Optional_baseIN2v88internal19RwxMemoryWriteScopeELb0ELb0EED2Ev.exit197.i.i, %bb.ak, %bb.aj, %bb.ai
  call void @_ZN2v88internal17RelocIteratorBaseINS0_17WritableRelocInfoEE4nextEv(ptr noundef nonnull align 8 dereferenceable(64) %5) #24
  call void @_ZN2v88internal17RelocIteratorBaseINS0_9RelocInfoEE4nextEv(ptr noundef nonnull align 8 dereferenceable(56) %3) #24
  %i.nn = load i8, ptr %i.dx, align 8, !range !10, !noundef !7
  %i.no = trunc nuw i8 %i.nn to i1
  br i1 %i.no, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !14

_ZN2v88internal4wasm22NativeModuleSerializer9WriteCodeEPKNS1_8WasmCodeEPNS1_12_GLOBAL__N_16WriterERKN4absl13flat_hash_mapINS0_15WasmCodePointerEjNS9_13hash_internal4HashISB_EESt8equal_toISB_ESaISt4pairIKSB_jEEEE.exit.i: ; preds = %_ZNSt14_Optional_baseIN2v88internal19RwxMemoryWriteScopeELb0ELb0EED2Ev.exit.i.i, %bb.q, %bb.o
  %i.np = getelementptr inbounds nuw i8, ptr %.02440.i, i64 8 ; 2 uses
  %.not28.i = icmp eq ptr %i.np, %i.dq
  br i1 %.not28.i, label %._crit_edge42.i, label %bb.n

._crit_edge42.i:                                  ; preds = %_ZN2v88internal4wasm22NativeModuleSerializer9WriteCodeEPKNS1_8WasmCodeEPNS1_12_GLOBAL__N_16WriterERKN4absl13flat_hash_mapINS0_15WasmCodePointerEjNS9_13hash_internal4HashISB_EESt8equal_toISB_ESaISt4pairIKSB_jEEEE.exit.i, %_ZN2v88internal4wasm22NativeModuleSerializer11WriteHeaderEPNS1_12_GLOBAL__N_16WriterEm.exit.i
  %i.nq = load i32, ptr %i.z, align 8
  %i.nr = icmp ne i32 %i.nq, 0                    ; 3 uses
  br i1 %i.nr, label %bb.ar, label %_ZN2v88internal4wasm22NativeModuleSerializer18WriteTieringBudgetEPNS1_12_GLOBAL__N_16WriterE.exit.i

bb.ar:                                            ; preds = %._crit_edge42.i
  %i.ns = load i64, ptr %i.y, align 8
  %i.nt = icmp eq i64 %i.ns, %.026.lcssa.i
  br i1 %i.nt, label %bb.at, label %bb.as, !prof !11

bb.as:                                            ; preds = %bb.ar
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.5) #26
  unreachable

bb.at:                                            ; preds = %bb.ar
  %i.nu = load ptr, ptr %8, align 8               ; 2 uses
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nu, i64 216
  %i.nw = load ptr, ptr %i.nv, align 8
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nw, i64 96
  %i.ny = load i32, ptr %i.nx, align 8
  %.not.i31.i = icmp eq i32 %i.ny, 0
  br i1 %.not.i31.i, label %_ZN2v88internal4wasm22NativeModuleSerializer18WriteTieringBudgetEPNS1_12_GLOBAL__N_16WriterE.exit.i, label %.lr.ph.i32.i

.lr.ph.i32.i:                                     ; preds = %bb.at
  %.val.i.pre.i.i = load ptr, ptr %i.bu, align 8
  br label %bb.au

bb.au:                                            ; preds = %bb.au, %.lr.ph.i32.i
  %.val.i.i33.i = phi ptr [ %.val.i.pre.i.i, %.lr.ph.i32.i ], [ %i.oe, %bb.au ] ; 2 uses
  %i.nz = phi ptr [ %i.nu, %.lr.ph.i32.i ], [ %i.og, %bb.au ]
  %.04.i.i = phi i64 [ 0, %.lr.ph.i32.i ], [ %i.of, %bb.au ] ; 2 uses
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nz, i64 288
  %i.ob = load ptr, ptr %i.oa, align 8
  %i.oc = getelementptr inbounds nuw [4 x i8], ptr %i.ob, i64 %.04.i.i
  %i.od = load atomic i32, ptr %i.oc monotonic, align 4
  store i32 %i.od, ptr %.val.i.i33.i, align 1
  %i.oe = getelementptr inbounds nuw i8, ptr %.val.i.i33.i, i64 4
  %i.of = add nuw nsw i64 %.04.i.i, 1             ; 2 uses
  %i.og = load ptr, ptr %8, align 8               ; 2 uses
  %i.oh = getelementptr inbounds nuw i8, ptr %i.og, i64 216
  %i.oi = load ptr, ptr %i.oh, align 8
  %i.oj = getelementptr inbounds nuw i8, ptr %i.oi, i64 96
  %i.ok = load i32, ptr %i.oj, align 8
  %i.ol = zext i32 %i.ok to i64
  %i.om = icmp samesign ult i64 %i.of, %i.ol
  br i1 %i.om, label %bb.au, label %_ZN2v88internal4wasm22NativeModuleSerializer18WriteTieringBudgetEPNS1_12_GLOBAL__N_16WriterE.exit.i, !llvm.loop !15

_ZN2v88internal4wasm22NativeModuleSerializer18WriteTieringBudgetEPNS1_12_GLOBAL__N_16WriterE.exit.i: ; preds = %bb.au, %bb.at, %._crit_edge42.i
  %i.on = load i64, ptr %7, align 8               ; 4 uses
  %i.oo = icmp ne i64 %i.on, 0
  call void @llvm.assume(i1 %i.oo)
  %i.op = icmp ult i64 %i.on, 2
  br i1 %i.op, label %bb.av, label %10

10:                                               ; preds = %_ZN2v88internal4wasm22NativeModuleSerializer18WriteTieringBudgetEPNS1_12_GLOBAL__N_16WriterE.exit.i
  %11 = getelementptr inbounds nuw i8, ptr %7, i64 8
  %12 = load i64, ptr %11, align 8
  %13 = and i64 %12, 65536                        ; 2 uses
  %.not.i.i.i.i.i35.i = icmp eq i64 %13, 0
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %7, i64 16
  %.sroa.0.0.copyload.i.i.i1.pre.i.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i.i, align 8 ; 5 uses
  %.pre.i.i.i.i = add i64 %i.on, 16               ; 2 uses
  br i1 %.not.i.i.i.i.i35.i, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal15WasmCodePointerEjEENS_13hash_internal4HashIS5_EESt8equal_toIS5_ESaISt4pairIKS5_jEEE7deallocEv.exit.i.i.i, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i1.pre.i.i.i.i, i64 %.pre.i.i.i.i
  %16 = icmp ule ptr %15, %7
  %17 = getelementptr inbounds nuw i8, ptr %7, i64 32
  %18 = icmp ule ptr %17, %.sroa.0.0.copyload.i.i.i1.pre.i.i.i.i
  %19 = select i1 %16, i1 true, i1 %18
  call void @llvm.assume(i1 %19)
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal15WasmCodePointerEjEENS_13hash_internal4HashIS5_EESt8equal_toIS5_ESaISt4pairIKS5_jEEE7deallocEv.exit.i.i.i

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal15WasmCodePointerEjEENS_13hash_internal4HashIS5_EESt8equal_toIS5_ESaISt4pairIKS5_jEEE7deallocEv.exit.i.i.i: ; preds = %10, %14
  %i.oq = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i1.pre.i.i.i.i, i64 %.pre.i.i.i.i
  %20 = icmp ule ptr %i.oq, %7
  %21 = getelementptr inbounds nuw i8, ptr %7, i64 32
  %22 = icmp ule ptr %21, %.sroa.0.0.copyload.i.i.i1.pre.i.i.i.i
  %23 = select i1 %20, i1 true, i1 %22
  call void @llvm.assume(i1 %23)
  %i.or = icmp ne i64 %13, 0
  call void @_ZN4absl18container_internal22DeallocateBackingArrayILm8ESaIcEEEvPvmPNS0_6ctrl_tEmmb(ptr noundef nonnull align 8 dereferenceable(32) %7, i64 noundef %i.on, ptr noundef %.sroa.0.0.copyload.i.i.i1.pre.i.i.i.i, i64 noundef 8, i64 noundef 4, i1 noundef zeroext %i.or)
  br label %bb.av

bb.av:                                            ; preds = %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal15WasmCodePointerEjEENS_13hash_internal4HashIS5_EESt8equal_toIS5_ESaISt4pairIKS5_jEEE7deallocEv.exit.i.i.i, %_ZN2v88internal4wasm22NativeModuleSerializer18WriteTieringBudgetEPNS1_12_GLOBAL__N_16WriterE.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  %.pre16 = load ptr, ptr %i.v, align 8           ; 2 uses
  %.not5.i.i.i.i.i = icmp eq ptr %.pre16, null
  br i1 %.not5.i.i.i.i.i, label %_ZNSt10_HashtableIjSt4pairIKjjESaIS2_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.av, %.lr.ph.i.i.i.i.i
  %.06.i.i.i.i.i = phi ptr [ %i.os, %.lr.ph.i.i.i.i.i ], [ %.pre16, %bb.av ] ; 2 uses
  %i.os = load ptr, ptr %.06.i.i.i.i.i, align 8   ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i.i, i64 noundef 16) #25
  %.not.i.i.i.i.i = icmp eq ptr %i.os, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10_HashtableIjSt4pairIKjjESaIS2_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !16

_ZNSt10_HashtableIjSt4pairIKjjESaIS2_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNK2v88internal4wasm22NativeModuleSerializer7MeasureEv.exit, %bb.av
  %.145 = phi i1 [ false, %_ZNK2v88internal4wasm22NativeModuleSerializer7MeasureEv.exit ], [ %i.nr, %bb.av ], [ %i.nr, %.lr.ph.i.i.i.i.i ]
  %i.ot = load ptr, ptr %i.s, align 8
  %i.ou = load i64, ptr %i.u, align 8
  %i.ov = shl i64 %i.ou, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.ot, i8 0, i64 %i.ov, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.v, i8 0, i64 16, i1 false)
  %i.ow = load ptr, ptr %i.s, align 8             ; 2 uses
  %i.ox = icmp eq ptr %i.ow, %i.t
  br i1 %i.ox, label %_ZN2v88internal4wasm22NativeModuleSerializerD2Ev.exit, label %bb.aw

bb.aw:                                            ; preds = %_ZNSt10_HashtableIjSt4pairIKjjESaIS2_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i
  %i.oy = load i64, ptr %i.u, align 8
  %i.oz = shl i64 %i.oy, 3
  call void @_ZdlPvm(ptr noundef %i.ow, i64 noundef %i.oz) #25
  br label %_ZN2v88internal4wasm22NativeModuleSerializerD2Ev.exit

_ZN2v88internal4wasm22NativeModuleSerializerD2Ev.exit: ; preds = %_ZNSt10_HashtableIjSt4pairIKjjESaIS2_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  ret i1 %.145
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN2v88internal4wasm12_GLOBAL__N_111WriteHeaderEPNS2_6WriterENS1_19WasmEnabledFeaturesE(ptr nofree noundef nonnull captures(none) %0, i32 %1) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 13 uses
  %.val.i = load ptr, ptr %i.a, align 8
  store i32 -1059191434, ptr %.val.i, align 1
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  store ptr %i.c, ptr %i.a, align 8
  %i.d = load i32, ptr @_ZN2v88internal7Version6major_E, align 4 ; 2 uses
  %i.e = xor i32 %i.d, -1
  %i.f = shl i32 %i.d, 15
  %i.g = add i32 %i.f, %i.e                       ; 2 uses
  %i.h = lshr i32 %i.g, 12
  %i.i = xor i32 %i.h, %i.g
  %i.j = mul i32 %i.i, 5                          ; 2 uses
  %i.k = lshr i32 %i.j, 4
  %i.l = xor i32 %i.k, %i.j
  %i.m = mul i32 %i.l, 2057                       ; 2 uses
  %i.n = lshr i32 %i.m, 16
  %i.o = xor i32 %i.n, %i.m
  %i.p = zext i32 %i.o to i64
  %i.q = mul i64 %i.p, -4132994306676758123       ; 2 uses
  %i.r = lshr i64 %i.q, 47
  %i.s = xor i64 %i.r, %i.q
  %i.t = mul i64 %i.s, 3866779316627607737
  %i.u = load i32, ptr @_ZN2v88internal7Version6minor_E, align 4 ; 2 uses
  %i.v = xor i32 %i.u, -1
  %i.w = shl i32 %i.u, 15
  %i.x = add i32 %i.w, %i.v                       ; 2 uses
  %i.y = lshr i32 %i.x, 12
  %i.z = xor i32 %i.y, %i.x
  %i.aa = mul i32 %i.z, 5                         ; 2 uses
  %i.ab = lshr i32 %i.aa, 4
  %i.ac = xor i32 %i.ab, %i.aa
  %i.ad = mul i32 %i.ac, 2057                     ; 2 uses
  %i.ae = lshr i32 %i.ad, 16
  %i.af = xor i32 %i.ae, %i.ad
  %i.ag = zext i32 %i.af to i64
  %i.ah = mul i64 %i.ag, -4132994306676758123     ; 2 uses
  %i.ai = lshr i64 %i.ah, 47
  %i.aj = xor i64 %i.ai, %i.ah
  %i.ak = mul i64 %i.aj, -4132994306676758123
  %i.al = xor i64 %i.ak, %i.t
  %i.am = mul i64 %i.al, 1540483477
  %i.an = load i32, ptr @_ZN2v88internal7Version6build_E, align 4 ; 2 uses
  %i.ao = xor i32 %i.an, -1
  %i.ap = shl i32 %i.an, 15
  %i.aq = add i32 %i.ap, %i.ao                    ; 2 uses
  %i.ar = lshr i32 %i.aq, 12
  %i.as = xor i32 %i.ar, %i.aq
  %i.at = mul i32 %i.as, 5                        ; 2 uses
  %i.au = lshr i32 %i.at, 4
  %i.av = xor i32 %i.au, %i.at
  %i.aw = mul i32 %i.av, 2057                     ; 2 uses
  %i.ax = lshr i32 %i.aw, 16
  %i.ay = xor i32 %i.ax, %i.aw
  %i.az = zext i32 %i.ay to i64
  %i.ba = mul i64 %i.az, -4132994306676758123     ; 2 uses
  %i.bb = lshr i64 %i.ba, 47
  %i.bc = xor i64 %i.bb, %i.ba
  %i.bd = mul i64 %i.bc, 1540483477
  %i.be = xor i64 %i.am, %i.bd
  %i.bf = mul i64 %i.be, 1540483477
  %i.bg = load i32, ptr @_ZN2v88internal7Version6patch_E, align 4 ; 2 uses
  %i.bh = xor i32 %i.bg, -1
  %i.bi = shl i32 %i.bg, 15
  %i.bj = add i32 %i.bi, %i.bh                    ; 2 uses
  %i.bk = lshr i32 %i.bj, 12
  %i.bl = xor i32 %i.bk, %i.bj
  %i.bm = mul i32 %i.bl, 5                        ; 2 uses
  %i.bn = lshr i32 %i.bm, 4
  %i.bo = xor i32 %i.bn, %i.bm
  %i.bp = mul i32 %i.bo, 2057                     ; 2 uses
  %i.bq = lshr i32 %i.bp, 16
  %i.br = xor i32 %i.bq, %i.bp
  %i.bs = zext i32 %i.br to i64
  %i.bt = mul i64 %i.bs, -4132994306676758123     ; 2 uses
  %i.bu = lshr i64 %i.bt, 47
  %i.bv = xor i64 %i.bu, %i.bt
  %i.bw = mul i64 %i.bv, 1540483477
  %i.bx = xor i64 %i.bf, %i.bw
  %i.by = trunc i64 %i.bx to i32
  %i.bz = mul i32 %i.by, 1540483477
  store i32 %i.bz, ptr %i.c, align 1
  %i.ca = load ptr, ptr %i.a, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 4 ; 2 uses
  store ptr %i.cb, ptr %i.a, align 8
  %i.cc = load i8, ptr @_ZN2v88internal11CpuFeatures12initialized_E, align 1, !range !10, !noundef !7
  %i.cd = trunc nuw i8 %i.cc to i1
  br i1 %i.cd, label %_ZN2v88internal11CpuFeatures17SupportedFeaturesEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr @_ZN2v88internal11CpuFeatures12initialized_E, align 1
  tail call void @_ZN2v88internal11CpuFeatures9ProbeImplEb(i1 noundef zeroext false) #24
  %.val.i9.pre = load ptr, ptr %i.a, align 8
  br label %_ZN2v88internal11CpuFeatures17SupportedFeaturesEv.exit

_ZN2v88internal11CpuFeatures17SupportedFeaturesEv.exit: ; preds = %bb.a, %bb.b
  %.val.i9 = phi ptr [ %i.cb, %bb.a ], [ %.val.i9.pre, %bb.b ]
  %i.ce = load i32, ptr @_ZN2v88internal11CpuFeatures10supported_E, align 4
  store i32 %i.ce, ptr %.val.i9, align 1
  %i.cf = load ptr, ptr %i.a, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 4
  store ptr %i.cg, ptr %i.a, align 8
  %i.ch = tail call noundef i32 @_ZN2v88internal8FlagList4HashEv() #24
  %.val.i10 = load ptr, ptr %i.a, align 8
  store i32 %i.ch, ptr %.val.i10, align 1
  %i.ci = load ptr, ptr %i.a, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 4 ; 2 uses
  store ptr %i.cj, ptr %i.a, align 8
  store i32 %1, ptr %i.cj, align 1
  %i.ck = load ptr, ptr %i.a, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 4
  store ptr %i.cl, ptr %i.a, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN2v88internal4wasm24NativeModuleDeserializerC2EPNS1_12NativeModuleE(ptr noundef nonnull align 8 dereferenceable(144) initializes((0, 17), (24, 28)) %0, ptr noundef %1) unnamed_addr #0 align 2 {
bb.a:
  store ptr %1, ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 0, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr %i.e, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 0, ptr %i.f, align 8
  store i8 0, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.g, i8 0, i64 80, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal4wasm24NativeModuleDeserializer15CopyAndRelocateERKNS1_19DeserializationUnitE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #4 align 2 {
bb.a:
  %2 = alloca %"class.v8::internal::WritableJitAllocation", align 8 ; 8 uses
  %3 = alloca %"class.v8::internal::WritableRelocIterator", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.f = load i32, ptr %i.e, align 8
  %i.g = sext i32 %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64
  call void @_ZN2v88internal15ThreadIsolation21RegisterJitAllocationEmmNS1_17JitAllocationTypeEb(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::WritableJitAllocation") align 8 %2, i64 noundef %i.h, i64 noundef %i.g, i32 noundef 1, i1 noundef zeroext false) #24
  %i.i = load ptr, ptr %1, align 8                ; 17 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load i64, ptr %i.j, align 8              ; 10 uses
  %i.l = load i64, ptr %2, align 8
  %i.m = inttoptr i64 %i.l to ptr                 ; 17 uses
  %i.n = icmp eq i64 %i.k, 0
  br i1 %i.n, label %_ZNSt14_Optional_baseIN2v88internal19RwxMemoryWriteScopeELb0ELb0EED2Ev.exit, label %bb.b
end_hunk_1
begin_hunk_2_@_ZN2v88internal4wasm23DeserializeNativeModuleEPNS0_7IsolateENS_4base6VectorIKhEES7_RKNS1_18CompileTimeImportsENS5_IKcEE:bb.a
  %i.abg = icmp eq i32 %.0.i.i.i.i122, 1
  br i1 %i.abg, label %bb.ef, label %_ZNSt12__shared_ptrIN2v88internal4wasm12NativeModuleELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit123, !prof !19

bb.ef:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i121
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aar) #24
  br label %_ZNSt12__shared_ptrIN2v88internal4wasm12NativeModuleELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit123

_ZNSt12__shared_ptrIN2v88internal4wasm12NativeModuleELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit123: ; preds = %bb.dz, %bb.eb, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i121, %bb.ef
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #24
  %.not.i.i124 = icmp eq ptr %.sroa.8.1, null
  br i1 %.not.i.i124, label %_ZNSt12__shared_ptrIN2v88internal4wasm10WasmModuleELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.eg

bb.eg:                                            ; preds = %_ZNSt12__shared_ptrIN2v88internal4wasm12NativeModuleELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit123
  %i.abh = getelementptr inbounds nuw i8, ptr %.sroa.8.1, i64 8 ; 4 uses
  %i.abi = load atomic i64, ptr %i.abh acquire, align 8 ; 2 uses
  %i.abj = icmp eq i64 %i.abi, 4294967297
  %i.abk = trunc i64 %i.abi to i32                ; 2 uses
  br i1 %i.abj, label %bb.eh, label %bb.ei

bb.eh:                                            ; preds = %bb.eg
  store i32 0, ptr %i.abh, align 8
  %i.abl = getelementptr inbounds nuw i8, ptr %.sroa.8.1, i64 12
  store i32 0, ptr %i.abl, align 4
  %i.abm = load ptr, ptr %.sroa.8.1, align 8
  %i.abn = getelementptr inbounds nuw i8, ptr %i.abm, i64 16
  %i.abo = load ptr, ptr %i.abn, align 8
  call void %i.abo(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.1) #24, !inline_history !73
  %i.abp = load ptr, ptr %.sroa.8.1, align 8
  %i.abq = getelementptr inbounds nuw i8, ptr %i.abp, i64 24
  %i.abr = load ptr, ptr %i.abq, align 8
  call void %i.abr(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.1) #24, !inline_history !73
  br label %_ZNSt12__shared_ptrIN2v88internal4wasm10WasmModuleELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.ei:                                            ; preds = %bb.eg
  %i.abs = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i125 = icmp eq i8 %i.abs, 0
  br i1 %.not.i.i.i125, label %bb.ek, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  %i.abt = add nsw i32 %i.abk, -1
  store i32 %i.abt, ptr %i.abh, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i126

bb.ek:                                            ; preds = %bb.ei
  %i.abu = atomicrmw volatile add ptr %i.abh, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i126

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i126: ; preds = %bb.ek, %bb.ej
  %.0.i.i.i.i127 = phi i32 [ %i.abk, %bb.ej ], [ %i.abu, %bb.ek ]
  %i.abv = icmp eq i32 %.0.i.i.i.i127, 1
  br i1 %i.abv, label %bb.el, label %_ZNSt12__shared_ptrIN2v88internal4wasm10WasmModuleELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !19

bb.el:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i126
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.1) #24
  br label %_ZNSt12__shared_ptrIN2v88internal4wasm10WasmModuleELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN2v88internal4wasm10WasmModuleELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.el, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i126, %bb.eh, %_ZNSt12__shared_ptrIN2v88internal4wasm12NativeModuleELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit123, %_ZNSt12__shared_ptrIN2v88internal7metrics8RecorderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %.sroa.0144.2 = phi ptr [ %.sroa.0142.0, %_ZNSt12__shared_ptrIN2v88internal7metrics8RecorderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ], [ %.sroa.0144.1, %_ZNSt12__shared_ptrIN2v88internal4wasm12NativeModuleELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit123 ], [ %.sroa.0144.1, %bb.eh ], [ %.sroa.0144.1, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i126 ], [ %.sroa.0144.1, %bb.el ] ; 2 uses
  %.sroa.0156.2 = phi ptr [ null, %_ZNSt12__shared_ptrIN2v88internal7metrics8RecorderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ], [ %.sroa.0156.1, %_ZNSt12__shared_ptrIN2v88internal4wasm12NativeModuleELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit123 ], [ %.sroa.0156.1, %bb.eh ], [ %.sroa.0156.1, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i126 ], [ %.sroa.0156.1, %bb.el ] ; 2 uses
  %i.abw = getelementptr inbounds nuw i8, ptr %26, i64 24
  %i.abx = load ptr, ptr %i.abw, align 8          ; 2 uses
  %i.aby = getelementptr inbounds nuw i8, ptr %26, i64 40 ; 2 uses
  %i.abz = icmp eq ptr %i.abx, %i.aby
  br i1 %i.abz, label %_ZN2v88internal4wasm9WasmErrorD2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i128

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i128: ; preds = %_ZNSt12__shared_ptrIN2v88internal4wasm10WasmModuleELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.aca = load i64, ptr %i.aby, align 8
  %i.acb = add i64 %i.aca, 1
  call void @_ZdlPvm(ptr noundef %i.abx, i64 noundef %i.acb) #25
  br label %_ZN2v88internal4wasm9WasmErrorD2Ev.exit.i

_ZN2v88internal4wasm9WasmErrorD2Ev.exit.i:        ; preds = %_ZNSt12__shared_ptrIN2v88internal4wasm10WasmModuleELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i128
  %i.acc = getelementptr inbounds nuw i8, ptr %26, i64 8
  %i.acd = load ptr, ptr %i.acc, align 8          ; 8 uses
  %.not.i.i.i129 = icmp eq ptr %i.acd, null
  br i1 %.not.i.i.i129, label %_ZN2v88internal4wasm6ResultISt10shared_ptrINS1_10WasmModuleEEED2Ev.exit, label %bb.em

bb.em:                                            ; preds = %_ZN2v88internal4wasm9WasmErrorD2Ev.exit.i
  %i.ace = getelementptr inbounds nuw i8, ptr %i.acd, i64 8 ; 4 uses
  %i.acf = load atomic i64, ptr %i.ace acquire, align 8 ; 2 uses
  %i.acg = icmp eq i64 %i.acf, 4294967297
  %i.ach = trunc i64 %i.acf to i32                ; 2 uses
  br i1 %i.acg, label %bb.en, label %bb.eo

bb.en:                                            ; preds = %bb.em
  store i32 0, ptr %i.ace, align 8
  %i.aci = getelementptr inbounds nuw i8, ptr %i.acd, i64 12
  store i32 0, ptr %i.aci, align 4
  %i.acj = load ptr, ptr %i.acd, align 8
  %i.ack = getelementptr inbounds nuw i8, ptr %i.acj, i64 16
  %i.acl = load ptr, ptr %i.ack, align 8
  call void %i.acl(ptr noundef nonnull align 8 dereferenceable(16) %i.acd) #24, !inline_history !74
  %i.acm = load ptr, ptr %i.acd, align 8
  %i.acn = getelementptr inbounds nuw i8, ptr %i.acm, i64 24
  %i.aco = load ptr, ptr %i.acn, align 8
  call void %i.aco(ptr noundef nonnull align 8 dereferenceable(16) %i.acd) #24, !inline_history !74
  br label %_ZN2v88internal4wasm6ResultISt10shared_ptrINS1_10WasmModuleEEED2Ev.exit

bb.eo:                                            ; preds = %bb.em
  %i.acp = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i.i130 = icmp eq i8 %i.acp, 0
  br i1 %.not.i.i.i.i130, label %bb.eq, label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  %i.acq = add nsw i32 %i.ach, -1
  store i32 %i.acq, ptr %i.ace, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.eq:                                            ; preds = %bb.eo
  %i.acr = atomicrmw volatile add ptr %i.ace, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.eq, %bb.ep
  %.0.i.i.i.i.i = phi i32 [ %i.ach, %bb.ep ], [ %i.acr, %bb.eq ]
  %i.acs = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.acs, label %bb.er, label %_ZN2v88internal4wasm6ResultISt10shared_ptrINS1_10WasmModuleEEED2Ev.exit, !prof !19

bb.er:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.acd) #24
  br label %_ZN2v88internal4wasm6ResultISt10shared_ptrINS1_10WasmModuleEEED2Ev.exit

_ZN2v88internal4wasm6ResultISt10shared_ptrINS1_10WasmModuleEEED2Ev.exit: ; preds = %_ZN2v88internal4wasm9WasmErrorD2Ev.exit.i, %bb.en, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.er
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #24
  %.not.i.i132 = icmp eq ptr %.sroa.0144.2, null
  br i1 %.not.i.i132, label %_ZN2v84base11OwnedVectorIKhED2Ev.exit134, label %_ZNKSt14default_deleteIA_KhEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i133

_ZNKSt14default_deleteIA_KhEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i133: ; preds = %_ZN2v88internal4wasm6ResultISt10shared_ptrINS1_10WasmModuleEEED2Ev.exit
  call void @_ZdaPv(ptr noundef nonnull %.sroa.0144.2) #25
  br label %_ZN2v84base11OwnedVectorIKhED2Ev.exit134

_ZN2v84base11OwnedVectorIKhED2Ev.exit134:         ; preds = %_ZNKSt14default_deleteIA_KhEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i133, %_ZN2v88internal4wasm6ResultISt10shared_ptrINS1_10WasmModuleEEED2Ev.exit, %_ZN2v88internal4wasm18IsSupportedVersionENS_4base6VectorIKhEENS1_19WasmEnabledFeaturesE.exit, %_ZN2v88internal7Isolate14native_contextEv.exit
  %.sroa.0156.3 = phi ptr [ null, %_ZN2v88internal4wasm18IsSupportedVersionENS_4base6VectorIKhEENS1_19WasmEnabledFeaturesE.exit ], [ null, %_ZN2v88internal7Isolate14native_contextEv.exit ], [ %.sroa.0156.2, %_ZNKSt14default_deleteIA_KhEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i133 ], [ %.sroa.0156.2, %_ZN2v88internal4wasm6ResultISt10shared_ptrINS1_10WasmModuleEEED2Ev.exit ]
  ret ptr %.sroa.0156.3
}

declare i32 @_ZN2v88internal4wasm19WasmEnabledFeatures11FromIsolateEPNS0_7IsolateE(ptr noundef) local_unnamed_addr #5

declare noundef zeroext i1 @_ZN2v88internal4wasm20IsWasmCodegenAllowedEPNS0_7IsolateENS0_12DirectHandleINS0_13NativeContextEEE(ptr noundef, ptr) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

declare void @_ZN2v88internal4wasm16DecodeWasmModuleENS1_19WasmEnabledFeaturesENS_4base6VectorIKhEEbNS1_12ModuleOriginEPNS0_8CountersESt10shared_ptrINS0_7metrics8RecorderEENS_7metrics8Recorder9ContextIdENS1_14DecodingMethodEPNS1_20WasmDetectedFeaturesE(ptr dead_on_unwind writable sret(%"class.v8::internal::wasm::Result") align 8, i32, ptr, i64, i1 noundef zeroext, i8 noundef zeroext, ptr noundef, ptr noundef, i64, i32 noundef, ptr noundef) local_unnamed_addr #5

declare i64 @_ZN2v88internal7Isolate30GetOrRegisterRecorderContextIdENS0_12DirectHandleINS0_13NativeContextEEE(ptr noundef nonnull align 8 dereferenceable(64320), ptr) local_unnamed_addr #5

declare noundef ptr @_ZN2v88internal4wasm13GetWasmEngineEv() local_unnamed_addr #5

declare void @_ZN2v88internal4wasm10WasmEngine20MaybeGetNativeModuleENS1_12ModuleOriginENS_4base6VectorIKhEERKNS1_18CompileTimeImportsEPNS0_7IsolateE(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.805") align 8, ptr noundef nonnull align 8 dereferenceable(8488), i8 noundef zeroext, ptr, i64, ptr noundef nonnull align 8 dereferenceable(40), ptr noundef) local_unnamed_addr #5

declare noundef i64 @_ZN2v88internal4wasm15WasmCodeManager28EstimateNativeModuleCodeSizeEPKNS1_10WasmModuleE(ptr noundef) local_unnamed_addr #5

declare void @_ZN2v88internal4wasm10WasmEngine15NewNativeModuleEPNS0_7IsolateENS1_19WasmEnabledFeaturesENS1_20WasmDetectedFeaturesENS1_18CompileTimeImportsESt10shared_ptrIKNS1_10WasmModuleEEm(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.805") align 8, ptr noundef nonnull align 8 dereferenceable(8488), ptr noundef, i32, i64, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

declare void @_ZN2v88internal4wasm16CompilationState18set_compilation_idEi(ptr noundef nonnull align 1 dereferenceable(1), i32 noundef) local_unnamed_addr #5

declare void @_ZN2v88internal4wasm12NativeModule12SetWireBytesENS_4base11OwnedVectorIKhEE(ptr noundef nonnull align 8 dereferenceable(552), ptr noundef) local_unnamed_addr #5

declare void @_ZN2v88internal4wasm10WasmEngine23UpdateNativeModuleCacheEbSt10shared_ptrINS1_12NativeModuleEEPNS0_7IsolateE(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.805") align 8, ptr noundef nonnull align 8 dereferenceable(8488), i1 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @_ZN2v88internal4wasm16CompilationState30InitializeAfterDeserializationENS_4base6VectorIKiEES6_(ptr noundef nonnull align 1 dereferenceable(1), ptr, i64, ptr, i64) local_unnamed_addr #5

declare i64 @_ZNK2v88internal4wasm16CompilationState17detected_featuresEv(ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #5

declare void @_ZN2v88internal4wasm23PublishDetectedFeaturesENS1_20WasmDetectedFeaturesEPNS0_7IsolateEb(i64, ptr noundef, i1 noundef zeroext) local_unnamed_addr #5

declare ptr @_ZN2v88internal4wasm10WasmEngine17GetOrCreateScriptEPNS0_7IsolateERKSt10shared_ptrINS1_12NativeModuleEENS_4base6VectorIKcEE(ptr noundef nonnull align 8 dereferenceable(8488), ptr noundef, ptr noundef nonnull align 8 dereferenceable(16), ptr, i64) local_unnamed_addr #5

declare ptr @_ZN2v88internal16WasmModuleObject3NewEPNS0_7IsolateESt10shared_ptrINS0_4wasm12NativeModuleEENS0_12DirectHandleINS0_6ScriptEEE(ptr noundef, ptr noundef, ptr) local_unnamed_addr #5

declare void @_ZN2v88internal5Debug14OnAfterCompileENS0_12DirectHandleINS0_6ScriptEEE(ptr noundef nonnull align 8 dereferenceable(256), ptr) local_unnamed_addr #5

declare void @_ZN2v88internal4wasm12NativeModule12LogWasmCodesEPNS0_7IsolateENS0_6TaggedINS0_6ScriptEEE(ptr noundef nonnull align 8 dereferenceable(552), ptr noundef, i64) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #9

declare noundef i32 @_ZN2v88internal8FlagList4HashEv() local_unnamed_addr #5

declare void @_ZN2v88internal11CpuFeatures9ProbeImplEb(i1 noundef zeroext) local_unnamed_addr #5

declare void @_ZNK2v88internal4wasm12NativeModule42CreateIndirectCallTargetToFunctionIndexMapEv(ptr dead_on_unwind writable sret(%"class.absl::flat_hash_map") align 8, ptr noundef nonnull align 8 dereferenceable(552)) local_unnamed_addr #5

declare void @_ZN2v88internal13RelocIteratorC1ENS_4base6VectorIhEENS3_IKhEEmi(ptr noundef nonnull align 8 dereferenceable(56), ptr, i64, ptr, i64, i64 noundef, i32 noundef) unnamed_addr #5

declare noundef i64 @_ZNK2v88internal9RelocInfo17wasm_call_addressEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #5

declare noundef i32 @_ZNK2v88internal4wasm12NativeModule33GetFunctionIndexFromJumpTableSlotEm(ptr noundef nonnull align 8 dereferenceable(552), i64 noundef) local_unnamed_addr #5

declare noundef i64 @_ZNK2v88internal9RelocInfo22wasm_stub_call_addressEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #5

declare noundef i32 @_ZNK2v88internal4wasm12NativeModule25GetBuiltinInJumptableSlotEm(ptr noundef nonnull align 8 dereferenceable(552), i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 4 dereferenceable(4) ptr @_ZNK4absl18container_internal12raw_hash_mapINS0_17FlatHashMapPolicyIN2v88internal15WasmCodePointerEjEENS_13hash_internal4HashIS5_EESt8equal_toIS5_ESaISt4pairIKS5_jEEE2atIS5_S6_EEDTclsrT0_5valueclL_ZSt9addressofIKSE_EPT_RSL_EclL_ZSt7declvalIRSK_EDTcl9__declvalISL_ELi0EEEvEEEEERSD_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #10 comdat align 2 {
bb.a:
  %i.a = load i64, ptr %0, align 8                ; 4 uses
  %i.b = icmp ult i64 %i.a, 2
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8
  %.not.i.i.i.i = icmp ult i64 %i.d, 131072
  br i1 %.not.i.i.i.i, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal15WasmCodePointerEjEENS_13hash_internal4HashIS5_EESt8equal_toIS5_ESaISt4pairIKS5_jEEE4findIS5_EENSG_14const_iteratorERSD_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8
  %i.g = load i32, ptr %1, align 4
  %i.h = icmp eq i32 %i.f, %i.g
  %.fca.1.insert.i.i.i.i = insertvalue { ptr, ptr } { ptr @_ZN4absl18container_internal11kSooControlE, ptr poison }, ptr %i.e, 1
  %spec.select.i.i.i = select i1 %i.h, { ptr, ptr } %.fca.1.insert.i.i.i.i, { ptr, ptr } { ptr null, ptr undef }
  br label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal15WasmCodePointerEjEENS_13hash_internal4HashIS5_EESt8equal_toIS5_ESaISt4pairIKS5_jEEE4findIS5_EENSG_14const_iteratorERSD_.exit

bb.d:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.i, align 8 ; 6 uses
  %2 = getelementptr i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 %i.a
  %3 = getelementptr i8, ptr %2, i64 16
  %4 = icmp ule ptr %3, %0
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %6 = icmp ule ptr %5, %.sroa.0.0.copyload.i.i.i.i.i.i
  %7 = select i1 %4, i1 true, i1 %6
  tail call void @llvm.assume(i1 %7)
  tail call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i32 0, i32 1, i32 1)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load i64, ptr %i.j, align 8
  %sext.i.i = shl i64 %i.k, 48
  %i.l = ashr exact i64 %sext.i.i, 48
  %i.m = load i32, ptr %1, align 4                ; 2 uses
  %i.n = zext i32 %i.m to i64
  %i.o = xor i64 %i.l, %i.n
  %i.p = zext i64 %i.o to i128
  %i.q = mul nuw nsw i128 %i.p, 8779197792823184629 ; 2 uses
  %i.r = lshr i128 %i.q, 64
  %i.s = xor i128 %i.r, %i.q
  %i.t = trunc i128 %i.s to i64                   ; 2 uses
  %i.u = lshr i64 %i.t, 57
  %i.v = trunc nuw nsw i64 %i.u to i8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.0.0.copyload.i.i.i14.i.i.i = load ptr, ptr %i.w, align 8 ; 3 uses
  %i.x = insertelement <16 x i8> poison, i8 %i.v, i64 0
  %i.y = shufflevector <16 x i8> %i.x, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.d
  %.pn.i7.i.i = phi i64 [ %i.t, %bb.d ], [ %i.as, %bb.g ]
  %.sroa.13.0.i.i.i = phi i64 [ 0, %bb.d ], [ %i.ar, %bb.g ]
  %.sroa.6.0.i.i.i = and i64 %.pn.i7.i.i, %i.a    ; 4 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i.i, i64 %.sroa.6.0.i.i.i
  tail call void @llvm.prefetch.p0(ptr %i.z, i32 0, i32 3, i32 1)
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 %.sroa.6.0.i.i.i
  %i.ab = load <16 x i8>, ptr %i.aa, align 1      ; 2 uses
  %i.ac = icmp eq <16 x i8> %i.y, %i.ab
  %i.ad = bitcast <16 x i1> %i.ac to i16          ; 2 uses
  %.not47.i.i.i = icmp eq i16 %i.ad, 0
  br i1 %.not47.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.e, %bb.f
  %.sroa.017.048.i.i.i = phi i16 [ %i.ao, %bb.f ], [ %i.ad, %bb.e ] ; 3 uses
  %i.ae = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.017.048.i.i.i, i1 true)
  %i.af = zext nneg i16 %i.ae to i64
  %i.ag = add i64 %.sroa.6.0.i.i.i, %i.af
  %i.ah = and i64 %i.ag, %i.a                     ; 3 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i.i, i64 %i.ah
  %i.aj = load i32, ptr %i.ai, align 4
  %i.ak = icmp eq i32 %i.aj, %i.m
  br i1 %i.ak, label %.thread33.i.i.i, label %bb.f, !prof !11

.thread33.i.i.i:                                  ; preds = %.lr.ph.i.i.i
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i.i, i64 %i.ah
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 %i.ah
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i.i.i.i.i) ]
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal15WasmCodePointerEjEENS_13hash_internal4HashIS5_EESt8equal_toIS5_ESaISt4pairIKS5_jEEE10find_largeIS5_EENSG_8iteratorERSD_m.exit.i.i

bb.f:                                             ; preds = %.lr.ph.i.i.i
  %i.an = add i16 %.sroa.017.048.i.i.i, -1
  %i.ao = and i16 %i.an, %.sroa.017.048.i.i.i     ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.ao, 0
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.f, %bb.e
  %i.ap = icmp eq <16 x i8> %i.ab, splat (i8 -128)
  %i.aq = bitcast <16 x i1> %i.ap to i16
  %.not44.i.i.i = icmp eq i16 %i.aq, 0
  br i1 %.not44.i.i.i, label %bb.g, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal15WasmCodePointerEjEENS_13hash_internal4HashIS5_EESt8equal_toIS5_ESaISt4pairIKS5_jEEE10find_largeIS5_EENSG_8iteratorERSD_m.exit.i.i, !prof !19

bb.g:                                             ; preds = %._crit_edge.i.i.i
  %i.ar = add i64 %.sroa.13.0.i.i.i, 16           ; 2 uses
  %i.as = add i64 %i.ar, %.sroa.6.0.i.i.i
  br label %bb.e, !llvm.loop !75

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal15WasmCodePointerEjEENS_13hash_internal4HashIS5_EESt8equal_toIS5_ESaISt4pairIKS5_jEEE10find_largeIS5_EENSG_8iteratorERSD_m.exit.i.i: ; preds = %._crit_edge.i.i.i, %.thread33.i.i.i
  %.sroa.0.4.ph.i.i.i = phi ptr [ %i.am, %.thread33.i.i.i ], [ null, %._crit_edge.i.i.i ]
  %.sroa.3.4.ph.i.i.i = phi ptr [ %i.al, %.thread33.i.i.i ], [ undef, %._crit_edge.i.i.i ]
  %.fca.0.insert.i.i.i = insertvalue { ptr, ptr } poison, ptr %.sroa.0.4.ph.i.i.i, 0
  %.fca.1.insert.i.i.i = insertvalue { ptr, ptr } %.fca.0.insert.i.i.i, ptr %.sroa.3.4.ph.i.i.i, 1
  br label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal15WasmCodePointerEjEENS_13hash_internal4HashIS5_EESt8equal_toIS5_ESaISt4pairIKS5_jEEE4findIS5_EENSG_14const_iteratorERSD_.exit

_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal15WasmCodePointerEjEENS_13hash_internal4HashIS5_EESt8equal_toIS5_ESaISt4pairIKS5_jEEE4findIS5_EENSG_14const_iteratorERSD_.exit: ; preds = %bb.b, %bb.c, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal15WasmCodePointerEjEENS_13hash_internal4HashIS5_EESt8equal_toIS5_ESaISt4pairIKS5_jEEE10find_largeIS5_EENSG_8iteratorERSD_m.exit.i.i
  %.pn.i.i = phi { ptr, ptr } [ %.fca.1.insert.i.i.i, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal15WasmCodePointerEjEENS_13hash_internal4HashIS5_EESt8equal_toIS5_ESaISt4pairIKS5_jEEE10find_largeIS5_EENSG_8iteratorERSD_m.exit.i.i ], [ { ptr null, ptr undef }, %bb.b ], [ %spec.select.i.i.i, %bb.c ] ; 2 uses
  %i.at = extractvalue { ptr, ptr } %.pn.i.i, 0   ; 4 uses
  %i.au = icmp eq ptr %i.at, null                 ; 2 uses
  %i.av = icmp eq ptr %i.at, @_ZN4absl18container_internal19kDefaultIterControlE ; 2 uses
  %or.cond.i.i.i = or i1 %i.au, %i.av
  br i1 %or.cond.i.i.i, label %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i, label %bb.h

bb.h:                                             ; preds = %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal15WasmCodePointerEjEENS_13hash_internal4HashIS5_EESt8equal_toIS5_ESaISt4pairIKS5_jEEE4findIS5_EENSG_14const_iteratorERSD_.exit
  %i.aw = load i8, ptr %i.at, align 1
  %i.ax = icmp sgt i8 %i.aw, -1
  br i1 %i.ax, label %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i, label %bb.i, !prof !11

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.trap()
  unreachable

_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i: ; preds = %bb.h, %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal15WasmCodePointerEjEENS_13hash_internal4HashIS5_EESt8equal_toIS5_ESaISt4pairIKS5_jEEE4findIS5_EENSG_14const_iteratorERSD_.exit
  br i1 %i.av, label %bb.j, label %_ZN4absl18container_internaleqERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal15WasmCodePointerEjEENS_13hash_internal4HashIS5_EESt8equal_toIS5_ESaISt4pairIKS5_jEEE14const_iteratorESJ_.exit, !prof !19

bb.j:                                             ; preds = %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.14, i64 61), i32 noundef 1350, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.12) #24
  tail call void @llvm.trap()
  unreachable

_ZN4absl18container_internaleqERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal15WasmCodePointerEjEENS_13hash_internal4HashIS5_EESt8equal_toIS5_ESaISt4pairIKS5_jEEE14const_iteratorESJ_.exit: ; preds = %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i
  br i1 %i.au, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZN4absl18container_internaleqERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal15WasmCodePointerEjEENS_13hash_internal4HashIS5_EESt8equal_toIS5_ESaISt4pairIKS5_jEEE14const_iteratorESJ_.exit
  tail call void @_ZN4absl13base_internal18ThrowStdOutOfRangeEPKc(ptr noundef nonnull @.str.10) #26
  unreachable

bb.l:                                             ; preds = %_ZN4absl18container_internaleqERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal15WasmCodePointerEjEENS_13hash_internal4HashIS5_EESt8equal_toIS5_ESaISt4pairIKS5_jEEE14const_iteratorESJ_.exit
  %i.ay = load i8, ptr %i.at, align 1
  %i.az = icmp sgt i8 %i.ay, -1
  br i1 %i.az, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal15WasmCodePointerEjEENS_13hash_internal4HashIS5_EESt8equal_toIS5_ESaISt4pairIKS5_jEEE14const_iteratordeEv.exit, label %bb.m, !prof !11

bb.m:                                             ; preds = %bb.l
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.14, i64 61), i32 noundef 1277, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.16) #24
  tail call void @llvm.trap()
  unreachable

_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal15WasmCodePointerEjEENS_13hash_internal4HashIS5_EESt8equal_toIS5_ESaISt4pairIKS5_jEEE14const_iteratordeEv.exit: ; preds = %bb.l
  %i.ba = extractvalue { ptr, ptr } %.pn.i.i, 1
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 4
  ret ptr %i.bb
}

declare void @_ZN2v88internal17RelocIteratorBaseINS0_9RelocInfoEE4nextEv(ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #5

; Function Attrs: noreturn
declare void @_ZN4absl13base_internal18ThrowStdOutOfRangeEPKc(ptr noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr readonly captures(none), i32 immarg range(i32 0, 2), i32 immarg range(i32 0, 4), i32 immarg range(i32 0, 2)) #11

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #12

declare void @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4absl18container_internal22DeallocateBackingArrayILm8ESaIcEEEvPvmPNS0_6ctrl_tEmmb(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, i1 noundef zeroext %5) local_unnamed_addr #13 comdat {
bb.a:
  %.neg = select i1 %5, i64 -9, i64 -8
  %i.a = select i1 %5, i64 9, i64 8
  %i.b = icmp ult i64 %1, 2
  %i.c = add i64 %1, 15
  %i.d = select i1 %i.b, i64 -1, i64 %i.c
  %i.e = add i64 %i.d, %4
  %i.f = add i64 %i.e, %i.a
  %i.g = sub i64 0, %4
  %i.h = and i64 %i.f, %i.g
  %i.i = mul i64 %3, %1
  %i.j = getelementptr inbounds i8, ptr %2, i64 %.neg
  %i.k = add i64 %i.i, 7
  %i.l = add i64 %i.k, %i.h
  %i.m = and i64 %i.l, -8
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.m) #25
  ret void
}

declare void @_ZN2v84base19MemoryProtectionKey20SetPermissionsForKeyEiNS1_10PermissionE(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #14

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN2v88internal4wasm12_GLOBAL__N_121ExternalReferenceListC2Ev() unnamed_addr #4 align 2 {
vector.ph:
  %0 = alloca %"class.v8::internal::ExternalReference", align 8 ; 4 uses
  %1 = alloca %"class.v8::internal::ExternalReference", align 8 ; 4 uses
  %2 = alloca %"class.v8::internal::ExternalReference", align 8 ; 4 uses
  %3 = alloca %"class.v8::internal::ExternalReference", align 8 ; 4 uses
  %4 = alloca %"class.v8::internal::ExternalReference", align 8 ; 4 uses
  %5 = alloca %"class.v8::internal::ExternalReference", align 8 ; 4 uses
  %6 = alloca %"class.v8::internal::ExternalReference", align 8 ; 4 uses
  %7 = alloca %"class.v8::internal::ExternalReference", align 8 ; 4 uses
  %8 = alloca %"class.v8::internal::ExternalReference", align 8 ; 4 uses
  %9 = alloca %"class.v8::internal::ExternalReference", align 8 ; 4 uses
  %10 = alloca %"class.v8::internal::ExternalReference", align 8 ; 4 uses
  %11 = alloca %"class.v8::internal::ExternalReference", align 8 ; 4 uses
  %12 = alloca %"class.v8::internal::ExternalReference", align 8 ; 4 uses
  %13 = alloca %"class.v8::internal::ExternalReference", align 8 ; 4 uses
  %14 = alloca %"class.v8::internal::ExternalReference", align 8 ; 4 uses
  %15 = alloca %"class.v8::internal::ExternalReference", align 8 ; 4 uses
  %16 = alloca %"class.v8::internal::ExternalReference", align 8 ; 4 uses
  %17 = alloca %"class.v8::internal::ExternalReference", align 8 ; 4 uses
  %18 = alloca %"class.v8::internal::ExternalReference", align 8 ; 4 uses
  %19 = alloca %"class.v8::internal::ExternalReference", align 8 ; 4 uses
  %20 = alloca %"class.v8::internal::ExternalReference", align 8 ; 4 uses
  %21 = alloca %"class.v8::internal::ExternalReference", align 8 ; 4 uses
  %22 = alloca %"class.v8::internal::ExternalReference", align 8 ; 4 uses
  %23 = alloca %"class.v8::internal::ExternalReference", align 8 ; 4 uses
  %24 = alloca %"class.v8::internal::ExternalReference", align 8 ; 4 uses
  %25 = alloca %"class.v8::internal::ExternalReference", align 8 ; 4 uses
  %26 = alloca %"class.v8::internal::ExternalReference", align 8 ; 4 uses
  %27 = alloca %"class.v8::internal::ExternalReference", align 8 ; 4 uses
  %28 = alloca %"class.v8::internal::ExternalReference", align 8 ; 4 uses
  %29 = alloca %"class.v8::internal::ExternalReference", align 8 ; 4 uses
  %30 = alloca %"class.v8::internal::ExternalReference", align 8 ; 4 uses
  %31 = alloca %"class.v8::internal::ExternalReference", align 8 ; 4 uses
  %32 = alloca %"class.v8::internal::ExternalReference", align 8 ; 4 uses
  %33 = alloca %"class.v8::internal::ExternalReference", align 8 ; 4 uses
  %34 = alloca %"class.v8::internal::ExternalReference", align 8 ; 4 uses
end_hunk_2
