Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fish-rs/original/fish-3db1312fccef457a.fish.60153328cb65e96a-cgu.12?download=true
inline.NumInlined: 2412
inline.NumDeleted: 784
loop-unroll.NumCompletelyUnrolled: 25
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 26
begin_hunk_0_@_RNvMNtCs8frGy5WneL6_4fish15parse_executionNtB2_16ExecutionContext9run_1_job:bb.a
  br i1 %i.fg, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs8frGy5WneL6_4fish5timer18PrintElapsedOnDropEEB11_.exit, label %bb.ah

bb.ah:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtCs5UXtnEuoeIl_11fish_common10ScopeGuardQNtNtCs8frGy5WneL6_4fish17operation_context16OperationContextNCNvMNtB1m_15parse_executionNtB2l_16ExecutionContext9run_1_jobs0_0EEB1m_.exit
  invoke void @_RNvXs_NtCs8frGy5WneL6_4fish5timerNtB4_18PrintElapsedOnDropNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(304) %i.az)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs8frGy5WneL6_4fish5timer18PrintElapsedOnDropEEB11_.exit unwind label %bb.gp

bb.ai:                                            ; preds = %bb.ht, %bb.ao, %.noexc67, %bb.an, %_RNvMNtCs8frGy5WneL6_4fish15parse_executionNtB2_16ExecutionContext19job_is_simple_block.exit, %bb.ar, %bb.ak, %.loopexit
  %i.fh = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtCs5UXtnEuoeIl_11fish_common10ScopeGuardQNtNtCs8frGy5WneL6_4fish17operation_context16OperationContextNCNvMNtB1m_15parse_executionNtB2l_16ExecutionContext9run_1_jobs0_0EEB1m_.exit

_RNvMNtCs8frGy5WneL6_4fish15parse_executionNtB2_16ExecutionContext19job_is_simple_block.exit: ; preds = %bb.ad, %bb.ab, %bb.z, %bb.x, %bb.ac, %bb.aa, %bb.y, %bb.w
  %i.fi = phi ptr [ %i.ed, %bb.y ], [ %i.du, %bb.w ], [ %i.em, %bb.aa ], [ %i.ev, %bb.ac ], [ %i.em, %bb.ab ], [ %i.du, %bb.x ], [ %i.ed, %bb.z ], [ %i.ev, %bb.ad ] ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at)
  store i64 0, ptr %i.at, align 8
  %i.fj = getelementptr inbounds nuw i8, ptr %2, i64 80
  %.val44 = load ptr, ptr %i.bs, align 8
  %.val45 = load ptr, ptr %i.fj, align 8
  %i.fk = getelementptr inbounds nuw i8, ptr %2, i64 88
  %.val46 = load i64, ptr %i.fk, align 8, !noundef !5
  %i.fl = invoke fastcc noundef i8 @_RNvMNtCs8frGy5WneL6_4fish15parse_executionNtB2_16ExecutionContext26apply_variable_assignments(ptr %.val44, ptr noalias nofree noundef align 8 dereferenceable(64) %1, ptr noalias nofree noundef align 8 dereferenceable_or_null(224) null, ptr %.val45, i64 %.val46, ptr noalias nofree noundef align 8 dereferenceable(16) %i.at)
          to label %bb.gr unwind label %bb.ai     ; 2 uses

.loopexit:                                        ; preds = %.lr.ph, %.lr.ph26, %.lr.ph28, %.lr.ph30, %bb.u, %bb.u, %bb.t
  %i.fm = invoke noundef nonnull align 8 ptr @_RNvMNtCs8frGy5WneL6_4fish17operation_contextNtB2_16OperationContext6parser(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %1)
          to label %bb.aj unwind label %bb.ai     ; 2 uses

bb.aj:                                            ; preds = %.loopexit
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 408 ; 2 uses
  %i.fo = load ptr, ptr %i.fn, align 8, !noalias !1733, !nonnull !5, !noundef !5 ; 2 uses
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fo, i64 40
  %.sroa.3.0.copyload = load i8, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fo, i64 41
  %.sroa.4.0.copyload = load i8, ptr %.sroa.4.0..sroa_idx, align 1 ; 2 uses
  %i.fp = trunc nuw i8 %.sroa.3.0.copyload to i1
  br i1 %i.fp, label %bb.an, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.fq = invoke noundef zeroext i1 @_RNvMs5_NtCs8frGy5WneL6_4fish6parserNtB5_6Parser8is_block(ptr noundef nonnull align 8 %i.fm)
          to label %bb.al unwind label %bb.ai

bb.al:                                            ; preds = %bb.ak
  %i.fr = trunc nuw i8 %.sroa.4.0.copyload to i1
  %or.cond = select i1 %i.fq, i1 true, i1 %i.fr
  br i1 %or.cond, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %.val47 = load ptr, ptr %i.fn, align 8, !nonnull !5, !noundef !5
  %i.fs = getelementptr inbounds nuw i8, ptr %.val47, i64 42
  %i.ft = load i8, ptr %i.fs, align 2, !range !711, !noundef !5
  %i.fu = xor i8 %i.ft, 1
  br label %bb.an

bb.an:                                            ; preds = %bb.aj, %bb.al, %bb.am
  %.sroa.011.0 = phi i8 [ %i.fu, %bb.am ], [ 1, %bb.al ], [ 1, %bb.aj ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap)
  %.val48 = load ptr, ptr %i.bs, align 8, !nonnull !5, !noundef !5 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1736)
  %i.fv = getelementptr inbounds nuw i8, ptr %.val48, i64 24
  %i.fw = load ptr, ptr %i.fv, align 8, !noalias !1736, !nonnull !5, !noundef !5
  %i.fx = getelementptr inbounds nuw i8, ptr %.val48, i64 32
  %i.fy = load i64, ptr %i.fx, align 8, !noalias !1736, !noundef !5
  %i.fz = invoke { ptr, i64 } @_RNvYNtNtCs8frGy5WneL6_4fish3ast11JobPipelineNtB4_4Node6sourceB6_(ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.fw, i64 noundef %i.fy) #38
          to label %.noexc67 unwind label %bb.ai, !inline_history !1654 ; 2 uses

.noexc67:                                         ; preds = %bb.an
  %i.ga = extractvalue { ptr, i64 } %i.fz, 0
  %i.gb = extractvalue { ptr, i64 } %i.fz, 1      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !1736
  invoke void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ad, i64 noundef %i.gb, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4)
          to label %.noexc68 unwind label %bb.ai

