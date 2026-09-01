Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xet-core-rs/original/git_xet.git_xet.731ec678f938a728-cgu.05?download=true
inline.NumInlined: 1046
inline.NumDeleted: 416
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RINvNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard14set_operations15shard_set_unionINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRINtNtCsexYYUdYSQU6_5alloc3vec3VechEEB2a_ECs9SMuO7kbZ2K_7git_xet:bb.a

bb.ax:                                            ; preds = %bb.aw
  %i.ha = load i64, ptr %i.al, align 8, !range !40, !noalias !1933, !noundef !6 ; 2 uses
  %i.hb = icmp eq i64 %i.ha, 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6117.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4460.0..sroa_idx.i, i64 40, i1 false), !noalias !1933
  br i1 %i.hb, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !1933
  %i.hc = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.hc, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6117.i, i64 40, i1 false), !noalias !1936
  store i64 1, ptr %0, align 8, !alias.scope !1928, !noalias !1936
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6117.i)
  br label %bb.dr

bb.az:                                            ; preds = %bb.ax
  %.sroa.5461.0.copyload.i = load i64, ptr %.sroa.5461.0..sroa_idx.i, align 8, !noalias !1933
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !1933
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ev, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6117.i, i64 40, i1 false), !noalias !1933
  store i64 %i.ha, ptr %i.es, align 8, !noalias !1933
  %.sroa.3124.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.es, i64 48
  store i64 %.sroa.5461.0.copyload.i, ptr %.sroa.3124.0..sroa_idx.i, align 8, !noalias !1933
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6117.i)
  br label %bb.af

.loopexit587.a:                                   ; preds = %bb.au, %bb.as
  %.lcssa498.sink = phi ptr [ %i.gi, %bb.as ], [ %i.gl, %bb.au ]
  %i.hd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.hd, align 8, !alias.scope !1928, !noalias !1936
  %.sroa.4455.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.lcssa498.sink, ptr %.sroa.4455.0..sroa_idx.i, align 8, !alias.scope !1928, !noalias !1936
  store i64 1, ptr %0, align 8, !alias.scope !1928, !noalias !1936
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !1933
  br label %bb.dr

bb.ba:                                            ; preds = %.lr.ph500.i
  %i.he = load i64, ptr %i.ao, align 8, !range !20, !noalias !1933, !noundef !6
  %i.hf = trunc nuw i64 %i.he to i1
  %i.hg = load ptr, ptr %i.dq, align 8, !noalias !1933 ; 2 uses
  br i1 %i.hf, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !1933
  br label %bb.bg

bb.bc:                                            ; preds = %bb.ba
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.496.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4442.0..sroa_idx.i, i64 40, i1 false), !noalias !1933
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !1933
  store ptr %i.hg, ptr %i.ap, align 8, !noalias !1933
  %i.hh = invoke { i64, ptr } @_RINvMs0_NtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structsNtB6_21FileVerificationEntry9serializeINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs9SMuO7kbZ2K_7git_xet(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ap, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %5)
          to label %bb.bd unwind label %.loopexit225.i, !noalias !1931 ; 2 uses

bb.bd:                                            ; preds = %bb.bc
  %i.hi = extractvalue { i64, ptr } %i.hh, 0
  %i.hj = trunc nuw i64 %i.hi to i1
  br i1 %i.hj, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.hk = extractvalue { i64, ptr } %i.hh, 1
  br label %bb.bg

bb.bf:                                            ; preds = %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !1933
  %exitcond707.not.i = icmp eq i32 %i.fz, %i.ff
  br i1 %exitcond707.not.i, label %._crit_edge501.i, label %.lr.ph500.i

bb.bg:                                            ; preds = %bb.be, %bb.bb
  %.sink = phi ptr [ %i.hk, %bb.be ], [ %i.hg, %bb.bb ]
  %i.hl = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.hl, align 8, !alias.scope !1928, !noalias !1936
  %.sroa.4447.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sink, ptr %.sroa.4447.0..sroa_idx.i, align 8, !alias.scope !1928, !noalias !1936
  store i64 1, ptr %0, align 8, !alias.scope !1928, !noalias !1936
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !1933
  br label %bb.dr

bb.bh:                                            ; preds = %bb.am
  %i.hm = load i64, ptr %i.aq, align 8, !range !20, !noalias !1933, !noundef !6
  %i.hn = trunc nuw i64 %i.hm to i1
  %i.ho = load ptr, ptr %i.dp, align 8, !noalias !1933 ; 2 uses
  br i1 %i.hn, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !1933
  br label %bb.bn

