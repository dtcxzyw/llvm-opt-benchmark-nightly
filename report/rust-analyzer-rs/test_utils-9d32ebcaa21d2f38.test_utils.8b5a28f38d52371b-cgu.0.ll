Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/test_utils-9d32ebcaa21d2f38.test_utils.8b5a28f38d52371b-cgu.0?download=true
inline.NumInlined: 281
inline.NumDeleted: 140
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RNvMNtCsbXLDOPgjE5X_10test_utils7fixtureNtB2_22FixtureWithProjectMeta5parse:bb.a
  invoke fastcc void @_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.as, ptr noalias nofree noundef nonnull align 8 dereferenceable(128) %i.ay) #21
          to label %.noexc.i unwind label %.loopexit36.i, !noalias !117

.noexc.i:                                         ; preds = %bb.cf
  %i.js = load i64, ptr %i.as, align 8, !range !32, !noalias !121, !noundef !5
  %i.jt = trunc nuw i64 %i.js to i1
  br i1 %i.jt, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %.noexc.i
  %i.ju = load i64, ptr %i.jn, align 8, !noalias !121, !noundef !5
  %i.jv = load i64, ptr %i.jo, align 8, !noalias !121, !noundef !5
  %i.jw = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !alias.scope !118, !noalias !113, !noundef !5 ; 2 uses
  %i.jx = sub nuw i64 %i.ju, %i.jw
  %i.jy = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.jw
  store i64 %i.jv, ptr %.sroa.2.0..sroa_idx.i, align 8, !alias.scope !118, !noalias !113
  br label %bb.cl

bb.ch:                                            ; preds = %.noexc.i
  %i.jz = load i8, ptr %.sroa.513.0..sroa_idx.i, align 1, !range !21, !alias.scope !122, !noalias !113, !noundef !5
  %i.ka = trunc nuw i8 %i.jz to i1
  br i1 %i.ka, label %.thread31.i, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  store i8 1, ptr %.sroa.513.0..sroa_idx.i, align 1, !alias.scope !122, !noalias !113
  %i.kb = load i8, ptr %.sroa.412.0..sroa_idx.i, align 8, !range !21, !alias.scope !122, !noalias !113, !noundef !5
  %i.kc = trunc nuw i8 %i.kb to i1
  br i1 %i.kc, label %._crit_edge.i.i.i224, label %bb.cj

._crit_edge.i.i.i224:                             ; preds = %bb.ci
  %.pre.i.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !alias.scope !122, !noalias !113
  %.pre3.i.i.i = load i64, ptr %.sroa.3.0..sroa_idx.i, align 8, !alias.scope !122, !noalias !113
  br label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  %i.kd = load i64, ptr %.sroa.3.0..sroa_idx.i, align 8, !alias.scope !122, !noalias !113, !noundef !5 ; 2 uses
  %i.ke = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !alias.scope !122, !noalias !113, !noundef !5 ; 2 uses
  %.not.i.i.i222 = icmp eq i64 %i.kd, %i.ke
  br i1 %.not.i.i.i222, label %.thread31.i, label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %._crit_edge.i.i.i224
  %i.kf = phi i64 [ %.pre3.i.i.i, %._crit_edge.i.i.i224 ], [ %i.kd, %bb.cj ]
  %i.kg = phi i64 [ %.pre.i.i.i, %._crit_edge.i.i.i224 ], [ %i.ke, %bb.cj ] ; 2 uses
  %.val.i.i.i = load ptr, ptr %i.jm, align 8, !alias.scope !122, !noalias !113, !nonnull !5, !noundef !5
  %i.kh = sub nuw i64 %i.kf, %i.kg
  %i.ki = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %i.kg
  br label %bb.cl

.thread31.i:                                      ; preds = %bb.cj, %bb.ch
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !121
  br label %.loopexit402

