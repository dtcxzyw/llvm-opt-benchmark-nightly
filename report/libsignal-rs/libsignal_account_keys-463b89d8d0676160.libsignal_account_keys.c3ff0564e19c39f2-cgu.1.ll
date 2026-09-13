Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libsignal-rs/original/libsignal_account_keys-463b89d8d0676160.libsignal_account_keys.c3ff0564e19c39f2-cgu.1?download=true
begin_hunk_0_@_RNvMNtCsgPhy1OgDtny_22libsignal_account_keys6backupINtB2_9BackupKeyKh1_E32derive_local_backup_metadata_key:bb.a
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #14
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtCs7QbGsRJVG1P_4hkdf11GenericHkdfINtCsfkg6qDyjgHi_4hmac4HmacNtCsj2Wav7G13rI_4sha26Sha256EEECsgPhy1OgDtny_22libsignal_account_keys.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.k
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtCsgPhy1OgDtny_22libsignal_account_keys6backupINtB2_9BackupKeyKh1_E32derive_media_encryption_key_data(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 1 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(32) %1, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(15) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [64 x i8], align 1                ; 4 uses
  %i.c = alloca [64 x i8], align 1                ; 4 uses
  %i.d = alloca [176 x i8], align 8               ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.f = alloca [32 x i8], align 8                ; 7 uses
  %i.g = alloca [144 x i8], align 8               ; 10 uses
  %i.h = alloca [64 x i8], align 1                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.h, i8 0, i64 64, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @_RNvMs_Cs7QbGsRJVG1P_4hkdfINtB4_11GenericHkdfINtCsfkg6qDyjgHi_4hmac4HmacNtCsj2Wav7G13rI_4sha26Sha256EE7extractCsgPhy1OgDtny_22libsignal_account_keys(ptr noalias nofree noundef nonnull sret([176 x i8]) align 8 captures(address) dereferenceable(176) %i.d, ptr noalias nofree noundef readonly captures(address, read_provenance) null, i64 undef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef 32)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.g, ptr noundef nonnull align 8 dereferenceable(144) %i.e, i64 144, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr @18, ptr %i.f, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 37, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %2, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store i64 15, ptr %i.k, align 8
  %i.l = invoke noundef zeroext i1 @_RNvMs_Cs7QbGsRJVG1P_4hkdfINtB4_11GenericHkdfINtCsfkg6qDyjgHi_4hmac4HmacNtCsj2Wav7G13rI_4sha26Sha256EE17expand_multi_infoCsgPhy1OgDtny_22libsignal_account_keys(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.f, i64 noundef 2, ptr noalias nofree noundef nonnull %i.h, i64 noundef 64)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %i.m = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.c, i8 0, i64 64, i1 false), !noalias !283
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(144) %i.g, ptr nonnull align 1 %i.c, i64 64, i1 true)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void asm sideeffect inteldialect "# ${0:q}", "r,~{memory}"(ptr nonnull align 8 dereferenceable(144) %i.g) #18, !srcloc !12
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  invoke void @_RNvXCseNmJmsPJ47l_7zeroizeuNtB2_7Zeroize7zeroizeCsgPhy1OgDtny_22libsignal_account_keys(ptr noalias nofree noundef nonnull %i.n)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtCs7QbGsRJVG1P_4hkdf11GenericHkdfINtCsfkg6qDyjgHi_4hmac4HmacNtCsj2Wav7G13rI_4sha26Sha256EEECsgPhy1OgDtny_22libsignal_account_keys.exit unwind label %bb.e

bb.c:                                             ; preds = %bb.a
  br i1 %i.l, label %bb.d, label %_RNvMNtCsgxBkk5gSRhY_4core6resultINtB2_6ResultuNtNtCs7QbGsRJVG1P_4hkdf6errors13InvalidLengthE6expectCsgPhy1OgDtny_22libsignal_account_keys.exit, !prof !10

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtCsgxBkk5gSRhY_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @9, i64 noundef 12, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @24, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #17
          to label %.noexc unwind label %bb.b

.noexc:                                           ; preds = %bb.d
  unreachable

