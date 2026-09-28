Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/crypto_aes?download=true
inline.NumInlined: 2274
inline.NumDeleted: 1008
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZN4node6crypto15AESCipherTraits16AdditionalConfigENS0_13CryptoJobModeERKN2v820FunctionCallbackInfoINS3_5ValueEEEjNS0_19WebCryptoCipherModeEPNS0_15AESCipherConfigE:bb.a
  %i.hq = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.hr = load i64, ptr %i.hq, align 8, !noalias !72
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hp, i64 %i.hr
  %.0.i.i7.i = select i1 %i.hn, ptr %7, ptr %i.hs
  call void @_ZN4node6crypto10ByteSource7ForeignEPKvm(ptr dead_on_unwind nonnull writable sret(%"class.node::crypto::ByteSource") align 8 %8, ptr noundef %.0.i.i7.i, i64 noundef %i.gz) #25
  br label %_ZN4node6crypto12_GLOBAL__N_122ValidateAdditionalDataEPNS_11EnvironmentENS0_13CryptoJobModeEN2v85LocalINS5_5ValueEEEPNS0_15AESCipherConfigE.exit.thread134

_ZN4node6crypto12_GLOBAL__N_122ValidateAdditionalDataEPNS_11EnvironmentENS0_13CryptoJobModeEN2v85LocalINS5_5ValueEEEPNS0_15AESCipherConfigE.exit.thread134: ; preds = %bb.bd, %bb.be, %bb.bf
  %i.ht = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.hu = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN4node6crypto10ByteSourceaSEOS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.ht, ptr noundef nonnull align 8 dereferenceable(24) %8) #25 ; 0 uses
  call void @_ZN4node6crypto10ByteSourceD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %_ZN4node6crypto12_GLOBAL__N_115ValidateCounterEPNS_11EnvironmentEN2v85LocalINS4_5ValueEEEPNS0_15AESCipherConfigE.exit.thread

_ZN4node6crypto12_GLOBAL__N_122ValidateAdditionalDataEPNS_11EnvironmentENS0_13CryptoJobModeEN2v85LocalINS5_5ValueEEEPNS0_15AESCipherConfigE.exit: ; preds = %_ZN4node6crypto17IsAnyBufferSourceEN2v85LocalINS1_5ValueEEE.exit.thread.i75
  call void @_ZN4node22THROW_ERR_OUT_OF_RANGEIJEEEvPNS_11EnvironmentESt17basic_string_viewIcSt11char_traitsIcEEDpOT_(ptr noundef %.0.i.i, i64 25, ptr nonnull @.str.73)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %_ZN4node6crypto12_GLOBAL__N_115ValidateAuthTagEPNS_11EnvironmentENS0_13CryptoJobModeENS0_19WebCryptoCipherModeEN2v85LocalINS6_5ValueEEEPNS0_15AESCipherConfigE.exit.thread

bb.bg:                                            ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @_ZN4node6crypto10ByteSource7ForeignEPKvm(ptr dead_on_unwind nonnull writable sret(%"class.node::crypto::ByteSource") align 8 %5, ptr noundef nonnull @.str.74, i64 noundef 8) #25
  %i.hv = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.hw = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN4node6crypto10ByteSourceaSEOS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.hv, ptr noundef nonnull align 8 dereferenceable(24) %5) #25 ; 0 uses
  call void @_ZN4node6crypto10ByteSourceD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %_ZN4node6crypto12_GLOBAL__N_115ValidateCounterEPNS_11EnvironmentEN2v85LocalINS4_5ValueEEEPNS0_15AESCipherConfigE.exit.thread

_ZN4node6crypto12_GLOBAL__N_115ValidateCounterEPNS_11EnvironmentEN2v85LocalINS4_5ValueEEEPNS0_15AESCipherConfigE.exit.thread: ; preds = %_ZN4node6crypto17IsAnyBufferSourceEN2v85LocalINS1_5ValueEEE.exit.i73, %bb.ab, %_ZN4node6crypto12_GLOBAL__N_122ValidateAdditionalDataEPNS_11EnvironmentENS0_13CryptoJobModeEN2v85LocalINS5_5ValueEEEPNS0_15AESCipherConfigE.exit.thread134, %bb.ae, %bb.bg
  %i.hx = call noundef zeroext i1 @_ZNK7ncrypto6Cipher9isOcbModeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.be) #25
  %i.hy = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.hz = load i64, ptr %i.hy, align 8            ; 2 uses
  br i1 %i.hx, label %bb.bh, label %bb.bj

