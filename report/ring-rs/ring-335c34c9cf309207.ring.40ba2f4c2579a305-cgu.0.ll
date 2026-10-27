Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ring-rs/original/ring-335c34c9cf309207.ring.40ba2f4c2579a305-cgu.0?download=true
inline.NumInlined: 2615
inline.NumDeleted: 1171
loop-unroll.NumCompletelyUnrolled: 84
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 88
begin_hunk_0_@_RINvNtNtCs5yxAJGbRKSL_4ring4aead7aes_gcm12seal_stridedNtNtNtB4_3aes8fallback3KeyNtNtNtB4_3gcm8fallback3KeyEB6_:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.g, ptr noundef nonnull align 1 dereferenceable(16) %i.c, i64 16, i1 false), !noalias !895
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !896
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !896
  %i.cm = sub nuw nsw i64 16, %i.by
  %i.cn = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.by
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.cn, i8 0, i64 %i.cm, i1 false), !noalias !895
  %.sroa.0.0.copyload.i = load i128, ptr %i.g, align 16, !noalias !895
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.035.0.copyload) ]
  %i.co = xor i128 %.sroa.0.0.copyload.i, %.sroa.536.0.copyload ; 2 uses
  %i.cp = load i64, ptr %.sroa.035.0.copyload, align 8, !alias.scope !898, !noalias !895, !noundef !15 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.035.0.copyload, i64 8
  %i.cr = load i64, ptr %i.cq, align 8, !alias.scope !898, !noalias !895, !noundef !15 ; 2 uses
  %i.cs = trunc i128 %i.co to i64
  %i.ct = lshr i128 %i.co, 64
  %i.cu = trunc nuw i128 %i.ct to i64
  %i.cv = call noundef i64 @llvm.bswap.i64(i64 %i.cs) ; 2 uses
  %i.cw = call noundef i64 @llvm.bswap.i64(i64 %i.cu) ; 2 uses
  %i.cx = call fastcc { i64, i64 } @_RNvNtNtNtNtCs5yxAJGbRKSL_4ring4aead3gcm8fallback3w6414gcm_mul64_nohw(i64 noundef %i.cw, i64 noundef %i.cr) ; 2 uses
  %i.cy = extractvalue { i64, i64 } %i.cx, 0      ; 8 uses
  %i.cz = extractvalue { i64, i64 } %i.cx, 1      ; 2 uses
  %i.da = call fastcc { i64, i64 } @_RNvNtNtNtNtCs5yxAJGbRKSL_4ring4aead3gcm8fallback3w6414gcm_mul64_nohw(i64 noundef %i.cv, i64 noundef %i.cp) ; 2 uses
  %i.db = extractvalue { i64, i64 } %i.da, 0      ; 2 uses
  %i.dc = extractvalue { i64, i64 } %i.da, 1      ; 2 uses
  %i.dd = xor i64 %i.cw, %i.cv
  %i.de = xor i64 %i.cr, %i.cp
  %i.df = call fastcc { i64, i64 } @_RNvNtNtNtNtCs5yxAJGbRKSL_4ring4aead3gcm8fallback3w6414gcm_mul64_nohw(i64 noundef %i.dd, i64 noundef %i.de) ; 2 uses
  %i.dg = extractvalue { i64, i64 } %i.df, 0
  %i.dh = extractvalue { i64, i64 } %i.df, 1
  %i.di = shl i64 %i.cy, 63
  %i.dj = shl i64 %i.cy, 62
  %i.dk = shl i64 %i.cy, 57
  %i.dl = xor i64 %i.dj, %i.di
  %i.dm = xor i64 %i.dl, %i.dk
  %i.dn = xor i64 %i.dm, %i.dg
  %i.do = xor i64 %i.dn, %i.cy
  %i.dp = xor i64 %i.do, %i.cz
  %i.dq = xor i64 %i.dp, %i.db                    ; 7 uses
  %i.dr = lshr i64 %i.cy, 1
  %i.ds = shl i64 %i.dq, 63
  %i.dt = lshr i64 %i.dq, 1
  %i.du = lshr i64 %i.cy, 2
  %i.dv = shl i64 %i.dq, 62
  %i.dw = lshr i64 %i.dq, 2
  %i.dx = lshr i64 %i.cy, 7
  %i.dy = shl i64 %i.dq, 57
  %i.dz = xor i64 %i.dr, %i.du
  %i.ea = xor i64 %i.dz, %i.dx
  %i.eb = xor i64 %i.ea, %i.dh
  %i.ec = xor i64 %i.eb, %i.ds
  %i.ed = xor i64 %i.ec, %i.dv
  %i.ee = xor i64 %i.ed, %i.dy
  %i.ef = xor i64 %i.ee, %i.cz
  %i.eg = xor i64 %i.ef, %i.cy
  %i.eh = xor i64 %i.eg, %i.dc
  %i.ei = xor i64 %i.eh, %i.db
  %i.ej = lshr i64 %i.dq, 7
  %i.ek = xor i64 %i.dw, %i.dt
  %i.el = xor i64 %i.ek, %i.ej
  %i.em = xor i64 %i.el, %i.dc
  %i.en = xor i64 %i.em, %i.dq
  %i.eo = call i64 @llvm.bswap.i64(i64 %i.en)
  %i.ep = call i64 @llvm.bswap.i64(i64 %i.ei)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bx, ptr nonnull readonly align 16 dereferenceable(16) %i.g, i64 range(i64 0, -9223372036854775808) %i.by, i1 false), !noalias !895
  br label %_RINvNtNtCs5yxAJGbRKSL_4ring4aead7aes_gcm11seal_finishNtNtNtB4_3aes8fallback3KeyNtNtNtB4_3gcm8fallback3KeyEB6_.exit

_RINvNtNtCs5yxAJGbRKSL_4ring4aead7aes_gcm11seal_finishNtNtNtB4_3aes8fallback3KeyNtNtNtB4_3gcm8fallback3KeyEB6_.exit: ; preds = %_RNvXs1f_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_9ChunksMutAhj10_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yxAJGbRKSL_4ring.exit.thread, %_RNvMNtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping13partial_blockINtB2_12PartialBlockhKj10_E18overwrite_at_startB8_.exit.i
  %.sroa.536.sroa.6.0 = phi i64 [ %i.ep, %_RNvMNtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping13partial_blockINtB2_12PartialBlockhKj10_E18overwrite_at_startB8_.exit.i ], [ %.sroa.536.sroa.6.0.extract.trunc, %_RNvXs1f_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_9ChunksMutAhj10_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yxAJGbRKSL_4ring.exit.thread ]
  %.sroa.536.sroa.0.0 = phi i64 [ %i.eo, %_RNvMNtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping13partial_blockINtB2_12PartialBlockhKj10_E18overwrite_at_startB8_.exit.i ], [ %.sroa.536.sroa.0.0.extract.trunc, %_RNvXs1f_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_9ChunksMutAhj10_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yxAJGbRKSL_4ring.exit.thread ]
  %.sroa.536.sroa.6.0.insert.ext40 = zext i64 %.sroa.536.sroa.6.0 to i128
  %.sroa.536.sroa.6.0.insert.shift41 = shl nuw i128 %.sroa.536.sroa.6.0.insert.ext40, 64
  %.sroa.536.sroa.0.0.insert.ext37 = zext i64 %.sroa.536.sroa.0.0 to i128
  %.sroa.536.sroa.0.0.insert.insert39 = or disjoint i128 %.sroa.536.sroa.6.0.insert.shift41, %.sroa.536.sroa.0.0.insert.ext37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !899
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull readonly align 1 dereferenceable(16) %7, i64 16, i1 false), !noalias !900
  %i.eq = zext i64 %.sroa.10.0.copyload to i128
  %i.er = zext i64 %.sroa.9.0.copyload to i128
  %i.es = shl nuw i128 %i.er, 64
  %i.et = or disjoint i128 %i.es, %i.eq
  %.sroa.0.0.insert.insert.i = call i128 @llvm.bswap.i128(i128 %i.et)
  %i.eu = xor i128 %.sroa.536.sroa.0.0.insert.insert39, %.sroa.0.0.insert.insert.i ; 2 uses
  %i.ev = load i64, ptr %.sroa.035.0.copyload, align 8, !alias.scope !901, !noalias !902, !noundef !15 ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %.sroa.035.0.copyload, i64 8
  %i.ex = load i64, ptr %i.ew, align 8, !alias.scope !901, !noalias !902, !noundef !15 ; 2 uses
  %i.ey = trunc i128 %i.eu to i64
  %i.ez = lshr i128 %i.eu, 64
  %i.fa = trunc nuw i128 %i.ez to i64
  %i.fb = call noundef i64 @llvm.bswap.i64(i64 %i.ey) ; 2 uses
  %i.fc = call noundef i64 @llvm.bswap.i64(i64 %i.fa) ; 2 uses
  %i.fd = call fastcc { i64, i64 } @_RNvNtNtNtNtCs5yxAJGbRKSL_4ring4aead3gcm8fallback3w6414gcm_mul64_nohw(i64 noundef %i.fc, i64 noundef %i.ex) ; 2 uses
  %i.fe = extractvalue { i64, i64 } %i.fd, 0      ; 8 uses
  %i.ff = extractvalue { i64, i64 } %i.fd, 1      ; 2 uses
  %i.fg = call fastcc { i64, i64 } @_RNvNtNtNtNtCs5yxAJGbRKSL_4ring4aead3gcm8fallback3w6414gcm_mul64_nohw(i64 noundef %i.fb, i64 noundef %i.ev) ; 2 uses
  %i.fh = extractvalue { i64, i64 } %i.fg, 0      ; 2 uses
  %i.fi = extractvalue { i64, i64 } %i.fg, 1      ; 2 uses
  %i.fj = xor i64 %i.fc, %i.fb
  %i.fk = xor i64 %i.ex, %i.ev
  %i.fl = call fastcc { i64, i64 } @_RNvNtNtNtNtCs5yxAJGbRKSL_4ring4aead3gcm8fallback3w6414gcm_mul64_nohw(i64 noundef %i.fj, i64 noundef %i.fk) ; 2 uses
  %i.fm = extractvalue { i64, i64 } %i.fl, 0
  %i.fn = extractvalue { i64, i64 } %i.fl, 1
  %i.fo = shl i64 %i.fe, 63
  %i.fp = shl i64 %i.fe, 62
  %i.fq = shl i64 %i.fe, 57
  %i.fr = xor i64 %i.fp, %i.fo
  %i.fs = xor i64 %i.fr, %i.fq
  %i.ft = xor i64 %i.fs, %i.fm
  %i.fu = xor i64 %i.ft, %i.fe
  %i.fv = xor i64 %i.fu, %i.ff
  %i.fw = xor i64 %i.fv, %i.fh                    ; 7 uses
  %i.fx = lshr i64 %i.fe, 1
  %i.fy = shl i64 %i.fw, 63
  %i.fz = lshr i64 %i.fw, 1
  %i.ga = lshr i64 %i.fe, 2
  %i.gb = shl i64 %i.fw, 62
  %i.gc = lshr i64 %i.fw, 2
  %i.gd = lshr i64 %i.fe, 7
  %i.ge = shl i64 %i.fw, 57
  %i.gf = xor i64 %i.fx, %i.ga
  %i.gg = xor i64 %i.gf, %i.gd
  %i.gh = xor i64 %i.gg, %i.fn
  %i.gi = xor i64 %i.gh, %i.fy
  %i.gj = xor i64 %i.gi, %i.gb
  %i.gk = xor i64 %i.gj, %i.ge
  %i.gl = xor i64 %i.gk, %i.ff
  %i.gm = xor i64 %i.gl, %i.fe
  %i.gn = xor i64 %i.gm, %i.fi
  %i.go = xor i64 %i.gn, %i.fh
  %i.gp = lshr i64 %i.fw, 7
  %i.gq = xor i64 %i.gc, %i.fz
  %i.gr = xor i64 %i.gq, %i.gp
  %i.gs = xor i64 %i.gr, %i.fi
  %i.gt = xor i64 %i.gs, %i.fw
  %i.gu = zext i64 %i.go to i128
  %i.gv = zext i64 %i.gt to i128
  %i.gw = shl nuw i128 %i.gv, 64
  %i.gx = or disjoint i128 %i.gw, %i.gu
  %.sroa.4.sroa.0.0.insert.insert8.i = call i128 @llvm.bswap.i128(i128 %i.gx)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !899
  store i128 %.sroa.4.sroa.0.0.insert.insert8.i, ptr %i.f, align 16, !noalias !903
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !899
  store ptr %i.f, ptr %i.d, align 8, !noalias !899
  %i.gy = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 16, ptr %i.gy, align 8, !noalias !899
  %i.gz = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 0, ptr %i.gz, align 8, !noalias !899
  call void @_RNvXs4_NtNtNtCs5yxAJGbRKSL_4ring4aead3aes8fallbackNtB5_3KeyNtB7_12EncryptCtr3220ctr32_encrypt_within(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(248) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull dereferenceable(16) %i.e) #39, !noalias !904
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !899
  %i.ha = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.ha, ptr noundef nonnull align 16 dereferenceable(16) %i.f, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !899
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !899
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.e

bb.e:                                             ; preds = %_RINvNtNtCs5yxAJGbRKSL_4ring4aead7aes_gcm11seal_finishNtNtNtB4_3aes8fallback3KeyNtNtNtB4_3gcm8fallback3KeyEB6_.exit, %bb.d
  %storemerge = phi i8 [ 0, %_RINvNtNtCs5yxAJGbRKSL_4ring4aead7aes_gcm11seal_finishNtNtNtB4_3aes8fallback3KeyNtNtNtB4_3gcm8fallback3KeyEB6_.exit ], [ 1, %bb.d ]
  store i8 %storemerge, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  ret void
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic5limbs6x86_644mont12mul_mont5_4xTINtNtNtBa_8polyfill12uninit_slice6UninityERSyB1S_EEBa_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(48) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %2, i64 noundef range(i64 0, 288230376151711744) %3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %4, i1 noundef zeroext %5) unnamed_addr #9 personality ptr @rust_eh_personality {
bb.a:
  %i.a = shl nuw nsw i64 %3, 2                    ; 14 uses
  %i.b = icmp samesign ult i64 %3, 2              ; 2 uses
  br i1 %5, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !937)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !938)
  br i1 %i.b, label %bb.d, label %bb.c, !prof !16

bb.c:                                             ; preds = %bb.b
  %i.c = icmp samesign ugt i64 %3, 32
  br i1 %i.c, label %bb.h, label %bb.e, !prof !16

bb.d:                                             ; preds = %bb.b
  %i.d = tail call fastcc { i64, i64 } @_RNvMNtNtCs5yxAJGbRKSL_4ring10arithmetic16limb_slice_errorNtB2_14LimbSliceError9too_short(i64 noundef range(i64 0, 1152921504606846973) %i.a) #39
  %i.e = extractvalue { i64, i64 } %i.d, 1
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.f, align 8, !alias.scope !937
  br label %_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic3ffi15bn_mul_mont_ffiTNtNtNtB6_3cpu6x86_643AdxNtBZ_4Bmi2EKj8_Kj4_TINtNtNtB6_8polyfill12uninit_slice6UninityERSyB2l_EEB6_.exit

bb.e:                                             ; preds = %bb.c
  %.sroa.02.0.copyload.i = load ptr, ptr %1, align 8, !alias.scope !938 ; 3 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.5.0.copyload.i = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !938 ; 2 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.6.0.copyload.i = load i64, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !938 ; 2 uses
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.7.0.copyload.i = load ptr, ptr %.sroa.7.0..sroa_idx.i, align 8, !alias.scope !938 ; 2 uses
  %.sroa.83.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.83.0.copyload.i = load i64, ptr %.sroa.83.0..sroa_idx.i, align 8, !alias.scope !938 ; 2 uses
  %.not.i.i = icmp eq i64 %.sroa.83.0.copyload.i, %i.a
  br i1 %.not.i.i, label %bb.f, label %bb.i, !prof !19

bb.f:                                             ; preds = %bb.e
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.4.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !938 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.0.copyload.i), "nonnull"(ptr %.sroa.5.0.copyload.i), "nonnull"(ptr %.sroa.02.0.copyload.i) ]
  %.not.i.i.i = icmp eq i64 %.sroa.4.0.copyload.i, %i.a
  br i1 %.not.i.i.i, label %bb.g, label %bb.i, !prof !19

