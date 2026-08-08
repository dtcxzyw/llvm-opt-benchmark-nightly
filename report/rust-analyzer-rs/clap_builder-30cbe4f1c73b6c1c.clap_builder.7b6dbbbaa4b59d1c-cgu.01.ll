inline.NumInlined: 450
inline.NumDeleted: 230
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvMs_NtNtCsaB0tVqiIPBo_12clap_builder6parser6parserNtB4_6Parser5react:bb.a
  tail call void @llvm.assume(i1 %i.hg)
  %.idx = mul nuw nsw i64 %i.hf, 24
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hd, i64 %.idx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg)
  store ptr %i.hd, ptr %i.bg, align 8
  %.sroa.030.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bg, i64 8 ; 3 uses
  store ptr %i.hd, ptr %.sroa.030.sroa.2.0..sroa_idx, align 8
  %.sroa.030.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  store i64 %i.he, ptr %.sroa.030.sroa.3.0..sroa_idx, align 8
  %.sroa.030.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bg, i64 24 ; 2 uses
  store ptr %i.hh, ptr %.sroa.030.sroa.4.0..sroa_idx, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bg, i64 32 ; 3 uses
  store i64 0, ptr %.sroa.2.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9)
  %i.hi = icmp eq i64 %i.hf, 0
  br i1 %i.hi, label %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCsaB0tVqiIPBo_12clap_builder.exit.i._crit_edge, label %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCsaB0tVqiIPBo_12clap_builder.exit.i.lr.ph

_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCsaB0tVqiIPBo_12clap_builder.exit.i.lr.ph: ; preds = %bb.cc
  %.sroa.9.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bf, i64 8 ; 3 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.bf, i64 16 ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.old158 = trunc nuw i64 %.sroa.013.0 to i1     ; 2 uses
  br label %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCsaB0tVqiIPBo_12clap_builder.exit.i

_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCsaB0tVqiIPBo_12clap_builder.exit.i: ; preds = %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCsaB0tVqiIPBo_12clap_builder.exit.i.lr.ph, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringECsaB0tVqiIPBo_12clap_builder.exit
  %i.hl = phi ptr [ %i.hd, %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCsaB0tVqiIPBo_12clap_builder.exit.i.lr.ph ], [ %i.in, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringECsaB0tVqiIPBo_12clap_builder.exit ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !693)
  call void @llvm.experimental.noalias.scope.decl(metadata !696)
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 24
  store ptr %i.hm, ptr %.sroa.030.sroa.2.0..sroa_idx, align 8, !alias.scope !699, !noalias !700
  %.sroa.0.0.copyload1.i = load i64, ptr %i.hl, align 8, !noalias !703 ; 2 uses
  %.not.i184 = icmp eq i64 %.sroa.0.0.copyload1.i, -1
  br i1 %.not.i184, label %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCsaB0tVqiIPBo_12clap_builder.exit.i._crit_edge, label %bb.ce

.body191:                                         ; preds = %bb.cr, %bb.ck, %bb.cd, %bb.cu
  %.pn = phi { ptr, i32 } [ %i.is, %bb.cu ], [ %i.ib, %bb.ck ], [ %i.hn, %bb.cd ], [ %i.ik, %bb.cr ]
  invoke void @_RNvXse_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsaB0tVqiIPBo_12clap_builder(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.bg)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringEEECsaB0tVqiIPBo_12clap_builder.exit unwind label %bb.cv

bb.cd:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCscAsMj0W7j8b_3std3sys6os_str5bytes3BufECsaB0tVqiIPBo_12clap_builder.exit.i
  %i.hn = landingpad { ptr, i32 }
          cleanup
  br label %.body191

