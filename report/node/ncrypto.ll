inline.NumInlined: 3407
inline.NumDeleted: 1384
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZN7ncrypto3KEM11EncapsulateERKNS_13EVPKeyPointerE:bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 0, ptr %i.y, align 8
  call void @CRYPTO_clear_free(ptr noundef nonnull %i.n, i64 noundef %i.m, ptr noundef nonnull @.str, i32 noundef 226) #21
  br label %bb.j

bb.j:                                             ; preds = %_ZN7ncrypto11DataPointerD2Ev.exit5.thread80, %_ZN7ncrypto11DataPointerD2Ev.exit5
  call void @CRYPTO_clear_free(ptr noundef nonnull %i.l, i64 noundef %i.k, ptr noundef nonnull @.str, i32 noundef 226) #21
  br label %_ZN7ncrypto11DataPointerD2Ev.exit7

_ZN7ncrypto11DataPointerD2Ev.exit7:               ; preds = %bb.i, %.thread, %bb.j, %_ZN7ncrypto11DataPointerD2Ev.exit5.thread86, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %_ZN7ncrypto16EVPKeyCtxPointer5resetEP15evp_pkey_ctx_st.exit.i

_ZNK7ncrypto13EVPKeyPointer6newCtxEv.exit.thread: ; preds = %bb.a, %_ZNK7ncrypto13EVPKeyPointer6newCtxEv.exit
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 0, ptr %i.z, align 8
  br label %_ZN7ncrypto18ClearErrorOnReturnD2Ev.exit

_ZN7ncrypto16EVPKeyCtxPointer5resetEP15evp_pkey_ctx_st.exit.i: ; preds = %_ZN7ncrypto11DataPointerD2Ev.exit7, %bb.c
  call void @EVP_PKEY_CTX_free(ptr noundef nonnull %i.d) #21
  br label %_ZN7ncrypto18ClearErrorOnReturnD2Ev.exit

_ZN7ncrypto18ClearErrorOnReturnD2Ev.exit:         ; preds = %_ZNK7ncrypto13EVPKeyPointer6newCtxEv.exit.thread, %_ZN7ncrypto16EVPKeyCtxPointer5resetEP15evp_pkey_ctx_st.exit.i
  call void @ERR_clear_error() #21
  ret void
}

