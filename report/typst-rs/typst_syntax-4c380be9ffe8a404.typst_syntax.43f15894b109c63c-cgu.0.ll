Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/typst-rs/original/typst_syntax-4c380be9ffe8a404.typst_syntax.43f15894b109c63c-cgu.0?download=true
inline.NumInlined: 3813
inline.NumDeleted: 1552
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 27
begin_hunk_0_@_RNvXsf_NtCs5PEMdK7bMAG_12typst_syntax7packageNtB5_12VersionBoundNtNtNtCs3oUPovFnLWP_4core3str6traits7FromStr8from_str:bb.a
  %i.o = load i32, ptr %i.n, align 4, !range !47, !noundef !19
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.q = load i32, ptr %i.p, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.r = trunc nuw i32 %i.o to i1
  br i1 %i.r, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call fastcc void @_RNCNvXsf_NtCs5PEMdK7bMAG_12typst_syntax7packageNtB7_12VersionBoundNtNtNtCs3oUPovFnLWP_4core3str6traits7FromStr8from_str0B9_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.g, ptr nonnull %i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @588) #63
  %i.s = load i32, ptr %i.g, align 8, !range !47, !noundef !19
  %i.t = trunc nuw i32 %i.s to i1
  br i1 %i.t, label %bb.i, label %bb.j

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !10102
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.b, i8 0, i64 15, i1 false), !noalias !10102
  %.sroa.45.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 15
  store i8 -128, ptr %.sroa.45.0..sroa_idx.i, align 1, !noalias !10102
  invoke void @_RNvMNtCsakL8LGkl72C_4ecow6stringNtB2_9EcoString8push_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @85, i64 noundef 38)
          to label %_RNCNvXsf_NtCs5PEMdK7bMAG_12typst_syntax7packageNtB7_12VersionBoundNtNtNtCs3oUPovFnLWP_4core3str6traits7FromStr8from_strs_0B9_.exit unwind label %bb.f, !noalias !10102

bb.f:                                             ; preds = %bb.e
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs5PEMdK7bMAG_12typst_syntax(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b) #59
          to label %common.resume unwind label %bb.g, !noalias !10102

bb.g:                                             ; preds = %bb.f
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #61, !noalias !10102
  unreachable

common.resume:                                    ; preds = %bb.s, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.u, %bb.f ], [ %i.br, %bb.s ]
  resume { ptr, i32 } %common.resume.op

_RNCNvXsf_NtCs5PEMdK7bMAG_12typst_syntax7packageNtB7_12VersionBoundNtNtNtCs3oUPovFnLWP_4core3str6traits7FromStr8from_strs_0B9_.exit: ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.w, ptr noundef nonnull align 8 dereferenceable(16) %i.b, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !10102
  br label %bb.h

bb.h:                                             ; preds = %_RNCNvXsf_NtCs5PEMdK7bMAG_12typst_syntax7packageNtB7_12VersionBoundNtNtNtCs3oUPovFnLWP_4core3str6traits7FromStr8from_strs_0B9_.exit, %bb.b
  store i32 1, ptr %0, align 8
  br label %bb.w

bb.i:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.050.0.copyload = load i32, ptr %i.x, align 8
  %.sroa.451.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  %.sroa.453.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.453.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.451.0..sroa_idx, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.050.0.copyload, ptr %i.y, align 8
  store i32 1, ptr %0, align 8
  br label %bb.w

bb.j:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.aa = load <2 x i32>, ptr %i.z, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call fastcc void @_RNCNvXsf_NtCs5PEMdK7bMAG_12typst_syntax7packageNtB7_12VersionBoundNtNtNtCs3oUPovFnLWP_4core3str6traits7FromStr8from_str0B9_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.f, ptr nonnull %i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @589) #63
  %i.ab = load i32, ptr %i.f, align 8, !range !47, !noundef !19
  %i.ac = trunc nuw i32 %i.ab to i1
  br i1 %i.ac, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ad = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.056.0.copyload = load i32, ptr %i.ad, align 8
  %.sroa.457.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  %.sroa.459.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.459.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.457.0..sroa_idx, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.056.0.copyload, ptr %i.ae, align 8
  store i32 1, ptr %0, align 8
  br label %bb.w

