Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/ide_ssr-f5db77c992f4af7d.ide_ssr.284584ac21e5de80-cgu.09?download=true
inline.NumInlined: 482
inline.NumDeleted: 275
begin_hunk_0_@_RNvMNtCs3smBju6uAx0_7ide_ssr7parsingNtB2_10ParsedRule3new:bb.a
  br i1 %i.dp, label %.noexc.i78, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterNtNtCs3smBju6uAx0_7ide_ssr7parsing10ParsedRuleENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMs_BS_NtBS_11RuleBuilder5build0EBU_.exit.i

.noexc.i78:                                       ; preds = %bb.bh
  %i.dq = load atomic i64, ptr @_RNvNtCs8yWYkJLPqIi_8cov_mark4___rt5LEVEL monotonic, align 8, !noalias !533 ; 2 uses
  %.not.i.i79 = icmp eq i64 %i.dq, 0
  br i1 %.not.i.i79, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterNtNtCs3smBju6uAx0_7ide_ssr7parsing10ParsedRuleENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMs_BS_NtBS_11RuleBuilder5build0EBU_.exit.i, label %bb.bi, !prof !4

bb.bi:                                            ; preds = %.noexc.i78
  %i.dr = icmp slt i64 %i.dq, 0
  br i1 %i.dr, label %bb.bj, label %.noexc3.i

.noexc3.i:                                        ; preds = %bb.bj, %bb.bi
  invoke void @_RNvNvNtCs8yWYkJLPqIi_8cov_mark4___rt3hit8hit_cold(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @21, i64 noundef 32)
          to label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterNtNtCs3smBju6uAx0_7ide_ssr7parsing10ParsedRuleENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMs_BS_NtBS_11RuleBuilder5build0EBU_.exit.i unwind label %.loopexit.split-lp.i, !noalias !531

bb.bj:                                            ; preds = %bb.bi
  invoke void @_RNvNvNtCs8yWYkJLPqIi_8cov_mark4___rt3hit13add_to_survey(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @21, i64 noundef 32)
          to label %.noexc3.i unwind label %.loopexit.split-lp.i, !noalias !531

bb.bk:                                            ; preds = %.noexc6.i
  %i.ds = load ptr, ptr %i.dj, align 8, !noalias !534, !nonnull !5, !noundef !5 ; 2 uses
  %i.dt = icmp ugt i64 %i.di, 55
  call void @llvm.assume(i1 %i.dt)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !534
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(56) %i.ds, ptr noundef nonnull readonly align 1 dereferenceable(56) @22, i64 range(i64 0, -9223372036854775808) 56, i1 false), !noalias !535
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.di, ptr %i.du, align 8, !alias.scope !531, !noalias !532
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ds, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !531, !noalias !532
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 56, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !531, !noalias !532
  store i64 1, ptr %0, align 8, !alias.scope !531, !noalias !532
  %i.dv = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  invoke void @_RNvXsg_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_8RawTableTNtCs42xZ1oUXfIG_8smol_str7SmolStrNtNtCs3smBju6uAx0_7ide_ssr7parsing11PlaceholderEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropB1q_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.dv)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map7HashMapNtCs42xZ1oUXfIG_8smol_str7SmolStrNtNtCs3smBju6uAx0_7ide_ssr7parsing11PlaceholderNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEEB27_.exit.i.i unwind label %bb.bl, !noalias !531

bb.bl:                                            ; preds = %bb.bk
  %i.dw = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs3smBju6uAx0_7ide_ssr7parsing10ParsedRuleEEB1c_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.k) #28
          to label %.body unwind label %bb.bo, !noalias !531

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map7HashMapNtCs42xZ1oUXfIG_8smol_str7SmolStrNtNtCs3smBju6uAx0_7ide_ssr7parsing11PlaceholderNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEEB27_.exit.i.i: ; preds = %bb.bk
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtCs3smBju6uAx0_7ide_ssr7parsing10ParsedRuleENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.k)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs3smBju6uAx0_7ide_ssr7parsing11RuleBuilderEBF_.exit.i unwind label %bb.bm, !noalias !531

bb.bm:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map7HashMapNtCs42xZ1oUXfIG_8smol_str7SmolStrNtNtCs3smBju6uAx0_7ide_ssr7parsing11PlaceholderNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEEB27_.exit.i.i
  %i.dx = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtCs3smBju6uAx0_7ide_ssr7parsing10ParsedRuleENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.k)
          to label %.body unwind label %bb.bn, !noalias !531

bb.bn:                                            ; preds = %bb.bm
  %i.dy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #27, !noalias !531
  unreachable

bb.bo:                                            ; preds = %bb.bl
  %i.dz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #27, !noalias !531
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs3smBju6uAx0_7ide_ssr7parsing11RuleBuilderEBF_.exit.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map7HashMapNtCs42xZ1oUXfIG_8smol_str7SmolStrNtNtCs3smBju6uAx0_7ide_ssr7parsing11PlaceholderNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEEB27_.exit.i.i
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtCs3smBju6uAx0_7ide_ssr7parsing10ParsedRuleENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.k)
          to label %_RNvMs_NtCs3smBju6uAx0_7ide_ssr7parsingNtB4_11RuleBuilder5build.exit unwind label %.thread141.thread177

