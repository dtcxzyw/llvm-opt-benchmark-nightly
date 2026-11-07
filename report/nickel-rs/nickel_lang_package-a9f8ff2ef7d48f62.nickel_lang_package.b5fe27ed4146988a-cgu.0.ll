Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nickel-rs/original/nickel_lang_package-a9f8ff2ef7d48f62.nickel_lang_package.b5fe27ed4146988a-cgu.0?download=true
inline.NumInlined: 25765
inline.NumDeleted: 11076
loop-unroll.NumCompletelyUnrolled: 62
loop-unroll.NumRuntimeUnrolled: 162
loop-unroll.NumUnrolled: 230
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@_ZN18gix_worktree_state8checkout5chunk28checkout_entry_handle_result17h45877974ca039b14E:bb.a
bb.bs:                                            ; preds = %bb.bq
  %.not80.i.i.i = icmp eq ptr %i.et, null
  br i1 %.not80.i.i.i, label %bb.bp, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %.not84.i.i.i = icmp eq ptr %i.eq, null
  br i1 %.not84.i.i.i, label %bb.bz, label %bb.cb

bb.bu:                                            ; preds = %bb.bp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !27931
  store ptr %i.eq, ptr %i.t, align 8, !noalias !27931
  %i.ev = invoke noundef zeroext i1 @_ZN3std4path7PathBuf3pop17h0bff1ff2ad4a3f00E(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ea)
          to label %bb.bx unwind label %bb.bw, !noalias !27940 ; 0 uses

bb.bv:                                            ; preds = %bb.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !27931
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !27931
  br label %bb.av

bb.bw:                                            ; preds = %bb.bx, %bb.bu
  %i.ew = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17hc4d6b9640ccaa233E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.t) #75
          to label %.body.i.i.i unwind label %bb.ca, !noalias !27940

bb.bx:                                            ; preds = %bb.bu
  %i.ex = invoke noundef zeroext i1 @_ZN3std4path7PathBuf3pop17h0bff1ff2ad4a3f00E(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cs)
          to label %bb.by unwind label %bb.bw, !noalias !27940 ; 0 uses

bb.by:                                            ; preds = %bb.bx
  %i.ey = load i64, ptr %i.cg, align 8, !alias.scope !27934, !noalias !27943, !noundef !43
  %i.ez = add i64 %i.ey, -1
  store i64 %i.ez, ptr %i.cg, align 8, !alias.scope !27934, !noalias !27943
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !27931
  br label %bb.bz

bb.bz:                                            ; preds = %bb.cb, %bb.by, %bb.bt
  %.sroa.0.2.i.i.i = phi ptr [ %i.et, %bb.cb ], [ %i.et, %bb.bt ], [ %i.eq, %bb.by ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !27931
  br label %bb.cc

bb.ca:                                            ; preds = %bb.cd, %bb.bw
  %i.fa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #74, !noalias !27940
  unreachable

bb.cb:                                            ; preds = %bb.bt
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17hc4d6b9640ccaa233E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.u)
          to label %bb.bz unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !27940

bb.cc:                                            ; preds = %bb.bz, %bb.bh
  %.sroa.0.3.i.i.i = phi ptr [ %.sroa.0.2.i.i.i, %bb.bz ], [ %i.ei, %bb.bh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !27931
  br label %bb.ak

bb.cd:                                            ; preds = %bb.br
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17hc4d6b9640ccaa233E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.u) #75
          to label %.body.i.i.i unwind label %bb.ca, !noalias !27940

bb.ce:                                            ; preds = %bb.al
  %i.fb = invoke noundef zeroext i1 @_ZN3std4path7PathBuf3pop17h0bff1ff2ad4a3f00E(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cs)
          to label %bb.cf unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !27940 ; 0 uses

bb.cf:                                            ; preds = %bb.ce
  %i.fc = load i8, ptr %i.dg, align 8, !range !49, !alias.scope !27934, !noalias !27943, !noundef !43
  %i.fd = trunc nuw i8 %i.fc to i1
  br i1 %i.fd, label %bb.ch, label %bb.cg

bb.cg:                                            ; preds = %bb.ch, %bb.cf
  store i8 1, ptr %i.dg, align 8, !alias.scope !27934, !noalias !27943
  %i.fe = add i64 %i.dv, 1
  %exitcond.not.i.i.i = icmp eq i64 %i.dv, %umax.i.i.i
  br i1 %exitcond.not.i.i.i, label %._crit_edge.thread.i.i.i, label %bb.al

._crit_edge.thread.i.i.i:                         ; preds = %bb.cg
  store i64 %.sroa.09.0.i.i.i, ptr %i.cg, align 8, !alias.scope !27934, !noalias !27943
  br label %bb.ar

bb.ch:                                            ; preds = %bb.cf
  invoke void @"_ZN88_$LT$gix_worktree..stack..delegate..StackDelegate$u20$as$u20$gix_fs..stack..Delegate$GT$13pop_directory17h638b59995ade85abE"(ptr noundef nonnull align 1 %i.ad)
          to label %bb.cg unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !27940

bb.ci:                                            ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(28) %i.cp, ptr noundef nonnull align 1 dereferenceable(28) @1757, i64 28, i1 false), !noalias !27979
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #67, !noalias !27980
  %i.ff = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef range(i64 1, -9223372036854775807) 8) #67, !noalias !27980 ; 5 uses
  %i.fg = icmp eq ptr %i.ff, null
  br i1 %i.fg, label %bb.cj, label %bb.cl, !prof !51

bb.cj:                                            ; preds = %bb.ci
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 24) #73
          to label %.noexc152.i.i.i unwind label %bb.ck, !noalias !27940

.noexc152.i.i.i:                                  ; preds = %bb.cj
  unreachable

bb.ck:                                            ; preds = %bb.cj
  %i.fh = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cp, i64 noundef 28, i64 noundef range(i64 1, -9223372036854775807) 1) #67, !noalias !27981
  br label %.body.i.i.i

bb.cl:                                            ; preds = %bb.ci
  store i64 28, ptr %i.ff, align 8, !noalias !27940
  %.sroa.519.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ff, i64 8
  store ptr %i.cp, ptr %.sroa.519.0..sroa_idx.i.i.i, align 8, !noalias !27940
  %.sroa.720.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ff, i64 16
  store i64 28, ptr %.sroa.720.0..sroa_idx.i.i.i, align 8, !noalias !27940
  %i.fi = invoke noundef nonnull ptr @_ZN3std2io5error5Error4_new17h6d8eca976092d069E(i8 noundef 40, ptr noundef nonnull align 1 %i.ff, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) @163)
          to label %bb.k unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !27940

.thread.i:                                        ; preds = %bb.l, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !27931
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !27929
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !27929
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !27929
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !27929
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.i.i.i) ]
  store i64 -9223372036854775796, ptr %i.bb, align 8, !alias.scope !27925
  %.sroa.4206.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store ptr %.sroa.0.0.i.i.i, ptr %.sroa.4206.0..sroa_idx.i, align 8, !alias.scope !27925
  br label %_ZN18gix_worktree_state8checkout5entry8checkout17h3b652f0b5edf6770E.exit.thread

bb.cm:                                            ; preds = %bb.bc, %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !27931
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !27929
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !27929
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !27929
  %i.fj = icmp eq i32 %i.bm, 16384
  %i.fk = icmp eq i32 %i.bm, 57344
  %narrow.i.i = or i1 %i.fj, %i.fk
  %.sroa.08.0.i.i = zext i1 %narrow.i.i to i8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !27929
  store ptr %i.bc, ptr %i.aw, align 8, !noalias !27927
  %i.fl = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store i8 %.sroa.08.0.i.i, ptr %i.fl, align 8, !noalias !27927
  %i.fm = getelementptr inbounds nuw i8, ptr %8, i64 1520
  %i.fn = load ptr, ptr %i.fm, align 8, !noalias !27943, !nonnull !43, !noundef !43 ; 9 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %8, i64 1528
  %i.fp = load i64, ptr %i.fo, align 8, !noalias !27943, !noundef !43 ; 9 uses
  store ptr %i.fn, ptr %i.av, align 8, !noalias !27927
  %i.fq = getelementptr inbounds nuw i8, ptr %i.av, i64 8 ; 2 uses
  store i64 %i.fp, ptr %i.fq, align 8, !noalias !27927
  %i.fr = load i32, ptr %i.bl, align 4, !alias.scope !27926, !noundef !43
  switch i32 %i.fr, label %bb.cn [
    i32 33188, label %bb.co
    i32 33261, label %bb.co
    i32 40960, label %bb.cp
    i32 16384, label %_ZN18gix_worktree_state8checkout5entry8checkout17h3b652f0b5edf6770E.exit.thread40
    i32 57344, label %_ZN18gix_worktree_state8checkout5entry8checkout17h3b652f0b5edf6770E.exit.thread40
  ], !prof !27982

bb.cn:                                            ; preds = %bb.cm
  call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @38, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @664) #73, !noalias !27943
  unreachable

bb.co:                                            ; preds = %bb.cm, %bb.cm
  %i.fs = getelementptr inbounds nuw i8, ptr %1, i64 52
  call fastcc void @_ZN10gix_object6traits4find3ext7FindExt9find_blob17he6eeb0d85e8156fcE(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.af, ptr noundef nonnull align 8 %8, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.fs, ptr noalias noundef align 8 dereferenceable(24) %i.be)
  %i.ft = load i8, ptr %i.af, align 8, !range !135, !noalias !27927, !noundef !43
  %.not325.i = icmp eq i8 %i.ft, 4
  br i1 %.not325.i, label %bb.cu, label %bb.cq

bb.cp:                                            ; preds = %bb.cm
  %i.fu = getelementptr inbounds nuw i8, ptr %1, i64 52
  call fastcc void @_ZN10gix_object6traits4find3ext7FindExt9find_blob17he6eeb0d85e8156fcE(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.ae, ptr noundef nonnull align 8 %8, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.fu, ptr noalias noundef align 8 dereferenceable(24) %i.be)
  %i.fv = load i8, ptr %i.ae, align 8, !range !135, !noalias !27927, !noundef !43
  %.not318.i = icmp eq i8 %i.fv, 4
  br i1 %.not318.i, label %bb.ei, label %bb.ee

bb.cq:                                            ; preds = %bb.co
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !27983
  invoke void @_ZN3std4path4Path11to_path_buf17hf66a9eb0c98d1fb9E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.fn, i64 noundef %i.fp)
          to label %bb.ct unwind label %bb.cr, !noalias !27984

bb.cr:                                            ; preds = %bb.cq
  %i.fw = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr61drop_in_place$LT$gix_object..find..existing_object..Error$GT$17h0b0ebd1a9b5dc7c3E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(24) %i.af) #75
          to label %common.resume unwind label %bb.cs, !noalias !27943

bb.cs:                                            ; preds = %bb.cr
  %i.fx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #74, !noalias !27984
  unreachable

bb.ct:                                            ; preds = %bb.cq
  %.sroa.4219.sroa.2.0..sroa.4219.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4219.sroa.2.0..sroa.4219.0..sroa_idx.sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %i.af, i64 24, i1 false), !noalias !27985
  %.sroa.4445.8.copyload.i = load ptr, ptr %i.d, align 8, !noalias !27986
  %.sroa.6446.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.2217.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %.sroa.3218.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.fy = load <2 x i64>, ptr %.sroa.6446.8..sroa_idx.i, align 8, !noalias !27986
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !27983
  store i64 -9223372036854775795, ptr %i.bb, align 8, !alias.scope !27925
  store ptr %.sroa.4445.8.copyload.i, ptr %.sroa.2217.0..sroa_idx.i, align 8, !alias.scope !27925
  store <2 x i64> %i.fy, ptr %.sroa.3218.0..sroa_idx.i, align 8, !alias.scope !27925
  br label %_ZN18gix_worktree_state8checkout5entry8checkout17h3b652f0b5edf6770E.exit

bb.cu:                                            ; preds = %bb.co
  %i.fz = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ga = load ptr, ptr %i.fz, align 8, !noalias !27927, !nonnull !43, !align !48, !noundef !43
  %i.gb = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.gc = load i64, ptr %i.gb, align 8, !noalias !27927, !noundef !43
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !noalias !27927
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at), !noalias !27927
  store ptr %i.aw, ptr %i.at, align 8, !noalias !27927
  call void @"_ZN10gix_filter8pipeline7convert38_$LT$impl$u20$gix_filter..Pipeline$GT$19convert_to_worktree17h94b6e3be5b936324E"(ptr noalias noundef nonnull sret([248 x i8]) align 8 captures(address) dereferenceable(248) %i.au, ptr noalias noundef nonnull align 8 dereferenceable(1128) %i.bd, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ga, i64 noundef %i.gc, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %2, i64 noundef %3, ptr noundef nonnull align 1 %i.at, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @662, i1 noundef zeroext %i.bk), !noalias !27943
  %i.gd = load i64, ptr %i.au, align 8, !range !112, !noalias !27927, !noundef !43 ; 2 uses
  %.not328.i = icmp eq i64 %i.gd, -9223372036854775798
  %i.ge = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %.sroa.0448.0.copyload.i = load i64, ptr %i.ge, align 8, !noalias !27927 ; 10 uses
  %.sroa.4449.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %.sroa.4449.0.copyload.i = load ptr, ptr %.sroa.4449.0..sroa_idx.i, align 8, !noalias !27927 ; 14 uses
  %.sroa.5450.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  %.sroa.5450.0.copyload.i = load i64, ptr %.sroa.5450.0..sroa_idx.i, align 8, !noalias !27927 ; 9 uses
  br i1 %.not328.i, label %bb.cw, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %.sroa.5225.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.au, i64 32
  %.sroa.5231.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %.sroa.5231.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(216) %.sroa.5225.0..sroa_idx.i, i64 216, i1 false), !noalias !27985
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !27927
  store i64 %i.gd, ptr %i.bb, align 8, !alias.scope !27925
  %.sroa.4230.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store i64 %.sroa.0448.0.copyload.i, ptr %.sroa.4230.0..sroa_idx.i, align 8, !alias.scope !27925
  %.sroa.4230.sroa.4.0..sroa.4230.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  store ptr %.sroa.4449.0.copyload.i, ptr %.sroa.4230.sroa.4.0..sroa.4230.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !27925
  %.sroa.4230.sroa.5.0..sroa.4230.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  store i64 %.sroa.5450.0.copyload.i, ptr %.sroa.4230.sroa.5.0..sroa.4230.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !27925
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !27927
  br label %_ZN18gix_worktree_state8checkout5entry8checkout17h3b652f0b5edf6770E.exit

bb.cw:                                            ; preds = %bb.cu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !27927
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !27927
  %i.gf = icmp ugt i64 %.sroa.0448.0.copyload.i, -9223372036854775808
  %i.gg = icmp ne i64 %.sroa.0448.0.copyload.i, -9223372036854775805
  %.not665.i = and i1 %i.gf, %i.gg                ; 2 uses
  br i1 %.not665.i, label %bb.cy, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.gh = icmp eq i64 %.sroa.0448.0.copyload.i, -9223372036854775808
  br i1 %i.gh, label %bb.di, label %bb.dj

bb.cy:                                            ; preds = %bb.cw
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4449.0.copyload.i) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !27927
  %i.gi = load i32, ptr %i.bl, align 4, !alias.scope !27926, !noundef !43
  %i.gj = trunc i64 %.sroa.6.0.extract.shift.i to i1
  %i.gk = trunc i64 %.sroa.7.0.extract.shift.i to i1
  invoke void @_ZN18gix_worktree_state8checkout5entry9open_file17hc6a22b8f6bc9eaf1E(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.ar, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.fn, i64 noundef %i.fp, i1 noundef zeroext %i.gj, i1 noundef zeroext %i.gk, i1 noundef zeroext %i.bi, i32 noundef %i.gi)
          to label %bb.da unwind label %bb.cz, !noalias !27943

"_ZN4core3ptr44drop_in_place$LT$gix_filter..driver..Key$GT$17h2145d2d04727a3c2E.exit.i": ; preds = %bb.dl, %bb.cz
  %.sroa.0189.0.i = phi i1 [ %.not665.i, %bb.cz ], [ true, %bb.dl ]
  %.sroa.0190.0.not.i = phi i1 [ false, %bb.cz ], [ true, %bb.dl ]
  %.pn335.i = phi { ptr, i32 } [ %i.gm, %bb.cz ], [ %i.he, %bb.dl ] ; 5 uses
  %i.gl = icmp ult i64 %.sroa.0448.0.copyload.i, -9223372036854775807
  br i1 %i.gl, label %.thread488.i, label %common.resume

bb.cz:                                            ; preds = %bb.dz, %bb.du, %bb.df, %bb.cy
  %i.gm = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr44drop_in_place$LT$gix_filter..driver..Key$GT$17h2145d2d04727a3c2E.exit.i"

bb.da:                                            ; preds = %bb.cy
  %i.gn = load i32, ptr %i.ar, align 8, !range !76, !noalias !27927, !noundef !43
  %i.go = trunc nuw i32 %i.gn to i1
  %i.gp = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.gq = load ptr, ptr %i.gp, align 8, !noalias !27927 ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.ar, i64 4
  %i.gs = load i32, ptr %i.gr, align 4, !range !134, !noalias !27927
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !27927
  br i1 %i.go, label %bb.db, label %bb.dc

bb.db:                                            ; preds = %bb.da
  store i64 -9223372036854775796, ptr %i.bb, align 8, !alias.scope !27925
  %.sroa.4233.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store ptr %i.gq, ptr %.sroa.4233.0..sroa_idx.i, align 8, !alias.scope !27925
  br label %_ZN18gix_worktree_state8checkout5entry8checkout17h3b652f0b5edf6770E.exit.thread

bb.dc:                                            ; preds = %bb.da
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !noalias !27927
  store i32 %i.gs, ptr %i.as, align 4, !noalias !27927
  %i.gt = invoke fastcc noundef ptr @_ZN3std2io5Write9write_all17hb6af370d4a410f8cE(ptr noalias noundef align 4 dereferenceable(4) %i.as, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.4449.0.copyload.i, i64 noundef %.sroa.5450.0.copyload.i)
          to label %bb.dd unwind label %"_ZN4core3ptr44drop_in_place$LT$gix_filter..driver..Key$GT$17h2145d2d04727a3c2E.exit.i.thread", !noalias !27943 ; 2 uses