bb.cl:                                            ; preds = %bb.ck, %bb.cg
  %.sroa.4.0.i.i = phi i64 [ %i.jx, %bb.cg ], [ %i.kh, %bb.ck ] ; 8 uses
  %.sroa.0.0.i.i = phi ptr [ %i.jy, %bb.cg ], [ %i.ki, %bb.ck ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !121
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax), !noalias !113
  store ptr %.sroa.0.0.i.i, ptr %i.ax, align 8, !noalias !113, !captures !125
  store i64 %.sroa.4.0.i.i, ptr %i.jp, align 8, !noalias !113
  %.val.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !113, !nonnull !5, !noundef !5 ; 2 uses
  %.val26.i = load i64, ptr %.sroa.5.0..sroa_idx.i220, align 8, !noalias !113, !noundef !5 ; 2 uses
  %.idx.i.i = mul nuw nsw i64 %.val26.i, 24
  %i.kj = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.idx.i.i
  %.not.i.i27.i = icmp eq i64 %.val26.i, 0
  br i1 %.not.i.i27.i, label %.loopexit.i, label %.lr.ph.i.i.i223

.lr.ph.i.i.i223:                                  ; preds = %bb.cl, %_RNCNvMs_NtCsbXLDOPgjE5X_10test_utils7fixtureNtB6_8MiniCore8has_flag0B8_.exit.backedge.i.i.i
  %i.kk = phi ptr [ %i.kl, %_RNCNvMs_NtCsbXLDOPgjE5X_10test_utils7fixtureNtB6_8MiniCore8has_flag0B8_.exit.backedge.i.i.i ], [ %.val.i, %bb.cl ] ; 3 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 24 ; 2 uses
  %i.km = getelementptr i8, ptr %i.kk, i64 16
  %.val3.i.i.i = load i64, ptr %i.km, align 8, !noalias !126, !noundef !5
  %i.kn = icmp eq i64 %.val3.i.i.i, %.sroa.4.0.i.i
  br i1 %i.kn, label %.split.i.i.i, label %_RNCNvMs_NtCsbXLDOPgjE5X_10test_utils7fixtureNtB6_8MiniCore8has_flag0B8_.exit.backedge.i.i.i

.split.i.i.i:                                     ; preds = %.lr.ph.i.i.i223
  %i.ko = getelementptr i8, ptr %i.kk, i64 8
  %.val2.i.i.i = load ptr, ptr %i.ko, align 8, !noalias !126, !nonnull !5, !noundef !5
  %bcmp.i.i.i.i = call i32 @bcmp(ptr nonnull readonly %.val2.i.i.i, ptr nonnull readonly %.sroa.0.0.i.i, i64 %.sroa.4.0.i.i), !noalias !132
  %i.kp = icmp eq i32 %bcmp.i.i.i.i, 0
  br i1 %i.kp, label %_RNvMs_NtCsbXLDOPgjE5X_10test_utils7fixtureNtB4_8MiniCore8has_flag.exit.i, label %_RNCNvMs_NtCsbXLDOPgjE5X_10test_utils7fixtureNtB6_8MiniCore8has_flag0B8_.exit.backedge.i.i.i, !prof !133

_RNCNvMs_NtCsbXLDOPgjE5X_10test_utils7fixtureNtB6_8MiniCore8has_flag0B8_.exit.backedge.i.i.i: ; preds = %.split.i.i.i, %.lr.ph.i.i.i223
  %.not7.i.i.i = icmp eq ptr %i.kl, %i.kj
  br i1 %.not7.i.i.i, label %.loopexit.i, label %.lr.ph.i.i.i223

