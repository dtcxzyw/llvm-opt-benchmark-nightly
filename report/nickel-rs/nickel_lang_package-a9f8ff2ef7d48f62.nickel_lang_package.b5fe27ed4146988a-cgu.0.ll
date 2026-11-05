Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nickel-rs/original/nickel_lang_package-a9f8ff2ef7d48f62.nickel_lang_package.b5fe27ed4146988a-cgu.0?download=true
inline.NumInlined: 25765
inline.NumDeleted: 11076
loop-unroll.NumCompletelyUnrolled: 62
loop-unroll.NumRuntimeUnrolled: 162
loop-unroll.NumUnrolled: 230
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@_ZN12gix_protocol5fetch8function5fetch17hc97137b04895cfc2E:bb.a
  switch i64 %i.qg, label %bb.fk [
    i64 -9223372036854775791, label %bb.ew
    i64 -9223372036854775792, label %bb.fj
    i64 -9223372036854775793, label %bb.fl
  ]

bb.ew:                                            ; preds = %"_ZN111_$LT$alloc..boxed..Box$LT$T$GT$$u20$as$u20$gix_transport..client..blocking_io..bufread_ext..ExtendedBufRead$GT$14peek_data_line17ha25caca0dbd2542eE.exit.i"
  %i.qh = load ptr, ptr %i.pz, align 8, !invariant.load !43, !noalias !12550, !nonnull !43
  %i.qi = invoke { i64, ptr } %i.qh(ptr noalias noundef nonnull align 1 %.val373, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aa)
          to label %"_ZN111_$LT$alloc..boxed..Box$LT$T$GT$$u20$as$u20$gix_transport..client..blocking_io..bufread_ext..ReadlineBufRead$GT$12readline_str17h1dc40ba0ffa612f8E.exit.i" unwind label %.thread.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !12547, !inline_history !12551 ; 2 uses

.thread.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.fl, %bb.fc, %"_ZN111_$LT$alloc..boxed..Box$LT$T$GT$$u20$as$u20$gix_transport..client..blocking_io..bufread_ext..ExtendedBufRead$GT$5reset17h9ca03e12aa3813daE.exit197.i", %bb.ey, %bb.ew, %bb.eu, %bb.gf, %bb.gg, %bb.fa, %bb.ex
  %lpad.loopexit.split-lp1879 = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17he2fb67a14a8ffcabE.exit.i"

"_ZN111_$LT$alloc..boxed..Box$LT$T$GT$$u20$as$u20$gix_transport..client..blocking_io..bufread_ext..ReadlineBufRead$GT$12readline_str17h1dc40ba0ffa612f8E.exit.i": ; preds = %bb.ew
  %i.qj = extractvalue { i64, ptr } %i.qi, 0
  %i.qk = trunc nuw i64 %i.qj to i1
  br i1 %i.qk, label %bb.ex, label %bb.ey

bb.ex:                                            ; preds = %"_ZN111_$LT$alloc..boxed..Box$LT$T$GT$$u20$as$u20$gix_transport..client..blocking_io..bufread_ext..ReadlineBufRead$GT$12readline_str17h1dc40ba0ffa612f8E.exit.i"
  %i.ql = extractvalue { i64, ptr } %i.qi, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !12547
  invoke void @"_ZN105_$LT$gix_protocol..fetch..response..Error$u20$as$u20$core..convert..From$LT$std..io..error..Error$GT$$GT$4from17h427f23a7d0c21c61E"(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.i, ptr noundef nonnull %i.ql)
          to label %bb.fi unwind label %.thread.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !12547

bb.ey:                                            ; preds = %"_ZN111_$LT$alloc..boxed..Box$LT$T$GT$$u20$as$u20$gix_transport..client..blocking_io..bufread_ext..ReadlineBufRead$GT$12readline_str17h1dc40ba0ffa612f8E.exit.i"
  %i.qm = load ptr, ptr %i.qa, align 8, !invariant.load !43, !noalias !12547, !nonnull !43
  invoke void %i.qm(ptr noalias noundef nonnull align 1 %.val373, i8 noundef 1)
          to label %"_ZN111_$LT$alloc..boxed..Box$LT$T$GT$$u20$as$u20$gix_transport..client..blocking_io..bufread_ext..ExtendedBufRead$GT$5reset17h9ca03e12aa3813daE.exit197.i" unwind label %.thread.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !12547, !inline_history !12280