"_ZN4core3ptr44drop_in_place$LT$gix_filter..driver..Key$GT$17h2145d2d04727a3c2E.exit.i.thread": ; preds = %bb.dc
  %i.gu = landingpad { ptr, i32 }
          cleanup
  %.val346.i = load i32, ptr %i.as, align 4, !range !134, !noalias !27927, !noundef !43
  %i.gv = call noundef i32 @close(i32 noundef %.val346.i) #67, !noalias !27943 ; 0 uses
  br label %common.resume

bb.dd:                                            ; preds = %bb.dc
  %.not331.i = icmp eq ptr %i.gt, null
  br i1 %.not331.i, label %bb.de, label %bb.dg

bb.de:                                            ; preds = %bb.dd
  %i.gw = load i32, ptr %i.as, align 4, !range !134, !noalias !27927, !noundef !43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !27927
  br label %bb.df

bb.df:                                            ; preds = %bb.du, %bb.de
  %.sroa.0311.0.i = phi i64 [ %.sroa.5450.0.copyload.i, %bb.de ], [ %i.hv, %bb.du ]
  %.sroa.0312.0.i = phi i32 [ %i.gw, %bb.de ], [ %i.hw, %bb.du ]
  %.sroa.0313.0.in.in.in.in.in.in.i = phi ptr [ %i.gq, %bb.de ], [ %i.hm, %bb.du ]
  %.sroa.0313.0.in.in.in.in.in.i = ptrtoint ptr %.sroa.0313.0.in.in.in.in.in.in.i to i64
  %i.gx = trunc i64 %.sroa.0313.0.in.in.in.in.in.i to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !27927
  invoke void @_ZN18gix_worktree_state8checkout5entry14finalize_entry17h9718c75fa5f3872fE(ptr noalias noundef nonnull sret([248 x i8]) align 8 captures(address) dereferenceable(248) %i.an, ptr noalias noundef nonnull align 8 dereferenceable(80) %1, i32 noundef %.sroa.0312.0.i, i1 noundef zeroext %i.gx)
          to label %bb.dv unwind label %bb.cz, !noalias !27943

bb.dg:                                            ; preds = %bb.dd
  store i64 -9223372036854775796, ptr %i.bb, align 8, !alias.scope !27925
  %.sroa.4236.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store ptr %i.gt, ptr %.sroa.4236.0..sroa_idx.i, align 8, !alias.scope !27925
  %.val345.i = load i32, ptr %i.as, align 4, !range !134, !noalias !27927, !noundef !43
  %i.gy = call noundef i32 @close(i32 noundef %.val345.i) #67, !noalias !27943 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !27927
  br label %_ZN18gix_worktree_state8checkout5entry8checkout17h3b652f0b5edf6770E.exit

bb.dh:                                            ; preds = %bb.ed, %bb.dn
  %i.gz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #74, !noalias !27943
  unreachable

bb.di:                                            ; preds = %bb.cx
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4449.0.copyload.i) ]
  %i.ha = inttoptr i64 %.sroa.5450.0.copyload.i to ptr ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !27927
  %i.hb = load i32, ptr %i.bl, align 4, !alias.scope !27926, !noundef !43
  %i.hc = trunc i64 %.sroa.6.0.extract.shift.i to i1
  %i.hd = trunc i64 %.sroa.7.0.extract.shift.i to i1
  invoke void @_ZN18gix_worktree_state8checkout5entry9open_file17hc6a22b8f6bc9eaf1E(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.ap, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.fn, i64 noundef %i.fp, i1 noundef zeroext %i.hc, i1 noundef zeroext %i.hd, i1 noundef zeroext %i.bi, i32 noundef %i.hb)
          to label %bb.dp unwind label %bb.do, !noalias !27943

bb.dj:                                            ; preds = %bb.cx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !27927
  invoke void @_ZN3std4path4Path11to_path_buf17hf66a9eb0c98d1fb9E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ao, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.fn, i64 noundef %i.fp)
          to label %bb.dm unwind label %bb.dk, !noalias !27943

bb.dk:                                            ; preds = %bb.dj
  %i.he = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hf = icmp eq i64 %.sroa.0448.0.copyload.i, 0
  br i1 %i.hf, label %common.resume, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4449.0.copyload.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4449.0.copyload.i, i64 noundef %.sroa.0448.0.copyload.i, i64 noundef range(i64 1, -9223372036854775807) 1) #67, !noalias !27987
  br label %"_ZN4core3ptr44drop_in_place$LT$gix_filter..driver..Key$GT$17h2145d2d04727a3c2E.exit.i"

bb.dm:                                            ; preds = %bb.dj
  %.sroa.083.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.083.sroa.6.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %i.ao, i64 24, i1 false), !noalias !27985
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !27927
  %.sroa.083.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  store i64 %.sroa.5450.0.copyload.i, ptr %.sroa.083.sroa.5.0..sroa_idx.i, align 8, !alias.scope !27925
  %.sroa.484.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 56
  store ptr %1, ptr %.sroa.484.0..sroa_idx.i, align 8, !alias.scope !27925
  %.sroa.585.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 64
  store ptr %2, ptr %.sroa.585.0..sroa_idx.i, align 8, !alias.scope !27925
  %.sroa.686.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 72
  store i64 %3, ptr %.sroa.686.0..sroa_idx.i, align 8, !alias.scope !27925
  %.sroa.787.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 80
  store i8 0, ptr %.sroa.787.0..sroa_idx.i, align 8, !alias.scope !27925
  %i.hg = ptrtoint ptr %.sroa.4449.0.copyload.i to i64
  br label %_ZN18gix_worktree_state8checkout5entry8checkout17h3b652f0b5edf6770E.exit.thread40

bb.dn:                                            ; preds = %bb.ds, %bb.do
  %.pn.i = phi { ptr, i32 } [ %i.hi, %bb.do ], [ %i.hq, %bb.ds ]
  %i.hh = icmp ne i64 %.sroa.5450.0.copyload.i, 0
  call void @llvm.assume(i1 %i.hh)
  invoke fastcc void @"_ZN4core3ptr67drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$std..io..Read$GT$$GT$17h094e409919eecdaeE"(ptr nonnull %.sroa.4449.0.copyload.i, ptr nonnull %i.ha) #75
          to label %common.resume unwind label %bb.dh, !noalias !27943

bb.do:                                            ; preds = %bb.di
  %i.hi = landingpad { ptr, i32 }
          cleanup
  br label %bb.dn

bb.dp:                                            ; preds = %bb.di
  %i.hj = load i32, ptr %i.ap, align 8, !range !76, !noalias !27927, !noundef !43
  %i.hk = trunc nuw i32 %i.hj to i1
  %i.hl = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.hm = load ptr, ptr %i.hl, align 8, !noalias !27927 ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.ap, i64 4
  %i.ho = load i32, ptr %i.hn, align 4, !range !134, !noalias !27927
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !27927
  br i1 %i.hk, label %bb.dq, label %bb.dr

bb.dq:                                            ; preds = %bb.dp
  store i64 -9223372036854775796, ptr %i.bb, align 8, !alias.scope !27925
  %.sroa.4239.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store ptr %i.hm, ptr %.sroa.4239.0..sroa_idx.i, align 8, !alias.scope !27925
  br label %bb.dz

bb.dr:                                            ; preds = %bb.dp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !noalias !27927
  store i32 %i.ho, ptr %i.aq, align 4, !noalias !27927
  %i.hp = invoke fastcc { i64, ptr } @_ZN3std2io4copy12generic_copy17h8168b76533c902a7E(ptr nonnull %.sroa.4449.0.copyload.i, ptr %i.ha, ptr noalias noundef align 4 dereferenceable(4) %i.aq)
          to label %bb.dt unwind label %bb.ds, !noalias !27943 ; 2 uses

bb.ds:                                            ; preds = %bb.dr
  %i.hq = landingpad { ptr, i32 }
          cleanup
  %.val344.i = load i32, ptr %i.aq, align 4, !range !134, !noalias !27927, !noundef !43
  %i.hr = call noundef i32 @close(i32 noundef %.val344.i) #67, !noalias !27943 ; 0 uses
  br label %bb.dn

bb.dt:                                            ; preds = %bb.dr
  %i.hs = extractvalue { i64, ptr } %i.hp, 0
  %i.ht = extractvalue { i64, ptr } %i.hp, 1      ; 2 uses
  %i.hu = trunc nuw i64 %i.hs to i1
  br i1 %i.hu, label %bb.dy, label %bb.du

bb.du:                                            ; preds = %bb.dt
  %i.hv = ptrtoint ptr %i.ht to i64
  %i.hw = load i32, ptr %i.aq, align 4, !range !134, !noalias !27927, !noundef !43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !27927
  %i.hx = icmp ne i64 %.sroa.5450.0.copyload.i, 0
  call void @llvm.assume(i1 %i.hx)
  invoke fastcc void @"_ZN4core3ptr67drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$std..io..Read$GT$$GT$17h094e409919eecdaeE"(ptr nonnull %.sroa.4449.0.copyload.i, ptr nonnull %i.ha)
          to label %bb.df unwind label %bb.cz, !noalias !27943

bb.dv:                                            ; preds = %bb.df
  %i.hy = load i64, ptr %i.an, align 8, !range !115, !noalias !27927, !noundef !43 ; 3 uses
  %.not333.i = icmp eq i64 %i.hy, -9223372036854775789
  br i1 %.not333.i, label %bb.dx, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %.sroa.4247.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %.sroa.2249.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(240) %.sroa.2249.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(240) %.sroa.4247.0..sroa_idx.i, i64 240, i1 false), !noalias !27985
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !27927
  store i64 %i.hy, ptr %i.bb, align 8, !alias.scope !27925
  br label %_ZN18gix_worktree_state8checkout5entry8checkout17h3b652f0b5edf6770E.exit.thread

bb.dx:                                            ; preds = %bb.dv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !27927
  br label %_ZN18gix_worktree_state8checkout5entry8checkout17h3b652f0b5edf6770E.exit.thread40

bb.dy:                                            ; preds = %bb.dt
  store i64 -9223372036854775796, ptr %i.bb, align 8, !alias.scope !27925
  %.sroa.4242.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store ptr %i.ht, ptr %.sroa.4242.0..sroa_idx.i, align 8, !alias.scope !27925
  %.val343.i = load i32, ptr %i.aq, align 4, !range !134, !noalias !27927, !noundef !43
  %i.hz = call noundef i32 @close(i32 noundef %.val343.i) #67, !noalias !27943 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !27927
  br label %bb.dz

bb.dz:                                            ; preds = %bb.dy, %bb.dq
  %i.ia = icmp ne i64 %.sroa.5450.0.copyload.i, 0
  call void @llvm.assume(i1 %i.ia)
  invoke fastcc void @"_ZN4core3ptr67drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$std..io..Read$GT$$GT$17h094e409919eecdaeE"(ptr nonnull %.sroa.4449.0.copyload.i, ptr nonnull %i.ha)
          to label %_ZN18gix_worktree_state8checkout5entry8checkout17h3b652f0b5edf6770E.exit unwind label %bb.cz, !noalias !27943

.thread488.i:                                     ; preds = %"_ZN4core3ptr44drop_in_place$LT$gix_filter..driver..Key$GT$17h2145d2d04727a3c2E.exit.i"
  %.not337.i = icmp eq i64 %.sroa.0448.0.copyload.i, -9223372036854775808
  br i1 %.not337.i, label %bb.eb, label %bb.ea

bb.ea:                                            ; preds = %.thread488.i
  br i1 %.sroa.0190.0.not.i, label %common.resume, label %bb.ec

bb.eb:                                            ; preds = %.thread488.i
  br i1 %.sroa.0189.0.i, label %bb.ed, label %common.resume

bb.ec:                                            ; preds = %bb.ea
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4449.0.copyload.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4449.0.copyload.i, i64 noundef %.sroa.0448.0.copyload.i, i64 noundef range(i64 1, -9223372036854775807) 1) #67, !noalias !27988
  br label %common.resume

bb.ed:                                            ; preds = %bb.eb
  %i.ib = inttoptr i64 %.sroa.5450.0.copyload.i to ptr
  invoke fastcc void @"_ZN4core3ptr67drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$std..io..Read$GT$$GT$17h094e409919eecdaeE"(ptr nonnull %.sroa.4449.0.copyload.i, ptr %i.ib) #75
          to label %common.resume unwind label %bb.dh, !noalias !27943

bb.ee:                                            ; preds = %bb.cp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !27989
  invoke void @_ZN3std4path4Path11to_path_buf17hf66a9eb0c98d1fb9E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.fn, i64 noundef %i.fp)
          to label %bb.eh unwind label %bb.ef, !noalias !27990

bb.ef:                                            ; preds = %bb.ee
  %i.ic = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr61drop_in_place$LT$gix_object..find..existing_object..Error$GT$17h0b0ebd1a9b5dc7c3E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(24) %i.ae) #75
          to label %common.resume unwind label %bb.eg, !noalias !27943

bb.eg:                                            ; preds = %bb.ef
  %i.id = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #74, !noalias !27990
  unreachable

bb.eh:                                            ; preds = %bb.ee
  %.sroa.4261.sroa.2.0..sroa.4261.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4261.sroa.2.0..sroa.4261.0..sroa_idx.sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %i.ae, i64 24, i1 false), !noalias !27985
  %.sroa.4452.8.copyload.i = load ptr, ptr %i.c, align 8, !noalias !27991
  %.sroa.6453.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.2259.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %.sroa.3260.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.ie = load <2 x i64>, ptr %.sroa.6453.8..sroa_idx.i, align 8, !noalias !27991
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !27989
  store i64 -9223372036854775795, ptr %i.bb, align 8, !alias.scope !27925
  store ptr %.sroa.4452.8.copyload.i, ptr %.sroa.2259.0..sroa_idx.i, align 8, !alias.scope !27925
  store <2 x i64> %i.ie, ptr %.sroa.3260.0..sroa_idx.i, align 8, !alias.scope !27925
  br label %_ZN18gix_worktree_state8checkout5entry8checkout17h3b652f0b5edf6770E.exit

bb.ei:                                            ; preds = %bb.cp
  %i.if = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ig = load ptr, ptr %i.if, align 8, !noalias !27927, !nonnull !43, !align !48, !noundef !43 ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ii = load i64, ptr %i.ih, align 8, !noalias !27927, !noundef !43 ; 3 uses
  br i1 %.not.i, label %bb.ej, label %bb.ek

bb.ej:                                            ; preds = %bb.ei
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !27927
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !27927
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !27927
  store ptr %i.ay, ptr %i.aj, align 8, !noalias !27927
  %i.ij = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store ptr %i.ax, ptr %i.ij, align 8, !noalias !27927
  %i.ik = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  store ptr %i.av, ptr %i.ik, align 8, !noalias !27927
  %i.il = trunc i64 %.sroa.7.0.extract.shift.i to i1
  call fastcc void @_ZN18gix_worktree_state8checkout5entry16try_op_or_unlink17hf783ff5e2a1a8325E(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.ak, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.fn, i64 noundef %i.fp, i1 noundef zeroext %i.il, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.aj), !noalias !27943
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !27927
  %i.im = load i32, ptr %i.ak, align 8, !range !76, !noalias !27927, !noundef !43
  %i.in = trunc nuw i32 %i.im to i1
  %i.io = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.ip = load ptr, ptr %i.io, align 8, !noalias !27927, !nonnull !43
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  %i.ir = load i32, ptr %i.iq, align 4, !range !134, !noalias !27927
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !27927
  br i1 %i.in, label %bb.el, label %bb.em

bb.ek:                                            ; preds = %bb.ei
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !27927
  %i.is = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store ptr %i.ig, ptr %i.is, align 8, !noalias !27927
  %i.it = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  store i64 %i.ii, ptr %i.it, align 8, !noalias !27927
  store i64 -9223372036854775808, ptr %i.am, align 8, !noalias !27927
  %i.iu = trunc i64 %.sroa.7.0.extract.shift.i to i1
  %i.iv = call fastcc noundef ptr @_ZN18gix_worktree_state8checkout5entry16try_op_or_unlink17h9451fbf5a35158baE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.fn, i64 noundef %i.fp, i1 noundef zeroext %i.iu, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.am), !noalias !27943 ; 2 uses
  %.not323.i = icmp eq ptr %i.iv, null
  br i1 %.not323.i, label %"_ZN4core3ptr62drop_in_place$LT$alloc..borrow..Cow$LT$std..path..Path$GT$$GT$17hb2557b980d81b948E.exit382.i", label %bb.fa

bb.el:                                            ; preds = %bb.ej
  store i64 -9223372036854775796, ptr %i.bb, align 8, !alias.scope !27925
  %.sroa.4278.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store ptr %i.ip, ptr %.sroa.4278.0..sroa_idx.i, align 8, !alias.scope !27925
  br label %bb.er

bb.em:                                            ; preds = %bb.ej
  store i32 %i.ir, ptr %i.al, align 4, !noalias !27927
  %i.iw = invoke fastcc noundef ptr @_ZN3std2io5Write9write_all17hb6af370d4a410f8cE(ptr noalias noundef align 4 dereferenceable(4) %i.al, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ig, i64 noundef %i.ii)
          to label %bb.en unwind label %bb.eu, !noalias !27943 ; 2 uses

bb.en:                                            ; preds = %bb.em
  %.not321.i = icmp eq ptr %i.iw, null
  br i1 %.not321.i, label %bb.eo, label %bb.ep

bb.eo:                                            ; preds = %bb.en
  %i.ix = load i32, ptr %i.al, align 4, !range !134, !noalias !27927, !noundef !43
  %i.iy = call noundef ptr @"_ZN49_$LT$std..fs..File$u20$as$u20$io_close..Close$GT$5close17h5fe12e7dd0b55bcdE"(i32 noundef %i.ix), !noalias !27943 ; 2 uses
  %.not322.i = icmp eq ptr %i.iy, null
  br i1 %.not322.i, label %bb.eq, label %bb.es

bb.ep:                                            ; preds = %bb.en
  store i64 -9223372036854775796, ptr %i.bb, align 8, !alias.scope !27925
  %.sroa.8284.0..sroa_idx285.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store ptr %i.iw, ptr %.sroa.8284.0..sroa_idx285.i, align 8, !alias.scope !27925
  %.val342.i = load i32, ptr %i.al, align 4, !range !134, !noalias !27927, !noundef !43
  %i.iz = call noundef i32 @close(i32 noundef %.val342.i) #67, !noalias !27943 ; 0 uses
  br label %bb.er