bb.bp:                                            ; preds = %bb.bf
  %i.ea = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #27, !noalias !531
  unreachable

_RNvMs_NtCs3smBju6uAx0_7ide_ssr7parsingNtB4_11RuleBuilder5build.exit: ; preds = %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterNtNtCs3smBju6uAx0_7ide_ssr7parsing10ParsedRuleENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMs_BS_NtBS_11RuleBuilder5build0EBU_.exit.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs3smBju6uAx0_7ide_ssr7parsing11RuleBuilderEBF_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %i.eb = load i64, ptr %i.m, align 8, !range !11, !alias.scope !536, !noundef !5
  %i.ec = icmp eq i64 %i.eb, -1
  br i1 %i.ec, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbSS6DM8SDEO_5alloc6string6StringEECs3smBju6uAx0_7ide_ssr.exit, label %bb.bq

bb.bq:                                            ; preds = %_RNvMs_NtCs3smBju6uAx0_7ide_ssr7parsingNtB4_11RuleBuilder5build.exit
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs3smBju6uAx0_7ide_ssr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs3smBju6uAx0_7ide_ssr.exit.i unwind label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.ed = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs3smBju6uAx0_7ide_ssr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %.body85 unwind label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.ee = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #27
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs3smBju6uAx0_7ide_ssr.exit.i: ; preds = %bb.bq
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs3smBju6uAx0_7ide_ssr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbSS6DM8SDEO_5alloc6string6StringEECs3smBju6uAx0_7ide_ssr.exit unwind label %bb.t

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbSS6DM8SDEO_5alloc6string6StringEECs3smBju6uAx0_7ide_ssr.exit: ; preds = %_RNvMs_NtCs3smBju6uAx0_7ide_ssr7parsingNtB4_11RuleBuilder5build.exit, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs3smBju6uAx0_7ide_ssr.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs3smBju6uAx0_7ide_ssr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs3smBju6uAx0_7ide_ssr.exit unwind label %bb.bt

bb.bt:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbSS6DM8SDEO_5alloc6string6StringEECs3smBju6uAx0_7ide_ssr.exit
  %i.ef = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs3smBju6uAx0_7ide_ssr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %common.resume unwind label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.eg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #27
  unreachable

common.resume:                                    ; preds = %.body85, %bb.bt
  %common.resume.op = phi { ptr, i32 } [ %i.ef, %bb.bt ], [ %.pn53, %.body85 ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs3smBju6uAx0_7ide_ssr.exit: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbSS6DM8SDEO_5alloc6string6StringEECs3smBju6uAx0_7ide_ssr.exit
  call void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs3smBju6uAx0_7ide_ssr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  ret void

bb.bv:                                            ; preds = %bb.av
  %i.eh = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %.not.i88 = icmp eq ptr %i.co, null
  br i1 %.not.i88, label %.thread131, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.ei = getelementptr inbounds nuw i8, ptr %i.co, i64 48 ; 2 uses
  %i.ej = load i32, ptr %i.ei, align 4, !noundef !5
  %i.ek = add i32 %i.ej, -1                       ; 2 uses
  store i32 %i.ek, ptr %i.ei, align 4
  %i.el = icmp eq i32 %i.ek, 0
  br i1 %i.el, label %bb.bx, label %.thread131

bb.bx:                                            ; preds = %bb.bw
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.co) #32
          to label %.thread131 unwind label %bb.ad

bb.by:                                            ; preds = %bb.aq
  %i.em = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %.not.i90 = icmp eq ptr %i.cj, null
  br i1 %.not.i90, label %.thread131, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.en = getelementptr inbounds nuw i8, ptr %i.cj, i64 48 ; 2 uses
  %i.eo = load i32, ptr %i.en, align 4, !noundef !5
  %i.ep = add i32 %i.eo, -1                       ; 2 uses
  store i32 %i.ep, ptr %i.en, align 4
  %i.eq = icmp eq i32 %i.ep, 0
  br i1 %i.eq, label %bb.ca, label %.thread131

bb.ca:                                            ; preds = %bb.bz
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.cj) #32
          to label %.thread131 unwind label %bb.ad

bb.cb:                                            ; preds = %bb.al
  %i.er = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %.not.i93 = icmp eq ptr %i.bm, null
  br i1 %.not.i93, label %.thread131, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.es = getelementptr inbounds nuw i8, ptr %i.bm, i64 48 ; 2 uses
  %i.et = load i32, ptr %i.es, align 4, !noundef !5
  %i.eu = add i32 %i.et, -1                       ; 2 uses
  store i32 %i.eu, ptr %i.es, align 4
  %i.ev = icmp eq i32 %i.eu, 0
  br i1 %i.ev, label %bb.cd, label %.thread131

bb.cd:                                            ; preds = %bb.cc
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.bm) #32
          to label %.thread131 unwind label %bb.ad

bb.ce:                                            ; preds = %bb.ai
  %i.ew = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %.not.i96 = icmp eq ptr %i.bx, null
  br i1 %.not.i96, label %.thread131, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.ex = getelementptr inbounds nuw i8, ptr %i.bx, i64 48 ; 2 uses
  %i.ey = load i32, ptr %i.ex, align 4, !noundef !5
  %i.ez = add i32 %i.ey, -1                       ; 2 uses
  store i32 %i.ez, ptr %i.ex, align 4
  %i.fa = icmp eq i32 %i.ez, 0
  br i1 %i.fa, label %bb.cg, label %.thread131

