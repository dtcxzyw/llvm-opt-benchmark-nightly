Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libsignal-rs/original/zkgroup-01bd3d79286543e4.zkgroup.5d344a40d40de915-cgu.15?download=true
inline.NumInlined: 158
inline.NumDeleted: 77
begin_hunk_0_@_RNCINvXs1_NtNtCs807GXlIGG3x_7zkgroup6common13serializationINtB8_11VersionByteKh1_ENtNtCs6yNvtpc0TEA_10serde_core2de11Deserialize11deserializeQINtNtCsfzLoC2LLPWN_7bincode2de12DeserializerNtNtB2j_4read11SliceReaderINtNtB2l_6config17WithOtherTrailingINtB3r_15WithOtherEndianINtB3r_20WithOtherIntEncodingNtB3r_14DefaultOptionsNtNtB3r_3int14FixintEncodingENtNtB3r_6endian12LittleEndianENtNtB3r_8trailing14RejectTrailingEEE0Bc_:.split
  unreachable
}

; Function Attrs: cold inlinehint nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @_RNCINvXs1_NtNtCs807GXlIGG3x_7zkgroup6common13serializationINtB8_11VersionByteKh2_ENtNtCs6yNvtpc0TEA_10serde_core2de11Deserialize11deserializeQINtNtCsfzLoC2LLPWN_7bincode2de12DeserializerNtNtB2j_4read11SliceReaderINtNtB2l_6config17WithOtherTrailingINtB3r_15WithOtherEndianINtB3r_20WithOtherIntEncodingNtB3r_14DefaultOptionsNtNtB3r_3int14FixintEncodingENtNtB3r_6endian12LittleEndianENtNtB3r_8trailing14RejectTrailingEEE0Bc_(i8 %.0.val) unnamed_addr #2 personality ptr @rust_eh_personality {
.split:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 9 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.e = zext i8 %.0.val to i64
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %i.e, ptr %i.f, align 8
  store i8 1, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @33, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXNtNtNtCsgxBkk5gSRhY_4core3fmt3num3imphNtB6_7Display3fmt, ptr %.sroa.42.0..sroa_idx, align 8
  call void @_RNvNvNtCs6i54tJFfzR_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noundef nonnull @30, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !4, !noundef !4
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.j = load i64, ptr %i.i, align 8, !noundef !4
  store ptr %i.h, ptr %i.c, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %i.j, ptr %i.k, align 8
  %i.l = invoke noundef nonnull align 8 ptr @_RNvYINtNtCs6i54tJFfzR_5alloc5boxed3BoxNtNtCsfzLoC2LLPWN_7bincode5error9ErrorKindENtNtCs6yNvtpc0TEA_10serde_core2de5Error13invalid_valueCs807GXlIGG3x_7zkgroup(ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.d, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @31)
          to label %bb.b unwind label %bb.a

