Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yara-x-rs/original/yr.yr.f14c8b45f5cb0649-cgu.11?download=true
inline.NumInlined: 1583
inline.NumDeleted: 557
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_RINvXs_NtNtCs7gfv9tzbXmh_6yara_x8compiler5rulesNtB5_11AhoCorasickNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeINtNtNtNtCslcwApyVHiOd_7bincode8features5serde11de_borrowed12SerdeDecoderINtNtNtB27_2de7decoder11DecoderImplNtNtB3e_4read11SliceReaderNtNtB27_6config13ConfigurationuEEECskIqAKC4t9Ft_2yr:bb.a
  %i.ex = getelementptr inbounds nuw i8, ptr %.sroa.081.0.i1371.i, i64 12 ; 2 uses
  %i.ey = add nsw i64 %.sroa.584.0.i1372.i, -12   ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %i.ew, align 1, !alias.scope !1880, !noalias !1878
  %i.ez = load i64, ptr %i.k, align 8, !range !5, !alias.scope !1881, !noalias !1874, !noundef !6
  %i.fa = icmp eq i64 %i.ep, %i.ez
  br i1 %i.fa, label %bb.ar, label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtCsc2ZV4bV5Srq_9daachorse6OutputmEE8push_mutCskIqAKC4t9Ft_2yr.exit.i

bb.ar:                                            ; preds = %bb.aq
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtCsc2ZV4bV5Srq_9daachorse6OutputmEE8grow_oneCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k) #27
          to label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtCsc2ZV4bV5Srq_9daachorse6OutputmEE8push_mutCskIqAKC4t9Ft_2yr.exit.i unwind label %bb.ao, !noalias !1848

_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtCsc2ZV4bV5Srq_9daachorse6OutputmEE8push_mutCskIqAKC4t9Ft_2yr.exit.i: ; preds = %bb.ar, %bb.aq
  %i.fb = load ptr, ptr %i.em, align 8, !alias.scope !1881, !noalias !1874, !nonnull !6, !noundef !6
  %i.fc = getelementptr inbounds nuw [12 x i8], ptr %i.fb, i64 %i.ep ; 3 uses
  store i32 %.sroa.0.0.copyload.i200.i.i, ptr %i.fc, align 4, !noalias !1879
  %.sroa.4811.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.fc, i64 4
  store i32 %.sroa.0.0.copyload.i195.i.i, ptr %.sroa.4811.0..sroa_idx.i, align 4, !noalias !1879
  %.sroa.5812.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.fc, i64 8
  store i32 %.sroa.0.0.copyload.i.i.i, ptr %.sroa.5812.0..sroa_idx.i, align 4, !noalias !1879
  store i64 %i.eq, ptr %i.en, align 8, !noalias !1874
  %exitcond162 = icmp eq i64 %i.eq, %i.eb
  br i1 %exitcond162, label %._crit_edge1375.loopexit.i, label %.lr.ph1374.i

bb.as:                                            ; preds = %bb.ao
  %i.fd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26, !noalias !1879
  unreachable

bb.at:                                            ; preds = %_RNvXs4_Csc2ZV4bV5Srq_9daachorseNtB5_9MatchKindNtNtB5_10serializer12Serializable22deserialize_from_slice.exit.i, %bb.ap, %bb.ak, %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultjNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCskIqAKC4t9Ft_2yr.exit.i.i
  %i.fe = landingpad { ptr, i32 }
          cleanup
  br label %bb.cm

bb.au:                                            ; preds = %.noexc318.i, %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultjNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCskIqAKC4t9Ft_2yr.exit91.i.i, %._crit_edge1366.i
  store i64 3, ptr %.sroa.12, align 8, !alias.scope !1848
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecmENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %bb.aw unwind label %bb.av, !noalias !1848

bb.av:                                            ; preds = %bb.au
  %i.ff = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecmENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %bb.cn unwind label %bb.ax, !noalias !1848

bb.aw:                                            ; preds = %bb.au
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecmENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecmEECskIqAKC4t9Ft_2yr.exit.i unwind label %bb.af, !noalias !1848

bb.ax:                                            ; preds = %bb.av
  %i.fg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26, !noalias !1848
  unreachable

._crit_edge1375.loopexit.i:                       ; preds = %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtCsc2ZV4bV5Srq_9daachorse6OutputmEE8push_mutCskIqAKC4t9Ft_2yr.exit.i
  %i.fh = load <2 x i32>, ptr %i.k, align 8, !noalias !1873
  %.sroa.5799.0.copyload.pre.i = load ptr, ptr %i.em, align 8, !noalias !1873
  br label %._crit_edge1375.i

