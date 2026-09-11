Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yara-x-rs/original/yara_x-7f56cf114ea533af.yara_x.54960d49aaff044b-cgu.13?download=true
inline.NumInlined: 4254
inline.NumDeleted: 1726
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 17
begin_hunk_0_@_RINvNtNtCs7gfv9tzbXmh_6yara_x7scanner7context13verify_regexpNCNvMs0_B2_NtB2_11ScanContext17handle_atom_match0EB6_:bb.a

bb.cl:                                            ; preds = %bb.ck
  %i.lv = load i8, ptr %i.lp, align 1, !noalias !3643, !noundef !10
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %bb.ck
  %.sroa.5138.0.i = phi i8 [ %i.lv, %bb.cl ], [ undef, %bb.ck ]
  call fastcc void @_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x2re4fast6fastvmNtB4_6FastVM8jump_fwd(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.lu, i64 noundef %i.lt, i1 noundef zeroext %.not214.i, i8 %.sroa.5138.0.i, i8 noundef %.sroa.0320.0.i, i16 %.sroa.13.0.ph418.i, i16 %spec.select626.i, i64 noundef %i.ls, ptr noalias nofree noundef align 8 dereferenceable(104) %i.bj) #41, !noalias !3643
  br label %.backedge462.i

.backedge462.i:                                   ; preds = %bb.cm, %bb.cj
  %i.lw = icmp eq ptr %i.lr, %i.lq
  br i1 %i.lw, label %.loopexit.i, label %bb.cj

bb.cn:                                            ; preds = %bb.ca
  %.not210.i = icmp eq i16 %.sroa.045.0.copyload.i.i, 0
  br i1 %.not210.i, label %.lr.ph600.i, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.lx = getelementptr inbounds nuw i8, ptr %i.ks, i64 %i.kz
  %i.ly = load i8, ptr %i.lx, align 1, !noalias !3643, !noundef !10
  %i.lz = icmp eq i8 %i.ly, -1
  br i1 %i.lz, label %.lr.ph598.preheader.i, label %.lr.ph600.i

.lr.ph598.preheader.i:                            ; preds = %bb.co
  %.val257.i = load ptr, ptr %i.bd, align 8, !alias.scope !3636, !noalias !3638, !nonnull !10, !noundef !10 ; 2 uses
  %.idx629.i = shl nuw nsw i64 %.val256624.i, 3
  %i.ma = getelementptr inbounds nuw i8, ptr %.val257.i, i64 %.idx629.i
  br label %.lr.ph598.i

.lr.ph598.i:                                      ; preds = %.backedge466.i, %.lr.ph598.preheader.i
  %.sroa.0150.0597.i = phi ptr [ %i.mb, %.backedge466.i ], [ %.val257.i, %.lr.ph598.preheader.i ] ; 2 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %.sroa.0150.0597.i, i64 8 ; 2 uses
  %i.mc = load i64, ptr %.sroa.0150.0597.i, align 8, !noalias !3643, !noundef !10 ; 4 uses
  %.not211.i = icmp ult i64 %i.mc, %..i.i
  br i1 %.not211.i, label %bb.cp, label %.backedge466.i

bb.cp:                                            ; preds = %.lr.ph598.i
  %i.md = sub nuw nsw i64 %..i.i, %i.mc
  %i.me = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.mc
  %i.mf = load i8, ptr %i.la, align 1, !noalias !3643, !noundef !10
  call fastcc void @_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x2re4fast6fastvmNtB4_6FastVM8jump_fwd(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.me, i64 noundef %i.md, i1 noundef zeroext true, i8 %i.mf, i8 noundef %.sroa.0320.0.i, i16 %.sroa.13.0.ph418.i, i16 %spec.select626.i, i64 noundef %i.mc, ptr noalias nofree noundef align 8 dereferenceable(104) %i.bj) #41, !noalias !3643
  br label %.backedge466.i

.backedge466.i:                                   ; preds = %bb.cp, %.lr.ph598.i
  %i.mg = icmp eq ptr %i.mb, %i.ma
  br i1 %i.mg, label %.loopexit.i, label %.lr.ph598.i

bb.cq:                                            ; preds = %.backedge464.i, %.lr.ph600.i
  %.sroa.0156.0599.i = phi ptr [ %.val261.i, %.lr.ph600.i ], [ %i.mh, %.backedge464.i ] ; 2 uses
  %i.mh = getelementptr inbounds nuw i8, ptr %.sroa.0156.0599.i, i64 8 ; 2 uses
  %i.mi = load i64, ptr %.sroa.0156.0599.i, align 8, !noalias !3643, !noundef !10 ; 5 uses
  %.not215.i = icmp ult i64 %i.mi, %..i.i
  br i1 %.not215.i, label %bb.cr, label %.backedge464.i

bb.cr:                                            ; preds = %bb.cq
  %i.mj = sub nuw nsw i64 %..i.i, %i.mi
  %i.mk = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.mi ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3701)
  %..i.i.i = call noundef range(i64 0, -9223372036854775808) i64 @llvm.umin.i64(i64 %i.ln, i64 range(i64 0, -9223372036854775808) %i.mj) ; 3 uses
  %.not32.i.i = icmp samesign ult i64 %i.ll, %..i.i.i
  br i1 %.not32.i.i, label %bb.cs, label %.backedge464.i

bb.cs:                                            ; preds = %bb.cr
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mk, i64 %i.ll ; 3 uses
  br i1 %.not33.i.i, label %bb.ct, label %_RINvNtNtNtCslssDYltVX0B_6memchr4arch7generic6memchr21search_slice_with_rawNCNvNtB8_6memchr6memchr0ECs7gfv9tzbXmh_6yara_x.exit.thread40.i.i

bb.ct:                                            ; preds = %bb.cs
  %i.mm = load atomic ptr, ptr @_RNvNvNtNtNtCslssDYltVX0B_6memchr4arch6x86_646memchr10memchr_raw2FN monotonic, align 8, !noalias !3702, !nonnull !10, !noundef !10
  %i.mn = call { i64, ptr } %i.mm(i8 noundef 10, ptr noundef nonnull readonly %i.mk, ptr noundef nonnull readonly %i.ml), !noalias !3703, !inline_history !3554 ; 2 uses
  %i.mo = extractvalue { i64, ptr } %i.mn, 0
  %i.mp = trunc nuw i64 %i.mo to i1
  br i1 %i.mp, label %_RINvNtNtNtCslssDYltVX0B_6memchr4arch7generic6memchr21search_slice_with_rawNCNvNtB8_6memchr6memchr0ECs7gfv9tzbXmh_6yara_x.exit.thread.i.i, label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.lr.ph.i.i

_RINvNtNtNtCslssDYltVX0B_6memchr4arch7generic6memchr21search_slice_with_rawNCNvNtB8_6memchr6memchr0ECs7gfv9tzbXmh_6yara_x.exit.thread.i.i: ; preds = %bb.ct
  %i.mq = extractvalue { i64, ptr } %i.mn, 1
  %i.mr = call noundef i64 @_RNvXNtCslssDYltVX0B_6memchr3extPhNtB2_7Pointer8distanceCs7gfv9tzbXmh_6yara_x(ptr noundef %i.mq, ptr noundef nonnull readonly %i.mk), !noalias !3704 ; 0 uses
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
  %i.mw = load i8, ptr %.sroa.0.027.us.i.i, align 1, !alias.scope !3705, !noalias !3706, !noundef !10
  %i.mx = icmp eq i8 %i.mw, 10
  br i1 %i.mx, label %.backedge464.i, label %bb.cu

bb.cu:                                            ; preds = %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.us.i.i
  %i.my = add nuw i64 %.sroa.8.026.us.i.i, 1
  %i.mz = getelementptr inbounds nuw i8, ptr %.sroa.0.027.us.i.i, i64 1 ; 2 uses
  %i.na = add i64 %i.mv, %.sroa.8.026.us.i.i
  call fastcc void @_RNvMNtNtCs7gfv9tzbXmh_6yara_x2re9bitmapsetINtB2_9BitmapSetuE6insertB6_(ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %i.bj, i64 noundef %i.na) #41
  %i.nb = icmp eq ptr %i.mz, %i.mu
  br i1 %i.nb, label %.backedge464.i, label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.us.i.i

_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i: ; preds = %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i, %_RINvNtNtNtCslssDYltVX0B_6memchr4arch7generic6memchr21search_slice_with_rawNCNvNtB8_6memchr6memchr0ECs7gfv9tzbXmh_6yara_x.exit.thread40.i.i
  %.sroa.0.027.i.i = phi ptr [ %i.nc, %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i ], [ %i.ml, %_RINvNtNtNtCslssDYltVX0B_6memchr4arch7generic6memchr21search_slice_with_rawNCNvNtB8_6memchr6memchr0ECs7gfv9tzbXmh_6yara_x.exit.thread40.i.i ]
  %.sroa.8.026.i.i = phi i64 [ %i.nd, %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i ], [ 0, %_RINvNtNtNtCslssDYltVX0B_6memchr4arch7generic6memchr21search_slice_with_rawNCNvNtB8_6memchr6memchr0ECs7gfv9tzbXmh_6yara_x.exit.thread40.i.i ] ; 2 uses
  %i.nc = getelementptr inbounds nuw i8, ptr %.sroa.0.027.i.i, i64 1 ; 2 uses
  %i.nd = add nuw i64 %.sroa.8.026.i.i, 1
  %i.ne = add i64 %i.mt, %.sroa.8.026.i.i
  call fastcc void @_RNvMNtNtCs7gfv9tzbXmh_6yara_x2re9bitmapsetINtB2_9BitmapSetuE6insertB6_(ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %i.bj, i64 noundef %i.ne) #41
  %i.nf = icmp eq ptr %i.nc, %i.ms
  br i1 %i.nf, label %.backedge464.i, label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i

.backedge464.i:                                   ; preds = %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i, %bb.cu, %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.us.i.i, %_RINvNtNtNtCslssDYltVX0B_6memchr4arch7generic6memchr21search_slice_with_rawNCNvNtB8_6memchr6memchr0ECs7gfv9tzbXmh_6yara_x.exit.thread.i.i, %bb.cr, %bb.cq
  %i.ng = icmp eq ptr %i.mh, %i.lh
  br i1 %i.ng, label %.loopexit.i, label %bb.cq

bb.cv:                                            ; preds = %bb.e
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %3, i64 noundef %2, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @35) #39
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
  %i.nj = load i64, ptr %i.ad, align 8, !noundef !10 ; 3 uses
  store i64 %i.nj, ptr %i.z, align 8
  %i.nk = getelementptr inbounds nuw i8, ptr %4, i64 40
  %.val27 = load i32, ptr %i.nk, align 8, !noundef !10 ; 3 uses
  %.not17 = icmp eq i32 %.val27, 0
  br i1 %.not17, label %bb.cy, label %bb.cx

