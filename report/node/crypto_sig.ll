Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/crypto_sig?download=true
inline.NumInlined: 2654
inline.NumDeleted: 1163
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZN4node6crypto6DecodeINS0_4SignEEEvRKN2v820FunctionCallbackInfoINS3_5ValueEEEPFvPT_S8_PKcmE:bb.a

_ZN4node10BaseObject12FromJSObjectEN2v85LocalINS1_5ValueEEE.exit: ; preds = %bb.b, %bb.c
  %.0.i.i = phi ptr [ %i.r, %bb.b ], [ %i.s, %bb.c ] ; 3 uses
  %i.t = icmp eq ptr %.0.i.i, null
  br i1 %i.t, label %bb.r, label %bb.d

bb.d:                                             ; preds = %_ZN4node10BaseObject12FromJSObjectEN2v85LocalINS1_5ValueEEE.exit
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.v = load i64, ptr %i.u, align 8
  %i.w = trunc i64 %i.v to i32
  %.not.i24 = icmp sgt i32 %i.w, 0                ; 2 uses
  br i1 %.not.i24, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = load ptr, ptr %0, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = add i64 %i.aa, 648
  %i.ac = inttoptr i64 %i.ab to ptr
  br label %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit25

bb.f:                                             ; preds = %bb.d
  %i.ad = load ptr, ptr %i.a, align 8
  br label %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit25

_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit25: ; preds = %bb.e, %bb.f
  %.sroa.035.0 = phi ptr [ %i.ad, %bb.f ], [ %i.ac, %bb.e ]
  %i.ae = load i64, ptr %.sroa.035.0, align 8     ; 2 uses
  %i.af = and i64 %i.ae, 3
  %i.ag = icmp eq i64 %i.af, 1
  br i1 %i.ag, label %_ZNK2v85Value13QuickIsStringEv.exit, label %_ZNK2v85Value13QuickIsStringEv.exit.thread

_ZNK2v85Value13QuickIsStringEv.exit:              ; preds = %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit25
  %i.ah = add nsw i64 %i.ae, -1
  %i.ai = inttoptr i64 %i.ah to ptr
  %i.aj = load i64, ptr %i.ai, align 8
  %i.ak = add i64 %i.aj, 11
  %i.al = inttoptr i64 %i.ak to ptr
  %i.am = load i16, ptr %i.al, align 2
  %i.an = icmp ult i16 %i.am, 128
  br i1 %i.an, label %_ZN4node18ContextEmbedderTag13IsNodeContextEN2v85LocalINS1_7ContextEEE.exit.i.i, label %_ZNK2v85Value13QuickIsStringEv.exit.thread

_ZN4node18ContextEmbedderTag13IsNodeContextEN2v85LocalINS1_7ContextEEE.exit.i.i: ; preds = %_ZNK2v85Value13QuickIsStringEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  store i64 0, ptr %2, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 4 uses
  store i64 1024, ptr %i.ao, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  store ptr %i.ap, ptr %i.aq, align 8
  store i8 0, ptr %i.ap, align 8
  %i.ar = load ptr, ptr %0, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = load ptr, ptr %i.as, align 8
  %i.au = call ptr @_ZN2v87Isolate17GetCurrentContextEv(ptr noundef nonnull align 1 dereferenceable(1) %i.at) #27 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.au) ]
  %i.av = call noundef i32 @_ZN2v87Context29GetNumberOfEmbedderDataFieldsEv(ptr noundef nonnull align 1 dereferenceable(1) %i.au) #27 ; 0 uses
  %i.aw = load i64, ptr %i.au, align 8
  %i.ax = add i64 %i.aw, 47
  %i.ay = inttoptr i64 %i.ax to ptr
  %i.az = load i64, ptr %i.ay, align 8
  %i.ba = add i64 %i.az, 271
  %i.bb = inttoptr i64 %i.ba to ptr
  %i.bc = load i64, ptr %i.bb, align 8
  %i.bd = inttoptr i64 %i.bc to ptr
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 200 ; 3 uses
  %i.bf = load ptr, ptr %i.be, align 8
  %i.bg = load i64, ptr %i.u, align 8
  %i.bh = trunc i64 %i.bg to i32
  %.not.i22 = icmp sgt i32 %i.bh, 1
  br i1 %.not.i22, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZN4node18ContextEmbedderTag13IsNodeContextEN2v85LocalINS1_7ContextEEE.exit.i.i
  %i.bi = load ptr, ptr %0, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8
  %i.bl = ptrtoint ptr %i.bk to i64
  %i.bm = add i64 %i.bl, 648
  %i.bn = inttoptr i64 %i.bm to ptr
  br label %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit23

bb.h:                                             ; preds = %_ZN4node18ContextEmbedderTag13IsNodeContextEN2v85LocalINS1_7ContextEEE.exit.i.i
  %i.bo = load ptr, ptr %i.a, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  br label %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit23

_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit23: ; preds = %bb.g, %bb.h
  %.sroa.034.0 = phi ptr [ %i.bp, %bb.h ], [ %i.bn, %bb.g ]
  %i.bq = call noundef i32 @_ZN4node13ParseEncodingEPN2v87IsolateENS0_5LocalINS0_5ValueEEENS_8encodingE(ptr noundef %i.bf, ptr %.sroa.034.0, i32 noundef 1) #27 ; 2 uses
  %i.br = load i64, ptr %i.u, align 8
  %i.bs = trunc i64 %i.br to i32
  %.not.i20 = icmp sgt i32 %i.bs, 0
  br i1 %.not.i20, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit23
  %i.bt = load ptr, ptr %0, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.bv = load ptr, ptr %i.bu, align 8
  %i.bw = ptrtoint ptr %i.bv to i64
  %i.bx = add i64 %i.bw, 648
  %i.by = inttoptr i64 %i.bx to ptr
  br label %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit21

bb.j:                                             ; preds = %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit23
  %i.bz = load ptr, ptr %i.a, align 8
  br label %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit21

_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit21: ; preds = %bb.i, %bb.j
  %.sroa.033.0 = phi ptr [ %i.bz, %bb.j ], [ %i.by, %bb.i ] ; 2 uses
  %i.ca = load ptr, ptr %i.be, align 8
  %i.cb = call { i8, i64 } @_ZN4node11StringBytes11StorageSizeEPN2v87IsolateENS1_5LocalINS1_5ValueEEENS_8encodingE(ptr noundef %i.ca, ptr %.sroa.033.0, i32 noundef %i.bq) #27 ; 2 uses
  %i.cc = extractvalue { i8, i64 } %i.cb, 0
  %i.cd = trunc nuw i8 %i.cc to i1
  br i1 %i.cd, label %bb.k, label %.critedge