_RNvMNtCsgxBkk5gSRhY_4core6resultINtB2_6ResultuNtNtCs7QbGsRJVG1P_4hkdf6errors13InvalidLengthE6expectCsgPhy1OgDtny_22libsignal_account_keys.exit: ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.b, i8 0, i64 64, i1 false), !noalias !284
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(144) %i.g, ptr nonnull align 1 %i.b, i64 64, i1 true)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void asm sideeffect inteldialect "# ${0:q}", "r,~{memory}"(ptr nonnull align 8 dereferenceable(144) %i.g) #18, !srcloc !12
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  call void @_RNvXCseNmJmsPJ47l_7zeroizeuNtB2_7Zeroize7zeroizeCsgPhy1OgDtny_22libsignal_account_keys(ptr noalias nofree noundef nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %0, ptr noundef nonnull align 1 dereferenceable(64) %i.h, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  ret void

bb.e:                                             ; preds = %bb.b
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #14
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtCs7QbGsRJVG1P_4hkdf11GenericHkdfINtCsfkg6qDyjgHi_4hmac4HmacNtCsj2Wav7G13rI_4sha26Sha256EEECsgPhy1OgDtny_22libsignal_account_keys.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.m
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtCsgPhy1OgDtny_22libsignal_account_keys6backupINtB2_9BackupKeyKh1_E44derive_thumbnail_transit_encryption_key_data(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 1 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(32) %1, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(15) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [64 x i8], align 1                ; 4 uses
  %i.c = alloca [64 x i8], align 1                ; 4 uses
  %i.d = alloca [176 x i8], align 8               ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.f = alloca [32 x i8], align 8                ; 7 uses
  %i.g = alloca [144 x i8], align 8               ; 10 uses
  %i.h = alloca [64 x i8], align 1                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.h, i8 0, i64 64, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @_RNvMs_Cs7QbGsRJVG1P_4hkdfINtB4_11GenericHkdfINtCsfkg6qDyjgHi_4hmac4HmacNtCsj2Wav7G13rI_4sha26Sha256EE7extractCsgPhy1OgDtny_22libsignal_account_keys(ptr noalias nofree noundef nonnull sret([176 x i8]) align 8 captures(address) dereferenceable(176) %i.d, ptr noalias nofree noundef readonly captures(address, read_provenance) null, i64 undef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef 32)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.g, ptr noundef nonnull align 8 dereferenceable(144) %i.e, i64 144, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr @20, ptr %i.f, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 41, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %2, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store i64 15, ptr %i.k, align 8
  %i.l = invoke noundef zeroext i1 @_RNvMs_Cs7QbGsRJVG1P_4hkdfINtB4_11GenericHkdfINtCsfkg6qDyjgHi_4hmac4HmacNtCsj2Wav7G13rI_4sha26Sha256EE17expand_multi_infoCsgPhy1OgDtny_22libsignal_account_keys(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.f, i64 noundef 2, ptr noalias nofree noundef nonnull %i.h, i64 noundef 64)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %i.m = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.c, i8 0, i64 64, i1 false), !noalias !305
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(144) %i.g, ptr nonnull align 1 %i.c, i64 64, i1 true)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void asm sideeffect inteldialect "# ${0:q}", "r,~{memory}"(ptr nonnull align 8 dereferenceable(144) %i.g) #18, !srcloc !12
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  invoke void @_RNvXCseNmJmsPJ47l_7zeroizeuNtB2_7Zeroize7zeroizeCsgPhy1OgDtny_22libsignal_account_keys(ptr noalias nofree noundef nonnull %i.n)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtCs7QbGsRJVG1P_4hkdf11GenericHkdfINtCsfkg6qDyjgHi_4hmac4HmacNtCsj2Wav7G13rI_4sha26Sha256EEECsgPhy1OgDtny_22libsignal_account_keys.exit unwind label %bb.e

bb.c:                                             ; preds = %bb.a
  br i1 %i.l, label %bb.d, label %_RNvMNtCsgxBkk5gSRhY_4core6resultINtB2_6ResultuNtNtCs7QbGsRJVG1P_4hkdf6errors13InvalidLengthE6expectCsgPhy1OgDtny_22libsignal_account_keys.exit, !prof !10

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtCsgxBkk5gSRhY_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @9, i64 noundef 12, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @24, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @21) #17
          to label %.noexc unwind label %bb.b

.noexc:                                           ; preds = %bb.d
  unreachable