_RINvMNtNtNtCs7gfv9tzbXmh_6yara_x2re4fast6fastvmNtB3_6FastVM9try_matchNtB7_10BckCodeLocNCINvNtNtB9_7scanner7context13verify_regexpNCNvMs0_B1r_NtB1r_11ScanContext17handle_atom_match0Es0_0EB9_.exit: ; preds = %.loopexit.i37, %_RINvMNtNtNtCs7gfv9tzbXmh_6yara_x2re4fast6fastvmNtB3_6FastVM9try_matchNtB7_10FwdCodeLocNCINvNtNtB9_7scanner7context13verify_regexpNCNvMs0_B1r_NtB1r_11ScanContext17handle_atom_match0E0EB9_.exit, %_RINvMNtNtNtCs7gfv9tzbXmh_6yara_x2re4fast6fastvmNtB3_6FastVM9try_matchNtB7_10FwdCodeLocNCINvNtNtB9_7scanner7context13verify_regexpNCNvMs0_B1r_NtB1r_11ScanContext17handle_atom_match0E0EB9_.exit.thread783, %bb.dc, %bb.dd, %bb.cy, %bb.gx
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
  br i1 %i.no, label %bb.gx, label %_RINvMNtNtNtCs7gfv9tzbXmh_6yara_x2re4fast6fastvmNtB3_6FastVM9try_matchNtB7_10BckCodeLocNCINvNtNtB9_7scanner7context13verify_regexpNCNvMs0_B1r_NtB1r_11ScanContext17handle_atom_match0Es0_0EB9_.exit

bb.cz:                                            ; preds = %bb.cx
  br i1 %i.nm, label %bb.db, label %bb.dc, !prof !14

bb.da:                                            ; preds = %bb.cx
  br i1 %i.nm, label %bb.gw, label %bb.dd, !prof !51

bb.db:                                            ; preds = %bb.cz
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %3, i64 noundef %2, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @36) #39
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
  call void @llvm.experimental.noalias.scope.decl(metadata !3707)
  call void @llvm.experimental.noalias.scope.decl(metadata !3708)
  %i.nz = getelementptr inbounds nuw i8, ptr %0, i64 1352 ; 2 uses
  %i.oa = load i16, ptr %i.nz, align 8, !alias.scope !3707, !noalias !3709, !noundef !10
  %i.ob = zext i16 %i.oa to i64
  %i.oc = call i64 @llvm.usub.sat.i64(i64 range(i64 0, -9223372036854775808) %3, i64 %i.ob) ; 2 uses
  %i.od = sub nuw nsw i64 %3, %i.oc               ; 22 uses
  %i.oe = getelementptr inbounds nuw i8, ptr %1, i64 %i.oc ; 23 uses
  call fastcc void @_RNvMNtNtCs7gfv9tzbXmh_6yara_x2re9bitmapsetINtB2_9BitmapSetuE6insertB6_(ptr noalias nofree noundef nonnull align 8 dereferenceable(232) %i.nx, i64 noundef 0) #41
  %spec.select.i28 = select i1 %i.ny, i8 2, i8 0  ; 3 uses
  %i.of = getelementptr inbounds nuw i8, ptr %0, i64 1144 ; 5 uses
  %.val646.i = load i64, ptr %i.of, align 8, !alias.scope !3707, !noalias !3709, !noundef !10 ; 3 uses
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
  %i.pn = load i64, ptr %i.ok, align 8, !alias.scope !3707, !noalias !3709, !noundef !10 ; 10 uses
  %i.po = icmp ugt i64 %.sroa.0.0647.i, %i.pn
  br i1 %i.po, label %bb.dv, label %bb.df, !prof !14

bb.df:                                            ; preds = %bb.de
  %i.pp = load ptr, ptr %i.ol, align 8, !alias.scope !3707, !noalias !3709, !nonnull !10, !noundef !10 ; 2 uses
  %i.pq = sub nuw i64 %i.pn, %.sroa.0.0647.i      ; 14 uses
  %i.pr = getelementptr inbounds nuw i8, ptr %i.pp, i64 %.sroa.0.0647.i ; 14 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3710)
  %.not.i228.i = icmp eq i64 %i.pn, %.sroa.0.0647.i
  br i1 %.not.i228.i, label %bb.dg, label %bb.dh, !prof !14

bb.dg:                                            ; preds = %bb.df
  call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @347) #39, !noalias !3711
  unreachable

bb.dh:                                            ; preds = %bb.df
  %i.ps = load i8, ptr %i.pr, align 1, !alias.scope !3710, !noalias !3712, !noundef !10 ; 2 uses
  switch i8 %i.ps, label %bb.di [
    i8 1, label %bb.dj
    i8 2, label %bb.dl
    i8 7, label %bb.dp
    i8 3, label %.lr.ph628.i
    i8 4, label %bb.dr
    i8 5, label %.lr.ph618.i
    i8 6, label %bb.dt
    i8 0, label %.lr.ph.preheader.i34
  ], !prof !49

bb.di:                                            ; preds = %bb.dh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !3713
  store i8 %i.ps, ptr %i.g, align 1, !noalias !3713
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !3713
  store ptr %i.g, ptr %i.f, align 8, !noalias !3713
  %.sroa.443.0..sroa_idx.i260.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @_RNvXNtNtNtCskKLDkoKarTP_4core3fmt3num3imphNtB6_7Display3fmt, ptr %.sroa.443.0..sroa_idx.i260.i, align 8, !noalias !3713
  call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @354, ptr noundef nonnull %i.f, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @355) #39, !noalias !3711
  unreachable

bb.dj:                                            ; preds = %bb.dh
  %i.pt = getelementptr inbounds nuw i8, ptr %i.pr, i64 1
  %.sroa.044.0.copyload.i256.i = load i16, ptr %i.pt, align 1, !alias.scope !3710, !noalias !3712
  %i.pu = zext i16 %.sroa.044.0.copyload.i256.i to i64 ; 6 uses
  %i.pv = add nuw nsw i64 %i.pu, 3                ; 4 uses
  %.not60.i257.i = icmp samesign ugt i64 %i.pv, %i.pq
  br i1 %.not60.i257.i, label %bb.dk, label %.lr.ph644.i, !prof !14

bb.dk:                                            ; preds = %bb.dj
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef 3, i64 noundef %i.pv, i64 noundef range(i64 0, -9223372036854775808) %i.pq, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @348) #39, !noalias !3711
  unreachable

bb.dl:                                            ; preds = %bb.dh
  %i.pw = getelementptr inbounds nuw i8, ptr %i.pr, i64 1
  %.sroa.045.0.copyload.i249.i = load i16, ptr %i.pw, align 1, !alias.scope !3710, !noalias !3712
  %i.px = zext i16 %.sroa.045.0.copyload.i249.i to i64 ; 9 uses
  %i.py = add nuw nsw i64 %i.px, 3                ; 6 uses
  %.not58.i250.i = icmp samesign ugt i64 %i.py, %i.pq
  br i1 %.not58.i250.i, label %bb.dm, label %bb.dn, !prof !14

bb.dm:                                            ; preds = %bb.dl
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef 3, i64 noundef %i.py, i64 noundef range(i64 0, -9223372036854775808) %i.pq, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @350) #39, !noalias !3711
  unreachable

bb.dn:                                            ; preds = %bb.dl
  %i.pz = add nuw nsw i64 %i.py, %i.px            ; 2 uses
  %.not59.i251.i = icmp samesign ugt i64 %i.pz, %i.pq
  br i1 %.not59.i251.i, label %bb.do, label %.lr.ph641.i, !prof !14

bb.do:                                            ; preds = %bb.dn
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %i.py, i64 noundef %i.pz, i64 noundef range(i64 0, -9223372036854775808) %i.pq, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @349) #39, !noalias !3711
  unreachable

bb.dp:                                            ; preds = %bb.dh
  %i.qa = getelementptr inbounds nuw i8, ptr %i.pr, i64 1
  %.sroa.046.0.copyload.i245.i = load i16, ptr %i.qa, align 1, !alias.scope !3710, !noalias !3712
  %i.qb = zext i16 %.sroa.046.0.copyload.i245.i to i64 ; 2 uses
  %i.qc = add nuw nsw i64 %i.qb, 3                ; 3 uses
  %.not57.i246.i = icmp samesign ugt i64 %i.qc, %i.pq
  br i1 %.not57.i246.i, label %bb.dq, label %.split636.i, !prof !14

bb.dq:                                            ; preds = %bb.dp
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef 3, i64 noundef %i.qc, i64 noundef range(i64 0, -9223372036854775808) %i.pq, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @351) #39, !noalias !3711
  unreachable

bb.dr:                                            ; preds = %bb.dh
  %i.qd = icmp samesign ult i64 %i.pq, 3
  br i1 %i.qd, label %bb.ds, label %bb.fr, !prof !14

bb.ds:                                            ; preds = %bb.dr
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef 3, i64 noundef range(i64 0, -9223372036854775808) %i.pq, i64 noundef range(i64 0, -9223372036854775808) %i.pq, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @352) #39, !noalias !3711
  unreachable

bb.dt:                                            ; preds = %bb.dh
  %i.qe = icmp samesign ult i64 %i.pq, 3
  br i1 %i.qe, label %bb.du, label %bb.fr, !prof !14

bb.du:                                            ; preds = %bb.dt
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef 3, i64 noundef range(i64 0, -9223372036854775808) %i.pq, i64 noundef range(i64 0, -9223372036854775808) %i.pq, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @353) #39, !noalias !3711
  unreachable

bb.dv:                                            ; preds = %bb.de
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %.sroa.0.0647.i, i64 noundef %i.pn, i64 noundef %i.pn, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #39, !noalias !3714
  unreachable

.lr.ph.preheader.i34:                             ; preds = %bb.dh
  %.val278.i = load ptr, ptr %i.om, align 8, !alias.scope !3707, !noalias !3709, !nonnull !10, !noundef !10 ; 2 uses
  %.idx.i35 = shl nuw nsw i64 %.val648.i, 3
  %i.qf = getelementptr inbounds nuw i8, ptr %.val278.i, i64 %.idx.i35
  br label %.lr.ph.i36

.lr.ph644.i:                                      ; preds = %bb.dj
  %.ptr475.i = getelementptr inbounds nuw i8, ptr %i.pr, i64 3
  %.val276.i = load ptr, ptr %i.om, align 8, !alias.scope !3707, !noalias !3709, !nonnull !10, !noundef !10 ; 2 uses
  %.idx660.i = shl nuw nsw i64 %.val648.i, 3
  %i.qg = getelementptr inbounds nuw i8, ptr %.val276.i, i64 %.idx660.i
  %i.qh = shl nuw nsw i64 %i.pu, 1
  %i.qi = shl nuw nsw i64 %i.pu, %i.oy
  br label %bb.dz

.lr.ph641.i:                                      ; preds = %bb.dn
  %.ptr471.i = getelementptr inbounds nuw i8, ptr %i.pr, i64 3
  %i.qj = getelementptr inbounds nuw i8, ptr %i.pr, i64 %i.py ; 2 uses
  %i.qk = shl nuw nsw i64 %i.px, 1                ; 2 uses
  %.val274.i = load ptr, ptr %i.om, align 8, !alias.scope !3707, !noalias !3709, !nonnull !10, !noundef !10 ; 2 uses
  %.idx659.i = shl nuw nsw i64 %.val648.i, 3
  %i.ql = getelementptr inbounds nuw i8, ptr %.val274.i, i64 %.idx659.i
  %i.qm = getelementptr inbounds nuw i8, ptr %i.qj, i64 %i.px ; 2 uses
  %i.qn = getelementptr inbounds nuw i8, ptr %.ptr471.i, i64 %i.px
  %i.qo = shl nuw nsw i64 %i.px, %i.oy
  br label %bb.eh