.loopexit.i:                                      ; preds = %_RNCNvMs_NtCsbXLDOPgjE5X_10test_utils7fixtureNtB6_8MiniCore8has_flag0B8_.exit.backedge.i.i.i, %bb.cl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !noalias !113
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at), !noalias !113
  invoke void @_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsbXLDOPgjE5X_10test_utils(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.at, i64 noundef %.sroa.4.0.i.i, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.cm unwind label %.loopexit36.i, !noalias !117

_RNvMs_NtCsbXLDOPgjE5X_10test_utils7fixtureNtB4_8MiniCore8has_flag.exit.i: ; preds = %.split.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw), !noalias !113
  store ptr %i.ax, ptr %i.aw, align 8, !noalias !113
  %.sroa.418.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store ptr @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtReNtB6_5Debug3fmtCsbXLDOPgjE5X_10test_utils, ptr %.sroa.418.0..sroa_idx.i, align 8, !noalias !113
  invoke void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull @68, ptr noundef nonnull %i.aw, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @69) #20
          to label %bb.cv unwind label %.loopexit.split-lp.i, !noalias !117

bb.cm:                                            ; preds = %.loopexit.i
  %i.kq = load i64, ptr %i.at, align 8, !range !32, !noalias !113, !noundef !5
  %i.kr = trunc nuw i64 %i.kq to i1
  %i.ks = load i64, ptr %i.jq, align 8, !range !42, !noalias !113, !noundef !5 ; 3 uses
  br i1 %i.kr, label %bb.cn, label %bb.co, !prof !43

bb.cn:                                            ; preds = %bb.cm
  %i.kt = load i64, ptr %i.jr, align 8, !noalias !113
  invoke void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef %i.ks, i64 %i.kt) #20
          to label %bb.cv unwind label %.loopexit.split-lp.i, !noalias !117

bb.co:                                            ; preds = %bb.cm
  %i.ku = load ptr, ptr %i.jr, align 8, !noalias !113, !nonnull !5, !noundef !5 ; 2 uses
  %i.kv = icmp ule i64 %.sroa.4.0.i.i, %i.ks
  call void @llvm.assume(i1 %i.kv)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !113
  %.not25.i = icmp eq i64 %.sroa.4.0.i.i, 0
  br i1 %.not25.i, label %bb.cp, label %bb.ct

bb.cp:                                            ; preds = %bb.ct, %bb.co
  store i64 %i.ks, ptr %i.av, align 8, !noalias !113
  store ptr %i.ku, ptr %.sroa.420.0..sroa_idx.i, align 8, !noalias !113
  store i64 %.sroa.4.0.i.i, ptr %.sroa.621.0..sroa_idx.i, align 8, !noalias !113
  %i.kw = load i64, ptr %.sroa.5.0..sroa_idx.i220, align 8, !alias.scope !134, !noalias !137, !noundef !5 ; 3 uses
  %i.kx = load i64, ptr %i.az, align 8, !range !139, !alias.scope !134, !noalias !137, !noundef !5
  %i.ky = icmp eq i64 %i.kw, %i.kx
  br i1 %i.ky, label %bb.cq, label %bb.cu

bb.cq:                                            ; preds = %bb.cp
  invoke void @_RNvMs4_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringE8grow_oneCscAsMj0W7j8b_3std(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.az)
          to label %bb.cu unwind label %bb.cr, !noalias !140

bb.cr:                                            ; preds = %bb.cq
  %i.kz = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsbXLDOPgjE5X_10test_utils(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.av) #19
          to label %.body.i unwind label %bb.cs, !noalias !117

bb.cs:                                            ; preds = %bb.cr
  %i.la = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #18, !noalias !117
  unreachable

bb.ct:                                            ; preds = %bb.co
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ku, ptr nonnull align 1 %.sroa.0.0.i.i, i64 %.sroa.4.0.i.i, i1 false), !noalias !117
  br label %bb.cp

