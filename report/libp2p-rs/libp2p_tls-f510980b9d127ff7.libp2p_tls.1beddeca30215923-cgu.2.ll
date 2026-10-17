Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libp2p-rs/original/libp2p_tls-f510980b9d127ff7.libp2p_tls.1beddeca30215923-cgu.2?download=true
inline.NumInlined: 168
inline.NumDeleted: 113
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RINvMNtCsc4nA9ss4TM1_5yasna6readerNtB3_13BERReaderImpl12read_generalTINtNtCsexYYUdYSQU6_5alloc3vec3VechEB15_ENCINvMs_B3_NtB3_9BERReader13read_sequenceB14_NCNvXsb_NtB5_12deserializerB14_NtB2A_12BERDecodable10decode_ber0E0ECs2oFjxwYQXCx_10libp2p_tls:bb.a
  %i.ba = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i8 -1, ptr %i.ba, align 8, !noalias !20
  invoke void @_RNvXs6_NtCsc4nA9ss4TM1_5yasna12deserializerINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB5_12BERDecodable10decode_ber(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %bb.w unwind label %bb.v, !noalias !20

bb.v:                                             ; preds = %bb.u
  %i.bb = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2oFjxwYQXCx_10libp2p_tls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e) #17
          to label %common.resume unwind label %bb.aa, !noalias !20

bb.w:                                             ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !20
  %i.bc = load i64, ptr %i.b, align 8, !range !8, !noalias !20, !noundef !4 ; 2 uses
  %i.bd = icmp eq i64 %i.bc, -1
  %i.be = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.bf = load i8, ptr %i.be, align 8, !noalias !20 ; 2 uses
  br i1 %i.bd, label %bb.x, label %bb.ac

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !20
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2oFjxwYQXCx_10libp2p_tls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2oFjxwYQXCx_10libp2p_tls.exit.i.i unwind label %bb.y, !noalias !20

bb.y:                                             ; preds = %bb.x
  %i.bg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2oFjxwYQXCx_10libp2p_tls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %common.resume unwind label %bb.z, !noalias !20

bb.z:                                             ; preds = %bb.y
  %i.bh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18, !noalias !20
  unreachable

common.resume:                                    ; preds = %bb.af, %bb.v, %bb.y
  %common.resume.op = phi { ptr, i32 } [ %i.bb, %bb.v ], [ %i.bg, %bb.y ], [ %i.bp, %bb.af ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2oFjxwYQXCx_10libp2p_tls.exit.i.i: ; preds = %bb.x
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2oFjxwYQXCx_10libp2p_tls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e), !noalias !20
  br label %_RNCINvMs_NtCsc4nA9ss4TM1_5yasna6readerNtB7_9BERReader13read_sequenceTINtNtCsexYYUdYSQU6_5alloc3vec3VechEB15_ENCNvXsb_NtB9_12deserializerB14_NtB1R_12BERDecodable10decode_ber0E0Cs2oFjxwYQXCx_10libp2p_tls.exit.thread51

bb.aa:                                            ; preds = %bb.v
  %i.bi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18, !noalias !20
  unreachable

_RNCINvMs_NtCsc4nA9ss4TM1_5yasna6readerNtB7_9BERReader13read_sequenceTINtNtCsexYYUdYSQU6_5alloc3vec3VechEB15_ENCNvXsb_NtB9_12deserializerB14_NtB1R_12BERDecodable10decode_ber0E0Cs2oFjxwYQXCx_10libp2p_tls.exit.thread: ; preds = %bb.o
  store i64 %i.ah, ptr %i.l, align 8
  br label %bb.ab

