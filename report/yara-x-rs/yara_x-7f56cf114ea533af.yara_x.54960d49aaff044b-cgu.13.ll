Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yara-x-rs/original/yara_x-7f56cf114ea533af.yara_x.54960d49aaff044b-cgu.13?download=true
inline.NumInlined: 4254
inline.NumDeleted: 1726
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 17
begin_hunk_0_@_RINvNtNtCs7gfv9tzbXmh_6yara_x7scanner7context13verify_regexpNCNvMs0_B2_NtB2_11ScanContext17handle_atom_match0EB6_:bb.a
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef 3, i64 noundef %i.kw, i64 noundef range(i64 0, -9223372036854775808) %i.kr, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @353) #39, !noalias !3583
  unreachable

bb.by:                                            ; preds = %bb.bu
  %i.kx = getelementptr inbounds nuw i8, ptr %i.ks, i64 1
  %.sroa.045.0.copyload.i.i = load i16, ptr %i.kx, align 1, !alias.scope !3580, !noalias !3585 ; 2 uses
  %i.ky = zext i16 %.sroa.045.0.copyload.i.i to i64 ; 2 uses
  %i.kz = add nuw nsw i64 %i.ky, 3                ; 5 uses
  %.not58.i.i = icmp samesign ugt i64 %i.kz, %i.kr
  br i1 %.not58.i.i, label %bb.bz, label %bb.ca, !prof !59

bb.bz:                                            ; preds = %bb.by
  store i64 %.us-phi3611801, ptr %i.ad, align 8
  store i64 %.us-phi3621824, ptr %i.aa, align 1
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef 3, i64 noundef %i.kz, i64 noundef range(i64 0, -9223372036854775808) %i.kr, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @355) #39, !noalias !3583
  unreachable

bb.ca:                                            ; preds = %bb.by
  %i.la = getelementptr inbounds nuw i8, ptr %i.ks, i64 3
  %i.lb = add nuw nsw i64 %i.kz, %i.ky            ; 2 uses
  %.not59.i.i = icmp samesign ugt i64 %i.lb, %i.kr
  br i1 %.not59.i.i, label %bb.cb, label %bb.cn, !prof !59

bb.cb:                                            ; preds = %bb.ca
  store i64 %.us-phi3611801, ptr %i.ad, align 8
  store i64 %.us-phi3621824, ptr %i.aa, align 1
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %i.kz, i64 noundef %i.lb, i64 noundef range(i64 0, -9223372036854775808) %i.kr, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @354) #39, !noalias !3583
  unreachable

bb.cc:                                            ; preds = %bb.bu
  %i.lc = getelementptr inbounds nuw i8, ptr %i.ks, i64 1
  %.sroa.046.0.copyload.i.i = load i16, ptr %i.lc, align 1, !alias.scope !3580, !noalias !3585
  %i.ld = zext i16 %.sroa.046.0.copyload.i.i to i64
  %i.le = add nuw nsw i64 %i.ld, 3                ; 2 uses
  %.not57.i.i = icmp samesign ugt i64 %i.le, %i.kr
  br i1 %.not57.i.i, label %bb.cd, label %.lr.ph600.i, !prof !59

bb.cd:                                            ; preds = %bb.cc
  store i64 %.us-phi3611801, ptr %i.ad, align 8
  store i64 %.us-phi3621824, ptr %i.aa, align 1
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef 3, i64 noundef %i.le, i64 noundef range(i64 0, -9223372036854775808) %i.kr, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @356) #39, !noalias !3583
  unreachable

bb.ce:                                            ; preds = %bb.bu
  %i.lf = icmp samesign ult i64 %i.kr, 3
  br i1 %i.lf, label %bb.cf, label %.lr.ph600.i, !prof !59

bb.cf:                                            ; preds = %bb.ce
  store i64 %.us-phi3611801, ptr %i.ad, align 8
  store i64 %.us-phi3621824, ptr %i.aa, align 1
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef 3, i64 noundef range(i64 0, -9223372036854775808) %i.kr, i64 noundef range(i64 0, -9223372036854775808) %i.kr, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @357) #39, !noalias !3583
  unreachable

bb.cg:                                            ; preds = %bb.bu
  %i.lg = icmp samesign ult i64 %i.kr, 3
  br i1 %i.lg, label %bb.ch, label %.lr.ph600.i, !prof !59

bb.ch:                                            ; preds = %bb.cg
  store i64 %.us-phi3611801, ptr %i.ad, align 8
  store i64 %.us-phi3621824, ptr %i.aa, align 1
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef 3, i64 noundef range(i64 0, -9223372036854775808) %i.kr, i64 noundef range(i64 0, -9223372036854775808) %i.kr, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @358) #39, !noalias !3583
  unreachable

bb.ci:                                            ; preds = %bb.br
  store i64 %.us-phi3611801, ptr %i.ad, align 8
  store i64 %.us-phi3621824, ptr %i.aa, align 1
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %i.kp, i64 noundef %i.bw, i64 noundef %i.bw, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #39, !noalias !3446
  unreachable

.lr.ph600.i:                                      ; preds = %bb.co, %bb.cn, %bb.cg, %bb.ce, %bb.cc, %bb.bu, %bb.bu, %bb.bu
  %.val261.i = load ptr, ptr %i.bd, align 8, !alias.scope !3430, !noalias !3435, !nonnull !27, !noundef !27 ; 2 uses
  %.idx630.i = shl nuw nsw i64 %.val256624.i, 3
  %i.lh = getelementptr inbounds nuw i8, ptr %.val261.i, i64 %.idx630.i
  %i.li = zext i16 %.sroa.13.0.ph418.i to i64
  %i.lj = lshr i8 %.sroa.0320.0.i, 1
  %i.lk = zext nneg i8 %i.lj to i64               ; 2 uses
  %i.ll = shl nuw nsw i64 %i.li, %i.lk            ; 4 uses
  %i.lm = zext i16 %spec.select626.i to i64
  %.sroa.03.031.i.i = add nuw nsw i64 %i.lm, 1
  %i.ln = shl nuw nsw i64 %.sroa.03.031.i.i, %i.lk
  %i.lo = and i8 %.sroa.0320.0.i, 1
  %.not33.i.i = icmp eq i8 %i.lo, 0
  br label %bb.cq

.lr.ph602.i:                                      ; preds = %bb.bw
  %i.lp = getelementptr inbounds nuw i8, ptr %i.ks, i64 3
  %.val259.i = load ptr, ptr %i.bd, align 8, !alias.scope !3430, !noalias !3435, !nonnull !27, !noundef !27 ; 2 uses
  %.idx631.i = shl nuw nsw i64 %.val256624.i, 3
  %i.lq = getelementptr inbounds nuw i8, ptr %.val259.i, i64 %.idx631.i
  %.not214.i = icmp ne i16 %.sroa.044.0.copyload.i.i, 0 ; 2 uses
  br label %bb.cj

bb.cj:                                            ; preds = %.backedge462.i, %.lr.ph602.i
  %.sroa.0134.0601.i = phi ptr [ %.val259.i, %.lr.ph602.i ], [ %i.lr, %.backedge462.i ] ; 2 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %.sroa.0134.0601.i, i64 8 ; 2 uses
  %i.ls = load i64, ptr %.sroa.0134.0601.i, align 8, !noalias !3446, !noundef !27 ; 4 uses
  %.not213.i = icmp ult i64 %i.ls, %..i.i
  br i1 %.not213.i, label %bb.ck, label %.backedge462.i

bb.ck:                                            ; preds = %bb.cj
  %i.lt = sub nuw nsw i64 %..i.i, %i.ls
  %i.lu = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.ls
  br i1 %.not214.i, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %bb.ck
  %i.lv = load i8, ptr %i.lp, align 1, !noalias !3446, !noundef !27
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %bb.ck
  %.sroa.5138.0.i = phi i8 [ %i.lv, %bb.cl ], [ undef, %bb.ck ]
  call fastcc void @_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x2re4fast6fastvmNtB4_6FastVM8jump_fwd(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.lu, i64 noundef %i.lt, i1 noundef zeroext %.not214.i, i8 %.sroa.5138.0.i, i8 noundef %.sroa.0320.0.i, i16 %.sroa.13.0.ph418.i, i16 %spec.select626.i, i64 noundef %i.ls, ptr noalias nofree noundef align 8 dereferenceable(104) %i.bj) #41, !noalias !3446
  br label %.backedge462.i

.backedge462.i:                                   ; preds = %bb.cm, %bb.cj
  %i.lw = icmp eq ptr %i.lr, %i.lq
  br i1 %i.lw, label %.loopexit.i, label %bb.cj