bb.g:                                             ; preds = %bb.f
  %.not7.i.i.i = icmp eq i64 %.sroa.6.0.copyload.i, %i.a
  br i1 %.not7.i.i.i, label %bb.j, label %bb.i, !prof !19

bb.h:                                             ; preds = %bb.c
  %i.g = tail call fastcc { i64, i64 } @_RNvMNtNtCs5yxAJGbRKSL_4ring10arithmetic16limb_slice_errorNtB2_14LimbSliceError8too_long(i64 noundef range(i64 0, 1152921504606846973) %i.a) #39
  %i.h = extractvalue { i64, i64 } %i.g, 1
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 2, ptr %i.i, align 8, !alias.scope !937
  br label %_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic3ffi15bn_mul_mont_ffiTNtNtNtB6_3cpu6x86_643AdxNtBZ_4Bmi2EKj8_Kj4_TINtNtNtB6_8polyfill12uninit_slice6UninityERSyB2l_EEB6_.exit

bb.i:                                             ; preds = %bb.g, %bb.f, %bb.e
  %.sroa.8.0.ph.i = phi i64 [ %.sroa.83.0.copyload.i, %bb.e ], [ %.sroa.6.0.copyload.i, %bb.g ], [ %.sroa.4.0.copyload.i, %bb.f ]
  %i.j = tail call fastcc { i64, i64 } @_RNvMNtNtCs5yxAJGbRKSL_4ring10arithmetic16limb_slice_errorNtB2_14LimbSliceError12len_mismatch(i64 noundef %.sroa.8.0.ph.i) #39
  %i.k = extractvalue { i64, i64 } %i.j, 1
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.l, align 8, !alias.scope !937
  br label %_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic3ffi15bn_mul_mont_ffiTNtNtNtB6_3cpu6x86_643AdxNtBZ_4Bmi2EKj8_Kj4_TINtNtNtB6_8polyfill12uninit_slice6UninityERSyB2l_EEB6_.exit

bb.j:                                             ; preds = %bb.g
  tail call void @ring_core_0_17_16000__bn_mulx4x_mont(ptr noundef nonnull %.sroa.02.0.copyload.i, ptr noundef nonnull %.sroa.5.0.copyload.i, ptr noundef nonnull %.sroa.7.0.copyload.i, ptr noundef nonnull readonly align 8 %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %4, i64 noundef range(i64 0, 1152921504606846973) %i.a) #36, !noalias !939, !inline_history !920
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.02.0.copyload.i, ptr %i.m, align 8, !alias.scope !937
  br label %_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic3ffi15bn_mul_mont_ffiTNtNtNtB6_3cpu6x86_643AdxNtBZ_4Bmi2EKj8_Kj4_TINtNtNtB6_8polyfill12uninit_slice6UninityERSyB2l_EEB6_.exit

bb.k:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !940)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !941)
  br i1 %i.b, label %bb.m, label %bb.l, !prof !16

bb.l:                                             ; preds = %bb.k
  %i.n = icmp samesign ugt i64 %3, 32
  br i1 %i.n, label %bb.q, label %bb.n, !prof !16

bb.m:                                             ; preds = %bb.k
  %i.o = tail call fastcc { i64, i64 } @_RNvMNtNtCs5yxAJGbRKSL_4ring10arithmetic16limb_slice_errorNtB2_14LimbSliceError9too_short(i64 noundef range(i64 0, 1152921504606846973) %i.a) #39
  %i.p = extractvalue { i64, i64 } %i.o, 1
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.q, align 8, !alias.scope !940
  br label %_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic3ffi15bn_mul_mont_ffiTNtNtNtB6_3cpu6x86_643AdxNtBZ_4Bmi2EKj8_Kj4_TINtNtNtB6_8polyfill12uninit_slice6UninityERSyB2l_EEB6_.exit

bb.n:                                             ; preds = %bb.l
  %.sroa.02.0.copyload.i1 = load ptr, ptr %1, align 8, !alias.scope !941 ; 3 uses
  %.sroa.5.0..sroa_idx.i2 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.5.0.copyload.i3 = load ptr, ptr %.sroa.5.0..sroa_idx.i2, align 8, !alias.scope !941 ; 2 uses
  %.sroa.6.0..sroa_idx.i4 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.6.0.copyload.i5 = load i64, ptr %.sroa.6.0..sroa_idx.i4, align 8, !alias.scope !941 ; 2 uses
  %.sroa.7.0..sroa_idx.i6 = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.7.0.copyload.i7 = load ptr, ptr %.sroa.7.0..sroa_idx.i6, align 8, !alias.scope !941 ; 2 uses
  %.sroa.83.0..sroa_idx.i8 = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.83.0.copyload.i9 = load i64, ptr %.sroa.83.0..sroa_idx.i8, align 8, !alias.scope !941 ; 2 uses
  %.not.i.i10 = icmp eq i64 %.sroa.83.0.copyload.i9, %i.a
  br i1 %.not.i.i10, label %bb.o, label %bb.r, !prof !19

bb.o:                                             ; preds = %bb.n
  %.sroa.4.0..sroa_idx.i14 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.4.0.copyload.i15 = load i64, ptr %.sroa.4.0..sroa_idx.i14, align 8, !alias.scope !941 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.0.copyload.i7), "nonnull"(ptr %.sroa.5.0.copyload.i3), "nonnull"(ptr %.sroa.02.0.copyload.i1) ]
  %.not.i.i.i16 = icmp eq i64 %.sroa.4.0.copyload.i15, %i.a
  br i1 %.not.i.i.i16, label %bb.p, label %bb.r, !prof !19

bb.p:                                             ; preds = %bb.o
  %.not7.i.i.i17 = icmp eq i64 %.sroa.6.0.copyload.i5, %i.a
  br i1 %.not7.i.i.i17, label %bb.s, label %bb.r, !prof !19

bb.q:                                             ; preds = %bb.l
  %i.r = tail call fastcc { i64, i64 } @_RNvMNtNtCs5yxAJGbRKSL_4ring10arithmetic16limb_slice_errorNtB2_14LimbSliceError8too_long(i64 noundef range(i64 0, 1152921504606846973) %i.a) #39
  %i.s = extractvalue { i64, i64 } %i.r, 1
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 2, ptr %i.t, align 8, !alias.scope !940
  br label %_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic3ffi15bn_mul_mont_ffiTNtNtNtB6_3cpu6x86_643AdxNtBZ_4Bmi2EKj8_Kj4_TINtNtNtB6_8polyfill12uninit_slice6UninityERSyB2l_EEB6_.exit

bb.r:                                             ; preds = %bb.p, %bb.o, %bb.n
  %.sroa.8.0.ph.i11 = phi i64 [ %.sroa.83.0.copyload.i9, %bb.n ], [ %.sroa.6.0.copyload.i5, %bb.p ], [ %.sroa.4.0.copyload.i15, %bb.o ]
  %i.u = tail call fastcc { i64, i64 } @_RNvMNtNtCs5yxAJGbRKSL_4ring10arithmetic16limb_slice_errorNtB2_14LimbSliceError12len_mismatch(i64 noundef %.sroa.8.0.ph.i11) #39
  %i.v = extractvalue { i64, i64 } %i.u, 1
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.w, align 8, !alias.scope !940
  br label %_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic3ffi15bn_mul_mont_ffiTNtNtNtB6_3cpu6x86_643AdxNtBZ_4Bmi2EKj8_Kj4_TINtNtNtB6_8polyfill12uninit_slice6UninityERSyB2l_EEB6_.exit

bb.s:                                             ; preds = %bb.p
  tail call void @ring_core_0_17_16000__bn_mul4x_mont(ptr noundef nonnull %.sroa.02.0.copyload.i1, ptr noundef nonnull %.sroa.5.0.copyload.i3, ptr noundef nonnull %.sroa.7.0.copyload.i7, ptr noundef nonnull readonly align 8 %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %4, i64 noundef range(i64 0, 1152921504606846973) %i.a) #36, !noalias !942, !inline_history !936
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.02.0.copyload.i1, ptr %i.x, align 8, !alias.scope !940
  br label %_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic3ffi15bn_mul_mont_ffiTNtNtNtB6_3cpu6x86_643AdxNtBZ_4Bmi2EKj8_Kj4_TINtNtNtB6_8polyfill12uninit_slice6UninityERSyB2l_EEB6_.exit

_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic3ffi15bn_mul_mont_ffiTNtNtNtB6_3cpu6x86_643AdxNtBZ_4Bmi2EKj8_Kj4_TINtNtNtB6_8polyfill12uninit_slice6UninityERSyB2l_EEB6_.exit: ; preds = %bb.s, %bb.r, %bb.q, %bb.m, %bb.j, %bb.i, %bb.h, %bb.d
  %.sink14.i12.sink = phi i64 [ %i.a, %bb.j ], [ %i.e, %bb.d ], [ %i.h, %bb.h ], [ %i.k, %bb.i ], [ %i.p, %bb.m ], [ %i.s, %bb.q ], [ %i.v, %bb.r ], [ %i.a, %bb.s ]
  %storemerge = phi i64 [ 0, %bb.j ], [ 1, %bb.d ], [ 1, %bb.h ], [ 1, %bb.i ], [ 1, %bb.m ], [ 1, %bb.q ], [ 1, %bb.r ], [ 0, %bb.s ]
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink14.i12.sink, ptr %i.y, align 8
  store i64 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic5limbs6x86_644mont12mul_mont5_4xTINtNtNtBa_8polyfill15aliasing_slices5InOutQSyERB1T_EEBa_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %2, i64 noundef range(i64 0, 288230376151711744) %3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %4, i1 noundef zeroext %5) unnamed_addr #9 personality ptr @rust_eh_personality {
bb.a:
  %i.a = shl nuw nsw i64 %3, 2                    ; 12 uses
  %i.b = icmp samesign ult i64 %3, 2              ; 2 uses
  br i1 %5, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !973)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !974)
  br i1 %i.b, label %bb.d, label %bb.c, !prof !16

bb.c:                                             ; preds = %bb.b
  %i.c = icmp samesign ugt i64 %3, 32
  br i1 %i.c, label %bb.g, label %bb.e, !prof !16

bb.d:                                             ; preds = %bb.b
  %i.d = tail call fastcc { i64, i64 } @_RNvMNtNtCs5yxAJGbRKSL_4ring10arithmetic16limb_slice_errorNtB2_14LimbSliceError9too_short(i64 noundef range(i64 0, 1152921504606846973) %i.a) #39
  %i.e = extractvalue { i64, i64 } %i.d, 1
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.f, align 8, !alias.scope !973
  br label %_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic3ffi15bn_mul_mont_ffiTNtNtNtB6_3cpu6x86_643AdxNtBZ_4Bmi2EKj8_Kj4_TINtNtNtB6_8polyfill15aliasing_slices5InOutQSyERB2m_EEB6_.exit

bb.e:                                             ; preds = %bb.c
  %.sroa.02.0.copyload.i = load ptr, ptr %1, align 8, !alias.scope !974 ; 4 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.5.0.copyload.i = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !974 ; 2 uses
  %.sroa.63.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.63.0.copyload.i = load i64, ptr %.sroa.63.0..sroa_idx.i, align 8, !alias.scope !974 ; 2 uses
  %.not.i.i = icmp eq i64 %.sroa.63.0.copyload.i, %i.a
  br i1 %.not.i.i, label %bb.f, label %bb.h, !prof !19

bb.f:                                             ; preds = %bb.e
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.4.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !974 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload.i), "nonnull"(ptr %.sroa.02.0.copyload.i) ]
  %.not.i.i.i = icmp eq i64 %.sroa.4.0.copyload.i, %i.a
  br i1 %.not.i.i.i, label %bb.i, label %bb.h, !prof !19

bb.g:                                             ; preds = %bb.c
  %i.g = tail call fastcc { i64, i64 } @_RNvMNtNtCs5yxAJGbRKSL_4ring10arithmetic16limb_slice_errorNtB2_14LimbSliceError8too_long(i64 noundef range(i64 0, 1152921504606846973) %i.a) #39
  %i.h = extractvalue { i64, i64 } %i.g, 1
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 2, ptr %i.i, align 8, !alias.scope !973
  br label %_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic3ffi15bn_mul_mont_ffiTNtNtNtB6_3cpu6x86_643AdxNtBZ_4Bmi2EKj8_Kj4_TINtNtNtB6_8polyfill15aliasing_slices5InOutQSyERB2m_EEB6_.exit

bb.h:                                             ; preds = %bb.f, %bb.e
  %.sroa.6.0.ph.i = phi i64 [ %.sroa.63.0.copyload.i, %bb.e ], [ %.sroa.4.0.copyload.i, %bb.f ]
  %i.j = tail call fastcc { i64, i64 } @_RNvMNtNtCs5yxAJGbRKSL_4ring10arithmetic16limb_slice_errorNtB2_14LimbSliceError12len_mismatch(i64 noundef %.sroa.6.0.ph.i) #39
  %i.k = extractvalue { i64, i64 } %i.j, 1
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.l, align 8, !alias.scope !973
  br label %_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic3ffi15bn_mul_mont_ffiTNtNtNtB6_3cpu6x86_643AdxNtBZ_4Bmi2EKj8_Kj4_TINtNtNtB6_8polyfill15aliasing_slices5InOutQSyERB2m_EEB6_.exit

bb.i:                                             ; preds = %bb.f
  tail call void @ring_core_0_17_16000__bn_mulx4x_mont(ptr noundef nonnull align 8 %.sroa.02.0.copyload.i, ptr noundef nonnull align 8 %.sroa.02.0.copyload.i, ptr noundef nonnull %.sroa.5.0.copyload.i, ptr noundef nonnull readonly align 8 %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %4, i64 noundef range(i64 0, 1152921504606846973) %i.a) #36, !noalias !975, !inline_history !957
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.02.0.copyload.i, ptr %i.m, align 8, !alias.scope !973
  br label %_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic3ffi15bn_mul_mont_ffiTNtNtNtB6_3cpu6x86_643AdxNtBZ_4Bmi2EKj8_Kj4_TINtNtNtB6_8polyfill15aliasing_slices5InOutQSyERB2m_EEB6_.exit

bb.j:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !976)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !977)
  br i1 %i.b, label %bb.l, label %bb.k, !prof !16

bb.k:                                             ; preds = %bb.j
  %i.n = icmp samesign ugt i64 %3, 32
  br i1 %i.n, label %bb.o, label %bb.m, !prof !16

bb.l:                                             ; preds = %bb.j
  %i.o = tail call fastcc { i64, i64 } @_RNvMNtNtCs5yxAJGbRKSL_4ring10arithmetic16limb_slice_errorNtB2_14LimbSliceError9too_short(i64 noundef range(i64 0, 1152921504606846973) %i.a) #39
  %i.p = extractvalue { i64, i64 } %i.o, 1
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.q, align 8, !alias.scope !976
  br label %_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic3ffi15bn_mul_mont_ffiTNtNtNtB6_3cpu6x86_643AdxNtBZ_4Bmi2EKj8_Kj4_TINtNtNtB6_8polyfill15aliasing_slices5InOutQSyERB2m_EEB6_.exit

bb.m:                                             ; preds = %bb.k
  %.sroa.02.0.copyload.i1 = load ptr, ptr %1, align 8, !alias.scope !977 ; 4 uses
  %.sroa.5.0..sroa_idx.i2 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.5.0.copyload.i3 = load ptr, ptr %.sroa.5.0..sroa_idx.i2, align 8, !alias.scope !977 ; 2 uses
  %.sroa.63.0..sroa_idx.i4 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.63.0.copyload.i5 = load i64, ptr %.sroa.63.0..sroa_idx.i4, align 8, !alias.scope !977 ; 2 uses
  %.not.i.i6 = icmp eq i64 %.sroa.63.0.copyload.i5, %i.a
  br i1 %.not.i.i6, label %bb.n, label %bb.p, !prof !19

bb.n:                                             ; preds = %bb.m
  %.sroa.4.0..sroa_idx.i10 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.4.0.copyload.i11 = load i64, ptr %.sroa.4.0..sroa_idx.i10, align 8, !alias.scope !977 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload.i3), "nonnull"(ptr %.sroa.02.0.copyload.i1) ]
  %.not.i.i.i12 = icmp eq i64 %.sroa.4.0.copyload.i11, %i.a
  br i1 %.not.i.i.i12, label %bb.q, label %bb.p, !prof !19

