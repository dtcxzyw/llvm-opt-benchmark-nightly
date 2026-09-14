Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/typst-rs/original/typst-bb5ff34a6deedbbf.typst.1e21bb3d3a105566-cgu.0?download=true
inline.NumInlined: 451
inline.NumDeleted: 242
begin_hunk_0_@_RINvXsF_NtCs5PEMdK7bMAG_12typst_syntax7packageNtB6_11PackageSpecNtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECs2AodJlUx5rK_5typst:bb.a
  %i.gg = load i64, ptr %i.gf, align 8, !alias.scope !197, !noundef !6
  %i.gh = add i64 %i.gg, %i.fx                    ; 2 uses
  %i.gi = tail call noundef i64 @llvm.fshl.i64(i64 %i.fx, i64 %i.fx, i64 16)
  %i.gj = xor i64 %i.gh, %i.gi                    ; 3 uses
  %i.gk = add i64 %i.gj, %i.ge                    ; 2 uses
  %i.gl = tail call noundef i64 @llvm.fshl.i64(i64 %i.gj, i64 %i.gj, i64 21)
  %i.gm = xor i64 %i.gl, %i.gk
  store i64 %i.gm, ptr %i.fv, align 8, !alias.scope !197
  %i.gn = add i64 %i.gh, %i.gd                    ; 3 uses
  %i.go = tail call noundef i64 @llvm.fshl.i64(i64 %i.gd, i64 %i.gd, i64 17)
  %i.gp = xor i64 %i.gn, %i.go
  store i64 %i.gp, ptr %i.fz, align 8, !alias.scope !197
  %i.gq = tail call noundef i64 @llvm.fshl.i64(i64 %i.gn, i64 %i.gn, i64 32)
  store i64 %i.gq, ptr %i.gf, align 8, !alias.scope !197
  %i.gr = xor i64 %i.gk, %i.ft
  store i64 %i.gr, ptr %1, align 8, !alias.scope !196
  %i.gs = add i64 %.sink.i.i6, -4
  %i.gt = shl nuw nsw i64 %i.fp, 3
  %i.gu = lshr i64 %i.fn, %i.gt
  store i64 %i.gu, ptr %i.q, align 8, !alias.scope !196
  br label %_RNvXs9_NtCs83m0le5ggt2_9siphasher6sip128NtB5_11SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher9write_u32.exit9

bb.k:                                             ; preds = %_RNvXs9_NtCs83m0le5ggt2_9siphasher6sip128NtB5_11SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher9write_u32.exit7
  %i.gv = add i64 %.sink.i.i6, 4
  br label %_RNvXs9_NtCs83m0le5ggt2_9siphasher6sip128NtB5_11SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher9write_u32.exit9

_RNvXs9_NtCs83m0le5ggt2_9siphasher6sip128NtB5_11SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher9write_u32.exit9: ; preds = %bb.j, %bb.k
  %.sink.i.i8 = phi i64 [ %i.gv, %bb.k ], [ %i.gs, %bb.j ]
  store i64 %.sink.i.i8, ptr %i.k, align 8, !alias.scope !196
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvXst_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB6_4NodeNtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash12812StableHasherECs2AodJlUx5rK_5typst(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1) unnamed_addr #4 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [4 x i8], align 4                 ; 4 uses
  %i.c = alloca [4 x i8], align 4                 ; 4 uses
  %i.d = alloca [1 x i8], align 1                 ; 4 uses
  %i.e = alloca [1 x i8], align 1                 ; 4 uses
  %i.f = alloca [1 x i8], align 1                 ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [1 x i8], align 1                 ; 4 uses
  %i.i = alloca [1 x i8], align 1                 ; 4 uses
  %i.j = alloca [1 x i8], align 1                 ; 4 uses
  %i.k = alloca [1 x i8], align 1                 ; 4 uses
  %i.l = alloca [1 x i8], align 1                 ; 4 uses
  %i.m = alloca [1 x i8], align 1                 ; 4 uses
  %i.n = alloca [1 x i8], align 1                 ; 4 uses
  %i.o = load i8, ptr %0, align 8, !range !264, !noundef !6 ; 2 uses
  %i.p = zext nneg i8 %i.o to i64
  tail call void @_RNvXNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash128NtB2_12StableHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher11write_usize(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1, i64 noundef range(i64 0, 4) %i.p)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  switch i8 %i.o, label %default.unreachable7 [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
  ]

default.unreachable7:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 23
  %i.s = load i8, ptr %i.r, align 1, !alias.scope !265, !noundef !6 ; 2 uses
  %.not.i = icmp sgt i8 %i.s, -1                  ; 2 uses
  %i.t = and i8 %i.s, 127
  %i.u = zext nneg i8 %i.t to i64
  %i.v = load ptr, ptr %i.q, align 8, !alias.scope !265, !nonnull !6
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = load i64, ptr %i.w, align 8, !alias.scope !265
  %.sroa.3.0.i = select i1 %.not.i, i64 %i.x, i64 %i.u
  %.sroa.0.0.i = select i1 %.not.i, ptr %i.v, ptr %i.q
  tail call void @_RNvXNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash128NtB2_12StableHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i, i64 noundef %.sroa.3.0.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !266
  store i8 -1, ptr %i.n, align 1, !noalias !266
  call void @_RNvXNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash128NtB2_12StableHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.n, i64 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !266
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.z = load i8, ptr %i.y, align 1, !range !267, !noundef !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !268
  store i8 %i.z, ptr %i.m, align 1, !noalias !268
  call void @_RNvXNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash128NtB2_12StableHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.m, i64 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !268
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.aa = load ptr, ptr %i.q, align 8, !nonnull !6, !noundef !6 ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !269)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  %i.ac = load i64, ptr %i.ab, align 8, !alias.scope !269, !noalias !270, !noundef !6
  tail call void @_RNvXNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash128NtB2_12StableHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher11write_usize(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1, i64 noundef %i.ac), !noalias !269, !inline_history !210
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 48
  %i.ae = load i64, ptr %i.ad, align 8, !alias.scope !269, !noalias !270, !noundef !6
  tail call void @_RNvXNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash128NtB2_12StableHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher11write_usize(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1, i64 noundef %i.ae), !noalias !269, !inline_history !210
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 64
  %i.ag = load i8, ptr %i.af, align 8, !range !10, !alias.scope !269, !noalias !270, !noundef !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !271
  store i8 %i.ag, ptr %i.e, align 1, !noalias !271
  call void @_RNvXNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash128NtB2_12StableHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.e, i64 noundef 1), !noalias !269
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !271
  %i.ah = getelementptr inbounds nuw i8, ptr %i.aa, i64 65
  %i.ai = load i8, ptr %i.ah, align 1, !range !10, !alias.scope !269, !noalias !270, !noundef !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !272
  store i8 %i.ai, ptr %i.f, align 1, !noalias !272
  call void @_RNvXNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash128NtB2_12StableHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.f, i64 noundef 1), !noalias !269
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !272
  %i.aj = getelementptr inbounds nuw i8, ptr %i.aa, i64 56
  %i.ak = load i64, ptr %i.aj, align 8, !alias.scope !269, !noalias !270, !noundef !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !273
  store i64 %i.ak, ptr %i.g, align 8, !noalias !273
  call void @_RNvXNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash128NtB2_12StableHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.g, i64 noundef 8), !noalias !269
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !273
  %i.al = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.am = load ptr, ptr %i.al, align 8, !alias.scope !269, !noalias !270, !nonnull !6, !noundef !6 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %i.ao = load i64, ptr %i.an, align 8, !alias.scope !269, !noalias !270, !noundef !6 ; 3 uses
  call void @_RNvXNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash128NtB2_12StableHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher11write_usize(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1, i64 noundef %i.ao), !noalias !269
  %.idx = shl nuw nsw i64 %i.ao, 5
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 %.idx
  %i.aq = icmp eq i64 %i.ao, 0
  br i1 %i.aq, label %_RINvYNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeNtNtCs3oUPovFnLWP_4core4hash4Hash10hash_sliceNtNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash12812StableHasherECs2AodJlUx5rK_5typst.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %.lr.ph
  %.sroa.0.0.i26 = phi ptr [ %i.ar, %.lr.ph ], [ %i.am, %bb.c ] ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i26, i64 32 ; 2 uses
  call fastcc void @_RINvXst_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB6_4NodeNtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash12812StableHasherECs2AodJlUx5rK_5typst(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.0.0.i26, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1) #30, !noalias !269, !inline_history !217
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i26, i64 24
  %i.at = load i64, ptr %i.as, align 8, !range !11, !alias.scope !274, !noalias !275, !noundef !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !276
  store i64 %i.at, ptr %i.a, align 8, !noalias !276
  call void @_RNvXNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash128NtB2_12StableHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 8), !noalias !269
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !276
  %i.au = icmp eq ptr %i.ar, %i.ap
  br i1 %i.au, label %_RINvYNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeNtNtCs3oUPovFnLWP_4core4hash4Hash10hash_sliceNtNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash12812StableHasherECs2AodJlUx5rK_5typst.exit, label %.lr.ph

_RINvYNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeNtNtCs3oUPovFnLWP_4core4hash4Hash10hash_sliceNtNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash12812StableHasherECs2AodJlUx5rK_5typst.exit: ; preds = %.lr.ph, %bb.c
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.aw = load i8, ptr %i.av, align 1, !range !267, !noundef !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !277
  store i8 %i.aw, ptr %i.l, align 1, !noalias !277
  call void @_RNvXNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash128NtB2_12StableHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.l, i64 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !277
  br label %bb.g

bb.d:                                             ; preds = %bb.a
  %i.ax = load ptr, ptr %i.q, align 8, !nonnull !6, !noundef !6 ; 8 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !278)
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 32 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 47
  %i.bb = load i8, ptr %i.ba, align 1, !alias.scope !279, !noalias !280, !noundef !6 ; 2 uses
  %.not.i.i = icmp sgt i8 %i.bb, -1               ; 2 uses
  %i.bc = and i8 %i.bb, 127
  %i.bd = zext nneg i8 %i.bc to i64
  %i.be = load ptr, ptr %i.az, align 8, !alias.scope !279, !noalias !280, !nonnull !6
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ax, i64 40
  %i.bg = load i64, ptr %i.bf, align 8, !alias.scope !279, !noalias !280
  %.sroa.3.0.i.i = select i1 %.not.i.i, i64 %i.bg, i64 %i.bd
  %.sroa.0.0.i.i = select i1 %.not.i.i, ptr %i.be, ptr %i.az
  tail call void @_RNvXNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash128NtB2_12StableHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i.i, i64 noundef %.sroa.3.0.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !281
  store i8 -1, ptr %i.k, align 1, !noalias !281
  call void @_RNvXNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash128NtB2_12StableHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.k, i64 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !281
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ax, i64 48 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ax, i64 63
  %i.bj = load i8, ptr %i.bi, align 1, !alias.scope !282, !noalias !280, !noundef !6 ; 2 uses
  %.not.i1.i = icmp sgt i8 %i.bj, -1              ; 2 uses
  %i.bk = and i8 %i.bj, 127
  %i.bl = zext nneg i8 %i.bk to i64
  %i.bm = load ptr, ptr %i.bh, align 8, !alias.scope !282, !noalias !280, !nonnull !6
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ax, i64 56
  %i.bo = load i64, ptr %i.bn, align 8, !alias.scope !282, !noalias !280
  %.sroa.3.0.i2.i = select i1 %.not.i1.i, i64 %i.bo, i64 %i.bl
  %.sroa.0.0.i3.i = select i1 %.not.i1.i, ptr %i.bm, ptr %i.bh
  call void @_RNvXNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash128NtB2_12StableHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i3.i, i64 noundef %.sroa.3.0.i2.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !283
  store i8 -1, ptr %i.j, align 1, !noalias !283
  call void @_RNvXNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash128NtB2_12StableHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.j, i64 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !283
  %i.bp = load ptr, ptr %i.ay, align 8, !alias.scope !278, !noalias !280, !nonnull !6, !noundef !6
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.br = load i64, ptr %i.bq, align 8, !alias.scope !278, !noalias !280, !noundef !6 ; 2 uses
  call void @_RNvXNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash128NtB2_12StableHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher11write_usize(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1, i64 noundef %i.br)
  call fastcc void @_RINvYTNtNtCsakL8LGkl72C_4ecow6string9EcoStringINtNtCs3oUPovFnLWP_4core6option6OptionNtNtCs5PEMdK7bMAG_12typst_syntax4span8SubRangeEENtNtBN_4hash4Hash10hash_sliceNtNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash12812StableHasherECs2AodJlUx5rK_5typst(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.bp, i64 noundef %i.br, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1)
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.bt = load i8, ptr %i.bs, align 1, !range !267, !noundef !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !284
  store i8 %i.bt, ptr %i.i, align 1, !noalias !284
  call void @_RNvXNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash128NtB2_12StableHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.i, i64 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !284
  br label %bb.g

bb.e:                                             ; preds = %bb.a
  %i.bu = load ptr, ptr %i.q, align 8, !nonnull !6, !noundef !6 ; 8 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  tail call fastcc void @_RINvXst_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB6_4NodeNtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash12812StableHasherECs2AodJlUx5rK_5typst(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.bv, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1) #30, !inline_history !247
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bu, i64 56 ; 2 uses
  %i.bx = load i32, ptr %i.bw, align 8, !alias.scope !285, !noalias !286, !noundef !6 ; 2 uses
  %i.by = icmp ne i32 %i.bx, 0
  %i.bz = zext i1 %i.by to i64
  tail call void @_RNvXNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash128NtB2_12StableHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher11write_usize(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1, i64 noundef range(i64 0, 4) %i.bz)
  %.not.i1 = icmp eq i32 %i.bx, 0
  br i1 %.not.i1, label %_RINvXsX_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB6_14WarningWrapperNtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash12812StableHasherECs2AodJlUx5rK_5typst.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bu, i64 60
  %i.cb = load i32, ptr %i.ca, align 4, !alias.scope !285, !noalias !286, !noundef !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !287
  store i32 %i.cb, ptr %i.b, align 4, !noalias !287
  call void @_RNvXNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash128NtB2_12StableHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef 4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !287
  %i.cc = load i32, ptr %i.bw, align 8, !range !288, !alias.scope !285, !noalias !286, !noundef !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !289
  store i32 %i.cc, ptr %i.c, align 4, !noalias !289
  call void @_RNvXNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash128NtB2_12StableHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef 4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !289
  br label %_RINvXsX_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB6_14WarningWrapperNtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash12812StableHasherECs2AodJlUx5rK_5typst.exit

_RINvXsX_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB6_14WarningWrapperNtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash12812StableHasherECs2AodJlUx5rK_5typst.exit: ; preds = %bb.e, %bb.f
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bu, i64 64 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bu, i64 79
  %i.cf = load i8, ptr %i.ce, align 1, !alias.scope !290, !noalias !286, !noundef !6 ; 2 uses
  %.not.i3 = icmp sgt i8 %i.cf, -1                ; 2 uses
  %i.cg = and i8 %i.cf, 127
  %i.ch = zext nneg i8 %i.cg to i64
  %i.ci = load ptr, ptr %i.cd, align 8, !alias.scope !290, !noalias !286, !nonnull !6
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bu, i64 72
  %i.ck = load i64, ptr %i.cj, align 8, !alias.scope !290, !noalias !286
  %.sroa.3.0.i4 = select i1 %.not.i3, i64 %i.ck, i64 %i.ch
  %.sroa.0.0.i5 = select i1 %.not.i3, ptr %i.ci, ptr %i.cd
  call void @_RNvXNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash128NtB2_12StableHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i5, i64 noundef %.sroa.3.0.i4)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !291
  store i8 -1, ptr %i.d, align 1, !noalias !291
  call void @_RNvXNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash128NtB2_12StableHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.d, i64 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !291
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bu, i64 40
  %i.cm = load ptr, ptr %i.cl, align 8, !alias.scope !285, !noalias !286, !nonnull !6, !noundef !6
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bu, i64 48
  %i.co = load i64, ptr %i.cn, align 8, !alias.scope !285, !noalias !286, !noundef !6 ; 2 uses
  call void @_RNvXNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash128NtB2_12StableHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher11write_usize(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1, i64 noundef %i.co)
  call fastcc void @_RINvYTNtNtCsakL8LGkl72C_4ecow6string9EcoStringINtNtCs3oUPovFnLWP_4core6option6OptionNtNtCs5PEMdK7bMAG_12typst_syntax4span8SubRangeEENtNtBN_4hash4Hash10hash_sliceNtNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash12812StableHasherECs2AodJlUx5rK_5typst(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.cm, i64 noundef %i.co, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1), !inline_history !247
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.cq = load i8, ptr %i.cp, align 1, !range !267, !noundef !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !292
  store i8 %i.cq, ptr %i.h, align 1, !noalias !292
  call void @_RNvXNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash128NtB2_12StableHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.h, i64 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !292
  br label %bb.g

