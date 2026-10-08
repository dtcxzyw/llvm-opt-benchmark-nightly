Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yara-x-rs/original/yara_x-7f56cf114ea533af.yara_x.54960d49aaff044b-cgu.03?download=true
inline.NumInlined: 4529
inline.NumDeleted: 1845
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_RNvMNtCscCwXDEmlcGa_14elliptic_curve10public_keyINtB2_9PublicKeyNtCs2QVhZO3YFtI_4p3848NistP384E15from_sec1_bytesCs7gfv9tzbXmh_6yara_x:bb.a
  %i.dv = zext i64 %i.du to i128
  %i.dw = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.dx = load i64, ptr %i.dw, align 8, !alias.scope !2730, !noalias !2731, !noundef !6
  %i.dy = zext i64 %i.dx to i128
  %i.dz = icmp slt i128 %.neg2.1.i.i.i.i.i.i, %i.dq
  %i.ea = sext i1 %i.dz to i128
  %.neg2.2.i.i.i.i.i.i = add nsw i128 %i.ea, %i.dv
  %i.eb = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.ec = load i64, ptr %i.eb, align 8, !alias.scope !2728, !noalias !2729, !noundef !6
  %i.ed = zext i64 %i.ec to i128
  %i.ee = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.ef = load i64, ptr %i.ee, align 8, !alias.scope !2730, !noalias !2731, !noundef !6
  %i.eg = zext i64 %i.ef to i128
  %i.eh = icmp slt i128 %.neg2.2.i.i.i.i.i.i, %i.dy
  %i.ei = sext i1 %i.eh to i128
  %.neg2.3.i.i.i.i.i.i = add nsw i128 %i.ei, %i.ed
  %i.ej = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.ek = load i64, ptr %i.ej, align 8, !alias.scope !2728, !noalias !2729, !noundef !6
  %i.el = zext i64 %i.ek to i128
  %i.em = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.en = load i64, ptr %i.em, align 8, !alias.scope !2730, !noalias !2731, !noundef !6
  %i.eo = zext i64 %i.en to i128
  %i.ep = icmp slt i128 %.neg2.3.i.i.i.i.i.i, %i.eg
  %i.eq = sext i1 %i.ep to i128
  %.neg2.4.i.i.i.i.i.i = add nsw i128 %i.eq, %i.el
  %i.er = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %i.es = load i64, ptr %i.er, align 8, !alias.scope !2728, !noalias !2729, !noundef !6
  %i.et = zext i64 %i.es to i128
  %i.eu = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  %i.ev = load i64, ptr %i.eu, align 8, !alias.scope !2730, !noalias !2731, !noundef !6
  %i.ew = zext i64 %i.ev to i128
  %i.ex = icmp slt i128 %.neg2.4.i.i.i.i.i.i, %i.eo
  %i.ey = sext i1 %i.ex to i128
  %.neg2.5.i.i.i.i.i.i = sub nsw i128 %i.et, %i.ew
  %i.ez = add nsw i128 %.neg2.5.i.i.i.i.i.i, %i.ey
  %i.fa = lshr i128 %i.ez, 64
  %i.fb = trunc nuw i128 %i.fa to i64
  %i.fc = call noundef i8 @_RNvXs_NtCs61LWG4hqDFC_13crypto_bigint9ct_choiceNtCs6fbuawtF7IW_6subtle6ChoiceINtNtCskKLDkoKarTP_4core7convert4FromNtB4_8CtChoiceE4from(i64 noundef %i.fb), !noalias !2732
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !2719
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !2719
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !2719
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !2719
  %i.fd = getelementptr inbounds nuw i8, ptr %i.u, i64 48
  call void @_RNvXsc_NtNtCs2QVhZO3YFtI_4p38410arithmetic5fieldNtB5_12FieldElementNtCs6fbuawtF7IW_6subtle23ConditionallySelectable18conditional_select(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.fd, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.av, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.dh, i8 noundef %i.fc), !noalias !2712
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.u, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0.i.i.i, i64 48, i1 false), !noalias !2711
  %i.fe = getelementptr inbounds nuw i8, ptr %i.u, i64 96
  store i8 %i.au, ptr %i.fe, align 8, !alias.scope !2733, !noalias !2734
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !2719
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i), !noalias !2711
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !2711
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.aa, ptr noundef nonnull align 8 dereferenceable(104) %i.u, i64 104, i1 false), !noalias !2735
  %i.ff = getelementptr inbounds nuw i8, ptr %i.aa, i64 104
  store i8 %i.am, ptr %i.ff, align 8, !alias.scope !2736, !noalias !2735
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !2711
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !2711
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !2707
  br label %_RNvXs7_NtCs6YIb6xnOWY1_10primeorder6affineINtB5_11AffinePointNtCs2QVhZO3YFtI_4p3848NistP384EINtNtCscCwXDEmlcGa_14elliptic_curve4sec116FromEncodedPointBX_E18from_encoded_pointCs7gfv9tzbXmh_6yara_x.exit

bb.g:                                             ; preds = %_RNvMNtCs668niwp5TX9_4sec15pointINtB2_12EncodedPointINtNtCs5JhIwYIM6tq_7typenum4uint4UIntIBO_IBO_IBO_IBO_IBO_NtBQ_5UTermNtNtBS_3bit2B1EB1T_ENtB1V_2B0EB2d_EB2d_EB2d_EE3tagCs7gfv9tzbXmh_6yara_x.exit4.i.i
  %i.fg = and i8 %.val3.i.i, 1
  %i.fh = call noundef i8 @_RINvCs6fbuawtF7IW_6subtle9black_boxhECs61LWG4hqDFC_13crypto_bigint(i8 noundef %i.fg) #31, !noalias !2705
  call fastcc void @_RNvXs4_NtCs6YIb6xnOWY1_10primeorder6affineINtB5_11AffinePointNtCs2QVhZO3YFtI_4p3848NistP384EINtNtCscCwXDEmlcGa_14elliptic_curve5point15DecompressPointBX_E10decompressCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(112) %i.aa, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(48) %i.af, i8 noundef %i.fh)
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.aa, i64 104
  %.pre = load i8, ptr %.phi.trans.insert, align 8, !alias.scope !2737, !noalias !2738
  br label %_RNvXs7_NtCs6YIb6xnOWY1_10primeorder6affineINtB5_11AffinePointNtCs2QVhZO3YFtI_4p3848NistP384EINtNtCscCwXDEmlcGa_14elliptic_curve4sec116FromEncodedPointBX_E18from_encoded_pointCs7gfv9tzbXmh_6yara_x.exit

