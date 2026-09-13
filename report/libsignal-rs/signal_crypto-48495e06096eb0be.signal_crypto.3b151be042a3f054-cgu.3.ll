Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libsignal-rs/original/signal_crypto-48495e06096eb0be.signal_crypto.3b151be042a3f054-cgu.3?download=true
begin_hunk_0_@_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs8i5epPvXSLv_3cbc7encrypt9EncryptorNtNtCs8pp35hPiiF8_3aes10autodetect6Aes256EECs54uEYnqmHDA_13signal_crypto:bb.a
  store ptr %i.w, ptr %i.a, align 8, !noalias !58
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %bb.f
  %.sroa.0.02.i.i3.i.i.i = phi i64 [ 0, %bb.f ], [ %i.ak, %bb.g ] ; 9 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %.sroa.0.02.i.i3.i.i.i
  store volatile i8 0, ptr %i.x, align 8, !alias.scope !58
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 %.sroa.0.02.i.i3.i.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 1
  store volatile i8 0, ptr %i.z, align 1, !alias.scope !58
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 %.sroa.0.02.i.i3.i.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 2
  store volatile i8 0, ptr %i.ab, align 2, !alias.scope !58
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 %.sroa.0.02.i.i3.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 3
  store volatile i8 0, ptr %i.ad, align 1, !alias.scope !58
  %i.ae = getelementptr inbounds nuw i8, ptr %i.w, i64 %.sroa.0.02.i.i3.i.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  store volatile i8 0, ptr %i.af, align 4, !alias.scope !58
  %i.ag = getelementptr inbounds nuw i8, ptr %i.w, i64 %.sroa.0.02.i.i3.i.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 5
  store volatile i8 0, ptr %i.ah, align 1, !alias.scope !58
  %i.ai = getelementptr inbounds nuw i8, ptr %i.w, i64 %.sroa.0.02.i.i3.i.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 6
  store volatile i8 0, ptr %i.aj, align 2, !alias.scope !58
  %i.ak = add nuw nsw i64 %.sroa.0.02.i.i3.i.i.i, 8 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.w, i64 %.sroa.0.02.i.i3.i.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 7
  store volatile i8 0, ptr %i.am, align 1, !alias.scope !58
  %exitcond.not.i.i4.i.i.i.7 = icmp eq i64 %i.ak, 240
  br i1 %exitcond.not.i.i4.i.i.i.7, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs8pp35hPiiF8_3aes3x866Aes256ECs54uEYnqmHDA_13signal_crypto.exit.i.i, label %bb.g

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs8pp35hPiiF8_3aes3x866Aes256ECs54uEYnqmHDA_13signal_crypto.exit.i.i: ; preds = %bb.g
  call void asm sideeffect inteldialect "# ${0:q}", "r,~{memory}"(ptr nonnull %i.a) #15, !srcloc !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !58
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs8pp35hPiiF8_3aes10autodetect6Aes256ECs54uEYnqmHDA_13signal_crypto.exit