bb.bj:                                            ; preds = %bb.bh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %.sroa.282.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(28) %.sroa.4432.0..sroa_idx.i, i64 28, i1 false), !noalias !1933
  %.sroa.5433.0.copyload.i = load i32, ptr %.sroa.5433.0..sroa_idx.i, align 4, !noalias !1933 ; 2 uses
  %.sroa.6434.0.copyload.i = load i64, ptr %.sroa.6434.0..sroa_idx.i, align 8, !noalias !1933
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !1933
  store ptr %i.ho, ptr %i.ar, align 8, !noalias !1933
  store i32 %.sroa.5433.0.copyload.i, ptr %.sroa.383.0..sroa_idx.i, align 4, !noalias !1933
  store i64 %.sroa.6434.0.copyload.i, ptr %.sroa.484.0..sroa_idx.i, align 8, !noalias !1933
  %i.hp = zext i32 %.sroa.5433.0.copyload.i to i64
  %i.hq = add i64 %i.fp, %i.hp                    ; 4 uses
  store i64 %i.hq, ptr %i.bm, align 8, !noalias !1933
  %i.hr = invoke { i64, ptr } @_RINvMs_NtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structsNtB5_21FileDataSequenceEntry9serializeINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs9SMuO7kbZ2K_7git_xet(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ar, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %5)
          to label %bb.bk unwind label %.loopexit.split-lp226.loopexit.i, !noalias !1931 ; 2 uses

bb.bk:                                            ; preds = %bb.bj
  %i.hs = extractvalue { i64, ptr } %i.hr, 0
  %i.ht = trunc nuw i64 %i.hs to i1
  br i1 %i.ht, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  %i.hu = extractvalue { i64, ptr } %i.hr, 1
  br label %bb.bn

bb.bm:                                            ; preds = %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !1933
  %exitcond706.not.i = icmp eq i32 %i.fq, %i.ff
  br i1 %exitcond706.not.i, label %._crit_edge498.i, label %bb.am

bb.bn:                                            ; preds = %bb.bl, %bb.bi
  %.sink574 = phi ptr [ %i.hu, %bb.bl ], [ %i.ho, %bb.bi ]
  %i.hv = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.hv, align 8, !alias.scope !1928, !noalias !1936
  %.sroa.4439.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sink574, ptr %.sroa.4439.0..sroa_idx.i, align 8, !alias.scope !1928, !noalias !1936
  store i64 1, ptr %0, align 8, !alias.scope !1928, !noalias !1936
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !1933
  br label %bb.dr

bb.bo:                                            ; preds = %bb.ac
  %i.hw = getelementptr inbounds nuw [56 x i8], ptr %i.au, i64 %i.el ; 6 uses
  %i.hx = load i64, ptr %i.hw, align 8, !range !20, !noalias !1933, !noundef !6
  %i.hy = trunc nuw i64 %i.hx to i1
  br i1 %i.hy, label %bb.bp, label %.invoke.i, !prof !5

bb.bp:                                            ; preds = %bb.bo
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hw, i64 8
  %i.ia = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.el
  %i.ib = load ptr, ptr %i.ia, align 8, !alias.scope !1931, !noalias !1955, !nonnull !6, !align !12, !noundef !6 ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hw, i64 40
  %i.id = load i32, ptr %i.ic, align 8, !noalias !1933, !noundef !6 ; 2 uses
  %i.ie = lshr i32 %i.id, 30
  %.lobit218.i = and i32 %i.ie, 1                 ; 2 uses
  %i.if = getelementptr inbounds nuw i8, ptr %i.hw, i64 44
  %i.ig = load i32, ptr %i.if, align 4, !noalias !1933, !noundef !6 ; 2 uses
  %i.ih = shl i32 %i.ig, 1
  %i.ii = or disjoint i32 %i.ih, %.lobit218.i
  %i.ij = add i32 %.lobit218.i, %i.ig
  %.not652950.i = icmp slt i32 %i.id, 0
  %.sroa.0131.0.i = select i1 %.not652950.i, i32 %i.ii, i32 %i.ij
  %i.ik = zext i32 %.sroa.0131.0.i to i64
  %i.il = mul nuw nsw i64 %i.ik, 48
  %i.im = invoke { i64, ptr } @_RNvXs4_NtNtCskKLDkoKarTP_4core2io6cursorINtB5_6CursorRINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtB7_4seek4Seek4seekCs9SMuO7kbZ2K_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ib, i64 noundef 2, i64 noundef %i.il)
          to label %bb.bq unwind label %.loopexit.split-lp226.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !1931 ; 2 uses