bb.k:                                             ; preds = %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit21
  %i.ce = extractvalue { i8, i64 } %i.cb, 1       ; 2 uses
  call void @_ZN4node16MaybeStackBufferIcLm1024EE25AllocateSufficientStorageEm(ptr noundef nonnull align 8 dereferenceable(1048) %2, i64 noundef %i.ce)
  %i.cf = load ptr, ptr %i.be, align 8
  %i.cg = load ptr, ptr %i.aq, align 8
  %i.ch = call noundef i64 @_ZN4node11StringBytes5WriteEPN2v87IsolateEPcmNS1_5LocalINS1_5ValueEEENS_8encodingE(ptr noundef %i.cf, ptr noundef %i.cg, i64 noundef %i.ce, ptr %.sroa.033.0, i32 noundef %i.bq) #27 ; 3 uses
  %i.ci = load i64, ptr %i.ao, align 8
  %.not.i.i = icmp ugt i64 %i.ch, %i.ci
  br i1 %.not.i.i, label %bb.l, label %bb.m, !prof !33

bb.l:                                             ; preds = %bb.k
  call void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4node16MaybeStackBufferIcLm1024EE9SetLengthEmE20error_and_abort_args) #27
  call void @abort() #28
  unreachable

bb.m:                                             ; preds = %bb.k
  store i64 %i.ch, ptr %2, align 8
  %i.cj = load ptr, ptr %i.aq, align 8
  call void %1(ptr noundef nonnull %.0.i.i, ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %i.cj, i64 noundef %i.ch) #27
  %i.ck = load ptr, ptr %i.aq, align 8            ; 3 uses
  %i.cl = icmp ne ptr %i.ck, null
  %i.cm = icmp ne ptr %i.ck, %i.ap
  %i.cn = and i1 %i.cl, %i.cm
  br i1 %i.cn, label %bb.n, label %_ZN4node16MaybeStackBufferIcLm1024EED2Ev.exit

bb.n:                                             ; preds = %bb.m
  call void @free(ptr noundef nonnull %i.ck) #27
  br label %_ZN4node16MaybeStackBufferIcLm1024EED2Ev.exit

_ZN4node16MaybeStackBufferIcLm1024EED2Ev.exit:    ; preds = %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  br label %bb.r

_ZNK2v85Value13QuickIsStringEv.exit.thread:       ; preds = %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit25, %_ZNK2v85Value13QuickIsStringEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  br i1 %.not.i24, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZNK2v85Value13QuickIsStringEv.exit.thread
  %i.co = load ptr, ptr %0, align 8
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.cq = load ptr, ptr %i.cp, align 8
  %i.cr = ptrtoint ptr %i.cq to i64
  %i.cs = add i64 %i.cr, 648
  %i.ct = inttoptr i64 %i.cs to ptr
  br label %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit

bb.p:                                             ; preds = %_ZNK2v85Value13QuickIsStringEv.exit.thread
  %i.cu = load ptr, ptr %i.a, align 8
  br label %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit

_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit: ; preds = %bb.o, %bb.p
  %.sroa.032.0 = phi ptr [ %i.cu, %bb.p ], [ %i.ct, %bb.o ]
  %i.cv = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.cv, i8 0, i64 17, i1 false)
  call void @_ZN4node23ArrayBufferViewContentsIcLm64EE9ReadValueEN2v85LocalINS2_5ValueEEE(ptr noundef nonnull align 8 dereferenceable(81) %3, ptr %.sroa.032.0)
  %i.cw = load ptr, ptr %i.cv, align 8
  %i.cx = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.cy = load i64, ptr %i.cx, align 8
  call void %1(ptr noundef nonnull %.0.i.i, ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %i.cw, i64 noundef %i.cy) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br label %bb.r

.critedge:                                        ; preds = %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit21
  %i.cz = load ptr, ptr %i.aq, align 8            ; 3 uses
  %i.da = icmp ne ptr %i.cz, null
  %i.db = icmp ne ptr %i.cz, %i.ap
  %i.dc = and i1 %i.da, %i.db
  br i1 %i.dc, label %bb.q, label %_ZN4node16MaybeStackBufferIcLm1024EED2Ev.exit27

bb.q:                                             ; preds = %.critedge
  call void @free(ptr noundef nonnull %i.cz) #27
  br label %_ZN4node16MaybeStackBufferIcLm1024EED2Ev.exit27

_ZN4node16MaybeStackBufferIcLm1024EED2Ev.exit27:  ; preds = %.critedge, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  br label %bb.r