bb.ce:                                            ; preds = %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCsaB0tVqiIPBo_12clap_builder.exit.i
  %.sroa.7.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %i.hl, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx2.i, i64 16, i1 false), !noalias !693
  %i.ho = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !alias.scope !693, !noalias !704, !noundef !9 ; 3 uses
  %i.hp = add i64 %i.ho, 1
  store i64 %i.hp, ptr %.sroa.2.0..sroa_idx, align 8, !alias.scope !693, !noalias !704
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf)
  store i64 %.sroa.0.0.copyload1.i, ptr %i.bf, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9, i64 16, i1 false)
  %i.hq = load ptr, ptr %.sroa.9.8..sroa_idx, align 8, !nonnull !9, !noundef !9
  %i.hr = load i64, ptr %i.hj, align 8, !noundef !9
  %i.hs = invoke noundef zeroext i1 @_RNvXNtCs74Z8AuVjqbo_8clap_lex3extNtNtNtCscAsMj0W7j8b_3std3ffi6os_str5OsStrNtB2_8OsStrExt8contains(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.hq, i64 noundef %i.hr, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bi, i64 noundef %.sroa.0.05.i)
          to label %bb.cg unwind label %bb.cu

_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCsaB0tVqiIPBo_12clap_builder.exit.i._crit_edge: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringECsaB0tVqiIPBo_12clap_builder.exit, %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCsaB0tVqiIPBo_12clap_builder.exit.i, %bb.cc
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9)
  invoke void @_RNvXse_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsaB0tVqiIPBo_12clap_builder(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.bg)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringEEECsaB0tVqiIPBo_12clap_builder.exit188 unwind label %bb.cf

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringEEECsaB0tVqiIPBo_12clap_builder.exit: ; preds = %.body191, %bb.cf
  %.pn.pn = phi { ptr, i32 } [ %i.ht, %bb.cf ], [ %.pn, %.body191 ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringEECsaB0tVqiIPBo_12clap_builder(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bh) #17
          to label %common.resume unwind label %bb.cv

bb.cf:                                            ; preds = %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCsaB0tVqiIPBo_12clap_builder.exit.i._crit_edge
  %i.ht = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringEEECsaB0tVqiIPBo_12clap_builder.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringEEECsaB0tVqiIPBo_12clap_builder.exit188: ; preds = %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCsaB0tVqiIPBo_12clap_builder.exit.i._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %i.bh, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi)
  br label %bb.cx

bb.cg:                                            ; preds = %bb.ce
  br i1 %i.hs, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  %i.hu = load ptr, ptr %i.hk, align 8, !nonnull !9, !align !62, !noundef !9 ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 676
  %i.hw = load i32, ptr %i.hv, align 4, !noundef !9
  %i.hx = and i32 %i.hw, 64
  %.not122 = icmp eq i32 %i.hx, 0
  br i1 %.not122, label %bb.cm, label %bb.co

bb.ci:                                            ; preds = %bb.cm, %bb.co, %bb.cg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.be, ptr noundef nonnull align 8 dereferenceable(24) %i.bf, i64 24, i1 false)
  %i.hy = load i64, ptr %i.hb, align 8, !alias.scope !705, !noalias !708, !noundef !9 ; 3 uses
  %i.hz = load i64, ptr %i.bh, align 8, !range !51, !alias.scope !705, !noalias !708, !noundef !9
  %i.ia = icmp eq i64 %i.hy, %i.hz
  br i1 %i.ia, label %bb.cj, label %bb.ct

bb.cj:                                            ; preds = %bb.ci
  invoke void @_RNvMs4_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bh)
          to label %bb.ct unwind label %bb.ck, !noalias !708

bb.ck:                                            ; preds = %bb.cj
  %i.ib = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringECsaB0tVqiIPBo_12clap_builder(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.be) #17
          to label %.body191 unwind label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.ic = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #18
  unreachable

bb.cm:                                            ; preds = %bb.ch
  %i.id = getelementptr inbounds nuw i8, ptr %i.hu, i64 680
  %i.ie = load i32, ptr %i.id, align 8, !noundef !9
  %i.if = and i32 %i.ie, 64
  %.not123 = icmp ne i32 %i.if, 0
  %i.ig = icmp eq i64 %.sroa.4.0, %i.ho
  %i.ih = and i1 %.not123, %.old158
  %or.cond160 = select i1 %i.ih, i1 %i.ig, i1 false
  br i1 %or.cond160, label %bb.ci, label %bb.cn