bb.a:                                             ; preds = %.split
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECs807GXlIGG3x_7zkgroup(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #24
          to label %common.resume unwind label %bb.e

bb.b:                                             ; preds = %.split
  invoke void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs807GXlIGG3x_7zkgroup(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECs807GXlIGG3x_7zkgroup.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs807GXlIGG3x_7zkgroup(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %common.resume unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #22
  unreachable

common.resume:                                    ; preds = %bb.a, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.n, %bb.c ], [ %i.m, %bb.a ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECs807GXlIGG3x_7zkgroup.exit: ; preds = %bb.b
  call void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs807GXlIGG3x_7zkgroup(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret ptr %i.l

bb.e:                                             ; preds = %bb.a
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #22
  unreachable
}

; Function Attrs: cold inlinehint nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @_RNCINvXs1_NtNtCs807GXlIGG3x_7zkgroup6common13serializationINtB8_11VersionByteKh3_ENtNtCs6yNvtpc0TEA_10serde_core2de11Deserialize11deserializeQINtNtCsfzLoC2LLPWN_7bincode2de12DeserializerNtNtB2j_4read11SliceReaderINtNtB2l_6config17WithOtherTrailingINtB3r_15WithOtherEndianINtB3r_20WithOtherIntEncodingNtB3r_14DefaultOptionsNtNtB3r_3int14FixintEncodingENtNtB3r_6endian12LittleEndianENtNtB3r_8trailing14RejectTrailingEEE0Bc_(i8 %.0.val) unnamed_addr #2 personality ptr @rust_eh_personality {
.split:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 9 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.e = zext i8 %.0.val to i64
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %i.e, ptr %i.f, align 8
  store i8 1, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @34, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXNtNtNtCsgxBkk5gSRhY_4core3fmt3num3imphNtB6_7Display3fmt, ptr %.sroa.42.0..sroa_idx, align 8
  call void @_RNvNvNtCs6i54tJFfzR_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noundef nonnull @30, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !4, !noundef !4
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.j = load i64, ptr %i.i, align 8, !noundef !4
  store ptr %i.h, ptr %i.c, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %i.j, ptr %i.k, align 8
  %i.l = invoke noundef nonnull align 8 ptr @_RNvYINtNtCs6i54tJFfzR_5alloc5boxed3BoxNtNtCsfzLoC2LLPWN_7bincode5error9ErrorKindENtNtCs6yNvtpc0TEA_10serde_core2de5Error13invalid_valueCs807GXlIGG3x_7zkgroup(ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.d, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @31)
          to label %bb.b unwind label %bb.a

bb.a:                                             ; preds = %.split
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECs807GXlIGG3x_7zkgroup(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #24
          to label %common.resume unwind label %bb.e

bb.b:                                             ; preds = %.split
  invoke void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs807GXlIGG3x_7zkgroup(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECs807GXlIGG3x_7zkgroup.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs807GXlIGG3x_7zkgroup(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %common.resume unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #22
  unreachable

common.resume:                                    ; preds = %bb.a, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.n, %bb.c ], [ %i.m, %bb.a ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECs807GXlIGG3x_7zkgroup.exit: ; preds = %bb.b
  call void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs807GXlIGG3x_7zkgroup(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret ptr %i.l

bb.e:                                             ; preds = %bb.a
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #22
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtNtCs807GXlIGG3x_7zkgroup3api9donations15donation_permitNtB2_28DonationPermitDerivedKeyPair8tag_info(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([224 x i8]) align 8 captures(none) dereferenceable(224) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 1                ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [224 x i8], align 8               ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvXNtCsfFEWD1QhNwv_6poksho13shohmacsha256NtB2_13ShoHmacSha256NtNtB4_6shoapi6ShoApi3new(ptr noalias nofree noundef nonnull sret([224 x i8]) align 8 captures(none) dereferenceable(224) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @35, i64 noundef 41)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.d = tail call i64 @llvm.bswap.i64(i64 %1)
  store i64 %i.d, ptr %i.b, align 8
  invoke void @_RNvXNtCsfFEWD1QhNwv_6poksho13shohmacsha256NtB2_13ShoHmacSha256NtNtB4_6shoapi6ShoApi6absorb(ptr noalias nofree noundef nonnull align 8 dereferenceable(224) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef 8)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.a, i8 0, i64 64, i1 false), !noalias !138
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(224) %i.c, ptr nonnull align 1 %i.a, i64 64, i1 true)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void asm sideeffect inteldialect "# ${0:q}", "r,~{memory}"(ptr nonnull align 8 dereferenceable(224) %i.c) #25, !srcloc !5
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  invoke void @_RNvXCseNmJmsPJ47l_7zeroizeuNtB2_7Zeroize7zeroizeCs807GXlIGG3x_7zkgroup(ptr noalias nofree noundef nonnull %i.f)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCsfFEWD1QhNwv_6poksho13shohmacsha25613ShoHmacSha256ECs807GXlIGG3x_7zkgroup.exit unwind label %bb.e

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXNtCsfFEWD1QhNwv_6poksho13shohmacsha256NtB2_13ShoHmacSha256NtNtB4_6shoapi6ShoApi7ratchet(ptr noalias nofree noundef nonnull align 8 dereferenceable(224) %i.c)
          to label %bb.d unwind label %bb.b

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 8 dereferenceable(224) %i.c, i64 224, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.e:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #22
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCsfFEWD1QhNwv_6poksho13shohmacsha25613ShoHmacSha256ECs807GXlIGG3x_7zkgroup.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.e
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMNtNtNtNtCs807GXlIGG3x_7zkgroup3api4auth24auth_credential_with_pni3zkcNtB2_32AuthCredentialWithPniZkcResponse15receive_for_key(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(1040) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dead_on_return dereferenceable(376) %1, ptr noalias nofree noundef nonnull readonly align 1 captures(none) dead_on_return dereferenceable(16) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dead_on_return dereferenceable(336) %3, i64 noundef %4, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1120) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.01 = alloca [1024 x i8], align 8         ; 6 uses
  %i.a = alloca [376 x i8], align 8               ; 4 uses
  %i.b = alloca [264 x i8], align 8               ; 4 uses
  %i.c = alloca [264 x i8], align 8               ; 4 uses
  %i.d = alloca [264 x i8], align 8               ; 4 uses
  %i.e = alloca [264 x i8], align 8               ; 4 uses
  %i.f = alloca [360 x i8], align 8               ; 6 uses
  %i.g = alloca [17 x i8], align 1                ; 5 uses
  %i.h = alloca [336 x i8], align 8               ; 5 uses
  %i.i = alloca [8 x i8], align 8                 ; 3 uses
  store i64 %4, ptr %i.i, align 8
  %i.j = urem i64 %4, 86400
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.l, ptr noundef nonnull align 1 dereferenceable(16) %2, i64 16, i1 false)
  store i8 0, ptr %i.g, align 1
  invoke void @_RNvMNtNtCs807GXlIGG3x_7zkgroup6crypto10uid_structNtB2_9UidStruct15from_service_id(ptr noalias nofree noundef nonnull sret([336 x i8]) align 8 captures(none) dereferenceable(336) %i.h, ptr noalias nofree noundef nonnull readonly align 1 captures(none) dereferenceable(17) %i.g)
          to label %bb.f unwind label %bb.n

bb.c:                                             ; preds = %bb.a
  store i64 1, ptr %0, align 8
  invoke void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs807GXlIGG3x_7zkgroup(ptr noalias nofree noundef nonnull align 8 dereferenceable(376) %1)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs17t5S1clqUH_12zkcredential8issuance13IssuanceProofECs807GXlIGG3x_7zkgroup.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs807GXlIGG3x_7zkgroup(ptr noalias nofree noundef nonnull align 8 dereferenceable(376) %1)
          to label %common.resume unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #22
  unreachable

common.resume:                                    ; preds = %bb.n, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.m, %bb.d ], [ %lpad.thr_comm, %bb.n ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs17t5S1clqUH_12zkcredential8issuance13IssuanceProofECs807GXlIGG3x_7zkgroup.exit: ; preds = %bb.c
  tail call void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs807GXlIGG3x_7zkgroup(ptr noalias nofree noundef nonnull align 8 dereferenceable(376) %1)
  br label %bb.m

bb.f:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvMNtCs17t5S1clqUH_12zkcredential8issuanceNtB2_20IssuanceProofBuilder3new(ptr noalias nofree noundef nonnull sret([264 x i8]) align 8 captures(address) dereferenceable(264) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @36, i64 noundef 33)
          to label %bb.g unwind label %bb.n

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvMNtCs17t5S1clqUH_12zkcredential8issuanceNtB2_20IssuanceProofBuilder13add_attribute(ptr noalias nofree noundef nonnull sret([264 x i8]) align 8 captures(none) dereferenceable(264) %i.c, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(264) %i.b, ptr noundef nonnull %i.h, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @37)
          to label %bb.h unwind label %bb.n

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  invoke void @_RNvMNtCs17t5S1clqUH_12zkcredential8issuanceNtB2_20IssuanceProofBuilder13add_attribute(ptr noalias nofree noundef nonnull sret([264 x i8]) align 8 captures(none) dereferenceable(264) %i.d, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(264) %i.c, ptr noundef nonnull %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @37)
          to label %bb.i unwind label %bb.n

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  invoke void @_RNvMNtCs17t5S1clqUH_12zkcredential8issuanceNtB2_20IssuanceProofBuilder20add_public_attribute(ptr noalias nofree noundef nonnull sret([264 x i8]) align 8 captures(none) dereferenceable(264) %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(264) %i.d, ptr noundef nonnull %i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @38)
          to label %bb.j unwind label %bb.n

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(376) %i.a, ptr noundef nonnull align 8 dereferenceable(376) %1, i64 376, i1 false)
  call void @_RNvMNtCs17t5S1clqUH_12zkcredential8issuanceNtB2_20IssuanceProofBuilder6verify(ptr noalias nofree noundef nonnull sret([360 x i8]) align 8 captures(none) dereferenceable(360) %i.f, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(264) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1120) %5, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(376) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.o = load i64, ptr %i.f, align 8, !range !6, !noundef !4
  %i.p = trunc nuw i64 %i.o to i1
  br i1 %i.p, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  store i64 1, ptr %0, align 8
  br label %.sink.split

bb.l:                                             ; preds = %bb.j
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.01)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(352) %.sroa.01, ptr noundef nonnull align 8 dereferenceable(352) %i.q, i64 352, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %.sroa.01.352..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.01, i64 352
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(336) %.sroa.01.352..sroa_idx, ptr noundef nonnull align 8 dereferenceable(336) %i.h, i64 336, i1 false)
  %.sroa.01.688..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.01, i64 688
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(336) %.sroa.01.688..sroa_idx, ptr noundef nonnull align 8 dereferenceable(336) %3, i64 336, i1 false)
  %i.r = load i64, ptr %i.i, align 8, !noundef !4
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1024) %i.s, ptr noundef nonnull align 8 dereferenceable(1024) %.sroa.01, i64 1024, i1 false)
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1032
  store i64 %i.r, ptr %.sroa.6.0..sroa_idx, align 8
  store i64 0, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.01)
  br label %.sink.split