_RNvMNtCs668niwp5TX9_4sec15pointINtB2_12EncodedPointINtNtCs5JhIwYIM6tq_7typenum4uint4UIntIBO_IBO_IBO_IBO_IBO_NtBQ_5UTermNtNtBS_3bit2B1EB1T_ENtB1V_2B0EB2d_EB2d_EB2d_EE11coordinatesCs7gfv9tzbXmh_6yara_x.exit.i: ; preds = %_RNvMNtCs668niwp5TX9_4sec15pointINtB2_12EncodedPointINtNtCs5JhIwYIM6tq_7typenum4uint4UIntIBO_IBO_IBO_IBO_IBO_NtBQ_5UTermNtNtBS_3bit2B1EB1T_ENtB1V_2B0EB2d_EB2d_EB2d_EE3tagCs7gfv9tzbXmh_6yara_x.exit5.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !2705
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !2705
  %.sroa.11.sroa.0.34..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.11.sroa.0, i64 34
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(48) %i.x, ptr noundef nonnull align 2 dereferenceable(48) %.sroa.11.sroa.0.34..sroa_idx, i64 48, i1 false)
  call void @_RNvMs4_NtNtCs2QVhZO3YFtI_4p38410arithmetic5fieldNtB5_12FieldElement10from_bytes(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.y, ptr noalias nofree noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(48) %i.x), !noalias !2705
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !2705
  call void @llvm.experimental.noalias.scope.decl(metadata !2739)
  call void @llvm.experimental.noalias.scope.decl(metadata !2740)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !2741
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !2741
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.l, i8 0, i64 48, i1 false), !alias.scope !2742, !noalias !2741
  %i.fi = getelementptr inbounds nuw i8, ptr %i.y, i64 48
  %i.fj = load i8, ptr %i.fi, align 8, !alias.scope !2740, !noalias !2743, !noundef !6 ; 2 uses
  call void @_RNvXsc_NtNtCs2QVhZO3YFtI_4p38410arithmetic5fieldNtB5_12FieldElementNtCs6fbuawtF7IW_6subtle23ConditionallySelectable18conditional_select(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.m, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.l, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.y, i8 noundef %i.fj), !noalias !2743
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !2744
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !2744
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(48) %i.j, ptr noundef nonnull readonly align 1 dereferenceable(48) %i.af, i64 48, i1 false), !noalias !2745
  call void @_RNvMs4_NtNtCs2QVhZO3YFtI_4p38410arithmetic5fieldNtB5_12FieldElement10from_bytes(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.k, ptr noalias nofree noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(48) %i.j), !noalias !2746
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !2744
  call void @llvm.experimental.noalias.scope.decl(metadata !2747)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !2748
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !2748
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.h, i8 0, i64 48, i1 false), !alias.scope !2749, !noalias !2748
  %i.fk = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  %i.fl = load i8, ptr %i.fk, align 8, !alias.scope !2747, !noalias !2750, !noundef !6 ; 2 uses
  call void @_RNvXsc_NtNtCs2QVhZO3YFtI_4p38410arithmetic5fieldNtB5_12FieldElementNtCs6fbuawtF7IW_6subtle23ConditionallySelectable18conditional_select(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.k, i8 noundef %i.fl), !noalias !2751
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !2752
  call fastcc void @_RNvXsA_NtNtCs2QVhZO3YFtI_4p38410arithmetic5fieldNtB5_12FieldElementINtNtNtCskKLDkoKarTP_4core3ops5arith3MulRBK_E3mul(ptr noalias nofree noundef align 8 captures(none) dereferenceable(48) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.m, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.m) #35, !noalias !2753
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !2752
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2752
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2752
  call fastcc void @_RNvXsA_NtNtCs2QVhZO3YFtI_4p38410arithmetic5fieldNtB5_12FieldElementINtNtNtCskKLDkoKarTP_4core3ops5arith3MulRBK_E3mul(ptr noalias nofree noundef align 8 captures(none) dereferenceable(48) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.i) #35, !noalias !2754
  call fastcc void @_RNvXsA_NtNtCs2QVhZO3YFtI_4p38410arithmetic5fieldNtB5_12FieldElementINtNtNtCskKLDkoKarTP_4core3ops5arith3MulRBK_E3mul(ptr noalias nofree noundef align 8 captures(none) dereferenceable(48) %i.e, ptr noalias nofree noundef align 8 captures(address) dereferenceable(48) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.i) #35, !noalias !2754
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2752
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2752
  call fastcc void @_RNvXsA_NtNtCs2QVhZO3YFtI_4p38410arithmetic5fieldNtB5_12FieldElementINtNtNtCskKLDkoKarTP_4core3ops5arith3MulRBK_E3mul(ptr noalias nofree noundef align 8 captures(none) dereferenceable(48) %i.c, ptr noalias nofree noundef align 8 captures(address) dereferenceable(48) @69, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.i) #35, !noalias !2754
  call void @llvm.experimental.noalias.scope.decl(metadata !2755)
  call void @llvm.experimental.noalias.scope.decl(metadata !2756)
  call void @llvm.experimental.noalias.scope.decl(metadata !2757)
  call void @llvm.experimental.noalias.scope.decl(metadata !2758)
  %i.fm = load i64, ptr %i.e, align 8, !alias.scope !2759, !noalias !2760, !noundef !6 ; 2 uses
  %i.fn = load i64, ptr %i.c, align 8, !alias.scope !2761, !noalias !2762, !noundef !6
  %add.narrowed.i.i.i.i.i.i.i = add i64 %i.fn, %i.fm ; 3 uses
  %add.narrowed.overflow.i.i.i.i.i.i.i = icmp ult i64 %add.narrowed.i.i.i.i.i.i.i, %i.fm
  %i.fo = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.fp = load i64, ptr %i.fo, align 8, !alias.scope !2759, !noalias !2760, !noundef !6
  %i.fq = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.fr = load i64, ptr %i.fq, align 8, !alias.scope !2761, !noalias !2762, !noundef !6
  %i.fs = zext i1 %add.narrowed.overflow.i.i.i.i.i.i.i to i128
  %i.ft = zext i64 %i.fp to i128
  %i.fu = add nuw nsw i128 %i.fs, %i.ft
  %i.fv = zext i64 %i.fr to i128
  %i.fw = add nuw nsw i128 %i.fu, %i.fv           ; 3 uses
  %i.fx = lshr i128 %i.fw, 64
  %i.fy = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.fz = load i64, ptr %i.fy, align 8, !alias.scope !2759, !noalias !2760, !noundef !6
  %i.ga = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.gb = load i64, ptr %i.ga, align 8, !alias.scope !2761, !noalias !2762, !noundef !6
  %i.gc = zext i64 %i.fz to i128
  %i.gd = zext i64 %i.gb to i128
  %i.ge = add nuw nsw i128 %i.gd, %i.gc
  %i.gf = add nuw nsw i128 %i.ge, %i.fx           ; 3 uses
  %i.gg = lshr i128 %i.gf, 64
  %i.gh = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.gi = load i64, ptr %i.gh, align 8, !alias.scope !2759, !noalias !2760, !noundef !6
  %i.gj = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.gk = load i64, ptr %i.gj, align 8, !alias.scope !2761, !noalias !2762, !noundef !6
  %i.gl = zext i64 %i.gi to i128
  %i.gm = zext i64 %i.gk to i128
  %i.gn = add nuw nsw i128 %i.gm, %i.gl
  %i.go = add nuw nsw i128 %i.gn, %i.gg           ; 3 uses
  %i.gp = lshr i128 %i.go, 64
  %i.gq = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.gr = load i64, ptr %i.gq, align 8, !alias.scope !2759, !noalias !2760, !noundef !6
  %i.gs = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.gt = load i64, ptr %i.gs, align 8, !alias.scope !2761, !noalias !2762, !noundef !6
  %i.gu = zext i64 %i.gr to i128
  %i.gv = zext i64 %i.gt to i128
  %i.gw = add nuw nsw i128 %i.gv, %i.gu
  %i.gx = add nuw nsw i128 %i.gw, %i.gp           ; 3 uses
  %i.gy = lshr i128 %i.gx, 64
  %i.gz = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.ha = load i64, ptr %i.gz, align 8, !alias.scope !2759, !noalias !2760, !noundef !6
  %i.hb = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.hc = load i64, ptr %i.hb, align 8, !alias.scope !2761, !noalias !2762, !noundef !6
  %i.hd = zext i64 %i.ha to i128
  %i.he = zext i64 %i.hc to i128
  %i.hf = add nuw nsw i128 %i.he, %i.hd
  %i.hg = add nuw nsw i128 %i.hf, %i.gy           ; 3 uses
  %i.hh = lshr i128 %i.hg, 64
  %i.hi = zext i64 %add.narrowed.i.i.i.i.i.i.i to i128
  %i.hj = add nsw i128 %i.hi, -4294967295         ; 2 uses
  %i.hk = lshr i128 %i.hj, 64
  %i.hl = trunc i128 %i.hj to i64
  %i.hm = and i128 %i.fw, 18446744073709551615
  %i.hn = sub nsw i128 0, %i.hk
  %i.ho = and i128 %i.hn, 255
  %i.hp = sub nsw i128 %i.hm, %i.ho
  %i.hq = add nsw i128 %i.hp, -18446744069414584320 ; 2 uses
  %i.hr = lshr i128 %i.hq, 64
  %i.hs = trunc i128 %i.hq to i64
  %i.ht = and i128 %i.gf, 18446744073709551615
  %i.hu = sub nsw i128 0, %i.hr
  %i.hv = and i128 %i.hu, 255
  %i.hw = sub nsw i128 %i.ht, %i.hv
  %i.hx = add nsw i128 %i.hw, -18446744073709551614 ; 2 uses
  %i.hy = lshr i128 %i.hx, 64
  %i.hz = trunc i128 %i.hx to i64
  %i.ia = and i128 %i.go, 18446744073709551615
  %i.ib = sub nsw i128 0, %i.hy
  %i.ic = and i128 %i.ib, 255
  %i.id = sub nsw i128 %i.ia, %i.ic
  %i.ie = add nsw i128 %i.id, -18446744073709551615 ; 2 uses
  %i.if = lshr i128 %i.ie, 64
  %i.ig = trunc i128 %i.ie to i64
  %i.ih = and i128 %i.gx, 18446744073709551615
  %i.ii = sub nsw i128 0, %i.if
  %i.ij = and i128 %i.ii, 255
  %i.ik = sub nsw i128 %i.ih, %i.ij
  %i.il = add nsw i128 %i.ik, -18446744073709551615 ; 2 uses
  %i.im = lshr i128 %i.il, 64
  %i.in = trunc i128 %i.il to i64
  %i.io = and i128 %i.hg, 18446744073709551615
  %i.ip = sub nsw i128 0, %i.im
  %i.iq = and i128 %i.ip, 255
  %i.ir = sub nsw i128 %i.io, %i.iq
  %i.is = add nsw i128 %i.ir, -18446744073709551615 ; 2 uses
  %i.it = lshr i128 %i.is, 64
  %i.iu = trunc i128 %i.is to i64
  %i.iv = sub nsw i128 0, %i.it
  %i.iw = and i128 %i.iv, 255
  %i.ix = sub nsw i128 %i.hh, %i.iw
  %3 = lshr i128 %i.ix, 64                        ; 6 uses
  %i.iy = trunc nuw i128 %3 to i64                ; 2 uses
  %4 = and i64 %add.narrowed.i.i.i.i.i.i.i, %i.iy
  %5 = xor i64 %i.iy, -1                          ; 6 uses
  %i.iz = and i64 %5, %i.hl
  %i.ja = or i64 %4, %i.iz                        ; 2 uses
  %i.jb = and i128 %3, %i.fw
  %i.jc = and i64 %5, %i.hs
  %i.jd = and i128 %3, %i.gf
  %i.je = and i64 %5, %i.hz
  %i.jf = and i128 %3, %i.go
  %i.jg = and i64 %5, %i.ig
  %i.jh = and i128 %3, %i.gx
  %6 = and i64 %5, %i.in
  %7 = and i128 %3, %i.hg
  %8 = and i64 %5, %i.iu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2752
  %add.narrowed.i.i1.i.i.i.i.i = add i64 %i.ja, 581395848458481100 ; 2 uses
  %add.narrowed.overflow.i.i2.i.i.i.i.i = icmp ugt i64 %i.ja, -581395848458481101
  %i.ji = zext i1 %add.narrowed.overflow.i.i2.i.i.i.i.i to i128
  %i.jj = zext i64 %i.jc to i128
  %9 = or i128 %i.jb, %i.jj
  %i.jk = add nuw nsw i128 %9, 17809957346689692396
  %i.jl = add nuw nsw i128 %i.jk, %i.ji           ; 3 uses
  %i.jm = lshr i128 %i.jl, 64
  %i.jn = zext i64 %i.je to i128
  %10 = or i128 %i.jd, %i.jn
  %i.jo = add nuw nsw i128 %10, 8643006485390950958
  %i.jp = add nuw nsw i128 %i.jo, %i.jm           ; 3 uses
  %i.jq = lshr i128 %i.jp, 64
  %i.jr = zext i64 %i.jg to i128
  %11 = or i128 %i.jf, %i.jr
  %i.js = add nuw nsw i128 %11, 16372638458395724514
  %i.jt = add nuw nsw i128 %i.js, %i.jq           ; 3 uses
  %i.ju = lshr i128 %i.jt, 64
  %i.jv = zext i64 %6 to i128
  %12 = or i128 %i.jh, %i.jv
  %i.jw = add nuw nsw i128 %12, 13126622871277412500
  %i.jx = add nuw nsw i128 %i.jw, %i.ju           ; 3 uses
  %i.jy = lshr i128 %i.jx, 64
  %i.jz = zext i64 %8 to i128
  %13 = or i128 %7, %i.jz
  %i.ka = add nuw nsw i128 %13, 14774077593024970745
  %i.kb = add nuw nsw i128 %i.ka, %i.jy           ; 3 uses
  %i.kc = lshr i128 %i.kb, 64
  %i.kd = zext i64 %add.narrowed.i.i1.i.i.i.i.i to i128
  %i.ke = add nsw i128 %i.kd, -4294967295         ; 2 uses
  %i.kf = lshr i128 %i.ke, 64
  %i.kg = trunc i128 %i.ke to i64
  %i.kh = and i128 %i.jl, 18446744073709551615
  %i.ki = sub nsw i128 0, %i.kf
  %i.kj = and i128 %i.ki, 255
  %i.kk = sub nsw i128 %i.kh, %i.kj
  %i.kl = add nsw i128 %i.kk, -18446744069414584320 ; 2 uses
  %i.km = lshr i128 %i.kl, 64
  %i.kn = trunc i128 %i.kl to i64
  %i.ko = and i128 %i.jp, 18446744073709551615
  %i.kp = sub nsw i128 0, %i.km
  %i.kq = and i128 %i.kp, 255
  %i.kr = sub nsw i128 %i.ko, %i.kq
  %i.ks = add nsw i128 %i.kr, -18446744073709551614 ; 2 uses
  %i.kt = lshr i128 %i.ks, 64
  %i.ku = trunc i128 %i.ks to i64
  %i.kv = and i128 %i.jt, 18446744073709551615
  %i.kw = sub nsw i128 0, %i.kt
  %i.kx = and i128 %i.kw, 255
  %i.ky = sub nsw i128 %i.kv, %i.kx
  %i.kz = add nsw i128 %i.ky, -18446744073709551615 ; 2 uses
  %i.la = lshr i128 %i.kz, 64
  %i.lb = trunc i128 %i.kz to i64
  %i.lc = and i128 %i.jx, 18446744073709551615
  %i.ld = sub nsw i128 0, %i.la
  %i.le = and i128 %i.ld, 255
  %i.lf = sub nsw i128 %i.lc, %i.le
  %i.lg = add nsw i128 %i.lf, -18446744073709551615 ; 2 uses
  %i.lh = lshr i128 %i.lg, 64
  %i.li = trunc i128 %i.lg to i64
  %i.lj = and i128 %i.kb, 18446744073709551615
  %i.lk = sub nsw i128 0, %i.lh
  %i.ll = and i128 %i.lk, 255
  %i.lm = sub nsw i128 %i.lj, %i.ll
  %i.ln = add nsw i128 %i.lm, -18446744073709551615 ; 2 uses
  %i.lo = lshr i128 %i.ln, 64
  %i.lp = trunc i128 %i.ln to i64
  %i.lq = sub nsw i128 0, %i.lo
  %i.lr = and i128 %i.lq, 255
  %i.ls = sub nsw i128 %i.kc, %i.lr
  %14 = lshr i128 %i.ls, 64                       ; 6 uses
  %i.lt = trunc nuw i128 %14 to i64               ; 2 uses
  %15 = and i64 %add.narrowed.i.i1.i.i.i.i.i, %i.lt
  %i.lu = xor i64 %i.lt, -1                       ; 6 uses
  %16 = and i64 %i.lu, %i.kg
  %17 = or i64 %15, %16
  %i.lv = and i128 %14, %i.jl
  %i.lw = trunc nuw i128 %i.lv to i64
  %i.lx = and i64 %i.lu, %i.kn
  %i.ly = or i64 %i.lx, %i.lw
  %i.lz = and i128 %14, %i.jp
  %i.ma = trunc nuw i128 %i.lz to i64
  %i.mb = and i64 %i.lu, %i.ku
  %i.mc = or i64 %i.mb, %i.ma
  %i.md = and i128 %14, %i.jt
  %i.me = trunc nuw i128 %i.md to i64
  %i.mf = and i64 %i.lu, %i.lb
  %i.mg = or i64 %i.mf, %i.me
  %i.mh = and i128 %14, %i.jx
  %i.mi = trunc nuw i128 %i.mh to i64
  %i.mj = and i64 %i.lu, %i.li
  %i.mk = or i64 %i.mj, %i.mi
  %i.ml = and i128 %14, %i.kb
  %i.mm = trunc nuw i128 %i.ml to i64
  %i.mn = and i64 %i.lu, %i.lp
  %i.mo = or i64 %i.mn, %i.mm
  store i64 %17, ptr %i.f, align 8, !alias.scope !2763, !noalias !2764
  %.sroa.42.0..sroa_idx.i3.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 %i.ly, ptr %.sroa.42.0..sroa_idx.i3.i.i.i.i.i, align 8, !alias.scope !2763, !noalias !2764
  %.sroa.53.0..sroa_idx.i4.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 %i.mc, ptr %.sroa.53.0..sroa_idx.i4.i.i.i.i.i, align 8, !alias.scope !2763, !noalias !2764
  %.sroa.64.0..sroa_idx.i5.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store i64 %i.mg, ptr %.sroa.64.0..sroa_idx.i5.i.i.i.i.i, align 8, !alias.scope !2763, !noalias !2764
  %.sroa.75.0..sroa_idx.i6.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store i64 %i.mk, ptr %.sroa.75.0..sroa_idx.i6.i.i.i.i.i, align 8, !alias.scope !2763, !noalias !2764
  %.sroa.86.0..sroa_idx.i7.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  store i64 %i.mo, ptr %.sroa.86.0..sroa_idx.i7.i.i.i.i.i, align 8, !alias.scope !2763, !noalias !2764
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2752
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0.i.i.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.i, i64 48, i1 false), !noalias !2741
  %.sroa.0.48..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.i.i.i.i.i, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0.48..sroa_idx.i.i.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.m, i64 48, i1 false), !noalias !2741
  %i.mp = call noundef i8 @_RNvXsd_NtNtCs2QVhZO3YFtI_4p38410arithmetic5fieldNtB5_12FieldElementNtCs6fbuawtF7IW_6subtle14ConstantTimeEq5ct_eq(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.f), !noalias !2765
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !2752
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !2752
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !2748
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !2748
  %i.mq = and i8 %i.mp, %i.fl
  %i.mr = call noundef i8 @_RINvCs6fbuawtF7IW_6subtle9black_boxhECs61LWG4hqDFC_13crypto_bigint(i8 noundef %i.mq) #31, !noalias !2751
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !2744
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !2741
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !2741
  %i.ms = and i8 %i.mr, %i.fj
  %i.mt = call noundef i8 @_RINvCs6fbuawtF7IW_6subtle9black_boxhECs61LWG4hqDFC_13crypto_bigint(i8 noundef %i.ms) #31, !noalias !2743 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.aa, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.0.i.i.i.i.i, i64 96, i1 false), !noalias !2766
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 96
  store i8 0, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !2767, !noalias !2766
  %.sroa.51.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 104
  store i8 %i.mt, ptr %.sroa.51.0..sroa_idx.i.i, align 8, !alias.scope !2767, !noalias !2766
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !2705
  br label %_RNvXs7_NtCs6YIb6xnOWY1_10primeorder6affineINtB5_11AffinePointNtCs2QVhZO3YFtI_4p3848NistP384EINtNtCscCwXDEmlcGa_14elliptic_curve4sec116FromEncodedPointBX_E18from_encoded_pointCs7gfv9tzbXmh_6yara_x.exit