bb.cg:                                            ; preds = %bb.cf
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.bx) #32
          to label %.thread131 unwind label %bb.ad

.thread131:                                       ; preds = %bb.cf, %bb.ce, %bb.cg, %bb.cc, %bb.cb, %bb.cd, %bb.bz, %bb.by, %bb.ca, %bb.bw, %bb.bv, %bb.bx, %bb.ax, %bb.as, %bb.an, %bb.aj, %bb.ab, %bb.ac, %bb.y, %.thread148
  %.pn140 = phi { ptr, i32 } [ %lpad.thr_comm, %.thread148 ], [ %i.bh, %bb.y ], [ %i.bn, %bb.ab ], [ %i.ce, %bb.aj ], [ %i.er, %bb.cc ], [ %i.cg, %bb.an ], [ %i.em, %bb.bz ], [ %i.cl, %bb.as ], [ %i.eh, %bb.bw ], [ %i.cq, %bb.ax ], [ %i.bn, %bb.ac ], [ %i.eh, %bb.bx ], [ %i.eh, %bb.bv ], [ %i.em, %bb.ca ], [ %i.em, %bb.by ], [ %i.er, %bb.cd ], [ %i.er, %bb.cb ], [ %i.ew, %bb.cg ], [ %i.ew, %bb.ce ], [ %i.ew, %bb.cf ] ; 3 uses
  %.sroa.0.1138 = phi i64 [ %.sroa.0.2.ph, %.thread148 ], [ 1, %bb.y ], [ 1, %bb.ab ], [ %.sroa.0.0128160, %bb.aj ], [ %.sroa.0.0129, %bb.cc ], [ %.sroa.0.0129, %bb.an ], [ %.sroa.0.0129, %bb.bz ], [ %.sroa.0.0129, %bb.as ], [ %.sroa.0.0129, %bb.bw ], [ %.sroa.0.0129, %bb.ax ], [ 1, %bb.ac ], [ %.sroa.0.0129, %bb.bx ], [ %.sroa.0.0129, %bb.bv ], [ %.sroa.0.0129, %bb.ca ], [ %.sroa.0.0129, %bb.by ], [ %.sroa.0.0129, %bb.cd ], [ %.sroa.0.0129, %bb.cb ], [ 1, %bb.cg ], [ 1, %bb.ce ], [ 1, %bb.cf ]
  %.sroa.7.1137 = phi ptr [ %.sroa.7.2.ph, %.thread148 ], [ %i.ay, %bb.y ], [ %i.ay, %bb.ab ], [ %.sroa.7.0126161, %bb.aj ], [ %.sroa.7.0127, %bb.cc ], [ %.sroa.7.0127, %bb.an ], [ %.sroa.7.0127, %bb.bz ], [ %.sroa.7.0127, %bb.as ], [ %.sroa.7.0127, %bb.bw ], [ %.sroa.7.0127, %bb.ax ], [ %i.ay, %bb.ac ], [ %.sroa.7.0127, %bb.bx ], [ %.sroa.7.0127, %bb.bv ], [ %.sroa.7.0127, %bb.ca ], [ %.sroa.7.0127, %bb.by ], [ %.sroa.7.0127, %bb.cd ], [ %.sroa.7.0127, %bb.cb ], [ %.sroa.7.0126161, %bb.cg ], [ %.sroa.7.0126161, %bb.ce ], [ %.sroa.7.0126161, %bb.cf ] ; 3 uses
  %3 = icmp eq i64 %.sroa.0.1138, 0
  %.not.i.i99 = icmp eq ptr %.sroa.7.1137, null
  %or.cond.i100 = or i1 %3, %.not.i.i99
  br i1 %or.cond.i100, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEuEEECs3smBju6uAx0_7ide_ssr.exit102, label %bb.ch

bb.ch:                                            ; preds = %.thread131
  %i.fb = getelementptr inbounds nuw i8, ptr %.sroa.7.1137, i64 48 ; 2 uses
  %i.fc = load i32, ptr %i.fb, align 4, !noundef !5
  %i.fd = add i32 %i.fc, -1                       ; 2 uses
  store i32 %i.fd, ptr %i.fb, align 4
  %i.fe = icmp eq i32 %i.fd, 0
  br i1 %i.fe, label %bb.ci, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEuEEECs3smBju6uAx0_7ide_ssr.exit102

