Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libsignal-rs/original/usernames-38fc0eb963246ca5.usernames.897995bc461e8f6b-cgu.1?download=true
inline.NumInlined: 182
inline.NumDeleted: 120
begin_hunk_0_@_RINvXs1_NtCs17cqnTMcAHA_5bytes9bytes_mutNtB6_8BytesMutNtNtNtB8_3buf7buf_mut6BufMut3putINtNtBU_4take4TakeQRShEECsbNM6vbj4kjf_9usernames:bb.a
.invoke:                                          ; preds = %.noexc18, %.thread.i, %bb.d
  %i.ai = phi ptr [ @11, %.thread.i ], [ @2, %bb.d ], [ @4, %.noexc18 ]
  invoke void @_RNvNtNtCsgxBkk5gSRhY_4core9panicking11panic_const24panic_const_sub_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ai) #22
          to label %.cont unwind label %bb.n

.cont:                                            ; preds = %.invoke
  unreachable

bb.k:                                             ; preds = %_RNvXs_NtNtCs17cqnTMcAHA_5bytes3buf4takeINtB4_4TakeQRShENtNtB6_8buf_impl3Buf13copy_to_bytesCsbNM6vbj4kjf_9usernames.exit
  invoke void @_RNvXs_NtCs17cqnTMcAHA_5bytes9bytes_mutNtB4_8BytesMutNtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs17cqnTMcAHA_5bytes9bytes_mut8BytesMutECsbNM6vbj4kjf_9usernames.exit unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.m, i64 32, i1 false)
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs17cqnTMcAHA_5bytes5bytes5BytesECsbNM6vbj4kjf_9usernames.exit

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs17cqnTMcAHA_5bytes9bytes_mut8BytesMutECsbNM6vbj4kjf_9usernames.exit: ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.m, i64 32, i1 false)
  br label %bb.m

bb.m:                                             ; preds = %bb.o, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs17cqnTMcAHA_5bytes9bytes_mut8BytesMutECsbNM6vbj4kjf_9usernames.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %.loopexit

bb.n:                                             ; preds = %.invoke, %bb.j, %bb.i, %bb.f
  %i.ak = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.042.0.copyload) ]
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.042.0.copyload, i64 32
  %i.am = load ptr, ptr %i.al, align 8, !noalias !212, !nonnull !4, !noundef !4
  invoke void %i.am(ptr noundef %.sroa.11.0.copyload, ptr noundef %.sroa.5.0.copyload, i64 noundef %.sroa.846.0.copyload)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs17cqnTMcAHA_5bytes5bytes5BytesECsbNM6vbj4kjf_9usernames.exit unwind label %bb.p, !inline_history !192

bb.o:                                             ; preds = %bb.h
  store i64 %i.af, ptr %i.q, align 8, !alias.scope !210
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.042.0.copyload) ]
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.042.0.copyload, i64 32
  %i.ao = load ptr, ptr %i.an, align 8, !noalias !213, !nonnull !4, !noundef !4
  call void %i.ao(ptr noundef %.sroa.11.0.copyload, ptr noundef %.sroa.5.0.copyload, i64 noundef %.sroa.846.0.copyload), !noalias !213, !inline_history !197
  br label %bb.m

bb.p:                                             ; preds = %bb.n
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #24
  unreachable

bb.q:                                             ; preds = %bb.c
  %i.aq = sub nuw i64 %i.i, %i.o
  %.not = icmp ugt i64 %.sroa.0.0.i.i.i, %i.aq
  br i1 %.not, label %bb.s, label %.lr.ph.preheader

bb.r:                                             ; preds = %bb.c
  tail call void @_RNvNtNtCsgxBkk5gSRhY_4core9panicking11panic_const24panic_const_sub_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #27
  unreachable