.split636.i:                                      ; preds = %bb.dp
  %i.qp = getelementptr inbounds nuw i8, ptr %i.pr, i64 3
  %i.qq = add i64 %i.qc, %.sroa.0.0647.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !3715
  store ptr %i.qp, ptr %i.k, align 8, !noalias !3715
  store i64 %i.qb, ptr %i.pb, align 8, !noalias !3715
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !3715
  call void @_RNvXs0_NtNtNtCs7gfv9tzbXmh_6yara_x2re4fast5instrNtB5_11InstrParserNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.j, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.k), !noalias !3714
  %i.qr = load i16, ptr %i.j, align 8, !range !3649, !noalias !3715, !noundef !10 ; 2 uses
  %.not220637.i = icmp eq i16 %i.qr, -1
  br i1 %.not220637.i, label %._crit_edge638.i, label %.split.i83

.lr.ph628.i:                                      ; preds = %bb.dh
  %.val272.i = load ptr, ptr %i.om, align 8, !alias.scope !3707, !noalias !3709, !nonnull !10, !noundef !10 ; 2 uses
  %.idx657.i = shl nuw nsw i64 %.val648.i, 3
  %i.qs = getelementptr inbounds nuw i8, ptr %.val272.i, i64 %.idx657.i
  %i.qt = getelementptr inbounds nuw i8, ptr %i.pr, i64 1
  %.sroa.047.0.copyload.i243.i = load i16, ptr %i.qt, align 1, !alias.scope !3710, !noalias !3712
  %i.qu = zext i16 %.sroa.047.0.copyload.i243.i to i64
  %i.qv = shl nuw nsw i64 %i.qu, %i.oy
  br label %bb.fm

.lr.ph618.i:                                      ; preds = %bb.dh
  %.val270.i = load ptr, ptr %i.om, align 8, !alias.scope !3707, !noalias !3709, !nonnull !10, !noundef !10 ; 2 uses
  %.idx653.i = shl nuw nsw i64 %.val648.i, 3
  %i.qw = getelementptr inbounds nuw i8, ptr %.val270.i, i64 %.idx653.i
  %i.qx = getelementptr inbounds nuw i8, ptr %i.pr, i64 1
  %.sroa.050.0.copyload.i235.i = load i16, ptr %i.qx, align 1, !alias.scope !3710, !noalias !3712
  %i.qy = zext i16 %.sroa.050.0.copyload.i235.i to i64
  %i.qz = shl nuw nsw i64 %i.qy, %i.oy            ; 2 uses
  br label %bb.fn

.lr.ph.i36:                                       ; preds = %.backedge496.i, %.lr.ph.preheader.i34
  %.sroa.093.0616.i = phi ptr [ %i.ra, %.backedge496.i ], [ %.val278.i, %.lr.ph.preheader.i34 ] ; 3 uses
  %i.ra = getelementptr inbounds nuw i8, ptr %.sroa.093.0616.i, i64 8 ; 2 uses
  br i1 %i.ny, label %bb.dy, label %bb.dw

bb.dw:                                            ; preds = %bb.dy, %.lr.ph.i36
  %i.rb = load i64, ptr %.sroa.093.0616.i, align 8, !noalias !3714, !noundef !10
  %i.rc = load i64, ptr %i.ac, align 8, !noalias !3716, !noundef !10 ; 2 uses
  %i.rd = sub i64 %i.rc, %i.rb                    ; 2 uses
  %i.re = add i64 %i.nj, %i.rc                    ; 2 uses
  %i.rf = load i16, ptr %i.ab, align 2, !noalias !3716, !noundef !10
  %i.rg = call fastcc noundef zeroext i1 @_RNvNtNtCs7gfv9tzbXmh_6yara_x7scanner7context16verify_full_word(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i64 %i.rd, i64 %i.re, i16 noundef %i.rf, i1 noundef zeroext false, i8 undef), !noalias !3716
  br i1 %i.rg, label %bb.dx, label %.backedge496.i

bb.dx:                                            ; preds = %bb.dw
  call void @llvm.experimental.noalias.scope.decl(metadata !3717)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !3718
  %i.rh = load ptr, ptr %i.oq, align 8, !alias.scope !3717, !noalias !3716, !nonnull !10, !align !17, !noundef !10
  %i.ri = load ptr, ptr %6, align 8, !alias.scope !3717, !noalias !3716, !nonnull !10, !align !17, !noundef !10
  %i.rj = load ptr, ptr %i.or, align 8, !alias.scope !3717, !noalias !3716, !nonnull !10, !align !18, !noundef !10
  %i.rk = load i32, ptr %i.rj, align 4, !noalias !3719, !noundef !10
  %i.rl = load ptr, ptr %i.os, align 8, !alias.scope !3717, !noalias !3716, !nonnull !10, !align !17, !noundef !10
  %i.rm = load ptr, ptr %i.ot, align 8, !alias.scope !3717, !noalias !3716, !nonnull !10, !align !18, !noundef !10
  %i.rn = load i32, ptr %i.rm, align 4, !noalias !3719, !noundef !10
  store i8 0, ptr %i.ow, align 8, !noalias !3720
  %i.ro = load ptr, ptr %i.ox, align 8, !alias.scope !3717, !noalias !3716, !nonnull !10, !align !17, !noundef !10
  %i.rp = load i64, ptr %i.ro, align 8, !noalias !3719, !noundef !10 ; 3 uses
  %i.rq = add i64 %i.rp, %i.rd
  %i.rr = add i64 %i.rp, %i.re
  store i64 %i.rq, ptr %i.ou, align 8, !noalias !3720
  store i64 %i.rr, ptr %i.ov, align 8, !noalias !3720
  store i64 %i.rp, ptr %i.e, align 8, !noalias !3720
  call fastcc void @_RNvNtNtCs7gfv9tzbXmh_6yara_x7scanner7context24handle_sub_pattern_match(ptr noalias nofree noundef align 8 dereferenceable(128) %i.rh, ptr noalias nofree noundef align 8 dereferenceable(160) %i.ri, i32 noundef %i.rk, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.rl, i32 noundef %i.rn, ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %i.e), !noalias !3719
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !3718
  br label %.backedge496.i

.backedge496.i:                                   ; preds = %bb.dy, %bb.dx, %bb.dw
  %i.rs = icmp eq ptr %i.ra, %i.qf
  br i1 %i.rs, label %.loopexit.i37.loopexit382, label %.lr.ph.i36

bb.dy:                                            ; preds = %.lr.ph.i36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !3715
  %i.rt = load i64, ptr %.sroa.093.0616.i, align 8, !noalias !3714, !noundef !10
  call void @llvm.experimental.noalias.scope.decl(metadata !3721)
  store ptr %i.oe, ptr %i.l, align 8, !alias.scope !3722, !noalias !3715
  store ptr %i.on, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !3722, !noalias !3715
  store i64 %i.rt, ptr %.sroa.5.0..sroa_idx.i29, align 8, !alias.scope !3722, !noalias !3715
  store i64 1, ptr %i.oo, align 8, !alias.scope !3723, !noalias !3724
  store i8 1, ptr %i.op, align 8, !alias.scope !3723, !noalias !3724
  %i.ru = call noundef zeroext i1 @_RINvXs6_NtNtNtCskKLDkoKarTP_4core4iter8adapters7step_byINtB6_6StepByINtNtB8_4take4TakeINtNtB8_3rev3RevINtNtNtBc_5slice4iter4IterhEEEEINtB6_10StepByImplB14_E13spec_try_folduNCINvNvNtNtNtBa_6traits8iterator8Iterator3all5checkRhNCINvMNtNtNtCs7gfv9tzbXmh_6yara_x2re4fast6fastvmNtB3H_6FastVM9try_matchNtB3L_10BckCodeLocNCINvNtNtB3N_7scanner7context13verify_regexpNCNvMs0_B57_NtB57_11ScanContext17handle_atom_match0Es0_0E0E0INtNtNtBc_3ops12control_flow11ControlFlowuEEB3N_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.l), !noalias !3714
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !3715
  br i1 %i.ru, label %.backedge496.i, label %bb.dw

.loopexit.i37.loopexit:                           ; preds = %.backedge484.i
  %i.rv = add i64 %i.pv, %.sroa.0.0647.i
  br label %.loopexit.i37

.loopexit.i37.loopexit376:                        ; preds = %.backedge486.i
  %i.rw = add i64 %.sroa.0.0647.i, 3
  %i.rx = add i64 %i.rw, %i.qk
  br label %.loopexit.i37

.loopexit.i37.loopexit377:                        ; preds = %bb.fm
  %i.ry = add i64 %.sroa.0.0647.i, 3
  br label %.loopexit.i37

.loopexit.i37.loopexit381:                        ; preds = %bb.fq
  %i.rz = add i64 %.sroa.0.0647.i, 3
  br label %.loopexit.i37

.loopexit.i37.loopexit382:                        ; preds = %.backedge496.i
  %i.sa = add i64 %.sroa.0.0647.i, 1
  br label %.loopexit.i37

