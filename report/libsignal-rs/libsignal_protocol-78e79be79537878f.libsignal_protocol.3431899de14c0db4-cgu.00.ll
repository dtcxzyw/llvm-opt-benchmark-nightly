Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libsignal-rs/original/libsignal_protocol-78e79be79537878f.libsignal_protocol.3431899de14c0db4-cgu.00?download=true
inline.NumInlined: 366
inline.NumDeleted: 171
loop-unroll.NumCompletelyUnrolled: 24
loop-unroll.NumUnrolled: 31
begin_hunk_0_@_RNvMs1_NtCs4tP8yUXWbFU_18libsignal_protocol11fingerprintNtB5_11Fingerprint3new:bb.a
  %i.ar = load i64, ptr %i.aq, align 8, !noalias !900
  invoke void @_RNvNtCs6i54tJFfzR_5alloc7raw_vec12handle_error(i64 noundef %i.ap, i64 %i.ar) #19
          to label %.noexc18 unwind label %bb.aa

.noexc18:                                         ; preds = %bb.r
  unreachable

bb.s:                                             ; preds = %.noexc17
  %i.as = load ptr, ptr %i.aq, align 8, !noalias !900, !nonnull !6, !noundef !6 ; 2 uses
  %i.at = icmp samesign ugt i64 %i.ap, 31
  tail call void @llvm.assume(i1 %i.at)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !900
  store i64 %i.ap, ptr %i.c, align 8, !noalias !900
  %i.au = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.as, ptr %i.au, align 8, !noalias !900
  %i.av = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.as, ptr noundef nonnull readonly align 1 dereferenceable(32) %i.ah, i64 32, i1 false), !noalias !901
  store i64 32, ptr %i.av, align 8, !noalias !900
  %i.aw = icmp samesign ugt i64 %i.ak, 31
  br i1 %i.aw, label %bb.u, label %bb.t, !prof !5

bb.t:                                             ; preds = %bb.s
  invoke void @_RNvNtNtCsgxBkk5gSRhY_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef 32, i64 noundef range(i64 0, -9223372036854775808) %i.ak, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @22) #19
          to label %bb.w unwind label %bb.v, !noalias !900

bb.u:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !900
  invoke void @_RNvMs5_NtCs6i54tJFfzR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef 32, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.x unwind label %bb.v, !noalias !900

bb.v:                                             ; preds = %bb.y, %bb.u, %bb.t
  %i.ax = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #23
          to label %.body19 unwind label %bb.z, !noalias !900

bb.w:                                             ; preds = %bb.y, %bb.t
  unreachable

bb.x:                                             ; preds = %bb.u
  %i.ay = load i64, ptr %i.a, align 8, !range !14, !noalias !900, !noundef !6
  %i.az = trunc nuw i64 %i.ay to i1
  %i.ba = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.bb = load i64, ptr %i.ba, align 8, !range !15, !noalias !900, !noundef !6 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.az, label %bb.y, label %bb.ab, !prof !4

bb.y:                                             ; preds = %bb.x
  %i.bd = load i64, ptr %i.bc, align 8, !noalias !900
  invoke void @_RNvNtCs6i54tJFfzR_5alloc7raw_vec12handle_error(i64 noundef %i.bb, i64 %i.bd) #19
          to label %bb.w unwind label %bb.v, !noalias !900

bb.z:                                             ; preds = %bb.v
  %i.be = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #20, !noalias !900
  unreachable

bb.aa:                                            ; preds = %bb.r, %bb.q, %bb.p
  %i.bf = landingpad { ptr, i32 }
          cleanup
  br label %.body19

.body19:                                          ; preds = %bb.v, %bb.aa
  %eh.lpad-body20 = phi { ptr, i32 } [ %i.bf, %bb.aa ], [ %i.ax, %bb.v ]
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs4tP8yUXWbFU_18libsignal_protocol11fingerprint22DisplayableFingerprintEBF_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.e) #23
          to label %bb.h unwind label %bb.ai