"_ZN111_$LT$alloc..boxed..Box$LT$T$GT$$u20$as$u20$gix_transport..client..blocking_io..bufread_ext..ExtendedBufRead$GT$5reset17h9ca03e12aa3813daE.exit197.i": ; preds = %bb.ey
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !12547
  invoke void %i.py(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.t, ptr noalias noundef nonnull align 1 %.val373)
          to label %"_ZN111_$LT$alloc..boxed..Box$LT$T$GT$$u20$as$u20$gix_transport..client..blocking_io..bufread_ext..ExtendedBufRead$GT$14peek_data_line17ha25caca0dbd2542eE.exit198.i" unwind label %.thread.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !12547, !inline_history !12281

"_ZN111_$LT$alloc..boxed..Box$LT$T$GT$$u20$as$u20$gix_transport..client..blocking_io..bufread_ext..ExtendedBufRead$GT$14peek_data_line17ha25caca0dbd2542eE.exit198.i": ; preds = %"_ZN111_$LT$alloc..boxed..Box$LT$T$GT$$u20$as$u20$gix_transport..client..blocking_io..bufread_ext..ExtendedBufRead$GT$5reset17h9ca03e12aa3813daE.exit197.i"
  %i.qn = load i64, ptr %i.t, align 8, !range !12549, !noalias !12547, !noundef !43 ; 2 uses
  switch i64 %i.qn, label %bb.fb [
    i64 -9223372036854775791, label %bb.ez
    i64 -9223372036854775792, label %bb.fa
    i64 -9223372036854775793, label %bb.fc
  ]

bb.ez:                                            ; preds = %"_ZN111_$LT$alloc..boxed..Box$LT$T$GT$$u20$as$u20$gix_transport..client..blocking_io..bufread_ext..ExtendedBufRead$GT$14peek_data_line17ha25caca0dbd2542eE.exit198.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !12547
  br label %bb.gi

bb.fa:                                            ; preds = %"_ZN111_$LT$alloc..boxed..Box$LT$T$GT$$u20$as$u20$gix_transport..client..blocking_io..bufread_ext..ExtendedBufRead$GT$14peek_data_line17ha25caca0dbd2542eE.exit198.i"
  %i.qo = load ptr, ptr %i.gw, align 8, !noalias !12547, !nonnull !43, !noundef !43
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !12547
  invoke void @"_ZN105_$LT$gix_protocol..fetch..response..Error$u20$as$u20$core..convert..From$LT$std..io..error..Error$GT$$GT$4from17h427f23a7d0c21c61E"(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.s, ptr noundef nonnull %i.qo)
          to label %bb.fg unwind label %.thread.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !12547

bb.fb:                                            ; preds = %"_ZN111_$LT$alloc..boxed..Box$LT$T$GT$$u20$as$u20$gix_transport..client..blocking_io..bufread_ext..ExtendedBufRead$GT$14peek_data_line17ha25caca0dbd2542eE.exit198.i"
  %.sroa.31.8.copyload85 = load ptr, ptr %i.gw, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.39, ptr noundef nonnull align 8 dereferenceable(24) %i.gx, i64 24, i1 false)
  br label %bb.ff

bb.fc:                                            ; preds = %"_ZN111_$LT$alloc..boxed..Box$LT$T$GT$$u20$as$u20$gix_transport..client..blocking_io..bufread_ext..ExtendedBufRead$GT$14peek_data_line17ha25caca0dbd2542eE.exit198.i"
  %i.qp = load ptr, ptr %i.gw, align 8, !noalias !12547, !nonnull !43, !align !48, !noundef !43
  %i.qq = load i64, ptr %i.gx, align 8, !noalias !12547, !noundef !43
  invoke void @_ZN5alloc6string6String15from_utf8_lossy17h21794fcc38759ff3E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.x, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.qp, i64 noundef %i.qq)
          to label %bb.fd unwind label %.thread.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !12547

bb.fd:                                            ; preds = %bb.fc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !12547
  br label %bb.fe

bb.fe:                                            ; preds = %bb.fl, %bb.fd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !12547
  %i.qr = load i64, ptr %i.x, align 8, !range !66, !noalias !12547, !noundef !43 ; 10 uses
  %i.qs = load ptr, ptr %i.gy, align 8, !noalias !12547 ; 7 uses
  %i.qt = load i64, ptr %i.gz, align 8, !noalias !12547
  %i.qu = invoke noundef zeroext i1 @"_ZN12gix_protocol5fetch8response54_$LT$impl$u20$gix_protocol..fetch..types..Response$GT$38parse_v1_ack_or_shallow_or_assume_pack17hc5c26a489872e3d2E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.z, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.y, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.qs, i64 noundef %i.qt)
          to label %bb.fn unwind label %.loopexit.split-lp67.i.loopexit.split-lp.loopexit.split-lp, !noalias !12547

