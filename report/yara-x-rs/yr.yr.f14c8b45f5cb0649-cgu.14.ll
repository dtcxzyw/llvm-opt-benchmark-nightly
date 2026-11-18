Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yara-x-rs/original/yr.yr.f14c8b45f5cb0649-cgu.14?download=true
inline.NumInlined: 1677
inline.NumDeleted: 809
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@_RNvNtNtCskIqAKC4t9Ft_2yr8commands3fix8exec_fix:bb.a
          to label %bb.k unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.n:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !2145
  br label %bb.o

bb.o:                                             ; preds = %bb.p, %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !2145
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !2145
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.al, ptr noundef nonnull align 8 dereferenceable(88) %i.ao, i64 88, i1 false), !noalias !2145
  call void @_RINvMs_NtCskIqAKC4t9Ft_2yr4walkNtB5_9ParWalker4walkNtNtNtB7_8commands3fix16FixEncodingStateuNCNvBP_17exec_fix_encoding0NCB1u_s_0NCB1u_s0_0NCB1u_s1_0NCB1u_s2_0EB7_(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.am, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(88) %i.al, i64 noundef 0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.ap)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !2145
  call void @llvm.experimental.noalias.scope.decl(metadata !2146)
  %i.bz = load ptr, ptr %i.am, align 16, !alias.scope !2146, !noalias !2145, !noundef !8
  %.not.i.i = icmp eq ptr %i.bz, null
  br i1 %.not.i.i, label %_RNvNtNtCskIqAKC4t9Ft_2yr8commands3fix17exec_fix_encoding.exit, label %bb.q, !prof !27

bb.p:                                             ; preds = %bb.j
  %i.ca = invoke noundef nonnull align 8 ptr @_RNvMs_NtCskIqAKC4t9Ft_2yr4walkNtB4_9ParWalker6filter(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.bs, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @60, i64 noundef 9)
          to label %bb.o unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.q:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !2147
  %i.cb = load <2 x ptr>, ptr %i.am, align 16, !alias.scope !2146, !noalias !2145
  store <2 x ptr> %i.cb, ptr %i.ag, align 16, !noalias !2147
  invoke void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @20, i64 noundef 43, ptr noundef nonnull %i.ag, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @19, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @61) #33
          to label %bb.s unwind label %bb.r, !noalias !2146

bb.r:                                             ; preds = %bb.q
  %i.cc = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ag) #32
          to label %common.resume unwind label %bb.t, !noalias !2146

bb.s:                                             ; preds = %bb.q
  unreachable

bb.t:                                             ; preds = %bb.r
  %i.cd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #31, !noalias !2146
  unreachable

common.resume:                                    ; preds = %.body.i, %bb.r, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %common.resume.op = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.cc, %bb.r ], [ %.pn109.i, %.body.i ]
  resume { ptr, i32 } %common.resume.op

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.m, %bb.k, %bb.p, %bb.j
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskIqAKC4t9Ft_2yr4walk9ParWalkerEBF_(ptr noalias nofree noundef align 8 dereferenceable(88) %i.ao) #32
          to label %common.resume unwind label %bb.u

bb.u:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.ce = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #31
  unreachable

_RNvNtNtCskIqAKC4t9Ft_2yr8commands3fix17exec_fix_encoding.exit: ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !2145
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !2145
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !2145
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !2145
  br label %bb.db

bb.v:                                             ; preds = %bb.c
  %i.cf = load i64, ptr %i.au, align 1
  %i.cg = icmp ne i64 %i.cf, 8315736636066521463
  %i.ch = zext i1 %i.cg to i32
  %i.ci = icmp eq i32 %i.ch, 0
  br i1 %i.ci, label %bb.w, label %.critedge, !prof !27

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !2148
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !2148
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !2148
  call void @_RINvMs0_NtNtNtCs1ZTs3ySsPIM_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches12try_get_manyTINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringENtNtCsG258MDvU3F_3std4path7PathBufEECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.k, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ax, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @55, i64 noundef 22), !noalias !2149
  call void @_RINvMNtNtCs1ZTs3ySsPIM_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtB5_7matches11arg_matches9ValuesRefTIB1d_NtNtCsexYYUdYSQU6_5alloc6string6StringENtNtCsG258MDvU3F_3std4path7PathBufEEEECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.ae, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @55, i64 noundef 22, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %i.k), !noalias !2149
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !2148
  %i.cj = load ptr, ptr %i.ae, align 8, !noalias !2148, !noundef !8
  %.not.i7 = icmp eq ptr %i.cj, null
  br i1 %.not.i7, label %bb.y, label %bb.x, !prof !11

bb.x:                                             ; preds = %bb.w
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.af, ptr noundef nonnull align 8 dereferenceable(64) %i.ae, i64 64, i1 false), !noalias !2148
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !2148
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !2148
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !2148
  call void @_RINvNtCskIqAKC4t9Ft_2yr8commands13compile_rulesINtNtNtNtCs1ZTs3ySsPIM_12clap_builder6parser7matches11arg_matches9ValuesRefTINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringENtNtCsG258MDvU3F_3std4path7PathBufEEEB4_(ptr noalias nofree noundef nonnull sret([744 x i8]) align 8 captures(none) dereferenceable(744) %i.ab, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %i.af, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ax, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %1)
  %i.ck = load i64, ptr %i.ab, align 8, !range !12, !noalias !2148, !noundef !8 ; 2 uses
  %i.cl = icmp eq i64 %i.ck, -1
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.cn = load ptr, ptr %i.cm, align 8, !noalias !2148 ; 2 uses
  br i1 %i.cl, label %bb.z, label %bb.aa

bb.y:                                             ; preds = %bb.w
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @62) #36
  unreachable

bb.z:                                             ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !2148
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !2148
  br label %_RNvNtNtCskIqAKC4t9Ft_2yr8commands3fix17exec_fix_warnings.exit

bb.aa:                                            ; preds = %bb.x
  %.sroa.567.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %.sroa.5.0..sroa_idx.i8 = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(728) %.sroa.5.0..sroa_idx.i8, ptr noundef nonnull align 8 dereferenceable(728) %.sroa.567.0..sroa_idx.i, i64 728, i1 false), !noalias !2148
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !2148
  store i64 %i.ck, ptr %i.ac, align 8, !noalias !2148
  %.sroa.4.0..sroa_idx.i9 = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store ptr %i.cn, ptr %.sroa.4.0..sroa_idx.i9, align 8, !noalias !2148
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !2148
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(720) %i.ad, ptr noundef nonnull align 8 dereferenceable(720) %i.ac, i64 720, i1 false), !noalias !2148
  %i.co = getelementptr inbounds nuw i8, ptr %i.ac, i64 720 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTNtNtB7_6string6StringBG_EENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.co)
          to label %bb.ac unwind label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cp = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTNtNtB7_6string6StringBN_EENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.co)
          to label %.body.i unwind label %bb.ad

bb.ac:                                            ; preds = %bb.aa
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTNtNtB7_6string6StringBN_EENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.co)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecTNtNtBG_6string6StringB19_EEECskIqAKC4t9Ft_2yr.exit.i unwind label %bb.ae

bb.ad:                                            ; preds = %bb.ab
  %i.cq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #31
  unreachable

.body.i:                                          ; preds = %.body113.i, %bb.ae, %bb.ab
  %.pn109.i = phi { ptr, i32 } [ %i.cp, %bb.ab ], [ %i.cr, %bb.ae ], [ %.pn107.i, %.body113.i ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5rules5RulesECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef align 8 dereferenceable(720) %i.ad) #32
          to label %common.resume unwind label %bb.by