declare i32 @EVP_PKEY_encapsulate_init(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @EVP_PKEY_encapsulate(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN7ncrypto3KEM11DecapsulateERKNS_13EVPKeyPointerERKNS_6BufferIKvEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.ncrypto::DataPointer") align 8 captures(none) initializes((0, 17)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  tail call void @ERR_clear_error() #21
  %i.b = load ptr, ptr %1, align 8, !noalias !400 ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNK7ncrypto13EVPKeyPointer6newCtxEv.exit.thread, label %_ZNK7ncrypto13EVPKeyPointer6newCtxEv.exit

_ZNK7ncrypto13EVPKeyPointer6newCtxEv.exit:        ; preds = %bb.a
  %i.c = tail call ptr @EVP_PKEY_CTX_new(ptr noundef nonnull %i.b, ptr noundef null) #21, !noalias !403 ; 5 uses
  %.not.i.i.not = icmp eq ptr %i.c, null
  br i1 %.not.i.i.not, label %_ZNK7ncrypto13EVPKeyPointer6newCtxEv.exit.thread, label %bb.b

bb.b:                                             ; preds = %_ZNK7ncrypto13EVPKeyPointer6newCtxEv.exit
  %i.d = tail call i32 @EVP_PKEY_decapsulate_init(ptr noundef nonnull %i.c, ptr noundef null) #21
  %i.e = icmp slt i32 %i.d, 1
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br label %_ZN7ncrypto16EVPKeyCtxPointer5resetEP15evp_pkey_ctx_st.exit.i

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i64 0, ptr %i.a, align 8
  %i.f = load ptr, ptr %2, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8
  %i.i = call i32 @EVP_PKEY_decapsulate(ptr noundef nonnull %i.c, ptr noundef null, ptr noundef nonnull %i.a, ptr noundef %i.f, i64 noundef %i.h) #21
  %i.j = icmp slt i32 %i.i, 1
  br i1 %i.j, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br label %_ZN7ncrypto11DataPointerD2Ev.exit

bb.f:                                             ; preds = %bb.d
  %i.k = load i64, ptr %i.a, align 8              ; 3 uses
  %i.l = call noalias ptr @CRYPTO_zalloc(i64 noundef %i.k, ptr noundef nonnull @.str, i32 noundef 142) #21, !noalias !406 ; 4 uses
  %.not = icmp eq ptr %i.l, null
  br i1 %.not, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br label %_ZN7ncrypto11DataPointerD2Ev.exit

bb.h:                                             ; preds = %bb.f
  %i.m = load ptr, ptr %2, align 8
  %i.n = load i64, ptr %i.g, align 8
  %i.o = call i32 @EVP_PKEY_decapsulate(ptr noundef nonnull %i.c, ptr noundef nonnull %i.l, ptr noundef nonnull %i.a, ptr noundef %i.m, i64 noundef %i.n) #21
  %i.p = icmp slt i32 %i.o, 1
  br i1 %i.p, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store ptr %i.l, ptr %0, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.k, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 0, ptr %i.r, align 8
  br label %_ZN7ncrypto11DataPointerD2Ev.exit

bb.j:                                             ; preds = %bb.h
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  call void @CRYPTO_clear_free(ptr noundef nonnull %i.l, i64 noundef %i.k, ptr noundef nonnull @.str, i32 noundef 226) #21
  br label %_ZN7ncrypto11DataPointerD2Ev.exit

_ZN7ncrypto11DataPointerD2Ev.exit:                ; preds = %bb.g, %bb.i, %bb.j, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %_ZN7ncrypto16EVPKeyCtxPointer5resetEP15evp_pkey_ctx_st.exit.i

_ZNK7ncrypto13EVPKeyPointer6newCtxEv.exit.thread: ; preds = %bb.a, %_ZNK7ncrypto13EVPKeyPointer6newCtxEv.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br label %_ZN7ncrypto18ClearErrorOnReturnD2Ev.exit

_ZN7ncrypto16EVPKeyCtxPointer5resetEP15evp_pkey_ctx_st.exit.i: ; preds = %_ZN7ncrypto11DataPointerD2Ev.exit, %bb.c
  call void @EVP_PKEY_CTX_free(ptr noundef nonnull %i.c) #21
  br label %_ZN7ncrypto18ClearErrorOnReturnD2Ev.exit

_ZN7ncrypto18ClearErrorOnReturnD2Ev.exit:         ; preds = %_ZNK7ncrypto13EVPKeyPointer6newCtxEv.exit.thread, %_ZN7ncrypto16EVPKeyCtxPointer5resetEP15evp_pkey_ctx_st.exit.i
  call void @ERR_clear_error() #21
  ret void
}

declare i32 @EVP_PKEY_decapsulate_init(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @EVP_PKEY_decapsulate(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #12

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #12

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #13

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #14

declare void @BN_GENCB_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal noundef range(i32 0, 2) i32 @"_ZZNK7ncrypto13BignumPointer7isPrimeEiSt8functionIFbiiEEEN3$_08__invokeEiiP11bn_gencb_st"(i32 noundef %0, i32 noundef %1, ptr noundef %2) #11 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = tail call ptr @BN_GENCB_get_arg(ptr noundef %2) #21 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 %0, ptr %i.a, align 4
  store i32 %1, ptr %i.b, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %.not.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i, label %bb.b, label %"_ZZNK7ncrypto13BignumPointer7isPrimeEiSt8functionIFbiiEEEN3$_0clEiiP11bn_gencb_st.exit"

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt25__throw_bad_function_callv() #23
  unreachable

"_ZZNK7ncrypto13BignumPointer7isPrimeEiSt8functionIFbiiEEEN3$_0clEiiP11bn_gencb_st.exit": ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = call noundef zeroext i1 %i.g(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b) #21, !inline_history !409
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.i = zext i1 %i.h to i32
  ret i32 %i.i
}

declare ptr @BN_GENCB_get_arg(ptr noundef) local_unnamed_addr #1

; Function Attrs: noreturn
declare void @_ZSt25__throw_bad_function_callv() local_unnamed_addr #12

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal noundef range(i32 0, 2) i32 @"_ZZNK7ncrypto13BignumPointer8generateERKNS0_11PrimeConfigESt8functionIFbiiEEEN3$_08__invokeEiiP11bn_gencb_st"(i32 noundef %0, i32 noundef %1, ptr noundef %2) #11 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = tail call ptr @BN_GENCB_get_arg(ptr noundef %2) #21 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 %0, ptr %i.a, align 4
  store i32 %1, ptr %i.b, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %.not.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i, label %bb.b, label %"_ZZNK7ncrypto13BignumPointer8generateERKNS0_11PrimeConfigESt8functionIFbiiEEEN3$_0clEiiP11bn_gencb_st.exit"

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt25__throw_bad_function_callv() #23
  unreachable

"_ZZNK7ncrypto13BignumPointer8generateERKNS0_11PrimeConfigESt8functionIFbiiEEEN3$_0clEiiP11bn_gencb_st.exit": ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = call noundef zeroext i1 %i.g(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b) #21, !inline_history !410
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.i = zext i1 %i.h to i32
  ret i32 %i.i
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN7ncrypto12_GLOBAL__N_112PrintAltNameERKNS_10BIOPointerEPKcmNS0_13AltNameOptionES5_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr noundef %1, i64 noundef %2, i32 noundef range(i32 0, 2) %3, ptr noundef %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca [6 x i8], align 4                 ; 6 uses
  %i.c = icmp eq i64 %2, 0
  br i1 %i.c, label %_ZN7ncrypto12_GLOBAL__N_113IsSafeAltNameEPKcmNS0_13AltNameOptionE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %.not.i = icmp eq i32 %3, 0                     ; 2 uses
  br i1 %.not.i, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i, %bb.c
  %.02021.us.i = phi i64 [ %i.g, %bb.c ], [ 0, %.lr.ph.i ] ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 %.02021.us.i
  %i.e = load i8, ptr %i.d, align 1               ; 2 uses
  switch i8 %i.e, label %bb.b [
    i8 34, label %.loopexit
    i8 92, label %.loopexit
    i8 44, label %.loopexit
    i8 39, label %.loopexit
  ]

bb.b:                                             ; preds = %.lr.ph.split.us.i
  %i.f = add i8 %i.e, -127
  %or.cond5.us.i = icmp ult i8 %i.f, -95
  br i1 %or.cond5.us.i, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = add nuw i64 %.02021.us.i, 1              ; 2 uses
  %exitcond43.not.i = icmp eq i64 %i.g, %2
  br i1 %exitcond43.not.i, label %_ZN7ncrypto12_GLOBAL__N_113IsSafeAltNameEPKcmNS0_13AltNameOptionE.exit, label %.lr.ph.split.us.i, !llvm.loop !411

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %bb.e
  %.02021.i = phi i64 [ %i.l, %bb.e ], [ 0, %.lr.ph.i ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 %.02021.i
  %i.i = load i8, ptr %i.h, align 1               ; 3 uses
  switch i8 %i.i, label %bb.d [
    i8 34, label %.loopexit
    i8 92, label %.loopexit
    i8 44, label %.loopexit
    i8 39, label %.loopexit
  ]

bb.d:                                             ; preds = %.lr.ph.split.i
  %i.j = icmp ult i8 %i.i, 32
  %i.k = icmp eq i8 %i.i, 127
  %or.cond.i = or i1 %i.j, %i.k
  br i1 %or.cond.i, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = add nuw i64 %.02021.i, 1                 ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.l, %2
  br i1 %exitcond.not.i, label %_ZN7ncrypto12_GLOBAL__N_113IsSafeAltNameEPKcmNS0_13AltNameOptionE.exit, label %.lr.ph.split.i, !llvm.loop !411

_ZN7ncrypto12_GLOBAL__N_113IsSafeAltNameEPKcmNS0_13AltNameOptionE.exit: ; preds = %bb.e, %bb.c, %bb.a
  %.not32 = icmp eq ptr %4, null
  br i1 %.not32, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN7ncrypto12_GLOBAL__N_113IsSafeAltNameEPKcmNS0_13AltNameOptionE.exit
  %i.m = load ptr, ptr %0, align 8
  %i.n = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.m, ptr noundef nonnull @.str.120, ptr noundef nonnull %4) #21 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZN7ncrypto12_GLOBAL__N_113IsSafeAltNameEPKcmNS0_13AltNameOptionE.exit
  %i.o = load ptr, ptr %0, align 8
  %i.p = trunc i64 %2 to i32
  %i.q = tail call i32 @BIO_write(ptr noundef %i.o, ptr noundef %1, i32 noundef %i.p) #21 ; 0 uses
  br label %bb.r

.loopexit:                                        ; preds = %.lr.ph.split.i, %.lr.ph.split.i, %.lr.ph.split.i, %.lr.ph.split.i, %bb.d, %bb.b, %.lr.ph.split.us.i, %.lr.ph.split.us.i, %.lr.ph.split.us.i, %.lr.ph.split.us.i
  %i.r = load ptr, ptr %0, align 8
  %i.s = tail call i32 @BIO_write(ptr noundef %i.r, ptr noundef nonnull @.str.121, i32 noundef 1) #21 ; 0 uses
  %.not = icmp eq ptr %4, null
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.loopexit
  %i.t = load ptr, ptr %0, align 8
  %i.u = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.t, ptr noundef nonnull @.str.120, ptr noundef nonnull %4) #21 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.loopexit
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 5
  br label %bb.k

bb.j:                                             ; preds = %bb.q
  %i.x = load ptr, ptr %0, align 8
  %i.y = call i32 @BIO_write(ptr noundef %i.x, ptr noundef nonnull @.str.121, i32 noundef 1) #21 ; 0 uses
  br label %bb.r

bb.k:                                             ; preds = %bb.i, %bb.q
  %.036 = phi i64 [ 0, %bb.i ], [ %i.au, %bb.q ]  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 %.036
  %i.aa = load i8, ptr %i.z, align 1              ; 7 uses
  store i8 %i.aa, ptr %i.a, align 1
  switch i8 %i.aa, label %bb.n [
    i8 92, label %bb.l
    i8 34, label %bb.m
  ]

bb.l:                                             ; preds = %bb.k
  %i.ab = load ptr, ptr %0, align 8
  %i.ac = call i32 @BIO_write(ptr noundef %i.ab, ptr noundef nonnull @.str.122, i32 noundef 2) #21 ; 0 uses
  br label %bb.q

bb.m:                                             ; preds = %bb.k
  %i.ad = load ptr, ptr %0, align 8
  %i.ae = call i32 @BIO_write(ptr noundef %i.ad, ptr noundef nonnull @.str.123, i32 noundef 2) #21 ; 0 uses
  br label %bb.q

bb.n:                                             ; preds = %bb.k
  %i.af = icmp eq i8 %i.aa, 44
  %i.ag = add i8 %i.aa, -127
  %i.ah = icmp ult i8 %i.ag, -95
  %or.cond5.not40 = or i1 %i.af, %i.ah
  %.not31 = icmp sgt i8 %i.aa, -1
  %or.cond = or i1 %.not.i, %.not31
  %or.cond37 = and i1 %or.cond5.not40, %or.cond
  br i1 %or.cond37, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ai = load ptr, ptr %0, align 8
  %i.aj = call i32 @BIO_write(ptr noundef %i.ai, ptr noundef nonnull %i.a, i32 noundef 1) #21 ; 0 uses
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  store <4 x i8> <i8 92, i8 117, i8 48, i8 48>, ptr %i.b, align 4
  %i.ak = lshr i8 %i.aa, 4
  %i.al = zext nneg i8 %i.ak to i64
  %i.am = getelementptr inbounds nuw i8, ptr @__const._ZN7ncrypto12_GLOBAL__N_112PrintAltNameERKNS_10BIOPointerEPKcmNS0_13AltNameOptionES5_.hex, i64 %i.al
  %i.an = load i8, ptr %i.am, align 1
  store i8 %i.an, ptr %i.v, align 4
  %i.ao = and i8 %i.aa, 15
  %i.ap = zext nneg i8 %i.ao to i64
  %i.aq = getelementptr inbounds nuw i8, ptr @__const._ZN7ncrypto12_GLOBAL__N_112PrintAltNameERKNS_10BIOPointerEPKcmNS0_13AltNameOptionES5_.hex, i64 %i.ap
  %i.ar = load i8, ptr %i.aq, align 1
  store i8 %i.ar, ptr %i.w, align 1
  %i.as = load ptr, ptr %0, align 8
  %i.at = call i32 @BIO_write(ptr noundef %i.as, ptr noundef nonnull %i.b, i32 noundef 6) #21 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  br label %bb.q

bb.q:                                             ; preds = %bb.m, %bb.p, %bb.o, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %i.au = add nuw i64 %.036, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.au, %2
  br i1 %exitcond.not, label %bb.j, label %bb.k, !llvm.loop !412

bb.r:                                             ; preds = %bb.j, %bb.g
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @tolower(i32 noundef) local_unnamed_addr #15

declare void @EVP_MAC_free(ptr noundef) local_unnamed_addr #1

declare void @EVP_MAC_CTX_free(ptr noundef) local_unnamed_addr #1

declare void @BIO_free_all(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9_M_insertIJRA256_cEEEvSt14_List_iteratorIS5_EDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(256) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #24 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  store ptr %i.c, ptr %i.b, align 8
  %i.d = tail call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(256) %2) #21 ; 8 uses
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %bb.b, label %._crit_edge.i.i.i.i

bb.b:                                             ; preds = %bb.a
  %i.f = icmp slt i64 %i.d, 0
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.100) #23
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.g = add nuw i64 %i.d, 1                      ; 2 uses
  %i.h = icmp slt i64 %i.g, 0
  br i1 %i.h, label %bb.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i, !prof !7

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt17__throw_bad_allocv() #23
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i: ; preds = %bb.d
  %i.i = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #24 ; 2 uses
  store ptr %i.i, ptr %i.b, align 8
  store i64 %i.d, ptr %i.c, align 8
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i, %bb.a
  %i.j = phi ptr [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i ], [ %i.c, %bb.a ] ; 3 uses
  switch i64 %i.d, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE14_M_create_nodeIJRA256_cEEEPSt10_List_nodeIS5_EDpOT_.exit
  ]