bb.ab:                                            ; preds = %bb.x
  %i.bg = load ptr, ptr %i.bc, align 8, !noalias !900, !nonnull !6, !noundef !6 ; 2 uses
  %i.bh = icmp samesign ugt i64 %i.bb, 31
  tail call void @llvm.assume(i1 %i.bh)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !900
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.bg, ptr noundef nonnull readonly align 1 dereferenceable(32) %i.aj, i64 32, i1 false), !noalias !902
  %.sroa.034.48..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.034, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.034.48..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !900
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.034, ptr noundef nonnull align 8 dereferenceable(48) %i.e, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.034, i64 72, i1 false)
  %.sroa.635.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %i.bb, ptr %.sroa.635.0..sroa_idx, align 8
  %.sroa.736.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %i.bg, ptr %.sroa.736.0..sroa_idx, align 8
  %.sroa.837.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 32, ptr %.sroa.837.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i32 %1, ptr %.sroa.9.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.034)
  invoke void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %bb.ad unwind label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bi = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %.body unwind label %bb.ae

bb.ad:                                            ; preds = %bb.ab
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs4tP8yUXWbFU_18libsignal_protocol.exit25 unwind label %bb.d

bb.ae:                                            ; preds = %bb.ac
  %i.bj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #20
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs4tP8yUXWbFU_18libsignal_protocol.exit25: ; preds = %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  invoke void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs4tP8yUXWbFU_18libsignal_protocol.exit27 unwind label %bb.af

bb.af:                                            ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs4tP8yUXWbFU_18libsignal_protocol.exit25
  %i.bk = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %common.resume unwind label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.bl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #20
  unreachable

common.resume:                                    ; preds = %.body, %bb.aj, %bb.af
  %common.resume.op = phi { ptr, i32 } [ %i.bn, %bb.aj ], [ %i.bk, %bb.af ], [ %.pn15, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs4tP8yUXWbFU_18libsignal_protocol.exit27: ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs4tP8yUXWbFU_18libsignal_protocol.exit25
  call void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
  br label %bb.ah

bb.ah:                                            ; preds = %bb.b, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs4tP8yUXWbFU_18libsignal_protocol.exit29, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs4tP8yUXWbFU_18libsignal_protocol.exit27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  ret void

bb.ai:                                            ; preds = %.body19, %bb.h, %.body
  %i.bm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #20
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs4tP8yUXWbFU_18libsignal_protocol.exit: ; preds = %bb.m, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  invoke void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs4tP8yUXWbFU_18libsignal_protocol.exit29 unwind label %bb.aj

bb.aj:                                            ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs4tP8yUXWbFU_18libsignal_protocol.exit
  %i.bn = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %common.resume unwind label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.bo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #20
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs4tP8yUXWbFU_18libsignal_protocol.exit29: ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs4tP8yUXWbFU_18libsignal_protocol.exit
  call void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
  br label %bb.ah
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvMs_Cs7QbGsRJVG1P_4hkdfINtB4_11GenericHkdfINtCsfkg6qDyjgHi_4hmac4HmacNtCsj2Wav7G13rI_4sha26Sha256EE17expand_multi_infoCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(144) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address) %1, i64 noundef range(i64 0, 576460752303423488) %2, ptr noalias nofree noundef nonnull %3, i64 noundef range(i64 0, -9223372036854775808) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 1                ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = alloca [8 x i8], align 8                 ; 5 uses
  %i.d = alloca [8 x i8], align 8                 ; 5 uses
  %i.e = alloca [144 x i8], align 8               ; 4 uses
  %i.f = alloca [32 x i8], align 1                ; 5 uses
  %.sroa.0 = alloca i8, align 1                   ; 4 uses
  %i.g = alloca [144 x i8], align 8               ; 23 uses
  %i.h = alloca [33 x i8], align 1                ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.i = add nsw i64 %4, -8161
  %or.cond = icmp ult i64 %i.i, -8160
  br i1 %or.cond, label %._crit_edge95, label %_RNvXs1f_NtNtCsgxBkk5gSRhY_4core5slice4iterINtB6_9ChunksMuthENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4tP8yUXWbFU_18libsignal_protocol.exit.i.lr.ph