bb.bq:                                            ; preds = %bb.bp
  %i.in = extractvalue { i64, ptr } %i.im, 0
  %i.io = trunc nuw i64 %i.in to i1
  br i1 %i.io, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  %i.ip = extractvalue { i64, ptr } %i.im, 1
  %i.iq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.iq, align 8, !alias.scope !1928, !noalias !1936
  %.sroa.4465.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ip, ptr %.sroa.4465.0..sroa_idx.i, align 8, !alias.scope !1928, !noalias !1936
  store i64 1, ptr %0, align 8, !alias.scope !1928, !noalias !1936
  br label %bb.dr

bb.bs:                                            ; preds = %bb.bq
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6134.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !1933
  invoke fastcc void @_RNCINvNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard14set_operations13set_operationINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRINtNtCsexYYUdYSQU6_5alloc3vec3VechEEB2a_E0Cs9SMuO7kbZ2K_7git_xet(ptr noalias nofree noundef align 8 captures(address) dereferenceable(56) %i.ak, ptr noalias nofree noundef align 8 dereferenceable(16) %i.ib)
          to label %bb.bt unwind label %.loopexit.split-lp226.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !1931

bb.bt:                                            ; preds = %bb.bs
  %i.ir = load i64, ptr %i.ak, align 8, !range !40, !noalias !1933, !noundef !6 ; 2 uses
  %i.is = icmp eq i64 %i.ir, 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6134.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4468.0..sroa_idx.i, i64 40, i1 false), !noalias !1933
  br i1 %i.is, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !1933
  %i.it = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.it, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6134.i, i64 40, i1 false), !noalias !1936
  store i64 1, ptr %0, align 8, !alias.scope !1928, !noalias !1936
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6134.i)
  br label %bb.dr

bb.bv:                                            ; preds = %bb.bt
  %.sroa.5469.0.copyload.i = load i64, ptr %.sroa.5469.0..sroa_idx.i, align 8, !noalias !1933
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !1933
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.hz, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6134.i, i64 40, i1 false), !noalias !1933
  store i64 %i.ir, ptr %i.hw, align 8, !noalias !1933
  %.sroa.3141.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hw, i64 48
  store i64 %.sroa.5469.0.copyload.i, ptr %.sroa.3141.0..sroa_idx.i, align 8, !noalias !1933
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6134.i)
  br label %bb.af

bb.bw:                                            ; preds = %bb.ag
  %i.iu = load i64, ptr %i.dh, align 8, !range !20, !noalias !1933, !noundef !6
  %i.iv = trunc nuw i64 %i.iu to i1
  br i1 %i.iv, label %bb.bx, label %.invoke.i, !prof !5

bb.bx:                                            ; preds = %bb.bw
  %i.iw = load i32, ptr %.sroa.2.sroa.5.0..sroa.2.0..sroa_idx.sroa_idx.i, align 8, !noalias !1933, !noundef !6 ; 3 uses
  %.not644.i = icmp slt i32 %i.iw, 0              ; 4 uses
  %i.ix = load i32, ptr %.sroa.258.sroa.5.0..sroa.258.0..sroa_idx.sroa_idx.i, align 8, !noalias !1933 ; 3 uses
  %i.iy = icmp slt i32 %i.ix, 0
  %.sroa.0151.0.i = select i1 %.not644.i, i1 true, i1 %i.iy ; 2 uses
  %i.iz = and i32 %i.iw, 1073741824               ; 2 uses
  %.not645.i = icmp ne i32 %i.iz, 0               ; 3 uses
  %i.ja = and i32 %i.ix, 1073741824
  %i.jb = icmp ne i32 %i.ja, 0
  %.sroa.0153.0.i = select i1 %.not645.i, i1 true, i1 %i.jb ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !1933
  %.sroa.0155.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !noalias !1933 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1933
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3157.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx.i, i64 24, i1 false), !noalias !1933
  %i.jc = load i32, ptr %i.di, align 4, !noalias !1933, !noundef !6 ; 5 uses
  store i64 %.sroa.0155.0.copyload.i, ptr %i.c, align 8, !noalias !1933
  invoke void @_RINvMNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structsNtB3_22FileDataSequenceHeader3newmECs9SMuO7kbZ2K_7git_xet(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.aj, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.c, i32 noundef %i.jc, i1 noundef zeroext %.sroa.0151.0.i, i1 noundef zeroext %.sroa.0153.0.i)
          to label %bb.by unwind label %.loopexit.split-lp226.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !1931