bb.cn:                                            ; preds = %bb.co, %bb.cm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc)
  %i.ii = load ptr, ptr %.sroa.9.8..sroa_idx, align 8, !nonnull !9, !noundef !9
  %i.ij = load i64, ptr %i.hj, align 8, !noundef !9
  invoke void @_RNvXNtCs74Z8AuVjqbo_8clap_lex3extNtNtNtCscAsMj0W7j8b_3std3ffi6os_str5OsStrNtB2_8OsStrExt5split(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.bc, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ii, i64 noundef %i.ij, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bi, i64 noundef %.sroa.0.05.i)
          to label %bb.cp unwind label %bb.cu

bb.co:                                            ; preds = %bb.ch
  %.old159 = icmp eq i64 %.sroa.4.0, %i.ho
  %or.cond5.old = select i1 %.old158, i1 %.old159, i1 false
  br i1 %or.cond5.old, label %bb.ci, label %bb.cn

bb.cp:                                            ; preds = %bb.cn
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bd, ptr noundef nonnull align 8 dereferenceable(32) %i.bc, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc)
  invoke void @_RINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB6_3VecNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringE16extend_desugaredINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapNtNtCs74Z8AuVjqbo_8clap_lex3ext5SplitNCNvMs_NtNtCsaB0tVqiIPBo_12clap_builder6parser6parserNtB3d_6Parser5reacts_0EEB3h_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bh, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.bd)
          to label %bb.cq unwind label %bb.cu

bb.cq:                                            ; preds = %bb.cp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd)
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsaB0tVqiIPBo_12clap_builder(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bf)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCscAsMj0W7j8b_3std3sys6os_str5bytes3BufECsaB0tVqiIPBo_12clap_builder.exit.i unwind label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.ik = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsaB0tVqiIPBo_12clap_builder(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bf)
          to label %.body191 unwind label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.il = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #18
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCscAsMj0W7j8b_3std3sys6os_str5bytes3BufECsaB0tVqiIPBo_12clap_builder.exit.i: ; preds = %bb.cq
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsaB0tVqiIPBo_12clap_builder(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bf)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringECsaB0tVqiIPBo_12clap_builder.exit unwind label %bb.cd

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringECsaB0tVqiIPBo_12clap_builder.exit: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCscAsMj0W7j8b_3std3sys6os_str5bytes3BufECsaB0tVqiIPBo_12clap_builder.exit.i, %bb.ct
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9)
  %i.im = load ptr, ptr %.sroa.030.sroa.4.0..sroa_idx, align 8, !alias.scope !710, !noalias !700, !nonnull !9, !noundef !9
  %i.in = load ptr, ptr %.sroa.030.sroa.2.0..sroa_idx, align 8, !alias.scope !710, !noalias !700, !nonnull !9, !noundef !9 ; 2 uses
  %i.io = icmp eq ptr %i.in, %i.im
  br i1 %i.io, label %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCsaB0tVqiIPBo_12clap_builder.exit.i._crit_edge, label %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCsaB0tVqiIPBo_12clap_builder.exit.i

bb.ct:                                            ; preds = %bb.cj, %bb.ci
  %i.ip = load ptr, ptr %i.ha, align 8, !alias.scope !705, !noalias !708, !nonnull !9, !noundef !9
  %i.iq = getelementptr inbounds nuw [24 x i8], ptr %i.ip, i64 %i.hy
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.iq, ptr noundef nonnull align 8 dereferenceable(24) %i.be, i64 24, i1 false)
  %i.ir = add i64 %i.hy, 1
  store i64 %i.ir, ptr %i.hb, align 8, !alias.scope !705, !noalias !708
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringECsaB0tVqiIPBo_12clap_builder.exit

bb.cu:                                            ; preds = %bb.ce, %bb.cn, %bb.cp
  %i.is = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringECsaB0tVqiIPBo_12clap_builder(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bf) #17
          to label %.body191 unwind label %bb.cv

bb.cv:                                            ; preds = %.body191, %.thread, %bb.hw, %.thread268, %bb.gv, %bb.gu, %.thread242, %bb.fn, %bb.fm, %bb.ea, %bb.dz, %bb.cu, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringEEECsaB0tVqiIPBo_12clap_builder.exit
  %i.it = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #18
  unreachable