bb.l:                                             ; preds = %bb.j
  %i.af = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.ag = load <2 x i32>, ptr %i.af, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10103)
  %i.ah = load i8, ptr %.sroa.740.0..sroa_idx, align 1, !range !20, !alias.scope !10103, !noundef !19
  %i.ai = trunc nuw i8 %i.ah to i1
  br i1 %i.ai, label %bb.r, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.val.i = load ptr, ptr %.sroa.538.0..sroa_idx, align 8, !alias.scope !10103, !nonnull !19, !noundef !19 ; 3 uses
  %.val1.i = load i64, ptr %.sroa.538.sroa.4.0..sroa.538.0..sroa_idx.sroa_idx, align 8, !alias.scope !10103, !noundef !19 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10104)
  %i.aj = load i64, ptr %.sroa.538.sroa.6.0..sroa.538.0..sroa_idx.sroa_idx, align 8, !alias.scope !10105, !noundef !19 ; 5 uses
  %.not.i.i = icmp ugt i64 %i.aj, %.val1.i
  %.promoted.i.i = load i64, ptr %.sroa.538.sroa.5.0..sroa.538.0..sroa_idx.sroa_idx, align 8, !alias.scope !10105 ; 2 uses
  %i.ak = icmp ult i64 %i.aj, %.promoted.i.i
  %or.cond27.i.i = or i1 %.not.i.i, %i.ak
  br i1 %or.cond27.i.i, label %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE7get_endCs5PEMdK7bMAG_12typst_syntax.exit.i, label %.lr.ph.split.preheader.i.i

.lr.ph.split.preheader.i.i:                       ; preds = %bb.m
  %i.al = load i8, ptr %.sroa.538.sroa.9.0..sroa.538.0..sroa_idx.sroa_idx, align 8, !alias.scope !10105, !noundef !19 ; 2 uses
  %i.am = zext nneg i8 %i.al to i64               ; 4 uses
  %i.an = icmp ult i8 %i.al, 5
  tail call void @llvm.assume(i1 %i.an)
  %i.ao = getelementptr i8, ptr %.sroa.538.sroa.7.0..sroa.538.0..sroa_idx.sroa_idx, i64 %i.am
  %i.ap = getelementptr i8, ptr %i.ao, i64 -1
  %.pre.i.i = load i8, ptr %i.ap, align 1, !alias.scope !10105 ; 2 uses
  br label %.lr.ph.split.i.i

.lr.ph.split.i.i:                                 ; preds = %bb.p, %.lr.ph.split.preheader.i.i
  %i.aq = phi i64 [ %i.be, %bb.p ], [ %.promoted.i.i, %.lr.ph.split.preheader.i.i ] ; 4 uses
  %i.ar = sub nuw i64 %i.aj, %i.aq                ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.aq ; 2 uses
  %i.at = icmp samesign ult i64 %i.ar, 16
  br i1 %i.at, label %.preheader.i.i.i, label %bb.n

.preheader.i.i.i:                                 ; preds = %.lr.ph.split.i.i
  %.not.i.i.i = icmp eq i64 %i.aj, %i.aq
  br i1 %.not.i.i.i, label %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE7get_endCs5PEMdK7bMAG_12typst_syntax.exit.i, label %.lr.ph.i.i.i

bb.n:                                             ; preds = %.lr.ph.split.i.i
  %i.au = tail call { i64, i64 } @_RNvNtNtCs3oUPovFnLWP_4core5slice6memchr14memchr_aligned(i8 noundef %.pre.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.as, i64 noundef range(i64 0, -9223372036854775808) %i.ar), !noalias !10106 ; 2 uses
  %i.av = extractvalue { i64, i64 } %i.au, 0
  %i.aw = extractvalue { i64, i64 } %i.au, 1
  %i.ax = trunc nuw i64 %i.av to i1
  br i1 %i.ax, label %.loopexit.i.i, label %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE7get_endCs5PEMdK7bMAG_12typst_syntax.exit.i

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i, %bb.o
  %.sroa.04.011.i.i.i = phi i64 [ %i.bb, %bb.o ], [ 0, %.preheader.i.i.i ] ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.as, i64 %.sroa.04.011.i.i.i
  %i.az = load i8, ptr %i.ay, align 1, !alias.scope !10107, !noalias !10106, !noundef !19
  %i.ba = icmp eq i8 %i.az, %.pre.i.i
  br i1 %i.ba, label %.loopexit.i.i, label %bb.o