bb.cu:                                            ; preds = %bb.cq, %bb.cp
  %i.lb = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !134, !noalias !137, !nonnull !5, !noundef !5
  %i.lc = getelementptr inbounds nuw [24 x i8], ptr %i.lb, i64 %i.kw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.lc, ptr noundef nonnull align 8 dereferenceable(24) %i.av, i64 24, i1 false), !noalias !117
  %i.ld = add i64 %i.kw, 1
  store i64 %i.ld, ptr %.sroa.5.0..sroa_idx.i220, align 8, !alias.scope !134, !noalias !137
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !113
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !noalias !113
  %i.le = load i8, ptr %.sroa.513.0..sroa_idx.i, align 1, !range !21, !alias.scope !141, !noalias !113, !noundef !5
  %i.lf = trunc nuw i8 %i.le to i1
  br i1 %i.lf, label %.loopexit402, label %bb.cf

bb.cv:                                            ; preds = %bb.cn, %_RNvMs_NtCsbXLDOPgjE5X_10test_utils7fixtureNtB4_8MiniCore8has_flag.exit.i
  unreachable

bb.cw:                                            ; preds = %.body.i
  %i.lg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #18, !noalias !117
  unreachable

.invoke1836:                                      ; preds = %_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr.exit.i.i, %bb.w, %_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr.exit.i.i127, %bb.aq, %_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr.exit.i.i149, %bb.bb, %_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr.exit.i.i174, %bb.bm, %_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr.exit.i.i200, %bb.ca
  %i.lh = phi ptr [ @24, %_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr.exit.i.i127 ], [ @26, %_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr.exit.i.i149 ], [ @28, %_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr.exit.i.i174 ], [ @30, %_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr.exit.i.i200 ], [ @30, %bb.ca ], [ @28, %bb.bm ], [ @26, %bb.bb ], [ @24, %bb.aq ], [ @22, %bb.w ], [ @22, %_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr.exit.i.i ]
  invoke void @_RNvNtCshzWfHUSfYae_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.lh) #20
          to label %.cont1837 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont1837:                                        ; preds = %.invoke1836
  unreachable

.loopexit402:                                     ; preds = %bb.cu, %.thread31.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay), !noalias !113
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bl, ptr noundef nonnull align 8 dereferenceable(48) %i.az, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !noalias !113
  %i.li = load i64, ptr %i.bq, align 8, !range !4, !alias.scope !143, !noundef !5
  %i.lj = icmp eq i64 %i.li, -1
  br i1 %i.lj, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbXLDOPgjE5X_10test_utils7fixture8MiniCoreEEB11_.exit, label %bb.cx

bb.cx:                                            ; preds = %.loopexit402
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbXLDOPgjE5X_10test_utils7fixture8MiniCoreEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.bq)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbXLDOPgjE5X_10test_utils7fixture8MiniCoreEEB11_.exit unwind label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.lk = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bq, ptr noundef nonnull align 8 dereferenceable(48) %i.bl, i64 48, i1 false)
  br label %.body225

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbXLDOPgjE5X_10test_utils7fixture8MiniCoreEEB11_.exit: ; preds = %.loopexit402, %bb.cx
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bq, ptr noundef nonnull align 8 dereferenceable(48) %i.bl, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl)
  br label %bb.cc