bb.o:                                             ; preds = %bb.k
  %i.r = tail call fastcc { i64, i64 } @_RNvMNtNtCs5yxAJGbRKSL_4ring10arithmetic16limb_slice_errorNtB2_14LimbSliceError8too_long(i64 noundef range(i64 0, 1152921504606846973) %i.a) #39
  %i.s = extractvalue { i64, i64 } %i.r, 1
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 2, ptr %i.t, align 8, !alias.scope !976
  br label %_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic3ffi15bn_mul_mont_ffiTNtNtNtB6_3cpu6x86_643AdxNtBZ_4Bmi2EKj8_Kj4_TINtNtNtB6_8polyfill15aliasing_slices5InOutQSyERB2m_EEB6_.exit

bb.p:                                             ; preds = %bb.n, %bb.m
  %.sroa.6.0.ph.i7 = phi i64 [ %.sroa.63.0.copyload.i5, %bb.m ], [ %.sroa.4.0.copyload.i11, %bb.n ]
  %i.u = tail call fastcc { i64, i64 } @_RNvMNtNtCs5yxAJGbRKSL_4ring10arithmetic16limb_slice_errorNtB2_14LimbSliceError12len_mismatch(i64 noundef %.sroa.6.0.ph.i7) #39
  %i.v = extractvalue { i64, i64 } %i.u, 1
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.w, align 8, !alias.scope !976
  br label %_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic3ffi15bn_mul_mont_ffiTNtNtNtB6_3cpu6x86_643AdxNtBZ_4Bmi2EKj8_Kj4_TINtNtNtB6_8polyfill15aliasing_slices5InOutQSyERB2m_EEB6_.exit

bb.q:                                             ; preds = %bb.n
  tail call void @ring_core_0_17_16000__bn_mul4x_mont(ptr noundef nonnull align 8 %.sroa.02.0.copyload.i1, ptr noundef nonnull align 8 %.sroa.02.0.copyload.i1, ptr noundef nonnull %.sroa.5.0.copyload.i3, ptr noundef nonnull readonly align 8 %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %4, i64 noundef range(i64 0, 1152921504606846973) %i.a) #36, !noalias !978, !inline_history !972
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.02.0.copyload.i1, ptr %i.x, align 8, !alias.scope !976
  br label %_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic3ffi15bn_mul_mont_ffiTNtNtNtB6_3cpu6x86_643AdxNtBZ_4Bmi2EKj8_Kj4_TINtNtNtB6_8polyfill15aliasing_slices5InOutQSyERB2m_EEB6_.exit

_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic3ffi15bn_mul_mont_ffiTNtNtNtB6_3cpu6x86_643AdxNtBZ_4Bmi2EKj8_Kj4_TINtNtNtB6_8polyfill15aliasing_slices5InOutQSyERB2m_EEB6_.exit: ; preds = %bb.q, %bb.p, %bb.o, %bb.l, %bb.i, %bb.h, %bb.g, %bb.d
  %.sink13.i8.sink = phi i64 [ %i.a, %bb.i ], [ %i.e, %bb.d ], [ %i.h, %bb.g ], [ %i.k, %bb.h ], [ %i.p, %bb.l ], [ %i.s, %bb.o ], [ %i.v, %bb.p ], [ %i.a, %bb.q ]
  %storemerge = phi i64 [ 0, %bb.i ], [ 1, %bb.d ], [ 1, %bb.g ], [ 1, %bb.h ], [ 1, %bb.l ], [ 1, %bb.o ], [ 1, %bb.p ], [ 0, %bb.q ]
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink13.i8.sink, ptr %i.y, align 8
  store i64 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs5yxAJGbRKSL_4ring(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, i64 noundef %1, i64 noundef %2, i64 noundef range(i64 1, 9) %3, i64 noundef range(i64 1, 17) %4) unnamed_addr #10 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !981)
  %i.b = add i64 %2, %1                           ; 2 uses
  %i.c = icmp ult i64 %i.b, %1
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %0, align 8, !range !26, !alias.scope !981, !noundef !15 ; 2 uses
  %i.e = shl nuw i64 %i.d, 1
  %..i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.b, i64 %i.e)
  %i.f = icmp eq i64 %4, 1
  %.sroa.08.0.i = select i1 %i.f, i64 8, i64 4
  %..i14.i = tail call noundef i64 @llvm.umax.i64(i64 %..i.i, i64 %.sroa.08.0.i) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !981
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.g, align 8, !alias.scope !981
  call fastcc void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs5yxAJGbRKSL_4ring(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.d, ptr %.val13.i, i64 noundef %..i14.i, i64 noundef range(i64 1, 9) %3, i64 noundef range(i64 1, 57) %4), !noalias !981
  %i.h = load i64, ptr %i.a, align 8, !range !22, !noalias !981, !noundef !15
  %i.i = trunc nuw i64 %i.h to i1
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.k = load i64, ptr %i.j, align 8, !range !31, !noalias !981, !noundef !15
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.m = load i64, ptr %i.l, align 8, !noalias !981
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !981
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %.sroa.5.0.i.ph = phi i64 [ undef, %bb.a ], [ %i.m, %bb.c ]
  %.sroa.0.0.i.ph = phi i64 [ 0, %bb.a ], [ %i.k, %bb.c ]
  tail call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %.sroa.0.0.i.ph, i64 %.sroa.5.0.i.ph) #42
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %i.j, align 8, !noalias !981, !nonnull !15, !noundef !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !981
  store ptr %i.n, ptr %i.g, align 8, !alias.scope !981
  %i.o = icmp sgt i64 %..i14.i, -1
  tail call void @llvm.assume(i1 %i.o)
  store i64 %..i14.i, ptr %0, align 8, !alias.scope !981
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNCNvMNtNtCs5yxAJGbRKSL_4ring3rsa10public_keyNtB4_9PublicKey3news0_0B8_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !15, !align !17, !noundef !15 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.val4 = load ptr, ptr %i.b, align 8            ; 12 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 32
  %.val5 = load ptr, ptr %i.c, align 8            ; 2 uses
  %.val6 = load ptr, ptr %i.a, align 8            ; 2 uses
  %i.d = getelementptr i8, ptr %i.a, i64 8
  %.val7 = load i64, ptr %i.d, align 8, !noundef !15 ; 4 uses
  %.not.i = icmp eq i64 %.val7, 0
  br i1 %.not.i, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i8, ptr %.val6, align 1, !noundef !15
  %i.f = icmp sgt i8 %i.e, -1                     ; 2 uses
  br i1 %i.f, label %_RNCNvNtNtCs5yxAJGbRKSL_4ring2io10der_writer22write_positive_integer0B7_.exit.thread6.i.i, label %_RNCNvNtNtCs5yxAJGbRKSL_4ring2io10der_writer22write_positive_integer0B7_.exit.i.i

_RNCNvNtNtCs5yxAJGbRKSL_4ring2io10der_writer22write_positive_integer0B7_.exit.i.i: ; preds = %bb.b
  %i.g = add i64 %.val7, 1                        ; 2 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %_RNvNtNtCs5yxAJGbRKSL_4ring2io10der_writer22write_positive_integer.exit16, label %_RNCNvNtNtCs5yxAJGbRKSL_4ring2io10der_writer22write_positive_integer0B7_.exit.thread6.i.i, !prof !985

_RNCNvNtNtCs5yxAJGbRKSL_4ring2io10der_writer22write_positive_integer0B7_.exit.thread6.i.i: ; preds = %_RNCNvNtNtCs5yxAJGbRKSL_4ring2io10der_writer22write_positive_integer0B7_.exit.i.i, %bb.b
  %.sroa.0.2.ph.i.i = phi i64 [ %i.g, %_RNCNvNtNtCs5yxAJGbRKSL_4ring2io10der_writer22write_positive_integer0B7_.exit.i.i ], [ %.val7, %bb.b ] ; 5 uses
  %i.i = icmp ugt i64 %.sroa.0.2.ph.i.i, 65535
  br i1 %i.i, label %_RNvNtNtCs5yxAJGbRKSL_4ring2io10der_writer22write_positive_integer.exit16, label %bb.c

bb.c:                                             ; preds = %_RNCNvNtNtCs5yxAJGbRKSL_4ring2io10der_writer22write_positive_integer0B7_.exit.thread6.i.i
  %i.j = tail call noundef zeroext i1 %.val4(ptr noundef nonnull %1, i8 noundef 2) #40, !inline_history !982
  br i1 %i.j, label %_RNvNtNtCs5yxAJGbRKSL_4ring2io10der_writer22write_positive_integer.exit16, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.sroa.07.0.extract.trunc.i.i = trunc i64 %.sroa.0.2.ph.i.i to i8
  %.sroa.48.0.extract.shift10.i.i = lshr i64 %.sroa.0.2.ph.i.i, 8
  %.sroa.48.0.extract.trunc.i.i = trunc nuw i64 %.sroa.48.0.extract.shift10.i.i to i8
  %i.k = icmp samesign ugt i64 %.sroa.0.2.ph.i.i, 255
  br i1 %i.k, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = icmp samesign ugt i64 %.sroa.0.2.ph.i.i, 127
  br i1 %i.l, label %bb.g, label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.m = tail call noundef zeroext i1 %.val4(ptr noundef nonnull %1, i8 noundef -126) #40, !inline_history !982
  br i1 %i.m, label %_RNvNtNtCs5yxAJGbRKSL_4ring2io10der_writer22write_positive_integer.exit16, label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.n = tail call noundef zeroext i1 %.val4(ptr noundef nonnull %1, i8 noundef -127) #40, !inline_history !982
  br i1 %i.n, label %_RNvNtNtCs5yxAJGbRKSL_4ring2io10der_writer22write_positive_integer.exit16, label %bb.h

bb.h:                                             ; preds = %bb.i, %bb.g, %bb.e
  %i.o = tail call noundef zeroext i1 %.val4(ptr noundef nonnull %1, i8 noundef %.sroa.07.0.extract.trunc.i.i) #40, !inline_history !982
  br i1 %i.o, label %_RNvNtNtCs5yxAJGbRKSL_4ring2io10der_writer22write_positive_integer.exit16, label %bb.j

bb.i:                                             ; preds = %bb.f
  %i.p = tail call noundef zeroext i1 %.val4(ptr noundef nonnull %1, i8 noundef %.sroa.48.0.extract.trunc.i.i) #40, !inline_history !982
  br i1 %i.p, label %_RNvNtNtCs5yxAJGbRKSL_4ring2io10der_writer22write_positive_integer.exit16, label %bb.h

bb.j:                                             ; preds = %bb.h
  br i1 %i.f, label %_RNvNtNtCs5yxAJGbRKSL_4ring2io10der_writer22write_positive_integer.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.q = tail call noundef zeroext i1 %.val4(ptr noundef nonnull %1, i8 noundef 0) #40, !inline_history !983
  br i1 %i.q, label %_RNvNtNtCs5yxAJGbRKSL_4ring2io10der_writer22write_positive_integer.exit16, label %_RNvNtNtCs5yxAJGbRKSL_4ring2io10der_writer22write_positive_integer.exit

bb.l:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @206) #41
  unreachable

_RNvNtNtCs5yxAJGbRKSL_4ring2io10der_writer22write_positive_integer.exit: ; preds = %bb.j, %bb.k
  %i.r = tail call noundef zeroext i1 %.val5(ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val6, i64 noundef %.val7) #40, !inline_history !984
  br i1 %i.r, label %_RNvNtNtCs5yxAJGbRKSL_4ring2io10der_writer22write_positive_integer.exit16, label %bb.m

bb.m:                                             ; preds = %_RNvNtNtCs5yxAJGbRKSL_4ring2io10der_writer22write_positive_integer.exit
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !nonnull !15, !align !17, !noundef !15 ; 2 uses
  %.val2 = load ptr, ptr %i.t, align 8            ; 2 uses
  %i.u = getelementptr i8, ptr %i.t, i64 8
  %.val3 = load i64, ptr %i.u, align 8, !noundef !15 ; 4 uses
  %.not.i8 = icmp eq i64 %.val3, 0
  br i1 %.not.i8, label %bb.y, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.v = load i8, ptr %.val2, align 1, !noundef !15
  %i.w = icmp sgt i8 %i.v, -1                     ; 2 uses
  br i1 %i.w, label %_RNCNvNtNtCs5yxAJGbRKSL_4ring2io10der_writer22write_positive_integer0B7_.exit.thread6.i.i10, label %_RNCNvNtNtCs5yxAJGbRKSL_4ring2io10der_writer22write_positive_integer0B7_.exit.i.i9

_RNCNvNtNtCs5yxAJGbRKSL_4ring2io10der_writer22write_positive_integer0B7_.exit.i.i9: ; preds = %bb.n
  %i.x = add i64 %.val3, 1                        ; 2 uses
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %_RNvNtNtCs5yxAJGbRKSL_4ring2io10der_writer22write_positive_integer.exit16, label %_RNCNvNtNtCs5yxAJGbRKSL_4ring2io10der_writer22write_positive_integer0B7_.exit.thread6.i.i10, !prof !985

_RNCNvNtNtCs5yxAJGbRKSL_4ring2io10der_writer22write_positive_integer0B7_.exit.thread6.i.i10: ; preds = %_RNCNvNtNtCs5yxAJGbRKSL_4ring2io10der_writer22write_positive_integer0B7_.exit.i.i9, %bb.n
  %.sroa.0.2.ph.i.i11 = phi i64 [ %i.x, %_RNCNvNtNtCs5yxAJGbRKSL_4ring2io10der_writer22write_positive_integer0B7_.exit.i.i9 ], [ %.val3, %bb.n ] ; 5 uses
  %i.z = icmp ugt i64 %.sroa.0.2.ph.i.i11, 65535
  br i1 %i.z, label %_RNvNtNtCs5yxAJGbRKSL_4ring2io10der_writer22write_positive_integer.exit16, label %bb.o

bb.o:                                             ; preds = %_RNCNvNtNtCs5yxAJGbRKSL_4ring2io10der_writer22write_positive_integer0B7_.exit.thread6.i.i10
  %i.aa = tail call noundef zeroext i1 %.val4(ptr noundef nonnull %1, i8 noundef 2) #40, !inline_history !982
  br i1 %i.aa, label %_RNvNtNtCs5yxAJGbRKSL_4ring2io10der_writer22write_positive_integer.exit16, label %bb.p

bb.p:                                             ; preds = %bb.o
  %.sroa.07.0.extract.trunc.i.i12 = trunc i64 %.sroa.0.2.ph.i.i11 to i8
  %.sroa.48.0.extract.shift10.i.i13 = lshr i64 %.sroa.0.2.ph.i.i11, 8
  %.sroa.48.0.extract.trunc.i.i14 = trunc nuw i64 %.sroa.48.0.extract.shift10.i.i13 to i8
  %i.ab = icmp samesign ugt i64 %.sroa.0.2.ph.i.i11, 255
  br i1 %i.ab, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ac = icmp samesign ugt i64 %.sroa.0.2.ph.i.i11, 127
  br i1 %i.ac, label %bb.s, label %bb.t

bb.r:                                             ; preds = %bb.p
  %i.ad = tail call noundef zeroext i1 %.val4(ptr noundef nonnull %1, i8 noundef -126) #40, !inline_history !982
  br i1 %i.ad, label %_RNvNtNtCs5yxAJGbRKSL_4ring2io10der_writer22write_positive_integer.exit16, label %bb.u

bb.s:                                             ; preds = %bb.q
end_hunk_0
begin_hunk_1_@_RNvMNtCs5yxAJGbRKSL_4ring8testutilNtB2_8TestCase22consume_optional_bytes:bb.a
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ak, i64 noundef %.val38, i64 noundef range(i64 1, -9223372036854775807) 1) #36
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs5yxAJGbRKSL_4ring.exit64

bb.au:                                            ; preds = %bb.h
  %i.di = load i64, ptr %i.j, align 8, !range !22, !noundef !15
  %i.dj = trunc nuw i64 %i.di to i1
  br i1 %i.dj, label %bb.av, label %bb.aw, !prof !16

bb.av:                                            ; preds = %bb.au
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.dk = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.dk, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %i.h, ptr %i.g, align 8
  %.sroa.419.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr @_RNvXsq_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt, ptr %.sroa.419.0..sroa_idx, align 8
  %i.dl = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %i.p, ptr %i.dl, align 8
  %.sroa.423.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store ptr @_RNvXsq_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt, ptr %.sroa.423.0..sroa_idx, align 8
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @104, ptr noundef nonnull %i.g, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @105) #42
          to label %bb.q unwind label %bb.ax