bb.o:                                             ; preds = %.lr.ph.i.i.i
  %i.bb = add nuw nsw i64 %.sroa.04.011.i.i.i, 1  ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.bb, %i.ar
  br i1 %exitcond.not.i.i.i, label %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE7get_endCs5PEMdK7bMAG_12typst_syntax.exit.i, label %.lr.ph.i.i.i

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i, %bb.n
  %.sroa.5.0.i.i.i = phi i64 [ %i.aw, %bb.n ], [ %.sroa.04.011.i.i.i, %.lr.ph.i.i.i ] ; 2 uses
  %i.bc = icmp ult i64 %.sroa.5.0.i.i.i, %i.ar
  tail call void @llvm.assume(i1 %i.bc)
  %i.bd = add i64 %i.aq, 1
  %i.be = add i64 %i.bd, %.sroa.5.0.i.i.i         ; 5 uses
  %.not11.i.i = icmp ult i64 %i.be, %i.am
  %.not12.i.i = icmp ugt i64 %i.be, %.val1.i
  %or.cond.i.i = or i1 %.not11.i.i, %.not12.i.i
  br i1 %or.cond.i.i, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.q, %.loopexit.i.i
  %i.bf = icmp ult i64 %i.aj, %i.be
  br i1 %i.bf, label %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE7get_endCs5PEMdK7bMAG_12typst_syntax.exit.i, label %.lr.ph.split.i.i

bb.q:                                             ; preds = %.loopexit.i.i
  %i.bg = sub nuw i64 %i.be, %i.am                ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.bg
  %bcmp.i.i = call i32 @bcmp(ptr nonnull %i.bh, ptr nonnull %.sroa.538.sroa.7.0..sroa.538.0..sroa_idx.sroa_idx, i64 %i.am), !noalias !10108
  %i.bi = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.bi, label %_RNvXs_NtNtCs3oUPovFnLWP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i, label %bb.p

_RNvXs_NtNtCs3oUPovFnLWP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i: ; preds = %bb.q
  %i.bj = load i64, ptr %i.i, align 8, !alias.scope !10103, !noundef !19 ; 2 uses
  %i.bk = sub nuw i64 %i.bg, %i.bj
  br label %select.unfold

_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE7get_endCs5PEMdK7bMAG_12typst_syntax.exit.i: ; preds = %bb.p, %.preheader.i.i.i, %bb.n, %bb.o, %bb.m
  %i.bl = load i8, ptr %.sroa.639.0..sroa_idx, align 8, !range !20, !alias.scope !10109, !noundef !19
  %i.bm = trunc nuw i8 %i.bl to i1
  %.pre.i2.i = load i64, ptr %i.i, align 8, !alias.scope !10109 ; 3 uses
  %.pre2.i.i = load i64, ptr %.sroa.437.0..sroa_idx, align 8, !alias.scope !10109 ; 2 uses
  %.not.i3.i = icmp ne i64 %.pre2.i.i, %.pre.i2.i
  %or.cond.not.i.i = select i1 %i.bm, i1 true, i1 %.not.i3.i
  %i.bn = sub nuw i64 %.pre2.i.i, %.pre.i2.i
  br i1 %or.cond.not.i.i, label %select.unfold, label %bb.r

select.unfold:                                    ; preds = %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE7get_endCs5PEMdK7bMAG_12typst_syntax.exit.i, %_RNvXs_NtNtCs3oUPovFnLWP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i
  %.sroa.4.1.i = phi i64 [ %i.bk, %_RNvXs_NtNtCs3oUPovFnLWP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i ], [ %i.bn, %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE7get_endCs5PEMdK7bMAG_12typst_syntax.exit.i ]
  %.pn = phi i64 [ %i.bj, %_RNvXs_NtNtCs3oUPovFnLWP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i ], [ %.pre.i2.i, %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE7get_endCs5PEMdK7bMAG_12typst_syntax.exit.i ]
  %.sroa.0.1.i = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.pn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %.sroa.0.1.i, ptr %i.e, align 8, !captures !34
  %i.bo = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %.sroa.4.1.i, ptr %i.bo, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.d, i8 0, i64 15, i1 false)
  %.sroa.465.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 15
  store i8 -128, ptr %.sroa.465.0..sroa_idx, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.e, ptr %i.c, align 8
  %.sroa.469.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs1i_NtCs3oUPovFnLWP_4core3fmtReNtB6_7Display3fmtCs5PEMdK7bMAG_12typst_syntax, ptr %.sroa.469.0..sroa_idx, align 8
  %i.bp = invoke noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr noundef nonnull %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @31, ptr noundef nonnull @593, ptr noundef nonnull %i.c)
          to label %bb.t unwind label %bb.s

