Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/ra_ap_rustc_abi-904350017a626154.ra_ap_rustc_abi.3eead819dacdc8c-cgu.0?download=true
inline.NumInlined: 173
inline.NumDeleted: 65
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout33parse_from_llvm_datalayout_string:bb.a
  %i.bg = extractvalue { i64, i64 } %.merged.i.i.i, 0
  %i.bh = trunc nuw i64 %i.bg to i1
  br i1 %i.bh, label %bb.f, label %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCskVLyBV5N46_15ra_ap_rustc_abi.exit.i

bb.f:                                             ; preds = %_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr.exit.i.i
  %i.bi = extractvalue { i64, i64 } %.merged.i.i.i, 1
  %i.bj = add i64 %i.av, 1
  %i.bk = add i64 %i.bj, %i.bi                    ; 8 uses
  %.not11.i.i = icmp ult i64 %i.bk, %i.ao
  %.not12.i.i = icmp ugt i64 %i.bk, %.val1.i
  %or.cond.i.i = or i1 %.not11.i.i, %.not12.i.i
  br i1 %or.cond.i.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.h, %bb.f
  %i.bl = icmp ult i64 %i.am, %i.bk
  br i1 %i.bl, label %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCskVLyBV5N46_15ra_ap_rustc_abi.exit.i, label %.lr.ph.split.i.i

bb.h:                                             ; preds = %bb.f
  %i.bm = sub nuw i64 %i.bk, %i.ao                ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.bm
  %bcmp.i.i = call i32 @bcmp(ptr nonnull %i.bn, ptr nonnull %.sroa.3.sroa.5.0..sroa.3.0..sroa_idx.sroa_idx, i64 %i.ao), !noalias !15
  %i.bo = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.bo, label %select.unfold, label %bb.g

_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCskVLyBV5N46_15ra_ap_rustc_abi.exit.i: ; preds = %bb.g, %_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr.exit.i.i, %bb.c
  %.lcssa23602407 = phi i64 [ %.lcssa23602408, %bb.c ], [ %i.am, %_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr.exit.i.i ], [ %i.bk, %bb.g ]
  store i8 1, ptr %.sroa.5350.0..sroa_idx, align 1, !alias.scope !23
  %.not.i3.i = icmp ne i64 %.pre2.i.i, %.lcssa180323662402
  %or.cond.not.i.i = select i1 %i.at, i1 true, i1 %.not.i3.i
  br i1 %or.cond.not.i.i, label %select.unfold, label %.outer._crit_edge

.outer._crit_edge:                                ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecReEECskVLyBV5N46_15ra_ap_rustc_abi.exit, %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCskVLyBV5N46_15ra_ap_rustc_abi.exit.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecReEECskVLyBV5N46_15ra_ap_rustc_abi.exit973
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %i.bp = load i32, ptr %i.aj, align 4, !noundef !11 ; 3 uses
  %i.bq = load i32, ptr %i.ag, align 8, !noundef !11
  %.not752 = icmp eq i32 %i.bp, %i.bq
  br i1 %.not752, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterTNtCskVLyBV5N46_15ra_ap_rustc_abi12AddressSpaceNtBT_11PointerSpecEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs2_BT_NtBT_16TargetDataLayout33parse_from_llvm_datalayout_strings6_0EBT_.exit, label %bb.i

_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterTNtCskVLyBV5N46_15ra_ap_rustc_abi12AddressSpaceNtBT_11PointerSpecEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs2_BT_NtBT_16TargetDataLayout33parse_from_llvm_datalayout_strings6_0EBT_.exit: ; preds = %.lr.ph4969, %bb.l, %.outer._crit_edge
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(96) %i.o, i64 96, i1 false)
  br label %bb.m

bb.i:                                             ; preds = %.outer._crit_edge
  %i.br = load ptr, ptr %.sroa.42.0..sroa_idx.i, align 8, !nonnull !11, !noundef !11 ; 3 uses
  %i.bs = load i64, ptr %.sroa.53.0..sroa_idx.i, align 8, !noundef !11 ; 5 uses
  %.idx4973 = shl nuw nsw i64 %i.bs, 5
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 %.idx4973
  %i.bu = icmp eq i64 %i.bs, 0
  br i1 %i.bu, label %._crit_edge4970, label %.lr.ph4969

bb.j:                                             ; preds = %.lr.ph4969
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bx, i64 32 ; 2 uses
  %i.bw = icmp eq ptr %i.bv, %i.bt
  br i1 %i.bw, label %._crit_edge4970, label %.lr.ph4969

.lr.ph4969:                                       ; preds = %bb.i, %bb.j
  %i.bx = phi ptr [ %i.bv, %bb.j ], [ %i.br, %bb.i ] ; 2 uses
  %i.by = load i32, ptr %i.bx, align 8, !noalias !26, !noundef !11
  %i.bz = icmp eq i32 %i.by, %i.bp
  br i1 %i.bz, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterTNtCskVLyBV5N46_15ra_ap_rustc_abi12AddressSpaceNtBT_11PointerSpecEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs2_BT_NtBT_16TargetDataLayout33parse_from_llvm_datalayout_strings6_0EBT_.exit, label %bb.j

._crit_edge4970:                                  ; preds = %bb.j, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.41548)
  %.sroa.41548.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.41548, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %.sroa.41548.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.ah, i64 24, i1 false)
  %i.ca = load i64, ptr %i.ai, align 8, !range !30, !alias.scope !31, !noalias !34, !noundef !11
  %i.cb = icmp eq i64 %i.bs, %i.ca
  br i1 %i.cb, label %bb.k, label %bb.l

bb.k:                                             ; preds = %._crit_edge4970
  invoke void @_RNvMs4_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecTNtCskVLyBV5N46_15ra_ap_rustc_abi12AddressSpaceNtBP_11PointerSpecEE8grow_oneBP_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ai) #23
          to label %._crit_edge3245 unwind label %.loopexit.split-lp.loopexit.split-lp

._crit_edge3245:                                  ; preds = %bb.k
  %.pre3246 = load ptr, ptr %.sroa.42.0..sroa_idx.i, align 8, !alias.scope !31, !noalias !34
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge3245, %._crit_edge4970
  %i.cc = phi ptr [ %.pre3246, %._crit_edge3245 ], [ %i.br, %._crit_edge4970 ]
  %i.cd = getelementptr inbounds nuw [32 x i8], ptr %i.cc, i64 %i.bs ; 2 uses
  store i32 %i.bp, ptr %i.cd, align 8
  %.sroa.41548.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cd, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.41548.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.41548, i64 28, i1 false)
  %i.ce = add i64 %i.bs, 1
  store i64 %i.ce, ptr %.sroa.53.0..sroa_idx.i, align 8, !alias.scope !31, !noalias !34
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.41548)
  br label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterTNtCskVLyBV5N46_15ra_ap_rustc_abi12AddressSpaceNtBT_11PointerSpecEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs2_BT_NtBT_16TargetDataLayout33parse_from_llvm_datalayout_strings6_0EBT_.exit

bb.m:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecReEECskVLyBV5N46_15ra_ap_rustc_abi.exit794, %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterTNtCskVLyBV5N46_15ra_ap_rustc_abi12AddressSpaceNtBT_11PointerSpecEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs2_BT_NtBT_16TargetDataLayout33parse_from_llvm_datalayout_strings6_0EBT_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  ret void