bb.ci:                                            ; preds = %bb.ch
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.7.1137) #32
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEuEEECs3smBju6uAx0_7ide_ssr.exit102 unwind label %bb.ad

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEuEEECs3smBju6uAx0_7ide_ssr.exit102: ; preds = %.thread141, %bb.ch, %.thread131, %bb.ci, %.thread
  %.pn.pn118 = phi { ptr, i32 } [ %i.az, %.thread ], [ %lpad.thr_comm.split-lp176, %.thread141 ], [ %.pn140, %bb.ci ], [ %.pn140, %.thread131 ], [ %.pn140, %bb.ch ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs3smBju6uAx0_7ide_ssr7parsing11RuleBuilderEBF_(ptr noalias nofree noundef align 8 dereferenceable(56) %i.l) #28
          to label %.body unwind label %bb.ad
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCs3smBju6uAx0_7ide_ssr(ptr noalias nofree noundef nonnull readonly captures(none) %0, i64 noundef range(i64 0, -9223372036854775808) %1, ptr noalias nofree noundef nonnull readonly captures(none) %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #3 {
bb.a:
  %.not = icmp samesign ult i64 %1, %3
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a, %bb.c
  %.sroa.0.0 = phi i1 [ %i.a, %bb.c ], [ false, %bb.a ]
  ret i1 %.sroa.0.0

bb.c:                                             ; preds = %bb.a
  %bcmp.i = tail call i32 @bcmp(ptr nonnull readonly %2, ptr nonnull readonly %0, i64 %3)
  %i.a = icmp eq i32 %bcmp.i, 0
  br label %bb.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_RNvMNtCshzWfHUSfYae_4core5sliceSh9ends_withCs3smBju6uAx0_7ide_ssr(ptr noalias nofree noundef nonnull readonly captures(none) %0, i64 noundef range(i64 0, -9223372036854775808) %1, ptr noalias nofree noundef nonnull readonly captures(none) %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #3 {
bb.a:
  %.not = icmp samesign ult i64 %1, %3
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a, %bb.c
  %.sroa.0.0 = phi i1 [ %i.c, %bb.c ], [ false, %bb.a ]
  ret i1 %.sroa.0.0

bb.c:                                             ; preds = %bb.a
  %i.a = sub nuw nsw i64 %1, %3
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %i.a
  %bcmp.i = tail call i32 @bcmp(ptr nonnull readonly %2, ptr nonnull readonly %i.b, i64 %3)
  %i.c = icmp eq i32 %bcmp.i, 0
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs2_NtCs3smBju6uAx0_7ide_ssr7parsingNtB5_10RawPattern12as_rust_code(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr nofree readonly captures(address) %.8.val, i64 %.16.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 0, ptr %i.a, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.54.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 4 uses
  store i64 0, ptr %.sroa.54.0..sroa_idx, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %.idx = mul nuw nsw i64 %.16.val, 72
  %i.b = getelementptr inbounds nuw i8, ptr %.8.val, i64 %.idx
  %i.c = icmp eq i64 %.16.val, 0
  br i1 %i.c, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE15append_elementsCs3smBju6uAx0_7ide_ssr.exit
  %.sroa.0.01 = phi ptr [ %i.d, %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE15append_elementsCs3smBju6uAx0_7ide_ssr.exit ], [ %.8.val, %bb.a ] ; 10 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.0.01, i64 72 ; 2 uses
  %i.e = load i64, ptr %.sroa.0.01, align 8, !range !11, !noundef !5
  %.not = icmp eq i64 %i.e, -1
  br i1 %.not, label %bb.c, label %bb.b

._crit_edge:                                      ; preds = %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE15append_elementsCs3smBju6uAx0_7ide_ssr.exit, %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.b:                                             ; preds = %.lr.ph
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.0.01, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !5, !noundef !5
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.0.01, i64 40
  %i.i = load i64, ptr %i.h, align 8, !noundef !5
  br label %bb.h

bb.c:                                             ; preds = %.lr.ph
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.01, i64 8
  %i.k = load i8, ptr %i.j, align 8, !range !13, !noundef !5 ; 2 uses
  %i.l = icmp samesign ugt i8 %i.k, 23
  %i.m = zext nneg i8 %i.k to i64                 ; 2 uses
  %i.n = add nsw i64 %i.m, -23
  %i.o = select i1 %i.l, i64 %i.n, i64 0
  switch i64 %i.o, label %bb.d [
    i64 0, label %bb.e
    i64 1, label %bb.f
    i64 2, label %bb.g
  ]

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.0.01, i64 9
  br label %bb.h

bb.f:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.0.01, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !nonnull !5, !noundef !5
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.01, i64 24
  %i.t = load i64, ptr %i.s, align 8, !noundef !5
  br label %bb.h

bb.g:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.01, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !nonnull !5, !noundef !5
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0.01, i64 24
  %i.x = load i64, ptr %i.w, align 8, !noundef !5
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.f, %bb.g, %bb.b
  %.sroa.5.0 = phi i64 [ %i.i, %bb.b ], [ %i.m, %bb.e ], [ %i.t, %bb.f ], [ %i.x, %bb.g ] ; 4 uses
  %.sroa.02.0 = phi ptr [ %i.g, %bb.b ], [ %i.p, %bb.e ], [ %i.r, %bb.f ], [ %i.y, %bb.g ]
  invoke void @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCs3smBju6uAx0_7ide_ssr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %.sroa.5.0)
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %bb.h
  %i.z = load i64, ptr %.sroa.54.0..sroa_idx, align 8, !alias.scope !539, !noundef !5 ; 3 uses
  %i.aa = icmp sgt i64 %i.z, -1
  call void @llvm.assume(i1 %i.aa)
  %.not.i = icmp eq i64 %.sroa.5.0, 0
  br i1 %.not.i, label %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE15append_elementsCs3smBju6uAx0_7ide_ssr.exit, label %bb.i

bb.i:                                             ; preds = %.noexc
  %i.ab = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !539, !nonnull !5, !noundef !5
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.z
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ac, ptr nonnull readonly align 1 %.sroa.02.0, i64 %.sroa.5.0, i1 false)
  %.pre.i = load i64, ptr %.sroa.54.0..sroa_idx, align 8, !alias.scope !539
  br label %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE15append_elementsCs3smBju6uAx0_7ide_ssr.exit

_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE15append_elementsCs3smBju6uAx0_7ide_ssr.exit: ; preds = %.noexc, %bb.i
  %i.ad = phi i64 [ %.pre.i, %bb.i ], [ %i.z, %.noexc ]
  %i.ae = add i64 %i.ad, %.sroa.5.0
  store i64 %i.ae, ptr %.sroa.54.0..sroa_idx, align 8, !alias.scope !539
  %i.af = icmp eq ptr %i.d, %i.b
  br i1 %i.af, label %._crit_edge, label %.lr.ph

bb.j:                                             ; preds = %bb.h
  %i.ag = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs3smBju6uAx0_7ide_ssr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a) #28
          to label %bb.l unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #27
  unreachable

bb.l:                                             ; preds = %bb.j
  resume { ptr, i32 } %i.ag
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs2_NtCs3smBju6uAx0_7ide_ssr8matchingNtNtB7_7parsing8NodeKind7matches(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 3 uses
  %.sroa.5 = alloca [16 x i8], align 8            ; 2 uses
  %i.d = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %1, ptr %i.d, align 8
  %i.e = load atomic i64, ptr @_RNvNtCs8yWYkJLPqIi_8cov_mark4___rt5LEVEL monotonic, align 8, !noalias !544 ; 2 uses
  %.not.i = icmp eq i64 %i.e, 0
  br i1 %.not.i, label %_RNvNtCs8yWYkJLPqIi_8cov_mark4___rt3hit.exit, label %bb.b, !prof !4

bb.b:                                             ; preds = %bb.a
  %i.f = icmp slt i64 %i.e, 0
  br i1 %i.f, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  tail call void @_RNvNvNtCs8yWYkJLPqIi_8cov_mark4___rt3hit8hit_cold(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @17, i64 noundef 18)
  br label %_RNvNtCs8yWYkJLPqIi_8cov_mark4___rt3hit.exit

bb.d:                                             ; preds = %bb.b
  tail call void @_RNvNvNtCs8yWYkJLPqIi_8cov_mark4___rt3hit13add_to_survey(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @17, i64 noundef 18)
  br label %bb.c

_RNvNtCs8yWYkJLPqIi_8cov_mark4___rt3hit.exit:     ; preds = %bb.a, %bb.c
  %i.g = tail call noundef i16 @_RNvMs4_NtCs9GitHPCrz2Q_5rowan3apiINtB5_10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageE4kindCs3smBju6uAx0_7ide_ssr(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %2)
  %i.h = icmp eq i16 %i.g, 230
  br i1 %i.h, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_RNvNtCs8yWYkJLPqIi_8cov_mark4___rt3hit.exit
  %i.i = tail call noundef zeroext i1 @_RNvNtCs3smBju6uAx0_7ide_ssr8matching28recording_match_fail_reasons()
  br i1 %i.i, label %bb.g, label %bb.i

end_hunk_0
begin_hunk_1_@_RNvMs4_NtCs3smBju6uAx0_7ide_ssr7parsingNtB5_8NodeKind4from:bb.a
  %i.z = zext i1 %i.y to i32
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %bb.h, label %.split

.split:                                           ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCshzWfHUSfYae_4core3fmtRNtCs42xZ1oUXfIG_8smol_str7SmolStrNtB6_7Display3fmtCs3smBju6uAx0_7ide_ssr, ptr %.sroa.44.0..sroa_idx, align 8
  call void @_RNvNvNtCsbSS6DM8SDEO_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull @19, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.i

bb.h:                                             ; preds = %bb.g
  store i64 -1, ptr %0, align 8
  br label %bb.i

bb.i:                                             ; preds = %.split, %bb.h
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs_NtCs3smBju6uAx0_7ide_ssr7parsingNtB4_11RuleBuilder7try_add(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1, i64 noundef range(i64 0, 2) %2, ptr %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  %i.c = alloca [48 x i8], align 8                ; 7 uses
  %i.d = alloca [48 x i8], align 8                ; 7 uses
  %i.e = icmp eq ptr %1, null
  %.pre = trunc nuw i64 %2 to i1                  ; 3 uses
  br i1 %i.e, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %.pre, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = icmp eq ptr %3, null
  br i1 %i.f, label %bb.w, label %bb.n

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke void @_RNvXNtCsfjX3T6UU9IB_9hashbrown3mapINtB2_7HashMapNtCs42xZ1oUXfIG_8smol_str7SmolStrNtNtCs3smBju6uAx0_7ide_ssr7parsing11PlaceholderNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtCshzWfHUSfYae_4core5clone5Clone5cloneB1l_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.g)
          to label %bb.e unwind label %bb.k

bb.e:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr %1, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store ptr null, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !552, !noalias !553, !noundef !5 ; 3 uses
  %i.l = load i64, ptr %0, align 8, !range !8, !alias.scope !552, !noalias !553, !noundef !5
  %i.m = icmp eq i64 %i.k, %i.l
  br i1 %i.m, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvMs4_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtCs3smBju6uAx0_7ide_ssr7parsing10ParsedRuleE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.i unwind label %bb.g, !noalias !553

bb.g:                                             ; preds = %bb.f
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs3smBju6uAx0_7ide_ssr7parsing10ParsedRuleEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.c) #28
          to label %.critedge unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #27
  unreachable

bb.i:                                             ; preds = %bb.f, %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !552, !noalias !553, !nonnull !5, !noundef !5
  %i.r = getelementptr inbounds nuw [48 x i8], ptr %i.q, i64 %i.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.r, ptr noundef nonnull align 8 dereferenceable(48) %i.c, i64 48, i1 false)
  %i.s = add i64 %i.k, 1
  store i64 %i.s, ptr %i.j, align 8, !alias.scope !552, !noalias !553
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.j