bb.bh:                                            ; preds = %_ZN4node6crypto12_GLOBAL__N_115ValidateCounterEPNS_11EnvironmentEN2v85LocalINS4_5ValueEEEPNS0_15AESCipherConfigE.exit.thread
  %i.ia = add i64 %i.hz, -16
  %or.cond = icmp ult i64 %i.ia, -15
  br i1 %or.cond, label %bb.bi, label %_ZN4node6crypto12_GLOBAL__N_115ValidateAuthTagEPNS_11EnvironmentENS0_13CryptoJobModeENS0_19WebCryptoCipherModeEN2v85LocalINS6_5ValueEEEPNS0_15AESCipherConfigE.exit.thread

bb.bi:                                            ; preds = %bb.bh
  %i.ib = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 200
  %i.ic = load ptr, ptr %i.ib, align 8            ; 2 uses
  %i.id = call ptr @_ZN4node21ERR_CRYPTO_INVALID_IVIJEEEN2v85LocalINS1_6ObjectEEEPNS1_7IsolateESt17basic_string_viewIcSt11char_traitsIcEEDpOT_(ptr noundef %i.ic, i64 29, ptr nonnull @.str.75)
  %i.ie = call ptr @_ZN2v87Isolate14ThrowExceptionENS_5LocalINS_5ValueEEE(ptr noundef nonnull align 1 dereferenceable(1) %i.ic, ptr %i.id) #25 ; 0 uses
  br label %_ZN4node6crypto12_GLOBAL__N_115ValidateAuthTagEPNS_11EnvironmentENS0_13CryptoJobModeENS0_19WebCryptoCipherModeEN2v85LocalINS6_5ValueEEEPNS0_15AESCipherConfigE.exit.thread

bb.bj:                                            ; preds = %_ZN4node6crypto12_GLOBAL__N_115ValidateCounterEPNS_11EnvironmentEN2v85LocalINS4_5ValueEEEPNS0_15AESCipherConfigE.exit.thread
  %i.if = call noundef i32 @_ZNK7ncrypto6Cipher11getIvLengthEv(ptr noundef nonnull align 8 dereferenceable(8) %i.be) #25
  %i.ig = sext i32 %i.if to i64
  %i.ih = icmp ult i64 %i.hz, %i.ig
  br i1 %i.ih, label %bb.bk, label %_ZN4node6crypto12_GLOBAL__N_115ValidateAuthTagEPNS_11EnvironmentENS0_13CryptoJobModeENS0_19WebCryptoCipherModeEN2v85LocalINS6_5ValueEEEPNS0_15AESCipherConfigE.exit.thread

bb.bk:                                            ; preds = %bb.bj
  %i.ii = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 200
  %i.ij = load ptr, ptr %i.ii, align 8            ; 2 uses
  %i.ik = call ptr @_ZN4node21ERR_CRYPTO_INVALID_IVIJEEEN2v85LocalINS1_6ObjectEEEPNS1_7IsolateESt17basic_string_viewIcSt11char_traitsIcEEDpOT_(ptr noundef %i.ij, i64 29, ptr nonnull @.str.75)
  %i.il = call ptr @_ZN2v87Isolate14ThrowExceptionENS_5LocalINS_5ValueEEE(ptr noundef nonnull align 1 dereferenceable(1) %i.ij, ptr %i.ik) #25 ; 0 uses
  br label %_ZN4node6crypto12_GLOBAL__N_115ValidateAuthTagEPNS_11EnvironmentENS0_13CryptoJobModeENS0_19WebCryptoCipherModeEN2v85LocalINS6_5ValueEEEPNS0_15AESCipherConfigE.exit.thread

_ZN4node6crypto12_GLOBAL__N_115ValidateAuthTagEPNS_11EnvironmentENS0_13CryptoJobModeENS0_19WebCryptoCipherModeEN2v85LocalINS6_5ValueEEEPNS0_15AESCipherConfigE.exit.thread: ; preds = %bb.bh, %bb.av, %bb.al, %bb.at, %.thread.i, %bb.bj, %_ZN4node6crypto12_GLOBAL__N_122ValidateAdditionalDataEPNS_11EnvironmentENS0_13CryptoJobModeEN2v85LocalINS5_5ValueEEEPNS0_15AESCipherConfigE.exit, %bb.bk, %bb.bi, %bb.ac, %bb.u, %bb.j
  %.sroa.060.0 = phi i8 [ 0, %bb.bi ], [ 1, %bb.bh ], [ 0, %bb.bk ], [ 0, %bb.ac ], [ 0, %bb.j ], [ 0, %bb.u ], [ 0, %_ZN4node6crypto12_GLOBAL__N_122ValidateAdditionalDataEPNS_11EnvironmentENS0_13CryptoJobModeEN2v85LocalINS5_5ValueEEEPNS0_15AESCipherConfigE.exit ], [ 1, %bb.bj ], [ 0, %.thread.i ], [ 0, %bb.at ], [ 0, %bb.al ], [ 0, %bb.av ]
  ret i8 %.sroa.060.0
}