.noexc68:                                         ; preds = %.noexc67
  %i.gc = load i64, ptr %i.ad, align 8, !range !7, !noalias !1736, !noundef !5
  %i.gd = trunc nuw i64 %i.gc to i1
  %i.ge = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.gf = load i64, ptr %i.ge, align 8, !range !8, !noalias !1736, !noundef !5 ; 3 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.ad, i64 16 ; 2 uses
  br i1 %i.gd, label %bb.ao, label %bb.ap, !prof !9

bb.ao:                                            ; preds = %.noexc68
  %i.gh = load i64, ptr %i.gg, align 8, !noalias !1736
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.gf, i64 %i.gh) #35
          to label %.noexc69 unwind label %bb.ai

.noexc69:                                         ; preds = %bb.ao
  unreachable

bb.ap:                                            ; preds = %.noexc68
  %i.gi = load ptr, ptr %i.gg, align 8, !noalias !1736, !nonnull !5, !noundef !5 ; 2 uses
  %i.gj = icmp ule i64 %i.gb, %i.gf
  call void @llvm.assume(i1 %i.gj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !1736
  %.not.i66 = icmp eq i64 %i.gb, 0
  br i1 %.not.i66, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.gk = shl nuw nsw i64 %i.gb, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.gi, ptr align 4 %i.ga, i64 %i.gk, i1 false), !noalias !1736
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  store i64 %i.gf, ptr %i.ap, align 8, !alias.scope !1736
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store ptr %i.gi, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !1736
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  store i64 %i.gb, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !1736
  %.sroa.024.0.insert.ext = zext nneg i8 %.sroa.011.0 to i24
  %.sroa.024.1.insert.shift = select i1 %.not27, i24 0, i24 256
  %.sroa.024.1.insert.insert = or disjoint i24 %.sroa.024.1.insert.shift, %.sroa.024.0.insert.ext
  %.sroa.024.2.insert.ext = zext nneg i8 %.sroa.4.0.copyload to i24
  %.sroa.024.2.insert.shift = shl nuw nsw i24 %.sroa.024.2.insert.ext, 16
  %.sroa.024.2.insert.insert = or disjoint i24 %.sroa.024.1.insert.insert, %.sroa.024.2.insert.shift
  invoke void @_RNvMs7_NtCs8frGy5WneL6_4fish4procNtB5_3Job3new(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.aq, i24 %.sroa.024.2.insert.insert, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.ap)
          to label %bb.as unwind label %bb.ai

bb.as:                                            ; preds = %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao)
  %i.gl = invoke noundef nonnull align 8 ptr @_RNvMNtCs8frGy5WneL6_4fish17operation_contextNtB2_16OperationContext6parser(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %1)
          to label %bb.at unwind label %.thread183

.thread206.thread246:                             ; preds = %.invoke353, %.invoke, %.noexc108, %bb.eo, %.noexc106, %.noexc105, %bb.el, %bb.eh, %_RNvMNtCs8frGy5WneL6_4fish15parse_executionNtB2_16ExecutionContext15use_job_control.exit.thread.i, %_RNvMNtCs8frGy5WneL6_4fish15parse_executionNtB2_16ExecutionContext15use_job_control.exit.i, %bb.dx, %.noexc98, %bb.dw, %bb.er, %bb.fa
  %lpad.thr_comm244 = landingpad { ptr, i32 }
          cleanup
  br label %.thread206.thread

.thread206:                                       ; preds = %bb.gj
  %lpad.thr_comm.split-lp245 = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtCs5UXtnEuoeIl_11fish_common10ScopeGuardQNtNtCs8frGy5WneL6_4fish17operation_context16OperationContextNCNvMNtB1m_15parse_executionNtB2l_16ExecutionContext9run_1_jobs0_0EEB1m_.exit

.thread183:                                       ; preds = %bb.as, %bb.at
  %i.gm = landingpad { ptr, i32 }
          cleanup
  br label %.thread206.thread

bb.at:                                            ; preds = %bb.as
  %i.gn = getelementptr inbounds nuw i8, ptr %i.aq, i64 48
  %i.go = load i64, ptr %i.gn, align 8, !noundef !5
  invoke void @_RINvMs5_NtCs8frGy5WneL6_4fish6parserNtB6_6Parser10push_scopeNCNvMNtB8_15parse_executionNtB11_16ExecutionContext9run_1_jobs1_0EB8_(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.ao, ptr noundef nonnull align 8 %i.gl, i64 noundef %i.go)
          to label %bb.au unwind label %.thread183

bb.au:                                            ; preds = %bb.at
  call void @llvm.experimental.noalias.scope.decl(metadata !1739)
  call void @llvm.experimental.noalias.scope.decl(metadata !1742)
  call void @llvm.experimental.noalias.scope.decl(metadata !1744)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !1746
  store i64 0, ptr %i.ac, align 8, !noalias !1746
  %i.gp = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 5 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.gp, align 8, !noalias !1746
  %i.gq = getelementptr inbounds nuw i8, ptr %i.ac, i64 16 ; 8 uses
  store i64 0, ptr %i.gq, align 8, !noalias !1746
  %i.gr = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.gs = add i64 %i.dl, 1                        ; 2 uses
  %i.gt = icmp eq i64 %i.gs, 0
  br i1 %i.gt, label %bb.aw, label %bb.av

.thread110.loopexit.i:                            ; preds = %bb.cr, %bb.cf, %_RNvMNtCs8frGy5WneL6_4fish15parse_executionNtB2_16ExecutionContext11node_source.exit.i, %bb.bh
  %lpad.loopexit139.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i

.thread110.loopexit.split-lp.i:                   ; preds = %bb.cy, %bb.cg, %.invoke.i, %bb.bl, %bb.bj, %bb.be, %bb.bd, %bb.aw, %bb.av
  %lpad.loopexit.split-lp140.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i

bb.av:                                            ; preds = %bb.au
  invoke void @_RNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner13reserve_exactCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ac, i64 noundef 0, i64 noundef %i.gs, i64 noundef 8, i64 noundef 224)
          to label %bb.ay unwind label %.thread110.loopexit.split-lp.i, !noalias !1739

bb.aw:                                            ; preds = %bb.au
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @155) #35
          to label %bb.ax unwind label %.thread110.loopexit.split-lp.i, !noalias !1739

bb.ax:                                            ; preds = %bb.cy, %bb.be, %bb.aw
  unreachable