bb.h:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !51
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 960
  store ptr %0, ptr %i.c, align 8, !noalias !51
  %i.ao = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.an, ptr %i.ao, align 8, !noalias !51
  call void @_RNvXs4_CseNmJmsPJ47l_7zeroizeINtNtNtCsgxBkk5gSRhY_4core5slice4iter7IterMutyENtB5_7Zeroize7zeroizeCs54uEYnqmHDA_13signal_crypto(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !51
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs8pp35hPiiF8_3aes10autodetect6Aes256ECs54uEYnqmHDA_13signal_crypto.exit

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs8pp35hPiiF8_3aes10autodetect6Aes256ECs54uEYnqmHDA_13signal_crypto.exit: ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs8pp35hPiiF8_3aes3x866Aes256ECs54uEYnqmHDA_13signal_crypto.exit.i.i, %bb.h
  ret void

bb.i:                                             ; preds = %bb.b
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #13
  unreachable

bb.j:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.d
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs8pp35hPiiF8_3aes10autodetect6Aes256ECs54uEYnqmHDA_13signal_crypto(ptr noalias nofree noundef nonnull align 16 dereferenceable(960) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71)
  %i.d = load atomic i8, ptr @_RNvNtNtNtCs8pp35hPiiF8_3aes3x868features12features_aes7STORAGE monotonic, align 1, !noalias !71
  %i.e = icmp eq i8 %i.d, 1
  br i1 %i.e, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !72)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !74)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !75
  store ptr %0, ptr %i.b, align 8, !noalias !75
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.02.i.i.i.i = phi i64 [ 0, %bb.b ], [ %i.s, %bb.c ] ; 9 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.02.i.i.i.i
  store volatile i8 0, ptr %i.f, align 8, !alias.scope !75
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.02.i.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  store volatile i8 0, ptr %i.h, align 1, !alias.scope !75
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.02.i.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 2
  store volatile i8 0, ptr %i.j, align 2, !alias.scope !75
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.02.i.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 3
  store volatile i8 0, ptr %i.l, align 1, !alias.scope !75
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.02.i.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  store volatile i8 0, ptr %i.n, align 4, !alias.scope !75
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.02.i.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 5
  store volatile i8 0, ptr %i.p, align 1, !alias.scope !75
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.02.i.i.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 6
  store volatile i8 0, ptr %i.r, align 2, !alias.scope !75
  %i.s = add nuw nsw i64 %.sroa.0.02.i.i.i.i, 8   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.02.i.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 7
  store volatile i8 0, ptr %i.u, align 1, !alias.scope !75
  %exitcond.not.i.i.i.i.7 = icmp eq i64 %i.s, 240
  br i1 %exitcond.not.i.i.i.i.7, label %bb.d, label %bb.c

bb.d:                                             ; preds = %bb.c
  call void asm sideeffect inteldialect "# ${0:q}", "r,~{memory}"(ptr nonnull %i.b) #15, !srcloc !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !75
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 9 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !76)
  call void @llvm.experimental.noalias.scope.decl(metadata !77)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !78
  store ptr %i.v, ptr %i.a, align 8, !noalias !78
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %bb.d
  %.sroa.0.02.i.i3.i.i = phi i64 [ 0, %bb.d ], [ %i.aj, %bb.e ] ; 9 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %.sroa.0.02.i.i3.i.i
  store volatile i8 0, ptr %i.w, align 8, !alias.scope !78
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 %.sroa.0.02.i.i3.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 1
  store volatile i8 0, ptr %i.y, align 1, !alias.scope !78
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 %.sroa.0.02.i.i3.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 2
  store volatile i8 0, ptr %i.aa, align 2, !alias.scope !78
  %i.ab = getelementptr inbounds nuw i8, ptr %i.v, i64 %.sroa.0.02.i.i3.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 3
  store volatile i8 0, ptr %i.ac, align 1, !alias.scope !78
  %i.ad = getelementptr inbounds nuw i8, ptr %i.v, i64 %.sroa.0.02.i.i3.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  store volatile i8 0, ptr %i.ae, align 4, !alias.scope !78
  %i.af = getelementptr inbounds nuw i8, ptr %i.v, i64 %.sroa.0.02.i.i3.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 5
  store volatile i8 0, ptr %i.ag, align 1, !alias.scope !78
  %i.ah = getelementptr inbounds nuw i8, ptr %i.v, i64 %.sroa.0.02.i.i3.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 6
  store volatile i8 0, ptr %i.ai, align 2, !alias.scope !78
  %i.aj = add nuw nsw i64 %.sroa.0.02.i.i3.i.i, 8 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.v, i64 %.sroa.0.02.i.i3.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 7
  store volatile i8 0, ptr %i.al, align 1, !alias.scope !78
  %exitcond.not.i.i4.i.i.7 = icmp eq i64 %i.aj, 240
  br i1 %exitcond.not.i.i4.i.i.7, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs8pp35hPiiF8_3aes3x866Aes256ECs54uEYnqmHDA_13signal_crypto.exit.i, label %bb.e

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs8pp35hPiiF8_3aes3x866Aes256ECs54uEYnqmHDA_13signal_crypto.exit.i: ; preds = %bb.e
  call void asm sideeffect inteldialect "# ${0:q}", "r,~{memory}"(ptr nonnull %i.a) #15, !srcloc !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !78
  br label %_RNvXs1a_NtCs8pp35hPiiF8_3aes10autodetectNtB6_6Aes256NtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4drop.exit