_RNvMNtCsgxBkk5gSRhY_4core6resultINtB2_6ResultuNtNtCs7QbGsRJVG1P_4hkdf6errors13InvalidLengthE6expectCsgPhy1OgDtny_22libsignal_account_keys.exit: ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.b, i8 0, i64 64, i1 false), !noalias !306
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(144) %i.g, ptr nonnull align 1 %i.b, i64 64, i1 true)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void asm sideeffect inteldialect "# ${0:q}", "r,~{memory}"(ptr nonnull align 8 dereferenceable(144) %i.g) #18, !srcloc !12
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  call void @_RNvXCseNmJmsPJ47l_7zeroizeuNtB2_7Zeroize7zeroizeCsgPhy1OgDtny_22libsignal_account_keys(ptr noalias nofree noundef nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %0, ptr noundef nonnull align 1 dereferenceable(64) %i.h, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  ret void

bb.e:                                             ; preds = %bb.b
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #14
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtCs7QbGsRJVG1P_4hkdf11GenericHkdfINtCsfkg6qDyjgHi_4hmac4HmacNtCsj2Wav7G13rI_4sha26Sha256EEECsgPhy1OgDtny_22libsignal_account_keys.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.m
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvMs_Cs7QbGsRJVG1P_4hkdfINtB4_11GenericHkdfINtCsfkg6qDyjgHi_4hmac4HmacNtCsj2Wav7G13rI_4sha26Sha256EE17expand_multi_infoCsgPhy1OgDtny_22libsignal_account_keys(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(144) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address) %1, i64 noundef range(i64 0, 576460752303423488) %2, ptr noalias nofree noundef nonnull writeonly captures(none) %3, i64 noundef range(i64 0, -9223372036854775808) %4) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 1                ; 4 uses
  %i.b = alloca [64 x i8], align 1                ; 4 uses
  %i.c = alloca [64 x i8], align 1                ; 4 uses
  %i.d = alloca [32 x i8], align 1                ; 5 uses
  %i.e = alloca [144 x i8], align 8               ; 13 uses
  %i.f = alloca [32 x i8], align 1                ; 5 uses
  %i.g = alloca [8 x i8], align 8                 ; 5 uses
  %i.h = alloca [8 x i8], align 8                 ; 5 uses
  %i.i = alloca [8 x i8], align 8                 ; 5 uses
  %i.j = alloca [80 x i8], align 8                ; 5 uses
  %i.k = alloca [32 x i8], align 1                ; 5 uses
  %.sroa.0 = alloca i8, align 1                   ; 4 uses
  %i.l = alloca [144 x i8], align 8               ; 23 uses
  %i.m = alloca [33 x i8], align 1                ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.n = add nsw i64 %4, -8161
  %or.cond = icmp ult i64 %i.n, -8160
  br i1 %or.cond, label %._crit_edge106, label %_RNvXs1f_NtNtCsgxBkk5gSRhY_4core5slice4iterINtB6_9ChunksMuthENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgPhy1OgDtny_22libsignal_account_keys.exit.i.lr.ph

_RNvXs1f_NtNtCsgxBkk5gSRhY_4core5slice4iterINtB6_9ChunksMuthENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgPhy1OgDtny_22libsignal_account_keys.exit.i.lr.ph: ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 64 ; 6 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 1 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 63 ; 8 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.l, i64 96 ; 8 uses
  %.idx = shl nuw nsw i64 %2, 4
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %i.w = icmp eq i64 %2, 0
  %i.x = getelementptr inbounds nuw i8, ptr %i.e, i64 64 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.e, i64 63
  %i.z = getelementptr inbounds nuw i8, ptr %i.e, i64 104
  br label %bb.c

.thread73:                                        ; preds = %.thread63, %.body.i.i
  %.pn62 = phi { ptr, i32 } [ %eh.lpad-body66, %.thread63 ], [ %i.ck, %.body.i.i ]
  resume { ptr, i32 } %.pn62

bb.b:                                             ; preds = %bb.r
  unreachable