bb.s:                                             ; preds = %bb.q
  %i.ar = tail call noundef zeroext i1 @_RNvMNtCs17cqnTMcAHA_5bytes9bytes_mutNtB2_8BytesMut13reserve_inner(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %.sroa.0.0.i.i.i, i1 noundef zeroext true) ; 0 uses
  br label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.q, %bb.s
  %.val.i.i27.pre = load ptr, ptr %1, align 8
  %.pre = load i64, ptr %i.n, align 8, !alias.scope !214
  %.pre79 = load i64, ptr %i.h, align 8, !alias.scope !214
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_RNvXs_NtNtCs17cqnTMcAHA_5bytes3buf4takeINtB4_4TakeQRShENtNtB6_8buf_impl3Buf7advanceCsbNM6vbj4kjf_9usernames.exit
  %i.as = phi i64 [ %i.bn, %_RNvXs_NtNtCs17cqnTMcAHA_5bytes3buf4takeINtB4_4TakeQRShENtNtB6_8buf_impl3Buf7advanceCsbNM6vbj4kjf_9usernames.exit ], [ %.val.i.i.i, %.lr.ph.preheader ] ; 3 uses
  %i.at = phi i64 [ %i.bd, %_RNvXs_NtNtCs17cqnTMcAHA_5bytes3buf4takeINtB4_4TakeQRShENtNtB6_8buf_impl3Buf7advanceCsbNM6vbj4kjf_9usernames.exit ], [ %.pre79, %.lr.ph.preheader ] ; 2 uses
  %i.au = phi i64 [ %i.bi, %_RNvXs_NtNtCs17cqnTMcAHA_5bytes3buf4takeINtB4_4TakeQRShENtNtB6_8buf_impl3Buf7advanceCsbNM6vbj4kjf_9usernames.exit ], [ %.pre, %.lr.ph.preheader ] ; 3 uses
  %i.av = phi ptr [ %i.bo, %_RNvXs_NtNtCs17cqnTMcAHA_5bytes3buf4takeINtB4_4TakeQRShENtNtB6_8buf_impl3Buf7advanceCsbNM6vbj4kjf_9usernames.exit ], [ %.val.i.i27.pre, %.lr.ph.preheader ] ; 2 uses
  %.sroa.0.0.i.i.i2666 = phi i64 [ %.sroa.0.0.i.i.i26, %_RNvXs_NtNtCs17cqnTMcAHA_5bytes3buf4takeINtB4_4TakeQRShENtNtB6_8buf_impl3Buf7advanceCsbNM6vbj4kjf_9usernames.exit ], [ %.sroa.0.0.i.i.i, %.lr.ph.preheader ] ; 11 uses
  %.sroa.8.065 = phi i64 [ %i.bp, %_RNvXs_NtNtCs17cqnTMcAHA_5bytes3buf4takeINtB4_4TakeQRShENtNtB6_8buf_impl3Buf7advanceCsbNM6vbj4kjf_9usernames.exit ], [ %2, %.lr.ph.preheader ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !214)
  %i.aw = icmp ult i64 %i.at, %i.au
  br i1 %i.aw, label %bb.u, label %bb.t

bb.t:                                             ; preds = %.lr.ph
  %i.ax = sub nuw i64 %i.at, %i.au
  %.not.i29 = icmp ugt i64 %.sroa.0.0.i.i.i2666, %i.ax
  br i1 %.not.i29, label %bb.v, label %.thread.i30

bb.u:                                             ; preds = %.lr.ph
  tail call void @_RNvNtNtCsgxBkk5gSRhY_4core9panicking11panic_const24panic_const_sub_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #22, !noalias !215
  unreachable

bb.v:                                             ; preds = %bb.t
  %i.ay = tail call noundef zeroext i1 @_RNvMNtCs17cqnTMcAHA_5bytes9bytes_mutNtB2_8BytesMut13reserve_inner(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, i64 noundef range(i64 0, -9223372036854775808) %.sroa.0.0.i.i.i2666, i1 noundef zeroext true), !noalias !216 ; 0 uses
  %.pre.i31 = load i64, ptr %i.n, align 8, !alias.scope !214 ; 2 uses
  %.pre1.i32 = load i64, ptr %i.h, align 8, !alias.scope !214
  %i.az = icmp ult i64 %.pre1.i32, %.pre.i31
  br i1 %i.az, label %bb.ab, label %.thread.i30

.thread.i30:                                      ; preds = %bb.v, %bb.t
  %i.ba = phi i64 [ %.pre.i31, %bb.v ], [ %i.au, %bb.t ]
  %i.bb = load ptr, ptr %0, align 8, !alias.scope !214, !nonnull !4, !noundef !4
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.ba
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.bc, ptr noundef nonnull readonly align 1 dereferenceable(1) %i.av, i64 range(i64 0, -9223372036854775808) %.sroa.0.0.i.i.i2666, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !217)
  %i.bd = load i64, ptr %i.h, align 8, !alias.scope !218, !noundef !4 ; 3 uses
  %i.be = load i64, ptr %i.n, align 8, !alias.scope !218, !noundef !4 ; 4 uses
  %i.bf = icmp ult i64 %i.bd, %i.be
  br i1 %i.bf, label %bb.x, label %bb.w