bb.f:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !71
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 960
  store ptr %0, ptr %i.c, align 8, !noalias !71
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.am, ptr %i.an, align 8, !noalias !71
  call void @_RNvXs4_CseNmJmsPJ47l_7zeroizeINtNtNtCsgxBkk5gSRhY_4core5slice4iter7IterMutyENtB5_7Zeroize7zeroizeCs54uEYnqmHDA_13signal_crypto(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !71
  br label %_RNvXs1a_NtCs8pp35hPiiF8_3aes10autodetectNtB6_6Aes256NtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4drop.exit

_RNvXs1a_NtCs8pp35hPiiF8_3aes10autodetectNtB6_6Aes256NtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4drop.exit: ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs8pp35hPiiF8_3aes3x866Aes256ECs54uEYnqmHDA_13signal_crypto.exit.i, %bb.f
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvMs_Cs7QbGsRJVG1P_4hkdfINtB4_11GenericHkdfINtCsfkg6qDyjgHi_4hmac4HmacNtCsj2Wav7G13rI_4sha26Sha256EE17expand_multi_infoCs54uEYnqmHDA_13signal_crypto(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(144) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address) %1, i64 noundef range(i64 0, 576460752303423488) %2, ptr noalias nofree noundef nonnull %3, i64 noundef range(i64 0, -9223372036854775808) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
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
  br i1 %or.cond, label %._crit_edge95, label %_RNvXs1f_NtNtCsgxBkk5gSRhY_4core5slice4iterINtB6_9ChunksMuthENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs54uEYnqmHDA_13signal_crypto.exit.i.lr.ph

_RNvXs1f_NtNtCsgxBkk5gSRhY_4core5slice4iterINtB6_9ChunksMuthENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs54uEYnqmHDA_13signal_crypto.exit.i.lr.ph: ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 64 ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 1 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 63 ; 8 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 96 ; 8 uses
  %.idx = shl nuw nsw i64 %2, 4
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %i.p = icmp eq i64 %2, 0
  br label %bb.c

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtCsfkg6qDyjgHi_4hmac4HmacNtCsj2Wav7G13rI_4sha26Sha256EECs54uEYnqmHDA_13signal_crypto.exit: ; preds = %.thread58
  resume { ptr, i32 } %eh.lpad-body61

bb.b:                                             ; preds = %bb.r
  unreachable

bb.c:                                             ; preds = %_RNvXNtCs7QbGsRJVG1P_4hkdf9hmac_implINtCsfkg6qDyjgHi_4hmac4HmacNtCsj2Wav7G13rI_4sha26Sha256ENtB2_8HmacImpl6updateCs54uEYnqmHDA_13signal_crypto.exit, %_RNvXs1f_NtNtCsgxBkk5gSRhY_4core5slice4iterINtB6_9ChunksMuthENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs54uEYnqmHDA_13signal_crypto.exit.i.lr.ph
  %i.q = phi i1 [ false, %_RNvXs1f_NtNtCsgxBkk5gSRhY_4core5slice4iterINtB6_9ChunksMuthENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs54uEYnqmHDA_13signal_crypto.exit.i.lr.ph ], [ true, %_RNvXNtCs7QbGsRJVG1P_4hkdf9hmac_implINtCsfkg6qDyjgHi_4hmac4HmacNtCsj2Wav7G13rI_4sha26Sha256ENtB2_8HmacImpl6updateCs54uEYnqmHDA_13signal_crypto.exit ]
  %.sroa.0.094 = phi ptr [ %3, %_RNvXs1f_NtNtCsgxBkk5gSRhY_4core5slice4iterINtB6_9ChunksMuthENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs54uEYnqmHDA_13signal_crypto.exit.i.lr.ph ], [ %i.r, %_RNvXNtCs7QbGsRJVG1P_4hkdf9hmac_implINtCsfkg6qDyjgHi_4hmac4HmacNtCsj2Wav7G13rI_4sha26Sha256ENtB2_8HmacImpl6updateCs54uEYnqmHDA_13signal_crypto.exit ] ; 2 uses
  %.sroa.5.093 = phi i64 [ %4, %_RNvXs1f_NtNtCsgxBkk5gSRhY_4core5slice4iterINtB6_9ChunksMuthENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs54uEYnqmHDA_13signal_crypto.exit.i.lr.ph ], [ %i.s, %_RNvXNtCs7QbGsRJVG1P_4hkdf9hmac_implINtCsfkg6qDyjgHi_4hmac4HmacNtCsj2Wav7G13rI_4sha26Sha256ENtB2_8HmacImpl6updateCs54uEYnqmHDA_13signal_crypto.exit ] ; 2 uses
  %.sroa.10.092 = phi i64 [ 0, %_RNvXs1f_NtNtCsgxBkk5gSRhY_4core5slice4iterINtB6_9ChunksMuthENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs54uEYnqmHDA_13signal_crypto.exit.i.lr.ph ], [ %i.t, %_RNvXNtCs7QbGsRJVG1P_4hkdf9hmac_implINtCsfkg6qDyjgHi_4hmac4HmacNtCsj2Wav7G13rI_4sha26Sha256ENtB2_8HmacImpl6updateCs54uEYnqmHDA_13signal_crypto.exit ] ; 3 uses
  %.sroa.0.0.i.i.i = call noundef i64 @llvm.umin.i64(i64 range(i64 1, 0) %.sroa.5.093, i64 32) ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.094, i64 %.sroa.0.0.i.i.i
  %i.s = sub nuw nsw i64 %.sroa.5.093, %.sroa.0.0.i.i.i ; 2 uses
  %i.t = add nuw nsw i64 %.sroa.10.092, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @_RNvXNtCsfkg6qDyjgHi_4hmac9block_apiINtB2_8HmacCoreNtCsj2Wav7G13rI_4sha26Sha256ENtNtCsgxBkk5gSRhY_4core5clone5Clone5cloneCs54uEYnqmHDA_13signal_crypto(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.k, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.g, ptr noundef nonnull readonly align 8 dereferenceable(144) %0, i64 64, i1 false), !alias.scope !142
  br i1 %i.q, label %bb.d, label %_RNvXNtCs7QbGsRJVG1P_4hkdf9hmac_implINtCsfkg6qDyjgHi_4hmac4HmacNtCsj2Wav7G13rI_4sha26Sha256ENtB2_8HmacImpl6updateCs54uEYnqmHDA_13signal_crypto.exit19

._crit_edge95:                                    ; preds = %_RNvXNtCs7QbGsRJVG1P_4hkdf9hmac_implINtCsfkg6qDyjgHi_4hmac4HmacNtCsj2Wav7G13rI_4sha26Sha256ENtB2_8HmacImpl6updateCs54uEYnqmHDA_13signal_crypto.exit, %bb.a
  %i.u = icmp samesign ugt i64 %4, 8160
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  ret i1 %i.u

_RNvXNtCs7QbGsRJVG1P_4hkdf9hmac_implINtCsfkg6qDyjgHi_4hmac4HmacNtCsj2Wav7G13rI_4sha26Sha256ENtB2_8HmacImpl6updateCs54uEYnqmHDA_13signal_crypto.exit19: ; preds = %bb.e, %.noexc20, %bb.c
  br i1 %i.p, label %_RNvMNtCsgxBkk5gSRhY_4core6resultINtB2_6ResulthNtNtNtB4_3num5error15TryFromIntErrorE6expectCs54uEYnqmHDA_13signal_crypto.exit, label %.lr.ph

.thread68.loopexit:                               ; preds = %_RNCNvXs5_Csfkg6qDyjgHi_4hmacINtB7_4HmacNtCsj2Wav7G13rI_4sha26Sha256ENtCs2KKWnYNkHVH_6digest6Update6update0Cs54uEYnqmHDA_13signal_crypto.exit.i23, %bb.l
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.thread58

.thread68.loopexit.split-lp.loopexit:             ; preds = %_RNCNvXs5_Csfkg6qDyjgHi_4hmacINtB7_4HmacNtCsj2Wav7G13rI_4sha26Sha256ENtCs2KKWnYNkHVH_6digest6Update6update0Cs54uEYnqmHDA_13signal_crypto.exit.i, %_RNCNvXs5_Csfkg6qDyjgHi_4hmacINtB7_4HmacNtCsj2Wav7G13rI_4sha26Sha256ENtCs2KKWnYNkHVH_6digest6Update6update0Cs54uEYnqmHDA_13signal_crypto.exit.i35
  %lpad.loopexit74 = landingpad { ptr, i32 }
          cleanup
  br label %.thread58

.thread68.loopexit.split-lp.loopexit.split-lp:    ; preds = %bb.r
  %lpad.loopexit.split-lp75 = landingpad { ptr, i32 }
          cleanup
  br label %.thread58

bb.d:                                             ; preds = %bb.c
  call void @llvm.experimental.noalias.scope.decl(metadata !143)
  call void @llvm.experimental.noalias.scope.decl(metadata !144)
  call void @llvm.experimental.noalias.scope.decl(metadata !145)
  %.val.i = load i8, ptr %i.m, align 1, !alias.scope !143, !noalias !146, !noundef !5 ; 4 uses
  %i.v = zext nneg i8 %.val.i to i64              ; 4 uses
  %i.w = icmp ult i8 %.val.i, 64
  call void @llvm.assume(i1 %i.w)
  %i.x = sub nuw nsw i64 64, %i.v                 ; 2 uses
  %i.y = icmp samesign ult i8 %.val.i, 32
  br i1 %i.y, label %bb.e, label %_RNvMNtCsgxBkk5gSRhY_4core5sliceSh8split_atCs54uEYnqmHDA_13signal_crypto.exit.i

bb.e:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.v
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.z, ptr noundef nonnull readonly align 1 dereferenceable(32) %i.l, i64 32, i1 false), !alias.scope !147, !noalias !145
  %i.aa = or disjoint i8 %.val.i, 32
  store i8 %i.aa, ptr %i.m, align 1, !alias.scope !148, !noalias !146
  br label %_RNvXNtCs7QbGsRJVG1P_4hkdf9hmac_implINtCsfkg6qDyjgHi_4hmac4HmacNtCsj2Wav7G13rI_4sha26Sha256ENtB2_8HmacImpl6updateCs54uEYnqmHDA_13signal_crypto.exit19