_RNCINvMs_NtCsc4nA9ss4TM1_5yasna6readerNtB7_9BERReader13read_sequenceTINtNtCsexYYUdYSQU6_5alloc3vec3VechEB15_ENCNvXsb_NtB9_12deserializerB14_NtB1R_12BERDecodable10decode_ber0E0Cs2oFjxwYQXCx_10libp2p_tls.exit.thread51: ; preds = %bb.t, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2oFjxwYQXCx_10libp2p_tls.exit.i.i
  %.sroa.9.0.ph = phi i8 [ %i.bf, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2oFjxwYQXCx_10libp2p_tls.exit.i.i ], [ %i.az, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !20
  br label %bb.ab

bb.ab:                                            ; preds = %_RNCINvMs_NtCsc4nA9ss4TM1_5yasna6readerNtB7_9BERReader13read_sequenceTINtNtCsexYYUdYSQU6_5alloc3vec3VechEB15_ENCNvXsb_NtB9_12deserializerB14_NtB1R_12BERDecodable10decode_ber0E0Cs2oFjxwYQXCx_10libp2p_tls.exit.thread51, %_RNCINvMs_NtCsc4nA9ss4TM1_5yasna6readerNtB7_9BERReader13read_sequenceTINtNtCsexYYUdYSQU6_5alloc3vec3VechEB15_ENCNvXsb_NtB9_12deserializerB14_NtB1R_12BERDecodable10decode_ber0E0Cs2oFjxwYQXCx_10libp2p_tls.exit.thread
  %.sroa.9.150 = phi i8 [ 4, %_RNCINvMs_NtCsc4nA9ss4TM1_5yasna6readerNtB7_9BERReader13read_sequenceTINtNtCsexYYUdYSQU6_5alloc3vec3VechEB15_ENCNvXsb_NtB9_12deserializerB14_NtB1R_12BERDecodable10decode_ber0E0Cs2oFjxwYQXCx_10libp2p_tls.exit.thread ], [ %.sroa.9.0.ph, %_RNCINvMs_NtCsc4nA9ss4TM1_5yasna6readerNtB7_9BERReader13read_sequenceTINtNtCsexYYUdYSQU6_5alloc3vec3VechEB15_ENCNvXsb_NtB9_12deserializerB14_NtB1R_12BERDecodable10decode_ber0E0Cs2oFjxwYQXCx_10libp2p_tls.exit.thread51 ]
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %.sroa.9.150, ptr %i.bj, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.ak

bb.ac:                                            ; preds = %bb.w
  %.sroa.523.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 9
  %.sroa.517.sroa.6.0..sroa.517.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 33
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.517.sroa.6.0..sroa.517.0..sroa_idx.sroa_idx, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.523.0..sroa_idx.i.i, i64 15, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !20
  %.sroa.517.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.517.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.5.0..sroa_idx.i.i, i64 15, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !20
  store i64 %i.aw, ptr %i.f, align 8
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i8 %i.az, ptr %.sroa.416.0..sroa_idx, align 8
  %.sroa.517.sroa.4.0..sroa.517.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store i64 %i.bc, ptr %.sroa.517.sroa.4.0..sroa.517.0..sroa_idx.sroa_idx, align 8
  %.sroa.517.sroa.5.0..sroa.517.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store i8 %i.bf, ptr %.sroa.517.sroa.5.0..sroa.517.0..sroa_idx.sroa_idx, align 8
  %i.bk = load i64, ptr %i.i, align 8, !noundef !4
  %i.bl = add i64 %i.bk, -1
  store i64 %i.bl, ptr %i.i, align 8
  br i1 %i.af, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.bm = load i64, ptr %i.l, align 8, !noundef !4
  %i.bn = load i64, ptr %i.ad, align 8, !noundef !4
  %.not40 = icmp eq i64 %i.bm, %i.bn
  br i1 %.not40, label %bb.ah, label %bb.ai

bb.ae:                                            ; preds = %bb.ac
  %i.bo = invoke noundef i8 @_RNvMNtCsc4nA9ss4TM1_5yasna6readerNtB2_13BERReaderImpl15end_of_contents(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1)
          to label %bb.ag unwind label %bb.af     ; 2 uses

bb.af:                                            ; preds = %bb.ae
  %i.bp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTINtNtCsexYYUdYSQU6_5alloc3vec3VechEBC_EECs2oFjxwYQXCx_10libp2p_tls(ptr noalias nofree noundef align 8 dereferenceable(48) %i.f) #17
          to label %common.resume unwind label %bb.aj

bb.ag:                                            ; preds = %bb.ae
  %.not39 = icmp eq i8 %i.bo, -1
  br i1 %.not39, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ad, %bb.ag
  store ptr %i.ac, ptr %1, align 8, !captures !9
  store i64 %i.ae, ptr %i.ad, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.f, i64 48, i1 false)
  br label %bb.ak

