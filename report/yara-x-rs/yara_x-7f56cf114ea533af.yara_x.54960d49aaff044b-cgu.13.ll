Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yara-x-rs/original/yara_x-7f56cf114ea533af.yara_x.54960d49aaff044b-cgu.13?download=true
inline.NumInlined: 4254
inline.NumDeleted: 1726
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 17
begin_hunk_0_@_RNvNtNtCs7gfv9tzbXmh_6yara_x7scanner7context24handle_sub_pattern_match:bb.a
  br i1 %i.bw, label %_RNvNtNtCs7gfv9tzbXmh_6yara_x7scanner7context21within_valid_distance.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapNtNtCs7gfv9tzbXmh_6yara_x8compiler12SubPatternIdINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtBS_7scanner7matches16UnconfirmedMatchENtCsaO0k6qjB80f_10rustc_hash13FxBuildHasherE3getBO_EBS_.exit.i
  %i.bx = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.by = load i8, ptr %i.bx, align 4, !range !5198, !alias.scope !6256, !noalias !6253, !noundef !27
  %i.bz = icmp eq i8 %i.by, 2
  %i.ca = load i32, ptr %i.ai, align 4, !alias.scope !6256, !noalias !6253
  %i.cb = zext i32 %i.ca to i64                   ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  %i.cd = load i32, ptr %i.cc, align 4, !alias.scope !6256, !noalias !6253
  %i.ce = zext i32 %i.cd to i64
  br i1 %i.bz, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i, %_RINvYINtNtNtCskKLDkoKarTP_4core3ops5range14RangeInclusivejEINtB6_11RangeBoundsjE8containsjECs7gfv9tzbXmh_6yara_x.exit.thread.us.i
  %.sroa.03.019.us.i = phi ptr [ %i.ch, %_RINvYINtNtNtCskKLDkoKarTP_4core3ops5range14RangeInclusivejEINtB6_11RangeBoundsjE8containsjECs7gfv9tzbXmh_6yara_x.exit.thread.us.i ], [ %i.bs, %.lr.ph.i ] ; 2 uses
  %i.cf = load i64, ptr %.sroa.03.019.us.i, align 8, !noalias !6256, !noundef !27
  %i.cg = add i64 %i.cf, %i.cb
  %.not.us.not.i = icmp ugt i64 %i.cg, %i.al
  br i1 %.not.us.not.i, label %_RINvYINtNtNtCskKLDkoKarTP_4core3ops5range14RangeInclusivejEINtB6_11RangeBoundsjE8containsjECs7gfv9tzbXmh_6yara_x.exit.thread.us.i, label %.loopexit

_RINvYINtNtNtCskKLDkoKarTP_4core3ops5range14RangeInclusivejEINtB6_11RangeBoundsjE8containsjECs7gfv9tzbXmh_6yara_x.exit.thread.us.i: ; preds = %.lr.ph.split.us.i
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.03.019.us.i, i64 24 ; 2 uses
  %i.ci = icmp eq ptr %i.ch, %i.bv
  br i1 %i.ci, label %_RNvNtNtCs7gfv9tzbXmh_6yara_x7scanner7context21within_valid_distance.exit.thread, label %.lr.ph.split.us.i

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %_RINvYINtNtNtCskKLDkoKarTP_4core3ops5range14RangeInclusivejEINtB6_11RangeBoundsjE8containsjECs7gfv9tzbXmh_6yara_x.exit.thread.i
  %.sroa.03.019.i = phi ptr [ %i.co, %_RINvYINtNtNtCskKLDkoKarTP_4core3ops5range14RangeInclusivejEINtB6_11RangeBoundsjE8containsjECs7gfv9tzbXmh_6yara_x.exit.thread.i ], [ %i.bs, %.lr.ph.i ] ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.03.019.i, i64 8
  %i.ck = load i64, ptr %i.cj, align 8, !noalias !6256, !noundef !27 ; 2 uses
  %i.cl = add i64 %i.ck, %i.cb
  %i.cm = add i64 %i.ck, %i.ce
  %.not.i6.i = icmp ule i64 %i.cl, %i.al
  %i.cn = icmp ule i64 %i.al, %i.cm
  %or.cond.i = and i1 %.not.i6.i, %i.cn
  br i1 %or.cond.i, label %.loopexit, label %_RINvYINtNtNtCskKLDkoKarTP_4core3ops5range14RangeInclusivejEINtB6_11RangeBoundsjE8containsjECs7gfv9tzbXmh_6yara_x.exit.thread.i

_RINvYINtNtNtCskKLDkoKarTP_4core3ops5range14RangeInclusivejEINtB6_11RangeBoundsjE8containsjECs7gfv9tzbXmh_6yara_x.exit.thread.i: ; preds = %.lr.ph.split.i
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.03.019.i, i64 24 ; 2 uses
  %i.cp = icmp eq ptr %i.co, %i.bv
  br i1 %i.cp, label %_RNvNtNtCs7gfv9tzbXmh_6yara_x7scanner7context21within_valid_distance.exit.thread, label %.lr.ph.split.i

_RNvNtNtCs7gfv9tzbXmh_6yara_x7scanner7context21within_valid_distance.exit.thread: ; preds = %._crit_edge.i.i.i, %_RINvYINtNtNtCskKLDkoKarTP_4core3ops5range14RangeInclusivejEINtB6_11RangeBoundsjE8containsjECs7gfv9tzbXmh_6yara_x.exit.thread.i, %_RINvYINtNtNtCskKLDkoKarTP_4core3ops5range14RangeInclusivejEINtB6_11RangeBoundsjE8containsjECs7gfv9tzbXmh_6yara_x.exit.thread.us.i, %bb.i, %_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapNtNtCs7gfv9tzbXmh_6yara_x8compiler12SubPatternIdINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtBS_7scanner7matches16UnconfirmedMatchENtCsaO0k6qjB80f_10rustc_hash13FxBuildHasherE3getBO_EBS_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.n