bb.c:                                             ; preds = %_RNvXs6_Csfkg6qDyjgHi_4hmacINtB5_4HmacNtCsj2Wav7G13rI_4sha26Sha256ENtCs2KKWnYNkHVH_6digest11FixedOutput13finalize_intoCsgPhy1OgDtny_22libsignal_account_keys.exit.i, %_RNvXs1f_NtNtCsgxBkk5gSRhY_4core5slice4iterINtB6_9ChunksMuthENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgPhy1OgDtny_22libsignal_account_keys.exit.i.lr.ph
  %i.aa = phi i1 [ false, %_RNvXs1f_NtNtCsgxBkk5gSRhY_4core5slice4iterINtB6_9ChunksMuthENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgPhy1OgDtny_22libsignal_account_keys.exit.i.lr.ph ], [ true, %_RNvXs6_Csfkg6qDyjgHi_4hmacINtB5_4HmacNtCsj2Wav7G13rI_4sha26Sha256ENtCs2KKWnYNkHVH_6digest11FixedOutput13finalize_intoCsgPhy1OgDtny_22libsignal_account_keys.exit.i ]
  %.sroa.0.0105 = phi ptr [ %3, %_RNvXs1f_NtNtCsgxBkk5gSRhY_4core5slice4iterINtB6_9ChunksMuthENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgPhy1OgDtny_22libsignal_account_keys.exit.i.lr.ph ], [ %i.ab, %_RNvXs6_Csfkg6qDyjgHi_4hmacINtB5_4HmacNtCsj2Wav7G13rI_4sha26Sha256ENtCs2KKWnYNkHVH_6digest11FixedOutput13finalize_intoCsgPhy1OgDtny_22libsignal_account_keys.exit.i ] ; 2 uses
  %.sroa.5.0104 = phi i64 [ %4, %_RNvXs1f_NtNtCsgxBkk5gSRhY_4core5slice4iterINtB6_9ChunksMuthENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgPhy1OgDtny_22libsignal_account_keys.exit.i.lr.ph ], [ %i.ac, %_RNvXs6_Csfkg6qDyjgHi_4hmacINtB5_4HmacNtCsj2Wav7G13rI_4sha26Sha256ENtCs2KKWnYNkHVH_6digest11FixedOutput13finalize_intoCsgPhy1OgDtny_22libsignal_account_keys.exit.i ] ; 2 uses
  %.sroa.10.0103 = phi i64 [ 0, %_RNvXs1f_NtNtCsgxBkk5gSRhY_4core5slice4iterINtB6_9ChunksMuthENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgPhy1OgDtny_22libsignal_account_keys.exit.i.lr.ph ], [ %i.ad, %_RNvXs6_Csfkg6qDyjgHi_4hmacINtB5_4HmacNtCsj2Wav7G13rI_4sha26Sha256ENtCs2KKWnYNkHVH_6digest11FixedOutput13finalize_intoCsgPhy1OgDtny_22libsignal_account_keys.exit.i ] ; 3 uses
  %.sroa.0.0.i.i.i = call noundef i64 @llvm.umin.i64(i64 %.sroa.5.0104, i64 32) ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0.0105, i64 %.sroa.0.0.i.i.i
  %i.ac = sub nuw nsw i64 %.sroa.5.0104, %.sroa.0.0.i.i.i ; 2 uses
  %i.ad = add nuw nsw i64 %.sroa.10.0103, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.experimental.noalias.scope.decl(metadata !410)
  call void @llvm.experimental.noalias.scope.decl(metadata !411)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !412
  call void @_RNvXNtNtCs2KKWnYNkHVH_6digest9block_api11ct_variableINtB2_12CtOutWrapperNtNtCsj2Wav7G13rI_4sha29block_api13Sha256VarCoreINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIB1V_IB1V_IB1V_IB1V_IB1V_NtB1X_5UTermNtNtB1Z_3bit2B1ENtB38_2B0EB3m_EB3m_EB3m_EB3m_EENtNtCsgxBkk5gSRhY_4core5clone5Clone5cloneCsgPhy1OgDtny_22libsignal_account_keys(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(80) %i.j, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.o), !noalias !410
  call void @_RNvXNtNtCs2KKWnYNkHVH_6digest9block_api11ct_variableINtB2_12CtOutWrapperNtNtCsj2Wav7G13rI_4sha29block_api13Sha256VarCoreINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIB1V_IB1V_IB1V_IB1V_IB1V_NtB1X_5UTermNtNtB1Z_3bit2B1ENtB38_2B0EB3m_EB3m_EB3m_EB3m_EENtNtCsgxBkk5gSRhY_4core5clone5Clone5cloneCsgPhy1OgDtny_22libsignal_account_keys(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.q, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.p), !noalias !410
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.r, ptr noundef nonnull align 8 dereferenceable(80) %i.j, i64 80, i1 false), !noalias !411
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.l, ptr noundef nonnull readonly align 8 dereferenceable(144) %0, i64 64, i1 false), !alias.scope !412
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !412
  br i1 %i.aa, label %bb.d, label %_RNvXNtCs7QbGsRJVG1P_4hkdf9hmac_implINtCsfkg6qDyjgHi_4hmac4HmacNtCsj2Wav7G13rI_4sha26Sha256ENtB2_8HmacImpl6updateCsgPhy1OgDtny_22libsignal_account_keys.exit19

._crit_edge106:                                   ; preds = %_RNvXs6_Csfkg6qDyjgHi_4hmacINtB5_4HmacNtCsj2Wav7G13rI_4sha26Sha256ENtCs2KKWnYNkHVH_6digest11FixedOutput13finalize_intoCsgPhy1OgDtny_22libsignal_account_keys.exit.i, %bb.a
  %i.ae = icmp samesign ugt i64 %4, 8160
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  ret i1 %i.ae

_RNvXNtCs7QbGsRJVG1P_4hkdf9hmac_implINtCsfkg6qDyjgHi_4hmac4HmacNtCsj2Wav7G13rI_4sha26Sha256ENtB2_8HmacImpl6updateCsgPhy1OgDtny_22libsignal_account_keys.exit19: ; preds = %bb.e, %.noexc20, %bb.c
  br i1 %i.w, label %_RNvMNtCsgxBkk5gSRhY_4core6resultINtB2_6ResulthNtNtNtB4_3num5error15TryFromIntErrorE6expectCsgPhy1OgDtny_22libsignal_account_keys.exit, label %.lr.ph

