Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libsignal-rs/original/libsignal_protocol-78e79be79537878f.libsignal_protocol.3431899de14c0db4-cgu.09?download=true
inline.NumInlined: 347
inline.NumDeleted: 205
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_RNvMNtNtCs4tP8yUXWbFU_18libsignal_protocol13sealed_sender16sealed_sender_v1NtB2_13EphemeralKeys9calculate:bb.a
  invoke void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %bb.ae unwind label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bd = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %.body43 unwind label %bb.af

bb.ae:                                            ; preds = %bb.ac
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs4tP8yUXWbFU_18libsignal_protocol.exit51 unwind label %bb.f

bb.af:                                            ; preds = %bb.ad
  %i.be = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #20
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs4tP8yUXWbFU_18libsignal_protocol.exit51: ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.bf = icmp eq i64 %i.s, 0
  br i1 %i.bf, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxShEECs4tP8yUXWbFU_18libsignal_protocol.exit52, label %bb.ag

bb.ag:                                            ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs4tP8yUXWbFU_18libsignal_protocol.exit51
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.r) ]
  call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %i.r, i64 noundef range(i64 1, 0) %i.s, i64 noundef 1) #19
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxShEECs4tP8yUXWbFU_18libsignal_protocol.exit52

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxShEECs4tP8yUXWbFU_18libsignal_protocol.exit52: ; preds = %bb.ag, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs4tP8yUXWbFU_18libsignal_protocol.exit51
  %i.bg = icmp eq i64 %i.n, 0
  br i1 %i.bg, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxShEECs4tP8yUXWbFU_18libsignal_protocol.exit46, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxShEECs4tP8yUXWbFU_18libsignal_protocol.exit46.sink.split

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxShEECs4tP8yUXWbFU_18libsignal_protocol.exit: ; preds = %bb.b, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxShEECs4tP8yUXWbFU_18libsignal_protocol.exit38
  resume { ptr, i32 } %.pn17
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtCs4tP8yUXWbFU_18libsignal_protocol13sealed_sender16sealed_sender_v2NtB2_11DerivedKeys3new(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([144 x i8]) align 8 captures(none) dereferenceable(144) initializes((0, 144)) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #1 {
bb.a:
  %i.a = alloca [176 x i8], align 8               ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  call void @_RNvMs_Cs7QbGsRJVG1P_4hkdfINtB4_11GenericHkdfINtCsfkg6qDyjgHi_4hmac4HmacNtCsj2Wav7G13rI_4sha26Sha256EE7extractCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull sret([176 x i8]) align 8 captures(address) dereferenceable(176) %i.a, ptr noalias nofree noundef readonly captures(address, read_provenance) null, i64 undef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(144) %i.b, i64 144, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtCs4tP8yUXWbFU_18libsignal_protocol13sealed_sender16sealed_sender_v2NtB2_11DerivedKeys8derive_e(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 1 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(144) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [16 x i8], align 8                ; 3 uses
  %i.c = alloca [16 x i8], align 8                ; 3 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [72 x i8], align 8                ; 6 uses
  %i.f = alloca [40 x i8], align 8                ; 6 uses
  %i.g = alloca [32 x i8], align 1                ; 4 uses
  %i.h = alloca [32 x i8], align 1                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.h, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr @23, ptr %i.d, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 29, ptr %i.i, align 8
  %i.j = call noundef zeroext i1 @_RNvMs_Cs7QbGsRJVG1P_4hkdfINtB4_11GenericHkdfINtCsfkg6qDyjgHi_4hmac4HmacNtCsj2Wav7G13rI_4sha26Sha256EE17expand_multi_infoCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.d, i64 noundef 1, ptr noalias nofree noundef nonnull %i.h, i64 noundef 32)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br i1 %i.j, label %bb.b, label %_RNvMNtCsgxBkk5gSRhY_4core6resultINtB2_6ResultuNtNtCs7QbGsRJVG1P_4hkdf6errors13InvalidLengthE6expectCs4tP8yUXWbFU_18libsignal_protocol.exit, !prof !10

bb.b:                                             ; preds = %bb.a
  call void @_RNvNtCsgxBkk5gSRhY_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @15, i64 noundef 19, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @21, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @24) #23
  unreachable