bb.ai:                                            ; preds = %bb.ag, %bb.ad
  %.sink = phi i8 [ 1, %bb.ad ], [ %i.bo, %bb.ag ]
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %.sink, ptr %i.bq, align 8
  store i64 -1, ptr %0, align 8
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTINtNtCsexYYUdYSQU6_5alloc3vec3VechEBC_EECs2oFjxwYQXCx_10libp2p_tls(ptr noalias nofree noundef align 8 dereferenceable(48) %i.f)
  br label %bb.ak

bb.aj:                                            ; preds = %bb.af
  %i.br = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18
  unreachable

bb.ak:                                            ; preds = %bb.ai, %bb.ah, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.al

bb.al:                                            ; preds = %bb.c, %bb.f, %bb.n, %bb.m, %bb.h, %bb.r, %bb.q, %bb.d, %bb.ak
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtCsc4nA9ss4TM1_5yasna6writerNtB3_9DERWriter14write_sequenceuNCNvXsf_NtB5_10serializerTINtNtCsexYYUdYSQU6_5alloc3vec3VechEB1s_ENtB1a_12DEREncodable10encode_der0ECs2oFjxwYQXCx_10libp2p_tls(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [40 x i8], align 8                ; 10 uses
  tail call void @_RNvMNtCsc4nA9ss4TM1_5yasna6writerNtB2_9DERWriter16write_identifier(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 16, i8 noundef 0, i1 noundef zeroext true)
  %.val = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 13 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.val, i64 16 ; 9 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.val, i64 8 ; 7 uses
  %i.f = load i64, ptr %i.d, align 8, !alias.scope !35, !noalias !36, !noundef !4 ; 5 uses
  %i.g = load i64, ptr %.val, align 8, !range !37, !alias.scope !35, !noalias !36, !noundef !4
  %i.h = icmp eq i64 %i.f, %i.g
  br i1 %i.h, label %bb.b, label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCs2oFjxwYQXCx_10libp2p_tls.exit.i

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val) #19
  br label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCs2oFjxwYQXCx_10libp2p_tls.exit.i

_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCs2oFjxwYQXCx_10libp2p_tls.exit.i: ; preds = %bb.b, %bb.a
  %i.i = load ptr, ptr %i.e, align 8, !alias.scope !35, !noalias !36, !nonnull !4, !noundef !4
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.f
  store i8 -1, ptr %i.j, align 1
  %i.k = add i64 %i.f, 1                          ; 4 uses
  store i64 %i.k, ptr %i.d, align 8, !alias.scope !35, !noalias !36
  %i.l = load i64, ptr %.val, align 8, !range !37, !alias.scope !35, !noalias !36, !noundef !4
  %i.m = icmp eq i64 %i.k, %i.l
  br i1 %i.m, label %bb.c, label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCs2oFjxwYQXCx_10libp2p_tls.exit.1.i

bb.c:                                             ; preds = %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCs2oFjxwYQXCx_10libp2p_tls.exit.i
  tail call void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val) #19
  br label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCs2oFjxwYQXCx_10libp2p_tls.exit.1.i

_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCs2oFjxwYQXCx_10libp2p_tls.exit.1.i: ; preds = %bb.c, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCs2oFjxwYQXCx_10libp2p_tls.exit.i
  %i.n = load ptr, ptr %i.e, align 8, !alias.scope !35, !noalias !36, !nonnull !4, !noundef !4
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.k
  store i8 -1, ptr %i.o, align 1
  %i.p = add i64 %i.f, 2                          ; 4 uses
  store i64 %i.p, ptr %i.d, align 8, !alias.scope !35, !noalias !36
  %i.q = load i64, ptr %.val, align 8, !range !37, !alias.scope !35, !noalias !36, !noundef !4
  %i.r = icmp eq i64 %i.p, %i.q
  br i1 %i.r, label %bb.d, label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCs2oFjxwYQXCx_10libp2p_tls.exit.2.i

bb.d:                                             ; preds = %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCs2oFjxwYQXCx_10libp2p_tls.exit.1.i
  tail call void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val) #19
  br label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCs2oFjxwYQXCx_10libp2p_tls.exit.2.i