bb.r:                                             ; preds = %_ZN4node16MaybeStackBufferIcLm1024EED2Ev.exit, %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit, %_ZN4node16MaybeStackBufferIcLm1024EED2Ev.exit27, %_ZN4node10BaseObject12FromJSObjectEN2v85LocalINS1_5ValueEEE.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4node6crypto4Sign9SignFinalERKN7ncrypto13EVPKeyPointerEiSt8optionalIiENS0_9DSASigEncE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"struct.node::crypto::Sign::SignResult") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef %3, i64 %4, i32 noundef %5) local_unnamed_addr #0 align 2 {
bb.a:
  %6 = alloca %"class.std::unique_ptr.417", align 8 ; 7 uses
  %7 = alloca %"struct.ncrypto::Buffer.456", align 8 ; 6 uses
  %8 = alloca %"class.ncrypto::DataPointer", align 8 ; 7 uses
  %9 = alloca %"class.std::unique_ptr.417", align 8 ; 12 uses
  %10 = alloca %"struct.ncrypto::Buffer.591", align 8 ; 5 uses
  %11 = alloca %"class.ncrypto::EVPKeyCtxPointer", align 8 ; 8 uses
  %12 = alloca %"struct.ncrypto::Buffer.456", align 8 ; 6 uses
  %13 = alloca %"class.std::unique_ptr.417", align 8 ; 7 uses
  %14 = alloca %"class.std::unique_ptr.417", align 8 ; 4 uses
  %15 = alloca %"class.ncrypto::EVPMDCtxPointer", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %.not.i.i.not = icmp eq ptr %i.b, null
  br i1 %.not.i.i.not, label %bb.b, label %bb.c, !prof !33

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #27
  store i32 3, ptr %0, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.c, align 8
  store ptr null, ptr %14, align 8
  call void @_ZNSt10unique_ptrIN2v812BackingStoreESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %14) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #27
  br label %bb.u

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #27
  call void @_ZN7ncrypto15EVPMDCtxPointerC1EOS0_(ptr noundef nonnull align 8 dereferenceable(8) %15, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #27
  %i.d = call noundef zeroext i1 @_ZNK7ncrypto13EVPKeyPointer21validateDsaParametersEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #27
  br i1 %i.d, label %bb.d, label %_ZNSt10unique_ptrIN2v812BackingStoreESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN2v812BackingStoreESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.c
  store i32 5, ptr %0, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.e, align 8
  br label %bb.t

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 176
  %i.i = load ptr, ptr %i.h, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27, !noalias !67
  %i.j = call noundef i64 @_ZN7ncrypto15EVPMDCtxPointer15getExpectedSizeEv(ptr noundef nonnull align 8 dereferenceable(8) %15) #27, !noalias !67
  call void @_ZN7ncrypto15EVPMDCtxPointer11digestFinalEm(ptr dead_on_unwind nonnull writable sret(%"class.ncrypto::DataPointer") align 8 %8, ptr noundef nonnull align 8 dereferenceable(8) %15, i64 noundef %i.j) #27, !noalias !67
  %i.k = load ptr, ptr %8, align 8, !noalias !67
  %.not16.i = icmp eq ptr %i.k, null
  br i1 %.not16.i, label %_ZN4node6crypto12_GLOBAL__N_114Node_SignFinalEPNS_11EnvironmentEON7ncrypto15EVPMDCtxPointerERKNS4_13EVPKeyPointerEiSt8optionalIiE.exit, label %bb.e, !prof !33

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #27, !noalias !67
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 200 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !noalias !67
  %i.n = call noundef i64 @_ZNK7ncrypto13EVPKeyPointer4sizeEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #27, !noalias !67
  call void @_ZN2v811ArrayBuffer15NewBackingStoreEPNS_7IsolateEmNS_30BackingStoreInitializationModeENS_25BackingStoreOnFailureModeE(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.417") align 8 %9, ptr noundef %i.m, i64 noundef %i.n, i32 noundef 0, i32 noundef 1) #27, !noalias !67
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #27, !noalias !67
  %i.o = load ptr, ptr %9, align 8, !noalias !67
  %i.p = call noundef ptr @_ZNK2v812BackingStore4DataEv(ptr noundef nonnull align 1 dereferenceable(1) %i.o) #27, !noalias !67
  store ptr %i.p, ptr %10, align 8, !noalias !67
  %i.q = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 6 uses
  %i.r = call noundef i64 @_ZNK7ncrypto13EVPKeyPointer4sizeEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #27, !noalias !67
  store i64 %i.r, ptr %i.q, align 8, !noalias !67
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #27, !noalias !67
  call void @_ZNK7ncrypto13EVPKeyPointer6newCtxEv(ptr dead_on_unwind nonnull writable sret(%"class.ncrypto::EVPKeyCtxPointer") align 8 %11, ptr noundef nonnull align 8 dereferenceable(8) %2) #27, !noalias !67
  %i.s = call noundef i32 @_ZN7ncrypto16EVPKeyCtxPointer11initForSignEv(ptr noundef nonnull align 8 dereferenceable(8) %11) #27, !noalias !67
  %i.t = icmp sgt i32 %i.s, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #27, !noalias !67
  br i1 %i.t, label %bb.f, label %.critedge.i, !prof !36

bb.f:                                             ; preds = %bb.e
  %i.u = load ptr, ptr %11, align 8, !noalias !67
  %i.v = call noundef zeroext i1 @_ZNK7ncrypto13EVPKeyPointer12isRsaVariantEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #27, !noalias !67
  br i1 %i.v, label %_ZN4node6crypto12_GLOBAL__N_115ApplyRSAOptionsERKN7ncrypto13EVPKeyPointerEP15evp_pkey_ctx_stiSt8optionalIiE.exit.i, label %_ZN4node6crypto12_GLOBAL__N_115ApplyRSAOptionsERKN7ncrypto13EVPKeyPointerEP15evp_pkey_ctx_stiSt8optionalIiE.exit.thread.i

_ZN4node6crypto12_GLOBAL__N_115ApplyRSAOptionsERKN7ncrypto13EVPKeyPointerEP15evp_pkey_ctx_stiSt8optionalIiE.exit.i: ; preds = %bb.f
  %i.w = call noundef zeroext i1 @_ZN7ncrypto16EVPKeyCtxPointer13setRsaPaddingEP15evp_pkey_ctx_stiSt8optionalIiE(ptr noundef %i.u, i32 noundef %3, i64 %4) #27, !noalias !67
  br i1 %i.w, label %_ZN4node6crypto12_GLOBAL__N_115ApplyRSAOptionsERKN7ncrypto13EVPKeyPointerEP15evp_pkey_ctx_stiSt8optionalIiE.exit.thread.i, label %.critedge.i, !prof !68

_ZN4node6crypto12_GLOBAL__N_115ApplyRSAOptionsERKN7ncrypto13EVPKeyPointerEP15evp_pkey_ctx_stiSt8optionalIiE.exit.thread.i: ; preds = %_ZN4node6crypto12_GLOBAL__N_115ApplyRSAOptionsERKN7ncrypto13EVPKeyPointerEP15evp_pkey_ctx_stiSt8optionalIiE.exit.i, %bb.f
  %i.x = call noundef zeroext i1 @_ZN7ncrypto16EVPKeyCtxPointer14setSignatureMdERKNS_15EVPMDCtxPointerE(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 8 dereferenceable(8) %15) #27, !noalias !67
  br i1 %i.x, label %bb.g, label %.critedge.i, !prof !36

bb.g:                                             ; preds = %_ZN4node6crypto12_GLOBAL__N_115ApplyRSAOptionsERKN7ncrypto13EVPKeyPointerEP15evp_pkey_ctx_stiSt8optionalIiE.exit.thread.i
  %i.y = load ptr, ptr %8, align 8, !noalias !67
  %i.z = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !noalias !67
  store ptr %i.y, ptr %12, align 8, !noalias !67
  %i.ab = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 %i.aa, ptr %i.ab, align 8, !noalias !67
  %i.ac = call noundef zeroext i1 @_ZN7ncrypto16EVPKeyCtxPointer8signIntoERKNS_6BufferIKhEEPNS1_IhEE(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 8 dereferenceable(16) %12, ptr noundef nonnull %10) #27, !noalias !67
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #27, !noalias !67
  br i1 %i.ac, label %bb.h, label %bb.o, !prof !36

bb.h:                                             ; preds = %bb.g
  %i.ad = load i64, ptr %i.q, align 8, !noalias !67
  %i.ae = load ptr, ptr %9, align 8, !noalias !67
  %i.af = call noundef i64 @_ZNK2v812BackingStore10ByteLengthEv(ptr noundef nonnull align 1 dereferenceable(1) %i.ae) #27, !noalias !67
  %.not.i9 = icmp ugt i64 %i.ad, %i.af
  br i1 %.not.i9, label %bb.i, label %bb.j, !prof !33

bb.i:                                             ; preds = %bb.h
  call void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4node6crypto12_GLOBAL__N_114Node_SignFinalEPNS_11EnvironmentEON7ncrypto15EVPMDCtxPointerERKNS4_13EVPKeyPointerEiSt8optionalIiEE20error_and_abort_args) #27, !noalias !67
  call void @abort() #28, !noalias !67
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.ag = load i64, ptr %i.q, align 8, !noalias !67
  %i.ah = load ptr, ptr %9, align 8, !noalias !67
  %i.ai = call noundef i64 @_ZNK2v812BackingStore10ByteLengthEv(ptr noundef nonnull align 1 dereferenceable(1) %i.ah) #27, !noalias !67
  %i.aj = icmp ult i64 %i.ag, %i.ai
  br i1 %i.aj, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #27, !noalias !67
  %i.ak = load ptr, ptr %i.l, align 8, !noalias !67
  %i.al = load i64, ptr %i.q, align 8, !noalias !67
  call void @_ZN2v811ArrayBuffer15NewBackingStoreEPNS_7IsolateEmNS_30BackingStoreInitializationModeENS_25BackingStoreOnFailureModeE(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.417") align 8 %13, ptr noundef %i.ak, i64 noundef %i.al, i32 noundef 1, i32 noundef 1) #27, !noalias !67
  %i.am = load i64, ptr %i.q, align 8, !noalias !67
  %.not10.i = icmp eq i64 %i.am, 0
  br i1 %.not10.i, label %bb.m, label %bb.l, !prof !33

bb.l:                                             ; preds = %bb.k
  %i.an = load ptr, ptr %13, align 8, !noalias !67
  %i.ao = call noundef ptr @_ZNK2v812BackingStore4DataEv(ptr noundef nonnull align 1 dereferenceable(1) %i.an) #27, !noalias !67
  %i.ap = load ptr, ptr %9, align 8, !noalias !67
  %i.aq = call noundef ptr @_ZNK2v812BackingStore4DataEv(ptr noundef nonnull align 1 dereferenceable(1) %i.ap) #27, !noalias !67
  %i.ar = load i64, ptr %i.q, align 8, !noalias !67
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ao, ptr align 1 %i.aq, i64 %i.ar, i1 false), !noalias !67
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.as = load ptr, ptr %13, align 8, !noalias !67
  store ptr null, ptr %13, align 8, !noalias !67
  %i.at = load ptr, ptr %9, align 8, !noalias !67 ; 3 uses
  store ptr %i.as, ptr %9, align 8, !noalias !67
  %.not.i.i.i.i.i = icmp eq ptr %i.at, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10unique_ptrIN2v812BackingStoreESt14default_deleteIS1_EED2Ev.exit.i, label %_ZNSt10unique_ptrIN2v812BackingStoreESt14default_deleteIS1_EEaSEOS4_.exit.i

_ZNSt10unique_ptrIN2v812BackingStoreESt14default_deleteIS1_EEaSEOS4_.exit.i: ; preds = %bb.m
  call void @_ZN2v812BackingStoreD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %i.at) #27, !noalias !67
  call void @_ZdlPv(ptr noundef nonnull %i.at) #27, !noalias !67
  %.pr.i = load ptr, ptr %13, align 8, !noalias !67 ; 3 uses
  %.not.i.i10 = icmp eq ptr %.pr.i, null
  br i1 %.not.i.i10, label %_ZNSt10unique_ptrIN2v812BackingStoreESt14default_deleteIS1_EED2Ev.exit.i, label %_ZNKSt14default_deleteIN2v812BackingStoreEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN2v812BackingStoreEEclEPS1_.exit.i.i: ; preds = %_ZNSt10unique_ptrIN2v812BackingStoreESt14default_deleteIS1_EEaSEOS4_.exit.i
  call void @_ZN2v812BackingStoreD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %.pr.i) #27, !noalias !67
  call void @_ZdlPv(ptr noundef nonnull %.pr.i) #27, !noalias !67
  br label %_ZNSt10unique_ptrIN2v812BackingStoreESt14default_deleteIS1_EED2Ev.exit.i