._crit_edge1375.i:                                ; preds = %._crit_edge1375.loopexit.i, %bb.al
  %.sroa.5799.0.copyload.i = phi ptr [ %i.ek, %bb.al ], [ %.sroa.5799.0.copyload.pre.i, %._crit_edge1375.loopexit.i ]
  %.sroa.081.0.i.lcssa.i = phi ptr [ %i.dz, %bb.al ], [ %i.ex, %._crit_edge1375.loopexit.i ] ; 4 uses
  %.sroa.584.0.i.lcssa.i = phi i64 [ %i.ea, %bb.al ], [ %i.ey, %._crit_edge1375.loopexit.i ] ; 4 uses
  %i.fi = phi <2 x i32> [ %i.eo, %bb.al ], [ %i.fh, %._crit_edge1375.loopexit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !1873
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !1859
  store <2 x i32> %i.fi, ptr %i.n, align 8, !noalias !1859
  %.sroa.3742.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %.sroa.5799.0.copyload.i, ptr %.sroa.3742.0..sroa_idx.i, align 8, !noalias !1859
  %.sroa.4743.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store i64 %i.eb, ptr %.sroa.4743.0..sroa_idx.i, align 8, !noalias !1859
  %.not.i428.i = icmp eq i64 %.sroa.584.0.i.lcssa.i, 0
  br i1 %.not.i428.i, label %_RNvXs4_Csc2ZV4bV5Srq_9daachorseNtB5_9MatchKindNtNtB5_10serializer12Serializable22deserialize_from_slice.exit.i, label %bb.az

bb.ay:                                            ; preds = %bb.bc
  %i.fj = landingpad { ptr, i32 }
          cleanup
  br label %bb.ch

bb.az:                                            ; preds = %._crit_edge1375.i
  %i.fk = load i8, ptr %.sroa.081.0.i.lcssa.i, align 1, !alias.scope !1882, !noundef !6 ; 2 uses
  %switch.selectcmp.i.i = icmp eq i8 %i.fk, 2
  %switch.select.i.i = select i1 %switch.selectcmp.i.i, i8 2, i8 0
  %switch.selectcmp58.i.i = icmp eq i8 %i.fk, 1
  %switch.select59.i.i = select i1 %switch.selectcmp58.i.i, i8 1, i8 %switch.select.i.i ; 2 uses
  %i.fl = icmp sgt i64 %.sroa.584.0.i.lcssa.i, 4
  br i1 %i.fl, label %bb.ba, label %_RNvXs4_Csc2ZV4bV5Srq_9daachorseNtB5_9MatchKindNtNtB5_10serializer12Serializable22deserialize_from_slice.exit.i

bb.ba:                                            ; preds = %bb.az
  %i.fm = getelementptr inbounds nuw i8, ptr %.sroa.081.0.i.lcssa.i, i64 1
  %.sroa.0.0.copyload.i476.i = load i32, ptr %i.fm, align 1, !alias.scope !1883
  call void @llvm.experimental.noalias.scope.decl(metadata !1884)
  %.not.i.i.i = icmp eq i64 %.sroa.584.0.i.lcssa.i, 5
  br i1 %.not.i.i.i, label %_RNvXs3_NtCsc2ZV4bV5Srq_9daachorse10serializerhNtB5_12Serializable22deserialize_from_slice.exit.i.i, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.fn = getelementptr inbounds nuw i8, ptr %.sroa.081.0.i.lcssa.i, i64 5
  %.sroa.0.0.copyload.i.i508.i = load i8, ptr %i.fn, align 1, !alias.scope !1885
  switch i8 %.sroa.0.0.copyload.i.i508.i, label %_RNvXs3_NtCsc2ZV4bV5Srq_9daachorse10serializerhNtB5_12Serializable22deserialize_from_slice.exit.i.i [
    i8 0, label %bb.bf
    i8 1, label %bb.bc
  ]

bb.bc:                                            ; preds = %bb.bb
  %i.fo = getelementptr inbounds nuw i8, ptr %.sroa.081.0.i.lcssa.i, i64 6
  %i.fp = add nsw i64 %.sroa.584.0.i.lcssa.i, -6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1886
  invoke void @_RNvXs0_NtCsc2ZV4bV5Srq_9daachorse9prefilterNtB5_9PrefilterNtNtB7_10serializer12Serializable22deserialize_from_slice(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.fo, i64 noundef %i.fp)
          to label %.noexc536.i unwind label %bb.ay, !noalias !1848

.noexc536.i:                                      ; preds = %bb.bc
  %i.fq = load i64, ptr %i.c, align 8, !range !1887, !noalias !1886, !noundef !6 ; 2 uses
  %.not82.i.i = icmp eq i64 %i.fq, -1
  %i.fr = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.064.i.sroa.0.0.copyload.i = load ptr, ptr %i.fr, align 8, !noalias !1886 ; 2 uses
  %.sroa.064.i.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.064.i.sroa.4.0.copyload.i = load ptr, ptr %.sroa.064.i.sroa.4.0..sroa_idx.i, align 8, !noalias !1886 ; 2 uses
  br i1 %.not82.i.i, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %.noexc536.i
  %.sroa.465.0..sroa_idx.i532.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.465.0.copyload.i533.i = load ptr, ptr %.sroa.465.0..sroa_idx.i532.i, align 8, !noalias !1886
  %.sroa.566.0..sroa_idx.i534.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.sroa.566.0.copyload.i535.i = load i64, ptr %.sroa.566.0..sroa_idx.i534.i, align 8, !noalias !1886
  %.sroa.776.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %.sroa.776.0.copyload.i.i = load i64, ptr %.sroa.776.0..sroa_idx.i.i, align 8, !noalias !1886
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1886
  br label %_RNvXs3_NtCsc2ZV4bV5Srq_9daachorse10serializerhNtB5_12Serializable22deserialize_from_slice.exit.i.i

bb.be:                                            ; preds = %.noexc536.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1886
  %i.fs = ptrtoint ptr %.sroa.064.i.sroa.4.0.copyload.i to i64
  br label %bb.bf

_RNvXs3_NtCsc2ZV4bV5Srq_9daachorse10serializerhNtB5_12Serializable22deserialize_from_slice.exit.i.i: ; preds = %bb.bd, %bb.bb, %bb.ba
  %.sroa.10652.0.ph.i = phi ptr [ undef, %bb.bb ], [ %.sroa.064.i.sroa.0.0.copyload.i, %bb.bd ], [ null, %bb.ba ]
  %.sroa.30.0.ph.i = phi i64 [ undef, %bb.bb ], [ %.sroa.776.0.copyload.i.i, %bb.bd ], [ undef, %bb.ba ]
  %.sroa.24.0.ph.i = phi i64 [ undef, %bb.bb ], [ %.sroa.566.0.copyload.i535.i, %bb.bd ], [ undef, %bb.ba ]
  %.sroa.18660.0.ph.i = phi ptr [ undef, %bb.bb ], [ %.sroa.465.0.copyload.i533.i, %bb.bd ], [ undef, %bb.ba ]
  %.sroa.17656.0.ph.i = phi ptr [ undef, %bb.bb ], [ %.sroa.064.i.sroa.4.0.copyload.i, %bb.bd ], [ undef, %bb.ba ]
  %.sroa.0650.0.ph.i = phi i64 [ 3, %bb.bb ], [ %i.fq, %bb.bd ], [ 3, %bb.ba ]
  store i64 %.sroa.0650.0.ph.i, ptr %.sroa.12, align 8, !alias.scope !1848
  br label %_RNvXs4_Csc2ZV4bV5Srq_9daachorseNtB5_9MatchKindNtNtB5_10serializer12Serializable22deserialize_from_slice.exit.i

bb.bf:                                            ; preds = %bb.be, %bb.bb
  %.sroa.10652.0.i = phi ptr [ %.sroa.064.i.sroa.0.0.copyload.i, %bb.be ], [ null, %bb.bb ] ; 3 uses
  %.sroa.17656.0.i = phi i64 [ %i.fs, %bb.be ], [ undef, %bb.bb ]
  %.not.i = icmp eq i8 %switch.select59.i.i, 0    ; 2 uses
  br i1 %.not.i, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.ft = load ptr, ptr %.sroa.3.0..sroa_idx.i, align 8, !noalias !1859, !nonnull !6, !noundef !6
  %i.fu = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !1859, !noundef !6
  invoke fastcc void @_RNvMNtCsc2ZV4bV5Srq_9daachorse8bytewiseINtB2_22DoubleArrayAhoCorasickmE16build_root_tableCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.m, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.ft, i64 noundef %i.fu)
          to label %bb.bi unwind label %bb.cb, !noalias !1848

bb.bh:                                            ; preds = %bb.bf
  store i64 0, ptr %i.m, align 8, !noalias !1859
  %i.fv = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr inttoptr (i64 4 to ptr), ptr %i.fv, align 8, !noalias !1859
  %i.fw = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store i64 0, ptr %i.fw, align 8, !noalias !1859
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !1859
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 24, i1 false), !noalias !1859
  %i.fx = getelementptr inbounds nuw i8, ptr %i.l, i64 48 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fx, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 24, i1 false), !noalias !1859
  %i.fy = getelementptr inbounds nuw i8, ptr %i.l, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fy, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 24, i1 false), !noalias !1859
  %i.fz = getelementptr inbounds nuw i8, ptr %i.l, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fz, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false), !noalias !1859
  %i.ga = getelementptr inbounds nuw i8, ptr %i.l, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ga, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false), !noalias !1859
  %i.gb = getelementptr inbounds nuw i8, ptr %i.l, i64 140
  store i8 %switch.select59.i.i, ptr %i.gb, align 4, !noalias !1859
  %i.gc = getelementptr inbounds nuw i8, ptr %i.l, i64 136
  store i32 %.sroa.0.0.copyload.i476.i, ptr %i.gc, align 8, !noalias !1859
  %i.gd = getelementptr inbounds nuw i8, ptr %i.l, i64 120
  store ptr %.sroa.10652.0.i, ptr %i.gd, align 8, !noalias !1859
  %.sroa.4662.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 128
  store i64 %.sroa.17656.0.i, ptr %.sroa.4662.0..sroa_idx.i, align 8, !noalias !1859
  %i.ge = getelementptr inbounds nuw i8, ptr %i.l, i64 112
  %i.gf = load i64, ptr %i.ge, align 8, !noalias !1859, !noundef !6 ; 5 uses
  %i.gg = icmp ult i64 %i.gf, 768614336404564651
  call void @llvm.assume(i1 %i.gg)
  br i1 %.not.i, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.gh = getelementptr inbounds nuw i8, ptr %i.l, i64 64
  %i.gi = load i64, ptr %i.gh, align 8, !noalias !1859, !noundef !6 ; 2 uses
  %i.gj = icmp ult i64 %i.gi, 1152921504606846976
  call void @llvm.assume(i1 %i.gj)
  %i.gk = icmp eq i64 %i.gi, 0
  br i1 %i.gk, label %bb.bl, label %.loopexit