.thread76.loopexit:                               ; preds = %_RNCNvXs5_Csfkg6qDyjgHi_4hmacINtB7_4HmacNtCsj2Wav7G13rI_4sha26Sha256ENtCs2KKWnYNkHVH_6digest6Update6update0CsgPhy1OgDtny_22libsignal_account_keys.exit.i23, %bb.l
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.thread63

.thread76.loopexit.split-lp.loopexit:             ; preds = %_RNCNvXs5_Csfkg6qDyjgHi_4hmacINtB7_4HmacNtCsj2Wav7G13rI_4sha26Sha256ENtCs2KKWnYNkHVH_6digest6Update6update0CsgPhy1OgDtny_22libsignal_account_keys.exit.i, %_RNCNvXs5_Csfkg6qDyjgHi_4hmacINtB7_4HmacNtCsj2Wav7G13rI_4sha26Sha256ENtCs2KKWnYNkHVH_6digest6Update6update0CsgPhy1OgDtny_22libsignal_account_keys.exit.i35
  %lpad.loopexit82 = landingpad { ptr, i32 }
          cleanup
  br label %.thread63

.thread76.loopexit.split-lp.loopexit.split-lp:    ; preds = %bb.r
  %lpad.loopexit.split-lp83 = landingpad { ptr, i32 }
          cleanup
  br label %.thread63

bb.d:                                             ; preds = %bb.c
  call void @llvm.experimental.noalias.scope.decl(metadata !413)
  call void @llvm.experimental.noalias.scope.decl(metadata !414)
  call void @llvm.experimental.noalias.scope.decl(metadata !415)
  %.val.i = load i8, ptr %i.t, align 1, !alias.scope !413, !noalias !416, !noundef !4 ; 4 uses
  %i.af = zext nneg i8 %.val.i to i64             ; 4 uses
  %i.ag = icmp ult i8 %.val.i, 64
  call void @llvm.assume(i1 %i.ag)
  %i.ah = sub nuw nsw i64 64, %i.af               ; 2 uses
  %i.ai = icmp samesign ult i8 %.val.i, 32
  br i1 %i.ai, label %bb.e, label %_RNvMNtCsgxBkk5gSRhY_4core5sliceSh8split_atCsgPhy1OgDtny_22libsignal_account_keys.exit.i

bb.e:                                             ; preds = %bb.d
  %i.aj = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.af
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.aj, ptr noundef nonnull readonly align 1 dereferenceable(32) %i.s, i64 32, i1 false), !alias.scope !417, !noalias !415
  %i.ak = or disjoint i8 %.val.i, 32
  store i8 %i.ak, ptr %i.t, align 1, !alias.scope !418, !noalias !416
  br label %_RNvXNtCs7QbGsRJVG1P_4hkdf9hmac_implINtCsfkg6qDyjgHi_4hmac4HmacNtCsj2Wav7G13rI_4sha26Sha256ENtB2_8HmacImpl6updateCsgPhy1OgDtny_22libsignal_account_keys.exit19

.noexc20:                                         ; preds = %_RNCNvXs5_Csfkg6qDyjgHi_4hmacINtB7_4HmacNtCsj2Wav7G13rI_4sha26Sha256ENtCs2KKWnYNkHVH_6digest6Update6update0CsgPhy1OgDtny_22libsignal_account_keys.exit.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.ah
  %i.am = add nsw i64 %i.af, -32                  ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !419
  %i.an = and i64 %i.am, 9223372036854775744
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.an
  %i.ap = trunc nuw nsw i64 %i.am to i8
  store i8 %i.ap, ptr %i.t, align 1, !alias.scope !420, !noalias !416
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(144) %i.l, ptr nonnull align 1 %i.ao, i64 %i.am, i1 false), !alias.scope !417, !noalias !415
  br label %_RNvXNtCs7QbGsRJVG1P_4hkdf9hmac_implINtCsfkg6qDyjgHi_4hmac4HmacNtCsj2Wav7G13rI_4sha26Sha256ENtB2_8HmacImpl6updateCsgPhy1OgDtny_22libsignal_account_keys.exit19