bb.j:                                             ; preds = %bb.s, %bb.i
  %.sroa.0.0 = xor i1 %.pre, true
  br label %.thread

.critedge:                                        ; preds = %.noexc21, %bb.v, %bb.q, %bb.k, %bb.l, %bb.g
  %.pn = phi { ptr, i32 } [ %i.an, %.noexc21 ], [ %i.t, %bb.k ], [ %i.an, %bb.v ], [ %i.t, %bb.l ], [ %i.ag, %bb.q ], [ %i.n, %bb.g ]
  resume { ptr, i32 } %.pn

bb.k:                                             ; preds = %bb.d
  %i.t = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.v = load i32, ptr %i.u, align 4, !noundef !5
  %i.w = add i32 %i.v, -1                         ; 2 uses
  store i32 %i.w, ptr %i.u, align 4
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %bb.l, label %.critedge

bb.l:                                             ; preds = %bb.k
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %1) #32
          to label %.critedge unwind label %bb.m

bb.m:                                             ; preds = %bb.v, %bb.u, %bb.l
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #27
  unreachable

bb.n:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke void @_RNvXNtCsfjX3T6UU9IB_9hashbrown3mapINtB2_7HashMapNtCs42xZ1oUXfIG_8smol_str7SmolStrNtNtCs3smBju6uAx0_7ide_ssr7parsing11PlaceholderNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtCshzWfHUSfYae_4core5clone5Clone5cloneB1l_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.z)
          to label %bb.o unwind label %bb.t