_ZNSt10unique_ptrIN2v812BackingStoreESt14default_deleteIS1_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIN2v812BackingStoreEEclEPS1_.exit.i.i, %_ZNSt10unique_ptrIN2v812BackingStoreESt14default_deleteIS1_EEaSEOS4_.exit.i, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #27, !noalias !67
  br label %bb.n

bb.n:                                             ; preds = %_ZNSt10unique_ptrIN2v812BackingStoreESt14default_deleteIS1_EED2Ev.exit.i, %bb.j
  %i.au = load i64, ptr %9, align 8, !noalias !67
  %i.av = inttoptr i64 %i.au to ptr
  store ptr null, ptr %9, align 8
  br label %bb.o

.critedge.i:                                      ; preds = %_ZN4node6crypto12_GLOBAL__N_115ApplyRSAOptionsERKN7ncrypto13EVPKeyPointerEP15evp_pkey_ctx_stiSt8optionalIiE.exit.thread.i, %_ZN4node6crypto12_GLOBAL__N_115ApplyRSAOptionsERKN7ncrypto13EVPKeyPointerEP15evp_pkey_ctx_stiSt8optionalIiE.exit.i, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #27, !noalias !67
  br label %bb.o

bb.o:                                             ; preds = %bb.g, %.critedge.i, %bb.n
  %.sink.i = phi ptr [ %i.av, %bb.n ], [ null, %.critedge.i ], [ null, %bb.g ]
  call void @_ZN7ncrypto16EVPKeyCtxPointerD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %11) #27, !noalias !67
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #27, !noalias !67
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27, !noalias !67
  %i.aw = load ptr, ptr %9, align 8, !noalias !67 ; 3 uses
  %.not.i11.i = icmp eq ptr %i.aw, null
  br i1 %.not.i11.i, label %_ZNSt10unique_ptrIN2v812BackingStoreESt14default_deleteIS1_EED2Ev.exit13.i, label %_ZNKSt14default_deleteIN2v812BackingStoreEEclEPS1_.exit.i12.i

_ZNKSt14default_deleteIN2v812BackingStoreEEclEPS1_.exit.i12.i: ; preds = %bb.o
  call void @_ZN2v812BackingStoreD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %i.aw) #27, !noalias !67
  call void @_ZdlPv(ptr noundef nonnull %i.aw) #27, !noalias !67
  br label %_ZNSt10unique_ptrIN2v812BackingStoreESt14default_deleteIS1_EED2Ev.exit13.i