bb.w:                                             ; preds = %.thread.i30
  %i.bg = sub nuw i64 %i.bd, %i.be                ; 2 uses
  %i.bh = icmp ugt i64 %.sroa.0.0.i.i.i2666, %i.bg
  br i1 %i.bh, label %bb.z, label %bb.y, !prof !10

bb.x:                                             ; preds = %.thread.i30
  tail call void @_RNvNtNtCsgxBkk5gSRhY_4core9panicking11panic_const24panic_const_sub_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #22, !noalias !219
  unreachable

bb.y:                                             ; preds = %bb.w
  %i.bi = add i64 %i.be, %.sroa.0.0.i.i.i2666     ; 3 uses
  %i.bj = icmp ult i64 %i.bi, %i.be
  br i1 %i.bj, label %bb.aa, label %bb.ac

bb.z:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !220
  store i64 %.sroa.0.0.i.i.i2666, ptr %i.b, align 8, !noalias !220
  %i.bk = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.bg, ptr %i.bk, align 8, !noalias !220
  call void @_RNvCs17cqnTMcAHA_5bytes13panic_advance(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b) #27, !noalias !219
  unreachable

bb.aa:                                            ; preds = %bb.y
  tail call void @_RNvNtNtCsgxBkk5gSRhY_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #22, !noalias !219
  unreachable

bb.ab:                                            ; preds = %bb.v
  tail call void @_RNvNtNtCsgxBkk5gSRhY_4core9panicking11panic_const24panic_const_sub_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #22, !noalias !216
  unreachable

bb.ac:                                            ; preds = %bb.y
  store i64 %i.bi, ptr %i.n, align 8, !alias.scope !218
  tail call void @llvm.experimental.noalias.scope.decl(metadata !221)
  %i.bl = icmp ult i64 %i.as, %.sroa.0.0.i.i.i2666
  br i1 %i.bl, label %bb.ad, label %_RNvXs_NtNtCs17cqnTMcAHA_5bytes3buf4takeINtB4_4TakeQRShENtNtB6_8buf_impl3Buf7advanceCsbNM6vbj4kjf_9usernames.exit, !prof !10

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !222
  store i64 %.sroa.0.0.i.i.i2666, ptr %i.a, align 8, !noalias !222
  %i.bm = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.as, ptr %i.bm, align 8, !noalias !222
  call void @_RNvCs17cqnTMcAHA_5bytes13panic_advance(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a) #27, !noalias !222
  unreachable

_RNvXs_NtNtCs17cqnTMcAHA_5bytes3buf4takeINtB4_4TakeQRShENtNtB6_8buf_impl3Buf7advanceCsbNM6vbj4kjf_9usernames.exit: ; preds = %bb.ac
  %i.bn = sub nuw i64 %i.as, %.sroa.0.0.i.i.i2666 ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.av, i64 %.sroa.0.0.i.i.i2666 ; 2 uses
  store ptr %i.bo, ptr %1, align 8, !alias.scope !221, !noalias !223, !captures !9
  store i64 %i.bn, ptr %i.g, align 8, !alias.scope !221, !noalias !223
  %i.bp = sub nuw i64 %.sroa.8.065, %.sroa.0.0.i.i.i2666 ; 2 uses
  %.sroa.0.0.i.i.i26 = tail call noundef i64 @llvm.umin.i64(i64 %i.bp, i64 %i.bn) ; 2 uses
  %.not51 = icmp eq i64 %.sroa.0.0.i.i.i26, 0
  br i1 %.not51, label %.loopexit, label %.lr.ph

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs17cqnTMcAHA_5bytes5bytes5BytesECsbNM6vbj4kjf_9usernames.exit: ; preds = %bb.n, %bb.l
  %.pn = phi { ptr, i32 } [ %i.aj, %bb.l ], [ %i.ak, %bb.n ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXsq_NtCsdRrpXuHtjOb_16curve25519_dalek9ristrettoNtB6_14RistrettoPointNtNtB8_6traits14MultiscalarMul15multiscalar_mulRSNtNtB8_6scalar6ScalarINtNtNtCsgxBkk5gSRhY_4core5slice4iter4IterBO_EECsbNM6vbj4kjf_9usernames(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([160 x i8]) align 8 captures(none) dereferenceable(160) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, 288230376151711744) %2, ptr noundef nonnull %3, ptr noundef %4) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RINvXsx_NtCsdRrpXuHtjOb_16curve25519_dalek7edwardsNtB6_12EdwardsPointNtNtB8_6traits14MultiscalarMul15multiscalar_mulRSNtNtB8_6scalar6ScalarINtNtNtNtCsgxBkk5gSRhY_4core4iter8adapters3map3MapINtNtNtB2m_5slice4iter4IterNtNtB8_9ristretto14RistrettoPointENCINvXsq_B3u_B3s_B15_15multiscalar_mulB1Q_B31_E0EECsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef nonnull sret([160 x i8]) align 8 captures(address) dereferenceable(160) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noundef nonnull %3, ptr noundef %4)
  ret void
}