bb.ff:                                            ; preds = %bb.fg, %bb.fb
  %.sroa.31.0 = phi ptr [ %.sroa.31.8.copyload85, %bb.fb ], [ %.sroa.31.8.copyload83, %bb.fg ]
  %.sroa.1766.0 = phi i64 [ %i.qn, %bb.fb ], [ %.sroa.1766.8.copyload71, %bb.fg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !12547
  br label %bb.fh

bb.fg:                                            ; preds = %bb.fa
  %.sroa.1766.8.copyload71 = load i64, ptr %i.s, align 8
  %.sroa.31.8..sroa_idx82 = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.sroa.31.8.copyload83 = load ptr, ptr %.sroa.31.8..sroa_idx82, align 8
  %.sroa.39.8..sroa_idx96 = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.39, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.39.8..sroa_idx96, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !12547
  br label %bb.ff

bb.fh:                                            ; preds = %bb.gj, %bb.fk, %bb.fi, %bb.ff
  %.sroa.31.1 = phi ptr [ %.sroa.31.8.copyload89, %bb.fk ], [ %.sroa.31.8.copyload87, %bb.fi ], [ %.sroa.31.0, %bb.ff ], [ %.sroa.31.8.copyload81, %bb.gj ]
  %.sroa.1766.1 = phi i64 [ %i.qg, %bb.fk ], [ %.sroa.1766.8.copyload73, %bb.fi ], [ %.sroa.1766.0, %bb.ff ], [ %.sroa.1766.8.copyload70, %bb.gj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !12547
  br label %"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17he2fb67a14a8ffcabE.exit204.i"

bb.fi:                                            ; preds = %bb.ex
  %.sroa.1766.8.copyload73 = load i64, ptr %i.i, align 8
  %.sroa.31.8..sroa_idx86 = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.31.8.copyload87 = load ptr, ptr %.sroa.31.8..sroa_idx86, align 8
  %.sroa.39.8..sroa_idx98 = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.39, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.39.8..sroa_idx98, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !12547
  br label %bb.fh

bb.fj:                                            ; preds = %"_ZN111_$LT$alloc..boxed..Box$LT$T$GT$$u20$as$u20$gix_transport..client..blocking_io..bufread_ext..ExtendedBufRead$GT$14peek_data_line17ha25caca0dbd2542eE.exit.i"
  %.val.i405 = load ptr, ptr %i.gu, align 8, !noalias !12547, !nonnull !43, !noundef !43 ; 3 uses
  %i.qv = call fastcc noundef i8 @_ZN3std2io5error5Error4kind17hcef9c5606d2f7459E(ptr nonnull %.val.i405), !noalias !12547
  %i.qw = icmp eq i8 %i.qv, 37
  br i1 %i.qw, label %bb.gf, label %bb.gg

bb.fk:                                            ; preds = %"_ZN111_$LT$alloc..boxed..Box$LT$T$GT$$u20$as$u20$gix_transport..client..blocking_io..bufread_ext..ExtendedBufRead$GT$14peek_data_line17ha25caca0dbd2542eE.exit.i"
  %.sroa.31.8.copyload89 = load ptr, ptr %i.gu, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.39, ptr noundef nonnull align 8 dereferenceable(24) %i.gv, i64 24, i1 false)
  br label %bb.fh

bb.fl:                                            ; preds = %"_ZN111_$LT$alloc..boxed..Box$LT$T$GT$$u20$as$u20$gix_transport..client..blocking_io..bufread_ext..ExtendedBufRead$GT$14peek_data_line17ha25caca0dbd2542eE.exit.i"
  %i.qx = load ptr, ptr %i.gu, align 8, !noalias !12547, !nonnull !43, !align !48, !noundef !43
  %i.qy = load i64, ptr %i.gv, align 8, !noalias !12547, !noundef !43
  invoke void @_ZN5alloc6string6String15from_utf8_lossy17h21794fcc38759ff3E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.x, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.qx, i64 noundef %i.qy)
          to label %bb.fe unwind label %.thread.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !12547

.loopexit.split-lp67.i.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.fe, %bb.fo, %bb.ft, %bb.fr
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %switch.i403 = icmp sgt i64 %i.qr, 0
  br i1 %switch.i403, label %bb.fm, label %"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17he2fb67a14a8ffcabE.exit.i"

bb.fm:                                            ; preds = %.loopexit.split-lp67.i.loopexit.split-lp.loopexit.split-lp
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.qs) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.qs, i64 noundef %i.qr, i64 noundef range(i64 1, -9223372036854775807) 1) #67, !noalias !12552
  br label %"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17he2fb67a14a8ffcabE.exit.i"

bb.fn:                                            ; preds = %bb.fe
  br i1 %i.qu, label %bb.fp, label %bb.fo

