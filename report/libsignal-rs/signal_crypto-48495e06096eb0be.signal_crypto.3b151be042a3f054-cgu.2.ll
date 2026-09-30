Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libsignal-rs/original/signal_crypto-48495e06096eb0be.signal_crypto.3b151be042a3f054-cgu.2?download=true
inline.NumInlined: 111
inline.NumDeleted: 60
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_RNvMs5_CsdZ6zx9bXGuc_7hpke_rsINtB5_4HpkeNtNtNtCs54uEYnqmHDA_13signal_crypto4hpke8provider14CryptoProviderE4sealBI_:bb.a
bb.ar:                                            ; preds = %bb.aq
  %i.cg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #17, !noalias !241
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs54uEYnqmHDA_13signal_crypto.exit7.i: ; preds = %bb.ap
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs54uEYnqmHDA_13signal_crypto(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %.noexc18 unwind label %bb.as

.noexc18:                                         ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs54uEYnqmHDA_13signal_crypto.exit7.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !240
  br label %.noexc17

bb.as:                                            ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs54uEYnqmHDA_13signal_crypto.exit7.i, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs54uEYnqmHDA_13signal_crypto.exit5.i, %bb.ad
  %i.ch = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.ae, %.body.i14, %bb.am, %bb.aq, %bb.as
  %eh.lpad-body = phi { ptr, i32 } [ %i.ch, %bb.as ], [ %eh.lpad-body.i15, %.body.i14 ], [ %i.cc, %bb.am ], [ %i.bs, %bb.ae ], [ %i.cf, %bb.aq ]
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtCsdZ6zx9bXGuc_7hpke_rs7ContextNtNtNtCs54uEYnqmHDA_13signal_crypto4hpke8provider14CryptoProviderEEB1e_(ptr noalias nofree noundef align 16 dereferenceable(416) %i.m) #15
          to label %.thread48 unwind label %bb.az

bb.at:                                            ; preds = %.noexc17, %bb.ac
  %.sroa.819.1.ph = phi i64 [ -9223372036854775807, %bb.ac ], [ %.sroa.819.0, %.noexc17 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.sroa.7, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.14, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14)
  %.sroa.443.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.443.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.sroa.7, i64 16, i1 false)
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.819.1.ph, ptr %i.ci, align 8
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.sroa.7)
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtCsdZ6zx9bXGuc_7hpke_rs7ContextNtNtNtCs54uEYnqmHDA_13signal_crypto4hpke8provider14CryptoProviderEEB1e_(ptr noalias nofree noundef align 16 dereferenceable(416) %i.m)
          to label %bb.aw unwind label %.thread53

.thread53:                                        ; preds = %bb.at
  %i.cj = landingpad { ptr, i32 }
          cleanup
  br label %.thread48