bb.r:                                             ; preds = %bb.l, %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE7get_endCs5PEMdK7bMAG_12typst_syntax.exit.i
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 4
  store <2 x i32> %i.aa, ptr %i.bq, align 4
  %.sroa.533.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store <2 x i32> %i.ag, ptr %.sroa.533.0..sroa_idx, align 4
  %.sroa.735.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %i.q, ptr %.sroa.735.0..sroa_idx, align 4
  store i32 0, ptr %0, align 8
  br label %bb.w

bb.s:                                             ; preds = %bb.u, %select.unfold
  %i.br = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs5PEMdK7bMAG_12typst_syntax(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.d) #59
          to label %common.resume unwind label %bb.v

bb.t:                                             ; preds = %select.unfold
  br i1 %i.bp, label %bb.u, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCs5PEMdK7bMAG_12typst_syntax.exit, !prof !23

bb.u:                                             ; preds = %bb.t
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @87, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @93, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @594) #62
          to label %.noexc unwind label %bb.s

.noexc:                                           ; preds = %bb.u
  unreachable

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCs5PEMdK7bMAG_12typst_syntax.exit: ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bs, ptr noundef nonnull align 8 dereferenceable(16) %i.d, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store i32 1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.w

bb.v:                                             ; preds = %bb.s
  %i.bt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #61
  unreachable

bb.w:                                             ; preds = %bb.h, %bb.k, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCs5PEMdK7bMAG_12typst_syntax.exit, %bb.i, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  ret void
}

; Function Attrs: nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define void @_RNvXsg_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB5_14LinkedChildrenNtNtNtNtCs3oUPovFnLWP_4core4iter6traits12double_ended19DoubleEndedIterator9next_back(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(48) %1) unnamed_addr #32 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !10116, !nonnull !19, !noundef !19 ; 2 uses
  %i.d = load ptr, ptr %i.a, align 8, !alias.scope !10116, !nonnull !19, !noundef !19 ; 2 uses
  %i.e = icmp eq ptr %i.d, %i.c
  br i1 %i.e, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds i8, ptr %i.c, i64 -32 ; 4 uses
  store ptr %i.f, ptr %i.b, align 8, !alias.scope !10116
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = sub nuw i64 %i.g, %i.h
  %i.j = lshr exact i64 %i.i, 5
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !10117, !noundef !19
  %i.m = add i64 %i.l, %i.j
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %bb.b
  %.sroa.04.0.i = phi ptr [ %i.f, %bb.b ], [ %i.aa, %bb.g ] ; 6 uses
  %i.n = load i8, ptr %.sroa.04.0.i, align 8, !range !30, !noundef !19
  switch i8 %i.n, label %default.unreachable [
    i8 0, label %bb.d
    i8 1, label %bb.e
    i8 2, label %bb.f
    i8 3, label %bb.g
  ]

default.unreachable:                              ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.04.0.i, i64 23
  %i.p = load i8, ptr %i.o, align 1, !noundef !19 ; 2 uses
  %.not14.i = icmp sgt i8 %i.p, -1
  br i1 %.not14.i, label %bb.h, label %bb.i

bb.e:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.04.0.i, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !nonnull !19, !noundef !19
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  %i.t = load i64, ptr %i.s, align 8, !noalias !10118, !noundef !19
  br label %_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode3len.exit

bb.f:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.04.0.i, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !nonnull !19, !noundef !19 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 47
  %i.x = load i8, ptr %i.w, align 1, !noalias !10118, !noundef !19 ; 2 uses
  %.not.i = icmp sgt i8 %i.x, -1
  br i1 %.not.i, label %bb.j, label %bb.k