_ZNSt10unique_ptrIN2v812BackingStoreESt14default_deleteIS1_EED2Ev.exit13.i: ; preds = %_ZNKSt14default_deleteIN2v812BackingStoreEEclEPS1_.exit.i12.i, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27, !noalias !67
  br label %_ZN4node6crypto12_GLOBAL__N_114Node_SignFinalEPNS_11EnvironmentEON7ncrypto15EVPMDCtxPointerERKNS4_13EVPKeyPointerEiSt8optionalIiE.exit

_ZN4node6crypto12_GLOBAL__N_114Node_SignFinalEPNS_11EnvironmentEON7ncrypto15EVPMDCtxPointerERKNS4_13EVPKeyPointerEiSt8optionalIiE.exit: ; preds = %bb.d, %_ZNSt10unique_ptrIN2v812BackingStoreESt14default_deleteIS1_EED2Ev.exit13.i
  %.sroa.023.0..sroa.023.0..sroa.023.0. = phi ptr [ %.sink.i, %_ZNSt10unique_ptrIN2v812BackingStoreESt14default_deleteIS1_EED2Ev.exit13.i ], [ null, %bb.d ] ; 8 uses
  call void @_ZN7ncrypto11DataPointerD1Ev(ptr noundef nonnull align 8 dead_on_return(17) dereferenceable(24) %8) #27, !noalias !67
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27, !noalias !67
  %i.ax = icmp ne ptr %.sroa.023.0..sroa.023.0..sroa.023.0., null ; 2 uses
  %i.ay = select i1 %i.ax, i32 0, i32 5
  %i.az = icmp eq i32 %5, 1
  %or.cond = and i1 %i.az, %i.ax
  br i1 %or.cond, label %bb.p, label %_ZNSt10unique_ptrIN2v812BackingStoreESt14default_deleteIS1_EED2Ev.exit21

bb.p:                                             ; preds = %_ZN4node6crypto12_GLOBAL__N_114Node_SignFinalEPNS_11EnvironmentEON7ncrypto15EVPMDCtxPointerERKNS4_13EVPKeyPointerEiSt8optionalIiE.exit
  %i.ba = load ptr, ptr %i.f, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 176
  %i.bc = load ptr, ptr %i.bb, align 8
  %i.bd = call i64 @_ZNK7ncrypto13EVPKeyPointer12getBytesOfRSEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #27, !noalias !69 ; 3 uses
  %i.be = and i64 %i.bd, 4294967296
  %.not.i11 = icmp eq i64 %i.be, 0
  %i.bf = and i64 %i.bd, 4294967295               ; 2 uses
  %i.bg = icmp eq i64 %i.bf, 4294967295
  %i.bh = or i1 %.not.i11, %i.bg
  br i1 %i.bh, label %_ZNSt10unique_ptrIN2v812BackingStoreESt14default_deleteIS1_EED2Ev.exit18, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27, !noalias !69
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bc, i64 200
  %i.bj = load ptr, ptr %i.bi, align 8, !noalias !69
  %i.bk = shl i64 %i.bd, 1
  %i.bl = and i64 %i.bk, 4294967294
  call void @_ZN2v811ArrayBuffer15NewBackingStoreEPNS_7IsolateEmNS_30BackingStoreInitializationModeENS_25BackingStoreOnFailureModeE(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.417") align 8 %6, ptr noundef %i.bj, i64 noundef %i.bl, i32 noundef 1, i32 noundef 1) #27, !noalias !69
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27, !noalias !69
  %i.bm = call noundef ptr @_ZNK2v812BackingStore4DataEv(ptr noundef nonnull align 1 dereferenceable(1) %.sroa.023.0..sroa.023.0..sroa.023.0.) #27, !noalias !69
  store ptr %i.bm, ptr %7, align 8, !noalias !69
  %i.bn = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.bo = call noundef i64 @_ZNK2v812BackingStore10ByteLengthEv(ptr noundef nonnull align 1 dereferenceable(1) %.sroa.023.0..sroa.023.0..sroa.023.0.) #27, !noalias !69
  store i64 %i.bo, ptr %i.bn, align 8, !noalias !69
  %i.bp = load ptr, ptr %6, align 8, !noalias !69
  %i.bq = call noundef ptr @_ZNK2v812BackingStore4DataEv(ptr noundef nonnull align 1 dereferenceable(1) %i.bp) #27, !noalias !69
  %i.br = call noundef zeroext i1 @_ZN7ncrypto12extractP1363ERKNS_6BufferIKhEEPhm(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef %i.bq, i64 noundef %i.bf) #27, !noalias !69
  br i1 %i.br, label %_ZNKSt14default_deleteIN2v812BackingStoreEEclEPS1_.exit.i.i.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.pr.i12 = load ptr, ptr %6, align 8, !noalias !69 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27, !noalias !69
  %.not.i.i13 = icmp eq ptr %.pr.i12, null
  br i1 %.not.i.i13, label %_ZN4node6crypto12_GLOBAL__N_123ConvertSignatureToP1363EPNS_11EnvironmentERKN7ncrypto13EVPKeyPointerEOSt10unique_ptrIN2v812BackingStoreESt14default_deleteISA_EE.exit.thread46, label %_ZN4node6crypto12_GLOBAL__N_123ConvertSignatureToP1363EPNS_11EnvironmentERKN7ncrypto13EVPKeyPointerEOSt10unique_ptrIN2v812BackingStoreESt14default_deleteISA_EE.exit.thread37.a

_ZN4node6crypto12_GLOBAL__N_123ConvertSignatureToP1363EPNS_11EnvironmentERKN7ncrypto13EVPKeyPointerEOSt10unique_ptrIN2v812BackingStoreESt14default_deleteISA_EE.exit.thread37.a: ; preds = %bb.r
  call void @_ZN2v812BackingStoreD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %.pr.i12) #27, !noalias !69
  call void @_ZdlPv(ptr noundef nonnull %.pr.i12) #27, !noalias !69
  br label %_ZN4node6crypto12_GLOBAL__N_123ConvertSignatureToP1363EPNS_11EnvironmentERKN7ncrypto13EVPKeyPointerEOSt10unique_ptrIN2v812BackingStoreESt14default_deleteISA_EE.exit.thread46