bb.bk:                                            ; preds = %bb.bi
  %i.gl = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.gm = load i64, ptr %i.gl, align 8, !noalias !1859, !noundef !6 ; 3 uses
  %i.gn = icmp ult i64 %i.gm, 768614336404564651
  call void @llvm.assume(i1 %i.gn)
  %i.go = icmp eq i64 %i.gm, 0
  br i1 %i.go, label %bb.bs, label %.loopexit

bb.bl:                                            ; preds = %bb.bj
  %i.gp = getelementptr inbounds nuw i8, ptr %i.l, i64 88
  %i.gq = load i64, ptr %i.gp, align 8, !noalias !1859, !noundef !6 ; 2 uses
  %i.gr = icmp ult i64 %i.gq, 2305843009213693952
  call void @llvm.assume(i1 %i.gr)
  %i.gs = icmp eq i64 %i.gq, 0
  br i1 %i.gs, label %bb.bm, label %.loopexit

bb.bm:                                            ; preds = %bb.bl
  %i.gt = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.gu = load i64, ptr %i.gt, align 8, !noalias !1859, !noundef !6 ; 7 uses
  %i.gv = icmp ult i64 %i.gu, 768614336404564651
  call void @llvm.assume(i1 %i.gv)
  %i.gw = icmp ne i64 %i.gu, 0
  %i.gx = and i64 %i.gu, 255
  %i.gy = icmp eq i64 %i.gx, 0
  %or.cond1448.i = and i1 %i.gw, %i.gy
  br i1 %or.cond1448.i, label %bb.bn, label %.loopexit

bb.bn:                                            ; preds = %bb.bm
  %i.gz = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %i.ha = load i64, ptr %i.gz, align 8, !noalias !1859, !noundef !6 ; 2 uses
  %i.hb = icmp ult i64 %i.ha, 2305843009213693952
  call void @llvm.assume(i1 %i.hb)
  %.not276.i = icmp eq i64 %i.ha, 256
  br i1 %.not276.i, label %.lr.ph225, label %.loopexit

.lr.ph225:                                        ; preds = %bb.bn
  %i.hc = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.hd = load ptr, ptr %i.hc, align 8, !noalias !1859, !nonnull !6, !noundef !6 ; 2 uses
  %.idx230 = mul nuw nsw i64 %i.gu, 12
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 %.idx230
  br label %bb.bp

bb.bo:                                            ; preds = %bb.br
  %i.hf = icmp eq ptr %i.hg, %i.he
  br i1 %i.hf, label %.loopexit.i, label %bb.bp

bb.bp:                                            ; preds = %.lr.ph225, %bb.bo
  %.sroa.0119.0.i223 = phi ptr [ %i.hd, %.lr.ph225 ], [ %i.hg, %bb.bo ] ; 4 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %.sroa.0119.0.i223, i64 12 ; 2 uses
  %i.hh = load i32, ptr %.sroa.0119.0.i223, align 4, !alias.scope !1888, !noalias !1848, !noundef !6 ; 2 uses
  %.not277.i = icmp eq i32 %i.hh, 0
  %i.hi = zext i32 %i.hh to i64
  %.not278.i = icmp samesign ugt i64 %i.gu, %i.hi
  %or.cond.i = select i1 %.not277.i, i1 true, i1 %.not278.i
  br i1 %or.cond.i, label %bb.bq, label %.loopexit

bb.bq:                                            ; preds = %bb.bp
  %i.hj = getelementptr inbounds nuw i8, ptr %.sroa.0119.0.i223, i64 4
  %i.hk = load i32, ptr %i.hj, align 4, !alias.scope !1889, !noalias !1848, !noundef !6
  %i.hl = zext i32 %i.hk to i64
  %.not279.i = icmp samesign ugt i64 %i.gu, %i.hl
  br i1 %.not279.i, label %bb.br, label %.loopexit

bb.br:                                            ; preds = %bb.bq
  %i.hm = getelementptr inbounds nuw i8, ptr %.sroa.0119.0.i223, i64 8
  %i.hn = load i32, ptr %i.hm, align 4, !alias.scope !1890, !noalias !1848, !noundef !6
  %i.ho = lshr i32 %i.hn, 8                       ; 2 uses
  %.not280.i = icmp eq i32 %i.ho, 0
  %i.hp = add nsw i32 %i.ho, -1
  %i.hq = zext nneg i32 %i.hp to i64
  %.not281.i = icmp samesign ugt i64 %i.gf, %i.hq
  %or.cond1322.i = select i1 %.not280.i, i1 true, i1 %.not281.i
  br i1 %or.cond1322.i, label %bb.bo, label %.loopexit

.loopexit.i:                                      ; preds = %bb.bx, %bb.bo
  %.sroa.22.0.copyload.in = phi i64 [ %i.gu, %bb.bo ], [ %i.gm, %bb.bx ]
  %.sroa.22.0.copyload = inttoptr i64 %.sroa.22.0.copyload.in to ptr ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.l, i64 104
  %i.hs = load ptr, ptr %i.hr, align 8, !noalias !1859, !nonnull !6, !noundef !6 ; 2 uses
  %.idx231 = mul nuw nsw i64 %i.gf, 12
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 %.idx231
  %i.hu = icmp eq i64 %i.gf, 0
  br i1 %i.hu, label %_RNvMNtCsc2ZV4bV5Srq_9daachorse8bytewiseINtB2_22DoubleArrayAhoCorasickmE11deserializeCskIqAKC4t9Ft_2yr.exit, label %.lr.ph228

bb.bs:                                            ; preds = %bb.bk
  %i.hv = getelementptr inbounds nuw i8, ptr %i.l, i64 64
  %i.hw = load i64, ptr %i.hv, align 8, !noalias !1859, !noundef !6 ; 8 uses
  %i.hx = icmp ult i64 %i.hw, 1152921504606846976
  call void @llvm.assume(i1 %i.hx)
  %i.hy = icmp ne i64 %i.hw, 0
  %i.hz = and i64 %i.hw, 255
  %i.ia = icmp eq i64 %i.hz, 0
  %or.cond1450.i = and i1 %i.hy, %i.ia
  br i1 %or.cond1450.i, label %bb.bt, label %.loopexit

bb.bt:                                            ; preds = %bb.bs
  %i.ib = getelementptr inbounds nuw i8, ptr %i.l, i64 88
  %i.ic = load i64, ptr %i.ib, align 8, !noalias !1859, !noundef !6 ; 2 uses
  %i.id = icmp ult i64 %i.ic, 2305843009213693952
  call void @llvm.assume(i1 %i.id)
  %.not282.i = icmp eq i64 %i.ic, %i.hw
  br i1 %.not282.i, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.bt
  %i.ie = getelementptr inbounds nuw i8, ptr %i.l, i64 56
  %i.if = load ptr, ptr %i.ie, align 8, !noalias !1859, !nonnull !6, !noundef !6 ; 2 uses
  %.idx = shl nuw nsw i64 %i.hw, 3
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 %.idx
  br label %bb.bv

bb.bu:                                            ; preds = %bb.bw
  %i.ih = getelementptr inbounds nuw i8, ptr %.sroa.0110.0.i219, i64 8 ; 2 uses
  %i.ii = icmp eq ptr %i.ih, %i.ig
  br i1 %i.ii, label %._crit_edge, label %bb.bv