bb.by:                                            ; preds = %bb.bx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1933
  %i.jd = invoke { i64, ptr } @_RINvMNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structsNtB3_22FileDataSequenceHeader9serializeINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs9SMuO7kbZ2K_7git_xet(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.aj, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %5)
          to label %bb.bz unwind label %.loopexit.split-lp226.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !1931 ; 2 uses

bb.bz:                                            ; preds = %bb.by
  %i.je = extractvalue { i64, ptr } %i.jd, 0
  %i.jf = extractvalue { i64, ptr } %i.jd, 1      ; 2 uses
  %i.jg = trunc nuw i64 %i.je to i1
  br i1 %i.jg, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  %i.jh = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.jh, align 8, !alias.scope !1928, !noalias !1936
  %.sroa.4471.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.jf, ptr %.sroa.4471.0..sroa_idx.i, align 8, !alias.scope !1928, !noalias !1936
  store i64 1, ptr %0, align 8, !alias.scope !1928, !noalias !1936
  br label %bb.de

bb.cb:                                            ; preds = %bb.bz
  %i.ji = ptrtoint ptr %i.jf to i64
  %.not534.i = icmp eq i32 %i.jc, 0
  br i1 %.not534.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %bb.dp, %bb.cb
  %i.jj = phi i64 [ %i.ei, %bb.cb ], [ %i.mm, %bb.dp ]
  %i.jk = zext i32 %i.jc to i64
  %i.jl = mul nuw nsw i64 %i.jk, 48
  %i.jm = add i64 %i.jl, %.sroa.0.1503.i
  %i.jn = add i64 %i.jm, %i.ji                    ; 3 uses
  %i.jo = load i32, ptr %i.dk, align 4, !noalias !1933, !noundef !6 ; 3 uses
  %i.jp = zext i32 %i.jo to i64
  %i.jq = mul nuw nsw i64 %i.jp, 48
  %i.jr = invoke { i64, ptr } @_RNvXs4_NtNtCskKLDkoKarTP_4core2io6cursorINtB5_6CursorRINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtB7_4seek4Seek4seekCs9SMuO7kbZ2K_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %4, i64 noundef 2, i64 noundef %i.jq)
          to label %bb.cc unwind label %.loopexit.split-lp226.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !1931 ; 2 uses

.lr.ph.i:                                         ; preds = %bb.cb, %bb.dp
  %i.js = phi i64 [ %i.mm, %bb.dp ], [ %i.ei, %bb.cb ]
  %.sroa.0608.0489.i = phi i32 [ %i.jt, %bb.dp ], [ 0, %bb.cb ]
  %i.jt = add nuw i32 %.sroa.0608.0489.i, 1       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !1933
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !1933
  invoke void @_RINvMs_NtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structsNtB5_21FileDataSequenceEntry11deserializeINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECs9SMuO7kbZ2K_7git_xet(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.ah, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %2)
          to label %bb.dk unwind label %.loopexit.split-lp226.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !1931

bb.cc:                                            ; preds = %._crit_edge.i
  %i.ju = extractvalue { i64, ptr } %i.jr, 0
  %i.jv = trunc nuw i64 %i.ju to i1
  br i1 %i.jv, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %bb.cc
  %i.jw = extractvalue { i64, ptr } %i.jr, 1
  %i.jx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.jx, align 8, !alias.scope !1928, !noalias !1936
  %.sroa.4484.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.jw, ptr %.sroa.4484.0..sroa_idx.i, align 8, !alias.scope !1928, !noalias !1936
  store i64 1, ptr %0, align 8, !alias.scope !1928, !noalias !1936
  br label %bb.de

bb.ce:                                            ; preds = %bb.cc
  br i1 %.sroa.0151.0.i, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %bb.cj, %._crit_edge494.i, %bb.ce
  %.sroa.0.5.i = phi i64 [ %i.jn, %bb.ce ], [ %.sroa.0.6.lcssa.i, %._crit_edge494.i ], [ %.sroa.0.6.lcssa.i, %bb.cj ] ; 2 uses
  br i1 %.sroa.0153.0.i, label %bb.cn, label %bb.cl