bb.g:                                             ; preds = %_RINvXsX_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB6_14WarningWrapperNtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash12812StableHasherECs2AodJlUx5rK_5typst.exit, %bb.d, %_RINvYNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeNtNtCs3oUPovFnLWP_4core4hash4Hash10hash_sliceNtNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash12812StableHasherECs2AodJlUx5rK_5typst.exit, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvYTNtNtCsakL8LGkl72C_4ecow6string9EcoStringINtNtCs3oUPovFnLWP_4core6option6OptionNtNtCs5PEMdK7bMAG_12typst_syntax4span8SubRangeEENtNtBN_4hash4Hash10hash_sliceNtNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash12812StableHasherECs2AodJlUx5rK_5typst(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %0, i64 noundef range(i64 0, 384307168202282326) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  %i.b = alloca [4 x i8], align 4                 ; 4 uses
  %i.c = alloca [1 x i8], align 1                 ; 4 uses
  %.idx = mul nuw nsw i64 %1, 24
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %.idx
  %i.e = icmp eq i64 %1, 0
  br i1 %i.e, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RINvXsl_NtNtCs3oUPovFnLWP_4core4hash5implsTNtNtCsakL8LGkl72C_4ecow6string9EcoStringINtNtBa_6option6OptionNtNtCs5PEMdK7bMAG_12typst_syntax4span8SubRangeEENtB8_4Hash4hashNtNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash12812StableHasherECs2AodJlUx5rK_5typst.exit
  %.sroa.0.03 = phi ptr [ %i.f, %_RINvXsl_NtNtCs3oUPovFnLWP_4core4hash5implsTNtNtCsakL8LGkl72C_4ecow6string9EcoStringINtNtBa_6option6OptionNtNtCs5PEMdK7bMAG_12typst_syntax4span8SubRangeEENtB8_4Hash4hashNtNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash12812StableHasherECs2AodJlUx5rK_5typst.exit ], [ %0, %bb.a ] ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.0.03, i64 24 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !314)
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.03, i64 16
  call void @llvm.experimental.noalias.scope.decl(metadata !315)
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.0.03, i64 15
  %i.i = load i8, ptr %i.h, align 1, !alias.scope !316, !noalias !317, !noundef !6 ; 2 uses
  %.not.i.i.i = icmp sgt i8 %i.i, -1              ; 2 uses
  %i.j = and i8 %i.i, 127
  %i.k = zext nneg i8 %i.j to i64
  %i.l = load ptr, ptr %.sroa.0.03, align 8, !alias.scope !316, !noalias !317, !nonnull !6
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.0.03, i64 8
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !316, !noalias !317
  %.sroa.3.0.i.i.i = select i1 %.not.i.i.i, i64 %i.n, i64 %i.k
  %.sroa.0.0.i.i.i = select i1 %.not.i.i.i, ptr %i.l, ptr %.sroa.0.03
  call void @_RNvXNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash128NtB2_12StableHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i.i.i, i64 noundef %.sroa.3.0.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !318
  store i8 -1, ptr %i.c, align 1, !noalias !318
  call void @_RNvXNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash128NtB2_12StableHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !318
  %.val.i = load i32, ptr %i.g, align 8, !alias.scope !314, !noalias !319, !noundef !6 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.0.03, i64 20
  %.val1.i = load i32, ptr %i.o, align 4, !alias.scope !314, !noalias !319
  %i.p = icmp ne i32 %.val.i, 0
  %i.q = zext i1 %i.p to i64
  call void @_RNvXNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash128NtB2_12StableHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher11write_usize(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %2, i64 noundef range(i64 0, 4) %i.q)
  %.not.i.i = icmp eq i32 %.val.i, 0
  br i1 %.not.i.i, label %_RINvXsl_NtNtCs3oUPovFnLWP_4core4hash5implsTNtNtCsakL8LGkl72C_4ecow6string9EcoStringINtNtBa_6option6OptionNtNtCs5PEMdK7bMAG_12typst_syntax4span8SubRangeEENtB8_4Hash4hashNtNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash12812StableHasherECs2AodJlUx5rK_5typst.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !320
  store i32 %.val1.i, ptr %i.b, align 4, !noalias !320
  call void @_RNvXNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash128NtB2_12StableHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef 4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !320
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !321
  store i32 %.val.i, ptr %i.a, align 4, !noalias !321
  call void @_RNvXNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash128NtB2_12StableHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !321
  br label %_RINvXsl_NtNtCs3oUPovFnLWP_4core4hash5implsTNtNtCsakL8LGkl72C_4ecow6string9EcoStringINtNtBa_6option6OptionNtNtCs5PEMdK7bMAG_12typst_syntax4span8SubRangeEENtB8_4Hash4hashNtNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash12812StableHasherECs2AodJlUx5rK_5typst.exit

_RINvXsl_NtNtCs3oUPovFnLWP_4core4hash5implsTNtNtCsakL8LGkl72C_4ecow6string9EcoStringINtNtBa_6option6OptionNtNtCs5PEMdK7bMAG_12typst_syntax4span8SubRangeEENtB8_4Hash4hashNtNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash12812StableHasherECs2AodJlUx5rK_5typst.exit: ; preds = %.lr.ph, %bb.b
  %i.r = icmp eq ptr %i.f, %i.d
  br i1 %i.r, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_RINvXsl_NtNtCs3oUPovFnLWP_4core4hash5implsTNtNtCsakL8LGkl72C_4ecow6string9EcoStringINtNtBa_6option6OptionNtNtCs5PEMdK7bMAG_12typst_syntax4span8SubRangeEENtB8_4Hash4hashNtNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash12812StableHasherECs2AodJlUx5rK_5typst.exit, %bb.a
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtB8_4Once15call_once_forceNCNvMNtBa_9lazy_lockINtB1a_8LazyLockNtNtCsdaEETE4DqmE_13typst_library8routines8RoutinesE5force0E0Cs2AodJlUx5rK_5typst(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree noundef nonnull readonly align 4 captures(none) %1) unnamed_addr #4 {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !6, !align !12, !noundef !6 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !align !12, !noundef !6 ; 3 uses
  store ptr null, ptr %i.b, align 8
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.d, label %bb.b, !prof !9

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %1, i64 4
  %.val = load i8, ptr %i.d, align 4, !range !10, !noundef !6
  %i.e = trunc nuw i8 %.val to i1
  br i1 %i.e, label %bb.c, label %_RNCNvMNtNtCsaL1QbXo9JQH_3std4sync9lazy_lockINtB4_8LazyLockNtNtCsdaEETE4DqmE_13typst_library8routines8RoutinesE5force0Cs2AodJlUx5rK_5typst.exit, !prof !9

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtNtCsaL1QbXo9JQH_3std4sync9lazy_lock14panic_poisoned() #29
  unreachable

_RNCNvMNtNtCsaL1QbXo9JQH_3std4sync9lazy_lockINtB4_8LazyLockNtNtCsdaEETE4DqmE_13typst_library8routines8RoutinesE5force0Cs2AodJlUx5rK_5typst.exit: ; preds = %bb.b
  %i.f = load ptr, ptr %i.c, align 8, !nonnull !6, !noundef !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void %i.f(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.a), !inline_history !322
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.c, ptr noundef nonnull align 8 dereferenceable(64) %i.a, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #29
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNSNvYNCINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtBd_4Once15call_once_forceNCNvMNtBf_9lazy_lockINtB1f_8LazyLockNtNtCsdaEETE4DqmE_13typst_library8routines8RoutinesE5force0E0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTRNtBd_9OnceStateEE9call_once6vtableCs2AodJlUx5rK_5typst(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef nonnull readonly align 4 captures(none) %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !6, !align !12, !noundef !6 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !328)
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !328, !noalias !329, !align !12, !noundef !6 ; 3 uses
  store ptr null, ptr %i.b, align 8, !alias.scope !328, !noalias !329
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %bb.d, label %bb.b, !prof !9

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %1, i64 4
  %.val.i.i = load i8, ptr %i.d, align 4, !range !10, !noalias !330, !noundef !6
  %i.e = trunc nuw i8 %.val.i.i to i1
  br i1 %i.e, label %bb.c, label %_RNvYNCINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtBb_4Once15call_once_forceNCNvMNtBd_9lazy_lockINtB1d_8LazyLockNtNtCsdaEETE4DqmE_13typst_library8routines8RoutinesE5force0E0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTRNtBb_9OnceStateEE9call_onceCs2AodJlUx5rK_5typst.exit, !prof !9

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtNtCsaL1QbXo9JQH_3std4sync9lazy_lock14panic_poisoned() #29, !noalias !330
  unreachable

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #29, !noalias !330
  unreachable

_RNvYNCINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtBb_4Once15call_once_forceNCNvMNtBd_9lazy_lockINtB1d_8LazyLockNtNtCsdaEETE4DqmE_13typst_library8routines8RoutinesE5force0E0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTRNtBb_9OnceStateEE9call_onceCs2AodJlUx5rK_5typst.exit: ; preds = %bb.b
  %i.f = load ptr, ptr %i.c, align 8, !noalias !330, !nonnull !6, !noundef !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !330
  call void %i.f(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.a), !noalias !330, !inline_history !327
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.c, ptr noundef nonnull align 8 dereferenceable(64) %i.a, i64 64, i1 false), !noalias !330
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !330
  ret void
}

; Function Attrs: nonlazybind uwtable
define { ptr, i64 } @_RNvCs2AodJlUx5rK_5typst11deduplicate(ptr noundef nonnull %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [72 x i8], align 8                ; 12 uses
  %i.e = alloca [72 x i8], align 8                ; 4 uses
  %i.f = alloca [16 x i8], align 8                ; 7 uses
  %i.g = alloca [72 x i8], align 8                ; 4 uses
  %i.h = alloca [16 x i8], align 8                ; 7 uses
  %i.i = alloca [72 x i8], align 8                ; 4 uses
  %i.j = alloca [32 x i8], align 8                ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.j, ptr noundef nonnull align 8 dereferenceable(32) @13, i64 32, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !389)
  %.not.i.i.i = icmp eq ptr %0, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i, label %_RNvMs1_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE11make_uniqueCs2AodJlUx5rK_5typst.exit.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvMs5_BL_INtBL_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE9is_unique0ECs2AodJlUx5rK_5typst.exit.i.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvMs5_BL_INtBL_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE9is_unique0ECs2AodJlUx5rK_5typst.exit.i.i: ; preds = %bb.a
  %i.k = getelementptr inbounds i8, ptr %0, i64 -16
  %i.l = load atomic i64, ptr %i.k acquire, align 8, !noalias !390
  %i.m = icmp eq i64 %i.l, 1
  br i1 %i.m, label %_RNvMs1_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE11make_uniqueCs2AodJlUx5rK_5typst.exit.i, label %bb.b

bb.b:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvMs5_BL_INtBL_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE9is_unique0ECs2AodJlUx5rK_5typst.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !391
  store ptr inttoptr (i64 16 to ptr), ptr %i.h, align 8, !noalias !391
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 3 uses
  store i64 0, ptr %i.n, align 8, !noalias !391
  tail call void @llvm.experimental.noalias.scope.decl(metadata !392)
  %i.o = icmp eq i64 %1, 0
  br i1 %i.o, label %_RNvXsq_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEINtNtCs3oUPovFnLWP_4core7convert4FromRSBH_E4fromCs2AodJlUx5rK_5typst.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b
  invoke fastcc void @_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE7reserveCs2AodJlUx5rK_5typst(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.h, i64 noundef range(i64 0, 128102389400760776) %1)
          to label %.noexc.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !393

.noexc.i.i.i:                                     ; preds = %.lr.ph.i.i.i.i
  %.idx.i.i.i.i = mul nuw nsw i64 %1, 72
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 %.idx.i.i.i.i
  %i.q = load ptr, ptr %i.h, align 8, !alias.scope !392, !noalias !394, !nonnull !6 ; 3 uses
  %.promoted.i.i.i.i = load i64, ptr %i.n, align 8, !alias.scope !392, !noalias !394
  br label %bb.c

bb.c:                                             ; preds = %.noexc4.i.i.i, %.noexc.i.i.i
  %i.r = phi i64 [ %.promoted.i.i.i.i, %.noexc.i.i.i ], [ %i.u, %.noexc4.i.i.i ] ; 3 uses
  %.sroa.02.04.i.i.i.i = phi ptr [ %0, %.noexc.i.i.i ], [ %i.s, %.noexc4.i.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !395
  invoke fastcc void @_RNvXsE_NtCsdaEETE4DqmE_13typst_library4diagNtB5_16SourceDiagnosticNtNtCs3oUPovFnLWP_4core5clone5Clone5clone(ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %i.g, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %.sroa.02.04.i.i.i.i) #30
          to label %.noexc4.i.i.i unwind label %.loopexit.i.i.i, !noalias !390

.noexc4.i.i.i:                                    ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.02.04.i.i.i.i, i64 72 ; 2 uses
  %i.t = getelementptr inbounds nuw [72 x i8], ptr %i.q, i64 %i.r
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.t, ptr noundef nonnull align 8 dereferenceable(72) %i.g, i64 72, i1 false), !noalias !396
  %i.u = add i64 %i.r, 1                          ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !395
  %i.v = icmp eq ptr %i.s, %i.p
  br i1 %i.v, label %_RNvXsq_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEINtNtCs3oUPovFnLWP_4core7convert4FromRSBH_E4fromCs2AodJlUx5rK_5typst.exit.i.i, label %bb.c

.loopexit.i.i.i:                                  ; preds = %bb.c
  %lpad.loopexit.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

.loopexit.split-lp.i.i.i:                         ; preds = %.lr.ph.i.i.i.i
  %lpad.loopexit.split-lp.i.i.i = landingpad { ptr, i32 }
          cleanup
  %.val.pre.i.i.i = load ptr, ptr %i.h, align 8, !noalias !391
  %.val3.pre.i.i.i = load i64, ptr %i.n, align 8, !noalias !391
  br label %bb.d

bb.d:                                             ; preds = %.loopexit.split-lp.i.i.i, %.loopexit.i.i.i
  %.val3.i.i.i = phi i64 [ %i.r, %.loopexit.i.i.i ], [ %.val3.pre.i.i.i, %.loopexit.split-lp.i.i.i ]
  %.val.i.i.i = phi ptr [ %i.q, %.loopexit.i.i.i ], [ %.val.pre.i.i.i, %.loopexit.split-lp.i.i.i ]
  %lpad.phi.i.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i.i, %.loopexit.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i, %.loopexit.split-lp.i.i.i ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEECs2AodJlUx5rK_5typst(ptr nonnull %.val.i.i.i, i64 %.val3.i.i.i) #28
          to label %.body unwind label %bb.e, !noalias !393

bb.e:                                             ; preds = %bb.d
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #27, !noalias !393
  unreachable

_RNvXsq_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEINtNtCs3oUPovFnLWP_4core7convert4FromRSBH_E4fromCs2AodJlUx5rK_5typst.exit.i.i: ; preds = %.noexc4.i.i.i, %bb.b
  %i.x = phi i64 [ 0, %bb.b ], [ %i.u, %.noexc4.i.i.i ] ; 2 uses
  %i.y = phi ptr [ inttoptr (i64 16 to ptr), %bb.b ], [ %i.q, %.noexc4.i.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !391
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEECs2AodJlUx5rK_5typst(ptr nonnull %0, i64 %1)
          to label %_RNvMs1_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE11make_uniqueCs2AodJlUx5rK_5typst.exit.i unwind label %bb.f, !noalias !390

bb.f:                                             ; preds = %_RNvXsq_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEINtNtCs3oUPovFnLWP_4core7convert4FromRSBH_E4fromCs2AodJlUx5rK_5typst.exit.i.i
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %.body

_RNvMs1_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE11make_uniqueCs2AodJlUx5rK_5typst.exit.i: ; preds = %_RNvXsq_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEINtNtCs3oUPovFnLWP_4core7convert4FromRSBH_E4fromCs2AodJlUx5rK_5typst.exit.i.i, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvMs5_BL_INtBL_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE9is_unique0ECs2AodJlUx5rK_5typst.exit.i.i, %bb.a
  %.sroa.10.1 = phi i64 [ %1, %bb.a ], [ %1, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvMs5_BL_INtBL_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE9is_unique0ECs2AodJlUx5rK_5typst.exit.i.i ], [ %i.x, %_RNvXsq_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEINtNtCs3oUPovFnLWP_4core7convert4FromRSBH_E4fromCs2AodJlUx5rK_5typst.exit.i.i ] ; 17 uses
  %.sroa.0.1 = phi ptr [ inttoptr (i64 16 to ptr), %bb.a ], [ %0, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvMs5_BL_INtBL_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE9is_unique0ECs2AodJlUx5rK_5typst.exit.i.i ], [ %i.y, %_RNvXsq_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEINtNtCs3oUPovFnLWP_4core7convert4FromRSBH_E4fromCs2AodJlUx5rK_5typst.exit.i.i ] ; 19 uses
  %.not45.i = icmp eq i64 %1, 0
  br i1 %.not45.i, label %_RINvMs_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE6retainNCNvCs2AodJlUx5rK_5typst11deduplicate0EB1N_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RNvMs1_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE11make_uniqueCs2AodJlUx5rK_5typst.exit.i
  %.sroa.411.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.512.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.613.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sroa.7.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.aa = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.ac = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %exitcond.not.i39 = icmp eq i64 %.sroa.10.1, 0
end_hunk_0
begin_hunk_1_@_RNvCs2AodJlUx5rK_5typst22hint_invalid_main_file:bb.a
_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1O_8DiagSpanEE8capacity0ECs2AodJlUx5rK_5typst.exit.i38: ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  %.sroa.088.0.copyload = load ptr, ptr %i.s, align 8 ; 2 uses
  %.sroa.489.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(7) %.sroa.489.0..sroa_idx, i64 7, i1 false)
  %.sroa.590.0.copyload = load i8, ptr %.sroa.410.0..sroa_idx, align 1 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  invoke fastcc void @_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB6_6string9EcoStringNtBJ_8DiagSpanEE7reserveCs2AodJlUx5rK_5typst(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.aj, i64 noundef 1)
          to label %bb.v unwind label %bb.t, !inline_history !0