bb.ay:                                            ; preds = %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !1746
  %i.gu = getelementptr inbounds nuw i8, ptr %i.ab, i64 212
  store i8 0, ptr %i.gu, align 4, !alias.scope !1748, !noalias !1746
  %i.gv = getelementptr inbounds nuw i8, ptr %i.ab, i64 213
  store i8 0, ptr %i.gv, align 1, !alias.scope !1748, !noalias !1746
  store i64 0, ptr %i.ab, align 8, !alias.scope !1748, !noalias !1746
  %i.gw = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  store i64 0, ptr %i.gw, align 8, !alias.scope !1748, !noalias !1746
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.42.0..sroa_idx.i.i, align 8, !alias.scope !1748, !noalias !1746
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 40
  %.sroa.422.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i.i, i8 0, i64 16, i1 false), !alias.scope !1748, !noalias !1746
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.422.0..sroa_idx.i.i, align 8, !alias.scope !1748, !noalias !1746
  %.sroa.523.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 64
  store i64 0, ptr %.sroa.523.0..sroa_idx.i.i, align 8, !alias.scope !1748, !noalias !1746
  %i.gx = getelementptr inbounds nuw i8, ptr %i.ab, i64 120
  %i.gy = getelementptr inbounds nuw i8, ptr %i.ab, i64 144
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gx, i8 0, i64 24, i1 false), !alias.scope !1748, !noalias !1746
  store i32 3, ptr %i.gy, align 8, !alias.scope !1748, !noalias !1746
  %i.gz = getelementptr inbounds nuw i8, ptr %i.ab, i64 152
  %i.ha = getelementptr inbounds nuw i8, ptr %i.ab, i64 208
  store i32 0, ptr %i.ha, align 8, !alias.scope !1748, !noalias !1746
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ab, i64 214
  %i.hc = getelementptr inbounds nuw i8, ptr %i.ab, i64 176
  %i.hd = getelementptr inbounds nuw i8, ptr %i.ab, i64 72
  store i64 0, ptr %i.hd, align 8, !alias.scope !1748, !noalias !1746
  %.sroa.413.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 80
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.gz, i8 0, i64 20, i1 false), !alias.scope !1748, !noalias !1746
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hc, i8 0, i64 16, i1 false), !alias.scope !1748, !noalias !1746
  store i32 0, ptr %i.hb, align 2, !alias.scope !1748, !noalias !1746
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.413.0..sroa_idx.i.i, align 8, !alias.scope !1748, !noalias !1746
  %.sroa.514.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 88
  %.sroa.416.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 104
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.514.0..sroa_idx.i.i, i8 0, i64 16, i1 false), !alias.scope !1748, !noalias !1746
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.416.0..sroa_idx.i.i, align 8, !alias.scope !1748, !noalias !1746
  %.sroa.517.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 112
  store i64 0, ptr %.sroa.517.0..sroa_idx.i.i, align 8, !alias.scope !1748, !noalias !1746
  %i.he = getelementptr inbounds nuw i8, ptr %i.ab, i64 192
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.he, i8 0, i64 16, i1 false), !alias.scope !1748, !noalias !1746
  %i.hf = load i64, ptr %i.gq, align 8, !alias.scope !1751, !noalias !1754, !noundef !5 ; 3 uses
  %i.hg = load i64, ptr %i.ac, align 8, !range !22, !alias.scope !1751, !noalias !1754, !noundef !5
  %i.hh = icmp eq i64 %i.hf, %i.hg
  br i1 %i.hh, label %bb.az, label %bb.bc

bb.az:                                            ; preds = %bb.ay
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCs8frGy5WneL6_4fish4proc7ProcessE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ac)
          to label %bb.bc unwind label %bb.ba, !noalias !1756

bb.ba:                                            ; preds = %bb.az
  %i.hi = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish4proc7ProcessEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(224) %i.ab) #36
          to label %.thread.i unwind label %bb.bb, !noalias !1739

bb.bb:                                            ; preds = %bb.ba
  %i.hj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #33, !noalias !1739
  unreachable

bb.bc:                                            ; preds = %bb.az, %bb.ay
  %i.hk = load ptr, ptr %i.gp, align 8, !alias.scope !1751, !noalias !1754, !nonnull !5, !noundef !5 ; 2 uses
  %i.hl = getelementptr inbounds nuw [224 x i8], ptr %i.hk, i64 %i.hf
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %i.hl, ptr noundef nonnull align 8 dereferenceable(224) %i.ab, i64 224, i1 false), !noalias !1739
  %i.hm = add i64 %i.hf, 1                        ; 2 uses
  store i64 %i.hm, ptr %i.gq, align 8, !alias.scope !1751, !noalias !1754
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !1746
  %.not.i70 = icmp eq i64 %i.hm, 0
  br i1 %.not.i70, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.hn = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ho = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.hp = invoke fastcc noundef i8 @_RNvMNtCs8frGy5WneL6_4fish15parse_executionNtB2_16ExecutionContext20populate_job_process(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(40) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.aq, ptr noalias nofree noundef align 8 dereferenceable(224) %i.hk, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.hn, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ho)
          to label %bb.bf unwind label %.thread110.loopexit.split-lp.i ; 2 uses

bb.be:                                            ; preds = %bb.bc
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @156) #35
          to label %bb.ax unwind label %.thread110.loopexit.split-lp.i, !noalias !1739

bb.bf:                                            ; preds = %bb.bd
  %.val44.i = load ptr, ptr %i.gr, align 8, !alias.scope !1744, !noalias !1757, !nonnull !5, !noundef !5 ; 2 uses
  %.idx43 = mul nuw nsw i64 %i.dl, 96
  %i.hq = getelementptr inbounds nuw i8, ptr %.val44.i, i64 %.idx43
  %.val33.i = load ptr, ptr %i.bs, align 8, !alias.scope !1739, !noalias !1758, !nonnull !5 ; 3 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %.val33.i, i64 24 ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %.val33.i, i64 32 ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.aa, i64 14
  %.sroa.4.0..sroa_idx85.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.hu = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.hv = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.hx = getelementptr inbounds nuw i8, ptr %i.t, i64 28
  %.sroa.42.0..sroa_idx.i70.i = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.sroa.5.0..sroa_idx.i71.i = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.hy = getelementptr inbounds nuw i8, ptr %i.s, i64 212
  %i.hz = getelementptr inbounds nuw i8, ptr %i.s, i64 213
  %i.ia = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %.sroa.42.0..sroa_idx.i62.i = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %.sroa.5.0..sroa_idx.i63.i = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  %.sroa.422.0..sroa_idx.i64.i = getelementptr inbounds nuw i8, ptr %i.s, i64 56
  %.sroa.523.0..sroa_idx.i65.i = getelementptr inbounds nuw i8, ptr %i.s, i64 64
  %i.ib = getelementptr inbounds nuw i8, ptr %i.s, i64 120
  %i.ic = getelementptr inbounds nuw i8, ptr %i.s, i64 144
  %i.id = getelementptr inbounds nuw i8, ptr %i.s, i64 152
  %i.ie = getelementptr inbounds nuw i8, ptr %i.s, i64 208
  %i.if = getelementptr inbounds nuw i8, ptr %i.s, i64 214
  %i.ig = getelementptr inbounds nuw i8, ptr %i.s, i64 176
  %i.ih = getelementptr inbounds nuw i8, ptr %i.s, i64 72
  %.sroa.413.0..sroa_idx.i66.i = getelementptr inbounds nuw i8, ptr %i.s, i64 80
  %.sroa.514.0..sroa_idx.i67.i = getelementptr inbounds nuw i8, ptr %i.s, i64 88
  %.sroa.416.0..sroa_idx.i68.i = getelementptr inbounds nuw i8, ptr %i.s, i64 104
  %.sroa.517.0..sroa_idx.i69.i = getelementptr inbounds nuw i8, ptr %i.s, i64 112
  %i.ii = getelementptr inbounds nuw i8, ptr %i.s, i64 192
  %i.ij = icmp eq i64 %i.dl, 0
  br i1 %i.ij, label %.loopexit138.i, label %.lr.ph33