bb.cw:                                            ; preds = %bb.hj, %bb.ga, %bb.es
  unreachable

bb.cx:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringEEECsaB0tVqiIPBo_12clap_builder.exit188, %bb.by, %bb.bx, %bb.bl, %bb.bo
  %i.iu = getelementptr inbounds nuw i8, ptr %4, i64 596
  %i.iv = load i8, ptr %i.iu, align 4, !range !430, !noundef !9 ; 2 uses
  %.not126 = icmp eq i8 %i.iv, -1
  %9 = select i1 %.not126, i8 0, i8 %i.iv
  switch i8 %9, label %default.unreachable [
    i8 0, label %bb.cy
    i8 1, label %bb.cz
    i8 2, label %bb.da
    i8 3, label %bb.db
    i8 4, label %bb.dc
    i8 5, label %bb.dd
    i8 6, label %bb.de
    i8 7, label %bb.df
    i8 8, label %bb.dg
  ]

default.unreachable:                              ; preds = %bb.cx
  unreachable

bb.cy:                                            ; preds = %bb.cx
  br i1 %.not304, label %switch.early.test, label %bb.dh

switch.early.test:                                ; preds = %bb.cy
  switch i8 %2, label %bb.di [
    i8 -1, label %bb.dh
    i8 2, label %bb.dh
  ]

bb.cz:                                            ; preds = %bb.cx
  br i1 %.not304, label %switch.early.test170, label %bb.ef

switch.early.test170:                             ; preds = %bb.cz
  switch i8 %2, label %bb.eg [
    i8 -1, label %bb.ef
    i8 2, label %bb.ef
  ]

bb.da:                                            ; preds = %bb.cx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au)
  %i.iw = load i64, ptr %i.eo, align 8, !noundef !9 ; 2 uses
  %i.ix = icmp ult i64 %i.iw, 384307168202282326
  call void @llvm.assume(i1 %i.ix)
  %i.iy = icmp eq i64 %i.iw, 0
  br i1 %i.iy, label %bb.en, label %bb.em

bb.db:                                            ; preds = %bb.cx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an)
  %i.iz = load i64, ptr %i.eo, align 8, !noundef !9 ; 2 uses
  %i.ja = icmp ult i64 %i.iz, 384307168202282326
  call void @llvm.assume(i1 %i.ja)
  %i.jb = icmp eq i64 %i.iz, 0
  br i1 %i.jb, label %bb.fv, label %bb.fu

bb.dc:                                            ; preds = %bb.cx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  %i.jc = load i64, ptr %i.eo, align 8, !noundef !9 ; 2 uses
  %i.jd = icmp ult i64 %i.jc, 384307168202282326
  call void @llvm.assume(i1 %i.jd)
  %i.je = icmp eq i64 %i.jc, 0
  br i1 %i.je, label %bb.hb, label %bb.ha

bb.dd:                                            ; preds = %bb.cx
  %i.jf = icmp ne i8 %2, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.jg = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.jh = load ptr, ptr %i.jg, align 8, !nonnull !9, !align !62, !noundef !9
  invoke void @_RNvMs5_NtNtCsaB0tVqiIPBo_12clap_builder7builder7commandNtB5_7Command14write_help_err(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(688) %i.jh, i1 noundef zeroext %i.jf)
          to label %.noexc194 unwind label %bb.b

.noexc194:                                        ; preds = %bb.dd
  %i.ji = load ptr, ptr %i.jg, align 8, !nonnull !9, !align !62, !noundef !9
  %i.jj = invoke noundef nonnull align 8 ptr @_RNvMNtCsaB0tVqiIPBo_12clap_builder5errorNtB2_5Error7for_appB4_(i8 noundef 12, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(688) %i.ji, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.e) #19
          to label %bb.hx unwind label %bb.b

bb.de:                                            ; preds = %bb.cx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.jk = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.jl = load ptr, ptr %i.jk, align 8, !nonnull !9, !align !62, !noundef !9
  invoke void @_RNvMs5_NtNtCsaB0tVqiIPBo_12clap_builder7builder7commandNtB5_7Command14write_help_err(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(688) %i.jl, i1 noundef zeroext false)
          to label %.noexc196 unwind label %bb.b