bb.cn:                                            ; preds = %bb.ca
  %.not210.i = icmp eq i16 %.sroa.045.0.copyload.i.i, 0
  br i1 %.not210.i, label %.lr.ph600.i, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.lx = getelementptr inbounds nuw i8, ptr %i.ks, i64 %i.kz
  %i.ly = load i8, ptr %i.lx, align 1, !noalias !3446, !noundef !27
  %i.lz = icmp eq i8 %i.ly, -1
  br i1 %i.lz, label %.lr.ph598.preheader.i, label %.lr.ph600.i

.lr.ph598.preheader.i:                            ; preds = %bb.co
  %.val257.i = load ptr, ptr %i.bd, align 8, !alias.scope !3430, !noalias !3435, !nonnull !27, !noundef !27 ; 2 uses
  %.idx629.i = shl nuw nsw i64 %.val256624.i, 3
  %i.ma = getelementptr inbounds nuw i8, ptr %.val257.i, i64 %.idx629.i
  br label %.lr.ph598.i

.lr.ph598.i:                                      ; preds = %.backedge466.i, %.lr.ph598.preheader.i
  %.sroa.0150.0597.i = phi ptr [ %i.mb, %.backedge466.i ], [ %.val257.i, %.lr.ph598.preheader.i ] ; 2 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %.sroa.0150.0597.i, i64 8 ; 2 uses
  %i.mc = load i64, ptr %.sroa.0150.0597.i, align 8, !noalias !3446, !noundef !27 ; 4 uses
  %.not211.i = icmp ult i64 %i.mc, %..i.i
  br i1 %.not211.i, label %bb.cp, label %.backedge466.i

bb.cp:                                            ; preds = %.lr.ph598.i
  %i.md = sub nuw nsw i64 %..i.i, %i.mc
  %i.me = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.mc
  %i.mf = load i8, ptr %i.la, align 1, !noalias !3446, !noundef !27
  call fastcc void @_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x2re4fast6fastvmNtB4_6FastVM8jump_fwd(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.me, i64 noundef %i.md, i1 noundef zeroext true, i8 %i.mf, i8 noundef %.sroa.0320.0.i, i16 %.sroa.13.0.ph418.i, i16 %spec.select626.i, i64 noundef %i.mc, ptr noalias nofree noundef align 8 dereferenceable(104) %i.bj) #41, !noalias !3446
  br label %.backedge466.i

.backedge466.i:                                   ; preds = %bb.cp, %.lr.ph598.i
  %i.mg = icmp eq ptr %i.mb, %i.ma
  br i1 %i.mg, label %.loopexit.i, label %.lr.ph598.i

bb.cq:                                            ; preds = %.backedge464.i, %.lr.ph600.i
  %.sroa.0156.0599.i = phi ptr [ %.val261.i, %.lr.ph600.i ], [ %i.mh, %.backedge464.i ] ; 2 uses
  %i.mh = getelementptr inbounds nuw i8, ptr %.sroa.0156.0599.i, i64 8 ; 2 uses
  %i.mi = load i64, ptr %.sroa.0156.0599.i, align 8, !noalias !3446, !noundef !27 ; 5 uses
  %.not215.i = icmp ult i64 %i.mi, %..i.i
  br i1 %.not215.i, label %bb.cr, label %.backedge464.i

bb.cr:                                            ; preds = %bb.cq
  %i.mj = sub nuw nsw i64 %..i.i, %i.mi
  %i.mk = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.mi ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3587)
  %..i.i.i = call noundef range(i64 0, -9223372036854775808) i64 @llvm.umin.i64(i64 %i.ln, i64 range(i64 0, -9223372036854775808) %i.mj) ; 3 uses
  %.not32.i.i = icmp samesign ult i64 %i.ll, %..i.i.i
  br i1 %.not32.i.i, label %bb.cs, label %.backedge464.i

bb.cs:                                            ; preds = %bb.cr
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mk, i64 %i.ll ; 3 uses
  br i1 %.not33.i.i, label %bb.ct, label %_RINvNtNtNtCslssDYltVX0B_6memchr4arch7generic6memchr21search_slice_with_rawNCNvNtB8_6memchr6memchr0ECs7gfv9tzbXmh_6yara_x.exit.thread40.i.i

bb.ct:                                            ; preds = %bb.cs
  %i.mm = load atomic ptr, ptr @_RNvNvNtNtNtCslssDYltVX0B_6memchr4arch6x86_646memchr10memchr_raw2FN monotonic, align 8, !noalias !3590, !nonnull !27, !noundef !27
  %i.mn = call { i64, ptr } %i.mm(i8 noundef 10, ptr noundef nonnull readonly %i.mk, ptr noundef nonnull readonly %i.ml), !noalias !3594, !inline_history !3595 ; 2 uses
  %i.mo = extractvalue { i64, ptr } %i.mn, 0
  %i.mp = trunc nuw i64 %i.mo to i1
  br i1 %i.mp, label %_RINvNtNtNtCslssDYltVX0B_6memchr4arch7generic6memchr21search_slice_with_rawNCNvNtB8_6memchr6memchr0ECs7gfv9tzbXmh_6yara_x.exit.thread.i.i, label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.lr.ph.i.i

_RINvNtNtNtCslssDYltVX0B_6memchr4arch7generic6memchr21search_slice_with_rawNCNvNtB8_6memchr6memchr0ECs7gfv9tzbXmh_6yara_x.exit.thread.i.i: ; preds = %bb.ct
  %i.mq = extractvalue { i64, ptr } %i.mn, 1
  %i.mr = call noundef i64 @_RNvXNtCslssDYltVX0B_6memchr3extPhNtB2_7Pointer8distanceCs7gfv9tzbXmh_6yara_x(ptr noundef %i.mq, ptr noundef nonnull readonly %i.mk), !noalias !3596 ; 0 uses
  br label %.backedge464.i

_RINvNtNtNtCslssDYltVX0B_6memchr4arch7generic6memchr21search_slice_with_rawNCNvNtB8_6memchr6memchr0ECs7gfv9tzbXmh_6yara_x.exit.thread40.i.i: ; preds = %bb.cs
  %i.ms = getelementptr i8, ptr %i.mk, i64 %..i.i.i
  %i.mt = add nuw nsw i64 %i.mi, %i.ll
  br label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i

_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.lr.ph.i.i: ; preds = %bb.ct
  %i.mu = getelementptr i8, ptr %i.mk, i64 %..i.i.i
  %i.mv = add nuw nsw i64 %i.mi, %i.ll
  br label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.us.i.i

_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.us.i.i: ; preds = %bb.cu, %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.lr.ph.i.i
  %.sroa.0.027.us.i.i = phi ptr [ %i.mz, %bb.cu ], [ %i.ml, %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.lr.ph.i.i ] ; 2 uses
  %.sroa.8.026.us.i.i = phi i64 [ %i.my, %bb.cu ], [ 0, %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.lr.ph.i.i ] ; 2 uses
  %i.mw = load i8, ptr %.sroa.0.027.us.i.i, align 1, !alias.scope !3597, !noalias !3598, !noundef !27
  %i.mx = icmp eq i8 %i.mw, 10
  br i1 %i.mx, label %.backedge464.i, label %bb.cu

bb.cu:                                            ; preds = %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.us.i.i
  %i.my = add i64 %.sroa.8.026.us.i.i, 1
  %i.mz = getelementptr inbounds nuw i8, ptr %.sroa.0.027.us.i.i, i64 1 ; 2 uses
  %i.na = add i64 %i.mv, %.sroa.8.026.us.i.i
  call fastcc void @_RNvMNtNtCs7gfv9tzbXmh_6yara_x2re9bitmapsetINtB2_9BitmapSetuE6insertB6_(ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %i.bj, i64 noundef %i.na) #41
  %i.nb = icmp eq ptr %i.mz, %i.mu
  br i1 %i.nb, label %.backedge464.i, label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.us.i.i

_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i: ; preds = %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i, %_RINvNtNtNtCslssDYltVX0B_6memchr4arch7generic6memchr21search_slice_with_rawNCNvNtB8_6memchr6memchr0ECs7gfv9tzbXmh_6yara_x.exit.thread40.i.i
  %.sroa.0.027.i.i = phi ptr [ %i.nc, %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i ], [ %i.ml, %_RINvNtNtNtCslssDYltVX0B_6memchr4arch7generic6memchr21search_slice_with_rawNCNvNtB8_6memchr6memchr0ECs7gfv9tzbXmh_6yara_x.exit.thread40.i.i ]
  %.sroa.8.026.i.i = phi i64 [ %i.nd, %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i ], [ 0, %_RINvNtNtNtCslssDYltVX0B_6memchr4arch7generic6memchr21search_slice_with_rawNCNvNtB8_6memchr6memchr0ECs7gfv9tzbXmh_6yara_x.exit.thread40.i.i ] ; 2 uses
  %i.nc = getelementptr inbounds nuw i8, ptr %.sroa.0.027.i.i, i64 1 ; 2 uses
  %i.nd = add i64 %.sroa.8.026.i.i, 1
  %i.ne = add i64 %i.mt, %.sroa.8.026.i.i
  call fastcc void @_RNvMNtNtCs7gfv9tzbXmh_6yara_x2re9bitmapsetINtB2_9BitmapSetuE6insertB6_(ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %i.bj, i64 noundef %i.ne) #41
  %i.nf = icmp eq ptr %i.nc, %i.ms
  br i1 %i.nf, label %.backedge464.i, label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i