bb.u:                                             ; preds = %bb.t
  %i.bs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #27, !noalias !646, !inline_history !0
  unreachable

bb.v:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1O_8DiagSpanEE8capacity0ECs2AodJlUx5rK_5typst.exit.i38
  %i.bt = load ptr, ptr %i.aj, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.bu = load i64, ptr %i.ak, align 8, !noundef !6 ; 2 uses
  %i.bv = getelementptr inbounds nuw [32 x i8], ptr %i.bt, i64 %i.bu ; 5 uses
  store i64 1, ptr %i.bv, align 8, !noalias !647
  %.sroa.484.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  store i64 0, ptr %.sroa.484.0..sroa_idx, align 8, !noalias !647
  %.sroa.585.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  store ptr %.sroa.088.0.copyload, ptr %.sroa.585.0..sroa_idx, align 8, !noalias !647
  %.sroa.7.0..sroa_idx86 = getelementptr inbounds nuw i8, ptr %i.bv, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %.sroa.7.0..sroa_idx86, ptr noundef nonnull align 8 dereferenceable(7) %.sroa.7, i64 7, i1 false), !noalias !647
  %.sroa.787.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bv, i64 31
  store i8 %.sroa.590.0.copyload, ptr %.sroa.787.0..sroa_idx, align 1, !noalias !647
  %i.bw = add i64 %i.bu, 1                        ; 2 uses
  store i64 %i.bw, ptr %i.ak, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  br label %bb.n

bb.w:                                             ; preds = %bb.n
  call void @llvm.experimental.noalias.scope.decl(metadata !648)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !649
  %i.bx = load i64, ptr %i.bd, align 8, !range !7, !alias.scope !648, !noalias !650, !noundef !6
  %i.by = trunc nuw i64 %i.bx to i1               ; 2 uses
  br i1 %i.by, label %bb.x, label %bb.ag

bb.x:                                             ; preds = %bb.w
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  call void @llvm.experimental.noalias.scope.decl(metadata !651)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !652
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bd, i64 23
  %i.cb = load i8, ptr %i.ca, align 1, !alias.scope !653, !noalias !654, !noundef !6
  %.not.i.i46 = icmp sgt i8 %i.cb, -1
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %.val46.i.i = load ptr, ptr %i.bz, align 8, !alias.scope !653, !noalias !654 ; 5 uses
  %.val47.i.i = load i64, ptr %i.cc, align 8, !alias.scope !653, !noalias !654
  br i1 %.not.i.i46, label %bb.y, label %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs2AodJlUx5rK_5typst.exit.i.i

bb.y:                                             ; preds = %bb.x
  %.not.i.i.i.i = icmp eq ptr %.val46.i.i, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i.i, label %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs2AodJlUx5rK_5typst.exit.i.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cd = getelementptr inbounds i8, ptr %.val46.i.i, i64 -16
  %i.ce = atomicrmw add ptr %i.cd, i64 1 monotonic, align 8, !noalias !652
  %i.cf = icmp slt i64 %i.ce, 0
  br i1 %i.cf, label %bb.aa, label %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs2AodJlUx5rK_5typst.exit.i.i, !prof !9

bb.aa:                                            ; preds = %bb.z
  invoke fastcc void @_RINvNtCsakL8LGkl72C_4ecow3vec18ref_count_overflowhECs2AodJlUx5rK_5typst(ptr noundef nonnull %.val46.i.i) #25
          to label %.noexc48 unwind label %.thread126

.noexc48:                                         ; preds = %bb.aa
  unreachable

_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs2AodJlUx5rK_5typst.exit.i.i: ; preds = %bb.x, %bb.z, %bb.y
  %.sroa.06.0.i.i = phi ptr [ %.val46.i.i, %bb.z ], [ inttoptr (i64 16 to ptr), %bb.y ], [ %.val46.i.i, %bb.x ]
  store ptr %.sroa.06.0.i.i, ptr %i.k, align 8, !noalias !652
  %.sroa.58.0..sroa_idx9.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 %.val47.i.i, ptr %.sroa.58.0..sroa_idx9.i.i, align 8, !noalias !652
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bd, i64 39
  %i.ci = load i8, ptr %i.ch, align 1, !alias.scope !653, !noalias !654, !noundef !6
  %.not44.i.i = icmp sgt i8 %i.ci, -1
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bd, i64 32
  %.val.i.i47 = load ptr, ptr %i.cg, align 8, !alias.scope !653, !noalias !654 ; 5 uses
  %.val45.i.i = load i64, ptr %i.cj, align 8, !alias.scope !653, !noalias !654
  br i1 %.not44.i.i, label %bb.ab, label %_RNvXsB_NtCs5PEMdK7bMAG_12typst_syntax7packageNtB5_11PackageSpecNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i

bb.ab:                                            ; preds = %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs2AodJlUx5rK_5typst.exit.i.i
  %.not.i.i48.i.i = icmp eq ptr %.val.i.i47, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i48.i.i, label %_RNvXsB_NtCs5PEMdK7bMAG_12typst_syntax7packageNtB5_11PackageSpecNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ck = getelementptr inbounds i8, ptr %.val.i.i47, i64 -16
  %i.cl = atomicrmw add ptr %i.ck, i64 1 monotonic, align 8, !noalias !652
  %i.cm = icmp slt i64 %i.cl, 0
  br i1 %i.cm, label %bb.ad, label %_RNvXsB_NtCs5PEMdK7bMAG_12typst_syntax7packageNtB5_11PackageSpecNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i, !prof !9

bb.ad:                                            ; preds = %bb.ac
  invoke fastcc void @_RINvNtCsakL8LGkl72C_4ecow3vec18ref_count_overflowhECs2AodJlUx5rK_5typst(ptr noundef nonnull %.val.i.i47) #25
          to label %.noexc.i.i unwind label %bb.ae

.noexc.i.i:                                       ; preds = %bb.ad
  unreachable

bb.ae:                                            ; preds = %bb.ad
  %i.cn = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs2AodJlUx5rK_5typst(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.k) #28
          to label %.thread105 unwind label %bb.af, !noalias !652

bb.af:                                            ; preds = %bb.ae
  %i.co = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #27, !noalias !652
  unreachable

_RNvXsB_NtCs5PEMdK7bMAG_12typst_syntax7packageNtB5_11PackageSpecNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i: ; preds = %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs2AodJlUx5rK_5typst.exit.i.i, %bb.ac, %bb.ab
  %.sroa.027.0.i.i = phi ptr [ inttoptr (i64 16 to ptr), %bb.ab ], [ %.val.i.i47, %bb.ac ], [ %.val.i.i47, %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs2AodJlUx5rK_5typst.exit.i.i ]
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bd, i64 40
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.6.0..sroa_idx.i, ptr noundef nonnull readonly align 8 dereferenceable(12) %i.cp, i64 12, i1 false), !noalias !650
  %i.cq = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cq, ptr noundef nonnull align 8 dereferenceable(16) %i.k, i64 16, i1 false), !noalias !649
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !652
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store ptr %.sroa.027.0.i.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !649
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  store i64 %.val45.i.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !649
  br label %bb.ag