_RNvXs7_NtCs6YIb6xnOWY1_10primeorder6affineINtB5_11AffinePointNtCs2QVhZO3YFtI_4p3848NistP384EINtNtCscCwXDEmlcGa_14elliptic_curve4sec116FromEncodedPointBX_E18from_encoded_pointCs7gfv9tzbXmh_6yara_x.exit: ; preds = %bb.e, %bb.f, %bb.g, %_RNvMNtCs668niwp5TX9_4sec15pointINtB2_12EncodedPointINtNtCs5JhIwYIM6tq_7typenum4uint4UIntIBO_IBO_IBO_IBO_IBO_NtBQ_5UTermNtNtBS_3bit2B1EB1T_ENtB1V_2B0EB2d_EB2d_EB2d_EE11coordinatesCs7gfv9tzbXmh_6yara_x.exit.i
  %i.mu = phi i8 [ %i.ai, %bb.e ], [ %i.am, %bb.f ], [ %.pre, %bb.g ], [ %i.mt, %_RNvMNtCs668niwp5TX9_4sec15pointINtB2_12EncodedPointINtNtCs5JhIwYIM6tq_7typenum4uint4UIntIBO_IBO_IBO_IBO_IBO_NtBQ_5UTermNtNtBS_3bit2B1EB1T_ENtB1V_2B0EB2d_EB2d_EB2d_EE11coordinatesCs7gfv9tzbXmh_6yara_x.exit.i ] ; 4 uses
  %.val = load i8, ptr %i.ab, align 1             ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2737)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.01.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2768
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.b, ptr noundef nonnull align 8 dereferenceable(104) @688, i64 104, i1 false), !noalias !2768
  call void @_RNvXsc_NtNtCs2QVhZO3YFtI_4p38410arithmetic5fieldNtB5_12FieldElementNtCs6fbuawtF7IW_6subtle23ConditionallySelectable18conditional_select(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %.sroa.01.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.aa, i8 noundef %i.mu), !noalias !2738
  %i.mv = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.mw = getelementptr inbounds nuw i8, ptr %i.aa, i64 48
  %.sroa.01.48..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.01.i, i64 48
  call void @_RNvXsc_NtNtCs2QVhZO3YFtI_4p38410arithmetic5fieldNtB5_12FieldElementNtCs6fbuawtF7IW_6subtle23ConditionallySelectable18conditional_select(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %.sroa.01.48..sroa_idx.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.mv, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.mw, i8 noundef %i.mu), !noalias !2738
  switch i8 %.val, label %bb.h [
    i8 0, label %_RINvMsf_Cs6fbuawtF7IW_6subtleINtB6_8CtOptionINtNtCs6YIb6xnOWY1_10primeorder6affine11AffinePointNtCs2QVhZO3YFtI_4p3848NistP384EE8and_thenINtNtCscCwXDEmlcGa_14elliptic_curve10public_key9PublicKeyB1v_ENCNvXs1_B2d_B2a_INtNtB2f_4sec116FromEncodedPointB1v_E18from_encoded_point0ECs7gfv9tzbXmh_6yara_x.exit
    i8 2, label %_RINvMsf_Cs6fbuawtF7IW_6subtleINtB6_8CtOptionINtNtCs6YIb6xnOWY1_10primeorder6affine11AffinePointNtCs2QVhZO3YFtI_4p3848NistP384EE8and_thenINtNtCscCwXDEmlcGa_14elliptic_curve10public_key9PublicKeyB1v_ENCNvXs1_B2d_B2a_INtNtB2f_4sec116FromEncodedPointB1v_E18from_encoded_point0ECs7gfv9tzbXmh_6yara_x.exit
    i8 3, label %_RINvMsf_Cs6fbuawtF7IW_6subtleINtB6_8CtOptionINtNtCs6YIb6xnOWY1_10primeorder6affine11AffinePointNtCs2QVhZO3YFtI_4p3848NistP384EE8and_thenINtNtCscCwXDEmlcGa_14elliptic_curve10public_key9PublicKeyB1v_ENCNvXs1_B2d_B2a_INtNtB2f_4sec116FromEncodedPointB1v_E18from_encoded_point0ECs7gfv9tzbXmh_6yara_x.exit
    i8 4, label %_RINvMsf_Cs6fbuawtF7IW_6subtleINtB6_8CtOptionINtNtCs6YIb6xnOWY1_10primeorder6affine11AffinePointNtCs2QVhZO3YFtI_4p3848NistP384EE8and_thenINtNtCscCwXDEmlcGa_14elliptic_curve10public_key9PublicKeyB1v_ENCNvXs1_B2d_B2a_INtNtB2f_4sec116FromEncodedPointB1v_E18from_encoded_point0ECs7gfv9tzbXmh_6yara_x.exit
    i8 5, label %_RINvMsf_Cs6fbuawtF7IW_6subtleINtB6_8CtOptionINtNtCs6YIb6xnOWY1_10primeorder6affine11AffinePointNtCs2QVhZO3YFtI_4p3848NistP384EE8and_thenINtNtCscCwXDEmlcGa_14elliptic_curve10public_key9PublicKeyB1v_ENCNvXs1_B2d_B2a_INtNtB2f_4sec116FromEncodedPointB1v_E18from_encoded_point0ECs7gfv9tzbXmh_6yara_x.exit
  ]

bb.h:                                             ; preds = %_RNvXs7_NtCs6YIb6xnOWY1_10primeorder6affineINtB5_11AffinePointNtCs2QVhZO3YFtI_4p3848NistP384EINtNtCscCwXDEmlcGa_14elliptic_curve4sec116FromEncodedPointBX_E18from_encoded_pointCs7gfv9tzbXmh_6yara_x.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2769
  store i64 7, ptr %i.a, align 8, !noalias !2770
  call void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @72, i64 noundef 11, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @77, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @73) #34, !noalias !2771
  unreachable

_RINvMsf_Cs6fbuawtF7IW_6subtleINtB6_8CtOptionINtNtCs6YIb6xnOWY1_10primeorder6affine11AffinePointNtCs2QVhZO3YFtI_4p3848NistP384EE8and_thenINtNtCscCwXDEmlcGa_14elliptic_curve10public_key9PublicKeyB1v_ENCNvXs1_B2d_B2a_INtNtB2f_4sec116FromEncodedPointB1v_E18from_encoded_point0ECs7gfv9tzbXmh_6yara_x.exit: ; preds = %_RNvXs7_NtCs6YIb6xnOWY1_10primeorder6affineINtB5_11AffinePointNtCs2QVhZO3YFtI_4p3848NistP384EINtNtCscCwXDEmlcGa_14elliptic_curve4sec116FromEncodedPointBX_E18from_encoded_pointCs7gfv9tzbXmh_6yara_x.exit, %_RNvXs7_NtCs6YIb6xnOWY1_10primeorder6affineINtB5_11AffinePointNtCs2QVhZO3YFtI_4p3848NistP384EINtNtCscCwXDEmlcGa_14elliptic_curve4sec116FromEncodedPointBX_E18from_encoded_pointCs7gfv9tzbXmh_6yara_x.exit, %_RNvXs7_NtCs6YIb6xnOWY1_10primeorder6affineINtB5_11AffinePointNtCs2QVhZO3YFtI_4p3848NistP384EINtNtCscCwXDEmlcGa_14elliptic_curve4sec116FromEncodedPointBX_E18from_encoded_pointCs7gfv9tzbXmh_6yara_x.exit, %_RNvXs7_NtCs6YIb6xnOWY1_10primeorder6affineINtB5_11AffinePointNtCs2QVhZO3YFtI_4p3848NistP384EINtNtCscCwXDEmlcGa_14elliptic_curve4sec116FromEncodedPointBX_E18from_encoded_pointCs7gfv9tzbXmh_6yara_x.exit, %_RNvXs7_NtCs6YIb6xnOWY1_10primeorder6affineINtB5_11AffinePointNtCs2QVhZO3YFtI_4p3848NistP384EINtNtCscCwXDEmlcGa_14elliptic_curve4sec116FromEncodedPointBX_E18from_encoded_pointCs7gfv9tzbXmh_6yara_x.exit
  %i.mx = getelementptr inbounds nuw i8, ptr %i.aa, i64 96
  %i.my = load i8, ptr %i.mx, align 8, !alias.scope !2772, !noalias !2773, !noundef !6
  %i.mz = icmp eq i8 %.val, 0
  %i.na = zext i1 %i.mz to i8
  %i.nb = call noundef i8 @_RINvCs6fbuawtF7IW_6subtle9black_boxhECs61LWG4hqDFC_13crypto_bigint(i8 noundef %i.na) #31, !noalias !2774
  %i.nc = and i8 %i.nb, 1
  %i.nd = xor i8 %i.nc, 1
  %i.ne = call noundef i8 @_RINvCs6fbuawtF7IW_6subtle9black_boxhECs61LWG4hqDFC_13crypto_bigint(i8 noundef %i.nd) #31, !noalias !2774
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.07, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.01.i, i64 96, i1 false), !noalias !2737
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2768
  %i.nf = and i8 %i.ne, %i.mu
  %i.ng = call noundef i8 @_RINvCs6fbuawtF7IW_6subtle9black_boxhECs61LWG4hqDFC_13crypto_bigint(i8 noundef %i.nf) #31, !noalias !2738
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.01.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  %i.nh = icmp eq i8 %i.ng, 1
  br i1 %i.nh, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvMsf_Cs6fbuawtF7IW_6subtleINtB6_8CtOptionINtNtCs6YIb6xnOWY1_10primeorder6affine11AffinePointNtCs2QVhZO3YFtI_4p3848NistP384EE8and_thenINtNtCscCwXDEmlcGa_14elliptic_curve10public_key9PublicKeyB1v_ENCNvXs1_B2d_B2a_INtNtB2f_4sec116FromEncodedPointB1v_E18from_encoded_point0ECs7gfv9tzbXmh_6yara_x.exit
  %i.ni = xor i8 %i.my, 1
  %i.nj = sub i8 0, %i.mu
  %i.nk = and i8 %i.ni, %i.nj
  %i.nl = xor i8 %i.nk, 1
  %i.nm = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.nm, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.07, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.07)
  %.sroa.421.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i8 %i.nl, ptr %.sroa.421.0..sroa_idx, align 8
  br label %bb.k