.backedge464.i:                                   ; preds = %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i, %bb.cu, %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.us.i.i, %_RINvNtNtNtCslssDYltVX0B_6memchr4arch7generic6memchr21search_slice_with_rawNCNvNtB8_6memchr6memchr0ECs7gfv9tzbXmh_6yara_x.exit.thread.i.i, %bb.cr, %bb.cq
  %i.ng = icmp eq ptr %i.mh, %i.lh
  br i1 %i.ng, label %.loopexit.i, label %bb.cq

bb.cv:                                            ; preds = %bb.e
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %3, i64 noundef %2, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @40) #39
  unreachable

_RINvMNtNtNtCs7gfv9tzbXmh_6yara_x2re4fast6fastvmNtB3_6FastVM9try_matchNtB7_10FwdCodeLocNCINvNtNtB9_7scanner7context13verify_regexpNCNvMs0_B1r_NtB1r_11ScanContext17handle_atom_match0E0EB9_.exit.thread: ; preds = %bb.c, %.split.us
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  br label %bb.cw

_RINvMNtNtNtCs7gfv9tzbXmh_6yara_x2re4fast6fastvmNtB3_6FastVM9try_matchNtB7_10FwdCodeLocNCINvNtNtB9_7scanner7context13verify_regexpNCNvMs0_B1r_NtB1r_11ScanContext17handle_atom_match0E0EB9_.exit.loopexit: ; preds = %.loopexit.i
  store i64 %.us-phi3611800, ptr %i.ad, align 8
  store i64 %.us-phi3621823, ptr %i.aa, align 1
  br label %_RINvMNtNtNtCs7gfv9tzbXmh_6yara_x2re4fast6fastvmNtB3_6FastVM9try_matchNtB7_10FwdCodeLocNCINvNtNtB9_7scanner7context13verify_regexpNCNvMs0_B1r_NtB1r_11ScanContext17handle_atom_match0E0EB9_.exit

_RINvMNtNtNtCs7gfv9tzbXmh_6yara_x2re4fast6fastvmNtB3_6FastVM9try_matchNtB7_10FwdCodeLocNCINvNtNtB9_7scanner7context13verify_regexpNCNvMs0_B1r_NtB1r_11ScanContext17handle_atom_match0E0EB9_.exit: ; preds = %_RINvMNtNtNtCs7gfv9tzbXmh_6yara_x2re4fast6fastvmNtB3_6FastVM9try_matchNtB7_10FwdCodeLocNCINvNtNtB9_7scanner7context13verify_regexpNCNvMs0_B1r_NtB1r_11ScanContext17handle_atom_match0E0EB9_.exit.loopexit, %bb.g
  %i.nh = phi i64 [ %.pre, %bb.g ], [ %.promoted631, %_RINvMNtNtNtCs7gfv9tzbXmh_6yara_x2re4fast6fastvmNtB3_6FastVM9try_matchNtB7_10FwdCodeLocNCINvNtNtB9_7scanner7context13verify_regexpNCNvMs0_B1r_NtB1r_11ScanContext17handle_atom_match0E0EB9_.exit.loopexit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  %i.ni = trunc nuw i64 %i.nh to i1
  br i1 %i.ni, label %bb.cw, label %_RINvMNtNtNtCs7gfv9tzbXmh_6yara_x2re4fast6fastvmNtB3_6FastVM9try_matchNtB7_10BckCodeLocNCINvNtNtB9_7scanner7context13verify_regexpNCNvMs0_B1r_NtB1r_11ScanContext17handle_atom_match0Es0_0EB9_.exit

bb.cw:                                            ; preds = %_RINvMNtNtNtCs7gfv9tzbXmh_6yara_x2re4fast6fastvmNtB3_6FastVM9try_matchNtB7_10FwdCodeLocNCINvNtNtB9_7scanner7context13verify_regexpNCNvMs0_B1r_NtB1r_11ScanContext17handle_atom_match0E0EB9_.exit.thread, %_RINvMNtNtNtCs7gfv9tzbXmh_6yara_x2re4fast6fastvmNtB3_6FastVM9try_matchNtB7_10FwdCodeLocNCINvNtNtB9_7scanner7context13verify_regexpNCNvMs0_B1r_NtB1r_11ScanContext17handle_atom_match0E0EB9_.exit
  %i.nj = load i64, ptr %i.ad, align 8, !noundef !27 ; 3 uses
  store i64 %i.nj, ptr %i.z, align 8
  %i.nk = getelementptr inbounds nuw i8, ptr %4, i64 40
  %.val27 = load i32, ptr %i.nk, align 8, !noundef !27 ; 3 uses
  %.not17 = icmp eq i32 %.val27, 0
  br i1 %.not17, label %bb.cy, label %bb.cx

_RINvMNtNtNtCs7gfv9tzbXmh_6yara_x2re4fast6fastvmNtB3_6FastVM9try_matchNtB7_10BckCodeLocNCINvNtNtB9_7scanner7context13verify_regexpNCNvMs0_B1r_NtB1r_11ScanContext17handle_atom_match0Es0_0EB9_.exit: ; preds = %.loopexit.i37, %_RINvMNtNtNtCs7gfv9tzbXmh_6yara_x2re4fast6fastvmNtB3_6FastVM9try_matchNtB7_10FwdCodeLocNCINvNtNtB9_7scanner7context13verify_regexpNCNvMs0_B1r_NtB1r_11ScanContext17handle_atom_match0E0EB9_.exit, %_RINvMNtNtNtCs7gfv9tzbXmh_6yara_x2re4fast6fastvmNtB3_6FastVM9try_matchNtB7_10FwdCodeLocNCINvNtNtB9_7scanner7context13verify_regexpNCNvMs0_B1r_NtB1r_11ScanContext17handle_atom_match0E0EB9_.exit.thread783, %bb.dc, %bb.dd, %bb.cy, %bb.gz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  ret void

bb.cx:                                            ; preds = %bb.cw
  %i.nl = and i16 %5, 64
  %.not102 = icmp eq i16 %i.nl, 0
  %i.nm = icmp ugt i64 %3, %2                     ; 2 uses
  br i1 %.not102, label %bb.cz, label %bb.da

bb.cy:                                            ; preds = %bb.cw
  %i.nn = add i64 %3, %i.nj                       ; 2 uses
  %i.no = call fastcc noundef zeroext i1 @_RNvNtNtCs7gfv9tzbXmh_6yara_x7scanner7context16verify_full_word(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i64 %3, i64 %i.nn, i16 noundef %5, i1 noundef zeroext false, i8 undef)
  br i1 %i.no, label %bb.gz, label %_RINvMNtNtNtCs7gfv9tzbXmh_6yara_x2re4fast6fastvmNtB3_6FastVM9try_matchNtB7_10BckCodeLocNCINvNtNtB9_7scanner7context13verify_regexpNCNvMs0_B1r_NtB1r_11ScanContext17handle_atom_match0Es0_0EB9_.exit

bb.cz:                                            ; preds = %bb.cx
  br i1 %i.nm, label %bb.db, label %bb.dc, !prof !59

bb.da:                                            ; preds = %bb.cx
  br i1 %i.nm, label %bb.gy, label %bb.dd, !prof !3599

bb.db:                                            ; preds = %bb.cz
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %3, i64 noundef %2, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @41) #39
  unreachable

bb.dc:                                            ; preds = %bb.cz
  %i.np = getelementptr inbounds nuw i8, ptr %1, i64 %3
  %i.nq = sub nuw nsw i64 %2, %3
  %i.nr = trunc i16 %5 to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  store ptr %i.ac, ptr %i.y, align 8
  %i.ns = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store ptr %i.z, ptr %i.ns, align 8
  %i.nt = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store ptr %1, ptr %i.nt, align 8
  %i.nu = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  store i64 %2, ptr %i.nu, align 8
  %i.nv = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  store ptr %i.ab, ptr %i.nv, align 8
  %i.nw = getelementptr inbounds nuw i8, ptr %i.y, i64 40
  store ptr %6, ptr %i.nw, align 8
  call fastcc void @_RINvMNtNtNtCs7gfv9tzbXmh_6yara_x2re8thompson6pikevmNtB3_6PikeVM9try_matchNtB7_10BckCodeLocNCINvNtNtB9_7scanner7context13verify_regexpNCNvMs0_B1v_NtB1v_11ScanContext17handle_atom_match0Es1_0EB9_(ptr noalias nofree noundef align 8 dereferenceable(1128) %0, i32 noundef %.val27, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.np, i64 noundef %i.nq, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %3, i1 noundef zeroext %i.nr, ptr noalias nofree noundef align 8 captures(address) dereferenceable(48) %i.y) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  br label %_RINvMNtNtNtCs7gfv9tzbXmh_6yara_x2re4fast6fastvmNtB3_6FastVM9try_matchNtB7_10BckCodeLocNCINvNtNtB9_7scanner7context13verify_regexpNCNvMs0_B1r_NtB1r_11ScanContext17handle_atom_match0Es0_0EB9_.exit