.loopexit.i37:                                    ; preds = %.backedge493.i, %.backedge491.i, %.backedge489.i, %.loopexit.i37.loopexit382, %.loopexit.i37.loopexit381, %.loopexit.i37.loopexit377, %.loopexit.i37.loopexit376, %.loopexit.i37.loopexit, %._crit_edge638.i
  %i.sb = phi i64 [ %i.sa, %.loopexit.i37.loopexit382 ], [ %i.rv, %.loopexit.i37.loopexit ], [ %i.yr, %.backedge489.i ], [ %i.rz, %.loopexit.i37.loopexit381 ], [ %i.rx, %.loopexit.i37.loopexit376 ], [ %i.qq, %._crit_edge638.i ], [ %i.yr, %.backedge491.i ], [ %i.ry, %.loopexit.i37.loopexit377 ], [ %i.yr, %.backedge493.i ]
  %i.sc = load <2 x i64>, ptr %i.oz, align 8, !alias.scope !3725, !noalias !3709
  %i.sd = load <2 x i64>, ptr %i.nx, align 8, !alias.scope !3726, !noalias !3709
  store <2 x i64> %i.sc, ptr %i.nx, align 8, !alias.scope !3726, !noalias !3709
  store <2 x i64> %i.sd, ptr %i.oz, align 8, !alias.scope !3725, !noalias !3709
  %i.se = load <2 x i64>, ptr %i.pc, align 8, !alias.scope !3727, !noalias !3709
  %i.sf = load <2 x i64>, ptr %i.of, align 8, !alias.scope !3728, !noalias !3709
  store <2 x i64> %i.se, ptr %i.of, align 8, !alias.scope !3728, !noalias !3709
  store <2 x i64> %i.sf, ptr %i.pc, align 8, !alias.scope !3727, !noalias !3709
  %i.sg = load <2 x i64>, ptr %i.pe, align 8, !alias.scope !3729, !noalias !3709
  %i.sh = load <2 x i64>, ptr %i.pd, align 8, !alias.scope !3730, !noalias !3709
  store <2 x i64> %i.sg, ptr %i.pd, align 8, !alias.scope !3730, !noalias !3709
  store <2 x i64> %i.sh, ptr %i.pe, align 8, !alias.scope !3729, !noalias !3709
  %i.si = load <2 x i64>, ptr %i.pg, align 8, !alias.scope !3731, !noalias !3709
  %i.sj = load <2 x i64>, ptr %i.pf, align 8, !alias.scope !3732, !noalias !3709
  store <2 x i64> %i.si, ptr %i.pf, align 8, !alias.scope !3732, !noalias !3709
  store <2 x i64> %i.sj, ptr %i.pg, align 8, !alias.scope !3731, !noalias !3709
  %i.sk = load <2 x i64>, ptr %i.pi, align 8, !alias.scope !3733, !noalias !3709
  %i.sl = load <2 x i64>, ptr %i.ph, align 8, !alias.scope !3734, !noalias !3709
  store <2 x i64> %i.sk, ptr %i.ph, align 8, !alias.scope !3734, !noalias !3709
  store <2 x i64> %i.sl, ptr %i.pi, align 8, !alias.scope !3733, !noalias !3709
  %i.sm = load <2 x i64>, ptr %i.pk, align 8, !alias.scope !3735, !noalias !3709
  %i.sn = load <2 x i64>, ptr %i.pj, align 8, !alias.scope !3736, !noalias !3709
  store <2 x i64> %i.sm, ptr %i.pj, align 8, !alias.scope !3736, !noalias !3709
  store <2 x i64> %i.sn, ptr %i.pk, align 8, !alias.scope !3735, !noalias !3709
  call void @llvm.experimental.noalias.scope.decl(metadata !3737)
  call void @llvm.experimental.noalias.scope.decl(metadata !3738)
  %.sroa.0.0.copyload.i.i.i.12.i.i.i62 = load i64, ptr %i.pl, align 8, !alias.scope !3739, !noalias !3740
  %.sroa.02.0.copyload.i.i.i.12.i.i.i63 = load i64, ptr %i.pm, align 8, !alias.scope !3741, !noalias !3742
  store i64 %.sroa.02.0.copyload.i.i.i.12.i.i.i63, ptr %i.pl, align 8, !alias.scope !3739, !noalias !3740
  store i64 %.sroa.0.0.copyload.i.i.i.12.i.i.i62, ptr %i.pm, align 8, !alias.scope !3741, !noalias !3742
  call fastcc void @_RNvMNtNtCs7gfv9tzbXmh_6yara_x2re9bitmapsetINtB2_9BitmapSetuE5clearB6_(ptr noalias nofree noundef align 8 dereferenceable(104) %i.oz) #41, !noalias !3714
  %.val.i = load i64, ptr %i.of, align 8, !alias.scope !3707, !noalias !3709, !noundef !10 ; 3 uses
  %i.so = icmp ult i64 %.val.i, 1152921504606846976
  call void @llvm.assume(i1 %i.so)
  %i.sp = icmp eq i64 %.val.i, 0
  br i1 %i.sp, label %_RINvMNtNtNtCs7gfv9tzbXmh_6yara_x2re4fast6fastvmNtB3_6FastVM9try_matchNtB7_10BckCodeLocNCINvNtNtB9_7scanner7context13verify_regexpNCNvMs0_B1r_NtB1r_11ScanContext17handle_atom_match0Es0_0EB9_.exit, label %bb.de

bb.dz:                                            ; preds = %.backedge484.i, %.lr.ph644.i
  %.sroa.098.0642.i = phi ptr [ %.val276.i, %.lr.ph644.i ], [ %i.sq, %.backedge484.i ] ; 2 uses
  %i.sq = getelementptr inbounds nuw i8, ptr %.sroa.098.0642.i, i64 8 ; 2 uses
  %i.sr = load i64, ptr %.sroa.098.0642.i, align 8, !noalias !3714, !noundef !10 ; 3 uses
  %.not226.i = icmp ult i64 %i.sr, %i.od
  br i1 %.not226.i, label %bb.ea, label %.backedge484.i

bb.ea:                                            ; preds = %bb.dz
  %i.ss = sub nuw nsw i64 %i.od, %i.sr            ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3743)
  call void @llvm.experimental.noalias.scope.decl(metadata !3744)
  br i1 %i.ny, label %bb.ec, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.st = icmp samesign ult i64 %i.ss, %i.pu
  br i1 %i.st, label %.backedge484.i, label %_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x2re4fast6fastvmNtB4_6FastVM21try_match_literal_bck.exit.i

bb.ec:                                            ; preds = %bb.ea
  %i.su = icmp samesign ult i64 %i.ss, %i.qh
  br i1 %i.su, label %.backedge484.i, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  %i.sv = and i64 %i.ss, 1
  %i.sw = getelementptr inbounds nuw i8, ptr %i.oe, i64 %i.sv
  %i.sx = and i64 %i.ss, 9223372036854775806      ; 2 uses
  %i.sy = icmp eq i64 %i.sx, 0
  br i1 %i.sy, label %_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x2re4fast6fastvmNtB4_6FastVM21try_match_literal_bck.exit.thread447.i, label %.lr.ph1311

bb.ee:                                            ; preds = %bb.eg
  %i.sz = icmp eq i64 %i.ta, 0
  br i1 %i.sz, label %_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x2re4fast6fastvmNtB4_6FastVM21try_match_literal_bck.exit.thread447.i, label %.lr.ph1311

.lr.ph1311:                                       ; preds = %bb.ed, %bb.ee
  %.sroa.14.0.i.idx.i1310 = phi i64 [ %.sroa.14.0.i.add.i, %bb.ee ], [ %i.pv, %bb.ed ] ; 2 uses
  %.sroa.55.0.i.i1309 = phi i64 [ %i.ta, %bb.ee ], [ %i.sx, %bb.ed ]
  %i.ta = add nsw i64 %.sroa.55.0.i.i1309, -2     ; 3 uses
  %i.tb = icmp eq i64 %.sroa.14.0.i.idx.i1310, 3
  br i1 %i.tb, label %_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x2re4fast6fastvmNtB4_6FastVM21try_match_literal_bck.exit.thread447.i, label %bb.ef

bb.ef:                                            ; preds = %.lr.ph1311
  %i.tc = getelementptr inbounds nuw i8, ptr %i.sw, i64 %i.ta ; 2 uses
  %.sroa.14.0.i.add.i = add nsw i64 %.sroa.14.0.i.idx.i1310, -1 ; 2 uses
  %.ptr474.i = getelementptr inbounds nuw i8, ptr %i.pr, i64 %.sroa.14.0.i.add.i
  %i.td = load i8, ptr %i.tc, align 1, !alias.scope !3745, !noalias !3746, !noundef !10
  %i.te = load i8, ptr %.ptr474.i, align 1, !alias.scope !3744, !noalias !3747, !noundef !10
  %.not6.i.i = icmp eq i8 %i.td, %i.te
  br i1 %.not6.i.i, label %bb.eg, label %.backedge484.i

bb.eg:                                            ; preds = %bb.ef
  %i.tf = getelementptr inbounds nuw i8, ptr %i.tc, i64 1
  %i.tg = load i8, ptr %i.tf, align 1, !alias.scope !3745, !noalias !3746, !noundef !10
  %i.th = icmp eq i8 %i.tg, 0
  br i1 %i.th, label %bb.ee, label %.backedge484.i

_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x2re4fast6fastvmNtB4_6FastVM21try_match_literal_bck.exit.i: ; preds = %bb.eb
  %i.ti = sub nuw nsw i64 %i.ss, %i.pu
  %i.tj = getelementptr inbounds nuw i8, ptr %i.oe, i64 %i.ti
  %bcmp.i.i95 = call i32 @bcmp(ptr nonnull readonly %i.tj, ptr nonnull readonly %.ptr475.i, i64 range(i64 0, -9223372036854775808) %i.pu), !alias.scope !3748, !noalias !3714
  %i.tk = icmp eq i32 %bcmp.i.i95, 0
  br i1 %i.tk, label %_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x2re4fast6fastvmNtB4_6FastVM21try_match_literal_bck.exit.thread447.i, label %.backedge484.i

.backedge484.i:                                   ; preds = %bb.eg, %bb.ef, %_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x2re4fast6fastvmNtB4_6FastVM21try_match_literal_bck.exit.thread447.i, %_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x2re4fast6fastvmNtB4_6FastVM21try_match_literal_bck.exit.i, %bb.ec, %bb.eb, %bb.dz
  %i.tl = icmp eq ptr %i.sq, %i.qg
  br i1 %i.tl, label %.loopexit.i37.loopexit, label %bb.dz

_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x2re4fast6fastvmNtB4_6FastVM21try_match_literal_bck.exit.thread447.i: ; preds = %bb.ee, %.lr.ph1311, %bb.ed, %_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x2re4fast6fastvmNtB4_6FastVM21try_match_literal_bck.exit.i
  %i.tm = add nuw i64 %i.sr, %i.qi
  call fastcc void @_RNvMNtNtCs7gfv9tzbXmh_6yara_x2re9bitmapsetINtB2_9BitmapSetuE6insertB6_(ptr noalias nofree noundef align 8 dereferenceable(104) %i.oz, i64 noundef %i.tm) #41
  br label %.backedge484.i

bb.eh:                                            ; preds = %.backedge486.i, %.lr.ph641.i
  %.sroa.0102.0639.i = phi ptr [ %.val274.i, %.lr.ph641.i ], [ %i.tn, %.backedge486.i ] ; 2 uses
  %i.tn = getelementptr inbounds nuw i8, ptr %.sroa.0102.0639.i, i64 8 ; 2 uses
  %i.to = load i64, ptr %.sroa.0102.0639.i, align 8, !noalias !3714, !noundef !10 ; 4 uses
  %.not224.i = icmp ult i64 %i.to, %i.od
  br i1 %.not224.i, label %bb.ei, label %.backedge486.i

bb.ei:                                            ; preds = %bb.eh
  %i.tp = sub nuw nsw i64 %i.od, %i.to            ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3749)
  call void @llvm.experimental.noalias.scope.decl(metadata !3750)
  call void @llvm.experimental.noalias.scope.decl(metadata !3751)
  br i1 %i.ny, label %bb.ek, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  %i.tq = icmp samesign ult i64 %i.tp, %i.px
  br i1 %i.tq, label %.backedge486.i, label %bb.el

bb.ek:                                            ; preds = %bb.ei
  %i.tr = icmp samesign ult i64 %i.tp, %i.qk
  br i1 %i.tr, label %.backedge486.i, label %bb.eo

bb.el:                                            ; preds = %bb.ej
  %7 = icmp eq i64 %i.od, %i.to
  br i1 %7, label %_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x2re4fast6fastvmNtB4_6FastVM28try_match_masked_literal_bck.exit.i, label %.lr.ph1307

.lr.ph1307:                                       ; preds = %bb.el
  %i.ts = getelementptr inbounds nuw i8, ptr %i.oe, i64 %i.tp
  br label %bb.em

8:                                                ; preds = %bb.en
  %9 = icmp eq ptr %i.oe, %i.tv
  br i1 %9, label %_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x2re4fast6fastvmNtB4_6FastVM28try_match_masked_literal_bck.exit.i, label %bb.em