bb.eq:                                            ; preds = %bb.eo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !27927
  %.pre.i = load ptr, ptr %i.av, align 8, !noalias !27927
  %.pre620.i = load i64, ptr %i.fq, align 8, !noalias !27927
  br label %bb.et

bb.er:                                            ; preds = %bb.es, %bb.ep, %bb.el
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !27927
  br label %_ZN18gix_worktree_state8checkout5entry8checkout17h3b652f0b5edf6770E.exit

bb.es:                                            ; preds = %bb.eo
  store i64 -9223372036854775796, ptr %i.bb, align 8, !alias.scope !27925
  %.sroa.8293.0..sroa_idx294.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store ptr %i.iy, ptr %.sroa.8293.0..sroa_idx294.i, align 8, !alias.scope !27925
  br label %bb.er

bb.et:                                            ; preds = %"_ZN4core3ptr62drop_in_place$LT$alloc..borrow..Cow$LT$std..path..Path$GT$$GT$17hb2557b980d81b948E.exit382.i", %bb.eq
  %i.ja = phi i64 [ %i.fp, %"_ZN4core3ptr62drop_in_place$LT$alloc..borrow..Cow$LT$std..path..Path$GT$$GT$17hb2557b980d81b948E.exit382.i" ], [ %.pre620.i, %bb.eq ]
  %i.jb = phi ptr [ %i.fn, %"_ZN4core3ptr62drop_in_place$LT$alloc..borrow..Cow$LT$std..path..Path$GT$$GT$17hb2557b980d81b948E.exit382.i" ], [ %.pre.i, %bb.eq ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !27927
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !27927
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !27927
  call void @_ZN9gix_index2fs8Metadata19from_path_no_follow17hc12e117c55e201bdE(ptr noalias noundef nonnull sret([152 x i8]) align 8 captures(address) dereferenceable(152) %i.ag, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.jb, i64 noundef %i.ja), !noalias !27943
  %i.jc = load i64, ptr %i.ag, align 8, !range !60, !noalias !27927, !noundef !43
  %i.jd = trunc nuw i64 %i.jc to i1
  %i.je = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.jf = load ptr, ptr %i.je, align 8, !noalias !27927 ; 2 uses
  br i1 %i.jd, label %bb.ev, label %bb.ew

bb.eu:                                            ; preds = %bb.em
  %i.jg = landingpad { ptr, i32 }
          cleanup
  %.val.i = load i32, ptr %i.al, align 4, !range !134, !noalias !27927, !noundef !43
  %i.jh = call noundef i32 @close(i32 noundef %.val.i) #67, !noalias !27943 ; 0 uses
  br label %common.resume

"_ZN4core3ptr62drop_in_place$LT$alloc..borrow..Cow$LT$std..path..Path$GT$$GT$17hb2557b980d81b948E.exit382.i": ; preds = %bb.ek
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !27927
  br label %bb.et

bb.ev:                                            ; preds = %bb.et
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !27927
  store i64 -9223372036854775796, ptr %i.bb, align 8, !alias.scope !27925
  %.sroa.4301.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store ptr %i.jf, ptr %.sroa.4301.0..sroa_idx.i, align 8, !alias.scope !27925
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !27927
  br label %bb.ez

bb.ew:                                            ; preds = %bb.et
  %.sroa.4299.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %.sroa.4180.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.4180.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(136) %.sroa.4299.0..sroa_idx.i, i64 136, i1 false), !noalias !27927
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !27927
  store ptr %i.jf, ptr %i.ah, align 8, !noalias !27927
  call void @"_ZN9gix_index5entry4stat40_$LT$impl$u20$gix_index..entry..Stat$GT$7from_fs17h8040255f7c0bfbb0E"(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.ai, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %i.ah), !noalias !27943
  %i.ji = load i32, ptr %i.ai, align 8, !range !76, !noalias !27927, !noundef !43
  %i.jj = trunc nuw i32 %i.ji to i1
  br i1 %i.jj, label %bb.ex, label %bb.ey

bb.ex:                                            ; preds = %bb.ew
  %i.jk = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.jl = load i64, ptr %i.jk, align 8, !noalias !27927, !noundef !43
  %i.jm = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.jn = load i32, ptr %i.jm, align 8, !range !132, !noalias !27927, !noundef !43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !27927
  store i64 -9223372036854775797, ptr %i.bb, align 8, !alias.scope !27925
  %.sroa.4308.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store i64 %i.jl, ptr %.sroa.4308.0..sroa_idx.i, align 8, !alias.scope !27925
  %.sroa.5309.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  store i32 %i.jn, ptr %.sroa.5309.0..sroa_idx.i, align 8, !alias.scope !27925
  br label %bb.ez

bb.ey:                                            ; preds = %bb.ew
  %i.jo = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  %.sroa.0303.0.copyload.i = load i32, ptr %i.jo, align 4, !noalias !27927
  %.sroa.4304.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %.sroa.4304.0.copyload.i = load i64, ptr %.sroa.4304.0..sroa_idx.i, align 8, !noalias !27927
  %.sroa.5305.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %.sroa.5305.0.copyload.i = load i32, ptr %.sroa.5305.0..sroa_idx.i, align 8, !noalias !27927
  %.sroa.6306.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 20
  %.sroa.4184.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.4184.0..sroa_idx.i, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.6306.0..sroa_idx.i, i64 20, i1 false), !noalias !27992
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !27927
  %i.jp = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 %.sroa.0303.0.copyload.i, ptr %i.jp, align 8, !alias.scope !27926
  %.sroa.2182.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 20
  store i64 %.sroa.4304.0.copyload.i, ptr %.sroa.2182.0..sroa_idx.i, align 4, !alias.scope !27926
  %.sroa.3183.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 28
  store i32 %.sroa.5305.0.copyload.i, ptr %.sroa.3183.0..sroa_idx.i, align 4, !alias.scope !27926
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !27927
  br label %_ZN18gix_worktree_state8checkout5entry8checkout17h3b652f0b5edf6770E.exit.thread40

bb.ez:                                            ; preds = %bb.ex, %bb.ev
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !27927
  br label %_ZN18gix_worktree_state8checkout5entry8checkout17h3b652f0b5edf6770E.exit

bb.fa:                                            ; preds = %bb.ek
  store i64 -9223372036854775796, ptr %i.bb, align 8, !alias.scope !27925
  %.sroa.4275.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store ptr %i.iv, ptr %.sroa.4275.0..sroa_idx.i, align 8, !alias.scope !27925
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !27927
  br label %_ZN18gix_worktree_state8checkout5entry8checkout17h3b652f0b5edf6770E.exit.thread

common.resume:                                    ; preds = %.body, %16, %17, %bb.gb, %bb.ft, %bb.fq, %bb.fn, %.body.i, %.body.i.i.i, %bb.cr, %"_ZN4core3ptr44drop_in_place$LT$gix_filter..driver..Key$GT$17h2145d2d04727a3c2E.exit.i", %bb.dk, %bb.dn, %bb.ea, %bb.eb, %bb.ec, %bb.ed, %bb.ef, %bb.eu, %"_ZN4core3ptr44drop_in_place$LT$gix_filter..driver..Key$GT$17h2145d2d04727a3c2E.exit.i.thread"
  %common.resume.op = phi { ptr, i32 } [ %i.gu, %"_ZN4core3ptr44drop_in_place$LT$gix_filter..driver..Key$GT$17h2145d2d04727a3c2E.exit.i.thread" ], [ %.pn.i, %bb.dn ], [ %i.ic, %bb.ef ], [ %.pn335.i, %bb.ea ], [ %.pn335.i, %bb.ed ], [ %.pn335.i, %bb.eb ], [ %.pn335.i, %"_ZN4core3ptr44drop_in_place$LT$gix_filter..driver..Key$GT$17h2145d2d04727a3c2E.exit.i" ], [ %i.fw, %bb.cr ], [ %i.jg, %bb.eu ], [ %.pn85.i.i.i, %.body.i.i.i ], [ %.pn335.i, %bb.ec ], [ %i.he, %bb.dk ], [ %i.kv, %.body ], [ %i.kv, %bb.gb ], [ %i.kv, %17 ], [ %i.kv, %16 ], [ %i.ke, %.body.i ], [ %i.ke, %bb.fn ], [ %i.ku, %bb.ft ], [ %i.km, %bb.fq ]
  resume { ptr, i32 } %common.resume.op

_ZN18gix_worktree_state8checkout5entry8checkout17h3b652f0b5edf6770E.exit.thread: ; preds = %.thread.i, %bb.db, %bb.dw, %bb.fa
  %.ph = phi i64 [ -9223372036854775796, %bb.fa ], [ %i.hy, %bb.dw ], [ -9223372036854775796, %bb.db ], [ -9223372036854775796, %.thread.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !27927
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay)
  br label %9

_ZN18gix_worktree_state8checkout5entry8checkout17h3b652f0b5edf6770E.exit.thread40: ; preds = %bb.cm, %bb.cm, %bb.dx, %bb.ey, %bb.dm
  %.sroa.3.0.copyload110 = phi i64 [ %i.hg, %bb.dm ], [ %.sroa.0311.0.i, %bb.dx ], [ %i.ii, %bb.ey ], [ 0, %bb.cm ], [ 0, %bb.cm ]
  %.sroa.05.0.copyload108 = phi i64 [ %.sroa.0448.0.copyload.i, %bb.dm ], [ -9223372036854775808, %bb.dx ], [ -9223372036854775808, %bb.ey ], [ -9223372036854775808, %bb.cm ], [ -9223372036854775808, %bb.cm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !27927
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay)
  br label %bb.fb

_ZN18gix_worktree_state8checkout5entry8checkout17h3b652f0b5edf6770E.exit: ; preds = %bb.ct, %bb.cv, %bb.dg, %bb.dz, %bb.eh, %bb.er, %bb.ez
  %.pr = load i64, ptr %i.bb, align 8             ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !27927
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay)
  %.not = icmp eq i64 %.pr, -9223372036854775789
  br i1 %.not, label %_ZN18gix_worktree_state8checkout5entry8checkout17h3b652f0b5edf6770E.exit._crit_edge, label %9

_ZN18gix_worktree_state8checkout5entry8checkout17h3b652f0b5edf6770E.exit._crit_edge: ; preds = %_ZN18gix_worktree_state8checkout5entry8checkout17h3b652f0b5edf6770E.exit
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %.sroa.05.0.copyload.pre = load i64, ptr %.phi.trans.insert, align 8
  %.sroa.3.0..sroa_idx.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %.sroa.3.0.copyload.pre = load i64, ptr %.sroa.3.0..sroa_idx.phi.trans.insert, align 8
  br label %bb.fb

9:                                                ; preds = %_ZN18gix_worktree_state8checkout5entry8checkout17h3b652f0b5edf6770E.exit.thread, %_ZN18gix_worktree_state8checkout5entry8checkout17h3b652f0b5edf6770E.exit
  %10 = phi i64 [ %.ph, %_ZN18gix_worktree_state8checkout5entry8checkout17h3b652f0b5edf6770E.exit.thread ], [ %.pr, %_ZN18gix_worktree_state8checkout5entry8checkout17h3b652f0b5edf6770E.exit ] ; 2 uses
  %11 = icmp ne i64 %10, -9223372036854775794
  call void @llvm.assume(i1 %11)
  %12 = icmp eq i64 %10, -9223372036854775796
  br i1 %12, label %bb.fe, label %bb.ff

bb.fb:                                            ; preds = %_ZN18gix_worktree_state8checkout5entry8checkout17h3b652f0b5edf6770E.exit._crit_edge, %_ZN18gix_worktree_state8checkout5entry8checkout17h3b652f0b5edf6770E.exit.thread40
  %.sroa.3.0.copyload = phi i64 [ %.sroa.3.0.copyload.pre, %_ZN18gix_worktree_state8checkout5entry8checkout17h3b652f0b5edf6770E.exit._crit_edge ], [ %.sroa.3.0.copyload110, %_ZN18gix_worktree_state8checkout5entry8checkout17h3b652f0b5edf6770E.exit.thread40 ] ; 2 uses
  %.sroa.05.0.copyload = phi i64 [ %.sroa.05.0.copyload.pre, %_ZN18gix_worktree_state8checkout5entry8checkout17h3b652f0b5edf6770E.exit._crit_edge ], [ %.sroa.05.0.copyload108, %_ZN18gix_worktree_state8checkout5entry8checkout17h3b652f0b5edf6770E.exit.thread40 ] ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  %.not26 = icmp eq i64 %.sroa.05.0.copyload, -9223372036854775808
  br i1 %.not26, label %bb.fc, label %.thread

bb.fc:                                            ; preds = %bb.fb
  %i.jq = atomicrmw add ptr %7, i64 %.sroa.3.0.copyload monotonic, align 8 ; 0 uses
  %i.jr = atomicrmw add ptr %6, i64 1 monotonic, align 8 ; 0 uses
  br label %.thread

.thread:                                          ; preds = %bb.fc, %bb.fb
  %i.js = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.05.0.copyload, ptr %i.js, align 8
  %.sroa.3.0..sroa_idx7 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.3.0.copyload, ptr %.sroa.3.0..sroa_idx7, align 8
  %.sroa.4.0..sroa_idx9 = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.4.0..sroa_idx9, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.4.0..sroa_idx, i64 64, i1 false)
  store i64 -9223372036854775789, ptr %0, align 8
  br label %bb.fw

bb.fd:                                            ; preds = %bb.fv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba)
  %.pre = load i64, ptr %i.bb, align 8, !range !115 ; 3 uses
  %.not28 = icmp eq i64 %.pre, -9223372036854775789
  br i1 %.not28, label %bb.fw, label %bb.fx

bb.fe:                                            ; preds = %9
  %i.jt = getelementptr inbounds nuw i8, ptr %i.bb, i64 8 ; 3 uses
  %i.ju = invoke noundef zeroext i1 @_ZN18gix_worktree_state8checkout5chunk12is_collision17h30a94e0283b152b5E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.jt, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %2, i64 noundef %3, ptr noalias noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 %6)
          to label %bb.fu unwind label %.body

bb.ff:                                            ; preds = %bb.fu, %9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(248) %i.az, ptr noundef nonnull align 8 dereferenceable(248) %i.bb, i64 248, i1 false)
  %i.jv = getelementptr inbounds nuw i8, ptr %8, i64 2006
  %i.jw = load i8, ptr %i.jv, align 2, !range !49, !noundef !43
  %i.jx = trunc nuw i8 %i.jw to i1
  call void @llvm.experimental.noalias.scope.decl(metadata !27993)
  call void @llvm.experimental.noalias.scope.decl(metadata !27994)
  call void @llvm.experimental.noalias.scope.decl(metadata !27995)
  br i1 %i.jx, label %bb.fg, label %_ZN18gix_worktree_state8checkout5chunk12handle_error17he8fa4483e35268fbE.exit

bb.fg:                                            ; preds = %bb.ff
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !27996
  %i.jy = icmp slt i64 %3, 0
  br i1 %i.jy, label %bb.fi, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i, !prof !55

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i: ; preds = %bb.fg
  %i.jz = icmp eq i64 %3, 0                       ; 2 uses
  br i1 %i.jz, label %bb.fj, label %bb.fh

bb.fh:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #67, !noalias !27997
  %i.ka = call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %3, i64 noundef range(i64 1, 9) 1) #67, !noalias !27997 ; 2 uses
  %i.kb = icmp eq ptr %i.ka, null
  br i1 %i.kb, label %bb.fi, label %bb.fj

bb.fi:                                            ; preds = %bb.fh, %bb.fg
  %.sroa.4.0.ph.i.i.i = phi i64 [ 1, %bb.fh ], [ 0, %bb.fg ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i, i64 %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @2532) #73
          to label %.noexc.i unwind label %bb.ft, !noalias !27996

.noexc.i:                                         ; preds = %bb.fi
  unreachable

bb.fj:                                            ; preds = %bb.fh, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i
  %.sroa.10.0.i.i.i = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i ], [ %i.ka, %bb.fh ] ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i.i, ptr nonnull readonly align 1 %2, i64 %3, i1 false), !noalias !27998
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !27996
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(248) %i.a, ptr noundef nonnull align 8 dereferenceable(248) %i.az, i64 248, i1 false), !noalias !27999
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #67, !noalias !28000
  %i.kc = call noundef align 8 dereferenceable_or_null(248) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 248, i64 noundef range(i64 1, -9223372036854775807) 8) #67, !noalias !28000 ; 3 uses
  %i.kd = icmp eq ptr %i.kc, null
  br i1 %i.kd, label %bb.fk, label %bb.fo, !prof !51

bb.fk:                                            ; preds = %bb.fj
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 248) #73
          to label %.noexc4.i unwind label %bb.fl, !noalias !27996

.noexc4.i:                                        ; preds = %bb.fk
  unreachable

bb.fl:                                            ; preds = %bb.fk
  %i.ke = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke void @"_ZN4core3ptr56drop_in_place$LT$gix_worktree_state..checkout..Error$GT$17h3b71c8796c2600a9E"(ptr noalias noundef nonnull align 8 dereferenceable(248) %i.a) #75
          to label %.body.i unwind label %bb.fm, !noalias !27996

bb.fm:                                            ; preds = %bb.fl
  %i.kf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #74, !noalias !27996
  unreachable

.body.i:                                          ; preds = %bb.fl
  br i1 %i.jz, label %common.resume, label %bb.fn

bb.fn:                                            ; preds = %.body.i
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.0.i.i.i, i64 noundef %3, i64 noundef range(i64 1, -9223372036854775807) 1) #67, !noalias !28001
  br label %common.resume

bb.fo:                                            ; preds = %bb.fj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(248) %i.kc, ptr noundef nonnull align 8 dereferenceable(248) %i.az, i64 248, i1 false), !noalias !27999
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !27996
  store i64 %3, ptr %i.b, align 8, !noalias !27996
  %.sroa.5.0..sroa_idx8.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %.sroa.10.0.i.i.i, ptr %.sroa.5.0..sroa_idx8.i, align 8, !noalias !27996
  %.sroa.6.0..sroa_idx10.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %3, ptr %.sroa.6.0..sroa_idx10.i, align 8, !noalias !27996
  %i.kg = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %i.kc, ptr %i.kg, align 8, !noalias !27996
  %i.kh = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr @653, ptr %i.kh, align 8, !noalias !27996
  %i.ki = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.kj = load i64, ptr %i.ki, align 8, !alias.scope !28002, !noundef !43 ; 3 uses
  %i.kk = load i64, ptr %4, align 8, !range !45, !alias.scope !28002, !noundef !43
  %i.kl = icmp eq i64 %i.kj, %i.kk
  br i1 %i.kl, label %bb.fp, label %_ZN18gix_worktree_state8checkout5chunk12handle_error17he8fa4483e35268fbE.exit.thread