bb.bg:                                            ; preds = %bb.cr
  %i.ik = icmp eq ptr %i.il, %i.hq
  br i1 %i.ik, label %.loopexit138.i, label %.lr.ph33

.lr.ph33:                                         ; preds = %bb.bf, %bb.bg
  %.sroa.01.0.i7232 = phi ptr [ %i.il, %bb.bg ], [ %.val44.i, %bb.bf ] ; 6 uses
  %.sroa.0.0.i7131 = phi i8 [ %i.lj, %bb.bg ], [ %i.hp, %bb.bf ] ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i7232, i64 96 ; 2 uses
  %i.im = icmp eq i8 %.sroa.0.0.i7131, 0
  br i1 %i.im, label %bb.bh, label %.loopexit138.i

bb.bh:                                            ; preds = %.lr.ph33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !1746
  %i.in = load ptr, ptr %i.hr, align 8, !noalias !1739, !nonnull !5, !noundef !5
  %i.io = load i64, ptr %i.hs, align 8, !noalias !1739, !noundef !5
  %i.ip = invoke { ptr, i64 } @_RNvYNtNtCs8frGy5WneL6_4fish3ast9TokenPipeNtB4_4Node6sourceB6_(ptr noundef nonnull %.sroa.01.0.i7232, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.in, i64 noundef %i.io) #38
          to label %_RNvMNtCs8frGy5WneL6_4fish15parse_executionNtB2_16ExecutionContext11node_source.exit.i unwind label %.thread110.loopexit.i, !noalias !1739, !inline_history !1343 ; 2 uses

_RNvMNtCs8frGy5WneL6_4fish15parse_executionNtB2_16ExecutionContext11node_source.exit.i: ; preds = %bb.bh
  %i.iq = extractvalue { ptr, i64 } %i.ip, 0
  %i.ir = extractvalue { ptr, i64 } %i.ip, 1
  invoke void @_RNvXsc_NtCs8frGy5WneL6_4fish9tokenizerNtB5_11PipeOrRedirINtNtCs3oUPovFnLWP_4core7convert7TryFromRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrE8try_from(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.aa, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.iq, i64 noundef %i.ir)
          to label %bb.bi unwind label %.thread110.loopexit.i, !noalias !1739

bb.bi:                                            ; preds = %_RNvMNtCs8frGy5WneL6_4fish15parse_executionNtB2_16ExecutionContext11node_source.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1759)
  %i.is = load i8, ptr %i.ht, align 2, !range !91, !alias.scope !1762, !noalias !1764, !noundef !5 ; 2 uses
  %i.it = icmp eq i8 %i.is, 2
  br i1 %i.it, label %bb.bj, label %bb.bk, !prof !9

bb.bj:                                            ; preds = %bb.bi
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @157, i64 noundef 26, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @56, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @158) #34
          to label %.noexc48.i unwind label %.thread110.loopexit.split-lp.i, !noalias !1739

.noexc48.i:                                       ; preds = %bb.bj
  unreachable

bb.bk:                                            ; preds = %bb.bi
  %.sroa.4.0.copyload.i = load i32, ptr %.sroa.4.0..sroa_idx85.i, align 8, !alias.scope !1765, !noalias !1746 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !1746
  %i.iu = icmp sgt i32 %.sroa.4.0.copyload.i, -1
  br i1 %i.iu, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.iv = invoke { i32, i32 } @_RNvYNtNtCs8frGy5WneL6_4fish3ast9TokenPipeNtB4_4Node12source_rangeB6_(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %.sroa.01.0.i7232)
          to label %bb.bn unwind label %.thread110.loopexit.split-lp.i, !noalias !1739 ; 2 uses

bb.bm:                                            ; preds = %bb.bk
  %i.iw = load i64, ptr %i.gq, align 8, !noalias !1746, !noundef !5 ; 2 uses
  %.not24.i = icmp eq i64 %i.iw, 0
  br i1 %.not24.i, label %.invoke.i, label %bb.ce, !prof !9

bb.bn:                                            ; preds = %bb.bl
  %i.ix = extractvalue { i32, i32 } %i.iv, 0      ; 2 uses
  %i.iy = extractvalue { i32, i32 } %i.iv, 1      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !1746
  store i64 0, ptr %i.z, align 8, !alias.scope !1766, !noalias !1746
  %.sroa.42.0..sroa_idx.i49.i = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.42.0..sroa_idx.i49.i, align 8, !alias.scope !1766, !noalias !1746
  %.sroa.53.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %.sroa.53.0..sroa_idx.i.i, i8 0, i64 25, i1 false), !alias.scope !1766, !noalias !1746
  %i.iz = invoke noundef i64 @_RNvMs0_NtCs8frGy5WneL6_4fish15parse_constantsNtB5_11SourceRange5start(i32 noundef %i.ix, i32 noundef %i.iy)
          to label %bb.bp unwind label %.thread127.i, !noalias !1739

.thread127.i:                                     ; preds = %bb.by, %bb.bp, %bb.bn
  %lpad.thr_comm125.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread114.i

bb.bo:                                            ; preds = %bb.cc
  %lpad.thr_comm.split-lp126.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i