bb.fo:                                            ; preds = %bb.fn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !12547
  %i.qz = load ptr, ptr %i.pz, align 8, !invariant.load !43, !noalias !12553, !nonnull !43
  %i.ra = invoke { i64, ptr } %i.qz(ptr noalias noundef nonnull align 1 %.val373, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aa)
          to label %"_ZN111_$LT$alloc..boxed..Box$LT$T$GT$$u20$as$u20$gix_transport..client..blocking_io..bufread_ext..ReadlineBufRead$GT$12readline_str17h1dc40ba0ffa612f8E.exit199.i" unwind label %.loopexit.split-lp67.i.loopexit.split-lp.loopexit.split-lp, !noalias !12547, !inline_history !12551 ; 2 uses

bb.fp:                                            ; preds = %bb.fn
  %switch43.i = icmp sgt i64 %i.qr, 0
  br i1 %switch43.i, label %bb.fq, label %"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17he2fb67a14a8ffcabE.exit200.i"

bb.fq:                                            ; preds = %bb.fp
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.qs, i64 noundef %i.qr, i64 noundef range(i64 1, -9223372036854775807) 1) #67, !noalias !12554
  br label %"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17he2fb67a14a8ffcabE.exit200.i"

"_ZN111_$LT$alloc..boxed..Box$LT$T$GT$$u20$as$u20$gix_transport..client..blocking_io..bufread_ext..ReadlineBufRead$GT$12readline_str17h1dc40ba0ffa612f8E.exit199.i": ; preds = %bb.fo
  %i.rb = extractvalue { i64, ptr } %i.ra, 0
  %i.rc = extractvalue { i64, ptr } %i.ra, 1      ; 3 uses
  %i.rd = trunc nuw i64 %i.rb to i1
  br i1 %i.rd, label %bb.fr, label %bb.fs

bb.fr:                                            ; preds = %"_ZN111_$LT$alloc..boxed..Box$LT$T$GT$$u20$as$u20$gix_transport..client..blocking_io..bufread_ext..ReadlineBufRead$GT$12readline_str17h1dc40ba0ffa612f8E.exit199.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !12547
  invoke void @"_ZN105_$LT$gix_protocol..fetch..response..Error$u20$as$u20$core..convert..From$LT$std..io..error..Error$GT$$GT$4from17h427f23a7d0c21c61E"(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.h, ptr noundef nonnull %i.rc)
          to label %bb.gc unwind label %.loopexit.split-lp67.i.loopexit.split-lp.loopexit.split-lp, !noalias !12547

bb.fs:                                            ; preds = %"_ZN111_$LT$alloc..boxed..Box$LT$T$GT$$u20$as$u20$gix_transport..client..blocking_io..bufread_ext..ReadlineBufRead$GT$12readline_str17h1dc40ba0ffa612f8E.exit199.i"
  %i.re = ptrtoint ptr %i.rc to i64
  store i64 %i.re, ptr %i.r, align 8, !noalias !12547
  %i.rf = icmp eq ptr %i.rc, null
  br i1 %i.rf, label %bb.ft, label %bb.fu, !prof !46

bb.ft:                                            ; preds = %bb.fs
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !12547
  store ptr @211, ptr %i.q, align 8, !noalias !12547
  %.sroa.413.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 1, ptr %.sroa.413.0..sroa_idx.i, align 8, !noalias !12547
  %.sroa.5.0..sroa_idx.i404 = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.5.0..sroa_idx.i404, align 8, !noalias !12547
  %.sroa.614.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.614.0..sroa_idx.i, i8 0, i64 16, i1 false), !noalias !12547
  invoke void @_ZN4core9panicking13assert_failed17he513e705e2b74251E(i8 noundef 1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.r, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @209, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.q, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @212) #73
          to label %bb.fv unwind label %.loopexit.split-lp67.i.loopexit.split-lp.loopexit.split-lp, !noalias !12547

bb.fu:                                            ; preds = %bb.fs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !12547
  %i.rg = load i64, ptr %i.gr, align 16, !noalias !12547, !noundef !43 ; 2 uses
  %.not138.i = icmp eq i64 %i.rg, 0
  %i.rh = load ptr, ptr %i.gq, align 8, !noalias !12547, !nonnull !43
  %i.ri = getelementptr [21 x i8], ptr %i.rh, i64 %i.rg
  %i.rj = getelementptr i8, ptr %i.ri, i64 -21    ; 2 uses
  %.not13952.i = icmp eq ptr %i.rj, null
  %.not139.i = select i1 %.not138.i, i1 true, i1 %.not13952.i
  br i1 %.not139.i, label %.thread.i, label %bb.fw

bb.fv:                                            ; preds = %bb.ft
  unreachable