bb.fp:                                            ; preds = %bb.fo
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h95f9d5801da54e04E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %4, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @655)
          to label %_ZN18gix_worktree_state8checkout5chunk12handle_error17he8fa4483e35268fbE.exit.thread unwind label %bb.fq, !noalias !28003

bb.fq:                                            ; preds = %bb.fp
  %i.km = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr62drop_in_place$LT$gix_worktree_state..checkout..ErrorRecord$GT$17hb2936a4e44343316E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(40) %i.b) #75
          to label %common.resume unwind label %bb.fr, !noalias !28004

bb.fr:                                            ; preds = %bb.fq
  %i.kn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #74, !noalias !28003
  unreachable

_ZN18gix_worktree_state8checkout5chunk12handle_error17he8fa4483e35268fbE.exit.thread: ; preds = %bb.fo, %bb.fp
  %i.ko = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.kp = load ptr, ptr %i.ko, align 8, !alias.scope !28002, !nonnull !43, !noundef !43
  %i.kq = getelementptr inbounds nuw [40 x i8], ptr %i.kp, i64 %i.kj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.kq, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.b, i64 40, i1 false), !noalias !28004
  %i.kr = add i64 %i.kj, 1
  store i64 %i.kr, ptr %i.ki, align 8, !alias.scope !28002
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !27996
  %i.ks = atomicrmw add ptr %6, i64 1 monotonic, align 8, !noalias !27996 ; 0 uses
  br label %bb.fz

bb.fs:                                            ; preds = %bb.ft
  %i.kt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #74, !noalias !27999
  unreachable

bb.ft:                                            ; preds = %bb.fi
  %i.ku = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr56drop_in_place$LT$gix_worktree_state..checkout..Error$GT$17h3b71c8796c2600a9E"(ptr noalias noundef nonnull align 8 dereferenceable(248) %i.az) #75
          to label %common.resume unwind label %bb.fs, !noalias !27999

.body:                                            ; preds = %bb.fe, %bb.fv
  %.sroa.016.0 = phi i1 [ false, %bb.fv ], [ true, %bb.fe ]
  %i.kv = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.kw = load i64, ptr %i.bb, align 8, !range !115, !noundef !43 ; 3 uses
  %.not49 = icmp eq i64 %i.kw, -9223372036854775789
  br i1 %.not49, label %common.resume, label %bb.ga

bb.fu:                                            ; preds = %bb.fe
  br i1 %i.ju, label %bb.fv, label %bb.ff

bb.fv:                                            ; preds = %bb.fu
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba)
  %i.kx = load ptr, ptr %i.jt, align 8, !nonnull !43, !noundef !43
  store ptr %i.kx, ptr %i.ba, align 8
  %i.ky = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -9223372036854775808, ptr %i.ky, align 8
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %.sroa.413.0..sroa_idx, align 8
  store i64 -9223372036854775789, ptr %0, align 8
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17hc4d6b9640ccaa233E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ba)
          to label %bb.fd unwind label %.body

bb.fw:                                            ; preds = %.thread, %bb.fy, %bb.fz, %14, %bb.fx, %bb.fd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb)
  ret void

bb.fx:                                            ; preds = %bb.fd
  %i.kz = icmp ne i64 %.pre, -9223372036854775794
  call void @llvm.assume(i1 %i.kz)
  %13 = icmp eq i64 %.pre, -9223372036854775796
  br i1 %13, label %bb.fw, label %14

14:                                               ; preds = %bb.fx
  call void @"_ZN4core3ptr56drop_in_place$LT$gix_worktree_state..checkout..Error$GT$17h3b71c8796c2600a9E"(ptr noalias noundef nonnull align 8 dereferenceable(248) %i.bb)
  br label %bb.fw

_ZN18gix_worktree_state8checkout5chunk12handle_error17he8fa4483e35268fbE.exit: ; preds = %bb.ff
  %.sroa.031.0.copyload32 = load i64, ptr %i.az, align 8, !alias.scope !28005 ; 2 uses
  %.not27 = icmp eq i64 %.sroa.031.0.copyload32, -9223372036854775789
  br i1 %.not27, label %bb.fz, label %bb.fy

bb.fy:                                            ; preds = %_ZN18gix_worktree_state8checkout5chunk12handle_error17he8fa4483e35268fbE.exit
  %i.la = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(240) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(240) %i.la, i64 240, i1 false)
  store i64 %.sroa.031.0.copyload32, ptr %0, align 8
  br label %bb.fw

bb.fz:                                            ; preds = %_ZN18gix_worktree_state8checkout5chunk12handle_error17he8fa4483e35268fbE.exit.thread, %_ZN18gix_worktree_state8checkout5chunk12handle_error17he8fa4483e35268fbE.exit
  %i.lb = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -9223372036854775808, ptr %i.lb, align 8
  %.sroa.419.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %.sroa.419.0..sroa_idx, align 8
  store i64 -9223372036854775789, ptr %0, align 8
  br label %bb.fw

bb.ga:                                            ; preds = %.body
  %i.lc = icmp ne i64 %i.kw, -9223372036854775794
  call void @llvm.assume(i1 %i.lc)
  %15 = icmp eq i64 %i.kw, -9223372036854775796
  br i1 %15, label %16, label %17

16:                                               ; preds = %bb.ga
  br i1 %.sroa.016.0, label %bb.gb, label %common.resume

17:                                               ; preds = %bb.ga
  invoke void @"_ZN4core3ptr56drop_in_place$LT$gix_worktree_state..checkout..Error$GT$17h3b71c8796c2600a9E"(ptr noalias noundef nonnull align 8 dereferenceable(248) %i.bb) #75
          to label %common.resume unwind label %bb.gc

bb.gb:                                            ; preds = %16
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17hc4d6b9640ccaa233E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.jt) #75
          to label %common.resume unwind label %bb.gc

bb.gc:                                            ; preds = %bb.gb, %17
  %i.ld = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #74
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef ptr @_ZN18gix_worktree_state8checkout5entry16try_op_or_unlink17h9451fbf5a35158baE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %0, i64 noundef %1, i1 noundef zeroext %2, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %3) unnamed_addr #0 personality ptr @rust_eh_personality !guid !28013 {
bb.a:
  %i.a = alloca [176 x i8], align 8               ; 7 uses
  %i.b = alloca [176 x i8], align 8               ; 7 uses
  %i.c = alloca [8 x i8], align 8                 ; 7 uses
  %i.d = alloca [8 x i8], align 8                 ; 6 uses
  br i1 %2, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.in.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.0.0.i = load ptr, ptr %.sroa.0.0.in.i, align 8, !noalias !28014, !nonnull !43, !noundef !43
  %.sroa.5.0.in.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.sroa.5.0.i = load i64, ptr %.sroa.5.0.in.i, align 8, !noalias !28014, !noundef !43
  %i.e = tail call noundef ptr @_ZN6gix_fs7symlink6create17h6bcaf1b5489d6b2fE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.0.0.i, i64 noundef %.sroa.5.0.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %0, i64 noundef %1)
  br label %bb.m

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %.sroa.0.0.in.i22 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.0.0.i23 = load ptr, ptr %.sroa.0.0.in.i22, align 8, !noalias !28015, !nonnull !43, !noundef !43 ; 2 uses
  %.sroa.5.0.in.i24 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.sroa.5.0.i25 = load i64, ptr %.sroa.5.0.in.i24, align 8, !noalias !28015, !noundef !43 ; 2 uses
  %i.f = tail call noundef ptr @_ZN6gix_fs7symlink6create17h6bcaf1b5489d6b2fE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.0.0.i23, i64 noundef %.sroa.5.0.i25, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %0, i64 noundef %1) ; 4 uses
  store ptr %i.f, ptr %i.d, align 8
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.e, label %bb.d

.thread:                                          ; preds = %bb.h, %bb.p
  %.pn34 = phi { ptr, i32 } [ %i.l, %bb.h ], [ %lpad.thr_comm.split-lp, %bb.p ]
  resume { ptr, i32 } %.pn34

bb.d:                                             ; preds = %bb.c
  %i.g = invoke noundef zeroext i1 @_ZN6gix_fs7symlink18is_collision_error17hbba7d92ec5537ee8E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.d)
          to label %bb.f unwind label %bb.p

bb.e:                                             ; preds = %bb.f, %bb.c, %"_ZN18gix_worktree_state8checkout5entry8checkout28_$u7b$$u7b$closure$u7d$$u7d$17h4bee5edf1d8f488dE.exit"
  %.sroa.0.0 = phi ptr [ %i.n, %"_ZN18gix_worktree_state8checkout5entry8checkout28_$u7b$$u7b$closure$u7d$$u7d$17h4bee5edf1d8f488dE.exit" ], [ null, %bb.c ], [ %i.f, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.m

bb.f:                                             ; preds = %bb.d
  br i1 %i.g, label %bb.g, label %bb.e

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.f, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !28016
  invoke void @_ZN3std3sys2fs16symlink_metadata17h36601b41e73268cdE(ptr noalias noundef nonnull sret([176 x i8]) align 8 captures(address) dereferenceable(176) %i.a, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %0, i64 noundef %1)
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.g
  %i.h = load i64, ptr %i.a, align 8, !range !75, !noalias !28016, !noundef !43 ; 2 uses
  %i.i = icmp eq i64 %i.h, 2
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !noalias !28017 ; 2 uses
  br i1 %i.i, label %bb.i, label %bb.j

bb.h:                                             ; preds = %bb.l, %bb.g, %bb.j
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17hc4d6b9640ccaa233E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c) #75
          to label %.thread unwind label %bb.o

bb.i:                                             ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !28016
  br label %bb.n

bb.j:                                             ; preds = %.noexc
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(160) %.sroa.9.0..sroa_idx, i64 160, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !28016
  store i64 %i.h, ptr %i.b, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.k, ptr %.sroa.4.0..sroa_idx, align 8
  %i.m = invoke noundef ptr @_ZN18gix_worktree_state8checkout5entry27try_unlink_path_recursively17ha4a0b1721b289858E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %0, i64 noundef %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(176) %i.b)
          to label %bb.k unwind label %bb.h       ; 2 uses

bb.k:                                             ; preds = %bb.j
  %.not17 = icmp eq ptr %i.m, null
  br i1 %.not17, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.n = invoke noundef ptr @_ZN6gix_fs7symlink6create17h6bcaf1b5489d6b2fE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.0.0.i23, i64 noundef %.sroa.5.0.i25, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %0, i64 noundef %1)
          to label %"_ZN18gix_worktree_state8checkout5entry8checkout28_$u7b$$u7b$closure$u7d$$u7d$17h4bee5edf1d8f488dE.exit" unwind label %bb.h

"_ZN18gix_worktree_state8checkout5entry8checkout28_$u7b$$u7b$closure$u7d$$u7d$17h4bee5edf1d8f488dE.exit": ; preds = %bb.l
  call void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17hc4d6b9640ccaa233E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.e

bb.m:                                             ; preds = %bb.b, %bb.e, %bb.n
  %.sroa.0.1 = phi ptr [ %.sroa.0.2, %bb.n ], [ %.sroa.0.0, %bb.e ], [ %i.e, %bb.b ]
  ret ptr %.sroa.0.1

bb.n:                                             ; preds = %bb.k, %bb.i
  %.sroa.0.2 = phi ptr [ %i.k, %bb.i ], [ %i.m, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17hc4d6b9640ccaa233E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.m

bb.o:                                             ; preds = %bb.p, %bb.h
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #74
  unreachable

bb.p:                                             ; preds = %bb.d
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17hc4d6b9640ccaa233E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d) #75
          to label %.thread unwind label %bb.o
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN18gix_worktree_state8checkout5entry16try_op_or_unlink17hf783ff5e2a1a8325E(ptr dead_on_unwind noalias noundef nonnull writable align 8 captures(address) dereferenceable(16) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2, i1 noundef zeroext %3, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %4) unnamed_addr #0 personality ptr @rust_eh_personality !guid !28030 {
bb.a:
  %i.a = alloca [16 x i8], align 4                ; 8 uses
  %i.b = alloca [176 x i8], align 8               ; 7 uses
  %i.c = alloca [16 x i8], align 4                ; 8 uses
  %i.d = alloca [16 x i8], align 4                ; 8 uses
  %i.e = alloca [176 x i8], align 8               ; 7 uses
  %i.f = alloca [8 x i8], align 8                 ; 7 uses
  %i.g = alloca [16 x i8], align 8                ; 7 uses
  br i1 %3, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28031)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !28032
  %i.h = load ptr, ptr %4, align 8, !alias.scope !28031, !nonnull !43, !align !48, !noundef !43
  %i.i = load i8, ptr %i.h, align 1, !range !49, !noalias !28032, !noundef !43
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.c, label %"_ZN18gix_worktree_state8checkout5entry8checkout28_$u7b$$u7b$closure$u7d$$u7d$17h59d95ef923ea7a0dE.exit"

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !28031, !nonnull !43, !align !48, !noundef !43
  %i.m = load i8, ptr %i.l, align 1, !range !49, !noalias !28032, !noundef !43 ; 2 uses
  %i.n = xor i8 %i.m, 1
  br label %"_ZN18gix_worktree_state8checkout5entry8checkout28_$u7b$$u7b$closure$u7d$$u7d$17h59d95ef923ea7a0dE.exit"

"_ZN18gix_worktree_state8checkout5entry8checkout28_$u7b$$u7b$closure$u7d$$u7d$17h59d95ef923ea7a0dE.exit": ; preds = %bb.b, %bb.c
  %.sroa.016.0.i = phi i8 [ %i.m, %bb.c ], [ 1, %bb.b ]
  %.sroa.7.0.i = phi i8 [ %i.n, %bb.c ], [ 0, %bb.b ]
  store i32 131072, ptr %i.d, align 4, !noalias !28032
  %.sroa.0.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  store i32 438, ptr %.sroa.0.sroa.4.0..sroa_idx.i, align 4, !noalias !28032
  %.sroa.0.sroa.4.sroa.4.0..sroa.0.sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store <4 x i8> <i8 0, i8 1, i8 0, i8 1>, ptr %.sroa.0.sroa.4.sroa.4.0..sroa.0.sroa.4.0..sroa_idx.sroa_idx.i, align 4, !noalias !28032
  %.sroa.6.0..sroa_idx8.i = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  store i8 %.sroa.016.0.i, ptr %.sroa.6.0..sroa_idx8.i, align 4, !noalias !28032
  %.sroa.7.0..sroa_idx10.i = getelementptr inbounds nuw i8, ptr %i.d, i64 13
  store i8 %.sroa.7.0.i, ptr %.sroa.7.0..sroa_idx10.i, align 1, !noalias !28032
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !28031, !nonnull !43, !align !44, !noundef !43 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !noalias !28032, !nonnull !43, !align !48, !noundef !43
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.s = load i64, ptr %i.r, align 8, !noalias !28032, !noundef !43
  call void @_ZN3std2fs11OpenOptions5_open17h005de3b10d8796e4E(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %0, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.d, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.q, i64 noundef %i.s), !noalias !28031
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !28032
  br label %bb.t

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28033)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !28034
  %i.t = load ptr, ptr %4, align 8, !alias.scope !28033, !nonnull !43, !align !48, !noundef !43 ; 2 uses
  %i.u = load i8, ptr %i.t, align 1, !range !49, !noalias !28034, !noundef !43
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %bb.e, label %"_ZN18gix_worktree_state8checkout5entry8checkout28_$u7b$$u7b$closure$u7d$$u7d$17h59d95ef923ea7a0dE.exit27"

bb.e:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !alias.scope !28033, !nonnull !43, !align !48, !noundef !43
  %i.y = load i8, ptr %i.x, align 1, !range !49, !noalias !28034, !noundef !43 ; 2 uses
  %i.z = xor i8 %i.y, 1
  br label %"_ZN18gix_worktree_state8checkout5entry8checkout28_$u7b$$u7b$closure$u7d$$u7d$17h59d95ef923ea7a0dE.exit27"

"_ZN18gix_worktree_state8checkout5entry8checkout28_$u7b$$u7b$closure$u7d$$u7d$17h59d95ef923ea7a0dE.exit27": ; preds = %bb.d, %bb.e
  %.sroa.016.0.i18 = phi i8 [ %i.y, %bb.e ], [ 1, %bb.d ]
  %.sroa.7.0.i19 = phi i8 [ %i.z, %bb.e ], [ 0, %bb.d ]
  store i32 131072, ptr %i.c, align 4, !noalias !28034
  %.sroa.0.sroa.4.0..sroa_idx.i20 = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 438, ptr %.sroa.0.sroa.4.0..sroa_idx.i20, align 4, !noalias !28034
  %.sroa.0.sroa.4.sroa.4.0..sroa.0.sroa.4.0..sroa_idx.sroa_idx.i21 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store <4 x i8> <i8 0, i8 1, i8 0, i8 1>, ptr %.sroa.0.sroa.4.sroa.4.0..sroa.0.sroa.4.0..sroa_idx.sroa_idx.i21, align 4, !noalias !28034
  %.sroa.6.0..sroa_idx8.i25 = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  store i8 %.sroa.016.0.i18, ptr %.sroa.6.0..sroa_idx8.i25, align 4, !noalias !28034
  %.sroa.7.0..sroa_idx10.i26 = getelementptr inbounds nuw i8, ptr %i.c, i64 13
end_hunk_0
begin_hunk_1_@"_ZN7pubgrub6report32DerivationTree$LT$P$C$VS$C$M$GT$17merge_no_versions17hc96a5c845dec65f1E":bb.a