bb.cz:                                            ; preds = %bb.cc
  %i.ll = add nsw i32 %.sroa.0.4, -1
  %.sroa.016.sroa.0.0 = select i1 %i.jg, i32 undef, i32 %i.ll
  %.sroa.2.0 = select i1 %i.jg, ptr null, ptr @32
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bk, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bk)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3.0..sroa_idx, i8 0, i64 16, i1 false)
  store i64 1, ptr %i.bk, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bk, i64 8 ; 2 uses
  store i32 %.sroa.016.sroa.0.0, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bk, i64 16 ; 3 uses
  store ptr %.sroa.2.0, ptr %.sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx, align 8
  %.sroa.2.sroa.3.0..sroa.2.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bk, i64 24 ; 2 uses
  store i64 12, ptr %.sroa.2.sroa.3.0..sroa.2.0..sroa_idx.sroa_idx, align 8
  %.sroa.3.sroa.0.sroa.2.0..sroa.3.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bk, i64 48 ; 4 uses
  store i64 0, ptr %.sroa.3.sroa.0.sroa.2.0..sroa.3.0..sroa_idx.sroa_idx, align 8
  %.sroa.3.sroa.0.sroa.3.0..sroa.3.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bk, i64 56 ; 2 uses
  store i64 %.sroa.14.4, ptr %.sroa.3.sroa.0.sroa.3.0..sroa.3.0..sroa_idx.sroa_idx, align 8
  %.sroa.3.sroa.0.sroa.4.0..sroa.3.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bk, i64 64 ; 2 uses
  store ptr %.sroa.081.4, ptr %.sroa.3.sroa.0.sroa.4.0..sroa.3.0..sroa_idx.sroa_idx, align 8
  %.sroa.3.sroa.0.sroa.4.sroa.2.0..sroa.3.sroa.0.sroa.4.0..sroa.3.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bk, i64 72 ; 2 uses
  store i64 %.sroa.14.4, ptr %.sroa.3.sroa.0.sroa.4.sroa.2.0..sroa.3.sroa.0.sroa.4.0..sroa.3.0..sroa_idx.sroa_idx.sroa_idx, align 8
  %.sroa.3.sroa.0.sroa.4.sroa.3.0..sroa.3.sroa.0.sroa.4.0..sroa.3.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bk, i64 80 ; 4 uses
  store i64 0, ptr %.sroa.3.sroa.0.sroa.4.sroa.3.0..sroa.3.sroa.0.sroa.4.0..sroa.3.0..sroa_idx.sroa_idx.sroa_idx, align 8
  %.sroa.3.sroa.0.sroa.4.sroa.4.0..sroa.3.sroa.0.sroa.4.0..sroa.3.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bk, i64 88 ; 2 uses
  store i64 %.sroa.14.4, ptr %.sroa.3.sroa.0.sroa.4.sroa.4.0..sroa.3.sroa.0.sroa.4.0..sroa.3.0..sroa_idx.sroa_idx.sroa_idx, align 8
  %.sroa.3.sroa.0.sroa.4.sroa.5.0..sroa.3.sroa.0.sroa.4.0..sroa.3.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bk, i64 96 ; 3 uses
  store i32 10, ptr %.sroa.3.sroa.0.sroa.4.sroa.5.0..sroa.3.sroa.0.sroa.4.0..sroa.3.0..sroa_idx.sroa_idx.sroa_idx, align 8
  %.sroa.3.sroa.0.sroa.4.sroa.6.0..sroa.3.sroa.0.sroa.4.0..sroa.3.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bk, i64 100 ; 2 uses
  store i32 10, ptr %.sroa.3.sroa.0.sroa.4.sroa.6.0..sroa.3.sroa.0.sroa.4.0..sroa.3.0..sroa_idx.sroa_idx.sroa_idx, align 4
  %.sroa.3.sroa.0.sroa.4.sroa.7.0..sroa.3.sroa.0.sroa.4.0..sroa.3.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bk, i64 104 ; 2 uses
  store i8 1, ptr %.sroa.3.sroa.0.sroa.4.sroa.7.0..sroa.3.sroa.0.sroa.4.0..sroa.3.0..sroa_idx.sroa_idx.sroa_idx, align 8
  %.sroa.3.sroa.0.sroa.5.0..sroa.3.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bk, i64 112 ; 2 uses
  store i8 0, ptr %.sroa.3.sroa.0.sroa.5.0..sroa.3.0..sroa_idx.sroa_idx, align 8
  %.sroa.3.sroa.0.sroa.6.0..sroa.3.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bk, i64 113 ; 3 uses
  store i8 0, ptr %.sroa.3.sroa.0.sroa.6.0..sroa.3.0..sroa_idx.sroa_idx, align 1
  %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bk, i64 120 ; 3 uses
  store i32 %.sroa.0.4, ptr %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx.sroa_idx, align 8
  %i.lm = getelementptr inbounds nuw i8, ptr %i.bi, i64 8 ; 5 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %.sroa.435.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 8 ; 2 uses
  %.sroa.536.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 16 ; 2 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %i.lp = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.lq = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.lr = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 2 uses
  %.sroa.445.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %.sroa.646.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.ls = getelementptr inbounds nuw i8, ptr %i.am, i64 8 ; 2 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %i.am, i64 16 ; 2 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %i.al, i64 8 ; 2 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %i.al, i64 16 ; 3 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 3 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %i.ai, i64 16 ; 5 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.lz = getelementptr inbounds nuw i8, ptr %i.af, i64 16 ; 2 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 2 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.mc = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.md = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.me = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  %.sroa.5137.0..sroa_idx138.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 2 uses
  %.sroa.6140.0..sroa_idx141.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 16 ; 2 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.mg = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %.sroa.4174.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.sroa.6175.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.mh = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.mi = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %.sroa.4177.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.sroa.6178.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.mj = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.mk = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %.sroa.4159.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.sroa.5160.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.ml = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.mm = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.mn = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %.sroa.4162.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %.sroa.6163.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.mo = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.mp = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %.sroa.4171.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %.sroa.5172.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.x, i64 40
  %i.mr = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.ms = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %.sroa.5101.0..sroa_idx102.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 2 uses
  %.sroa.6104.0..sroa_idx105.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 16 ; 2 uses
  %.sroa.4150.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %.sroa.5151.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %.sroa.5151.sroa.4.0..sroa.5151.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %.sroa.5151.sroa.5.0..sroa.5151.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %.sroa.5151.sroa.6.0..sroa.5151.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.y, i64 40
  %.sroa.5151.sroa.7.0..sroa.5151.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.y, i64 48
  %.sroa.5151.sroa.8.0..sroa.5151.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.y, i64 52
  %.sroa.5151.sroa.9.0..sroa.5151.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.y, i64 56
  %.sroa.6152.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.y, i64 64
  %.sroa.7153.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.y, i64 65
  %.sroa.57.0..sroa_idx8.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 2 uses
  %.sroa.610.0..sroa_idx11.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 16 ; 2 uses
  %i.mt = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.mu = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %.sroa.491.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.sroa.692.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %.sroa.485.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %.sroa.586.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %.sroa.586.sroa.4.0..sroa.586.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %.sroa.586.sroa.5.0..sroa.586.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %.sroa.586.sroa.6.0..sroa.586.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  %.sroa.586.sroa.7.0..sroa.586.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 48
  %.sroa.586.sroa.8.0..sroa.586.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 52
  %.sroa.586.sroa.9.0..sroa.586.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 56
  %.sroa.687.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 64
  %.sroa.788.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 65
  %i.mv = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.mw = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  %.sroa.574.0..sroa_idx75.i = getelementptr inbounds nuw i8, ptr %i.an, i64 8 ; 2 uses
  %.sroa.677.0..sroa_idx78.i = getelementptr inbounds nuw i8, ptr %i.an, i64 16 ; 2 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %i.bg, i64 120
  %i.my = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  %i.mz = getelementptr inbounds nuw i8, ptr %i.bg, i64 72
  %i.na = getelementptr inbounds nuw i8, ptr %i.bg, i64 144
  %i.nb = getelementptr inbounds nuw i8, ptr %i.bg, i64 48
  %i.nc = getelementptr inbounds nuw i8, ptr %i.bg, i64 168
  %i.nd = getelementptr inbounds nuw i8, ptr %i.bg, i64 216
  %i.ne = getelementptr inbounds nuw i8, ptr %i.bg, i64 192
  %i.nf = getelementptr inbounds nuw i8, ptr %i.bg, i64 256
  %i.ng = getelementptr inbounds nuw i8, ptr %i.bg, i64 96
  %.sroa.4195.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 104
  %.sroa.5196.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 112
  %i.nh = getelementptr inbounds nuw i8, ptr %i.bg, i64 248
  br label %bb.da