bb.fw:                                            ; preds = %bb.fu
  %i.rk = load i8, ptr %i.rj, align 1, !range !78, !noalias !12547, !noundef !43 ; 2 uses
  %i.rl = icmp eq i8 %i.rk, 1
  %i.rm = or i1 %i.qd, %i.rl                      ; 4 uses
  %6 = and i1 %i.rm, %i.ic
  %i.rn = icmp ne i8 %i.rk, 2
  %or.cond419.not = or i1 %i.rn, %6
  br i1 %or.cond419.not, label %.thread.i, label %bb.fx

.thread.i:                                        ; preds = %bb.fw, %bb.fu
  %.sroa.015.0277.i.a = phi i1 [ %i.rm, %bb.fw ], [ %i.qd, %bb.fu ] ; 2 uses
  %switch45.i = icmp sgt i64 %i.qr, 0
  br i1 %switch45.i, label %.backedge71.sink.split.i, label %.backedge71.i

bb.fx:                                            ; preds = %bb.fw
  %switch47.i = icmp sgt i64 %i.qr, 0             ; 2 uses
  br i1 %i.ic, label %bb.fy, label %bb.fz

bb.fy:                                            ; preds = %bb.fx
  br i1 %switch47.i, label %.backedge71.sink.split.i, label %.backedge71.i

bb.fz:                                            ; preds = %bb.fx
  br i1 %switch47.i, label %bb.ga, label %"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17he2fb67a14a8ffcabE.exit200.i"

bb.ga:                                            ; preds = %bb.fz
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.qs, i64 noundef %i.qr, i64 noundef range(i64 1, -9223372036854775807) 1) #67, !noalias !12555
  br label %"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17he2fb67a14a8ffcabE.exit200.i"

.backedge71.sink.split.i:                         ; preds = %bb.fy, %.thread.i
  %.sroa.015.0276.ph.i = phi i1 [ %.sroa.015.0277.i.a, %.thread.i ], [ %i.rm, %bb.fy ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.qs, i64 noundef %i.qr, i64 noundef range(i64 1, -9223372036854775807) 1) #67, !noalias !12547
  br label %.backedge71.i

.backedge71.i:                                    ; preds = %.backedge71.sink.split.i, %bb.fy, %.thread.i
  %.sroa.015.0276.i = phi i1 [ %i.rm, %bb.fy ], [ %.sroa.015.0277.i.a, %.thread.i ], [ %.sroa.015.0276.ph.i, %.backedge71.sink.split.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !12547
  br label %bb.eu

"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17he2fb67a14a8ffcabE.exit200.i": ; preds = %bb.gi, %bb.ga, %bb.fz, %bb.fq, %bb.fp
  %.sroa.0.0.i = phi i8 [ 1, %bb.fp ], [ 0, %bb.gi ], [ 1, %bb.fq ], [ 0, %bb.fz ], [ 0, %bb.ga ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !12547
  %i.ro = load <2 x i64>, ptr %i.z, align 16, !noalias !12547
  %.sroa.021.sroa.0.i.sroa.5.0.copyload = load ptr, ptr %i.gr, align 16, !noalias !12547
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.39, ptr noundef nonnull align 8 dereferenceable(24) %i.y, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !12547
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !12547
  call void @llvm.experimental.noalias.scope.decl(metadata !12556)
  call void @llvm.experimental.noalias.scope.decl(metadata !12557)
  %.val.i.i.i = load i64, ptr %i.aa, align 8, !alias.scope !12558, !noalias !12547 ; 2 uses
  %i.rp = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.rp, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h418846e5985b1709E.exit.i", label %bb.gb

bb.gb:                                            ; preds = %"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17he2fb67a14a8ffcabE.exit200.i"
  %.val1.i.i.i = load ptr, ptr %.sroa.477.0..sroa_idx.i, align 8, !alias.scope !12558, !noalias !12547, !nonnull !43, !noundef !43
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #67, !noalias !12559
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h418846e5985b1709E.exit.i"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h418846e5985b1709E.exit.i": ; preds = %bb.gb, %"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17he2fb67a14a8ffcabE.exit200.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !12547
  br label %"_ZN12gix_protocol5fetch8response11blocking_io54_$LT$impl$u20$gix_protocol..fetch..types..Response$GT$16from_line_reader17h9273f6087b50a316E.exit"

bb.gc:                                            ; preds = %bb.fr
  %.sroa.1766.8.copyload69 = load i64, ptr %i.h, align 8 ; 2 uses
  %.sroa.31.8..sroa_idx78 = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.31.8.copyload79 = load ptr, ptr %.sroa.31.8..sroa_idx78, align 8 ; 2 uses
  %.sroa.39.8..sroa_idx94 = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.39, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.39.8..sroa_idx94, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !12547
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !12547
  %switch51.i = icmp sgt i64 %i.qr, 0
  br i1 %switch51.i, label %bb.gd, label %"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17he2fb67a14a8ffcabE.exit204.i"

bb.gd:                                            ; preds = %bb.gc
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.qs, i64 noundef %i.qr, i64 noundef range(i64 1, -9223372036854775807) 1) #67, !noalias !12560
  br label %"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17he2fb67a14a8ffcabE.exit204.i"

"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17he2fb67a14a8ffcabE.exit204.i": ; preds = %bb.gd, %bb.gc, %bb.fh
  %.sroa.31.2 = phi ptr [ %.sroa.31.1, %bb.fh ], [ %.sroa.31.8.copyload79, %bb.gd ], [ %.sroa.31.8.copyload79, %bb.gc ]
  %.sroa.1766.2 = phi i64 [ %.sroa.1766.1, %bb.fh ], [ %.sroa.1766.8.copyload69, %bb.gd ], [ %.sroa.1766.8.copyload69, %bb.gc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !12547
  %.val167.i = load i64, ptr %i.y, align 8, !noalias !12547 ; 2 uses
  %i.rq = icmp eq i64 %.val167.i, 0
  br i1 %i.rq, label %"_ZN4core3ptr63drop_in_place$LT$alloc..vec..Vec$LT$gix_shallow..Update$GT$$GT$17ha502a978bdff6378E.exit205.i", label %bb.ge

bb.ge:                                            ; preds = %"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17he2fb67a14a8ffcabE.exit204.i"
  %.val168.i = load ptr, ptr %i.gs, align 8, !noalias !12547, !nonnull !43, !noundef !43
  %i.rr = mul nuw i64 %.val167.i, 21
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val168.i, i64 noundef %i.rr, i64 noundef range(i64 1, -9223372036854775807) 1) #67, !noalias !12547
  br label %"_ZN4core3ptr63drop_in_place$LT$alloc..vec..Vec$LT$gix_shallow..Update$GT$$GT$17ha502a978bdff6378E.exit205.i"

bb.gf:                                            ; preds = %bb.fj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !12547
  store ptr %.val.i405, ptr %i.v, align 8, !noalias !12547
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17hc4d6b9640ccaa233E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.v)
          to label %bb.gh unwind label %.thread.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !12547

