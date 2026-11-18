Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/shadowsocks-rs/original/shadowsocks_rust-8c1b79cab299925f.shadowsocks_rust.79f42262b046863e-cgu.0?download=true
inline.NumInlined: 5128
inline.NumDeleted: 2462
loop-unroll.NumCompletelyUnrolled: 38
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 54
begin_hunk_0_@_RNvNtNtCsat9HgdBb3qc_16shadowsocks_rust7service5local6create:bb.a
  br i1 %i.qe, label %bb.bm, label %_RNvXs_NtNtCsf3Ta7LF998c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.backedge.i.i.i

_RNvXs_NtNtCsf3Ta7LF998c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.backedge.i.i.i: ; preds = %.split.i.i.i, %.lr.ph.i.i.i
  %i.qf = icmp eq ptr %i.pr, %i.pp
  br i1 %i.qf, label %.loopexit966, label %.lr.ph.i.i.i

bb.bm:                                            ; preds = %.split.i.i.i
  %i.qg = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.qh = load i64, ptr %i.qg, align 8, !alias.scope !7772, !noundef !14 ; 2 uses
  %i.qi = icmp ult i64 %.sroa.8.016.i.i.i, %i.qh
  br i1 %i.qi, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %.sroa.8.016.i.i.i, i64 noundef %i.qh, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #37, !noalias !7773
  unreachable

bb.bo:                                            ; preds = %bb.bm
  %i.qj = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.qk = load ptr, ptr %i.qj, align 8, !alias.scope !7772, !nonnull !14, !noundef !14
  %i.ql = getelementptr inbounds nuw [104 x i8], ptr %i.qk, i64 %.sroa.8.016.i.i.i ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ed), !noalias !7774
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ec), !noalias !7774
  store i128 49228982883410786395789357019165599605, ptr %i.ec, align 16, !noalias !7774
  call void @_RNvMNtNtNtCslDQ48jUgq5Q_12clap_builder6parser7matches11matched_argNtB2_10MatchedArg13infer_type_id(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.ed, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.ql, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(16) %i.ec) #30, !noalias !7774
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ec), !noalias !7774
  %.sroa.013.0.copyload.i.i = load i128, ptr %i.ed, align 16, !noalias !7774 ; 3 uses
  %i.qm = icmp eq i128 %.sroa.013.0.copyload.i.i, 49228982883410786395789357019165599605
  br i1 %i.qm, label %bb.bp, label %bb.bs

bb.bp:                                            ; preds = %bb.bo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ed), !noalias !7774
  %i.qn = call noundef align 8 ptr @_RNvMNtNtNtCslDQ48jUgq5Q_12clap_builder6parser7matches11matched_argNtB2_10MatchedArg5first(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.ql) #30, !noalias !7775 ; 3 uses
  %.not8.i = icmp eq ptr %i.qn, null
  br i1 %.not8.i, label %.loopexit966, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %.val.i482 = load ptr, ptr %i.qn, align 8, !noalias !7775, !nonnull !14, !noundef !14
  %i.qo = getelementptr i8, ptr %i.qn, i64 8
  %.val10.i = load ptr, ptr %i.qo, align 8, !noalias !7775, !nonnull !14, !align !27, !noundef !14 ; 2 uses
  %i.qp = getelementptr inbounds nuw i8, ptr %.val10.i, i64 16
  %i.qq = load i64, ptr %i.qp, align 8, !range !25, !invariant.load !14, !noalias !7775
  %i.qr = add nsw i64 %i.qq, -1
  %i.qs = and i64 %i.qr, -16
  %i.qt = getelementptr inbounds nuw i8, ptr %.val.i482, i64 %i.qs ; 25 uses
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qt, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eb), !noalias !7775
  %i.qv = getelementptr inbounds nuw i8, ptr %.val10.i, i64 24
  %i.qw = load ptr, ptr %i.qv, align 8, !invariant.load !14, !noalias !7775, !nonnull !14
  call void %i.qw(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.eb, ptr noundef nonnull %i.qu) #35, !noalias !7775, !inline_history !7365
  %i.qx = load i128, ptr %i.eb, align 16, !noalias !7775, !noundef !14
  %.not.i483 = icmp eq i128 %i.qx, 49228982883410786395789357019165599605
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eb), !noalias !7775
  br i1 %.not.i483, label %bb.bt, label %bb.br, !prof !20

bb.br:                                            ; preds = %bb.bq
  call void @_RNvNtCsf3Ta7LF998c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @43, i64 noundef 99, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @45) #37, !noalias !7775
  unreachable

bb.bs:                                            ; preds = %bb.bo
  %i.qy = lshr i128 %.sroa.013.0.copyload.i.i, 64
  %i.qz = trunc nuw i128 %i.qy to i64
  %i.ra = trunc i128 %.sroa.013.0.copyload.i.i to i64
  %i.rb = inttoptr i64 %i.ra to ptr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ed), !noalias !7774
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ea)
  store ptr @465, ptr %i.ea, align 8, !noalias !7776
  %i.rc = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  store i64 10, ptr %i.rc, align 8, !noalias !7776
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dz), !noalias !7776
  store i64 0, ptr %i.dz, align 8
  %.sroa.7816.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  store ptr %i.rb, ptr %.sroa.7816.0..sroa_idx, align 8
  %.sroa.11817.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dz, i64 16
  store i64 %i.qz, ptr %.sroa.11817.0..sroa_idx, align 8
  %.sroa.12818.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dz, i64 24
  store i128 49228982883410786395789357019165599605, ptr %.sroa.12818.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dy), !noalias !7776
  store ptr %i.ea, ptr %i.dy, align 8, !noalias !7776
  %.sroa.42.0..sroa_idx.i485 = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  store ptr @_RNvXs1i_NtCsf3Ta7LF998c_4core3fmtReNtB6_7Display3fmtCsat9HgdBb3qc_16shadowsocks_rust, ptr %.sroa.42.0..sroa_idx.i485, align 8, !noalias !7776
  %i.rd = getelementptr inbounds nuw i8, ptr %i.dy, i64 16
  store ptr %i.dz, ptr %i.rd, align 8, !noalias !7776
  %.sroa.46.0..sroa_idx.i486 = getelementptr inbounds nuw i8, ptr %i.dy, i64 24
  store ptr @_RNvXs0_NtNtCslDQ48jUgq5Q_12clap_builder6parser5errorNtB5_12MatchesErrorNtNtCsf3Ta7LF998c_4core3fmt7Display3fmt, ptr %.sroa.46.0..sroa_idx.i486, align 8, !noalias !7776
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking9panic_fmt(ptr noundef nonnull @24, ptr noundef nonnull %i.dy, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #37, !noalias !7776
  unreachable

bb.bt:                                            ; preds = %bb.bq
  call void @llvm.experimental.noalias.scope.decl(metadata !7777)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dt)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.du)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  %i.re = getelementptr inbounds nuw i8, ptr %i.qt, i64 184
  %i.rf = load i16, ptr %i.re, align 8, !range !40, !alias.scope !7777, !noundef !14
  %i.rg = trunc nuw i16 %i.rf to i1
  br i1 %i.rg, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  %i.rh = getelementptr inbounds nuw i8, ptr %i.qt, i64 192
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dw), !noalias !7778
  call void @_RNvXs4_NtCsgCecv3eZDcN_5alloc6stringNtB5_6StringNtNtCsf3Ta7LF998c_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.dw, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.rh) #30, !noalias !7779
  %i.ri = getelementptr inbounds nuw i8, ptr %i.qt, i64 186
  %i.rj = load i16, ptr %i.ri, align 2, !alias.scope !7777, !noundef !14
  %.sroa.6.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.6.i, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %.sroa.6.8..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %i.dw, i64 24, i1 false), !noalias !7778
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dw), !noalias !7778
  br label %bb.bw

bb.bv:                                            ; preds = %bb.bt
  %i.rk = getelementptr inbounds nuw i8, ptr %i.qt, i64 188
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %.sroa.6.i, ptr noundef nonnull readonly align 4 dereferenceable(32) %i.rk, i64 32, i1 false), !noalias !7779
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.bu
  %.sroa.5.0.i = phi i16 [ %i.rj, %bb.bu ], [ undef, %bb.bv ]
  %.sroa.0.0.i = phi i16 [ 1, %bb.bu ], [ 0, %bb.bv ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dx), !noalias !7778
  call void @_RNvXs4_NtCsgCecv3eZDcN_5alloc6stringNtB5_6StringNtNtCsf3Ta7LF998c_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.dx, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(296) %i.qu) #30, !noalias !7779
  %i.rl = getelementptr inbounds nuw i8, ptr %i.qt, i64 306
  %i.rm = load i8, ptr %i.rl, align 2, !range !7780, !alias.scope !7777, !noundef !14
  %i.rn = getelementptr inbounds nuw i8, ptr %i.qt, i64 264
  %.val.i487 = load ptr, ptr %i.rn, align 8, !alias.scope !7777, !nonnull !14, !noundef !14
  %i.ro = getelementptr inbounds nuw i8, ptr %i.qt, i64 272
  %.val28.i = load i64, ptr %i.ro, align 8, !alias.scope !7777, !noundef !14 ; 6 uses
  %i.rp = icmp eq i64 %.val28.i, 0
  br i1 %i.rp, label %_RNvXse_NtCsgCecv3eZDcN_5alloc5boxedINtB5_3BoxShENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsat9HgdBb3qc_16shadowsocks_rust.exit.i, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #30, !noalias !7781
  %i.rq = call noundef ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %.val28.i, i64 noundef range(i64 1, 9) 1) #30, !noalias !7781 ; 3 uses
  %i.rr = icmp eq ptr %i.rq, null
  br i1 %i.rr, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef 1, i64 range(i64 0, -9223372036854775808) %.val28.i) #34, !noalias !7782
  unreachable

bb.bz:                                            ; preds = %bb.bx
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.rq, ptr nonnull readonly align 1 %.val.i487, i64 range(i64 0, -9223372036854775808) %.val28.i, i1 false), !noalias !7783
  br label %_RNvXse_NtCsgCecv3eZDcN_5alloc5boxedINtB5_3BoxShENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsat9HgdBb3qc_16shadowsocks_rust.exit.i

_RNvXse_NtCsgCecv3eZDcN_5alloc5boxedINtB5_3BoxShENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsat9HgdBb3qc_16shadowsocks_rust.exit.i: ; preds = %bb.bz, %bb.bw
  %.sroa.5.0.i.i = phi ptr [ %i.rq, %bb.bz ], [ inttoptr (i64 1 to ptr), %bb.bw ]
  %i.rs = icmp sgt i64 %.val28.i, -1
  call void @llvm.assume(i1 %i.rs)
  %i.rt = getelementptr inbounds nuw i8, ptr %i.qt, i64 176
  %i.ru = load i32, ptr %i.rt, align 8, !range !41, !alias.scope !7777, !noundef !14 ; 2 uses
  %i.rv = getelementptr inbounds nuw i8, ptr %i.qt, i64 168
  %i.rw = load i64, ptr %i.rv, align 8, !alias.scope !7777
  %i.rx = getelementptr inbounds nuw i8, ptr %i.qt, i64 280
  %i.ry = load ptr, ptr %i.rx, align 8, !alias.scope !7777, !nonnull !14, !noundef !14 ; 2 uses
  %i.rz = atomicrmw add ptr %i.ry, i64 1 monotonic, align 8, !noalias !7779
  %i.sa = icmp slt i64 %i.rz, 0
  br i1 %i.sa, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %_RNvXse_NtCsgCecv3eZDcN_5alloc5boxedINtB5_3BoxShENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsat9HgdBb3qc_16shadowsocks_rust.exit.i
  %i.sb = getelementptr inbounds nuw i8, ptr %i.qt, i64 288
  %i.sc = load ptr, ptr %i.sb, align 8, !alias.scope !7777, !noundef !14 ; 3 uses
  %.not23.i = icmp eq ptr %i.sc, null
  br i1 %.not23.i, label %bb.cd, label %bb.cc

bb.cb:                                            ; preds = %_RNvXse_NtCsgCecv3eZDcN_5alloc5boxedINtB5_3BoxShENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsat9HgdBb3qc_16shadowsocks_rust.exit.i
  call void @llvm.trap()
  unreachable

bb.cc:                                            ; preds = %bb.ca
  %i.sd = atomicrmw add ptr %i.sc, i64 1 monotonic, align 8, !noalias !7779
  %i.se = icmp slt i64 %i.sd, 0
  br i1 %i.se, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.ca
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.57.sroa.0.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.57.sroa.8.i)
  %i.sf = getelementptr inbounds nuw i8, ptr %i.qt, i64 40 ; 2 uses
  %i.sg = load i64, ptr %i.sf, align 8, !range !24, !alias.scope !7777, !noundef !14
  %.not24.i = icmp eq i64 %i.sg, -1
  br i1 %.not24.i, label %bb.cl, label %bb.cf

bb.ce:                                            ; preds = %bb.cc
  call void @llvm.trap()
  unreachable

bb.cf:                                            ; preds = %bb.cd
  call void @llvm.experimental.noalias.scope.decl(metadata !7784)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dr), !noalias !7778
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ds), !noalias !7785
  call void @_RNvXs4_NtCsgCecv3eZDcN_5alloc6stringNtB5_6StringNtNtCsf3Ta7LF998c_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ds, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.sf) #30, !noalias !7786
  %i.sh = getelementptr inbounds nuw i8, ptr %i.qt, i64 88 ; 2 uses
  %i.si = load i64, ptr %i.sh, align 8, !range !24, !alias.scope !7787, !noundef !14
  %.not.i.i488 = icmp eq i64 %i.si, -1
  br i1 %.not.i.i488, label %bb.ch, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  call void @_RNvXs4_NtCsgCecv3eZDcN_5alloc6stringNtB5_6StringNtNtCsf3Ta7LF998c_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.dr, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.sh) #30, !noalias !7786
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.dr, align 8, !noalias !7785
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.cf
  %.sroa.0.0.i.i489 = phi i64 [ %.sroa.0.0.copyload.i.i, %bb.cg ], [ -1, %bb.cf ]
  %2 = getelementptr inbounds nuw i8, ptr %i.qt, i64 72
  %.val.i.i490 = load ptr, ptr %2, align 8, !alias.scope !7787, !nonnull !14, !noundef !14 ; 2 uses
  %i.sj = getelementptr inbounds nuw i8, ptr %i.qt, i64 80
  %.val3.i.i = load i64, ptr %i.sj, align 8, !alias.scope !7787, !noundef !14 ; 5 uses
  %i.sk = mul nuw nsw i64 %.val3.i.i, 24          ; 2 uses
  %i.sl = icmp eq i64 %.val3.i.i, 0
  br i1 %i.sl, label %_RNvXs1_NtCslxdWNweD0x2_11shadowsocks6pluginNtB5_12PluginConfigNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit.i, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #30, !noalias !7788
  %i.sm = call noundef align 8 ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.sk, i64 noundef range(i64 1, 9) 8) #30, !noalias !7788 ; 4 uses
  %i.sn = icmp eq ptr %i.sm, null
  br i1 %i.sn, label %bb.cj, label %.lr.ph.preheader.i.i.i.i