bb.ae:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskIqAKC4t9Ft_2yr.exit132.i, %bb.ce, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecTNtNtBG_6string6StringB19_EEECskIqAKC4t9Ft_2yr.exit.i, %bb.ac
  %i.cr = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecTNtNtBG_6string6StringB19_EEECskIqAKC4t9Ft_2yr.exit.i: ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !2148
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !2148
  %i.cs = invoke { i64, i64 } @_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyINtNtCskKLDkoKarTP_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1H_11RandomState3new0B20_ECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @63)
          to label %bb.af unwind label %bb.ae     ; 2 uses

bb.af:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecTNtNtBG_6string6StringB19_EEECskIqAKC4t9Ft_2yr.exit.i
  %i.ct = extractvalue { i64, i64 } %i.cs, 0
  %i.cu = extractvalue { i64, i64 } %i.cs, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aa, ptr noundef nonnull align 8 dereferenceable(32) @65, i64 32, i1 false), !noalias !2148
  %.sroa.469.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  store i64 %i.ct, ptr %.sroa.469.0..sroa_idx.i, align 8, !noalias !2148
  %.sroa.570.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  store i64 %i.cu, ptr %.sroa.570.0..sroa_idx.i, align 8, !noalias !2148
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !2148
  store i32 0, ptr %i.z, align 4, !noalias !2148
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !2148
  store i32 0, ptr %i.y, align 4, !noalias !2148
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ad, i64 560
  %i.cw = load ptr, ptr %i.cv, align 8, !noalias !2148, !nonnull !8, !noundef !8 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ad, i64 568
  %i.cy = load i64, ptr %i.cx, align 8, !noalias !2148, !noundef !8 ; 2 uses
  %.idx.i = shl nuw nsw i64 %i.cy, 4
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cw, i64 %.idx.i
  %i.da = icmp eq i64 %i.cy, 0
  br i1 %i.da, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.af
  %.sroa.6.0..sroa_idx.i10 = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %.sroa.7.0..sroa_idx.i11 = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %.sroa.8135.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %.sroa.14.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %.sroa.16.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.x, i64 40
  %.sroa.18.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.x, i64 48
  %.sroa.21.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.x, i64 56
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.x, i64 64
  %.sroa.7.0..sroa_idx5.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %.sroa.7.0..sroa_idx5.i11.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.8137.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %.sroa.10.0..sroa_idx.i12 = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %.sroa.18140.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.w, i64 40
  %.sroa.476.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.577.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.sroa.678.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %.sroa.419.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.sroa.520.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %.sroa.621.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 24 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.dc = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %.sroa.423.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %.sroa.524.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  br label %bb.ag

bb.ag:                                            ; preds = %_RNvXsi_NtNtNtCskKLDkoKarTP_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report7SectionENCNvMs0_B1T_NtB1T_6Report7patches0EIB1c_IB1s_TNtB1T_7CodeLocNtNtCsexYYUdYSQU6_5alloc6string6StringEENCNCB2J_00EENtNtNtB9_6traits8iterator8Iterator4nextCskIqAKC4t9Ft_2yr.exit.thread168.i, %.lr.ph.i
  %2 = phi i32 [ 0, %.lr.ph.i ], [ %i.di, %_RNvXsi_NtNtNtCskKLDkoKarTP_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report7SectionENCNvMs0_B1T_NtB1T_6Report7patches0EIB1c_IB1s_TNtB1T_7CodeLocNtNtCsexYYUdYSQU6_5alloc6string6StringEENCNCB2J_00EENtNtNtB9_6traits8iterator8Iterator4nextCskIqAKC4t9Ft_2yr.exit.thread168.i ]
  %i.dd = phi i32 [ 0, %.lr.ph.i ], [ %i.df, %_RNvXsi_NtNtNtCskKLDkoKarTP_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report7SectionENCNvMs0_B1T_NtB1T_6Report7patches0EIB1c_IB1s_TNtB1T_7CodeLocNtNtCsexYYUdYSQU6_5alloc6string6StringEENCNCB2J_00EENtNtNtB9_6traits8iterator8Iterator4nextCskIqAKC4t9Ft_2yr.exit.thread168.i ]
  %.sroa.08.0261.i = phi ptr [ %i.cw, %.lr.ph.i ], [ %i.de, %_RNvXsi_NtNtNtCskKLDkoKarTP_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report7SectionENCNvMs0_B1T_NtB1T_6Report7patches0EIB1c_IB1s_TNtB1T_7CodeLocNtNtCsexYYUdYSQU6_5alloc6string6StringEENCNCB2J_00EENtNtNtB9_6traits8iterator8Iterator4nextCskIqAKC4t9Ft_2yr.exit.thread168.i ] ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.08.0261.i, i64 16 ; 2 uses
  %i.df = add i32 %i.dd, 1                        ; 2 uses
  store i32 %i.df, ptr %i.z, align 4, !noalias !2148
  invoke void @_RNvMs1_NtNtCs7gfv9tzbXmh_6yara_x8compiler8warningsNtB5_7Warning7patches(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.x, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.sroa.08.0261.i)
          to label %bb.ah unwind label %.thread189.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

._crit_edge.i:                                    ; preds = %_RNvXsi_NtNtNtCskKLDkoKarTP_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report7SectionENCNvMs0_B1T_NtB1T_6Report7patches0EIB1c_IB1s_TNtB1T_7CodeLocNtNtCsexYYUdYSQU6_5alloc6string6StringEENCNCB2J_00EENtNtNtB9_6traits8iterator8Iterator4nextCskIqAKC4t9Ft_2yr.exit.thread168.i, %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !2148
  invoke void @_RNvMs0_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringINtNtBR_3vec3VecNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report5PatchENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE4iterCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.j, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.aa)
          to label %bb.bz unwind label %.thread189.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.body113.i:                                       ; preds = %.thread189.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.cy, %bb.cu, %.loopexit.split-lp205.i, %.thread.i, %bb.bn, %bb.ay, %bb.ax, %bb.ap, %bb.ao
  %.pn107.i = phi { ptr, i32 } [ %i.ep, %bb.ax ], [ %.pn105.i, %.loopexit.split-lp205.i ], [ %.pn188.i, %.thread.i ], [ %i.ij, %bb.cu ], [ %i.fk, %bb.bn ], [ %i.il, %bb.cy ], [ %lpad.phi.i.i, %bb.ao ], [ %lpad.phi.i.i, %bb.ap ], [ %i.ep, %bb.ay ], [ %lpad.loopexit.split-lp362, %.thread189.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCsexYYUdYSQU6_5alloc6string6StringINtNtBT_3vec3VecNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report5PatchEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.aa)
          to label %.body.i unwind label %bb.by

bb.ah:                                            ; preds = %bb.ag
  %.sroa.0.0.copyload.i = load ptr, ptr %i.x, align 8, !noalias !2148
  %.sroa.6.0.copyload.i = load ptr, ptr %.sroa.6.0..sroa_idx.i10, align 8, !noalias !2148 ; 2 uses
  %.sroa.7.0.copyload.i = load ptr, ptr %.sroa.7.0..sroa_idx.i11, align 8, !noalias !2148 ; 3 uses
  %.sroa.8135.0.copyload.i = load ptr, ptr %.sroa.8135.0..sroa_idx.i, align 8, !noalias !2148
  %.sroa.14.0.copyload.i = load ptr, ptr %.sroa.14.0..sroa_idx.i, align 8, !noalias !2148
  %.sroa.16.0.copyload.i = load ptr, ptr %.sroa.16.0..sroa_idx.i, align 8, !noalias !2148
  %.sroa.18.0.copyload.i = load ptr, ptr %.sroa.18.0..sroa_idx.i, align 8, !noalias !2148
  %.sroa.21.0.copyload.i = load ptr, ptr %.sroa.21.0..sroa_idx.i, align 8, !noalias !2148 ; 2 uses
  %.sroa.22.0.copyload.i = load ptr, ptr %.sroa.22.0..sroa_idx.i, align 8, !noalias !2148 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload.i, i64 128 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.sroa.22.0.copyload.i, i64 128 ; 2 uses
  br label %bb.ai