_RNvXs1f_NtNtCsgxBkk5gSRhY_4core5slice4iterINtB6_9ChunksMuthENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4tP8yUXWbFU_18libsignal_protocol.exit.i.lr.ph: ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 64 ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 1 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 63 ; 8 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 96 ; 8 uses
  %.idx = shl nuw nsw i64 %2, 4
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %i.p = icmp eq i64 %2, 0
  br label %bb.c

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtCsfkg6qDyjgHi_4hmac4HmacNtCsj2Wav7G13rI_4sha26Sha256EECs4tP8yUXWbFU_18libsignal_protocol.exit: ; preds = %.thread58
  resume { ptr, i32 } %eh.lpad-body61

bb.b:                                             ; preds = %bb.r
  unreachable

bb.c:                                             ; preds = %_RNvXs1f_NtNtCsgxBkk5gSRhY_4core5slice4iterINtB6_9ChunksMuthENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4tP8yUXWbFU_18libsignal_protocol.exit.i.lr.ph, %_RNvXNtCs7QbGsRJVG1P_4hkdf9hmac_implINtCsfkg6qDyjgHi_4hmac4HmacNtCsj2Wav7G13rI_4sha26Sha256ENtB2_8HmacImpl6updateCs4tP8yUXWbFU_18libsignal_protocol.exit
  %i.q = phi i1 [ false, %_RNvXs1f_NtNtCsgxBkk5gSRhY_4core5slice4iterINtB6_9ChunksMuthENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4tP8yUXWbFU_18libsignal_protocol.exit.i.lr.ph ], [ true, %_RNvXNtCs7QbGsRJVG1P_4hkdf9hmac_implINtCsfkg6qDyjgHi_4hmac4HmacNtCsj2Wav7G13rI_4sha26Sha256ENtB2_8HmacImpl6updateCs4tP8yUXWbFU_18libsignal_protocol.exit ]
  %.sroa.0.094 = phi ptr [ %3, %_RNvXs1f_NtNtCsgxBkk5gSRhY_4core5slice4iterINtB6_9ChunksMuthENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4tP8yUXWbFU_18libsignal_protocol.exit.i.lr.ph ], [ %i.r, %_RNvXNtCs7QbGsRJVG1P_4hkdf9hmac_implINtCsfkg6qDyjgHi_4hmac4HmacNtCsj2Wav7G13rI_4sha26Sha256ENtB2_8HmacImpl6updateCs4tP8yUXWbFU_18libsignal_protocol.exit ] ; 2 uses
  %.sroa.5.093 = phi i64 [ %4, %_RNvXs1f_NtNtCsgxBkk5gSRhY_4core5slice4iterINtB6_9ChunksMuthENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4tP8yUXWbFU_18libsignal_protocol.exit.i.lr.ph ], [ %i.s, %_RNvXNtCs7QbGsRJVG1P_4hkdf9hmac_implINtCsfkg6qDyjgHi_4hmac4HmacNtCsj2Wav7G13rI_4sha26Sha256ENtB2_8HmacImpl6updateCs4tP8yUXWbFU_18libsignal_protocol.exit ] ; 2 uses
  %.sroa.10.092 = phi i64 [ 0, %_RNvXs1f_NtNtCsgxBkk5gSRhY_4core5slice4iterINtB6_9ChunksMuthENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4tP8yUXWbFU_18libsignal_protocol.exit.i.lr.ph ], [ %i.t, %_RNvXNtCs7QbGsRJVG1P_4hkdf9hmac_implINtCsfkg6qDyjgHi_4hmac4HmacNtCsj2Wav7G13rI_4sha26Sha256ENtB2_8HmacImpl6updateCs4tP8yUXWbFU_18libsignal_protocol.exit ] ; 3 uses
  %.sroa.0.0.i.i.i = call noundef i64 @llvm.umin.i64(i64 %.sroa.5.093, i64 32) ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.094, i64 %.sroa.0.0.i.i.i
  %i.s = sub nuw nsw i64 %.sroa.5.093, %.sroa.0.0.i.i.i ; 2 uses
  %i.t = add nuw nsw i64 %.sroa.10.092, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @_RNvXNtCsfkg6qDyjgHi_4hmac9block_apiINtB2_8HmacCoreNtCsj2Wav7G13rI_4sha26Sha256ENtNtCsgxBkk5gSRhY_4core5clone5Clone5cloneCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.k, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.g, ptr noundef nonnull readonly align 8 dereferenceable(144) %0, i64 64, i1 false), !alias.scope !966
  br i1 %i.q, label %bb.d, label %_RNvXNtCs7QbGsRJVG1P_4hkdf9hmac_implINtCsfkg6qDyjgHi_4hmac4HmacNtCsj2Wav7G13rI_4sha26Sha256ENtB2_8HmacImpl6updateCs4tP8yUXWbFU_18libsignal_protocol.exit19