bb.f:                                             ; preds = %._crit_edge.i.i.i.i
  %i.k = load i8, ptr %2, align 1
  store i8 %i.k, ptr %i.j, align 1
  br label %_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE14_M_create_nodeIJRA256_cEEEPSt10_List_nodeIS5_EDpOT_.exit

bb.g:                                             ; preds = %._crit_edge.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.j, ptr nonnull align 1 dereferenceable(256) %2, i64 %i.d, i1 false)
  br label %_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE14_M_create_nodeIJRA256_cEEEPSt10_List_nodeIS5_EDpOT_.exit

_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE14_M_create_nodeIJRA256_cEEEPSt10_List_nodeIS5_EDpOT_.exit: ; preds = %._crit_edge.i.i.i.i, %bb.f, %bb.g
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %i.d, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.d
  store i8 0, ptr %i.m, align 1
  tail call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef %1) #21
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8
  %i.p = add i64 %i.o, 1
  store i64 %i.p, ptr %i.n, align 8
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) local_unnamed_addr #16

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9_M_insertIJRKS5_EEEvSt14_List_iteratorIS5_EDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #24 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  store ptr %i.c, ptr %i.b, align 8
  %i.d = load ptr, ptr %2, align 8                ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load i64, ptr %i.e, align 8              ; 8 uses
  %i.g = icmp ugt i64 %i.f, 15
  br i1 %i.g, label %bb.b, label %._crit_edge.i.i.i.i