bb.o:                                             ; preds = %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr %1, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store ptr %3, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !alias.scope !554, !noalias !555, !noundef !5 ; 3 uses
  %i.ae = load i64, ptr %0, align 8, !range !8, !alias.scope !554, !noalias !555, !noundef !5
  %i.af = icmp eq i64 %i.ad, %i.ae
  br i1 %i.af, label %bb.p, label %bb.s

bb.p:                                             ; preds = %bb.o
  invoke void @_RNvMs4_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtCs3smBju6uAx0_7ide_ssr7parsing10ParsedRuleE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.s unwind label %bb.q, !noalias !555

bb.q:                                             ; preds = %bb.p
  %i.ag = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs3smBju6uAx0_7ide_ssr7parsing10ParsedRuleEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.d) #28
          to label %.critedge unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #27
  unreachable

bb.s:                                             ; preds = %bb.p, %bb.o
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !alias.scope !554, !noalias !555, !nonnull !5, !noundef !5
  %i.ak = getelementptr inbounds nuw [48 x i8], ptr %i.aj, i64 %i.ad
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ak, ptr noundef nonnull align 8 dereferenceable(48) %i.d, i64 48, i1 false)
  %i.al = add i64 %i.ad, 1
  store i64 %i.al, ptr %i.ac, align 8, !alias.scope !554, !noalias !555
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.j

.thread:                                          ; preds = %bb.a, %bb.j
  %.sroa.0.1 = phi i1 [ %.sroa.0.0, %bb.j ], [ true, %bb.a ]
  %i.am = icmp ne ptr %3, null
  %or.cond3 = and i1 %i.am, %.sroa.0.1
  %or.cond = select i1 %.pre, i1 %or.cond3, i1 false
  br i1 %or.cond, label %bb.x, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECs3smBju6uAx0_7ide_ssr.exit29

bb.t:                                             ; preds = %bb.n
  %i.an = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 4, !noundef !5
  %i.aq = add i32 %i.ap, -1                       ; 2 uses
  store i32 %i.aq, ptr %i.ao, align 4
  %i.ar = icmp eq i32 %i.aq, 0
  br i1 %i.ar, label %bb.u, label %.noexc21

bb.u:                                             ; preds = %bb.t
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %3) #32
          to label %.noexc21 unwind label %bb.m

.noexc21:                                         ; preds = %bb.u, %bb.t
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.at = load i32, ptr %i.as, align 4, !noundef !5
  %i.au = add i32 %i.at, -1                       ; 2 uses
  store i32 %i.au, ptr %i.as, align 4
  %i.av = icmp eq i32 %i.au, 0
  br i1 %i.av, label %bb.v, label %.critedge

bb.v:                                             ; preds = %.noexc21
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %1) #32
          to label %.critedge unwind label %bb.m