bb.em:                                            ; preds = %.lr.ph1307, %8
  %.sroa.1541.0.i.i1306 = phi ptr [ %i.qm, %.lr.ph1307 ], [ %i.tw, %8 ] ; 2 uses
  %.sroa.1039.0.i.idx.i1305 = phi i64 [ %i.py, %.lr.ph1307 ], [ %.sroa.1039.0.i.add.i, %8 ] ; 2 uses
  %.sroa.537.0.i.i1304 = phi ptr [ %i.ts, %.lr.ph1307 ], [ %i.tv, %8 ]
  %i.tt = icmp eq i64 %.sroa.1039.0.i.idx.i1305, 3
  %i.tu = icmp eq ptr %i.qj, %.sroa.1541.0.i.i1306
  %or.cond72.i.i = select i1 %i.tt, i1 true, i1 %i.tu
  br i1 %or.cond72.i.i, label %_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x2re4fast6fastvmNtB4_6FastVM28try_match_masked_literal_bck.exit.i, label %bb.en

bb.en:                                            ; preds = %bb.em
  %i.tv = getelementptr inbounds i8, ptr %.sroa.537.0.i.i1304, i64 -1 ; 3 uses
  %.sroa.1039.0.i.add.i = add nsw i64 %.sroa.1039.0.i.idx.i1305, -1 ; 2 uses
  %.ptr.i = getelementptr inbounds nuw i8, ptr %i.pr, i64 %.sroa.1039.0.i.add.i
  %i.tw = getelementptr inbounds i8, ptr %.sroa.1541.0.i.i1306, i64 -1 ; 2 uses
  %i.tx = load i8, ptr %i.tv, align 1, !alias.scope !3752, !noalias !3753, !noundef !10
  %i.ty = load i8, ptr %i.tw, align 1, !alias.scope !3751, !noalias !3754, !noundef !10
  %i.tz = load i8, ptr %.ptr.i, align 1, !alias.scope !3750, !noalias !3755, !noundef !10
  %i.ua = xor i8 %i.tz, %i.tx
  %i.ub = and i8 %i.ua, %i.ty
  %.not15.i.i = icmp eq i8 %i.ub, 0
  br i1 %.not15.i.i, label %8, label %.backedge486.i

bb.eo:                                            ; preds = %bb.ek
  %i.uc = getelementptr inbounds nuw i8, ptr %i.oe, i64 %i.tp
  br label %bb.ep

bb.ep:                                            ; preds = %bb.es, %bb.eo
  %.sroa.8.0.i.i = phi i64 [ undef, %bb.eo ], [ %.sroa.8.1.i.i, %bb.es ] ; 3 uses
  %.sroa.0.051.i.i = phi i64 [ 0, %bb.eo ], [ %.sroa.0.1.i.i, %bb.es ] ; 4 uses
  %.sroa.518.0.i.i = phi ptr [ %i.qn, %bb.eo ], [ %i.uk, %bb.es ]
  %.sroa.1020.0.i.i = phi ptr [ %i.qm, %bb.eo ], [ %i.ul, %bb.es ]
  %.sroa.17.0.i.i = phi ptr [ %i.uc, %bb.eo ], [ %i.uj, %bb.es ] ; 3 uses
  %.sroa.24.0.i.i = phi i64 [ 0, %bb.eo ], [ %i.ui, %bb.es ] ; 3 uses
  %i.ud = icmp eq ptr %i.oe, %.sroa.17.0.i.i
  br i1 %i.ud, label %bb.et, label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  %i.ue = getelementptr inbounds i8, ptr %.sroa.17.0.i.i, i64 -1 ; 2 uses
  %i.uf = icmp eq ptr %i.oe, %i.ue
  br i1 %i.uf, label %bb.et, label %bb.er

bb.er:                                            ; preds = %bb.eq
  %i.ug = load i8, ptr %i.ue, align 1, !alias.scope !3752, !noalias !3756, !noundef !10
  %i.uh = icmp ne i8 %i.ug, 0
  %.not9.i.i.i.i = icmp eq i64 %.sroa.0.051.i.i, 0
  %or.cond71.i.i = select i1 %i.uh, i1 %.not9.i.i.i.i, i1 false ; 2 uses
  %.sroa.8.1.i.i = select i1 %or.cond71.i.i, i64 %.sroa.24.0.i.i, i64 %.sroa.8.0.i.i ; 2 uses
  %.sroa.0.1.i.i = select i1 %or.cond71.i.i, i64 1, i64 %.sroa.0.051.i.i ; 2 uses
  %exitcond.i.i = icmp eq i64 %.sroa.24.0.i.i, %i.px
  br i1 %exitcond.i.i, label %bb.et, label %bb.es

bb.es:                                            ; preds = %bb.er
  %i.ui = add nuw nsw i64 %.sroa.24.0.i.i, 1
  %i.uj = getelementptr inbounds i8, ptr %.sroa.17.0.i.i, i64 -2 ; 2 uses
  %i.uk = getelementptr inbounds i8, ptr %.sroa.518.0.i.i, i64 -1 ; 2 uses
  %i.ul = getelementptr inbounds i8, ptr %.sroa.1020.0.i.i, i64 -1 ; 2 uses
  %i.um = load i8, ptr %i.ul, align 1, !alias.scope !3751, !noalias !3754, !noundef !10
  %i.un = load i8, ptr %i.uj, align 1, !alias.scope !3752, !noalias !3753, !noundef !10
  %i.uo = load i8, ptr %i.uk, align 1, !alias.scope !3750, !noalias !3755, !noundef !10
  %i.up = xor i8 %i.uo, %i.un
  %i.uq = and i8 %i.up, %i.um
  %.not17.i.i = icmp eq i8 %i.uq, 0
  br i1 %.not17.i.i, label %bb.ep, label %.backedge486.i

bb.et:                                            ; preds = %bb.er, %bb.eq, %bb.ep
  %.sroa.8.2.ph.i.i = phi i64 [ %.sroa.8.1.i.i, %bb.er ], [ %.sroa.8.0.i.i, %bb.ep ], [ %.sroa.8.0.i.i, %bb.eq ]
  %.sroa.0.2.ph.i.i = phi i64 [ %.sroa.0.1.i.i, %bb.er ], [ %.sroa.0.051.i.i, %bb.ep ], [ %.sroa.0.051.i.i, %bb.eq ]
  %i.ur = trunc nuw i64 %.sroa.0.2.ph.i.i to i1
  %i.us = icmp ult i64 %.sroa.8.2.ph.i.i, %i.px
  %or.cond.i.i = select i1 %i.ur, i1 %i.us, i1 false
  br i1 %or.cond.i.i, label %.backedge486.i, label %_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x2re4fast6fastvmNtB4_6FastVM28try_match_masked_literal_bck.exit.i

.backedge486.i:                                   ; preds = %bb.en, %bb.es, %_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x2re4fast6fastvmNtB4_6FastVM28try_match_masked_literal_bck.exit.i, %bb.et, %bb.ek, %bb.ej, %bb.eh
  %i.ut = icmp eq ptr %i.tn, %i.ql
  br i1 %i.ut, label %.loopexit.i37.loopexit376, label %bb.eh

_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x2re4fast6fastvmNtB4_6FastVM28try_match_masked_literal_bck.exit.i: ; preds = %8, %bb.em, %bb.el, %bb.et
  %i.uu = add nuw i64 %i.to, %i.qo
  call fastcc void @_RNvMNtNtCs7gfv9tzbXmh_6yara_x2re9bitmapsetINtB2_9BitmapSetuE6insertB6_(ptr noalias nofree noundef align 8 dereferenceable(104) %i.oz, i64 noundef %i.uu) #41
  br label %.backedge486.i

.split.i83:                                       ; preds = %.split636.i, %._crit_edge.i89
  %i.uv = phi i16 [ %i.xu, %._crit_edge.i89 ], [ %i.qr, %.split636.i ]
  %.sroa.4108.0.copyload.i84 = load ptr, ptr %.sroa.4108.0..sroa_idx.i30, align 8, !noalias !3715 ; 8 uses
  %.sroa.6.0.copyload.i85 = load i64, ptr %.sroa.6.0..sroa_idx.i31, align 8, !noalias !3715 ; 9 uses
  %.sroa.8.0.copyload.i86 = load ptr, ptr %.sroa.8.0..sroa_idx.i32, align 8, !noalias !3715 ; 4 uses
  %.val268.i = load ptr, ptr %i.om, align 8, !alias.scope !3707, !noalias !3709, !nonnull !10, !noundef !10 ; 6 uses
  %.val269.i87 = load i64, ptr %i.of, align 8, !alias.scope !3707, !noalias !3709, !noundef !10 ; 2 uses
  %.idx658.i = shl nuw nsw i64 %.val269.i87, 3
  %i.uw = getelementptr inbounds nuw i8, ptr %.val268.i, i64 %.idx658.i ; 5 uses
  %i.ux = icmp eq i64 %.val269.i87, 0
  br i1 %i.ux, label %._crit_edge.i89, label %.lr.ph630.i

.lr.ph630.i:                                      ; preds = %.split.i83
  %.sroa.9.0.copyload.i88 = load i64, ptr %.sroa.9.0..sroa_idx.i33, align 8, !noalias !3715 ; 2 uses
  %i.uy = getelementptr inbounds nuw i8, ptr %.sroa.4108.0.copyload.i84, i64 %.sroa.6.0.copyload.i85 ; 3 uses
  %i.uz = getelementptr inbounds nuw i8, ptr %.sroa.8.0.copyload.i86, i64 %.sroa.9.0.copyload.i88 ; 2 uses
  %i.va = shl nuw i64 %.sroa.6.0.copyload.i85, 1  ; 2 uses
  %umin.i304.i = call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %.sroa.9.0.copyload.i88, i64 range(i64 0, -9223372036854775808) %.sroa.6.0.copyload.i85)
  %i.vb = shl i64 %.sroa.6.0.copyload.i85, %i.oy  ; 4 uses
  switch i16 %i.uv, label %.lr.ph630.split.i [
    i16 1, label %.lr.ph630.split.us.i
    i16 2, label %.lr.ph630.split.us631.i.preheader
  ], !prof !50

.lr.ph630.split.us631.i.preheader:                ; preds = %.lr.ph630.i
  br i1 %i.ny, label %.lr.ph630.split.us631.i.us, label %.lr.ph630.split.us631.i

.lr.ph630.split.us631.i.us:                       ; preds = %.lr.ph630.split.us631.i.preheader, %.backedge.us635.i.us
  %.sroa.0111.0629.us632.i.us = phi ptr [ %i.vc, %.backedge.us635.i.us ], [ %.val268.i, %.lr.ph630.split.us631.i.preheader ] ; 2 uses
  %i.vc = getelementptr inbounds nuw i8, ptr %.sroa.0111.0629.us632.i.us, i64 8 ; 2 uses
  %i.vd = load i64, ptr %.sroa.0111.0629.us632.i.us, align 8, !noalias !3714, !noundef !10 ; 3 uses
  %.not221.us633.i.us = icmp ult i64 %i.vd, %i.od
  br i1 %.not221.us633.i.us, label %bb.eu, label %.backedge.us635.i.us

bb.eu:                                            ; preds = %.lr.ph630.split.us631.i.us
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4108.0.copyload.i84) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.0.copyload.i86) ]
  %i.ve = sub nuw nsw i64 %i.od, %i.vd            ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3757)
  call void @llvm.experimental.noalias.scope.decl(metadata !3758)
  call void @llvm.experimental.noalias.scope.decl(metadata !3759)
  %i.vf = icmp ult i64 %i.ve, %i.va
  br i1 %i.vf, label %.backedge.us635.i.us, label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  %i.vg = getelementptr inbounds nuw i8, ptr %i.oe, i64 %i.ve
  br label %bb.ew