bb.cg:                                            ; preds = %bb.ce
  %.lobit.i = lshr i32 %i.iw, 31
  %.658.i = zext nneg i32 %.lobit.i to i64
  %i.jy = select i1 %.not644.i, i32 %i.jc, i32 %i.jo ; 2 uses
  %.not535.i = icmp eq i32 %i.jy, 0
  br i1 %.not535.i, label %._crit_edge494.i, label %.lr.ph493.i

.lr.ph493.i:                                      ; preds = %bb.cg
  %i.jz = select i1 %.not644.i, ptr %2, ptr %4
  br label %bb.ch

._crit_edge494.i:                                 ; preds = %bb.dj, %bb.cg
  %.sroa.0.6.lcssa.i = phi i64 [ %i.jn, %bb.cg ], [ %i.mg, %bb.dj ] ; 2 uses
  %.not647.i423 = icmp slt i32 %i.ix, 0
  %.not647.i.not = select i1 %.not644.i, i1 %.not647.i423, i1 false
  br i1 %.not647.i.not, label %bb.ci, label %bb.cf

bb.ch:                                            ; preds = %bb.dj, %.lr.ph493.i
  %.sroa.0.6491.i = phi i64 [ %i.jn, %.lr.ph493.i ], [ %i.mg, %bb.dj ]
  %.sroa.0619.0490.i = phi i32 [ 0, %.lr.ph493.i ], [ %i.ka, %bb.dj ]
  %i.ka = add nuw i32 %.sroa.0619.0490.i, 1       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !1933
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !1933
  invoke void @_RINvMs0_NtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structsNtB6_21FileVerificationEntry11deserializeINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECs9SMuO7kbZ2K_7git_xet(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.af, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.jz)
          to label %bb.df unwind label %.loopexit.split-lp226.loopexit.split-lp.loopexit.i, !noalias !1931

bb.ci:                                            ; preds = %._crit_edge494.i
  %i.kb = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %.658.i
  %i.kc = load ptr, ptr %i.kb, align 8, !alias.scope !1931, !noalias !1955, !nonnull !6, !align !12, !noundef !6
  %i.kd = zext i32 %i.jo to i64
  %i.ke = mul nuw nsw i64 %i.kd, 48
  %i.kf = invoke { i64, ptr } @_RNvXs4_NtNtCskKLDkoKarTP_4core2io6cursorINtB5_6CursorRINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtB7_4seek4Seek4seekCs9SMuO7kbZ2K_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.kc, i64 noundef 2, i64 noundef %i.ke)
          to label %bb.cj unwind label %.loopexit.split-lp226.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !1931 ; 2 uses

bb.cj:                                            ; preds = %bb.ci
  %i.kg = extractvalue { i64, ptr } %i.kf, 0
  %i.kh = trunc nuw i64 %i.kg to i1
  br i1 %i.kh, label %bb.ck, label %bb.cf

bb.ck:                                            ; preds = %bb.cj
  %i.ki = extractvalue { i64, ptr } %i.kf, 1
  %i.kj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.kj, align 8, !alias.scope !1928, !noalias !1936
  %.sroa.4495.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ki, ptr %.sroa.4495.0..sroa_idx.i, align 8, !alias.scope !1928, !noalias !1936
  store i64 1, ptr %0, align 8, !alias.scope !1928, !noalias !1936
  br label %bb.de

bb.cl:                                            ; preds = %bb.ct, %bb.cf
  %.sroa.0.7.i = phi i64 [ %i.kw, %bb.ct ], [ %.sroa.0.5.i, %bb.cf ]
  %i.kk = load i64, ptr %i.ck, align 8, !alias.scope !1959, !noalias !1933, !noundef !6 ; 3 uses
  %i.kl = load i64, ptr %i.av, align 8, !range !37, !alias.scope !1959, !noalias !1933, !noundef !6
  %i.km = icmp eq i64 %i.kk, %i.kl
  br i1 %i.km, label %bb.cm, label %bb.cx

bb.cm:                                            ; preds = %bb.cl
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTymEE8grow_oneCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.av) #19
          to label %bb.cx unwind label %.loopexit.split-lp226.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !1931