bb.w:                                             ; preds = %bb.c
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !noundef !5
  %i.ay = add i32 %i.ax, -1                       ; 2 uses
  store i32 %i.ay, ptr %i.aw, align 4
  %i.az = icmp eq i32 %i.ay, 0
  br i1 %i.az, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECs3smBju6uAx0_7ide_ssr.exit29.sink.split, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECs3smBju6uAx0_7ide_ssr.exit29

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECs3smBju6uAx0_7ide_ssr.exit29.sink.split: ; preds = %bb.w, %bb.x
  %.sink = phi ptr [ %3, %bb.x ], [ %1, %bb.w ]
  tail call void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sink) #32
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECs3smBju6uAx0_7ide_ssr.exit29

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECs3smBju6uAx0_7ide_ssr.exit29: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECs3smBju6uAx0_7ide_ssr.exit29.sink.split, %bb.w, %bb.x, %.thread
  ret void

bb.x:                                             ; preds = %.thread
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 4, !noundef !5
  %i.bc = add i32 %i.bb, -1                       ; 2 uses
  store i32 %i.bc, ptr %i.ba, align 4
  %i.bd = icmp eq i32 %i.bc, 0
  br i1 %i.bd, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECs3smBju6uAx0_7ide_ssr.exit29.sink.split, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECs3smBju6uAx0_7ide_ssr.exit29
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 8 ptr @_RNvMs_NtCsbSS6DM8SDEO_5alloc5boxedINtB4_3BoxINtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc4list5BlockNtNtNtCs9GitHPCrz2Q_5rowan5green4node9GreenNodeEE13new_zeroed_inCs3smBju6uAx0_7ide_ssr() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #30
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(504) ptr @_RNvCsiZ68L5R9VjM_7___rustc19___rust_alloc_zeroed(i64 noundef 504, i64 noundef 8) #30 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !14

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 504) #33
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 8 ptr @_RNvMs_NtCsbSS6DM8SDEO_5alloc5boxedINtB4_3BoxNtNtCs3smBju6uAx0_7ide_ssr7parsing10ConstraintE13new_uninit_inBK_() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #30
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(8) ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef range(i64 8, 513) 8, i64 noundef 8) #30 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !14

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 8) #33
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 8 ptr @_RNvMs_NtCsbSS6DM8SDEO_5alloc5boxedINtB4_3BoxNtNtCs8K4cjrcxBsw_6hir_ty9consteval14ConstEvalErrorE13new_uninit_inCs3smBju6uAx0_7ide_ssr() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #30
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(48) ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef range(i64 8, 513) 48, i64 noundef 8) #30 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !14

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 48) #33
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 8 ptr @_RNvMs_NtCsbSS6DM8SDEO_5alloc5boxedINtB4_3BoxNtNtNtCs8K4cjrcxBsw_6hir_ty3mir4eval12MirEvalErrorE13new_uninit_inCs3smBju6uAx0_7ide_ssr() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #30
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(48) ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef range(i64 8, 513) 48, i64 noundef 8) #30 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !14

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 48) #33
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtCs3smBju6uAx0_7ide_ssr7parsing12expect_token(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 2 uses
  %i.d = alloca [32 x i8], align 8                ; 16 uses
  %i.e = alloca [16 x i8], align 8                ; 4 uses
  store ptr %2, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 1, ptr %i.f, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !582)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !582, !noalias !583, !nonnull !5, !noundef !5
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !582, !noalias !583, !nonnull !5, !noundef !5 ; 5 uses
  %i.k = icmp eq ptr %i.j, %i.h
  br i1 %i.k, label %.split, label %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs3smBju6uAx0_7ide_ssr7parsing5TokenENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextB10_.exit

_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs3smBju6uAx0_7ide_ssr7parsing5TokenENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextB10_.exit: ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  store ptr %i.l, ptr %i.i, align 8, !alias.scope !582, !noalias !583
  %.sroa.5.0..sroa_idx24 = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %.sroa.5.0.copyload25 = load i16, ptr %.sroa.5.0..sroa_idx24, align 8, !noalias !582 ; 2 uses
  %.not = icmp eq i16 %.sroa.5.0.copyload25, -1
  br i1 %.not, label %.split, label %bb.b

bb.b:                                             ; preds = %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs3smBju6uAx0_7ide_ssr7parsing5TokenENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextB10_.exit
  %.sroa.7.0..sroa_idx26 = getelementptr inbounds nuw i8, ptr %i.j, i64 26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false)
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i16 %.sroa.5.0.copyload25, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.7.0..sroa_idx, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.7.0..sroa_idx26, i64 6, i1 false)
  %i.m = load i8, ptr %i.d, align 8, !range !13, !alias.scope !584, !noalias !585, !noundef !5 ; 3 uses
  %i.n = icmp samesign ugt i8 %i.m, 23
  %i.o = zext nneg i8 %i.m to i64                 ; 2 uses
  %i.p = add nsw i64 %i.o, -23
  %i.q = select i1 %i.n, i64 %i.p, i64 0
  switch i64 %i.q, label %bb.c [
    i64 0, label %bb.d
    i64 1, label %bb.e
    i64 2, label %bb.f
  ]

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  br label %bb.g