bb.ew:                                            ; preds = %bb.ez, %bb.ev
  %.sroa.8.0.i305.us.i.us = phi i64 [ undef, %bb.ev ], [ %.sroa.8.1.i313.us.i.us, %bb.ez ] ; 3 uses
  %.sroa.0.051.i306.us.i.us = phi i64 [ 0, %bb.ev ], [ %.sroa.0.1.i314.us.i.us, %bb.ez ] ; 4 uses
  %.sroa.518.0.i307.us.i.us = phi ptr [ %i.uy, %bb.ev ], [ %i.vo, %bb.ez ]
  %.sroa.1020.0.i308.us.i.us = phi ptr [ %i.uz, %bb.ev ], [ %i.vp, %bb.ez ]
  %.sroa.17.0.i309.us.i.us = phi ptr [ %i.vg, %bb.ev ], [ %i.vn, %bb.ez ] ; 3 uses
  %.sroa.24.0.i310.us.i.us = phi i64 [ 0, %bb.ev ], [ %i.vm, %bb.ez ] ; 3 uses
  %i.vh = icmp eq ptr %i.oe, %.sroa.17.0.i309.us.i.us
  br i1 %i.vh, label %bb.fa, label %bb.ex

bb.ex:                                            ; preds = %bb.ew
  %i.vi = getelementptr inbounds i8, ptr %.sroa.17.0.i309.us.i.us, i64 -1 ; 2 uses
  %i.vj = icmp eq ptr %i.oe, %i.vi
  br i1 %i.vj, label %bb.fa, label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  %i.vk = load i8, ptr %i.vi, align 1, !alias.scope !3760, !noalias !3761, !noundef !10
  %i.vl = icmp ne i8 %i.vk, 0
  %.not9.i.i.i311.us.i.us = icmp eq i64 %.sroa.0.051.i306.us.i.us, 0
  %or.cond71.i312.us.i.us = select i1 %i.vl, i1 %.not9.i.i.i311.us.i.us, i1 false ; 2 uses
  %.sroa.8.1.i313.us.i.us = select i1 %or.cond71.i312.us.i.us, i64 %.sroa.24.0.i310.us.i.us, i64 %.sroa.8.0.i305.us.i.us ; 2 uses
  %.sroa.0.1.i314.us.i.us = select i1 %or.cond71.i312.us.i.us, i64 1, i64 %.sroa.0.051.i306.us.i.us ; 2 uses
  %exitcond.i315.us.i.us = icmp eq i64 %.sroa.24.0.i310.us.i.us, %umin.i304.i
  br i1 %exitcond.i315.us.i.us, label %bb.fa, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  %i.vm = add nuw i64 %.sroa.24.0.i310.us.i.us, 1
  %i.vn = getelementptr inbounds i8, ptr %.sroa.17.0.i309.us.i.us, i64 -2 ; 2 uses
  %i.vo = getelementptr inbounds i8, ptr %.sroa.518.0.i307.us.i.us, i64 -1 ; 2 uses
  %i.vp = getelementptr inbounds i8, ptr %.sroa.1020.0.i308.us.i.us, i64 -1 ; 2 uses
  %i.vq = load i8, ptr %i.vp, align 1, !alias.scope !3759, !noalias !3762, !noundef !10
  %i.vr = load i8, ptr %i.vn, align 1, !alias.scope !3760, !noalias !3763, !noundef !10
  %i.vs = load i8, ptr %i.vo, align 1, !alias.scope !3758, !noalias !3764, !noundef !10
  %i.vt = xor i8 %i.vs, %i.vr
  %i.vu = and i8 %i.vt, %i.vq
  %.not17.i316.us.i.us = icmp eq i8 %i.vu, 0
  br i1 %.not17.i316.us.i.us, label %bb.ew, label %.backedge.us635.i.us

bb.fa:                                            ; preds = %bb.ey, %bb.ex, %bb.ew
  %.sroa.8.2.ph.i318.us.i.us = phi i64 [ %.sroa.8.1.i313.us.i.us, %bb.ey ], [ %.sroa.8.0.i305.us.i.us, %bb.ew ], [ %.sroa.8.0.i305.us.i.us, %bb.ex ]
  %.sroa.0.2.ph.i319.us.i.us = phi i64 [ %.sroa.0.1.i314.us.i.us, %bb.ey ], [ %.sroa.0.051.i306.us.i.us, %bb.ew ], [ %.sroa.0.051.i306.us.i.us, %bb.ex ]
  %i.vv = trunc nuw i64 %.sroa.0.2.ph.i319.us.i.us to i1
  %i.vw = icmp ult i64 %.sroa.8.2.ph.i318.us.i.us, %.sroa.6.0.copyload.i85
  %or.cond.i320.us.i.us = select i1 %i.vv, i1 %i.vw, i1 false
  br i1 %or.cond.i320.us.i.us, label %.backedge.us635.i.us, label %_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x2re4fast6fastvmNtB4_6FastVM28try_match_masked_literal_bck.exit321.us.i.us

_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x2re4fast6fastvmNtB4_6FastVM28try_match_masked_literal_bck.exit321.us.i.us: ; preds = %bb.fa
  %i.vx = add i64 %i.vd, %i.vb
  call fastcc void @_RNvMNtNtCs7gfv9tzbXmh_6yara_x2re9bitmapsetINtB2_9BitmapSetuE6insertB6_(ptr noalias nofree noundef align 8 dereferenceable(104) %i.oz, i64 noundef %i.vx) #41
  br label %.backedge.us635.i.us

.backedge.us635.i.us:                             ; preds = %bb.ez, %_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x2re4fast6fastvmNtB4_6FastVM28try_match_masked_literal_bck.exit321.us.i.us, %bb.fa, %bb.eu, %.lr.ph630.split.us631.i.us
  %i.vy = icmp eq ptr %i.vc, %i.uw
  br i1 %i.vy, label %._crit_edge.i89, label %.lr.ph630.split.us631.i.us

.lr.ph630.split.us.i:                             ; preds = %.lr.ph630.i
  br i1 %i.ny, label %.lr.ph630.split.us.split.us.i, label %.lr.ph630.split.us.split.i

.lr.ph630.split.us.split.us.i:                    ; preds = %.lr.ph630.split.us.i, %.backedge.us.us.i92
  %.sroa.0111.0629.us.us.i = phi ptr [ %i.vz, %.backedge.us.us.i92 ], [ %.val268.i, %.lr.ph630.split.us.i ] ; 2 uses
  %i.vz = getelementptr inbounds nuw i8, ptr %.sroa.0111.0629.us.us.i, i64 8 ; 2 uses
  %i.wa = load i64, ptr %.sroa.0111.0629.us.us.i, align 8, !noalias !3714, !noundef !10 ; 3 uses
  %.not221.us.us.i = icmp ult i64 %i.wa, %i.od
  br i1 %.not221.us.us.i, label %bb.fb, label %.backedge.us.us.i92

bb.fb:                                            ; preds = %.lr.ph630.split.us.split.us.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4108.0.copyload.i84) ]
  %i.wb = sub nuw nsw i64 %i.od, %i.wa            ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3765)
  call void @llvm.experimental.noalias.scope.decl(metadata !3766)
  %i.wc = icmp ult i64 %i.wb, %i.va
  br i1 %i.wc, label %.backedge.us.us.i92, label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  %i.wd = and i64 %i.wb, 1
  %i.we = getelementptr inbounds nuw i8, ptr %i.oe, i64 %i.wd
  %i.wf = and i64 %i.wb, 9223372036854775806      ; 2 uses
  %i.wg = icmp eq i64 %i.wf, 0
  br i1 %i.wg, label %_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x2re4fast6fastvmNtB4_6FastVM21try_match_literal_bck.exit297.thread452.loopexit.us.us.i, label %.lr.ph1302

bb.fd:                                            ; preds = %bb.ff
  %i.wh = icmp eq i64 %i.wi, 0
  br i1 %i.wh, label %_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x2re4fast6fastvmNtB4_6FastVM21try_match_literal_bck.exit297.thread452.loopexit.us.us.i, label %.lr.ph1302

.lr.ph1302:                                       ; preds = %bb.fc, %bb.fd
  %.sroa.14.0.i295.us.us.i1301 = phi ptr [ %i.wl, %bb.fd ], [ %i.uy, %bb.fc ] ; 2 uses
  %.sroa.55.0.i294.us.us.i1300 = phi i64 [ %i.wi, %bb.fd ], [ %i.wf, %bb.fc ]
  %i.wi = add nsw i64 %.sroa.55.0.i294.us.us.i1300, -2 ; 3 uses
  %i.wj = icmp eq ptr %.sroa.4108.0.copyload.i84, %.sroa.14.0.i295.us.us.i1301
  br i1 %i.wj, label %_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x2re4fast6fastvmNtB4_6FastVM21try_match_literal_bck.exit297.thread452.loopexit.us.us.i, label %bb.fe

bb.fe:                                            ; preds = %.lr.ph1302
  %i.wk = getelementptr inbounds nuw i8, ptr %i.we, i64 %i.wi ; 2 uses
  %i.wl = getelementptr inbounds i8, ptr %.sroa.14.0.i295.us.us.i1301, i64 -1 ; 2 uses
  %i.wm = load i8, ptr %i.wk, align 1, !alias.scope !3767, !noalias !3768, !noundef !10
  %i.wn = load i8, ptr %i.wl, align 1, !alias.scope !3766, !noalias !3769, !noundef !10
  %.not6.i296.us.us.i = icmp eq i8 %i.wm, %i.wn
  br i1 %.not6.i296.us.us.i, label %bb.ff, label %.backedge.us.us.i92

bb.ff:                                            ; preds = %bb.fe
  %i.wo = getelementptr inbounds nuw i8, ptr %i.wk, i64 1
  %i.wp = load i8, ptr %i.wo, align 1, !alias.scope !3767, !noalias !3768, !noundef !10
  %i.wq = icmp eq i8 %i.wp, 0
  br i1 %i.wq, label %bb.fd, label %.backedge.us.us.i92

_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x2re4fast6fastvmNtB4_6FastVM21try_match_literal_bck.exit297.thread452.loopexit.us.us.i: ; preds = %bb.fd, %.lr.ph1302, %bb.fc
  %i.wr = add i64 %i.wa, %i.vb
  call fastcc void @_RNvMNtNtCs7gfv9tzbXmh_6yara_x2re9bitmapsetINtB2_9BitmapSetuE6insertB6_(ptr noalias nofree noundef align 8 dereferenceable(104) %i.oz, i64 noundef %i.wr) #41
  br label %.backedge.us.us.i92

.backedge.us.us.i92:                              ; preds = %bb.ff, %bb.fe, %_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x2re4fast6fastvmNtB4_6FastVM21try_match_literal_bck.exit297.thread452.loopexit.us.us.i, %bb.fb, %.lr.ph630.split.us.split.us.i
  %i.ws = icmp eq ptr %i.vz, %i.uw
  br i1 %i.ws, label %._crit_edge.i89, label %.lr.ph630.split.us.split.us.i