.noexc20:                                         ; preds = %_RNCNvXs5_Csfkg6qDyjgHi_4hmacINtB7_4HmacNtCsj2Wav7G13rI_4sha26Sha256ENtCs2KKWnYNkHVH_6digest6Update6update0Cs54uEYnqmHDA_13signal_crypto.exit.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.x
  %i.ac = add nsw i64 %i.v, -32                   ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !149
  %i.ad = and i64 %i.ac, 9223372036854775744
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ad
  %i.af = trunc nuw nsw i64 %i.ac to i8
  store i8 %i.af, ptr %i.m, align 1, !alias.scope !150, !noalias !146
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(144) %i.g, ptr nonnull align 1 %i.ae, i64 %i.ac, i1 false), !alias.scope !147, !noalias !145
  br label %_RNvXNtCs7QbGsRJVG1P_4hkdf9hmac_implINtCsfkg6qDyjgHi_4hmac4HmacNtCsj2Wav7G13rI_4sha26Sha256ENtB2_8HmacImpl6updateCs54uEYnqmHDA_13signal_crypto.exit19

_RNvMNtCsgxBkk5gSRhY_4core5sliceSh8split_atCs54uEYnqmHDA_13signal_crypto.exit.i: ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !149
  store ptr %i.g, ptr %i.d, align 8, !noalias !149
  %i.ag = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.v
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ag, ptr nonnull readonly align 1 %i.l, i64 %i.x, i1 false), !alias.scope !147, !noalias !145
  %i.ah = load i64, ptr %i.n, align 8, !alias.scope !151, !noalias !152, !noundef !5
  %i.ai = add i64 %i.ah, 1
  store i64 %i.ai, ptr %i.n, align 8, !alias.scope !151, !noalias !152
  invoke void @_RNvNtCsj2Wav7G13rI_4sha26sha25611compress256(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.k, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %i.g, i64 noundef range(i64 1, 144115188075855872) 1)
          to label %_RNCNvXs5_Csfkg6qDyjgHi_4hmacINtB7_4HmacNtCsj2Wav7G13rI_4sha26Sha256ENtCs2KKWnYNkHVH_6digest6Update6update0Cs54uEYnqmHDA_13signal_crypto.exit.i unwind label %bb.f, !noalias !144