bb.gg:                                            ; preds = %bb.fj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !12547
  invoke void @"_ZN105_$LT$gix_protocol..fetch..response..Error$u20$as$u20$core..convert..From$LT$std..io..error..Error$GT$$GT$4from17h427f23a7d0c21c61E"(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.u, ptr noundef nonnull %.val.i405)
          to label %bb.gj unwind label %.thread.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !12547

bb.gh:                                            ; preds = %bb.gf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !12547
  br label %bb.gi

bb.gi:                                            ; preds = %bb.gh, %bb.ez
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !12547
  br label %"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17he2fb67a14a8ffcabE.exit200.i"

bb.gj:                                            ; preds = %bb.gg
  %.sroa.1766.8.copyload70 = load i64, ptr %i.u, align 8
  %.sroa.31.8..sroa_idx80 = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.sroa.31.8.copyload81 = load ptr, ptr %.sroa.31.8..sroa_idx80, align 8
  %.sroa.39.8..sroa_idx95 = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.39, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.39.8..sroa_idx95, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !12547
  br label %bb.fh

"_ZN4core3ptr63drop_in_place$LT$alloc..vec..Vec$LT$gix_shallow..Update$GT$$GT$17ha502a978bdff6378E.exit.i": ; preds = %bb.ev, %"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17he2fb67a14a8ffcabE.exit.i"
  %.val179.i = load i64, ptr %i.z, align 16, !noalias !12547 ; 2 uses
  %i.rs = icmp eq i64 %.val179.i, 0
  br i1 %i.rs, label %"_ZN4core3ptr90drop_in_place$LT$alloc..vec..Vec$LT$gix_protocol..fetch..response..Acknowledgement$GT$$GT$17h3cd8cda1f383eefcE.exit.i", label %bb.gk

bb.gk:                                            ; preds = %"_ZN4core3ptr63drop_in_place$LT$alloc..vec..Vec$LT$gix_shallow..Update$GT$$GT$17ha502a978bdff6378E.exit.i"
  %.val180.i = load ptr, ptr %i.gq, align 8, !noalias !12547, !nonnull !43, !noundef !43
  %i.rt = mul nuw i64 %.val179.i, 21
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val180.i, i64 noundef %i.rt, i64 noundef range(i64 1, -9223372036854775807) 1) #67, !noalias !12547
  br label %"_ZN4core3ptr90drop_in_place$LT$alloc..vec..Vec$LT$gix_protocol..fetch..response..Acknowledgement$GT$$GT$17h3cd8cda1f383eefcE.exit.i"