bb.cj:                                            ; preds = %bb.ci
  call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.sk) #34, !noalias !7789
  unreachable

.lr.ph.preheader.i.i.i.i:                         ; preds = %bb.ci
  %3 = getelementptr inbounds nuw [24 x i8], ptr %.val.i.i490, i64 %.val3.i.i
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.ck, %.lr.ph.preheader.i.i.i.i
  %.sroa.0.021.i.i.i.i = phi ptr [ %i.sq, %bb.ck ], [ %.val.i.i490, %.lr.ph.preheader.i.i.i.i ] ; 3 uses
  %.sroa.7.020.i.i.i.i = phi i64 [ %i.sp, %bb.ck ], [ 0, %.lr.ph.preheader.i.i.i.i ] ; 2 uses
  %.sroa.10.019.i.i.i.i = phi i64 [ %i.so, %bb.ck ], [ %.val3.i.i, %.lr.ph.preheader.i.i.i.i ]
  %4 = icmp eq ptr %.sroa.0.021.i.i.i.i, %3
  br i1 %4, label %_RNvXs1_NtCslxdWNweD0x2_11shadowsocks6pluginNtB5_12PluginConfigNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit.i, label %bb.ck

bb.ck:                                            ; preds = %.lr.ph.i.i.i.i
  %i.so = add nsw i64 %.sroa.10.019.i.i.i.i, -1   ; 2 uses
  %i.sp = add nuw nsw i64 %.sroa.7.020.i.i.i.i, 1
  %i.sq = getelementptr inbounds nuw i8, ptr %.sroa.0.021.i.i.i.i, i64 24
  %i.sr = getelementptr inbounds nuw [24 x i8], ptr %i.sm, i64 %.sroa.7.020.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dq), !noalias !7790
  call void @_RNvXs4_NtCsgCecv3eZDcN_5alloc6stringNtB5_6StringNtNtCsf3Ta7LF998c_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.dq, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.0.021.i.i.i.i) #30, !noalias !7791
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.sr, ptr noundef nonnull align 8 dereferenceable(24) %i.dq, i64 24, i1 false), !noalias !7791
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dq), !noalias !7790
  %i.ss = icmp eq i64 %i.so, 0
  br i1 %i.ss, label %_RNvXs1_NtCslxdWNweD0x2_11shadowsocks6pluginNtB5_12PluginConfigNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit.i, label %.lr.ph.i.i.i.i

_RNvXs1_NtCslxdWNweD0x2_11shadowsocks6pluginNtB5_12PluginConfigNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit.i: ; preds = %bb.ck, %.lr.ph.i.i.i.i, %bb.ch
  %.sroa.10.0.i29.i.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.ch ], [ %i.sm, %.lr.ph.i.i.i.i ], [ %i.sm, %bb.ck ]
  %i.st = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  %i.su = getelementptr inbounds nuw i8, ptr %i.qt, i64 112
  %i.sv = load i8, ptr %i.su, align 8, !range !7792, !alias.scope !7787, !noundef !14
  %.sroa.0.0.copyload.i = load i64, ptr %i.ds, align 8, !noalias !7793
  %.sroa.4.0..sroa_idx.i491 = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.57.sroa.0.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx.i491, i64 16, i1 false), !noalias !7778
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.57.sroa.8.i, ptr noundef nonnull align 8 dereferenceable(16) %i.st, i64 16, i1 false), !noalias !7778
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ds), !noalias !7785
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dr), !noalias !7778
  br label %bb.cl

bb.cl:                                            ; preds = %_RNvXs1_NtCslxdWNweD0x2_11shadowsocks6pluginNtB5_12PluginConfigNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit.i, %bb.cd
  %.sroa.57.sroa.9.0.i = phi i8 [ undef, %bb.cd ], [ %i.sv, %_RNvXs1_NtCslxdWNweD0x2_11shadowsocks6pluginNtB5_12PluginConfigNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit.i ]
  %.sroa.57.sroa.7.0.i = phi i64 [ undef, %bb.cd ], [ %.sroa.0.0.i.i489, %_RNvXs1_NtCslxdWNweD0x2_11shadowsocks6pluginNtB5_12PluginConfigNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit.i ]
  %.sroa.57.sroa.6.0.i = phi i64 [ undef, %bb.cd ], [ %.val3.i.i, %_RNvXs1_NtCslxdWNweD0x2_11shadowsocks6pluginNtB5_12PluginConfigNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit.i ] ; 2 uses
  %.sroa.57.sroa.5.0.i = phi ptr [ undef, %bb.cd ], [ %.sroa.10.0.i29.i.i.i.i, %_RNvXs1_NtCslxdWNweD0x2_11shadowsocks6pluginNtB5_12PluginConfigNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit.i ]
  %.sroa.05.0.i = phi i64 [ -1, %bb.cd ], [ %.sroa.0.0.copyload.i, %_RNvXs1_NtCslxdWNweD0x2_11shadowsocks6pluginNtB5_12PluginConfigNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit.i ]
  %i.sw = getelementptr inbounds nuw i8, ptr %i.qt, i64 224
  %i.sx = load i16, ptr %i.sw, align 8, !range !43, !alias.scope !7777, !noundef !14 ; 2 uses
  switch i16 %i.sx, label %bb.cn [
    i16 2, label %bb.cm
    i16 0, label %bb.co
  ]

bb.cm:                                            ; preds = %bb.co, %bb.cn, %bb.cl
  %.sroa.511.sroa.0.0.i = phi i16 [ undef, %bb.cl ], [ %i.tc, %bb.cn ], [ undef, %bb.co ]
  %.sroa.09.0.i = phi i16 [ %i.sx, %bb.cl ], [ 1, %bb.cn ], [ 0, %bb.co ]
  %i.sy = getelementptr inbounds nuw i8, ptr %i.qt, i64 120 ; 2 uses
  %i.sz = load i64, ptr %i.sy, align 8, !range !24, !alias.scope !7777, !noundef !14
  %.not26.i = icmp eq i64 %i.sz, -1
  br i1 %.not26.i, label %bb.cq, label %bb.cp

bb.cn:                                            ; preds = %bb.cl
  %i.ta = getelementptr inbounds nuw i8, ptr %i.qt, i64 232
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dv), !noalias !7778
  call void @_RNvXs4_NtCsgCecv3eZDcN_5alloc6stringNtB5_6StringNtNtCsf3Ta7LF998c_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.dv, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ta) #30, !noalias !7779
  %i.tb = getelementptr inbounds nuw i8, ptr %i.qt, i64 226
  %i.tc = load i16, ptr %i.tb, align 2, !alias.scope !7777, !noundef !14
  %.sroa.7.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.7.i, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %.sroa.7.8..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %i.dv, i64 24, i1 false), !noalias !7778
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dv), !noalias !7778
  br label %bb.cm

bb.co:                                            ; preds = %bb.cl
  %i.td = getelementptr inbounds nuw i8, ptr %i.qt, i64 228
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %.sroa.7.i, ptr noundef nonnull readonly align 4 dereferenceable(32) %i.td, i64 32, i1 false), !noalias !7779
  br label %bb.cm

bb.cp:                                            ; preds = %bb.cm
  call void @_RNvXs4_NtCsgCecv3eZDcN_5alloc6stringNtB5_6StringNtNtCsf3Ta7LF998c_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.du, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.sy) #30, !noalias !7779
  %.sroa.013.0.copyload.i = load i64, ptr %i.du, align 8, !noalias !7778
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cp, %bb.cm
  %.sroa.013.0.i = phi i64 [ %.sroa.013.0.copyload.i, %bb.cp ], [ -1, %bb.cm ]
  %i.te = getelementptr inbounds nuw i8, ptr %i.qt, i64 144 ; 2 uses
  %i.tf = load i64, ptr %i.te, align 8, !range !24, !alias.scope !7777, !noundef !14
  %.not27.i = icmp eq i64 %i.tf, -1
  br i1 %.not27.i, label %_RNvXs19_NtCslxdWNweD0x2_11shadowsocks6configNtB6_12ServerConfigNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  call void @_RNvXs4_NtCsgCecv3eZDcN_5alloc6stringNtB5_6StringNtNtCsf3Ta7LF998c_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.dt, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.te) #30, !noalias !7779
  %.sroa.017.0.copyload.i = load i64, ptr %i.dt, align 8, !noalias !7778
  br label %_RNvXs19_NtCslxdWNweD0x2_11shadowsocks6configNtB6_12ServerConfigNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit

_RNvXs19_NtCslxdWNweD0x2_11shadowsocks6configNtB6_12ServerConfigNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit: ; preds = %bb.cq, %bb.cr
  %.sroa.017.0.i = phi i64 [ %.sroa.017.0.copyload.i, %bb.cr ], [ -1, %bb.cq ]
  %i.tg = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  %i.th = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  %.not.i492 = icmp eq i32 %i.ru, -1
  %.sroa.01.0.i = select i1 %.not.i492, i64 undef, i64 %i.rw
  %i.ti = getelementptr inbounds nuw i8, ptr %i.qt, i64 304
  %i.tj = load i8, ptr %i.ti, align 8, !range !7792, !alias.scope !7777, !noundef !14
  %i.tk = getelementptr inbounds nuw i8, ptr %i.qt, i64 296
  %i.tl = load <2 x float>, ptr %i.tk, align 8, !alias.scope !7777
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4756.sroa.22)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %.sroa.4756.sroa.22, ptr noundef nonnull align 4 dereferenceable(32) %.sroa.6.i, i64 32, i1 false)
  %.sroa.4756.sroa.0.728..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4756.sroa.0, i64 728
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4756.sroa.0)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4756.sroa.0.728..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.dx, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4756.sroa.5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4756.sroa.5, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.57.sroa.0.i, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4756.sroa.10)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4756.sroa.10, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.57.sroa.8.i, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4756.sroa.26)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %.sroa.4756.sroa.26, ptr noundef nonnull align 4 dereferenceable(32) %.sroa.7.i, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4756.sroa.14)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4756.sroa.14, ptr noundef nonnull align 8 dereferenceable(16) %i.tg, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4756.sroa.16)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4756.sroa.16, ptr noundef nonnull align 8 dereferenceable(16) %i.th, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.57.sroa.0.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.57.sroa.8.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dx), !noalias !7778
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dt)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.du)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i)
  %i.tm = getelementptr inbounds nuw i8, ptr %i.im, i64 800 ; 2 uses
  %i.tn = getelementptr inbounds nuw i8, ptr %i.im, i64 816 ; 2 uses
  %i.to = load i64, ptr %i.tn, align 8, !alias.scope !7794, !noundef !14 ; 3 uses
  %i.tp = load i64, ptr %i.tm, align 8, !range !16, !alias.scope !7794, !noundef !14
  %i.tq = icmp eq i64 %i.to, %i.tp
  br i1 %i.tq, label %bb.cs, label %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCs8UFHSMUhzWe_19shadowsocks_service6config20ServerInstanceConfigE8push_mutCsat9HgdBb3qc_16shadowsocks_rust.exit495

bb.cs:                                            ; preds = %_RNvXs19_NtCslxdWNweD0x2_11shadowsocks6configNtB6_12ServerConfigNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit
  call void @_RNvMs4_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCs8UFHSMUhzWe_19shadowsocks_service6config20ServerInstanceConfigE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.tm) #36, !noalias !7795
  br label %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCs8UFHSMUhzWe_19shadowsocks_service6config20ServerInstanceConfigE8push_mutCsat9HgdBb3qc_16shadowsocks_rust.exit495