bb.ag:                                            ; preds = %bb.w, %_RNvXsB_NtCs5PEMdK7bMAG_12typst_syntax7packageNtB5_11PackageSpecNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i
  %storemerge.i = phi i64 [ 1, %_RNvXsB_NtCs5PEMdK7bMAG_12typst_syntax7packageNtB5_11PackageSpecNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i ], [ 0, %bb.w ]
  store i64 %storemerge.i, ptr %i.m, align 8, !noalias !649
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !649
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bd, i64 56
  invoke void @_RNvMs3_NtCs5PEMdK7bMAG_12typst_syntax4pathNtB5_11VirtualPath14with_extension(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.l, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.cr, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @9, i64 noundef 3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11)
          to label %bb.ak unwind label %bb.ah, !noalias !650

bb.ah:                                            ; preds = %bb.ag
  %i.cs = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.by, label %bb.ai, label %.thread105

bb.ai:                                            ; preds = %bb.ah
  %i.ct = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs5PEMdK7bMAG_12typst_syntax7package11PackageSpecECs2AodJlUx5rK_5typst(ptr noalias nofree noundef readonly align 8 dereferenceable(48) %i.ct)
          to label %.thread105 unwind label %bb.aj, !noalias !650

bb.aj:                                            ; preds = %bb.ai
  %i.cu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #27, !noalias !650
  unreachable

bb.ak:                                            ; preds = %bb.ag
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.p, ptr noundef nonnull align 8 dereferenceable(56) %i.m, i64 56, i1 false), !noalias !648
  %i.cv = getelementptr inbounds nuw i8, ptr %i.p, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cv, ptr noundef nonnull align 8 dereferenceable(16) %i.l, i64 16, i1 false), !noalias !648
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !649
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !649
  %i.cw = invoke noundef i16 @_RNvMNtCs5PEMdK7bMAG_12typst_syntax4pathNtB2_10RootedPath6intern(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(72) %i.p)
          to label %bb.al unwind label %.thread126 ; 3 uses

bb.al:                                            ; preds = %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.experimental.noalias.scope.decl(metadata !655)
  %i.cx = load ptr, ptr %0, align 8, !alias.scope !655, !noalias !656, !nonnull !6, !noundef !6 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cz = load ptr, ptr %i.cy, align 8, !alias.scope !655, !noalias !656, !nonnull !6, !align !12, !noundef !6 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.db = load ptr, ptr %i.da, align 8, !alias.scope !655, !noalias !656, !noundef !6 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.dd = load ptr, ptr %i.dc, align 8, !alias.scope !655, !noalias !656 ; 2 uses
  %.not.i = icmp eq ptr %i.db, null
  br i1 %.not.i, label %bb.cp, label %bb.am

bb.am:                                            ; preds = %bb.al
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dd) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !657
  %i.de = getelementptr inbounds nuw i8, ptr %i.cz, i64 48
  %i.df = load ptr, ptr %i.de, align 8, !invariant.load !6, !noalias !657, !nonnull !6
  invoke void %i.df(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.j, ptr noundef nonnull %i.cx, i16 noundef range(i16 1, 0) %i.cw) #30
          to label %.noexc53 unwind label %.thread126, !inline_history !452

.noexc53:                                         ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !657
  store i16 %i.cw, ptr %i.i, align 8, !noalias !657
  %.sroa.41.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  store i32 4, ptr %.sroa.41.0..sroa_idx.i, align 4, !noalias !657
  call void @llvm.experimental.noalias.scope.decl(metadata !658)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !659
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 25 uses
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 25 uses
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 25 uses
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %.sroa.12.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 48 ; 21 uses
  %.sroa.14.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 56 ; 26 uses
  %.sroa.15.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 64 ; 14 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !660)
  call void @llvm.experimental.noalias.scope.decl(metadata !661)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6.0..sroa_idx.i.i, i8 0, i64 40, i1 false), !noalias !659
  %i.dg = load i32, ptr %i.j, align 8, !range !5, !alias.scope !662, !noalias !663, !noundef !6 ; 7 uses
  %i.dh = icmp ne i32 %i.dg, -1                   ; 2 uses
  %i.di = zext i1 %i.dh to i64                    ; 2 uses
  store i64 8, ptr %.sroa.12.0..sroa_idx.i.i, align 8, !alias.scope !664, !noalias !665
  %i.dj = xor i64 %i.di, 110374107243891
  %i.dk = select i1 %i.dh, i64 -2243131504935184429, i64 -2243131504935184428 ; 2 uses
  %i.dl = call noundef i64 @llvm.fshl.i64(i64 %i.dj, i64 8387220255154660722, i64 16)
  %i.dm = xor i64 %i.dl, %i.dk                    ; 2 uses
  %i.dn = add i64 %i.dm, -2389206912058073146     ; 2 uses
  %i.do = call noundef i64 @llvm.fshl.i64(i64 %i.dm, i64 -8882027881020349520, i64 21)
  %i.dp = xor i64 %i.do, %i.dn                    ; 2 uses
  store i64 %i.dp, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !666, !noalias !665
  %i.dq = add nsw i64 %i.dk, 4148644332920354933  ; 2 uses
  %i.dr = xor i64 %i.dq, -2011800273400728795     ; 3 uses
  store i64 %i.dr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !666, !noalias !665
  %i.ds = call noundef i64 @llvm.fshl.i64(i64 %i.dq, i64 1905512827985170496, i64 32) ; 2 uses
  store i64 %i.ds, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !alias.scope !666, !noalias !665
  %i.dt = xor i64 %i.dn, %i.di                    ; 2 uses
  store i64 %i.dt, ptr %i.h, align 8, !alias.scope !664, !noalias !665
  %.not.i.i.i = icmp eq i32 %i.dg, -1
  br i1 %.not.i.i.i, label %bb.cn, label %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCs2AodJlUx5rK_5typst.exit.i.i.i.i

_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCs2AodJlUx5rK_5typst.exit.i.i.i.i: ; preds = %.noexc53
  call void @llvm.experimental.noalias.scope.decl(metadata !667)
  call void @llvm.experimental.noalias.scope.decl(metadata !668)
  %i.du = icmp ne i32 %i.dg, 11
  call void @llvm.assume(i1 %i.du)
  %i.dv = add nsw i32 %i.dg, -5
  %i.dw = icmp samesign ugt i32 %i.dg, 4
  %narrow.i.i.i.i = select i1 %i.dw, i32 %i.dv, i32 6 ; 2 uses
  %i.dx = zext nneg i32 %narrow.i.i.i.i to i64    ; 2 uses
  store i64 16, ptr %.sroa.12.0..sroa_idx.i.i, align 8, !alias.scope !669, !noalias !670
  %i.dy = xor i64 %i.dp, %i.dx                    ; 3 uses
  %i.dz = add nsw i64 %i.dt, %i.dr                ; 3 uses
  %i.ea = call noundef i64 @llvm.fshl.i64(i64 %i.dr, i64 -115655853030513824, i64 13)
  %i.eb = xor i64 %i.dz, %i.ea                    ; 3 uses
  %i.ec = call noundef i64 @llvm.fshl.i64(i64 %i.dz, i64 %i.dz, i64 32)
  %i.ed = add i64 %i.dy, %i.ds                    ; 2 uses
  %i.ee = call noundef i64 @llvm.fshl.i64(i64 %i.dy, i64 %i.dy, i64 16)
  %i.ef = xor i64 %i.ed, %i.ee                    ; 3 uses
  %i.eg = add i64 %i.ef, %i.ec                    ; 2 uses
  %i.eh = call noundef i64 @llvm.fshl.i64(i64 %i.ef, i64 %i.ef, i64 21)
  %i.ei = xor i64 %i.eh, %i.eg                    ; 3 uses
  store i64 %i.ei, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !671, !noalias !670
  %i.ej = add i64 %i.ed, %i.eb                    ; 3 uses
  %i.ek = call noundef i64 @llvm.fshl.i64(i64 %i.eb, i64 %i.eb, i64 17)
  %i.el = xor i64 %i.ej, %i.ek                    ; 7 uses
  store i64 %i.el, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !671, !noalias !670
  %i.em = call noundef i64 @llvm.fshl.i64(i64 %i.ej, i64 %i.ej, i64 32) ; 3 uses
  store i64 %i.em, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !alias.scope !671, !noalias !670
  %i.en = xor i64 %i.eg, %i.dx                    ; 3 uses
  store i64 %i.en, ptr %i.h, align 8, !alias.scope !669, !noalias !670
  switch i32 %narrow.i.i.i.i, label %bb.cr [
    i32 0, label %bb.an
    i32 5, label %bb.bq
    i32 6, label %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCs2AodJlUx5rK_5typst.exit.i.i.i.i.i
    i32 7, label %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCs2AodJlUx5rK_5typst.exit8.i.i.i.i
  ]