._crit_edge95:                                    ; preds = %_RNvXNtCs7QbGsRJVG1P_4hkdf9hmac_implINtCsfkg6qDyjgHi_4hmac4HmacNtCsj2Wav7G13rI_4sha26Sha256ENtB2_8HmacImpl6updateCs4tP8yUXWbFU_18libsignal_protocol.exit, %bb.a
  %i.u = icmp samesign ugt i64 %4, 8160
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  ret i1 %i.u

_RNvXNtCs7QbGsRJVG1P_4hkdf9hmac_implINtCsfkg6qDyjgHi_4hmac4HmacNtCsj2Wav7G13rI_4sha26Sha256ENtB2_8HmacImpl6updateCs4tP8yUXWbFU_18libsignal_protocol.exit19: ; preds = %bb.e, %.noexc20, %bb.c
  br i1 %i.p, label %_RNvMNtCsgxBkk5gSRhY_4core6resultINtB2_6ResulthNtNtNtB4_3num5error15TryFromIntErrorE6expectCs4tP8yUXWbFU_18libsignal_protocol.exit, label %.lr.ph

.thread68.loopexit:                               ; preds = %_RNCNvXs5_Csfkg6qDyjgHi_4hmacINtB7_4HmacNtCsj2Wav7G13rI_4sha26Sha256ENtCs2KKWnYNkHVH_6digest6Update6update0Cs4tP8yUXWbFU_18libsignal_protocol.exit.i23, %bb.l
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.thread58

.thread68.loopexit.split-lp.loopexit:             ; preds = %_RNCNvXs5_Csfkg6qDyjgHi_4hmacINtB7_4HmacNtCsj2Wav7G13rI_4sha26Sha256ENtCs2KKWnYNkHVH_6digest6Update6update0Cs4tP8yUXWbFU_18libsignal_protocol.exit.i, %_RNCNvXs5_Csfkg6qDyjgHi_4hmacINtB7_4HmacNtCsj2Wav7G13rI_4sha26Sha256ENtCs2KKWnYNkHVH_6digest6Update6update0Cs4tP8yUXWbFU_18libsignal_protocol.exit.i35
  %lpad.loopexit74 = landingpad { ptr, i32 }
          cleanup
  br label %.thread58

.thread68.loopexit.split-lp.loopexit.split-lp:    ; preds = %bb.r
  %lpad.loopexit.split-lp75 = landingpad { ptr, i32 }
          cleanup
  br label %.thread58

bb.d:                                             ; preds = %bb.c
  call void @llvm.experimental.noalias.scope.decl(metadata !967)
  call void @llvm.experimental.noalias.scope.decl(metadata !968)
  call void @llvm.experimental.noalias.scope.decl(metadata !969)
  %.val.i = load i8, ptr %i.m, align 1, !alias.scope !967, !noalias !970, !noundef !6 ; 4 uses
  %i.v = zext nneg i8 %.val.i to i64              ; 4 uses
  %i.w = icmp ult i8 %.val.i, 64
  call void @llvm.assume(i1 %i.w)
  %i.x = sub nuw nsw i64 64, %i.v                 ; 2 uses
  %i.y = icmp samesign ult i8 %.val.i, 32
  br i1 %i.y, label %bb.e, label %_RNvMNtCsgxBkk5gSRhY_4core5sliceSh8split_atCs4tP8yUXWbFU_18libsignal_protocol.exit.i