bb.n:                                             ; preds = %_RNvNtNtCs7gfv9tzbXmh_6yara_x7scanner7context21within_valid_distance.exit.thread, %_RNvNtNtCs7gfv9tzbXmh_6yara_x7scanner7context23verify_chain_of_matches.exit, %_RNvNtNtCs7gfv9tzbXmh_6yara_x7scanner7context23track_unconfirmed_match.exit13, %bb.g, %_RNvNtNtCs7gfv9tzbXmh_6yara_x7scanner7context23track_unconfirmed_match.exit, %bb.b
  ret void

.loopexit:                                        ; preds = %.lr.ph.split.i, %.lr.ph.split.us.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %.sroa.02.0 = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.cq = load i16, ptr %.sroa.02.0, align 2, !noundef !27
  %i.cr = and i16 %i.cq, 4
  %.not = icmp eq i16 %i.cr, 0
  br i1 %.not, label %bb.o, label %bb.s

bb.o:                                             ; preds = %.loopexit
  %i.cs = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ct = load i64, ptr %i.cs, align 8, !noundef !27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !6280
  call void @_RNvMNtCsjqcU1oJFKXj_9hashbrown11rustc_entryINtNtB4_3map7HashMapNtNtCs7gfv9tzbXmh_6yara_x8compiler12SubPatternIdINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtB13_7scanner7matches16UnconfirmedMatchENtCsaO0k6qjB80f_10rustc_hash13FxBuildHasherE11rustc_entryB13_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ap, i32 noundef %2), !noalias !6284
  %i.cu = load ptr, ptr %i.h, align 8, !noalias !6280, !noundef !27 ; 2 uses
  %.not.i3 = icmp eq ptr %i.cu, null
  %i.cv = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  br i1 %.not.i3, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %.sroa.44.0.copyload.i4 = load i64, ptr %i.cv, align 8, !noalias !6280
  %.sroa.55.0..sroa_idx.i5 = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.55.0.copyload.i6 = load ptr, ptr %.sroa.55.0..sroa_idx.i5, align 8, !noalias !6280
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !6280
  %i.cw = ptrtoint ptr %.sroa.55.0.copyload.i6 to i64
  %.sroa.8.16.extract.trunc.i7 = trunc i64 %i.cw to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !6285
  store i32 %.sroa.8.16.extract.trunc.i7, ptr %i.g, align 8, !noalias !6285
  %i.cx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 0, ptr %i.cx, align 8, !noalias !6285
  %.sroa.4.0..sroa_idx.i.i8 = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx.i.i8, align 8, !noalias !6285
  %.sroa.5.0..sroa_idx.i.i9 = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i9, align 8, !noalias !6285
  %i.cy = call noundef nonnull ptr @_RNvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCs7gfv9tzbXmh_6yara_x8compiler12SubPatternIdINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtBT_7scanner7matches16UnconfirmedMatchEEE14insert_no_growBT_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.cu, i64 noundef %.sroa.44.0.copyload.i4, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.g), !noalias !6288
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !6285
  br label %_RNvMs19_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB6_5EntryNtNtCs7gfv9tzbXmh_6yara_x8compiler12SubPatternIdINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtB15_7scanner7matches16UnconfirmedMatchEE10or_defaultB15_.exit.i10

bb.q:                                             ; preds = %bb.o
  %i.cz = load ptr, ptr %i.cv, align 8, !noalias !6280, !nonnull !27, !noundef !27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !6280
  br label %_RNvMs19_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB6_5EntryNtNtCs7gfv9tzbXmh_6yara_x8compiler12SubPatternIdINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtB15_7scanner7matches16UnconfirmedMatchEE10or_defaultB15_.exit.i10

_RNvMs19_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB6_5EntryNtNtCs7gfv9tzbXmh_6yara_x8compiler12SubPatternIdINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtB15_7scanner7matches16UnconfirmedMatchEE10or_defaultB15_.exit.i10: ; preds = %bb.q, %bb.p
  %.pn.i.i11 = phi ptr [ %i.cy, %bb.p ], [ %i.cz, %bb.q ] ; 3 uses
  %.sroa.0.0.i.i12 = getelementptr inbounds i8, ptr %.pn.i.i11, i64 -24 ; 2 uses
  %i.da = getelementptr inbounds i8, ptr %.pn.i.i11, i64 -8 ; 2 uses
  %i.db = load i64, ptr %i.da, align 8, !alias.scope !6289, !noalias !6292, !noundef !27 ; 3 uses
  %i.dc = load i64, ptr %.sroa.0.0.i.i12, align 8, !range !47, !alias.scope !6289, !noalias !6292, !noundef !27
  %i.dd = icmp eq i64 %i.db, %i.dc
  br i1 %i.dd, label %bb.r, label %_RNvNtNtCs7gfv9tzbXmh_6yara_x7scanner7context23track_unconfirmed_match.exit13

bb.r:                                             ; preds = %_RNvMs19_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB6_5EntryNtNtCs7gfv9tzbXmh_6yara_x8compiler12SubPatternIdINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtB15_7scanner7matches16UnconfirmedMatchEE10or_defaultB15_.exit.i10
  call void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs7gfv9tzbXmh_6yara_x7scanner7matches16UnconfirmedMatchE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.i.i12) #38, !noalias !6292
  br label %_RNvNtNtCs7gfv9tzbXmh_6yara_x7scanner7context23track_unconfirmed_match.exit13

_RNvNtNtCs7gfv9tzbXmh_6yara_x7scanner7context23track_unconfirmed_match.exit13: ; preds = %_RNvMs19_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB6_5EntryNtNtCs7gfv9tzbXmh_6yara_x8compiler12SubPatternIdINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtB15_7scanner7matches16UnconfirmedMatchEE10or_defaultB15_.exit.i10, %bb.r
  %i.de = getelementptr inbounds i8, ptr %.pn.i.i11, i64 -16
  %i.df = load ptr, ptr %i.de, align 8, !alias.scope !6289, !noalias !6292, !nonnull !27, !noundef !27
  %i.dg = getelementptr inbounds nuw [24 x i8], ptr %i.df, i64 %i.db ; 3 uses
  store i64 %i.al, ptr %i.dg, align 8
  %.sroa.419.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  store i64 %i.ct, ptr %.sroa.419.0..sroa_idx, align 8
  %.sroa.520.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  store i64 0, ptr %.sroa.520.0..sroa_idx, align 8
  %i.dh = add i64 %i.db, 1
  store i64 %i.dh, ptr %i.da, align 8, !alias.scope !6289, !noalias !6292
  br label %bb.n