bb.b:                                             ; preds = %bb.a
  %i.i = icmp ne i64 %i.h, -9223372036854775802
  tail call void @llvm.assume(i1 %i.i)
  %i.j = add nsw i64 %i.h, 9223372036854775804
  %i.k = icmp ugt i64 %i.h, -9223372036854775805
  %i.l = select i1 %i.k, i64 %i.j, i64 2
  switch i64 %i.l, label %bb.c [
    i64 0, label %bb.d
    i64 1, label %bb.h
    i64 2, label %bb.e
    i64 3, label %bb.t
  ], !prof !81659

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr @2255, ptr %i.g, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 1, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store ptr null, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store i64 0, ptr %i.p, align 8
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.g, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2256) #73
          to label %bb.g unwind label %bb.f

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 352 ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.f, ptr noundef nonnull align 8 dereferenceable(120) %i.q, i64 120, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 176 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 472 ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.e, ptr noundef nonnull align 8 dereferenceable(120) %i.s, i64 120, i1 false)
  %i.t = invoke fastcc noundef zeroext i1 @"_ZN78_$LT$nickel_lang_package..resolve..Package$u20$as$u20$core..cmp..PartialEq$GT$2eq17hd7083f5c07ddd00cE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(176) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(176) %2)
          to label %bb.j unwind label %bb.i

.thread25.thread:                                 ; preds = %bb.s, %bb.m, %.split, %bb.f
  %.pn13 = phi { ptr, i32 } [ %i.v, %bb.f ], [ %.pn.ph, %bb.s ], [ %i.x, %bb.m ], [ %.pn.ph, %.split ]
  call fastcc void @"_ZN4core3ptr213drop_in_place$LT$smallvec..SmallVec$LT$$u5b$$LP$core..ops..range..Bound$LT$nickel_lang_package..version..SemVer$GT$$C$core..ops..range..Bound$LT$nickel_lang_package..version..SemVer$GT$$RP$$u3b$$u20$1$u5d$$GT$$GT$17h1e1f216f72e0e698E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(120) %3)
  call fastcc void @"_ZN4core3ptr58drop_in_place$LT$nickel_lang_package..resolve..Package$GT$17h94b83aed7d2448adE"(ptr noalias noundef align 8 dereferenceable(176) %2) #75
  %i.u = icmp ult i64 %i.h, -9223372036854775804
  br i1 %i.u, label %bb.x, label %bb.y

bb.f:                                             ; preds = %bb.d
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %.thread25.thread

bb.g:                                             ; preds = %bb.d
  unreachable

bb.h:                                             ; preds = %bb.b
  store i64 -9223372036854775799, ptr %0, align 8
  tail call fastcc void @"_ZN4core3ptr213drop_in_place$LT$smallvec..SmallVec$LT$$u5b$$LP$core..ops..range..Bound$LT$nickel_lang_package..version..SemVer$GT$$C$core..ops..range..Bound$LT$nickel_lang_package..version..SemVer$GT$$RP$$u3b$$u20$1$u5d$$GT$$GT$17h1e1f216f72e0e698E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(120) %3)
  tail call fastcc void @"_ZN4core3ptr58drop_in_place$LT$nickel_lang_package..resolve..Package$GT$17h94b83aed7d2448adE"(ptr noalias noundef align 8 dereferenceable(176) %2)
  br label %bb.u

bb.i:                                             ; preds = %bb.e
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %.split

bb.j:                                             ; preds = %bb.e
  br i1 %i.t, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke fastcc void @"_ZN84_$LT$version_ranges..Ranges$LT$T$GT$$u20$as$u20$pubgrub..version_set..VersionSet$GT$5union17h3f788f90c8bd682cE"(ptr noalias noundef align 8 captures(address) dereferenceable(120) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(120) %3)
          to label %bb.n unwind label %bb.m

bb.l:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke fastcc void @"_ZN84_$LT$version_ranges..Ranges$LT$T$GT$$u20$as$u20$pubgrub..version_set..VersionSet$GT$5union17h3f788f90c8bd682cE"(ptr noalias noundef align 8 captures(address) dereferenceable(120) %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.f, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(120) %3)
          to label %bb.p unwind label %bb.o

bb.m:                                             ; preds = %bb.k
  %i.x = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr58drop_in_place$LT$nickel_lang_package..resolve..Package$GT$17h94b83aed7d2448adE"(ptr noalias noundef align 8 dereferenceable(176) %i.r) #75
  call fastcc void @"_ZN4core3ptr213drop_in_place$LT$smallvec..SmallVec$LT$$u5b$$LP$core..ops..range..Bound$LT$nickel_lang_package..version..SemVer$GT$$C$core..ops..range..Bound$LT$nickel_lang_package..version..SemVer$GT$$RP$$u3b$$u20$1$u5d$$GT$$GT$17h1e1f216f72e0e698E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(120) %i.q)
  call fastcc void @"_ZN4core3ptr58drop_in_place$LT$nickel_lang_package..resolve..Package$GT$17h94b83aed7d2448adE"(ptr noalias noundef align 8 dereferenceable(176) %1) #75
  call fastcc void @"_ZN4core3ptr213drop_in_place$LT$smallvec..SmallVec$LT$$u5b$$LP$core..ops..range..Bound$LT$nickel_lang_package..version..SemVer$GT$$C$core..ops..range..Bound$LT$nickel_lang_package..version..SemVer$GT$$RP$$u3b$$u20$1$u5d$$GT$$GT$17h1e1f216f72e0e698E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(120) %i.s)
  br label %.thread25.thread

bb.n:                                             ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %i.b, ptr noundef nonnull align 8 dereferenceable(176) %1, i64 176, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 352
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.y, ptr noundef nonnull align 8 dereferenceable(120) %i.q, i64 120, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 176
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %i.z, ptr noundef nonnull align 8 dereferenceable(176) %i.r, i64 176, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 472
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.aa, ptr noundef nonnull align 8 dereferenceable(120) %i.a, i64 120, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(592) %0, ptr noundef nonnull align 8 dereferenceable(592) %i.b, i64 592, i1 false)
  call fastcc void @"_ZN4core3ptr213drop_in_place$LT$smallvec..SmallVec$LT$$u5b$$LP$core..ops..range..Bound$LT$nickel_lang_package..version..SemVer$GT$$C$core..ops..range..Bound$LT$nickel_lang_package..version..SemVer$GT$$RP$$u3b$$u20$1$u5d$$GT$$GT$17h1e1f216f72e0e698E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(120) %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.q

bb.o:                                             ; preds = %bb.l
  %i.ab = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr58drop_in_place$LT$nickel_lang_package..resolve..Package$GT$17h94b83aed7d2448adE"(ptr noalias noundef align 8 dereferenceable(176) %1) #75
  br label %.split

bb.p:                                             ; preds = %bb.l
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 176
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %i.ac, ptr noundef nonnull align 8 dereferenceable(176) %i.r, i64 176, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.d, i64 472
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.ad, ptr noundef nonnull align 8 dereferenceable(120) %i.s, i64 120, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %i.d, ptr noundef nonnull align 8 dereferenceable(176) %1, i64 176, i1 false)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 352
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.ae, ptr noundef nonnull align 8 dereferenceable(120) %i.c, i64 120, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(592) %0, ptr noundef nonnull align 8 dereferenceable(592) %i.d, i64 592, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call fastcc void @"_ZN4core3ptr213drop_in_place$LT$smallvec..SmallVec$LT$$u5b$$LP$core..ops..range..Bound$LT$nickel_lang_package..version..SemVer$GT$$C$core..ops..range..Bound$LT$nickel_lang_package..version..SemVer$GT$$RP$$u3b$$u20$1$u5d$$GT$$GT$17h1e1f216f72e0e698E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(120) %i.q)
  br label %bb.q

bb.q:                                             ; preds = %bb.n, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call fastcc void @"_ZN4core3ptr213drop_in_place$LT$smallvec..SmallVec$LT$$u5b$$LP$core..ops..range..Bound$LT$nickel_lang_package..version..SemVer$GT$$C$core..ops..range..Bound$LT$nickel_lang_package..version..SemVer$GT$$RP$$u3b$$u20$1$u5d$$GT$$GT$17h1e1f216f72e0e698E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(120) %3)
  call fastcc void @"_ZN4core3ptr58drop_in_place$LT$nickel_lang_package..resolve..Package$GT$17h94b83aed7d2448adE"(ptr noalias noundef align 8 dereferenceable(176) %2)
  br label %bb.u

bb.r:                                             ; preds = %bb.w, %bb.v, %bb.u
  ret void

.split:                                           ; preds = %bb.o, %bb.i
  %.pn.ph = phi { ptr, i32 } [ %i.w, %bb.i ], [ %i.ab, %bb.o ] ; 2 uses
  %.sroa.07.0.ph = phi i1 [ true, %bb.i ], [ false, %bb.o ]
  call fastcc void @"_ZN4core3ptr213drop_in_place$LT$smallvec..SmallVec$LT$$u5b$$LP$core..ops..range..Bound$LT$nickel_lang_package..version..SemVer$GT$$C$core..ops..range..Bound$LT$nickel_lang_package..version..SemVer$GT$$RP$$u3b$$u20$1$u5d$$GT$$GT$17h1e1f216f72e0e698E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(120) %i.s)
  call fastcc void @"_ZN4core3ptr58drop_in_place$LT$nickel_lang_package..resolve..Package$GT$17h94b83aed7d2448adE"(ptr noalias noundef align 8 dereferenceable(176) %i.r) #75
  call fastcc void @"_ZN4core3ptr213drop_in_place$LT$smallvec..SmallVec$LT$$u5b$$LP$core..ops..range..Bound$LT$nickel_lang_package..version..SemVer$GT$$C$core..ops..range..Bound$LT$nickel_lang_package..version..SemVer$GT$$RP$$u3b$$u20$1$u5d$$GT$$GT$17h1e1f216f72e0e698E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(120) %i.q)
  br i1 %.sroa.07.0.ph, label %bb.s, label %.thread25.thread

bb.s:                                             ; preds = %.split
  call fastcc void @"_ZN4core3ptr58drop_in_place$LT$nickel_lang_package..resolve..Package$GT$17h94b83aed7d2448adE"(ptr noalias noundef align 8 dereferenceable(176) %1) #75
  br label %.thread25.thread

bb.t:                                             ; preds = %bb.b
  store i64 -9223372036854775799, ptr %0, align 8
  tail call fastcc void @"_ZN4core3ptr213drop_in_place$LT$smallvec..SmallVec$LT$$u5b$$LP$core..ops..range..Bound$LT$nickel_lang_package..version..SemVer$GT$$C$core..ops..range..Bound$LT$nickel_lang_package..version..SemVer$GT$$RP$$u3b$$u20$1$u5d$$GT$$GT$17h1e1f216f72e0e698E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(120) %3)
  tail call fastcc void @"_ZN4core3ptr58drop_in_place$LT$nickel_lang_package..resolve..Package$GT$17h94b83aed7d2448adE"(ptr noalias noundef align 8 dereferenceable(176) %2)
  br label %bb.u

bb.u:                                             ; preds = %bb.h, %bb.q, %bb.t
  %i.af = icmp ult i64 %i.h, -9223372036854775804
  br i1 %i.af, label %bb.r, label %bb.v

bb.v:                                             ; preds = %bb.u
  call fastcc void @"_ZN4core3ptr184drop_in_place$LT$pubgrub..report..External$LT$nickel_lang_package..resolve..Package$C$version_ranges..Ranges$LT$nickel_lang_package..version..SemVer$GT$$C$alloc..string..String$GT$$GT$17h88351c59416332fdE"(ptr noalias noundef align 8 dereferenceable(592) %1)
  br label %bb.r

bb.w:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(592) %0, ptr noundef nonnull align 8 dereferenceable(592) %1, i64 592, i1 false)
  tail call fastcc void @"_ZN4core3ptr213drop_in_place$LT$smallvec..SmallVec$LT$$u5b$$LP$core..ops..range..Bound$LT$nickel_lang_package..version..SemVer$GT$$C$core..ops..range..Bound$LT$nickel_lang_package..version..SemVer$GT$$RP$$u3b$$u20$1$u5d$$GT$$GT$17h1e1f216f72e0e698E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(120) %3)
  tail call fastcc void @"_ZN4core3ptr58drop_in_place$LT$nickel_lang_package..resolve..Package$GT$17h94b83aed7d2448adE"(ptr noalias noundef align 8 dereferenceable(176) %2)
  br label %bb.r

bb.x:                                             ; preds = %bb.y, %.thread25.thread
  resume { ptr, i32 } %.pn13

bb.y:                                             ; preds = %.thread25.thread
  call fastcc void @"_ZN4core3ptr184drop_in_place$LT$pubgrub..report..External$LT$nickel_lang_package..resolve..Package$C$version_ranges..Ranges$LT$nickel_lang_package..version..SemVer$GT$$C$alloc..string..String$GT$$GT$17h88351c59416332fdE"(ptr noalias noundef align 8 dereferenceable(592) %1) #75
  br label %bb.x
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN7pubgrub6report32DerivationTree$LT$P$C$VS$C$M$GT$20collapse_no_versions17h82e89e94591b0357E"(ptr noalias nofree noundef nonnull align 8 captures(address, read_provenance) dereferenceable(592) %0) unnamed_addr #0 personality ptr @rust_eh_personality !guid !81660 {
bb.a:
  %i.a = alloca [592 x i8], align 8               ; 4 uses
  %i.b = alloca [592 x i8], align 8               ; 4 uses
  %i.c = alloca [120 x i8], align 8               ; 4 uses
  %i.d = alloca [176 x i8], align 8               ; 5 uses
  %i.e = alloca [592 x i8], align 8               ; 7 uses
  %i.f = alloca [592 x i8], align 8               ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 4 uses
  %.sroa.829 = alloca [520 x i8], align 8         ; 6 uses
  %i.h = alloca [120 x i8], align 8               ; 4 uses
  %i.i = alloca [176 x i8], align 8               ; 5 uses
  %i.j = alloca [592 x i8], align 8               ; 7 uses
  %i.k = alloca [592 x i8], align 8               ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %.sroa.8 = alloca [520 x i8], align 8           ; 6 uses
  %i.m = load i64, ptr %0, align 8, !range !104, !noundef !43
  %i.n = icmp eq i64 %i.m, -9223372036854775800
  br i1 %i.n, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a, %tailrecurse
  %.tr68 = phi ptr [ %i.al, %tailrecurse ], [ %0, %bb.a ] ; 17 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.tr68, i64 56 ; 2 uses
  %i.p = tail call fastcc noundef align 8 dereferenceable(592) ptr @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$8make_mut17h0151f6dabe34f002E"(ptr noalias noundef align 8 dereferenceable(8) %i.o) ; 7 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.tr68, i64 64 ; 2 uses
  %i.r = tail call fastcc noundef align 8 dereferenceable(592) ptr @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$8make_mut17h0151f6dabe34f002E"(ptr noalias noundef align 8 dereferenceable(8) %i.q) ; 7 uses
  %i.s = load i64, ptr %i.p, align 8, !range !104, !noundef !43 ; 3 uses
  %i.t = icmp eq i64 %i.s, -9223372036854775800
  br i1 %i.t, label %bb.b, label %1

.loopexit:                                        ; preds = %tailrecurse, %bb.a, %bb.p, %bb.ah
  ret void

bb.b:                                             ; preds = %1, %.lr.ph
  %i.u = load i64, ptr %i.r, align 8, !range !104, !noundef !43 ; 3 uses
  %i.v = icmp eq i64 %i.u, -9223372036854775800
  br i1 %i.v, label %tailrecurse, label %4

1:                                                ; preds = %.lr.ph
  %2 = icmp ne i64 %i.s, -9223372036854775802
  tail call void @llvm.assume(i1 %2)
  %3 = icmp eq i64 %i.s, -9223372036854775803
  br i1 %3, label %bb.c, label %bb.b

bb.c:                                             ; preds = %1
  %i.w = getelementptr inbounds nuw i8, ptr %.tr68, i64 8 ; 3 uses
  tail call fastcc void @"_ZN7pubgrub6report32DerivationTree$LT$P$C$VS$C$M$GT$20collapse_no_versions17h82e89e94591b0357E"(ptr noalias noundef align 8 dereferenceable(592) %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.x = load i64, ptr %i.r, align 8, !range !104, !noundef !43
  %i.y = icmp eq i64 %i.x, -9223372036854775800
  br i1 %i.y, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  call fastcc void @"_ZN81_$LT$pubgrub..report..Derived$LT$P$C$VS$C$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h63045b6e338c10b0E"(ptr noalias noundef align 8 captures(address) dereferenceable(64) %i.aa, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.z)
  store i64 -9223372036854775800, ptr %i.j, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  call fastcc void @"_ZN82_$LT$pubgrub..report..External$LT$P$C$VS$C$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h08db0e11d3b98ee1E"(ptr noalias noundef align 8 captures(address) dereferenceable(592) %i.j, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(592) %i.r)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  invoke fastcc void @"_ZN76_$LT$nickel_lang_package..resolve..Package$u20$as$u20$core..clone..Clone$GT$5clone17he9fef2b2d50b4867E"(ptr noalias noundef align 8 captures(address) dereferenceable(176) %i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(176) %i.ab)
          to label %bb.h unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.p, i64 184
  invoke fastcc void @"_ZN70_$LT$version_ranges..Ranges$LT$V$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h396df09798576ea5E"(ptr noalias noundef align 8 captures(address) dereferenceable(120) %i.h, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ad)
          to label %bb.i unwind label %bb.r

bb.i:                                             ; preds = %bb.h
  call fastcc void @"_ZN7pubgrub6report32DerivationTree$LT$P$C$VS$C$M$GT$17merge_no_versions17hc96a5c845dec65f1E"(ptr noalias noundef align 8 captures(address) dereferenceable(592) %i.k, ptr noalias noundef align 8 captures(address) dereferenceable(592) %i.j, ptr noalias noundef align 8 captures(address) dereferenceable(176) %i.i, ptr noalias noundef align 8 captures(address) dereferenceable(120) %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %i.ae = load i64, ptr %i.k, align 8, !range !152, !noundef !43 ; 2 uses
  %.not = icmp eq i64 %i.ae, -9223372036854775799
  br i1 %.not, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.l, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.4.0..sroa_idx, i64 64, i1 false)
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(520) %.sroa.8, ptr noundef nonnull align 8 dereferenceable(520) %.sroa.5.0..sroa_idx, i64 520, i1 false)
  br label %bb.n