bb.b:                                             ; preds = %bb.a
  %i.h = icmp slt i64 %i.f, 0
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.100) #23
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.i = add nuw i64 %i.f, 1                      ; 2 uses
  %i.j = icmp slt i64 %i.i, 0
  br i1 %i.j, label %bb.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i, !prof !7

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt17__throw_bad_allocv() #23
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i: ; preds = %bb.d
  %i.k = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.i) #24 ; 2 uses
  store ptr %i.k, ptr %i.b, align 8
  store i64 %i.f, ptr %i.c, align 8
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i, %bb.a
  %i.l = phi ptr [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i ], [ %i.c, %bb.a ] ; 3 uses
  switch i64 %i.f, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE14_M_create_nodeIJRKS5_EEEPSt10_List_nodeIS5_EDpOT_.exit
  ]

bb.f:                                             ; preds = %._crit_edge.i.i.i.i
  %i.m = load i8, ptr %i.d, align 1
  store i8 %i.m, ptr %i.l, align 1
  br label %_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE14_M_create_nodeIJRKS5_EEEPSt10_List_nodeIS5_EDpOT_.exit

bb.g:                                             ; preds = %._crit_edge.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.l, ptr align 1 %i.d, i64 %i.f, i1 false)
  br label %_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE14_M_create_nodeIJRKS5_EEEPSt10_List_nodeIS5_EDpOT_.exit