select.unfold:                                    ; preds = %bb.h, %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCskVLyBV5N46_15ra_ap_rustc_abi.exit.i
  %.lcssa23602406 = phi i64 [ %.lcssa23602407, %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCskVLyBV5N46_15ra_ap_rustc_abi.exit.i ], [ %i.bk, %bb.h ] ; 32 uses
  %.lcssa18032365 = phi i64 [ %.lcssa180323662402, %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCskVLyBV5N46_15ra_ap_rustc_abi.exit.i ], [ %i.bk, %bb.h ] ; 32 uses
  %i.cf = phi i1 [ true, %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCskVLyBV5N46_15ra_ap_rustc_abi.exit.i ], [ false, %bb.h ]
  %.pn2473 = phi i64 [ %.pre2.i.i, %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCskVLyBV5N46_15ra_ap_rustc_abi.exit.i ], [ %i.bm, %bb.h ]
  %.sroa.4.1.i = sub nuw i64 %.pn2473, %.lcssa180323662402 ; 3 uses
  %.sroa.0.1.i = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.lcssa180323662402
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store i64 0, ptr %i.l, align 8
  store i64 %.sroa.4.1.i, ptr %.sroa.4353.0..sroa_idx, align 8
  store ptr %.sroa.0.1.i, ptr %.sroa.5354.0..sroa_idx, align 8
  store i64 %.sroa.4.1.i, ptr %.sroa.5354.sroa.4.0..sroa.5354.0..sroa_idx.sroa_idx, align 8
  store i64 0, ptr %.sroa.5354.sroa.5.0..sroa.5354.0..sroa_idx.sroa_idx, align 8
  store i64 %.sroa.4.1.i, ptr %.sroa.5354.sroa.6.0..sroa.5354.0..sroa_idx.sroa_idx, align 8
  store i32 58, ptr %.sroa.5354.sroa.7.0..sroa.5354.0..sroa_idx.sroa_idx, align 8
  store i32 58, ptr %.sroa.5354.sroa.8.0..sroa.5354.0..sroa_idx.sroa_idx, align 4
  store i8 1, ptr %.sroa.5354.sroa.9.0..sroa.5354.0..sroa_idx.sroa_idx, align 8
  store i8 1, ptr %.sroa.6355.0..sroa_idx, align 8
  store i8 0, ptr %.sroa.7356.0..sroa_idx, align 1
  invoke void @_RNvXNtNtCsbSS6DM8SDEO_5alloc3vec21spec_from_iter_nestedINtB4_3VecReEINtB2_18SpecFromIterNestedB11_INtNtNtCshzWfHUSfYae_4core3str4iter5SplitcEE9from_iterCskVLyBV5N46_15ra_ap_rustc_abi(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.m, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(72) %i.l)
          to label %bb.n unwind label %.loopexit.split-lp.loopexit.loopexit

bb.n:                                             ; preds = %select.unfold
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %i.cg = load ptr, ptr %i.ak, align 8, !nonnull !11, !noundef !11 ; 35 uses
  %i.ch = load i64, ptr %i.al, align 8, !noundef !11 ; 10 uses
  switch i64 %i.ch, label %bb.al [
    i64 1, label %bb.o
    i64 0, label %.loopexit1798
  ]

bb.o:                                             ; preds = %bb.n
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %i.cj = load i64, ptr %i.ci, align 8, !noundef !11 ; 2 uses
  %i.ck = icmp eq i64 %i.cj, 1
  %.pre = load ptr, ptr %i.cg, align 8            ; 2 uses
  br i1 %i.ck, label %bb.p, label %bb.s

bb.p:                                             ; preds = %bb.o
  %lhsc = load i8, ptr %.pre, align 1
  switch i8 %lhsc, label %bb.s [
    i8 101, label %bb.q
    i8 69, label %bb.r
  ]

bb.q:                                             ; preds = %bb.p
  store i64 %.lcssa23602406, ptr %.sroa.3.sroa.3.0..sroa.3.0..sroa_idx.sroa_idx, align 8
  store i64 %.lcssa18032365, ptr %i.n, align 8
  store i8 0, ptr %i.u, align 8
  br label %bb.ad

bb.r:                                             ; preds = %bb.p
  store i64 %.lcssa23602406, ptr %.sroa.3.sroa.3.0..sroa.3.0..sroa_idx.sroa_idx, align 8
  store i64 %.lcssa18032365, ptr %i.n, align 8
  store i8 1, ptr %i.u, align 8
  br label %bb.ad

.loopexit1757.loopexit:                           ; preds = %bb.dl, %bb.di, %bb.az, %bb.aw, %bb.s
  %lpad.loopexit1799 = landingpad { ptr, i32 }
          cleanup
  store i64 %.lcssa23602406, ptr %.sroa.3.sroa.3.0..sroa.3.0..sroa_idx.sroa_idx, align 8
  store i64 %.lcssa18032365, ptr %i.n, align 8
  br label %.loopexit1757

.loopexit1757.loopexit.split-lp:                  ; preds = %bb.hq, %_RNvXs3_NtNtCshzWfHUSfYae_4core3str7patternNvMNtNtB9_4char7methodsc13is_alphabeticNtB5_11MultiCharEq7matchesCskVLyBV5N46_15ra_ap_rustc_abi.exit.i.i1066, %bb.ej, %bb.dd, %_RNvXs3_NtNtCshzWfHUSfYae_4core3str7patternNvMNtNtB9_4char7methodsc13is_alphabeticNtB5_11MultiCharEq7matchesCskVLyBV5N46_15ra_ap_rustc_abi.exit.i.i, %bb.gd, %bb.fw, %bb.ft, %bb.bl, %bb.be, %bb.bb
  %lpad.loopexit.split-lp1800 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit1757

.loopexit.split-lp1758:                           ; preds = %.invoke4141, %.invoke4139, %.invoke, %_RNvYINtNtNtCshzWfHUSfYae_4core3str7pattern18MultiCharEqPatternNvMNtNtB9_4char7methodsc13is_alphabeticENtB5_7Pattern12is_prefix_ofCskVLyBV5N46_15ra_ap_rustc_abi.exit, %_RNvYINtNtNtCshzWfHUSfYae_4core3str7pattern18MultiCharEqPatternNvMNtNtB9_4char7methodsc13is_alphabeticENtB5_7Pattern12is_prefix_ofCskVLyBV5N46_15ra_ap_rustc_abi.exit1071
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit1757