bb.s:                                             ; preds = %.loopexit
  call void @llvm.experimental.noalias.scope.decl(metadata !6294)
  call void @llvm.experimental.noalias.scope.decl(metadata !6297)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !6299
  %i.di = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 0, ptr %i.f, align 8, !noalias !6299
  %i.dj = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.di, i8 0, i64 16, i1 false), !noalias !6299
  store ptr inttoptr (i64 8 to ptr), ptr %i.dj, align 8, !noalias !6299
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !6299
  %i.dk = getelementptr inbounds nuw i8, ptr %5, i64 16
  %.val35.i = load i64, ptr %i.dk, align 8, !alias.scope !6301, !noalias !6304, !noundef !27 ; 2 uses
  store i32 %2, ptr %i.e, align 8, !noalias !6299
  %i.dl = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %i.al, ptr %i.dl, align 8, !noalias !6299
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %.val35.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !6299
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i64 1, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !6299
  %i.dm = invoke noundef nonnull align 8 ptr @_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeTNtNtCs7gfv9tzbXmh_6yara_x8compiler12SubPatternIdNtNtNtB1a_7scanner7matches16UnconfirmedMatchEE13push_back_mutB1a_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.e)
          to label %bb.t unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, !noalias !6299 ; 0 uses

.loopexit45.i:                                    ; preds = %.lr.ph67.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.i:                    ; preds = %bb.ap
  %lpad.loopexit46.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.i: ; preds = %bb.ad, %bb.u
  %lpad.loopexit51.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.i: ; preds = %bb.ac
  %lpad.loopexit.split-lp52.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i: ; preds = %bb.aa, %bb.s
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.i:                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.i, %.loopexit.split-lp.loopexit.i, %.loopexit45.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit45.i ], [ %lpad.loopexit46.i, %.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i ], [ %lpad.loopexit51.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.i ], [ %lpad.loopexit.split-lp52.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.i ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque8VecDequeTNtNtCs7gfv9tzbXmh_6yara_x8compiler12SubPatternIdNtNtNtB1D_7scanner7matches16UnconfirmedMatchEEEB1D_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.f) #43
          to label %common.resume.i unwind label %bb.at, !noalias !6305

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !6299
  %i.dn = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.do = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.736.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.421.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.522.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.dr = load i64, ptr %5, align 8, !alias.scope !6297, !noalias !6304
  %i.ds = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.dt = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.du = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  br label %.outer.i

.outer.i:                                         ; preds = %.loopexit.i, %bb.t
  %.sroa.324.0.ph.i = phi i32 [ %.sroa.324.1.i, %.loopexit.i ], [ undef, %bb.t ] ; 4 uses
  %.sroa.023.0.ph.i = phi i1 [ %.sroa.023.1.i, %.loopexit.i ], [ false, %bb.t ] ; 2 uses
  br label %bb.u

bb.u:                                             ; preds = %bb.al, %.outer.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !6299
  invoke void @_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeTNtNtCs7gfv9tzbXmh_6yara_x8compiler12SubPatternIdNtNtNtB1a_7scanner7matches16UnconfirmedMatchEE9pop_frontB1a_(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.f)
          to label %bb.v unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.i, !noalias !6305

bb.v:                                             ; preds = %bb.u
  %i.dv = load i64, ptr %i.d, align 8, !range !2084, !noalias !6299, !noundef !27
  %i.dw = trunc nuw i64 %i.dv to i1
  br i1 %i.dw, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.dx = load i32, ptr %i.dn, align 8, !noalias !6299, !noundef !27
  %.sroa.0.0.copyload.i = load i64, ptr %i.do, align 8, !noalias !6299 ; 3 uses
  %.sroa.736.0.copyload.i = load i64, ptr %.sroa.736.0..sroa_idx.i, align 8, !noalias !6299 ; 2 uses
  %i.dy = load ptr, ptr %i.dp, align 8, !alias.scope !6294, !noalias !6305, !nonnull !27, !align !287, !noundef !27 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 272
  %i.ea = load ptr, ptr %i.dz, align 8, !noalias !6305, !nonnull !27, !noundef !27
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dy, i64 280
  %i.ec = load i64, ptr %i.eb, align 8, !noalias !6305, !noundef !27
  %i.ed = zext i32 %i.dx to i64                   ; 2 uses
  %i.ee = icmp ugt i64 %i.ec, %i.ed
  call void @llvm.assume(i1 %i.ee)
  %i.ef = getelementptr inbounds nuw [32 x i8], ptr %i.ea, i64 %i.ed ; 5 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  %i.eh = load i8, ptr %i.eg, align 8, !range !4161, !noalias !6305, !noundef !27
  switch i8 %i.eh, label %bb.aa [
    i8 2, label %bb.ac
    i8 3, label %bb.ad
    i8 5, label %bb.ac
    i8 6, label %bb.ab
  ], !prof !2891

bb.x:                                             ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !6299
  invoke void @_RNvXs0_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeTNtNtCs7gfv9tzbXmh_6yara_x8compiler12SubPatternIdNtNtNtB1a_7scanner7matches16UnconfirmedMatchEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB1a_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.f)
          to label %_RNvNtNtCs7gfv9tzbXmh_6yara_x7scanner7context23verify_chain_of_matches.exit unwind label %bb.y, !noalias !6305

bb.y:                                             ; preds = %bb.x
  %i.ei = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTNtNtCs7gfv9tzbXmh_6yara_x8compiler12SubPatternIdNtNtNtBR_7scanner7matches16UnconfirmedMatchEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBR_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.f)
          to label %common.resume.i unwind label %bb.z, !noalias !6305

bb.z:                                             ; preds = %bb.y
  %i.ej = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #42, !noalias !6305
  unreachable

common.resume.i:                                  ; preds = %bb.y, %.loopexit.split-lp.i
  %common.resume.op.i = phi { ptr, i32 } [ %i.ei, %bb.y ], [ %lpad.phi.i, %.loopexit.split-lp.i ]
  resume { ptr, i32 } %common.resume.op.i