bb.an:                                            ; preds = %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCs2AodJlUx5rK_5typst.exit.i.i.i.i
  %i.eo = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.ep = load ptr, ptr %i.eo, align 8, !alias.scope !672, !noalias !673, !nonnull !6, !noundef !6 ; 12 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.er = load i64, ptr %i.eq, align 8, !alias.scope !672, !noalias !673, !noundef !6 ; 12 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !674)
  call void @llvm.experimental.noalias.scope.decl(metadata !675)
  switch i64 %i.er, label %.lr.ph.preheader.split.i.split.i.i.i.i [
    i64 0, label %._crit_edge.i.i.i.i.i
    i64 1, label %._crit_edge.loopexit.peel.begin.thread.i.i.i.i.i
    i64 2, label %._crit_edge.loopexit.peel.begin.i.peel.begin.thread.i.i.i.i
  ]

.lr.ph.preheader.split.i.split.i.i.i.i:           ; preds = %bb.an
  %i.es = add i64 %i.er, -3                       ; 2 uses
  br label %.lr.ph.i.i.i.i.i

._crit_edge.loopexit.peel.begin.i.peel.begin.i.i.i.i: ; preds = %bb.bh
  %i.et = add i64 %i.er, -1                       ; 3 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ep, i64 %i.gr
  %i.ev = load i8, ptr %i.eu, align 1, !alias.scope !674, !noalias !676, !noundef !6
  %i.ew = icmp eq i8 %i.ev, 47
  br i1 %i.ew, label %bb.ao, label %._crit_edge.loopexit.peel.begin.i.peel.begin.._crit_edge.loopexit.peel.begin.i.peel.next_crit_edge.i.i.i.i

._crit_edge.loopexit.peel.begin.i.peel.begin.thread.i.i.i.i: ; preds = %bb.an
  %i.ex = load i8, ptr %i.ep, align 1, !alias.scope !674, !noalias !676, !noundef !6
  %i.ey = icmp eq i8 %i.ex, 47
  br i1 %i.ey, label %.thread.i.i.i.i, label %._crit_edge.loopexit.peel.begin.i.peel.begin.._crit_edge.loopexit.peel.begin.i.peel.next_crit_edge.i.i.i.i

._crit_edge.loopexit.peel.begin.i.peel.begin.._crit_edge.loopexit.peel.begin.i.peel.next_crit_edge.i.i.i.i: ; preds = %._crit_edge.loopexit.peel.begin.i.peel.begin.thread.i.i.i.i, %._crit_edge.loopexit.peel.begin.i.peel.begin.i.i.i.i
  %i.ez = phi i64 [ 1, %._crit_edge.loopexit.peel.begin.i.peel.begin.thread.i.i.i.i ], [ %i.et, %._crit_edge.loopexit.peel.begin.i.peel.begin.i.i.i.i ] ; 2 uses
  %i.fa = phi i64 [ 0, %._crit_edge.loopexit.peel.begin.i.peel.begin.thread.i.i.i.i ], [ %i.gr, %._crit_edge.loopexit.peel.begin.i.peel.begin.i.i.i.i ]
  %i.fb = phi i64 [ 0, %._crit_edge.loopexit.peel.begin.i.peel.begin.thread.i.i.i.i ], [ %.sroa.012.2.i.i.i.i.i, %._crit_edge.loopexit.peel.begin.i.peel.begin.i.i.i.i ]
  %i.fc = phi i64 [ 0, %._crit_edge.loopexit.peel.begin.i.peel.begin.thread.i.i.i.i ], [ %.sroa.0.1.i.i.i.i.i, %._crit_edge.loopexit.peel.begin.i.peel.begin.i.i.i.i ]
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ep, i64 %i.ez
  %.pre.i.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i.i, align 1, !alias.scope !674, !noalias !676
  br label %._crit_edge.loopexit.peel.begin.i.peel.next.i.i.i.i

bb.ao:                                            ; preds = %._crit_edge.loopexit.peel.begin.i.peel.begin.i.i.i.i
  %.not.i.i.i.i52 = icmp ult i64 %i.es, %.sroa.0.1.i.i.i.i.i
  br i1 %.not.i.i.i.i52, label %.thread.i.i.i.i, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.fd = sub nuw i64 %i.gr, %.sroa.0.1.i.i.i.i.i ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ep, i64 %.sroa.0.1.i.i.i.i.i
  %i.ff = add i64 %i.fd, %.sroa.012.2.i.i.i.i.i   ; 2 uses
  %i.fg = call noundef i64 @llvm.fshl.i64(i64 %i.ff, i64 %i.ff, i64 62)
  call fastcc void @_RNvXs9_NtCs83m0le5ggt2_9siphasher6sip128NtB5_11SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.fe, i64 noundef %i.fd) #30, !noalias !670
  br label %.thread.i.i.i.i

.thread.i.i.i.i:                                  ; preds = %bb.ap, %bb.ao, %._crit_edge.loopexit.peel.begin.i.peel.begin.thread.i.i.i.i
  %i.fh = phi i64 [ %i.gr, %bb.ap ], [ %i.gr, %bb.ao ], [ 0, %._crit_edge.loopexit.peel.begin.i.peel.begin.thread.i.i.i.i ]
  %i.fi = phi i64 [ %i.et, %bb.ap ], [ %i.et, %bb.ao ], [ 1, %._crit_edge.loopexit.peel.begin.i.peel.begin.thread.i.i.i.i ] ; 4 uses
  %.sroa.012.3.i.peel.i.i.i.i = phi i64 [ %i.fg, %bb.ap ], [ %.sroa.012.2.i.i.i.i.i, %bb.ao ], [ 0, %._crit_edge.loopexit.peel.begin.i.peel.begin.thread.i.i.i.i ]
  %i.fj = sub nuw i64 %i.er, %i.fi
  %i.fk = getelementptr inbounds nuw i8, ptr %i.ep, i64 %i.fi ; 2 uses
  %i.fl = icmp eq i64 %i.fj, 1
  %i.fm = load i8, ptr %i.fk, align 1, !alias.scope !674, !noalias !676, !noundef !6 ; 2 uses
  %i.fn = icmp eq i8 %i.fm, 46                    ; 2 uses
  br i1 %i.fl, label %bb.as, label %bb.aq

bb.aq:                                            ; preds = %.thread.i.i.i.i
  br i1 %i.fn, label %bb.ar, label %bb.at

bb.ar:                                            ; preds = %bb.aq
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fk, i64 1
  %i.fp = load i8, ptr %i.fo, align 1, !alias.scope !674, !noalias !676, !noundef !6
  %i.fq = icmp eq i8 %i.fp, 47
  br i1 %i.fq, label %bb.au, label %bb.at

bb.as:                                            ; preds = %.thread.i.i.i.i
  br i1 %i.fn, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar, %bb.aq
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as, %bb.ar
  %.sroa.024.0.i.peel.i.i.i.i = phi i64 [ 1, %bb.as ], [ 0, %bb.at ], [ 1, %bb.ar ]
  %i.fr = add i64 %.sroa.024.0.i.peel.i.i.i.i, %i.fi
  br label %._crit_edge.loopexit.peel.begin.i.peel.next.i.i.i.i