.loopexit1757:                                    ; preds = %.loopexit1757.loopexit, %.loopexit1757.loopexit.split-lp, %.loopexit.split-lp1758
  %lpad.phi1760 = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.loopexit.split-lp1758 ], [ %lpad.loopexit1799, %.loopexit1757.loopexit ], [ %lpad.loopexit.split-lp1800, %.loopexit1757.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecReEECskVLyBV5N46_15ra_ap_rustc_abi(ptr noalias nofree noundef align 8 dereferenceable(24) %i.m) #20
          to label %.body unwind label %bb.jy

bb.s:                                             ; preds = %bb.p, %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store i32 80, ptr %i.k, align 4
  %i.cl = invoke noundef zeroext i1 @_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCskVLyBV5N46_15ra_ap_rustc_abi(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.pre, i64 noundef %i.cj, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.k, i64 noundef 1)
          to label %bb.t unwind label %.loopexit1757.loopexit

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br i1 %i.cl, label %bb.u, label %bb.al

bb.u:                                             ; preds = %bb.t
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  store i64 %.lcssa23602406, ptr %.sroa.3.sroa.3.0..sroa.3.0..sroa_idx.sroa_idx, align 8
  store i64 %.lcssa18032365, ptr %i.n, align 8
  %i.cn = load ptr, ptr %i.cg, align 8, !nonnull !11, !noundef !11 ; 5 uses
  %i.co = load i64, ptr %i.cm, align 8, !noundef !11 ; 5 uses
  %i.cp = icmp ult i64 %i.co, 2
  br i1 %i.cp, label %.split3350, label %bb.v

.split3350:                                       ; preds = %bb.u
  %i.cq = icmp eq i64 %i.co, 1
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cn, i64 1
  br i1 %i.cq, label %_RNvMsB_NtCshzWfHUSfYae_4core3numm27from_ascii_bytes_radix_impl.exit.thread, label %.invoke, !prof !36

bb.v:                                             ; preds = %bb.u
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cn, i64 1
  %i.ct = load i8, ptr %i.cs, align 1, !alias.scope !37, !noundef !11
  %i.cu = icmp sgt i8 %i.ct, -65
  %i.cv = add i64 %i.co, -1                       ; 13 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cn, i64 1 ; 15 uses
  br i1 %i.cu, label %bb.w, label %.invoke, !prof !36

bb.w:                                             ; preds = %bb.v
  %cond3386 = icmp eq i64 %i.cv, 1
  %i.cx = load i8, ptr %i.cw, align 1, !alias.scope !40 ; 2 uses
  br i1 %cond3386, label %bb.x, label %thread-pre-split.i

bb.x:                                             ; preds = %bb.w
  switch i8 %i.cx, label %thread-pre-split.i [
    i8 43, label %_RNvMsB_NtCshzWfHUSfYae_4core3numm27from_ascii_bytes_radix_impl.exit.thread
    i8 45, label %_RNvMsB_NtCshzWfHUSfYae_4core3numm27from_ascii_bytes_radix_impl.exit.thread
  ]

thread-pre-split.i:                               ; preds = %bb.w, %bb.x
  %cond.i = icmp eq i8 %i.cx, 43                  ; 2 uses
  %i.cy = sext i1 %cond.i to i64
  %.sroa.15.0.i = add nsw i64 %i.cv, %i.cy        ; 10 uses
  %.sroa.0.0.idx.i = zext i1 %cond.i to i64
  %.sroa.0.0.i787 = getelementptr inbounds nuw i8, ptr %i.cw, i64 %.sroa.0.0.idx.i ; 9 uses
  %i.cz = icmp samesign ult i64 %.sroa.15.0.i, 9
  br i1 %i.cz, label %.preheader.i, label %.preheader60.i.preheader

.preheader.i:                                     ; preds = %thread-pre-split.i
  %.not5668.i = icmp eq i64 %.sroa.15.0.i, 0
  br i1 %.not5668.i, label %.loopexit.i, label %.lr.ph.i

.preheader60.i:                                   ; preds = %4
  %.not55.i = icmp eq i64 %i.dd, 0
  br i1 %.not55.i, label %.loopexit.i, label %.preheader60.i.preheader

.loopexit.i:                                      ; preds = %.preheader60.i, %11, %17, %25, %33, %41, %47, %51, %58, %.preheader.i
  %.sroa.045.1.i = phi i32 [ %60, %58 ], [ 0, %.preheader.i ], [ %9, %11 ], [ %19, %17 ], [ %27, %25 ], [ %35, %33 ], [ %43, %41 ], [ %49, %47 ], [ %53, %51 ], [ %5, %.preheader60.i ]
  %i.da = zext i32 %.sroa.045.1.i to i64
  %i.db = shl nuw i64 %i.da, 32
  br label %_RNvMsB_NtCshzWfHUSfYae_4core3numm27from_ascii_bytes_radix_impl.exit

.preheader60.i.preheader:                         ; preds = %thread-pre-split.i, %.preheader60.i
  %.sroa.0.1.i7884922 = phi ptr [ %i.dc, %.preheader60.i ], [ %.sroa.0.0.i787, %thread-pre-split.i ] ; 2 uses
  %.sroa.15.1.i4921 = phi i64 [ %i.dd, %.preheader60.i ], [ %.sroa.15.0.i, %thread-pre-split.i ]
  %.sroa.045.0.i4920 = phi i32 [ %5, %.preheader60.i ], [ 0, %thread-pre-split.i ]
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i7884922, i64 1
  %i.dd = add nsw i64 %.sroa.15.1.i4921, -1       ; 2 uses
  %i.de = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %.sroa.045.0.i4920, i32 10) ; 2 uses
  %i.df = extractvalue { i32, i1 } %i.de, 0       ; 2 uses
  %i.dg = extractvalue { i32, i1 } %i.de, 1
  %i.dh = load i8, ptr %.sroa.0.1.i7884922, align 1, !alias.scope !40, !noundef !11 ; 2 uses
  br i1 %i.dg, label %bb.z, label %bb.y, !prof !7

bb.y:                                             ; preds = %.preheader60.i.preheader
  %i.di = zext i8 %i.dh to i32
  %i.dj = add nsw i32 %i.di, -48                  ; 2 uses
  %i.dk = icmp ult i32 %i.dj, 10
  br i1 %i.dk, label %4, label %_RNvMsB_NtCshzWfHUSfYae_4core3numm27from_ascii_bytes_radix_impl.exit.thread

bb.z:                                             ; preds = %.preheader60.i.preheader
  %i.dl = add i8 %i.dh, -48
  %i.dm = icmp ult i8 %i.dl, 10
  %spec.select.i = select i1 %i.dm, i64 513, i64 257
  br label %_RNvMsB_NtCshzWfHUSfYae_4core3numm27from_ascii_bytes_radix_impl.exit

4:                                                ; preds = %bb.y
  %5 = add i32 %i.dj, %i.df                       ; 3 uses
  %6 = icmp ult i32 %5, %i.df
  br i1 %6, label %_RNvMsB_NtCshzWfHUSfYae_4core3numm27from_ascii_bytes_radix_impl.exit.thread, label %.preheader60.i, !prof !7

.lr.ph.i:                                         ; preds = %.preheader.i
  %7 = load i8, ptr %.sroa.0.0.i787, align 1, !alias.scope !40, !noundef !11
  %8 = zext i8 %7 to i32
  %9 = add nsw i32 %8, -48                        ; 3 uses
  %10 = icmp ult i32 %9, 10
  br i1 %10, label %11, label %_RNvMsB_NtCshzWfHUSfYae_4core3numm27from_ascii_bytes_radix_impl.exit.thread

11:                                               ; preds = %.lr.ph.i
  %.not56.i = icmp eq i64 %.sroa.15.0.i, 1
  br i1 %.not56.i, label %.loopexit.i, label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %11
  %12 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i787, i64 1
  %13 = load i8, ptr %12, align 1, !alias.scope !40, !noundef !11
  %14 = zext i8 %13 to i32
  %15 = add nsw i32 %14, -48                      ; 2 uses
  %16 = icmp ult i32 %15, 10
  br i1 %16, label %17, label %_RNvMsB_NtCshzWfHUSfYae_4core3numm27from_ascii_bytes_radix_impl.exit.thread

17:                                               ; preds = %.lr.ph.i.1
  %18 = mul nuw nsw i32 %9, 10
  %19 = add nuw nsw i32 %15, %18                  ; 2 uses
  %.not56.i.1 = icmp eq i64 %.sroa.15.0.i, 2
  br i1 %.not56.i.1, label %.loopexit.i, label %.lr.ph.i.2

.lr.ph.i.2:                                       ; preds = %17
  %20 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i787, i64 2
  %21 = load i8, ptr %20, align 1, !alias.scope !40, !noundef !11
  %22 = zext i8 %21 to i32
  %23 = add nsw i32 %22, -48                      ; 2 uses
  %24 = icmp ult i32 %23, 10
  br i1 %24, label %25, label %_RNvMsB_NtCshzWfHUSfYae_4core3numm27from_ascii_bytes_radix_impl.exit.thread

25:                                               ; preds = %.lr.ph.i.2
  %26 = mul nuw nsw i32 %19, 10
  %27 = add nuw nsw i32 %23, %26                  ; 2 uses
  %.not56.i.2 = icmp eq i64 %.sroa.15.0.i, 3
  br i1 %.not56.i.2, label %.loopexit.i, label %.lr.ph.i.3