bb.aa:                                            ; preds = %bb.w
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @442) #40
          to label %bb.as unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, !noalias !6305

bb.ab:                                            ; preds = %bb.w
  br label %bb.ad

bb.ac:                                            ; preds = %bb.w, %bb.w
  %.sroa.01.0.i = getelementptr inbounds nuw i8, ptr %i.ef, i64 10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !6299
  store i64 %i.dr, ptr %i.c, align 8, !noalias !6299
  store i64 %.sroa.0.0.copyload.i, ptr %i.ds, align 8, !noalias !6299
  store i64 %.val35.i, ptr %i.dt, align 8, !noalias !6299
  store i8 0, ptr %i.du, align 8, !noalias !6299
  %i.ek = load i16, ptr %.sroa.01.0.i, align 2, !noalias !6305, !noundef !27
  %i.el = and i16 %i.ek, 32
  %i.em = icmp ne i16 %i.el, 0
  invoke fastcc void @_RNvNtNtCs7gfv9tzbXmh_6yara_x7scanner7context11track_match(ptr noalias nofree noundef nonnull align 8 dereferenceable(128) %0, ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(160) %1, i32 noundef %4, ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %i.c, i1 noundef zeroext %i.em)
          to label %bb.ae unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.i, !noalias !6297

bb.ad:                                            ; preds = %bb.ab, %bb.w
  %.sink88.i = phi i64 [ 12, %bb.ab ], [ 16, %bb.w ]
  %.sink.i = phi i64 [ 16, %bb.ab ], [ 20, %bb.w ]
  %i.en = getelementptr inbounds nuw i8, ptr %i.ef, i64 %.sink88.i ; 3 uses
  %i.eo = invoke noundef align 8 ptr @_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapNtNtCs7gfv9tzbXmh_6yara_x8compiler12SubPatternIdINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtBS_7scanner7matches16UnconfirmedMatchENtCsaO0k6qjB80f_10rustc_hash13FxBuildHasherE7get_mutBO_EBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ap, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.en)
          to label %bb.aj unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.i, !noalias !6305 ; 3 uses

bb.ae:                                            ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !6299
  br i1 %.sroa.023.0.ph.i, label %.lr.ph67.i, label %.loopexit.i

.lr.ph67.i:                                       ; preds = %bb.ae, %bb.ai
  %.sroa.45.065.i = phi i32 [ %i.fx, %bb.ai ], [ %.sroa.324.0.ph.i, %bb.ae ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !6299
  store i32 %.sroa.45.065.i, ptr %i.b, align 4, !noalias !6299
  %i.ep = invoke noundef align 8 ptr @_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapNtNtCs7gfv9tzbXmh_6yara_x8compiler12SubPatternIdINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtBS_7scanner7matches16UnconfirmedMatchENtCsaO0k6qjB80f_10rustc_hash13FxBuildHasherE7get_mutBO_EBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ap, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.b)
          to label %bb.af unwind label %.loopexit45.i, !noalias !6305 ; 3 uses