bb.k:                                             ; preds = %bb.i
  %i.af = load i64, ptr %.tr68, align 8, !range !104, !noundef !43
  %i.ag = icmp eq i64 %i.af, -9223372036854775800
  br i1 %i.ag, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  call fastcc void @"_ZN81_$LT$pubgrub..report..Derived$LT$P$C$VS$C$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h63045b6e338c10b0E"(ptr noalias noundef align 8 captures(address) dereferenceable(64) %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.w)
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  call fastcc void @"_ZN82_$LT$pubgrub..report..External$LT$P$C$VS$C$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h08db0e11d3b98ee1E"(ptr noalias noundef align 8 captures(address) dereferenceable(592) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(592) %.tr68)
  %.sroa.011.0.copyload12 = load i64, ptr %i.b, align 8
  %.sroa.8.0..sroa_idx18 = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(520) %.sroa.8, ptr noundef nonnull align 8 dereferenceable(520) %.sroa.8.0..sroa_idx18, i64 520, i1 false)
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m, %bb.j
  %.sroa.011.0 = phi i64 [ %i.ae, %bb.j ], [ -9223372036854775800, %bb.l ], [ %.sroa.011.0.copyload12, %bb.m ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  invoke fastcc void @"_ZN4core3ptr190drop_in_place$LT$pubgrub..report..DerivationTree$LT$nickel_lang_package..resolve..Package$C$version_ranges..Ranges$LT$nickel_lang_package..version..SemVer$GT$$C$alloc..string..String$GT$$GT$17h3c0329a3be178033E"(ptr noalias noundef align 8 dereferenceable(592) %.tr68)
          to label %bb.p unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ah = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.011.0, ptr %.tr68, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.w, ptr noundef nonnull align 8 dereferenceable(64) %i.l, i64 64, i1 false)
  br label %.sink.split

bb.p:                                             ; preds = %bb.n
  store i64 %.sroa.011.0, ptr %.tr68, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.w, ptr noundef nonnull align 8 dereferenceable(64) %i.l, i64 64, i1 false)
  %.sroa.8.0..sroa_idx20 = getelementptr inbounds nuw i8, ptr %.tr68, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(520) %.sroa.8.0..sroa_idx20, ptr noundef nonnull align 8 dereferenceable(520) %.sroa.8, i64 520, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  br label %.loopexit

.sink.split:                                      ; preds = %bb.o, %bb.ag
  %.sroa.829.sink = phi ptr [ %.sroa.829, %bb.ag ], [ %.sroa.8, %bb.o ]
  %.pn46.ph = phi { ptr, i32 } [ %i.az, %bb.ag ], [ %i.ah, %bb.o ]
  %.sroa.829.0..sroa_idx31 = getelementptr inbounds nuw i8, ptr %.tr68, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(520) %.sroa.829.0..sroa_idx31, ptr noundef nonnull align 8 dereferenceable(520) %.sroa.829.sink, i64 520, i1 false)
  br label %bb.q

bb.q:                                             ; preds = %.sink.split, %bb.aj, %bb.t
  %.pn46 = phi { ptr, i32 } [ %.pn.ph, %bb.t ], [ %.pn43.ph, %bb.aj ], [ %.pn46.ph, %.sink.split ]
  resume { ptr, i32 } %.pn46

bb.r:                                             ; preds = %bb.h
  %i.ai = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr58drop_in_place$LT$nickel_lang_package..resolve..Package$GT$17h94b83aed7d2448adE"(ptr noalias noundef align 8 dereferenceable(176) %i.i) #75
  br label %bb.t

bb.s:                                             ; preds = %bb.aj, %bb.t
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #74
  unreachable

bb.t:                                             ; preds = %bb.r, %bb.g
  %.pn.ph = phi { ptr, i32 } [ %i.ac, %bb.g ], [ %i.ai, %bb.r ]
  invoke fastcc void @"_ZN4core3ptr190drop_in_place$LT$pubgrub..report..DerivationTree$LT$nickel_lang_package..resolve..Package$C$version_ranges..Ranges$LT$nickel_lang_package..version..SemVer$GT$$C$alloc..string..String$GT$$GT$17h3c0329a3be178033E"(ptr noalias noundef align 8 dereferenceable(592) %i.j) #75
          to label %bb.q unwind label %bb.s

tailrecurse:                                      ; preds = %4, %bb.b
  %i.ak = tail call fastcc noundef align 8 dereferenceable(592) ptr @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$8make_mut17h0151f6dabe34f002E"(ptr noalias noundef align 8 dereferenceable(8) %i.o)
  tail call fastcc void @"_ZN7pubgrub6report32DerivationTree$LT$P$C$VS$C$M$GT$20collapse_no_versions17h82e89e94591b0357E"(ptr noalias noundef align 8 dereferenceable(592) %i.ak)
  %i.al = tail call fastcc noundef align 8 dereferenceable(592) ptr @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$8make_mut17h0151f6dabe34f002E"(ptr noalias noundef align 8 dereferenceable(8) %i.q) ; 2 uses
  %i.am = load i64, ptr %i.al, align 8, !range !104, !noundef !43
  %i.an = icmp eq i64 %i.am, -9223372036854775800
  br i1 %i.an, label %.lr.ph, label %.loopexit

4:                                                ; preds = %bb.b
  %5 = icmp ne i64 %i.u, -9223372036854775802
  tail call void @llvm.assume(i1 %5)
  %6 = icmp eq i64 %i.u, -9223372036854775803
  br i1 %6, label %bb.u, label %tailrecurse

bb.u:                                             ; preds = %4
  %i.ao = getelementptr inbounds nuw i8, ptr %.tr68, i64 8 ; 3 uses
  tail call fastcc void @"_ZN7pubgrub6report32DerivationTree$LT$P$C$VS$C$M$GT$20collapse_no_versions17h82e89e94591b0357E"(ptr noalias noundef align 8 dereferenceable(592) %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.829)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.ap = load i64, ptr %i.p, align 8, !range !104, !noundef !43
  %i.aq = icmp eq i64 %i.ap, -9223372036854775800
  br i1 %i.aq, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.ar = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call fastcc void @"_ZN81_$LT$pubgrub..report..Derived$LT$P$C$VS$C$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h63045b6e338c10b0E"(ptr noalias noundef align 8 captures(address) dereferenceable(64) %i.as, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.ar)
  store i64 -9223372036854775800, ptr %i.e, align 8
  br label %bb.x

bb.w:                                             ; preds = %bb.u
  call fastcc void @"_ZN82_$LT$pubgrub..report..External$LT$P$C$VS$C$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h08db0e11d3b98ee1E"(ptr noalias noundef align 8 captures(address) dereferenceable(592) %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(592) %i.p)
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.at = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  invoke fastcc void @"_ZN76_$LT$nickel_lang_package..resolve..Package$u20$as$u20$core..clone..Clone$GT$5clone17he9fef2b2d50b4867E"(ptr noalias noundef align 8 captures(address) dereferenceable(176) %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(176) %i.at)
          to label %bb.z unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.z:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.av = getelementptr inbounds nuw i8, ptr %i.r, i64 184
  invoke fastcc void @"_ZN70_$LT$version_ranges..Ranges$LT$V$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h396df09798576ea5E"(ptr noalias noundef align 8 captures(address) dereferenceable(120) %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.av)
          to label %bb.aa unwind label %bb.ai

bb.aa:                                            ; preds = %bb.z
  call fastcc void @"_ZN7pubgrub6report32DerivationTree$LT$P$C$VS$C$M$GT$17merge_no_versions17hc96a5c845dec65f1E"(ptr noalias noundef align 8 captures(address) dereferenceable(592) %i.f, ptr noalias noundef align 8 captures(address) dereferenceable(592) %i.e, ptr noalias noundef align 8 captures(address) dereferenceable(176) %i.d, ptr noalias noundef align 8 captures(address) dereferenceable(120) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.aw = load i64, ptr %i.f, align 8, !range !152, !noundef !43 ; 2 uses
  %.not45 = icmp eq i64 %i.aw, -9223372036854775799
  br i1 %.not45, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %.sroa.439.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.g, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.439.0..sroa_idx, i64 64, i1 false)
  %.sroa.540.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(520) %.sroa.829, ptr noundef nonnull align 8 dereferenceable(520) %.sroa.540.0..sroa_idx, i64 520, i1 false)
  br label %bb.af

bb.ac:                                            ; preds = %bb.aa
  %i.ax = load i64, ptr %.tr68, align 8, !range !104, !noundef !43
  %i.ay = icmp eq i64 %i.ax, -9223372036854775800
  br i1 %i.ay, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  call fastcc void @"_ZN81_$LT$pubgrub..report..Derived$LT$P$C$VS$C$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h63045b6e338c10b0E"(ptr noalias noundef align 8 captures(address) dereferenceable(64) %i.g, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.ao)
  br label %bb.af

bb.ae:                                            ; preds = %bb.ac
  call fastcc void @"_ZN82_$LT$pubgrub..report..External$LT$P$C$VS$C$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h08db0e11d3b98ee1E"(ptr noalias noundef align 8 captures(address) dereferenceable(592) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(592) %.tr68)
  %.sroa.021.0.copyload22 = load i64, ptr %i.a, align 8
  %.sroa.829.0..sroa_idx30 = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(520) %.sroa.829, ptr noundef nonnull align 8 dereferenceable(520) %.sroa.829.0..sroa_idx30, i64 520, i1 false)
  br label %bb.af

bb.af:                                            ; preds = %bb.ad, %bb.ae, %bb.ab
  %.sroa.021.0 = phi i64 [ %i.aw, %bb.ab ], [ -9223372036854775800, %bb.ad ], [ %.sroa.021.0.copyload22, %bb.ae ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  invoke fastcc void @"_ZN4core3ptr190drop_in_place$LT$pubgrub..report..DerivationTree$LT$nickel_lang_package..resolve..Package$C$version_ranges..Ranges$LT$nickel_lang_package..version..SemVer$GT$$C$alloc..string..String$GT$$GT$17h3c0329a3be178033E"(ptr noalias noundef align 8 dereferenceable(592) %.tr68)
          to label %bb.ah unwind label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.az = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.021.0, ptr %.tr68, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ao, ptr noundef nonnull align 8 dereferenceable(64) %i.g, i64 64, i1 false)
  br label %.sink.split

bb.ah:                                            ; preds = %bb.af
  store i64 %.sroa.021.0, ptr %.tr68, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ao, ptr noundef nonnull align 8 dereferenceable(64) %i.g, i64 64, i1 false)
  %.sroa.829.0..sroa_idx32 = getelementptr inbounds nuw i8, ptr %.tr68, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(520) %.sroa.829.0..sroa_idx32, ptr noundef nonnull align 8 dereferenceable(520) %.sroa.829, i64 520, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.829)
  br label %.loopexit

bb.ai:                                            ; preds = %bb.z
  %i.ba = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr58drop_in_place$LT$nickel_lang_package..resolve..Package$GT$17h94b83aed7d2448adE"(ptr noalias noundef align 8 dereferenceable(176) %i.d) #75
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.y
  %.pn43.ph = phi { ptr, i32 } [ %i.au, %bb.y ], [ %i.ba, %bb.ai ]
  invoke fastcc void @"_ZN4core3ptr190drop_in_place$LT$pubgrub..report..DerivationTree$LT$nickel_lang_package..resolve..Package$C$version_ranges..Ranges$LT$nickel_lang_package..version..SemVer$GT$$C$alloc..string..String$GT$$GT$17h3c0329a3be178033E"(ptr noalias noundef align 8 dereferenceable(592) %i.e) #75
          to label %bb.q unwind label %bb.s
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_ZN7pubgrub6solver7resolve17h4c785bb80adccd0fE(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(592) %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dead_on_return dereferenceable(176) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(48) %3) unnamed_addr #3 personality ptr @rust_eh_personality !guid !82297 {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 4 uses
  %i.b = alloca [48 x i8], align 8                ; 6 uses
  %i.c = alloca [120 x i8], align 8               ; 9 uses
  %i.d = alloca [48 x i8], align 8                ; 8 uses
  %i.e = alloca [120 x i8], align 8               ; 4 uses
  %i.f = alloca [120 x i8], align 8               ; 6 uses
  %i.g = alloca [32 x i8], align 8                ; 6 uses
  %i.h = alloca [8 x i8], align 8                 ; 3 uses
  %i.i = alloca [48 x i8], align 8                ; 7 uses
  %i.j = alloca [8 x i8], align 8                 ; 4 uses
  %i.k = alloca [48 x i8], align 8                ; 6 uses
  %i.l = alloca [176 x i8], align 8               ; 5 uses
  %i.m = alloca [128 x i8], align 8               ; 19 uses
  %i.n = alloca [32 x i8], align 8                ; 6 uses
  %i.o = alloca [8 x i8], align 8                 ; 3 uses
  %i.p = alloca [48 x i8], align 8                ; 7 uses
  %i.q = alloca [8 x i8], align 8                 ; 4 uses
  %i.r = alloca [32 x i8], align 8                ; 6 uses
  %i.s = alloca [8 x i8], align 8                 ; 3 uses
  %i.t = alloca [48 x i8], align 8                ; 7 uses
  %i.u = alloca [8 x i8], align 8                 ; 4 uses
  %i.v = alloca [80 x i8], align 8                ; 15 uses
  %i.w = alloca [24 x i8], align 8                ; 9 uses
  %i.x = alloca [80 x i8], align 8                ; 14 uses
  %i.y = alloca [24 x i8], align 8                ; 9 uses
  %.sroa.9.i.i.i = alloca [32 x i8], align 8      ; 11 uses
  %.sroa.842.sroa.6.i.i.i = alloca [32 x i8], align 8 ; 6 uses
  %.sroa.7.sroa.5.i.i.i = alloca [32 x i8], align 8 ; 5 uses
  %.sroa.42.i = alloca [132 x i8], align 4        ; 4 uses
  %i.z = alloca [120 x i8], align 8               ; 4 uses
  %i.aa = alloca [128 x i8], align 8              ; 19 uses
  %i.ab = alloca [32 x i8], align 8               ; 6 uses
  %i.ac = alloca [8 x i8], align 8                ; 3 uses
  %i.ad = alloca [48 x i8], align 8               ; 7 uses
  %i.ae = alloca [8 x i8], align 8                ; 4 uses
  %i.af = alloca [32 x i8], align 8               ; 6 uses
  %i.ag = alloca [8 x i8], align 8                ; 3 uses
  %i.ah = alloca [48 x i8], align 8               ; 7 uses
  %i.ai = alloca [8 x i8], align 8                ; 4 uses
  %i.aj = alloca [176 x i8], align 8              ; 4 uses
  %i.ak = alloca [8 x i8], align 8                ; 5 uses
  %i.al = alloca [32 x i8], align 8               ; 6 uses
  %i.am = alloca [8 x i8], align 8                ; 3 uses
  %i.an = alloca [48 x i8], align 8               ; 7 uses
  %i.ao = alloca [8 x i8], align 8                ; 4 uses
  %i.ap = alloca [176 x i8], align 8              ; 4 uses
  %i.aq = alloca [224 x i8], align 8              ; 11 uses
  %i.ar = alloca [48 x i8], align 8               ; 8 uses
  %i.as = alloca [32 x i8], align 8               ; 6 uses
  %i.at = alloca [48 x i8], align 8               ; 7 uses
  %i.au = alloca [32 x i8], align 8               ; 7 uses
  %i.av = alloca [24 x i8], align 8               ; 6 uses
  %i.aw = alloca [8 x i8], align 8                ; 4 uses
  %i.ax = alloca [24 x i8], align 8               ; 8 uses
  %i.ay = alloca [48 x i8], align 8               ; 8 uses
  %i.az = alloca [32 x i8], align 8               ; 14 uses
  %i.ba = alloca [32 x i8], align 8               ; 6 uses
  %i.bb = alloca [8 x i8], align 8                ; 3 uses
  %i.bc = alloca [48 x i8], align 8               ; 6 uses
  %i.bd = alloca [8 x i8], align 8                ; 4 uses
  %i.be = alloca [128 x i8], align 8              ; 19 uses
  %i.bf = alloca [128 x i8], align 8              ; 19 uses
  %i.bg = alloca [32 x i8], align 8               ; 6 uses
  %i.bh = alloca [8 x i8], align 8                ; 3 uses
  %i.bi = alloca [48 x i8], align 8               ; 6 uses
  %i.bj = alloca [8 x i8], align 8                ; 4 uses
  %i.bk = alloca [48 x i8], align 8               ; 6 uses
  %i.bl = alloca [120 x i8], align 8              ; 9 uses
  %i.bm = alloca [48 x i8], align 8               ; 8 uses
  %i.bn = alloca [48 x i8], align 8               ; 8 uses
  %i.bo = alloca [32 x i8], align 8               ; 10 uses
  %i.bp = alloca [48 x i8], align 8               ; 10 uses
  %i.bq = alloca [528 x i8], align 8              ; 11 uses
  %i.br = alloca [56 x i8], align 8               ; 9 uses
  %i.bs = alloca [24 x i8], align 8               ; 8 uses
  %.sroa.4751 = alloca [584 x i8], align 8        ; 5 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.4751, i64 32
  %i.bu = alloca [320 x i8], align 8              ; 4 uses
  %.sroa.4740 = alloca [584 x i8], align 8        ; 4 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.4740, i64 48
  %i.bw = alloca [320 x i8], align 8              ; 4 uses
  %i.bx = alloca [48 x i8], align 8               ; 4 uses
  %i.by = alloca [48 x i8], align 8               ; 9 uses
  %i.bz = alloca [8 x i8], align 8                ; 4 uses
  %i.ca = alloca [32 x i8], align 8               ; 7 uses
  %i.cb = alloca [48 x i8], align 8               ; 6 uses
  %i.cc = alloca [48 x i8], align 8               ; 7 uses
  %i.cd = alloca [528 x i8], align 8              ; 14 uses
  %i.ce = alloca [320 x i8], align 8              ; 8 uses
  %.sroa.647 = alloca [32 x i8], align 8          ; 5 uses
  %.sroa.741 = alloca [32 x i8], align 8          ; 5 uses
  %i.cf = alloca [48 x i8], align 8               ; 12 uses
  %i.cg = alloca [48 x i8], align 8               ; 8 uses
  %i.ch = alloca [48 x i8], align 8               ; 7 uses
  %i.ci = alloca [120 x i8], align 8              ; 4 uses
end_hunk_1
begin_hunk_2_@"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h563f9dabc6c4c165E":bb.a
  %i.fg = load ptr, ptr %i.ff, align 8, !alias.scope !89181, !noalias !89149, !noundef !43 ; 3 uses
  %i.fh = icmp eq ptr %i.fg, null
  br i1 %i.fh, label %bb.az, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.fi = load i64, ptr %i.fg, align 8, !noalias !89182, !noundef !43
  %i.fj = add i64 %i.fi, -1                       ; 2 uses
  store i64 %i.fj, ptr %i.fg, align 8, !noalias !89182
  %i.fk = icmp eq i64 %i.fj, 0
  br i1 %i.fk, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h0635c6dc3356ee1aE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ff)
          to label %bb.az unwind label %.thread126.i.i, !noalias !89149