.sink.split:                                      ; preds = %bb.l, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.m

bb.m:                                             ; preds = %.sink.split, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs17t5S1clqUH_12zkcredential8issuance13IssuanceProofECs807GXlIGG3x_7zkgroup.exit
  ret void

bb.n:                                             ; preds = %bb.i, %bb.h, %bb.g, %bb.f, %bb.b
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs17t5S1clqUH_12zkcredential8issuance13IssuanceProofECs807GXlIGG3x_7zkgroup(ptr noalias nofree noundef align 8 dereferenceable(376) %1) #24
          to label %common.resume unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #22
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtNtNtCs807GXlIGG3x_7zkgroup3api4auth24auth_credential_with_pni3zkcNtB2_32AuthCredentialWithPniZkcResponse16issue_credential(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([376 x i8]) align 8 captures(none) dereferenceable(376) %0, ptr noalias nofree noundef readonly align 1 captures(none) dead_on_return dereferenceable(16) %1, ptr noalias nofree noundef readonly align 1 captures(none) dead_on_return dereferenceable(16) %2, i64 noundef %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(6560) %4, ptr noalias nofree noundef readonly align 1 captures(address) dead_on_return dereferenceable(32) %5) unnamed_addr #0 {
bb.a:
  %i.a = alloca [17 x i8], align 1                ; 5 uses
  %i.b = alloca [336 x i8], align 8               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.c, ptr noundef nonnull align 1 dereferenceable(16) %2, i64 16, i1 false)
  store i8 1, ptr %i.a, align 1
  call void @_RNvMNtNtCs807GXlIGG3x_7zkgroup6crypto10uid_structNtB2_9UidStruct15from_service_id(ptr noalias nofree noundef nonnull sret([336 x i8]) align 8 captures(none) dereferenceable(336) %i.b, ptr noalias nofree noundef nonnull readonly align 1 captures(none) dereferenceable(17) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 4928
  call fastcc void @_RNvMNtNtNtNtCs807GXlIGG3x_7zkgroup3api4auth24auth_credential_with_pni3zkcNtB2_32AuthCredentialWithPniZkcResponse24issue_credential_for_key(ptr noalias nofree noundef align 8 captures(none) dereferenceable(376) %0, ptr noalias nofree noundef readonly align 1 captures(none) dereferenceable(16) %1, ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable(336) %i.b, i64 noundef %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(1632) %i.d, ptr noalias nofree noundef align 1 captures(address) dereferenceable(32) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtNtNtCs807GXlIGG3x_7zkgroup3api4auth24auth_credential_with_pni3zkcNtB2_32AuthCredentialWithPniZkcResponse19receive_without_pni(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([1040 x i8]) align 8 captures(none) dereferenceable(1040) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(376) %1, ptr noalias nofree noundef readonly align 1 captures(none) dead_on_return dereferenceable(16) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef range(i64 0, -9223372036854775808) %4, i64 noundef %5, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(3360) %6) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [336 x i8], align 8               ; 4 uses
  %i.b = alloca [376 x i8], align 8               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(376) %i.b, ptr noundef nonnull align 8 dereferenceable(376) %1, i64 376, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvMNtNtCs807GXlIGG3x_7zkgroup6crypto10uid_structNtB2_9UidStruct30for_false_pni_derived_from_aci(ptr noalias nofree noundef nonnull sret([336 x i8]) align 8 captures(none) dereferenceable(336) %i.a, ptr noalias nofree noundef nonnull readonly align 1 captures(none) dereferenceable(16) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 2080
  call fastcc void @_RNvMNtNtNtNtCs807GXlIGG3x_7zkgroup3api4auth24auth_credential_with_pni3zkcNtB2_32AuthCredentialWithPniZkcResponse15receive_for_key(ptr noalias nofree noundef align 8 captures(none) dereferenceable(1040) %0, ptr noalias nofree noundef align 8 captures(address) dereferenceable(376) %i.b, ptr noalias nofree noundef readonly align 1 captures(none) dereferenceable(16) %2, ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable(336) %i.a, i64 noundef %5, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(1120) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.c:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.d

bb.d:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtNtCs807GXlIGG3x_7zkgroup3api4auth24auth_credential_with_pni3zkc32AuthCredentialWithPniZkcResponseEBL_(ptr noalias nofree noundef align 8 dereferenceable(376) %i.b) #24
          to label %bb.c unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #22
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMNtNtNtNtCs807GXlIGG3x_7zkgroup3api4auth24auth_credential_with_pni3zkcNtB2_32AuthCredentialWithPniZkcResponse24issue_credential_for_key(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(376) %0, ptr noalias nofree noundef nonnull readonly align 1 captures(none) dead_on_return dereferenceable(16) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dead_on_return dereferenceable(336) %2, i64 noundef %3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1632) %4, ptr noalias nofree noundef nonnull readonly align 1 captures(address) dead_on_return dereferenceable(32) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [17 x i8], align 1                ; 5 uses
  %i.b = alloca [336 x i8], align 8               ; 4 uses
  %i.c = alloca [264 x i8], align 8               ; 5 uses
  %i.d = alloca [264 x i8], align 8               ; 4 uses
  %i.e = alloca [264 x i8], align 8               ; 4 uses
  %i.f = alloca [264 x i8], align 8               ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 2 uses
  store i64 %3, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvMNtCs17t5S1clqUH_12zkcredential8issuanceNtB2_20IssuanceProofBuilder3new(ptr noalias nofree noundef nonnull sret([264 x i8]) align 8 captures(address) dereferenceable(264) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @36, i64 noundef 33)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.h, ptr noundef nonnull align 1 dereferenceable(16) %1, i64 16, i1 false)
  store i8 0, ptr %i.a, align 1
  invoke void @_RNvMNtNtCs807GXlIGG3x_7zkgroup6crypto10uid_structNtB2_9UidStruct15from_service_id(ptr noalias nofree noundef nonnull sret([336 x i8]) align 8 captures(none) dereferenceable(336) %i.b, ptr noalias nofree noundef nonnull readonly align 1 captures(none) dereferenceable(17) %i.a)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @_RNvMNtCs17t5S1clqUH_12zkcredential8issuanceNtB2_20IssuanceProofBuilder13add_attribute(ptr noalias nofree noundef nonnull sret([264 x i8]) align 8 captures(none) dereferenceable(264) %i.d, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(264) %i.c, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @37)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @_RNvMNtCs17t5S1clqUH_12zkcredential8issuanceNtB2_20IssuanceProofBuilder13add_attribute(ptr noalias nofree noundef nonnull sret([264 x i8]) align 8 captures(none) dereferenceable(264) %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(264) %i.d, ptr noundef nonnull %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @37)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @_RNvMNtCs17t5S1clqUH_12zkcredential8issuanceNtB2_20IssuanceProofBuilder20add_public_attribute(ptr noalias nofree noundef nonnull sret([264 x i8]) align 8 captures(none) dereferenceable(264) %i.f, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(264) %i.e, ptr noundef nonnull %i.g, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @38)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @_RINvMNtCs17t5S1clqUH_12zkcredential8issuanceNtB3_20IssuanceProofBuilder5issueNtNtB5_11credentials10LegacyModeECs807GXlIGG3x_7zkgroup(ptr noalias nofree noundef nonnull sret([376 x i8]) align 8 captures(none) dereferenceable(376) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(264) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1632) %4, ptr noalias nofree noundef nonnull readonly align 1 captures(address) dereferenceable(32) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.c:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.i

bb.d:                                             ; preds = %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs17t5S1clqUH_12zkcredential8issuance20IssuanceProofBuilderECs807GXlIGG3x_7zkgroup(ptr noalias nofree noundef align 8 dereferenceable(264) %i.c) #24
          to label %bb.c unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #22
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtNtNtCs807GXlIGG3x_7zkgroup3api4auth24auth_credential_with_pni3zkcNtB2_32AuthCredentialWithPniZkcResponse28issue_credential_without_pni(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([376 x i8]) align 8 captures(none) dereferenceable(376) %0, ptr noalias nofree noundef readonly align 1 captures(none) dead_on_return dereferenceable(16) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3, i64 noundef %4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(6560) %5, ptr noalias nofree noundef readonly align 1 captures(address) dead_on_return dereferenceable(32) %6) unnamed_addr #0 {
bb.a:
  %i.a = alloca [336 x i8], align 8               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMNtNtCs807GXlIGG3x_7zkgroup6crypto10uid_structNtB2_9UidStruct30for_false_pni_derived_from_aci(ptr noalias nofree noundef nonnull sret([336 x i8]) align 8 captures(none) dereferenceable(336) %i.a, ptr noalias nofree noundef nonnull readonly align 1 captures(none) dereferenceable(16) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3)
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 4928
  call fastcc void @_RNvMNtNtNtNtCs807GXlIGG3x_7zkgroup3api4auth24auth_credential_with_pni3zkcNtB2_32AuthCredentialWithPniZkcResponse24issue_credential_for_key(ptr noalias nofree noundef align 8 captures(none) dereferenceable(376) %0, ptr noalias nofree noundef readonly align 1 captures(none) dereferenceable(16) %1, ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable(336) %i.a, i64 noundef %4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(1632) %i.b, ptr noalias nofree noundef align 1 captures(address) dereferenceable(32) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtNtNtCs807GXlIGG3x_7zkgroup3api4auth24auth_credential_with_pni3zkcNtB2_32AuthCredentialWithPniZkcResponse7receive(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([1040 x i8]) align 8 captures(none) dereferenceable(1040) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(376) %1, ptr noalias nofree noundef readonly align 1 captures(none) dead_on_return dereferenceable(16) %2, ptr noalias nofree noundef readonly align 1 captures(none) dead_on_return dereferenceable(16) %3, i64 noundef %4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(3360) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [17 x i8], align 1                ; 5 uses
  %i.b = alloca [336 x i8], align 8               ; 4 uses
  %i.c = alloca [376 x i8], align 8               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(376) %i.c, ptr noundef nonnull align 8 dereferenceable(376) %1, i64 376, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.d, ptr noundef nonnull align 1 dereferenceable(16) %3, i64 16, i1 false)
  store i8 1, ptr %i.a, align 1
  invoke void @_RNvMNtNtCs807GXlIGG3x_7zkgroup6crypto10uid_structNtB2_9UidStruct15from_service_id(ptr noalias nofree noundef nonnull sret([336 x i8]) align 8 captures(none) dereferenceable(336) %i.b, ptr noalias nofree noundef nonnull readonly align 1 captures(none) dereferenceable(17) %i.a)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 2080
  call fastcc void @_RNvMNtNtNtNtCs807GXlIGG3x_7zkgroup3api4auth24auth_credential_with_pni3zkcNtB2_32AuthCredentialWithPniZkcResponse15receive_for_key(ptr noalias nofree noundef align 8 captures(none) dereferenceable(1040) %0, ptr noalias nofree noundef align 8 captures(address) dereferenceable(376) %i.c, ptr noalias nofree noundef readonly align 1 captures(none) dereferenceable(16) %2, ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable(336) %i.b, i64 noundef %4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(1120) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.c:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.f

bb.d:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtNtCs807GXlIGG3x_7zkgroup3api4auth24auth_credential_with_pni3zkc32AuthCredentialWithPniZkcResponseEBL_(ptr noalias nofree noundef align 8 dereferenceable(376) %i.c) #24
          to label %bb.c unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #22
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs0_NtNtNtCs807GXlIGG3x_7zkgroup3api9donations15donation_permitNtB5_28DonationPermitRequestContext3new(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, i64 noundef range(i64 1, 0) %1, ptr noalias nofree noundef readonly align 1 captures(address) dead_on_return dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 1                ; 4 uses
  %i.b = alloca [64 x i8], align 1                ; 4 uses
  %i.c = alloca [32 x i8], align 1                ; 4 uses
  %i.d = alloca [32 x i8], align 1                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [160 x i8], align 8               ; 4 uses
  %i.i = alloca [160 x i8], align 8               ; 4 uses
  %i.j = alloca [32 x i8], align 1                ; 5 uses
  %i.k = alloca [32 x i8], align 1                ; 5 uses
  %i.l = alloca [24 x i8], align 8                ; 9 uses
  %i.m = alloca [24 x i8], align 8                ; 9 uses
  %i.n = alloca [24 x i8], align 8                ; 9 uses
  %i.o = alloca [224 x i8], align 8               ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @_RNvXNtCsfFEWD1QhNwv_6poksho13shohmacsha256NtB2_13ShoHmacSha256NtNtB4_6shoapi6ShoApi3new(ptr noalias nofree noundef nonnull sret([224 x i8]) align 8 captures(none) dereferenceable(224) %i.o, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @39, i64 noundef 56)
  invoke void @_RNvXNtCsfFEWD1QhNwv_6poksho13shohmacsha256NtB2_13ShoHmacSha256NtNtB4_6shoapi6ShoApi6absorb(ptr noalias nofree noundef nonnull align 8 dereferenceable(224) %i.o, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef 32)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %bb.i, %bb.c
  %.pn6 = phi { ptr, i32 } [ %i.q, %bb.c ], [ %.pn4, %bb.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.b, i8 0, i64 64, i1 false), !noalias !165
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(224) %i.o, ptr nonnull align 1 %i.b, i64 64, i1 true)
end_hunk_0