bb.dd:                                            ; preds = %bb.da
  %i.nx = getelementptr inbounds nuw i8, ptr %0, i64 1128 ; 3 uses
  %i.ny = trunc i16 %5 to i1                      ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3600)
  call void @llvm.experimental.noalias.scope.decl(metadata !3603)
  %i.nz = getelementptr inbounds nuw i8, ptr %0, i64 1352 ; 2 uses
  %i.oa = load i16, ptr %i.nz, align 8, !alias.scope !3600, !noalias !3605, !noundef !27
  %i.ob = zext i16 %i.oa to i64
  %i.oc = call i64 @llvm.usub.sat.i64(i64 range(i64 0, -9223372036854775808) %3, i64 %i.ob) ; 2 uses
  %i.od = sub nuw nsw i64 %3, %i.oc               ; 22 uses
  %i.oe = getelementptr inbounds nuw i8, ptr %1, i64 %i.oc ; 23 uses
  call fastcc void @_RNvMNtNtCs7gfv9tzbXmh_6yara_x2re9bitmapsetINtB2_9BitmapSetuE6insertB6_(ptr noalias nofree noundef nonnull align 8 dereferenceable(232) %i.nx, i64 noundef 0) #41
  %spec.select.i28 = select i1 %i.ny, i8 2, i8 0  ; 3 uses
  %i.of = getelementptr inbounds nuw i8, ptr %0, i64 1144 ; 5 uses
  %.val646.i = load i64, ptr %i.of, align 8, !alias.scope !3600, !noalias !3605, !noundef !27 ; 3 uses
  %i.og = icmp ult i64 %.val646.i, 1152921504606846976
  call void @llvm.assume(i1 %i.og)
  %i.oh = icmp eq i64 %.val646.i, 0
  br i1 %i.oh, label %_RINvMNtNtNtCs7gfv9tzbXmh_6yara_x2re4fast6fastvmNtB3_6FastVM9try_matchNtB7_10BckCodeLocNCINvNtNtB9_7scanner7context13verify_regexpNCNvMs0_B1r_NtB1r_11ScanContext17handle_atom_match0Es0_0EB9_.exit, label %.lr.ph649.i

.lr.ph649.i:                                      ; preds = %bb.dd
  %i.oi = zext i32 %.val27 to i64
  %i.oj = add nsw i64 %i.oi, -1
  %i.ok = getelementptr inbounds nuw i8, ptr %0, i64 1344
  %i.ol = getelementptr inbounds nuw i8, ptr %0, i64 1336
  %i.om = getelementptr inbounds nuw i8, ptr %0, i64 1136 ; 9 uses
  %i.on = getelementptr inbounds nuw i8, ptr %1, i64 %3
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.5.0..sroa_idx.i29 = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.oo = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.op = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.oq = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.or = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.os = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.ot = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.ou = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ov = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.ow = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.ox = getelementptr inbounds nuw i8, ptr %6, i64 40
  %.mask103 = and i16 %5, 1
  %i.oy = zext nneg i16 %.mask103 to i64          ; 5 uses
  %i.oz = getelementptr inbounds nuw i8, ptr %0, i64 1232 ; 15 uses
  %..neg41.i.i = select i1 %i.ny, i64 -2, i64 -1
  %.lobit.i.i = lshr exact i8 %spec.select.i28, 1
  %i.pa = zext nneg i8 %.lobit.i.i to i64         ; 2 uses
  %i.pb = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.4108.0..sroa_idx.i30 = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.6.0..sroa_idx.i31 = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.sroa.8.0..sroa_idx.i32 = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %.sroa.9.0..sroa_idx.i33 = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.pc = getelementptr inbounds nuw i8, ptr %0, i64 1248 ; 2 uses
  %i.pd = getelementptr inbounds nuw i8, ptr %0, i64 1160 ; 2 uses
  %i.pe = getelementptr inbounds nuw i8, ptr %0, i64 1264 ; 2 uses
  %i.pf = getelementptr inbounds nuw i8, ptr %0, i64 1176 ; 2 uses
  %i.pg = getelementptr inbounds nuw i8, ptr %0, i64 1280 ; 2 uses
  %i.ph = getelementptr inbounds nuw i8, ptr %0, i64 1192 ; 2 uses
  %i.pi = getelementptr inbounds nuw i8, ptr %0, i64 1296 ; 2 uses
  %i.pj = getelementptr inbounds nuw i8, ptr %0, i64 1208 ; 2 uses
  %i.pk = getelementptr inbounds nuw i8, ptr %0, i64 1312 ; 2 uses
  %i.pl = getelementptr inbounds nuw i8, ptr %0, i64 1224 ; 2 uses
  %i.pm = getelementptr inbounds nuw i8, ptr %0, i64 1328 ; 2 uses
  %spec.select652.i = or disjoint i8 %spec.select.i28, 1
  br label %bb.de

bb.de:                                            ; preds = %.loopexit.i37, %.lr.ph649.i
  %.val648.i = phi i64 [ %.val646.i, %.lr.ph649.i ], [ %.val.i, %.loopexit.i37 ] ; 8 uses
  %.sroa.0.0647.i = phi i64 [ %i.oj, %.lr.ph649.i ], [ %i.sb, %.loopexit.i37 ] ; 12 uses
  %i.pn = load i64, ptr %i.ok, align 8, !alias.scope !3600, !noalias !3605, !noundef !27 ; 10 uses
  %i.po = icmp ugt i64 %.sroa.0.0647.i, %i.pn
  br i1 %i.po, label %bb.dv, label %bb.df, !prof !59

bb.df:                                            ; preds = %bb.de
  %i.pp = load ptr, ptr %i.ol, align 8, !alias.scope !3600, !noalias !3605, !nonnull !27, !noundef !27 ; 2 uses
  %i.pq = sub nuw i64 %i.pn, %.sroa.0.0647.i      ; 14 uses
  %i.pr = getelementptr inbounds nuw i8, ptr %i.pp, i64 %.sroa.0.0647.i ; 14 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3607)
  %.not.i228.i = icmp eq i64 %i.pn, %.sroa.0.0647.i
  br i1 %.not.i228.i, label %bb.dg, label %bb.dh, !prof !59

bb.dg:                                            ; preds = %bb.df
  call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @352) #39, !noalias !3610
  unreachable

bb.dh:                                            ; preds = %bb.df
  %i.ps = load i8, ptr %i.pr, align 1, !alias.scope !3607, !noalias !3612, !noundef !27 ; 2 uses
  switch i8 %i.ps, label %bb.di [
    i8 1, label %bb.dj
    i8 2, label %bb.dl
    i8 7, label %bb.dp
    i8 3, label %.lr.ph628.i
    i8 4, label %bb.dr
    i8 5, label %.lr.ph618.i
    i8 6, label %bb.dt
    i8 0, label %.lr.ph.preheader.i34
  ], !prof !3444

bb.di:                                            ; preds = %bb.dh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !3613
  store i8 %i.ps, ptr %i.g, align 1, !noalias !3613
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !3613
  store ptr %i.g, ptr %i.f, align 8, !noalias !3613
  %.sroa.443.0..sroa_idx.i260.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @_RNvXNtNtNtCskKLDkoKarTP_4core3fmt3num3imphNtB6_7Display3fmt, ptr %.sroa.443.0..sroa_idx.i260.i, align 8, !noalias !3613
  call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @359, ptr noundef nonnull %i.f, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @360) #39, !noalias !3610
  unreachable

bb.dj:                                            ; preds = %bb.dh
  %i.pt = getelementptr inbounds nuw i8, ptr %i.pr, i64 1
  %.sroa.044.0.copyload.i256.i = load i16, ptr %i.pt, align 1, !alias.scope !3607, !noalias !3612
  %i.pu = zext i16 %.sroa.044.0.copyload.i256.i to i64 ; 6 uses
  %i.pv = add nuw nsw i64 %i.pu, 3                ; 4 uses
  %.not60.i257.i = icmp samesign ugt i64 %i.pv, %i.pq
  br i1 %.not60.i257.i, label %bb.dk, label %.lr.ph644.i, !prof !59

bb.dk:                                            ; preds = %bb.dj
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef 3, i64 noundef %i.pv, i64 noundef range(i64 0, -9223372036854775808) %i.pq, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @353) #39, !noalias !3610
  unreachable