bb.f:                                             ; preds = %_RNvMNtCsgxBkk5gSRhY_4core5sliceSh8split_atCs54uEYnqmHDA_13signal_crypto.exit.i
  %i.aj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsb_CsjsLMAtnDKjw_12block_bufferINtB5_10ResetGuardINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIBQ_IBQ_IBQ_IBQ_IBQ_IBQ_NtBS_5UTermNtNtBU_3bit2B1ENtB21_2B0EB2e_EB2e_EB2e_EB2e_EB2e_ENtB5_5EagerENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs54uEYnqmHDA_13signal_crypto(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %.thread58 unwind label %bb.g, !noalias !144

_RNCNvXs5_Csfkg6qDyjgHi_4hmacINtB7_4HmacNtCsj2Wav7G13rI_4sha26Sha256ENtCs2KKWnYNkHVH_6digest6Update6update0Cs54uEYnqmHDA_13signal_crypto.exit.i: ; preds = %_RNvMNtCsgxBkk5gSRhY_4core5sliceSh8split_atCs54uEYnqmHDA_13signal_crypto.exit.i
  invoke void @_RNvXsb_CsjsLMAtnDKjw_12block_bufferINtB5_10ResetGuardINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIBQ_IBQ_IBQ_IBQ_IBQ_IBQ_NtBS_5UTermNtNtBU_3bit2B1ENtB21_2B0EB2e_EB2e_EB2e_EB2e_EB2e_ENtB5_5EagerENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs54uEYnqmHDA_13signal_crypto(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %.noexc20 unwind label %.thread68.loopexit.split-lp.loopexit

bb.g:                                             ; preds = %bb.f
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #13, !noalias !144
  unreachable

.lr.ph:                                           ; preds = %_RNvXNtCs7QbGsRJVG1P_4hkdf9hmac_implINtCsfkg6qDyjgHi_4hmac4HmacNtCsj2Wav7G13rI_4sha26Sha256ENtB2_8HmacImpl6updateCs54uEYnqmHDA_13signal_crypto.exit19, %_RNvXNtCs7QbGsRJVG1P_4hkdf9hmac_implINtCsfkg6qDyjgHi_4hmac4HmacNtCsj2Wav7G13rI_4sha26Sha256ENtB2_8HmacImpl6updateCs54uEYnqmHDA_13signal_crypto.exit18
  %.sroa.03.083 = phi ptr [ %i.bl, %_RNvXNtCs7QbGsRJVG1P_4hkdf9hmac_implINtCsfkg6qDyjgHi_4hmac4HmacNtCsj2Wav7G13rI_4sha26Sha256ENtB2_8HmacImpl6updateCs54uEYnqmHDA_13signal_crypto.exit18 ], [ %1, %_RNvXNtCs7QbGsRJVG1P_4hkdf9hmac_implINtCsfkg6qDyjgHi_4hmac4HmacNtCsj2Wav7G13rI_4sha26Sha256ENtB2_8HmacImpl6updateCs54uEYnqmHDA_13signal_crypto.exit19 ] ; 3 uses
  %i.al = load ptr, ptr %.sroa.03.083, align 8, !nonnull !5, !noundef !5 ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.03.083, i64 8
  %i.an = load i64, ptr %i.am, align 8, !noundef !5 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !153)
  call void @llvm.experimental.noalias.scope.decl(metadata !154)
  call void @llvm.experimental.noalias.scope.decl(metadata !155)
  %.val.i21 = load i8, ptr %i.m, align 1, !alias.scope !153, !noalias !156, !noundef !5 ; 4 uses
  %i.ao = zext nneg i8 %.val.i21 to i64           ; 3 uses
  %i.ap = icmp ult i8 %.val.i21, 64
  call void @llvm.assume(i1 %i.ap)
  %i.aq = sub nuw nsw i64 64, %i.ao               ; 4 uses
  %i.ar = icmp samesign ult i64 %i.an, %i.aq
  br i1 %i.ar, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph
  %i.as = icmp eq i8 %.val.i21, 0
  br i1 %i.as, label %bb.j, label %_RNvMNtCsgxBkk5gSRhY_4core5sliceSh8split_atCs54uEYnqmHDA_13signal_crypto.exit.i22

bb.i:                                             ; preds = %.lr.ph
  %i.at = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.ao
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.at, ptr nonnull readonly align 1 %i.al, i64 range(i64 0, -9223372036854775808) %i.an, i1 false), !alias.scope !157, !noalias !155
  %i.au = trunc nuw nsw i64 %i.an to i8
  %i.av = add nuw nsw i8 %.val.i21, %i.au
  store i8 %i.av, ptr %i.m, align 1, !alias.scope !158, !noalias !156
  br label %_RNvXNtCs7QbGsRJVG1P_4hkdf9hmac_implINtCsfkg6qDyjgHi_4hmac4HmacNtCsj2Wav7G13rI_4sha26Sha256ENtB2_8HmacImpl6updateCs54uEYnqmHDA_13signal_crypto.exit18