bb.e:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !alias.scope !584, !noalias !585, !nonnull !5, !noundef !5
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.v = load i64, ptr %i.u, align 8, !alias.scope !584, !noalias !585, !noundef !5
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !alias.scope !584, !noalias !585, !nonnull !5, !noundef !5
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.z = load i64, ptr %i.y, align 8, !alias.scope !584, !noalias !585, !noundef !5
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %.sroa.4.0.i = phi i64 [ %i.o, %bb.d ], [ %i.v, %bb.e ], [ %i.z, %bb.f ]
  %.sroa.01.0.i = phi ptr [ %i.r, %bb.d ], [ %i.t, %bb.e ], [ %i.aa, %bb.f ]
  %i.ab = icmp eq i64 %.sroa.4.0.i, 1
  br i1 %i.ab, label %_RNvXs4_Cs42xZ1oUXfIG_8smol_strNtB5_7SmolStrINtNtCshzWfHUSfYae_4core3cmp9PartialEqeE2eq.exit, label %_RNvXs4_Cs42xZ1oUXfIG_8smol_strNtB5_7SmolStrINtNtCshzWfHUSfYae_4core3cmp9PartialEqeE2eq.exit.thread

.split:                                           ; preds = %bb.a, %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs3smBju6uAx0_7ide_ssr7parsing5TokenENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextB10_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.e, ptr %i.a, align 8
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCshzWfHUSfYae_4core3fmtReNtB6_7Display3fmtCs3smBju6uAx0_7ide_ssr, ptr %.sroa.411.0..sroa_idx, align 8
  call void @_RNvNvNtCsbSS6DM8SDEO_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull @24, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.o

bb.h:                                             ; preds = %_RNvXs4_Cs42xZ1oUXfIG_8smol_strNtB5_7SmolStrINtNtCshzWfHUSfYae_4core3cmp9PartialEqeE2eq.exit.thread
  %i.ac = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !586)
  call void @llvm.experimental.noalias.scope.decl(metadata !587)
  call void @llvm.experimental.noalias.scope.decl(metadata !588)
  %i.ad = load i8, ptr %i.d, align 8, !range !13, !alias.scope !589, !noundef !5
  %switch.i.i.i = icmp samesign ult i8 %i.ad, 25
  br i1 %switch.i.i.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs3smBju6uAx0_7ide_ssr7parsing5TokenEBF_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !590)
  call void @llvm.experimental.noalias.scope.decl(metadata !591)
  %i.af = load ptr, ptr %i.ae, align 8, !alias.scope !592, !nonnull !5, !noundef !5
  %i.ag = atomicrmw sub ptr %i.af, i64 1 release, align 8, !noalias !592
  %i.ah = icmp eq i64 %i.ag, 1
  br i1 %i.ah, label %bb.j, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs3smBju6uAx0_7ide_ssr7parsing5TokenEBF_.exit

bb.j:                                             ; preds = %bb.i
  fence acquire
  invoke void @_RNvMsn_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArceE9drop_slowCsjJXvCMGntp8_6syntax(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ae) #32
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs3smBju6uAx0_7ide_ssr7parsing5TokenEBF_.exit unwind label %bb.p

_RNvXs4_Cs42xZ1oUXfIG_8smol_strNtB5_7SmolStrINtNtCshzWfHUSfYae_4core3cmp9PartialEqeE2eq.exit: ; preds = %bb.g
  %lhsc = load i8, ptr %.sroa.01.0.i, align 1
  %rhsc = load i8, ptr %2, align 1
  %i.ai = icmp eq i8 %lhsc, %rhsc
  br i1 %i.ai, label %bb.k, label %_RNvXs4_Cs42xZ1oUXfIG_8smol_strNtB5_7SmolStrINtNtCshzWfHUSfYae_4core3cmp9PartialEqeE2eq.exit.thread

_RNvXs4_Cs42xZ1oUXfIG_8smol_strNtB5_7SmolStrINtNtCshzWfHUSfYae_4core3cmp9PartialEqeE2eq.exit.thread: ; preds = %bb.g, %_RNvXs4_Cs42xZ1oUXfIG_8smol_strNtB5_7SmolStrINtNtCshzWfHUSfYae_4core3cmp9PartialEqeE2eq.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.e, ptr %i.b, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXs1i_NtCshzWfHUSfYae_4core3fmtReNtB6_7Display3fmtCs3smBju6uAx0_7ide_ssr, ptr %.sroa.42.0..sroa_idx, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.d, ptr %i.aj, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr @_RNvXsg_Cs42xZ1oUXfIG_8smol_strNtB5_7SmolStrNtNtCshzWfHUSfYae_4core3fmt7Display3fmt, ptr %.sroa.46.0..sroa_idx, align 8
  invoke void @_RNvNvNtCsbSS6DM8SDEO_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noundef nonnull @23, ptr noundef nonnull %i.b)
          to label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsbSS6DM8SDEO_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs3smBju6uAx0_7ide_ssr.exit unwind label %bb.h

bb.k:                                             ; preds = %_RNvXs4_Cs42xZ1oUXfIG_8smol_strNtB5_7SmolStrINtNtCshzWfHUSfYae_4core3cmp9PartialEqeE2eq.exit
  store i64 -1, ptr %0, align 8
  br label %bb.l

_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsbSS6DM8SDEO_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs3smBju6uAx0_7ide_ssr.exit: ; preds = %_RNvXs4_Cs42xZ1oUXfIG_8smol_strNtB5_7SmolStrINtNtCshzWfHUSfYae_4core3cmp9PartialEqeE2eq.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  %.pre = load i8, ptr %i.d, align 8, !range !13, !alias.scope !593
  br label %bb.l
end_hunk_1