bb.az:                                            ; preds = %bb.ay, %bb.ax, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !89149
  br label %bb.bc

bb.ba:                                            ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !89149
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !89149
  %i.fl = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.ao, ptr noundef nonnull align 8 dereferenceable(20) %i.fl, i64 20, i1 false), !noalias !89149
  invoke void @_ZN18nickel_lang_parser10identifier8LocIdent10into_label17hde5434c8a1c25122E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ap, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(20) %i.ao)
          to label %.thread324.i.i unwind label %bb.bb, !noalias !89149

bb.bb:                                            ; preds = %bb.ba
  %i.fm = landingpad { ptr, i32 }
          cleanup
  %.val33.i.i = load ptr, ptr %i.aq, align 8, !noalias !89149, !noundef !43
  invoke fastcc void @"_ZN4core3ptr67drop_in_place$LT$nickel_lang_core..eval..value..EnumVariantData$GT$17ha10cf2cfeec69f0bE"(ptr %.val33.i.i) #75
          to label %.critedge30.i.i unwind label %bb.t, !noalias !89149

.thread324.i.i:                                   ; preds = %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !89149
  %i.fn = load ptr, ptr %i.aq, align 8, !noalias !89149, !noundef !43
  %.sroa.0111.0.copyload112.i.i = load i64, ptr %i.ap, align 8, !noalias !89149
  %.sroa.6113.0..sroa_idx114.i.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %.sroa.6113.0.copyload115.i.i = load ptr, ptr %.sroa.6113.0..sroa_idx114.i.i, align 8, !noalias !89149
  %.sroa.7116.0..sroa_idx117.i.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %.sroa.7116.0.copyload118.i.i = load i64, ptr %.sroa.7116.0..sroa_idx117.i.i, align 8, !noalias !89149
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !89149
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !89149
  br label %bb.bc

bb.bc:                                            ; preds = %.thread324.i.i, %bb.az
  %.sroa.010.0333.i.i = phi ptr [ %i.fn, %.thread324.i.i ], [ %i.dd, %bb.az ] ; 8 uses
  %.sroa.7116.0332.i.i = phi i64 [ %.sroa.7116.0.copyload118.i.i, %.thread324.i.i ], [ %.sroa.7116.0.copyload.i.i, %bb.az ] ; 2 uses
  %.sroa.6113.0331.i.i = phi ptr [ %.sroa.6113.0.copyload115.i.i, %.thread324.i.i ], [ %.sroa.6113.0.copyload.i.i, %bb.az ] ; 6 uses
  %.sroa.0111.0330.i.i = phi i64 [ %.sroa.0111.0.copyload112.i.i, %.thread324.i.i ], [ %.sroa.0111.0.copyload.i.i, %bb.az ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !89149
  call void @llvm.experimental.noalias.scope.decl(metadata !89183)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10.i.i.i)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6113.0331.i.i) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i.sroa.4.i.i.i)
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %.sroa.7116.0332.i.i, 6
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.bd, label %.split2.i.i.i.i.i.i.i.i.i.i, !prof !50

bb.bd:                                            ; preds = %bb.bc
  %i.fo = load i32, ptr %.sroa.6113.0331.i.i, align 1
  %i.fp = xor i32 %i.fo, 1752459591
  %i.fq = getelementptr i8, ptr %.sroa.6113.0331.i.i, i64 4
  %i.fr = load i16, ptr %i.fq, align 1
  %i.fs = zext i16 %i.fr to i32
  %i.ft = xor i32 %i.fs, 25205
  %i.fu = or i32 %i.fp, %i.ft
  %i.fv = icmp ne i32 %i.fu, 0
  %i.fw = zext i1 %i.fv to i32
  %i.fx = icmp eq i32 %i.fw, 0
  br i1 %i.fx, label %"_ZN202_$LT$nickel_lang_package..manifest.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$nickel_lang_package..manifest..IndexId$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17hcefa9b9b307c2e39E.exit.i.i.i.i.i.i.i.i.i", label %.split2.i.i.i.i.i.i.i.i.i.i, !prof !50

.split2.i.i.i.i.i.i.i.i.i.i:                      ; preds = %bb.bd, %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !89184
  invoke fastcc void @_ZN10serde_core2de5Error15unknown_variant17hca2c2d32498785f4E(ptr noalias noundef align 8 captures(address) dereferenceable(48) %i.ac, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.6113.0331.i.i, i64 noundef %.sroa.7116.0332.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) @869, i64 noundef 1)
          to label %.noexc.i.i.i.i.i.i.i.i.i unwind label %bb.be, !noalias !89185

.noexc.i.i.i.i.i.i.i.i.i:                         ; preds = %.split2.i.i.i.i.i.i.i.i.i.i
  %.sroa.06.0.copyload7.i.i.i.i.i = load i64, ptr %i.ac, align 8, !noalias !89186
  %.sroa.6.0..sroa_idx8.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %.sroa.6.i.i.sroa.0.0.copyload.i.i.i = load ptr, ptr %.sroa.6.0..sroa_idx8.i.i.i.i.i, align 8, !noalias !89186
  %.sroa.6.i.i.sroa.4.0..sroa.6.0..sroa_idx8.i.i.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.i.i.sroa.4.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.i.i.sroa.4.0..sroa.6.0..sroa_idx8.i.i.sroa_idx.i.i.i, i64 32, i1 false), !noalias !89186
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !89184
  br label %"_ZN202_$LT$nickel_lang_package..manifest.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$nickel_lang_package..manifest..IndexId$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17hcefa9b9b307c2e39E.exit.i.i.i.i.i.i.i.i.i"

bb.be:                                            ; preds = %.split2.i.i.i.i.i.i.i.i.i.i
  %i.fy = landingpad { ptr, i32 }
          cleanup
  %i.fz = icmp eq i64 %.sroa.0111.0330.i.i, 0
  br i1 %i.fz, label %bb.bm, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6113.0331.i.i, i64 noundef %.sroa.0111.0330.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #67, !noalias !89187
  br label %bb.bm

"_ZN202_$LT$nickel_lang_package..manifest.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$nickel_lang_package..manifest..IndexId$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17hcefa9b9b307c2e39E.exit.i.i.i.i.i.i.i.i.i": ; preds = %.noexc.i.i.i.i.i.i.i.i.i, %bb.bd
  %.sroa.6.i.i.sroa.0.0.i.i.i = phi ptr [ undef, %bb.bd ], [ %.sroa.6.i.i.sroa.0.0.copyload.i.i.i, %.noexc.i.i.i.i.i.i.i.i.i ]
  %.sroa.06.0.i.i.i.i.i = phi i64 [ -9223372036854775802, %bb.bd ], [ %.sroa.06.0.copyload7.i.i.i.i.i, %.noexc.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.ga = icmp eq i64 %.sroa.0111.0330.i.i, 0
  br i1 %i.ga, label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17hde3f229cc2457399E.exit.i.i.i.i.i", label %bb.bg

bb.bg:                                            ; preds = %"_ZN202_$LT$nickel_lang_package..manifest.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$nickel_lang_package..manifest..IndexId$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17hcefa9b9b307c2e39E.exit.i.i.i.i.i.i.i.i.i"
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6113.0331.i.i, i64 noundef %.sroa.0111.0330.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #67, !noalias !89188
  br label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17hde3f229cc2457399E.exit.i.i.i.i.i"

"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17hde3f229cc2457399E.exit.i.i.i.i.i": ; preds = %bb.bg, %"_ZN202_$LT$nickel_lang_package..manifest.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$nickel_lang_package..manifest..IndexId$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17hcefa9b9b307c2e39E.exit.i.i.i.i.i.i.i.i.i"
  %.not.i.i.i.i.i = icmp eq i64 %.sroa.06.0.i.i.i.i.i, -9223372036854775802
  br i1 %.not.i.i.i.i.i, label %bb.bp, label %bb.bh

bb.bh:                                            ; preds = %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17hde3f229cc2457399E.exit.i.i.i.i.i"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.10.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.i.i.sroa.4.i.i.i, i64 32, i1 false), !noalias !89189
  %i.gb = icmp eq ptr %.sroa.010.0333.i.i, null
  br i1 %i.gb, label %bb.bo, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.gc = ptrtoint ptr %.sroa.010.0333.i.i to i64
  %i.gd = and i64 %i.gc, 3
  %..i.i.i.i.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.gd, i64 2)
  switch i64 %..i.i.i.i.i.i.i.i.i.i, label %bb.bo [
    i64 2, label %.noexc.i.i.i.i.i
    i64 0, label %bb.bj
  ], !prof !53

.noexc.i.i.i.i.i:                                 ; preds = %bb.bi
  call void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1197, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1200, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @383) #73, !noalias !89149
  unreachable

bb.bj:                                            ; preds = %bb.bi
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !89190
  store ptr %.sroa.010.0333.i.i, ptr %i.ab, align 8, !noalias !89190
  %i.ge = load i64, ptr %.sroa.010.0333.i.i, align 8, !noalias !89191, !noundef !43 ; 3 uses
  %i.gf = and i64 %i.ge, 72057594037927935
  %i.gg = add nsw i64 %i.gf, -1                   ; 3 uses
  %i.gh = and i64 %i.ge, 1080863910568919040
  %i.gi = icmp ult i64 %i.ge, 864691128455135232
  call void @llvm.assume(i1 %i.gi)
  %i.gj = or i64 %i.gg, %i.gh
  store i64 %i.gj, ptr %.sroa.010.0333.i.i, align 8, !noalias !89191
  %i.gk = icmp ugt i64 %i.gg, 72057594037927935
  br i1 %i.gk, label %.noexc3.i.i.i.i.i, label %bb.bk, !prof !46

bb.bk:                                            ; preds = %bb.bj
  %i.gl = icmp eq i64 %i.gg, 0
  br i1 %i.gl, label %bb.bl, label %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17hd23f685308e28bd9E.exit.i.i.i.i.i.i.i.i.i.i"

.noexc3.i.i.i.i.i:                                ; preds = %bb.bj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !89191
  store ptr @2427, ptr %i.aa, align 8, !noalias !89191
  %i.gm = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store i64 1, ptr %i.gm, align 8, !noalias !89191
  %i.gn = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  store ptr null, ptr %i.gn, align 8, !noalias !89191
  %i.go = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.go, align 8, !noalias !89191
  %i.gp = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  store i64 0, ptr %i.gp, align 8, !noalias !89191
  call void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.aa, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2428) #73, !noalias !89149
  unreachable

bb.bl:                                            ; preds = %bb.bk
  call void @_ZN16nickel_lang_core4eval5value12ValueBlockRc9drop_slow17ha5a2a8b11d052046E(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ab), !noalias !89149
  br label %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17hd23f685308e28bd9E.exit.i.i.i.i.i.i.i.i.i.i"

"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17hd23f685308e28bd9E.exit.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.bl, %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !89190
  br label %bb.bo

bb.bm:                                            ; preds = %bb.bf, %bb.be
  invoke fastcc void @"_ZN4core3ptr71drop_in_place$LT$nickel_lang_core..deserialize..VariantDeserializer$GT$17he190f93aad2daa5aE"(ptr %.sroa.010.0333.i.i) #75
          to label %.critedge30.i.i unwind label %bb.bn, !noalias !89192

bb.bn:                                            ; preds = %bb.bm
  %i.gq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #74, !noalias !89192
  unreachable

bb.bo:                                            ; preds = %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17hd23f685308e28bd9E.exit.i.i.i.i.i.i.i.i.i.i", %bb.bi, %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i.sroa.4.i.i.i)
  %.sroa.312.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.312.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.10.i.i.i, i64 32, i1 false), !noalias !89193
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i.i.i)
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.06.0.i.i.i.i.i, ptr %i.gr, align 8, !alias.scope !89194
  %.sroa.211.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.6.i.i.sroa.0.0.i.i.i, ptr %.sroa.211.0..sroa_idx.i.i.i, align 8, !alias.scope !89194
  store i64 -9223372036854775808, ptr %0, align 8, !alias.scope !89194
  br label %"_ZN19nickel_lang_package8manifest1_96_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$nickel_lang_package..manifest..IndexId$GT$11deserialize17ha3b1d7ff99afdadcE.exit"

bb.bp:                                            ; preds = %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17hde3f229cc2457399E.exit.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i.sroa.4.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !89195)
  %.not.i.i.i.i = icmp eq ptr %.sroa.010.0333.i.i, null
  br i1 %.not.i.i.i.i, label %.thread.i.i.i.i, label %.noexc82.i.i

.noexc82.i.i:                                     ; preds = %bb.bp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !89196
  call void @_ZN16nickel_lang_core4eval5value11NickelValue7content17h5471752e14fb6256E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.w, ptr noundef nonnull %.sroa.010.0333.i.i), !noalias !89149
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.w, align 8, !noalias !89196 ; 5 uses
  %.sroa.12.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %.sroa.12.0.copyload.i.i.i.i = load ptr, ptr %.sroa.12.0..sroa_idx.i.i.i.i, align 8, !noalias !89196 ; 4 uses
  %.sroa.15.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %.sroa.15.0.copyload.i.i.i.i = load ptr, ptr %.sroa.15.0..sroa_idx.i.i.i.i, align 8, !noalias !89196 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !89196
  %.not18.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i, 30
  br i1 %.not18.i.i.i.i, label %.thread.i.i.i.i, label %2

2:                                                ; preds = %.noexc82.i.i
  %3 = icmp ne i64 %.sroa.0.0.copyload.i.i.i.i, 23
  call void @llvm.assume(i1 %3)
  %4 = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i, 20
  br i1 %4, label %.noexc83.i.i, label %bb.bq

.thread.i.i.i.i:                                  ; preds = %.noexc82.i.i, %bb.bp
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -9223372036854775808, ptr %i.gs, align 8, !alias.scope !89197
  store i64 -9223372036854775808, ptr %0, align 8, !alias.scope !89197
  br label %"_ZN19nickel_lang_package8manifest1_96_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$nickel_lang_package..manifest..IndexId$GT$11deserialize17ha3b1d7ff99afdadcE.exit"

.noexc83.i.i:                                     ; preds = %2
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.12.0.copyload.i.i.i.i), "nonnull"(ptr %.sroa.15.0.copyload.i.i.i.i) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !89196
  call void %.sroa.15.0.copyload.i.i.i.i(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(address) dereferenceable(88) %i.z, ptr noundef nonnull %.sroa.12.0.copyload.i.i.i.i), !noalias !89149, !inline_history !88973
  call void @llvm.experimental.noalias.scope.decl(metadata !89198)
  call void @llvm.experimental.noalias.scope.decl(metadata !89199)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !89200
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !89200
  %i.gt = load i64, ptr %i.z, align 8, !range !66, !alias.scope !89199, !noalias !89196, !noundef !43
  %.not.i.i13.i.i.i = icmp eq i64 %i.gt, -9223372036854775808
  br i1 %.not.i.i13.i.i.i, label %bb.bt, label %bb.bs

bb.bq:                                            ; preds = %2
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #67, !noalias !89201
  %i.gu = call noundef dereferenceable_or_null(13) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 13, i64 noundef range(i64 1, 9) 1) #67, !noalias !89201 ; 5 uses
  %i.gv = icmp eq ptr %i.gu, null
  br i1 %i.gv, label %bb.br, label %bb.el

bb.br:                                            ; preds = %bb.bq
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 1, i64 13, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @2532) #73
          to label %.noexc.i.i.i.i unwind label %bb.fb, !noalias !89196

.noexc.i.i.i.i:                                   ; preds = %bb.br
  unreachable

bb.bs:                                            ; preds = %.noexc83.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.u, ptr noundef nonnull readonly align 8 dereferenceable(88) %i.z, i64 88, i1 false), !noalias !89202
  br label %bb.bu

bb.bt:                                            ; preds = %.noexc83.i.i
  %i.gw = call align 8 ptr @llvm.threadlocal.address.p0(ptr @"_ZN3std4hash6random11RandomState3new4KEYS29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$3VAL17h3d0bd8071983845cE") ; 5 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 16 ; 2 uses
  %i.gy = load i8, ptr %i.gx, align 8, !range !49, !noalias !89203, !noundef !43
  %i.gz = trunc nuw i8 %i.gy to i1
  br i1 %i.gz, label %._ZN4core3ops8function6FnOnce9call_once17he2f4aecbdfe21424E.exit_crit_edge.i.i.i.i.i.i.i, label %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17hce8715a73596a4f8E.exit.i.i.i.i.i.i.i", !prof !50

._ZN4core3ops8function6FnOnce9call_once17he2f4aecbdfe21424E.exit_crit_edge.i.i.i.i.i.i.i: ; preds = %bb.bt
  %.pre.i.i.i.i.i.i.i = load i64, ptr %i.gw, align 8, !noalias !89204
  %.phi.trans.insert.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.gw, i64 8
  %.pre1.i.i.i.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i.i.i.i, align 8, !noalias !89204
  br label %"_ZN3std6thread5local17LocalKey$LT$T$GT$4with17h5fe1768b82e59416E.exit.i.i.i.i.i"

"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17hce8715a73596a4f8E.exit.i.i.i.i.i.i.i": ; preds = %bb.bt
  %i.ha = call { i64, i64 } @_ZN3std3sys6random5linux19hashmap_random_keys17he133c8f345d0b53aE(), !noalias !89149 ; 2 uses
  %i.hb = extractvalue { i64, i64 } %i.ha, 0
  %i.hc = extractvalue { i64, i64 } %i.ha, 1      ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gw, i64 8
  store i64 %i.hc, ptr %i.hd, align 8, !noalias !89205
  store i8 1, ptr %i.gx, align 8, !noalias !89205
  br label %"_ZN3std6thread5local17LocalKey$LT$T$GT$4with17h5fe1768b82e59416E.exit.i.i.i.i.i"