end_hunk_0
begin_hunk_1_@_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x2re4fast6fastvmNtB4_6FastVM8jump_bck:bb.a
  %i.r = sub nuw nsw i64 %i.h, %i.g               ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 %i.g ; 8 uses
  br i1 %2, label %bb.f, label %bb.d

_RINvNtNtNtCslssDYltVX0B_6memchr4arch7generic6memchr21search_slice_with_rawNCNvNtB8_6memchr6memchr0ECs7gfv9tzbXmh_6yara_x.exit.thread52: ; preds = %bb.b
  %i.t = sub nuw nsw i64 %i.h, %i.g               ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 %i.g ; 5 uses
  %i.v = getelementptr i8, ptr %0, i64 %i.h       ; 2 uses
  br i1 %2, label %bb.g, label %.lr.ph.thread

bb.d:                                             ; preds = %_RINvNtNtNtCslssDYltVX0B_6memchr4arch7generic6memchr21search_slice_with_rawNCNvNtB8_6memchr6memchr0ECs7gfv9tzbXmh_6yara_x.exit
  %i.w = icmp samesign eq i64 %i.g, %i.h
  br i1 %i.w, label %.loopexit, label %.lr.ph

.lr.ph.thread:                                    ; preds = %_RINvNtNtNtCslssDYltVX0B_6memchr4arch7generic6memchr21search_slice_with_rawNCNvNtB8_6memchr6memchr0ECs7gfv9tzbXmh_6yara_x.exit.thread52
  %invariant.op54 = add nuw i64 %i.d, %i.t
  %i.x = ptrtoint ptr %i.u to i64
  %.neg2455 = add nsw i64 %..neg41, %5
  %.reass56 = add i64 %.neg2455, %invariant.op54
  %i.y = add i64 %.reass56, %i.x
  br label %.lr.ph.split

.lr.ph:                                           ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 %i.h
  %invariant.op = add nuw i64 %i.d, %i.r
  %i.aa = ptrtoint ptr %i.s to i64
  %.neg24 = add nsw i64 %..neg41, %5
  %.reass = add i64 %.neg24, %invariant.op
  %i.ab = add i64 %.reass, %i.aa
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.e
  %.sroa.5.032.us = phi ptr [ %i.ac, %bb.e ], [ %i.z, %.lr.ph ]
  %i.ac = getelementptr inbounds i8, ptr %.sroa.5.032.us, i64 -1 ; 4 uses
  %i.ad = load i8, ptr %i.ac, align 1, !noundef !27
  %i.ae = icmp eq i8 %i.ad, 10
  br i1 %i.ae, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %.lr.ph.split.us
  %i.af = ptrtoint ptr %i.ac to i64
  %i.ag = sub i64 %i.ab, %i.af
  tail call fastcc void @_RNvMNtNtCs7gfv9tzbXmh_6yara_x2re9bitmapsetINtB2_9BitmapSetuE6insertB6_(ptr noalias nofree noundef align 8 dereferenceable(104) %6, i64 noundef %i.ag) #41
  %i.ah = icmp eq ptr %i.s, %i.ac
  br i1 %i.ah, label %.loopexit, label %.lr.ph.split.us

bb.f:                                             ; preds = %_RINvNtNtNtCslssDYltVX0B_6memchr4arch7generic6memchr21search_slice_with_rawNCNvNtB8_6memchr6memchr0ECs7gfv9tzbXmh_6yara_x.exit
  %i.ai = getelementptr i8, ptr %0, i64 %i.h
  %i.aj = load atomic ptr, ptr @_RNvNvNtNtNtCslssDYltVX0B_6memchr4arch6x86_646memchr12memrchr2_raw2FN monotonic, align 8, !noalias !5731, !nonnull !27, !noundef !27
  %i.ak = tail call { i64, ptr } %i.aj(i8 noundef %.fr42, i8 noundef 10, ptr noundef nonnull %i.s, ptr noundef %i.ai), !noalias !5731, !inline_history !5736 ; 3 uses
  %i.al = extractvalue { i64, ptr } %i.ak, 0
  %i.am = trunc nuw i64 %i.al to i1
  br i1 %i.am, label %.lr.ph39, label %.loopexit

.lr.ph39:                                         ; preds = %bb.f
  %invariant.op37 = add nsw i64 %..neg41, %i.r
  %i.an = icmp eq i8 %.fr42, 10
  %.neg29 = add nuw i64 %i.d, %5
  %.reass38 = add i64 %.neg29, %invariant.op37    ; 2 uses
  br i1 %i.an, label %.lr.ph39.split.us, label %.lr.ph39.split

.lr.ph39.split.us:                                ; preds = %.lr.ph39, %.lr.ph39.split.us
  %i.ao = phi { i64, ptr } [ %i.at, %.lr.ph39.split.us ], [ %i.ak, %.lr.ph39 ]
  %i.ap = extractvalue { i64, ptr } %i.ao, 1      ; 2 uses
  %i.aq = tail call noundef i64 @_RNvXNtCslssDYltVX0B_6memchr3extPhNtB2_7Pointer8distanceCs7gfv9tzbXmh_6yara_x(ptr noundef %i.ap, ptr noundef nonnull %i.s), !noalias !5737
  %i.ar = sub i64 %.reass38, %i.aq
  tail call fastcc void @_RNvMNtNtCs7gfv9tzbXmh_6yara_x2re9bitmapsetINtB2_9BitmapSetuE6insertB6_(ptr noalias nofree noundef align 8 dereferenceable(104) %6, i64 noundef %i.ar) #41
  %i.as = load atomic ptr, ptr @_RNvNvNtNtNtCslssDYltVX0B_6memchr4arch6x86_646memchr12memrchr2_raw2FN monotonic, align 8, !noalias !5731, !nonnull !27, !noundef !27
  %i.at = tail call { i64, ptr } %i.as(i8 noundef 10, i8 noundef 10, ptr noundef nonnull %i.s, ptr noundef %i.ap), !noalias !5731, !inline_history !5736 ; 2 uses
  %i.au = extractvalue { i64, ptr } %i.at, 0
  %i.av = trunc nuw i64 %i.au to i1
  br i1 %i.av, label %.lr.ph39.split.us, label %.loopexit

bb.g:                                             ; preds = %_RINvNtNtNtCslssDYltVX0B_6memchr4arch7generic6memchr21search_slice_with_rawNCNvNtB8_6memchr6memchr0ECs7gfv9tzbXmh_6yara_x.exit.thread52
  %i.aw = load atomic ptr, ptr @_RNvNvNtNtNtCslssDYltVX0B_6memchr4arch6x86_646memchr11memrchr_raw2FN monotonic, align 8, !noalias !5738, !nonnull !27, !noundef !27
  %i.ax = tail call { i64, ptr } %i.aw(i8 noundef %.fr42, ptr noundef nonnull %i.u, ptr noundef %i.v), !noalias !5738, !inline_history !5743 ; 2 uses
  %i.ay = extractvalue { i64, ptr } %i.ax, 0
  %i.az = trunc nuw i64 %i.ay to i1
  br i1 %i.az, label %.lr.ph36, label %.loopexit

.lr.ph36:                                         ; preds = %bb.g
  %invariant.op34 = add nsw i64 %..neg41, %i.t
  %.neg27 = add nuw i64 %i.d, %5
  %.reass35 = add i64 %.neg27, %invariant.op34
  br label %bb.k

.lr.ph39.split:                                   ; preds = %.lr.ph39, %bb.h
  %i.ba = phi { i64, ptr } [ %i.bg, %bb.h ], [ %i.ak, %.lr.ph39 ]
  %i.bb = extractvalue { i64, ptr } %i.ba, 1      ; 2 uses
  %i.bc = tail call noundef i64 @_RNvXNtCslssDYltVX0B_6memchr3extPhNtB2_7Pointer8distanceCs7gfv9tzbXmh_6yara_x(ptr noundef %i.bb, ptr noundef nonnull %i.s), !noalias !5737 ; 4 uses
  %i.bd = icmp ult i64 %i.bc, %i.r
  br i1 %i.bd, label %bb.i, label %bb.j

bb.h:                                             ; preds = %bb.i
  %i.be = sub i64 %.reass38, %i.bc
  tail call fastcc void @_RNvMNtNtCs7gfv9tzbXmh_6yara_x2re9bitmapsetINtB2_9BitmapSetuE6insertB6_(ptr noalias nofree noundef align 8 dereferenceable(104) %6, i64 noundef %i.be) #41
  %i.bf = load atomic ptr, ptr @_RNvNvNtNtNtCslssDYltVX0B_6memchr4arch6x86_646memchr12memrchr2_raw2FN monotonic, align 8, !noalias !5731, !nonnull !27, !noundef !27
  %i.bg = tail call { i64, ptr } %i.bf(i8 noundef %.fr42, i8 noundef 10, ptr noundef nonnull %i.s, ptr noundef %i.bb), !noalias !5731, !inline_history !5736 ; 2 uses
  %i.bh = extractvalue { i64, ptr } %i.bg, 0
  %i.bi = trunc nuw i64 %i.bh to i1
  br i1 %i.bi, label %.lr.ph39.split, label %.loopexit