bb.cn:                                            ; preds = %bb.cf
  %.lobit214.i = lshr exact i32 %i.iz, 30
  %.662.i = zext nneg i32 %.lobit214.i to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !1933
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !1933
  %i.kn = select i1 %.not645.i, ptr %2, ptr %4
  invoke void @_RINvMs1_NtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structsNtB6_15FileMetadataExt11deserializeINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECs9SMuO7kbZ2K_7git_xet(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.ad, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.kn)
          to label %bb.co unwind label %.loopexit.split-lp226.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !1931

bb.co:                                            ; preds = %bb.cn
  %i.ko = load i64, ptr %i.ad, align 8, !range !20, !noalias !1933, !noundef !6
  %i.kp = trunc nuw i64 %i.ko to i1
  %i.kq = load ptr, ptr %i.dm, align 8, !noalias !1933 ; 2 uses
  br i1 %i.kp, label %bb.cp, label %bb.cq

bb.cp:                                            ; preds = %bb.co
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !1933
  br label %.loopexit586

bb.cq:                                            ; preds = %bb.co
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4205.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4498.0..sroa_idx.i, i64 40, i1 false), !noalias !1933
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !1933
  store ptr %i.kq, ptr %i.ae, align 8, !noalias !1933
  %i.kr = invoke { i64, ptr } @_RINvMs1_NtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structsNtB6_15FileMetadataExt9serializeINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs9SMuO7kbZ2K_7git_xet(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ae, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %5)
          to label %bb.cr unwind label %.loopexit.split-lp226.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !1931 ; 2 uses

bb.cr:                                            ; preds = %bb.cq
  %i.ks = extractvalue { i64, ptr } %i.kr, 0
  %i.kt = extractvalue { i64, ptr } %i.kr, 1      ; 2 uses
  %i.ku = trunc nuw i64 %i.ks to i1
  br i1 %i.ku, label %.loopexit586, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.kv = ptrtoint ptr %i.kt to i64
  %i.kw = add i64 %.sroa.0.5.i, %i.kv
  %.sroa.258.sroa.5.0..sroa.258.0..sroa_idx.sroa_idx.val215.i = load i32, ptr %.sroa.258.sroa.5.0..sroa.258.0..sroa_idx.sroa_idx.i, align 8, !noalias !1933
  %.sroa.2.sroa.5.0..sroa.2.0..sroa_idx.sroa_idx.val216.i = load i32, ptr %.sroa.2.sroa.5.0..sroa.2.0..sroa_idx.sroa_idx.i, align 8, !noalias !1933
  %i.kx = select i1 %.not645.i, i32 %.sroa.258.sroa.5.0..sroa.258.0..sroa_idx.sroa_idx.val215.i, i32 %.sroa.2.sroa.5.0..sroa.2.0..sroa_idx.sroa_idx.val216.i
  %i.ky = and i32 %i.kx, 1073741824
  %.not648.i = icmp eq i32 %i.ky, 0
  br i1 %.not648.i, label %bb.ct, label %bb.cu

bb.ct:                                            ; preds = %bb.cv, %bb.cs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !1933
  br label %bb.cl

bb.cu:                                            ; preds = %bb.cs
  %i.kz = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %.662.i
  %i.la = load ptr, ptr %i.kz, align 8, !alias.scope !1931, !noalias !1955, !nonnull !6, !align !12, !noundef !6
  %i.lb = invoke { i64, ptr } @_RNvXs4_NtNtCskKLDkoKarTP_4core2io6cursorINtB5_6CursorRINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtB7_4seek4Seek4seekCs9SMuO7kbZ2K_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.la, i64 noundef 2, i64 noundef 48)
          to label %bb.cv unwind label %.loopexit.split-lp226.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !1931 ; 2 uses

bb.cv:                                            ; preds = %bb.cu
  %i.lc = extractvalue { i64, ptr } %i.lb, 0
  %i.ld = trunc nuw i64 %i.lc to i1
  br i1 %i.ld, label %bb.cw, label %bb.ct

bb.cw:                                            ; preds = %bb.cv
  %i.le = extractvalue { i64, ptr } %i.lb, 1
  br label %.loopexit586