bb.au:                                            ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs54uEYnqmHDA_13signal_crypto.exit.i16
  %i.ck = add nuw i64 %i.ca, 1
  store i64 %i.ck, ptr %i.bz, align 16, !alias.scope !242, !noalias !243
  %.sroa.819.8.copyload21 = load i64, ptr %i.d, align 8, !noalias !244
  %.sroa.14.8..sroa_idx24 = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.14, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.14.8..sroa_idx24, i64 16, i1 false), !noalias !244
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !240
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.sroa.7, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.14, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14)
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.sroa.7, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.sroa.7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false)
  %.sroa.435.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.819.8.copyload21, ptr %.sroa.435.0..sroa_idx, align 8
  call fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtCsdZ6zx9bXGuc_7hpke_rs7ContextNtNtNtCs54uEYnqmHDA_13signal_crypto4hpke8provider14CryptoProviderEEB1e_(ptr noalias nofree noundef align 16 dereferenceable(416) %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %bb.av

bb.av:                                            ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs54uEYnqmHDA_13signal_crypto.exit, %bb.au, %bb.ab
  ret void

bb.aw:                                            ; preds = %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  invoke void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs54uEYnqmHDA_13signal_crypto(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs54uEYnqmHDA_13signal_crypto.exit unwind label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.cl = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs54uEYnqmHDA_13signal_crypto(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %common.resume unwind label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.cm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs54uEYnqmHDA_13signal_crypto.exit: ; preds = %bb.aw
  call void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs54uEYnqmHDA_13signal_crypto(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %bb.av

bb.az:                                            ; preds = %.thread48, %.body
  %i.cn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #17
  unreachable

.thread48:                                        ; preds = %.body, %.thread53
  %.pn52 = phi { ptr, i32 } [ %i.cj, %.thread53 ], [ %eh.lpad-body, %.body ]
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs54uEYnqmHDA_13signal_crypto(ptr noalias nofree noundef align 8 dereferenceable(24) %i.n) #15
          to label %common.resume unwind label %bb.az
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_NtCs54uEYnqmHDA_13signal_crypto7aes_gcmNtB4_19Aes256GcmEncryption11compute_tag(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 1 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 16 captures(address) dead_on_return dereferenceable(1216) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [208 x i8], align 16              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 1008
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(208) %i.a, ptr noundef nonnull align 16 dereferenceable(208) %i.b, i64 208, i1 false)
  invoke fastcc void @_RNvMNtCs54uEYnqmHDA_13signal_crypto7aes_gcmNtB2_8GcmGhash8finalize(ptr noalias nofree noundef align 1 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 16 captures(address) dereferenceable(208) %i.a)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs54uEYnqmHDA_13signal_crypto7aes_ctr11Aes256Ctr32EBF_(ptr noalias nofree noundef align 16 dereferenceable(1008) %1) #15
          to label %bb.e unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs54uEYnqmHDA_13signal_crypto7aes_ctr11Aes256Ctr32EBF_(ptr noalias nofree noundef align 16 dereferenceable(1008) %1)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #17
  unreachable

bb.e:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.c
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_NtCs54uEYnqmHDA_13signal_crypto7aes_gcmNtB4_19Aes256GcmEncryption3new(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([1232 x i8]) align 16 captures(none) dereferenceable(1232) initializes((0, 8), (16, 48)) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef range(i64 0, -9223372036854775808) %4, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %5, i64 noundef range(i64 0, -9223372036854775808) %6) unnamed_addr #0 {
bb.a:
  %i.a = alloca [1232 x i8], align 16             ; 5 uses
  %i.b = alloca [1216 x i8], align 16             ; 5 uses
  call fastcc void @_RNvNtCs54uEYnqmHDA_13signal_crypto7aes_gcm9setup_gcm(ptr noalias nofree noundef align 16 captures(none) dereferenceable(1232) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %5, i64 noundef %6)
  %i.c = load i64, ptr %i.a, align 16, !range !8, !noundef !6
  %i.d = trunc nuw i64 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.f, ptr noundef nonnull align 8 dereferenceable(40) %i.e, i64 40, i1 false)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1008) %i.b, ptr noundef nonnull align 16 dereferenceable(1008) %i.g, i64 1008, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 1008
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 1024
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(208) %i.h, ptr noundef nonnull align 16 dereferenceable(208) %i.i, i64 208, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1216) %i.j, ptr noundef nonnull align 16 dereferenceable(1216) %i.b, i64 1216, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink = phi i64 [ 1, %bb.b ], [ 0, %bb.c ]
  store i64 %.sink, ptr %0, align 16
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_NtCs54uEYnqmHDA_13signal_crypto7aes_gcmNtB4_19Aes256GcmEncryption7encrypt(ptr noalias nofree noundef align 16 dereferenceable(1216) %0, ptr noalias nofree noundef nonnull %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #0 {
bb.a:
  tail call void @_RNvMNtCs54uEYnqmHDA_13signal_crypto7aes_ctrNtB2_11Aes256Ctr327process(ptr noalias nofree noundef nonnull align 16 dereferenceable(1008) %0, ptr noalias nofree noundef nonnull %1, i64 noundef %2)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1008
  tail call fastcc void @_RNvMNtCs54uEYnqmHDA_13signal_crypto7aes_gcmNtB2_8GcmGhash6update(ptr noalias nofree noundef align 16 dereferenceable(208) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtCs54uEYnqmHDA_13signal_crypto7aes_gcm9setup_gcm(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 16 captures(none) dereferenceable(1232) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef range(i64 0, -9223372036854775808) %4, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %5, i64 noundef range(i64 0, -9223372036854775808) %6) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [16 x i8], align 1                ; 5 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [16 x i8], align 1                ; 4 uses
  %i.f = alloca [144 x i8], align 16              ; 13 uses
  %i.g = alloca [16 x i8], align 16               ; 5 uses
  %.sroa.0.i = alloca [176 x i8], align 16        ; 6 uses
  %i.h = alloca [144 x i8], align 16              ; 15 uses
  %i.i = alloca [8 x i8], align 8                 ; 4 uses
  %i.j = alloca [240 x i8], align 16              ; 4 uses
  %i.k = alloca [240 x i8], align 16              ; 14 uses
  %i.l = alloca [480 x i8], align 16              ; 5 uses
  %i.m = alloca [960 x i8], align 16              ; 4 uses
  %i.n = alloca [1024 x i8], align 16             ; 4 uses
  %.sroa.036 = alloca [1184 x i8], align 16       ; 5 uses
  %i.o = alloca [16 x i8], align 1                ; 4 uses
  %.sroa.5 = alloca [184 x i8], align 8           ; 3 uses
  %.sroa.512.sroa.0 = alloca [184 x i8], align 8  ; 3 uses
  %i.p = alloca [16 x i8], align 1                ; 5 uses
  %i.q = alloca [960 x i8], align 16              ; 4 uses
  %i.r = alloca [1008 x i8], align 16             ; 7 uses
  %i.s = alloca [16 x i8], align 1                ; 15 uses
  %i.t = alloca [960 x i8], align 16              ; 6 uses
  %i.u = icmp eq i64 %4, 12
  br i1 %i.u, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  %i.v = icmp eq i64 %2, 32
  br i1 %i.v, label %bb.d, label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -9223372036854775807, ptr %i.w, align 8
  store i64 1, ptr %0, align 16
  br label %bb.w

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.x = load atomic i8, ptr @_RNvNtNtNtCs8pp35hPiiF8_3aes3x868features12features_aes7STORAGE monotonic, align 1, !noalias !278
  switch i8 %i.x, label %bb.e [
    i8 -1, label %.split.i
    i8 1, label %bb.f
  ], !prof !279

.split.i:                                         ; preds = %bb.d
  %i.y = tail call noundef zeroext i1 @_RNvNvNtNtNtCs8pp35hPiiF8_3aes3x868features12features_aes8init_get10init_inner(), !noalias !278
  br i1 %i.y, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.split.i, %bb.d
  call void @_RNvNtNtCs8pp35hPiiF8_3aes4soft8fixslice19aes256_key_schedule(ptr noalias nofree noundef nonnull sret([960 x i8]) align 8 captures(none) dereferenceable(960) %i.m, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %1)
  br label %_RNvXs13_NtCs8pp35hPiiF8_3aes10autodetectNtB6_6Aes256NtCs17IHq5a1FQ2_13crypto_common7KeyInit3new.exit

bb.f:                                             ; preds = %.split.i, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !280
  call void @_RNvNtNtNtNtCs8pp35hPiiF8_3aes3x862ni6expand6aes25610expand_key(ptr noalias nofree noundef nonnull sret([240 x i8]) align 16 captures(none) dereferenceable(240) %i.k, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %1), !noalias !281
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !280
  invoke void @_RINvNtNtNtCs8pp35hPiiF8_3aes3x862ni6expand8inv_keysKjf_ECs54uEYnqmHDA_13signal_crypto(ptr noalias nofree noundef nonnull sret([240 x i8]) align 16 captures(address) dereferenceable(240) %i.j, ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(240) %i.k)
          to label %_RNvXs1d_NtCs8pp35hPiiF8_3aes3x86NtB6_6Aes256NtCs17IHq5a1FQ2_13crypto_common7KeyInit3new.exit.i unwind label %bb.g, !noalias !281

bb.g:                                             ; preds = %bb.f
  %i.z = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !282)
  call void @llvm.experimental.noalias.scope.decl(metadata !283)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !284
  store ptr %i.k, ptr %i.i, align 8, !noalias !284
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %bb.g
  %.sroa.0.02.i.i.i.i = phi i64 [ 0, %bb.g ], [ %i.an, %bb.h ] ; 9 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.k, i64 %.sroa.0.02.i.i.i.i
  store volatile i8 0, ptr %i.aa, align 8, !alias.scope !285, !noalias !280
  %i.ab = getelementptr inbounds nuw i8, ptr %i.k, i64 %.sroa.0.02.i.i.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 1
  store volatile i8 0, ptr %i.ac, align 1, !alias.scope !285, !noalias !280
  %i.ad = getelementptr inbounds nuw i8, ptr %i.k, i64 %.sroa.0.02.i.i.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 2
  store volatile i8 0, ptr %i.ae, align 2, !alias.scope !285, !noalias !280
  %i.af = getelementptr inbounds nuw i8, ptr %i.k, i64 %.sroa.0.02.i.i.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 3
  store volatile i8 0, ptr %i.ag, align 1, !alias.scope !285, !noalias !280
  %i.ah = getelementptr inbounds nuw i8, ptr %i.k, i64 %.sroa.0.02.i.i.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  store volatile i8 0, ptr %i.ai, align 4, !alias.scope !285, !noalias !280
  %i.aj = getelementptr inbounds nuw i8, ptr %i.k, i64 %.sroa.0.02.i.i.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 5
  store volatile i8 0, ptr %i.ak, align 1, !alias.scope !285, !noalias !280
  %i.al = getelementptr inbounds nuw i8, ptr %i.k, i64 %.sroa.0.02.i.i.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 6
  store volatile i8 0, ptr %i.am, align 2, !alias.scope !285, !noalias !280
  %i.an = add nuw nsw i64 %.sroa.0.02.i.i.i.i, 8  ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.k, i64 %.sroa.0.02.i.i.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 7
  store volatile i8 0, ptr %i.ap, align 1, !alias.scope !285, !noalias !280
  %exitcond.not.i.i.i.i.7 = icmp eq i64 %i.an, 240
  br i1 %exitcond.not.i.i.i.i.7, label %bb.i, label %bb.h

common.resume:                                    ; preds = %bb.aa, %.body, %bb.i
  %common.resume.op = phi { ptr, i32 } [ %i.z, %bb.i ], [ %eh.lpad-body, %.body ], [ %lpad.thr_comm.split-lp, %bb.aa ]
  resume { ptr, i32 } %common.resume.op

bb.i:                                             ; preds = %bb.h
  call void asm sideeffect inteldialect "# ${0:q}", "r,~{memory}"(ptr nonnull %i.i) #16, !noalias !281, !srcloc !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !284
  br label %common.resume

_RNvXs1d_NtCs8pp35hPiiF8_3aes3x86NtB6_6Aes256NtCs17IHq5a1FQ2_13crypto_common7KeyInit3new.exit.i: ; preds = %bb.f
  %i.aq = getelementptr inbounds nuw i8, ptr %i.l, i64 240
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(240) %i.aq, ptr noundef nonnull align 16 dereferenceable(240) %i.j, i64 240, i1 false), !noalias !278
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !280
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(480) %i.l, ptr noundef nonnull align 16 dereferenceable(240) %i.k, i64 240, i1 false), !noalias !278
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !280
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(480) %i.m, ptr noundef nonnull align 16 dereferenceable(480) %i.l, i64 480, i1 false)
  br label %_RNvXs13_NtCs8pp35hPiiF8_3aes10autodetectNtB6_6Aes256NtCs17IHq5a1FQ2_13crypto_common7KeyInit3new.exit