bb.j:                                             ; preds = %_RINvMsf_Cs6fbuawtF7IW_6subtleINtB6_8CtOptionINtNtCs6YIb6xnOWY1_10primeorder6affine11AffinePointNtCs2QVhZO3YFtI_4p3848NistP384EE8and_thenINtNtCscCwXDEmlcGa_14elliptic_curve10public_key9PublicKeyB1v_ENCNvXs1_B2d_B2a_INtNtB2f_4sec116FromEncodedPointB1v_E18from_encoded_point0ECs7gfv9tzbXmh_6yara_x.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.07)
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j, %switch.lookup, %bb.a, %bb.b
  %storemerge = phi i64 [ 1, %switch.lookup ], [ 1, %bb.b ], [ 1, %bb.a ], [ 0, %bb.i ], [ 1, %bb.j ]
  store i64 %storemerge, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtCscCwXDEmlcGa_14elliptic_curve10public_keyINtB2_9PublicKeyNtCshfSScXElJO5_4p2568NistP256E15from_sec1_bytesCs7gfv9tzbXmh_6yara_x(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 3 uses
  %i.b = alloca [72 x i8], align 8                ; 9 uses
  %.sroa.01.i = alloca [64 x i8], align 8         ; 8 uses
  %i.c = alloca [32 x i8], align 8                ; 4 uses
  %.sroa.0.i.i.i.i.i = alloca [64 x i8], align 8  ; 5 uses
  %i.d = alloca [32 x i8], align 8                ; 4 uses
  %i.e = alloca [32 x i8], align 8                ; 4 uses
  %i.f = alloca [32 x i8], align 8                ; 4 uses
  %i.g = alloca [32 x i8], align 8                ; 4 uses
  %i.h = alloca [32 x i8], align 8                ; 4 uses
  %i.i = alloca [32 x i8], align 8                ; 4 uses
  %i.j = alloca [32 x i8], align 8                ; 4 uses
  %i.k = alloca [32 x i8], align 8                ; 4 uses
  %i.l = alloca [32 x i8], align 8                ; 4 uses
  %i.m = alloca [32 x i8], align 8                ; 4 uses
  %i.n = alloca [32 x i8], align 8                ; 8 uses
  %i.o = alloca [32 x i8], align 1                ; 4 uses
  %i.p = alloca [40 x i8], align 8                ; 5 uses
  %i.q = alloca [32 x i8], align 8                ; 4 uses
  %i.r = alloca [32 x i8], align 8                ; 6 uses
  %i.s = alloca [32 x i8], align 8                ; 4 uses
  %i.t = alloca [32 x i8], align 1                ; 4 uses
  %i.u = alloca [32 x i8], align 8                ; 7 uses
  %i.v = alloca [32 x i8], align 1                ; 4 uses
  %i.w = alloca [32 x i8], align 8                ; 7 uses
  %i.x = alloca [72 x i8], align 8                ; 5 uses
  %i.y = alloca [72 x i8], align 8                ; 5 uses
  %.sroa.0.i.i.i = alloca [64 x i8], align 8      ; 7 uses
  %i.z = alloca [72 x i8], align 8                ; 5 uses
  %i.aa = alloca [72 x i8], align 8               ; 6 uses
  %i.ab = alloca [80 x i8], align 8               ; 7 uses
  %i.ac = alloca [64 x i8], align 8               ; 3 uses
  %i.ad = alloca [32 x i8], align 1               ; 4 uses
  %i.ae = alloca [40 x i8], align 8               ; 5 uses
  %i.af = alloca [65 x i8], align 1               ; 7 uses
  %i.ag = alloca [80 x i8], align 8               ; 16 uses
  %.sroa.11.sroa.0 = alloca [50 x i8], align 8    ; 3 uses
  %.sroa.07 = alloca [64 x i8], align 8           ; 5 uses
  %i.ah = alloca [65 x i8], align 1               ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2842)
  %.not.i = icmp eq i64 %2, 0
  br i1 %.not.i, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = load i8, ptr %1, align 1, !alias.scope !2842, !noalias !2843, !noundef !6 ; 3 uses
  %i.aj = icmp ult i8 %i.ai, 6
  %switch.shifted = lshr i8 61, %i.ai
  %switch.lobit = trunc i8 %switch.shifted to i1
  %or.cond = select i1 %i.aj, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %switch.lookup, label %bb.k

switch.lookup:                                    ; preds = %bb.b
  %i.ak = zext nneg i8 %i.ai to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvMNtCscCwXDEmlcGa_14elliptic_curve10public_keyINtB2_9PublicKeyNtCshfSScXElJO5_4p2568NistP256E15from_sec1_bytesCs7gfv9tzbXmh_6yara_x, i64 %i.ak
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %.not41.i = icmp eq i64 %2, %switch.ext
  br i1 %.not41.i, label %bb.c, label %bb.k

bb.c:                                             ; preds = %switch.lookup
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !2844
  call void @_RINvXsg_CscIoQ8QYNr5u_13generic_arrayINtB6_12GenericArrayhINtNtCs5JhIwYIM6tq_7typenum4uint4UIntIBV_IBV_IBV_IBV_IBV_IBV_NtBX_5UTermNtNtBZ_3bit2B1ENtB26_2B0EB2j_EB2j_EB2j_EB2j_EB24_EEINtNtB6_8sequence15GenericSequencehE8generateNCNvXNtB6_5implsBz_NtNtCskKLDkoKarTP_4core7default7Default7default0ECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull sret([65 x i8]) align 1 captures(none) dereferenceable(65) %i.af), !noalias !2844
  call void @_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull %i.af, i64 noundef range(i64 0, -9223372036854775808) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1), !noalias !2843
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.ah, ptr noundef nonnull align 1 dereferenceable(7) %i.af, i64 7, i1 false)
  %.sroa.9.1..sroa_idx4 = getelementptr inbounds nuw i8, ptr %i.af, i64 7
  %.sroa.9.1.copyload5 = load i64, ptr %.sroa.9.1..sroa_idx4, align 1, !noalias !2842
  %.sroa.11.1..sroa_idx6 = getelementptr inbounds nuw i8, ptr %i.af, i64 15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(50) %.sroa.11.sroa.0, ptr noundef nonnull align 1 dereferenceable(50) %.sroa.11.1..sroa_idx6, i64 50, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !2844
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 7
  store i64 %.sroa.9.1.copyload5, ptr %.sroa.4.0..sroa_idx, align 1
  %.sroa.516.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(50) %.sroa.516.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(50) %.sroa.11.sroa.0, i64 50, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.07)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  call void @llvm.experimental.noalias.scope.decl(metadata !2845)
  call void @llvm.experimental.noalias.scope.decl(metadata !2846)
  call void @llvm.experimental.noalias.scope.decl(metadata !2847)
  %.val3.i.i = load i8, ptr %i.ah, align 1, !alias.scope !2848, !noalias !2849, !noundef !6 ; 5 uses
  switch i8 %.val3.i.i, label %bb.d [
    i8 0, label %bb.e
    i8 2, label %_RNvMNtCs668niwp5TX9_4sec15pointINtB2_12EncodedPointINtNtCs5JhIwYIM6tq_7typenum4uint4UIntIBO_IBO_IBO_IBO_IBO_NtBQ_5UTermNtNtBS_3bit2B1ENtB1V_2B0EB28_EB28_EB28_EB28_EE3tagCs7gfv9tzbXmh_6yara_x.exit4.i.i
    i8 3, label %_RNvMNtCs668niwp5TX9_4sec15pointINtB2_12EncodedPointINtNtCs5JhIwYIM6tq_7typenum4uint4UIntIBO_IBO_IBO_IBO_IBO_NtBQ_5UTermNtNtBS_3bit2B1ENtB1V_2B0EB28_EB28_EB28_EB28_EE3tagCs7gfv9tzbXmh_6yara_x.exit4.i.i
    i8 4, label %_RNvMNtCs668niwp5TX9_4sec15pointINtB2_12EncodedPointINtNtCs5JhIwYIM6tq_7typenum4uint4UIntIBO_IBO_IBO_IBO_IBO_NtBQ_5UTermNtNtBS_3bit2B1ENtB1V_2B0EB28_EB28_EB28_EB28_EE3tagCs7gfv9tzbXmh_6yara_x.exit4.i.i
    i8 5, label %_RNvMNtCs668niwp5TX9_4sec15pointINtB2_12EncodedPointINtNtCs5JhIwYIM6tq_7typenum4uint4UIntIBO_IBO_IBO_IBO_IBO_NtBQ_5UTermNtNtBS_3bit2B1ENtB1V_2B0EB28_EB28_EB28_EB28_EE3tagCs7gfv9tzbXmh_6yara_x.exit4.i.i
  ]

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !2850
  store i64 7, ptr %i.ac, align 8, !noalias !2851
  call void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @72, i64 noundef 11, ptr noundef nonnull %i.ac, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @77, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @73) #34, !noalias !2850
  unreachable

