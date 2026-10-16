Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/http2_server_transport?download=true
inline.NumInlined: 18827
inline.NumDeleted: 9060
loop-unroll.NumCompletelyUnrolled: 32
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 34
begin_hunk_0_@_ZN9grpc_core20hpack_encoder_detail10CompressorINS_27GrpcInternalEncodingRequestENS_23NoCompressionCompressorEE10EncodeWithES2_RK26grpc_compression_algorithmPNS0_7EncoderE:bb.a
  %4 = alloca %"class.grpc_core::Slice", align 8  ; 6 uses
  %5 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 5 uses
  %6 = alloca %"class.grpc_core::Slice", align 8  ; 9 uses
  %7 = alloca %"class.grpc_core::Slice", align 8  ; 7 uses
  %8 = alloca %"class.grpc_core::Slice", align 8  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #44
  %i.a = load i32, ptr %1, align 4, !tbaa !1104   ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2728)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2729)
  %.not.i.i = icmp eq i32 %i.a, 3
  br i1 %.not.i.i, label %bb.b, label %_ZN9grpc_core20MetadataValueAsSliceINS_27GrpcInternalEncodingRequestEEENSt9enable_ifIXntsr3std7is_sameINT_9ValueTypeENS_5SliceEEE5valueES5_E4typeES4_.exit, !prof !166

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #44, !noalias !2730
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKciS4_(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull @.str.216, i32 noundef 221, ptr noundef nonnull @.str.219) #47, !noalias !2730
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit.i.i unwind label %bb.c, !noalias !2730

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit.i.i: ; preds = %bb.b
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #46, !noalias !2730
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #46, !noalias !2730
  unreachable

_ZN9grpc_core20MetadataValueAsSliceINS_27GrpcInternalEncodingRequestEEENSt9enable_ifIXntsr3std7is_sameINT_9ValueTypeENS_5SliceEEE5valueES5_E4typeES4_.exit: ; preds = %bb.a
  %i.c = tail call noundef ptr @_ZN9grpc_core28CompressionAlgorithmAsStringE26grpc_compression_algorithm(i32 noundef %i.a), !noalias !2730 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2731)
  %i.d = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.c) #51, !noalias !2732
  store ptr inttoptr (i64 1 to ptr), ptr %6, align 8, !tbaa !659, !alias.scope !2733
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.d, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !alias.scope !2733
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.c, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8, !alias.scope !2733
  store ptr inttoptr (i64 1 to ptr), ptr %7, align 8, !tbaa !659, !alias.scope !2734
  %.sroa.4.0..sroa_idx.i.i18 = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 30, ptr %.sroa.4.0..sroa_idx.i.i18, align 8, !alias.scope !2734
  %.sroa.5.0..sroa_idx.i.i19 = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr @.str.120, ptr %.sroa.5.0..sroa_idx.i.i19, align 8, !alias.scope !2734
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %7, i64 32, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, i8 0, i64 32, i1 false), !noalias !2735
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %8, i8 0, i64 32, i1 false), !noalias !2736
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1175, !nonnull !407, !align !721
  invoke void @_ZN9grpc_core20hpack_encoder_detail11HPackWriter38EmitLitHdrWithNonBinaryStringKeyNotIdxENS_5SliceES2_RNS_11SliceBufferE(ptr noundef nonnull align 8 %3, ptr noundef nonnull align 8 %4, ptr noundef nonnull align 8 dereferenceable(136) %i.f)
          to label %bb.d unwind label %.body22

bb.d:                                             ; preds = %_ZN9grpc_core20MetadataValueAsSliceINS_27GrpcInternalEncodingRequestEEENSt9enable_ifIXntsr3std7is_sameINT_9ValueTypeENS_5SliceEEE5valueES5_E4typeES4_.exit
  %i.g = load ptr, ptr %4, align 8, !tbaa !658    ; 4 uses
  %i.h = icmp ugt ptr %i.g, inttoptr (i64 1 to ptr)
  br i1 %i.h, label %bb.e, label %_ZN9grpc_core5SliceD2Ev.exit.i21

bb.e:                                             ; preds = %bb.d
  %i.i = atomicrmw sub ptr %i.g, i64 1 acq_rel, align 8
  %i.j = icmp eq i64 %i.i, 1
  br i1 %i.j, label %bb.f, label %_ZN9grpc_core5SliceD2Ev.exit.i21

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !664
  invoke void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %i.g)
          to label %_ZN9grpc_core5SliceD2Ev.exit.i21 unwind label %bb.g, !inline_history !12