bb.aw:                                            ; preds = %bb.au
  %i.dm = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.dm, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.as

bb.ax:                                            ; preds = %bb.av
  %i.dn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val36 = load i64, ptr %i.h, align 8           ; 2 uses
  %i.do = icmp eq i64 %.val36, 0
  br i1 %i.do, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs5yxAJGbRKSL_4ring.exit, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.dp = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.val37 = load ptr, ptr %i.dp, align 8, !nonnull !15, !noundef !15
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val37, i64 noundef %.val36, i64 noundef range(i64 1, -9223372036854775807) 1) #36
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs5yxAJGbRKSL_4ring.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs5yxAJGbRKSL_4ring.exit: ; preds = %bb.o, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs5yxAJGbRKSL_4ring.exit
  resume { ptr, i32 } %.pn33
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtCs5yxAJGbRKSL_4ring8testutilNtB2_8TestCase23consume_optional_string(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 3 uses
  store ptr %2, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %3, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !15, !noundef !15 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load i64, ptr %i.f, align 8, !noundef !15 ; 2 uses
  %.idx = mul nuw nsw i64 %i.g, 56
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx
  %i.i = icmp eq i64 %i.g, 0
  br i1 %i.i, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %.sroa.0.08 = phi ptr [ %i.j, %bb.c ], [ %i.e, %bb.a ] ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.08, i64 56 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.0.08, i64 16
  %i.l = load i64, ptr %i.k, align 8, !noundef !15
  %i.m = icmp eq i64 %3, %i.l
  br i1 %i.m, label %bb.b, label %bb.c

._crit_edge:                                      ; preds = %bb.c, %bb.a
  store i64 -1, ptr %0, align 8
  br label %bb.g

bb.b:                                             ; preds = %.lr.ph
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.0.08, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !15, !noundef !15
  %bcmp = tail call i32 @bcmp(ptr nonnull %2, ptr nonnull %i.o, i64 %3)
  %i.p = icmp eq i32 %bcmp, 0
  br i1 %i.p, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %i.q = icmp eq ptr %i.j, %i.h
  br i1 %i.q, label %._crit_edge, label %.lr.ph

bb.d:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.08, i64 48 ; 2 uses
  %i.s = load i8, ptr %i.r, align 8, !range !34, !noundef !15
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %bb.f, label %bb.e, !prof !16

bb.e:                                             ; preds = %bb.d
  store i8 1, ptr %i.r, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.08, i64 24
  tail call void @_RNvXs4_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.u)
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCs3oUPovFnLWP_4core3fmtReNtB6_7Display3fmtCs5yxAJGbRKSL_4ring, ptr %.sroa.46.0..sroa_idx, align 8
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @106, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @107) #41
  unreachable

bb.g:                                             ; preds = %bb.e, %._crit_edge
  ret void
}

; Function Attrs: cold mustprogress nofree noinline norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal fastcc { i64, i64 } @_RNvMNtNtCs5yxAJGbRKSL_4ring10arithmetic16limb_slice_errorNtB2_14LimbSliceError12len_mismatch(i64 noundef %0) unnamed_addr #5 {
bb.a:
  %i.a = insertvalue { i64, i64 } { i64 0, i64 poison }, i64 %0, 1
  ret { i64, i64 } %i.a
}

; Function Attrs: cold mustprogress nofree noinline norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal fastcc { i64, i64 } @_RNvMNtNtCs5yxAJGbRKSL_4ring10arithmetic16limb_slice_errorNtB2_14LimbSliceError8too_long(i64 noundef range(i64 129, 1152921504606846976) %0) unnamed_addr #5 {
bb.a:
  %i.a = insertvalue { i64, i64 } { i64 2, i64 poison }, i64 %0, 1
  ret { i64, i64 } %i.a
}

; Function Attrs: cold mustprogress nofree noinline norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal fastcc { i64, i64 } @_RNvMNtNtCs5yxAJGbRKSL_4ring10arithmetic16limb_slice_errorNtB2_14LimbSliceError9too_short(i64 noundef range(i64 0, 1152921504606846976) %0) unnamed_addr #5 {
bb.a:
  %i.a = insertvalue { i64, i64 } { i64 1, i64 poison }, i64 %0, 1
  ret { i64, i64 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { ptr, i64 } @_RNvMNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigintINtNtB2_4elem5BoxedNtNtNtB6_3rsa7keypair1PE20from_be_bytes_paddedB6_(ptr noalias nofree noundef nonnull readonly captures(none) %0, i64 noundef %1, ptr %.0.val, i64 %.8.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = icmp ugt i64 %.8.val, 1
  br i1 %i.c, label %bb.c, label %bb.b, !prof !19

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #41
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = add i64 %.8.val, -2                      ; 8 uses
  %.not.i = icmp eq i64 %i.d, 0
  br i1 %.not.i, label %bb.d, label %_RNvMs6_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montINtNtB5_4base4MontNtNtNtBd_3rsa7keypair1PE9num_limbsBd_.exit, !prof !16

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @154) #41
  unreachable

_RNvMs6_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montINtNtB5_4base4MontNtNtNtBd_3rsa7keypair1PE9num_limbsBd_.exit: ; preds = %bb.c
  %i.e = shl i64 %i.d, 3                          ; 5 uses
  %i.f = icmp ugt i64 %i.d, 2305843009213693951
  %.not.i.i = icmp ugt i64 %i.e, 9223372036854775800
  %or.cond.i.i = or i1 %i.f, %.not.i.i
  br i1 %or.cond.i.i, label %bb.e, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i, !prof !28

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i: ; preds = %_RNvMs6_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montINtNtB5_4base4MontNtNtNtBd_3rsa7keypair1PE9num_limbsBd_.exit
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #36, !noalias !1063
  %i.g = tail call noundef align 8 ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.e, i64 noundef range(i64 1, 9) 8) #36, !noalias !1063 ; 5 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.e, label %_RNvMs6_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montINtNtB5_4base4MontNtNtNtBd_3rsa7keypair1PE9num_limbsBd_.exit.i

bb.e:                                             ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i, %_RNvMs6_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montINtNtB5_4base4MontNtNtNtBd_3rsa7keypair1PE9num_limbsBd_.exit
  %.sroa.4.0.ph.i = phi i64 [ 8, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i ], [ 0, %_RNvMs6_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montINtNtB5_4base4MontNtNtNtBd_3rsa7keypair1PE9num_limbsBd_.exit ]
  tail call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i, i64 %i.e) #42
  unreachable

_RNvMs6_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montINtNtB5_4base4MontNtNtNtBd_3rsa7keypair1PE9num_limbsBd_.exit.i: ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1064
  store ptr %i.g, ptr %i.b, align 8, !noalias !1064
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store i64 %i.d, ptr %i.i, align 8, !noalias !1064
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 0, ptr %i.j, align 8, !noalias !1064
  %i.k = invoke fastcc { i64, i64 } @_RNvNtCs5yxAJGbRKSL_4ring4limb26limbs_from_be_bytes_padded(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1, i64 noundef %i.d)
          to label %.noexc15 unwind label %bb.k

.noexc15:                                         ; preds = %_RNvMs6_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montINtNtB5_4base4MontNtNtNtBd_3rsa7keypair1PE9num_limbsBd_.exit.i
  %i.l = extractvalue { i64, i64 } %i.k, 0
  %i.m = trunc nuw i64 %i.l to i1
  br i1 %i.m, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxSINtNtNtB4_3mem12maybe_uninit11MaybeUninityEEECs5yxAJGbRKSL_4ring.exit18, label %bb.f, !prof !16

bb.f:                                             ; preds = %.noexc15
  %.sroa.0.0.copyload.i = load ptr, ptr %i.b, align 8, !noalias !1064 ; 2 uses
  %.sroa.4.0.copyload.i = load i64, ptr %i.i, align 8, !noalias !1064
  %.sroa.5.0.copyload.i = load i64, ptr %i.j, align 8, !noalias !1064 ; 2 uses
  %.not.i.i.i = icmp ugt i64 %.sroa.5.0.copyload.i, %.sroa.4.0.copyload.i
  br i1 %.not.i.i.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @168) #41
          to label %.noexc16 unwind label %bb.k

.noexc16:                                         ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.f
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i), "nonnull"(ptr %.0.val) ]
  %.not9.i.i.i.i = icmp eq i64 %.sroa.5.0.copyload.i, %i.d
  br i1 %.not9.i.i.i.i, label %_RNvNtCs5yxAJGbRKSL_4ring4limb37verify_limbs_less_than_limbs_leak_bit.exit.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxSINtNtNtB4_3mem12maybe_uninit11MaybeUninityEEECs5yxAJGbRKSL_4ring.exit18, !prof !36

_RNvNtCs5yxAJGbRKSL_4ring4limb37verify_limbs_less_than_limbs_leak_bit.exit.i.i: ; preds = %bb.h
  %i.n = getelementptr inbounds nuw i8, ptr %.0.val, i64 16
  %i.o = tail call noundef i64 @ring_core_0_17_16000__LIMBS_less_than(ptr noundef nonnull readonly align 8 %.sroa.0.0.copyload.i, ptr noundef nonnull readonly align 8 %i.n, i64 noundef range(i64 0, 1152921504606846976) %i.d) #36, !noalias !1065
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1066
  store i64 %i.o, ptr %i.a, align 8, !noalias !1066
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %i.a) #36, !noalias !1065, !srcloc !37
  %i.p = load i64, ptr %i.a, align 8, !noalias !1066, !noundef !15
  %.not.i.i5.i = icmp eq i64 %i.p, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1066
  br i1 %.not.i.i5.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxSINtNtNtB4_3mem12maybe_uninit11MaybeUninityEEECs5yxAJGbRKSL_4ring.exit18, label %bb.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxSINtNtNtB4_3mem12maybe_uninit11MaybeUninityEEECs5yxAJGbRKSL_4ring.exit18: ; preds = %bb.h, %_RNvNtCs5yxAJGbRKSL_4ring4limb37verify_limbs_less_than_limbs_leak_bit.exit.i.i, %.noexc15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1064
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.g, i64 noundef %i.e, i64 noundef 8) #36
  br label %bb.j

bb.i:                                             ; preds = %_RNvNtCs5yxAJGbRKSL_4ring4limb37verify_limbs_less_than_limbs_leak_bit.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1064
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxSINtNtNtB4_3mem12maybe_uninit11MaybeUninityEEECs5yxAJGbRKSL_4ring.exit18
  %.sroa.0.0 = phi ptr [ null, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxSINtNtNtB4_3mem12maybe_uninit11MaybeUninityEEECs5yxAJGbRKSL_4ring.exit18 ], [ %i.g, %bb.i ]
  %i.q = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0, 0
  %i.r = insertvalue { ptr, i64 } %i.q, i64 %i.d, 1
  ret { ptr, i64 } %i.r

bb.k:                                             ; preds = %_RNvMs6_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montINtNtB5_4base4MontNtNtNtBd_3rsa7keypair1PE9num_limbsBd_.exit.i, %bb.g
  %i.s = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.g, i64 noundef %i.e, i64 noundef 8) #36
  resume { ptr, i32 } %i.s
}

; Function Attrs: nonlazybind uwtable
define noundef range(i64 0, 2305843009213693946) i64 @_RNvMNtNtCs5yxAJGbRKSL_4ring3rsa10public_keyNtB2_9PublicKey11modulus_len(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %0) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !15, !noundef !15
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !15 ; 2 uses
  %i.d = icmp ult i64 %i.c, 2
  br i1 %i.d, label %bb.b, label %_RNvMs2_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montINtB5_8IntoMontNtNtBd_3rsa1NNtNtBb_10montgomery2RRE5valueBd_.exit.i.i

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_sub_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @146) #41, !noalias !1069
  unreachable

_RNvMs2_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montINtB5_8IntoMontNtNtBd_3rsa1NNtNtBb_10montgomery2RRE5valueBd_.exit.i.i: ; preds = %bb.a
  %i.e = add i64 %i.c, -2                         ; 2 uses
  %i.f = lshr i64 %i.e, 1                         ; 3 uses
  %.not.i.i = icmp eq i64 %i.f, 0
  br i1 %.not.i.i, label %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring3rsa4base14public_modulusINtB5_13PublicModulusINtNtNtNtNtBb_10arithmetic6bigint7modulus4mont8IntoMontNtB9_1NNtNtB1n_10montgomery2RREE8len_bits.exit, label %bb.c

bb.c:                                             ; preds = %_RNvMs2_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montINtB5_8IntoMontNtNtBd_3rsa1NNtNtBb_10montgomery2RRE5valueBd_.exit.i.i
  %i.g = icmp ugt i64 %i.e, 576460752303423487
  br i1 %i.g, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr [8 x i8], ptr %i.a, i64 %i.f
  %i.i = getelementptr i8, ptr %i.h, i64 8
  %i.j = load i64, ptr %i.i, align 8, !noundef !15
  %i.k = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.j, i1 false)
  %i.l = shl nuw i64 %i.f, 6
  %i.m = sub nuw i64 %i.l, %i.k
  br label %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring3rsa4base14public_modulusINtB5_13PublicModulusINtNtNtNtNtBb_10arithmetic6bigint7modulus4mont8IntoMontNtB9_1NNtNtB1n_10montgomery2RREE8len_bits.exit

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_mul_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @148) #41
  unreachable