_RNvXs13_NtCs8pp35hPiiF8_3aes10autodetectNtB6_6Aes256NtCs17IHq5a1FQ2_13crypto_common7KeyInit3new.exit: ; preds = %bb.e, %_RNvXs1d_NtCs8pp35hPiiF8_3aes3x86NtB6_6Aes256NtCs17IHq5a1FQ2_13crypto_common7KeyInit3new.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(960) %i.t, ptr noundef nonnull align 16 dereferenceable(960) %i.m, i64 960, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.s, i8 0, i64 16, i1 false)
  invoke void @_RINvXs16_NtCs8pp35hPiiF8_3aes10autodetectNtB7_6Aes256NtNtCshARBVLlQvfp_6cipher5block18BlockCipherEncrypt20encrypt_with_backendINtNtBR_3ctx8BlockCtxINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIB2m_IB2m_IB2m_IB2m_NtB2o_5UTermNtNtB2q_3bit2B1ENtB3u_2B0EB3I_EB3I_EB3I_EEECs54uEYnqmHDA_13signal_crypto(ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(960) %i.t, ptr noundef nonnull %i.s, ptr noundef nonnull %i.s)
          to label %bb.k unwind label %bb.aa

bb.j:                                             ; preds = %bb.b
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -9223372036854775808, ptr %i.ar, align 8
  store i64 1, ptr %0, align 16
  br label %bb.z