_RNvMNtCs668niwp5TX9_4sec15pointINtB2_12EncodedPointINtNtCs5JhIwYIM6tq_7typenum4uint4UIntIBO_IBO_IBO_IBO_IBO_NtBQ_5UTermNtNtBS_3bit2B1ENtB1V_2B0EB28_EB28_EB28_EB28_EE3tagCs7gfv9tzbXmh_6yara_x.exit4.i.i: ; preds = %bb.c, %bb.c, %bb.c, %bb.c
end_hunk_0
begin_hunk_1_@_RNvXs3z_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos5machoNtB6_8DysymtabNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt:bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store ptr %i.f, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  store ptr @519, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  store ptr %i.g, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  store ptr @519, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  store ptr %i.h, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  store ptr @519, ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  store ptr %i.i, ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  store ptr @519, ptr %i.ai, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  store ptr %i.j, ptr %i.aj, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  store ptr @519, ptr %i.ak, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  store ptr %i.k, ptr %i.al, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  store ptr @519, ptr %i.am, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  store ptr %i.l, ptr %i.an, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  store ptr @519, ptr %i.ao, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 176
  store ptr %i.m, ptr %i.ap, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 184
  store ptr @519, ptr %i.aq, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 192
  store ptr %i.n, ptr %i.ar, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 200
  store ptr @519, ptr %i.as, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.b, i64 208
  store ptr %i.o, ptr %i.at, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.b, i64 216
  store ptr @519, ptr %i.au, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.b, i64 224
  store ptr %i.p, ptr %i.av, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 232
  store ptr @519, ptr %i.aw, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 240
  store ptr %i.q, ptr %i.ax, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 248
  store ptr @519, ptr %i.ay, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.b, i64 256
  store ptr %i.r, ptr %i.az, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.b, i64 264
  store ptr @519, ptr %i.ba, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.b, i64 272
  store ptr %i.s, ptr %i.bb, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.b, i64 280
  store ptr @519, ptr %i.bc, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.b, i64 288
  store ptr %i.a, ptr %i.bd, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.b, i64 296
  store ptr @512, ptr %i.be, align 8
  %i.bf = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter26debug_struct_fields_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @885, i64 noundef 8, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) @884, i64 noundef 19, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.b, i64 noundef 19)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i1 %i.bf
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvXs4_NtCs6YIb6xnOWY1_10primeorder6affineINtB5_11AffinePointNtCs2QVhZO3YFtI_4p3848NistP384EINtNtCscCwXDEmlcGa_14elliptic_curve5point15DecompressPointBX_E10decompressCs7gfv9tzbXmh_6yara_x(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(112) initializes((0, 105)) %0, ptr noalias nofree noundef nonnull readonly captures(none) dereferenceable(48) %1, i8 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 9 uses
  %i.b = alloca [48 x i8], align 8                ; 4 uses
  %i.c = alloca [48 x i8], align 8                ; 11 uses
  %i.d = alloca [104 x i8], align 8               ; 6 uses
  %i.e = alloca [56 x i8], align 8                ; 5 uses
  %i.f = alloca [48 x i8], align 8                ; 9 uses
  %i.g = alloca [48 x i8], align 8                ; 4 uses
  %i.h = alloca [48 x i8], align 8                ; 9 uses
  %i.i = alloca [48 x i8], align 8                ; 9 uses
  %i.j = alloca [48 x i8], align 8                ; 4 uses
  %i.k = alloca [48 x i8], align 8                ; 8 uses
  %i.l = alloca [48 x i8], align 1                ; 4 uses
  %i.m = alloca [56 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(48) %i.l, ptr noundef nonnull align 1 dereferenceable(48) %1, i64 48, i1 false)
  call void @_RNvMs4_NtNtCs2QVhZO3YFtI_4p38410arithmetic5fieldNtB5_12FieldElement10from_bytes(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.m, ptr noalias nofree noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(48) %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.experimental.noalias.scope.decl(metadata !5672)
  call void @llvm.experimental.noalias.scope.decl(metadata !5673)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !5674
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !5674
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.j, i8 0, i64 48, i1 false), !alias.scope !5675, !noalias !5674
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  %i.o = load i8, ptr %i.n, align 8, !alias.scope !5673, !noalias !5672, !noundef !6 ; 2 uses
  call void @_RNvXsc_NtNtCs2QVhZO3YFtI_4p38410arithmetic5fieldNtB5_12FieldElementNtCs6fbuawtF7IW_6subtle23ConditionallySelectable18conditional_select(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.k, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.j, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.m, i8 noundef %i.o), !noalias !5672
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !5676
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !5676
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !5676
  call fastcc void @_RNvXsA_NtNtCs2QVhZO3YFtI_4p38410arithmetic5fieldNtB5_12FieldElementINtNtNtCskKLDkoKarTP_4core3ops5arith3MulRBK_E3mul(ptr noalias nofree noundef align 8 captures(none) dereferenceable(48) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.k, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.k) #35, !noalias !5677
  call fastcc void @_RNvXsA_NtNtCs2QVhZO3YFtI_4p38410arithmetic5fieldNtB5_12FieldElementINtNtNtCskKLDkoKarTP_4core3ops5arith3MulRBK_E3mul(ptr noalias nofree noundef align 8 captures(none) dereferenceable(48) %i.h, ptr noalias nofree noundef align 8 captures(address) dereferenceable(48) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.k) #35, !noalias !5677
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !5676
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !5676
  call fastcc void @_RNvXsA_NtNtCs2QVhZO3YFtI_4p38410arithmetic5fieldNtB5_12FieldElementINtNtNtCskKLDkoKarTP_4core3ops5arith3MulRBK_E3mul(ptr noalias nofree noundef align 8 captures(none) dereferenceable(48) %i.f, ptr noalias nofree noundef align 8 captures(address) dereferenceable(48) @69, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.k) #35, !noalias !5677
  call void @llvm.experimental.noalias.scope.decl(metadata !5678)
  call void @llvm.experimental.noalias.scope.decl(metadata !5679)
  call void @llvm.experimental.noalias.scope.decl(metadata !5680)
  call void @llvm.experimental.noalias.scope.decl(metadata !5681)
  %i.p = load i64, ptr %i.h, align 8, !alias.scope !5682, !noalias !5683, !noundef !6 ; 2 uses
  %i.q = load i64, ptr %i.f, align 8, !alias.scope !5684, !noalias !5685, !noundef !6
  %add.narrowed.i.i.i.i = add i64 %i.q, %i.p      ; 3 uses
  %add.narrowed.overflow.i.i.i.i = icmp ult i64 %add.narrowed.i.i.i.i, %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !5682, !noalias !5683, !noundef !6
  %i.t = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.u = load i64, ptr %i.t, align 8, !alias.scope !5684, !noalias !5685, !noundef !6
  %i.v = zext i1 %add.narrowed.overflow.i.i.i.i to i128
  %i.w = zext i64 %i.s to i128
  %i.x = add nuw nsw i128 %i.v, %i.w
  %i.y = zext i64 %i.u to i128
  %i.z = add nuw nsw i128 %i.x, %i.y              ; 3 uses
  %i.aa = lshr i128 %i.z, 64
  %i.ab = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !alias.scope !5682, !noalias !5683, !noundef !6
  %i.ad = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.ae = load i64, ptr %i.ad, align 8, !alias.scope !5684, !noalias !5685, !noundef !6
  %i.af = zext i64 %i.ac to i128
  %i.ag = zext i64 %i.ae to i128
  %i.ah = add nuw nsw i128 %i.ag, %i.af
  %i.ai = add nuw nsw i128 %i.ah, %i.aa           ; 3 uses
  %i.aj = lshr i128 %i.ai, 64
  %i.ak = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.al = load i64, ptr %i.ak, align 8, !alias.scope !5682, !noalias !5683, !noundef !6
  %i.am = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.an = load i64, ptr %i.am, align 8, !alias.scope !5684, !noalias !5685, !noundef !6
  %i.ao = zext i64 %i.al to i128
  %i.ap = zext i64 %i.an to i128
  %i.aq = add nuw nsw i128 %i.ap, %i.ao
  %i.ar = add nuw nsw i128 %i.aq, %i.aj           ; 3 uses
  %i.as = lshr i128 %i.ar, 64
  %i.at = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.au = load i64, ptr %i.at, align 8, !alias.scope !5682, !noalias !5683, !noundef !6
  %i.av = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.aw = load i64, ptr %i.av, align 8, !alias.scope !5684, !noalias !5685, !noundef !6
  %i.ax = zext i64 %i.au to i128
  %i.ay = zext i64 %i.aw to i128
  %i.az = add nuw nsw i128 %i.ay, %i.ax
  %i.ba = add nuw nsw i128 %i.az, %i.as           ; 3 uses
  %i.bb = lshr i128 %i.ba, 64
  %i.bc = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.bd = load i64, ptr %i.bc, align 8, !alias.scope !5682, !noalias !5683, !noundef !6
  %i.be = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.bf = load i64, ptr %i.be, align 8, !alias.scope !5684, !noalias !5685, !noundef !6
  %i.bg = zext i64 %i.bd to i128
  %i.bh = zext i64 %i.bf to i128
  %i.bi = add nuw nsw i128 %i.bh, %i.bg
  %i.bj = add nuw nsw i128 %i.bi, %i.bb           ; 3 uses
  %i.bk = lshr i128 %i.bj, 64
  %i.bl = zext i64 %add.narrowed.i.i.i.i to i128
  %i.bm = add nsw i128 %i.bl, -4294967295         ; 2 uses
  %i.bn = lshr i128 %i.bm, 64
  %i.bo = trunc i128 %i.bm to i64
  %i.bp = and i128 %i.z, 18446744073709551615
  %i.bq = sub nsw i128 0, %i.bn
  %i.br = and i128 %i.bq, 255
  %i.bs = sub nsw i128 %i.bp, %i.br
  %i.bt = add nsw i128 %i.bs, -18446744069414584320 ; 2 uses
  %i.bu = lshr i128 %i.bt, 64
  %i.bv = trunc i128 %i.bt to i64
  %i.bw = and i128 %i.ai, 18446744073709551615
  %i.bx = sub nsw i128 0, %i.bu
  %i.by = and i128 %i.bx, 255
  %i.bz = sub nsw i128 %i.bw, %i.by
  %i.ca = add nsw i128 %i.bz, -18446744073709551614 ; 2 uses
  %i.cb = lshr i128 %i.ca, 64
  %i.cc = trunc i128 %i.ca to i64
  %i.cd = and i128 %i.ar, 18446744073709551615
  %i.ce = sub nsw i128 0, %i.cb
  %i.cf = and i128 %i.ce, 255
  %i.cg = sub nsw i128 %i.cd, %i.cf
  %i.ch = add nsw i128 %i.cg, -18446744073709551615 ; 2 uses
  %i.ci = lshr i128 %i.ch, 64
  %i.cj = trunc i128 %i.ch to i64
  %i.ck = and i128 %i.ba, 18446744073709551615
  %i.cl = sub nsw i128 0, %i.ci
  %i.cm = and i128 %i.cl, 255
  %i.cn = sub nsw i128 %i.ck, %i.cm
  %i.co = add nsw i128 %i.cn, -18446744073709551615 ; 2 uses
  %i.cp = lshr i128 %i.co, 64
  %i.cq = trunc i128 %i.co to i64
  %i.cr = and i128 %i.bj, 18446744073709551615
  %i.cs = sub nsw i128 0, %i.cp
  %i.ct = and i128 %i.cs, 255
  %i.cu = sub nsw i128 %i.cr, %i.ct
  %i.cv = add nsw i128 %i.cu, -18446744073709551615 ; 2 uses
  %i.cw = lshr i128 %i.cv, 64
  %i.cx = trunc i128 %i.cv to i64
  %i.cy = sub nsw i128 0, %i.cw
  %i.cz = and i128 %i.cy, 255
  %i.da = sub nsw i128 %i.bk, %i.cz
  %3 = lshr i128 %i.da, 64                        ; 6 uses
  %i.db = trunc nuw i128 %3 to i64                ; 2 uses
  %4 = and i64 %add.narrowed.i.i.i.i, %i.db
  %5 = xor i64 %i.db, -1                          ; 6 uses
  %i.dc = and i64 %5, %i.bo
  %i.dd = or i64 %4, %i.dc                        ; 2 uses
  %i.de = and i128 %3, %i.z
  %i.df = and i64 %5, %i.bv
  %i.dg = and i128 %3, %i.ai
  %i.dh = and i64 %5, %i.cc
  %i.di = and i128 %3, %i.ar
  %i.dj = and i64 %5, %i.cj
  %i.dk = and i128 %3, %i.ba
  %6 = and i64 %5, %i.cq
  %7 = and i128 %3, %i.bj
  %8 = and i64 %5, %i.cx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !5676
  %add.narrowed.i.i1.i.i = add i64 %i.dd, 581395848458481100 ; 2 uses
  %add.narrowed.overflow.i.i2.i.i = icmp ugt i64 %i.dd, -581395848458481101
  %i.dl = zext i1 %add.narrowed.overflow.i.i2.i.i to i128
  %i.dm = zext i64 %i.df to i128
  %9 = or i128 %i.de, %i.dm
  %i.dn = add nuw nsw i128 %9, 17809957346689692396
  %i.do = add nuw nsw i128 %i.dn, %i.dl           ; 3 uses
  %i.dp = lshr i128 %i.do, 64
  %i.dq = zext i64 %i.dh to i128
  %10 = or i128 %i.dg, %i.dq
  %i.dr = add nuw nsw i128 %10, 8643006485390950958
  %i.ds = add nuw nsw i128 %i.dr, %i.dp           ; 3 uses
  %i.dt = lshr i128 %i.ds, 64
  %i.du = zext i64 %i.dj to i128
  %11 = or i128 %i.di, %i.du
  %i.dv = add nuw nsw i128 %11, 16372638458395724514
  %i.dw = add nuw nsw i128 %i.dv, %i.dt           ; 3 uses
  %i.dx = lshr i128 %i.dw, 64
  %i.dy = zext i64 %6 to i128
  %12 = or i128 %i.dk, %i.dy
  %i.dz = add nuw nsw i128 %12, 13126622871277412500
  %i.ea = add nuw nsw i128 %i.dz, %i.dx           ; 3 uses
  %i.eb = lshr i128 %i.ea, 64
  %i.ec = zext i64 %8 to i128
  %13 = or i128 %7, %i.ec
  %i.ed = add nuw nsw i128 %13, 14774077593024970745
  %i.ee = add nuw nsw i128 %i.ed, %i.eb           ; 3 uses
  %i.ef = lshr i128 %i.ee, 64
  %i.eg = zext i64 %add.narrowed.i.i1.i.i to i128
  %i.eh = add nsw i128 %i.eg, -4294967295         ; 2 uses
  %i.ei = lshr i128 %i.eh, 64
  %i.ej = trunc i128 %i.eh to i64
  %i.ek = and i128 %i.do, 18446744073709551615
  %i.el = sub nsw i128 0, %i.ei
  %i.em = and i128 %i.el, 255
  %i.en = sub nsw i128 %i.ek, %i.em
  %i.eo = add nsw i128 %i.en, -18446744069414584320 ; 2 uses
  %i.ep = lshr i128 %i.eo, 64
  %i.eq = trunc i128 %i.eo to i64
  %i.er = and i128 %i.ds, 18446744073709551615
  %i.es = sub nsw i128 0, %i.ep
  %i.et = and i128 %i.es, 255
  %i.eu = sub nsw i128 %i.er, %i.et
  %i.ev = add nsw i128 %i.eu, -18446744073709551614 ; 2 uses
  %i.ew = lshr i128 %i.ev, 64
  %i.ex = trunc i128 %i.ev to i64
  %i.ey = and i128 %i.dw, 18446744073709551615
  %i.ez = sub nsw i128 0, %i.ew
  %i.fa = and i128 %i.ez, 255
  %i.fb = sub nsw i128 %i.ey, %i.fa
  %i.fc = add nsw i128 %i.fb, -18446744073709551615 ; 2 uses
  %i.fd = lshr i128 %i.fc, 64
  %i.fe = trunc i128 %i.fc to i64
  %i.ff = and i128 %i.ea, 18446744073709551615
  %i.fg = sub nsw i128 0, %i.fd
  %i.fh = and i128 %i.fg, 255
  %i.fi = sub nsw i128 %i.ff, %i.fh
  %i.fj = add nsw i128 %i.fi, -18446744073709551615 ; 2 uses
  %i.fk = lshr i128 %i.fj, 64
  %i.fl = trunc i128 %i.fj to i64
  %i.fm = and i128 %i.ee, 18446744073709551615
  %i.fn = sub nsw i128 0, %i.fk
  %i.fo = and i128 %i.fn, 255
  %i.fp = sub nsw i128 %i.fm, %i.fo
  %i.fq = add nsw i128 %i.fp, -18446744073709551615 ; 2 uses
  %i.fr = lshr i128 %i.fq, 64
  %i.fs = trunc i128 %i.fq to i64
  %i.ft = sub nsw i128 0, %i.fr
  %i.fu = and i128 %i.ft, 255
  %i.fv = sub nsw i128 %i.ef, %i.fu
  %14 = lshr i128 %i.fv, 64                       ; 6 uses
  %i.fw = trunc nuw i128 %14 to i64               ; 2 uses
  %15 = and i64 %add.narrowed.i.i1.i.i, %i.fw
  %i.fx = xor i64 %i.fw, -1                       ; 6 uses
  %16 = and i64 %i.fx, %i.ej
  %17 = or i64 %15, %16
  %i.fy = and i128 %14, %i.do
  %i.fz = trunc nuw i128 %i.fy to i64
  %i.ga = and i64 %i.fx, %i.eq
  %i.gb = or i64 %i.ga, %i.fz
  %i.gc = and i128 %14, %i.ds
  %i.gd = trunc nuw i128 %i.gc to i64
  %i.ge = and i64 %i.fx, %i.ex
  %i.gf = or i64 %i.ge, %i.gd
  %i.gg = and i128 %14, %i.dw
  %i.gh = trunc nuw i128 %i.gg to i64
  %i.gi = and i64 %i.fx, %i.fe
  %i.gj = or i64 %i.gi, %i.gh
  %i.gk = and i128 %14, %i.ea
  %i.gl = trunc nuw i128 %i.gk to i64
  %i.gm = and i64 %i.fx, %i.fl
  %i.gn = or i64 %i.gm, %i.gl
  %i.go = and i128 %14, %i.ee
  %i.gp = trunc nuw i128 %i.go to i64
  %i.gq = and i64 %i.fx, %i.fs
  %i.gr = or i64 %i.gq, %i.gp
  store i64 %17, ptr %i.i, align 8, !alias.scope !5686, !noalias !5687
  %.sroa.42.0..sroa_idx.i3.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 %i.gb, ptr %.sroa.42.0..sroa_idx.i3.i.i, align 8, !alias.scope !5686, !noalias !5687
  %.sroa.53.0..sroa_idx.i4.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i64 %i.gf, ptr %.sroa.53.0..sroa_idx.i4.i.i, align 8, !alias.scope !5686, !noalias !5687
  %.sroa.64.0..sroa_idx.i5.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store i64 %i.gj, ptr %.sroa.64.0..sroa_idx.i5.i.i, align 8, !alias.scope !5686, !noalias !5687
  %.sroa.75.0..sroa_idx.i6.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  store i64 %i.gn, ptr %.sroa.75.0..sroa_idx.i6.i.i, align 8, !alias.scope !5686, !noalias !5687
  %.sroa.86.0..sroa_idx.i7.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  store i64 %i.gr, ptr %.sroa.86.0..sroa_idx.i7.i.i, align 8, !alias.scope !5686, !noalias !5687
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !5676
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !5676
  call void @_RNvXsh_NtNtCs2QVhZO3YFtI_4p38410arithmetic5fieldNtB5_12FieldElementNtCscwZvxbnkrl_2ff5Field4sqrt(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.i), !noalias !5688
  call void @llvm.experimental.noalias.scope.decl(metadata !5689)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !5690
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !5690
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, i8 0, i64 48, i1 false), !alias.scope !5691, !noalias !5690
  %i.gs = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.gt = load i8, ptr %i.gs, align 8, !alias.scope !5689, !noalias !5692, !noundef !6 ; 2 uses
  call void @_RNvXsc_NtNtCs2QVhZO3YFtI_4p38410arithmetic5fieldNtB5_12FieldElementNtCs6fbuawtF7IW_6subtle23ConditionallySelectable18conditional_select(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.e, i8 noundef %i.gt), !noalias !5693
  call void @llvm.experimental.noalias.scope.decl(metadata !5694)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5695
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.c, align 8, !alias.scope !5694, !noalias !5696
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.4.0.copyload.i.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !alias.scope !5694, !noalias !5696
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.5.0.copyload.i.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8, !alias.scope !5694, !noalias !5696
  %.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.6.0.copyload.i.i.i.i = load i64, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !alias.scope !5694, !noalias !5696
  %.sroa.7.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.sroa.7.0.copyload.i.i.i.i = load i64, ptr %.sroa.7.0..sroa_idx.i.i.i.i, align 8, !alias.scope !5694, !noalias !5696
  %.sroa.8.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %.sroa.8.0.copyload.i.i.i.i = load i64, ptr %.sroa.8.0..sroa_idx.i.i.i.i, align 8, !alias.scope !5694, !noalias !5696
  %i.gu = zext i64 %.sroa.0.0.copyload.i.i.i.i to i128
  %i.gv = sub nsw i128 0, %i.gu                   ; 2 uses
  %i.gw = lshr i128 %i.gv, 64
  %i.gx = sub nsw i128 0, %i.gw
  %i.gy = and i128 %i.gx, 255
  %i.gz = zext i64 %.sroa.4.0.copyload.i.i.i.i to i128
  %i.ha = add nuw nsw i128 %i.gy, %i.gz
  %i.hb = sub nsw i128 0, %i.ha                   ; 2 uses
  %i.hc = lshr i128 %i.hb, 64
  %i.hd = sub nsw i128 0, %i.hc
  %i.he = and i128 %i.hd, 255
  %i.hf = zext i64 %.sroa.5.0.copyload.i.i.i.i to i128
  %i.hg = add nuw nsw i128 %i.he, %i.hf
  %i.hh = sub nsw i128 0, %i.hg                   ; 2 uses
  %i.hi = lshr i128 %i.hh, 64
  %i.hj = sub nsw i128 0, %i.hi
  %i.hk = and i128 %i.hj, 255
  %i.hl = zext i64 %.sroa.6.0.copyload.i.i.i.i to i128
  %i.hm = add nuw nsw i128 %i.hk, %i.hl
  %i.hn = sub nsw i128 0, %i.hm                   ; 2 uses
  %i.ho = lshr i128 %i.hn, 64
  %i.hp = sub nsw i128 0, %i.ho
  %i.hq = and i128 %i.hp, 255
  %i.hr = zext i64 %.sroa.7.0.copyload.i.i.i.i to i128
  %i.hs = add nuw nsw i128 %i.hq, %i.hr
  %i.ht = sub nsw i128 0, %i.hs                   ; 2 uses
  %i.hu = lshr i128 %i.ht, 64
  %i.hv = sub nsw i128 0, %i.hu
  %i.hw = and i128 %i.hv, 255
  %i.hx = zext i64 %.sroa.8.0.copyload.i.i.i.i to i128
  %i.hy = add nuw nsw i128 %i.hw, %i.hx           ; 2 uses
  %i.hz = sub nsw i128 0, %i.hy
  %i.ia = lshr i128 %i.hz, 64                     ; 6 uses
  %i.ib = and i128 %i.gv, 18446744073709551615
  %i.ic = and i128 %i.ia, 4294967295
  %i.id = add nuw nsw i128 %i.ic, %i.ib           ; 2 uses
  %i.ie = trunc i128 %i.id to i64
  %i.if = lshr i128 %i.id, 64
  %i.ig = and i128 %i.hb, 18446744073709551615
  %i.ih = and i128 %i.ia, 18446744069414584320
  %i.ii = add nuw nsw i128 %i.ih, %i.ig
  %i.ij = add nuw nsw i128 %i.ii, %i.if           ; 2 uses
  %i.ik = trunc i128 %i.ij to i64
  %i.il = lshr i128 %i.ij, 64
  %i.im = and i128 %i.hh, 18446744073709551615
  %i.in = and i128 %i.ia, 18446744073709551614
  %i.io = add nuw nsw i128 %i.in, %i.im
  %i.ip = add nuw nsw i128 %i.io, %i.il           ; 2 uses
  %i.iq = trunc i128 %i.ip to i64
  %i.ir = lshr i128 %i.ip, 64
  %i.is = and i128 %i.hn, 18446744073709551615
  %i.it = add nuw nsw i128 %i.ia, %i.is
  %i.iu = add nuw nsw i128 %i.it, %i.ir           ; 2 uses
  %i.iv = trunc i128 %i.iu to i64
  %i.iw = lshr i128 %i.iu, 64
  %i.ix = and i128 %i.ht, 18446744073709551615
  %i.iy = add nuw nsw i128 %i.ia, %i.ix
  %i.iz = add nuw nsw i128 %i.iy, %i.iw           ; 2 uses
  %i.ja = trunc i128 %i.iz to i64
  %i.jb = lshr i128 %i.iz, 64
  %i.jc = sub nsw i128 %i.ia, %i.hy
  %i.jd = add nsw i128 %i.jc, %i.jb
  %i.je = trunc i128 %i.jd to i64
  store i64 %i.ie, ptr %i.a, align 8, !alias.scope !5697, !noalias !5698
  %.sroa.42.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.ik, ptr %.sroa.42.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !5697, !noalias !5698
  %.sroa.53.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.iq, ptr %.sroa.53.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !5697, !noalias !5698
  %.sroa.64.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %i.iv, ptr %.sroa.64.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !5697, !noalias !5698
  %.sroa.75.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 %i.ja, ptr %.sroa.75.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !5697, !noalias !5698
  %.sroa.86.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 %i.je, ptr %.sroa.86.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !5697, !noalias !5698
  %i.jf = call noundef i8 @_RNvMs4_NtNtCs2QVhZO3YFtI_4p38410arithmetic5fieldNtB5_12FieldElement6is_odd(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.c), !noalias !5699
  %i.jg = xor i8 %i.jf, %2
  %i.jh = call noundef i8 @_RINvCs6fbuawtF7IW_6subtle9black_boxhECs61LWG4hqDFC_13crypto_bigint(i8 noundef %i.jg) #31, !noalias !5699
  %i.ji = and i8 %i.jh, 1
  %i.jj = xor i8 %i.ji, 1
  %i.jk = call noundef i8 @_RINvCs6fbuawtF7IW_6subtle9black_boxhECs61LWG4hqDFC_13crypto_bigint(i8 noundef %i.jj) #31, !noalias !5699
  %i.jl = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  call void @_RNvXsc_NtNtCs2QVhZO3YFtI_4p38410arithmetic5fieldNtB5_12FieldElementNtCs6fbuawtF7IW_6subtle23ConditionallySelectable18conditional_select(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.jl, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.c, i8 noundef %i.jk), !noalias !5672
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5695
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.d, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.k, i64 48, i1 false), !noalias !5674
  %i.jm = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  store i8 0, ptr %i.jm, align 8, !noalias !5674
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !5690
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5690
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !5676
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !5676
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !5674
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !5674
  %i.jn = and i8 %i.gt, %i.o
  %i.jo = call noundef i8 @_RINvCs6fbuawtF7IW_6subtle9black_boxhECs61LWG4hqDFC_13crypto_bigint(i8 noundef %i.jn) #31, !noalias !5672
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(104) %i.d, i64 104, i1 false), !noalias !5673
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i8 %i.jo, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !5672, !noalias !5673
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvXs4_NtCs6YIb6xnOWY1_10primeorder6affineINtB5_11AffinePointNtCshfSScXElJO5_4p2568NistP256EINtNtCscCwXDEmlcGa_14elliptic_curve5point15DecompressPointBX_E10decompressCs7gfv9tzbXmh_6yara_x(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(80) initializes((0, 73)) %0, ptr noalias nofree noundef nonnull readonly captures(none) dereferenceable(32) %1, i8 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 4 uses
  %i.d = alloca [32 x i8], align 8                ; 6 uses
  %i.e = alloca [72 x i8], align 8                ; 6 uses
  %i.f = alloca [32 x i8], align 8                ; 4 uses
  %i.g = alloca [40 x i8], align 8                ; 5 uses
  %i.h = alloca [32 x i8], align 8                ; 4 uses
  %i.i = alloca [32 x i8], align 8                ; 4 uses
  %i.j = alloca [32 x i8], align 8                ; 4 uses
  %i.k = alloca [32 x i8], align 8                ; 4 uses
  %i.l = alloca [32 x i8], align 8                ; 4 uses
  %i.m = alloca [32 x i8], align 8                ; 4 uses
  %i.n = alloca [32 x i8], align 8                ; 4 uses
  %i.o = alloca [32 x i8], align 8                ; 4 uses
  %i.p = alloca [32 x i8], align 8                ; 8 uses
  %i.q = alloca [32 x i8], align 1                ; 4 uses
  %i.r = alloca [40 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.q, ptr noundef nonnull align 1 dereferenceable(32) %1, i64 32, i1 false)
  call void @_RNvMs4_NtNtCshfSScXElJO5_4p25610arithmetic5fieldNtB5_12FieldElement10from_bytes(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.r, ptr noalias nofree noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(32) %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.experimental.noalias.scope.decl(metadata !5718)
  call void @llvm.experimental.noalias.scope.decl(metadata !5719)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !5720
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !5720
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.o, i8 0, i64 32, i1 false), !alias.scope !5721, !noalias !5720
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.t = load i8, ptr %i.s, align 8, !alias.scope !5719, !noalias !5718, !noundef !6 ; 2 uses
  call void @_RNvXsc_NtNtCshfSScXElJO5_4p25610arithmetic5fieldNtB5_12FieldElementNtCs6fbuawtF7IW_6subtle23ConditionallySelectable18conditional_select(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.p, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.o, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.r, i8 noundef %i.t), !noalias !5718
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !5722
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !5722
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !5722
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !5722
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !5722
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.j, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.p, i64 32, i1 false), !noalias !5723
  call void @_RNvNtNtNtCshfSScXElJO5_4p25610arithmetic5field10field_impl6fe_mul(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.k, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.j, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.p), !noalias !5724
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !5722
  call void @_RNvNtNtNtCshfSScXElJO5_4p25610arithmetic5field10field_impl6fe_mul(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.l, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.k, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.p), !noalias !5724
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !5722
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !5722
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !5722
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) @70, i64 32, i1 false), !noalias !5722
  call void @_RNvNtNtNtCshfSScXElJO5_4p25610arithmetic5field10field_impl6fe_mul(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.p), !noalias !5724
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !5722
  call void @_RNvNtNtNtCshfSScXElJO5_4p25610arithmetic5field10field_impl6fe_add(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.m, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.l, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.i), !noalias !5724
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !5722
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !5722
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef nonnull align 8 dereferenceable(32) @71, i64 32, i1 false), !noalias !5722
  call void @_RNvNtNtNtCshfSScXElJO5_4p25610arithmetic5field10field_impl6fe_add(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.n, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.m, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.h), !noalias !5724
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !5722
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !5722
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !5722
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !5722
  call void @_RNvXsh_NtNtCshfSScXElJO5_4p25610arithmetic5fieldNtB5_12FieldElementNtCscwZvxbnkrl_2ff5Field4sqrt(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.n), !noalias !5724
  call void @llvm.experimental.noalias.scope.decl(metadata !5725)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !5726
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !5726
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, i8 0, i64 32, i1 false), !alias.scope !5727, !noalias !5726
  %i.u = getelementptr inbounds nuw i8, ptr %i.g, i64 32