; Function Attrs: nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define hidden void @_RNvXCseNmJmsPJ47l_7zeroizeaNtB2_7Zeroize7zeroizeCsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef dereferenceable(1) %0) unnamed_addr #5 {
bb.a:
  store volatile i8 0, ptr %0, align 1
  tail call void asm sideeffect inteldialect "# ${0:q}", "r,~{memory}"(ptr nonnull %0) #21, !srcloc !6
  ret void
}

; Function Attrs: nounwind nonlazybind memory(read, inaccessiblemem: readwrite) uwtable
define hidden void @_RNvXCseNmJmsPJ47l_7zeroizeuNtB2_7Zeroize7zeroizeCsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef nonnull %0) unnamed_addr #6 {
bb.a:
  tail call void asm sideeffect inteldialect "# ${0:q}", "r,~{memory}"(ptr nonnull %0) #21, !srcloc !6
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtCsfkg6qDyjgHi_4hmac9block_apiINtB2_8HmacCoreNtCsj2Wav7G13rI_4sha26Sha256ENtNtCsgxBkk5gSRhY_4core5clone5Clone5cloneCsbNM6vbj4kjf_9usernames(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvXNtNtCs2KKWnYNkHVH_6digest9block_api11ct_variableINtB2_12CtOutWrapperNtNtCsj2Wav7G13rI_4sha29block_api13Sha256VarCoreINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIB1V_IB1V_IB1V_IB1V_IB1V_NtB1X_5UTermNtNtB1Z_3bit2B1ENtB38_2B0EB3m_EB3m_EB3m_EB3m_EENtNtCsgxBkk5gSRhY_4core5clone5Clone5cloneCsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @_RNvXNtNtCs2KKWnYNkHVH_6digest9block_api11ct_variableINtB2_12CtOutWrapperNtNtCsj2Wav7G13rI_4sha29block_api13Sha256VarCoreINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIB1V_IB1V_IB1V_IB1V_IB1V_NtB1X_5UTermNtNtB1Z_3bit2B1ENtB38_2B0EB3m_EB3m_EB3m_EB3m_EENtNtCsgxBkk5gSRhY_4core5clone5Clone5cloneCsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.a)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden noundef ptr @_RNvXs1_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters4skipINtB5_4SkipINtNtNtBb_5slice4iter4IterhEENtNtNtB9_6traits12double_ended19DoubleEndedIterator9next_backCsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0) unnamed_addr #7 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val10 = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.b = ptrtoint ptr %.val10 to i64
  %i.c = ptrtoint ptr %.val to i64
  %i.d = sub nuw i64 %i.b, %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i64, ptr %i.e, align 8, !noundef !4
  %.not.not = icmp ule i64 %i.d, %i.f
  %1 = icmp eq ptr %.val, %.val10
  %or.cond = or i1 %1, %.not.not
  br i1 %or.cond, label %_RNvXs2K_NtNtCsgxBkk5gSRhY_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsbNM6vbj4kjf_9usernames.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds i8, ptr %.val10, i64 -1 ; 2 uses
  store ptr %i.g, ptr %i.a, align 8, !alias.scope !226
  br label %_RNvXs2K_NtNtCsgxBkk5gSRhY_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsbNM6vbj4kjf_9usernames.exit