bb.bp:                                            ; preds = %bb.bn
  %i.ja = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  store i64 %i.iz, ptr %i.ja, align 8, !noalias !1746
  %i.jb = invoke noundef i64 @_RNvMs0_NtCs8frGy5WneL6_4fish15parse_constantsNtB5_11SourceRange6length(i32 noundef %i.ix, i32 noundef %i.iy)
          to label %bb.bq unwind label %.thread127.i, !noalias !1739

bb.bq:                                            ; preds = %bb.bp
  %i.jc = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  store i64 %i.jb, ptr %i.jc, align 8, !noalias !1746
  %i.jd = getelementptr inbounds nuw i8, ptr %i.z, i64 40
  store i8 1, ptr %i.jd, align 8, !noalias !1746
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !1746
  store i64 0, ptr %i.x, align 8, !noalias !1746
  %.sroa.413.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.413.0..sroa_idx.i, align 8, !noalias !1746
  %.sroa.514.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store i64 0, ptr %.sroa.514.0..sroa_idx.i, align 8, !noalias !1746
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !1746
  %i.je = invoke { ptr, i64 } @_RNvMNtNtCs8frGy5WneL6_4fish12localization7gettextNtB2_17LocalizableString8localize(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @160)
          to label %bb.br unwind label %.loopexit.split-lp135.i, !noalias !1739 ; 2 uses

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit.i: ; preds = %bb.bs, %.loopexit.split-lp135.i, %.loopexit134.i
  %.pn.i73 = phi { ptr, i32 } [ %lpad.loopexit.split-lp137.i, %.loopexit.split-lp135.i ], [ %lpad.loopexit136.i, %.loopexit134.i ], [ %i.jm, %bb.bs ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.x) #36
          to label %.thread114.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1739

.loopexit134.i:                                   ; preds = %.noexc53.i.preheader
end_hunk_0
begin_hunk_1_@_RNvMNtCs8frGy5WneL6_4fish15parse_executionNtB2_16ExecutionContext9run_1_job:bb.a
  unreachable

.noexc53.i.preheader:                             ; preds = %bb.bt
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.v)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit54.i unwind label %.loopexit134.i, !noalias !1739

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit54.i: ; preds = %.noexc53.i.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !1746
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !1746
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.y, ptr noundef nonnull align 8 dereferenceable(24) %i.x, i64 24, i1 false), !noalias !1746
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !1746
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.z)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i.i unwind label %bb.bv, !noalias !1739

bb.bv:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit54.i
  %i.jr = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.z)
          to label %.body55.i unwind label %bb.bw, !noalias !1739

bb.bw:                                            ; preds = %bb.bv
  %i.js = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #33, !noalias !1739
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit54.i
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.z)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i unwind label %bb.bx, !noalias !1739

bb.bx:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i.i
  %i.jt = landingpad { ptr, i32 }
          cleanup
  br label %.body55.i

.body55.i:                                        ; preds = %bb.bx, %bb.bv
  %eh.lpad-body56.i = phi { ptr, i32 } [ %i.jt, %bb.bx ], [ %i.jr, %bb.bv ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.z, ptr noundef nonnull align 8 dereferenceable(24) %i.y, i64 24, i1 false), !noalias !1746
  br label %.thread114.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.z, ptr noundef nonnull align 8 dereferenceable(24) %i.y, i64 24, i1 false), !noalias !1746
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !1746
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #32, !noalias !1739
  %i.ju = call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 8, 121) 48, i64 noundef 8) #32, !noalias !1739 ; 3 uses
  %i.jv = icmp eq ptr %i.ju, null
  br i1 %i.jv, label %bb.by, label %_RNvNtCs1xwejQucwHj_5alloc5boxed14box_new_uninit.exit.i, !prof !9

bb.by:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 48) #35
          to label %.noexc58.i unwind label %.thread127.i, !noalias !1739

.noexc58.i:                                       ; preds = %bb.by
  unreachable

_RNvNtCs1xwejQucwHj_5alloc5boxed14box_new_uninit.exit.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ju, ptr noundef nonnull align 8 dereferenceable(48) %i.z, i64 48, i1 false), !noalias !1739
  store i64 1, ptr %i.u, align 8, !noalias !1746
  %i.jw = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr %i.ju, ptr %i.jw, align 8, !noalias !1746
  %i.jx = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store i64 1, ptr %i.jx, align 8, !noalias !1746
  invoke fastcc void @_RNvMNtCs8frGy5WneL6_4fish15parse_executionNtB2_16ExecutionContext13report_errors(ptr nonnull %.val33.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %1, i32 noundef 2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.u)
          to label %bb.ca unwind label %bb.bz

bb.bz:                                            ; preds = %_RNvNtCs1xwejQucwHj_5alloc5boxed14box_new_uninit.exit.i
  %i.jy = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs8frGy5WneL6_4fish15parse_constants10ParseErrorEEB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.u) #36
          to label %.thread.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1739

bb.ca:                                            ; preds = %_RNvNtCs1xwejQucwHj_5alloc5boxed14box_new_uninit.exit.i
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs8frGy5WneL6_4fish15parse_constants10ParseErrorENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %bb.cc unwind label %bb.cb, !noalias !1739

bb.cb:                                            ; preds = %bb.ca
  %i.jz = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCs8frGy5WneL6_4fish15parse_constants10ParseErrorENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %.thread.i unwind label %bb.cd, !noalias !1739

bb.cc:                                            ; preds = %bb.ca
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCs8frGy5WneL6_4fish15parse_constants10ParseErrorENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs8frGy5WneL6_4fish15parse_constants10ParseErrorEEB1c_.exit.i unwind label %bb.bo, !noalias !1739

bb.cd:                                            ; preds = %bb.cb
  %i.ka = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #33, !noalias !1739
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs8frGy5WneL6_4fish15parse_constants10ParseErrorEEB1c_.exit.i: ; preds = %bb.cc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !1746
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !1746
  br label %.loopexit138.i

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.bs, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit.i, %bb.bz, %.thread114.i, %.thread.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #33, !noalias !1739
  unreachable

.thread114.i:                                     ; preds = %.body55.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit.i, %.thread127.i
  %.pn22117.i = phi { ptr, i32 } [ %lpad.thr_comm125.i, %.thread127.i ], [ %.pn.i73, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit.i ], [ %eh.lpad-body56.i, %.body55.i ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.z) #36
          to label %.thread.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1739