.lr.ph630.split.us.split.i:                       ; preds = %.lr.ph630.split.us.i, %.backedge.us.i91
  %.sroa.0111.0629.us.i = phi ptr [ %i.wt, %.backedge.us.i91 ], [ %.val268.i, %.lr.ph630.split.us.i ] ; 2 uses
  %i.wt = getelementptr inbounds nuw i8, ptr %.sroa.0111.0629.us.i, i64 8 ; 2 uses
  %i.wu = load i64, ptr %.sroa.0111.0629.us.i, align 8, !noalias !3714, !noundef !10 ; 3 uses
  %.not221.us.i = icmp ult i64 %i.wu, %i.od
  br i1 %.not221.us.i, label %bb.fg, label %.backedge.us.i91

bb.fg:                                            ; preds = %.lr.ph630.split.us.split.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4108.0.copyload.i84) ]
  %i.wv = sub nuw nsw i64 %i.od, %i.wu            ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3765)
  call void @llvm.experimental.noalias.scope.decl(metadata !3766)
  %i.ww = icmp samesign ult i64 %i.wv, %.sroa.6.0.copyload.i85
  br i1 %i.ww, label %.backedge.us.i91, label %_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x2re4fast6fastvmNtB4_6FastVM21try_match_literal_bck.exit297.us.i

_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x2re4fast6fastvmNtB4_6FastVM21try_match_literal_bck.exit297.us.i: ; preds = %bb.fg
  %i.wx = sub nuw nsw i64 %i.wv, %.sroa.6.0.copyload.i85
  %i.wy = getelementptr inbounds nuw i8, ptr %i.oe, i64 %i.wx
  %bcmp.i291.us.i = call i32 @bcmp(ptr nonnull readonly %i.wy, ptr nonnull readonly %.sroa.4108.0.copyload.i84, i64 range(i64 0, -9223372036854775808) %.sroa.6.0.copyload.i85), !alias.scope !3770, !noalias !3714
  %i.wz = icmp eq i32 %bcmp.i291.us.i, 0
  br i1 %i.wz, label %_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x2re4fast6fastvmNtB4_6FastVM21try_match_literal_bck.exit297.thread452.us.i, label %.backedge.us.i91

_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x2re4fast6fastvmNtB4_6FastVM21try_match_literal_bck.exit297.thread452.us.i: ; preds = %_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x2re4fast6fastvmNtB4_6FastVM21try_match_literal_bck.exit297.us.i
  %i.xa = add i64 %i.wu, %i.vb
  call fastcc void @_RNvMNtNtCs7gfv9tzbXmh_6yara_x2re9bitmapsetINtB2_9BitmapSetuE6insertB6_(ptr noalias nofree noundef align 8 dereferenceable(104) %i.oz, i64 noundef %i.xa) #41
  br label %.backedge.us.i91

.backedge.us.i91:                                 ; preds = %_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x2re4fast6fastvmNtB4_6FastVM21try_match_literal_bck.exit297.thread452.us.i, %_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x2re4fast6fastvmNtB4_6FastVM21try_match_literal_bck.exit297.us.i, %bb.fg, %.lr.ph630.split.us.split.i
  %i.xb = icmp eq ptr %i.wt, %i.uw
  br i1 %i.xb, label %._crit_edge.i89, label %.lr.ph630.split.us.split.i

.lr.ph630.split.us631.i:                          ; preds = %.lr.ph630.split.us631.i.preheader, %.backedge.us635.i
  %.sroa.0111.0629.us632.i = phi ptr [ %i.xc, %.backedge.us635.i ], [ %.val268.i, %.lr.ph630.split.us631.i.preheader ] ; 2 uses
  %i.xc = getelementptr inbounds nuw i8, ptr %.sroa.0111.0629.us632.i, i64 8 ; 2 uses
  %i.xd = load i64, ptr %.sroa.0111.0629.us632.i, align 8, !noalias !3714, !noundef !10 ; 4 uses
  %.not221.us633.i = icmp ult i64 %i.xd, %i.od
  br i1 %.not221.us633.i, label %bb.fh, label %.backedge.us635.i

bb.fh:                                            ; preds = %.lr.ph630.split.us631.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4108.0.copyload.i84) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.0.copyload.i86) ]
  %i.xe = sub nuw nsw i64 %i.od, %i.xd            ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3757)
  call void @llvm.experimental.noalias.scope.decl(metadata !3758)
  call void @llvm.experimental.noalias.scope.decl(metadata !3759)
  %i.xf = icmp samesign ult i64 %i.xe, %.sroa.6.0.copyload.i85
  br i1 %i.xf, label %.backedge.us635.i, label %bb.fi

bb.fi:                                            ; preds = %bb.fh
  %10 = icmp eq i64 %i.od, %i.xd
  br i1 %10, label %_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x2re4fast6fastvmNtB4_6FastVM28try_match_masked_literal_bck.exit321.us.i.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.fi
  %i.xg = getelementptr inbounds nuw i8, ptr %i.oe, i64 %i.xe
  br label %bb.fj

11:                                               ; preds = %bb.fk
  %12 = icmp eq ptr %i.oe, %i.xj
  br i1 %12, label %_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x2re4fast6fastvmNtB4_6FastVM28try_match_masked_literal_bck.exit321.us.i.loopexit, label %bb.fj

bb.fj:                                            ; preds = %.lr.ph, %11
  %.sroa.1541.0.i300.us.i1298 = phi ptr [ %i.uz, %.lr.ph ], [ %i.xl, %11 ] ; 2 uses
  %.sroa.1039.0.i299.us.i1297 = phi ptr [ %i.uy, %.lr.ph ], [ %i.xk, %11 ] ; 2 uses
  %.sroa.537.0.i298.us.i1296 = phi ptr [ %i.xg, %.lr.ph ], [ %i.xj, %11 ]
  %i.xh = icmp eq ptr %.sroa.4108.0.copyload.i84, %.sroa.1039.0.i299.us.i1297
  %i.xi = icmp eq ptr %.sroa.8.0.copyload.i86, %.sroa.1541.0.i300.us.i1298
  %or.cond72.i301.us.i = select i1 %i.xh, i1 true, i1 %i.xi
  br i1 %or.cond72.i301.us.i, label %_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x2re4fast6fastvmNtB4_6FastVM28try_match_masked_literal_bck.exit321.us.i.loopexit, label %bb.fk

bb.fk:                                            ; preds = %bb.fj
  %i.xj = getelementptr inbounds i8, ptr %.sroa.537.0.i298.us.i1296, i64 -1 ; 3 uses
  %i.xk = getelementptr inbounds i8, ptr %.sroa.1039.0.i299.us.i1297, i64 -1 ; 2 uses
  %i.xl = getelementptr inbounds i8, ptr %.sroa.1541.0.i300.us.i1298, i64 -1 ; 2 uses
  %i.xm = load i8, ptr %i.xj, align 1, !alias.scope !3760, !noalias !3763, !noundef !10
  %i.xn = load i8, ptr %i.xl, align 1, !alias.scope !3759, !noalias !3762, !noundef !10
  %i.xo = load i8, ptr %i.xk, align 1, !alias.scope !3758, !noalias !3764, !noundef !10
  %i.xp = xor i8 %i.xo, %i.xm
  %i.xq = and i8 %i.xp, %i.xn
  %.not15.i302.us.i = icmp eq i8 %i.xq, 0
  br i1 %.not15.i302.us.i, label %11, label %.backedge.us635.i

_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x2re4fast6fastvmNtB4_6FastVM28try_match_masked_literal_bck.exit321.us.i.loopexit: ; preds = %bb.fj, %11, %bb.fi
  %i.xr = add i64 %i.xd, %i.vb
  call fastcc void @_RNvMNtNtCs7gfv9tzbXmh_6yara_x2re9bitmapsetINtB2_9BitmapSetuE6insertB6_(ptr noalias nofree noundef align 8 dereferenceable(104) %i.oz, i64 noundef %i.xr) #41
  br label %.backedge.us635.i

.backedge.us635.i:                                ; preds = %bb.fk, %_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x2re4fast6fastvmNtB4_6FastVM28try_match_masked_literal_bck.exit321.us.i.loopexit, %bb.fh, %.lr.ph630.split.us631.i
  %i.xs = icmp eq ptr %i.xc, %i.uw
  br i1 %i.xs, label %._crit_edge.i89, label %.lr.ph630.split.us631.i

._crit_edge638.i:                                 ; preds = %._crit_edge.i89, %.split636.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !3715
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !3715
  br label %.loopexit.i37

.lr.ph630.split.i:                                ; preds = %.lr.ph630.i, %.backedge.i94
  %.sroa.0111.0629.i = phi ptr [ %i.xv, %.backedge.i94 ], [ %.val268.i, %.lr.ph630.i ] ; 2 uses
  %i.xt = load i64, ptr %.sroa.0111.0629.i, align 8, !noalias !3714, !noundef !10
  %.not221.i93 = icmp ult i64 %i.xt, %i.od
  br i1 %.not221.i93, label %bb.fl, label %.backedge.i94

._crit_edge.i89:                                  ; preds = %.backedge.us635.i, %.backedge.us635.i.us, %.backedge.us.i91, %.backedge.us.us.i92, %.backedge.i94, %.split.i83
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !3715
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !3715
  call void @_RNvXs0_NtNtNtCs7gfv9tzbXmh_6yara_x2re4fast5instrNtB5_11InstrParserNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.j, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.k), !noalias !3714
  %i.xu = load i16, ptr %i.j, align 8, !range !3649, !noalias !3715, !noundef !10 ; 2 uses
  %.not220.i90 = icmp eq i16 %i.xu, -1
  br i1 %.not220.i90, label %._crit_edge638.i, label %.split.i83

bb.fl:                                            ; preds = %.lr.ph630.split.i
  call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #39, !noalias !3714
  unreachable

.backedge.i94:                                    ; preds = %.lr.ph630.split.i
  %i.xv = getelementptr inbounds nuw i8, ptr %.sroa.0111.0629.i, i64 8 ; 2 uses
  %i.xw = icmp eq ptr %i.xv, %i.uw
  br i1 %i.xw, label %._crit_edge.i89, label %.lr.ph630.split.i

bb.fm:                                            ; preds = %bb.fm, %.lr.ph628.i
  %.sroa.0116.0627.i = phi ptr [ %.val272.i, %.lr.ph628.i ], [ %i.xx, %bb.fm ] ; 2 uses
  %i.xx = getelementptr inbounds nuw i8, ptr %.sroa.0116.0627.i, i64 8 ; 2 uses
  %i.xy = load i64, ptr %.sroa.0116.0627.i, align 8, !noalias !3714, !noundef !10
  %i.xz = add i64 %i.xy, %i.qv
  call fastcc void @_RNvMNtNtCs7gfv9tzbXmh_6yara_x2re9bitmapsetINtB2_9BitmapSetuE6insertB6_(ptr noalias nofree noundef align 8 dereferenceable(104) %i.oz, i64 noundef %i.xz) #41
  %i.ya = icmp eq ptr %i.xx, %i.qs
  br i1 %i.ya, label %.loopexit.i37.loopexit377, label %bb.fm

bb.fn:                                            ; preds = %bb.fq, %.lr.ph618.i
  %.sroa.0119.0617.i = phi ptr [ %.val270.i, %.lr.ph618.i ], [ %i.yb, %bb.fq ] ; 2 uses
  %i.yb = getelementptr inbounds nuw i8, ptr %.sroa.0119.0617.i, i64 8 ; 2 uses
  %i.yc = load i64, ptr %.sroa.0119.0617.i, align 8, !noalias !3714, !noundef !10 ; 3 uses
  %i.yd = add i64 %i.yc, %i.qz                    ; 3 uses
  %i.ye = icmp ult i64 %i.yd, %i.yc
  %.not218.i80 = icmp ugt i64 %i.yd, %i.od
  %or.cond.i81 = select i1 %i.ye, i1 true, i1 %.not218.i80
  br i1 %or.cond.i81, label %bb.fq, label %bb.fo