._crit_edge:                                      ; preds = %bb.bu
  %i.ij = getelementptr inbounds nuw i8, ptr %i.l, i64 80
  %i.ik = load ptr, ptr %i.ij, align 8, !noalias !1859, !nonnull !6, !noundef !6 ; 2 uses
  %.idx229 = shl nuw nsw i64 %i.hw, 2
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 %.idx229
  br label %bb.by

bb.bv:                                            ; preds = %.lr.ph, %bb.bu
  %.sroa.0110.0.i219 = phi ptr [ %i.if, %.lr.ph ], [ %i.ih, %bb.bu ] ; 3 uses
  %i.im = load i32, ptr %.sroa.0110.0.i219, align 4, !alias.scope !1891, !noalias !1848, !noundef !6 ; 2 uses
  %.not283.i = icmp eq i32 %i.im, 0
  %i.in = zext i32 %i.im to i64
  %.not284.i = icmp samesign ugt i64 %i.hw, %i.in
  %or.cond1323.i = select i1 %.not283.i, i1 true, i1 %.not284.i
  br i1 %or.cond1323.i, label %bb.bw, label %.loopexit

bb.bw:                                            ; preds = %bb.bv
  %i.io = getelementptr inbounds nuw i8, ptr %.sroa.0110.0.i219, i64 4
  %i.ip = load i32, ptr %i.io, align 4, !alias.scope !1892, !noalias !1848, !noundef !6
  %i.iq = lshr i32 %i.ip, 8                       ; 2 uses
  %.not285.i = icmp eq i32 %i.iq, 0
  %i.ir = add nsw i32 %i.iq, -1
  %i.is = zext nneg i32 %i.ir to i64
  %.not286.i = icmp samesign ugt i64 %i.gf, %i.is
  %or.cond1325.i = select i1 %.not285.i, i1 true, i1 %.not286.i
  br i1 %or.cond1325.i, label %bb.bu, label %.loopexit

bb.bx:                                            ; preds = %bb.by
  %i.it = getelementptr inbounds nuw i8, ptr %.sroa.0116.0.i220, i64 4 ; 2 uses
  %i.iu = icmp eq ptr %i.it, %i.il
  br i1 %i.iu, label %.loopexit.i, label %bb.by

bb.by:                                            ; preds = %._crit_edge, %bb.bx
  %.sroa.0116.0.i220 = phi ptr [ %i.ik, %._crit_edge ], [ %i.it, %bb.bx ] ; 2 uses
  %i.iv = load i32, ptr %.sroa.0116.0.i220, align 4, !noalias !1848, !noundef !6
  %i.iw = zext i32 %i.iv to i64
  %.not287.i = icmp samesign ugt i64 %i.hw, %i.iw
  br i1 %.not287.i, label %bb.bx, label %.loopexit

bb.bz:                                            ; preds = %.lr.ph228
  %i.ix = getelementptr inbounds nuw i8, ptr %.sroa.0691.0.i227, i64 12 ; 2 uses
  %i.iy = add nuw nsw i64 %.sroa.8.0.i226, 1
  %i.iz = icmp eq ptr %i.ix, %i.ht
  br i1 %i.iz, label %_RNvMNtCsc2ZV4bV5Srq_9daachorse8bytewiseINtB2_22DoubleArrayAhoCorasickmE11deserializeCskIqAKC4t9Ft_2yr.exit, label %.lr.ph228

.lr.ph228:                                        ; preds = %.loopexit.i, %bb.bz
  %.sroa.0691.0.i227 = phi ptr [ %i.ix, %bb.bz ], [ %i.hs, %.loopexit.i ] ; 2 uses
  %.sroa.8.0.i226 = phi i64 [ %i.iy, %bb.bz ], [ 0, %.loopexit.i ] ; 2 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %.sroa.0691.0.i227, i64 8
  %i.jb = load i32, ptr %i.ja, align 4, !noalias !1848, !noundef !6 ; 2 uses
  %.not289.i = icmp eq i32 %i.jb, 0
  %i.jc = add i32 %i.jb, -1
  %i.jd = zext i32 %i.jc to i64
  %.not290.i = icmp samesign ugt i64 %.sroa.8.0.i226, %i.jd
  %or.cond1327.i = select i1 %.not289.i, i1 true, i1 %.not290.i
  br i1 %or.cond1327.i, label %bb.bz, label %.loopexit

bb.ca:                                            ; preds = %bb.co, %bb.cn, %bb.cm, %bb.ch
  %i.je = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26, !noalias !1848
  unreachable

bb.cb:                                            ; preds = %bb.bg
  %lpad.thr_comm.split-lp.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.jf = icmp eq ptr %.sroa.10652.0.i, null
  br i1 %i.jf, label %bb.ch, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10652.0.i, i64 noundef 65536, i64 noundef 1) #28, !noalias !1848
  br label %bb.ch

_RNvXs4_Csc2ZV4bV5Srq_9daachorseNtB5_9MatchKindNtNtB5_10serializer12Serializable22deserialize_from_slice.exit.i: ; preds = %_RNvXs3_NtCsc2ZV4bV5Srq_9daachorse10serializerhNtB5_12Serializable22deserialize_from_slice.exit.i.i, %bb.az, %._crit_edge1375.i
  %.sroa.22.3 = phi ptr [ undef, %._crit_edge1375.i ], [ %.sroa.10652.0.ph.i, %_RNvXs3_NtCsc2ZV4bV5Srq_9daachorse10serializerhNtB5_12Serializable22deserialize_from_slice.exit.i.i ], [ undef, %bb.az ]
  %.sroa.27.3 = phi i64 [ undef, %._crit_edge1375.i ], [ %.sroa.24.0.ph.i, %_RNvXs3_NtCsc2ZV4bV5Srq_9daachorse10serializerhNtB5_12Serializable22deserialize_from_slice.exit.i.i ], [ undef, %bb.az ]
  %.sroa.26.3 = phi ptr [ undef, %._crit_edge1375.i ], [ %.sroa.18660.0.ph.i, %_RNvXs3_NtCsc2ZV4bV5Srq_9daachorse10serializerhNtB5_12Serializable22deserialize_from_slice.exit.i.i ], [ undef, %bb.az ]
  %.sroa.25.3 = phi ptr [ undef, %._crit_edge1375.i ], [ %.sroa.17656.0.ph.i, %_RNvXs3_NtCsc2ZV4bV5Srq_9daachorse10serializerhNtB5_12Serializable22deserialize_from_slice.exit.i.i ], [ undef, %bb.az ]
  %.sink1445.i.sroa.phi = phi ptr [ %.sroa.12, %._crit_edge1375.i ], [ %.sroa.29, %_RNvXs3_NtCsc2ZV4bV5Srq_9daachorse10serializerhNtB5_12Serializable22deserialize_from_slice.exit.i.i ], [ %.sroa.12, %bb.az ]
  %.sink.i = phi i64 [ 3, %._crit_edge1375.i ], [ %.sroa.30.0.ph.i, %_RNvXs3_NtCsc2ZV4bV5Srq_9daachorse10serializerhNtB5_12Serializable22deserialize_from_slice.exit.i.i ], [ 3, %bb.az ]
  store i64 %.sink.i, ptr %.sink1445.i.sroa.phi, align 8, !alias.scope !1848
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtCsc2ZV4bV5Srq_9daachorse6OutputmEEECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef align 8 dereferenceable(24) %i.n)
          to label %bb.cd unwind label %bb.at, !noalias !1848

bb.cd:                                            ; preds = %_RNvXs4_Csc2ZV4bV5Srq_9daachorseNtB5_9MatchKindNtNtB5_10serializer12Serializable22deserialize_from_slice.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !1859
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecmEECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef align 8 dereferenceable(24) %i.o)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecmEECskIqAKC4t9Ft_2yr.exit.i unwind label %bb.af, !noalias !1848