_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring3rsa4base14public_modulusINtB5_13PublicModulusINtNtNtNtNtBb_10arithmetic6bigint7modulus4mont8IntoMontNtB9_1NNtNtB1n_10montgomery2RREE8len_bits.exit: ; preds = %_RNvMs2_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montINtB5_8IntoMontNtNtBd_3rsa1NNtNtBb_10montgomery2RRE5valueBd_.exit.i.i, %bb.d
  %i.n = phi i64 [ %i.m, %bb.d ], [ 0, %_RNvMs2_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montINtB5_8IntoMontNtNtBd_3rsa1NNtNtBb_10montgomery2RRE5valueBd_.exit.i.i ] ; 2 uses
  %i.o = lshr i64 %i.n, 3
  %i.p = and i64 %i.n, 7
  %i.q = icmp ne i64 %i.p, 0
  %i.r = zext i1 %i.q to i64
  %i.s = add nuw nsw i64 %i.o, %i.r
  ret i64 %i.s
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtCs5yxAJGbRKSL_4ring3rsa7keypairNtB2_7KeyPair10from_pkcs8(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([120 x i8]) align 8 captures(none) dereferenceable(120) initializes((0, 24)) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #1 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call fastcc void @_RNvNtCs5yxAJGbRKSL_4ring5pkcs811unwrap_key_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @110, i64 noundef 13, i8 noundef 0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  %i.b = load ptr, ptr %i.a, align 8, !noundef !15 ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !15, !noundef !15
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.g = load i64, ptr %i.f, align 8, !noundef !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.e, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.g, ptr %i.i, align 8
  store ptr null, ptr %0, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %.sroa.4.0.copyload = load i64, ptr %i.d, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @_RNvMNtNtCs5yxAJGbRKSL_4ring3rsa7keypairNtB2_7KeyPair8from_der(ptr noalias nofree noundef nonnull sret([120 x i8]) align 8 captures(address) dereferenceable(120) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %.sroa.4.0.copyload)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtCs5yxAJGbRKSL_4ring3rsa7keypairNtB2_7KeyPair16from_components_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([120 x i8]) align 8 captures(none) dereferenceable(120) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(128) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 25 uses
  %i.d = alloca [24 x i8], align 8                ; 8 uses
  %i.e = alloca [24 x i8], align 8                ; 25 uses
  %i.f = alloca [24 x i8], align 8                ; 8 uses
  %i.g = alloca [8 x i8], align 8                 ; 6 uses
  %i.h = alloca [8 x i8], align 8                 ; 6 uses
  %i.i = alloca [32 x i8], align 8                ; 4 uses
  %i.j = alloca [32 x i8], align 8                ; 20 uses
  %i.k = alloca [8 x i8], align 8                 ; 6 uses
  %i.l = alloca [24 x i8], align 8                ; 6 uses
  %i.m = alloca [16 x i8], align 8                ; 9 uses
  %i.n = alloca [16 x i8], align 8                ; 6 uses
  %i.o = alloca [16 x i8], align 8                ; 6 uses
  %i.p = alloca [32 x i8], align 8                ; 8 uses
  %i.q = alloca [32 x i8], align 8                ; 8 uses
  %i.r = alloca [32 x i8], align 8                ; 8 uses
  %i.s = alloca [32 x i8], align 8                ; 8 uses
  %i.t = alloca [32 x i8], align 8                ; 11 uses
  %i.u = alloca [1024 x i8], align 8              ; 4 uses
  %i.v = alloca [1024 x i8], align 8              ; 9 uses
  %i.w = alloca [1024 x i8], align 8              ; 8 uses
  %i.x = alloca [40 x i8], align 8                ; 10 uses
  %i.y = alloca [32 x i8], align 8                ; 3 uses
  %i.z = alloca [56 x i8], align 8                ; 8 uses
  %i.aa = alloca [56 x i8], align 8               ; 8 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ac = load ptr, ptr %i.ab, align 8, !nonnull !15, !noundef !15 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ae = load i64, ptr %i.ad, align 8, !noundef !15 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ag = load ptr, ptr %i.af, align 8, !nonnull !15, !noundef !15
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ai = load i64, ptr %i.ah, align 8, !noundef !15
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ak = load ptr, ptr %i.aj, align 8, !nonnull !15, !noundef !15
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.am = load i64, ptr %i.al, align 8, !noundef !15
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.ao = load ptr, ptr %i.an, align 8, !nonnull !15, !noundef !15
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.aq = load i64, ptr %i.ap, align 8, !noundef !15
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.as = load ptr, ptr %i.ar, align 8, !nonnull !15, !noundef !15
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.au = load i64, ptr %i.at, align 8, !noundef !15
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.aw = load ptr, ptr %i.av, align 8, !nonnull !15, !noundef !15
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.ay = load i64, ptr %i.ax, align 8, !noundef !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  call fastcc void @_RNvMNtNtNtCs5yxAJGbRKSL_4ring3rsa4base10public_keyNtB2_14ValidatedInput17try_from_be_bytes(ptr noalias nofree noundef align 8 captures(none) dereferenceable(56) %i.aa, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %1, i64 noundef 2048, i64 noundef 4096, i64 noundef 65537)
  %i.az = load ptr, ptr %i.aa, align 8, !noundef !15 ; 4 uses
  %i.ba = icmp eq ptr %i.az, null
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8            ; 4 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.be = load i64, ptr %i.bd, align 8            ; 19 uses
  br i1 %i.ba, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bc, ptr %i.bf, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.be, ptr %i.bg, align 8
  store ptr null, ptr %0, align 8
  br label %bb.ec

bb.c:                                             ; preds = %bb.a
  %.sroa.6156.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %.sroa.10.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %i.z, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.10.0..sroa_idx6, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6156.0..sroa_idx, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  store ptr %i.az, ptr %i.z, align 8
  %.sroa.6.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store ptr %i.bc, ptr %.sroa.6.0..sroa_idx2, align 8
  %.sroa.8.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store i64 %i.be, ptr %.sroa.8.0..sroa_idx4, align 8
  %.sroa.4.0.copyload = load i64, ptr %.sroa.10.0..sroa_idx6, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx358 = getelementptr inbounds nuw i8, ptr %i.z, i64 32
end_hunk_1
begin_hunk_2_@_RNvMs2_NtNtCs5yxAJGbRKSL_4ring3rsa7keypairNtB5_7KeyPair4sign:bb.a
  %i.of = call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.cv, %n.vec157
  br i1 %cmp.n, label %_RNvMsf_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3RefNtNtBb_3rsa1NE23verify_equals_consttimeBb_.exit.i, label %.lr.ph.i.i.i.i.preheader168

.lr.ph.i.i.i.i.preheader168:                      ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block166
  %.sroa.0.014.i.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i.i.preheader ], [ %i.of, %middle.block166 ]
  %.sroa.02.013.i.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i.i.preheader ], [ %n.vec157, %middle.block166 ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader168, %.lr.ph.i.i.i.i
  %.sroa.0.014.i.i.i.i = phi i64 [ %i.ok, %.lr.ph.i.i.i.i ], [ %.sroa.0.014.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader168 ]
  %.sroa.02.013.i.i.i.i = phi i64 [ %i.og, %.lr.ph.i.i.i.i ], [ %.sroa.02.013.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader168 ] ; 3 uses
  %i.og = add nuw nsw i64 %.sroa.02.013.i.i.i.i, 1 ; 2 uses
  %i.oh = getelementptr inbounds nuw [8 x i8], ptr %i.nu, i64 %.sroa.02.013.i.i.i.i
  %i.oi = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %.sroa.02.013.i.i.i.i
  %.val11.i.i.i.i = load i64, ptr %i.oh, align 8, !alias.scope !3352, !noalias !3354, !noundef !15
  %.val12.i.i.i.i = load i64, ptr %i.oi, align 8, !alias.scope !3355, !noalias !3356, !noundef !15
  %i.oj = xor i64 %.val12.i.i.i.i, %.val11.i.i.i.i
  %i.ok = or i64 %i.oj, %.sroa.0.014.i.i.i.i      ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.og, %i.cv
  br i1 %exitcond.not.i.i.i.i, label %_RNvMsf_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3RefNtNtBb_3rsa1NE23verify_equals_consttimeBb_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !3180

bb.ce:                                            ; preds = %_RNvMsd_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtBb_3rsa1NE3addBb_.exit.i
  call fastcc void @_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint36unwrap_impossible_len_mismatch_errorNtNtNtB6_2bb8boolmask8BoolMaskEB6_() #39
  unreachable

_RNvMsf_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3RefNtNtBb_3rsa1NE23verify_equals_consttimeBb_.exit.i: ; preds = %.lr.ph.i.i.i.i, %middle.block166
  %.lcssa = phi i64 [ %i.of, %middle.block166 ], [ %i.ok, %.lr.ph.i.i.i.i ]
  %i.ol = call noundef i64 @ring_core_0_17_16000__LIMB_is_zero(i64 noundef %.lcssa) #36, !noalias !3357
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !3358
  store i64 %i.ol, ptr %i.d, align 8, !noalias !3358
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %i.d) #36, !noalias !3359, !srcloc !37
  %i.om = load i64, ptr %i.d, align 8, !noalias !3358, !noundef !15
  %.not.i176.i = icmp eq i64 %i.om, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !3358
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !3219
  br i1 %.not.i176.i, label %_RNvMs2_NtNtCs5yxAJGbRKSL_4ring3rsa7keypairNtB5_7KeyPair20private_exponentiate.exit.thread38, label %bb.cf

_RNvMs2_NtNtCs5yxAJGbRKSL_4ring3rsa7keypairNtB5_7KeyPair20private_exponentiate.exit.thread38: ; preds = %_RINvNtNtCs5yxAJGbRKSL_4ring3rsa7keypair18elem_exp_consttimeNtB2_1PEB6_.exit.thread211.i, %_RNvNtCs5yxAJGbRKSL_4ring4limb37verify_limbs_less_than_limbs_leak_bit.exit.i.i.i, %bb.bc, %_RNvMs6_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montINtNtB5_4base4MontNtNtNtBd_3rsa7keypair1QE9num_limbsBd_.exit.i.i.i.i, %bb.ad, %_RNvMs6_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montINtNtB5_4base4MontNtNtNtBd_3rsa7keypair1PE9num_limbsBd_.exit.i.i.i.i, %_RINvNtNtCs5yxAJGbRKSL_4ring3rsa7keypair18elem_exp_consttimeNtB2_1QEB6_.exit.thread215.i, %_RNvMs2_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montINtB5_8IntoMontNtNtNtBd_3rsa7keypair1QNtNtBb_10montgomery3RRRE5valueBd_.exit.i.i, %_RNvMsf_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3RefNtNtBb_3rsa1NE23verify_equals_consttimeBb_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !3219
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !3219
  br label %_RNvMs2_NtNtCs5yxAJGbRKSL_4ring3rsa7keypairNtB5_7KeyPair20private_exponentiate.exit.thread

_RNvMs2_NtNtCs5yxAJGbRKSL_4ring3rsa7keypairNtB5_7KeyPair20private_exponentiate.exit.thread: ; preds = %_RNvMs2_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montINtB5_8IntoMontNtNtBd_3rsa1NNtNtBb_10montgomery2RRE7modulusBd_.exit.i, %_RNvMs2_NtNtCs5yxAJGbRKSL_4ring3rsa7keypairNtB5_7KeyPair20private_exponentiate.exit.thread38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !3219
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  br label %bb.ck

bb.cf:                                            ; preds = %_RNvMsf_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3RefNtNtBb_3rsa1NE23verify_equals_consttimeBb_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !3219
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !3219
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !3219
  call void @llvm.experimental.noalias.scope.decl(metadata !3360)
  call void @llvm.experimental.noalias.scope.decl(metadata !3361)
  call void @llvm.experimental.noalias.scope.decl(metadata !3362)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3360
  %.idx.i.i.i = shl nuw nsw i64 %i.ak, 3          ; 2 uses
  store i64 %8, ptr %i.c, align 8, !noalias !3363
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3363
  store i64 %.idx.i.i.i, ptr %i.b, align 8, !noalias !3363
  %.not.i.i13 = icmp eq i64 %8, %.idx.i.i.i
  br i1 %.not.i.i13, label %.split.preheader.i.i.i.preheader.i.i.i, label %bb.cg, !prof !19

bb.cg:                                            ; preds = %bb.cf
  call void @_RINvNtCs3oUPovFnLWP_4core9panicking13assert_failedjjEB4_(i8 noundef 0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b, ptr noundef null, ptr undef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @176) #42, !noalias !3363
  unreachable

.split.preheader.i.i.i.preheader.i.i.i:           ; preds = %bb.cf
  %i.on = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3363
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3363
  %i.oo = getelementptr inbounds nuw i8, ptr %7, i64 %8
  call void @llvm.experimental.noalias.scope.decl(metadata !3364)
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx5.sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  br label %.split.preheader.i.i.i.i.i.i

.split.preheader.i.i.i.i.i.i:                     ; preds = %bb.cj, %.split.preheader.i.i.i.preheader.i.i.i
  %i.op = phi i64 [ %i.pg, %bb.cj ], [ %8, %.split.preheader.i.i.i.preheader.i.i.i ] ; 3 uses
  %i.oq = phi ptr [ %i.ph, %bb.cj ], [ %i.on, %.split.preheader.i.i.i.preheader.i.i.i ] ; 3 uses
  %i.or = phi i64 [ %i.pi, %bb.cj ], [ undef, %.split.preheader.i.i.i.preheader.i.i.i ] ; 3 uses
  %i.os = phi ptr [ %i.ou, %bb.cj ], [ %7, %.split.preheader.i.i.i.preheader.i.i.i ] ; 2 uses
  %i.ot = phi i1 [ %i.pj, %bb.cj ], [ false, %.split.preheader.i.i.i.preheader.i.i.i ]
  call void @llvm.experimental.noalias.scope.decl(metadata !3365)
  %i.ou = getelementptr inbounds nuw i8, ptr %i.os, i64 1 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3366)
  call void @llvm.experimental.noalias.scope.decl(metadata !3367)
  %.not.i.i.i.not.i.peel.i.i.i.i.i.i = icmp ne i64 %i.or, 8
  %or.cond49.not.i.i.i = select i1 %i.ot, i1 %.not.i.i.i.not.i.peel.i.i.i.i.i.i, i1 false
  br i1 %or.cond49.not.i.i.i, label %_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters7flatten17and_then_or_clearINtNtNtB8_5array4iter8IntoIterhKj8_EhNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECs5yxAJGbRKSL_4ring.exit.i.i.i.i.i.i, label %bb.ch

bb.ch:                                            ; preds = %.split.preheader.i.i.i.i.i.i
  %i.ov = icmp eq ptr %i.ab, %i.oq
  br i1 %i.ov, label %_RNvXs_NtNtCs5yxAJGbRKSL_4ring8polyfill14array_flat_mapINtB4_12ArrayFlatMapINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters6copied6CopiedINtNtB1f_3rev3RevINtNtNtB1j_5slice4iter4IteryEEEhNvMs7_NtB1j_3numy11to_be_bytesKj8_ENtNtNtB1h_6traits8iterator8Iterator4nextB8_.exit.i.i.i.i, label %_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters7flatten17and_then_or_clearINtNtNtB8_5array4iter8IntoIterhKj8_EhNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECs5yxAJGbRKSL_4ring.exit.loopexit.loopexit.i.i.i.i.i.i

_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters7flatten17and_then_or_clearINtNtNtB8_5array4iter8IntoIterhKj8_EhNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECs5yxAJGbRKSL_4ring.exit.loopexit.loopexit.i.i.i.i.i.i: ; preds = %bb.ch
  %i.ow = getelementptr inbounds i8, ptr %i.oq, i64 -8 ; 2 uses
  %i.ox = load i64, ptr %i.ow, align 8, !alias.scope !3361, !noalias !3368, !noundef !15
  %i.oy = call noundef i64 @llvm.bswap.i64(i64 %i.ox)
  store i64 %i.oy, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx5.sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !3369, !noalias !3363
  br label %_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters7flatten17and_then_or_clearINtNtNtB8_5array4iter8IntoIterhKj8_EhNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECs5yxAJGbRKSL_4ring.exit.i.i.i.i.i.i

_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters7flatten17and_then_or_clearINtNtNtB8_5array4iter8IntoIterhKj8_EhNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECs5yxAJGbRKSL_4ring.exit.i.i.i.i.i.i: ; preds = %_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters7flatten17and_then_or_clearINtNtNtB8_5array4iter8IntoIterhKj8_EhNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECs5yxAJGbRKSL_4ring.exit.loopexit.loopexit.i.i.i.i.i.i, %.split.preheader.i.i.i.i.i.i
  %i.oz = phi ptr [ %i.ow, %_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters7flatten17and_then_or_clearINtNtNtB8_5array4iter8IntoIterhKj8_EhNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECs5yxAJGbRKSL_4ring.exit.loopexit.loopexit.i.i.i.i.i.i ], [ %i.oq, %.split.preheader.i.i.i.i.i.i ]
  %.us-phi.i.i.i.i.i.i = phi i64 [ 0, %_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters7flatten17and_then_or_clearINtNtNtB8_5array4iter8IntoIterhKj8_EhNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECs5yxAJGbRKSL_4ring.exit.loopexit.loopexit.i.i.i.i.i.i ], [ %i.or, %.split.preheader.i.i.i.i.i.i ] ; 3 uses
  %i.pa = icmp ult i64 %.us-phi.i.i.i.i.i.i, 8
  call void @llvm.assume(i1 %i.pa)
  %i.pb = icmp eq i64 %i.op, 0
  br i1 %i.pb, label %.noexc.i.i.i, label %bb.ci

bb.ci:                                            ; preds = %_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters7flatten17and_then_or_clearINtNtNtB8_5array4iter8IntoIterhKj8_EhNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECs5yxAJGbRKSL_4ring.exit.i.i.i.i.i.i
  %i.pc = getelementptr inbounds nuw i8, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx5.sroa_idx.i.i.i.i.i.i, i64 %.us-phi.i.i.i.i.i.i
  %i.pd = add nuw nsw i64 %.us-phi.i.i.i.i.i.i, 1
  %.sroa.3.0.i8.pn.i.ph.i.i.i.i.i = load i8, ptr %i.pc, align 1, !alias.scope !3369, !noalias !3363, !noundef !15
  %i.pe = insertvalue { i1, i8 } { i1 true, i8 poison }, i8 %.sroa.3.0.i8.pn.i.ph.i.i.i.i.i, 1
  %i.pf = add nsw i64 %i.op, -1
  br label %_RNvXs_NtNtCs5yxAJGbRKSL_4ring8polyfill14array_flat_mapINtB4_12ArrayFlatMapINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters6copied6CopiedINtNtB1f_3rev3RevINtNtNtB1j_5slice4iter4IteryEEEhNvMs7_NtB1j_3numy11to_be_bytesKj8_ENtNtNtB1h_6traits8iterator8Iterator4nextB8_.exit.i.i.i.i

.noexc.i.i.i:                                     ; preds = %_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters7flatten17and_then_or_clearINtNtNtB8_5array4iter8IntoIterhKj8_EhNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECs5yxAJGbRKSL_4ring.exit.i.i.i.i.i.i
  call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_sub_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @334) #41, !noalias !3363
  unreachable