bb.cx:                                            ; preds = %bb.cm, %bb.cl
  %i.lf = load ptr, ptr %i.cj, align 8, !alias.scope !1959, !noalias !1933, !nonnull !6, !noundef !6
  %i.lg = getelementptr inbounds nuw [16 x i8], ptr %i.lf, i64 %i.kk ; 2 uses
  store i64 %.sroa.0155.0.copyload.i, ptr %i.lg, align 8, !noalias !1931
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 8
  store i32 %.sroa.038.1502.i, ptr %i.lh, align 8, !noalias !1931
  %i.li = add i64 %i.kk, 1
  store i64 %i.li, ptr %i.ck, align 8, !alias.scope !1959, !noalias !1933
  %i.lj = load i32, ptr %i.dn, align 8, !noalias !1933, !noundef !6 ; 2 uses
  %i.lk = lshr i32 %i.lj, 30
  %.lobit217.i = and i32 %i.lk, 1                 ; 2 uses
  %i.ll = load i32, ptr %i.do, align 4, !noalias !1933, !noundef !6 ; 2 uses
  %i.lm = shl i32 %i.ll, 1
  %i.ln = or disjoint i32 %i.lm, %.lobit217.i
  %i.lo = add i32 %.lobit217.i, %i.ll
  %.not650949.i = icmp slt i32 %i.lj, 0
  %.sroa.0216.0.i = select i1 %.not650949.i, i32 %i.ln, i32 %i.lo
  %i.lp = add i32 %.sroa.038.1502.i, 1
  %i.lq = add i32 %i.lp, %.sroa.0216.0.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6219.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !1933
  invoke fastcc void @_RNCINvNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard14set_operations13set_operationINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRINtNtCsexYYUdYSQU6_5alloc3vec3VechEEB2a_E0Cs9SMuO7kbZ2K_7git_xet(ptr noalias nofree noundef align 8 captures(address) dereferenceable(56) %i.ac, ptr noalias nofree noundef align 8 dereferenceable(16) %2)
          to label %bb.cy unwind label %.loopexit.split-lp226.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !1931

bb.cy:                                            ; preds = %bb.cx
  %i.lr = load i64, ptr %i.ac, align 8, !range !40, !noalias !1933, !noundef !6 ; 2 uses
  %i.ls = icmp eq i64 %i.lr, 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6219.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4511.0..sroa_idx.i, i64 40, i1 false), !noalias !1933
  br i1 %i.ls, label %bb.cz, label %bb.da

bb.cz:                                            ; preds = %bb.cy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !1933
  %i.lt = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.lt, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6219.i, i64 40, i1 false), !noalias !1936
  store i64 1, ptr %0, align 8, !alias.scope !1928, !noalias !1936
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6219.i)
  br label %bb.de

bb.da:                                            ; preds = %bb.cy
  %.sroa.5512.0.copyload.i = load i64, ptr %.sroa.5512.0..sroa_idx.i, align 8, !noalias !1933
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !1933
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.2.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6219.i, i64 40, i1 false), !noalias !1933
  store i64 %i.lr, ptr %i.au, align 8, !noalias !1933
  store i64 %.sroa.5512.0.copyload.i, ptr %.sroa.3.0..sroa_idx.i, align 8, !noalias !1933
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6219.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6229.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !1933
  invoke fastcc void @_RNCINvNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard14set_operations13set_operationINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRINtNtCsexYYUdYSQU6_5alloc3vec3VechEEB2a_E0Cs9SMuO7kbZ2K_7git_xet(ptr noalias nofree noundef align 8 captures(address) dereferenceable(56) %i.ab, ptr noalias nofree noundef align 8 dereferenceable(16) %4)
          to label %bb.db unwind label %.loopexit.split-lp226.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !1931

bb.db:                                            ; preds = %bb.da
  %i.lu = load i64, ptr %i.ab, align 8, !range !40, !noalias !1933, !noundef !6 ; 2 uses
  %i.lv = icmp eq i64 %i.lu, 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6229.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4514.0..sroa_idx.i, i64 40, i1 false), !noalias !1933
  br i1 %i.lv, label %bb.dc, label %bb.dd

bb.dc:                                            ; preds = %bb.db
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !1933
  %i.lw = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.lw, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6229.i, i64 40, i1 false), !noalias !1936
  store i64 1, ptr %0, align 8, !alias.scope !1928, !noalias !1936
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6229.i)
  br label %bb.de

bb.dd:                                            ; preds = %bb.db
  %.sroa.5515.0.copyload.i = load i64, ptr %.sroa.5515.0..sroa_idx.i, align 8, !noalias !1933
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !1933
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.258.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6229.i, i64 40, i1 false), !noalias !1933
  store i64 %i.lu, ptr %i.dh, align 8, !noalias !1933
  store i64 %.sroa.5515.0.copyload.i, ptr %.sroa.359.0..sroa_idx.i, align 8, !noalias !1933
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6229.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !1933
  br label %bb.af