_RNvMNtCsgxBkk5gSRhY_4core5sliceSh8split_atCsgPhy1OgDtny_22libsignal_account_keys.exit.i: ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !419
  store ptr %i.l, ptr %i.i, align 8, !noalias !419
  %i.aq = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.af
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aq, ptr nonnull readonly align 1 %i.s, i64 %i.ah, i1 false), !alias.scope !417, !noalias !415
  %i.ar = load i64, ptr %i.u, align 8, !alias.scope !421, !noalias !422, !noundef !4
  %i.as = add i64 %i.ar, 1
  store i64 %i.as, ptr %i.u, align 8, !alias.scope !421, !noalias !422
  invoke void @_RNvNtCsj2Wav7G13rI_4sha26sha25611compress256(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.r, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %i.l, i64 noundef range(i64 1, 144115188075855872) 1)
          to label %_RNCNvXs5_Csfkg6qDyjgHi_4hmacINtB7_4HmacNtCsj2Wav7G13rI_4sha26Sha256ENtCs2KKWnYNkHVH_6digest6Update6update0CsgPhy1OgDtny_22libsignal_account_keys.exit.i unwind label %bb.f, !noalias !414

bb.f:                                             ; preds = %_RNvMNtCsgxBkk5gSRhY_4core5sliceSh8split_atCsgPhy1OgDtny_22libsignal_account_keys.exit.i
  %i.at = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsb_CsjsLMAtnDKjw_12block_bufferINtB5_10ResetGuardINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIBQ_IBQ_IBQ_IBQ_IBQ_IBQ_NtBS_5UTermNtNtBU_3bit2B1ENtB21_2B0EB2e_EB2e_EB2e_EB2e_EB2e_ENtB5_5EagerENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCsgPhy1OgDtny_22libsignal_account_keys(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.i)
          to label %.thread63 unwind label %bb.g, !noalias !414

_RNCNvXs5_Csfkg6qDyjgHi_4hmacINtB7_4HmacNtCsj2Wav7G13rI_4sha26Sha256ENtCs2KKWnYNkHVH_6digest6Update6update0CsgPhy1OgDtny_22libsignal_account_keys.exit.i: ; preds = %_RNvMNtCsgxBkk5gSRhY_4core5sliceSh8split_atCsgPhy1OgDtny_22libsignal_account_keys.exit.i
  invoke void @_RNvXsb_CsjsLMAtnDKjw_12block_bufferINtB5_10ResetGuardINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIBQ_IBQ_IBQ_IBQ_IBQ_IBQ_NtBS_5UTermNtNtBU_3bit2B1ENtB21_2B0EB2e_EB2e_EB2e_EB2e_EB2e_ENtB5_5EagerENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCsgPhy1OgDtny_22libsignal_account_keys(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.i)
          to label %.noexc20 unwind label %.thread76.loopexit.split-lp.loopexit

bb.g:                                             ; preds = %bb.f
  %i.au = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #14, !noalias !414
  unreachable

.lr.ph:                                           ; preds = %_RNvXNtCs7QbGsRJVG1P_4hkdf9hmac_implINtCsfkg6qDyjgHi_4hmac4HmacNtCsj2Wav7G13rI_4sha26Sha256ENtB2_8HmacImpl6updateCsgPhy1OgDtny_22libsignal_account_keys.exit19, %_RNvXNtCs7QbGsRJVG1P_4hkdf9hmac_implINtCsfkg6qDyjgHi_4hmac4HmacNtCsj2Wav7G13rI_4sha26Sha256ENtB2_8HmacImpl6updateCsgPhy1OgDtny_22libsignal_account_keys.exit18
  %.sroa.03.093 = phi ptr [ %i.bv, %_RNvXNtCs7QbGsRJVG1P_4hkdf9hmac_implINtCsfkg6qDyjgHi_4hmac4HmacNtCsj2Wav7G13rI_4sha26Sha256ENtB2_8HmacImpl6updateCsgPhy1OgDtny_22libsignal_account_keys.exit18 ], [ %1, %_RNvXNtCs7QbGsRJVG1P_4hkdf9hmac_implINtCsfkg6qDyjgHi_4hmac4HmacNtCsj2Wav7G13rI_4sha26Sha256ENtB2_8HmacImpl6updateCsgPhy1OgDtny_22libsignal_account_keys.exit19 ] ; 3 uses
  %i.av = load ptr, ptr %.sroa.03.093, align 8, !nonnull !4, !noundef !4 ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.03.093, i64 8
  %i.ax = load i64, ptr %i.aw, align 8, !noundef !4 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !423)
  call void @llvm.experimental.noalias.scope.decl(metadata !424)
  call void @llvm.experimental.noalias.scope.decl(metadata !425)
  %.val.i21 = load i8, ptr %i.t, align 1, !alias.scope !423, !noalias !426, !noundef !4 ; 4 uses
  %i.ay = zext nneg i8 %.val.i21 to i64           ; 3 uses
  %i.az = icmp ult i8 %.val.i21, 64
  call void @llvm.assume(i1 %i.az)
  %i.ba = sub nuw nsw i64 64, %i.ay               ; 4 uses
  %i.bb = icmp samesign ult i64 %i.ax, %i.ba
  br i1 %i.bb, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph
  %i.bc = icmp eq i8 %.val.i21, 0
  br i1 %i.bc, label %bb.j, label %_RNvMNtCsgxBkk5gSRhY_4core5sliceSh8split_atCsgPhy1OgDtny_22libsignal_account_keys.exit.i22