_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCs2oFjxwYQXCx_10libp2p_tls.exit.2.i: ; preds = %bb.d, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCs2oFjxwYQXCx_10libp2p_tls.exit.1.i
  %i.s = load ptr, ptr %i.e, align 8, !alias.scope !35, !noalias !36, !nonnull !4, !noundef !4
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.p
  store i8 -1, ptr %i.t, align 1
  %i.u = add i64 %i.f, 3                          ; 10 uses
  store i64 %i.u, ptr %i.d, align 8, !alias.scope !35, !noalias !36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !38
  store ptr %.val, ptr %i.b, align 8, !noalias !38
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i8 -1, ptr %i.v, align 8, !noalias !38
  call void @_RNvXs8_NtCsc4nA9ss4TM1_5yasna10serializerINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB5_12DEREncodable10encode_der(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !38
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !38
  store ptr %.val, ptr %i.a, align 8, !noalias !38
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i8 -1, ptr %i.x, align 8, !noalias !38
  call void @_RNvXs8_NtCsc4nA9ss4TM1_5yasna10serializerINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB5_12DEREncodable10encode_der(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.w, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !38
  %i.y = load i64, ptr %i.d, align 8, !noalias !36, !noundef !4 ; 5 uses
  %i.z = icmp sgt i64 %i.y, -1
  call void @llvm.assume(i1 %i.z)
  %i.aa = sub nsw i64 %i.y, %i.u                  ; 4 uses
  %i.ab = icmp ult i64 %i.aa, 128                 ; 2 uses
  br i1 %i.ab, label %.thread.i, label %.preheader.i

.preheader.i:                                     ; preds = %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCs2oFjxwYQXCx_10libp2p_tls.exit.2.i, %.preheader.i
  %.sroa.05.0.i = phi i64 [ %i.af, %.preheader.i ], [ 56, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCs2oFjxwYQXCx_10libp2p_tls.exit.2.i ] ; 6 uses
  %i.ac = and i64 %.sroa.05.0.i, 56
  %i.ad = lshr i64 %i.aa, %i.ac
  %i.ae = icmp eq i64 %i.ad, 0
  %i.af = add i64 %.sroa.05.0.i, -8
  br i1 %i.ae, label %.preheader.i, label %bb.e

bb.e:                                             ; preds = %.preheader.i
  %i.ag = lshr exact i64 %.sroa.05.0.i, 3         ; 2 uses
  %i.ah = add nuw nsw i64 %i.ag, 2                ; 2 uses
  %i.ai = icmp eq i64 %.sroa.05.0.i, 0
  br i1 %i.ai, label %.thread.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not.i = icmp eq i64 %i.ah, 3
  br i1 %.not.i, label %.loopexit7.thread.i, label %bb.o

.thread.i:                                        ; preds = %bb.e, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCs2oFjxwYQXCx_10libp2p_tls.exit.2.i
  %.pre-phi = phi i64 [ %i.p, %bb.e ], [ %i.k, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCs2oFjxwYQXCx_10libp2p_tls.exit.2.i ] ; 2 uses
  %.sroa.0.06.i = phi i64 [ 2, %bb.e ], [ 1, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCs2oFjxwYQXCx_10libp2p_tls.exit.2.i ]
  %.sroa.05.14.i = phi i64 [ 0, %bb.e ], [ 56, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCs2oFjxwYQXCx_10libp2p_tls.exit.2.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !36
  call void @_RINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE5drainINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEECs2oFjxwYQXCx_10libp2p_tls(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val, i64 noundef %.pre-phi, i64 noundef %i.u)
  call void @llvm.experimental.noalias.scope.decl(metadata !39)
  call void @llvm.experimental.noalias.scope.decl(metadata !40)
  %i.aj = load ptr, ptr %i.c, align 8, !alias.scope !41, !noalias !36, !nonnull !4, !noundef !4
  %i.ak = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !alias.scope !41, !noalias !36, !nonnull !4, !noundef !4
  %i.am = icmp eq ptr %i.al, %i.aj
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.ao = load i64, ptr %i.an, align 8, !alias.scope !41, !noalias !36, !noundef !4 ; 5 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.ao, 0          ; 2 uses
  br i1 %i.am, label %bb.g, label %bb.k

bb.g:                                             ; preds = %.thread.i
  br i1 %.not.i.i.i.i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec5drain5DrainhEECs2oFjxwYQXCx_10libp2p_tls.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ap = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8, !alias.scope !41, !noalias !36, !nonnull !4, !noundef !4 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16 ; 2 uses
  %i.as = load i64, ptr %i.ar, align 8, !noalias !41, !noundef !4 ; 4 uses
  %i.at = icmp sgt i64 %i.as, -1
  call void @llvm.assume(i1 %i.at)
  %i.au = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.av = load i64, ptr %i.au, align 8, !alias.scope !41, !noalias !36, !noundef !4 ; 2 uses
  %.not3.i.i.i.i.i = icmp eq i64 %i.av, %i.as
  br i1 %.not3.i.i.i.i.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.j, %bb.h
  %i.aw = add i64 %i.as, %i.ao
  store i64 %i.aw, ptr %i.ar, align 8, !noalias !41
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec5drain5DrainhEECs2oFjxwYQXCx_10libp2p_tls.exit.i

bb.j:                                             ; preds = %bb.h
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !noalias !41, !nonnull !4, !noundef !4 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.av
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.as
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ba, ptr nonnull align 1 %i.az, i64 %i.ao, i1 false), !noalias !41
  br label %bb.i

bb.k:                                             ; preds = %.thread.i
  br i1 %.not.i.i.i.i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec5drain5DrainhEECs2oFjxwYQXCx_10libp2p_tls.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bb = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8, !alias.scope !41, !noalias !36, !nonnull !4, !noundef !4 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16 ; 2 uses
  %i.be = load i64, ptr %i.bd, align 8, !noalias !41, !noundef !4 ; 4 uses
  %i.bf = icmp sgt i64 %i.be, -1
  call void @llvm.assume(i1 %i.bf)
  %i.bg = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.bh = load i64, ptr %i.bg, align 8, !alias.scope !41, !noalias !36, !noundef !4 ; 2 uses
  %.not3.i.i9.i.i.i = icmp eq i64 %i.bh, %i.be
  br i1 %.not3.i.i9.i.i.i, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.n, %bb.l
  %i.bi = add i64 %i.be, %i.ao
  store i64 %i.bi, ptr %i.bd, align 8, !noalias !41
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec5drain5DrainhEECs2oFjxwYQXCx_10libp2p_tls.exit.i

bb.n:                                             ; preds = %bb.l
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8, !noalias !41, !nonnull !4, !noundef !4 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.bh
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.be
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.bm, ptr nonnull align 1 %i.bl, i64 %i.ao, i1 false), !noalias !41
  br label %bb.m

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec5drain5DrainhEECs2oFjxwYQXCx_10libp2p_tls.exit.i: ; preds = %bb.m, %bb.k, %bb.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !36
  %.pre.pre = load i64, ptr %i.d, align 8, !noalias !36
  br label %.loopexit7.i

bb.o:                                             ; preds = %bb.f
  %i.bn = add nsw i64 %i.ag, -1                   ; 3 uses
  %i.bo = add nuw i64 %i.bn, %i.u                 ; 2 uses
  %.not18.i = icmp eq i64 %i.bn, 0
  br i1 %.not18.i, label %.loopexit7.thread.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.o
  %i.bp = icmp samesign ult i64 %i.y, %i.u
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE10insert_mutCs2oFjxwYQXCx_10libp2p_tls.exit.i
  %i.bq = phi i64 [ %i.by, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE10insert_mutCs2oFjxwYQXCx_10libp2p_tls.exit.i ], [ %i.y, %.lr.ph.i.preheader ] ; 6 uses
  %.sroa.024.012.i = phi i64 [ %i.br, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE10insert_mutCs2oFjxwYQXCx_10libp2p_tls.exit.i ], [ 0, %.lr.ph.i.preheader ]
  %i.br = add nuw i64 %.sroa.024.012.i, 1         ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !42)
  %i.bs = icmp sgt i64 %i.bq, -1
  call void @llvm.assume(i1 %i.bs)
  br i1 %i.bp, label %5, label %2, !prof !6