declare noundef zeroext i1 @_ZNK2v85Value8IsUint32Ev(ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #6

declare void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #6

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #7

declare noundef i32 @_ZNK2v86Uint325ValueEv(ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #6

declare noundef zeroext i1 @_ZNK7ncrypto6Cipher10isWrapModeEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #6

declare noundef zeroext i1 @_ZNK7ncrypto6Cipher9isCtrModeEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #6

declare noundef zeroext i1 @_ZNK7ncrypto6Cipher9isGcmModeEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #6

declare noundef zeroext i1 @_ZNK7ncrypto6Cipher9isOcbModeEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #6

declare noundef i32 @_ZNK7ncrypto6Cipher11getIvLengthEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef range(i32 0, 3) i32 @_ZN4node6crypto15AESCipherTraits8DoCipherEPNS_11EnvironmentERKNS0_13KeyObjectDataENS0_19WebCryptoCipherModeERKNS0_15AESCipherConfigERKNS0_10ByteSourceEPSB_(ptr nofree readnone captures(none) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(104) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %4, ptr noundef %5) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.b = load i32, ptr %i.a, align 4
  switch i32 %i.b, label %bb.q [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 3, label %bb.e
    i32 4, label %bb.f
    i32 5, label %bb.g
    i32 6, label %bb.h
    i32 7, label %bb.i
    i32 8, label %bb.j
    i32 9, label %bb.k
    i32 10, label %bb.l
    i32 11, label %bb.m
    i32 12, label %bb.n
    i32 13, label %bb.o
    i32 14, label %bb.p
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = tail call fastcc noundef i32 @_ZN4node6crypto12_GLOBAL__N_114AES_CTR_CipherEPNS_11EnvironmentERKNS0_13KeyObjectDataENS0_19WebCryptoCipherModeERKNS0_15AESCipherConfigERKNS0_10ByteSourceEPSB_(ptr noundef nonnull align 8 dereferenceable(48) %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(104) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef %5)
  br label %bb.r

bb.c:                                             ; preds = %bb.a
  %i.d = tail call fastcc noundef i32 @_ZN4node6crypto12_GLOBAL__N_114AES_CTR_CipherEPNS_11EnvironmentERKNS0_13KeyObjectDataENS0_19WebCryptoCipherModeERKNS0_15AESCipherConfigERKNS0_10ByteSourceEPSB_(ptr noundef nonnull align 8 dereferenceable(48) %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(104) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef %5)
  br label %bb.r

bb.d:                                             ; preds = %bb.a
  %i.e = tail call fastcc noundef i32 @_ZN4node6crypto12_GLOBAL__N_114AES_CTR_CipherEPNS_11EnvironmentERKNS0_13KeyObjectDataENS0_19WebCryptoCipherModeERKNS0_15AESCipherConfigERKNS0_10ByteSourceEPSB_(ptr noundef nonnull align 8 dereferenceable(48) %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(104) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef %5)
  br label %bb.r

bb.e:                                             ; preds = %bb.a
  %i.f = tail call fastcc noundef i32 @_ZN4node6crypto12_GLOBAL__N_110AES_CipherEPNS_11EnvironmentERKNS0_13KeyObjectDataENS0_19WebCryptoCipherModeERKNS0_15AESCipherConfigERKNS0_10ByteSourceEPSB_(ptr noundef nonnull align 8 dereferenceable(48) %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(104) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef %5)
  br label %bb.r

bb.f:                                             ; preds = %bb.a
  %i.g = tail call fastcc noundef i32 @_ZN4node6crypto12_GLOBAL__N_110AES_CipherEPNS_11EnvironmentERKNS0_13KeyObjectDataENS0_19WebCryptoCipherModeERKNS0_15AESCipherConfigERKNS0_10ByteSourceEPSB_(ptr noundef nonnull align 8 dereferenceable(48) %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(104) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef %5)
  br label %bb.r

bb.g:                                             ; preds = %bb.a
  %i.h = tail call fastcc noundef i32 @_ZN4node6crypto12_GLOBAL__N_110AES_CipherEPNS_11EnvironmentERKNS0_13KeyObjectDataENS0_19WebCryptoCipherModeERKNS0_15AESCipherConfigERKNS0_10ByteSourceEPSB_(ptr noundef nonnull align 8 dereferenceable(48) %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(104) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef %5)
  br label %bb.r

bb.h:                                             ; preds = %bb.a
  %i.i = tail call fastcc noundef i32 @_ZN4node6crypto12_GLOBAL__N_110AES_CipherEPNS_11EnvironmentERKNS0_13KeyObjectDataENS0_19WebCryptoCipherModeERKNS0_15AESCipherConfigERKNS0_10ByteSourceEPSB_(ptr noundef nonnull align 8 dereferenceable(48) %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(104) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef %5)
  br label %bb.r

bb.i:                                             ; preds = %bb.a
  %i.j = tail call fastcc noundef i32 @_ZN4node6crypto12_GLOBAL__N_110AES_CipherEPNS_11EnvironmentERKNS0_13KeyObjectDataENS0_19WebCryptoCipherModeERKNS0_15AESCipherConfigERKNS0_10ByteSourceEPSB_(ptr noundef nonnull align 8 dereferenceable(48) %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(104) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef %5)
  br label %bb.r

bb.j:                                             ; preds = %bb.a
  %i.k = tail call fastcc noundef i32 @_ZN4node6crypto12_GLOBAL__N_110AES_CipherEPNS_11EnvironmentERKNS0_13KeyObjectDataENS0_19WebCryptoCipherModeERKNS0_15AESCipherConfigERKNS0_10ByteSourceEPSB_(ptr noundef nonnull align 8 dereferenceable(48) %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(104) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef %5)
  br label %bb.r

bb.k:                                             ; preds = %bb.a
  %i.l = tail call fastcc noundef i32 @_ZN4node6crypto12_GLOBAL__N_110AES_CipherEPNS_11EnvironmentERKNS0_13KeyObjectDataENS0_19WebCryptoCipherModeERKNS0_15AESCipherConfigERKNS0_10ByteSourceEPSB_(ptr noundef nonnull align 8 dereferenceable(48) %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(104) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef %5)
  br label %bb.r

bb.l:                                             ; preds = %bb.a
  %i.m = tail call fastcc noundef i32 @_ZN4node6crypto12_GLOBAL__N_110AES_CipherEPNS_11EnvironmentERKNS0_13KeyObjectDataENS0_19WebCryptoCipherModeERKNS0_15AESCipherConfigERKNS0_10ByteSourceEPSB_(ptr noundef nonnull align 8 dereferenceable(48) %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(104) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef %5)
  br label %bb.r

bb.m:                                             ; preds = %bb.a
  %i.n = tail call fastcc noundef i32 @_ZN4node6crypto12_GLOBAL__N_110AES_CipherEPNS_11EnvironmentERKNS0_13KeyObjectDataENS0_19WebCryptoCipherModeERKNS0_15AESCipherConfigERKNS0_10ByteSourceEPSB_(ptr noundef nonnull align 8 dereferenceable(48) %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(104) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef %5)
  br label %bb.r

bb.n:                                             ; preds = %bb.a
  %i.o = tail call fastcc noundef i32 @_ZN4node6crypto12_GLOBAL__N_110AES_CipherEPNS_11EnvironmentERKNS0_13KeyObjectDataENS0_19WebCryptoCipherModeERKNS0_15AESCipherConfigERKNS0_10ByteSourceEPSB_(ptr noundef nonnull align 8 dereferenceable(48) %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(104) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef %5)
  br label %bb.r

bb.o:                                             ; preds = %bb.a
  %i.p = tail call fastcc noundef i32 @_ZN4node6crypto12_GLOBAL__N_110AES_CipherEPNS_11EnvironmentERKNS0_13KeyObjectDataENS0_19WebCryptoCipherModeERKNS0_15AESCipherConfigERKNS0_10ByteSourceEPSB_(ptr noundef nonnull align 8 dereferenceable(48) %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(104) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef %5)
  br label %bb.r

bb.p:                                             ; preds = %bb.a
  %i.q = tail call fastcc noundef i32 @_ZN4node6crypto12_GLOBAL__N_110AES_CipherEPNS_11EnvironmentERKNS0_13KeyObjectDataENS0_19WebCryptoCipherModeERKNS0_15AESCipherConfigERKNS0_10ByteSourceEPSB_(ptr noundef nonnull align 8 dereferenceable(48) %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(104) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef %5)
  br label %bb.r

bb.q:                                             ; preds = %bb.a
  tail call void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4node6crypto15AESCipherTraits8DoCipherEPNS_11EnvironmentERKNS0_13KeyObjectDataENS0_19WebCryptoCipherModeERKNS0_15AESCipherConfigERKNS0_10ByteSourceEPSB_E20error_and_abort_args) #25
  tail call void @abort() #26
  unreachable

bb.r:                                             ; preds = %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.0 = phi i32 [ %i.c, %bb.b ], [ %i.d, %bb.c ], [ %i.e, %bb.d ], [ %i.f, %bb.e ], [ %i.g, %bb.f ], [ %i.h, %bb.g ], [ %i.i, %bb.h ], [ %i.j, %bb.i ], [ %i.k, %bb.j ], [ %i.l, %bb.k ], [ %i.m, %bb.l ], [ %i.n, %bb.m ], [ %i.o, %bb.n ], [ %i.p, %bb.o ], [ %i.q, %bb.p ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef range(i32 0, 3) i32 @_ZN4node6crypto12_GLOBAL__N_114AES_CTR_CipherEPNS_11EnvironmentERKNS0_13KeyObjectDataENS0_19WebCryptoCipherModeERKNS0_15AESCipherConfigERKNS0_10ByteSourceEPSB_(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(104) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %3, ptr noundef %4) unnamed_addr #0 {
bb.a:
  %5 = alloca %"class.ncrypto::BignumPointer", align 8 ; 7 uses
  %6 = alloca %"class.ncrypto::BignumPointer", align 8 ; 6 uses
  %7 = alloca %"class.ncrypto::BignumPointer", align 8 ; 7 uses
  %8 = alloca %"class.ncrypto::BignumPointer", align 8 ; 7 uses
  %9 = alloca %"class.ncrypto::DataPointer", align 8 ; 9 uses
  %10 = alloca %"class.node::crypto::ByteSource", align 8 ; 5 uses
  %11 = alloca %"class.node::crypto::ByteSource", align 8 ; 5 uses
  %12 = alloca %"class.std::vector.511", align 8  ; 5 uses
  %13 = alloca %"class.node::crypto::ByteSource", align 8 ; 5 uses
  %14 = alloca %"class.node::crypto::ByteSource", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8
  call void @_ZN7ncrypto13BignumPointer9NewLShiftEm(ptr dead_on_unwind nonnull writable sret(%"class.ncrypto::BignumPointer") align 8 %5, i64 noundef %i.b) #25
  %i.c = load ptr, ptr %5, align 8
  %.not.i.i.not = icmp eq ptr %i.c, null
  br i1 %.not.i.i.not, label %bb.s, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  %i.d = load i64, ptr %i.a, align 8, !noalias !75 ; 3 uses
  %i.e = trunc i64 %i.d to i32
  %i.f = and i32 %i.e, 7                          ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !noalias !75 ; 2 uses
  %i.i = icmp eq i32 %i.f, 0
  br i1 %i.i, label %bb.c, label %_ZN4node6crypto12_GLOBAL__N_17CeilDivImEET_S3_S3_.exit.i

bb.c:                                             ; preds = %bb.b
  %i.j = lshr i64 %i.d, 3
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.l = load i64, ptr %i.k, align 8, !noalias !75
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.l
  %i.n = and i64 %i.j, 4294967295                 ; 2 uses
  %i.o = sub nsw i64 0, %i.n
  %i.p = getelementptr inbounds i8, ptr %i.m, i64 %i.o
  call void @_ZN7ncrypto13BignumPointerC1EPKhm(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %i.p, i64 noundef %i.n) #25
  br label %_ZN4node6crypto12_GLOBAL__N_110GetCounterERKNS0_15AESCipherConfigE.exit

_ZN4node6crypto12_GLOBAL__N_17CeilDivImEET_S3_S3_.exit.i: ; preds = %bb.b
  %i.q = add i64 %i.d, 34359738367
  %i.r = lshr i64 %i.q, 3
  %i.s = add nuw nsw i64 %i.r, 1
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.u = load i64, ptr %i.t, align 8, !noalias !75
  %i.v = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.u
  %i.w = and i64 %i.s, 4294967295                 ; 6 uses
  %i.x = sub nsw i64 0, %i.w
  %i.y = getelementptr inbounds i8, ptr %i.v, i64 %i.x ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.w, 0
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIhSaIhEED2Ev.exit.i, label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i

_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i: ; preds = %_ZN4node6crypto12_GLOBAL__N_17CeilDivImEET_S3_S3_.exit.i
  %i.z = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #27, !noalias !75 ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.w ; 2 uses
  %.not.i = icmp eq i64 %i.w, 1
  br i1 %.not.i, label %bb.e, label %bb.d, !prof !34

bb.d:                                             ; preds = %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.z, ptr nonnull align 1 %i.y, i64 %i.w, i1 false), !noalias !75
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit.i

bb.e:                                             ; preds = %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i
  %i.ab = load i8, ptr %i.y, align 1, !noalias !75
  store i8 %i.ab, ptr %i.z, align 1, !noalias !75
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit.i

_ZNSt6vectorIhSaIhEED2Ev.exit.i:                  ; preds = %bb.e, %bb.d, %_ZN4node6crypto12_GLOBAL__N_17CeilDivImEET_S3_S3_.exit.i
  %.sroa.10.0.i = phi ptr [ %i.aa, %bb.e ], [ %i.aa, %bb.d ], [ null, %_ZN4node6crypto12_GLOBAL__N_17CeilDivImEET_S3_S3_.exit.i ]
  %.sroa.015.0.i = phi ptr [ %i.z, %bb.e ], [ %i.z, %bb.d ], [ null, %_ZN4node6crypto12_GLOBAL__N_17CeilDivImEET_S3_S3_.exit.i ] ; 5 uses
  %i.ac = shl nuw nsw i32 255, %i.f
  %i.ad = load i8, ptr %.sroa.015.0.i, align 1, !noalias !75
  %i.ae = trunc i32 %i.ac to i8
  %i.af = xor i8 %i.ae, -1
  %i.ag = and i8 %i.ad, %i.af
  store i8 %i.ag, ptr %.sroa.015.0.i, align 1, !noalias !75
  %i.ah = ptrtoint ptr %.sroa.10.0.i to i64
  %i.ai = ptrtoint ptr %.sroa.015.0.i to i64
  %i.aj = sub i64 %i.ah, %i.ai                    ; 2 uses
  call void @_ZN7ncrypto13BignumPointerC1EPKhm(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull %.sroa.015.0.i, i64 noundef %i.aj) #25
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.015.0.i, i64 noundef %i.aj) #28
  br label %_ZN4node6crypto12_GLOBAL__N_110GetCounterERKNS0_15AESCipherConfigE.exit

_ZN4node6crypto12_GLOBAL__N_110GetCounterERKNS0_15AESCipherConfigE.exit: ; preds = %bb.c, %_ZNSt6vectorIhSaIhEED2Ev.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  call void @_ZN7ncrypto13BignumPointer3NewEv(ptr dead_on_unwind nonnull writable sret(%"class.ncrypto::BignumPointer") align 8 %7) #25
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.al = load i64, ptr %i.ak, align 8            ; 2 uses
  %i.am = icmp eq i64 %i.al, 0
  %i.an = add i64 %i.al, -1
  %i.ao = lshr i64 %i.an, 4
  %i.ap = add nuw nsw i64 %i.ao, 1
  %i.aq = select i1 %i.am, i64 0, i64 %i.ap
  %i.ar = call noundef zeroext i1 @_ZN7ncrypto13BignumPointer7setWordEm(ptr noundef nonnull align 8 dereferenceable(8) %7, i64 noundef %i.aq) #25
  br i1 %i.ar, label %bb.f, label %bb.r

bb.f:                                             ; preds = %_ZN4node6crypto12_GLOBAL__N_110GetCounterERKNS0_15AESCipherConfigE.exit
  %i.as = call noundef i32 @_ZNK7ncrypto13BignumPointerssERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %5) #25
  %i.at = icmp sgt i32 %i.as, 0
  br i1 %i.at, label %bb.r, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  call void @_ZN7ncrypto13BignumPointer6NewSubERKS0_S2_(ptr dead_on_unwind nonnull writable sret(%"class.ncrypto::BignumPointer") align 8 %8, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %6) #25
  %i.au = load ptr, ptr %8, align 8
  %.not.i.i34.not = icmp eq ptr %i.au, null
  br i1 %.not.i.i34.not, label %bb.q, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  %i.av = load i64, ptr %i.ak, align 8
  call void @_ZN7ncrypto11DataPointer5AllocEm(ptr dead_on_unwind nonnull writable sret(%"class.ncrypto::DataPointer") align 8 %9, i64 noundef %i.av) #25
  %i.aw = call noundef i32 @_ZNK7ncrypto13BignumPointerssERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %7) #25
  %i.ax = icmp sgt i32 %i.aw, -1
  br i1 %i.ax, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.ay = load ptr, ptr %i.g, align 8
  %i.az = load ptr, ptr %9, align 8
  %i.ba = call fastcc noundef i32 @_ZN4node6crypto12_GLOBAL__N_115AES_CTR_Cipher2ERKNS0_13KeyObjectDataENS0_19WebCryptoCipherModeERKNS0_15AESCipherConfigERKNS0_10ByteSourceEPKhPh(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(104) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef %i.ay, ptr noundef %i.az) ; 2 uses
  %i.bb = icmp eq i32 %i.ba, 0
  br i1 %i.bb, label %bb.j, label %bb.p

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  %i.bc = call { ptr, i64 } @_ZN7ncrypto11DataPointer7releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %9) #25 ; 2 uses
  %i.bd = extractvalue { ptr, i64 } %i.bc, 0
  %i.be = extractvalue { ptr, i64 } %i.bc, 1
  call void @_ZN4node6crypto10ByteSource9AllocatedEPvm(ptr dead_on_unwind nonnull writable sret(%"class.node::crypto::ByteSource") align 8 %10, ptr noundef %i.bd, i64 noundef %i.be) #25
  %i.bf = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN4node6crypto10ByteSourceaSEOS1_(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %10) #25 ; 0 uses
  call void @_ZN4node6crypto10ByteSourceD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %10) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br label %bb.p