bb.k:                                             ; preds = %_RNvXs13_NtCs8pp35hPiiF8_3aes10autodetectNtB6_6Aes256NtCs17IHq5a1FQ2_13crypto_common7KeyInit3new.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(960) %i.q, ptr noundef nonnull align 16 dereferenceable(960) %i.m, i64 960, i1 false)
  call void @_RNvMNtCs54uEYnqmHDA_13signal_crypto7aes_ctrNtB2_11Aes256Ctr323new(ptr noalias nofree noundef nonnull sret([1024 x i8]) align 16 captures(none) dereferenceable(1024) %i.n, ptr noalias nofree noundef nonnull align 16 captures(address) dereferenceable(960) %i.q, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef 12, i32 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  %i.as = load i64, ptr %i.n, align 16, !range !8, !noundef !6
  %i.at = trunc nuw i64 %i.as to i1
  br i1 %i.at, label %bb.x, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.au = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1008) %i.r, ptr noundef nonnull align 16 dereferenceable(1008) %i.au, i64 1008, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.p, i8 0, i64 16, i1 false)
  invoke void @_RNvMNtCs54uEYnqmHDA_13signal_crypto7aes_ctrNtB2_11Aes256Ctr327process(ptr noalias nofree noundef nonnull align 16 dereferenceable(1008) %i.r, ptr noalias nofree noundef nonnull %i.p, i64 noundef 16)
          to label %bb.n unwind label %bb.m

bb.m:                                             ; preds = %bb.n, %bb.l
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.q, %bb.u, %bb.m
  %eh.lpad-body = phi { ptr, i32 } [ %i.av, %bb.m ], [ %i.bm, %bb.q ], [ %i.ci, %bb.u ]
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs54uEYnqmHDA_13signal_crypto7aes_ctr11Aes256Ctr32EBF_(ptr noalias nofree noundef align 16 dereferenceable(1008) %i.r) #15
          to label %common.resume unwind label %bb.y