_RNvMNtCsgxBkk5gSRhY_4core6resultINtB2_6ResultuNtNtCs7QbGsRJVG1P_4hkdf6errors13InvalidLengthE6expectCs4tP8yUXWbFU_18libsignal_protocol.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @_RNvXs9_NtCsbwPL7qM37dJ_14libsignal_core5curveNtB5_10PrivateKeyINtNtCsgxBkk5gSRhY_4core7convert7TryFromRShE8try_from(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.h, i64 noundef 32)
  call void @llvm.experimental.noalias.scope.decl(metadata !156)
  call void @llvm.experimental.noalias.scope.decl(metadata !157)
  %i.k = load i8, ptr %i.f, align 8, !range !9, !alias.scope !157, !noalias !156, !noundef !4
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.c, label %_RNvMNtCsgxBkk5gSRhY_4core6resultINtB2_6ResultNtNtCsbwPL7qM37dJ_14libsignal_core5curve10PrivateKeyNtBJ_10CurveErrorE6expectCs4tP8yUXWbFU_18libsignal_protocol.exit, !prof !10

bb.c:                                             ; preds = %_RNvMNtCsgxBkk5gSRhY_4core6resultINtB2_6ResultuNtNtCs7QbGsRJVG1P_4hkdf6errors13InvalidLengthE6expectCs4tP8yUXWbFU_18libsignal_protocol.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !158
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.m, i64 16, i1 false), !noalias !156
  call void @_RNvNtCsgxBkk5gSRhY_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @25, i64 noundef 16, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @20, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #23, !noalias !158
  unreachable

_RNvMNtCsgxBkk5gSRhY_4core6resultINtB2_6ResultNtNtCsbwPL7qM37dJ_14libsignal_core5curve10PrivateKeyNtBJ_10CurveErrorE6expectCs4tP8yUXWbFU_18libsignal_protocol.exit: ; preds = %_RNvMNtCsgxBkk5gSRhY_4core6resultINtB2_6ResultuNtNtCs7QbGsRJVG1P_4hkdf6errors13InvalidLengthE6expectCs4tP8yUXWbFU_18libsignal_protocol.exit
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.g, ptr noundef nonnull readonly align 1 dereferenceable(32) %i.n, i64 32, i1 false), !alias.scope !158
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @_RNvXsb_NtCsbwPL7qM37dJ_14libsignal_core5curveNtB5_7KeyPairINtNtCsgxBkk5gSRhY_4core7convert7TryFromNtB5_10PrivateKeyE8try_from(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.e, ptr noalias nofree noundef nonnull readonly align 1 captures(address) dereferenceable(32) %i.g)
  call void @llvm.experimental.noalias.scope.decl(metadata !159)
  call void @llvm.experimental.noalias.scope.decl(metadata !160)
  %i.o = load i8, ptr %i.e, align 8, !range !9, !alias.scope !160, !noalias !159, !noundef !4
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %bb.d, label %_RNvMNtCsgxBkk5gSRhY_4core6resultINtB2_6ResultNtNtCsbwPL7qM37dJ_14libsignal_core5curve7KeyPairNtBJ_10CurveErrorE6expectCs4tP8yUXWbFU_18libsignal_protocol.exit, !prof !10

bb.d:                                             ; preds = %_RNvMNtCsgxBkk5gSRhY_4core6resultINtB2_6ResultNtNtCsbwPL7qM37dJ_14libsignal_core5curve10PrivateKeyNtBJ_10CurveErrorE6expectCs4tP8yUXWbFU_18libsignal_protocol.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !161
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.q, i64 16, i1 false), !noalias !159
  call void @_RNvNtCsgxBkk5gSRhY_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @27, i64 noundef 21, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @20, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @28) #23, !noalias !161
  unreachable