bb.k:                                             ; preds = %bb.h
  %i.bg = call noundef i64 @_ZNK7ncrypto13BignumPointer7getWordEv(ptr noundef nonnull align 8 dereferenceable(8) %8) #25
  %i.bh = shl i64 %i.bg, 4                        ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  %i.bi = load ptr, ptr %3, align 8
  call void @_ZN4node6crypto10ByteSource7ForeignEPKvm(ptr dead_on_unwind nonnull writable sret(%"class.node::crypto::ByteSource") align 8 %11, ptr noundef %i.bi, i64 noundef %i.bh) #25
  %i.bj = load ptr, ptr %i.g, align 8
  %i.bk = load ptr, ptr %9, align 8
  %i.bl = call fastcc noundef i32 @_ZN4node6crypto12_GLOBAL__N_115AES_CTR_Cipher2ERKNS0_13KeyObjectDataENS0_19WebCryptoCipherModeERKNS0_15AESCipherConfigERKNS0_10ByteSourceEPKhPh(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(104) %2, ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef %i.bj, ptr noundef %i.bk) ; 2 uses
  call void @_ZN4node6crypto10ByteSourceD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %11) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  %.not = icmp eq i32 %i.bl, 0
  br i1 %.not, label %bb.l, label %bb.p

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #25
  call fastcc void @_ZN4node6crypto12_GLOBAL__N_122BlockWithZeroedCounterERKNS0_15AESCipherConfigE(ptr dead_on_unwind noalias writable align 8 %12, ptr noundef nonnull align 8 dereferenceable(104) %2)
  %i.bm = load ptr, ptr %9, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.bh
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #25
  %i.bo = load ptr, ptr %3, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.bh
  %i.bq = load i64, ptr %i.ak, align 8
  %i.br = sub i64 %i.bq, %i.bh
  call void @_ZN4node6crypto10ByteSource7ForeignEPKvm(ptr dead_on_unwind nonnull writable sret(%"class.node::crypto::ByteSource") align 8 %13, ptr noundef %i.bp, i64 noundef %i.br) #25
  %i.bs = load ptr, ptr %12, align 8              ; 4 uses
  %i.bt = call fastcc noundef i32 @_ZN4node6crypto12_GLOBAL__N_115AES_CTR_Cipher2ERKNS0_13KeyObjectDataENS0_19WebCryptoCipherModeERKNS0_15AESCipherConfigERKNS0_10ByteSourceEPKhPh(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(104) %2, ptr noundef nonnull align 8 dereferenceable(24) %13, ptr noundef %i.bs, ptr noundef %i.bn) ; 2 uses
  call void @_ZN4node6crypto10ByteSourceD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %13) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25
  %i.bu = icmp eq i32 %i.bt, 0
  br i1 %i.bu, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #25
  %i.bv = call { ptr, i64 } @_ZN7ncrypto11DataPointer7releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %9) #25 ; 2 uses
  %i.bw = extractvalue { ptr, i64 } %i.bv, 0
  %i.bx = extractvalue { ptr, i64 } %i.bv, 1
  call void @_ZN4node6crypto10ByteSource9AllocatedEPvm(ptr dead_on_unwind nonnull writable sret(%"class.node::crypto::ByteSource") align 8 %14, ptr noundef %i.bw, i64 noundef %i.bx) #25
  %i.by = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN4node6crypto10ByteSourceaSEOS1_(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %14) #25 ; 0 uses
  call void @_ZN4node6crypto10ByteSourceD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %14) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.not.i.i.i = icmp eq ptr %i.bs, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIhSaIhEED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bz = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.ca = load ptr, ptr %i.bz, align 8
  %i.cb = ptrtoint ptr %i.ca to i64
  %i.cc = ptrtoint ptr %i.bs to i64
  %i.cd = sub i64 %i.cb, %i.cc
  call void @_ZdlPvm(ptr noundef nonnull %i.bs, i64 noundef %i.cd) #28
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