bb.g:                                             ; preds = %bb.f
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  call void @__clang_call_terminate(ptr %i.n) #46
  unreachable

_ZN9grpc_core5SliceD2Ev.exit.i21:                 ; preds = %bb.f, %bb.e, %bb.d
  %i.o = load ptr, ptr %3, align 8, !tbaa !658    ; 4 uses
  %i.p = icmp ugt ptr %i.o, inttoptr (i64 1 to ptr)
  br i1 %i.p, label %bb.h, label %bb.k

bb.h:                                             ; preds = %_ZN9grpc_core5SliceD2Ev.exit.i21
  %i.q = atomicrmw sub ptr %i.o, i64 1 acq_rel, align 8
  %i.r = icmp eq i64 %i.q, 1
  br i1 %i.r, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !664
  invoke void %i.t(ptr noundef nonnull align 8 dereferenceable(16) %i.o)
          to label %bb.k unwind label %bb.j, !inline_history !12

bb.j:                                             ; preds = %bb.i
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  call void @__clang_call_terminate(ptr %i.v) #46
  unreachable

.body22:                                          ; preds = %_ZN9grpc_core20MetadataValueAsSliceINS_27GrpcInternalEncodingRequestEEENSt9enable_ifIXntsr3std7is_sameINT_9ValueTypeENS_5SliceEEE5valueES5_E4typeES4_.exit
  %i.w = landingpad { ptr, i32 }
          cleanup
  call void @_ZN9grpc_core5SliceD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %4) #44
  call void @_ZN9grpc_core5SliceD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %3) #44
  call void @_ZN9grpc_core5SliceD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %8) #44
  call void @_ZN9grpc_core5SliceD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %7) #44
  call void @_ZN9grpc_core5SliceD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %6) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #44
  resume { ptr, i32 } %i.w

bb.k:                                             ; preds = %bb.i, %bb.h, %_ZN9grpc_core5SliceD2Ev.exit.i21
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.x = load ptr, ptr %8, align 8, !tbaa !658    ; 4 uses
  %i.y = icmp ugt ptr %i.x, inttoptr (i64 1 to ptr)
  br i1 %i.y, label %bb.l, label %_ZN9grpc_core5SliceD2Ev.exit24

bb.l:                                             ; preds = %bb.k
  %i.z = atomicrmw sub ptr %i.x, i64 1 acq_rel, align 8
  %i.aa = icmp eq i64 %i.z, 1
  br i1 %i.aa, label %bb.m, label %_ZN9grpc_core5SliceD2Ev.exit24

bb.m:                                             ; preds = %bb.l
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !664
  invoke void %i.ac(ptr noundef nonnull align 8 dereferenceable(16) %i.x)
          to label %_ZN9grpc_core5SliceD2Ev.exit24 unwind label %bb.n, !inline_history !12

bb.n:                                             ; preds = %bb.m
  %i.ad = landingpad { ptr, i32 }
          catch ptr null
  %i.ae = extractvalue { ptr, i32 } %i.ad, 0
  call void @__clang_call_terminate(ptr %i.ae) #46
  unreachable

_ZN9grpc_core5SliceD2Ev.exit24:                   ; preds = %bb.k, %bb.l, %bb.m
  %i.af = load ptr, ptr %7, align 8, !tbaa !658   ; 4 uses
  %i.ag = icmp ugt ptr %i.af, inttoptr (i64 1 to ptr)
  br i1 %i.ag, label %bb.o, label %_ZN9grpc_core5SliceD2Ev.exit17

bb.o:                                             ; preds = %_ZN9grpc_core5SliceD2Ev.exit24
  %i.ah = atomicrmw sub ptr %i.af, i64 1 acq_rel, align 8
  %i.ai = icmp eq i64 %i.ah, 1
  br i1 %i.ai, label %bb.p, label %_ZN9grpc_core5SliceD2Ev.exit17

bb.p:                                             ; preds = %bb.o
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !664
  invoke void %i.ak(ptr noundef nonnull align 8 dereferenceable(16) %i.af)
          to label %_ZN9grpc_core5SliceD2Ev.exit17 unwind label %bb.q, !inline_history !12

bb.q:                                             ; preds = %bb.p
  %i.al = landingpad { ptr, i32 }
          catch ptr null
  %i.am = extractvalue { ptr, i32 } %i.al, 0
  call void @__clang_call_terminate(ptr %i.am) #46
  unreachable