_RNvXs_NtNtCs5yxAJGbRKSL_4ring8polyfill14array_flat_mapINtB4_12ArrayFlatMapINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters6copied6CopiedINtNtB1f_3rev3RevINtNtNtB1j_5slice4iter4IteryEEEhNvMs7_NtB1j_3numy11to_be_bytesKj8_ENtNtNtB1h_6traits8iterator8Iterator4nextB8_.exit.i.i.i.i: ; preds = %bb.ci, %bb.ch
  %i.pg = phi i64 [ %i.pf, %bb.ci ], [ %i.op, %bb.ch ]
  %i.ph = phi ptr [ %i.oz, %bb.ci ], [ %i.ab, %bb.ch ]
  %i.pi = phi i64 [ %i.pd, %bb.ci ], [ %i.or, %bb.ch ]
  %i.pj = phi i1 [ true, %bb.ci ], [ false, %bb.ch ]
  %i.pk = phi { i1, i8 } [ %i.pe, %bb.ci ], [ { i1 false, i8 undef }, %bb.ch ] ; 2 uses
  %i.pl = extractvalue { i1, i8 } %i.pk, 0
  br i1 %i.pl, label %bb.cj, label %_RNvMs5_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3RefNtNtBb_3rsa1NE13fill_be_bytesBb_.exit

bb.cj:                                            ; preds = %_RNvXs_NtNtCs5yxAJGbRKSL_4ring8polyfill14array_flat_mapINtB4_12ArrayFlatMapINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters6copied6CopiedINtNtB1f_3rev3RevINtNtNtB1j_5slice4iter4IteryEEEhNvMs7_NtB1j_3numy11to_be_bytesKj8_ENtNtNtB1h_6traits8iterator8Iterator4nextB8_.exit.i.i.i.i
  %i.pm = extractvalue { i1, i8 } %i.pk, 1
  store i8 %i.pm, ptr %i.os, align 1, !alias.scope !3370, !noalias !3364
  %i.pn = icmp eq ptr %i.ou, %i.oo
  br i1 %i.pn, label %_RNvMs5_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3RefNtNtBb_3rsa1NE13fill_be_bytesBb_.exit, label %.split.preheader.i.i.i.i.i.i

_RNvMs5_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3RefNtNtBb_3rsa1NE13fill_be_bytesBb_.exit: ; preds = %_RNvXs_NtNtCs5yxAJGbRKSL_4ring8polyfill14array_flat_mapINtB4_12ArrayFlatMapINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters6copied6CopiedINtNtB1f_3rev3RevINtNtNtB1j_5slice4iter4IteryEEEhNvMs7_NtB1j_3numy11to_be_bytesKj8_ENtNtNtB1h_6traits8iterator8Iterator4nextB8_.exit.i.i.i.i, %bb.cj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3363
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3360
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  br label %bb.ck

bb.ck:                                            ; preds = %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring3rsa4base14public_modulusINtB5_13PublicModulusINtNtNtNtNtBb_10arithmetic6bigint7modulus4mont8IntoMontNtB9_1NNtNtB1n_10montgomery2RREE8len_bits.exit.thread, %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring3rsa4base14public_modulusINtB5_13PublicModulusINtNtNtNtNtBb_10arithmetic6bigint7modulus4mont8IntoMontNtB9_1NNtNtB1n_10montgomery2RREE8len_bits.exit, %_RNvMNtNtCs5yxAJGbRKSL_4ring3rsa10public_keyNtB2_9PublicKey11modulus_len.exit, %bb.m, %_RNvMs2_NtNtCs5yxAJGbRKSL_4ring3rsa7keypairNtB5_7KeyPair20private_exponentiate.exit.thread, %_RNvMs5_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3RefNtNtBb_3rsa1NE13fill_be_bytesBb_.exit
  %.sroa.0.0 = phi i1 [ false, %_RNvMs5_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3RefNtNtBb_3rsa1NE13fill_be_bytesBb_.exit ], [ true, %bb.m ], [ true, %_RNvMNtNtCs5yxAJGbRKSL_4ring3rsa10public_keyNtB2_9PublicKey11modulus_len.exit ], [ true, %_RNvMs2_NtNtCs5yxAJGbRKSL_4ring3rsa7keypairNtB5_7KeyPair20private_exponentiate.exit.thread ], [ true, %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring3rsa4base14public_modulusINtB5_13PublicModulusINtNtNtNtNtBb_10arithmetic6bigint7modulus4mont8IntoMontNtB9_1NNtNtB1n_10montgomery2RREE8len_bits.exit ], [ true, %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring3rsa4base14public_modulusINtB5_13PublicModulusINtNtNtNtNtBb_10arithmetic6bigint7modulus4mont8IntoMontNtB9_1NNtNtB1n_10montgomery2RREE8len_bits.exit.thread ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { ptr, i64 } @_RNvMs2_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtBb_3rsa1NE20from_be_bytes_paddedBb_(ptr noalias nofree noundef nonnull align 8 dereferenceable(1024) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef %2, ptr %.0.val, i64 %.8.val) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = icmp ugt i64 %.8.val, 1
  br i1 %i.c, label %bb.c, label %bb.b, !prof !19

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #41
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = add i64 %.8.val, -2                      ; 7 uses
  %.not.i = icmp eq i64 %i.d, 0
  br i1 %.not.i, label %bb.d, label %_RNvMs6_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montINtNtB5_4base4MontNtNtBd_3rsa1NE9num_limbsBd_.exit, !prof !16

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @154) #41
  unreachable

_RNvMs6_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montINtNtB5_4base4MontNtNtBd_3rsa1NE9num_limbsBd_.exit: ; preds = %bb.c
  %i.e = icmp ugt i64 %i.d, 128
  br i1 %i.e, label %bb.e, label %_RNvMs6_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montINtNtB5_4base4MontNtNtBd_3rsa1NE9num_limbsBd_.exit.i, !prof !16

bb.e:                                             ; preds = %_RNvMs6_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montINtNtB5_4base4MontNtNtBd_3rsa1NE9num_limbsBd_.exit
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @145) #41
  unreachable

_RNvMs6_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montINtNtB5_4base4MontNtNtBd_3rsa1NE9num_limbsBd_.exit.i: ; preds = %_RNvMs6_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montINtNtB5_4base4MontNtNtBd_3rsa1NE9num_limbsBd_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3382
  store ptr %0, ptr %i.b, align 8, !noalias !3382
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store i64 %i.d, ptr %i.f, align 8, !noalias !3382
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 0, ptr %i.g, align 8, !noalias !3382
  %i.h = call fastcc { i64, i64 } @_RNvNtCs5yxAJGbRKSL_4ring4limb26limbs_from_be_bytes_padded(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i64 noundef %i.d)
  %i.i = extractvalue { i64, i64 } %i.h, 0
  %i.j = trunc nuw i64 %i.i to i1
  br i1 %i.j, label %_RNvMs2_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtBb_3rsa1NE21from_be_bytes_padded_Bb_.exit, label %bb.f, !prof !16

bb.f:                                             ; preds = %_RNvMs6_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montINtNtB5_4base4MontNtNtBd_3rsa1NE9num_limbsBd_.exit.i
  %.sroa.0.0.copyload.i = load ptr, ptr %i.b, align 8, !noalias !3382 ; 3 uses
  %.sroa.4.0.copyload.i = load i64, ptr %i.f, align 8, !noalias !3382
  %.sroa.5.0.copyload.i = load i64, ptr %i.g, align 8, !noalias !3382 ; 3 uses
  %.not.i.i.i = icmp ugt i64 %.sroa.5.0.copyload.i, %.sroa.4.0.copyload.i
  br i1 %.not.i.i.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @168) #41, !noalias !3383
  unreachable

bb.h:                                             ; preds = %bb.f
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i), "nonnull"(ptr %.0.val) ]
  %.not9.i.i.i.i = icmp eq i64 %.sroa.5.0.copyload.i, %i.d
  br i1 %.not9.i.i.i.i, label %_RNvNtCs5yxAJGbRKSL_4ring4limb37verify_limbs_less_than_limbs_leak_bit.exit.i.i, label %_RNvNtCs5yxAJGbRKSL_4ring4limb37verify_limbs_less_than_limbs_leak_bit.exit.thread.i.i, !prof !36

_RNvNtCs5yxAJGbRKSL_4ring4limb37verify_limbs_less_than_limbs_leak_bit.exit.i.i: ; preds = %bb.h
  %i.k = getelementptr inbounds nuw i8, ptr %.0.val, i64 16
  %i.l = tail call noundef i64 @ring_core_0_17_16000__LIMBS_less_than(ptr noundef nonnull readonly align 8 %.sroa.0.0.copyload.i, ptr noundef nonnull readonly align 8 %i.k, i64 noundef range(i64 0, 1152921504606846976) %i.d) #36, !noalias !3384
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3385
  store i64 %i.l, ptr %i.a, align 8, !noalias !3385
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %i.a) #36, !noalias !3384, !srcloc !37
  %i.m = load i64, ptr %i.a, align 8, !noalias !3385, !noundef !15
  %.not.i.i5.i = icmp eq i64 %i.m, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3385
  br i1 %.not.i.i5.i, label %_RNvNtCs5yxAJGbRKSL_4ring4limb37verify_limbs_less_than_limbs_leak_bit.exit.thread.i.i, label %_RNvMs2_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtBb_3rsa1NE21from_be_bytes_padded_Bb_.exit

_RNvNtCs5yxAJGbRKSL_4ring4limb37verify_limbs_less_than_limbs_leak_bit.exit.thread.i.i: ; preds = %_RNvNtCs5yxAJGbRKSL_4ring4limb37verify_limbs_less_than_limbs_leak_bit.exit.i.i, %bb.h
  br label %_RNvMs2_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtBb_3rsa1NE21from_be_bytes_padded_Bb_.exit

_RNvMs2_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtBb_3rsa1NE21from_be_bytes_padded_Bb_.exit: ; preds = %_RNvMs6_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montINtNtB5_4base4MontNtNtBd_3rsa1NE9num_limbsBd_.exit.i, %_RNvNtCs5yxAJGbRKSL_4ring4limb37verify_limbs_less_than_limbs_leak_bit.exit.i.i, %_RNvNtCs5yxAJGbRKSL_4ring4limb37verify_limbs_less_than_limbs_leak_bit.exit.thread.i.i
  %.sroa.3.0.i = phi i64 [ undef, %_RNvMs6_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montINtNtB5_4base4MontNtNtBd_3rsa1NE9num_limbsBd_.exit.i ], [ %i.d, %_RNvNtCs5yxAJGbRKSL_4ring4limb37verify_limbs_less_than_limbs_leak_bit.exit.i.i ], [ %.sroa.5.0.copyload.i, %_RNvNtCs5yxAJGbRKSL_4ring4limb37verify_limbs_less_than_limbs_leak_bit.exit.thread.i.i ]
  %.sroa.0.0.i = phi ptr [ null, %_RNvMs6_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montINtNtB5_4base4MontNtNtBd_3rsa1NE9num_limbsBd_.exit.i ], [ %.sroa.0.0.copyload.i, %_RNvNtCs5yxAJGbRKSL_4ring4limb37verify_limbs_less_than_limbs_leak_bit.exit.i.i ], [ null, %_RNvNtCs5yxAJGbRKSL_4ring4limb37verify_limbs_less_than_limbs_leak_bit.exit.thread.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3382
  %i.n = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0.i, 0
  %i.o = insertvalue { ptr, i64 } %i.n, i64 %.sroa.3.0.i, 1
  ret { ptr, i64 } %i.o
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal fastcc void @_RNvMs2_NtNtNtCs5yxAJGbRKSL_4ring4aead3aes8fallbackNtB5_3Key3new(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(248) %0, i64 noundef range(i64 0, 2) %1, ptr nofree noundef nonnull readonly captures(none) %2) unnamed_addr #16 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  %i.b = alloca [176 x i8], align 16              ; 5 uses
  %i.c = alloca [16 x i8], align 16               ; 4 uses
  %i.d = alloca [16 x i8], align 16               ; 4 uses
  %i.e = alloca [240 x i8], align 8               ; 4 uses
  %i.f = trunc nuw i64 %1 to i1
  br i1 %i.f, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3454)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3455)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.h = load <2 x i64>, ptr %2, align 1, !alias.scope !3456 ; 3 uses
  %i.i = lshr <2 x i64> %i.h, splat (i64 4)
  %i.j = xor <2 x i64> %i.i, %i.h
  %i.k = and <2 x i64> %i.j, splat (i64 67555025218437360)
  %i.l = mul nuw nsw <2 x i64> %i.k, splat (i64 17)
  %i.m = xor <2 x i64> %i.l, %i.h
  %i.n = shufflevector <2 x i64> %i.m, <2 x i64> poison, <2 x i32> <i32 1, i32 0> ; 3 uses
  %i.o = lshr <2 x i64> %i.n, splat (i64 8)
  %i.p = xor <2 x i64> %i.o, %i.n
  %i.q = and <2 x i64> %i.p, splat (i64 280375465148160)
  %i.r = mul nuw nsw <2 x i64> %i.q, splat (i64 257)
  %i.s = xor <2 x i64> %i.r, %i.n                 ; 3 uses
  %i.t = lshr <2 x i64> %i.s, splat (i64 16)
  %i.u = xor <2 x i64> %i.t, %i.s
  %i.v = and <2 x i64> %i.u, splat (i64 4294901760)
  %i.w = mul nuw nsw <2 x i64> %i.v, splat (i64 65537)
  %i.x = xor <2 x i64> %i.w, %i.s                 ; 3 uses
  %i.y = and <2 x i64> %i.x, <i64 -4294967296, i64 4294967295>
  %i.z = shufflevector <2 x i64> %i.y, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.aa = shl <2 x i64> %i.x, splat (i64 32)
  %i.ab = lshr <2 x i64> %i.x, splat (i64 32)
  %i.ac = shufflevector <2 x i64> %i.aa, <2 x i64> %i.ab, <2 x i32> <i32 0, i32 3>
  %i.ad = or disjoint <2 x i64> %i.ac, %i.z       ; 2 uses
  %i.ae = load <2 x i64>, ptr %i.g, align 1, !alias.scope !3457 ; 3 uses
  %i.af = lshr <2 x i64> %i.ae, splat (i64 4)
  %i.ag = xor <2 x i64> %i.af, %i.ae
  %i.ah = and <2 x i64> %i.ag, splat (i64 67555025218437360)
  %i.ai = mul nuw nsw <2 x i64> %i.ah, splat (i64 17)
  %i.aj = xor <2 x i64> %i.ai, %i.ae
  %i.ak = shufflevector <2 x i64> %i.aj, <2 x i64> poison, <2 x i32> <i32 1, i32 0> ; 3 uses
  %i.al = lshr <2 x i64> %i.ak, splat (i64 8)
  %i.am = xor <2 x i64> %i.al, %i.ak
  %i.an = and <2 x i64> %i.am, splat (i64 280375465148160)
  %i.ao = mul nuw nsw <2 x i64> %i.an, splat (i64 257)
  %i.ap = xor <2 x i64> %i.ao, %i.ak              ; 3 uses
  %i.aq = lshr <2 x i64> %i.ap, splat (i64 16)
  %i.ar = xor <2 x i64> %i.aq, %i.ap
  %i.as = and <2 x i64> %i.ar, splat (i64 4294901760)
  %i.at = mul nuw nsw <2 x i64> %i.as, splat (i64 65537)
  %i.au = xor <2 x i64> %i.at, %i.ap              ; 3 uses
  %i.av = and <2 x i64> %i.au, <i64 -4294967296, i64 4294967295>
  %i.aw = shufflevector <2 x i64> %i.av, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.ax = shl <2 x i64> %i.au, splat (i64 32)
  %i.ay = lshr <2 x i64> %i.au, splat (i64 32)
  %i.az = shufflevector <2 x i64> %i.ax, <2 x i64> %i.ay, <2 x i32> <i32 0, i32 3>
  %i.ba = or disjoint <2 x i64> %i.az, %i.aw      ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %bb.b
  %storemerge9.i.i.i = phi i64 [ 0, %bb.b ], [ %i.cx, %bb.g ] ; 5 uses
  %i.bb = phi <2 x i64> [ %i.ba, %bb.b ], [ %i.cs, %bb.g ] ; 4 uses
  %i.bc = phi <2 x i64> [ %i.ad, %bb.b ], [ %i.ct, %bb.g ] ; 4 uses
  %i.bd = phi <2 x i64> [ %i.ad, %bb.b ], [ %i.cu, %bb.g ] ; 6 uses
  %i.be = phi <2 x i64> [ %i.ba, %bb.b ], [ %i.cv, %bb.g ] ; 6 uses
  switch i64 %storemerge9.i.i.i, label %bb.e [
    i64 0, label %bb.g
    i64 1, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.bf = and i64 %storemerge9.i.i.i, 1
  %i.bg = icmp eq i64 %i.bf, 0
  br i1 %i.bg, label %bb.f, label %.lr.ph.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.e
  %i.bh = lshr exact i64 %storemerge9.i.i.i, 1
  %i.bi = getelementptr i8, ptr @_RNvNtNtNtCs5yxAJGbRKSL_4ring4aead3aes8fallback4RCON, i64 %i.bh
  %i.bj = getelementptr i8, ptr %i.bi, i64 -1
  %i.bk = load i8, ptr %i.bj, align 1, !noalias !3458, !noundef !15 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !3458
  %i.bl = extractelement <2 x i64> %i.be, i64 0
  %i.bm = extractelement <2 x i64> %i.be, i64 1
  call fastcc void @_RNvNtNtNtCs5yxAJGbRKSL_4ring4aead3aes8fallback9sub_block(ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %i.d, i64 %i.bl, i64 %i.bm), !noalias !3458
  %i.bn = load <2 x i64>, ptr %i.d, align 16, !alias.scope !3459, !noalias !3458 ; 2 uses
  %i.bo = and i8 %i.bk, 15
  %i.bp = zext nneg i8 %i.bo to i64
  %i.bq = lshr i8 %i.bk, 4
  %i.br = zext nneg i8 %i.bq to i64
  %i.bs = lshr <2 x i64> %i.bn, splat (i64 52)
  %i.bt = lshr <2 x i64> %i.bn, splat (i64 36)
  %i.bu = and <2 x i64> %i.bt, splat (i64 61440)
  %i.bv = or disjoint <2 x i64> %i.bu, %i.bs
  %i.bw = insertelement <2 x i64> poison, i64 %i.bp, i64 0
  %i.bx = insertelement <2 x i64> %i.bw, i64 %i.br, i64 1
  %i.by = xor <2 x i64> %i.bv, %i.bx
  %i.bz = xor <2 x i64> %i.by, %i.bd              ; 4 uses
  %i.ca = shl <2 x i64> %i.bz, splat (i64 16)
  %i.cb = shl <2 x i64> %i.bz, splat (i64 32)
  %i.cc = shl <2 x i64> %i.bz, splat (i64 48)
  %i.cd = xor <2 x i64> %i.cb, %i.ca
  %i.ce = xor <2 x i64> %i.cd, %i.cc
  %i.cf = xor <2 x i64> %i.ce, %i.bz              ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !3458
  br label %bb.g

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3458
  %i.cg = extractelement <2 x i64> %i.bd, i64 0
  %i.ch = extractelement <2 x i64> %i.bd, i64 1
  call fastcc void @_RNvNtNtNtCs5yxAJGbRKSL_4ring4aead3aes8fallback9sub_block(ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %i.c, i64 %i.cg, i64 %i.ch), !noalias !3458
  %i.ci = load <2 x i64>, ptr %i.c, align 16, !alias.scope !3460, !noalias !3458
  %i.cj = lshr <2 x i64> %i.ci, splat (i64 48)
  %i.ck = xor <2 x i64> %i.cj, %i.be              ; 4 uses
  %i.cl = shl <2 x i64> %i.ck, splat (i64 16)
  %i.cm = shl <2 x i64> %i.ck, splat (i64 32)
  %i.cn = shl <2 x i64> %i.ck, splat (i64 48)
  %i.co = xor <2 x i64> %i.cm, %i.cl
  %i.cp = xor <2 x i64> %i.co, %i.cn
  %i.cq = xor <2 x i64> %i.cp, %i.ck              ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3458
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i.i.i.i.i, %bb.f, %bb.d, %bb.c
  %i.cr = phi <2 x i64> [ %i.cf, %bb.f ], [ %i.cq, %.lr.ph.i.i.i.i.i.i ], [ %i.bb, %bb.d ], [ %i.bc, %bb.c ]
  %i.cs = phi <2 x i64> [ %i.bb, %bb.f ], [ %i.cq, %.lr.ph.i.i.i.i.i.i ], [ %i.bb, %bb.d ], [ %i.bb, %bb.c ]
  %i.ct = phi <2 x i64> [ %i.cf, %bb.f ], [ %i.bc, %.lr.ph.i.i.i.i.i.i ], [ %i.bc, %bb.d ], [ %i.bc, %bb.c ]
  %i.cu = phi <2 x i64> [ %i.cf, %bb.f ], [ %i.bd, %.lr.ph.i.i.i.i.i.i ], [ %i.bd, %bb.d ], [ %i.bd, %bb.c ]
  %i.cv = phi <2 x i64> [ %i.be, %bb.f ], [ %i.cq, %.lr.ph.i.i.i.i.i.i ], [ %i.be, %bb.d ], [ %i.be, %bb.c ]
  %i.cw = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %storemerge9.i.i.i
  store <2 x i64> %i.cr, ptr %i.cw, align 8, !noalias !3461
  %i.cx = add nuw nsw i64 %storemerge9.i.i.i, 1   ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.cx, 15
  br i1 %exitcond.not.i.i.i, label %_RNvNtNtNtCs5yxAJGbRKSL_4ring4aead3aes8fallback13setup_key_256.exit, label %bb.c

_RNvNtNtNtCs5yxAJGbRKSL_4ring4aead3aes8fallback13setup_key_256.exit: ; preds = %bb.g
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(240) %i.cy, ptr noundef nonnull align 8 dereferenceable(240) %i.e, i64 240, i1 false), !noalias !3455
  store i64 1, ptr %0, align 8, !alias.scope !3454
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.j