bb.i:                                             ; preds = %.lr.ph39.split
  %i.bj = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.bc
  %i.bk = load i8, ptr %i.bj, align 1, !noundef !27
  %i.bl = icmp eq i8 %i.bk, 10
  br i1 %i.bl, label %.loopexit, label %bb.h

bb.j:                                             ; preds = %.lr.ph39.split
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.bc, i64 noundef %i.r, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @361) #39
  unreachable

bb.k:                                             ; preds = %.lr.ph36, %bb.k
  %i.bm = phi { i64, ptr } [ %i.ax, %.lr.ph36 ], [ %i.br, %bb.k ]
  %i.bn = extractvalue { i64, ptr } %i.bm, 1      ; 2 uses
  %i.bo = tail call noundef i64 @_RNvXNtCslssDYltVX0B_6memchr3extPhNtB2_7Pointer8distanceCs7gfv9tzbXmh_6yara_x(ptr noundef %i.bn, ptr noundef nonnull %i.u), !noalias !5744
  %i.bp = sub i64 %.reass35, %i.bo
  tail call fastcc void @_RNvMNtNtCs7gfv9tzbXmh_6yara_x2re9bitmapsetINtB2_9BitmapSetuE6insertB6_(ptr noalias nofree noundef align 8 dereferenceable(104) %6, i64 noundef %i.bp) #41
  %i.bq = load atomic ptr, ptr @_RNvNvNtNtNtCslssDYltVX0B_6memchr4arch6x86_646memchr11memrchr_raw2FN monotonic, align 8, !noalias !5738, !nonnull !27, !noundef !27
  %i.br = tail call { i64, ptr } %i.bq(i8 noundef %.fr42, ptr noundef nonnull %i.u, ptr noundef %i.bn), !noalias !5738, !inline_history !5743 ; 2 uses
  %i.bs = extractvalue { i64, ptr } %i.br, 0
  %i.bt = trunc nuw i64 %i.bs to i1
  br i1 %i.bt, label %bb.k, label %.loopexit

.lr.ph.split:                                     ; preds = %.lr.ph.thread, %.lr.ph.split
  %.sroa.5.032 = phi ptr [ %i.bu, %.lr.ph.split ], [ %i.v, %.lr.ph.thread ]
  %i.bu = getelementptr inbounds i8, ptr %.sroa.5.032, i64 -1 ; 3 uses
  %i.bv = ptrtoint ptr %i.bu to i64
  %i.bw = sub i64 %i.y, %i.bv
  tail call fastcc void @_RNvMNtNtCs7gfv9tzbXmh_6yara_x2re9bitmapsetINtB2_9BitmapSetuE6insertB6_(ptr noalias nofree noundef align 8 dereferenceable(104) %6, i64 noundef %i.bw) #41
  %i.bx = icmp eq ptr %i.u, %i.bu
  br i1 %i.bx, label %.loopexit, label %.lr.ph.split

.loopexit:                                        ; preds = %.lr.ph.split, %bb.k, %bb.e, %.lr.ph.split.us, %bb.i, %bb.h, %.lr.ph39.split.us, %bb.d, %bb.g, %bb.f, %_RINvNtNtNtCslssDYltVX0B_6memchr4arch7generic6memchr21search_slice_with_rawNCNvNtB8_6memchr6memchr0ECs7gfv9tzbXmh_6yara_x.exit.thread, %bb.a
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x2re4fast6fastvmNtB4_6FastVM8jump_fwd(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef range(i64 0, -9223372036854775808) %1, i1 noundef zeroext %2, i8 %3, i8 noundef %4, i16 %.0.val, i16 %.2.val, i64 noundef range(i64 0, 9223372036854775807) %5, ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %6) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %.fr31 = freeze i8 %3                           ; 5 uses
  %i.a = zext i16 %.0.val to i64
  %i.b = lshr i8 %4, 1
  %.lobit = and i8 %i.b, 1
  %i.c = zext nneg i8 %.lobit to i64              ; 2 uses
  %i.d = shl nuw nsw i64 %i.a, %i.c               ; 9 uses
  %i.e = zext i16 %.2.val to i64
  %.sroa.03.031 = add nuw nsw i64 %i.e, 1
  %i.f = shl nuw nsw i64 %.sroa.03.031, %i.c
  %..i = tail call noundef range(i64 0, -9223372036854775808) i64 @llvm.umin.i64(i64 %i.f, i64 range(i64 0, -9223372036854775808) %1) ; 5 uses
  %.not32 = icmp samesign ult i64 %i.d, %..i
  br i1 %.not32, label %bb.b, label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.g = and i8 %4, 1
  %.not33 = icmp eq i8 %i.g, 0
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 %i.d ; 4 uses
  br i1 %.not33, label %bb.c, label %_RINvNtNtNtCslssDYltVX0B_6memchr4arch7generic6memchr21search_slice_with_rawNCNvNtB8_6memchr6memchr0ECs7gfv9tzbXmh_6yara_x.exit.thread40

bb.c:                                             ; preds = %bb.b
  %i.i = load atomic ptr, ptr @_RNvNvNtNtNtCslssDYltVX0B_6memchr4arch6x86_646memchr10memchr_raw2FN monotonic, align 8, !noalias !5745, !nonnull !27, !noundef !27
  %i.j = tail call { i64, ptr } %i.i(i8 noundef 10, ptr noundef nonnull readonly %0, ptr noundef nonnull readonly %i.h), !noalias !5745, !inline_history !5730 ; 2 uses
  %i.k = extractvalue { i64, ptr } %i.j, 0
  %i.l = trunc nuw i64 %i.k to i1
  br i1 %i.l, label %_RINvNtNtNtCslssDYltVX0B_6memchr4arch7generic6memchr21search_slice_with_rawNCNvNtB8_6memchr6memchr0ECs7gfv9tzbXmh_6yara_x.exit.thread, label %_RINvNtNtNtCslssDYltVX0B_6memchr4arch7generic6memchr21search_slice_with_rawNCNvNtB8_6memchr6memchr0ECs7gfv9tzbXmh_6yara_x.exit

_RINvNtNtNtCslssDYltVX0B_6memchr4arch7generic6memchr21search_slice_with_rawNCNvNtB8_6memchr6memchr0ECs7gfv9tzbXmh_6yara_x.exit.thread: ; preds = %bb.c
  %i.m = extractvalue { i64, ptr } %i.j, 1
  %i.n = tail call noundef i64 @_RNvXNtCslssDYltVX0B_6memchr3extPhNtB2_7Pointer8distanceCs7gfv9tzbXmh_6yara_x(ptr noundef %i.m, ptr noundef nonnull readonly %0) ; 0 uses
  br label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.thread

_RINvNtNtNtCslssDYltVX0B_6memchr4arch7generic6memchr21search_slice_with_rawNCNvNtB8_6memchr6memchr0ECs7gfv9tzbXmh_6yara_x.exit: ; preds = %bb.c
  %i.o = sub nuw nsw i64 %..i, %i.d               ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 %i.d ; 5 uses
  %i.q = getelementptr i8, ptr %0, i64 %..i       ; 4 uses
  br i1 %2, label %bb.f, label %bb.d

_RINvNtNtNtCslssDYltVX0B_6memchr4arch7generic6memchr21search_slice_with_rawNCNvNtB8_6memchr6memchr0ECs7gfv9tzbXmh_6yara_x.exit.thread40: ; preds = %bb.b
  %i.r = getelementptr i8, ptr %0, i64 %..i       ; 3 uses
  br i1 %2, label %bb.g, label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.lr.ph.thread

bb.d:                                             ; preds = %_RINvNtNtNtCslssDYltVX0B_6memchr4arch7generic6memchr21search_slice_with_rawNCNvNtB8_6memchr6memchr0ECs7gfv9tzbXmh_6yara_x.exit
  %i.s = icmp samesign eq i64 %i.d, %..i
  br i1 %i.s, label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.thread, label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.lr.ph

_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.lr.ph.thread: ; preds = %_RINvNtNtNtCslssDYltVX0B_6memchr4arch7generic6memchr21search_slice_with_rawNCNvNtB8_6memchr6memchr0ECs7gfv9tzbXmh_6yara_x.exit.thread40
  %i.t = add nuw i64 %i.d, %5
  br label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit

_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.lr.ph: ; preds = %bb.d
  %i.u = add nuw i64 %i.d, %5
  br label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.us