.lr.ph.i.3:                                       ; preds = %25
  %28 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i787, i64 3
  %29 = load i8, ptr %28, align 1, !alias.scope !40, !noundef !11
  %30 = zext i8 %29 to i32
  %31 = add nsw i32 %30, -48                      ; 2 uses
  %32 = icmp ult i32 %31, 10
  br i1 %32, label %33, label %_RNvMsB_NtCshzWfHUSfYae_4core3numm27from_ascii_bytes_radix_impl.exit.thread

33:                                               ; preds = %.lr.ph.i.3
  %34 = mul nuw nsw i32 %27, 10
  %35 = add nuw nsw i32 %31, %34                  ; 2 uses
  %.not56.i.3 = icmp eq i64 %.sroa.15.0.i, 4
  br i1 %.not56.i.3, label %.loopexit.i, label %.lr.ph.i.4

.lr.ph.i.4:                                       ; preds = %33
  %36 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i787, i64 4
  %37 = load i8, ptr %36, align 1, !alias.scope !40, !noundef !11
  %38 = zext i8 %37 to i32
  %39 = add nsw i32 %38, -48                      ; 2 uses
  %40 = icmp ult i32 %39, 10
  br i1 %40, label %41, label %_RNvMsB_NtCshzWfHUSfYae_4core3numm27from_ascii_bytes_radix_impl.exit.thread

41:                                               ; preds = %.lr.ph.i.4
  %42 = mul i32 %35, 10
  %43 = add i32 %39, %42                          ; 2 uses
  %.not56.i.4 = icmp eq i64 %.sroa.15.0.i, 5
  br i1 %.not56.i.4, label %.loopexit.i, label %bb.aa

bb.aa:                                            ; preds = %41
  %44 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i787, i64 5
  %45 = load i8, ptr %44, align 1, !alias.scope !40, !noundef !11
  %46 = zext i8 %45 to i32
  %i.dn = add nsw i32 %46, -48                    ; 2 uses
  %i.do = icmp ult i32 %i.dn, 10
  br i1 %i.do, label %47, label %_RNvMsB_NtCshzWfHUSfYae_4core3numm27from_ascii_bytes_radix_impl.exit.thread

47:                                               ; preds = %bb.aa
  %48 = mul i32 %43, 10
  %49 = add i32 %i.dn, %48                        ; 2 uses
  %.not56.i.5 = icmp eq i64 %.sroa.15.0.i, 6
  br i1 %.not56.i.5, label %.loopexit.i, label %.lr.ph.i.a

.lr.ph.i.a:                                       ; preds = %47
  %50 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i787, i64 6
  %i.dp = load i8, ptr %50, align 1, !alias.scope !40, !noundef !11
  %i.dq = zext i8 %i.dp to i32
  %i.dr = add nsw i32 %i.dq, -48                  ; 2 uses
  %i.ds = icmp ult i32 %i.dr, 10
  br i1 %i.ds, label %51, label %_RNvMsB_NtCshzWfHUSfYae_4core3numm27from_ascii_bytes_radix_impl.exit.thread

51:                                               ; preds = %.lr.ph.i.a
  %52 = mul i32 %49, 10
  %53 = add i32 %i.dr, %52                        ; 2 uses
  %.not56.i.6 = icmp eq i64 %.sroa.15.0.i, 7
  br i1 %.not56.i.6, label %.loopexit.i, label %bb.ab

bb.ab:                                            ; preds = %51
  %54 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i787, i64 7
  %55 = load i8, ptr %54, align 1, !alias.scope !40, !noundef !11
  %56 = zext i8 %55 to i32
  %i.dt = add nsw i32 %56, -48                    ; 2 uses
  %57 = icmp ult i32 %i.dt, 10
  br i1 %57, label %58, label %_RNvMsB_NtCshzWfHUSfYae_4core3numm27from_ascii_bytes_radix_impl.exit.thread

58:                                               ; preds = %bb.ab
  %59 = mul i32 %53, 10
  %60 = add i32 %i.dt, %59
  br label %.loopexit.i

.invoke.sink.split:                               ; preds = %.loopexit1712.thread, %bb.eo, %bb.do, %.split3364, %.split3357
  %.ph4143 = phi ptr [ %i.qi, %.split3357 ], [ %i.qc, %.split3364 ], [ %i.qi, %bb.do ], [ %i.qc, %bb.eo ], [ %i.qc, %.loopexit1712.thread ]
  %.ph4144 = phi i64 [ %i.qj, %.split3357 ], [ %i.qd, %.split3364 ], [ %i.qj, %bb.do ], [ %i.qd, %bb.eo ], [ %i.qd, %.loopexit1712.thread ]
  %.ph4145 = phi ptr [ @15, %.split3357 ], [ @17, %.split3364 ], [ @15, %bb.do ], [ @17, %bb.eo ], [ @18, %.loopexit1712.thread ]
  store i64 %.lcssa23602406, ptr %.sroa.3.sroa.3.0..sroa.3.0..sroa_idx.sroa_idx, align 8
  store i64 %.lcssa18032365, ptr %i.n, align 8
  br label %.invoke

.invoke:                                          ; preds = %bb.v, %.invoke.sink.split, %.split3350
  %i.du = phi ptr [ %.ph4143, %.invoke.sink.split ], [ %i.cn, %.split3350 ], [ %i.cn, %bb.v ]
  %i.dv = phi i64 [ %.ph4144, %.invoke.sink.split ], [ %i.co, %.split3350 ], [ %i.co, %bb.v ] ; 2 uses
  %i.dw = phi ptr [ %.ph4145, %.invoke.sink.split ], [ @4, %.split3350 ], [ @4, %bb.v ]
  invoke void @_RNvNtCshzWfHUSfYae_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.du, i64 noundef %i.dv, i64 noundef 1, i64 noundef %i.dv, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dw) #22
          to label %.cont unwind label %.loopexit.split-lp1758

.cont:                                            ; preds = %.invoke
  unreachable

_RNvMsB_NtCshzWfHUSfYae_4core3numm27from_ascii_bytes_radix_impl.exit: ; preds = %bb.z, %.loopexit.i
  %.sroa.8.0.insert.insert.i = phi i64 [ %spec.select.i, %bb.z ], [ %i.db, %.loopexit.i ] ; 3 uses
  %i.dx = trunc i64 %.sroa.8.0.insert.insert.i to i1
  br i1 %i.dx, label %_RNvMsB_NtCshzWfHUSfYae_4core3numm27from_ascii_bytes_radix_impl.exit.thread, label %bb.ac