bb.af:                                            ; preds = %.lr.ph67.i
  %.not31.i = icmp eq ptr %i.ep, null
  br i1 %.not31.i, label %_RINvXs2Q_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_7IterMutNtNtNtCs7gfv9tzbXmh_6yara_x7scanner7matches16UnconfirmedMatchENtNtNtNtBb_4iter6traits8iterator8Iterator8for_eachNCNvNtBX_7context23verify_chain_of_matches0EBZ_.exit.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 8
  %i.er = load ptr, ptr %i.eq, align 8, !noalias !6305, !nonnull !27, !noundef !27 ; 3 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.ep, i64 16
  %i.et = load i64, ptr %i.es, align 8, !noalias !6305, !noundef !27 ; 2 uses
  %.idx.i17 = mul i64 %i.et, 24                   ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.er, i64 %.idx.i17
  %i.ev = icmp eq i64 %i.et, 0
  br i1 %i.ev, label %_RINvXs2Q_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_7IterMutNtNtNtCs7gfv9tzbXmh_6yara_x7scanner7matches16UnconfirmedMatchENtNtNtNtBb_4iter6traits8iterator8Iterator8for_eachNCNvNtBX_7context23verify_chain_of_matches0EBZ_.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.ag
  %i.ew = add i64 %.idx.i17, -24                  ; 2 uses
  %i.ex = udiv i64 %i.ew, 24
  %i.ey = add nuw nsw i64 %i.ex, 1
  %xtraiter = and i64 %i.ey, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.sroa.0.02.i.i.prol = phi ptr [ %i.ez, %.lr.ph.i.i.prol ], [ %i.er, %.lr.ph.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.ez = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i.i.prol, i64 24 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i.i.prol, i64 16
  store i64 0, ptr %i.fa, align 8, !alias.scope !6306, !noalias !6305
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !6309

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.sroa.0.02.i.i.unr = phi ptr [ %i.er, %.lr.ph.i.i.preheader ], [ %i.ez, %.lr.ph.i.i.prol ]
  %i.fb = icmp ult i64 %i.ew, 168
  br i1 %i.fb, label %_RINvXs2Q_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_7IterMutNtNtNtCs7gfv9tzbXmh_6yara_x7scanner7matches16UnconfirmedMatchENtNtNtNtBb_4iter6traits8iterator8Iterator8for_eachNCNvNtBX_7context23verify_chain_of_matches0EBZ_.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.sroa.0.02.i.i = phi ptr [ %i.fj, %.lr.ph.i.i ], [ %.sroa.0.02.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 9 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i.i, i64 16
  store i64 0, ptr %i.fc, align 8, !alias.scope !6306, !noalias !6305
  %i.fd = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i.i, i64 40
  store i64 0, ptr %i.fd, align 8, !alias.scope !6306, !noalias !6305
  %i.fe = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i.i, i64 64
  store i64 0, ptr %i.fe, align 8, !alias.scope !6306, !noalias !6305
  %i.ff = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i.i, i64 88
  store i64 0, ptr %i.ff, align 8, !alias.scope !6306, !noalias !6305
  %i.fg = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i.i, i64 112
  store i64 0, ptr %i.fg, align 8, !alias.scope !6306, !noalias !6305
  %i.fh = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i.i, i64 136
  store i64 0, ptr %i.fh, align 8, !alias.scope !6306, !noalias !6305
  %i.fi = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i.i, i64 160
  store i64 0, ptr %i.fi, align 8, !alias.scope !6306, !noalias !6305
  %i.fj = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i.i, i64 192 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i.i, i64 184
  store i64 0, ptr %i.fk, align 8, !alias.scope !6306, !noalias !6305
  %i.fl = icmp eq ptr %i.fj, %i.eu
  br i1 %i.fl, label %_RINvXs2Q_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_7IterMutNtNtNtCs7gfv9tzbXmh_6yara_x7scanner7matches16UnconfirmedMatchENtNtNtNtBb_4iter6traits8iterator8Iterator8for_eachNCNvNtBX_7context23verify_chain_of_matches0EBZ_.exit.i, label %.lr.ph.i.i

_RINvXs2Q_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_7IterMutNtNtNtCs7gfv9tzbXmh_6yara_x7scanner7matches16UnconfirmedMatchENtNtNtNtBb_4iter6traits8iterator8Iterator8for_eachNCNvNtBX_7context23verify_chain_of_matches0EBZ_.exit.i: ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.ag, %bb.af
  %i.fm = load ptr, ptr %i.dp, align 8, !alias.scope !6294, !noalias !6305, !nonnull !27, !align !287, !noundef !27 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 272
  %i.fo = load ptr, ptr %i.fn, align 8, !noalias !6305, !nonnull !27, !noundef !27
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fm, i64 280
  %i.fq = load i64, ptr %i.fp, align 8, !noalias !6305, !noundef !27
  %i.fr = zext i32 %.sroa.45.065.i to i64         ; 2 uses
  %i.fs = icmp ugt i64 %i.fq, %i.fr
  call void @llvm.assume(i1 %i.fs)
  %i.ft = getelementptr inbounds nuw [32 x i8], ptr %i.fo, i64 %i.fr ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 8
  %i.fv = load i8, ptr %i.fu, align 8, !range !4161, !noalias !6305, !noundef !27
  switch i8 %i.fv, label %.loopexit.loopexit.i [
    i8 3, label %bb.ai
    i8 6, label %bb.ah
  ]

bb.ah:                                            ; preds = %_RINvXs2Q_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_7IterMutNtNtNtCs7gfv9tzbXmh_6yara_x7scanner7matches16UnconfirmedMatchENtNtNtNtBb_4iter6traits8iterator8Iterator8for_eachNCNvNtBX_7context23verify_chain_of_matches0EBZ_.exit.i
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %_RINvXs2Q_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_7IterMutNtNtNtCs7gfv9tzbXmh_6yara_x7scanner7matches16UnconfirmedMatchENtNtNtNtBb_4iter6traits8iterator8Iterator8for_eachNCNvNtBX_7context23verify_chain_of_matches0EBZ_.exit.i
  %.sink89.i = phi i64 [ 12, %bb.ah ], [ 16, %_RINvXs2Q_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_7IterMutNtNtNtCs7gfv9tzbXmh_6yara_x7scanner7matches16UnconfirmedMatchENtNtNtNtBb_4iter6traits8iterator8Iterator8for_eachNCNvNtBX_7context23verify_chain_of_matches0EBZ_.exit.i ]
  %i.fw = getelementptr inbounds nuw i8, ptr %i.ft, i64 %.sink89.i
  %i.fx = load i32, ptr %i.fw, align 4, !noalias !6305, !noundef !27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !6299
  br label %.lr.ph67.i

.loopexit.loopexit.i:                             ; preds = %_RINvXs2Q_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_7IterMutNtNtNtCs7gfv9tzbXmh_6yara_x7scanner7matches16UnconfirmedMatchENtNtNtNtBb_4iter6traits8iterator8Iterator8for_eachNCNvNtBX_7context23verify_chain_of_matches0EBZ_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !6299
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %bb.ar, %._crit_edge.i, %.loopexit.loopexit.i, %bb.ae
  %.sroa.324.1.i = phi i32 [ %.sroa.324.0.ph.i, %._crit_edge.i ], [ %i.gx, %bb.ar ], [ %.sroa.324.0.ph.i, %bb.ae ], [ %.sroa.324.0.ph.i, %.loopexit.loopexit.i ]
  %.sroa.023.1.i = phi i1 [ %.sroa.023.0.ph.i, %._crit_edge.i ], [ true, %bb.ar ], [ false, %bb.ae ], [ true, %.loopexit.loopexit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !6299
  br label %.outer.i

bb.aj:                                            ; preds = %bb.ad
  %.not.i14 = icmp eq ptr %i.eo, null
  br i1 %.not.i14, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.fy = getelementptr inbounds nuw i8, ptr %i.ef, i64 %.sink.i ; 3 uses
  %.sroa.013.0.le.i = getelementptr inbounds nuw i8, ptr %i.ef, i64 10
  %i.fz = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  %i.ga = load ptr, ptr %i.fz, align 8, !noalias !6305, !nonnull !27, !noundef !27 ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.eo, i64 16
  %i.gc = load i64, ptr %i.gb, align 8, !noalias !6305, !noundef !27 ; 2 uses
  %.idx68.i = mul nuw nsw i64 %i.gc, 24
  %i.gd = getelementptr inbounds nuw i8, ptr %i.ga, i64 %.idx68.i
  %i.ge = icmp eq i64 %i.gc, 0
  br i1 %i.ge, label %._crit_edge.i, label %.lr.ph.i15

.lr.ph.i15:                                       ; preds = %bb.ak
  %i.gf = getelementptr inbounds nuw i8, ptr %i.fy, i64 8
  %i.gg = getelementptr inbounds nuw i8, ptr %i.fy, i64 4
  %i.gh = add i64 %.sroa.736.0.copyload.i, 1      ; 2 uses
  br label %bb.am

bb.al:                                            ; preds = %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !6299
  br label %bb.u

bb.am:                                            ; preds = %_RINvYINtNtNtCskKLDkoKarTP_4core3ops5range14RangeInclusivejEINtB6_11RangeBoundsjE8containsjECs7gfv9tzbXmh_6yara_x.exit.thread.i16, %.lr.ph.i15
  %.sroa.017.064.i = phi ptr [ %i.ga, %.lr.ph.i15 ], [ %i.gi, %_RINvYINtNtNtCskKLDkoKarTP_4core3ops5range14RangeInclusivejEINtB6_11RangeBoundsjE8containsjECs7gfv9tzbXmh_6yara_x.exit.thread.i16 ] ; 4 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %.sroa.017.064.i, i64 24 ; 2 uses
  %i.gj = load i8, ptr %i.gf, align 4, !range !5198, !noalias !6305, !noundef !27
  %i.gk = icmp eq i8 %i.gj, 2
  %i.gl = load i32, ptr %i.fy, align 4, !noalias !6305, !noundef !27
  %i.gm = zext i32 %i.gl to i64
  %6 = getelementptr inbounds nuw i8, ptr %.sroa.017.064.i, i64 8
  %7 = load i64, ptr %6, align 8, !noalias !6305, !noundef !27 ; 3 uses
  %8 = add i64 %7, %i.gm
  %.not43.i = icmp ugt i64 %8, %.sroa.0.0.copyload.i ; 2 uses
  br i1 %i.gk, label %.split.i, label %9

._crit_edge.i:                                    ; preds = %_RINvYINtNtNtCskKLDkoKarTP_4core3ops5range14RangeInclusivejEINtB6_11RangeBoundsjE8containsjECs7gfv9tzbXmh_6yara_x.exit.thread.i16, %bb.ak
  %i.gn = load i16, ptr %.sroa.013.0.le.i, align 2, !noalias !6305, !noundef !27
  %i.go = and i16 %i.gn, 36
  %or.cond.not.i = icmp eq i16 %i.go, 36
  br i1 %or.cond.not.i, label %bb.ar, label %.loopexit.i

9:                                                ; preds = %bb.am
  br i1 %.not43.i, label %_RINvYINtNtNtCskKLDkoKarTP_4core3ops5range14RangeInclusivejEINtB6_11RangeBoundsjE8containsjECs7gfv9tzbXmh_6yara_x.exit.thread.i16, label %bb.an

bb.an:                                            ; preds = %9
  %i.gp = load i32, ptr %i.gg, align 4, !noalias !6305, !noundef !27
  %i.gq = zext i32 %i.gp to i64
  %i.gr = add i64 %7, %i.gq
  %.not42.i = icmp ugt i64 %.sroa.0.0.copyload.i, %i.gr
  br i1 %.not42.i, label %_RINvYINtNtNtCskKLDkoKarTP_4core3ops5range14RangeInclusivejEINtB6_11RangeBoundsjE8containsjECs7gfv9tzbXmh_6yara_x.exit.thread.i16, label %bb.ao

.split.i:                                         ; preds = %bb.am
  br i1 %.not43.i, label %_RINvYINtNtNtCskKLDkoKarTP_4core3ops5range14RangeInclusivejEINtB6_11RangeBoundsjE8containsjECs7gfv9tzbXmh_6yara_x.exit.thread.i16, label %bb.ao

_RINvYINtNtNtCskKLDkoKarTP_4core3ops5range14RangeInclusivejEINtB6_11RangeBoundsjE8containsjECs7gfv9tzbXmh_6yara_x.exit.thread.i16: ; preds = %bb.aq, %bb.ao, %.split.i, %bb.an, %9
  %i.gs = icmp eq ptr %i.gi, %i.gd
  br i1 %i.gs, label %._crit_edge.i, label %bb.am

bb.ao:                                            ; preds = %.split.i, %bb.an
  %i.gt = getelementptr inbounds nuw i8, ptr %.sroa.017.064.i, i64 16 ; 2 uses
  %i.gu = load i64, ptr %i.gt, align 8, !noalias !6305, !noundef !27
  %.not28.i = icmp ugt i64 %i.gu, %.sroa.736.0.copyload.i
  br i1 %.not28.i, label %_RINvYINtNtNtCskKLDkoKarTP_4core3ops5range14RangeInclusivejEINtB6_11RangeBoundsjE8containsjECs7gfv9tzbXmh_6yara_x.exit.thread.i16, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  store i64 %i.gh, ptr %i.gt, align 8, !noalias !6305
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6299
  %i.gv = load i32, ptr %i.en, align 4, !noalias !6305, !noundef !27
  %.sroa.017.0.val.i = load i64, ptr %.sroa.017.064.i, align 8, !alias.scope !6310, !noalias !6305, !noundef !27
  store i32 %i.gv, ptr %i.a, align 8, !noalias !6299
  store i64 %.sroa.017.0.val.i, ptr %i.dq, align 8, !noalias !6299
  store i64 %7, ptr %.sroa.421.0..sroa_idx.i, align 8, !noalias !6299
  store i64 %i.gh, ptr %.sroa.522.0..sroa_idx.i, align 8, !noalias !6299
  %i.gw = invoke noundef nonnull align 8 ptr @_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeTNtNtCs7gfv9tzbXmh_6yara_x8compiler12SubPatternIdNtNtNtB1a_7scanner7matches16UnconfirmedMatchEE13push_back_mutB1a_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.a)
          to label %bb.aq unwind label %.loopexit.split-lp.loopexit.i, !noalias !6305 ; 0 uses

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6299
  br label %_RINvYINtNtNtCskKLDkoKarTP_4core3ops5range14RangeInclusivejEINtB6_11RangeBoundsjE8containsjECs7gfv9tzbXmh_6yara_x.exit.thread.i16

bb.ar:                                            ; preds = %._crit_edge.i
  %i.gx = load i32, ptr %i.en, align 4, !noalias !6305, !noundef !27
  br label %.loopexit.i

bb.as:                                            ; preds = %bb.aa
  unreachable

bb.at:                                            ; preds = %.loopexit.split-lp.i
  %i.gy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #42, !noalias !6305
  unreachable

_RNvNtNtCs7gfv9tzbXmh_6yara_x7scanner7context23verify_chain_of_matches.exit: ; preds = %bb.x
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTNtNtCs7gfv9tzbXmh_6yara_x8compiler12SubPatternIdNtNtNtBR_7scanner7matches16UnconfirmedMatchEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBR_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.f), !noalias !6305
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !6299
  br label %bb.n
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvNtNtCs7gfv9tzbXmh_6yara_x7scanner7context24verify_literal_with_mask(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef range(i64 0, -9223372036854775808) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef range(i64 0, -9223372036854775808) %5) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 5 uses
  %i.b = alloca [16 x i8], align 16               ; 5 uses
  %i.c = alloca [16 x i8], align 16               ; 5 uses
  %i.d = icmp samesign ult i64 %1, 17
  br i1 %i.d, label %bb.b, label %.preheader.preheader

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !6313
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.c, i8 0, i64 16, i1 false), !noalias !6313
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !6313
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.b, i8 0, i64 16, i1 false), !noalias !6313
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6313
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, i8 0, i64 16, i1 false), !noalias !6313
  call void @_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull %i.c, i64 noundef range(i64 0, -9223372036854775808) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef range(i64 0, -9223372036854775808) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @44), !noalias !6318
  %.not8.i = icmp samesign ugt i64 %1, %3
  br i1 %.not8.i, label %bb.k, label %bb.l, !prof !59