.invoke.i:                                        ; preds = %bb.cq, %bb.bm, %.loopexit138.i
  %i.kb = phi ptr [ @164, %.loopexit138.i ], [ @162, %bb.bm ], [ @163, %bb.cq ]
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.kb) #35
          to label %.cont.i unwind label %.thread110.loopexit.split-lp.i, !noalias !1739

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.ce:                                            ; preds = %bb.bm
  %i.kc = load ptr, ptr %i.gp, align 8, !noalias !1746, !nonnull !5, !noundef !5
  %i.kd = getelementptr [224 x i8], ptr %i.kc, i64 %i.iw ; 4 uses
  %i.ke = getelementptr i8, ptr %i.kd, i64 -16
  store i32 %.sroa.4.0.copyload.i, ptr %i.ke, align 8, !noalias !1739
  %i.kf = trunc nuw i8 %i.is to i1
  br i1 %i.kf, label %bb.cf, label %bb.cm

bb.cf:                                            ; preds = %bb.ce
  %i.kg = getelementptr i8, ptr %i.kd, i64 -128   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !1746
  call void @llvm.experimental.noalias.scope.decl(metadata !1775)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !1778
  invoke void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.p, i64 noundef 1, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4)
          to label %.noexc72.i unwind label %.thread110.loopexit.i, !noalias !1739

.noexc72.i:                                       ; preds = %bb.cf
  %i.kh = load i64, ptr %i.p, align 8, !range !7, !noalias !1778, !noundef !5
  %i.ki = trunc nuw i64 %i.kh to i1
  %i.kj = load i64, ptr %i.hu, align 8, !range !8, !noalias !1778, !noundef !5 ; 3 uses
  br i1 %i.ki, label %bb.cg, label %bb.ch, !prof !9

bb.cg:                                            ; preds = %.noexc72.i
  %i.kk = load i64, ptr %i.hv, align 8, !noalias !1778
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.kj, i64 %i.kk) #35
          to label %.noexc73.i unwind label %.thread110.loopexit.split-lp.i, !noalias !1739

.noexc73.i:                                       ; preds = %bb.cg
  unreachable

bb.ch:                                            ; preds = %.noexc72.i
  %i.kl = load ptr, ptr %i.hv, align 8, !noalias !1778, !nonnull !5, !noundef !5 ; 2 uses
  %i.km = icmp ne i64 %i.kj, 0
  call void @llvm.assume(i1 %i.km)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !1778
  store i32 49, ptr %i.kl, align 4, !noalias !1779
  store i32 2, ptr %i.hw, align 8, !alias.scope !1775, !noalias !1746
  store i8 4, ptr %i.hx, align 4, !alias.scope !1775, !noalias !1746
  store i64 %i.kj, ptr %i.t, align 8, !alias.scope !1775, !noalias !1746
  store ptr %i.kl, ptr %.sroa.42.0..sroa_idx.i70.i, align 8, !alias.scope !1775, !noalias !1746
  store i64 1, ptr %.sroa.5.0..sroa_idx.i71.i, align 8, !alias.scope !1775, !noalias !1746
  %i.kn = getelementptr i8, ptr %i.kd, i64 -112   ; 2 uses
  %i.ko = load i64, ptr %i.kn, align 8, !alias.scope !1780, !noalias !1783, !noundef !5 ; 3 uses
  %i.kp = load i64, ptr %i.kg, align 8, !range !22, !alias.scope !1780, !noalias !1783, !noundef !5
  %i.kq = icmp eq i64 %i.ko, %i.kp
  br i1 %i.kq, label %bb.ci, label %bb.cl

bb.ci:                                            ; preds = %bb.ch
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCs8frGy5WneL6_4fish11redirection15RedirectionSpecE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.kg)
          to label %bb.cl unwind label %bb.cj, !noalias !1783

bb.cj:                                            ; preds = %bb.ci
  %i.kr = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish11redirection15RedirectionSpecEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.t) #36
          to label %.thread.i unwind label %bb.ck, !noalias !1739

bb.ck:                                            ; preds = %bb.cj
  %i.ks = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #33, !noalias !1739
  unreachable

bb.cl:                                            ; preds = %bb.ci, %bb.ch
  %i.kt = getelementptr i8, ptr %i.kd, i64 -120
  %i.ku = load ptr, ptr %i.kt, align 8, !alias.scope !1780, !noalias !1783, !nonnull !5, !noundef !5
  %i.kv = getelementptr inbounds nuw [32 x i8], ptr %i.ku, i64 %i.ko
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.kv, ptr noundef nonnull align 8 dereferenceable(32) %i.t, i64 32, i1 false), !noalias !1739
  %i.kw = add i64 %i.ko, 1
  store i64 %i.kw, ptr %i.kn, align 8, !alias.scope !1780, !noalias !1783
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !1746
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %bb.ce
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !1746
  store i8 0, ptr %i.hy, align 4, !alias.scope !1785, !noalias !1746
  store i8 0, ptr %i.hz, align 1, !alias.scope !1785, !noalias !1746
  store i64 0, ptr %i.s, align 8, !alias.scope !1785, !noalias !1746
  store i64 0, ptr %i.ia, align 8, !alias.scope !1785, !noalias !1746
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.42.0..sroa_idx.i62.i, align 8, !alias.scope !1785, !noalias !1746
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i63.i, i8 0, i64 16, i1 false), !alias.scope !1785, !noalias !1746
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.422.0..sroa_idx.i64.i, align 8, !alias.scope !1785, !noalias !1746
  store i64 0, ptr %.sroa.523.0..sroa_idx.i65.i, align 8, !alias.scope !1785, !noalias !1746
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ib, i8 0, i64 24, i1 false), !alias.scope !1785, !noalias !1746
  store i32 3, ptr %i.ic, align 8, !alias.scope !1785, !noalias !1746
  store i32 0, ptr %i.ie, align 8, !alias.scope !1785, !noalias !1746
  store i64 0, ptr %i.ih, align 8, !alias.scope !1785, !noalias !1746
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.id, i8 0, i64 20, i1 false), !alias.scope !1785, !noalias !1746
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ig, i8 0, i64 16, i1 false), !alias.scope !1785, !noalias !1746
  store i32 0, ptr %i.if, align 2, !alias.scope !1785, !noalias !1746
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.413.0..sroa_idx.i66.i, align 8, !alias.scope !1785, !noalias !1746
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.514.0..sroa_idx.i67.i, i8 0, i64 16, i1 false), !alias.scope !1785, !noalias !1746
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.416.0..sroa_idx.i68.i, align 8, !alias.scope !1785, !noalias !1746
  store i64 0, ptr %.sroa.517.0..sroa_idx.i69.i, align 8, !alias.scope !1785, !noalias !1746
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ii, i8 0, i64 16, i1 false), !alias.scope !1785, !noalias !1746
  %i.kx = load i64, ptr %i.gq, align 8, !alias.scope !1788, !noalias !1791, !noundef !5 ; 3 uses
  %i.ky = load i64, ptr %i.ac, align 8, !range !22, !alias.scope !1788, !noalias !1791, !noundef !5
  %i.kz = icmp eq i64 %i.kx, %i.ky
  br i1 %i.kz, label %bb.cn, label %bb.cq