_RNvMsB_NtCshzWfHUSfYae_4core3numm27from_ascii_bytes_radix_impl.exit.thread: ; preds = %bb.x, %bb.x, %_RNvMsB_NtCshzWfHUSfYae_4core3numm27from_ascii_bytes_radix_impl.exit, %4, %bb.y, %.lr.ph.i, %.lr.ph.i.1, %.lr.ph.i.2, %.lr.ph.i.3, %.lr.ph.i.4, %bb.aa, %.lr.ph.i.a, %bb.ab, %.split3350
  %.sroa.0.0.i7863353 = phi ptr [ %i.cw, %4 ], [ %i.cr, %.split3350 ], [ %i.cw, %.lr.ph.i ], [ %i.cw, %bb.ab ], [ %i.cw, %.lr.ph.i.a ], [ %i.cw, %bb.aa ], [ %i.cw, %.lr.ph.i.4 ], [ %i.cw, %.lr.ph.i.3 ], [ %i.cw, %.lr.ph.i.2 ], [ %i.cw, %.lr.ph.i.1 ], [ %i.cw, %bb.y ], [ %i.cw, %_RNvMsB_NtCshzWfHUSfYae_4core3numm27from_ascii_bytes_radix_impl.exit ], [ %i.cw, %bb.x ], [ %i.cw, %bb.x ]
  %61 = phi i64 [ %i.cv, %4 ], [ 0, %.split3350 ], [ %i.cv, %.lr.ph.i ], [ %i.cv, %bb.ab ], [ %i.cv, %.lr.ph.i.a ], [ %i.cv, %bb.aa ], [ %i.cv, %.lr.ph.i.4 ], [ %i.cv, %.lr.ph.i.3 ], [ %i.cv, %.lr.ph.i.2 ], [ %i.cv, %.lr.ph.i.1 ], [ %i.cv, %bb.y ], [ %i.cv, %_RNvMsB_NtCshzWfHUSfYae_4core3numm27from_ascii_bytes_radix_impl.exit ], [ 1, %bb.x ], [ 1, %bb.x ]
  %.sroa.8.0.insert.insert.i1571 = phi i64 [ 513, %4 ], [ 1, %.split3350 ], [ 257, %.lr.ph.i ], [ 257, %bb.ab ], [ 257, %.lr.ph.i.a ], [ 257, %bb.aa ], [ 257, %.lr.ph.i.4 ], [ 257, %.lr.ph.i.3 ], [ 257, %.lr.ph.i.2 ], [ 257, %.lr.ph.i.1 ], [ 257, %bb.y ], [ %.sroa.8.0.insert.insert.i, %_RNvMsB_NtCshzWfHUSfYae_4core3numm27from_ascii_bytes_radix_impl.exit ], [ 257, %bb.x ], [ 257, %bb.x ]
  %.sroa.4731.0.extract.shift = lshr i64 %.sroa.8.0.insert.insert.i1571, 8
  %.sroa.4731.0.extract.trunc = trunc i64 %.sroa.4731.0.extract.shift to i8
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.dy, align 8
  %.sroa.4.0..sroa_idx440 = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 %.sroa.4731.0.extract.trunc, ptr %.sroa.4.0..sroa_idx440, align 1
  %.sroa.7442.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.0.0.i7863353, ptr %.sroa.7442.0..sroa_idx, align 8
  br label %bb.ah

bb.ac:                                            ; preds = %_RNvMsB_NtCshzWfHUSfYae_4core3numm27from_ascii_bytes_radix_impl.exit
  %.sroa.6733.0.extract.shift = lshr i64 %.sroa.8.0.insert.insert.i, 32
  %.sroa.6733.0.extract.trunc = trunc nuw i64 %.sroa.6733.0.extract.shift to i32
  store i32 %.sroa.6733.0.extract.trunc, ptr %i.aj, align 4
  br label %bb.ad

.loopexit1798:                                    ; preds = %bb.dm, %bb.n
  store i64 %.lcssa23602406, ptr %.sroa.3.sroa.3.0..sroa.3.0..sroa_idx.sroa_idx, align 8
  store i64 %.lcssa18032365, ptr %i.n, align 8
  br label %bb.ad