.preheader:                                       ; preds = %_RNCINvNtNtCs7gfv9tzbXmh_6yara_x7scanner7context29verify_literal_with_mask_simdNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iE0B8_.exit
  %i.e = add nuw i64 %i.g, 16                     ; 2 uses
  %.not.i = icmp ugt i64 %i.e, %1
  br i1 %.not.i, label %bb.c, label %.preheader.preheader

bb.c:                                             ; preds = %.preheader
  %i.f = and i64 %1, 15
  %.not = icmp eq i64 %i.f, 0
  br i1 %.not, label %_RINvNtNtCs7gfv9tzbXmh_6yara_x7scanner7context29verify_literal_with_mask_simdNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iEB6_.exit, label %bb.g

.preheader.preheader:                             ; preds = %bb.a, %.preheader
  %i.g = phi i64 [ %i.e, %.preheader ], [ 16, %bb.a ] ; 2 uses
  %.sroa.01.0.i67 = phi i64 [ %i.g, %.preheader ], [ 0, %bb.a ] ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.0.i67
  %.sroa.0.0.copyload.i.i = load <2 x i64>, ptr %i.h, align 1, !noalias !6319
  %i.i = icmp samesign ugt i64 %.sroa.01.0.i67, %3
  br i1 %i.i, label %bb.e, label %bb.d, !prof !59