bb.h:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3462)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.cz = load <2 x i64>, ptr %2, align 1, !alias.scope !3463 ; 3 uses
  %i.da = lshr <2 x i64> %i.cz, splat (i64 4)
  %i.db = xor <2 x i64> %i.da, %i.cz
  %i.dc = and <2 x i64> %i.db, splat (i64 67555025218437360)
  %i.dd = mul nuw nsw <2 x i64> %i.dc, splat (i64 17)
  %i.de = xor <2 x i64> %i.dd, %i.cz
  %i.df = shufflevector <2 x i64> %i.de, <2 x i64> poison, <2 x i32> <i32 1, i32 0> ; 3 uses
  %i.dg = lshr <2 x i64> %i.df, splat (i64 8)
  %i.dh = xor <2 x i64> %i.dg, %i.df
  %i.di = and <2 x i64> %i.dh, splat (i64 280375465148160)
  %i.dj = mul nuw nsw <2 x i64> %i.di, splat (i64 257)
  %i.dk = xor <2 x i64> %i.dj, %i.df              ; 3 uses
  %i.dl = lshr <2 x i64> %i.dk, splat (i64 16)
  %i.dm = xor <2 x i64> %i.dl, %i.dk
  %i.dn = and <2 x i64> %i.dm, splat (i64 4294901760)
  %i.do = mul nuw nsw <2 x i64> %i.dn, splat (i64 65537)
  %i.dp = xor <2 x i64> %i.do, %i.dk              ; 3 uses
  %i.dq = and <2 x i64> %i.dp, <i64 -4294967296, i64 4294967295>
  %i.dr = shufflevector <2 x i64> %i.dq, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.ds = shl <2 x i64> %i.dp, splat (i64 32)
  %i.dt = lshr <2 x i64> %i.dp, splat (i64 32)
end_hunk_2
begin_hunk_3_@_RNvNvNtNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b5ecdsa7signing14format_rs_asn118format_integer_tlv:bb.a
  store i64 %i.t, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx5.sroa_idx.i.i.i.i.i, align 8, !alias.scope !5851, !noalias !5845
  br label %_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters7flatten17and_then_or_clearINtNtNtB8_5array4iter8IntoIterhKj8_EhNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECs5yxAJGbRKSL_4ring.exit.i.i.i.i.i

_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters7flatten17and_then_or_clearINtNtNtB8_5array4iter8IntoIterhKj8_EhNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECs5yxAJGbRKSL_4ring.exit.i.i.i.i.i: ; preds = %_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters7flatten17and_then_or_clearINtNtNtB8_5array4iter8IntoIterhKj8_EhNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECs5yxAJGbRKSL_4ring.exit.loopexit.loopexit.i.i.i.i.i, %.split.preheader.i.i.i.i.i
  %i.u = phi ptr [ %i.r, %_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters7flatten17and_then_or_clearINtNtNtB8_5array4iter8IntoIterhKj8_EhNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECs5yxAJGbRKSL_4ring.exit.loopexit.loopexit.i.i.i.i.i ], [ %i.l, %.split.preheader.i.i.i.i.i ]
  %.us-phi.i.i.i.i.i = phi i64 [ 0, %_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters7flatten17and_then_or_clearINtNtNtB8_5array4iter8IntoIterhKj8_EhNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECs5yxAJGbRKSL_4ring.exit.loopexit.loopexit.i.i.i.i.i ], [ %i.m, %.split.preheader.i.i.i.i.i ] ; 3 uses
  %i.v = icmp ult i64 %.us-phi.i.i.i.i.i, 8
  call void @llvm.assume(i1 %i.v)
  %i.w = icmp eq i64 %i.k, 0
  br i1 %i.w, label %.noexc.i.i, label %bb.e

bb.e:                                             ; preds = %_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters7flatten17and_then_or_clearINtNtNtB8_5array4iter8IntoIterhKj8_EhNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECs5yxAJGbRKSL_4ring.exit.i.i.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx5.sroa_idx.i.i.i.i.i, i64 %.us-phi.i.i.i.i.i
  %i.y = add nuw nsw i64 %.us-phi.i.i.i.i.i, 1
  %.sroa.3.0.i8.pn.i.ph.i.i.i.i = load i8, ptr %i.x, align 1, !alias.scope !5851, !noalias !5845, !noundef !15
  %i.z = insertvalue { i1, i8 } { i1 true, i8 poison }, i8 %.sroa.3.0.i8.pn.i.ph.i.i.i.i, 1
  %i.aa = add nsw i64 %i.k, -1
  br label %_RNvXs_NtNtCs5yxAJGbRKSL_4ring8polyfill14array_flat_mapINtB4_12ArrayFlatMapINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters6copied6CopiedINtNtB1f_3rev3RevINtNtNtB1j_5slice4iter4IteryEEEhNvMs7_NtB1j_3numy11to_be_bytesKj8_ENtNtNtB1h_6traits8iterator8Iterator4nextB8_.exit.i.i.i

.noexc.i.i:                                       ; preds = %_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters7flatten17and_then_or_clearINtNtNtB8_5array4iter8IntoIterhKj8_EhNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECs5yxAJGbRKSL_4ring.exit.i.i.i.i.i
  call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_sub_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @334) #41, !noalias !5845
  unreachable

_RNvXs_NtNtCs5yxAJGbRKSL_4ring8polyfill14array_flat_mapINtB4_12ArrayFlatMapINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters6copied6CopiedINtNtB1f_3rev3RevINtNtNtB1j_5slice4iter4IteryEEEhNvMs7_NtB1j_3numy11to_be_bytesKj8_ENtNtNtB1h_6traits8iterator8Iterator4nextB8_.exit.i.i.i: ; preds = %bb.e, %bb.d
  %i.ab = phi i64 [ %i.aa, %bb.e ], [ %i.k, %bb.d ]
  %i.ac = phi ptr [ %i.u, %bb.e ], [ %0, %bb.d ]
  %i.ad = phi i64 [ %i.y, %bb.e ], [ %i.m, %bb.d ]
  %i.ae = phi i1 [ true, %bb.e ], [ false, %bb.d ]
  %i.af = phi { i1, i8 } [ %i.z, %bb.e ], [ { i1 false, i8 undef }, %bb.d ] ; 2 uses
  %i.ag = extractvalue { i1, i8 } %i.af, 0
  br i1 %i.ag, label %bb.f, label %_RNvNtCs5yxAJGbRKSL_4ring4limb21big_endian_from_limbs.exit

bb.f:                                             ; preds = %_RNvXs_NtNtCs5yxAJGbRKSL_4ring8polyfill14array_flat_mapINtB4_12ArrayFlatMapINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters6copied6CopiedINtNtB1f_3rev3RevINtNtNtB1j_5slice4iter4IteryEEEhNvMs7_NtB1j_3numy11to_be_bytesKj8_ENtNtNtB1h_6traits8iterator8Iterator4nextB8_.exit.i.i.i
  %i.ah = extractvalue { i1, i8 } %i.af, 1
  store i8 %i.ah, ptr %i.n, align 1, !alias.scope !5852, !noalias !5846
  %i.ai = icmp eq ptr %i.p, %..sroa.sel.v.sroa.sel.v.sroa.sel
  br i1 %i.ai, label %_RNvNtCs5yxAJGbRKSL_4ring4limb21big_endian_from_limbs.exit, label %.split.preheader.i.i.i.i.i

_RNvNtCs5yxAJGbRKSL_4ring4limb21big_endian_from_limbs.exit: ; preds = %_RNvXs_NtNtCs5yxAJGbRKSL_4ring8polyfill14array_flat_mapINtB4_12ArrayFlatMapINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters6copied6CopiedINtNtB1f_3rev3RevINtNtNtB1j_5slice4iter4IteryEEEhNvMs7_NtB1j_3numy11to_be_bytesKj8_ENtNtNtB1h_6traits8iterator8Iterator4nextB8_.exit.i.i.i, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5845
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %..sroa.sel.v = select i1 %i.g, i64 48, i64 32
  %..sroa.sel = getelementptr inbounds nuw i8, ptr %i.d, i64 %..sroa.sel.v
  %wide.load = load <16 x i8>, ptr %i.d, align 16, !noalias !5853
  %wide.load.fr = freeze <16 x i8> %wide.load
  %i.aj = icmp ne <16 x i8> %wide.load.fr, zeroinitializer ; 2 uses
  %i.ak = bitcast <16 x i1> %i.aj to i16
  %.not = icmp eq i16 %i.ak, 0
  br i1 %.not, label %vector.body.1, label %vector.early.exit

vector.body.1:                                    ; preds = %_RNvNtCs5yxAJGbRKSL_4ring4limb21big_endian_from_limbs.exit
  %next.gep.1 = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %wide.load.1 = load <16 x i8>, ptr %next.gep.1, align 16, !noalias !5853
  %wide.load.fr.1 = freeze <16 x i8> %wide.load.1
  %i.al = icmp ne <16 x i8> %wide.load.fr.1, zeroinitializer ; 2 uses
  %i.am = bitcast <16 x i1> %i.al to i16
  %.not.1 = icmp eq i16 %i.am, 0
  br i1 %.not.1, label %vector.body.interim.1, label %vector.early.exit

vector.body.interim.1:                            ; preds = %vector.body.1
  br i1 %i.g, label %vector.body.2, label %.lr.ph.i

vector.body.2:                                    ; preds = %vector.body.interim.1
  %next.gep.2 = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %wide.load.2 = load <16 x i8>, ptr %next.gep.2, align 16, !noalias !5853
  %wide.load.fr.2 = freeze <16 x i8> %wide.load.2
  %i.an = icmp ne <16 x i8> %wide.load.fr.2, zeroinitializer ; 2 uses
  %i.ao = bitcast <16 x i1> %i.an to i16
  %.not.2 = icmp eq i16 %i.ao, 0
  br i1 %.not.2, label %.lr.ph.i, label %vector.early.exit

vector.early.exit:                                ; preds = %vector.body.2, %vector.body.1, %_RNvNtCs5yxAJGbRKSL_4ring4limb21big_endian_from_limbs.exit
  %index.lcssa = phi i64 [ 0, %_RNvNtCs5yxAJGbRKSL_4ring4limb21big_endian_from_limbs.exit ], [ 16, %vector.body.1 ], [ 32, %vector.body.2 ]
  %.lcssa = phi <16 x i1> [ %i.aj, %_RNvNtCs5yxAJGbRKSL_4ring4limb21big_endian_from_limbs.exit ], [ %i.al, %vector.body.1 ], [ %i.an, %vector.body.2 ]
  %i.ap = call i64 @llvm.experimental.cttz.elts.i64.v16i1(<16 x i1> %.lcssa, i1 false)
  %i.aq = add i64 %index.lcssa, %i.ap
  br label %.loopexit