bb.de:                                            ; preds = %bb.dq, %.loopexit584, %.loopexit586, %bb.dc, %bb.cz, %bb.ck, %bb.cd, %bb.ca
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !1933
  br label %bb.dr

.loopexit586:                                     ; preds = %bb.cr, %bb.cw, %bb.cp
  %.sink576 = phi ptr [ %i.le, %bb.cw ], [ %i.kq, %bb.cp ], [ %i.kt, %bb.cr ]
  %i.lx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.lx, align 8, !alias.scope !1928, !noalias !1936
  %.sroa.4506.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sink576, ptr %.sroa.4506.0..sroa_idx.i, align 8, !alias.scope !1928, !noalias !1936
  store i64 1, ptr %0, align 8, !alias.scope !1928, !noalias !1936
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !1933
  br label %bb.de

bb.df:                                            ; preds = %bb.ch
  %i.ly = load i64, ptr %i.af, align 8, !range !20, !noalias !1933, !noundef !6
  %i.lz = trunc nuw i64 %i.ly to i1
  %i.ma = load ptr, ptr %i.dl, align 8, !noalias !1933 ; 2 uses
  br i1 %i.lz, label %bb.dg, label %bb.dh

bb.dg:                                            ; preds = %bb.df
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !1933
  br label %.loopexit584

bb.dh:                                            ; preds = %bb.df
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4188.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4487.0..sroa_idx.i, i64 40, i1 false), !noalias !1933
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !1933
  store ptr %i.ma, ptr %i.ag, align 8, !noalias !1933
  %i.mb = invoke { i64, ptr } @_RINvMs0_NtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structsNtB6_21FileVerificationEntry9serializeINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs9SMuO7kbZ2K_7git_xet(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ag, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %5)
          to label %bb.di unwind label %.loopexit.split-lp226.loopexit.split-lp.loopexit.i, !noalias !1931 ; 2 uses

bb.di:                                            ; preds = %bb.dh
  %i.mc = extractvalue { i64, ptr } %i.mb, 0
  %i.md = extractvalue { i64, ptr } %i.mb, 1      ; 2 uses
  %i.me = trunc nuw i64 %i.mc to i1
  br i1 %i.me, label %.loopexit584, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.mf = ptrtoint ptr %i.md to i64
  %i.mg = add i64 %.sroa.0.6491.i, %i.mf          ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !1933
  %exitcond705.not.i = icmp eq i32 %i.ka, %i.jy
  br i1 %exitcond705.not.i, label %._crit_edge494.i, label %bb.ch

.loopexit584:                                     ; preds = %bb.di, %bb.dg
  %.lcssa459.sink = phi ptr [ %i.ma, %bb.dg ], [ %i.md, %bb.di ]
  %i.mh = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.mh, align 8, !alias.scope !1928, !noalias !1936
  %.sroa.4492.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.lcssa459.sink, ptr %.sroa.4492.0..sroa_idx.i, align 8, !alias.scope !1928, !noalias !1936
  store i64 1, ptr %0, align 8, !alias.scope !1928, !noalias !1936
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !1933
  br label %bb.de

bb.dk:                                            ; preds = %.lr.ph.i
  %i.mi = load i64, ptr %i.ah, align 8, !range !20, !noalias !1933, !noundef !6
  %i.mj = trunc nuw i64 %i.mi to i1
  %i.mk = load ptr, ptr %i.dj, align 8, !noalias !1933 ; 2 uses
  br i1 %i.mj, label %bb.dl, label %bb.dm

bb.dl:                                            ; preds = %bb.dk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !1933
  br label %bb.dq

bb.dm:                                            ; preds = %bb.dk
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %.sroa.2169.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(28) %.sroa.4474.0..sroa_idx.i, i64 28, i1 false), !noalias !1933
  %.sroa.5475.0.copyload.i = load i32, ptr %.sroa.5475.0..sroa_idx.i, align 4, !noalias !1933 ; 2 uses
  %.sroa.6476.0.copyload.i = load i64, ptr %.sroa.6476.0..sroa_idx.i, align 8, !noalias !1933
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !1933
  store ptr %i.mk, ptr %i.ai, align 8, !noalias !1933
  store i32 %.sroa.5475.0.copyload.i, ptr %.sroa.3170.0..sroa_idx.i, align 4, !noalias !1933
end_hunk_0