_ZN4node6crypto12_GLOBAL__N_123ConvertSignatureToP1363EPNS_11EnvironmentERKN7ncrypto13EVPKeyPointerEOSt10unique_ptrIN2v812BackingStoreESt14default_deleteISA_EE.exit.thread46: ; preds = %bb.r, %_ZN4node6crypto12_GLOBAL__N_123ConvertSignatureToP1363EPNS_11EnvironmentERKN7ncrypto13EVPKeyPointerEOSt10unique_ptrIN2v812BackingStoreESt14default_deleteISA_EE.exit.thread37.a
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27, !noalias !69
  br label %_ZNSt10unique_ptrIN2v812BackingStoreESt14default_deleteIS1_EED2Ev.exit18

_ZNKSt14default_deleteIN2v812BackingStoreEEclEPS1_.exit.i.i.i.i: ; preds = %bb.q
  %i.bs = load i64, ptr %6, align 8, !noalias !69
  %i.bt = inttoptr i64 %i.bs to ptr
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27, !noalias !69
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27, !noalias !69
  call void @_ZN2v812BackingStoreD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %.sroa.023.0..sroa.023.0..sroa.023.0.) #27
  call void @_ZdlPv(ptr noundef nonnull %.sroa.023.0..sroa.023.0..sroa.023.0.) #27
  br label %_ZNSt10unique_ptrIN2v812BackingStoreESt14default_deleteIS1_EED2Ev.exit18

_ZNSt10unique_ptrIN2v812BackingStoreESt14default_deleteIS1_EED2Ev.exit18: ; preds = %bb.p, %_ZNKSt14default_deleteIN2v812BackingStoreEEclEPS1_.exit.i.i.i.i, %_ZN4node6crypto12_GLOBAL__N_123ConvertSignatureToP1363EPNS_11EnvironmentERKN7ncrypto13EVPKeyPointerEOSt10unique_ptrIN2v812BackingStoreESt14default_deleteISA_EE.exit.thread46
  %.sroa.0.136 = phi ptr [ %i.bt, %_ZNKSt14default_deleteIN2v812BackingStoreEEclEPS1_.exit.i.i.i.i ], [ %.sroa.023.0..sroa.023.0..sroa.023.0., %_ZN4node6crypto12_GLOBAL__N_123ConvertSignatureToP1363EPNS_11EnvironmentERKN7ncrypto13EVPKeyPointerEOSt10unique_ptrIN2v812BackingStoreESt14default_deleteISA_EE.exit.thread46 ], [ %.sroa.023.0..sroa.023.0..sroa.023.0., %bb.p ] ; 2 uses
  %i.bu = call noundef ptr @_ZNK2v812BackingStore4DataEv(ptr noundef nonnull align 1 dereferenceable(1) %.sroa.0.136) #27
  %.not = icmp eq ptr %i.bu, null
  br i1 %.not, label %bb.s, label %_ZNSt10unique_ptrIN2v812BackingStoreESt14default_deleteIS1_EED2Ev.exit21, !prof !33

bb.s:                                             ; preds = %_ZNSt10unique_ptrIN2v812BackingStoreESt14default_deleteIS1_EED2Ev.exit18
  call void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4node6crypto4Sign9SignFinalERKN7ncrypto13EVPKeyPointerEiSt8optionalIiENS0_9DSASigEncEE20error_and_abort_args) #27
  call void @abort() #28
  unreachable

_ZNSt10unique_ptrIN2v812BackingStoreESt14default_deleteIS1_EED2Ev.exit21: ; preds = %_ZN4node6crypto12_GLOBAL__N_114Node_SignFinalEPNS_11EnvironmentEON7ncrypto15EVPMDCtxPointerERKNS4_13EVPKeyPointerEiSt8optionalIiE.exit, %_ZNSt10unique_ptrIN2v812BackingStoreESt14default_deleteIS1_EED2Ev.exit18
  %.sroa.023.0..sroa.023.0..sroa.023.0.31 = phi ptr [ %.sroa.0.136, %_ZNSt10unique_ptrIN2v812BackingStoreESt14default_deleteIS1_EED2Ev.exit18 ], [ %.sroa.023.0..sroa.023.0..sroa.023.0., %_ZN4node6crypto12_GLOBAL__N_114Node_SignFinalEPNS_11EnvironmentEON7ncrypto15EVPMDCtxPointerERKNS4_13EVPKeyPointerEiSt8optionalIiE.exit ]
  store i32 %i.ay, ptr %0, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bw = ptrtoint ptr %.sroa.023.0..sroa.023.0..sroa.023.0.31 to i64
  store i64 %i.bw, ptr %i.bv, align 8
  br label %bb.t

bb.t:                                             ; preds = %_ZNSt10unique_ptrIN2v812BackingStoreESt14default_deleteIS1_EED2Ev.exit21, %_ZNSt10unique_ptrIN2v812BackingStoreESt14default_deleteIS1_EED2Ev.exit
  call void @_ZN7ncrypto15EVPMDCtxPointerD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %15) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #27
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt10unique_ptrIN2v812BackingStoreESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZNKSt14default_deleteIN2v812BackingStoreEEclEPS1_.exit

_ZNKSt14default_deleteIN2v812BackingStoreEEclEPS1_.exit: ; preds = %bb.a
  tail call void @_ZN2v812BackingStoreD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %i.a) #27
  tail call void @_ZdlPv(ptr noundef nonnull %i.a) #27
  br label %bb.b

bb.b:                                             ; preds = %_ZNKSt14default_deleteIN2v812BackingStoreEEclEPS1_.exit, %bb.a
  ret void
}

; Function Attrs: nounwind
declare void @_ZN7ncrypto15EVPMDCtxPointerC1EOS0_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #7

declare noundef zeroext i1 @_ZNK7ncrypto13EVPKeyPointer21validateDsaParametersEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #5