bb.ai:                                            ; preds = %bb.bt, %bb.ah
  %i.di = phi i32 [ %2, %bb.ah ], [ %i.ez, %bb.bt ] ; 3 uses
  %.sroa.18.0.i = phi ptr [ %.sroa.18.0.copyload.i, %bb.ah ], [ %.sroa.18.3163.i, %bb.bt ] ; 6 uses
  %.sroa.16.0.i = phi ptr [ %.sroa.16.0.copyload.i, %bb.ah ], [ %.sroa.16.3164.i, %bb.bt ] ; 4 uses
  %.sroa.14.0.i = phi ptr [ %.sroa.14.0.copyload.i, %bb.ah ], [ %.sroa.14.3165.i, %bb.bt ] ; 4 uses
  %.sroa.8135.0.i = phi ptr [ %.sroa.8135.0.copyload.i, %bb.ah ], [ %.sroa.8135.4166.i, %bb.bt ] ; 5 uses
  %.sroa.0.0141.i = phi ptr [ %.sroa.0.0.copyload.i, %bb.ah ], [ %.sroa.0.4144167.i, %bb.bt ] ; 7 uses
  %.sroa.07.0.i = phi i1 [ false, %bb.ah ], [ true, %bb.bt ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8137.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i.i)
  %.not.i.peel.i.i = icmp eq ptr %.sroa.8135.0.i, null
  %i.dj = icmp eq ptr %.sroa.8135.0.i, %.sroa.14.0.i
  %or.cond200.i = select i1 %.not.i.peel.i.i, i1 true, i1 %i.dj
  br i1 %or.cond200.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report5PatchEECskIqAKC4t9Ft_2yr.exit.peel.i.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.experimental.noalias.scope.decl(metadata !2150)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !2151
  %i.dk = getelementptr inbounds nuw i8, ptr %.sroa.16.0.i, i64 128 ; 2 uses
  %i.dl = load ptr, ptr %i.dk, align 8, !noalias !2152, !nonnull !8, !noundef !8
  %i.dm = atomicrmw add ptr %i.dl, i64 1 monotonic, align 8, !noalias !2152
  %i.dn = icmp slt i64 %i.dm, 0
  br i1 %i.dn, label %.loopexit.i.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.do = getelementptr inbounds nuw i8, ptr %.sroa.8135.0.i, i64 16
  %i.dp = load ptr, ptr %i.dk, align 8, !noalias !2152, !nonnull !8, !noundef !8 ; 3 uses
  store ptr %i.dp, ptr %i.g, align 8, !noalias !2151
  %i.dq = load <4 x i32>, ptr %.sroa.8135.0.i, align 8, !alias.scope !2150, !noalias !2153
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !2151
  invoke void @_RNvXs4_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.do)
          to label %_RNvYNvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtBe_5slice4iter4IterTNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report7CodeLocNtNtCsexYYUdYSQU6_5alloc6string6StringEENCNCNvMs0_B1m_NtB1m_6Report7patches00ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCskIqAKC4t9Ft_2yr.exit.i.peel.i.i unwind label %.loopexit.split-lp.i.i, !noalias !2154

_RNvYNvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtBe_5slice4iter4IterTNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report7CodeLocNtNtCsexYYUdYSQU6_5alloc6string6StringEENCNCNvMs0_B1m_NtB1m_6Report7patches00ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCskIqAKC4t9Ft_2yr.exit.i.peel.i.i: ; preds = %bb.ak
  %.sroa.0.0.copyload4.i.peel.i.i = load i64, ptr %i.f, align 8, !noalias !2155 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx5.i.i.i, i64 16, i1 false), !noalias !2155
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !2151
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !2151
  %.not3.i.peel.i.i = icmp eq i64 %.sroa.0.0.copyload4.i.peel.i.i, -1
  br i1 %.not3.i.peel.i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report5PatchEECskIqAKC4t9Ft_2yr.exit.peel.i.i, label %_RNvXsi_NtNtNtCskKLDkoKarTP_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report7SectionENCNvMs0_B1T_NtB1T_6Report7patches0EIB1c_IB1s_TNtB1T_7CodeLocNtNtCsexYYUdYSQU6_5alloc6string6StringEENCNCB2J_00EENtNtNtB9_6traits8iterator8Iterator4nextCskIqAKC4t9Ft_2yr.exit.thread.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report5PatchEECskIqAKC4t9Ft_2yr.exit.peel.i.i: ; preds = %_RNvYNvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtBe_5slice4iter4IterTNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report7CodeLocNtNtCsexYYUdYSQU6_5alloc6string6StringEENCNCNvMs0_B1m_NtB1m_6Report7patches00ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCskIqAKC4t9Ft_2yr.exit.i.peel.i.i, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i.i)
  %.not.i2.peel.i.i = icmp eq ptr %.sroa.0.0141.i, null
  br i1 %.not.i2.peel.i.i, label %.loopexit52.i.i, label %bb.al

bb.al:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report5PatchEECskIqAKC4t9Ft_2yr.exit.peel.i.i
  %i.dr = icmp eq ptr %.sroa.0.0141.i, %.sroa.6.0.copyload.i
  br i1 %i.dr, label %.loopexit52.i.i, label %.peel.next.i.i

.peel.next.i.i:                                   ; preds = %bb.al
  %i.ds = getelementptr i8, ptr %.sroa.0.0141.i, i64 32
  %.val2.i.i.peel.i.i = load ptr, ptr %i.ds, align 8, !noalias !2156, !nonnull !8, !noundef !8 ; 2 uses
  %i.dt = getelementptr i8, ptr %.sroa.0.0141.i, i64 40
  %.val3.i.i.peel.i.i = load i64, ptr %i.dt, align 8, !noalias !2156, !noundef !8
  %i.du = getelementptr inbounds nuw [40 x i8], ptr %.val2.i.i.peel.i.i, i64 %.val3.i.i.peel.i.i
  br label %bb.am

bb.am:                                            ; preds = %bb.at, %.peel.next.i.i
  %.sroa.0.0141.pn.i = phi ptr [ %.sroa.0.0141.i, %.peel.next.i.i ], [ %.sroa.0.2142.i, %bb.at ] ; 3 uses
  %storemerge55.i.i = phi ptr [ %.val2.i.i.peel.i.i, %.peel.next.i.i ], [ %.val2.i.i.i.i, %bb.at ] ; 4 uses
  %storemerge.i.i = phi ptr [ %i.du, %.peel.next.i.i ], [ %i.ej, %bb.at ] ; 3 uses
  %.sroa.0.2142.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0141.pn.i, i64 80 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i.i)
  %i.dv = icmp eq ptr %storemerge55.i.i, %storemerge.i.i
  br i1 %i.dv, label %bb.as, label %bb.an

bb.an:                                            ; preds = %bb.am
  call void @llvm.experimental.noalias.scope.decl(metadata !2157)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !2158
  %i.dw = load ptr, ptr %i.dg, align 8, !noalias !2159, !nonnull !8, !noundef !8
  %i.dx = atomicrmw add ptr %i.dw, i64 1 monotonic, align 8, !noalias !2159
  %i.dy = icmp slt i64 %i.dx, 0
  br i1 %i.dy, label %.loopexit.i.i, label %bb.aq

.loopexit.i.i:                                    ; preds = %bb.aj, %bb.an
  call void @llvm.trap()
  unreachable

.loopexit50.i.i:                                  ; preds = %bb.aq
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

.loopexit.split-lp.i.i:                           ; preds = %bb.ak
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