bb.e:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.v
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.z, ptr noundef nonnull readonly align 1 dereferenceable(32) %i.l, i64 32, i1 false), !alias.scope !971, !noalias !969
  %i.aa = or disjoint i8 %.val.i, 32
  store i8 %i.aa, ptr %i.m, align 1, !alias.scope !972, !noalias !970
  br label %_RNvXNtCs7QbGsRJVG1P_4hkdf9hmac_implINtCsfkg6qDyjgHi_4hmac4HmacNtCsj2Wav7G13rI_4sha26Sha256ENtB2_8HmacImpl6updateCs4tP8yUXWbFU_18libsignal_protocol.exit19

.noexc20:                                         ; preds = %_RNCNvXs5_Csfkg6qDyjgHi_4hmacINtB7_4HmacNtCsj2Wav7G13rI_4sha26Sha256ENtCs2KKWnYNkHVH_6digest6Update6update0Cs4tP8yUXWbFU_18libsignal_protocol.exit.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.x
  %i.ac = add nsw i64 %i.v, -32                   ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !973
  %i.ad = and i64 %i.ac, 9223372036854775744
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ad
  %i.af = trunc nuw nsw i64 %i.ac to i8
  store i8 %i.af, ptr %i.m, align 1, !alias.scope !974, !noalias !970
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(144) %i.g, ptr nonnull align 1 %i.ae, i64 %i.ac, i1 false), !alias.scope !971, !noalias !969
  br label %_RNvXNtCs7QbGsRJVG1P_4hkdf9hmac_implINtCsfkg6qDyjgHi_4hmac4HmacNtCsj2Wav7G13rI_4sha26Sha256ENtB2_8HmacImpl6updateCs4tP8yUXWbFU_18libsignal_protocol.exit19

_RNvMNtCsgxBkk5gSRhY_4core5sliceSh8split_atCs4tP8yUXWbFU_18libsignal_protocol.exit.i: ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !973
  store ptr %i.g, ptr %i.d, align 8, !noalias !973
  %i.ag = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.v
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ag, ptr nonnull readonly align 1 %i.l, i64 %i.x, i1 false), !alias.scope !971, !noalias !969
  %i.ah = load i64, ptr %i.n, align 8, !alias.scope !975, !noalias !976, !noundef !6
  %i.ai = add i64 %i.ah, 1
  store i64 %i.ai, ptr %i.n, align 8, !alias.scope !975, !noalias !976
  invoke void @_RNvNtCsj2Wav7G13rI_4sha26sha25611compress256(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.k, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %i.g, i64 noundef range(i64 1, 144115188075855872) 1)
          to label %_RNCNvXs5_Csfkg6qDyjgHi_4hmacINtB7_4HmacNtCsj2Wav7G13rI_4sha26Sha256ENtCs2KKWnYNkHVH_6digest6Update6update0Cs4tP8yUXWbFU_18libsignal_protocol.exit.i unwind label %bb.f, !noalias !968

bb.f:                                             ; preds = %_RNvMNtCsgxBkk5gSRhY_4core5sliceSh8split_atCs4tP8yUXWbFU_18libsignal_protocol.exit.i
  %i.aj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsb_CsjsLMAtnDKjw_12block_bufferINtB5_10ResetGuardINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIBQ_IBQ_IBQ_IBQ_IBQ_IBQ_NtBS_5UTermNtNtBU_3bit2B1ENtB21_2B0EB2e_EB2e_EB2e_EB2e_EB2e_ENtB5_5EagerENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %.thread58 unwind label %bb.g, !noalias !968

_RNCNvXs5_Csfkg6qDyjgHi_4hmacINtB7_4HmacNtCsj2Wav7G13rI_4sha26Sha256ENtCs2KKWnYNkHVH_6digest6Update6update0Cs4tP8yUXWbFU_18libsignal_protocol.exit.i: ; preds = %_RNvMNtCsgxBkk5gSRhY_4core5sliceSh8split_atCs4tP8yUXWbFU_18libsignal_protocol.exit.i
  invoke void @_RNvXsb_CsjsLMAtnDKjw_12block_bufferINtB5_10ResetGuardINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIBQ_IBQ_IBQ_IBQ_IBQ_IBQ_NtBS_5UTermNtNtBU_3bit2B1ENtB21_2B0EB2e_EB2e_EB2e_EB2e_EB2e_ENtB5_5EagerENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %.noexc20 unwind label %.thread68.loopexit.split-lp.loopexit