.lr.ph.i:                                         ; preds = %vector.body.interim.1, %vector.body.2
  %.val.i = load i8, ptr %..sroa.sel, align 16, !noalias !5853, !noundef !15
  %.not.i20 = icmp eq i8 %.val.i, 0
  br i1 %.not.i20, label %.loopexit20, label %.loopexit

.loopexit20:                                      ; preds = %.lr.ph.i
  call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @253) #41
  unreachable

.loopexit:                                        ; preds = %.lr.ph.i, %vector.early.exit
  %.sroa.02.07.i.lcssa = phi i64 [ %i.aq, %vector.early.exit ], [ %., %.lr.ph.i ] ; 5 uses
  %i.ar = icmp samesign ule i64 %.sroa.02.07.i.lcssa, %.
  call void @llvm.assume(i1 %i.ar)
  %i.as = getelementptr inbounds nuw i8, ptr %i.d, i64 %.sroa.02.07.i.lcssa
  %i.at = load i8, ptr %i.as, align 1, !noundef !15
  %i.au = icmp sgt i8 %i.at, -1
  br i1 %i.au, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.loopexit
  %i.av = icmp eq i64 %.sroa.02.07.i.lcssa, 0
  br i1 %i.av, label %bb.j, label %bb.i

bb.h:                                             ; preds = %.loopexit, %bb.i
  %.sroa.0.0 = phi i64 [ %.sroa.02.07.i.lcssa, %.loopexit ], [ %i.ax, %bb.i ] ; 4 uses
  %i.aw = icmp ugt i64 %.sroa.0.0, %i.h
  br i1 %i.aw, label %bb.l, label %bb.k, !prof !16

bb.i:                                             ; preds = %bb.g
  %i.ax = add nsw i64 %.sroa.02.07.i.lcssa, -1
  br label %bb.h

bb.j:                                             ; preds = %bb.g
  call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_sub_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @254) #41
  unreachable

bb.k:                                             ; preds = %bb.h
  %i.ay = sub nuw nsw i64 %i.h, %.sroa.0.0        ; 5 uses
  %.not17 = icmp eq i64 %2, 0
  br i1 %.not17, label %bb.n, label %bb.m

bb.l:                                             ; preds = %bb.h
  call void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef %.sroa.0.0, i64 noundef %i.h, i64 noundef %i.h, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @258) #41
  unreachable

bb.m:                                             ; preds = %bb.k
  store i8 2, ptr %1, align 1
  %.not18 = icmp eq i64 %2, 1
  br i1 %.not18, label %bb.p, label %bb.o

bb.n:                                             ; preds = %bb.k
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @255) #41
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.ba = trunc nuw nsw i64 %i.ay to i8
  store i8 %i.ba, ptr %i.az, align 1
  %i.bb = add nsw i64 %2, -2                      ; 2 uses
  %.not19 = icmp ugt i64 %i.ay, %i.bb
  br i1 %.not19, label %bb.q, label %bb.r, !prof !30

bb.p:                                             ; preds = %bb.m
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef 1, i64 noundef 1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @256) #41
  unreachable

bb.q:                                             ; preds = %bb.o
  call void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ay, i64 noundef %i.bb, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @257) #41
  unreachable

bb.r:                                             ; preds = %bb.o
  %i.bc = getelementptr inbounds nuw i8, ptr %i.d, i64 %.sroa.0.0
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bd, ptr nonnull readonly align 1 %i.bc, i64 range(i64 0, -9223372036854775808) %i.ay, i1 false), !alias.scope !5854
  %i.be = add nuw nsw i64 %i.ay, 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret i64 %i.be
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define { i64, i64 } @_RNvXNtCs5yxAJGbRKSL_4ring10arithmeticNtNtB2_16limb_slice_error14LimbSliceErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtNtNtB4_5error18len_mismatch_error16LenMismatchErrorE4from(i64 noundef %0) unnamed_addr #22 {
bb.a:
  %i.a = tail call fastcc { i64, i64 } @_RNvMNtNtCs5yxAJGbRKSL_4ring10arithmetic16limb_slice_errorNtB2_14LimbSliceError12len_mismatch(i64 noundef %0) #39
  ret { i64, i64 } %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXNtCs5yxAJGbRKSL_4ring2ecNtB2_5CurveNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
switch.lookup:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i8, ptr %i.a, align 8, !range !53, !noundef !15 ; 2 uses
  %i.c = zext nneg i8 %i.b to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtNtCs5yxAJGbRKSL_4ring2ec5CurveNtB6_5Debug3fmtBA_, i64 %i.c
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.d = zext nneg i8 %i.b to i64
  %switch.gep2 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtNtCs5yxAJGbRKSL_4ring2ec5CurveNtB6_5Debug3fmtBA_.551, i64 %i.d
  %switch.load3 = load ptr, ptr %switch.gep2, align 8
  %i.e = tail call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %switch.load3, i64 noundef %switch.ext)
  ret i1 %i.e
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXNtCs5yxAJGbRKSL_4ring5debugNtB2_6HexStrNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = tail call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @262, i64 noundef 1)
  br i1 %i.c, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !nonnull !15, !noundef !15 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i64, ptr %i.e, align 8, !noundef !15 ; 2 uses
  %.val = load ptr, ptr %1, align 8               ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1 = load ptr, ptr %i.g, align 8            ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.f
  %.not.i = icmp samesign eq i64 %i.f, 0
  br i1 %.not.i, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val), "nonnull"(ptr %.val1) ]
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %.lr.ph.i
  %.sroa.01.02.i = phi ptr [ %i.d, %.lr.ph.i ], [ %i.j, %bb.d ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !5857
  store ptr %.sroa.01.02.i, ptr %i.b, align 8, !noalias !5857, !captures !33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5857
  store ptr %i.b, ptr %i.a, align 8, !noalias !5857
  store ptr @_RNvXs1o_NtCs3oUPovFnLWP_4core3fmtRhNtB6_8LowerHex3fmtCs5yxAJGbRKSL_4ring, ptr %.sroa.46.0..sroa_idx.i, align 8, !noalias !5857
  %i.i = call noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr noundef nonnull %.val, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val1, ptr noundef nonnull @177, ptr noundef nonnull %i.a)
  br i1 %i.i, label %_RNvNtCs5yxAJGbRKSL_4ring5debug15write_hex_bytes.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.01.02.i, i64 1 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5857
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5857
  %.not3.i = icmp eq ptr %i.j, %i.h
  br i1 %.not3.i, label %.loopexit, label %bb.c

_RNvNtCs5yxAJGbRKSL_4ring5debug15write_hex_bytes.exit: ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5857
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5857
  br label %bb.e

.loopexit:                                        ; preds = %bb.d, %bb.b
  %i.k = call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @262, i64 noundef 1)
  br label %bb.e

bb.e:                                             ; preds = %_RNvNtCs5yxAJGbRKSL_4ring5debug15write_hex_bytes.exit, %.loopexit, %bb.a
  %.sroa.0.0 = phi i1 [ true, %_RNvNtCs5yxAJGbRKSL_4ring5debug15write_hex_bytes.exit ], [ true, %bb.a ], [ %i.k, %.loopexit ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXNtNtCs5yxAJGbRKSL_4ring3rsa12verificationNtB4_13RsaParametersNtNtB6_9signature21VerificationAlgorithm7verify_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4, ptr noalias nofree noundef nonnull readonly captures(none) %5, i64 noundef %6) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  %i.b = alloca [32 x i8], align 8                ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5878)
  %.not.i.i = icmp eq i64 %2, 0
  br i1 %.not.i.i, label %bb.r, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i8, ptr %1, align 1, !alias.scope !5878, !noalias !5879, !noundef !15 ; 2 uses
  %i.d = and i8 %i.c, 31
  %i.e = icmp ne i8 %i.d, 31
  %i.f = icmp ne i64 %2, 1
  %or.cond.i.i.i.i.i = and i1 %i.f, %i.e
  br i1 %or.cond.i.i.i.i.i, label %bb.c, label %bb.r

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.h = load i8, ptr %i.g, align 1, !alias.scope !5878, !noalias !5879, !noundef !15 ; 3 uses
  %i.i = icmp sgt i8 %i.h, -1
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = zext nneg i8 %i.h to i64
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  switch i8 %i.h, label %bb.r [
    i8 -127, label %bb.g
    i8 -126, label %bb.h
  ]

bb.f:                                             ; preds = %bb.k, %bb.j, %bb.d
  %i.k = phi i64 [ 2, %bb.d ], [ 3, %bb.j ], [ 4, %bb.k ] ; 2 uses
  %.sroa.019.0.i.i.i.i.i.i = phi i64 [ %i.j, %bb.d ], [ %i.r, %bb.j ], [ %i.z, %bb.k ] ; 2 uses
  %i.l = add nuw nsw i64 %.sroa.019.0.i.i.i.i.i.i, %i.k ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp ule i64 %i.l, %2
  %.not.i.i.i.i.i = icmp eq i8 %i.c, 48
  %or.cond17.i.i = and i1 %.not.i.i.i.i.i, %.not.i.i.i.i.i.i.i
  br i1 %or.cond17.i.i, label %bb.l, label %bb.r, !prof !39

bb.g:                                             ; preds = %bb.e
  %i.m = icmp ugt i64 %2, 2
  br i1 %i.m, label %bb.i, label %bb.r

bb.h:                                             ; preds = %bb.e
  %i.n = icmp ugt i64 %2, 3
  br i1 %i.n, label %bb.k, label %bb.r

bb.i:                                             ; preds = %bb.g
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.p = load i8, ptr %i.o, align 1, !alias.scope !5878, !noalias !5879, !noundef !15 ; 2 uses
  %i.q = icmp sgt i8 %i.p, -1
  br i1 %i.q, label %bb.r, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.r = zext i8 %i.p to i64
  br label %bb.f

bb.k:                                             ; preds = %bb.h
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.t = load i8, ptr %i.s, align 1, !alias.scope !5878, !noalias !5879, !noundef !15 ; 2 uses
  %i.u = zext i8 %i.t to i64
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.w = load i8, ptr %i.v, align 1, !alias.scope !5878, !noalias !5879, !noundef !15
  %i.x = zext i8 %i.w to i64
  %i.y = shl nuw nsw i64 %i.u, 8
  %i.z = or disjoint i64 %i.y, %i.x
  %i.aa = icmp eq i8 %i.t, 0
  br i1 %i.aa, label %bb.r, label %bb.f

bb.l:                                             ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 %i.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5880
  store ptr %i.ab, ptr %i.a, align 8, !noalias !5880
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store i64 %.sroa.019.0.i.i.i.i.i.i, ptr %i.ac, align 8, !noalias !5880
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i64 0, ptr %i.ad, align 8, !noalias !5880
  %i.ae = call { ptr, i64 } @_RNvNtNtCs5yxAJGbRKSL_4ring2io3der19nonnegative_integer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a), !noalias !5881 ; 2 uses
  %i.af = extractvalue { ptr, i64 } %i.ae, 0      ; 2 uses
  %i.ag = extractvalue { ptr, i64 } %i.ae, 1
  %i.ah = icmp eq ptr %i.af, null
  br i1 %i.ah, label %_RNCNvNtCs5yxAJGbRKSL_4ring3rsa16parse_public_key0B5_.exit.thread12.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ai = call { ptr, i64 } @_RNvNtNtCs5yxAJGbRKSL_4ring2io3der19nonnegative_integer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a), !noalias !5881 ; 2 uses
  %i.aj = extractvalue { ptr, i64 } %i.ai, 0      ; 2 uses
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %_RNCNvNtCs5yxAJGbRKSL_4ring3rsa16parse_public_key0B5_.exit.thread12.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.al = load i64, ptr %i.ad, align 8, !noalias !5880, !noundef !15
  %i.am = load i64, ptr %i.ac, align 8, !noalias !5880, !noundef !15
  %i.an = icmp eq i64 %i.al, %i.am
  br i1 %i.an, label %bb.o, label %_RNCNvNtCs5yxAJGbRKSL_4ring3rsa16parse_public_key0B5_.exit.thread12.i.i

_RNCNvNtCs5yxAJGbRKSL_4ring3rsa16parse_public_key0B5_.exit.thread12.i.i: ; preds = %bb.n, %bb.m, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5880
  br label %bb.r

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5880
  %i.ao = icmp eq i64 %i.l, %2
  br i1 %i.ao, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.ap = extractvalue { ptr, i64 } %i.ai, 1
  store ptr %i.af, ptr %i.b, align 8
  %.sroa.54.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.ag, ptr %.sroa.54.0..sroa_idx, align 8
  %.sroa.65.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.aj, ptr %.sroa.65.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %i.ap, ptr %.sroa.7.0..sroa_idx, align 8
  %i.aq = load atomic i32, ptr @_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags8FEATURES acquire, align 4
  %.not.i.i1 = icmp eq i32 %i.aq, 0
  br i1 %.not.i.i1, label %bb.q, label %_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags11get_or_init.exit, !prof !16

bb.q:                                             ; preds = %bb.p
  tail call fastcc void @_RINvMNtNtNtCs5yxAJGbRKSL_4ring8polyfill9once_cell4raceINtB3_14OnceNonZeroU32NtB3_14AcquireReleaseE4initNCNvNtNtNtB9_3cpu6x86_6412featureflags11get_or_init0EB9_() #39
  br label %_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags11get_or_init.exit

_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags11get_or_init.exit: ; preds = %bb.p, %bb.q
  %i.ar = call noundef zeroext i1 @_RNvNtNtCs5yxAJGbRKSL_4ring3rsa12verification6verify(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %5, i64 noundef %6)
  br label %bb.r

bb.r:                                             ; preds = %bb.o, %bb.b, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.k, %_RNCNvNtCs5yxAJGbRKSL_4ring3rsa16parse_public_key0B5_.exit.thread12.i.i, %bb.a, %_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags11get_or_init.exit
  %.sroa.0.0 = phi i1 [ %i.ar, %_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags11get_or_init.exit ], [ true, %bb.a ], [ true, %_RNCNvNtCs5yxAJGbRKSL_4ring3rsa16parse_public_key0B5_.exit.thread12.i.i ], [ true, %bb.k ], [ true, %bb.i ], [ true, %bb.h ], [ true, %bb.g ], [ true, %bb.f ], [ true, %bb.e ], [ true, %bb.b ], [ true, %bb.o ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXNtNtCs5yxAJGbRKSL_4ring4aead4quicNtB2_19HeaderProtectionKeyINtNtCs3oUPovFnLWP_4core7convert4FromINtNtB6_4hkdf3OkmRNtB2_9AlgorithmEE4from(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([264 x i8]) align 8 captures(none) dereferenceable(264) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
  %i.b = alloca [256 x i8], align 8               ; 6 uses
  %i.c = alloca [32 x i8], align 1                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.c, i8 0, i64 32, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !15, !align !17, !noundef !15 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load i64, ptr %i.f, align 8, !noundef !15 ; 4 uses
  %i.h = icmp ult i64 %i.g, 33
  br i1 %i.h, label %bb.c, label %bb.b, !prof !36

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.g, i64 noundef 32, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @265) #41
  unreachable

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5891)
  %i.i = load ptr, ptr %1, align 8, !alias.scope !5891, !nonnull !15, !align !17, !noundef !15
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !5891, !nonnull !15, !align !17, !noundef !15
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.m = load i64, ptr %i.l, align 8, !alias.scope !5891, !noundef !15
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !5891, !noundef !15
  %i.p = call noundef zeroext i1 @_RNvNtCs5yxAJGbRKSL_4ring4hkdf8fill_okm(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(160) %i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.k, i64 noundef %i.m, ptr noalias nofree noundef nonnull %i.c, i64 noundef range(i64 0, 33) %i.g, i64 noundef %i.o), !noalias !5891
  br i1 %i.p, label %bb.d, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtNtCs5yxAJGbRKSL_4ring5error11unspecified11UnspecifiedE6unwrapBO_.exit, !prof !16

bb.d:                                             ; preds = %bb.c
  call void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @72, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @74, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @263) #41
  unreachable
end_hunk_3