bb.ao:                                            ; preds = %.loopexit.split-lp.i.i, %.loopexit50.i.i
  %.lcssa.i.i = phi ptr [ %i.ec, %.loopexit50.i.i ], [ %i.dp, %.loopexit.split-lp.i.i ]
  %lpad.phi.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i, %.loopexit50.i.i ], [ %lpad.loopexit.split-lp.i.i, %.loopexit.split-lp.i.i ] ; 2 uses
  %i.dz = atomicrmw add ptr %.lcssa.i.i, i64 -1 release, align 8, !noalias !2160
  %i.ea = icmp eq i64 %i.dz, 1
  br i1 %i.ea, label %bb.ap, label %.body113.i

bb.ap:                                            ; preds = %bb.ao
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report9CodeCacheE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.g) #35
          to label %.body113.i unwind label %bb.ar, !noalias !2161

bb.aq:                                            ; preds = %bb.an
  %i.eb = getelementptr inbounds nuw i8, ptr %storemerge55.i.i, i64 16
  %i.ec = load ptr, ptr %i.dg, align 8, !noalias !2159, !nonnull !8, !noundef !8 ; 3 uses
  store ptr %i.ec, ptr %i.g, align 8, !noalias !2158
  %i.ed = load <4 x i32>, ptr %storemerge55.i.i, align 8, !alias.scope !2157, !noalias !2162
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !2158
  invoke void @_RNvXs4_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.eb)
          to label %_RNvYNvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtBe_5slice4iter4IterTNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report7CodeLocNtNtCsexYYUdYSQU6_5alloc6string6StringEENCNCNvMs0_B1m_NtB1m_6Report7patches00ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCskIqAKC4t9Ft_2yr.exit.i.i.i unwind label %.loopexit50.i.i, !noalias !2161

bb.ar:                                            ; preds = %bb.ap
  %i.ee = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #31, !noalias !2161
  unreachable

_RNvYNvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtBe_5slice4iter4IterTNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report7CodeLocNtNtCsexYYUdYSQU6_5alloc6string6StringEENCNCNvMs0_B1m_NtB1m_6Report7patches00ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCskIqAKC4t9Ft_2yr.exit.i.i.i: ; preds = %bb.aq
  %.sroa.0.0.copyload4.i.i.i = load i64, ptr %i.f, align 8, !noalias !2163 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx5.i.i.i, i64 16, i1 false), !noalias !2163
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !2158
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !2158
  %.not3.i.i.i = icmp eq i64 %.sroa.0.0.copyload4.i.i.i, -1
  br i1 %.not3.i.i.i, label %bb.as, label %_RNvXsi_NtNtNtCskKLDkoKarTP_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report7SectionENCNvMs0_B1T_NtB1T_6Report7patches0EIB1c_IB1s_TNtB1T_7CodeLocNtNtCsexYYUdYSQU6_5alloc6string6StringEENCNCB2J_00EENtNtNtB9_6traits8iterator8Iterator4nextCskIqAKC4t9Ft_2yr.exit.thread.i

_RNvXsi_NtNtNtCskKLDkoKarTP_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report7SectionENCNvMs0_B1T_NtB1T_6Report7patches0EIB1c_IB1s_TNtB1T_7CodeLocNtNtCsexYYUdYSQU6_5alloc6string6StringEENCNCB2J_00EENtNtNtB9_6traits8iterator8Iterator4nextCskIqAKC4t9Ft_2yr.exit.thread.i: ; preds = %_RNvYNvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtBe_5slice4iter4IterTNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report7CodeLocNtNtCsexYYUdYSQU6_5alloc6string6StringEENCNCNvMs0_B1m_NtB1m_6Report7patches00ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCskIqAKC4t9Ft_2yr.exit.i.i.i, %_RNvYNvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtBe_5slice4iter4IterTNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report7CodeLocNtNtCsexYYUdYSQU6_5alloc6string6StringEENCNCNvMs0_B1m_NtB1m_6Report7patches00ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCskIqAKC4t9Ft_2yr.exit.i.peel.i.i
  %.sroa.16.1.i = phi ptr [ %.sroa.16.0.i, %_RNvYNvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtBe_5slice4iter4IterTNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report7CodeLocNtNtCsexYYUdYSQU6_5alloc6string6StringEENCNCNvMs0_B1m_NtB1m_6Report7patches00ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCskIqAKC4t9Ft_2yr.exit.i.peel.i.i ], [ %.sroa.7.0.copyload.i, %_RNvYNvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtBe_5slice4iter4IterTNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report7CodeLocNtNtCsexYYUdYSQU6_5alloc6string6StringEENCNCNvMs0_B1m_NtB1m_6Report7patches00ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCskIqAKC4t9Ft_2yr.exit.i.i.i ]
  %.sroa.14.1.i = phi ptr [ %.sroa.14.0.i, %_RNvYNvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtBe_5slice4iter4IterTNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report7CodeLocNtNtCsexYYUdYSQU6_5alloc6string6StringEENCNCNvMs0_B1m_NtB1m_6Report7patches00ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCskIqAKC4t9Ft_2yr.exit.i.peel.i.i ], [ %storemerge.i.i, %_RNvYNvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtBe_5slice4iter4IterTNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report7CodeLocNtNtCsexYYUdYSQU6_5alloc6string6StringEENCNCNvMs0_B1m_NtB1m_6Report7patches00ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCskIqAKC4t9Ft_2yr.exit.i.i.i ]
  %storemerge55.i.pn.i = phi ptr [ %.sroa.8135.0.i, %_RNvYNvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtBe_5slice4iter4IterTNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report7CodeLocNtNtCsexYYUdYSQU6_5alloc6string6StringEENCNCNvMs0_B1m_NtB1m_6Report7patches00ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCskIqAKC4t9Ft_2yr.exit.i.peel.i.i ], [ %storemerge55.i.i, %_RNvYNvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtBe_5slice4iter4IterTNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report7CodeLocNtNtCsexYYUdYSQU6_5alloc6string6StringEENCNCNvMs0_B1m_NtB1m_6Report7patches00ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCskIqAKC4t9Ft_2yr.exit.i.i.i ]
  %.sroa.0.1.i = phi ptr [ %.sroa.0.0141.i, %_RNvYNvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtBe_5slice4iter4IterTNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report7CodeLocNtNtCsexYYUdYSQU6_5alloc6string6StringEENCNCNvMs0_B1m_NtB1m_6Report7patches00ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCskIqAKC4t9Ft_2yr.exit.i.peel.i.i ], [ %.sroa.0.2142.i, %_RNvYNvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtBe_5slice4iter4IterTNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report7CodeLocNtNtCsexYYUdYSQU6_5alloc6string6StringEENCNCNvMs0_B1m_NtB1m_6Report7patches00ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCskIqAKC4t9Ft_2yr.exit.i.i.i ]
  %.sroa.22.0.i.i = phi ptr [ %i.dp, %_RNvYNvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtBe_5slice4iter4IterTNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report7CodeLocNtNtCsexYYUdYSQU6_5alloc6string6StringEENCNCNvMs0_B1m_NtB1m_6Report7patches00ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCskIqAKC4t9Ft_2yr.exit.i.peel.i.i ], [ %i.ec, %_RNvYNvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtBe_5slice4iter4IterTNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report7CodeLocNtNtCsexYYUdYSQU6_5alloc6string6StringEENCNCNvMs0_B1m_NtB1m_6Report7patches00ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCskIqAKC4t9Ft_2yr.exit.i.i.i ]
  %.sroa.0.0.i.i = phi i64 [ %.sroa.0.0.copyload4.i.peel.i.i, %_RNvYNvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtBe_5slice4iter4IterTNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report7CodeLocNtNtCsexYYUdYSQU6_5alloc6string6StringEENCNCNvMs0_B1m_NtB1m_6Report7patches00ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCskIqAKC4t9Ft_2yr.exit.i.peel.i.i ], [ %.sroa.0.0.copyload4.i.i.i, %_RNvYNvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtBe_5slice4iter4IterTNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report7CodeLocNtNtCsexYYUdYSQU6_5alloc6string6StringEENCNCNvMs0_B1m_NtB1m_6Report7patches00ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCskIqAKC4t9Ft_2yr.exit.i.i.i ]
  %i.ef = phi <4 x i32> [ %i.dq, %_RNvYNvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtBe_5slice4iter4IterTNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report7CodeLocNtNtCsexYYUdYSQU6_5alloc6string6StringEENCNCNvMs0_B1m_NtB1m_6Report7patches00ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCskIqAKC4t9Ft_2yr.exit.i.peel.i.i ], [ %i.ed, %_RNvYNvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtBe_5slice4iter4IterTNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report7CodeLocNtNtCsexYYUdYSQU6_5alloc6string6StringEENCNCNvMs0_B1m_NtB1m_6Report7patches00ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCskIqAKC4t9Ft_2yr.exit.i.i.i ]
  %.sroa.8135.1.i = getelementptr inbounds nuw i8, ptr %storemerge55.i.pn.i, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8137.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.i.i.i, i64 16, i1 false), !noalias !2164
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i.i)
  br label %bb.bb