end_hunk_1
begin_hunk_2_@_RNvXsA_NtNtCs2QVhZO3YFtI_4p38410arithmetic5fieldNtB5_12FieldElementINtNtNtCskKLDkoKarTP_4core3ops5arith3MulRBK_E3mul:bb.a
  %i.xc = add nuw nsw i128 %i.xb, %i.wy           ; 2 uses
  %i.xd = lshr i128 %i.xc, 64
  %i.xe = and i128 %i.uy, 18446744073709551615
  %i.xf = and i128 %i.wi, 18446744073709551615
  %i.xg = add nuw nsw i128 %i.xf, %i.xe
  %i.xh = add nuw nsw i128 %i.xg, %i.xd           ; 2 uses
  %i.xi = lshr i128 %i.xh, 64
  %i.xj = and i128 %i.vd, 18446744073709551615
  %i.xk = and i128 %i.wl, 18446744073709551615
  %i.xl = add nuw nsw i128 %i.xk, %i.xj
  %i.xm = add nuw nsw i128 %i.xl, %i.xi           ; 2 uses
  %i.xn = lshr i128 %i.xm, 64
  %i.xo = and i128 %i.vi, 18446744073709551615
  %i.xp = and i128 %i.wn, 18446744073709551615
  %i.xq = add nuw nsw i128 %i.xp, %i.xo
  %i.xr = add nuw nsw i128 %i.xq, %i.xn           ; 2 uses
  %i.xs = lshr i128 %i.xr, 64
  %i.xt = and i128 %i.vn, 18446744073709551615
  %i.xu = zext i64 %i.wq to i128
  %i.xv = add nuw nsw i128 %i.xt, %i.xu
  %i.xw = add nuw nsw i128 %i.xv, %i.xs           ; 2 uses
  %i.xx = lshr i128 %i.xw, 64
  %i.xy = trunc nuw nsw i128 %i.xx to i64
  %i.xz = add nuw nsw i64 %i.xy, %i.vp
  %i.ya = zext i64 %i.j to i128                   ; 6 uses
  %i.yb = mul nuw i128 %i.o, %i.ya                ; 2 uses
  %i.yc = lshr i128 %i.yb, 64
  %i.yd = trunc nuw i128 %i.yc to i64
  %i.ye = mul nuw i128 %i.u, %i.ya                ; 2 uses
  %i.yf = lshr i128 %i.ye, 64
  %i.yg = mul nuw i128 %i.z, %i.ya                ; 2 uses
  %i.yh = lshr i128 %i.yg, 64
  %i.yi = mul nuw i128 %i.ae, %i.ya               ; 2 uses
  %i.yj = lshr i128 %i.yi, 64
  %i.yk = mul nuw i128 %i.aj, %i.ya               ; 2 uses
  %i.yl = lshr i128 %i.yk, 64
  %i.ym = mul nuw i128 %i.an, %i.ya               ; 2 uses
  %i.yn = lshr i128 %i.ym, 64
  %i.yo = and i128 %i.yk, 18446744073709551615
  %i.yp = add nuw nsw i128 %i.yn, %i.yo           ; 2 uses
  %i.yq = lshr i128 %i.yp, 64
  %i.yr = and i128 %i.yi, 18446744073709551615
  %i.ys = add nuw nsw i128 %i.yl, %i.yr
  %i.yt = add nuw nsw i128 %i.ys, %i.yq           ; 2 uses
  %i.yu = lshr i128 %i.yt, 64
  %i.yv = and i128 %i.yg, 18446744073709551615
  %i.yw = add nuw nsw i128 %i.yj, %i.yv
  %i.yx = add nuw nsw i128 %i.yw, %i.yu           ; 2 uses
  %i.yy = lshr i128 %i.yx, 64
  %i.yz = and i128 %i.ye, 18446744073709551615
  %i.za = add nuw nsw i128 %i.yh, %i.yz
  %i.zb = add nuw nsw i128 %i.za, %i.yy           ; 2 uses
  %i.zc = lshr i128 %i.zb, 64
  %i.zd = and i128 %i.yb, 18446744073709551615
  %i.ze = add nuw nsw i128 %i.yf, %i.zd
  %i.zf = add nuw nsw i128 %i.ze, %i.zc           ; 2 uses
  %i.zg = lshr i128 %i.zf, 64
  %i.zh = trunc nuw nsw i128 %i.zg to i64
  %i.zi = add nuw i64 %i.zh, %i.yd
  %i.zj = and i128 %i.wx, 18446744073709551615
  %i.zk = and i128 %i.ym, 18446744073709551615
  %i.zl = add nuw nsw i128 %i.zj, %i.zk           ; 3 uses
  %i.zm = lshr i128 %i.zl, 64
  %i.zn = and i128 %i.xc, 18446744073709551615
  %i.zo = and i128 %i.yp, 18446744073709551615
  %i.zp = add nuw nsw i128 %i.zm, %i.zo
  %i.zq = add nuw nsw i128 %i.zp, %i.zn           ; 2 uses
  %i.zr = lshr i128 %i.zq, 64
  %i.zs = and i128 %i.xh, 18446744073709551615
  %i.zt = and i128 %i.yt, 18446744073709551615
  %i.zu = add nuw nsw i128 %i.zs, %i.zt
  %i.zv = add nuw nsw i128 %i.zu, %i.zr           ; 2 uses
  %i.zw = lshr i128 %i.zv, 64
  %i.zx = and i128 %i.xm, 18446744073709551615
  %i.zy = and i128 %i.yx, 18446744073709551615
  %i.zz = add nuw nsw i128 %i.zx, %i.zy
  %i.aaa = add nuw nsw i128 %i.zz, %i.zw          ; 2 uses
  %i.aab = lshr i128 %i.aaa, 64
  %i.aac = and i128 %i.xr, 18446744073709551615
  %i.aad = and i128 %i.zb, 18446744073709551615
  %i.aae = add nuw nsw i128 %i.aac, %i.aad
  %i.aaf = add nuw nsw i128 %i.aae, %i.aab        ; 2 uses
  %i.aag = lshr i128 %i.aaf, 64
  %i.aah = and i128 %i.xw, 18446744073709551615
  %i.aai = and i128 %i.zf, 18446744073709551615
  %i.aaj = add nuw nsw i128 %i.aah, %i.aai
  %i.aak = add nuw nsw i128 %i.aaj, %i.aag        ; 2 uses
  %i.aal = lshr i128 %i.aak, 64
  %i.aam = zext nneg i64 %i.xz to i128
  %i.aan = zext i64 %i.zi to i128
  %i.aao = add nuw nsw i128 %i.aam, %i.aan
  %i.aap = add nuw nsw i128 %i.aao, %i.aal        ; 2 uses
  %i.aaq = lshr i128 %i.aap, 64
  %i.aar = trunc nuw nsw i128 %i.aaq to i64
  %i.aas = and i128 %i.zl, 18446744073709551615
  %i.aat = trunc i128 %i.zl to i64
  %i.aau = mul i64 %i.aat, 4294967297
  %i.aav = zext i64 %i.aau to i128                ; 4 uses
  %i.aaw = mul nuw i128 %i.aav, 18446744073709551615 ; 2 uses
  %i.aax = lshr i128 %i.aaw, 64                   ; 2 uses
  %i.aay = trunc nuw i128 %i.aax to i64
  %i.aaz = mul nuw i128 %i.aav, 18446744073709551614 ; 2 uses
  %i.aba = lshr i128 %i.aaz, 64
  %i.abb = mul nuw i128 %i.aav, 18446744069414584320 ; 2 uses
  %i.abc = lshr i128 %i.abb, 64
  %i.abd = mul nuw nsw i128 %i.aav, 4294967295    ; 2 uses
  %i.abe = lshr i128 %i.abd, 64
  %i.abf = and i128 %i.aaz, 18446744073709551614
  %i.abg = add nuw nsw i128 %i.abc, %i.abf        ; 2 uses
  %i.abh = lshr i128 %i.abg, 64
  %i.abi = and i128 %i.aaw, 18446744073709551615  ; 2 uses
  %i.abj = add nuw nsw i128 %i.abi, %i.aba
  %i.abk = add nuw nsw i128 %i.abj, %i.abh        ; 2 uses
  %i.abl = lshr i128 %i.abk, 64
  %i.abm = add nuw nsw i128 %i.abi, %i.aax        ; 2 uses
  %i.abn = add nuw nsw i128 %i.abl, %i.abm        ; 2 uses
  %i.abo = lshr i128 %i.abn, 64
  %i.abp = add nuw nsw i128 %i.abo, %i.abm        ; 2 uses
  %i.abq = lshr i128 %i.abp, 64
  %i.abr = trunc nuw nsw i128 %i.abq to i64
  %i.abs = add nuw i64 %i.abr, %i.aay
  %i.abt = and i128 %i.abd, 18446744073709551615
  %i.abu = add nuw nsw i128 %i.abt, %i.aas
  %i.abv = lshr i128 %i.abu, 64
  %i.abw = and i128 %i.zq, 18446744073709551615
  %.masked10.i = and i128 %i.abb, 18446744069414584320
  %i.abx = add nuw nsw i128 %.masked10.i, %i.abw
  %i.aby = add nuw nsw i128 %i.abx, %i.abe
  %i.abz = add nuw nsw i128 %i.aby, %i.abv        ; 3 uses
  %i.aca = lshr i128 %i.abz, 64
  %i.acb = and i128 %i.zv, 18446744073709551615
  %i.acc = and i128 %i.abg, 18446744073709551615
  %i.acd = add nuw nsw i128 %i.acc, %i.acb
  %i.ace = add nuw nsw i128 %i.acd, %i.aca        ; 3 uses
  %i.acf = lshr i128 %i.ace, 64
  %i.acg = and i128 %i.aaa, 18446744073709551615
  %i.ach = and i128 %i.abk, 18446744073709551615
  %i.aci = add nuw nsw i128 %i.ach, %i.acg
  %i.acj = add nuw nsw i128 %i.aci, %i.acf        ; 3 uses
  %i.ack = lshr i128 %i.acj, 64
  %i.acl = and i128 %i.aaf, 18446744073709551615
  %i.acm = and i128 %i.abn, 18446744073709551615
  %i.acn = add nuw nsw i128 %i.acm, %i.acl
  %i.aco = add nuw nsw i128 %i.acn, %i.ack        ; 3 uses
  %i.acp = lshr i128 %i.aco, 64
  %i.acq = and i128 %i.aak, 18446744073709551615
  %i.acr = and i128 %i.abp, 18446744073709551615
  %i.acs = add nuw nsw i128 %i.acr, %i.acq
  %i.act = add nuw nsw i128 %i.acs, %i.acp        ; 3 uses
  %i.acu = lshr i128 %i.act, 64
  %i.acv = and i128 %i.aap, 18446744073709551615
  %i.acw = zext i64 %i.abs to i128
  %i.acx = add nuw nsw i128 %i.acv, %i.acw
  %i.acy = add nuw nsw i128 %i.acx, %i.acu        ; 3 uses
  %i.acz = lshr i128 %i.acy, 64
  %i.ada = trunc nuw nsw i128 %i.acz to i64
  %i.adb = add nuw nsw i64 %i.ada, %i.aar
  %i.adc = and i128 %i.abz, 18446744073709551615
  %i.add = add nsw i128 %i.adc, -4294967295       ; 2 uses
  %i.ade = lshr i128 %i.add, 64
  %i.adf = trunc i128 %i.add to i64
  %i.adg = and i128 %i.ace, 18446744073709551615
  %i.adh = sub nsw i128 0, %i.ade
  %i.adi = and i128 %i.adh, 255
  %i.adj = sub nsw i128 %i.adg, %i.adi
  %i.adk = add nsw i128 %i.adj, -18446744069414584320 ; 2 uses
  %i.adl = lshr i128 %i.adk, 64
  %i.adm = trunc i128 %i.adk to i64
  %i.adn = and i128 %i.acj, 18446744073709551615
  %i.ado = sub nsw i128 0, %i.adl
  %i.adp = and i128 %i.ado, 255
  %i.adq = sub nsw i128 %i.adn, %i.adp
  %i.adr = add nsw i128 %i.adq, -18446744073709551614 ; 2 uses
  %i.ads = lshr i128 %i.adr, 64
  %i.adt = trunc i128 %i.adr to i64
  %i.adu = and i128 %i.aco, 18446744073709551615
  %i.adv = sub nsw i128 0, %i.ads
  %i.adw = and i128 %i.adv, 255
  %i.adx = sub nsw i128 %i.adu, %i.adw
  %i.ady = add nsw i128 %i.adx, -18446744073709551615 ; 2 uses
  %i.adz = lshr i128 %i.ady, 64
  %i.aea = trunc i128 %i.ady to i64
  %i.aeb = and i128 %i.act, 18446744073709551615
  %i.aec = sub nsw i128 0, %i.adz
  %i.aed = and i128 %i.aec, 255
  %i.aee = sub nsw i128 %i.aeb, %i.aed
  %i.aef = add nsw i128 %i.aee, -18446744073709551615 ; 2 uses
  %i.aeg = lshr i128 %i.aef, 64
  %i.aeh = trunc i128 %i.aef to i64
  %i.aei = and i128 %i.acy, 18446744073709551615
  %i.aej = sub nsw i128 0, %i.aeg
  %i.aek = and i128 %i.aej, 255
  %i.ael = sub nsw i128 %i.aei, %i.aek
  %i.aem = add nsw i128 %i.ael, -18446744073709551615 ; 2 uses
  %i.aen = lshr i128 %i.aem, 64
  %i.aeo = trunc i128 %i.aem to i64
  %i.aep = zext nneg i64 %i.adb to i128
  %i.aeq = sub nsw i128 0, %i.aen
  %i.aer = and i128 %i.aeq, 255
  %i.aes = sub nsw i128 %i.aep, %i.aer
  %3 = lshr i128 %i.aes, 64                       ; 7 uses
  %i.aet = trunc nuw i128 %3 to i64
  %i.aeu = and i128 %3, %i.abz
  %i.aev = trunc nuw i128 %i.aeu to i64
  %i.aew = xor i64 %i.aet, -1                     ; 6 uses
  %i.aex = and i64 %i.aew, %i.adf
  %i.aey = or i64 %i.aex, %i.aev
  %i.aez = and i128 %3, %i.ace
  %i.afa = trunc nuw i128 %i.aez to i64
  %i.afb = and i64 %i.aew, %i.adm
  %i.afc = or i64 %i.afb, %i.afa
  %i.afd = and i128 %3, %i.acj
  %i.afe = trunc nuw i128 %i.afd to i64
  %i.aff = and i64 %i.aew, %i.adt
  %i.afg = or i64 %i.aff, %i.afe
  %i.afh = and i128 %3, %i.aco
  %i.afi = trunc nuw i128 %i.afh to i64
  %i.afj = and i64 %i.aew, %i.aea
  %i.afk = or i64 %i.afj, %i.afi
  %i.afl = and i128 %3, %i.act
  %i.afm = trunc nuw i128 %i.afl to i64
  %i.afn = and i64 %i.aew, %i.aeh
  %i.afo = or i64 %i.afn, %i.afm
  %i.afp = and i128 %3, %i.acy
  %i.afq = trunc nuw i128 %i.afp to i64
  %i.afr = and i64 %i.aew, %i.aeo
  %i.afs = or i64 %i.afr, %i.afq
  store i64 %i.aey, ptr %0, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.afc, ptr %.sroa.42.0..sroa_idx, align 8
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.afg, ptr %.sroa.53.0..sroa_idx, align 8
  %.sroa.64.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.afk, ptr %.sroa.64.0..sroa_idx, align 8
  %.sroa.75.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.afo, ptr %.sroa.75.0..sroa_idx, align 8
  %.sroa.86.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.afs, ptr %.sroa.86.0..sroa_idx, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsA_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos17hunting_gti_scoreNtB5_18HuntingGtiSeverityNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #7 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @285, i64 noundef 18, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @138, i64 noundef 5, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @976, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @513, i64 noundef 14, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @512)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define noundef align 8 ptr @_RNvXsA_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3dexNtB5_7MapListNtNtCsg2CeFYmfPbl_8protobuf7message7Message10merge_from(ptr noalias nofree noundef align 8 dereferenceable(48) %0, ptr noalias nofree noundef align 8 dereferenceable(112) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 6 uses
  %i.b = alloca [48 x i8], align 8                ; 8 uses
  %i.c = alloca [16 x i8], align 8                ; 7 uses
  %i.d = alloca [16 x i8], align 8                ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call fastcc void @_RNvMNtCsg2CeFYmfPbl_8protobuf18coded_input_streamNtB2_16CodedInputStream24read_raw_varint32_or_eof(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.d, ptr noalias nofree noundef align 8 dereferenceable(112) %1) #35
  %i.e = load i32, ptr %i.d, align 8, !range !28, !noundef !6
  %i.f = trunc nuw i32 %i.e to i1
  br i1 %i.f, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %.sroa.519.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %.sroa.620.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.67.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %.sroa.610.0..sroa_idx11 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.813.0..sroa_idx14 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.b