_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.us: ; preds = %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.lr.ph, %bb.e
  %.sroa.0.027.us = phi ptr [ %i.y, %bb.e ], [ %i.p, %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.lr.ph ] ; 2 uses
  %.sroa.8.026.us = phi i64 [ %i.x, %bb.e ], [ 0, %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.lr.ph ] ; 2 uses
  %i.v = load i8, ptr %.sroa.0.027.us, align 1, !noundef !27
  %i.w = icmp eq i8 %i.v, 10
  br i1 %i.w, label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.thread, label %bb.e

bb.e:                                             ; preds = %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.us
  %i.x = add i64 %.sroa.8.026.us, 1
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.027.us, i64 1 ; 2 uses
  %i.z = add i64 %i.u, %.sroa.8.026.us
  tail call fastcc void @_RNvMNtNtCs7gfv9tzbXmh_6yara_x2re9bitmapsetINtB2_9BitmapSetuE6insertB6_(ptr noalias nofree noundef align 8 dereferenceable(104) %6, i64 noundef %i.z) #41
  %i.aa = icmp eq ptr %i.y, %i.q
  br i1 %i.aa, label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.thread, label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.us

bb.f:                                             ; preds = %_RINvNtNtNtCslssDYltVX0B_6memchr4arch7generic6memchr21search_slice_with_rawNCNvNtB8_6memchr6memchr0ECs7gfv9tzbXmh_6yara_x.exit
  %i.ab = load atomic ptr, ptr @_RNvNvNtNtNtCslssDYltVX0B_6memchr4arch6x86_646memchr11memchr2_raw2FN monotonic, align 8, !noalias !5748, !nonnull !27, !noundef !27
  %i.ac = tail call { i64, ptr } %i.ab(i8 noundef %.fr31, i8 noundef 10, ptr noundef nonnull %i.p, ptr noundef %i.q), !noalias !5748, !inline_history !5753 ; 3 uses
  %i.ad = extractvalue { i64, ptr } %i.ac, 0
  %i.ae = trunc nuw i64 %i.ad to i1
  br i1 %i.ae, label %.lr.ph29, label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.thread

.lr.ph29:                                         ; preds = %bb.f
  %i.af = icmp eq i8 %.fr31, 10
  %i.ag = add nuw i64 %i.d, %5                    ; 2 uses
  br i1 %i.af, label %.lr.ph29.split.us, label %.lr.ph29.split

.lr.ph29.split.us:                                ; preds = %.lr.ph29, %.lr.ph29.split.us
  %i.ah = phi { i64, ptr } [ %i.an, %.lr.ph29.split.us ], [ %i.ac, %.lr.ph29 ]
  %i.ai = extractvalue { i64, ptr } %i.ah, 1      ; 2 uses
  %i.aj = tail call noundef i64 @_RNvXNtCslssDYltVX0B_6memchr3extPhNtB2_7Pointer8distanceCs7gfv9tzbXmh_6yara_x(ptr noundef %i.ai, ptr noundef nonnull %i.p), !noalias !5754
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 1
  %i.al = add i64 %i.ag, %i.aj
  tail call fastcc void @_RNvMNtNtCs7gfv9tzbXmh_6yara_x2re9bitmapsetINtB2_9BitmapSetuE6insertB6_(ptr noalias nofree noundef align 8 dereferenceable(104) %6, i64 noundef %i.al) #41
  %i.am = load atomic ptr, ptr @_RNvNvNtNtNtCslssDYltVX0B_6memchr4arch6x86_646memchr11memchr2_raw2FN monotonic, align 8, !noalias !5748, !nonnull !27, !noundef !27
  %i.an = tail call { i64, ptr } %i.am(i8 noundef 10, i8 noundef 10, ptr noundef nonnull %i.ak, ptr noundef %i.q), !noalias !5748, !inline_history !5753 ; 2 uses
  %i.ao = extractvalue { i64, ptr } %i.an, 0
  %i.ap = trunc nuw i64 %i.ao to i1
  br i1 %i.ap, label %.lr.ph29.split.us, label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.thread

bb.g:                                             ; preds = %_RINvNtNtNtCslssDYltVX0B_6memchr4arch7generic6memchr21search_slice_with_rawNCNvNtB8_6memchr6memchr0ECs7gfv9tzbXmh_6yara_x.exit.thread40
  %i.aq = load atomic ptr, ptr @_RNvNvNtNtNtCslssDYltVX0B_6memchr4arch6x86_646memchr10memchr_raw2FN monotonic, align 8, !noalias !5755, !nonnull !27, !noundef !27
  %i.ar = tail call { i64, ptr } %i.aq(i8 noundef %.fr31, ptr noundef nonnull %i.h, ptr noundef %i.r), !noalias !5755, !inline_history !5760 ; 2 uses
  %i.as = extractvalue { i64, ptr } %i.ar, 0
  %i.at = trunc nuw i64 %i.as to i1
  br i1 %i.at, label %.lr.ph, label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.thread

.lr.ph:                                           ; preds = %bb.g
  %i.au = add nuw i64 %i.d, %5
  br label %bb.k

.lr.ph29.split:                                   ; preds = %.lr.ph29, %bb.h
  %i.av = phi { i64, ptr } [ %i.bc, %bb.h ], [ %i.ac, %.lr.ph29 ]
  %i.aw = extractvalue { i64, ptr } %i.av, 1      ; 2 uses
  %i.ax = tail call noundef i64 @_RNvXNtCslssDYltVX0B_6memchr3extPhNtB2_7Pointer8distanceCs7gfv9tzbXmh_6yara_x(ptr noundef %i.aw, ptr noundef nonnull %i.p), !noalias !5754 ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 1
  %i.az = icmp ult i64 %i.ax, %i.o
  br i1 %i.az, label %bb.i, label %bb.j

bb.h:                                             ; preds = %bb.i
  %i.ba = add nuw i64 %i.ag, %i.ax
  tail call fastcc void @_RNvMNtNtCs7gfv9tzbXmh_6yara_x2re9bitmapsetINtB2_9BitmapSetuE6insertB6_(ptr noalias nofree noundef align 8 dereferenceable(104) %6, i64 noundef %i.ba) #41
  %i.bb = load atomic ptr, ptr @_RNvNvNtNtNtCslssDYltVX0B_6memchr4arch6x86_646memchr11memchr2_raw2FN monotonic, align 8, !noalias !5748, !nonnull !27, !noundef !27
  %i.bc = tail call { i64, ptr } %i.bb(i8 noundef %.fr31, i8 noundef 10, ptr noundef nonnull %i.ay, ptr noundef %i.q), !noalias !5748, !inline_history !5753 ; 2 uses
  %i.bd = extractvalue { i64, ptr } %i.bc, 0
  %i.be = trunc nuw i64 %i.bd to i1
  br i1 %i.be, label %.lr.ph29.split, label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.thread

bb.i:                                             ; preds = %.lr.ph29.split
  %i.bf = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.ax
  %i.bg = load i8, ptr %i.bf, align 1, !noundef !27
  %i.bh = icmp eq i8 %i.bg, 10
  br i1 %i.bh, label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.thread, label %bb.h

bb.j:                                             ; preds = %.lr.ph29.split
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.ax, i64 noundef %i.o, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @362) #39
  unreachable

bb.k:                                             ; preds = %.lr.ph, %bb.k
  %i.bi = phi { i64, ptr } [ %i.ar, %.lr.ph ], [ %i.bo, %bb.k ]
  %i.bj = extractvalue { i64, ptr } %i.bi, 1      ; 2 uses
  %i.bk = tail call noundef i64 @_RNvXNtCslssDYltVX0B_6memchr3extPhNtB2_7Pointer8distanceCs7gfv9tzbXmh_6yara_x(ptr noundef %i.bj, ptr noundef nonnull %i.h), !noalias !5761
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 1
  %i.bm = add i64 %i.au, %i.bk
  tail call fastcc void @_RNvMNtNtCs7gfv9tzbXmh_6yara_x2re9bitmapsetINtB2_9BitmapSetuE6insertB6_(ptr noalias nofree noundef align 8 dereferenceable(104) %6, i64 noundef %i.bm) #41
  %i.bn = load atomic ptr, ptr @_RNvNvNtNtNtCslssDYltVX0B_6memchr4arch6x86_646memchr10memchr_raw2FN monotonic, align 8, !noalias !5755, !nonnull !27, !noundef !27
  %i.bo = tail call { i64, ptr } %i.bn(i8 noundef %.fr31, ptr noundef nonnull %i.bl, ptr noundef %i.r), !noalias !5755, !inline_history !5760 ; 2 uses
  %i.bp = extractvalue { i64, ptr } %i.bo, 0
  %i.bq = trunc nuw i64 %i.bp to i1
  br i1 %i.bq, label %bb.k, label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.thread