bb.fo:                                            ; preds = %bb.fn
  %i.yf = getelementptr inbounds nuw i8, ptr %i.oe, i64 %i.yc ; 3 uses
  %i.yg = getelementptr inbounds nuw i8, ptr %i.yf, i64 %i.qz
  %i.yh = load atomic ptr, ptr @_RNvNvNtNtNtCslssDYltVX0B_6memchr4arch6x86_646memchr10memchr_raw2FN monotonic, align 8, !noalias !3771, !nonnull !10, !noundef !10
  %i.yi = call { i64, ptr } %i.yh(i8 noundef 10, ptr noundef nonnull readonly %i.yf, ptr noundef nonnull readonly %i.yg), !noalias !3772, !inline_history !3622 ; 2 uses
  %i.yj = extractvalue { i64, ptr } %i.yi, 0
  %i.yk = trunc nuw i64 %i.yj to i1
  br i1 %i.yk, label %_RINvNtNtNtCslssDYltVX0B_6memchr4arch7generic6memchr21search_slice_with_rawNCNvNtB8_6memchr6memchr0ECs7gfv9tzbXmh_6yara_x.exit.thread.i82, label %bb.fp

_RINvNtNtNtCslssDYltVX0B_6memchr4arch7generic6memchr21search_slice_with_rawNCNvNtB8_6memchr6memchr0ECs7gfv9tzbXmh_6yara_x.exit.thread.i82: ; preds = %bb.fo
  %i.yl = extractvalue { i64, ptr } %i.yi, 1
  %i.ym = call noundef i64 @_RNvXNtCslssDYltVX0B_6memchr3extPhNtB2_7Pointer8distanceCs7gfv9tzbXmh_6yara_x(ptr noundef %i.yl, ptr noundef nonnull readonly %i.yf), !noalias !3714 ; 0 uses
  br label %bb.fq

bb.fp:                                            ; preds = %bb.fo
  call fastcc void @_RNvMNtNtCs7gfv9tzbXmh_6yara_x2re9bitmapsetINtB2_9BitmapSetuE6insertB6_(ptr noalias nofree noundef align 8 dereferenceable(104) %i.oz, i64 noundef %i.yd) #41
  br label %bb.fq

bb.fq:                                            ; preds = %bb.fp, %_RINvNtNtNtCslssDYltVX0B_6memchr4arch7generic6memchr21search_slice_with_rawNCNvNtB8_6memchr6memchr0ECs7gfv9tzbXmh_6yara_x.exit.thread.i82, %bb.fn
  %i.yn = icmp eq ptr %i.yb, %i.qw
  br i1 %i.yn, label %.loopexit.i37.loopexit381, label %bb.fn

bb.fr:                                            ; preds = %bb.dt, %bb.dr
  %.sroa.0334.0.i = phi i8 [ %spec.select652.i, %bb.dr ], [ %spec.select.i28, %bb.dt ] ; 3 uses
  %i.yo = getelementptr inbounds nuw i8, ptr %i.pr, i64 3
  %.sroa.049.0.copyload.i238.i = load i16, ptr %i.yo, align 1, !alias.scope !3710, !noalias !3712 ; 2 uses
  %i.yp = icmp eq i16 %.sroa.049.0.copyload.i238.i, 0
  %i.yq = load i16, ptr %i.nz, align 8, !alias.scope !3707, !noalias !3709
  %spec.select651.i = select i1 %i.yp, i16 %i.yq, i16 %.sroa.049.0.copyload.i238.i ; 3 uses
  %.sroa.13.0.ph432.in.i = getelementptr inbounds nuw i8, ptr %i.pr, i64 1
  %.sroa.13.0.ph432.i = load i16, ptr %.sroa.13.0.ph432.in.i, align 1, !alias.scope !3710, !noalias !3712 ; 3 uses
  %i.yr = add i64 %.sroa.0.0647.i, 5              ; 8 uses
  %i.ys = icmp ugt i64 %i.yr, %i.pn
  br i1 %i.ys, label %bb.gi, label %bb.fs, !prof !14

bb.fs:                                            ; preds = %bb.fr
  %i.yt = sub nuw i64 %i.pn, %i.yr                ; 14 uses
  %i.yu = getelementptr inbounds nuw i8, ptr %i.pp, i64 %i.yr ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3773)
  %.not.i.i64 = icmp eq i64 %i.pn, %i.yr
  br i1 %.not.i.i64, label %bb.ft, label %bb.fu, !prof !14

bb.ft:                                            ; preds = %bb.fs
  call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @347) #39, !noalias !3774
  unreachable

bb.fu:                                            ; preds = %bb.fs
  %i.yv = load i8, ptr %i.yu, align 1, !alias.scope !3773, !noalias !3775, !noundef !10 ; 2 uses
  switch i8 %i.yv, label %bb.fv [
    i8 1, label %bb.fw
    i8 2, label %bb.fy
    i8 7, label %bb.gc
    i8 3, label %.lr.ph624.i
    i8 4, label %bb.ge
    i8 5, label %.lr.ph624.i
    i8 6, label %bb.gg
    i8 0, label %.lr.ph624.i
  ], !prof !49

bb.fv:                                            ; preds = %bb.fu
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !3776
  store i8 %i.yv, ptr %i.i, align 1, !noalias !3776
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !3776
  store ptr %i.i, ptr %i.h, align 8, !noalias !3776
  %.sroa.443.0..sroa_idx.i.i79 = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr @_RNvXNtNtNtCskKLDkoKarTP_4core3fmt3num3imphNtB6_7Display3fmt, ptr %.sroa.443.0..sroa_idx.i.i79, align 8, !noalias !3776
  call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @354, ptr noundef nonnull %i.h, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @355) #39, !noalias !3774
  unreachable

bb.fw:                                            ; preds = %bb.fu
  %i.yw = getelementptr inbounds nuw i8, ptr %i.yu, i64 1
  %.sroa.044.0.copyload.i.i74 = load i16, ptr %i.yw, align 1, !alias.scope !3773, !noalias !3775 ; 2 uses
  %i.yx = zext i16 %.sroa.044.0.copyload.i.i74 to i64 ; 2 uses
  %i.yy = add nuw nsw i64 %i.yx, 3                ; 2 uses
  %.not60.i.i75 = icmp samesign ugt i64 %i.yy, %i.yt
  br i1 %.not60.i.i75, label %bb.fx, label %.lr.ph626.i, !prof !14

bb.fx:                                            ; preds = %bb.fw
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef 3, i64 noundef %i.yy, i64 noundef range(i64 0, -9223372036854775808) %i.yt, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @348) #39, !noalias !3774
  unreachable

bb.fy:                                            ; preds = %bb.fu
  %i.yz = getelementptr inbounds nuw i8, ptr %i.yu, i64 1
  %.sroa.045.0.copyload.i.i69 = load i16, ptr %i.yz, align 1, !alias.scope !3773, !noalias !3775 ; 2 uses
  %i.za = zext i16 %.sroa.045.0.copyload.i.i69 to i64 ; 4 uses
  %i.zb = add nuw nsw i64 %i.za, 3                ; 5 uses
  %.not58.i.i70 = icmp samesign ugt i64 %i.zb, %i.yt
  br i1 %.not58.i.i70, label %bb.fz, label %bb.ga, !prof !14

bb.fz:                                            ; preds = %bb.fy
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef 3, i64 noundef %i.zb, i64 noundef range(i64 0, -9223372036854775808) %i.yt, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @350) #39, !noalias !3774
  unreachable

bb.ga:                                            ; preds = %bb.fy
  %i.zc = add nuw nsw i64 %i.zb, %i.za            ; 2 uses
  %.not59.i.i71 = icmp samesign ugt i64 %i.zc, %i.yt
  br i1 %.not59.i.i71, label %bb.gb, label %bb.gn, !prof !14

bb.gb:                                            ; preds = %bb.ga
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %i.zb, i64 noundef %i.zc, i64 noundef range(i64 0, -9223372036854775808) %i.yt, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @349) #39, !noalias !3774
  unreachable

bb.gc:                                            ; preds = %bb.fu
  %i.zd = getelementptr inbounds nuw i8, ptr %i.yu, i64 1
  %.sroa.046.0.copyload.i.i67 = load i16, ptr %i.zd, align 1, !alias.scope !3773, !noalias !3775
  %i.ze = zext i16 %.sroa.046.0.copyload.i.i67 to i64
  %i.zf = add nuw nsw i64 %i.ze, 3                ; 2 uses
  %.not57.i.i68 = icmp samesign ugt i64 %i.zf, %i.yt
  br i1 %.not57.i.i68, label %bb.gd, label %.lr.ph624.i, !prof !14

bb.gd:                                            ; preds = %bb.gc
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef 3, i64 noundef %i.zf, i64 noundef range(i64 0, -9223372036854775808) %i.yt, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @351) #39, !noalias !3774
  unreachable

bb.ge:                                            ; preds = %bb.fu
  %i.zg = icmp samesign ult i64 %i.yt, 3
  br i1 %i.zg, label %bb.gf, label %.lr.ph624.i, !prof !14

bb.gf:                                            ; preds = %bb.ge
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef 3, i64 noundef range(i64 0, -9223372036854775808) %i.yt, i64 noundef range(i64 0, -9223372036854775808) %i.yt, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @352) #39, !noalias !3774
  unreachable

bb.gg:                                            ; preds = %bb.fu
  %i.zh = icmp samesign ult i64 %i.yt, 3
  br i1 %i.zh, label %bb.gh, label %.lr.ph624.i, !prof !14

bb.gh:                                            ; preds = %bb.gg
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef 3, i64 noundef range(i64 0, -9223372036854775808) %i.yt, i64 noundef range(i64 0, -9223372036854775808) %i.yt, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @353) #39, !noalias !3774
  unreachable

bb.gi:                                            ; preds = %bb.fr
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %i.yr, i64 noundef %i.pn, i64 noundef %i.pn, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #39, !noalias !3714
  unreachable

.lr.ph624.i:                                      ; preds = %bb.go, %bb.gn, %bb.gg, %bb.ge, %bb.gc, %bb.fu, %bb.fu, %bb.fu
  %.val266.i = load ptr, ptr %i.om, align 8, !alias.scope !3707, !noalias !3709, !nonnull !10, !noundef !10 ; 2 uses
  %.idx655.i = shl nuw nsw i64 %.val648.i, 3
  %i.zi = getelementptr inbounds nuw i8, ptr %.val266.i, i64 %.idx655.i
  %i.zj = zext i16 %.sroa.13.0.ph432.i to i64
  %i.zk = shl nuw nsw i64 %i.zj, %i.pa            ; 2 uses
  %i.zl = zext i16 %spec.select651.i to i64
  %.sroa.03.043.i.i = add nuw nsw i64 %i.zl, 1
  %i.zm = shl nuw nsw i64 %.sroa.03.043.i.i, %i.pa
  %i.zn = and i8 %.sroa.0334.0.i, 1
  %.not45.i.i = icmp eq i8 %i.zn, 0
end_hunk_0