_ZNSt6vectorIhSaIhEED2Ev.exit:                    ; preds = %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  br label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit, %bb.k, %bb.i, %bb.j
  %.1 = phi i32 [ %i.ba, %bb.i ], [ 0, %bb.j ], [ %i.bt, %_ZNSt6vectorIhSaIhEED2Ev.exit ], [ %i.bl, %bb.k ]
  call void @_ZN7ncrypto11DataPointerD1Ev(ptr noundef nonnull align 8 dead_on_return(17) dereferenceable(24) %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  br label %bb.q

bb.q:                                             ; preds = %bb.g, %bb.p
  %.2 = phi i32 [ %.1, %bb.p ], [ 2, %bb.g ]
  call void @_ZN7ncrypto13BignumPointerD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br label %bb.r

bb.r:                                             ; preds = %bb.f, %_ZN4node6crypto12_GLOBAL__N_110GetCounterERKNS0_15AESCipherConfigE.exit, %bb.q
  %.3 = phi i32 [ 2, %_ZN4node6crypto12_GLOBAL__N_110GetCounterERKNS0_15AESCipherConfigE.exit ], [ %.2, %bb.q ], [ 2, %bb.f ]
  call void @_ZN7ncrypto13BignumPointerD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  call void @_ZN7ncrypto13BignumPointerD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %bb.s

bb.s:                                             ; preds = %bb.a, %bb.r
  %.4 = phi i32 [ %.3, %bb.r ], [ 2, %bb.a ]
  call void @_ZN7ncrypto13BignumPointerD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  ret i32 %.4
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef range(i32 0, 3) i32 @_ZN4node6crypto12_GLOBAL__N_110AES_CipherEPNS_11EnvironmentERKNS0_13KeyObjectDataENS0_19WebCryptoCipherModeERKNS0_15AESCipherConfigERKNS0_10ByteSourceEPSB_(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(104) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %3, ptr noundef %4) unnamed_addr #0 {
bb.a:
  %5 = alloca %"class.ncrypto::CipherCtxPointer", align 8 ; 19 uses
  %6 = alloca %"class.ncrypto::Cipher", align 8   ; 5 uses
  %7 = alloca %"struct.ncrypto::Buffer.526", align 8 ; 5 uses
  %i.a = alloca i32, align 4                      ; 9 uses
  %8 = alloca %"struct.ncrypto::Buffer.524", align 8 ; 7 uses
  %9 = alloca %"class.ncrypto::DataPointer", align 8 ; 8 uses
  %10 = alloca %"struct.ncrypto::Buffer.524", align 8 ; 4 uses
  %11 = alloca %"class.node::crypto::ByteSource", align 8 ; 5 uses
  %12 = alloca %"class.ncrypto::DataPointer", align 8 ; 5 uses
  %13 = alloca %"class.node::crypto::ByteSource", align 8 ; 5 uses
  %i.b = tail call noundef i32 @_ZNK4node6crypto13KeyObjectData10GetKeyTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #25
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.b, !prof !33

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4node6crypto12_GLOBAL__N_110AES_CipherEPNS_11EnvironmentERKNS0_13KeyObjectDataENS0_19WebCryptoCipherModeERKNS0_15AESCipherConfigERKNS0_10ByteSourceEPSB_E20error_and_abort_args) #25
  tail call void @abort() #26
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @_ZN7ncrypto16CipherCtxPointer3NewEv(ptr dead_on_unwind nonnull writable sret(%"class.ncrypto::CipherCtxPointer") align 8 %5) #25
  %i.d = load ptr, ptr %5, align 8
  %.not.i.i.not = icmp eq ptr %i.d, null
  br i1 %.not.i.i.not, label %bb.d, label %bb.e, !prof !29

bb.d:                                             ; preds = %bb.c
  call void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4node6crypto12_GLOBAL__N_110AES_CipherEPNS_11EnvironmentERKNS0_13KeyObjectDataENS0_19WebCryptoCipherModeERKNS0_15AESCipherConfigERKNS0_10ByteSourceEPSB_E20error_and_abort_args_0) #25
  call void @abort() #26
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 12 uses
  %i.f = call noundef zeroext i1 @_ZNK7ncrypto6Cipher10isWrapModeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.e) #25
  br i1 %i.f, label %bb.f, label %bb.g

end_hunk_0