_RNvMNtCsgxBkk5gSRhY_4core6resultINtB2_6ResultNtNtCsbwPL7qM37dJ_14libsignal_core5curve7KeyPairNtBJ_10CurveErrorE6expectCs4tP8yUXWbFU_18libsignal_protocol.exit: ; preds = %_RNvMNtCsgxBkk5gSRhY_4core6resultINtB2_6ResultNtNtCsbwPL7qM37dJ_14libsignal_core5curve10PrivateKeyNtBJ_10CurveErrorE6expectCs4tP8yUXWbFU_18libsignal_protocol.exit
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %0, ptr noundef nonnull readonly align 1 dereferenceable(64) %i.r, i64 64, i1 false), !alias.scope !161
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtCs4tP8yUXWbFU_18libsignal_protocol13sealed_sender16sealed_sender_v2NtB2_11DerivedKeys8derive_k(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 1 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(144) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [32 x i8], align 1                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.c, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @29, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 19, ptr %i.d, align 8
  %i.e = call noundef zeroext i1 @_RNvMs_Cs7QbGsRJVG1P_4hkdfINtB4_11GenericHkdfINtCsfkg6qDyjgHi_4hmac4HmacNtCsj2Wav7G13rI_4sha26Sha256EE17expand_multi_infoCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.b, i64 noundef 1, ptr noalias nofree noundef nonnull %i.c, i64 noundef 32)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br i1 %i.e, label %bb.b, label %_RNvMNtCsgxBkk5gSRhY_4core6resultINtB2_6ResultuNtNtCs7QbGsRJVG1P_4hkdf6errors13InvalidLengthE6expectCs4tP8yUXWbFU_18libsignal_protocol.exit, !prof !10

bb.b:                                             ; preds = %bb.a
  call void @_RNvNtCsgxBkk5gSRhY_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @15, i64 noundef 19, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @21, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @30) #23
  unreachable

_RNvMNtCsgxBkk5gSRhY_4core6resultINtB2_6ResultuNtNtCs7QbGsRJVG1P_4hkdf6errors13InvalidLengthE6expectCs4tP8yUXWbFU_18libsignal_protocol.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %0, ptr noundef nonnull align 1 dereferenceable(32) %i.c, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtNtCsbPnb37KEv9e_8indexmap5inner5entryINtNtNtB6_3map5entry5EntryNtNtCsbwPL7qM37dJ_14libsignal_core7address9ServiceIdNtNtCs4tP8yUXWbFU_18libsignal_protocol13sealed_sender34SealedSenderV2SentMessageRecipientE3newB1Z_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef align 8 dereferenceable(56) %1, i64 noundef %2, ptr noalias nofree noundef readonly align 1 captures(none) dead_on_return dereferenceable(17) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !173)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !174)
  %i.f = lshr i64 %2, 57
  %i.g = trunc nuw nsw i64 %i.f to i8
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !175, !noalias !176, !noundef !4 ; 2 uses
  %i.j = load ptr, ptr %i.e, align 8, !alias.scope !175, !noalias !176, !nonnull !4, !noundef !4 ; 2 uses
  %i.k = insertelement <16 x i8> poison, i8 %i.g, i64 0
  %i.l = shufflevector <16 x i8> %i.k, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 1
  %.val.i.i.i = load i8, ptr %3, align 1, !range !9
  %.val2.i.i.i = load i128, ptr %i.m, align 1
  br label %bb.b

bb.b:                                             ; preds = %bb.g, %bb.a
  %.sroa.07.0.i.i = phi i64 [ 0, %bb.a ], [ %i.aa, %bb.g ] ; 2 uses
  %.pn.i = phi i64 [ %2, %bb.a ], [ %i.ab, %bb.g ]
  %.sroa.03.0.i.i = and i64 %.pn.i, %i.i          ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sroa.03.0.i.i
  %.sroa.0.0.copyload.i34.i = load <16 x i8>, ptr %i.n, align 1, !noalias !177 ; 2 uses
  %i.o = icmp eq <16 x i8> %.sroa.0.0.copyload.i34.i, %i.l
  %i.p = bitcast <16 x i1> %i.o to i16
  br label %bb.c

bb.c:                                             ; preds = %_RNCINvMs6_NtCs454tfXuUxcf_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCsbPnb37KEv9e_8indexmap5inner10equivalentNtNtCsbwPL7qM37dJ_14libsignal_core7address9ServiceIdNtNtCs4tP8yUXWbFU_18libsignal_protocol13sealed_sender34SealedSenderV2SentMessageRecipientB1K_E0E0B2E_.exit.i, %bb.b
  %.sroa.013.0.i = phi i16 [ %i.p, %bb.b ], [ %i.t, %_RNCINvMs6_NtCs454tfXuUxcf_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCsbPnb37KEv9e_8indexmap5inner10equivalentNtNtCsbwPL7qM37dJ_14libsignal_core7address9ServiceIdNtNtCs4tP8yUXWbFU_18libsignal_protocol13sealed_sender34SealedSenderV2SentMessageRecipientB1K_E0E0B2E_.exit.i ] ; 4 uses
  %.not.i.not.i = icmp eq i16 %.sroa.013.0.i, 0
  br i1 %.not.i.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.013.0.i, i1 true)
  %i.r = zext nneg i16 %i.q to i64
  %i.s = add i16 %.sroa.013.0.i, -1
  %i.t = and i16 %i.s, %.sroa.013.0.i
  %i.u = add i64 %.sroa.03.0.i.i, %i.r            ; 2 uses
  %i.v = icmp ult i64 %i.u, %.sroa.03.0.i.i
  br i1 %i.v, label %bb.l, label %bb.j