bb.da:                                            ; preds = %bb.ef, %bb.cz
  %i.ni = load i64, ptr %i.bk, align 8, !range !32, !alias.scope !146, !noalias !149, !noundef !5
  %i.nj = trunc nuw i64 %i.ni to i1
  br i1 %i.nj, label %bb.db, label %bb.de

bb.db:                                            ; preds = %bb.da
  call void @llvm.experimental.noalias.scope.decl(metadata !151)
  call void @llvm.experimental.noalias.scope.decl(metadata !154)
  %.sroa.0.0.copyload3.i = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !alias.scope !157, !noalias !149
  %.sroa.5.0.copyload5.i = load ptr, ptr %.sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx, align 8, !alias.scope !157, !noalias !149 ; 2 uses
  %.sroa.6.0.copyload7.i = load i64, ptr %.sroa.2.sroa.3.0..sroa.2.0..sroa_idx.sroa_idx, align 8, !alias.scope !157, !noalias !149
  store ptr null, ptr %.sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx, align 8, !alias.scope !160, !noalias !161
  %.not.i229 = icmp eq ptr %.sroa.5.0.copyload5.i, null
  br i1 %.not.i229, label %bb.dc, label %bb.dd

bb.dc:                                            ; preds = %bb.db
  store i64 0, ptr %i.bk, align 8, !alias.scope !146, !noalias !149
  br label %bb.de