_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCs8UFHSMUhzWe_19shadowsocks_service6config20ServerInstanceConfigE8push_mutCsat9HgdBb3qc_16shadowsocks_rust.exit495: ; preds = %_RNvXs19_NtCslxdWNweD0x2_11shadowsocks6configNtB6_12ServerConfigNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit, %bb.cs
  %i.tr = getelementptr inbounds nuw i8, ptr %i.im, i64 808
  %i.ts = load ptr, ptr %i.tr, align 8, !alias.scope !7794, !nonnull !14, !noundef !14
  %i.tt = getelementptr inbounds nuw [1112 x i8], ptr %i.ts, i64 %i.to ; 38 uses
  store i64 2, ptr %i.tt, align 8
  %.sroa.4756.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.tt, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(752) %.sroa.4756.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(752) %.sroa.4756.sroa.0, i64 752, i1 false)
  %.sroa.4756.sroa.4.0..sroa.4756.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.tt, i64 760
  store i64 %.sroa.05.0.i, ptr %.sroa.4756.sroa.4.0..sroa.4756.0..sroa_idx.sroa_idx, align 8
  %.sroa.4756.sroa.5.0..sroa.4756.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.tt, i64 768
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4756.sroa.5.0..sroa.4756.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4756.sroa.5, i64 16, i1 false)
  %.sroa.4756.sroa.6.0..sroa.4756.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.tt, i64 784
  store i64 %.sroa.57.sroa.6.0.i, ptr %.sroa.4756.sroa.6.0..sroa.4756.0..sroa_idx.sroa_idx, align 8
  %.sroa.4756.sroa.7.0..sroa.4756.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.tt, i64 792
  store ptr %.sroa.57.sroa.5.0.i, ptr %.sroa.4756.sroa.7.0..sroa.4756.0..sroa_idx.sroa_idx, align 8
  %.sroa.4756.sroa.8.0..sroa.4756.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.tt, i64 800
  store i64 %.sroa.57.sroa.6.0.i, ptr %.sroa.4756.sroa.8.0..sroa.4756.0..sroa_idx.sroa_idx, align 8
  %.sroa.4756.sroa.9.0..sroa.4756.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.tt, i64 808
  store i64 %.sroa.57.sroa.7.0.i, ptr %.sroa.4756.sroa.9.0..sroa.4756.0..sroa_idx.sroa_idx, align 8
  %.sroa.4756.sroa.10.0..sroa.4756.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.tt, i64 816
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4756.sroa.10.0..sroa.4756.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4756.sroa.10, i64 16, i1 false)
  %.sroa.4756.sroa.11.0..sroa.4756.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.tt, i64 832
  store i8 %.sroa.57.sroa.9.0.i, ptr %.sroa.4756.sroa.11.0..sroa.4756.0..sroa_idx.sroa_idx, align 8
  %.sroa.4756.sroa.13.0..sroa.4756.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.tt, i64 840
  store i64 %.sroa.013.0.i, ptr %.sroa.4756.sroa.13.0..sroa.4756.0..sroa_idx.sroa_idx, align 8
  %.sroa.4756.sroa.14.0..sroa.4756.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.tt, i64 848
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4756.sroa.14.0..sroa.4756.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4756.sroa.14, i64 16, i1 false)
  %.sroa.4756.sroa.15.0..sroa.4756.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.tt, i64 864
  store i64 %.sroa.017.0.i, ptr %.sroa.4756.sroa.15.0..sroa.4756.0..sroa_idx.sroa_idx, align 8
  %.sroa.4756.sroa.16.0..sroa.4756.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.tt, i64 872
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4756.sroa.16.0..sroa.4756.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4756.sroa.16, i64 16, i1 false)
  %.sroa.4756.sroa.17.0..sroa.4756.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.tt, i64 888
  store i64 %.sroa.01.0.i, ptr %.sroa.4756.sroa.17.0..sroa.4756.0..sroa_idx.sroa_idx, align 8
  %.sroa.4756.sroa.18.0..sroa.4756.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.tt, i64 896
  store i32 %i.ru, ptr %.sroa.4756.sroa.18.0..sroa.4756.0..sroa_idx.sroa_idx, align 8
  %.sroa.4756.sroa.20.0..sroa.4756.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.tt, i64 904
  store i16 %.sroa.0.0.i, ptr %.sroa.4756.sroa.20.0..sroa.4756.0..sroa_idx.sroa_idx, align 8
  %.sroa.4756.sroa.21.0..sroa.4756.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.tt, i64 906
  store i16 %.sroa.5.0.i, ptr %.sroa.4756.sroa.21.0..sroa.4756.0..sroa_idx.sroa_idx, align 2
  %.sroa.4756.sroa.22.0..sroa.4756.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.tt, i64 908
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %.sroa.4756.sroa.22.0..sroa.4756.0..sroa_idx.sroa_idx, ptr noundef nonnull align 4 dereferenceable(32) %.sroa.4756.sroa.22, i64 32, i1 false)
  %.sroa.4756.sroa.24.0..sroa.4756.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.tt, i64 944
  store i16 %.sroa.09.0.i, ptr %.sroa.4756.sroa.24.0..sroa.4756.0..sroa_idx.sroa_idx, align 8
  %.sroa.4756.sroa.25.0..sroa.4756.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.tt, i64 946
  store i16 %.sroa.511.sroa.0.0.i, ptr %.sroa.4756.sroa.25.0..sroa.4756.0..sroa_idx.sroa_idx, align 2
  %.sroa.4756.sroa.26.0..sroa.4756.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.tt, i64 948
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %.sroa.4756.sroa.26.0..sroa.4756.0..sroa_idx.sroa_idx, ptr noundef nonnull align 4 dereferenceable(32) %.sroa.4756.sroa.26, i64 32, i1 false)
  %.sroa.4756.sroa.28.0..sroa.4756.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.tt, i64 984
  store ptr %.sroa.5.0.i.i, ptr %.sroa.4756.sroa.28.0..sroa.4756.0..sroa_idx.sroa_idx, align 8
  %.sroa.4756.sroa.29.0..sroa.4756.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.tt, i64 992
  store i64 %.val28.i, ptr %.sroa.4756.sroa.29.0..sroa.4756.0..sroa_idx.sroa_idx, align 8
  %.sroa.4756.sroa.30.0..sroa.4756.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.tt, i64 1000
  store ptr %i.ry, ptr %.sroa.4756.sroa.30.0..sroa.4756.0..sroa_idx.sroa_idx, align 8
  %.sroa.4756.sroa.31.0..sroa.4756.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.tt, i64 1008
  store ptr %i.sc, ptr %.sroa.4756.sroa.31.0..sroa.4756.0..sroa_idx.sroa_idx, align 8
  %.sroa.4756.sroa.32.0..sroa.4756.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.tt, i64 1016
  store <2 x float> %i.tl, ptr %.sroa.4756.sroa.32.0..sroa.4756.0..sroa_idx.sroa_idx, align 8
  %.sroa.4756.sroa.34.0..sroa.4756.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.tt, i64 1024
  store i8 %i.tj, ptr %.sroa.4756.sroa.34.0..sroa.4756.0..sroa_idx.sroa_idx, align 8
  %.sroa.5757.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.tt, i64 1025
  store i8 2, ptr %.sroa.5757.0..sroa_idx, align 1
  %.sroa.6758.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.tt, i64 1026
  store i8 %i.rm, ptr %.sroa.6758.0..sroa_idx, align 2
  %.sroa.7759.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.tt, i64 1032
  store i64 0, ptr %.sroa.7759.0..sroa_idx, align 8
  %.sroa.8760.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.tt, i64 1040
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.8760.0..sroa_idx, align 8
  %.sroa.9761.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.tt, i64 1048
  store i64 0, ptr %.sroa.9761.0..sroa_idx, align 8
  %.sroa.10762.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.tt, i64 1056
  store i64 -1, ptr %.sroa.10762.0..sroa_idx, align 8
  %.sroa.11764.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.tt, i64 1080
  store i32 0, ptr %.sroa.11764.0..sroa_idx, align 8
  %.sroa.12766.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.tt, i64 1088
  store i8 2, ptr %.sroa.12766.0..sroa_idx, align 8
  %.sroa.13768.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.tt, i64 1105
  store i8 2, ptr %.sroa.13768.0..sroa_idx, align 1
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.tt, i64 1106
  store i8 2, ptr %.sroa.14.0..sroa_idx, align 2
  %i.tu = add i64 %i.to, 1
  store i64 %i.tu, ptr %i.tn, align 8, !alias.scope !7794
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4756.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4756.sroa.5)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4756.sroa.10)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4756.sroa.14)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4756.sroa.16)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4756.sroa.22)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4756.sroa.26)
  br label %.loopexit966

.loopexit966:                                     ; preds = %_RNvXs_NtNtCsf3Ta7LF998c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.backedge.i.i.i, %bb.bl, %bb.bp, %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCs8UFHSMUhzWe_19shadowsocks_service6config20ServerInstanceConfigE8push_mutCsat9HgdBb3qc_16shadowsocks_rust.exit495
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hw)
end_hunk_0
begin_hunk_1_@_RNvXsa_NtNtCslHe4oyxs8Ro_18tracing_subscriber3fmt9fmt_layerINtB5_5LayerNtNtNtB9_8registry7sharded8RegistryNtNtB7_6format13DefaultFieldsINtB1I_6FormatNtB1I_4FulluENvNtNtCs5Xr050g3D4S_3std2io5stdio6stdoutEINtNtB9_5layer5LayerB17_E9on_recordCsat9HgdBb3qc_16shadowsocks_rust:bb.a

_RNvXsf_NtNtCsfl4DFYTbOu6_12sharded_slab4page4slotINtB5_9LifecycleNtNtB9_3cfg13DefaultConfigEINtB9_4PackB11_E10from_usizeCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry10extensions13ExtensionsMutECsat9HgdBb3qc_16shadowsocks_rust.exit, %.backedge.i.i.i.i
  %i.cv = phi i64 [ %i.dc, %.backedge.i.i.i.i ], [ %i.ct, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry10extensions13ExtensionsMutECsat9HgdBb3qc_16shadowsocks_rust.exit ]
  %.sroa.05.0.i.i4.i.i.i.i = phi i64 [ %.sroa.05.0.i.i.be.i.i.i.i, %.backedge.i.i.i.i ], [ %i.cs, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry10extensions13ExtensionsMutECsat9HgdBb3qc_16shadowsocks_rust.exit ] ; 5 uses
  %.in.i.i.i.i = lshr i64 %.sroa.05.0.i.i4.i.i.i.i, 2
  %i.cw = and i64 %.in.i.i.i.i, 562949953421311   ; 2 uses
  %i.cx = icmp eq i64 %i.cw, 1
  %i.cy = icmp eq i64 %i.cv, 1
  %.sroa.0.0.i.i.i.i.i.i = and i1 %i.cy, %i.cx
  br i1 %.sroa.0.0.i.i.i.i.i.i, label %bb.q, label %.thread.i.i.i.i

bb.q:                                             ; preds = %_RNvXsf_NtNtCsfl4DFYTbOu6_12sharded_slab4page4slotINtB5_9LifecycleNtNtB9_3cfg13DefaultConfigEINtB9_4PackB11_E10from_usizeCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i
  %i.cz = and i64 %.sroa.05.0.i.i4.i.i.i.i, -2251799813685248
  %i.da = or disjoint i64 %i.cz, 3
  %i.db = cmpxchg ptr %i.cr, i64 %.sroa.05.0.i.i4.i.i.i.i, i64 %i.da acq_rel acquire, align 8, !noalias !14581 ; 2 uses
  %.sroa.18.0.in.i.i.i.i.i.i.i = extractvalue { i64, i1 } %i.db, 1
  br i1 %.sroa.18.0.in.i.i.i.i.i.i.i, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7SpanRefNtNtBE_7sharded8RegistryEECsat9HgdBb3qc_16shadowsocks_rust.exit29.sink.split, label %.backedge.i.i.i.i

.backedge.i.i.i.i:                                ; preds = %.thread.i.i.i.i, %bb.q
  %.pn.i.i.i.i = phi { i64, i1 } [ %i.db, %bb.q ], [ %i.di, %.thread.i.i.i.i ]
  %.sroa.05.0.i.i.be.i.i.i.i = extractvalue { i64, i1 } %.pn.i.i.i.i, 0 ; 2 uses
  %i.dc = and i64 %.sroa.05.0.i.i.be.i.i.i.i, 3   ; 2 uses
  %i.dd = icmp eq i64 %i.dc, 2
  br i1 %i.dd, label %._crit_edge.i.i.i.i, label %_RNvXsf_NtNtCsfl4DFYTbOu6_12sharded_slab4page4slotINtB5_9LifecycleNtNtB9_3cfg13DefaultConfigEINtB9_4PackB11_E10from_usizeCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i, !prof !47

.thread.i.i.i.i:                                  ; preds = %_RNvXsf_NtNtCsfl4DFYTbOu6_12sharded_slab4page4slotINtB5_9LifecycleNtNtB9_3cfg13DefaultConfigEINtB9_4PackB11_E10from_usizeCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i
  %i.de = and i64 %.sroa.05.0.i.i4.i.i.i.i, -2251799813685245
  %i.df = shl nuw nsw i64 %i.cw, 2
  %i.dg = add nsw i64 %i.df, -4
  %i.dh = or i64 %i.dg, %i.de
  %i.di = cmpxchg ptr %i.cr, i64 %.sroa.05.0.i.i4.i.i.i.i, i64 %i.dh acq_rel acquire, align 8, !noalias !14581 ; 2 uses
  %.sroa.18.0.in.i.i.i2.i.i.i.i = extractvalue { i64, i1 } %i.di, 1
  br i1 %.sroa.18.0.in.i.i.i2.i.i.i.i, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7SpanRefNtNtBE_7sharded8RegistryEECsat9HgdBb3qc_16shadowsocks_rust.exit29, label %.backedge.i.i.i.i

.loopexit:                                        ; preds = %._crit_edge.i.i.i, %_RINvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB6_7HashMapNtNtCsf3Ta7LF998c_4core3any6TypeIdINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtBQ_3AnyNtNtBS_6marker4SendNtB27_4SyncEL_EINtNtBS_4hash18BuildHasherDefaultNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry10extensions8IdHasherEE7get_mutBO_ECsat9HgdBb3qc_16shadowsocks_rust.exit.i, %_RNvMNtNtCslHe4oyxs8Ro_18tracing_subscriber5layer7contextINtB2_7ContextNtNtNtB6_8registry7sharded8RegistryE4spanCsat9HgdBb3qc_16shadowsocks_rust.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.dj = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.dk = getelementptr inbounds nuw i8, ptr %i.l, i64 25
  store i64 0, ptr %i.l, align 8
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.44.0..sroa_idx, align 8
  %.sroa.55.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store i64 0, ptr %.sroa.55.0..sroa_idx, align 8
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.dm = load i8, ptr %i.dl, align 1, !range !19, !noundef !14 ; 2 uses
  store i8 %i.dm, ptr %i.dj, align 8
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 11
  %i.do = load i8, ptr %i.dn, align 1, !range !19, !noundef !14 ; 2 uses
  store i8 %i.do, ptr %i.dk, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !14582
  call void @llvm.experimental.noalias.scope.decl(metadata !14583)
  store ptr %i.l, ptr %i.c, align 8, !alias.scope !14584, !noalias !14585
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @747, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !14584, !noalias !14585
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i8 %i.dm, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !14584, !noalias !14585
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 17
  store i8 %i.do, ptr %.sroa.6.0..sroa_idx, align 1, !alias.scope !14584, !noalias !14585
  %i.dp = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i8 1, ptr %i.dp, align 8, !alias.scope !14586, !noalias !14582
  %i.dq = getelementptr inbounds nuw i8, ptr %i.c, i64 25 ; 2 uses
  store i8 0, ptr %i.dq, align 1, !alias.scope !14586, !noalias !14582
  call void @_RNvXs3_NtCslHe4oyxs8Ro_18tracing_subscriber5fieldNtNtCs1kwRxRulhfk_12tracing_core4span6RecordNtB5_12RecordFields6record(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %2, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) @181) #30, !noalias !14587
  %.sroa.3.0.copyload.i = load i8, ptr %i.dq, align 1, !noalias !14582
  %i.dr = trunc nuw i8 %.sroa.3.0.copyload.i to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !14582
  br i1 %i.dr, label %bb.r, label %bb.t

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7SpanRefNtNtBE_7sharded8RegistryEECsat9HgdBb3qc_16shadowsocks_rust.exit29.sink.split: ; preds = %bb.q, %bb.y
  call fastcc void @_RNvMs0_NtCsfl4DFYTbOu6_12sharded_slab5shardINtB5_5ShardNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7sharded9DataInnerNtNtB7_3cfg13DefaultConfigE19clear_after_releaseCsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %.sroa.7.sroa.6.0.copyload.i, i64 noundef %.sroa.7.sroa.7.0.copyload.i) #30, !noalias !14
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7SpanRefNtNtBE_7sharded8RegistryEECsat9HgdBb3qc_16shadowsocks_rust.exit29

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7SpanRefNtNtBE_7sharded8RegistryEECsat9HgdBb3qc_16shadowsocks_rust.exit29: ; preds = %.thread.i.i.i.i, %.thread.i.i.i.i20, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7SpanRefNtNtBE_7sharded8RegistryEECsat9HgdBb3qc_16shadowsocks_rust.exit29.sink.split
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  ret void