._crit_edge:                                      ; preds = %bb.i, %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !nonnull !6, !align !8, !noundef !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %.loopexit

bb.b:                                             ; preds = %.lr.ph, %bb.i
  %i.q = load i32, ptr %i.g, align 4, !range !28, !noundef !6
  %i.r = load i32, ptr %i.h, align 8              ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.s = trunc nuw i32 %i.q to i1
  br i1 %i.s, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  switch i32 %i.r, label %bb.d [
    i32 8, label %bb.e
    i32 18, label %bb.f
  ]

bb.d:                                             ; preds = %bb.c
  %i.t = call noundef align 8 ptr @_RNvNtNtCsg2CeFYmfPbl_8protobuf2rt16unknown_or_group26read_unknown_or_skip_group(i32 noundef %i.r, ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.n) ; 2 uses
  %.not = icmp eq ptr %i.t, null
  br i1 %.not, label %bb.i, label %.loopexit

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvMNtCsg2CeFYmfPbl_8protobuf18coded_input_streamNtB2_16CodedInputStream11read_uint32(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %1)
  %i.u = load i32, ptr %i.c, align 8, !range !28, !noundef !6
  %i.v = trunc nuw i32 %i.u to i1
  br i1 %i.v, label %bb.g, label %bb.h

bb.f:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RINvMNtCsg2CeFYmfPbl_8protobuf18coded_input_streamNtB3_16CodedInputStream12read_messageNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3dex7MapItemEB1v_(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %1)
  %i.w = load i32, ptr %i.b, align 8, !range !5769, !noundef !6 ; 2 uses
  %i.x = icmp eq i32 %i.w, 2
  br i1 %i.x, label %bb.j, label %bb.k