bb.i:                                             ; preds = %.lr.ph
  %i.bd = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.ay
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bd, ptr nonnull readonly align 1 %i.av, i64 range(i64 0, -9223372036854775808) %i.ax, i1 false), !alias.scope !427, !noalias !425
  %i.be = trunc nuw nsw i64 %i.ax to i8
  %i.bf = add nuw nsw i8 %.val.i21, %i.be
  store i8 %i.bf, ptr %i.t, align 1, !alias.scope !428, !noalias !426
  br label %_RNvXNtCs7QbGsRJVG1P_4hkdf9hmac_implINtCsfkg6qDyjgHi_4hmac4HmacNtCsj2Wav7G13rI_4sha26Sha256ENtB2_8HmacImpl6updateCsgPhy1OgDtny_22libsignal_account_keys.exit18

bb.j:                                             ; preds = %.noexc29, %bb.h
  %.sroa.8.0.i24 = phi i64 [ %i.ax, %bb.h ], [ %i.bq, %.noexc29 ] ; 3 uses
  %.sroa.0.0.i25 = phi ptr [ %i.av, %bb.h ], [ %i.bp, %.noexc29 ] ; 2 uses
  %i.bg = and i64 %.sroa.8.0.i24, 9223372036854775744
  %i.bh = and i64 %.sroa.8.0.i24, 63              ; 2 uses
  %i.bi = lshr i64 %.sroa.8.0.i24, 6              ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i25, i64 %i.bg
  %i.bk = icmp eq i64 %i.bi, 0
  br i1 %i.bk, label %.noexc30, label %bb.l

_RNvMNtCsgxBkk5gSRhY_4core5sliceSh8split_atCsgPhy1OgDtny_22libsignal_account_keys.exit.i22: ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !429
  store ptr %i.l, ptr %i.h, align 8, !noalias !429
  %i.bl = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.ay
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bl, ptr nonnull readonly align 1 %i.av, i64 %i.ba, i1 false), !alias.scope !427, !noalias !425
  %i.bm = load i64, ptr %i.u, align 8, !alias.scope !430, !noalias !431, !noundef !4
  %i.bn = add i64 %i.bm, 1
  store i64 %i.bn, ptr %i.u, align 8, !alias.scope !430, !noalias !431
  invoke void @_RNvNtCsj2Wav7G13rI_4sha26sha25611compress256(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.r, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %i.l, i64 noundef range(i64 1, 144115188075855872) 1)
          to label %_RNCNvXs5_Csfkg6qDyjgHi_4hmacINtB7_4HmacNtCsj2Wav7G13rI_4sha26Sha256ENtCs2KKWnYNkHVH_6digest6Update6update0CsgPhy1OgDtny_22libsignal_account_keys.exit.i23 unwind label %bb.k, !noalias !424

bb.k:                                             ; preds = %_RNvMNtCsgxBkk5gSRhY_4core5sliceSh8split_atCsgPhy1OgDtny_22libsignal_account_keys.exit.i22
  %i.bo = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsb_CsjsLMAtnDKjw_12block_bufferINtB5_10ResetGuardINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIBQ_IBQ_IBQ_IBQ_IBQ_IBQ_NtBS_5UTermNtNtBU_3bit2B1ENtB21_2B0EB2e_EB2e_EB2e_EB2e_EB2e_ENtB5_5EagerENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCsgPhy1OgDtny_22libsignal_account_keys(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.h)
          to label %.thread63 unwind label %bb.m, !noalias !424

_RNCNvXs5_Csfkg6qDyjgHi_4hmacINtB7_4HmacNtCsj2Wav7G13rI_4sha26Sha256ENtCs2KKWnYNkHVH_6digest6Update6update0CsgPhy1OgDtny_22libsignal_account_keys.exit.i23: ; preds = %_RNvMNtCsgxBkk5gSRhY_4core5sliceSh8split_atCsgPhy1OgDtny_22libsignal_account_keys.exit.i22
  invoke void @_RNvXsb_CsjsLMAtnDKjw_12block_bufferINtB5_10ResetGuardINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIBQ_IBQ_IBQ_IBQ_IBQ_IBQ_NtBS_5UTermNtNtBU_3bit2B1ENtB21_2B0EB2e_EB2e_EB2e_EB2e_EB2e_ENtB5_5EagerENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCsgPhy1OgDtny_22libsignal_account_keys(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.h)
          to label %.noexc29 unwind label %.thread76.loopexit