_ZN9grpc_core5SliceD2Ev.exit17:                   ; preds = %bb.p, %bb.o, %_ZN9grpc_core5SliceD2Ev.exit24
  %i.an = load ptr, ptr %6, align 8, !tbaa !658   ; 4 uses
  %i.ao = icmp ugt ptr %i.an, inttoptr (i64 1 to ptr)
  br i1 %i.ao, label %bb.r, label %_ZN9grpc_core5SliceD2Ev.exit26

bb.r:                                             ; preds = %_ZN9grpc_core5SliceD2Ev.exit17
  %i.ap = atomicrmw sub ptr %i.an, i64 1 acq_rel, align 8
  %i.aq = icmp eq i64 %i.ap, 1
  br i1 %i.aq, label %bb.s, label %_ZN9grpc_core5SliceD2Ev.exit26

bb.s:                                             ; preds = %bb.r
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !664
  invoke void %i.as(ptr noundef nonnull align 8 dereferenceable(16) %i.an)
          to label %_ZN9grpc_core5SliceD2Ev.exit26 unwind label %bb.t, !inline_history !12

bb.t:                                             ; preds = %bb.s
  %i.at = landingpad { ptr, i32 }
          catch ptr null
  %i.au = extractvalue { ptr, i32 } %i.at, 0
  call void @__clang_call_terminate(ptr %i.au) #46
  unreachable

_ZN9grpc_core5SliceD2Ev.exit26:                   ; preds = %_ZN9grpc_core5SliceD2Ev.exit17, %bb.r, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #44
  ret void
}

declare void @_ZN9grpc_core20hpack_encoder_detail11HPackWriter35EmitLitHdrWithBinaryStringKeyNotIdxENS_5SliceES2_RNS_11SliceBufferEb(ptr noundef align 8, ptr noundef align 8, ptr noundef nonnull align 8 dereferenceable(136), i1 noundef zeroext) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN9grpc_core20hpack_encoder_detail10CompressorINS_26GrpcAcceptEncodingMetadataENS_21StableValueCompressorEE10EncodeWithES2_RKNS_23CompressionAlgorithmSetEPNS0_7EncoderE(ptr noundef nonnull align 4 dereferenceable(8) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.grpc_core::Slice", align 8  ; 6 uses
  %4 = alloca %"class.grpc_core::Slice", align 8  ; 6 uses
  %5 = alloca %"class.grpc_core::CompressionAlgorithmSet", align 1 ; 4 uses
  %6 = alloca %"class.grpc_core::Slice", align 8  ; 11 uses
  %7 = alloca %"class.grpc_core::Slice", align 8  ; 7 uses
  %8 = alloca %"class.grpc_core::Slice", align 8  ; 3 uses
  %9 = alloca %"class.grpc_core::Slice", align 8  ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1171 ; 2 uses
  %i.c = load i8, ptr %0, align 4, !tbaa !156
  %i.d = load i8, ptr %1, align 1, !tbaa !156
  %.not.i.i = icmp eq i8 %i.c, %i.d
  br i1 %.not.i.i, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !2753 ; 2 uses
  %i.h = load i32, ptr %i.e, align 8, !tbaa !870  ; 2 uses
  %i.i = icmp ugt i32 %i.g, %i.h
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.k = load i32, ptr %i.j, align 8, !tbaa !1173
  %reass.sub = sub i32 %i.h, %i.g
  %i.l = add i32 %reass.sub, 62
  %i.m = add i32 %i.l, %i.k
  tail call void @_ZN9grpc_core20hpack_encoder_detail7Encoder11EmitIndexedEj(ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %i.m)
  br label %bb.af

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  store i32 0, ptr %i.n, align 4, !tbaa !2753
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #44
  %.sroa.03.0.copyload = load i8, ptr %1, align 1, !tbaa !156
  call void @llvm.lifetime.start.p0(ptr nonnull %5), !noalias !2754
  store i8 %.sroa.03.0.copyload, ptr %5, align 1, !noalias !2755
  call void @_ZNK9grpc_core23CompressionAlgorithmSet7ToSliceEv(ptr dead_on_unwind nonnull writable sret(%"class.grpc_core::Slice") align 8 %6, ptr noundef nonnull align 1 dereferenceable(1) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5), !noalias !2754
  %i.o = load ptr, ptr %6, align 8, !tbaa !658    ; 6 uses
  %.not.i = icmp eq ptr %i.o, null
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8              ; 3 uses
  %i.r = and i64 %i.q, 252
  %i.s = select i1 %.not.i, i64 %i.r, i64 %i.q
  %i.t = add i64 %i.s, -65484
  %i.u = icmp ult i64 %i.t, -65536
  br i1 %i.u, label %bb.e, label %bb.v

bb.e:                                             ; preds = %bb.d
  store ptr inttoptr (i64 1 to ptr), ptr %7, align 8, !tbaa !659, !alias.scope !2756
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 20, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !2756
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr @.str.146, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2756
  %i.v = icmp ugt ptr %i.o, inttoptr (i64 1 to ptr)
  br i1 %i.v, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.w = atomicrmw add ptr %i.o, i64 1 monotonic, align 8, !noalias !2757 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %7, i64 32, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, i8 0, i64 32, i1 false), !noalias !2758
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %8, i8 0, i64 32, i1 false), !noalias !2759
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !1175, !nonnull !407, !align !721
  invoke void @_ZN9grpc_core20hpack_encoder_detail11HPackWriter38EmitLitHdrWithNonBinaryStringKeyNotIdxENS_5SliceES2_RNS_11SliceBufferE(ptr noundef nonnull align 8 %3, ptr noundef nonnull align 8 %4, ptr noundef nonnull align 8 dereferenceable(136) %i.y)
          to label %bb.h unwind label %.body