bb.g:                                             ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !nonnull !6, !align !8, !noundef !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %.loopexit

bb.h:                                             ; preds = %bb.e
  %i.aa = load i32, ptr %i.k, align 4, !noundef !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store i32 1, ptr %i.l, align 8
  store i32 %i.aa, ptr %i.m, align 4
  br label %bb.i

bb.i:                                             ; preds = %bb.d, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3dex7MapItemE8push_mutBN_.exit, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call fastcc void @_RNvMNtCsg2CeFYmfPbl_8protobuf18coded_input_streamNtB2_16CodedInputStream24read_raw_varint32_or_eof(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.d, ptr noalias nofree noundef align 8 dereferenceable(112) %1) #35
  %i.ab = load i32, ptr %i.d, align 8, !range !28, !noundef !6
  %i.ac = trunc nuw i32 %i.ab to i1
  br i1 %i.ac, label %._crit_edge, label %bb.b

bb.j:                                             ; preds = %bb.f
  %i.ad = load ptr, ptr %.sroa.519.0..sroa_idx, align 8, !nonnull !6, !align !8, !noundef !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %.loopexit

bb.k:                                             ; preds = %bb.f
  %.sroa.4.0.copyload = load i32, ptr %.sroa.4.0..sroa_idx, align 4
  %.sroa.519.0.copyload = load ptr, ptr %.sroa.519.0..sroa_idx, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.813.0..sroa_idx14, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.620.0..sroa_idx, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i32 %i.w, ptr %i.a, align 8
  store i32 %.sroa.4.0.copyload, ptr %.sroa.67.0..sroa_idx8, align 4
  store ptr %.sroa.519.0.copyload, ptr %.sroa.610.0..sroa_idx11, align 8
  %i.ae = load i64, ptr %i.i, align 8, !alias.scope !5770, !noalias !5771, !noundef !6 ; 3 uses
  %i.af = load i64, ptr %0, align 8, !range !24, !alias.scope !5770, !noalias !5771, !noundef !6
  %i.ag = icmp eq i64 %i.ae, %i.af
  br i1 %i.ag, label %bb.l, label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3dex7MapItemE8push_mutBN_.exit

bb.l:                                             ; preds = %bb.k
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3dex7MapItemE8grow_oneBU_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3dex7MapItemE8push_mutBN_.exit unwind label %bb.m, !noalias !5771

bb.m:                                             ; preds = %bb.l
  %i.ah = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3dex7MapItemEBJ_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(48) %i.a) #29
          to label %bb.o unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #30, !noalias !5771
  unreachable

bb.o:                                             ; preds = %bb.m
  resume { ptr, i32 } %i.ah

_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3dex7MapItemE8push_mutBN_.exit: ; preds = %bb.k, %bb.l
  %i.aj = load ptr, ptr %i.j, align 8, !alias.scope !5770, !noalias !5771, !nonnull !6, !noundef !6
  %i.ak = getelementptr inbounds nuw [48 x i8], ptr %i.aj, i64 %i.ae
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ak, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.a, i64 48, i1 false)
  %i.al = add i64 %i.ae, 1
  store i64 %i.al, ptr %i.i, align 8, !alias.scope !5770, !noalias !5771
  br label %bb.i

.loopexit:                                        ; preds = %bb.d, %bb.b, %._crit_edge, %bb.j, %bb.g
  %.sroa.0.1 = phi ptr [ %i.z, %bb.g ], [ %i.p, %._crit_edge ], [ %i.ad, %bb.j ], [ %i.t, %bb.d ], [ null, %bb.b ]
  ret ptr %.sroa.0.1
}

; Function Attrs: nonlazybind uwtable
define noundef i64 @_RNvXsA_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3dexNtB5_7MapListNtNtCsg2CeFYmfPbl_8protobuf7message7Message12compute_size(ptr noundef nonnull align 8 %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i32, ptr %i.a, align 8, !range !28, !noundef !6
  %i.c = trunc nuw i32 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.e = load i32, ptr %i.d, align 4, !noundef !6
  %i.f = or i32 %i.e, 1
  %i.g = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.f, i1 true)
  %i.h = trunc nuw nsw i32 %i.g to i8
  %.lhs.trunc.i.i = sub nuw nsw i8 38, %i.h
  %i.i = udiv i8 %.lhs.trunc.i.i, 7
  %narrow.i = add nuw nsw i8 %i.i, 1
  %i.j = zext nneg i8 %narrow.i to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.0.0 = phi i64 [ %i.j, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load i64, ptr %i.m, align 8, !noundef !6 ; 2 uses
  %.idx = mul nuw nsw i64 %i.n, 48
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 %.idx
  %i.p = icmp eq i64 %i.n, 0
  br i1 %i.p, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %_RNvXsG_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3dexNtB5_7MapItemNtNtCsg2CeFYmfPbl_8protobuf7message7Message12compute_size.exit
  %.sroa.0.18 = phi i64 [ %i.bt, %_RNvXsG_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3dexNtB5_7MapItemNtNtCsg2CeFYmfPbl_8protobuf7message7Message12compute_size.exit ], [ %.sroa.0.0, %bb.c ]
  %.sroa.05.07 = phi ptr [ %i.q, %_RNvXsG_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3dexNtB5_7MapItemNtNtCsg2CeFYmfPbl_8protobuf7message7Message12compute_size.exit ], [ %i.l, %bb.c ] ; 11 uses
end_hunk_2