bb.dd:                                            ; preds = %bb.db
  call void @llvm.experimental.noalias.scope.decl(metadata !162)
  %.sroa.0327.0.extract.trunc = trunc i64 %.sroa.0.0.copyload3.i to i32
  br label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionTlReEE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB13_5ChainINtB3_8IntoIterBI_EINtNtB15_3zip3ZipINtNtNtB5_3ops5range9RangeFromlEINtNtNtB5_3str4iter14SplitInclusivecEEENtNtNtB17_6traits8iterator8Iterator4next0ECsbXLDOPgjE5X_10test_utils.exit

bb.de:                                            ; preds = %bb.da, %bb.dc
  call void @llvm.experimental.noalias.scope.decl(metadata !165)
  %i.nk = load i32, ptr %.sroa.3.sroa.0.sroa.4.sroa.6.0..sroa.3.sroa.0.sroa.4.0..sroa.3.0..sroa_idx.sroa_idx.sroa_idx, align 4, !range !168, !alias.scope !169, !noalias !170, !noundef !5
  %.not.i.i = icmp eq i32 %i.nk, -1
  br i1 %.not.i.i, label %bb.dm, label %bb.df

bb.df:                                            ; preds = %bb.de
  call void @llvm.experimental.noalias.scope.decl(metadata !174)
  call void @llvm.experimental.noalias.scope.decl(metadata !177)
  %i.nl = load i32, ptr %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx.sroa_idx, align 8, !alias.scope !180, !noalias !185, !noundef !5 ; 2 uses
  %i.nm = add i32 %i.nl, 1
  store i32 %i.nm, ptr %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx.sroa_idx, align 8, !alias.scope !188, !noalias !185
  call void @llvm.experimental.noalias.scope.decl(metadata !189)
  call void @llvm.experimental.noalias.scope.decl(metadata !192)
  %i.nn = load i8, ptr %.sroa.3.sroa.0.sroa.6.0..sroa.3.0..sroa_idx.sroa_idx, align 1, !range !21, !alias.scope !195, !noalias !185, !noundef !5
  %i.no = trunc nuw i8 %i.nn to i1
  br i1 %i.no, label %bb.dm, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %.val.i.i.i.i.i.i = load ptr, ptr %.sroa.3.sroa.0.sroa.4.0..sroa.3.0..sroa_idx.sroa_idx, align 8, !alias.scope !195, !noalias !185, !nonnull !5, !noundef !5 ; 3 uses
  %.val1.i.i.i.i.i.i = load i64, ptr %.sroa.3.sroa.0.sroa.4.sroa.2.0..sroa.3.sroa.0.sroa.4.0..sroa.3.0..sroa_idx.sroa_idx.sroa_idx, align 8, !alias.scope !195, !noalias !185, !noundef !5 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !196)
  %i.np = load i64, ptr %.sroa.3.sroa.0.sroa.4.sroa.4.0..sroa.3.sroa.0.sroa.4.0..sroa.3.0..sroa_idx.sroa_idx.sroa_idx, align 8, !alias.scope !199, !noalias !200, !noundef !5 ; 5 uses
  %.not.i.i.i.i.i.i.i = icmp ugt i64 %i.np, %.val1.i.i.i.i.i.i
  %.promoted.i.i.i.i.i.i.i = load i64, ptr %.sroa.3.sroa.0.sroa.4.sroa.3.0..sroa.3.sroa.0.sroa.4.0..sroa.3.0..sroa_idx.sroa_idx.sroa_idx, align 8, !alias.scope !199, !noalias !200 ; 2 uses
  %i.nq = icmp ult i64 %i.np, %.promoted.i.i.i.i.i.i.i
  %or.cond20.i.i.i.i.i.i.i = or i1 %.not.i.i.i.i.i.i.i, %i.nq
  br i1 %or.cond20.i.i.i.i.i.i.i, label %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCsbXLDOPgjE5X_10test_utils.exit.i.i.i.i.i.i, label %.lr.ph.split.preheader.i.i.i.i.i.i.i