bb.e:                                             ; preds = %bb.c
  %i.w = icmp eq <16 x i8> %.sroa.0.0.copyload.i34.i, splat (i8 -1)
  %i.x = bitcast <16 x i1> %i.w to i16
  %i.y = icmp eq i16 %i.x, 0
  br i1 %i.y, label %bb.f, label %bb.n, !prof !10

bb.f:                                             ; preds = %bb.e
  %i.z = icmp eq i64 %.sroa.07.0.i.i, -16
  br i1 %i.z, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aa = add nuw i64 %.sroa.07.0.i.i, 16         ; 2 uses
  %i.ab = add i64 %.sroa.03.0.i.i, %i.aa          ; 2 uses
  %i.ac = icmp ult i64 %i.ab, %.sroa.03.0.i.i
  br i1 %i.ac, label %bb.i, label %bb.b

bb.h:                                             ; preds = %bb.f
  tail call void @_RNvNtNtCsgxBkk5gSRhY_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @32) #22, !noalias !178
  unreachable

bb.i:                                             ; preds = %bb.g
  tail call void @_RNvNtNtCsgxBkk5gSRhY_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @33) #22, !noalias !178
  unreachable

bb.j:                                             ; preds = %bb.d
  %i.ad = and i64 %i.u, %i.i                      ; 2 uses
  %i.ae = sub nsw i64 0, %i.ad
  %i.af = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.ae
  %i.ag = getelementptr inbounds i8, ptr %i.af, i64 -8
  %.val.i.i = load i64, ptr %i.ag, align 8, !noalias !179, !noundef !4 ; 4 uses
  %i.ah = icmp ult i64 %.val.i.i, %i.d
  br i1 %i.ah, label %_RNCINvMs6_NtCs454tfXuUxcf_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCsbPnb37KEv9e_8indexmap5inner10equivalentNtNtCsbwPL7qM37dJ_14libsignal_core7address9ServiceIdNtNtCs4tP8yUXWbFU_18libsignal_protocol13sealed_sender34SealedSenderV2SentMessageRecipientB1K_E0E0B2E_.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking18panic_bounds_check(i64 noundef %.val.i.i, i64 noundef %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #22, !noalias !180
  unreachable

_RNCINvMs6_NtCs454tfXuUxcf_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCsbPnb37KEv9e_8indexmap5inner10equivalentNtNtCsbwPL7qM37dJ_14libsignal_core7address9ServiceIdNtNtCs4tP8yUXWbFU_18libsignal_protocol13sealed_sender34SealedSenderV2SentMessageRecipientB1K_E0E0B2E_.exit.i: ; preds = %bb.j
  %i.ai = getelementptr inbounds nuw [72 x i8], ptr %i.b, i64 %.val.i.i ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 48
  %.val3.i.i.i = load i8, ptr %i.aj, align 1, !range !9, !noalias !180, !noundef !4
  %i.ak = getelementptr i8, ptr %i.ai, i64 49
  %.val4.i.i.i = load i128, ptr %i.ak, align 1, !noalias !180
  %i.al = icmp eq i8 %.val.i.i.i, %.val3.i.i.i
  %i.am = icmp eq i128 %.val2.i.i.i, %.val4.i.i.i
  %spec.select.i.i.i.i.i = select i1 %i.al, i1 %i.am, i1 false
  br i1 %spec.select.i.i.i.i.i, label %bb.m, label %bb.c, !prof !13

bb.l:                                             ; preds = %bb.d
  tail call void @_RNvNtNtCsgxBkk5gSRhY_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @34) #22, !noalias !178
  unreachable