declare noundef ptr @_ZNK2v812BackingStore4DataEv(ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #5

declare void @_ZN7ncrypto18ClearErrorOnReturnC1EPNS_15CryptoErrorListE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #5

declare void @_ZN4node6crypto13KeyObjectData19GetPrivateKeyFromJsERKN2v820FunctionCallbackInfoINS2_5ValueEEEPjb(ptr dead_on_unwind writable sret(%"class.node::crypto::KeyObjectData") align 8, ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, i1 noundef zeroext) local_unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4node6crypto13KeyObjectData16GetAsymmetricKeyEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #5

declare noundef zeroext i1 @_ZNK7ncrypto13EVPKeyPointer16isOneShotVariantEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #5

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4node38THROW_ERR_CRYPTO_UNSUPPORTED_OPERATIONEPNS_11EnvironmentE(ptr noundef %0) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = tail call ptr @_ZN4node32ERR_CRYPTO_UNSUPPORTED_OPERATIONIJEEEN2v85LocalINS1_6ObjectEEEPNS1_7IsolateESt17basic_string_viewIcSt11char_traitsIcEEDpOT_(ptr noundef %i.b, i64 28, ptr nonnull @.str.79)
  %i.d = tail call ptr @_ZN2v87Isolate14ThrowExceptionENS_5LocalINS_5ValueEEE(ptr noundef nonnull align 1 dereferenceable(1) %i.b, ptr %i.c) #27 ; 0 uses
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4node22THROW_ERR_OUT_OF_RANGEIJEEEvPNS_11EnvironmentESt17basic_string_viewIcSt11char_traitsIcEEDpOT_(ptr noundef %0, i64 %1, ptr %2) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = tail call ptr @_ZN4node16ERR_OUT_OF_RANGEIJEEEN2v85LocalINS1_6ObjectEEEPNS1_7IsolateESt17basic_string_viewIcSt11char_traitsIcEEDpOT_(ptr noundef %i.b, i64 %1, ptr %2)
  %i.d = tail call ptr @_ZN2v87Isolate14ThrowExceptionENS_5LocalINS_5ValueEEE(ptr noundef nonnull align 1 dereferenceable(1) %i.b, ptr %i.c) #27 ; 0 uses
  ret void
}

declare ptr @_ZN2v811ArrayBuffer3NewEPNS_7IsolateESt10shared_ptrINS_12BackingStoreEE(ptr noundef, ptr noundef) local_unnamed_addr #5

declare ptr @_ZN4node6Buffer3NewEPNS_11EnvironmentEN2v85LocalINS3_11ArrayBufferEEEmm(ptr noundef, ptr, i64 noundef, i64 noundef) local_unnamed_addr #5

declare noundef i64 @_ZNK2v811ArrayBuffer10ByteLengthEv(ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @_ZN7ncrypto18ClearErrorOnReturnD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4node6crypto6VerifyC2EPNS_11EnvironmentEN2v85LocalINS4_6ObjectEEE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr nofree noundef readonly captures(none) %1, ptr %2) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 3008
  %i.b = load ptr, ptr %i.a, align 8
  tail call void @_ZN4node10BaseObjectC2EPNS_5RealmEN2v85LocalINS3_6ObjectEEE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %i.b, ptr %2) #27
  store ptr getelementptr inbounds nuw inrange(-16, 144) (i8, ptr @_ZTVN4node6crypto8SignBaseE, i64 16), ptr %0, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @_ZN7ncrypto15EVPMDCtxPointerC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.c) #27
  tail call void @_ZN4node10BaseObject8MakeWeakEv(ptr noundef nonnull align 8 dereferenceable(56) %0) #27
  store ptr getelementptr inbounds nuw inrange(-16, 144) (i8, ptr @_ZTVN4node6crypto6VerifyE, i64 16), ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4node6crypto6Verify10InitializeEPNS_11EnvironmentEN2v85LocalINS4_6ObjectEEE(ptr nofree noundef readonly captures(none) %0, ptr %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %i.c = tail call ptr @_ZN4node19NewFunctionTemplateEPN2v87IsolateEPFvRKNS0_20FunctionCallbackInfoINS0_5ValueEEEENS0_5LocalINS0_9SignatureEEENS0_19ConstructorBehaviorENS0_14SideEffectTypeEPKNS0_9CFunctionE(ptr noundef %i.b, ptr noundef nonnull @_ZN4node6crypto6Verify3NewERKN2v820FunctionCallbackInfoINS2_5ValueEEE, ptr null, i32 noundef 1, i32 noundef 0, ptr noundef null) #27 ; 5 uses
  %i.d = tail call ptr @_ZN2v816FunctionTemplate16InstanceTemplateEv(ptr noundef nonnull align 1 dereferenceable(1) %i.c) #27
  tail call void @_ZN2v814ObjectTemplate21SetInternalFieldCountEi(ptr noundef nonnull align 1 dereferenceable(1) %i.d, i32 noundef 2) #27
  tail call void @_ZN4node14SetProtoMethodEPN2v87IsolateENS0_5LocalINS0_16FunctionTemplateEEESt17basic_string_viewIcSt11char_traitsIcEEPFvRKNS0_20FunctionCallbackInfoINS0_5ValueEEEE(ptr noundef %i.b, ptr nonnull %i.c, i64 4, ptr nonnull @.str.14, ptr noundef nonnull @_ZN4node6crypto6Verify10VerifyInitERKN2v820FunctionCallbackInfoINS2_5ValueEEE) #27
  tail call void @_ZN4node14SetProtoMethodEPN2v87IsolateENS0_5LocalINS0_16FunctionTemplateEEESt17basic_string_viewIcSt11char_traitsIcEEPFvRKNS0_20FunctionCallbackInfoINS0_5ValueEEEE(ptr noundef %i.b, ptr nonnull %i.c, i64 6, ptr nonnull @.str.15, ptr noundef nonnull @_ZN4node6crypto6Verify12VerifyUpdateERKN2v820FunctionCallbackInfoINS2_5ValueEEE) #27
  tail call void @_ZN4node14SetProtoMethodEPN2v87IsolateENS0_5LocalINS0_16FunctionTemplateEEESt17basic_string_viewIcSt11char_traitsIcEEPFvRKNS0_20FunctionCallbackInfoINS0_5ValueEEEE(ptr noundef %i.b, ptr nonnull %i.c, i64 6, ptr nonnull @.str.27, ptr noundef nonnull @_ZN4node6crypto6Verify11VerifyFinalERKN2v820FunctionCallbackInfoINS2_5ValueEEE) #27
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 3008
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 192
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.g, align 8
  tail call void @_ZN4node22SetConstructorFunctionEN2v85LocalINS0_7ContextEEENS1_INS0_6ObjectEEEPKcNS1_INS0_16FunctionTemplateEEENS_26SetConstructorFunctionFlagE(ptr %.sroa.0.0.copyload.i.i.i, ptr %1, ptr noundef nonnull @.str.28, ptr nonnull %i.c, i32 noundef 1) #27
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4node6crypto6Verify3NewERKN2v820FunctionCallbackInfoINS2_5ValueEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call ptr @_ZN2v87Isolate17GetCurrentContextEv(ptr noundef nonnull align 1 dereferenceable(1) %i.c) #27 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %_ZN4node11Environment10GetCurrentERKN2v820FunctionCallbackInfoINS1_5ValueEEE.exit, label %bb.b, !prof !33

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noundef i32 @_ZN2v87Context29GetNumberOfEmbedderDataFieldsEv(ptr noundef nonnull align 1 dereferenceable(1) %i.d) #27
  %i.g = icmp ult i32 %i.f, 40
  br i1 %i.g, label %_ZN4node11Environment10GetCurrentERKN2v820FunctionCallbackInfoINS1_5ValueEEE.exit, label %_ZN4node18ContextEmbedderTag13IsNodeContextEN2v85LocalINS1_7ContextEEE.exit.i.i, !prof !33

_ZN4node18ContextEmbedderTag13IsNodeContextEN2v85LocalINS1_7ContextEEE.exit.i.i: ; preds = %bb.b
  %i.h = load i64, ptr %i.d, align 8
  %i.i = add i64 %i.h, 47
  %i.j = inttoptr i64 %i.i to ptr
  %i.k = load i64, ptr %i.j, align 8              ; 2 uses
  %i.l = add i64 %i.k, 327
  %i.m = inttoptr i64 %i.l to ptr
  %i.n = load i64, ptr %i.m, align 8
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = load ptr, ptr @_ZN4node18ContextEmbedderTag18kNodeContextTagPtrE, align 8
  %.not.i.i.i = icmp eq ptr %i.p, %i.o
  br i1 %.not.i.i.i, label %bb.c, label %_ZN4node11Environment10GetCurrentERKN2v820FunctionCallbackInfoINS1_5ValueEEE.exit, !prof !37

bb.c:                                             ; preds = %_ZN4node18ContextEmbedderTag13IsNodeContextEN2v85LocalINS1_7ContextEEE.exit.i.i
  %i.q = add i64 %i.k, 271
  %i.r = inttoptr i64 %i.q to ptr
  %i.s = load i64, ptr %i.r, align 8
  %i.t = inttoptr i64 %i.s to ptr
  br label %_ZN4node11Environment10GetCurrentERKN2v820FunctionCallbackInfoINS1_5ValueEEE.exit

_ZN4node11Environment10GetCurrentERKN2v820FunctionCallbackInfoINS1_5ValueEEE.exit: ; preds = %bb.a, %bb.b, %_ZN4node18ContextEmbedderTag13IsNodeContextEN2v85LocalINS1_7ContextEEE.exit.i.i, %bb.c
  %.0.i.i = phi ptr [ %i.t, %bb.c ], [ null, %_ZN4node18ContextEmbedderTag13IsNodeContextEN2v85LocalINS1_7ContextEEE.exit.i.i ], [ null, %bb.b ], [ null, %bb.a ]
  %i.u = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #29 ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = getelementptr inbounds i8, ptr %i.w, i64 -8
  %i.y = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 3008
  %i.z = load ptr, ptr %i.y, align 8
  tail call void @_ZN4node10BaseObjectC2EPNS_5RealmEN2v85LocalINS3_6ObjectEEE(ptr noundef nonnull align 8 dereferenceable(56) %i.u, ptr noundef %i.z, ptr nonnull %i.x) #27
  store ptr getelementptr inbounds nuw inrange(-16, 144) (i8, ptr @_ZTVN4node6crypto8SignBaseE, i64 16), ptr %i.u, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 48
  tail call void @_ZN7ncrypto15EVPMDCtxPointerC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.aa) #27
  tail call void @_ZN4node10BaseObject8MakeWeakEv(ptr noundef nonnull align 8 dereferenceable(56) %i.u) #27
  store ptr getelementptr inbounds nuw inrange(-16, 144) (i8, ptr @_ZTVN4node6crypto6VerifyE, i64 16), ptr %i.u, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4node6crypto6Verify10VerifyInitERKN2v820FunctionCallbackInfoINS2_5ValueEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) #0 align 2 {