.lr.ph.split.preheader.i.i.i.i.i.i.i:             ; preds = %bb.dg
  %i.nr = load i8, ptr %.sroa.3.sroa.0.sroa.4.sroa.7.0..sroa.3.sroa.0.sroa.4.0..sroa.3.0..sroa_idx.sroa_idx.sroa_idx, align 8, !alias.scope !199, !noalias !200, !noundef !5 ; 2 uses
  %i.ns = zext nneg i8 %i.nr to i64               ; 4 uses
  %i.nt = icmp ult i8 %i.nr, 5
  call void @llvm.assume(i1 %i.nt)
  %i.nu = getelementptr i8, ptr %.sroa.3.sroa.0.sroa.4.sroa.5.0..sroa.3.sroa.0.sroa.4.0..sroa.3.0..sroa_idx.sroa_idx.sroa_idx, i64 %i.ns
  %i.nv = getelementptr i8, ptr %i.nu, i64 -1
  %.pre.i.i.i.i.i.i.i = load i8, ptr %i.nv, align 1, !alias.scope !199, !noalias !200 ; 2 uses
  br label %.lr.ph.split.i.i.i.i.i.i.i

.lr.ph.split.i.i.i.i.i.i.i:                       ; preds = %bb.dk, %.lr.ph.split.preheader.i.i.i.i.i.i.i
  %i.nw = phi i64 [ %i.ol, %bb.dk ], [ %.promoted.i.i.i.i.i.i.i, %.lr.ph.split.preheader.i.i.i.i.i.i.i ] ; 3 uses
  %i.nx = sub nuw i64 %i.np, %i.nw                ; 5 uses
  %i.ny = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i, i64 %i.nw ; 2 uses
  %i.nz = icmp samesign ult i64 %i.nx, 16
  br i1 %i.nz, label %.preheader.i.i.i.i.i.i.i.i, label %bb.dh

.preheader.i.i.i.i.i.i.i.i:                       ; preds = %.lr.ph.split.i.i.i.i.i.i.i
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.nx, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

bb.dh:                                            ; preds = %.lr.ph.split.i.i.i.i.i.i.i
  %i.oa = invoke { i64, i64 } @_RNvNtNtCshzWfHUSfYae_4core5slice6memchr14memchr_aligned(i8 noundef %.pre.i.i.i.i.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ny, i64 noundef range(i64 0, -9223372036854775808) %i.nx)
end_hunk_0