bb.r:                                             ; preds = %.loopexit
  call void @llvm.experimental.noalias.scope.decl(metadata !14588)
  call void @llvm.experimental.noalias.scope.decl(metadata !14589)
  call void @llvm.experimental.noalias.scope.decl(metadata !14590)
  %.val.i.i.i = load i64, ptr %i.l, align 8, !range !16, !alias.scope !14591, !noundef !14 ; 2 uses
  %i.ds = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.ds, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCslHe4oyxs8Ro_18tracing_subscriber3fmt9fmt_layer15FormattedFieldsNtNtBG_6format13DefaultFieldsEECsat9HgdBb3qc_16shadowsocks_rust.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %.val1.i.i.i = load ptr, ptr %.sroa.44.0..sroa_idx, align 8, !alias.scope !14591, !nonnull !14, !noundef !14
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #30, !noalias !14591
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCslHe4oyxs8Ro_18tracing_subscriber3fmt9fmt_layer15FormattedFieldsNtNtBG_6format13DefaultFieldsEECsat9HgdBb3qc_16shadowsocks_rust.exit

bb.t:                                             ; preds = %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.k, ptr noundef nonnull align 8 dereferenceable(32) %i.l, i64 32, i1 false)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.al) ]
  call fastcc void @_RINvMs0_NtNtCslHe4oyxs8Ro_18tracing_subscriber8registry10extensionsNtB6_13ExtensionsMut6insertINtNtNtBa_3fmt9fmt_layer15FormattedFieldsNtNtB1z_6format13DefaultFieldsEECsat9HgdBb3qc_16shadowsocks_rust(ptr nonnull %i.al, ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %i.k) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCslHe4oyxs8Ro_18tracing_subscriber3fmt9fmt_layer15FormattedFieldsNtNtBG_6format13DefaultFieldsEECsat9HgdBb3qc_16shadowsocks_rust.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCslHe4oyxs8Ro_18tracing_subscriber3fmt9fmt_layer15FormattedFieldsNtNtBG_6format13DefaultFieldsEECsat9HgdBb3qc_16shadowsocks_rust.exit: ; preds = %bb.s, %bb.r, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.al) ]
  %i.dt = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  br i1 %i.am, label %_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i13, label %bb.u

bb.u:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCslHe4oyxs8Ro_18tracing_subscriber3fmt9fmt_layer15FormattedFieldsNtNtBG_6format13DefaultFieldsEECsat9HgdBb3qc_16shadowsocks_rust.exit
  %i.du = load atomic i64, ptr @_RNvNtNtCs5Xr050g3D4S_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.dv = and i64 %i.du, 9223372036854775807
  %i.dw = icmp eq i64 %i.dv, 0
  br i1 %i.dw, label %_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i13, label %bb.v, !prof !20

bb.v:                                             ; preds = %bb.u
  %i.dx = call noundef zeroext i1 @_RNvNtNtCs5Xr050g3D4S_3std9panicking11panic_count17is_zero_slow_path() #36
  br i1 %i.dx, label %_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i13, label %bb.w

bb.w:                                             ; preds = %bb.v
  store atomic i8 1, ptr %i.dt monotonic, align 8
  br label %_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i13

_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i13: ; preds = %bb.w, %bb.v, %bb.u, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCslHe4oyxs8Ro_18tracing_subscriber3fmt9fmt_layer15FormattedFieldsNtNtBG_6format13DefaultFieldsEECsat9HgdBb3qc_16shadowsocks_rust.exit
  %i.dy = atomicrmw add ptr %i.al, i32 -1073741823 release, align 4
  %i.dz = add i32 %i.dy, -1073741823              ; 2 uses
  %or.cond.not.i.i.i14 = icmp ult i32 %i.dz, 1073741824
  br i1 %or.cond.not.i.i.i14, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry10extensions13ExtensionsMutECsat9HgdBb3qc_16shadowsocks_rust.exit15, label %bb.x, !prof !44

bb.x:                                             ; preds = %_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i13
  call void @_RNvMNtNtNtNtCs5Xr050g3D4S_3std3sys4sync6rwlock5futexNtB2_6RwLock22wake_writer_or_readers(ptr noundef nonnull align 4 %i.al, i32 noundef %i.dz) #30
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry10extensions13ExtensionsMutECsat9HgdBb3qc_16shadowsocks_rust.exit15

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry10extensions13ExtensionsMutECsat9HgdBb3qc_16shadowsocks_rust.exit15: ; preds = %_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i13, %bb.x
  %i.ea = getelementptr inbounds nuw i8, ptr %i.n, i64 80 ; 3 uses
  %i.eb = load atomic i64, ptr %i.ea acquire, align 8, !noalias !14592 ; 2 uses
  %i.ec = and i64 %i.eb, 3                        ; 2 uses
  %i.ed = icmp eq i64 %i.ec, 2
  br i1 %i.ed, label %._crit_edge.i.i.i.i25, label %_RNvXsf_NtNtCsfl4DFYTbOu6_12sharded_slab4page4slotINtB5_9LifecycleNtNtB9_3cfg13DefaultConfigEINtB9_4PackB11_E10from_usizeCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i16, !prof !46

._crit_edge.i.i.i.i25:                            ; preds = %.backedge.i.i.i.i22, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry10extensions13ExtensionsMutECsat9HgdBb3qc_16shadowsocks_rust.exit15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !14592
  store i64 2, ptr %i.b, align 8, !noalias !14592
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !14592
  store ptr %i.b, ptr %i.a, align 8, !noalias !14592
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i26 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs2_NtNtCsf3Ta7LF998c_4core3fmt3numjNtB7_6Binary3fmt, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i26, align 8, !noalias !14592
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking9panic_fmt(ptr noundef nonnull @824, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @826) #37, !noalias !14592
  unreachable

_RNvXsf_NtNtCsfl4DFYTbOu6_12sharded_slab4page4slotINtB5_9LifecycleNtNtB9_3cfg13DefaultConfigEINtB9_4PackB11_E10from_usizeCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i16: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry10extensions13ExtensionsMutECsat9HgdBb3qc_16shadowsocks_rust.exit15, %.backedge.i.i.i.i22
  %i.ee = phi i64 [ %i.el, %.backedge.i.i.i.i22 ], [ %i.ec, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry10extensions13ExtensionsMutECsat9HgdBb3qc_16shadowsocks_rust.exit15 ]
  %.sroa.05.0.i.i4.i.i.i.i17 = phi i64 [ %.sroa.05.0.i.i.be.i.i.i.i24, %.backedge.i.i.i.i22 ], [ %i.eb, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry10extensions13ExtensionsMutECsat9HgdBb3qc_16shadowsocks_rust.exit15 ] ; 5 uses
  %.in.i.i.i.i18 = lshr i64 %.sroa.05.0.i.i4.i.i.i.i17, 2
  %i.ef = and i64 %.in.i.i.i.i18, 562949953421311 ; 2 uses
  %i.eg = icmp eq i64 %i.ef, 1
  %i.eh = icmp eq i64 %i.ee, 1
  %.sroa.0.0.i.i.i.i.i.i19 = and i1 %i.eh, %i.eg
  br i1 %.sroa.0.0.i.i.i.i.i.i19, label %bb.y, label %.thread.i.i.i.i20

bb.y:                                             ; preds = %_RNvXsf_NtNtCsfl4DFYTbOu6_12sharded_slab4page4slotINtB5_9LifecycleNtNtB9_3cfg13DefaultConfigEINtB9_4PackB11_E10from_usizeCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i16
  %i.ei = and i64 %.sroa.05.0.i.i4.i.i.i.i17, -2251799813685248
  %i.ej = or disjoint i64 %i.ei, 3
  %i.ek = cmpxchg ptr %i.ea, i64 %.sroa.05.0.i.i4.i.i.i.i17, i64 %i.ej acq_rel acquire, align 8, !noalias !14592 ; 2 uses
  %.sroa.18.0.in.i.i.i.i.i.i.i27 = extractvalue { i64, i1 } %i.ek, 1
  br i1 %.sroa.18.0.in.i.i.i.i.i.i.i27, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7SpanRefNtNtBE_7sharded8RegistryEECsat9HgdBb3qc_16shadowsocks_rust.exit29.sink.split, label %.backedge.i.i.i.i22

.backedge.i.i.i.i22:                              ; preds = %.thread.i.i.i.i20, %bb.y
  %.pn.i.i.i.i23 = phi { i64, i1 } [ %i.ek, %bb.y ], [ %i.er, %.thread.i.i.i.i20 ]
  %.sroa.05.0.i.i.be.i.i.i.i24 = extractvalue { i64, i1 } %.pn.i.i.i.i23, 0 ; 2 uses
  %i.el = and i64 %.sroa.05.0.i.i.be.i.i.i.i24, 3 ; 2 uses
  %i.em = icmp eq i64 %i.el, 2
  br i1 %i.em, label %._crit_edge.i.i.i.i25, label %_RNvXsf_NtNtCsfl4DFYTbOu6_12sharded_slab4page4slotINtB5_9LifecycleNtNtB9_3cfg13DefaultConfigEINtB9_4PackB11_E10from_usizeCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i16, !prof !47

.thread.i.i.i.i20:                                ; preds = %_RNvXsf_NtNtCsfl4DFYTbOu6_12sharded_slab4page4slotINtB5_9LifecycleNtNtB9_3cfg13DefaultConfigEINtB9_4PackB11_E10from_usizeCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i16
  %i.en = and i64 %.sroa.05.0.i.i4.i.i.i.i17, -2251799813685245
  %i.eo = shl nuw nsw i64 %i.ef, 2
  %i.ep = add nsw i64 %i.eo, -4
  %i.eq = or i64 %i.ep, %i.en
  %i.er = cmpxchg ptr %i.ea, i64 %.sroa.05.0.i.i4.i.i.i.i17, i64 %i.eq acq_rel acquire, align 8, !noalias !14592 ; 2 uses
  %.sroa.18.0.in.i.i.i2.i.i.i.i21 = extractvalue { i64, i1 } %i.er, 1
  br i1 %.sroa.18.0.in.i.i.i2.i.i.i.i21, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7SpanRefNtNtBE_7sharded8RegistryEECsat9HgdBb3qc_16shadowsocks_rust.exit29, label %.backedge.i.i.i.i22
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal fastcc void @_RNvXsa_NtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directiveNtB5_9DirectiveNtNtCsf3Ta7LF998c_4core5clone5Clone5clone(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(80) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.01.i.i.i.i.i.i.i = alloca [64 x i8], align 16 ; 5 uses
  %.sroa.36.i.i.i.i.i.i.i = alloca [10 x i8], align 1 ; 4 uses
  %.sroa.37.i.i.i.i.i.i = alloca [10 x i8], align 1 ; 4 uses
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 3 uses
  %i.c = alloca [24 x i8], align 8                ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !range !24, !noundef !14
  %.not = icmp eq i64 %i.e, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @_RNvXs4_NtCsgCecv3eZDcN_5alloc6stringNtB5_6StringNtNtCsf3Ta7LF998c_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.d) #30
  %.sroa.0.0.copyload = load i64, ptr %i.c, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi i64 [ %.sroa.0.0.copyload, %bb.b ], [ -1, %bb.a ]
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val = load ptr, ptr %i.f, align 8, !nonnull !14, !noundef !14 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val8 = load i64, ptr %i.g, align 8, !noundef !14 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14649)
  %i.h = mul nuw nsw i64 %.val8, 48               ; 2 uses
  %i.i = icmp eq i64 %.val8, 0
  br i1 %i.i, label %_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env5field5MatchENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsat9HgdBb3qc_16shadowsocks_rust.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #30, !noalias !14650
  %i.j = tail call noundef align 8 ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.h, i64 noundef range(i64 1, 9) 8) #30, !noalias !14650 ; 4 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.e, label %.lr.ph.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.h) #34, !noalias !14651
  unreachable

.lr.ph.i.i:                                       ; preds = %bb.d
  %2 = getelementptr inbounds nuw [48 x i8], ptr %.val, i64 %.val8
  %.sroa.01.32..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.01.i.i.i.i.i.i.i, i64 32
  %.sroa.36.792..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.36.i.i.i.i.i.i.i, i64 7
  br label %3

3:                                                ; preds = %_RNvXss_NtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env5fieldNtB5_5MatchNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit.i.i, %.lr.ph.i.i
  %.sroa.0.070.i.i = phi ptr [ %.val, %.lr.ph.i.i ], [ %i.l, %_RNvXss_NtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env5fieldNtB5_5MatchNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit.i.i ] ; 11 uses
  %.sroa.7.069.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.m, %_RNvXss_NtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env5fieldNtB5_5MatchNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit.i.i ] ; 2 uses
  %.sroa.10.068.i.i = phi i64 [ %.val8, %.lr.ph.i.i ], [ %4, %_RNvXss_NtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env5fieldNtB5_5MatchNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit.i.i ]
  %4 = add nsw i64 %.sroa.10.068.i.i, -1          ; 2 uses
  %5 = icmp eq ptr %.sroa.0.070.i.i, %2
  br i1 %5, label %_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env5field5MatchENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsat9HgdBb3qc_16shadowsocks_rust.exit, label %bb.f

bb.f:                                             ; preds = %3
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.0.070.i.i, i64 48
  %i.m = add nuw nsw i64 %.sroa.7.069.i.i, 1
  %i.n = getelementptr inbounds nuw [48 x i8], ptr %i.j, i64 %.sroa.7.069.i.i ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14652)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !14653
  call void @_RNvXs4_NtCsgCecv3eZDcN_5alloc6stringNtB5_6StringNtNtCsf3Ta7LF998c_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.sroa.0.070.i.i) #30, !noalias !14654
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.0.070.i.i, i64 24
  %i.p = load i8, ptr %i.o, align 8, !range !21, !alias.scope !14655, !noalias !14656, !noundef !14 ; 3 uses
  %.not.i.i.i = icmp eq i8 %i.p, -1
  br i1 %.not.i.i.i, label %_RNvXss_NtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env5fieldNtB5_5MatchNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14657)
  switch i8 %i.p, label %default.unreachable [
    i8 0, label %bb.h
    i8 1, label %bb.i
    i8 2, label %bb.j
    i8 3, label %bb.k
    i8 4, label %_RNvXss_NtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env5fieldNtB5_5MatchNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit.i.i
    i8 5, label %bb.l
    i8 6, label %bb.m
  ]

default.unreachable:                              ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.g
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.0.070.i.i, i64 25
  %i.r = load i8, ptr %i.q, align 1, !range !19, !alias.scope !14658, !noalias !14656, !noundef !14
  br label %_RNvXss_NtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env5fieldNtB5_5MatchNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit.i.i

bb.i:                                             ; preds = %bb.g
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.070.i.i, i64 32
  %i.t = load i64, ptr %i.s, align 8, !alias.scope !14658, !noalias !14656, !noundef !14
  br label %_RNvXss_NtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env5fieldNtB5_5MatchNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit.i.i