.loopexit:                                        ; preds = %bb.bw, %bb.bv, %bb.by, %bb.br, %bb.bq, %bb.bp, %.lr.ph228, %bb.bt, %bb.bs, %bb.bn, %bb.bm, %bb.bl, %bb.bk, %bb.bj
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsc2ZV4bV5Srq_9daachorse8bytewise22DoubleArrayAhoCorasickmEECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef align 8 dereferenceable(144) %i.l), !noalias !1848
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !1859
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !1859
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !1859
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !1859
  br label %bb.ci

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecmEECskIqAKC4t9Ft_2yr.exit.i: ; preds = %bb.cd, %bb.aw
  %.sroa.22.2 = phi ptr [ undef, %bb.aw ], [ %.sroa.22.3, %bb.cd ]
  %.sroa.27.2 = phi i64 [ undef, %bb.aw ], [ %.sroa.27.3, %bb.cd ]
  %.sroa.26.2 = phi ptr [ undef, %bb.aw ], [ %.sroa.26.3, %bb.cd ]
  %.sroa.25.2 = phi ptr [ undef, %bb.aw ], [ %.sroa.25.3, %bb.cd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !1859
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtCsc2ZV4bV5Srq_9daachorse8bytewise5StateNtBK_5EmptyEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %bb.cf unwind label %bb.ce, !noalias !1848

bb.ce:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecmEECskIqAKC4t9Ft_2yr.exit.i
  %i.jg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtCsc2ZV4bV5Srq_9daachorse8bytewise5StateNtBR_5EmptyEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %bb.co unwind label %bb.cg, !noalias !1848

bb.cf:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecmEECskIqAKC4t9Ft_2yr.exit.i
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtCsc2ZV4bV5Srq_9daachorse8bytewise5StateNtBR_5EmptyEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %.thread1316.i unwind label %bb.x, !noalias !1848

bb.cg:                                            ; preds = %bb.ce
  %i.jh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26, !noalias !1848
  unreachable

.thread1316.i:                                    ; preds = %bb.cf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !1859
  br label %bb.cj

bb.ch:                                            ; preds = %bb.cc, %bb.cb, %bb.ay
  %.pn.pn.ph.i = phi { ptr, i32 } [ %i.fj, %bb.ay ], [ %lpad.thr_comm.split-lp.i, %bb.cb ], [ %lpad.thr_comm.split-lp.i, %bb.cc ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtCsc2ZV4bV5Srq_9daachorse6OutputmEEECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef align 8 dereferenceable(24) %i.n) #25
          to label %bb.cm unwind label %bb.ca, !noalias !1848

bb.ci:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtCsc2ZV4bV5Srq_9daachorse8bytewise5StatemEEECskIqAKC4t9Ft_2yr.exit561.i, %.loopexit
  %.sroa.29.0..sroa.29.0..sroa.29.8.copyload.pre.pre = phi i64 [ %.sroa.29.0..sroa.29.0..sroa.29.0..sroa.29.8.copyload.pre.pre.pre, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtCsc2ZV4bV5Srq_9daachorse8bytewise5StatemEEECskIqAKC4t9Ft_2yr.exit561.i ], [ undef, %.loopexit ]
  %.sroa.12.0..sroa.12.0..sroa.12.8.copyload.pre.pre = phi i64 [ %.sroa.12.0..sroa.12.0..sroa.12.0..sroa.12.8.copyload.pre.pre.pre, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtCsc2ZV4bV5Srq_9daachorse8bytewise5StatemEEECskIqAKC4t9Ft_2yr.exit561.i ], [ 3, %.loopexit ]
  %.sroa.22.1 = phi ptr [ %.sroa.22.0, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtCsc2ZV4bV5Srq_9daachorse8bytewise5StatemEEECskIqAKC4t9Ft_2yr.exit561.i ], [ undef, %.loopexit ]
  %.sroa.27.1 = phi i64 [ %.sroa.27.0, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtCsc2ZV4bV5Srq_9daachorse8bytewise5StatemEEECskIqAKC4t9Ft_2yr.exit561.i ], [ undef, %.loopexit ]
  %.sroa.26.1 = phi ptr [ %.sroa.26.0, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtCsc2ZV4bV5Srq_9daachorse8bytewise5StatemEEECskIqAKC4t9Ft_2yr.exit561.i ], [ undef, %.loopexit ]
  %.sroa.25.1 = phi ptr [ %.sroa.25.0, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtCsc2ZV4bV5Srq_9daachorse8bytewise5StatemEEECskIqAKC4t9Ft_2yr.exit561.i ], [ undef, %.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !1859
  br label %_RNvMNtCsc2ZV4bV5Srq_9daachorse8bytewiseINtB2_22DoubleArrayAhoCorasickmE11deserializeCskIqAKC4t9Ft_2yr.exit.thread

bb.cj:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtCsc2ZV4bV5Srq_9daachorse8bytewise5StateNtB1d_5EmptyEEECskIqAKC4t9Ft_2yr.exit549.i, %.thread1316.i, %bb.y
  %.sroa.22.0 = phi ptr [ null, %bb.y ], [ undef, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtCsc2ZV4bV5Srq_9daachorse8bytewise5StateNtB1d_5EmptyEEECskIqAKC4t9Ft_2yr.exit549.i ], [ %.sroa.22.2, %.thread1316.i ]
  %.sroa.27.0 = phi i64 [ undef, %bb.y ], [ undef, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtCsc2ZV4bV5Srq_9daachorse8bytewise5StateNtB1d_5EmptyEEECskIqAKC4t9Ft_2yr.exit549.i ], [ %.sroa.27.2, %.thread1316.i ]
  %.sroa.26.0 = phi ptr [ undef, %bb.y ], [ undef, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtCsc2ZV4bV5Srq_9daachorse8bytewise5StateNtB1d_5EmptyEEECskIqAKC4t9Ft_2yr.exit549.i ], [ %.sroa.26.2, %.thread1316.i ]
  %.sroa.25.0 = phi ptr [ undef, %bb.y ], [ undef, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtCsc2ZV4bV5Srq_9daachorse8bytewise5StateNtB1d_5EmptyEEECskIqAKC4t9Ft_2yr.exit549.i ], [ %.sroa.25.2, %.thread1316.i ]
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtCsc2ZV4bV5Srq_9daachorse8bytewise5StatemEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtCsc2ZV4bV5Srq_9daachorse8bytewise5StatemEEECskIqAKC4t9Ft_2yr.exit561.i unwind label %bb.ck, !noalias !1848

bb.ck:                                            ; preds = %bb.cj
  %i.ji = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtCsc2ZV4bV5Srq_9daachorse8bytewise5StatemEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %common.resume.i unwind label %bb.cl, !noalias !1848

bb.cl:                                            ; preds = %bb.ck
  %i.jj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26, !noalias !1848
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtCsc2ZV4bV5Srq_9daachorse8bytewise5StatemEEECskIqAKC4t9Ft_2yr.exit561.i: ; preds = %bb.cj
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtCsc2ZV4bV5Srq_9daachorse8bytewise5StatemEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q), !noalias !1848
  %.sroa.12.0..sroa.12.0..sroa.12.0..sroa.12.8.copyload.pre.pre.pre = load i64, ptr %.sroa.12, align 8
  %.sroa.29.0..sroa.29.0..sroa.29.0..sroa.29.8.copyload.pre.pre.pre = load i64, ptr %.sroa.29, align 8
  br label %bb.ci

bb.cm:                                            ; preds = %bb.ch, %bb.at, %bb.ao
  %.pn293.ph.i = phi { ptr, i32 } [ %.pn.pn.ph.i, %bb.ch ], [ %i.fe, %bb.at ], [ %i.ev, %bb.ao ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecmEECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef align 8 dereferenceable(24) %i.o) #25
          to label %bb.cn unwind label %bb.ca, !noalias !1848

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtCsc2ZV4bV5Srq_9daachorse8bytewise5StateNtB1d_5EmptyEEECskIqAKC4t9Ft_2yr.exit549.i: ; preds = %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !1859
  br label %bb.cj

bb.cn:                                            ; preds = %bb.cm, %bb.av, %bb.af, %bb.ab
  %.pn295.ph.i = phi { ptr, i32 } [ %.pn293.ph.i, %bb.cm ], [ %i.dm, %bb.ab ], [ %i.dt, %bb.af ], [ %i.ff, %bb.av ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtCsc2ZV4bV5Srq_9daachorse8bytewise5StateNtB1d_5EmptyEEECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef align 8 dereferenceable(24) %i.p) #25
          to label %bb.co unwind label %bb.ca, !noalias !1848

bb.co:                                            ; preds = %bb.cn, %bb.ce, %bb.ah, %bb.x, %bb.r, %bb.q
  %.pn297.ph.i = phi { ptr, i32 } [ %.pn295.ph.i, %bb.cn ], [ %i.cf, %bb.q ], [ %i.cg, %bb.r ], [ %i.du, %bb.ah ], [ %i.cq, %bb.x ], [ %i.jg, %bb.ce ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtCsc2ZV4bV5Srq_9daachorse8bytewise5StatemEEECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef align 8 dereferenceable(24) %i.q) #25
          to label %common.resume.i unwind label %bb.ca, !noalias !1848

_RNvMNtCsc2ZV4bV5Srq_9daachorse8bytewiseINtB2_22DoubleArrayAhoCorasickmE11deserializeCskIqAKC4t9Ft_2yr.exit.thread: ; preds = %bb.c, %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultjNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCskIqAKC4t9Ft_2yr.exit91.i369.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtCsc2ZV4bV5Srq_9daachorse8bytewise5StatemEEECskIqAKC4t9Ft_2yr.exit.i, %bb.ci
  %.sroa.29.0..sroa.29.0..sroa.29.8.copyload.pre = phi i64 [ %.sroa.29.0..sroa.29.0..sroa.29.8.copyload.pre.pre, %bb.ci ], [ undef, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtCsc2ZV4bV5Srq_9daachorse8bytewise5StatemEEECskIqAKC4t9Ft_2yr.exit.i ], [ undef, %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultjNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCskIqAKC4t9Ft_2yr.exit91.i369.i ], [ undef, %bb.c ]
  %.sroa.12.0..sroa.12.0..sroa.12.8.copyload.pre = phi i64 [ %.sroa.12.0..sroa.12.0..sroa.12.8.copyload.pre.pre, %bb.ci ], [ 3, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtCsc2ZV4bV5Srq_9daachorse8bytewise5StatemEEECskIqAKC4t9Ft_2yr.exit.i ], [ 3, %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultjNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCskIqAKC4t9Ft_2yr.exit91.i369.i ], [ 3, %bb.c ]
  %.sroa.22.4.ph = phi ptr [ %.sroa.22.1, %bb.ci ], [ undef, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtCsc2ZV4bV5Srq_9daachorse8bytewise5StatemEEECskIqAKC4t9Ft_2yr.exit.i ], [ undef, %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultjNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCskIqAKC4t9Ft_2yr.exit91.i369.i ], [ undef, %bb.c ]
  %.sroa.27.4.ph = phi i64 [ %.sroa.27.1, %bb.ci ], [ undef, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtCsc2ZV4bV5Srq_9daachorse8bytewise5StatemEEECskIqAKC4t9Ft_2yr.exit.i ], [ undef, %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultjNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCskIqAKC4t9Ft_2yr.exit91.i369.i ], [ undef, %bb.c ]
  %.sroa.26.4.ph = phi ptr [ %.sroa.26.1, %bb.ci ], [ undef, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtCsc2ZV4bV5Srq_9daachorse8bytewise5StatemEEECskIqAKC4t9Ft_2yr.exit.i ], [ undef, %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultjNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCskIqAKC4t9Ft_2yr.exit91.i369.i ], [ undef, %bb.c ]
  %.sroa.25.4.ph = phi ptr [ %.sroa.25.1, %bb.ci ], [ undef, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtCsc2ZV4bV5Srq_9daachorse8bytewise5StatemEEECskIqAKC4t9Ft_2yr.exit.i ], [ undef, %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultjNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCskIqAKC4t9Ft_2yr.exit91.i369.i ], [ undef, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.cp

_RNvMNtCsc2ZV4bV5Srq_9daachorse8bytewiseINtB2_22DoubleArrayAhoCorasickmE11deserializeCskIqAKC4t9Ft_2yr.exit: ; preds = %bb.bz, %.loopexit.i
  %.sroa.0.0.copyload = load i64, ptr %i.l, align 8, !noalias !1849 ; 2 uses
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.12.0.copyload = load i64, ptr %.sroa.12.0..sroa_idx, align 8, !noalias !1849 ; 2 uses
  %.sroa.25.0.copyload = load ptr, ptr %i.ga, align 8, !noalias !1849 ; 2 uses
  %.sroa.26.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %.sroa.26.0.copyload = load ptr, ptr %.sroa.26.0..sroa_idx, align 8, !noalias !1849 ; 2 uses
  %.sroa.27.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %.sroa.27.0.copyload = load i64, ptr %.sroa.27.0..sroa_idx, align 8, !noalias !1849 ; 2 uses
  %.sroa.29.0.copyload = load i64, ptr %i.fx, align 8, !noalias !1849 ; 2 uses
  %.sroa.30.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.30, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.30.0..sroa_idx, i64 88, i1 false), !noalias !1849
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !1859
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !1859
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !1859
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !1859
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !1859
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %i.jk = icmp eq i64 %.sroa.0.0.copyload, -1
  br i1 %i.jk, label %bb.cp, label %bb.cq

bb.cp:                                            ; preds = %_RNvMNtCsc2ZV4bV5Srq_9daachorse8bytewiseINtB2_22DoubleArrayAhoCorasickmE11deserializeCskIqAKC4t9Ft_2yr.exit.thread, %_RNvMNtCsc2ZV4bV5Srq_9daachorse8bytewiseINtB2_22DoubleArrayAhoCorasickmE11deserializeCskIqAKC4t9Ft_2yr.exit
  %.sroa.29.0..sroa.29.0..sroa.29.8.copyload = phi i64 [ %.sroa.29.0..sroa.29.0..sroa.29.8.copyload.pre, %_RNvMNtCsc2ZV4bV5Srq_9daachorse8bytewiseINtB2_22DoubleArrayAhoCorasickmE11deserializeCskIqAKC4t9Ft_2yr.exit.thread ], [ %.sroa.29.0.copyload, %_RNvMNtCsc2ZV4bV5Srq_9daachorse8bytewiseINtB2_22DoubleArrayAhoCorasickmE11deserializeCskIqAKC4t9Ft_2yr.exit ]
  %.sroa.12.0..sroa.12.0..sroa.12.8.copyload = phi i64 [ %.sroa.12.0..sroa.12.0..sroa.12.8.copyload.pre, %_RNvMNtCsc2ZV4bV5Srq_9daachorse8bytewiseINtB2_22DoubleArrayAhoCorasickmE11deserializeCskIqAKC4t9Ft_2yr.exit.thread ], [ %.sroa.12.0.copyload, %_RNvMNtCsc2ZV4bV5Srq_9daachorse8bytewiseINtB2_22DoubleArrayAhoCorasickmE11deserializeCskIqAKC4t9Ft_2yr.exit ]
  %.sroa.25.4111 = phi ptr [ %.sroa.25.4.ph, %_RNvMNtCsc2ZV4bV5Srq_9daachorse8bytewiseINtB2_22DoubleArrayAhoCorasickmE11deserializeCskIqAKC4t9Ft_2yr.exit.thread ], [ %.sroa.25.0.copyload, %_RNvMNtCsc2ZV4bV5Srq_9daachorse8bytewiseINtB2_22DoubleArrayAhoCorasickmE11deserializeCskIqAKC4t9Ft_2yr.exit ]
  %.sroa.26.4110 = phi ptr [ %.sroa.26.4.ph, %_RNvMNtCsc2ZV4bV5Srq_9daachorse8bytewiseINtB2_22DoubleArrayAhoCorasickmE11deserializeCskIqAKC4t9Ft_2yr.exit.thread ], [ %.sroa.26.0.copyload, %_RNvMNtCsc2ZV4bV5Srq_9daachorse8bytewiseINtB2_22DoubleArrayAhoCorasickmE11deserializeCskIqAKC4t9Ft_2yr.exit ]
  %.sroa.27.4109 = phi i64 [ %.sroa.27.4.ph, %_RNvMNtCsc2ZV4bV5Srq_9daachorse8bytewiseINtB2_22DoubleArrayAhoCorasickmE11deserializeCskIqAKC4t9Ft_2yr.exit.thread ], [ %.sroa.27.0.copyload, %_RNvMNtCsc2ZV4bV5Srq_9daachorse8bytewiseINtB2_22DoubleArrayAhoCorasickmE11deserializeCskIqAKC4t9Ft_2yr.exit ]
  %.sroa.22.4108 = phi ptr [ %.sroa.22.4.ph, %_RNvMNtCsc2ZV4bV5Srq_9daachorse8bytewiseINtB2_22DoubleArrayAhoCorasickmE11deserializeCskIqAKC4t9Ft_2yr.exit.thread ], [ %.sroa.22.0.copyload, %_RNvMNtCsc2ZV4bV5Srq_9daachorse8bytewiseINtB2_22DoubleArrayAhoCorasickmE11deserializeCskIqAKC4t9Ft_2yr.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  store i64 %.sroa.12.0..sroa.12.0..sroa.12.8.copyload, ptr %i.r, align 8
  %.sroa.473.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr %.sroa.22.4108, ptr %.sroa.473.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store ptr %.sroa.25.4111, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.674.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  store ptr %.sroa.26.4110, ptr %.sroa.674.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  store i64 %.sroa.27.4109, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  store i64 %.sroa.29.0..sroa.29.0..sroa.29.8.copyload, ptr %.sroa.8.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1893
  store ptr %i.r, ptr %i.a, align 8, !noalias !1893
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXNtCsc2ZV4bV5Srq_9daachorse6errorsNtB2_14DaachorseErrorNtNtCskKLDkoKarTP_4core3fmt7Display3fmt, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !1893
  call void @_RNvNvNtCsexYYUdYSQU6_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noundef nonnull @103, ptr noundef nonnull %i.a), !noalias !1894
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1893
  call void @_RINvXNtNtCslcwApyVHiOd_7bincode8features5serdeNtNtB7_5error11DecodeErrorNtNtCsaeRQ2XwCvzm_10serde_core2de5Error6customNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.s, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  %.sroa.621.sroa.0.0.copyload = load i64, ptr %i.s, align 8
  %.sroa.621.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.sroa.621.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %.sroa.621.sroa.9.0.copyload = load ptr, ptr %.sroa.621.sroa.9.0..sroa_idx, align 8
  %i.jl = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.499.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.jm = load <2 x ptr>, ptr %.sroa.621.sroa.7.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.29)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.30)
  store i64 %.sroa.621.sroa.0.0.copyload, ptr %i.jl, align 8
  store <2 x ptr> %i.jm, ptr %.sroa.499.0..sroa_idx, align 8
  %.sroa.6101.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.sroa.621.sroa.9.0.copyload, ptr %.sroa.6101.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.cr