bb.j:                                             ; preds = %.noexc29, %bb.h
  %.sroa.8.0.i24 = phi i64 [ %i.an, %bb.h ], [ %i.bg, %.noexc29 ] ; 3 uses
  %.sroa.0.0.i25 = phi ptr [ %i.al, %bb.h ], [ %i.bf, %.noexc29 ] ; 2 uses
  %i.aw = and i64 %.sroa.8.0.i24, 9223372036854775744
  %i.ax = and i64 %.sroa.8.0.i24, 63              ; 2 uses
  %i.ay = lshr i64 %.sroa.8.0.i24, 6              ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i25, i64 %i.aw
  %i.ba = icmp eq i64 %i.ay, 0
  br i1 %i.ba, label %.noexc30, label %bb.l

_RNvMNtCsgxBkk5gSRhY_4core5sliceSh8split_atCs54uEYnqmHDA_13signal_crypto.exit.i22: ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !159
  store ptr %i.g, ptr %i.c, align 8, !noalias !159
  %i.bb = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.ao
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bb, ptr nonnull readonly align 1 %i.al, i64 %i.aq, i1 false), !alias.scope !157, !noalias !155
  %i.bc = load i64, ptr %i.n, align 8, !alias.scope !160, !noalias !161, !noundef !5
  %i.bd = add i64 %i.bc, 1
  store i64 %i.bd, ptr %i.n, align 8, !alias.scope !160, !noalias !161
  invoke void @_RNvNtCsj2Wav7G13rI_4sha26sha25611compress256(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.k, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %i.g, i64 noundef range(i64 1, 144115188075855872) 1)
          to label %_RNCNvXs5_Csfkg6qDyjgHi_4hmacINtB7_4HmacNtCsj2Wav7G13rI_4sha26Sha256ENtCs2KKWnYNkHVH_6digest6Update6update0Cs54uEYnqmHDA_13signal_crypto.exit.i23 unwind label %bb.k, !noalias !154