bb.j:                                             ; preds = %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.070.i.i, i64 32
  %i.v = load i64, ptr %i.u, align 8, !alias.scope !14658, !noalias !14656, !noundef !14
  br label %_RNvXss_NtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env5fieldNtB5_5MatchNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit.i.i

bb.k:                                             ; preds = %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0.070.i.i, i64 32
  %i.x = load i64, ptr %i.w, align 8, !alias.scope !14658, !noalias !14656, !noundef !14
  br label %_RNvXss_NtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env5fieldNtB5_5MatchNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit.i.i

bb.l:                                             ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.070.i.i, i64 32
  %i.z = load ptr, ptr %i.y, align 8, !alias.scope !14658, !noalias !14656, !nonnull !14, !noundef !14 ; 2 uses
  %i.aa = atomicrmw add ptr %i.z, i64 1 monotonic, align 8, !noalias !14659
  %i.ab = icmp slt i64 %i.aa, 0
  br i1 %i.ab, label %bb.ai, label %bb.ah

bb.m:                                             ; preds = %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0.070.i.i, i64 32
  %.val.i.i.i.i = load ptr, ptr %i.ac, align 8, !alias.scope !14658, !noalias !14656 ; 32 uses
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #30, !noalias !14659
  %i.ad = tail call noalias noundef align 16 dereferenceable_or_null(832) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 832, i64 noundef range(i64 1, -9223372036854775807) 16) #30, !noalias !14659 ; 37 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %bb.n, label %_RNvMs_NtCsgCecv3eZDcN_5alloc5boxedINtB4_3BoxNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env5field12MatchPatternE13new_uninit_inCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i, !prof !23

bb.n:                                             ; preds = %bb.m
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 16, i64 noundef 832) #34, !noalias !14659
  unreachable

_RNvMs_NtCsgCecv3eZDcN_5alloc5boxedINtB4_3BoxNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env5field12MatchPatternE13new_uninit_inCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i: ; preds = %bb.m
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14660)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.37.i.i.i.i.i.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14661)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.01.i.i.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.36.i.i.i.i.i.i.i)
  %i.af = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14662)
  %i.ag = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 120
  %.val29.i.i.i.i.i.i.i.i = load ptr, ptr %i.ag, align 8, !alias.scope !14663, !noalias !14659, !nonnull !14, !noundef !14
  %i.ah = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 128
  %.val30.i.i.i.i.i.i.i.i = load i64, ptr %i.ah, align 8, !alias.scope !14663, !noalias !14659, !noundef !14 ; 4 uses
  %i.ai = shl nuw nsw i64 %.val30.i.i.i.i.i.i.i.i, 2 ; 3 uses
  %i.aj = icmp eq i64 %.val30.i.i.i.i.i.i.i.i, 0
  br i1 %i.aj, label %_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecmENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i.i, label %bb.o

bb.o:                                             ; preds = %_RNvMs_NtCsgCecv3eZDcN_5alloc5boxedINtB4_3BoxNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env5field12MatchPatternE13new_uninit_inCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #30, !noalias !14664
  %i.ak = tail call noundef align 4 ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.ai, i64 noundef range(i64 1, 9) 4) #30, !noalias !14664 ; 3 uses
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef 4, i64 %i.ai) #34, !noalias !14665
  unreachable

bb.q:                                             ; preds = %bb.o
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ak, ptr nonnull readonly align 4 %.val29.i.i.i.i.i.i.i.i, i64 %i.ai, i1 false), !noalias !14666
  br label %_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecmENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i.i

_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecmENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i.i: ; preds = %bb.q, %_RNvMs_NtCsgCecv3eZDcN_5alloc5boxedINtB4_3BoxNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env5field12MatchPatternE13new_uninit_inCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i
  %.sroa.5.0.i.i.i.i.i.i.i.i = phi ptr [ %i.ak, %bb.q ], [ inttoptr (i64 4 to ptr), %_RNvMs_NtCsgCecv3eZDcN_5alloc5boxedINtB4_3BoxNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env5field12MatchPatternE13new_uninit_inCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i ]
  %i.am = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 392
  %i.an = load i64, ptr %i.am, align 8, !alias.scope !14663, !noalias !14659, !noundef !14
  %i.ao = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 480
  %i.ap = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 504
  %.val27.i.i.i.i.i.i.i.i = load ptr, ptr %i.ap, align 8, !alias.scope !14663, !noalias !14659, !nonnull !14, !noundef !14
  %i.aq = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 512
  %.val28.i.i.i.i.i.i.i.i = load i64, ptr %i.aq, align 8, !alias.scope !14663, !noalias !14659, !noundef !14 ; 4 uses
  %i.ar = shl nuw nsw i64 %.val28.i.i.i.i.i.i.i.i, 2 ; 3 uses
  %i.as = icmp eq i64 %.val28.i.i.i.i.i.i.i.i, 0
  br i1 %i.as, label %_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecmENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsat9HgdBb3qc_16shadowsocks_rust.exit32.i.i.i.i.i.i.i.i, label %bb.r

bb.r:                                             ; preds = %_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecmENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i.i
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #30, !noalias !14667
  %i.at = tail call noundef align 4 ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.ar, i64 noundef range(i64 1, 9) 4) #30, !noalias !14667 ; 3 uses
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef 4, i64 %i.ar) #34, !noalias !14668
  unreachable

bb.t:                                             ; preds = %bb.r
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.at, ptr nonnull readonly align 4 %.val27.i.i.i.i.i.i.i.i, i64 %i.ar, i1 false), !noalias !14669
  br label %_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecmENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsat9HgdBb3qc_16shadowsocks_rust.exit32.i.i.i.i.i.i.i.i

_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecmENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsat9HgdBb3qc_16shadowsocks_rust.exit32.i.i.i.i.i.i.i.i: ; preds = %bb.t, %_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecmENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i.i
  %.sroa.540.0.i.i.i.i.i.i.i.i = phi ptr [ %i.at, %bb.t ], [ inttoptr (i64 4 to ptr), %_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecmENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i.i ]
  %i.av = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 800
  %i.aw = load i8, ptr %i.av, align 16, !range !28, !alias.scope !14663, !noalias !14659, !noundef !14
  %i.ax = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 792
  %i.ay = load i64, ptr %i.ax, align 8, !alias.scope !14663, !noalias !14659, !noundef !14
  %i.az = load i64, ptr %i.ao, align 16, !range !31, !alias.scope !14663, !noalias !14659, !noundef !14 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 488
  %i.bb = load i64, ptr %i.ba, align 8, !alias.scope !14663, !noalias !14659
  %i.bc = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 520
  %i.bd = load i32, ptr %i.bc, align 8, !range !13, !alias.scope !14663, !noalias !14659, !noundef !14 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 524
  %i.bf = load i32, ptr %i.be, align 4, !alias.scope !14663, !noalias !14659
  %i.bg = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 528
  %i.bh = load i32, ptr %i.bg, align 16, !range !13, !alias.scope !14663, !noalias !14659, !noundef !14 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 532
  %i.bj = load i32, ptr %i.bi, align 4, !alias.scope !14663, !noalias !14659
  %i.bk = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 408
  %.val25.i.i.i.i.i.i.i.i = load ptr, ptr %i.bk, align 8, !alias.scope !14663, !noalias !14659, !nonnull !14, !noundef !14
  %i.bl = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 416
  %.val26.i.i.i.i.i.i.i.i = load i64, ptr %i.bl, align 16, !alias.scope !14663, !noalias !14659, !noundef !14 ; 4 uses
  %i.bm = shl nuw nsw i64 %.val26.i.i.i.i.i.i.i.i, 2 ; 3 uses
  %i.bn = icmp eq i64 %.val26.i.i.i.i.i.i.i.i, 0
  br i1 %i.bn, label %_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecmENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsat9HgdBb3qc_16shadowsocks_rust.exit34.i.i.i.i.i.i.i.i, label %bb.u

bb.u:                                             ; preds = %_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecmENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsat9HgdBb3qc_16shadowsocks_rust.exit32.i.i.i.i.i.i.i.i
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #30, !noalias !14670
  %i.bo = tail call noundef align 4 ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.bm, i64 noundef range(i64 1, 9) 4) #30, !noalias !14670 ; 3 uses
  %i.bp = icmp eq ptr %i.bo, null
  br i1 %i.bp, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef 4, i64 %i.bm) #34, !noalias !14671
  unreachable

bb.w:                                             ; preds = %bb.u
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.bo, ptr nonnull readonly align 4 %.val25.i.i.i.i.i.i.i.i, i64 %i.bm, i1 false), !noalias !14672
  br label %_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecmENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsat9HgdBb3qc_16shadowsocks_rust.exit34.i.i.i.i.i.i.i.i

_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecmENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsat9HgdBb3qc_16shadowsocks_rust.exit34.i.i.i.i.i.i.i.i: ; preds = %bb.w, %_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecmENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsat9HgdBb3qc_16shadowsocks_rust.exit32.i.i.i.i.i.i.i.i
  %.sroa.543.0.i.i.i.i.i.i.i.i = phi ptr [ %i.bo, %bb.w ], [ inttoptr (i64 4 to ptr), %_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecmENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsat9HgdBb3qc_16shadowsocks_rust.exit32.i.i.i.i.i.i.i.i ]
  %i.bq = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 432
  %.val23.i.i.i.i.i.i.i.i = load ptr, ptr %i.bq, align 16, !alias.scope !14663, !noalias !14659, !nonnull !14, !noundef !14
  %i.br = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 440
  %.val24.i.i.i.i.i.i.i.i = load i64, ptr %i.br, align 8, !alias.scope !14663, !noalias !14659, !noundef !14 ; 4 uses
  %i.bs = shl nuw nsw i64 %.val24.i.i.i.i.i.i.i.i, 2 ; 3 uses
  %i.bt = icmp eq i64 %.val24.i.i.i.i.i.i.i.i, 0
  br i1 %i.bt, label %_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecmENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsat9HgdBb3qc_16shadowsocks_rust.exit36.i.i.i.i.i.i.i.i, label %bb.x

bb.x:                                             ; preds = %_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecmENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsat9HgdBb3qc_16shadowsocks_rust.exit34.i.i.i.i.i.i.i.i
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #30, !noalias !14673
  %i.bu = tail call noundef align 4 ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.bs, i64 noundef range(i64 1, 9) 4) #30, !noalias !14673 ; 3 uses
  %i.bv = icmp eq ptr %i.bu, null
  br i1 %i.bv, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef 4, i64 %i.bs) #34, !noalias !14674
  unreachable

bb.z:                                             ; preds = %bb.x
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.bu, ptr nonnull readonly align 4 %.val23.i.i.i.i.i.i.i.i, i64 %i.bs, i1 false), !noalias !14675
  br label %_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecmENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsat9HgdBb3qc_16shadowsocks_rust.exit36.i.i.i.i.i.i.i.i

_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecmENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsat9HgdBb3qc_16shadowsocks_rust.exit36.i.i.i.i.i.i.i.i: ; preds = %bb.z, %_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecmENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsat9HgdBb3qc_16shadowsocks_rust.exit34.i.i.i.i.i.i.i.i
  %.sroa.546.0.i.i.i.i.i.i.i.i = phi ptr [ %i.bu, %bb.z ], [ inttoptr (i64 4 to ptr), %_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecmENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsat9HgdBb3qc_16shadowsocks_rust.exit34.i.i.i.i.i.i.i.i ]
  %i.bw = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 448
  %i.bx = load i64, ptr %i.bw, align 16, !alias.scope !14663, !noalias !14659, !noundef !14
  %i.by = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 464
  %.val.i.i.i.i.i.i.i.i = load ptr, ptr %i.by, align 16, !alias.scope !14663, !noalias !14659, !nonnull !14, !noundef !14
  %i.bz = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 472
  %.val22.i.i.i.i.i.i.i.i = load i64, ptr %i.bz, align 8, !alias.scope !14663, !noalias !14659, !noundef !14 ; 4 uses
  %i.ca = shl nuw nsw i64 %.val22.i.i.i.i.i.i.i.i, 2 ; 3 uses
  %i.cb = icmp eq i64 %.val22.i.i.i.i.i.i.i.i, 0
  br i1 %i.cb, label %_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecmENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsat9HgdBb3qc_16shadowsocks_rust.exit38.i.i.i.i.i.i.i.i, label %bb.aa

bb.aa:                                            ; preds = %_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecmENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsat9HgdBb3qc_16shadowsocks_rust.exit36.i.i.i.i.i.i.i.i
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #30, !noalias !14676
  %i.cc = tail call noundef align 4 ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.ca, i64 noundef range(i64 1, 9) 4) #30, !noalias !14676 ; 3 uses
  %i.cd = icmp eq ptr %i.cc, null
  br i1 %i.cd, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef 4, i64 %i.ca) #34, !noalias !14677
  unreachable

bb.ac:                                            ; preds = %bb.aa
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.cc, ptr nonnull readonly align 4 %.val.i.i.i.i.i.i.i.i, i64 %i.ca, i1 false), !noalias !14678
  br label %_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecmENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsat9HgdBb3qc_16shadowsocks_rust.exit38.i.i.i.i.i.i.i.i

_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecmENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsat9HgdBb3qc_16shadowsocks_rust.exit38.i.i.i.i.i.i.i.i: ; preds = %bb.ac, %_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecmENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsat9HgdBb3qc_16shadowsocks_rust.exit36.i.i.i.i.i.i.i.i
  %.sroa.549.0.i.i.i.i.i.i.i.i = phi ptr [ %i.cc, %bb.ac ], [ inttoptr (i64 4 to ptr), %_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecmENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsat9HgdBb3qc_16shadowsocks_rust.exit36.i.i.i.i.i.i.i.i ]
  %i.ce = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 104
  %i.cf = load i8, ptr %i.ce, align 8, !range !28, !alias.scope !14663, !noalias !14659, !noundef !14 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.cf, 2
  br i1 %.not.i.i.i.i.i.i.i.i, label %_RNvXsD_NtNtCsb6671No4yaL_14regex_automata3dfa5denseINtB5_3DFAINtNtCsgCecv3eZDcN_5alloc3vec3VecmEENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i, label %bb.ad