2:                                                ; preds = %.lr.ph.i
  %3 = load i64, ptr %.val, align 8, !range !37, !alias.scope !42, !noalias !36, !noundef !4
  %4 = icmp eq i64 %i.bq, %3
  br i1 %4, label %bb.p, label %bb.q

5:                                                ; preds = %.lr.ph.i
  call void @_RNvNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecppE10insert_mut13assert_failed(i64 noundef range(i64 0, -9223372036854775808) %i.u, i64 noundef %i.bq, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #20, !noalias !42
  unreachable

bb.p:                                             ; preds = %2
  call void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val) #19
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %2
  %i.bt = load ptr, ptr %i.e, align 8, !alias.scope !42, !noalias !36, !nonnull !4, !noundef !4
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.u ; 3 uses
  %i.bv = icmp samesign ult i64 %i.u, %i.bq
  br i1 %i.bv, label %bb.r, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE10insert_mutCs2oFjxwYQXCx_10libp2p_tls.exit.i

bb.r:                                             ; preds = %bb.q
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bu, i64 1
  %i.bx = sub nuw nsw i64 %i.bq, %i.u
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.bw, ptr nonnull align 1 %i.bu, i64 %i.bx, i1 false)
  br label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE10insert_mutCs2oFjxwYQXCx_10libp2p_tls.exit.i

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE10insert_mutCs2oFjxwYQXCx_10libp2p_tls.exit.i: ; preds = %bb.r, %bb.q
  store i8 0, ptr %i.bu, align 1
  %i.by = add nuw i64 %i.bq, 1                    ; 3 uses
  store i64 %i.by, ptr %i.d, align 8, !alias.scope !42, !noalias !36
  %exitcond.not.i = icmp eq i64 %i.br, %i.bn
  br i1 %exitcond.not.i, label %.loopexit7.i, label %.lr.ph.i