bb.n:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.512.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.o, ptr noundef nonnull align 1 dereferenceable(16) %i.p, i64 16, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !286)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !287
  call void @llvm.experimental.noalias.scope.decl(metadata !288)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !289
  %.sroa.0.0.copyload.i.i = load i8, ptr %i.s, align 1, !alias.scope !290, !noalias !291
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  %.sroa.6.0.copyload.i.i = load i8, ptr %.sroa.6.0..sroa_idx.i.i, align 1, !alias.scope !290, !noalias !291
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 2
  %.sroa.8.0.copyload.i.i = load i16, ptr %.sroa.8.0..sroa_idx.i.i, align 1, !alias.scope !290, !noalias !291
  %7 = call i16 @llvm.bswap.i16(i16 %.sroa.8.0.copyload.i.i)
  %8 = zext i16 %7 to i128
  %9 = shl nuw nsw i128 %8, 96
  %.sroa.26.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %.sroa.12.0.copyload.i.i = load i16, ptr %.sroa.26.0..sroa_idx.i.i, align 1, !alias.scope !290, !noalias !291
  %10 = call i16 @llvm.bswap.i16(i16 %.sroa.12.0.copyload.i.i)
  %11 = zext i16 %10 to i128
  %12 = shl nuw nsw i128 %11, 80
  %.sroa.32.0..sroa_idx.i.i.a = getelementptr inbounds nuw i8, ptr %i.s, i64 6
  %.sroa.16.0.copyload.i.i = load i16, ptr %.sroa.32.0..sroa_idx.i.i.a, align 1, !alias.scope !290, !noalias !291
  %13 = call i16 @llvm.bswap.i16(i16 %.sroa.16.0.copyload.i.i)
  %.sroa.34.0.insert.ext.i.i.a = zext i16 %13 to i128
  %.sroa.34.0.insert.shift.i.i.a = shl nuw nsw i128 %.sroa.34.0.insert.ext.i.i.a, 64
  %.sroa.20.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.sroa.20.0.copyload.i.i = load i16, ptr %.sroa.20.0..sroa_idx.i.i, align 1, !alias.scope !290, !noalias !291
  %14 = call i16 @llvm.bswap.i16(i16 %.sroa.20.0.copyload.i.i)
  %.sroa.28.0.insert.ext.i.i = zext i16 %14 to i128
  %.sroa.28.0.insert.shift.i.i = shl nuw nsw i128 %.sroa.28.0.insert.ext.i.i, 48
  %.sroa.24.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 10
  %.sroa.24.0.copyload.i.i = load i16, ptr %.sroa.24.0..sroa_idx.i.i, align 1, !alias.scope !290, !noalias !291
  %15 = call i16 @llvm.bswap.i16(i16 %.sroa.24.0.copyload.i.i)
  %.sroa.22.0.insert.ext.i.i = zext i16 %15 to i128
  %.sroa.22.0.insert.shift.i.i = shl nuw nsw i128 %.sroa.22.0.insert.ext.i.i, 32
  %.sroa.28.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  %.sroa.28.0.copyload.i.i = load i16, ptr %.sroa.28.0..sroa_idx.i.i, align 1, !alias.scope !290, !noalias !291
  %16 = call i16 @llvm.bswap.i16(i16 %.sroa.28.0.copyload.i.i)
  %.sroa.16.0.insert.ext.i.i = zext i16 %16 to i128
  %.sroa.16.0.insert.shift.i.i = shl nuw nsw i128 %.sroa.16.0.insert.ext.i.i, 16
  %.sroa.32.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 14
  %.sroa.32.0.copyload.i.i = load i16, ptr %.sroa.32.0..sroa_idx.i.i, align 1, !alias.scope !290, !noalias !291
  %17 = call i16 @llvm.bswap.i16(i16 %.sroa.32.0.copyload.i.i)
  %.sroa.10.0.insert.ext.i.i = zext i16 %17 to i128
  %.sroa.8.0.insert.ext.i.i = zext i8 %.sroa.0.0.copyload.i.i to i128 ; 2 uses
  %.sroa.8.0.insert.shift.i.i = shl nuw i128 %.sroa.8.0.insert.ext.i.i, 120 ; 2 uses
  %.sroa.6.0.insert.ext.i.i = zext i8 %.sroa.6.0.copyload.i.i to i128
  %.sroa.6.0.insert.shift.i.i = shl nuw nsw i128 %.sroa.6.0.insert.ext.i.i, 112
  %i.aw = or disjoint i128 %9, %.sroa.6.0.insert.shift.i.i
  %i.ax = or disjoint i128 %i.aw, %12
  %i.ay = or disjoint i128 %i.ax, %.sroa.34.0.insert.shift.i.i.a
  %i.az = or disjoint i128 %i.ay, %.sroa.28.0.insert.shift.i.i
  %i.ba = or disjoint i128 %i.az, %.sroa.22.0.insert.shift.i.i
  %i.bb = or disjoint i128 %i.ba, %.sroa.16.0.insert.shift.i.i
  %i.bc = or i128 %i.bb, %.sroa.10.0.insert.ext.i.i
  %.sroa.0.0.insert.insert.i.i = or i128 %i.bc, %.sroa.8.0.insert.shift.i.i
  %i.bd = lshr i128 %.sroa.8.0.insert.ext.i.i, 7  ; 3 uses
  %i.be = shl i128 %.sroa.0.0.insert.insert.i.i, 1
  %i.bf = and i128 %.sroa.8.0.insert.shift.i.i, -170141183460469231731687303715884105728
  %i.bg = shl nuw nsw i128 %i.bd, 126
  %i.bh = or disjoint i128 %i.bf, %i.bg
  %i.bi = shl nuw nsw i128 %i.bd, 121
  %i.bj = or disjoint i128 %i.bh, %i.bi
  %i.bk = or disjoint i128 %i.bj, %i.bd
  %i.bl = xor i128 %i.be, %i.bk
  store i128 %i.bl, ptr %i.g, align 16, !noalias !289
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !289
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !289
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.e, ptr noundef nonnull align 16 dereferenceable(16) %i.g, i64 16, i1 false), !noalias !289
  invoke void @_RNvMCsfpj6k10bgkT_7polyvalNtB2_7Polyval3new(ptr noalias nofree noundef nonnull sret([144 x i8]) align 16 captures(none) dereferenceable(144) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(16) %i.e)
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !289
  invoke void @_RNvXsb_NtCsfpj6k10bgkT_7polyval13field_elementNtB5_12FieldElementNtCseNmJmsPJ47l_7zeroize7Zeroize7zeroize(ptr noalias nofree noundef nonnull align 16 dereferenceable(16) %i.g)
          to label %_RNvMs_CsjmKEQBEfD4w_5ghashNtB4_5GHash3new.exit.i unwind label %bb.o, !noalias !289