bb.h:                                             ; preds = %bb.g
  %i.z = load ptr, ptr %4, align 8, !tbaa !658    ; 4 uses
  %i.aa = icmp ugt ptr %i.z, inttoptr (i64 1 to ptr)
  br i1 %i.aa, label %bb.i, label %_ZN9grpc_core5SliceD2Ev.exit.i

bb.i:                                             ; preds = %bb.h
  %i.ab = atomicrmw sub ptr %i.z, i64 1 acq_rel, align 8
  %i.ac = icmp eq i64 %i.ab, 1
  br i1 %i.ac, label %bb.j, label %_ZN9grpc_core5SliceD2Ev.exit.i

bb.j:                                             ; preds = %bb.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !664
  invoke void %i.ae(ptr noundef nonnull align 8 dereferenceable(16) %i.z)
          to label %_ZN9grpc_core5SliceD2Ev.exit.i unwind label %bb.k, !inline_history !12

bb.k:                                             ; preds = %bb.j
  %i.af = landingpad { ptr, i32 }
          catch ptr null
  %i.ag = extractvalue { ptr, i32 } %i.af, 0
  call void @__clang_call_terminate(ptr %i.ag) #46
  unreachable

_ZN9grpc_core5SliceD2Ev.exit.i:                   ; preds = %bb.j, %bb.i, %bb.h
  %i.ah = load ptr, ptr %3, align 8, !tbaa !658   ; 4 uses
  %i.ai = icmp ugt ptr %i.ah, inttoptr (i64 1 to ptr)
  br i1 %i.ai, label %bb.l, label %bb.o

bb.l:                                             ; preds = %_ZN9grpc_core5SliceD2Ev.exit.i
  %i.aj = atomicrmw sub ptr %i.ah, i64 1 acq_rel, align 8
  %i.ak = icmp eq i64 %i.aj, 1
  br i1 %i.ak, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !664
  invoke void %i.am(ptr noundef nonnull align 8 dereferenceable(16) %i.ah)
          to label %bb.o unwind label %bb.n, !inline_history !12

bb.n:                                             ; preds = %bb.m
  %i.an = landingpad { ptr, i32 }
          catch ptr null
  %i.ao = extractvalue { ptr, i32 } %i.an, 0
  call void @__clang_call_terminate(ptr %i.ao) #46
  unreachable

.body:                                            ; preds = %bb.g
  %i.ap = landingpad { ptr, i32 }
          cleanup
  call void @_ZN9grpc_core5SliceD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %4) #44
  call void @_ZN9grpc_core5SliceD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %3) #44
  call void @_ZN9grpc_core5SliceD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %8) #44
  br label %bb.ah

bb.o:                                             ; preds = %bb.m, %bb.l, %_ZN9grpc_core5SliceD2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.aq = load ptr, ptr %8, align 8, !tbaa !658   ; 4 uses
  %i.ar = icmp ugt ptr %i.aq, inttoptr (i64 1 to ptr)
  br i1 %i.ar, label %bb.p, label %_ZN9grpc_core5SliceD2Ev.exit