.noexc29:                                         ; preds = %_RNCNvXs5_Csfkg6qDyjgHi_4hmacINtB7_4HmacNtCsj2Wav7G13rI_4sha26Sha256ENtCs2KKWnYNkHVH_6digest6Update6update0CsgPhy1OgDtny_22libsignal_account_keys.exit.i23
  %i.bp = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.ba
  %i.bq = sub nuw nsw i64 %i.ax, %i.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !429
  br label %bb.j

bb.l:                                             ; preds = %bb.j
  %i.br = load i64, ptr %i.u, align 8, !alias.scope !432, !noalias !433, !noundef !4
  %i.bs = add i64 %i.br, %i.bi
  store i64 %i.bs, ptr %i.u, align 8, !alias.scope !432, !noalias !433
  invoke void @_RNvNtCsj2Wav7G13rI_4sha26sha25611compress256(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.r, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i25, i64 noundef range(i64 1, 144115188075855872) %i.bi)
          to label %.noexc30 unwind label %.thread76.loopexit

.noexc30:                                         ; preds = %bb.l, %bb.j
  %i.bt = trunc nuw nsw i64 %i.bh to i8
  store i8 %i.bt, ptr %i.t, align 1, !alias.scope !434, !noalias !426
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(144) %i.l, ptr nonnull align 1 %i.bj, i64 %i.bh, i1 false), !alias.scope !427, !noalias !425
  br label %_RNvXNtCs7QbGsRJVG1P_4hkdf9hmac_implINtCsfkg6qDyjgHi_4hmac4HmacNtCsj2Wav7G13rI_4sha26Sha256ENtB2_8HmacImpl6updateCsgPhy1OgDtny_22libsignal_account_keys.exit18

bb.m:                                             ; preds = %bb.k
  %i.bu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #14, !noalias !424
  unreachable

_RNvXNtCs7QbGsRJVG1P_4hkdf9hmac_implINtCsfkg6qDyjgHi_4hmac4HmacNtCsj2Wav7G13rI_4sha26Sha256ENtB2_8HmacImpl6updateCsgPhy1OgDtny_22libsignal_account_keys.exit18: ; preds = %bb.i, %.noexc30
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.03.093, i64 16 ; 2 uses
  %i.bw = icmp eq ptr %i.bv, %i.v
  br i1 %i.bw, label %_RNvMNtCsgxBkk5gSRhY_4core6resultINtB2_6ResulthNtNtNtB4_3num5error15TryFromIntErrorE6expectCsgPhy1OgDtny_22libsignal_account_keys.exit, label %.lr.ph

_RNvMNtCsgxBkk5gSRhY_4core6resultINtB2_6ResulthNtNtNtB4_3num5error15TryFromIntErrorE6expectCsgPhy1OgDtny_22libsignal_account_keys.exit: ; preds = %_RNvXNtCs7QbGsRJVG1P_4hkdf9hmac_implINtCsfkg6qDyjgHi_4hmac4HmacNtCsj2Wav7G13rI_4sha26Sha256ENtB2_8HmacImpl6updateCsgPhy1OgDtny_22libsignal_account_keys.exit18, %_RNvXNtCs7QbGsRJVG1P_4hkdf9hmac_implINtCsfkg6qDyjgHi_4hmac4HmacNtCsj2Wav7G13rI_4sha26Sha256ENtB2_8HmacImpl6updateCsgPhy1OgDtny_22libsignal_account_keys.exit19
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  %i.bx = icmp eq i64 %.sroa.10.0103, 255
  br i1 %i.bx, label %bb.r, label %bb.n

bb.n:                                             ; preds = %_RNvMNtCsgxBkk5gSRhY_4core6resultINtB2_6ResulthNtNtNtB4_3num5error15TryFromIntErrorE6expectCsgPhy1OgDtny_22libsignal_account_keys.exit
  %i.by = trunc nuw i64 %.sroa.10.0103 to i8
  %i.bz = add nuw i8 %i.by, 1                     ; 2 uses
  store i8 %i.bz, ptr %.sroa.0, align 1
  call void @llvm.experimental.noalias.scope.decl(metadata !435)
  call void @llvm.experimental.noalias.scope.decl(metadata !436)
  call void @llvm.experimental.noalias.scope.decl(metadata !437)
end_hunk_0