bb.g:                                             ; preds = %bb.f
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #20, !noalias !968
  unreachable

.lr.ph:                                           ; preds = %_RNvXNtCs7QbGsRJVG1P_4hkdf9hmac_implINtCsfkg6qDyjgHi_4hmac4HmacNtCsj2Wav7G13rI_4sha26Sha256ENtB2_8HmacImpl6updateCs4tP8yUXWbFU_18libsignal_protocol.exit19, %_RNvXNtCs7QbGsRJVG1P_4hkdf9hmac_implINtCsfkg6qDyjgHi_4hmac4HmacNtCsj2Wav7G13rI_4sha26Sha256ENtB2_8HmacImpl6updateCs4tP8yUXWbFU_18libsignal_protocol.exit18
  %.sroa.03.083 = phi ptr [ %i.bl, %_RNvXNtCs7QbGsRJVG1P_4hkdf9hmac_implINtCsfkg6qDyjgHi_4hmac4HmacNtCsj2Wav7G13rI_4sha26Sha256ENtB2_8HmacImpl6updateCs4tP8yUXWbFU_18libsignal_protocol.exit18 ], [ %1, %_RNvXNtCs7QbGsRJVG1P_4hkdf9hmac_implINtCsfkg6qDyjgHi_4hmac4HmacNtCsj2Wav7G13rI_4sha26Sha256ENtB2_8HmacImpl6updateCs4tP8yUXWbFU_18libsignal_protocol.exit19 ] ; 3 uses
  %i.al = load ptr, ptr %.sroa.03.083, align 8, !nonnull !6, !noundef !6 ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.03.083, i64 8
  %i.an = load i64, ptr %i.am, align 8, !noundef !6 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !977)
  call void @llvm.experimental.noalias.scope.decl(metadata !978)
  call void @llvm.experimental.noalias.scope.decl(metadata !979)
  %.val.i21 = load i8, ptr %i.m, align 1, !alias.scope !977, !noalias !980, !noundef !6 ; 4 uses
  %i.ao = zext nneg i8 %.val.i21 to i64           ; 3 uses
  %i.ap = icmp ult i8 %.val.i21, 64
  call void @llvm.assume(i1 %i.ap)
  %i.aq = sub nuw nsw i64 64, %i.ao               ; 4 uses
  %i.ar = icmp samesign ult i64 %i.an, %i.aq
  br i1 %i.ar, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph
  %i.as = icmp eq i8 %.val.i21, 0
  br i1 %i.as, label %bb.j, label %_RNvMNtCsgxBkk5gSRhY_4core5sliceSh8split_atCs4tP8yUXWbFU_18libsignal_protocol.exit.i22

bb.i:                                             ; preds = %.lr.ph
  %i.at = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.ao
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.at, ptr nonnull readonly align 1 %i.al, i64 range(i64 0, -9223372036854775808) %i.an, i1 false), !alias.scope !981, !noalias !979
  %i.au = trunc nuw nsw i64 %i.an to i8
  %i.av = add nuw nsw i8 %.val.i21, %i.au
  store i8 %i.av, ptr %i.m, align 1, !alias.scope !982, !noalias !980
  br label %_RNvXNtCs7QbGsRJVG1P_4hkdf9hmac_implINtCsfkg6qDyjgHi_4hmac4HmacNtCsj2Wav7G13rI_4sha26Sha256ENtB2_8HmacImpl6updateCs4tP8yUXWbFU_18libsignal_protocol.exit18