bb.k:                                             ; preds = %_RNvMNtCsgxBkk5gSRhY_4core5sliceSh8split_atCs54uEYnqmHDA_13signal_crypto.exit.i22
  %i.be = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsb_CsjsLMAtnDKjw_12block_bufferINtB5_10ResetGuardINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIBQ_IBQ_IBQ_IBQ_IBQ_IBQ_NtBS_5UTermNtNtBU_3bit2B1ENtB21_2B0EB2e_EB2e_EB2e_EB2e_EB2e_ENtB5_5EagerENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs54uEYnqmHDA_13signal_crypto(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %.thread58 unwind label %bb.m, !noalias !154

_RNCNvXs5_Csfkg6qDyjgHi_4hmacINtB7_4HmacNtCsj2Wav7G13rI_4sha26Sha256ENtCs2KKWnYNkHVH_6digest6Update6update0Cs54uEYnqmHDA_13signal_crypto.exit.i23: ; preds = %_RNvMNtCsgxBkk5gSRhY_4core5sliceSh8split_atCs54uEYnqmHDA_13signal_crypto.exit.i22
  invoke void @_RNvXsb_CsjsLMAtnDKjw_12block_bufferINtB5_10ResetGuardINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIBQ_IBQ_IBQ_IBQ_IBQ_IBQ_NtBS_5UTermNtNtBU_3bit2B1ENtB21_2B0EB2e_EB2e_EB2e_EB2e_EB2e_ENtB5_5EagerENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs54uEYnqmHDA_13signal_crypto(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %.noexc29 unwind label %.thread68.loopexit

.noexc29:                                         ; preds = %_RNCNvXs5_Csfkg6qDyjgHi_4hmacINtB7_4HmacNtCsj2Wav7G13rI_4sha26Sha256ENtCs2KKWnYNkHVH_6digest6Update6update0Cs54uEYnqmHDA_13signal_crypto.exit.i23
  %i.bf = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.aq
  %i.bg = sub nuw nsw i64 %i.an, %i.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !159
  br label %bb.j

bb.l:                                             ; preds = %bb.j
  %i.bh = load i64, ptr %i.n, align 8, !alias.scope !162, !noalias !163, !noundef !5
  %i.bi = add i64 %i.bh, %i.ay
  store i64 %i.bi, ptr %i.n, align 8, !alias.scope !162, !noalias !163
  invoke void @_RNvNtCsj2Wav7G13rI_4sha26sha25611compress256(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.k, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i25, i64 noundef range(i64 1, 144115188075855872) %i.ay)
          to label %.noexc30 unwind label %.thread68.loopexit

.noexc30:                                         ; preds = %bb.l, %bb.j
  %i.bj = trunc nuw nsw i64 %i.ax to i8
  store i8 %i.bj, ptr %i.m, align 1, !alias.scope !164, !noalias !156
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(144) %i.g, ptr nonnull align 1 %i.az, i64 %i.ax, i1 false), !alias.scope !157, !noalias !155
  br label %_RNvXNtCs7QbGsRJVG1P_4hkdf9hmac_implINtCsfkg6qDyjgHi_4hmac4HmacNtCsj2Wav7G13rI_4sha26Sha256ENtB2_8HmacImpl6updateCs54uEYnqmHDA_13signal_crypto.exit18

bb.m:                                             ; preds = %bb.k
  %i.bk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #13, !noalias !154
  unreachable

_RNvXNtCs7QbGsRJVG1P_4hkdf9hmac_implINtCsfkg6qDyjgHi_4hmac4HmacNtCsj2Wav7G13rI_4sha26Sha256ENtB2_8HmacImpl6updateCs54uEYnqmHDA_13signal_crypto.exit18: ; preds = %bb.i, %.noexc30
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.03.083, i64 16 ; 2 uses
  %i.bm = icmp eq ptr %i.bl, %i.o
  br i1 %i.bm, label %_RNvMNtCsgxBkk5gSRhY_4core6resultINtB2_6ResulthNtNtNtB4_3num5error15TryFromIntErrorE6expectCs54uEYnqmHDA_13signal_crypto.exit, label %.lr.ph

_RNvMNtCsgxBkk5gSRhY_4core6resultINtB2_6ResulthNtNtNtB4_3num5error15TryFromIntErrorE6expectCs54uEYnqmHDA_13signal_crypto.exit: ; preds = %_RNvXNtCs7QbGsRJVG1P_4hkdf9hmac_implINtCsfkg6qDyjgHi_4hmac4HmacNtCsj2Wav7G13rI_4sha26Sha256ENtB2_8HmacImpl6updateCs54uEYnqmHDA_13signal_crypto.exit18, %_RNvXNtCs7QbGsRJVG1P_4hkdf9hmac_implINtCsfkg6qDyjgHi_4hmac4HmacNtCsj2Wav7G13rI_4sha26Sha256ENtB2_8HmacImpl6updateCs54uEYnqmHDA_13signal_crypto.exit19
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  %i.bn = icmp eq i64 %.sroa.10.092, 255
  br i1 %i.bn, label %bb.r, label %bb.n

bb.n:                                             ; preds = %_RNvMNtCsgxBkk5gSRhY_4core6resultINtB2_6ResulthNtNtNtB4_3num5error15TryFromIntErrorE6expectCs54uEYnqmHDA_13signal_crypto.exit
  %i.bo = trunc nuw i64 %.sroa.10.092 to i8
  %i.bp = add nuw i8 %i.bo, 1                     ; 2 uses
  store i8 %i.bp, ptr %.sroa.0, align 1
  call void @llvm.experimental.noalias.scope.decl(metadata !165)
  call void @llvm.experimental.noalias.scope.decl(metadata !166)
  call void @llvm.experimental.noalias.scope.decl(metadata !167)
  %.val.i33 = load i8, ptr %i.m, align 1, !alias.scope !165, !noalias !168, !noundef !5 ; 4 uses
  %i.bq = zext nneg i8 %.val.i33 to i64           ; 3 uses
  %i.br = icmp ult i8 %.val.i33, 64
  call void @llvm.assume(i1 %i.br)
  %.not = icmp eq i8 %.val.i33, 63
  br i1 %.not, label %_RNvMNtCsgxBkk5gSRhY_4core5sliceSh8split_atCs54uEYnqmHDA_13signal_crypto.exit.i34, label %bb.o
end_hunk_0