_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE14_M_create_nodeIJRKS5_EEEPSt10_List_nodeIS5_EDpOT_.exit: ; preds = %._crit_edge.i.i.i.i, %bb.f, %bb.g
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %i.f, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.f
  store i8 0, ptr %i.o, align 1
  tail call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef %1) #21
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8
  %i.r = add i64 %i.q, 1
  store i64 %i.r, ptr %i.p, align 8
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt8__detail15_List_node_base9_M_unhookEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #16

declare void @BN_clear_free(ptr noundef) local_unnamed_addr #1

declare void @BN_CTX_free(ptr noundef) local_unnamed_addr #1

declare void @NETSCAPE_SPKI_free(ptr noundef) local_unnamed_addr #1

declare void @X509_free(ptr noundef) local_unnamed_addr #1

declare void @EVP_PKEY_free(ptr noundef) local_unnamed_addr #1

declare void @ASN1_OBJECT_free(ptr noundef) #1

declare void @X509_STORE_CTX_free(ptr noundef) local_unnamed_addr #1

declare void @DH_free(ptr noundef) local_unnamed_addr #1

declare void @OSSL_LIB_CTX_free(ptr noundef) local_unnamed_addr #1

declare void @EVP_KDF_free(ptr noundef) local_unnamed_addr #1

declare void @EVP_KDF_CTX_free(ptr noundef) local_unnamed_addr #1

declare i32 @PEM_bytes_read_bio(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @d2i_X509(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @PKCS8_PRIV_KEY_INFO_free(ptr noundef) local_unnamed_addr #1

declare void @SSL_free(ptr noundef) local_unnamed_addr #1

declare void @SSL_CTX_free(ptr noundef) local_unnamed_addr #1

declare void @EVP_CIPHER_CTX_free(ptr noundef) local_unnamed_addr #1

declare void @ECDSA_SIG_free(ptr noundef) local_unnamed_addr #1

declare void @EC_GROUP_free(ptr noundef) local_unnamed_addr #1

declare void @EC_POINT_free(ptr noundef) local_unnamed_addr #1
end_hunk_0