"_ZN4core3ptr63drop_in_place$LT$alloc..vec..Vec$LT$gix_shallow..Update$GT$$GT$17ha502a978bdff6378E.exit205.i": ; preds = %bb.ge, %"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17he2fb67a14a8ffcabE.exit204.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !12547
  %.val177.i = load i64, ptr %i.z, align 16, !noalias !12547 ; 2 uses
  %i.ru = icmp eq i64 %.val177.i, 0
  br i1 %i.ru, label %"_ZN4core3ptr90drop_in_place$LT$alloc..vec..Vec$LT$gix_protocol..fetch..response..Acknowledgement$GT$$GT$17h3cd8cda1f383eefcE.exit206.i", label %bb.gl

bb.gl:                                            ; preds = %"_ZN4core3ptr63drop_in_place$LT$alloc..vec..Vec$LT$gix_shallow..Update$GT$$GT$17ha502a978bdff6378E.exit205.i"
  %.val178.i = load ptr, ptr %i.gq, align 8, !noalias !12547, !nonnull !43, !noundef !43
  %i.rv = mul nuw i64 %.val177.i, 21
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val178.i, i64 noundef %i.rv, i64 noundef range(i64 1, -9223372036854775807) 1) #67, !noalias !12547
  br label %"_ZN4core3ptr90drop_in_place$LT$alloc..vec..Vec$LT$gix_protocol..fetch..response..Acknowledgement$GT$$GT$17h3cd8cda1f383eefcE.exit206.i"

"_ZN4core3ptr90drop_in_place$LT$alloc..vec..Vec$LT$gix_protocol..fetch..response..Acknowledgement$GT$$GT$17h3cd8cda1f383eefcE.exit.i": ; preds = %bb.gk, %"_ZN4core3ptr63drop_in_place$LT$alloc..vec..Vec$LT$gix_shallow..Update$GT$$GT$17ha502a978bdff6378E.exit.i"
  call void @llvm.experimental.noalias.scope.decl(metadata !12561)
  call void @llvm.experimental.noalias.scope.decl(metadata !12562)
  %.val.i.i207.i = load i64, ptr %i.aa, align 8, !alias.scope !12563, !noalias !12547 ; 2 uses
  %i.rw = icmp eq i64 %.val.i.i207.i, 0
  br i1 %i.rw, label %.body410, label %bb.gm

bb.gm:                                            ; preds = %"_ZN4core3ptr90drop_in_place$LT$alloc..vec..Vec$LT$gix_protocol..fetch..response..Acknowledgement$GT$$GT$17h3cd8cda1f383eefcE.exit.i"
  %.val1.i.i208.i = load ptr, ptr %.sroa.477.0..sroa_idx.i, align 8, !alias.scope !12563, !noalias !12547, !nonnull !43, !noundef !43
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i208.i, i64 noundef %.val.i.i207.i, i64 noundef range(i64 1, -9223372036854775807) 1) #67, !noalias !12564
  br label %.body410

"_ZN4core3ptr90drop_in_place$LT$alloc..vec..Vec$LT$gix_protocol..fetch..response..Acknowledgement$GT$$GT$17h3cd8cda1f383eefcE.exit206.i": ; preds = %bb.gl, %"_ZN4core3ptr63drop_in_place$LT$alloc..vec..Vec$LT$gix_shallow..Update$GT$$GT$17ha502a978bdff6378E.exit205.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !12547
  call void @llvm.experimental.noalias.scope.decl(metadata !12565)
  call void @llvm.experimental.noalias.scope.decl(metadata !12566)
  %.val.i.i210.i = load i64, ptr %i.aa, align 8, !alias.scope !12567, !noalias !12547 ; 2 uses
  %i.rx = icmp eq i64 %.val.i.i210.i, 0
  br i1 %i.rx, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h418846e5985b1709E.exit212.i", label %bb.gn

bb.gn:                                            ; preds = %"_ZN4core3ptr90drop_in_place$LT$alloc..vec..Vec$LT$gix_protocol..fetch..response..Acknowledgement$GT$$GT$17h3cd8cda1f383eefcE.exit206.i"
  %.val1.i.i211.i = load ptr, ptr %.sroa.477.0..sroa_idx.i, align 8, !alias.scope !12567, !noalias !12547, !nonnull !43, !noundef !43
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i211.i, i64 noundef %.val.i.i210.i, i64 noundef range(i64 1, -9223372036854775807) 1) #67, !noalias !12568
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h418846e5985b1709E.exit212.i"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h418846e5985b1709E.exit212.i": ; preds = %bb.gn, %"_ZN4core3ptr90drop_in_place$LT$alloc..vec..Vec$LT$gix_protocol..fetch..response..Acknowledgement$GT$$GT$17h3cd8cda1f383eefcE.exit206.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !12547
  br label %.loopexit467