bb.as:                                            ; preds = %_RNvYNvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtBe_5slice4iter4IterTNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report7CodeLocNtNtCsexYYUdYSQU6_5alloc6string6StringEENCNCNvMs0_B1m_NtB1m_6Report7patches00ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCskIqAKC4t9Ft_2yr.exit.i.i.i, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i.i)
  %i.eg = icmp eq ptr %.sroa.0.2142.i, %.sroa.6.0.copyload.i
  br i1 %i.eg, label %.loopexit52.i.i, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.eh = getelementptr i8, ptr %.sroa.0.0141.pn.i, i64 112
  %.val2.i.i.i.i = load ptr, ptr %i.eh, align 8, !noalias !2165, !nonnull !8, !noundef !8 ; 2 uses
  %i.ei = getelementptr i8, ptr %.sroa.0.0141.pn.i, i64 120
  %.val3.i.i.i.i = load i64, ptr %i.ei, align 8, !noalias !2165, !noundef !8
  %i.ej = getelementptr inbounds nuw [40 x i8], ptr %.val2.i.i.i.i, i64 %.val3.i.i.i.i
  br label %bb.am, !llvm.loop !2115

.loopexit52.i.i:                                  ; preds = %bb.as, %bb.al, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report5PatchEECskIqAKC4t9Ft_2yr.exit.peel.i.i
  %.sroa.16.2.i = phi ptr [ %.sroa.16.0.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report5PatchEECskIqAKC4t9Ft_2yr.exit.peel.i.i ], [ %.sroa.16.0.i, %bb.al ], [ %.sroa.7.0.copyload.i, %bb.as ]
  %.sroa.14.2.i = phi ptr [ %.sroa.14.0.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report5PatchEECskIqAKC4t9Ft_2yr.exit.peel.i.i ], [ %.sroa.14.0.i, %bb.al ], [ %storemerge.i.i, %bb.as ]
  %.sroa.0.3143.i = phi ptr [ null, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report5PatchEECskIqAKC4t9Ft_2yr.exit.peel.i.i ], [ %.sroa.0.0141.i, %bb.al ], [ %.sroa.0.2142.i, %bb.as ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i3.i.i)
  %.not.i4.i.i = icmp eq ptr %.sroa.18.0.i, null
  br i1 %.not.i4.i.i, label %_RNvXsi_NtNtNtCskKLDkoKarTP_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report7SectionENCNvMs0_B1T_NtB1T_6Report7patches0EIB1c_IB1s_TNtB1T_7CodeLocNtNtCsexYYUdYSQU6_5alloc6string6StringEENCNCB2J_00EENtNtNtB9_6traits8iterator8Iterator4nextCskIqAKC4t9Ft_2yr.exit.thread168.i, label %bb.au

bb.au:                                            ; preds = %.loopexit52.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.21.0.copyload.i) ]
  %i.ek = icmp eq ptr %.sroa.18.0.i, %.sroa.21.0.copyload.i
  br i1 %i.ek, label %_RNvXsi_NtNtNtCskKLDkoKarTP_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report7SectionENCNvMs0_B1T_NtB1T_6Report7patches0EIB1c_IB1s_TNtB1T_7CodeLocNtNtCsexYYUdYSQU6_5alloc6string6StringEENCNCB2J_00EENtNtNtB9_6traits8iterator8Iterator4nextCskIqAKC4t9Ft_2yr.exit.thread168.i, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.el = getelementptr inbounds nuw i8, ptr %.sroa.18.0.i, i64 40
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.22.0.copyload.i) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !2167)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2168
  %i.em = load ptr, ptr %i.dh, align 8, !noalias !2169, !nonnull !8, !noundef !8
  %i.en = atomicrmw add ptr %i.em, i64 1 monotonic, align 8, !noalias !2169
  %i.eo = icmp slt i64 %i.en, 0
  br i1 %i.eo, label %bb.aw, label %bb.az

bb.aw:                                            ; preds = %bb.av
  call void @llvm.trap()
  unreachable

bb.ax:                                            ; preds = %bb.az
  %i.ep = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.eq = atomicrmw add ptr %i.et, i64 -1 release, align 8, !noalias !2170
  %i.er = icmp eq i64 %i.eq, 1
  br i1 %i.er, label %bb.ay, label %.body113.i

bb.ay:                                            ; preds = %bb.ax
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report9CodeCacheE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e) #35
          to label %.body113.i unwind label %bb.ba, !noalias !2171

bb.az:                                            ; preds = %bb.av
  %i.es = getelementptr inbounds nuw i8, ptr %.sroa.18.0.i, i64 16
  %i.et = load ptr, ptr %i.dh, align 8, !noalias !2169, !nonnull !8, !noundef !8 ; 3 uses
  store ptr %i.et, ptr %i.e, align 8, !noalias !2168
  %i.eu = load <4 x i32>, ptr %.sroa.18.0.i, align 8, !alias.scope !2167, !noalias !2172
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2168
  invoke void @_RNvXs4_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.es)
          to label %_RNvYNvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtBe_5slice4iter4IterTNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report7CodeLocNtNtCsexYYUdYSQU6_5alloc6string6StringEENCNCNvMs0_B1m_NtB1m_6Report7patches00ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCskIqAKC4t9Ft_2yr.exit.i9.i.i unwind label %bb.ax, !noalias !2171

bb.ba:                                            ; preds = %bb.ay
  %i.ev = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #31, !noalias !2171
  unreachable

_RNvYNvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtBe_5slice4iter4IterTNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report7CodeLocNtNtCsexYYUdYSQU6_5alloc6string6StringEENCNCNvMs0_B1m_NtB1m_6Report7patches00ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCskIqAKC4t9Ft_2yr.exit.i9.i.i: ; preds = %bb.az
  %.sroa.0.0.copyload4.i10.i.i = load i64, ptr %i.d, align 8, !noalias !2173 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.i3.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx5.i11.i.i, i64 16, i1 false), !noalias !2173
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2168
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2168
  %.not3.i12.i.i = icmp eq i64 %.sroa.0.0.copyload4.i10.i.i, -1
  br i1 %.not3.i12.i.i, label %_RNvXsi_NtNtNtCskKLDkoKarTP_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report7SectionENCNvMs0_B1T_NtB1T_6Report7patches0EIB1c_IB1s_TNtB1T_7CodeLocNtNtCsexYYUdYSQU6_5alloc6string6StringEENCNCB2J_00EENtNtNtB9_6traits8iterator8Iterator4nextCskIqAKC4t9Ft_2yr.exit.thread168.i, label %_RNvXsi_NtNtNtCskKLDkoKarTP_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report7SectionENCNvMs0_B1T_NtB1T_6Report7patches0EIB1c_IB1s_TNtB1T_7CodeLocNtNtCsexYYUdYSQU6_5alloc6string6StringEENCNCB2J_00EENtNtNtB9_6traits8iterator8Iterator4nextCskIqAKC4t9Ft_2yr.exit.i