bb.cn:                                            ; preds = %bb.cm
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCs8frGy5WneL6_4fish4proc7ProcessE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ac)
          to label %bb.cq unwind label %bb.co, !noalias !1793

bb.co:                                            ; preds = %bb.cn
  %i.la = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish4proc7ProcessEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(224) %i.s) #36
          to label %.thread.i unwind label %bb.cp, !noalias !1739

bb.cp:                                            ; preds = %bb.co
  %i.lb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #33, !noalias !1739
  unreachable

bb.cq:                                            ; preds = %bb.cn, %bb.cm
  %i.lc = load ptr, ptr %i.gp, align 8, !alias.scope !1788, !noalias !1791, !nonnull !5, !noundef !5 ; 2 uses
  %i.ld = getelementptr inbounds nuw [224 x i8], ptr %i.lc, i64 %i.kx
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %i.ld, ptr noundef nonnull align 8 dereferenceable(224) %i.s, i64 224, i1 false), !noalias !1739
  %i.le = add i64 %i.kx, 1                        ; 3 uses
  store i64 %i.le, ptr %i.gq, align 8, !alias.scope !1788, !noalias !1791
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !1746
  %.not25.i = icmp eq i64 %i.le, 0
  br i1 %.not25.i, label %.invoke.i, label %bb.cr, !prof !9

bb.cr:                                            ; preds = %bb.cq
  %i.lf = getelementptr [224 x i8], ptr %i.lc, i64 %i.le
  %i.lg = getelementptr i8, ptr %i.lf, i64 -224
  %i.lh = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i7232, i64 16
  %i.li = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i7232, i64 64
  %i.lj = invoke fastcc noundef i8 @_RNvMNtCs8frGy5WneL6_4fish15parse_executionNtB2_16ExecutionContext20populate_job_process(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(40) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.aq, ptr noalias nofree noundef align 8 dereferenceable(224) %i.lg, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.lh, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.li)
          to label %bb.bg unwind label %.thread110.loopexit.i ; 2 uses

.loopexit138.i:                                   ; preds = %bb.bg, %.lr.ph33, %bb.bf, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs8frGy5WneL6_4fish15parse_constants10ParseErrorEEB1c_.exit.i
  %.sroa.0.1.i = phi i8 [ 3, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs8frGy5WneL6_4fish15parse_constants10ParseErrorEEB1c_.exit.i ], [ %i.hp, %bb.bf ], [ %.sroa.0.0.i7131, %.lr.ph33 ], [ %i.lj, %bb.bg ] ; 4 uses
  %i.lk = load i64, ptr %i.gq, align 8, !noalias !1746, !noundef !5 ; 2 uses
  %.not26.i = icmp eq i64 %i.lk, 0
  br i1 %.not26.i, label %.invoke.i, label %bb.cs, !prof !9

bb.cs:                                            ; preds = %.loopexit138.i
  %i.ll = load ptr, ptr %i.gp, align 8, !noalias !1746, !nonnull !5, !noundef !5 ; 2 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ll, i64 212
  store i8 1, ptr %i.lm, align 4, !noalias !1739
  %i.ln = getelementptr [224 x i8], ptr %i.ll, i64 %i.lk
  %i.lo = getelementptr i8, ptr %i.ln, i64 -11
  store i8 1, ptr %i.lo, align 1, !noalias !1739
  %i.lp = icmp ne i8 %.sroa.0.1.i, 0              ; 5 uses
  br i1 %i.lp, label %bb.ct, label %bb.cw

bb.ct:                                            ; preds = %bb.cs
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs8frGy5WneL6_4fish4proc7ProcessENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ac)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs8frGy5WneL6_4fish4proc7ProcessEEB1c_.exit.i unwind label %bb.cu, !noalias !1739

bb.cu:                                            ; preds = %bb.ct
  %i.lq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCs8frGy5WneL6_4fish4proc7ProcessENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ac)
          to label %.thread196 unwind label %bb.cv, !noalias !1739

bb.cv:                                            ; preds = %bb.cu
  %i.lr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #33, !noalias !1739
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs8frGy5WneL6_4fish4proc7ProcessEEB1c_.exit.i: ; preds = %bb.ct
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCs8frGy5WneL6_4fish4proc7ProcessENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ac)
          to label %bb.de unwind label %bb.dd

bb.cw:                                            ; preds = %bb.cs
  %i.ls = load i64, ptr %i.gq, align 8, !noalias !1746, !noundef !5 ; 2 uses
  %i.lt = icmp ult i64 %i.ls, 41175768021673107
  call void @llvm.assume(i1 %i.lt)
  %i.lu = icmp eq i64 %i.ls, 0
  br i1 %i.lu, label %bb.cy, label %bb.cx, !prof !9

bb.cx:                                            ; preds = %bb.cw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !1746
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %i.ac, i64 24, i1 false), !noalias !1746
  %i.lv = invoke { ptr, i64 } @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtCs8frGy5WneL6_4fish4proc7ProcessE16into_boxed_sliceBI_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.r)
          to label %.noexc80 unwind label %bb.dd  ; 2 uses

.noexc80:                                         ; preds = %bb.cx
  %i.lw = extractvalue { ptr, i64 } %i.lv, 0      ; 4 uses
  %i.lx = extractvalue { ptr, i64 } %i.lv, 1      ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !1746
  %i.ly = getelementptr inbounds nuw i8, ptr %i.aq, i64 24 ; 3 uses
  %.val42.i = load ptr, ptr %i.ly, align 8, !alias.scope !1742, !noalias !1794, !nonnull !5, !noundef !5 ; 4 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %i.aq, i64 32 ; 3 uses
  %.val43.i = load i64, ptr %i.lz, align 8, !alias.scope !1742, !noalias !1794, !noundef !5 ; 6 uses
  %cond = icmp eq i64 %.val43.i, 0
  br i1 %cond, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxSNtNtCs8frGy5WneL6_4fish4proc7ProcessEEB1f_.exit.i, label %.lr.ph37

bb.cy:                                            ; preds = %bb.cw
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @165, i64 noundef 39, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @166) #35
          to label %bb.ax unwind label %.thread110.loopexit.split-lp.i, !noalias !1739