bb.ad:                                            ; preds = %_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecmENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsat9HgdBb3qc_16shadowsocks_rust.exit38.i.i.i.i.i.i.i.i
  %i.cg = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 80 ; 2 uses
  %i.ch = load ptr, ptr %i.cg, align 16, !alias.scope !14663, !noalias !14659, !nonnull !14, !noundef !14
  %i.ci = atomicrmw add ptr %i.ch, i64 1 monotonic, align 8, !noalias !14679
  %i.cj = icmp slt i64 %i.ci, 0
  br i1 %i.cj, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ck = load <2 x ptr>, ptr %i.cg, align 16, !alias.scope !14663, !noalias !14659
  %i.cl = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 96
  %i.cm = load i64, ptr %i.cl, align 16, !alias.scope !14663, !noalias !14659, !noundef !14
  br label %_RNvXsD_NtNtCsb6671No4yaL_14regex_automata3dfa5denseINtB5_3DFAINtNtCsgCecv3eZDcN_5alloc3vec3VecmEENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i

bb.af:                                            ; preds = %bb.ad
  tail call void @llvm.trap()
  unreachable

_RNvXsD_NtNtCsb6671No4yaL_14regex_automata3dfa5denseINtB5_3DFAINtNtCsgCecv3eZDcN_5alloc3vec3VecmEENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i: ; preds = %bb.ae, %_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecmENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsat9HgdBb3qc_16shadowsocks_rust.exit38.i.i.i.i.i.i.i.i
  %.sroa.05.sroa.5.0.i.i.i.i.i.i.i.i = phi i64 [ %i.cm, %bb.ae ], [ undef, %_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecmENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsat9HgdBb3qc_16shadowsocks_rust.exit38.i.i.i.i.i.i.i.i ]
  %i.cn = phi <2 x ptr> [ %i.ck, %bb.ae ], [ undef, %_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecmENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsat9HgdBb3qc_16shadowsocks_rust.exit38.i.i.i.i.i.i.i.i ]
  %i.co = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %.sroa.01.32..sroa_idx.i.i.i.i.i.i.i, ptr noundef nonnull readonly align 16 dereferenceable(32) %i.co, i64 32, i1 false), !noalias !14680
  %i.cp = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 808
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.36.792..sroa_idx.i.i.i.i.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(3) %i.cp, i64 3, i1 false), !noalias !14680
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %.sroa.01.i.i.i.i.i.i.i, ptr noundef nonnull readonly align 16 dereferenceable(32) %i.af, i64 32, i1 false), !noalias !14680
  %i.cq = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 816
  %i.cr = load <2 x i32>, ptr %i.cq, align 16, !alias.scope !14681, !noalias !14659
  %i.cs = load ptr, ptr %.val.i.i.i.i, align 16, !alias.scope !14681, !noalias !14659, !nonnull !14, !noundef !14 ; 2 uses
  %i.ct = atomicrmw add ptr %i.cs, i64 1 monotonic, align 8, !noalias !14682
  %i.cu = icmp slt i64 %i.ct, 0
  br i1 %i.cu, label %bb.ag, label %_RNvXsd_NtCsgCecv3eZDcN_5alloc5boxedINtB5_3BoxNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env5field12MatchPatternENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i

bb.ag:                                            ; preds = %_RNvXsD_NtNtCsb6671No4yaL_14regex_automata3dfa5denseINtB5_3DFAINtNtCsgCecv3eZDcN_5alloc3vec3VecmEENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i
  tail call void @llvm.trap()
  unreachable

_RNvXsd_NtCsgCecv3eZDcN_5alloc5boxedINtB5_3BoxNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env5field12MatchPatternENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i: ; preds = %_RNvXsD_NtNtCsb6671No4yaL_14regex_automata3dfa5denseINtB5_3DFAINtNtCsgCecv3eZDcN_5alloc3vec3VecmEENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i
  %i.cv = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 136
  %i.cw = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 536
  %i.cx = trunc nuw i64 %i.az to i1
  %.sroa.512.0.i.i.i.i.i.i.i.i = select i1 %i.cx, i64 %i.bb, i64 undef
  %i.cy = trunc nuw i32 %i.bd to i1
  %.sroa.514.0.i.i.i.i.i.i.i.i = select i1 %i.cy, i32 %i.bf, i32 undef
  %i.cz = trunc nuw i32 %i.bh to i1
  %.sroa.516.0.i.i.i.i.i.i.i.i = select i1 %i.cz, i32 %i.bj, i32 undef
  %i.da = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 8
  %i.db = load i64, ptr %i.da, align 8, !alias.scope !14681, !noalias !14659, !noundef !14
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %.sroa.5.0..sroa_idx.i.i.i.i.i.i, ptr noundef nonnull align 16 dereferenceable(64) %.sroa.01.i.i.i.i.i.i.i, i64 64, i1 false), !noalias !14683
  %.sroa.13.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 136
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %.sroa.13.0..sroa_idx.i.i.i.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(256) %i.cv, i64 256, i1 false), !noalias !14659
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %.sroa.37.i.i.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(10) %.sroa.36.i.i.i.i.i.i.i, i64 10, i1 false), !noalias !14684
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.01.i.i.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.36.i.i.i.i.i.i.i)
  store ptr %i.cs, ptr %i.ad, align 16, !noalias !14683
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store i64 %i.db, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !14683
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 80
  store <2 x ptr> %i.cn, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i, align 16, !noalias !14683
  %.sroa.8.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 96
  store i64 %.sroa.05.sroa.5.0.i.i.i.i.i.i.i.i, ptr %.sroa.8.0..sroa_idx.i.i.i.i.i.i, align 16, !noalias !14683
  %.sroa.9.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 104
  store i8 %i.cf, ptr %.sroa.9.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !14683
  %.sroa.101.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 112
  store i64 %.val30.i.i.i.i.i.i.i.i, ptr %.sroa.101.0..sroa_idx.i.i.i.i.i.i, align 16, !noalias !14683
  %.sroa.11.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 120
  store ptr %.sroa.5.0.i.i.i.i.i.i.i.i, ptr %.sroa.11.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !14683
  %.sroa.12.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 128
  store i64 %.val30.i.i.i.i.i.i.i.i, ptr %.sroa.12.0..sroa_idx.i.i.i.i.i.i, align 16, !noalias !14683
  %.sroa.14.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 392
  store i64 %i.an, ptr %.sroa.14.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !14683
  %.sroa.15.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 400
  store i64 %.val26.i.i.i.i.i.i.i.i, ptr %.sroa.15.0..sroa_idx.i.i.i.i.i.i, align 16, !noalias !14683
  %.sroa.16.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 408
  store ptr %.sroa.543.0.i.i.i.i.i.i.i.i, ptr %.sroa.16.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !14683
  %.sroa.17.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 416
  store i64 %.val26.i.i.i.i.i.i.i.i, ptr %.sroa.17.0..sroa_idx.i.i.i.i.i.i, align 16, !noalias !14683
  %.sroa.18.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 424
  store i64 %.val24.i.i.i.i.i.i.i.i, ptr %.sroa.18.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !14683
  %.sroa.19.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 432
  store ptr %.sroa.546.0.i.i.i.i.i.i.i.i, ptr %.sroa.19.0..sroa_idx.i.i.i.i.i.i, align 16, !noalias !14683
  %.sroa.20.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 440
  store i64 %.val24.i.i.i.i.i.i.i.i, ptr %.sroa.20.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !14683
  %.sroa.21.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 448
  store i64 %i.bx, ptr %.sroa.21.0..sroa_idx.i.i.i.i.i.i, align 16, !noalias !14683
  %.sroa.22.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 456
  store i64 %.val22.i.i.i.i.i.i.i.i, ptr %.sroa.22.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !14683
  %.sroa.23.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 464
  store ptr %.sroa.549.0.i.i.i.i.i.i.i.i, ptr %.sroa.23.0..sroa_idx.i.i.i.i.i.i, align 16, !noalias !14683
  %.sroa.24.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 472
  store i64 %.val22.i.i.i.i.i.i.i.i, ptr %.sroa.24.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !14683
  %.sroa.25.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 480
  store i64 %i.az, ptr %.sroa.25.0..sroa_idx.i.i.i.i.i.i, align 16, !noalias !14683
  %.sroa.26.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 488
  store i64 %.sroa.512.0.i.i.i.i.i.i.i.i, ptr %.sroa.26.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !14683
  %.sroa.27.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 496
  store i64 %.val28.i.i.i.i.i.i.i.i, ptr %.sroa.27.0..sroa_idx.i.i.i.i.i.i, align 16, !noalias !14683
  %.sroa.28.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 504
  store ptr %.sroa.540.0.i.i.i.i.i.i.i.i, ptr %.sroa.28.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !14683
  %.sroa.29.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 512
  store i64 %.val28.i.i.i.i.i.i.i.i, ptr %.sroa.29.0..sroa_idx.i.i.i.i.i.i, align 16, !noalias !14683
  %.sroa.30.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 520
  store i32 %i.bd, ptr %.sroa.30.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !14683
  %.sroa.31.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 524
  store i32 %.sroa.514.0.i.i.i.i.i.i.i.i, ptr %.sroa.31.0..sroa_idx.i.i.i.i.i.i, align 4, !noalias !14683
  %.sroa.32.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 528
  store i32 %i.bh, ptr %.sroa.32.0..sroa_idx.i.i.i.i.i.i, align 16, !noalias !14683
  %.sroa.33.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 532
  store i32 %.sroa.516.0.i.i.i.i.i.i.i.i, ptr %.sroa.33.0..sroa_idx.i.i.i.i.i.i, align 4, !noalias !14683
  %.sroa.34.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 536
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %.sroa.34.0..sroa_idx.i.i.i.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(256) %i.cw, i64 256, i1 false), !noalias !14659
  %.sroa.35.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 792
  store i64 %i.ay, ptr %.sroa.35.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !14683
  %.sroa.36.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 800
  store i8 %i.aw, ptr %.sroa.36.0..sroa_idx.i.i.i.i.i.i, align 16, !noalias !14683
  %.sroa.37.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 801
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %.sroa.37.0..sroa_idx.i.i.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(10) %.sroa.37.i.i.i.i.i.i, i64 10, i1 false), !noalias !14683
  %.sroa.382.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 816
  store <2 x i32> %i.cr, ptr %.sroa.382.0..sroa_idx.i.i.i.i.i.i, align 16, !noalias !14683
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.37.i.i.i.i.i.i)
  %i.dc = ptrtoint ptr %i.ad to i64
  br label %_RNvXss_NtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env5fieldNtB5_5MatchNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit.i.i

bb.ah:                                            ; preds = %bb.l
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.0.070.i.i, i64 40
  %i.de = load i64, ptr %i.dd, align 8, !alias.scope !14658, !noalias !14656, !noundef !14
  %i.df = ptrtoint ptr %i.z to i64
  br label %_RNvXss_NtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env5fieldNtB5_5MatchNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit.i.i

bb.ai:                                            ; preds = %bb.l
  tail call void @llvm.trap()
  unreachable

_RNvXss_NtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env5fieldNtB5_5MatchNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit.i.i: ; preds = %bb.ah, %_RNvXsd_NtCsgCecv3eZDcN_5alloc5boxedINtB5_3BoxNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env5field12MatchPatternENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f
  %.sroa.5.sroa.6.0.i.i.i = phi i64 [ undef, %bb.f ], [ undef, %bb.h ], [ undef, %bb.i ], [ undef, %bb.j ], [ undef, %bb.k ], [ undef, %bb.g ], [ %i.de, %bb.ah ], [ undef, %_RNvXsd_NtCsgCecv3eZDcN_5alloc5boxedINtB5_3BoxNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env5field12MatchPatternENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i ]
  %.sroa.5.sroa.5.0.i.i.i = phi i64 [ undef, %bb.f ], [ undef, %bb.h ], [ %i.t, %bb.i ], [ %i.v, %bb.j ], [ %i.x, %bb.k ], [ undef, %bb.g ], [ %i.df, %bb.ah ], [ %i.dc, %_RNvXsd_NtCsgCecv3eZDcN_5alloc5boxedINtB5_3BoxNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env5field12MatchPatternENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i ]
  %.sroa.5.sroa.0.0.i.i.i = phi i8 [ undef, %bb.f ], [ %i.r, %bb.h ], [ undef, %bb.i ], [ undef, %bb.j ], [ undef, %bb.k ], [ undef, %bb.g ], [ undef, %bb.ah ], [ undef, %_RNvXsd_NtCsgCecv3eZDcN_5alloc5boxedINtB5_3BoxNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env5field12MatchPatternENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !14651
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !14653
  %.sroa.423.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store i8 %i.p, ptr %.sroa.423.0..sroa_idx.i.i, align 8, !noalias !14651
  %.sroa.524.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 25
  store i8 %.sroa.5.sroa.0.0.i.i.i, ptr %.sroa.524.0..sroa_idx.i.i, align 1, !noalias !14651
  %.sroa.726.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  store i64 %.sroa.5.sroa.5.0.i.i.i, ptr %.sroa.726.0..sroa_idx.i.i, align 8, !noalias !14651
  %.sroa.827.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  store i64 %.sroa.5.sroa.6.0.i.i.i, ptr %.sroa.827.0..sroa_idx.i.i, align 8, !noalias !14651
  %i.dg = icmp eq i64 %4, 0
  br i1 %i.dg, label %_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env5field5MatchENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsat9HgdBb3qc_16shadowsocks_rust.exit, label %3

_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env5field5MatchENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsat9HgdBb3qc_16shadowsocks_rust.exit: ; preds = %3, %_RNvXss_NtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env5fieldNtB5_5MatchNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit.i.i, %bb.c
  %.sroa.10.0.i119.i.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.c ], [ %i.j, %_RNvXss_NtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env5fieldNtB5_5MatchNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit.i.i ], [ %i.j, %3 ]
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.di = load i64, ptr %i.dh, align 8, !range !24, !noundef !14
  %.not7 = icmp eq i64 %i.di, -1
  br i1 %.not7, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env5field5MatchENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsat9HgdBb3qc_16shadowsocks_rust.exit
  call void @_RNvXs4_NtCsgCecv3eZDcN_5alloc6stringNtB5_6StringNtNtCsf3Ta7LF998c_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dh) #30
  %.sroa.03.0.copyload = load i64, ptr %i.b, align 8
  br label %bb.ak

bb.ak:                                            ; preds = %_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env5field5MatchENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsat9HgdBb3qc_16shadowsocks_rust.exit, %bb.aj
  %.sroa.03.0 = phi i64 [ %.sroa.03.0.copyload, %bb.aj ], [ -1, %_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env5field5MatchENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsat9HgdBb3qc_16shadowsocks_rust.exit ]
  %i.dj = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.dk = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.dl = load i64, ptr %1, align 8, !range !22, !noundef !14
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.0.0, ptr %i.dm, align 8
  %.sroa.5.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx2, ptr noundef nonnull align 8 dereferenceable(16) %i.dj, i64 16, i1 false)
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.val8, ptr %i.dn, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.10.0.i119.i.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.val8, ptr %.sroa.510.0..sroa_idx, align 8
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %.sroa.03.0, ptr %i.do, align 8
  %.sroa.55.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.55.0..sroa_idx6, ptr noundef nonnull align 8 dereferenceable(16) %i.dk, i64 16, i1 false)
  store i64 %i.dl, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvXsb_NtCs5Xr050g3D4S_3std2fsNtB5_4FileNtNtNtCsf3Ta7LF998c_4core2io5write5Write17is_write_vectored(ptr noalias nofree readonly align 4 captures(none) %0) unnamed_addr #8 {