.loopexit7.thread.i:                              ; preds = %bb.o, %bb.f
  %.sroa.012.0.ph.i = phi i64 [ %i.bo, %bb.o ], [ %i.u, %bb.f ]
  %i.bz = add i64 %.sroa.012.0.ph.i, -3
  br label %bb.s

.loopexit7.i:                                     ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE10insert_mutCs2oFjxwYQXCx_10libp2p_tls.exit.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec5drain5DrainhEECs2oFjxwYQXCx_10libp2p_tls.exit.i
  %.pre = phi i64 [ %.pre.pre, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec5drain5DrainhEECs2oFjxwYQXCx_10libp2p_tls.exit.i ], [ %i.by, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE10insert_mutCs2oFjxwYQXCx_10libp2p_tls.exit.i ] ; 3 uses
  %.sroa.0.05.i = phi i64 [ %.sroa.0.06.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec5drain5DrainhEECs2oFjxwYQXCx_10libp2p_tls.exit.i ], [ %i.ah, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE10insert_mutCs2oFjxwYQXCx_10libp2p_tls.exit.i ]
  %.sroa.05.13.i = phi i64 [ %.sroa.05.14.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec5drain5DrainhEECs2oFjxwYQXCx_10libp2p_tls.exit.i ], [ %.sroa.05.0.i, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE10insert_mutCs2oFjxwYQXCx_10libp2p_tls.exit.i ]
  %.sroa.012.0.i = phi i64 [ %.pre-phi, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec5drain5DrainhEECs2oFjxwYQXCx_10libp2p_tls.exit.i ], [ %i.bo, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE10insert_mutCs2oFjxwYQXCx_10libp2p_tls.exit.i ]
  %i.ca = sub i64 %.sroa.012.0.i, %.sroa.0.05.i   ; 4 uses
  br i1 %i.ab, label %bb.t, label %bb.s

bb.s:                                             ; preds = %.loopexit7.i, %.loopexit7.thread.i
  %i.cb = phi i64 [ %i.y, %.loopexit7.thread.i ], [ %.pre, %.loopexit7.i ] ; 2 uses
  %i.cc = phi i64 [ %i.bz, %.loopexit7.thread.i ], [ %i.ca, %.loopexit7.i ] ; 4 uses
  %.sroa.05.1347.i = phi i64 [ %.sroa.05.0.i, %.loopexit7.thread.i ], [ %.sroa.05.13.i, %.loopexit7.i ] ; 2 uses
  %i.cd = icmp ult i64 %i.cc, %i.cb
  br i1 %i.cd, label %bb.u, label %bb.v