bb.a:
  %1 = alloca %"class.node::Utf8Value", align 8   ; 5 uses
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call ptr @_ZN2v87Isolate17GetCurrentContextEv(ptr noundef nonnull align 1 dereferenceable(1) %i.c) #27 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %_ZN4node11Environment10GetCurrentERKN2v820FunctionCallbackInfoINS1_5ValueEEE.exit, label %bb.b, !prof !33

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noundef i32 @_ZN2v87Context29GetNumberOfEmbedderDataFieldsEv(ptr noundef nonnull align 1 dereferenceable(1) %i.d) #27
  %i.g = icmp ult i32 %i.f, 40
  br i1 %i.g, label %_ZN4node11Environment10GetCurrentERKN2v820FunctionCallbackInfoINS1_5ValueEEE.exit, label %_ZN4node18ContextEmbedderTag13IsNodeContextEN2v85LocalINS1_7ContextEEE.exit.i.i, !prof !33

_ZN4node18ContextEmbedderTag13IsNodeContextEN2v85LocalINS1_7ContextEEE.exit.i.i: ; preds = %bb.b
  %i.h = load i64, ptr %i.d, align 8
  %i.i = add i64 %i.h, 47
  %i.j = inttoptr i64 %i.i to ptr
  %i.k = load i64, ptr %i.j, align 8              ; 2 uses
  %i.l = add i64 %i.k, 327
  %i.m = inttoptr i64 %i.l to ptr
  %i.n = load i64, ptr %i.m, align 8
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = load ptr, ptr @_ZN4node18ContextEmbedderTag18kNodeContextTagPtrE, align 8
  %.not.i.i.i = icmp eq ptr %i.p, %i.o
  br i1 %.not.i.i.i, label %bb.c, label %_ZN4node11Environment10GetCurrentERKN2v820FunctionCallbackInfoINS1_5ValueEEE.exit, !prof !37

bb.c:                                             ; preds = %_ZN4node18ContextEmbedderTag13IsNodeContextEN2v85LocalINS1_7ContextEEE.exit.i.i
  %i.q = add i64 %i.k, 271
  %i.r = inttoptr i64 %i.q to ptr
  %i.s = load i64, ptr %i.r, align 8
  %i.t = inttoptr i64 %i.s to ptr
  br label %_ZN4node11Environment10GetCurrentERKN2v820FunctionCallbackInfoINS1_5ValueEEE.exit

_ZN4node11Environment10GetCurrentERKN2v820FunctionCallbackInfoINS1_5ValueEEE.exit: ; preds = %bb.a, %bb.b, %_ZN4node18ContextEmbedderTag13IsNodeContextEN2v85LocalINS1_7ContextEEE.exit.i.i, %bb.c
  %.0.i.i = phi ptr [ %i.t, %bb.c ], [ null, %_ZN4node18ContextEmbedderTag13IsNodeContextEN2v85LocalINS1_7ContextEEE.exit.i.i ], [ null, %bb.b ], [ null, %bb.a ] ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = getelementptr inbounds i8, ptr %i.v, i64 -8 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8              ; 2 uses
  %i.y = add i64 %i.x, -1
  %i.z = inttoptr i64 %i.y to ptr
end_hunk_0