_RNvXs2K_NtNtCsgxBkk5gSRhY_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsbNM6vbj4kjf_9usernames.exit: ; preds = %bb.b, %bb.a
  %.sroa.0.0 = phi ptr [ null, %bb.a ], [ %i.g, %bb.b ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs1_NvNtCsbNM6vbj4kjf_9usernames5error1__NtB7_13UsernameErrorNtNtCsgxBkk5gSRhY_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly captures(none) dereferenceable(1) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !range !227, !noundef !4
  %i.b = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4 ; 12 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !4, !align !5, !noundef !4
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !invariant.load !4, !nonnull !4 ; 12 uses
  switch i8 %i.a, label %default.unreachable144 [
    i8 0, label %bb.b
    i8 1, label %bb.d
    i8 2, label %bb.e
    i8 3, label %bb.f
    i8 4, label %bb.g
    i8 5, label %bb.h
    i8 6, label %bb.i
    i8 7, label %bb.j
    i8 8, label %bb.k
    i8 9, label %bb.l
    i8 10, label %bb.m
    i8 11, label %bb.n
  ]

default.unreachable144:                           ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 %i.f(ptr noundef nonnull %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @13, i64 noundef 27) #25
  br label %bb.c

bb.c:                                             ; preds = %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.g, %bb.b ], [ %i.m, %bb.i ], [ %i.h, %bb.d ], [ %i.r, %bb.n ], [ %i.i, %bb.e ], [ %i.o, %bb.k ], [ %i.j, %bb.f ], [ %i.q, %bb.m ], [ %i.k, %bb.g ], [ %i.n, %bb.j ], [ %i.l, %bb.h ], [ %i.p, %bb.l ]
  ret i1 %.sroa.0.0.in

bb.d:                                             ; preds = %bb.a
  %i.h = tail call noundef zeroext i1 %i.f(ptr noundef nonnull %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 20) #25
  br label %bb.c

bb.e:                                             ; preds = %bb.a
  %i.i = tail call noundef zeroext i1 %i.f(ptr noundef nonnull %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @15, i64 noundef 30) #25
  br label %bb.c

bb.f:                                             ; preds = %bb.a
  %i.j = tail call noundef zeroext i1 %i.f(ptr noundef nonnull %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @16, i64 noundef 38) #25
  br label %bb.c

bb.g:                                             ; preds = %bb.a
  %i.k = tail call noundef zeroext i1 %i.f(ptr noundef nonnull %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @17, i64 noundef 21) #25
  br label %bb.c

bb.h:                                             ; preds = %bb.a
  %i.l = tail call noundef zeroext i1 %i.f(ptr noundef nonnull %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @18, i64 noundef 20) #25
  br label %bb.c

bb.i:                                             ; preds = %bb.a
  %i.m = tail call noundef zeroext i1 %i.f(ptr noundef nonnull %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @19, i64 noundef 29) #25
  br label %bb.c

bb.j:                                             ; preds = %bb.a
  %i.n = tail call noundef zeroext i1 %i.f(ptr noundef nonnull %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @20, i64 noundef 28) #25
  br label %bb.c

bb.k:                                             ; preds = %bb.a
  %i.o = tail call noundef zeroext i1 %i.f(ptr noundef nonnull %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @21, i64 noundef 38) #25
  br label %bb.c

bb.l:                                             ; preds = %bb.a
  %i.p = tail call noundef zeroext i1 %i.f(ptr noundef nonnull %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @22, i64 noundef 83) #25
  br label %bb.c

bb.m:                                             ; preds = %bb.a
  %i.q = tail call noundef zeroext i1 %i.f(ptr noundef nonnull %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @23, i64 noundef 44) #25
  br label %bb.c

bb.n:                                             ; preds = %bb.a
  %i.r = tail call noundef zeroext i1 %i.f(ptr noundef nonnull %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @24, i64 noundef 49) #25
  br label %bb.c
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs1_NvNtCsbNM6vbj4kjf_9usernames5errors0_1__NtB7_17UsernameLinkErrorNtNtCsgxBkk5gSRhY_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly captures(none) dereferenceable(1) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !range !228, !noundef !4
  %i.b = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !4, !align !5, !noundef !4
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !invariant.load !4, !nonnull !4 ; 6 uses
  switch i8 %i.a, label %default.unreachable72 [
    i8 0, label %bb.b
    i8 1, label %bb.d
    i8 2, label %bb.e
    i8 3, label %bb.f
    i8 4, label %bb.g
    i8 5, label %bb.h
  ]