bb.m:                                             ; preds = %_RNCINvMs6_NtCs454tfXuUxcf_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCsbPnb37KEv9e_8indexmap5inner10equivalentNtNtCsbwPL7qM37dJ_14libsignal_core7address9ServiceIdNtNtCs4tP8yUXWbFU_18libsignal_protocol13sealed_sender34SealedSenderV2SentMessageRecipientB1K_E0E0B2E_.exit.i
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.an, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.val.i.i, ptr %.sroa.4.0..sroa_idx, align 8
  br label %bb.o

bb.n:                                             ; preds = %bb.e
  %.sroa.55.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %.sroa.55.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(17) %3, i64 17, i1 false)
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.ao, align 8
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n
  %.sink24 = phi i64 [ 24, %bb.m ], [ 16, %bb.n ]
  %.sink = phi i64 [ %i.ad, %bb.m ], [ %2, %bb.n ]
  %storemerge = phi i64 [ 0, %bb.m ], [ 1, %bb.n ]
  %.sroa.52.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 %.sink24
  store i64 %.sink, ptr %.sroa.52.0..sroa_idx, align 8
  store i64 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_NtNtCs4tP8yUXWbFU_18libsignal_protocol13sealed_sender16sealed_sender_v1NtB4_10StaticKeys9calculate(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(64) %1, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(32) %2, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(32) %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef range(i64 0, -9223372036854775808) %5) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [64 x i8], align 1                ; 4 uses
  %i.c = alloca [64 x i8], align 1                ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [176 x i8], align 8               ; 4 uses
  %i.f = alloca [144 x i8], align 8               ; 10 uses
  %.sroa.0 = alloca [32 x i8], align 1            ; 2 uses
  %.sroa.2 = alloca [32 x i8], align 1            ; 2 uses
  %i.g = alloca [96 x i8], align 1                ; 6 uses
  %i.h = alloca [64 x i8], align 1                ; 5 uses
  %i.i = alloca [24 x i8], align 8                ; 6 uses
  %i.j = alloca [32 x i8], align 8                ; 7 uses
  %i.k = alloca [24 x i8], align 8                ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store ptr %3, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 32, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store ptr %4, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store i64 %5, ptr %i.n, align 8
  call void @_RNvXs0_NtCs6i54tJFfzR_5alloc5sliceSRShINtB5_6ConcathE6concatCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.k, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.j, i64 noundef 2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 32
  invoke void @_RNvMs8_NtCsbwPL7qM37dJ_14libsignal_core5curveNtB5_10PrivateKey19calculate_agreement(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.o, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %2)
          to label %bb.c unwind label %bb.b

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxShEECs4tP8yUXWbFU_18libsignal_protocol.exit: ; preds = %bb.k, %.body, %bb.b
  %.pn = phi { ptr, i32 } [ %i.p, %bb.b ], [ %eh.lpad-body, %.body ], [ %eh.lpad-body, %bb.k ]
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef align 8 dereferenceable(24) %i.k) #21
          to label %common.resume unwind label %bb.p

bb.b:                                             ; preds = %bb.a
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxShEECs4tP8yUXWbFU_18libsignal_protocol.exit

bb.c:                                             ; preds = %bb.a
  %i.q = load i64, ptr %i.i, align 8, !range !11, !noundef !4
  %i.r = trunc nuw i64 %i.q to i1
  %i.s = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.07.0.copyload = load ptr, ptr %i.s, align 8 ; 4 uses
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.sroa.48.0.copyload = load i64, ptr %.sroa.48.0..sroa_idx, align 8 ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br i1 %i.r, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.t = ptrtoint ptr %.sroa.07.0.copyload to i64 ; 2 uses
  %trunc = trunc i64 %i.t to i8
  switch i8 %trunc, label %bb.q [
    i8 0, label %bb.u
    i8 1, label %bb.r
    i8 2, label %bb.s
    i8 3, label %bb.t
  ]