bb.ad:                                            ; preds = %.loopexit1798, %bb.hp, %bb.hr, %_RINvXs2Q_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_7IterMutTNtCskVLyBV5N46_15ra_ap_rustc_abi12AddressSpaceNtBW_11PointerSpecEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs2_BW_NtBW_16TargetDataLayout33parse_from_llvm_datalayout_strings3_0EBW_.exit, %bb.dc, %bb.de, %_RINvXs2Q_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_7IterMutTNtCskVLyBV5N46_15ra_ap_rustc_abi12AddressSpaceNtBW_11PointerSpecEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs2_BW_NtBW_16TargetDataLayout33parse_from_llvm_datalayout_strings4_0EBW_.exit, %bb.fl, %bb.ff, %bb.jx, %bb.jm, %bb.jb, %bb.iq, %bb.if, %bb.en, %bb.ac, %bb.r, %bb.q
  %.sroa.0.1 = phi i64 [ %.sroa.0.0.ph2469, %bb.q ], [ %.sroa.0.0.ph2469, %bb.r ], [ %.sroa.0.0.ph2469, %bb.ac ], [ %.sroa.0.0.ph2469, %bb.jx ], [ %.sroa.0.0.ph2469, %bb.jm ], [ %.sroa.0.0.ph2469, %bb.jb ], [ %.sroa.0.0.ph2469, %bb.iq ], [ %.sroa.0.0.ph2469, %bb.if ], [ %.sroa.0.0.ph2469, %bb.dc ], [ %.sroa.0.0.ph2469, %bb.hr ], [ %.sroa.111508.0, %bb.fl ], [ %.sroa.0.0.ph2469, %bb.ff ], [ %.sroa.0.0.ph2469, %bb.en ], [ %.sroa.0.0.ph2469, %bb.hp ], [ %.sroa.0.0.ph2469, %_RINvXs2Q_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_7IterMutTNtCskVLyBV5N46_15ra_ap_rustc_abi12AddressSpaceNtBW_11PointerSpecEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs2_BW_NtBW_16TargetDataLayout33parse_from_llvm_datalayout_strings4_0EBW_.exit ], [ %.sroa.0.0.ph2469, %bb.de ], [ %.sroa.0.0.ph2469, %_RINvXs2Q_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_7IterMutTNtCskVLyBV5N46_15ra_ap_rustc_abi12AddressSpaceNtBW_11PointerSpecEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs2_BW_NtBW_16TargetDataLayout33parse_from_llvm_datalayout_strings3_0EBW_.exit ], [ %.sroa.0.0.ph2469, %.loopexit1798 ]
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecReENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCskVLyBV5N46_15ra_ap_rustc_abi(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %bb.af unwind label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dz = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecReENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCskVLyBV5N46_15ra_ap_rustc_abi(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %.body unwind label %bb.ag

bb.af:                                            ; preds = %bb.ad
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecReENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCskVLyBV5N46_15ra_ap_rustc_abi(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecReEECskVLyBV5N46_15ra_ap_rustc_abi.exit unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp

bb.ag:                                            ; preds = %bb.ae
  %i.ea = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #19
  unreachable

bb.ah:                                            ; preds = %.loopexit1735, %.loopexit1729, %_RNCNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB7_16TargetDataLayout33parse_from_llvm_datalayout_strings1_0B7_.exit, %_RNvMsB_NtCshzWfHUSfYae_4core3numm27from_ascii_bytes_radix_impl.exit1094.thread, %_RNCNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB7_16TargetDataLayout33parse_from_llvm_datalayout_strings1_0B7_.exit1169, %.loopexit1723, %bb.dv, %_RNCNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB7_16TargetDataLayout33parse_from_llvm_datalayout_strings1_0B7_.exit965, %_RNvMsB_NtCshzWfHUSfYae_4core3numm27from_ascii_bytes_radix_impl.exit818.thread, %bb.hu, %_RNCNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB7_16TargetDataLayout33parse_from_llvm_datalayout_strings1_0B7_.exit1029, %bb.fs, %bb.dh, %_RNCNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB7_16TargetDataLayout33parse_from_llvm_datalayout_strings1_0B7_.exit1383, %_RNCNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB7_16TargetDataLayout33parse_from_llvm_datalayout_strings1_0B7_.exit1341, %_RNCNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB7_16TargetDataLayout33parse_from_llvm_datalayout_strings1_0B7_.exit1299, %_RNCNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB7_16TargetDataLayout33parse_from_llvm_datalayout_strings1_0B7_.exit1257, %_RNCNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB7_16TargetDataLayout33parse_from_llvm_datalayout_strings1_0B7_.exit1215, %_RNvMsB_NtCshzWfHUSfYae_4core3numm27from_ascii_bytes_radix_impl.exit.thread
  %.sink4978 = phi i64 [ 40, %.loopexit1735 ], [ 40, %.loopexit1729 ], [ 40, %_RNCNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB7_16TargetDataLayout33parse_from_llvm_datalayout_strings1_0B7_.exit ], [ 24, %_RNvMsB_NtCshzWfHUSfYae_4core3numm27from_ascii_bytes_radix_impl.exit1094.thread ], [ 40, %_RNCNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB7_16TargetDataLayout33parse_from_llvm_datalayout_strings1_0B7_.exit1169 ], [ 40, %.loopexit1723 ], [ 40, %bb.dv ], [ 40, %_RNCNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB7_16TargetDataLayout33parse_from_llvm_datalayout_strings1_0B7_.exit965 ], [ 24, %_RNvMsB_NtCshzWfHUSfYae_4core3numm27from_ascii_bytes_radix_impl.exit818.thread ], [ 16, %bb.hu ], [ 40, %_RNCNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB7_16TargetDataLayout33parse_from_llvm_datalayout_strings1_0B7_.exit1029 ], [ 40, %bb.fs ], [ 16, %bb.dh ], [ 40, %_RNCNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB7_16TargetDataLayout33parse_from_llvm_datalayout_strings1_0B7_.exit1383 ], [ 40, %_RNCNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB7_16TargetDataLayout33parse_from_llvm_datalayout_strings1_0B7_.exit1341 ], [ 40, %_RNCNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB7_16TargetDataLayout33parse_from_llvm_datalayout_strings1_0B7_.exit1299 ], [ 40, %_RNCNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB7_16TargetDataLayout33parse_from_llvm_datalayout_strings1_0B7_.exit1257 ], [ 40, %_RNCNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB7_16TargetDataLayout33parse_from_llvm_datalayout_strings1_0B7_.exit1215 ], [ 24, %_RNvMsB_NtCshzWfHUSfYae_4core3numm27from_ascii_bytes_radix_impl.exit.thread ]
  %.sink4977 = phi i64 [ %i.kt, %.loopexit1735 ], [ %i.nq, %.loopexit1729 ], [ %.sroa.19.0, %_RNCNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB7_16TargetDataLayout33parse_from_llvm_datalayout_strings1_0B7_.exit ], [ %.sroa.11.0, %_RNvMsB_NtCshzWfHUSfYae_4core3numm27from_ascii_bytes_radix_impl.exit1094.thread ], [ %.sroa.221448.0, %_RNCNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB7_16TargetDataLayout33parse_from_llvm_datalayout_strings1_0B7_.exit1169 ], [ %i.adh, %.loopexit1723 ], [ %i.ru, %bb.dv ], [ %.sroa.221540.0, %_RNCNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB7_16TargetDataLayout33parse_from_llvm_datalayout_strings1_0B7_.exit965 ], [ %.sroa.11180.0, %_RNvMsB_NtCshzWfHUSfYae_4core3numm27from_ascii_bytes_radix_impl.exit818.thread ], [ %i.agv, %bb.hu ], [ %.sroa.221517.0, %_RNCNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB7_16TargetDataLayout33parse_from_llvm_datalayout_strings1_0B7_.exit1029 ], [ %i.yj, %bb.fs ], [ %i.pp, %bb.dh ], [ %.sroa.22.0, %_RNCNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB7_16TargetDataLayout33parse_from_llvm_datalayout_strings1_0B7_.exit1383 ], [ %.sroa.221396.0, %_RNCNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB7_16TargetDataLayout33parse_from_llvm_datalayout_strings1_0B7_.exit1341 ], [ %.sroa.221407.0, %_RNCNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB7_16TargetDataLayout33parse_from_llvm_datalayout_strings1_0B7_.exit1299 ], [ %.sroa.221418.0, %_RNCNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB7_16TargetDataLayout33parse_from_llvm_datalayout_strings1_0B7_.exit1257 ], [ %.sroa.221429.0, %_RNCNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB7_16TargetDataLayout33parse_from_llvm_datalayout_strings1_0B7_.exit1215 ], [ %61, %_RNvMsB_NtCshzWfHUSfYae_4core3numm27from_ascii_bytes_radix_impl.exit.thread ]
  %.sink4976 = phi i64 [ 48, %.loopexit1735 ], [ 48, %.loopexit1729 ], [ 48, %_RNCNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB7_16TargetDataLayout33parse_from_llvm_datalayout_strings1_0B7_.exit ], [ 32, %_RNvMsB_NtCshzWfHUSfYae_4core3numm27from_ascii_bytes_radix_impl.exit1094.thread ], [ 48, %_RNCNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB7_16TargetDataLayout33parse_from_llvm_datalayout_strings1_0B7_.exit1169 ], [ 48, %.loopexit1723 ], [ 48, %bb.dv ], [ 48, %_RNCNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB7_16TargetDataLayout33parse_from_llvm_datalayout_strings1_0B7_.exit965 ], [ 32, %_RNvMsB_NtCshzWfHUSfYae_4core3numm27from_ascii_bytes_radix_impl.exit818.thread ], [ 24, %bb.hu ], [ 48, %_RNCNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB7_16TargetDataLayout33parse_from_llvm_datalayout_strings1_0B7_.exit1029 ], [ 48, %bb.fs ], [ 24, %bb.dh ], [ 48, %_RNCNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB7_16TargetDataLayout33parse_from_llvm_datalayout_strings1_0B7_.exit1383 ], [ 48, %_RNCNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB7_16TargetDataLayout33parse_from_llvm_datalayout_strings1_0B7_.exit1341 ], [ 48, %_RNCNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB7_16TargetDataLayout33parse_from_llvm_datalayout_strings1_0B7_.exit1299 ], [ 48, %_RNCNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB7_16TargetDataLayout33parse_from_llvm_datalayout_strings1_0B7_.exit1257 ], [ 48, %_RNCNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB7_16TargetDataLayout33parse_from_llvm_datalayout_strings1_0B7_.exit1215 ], [ 32, %_RNvMsB_NtCshzWfHUSfYae_4core3numm27from_ascii_bytes_radix_impl.exit.thread ]
  %.sink4975 = phi ptr [ @14, %.loopexit1735 ], [ @14, %.loopexit1729 ], [ @14, %_RNCNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB7_16TargetDataLayout33parse_from_llvm_datalayout_strings1_0B7_.exit ], [ @14, %_RNvMsB_NtCshzWfHUSfYae_4core3numm27from_ascii_bytes_radix_impl.exit1094.thread ], [ @14, %_RNCNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB7_16TargetDataLayout33parse_from_llvm_datalayout_strings1_0B7_.exit1169 ], [ @14, %.loopexit1723 ], [ @16, %bb.dv ], [ %i.qi, %_RNCNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB7_16TargetDataLayout33parse_from_llvm_datalayout_strings1_0B7_.exit965 ], [ @11, %_RNvMsB_NtCshzWfHUSfYae_4core3numm27from_ascii_bytes_radix_impl.exit818.thread ], [ %i.agy, %bb.hu ], [ %i.qc, %_RNCNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB7_16TargetDataLayout33parse_from_llvm_datalayout_strings1_0B7_.exit1029 ], [ @19, %bb.fs ], [ %i.pu, %bb.dh ], [ @6, %_RNCNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB7_16TargetDataLayout33parse_from_llvm_datalayout_strings1_0B7_.exit1383 ], [ @7, %_RNCNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB7_16TargetDataLayout33parse_from_llvm_datalayout_strings1_0B7_.exit1341 ], [ @8, %_RNCNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB7_16TargetDataLayout33parse_from_llvm_datalayout_strings1_0B7_.exit1299 ], [ @9, %_RNCNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB7_16TargetDataLayout33parse_from_llvm_datalayout_strings1_0B7_.exit1257 ], [ @10, %_RNCNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB7_16TargetDataLayout33parse_from_llvm_datalayout_strings1_0B7_.exit1215 ], [ @5, %_RNvMsB_NtCshzWfHUSfYae_4core3numm27from_ascii_bytes_radix_impl.exit.thread ]
  %.sink4974 = phi i64 [ 56, %.loopexit1735 ], [ 56, %.loopexit1729 ], [ 56, %_RNCNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB7_16TargetDataLayout33parse_from_llvm_datalayout_strings1_0B7_.exit ], [ 40, %_RNvMsB_NtCshzWfHUSfYae_4core3numm27from_ascii_bytes_radix_impl.exit1094.thread ], [ 56, %_RNCNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB7_16TargetDataLayout33parse_from_llvm_datalayout_strings1_0B7_.exit1169 ], [ 56, %.loopexit1723 ], [ 56, %bb.dv ], [ 56, %_RNCNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB7_16TargetDataLayout33parse_from_llvm_datalayout_strings1_0B7_.exit965 ], [ 40, %_RNvMsB_NtCshzWfHUSfYae_4core3numm27from_ascii_bytes_radix_impl.exit818.thread ], [ 32, %bb.hu ], [ 56, %_RNCNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB7_16TargetDataLayout33parse_from_llvm_datalayout_strings1_0B7_.exit1029 ], [ 56, %bb.fs ], [ 32, %bb.dh ], [ 56, %_RNCNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB7_16TargetDataLayout33parse_from_llvm_datalayout_strings1_0B7_.exit1383 ], [ 56, %_RNCNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB7_16TargetDataLayout33parse_from_llvm_datalayout_strings1_0B7_.exit1341 ], [ 56, %_RNCNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB7_16TargetDataLayout33parse_from_llvm_datalayout_strings1_0B7_.exit1299 ], [ 56, %_RNCNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB7_16TargetDataLayout33parse_from_llvm_datalayout_strings1_0B7_.exit1257 ], [ 56, %_RNCNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB7_16TargetDataLayout33parse_from_llvm_datalayout_strings1_0B7_.exit1215 ], [ 40, %_RNvMsB_NtCshzWfHUSfYae_4core3numm27from_ascii_bytes_radix_impl.exit.thread ]
  %.sink = phi i64 [ 2, %.loopexit1735 ], [ 2, %.loopexit1729 ], [ 2, %_RNCNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB7_16TargetDataLayout33parse_from_llvm_datalayout_strings1_0B7_.exit ], [ 2, %_RNvMsB_NtCshzWfHUSfYae_4core3numm27from_ascii_bytes_radix_impl.exit1094.thread ], [ 2, %_RNCNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB7_16TargetDataLayout33parse_from_llvm_datalayout_strings1_0B7_.exit1169 ], [ 2, %.loopexit1723 ], [ 1, %bb.dv ], [ %i.qj, %_RNCNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB7_16TargetDataLayout33parse_from_llvm_datalayout_strings1_0B7_.exit965 ], [ 1, %_RNvMsB_NtCshzWfHUSfYae_4core3numm27from_ascii_bytes_radix_impl.exit818.thread ], [ %.sroa.11.0, %bb.hu ], [ %i.qd, %_RNCNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB7_16TargetDataLayout33parse_from_llvm_datalayout_strings1_0B7_.exit1029 ], [ 1, %bb.fs ], [ %.sroa.11180.0, %bb.dh ], [ 1, %_RNCNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB7_16TargetDataLayout33parse_from_llvm_datalayout_strings1_0B7_.exit1383 ], [ 3, %_RNCNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB7_16TargetDataLayout33parse_from_llvm_datalayout_strings1_0B7_.exit1341 ], [ 3, %_RNCNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB7_16TargetDataLayout33parse_from_llvm_datalayout_strings1_0B7_.exit1299 ], [ 3, %_RNCNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB7_16TargetDataLayout33parse_from_llvm_datalayout_strings1_0B7_.exit1257 ], [ 4, %_RNCNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB7_16TargetDataLayout33parse_from_llvm_datalayout_strings1_0B7_.exit1215 ], [ 1, %_RNvMsB_NtCshzWfHUSfYae_4core3numm27from_ascii_bytes_radix_impl.exit.thread ]
  %.sroa.6633.sroa.5.0..sroa.6633.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 %.sink4978
  store i64 %.sink4977, ptr %.sroa.6633.sroa.5.0..sroa.6633.0..sroa_idx.sroa_idx, align 8
  %.sroa.6633.sroa.6.0..sroa.6633.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 %.sink4976
  store ptr %.sink4975, ptr %.sroa.6633.sroa.6.0..sroa.6633.0..sroa_idx.sroa_idx, align 8
  %.sroa.6633.sroa.7.0..sroa.6633.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 %.sink4974
  store i64 %.sink, ptr %.sroa.6633.sroa.7.0..sroa.6633.0..sroa_idx.sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecReENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCskVLyBV5N46_15ra_ap_rustc_abi(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %bb.aj unwind label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.eb = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecReENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCskVLyBV5N46_15ra_ap_rustc_abi(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %.body unwind label %bb.ak

bb.aj:                                            ; preds = %bb.ah
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecReENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCskVLyBV5N46_15ra_ap_rustc_abi(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecReEECskVLyBV5N46_15ra_ap_rustc_abi.exit794 unwind label %.loopexit.split-lp.loopexit.split-lp

bb.ak:                                            ; preds = %bb.ai
  %i.ec = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #19
  unreachable

bb.al:                                            ; preds = %bb.t, %bb.n
  %i.ed = getelementptr inbounds nuw i8, ptr %i.cg, i64 8 ; 7 uses
  %i.ee = load i64, ptr %i.ed, align 8, !noundef !11 ; 3 uses
  %.pre3239.pre = load ptr, ptr %i.cg, align 8    ; 10 uses
  switch i64 %i.ee, label %.thread1578 [
    i64 1, label %bb.am
    i64 3, label %bb.ao
    i64 4, label %bb.au
  ]

bb.am:                                            ; preds = %bb.al
  %lhsc756 = load i8, ptr %.pre3239.pre, align 1
  %i.ef = icmp eq i8 %lhsc756, 97
  br i1 %i.ef, label %bb.an, label %.thread1578

bb.an:                                            ; preds = %bb.am
  store i64 %.lcssa23602406, ptr %.sroa.3.sroa.3.0..sroa.3.0..sroa_idx.sroa_idx, align 8
  store i64 %.lcssa18032365, ptr %i.n, align 8
  %i.eg = icmp eq i64 %i.ch, 1
  br i1 %i.eg, label %_RNCNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB7_16TargetDataLayout33parse_from_llvm_datalayout_strings1_0B7_.exit1383, label %bb.jn

bb.ao:                                            ; preds = %bb.al
  %i.eh = load i16, ptr %.pre3239.pre, align 1
  %i.ei = xor i16 %i.eh, 12646
  %i.ej = getelementptr i8, ptr %.pre3239.pre, i64 2
  %i.ek = load i8, ptr %i.ej, align 1
  %i.el = zext i8 %i.ek to i16
  %i.em = xor i16 %i.el, 54
  %i.en = or i16 %i.ei, %i.em
  %i.eo = icmp ne i16 %i.en, 0
  %i.ep = zext i1 %i.eo to i32
  %i.eq = icmp eq i32 %i.ep, 0
  br i1 %i.eq, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  store i64 %.lcssa23602406, ptr %.sroa.3.sroa.3.0..sroa.3.0..sroa_idx.sroa_idx, align 8
  store i64 %.lcssa18032365, ptr %i.n, align 8
  %i.er = icmp eq i64 %i.ch, 1
  br i1 %i.er, label %_RNCNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB7_16TargetDataLayout33parse_from_llvm_datalayout_strings1_0B7_.exit1341, label %bb.jc

bb.aq:                                            ; preds = %bb.ao
  %i.es = load i16, ptr %.pre3239.pre, align 1
  %i.et = xor i16 %i.es, 13158
  %i.eu = getelementptr i8, ptr %.pre3239.pre, i64 2
  %i.ev = load i8, ptr %i.eu, align 1
  %i.ew = zext i8 %i.ev to i16
  %i.ex = xor i16 %i.ew, 50
  %i.ey = or i16 %i.et, %i.ex
  %i.ez = icmp ne i16 %i.ey, 0
  %i.fa = zext i1 %i.ez to i32
  %i.fb = icmp eq i32 %i.fa, 0
  br i1 %i.fb, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  store i64 %.lcssa23602406, ptr %.sroa.3.sroa.3.0..sroa.3.0..sroa_idx.sroa_idx, align 8
  store i64 %.lcssa18032365, ptr %i.n, align 8
  %i.fc = icmp eq i64 %i.ch, 1
  br i1 %i.fc, label %_RNCNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB7_16TargetDataLayout33parse_from_llvm_datalayout_strings1_0B7_.exit1299, label %bb.ir

bb.as:                                            ; preds = %bb.aq
  %i.fd = load i16, ptr %.pre3239.pre, align 1
  %i.fe = xor i16 %i.fd, 13926
  %i.ff = getelementptr i8, ptr %.pre3239.pre, i64 2
  %i.fg = load i8, ptr %i.ff, align 1
  %i.fh = zext i8 %i.fg to i16
  %i.fi = xor i16 %i.fh, 52
  %i.fj = or i16 %i.fe, %i.fi
  %i.fk = icmp ne i16 %i.fj, 0
  %i.fl = zext i1 %i.fk to i32
  %i.fm = icmp eq i32 %i.fl, 0
  br i1 %i.fm, label %bb.at, label %.thread1578

bb.at:                                            ; preds = %bb.as
  store i64 %.lcssa23602406, ptr %.sroa.3.sroa.3.0..sroa.3.0..sroa_idx.sroa_idx, align 8
  store i64 %.lcssa18032365, ptr %i.n, align 8
  %i.fn = icmp eq i64 %i.ch, 1
  br i1 %i.fn, label %_RNCNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB7_16TargetDataLayout33parse_from_llvm_datalayout_strings1_0B7_.exit1257, label %bb.ig

bb.au:                                            ; preds = %bb.al
  %i.fo = load i32, ptr %.pre3239.pre, align 1
  %i.fp = icmp ne i32 %i.fo, 942813542
  %i.fq = zext i1 %i.fp to i32
  %i.fr = icmp eq i32 %i.fq, 0
  br i1 %i.fr, label %bb.av, label %.thread1578

.thread1578:                                      ; preds = %bb.al, %bb.as, %bb.am, %bb.au
  %.not760 = icmp eq i64 %i.ch, 1
  br i1 %.not760, label %bb.di, label %bb.aw

bb.av:                                            ; preds = %bb.au
  store i64 %.lcssa23602406, ptr %.sroa.3.sroa.3.0..sroa.3.0..sroa_idx.sroa_idx, align 8
  store i64 %.lcssa18032365, ptr %i.n, align 8
  %i.fs = icmp eq i64 %i.ch, 1
  br i1 %i.fs, label %_RNCNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB7_16TargetDataLayout33parse_from_llvm_datalayout_strings1_0B7_.exit1215, label %bb.hv

bb.aw:                                            ; preds = %.thread1578
  %i.ft = invoke noundef zeroext i1 @_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCskVLyBV5N46_15ra_ap_rustc_abi(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.pre3239.pre, i64 noundef %i.ee, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef 1)
          to label %bb.ax unwind label %.loopexit1757.loopexit

bb.ax:                                            ; preds = %bb.aw
  br i1 %i.ft, label %bb.ft, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.fu = icmp eq i64 %i.ch, 5
  %.pre3240 = load ptr, ptr %i.cg, align 8        ; 2 uses
  %.pre3242 = load i64, ptr %i.ed, align 8        ; 2 uses
  br i1 %i.fu, label %bb.az, label %bb.di

bb.az:                                            ; preds = %bb.ay
  %i.fv = invoke noundef zeroext i1 @_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCskVLyBV5N46_15ra_ap_rustc_abi(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.pre3240, i64 noundef %.pre3242, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef 1)
          to label %bb.ba unwind label %.loopexit1757.loopexit

bb.ba:                                            ; preds = %bb.az
  br i1 %i.fv, label %bb.bb, label %._crit_edge3237

._crit_edge3237:                                  ; preds = %bb.ba
  %.pre3238 = load ptr, ptr %i.cg, align 8
  %.pre3241 = load i64, ptr %i.ed, align 8
  br label %bb.di

bb.bb:                                            ; preds = %bb.ba
  store i64 %.lcssa23602406, ptr %.sroa.3.sroa.3.0..sroa.3.0..sroa_idx.sroa_idx, align 8
  store i64 %.lcssa18032365, ptr %i.n, align 8
  %i.fw = getelementptr inbounds nuw i8, ptr %i.cg, i64 32
  %i.fx = load ptr, ptr %i.cg, align 8, !nonnull !11, !noundef !11 ; 3 uses
  %i.fy = load i64, ptr %i.ed, align 8, !noundef !11 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i32 112, ptr %i.e, align 4
  %i.fz = invoke noundef zeroext i1 @_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCskVLyBV5N46_15ra_ap_rustc_abi(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.fx, i64 noundef %i.fy, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.e, i64 noundef 1)
          to label %bb.bc unwind label %.loopexit1757.loopexit.split-lp

bb.bc:                                            ; preds = %bb.bb
  br i1 %i.fz, label %bb.be, label %bb.bd, !prof !36

bb.bd:                                            ; preds = %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %.invoke4139

.invoke4139:                                      ; preds = %bb.gf, %bb.fv, %bb.bn, %bb.bd
  %i.ga = phi ptr [ @12, %bb.bd ], [ @13, %bb.bn ], [ @20, %bb.fv ], [ @21, %bb.gf ]
  invoke void @_RNvNtCshzWfHUSfYae_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ga) #22
          to label %.cont4140 unwind label %.loopexit.split-lp1758

.cont4140:                                        ; preds = %.invoke4139
  unreachable

bb.be:                                            ; preds = %bb.bc
  %i.gb = add i64 %i.fy, -1                       ; 3 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fx, i64 1 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i32 102, ptr %i.d, align 4
  %i.gd = invoke noundef zeroext i1 @_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCskVLyBV5N46_15ra_ap_rustc_abi(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.gc, i64 noundef %i.gb, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.d, i64 noundef 1)
          to label %bb.bf unwind label %.loopexit1757.loopexit.split-lp

bb.bf:                                            ; preds = %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br i1 %i.gd, label %bb.bl, label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.bo
  %.sroa.11180.0 = phi i64 [ %i.hs, %bb.bo ], [ %i.gb, %bb.bf ] ; 11 uses
  %.sroa.0171.0 = phi ptr [ %i.ht, %bb.bo ], [ %i.gc, %bb.bf ] ; 8 uses
  %.sroa.0170.0 = phi i8 [ 1, %bb.bo ], [ 0, %bb.bf ] ; 3 uses
  %i.ge = icmp samesign eq i64 %.sroa.11180.0, 0
  br i1 %i.ge, label %bb.cd, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.gf = load i8, ptr %.sroa.0171.0, align 1, !alias.scope !43, !noalias !46, !noundef !11 ; 5 uses
  %i.gg = icmp sgt i8 %i.gf, -1
  br i1 %i.gg, label %bb.bi, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskVLyBV5N46_15ra_ap_rustc_abi.exit12.i.i.i.i
end_hunk_0