default.unreachable72:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 %i.f(ptr noundef nonnull %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @25, i64 noundef 49) #25
  br label %bb.c

bb.c:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.g, %bb.b ], [ %i.j, %bb.f ], [ %i.h, %bb.d ], [ %i.l, %bb.h ], [ %i.i, %bb.e ], [ %i.k, %bb.g ]
  ret i1 %.sroa.0.0.in

bb.d:                                             ; preds = %bb.a
  %i.h = tail call noundef zeroext i1 %i.f(ptr noundef nonnull %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @26, i64 noundef 32) #25
  br label %bb.c

bb.e:                                             ; preds = %bb.a
  %i.i = tail call noundef zeroext i1 %i.f(ptr noundef nonnull %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @27, i64 noundef 75) #25
  br label %bb.c

bb.f:                                             ; preds = %bb.a
  %i.j = tail call noundef zeroext i1 %i.f(ptr noundef nonnull %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @28, i64 noundef 83) #25
  br label %bb.c

bb.g:                                             ; preds = %bb.a
  %i.k = tail call noundef zeroext i1 %i.f(ptr noundef nonnull %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @29, i64 noundef 50) #25
  br label %bb.c

bb.h:                                             ; preds = %bb.a
  %i.l = tail call noundef zeroext i1 %i.f(ptr noundef nonnull %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @30, i64 noundef 61) #25
  br label %bb.c
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs1_NvNtCsbNM6vbj4kjf_9usernames5errors_1__NtB7_24ProofVerificationFailureNtNtCsgxBkk5gSRhY_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(none) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !4, !align !5, !noundef !4
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !4, !nonnull !4
  %i.f = tail call noundef zeroext i1 %i.e(ptr noundef nonnull %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @31, i64 noundef 30) #25
  ret i1 %i.f
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs2_CseNmJmsPJ47l_7zeroizeAaj40_NtB5_7Zeroize7zeroizeCsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef dereferenceable(64) %0) unnamed_addr #2 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %0, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.b, ptr %i.c, align 8
  call void @_RNvXs4_CseNmJmsPJ47l_7zeroizeINtNtNtCsgxBkk5gSRhY_4core5slice4iter7IterMutaENtB5_7Zeroize7zeroizeCsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden { ptr, i64 } @_RNvXs_NtNtCs17cqnTMcAHA_5bytes3buf4takeINtB4_4TakeQQRShENtNtB6_8buf_impl3Buf5chunkCsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !4, !align !5, !noundef !4
  %.val.i = load ptr, ptr %.val, align 8, !nonnull !4, !align !5, !noundef !4 ; 2 uses
  %.val.i.i = load ptr, ptr %.val.i, align 8, !nonnull !4, !noundef !4
  %i.a = getelementptr i8, ptr %.val.i, i64 8
  %.val1.i.i = load i64, ptr %i.a, align 8, !noundef !4
  %i.b = insertvalue { ptr, i64 } poison, ptr %.val.i.i, 0
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !noundef !4
  %.sroa.0.0.i = tail call noundef i64 @llvm.umin.i64(i64 %i.d, i64 %.val1.i.i)
  %i.e = insertvalue { ptr, i64 } %i.b, i64 %.sroa.0.0.i, 1
  ret { ptr, i64 } %i.e
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCs17cqnTMcAHA_5bytes3buf4takeINtB4_4TakeQQRShENtNtB6_8buf_impl3Buf7advanceCsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, i64 noundef %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !4 ; 2 uses
  %.not = icmp ugt i64 %1, %i.c
  br i1 %.not, label %bb.b, label %bb.c, !prof !10

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @36, i64 noundef 35, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @37) #22
  unreachable

bb.c:                                             ; preds = %bb.a
  %.val = load ptr, ptr %0, align 8, !nonnull !4, !align !5, !noundef !4
  %.val.i = load ptr, ptr %.val, align 8, !nonnull !4, !align !5, !noundef !4 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !231)
  %i.d = getelementptr inbounds nuw i8, ptr %.val.i, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !231, !noundef !4 ; 3 uses
  %i.f = icmp ult i64 %i.e, %1
  br i1 %i.f, label %bb.d, label %bb.e, !prof !10

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !231
  store i64 %1, ptr %i.a, align 8, !noalias !231
end_hunk_0