_RNvXsi_NtNtNtCskKLDkoKarTP_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report7SectionENCNvMs0_B1T_NtB1T_6Report7patches0EIB1c_IB1s_TNtB1T_7CodeLocNtNtCsexYYUdYSQU6_5alloc6string6StringEENCNCB2J_00EENtNtNtB9_6traits8iterator8Iterator4nextCskIqAKC4t9Ft_2yr.exit.i: ; preds = %_RNvYNvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtBe_5slice4iter4IterTNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report7CodeLocNtNtCsexYYUdYSQU6_5alloc6string6StringEENCNCNvMs0_B1m_NtB1m_6Report7patches00ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCskIqAKC4t9Ft_2yr.exit.i9.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8137.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.i3.i.i, i64 16, i1 false), !noalias !2174
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i3.i.i)
  br label %bb.bb

bb.bb:                                            ; preds = %_RNvXsi_NtNtNtCskKLDkoKarTP_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report7SectionENCNvMs0_B1T_NtB1T_6Report7patches0EIB1c_IB1s_TNtB1T_7CodeLocNtNtCsexYYUdYSQU6_5alloc6string6StringEENCNCB2J_00EENtNtNtB9_6traits8iterator8Iterator4nextCskIqAKC4t9Ft_2yr.exit.i, %_RNvXsi_NtNtNtCskKLDkoKarTP_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report7SectionENCNvMs0_B1T_NtB1T_6Report7patches0EIB1c_IB1s_TNtB1T_7CodeLocNtNtCsexYYUdYSQU6_5alloc6string6StringEENCNCB2J_00EENtNtNtB9_6traits8iterator8Iterator4nextCskIqAKC4t9Ft_2yr.exit.thread.i
  %.sroa.0.4144167.i = phi ptr [ %.sroa.0.1.i, %_RNvXsi_NtNtNtCskKLDkoKarTP_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report7SectionENCNvMs0_B1T_NtB1T_6Report7patches0EIB1c_IB1s_TNtB1T_7CodeLocNtNtCsexYYUdYSQU6_5alloc6string6StringEENCNCB2J_00EENtNtNtB9_6traits8iterator8Iterator4nextCskIqAKC4t9Ft_2yr.exit.thread.i ], [ %.sroa.0.3143.i, %_RNvXsi_NtNtNtCskKLDkoKarTP_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report7SectionENCNvMs0_B1T_NtB1T_6Report7patches0EIB1c_IB1s_TNtB1T_7CodeLocNtNtCsexYYUdYSQU6_5alloc6string6StringEENCNCB2J_00EENtNtNtB9_6traits8iterator8Iterator4nextCskIqAKC4t9Ft_2yr.exit.i ]
  %.sroa.8135.4166.i = phi ptr [ %.sroa.8135.1.i, %_RNvXsi_NtNtNtCskKLDkoKarTP_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report7SectionENCNvMs0_B1T_NtB1T_6Report7patches0EIB1c_IB1s_TNtB1T_7CodeLocNtNtCsexYYUdYSQU6_5alloc6string6StringEENCNCB2J_00EENtNtNtB9_6traits8iterator8Iterator4nextCskIqAKC4t9Ft_2yr.exit.thread.i ], [ null, %_RNvXsi_NtNtNtCskKLDkoKarTP_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report7SectionENCNvMs0_B1T_NtB1T_6Report7patches0EIB1c_IB1s_TNtB1T_7CodeLocNtNtCsexYYUdYSQU6_5alloc6string6StringEENCNCB2J_00EENtNtNtB9_6traits8iterator8Iterator4nextCskIqAKC4t9Ft_2yr.exit.i ]
  %.sroa.14.3165.i = phi ptr [ %.sroa.14.1.i, %_RNvXsi_NtNtNtCskKLDkoKarTP_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report7SectionENCNvMs0_B1T_NtB1T_6Report7patches0EIB1c_IB1s_TNtB1T_7CodeLocNtNtCsexYYUdYSQU6_5alloc6string6StringEENCNCB2J_00EENtNtNtB9_6traits8iterator8Iterator4nextCskIqAKC4t9Ft_2yr.exit.thread.i ], [ %.sroa.14.2.i, %_RNvXsi_NtNtNtCskKLDkoKarTP_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report7SectionENCNvMs0_B1T_NtB1T_6Report7patches0EIB1c_IB1s_TNtB1T_7CodeLocNtNtCsexYYUdYSQU6_5alloc6string6StringEENCNCB2J_00EENtNtNtB9_6traits8iterator8Iterator4nextCskIqAKC4t9Ft_2yr.exit.i ]
  %.sroa.16.3164.i = phi ptr [ %.sroa.16.1.i, %_RNvXsi_NtNtNtCskKLDkoKarTP_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report7SectionENCNvMs0_B1T_NtB1T_6Report7patches0EIB1c_IB1s_TNtB1T_7CodeLocNtNtCsexYYUdYSQU6_5alloc6string6StringEENCNCB2J_00EENtNtNtB9_6traits8iterator8Iterator4nextCskIqAKC4t9Ft_2yr.exit.thread.i ], [ %.sroa.16.2.i, %_RNvXsi_NtNtNtCskKLDkoKarTP_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report7SectionENCNvMs0_B1T_NtB1T_6Report7patches0EIB1c_IB1s_TNtB1T_7CodeLocNtNtCsexYYUdYSQU6_5alloc6string6StringEENCNCB2J_00EENtNtNtB9_6traits8iterator8Iterator4nextCskIqAKC4t9Ft_2yr.exit.i ]
  %.sroa.18.3163.i = phi ptr [ %.sroa.18.0.i, %_RNvXsi_NtNtNtCskKLDkoKarTP_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report7SectionENCNvMs0_B1T_NtB1T_6Report7patches0EIB1c_IB1s_TNtB1T_7CodeLocNtNtCsexYYUdYSQU6_5alloc6string6StringEENCNCB2J_00EENtNtNtB9_6traits8iterator8Iterator4nextCskIqAKC4t9Ft_2yr.exit.thread.i ], [ %i.el, %_RNvXsi_NtNtNtCskKLDkoKarTP_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report7SectionENCNvMs0_B1T_NtB1T_6Report7patches0EIB1c_IB1s_TNtB1T_7CodeLocNtNtCsexYYUdYSQU6_5alloc6string6StringEENCNCB2J_00EENtNtNtB9_6traits8iterator8Iterator4nextCskIqAKC4t9Ft_2yr.exit.i ]
  %.sroa.0136.1162.i = phi i64 [ %.sroa.0.0.i.i, %_RNvXsi_NtNtNtCskKLDkoKarTP_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report7SectionENCNvMs0_B1T_NtB1T_6Report7patches0EIB1c_IB1s_TNtB1T_7CodeLocNtNtCsexYYUdYSQU6_5alloc6string6StringEENCNCB2J_00EENtNtNtB9_6traits8iterator8Iterator4nextCskIqAKC4t9Ft_2yr.exit.thread.i ], [ %.sroa.0.0.copyload4.i10.i.i, %_RNvXsi_NtNtNtCskKLDkoKarTP_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report7SectionENCNvMs0_B1T_NtB1T_6Report7patches0EIB1c_IB1s_TNtB1T_7CodeLocNtNtCsexYYUdYSQU6_5alloc6string6StringEENCNCB2J_00EENtNtNtB9_6traits8iterator8Iterator4nextCskIqAKC4t9Ft_2yr.exit.i ]
  %.sroa.18140.1157.i = phi ptr [ %.sroa.22.0.i.i, %_RNvXsi_NtNtNtCskKLDkoKarTP_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report7SectionENCNvMs0_B1T_NtB1T_6Report7patches0EIB1c_IB1s_TNtB1T_7CodeLocNtNtCsexYYUdYSQU6_5alloc6string6StringEENCNCB2J_00EENtNtNtB9_6traits8iterator8Iterator4nextCskIqAKC4t9Ft_2yr.exit.thread.i ], [ %i.et, %_RNvXsi_NtNtNtCskKLDkoKarTP_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report7SectionENCNvMs0_B1T_NtB1T_6Report7patches0EIB1c_IB1s_TNtB1T_7CodeLocNtNtCsexYYUdYSQU6_5alloc6string6StringEENCNCB2J_00EENtNtNtB9_6traits8iterator8Iterator4nextCskIqAKC4t9Ft_2yr.exit.i ]
  %i.ew = phi <4 x i32> [ %i.ef, %_RNvXsi_NtNtNtCskKLDkoKarTP_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report7SectionENCNvMs0_B1T_NtB1T_6Report7patches0EIB1c_IB1s_TNtB1T_7CodeLocNtNtCsexYYUdYSQU6_5alloc6string6StringEENCNCB2J_00EENtNtNtB9_6traits8iterator8Iterator4nextCskIqAKC4t9Ft_2yr.exit.thread.i ], [ %i.eu, %_RNvXsi_NtNtNtCskKLDkoKarTP_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report7SectionENCNvMs0_B1T_NtB1T_6Report7patches0EIB1c_IB1s_TNtB1T_7CodeLocNtNtCsexYYUdYSQU6_5alloc6string6StringEENCNCB2J_00EENtNtNtB9_6traits8iterator8Iterator4nextCskIqAKC4t9Ft_2yr.exit.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !2148
  store i64 %.sroa.0136.1162.i, ptr %i.w, align 8, !noalias !2148
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8137.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8137.i, i64 16, i1 false), !noalias !2148
  store <4 x i32> %i.ew, ptr %.sroa.10.0..sroa_idx.i12, align 8, !noalias !2148
  store ptr %.sroa.18140.1157.i, ptr %.sroa.18140.0..sroa_idx.i, align 8, !noalias !2148
  br i1 %.sroa.07.0.i, label %bb.bd, label %bb.bc