._crit_edge.loopexit.peel.begin.i.peel.next.i.i.i.i: ; preds = %bb.au, %._crit_edge.loopexit.peel.begin.i.peel.begin.._crit_edge.loopexit.peel.begin.i.peel.next_crit_edge.i.i.i.i
  %i.fs = phi i64 [ %i.fi, %bb.au ], [ %i.ez, %._crit_edge.loopexit.peel.begin.i.peel.begin.._crit_edge.loopexit.peel.begin.i.peel.next_crit_edge.i.i.i.i ]
  %i.ft = phi i64 [ %i.fh, %bb.au ], [ %i.fa, %._crit_edge.loopexit.peel.begin.i.peel.begin.._crit_edge.loopexit.peel.begin.i.peel.next_crit_edge.i.i.i.i ] ; 2 uses
  %i.fu = phi i8 [ %i.fm, %bb.au ], [ %.pre.i.i.i.i, %._crit_edge.loopexit.peel.begin.i.peel.begin.._crit_edge.loopexit.peel.begin.i.peel.next_crit_edge.i.i.i.i ]
  %.sroa.012.2.i.peel.i.i.i.i = phi i64 [ %.sroa.012.3.i.peel.i.i.i.i, %bb.au ], [ %i.fb, %._crit_edge.loopexit.peel.begin.i.peel.begin.._crit_edge.loopexit.peel.begin.i.peel.next_crit_edge.i.i.i.i ] ; 3 uses
  %.sroa.0.1.i.peel.i.i.i.i = phi i64 [ %i.fr, %bb.au ], [ %i.fc, %._crit_edge.loopexit.peel.begin.i.peel.begin.._crit_edge.loopexit.peel.begin.i.peel.next_crit_edge.i.i.i.i ] ; 4 uses
  %i.fv = add nuw i64 %i.ft, 2                    ; 8 uses
  %i.fw = icmp eq i8 %i.fu, 47
  br i1 %i.fw, label %bb.av, label %._crit_edge.i.i.i.i.i

._crit_edge.loopexit.peel.begin.thread.i.i.i.i.i: ; preds = %bb.an
  %i.fx = load i8, ptr %i.ep, align 1, !alias.scope !674, !noalias !676, !noundef !6
  %i.fy = icmp eq i8 %i.fx, 47
  br i1 %i.fy, label %.thread50.i.i.i.i.i, label %._crit_edge.i.i.i.i.i

bb.av:                                            ; preds = %._crit_edge.loopexit.peel.begin.i.peel.next.i.i.i.i
  %.not.i.i.i.i.i = icmp ult i64 %i.ft, %.sroa.0.1.i.peel.i.i.i.i
  br i1 %.not.i.i.i.i.i, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.fz = sub nuw i64 %i.fs, %.sroa.0.1.i.peel.i.i.i.i ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.ep, i64 %.sroa.0.1.i.peel.i.i.i.i
  %i.gb = add i64 %i.fz, %.sroa.012.2.i.peel.i.i.i.i ; 2 uses
  %i.gc = call noundef i64 @llvm.fshl.i64(i64 %i.gb, i64 %i.gb, i64 62)
  call fastcc void @_RNvXs9_NtCs83m0le5ggt2_9siphasher6sip128NtB5_11SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ga, i64 noundef %i.fz) #30, !noalias !670
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %.sroa.012.3.peel.i.i.i.i.i = phi i64 [ %i.gc, %bb.aw ], [ %.sroa.012.2.i.peel.i.i.i.i, %bb.av ] ; 6 uses
  %i.gd = sub nuw i64 %i.er, %i.fv
  %i.ge = getelementptr inbounds nuw i8, ptr %i.ep, i64 %i.fv ; 3 uses
  %i.gf = icmp eq i64 %i.gd, 1
  br i1 %i.gf, label %bb.bb, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %.not27.peel.i.i.i.i.i = icmp eq i64 %i.er, %i.fv
  br i1 %.not27.peel.i.i.i.i.i, label %.thread50.i.i.i.i.i, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.gg = load i8, ptr %i.ge, align 1, !alias.scope !674, !noalias !676, !noundef !6
  %i.gh = icmp eq i8 %i.gg, 46
  br i1 %i.gh, label %bb.ba, label %.thread50.i.i.i.i.i

bb.ba:                                            ; preds = %bb.az
  %i.gi = getelementptr inbounds nuw i8, ptr %i.ge, i64 1
  %i.gj = load i8, ptr %i.gi, align 1, !alias.scope !674, !noalias !676, !noundef !6
  %i.gk = icmp eq i8 %i.gj, 47
  br i1 %i.gk, label %bb.bc, label %.thread50.i.i.i.i.i

bb.bb:                                            ; preds = %bb.ax
  %i.gl = load i8, ptr %i.ge, align 1, !alias.scope !674, !noalias !676, !noundef !6
  %i.gm = icmp eq i8 %i.gl, 46
  br i1 %i.gm, label %bb.bc, label %.thread50.i.i.i.i.i

.thread50.i.i.i.i.i:                              ; preds = %bb.bb, %bb.ba, %bb.az, %bb.ay, %._crit_edge.loopexit.peel.begin.thread.i.i.i.i.i
  %.sroa.012.3.peel47.i.i.i.i.i = phi i64 [ %.sroa.012.3.peel.i.i.i.i.i, %bb.bb ], [ %.sroa.012.3.peel.i.i.i.i.i, %bb.ba ], [ %.sroa.012.3.peel.i.i.i.i.i, %bb.az ], [ %.sroa.012.3.peel.i.i.i.i.i, %bb.ay ], [ 0, %._crit_edge.loopexit.peel.begin.thread.i.i.i.i.i ]
  %i.gn = phi i64 [ %i.fv, %bb.bb ], [ %i.fv, %bb.ba ], [ %i.fv, %bb.az ], [ %i.er, %bb.ay ], [ 1, %._crit_edge.loopexit.peel.begin.thread.i.i.i.i.i ]
  br label %bb.bc

bb.bc:                                            ; preds = %.thread50.i.i.i.i.i, %bb.bb, %bb.ba
  %.sroa.012.3.peel46.i.i.i.i.i = phi i64 [ %.sroa.012.3.peel.i.i.i.i.i, %bb.bb ], [ %.sroa.012.3.peel47.i.i.i.i.i, %.thread50.i.i.i.i.i ], [ %.sroa.012.3.peel.i.i.i.i.i, %bb.ba ]
  %i.go = phi i64 [ %i.fv, %bb.bb ], [ %i.gn, %.thread50.i.i.i.i.i ], [ %i.fv, %bb.ba ]
  %.sroa.024.0.peel.i.i.i.i.i = phi i64 [ 1, %bb.bb ], [ 0, %.thread50.i.i.i.i.i ], [ 1, %bb.ba ]
  %i.gp = add i64 %.sroa.024.0.peel.i.i.i.i.i, %i.go
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %bb.bc, %._crit_edge.loopexit.peel.begin.thread.i.i.i.i.i, %._crit_edge.loopexit.peel.begin.i.peel.next.i.i.i.i, %bb.an
  %.sroa.012.0.lcssa.i.i.i.i.i = phi i64 [ %i.er, %bb.an ], [ %.sroa.012.3.peel46.i.i.i.i.i, %bb.bc ], [ %.sroa.012.2.i.peel.i.i.i.i, %._crit_edge.loopexit.peel.begin.i.peel.next.i.i.i.i ], [ 0, %._crit_edge.loopexit.peel.begin.thread.i.i.i.i.i ] ; 2 uses
  %.sroa.0.0.lcssa.i.i.i.i.i = phi i64 [ %i.er, %bb.an ], [ %i.gp, %bb.bc ], [ %.sroa.0.1.i.peel.i.i.i.i, %._crit_edge.loopexit.peel.begin.i.peel.next.i.i.i.i ], [ 0, %._crit_edge.loopexit.peel.begin.thread.i.i.i.i.i ] ; 3 uses
  %i.gq = icmp ult i64 %.sroa.0.0.lcssa.i.i.i.i.i, %i.er
  br i1 %i.gq, label %bb.bg, label %bb.bd

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.bh, %.lr.ph.preheader.split.i.split.i.i.i.i
  %.sroa.0.032.i.i.i.i.i = phi i64 [ %.sroa.0.1.i.i.i.i.i, %bb.bh ], [ 0, %.lr.ph.preheader.split.i.split.i.i.i.i ] ; 4 uses
  %.sroa.012.031.i.i.i.i.i = phi i64 [ %.sroa.012.2.i.i.i.i.i, %bb.bh ], [ 0, %.lr.ph.preheader.split.i.split.i.i.i.i ] ; 3 uses
  %.sroa.019.030.i.i.i.i.i = phi i64 [ %i.gr, %bb.bh ], [ 0, %.lr.ph.preheader.split.i.split.i.i.i.i ] ; 5 uses
  %i.gr = add nuw i64 %.sroa.019.030.i.i.i.i.i, 1 ; 9 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.ep, i64 %.sroa.019.030.i.i.i.i.i
  %i.gt = load i8, ptr %i.gs, align 1, !alias.scope !674, !noalias !676, !noundef !6
  %i.gu = icmp eq i8 %i.gt, 47
  br i1 %i.gu, label %bb.bi, label %bb.bh
end_hunk_1