.noexc196:                                        ; preds = %bb.de
  %i.jm = load ptr, ptr %i.jk, align 8, !nonnull !9, !align !62, !noundef !9
  %i.jn = invoke noundef nonnull align 8 ptr @_RNvMNtCsaB0tVqiIPBo_12clap_builder5errorNtB2_5Error7for_appB4_(i8 noundef 12, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(688) %i.jm, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.d) #19
          to label %bb.hy unwind label %bb.b

bb.df:                                            ; preds = %bb.cx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.jo = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.jp = load ptr, ptr %i.jo, align 8, !nonnull !9, !align !62, !noundef !9
  invoke void @_RNvMs5_NtNtCsaB0tVqiIPBo_12clap_builder7builder7commandNtB5_7Command14write_help_err(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(688) %i.jp, i1 noundef zeroext true)
          to label %.noexc199 unwind label %bb.b

.noexc199:                                        ; preds = %bb.df
  %i.jq = load ptr, ptr %i.jo, align 8, !nonnull !9, !align !62, !noundef !9
  %i.jr = invoke noundef nonnull align 8 ptr @_RNvMNtCsaB0tVqiIPBo_12clap_builder5errorNtB2_5Error7for_appB4_(i8 noundef 12, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(688) %i.jq, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c) #19
          to label %bb.hz unwind label %bb.b

bb.dg:                                            ; preds = %bb.cx
  %i.js = icmp ne i8 %2, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.jt = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ju = load ptr, ptr %i.jt, align 8, !nonnull !9, !align !62, !noundef !9
  invoke void @_RNvMs5_NtNtCsaB0tVqiIPBo_12clap_builder7builder7commandNtB5_7Command17write_version_err(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(688) %i.ju, i1 noundef zeroext %i.js)
          to label %.noexc202 unwind label %bb.b

.noexc202:                                        ; preds = %bb.dg
  %i.jv = load ptr, ptr %i.jt, align 8, !nonnull !9, !align !62, !noundef !9
  %i.jw = invoke noundef nonnull align 8 ptr @_RNvMNtCsaB0tVqiIPBo_12clap_builder5errorNtB2_5Error7for_appB4_(i8 noundef 14, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(688) %i.jv, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b) #19
          to label %bb.ia unwind label %bb.b

bb.dh:                                            ; preds = %switch.early.test, %switch.early.test, %bb.cy, %bb.di
  %i.jx = getelementptr inbounds nuw i8, ptr %4, i64 536 ; 2 uses
  %i.jy = invoke noundef zeroext i1 @_RNvMNtNtCsaB0tVqiIPBo_12clap_builder6parser11arg_matcherNtB2_10ArgMatcher6remove(ptr noalias nofree noundef nonnull align 8 dereferenceable(120) %8, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.jx)
          to label %bb.dj unwind label %bb.b

bb.di:                                            ; preds = %switch.early.test
  %i.jz = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.ka = load i64, ptr %i.jz, align 8, !noundef !9
  %i.kb = add i64 %i.ka, 1
  store i64 %i.kb, ptr %i.jz, align 8
  br label %bb.dh

bb.dj:                                            ; preds = %bb.dh
  br i1 %i.jy, label %bb.dk, label %bb.dl

bb.dk:                                            ; preds = %bb.dj
  %i.kc = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.kd = load ptr, ptr %i.kc, align 8, !nonnull !9, !align !62, !noundef !9 ; 2 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 676
  %i.kf = load i32, ptr %i.ke, align 4, !noundef !9
  %i.kg = and i32 %i.kf, 8
  %.not149 = icmp eq i32 %i.kg, 0
  br i1 %.not149, label %bb.dm, label %bb.dl

bb.dl:                                            ; preds = %bb.do, %bb.dk, %bb.dj, %bb.dm
  invoke fastcc void @_RNvMs_NtNtCsaB0tVqiIPBo_12clap_builder6parser6parserNtB4_6Parser16start_custom_arg(ptr noundef nonnull align 8 %1, ptr noalias nofree noundef align 8 dereferenceable(120) %8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(600) %4, i8 noundef %3)
          to label %bb.eb unwind label %bb.b