bb.e:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.val19 = load ptr, ptr %i.u, align 8, !nonnull !4, !noundef !4
  %i.v = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.val20 = load i64, ptr %i.v, align 8, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !207
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(96) %i.g, i8 0, i64 96, i1 false), !noalias !207
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !208
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !209
  invoke void @_RNvMs_Cs7QbGsRJVG1P_4hkdfINtB4_11GenericHkdfINtCsfkg6qDyjgHi_4hmac4HmacNtCsj2Wav7G13rI_4sha26Sha256EE7extractCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull sret([176 x i8]) align 8 captures(address) dereferenceable(176) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val19, i64 %.val20, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.07.0.copyload, i64 noundef %.sroa.48.0.copyload)
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.f, ptr noundef nonnull align 8 dereferenceable(144) %i.w, i64 144, i1 false), !noalias !209
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !209
  store ptr inttoptr (i64 1 to ptr), ptr %i.d, align 8, !noalias !209
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 0, ptr %i.x, align 8, !noalias !209
  %i.y = invoke noundef zeroext i1 @_RNvMs_Cs7QbGsRJVG1P_4hkdfINtB4_11GenericHkdfINtCsfkg6qDyjgHi_4hmac4HmacNtCsj2Wav7G13rI_4sha26Sha256EE17expand_multi_infoCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.d, i64 noundef 1, ptr noalias nofree noundef nonnull %i.g, i64 noundef 96)
          to label %bb.g unwind label %bb.f, !noalias !207

bb.f:                                             ; preds = %bb.h, %.noexc
  %i.z = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.c, i8 0, i64 64, i1 false), !noalias !210
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(144) %i.f, ptr nonnull align 1 %i.c, i64 64, i1 true), !noalias !207
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void asm sideeffect inteldialect "# ${0:q}", "r,~{memory}"(ptr nonnull align 8 dereferenceable(144) %i.f) #24, !noalias !207, !srcloc !12
  %i.aa = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  invoke void @_RNvXCseNmJmsPJ47l_7zeroizeuNtB2_7Zeroize7zeroizeCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull %i.aa)
          to label %.body unwind label %bb.i, !noalias !207

bb.g:                                             ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !209
  br i1 %i.y, label %bb.h, label %_RNCINvCsbwPL7qM37dJ_14libsignal_core13derive_arraysKj20_KBO_KBO_NCNvMs_NtNtCs4tP8yUXWbFU_18libsignal_protocol13sealed_sender16sealed_sender_v1NtB17_10StaticKeys9calculate0E0B1b_.exit.i, !prof !10

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvNtCsgxBkk5gSRhY_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @15, i64 noundef 19, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @21, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #23
          to label %.noexc.i.i.i unwind label %bb.f, !noalias !207

.noexc.i.i.i:                                     ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.f
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #20, !noalias !207
  unreachable

_RNCINvCsbwPL7qM37dJ_14libsignal_core13derive_arraysKj20_KBO_KBO_NCNvMs_NtNtCs4tP8yUXWbFU_18libsignal_protocol13sealed_sender16sealed_sender_v1NtB17_10StaticKeys9calculate0E0B1b_.exit.i: ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.b, i8 0, i64 64, i1 false), !noalias !211
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(144) %i.f, ptr nonnull align 1 %i.b, i64 64, i1 true), !noalias !207
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void asm sideeffect inteldialect "# ${0:q}", "r,~{memory}"(ptr nonnull align 8 dereferenceable(144) %i.f) #24, !noalias !207, !srcloc !12
  %i.ac = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  invoke void @_RNvXCseNmJmsPJ47l_7zeroizeuNtB2_7Zeroize7zeroizeCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull %i.ac)
          to label %bb.l unwind label %bb.j

bb.j:                                             ; preds = %_RNCINvCsbwPL7qM37dJ_14libsignal_core13derive_arraysKj20_KBO_KBO_NCNvMs_NtNtCs4tP8yUXWbFU_18libsignal_protocol13sealed_sender16sealed_sender_v1NtB17_10StaticKeys9calculate0E0B1b_.exit.i, %bb.e
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.f, %bb.j
  %eh.lpad-body = phi { ptr, i32 } [ %i.ad, %bb.j ], [ %i.z, %bb.f ] ; 2 uses
  %i.ae = icmp eq i64 %.sroa.48.0.copyload, 0
  br i1 %i.ae, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxShEECs4tP8yUXWbFU_18libsignal_protocol.exit, label %bb.k

bb.k:                                             ; preds = %.body
  call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.07.0.copyload, i64 noundef range(i64 1, 0) %.sroa.48.0.copyload, i64 noundef 1) #19
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxShEECs4tP8yUXWbFU_18libsignal_protocol.exit
end_hunk_0