bb.cq:                                            ; preds = %_RNvMNtCsc2ZV4bV5Srq_9daachorse8bytewiseINtB2_22DoubleArrayAhoCorasickmE11deserializeCskIqAKC4t9Ft_2yr.exit
  %.sroa.027.sroa.5.sroa.5.0..sroa.027.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.027.sroa.5.sroa.5.0..sroa.027.sroa.5.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.30, i64 88, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.29)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.30)
  store i64 %.sroa.0.0.copyload, ptr %0, align 8
  %.sroa.027.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.12.0.copyload, ptr %.sroa.027.sroa.4.0..sroa_idx, align 8
  %.sroa.027.sroa.4.sroa.4.0..sroa.027.sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.22.0.copyload, ptr %.sroa.027.sroa.4.sroa.4.0..sroa.027.sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.027.sroa.4.sroa.5.0..sroa.027.sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sroa.25.0.copyload, ptr %.sroa.027.sroa.4.sroa.5.0..sroa.027.sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.027.sroa.4.sroa.6.0..sroa.027.sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.sroa.26.0.copyload, ptr %.sroa.027.sroa.4.sroa.6.0..sroa.027.sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.027.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.27.0.copyload, ptr %.sroa.027.sroa.5.0..sroa_idx, align 8
  %.sroa.027.sroa.5.sroa.4.0..sroa.027.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %.sroa.29.0.copyload, ptr %.sroa.027.sroa.5.sroa.4.0..sroa.027.sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.428.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 144
  store ptr null, ptr %.sroa.428.0..sroa_idx, align 8
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cq, %bb.cp, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs_NtNtCsaeRQ2XwCvzm_10serde_core2de5implsuNtB7_11Deserialize11deserializeNtNtNtCsgTIQnf6SZNZ_7figment5value2de17ConfiguredValueDeECskIqAKC4t9Ft_2yr(ptr dead_on_unwind noalias nofree noundef writable sret([208 x i8]) align 16 captures(address) dereferenceable(208) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  tail call void @_RINvXs1_NtNtCsgTIQnf6SZNZ_7figment5value2deNtB6_17ConfiguredValueDeNtNtCsaeRQ2XwCvzm_10serde_core2de12Deserializer15deserialize_anyNtNtB15_5impls11UnitVisitorECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull sret([208 x i8]) align 16 captures(address) dereferenceable(208) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs_NvXsE_NtNtCsaeRQ2XwCvzm_10serde_core2de5implsINtNtNtCskKLDkoKarTP_4core3ops5range5BoundpENtBd_11Deserialize11deserializeINtB5_12BoundVisitorxENtBd_7Visitor10visit_enumINtNtNtNtCslcwApyVHiOd_7bincode8features5serde11de_borrowed12SerdeDecoderINtNtNtB2V_2de7decoder11DecoderImplNtNtB42_4read11SliceReaderNtNtB2V_6config13ConfigurationuEEECskIqAKC4t9Ft_2yr(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 6 uses
  %i.c = alloca [32 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RINvXs1_NtNtNtCslcwApyVHiOd_7bincode8features5serde11de_borrowedINtB6_12SerdeDecoderINtNtNtBc_2de7decoder11DecoderImplNtNtB1p_4read11SliceReaderNtNtBc_6config13ConfigurationuEENtNtCsaeRQ2XwCvzm_10serde_core2de10EnumAccess12variant_seedINtNtCskKLDkoKarTP_4core6marker11PhantomDataNtNvXsE_NtB2Q_5implsINtNtNtB3Q_3ops5range5BoundpENtB2Q_11Deserialize11deserialize5FieldEECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  %i.d = load i8, ptr %i.c, align 8, !range !24, !noundef !6
  %.not = icmp eq i8 %i.d, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false)
  br label %bb.m

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.f = load i8, ptr %i.e, align 8, !range !22, !noundef !6
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !6, !align !15, !noundef !6 ; 2 uses
  switch i8 %i.f, label %default.unreachable5 [
    i8 0, label %bb.f
    i8 1, label %bb.d
    i8 2, label %bb.e
  ]

default.unreachable5:                             ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RINvXs2_NtNtNtCslcwApyVHiOd_7bincode8features5serde11de_borrowedINtB6_12SerdeDecoderINtNtNtBc_2de7decoder11DecoderImplNtNtB1p_4read11SliceReaderNtNtBc_6config13ConfigurationuEENtNtCsaeRQ2XwCvzm_10serde_core2de13VariantAccess20newtype_variant_seedINtNtCskKLDkoKarTP_4core6marker11PhantomDataxEECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
  %i.i = load i8, ptr %i.b, align 8, !range !24, !noundef !6
  %.not2 = icmp eq i8 %i.i, -1
  br i1 %.not2, label %bb.h, label %bb.g

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RINvXs2_NtNtNtCslcwApyVHiOd_7bincode8features5serde11de_borrowedINtB6_12SerdeDecoderINtNtNtBc_2de7decoder11DecoderImplNtNtB1p_4read11SliceReaderNtNtBc_6config13ConfigurationuEENtNtCsaeRQ2XwCvzm_10serde_core2de13VariantAccess20newtype_variant_seedINtNtCskKLDkoKarTP_4core6marker11PhantomDataxEECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
  %i.j = load i8, ptr %i.a, align 8, !range !24, !noundef !6
  %.not1 = icmp eq i8 %i.j, -1
  br i1 %.not1, label %bb.k, label %bb.j

bb.f:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 2, ptr %i.k, align 8
  store i8 -1, ptr %0, align 8
  br label %bb.m

bb.g:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false)
  br label %bb.i

bb.h:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.m = load i64, ptr %i.l, align 8, !noundef !6
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.m, ptr %i.o, align 8
  store i8 -1, ptr %0, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.m

bb.j:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  br label %bb.l

bb.k:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.q = load i64, ptr %i.p, align 8, !noundef !6
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.q, ptr %i.s, align 8
  store i8 -1, ptr %0, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.m

bb.m:                                             ; preds = %bb.f, %bb.i, %bb.l, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXsa_NtNtCsaeRQ2XwCvzm_10serde_core2de5implsRShNtB8_11Deserialize11deserializeINtNtNtNtCslcwApyVHiOd_7bincode8features5serde11de_borrowed12SerdeDecoderINtNtNtB1q_2de7decoder11DecoderImplNtNtB2x_4read11SliceReaderNtNtB1q_6config13ConfigurationuEEECskIqAKC4t9Ft_2yr(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  tail call void @_RINvXs0_NtNtNtCslcwApyVHiOd_7bincode8features5serde11de_borrowedINtB6_12SerdeDecoderINtNtNtBc_2de7decoder11DecoderImplNtNtB1p_4read11SliceReaderNtNtBc_6config13ConfigurationuEENtNtCsaeRQ2XwCvzm_10serde_core2de12Deserializer17deserialize_bytesNtNtB2Q_5impls12BytesVisitorECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXsl_Cs6ObhOmryMwL_8smallvecINtB6_8SmallVecAhj4_ENtNtCsaeRQ2XwCvzm_10serde_core3ser9Serialize9serializeINtNtNtNtCslcwApyVHiOd_7bincode8features5serde3ser12SerdeEncoderINtNtNtB1P_3enc7encoder11EncoderImplINtNtB1N_8impl_std8IoWriterINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterRNtNtCsG258MDvU3F_3std2fs4FileEENtNtB1P_6config13ConfigurationEEECskIqAKC4t9Ft_2yr(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noalias nofree noundef align 8 dereferenceable(16) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = alloca [32 x i8], align 8                ; 7 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !1899, !noundef !6 ; 2 uses
  %i.g = icmp ugt i64 %i.f, 4                     ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !alias.scope !1899, !nonnull !6
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !1899
  %.sink10.i = select i1 %i.g, i64 %i.j, i64 %i.f ; 3 uses
  call void @_RNvXNtNtNtCslcwApyVHiOd_7bincode8features5serde3serINtB2_12SerdeEncoderINtNtNtB8_3enc7encoder11EncoderImplINtNtB6_8impl_std8IoWriterINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterRNtNtCsG258MDvU3F_3std2fs4FileEENtNtB8_6config13ConfigurationEENtNtCsaeRQ2XwCvzm_10serde_core3ser10Serializer13serialize_seqCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %2, i64 noundef 1, i64 %.sink10.i)
  %i.k = load i64, ptr %i.c, align 8, !range !8, !noundef !6 ; 2 uses
  %.not = icmp eq i64 %i.k, -1
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.m = load ptr, ptr %i.l, align 8              ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.514.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.517.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.517.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.514.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store i64 %i.k, ptr %0, align 8
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.m, ptr %.sroa.416.0..sroa_idx, align 8
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store ptr %i.m, ptr %i.d, align 8
  %.sink11.i.i = select i1 %i.g, ptr %i.h, ptr %1 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.sink11.i.i, i64 %.sink10.i
  %i.o = icmp samesign eq i64 %.sink10.i, 0
  br i1 %i.o, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %bb.e
  %.sroa.018.021 = phi ptr [ %i.q, %bb.e ], [ %.sink11.i.i, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %.sroa.018.021, ptr %i.b, align 8, !captures !1900
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RINvXs_NtNtNtCslcwApyVHiOd_7bincode8features5serde3serINtB5_12SerdeEncoderINtNtNtBb_3enc7encoder11EncoderImplINtNtB9_8impl_std8IoWriterINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterRNtNtCsG258MDvU3F_3std2fs4FileEENtNtBb_6config13ConfigurationEENtNtCsaeRQ2XwCvzm_10serde_core3ser12SerializeSeq17serialize_elementRhECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b)
  %i.p = load i64, ptr %i.a, align 8, !range !8, !noundef !6
  %.not19 = icmp eq i64 %i.p, -1
  br i1 %.not19, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.f

bb.e:                                             ; preds = %.lr.ph
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.018.021, i64 1 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.r = icmp eq ptr %i.q, %i.n
  br i1 %i.r, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.e, %bb.c
  store i64 -1, ptr %0, align 8, !alias.scope !1901
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.d, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXsm_Cs6ObhOmryMwL_8smallvecINtB6_8SmallVecAhj4_ENtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeINtNtNtNtCslcwApyVHiOd_7bincode8features5serde11de_borrowed12SerdeDecoderINtNtNtB1U_2de7decoder11DecoderImplNtNtB31_4read11SliceReaderNtNtB1U_6config13ConfigurationuEEECskIqAKC4t9Ft_2yr(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  tail call void @_RINvXs0_NtNtNtCslcwApyVHiOd_7bincode8features5serde11de_borrowedINtB6_12SerdeDecoderINtNtNtBc_2de7decoder11DecoderImplNtNtB1p_4read11SliceReaderNtNtBc_6config13ConfigurationuEENtNtCsaeRQ2XwCvzm_10serde_core2de12Deserializer15deserialize_seqINtCs6ObhOmryMwL_8smallvec15SmallVecVisitorAhj4_EECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret void
}
end_hunk_0