bb.o:                                             ; preds = %.noexc
  %i.bm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !292)
  call void @llvm.experimental.noalias.scope.decl(metadata !293)
  call void @llvm.experimental.noalias.scope.decl(metadata !294)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !295
  store ptr %i.f, ptr %i.d, align 8, !noalias !295
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %bb.o
  %.sroa.0.02.i.i.i.i.i = phi i64 [ 0, %bb.o ], [ %i.ca, %bb.p ] ; 9 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.f, i64 %.sroa.0.02.i.i.i.i.i
  store volatile i8 0, ptr %i.bn, align 8, !alias.scope !296, !noalias !289
  %i.bo = getelementptr inbounds nuw i8, ptr %i.f, i64 %.sroa.0.02.i.i.i.i.i
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 1
  store volatile i8 0, ptr %i.bp, align 1, !alias.scope !296, !noalias !289
  %i.bq = getelementptr inbounds nuw i8, ptr %i.f, i64 %.sroa.0.02.i.i.i.i.i
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 2
  store volatile i8 0, ptr %i.br, align 2, !alias.scope !296, !noalias !289
  %i.bs = getelementptr inbounds nuw i8, ptr %i.f, i64 %.sroa.0.02.i.i.i.i.i
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 3
  store volatile i8 0, ptr %i.bt, align 1, !alias.scope !296, !noalias !289
  %i.bu = getelementptr inbounds nuw i8, ptr %i.f, i64 %.sroa.0.02.i.i.i.i.i
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 4
  store volatile i8 0, ptr %i.bv, align 4, !alias.scope !296, !noalias !289
  %i.bw = getelementptr inbounds nuw i8, ptr %i.f, i64 %.sroa.0.02.i.i.i.i.i
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 5
  store volatile i8 0, ptr %i.bx, align 1, !alias.scope !296, !noalias !289
  %i.by = getelementptr inbounds nuw i8, ptr %i.f, i64 %.sroa.0.02.i.i.i.i.i
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 6
  store volatile i8 0, ptr %i.bz, align 2, !alias.scope !296, !noalias !289
  %i.ca = add nuw nsw i64 %.sroa.0.02.i.i.i.i.i, 8 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.f, i64 %.sroa.0.02.i.i.i.i.i
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 7
  store volatile i8 0, ptr %i.cc, align 1, !alias.scope !296, !noalias !289
  %exitcond.not.i.i.i.i.i.7 = icmp eq i64 %i.ca, 144
  br i1 %exitcond.not.i.i.i.i.i.7, label %bb.q, label %bb.p