bb.j:                                             ; preds = %.noexc29, %bb.h
  %.sroa.8.0.i24 = phi i64 [ %i.an, %bb.h ], [ %i.bg, %.noexc29 ] ; 3 uses
  %.sroa.0.0.i25 = phi ptr [ %i.al, %bb.h ], [ %i.bf, %.noexc29 ] ; 2 uses
  %i.aw = and i64 %.sroa.8.0.i24, 9223372036854775744
  %i.ax = and i64 %.sroa.8.0.i24, 63              ; 2 uses
  %i.ay = lshr i64 %.sroa.8.0.i24, 6              ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i25, i64 %i.aw
  %i.ba = icmp eq i64 %i.ay, 0
  br i1 %i.ba, label %.noexc30, label %bb.l

_RNvMNtCsgxBkk5gSRhY_4core5sliceSh8split_atCs4tP8yUXWbFU_18libsignal_protocol.exit.i22: ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !983
  store ptr %i.g, ptr %i.c, align 8, !noalias !983
  %i.bb = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.ao
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bb, ptr nonnull readonly align 1 %i.al, i64 %i.aq, i1 false), !alias.scope !981, !noalias !979
  %i.bc = load i64, ptr %i.n, align 8, !alias.scope !984, !noalias !985, !noundef !6
  %i.bd = add i64 %i.bc, 1
  store i64 %i.bd, ptr %i.n, align 8, !alias.scope !984, !noalias !985
  invoke void @_RNvNtCsj2Wav7G13rI_4sha26sha25611compress256(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.k, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %i.g, i64 noundef range(i64 1, 144115188075855872) 1)
          to label %_RNCNvXs5_Csfkg6qDyjgHi_4hmacINtB7_4HmacNtCsj2Wav7G13rI_4sha26Sha256ENtCs2KKWnYNkHVH_6digest6Update6update0Cs4tP8yUXWbFU_18libsignal_protocol.exit.i23 unwind label %bb.k, !noalias !978

bb.k:                                             ; preds = %_RNvMNtCsgxBkk5gSRhY_4core5sliceSh8split_atCs4tP8yUXWbFU_18libsignal_protocol.exit.i22
  %i.be = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsb_CsjsLMAtnDKjw_12block_bufferINtB5_10ResetGuardINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIBQ_IBQ_IBQ_IBQ_IBQ_IBQ_NtBS_5UTermNtNtBU_3bit2B1ENtB21_2B0EB2e_EB2e_EB2e_EB2e_EB2e_ENtB5_5EagerENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %.thread58 unwind label %bb.m, !noalias !978

_RNCNvXs5_Csfkg6qDyjgHi_4hmacINtB7_4HmacNtCsj2Wav7G13rI_4sha26Sha256ENtCs2KKWnYNkHVH_6digest6Update6update0Cs4tP8yUXWbFU_18libsignal_protocol.exit.i23: ; preds = %_RNvMNtCsgxBkk5gSRhY_4core5sliceSh8split_atCs4tP8yUXWbFU_18libsignal_protocol.exit.i22
  invoke void @_RNvXsb_CsjsLMAtnDKjw_12block_bufferINtB5_10ResetGuardINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIBQ_IBQ_IBQ_IBQ_IBQ_IBQ_NtBS_5UTermNtNtBU_3bit2B1ENtB21_2B0EB2e_EB2e_EB2e_EB2e_EB2e_ENtB5_5EagerENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %.noexc29 unwind label %.thread68.loopexit

.noexc29:                                         ; preds = %_RNCNvXs5_Csfkg6qDyjgHi_4hmacINtB7_4HmacNtCsj2Wav7G13rI_4sha26Sha256ENtCs2KKWnYNkHVH_6digest6Update6update0Cs4tP8yUXWbFU_18libsignal_protocol.exit.i23
  %i.bf = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.aq
  %i.bg = sub nuw nsw i64 %i.an, %i.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !983
  br label %bb.j

bb.l:                                             ; preds = %bb.j
  %i.bh = load i64, ptr %i.n, align 8, !alias.scope !986, !noalias !987, !noundef !6
  %i.bi = add i64 %i.bh, %i.ay
  store i64 %i.bi, ptr %i.n, align 8, !alias.scope !986, !noalias !987
  invoke void @_RNvNtCsj2Wav7G13rI_4sha26sha25611compress256(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.k, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i25, i64 noundef range(i64 1, 144115188075855872) %i.ay)
          to label %.noexc30 unwind label %.thread68.loopexit