bb.t:                                             ; preds = %.loopexit7.i
  %i.ce = icmp ult i64 %i.ca, %.pre
  br i1 %i.ce, label %bb.x, label %bb.y

bb.u:                                             ; preds = %bb.s
  %i.cf = load ptr, ptr %i.e, align 8, !noalias !36, !nonnull !4, !noundef !4
  %i.cg = lshr exact i64 %.sroa.05.1347.i, 3
  %i.ch = trunc i64 %i.cg to i8
  %i.ci = add i8 %i.ch, 1
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.cc
  %i.ck = or i8 %i.ci, -128
  store i8 %i.ck, ptr %i.cj, align 1
  %.sroa.014.013.i = add nuw i64 %i.cc, 1         ; 3 uses
  %i.cl = load i64, ptr %i.d, align 8, !noalias !36, !noundef !4 ; 2 uses
  %i.cm = icmp ult i64 %.sroa.014.013.i, %i.cl
  br i1 %i.cm, label %.lr.ph16.i, label %._crit_edge.i

bb.v:                                             ; preds = %bb.s
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.cc, i64 noundef %i.cb, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #20
  unreachable

bb.w:                                             ; preds = %.lr.ph16.i
  %i.cn = add i64 %.sroa.05.214.i, -8
  %.sroa.014.0.i = add nuw i64 %.sroa.014.015.i, 1 ; 3 uses
  %i.co = load i64, ptr %i.d, align 8, !noalias !36, !noundef !4 ; 2 uses
  %i.cp = icmp ult i64 %.sroa.014.0.i, %i.co
  br i1 %i.cp, label %.lr.ph16.i, label %._crit_edge.i

.lr.ph16.i:                                       ; preds = %bb.u, %bb.w
  %.sroa.014.015.i = phi i64 [ %.sroa.014.0.i, %bb.w ], [ %.sroa.014.013.i, %bb.u ] ; 2 uses
  %.sroa.05.214.i = phi i64 [ %i.cn, %bb.w ], [ %.sroa.05.1347.i, %bb.u ] ; 3 uses
  %i.cq = load ptr, ptr %i.e, align 8, !noalias !36, !nonnull !4, !noundef !4
  %i.cr = and i64 %.sroa.05.214.i, 56
  %i.cs = lshr i64 %i.aa, %i.cr
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cq, i64 %.sroa.014.015.i
  %i.cu = trunc i64 %i.cs to i8
  store i8 %i.cu, ptr %i.ct, align 1
  %i.cv = icmp eq i64 %.sroa.05.214.i, 0
  br i1 %i.cv, label %_RINvMNtCsc4nA9ss4TM1_5yasna6writerNtB3_9DERWriter11with_lengthuNCINvB2_14write_sequenceuNCNvXsf_NtB5_10serializerTINtNtCsexYYUdYSQU6_5alloc3vec3VechEB1O_ENtB1w_12DEREncodable10encode_der0E0ECs2oFjxwYQXCx_10libp2p_tls.exit, label %bb.w

._crit_edge.i:                                    ; preds = %bb.w, %bb.u
  %.sroa.014.0.lcssa.i = phi i64 [ %.sroa.014.013.i, %bb.u ], [ %.sroa.014.0.i, %bb.w ]
  %.lcssa.i = phi i64 [ %i.cl, %bb.u ], [ %i.co, %bb.w ]
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.sroa.014.0.lcssa.i, i64 noundef %.lcssa.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #20
  unreachable

bb.x:                                             ; preds = %bb.t
  %i.cw = load ptr, ptr %i.e, align 8, !noalias !36, !nonnull !4, !noundef !4
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 %i.ca
  %i.cy = trunc nuw nsw i64 %i.aa to i8
  store i8 %i.cy, ptr %i.cx, align 1
  br label %_RINvMNtCsc4nA9ss4TM1_5yasna6writerNtB3_9DERWriter11with_lengthuNCINvB2_14write_sequenceuNCNvXsf_NtB5_10serializerTINtNtCsexYYUdYSQU6_5alloc3vec3VechEB1O_ENtB1w_12DEREncodable10encode_der0E0ECs2oFjxwYQXCx_10libp2p_tls.exit