bb.q:                                             ; preds = %bb.p
  call void asm sideeffect inteldialect "# ${0:q}", "r,~{memory}"(ptr nonnull %i.d) #16, !noalias !289, !srcloc !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !295
  br label %.body

_RNvMs_CsjmKEQBEfD4w_5ghashNtB4_5GHash3new.exit.i: ; preds = %.noexc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) %i.h, ptr noundef nonnull align 16 dereferenceable(144) %i.f, i64 144, i1 false), !noalias !297
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !289
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !289
  %i.cd = and i64 %6, 15                          ; 3 uses
  %i.ce = lshr i64 %6, 4
  invoke void @_RINvXs5_CsjmKEQBEfD4w_5ghashNtB6_5GHashNtCskpD4dsn4k38_14universal_hash13UniversalHash19update_with_backendINtNvBB_6update3CtxINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIB21_IB21_IB21_IB21_NtB23_5UTermNtNtB25_3bit2B1ENtB39_2B0EB3n_EB3n_EB3n_EEECs54uEYnqmHDA_13signal_crypto(ptr noalias nofree noundef nonnull align 16 dereferenceable(144) %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %5, i64 noundef range(i64 0, 576460752303423488) %i.ce)
          to label %.noexc.i unwind label %bb.s, !noalias !298

.noexc.i:                                         ; preds = %_RNvMs_CsjmKEQBEfD4w_5ghashNtB4_5GHash3new.exit.i
  %i.cf = icmp eq i64 %i.cd, 0
  br i1 %i.cf, label %bb.v, label %bb.r

bb.r:                                             ; preds = %.noexc.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !299
  invoke void @_RINvMNtCs5DMeLc8gTfG_12hybrid_array7from_fnINtB5_5ArrayhINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIBT_IBT_IBT_IBT_NtBV_5UTermNtNtBX_3bit2B1ENtB1W_2B0EB29_EB29_EB29_EE11try_from_fnNtNtCsgxBkk5gSRhY_4core7convert10InfallibleNCINvB2_7from_fnNCNvXsg_B5_BF_NtNtB2Q_7default7Default7default0E0ECs54uEYnqmHDA_13signal_crypto(ptr noalias nofree noundef nonnull sret([16 x i8]) align 1 captures(none) dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull %i.a)
          to label %.noexc3.i unwind label %bb.s, !noalias !298

.noexc3.i:                                        ; preds = %bb.r
  %i.cg = and i64 %6, 9223372036854775792
  %i.ch = getelementptr inbounds nuw i8, ptr %5, i64 %i.cg
  invoke void @_RINvNtCsgxBkk5gSRhY_4core5slice20copy_from_slice_implhECs54uEYnqmHDA_13signal_crypto(ptr noalias nofree noundef nonnull %i.c, i64 noundef %i.cd, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ch, i64 noundef %i.cd, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @28)
          to label %.noexc4.i unwind label %bb.s, !noalias !298

.noexc4.i:                                        ; preds = %.noexc3.i
  invoke void @_RINvXs5_CsjmKEQBEfD4w_5ghashNtB6_5GHashNtCskpD4dsn4k38_14universal_hash13UniversalHash19update_with_backendINtNvBB_6update3CtxINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIB21_IB21_IB21_IB21_NtB23_5UTermNtNtB25_3bit2B1ENtB39_2B0EB3n_EB3n_EB3n_EEECs54uEYnqmHDA_13signal_crypto(ptr noalias nofree noundef nonnull align 16 dereferenceable(144) %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef 1)
          to label %.noexc5.i unwind label %bb.s, !noalias !298

.noexc5.i:                                        ; preds = %.noexc4.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !299
  br label %bb.v