bb.cz:                                            ; preds = %.lr.ph37
  %i.ma = icmp eq i64 %i.mc, %.val43.i
  br i1 %i.ma, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCs8frGy5WneL6_4fish4proc7ProcessEBG_.exit.i.i, label %.lr.ph37

.lr.ph37:                                         ; preds = %.noexc80, %bb.cz
  %.sroa.0.0.i.i.i36 = phi i64 [ %i.mc, %bb.cz ], [ 0, %.noexc80 ] ; 2 uses
  %i.mb = getelementptr inbounds nuw [224 x i8], ptr %.val42.i, i64 %.sroa.0.0.i.i.i36
  %i.mc = add nuw nsw i64 %.sroa.0.0.i.i.i36, 1   ; 4 uses
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish4proc7ProcessEBF_(ptr noalias nofree noundef align 8 dereferenceable(224) %i.mb)
          to label %bb.cz unwind label %bb.db, !noalias !1739

bb.da:                                            ; preds = %.lr.ph39
  %i.md = add i64 %.sroa.0.1.i.i.i38, 1           ; 2 uses
  %i.me = icmp eq i64 %i.md, %.val43.i
  br i1 %i.me, label %.body.i.i, label %.lr.ph39

bb.db:                                            ; preds = %.lr.ph37
  %i.mf = landingpad { ptr, i32 }
          cleanup
  %i.mg = icmp eq i64 %i.mc, %.val43.i
  br i1 %i.mg, label %.body.i.i, label %.lr.ph39

.lr.ph39:                                         ; preds = %bb.db, %bb.da
  %.sroa.0.1.i.i.i38 = phi i64 [ %i.md, %bb.da ], [ %i.mc, %bb.db ] ; 2 uses
  %i.mh = getelementptr inbounds nuw [224 x i8], ptr %.val42.i, i64 %.sroa.0.1.i.i.i38
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish4proc7ProcessEBF_(ptr noalias nofree noundef align 8 dereferenceable(224) %i.mh) #36
          to label %bb.da unwind label %bb.dc, !noalias !1739

bb.dc:                                            ; preds = %.lr.ph39
  %i.mi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #33, !noalias !1739
  unreachable

.body.i.i:                                        ; preds = %bb.da, %bb.db
  %i.mj = mul nuw nsw i64 %.val43.i, 224
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val42.i, i64 noundef range(i64 1, 0) %i.mj, i64 noundef 8) #32, !noalias !1739
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.lw) ]
  store ptr %i.lw, ptr %i.ly, align 8, !alias.scope !1742, !noalias !1794
  store i64 %i.lx, ptr %i.lz, align 8, !alias.scope !1742, !noalias !1794
  br label %.thread196

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCs8frGy5WneL6_4fish4proc7ProcessEBG_.exit.i.i: ; preds = %bb.cz
  %i.mk = mul nuw nsw i64 %.val43.i, 224
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val42.i, i64 noundef range(i64 1, 0) %i.mk, i64 noundef 8) #32, !noalias !1739
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxSNtNtCs8frGy5WneL6_4fish4proc7ProcessEEB1f_.exit.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxSNtNtCs8frGy5WneL6_4fish4proc7ProcessEEB1f_.exit.i: ; preds = %.noexc80, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCs8frGy5WneL6_4fish4proc7ProcessEBG_.exit.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.lw) ]
  store ptr %i.lw, ptr %i.ly, align 8, !alias.scope !1742, !noalias !1794
  store i64 %i.lx, ptr %i.lz, align 8, !alias.scope !1742, !noalias !1794
  br label %bb.de

.thread.i:                                        ; preds = %bb.co, %bb.cj, %.thread114.i, %bb.cb, %bb.bz, %bb.bo, %bb.ba, %.thread110.loopexit.split-lp.i, %.thread110.loopexit.i
  %.pn3095.i = phi { ptr, i32 } [ %i.kr, %bb.cj ], [ %i.la, %bb.co ], [ %lpad.thr_comm.split-lp126.i, %bb.bo ], [ %i.jz, %bb.cb ], [ %.pn22117.i, %.thread114.i ], [ %i.hi, %bb.ba ], [ %i.jy, %bb.bz ], [ %lpad.loopexit139.i, %.thread110.loopexit.i ], [ %lpad.loopexit.split-lp140.i, %.thread110.loopexit.split-lp.i ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs8frGy5WneL6_4fish4proc7ProcessEEB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ac) #36
          to label %.thread196 unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1739

bb.dd:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs8frGy5WneL6_4fish4proc7ProcessEEB1c_.exit.i, %bb.cx
  %lpad.thr_comm.split-lp213 = landingpad { ptr, i32 }
          cleanup
  br label %.thread196

bb.de:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxSNtNtCs8frGy5WneL6_4fish4proc7ProcessEEB1f_.exit.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs8frGy5WneL6_4fish4proc7ProcessEEB1c_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !1746
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.an, ptr noundef nonnull align 8 dereferenceable(40) %i.ao, i64 40, i1 false)
  invoke void @_RNvXsa_Cs5UXtnEuoeIl_11fish_commonINtB5_10ScopeGuarduNCINvMs4_B5_INtB5_10ScopedCellNtNtCs8frGy5WneL6_4fish6parser10ScopedDataE10scoped_modNCNvMNtB1n_15parse_executionNtB2h_16ExecutionContext9run_1_jobs1_0E0ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB1n_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.an)
          to label %bb.df unwind label %.thread202

.thread202:                                       ; preds = %bb.de
  %i.ml = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionTuNCINvMs4_Cs5UXtnEuoeIl_11fish_commonINtB18_10ScopedCellNtNtCs8frGy5WneL6_4fish6parser10ScopedDataE10scoped_modNCNvMNtB1W_15parse_executionNtB2Q_16ExecutionContext9run_1_jobs1_0E0EEEB1W_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.an) #36
  br label %.thread206.thread

bb.df:                                            ; preds = %bb.de
  call void @llvm.experimental.noalias.scope.decl(metadata !1795)
  %i.mm = getelementptr inbounds nuw i8, ptr %i.an, i64 37
  %i.mn = load i8, ptr %i.mm, align 1, !range !91, !alias.scope !1798, !noundef !5
  %i.mo = icmp eq i8 %i.mn, 2
  br i1 %i.mo, label %bb.di, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  call void @llvm.experimental.noalias.scope.decl(metadata !1801)
  call void @llvm.experimental.noalias.scope.decl(metadata !1804)
  call void @llvm.experimental.noalias.scope.decl(metadata !1807)
end_hunk_1