_RNvXsi_NtNtNtCskKLDkoKarTP_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report7SectionENCNvMs0_B1T_NtB1T_6Report7patches0EIB1c_IB1s_TNtB1T_7CodeLocNtNtCsexYYUdYSQU6_5alloc6string6StringEENCNCB2J_00EENtNtNtB9_6traits8iterator8Iterator4nextCskIqAKC4t9Ft_2yr.exit.thread168.i: ; preds = %_RNvYNvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtBe_5slice4iter4IterTNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report7CodeLocNtNtCsexYYUdYSQU6_5alloc6string6StringEENCNCNvMs0_B1m_NtB1m_6Report7patches00ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCskIqAKC4t9Ft_2yr.exit.i9.i.i, %bb.au, %.loopexit52.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i3.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8137.i)
  %i.ex = icmp eq ptr %i.de, %i.cz
  br i1 %i.ex, label %._crit_edge.i, label %bb.ag

bb.bc:                                            ; preds = %bb.bb
  %i.ey = add i32 %i.di, 1                        ; 2 uses
  store i32 %i.ey, ptr %i.y, align 4, !noalias !2148
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %i.ez = phi i32 [ %i.ey, %bb.bc ], [ %i.di, %bb.bb ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !2148
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !2148
  invoke void @_RNvMs_NtNtCs7gfv9tzbXmh_6yara_x8compiler6reportNtB4_5Patch6origin(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.u, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.w)
          to label %bb.be unwind label %.thread195.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.thread195.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.bf, %bb.bd, %bb.bg
  %lpad.loopexit.split-lp356 = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i

bb.be:                                            ; preds = %bb.bd
  %i.fa = load i64, ptr %i.u, align 8, !range !12, !noalias !2148, !noundef !8
  %.not97.i = icmp eq i64 %i.fa, -1
  br i1 %.not97.i, label %bb.bg, label %bb.bf, !prof !11

bb.bf:                                            ; preds = %bb.be
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, ptr noundef nonnull align 8 dereferenceable(24) %i.u, i64 24, i1 false), !noalias !2148
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !2148
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !2148
  invoke void @_RNvMNtCsjqcU1oJFKXj_9hashbrown11rustc_entryINtNtB4_3map7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringINtNtB13_3vec3VecNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report5PatchENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE11rustc_entryCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.aa, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.v)
          to label %bb.bi unwind label %.thread195.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bg:                                            ; preds = %bb.be
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @66) #33
          to label %bb.bh unwind label %.thread195.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bh:                                            ; preds = %bb.bg
  unreachable

bb.bi:                                            ; preds = %bb.bf
  %i.fb = load i64, ptr %i.i, align 8, !range !12, !noalias !2148, !noundef !8 ; 2 uses
  %.not98.i = icmp eq i64 %i.fb, -1
  %i.fc = load ptr, ptr %.sroa.476.0..sroa_idx.i, align 8, !noalias !2148 ; 4 uses
  br i1 %.not98.i, label %bb.bl, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %.sroa.577.0.copyload.i = load ptr, ptr %.sroa.577.0..sroa_idx.i, align 8, !noalias !2148
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !2148
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.621.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.678.0..sroa_idx.i, i64 16, i1 false), !noalias !2148
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !2148
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !2148
  store i64 %i.fb, ptr %i.s, align 8, !noalias !2148
  store ptr %i.fc, ptr %.sroa.419.0..sroa_idx.i, align 8, !noalias !2148
  store ptr %.sroa.577.0.copyload.i, ptr %.sroa.520.0..sroa_idx.i, align 8, !noalias !2148
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #34
  %i.fd = call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 1, 1345) 48, i64 noundef range(i64 1, 17) 8) #34 ; 3 uses
  %i.fe = icmp eq ptr %i.fd, null
  br i1 %i.fe, label %bb.bk, label %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit.i, !prof !11

bb.bk:                                            ; preds = %bb.bj
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 48) #33
          to label %.noexc.i unwind label %bb.bv

.noexc.i:                                         ; preds = %bb.bk
  unreachable

bb.bl:                                            ; preds = %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !2148
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !2148
  %i.ff = getelementptr inbounds i8, ptr %i.fc, i64 -24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !2148
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.t, ptr noundef nonnull align 8 dereferenceable(48) %i.w, i64 48, i1 false), !noalias !2148
  %i.fg = getelementptr inbounds i8, ptr %i.fc, i64 -8 ; 2 uses
  %i.fh = load i64, ptr %i.fg, align 8, !alias.scope !2175, !noundef !8 ; 3 uses
  %i.fi = load i64, ptr %i.ff, align 8, !range !15, !alias.scope !2175, !noundef !8
  %i.fj = icmp eq i64 %i.fh, %i.fi
  br i1 %i.fj, label %bb.bm, label %bb.bp

bb.bm:                                            ; preds = %bb.bl
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report5PatchE8grow_oneCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ff)
          to label %bb.bp unwind label %bb.bn, !noalias !2176

bb.bn:                                            ; preds = %bb.bm
  %i.fk = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report5PatchECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.t) #32
          to label %.body113.i unwind label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.fl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #31
  unreachable