bb.s:                                             ; preds = %.noexc4.i, %.noexc3.i, %bb.r, %_RNvMs_CsjmKEQBEfD4w_5ghashNtB4_5GHash3new.exit.i
  %i.ci = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !300)
  call void @llvm.experimental.noalias.scope.decl(metadata !301)
  call void @llvm.experimental.noalias.scope.decl(metadata !302)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !303
  store ptr %i.h, ptr %i.b, align 8, !noalias !303
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %bb.s
  %.sroa.0.02.i.i.i.i27 = phi i64 [ 0, %bb.s ], [ %i.cw, %bb.t ] ; 9 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.h, i64 %.sroa.0.02.i.i.i.i27
  store volatile i8 0, ptr %i.cj, align 8, !alias.scope !304, !noalias !287
  %i.ck = getelementptr inbounds nuw i8, ptr %i.h, i64 %.sroa.0.02.i.i.i.i27
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 1
  store volatile i8 0, ptr %i.cl, align 1, !alias.scope !304, !noalias !287
  %i.cm = getelementptr inbounds nuw i8, ptr %i.h, i64 %.sroa.0.02.i.i.i.i27
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 2
  store volatile i8 0, ptr %i.cn, align 2, !alias.scope !304, !noalias !287
  %i.co = getelementptr inbounds nuw i8, ptr %i.h, i64 %.sroa.0.02.i.i.i.i27
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 3
  store volatile i8 0, ptr %i.cp, align 1, !alias.scope !304, !noalias !287
  %i.cq = getelementptr inbounds nuw i8, ptr %i.h, i64 %.sroa.0.02.i.i.i.i27
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 4
  store volatile i8 0, ptr %i.cr, align 4, !alias.scope !304, !noalias !287
  %i.cs = getelementptr inbounds nuw i8, ptr %i.h, i64 %.sroa.0.02.i.i.i.i27
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 5
  store volatile i8 0, ptr %i.ct, align 1, !alias.scope !304, !noalias !287
  %i.cu = getelementptr inbounds nuw i8, ptr %i.h, i64 %.sroa.0.02.i.i.i.i27
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 6
  store volatile i8 0, ptr %i.cv, align 2, !alias.scope !304, !noalias !287
  %i.cw = add nuw nsw i64 %.sroa.0.02.i.i.i.i27, 8 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.h, i64 %.sroa.0.02.i.i.i.i27
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 7
  store volatile i8 0, ptr %i.cy, align 1, !alias.scope !304, !noalias !287
  %exitcond.not.i.i.i.i28.7 = icmp eq i64 %i.cw, 144
  br i1 %exitcond.not.i.i.i.i28.7, label %bb.u, label %bb.t

bb.u:                                             ; preds = %bb.t
  call void asm sideeffect inteldialect "# ${0:q}", "r,~{memory}"(ptr nonnull %i.b) #16, !noalias !298, !srcloc !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !303
  br label %.body

bb.v:                                             ; preds = %.noexc.i, %.noexc5.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) %.sroa.0.i, ptr noundef nonnull align 16 dereferenceable(144) %i.h, i64 144, i1 false), !noalias !287
  %.sroa.0.i.160.i.160.i.160..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.i, i64 160
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.0.i.160.i.160.i.160..sroa_idx, i8 0, i64 16, i1 false), !noalias !287
  %.sroa.0.144..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.i, i64 144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.0.144..sroa_idx.i, ptr noundef nonnull readonly align 1 dereferenceable(16) %i.o, i64 16, i1 false), !noalias !305
  %.sroa.5.16..sroa_idx29 = getelementptr inbounds nuw i8, ptr %.sroa.5, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %.sroa.5.16..sroa_idx29, ptr noundef nonnull align 16 dereferenceable(176) %.sroa.0.i, i64 176, i1 false), !noalias !306
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !287
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  %.sroa.512.sroa.0.8..sroa_idx32 = getelementptr inbounds nuw i8, ptr %.sroa.512.sroa.0, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %.sroa.512.sroa.0.8..sroa_idx32, ptr noundef nonnull align 8 dereferenceable(176) %.sroa.5.16..sroa_idx29, i64 176, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  %.sroa.036.1008..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.036, i64 1008
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.036)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(176) %.sroa.036.1008..sroa_idx, ptr noundef nonnull align 8 dereferenceable(176) %.sroa.512.sroa.0.8..sroa_idx32, i64 176, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.512.sroa.0)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1008) %.sroa.036, ptr noundef nonnull align 16 dereferenceable(1008) %i.r, i64 1008, i1 false)
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1184) %i.cz, ptr noundef nonnull align 16 dereferenceable(1184) %.sroa.036, i64 1184, i1 false)
  %.sroa.537.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1200
  store i64 0, ptr %.sroa.537.0..sroa_idx, align 16
  %.sroa.638.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1208
  store i64 %6, ptr %.sroa.638.0..sroa_idx, align 8
  %.sroa.739.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1216
  store i64 0, ptr %.sroa.739.0..sroa_idx, align 16
  store i64 0, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.036)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  br label %bb.w

bb.w:                                             ; preds = %bb.z, %bb.v, %bb.c
  ret void

bb.x:                                             ; preds = %bb.k
  %i.da = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.db, ptr noundef nonnull align 8 dereferenceable(40) %i.da, i64 40, i1 false)
  store i64 1, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  br label %bb.z

bb.y:                                             ; preds = %bb.aa, %.body
  %i.dc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #17
  unreachable

bb.z:                                             ; preds = %bb.x, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  br label %bb.w

bb.aa:                                            ; preds = %_RNvXs13_NtCs8pp35hPiiF8_3aes10autodetectNtB6_6Aes256NtCs17IHq5a1FQ2_13crypto_common7KeyInit3new.exit
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs8pp35hPiiF8_3aes10autodetect6Aes256ECs54uEYnqmHDA_13signal_crypto(ptr noalias nofree noundef align 16 dereferenceable(960) %i.t) #15
end_hunk_0