bb.a:
  ret i1 true
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noalias noundef ptr @_RNvXsb_NtCs5Xr050g3D4S_3std2fsNtB5_4FileNtNtNtCsf3Ta7LF998c_4core2io5write5Write5flush(ptr noalias nofree readnone align 4 captures(none) %0) unnamed_addr #8 {
bb.a:
  ret ptr null
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsb_NtCsat9HgdBb3qc_16shadowsocks_rust6configNtB5_15LogFormatConfigNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #6 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @145, i64 noundef 15, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @146, i64 noundef 12, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @758) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsc_NtNtCsf3Ta7LF998c_4core3num5errorNtB5_13ParseIntErrorNtNtB9_3fmt5Debug3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #6 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @799, i64 noundef 13, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @744, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @724) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RNvXsc_NtNtCslDQ48jUgq5Q_12clap_builder7builder12value_parserFG_RL0_eEINtNtCsf3Ta7LF998c_4core6result6ResultjNtNtNtB1b_3num5error13ParseIntErrorENtB5_14AnyValueParser10parse_ref_Csat9HgdBb3qc_16shadowsocks_rust(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(712) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(600) %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef %5, i8 range(i8 0, 3) %6) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.val = load ptr, ptr %1, align 8
  %i.a = tail call fastcc { i64, ptr } @_RNvXsd_NtNtCslDQ48jUgq5Q_12clap_builder7builder12value_parserFG_RL0_eEINtNtCsf3Ta7LF998c_4core6result6ResultjNtNtNtB1b_3num5error13ParseIntErrorENtB5_16TypedValueParser9parse_refCsat9HgdBb3qc_16shadowsocks_rust(ptr readonly %.val, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(712) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(600) %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef %5) #30 ; 2 uses
  %i.b = extractvalue { i64, ptr } %i.a, 0
  %i.c = extractvalue { i64, ptr } %i.a, 1        ; 2 uses
  %i.d = trunc nuw i64 %i.b to i1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.c, ptr %i.e, align 8
  store ptr null, ptr %0, align 8
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #30, !noalias !14687
  %i.f = tail call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef range(i64 1, -9223372036854775807) 8) #30, !noalias !14687 ; 5 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.d, label %_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit, !prof !17

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #34, !noalias !14687
  unreachable

_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.c
  %i.h = ptrtoint ptr %i.c to i64
  store i64 1, ptr %i.f, align 8
  %.sroa.4.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx6, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 %i.h, ptr %.sroa.5.0..sroa_idx, align 8
  store ptr %i.f, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @800, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.53.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) @21, i64 16, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvXsc_NtNtCslDQ48jUgq5Q_12clap_builder7builder12value_parserFG_RL0_eEINtNtCsf3Ta7LF998c_4core6result6ResultjNtNtNtB1b_3num5error13ParseIntErrorENtB5_14AnyValueParser15possible_valuesCsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXsc_NtNtCslDQ48jUgq5Q_12clap_builder7builder12value_parserFG_RL0_eEINtNtCsf3Ta7LF998c_4core6result6ResultjNtNtNtB1b_3num5error13ParseIntErrorENtB5_14AnyValueParser7type_idCsat9HgdBb3qc_16shadowsocks_rust(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #11 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @21, i64 16, i1 false)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal { ptr, ptr } @_RNvXsc_NtNtCslDQ48jUgq5Q_12clap_builder7builder12value_parserFG_RL0_eEINtNtCsf3Ta7LF998c_4core6result6ResultjNtNtNtB1b_3num5error13ParseIntErrorENtB5_14AnyValueParser9clone_anyCsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !14, !noundef !14
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #30
  %i.a = tail call noundef align 8 dereferenceable_or_null(8) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 8, i64 noundef range(i64 1, -9223372036854775807) 8) #30 ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit, !prof !17

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 8) #34
  unreachable

_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.a
  store ptr %.val, ptr %i.a, align 8
  %i.c = insertvalue { ptr, ptr } poison, ptr %i.a, 0
  %i.d = insertvalue { ptr, ptr } %i.c, ptr @475, 1
  ret { ptr, ptr } %i.d
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RNvXsc_NtNtCslDQ48jUgq5Q_12clap_builder7builder12value_parserFG_RL0_eEINtNtCsf3Ta7LF998c_4core6result6ResultjNtNtNtB1b_3num5error13ParseIntErrorENtB5_14AnyValueParser9parse_refCsat9HgdBb3qc_16shadowsocks_rust(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(712) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(600) %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.val = load ptr, ptr %1, align 8
  %i.a = tail call fastcc { i64, ptr } @_RNvXsd_NtNtCslDQ48jUgq5Q_12clap_builder7builder12value_parserFG_RL0_eEINtNtCsf3Ta7LF998c_4core6result6ResultjNtNtNtB1b_3num5error13ParseIntErrorENtB5_16TypedValueParser9parse_refCsat9HgdBb3qc_16shadowsocks_rust(ptr %.val, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(712) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(600) %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef %5) #30 ; 2 uses
  %i.b = extractvalue { i64, ptr } %i.a, 0
  %i.c = extractvalue { i64, ptr } %i.a, 1        ; 2 uses
  %i.d = trunc nuw i64 %i.b to i1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.c, ptr %i.e, align 8
  store ptr null, ptr %0, align 8
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #30, !noalias !14690
  %i.f = tail call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef range(i64 1, -9223372036854775807) 8) #30, !noalias !14690 ; 5 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.d, label %_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit, !prof !17

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #34, !noalias !14690
  unreachable

_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.c
  %i.h = ptrtoint ptr %i.c to i64
  store i64 1, ptr %i.f, align 8
  %.sroa.4.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx6, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 %i.h, ptr %.sroa.5.0..sroa_idx, align 8
  store ptr %i.f, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @800, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.53.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) @21, i64 16, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RNvXsc_NtNtCslDQ48jUgq5Q_12clap_builder7builder12value_parserINtB5_20RangedI64ValueParsermENtB5_14AnyValueParser10parse_ref_Csat9HgdBb3qc_16shadowsocks_rust(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(712) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(600) %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef %5, i8 range(i8 0, 3) %6) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call fastcc void @_RNvXsu_NtNtCslDQ48jUgq5Q_12clap_builder7builder12value_parserINtB5_20RangedI64ValueParsermENtB5_16TypedValueParser9parse_refCsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(712) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(600) %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef %5) #30
  %i.b = load i32, ptr %i.a, align 8, !range !13, !noundef !14
  %i.c = trunc nuw i32 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !14, !align !27, !noundef !14
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.e, ptr %i.f, align 8
  store ptr null, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.h = load i32, ptr %i.g, align 4, !noundef !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #30, !noalias !14693
  %i.i = tail call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef range(i64 1, -9223372036854775807) 8) #30, !noalias !14693 ; 5 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.d, label %_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit, !prof !17

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #34, !noalias !14693
  unreachable

_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.c
  store i64 1, ptr %i.i, align 8
  %.sroa.4.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx3, align 8
  %.sroa.5.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i32 %i.h, ptr %.sroa.5.0..sroa_idx4, align 8
  store ptr %i.i, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @801, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) @22, i64 16, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvXsc_NtNtCslDQ48jUgq5Q_12clap_builder7builder12value_parserINtB5_20RangedI64ValueParsermENtB5_14AnyValueParser15possible_valuesCsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXsc_NtNtCslDQ48jUgq5Q_12clap_builder7builder12value_parserINtB5_20RangedI64ValueParsermENtB5_14AnyValueParser7type_idCsat9HgdBb3qc_16shadowsocks_rust(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #11 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @22, i64 16, i1 false)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal { ptr, ptr } @_RNvXsc_NtNtCslDQ48jUgq5Q_12clap_builder7builder12value_parserINtB5_20RangedI64ValueParsermENtB5_14AnyValueParser9clone_anyCsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load <2 x i64>, ptr %0, align 8, !alias.scope !14698
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load <2 x i64>, ptr %i.b, align 8, !alias.scope !14698
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #30, !noalias !14699
  %i.d = tail call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 32, i64 noundef range(i64 1, -9223372036854775807) 8) #30, !noalias !14699 ; 4 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit, !prof !17

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #34, !noalias !14699
  unreachable

_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.a
  store <2 x i64> %i.a, ptr %i.d, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store <2 x i64> %i.c, ptr %.sroa.5.0..sroa_idx, align 8
  %i.f = insertvalue { ptr, ptr } poison, ptr %i.d, 0
  %i.g = insertvalue { ptr, ptr } %i.f, ptr @665, 1
  ret { ptr, ptr } %i.g
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RNvXsc_NtNtCslDQ48jUgq5Q_12clap_builder7builder12value_parserINtB5_20RangedI64ValueParsermENtB5_14AnyValueParser9parse_refCsat9HgdBb3qc_16shadowsocks_rust(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(712) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(600) %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call fastcc void @_RNvXsu_NtNtCslDQ48jUgq5Q_12clap_builder7builder12value_parserINtB5_20RangedI64ValueParsermENtB5_16TypedValueParser9parse_refCsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(712) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(600) %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef %5) #30
  %i.b = load i32, ptr %i.a, align 8, !range !13, !noundef !14
  %i.c = trunc nuw i32 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !14, !align !27, !noundef !14
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.e, ptr %i.f, align 8
  store ptr null, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.h = load i32, ptr %i.g, align 4, !noundef !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #30, !noalias !14702
  %i.i = tail call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef range(i64 1, -9223372036854775807) 8) #30, !noalias !14702 ; 5 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.d, label %_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit, !prof !17

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #34, !noalias !14702
  unreachable

_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.c
  store i64 1, ptr %i.i, align 8
  %.sroa.4.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx3, align 8
  %.sroa.5.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i32 %i.h, ptr %.sroa.5.0..sroa_idx4, align 8
  store ptr %i.i, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @801, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) @22, i64 16, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RNvXsc_NtNtCslDQ48jUgq5Q_12clap_builder7builder12value_parserNtB5_20PossibleValuesParserNtB5_14AnyValueParser10parse_ref_Csat9HgdBb3qc_16shadowsocks_rust(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(712) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(600) %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef %5, i8 range(i8 0, 3) %6) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.5 = alloca [24 x i8], align 8            ; 4 uses
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXsr_NtNtCslDQ48jUgq5Q_12clap_builder7builder12value_parserNtB5_20PossibleValuesParserNtB5_16TypedValueParser9parse_ref(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(712) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(600) %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef %5) #30
  %i.b = load i64, ptr %i.a, align 8, !range !24, !noundef !14
  %i.c = icmp eq i64 %i.b, -1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !14, !align !27, !noundef !14
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.e, ptr %i.f, align 8
  store ptr null, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #30, !noalias !14705
  %i.g = call noundef align 8 dereferenceable_or_null(40) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 40, i64 noundef range(i64 1, -9223372036854775807) 8) #30, !noalias !14705 ; 5 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.d, label %_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit, !prof !17

bb.d:                                             ; preds = %bb.c
  call void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 40) #34, !noalias !14705
  unreachable

_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.c
  store i64 1, ptr %i.g, align 8
  %.sroa.4.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx3, align 8
  %.sroa.5.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx4, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  store ptr %i.g, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @802, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) @12, i64 16, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal { ptr, ptr } @_RNvXsc_NtNtCslDQ48jUgq5Q_12clap_builder7builder12value_parserNtB5_20PossibleValuesParserNtB5_14AnyValueParser15possible_valuesCsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvXsr_NtNtCslDQ48jUgq5Q_12clap_builder7builder12value_parserNtB5_20PossibleValuesParserNtB5_16TypedValueParser15possible_values(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %0) #30
  ret { ptr, ptr } %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXsc_NtNtCslDQ48jUgq5Q_12clap_builder7builder12value_parserNtB5_20PossibleValuesParserNtB5_14AnyValueParser7type_idCsat9HgdBb3qc_16shadowsocks_rust(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #11 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @12, i64 16, i1 false)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal { ptr, ptr } @_RNvXsc_NtNtCslDQ48jUgq5Q_12clap_builder7builder12value_parserNtB5_20PossibleValuesParserNtB5_14AnyValueParser9clone_anyCsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.b, align 8, !nonnull !14, !noundef !14 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load i64, ptr %i.c, align 8, !noundef !14 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14727)
  %i.d = mul nuw nsw i64 %.val1, 72               ; 2 uses
  %i.e = icmp eq i64 %.val1, 0
  br i1 %i.e, label %_RNvXs1r_NtNtCslDQ48jUgq5Q_12clap_builder7builder12value_parserNtB6_20PossibleValuesParserNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #30, !noalias !14728
  %i.f = tail call noundef align 8 ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.d, i64 noundef range(i64 1, 9) 8) #30, !noalias !14728 ; 4 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.c, label %.lr.ph.i.i.i

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.d) #34, !noalias !14729
  unreachable

.lr.ph.i.i.i:                                     ; preds = %bb.b
  %1 = getelementptr inbounds nuw [72 x i8], ptr %.val, i64 %.val1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %2

2:                                                ; preds = %_RNvXs3_NtNtCslDQ48jUgq5Q_12clap_builder7builder14possible_valueNtB5_13PossibleValueNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit.i.i.i, %.lr.ph.i.i.i
  %.sroa.0.045.i.i.i = phi ptr [ %.val, %.lr.ph.i.i.i ], [ %i.i, %_RNvXs3_NtNtCslDQ48jUgq5Q_12clap_builder7builder14possible_valueNtB5_13PossibleValueNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit.i.i.i ] ; 8 uses
  %.sroa.7.044.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %i.j, %_RNvXs3_NtNtCslDQ48jUgq5Q_12clap_builder7builder14possible_valueNtB5_13PossibleValueNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit.i.i.i ] ; 2 uses
  %.sroa.10.043.i.i.i = phi i64 [ %.val1, %.lr.ph.i.i.i ], [ %3, %_RNvXs3_NtNtCslDQ48jUgq5Q_12clap_builder7builder14possible_valueNtB5_13PossibleValueNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit.i.i.i ]
  %3 = add nsw i64 %.sroa.10.043.i.i.i, -1        ; 2 uses
  %4 = icmp eq ptr %.sroa.0.045.i.i.i, %1
  br i1 %4, label %_RNvXs1r_NtNtCslDQ48jUgq5Q_12clap_builder7builder12value_parserNtB6_20PossibleValuesParserNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit, label %bb.d