.noexc30:                                         ; preds = %bb.l, %bb.j
  %i.bj = trunc nuw nsw i64 %i.ax to i8
  store i8 %i.bj, ptr %i.m, align 1, !alias.scope !988, !noalias !980
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(144) %i.g, ptr nonnull align 1 %i.az, i64 %i.ax, i1 false), !alias.scope !981, !noalias !979
  br label %_RNvXNtCs7QbGsRJVG1P_4hkdf9hmac_implINtCsfkg6qDyjgHi_4hmac4HmacNtCsj2Wav7G13rI_4sha26Sha256ENtB2_8HmacImpl6updateCs4tP8yUXWbFU_18libsignal_protocol.exit18

bb.m:                                             ; preds = %bb.k
  %i.bk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #20, !noalias !978
  unreachable

_RNvXNtCs7QbGsRJVG1P_4hkdf9hmac_implINtCsfkg6qDyjgHi_4hmac4HmacNtCsj2Wav7G13rI_4sha26Sha256ENtB2_8HmacImpl6updateCs4tP8yUXWbFU_18libsignal_protocol.exit18: ; preds = %bb.i, %.noexc30
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.03.083, i64 16 ; 2 uses
  %i.bm = icmp eq ptr %i.bl, %i.o
  br i1 %i.bm, label %_RNvMNtCsgxBkk5gSRhY_4core6resultINtB2_6ResulthNtNtNtB4_3num5error15TryFromIntErrorE6expectCs4tP8yUXWbFU_18libsignal_protocol.exit, label %.lr.ph

_RNvMNtCsgxBkk5gSRhY_4core6resultINtB2_6ResulthNtNtNtB4_3num5error15TryFromIntErrorE6expectCs4tP8yUXWbFU_18libsignal_protocol.exit: ; preds = %_RNvXNtCs7QbGsRJVG1P_4hkdf9hmac_implINtCsfkg6qDyjgHi_4hmac4HmacNtCsj2Wav7G13rI_4sha26Sha256ENtB2_8HmacImpl6updateCs4tP8yUXWbFU_18libsignal_protocol.exit18, %_RNvXNtCs7QbGsRJVG1P_4hkdf9hmac_implINtCsfkg6qDyjgHi_4hmac4HmacNtCsj2Wav7G13rI_4sha26Sha256ENtB2_8HmacImpl6updateCs4tP8yUXWbFU_18libsignal_protocol.exit19
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  %i.bn = icmp eq i64 %.sroa.10.092, 255
  br i1 %i.bn, label %bb.r, label %bb.n

bb.n:                                             ; preds = %_RNvMNtCsgxBkk5gSRhY_4core6resultINtB2_6ResulthNtNtNtB4_3num5error15TryFromIntErrorE6expectCs4tP8yUXWbFU_18libsignal_protocol.exit
  %i.bo = trunc nuw i64 %.sroa.10.092 to i8
  %i.bp = add nuw i8 %i.bo, 1                     ; 2 uses
  store i8 %i.bp, ptr %.sroa.0, align 1
  call void @llvm.experimental.noalias.scope.decl(metadata !989)
  call void @llvm.experimental.noalias.scope.decl(metadata !990)
  call void @llvm.experimental.noalias.scope.decl(metadata !991)
  %.val.i33 = load i8, ptr %i.m, align 1, !alias.scope !989, !noalias !992, !noundef !6 ; 4 uses
  %i.bq = zext nneg i8 %.val.i33 to i64           ; 3 uses
  %i.br = icmp ult i8 %.val.i33, 64
  call void @llvm.assume(i1 %i.br)
  %.not = icmp eq i8 %.val.i33, 63
  br i1 %.not, label %_RNvMNtCsgxBkk5gSRhY_4core5sliceSh8split_atCs4tP8yUXWbFU_18libsignal_protocol.exit.i34, label %bb.o
end_hunk_0