bb.p:                                             ; preds = %bb.o
  %i.as = atomicrmw sub ptr %i.aq, i64 1 acq_rel, align 8
  %i.at = icmp eq i64 %i.as, 1
  br i1 %i.at, label %bb.q, label %_ZN9grpc_core5SliceD2Ev.exit

bb.q:                                             ; preds = %bb.p
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !664
  invoke void %i.av(ptr noundef nonnull align 8 dereferenceable(16) %i.aq)
          to label %_ZN9grpc_core5SliceD2Ev.exit unwind label %bb.r, !inline_history !12

bb.r:                                             ; preds = %bb.q
  %i.aw = landingpad { ptr, i32 }
          catch ptr null
  %i.ax = extractvalue { ptr, i32 } %i.aw, 0
  call void @__clang_call_terminate(ptr %i.ax) #46
  unreachable

_ZN9grpc_core5SliceD2Ev.exit:                     ; preds = %bb.o, %bb.p, %bb.q
  %i.ay = load ptr, ptr %7, align 8, !tbaa !658   ; 4 uses
  %i.az = icmp ugt ptr %i.ay, inttoptr (i64 1 to ptr)
  br i1 %i.az, label %bb.s, label %_ZN9grpc_core5SliceD2Ev.exit22

bb.s:                                             ; preds = %_ZN9grpc_core5SliceD2Ev.exit
  %i.ba = atomicrmw sub ptr %i.ay, i64 1 acq_rel, align 8
  %i.bb = icmp eq i64 %i.ba, 1
  br i1 %i.bb, label %bb.t, label %_ZN9grpc_core5SliceD2Ev.exit22

bb.t:                                             ; preds = %bb.s
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !664
  invoke void %i.bd(ptr noundef nonnull align 8 dereferenceable(16) %i.ay)
          to label %_ZN9grpc_core5SliceD2Ev.exit22 unwind label %bb.u, !inline_history !12

bb.u:                                             ; preds = %bb.t
  %i.be = landingpad { ptr, i32 }
          catch ptr null
  %i.bf = extractvalue { ptr, i32 } %i.be, 0
  call void @__clang_call_terminate(ptr %i.bf) #46
  unreachable

bb.v:                                             ; preds = %bb.d
  %i.bg = icmp ugt ptr %i.o, inttoptr (i64 1 to ptr)
  br i1 %i.bg, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.bh = atomicrmw add ptr %i.o, i64 1 monotonic, align 8, !noalias !2760 ; 0 uses
  %.pre = load ptr, ptr %6, align 8, !tbaa !658
  %.pre30 = load i64, ptr %i.p, align 8
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.bi = phi i64 [ %.pre30, %bb.w ], [ %i.q, %bb.v ] ; 2 uses
  %i.bj = phi ptr [ %.pre, %bb.w ], [ %i.o, %bb.v ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false), !tbaa.struct !879
  %.not.i24 = icmp eq ptr %i.bj, null
  %i.bk = and i64 %i.bi, 255
  %i.bl = select i1 %.not.i24, i64 %i.bk, i64 %i.bi
  %i.bm = add i64 %i.bl, 52
  invoke void @_ZN9grpc_core20hpack_encoder_detail7Encoder19EncodeAlwaysIndexedEPjSt17basic_string_viewIcSt11char_traitsIcEENS_5SliceEm(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull %i.n, i64 20, ptr nonnull @.str.146, ptr noundef nonnull align 8 %9, i64 noundef %i.bm)
          to label %bb.y unwind label %bb.ag

bb.y:                                             ; preds = %bb.x
  %i.bn = load ptr, ptr %9, align 8, !tbaa !658   ; 4 uses
  %i.bo = icmp ugt ptr %i.bn, inttoptr (i64 1 to ptr)
  br i1 %i.bo, label %bb.z, label %_ZN9grpc_core5SliceD2Ev.exit25

bb.z:                                             ; preds = %bb.y
  %i.bp = atomicrmw sub ptr %i.bn, i64 1 acq_rel, align 8
  %i.bq = icmp eq i64 %i.bp, 1
  br i1 %i.bq, label %bb.aa, label %_ZN9grpc_core5SliceD2Ev.exit25

bb.aa:                                            ; preds = %bb.z
  %i.br = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !664
  invoke void %i.bs(ptr noundef nonnull align 8 dereferenceable(16) %i.bn)
          to label %_ZN9grpc_core5SliceD2Ev.exit25 unwind label %bb.ab, !inline_history !12
end_hunk_0