bb.bp:                                            ; preds = %bb.bm, %bb.bl
  %i.fm = getelementptr inbounds i8, ptr %i.fc, i64 -16 ; 2 uses
  %i.fn = load ptr, ptr %i.fm, align 8, !alias.scope !2175, !nonnull !8, !noundef !8
  %i.fo = getelementptr inbounds nuw [48 x i8], ptr %i.fn, i64 %i.fh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.fo, ptr noundef nonnull align 8 dereferenceable(48) %i.t, i64 48, i1 false)
  %i.fp = add i64 %i.fh, 1                        ; 5 uses
  store i64 %i.fp, ptr %i.fg, align 8, !alias.scope !2175
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !2148
  %i.fq = load ptr, ptr %i.fm, align 8, !nonnull !8, !noundef !8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2177
  store ptr %i.a, ptr %i.c, align 8, !noalias !2178
  %i.fr = icmp samesign ult i64 %i.fp, 2
  br i1 %i.fr, label %_RINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report5Patch11sort_by_keyjNCNvNtNtCskIqAKC4t9Ft_2yr8commands3fix17exec_fix_warnings0EB1F_.exit.i, label %bb.bq, !prof !27

bb.bq:                                            ; preds = %bb.bp
  %i.fs = icmp samesign ult i64 %i.fp, 21
  br i1 %i.fs, label %bb.bs, label %bb.br, !prof !27

bb.br:                                            ; preds = %bb.bq
  invoke void @_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6stable14driftsort_mainNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report5PatchNCINvMNtCsexYYUdYSQU6_5alloc5sliceSBZ_11sort_by_keyjNCNvNtNtCskIqAKC4t9Ft_2yr8commands3fix17exec_fix_warnings0E0INtNtB1U_3vec3VecBZ_EEB2K_(ptr noalias nofree noundef nonnull align 8 %i.fq, i64 noundef range(i64 0, 192153584101141163) %i.fp, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #35
          to label %_RINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report5Patch11sort_by_keyjNCNvNtNtCskIqAKC4t9Ft_2yr8commands3fix17exec_fix_warnings0EB1F_.exit.i unwind label %.thread189.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bs:                                            ; preds = %bb.bq
  invoke void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report5PatchNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1m_11sort_by_keyjNCNvNtNtCskIqAKC4t9Ft_2yr8commands3fix17exec_fix_warnings0E0EB38_(ptr noalias nofree noundef nonnull align 8 %i.fq, i64 noundef range(i64 0, 192153584101141163) %i.fp, i64 noundef 1, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %_RINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report5Patch11sort_by_keyjNCNvNtNtCskIqAKC4t9Ft_2yr8commands3fix17exec_fix_warnings0EB1F_.exit.i unwind label %.thread189.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report5Patch11sort_by_keyjNCNvNtNtCskIqAKC4t9Ft_2yr8commands3fix17exec_fix_warnings0EB1F_.exit.i: ; preds = %bb.bs, %bb.br, %bb.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2177
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bu, %_RINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report5Patch11sort_by_keyjNCNvNtNtCskIqAKC4t9Ft_2yr8commands3fix17exec_fix_warnings0EB1F_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !2148
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8137.i)
  br label %bb.ai

.thread189.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.br, %bb.bs, %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit.i, %bb.ca, %bb.cc, %bb.cv, %bb.ag, %bb.cz, %bb.cf, %bb.cd, %._crit_edge.i
  %lpad.loopexit.split-lp362 = landingpad { ptr, i32 }
          cleanup
  br label %.body113.i

_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit.i: ; preds = %bb.bj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.fd, ptr noundef nonnull align 8 dereferenceable(48) %i.w, i64 48, i1 false)
  %i.ft = load i64, ptr %i.db, align 8, !noalias !2148, !noundef !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !2148
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false), !noalias !2148
  %i.fu = load ptr, ptr %.sroa.621.0..sroa_idx.i, align 8, !noalias !2148, !nonnull !8, !align !13, !noundef !8
  store i64 1, ptr %i.dc, align 8, !noalias !2148
  store ptr %i.fd, ptr %.sroa.423.0..sroa_idx.i, align 8, !noalias !2148
  store i64 1, ptr %.sroa.524.0..sroa_idx.i, align 8, !noalias !2148
  %i.fv = invoke noundef nonnull ptr @_RNvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCsexYYUdYSQU6_5alloc6string6StringINtNtBT_3vec3VecNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report5PatchEEE14insert_no_growCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.fu, i64 noundef %i.ft, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.h)
          to label %bb.bu unwind label %.thread189.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.bu:                                            ; preds = %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !2148
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !2148
  br label %bb.bt

bb.bv:                                            ; preds = %bb.bk
  %i.fw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.s)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjqcU1oJFKXj_9hashbrown11rustc_entry16RustcVacantEntryNtNtCsexYYUdYSQU6_5alloc6string6StringINtNtB1D_3vec3VecNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report5PatchEEECskIqAKC4t9Ft_2yr.exit.i unwind label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.fx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.s)
          to label %.body unwind label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.fy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjqcU1oJFKXj_9hashbrown11rustc_entry16RustcVacantEntryNtNtCsexYYUdYSQU6_5alloc6string6StringINtNtB1D_3vec3VecNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report5PatchEEECskIqAKC4t9Ft_2yr.exit.i: ; preds = %bb.bv
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.s)
          to label %.thread.i unwind label %bb.by

bb.by:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjqcU1oJFKXj_9hashbrown11rustc_entry16RustcVacantEntryNtNtCsexYYUdYSQU6_5alloc6string6StringINtNtB1D_3vec3VecNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report5PatchEEECskIqAKC4t9Ft_2yr.exit.i, %.loopexit.split-lp205.i, %.thread.i, %.body113.i, %.body.i
  %i.fz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body

.body:                                            ; preds = %bb.bw, %bb.by
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #31
  unreachable

.thread.i:                                        ; preds = %.thread195.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjqcU1oJFKXj_9hashbrown11rustc_entry16RustcVacantEntryNtNtCsexYYUdYSQU6_5alloc6string6StringINtNtB1D_3vec3VecNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report5PatchEEECskIqAKC4t9Ft_2yr.exit.i
  %.pn188.i = phi { ptr, i32 } [ %i.fw, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjqcU1oJFKXj_9hashbrown11rustc_entry16RustcVacantEntryNtNtCsexYYUdYSQU6_5alloc6string6StringINtNtB1D_3vec3VecNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report5PatchEEECskIqAKC4t9Ft_2yr.exit.i ], [ %lpad.loopexit.split-lp356, %.thread195.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report5PatchECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef align 8 dereferenceable(48) %i.w) #32
          to label %.body113.i unwind label %bb.by

bb.bz:                                            ; preds = %._crit_edge.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !2148
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.r, ptr noundef nonnull align 8 dereferenceable(40) %i.j, i64 40, i1 false), !noalias !2148
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !2148
  %.sroa.480.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.sroa.581.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %.sroa.438.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 3 uses
  %.sroa.539.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 4 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  br label %bb.ca

bb.ca:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskIqAKC4t9Ft_2yr.exit.i, %bb.bz
  %i.gb = invoke { ptr, ptr } @_RNvXsG_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_4IterNtNtCsexYYUdYSQU6_5alloc6string6StringINtNtBO_3vec3VecNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report5PatchEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.r)
          to label %bb.cb unwind label %.thread189.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.cb:                                            ; preds = %bb.ca
  %i.gc = extractvalue { ptr, ptr } %i.gb, 0      ; 3 uses
  %i.gd = extractvalue { ptr, ptr } %i.gb, 1      ; 3 uses
  %.not100.i = icmp eq ptr %i.gc, null
  br i1 %.not100.i, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
end_hunk_0