bb.y:                                             ; preds = %bb.t
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.ca, i64 noundef %.pre, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #20
  unreachable

_RINvMNtCsc4nA9ss4TM1_5yasna6writerNtB3_9DERWriter11with_lengthuNCINvB2_14write_sequenceuNCNvXsf_NtB5_10serializerTINtNtCsexYYUdYSQU6_5alloc3vec3VechEB1O_ENtB1w_12DEREncodable10encode_der0E0ECs2oFjxwYQXCx_10libp2p_tls.exit: ; preds = %.lr.ph16.i, %bb.x
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCsc4nA9ss4TM1_5yasna6reader17parse_ber_generalTINtNtCsexYYUdYSQU6_5alloc3vec3VechEBP_ENCINvNtB4_12deserializer18decode_ber_generalBO_E0ECs2oFjxwYQXCx_10libp2p_tls(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) initializes((0, 9)) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2, i1 noundef zeroext %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [48 x i8], align 8                ; 7 uses
  %i.c = alloca [48 x i8], align 8                ; 7 uses
  %i.d = alloca [40 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %1, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  store i64 %2, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  store i64 0, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.h = zext i1 %3 to i8
  store i8 %i.h, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 0, ptr %i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i8 -1, ptr %.sroa.5.0..sroa_idx, align 8
  call void @_RNvXsb_NtCsc4nA9ss4TM1_5yasna12deserializerTINtNtCsexYYUdYSQU6_5alloc3vec3VechEBG_ENtB5_12BERDecodable10decode_berCs2oFjxwYQXCx_10libp2p_tls(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.j = load i64, ptr %i.b, align 8, !range !8, !noundef !4 ; 2 uses
  %i.k = icmp eq i64 %i.j, -1
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.m = load i8, ptr %i.l, align 8               ; 2 uses
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.m, ptr %i.n, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %.sroa.512.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 9
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(39) %.sroa.3.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(39) %.sroa.512.0..sroa_idx, i64 39, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 %i.j, ptr %i.c, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i8 %i.m, ptr %.sroa.2.0..sroa_idx, align 8
  %i.o = load i64, ptr %i.f, align 8, !noundef !4
  %i.p = load i64, ptr %i.e, align 8, !noundef !4
  %.not = icmp eq i64 %i.o, %i.p
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.c, i64 48, i1 false)
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.q, align 8
  store i64 -1, ptr %0, align 8
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTINtNtCsexYYUdYSQU6_5alloc3vec3VechEBC_EECs2oFjxwYQXCx_10libp2p_tls(ptr noalias nofree noundef align 8 dereferenceable(48) %i.c)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCsc4nA9ss4TM1_5yasna6writer13construct_derNCINvNtB4_10serializer10encode_derTINtNtCsexYYUdYSQU6_5alloc3vec3VechEB1j_EE0ECs2oFjxwYQXCx_10libp2p_tls(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 0, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 0, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i8 -1, ptr %.sroa.5.0..sroa_idx, align 8
  invoke void @_RNvXsf_NtCsc4nA9ss4TM1_5yasna10serializerTINtNtCsexYYUdYSQU6_5alloc3vec3VechEBE_ENtB5_12DEREncodable10encode_derCs2oFjxwYQXCx_10libp2p_tls(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %_RNCINvNtCsc4nA9ss4TM1_5yasna10serializer10encode_derTINtNtCsexYYUdYSQU6_5alloc3vec3VechEBP_EE0Cs2oFjxwYQXCx_10libp2p_tls.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2oFjxwYQXCx_10libp2p_tls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b) #17
          to label %bb.d unwind label %bb.c

_RNCINvNtCsc4nA9ss4TM1_5yasna10serializer10encode_derTINtNtCsexYYUdYSQU6_5alloc3vec3VechEBP_EE0Cs2oFjxwYQXCx_10libp2p_tls.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
end_hunk_0