_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit: ; preds = %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.lr.ph.thread, %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit
  %.sroa.0.027 = phi ptr [ %i.br, %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit ], [ %i.h, %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.lr.ph.thread ]
  %.sroa.8.026 = phi i64 [ %i.bs, %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit ], [ 0, %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.lr.ph.thread ] ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.0.027, i64 1 ; 2 uses
  %i.bs = add i64 %.sroa.8.026, 1
  %i.bt = add i64 %i.t, %.sroa.8.026
  tail call fastcc void @_RNvMNtNtCs7gfv9tzbXmh_6yara_x2re9bitmapsetINtB2_9BitmapSetuE6insertB6_(ptr noalias nofree noundef align 8 dereferenceable(104) %6, i64 noundef %i.bt) #41
  %i.bu = icmp eq ptr %i.br, %i.r
  br i1 %i.bu, label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.thread, label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit

_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.thread: ; preds = %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit, %bb.k, %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.us, %bb.e, %bb.i, %bb.h, %.lr.ph29.split.us, %bb.d, %bb.g, %bb.f, %_RINvNtNtNtCslssDYltVX0B_6memchr4arch7generic6memchr21search_slice_with_rawNCNvNtB8_6memchr6memchr0ECs7gfv9tzbXmh_6yara_x.exit.thread, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMsc_NtNtCsiOkGTpNE17y_8wasmtime7runtime5storeINtB5_10StoreInnerNtNtNtCs7gfv9tzbXmh_6yara_x7scanner7context11ScanContextE47validate_sync_resource_limiter_and_store_opaqueB18_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noundef nonnull align 8 %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 3000
  %i.b = load ptr, ptr %i.a, align 8, !noalias !5762, !noundef !27 ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_RNvXse_NtNtCsiOkGTpNE17y_8wasmtime7runtime5storeINtB5_10StoreInnerNtNtNtCs7gfv9tzbXmh_6yara_x7scanner7context11ScanContextENtNtB7_2vm7VMStore33resource_limiter_and_store_opaqueB18_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 3008
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 664
  %i.e = load i64, ptr %i.d, align 8, !range !3804, !noalias !5762, !noundef !27 ; 2 uses
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 792
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = sub i64 %i.h, %i.e
  %i.j = getelementptr i8, ptr %i.f, i64 %i.i
  %i.k = load ptr, ptr %i.c, align 8, !noalias !5762, !nonnull !27, !align !287, !noundef !27
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !invariant.load !27, !noalias !5762, !nonnull !27
  %i.n = tail call { ptr, ptr } %i.m(ptr noundef nonnull %i.b, ptr noalias nofree noundef align 8 dereferenceable(2208) %i.j) #41, !noalias !5762, !inline_history !5765 ; 2 uses
  %i.o = extractvalue { ptr, ptr } %i.n, 0
  %i.p = extractvalue { ptr, ptr } %i.n, 1
  br label %_RNvXse_NtNtCsiOkGTpNE17y_8wasmtime7runtime5storeINtB5_10StoreInnerNtNtNtCs7gfv9tzbXmh_6yara_x7scanner7context11ScanContextENtNtB7_2vm7VMStore33resource_limiter_and_store_opaqueB18_.exit

_RNvXse_NtNtCsiOkGTpNE17y_8wasmtime7runtime5storeINtB5_10StoreInnerNtNtNtCs7gfv9tzbXmh_6yara_x7scanner7context11ScanContextENtNtB7_2vm7VMStore33resource_limiter_and_store_opaqueB18_.exit: ; preds = %bb.a, %bb.b
  %.sroa.3.0.i = phi ptr [ %i.p, %bb.b ], [ undef, %bb.a ]
  %.sroa.03.0.i = phi ptr [ %i.o, %bb.b ], [ null, %bb.a ]
  store ptr %.sroa.03.0.i, ptr %0, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.3.0.i, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %.sroa.3.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMsd_NtNtNtCsG258MDvU3F_3std4sync6poison6rwlockINtB5_15RwLockReadGuardINtNtNtNtBb_11collections4hash3map7HashMapNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report8SourceIdNtB1Q_14CodeCacheEntryEE3newB1U_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load atomic i8, ptr %i.a monotonic, align 8
  %.not = icmp ne i8 %i.b, 0
  tail call void @_RINvNtNtCsG258MDvU3F_3std4sync6poison10map_resultuINtNtB2_6rwlock15RwLockReadGuardINtNtNtNtB6_11collections4hash3map7HashMapNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report8SourceIdNtB20_14CodeCacheEntryEENCNvMsd_BP_BM_3new0EB24_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i1 noundef zeroext %.not, ptr noundef nonnull align 8 %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMsh_NtNtCs7gfv9tzbXmh_6yara_x8compiler2irNtB5_4Expr10type_value(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 6 uses
  %i.b = load i8, ptr %1, align 8, !range !2523, !noundef !27 ; 2 uses
  %i.c = icmp samesign ugt i8 %i.b, 9
  %i.d = zext nneg i8 %i.b to i64
  %i.e = add nsw i64 %i.d, -9
  %i.f = select i1 %i.c, i64 %i.e, i64 0
  switch i64 %i.f, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.e
    i64 3, label %bb.e
    i64 4, label %bb.e
    i64 5, label %bb.f
    i64 6, label %bb.o
    i64 7, label %bb.o
    i64 8, label %bb.o
    i64 9, label %bb.o
    i64 10, label %bb.d
    i64 11, label %bb.d
    i64 12, label %bb.d
    i64 13, label %bb.d
    i64 14, label %bb.d
    i64 15, label %bb.d
    i64 16, label %bb.d
    i64 17, label %bb.e
    i64 18, label %bb.e
    i64 19, label %bb.e
    i64 20, label %bb.e
    i64 21, label %bb.e
    i64 22, label %bb.e
    i64 23, label %bb.e
    i64 24, label %bb.e
    i64 25, label %bb.e
    i64 26, label %bb.e
    i64 27, label %bb.e
    i64 28, label %bb.e
    i64 29, label %bb.e
    i64 30, label %bb.e
    i64 31, label %bb.e
    i64 32, label %bb.e
    i64 33, label %bb.e
    i64 34, label %bb.e
    i64 35, label %bb.d
    i64 36, label %bb.d
    i64 37, label %bb.d
    i64 38, label %bb.d
    i64 39, label %bb.d
    i64 40, label %bb.d
    i64 41, label %bb.g
    i64 42, label %bb.h
    i64 43, label %bb.i
    i64 44, label %bb.j
    i64 45, label %bb.e
    i64 46, label %bb.e
    i64 47, label %bb.e
    i64 48, label %bb.e
    i64 49, label %bb.k
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  tail call fastcc void @_RNvXss_NtCs7gfv9tzbXmh_6yara_x5typesNtB5_9TypeValueNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %1) #41
  br label %bb.l

bb.d:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 2, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -1, ptr %i.h, align 8
  store i8 3, ptr %0, align 8
  br label %bb.l

bb.e:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 2, ptr %i.i, align 1
  store i8 1, ptr %0, align 8
  br label %bb.l

bb.f:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load i8, ptr %i.j, align 8, !range !67, !noundef !27
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.n, label %bb.m

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !27, !noundef !27
  call void @_RNvMs1_NtCs7gfv9tzbXmh_6yara_x7symbolsNtB5_6Symbol10type_value(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(160) %i.n)
  invoke fastcc void @_RNvXss_NtCs7gfv9tzbXmh_6yara_x5typesNtB5_9TypeValueNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.a)
          to label %bb.s unwind label %bb.r

bb.h:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !nonnull !27, !noundef !27
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  tail call fastcc void @_RNvXss_NtCs7gfv9tzbXmh_6yara_x5typesNtB5_9TypeValueNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.q) #41
  br label %bb.l

bb.i:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !nonnull !27, !noundef !27
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  tail call fastcc void @_RNvXss_NtCs7gfv9tzbXmh_6yara_x5typesNtB5_9TypeValueNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.t) #41
  br label %bb.l

bb.j:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !nonnull !27, !noundef !27
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %i.x = load ptr, ptr %i.w, align 8, !nonnull !27, !noundef !27
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 88
  tail call fastcc void @_RNvXss_NtCs7gfv9tzbXmh_6yara_x5typesNtB5_9TypeValueNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.y) #41
  br label %bb.l

bb.k:                                             ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !nonnull !27, !noundef !27
  tail call fastcc void @_RNvXss_NtCs7gfv9tzbXmh_6yara_x5typesNtB5_9TypeValueNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.aa) #41
  br label %bb.l

bb.l:                                             ; preds = %bb.m, %bb.n, %bb.s, %bb.q, %bb.k, %bb.j, %bb.i, %bb.h, %bb.e, %bb.d, %bb.c
  ret void

bb.m:                                             ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 2, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -1, ptr %i.ac, align 8
  store i8 3, ptr %0, align 8
  br label %bb.l

bb.n:                                             ; preds = %bb.f
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 2, ptr %i.ad, align 8
  store i8 2, ptr %0, align 8
  br label %bb.l

bb.o:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a
  %.sroa.0.0 = getelementptr inbounds nuw i8, ptr %1, i64 32
end_hunk_1