bb.g:                                             ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.04.0.i, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !nonnull !19, !noundef !19
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  br label %bb.c

bb.h:                                             ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.04.0.i, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !noundef !19
  br label %_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode3len.exit

bb.i:                                             ; preds = %bb.d
  %i.ad = and i8 %i.p, 127
  %i.ae = zext nneg i8 %i.ad to i64
  br label %_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode3len.exit

bb.j:                                             ; preds = %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  %i.ag = load i64, ptr %i.af, align 8, !noalias !10118, !noundef !19
  br label %_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode3len.exit

bb.k:                                             ; preds = %bb.f
  %i.ah = and i8 %i.x, 127
  %i.ai = zext nneg i8 %i.ah to i64
  br label %_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode3len.exit

_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode3len.exit: ; preds = %bb.e, %bb.h, %bb.i, %bb.j, %bb.k
  %.sroa.0.1.i = phi i64 [ %i.ac, %bb.h ], [ %i.t, %bb.e ], [ %i.ae, %bb.i ], [ %i.ai, %bb.k ], [ %i.ag, %bb.j ]
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8, !noundef !19
  %i.al = sub i64 %i.ak, %.sroa.0.1.i             ; 2 uses
  store i64 %i.al, ptr %i.aj, align 8
  %i.am = load ptr, ptr %1, align 8, !nonnull !19, !noundef !19 ; 3 uses
  %i.an = load i64, ptr %i.am, align 8, !noundef !19 ; 2 uses
  %i.ao = icmp ne i64 %i.an, 0
  tail call void @llvm.assume(i1 %i.ao)
  %i.ap = add i64 %i.an, 1                        ; 2 uses
  store i64 %i.ap, ptr %i.am, align 8
  %i.aq = icmp eq i64 %i.ap, 0
  br i1 %i.aq, label %bb.n, label %bb.o, !prof !23

bb.l:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.o, %bb.l
  ret void

bb.n:                                             ; preds = %_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode3len.exit
  tail call void @llvm.trap()
  unreachable

bb.o:                                             ; preds = %_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode3len.exit
  store ptr %i.f, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.am, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.55.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.m, ptr %.sroa.55.0..sroa_idx, align 8
  %.sroa.66.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.al, ptr %.sroa.66.0..sroa_idx, align 8
  br label %bb.m
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXsg_NtCs5PEMdK7bMAG_12typst_syntax7packageNtB5_12VersionBoundNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(20) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #5 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [4 x i8], align 4                 ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [4 x i8], align 4                 ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10122)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10123)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !10124
  store ptr %i.f, ptr %i.e, align 8, !noalias !10124
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXs8_NtNtNtCs3oUPovFnLWP_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.46.0..sroa_idx.i, align 8, !noalias !10124
  %i.g = load ptr, ptr %1, align 8, !alias.scope !10123, !nonnull !19, !noundef !19 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !10123, !nonnull !19, !align !29, !noundef !19 ; 3 uses
  %i.j = call noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr noundef nonnull %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.i, ptr noundef nonnull @595, ptr noundef nonnull %i.e), !noalias !10123
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !10124
  br i1 %i.j, label %_RNvXsh_NtCs5PEMdK7bMAG_12typst_syntax7packageNtB5_12VersionBoundNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = load i32, ptr %0, align 4, !range !47, !alias.scope !10122, !noundef !19
  %i.l = trunc nuw i32 %i.k to i1
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !10124
  %i.n = load i32, ptr %i.m, align 4, !alias.scope !10122, !noundef !19
  store i32 %i.n, ptr %i.d, align 4, !noalias !10124
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !10124
  store ptr %i.d, ptr %i.c, align 8, !noalias !10124
  %.sroa.421.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs8_NtNtNtCs3oUPovFnLWP_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.421.0..sroa_idx.i, align 8, !noalias !10124
  %i.o = call noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr noundef nonnull %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.i, ptr noundef nonnull @596, ptr noundef nonnull %i.c), !noalias !10123
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !10124
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !10124
  br i1 %i.o, label %_RNvXsh_NtCs5PEMdK7bMAG_12typst_syntax7packageNtB5_12VersionBoundNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt.exit, label %bb.d
end_hunk_0