.thread6.i:                                       ; preds = %bb.et
  %i.ry = landingpad { ptr, i32 }
          cleanup
  br label %bb.iy

"_ZN111_$LT$alloc..boxed..Box$LT$T$GT$$u20$as$u20$gix_transport..client..blocking_io..bufread_ext..ExtendedBufRead$GT$5reset17h9ca03e12aa3813daE.exit.i": ; preds = %bb.et
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !12547
  store i64 0, ptr %i.o, align 16, !noalias !12547
  store ptr inttoptr (i64 1 to ptr), ptr %i.ha, align 8, !noalias !12547
  store i64 0, ptr %i.hb, align 16, !noalias !12547
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !12547
  store i64 0, ptr %i.n, align 8, !noalias !12547
  store ptr inttoptr (i64 1 to ptr), ptr %i.hc, align 8, !noalias !12547
  store i64 0, ptr %i.hd, align 8, !noalias !12547
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !12547
  store i64 0, ptr %i.m, align 8, !noalias !12547
  store ptr inttoptr (i64 8 to ptr), ptr %i.he, align 8, !noalias !12547
  store i64 0, ptr %i.hf, align 8, !noalias !12547
  %i.rz = getelementptr inbounds nuw i8, ptr %.val374, i64 144
  %i.sa = load ptr, ptr %i.rz, align 8, !invariant.load !43, !noalias !12569, !nonnull !43 ; 7 uses
  %i.sb = getelementptr inbounds nuw i8, ptr %.val374, i64 176 ; 3 uses
  br label %.backedge.i.outer

.backedge.i.outer:                                ; preds = %bb.im, %"_ZN111_$LT$alloc..boxed..Box$LT$T$GT$$u20$as$u20$gix_transport..client..blocking_io..bufread_ext..ExtendedBufRead$GT$5reset17h9ca03e12aa3813daE.exit.i"
  %.ph = phi ptr [ %i.zk, %bb.im ], [ inttoptr (i64 8 to ptr), %"_ZN111_$LT$alloc..boxed..Box$LT$T$GT$$u20$as$u20$gix_transport..client..blocking_io..bufread_ext..ExtendedBufRead$GT$5reset17h9ca03e12aa3813daE.exit.i" ] ; 2 uses
  %.val1.i251.i.ph = phi i64 [ %.val1.i251252.i, %bb.im ], [ 0, %"_ZN111_$LT$alloc..boxed..Box$LT$T$GT$$u20$as$u20$gix_transport..client..blocking_io..bufread_ext..ExtendedBufRead$GT$5reset17h9ca03e12aa3813daE.exit.i" ] ; 8 uses
  %.val.i250.i.ph = phi ptr [ %.val.i250246.i, %bb.im ], [ inttoptr (i64 8 to ptr), %"_ZN111_$LT$alloc..boxed..Box$LT$T$GT$$u20$as$u20$gix_transport..client..blocking_io..bufread_ext..ExtendedBufRead$GT$5reset17h9ca03e12aa3813daE.exit.i" ] ; 8 uses
  br label %.backedge.i

.backedge.i:                                      ; preds = %.backedge.i.backedge, %.backedge.i.outer
  store i64 0, ptr %.sroa.575.0..sroa_idx.i, align 8, !noalias !12547
  %i.sc = invoke { i64, ptr } %i.sa(ptr noalias noundef nonnull align 1 %.val373, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %"_ZN111_$LT$alloc..boxed..Box$LT$T$GT$$u20$as$u20$gix_transport..client..blocking_io..bufread_ext..ReadlineBufRead$GT$12readline_str17h1dc40ba0ffa612f8E.exit213.i" unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp, !noalias !12547, !inline_history !12551 ; 2 uses

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp: ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h713d60f45a4da7b0E.exit.i.i", %bb.id, %bb.hh, %bb.hk, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hb9fd012d0a18239eE.exit.i.i", %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17ha2a0eb62996552a9E.exit.i.i", %bb.hx, %bb.hu, %bb.go, %bb.gq, %bb.hv, %bb.ht, %._crit_edge.i231.i, %bb.hs, %bb.hi, %bb.hg, %._crit_edge.i.i, %bb.hf, %.backedge.i, %bb.ib, %._crit_edge.i242.i, %bb.ic, %bb.ie
end_hunk_0