bb.d:                                             ; preds = %.preheader.preheader
  %i.j = icmp samesign ugt i64 %.sroa.01.0.i67, %5
  br i1 %i.j, label %bb.f, label %_RNCINvNtNtCs7gfv9tzbXmh_6yara_x7scanner7context29verify_literal_with_mask_simdNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iE0B8_.exit, !prof !59

bb.e:                                             ; preds = %.preheader.preheader
  %i.k = and i64 %3, 9223372036854775792
  %i.l = add nuw i64 %i.k, 16
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %i.l, i64 noundef %3, i64 noundef %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @64) #39, !noalias !6324
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.m = and i64 %5, 9223372036854775792
  %i.n = add nuw i64 %i.m, 16
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %i.n, i64 noundef %5, i64 noundef %5, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @63) #39, !noalias !6324
  unreachable

_RNCINvNtNtCs7gfv9tzbXmh_6yara_x7scanner7context29verify_literal_with_mask_simdNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iE0B8_.exit: ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.01.0.i67
  %.sroa.0.0.copyload.i1243.i = load <16 x i8>, ptr %i.o, align 1, !noalias !6325
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 %.sroa.01.0.i67
  %.sroa.0.0.copyload.i13.i = load <2 x i64>, ptr %i.p, align 1, !noalias !6328
  %i.q = and <2 x i64> %.sroa.0.0.copyload.i13.i, %.sroa.0.0.copyload.i.i
  %i.r = bitcast <2 x i64> %i.q to <16 x i8>
  %i.s = icmp ne <16 x i8> %.sroa.0.0.copyload.i1243.i, %i.r
  %i.t = bitcast <16 x i1> %i.s to i16
  %i.u = icmp eq i16 %i.t, 0
  br i1 %i.u, label %.preheader, label %.loopexit

bb.g:                                             ; preds = %bb.c
  %i.v = add nsw i64 %1, -16                      ; 7 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 %i.v
  %.sroa.0.0.copyload.i.i9 = load <2 x i64>, ptr %i.w, align 1, !noalias !6331
  %i.x = icmp ugt i64 %i.v, %3
  br i1 %i.x, label %bb.i, label %bb.h, !prof !59

bb.h:                                             ; preds = %bb.g
  %i.y = icmp ugt i64 %i.v, %5
  br i1 %i.y, label %bb.j, label %_RNCINvNtNtCs7gfv9tzbXmh_6yara_x7scanner7context29verify_literal_with_mask_simdNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iE0B8_.exit12, !prof !59

bb.i:                                             ; preds = %bb.g
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %i.v, i64 noundef %3, i64 noundef %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @64) #39, !noalias !6336
  unreachable

bb.j:                                             ; preds = %bb.h
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %i.v, i64 noundef %5, i64 noundef %5, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @63) #39, !noalias !6336
  unreachable

_RNCINvNtNtCs7gfv9tzbXmh_6yara_x7scanner7context29verify_literal_with_mask_simdNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iE0B8_.exit12: ; preds = %bb.h
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 %i.v
  %.sroa.0.0.copyload.i1243.i10 = load <16 x i8>, ptr %i.z, align 1, !noalias !6337
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 %i.v
  %.sroa.0.0.copyload.i13.i11 = load <2 x i64>, ptr %i.aa, align 1, !noalias !6340
  %i.ab = and <2 x i64> %.sroa.0.0.copyload.i13.i11, %.sroa.0.0.copyload.i.i9
  %i.ac = bitcast <2 x i64> %i.ab to <16 x i8>
  %i.ad = icmp ne <16 x i8> %.sroa.0.0.copyload.i1243.i10, %i.ac
  %i.ae = bitcast <16 x i1> %i.ad to i16
  %i.af = icmp eq i16 %i.ae, 0
  br i1 %i.af, label %_RINvNtNtCs7gfv9tzbXmh_6yara_x7scanner7context29verify_literal_with_mask_simdNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iEB6_.exit, label %.loopexit