bb.dm:                                            ; preds = %bb.dk
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kd, i64 680
  %i.ki = load i32, ptr %i.kh, align 8, !noundef !9
  %i.kj = and i32 %i.ki, 8
  %.not150 = icmp eq i32 %i.kj, 0
  br i1 %.not150, label %bb.dn, label %bb.dl

bb.dn:                                            ; preds = %bb.dm
  %i.kk = getelementptr inbounds nuw i8, ptr %4, i64 136
  %i.kl = load ptr, ptr %i.kk, align 8, !nonnull !9, !noundef !9
  %i.km = getelementptr inbounds nuw i8, ptr %4, i64 144
  %i.kn = load i64, ptr %i.km, align 8, !noundef !9
  %i.ko = invoke noundef zeroext i1 @_RNvXsf_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtNtCsaB0tVqiIPBo_12clap_builder4util2id2IdNtB5_13SliceContains14slice_containsBI_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.jx, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.kl, i64 noundef %i.kn)
          to label %bb.do unwind label %bb.b

bb.do:                                            ; preds = %bb.dn
  br i1 %i.ko, label %bb.dl, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.kp = load ptr, ptr %i.kc, align 8, !nonnull !9, !align !62, !noundef !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb)
  invoke fastcc void @_RNvXsC_NtCsbSS6DM8SDEO_5alloc6stringNtNtNtCsaB0tVqiIPBo_12clap_builder7builder3arg3ArgNtB5_12SpecToString14spec_to_stringBE_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.bb, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(600) %4)
          to label %bb.dq unwind label %bb.b

bb.dq:                                            ; preds = %bb.dp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba)
  %i.kq = invoke fastcc noundef ptr @_RNvNtCsbSS6DM8SDEO_5alloc5boxed14box_new_uninit(i64 noundef 24)
          to label %bb.ds unwind label %bb.dr     ; 3 uses

bb.dr:                                            ; preds = %bb.dq
  %i.kr = landingpad { ptr, i32 }
          cleanup
  br label %bb.ea

bb.ds:                                            ; preds = %bb.dq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az)
  invoke fastcc void @_RNvXsC_NtCsbSS6DM8SDEO_5alloc6stringNtNtNtCsaB0tVqiIPBo_12clap_builder7builder3arg3ArgNtB5_12SpecToString14spec_to_stringBE_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.az, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(600) %4)
          to label %bb.du unwind label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.ks = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.kq, i64 noundef 24, i64 noundef 8) #21
  br label %bb.ea

bb.du:                                            ; preds = %bb.ds
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.kq, ptr noundef nonnull align 8 dereferenceable(24) %i.az, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az)
  store i64 1, ptr %i.ba, align 8
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store ptr %i.kq, ptr %i.kt, align 8
  %i.ku = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  store i64 1, ptr %i.ku, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax)
  %i.kv = load ptr, ptr %i.kc, align 8, !nonnull !9, !align !62, !noundef !9
  invoke void @_RNvMNtNtCsaB0tVqiIPBo_12clap_builder6output5usageNtB2_5Usage3new(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ax, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(688) %i.kv)
          to label %bb.dw unwind label %bb.dz

bb.dv:                                            ; preds = %bb.dx
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.dw:                                            ; preds = %bb.du
  invoke void @_RNvMNtNtCsaB0tVqiIPBo_12clap_builder6output5usageNtB2_5Usage23create_usage_with_title(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ay, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ax, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) inttoptr (i64 8 to ptr), i64 noundef 0)
          to label %bb.dx unwind label %bb.dz

bb.dx:                                            ; preds = %bb.dw
  %i.kw = invoke noundef nonnull align 8 ptr @_RNvMNtCsaB0tVqiIPBo_12clap_builder5errorNtB2_5Error17argument_conflictB4_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(688) %i.kp, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.bb, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.ba, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.ay)
          to label %bb.dy unwind label %bb.dv

bb.dy:                                            ; preds = %bb.dx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb)
  %i.kx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.kw, ptr %i.kx, align 8
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax)
  br label %bb.bi
end_hunk_0