"_ZN3std6thread5local17LocalKey$LT$T$GT$4with17h5fe1768b82e59416E.exit.i.i.i.i.i": ; preds = %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17hce8715a73596a4f8E.exit.i.i.i.i.i.i.i", %._ZN4core3ops8function6FnOnce9call_once17he2f4aecbdfe21424E.exit_crit_edge.i.i.i.i.i.i.i
  %.pre-phi140.i.i.i.i.i = phi i64 [ %.pre1.i.i.i.i.i.i.i, %._ZN4core3ops8function6FnOnce9call_once17he2f4aecbdfe21424E.exit_crit_edge.i.i.i.i.i.i.i ], [ %i.hc, %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17hce8715a73596a4f8E.exit.i.i.i.i.i.i.i" ]
  %i.he = phi i64 [ %.pre.i.i.i.i.i.i.i, %._ZN4core3ops8function6FnOnce9call_once17he2f4aecbdfe21424E.exit_crit_edge.i.i.i.i.i.i.i ], [ %i.hb, %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17hce8715a73596a4f8E.exit.i.i.i.i.i.i.i" ] ; 2 uses
  %i.hf = add i64 %i.he, 1
  store i64 %i.hf, ptr %i.gw, align 8, !noalias !89204
  store i64 0, ptr %i.u, align 8, !noalias !89200
  %.sroa.4.0..sroa_idx.i31.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx.i31.i.i.i.i, align 8, !noalias !89200
  %.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i, align 8, !noalias !89200
  %.sroa.6.0..sroa_idx.i32.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.0..sroa_idx.i32.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) @7, i64 32, i1 false), !noalias !89200
  %.sroa.7.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 56
  store i64 %i.he, ptr %.sroa.7.0..sroa_idx.i.i.i.i.i, align 8, !noalias !89200
  %.sroa.8.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 64
  store i64 %.pre-phi140.i.i.i.i.i, ptr %.sroa.8.0..sroa_idx.i.i.i.i.i, align 8, !noalias !89200
  %i.hg = getelementptr inbounds nuw i8, ptr %i.u, i64 80
  store i8 0, ptr %i.hg, align 8, !noalias !89200
  %i.hh = getelementptr inbounds nuw i8, ptr %i.u, i64 81
  store i8 0, ptr %i.hh, align 1, !noalias !89200
  %i.hi = getelementptr inbounds nuw i8, ptr %i.u, i64 72
  store ptr null, ptr %i.hi, align 8, !noalias !89200
  br label %bb.bu

bb.bu:                                            ; preds = %"_ZN3std6thread5local17LocalKey$LT$T$GT$4with17h5fe1768b82e59416E.exit.i.i.i.i.i", %bb.bs
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.v, ptr noundef nonnull align 8 dereferenceable(72) %i.u, i64 72, i1 false), !noalias !89200
  call void @llvm.experimental.noalias.scope.decl(metadata !89206)
  call void @llvm.experimental.noalias.scope.decl(metadata !89207)
  %i.hj = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  %i.hk = load i64, ptr %i.hj, align 8, !alias.scope !89207, !noalias !89200, !noundef !43
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !89208
  invoke void @_ZN16nickel_lang_core11deserialize18RecordDeserializer3new17hdedec7fe68762b84E(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.t, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(72) %i.v)
          to label %.noexc.i.i14.i.i.i unwind label %bb.ee, !noalias !89200

.noexc.i.i14.i.i.i:                               ; preds = %bb.bu
  call void @llvm.experimental.noalias.scope.decl(metadata !89209)
  %i.hl = getelementptr inbounds nuw i8, ptr %i.t, i64 64 ; 3 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.t, i64 48 ; 4 uses
  %i.hn = load ptr, ptr %i.hl, align 8, !alias.scope !89210, !noalias !89211, !nonnull !43, !noundef !43
  %i.ho = load ptr, ptr %i.hm, align 8, !alias.scope !89210, !noalias !89211, !nonnull !43, !noundef !43 ; 2 uses
  %i.hp = icmp eq ptr %i.ho, %i.hn
  br i1 %i.hp, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h484d3e3701f68078E.exit.i.i.i._crit_edge.thread.i.i.i.i.i.i.i", label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h484d3e3701f68078E.exit.i.i.i.lr.ph.i.i.i.i.i.i.i"

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h484d3e3701f68078E.exit.i.i.i.lr.ph.i.i.i.i.i.i.i": ; preds = %.noexc.i.i14.i.i.i
  %.sroa.5.0..sroa_idx4.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.5331.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.sroa.6332.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.hr = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.sroa.5328.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %.sroa.6329.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.hs = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.sroa.5325.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %.sroa.6326.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  br label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h484d3e3701f68078E.exit.i.i.i.i.i.i.i.i.i.i"

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h484d3e3701f68078E.exit.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.cl, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h484d3e3701f68078E.exit.i.i.i.lr.ph.i.i.i.i.i.i.i"
  %i.ht = phi ptr [ %i.ho, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h484d3e3701f68078E.exit.i.i.i.lr.ph.i.i.i.i.i.i.i" ], [ %i.iz, %bb.cl ] ; 4 uses
  %.sroa.0193.0472.i.i.i.i.i.i.i = phi i64 [ -9223372036854775808, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h484d3e3701f68078E.exit.i.i.i.lr.ph.i.i.i.i.i.i.i" ], [ %.sroa.0193.1.i.i.i.i.i.i.i, %bb.cl ] ; 19 uses
  %.sroa.14.0471.i.i.i.i.i.i.i = phi ptr [ undef, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h484d3e3701f68078E.exit.i.i.i.lr.ph.i.i.i.i.i.i.i" ], [ %.sroa.14.1.i.i.i.i.i.i.i, %bb.cl ] ; 16 uses
  %.sroa.17.0470.i.i.i.i.i.i.i = phi i64 [ undef, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h484d3e3701f68078E.exit.i.i.i.lr.ph.i.i.i.i.i.i.i" ], [ %.sroa.17.1.i.i.i.i.i.i.i, %bb.cl ] ; 4 uses
  %.sroa.0208.0469.i.i.i.i.i.i.i = phi i64 [ -9223372036854775808, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h484d3e3701f68078E.exit.i.i.i.lr.ph.i.i.i.i.i.i.i" ], [ %.sroa.0208.1.i.i.i.i.i.i.i, %bb.cl ] ; 19 uses
  %.sroa.14215.0468.i.i.i.i.i.i.i = phi ptr [ undef, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h484d3e3701f68078E.exit.i.i.i.lr.ph.i.i.i.i.i.i.i" ], [ %.sroa.14215.1.i.i.i.i.i.i.i, %bb.cl ] ; 16 uses
  %.sroa.17220.0467.i.i.i.i.i.i.i = phi i64 [ undef, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h484d3e3701f68078E.exit.i.i.i.lr.ph.i.i.i.i.i.i.i" ], [ %.sroa.17220.1.i.i.i.i.i.i.i, %bb.cl ] ; 4 uses
  %.sroa.0225.0466.i.i.i.i.i.i.i = phi i64 [ -9223372036854775808, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h484d3e3701f68078E.exit.i.i.i.lr.ph.i.i.i.i.i.i.i" ], [ %.sroa.0225.1.i.i.i.i.i.i.i, %bb.cl ] ; 19 uses
  %.sroa.12.0465.i.i.i.i.i.i.i = phi ptr [ undef, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h484d3e3701f68078E.exit.i.i.i.lr.ph.i.i.i.i.i.i.i" ], [ %.sroa.12.1.i.i.i.i.i.i.i, %bb.cl ] ; 15 uses
  %.sroa.16.0464.i.i.i.i.i.i.i = phi i64 [ undef, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h484d3e3701f68078E.exit.i.i.i.lr.ph.i.i.i.i.i.i.i" ], [ %.sroa.16.1.i.i.i.i.i.i.i, %bb.cl ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !89212)
  call void @llvm.experimental.noalias.scope.decl(metadata !89213)
  call void @llvm.experimental.noalias.scope.decl(metadata !89214)
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 72
  store ptr %i.hu, ptr %i.hm, align 8, !alias.scope !89215, !noalias !89211
  %.sroa.017.0.copyload.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ht, align 8, !noalias !89216 ; 3 uses
  %.not.i.i.i.i.i.i.i15.i.i.i = icmp eq i64 %.sroa.017.0.copyload.i.i.i.i.i.i.i.i.i.i, -9223372036854775808
  br i1 %.not.i.i.i.i.i.i.i15.i.i.i, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h484d3e3701f68078E.exit.i.i.i._crit_edge.i.i.i.i.i.i.i", label %bb.bv

bb.bv:                                            ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h484d3e3701f68078E.exit.i.i.i.i.i.i.i.i.i.i"
  %.sroa.718.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ht, i64 8
  %i.hv = getelementptr inbounds nuw i8, ptr %i.ht, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i.i.i.i.i.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.718.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, i64 32, i1 false), !noalias !89217
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !89218
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.j, ptr noundef nonnull align 8 dereferenceable(20) %i.hv, i64 20, i1 false), !noalias !89217
  %i.hw = load i64, ptr %i.t, align 8, !range !66, !alias.scope !89219, !noalias !89211, !noundef !43
  %i.hx = icmp eq i64 %i.hw, -9223372036854775808
  br i1 %i.hx, label %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$nickel_lang_core..term..record..Field$GT$$GT$17h9e76bce5a74e78d2E.exit.i.i.i.i.i.i.i.i.i.i", label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..term..record..Field$GT$17h62fe4214e2c2c7b8E"(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.t)
          to label %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$nickel_lang_core..term..record..Field$GT$$GT$17h9e76bce5a74e78d2E.exit.i.i.i.i.i.i.i.i.i.i" unwind label %bb.bx, !noalias !89220

bb.bx:                                            ; preds = %bb.bw
  %i.hy = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.017.0.copyload.i.i.i.i.i.i.i.i.i.i, ptr %i.t, align 8, !alias.scope !89221, !noalias !89211
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.0..sroa_idx4.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.i.i.i.i.i.i.i.i.i.i, i64 32, i1 false), !noalias !89220
  br label %.body.i.i.i.i.i.i.i

"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$nickel_lang_core..term..record..Field$GT$$GT$17h9e76bce5a74e78d2E.exit.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.bw, %bb.bv
  store i64 %.sroa.017.0.copyload.i.i.i.i.i.i.i.i.i.i, ptr %i.t, align 8, !alias.scope !89221, !noalias !89211
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.0..sroa_idx4.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.i.i.i.i.i.i.i.i.i.i, i64 32, i1 false), !noalias !89220
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i.i.i.i.i.i.i.i.i)
  %i.hz = invoke { ptr, i64 } @_ZN18nickel_lang_parser10identifier8LocIdent5label17h23360175f9f53dcbE(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(20) %i.j)
          to label %.noexc.i.i.i.i.i.i.i unwind label %.loopexit.i.i.i.i.i.i.i, !noalias !89222 ; 2 uses

.noexc.i.i.i.i.i.i.i:                             ; preds = %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$nickel_lang_core..term..record..Field$GT$$GT$17h9e76bce5a74e78d2E.exit.i.i.i.i.i.i.i.i.i.i"
  %i.ia = extractvalue { ptr, i64 } %i.hz, 0      ; 4 uses
  %i.ib = extractvalue { ptr, i64 } %i.hz, 1
  switch i64 %i.ib, label %bb.ce [
    i64 3, label %bb.by
    i64 4, label %bb.bz
  ]

bb.by:                                            ; preds = %.noexc.i.i.i.i.i.i.i
  %i.ic = load i16, ptr %i.ia, align 1
  %i.id = xor i16 %i.ic, 29295
  %i.ie = getelementptr i8, ptr %i.ia, i64 2
  %i.if = load i8, ptr %i.ie, align 1
  %i.ig = zext i8 %i.if to i16
  %i.ih = xor i16 %i.ig, 103
  %i.ii = or i16 %i.id, %i.ih
  %i.ij = icmp ne i16 %i.ii, 0
  %i.ik = zext i1 %i.ij to i32
  %i.il = icmp eq i32 %i.ik, 0
  br i1 %i.il, label %bb.cb, label %bb.ce

bb.bz:                                            ; preds = %.noexc.i.i.i.i.i.i.i
  %i.im = load i32, ptr %i.ia, align 1
  %i.in = icmp ne i32 %i.im, 1701667182
  %i.io = zext i1 %i.in to i32
  %i.ip = icmp eq i32 %i.io, 0
  br i1 %i.ip, label %bb.cc, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.iq = load i32, ptr %i.ia, align 1
  %i.ir = icmp ne i32 %i.iq, 1752457584
  %i.is = zext i1 %i.ir to i32
  %i.it = icmp eq i32 %i.is, 0
  br i1 %i.it, label %bb.cd, label %bb.ce

.body.i.i.i.i.i.i.i:                              ; preds = %bb.df, %bb.de, %.loopexit.split-lp.i.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i.i, %bb.bx
  %.sroa.12.0444.i.i.i.i.i.i.i = phi ptr [ %.sroa.12.0465.i.i.i.i.i.i.i, %bb.bx ], [ %.sroa.12.0.lcssa573.i.i.i.i.i.i.i, %bb.df ], [ %.sroa.12.0.lcssa573.i.i.i.i.i.i.i, %bb.de ], [ %.sroa.12.0465.i.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i.i ], [ %.sroa.12.0446.i.i.i.i.i.i.i, %.loopexit.split-lp.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.0225.0430.i.i.i.i.i.i.i = phi i64 [ %.sroa.0225.0466.i.i.i.i.i.i.i, %bb.bx ], [ %.sroa.0225.0.lcssa576.i.i.i.i.i.i.i, %bb.df ], [ %.sroa.0225.0.lcssa576.i.i.i.i.i.i.i, %bb.de ], [ %.sroa.0225.0466.lcssa511.i.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i.i ], [ %.sroa.0225.0432.i.i.i.i.i.i.i, %.loopexit.split-lp.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.14215.0409.i.i.i.i.i.i.i = phi ptr [ %.sroa.14215.0468.i.i.i.i.i.i.i, %bb.bx ], [ %.sroa.14215.0.lcssa579.i.i.i.i.i.i.i, %bb.df ], [ %.sroa.14215.0.lcssa579.i.i.i.i.i.i.i, %bb.de ], [ %.sroa.14215.0468.i.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i.i ], [ %.sroa.14215.0411.i.i.i.i.i.i.i, %.loopexit.split-lp.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.0208.0395.i.i.i.i.i.i.i = phi i64 [ %.sroa.0208.0469.i.i.i.i.i.i.i, %bb.bx ], [ -9223372036854775808, %bb.df ], [ -9223372036854775808, %bb.de ], [ %.sroa.0208.0469.lcssa529.i.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i.i ], [ %.sroa.0208.0397.i.i.i.i.i.i.i, %.loopexit.split-lp.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.14.0374.i.i.i.i.i.i.i = phi ptr [ %.sroa.14.0471.i.i.i.i.i.i.i, %bb.bx ], [ %.sroa.14.0.lcssa583.i.i.i.i.i.i.i, %bb.df ], [ %.sroa.14.0.lcssa583.i.i.i.i.i.i.i, %bb.de ], [ %.sroa.14.0471.i.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i.i ], [ %.sroa.14.0376.i.i.i.i.i.i.i, %.loopexit.split-lp.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.0193.0360.i.i.i.i.i.i.i = phi i64 [ %.sroa.0193.0472.i.i.i.i.i.i.i, %bb.bx ], [ %.sroa.0193.0.lcssa585.i.i.i.i.i.i.i, %bb.df ], [ %.sroa.0193.0.lcssa585.i.i.i.i.i.i.i, %bb.de ], [ %.sroa.0193.0472.lcssa547.i.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i.i ], [ %.sroa.0193.0362.i.i.i.i.i.i.i, %.loopexit.split-lp.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.062.1.i.i.i.i.i.i.i = phi i8 [ 1, %bb.bx ], [ %.sroa.062.4.i.i.i.i.i.i.i, %bb.df ], [ %.sroa.062.4.i.i.i.i.i.i.i, %bb.de ], [ 1, %.loopexit.i.i.i.i.i.i.i ], [ 1, %.loopexit.split-lp.i.i.i.i.i.i.i ]
  %.pn.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.hy, %bb.bx ], [ %i.jp, %bb.df ], [ %i.jp, %bb.de ], [ %lpad.loopexit.i.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i.i.i.i.i, %.loopexit.split-lp.i.i.i.i.i.i.i ]
  switch i64 %.sroa.0225.0430.i.i.i.i.i.i.i, label %bb.dm [
    i64 -9223372036854775808, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h418846e5985b1709E.exit186.i.i.i.i.i.i.i"
    i64 0, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h418846e5985b1709E.exit186.i.i.i.i.i.i.i"
  ]

.loopexit.i.i.i.i.i.i.i:                          ; preds = %bb.ct, %bb.cn, %bb.cg, %bb.ce, %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$nickel_lang_core..term..record..Field$GT$$GT$17h9e76bce5a74e78d2E.exit.i.i.i.i.i.i.i.i.i.i"
  %.sroa.0193.0472.lcssa547.i.i.i.i.i.i.i = phi i64 [ %.sroa.0193.0472.i.i.i.i.i.i.i, %bb.ce ], [ %.sroa.0193.0472.i.i.i.i.i.i.i, %bb.ct ], [ %.sroa.0193.0472.i.i.i.i.i.i.i, %bb.cn ], [ -9223372036854775808, %bb.cg ], [ %.sroa.0193.0472.i.i.i.i.i.i.i, %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$nickel_lang_core..term..record..Field$GT$$GT$17h9e76bce5a74e78d2E.exit.i.i.i.i.i.i.i.i.i.i" ]
  %.sroa.0208.0469.lcssa529.i.i.i.i.i.i.i = phi i64 [ %.sroa.0208.0469.i.i.i.i.i.i.i, %bb.ce ], [ %.sroa.0208.0469.i.i.i.i.i.i.i, %bb.ct ], [ -9223372036854775808, %bb.cn ], [ %.sroa.0208.0469.i.i.i.i.i.i.i, %bb.cg ], [ %.sroa.0208.0469.i.i.i.i.i.i.i, %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$nickel_lang_core..term..record..Field$GT$$GT$17h9e76bce5a74e78d2E.exit.i.i.i.i.i.i.i.i.i.i" ]
  %.sroa.0225.0466.lcssa511.i.i.i.i.i.i.i = phi i64 [ %.sroa.0225.0466.i.i.i.i.i.i.i, %bb.ce ], [ -9223372036854775808, %bb.ct ], [ %.sroa.0225.0466.i.i.i.i.i.i.i, %bb.cn ], [ %.sroa.0225.0466.i.i.i.i.i.i.i, %bb.cg ], [ %.sroa.0225.0466.i.i.i.i.i.i.i, %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$nickel_lang_core..term..record..Field$GT$$GT$17h9e76bce5a74e78d2E.exit.i.i.i.i.i.i.i.i.i.i" ]
  %lpad.loopexit.i.i.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i.i.i

end_hunk_2