bb.d:                                             ; preds = %2
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.045.i.i.i, i64 72
  %i.j = add nuw nsw i64 %.sroa.7.044.i.i.i, 1
  %i.k = getelementptr inbounds nuw [72 x i8], ptr %i.f, i64 %.sroa.7.044.i.i.i ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14730)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !14729
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.0.045.i.i.i, i64 48
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !14731, !noalias !14732, !nonnull !14, !noundef !14
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.0.045.i.i.i, i64 56
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !14731, !noalias !14732, !noundef !14
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.0.045.i.i.i, i64 24 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !range !24, !alias.scope !14731, !noalias !14732, !noundef !14
  %.not.i.i.i.i = icmp eq i64 %i.q, -1
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @_RNvXs4_NtCsgCecv3eZDcN_5alloc6stringNtB5_6StringNtNtCsf3Ta7LF998c_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.p) #30, !noalias !14733
  %.sroa.03.0.copyload.i.i.i.i = load i64, ptr %i.a, align 8, !noalias !14734
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.0.0.i13.i.i.i = phi i64 [ %.sroa.03.0.copyload.i.i.i.i, %bb.e ], [ -1, %bb.d ]
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.045.i.i.i, i64 8
  %.val.i.i.i.i = load ptr, ptr %i.r, align 8, !alias.scope !14731, !noalias !14732, !nonnull !14, !noundef !14 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.045.i.i.i, i64 16
  %.val4.i.i.i.i = load i64, ptr %i.s, align 8, !alias.scope !14731, !noalias !14732, !noundef !14 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14735)
  %i.t = icmp eq i64 %.val4.i.i.i.i, 0
  br i1 %i.t, label %_RNvXs3_NtNtCslDQ48jUgq5Q_12clap_builder7builder14possible_valueNtB5_13PossibleValueNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = shl nuw nsw i64 %.val4.i.i.i.i, 4        ; 2 uses
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #30, !noalias !14736
  %i.v = tail call noundef align 8 ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.u, i64 noundef range(i64 1, 9) 8) #30, !noalias !14736 ; 4 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.h, label %.lr.ph.preheader.i.i.i.i.i.i.a

bb.h:                                             ; preds = %bb.g
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.u) #34, !noalias !14737
  unreachable

.lr.ph.preheader.i.i.i.i.i.i.a:                   ; preds = %bb.g
  %5 = getelementptr inbounds nuw [16 x i8], ptr %.val.i.i.i.i, i64 %.val4.i.i.i.i
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.i, %.lr.ph.preheader.i.i.i.i.i.i.a
  %.sroa.0.022.i.i.i.i.i.i = phi ptr [ %8, %bb.i ], [ %.val.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i.i.a ] ; 4 uses
  %.sroa.7.021.i.i.i.i.i.i = phi i64 [ %7, %bb.i ], [ 0, %.lr.ph.preheader.i.i.i.i.i.i.a ] ; 2 uses
  %.sroa.10.020.i.i.i.i.i.i = phi i64 [ %6, %bb.i ], [ %.val4.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i.i.a ]
  %i.x = icmp eq ptr %.sroa.0.022.i.i.i.i.i.i, %5
  br i1 %i.x, label %_RNvXs3_NtNtCslDQ48jUgq5Q_12clap_builder7builder14possible_valueNtB5_13PossibleValueNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit.i.i.i, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %6 = add nsw i64 %.sroa.10.020.i.i.i.i.i.i, -1  ; 2 uses
  %7 = add nuw nsw i64 %.sroa.7.021.i.i.i.i.i.i, 1
  %8 = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i.i.i.i.i.i, i64 16
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.v, i64 %.sroa.7.021.i.i.i.i.i.i ; 2 uses
  %.val.i.i.i.i.i.i.a = load ptr, ptr %.sroa.0.022.i.i.i.i.i.i, align 8, !alias.scope !14735, !noalias !14738, !nonnull !14, !noundef !14
  %i.z = getelementptr i8, ptr %.sroa.0.022.i.i.i.i.i.i, i64 8
  %.val13.i.i.i.i.i.i.a = load i64, ptr %i.z, align 8, !alias.scope !14735, !noalias !14738, !noundef !14
  store ptr %.val.i.i.i.i.i.i.a, ptr %i.y, align 8, !noalias !14737
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store i64 %.val13.i.i.i.i.i.i.a, ptr %i.aa, align 8, !noalias !14737
  %9 = icmp eq i64 %6, 0
  br i1 %9, label %_RNvXs3_NtNtCslDQ48jUgq5Q_12clap_builder7builder14possible_valueNtB5_13PossibleValueNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i

_RNvXs3_NtNtCslDQ48jUgq5Q_12clap_builder7builder14possible_valueNtB5_13PossibleValueNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit.i.i.i: ; preds = %bb.i, %.lr.ph.i.i.i.i.i.i, %bb.f
  %.sroa.10.0.i30.i.i.i.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.f ], [ %i.v, %.lr.ph.i.i.i.i.i.i ], [ %i.v, %bb.i ]
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0.045.i.i.i, i64 64
  %i.ac = load i8, ptr %i.ab, align 8, !range !19, !alias.scope !14731, !noalias !14732, !noundef !14
  %.sroa.731.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.731.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.h, i64 16, i1 false), !noalias !14739
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !14729
  store i64 %.val4.i.i.i.i, ptr %i.k, align 8, !noalias !14739
  %.sroa.428.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %.sroa.10.0.i30.i.i.i.i.i.i, ptr %.sroa.428.0..sroa_idx.i.i.i, align 8, !noalias !14739
  %.sroa.529.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store i64 %.val4.i.i.i.i, ptr %.sroa.529.0..sroa_idx.i.i.i, align 8, !noalias !14739
  %.sroa.630.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  store i64 %.sroa.0.0.i13.i.i.i, ptr %.sroa.630.0..sroa_idx.i.i.i, align 8, !noalias !14739
  %.sroa.832.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  store ptr %i.m, ptr %.sroa.832.0..sroa_idx.i.i.i, align 8, !noalias !14739
  %.sroa.933.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  store i64 %i.o, ptr %.sroa.933.0..sroa_idx.i.i.i, align 8, !noalias !14739
  %.sroa.1034.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  store i8 %i.ac, ptr %.sroa.1034.0..sroa_idx.i.i.i, align 8, !noalias !14739
  %i.ad = icmp eq i64 %3, 0
  br i1 %i.ad, label %_RNvXs1r_NtNtCslDQ48jUgq5Q_12clap_builder7builder12value_parserNtB6_20PossibleValuesParserNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit, label %2

_RNvXs1r_NtNtCslDQ48jUgq5Q_12clap_builder7builder12value_parserNtB6_20PossibleValuesParserNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit: ; preds = %2, %_RNvXs3_NtNtCslDQ48jUgq5Q_12clap_builder7builder14possible_valueNtB5_13PossibleValueNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit.i.i.i, %bb.a
  %.sroa.10.0.i56.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.a ], [ %i.f, %_RNvXs3_NtNtCslDQ48jUgq5Q_12clap_builder7builder14possible_valueNtB5_13PossibleValueNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit.i.i.i ], [ %i.f, %2 ]
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #30, !noalias !14740
  %i.ae = tail call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef range(i64 1, -9223372036854775807) 8) #30, !noalias !14740 ; 5 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %bb.j, label %_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit, !prof !17

bb.j:                                             ; preds = %_RNvXs1r_NtNtCslDQ48jUgq5Q_12clap_builder7builder12value_parserNtB6_20PossibleValuesParserNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #34, !noalias !14740
  unreachable

_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit: ; preds = %_RNvXs1r_NtNtCslDQ48jUgq5Q_12clap_builder7builder12value_parserNtB6_20PossibleValuesParserNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit
  store i64 %.val1, ptr %i.ae, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store ptr %.sroa.10.0.i56.i.i.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  store i64 %.val1, ptr %.sroa.5.0..sroa_idx, align 8
  %i.ag = insertvalue { ptr, ptr } poison, ptr %i.ae, 0
  %i.ah = insertvalue { ptr, ptr } %i.ag, ptr @666, 1
  ret { ptr, ptr } %i.ah
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RNvXsc_NtNtCslDQ48jUgq5Q_12clap_builder7builder12value_parserNtB5_20PossibleValuesParserNtB5_14AnyValueParser9parse_refCsat9HgdBb3qc_16shadowsocks_rust(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(712) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(600) %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.5 = alloca [24 x i8], align 8            ; 4 uses
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXsr_NtNtCslDQ48jUgq5Q_12clap_builder7builder12value_parserNtB5_20PossibleValuesParserNtB5_16TypedValueParser9parse_ref(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(712) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(600) %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef %5) #30
  %i.b = load i64, ptr %i.a, align 8, !range !24, !noundef !14
  %i.c = icmp eq i64 %i.b, -1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !14, !align !27, !noundef !14
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.e, ptr %i.f, align 8
  store ptr null, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #30, !noalias !14743
  %i.g = call noundef align 8 dereferenceable_or_null(40) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 40, i64 noundef range(i64 1, -9223372036854775807) 8) #30, !noalias !14743 ; 5 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.d, label %_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit, !prof !17

bb.d:                                             ; preds = %bb.c
  call void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 40) #34, !noalias !14743
  unreachable

_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.c
  store i64 1, ptr %i.g, align 8
  %.sroa.4.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx3, align 8
  %.sroa.5.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx4, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  store ptr %i.g, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @802, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) @12, i64 16, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RNvXsc_NtNtCslDQ48jUgq5Q_12clap_builder7builder12value_parserNtB5_20RangedU64ValueParserNtB5_14AnyValueParser10parse_ref_Csat9HgdBb3qc_16shadowsocks_rust(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(712) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(600) %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef %5, i8 range(i8 0, 3) %6) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call fastcc { i64, ptr } @_RNvXsy_NtNtCslDQ48jUgq5Q_12clap_builder7builder12value_parserNtB5_20RangedU64ValueParserNtB5_16TypedValueParser9parse_refCsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(712) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(600) %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef %5) #30 ; 2 uses
  %i.b = extractvalue { i64, ptr } %i.a, 0
  %i.c = extractvalue { i64, ptr } %i.a, 1        ; 2 uses
  %i.d = trunc nuw i64 %i.b to i1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.c, ptr %i.e, align 8
  store ptr null, ptr %0, align 8
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #30, !noalias !14746
  %i.f = tail call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef range(i64 1, -9223372036854775807) 8) #30, !noalias !14746 ; 5 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.d, label %_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit, !prof !17

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #34, !noalias !14746
  unreachable

_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.c
  %i.h = ptrtoint ptr %i.c to i64
  store i64 1, ptr %i.f, align 8
  %.sroa.4.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx6, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 %i.h, ptr %.sroa.5.0..sroa_idx, align 8
  store ptr %i.f, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @803, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.53.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) @23, i64 16, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvXsc_NtNtCslDQ48jUgq5Q_12clap_builder7builder12value_parserNtB5_20RangedU64ValueParserNtB5_14AnyValueParser15possible_valuesCsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXsc_NtNtCslDQ48jUgq5Q_12clap_builder7builder12value_parserNtB5_20RangedU64ValueParserNtB5_14AnyValueParser7type_idCsat9HgdBb3qc_16shadowsocks_rust(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #11 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @23, i64 16, i1 false)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal { ptr, ptr } @_RNvXsc_NtNtCslDQ48jUgq5Q_12clap_builder7builder12value_parserNtB5_20RangedU64ValueParserNtB5_14AnyValueParser9clone_anyCsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load <2 x i64>, ptr %0, align 8, !alias.scope !14751
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load <2 x i64>, ptr %i.b, align 8, !alias.scope !14751
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #30, !noalias !14752
  %i.d = tail call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 32, i64 noundef range(i64 1, -9223372036854775807) 8) #30, !noalias !14752 ; 4 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit, !prof !17

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #34, !noalias !14752
  unreachable

_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.a
  store <2 x i64> %i.a, ptr %i.d, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store <2 x i64> %i.c, ptr %.sroa.5.0..sroa_idx, align 8
  %i.f = insertvalue { ptr, ptr } poison, ptr %i.d, 0
  %i.g = insertvalue { ptr, ptr } %i.f, ptr @667, 1
  ret { ptr, ptr } %i.g
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RNvXsc_NtNtCslDQ48jUgq5Q_12clap_builder7builder12value_parserNtB5_20RangedU64ValueParserNtB5_14AnyValueParser9parse_refCsat9HgdBb3qc_16shadowsocks_rust(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(712) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(600) %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call fastcc { i64, ptr } @_RNvXsy_NtNtCslDQ48jUgq5Q_12clap_builder7builder12value_parserNtB5_20RangedU64ValueParserNtB5_16TypedValueParser9parse_refCsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(712) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(600) %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef %5) #30 ; 2 uses
  %i.b = extractvalue { i64, ptr } %i.a, 0
  %i.c = extractvalue { i64, ptr } %i.a, 1        ; 2 uses
  %i.d = trunc nuw i64 %i.b to i1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.c, ptr %i.e, align 8
  store ptr null, ptr %0, align 8
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #30, !noalias !14755
  %i.f = tail call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef range(i64 1, -9223372036854775807) 8) #30, !noalias !14755 ; 5 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.d, label %_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit, !prof !17

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #34, !noalias !14755
  unreachable

_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.c
  %i.h = ptrtoint ptr %i.c to i64
  store i64 1, ptr %i.f, align 8
  %.sroa.4.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx6, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 %i.h, ptr %.sroa.5.0..sroa_idx, align 8
  store ptr %i.f, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @803, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.53.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) @23, i64 16, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RNvXsc_NtNtCslDQ48jUgq5Q_12clap_builder7builder12value_parserNvNtCsat9HgdBb3qc_16shadowsocks_rust7vparser11parse_ipnetNtB5_14AnyValueParser10parse_ref_B11_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree nonnull readonly captures(none) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(712) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(600) %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef %5, i8 range(i8 0, 3) %6) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.5 = alloca [18 x i8], align 8            ; 4 uses
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call fastcc void @_RNvXsd_NtNtCslDQ48jUgq5Q_12clap_builder7builder12value_parserNvNtCsat9HgdBb3qc_16shadowsocks_rust7vparser11parse_ipnetNtB5_16TypedValueParser9parse_refB11_(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(712) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(600) %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef %5) #30
  %i.b = load i8, ptr %i.a, align 8, !range !19, !noundef !14
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !14, !align !27, !noundef !14
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.e, ptr %i.f, align 8
  store ptr null, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.e
end_hunk_1