.loopexit:                                        ; preds = %_RNCINvNtNtCs7gfv9tzbXmh_6yara_x7scanner7context29verify_literal_with_mask_simdNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iE0B8_.exit, %_RNCINvNtNtCs7gfv9tzbXmh_6yara_x7scanner7context29verify_literal_with_mask_simdNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iE0B8_.exit12
  br label %_RINvNtNtCs7gfv9tzbXmh_6yara_x7scanner7context29verify_literal_with_mask_simdNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iEB6_.exit

bb.k:                                             ; preds = %bb.b
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef range(i64 0, -9223372036854775808) %1, i64 noundef range(i64 0, -9223372036854775808) %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @45) #39, !noalias !6318
  unreachable

bb.l:                                             ; preds = %bb.b
  call void @_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull %i.a, i64 noundef range(i64 0, -9223372036854775808) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @46), !noalias !6343
  %.not9.i = icmp samesign ugt i64 %1, %5
  br i1 %.not9.i, label %bb.m, label %bb.n, !prof !59

bb.m:                                             ; preds = %bb.l
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef range(i64 0, -9223372036854775808) %1, i64 noundef range(i64 0, -9223372036854775808) %5, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @47) #39, !noalias !6343
  unreachable

bb.n:                                             ; preds = %bb.l
  call void @_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull %i.b, i64 noundef range(i64 0, -9223372036854775808) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef range(i64 0, -9223372036854775808) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @48)
  %.sroa.0.0.copyload.i = load <2 x i64>, ptr %i.c, align 16, !noalias !6344
  %.sroa.0.0.copyload.i1351 = load <16 x i8>, ptr %i.a, align 16, !noalias !6347
  %.sroa.0.0.copyload.i14 = load <2 x i64>, ptr %i.b, align 16, !noalias !6350
  %i.ag = and <2 x i64> %.sroa.0.0.copyload.i14, %.sroa.0.0.copyload.i
  %i.ah = bitcast <2 x i64> %i.ag to <16 x i8>
  %i.ai = icmp ne <16 x i8> %.sroa.0.0.copyload.i1351, %i.ah
  %i.aj = bitcast <16 x i1> %i.ai to i16
  %i.ak = icmp eq i16 %i.aj, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6313
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !6313
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !6313
  br label %_RINvNtNtCs7gfv9tzbXmh_6yara_x7scanner7context29verify_literal_with_mask_simdNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iEB6_.exit

_RINvNtNtCs7gfv9tzbXmh_6yara_x7scanner7context29verify_literal_with_mask_simdNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iEB6_.exit: ; preds = %bb.c, %_RNCINvNtNtCs7gfv9tzbXmh_6yara_x7scanner7context29verify_literal_with_mask_simdNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iE0B8_.exit12, %.loopexit, %bb.n
  %.sroa.0.1.i = phi i1 [ %i.ak, %bb.n ], [ false, %.loopexit ], [ true, %_RNCINvNtNtCs7gfv9tzbXmh_6yara_x7scanner7context29verify_literal_with_mask_simdNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iE0B8_.exit12 ], [ true, %bb.c ]
  ret i1 %.sroa.0.1.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RNvNtNtCs7gfv9tzbXmh_6yara_x7scanner7context25create_wasm_store_and_ctx(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(720) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [96 x i8], align 8                ; 16 uses
  %i.d = alloca [8 x i8], align 8                 ; 5 uses
  %i.e = alloca [616 x i8], align 8               ; 19 uses
  %i.f = alloca [16 x i8], align 8                ; 7 uses
  %i.g = alloca [16 x i8], align 8                ; 11 uses
  %i.h = alloca [3032 x i8], align 8              ; 34 uses
  %i.i = alloca [72 x i8], align 8                ; 9 uses
  %i.j = alloca [216 x i8], align 8               ; 25 uses
  %i.k = alloca [152 x i8], align 8               ; 5 uses
  %i.l = alloca [24 x i8], align 8                ; 7 uses
  %i.m = alloca [8 x i8], align 8                 ; 4 uses
  %.sroa.01.sroa.0.i = alloca [464 x i8], align 8 ; 8 uses
  %i.n = alloca [16 x i8], align 8                ; 5 uses
  %i.o = alloca [8 x i8], align 8                 ; 4 uses
  %i.p = alloca [24 x i8], align 8                ; 4 uses
  %i.q = alloca [24 x i8], align 8                ; 5 uses
  %i.r = alloca [24 x i8], align 8                ; 7 uses
  %i.s = alloca [24 x i8], align 8                ; 4 uses
  %i.t = alloca [24 x i8], align 8                ; 5 uses
  %i.u = alloca [24 x i8], align 8                ; 7 uses
  %.sroa.06.i = alloca [72 x i8], align 8         ; 6 uses
  %i.v = alloca [104 x i8], align 8               ; 8 uses
  %i.w = alloca [32 x i8], align 8                ; 4 uses
  %i.x = alloca [112 x i8], align 8               ; 7 uses
  %i.y = alloca [8 x i8], align 8                 ; 4 uses
  %i.z = alloca [8 x i8], align 8                 ; 4 uses
  %i.aa = alloca [8 x i8], align 8                ; 4 uses
  %i.ab = alloca [8 x i8], align 8                ; 4 uses
  %i.ac = alloca [8 x i8], align 8                ; 4 uses
  %i.ad = alloca [8 x i8], align 8                ; 4 uses
  %i.ae = alloca [8 x i8], align 8                ; 4 uses
  %i.af = alloca [40 x i8], align 8               ; 4 uses
  %i.ag = alloca [8 x i8], align 8                ; 4 uses
  %i.ah = alloca [8 x i8], align 8                ; 4 uses
  %i.ai = alloca [24 x i8], align 8               ; 4 uses
end_hunk_0
