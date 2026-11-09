Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/RegexMatchCache?download=true
inline.NumInlined: 9145
inline.NumDeleted: 3320
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumRuntimeUnrolled: 19
loop-unroll.NumUnrolled: 39
begin_hunk_0_@_ZN5folly15RegexMatchCache8addRegexERKNS_18RegexMatchCacheKeyE:bb.a
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !20213 ; 2 uses
  %i.al = and i64 %i.ak, -16                      ; 2 uses
  %.not85 = icmp eq i64 %i.al, 0
  br i1 %.not85, label %_ZN5folly6detail14ScopeGuardImplISt5_BindIFMNS_15RegexMatchCacheEDoFvvEPS3_EELb1EED2Ev.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.critedge
  %i.am = inttoptr i64 %i.al to ptr
  %i.an = and i64 %i.ak, 15
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %i.ap = icmp eq i64 %.fca.0.extract, 63
  %i.aq = lshr i64 %.fca.0.extract, 6
  %i.ar = and i64 %.fca.0.extract, 63
  %i.as = shl nuw i64 1, %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.av = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.fca.0.extract, i1 false)
  %i.aw = sub nsw i64 0, %i.av
  %i.ax = and i64 %i.aw, 63
  %i.ay = shl nuw i64 1, %i.ax
  %.sroa.speculated.i = call i64 @llvm.umax.i64(i64 %i.ay, i64 128) ; 4 uses
  %i.az = and i64 %.sroa.speculated.i, -8
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 24 ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 16 ; 3 uses
  br label %_ZN5folly3f146detail22ValueContainerIteratorIPSt4pairIKPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEEEppEv.exit

_ZN5folly3f146detail22ValueContainerIteratorIPSt4pairIKPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEEEppEv.exit: ; preds = %_ZN5folly3f146detail22ValueContainerIteratorIPSt4pairIKPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEEEppEv.exit.backedge, %.lr.ph
  %.sroa.055.087 = phi ptr [ %i.am, %.lr.ph ], [ %.sroa.055.087.be, %_ZN5folly3f146detail22ValueContainerIteratorIPSt4pairIKPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEEEppEv.exit.backedge ] ; 6 uses
  %.sroa.9.086 = phi i64 [ %i.an, %.lr.ph ], [ %.sroa.9.086.be, %_ZN5folly3f146detail22ValueContainerIteratorIPSt4pairIKPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEEEppEv.exit.backedge ] ; 3 uses
  %i.bc = load ptr, ptr %.sroa.055.087, align 8, !tbaa !20303, !noalias !22335 ; 2 uses
  %i.bd = ptrtoint ptr %i.bc to i64               ; 2 uses
  %i.be = call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 0, i64 %i.bd) ; 2 uses
  %i.bf = lshr i64 %i.be, 24
  %i.bg = or i64 %i.bf, 128                       ; 4 uses
  %i.bh = add i64 %i.be, %i.bd                    ; 3 uses
  %i.bi = load i64, ptr %i.at, align 8, !tbaa !20233, !noalias !22336 ; 3 uses
  %i.bj = lshr i64 %i.bi, 8                       ; 3 uses
  %.not.i109 = icmp eq i64 %i.bj, 0
  %.pre.i = load ptr, ptr %i.ao, align 8, !tbaa !20264, !noalias !22336 ; 3 uses
  br i1 %.not.i109, label %.thread66.i, label %bb.l

bb.l:                                             ; preds = %_ZN5folly3f146detail22ValueContainerIteratorIPSt4pairIKPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEEEppEv.exit
  %i.bk = shl nuw nsw i64 %i.bg, 1
  %i.bl = or disjoint i64 %i.bk, 1
  %i.bm = trunc nuw i64 %i.bg to i8
  %i.bn = insertelement <16 x i8> poison, i8 %i.bm, i64 0
  %i.bo = shufflevector <16 x i8> %i.bn, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.bp = and i64 %i.bi, 255                      ; 4 uses
  %i.bq = shl nuw i64 1, %i.bp
  br label %bb.m

bb.m:                                             ; preds = %bb.p, %bb.l
  %.023.i75.i = phi i64 [ %i.bq, %bb.l ], [ %i.ck, %bb.p ]
  %.025.i74.i = phi i64 [ %i.bh, %bb.l ], [ %i.cl, %bb.p ] ; 2 uses
  %i.br = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.025.i74.i, i64 range(i64 0, 256) %i.bp)
  %i.bs = getelementptr inbounds nuw [256 x i8], ptr %.pre.i, i64 %i.br ; 4 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bs, i64 144
  call void @llvm.prefetch.p0(ptr nonnull %i.bu, i32 0, i32 3, i32 1), !noalias !22336
  %i.bv = load <16 x i8>, ptr %i.bs, align 16, !noalias !22336 ; 2 uses
  %i.bw = icmp eq <16 x i8> %i.bv, %i.bo
  %i.bx = bitcast <16 x i1> %i.bw to i16
  %i.by = and i16 %i.bx, 16383
  %i.bz = zext nneg i16 %i.by to i32
  %i.ca = icmp ne ptr %i.bs, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  %i.cb = extractelement <16 x i8> %i.bv, i64 15
  br label %.critedge.i.i110

.critedge.i.i110:                                 ; preds = %bb.n, %bb.m
  %.sroa.042.0.i = phi i32 [ %i.bz, %bb.m ], [ %i.ce, %bb.n ] ; 4 uses
  %.not68.i = icmp eq i32 %.sroa.042.0.i, 0
  br i1 %.not68.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.critedge.i.i110
  %i.cc = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.042.0.i, i1 true)
  %i.cd = add nuw nsw i32 %.sroa.042.0.i, 16383
  %i.ce = and i32 %i.cd, %.sroa.042.0.i
  %i.cf = zext nneg i32 %i.cc to i64
  call void @llvm.assume(i1 %i.ca)
  %i.cg = getelementptr inbounds nuw [16 x i8], ptr %i.bt, i64 %i.cf ; 2 uses
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !20303, !noalias !22336
  %i.ci = icmp eq ptr %i.bc, %i.ch
  br i1 %i.ci, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEvvvEEE19tryEmplaceValueImplISB_JRKSt21piecewise_construct_tSt5tupleIJRKSB_EESK_IJEEEEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkISP_ISL_SD_EEEEEbESP_ImmERKT_DpOT0_.exit, label %.critedge.i.i110, !prof !20223, !llvm.loop !788

bb.o:                                             ; preds = %.critedge.i.i110
  %i.cj = icmp eq i8 %i.cb, 0
  br i1 %i.cj, label %.thread66.i, label %bb.p, !prof !20223

bb.p:                                             ; preds = %bb.o
  %i.ck = add i64 %.023.i75.i, -1                 ; 2 uses
  %i.cl = add i64 %i.bl, %.025.i74.i
  %.not.i.i = icmp eq i64 %i.ck, 0
  br i1 %.not.i.i, label %.thread66.i, label %bb.m, !llvm.loop !789

.thread66.i:                                      ; preds = %bb.p, %bb.o, %_ZN5folly3f146detail22ValueContainerIteratorIPSt4pairIKPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEEEppEv.exit
  %.pre-phi83.i = phi i64 [ %i.bi, %_ZN5folly3f146detail22ValueContainerIteratorIPSt4pairIKPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEEEppEv.exit ], [ %i.bp, %bb.o ], [ %i.bp, %bb.p ] ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.pre.i, i64 14
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !20220, !noalias !22336
  %i.co = and i8 %i.cn, 15
  %i.cp = zext nneg i8 %i.co to i64               ; 2 uses
  %i.cq = shl i64 %i.cp, %.pre-phi83.i            ; 2 uses
  %.not.i32.i = icmp ult i64 %i.bj, %i.cq
  br i1 %.not.i32.i, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEvvvEEE16reserveForInsertEm.exit.i, label %bb.q

bb.q:                                             ; preds = %.thread66.i
  %i.cr = shl nuw i64 1, %.pre-phi83.i
  invoke void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEvvvEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(24) %i.ao, i64 noundef %i.bj, i64 noundef %i.cr, i64 noundef %i.cp, i64 noundef %i.cq)
          to label %.noexc111 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc111:                                        ; preds = %bb.q
  %.pre79.i = load ptr, ptr %i.ao, align 8, !tbaa !20264, !noalias !22336
  %.pre80.i = load i64, ptr %i.at, align 8, !tbaa !20233, !noalias !22336
  %.pre81.i = and i64 %.pre80.i, 255
  br label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEvvvEEE16reserveForInsertEm.exit.i

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEvvvEEE16reserveForInsertEm.exit.i: ; preds = %.noexc111, %.thread66.i
  %.pre-phi.i = phi i64 [ %.pre-phi83.i, %.thread66.i ], [ %.pre81.i, %.noexc111 ] ; 2 uses
  %i.cs = phi ptr [ %.pre.i, %.thread66.i ], [ %.pre79.i, %.noexc111 ] ; 3 uses
  %i.ct = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %i.bh, i64 range(i64 0, 256) %.pre-phi.i) ; 2 uses
  %i.cu = getelementptr inbounds nuw [256 x i8], ptr %i.cs, i64 %i.ct ; 2 uses
  %i.cv = load <16 x i8>, ptr %i.cu, align 16, !tbaa !20220, !noalias !22336
  %i.cw = icmp slt <16 x i8> %i.cv, zeroinitializer
  %i.cx = bitcast <16 x i1> %i.cw to i16
  %i.cy = and i16 %i.cx, 16383                    ; 2 uses
  %.not69.i = icmp eq i16 %i.cy, 16383
  br i1 %.not69.i, label %bb.r, label %bb.v

bb.r:                                             ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEvvvEEE16reserveForInsertEm.exit.i
  %i.cz = shl nuw nsw i64 %i.bg, 1
  %i.da = or disjoint i64 %i.cz, 1
  br label %bb.s

bb.s:                                             ; preds = %_ZN5folly3f146detail8F14ChunkISt4pairIKPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEEE25incrOutboundOverflowCountEv.exit.i, %bb.r
  %i.db = phi i64 [ %i.ct, %bb.r ], [ %i.dh, %_ZN5folly3f146detail8F14ChunkISt4pairIKPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEEE25incrOutboundOverflowCountEv.exit.i ]
  %.030.i = phi i64 [ %i.bh, %bb.r ], [ %i.dg, %_ZN5folly3f146detail8F14ChunkISt4pairIKPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEEE25incrOutboundOverflowCountEv.exit.i ]
  %i.dc = getelementptr inbounds nuw [256 x i8], ptr %i.cs, i64 %i.db
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 15 ; 2 uses
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !20816, !noalias !22336 ; 2 uses
  %.not.i33.i = icmp eq i8 %i.de, -2
  br i1 %.not.i33.i, label %_ZN5folly3f146detail8F14ChunkISt4pairIKPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEEE25incrOutboundOverflowCountEv.exit.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.df = add i8 %i.de, 1
  store i8 %i.df, ptr %i.dd, align 1, !tbaa !20816, !noalias !22336
  br label %_ZN5folly3f146detail8F14ChunkISt4pairIKPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEEE25incrOutboundOverflowCountEv.exit.i

_ZN5folly3f146detail8F14ChunkISt4pairIKPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEEE25incrOutboundOverflowCountEv.exit.i: ; preds = %bb.t, %bb.s
  %i.dg = add i64 %i.da, %.030.i                  ; 2 uses
  %i.dh = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %i.dg, i64 range(i64 0, 256) %.pre-phi.i) ; 2 uses
  %i.di = getelementptr inbounds nuw [256 x i8], ptr %i.cs, i64 %i.dh ; 3 uses
  %i.dj = load <16 x i8>, ptr %i.di, align 16, !noalias !22336 ; 2 uses
  %i.dk = icmp slt <16 x i8> %i.dj, zeroinitializer
  %i.dl = bitcast <16 x i1> %i.dk to i16
  %i.dm = and i16 %i.dl, 16383                    ; 2 uses
  %.not70.i = icmp eq i16 %i.dm, 16383
  br i1 %.not70.i, label %bb.s, label %bb.u, !llvm.loop !796

bb.u:                                             ; preds = %_ZN5folly3f146detail8F14ChunkISt4pairIKPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEEE25incrOutboundOverflowCountEv.exit.i
  %i.dn = extractelement <16 x i8> %i.dj, i64 14
  %i.do = getelementptr inbounds nuw i8, ptr %i.di, i64 14
  %i.dp = add i8 %i.dn, 16
  store i8 %i.dp, ptr %i.do, align 2, !tbaa !20266, !noalias !22336
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEvvvEEE16reserveForInsertEm.exit.i
  %.sroa.036.0.in.in.i = phi i16 [ %i.cy, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEvvvEEE16reserveForInsertEm.exit.i ], [ %i.dm, %bb.u ]
  %.1.i = phi ptr [ %i.cu, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEvvvEEE16reserveForInsertEm.exit.i ], [ %i.di, %bb.u ] ; 3 uses
  %.sroa.036.0.in.i = xor i16 %.sroa.036.0.in.in.i, 16383
  %i.dq = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.036.0.in.i, i1 true)
  %i.dr = zext nneg i16 %i.dq to i64              ; 3 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.1.i, i64 %i.dr ; 2 uses
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !20220, !noalias !22336
  %i.du = icmp eq i8 %i.dt, 0
  br i1 %i.du, label %_ZN5folly3f146detail8F14ChunkISt4pairIKPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEEE6setTagEmm.exit.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkISt4pairIKPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEEE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.15) #48, !noalias !22336
  unreachable

_ZN5folly3f146detail8F14ChunkISt4pairIKPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEEE6setTagEmm.exit.i: ; preds = %bb.v
  %i.dv = trunc nuw i64 %i.bg to i8
  store i8 %i.dv, ptr %i.ds, align 1, !tbaa !20220, !noalias !22336
  %i.dw = getelementptr inbounds nuw i8, ptr %.1.i, i64 16
  %i.dx = getelementptr inbounds nuw [16 x i8], ptr %i.dw, i64 %i.dr ; 4 uses
  %i.dy = icmp ne ptr %.1.i, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.dy)
  %i.dz = load ptr, ptr %.sroa.055.087, align 8, !tbaa !20303, !noalias !22336
  store ptr %i.dz, ptr %i.dx, align 8, !tbaa !20819, !noalias !22336
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  store i64 0, ptr %i.ea, align 8, !tbaa !20219, !noalias !22336
  %i.eb = ptrtoint ptr %i.dx to i64
  %i.ec = or i64 %i.eb, %i.dr                     ; 2 uses
  %i.ed = load i64, ptr %i.au, align 8, !tbaa !20305, !noalias !22336
  %i.ee = icmp ult i64 %i.ed, %i.ec
  br i1 %i.ee, label %bb.x, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJRKSB_EESK_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairISL_SD_EEEEESR_ImmEDpOT_.exit.i

bb.x:                                             ; preds = %_ZN5folly3f146detail8F14ChunkISt4pairIKPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEEE6setTagEmm.exit.i
  store i64 %i.ec, ptr %i.au, align 8, !tbaa !20214, !noalias !22336
  br label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJRKSB_EESK_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairISL_SD_EEEEESR_ImmEDpOT_.exit.i

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJRKSB_EESK_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairISL_SD_EEEEESR_ImmEDpOT_.exit.i: ; preds = %bb.x, %_ZN5folly3f146detail8F14ChunkISt4pairIKPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEEE6setTagEmm.exit.i
  %i.ef = load i64, ptr %i.at, align 8, !tbaa !20233, !noalias !22336
  %i.eg = add i64 %i.ef, 256
  store i64 %i.eg, ptr %i.at, align 8, !tbaa !20233, !noalias !22336
  br label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEvvvEEE19tryEmplaceValueImplISB_JRKSt21piecewise_construct_tSt5tupleIJRKSB_EESK_IJEEEEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkISP_ISL_SD_EEEEEbESP_ImmERKT_DpOT0_.exit

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEvvvEEE19tryEmplaceValueImplISB_JRKSt21piecewise_construct_tSt5tupleIJRKSB_EESK_IJEEEEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkISP_ISL_SD_EEEEEbESP_ImmERKT_DpOT0_.exit: ; preds = %bb.n, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJRKSB_EESK_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairISL_SD_EEEEESR_ImmEDpOT_.exit.i
  %.lcssa92.sink.i = phi ptr [ %i.dx, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJRKSB_EESK_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairISL_SD_EEEEESR_ImmEDpOT_.exit.i ], [ %i.cg, %bb.n ]
  %i.eh = getelementptr inbounds nuw i8, ptr %.lcssa92.sink.i, i64 8 ; 5 uses
  %i.ei = load i64, ptr %i.eh, align 8, !tbaa !20214 ; 2 uses
  %i.ej = icmp slt i64 %i.ei, 0
  br i1 %i.ej, label %bb.y, label %_ZN5folly28RegexMatchCacheDynamicBitset13get_bit_span_Ev.exit.i

bb.y:                                             ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEvvvEEE19tryEmplaceValueImplISB_JRKSt21piecewise_construct_tSt5tupleIJRKSB_EESK_IJEEEEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkISP_ISL_SD_EEEEEbESP_ImmERKT_DpOT0_.exit
  %i.ek = shl i64 %i.ei, 1
  %i.el = inttoptr i64 %i.ek to ptr               ; 2 uses
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.el, align 8, !tbaa !20306
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  %.sroa.3.0.copyload.i.i = load i64, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !tbaa !20214
  br label %_ZN5folly28RegexMatchCacheDynamicBitset13get_bit_span_Ev.exit.i

_ZN5folly28RegexMatchCacheDynamicBitset13get_bit_span_Ev.exit.i: ; preds = %bb.y, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEvvvEEE19tryEmplaceValueImplISB_JRKSt21piecewise_construct_tSt5tupleIJRKSB_EESK_IJEEEEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkISP_ISL_SD_EEEEEbESP_ImmERKT_DpOT0_.exit
  %.sroa.3.0.i.i43 = phi i64 [ %.sroa.3.0.copyload.i.i, %bb.y ], [ 64, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEvvvEEE19tryEmplaceValueImplISB_JRKSt21piecewise_construct_tSt5tupleIJRKSB_EESK_IJEEEEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkISP_ISL_SD_EEEEEbESP_ImmERKT_DpOT0_.exit ] ; 2 uses
  %.sroa.0.0.i.i44 = phi ptr [ %.sroa.0.0.copyload.i.i, %bb.y ], [ %i.eh, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEvvvEEE19tryEmplaceValueImplISB_JRKSt21piecewise_construct_tSt5tupleIJRKSB_EESK_IJEEEEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkISP_ISL_SD_EEEEEbESP_ImmERKT_DpOT0_.exit ]
  %i.em = icmp uge i64 %.fca.0.extract, %.sroa.3.0.i.i43
  %i.en = icmp eq i64 %.sroa.3.0.i.i43, 64
  %or.cond.i = and i1 %i.ap, %i.en
  %or.cond = or i1 %i.em, %or.cond.i
  br i1 %or.cond, label %bb.z, label %.noexc45

bb.z:                                             ; preds = %_ZN5folly28RegexMatchCacheDynamicBitset13get_bit_span_Ev.exit.i
  %i.eo = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.az) #44
          to label %.noexc117 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 6 uses

.noexc117:                                        ; preds = %bb.z
  %i.ep = load i64, ptr %i.eh, align 8, !tbaa !20214 ; 3 uses
  %i.eq = icmp slt i64 %i.ep, 0                   ; 2 uses
  br i1 %i.eq, label %_ZN5folly28RegexMatchCacheDynamicBitset13get_bit_span_Ev.exit.i112, label %.thread.i

_ZN5folly28RegexMatchCacheDynamicBitset13get_bit_span_Ev.exit.i112: ; preds = %.noexc117
  %i.er = shl i64 %i.ep, 1
  %i.es = inttoptr i64 %i.er to ptr               ; 2 uses
  %.sroa.0.0.copyload.i.i113 = load ptr, ptr %i.es, align 8, !tbaa !20306 ; 3 uses
  %.sroa.3.0..sroa_idx.i.i114 = getelementptr inbounds nuw i8, ptr %i.es, i64 8
  %.sroa.3.0.copyload.i.i115 = load i64, ptr %.sroa.3.0..sroa_idx.i.i114, align 8, !tbaa !20214 ; 2 uses
  %.not.i.i116 = icmp eq i64 %.sroa.3.0.copyload.i.i115, 0
  br i1 %.not.i.i116, label %_ZN5folly10nextPowTwoImEET_S1_.exit.i, label %bb.aa

bb.aa:                                            ; preds = %_ZN5folly28RegexMatchCacheDynamicBitset13get_bit_span_Ev.exit.i112
  %i.et = add i64 %.sroa.3.0.copyload.i.i115, -1  ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.et, 0
  br i1 %.not.i.i.i, label %_ZN5folly11findLastSetImEEjT_.exit.i.i, label %.thread.i

.thread.i:                                        ; preds = %bb.aa, %.noexc117
  %i.eu = phi i64 [ %i.et, %bb.aa ], [ 63, %.noexc117 ]
  %.sroa.0.0.i2934.i = phi ptr [ %.sroa.0.0.copyload.i.i113, %bb.aa ], [ %i.eh, %.noexc117 ]
  %i.ev = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.eu, i1 true)
  %i.ew = sub nuw nsw i64 64, %i.ev
  br label %_ZN5folly11findLastSetImEEjT_.exit.i.i

_ZN5folly11findLastSetImEEjT_.exit.i.i:           ; preds = %.thread.i, %bb.aa
  %.sroa.0.0.i2935.i = phi ptr [ %.sroa.0.0.i2934.i, %.thread.i ], [ %.sroa.0.0.copyload.i.i113, %bb.aa ]
  %i.ex = phi i64 [ %i.ew, %.thread.i ], [ 0, %bb.aa ]
  %i.ey = shl nuw i64 1, %i.ex
  br label %_ZN5folly10nextPowTwoImEET_S1_.exit.i

_ZN5folly10nextPowTwoImEET_S1_.exit.i:            ; preds = %_ZN5folly11findLastSetImEEjT_.exit.i.i, %_ZN5folly28RegexMatchCacheDynamicBitset13get_bit_span_Ev.exit.i112
  %.sroa.0.0.i30.i = phi ptr [ %.sroa.0.0.i2935.i, %_ZN5folly11findLastSetImEEjT_.exit.i.i ], [ %.sroa.0.0.copyload.i.i113, %_ZN5folly28RegexMatchCacheDynamicBitset13get_bit_span_Ev.exit.i112 ]
  %i.ez = phi i64 [ %i.ey, %_ZN5folly11findLastSetImEEjT_.exit.i.i ], [ 1, %_ZN5folly28RegexMatchCacheDynamicBitset13get_bit_span_Ev.exit.i112 ] ; 3 uses
  %i.fa = lshr i64 %i.ez, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.eo, ptr align 8 %.sroa.0.0.i30.i, i64 %i.fa, i1 false)
  %i.fb = lshr i64 %i.ez, 6
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.eo, i64 %i.fb
  %i.fd = sub i64 %.sroa.speculated.i, %i.ez
  %i.fe = lshr i64 %i.fd, 3
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.fc, i8 0, i64 %i.fe, i1 false)
  br i1 %i.eq, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %_ZN5folly10nextPowTwoImEET_S1_.exit.i
  %i.ff = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #44
          to label %.noexc118 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

.noexc118:                                        ; preds = %bb.ab
  store ptr %i.eo, ptr %i.ff, align 8, !tbaa !20217
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 8
  store i64 %.sroa.speculated.i, ptr %i.fg, align 8, !tbaa !20820
  %i.fh = ptrtoint ptr %i.ff to i64
  %i.fi = lshr i64 %i.fh, 1
  %i.fj = or disjoint i64 %i.fi, -9223372036854775808
  store i64 %i.fj, ptr %i.eh, align 8, !tbaa !20219
  br label %.noexc45

bb.ac:                                            ; preds = %_ZN5folly10nextPowTwoImEET_S1_.exit.i
  %i.fk = shl i64 %i.ep, 1
  %i.fl = inttoptr i64 %i.fk to ptr               ; 3 uses
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !20217 ; 2 uses
  %i.fn = icmp eq ptr %i.fm, null
  br i1 %i.fn, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @_ZdaPv(ptr noundef nonnull %i.fm) #41
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  store ptr %i.eo, ptr %i.fl, align 8, !tbaa !20306
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.fl, i64 8
  store i64 %.sroa.speculated.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !20214
  br label %.noexc45

.noexc45:                                         ; preds = %.noexc118, %bb.ae, %_ZN5folly28RegexMatchCacheDynamicBitset13get_bit_span_Ev.exit.i
  %.pn.i = phi ptr [ %.sroa.0.0.i.i44, %_ZN5folly28RegexMatchCacheDynamicBitset13get_bit_span_Ev.exit.i ], [ %i.eo, %bb.ae ], [ %i.eo, %.noexc118 ]
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %.pn.i, i64 %i.aq ; 2 uses
  %i.fp = load i64, ptr %i.fo, align 8, !tbaa !20214
  %i.fq = or i64 %i.fp, %i.as
  store i64 %i.fq, ptr %i.fo, align 8, !tbaa !20214
  %i.fr = load ptr, ptr %.sroa.055.087, align 8, !tbaa !20303, !noalias !22337 ; 2 uses
  %i.fs = ptrtoint ptr %i.fr to i64               ; 2 uses
  %i.ft = call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 0, i64 %i.fs) ; 2 uses
  %i.fu = lshr i64 %i.ft, 24
  %i.fv = or i64 %i.fu, 128                       ; 4 uses
  %i.fw = add i64 %i.ft, %i.fs                    ; 3 uses
  %i.fx = load i64, ptr %i.ba, align 8, !tbaa !20233, !noalias !22338 ; 4 uses
  %i.fy = lshr i64 %i.fx, 8                       ; 3 uses
  %.not.i119 = icmp eq i64 %i.fy, 0
  br i1 %.not.i119, label %..thread64_crit_edge.i, label %bb.af

..thread64_crit_edge.i:                           ; preds = %.noexc45
  %.pre.i128 = load ptr, ptr %i.bb, align 8, !tbaa !20259, !noalias !22338
  %.pre83.i = shl nuw i64 1, %i.fx
  br label %.thread64.i

bb.af:                                            ; preds = %.noexc45
  %i.fz = shl nuw nsw i64 %i.fv, 1
  %i.ga = or disjoint i64 %i.fz, 1
  %i.gb = trunc nuw i64 %i.fv to i8
  %i.gc = insertelement <16 x i8> poison, i8 %i.gb, i64 0
  %i.gd = shufflevector <16 x i8> %i.gc, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.ge = and i64 %i.fx, 255                      ; 4 uses
  %i.gf = shl nuw i64 1, %i.ge                    ; 3 uses
  %i.gg = load ptr, ptr %i.bb, align 8, !tbaa !20259, !noalias !22338 ; 3 uses
  br label %bb.ag

bb.ag:                                            ; preds = %bb.aj, %bb.af
  %.022.i75.i = phi i64 [ %i.gf, %bb.af ], [ %i.hd, %bb.aj ]
  %.024.i74.i = phi i64 [ %i.fw, %bb.af ], [ %i.he, %bb.aj ] ; 2 uses
  %i.gh = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.024.i74.i, i64 range(i64 0, 256) %i.ge)
  %i.gi = getelementptr inbounds nuw [64 x i8], ptr %i.gg, i64 %i.gh ; 3 uses
  %i.gj = load <16 x i8>, ptr %i.gi, align 16, !noalias !22338 ; 2 uses
  %i.gk = icmp eq <16 x i8> %i.gj, %i.gd
  %i.gl = bitcast <16 x i1> %i.gk to i16
  %i.gm = and i16 %i.gl, 4095
  %i.gn = zext nneg i16 %i.gm to i32
  %i.go = icmp ne ptr %i.gi, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gi, i64 16
  %i.gq = extractelement <16 x i8> %i.gj, i64 15
  br label %.critedge.i.i120

.critedge.i.i120:                                 ; preds = %bb.ah, %bb.ag
  %.sroa.040.0.i = phi i32 [ %i.gn, %bb.ag ], [ %i.gt, %bb.ah ] ; 4 uses
  %.not66.i = icmp eq i32 %.sroa.040.0.i, 0
  br i1 %.not66.i, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %.critedge.i.i120
  %i.gr = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.040.0.i, i1 true)
  %i.gs = add nuw nsw i32 %.sroa.040.0.i, 4095
  %i.gt = and i32 %i.gs, %.sroa.040.0.i
  %i.gu = zext nneg i32 %i.gr to i64
  call void @llvm.assume(i1 %i.go)
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %i.gp, i64 %i.gu
  %i.gw = load ptr, ptr %i.ai, align 8, !tbaa !20809, !noalias !22338
  %i.gx = load i32, ptr %i.gv, align 4, !tbaa !20326, !noalias !22338
  %i.gy = zext i32 %i.gx to i64
  %i.gz = getelementptr inbounds nuw [8 x i8], ptr %i.gw, i64 %i.gy
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !20303, !noalias !22338
  %i.hb = icmp eq ptr %i.fr, %i.ha
  br i1 %i.hb, label %.noexc46, label %.critedge.i.i120, !prof !20223, !llvm.loop !786

bb.ai:                                            ; preds = %.critedge.i.i120
  %i.hc = icmp eq i8 %i.gq, 0
  br i1 %i.hc, label %.thread64.i, label %bb.aj, !prof !20223

bb.aj:                                            ; preds = %bb.ai
  %i.hd = add i64 %.022.i75.i, -1                 ; 2 uses
  %i.he = add i64 %i.ga, %.024.i74.i
  %.not.i.i122 = icmp eq i64 %i.hd, 0
  br i1 %.not.i.i122, label %.thread64.i, label %bb.ag, !llvm.loop !787

.thread64.i:                                      ; preds = %bb.aj, %bb.ai, %..thread64_crit_edge.i
  %.pre-phi84.i = phi i64 [ %.pre83.i, %..thread64_crit_edge.i ], [ %i.gf, %bb.ai ], [ %i.gf, %bb.aj ] ; 2 uses
  %.pre-phi.i123 = phi i64 [ %i.fx, %..thread64_crit_edge.i ], [ %i.ge, %bb.ai ], [ %i.ge, %bb.aj ]
  %i.hf = phi ptr [ %.pre.i128, %..thread64_crit_edge.i ], [ %i.gg, %bb.ai ], [ %i.gg, %bb.aj ] ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 12
  %.0.copyload.i.i.i = load i16, ptr %i.hg, align 1, !noalias !22338
  %i.hh = zext i16 %.0.copyload.i.i.i to i64      ; 2 uses
  %i.hi = add i64 %.pre-phi84.i, -1
  %i.hj = lshr i64 %i.hi, 12
  %i.hk = add nuw nsw i64 %i.hj, 1
  %i.hl = mul i64 %i.hk, %i.hh                    ; 2 uses
  %.not.i30.i = icmp ult i64 %i.fy, %i.hl
  br i1 %.not.i30.i, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb0EEEEE16reserveForInsertEm.exit.i, label %bb.ak

bb.ak:                                            ; preds = %.thread64.i
  invoke void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb0EEEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(24) %i.ai, i64 noundef %i.fy, i64 noundef %.pre-phi84.i, i64 noundef %i.hh, i64 noundef %i.hl)
          to label %.noexc129 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc129:                                        ; preds = %bb.ak
  %.pre80.i124 = load ptr, ptr %i.bb, align 8, !tbaa !20259, !noalias !22338
  %.pre81.i125 = load i64, ptr %i.ba, align 8, !tbaa !20233, !noalias !22338
  %.pre85.i = and i64 %.pre81.i125, 255
  br label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb0EEEEE16reserveForInsertEm.exit.i

_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb0EEEEE16reserveForInsertEm.exit.i: ; preds = %.noexc129, %.thread64.i
  %.pre-phi86.i = phi i64 [ %.pre-phi.i123, %.thread64.i ], [ %.pre85.i, %.noexc129 ] ; 2 uses
  %i.hm = phi ptr [ %i.hf, %.thread64.i ], [ %.pre80.i124, %.noexc129 ] ; 3 uses
  %i.hn = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %i.fw, i64 range(i64 0, 256) %.pre-phi86.i) ; 2 uses
  %i.ho = getelementptr inbounds nuw [64 x i8], ptr %i.hm, i64 %i.hn ; 2 uses
  %i.hp = load <16 x i8>, ptr %i.ho, align 16, !tbaa !20220, !noalias !22338
  %i.hq = icmp slt <16 x i8> %i.hp, zeroinitializer
  %i.hr = bitcast <16 x i1> %i.hq to i16
  %i.hs = and i16 %i.hr, 4095                     ; 2 uses
  %.not67.i = icmp eq i16 %i.hs, 4095
  br i1 %.not67.i, label %bb.al, label %bb.ap

bb.al:                                            ; preds = %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb0EEEEE16reserveForInsertEm.exit.i
  %i.ht = shl nuw nsw i64 %i.fv, 1
  %i.hu = or disjoint i64 %i.ht, 1
  br label %bb.am

bb.am:                                            ; preds = %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit.i, %bb.al
  %i.hv = phi i64 [ %i.hn, %bb.al ], [ %i.ib, %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit.i ]
  %.028.i = phi i64 [ %i.fw, %bb.al ], [ %i.ia, %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit.i ]
  %i.hw = getelementptr inbounds nuw [64 x i8], ptr %i.hm, i64 %i.hv
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 15 ; 2 uses
  %i.hy = load i8, ptr %i.hx, align 1, !tbaa !20823, !noalias !22338 ; 2 uses
  %.not.i31.i = icmp eq i8 %i.hy, -2
  br i1 %.not.i31.i, label %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.hz = add i8 %i.hy, 1
  store i8 %i.hz, ptr %i.hx, align 1, !tbaa !20823, !noalias !22338
  br label %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit.i

_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit.i: ; preds = %bb.an, %bb.am
  %i.ia = add i64 %i.hu, %.028.i                  ; 2 uses
  %i.ib = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %i.ia, i64 range(i64 0, 256) %.pre-phi86.i) ; 2 uses
  %i.ic = getelementptr inbounds nuw [64 x i8], ptr %i.hm, i64 %i.ib ; 3 uses
  %i.id = load <16 x i8>, ptr %i.ic, align 16, !noalias !22338 ; 2 uses
  %i.ie = icmp slt <16 x i8> %i.id, zeroinitializer
  %i.if = bitcast <16 x i1> %i.ie to i16
  %i.ig = and i16 %i.if, 4095                     ; 2 uses
  %.not68.i127 = icmp eq i16 %i.ig, 4095
  br i1 %.not68.i127, label %bb.am, label %bb.ao, !llvm.loop !797

bb.ao:                                            ; preds = %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit.i
  %i.ih = extractelement <16 x i8> %i.id, i64 14
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ic, i64 14
  %i.ij = add i8 %i.ih, 16
  store i8 %i.ij, ptr %i.ii, align 2, !tbaa !20824, !noalias !22338
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb0EEEEE16reserveForInsertEm.exit.i
  %.sroa.034.0.in.in.i = phi i16 [ %i.hs, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb0EEEEE16reserveForInsertEm.exit.i ], [ %i.ig, %bb.ao ]
  %.1.i126 = phi ptr [ %i.ho, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb0EEEEE16reserveForInsertEm.exit.i ], [ %i.ic, %bb.ao ] ; 3 uses
  %.sroa.034.0.in.i = xor i16 %.sroa.034.0.in.in.i, 4095
  %i.ik = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.034.0.in.i, i1 true)
  %i.il = zext nneg i16 %i.ik to i64              ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %.1.i126, i64 %i.il ; 2 uses
  %i.in = load i8, ptr %i.im, align 1, !tbaa !20220, !noalias !22338
  %i.io = icmp eq i8 %i.in, 0
  br i1 %i.io, label %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit.i, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIjE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.15) #48, !noalias !22338
  unreachable

_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit.i: ; preds = %bb.ap
  %i.ip = trunc nuw i64 %i.fv to i8
  store i8 %i.ip, ptr %i.im, align 1, !tbaa !20220, !noalias !22338
  %i.iq = getelementptr inbounds nuw i8, ptr %.1.i126, i64 16
  %i.ir = getelementptr inbounds nuw [4 x i8], ptr %i.iq, i64 %i.il
  %i.is = icmp ne ptr %.1.i126, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.is)
  %i.it = load i64, ptr %i.ba, align 8, !tbaa !20233, !noalias !22338 ; 2 uses
  %i.iu = lshr i64 %i.it, 8                       ; 2 uses
  %i.iv = trunc i64 %i.iu to i32
  store i32 %i.iv, ptr %i.ir, align 4, !tbaa !20326, !noalias !22338
  %i.iw = load ptr, ptr %i.ai, align 8, !tbaa !20809, !noalias !22338, !nonnull !1767, !noundef !1767
  %i.ix = and i64 %i.iu, 4294967295
  %i.iy = getelementptr inbounds nuw [8 x i8], ptr %i.iw, i64 %i.ix
  %i.iz = load ptr, ptr %.sroa.055.087, align 8, !tbaa !20303, !noalias !22338
  store ptr %i.iz, ptr %i.iy, align 8, !tbaa !20303, !noalias !22338
  %i.ja = add i64 %i.it, 256
  store i64 %i.ja, ptr %i.ba, align 8, !tbaa !20233, !noalias !22338
  br label %.noexc46

.noexc46:                                         ; preds = %bb.ah, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit.i
  %i.jb = getelementptr inbounds i8, ptr %.sroa.055.087, i64 -16
  %.neg.i.i.i = mul nsw i64 %.sroa.9.086, -16
  %i.jc = getelementptr inbounds i8, ptr %i.jb, i64 %.neg.i.i.i ; 2 uses
  %.not19.i6.i = icmp eq i64 %.sroa.9.086, 0
  br i1 %.not19.i6.i, label %.critedge.i.i.preheader, label %thread-pre-split.i

.critedge.i.i.preheader:                          ; preds = %bb.ar, %.noexc46
  br label %.critedge.i.i

bb.ar:                                            ; preds = %thread-pre-split.i
  %.not19.i.i = icmp eq i64 %i.jf, 0
  br i1 %.not19.i.i, label %.critedge.i.i.preheader, label %thread-pre-split.i

thread-pre-split.i:                               ; preds = %.noexc46, %bb.ar
  %i.jd = phi i64 [ %i.jf, %bb.ar ], [ %.sroa.9.086, %.noexc46 ]
  %i.je = phi ptr [ %i.jg, %bb.ar ], [ %.sroa.055.087, %.noexc46 ]
  %i.jf = add nsw i64 %i.jd, -1                   ; 4 uses
  %i.jg = getelementptr inbounds i8, ptr %i.je, i64 -16 ; 2 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jc, i64 %i.jf
  %i.ji = load i8, ptr %i.jh, align 1, !tbaa !20220
  %.not.i = icmp eq i8 %i.ji, 0
  br i1 %.not.i, label %bb.ar, label %_ZN5folly3f146detail22ValueContainerIteratorIPSt4pairIKPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEEEppEv.exit.backedge, !prof !20221, !llvm.loop !737

.critedge.i.i:                                    ; preds = %.critedge.i.i.preheader, %bb.as
  %.017.i.i = phi ptr [ %i.jm, %bb.as ], [ %i.jc, %.critedge.i.i.preheader ] ; 4 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %.017.i.i, i64 14
  %i.jk = load i8, ptr %i.jj, align 1, !tbaa !20220
  %i.jl = and i8 %i.jk, 15
  %.not2.i = icmp eq i8 %i.jl, 0
  br i1 %.not2.i, label %bb.as, label %_ZN5folly6detail14ScopeGuardImplISt5_BindIFMNS_15RegexMatchCacheEDoFvvEPS3_EELb1EED2Ev.exit, !prof !20223

bb.as:                                            ; preds = %.critedge.i.i
  %i.jm = getelementptr inbounds i8, ptr %.017.i.i, i64 -256 ; 3 uses
  %i.jn = load <16 x i8>, ptr %i.jm, align 16, !tbaa !20220
  %i.jo = icmp slt <16 x i8> %i.jn, zeroinitializer
  %i.jp = bitcast <16 x i1> %i.jo to i16
  %i.jq = and i16 %i.jp, 16383                    ; 2 uses
  %i.jr = getelementptr inbounds i8, ptr %.017.i.i, i64 -512
  call void @llvm.prefetch.p0(ptr nonnull %i.jr, i32 0, i32 3, i32 1)
  %.not3.i = icmp eq i16 %i.jq, 0
  br i1 %.not3.i, label %.critedge.i.i, label %bb.at, !prof !20221, !llvm.loop !738

bb.at:                                            ; preds = %bb.as
  %i.js = zext nneg i16 %i.jq to i32
  %i.jt = call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.js, i1 true)
  %i.ju = xor i32 %i.jt, 31
  %i.jv = zext nneg i32 %i.ju to i64              ; 2 uses
  %i.jw = icmp ne ptr %i.jm, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.jw)
  %i.jx = getelementptr inbounds i8, ptr %.017.i.i, i64 -240
  %i.jy = getelementptr inbounds nuw [16 x i8], ptr %i.jx, i64 %i.jv
  br label %_ZN5folly3f146detail22ValueContainerIteratorIPSt4pairIKPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEEEppEv.exit.backedge

_ZN5folly3f146detail22ValueContainerIteratorIPSt4pairIKPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEEEppEv.exit.backedge: ; preds = %thread-pre-split.i, %bb.at
  %.sroa.055.087.be = phi ptr [ %i.jy, %bb.at ], [ %i.jg, %thread-pre-split.i ]
  %.sroa.9.086.be = phi i64 [ %i.jv, %bb.at ], [ %i.jf, %thread-pre-split.i ]
  br label %_ZN5folly3f146detail22ValueContainerIteratorIPSt4pairIKPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEEEppEv.exit

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ak, %bb.ab, %bb.z, %bb.q, %bb.d, %bb.b
  %lpad.loopexit.split-lp208 = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5folly6detail14ScopeGuardImplISt5_BindIFMNS_15RegexMatchCacheEDoFvvEPS3_EELb1EED2Ev.exit52

_ZN5folly6detail14ScopeGuardImplISt5_BindIFMNS_15RegexMatchCacheEDoFvvEPS3_EELb1EED2Ev.exit: ; preds = %.critedge.i.i, %.critedge, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40
  br label %bb.au

bb.au:                                            ; preds = %bb.a, %_ZN5folly6detail14ScopeGuardImplISt5_BindIFMNS_15RegexMatchCacheEDoFvvEPS3_EELb1EED2Ev.exit
  ret void

_ZN5folly6detail14ScopeGuardImplISt5_BindIFMNS_15RegexMatchCacheEDoFvvEPS3_EELb1EED2Ev.exit52: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.j
  %.pn32.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ag, %bb.j ], [ %lpad.loopexit.split-lp208, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40
  call void @_ZN5folly15RegexMatchCache6repairEv(ptr noundef nonnull align 8 dereferenceable(168) %0) #40, !inline_history !798
  resume { ptr, i32 } %.pn32.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr { i64, i8 } @_ZN5folly28RegexMatchCacheIndexedVectorIPKNS_18RegexMatchCacheKeyEE12insert_valueERKS3_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 !guid !22355 {
bb.a:
  %2 = alloca %"struct.std::pair.440", align 8    ; 4 uses
  %3 = alloca %"class.std::tuple.443", align 8    ; 4 uses
  %4 = alloca %"class.std::tuple.227", align 1    ; 3 uses
  %5 = alloca %"struct.std::pair.416", align 8    ; 6 uses
  %6 = alloca %"class.std::tuple.419", align 8    ; 4 uses
  %7 = alloca %"class.std::tuple.227", align 1    ; 3 uses
  %8 = alloca %"class.folly::detail::ScopeGuardImpl.412", align 8 ; 8 uses
  %i.a = alloca i8, align 1                       ; 5 uses
  %i.b = alloca i64, align 8                      ; 7 uses
  %9 = alloca %"class.folly::detail::ScopeGuardImpl.414", align 8 ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #40, !noalias !22356
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #40, !noalias !22356
  store ptr %1, ptr %6, align 8, !tbaa !20813, !alias.scope !22357, !noalias !22356
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #40, !noalias !22356
  %i.d = load ptr, ptr %1, align 8, !tbaa !20309, !noalias !22358
  %i.e = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.f = tail call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 0, i64 %i.e) ; 2 uses
  %i.g = lshr i64 %i.f, 24
  %i.h = or i64 %i.g, 128
  %i.i = add i64 %i.f, %i.e
  call void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNS_18RegexMatchCacheKeyEmvvvEEE19tryEmplaceValueImplIS6_JRKSt21piecewise_construct_tSt5tupleIJRKS6_EESD_IJEEEEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkISI_ISE_mEEEEEbESI_ImmERKT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.416") align 8 %5, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 %i.i, i64 %i.h, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 1 dereferenceable(1) %7), !noalias !22356
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #40, !noalias !22356
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #40, !noalias !22356
  %.sroa.03.0.copyload.i = load ptr, ptr %5, align 8, !tbaa !20826, !noalias !22356 ; 3 uses
  %.sroa.44.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.sroa.44.0.copyload.i = load i64, ptr %.sroa.44.0..sroa_idx.i, align 8, !tbaa !20214, !noalias !22356
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.k = load i8, ptr %i.j, align 8, !tbaa !20711, !range !20615, !noalias !22359, !noundef !1767 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #40, !noalias !22356
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #40
  store i8 0, ptr %8, align 8, !tbaa !20828, !alias.scope !22360
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %.sroa.03.0.copyload.i, ptr %i.m, align 8
  %.sroa.014.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i64 %.sroa.44.0.copyload.i, ptr %.sroa.014.sroa.4.0..sroa_idx, align 8
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 24
  store ptr %0, ptr %.sroa.415.0..sroa_idx, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !20803
  %i.p = load ptr, ptr %0, align 8, !tbaa !20246  ; 2 uses
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = ptrtoint ptr %i.p to i64                 ; 2 uses
  %i.s = sub i64 %i.q, %i.r
  %i.t = ashr exact i64 %i.s, 3
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !20233
  %i.w = lshr i64 %i.v, 8                         ; 2 uses
  %i.x = icmp ult i64 %i.t, %i.w
  br i1 %i.x, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !20247
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = sub i64 %i.aa, %i.r
  %i.ac = ashr exact i64 %i.ab, 3
  %i.ad = sub nsw i64 %i.w, %i.ac
  invoke void @_ZNK5folly19grow_capacity_by_fnclISt6vectorImSaImEEEEvRT_NS5_9size_typeE(ptr noundef nonnull align 1 dereferenceable(1) @_ZN5folly16grow_capacity_byE, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.ad)
          to label %._crit_edge unwind label %bb.d

._crit_edge:                                      ; preds = %bb.c
  %.pre = load ptr, ptr %0, align 8, !tbaa !20306
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.e:                                             ; preds = %._crit_edge, %bb.b
  %i.af = phi ptr [ %.pre, %._crit_edge ], [ %i.p, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #40
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !20306 ; 2 uses
  %i.ai = icmp ne ptr %i.af, %i.ah                ; 2 uses
  %i.aj = zext i1 %i.ai to i8
  store i8 %i.aj, ptr %i.a, align 1, !tbaa !20711
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #40
  br i1 %i.ai, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ak = load i64, ptr %i.u, align 8, !tbaa !20233
  %i.al = lshr i64 %i.ak, 8
  %i.am = add nsw i64 %i.al, -1
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.an = getelementptr inbounds i8, ptr %i.ah, i64 -8 ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !20214
  store ptr %i.an, ptr %i.ag, align 8, !tbaa !20247
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sink = phi i64 [ %i.ao, %bb.g ], [ %i.am, %bb.f ] ; 4 uses
  store i64 %.sink, ptr %i.b, align 8, !tbaa !20214
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload.i, i64 8
  store i64 %.sink, ptr %i.ap, align 8, !tbaa !20830
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #40
  store i8 0, ptr %9, align 8, !tbaa !20828, !alias.scope !22361
  %i.aq = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %i.a, ptr %i.aq, align 8, !tbaa !20832
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr %0, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !22362
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 24
  store ptr %i.b, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !20306
  %i.ar = load ptr, ptr %1, align 8, !tbaa !20309
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #40, !noalias !22363
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #40, !noalias !22363
  store ptr %i.b, ptr %3, align 8, !tbaa !20306, !alias.scope !22364, !noalias !22363
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #40, !noalias !22363
  %i.at = call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 0, i64 %.sink) ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE19tryEmplaceValueImplIS4_JRKSt21piecewise_construct_tSt5tupleIJRKS4_EESD_IJEEEEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkIPSI_ISE_S6_EEEEEbESI_ImmERKT_DpOT0_:bb.a

bb.d:                                             ; preds = %.critedge.i
  %i.v = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.042.0, i1 true)
  %i.w = add nuw nsw i32 %.sroa.042.0, 16383
  %i.x = and i32 %i.w, %.sroa.042.0
  %i.y = zext nneg i32 %i.v to i64                ; 3 uses
  tail call void @llvm.assume(i1 %i.t)
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.y
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !20273
  %i.ab = load i256, ptr %4, align 8
  %i.ac = load i256, ptr %i.aa, align 8
  %i.ad = icmp ne i256 %i.ab, %i.ac
  %i.ae = zext i1 %i.ad to i32
  %.not9.i.i.i.i.i.i.i.i = icmp eq i32 %i.ae, 0
  br i1 %.not9.i.i.i.i.i.i.i.i, label %bb.g, label %.critedge.i, !prof !20223, !llvm.loop !794

bb.e:                                             ; preds = %.critedge.i
  %i.af = icmp eq i8 %i.u, 0
  br i1 %i.af, label %.thread66, label %bb.f, !prof !20223

bb.f:                                             ; preds = %bb.e
  %i.ag = add i64 %.023.i77, -1                   ; 2 uses
  %i.ah = add i64 %i.e, %.025.i76
  %.not.i = icmp eq i64 %i.ag, 0
  br i1 %.not.i, label %.thread66, label %bb.c, !llvm.loop !795

bb.g:                                             ; preds = %bb.d
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.y
  br label %bb.o

.thread66:                                        ; preds = %bb.f, %bb.e, %bb.a
  %.pre-phi86 = phi i64 [ %i.b, %bb.a ], [ %i.i, %bb.e ], [ %i.i, %bb.f ] ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.pre, i64 14
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !20220
  %i.al = and i8 %i.ak, 15
  %i.am = zext nneg i8 %i.al to i64               ; 2 uses
  %i.an = shl i64 %i.am, %.pre-phi86              ; 2 uses
  %.not.i32 = icmp ult i64 %i.c, %i.an
  br i1 %.not.i32, label %_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE16reserveForInsertEm.exit, label %bb.h

bb.h:                                             ; preds = %.thread66
  %i.ao = shl nuw i64 1, %.pre-phi86
  tail call void @_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.c, i64 noundef %i.ao, i64 noundef %i.am, i64 noundef %i.an)
  %.pre82 = load ptr, ptr %1, align 8, !tbaa !20271
  %.pre83 = load i64, ptr %i.a, align 8, !tbaa !20233
  %.pre84 = and i64 %.pre83, 255
  br label %_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE16reserveForInsertEm.exit

_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE16reserveForInsertEm.exit: ; preds = %.thread66, %bb.h
  %.pre-phi = phi i64 [ %.pre-phi86, %.thread66 ], [ %.pre84, %bb.h ] ; 2 uses
  %i.ap = phi ptr [ %.pre, %.thread66 ], [ %.pre82, %bb.h ] ; 3 uses
  %i.aq = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %2, i64 range(i64 0, 256) %.pre-phi) ; 2 uses
  %i.ar = getelementptr inbounds nuw [128 x i8], ptr %i.ap, i64 %i.aq ; 2 uses
  %i.as = load <16 x i8>, ptr %i.ar, align 16, !tbaa !20220
  %i.at = icmp slt <16 x i8> %i.as, zeroinitializer
  %i.au = bitcast <16 x i1> %i.at to i16
  %i.av = and i16 %i.au, 16383                    ; 2 uses
  %.not69 = icmp eq i16 %i.av, 16383
  br i1 %.not69, label %bb.i, label %bb.m

bb.i:                                             ; preds = %_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE16reserveForInsertEm.exit
  %i.aw = shl i64 %3, 1
  %i.ax = or disjoint i64 %i.aw, 1
  br label %bb.j

bb.j:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEEE25incrOutboundOverflowCountEv.exit, %bb.i
  %i.ay = phi i64 [ %i.aq, %bb.i ], [ %i.be, %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEEE25incrOutboundOverflowCountEv.exit ]
  %.030 = phi i64 [ %2, %bb.i ], [ %i.bd, %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEEE25incrOutboundOverflowCountEv.exit ]
  %i.az = getelementptr inbounds nuw [128 x i8], ptr %i.ap, i64 %i.ay
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 15 ; 2 uses
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !20836 ; 2 uses
  %.not.i33 = icmp eq i8 %i.bb, -2
  br i1 %.not.i33, label %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEEE25incrOutboundOverflowCountEv.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bc = add i8 %i.bb, 1
  store i8 %i.bc, ptr %i.ba, align 1, !tbaa !20836
  br label %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEEE25incrOutboundOverflowCountEv.exit

_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEEE25incrOutboundOverflowCountEv.exit: ; preds = %bb.j, %bb.k
  %i.bd = add i64 %i.ax, %.030                    ; 2 uses
  %i.be = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %i.bd, i64 range(i64 0, 256) %.pre-phi) ; 2 uses
  %i.bf = getelementptr inbounds nuw [128 x i8], ptr %i.ap, i64 %i.be ; 3 uses
  %i.bg = load <16 x i8>, ptr %i.bf, align 16     ; 2 uses
  %i.bh = icmp slt <16 x i8> %i.bg, zeroinitializer
  %i.bi = bitcast <16 x i1> %i.bh to i16
  %i.bj = and i16 %i.bi, 16383                    ; 2 uses
  %.not70 = icmp eq i16 %i.bj, 16383
  br i1 %.not70, label %bb.j, label %bb.l, !llvm.loop !22365

bb.l:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEEE25incrOutboundOverflowCountEv.exit
  %i.bk = extractelement <16 x i8> %i.bg, i64 14
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bf, i64 14
  %i.bm = add i8 %i.bk, 16
  store i8 %i.bm, ptr %i.bl, align 2, !tbaa !20276
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE16reserveForInsertEm.exit
  %.sroa.036.0.in.in = phi i16 [ %i.av, %_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE16reserveForInsertEm.exit ], [ %i.bj, %bb.l ]
  %.1 = phi ptr [ %i.ar, %_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE16reserveForInsertEm.exit ], [ %i.bf, %bb.l ] ; 3 uses
  %.sroa.036.0.in = xor i16 %.sroa.036.0.in.in, 16383
  %i.bn = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.036.0.in, i1 true)
  %i.bo = zext nneg i16 %i.bn to i64              ; 4 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.1, i64 %i.bo ; 2 uses
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !20220
  %i.br = icmp eq i8 %i.bq, 0
  br i1 %i.br, label %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEEE6setTagEmm.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIPSt4pairIKNS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEEE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.15) #48
  unreachable

_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEEE6setTagEmm.exit: ; preds = %bb.m
  %i.bs = trunc i64 %3 to i8
  store i8 %i.bs, ptr %i.bp, align 1, !tbaa !20220
  %i.bt = getelementptr inbounds nuw i8, ptr %.1, i64 16
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %i.bo ; 2 uses
  %i.bv = icmp ne ptr %.1, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.bv)
  tail call void @_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJRKS4_EESD_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairISE_S6_EEEEESK_ImmEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr nonnull %i.bu, i64 %i.bo, i64 %2, i64 %3, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 1 dereferenceable(1) %7)
  br label %bb.o

bb.o:                                             ; preds = %bb.g, %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEEE6setTagEmm.exit
  %.sink99 = phi ptr [ %i.ai, %bb.g ], [ %i.bu, %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEEE6setTagEmm.exit ]
  %.lcssa97.sink = phi i64 [ %i.y, %bb.g ], [ %i.bo, %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEEE6setTagEmm.exit ]
  %.sink = phi i8 [ 0, %bb.g ], [ 1, %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEEE6setTagEmm.exit ]
  store ptr %.sink99, ptr %0, align 8, !tbaa !20811
  %.sroa.541.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.lcssa97.sink, ptr %.sroa.541.0..sroa_idx, align 8, !tbaa !20214
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.bw, align 8, !tbaa !22368
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJRKS4_EESD_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairISE_S6_EEEEESK_ImmEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 %2, i64 %3, i64 %4, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 1 dereferenceable(1) %7) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !guid !22370 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.a = invoke noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #44
          to label %_ZZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJRKS4_EESD_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairISE_S6_EEEEESK_ImmEDpOT_ENKUlvE_clEv.exit unwind label %bb.b ; 5 uses

_ZZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJRKS4_EESD_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairISE_S6_EEEEESK_ImmEDpOT_ENKUlvE_clEv.exit: ; preds = %bb.a
  store ptr %i.a, ptr %1, align 8, !tbaa !20273
  %i.b = load i64, ptr %6, align 8, !tbaa !20309
  %i.c = inttoptr i64 %i.b to ptr
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %i.e, align 8, !tbaa !20259
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i64 0, ptr %i.f, align 8, !tbaa !20233
  br label %_ZN5folly15catch_exceptionIZNS_3f146detail8F14TableINS2_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJRKS5_EESE_IJEEEEEvNS2_11F14ItemIterIPNS2_8F14ChunkIPSt4pairISF_S7_EEEEESL_ImmEDpOT_EUlvE_PFvPS9_SQ_SR_EJSW_RSQ_RSR_EvEET2_OT_OT0_DpOT1_.exit

bb.b:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  %i.i = tail call ptr @__cxa_begin_catch(ptr %i.h) #40 ; 0 uses
  invoke void @_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE14eraseBlankColdEPS8_NS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S6_EEEEESC_ImmE(ptr noundef nonnull %0, ptr nonnull %1, i64 %2, i64 %3, i64 %4)
          to label %_ZN5folly11invoke_coldIPFvPNS_3f146detail8F14TableINS2_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEEENS2_11F14ItemIterIPNS2_8F14ChunkIPSt4pairIKS5_S7_EEEEESD_ImmEEJSA_RSJ_RSK_ESL_TnNSt9enable_ifIXsr3std11is_functionIT1_EE5valueEiE4typeELi0EvEET3_OT_DpOT0_.exit unwind label %bb.c, !inline_history !22369

_ZN5folly11invoke_coldIPFvPNS_3f146detail8F14TableINS2_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEEENS2_11F14ItemIterIPNS2_8F14ChunkIPSt4pairIKS5_S7_EEEEESD_ImmEEJSA_RSJ_RSK_ESL_TnNSt9enable_ifIXsr3std11is_functionIT1_EE5valueEiE4typeELi0EvEET3_OT_DpOT0_.exit: ; preds = %bb.b
  tail call void @__cxa_end_catch()
  br label %_ZN5folly15catch_exceptionIZNS_3f146detail8F14TableINS2_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJRKS5_EESE_IJEEEEEvNS2_11F14ItemIterIPNS2_8F14ChunkIPSt4pairISF_S7_EEEEESL_ImmEDpOT_EUlvE_PFvPS9_SQ_SR_EJSW_RSQ_RSR_EvEET2_OT_OT0_DpOT1_.exit

bb.c:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.j

bb.e:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  tail call void @__clang_call_terminate(ptr %i.l) #42
  unreachable

_ZN5folly15catch_exceptionIZNS_3f146detail8F14TableINS2_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJRKS5_EESE_IJEEEEEvNS2_11F14ItemIterIPNS2_8F14ChunkIPSt4pairISF_S7_EEEEESL_ImmEDpOT_EUlvE_PFvPS9_SQ_SR_EJSW_RSQ_RSR_EvEET2_OT_OT0_DpOT1_.exit: ; preds = %_ZZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJRKS4_EESD_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairISE_S6_EEEEESK_ImmEDpOT_ENKUlvE_clEv.exit, %_ZN5folly11invoke_coldIPFvPNS_3f146detail8F14TableINS2_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEEENS2_11F14ItemIterIPNS2_8F14ChunkIPSt4pairIKS5_S7_EEEEESD_ImmEEJSA_RSJ_RSK_ESL_TnNSt9enable_ifIXsr3std11is_functionIT1_EE5valueEiE4typeELi0EvEET3_OT_DpOT0_.exit
  %i.m = and i64 %2, 255                          ; 2 uses
  %i.n = icmp samesign ult i64 %i.m, 16
  tail call void @llvm.assume(i1 %i.n)
  %i.o = lshr i64 %i.m, 1
  %i.p = ptrtoint ptr %1 to i64
  %i.q = or i64 %i.o, %i.p                        ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !20301
  %i.t = icmp ult i64 %i.s, %i.q
  br i1 %i.t, label %bb.f, label %_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE29adjustSizeAndBeginAfterInsertENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S6_EEEEE.exit

bb.f:                                             ; preds = %_ZN5folly15catch_exceptionIZNS_3f146detail8F14TableINS2_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJRKS5_EESE_IJEEEEEvNS2_11F14ItemIterIPNS2_8F14ChunkIPSt4pairISF_S7_EEEEESL_ImmEDpOT_EUlvE_PFvPS9_SQ_SR_EJSW_RSQ_RSR_EvEET2_OT_OT0_DpOT1_.exit
  store i64 %i.q, ptr %i.r, align 8, !tbaa !20214
  br label %_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE29adjustSizeAndBeginAfterInsertENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S6_EEEEE.exit

_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE29adjustSizeAndBeginAfterInsertENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S6_EEEEE.exit: ; preds = %_ZN5folly15catch_exceptionIZNS_3f146detail8F14TableINS2_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJRKS5_EESE_IJEEEEEvNS2_11F14ItemIterIPNS2_8F14ChunkIPSt4pairISF_S7_EEEEESL_ImmEDpOT_EUlvE_PFvPS9_SQ_SR_EJSW_RSQ_RSR_EvEET2_OT_OT0_DpOT1_.exit, %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !20233
  %i.w = add i64 %i.v, 256
  store i64 %i.w, ptr %i.u, align 8, !tbaa !20233
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #34 comdat align 2 personality ptr @__gxx_personality_v0 !guid !22371 {
bb.a:
  %i.a = add i64 %1, 1
  %i.b = lshr i64 %4, 2
  %i.c = add i64 %i.b, %4
  %i.d = lshr i64 %4, 3
  %i.e = add i64 %i.c, %i.d
  %i.f = lshr i64 %4, 5
  %i.g = add i64 %i.e, %i.f
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.a, i64 %i.g) ; 4 uses
  %i.h = icmp ult i64 %.sroa.speculated, 15
  br i1 %i.h, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.i = icmp samesign ult i64 %.sroa.speculated, 3
  br i1 %i.i, label %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE25computeChunkCountAndScaleEmbb.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.inv.i = icmp samesign ugt i64 %.sroa.speculated, 6
  %spec.select.i = select i1 %.inv.i, i64 14, i64 6
  br label %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE25computeChunkCountAndScaleEmbb.exit

bb.d:                                             ; preds = %bb.a
  %i.j = add i64 %.sroa.speculated, -1
  %i.k = udiv i64 %i.j, 12
  %i.l = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.k, i1 true)
  %i.m = sub nuw nsw i64 64, %i.l                 ; 2 uses
  %i.n = shl i64 12, %i.m
  %i.o = icmp ugt i64 %i.n, 72057594037927935
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN5folly6detail16throw_exception_ISt9bad_allocJEEEvDpT0_() #20
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.p = shl nuw nsw i64 1, %i.m
  br label %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE25computeChunkCountAndScaleEmbb.exit

_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE25computeChunkCountAndScaleEmbb.exit: ; preds = %bb.b, %bb.c, %bb.f
  %.pn21.i = phi i64 [ %i.p, %bb.f ], [ 1, %bb.c ], [ 1, %bb.b ]
  %.0.pn.i = phi i64 [ 12, %bb.f ], [ %spec.select.i, %bb.c ], [ 2, %bb.b ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !20233
  %i.s = lshr i64 %i.r, 8
  tail call void @_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.s, i64 noundef %2, i64 noundef %3, i64 noundef %.pn21.i, i64 noundef %.0.pn.i)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) local_unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 !guid !22381 {
bb.a:
  %i.a = alloca i64, align 8                      ; 3 uses
  %i.b = alloca i64, align 8                      ; 3 uses
  %i.c = alloca ptr, align 8                      ; 7 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  %i.g = alloca i64, align 8                      ; 5 uses
  %i.h = alloca ptr, align 8                      ; 5 uses
  %i.i = alloca i8, align 1                       ; 5 uses
  %i.j = alloca i8, align 1                       ; 6 uses
  %6 = alloca %"class.folly::detail::ScopeGuardImpl.396", align 8 ; 16 uses
  %7 = alloca %"struct.std::array.398", align 1   ; 5 uses
  store i64 %1, ptr %i.a, align 8, !tbaa !20214
  store i64 %2, ptr %i.b, align 8, !tbaa !20214
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #40
  %i.k = load ptr, ptr %0, align 8, !tbaa !20271  ; 5 uses
  store ptr %i.k, ptr %i.c, align 8, !tbaa !20838
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #40
  %i.l = mul i64 %3, %2
  store i64 %i.l, ptr %i.d, align 8, !tbaa !20214
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #40
  %i.m = icmp eq i64 %2, 1                        ; 2 uses
  %i.n = shl i64 %3, 3
  %i.o = add i64 %i.n, 16
  %i.p = shl i64 %2, 7
  %.0.i = select i1 %i.m, i64 %i.o, i64 %i.p
  store i64 %.0.i, ptr %i.e, align 8, !tbaa !20214
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #40
  %i.q = mul i64 %5, %4
  store i64 %i.q, ptr %i.f, align 8, !tbaa !20214
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #40
  %i.r = icmp eq i64 %4, 1                        ; 2 uses
  %i.s = shl i64 %5, 3
  %i.t = add i64 %i.s, 16
  %i.u = shl i64 %4, 7
  %.0.i73 = select i1 %i.r, i64 %i.t, i64 %i.u    ; 2 uses
  store i64 %.0.i73, ptr %i.g, align 8, !tbaa !20214
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #40
  %i.v = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %.0.i73) #46 ; 15 uses
  store ptr %i.v, ptr %i.h, align 8, !tbaa !20346
  store i8 0, ptr %i.i, align 1, !tbaa !20711
  %.not.i = icmp eq i64 %4, 0                     ; 2 uses
  br i1 %.not.i, label %_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %xtraiter = and i64 %4, 7                       ; 3 uses
  %i.w = icmp ult i64 %4, 8
  br i1 %i.w, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %4, -8
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.08.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.am, %.lr.ph.i ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.7, %.lr.ph.i ]
  %i.x = getelementptr inbounds nuw [128 x i8], ptr %i.v, i64 %.08.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.x, i8 0, i64 16, i1 false)
  %i.y = getelementptr inbounds nuw [128 x i8], ptr %i.v, i64 %.08.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 128
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.z, i8 0, i64 16, i1 false)
  %i.aa = getelementptr inbounds nuw [128 x i8], ptr %i.v, i64 %.08.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 256
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.ab, i8 0, i64 16, i1 false)
  %i.ac = getelementptr inbounds nuw [128 x i8], ptr %i.v, i64 %.08.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 384
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.ad, i8 0, i64 16, i1 false)
  %i.ae = getelementptr inbounds nuw [128 x i8], ptr %i.v, i64 %.08.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 512
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.af, i8 0, i64 16, i1 false)
  %i.ag = getelementptr inbounds nuw [128 x i8], ptr %i.v, i64 %.08.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 640
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.ah, i8 0, i64 16, i1 false)
  %i.ai = getelementptr inbounds nuw [128 x i8], ptr %i.v, i64 %.08.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 768
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.aj, i8 0, i64 16, i1 false)
  %i.ak = getelementptr inbounds nuw [128 x i8], ptr %i.v, i64 %.08.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 896
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.al, i8 0, i64 16, i1 false)
  %i.am = add nuw i64 %.08.i, 8                   ; 2 uses
  %niter.next.7 = add nuw i64 %niter, 8           ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !22372

_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.08.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.am, %_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa ]
  %lcmp.mod184 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod184)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.08.i.epil = phi i64 [ %i.ao, %.lr.ph.i.epil ], [ %.08.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.an = getelementptr inbounds nuw [128 x i8], ptr %i.v, i64 %.08.i.epil
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.an, i8 0, i64 16, i1 false)
  %i.ao = add nuw i64 %.08.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.epil, !llvm.loop !22373

_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE16initializeChunksEPhmm.exit: ; preds = %_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, %.lr.ph.i.epil, %bb.a
  %i.ap = getelementptr inbounds nuw i8, ptr %i.v, i64 14
  %i.aq = trunc i64 %5 to i8
  store i8 %i.aq, ptr %i.ap, align 2, !tbaa !20276
  store ptr %i.v, ptr %0, align 8, !tbaa !20271
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.as = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %4, i1 true)
  %i.at = load i64, ptr %i.ar, align 8, !tbaa !20233
  %i.au = and i64 %i.at, -256
  %i.av = select i1 %.not.i, i64 4294967295, i64 %i.as
  %i.aw = or i64 %i.au, %i.av
  store i64 %i.aw, ptr %i.ar, align 8, !tbaa !20233
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #40
  store i8 0, ptr %i.j, align 1, !tbaa !20711
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #40
  store i8 0, ptr %6, align 8, !tbaa !20828, !alias.scope !22382
  %i.ax = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.j, ptr %i.ax, align 8, !tbaa !20832
  %.sroa.4104.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.d, ptr %.sroa.4104.0..sroa_idx, align 8, !tbaa !20306
  %.sroa.5105.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %i.c, ptr %.sroa.5105.0..sroa_idx, align 8, !tbaa !22383
  %.sroa.6106.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 32
  store ptr %i.e, ptr %.sroa.6106.0..sroa_idx, align 8, !tbaa !20306
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 40
  store ptr %i.h, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !20840
  %.sroa.8107.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 48
  store ptr %i.g, ptr %.sroa.8107.0..sroa_idx, align 8, !tbaa !20306
  %.sroa.9108.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 56
  store ptr %0, ptr %.sroa.9108.0..sroa_idx, align 8, !tbaa !22384
  %.sroa.10109.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 64
  store ptr %i.b, ptr %.sroa.10109.0..sroa_idx, align 8, !tbaa !20306
  %.sroa.11110.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 72
  store ptr %i.i, ptr %.sroa.11110.0..sroa_idx, align 8, !tbaa !20832
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 80
  store ptr %i.a, ptr %.sroa.12.0..sroa_idx, align 8, !tbaa !20306
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 88
  store ptr %i.f, ptr %.sroa.13.0..sroa_idx, align 8, !tbaa !20306
  %i.ay = icmp eq i64 %1, 0
end_hunk_1
begin_hunk_2_@_ZN5folly6detail14ScopeGuardImplIZNS_28RegexMatchCacheIndexedVectorIPKNS_18RegexMatchCacheKeyEE12insert_valueERKS5_EUlvE_Lb1EED2Ev:bb.a
  %.not19.i.i = icmp eq i8 %i.y, 0
  br i1 %.not19.i.i, label %.critedge.i.i.i, label %_ZN5folly6detail14ScopeGuardImplIZNS_28RegexMatchCacheIndexedVectorIPKNS_18RegexMatchCacheKeyEE12insert_valueERKS5_EUlvE_Lb1EE7executeEv.exit, !prof !20223

.critedge.i.i.i:                                  ; preds = %.preheader.i.i
  %i.z = getelementptr inbounds i8, ptr %.017.i22.i.i, i64 -256 ; 3 uses
  %i.aa = load <16 x i8>, ptr %i.z, align 16, !tbaa !20220
  %i.ab = icmp slt <16 x i8> %i.aa, zeroinitializer
  %i.ac = bitcast <16 x i1> %i.ab to i16
  %i.ad = and i16 %i.ac, 16383
  %.not20.i.i = icmp eq i16 %i.ad, 0
  br i1 %.not20.i.i, label %bb.e, label %bb.f, !prof !20221

bb.f:                                             ; preds = %.critedge.i.i.i
  %i.ae = icmp ne ptr %i.z, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.ae)
  br label %_ZN5folly6detail14ScopeGuardImplIZNS_28RegexMatchCacheIndexedVectorIPKNS_18RegexMatchCacheKeyEE12insert_valueERKS5_EUlvE_Lb1EE7executeEv.exit

bb.g:                                             ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNS_18RegexMatchCacheKeyEmvvvEEE13eraseIterIntoIZNS1_11F14BasicMapIS7_E18tableEraseIterIntoIRKNS_16variadic_noop_fnEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKS6_mEEEEEOT_EUlOSK_E_EEvSN_SP_.exit.i.i
  %i.af = landingpad { ptr, i32 }
          catch ptr null
  %i.ag = extractvalue { ptr, i32 } %i.af, 0
  %i.ah = tail call ptr @__cxa_begin_catch(ptr %i.ag) #40 ; 0 uses
  tail call void @_ZN5folly6detail18ScopeGuardImplBase9terminateEv() #40, !inline_history !22400
  unreachable

_ZN5folly6detail14ScopeGuardImplIZNS_28RegexMatchCacheIndexedVectorIPKNS_18RegexMatchCacheKeyEE12insert_valueERKS5_EUlvE_Lb1EE7executeEv.exit: ; preds = %.lr.ph, %.preheader.i.i, %bb.e, %bb.f, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNS_18RegexMatchCacheKeyEmvvvEEE19tryEmplaceValueImplIS6_JRKSt21piecewise_construct_tSt5tupleIJRKS6_EESD_IJEEEEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkISI_ISE_mEEEEEbESI_ImmERKT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.416") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 1 dereferenceable(1) %7) local_unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 !guid !22406 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !20233 ; 3 uses
  %i.c = lshr i64 %i.b, 8                         ; 3 uses
  %.not = icmp eq i64 %i.c, 0
  %.pre = load ptr, ptr %1, align 8, !tbaa !20242 ; 3 uses
  br i1 %.not, label %.thread66, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = shl i64 %3, 1
  %i.e = or disjoint i64 %i.d, 1
  %i.f = trunc i64 %3 to i8
  %i.g = insertelement <16 x i8> poison, i8 %i.f, i64 0
  %i.h = shufflevector <16 x i8> %i.g, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.i = and i64 %i.b, 255                        ; 4 uses
  %i.j = shl nuw i64 1, %i.i
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.f
  %.023.i75 = phi i64 [ %i.j, %bb.b ], [ %i.ae, %bb.f ]
  %.025.i74 = phi i64 [ %2, %bb.b ], [ %i.af, %bb.f ] ; 2 uses
  %i.k = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.025.i74, i64 range(i64 0, 256) %i.i)
  %i.l = getelementptr inbounds nuw [256 x i8], ptr %.pre, i64 %i.k ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 144
  tail call void @llvm.prefetch.p0(ptr nonnull %i.n, i32 0, i32 3, i32 1)
  %i.o = load <16 x i8>, ptr %i.l, align 16       ; 2 uses
  %i.p = icmp eq <16 x i8> %i.o, %i.h
  %i.q = bitcast <16 x i1> %i.p to i16
  %i.r = and i16 %i.q, 16383
  %i.s = zext nneg i16 %i.r to i32
  %i.t = icmp ne ptr %i.l, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  %i.u = extractelement <16 x i8> %i.o, i64 15
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.d, %bb.c
  %.sroa.042.0 = phi i32 [ %i.s, %bb.c ], [ %i.x, %bb.d ] ; 4 uses
  %.not68 = icmp eq i32 %.sroa.042.0, 0
  br i1 %.not68, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.critedge.i
  %i.v = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.042.0, i1 true)
  %i.w = add nuw nsw i32 %.sroa.042.0, 16383
  %i.x = and i32 %i.w, %.sroa.042.0
  %i.y = zext nneg i32 %i.v to i64                ; 2 uses
  tail call void @llvm.assume(i1 %i.t)
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %i.y ; 2 uses
  %i.aa = load ptr, ptr %4, align 8, !tbaa !20309
  %i.ab = load ptr, ptr %i.z, align 8, !tbaa !20309
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %.loopexit, label %.critedge.i, !prof !20223, !llvm.loop !784

bb.e:                                             ; preds = %.critedge.i
  %i.ad = icmp eq i8 %i.u, 0
  br i1 %i.ad, label %.thread66, label %bb.f, !prof !20223

bb.f:                                             ; preds = %bb.e
  %i.ae = add i64 %.023.i75, -1                   ; 2 uses
  %i.af = add i64 %i.e, %.025.i74
  %.not.i = icmp eq i64 %i.ae, 0
  br i1 %.not.i, label %.thread66, label %bb.c, !llvm.loop !785

.thread66:                                        ; preds = %bb.f, %bb.e, %bb.a
  %.pre-phi83 = phi i64 [ %i.b, %bb.a ], [ %i.i, %bb.e ], [ %i.i, %bb.f ] ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.pre, i64 14
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !20220
  %i.ai = and i8 %i.ah, 15
  %i.aj = zext nneg i8 %i.ai to i64               ; 2 uses
  %i.ak = shl i64 %i.aj, %.pre-phi83              ; 2 uses
  %.not.i32 = icmp ult i64 %i.c, %i.ak
  br i1 %.not.i32, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNS_18RegexMatchCacheKeyEmvvvEEE16reserveForInsertEm.exit, label %bb.g

bb.g:                                             ; preds = %.thread66
  %i.al = shl nuw i64 1, %.pre-phi83
  tail call void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNS_18RegexMatchCacheKeyEmvvvEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.c, i64 noundef %i.al, i64 noundef %i.aj, i64 noundef %i.ak)
  %.pre79 = load ptr, ptr %1, align 8, !tbaa !20242
  %.pre80 = load i64, ptr %i.a, align 8, !tbaa !20233
  %.pre81 = and i64 %.pre80, 255
  br label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNS_18RegexMatchCacheKeyEmvvvEEE16reserveForInsertEm.exit

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNS_18RegexMatchCacheKeyEmvvvEEE16reserveForInsertEm.exit: ; preds = %.thread66, %bb.g
  %.pre-phi = phi i64 [ %.pre-phi83, %.thread66 ], [ %.pre81, %bb.g ] ; 2 uses
  %i.am = phi ptr [ %.pre, %.thread66 ], [ %.pre79, %bb.g ] ; 3 uses
  %i.an = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %2, i64 range(i64 0, 256) %.pre-phi) ; 2 uses
  %i.ao = getelementptr inbounds nuw [256 x i8], ptr %i.am, i64 %i.an ; 2 uses
  %i.ap = load <16 x i8>, ptr %i.ao, align 16, !tbaa !20220
  %i.aq = icmp slt <16 x i8> %i.ap, zeroinitializer
  %i.ar = bitcast <16 x i1> %i.aq to i16
  %i.as = and i16 %i.ar, 16383                    ; 2 uses
  %.not69 = icmp eq i16 %i.as, 16383
  br i1 %.not69, label %bb.h, label %bb.l

bb.h:                                             ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNS_18RegexMatchCacheKeyEmvvvEEE16reserveForInsertEm.exit
  %i.at = shl i64 %3, 1
  %i.au = or disjoint i64 %i.at, 1
  br label %bb.i

bb.i:                                             ; preds = %_ZN5folly3f146detail8F14ChunkISt4pairIKPKNS_18RegexMatchCacheKeyEmEE25incrOutboundOverflowCountEv.exit, %bb.h
  %i.av = phi i64 [ %i.an, %bb.h ], [ %i.bb, %_ZN5folly3f146detail8F14ChunkISt4pairIKPKNS_18RegexMatchCacheKeyEmEE25incrOutboundOverflowCountEv.exit ]
  %.030 = phi i64 [ %2, %bb.h ], [ %i.ba, %_ZN5folly3f146detail8F14ChunkISt4pairIKPKNS_18RegexMatchCacheKeyEmEE25incrOutboundOverflowCountEv.exit ]
  %i.aw = getelementptr inbounds nuw [256 x i8], ptr %i.am, i64 %i.av
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 15 ; 2 uses
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !20845 ; 2 uses
  %.not.i33 = icmp eq i8 %i.ay, -2
  br i1 %.not.i33, label %_ZN5folly3f146detail8F14ChunkISt4pairIKPKNS_18RegexMatchCacheKeyEmEE25incrOutboundOverflowCountEv.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.az = add i8 %i.ay, 1
  store i8 %i.az, ptr %i.ax, align 1, !tbaa !20845
  br label %_ZN5folly3f146detail8F14ChunkISt4pairIKPKNS_18RegexMatchCacheKeyEmEE25incrOutboundOverflowCountEv.exit

_ZN5folly3f146detail8F14ChunkISt4pairIKPKNS_18RegexMatchCacheKeyEmEE25incrOutboundOverflowCountEv.exit: ; preds = %bb.i, %bb.j
  %i.ba = add i64 %i.au, %.030                    ; 2 uses
  %i.bb = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %i.ba, i64 range(i64 0, 256) %.pre-phi) ; 2 uses
  %i.bc = getelementptr inbounds nuw [256 x i8], ptr %i.am, i64 %i.bb ; 3 uses
  %i.bd = load <16 x i8>, ptr %i.bc, align 16     ; 2 uses
  %i.be = icmp slt <16 x i8> %i.bd, zeroinitializer
  %i.bf = bitcast <16 x i1> %i.be to i16
  %i.bg = and i16 %i.bf, 16383                    ; 2 uses
  %.not70 = icmp eq i16 %i.bg, 16383
  br i1 %.not70, label %bb.i, label %bb.k, !llvm.loop !22405

bb.k:                                             ; preds = %_ZN5folly3f146detail8F14ChunkISt4pairIKPKNS_18RegexMatchCacheKeyEmEE25incrOutboundOverflowCountEv.exit
  %i.bh = extractelement <16 x i8> %i.bd, i64 14
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bc, i64 14
  %i.bj = add i8 %i.bh, 16
  store i8 %i.bj, ptr %i.bi, align 2, !tbaa !20244
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNS_18RegexMatchCacheKeyEmvvvEEE16reserveForInsertEm.exit
  %.sroa.036.0.in.in = phi i16 [ %i.as, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNS_18RegexMatchCacheKeyEmvvvEEE16reserveForInsertEm.exit ], [ %i.bg, %bb.k ]
  %.1 = phi ptr [ %i.ao, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNS_18RegexMatchCacheKeyEmvvvEEE16reserveForInsertEm.exit ], [ %i.bc, %bb.k ] ; 3 uses
  %.sroa.036.0.in = xor i16 %.sroa.036.0.in.in, 16383
  %i.bk = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.036.0.in, i1 true)
  %i.bl = zext nneg i16 %i.bk to i64              ; 4 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.1, i64 %i.bl ; 2 uses
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !20220
  %i.bo = icmp eq i8 %i.bn, 0
  br i1 %i.bo, label %_ZN5folly3f146detail8F14ChunkISt4pairIKPKNS_18RegexMatchCacheKeyEmEE6setTagEmm.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkISt4pairIKPKNS_18RegexMatchCacheKeyEmEE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.15) #48
  unreachable

_ZN5folly3f146detail8F14ChunkISt4pairIKPKNS_18RegexMatchCacheKeyEmEE6setTagEmm.exit: ; preds = %bb.l
  %i.bp = trunc i64 %3 to i8
  store i8 %i.bp, ptr %i.bm, align 1, !tbaa !20220
  %i.bq = getelementptr inbounds nuw i8, ptr %.1, i64 16
  %i.br = getelementptr inbounds nuw [16 x i8], ptr %i.bq, i64 %i.bl ; 4 uses
  %i.bs = icmp ne ptr %.1, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.bs)
  %i.bt = load i64, ptr %6, align 8, !tbaa !20813
  %i.bu = inttoptr i64 %i.bt to ptr
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !20309
  store ptr %i.bv, ptr %i.br, align 8, !tbaa !20846
  %i.bw = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  store i64 0, ptr %i.bw, align 8, !tbaa !20830
  %i.bx = ptrtoint ptr %i.br to i64
  %i.by = or i64 %i.bx, %i.bl                     ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !20808
  %i.cb = icmp ult i64 %i.ca, %i.by
  br i1 %i.cb, label %bb.n, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNS_18RegexMatchCacheKeyEmvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJRKS6_EESD_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairISE_mEEEEESK_ImmEDpOT_.exit

bb.n:                                             ; preds = %_ZN5folly3f146detail8F14ChunkISt4pairIKPKNS_18RegexMatchCacheKeyEmEE6setTagEmm.exit
  store i64 %i.by, ptr %i.bz, align 8, !tbaa !20214
  br label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNS_18RegexMatchCacheKeyEmvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJRKS6_EESD_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairISE_mEEEEESK_ImmEDpOT_.exit

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNS_18RegexMatchCacheKeyEmvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJRKS6_EESD_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairISE_mEEEEESK_ImmEDpOT_.exit: ; preds = %_ZN5folly3f146detail8F14ChunkISt4pairIKPKNS_18RegexMatchCacheKeyEmEE6setTagEmm.exit, %bb.n
  %i.cc = load i64, ptr %i.a, align 8, !tbaa !20233
  %i.cd = add i64 %i.cc, 256
  store i64 %i.cd, ptr %i.a, align 8, !tbaa !20233
  br label %.loopexit

.loopexit:                                        ; preds = %bb.d, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNS_18RegexMatchCacheKeyEmvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJRKS6_EESD_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairISE_mEEEEESK_ImmEDpOT_.exit
  %.lcssa92.sink = phi ptr [ %i.br, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNS_18RegexMatchCacheKeyEmvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJRKS6_EESD_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairISE_mEEEEESK_ImmEDpOT_.exit ], [ %i.z, %bb.d ]
  %.lcssa93.sink = phi i64 [ %i.bl, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNS_18RegexMatchCacheKeyEmvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJRKS6_EESD_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairISE_mEEEEESK_ImmEDpOT_.exit ], [ %i.y, %bb.d ]
  %.sink = phi i8 [ 1, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNS_18RegexMatchCacheKeyEmvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJRKS6_EESD_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairISE_mEEEEESK_ImmEDpOT_.exit ], [ 0, %bb.d ]
  store ptr %.lcssa92.sink, ptr %0, align 8, !tbaa !20826
  %.sroa.541.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.lcssa93.sink, ptr %.sroa.541.0..sroa_idx, align 8, !tbaa !20214
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.ce, align 8, !tbaa !22408
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNS_18RegexMatchCacheKeyEmvvvEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #34 comdat align 2 personality ptr @__gxx_personality_v0 !guid !22409 {
bb.a:
  %i.a = add i64 %1, 1
  %i.b = lshr i64 %4, 2
  %i.c = add i64 %i.b, %4
  %i.d = lshr i64 %4, 3
  %i.e = add i64 %i.c, %i.d
  %i.f = lshr i64 %4, 5
  %i.g = add i64 %i.e, %i.f
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.a, i64 %i.g) ; 4 uses
  %i.h = icmp ult i64 %.sroa.speculated, 15
  br i1 %i.h, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.i = icmp samesign ult i64 %.sroa.speculated, 3
  br i1 %i.i, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNS_18RegexMatchCacheKeyEmvvvEEE25computeChunkCountAndScaleEmbb.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.inv.i = icmp samesign ugt i64 %.sroa.speculated, 6
  %spec.select.i = select i1 %.inv.i, i64 14, i64 6
  br label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNS_18RegexMatchCacheKeyEmvvvEEE25computeChunkCountAndScaleEmbb.exit

bb.d:                                             ; preds = %bb.a
  %i.j = add i64 %.sroa.speculated, -1
  %i.k = udiv i64 %i.j, 12
  %i.l = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.k, i1 true)
  %i.m = sub nuw nsw i64 64, %i.l                 ; 2 uses
  %i.n = shl i64 12, %i.m
  %i.o = icmp ugt i64 %i.n, 72057594037927935
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN5folly6detail16throw_exception_ISt9bad_allocJEEEvDpT0_() #20
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.p = shl nuw nsw i64 1, %i.m
  br label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNS_18RegexMatchCacheKeyEmvvvEEE25computeChunkCountAndScaleEmbb.exit

_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNS_18RegexMatchCacheKeyEmvvvEEE25computeChunkCountAndScaleEmbb.exit: ; preds = %bb.b, %bb.c, %bb.f
  %.pn21.i = phi i64 [ %i.p, %bb.f ], [ 1, %bb.c ], [ 1, %bb.b ]
  %.0.pn.i = phi i64 [ 12, %bb.f ], [ %spec.select.i, %bb.c ], [ 2, %bb.b ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !20233
  %i.s = lshr i64 %i.r, 8
  tail call void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNS_18RegexMatchCacheKeyEmvvvEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.s, i64 noundef %2, i64 noundef %3, i64 noundef %.pn21.i, i64 noundef %.0.pn.i)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNS_18RegexMatchCacheKeyEmvvvEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) local_unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 !guid !22419 {
bb.a:
  %i.a = alloca i64, align 8                      ; 3 uses
  %i.b = alloca i64, align 8                      ; 3 uses
  %i.c = alloca ptr, align 8                      ; 7 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  %i.g = alloca i64, align 8                      ; 5 uses
  %i.h = alloca ptr, align 8                      ; 5 uses
  %i.i = alloca i8, align 1                       ; 5 uses
  %i.j = alloca i8, align 1                       ; 6 uses
  %6 = alloca %"class.folly::detail::ScopeGuardImpl.422", align 8 ; 16 uses
  %7 = alloca %"struct.std::array.398", align 1   ; 5 uses
  store i64 %1, ptr %i.a, align 8, !tbaa !20214
  store i64 %2, ptr %i.b, align 8, !tbaa !20214
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #40
  %i.k = load ptr, ptr %0, align 8, !tbaa !20242  ; 5 uses
  store ptr %i.k, ptr %i.c, align 8, !tbaa !20847
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #40
  %i.l = mul i64 %3, %2
  store i64 %i.l, ptr %i.d, align 8, !tbaa !20214
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #40
  %i.m = icmp eq i64 %2, 1                        ; 2 uses
  %i.n = shl i64 %3, 4
  %i.o = add i64 %i.n, 16
  %i.p = shl i64 %2, 8
  %.0.i = select i1 %i.m, i64 %i.o, i64 %i.p
  store i64 %.0.i, ptr %i.e, align 8, !tbaa !20214
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #40
  %i.q = mul i64 %5, %4
  store i64 %i.q, ptr %i.f, align 8, !tbaa !20214
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #40
  %i.r = icmp eq i64 %4, 1                        ; 2 uses
  %i.s = shl i64 %5, 4
  %i.t = add i64 %i.s, 16
  %i.u = shl i64 %4, 8
  %.0.i69 = select i1 %i.r, i64 %i.t, i64 %i.u    ; 2 uses
  store i64 %.0.i69, ptr %i.g, align 8, !tbaa !20214
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #40
  %i.v = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %.0.i69) #46 ; 16 uses
  store ptr %i.v, ptr %i.h, align 8, !tbaa !20346
  store i8 0, ptr %i.i, align 1, !tbaa !20711
  %.not.i = icmp eq i64 %4, 0                     ; 2 uses
  br i1 %.not.i, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNS_18RegexMatchCacheKeyEmvvvEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %xtraiter = and i64 %4, 7                       ; 3 uses
  %i.w = icmp ult i64 %4, 8
  br i1 %i.w, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %4, -8
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.08.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.am, %.lr.ph.i ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.7, %.lr.ph.i ]
  %i.x = getelementptr inbounds nuw [256 x i8], ptr %i.v, i64 %.08.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.x, i8 0, i64 16, i1 false)
  %i.y = getelementptr inbounds nuw [256 x i8], ptr %i.v, i64 %.08.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 256
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.z, i8 0, i64 16, i1 false)
  %i.aa = getelementptr inbounds nuw [256 x i8], ptr %i.v, i64 %.08.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 512
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.ab, i8 0, i64 16, i1 false)
  %i.ac = getelementptr inbounds nuw [256 x i8], ptr %i.v, i64 %.08.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 768
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.ad, i8 0, i64 16, i1 false)
  %i.ae = getelementptr inbounds nuw [256 x i8], ptr %i.v, i64 %.08.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 1024
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.af, i8 0, i64 16, i1 false)
  %i.ag = getelementptr inbounds nuw [256 x i8], ptr %i.v, i64 %.08.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 1280
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.ah, i8 0, i64 16, i1 false)
  %i.ai = getelementptr inbounds nuw [256 x i8], ptr %i.v, i64 %.08.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 1536
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.aj, i8 0, i64 16, i1 false)
  %i.ak = getelementptr inbounds nuw [256 x i8], ptr %i.v, i64 %.08.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 1792
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.al, i8 0, i64 16, i1 false)
  %i.am = add nuw i64 %.08.i, 8                   ; 2 uses
  %niter.next.7 = add nuw i64 %niter, 8           ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNS_18RegexMatchCacheKeyEmvvvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !22410

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNS_18RegexMatchCacheKeyEmvvvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNS_18RegexMatchCacheKeyEmvvvEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNS_18RegexMatchCacheKeyEmvvvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.08.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.am, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNS_18RegexMatchCacheKeyEmvvvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa ]
  %lcmp.mod168 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod168)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.08.i.epil = phi i64 [ %i.ao, %.lr.ph.i.epil ], [ %.08.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.an = getelementptr inbounds nuw [256 x i8], ptr %i.v, i64 %.08.i.epil
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.an, i8 0, i64 16, i1 false)
  %i.ao = add nuw i64 %.08.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNS_18RegexMatchCacheKeyEmvvvEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.epil, !llvm.loop !22411

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNS_18RegexMatchCacheKeyEmvvvEEE16initializeChunksEPhmm.exit: ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNS_18RegexMatchCacheKeyEmvvvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, %.lr.ph.i.epil, %bb.a
  %i.ap = getelementptr inbounds nuw i8, ptr %i.v, i64 14
  %i.aq = trunc i64 %5 to i8
  store i8 %i.aq, ptr %i.ap, align 2, !tbaa !20244
  store ptr %i.v, ptr %0, align 8, !tbaa !20242
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.as = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %4, i1 true)
  %i.at = load i64, ptr %i.ar, align 8, !tbaa !20233
  %i.au = and i64 %i.at, -256
  %i.av = select i1 %.not.i, i64 4294967295, i64 %i.as
  %i.aw = or i64 %i.au, %i.av
  store i64 %i.aw, ptr %i.ar, align 8, !tbaa !20233
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #40
  store i8 0, ptr %i.j, align 1, !tbaa !20711
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #40
  store i8 0, ptr %6, align 8, !tbaa !20828, !alias.scope !22420
  %i.ax = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.j, ptr %i.ax, align 8, !tbaa !20832
  %.sroa.493.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.d, ptr %.sroa.493.0..sroa_idx, align 8, !tbaa !20306
  %.sroa.594.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %i.c, ptr %.sroa.594.0..sroa_idx, align 8, !tbaa !22421
  %.sroa.695.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 32
  store ptr %i.e, ptr %.sroa.695.0..sroa_idx, align 8, !tbaa !20306
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 40
  store ptr %i.h, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !20840
  %.sroa.896.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 48
  store ptr %i.g, ptr %.sroa.896.0..sroa_idx, align 8, !tbaa !20306
end_hunk_2
begin_hunk_3_@_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIPKNS_18RegexMatchCacheKeyEmvvvEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev:bb.a
  store ptr %i.z, ptr %i.q, align 8, !tbaa !20242
  %i.aa = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !22432, !nonnull !1767, !align !20277
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !20214 ; 2 uses
  %i.ae = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ad, i1 true)
  %i.af = icmp eq i64 %i.ad, 0
  %i.ag = load i64, ptr %i.aa, align 8, !tbaa !20233
  %i.ah = and i64 %i.ag, -256
  %i.ai = select i1 %i.af, i64 4294967295, i64 %i.ae
  %i.aj = or i64 %i.ah, %i.ai
  store i64 %i.aj, ptr %i.aa, align 8, !tbaa !20233
  tail call void @_ZN5folly3f146detail12F14LinkCheckILNS1_17F14IntrinsicsModeE2EE5checkEv() #40
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.02.i.i = phi ptr [ %i.l, %bb.d ], [ %i.t, %bb.e ] ; 2 uses
  %.0.i.i = phi i64 [ %i.o, %bb.d ], [ %i.w, %bb.e ]
  %.not.i.i.i = icmp eq ptr %.02.i.i, null
  br i1 %.not.i.i.i, label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIPKNS_18RegexMatchCacheKeyEmvvvEEE10rehashImplEmmmmmEUlvE_Lb1EE7executeEv.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_ZdlPvm(ptr noundef nonnull %.02.i.i, i64 noundef %.0.i.i) #40
  br label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIPKNS_18RegexMatchCacheKeyEmvvvEEE10rehashImplEmmmmmEUlvE_Lb1EE7executeEv.exit

_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIPKNS_18RegexMatchCacheKeyEmvvvEEE10rehashImplEmmmmmEUlvE_Lb1EE7executeEv.exit: ; preds = %bb.g, %bb.f, %bb.c, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyImPKNS_18RegexMatchCacheKeyEvvvEEE19tryEmplaceValueImplImJRKSt21piecewise_construct_tSt5tupleIJRKmEESD_IJEEEEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkISI_ISE_S6_EEEEEbESI_ImmERKT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.440") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 1 dereferenceable(1) %7) local_unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 !guid !22434 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !20233 ; 3 uses
  %i.c = lshr i64 %i.b, 8                         ; 3 uses
  %.not = icmp eq i64 %i.c, 0
  %.pre = load ptr, ptr %1, align 8, !tbaa !20229 ; 3 uses
  br i1 %.not, label %.thread66, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = shl i64 %3, 1
  %i.e = or disjoint i64 %i.d, 1
  %i.f = trunc i64 %3 to i8
  %i.g = insertelement <16 x i8> poison, i8 %i.f, i64 0
  %i.h = shufflevector <16 x i8> %i.g, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.i = and i64 %i.b, 255                        ; 4 uses
  %i.j = shl nuw i64 1, %i.i
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.f
  %.023.i75 = phi i64 [ %i.j, %bb.b ], [ %i.ae, %bb.f ]
  %.025.i74 = phi i64 [ %2, %bb.b ], [ %i.af, %bb.f ] ; 2 uses
  %i.k = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.025.i74, i64 range(i64 0, 256) %i.i)
  %i.l = getelementptr inbounds nuw [256 x i8], ptr %.pre, i64 %i.k ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 144
  tail call void @llvm.prefetch.p0(ptr nonnull %i.n, i32 0, i32 3, i32 1)
  %i.o = load <16 x i8>, ptr %i.l, align 16       ; 2 uses
  %i.p = icmp eq <16 x i8> %i.o, %i.h
  %i.q = bitcast <16 x i1> %i.p to i16
  %i.r = and i16 %i.q, 16383
  %i.s = zext nneg i16 %i.r to i32
  %i.t = icmp ne ptr %i.l, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  %i.u = extractelement <16 x i8> %i.o, i64 15
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.d, %bb.c
  %.sroa.042.0 = phi i32 [ %i.s, %bb.c ], [ %i.x, %bb.d ] ; 4 uses
  %.not68 = icmp eq i32 %.sroa.042.0, 0
  br i1 %.not68, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.critedge.i
  %i.v = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.042.0, i1 true)
  %i.w = add nuw nsw i32 %.sroa.042.0, 16383
  %i.x = and i32 %i.w, %.sroa.042.0
  %i.y = zext nneg i32 %i.v to i64                ; 2 uses
  tail call void @llvm.assume(i1 %i.t)
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %i.y ; 2 uses
  %i.aa = load i64, ptr %4, align 8, !tbaa !20214
  %i.ab = load i64, ptr %i.z, align 8, !tbaa !20214
  %i.ac = icmp eq i64 %i.aa, %i.ab
  br i1 %i.ac, label %.loopexit, label %.critedge.i, !prof !20223, !llvm.loop !743

bb.e:                                             ; preds = %.critedge.i
  %i.ad = icmp eq i8 %i.u, 0
  br i1 %i.ad, label %.thread66, label %bb.f, !prof !20223

bb.f:                                             ; preds = %bb.e
  %i.ae = add i64 %.023.i75, -1                   ; 2 uses
  %i.af = add i64 %i.e, %.025.i74
  %.not.i = icmp eq i64 %i.ae, 0
  br i1 %.not.i, label %.thread66, label %bb.c, !llvm.loop !744

.thread66:                                        ; preds = %bb.f, %bb.e, %bb.a
  %.pre-phi83 = phi i64 [ %i.b, %bb.a ], [ %i.i, %bb.e ], [ %i.i, %bb.f ] ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.pre, i64 14
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !20220
  %i.ai = and i8 %i.ah, 15
  %i.aj = zext nneg i8 %i.ai to i64               ; 2 uses
  %i.ak = shl i64 %i.aj, %.pre-phi83              ; 2 uses
  %.not.i32 = icmp ult i64 %i.c, %i.ak
  br i1 %.not.i32, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyImPKNS_18RegexMatchCacheKeyEvvvEEE16reserveForInsertEm.exit, label %bb.g

bb.g:                                             ; preds = %.thread66
  %i.al = shl nuw i64 1, %.pre-phi83
  tail call void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyImPKNS_18RegexMatchCacheKeyEvvvEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.c, i64 noundef %i.al, i64 noundef %i.aj, i64 noundef %i.ak)
  %.pre79 = load ptr, ptr %1, align 8, !tbaa !20229
  %.pre80 = load i64, ptr %i.a, align 8, !tbaa !20233
  %.pre81 = and i64 %.pre80, 255
  br label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyImPKNS_18RegexMatchCacheKeyEvvvEEE16reserveForInsertEm.exit

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyImPKNS_18RegexMatchCacheKeyEvvvEEE16reserveForInsertEm.exit: ; preds = %.thread66, %bb.g
  %.pre-phi = phi i64 [ %.pre-phi83, %.thread66 ], [ %.pre81, %bb.g ] ; 2 uses
  %i.am = phi ptr [ %.pre, %.thread66 ], [ %.pre79, %bb.g ] ; 3 uses
  %i.an = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %2, i64 range(i64 0, 256) %.pre-phi) ; 2 uses
  %i.ao = getelementptr inbounds nuw [256 x i8], ptr %i.am, i64 %i.an ; 2 uses
  %i.ap = load <16 x i8>, ptr %i.ao, align 16, !tbaa !20220
  %i.aq = icmp slt <16 x i8> %i.ap, zeroinitializer
  %i.ar = bitcast <16 x i1> %i.aq to i16
  %i.as = and i16 %i.ar, 16383                    ; 2 uses
  %.not69 = icmp eq i16 %i.as, 16383
  br i1 %.not69, label %bb.h, label %bb.l

bb.h:                                             ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyImPKNS_18RegexMatchCacheKeyEvvvEEE16reserveForInsertEm.exit
  %i.at = shl i64 %3, 1
  %i.au = or disjoint i64 %i.at, 1
  br label %bb.i

bb.i:                                             ; preds = %_ZN5folly3f146detail8F14ChunkISt4pairIKmPKNS_18RegexMatchCacheKeyEEE25incrOutboundOverflowCountEv.exit, %bb.h
  %i.av = phi i64 [ %i.an, %bb.h ], [ %i.bb, %_ZN5folly3f146detail8F14ChunkISt4pairIKmPKNS_18RegexMatchCacheKeyEEE25incrOutboundOverflowCountEv.exit ]
  %.030 = phi i64 [ %2, %bb.h ], [ %i.ba, %_ZN5folly3f146detail8F14ChunkISt4pairIKmPKNS_18RegexMatchCacheKeyEEE25incrOutboundOverflowCountEv.exit ]
  %i.aw = getelementptr inbounds nuw [256 x i8], ptr %i.am, i64 %i.av
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 15 ; 2 uses
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !20850 ; 2 uses
  %.not.i33 = icmp eq i8 %i.ay, -2
  br i1 %.not.i33, label %_ZN5folly3f146detail8F14ChunkISt4pairIKmPKNS_18RegexMatchCacheKeyEEE25incrOutboundOverflowCountEv.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.az = add i8 %i.ay, 1
  store i8 %i.az, ptr %i.ax, align 1, !tbaa !20850
  br label %_ZN5folly3f146detail8F14ChunkISt4pairIKmPKNS_18RegexMatchCacheKeyEEE25incrOutboundOverflowCountEv.exit

_ZN5folly3f146detail8F14ChunkISt4pairIKmPKNS_18RegexMatchCacheKeyEEE25incrOutboundOverflowCountEv.exit: ; preds = %bb.i, %bb.j
  %i.ba = add i64 %i.au, %.030                    ; 2 uses
  %i.bb = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %i.ba, i64 range(i64 0, 256) %.pre-phi) ; 2 uses
  %i.bc = getelementptr inbounds nuw [256 x i8], ptr %i.am, i64 %i.bb ; 3 uses
  %i.bd = load <16 x i8>, ptr %i.bc, align 16     ; 2 uses
  %i.be = icmp slt <16 x i8> %i.bd, zeroinitializer
  %i.bf = bitcast <16 x i1> %i.be to i16
  %i.bg = and i16 %i.bf, 16383                    ; 2 uses
  %.not70 = icmp eq i16 %i.bg, 16383
  br i1 %.not70, label %bb.i, label %bb.k, !llvm.loop !22433

bb.k:                                             ; preds = %_ZN5folly3f146detail8F14ChunkISt4pairIKmPKNS_18RegexMatchCacheKeyEEE25incrOutboundOverflowCountEv.exit
  %i.bh = extractelement <16 x i8> %i.bd, i64 14
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bc, i64 14
  %i.bj = add i8 %i.bh, 16
  store i8 %i.bj, ptr %i.bi, align 2, !tbaa !20237
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyImPKNS_18RegexMatchCacheKeyEvvvEEE16reserveForInsertEm.exit
  %.sroa.036.0.in.in = phi i16 [ %i.as, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyImPKNS_18RegexMatchCacheKeyEvvvEEE16reserveForInsertEm.exit ], [ %i.bg, %bb.k ]
  %.1 = phi ptr [ %i.ao, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyImPKNS_18RegexMatchCacheKeyEvvvEEE16reserveForInsertEm.exit ], [ %i.bc, %bb.k ] ; 3 uses
  %.sroa.036.0.in = xor i16 %.sroa.036.0.in.in, 16383
  %i.bk = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.036.0.in, i1 true)
  %i.bl = zext nneg i16 %i.bk to i64              ; 4 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.1, i64 %i.bl ; 2 uses
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !20220
  %i.bo = icmp eq i8 %i.bn, 0
  br i1 %i.bo, label %_ZN5folly3f146detail8F14ChunkISt4pairIKmPKNS_18RegexMatchCacheKeyEEE6setTagEmm.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkISt4pairIKmPKNS_18RegexMatchCacheKeyEEE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.15) #48
  unreachable

_ZN5folly3f146detail8F14ChunkISt4pairIKmPKNS_18RegexMatchCacheKeyEEE6setTagEmm.exit: ; preds = %bb.l
  %i.bp = trunc i64 %3 to i8
  store i8 %i.bp, ptr %i.bm, align 1, !tbaa !20220
  %i.bq = getelementptr inbounds nuw i8, ptr %.1, i64 16
  %i.br = getelementptr inbounds nuw [16 x i8], ptr %i.bq, i64 %i.bl ; 4 uses
  %i.bs = icmp ne ptr %.1, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.bs)
  %i.bt = load i64, ptr %6, align 8, !tbaa !20306
  %i.bu = inttoptr i64 %i.bt to ptr
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !20214
  store i64 %i.bv, ptr %i.br, align 8, !tbaa !20852
  %i.bw = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  store ptr null, ptr %i.bw, align 8, !tbaa !20853
  %i.bx = ptrtoint ptr %i.br to i64
  %i.by = or i64 %i.bx, %i.bl                     ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !20307
  %i.cb = icmp ult i64 %i.ca, %i.by
  br i1 %i.cb, label %bb.n, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyImPKNS_18RegexMatchCacheKeyEvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJRKmEESD_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairISE_S6_EEEEESK_ImmEDpOT_.exit

bb.n:                                             ; preds = %_ZN5folly3f146detail8F14ChunkISt4pairIKmPKNS_18RegexMatchCacheKeyEEE6setTagEmm.exit
  store i64 %i.by, ptr %i.bz, align 8, !tbaa !20214
  br label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyImPKNS_18RegexMatchCacheKeyEvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJRKmEESD_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairISE_S6_EEEEESK_ImmEDpOT_.exit

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyImPKNS_18RegexMatchCacheKeyEvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJRKmEESD_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairISE_S6_EEEEESK_ImmEDpOT_.exit: ; preds = %_ZN5folly3f146detail8F14ChunkISt4pairIKmPKNS_18RegexMatchCacheKeyEEE6setTagEmm.exit, %bb.n
  %i.cc = load i64, ptr %i.a, align 8, !tbaa !20233
  %i.cd = add i64 %i.cc, 256
  store i64 %i.cd, ptr %i.a, align 8, !tbaa !20233
  br label %.loopexit

.loopexit:                                        ; preds = %bb.d, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyImPKNS_18RegexMatchCacheKeyEvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJRKmEESD_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairISE_S6_EEEEESK_ImmEDpOT_.exit
  %.lcssa92.sink = phi ptr [ %i.br, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyImPKNS_18RegexMatchCacheKeyEvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJRKmEESD_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairISE_S6_EEEEESK_ImmEDpOT_.exit ], [ %i.z, %bb.d ]
  %.lcssa93.sink = phi i64 [ %i.bl, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyImPKNS_18RegexMatchCacheKeyEvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJRKmEESD_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairISE_S6_EEEEESK_ImmEDpOT_.exit ], [ %i.y, %bb.d ]
  %.sink = phi i8 [ 1, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyImPKNS_18RegexMatchCacheKeyEvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJRKmEESD_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairISE_S6_EEEEESK_ImmEDpOT_.exit ], [ 0, %bb.d ]
  store ptr %.lcssa92.sink, ptr %0, align 8, !tbaa !20835
  %.sroa.541.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.lcssa93.sink, ptr %.sroa.541.0..sroa_idx, align 8, !tbaa !20214
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.ce, align 8, !tbaa !22437
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyImPKNS_18RegexMatchCacheKeyEvvvEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #34 comdat align 2 personality ptr @__gxx_personality_v0 !guid !22438 {
bb.a:
  %i.a = add i64 %1, 1
  %i.b = lshr i64 %4, 2
  %i.c = add i64 %i.b, %4
  %i.d = lshr i64 %4, 3
  %i.e = add i64 %i.c, %i.d
  %i.f = lshr i64 %4, 5
  %i.g = add i64 %i.e, %i.f
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.a, i64 %i.g) ; 4 uses
  %i.h = icmp ult i64 %.sroa.speculated, 15
  br i1 %i.h, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.i = icmp samesign ult i64 %.sroa.speculated, 3
  br i1 %i.i, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyImPKNS_18RegexMatchCacheKeyEvvvEEE25computeChunkCountAndScaleEmbb.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.inv.i = icmp samesign ugt i64 %.sroa.speculated, 6
  %spec.select.i = select i1 %.inv.i, i64 14, i64 6
  br label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyImPKNS_18RegexMatchCacheKeyEvvvEEE25computeChunkCountAndScaleEmbb.exit

bb.d:                                             ; preds = %bb.a
  %i.j = add i64 %.sroa.speculated, -1
  %i.k = udiv i64 %i.j, 12
  %i.l = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.k, i1 true)
  %i.m = sub nuw nsw i64 64, %i.l                 ; 2 uses
  %i.n = shl i64 12, %i.m
  %i.o = icmp ugt i64 %i.n, 72057594037927935
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN5folly6detail16throw_exception_ISt9bad_allocJEEEvDpT0_() #20
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.p = shl nuw nsw i64 1, %i.m
  br label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyImPKNS_18RegexMatchCacheKeyEvvvEEE25computeChunkCountAndScaleEmbb.exit

_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyImPKNS_18RegexMatchCacheKeyEvvvEEE25computeChunkCountAndScaleEmbb.exit: ; preds = %bb.b, %bb.c, %bb.f
  %.pn21.i = phi i64 [ %i.p, %bb.f ], [ 1, %bb.c ], [ 1, %bb.b ]
  %.0.pn.i = phi i64 [ 12, %bb.f ], [ %spec.select.i, %bb.c ], [ 2, %bb.b ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !20233
  %i.s = lshr i64 %i.r, 8
  tail call void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyImPKNS_18RegexMatchCacheKeyEvvvEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.s, i64 noundef %2, i64 noundef %3, i64 noundef %.pn21.i, i64 noundef %.0.pn.i)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyImPKNS_18RegexMatchCacheKeyEvvvEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) local_unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 !guid !22448 {
bb.a:
  %i.a = alloca i64, align 8                      ; 3 uses
  %i.b = alloca i64, align 8                      ; 3 uses
  %i.c = alloca ptr, align 8                      ; 7 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  %i.g = alloca i64, align 8                      ; 5 uses
  %i.h = alloca ptr, align 8                      ; 5 uses
  %i.i = alloca i8, align 1                       ; 5 uses
  %i.j = alloca i8, align 1                       ; 6 uses
  %6 = alloca %"class.folly::detail::ScopeGuardImpl.446", align 8 ; 16 uses
  %7 = alloca %"struct.std::array.398", align 1   ; 5 uses
  store i64 %1, ptr %i.a, align 8, !tbaa !20214
  store i64 %2, ptr %i.b, align 8, !tbaa !20214
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #40
  %i.k = load ptr, ptr %0, align 8, !tbaa !20229  ; 5 uses
  store ptr %i.k, ptr %i.c, align 8, !tbaa !20854
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #40
  %i.l = mul i64 %3, %2
  store i64 %i.l, ptr %i.d, align 8, !tbaa !20214
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #40
  %i.m = icmp eq i64 %2, 1                        ; 2 uses
  %i.n = shl i64 %3, 4
  %i.o = add i64 %i.n, 16
  %i.p = shl i64 %2, 8
  %.0.i = select i1 %i.m, i64 %i.o, i64 %i.p
  store i64 %.0.i, ptr %i.e, align 8, !tbaa !20214
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #40
  %i.q = mul i64 %5, %4
  store i64 %i.q, ptr %i.f, align 8, !tbaa !20214
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #40
  %i.r = icmp eq i64 %4, 1                        ; 2 uses
  %i.s = shl i64 %5, 4
  %i.t = add i64 %i.s, 16
  %i.u = shl i64 %4, 8
  %.0.i69 = select i1 %i.r, i64 %i.t, i64 %i.u    ; 2 uses
  store i64 %.0.i69, ptr %i.g, align 8, !tbaa !20214
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #40
  %i.v = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %.0.i69) #46 ; 16 uses
  store ptr %i.v, ptr %i.h, align 8, !tbaa !20346
  store i8 0, ptr %i.i, align 1, !tbaa !20711
  %.not.i = icmp eq i64 %4, 0                     ; 2 uses
  br i1 %.not.i, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyImPKNS_18RegexMatchCacheKeyEvvvEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %xtraiter = and i64 %4, 7                       ; 3 uses
  %i.w = icmp ult i64 %4, 8
  br i1 %i.w, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %4, -8
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.08.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.am, %.lr.ph.i ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.7, %.lr.ph.i ]
  %i.x = getelementptr inbounds nuw [256 x i8], ptr %i.v, i64 %.08.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.x, i8 0, i64 16, i1 false)
  %i.y = getelementptr inbounds nuw [256 x i8], ptr %i.v, i64 %.08.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 256
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.z, i8 0, i64 16, i1 false)
  %i.aa = getelementptr inbounds nuw [256 x i8], ptr %i.v, i64 %.08.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 512
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.ab, i8 0, i64 16, i1 false)
  %i.ac = getelementptr inbounds nuw [256 x i8], ptr %i.v, i64 %.08.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 768
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.ad, i8 0, i64 16, i1 false)
  %i.ae = getelementptr inbounds nuw [256 x i8], ptr %i.v, i64 %.08.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 1024
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.af, i8 0, i64 16, i1 false)
  %i.ag = getelementptr inbounds nuw [256 x i8], ptr %i.v, i64 %.08.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 1280
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.ah, i8 0, i64 16, i1 false)
  %i.ai = getelementptr inbounds nuw [256 x i8], ptr %i.v, i64 %.08.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 1536
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.aj, i8 0, i64 16, i1 false)
  %i.ak = getelementptr inbounds nuw [256 x i8], ptr %i.v, i64 %.08.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 1792
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.al, i8 0, i64 16, i1 false)
  %i.am = add nuw i64 %.08.i, 8                   ; 2 uses
  %niter.next.7 = add nuw i64 %niter, 8           ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyImPKNS_18RegexMatchCacheKeyEvvvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !22439

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyImPKNS_18RegexMatchCacheKeyEvvvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyImPKNS_18RegexMatchCacheKeyEvvvEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyImPKNS_18RegexMatchCacheKeyEvvvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.08.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.am, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyImPKNS_18RegexMatchCacheKeyEvvvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa ]
  %lcmp.mod168 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod168)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.08.i.epil = phi i64 [ %i.ao, %.lr.ph.i.epil ], [ %.08.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.an = getelementptr inbounds nuw [256 x i8], ptr %i.v, i64 %.08.i.epil
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.an, i8 0, i64 16, i1 false)
  %i.ao = add nuw i64 %.08.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyImPKNS_18RegexMatchCacheKeyEvvvEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.epil, !llvm.loop !22440

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyImPKNS_18RegexMatchCacheKeyEvvvEEE16initializeChunksEPhmm.exit: ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyImPKNS_18RegexMatchCacheKeyEvvvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, %.lr.ph.i.epil, %bb.a
  %i.ap = getelementptr inbounds nuw i8, ptr %i.v, i64 14
  %i.aq = trunc i64 %5 to i8
  store i8 %i.aq, ptr %i.ap, align 2, !tbaa !20237
  store ptr %i.v, ptr %0, align 8, !tbaa !20229
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.as = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %4, i1 true)
  %i.at = load i64, ptr %i.ar, align 8, !tbaa !20233
  %i.au = and i64 %i.at, -256
  %i.av = select i1 %.not.i, i64 4294967295, i64 %i.as
  %i.aw = or i64 %i.au, %i.av
  store i64 %i.aw, ptr %i.ar, align 8, !tbaa !20233
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #40
  store i8 0, ptr %i.j, align 1, !tbaa !20711
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #40
  store i8 0, ptr %6, align 8, !tbaa !20828, !alias.scope !22449
  %i.ax = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.j, ptr %i.ax, align 8, !tbaa !20832
  %.sroa.493.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.d, ptr %.sroa.493.0..sroa_idx, align 8, !tbaa !20306
  %.sroa.594.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %i.c, ptr %.sroa.594.0..sroa_idx, align 8, !tbaa !22450
  %.sroa.695.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 32
  store ptr %i.e, ptr %.sroa.695.0..sroa_idx, align 8, !tbaa !20306
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 40
  store ptr %i.h, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !20840
  %.sroa.896.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 48
  store ptr %i.g, ptr %.sroa.896.0..sroa_idx, align 8, !tbaa !20306
end_hunk_3
begin_hunk_4_@_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNS_18RegexMatchCacheKeyEmvvvEEE9eraseImplENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKS6_mEEEEESB_ImmE:bb.a
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.lr.ph.i
  %i.bh = add i64 %i.aq, %.01126.i                ; 2 uses
  %i.bi = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %i.bh, i64 range(i64 0, 256) %i.at) ; 3 uses
  %i.bj = getelementptr inbounds nuw [256 x i8], ptr %i.ar, i64 %i.bi
  %i.bk = icmp eq ptr %i.bj, %i.ak
  br i1 %i.bk, label %.thread.i, label %.lr.ph.i

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNS_18RegexMatchCacheKeyEmvvvEEE10eraseBlankENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKS6_mEEEEESB_ImmE.exit: ; preds = %_ZN5folly3f146detail8F14ChunkISt4pairIKPKNS_18RegexMatchCacheKeyEmEE8clearTagEm.exit.i, %.thread.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPKNS_18RegexMatchCacheKeyENS_15RegexMatchCache23StringQueueReverseEntryEvvvSt17integral_constantIbLb1EEEEE19tryEmplaceValueImplIS6_JRKSt21piecewise_construct_tSt5tupleIJRKS6_EESH_IJEEEEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEbESM_ImmERKT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.456") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 1 dereferenceable(1) %7) local_unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 !guid !22470 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !20233 ; 4 uses
  %i.c = lshr i64 %i.b, 8                         ; 3 uses
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %..thread66_crit_edge, label %bb.b

..thread66_crit_edge:                             ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !20253
  %.pre85 = shl nuw i64 1, %i.b
  br label %.thread66

bb.b:                                             ; preds = %bb.a
  %i.d = shl i64 %3, 1
  %i.e = or disjoint i64 %i.d, 1
  %i.f = trunc i64 %3 to i8
  %i.g = insertelement <16 x i8> poison, i8 %i.f, i64 0
  %i.h = shufflevector <16 x i8> %i.g, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.i = and i64 %i.b, 255                        ; 4 uses
  %i.j = shl nuw i64 1, %i.i                      ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !20253 ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.f
  %.022.i77 = phi i64 [ %i.j, %bb.b ], [ %i.aj, %bb.f ]
  %.024.i76 = phi i64 [ %2, %bb.b ], [ %i.ak, %bb.f ] ; 2 uses
  %i.m = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.024.i76, i64 range(i64 0, 256) %i.i)
  %i.n = getelementptr inbounds nuw [64 x i8], ptr %i.l, i64 %i.m ; 3 uses
  %i.o = load <16 x i8>, ptr %i.n, align 16       ; 2 uses
  %i.p = icmp eq <16 x i8> %i.o, %i.h
  %i.q = bitcast <16 x i1> %i.p to i16
  %i.r = and i16 %i.q, 4095
  %i.s = zext nneg i16 %i.r to i32
  %i.t = icmp ne ptr %i.n, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  %i.v = extractelement <16 x i8> %i.o, i64 15
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.d, %bb.c
  %.sroa.042.0 = phi i32 [ %i.s, %bb.c ], [ %i.y, %bb.d ] ; 4 uses
  %.not68 = icmp eq i32 %.sroa.042.0, 0
  br i1 %.not68, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.critedge.i
  %i.w = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.042.0, i1 true)
  %i.x = add nuw nsw i32 %.sroa.042.0, 4095
  %i.y = and i32 %i.x, %.sroa.042.0
  %i.z = zext nneg i32 %i.w to i64                ; 3 uses
  tail call void @llvm.assume(i1 %i.t)
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.z
  %i.ab = load ptr, ptr %1, align 8, !tbaa !20254
  %i.ac = load i32, ptr %i.aa, align 4, !tbaa !20326
  %i.ad = zext i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw [32 x i8], ptr %i.ab, i64 %i.ad
  %i.af = load ptr, ptr %4, align 8, !tbaa !20309
  %i.ag = load ptr, ptr %i.ae, align 8, !tbaa !20309
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %bb.g, label %.critedge.i, !prof !20223, !llvm.loop !790

bb.e:                                             ; preds = %.critedge.i
  %i.ai = icmp eq i8 %i.v, 0
  br i1 %i.ai, label %.thread66, label %bb.f, !prof !20223

bb.f:                                             ; preds = %bb.e
  %i.aj = add i64 %.022.i77, -1                   ; 2 uses
  %i.ak = add i64 %i.e, %.024.i76
  %.not.i = icmp eq i64 %i.aj, 0
  br i1 %.not.i, label %.thread66, label %bb.c, !llvm.loop !791

bb.g:                                             ; preds = %bb.d
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.z
  br label %bb.o

.thread66:                                        ; preds = %bb.f, %bb.e, %..thread66_crit_edge
  %.pre-phi86 = phi i64 [ %.pre85, %..thread66_crit_edge ], [ %i.j, %bb.e ], [ %i.j, %bb.f ] ; 2 uses
  %.pre-phi = phi i64 [ %i.b, %..thread66_crit_edge ], [ %i.i, %bb.e ], [ %i.i, %bb.f ]
  %i.am = phi ptr [ %.pre, %..thread66_crit_edge ], [ %i.l, %bb.e ], [ %i.l, %bb.f ] ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 12
  %.0.copyload.i.i = load i16, ptr %i.an, align 1
  %i.ao = zext i16 %.0.copyload.i.i to i64        ; 2 uses
  %i.ap = add i64 %.pre-phi86, -1
  %i.aq = lshr i64 %i.ap, 12
  %i.ar = add nuw nsw i64 %i.aq, 1
  %i.as = mul i64 %i.ar, %i.ao                    ; 2 uses
  %.not.i32 = icmp ult i64 %i.c, %i.as
  br i1 %.not.i32, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPKNS_18RegexMatchCacheKeyENS_15RegexMatchCache23StringQueueReverseEntryEvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit, label %bb.h

bb.h:                                             ; preds = %.thread66
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPKNS_18RegexMatchCacheKeyENS_15RegexMatchCache23StringQueueReverseEntryEvvvSt17integral_constantIbLb1EEEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.c, i64 noundef %.pre-phi86, i64 noundef %i.ao, i64 noundef %i.as)
  %.pre82 = load ptr, ptr %i.at, align 8, !tbaa !20253
  %.pre83 = load i64, ptr %i.a, align 8, !tbaa !20233
  %.pre87 = and i64 %.pre83, 255
  br label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPKNS_18RegexMatchCacheKeyENS_15RegexMatchCache23StringQueueReverseEntryEvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit

_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPKNS_18RegexMatchCacheKeyENS_15RegexMatchCache23StringQueueReverseEntryEvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit: ; preds = %.thread66, %bb.h
  %.pre-phi88 = phi i64 [ %.pre-phi, %.thread66 ], [ %.pre87, %bb.h ] ; 2 uses
  %i.au = phi ptr [ %i.am, %.thread66 ], [ %.pre82, %bb.h ] ; 3 uses
  %i.av = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %2, i64 range(i64 0, 256) %.pre-phi88) ; 2 uses
  %i.aw = getelementptr inbounds nuw [64 x i8], ptr %i.au, i64 %i.av ; 2 uses
  %i.ax = load <16 x i8>, ptr %i.aw, align 16, !tbaa !20220
  %i.ay = icmp slt <16 x i8> %i.ax, zeroinitializer
  %i.az = bitcast <16 x i1> %i.ay to i16
  %i.ba = and i16 %i.az, 4095                     ; 2 uses
  %.not69 = icmp eq i16 %i.ba, 4095
  br i1 %.not69, label %bb.i, label %bb.m

bb.i:                                             ; preds = %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPKNS_18RegexMatchCacheKeyENS_15RegexMatchCache23StringQueueReverseEntryEvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit
  %i.bb = shl i64 %3, 1
  %i.bc = or disjoint i64 %i.bb, 1
  br label %bb.j

bb.j:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit, %bb.i
  %i.bd = phi i64 [ %i.av, %bb.i ], [ %i.bj, %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit ]
  %.030 = phi i64 [ %2, %bb.i ], [ %i.bi, %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit ]
  %i.be = getelementptr inbounds nuw [64 x i8], ptr %i.au, i64 %i.bd
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 15 ; 2 uses
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !20823 ; 2 uses
  %.not.i33 = icmp eq i8 %i.bg, -2
  br i1 %.not.i33, label %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bh = add i8 %i.bg, 1
  store i8 %i.bh, ptr %i.bf, align 1, !tbaa !20823
  br label %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit

_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit: ; preds = %bb.j, %bb.k
  %i.bi = add i64 %i.bc, %.030                    ; 2 uses
  %i.bj = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %i.bi, i64 range(i64 0, 256) %.pre-phi88) ; 2 uses
  %i.bk = getelementptr inbounds nuw [64 x i8], ptr %i.au, i64 %i.bj ; 3 uses
  %i.bl = load <16 x i8>, ptr %i.bk, align 16     ; 2 uses
  %i.bm = icmp slt <16 x i8> %i.bl, zeroinitializer
  %i.bn = bitcast <16 x i1> %i.bm to i16
  %i.bo = and i16 %i.bn, 4095                     ; 2 uses
  %.not70 = icmp eq i16 %i.bo, 4095
  br i1 %.not70, label %bb.j, label %bb.l, !llvm.loop !22469

bb.l:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit
  %i.bp = extractelement <16 x i8> %i.bl, i64 14
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bk, i64 14
  %i.br = add i8 %i.bp, 16
  store i8 %i.br, ptr %i.bq, align 2, !tbaa !20824
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPKNS_18RegexMatchCacheKeyENS_15RegexMatchCache23StringQueueReverseEntryEvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit
  %.sroa.036.0.in.in = phi i16 [ %i.ba, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPKNS_18RegexMatchCacheKeyENS_15RegexMatchCache23StringQueueReverseEntryEvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit ], [ %i.bo, %bb.l ]
  %.1 = phi ptr [ %i.aw, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPKNS_18RegexMatchCacheKeyENS_15RegexMatchCache23StringQueueReverseEntryEvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit ], [ %i.bk, %bb.l ] ; 3 uses
  %.sroa.036.0.in = xor i16 %.sroa.036.0.in.in, 4095
  %i.bs = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.036.0.in, i1 true)
  %i.bt = zext nneg i16 %i.bs to i64              ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.1, i64 %i.bt ; 2 uses
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !20220
  %i.bw = icmp eq i8 %i.bv, 0
  br i1 %i.bw, label %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIjE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.15) #48
  unreachable

_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit:  ; preds = %bb.m
  %i.bx = trunc i64 %3 to i8
  store i8 %i.bx, ptr %i.bu, align 1, !tbaa !20220
  %i.by = getelementptr inbounds nuw i8, ptr %.1, i64 16
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %i.bt ; 2 uses
  %i.ca = icmp ne ptr %.1, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.ca)
  %i.cb = load i64, ptr %i.a, align 8, !tbaa !20233
  %i.cc = lshr i64 %i.cb, 8                       ; 2 uses
  %i.cd = trunc i64 %i.cc to i32
  store i32 %i.cd, ptr %i.bz, align 4, !tbaa !20326
  %i.ce = load ptr, ptr %1, align 8, !tbaa !20254, !nonnull !1767, !noundef !1767
  %i.cf = and i64 %i.cc, 4294967295
  %i.cg = getelementptr inbounds nuw [32 x i8], ptr %i.ce, i64 %i.cf ; 4 uses
  %i.ch = load i64, ptr %6, align 8, !tbaa !20813
  %i.ci = inttoptr i64 %i.ch to ptr
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !20309
  store ptr %i.cj, ptr %i.cg, align 8, !tbaa !20862
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  store i64 0, ptr %i.ck, align 8
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %i.cl, align 8, !tbaa !20259
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cg, i64 24
  store i64 0, ptr %i.cm, align 8, !tbaa !20233
  %i.cn = load i64, ptr %i.a, align 8, !tbaa !20233
  %i.co = add i64 %i.cn, 256
  store i64 %i.co, ptr %i.a, align 8, !tbaa !20233
  br label %bb.o

bb.o:                                             ; preds = %bb.g, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit
  %.sink101 = phi ptr [ %i.al, %bb.g ], [ %i.bz, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ]
  %.lcssa99.sink = phi i64 [ %i.z, %bb.g ], [ %i.bt, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ]
  %.sink = phi i8 [ 0, %bb.g ], [ 1, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ]
  store ptr %.sink101, ptr %0, align 8, !tbaa !20414
  %.sroa.541.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.lcssa99.sink, ptr %.sroa.541.0..sroa_idx, align 8, !tbaa !20214
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.cp, align 8, !tbaa !20864
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPKNS_18RegexMatchCacheKeyENS_15RegexMatchCache23StringQueueReverseEntryEvvvSt17integral_constantIbLb1EEEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #34 comdat align 2 personality ptr @__gxx_personality_v0 !guid !22471 {
bb.a:
  %i.a = add i64 %1, 1
  %i.b = lshr i64 %4, 2
  %i.c = add i64 %i.b, %4
  %i.d = lshr i64 %4, 3
  %i.e = add i64 %i.c, %i.d
  %i.f = lshr i64 %4, 5
  %i.g = add i64 %i.e, %i.f
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.a, i64 %i.g) ; 4 uses
  %i.h = icmp ult i64 %.sroa.speculated, 13
  br i1 %i.h, label %bb.b, label %_ZN5folly11findLastSetImEEjT_.exit.i

bb.b:                                             ; preds = %bb.a
  %i.i = icmp samesign ult i64 %.sroa.speculated, 3
  br i1 %i.i, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPKNS_18RegexMatchCacheKeyENS_15RegexMatchCache23StringQueueReverseEntryEvvvSt17integral_constantIbLb1EEEEE25computeChunkCountAndScaleEmbb.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.inv.i = icmp samesign ugt i64 %.sroa.speculated, 6
  %spec.select.i = select i1 %.inv.i, i64 12, i64 6
  br label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPKNS_18RegexMatchCacheKeyENS_15RegexMatchCache23StringQueueReverseEntryEvvvSt17integral_constantIbLb1EEEEE25computeChunkCountAndScaleEmbb.exit

_ZN5folly11findLastSetImEEjT_.exit.i:             ; preds = %bb.a
  %i.j = add i64 %.sroa.speculated, -1            ; 2 uses
  %i.k = udiv i64 %i.j, 10
  %i.l = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.k, i1 true)
  %i.m = trunc nuw nsw i64 %i.l to i32
  %i.n = sub nuw nsw i32 64, %i.m                 ; 2 uses
  %i.o = zext nneg i32 %i.n to i64
  %i.p = shl nuw nsw i64 1, %i.o                  ; 2 uses
  %i.q = icmp ugt i64 %i.j, 20479
  %i.r = shl i32 10, %i.n
  %i.s = zext i32 %i.r to i64
  %i.t = select i1 %i.q, i64 40960, i64 %i.s      ; 2 uses
  %i.u = add nsw i64 %i.p, -1
  %i.v = lshr i64 %i.u, 12
  %i.w = add nuw nsw i64 %i.v, 1
  %i.x = mul i64 %i.w, %i.t
  %i.y = icmp ugt i64 %i.x, 4294967295
  br i1 %i.y, label %bb.d, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPKNS_18RegexMatchCacheKeyENS_15RegexMatchCache23StringQueueReverseEntryEvvvSt17integral_constantIbLb1EEEEE25computeChunkCountAndScaleEmbb.exit

bb.d:                                             ; preds = %_ZN5folly11findLastSetImEEjT_.exit.i
  tail call void @_ZN5folly6detail16throw_exception_ISt9bad_allocJEEEvDpT0_() #20
  unreachable

_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPKNS_18RegexMatchCacheKeyENS_15RegexMatchCache23StringQueueReverseEntryEvvvSt17integral_constantIbLb1EEEEE25computeChunkCountAndScaleEmbb.exit: ; preds = %_ZN5folly11findLastSetImEEjT_.exit.i, %bb.b, %bb.c
  %.pn22.i = phi i64 [ 1, %bb.b ], [ 1, %bb.c ], [ %i.p, %_ZN5folly11findLastSetImEEjT_.exit.i ]
  %.0.pn.i = phi i64 [ 2, %bb.b ], [ %spec.select.i, %bb.c ], [ %i.t, %_ZN5folly11findLastSetImEEjT_.exit.i ]
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !20233
  %i.ab = lshr i64 %i.aa, 8
  tail call void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPKNS_18RegexMatchCacheKeyENS_15RegexMatchCache23StringQueueReverseEntryEvvvSt17integral_constantIbLb1EEEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.ab, i64 noundef %2, i64 noundef %3, i64 noundef %.pn22.i, i64 noundef %.0.pn.i)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPKNS_18RegexMatchCacheKeyENS_15RegexMatchCache23StringQueueReverseEntryEvvvSt17integral_constantIbLb1EEEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) local_unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 !guid !22480 {
bb.a:
  %i.a = alloca i64, align 8                      ; 3 uses
  %i.b = alloca i64, align 8                      ; 3 uses
  %i.c = alloca ptr, align 8                      ; 7 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  %i.g = alloca i64, align 8                      ; 5 uses
  %i.h = alloca ptr, align 8                      ; 5 uses
  %i.i = alloca ptr, align 8                      ; 5 uses
  %i.j = alloca i8, align 1                       ; 6 uses
  %6 = alloca %"class.folly::detail::ScopeGuardImpl.459", align 8 ; 15 uses
  %7 = alloca %"struct.std::array.398", align 1   ; 5 uses
  store i64 %1, ptr %i.a, align 8, !tbaa !20214
  store i64 %2, ptr %i.b, align 8, !tbaa !20214
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #40
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !20253 ; 5 uses
  store ptr %i.l, ptr %i.c, align 8, !tbaa !20865
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #40
  %i.m = add i64 %2, -1
  %i.n = lshr i64 %i.m, 12
  %i.o = add nuw nsw i64 %i.n, 1
  %i.p = mul i64 %i.o, %3
  store i64 %i.p, ptr %i.d, align 8, !tbaa !20214
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #40
  %i.q = icmp eq i64 %2, 1                        ; 2 uses
  %i.r = shl i64 %3, 2
  %i.s = add i64 %i.r, 16
  %i.t = shl i64 %2, 6
  %.0.i = select i1 %i.q, i64 %i.s, i64 %i.t
  store i64 %.0.i, ptr %i.e, align 8, !tbaa !20214
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #40
  %i.u = add i64 %4, -1
  %i.v = lshr i64 %i.u, 12
  %i.w = add nuw nsw i64 %i.v, 1
  %i.x = mul i64 %i.w, %5                         ; 2 uses
  store i64 %i.x, ptr %i.f, align 8, !tbaa !20214
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #40
  %i.y = icmp eq i64 %4, 1                        ; 2 uses
  %i.z = shl i64 %5, 2
  %i.aa = add i64 %i.z, 16
  %i.ab = shl i64 %4, 6
  %.0.i52 = select i1 %i.y, i64 %i.aa, i64 %i.ab  ; 2 uses
  store i64 %.0.i52, ptr %i.g, align 8, !tbaa !20214
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #40
  %i.ac = sub i64 0, %.0.i52
  %i.ad = and i64 %i.ac, -8                       ; 2 uses
  %i.ae = shl i64 %i.x, 5
  %i.af = sub i64 %i.ae, %i.ad
  %i.ag = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.af) #46 ; 15 uses
  store ptr %i.ag, ptr %i.h, align 8, !tbaa !20346
  %i.ah = load ptr, ptr %0, align 8, !tbaa !20254 ; 3 uses
  %i.ai = sub i64 0, %i.ad
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ai ; 3 uses
  %.not.i = icmp eq i64 %1, 0                     ; 2 uses
  br i1 %.not.i, label %_ZN5folly3f146detail21VectorContainerPolicyIPKNS_18RegexMatchCacheKeyENS_15RegexMatchCache23StringQueueReverseEntryEvvvSt17integral_constantIbLb1EEE12beforeRehashEmmmmRPh.exit, label %_ZSt10destroy_atISt4pairIKPKN5folly18RegexMatchCacheKeyENS1_15RegexMatchCache23StringQueueReverseEntryEEEvPT_.exit.i.i.preheader

_ZSt10destroy_atISt4pairIKPKN5folly18RegexMatchCacheKeyENS1_15RegexMatchCache23StringQueueReverseEntryEEEvPT_.exit.i.i.preheader: ; preds = %bb.a
  %xtraiter = and i64 %1, 1
  %i.ak = icmp eq i64 %1, 1
  br i1 %i.ak, label %_ZSt10destroy_atISt4pairIKPKN5folly18RegexMatchCacheKeyENS1_15RegexMatchCache23StringQueueReverseEntryEEEvPT_.exit.i.i.epil.preheader, label %_ZSt10destroy_atISt4pairIKPKN5folly18RegexMatchCacheKeyENS1_15RegexMatchCache23StringQueueReverseEntryEEEvPT_.exit.i.i.preheader.new

_ZSt10destroy_atISt4pairIKPKN5folly18RegexMatchCacheKeyENS1_15RegexMatchCache23StringQueueReverseEntryEEEvPT_.exit.i.i.preheader.new: ; preds = %_ZSt10destroy_atISt4pairIKPKN5folly18RegexMatchCacheKeyENS1_15RegexMatchCache23StringQueueReverseEntryEEEvPT_.exit.i.i.preheader
  %unroll_iter = and i64 %1, -2
  br label %_ZSt10destroy_atISt4pairIKPKN5folly18RegexMatchCacheKeyENS1_15RegexMatchCache23StringQueueReverseEntryEEEvPT_.exit.i.i

_ZSt10destroy_atISt4pairIKPKN5folly18RegexMatchCacheKeyENS1_15RegexMatchCache23StringQueueReverseEntryEEEvPT_.exit.i.i: ; preds = %_ZSt10destroy_atISt4pairIKPKN5folly18RegexMatchCacheKeyENS1_15RegexMatchCache23StringQueueReverseEntryEEEvPT_.exit.i.i, %_ZSt10destroy_atISt4pairIKPKN5folly18RegexMatchCacheKeyENS1_15RegexMatchCache23StringQueueReverseEntryEEEvPT_.exit.i.i.preheader.new
  %.01418.i.i = phi ptr [ %i.ah, %_ZSt10destroy_atISt4pairIKPKN5folly18RegexMatchCacheKeyENS1_15RegexMatchCache23StringQueueReverseEntryEEEvPT_.exit.i.i.preheader.new ], [ %i.bd, %_ZSt10destroy_atISt4pairIKPKN5folly18RegexMatchCacheKeyENS1_15RegexMatchCache23StringQueueReverseEntryEEEvPT_.exit.i.i ] ; 9 uses
  %.01517.i.i = phi ptr [ %i.aj, %_ZSt10destroy_atISt4pairIKPKN5folly18RegexMatchCacheKeyENS1_15RegexMatchCache23StringQueueReverseEntryEEEvPT_.exit.i.i.preheader.new ], [ %i.be, %_ZSt10destroy_atISt4pairIKPKN5folly18RegexMatchCacheKeyENS1_15RegexMatchCache23StringQueueReverseEntryEEEvPT_.exit.i.i ] ; 8 uses
  %niter = phi i64 [ 0, %_ZSt10destroy_atISt4pairIKPKN5folly18RegexMatchCacheKeyENS1_15RegexMatchCache23StringQueueReverseEntryEEEvPT_.exit.i.i.preheader.new ], [ %niter.next.1, %_ZSt10destroy_atISt4pairIKPKN5folly18RegexMatchCacheKeyENS1_15RegexMatchCache23StringQueueReverseEntryEEEvPT_.exit.i.i ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i.i) ]
  %i.al = getelementptr inbounds nuw i8, ptr %.01418.i.i, i64 8
  %i.am = load <2 x ptr>, ptr %.01418.i.i, align 8, !tbaa !20353
  store <2 x ptr> %i.am, ptr %.01517.i.i, align 8, !tbaa !20353
  %i.an = getelementptr inbounds nuw i8, ptr %.01517.i.i, i64 16 ; 2 uses
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %i.an, align 8, !tbaa !20259
  %i.ao = getelementptr inbounds nuw i8, ptr %.01517.i.i, i64 24 ; 2 uses
  store i64 0, ptr %i.ao, align 8, !tbaa !20233
  %i.ap = getelementptr inbounds nuw i8, ptr %.01418.i.i, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !20865
  store ptr %i.aq, ptr %i.an, align 8, !tbaa !20865
  store <2 x ptr> <ptr null, ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance>, ptr %i.al, align 8, !tbaa !20353
  %i.ar = getelementptr inbounds nuw i8, ptr %.01418.i.i, i64 24 ; 2 uses
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !20214
  store i64 %i.as, ptr %i.ao, align 8, !tbaa !20214
  store i64 0, ptr %i.ar, align 8, !tbaa !20214
  %i.at = getelementptr inbounds nuw i8, ptr %.01418.i.i, i64 32
  %i.au = getelementptr inbounds nuw i8, ptr %.01517.i.i, i64 32
  %i.av = getelementptr inbounds nuw i8, ptr %.01418.i.i, i64 40
  %i.aw = load <2 x ptr>, ptr %i.at, align 8, !tbaa !20353
  store <2 x ptr> %i.aw, ptr %i.au, align 8, !tbaa !20353
  %i.ax = getelementptr inbounds nuw i8, ptr %.01517.i.i, i64 48 ; 2 uses
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %i.ax, align 8, !tbaa !20259
  %i.ay = getelementptr inbounds nuw i8, ptr %.01517.i.i, i64 56 ; 2 uses
  store i64 0, ptr %i.ay, align 8, !tbaa !20233
  %i.az = getelementptr inbounds nuw i8, ptr %.01418.i.i, i64 48
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !20865
  store ptr %i.ba, ptr %i.ax, align 8, !tbaa !20865
  store <2 x ptr> <ptr null, ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance>, ptr %i.av, align 8, !tbaa !20353
  %i.bb = getelementptr inbounds nuw i8, ptr %.01418.i.i, i64 56 ; 2 uses
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !20214
  store i64 %i.bc, ptr %i.ay, align 8, !tbaa !20214
  store i64 0, ptr %i.bb, align 8, !tbaa !20214
  %i.bd = getelementptr inbounds nuw i8, ptr %.01418.i.i, i64 64 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.01517.i.i, i64 64 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN5folly3f146detail21VectorContainerPolicyIPKNS_18RegexMatchCacheKeyENS_15RegexMatchCache23StringQueueReverseEntryEvvvSt17integral_constantIbLb1EEE12beforeRehashEmmmmRPh.exit.loopexit.unr-lcssa, label %_ZSt10destroy_atISt4pairIKPKN5folly18RegexMatchCacheKeyENS1_15RegexMatchCache23StringQueueReverseEntryEEEvPT_.exit.i.i, !llvm.loop !801

_ZN5folly3f146detail21VectorContainerPolicyIPKNS_18RegexMatchCacheKeyENS_15RegexMatchCache23StringQueueReverseEntryEvvvSt17integral_constantIbLb1EEE12beforeRehashEmmmmRPh.exit.loopexit.unr-lcssa: ; preds = %_ZSt10destroy_atISt4pairIKPKN5folly18RegexMatchCacheKeyENS1_15RegexMatchCache23StringQueueReverseEntryEEEvPT_.exit.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN5folly3f146detail21VectorContainerPolicyIPKNS_18RegexMatchCacheKeyENS_15RegexMatchCache23StringQueueReverseEntryEvvvSt17integral_constantIbLb1EEE12beforeRehashEmmmmRPh.exit, label %_ZSt10destroy_atISt4pairIKPKN5folly18RegexMatchCacheKeyENS1_15RegexMatchCache23StringQueueReverseEntryEEEvPT_.exit.i.i.epil.preheader

_ZSt10destroy_atISt4pairIKPKN5folly18RegexMatchCacheKeyENS1_15RegexMatchCache23StringQueueReverseEntryEEEvPT_.exit.i.i.epil.preheader: ; preds = %_ZN5folly3f146detail21VectorContainerPolicyIPKNS_18RegexMatchCacheKeyENS_15RegexMatchCache23StringQueueReverseEntryEvvvSt17integral_constantIbLb1EEE12beforeRehashEmmmmRPh.exit.loopexit.unr-lcssa, %_ZSt10destroy_atISt4pairIKPKN5folly18RegexMatchCacheKeyENS1_15RegexMatchCache23StringQueueReverseEntryEEEvPT_.exit.i.i.preheader
  %.01418.i.i.epil.init = phi ptr [ %i.ah, %_ZSt10destroy_atISt4pairIKPKN5folly18RegexMatchCacheKeyENS1_15RegexMatchCache23StringQueueReverseEntryEEEvPT_.exit.i.i.preheader ], [ %i.bd, %_ZN5folly3f146detail21VectorContainerPolicyIPKNS_18RegexMatchCacheKeyENS_15RegexMatchCache23StringQueueReverseEntryEvvvSt17integral_constantIbLb1EEE12beforeRehashEmmmmRPh.exit.loopexit.unr-lcssa ] ; 4 uses
  %.01517.i.i.epil.init = phi ptr [ %i.aj, %_ZSt10destroy_atISt4pairIKPKN5folly18RegexMatchCacheKeyENS1_15RegexMatchCache23StringQueueReverseEntryEEEvPT_.exit.i.i.preheader ], [ %i.be, %_ZN5folly3f146detail21VectorContainerPolicyIPKNS_18RegexMatchCacheKeyENS_15RegexMatchCache23StringQueueReverseEntryEvvvSt17integral_constantIbLb1EEE12beforeRehashEmmmmRPh.exit.loopexit.unr-lcssa ] ; 4 uses
  %lcmp.mod163 = trunc i64 %1 to i1
  tail call void @llvm.assume(i1 %lcmp.mod163)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i.i.epil.init) ]
  %i.bf = getelementptr inbounds nuw i8, ptr %.01418.i.i.epil.init, i64 8
  %i.bg = load <2 x ptr>, ptr %.01418.i.i.epil.init, align 8, !tbaa !20353
  store <2 x ptr> %i.bg, ptr %.01517.i.i.epil.init, align 8, !tbaa !20353
  %i.bh = getelementptr inbounds nuw i8, ptr %.01517.i.i.epil.init, i64 16 ; 2 uses
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %i.bh, align 8, !tbaa !20259
  %i.bi = getelementptr inbounds nuw i8, ptr %.01517.i.i.epil.init, i64 24 ; 2 uses
  store i64 0, ptr %i.bi, align 8, !tbaa !20233
end_hunk_4
begin_hunk_5_@_ZN5folly3f146detail21VectorContainerPolicyIPKNS_18RegexMatchCacheKeyENS_15RegexMatchCache23StringQueueReverseEntryEvvvSt17integral_constantIbLb1EEE17afterFailedRehashEPSt4pairIKS5_S7_Em:bb.a

_ZSt10destroy_atISt4pairIKPKN5folly18RegexMatchCacheKeyENS1_15RegexMatchCache23StringQueueReverseEntryEEEvPT_.exit.i.epil.preheader: ; preds = %_ZN5folly3f146detail21VectorContainerPolicyIPKNS_18RegexMatchCacheKeyENS_15RegexMatchCache23StringQueueReverseEntryEvvvSt17integral_constantIbLb1EEE8transferERSaISt4pairIKS5_S7_EEPSD_SG_m.exit.loopexit.unr-lcssa, %bb.b
  %.01418.i.epil.init = phi ptr [ %i.a, %bb.b ], [ %i.u, %_ZN5folly3f146detail21VectorContainerPolicyIPKNS_18RegexMatchCacheKeyENS_15RegexMatchCache23StringQueueReverseEntryEvvvSt17integral_constantIbLb1EEE8transferERSaISt4pairIKS5_S7_EEPSD_SG_m.exit.loopexit.unr-lcssa ] ; 4 uses
  %.01517.i.epil.init = phi ptr [ %1, %bb.b ], [ %i.v, %_ZN5folly3f146detail21VectorContainerPolicyIPKNS_18RegexMatchCacheKeyENS_15RegexMatchCache23StringQueueReverseEntryEvvvSt17integral_constantIbLb1EEE8transferERSaISt4pairIKS5_S7_EEPSD_SG_m.exit.loopexit.unr-lcssa ] ; 4 uses
  %lcmp.mod5 = trunc i64 %2 to i1
  tail call void @llvm.assume(i1 %lcmp.mod5)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i.epil.init) ]
  %i.w = getelementptr inbounds nuw i8, ptr %.01418.i.epil.init, i64 8
  %i.x = load <2 x ptr>, ptr %.01418.i.epil.init, align 8, !tbaa !20353
  store <2 x ptr> %i.x, ptr %.01517.i.epil.init, align 8, !tbaa !20353
  %i.y = getelementptr inbounds nuw i8, ptr %.01517.i.epil.init, i64 16 ; 2 uses
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %i.y, align 8, !tbaa !20259
  %i.z = getelementptr inbounds nuw i8, ptr %.01517.i.epil.init, i64 24 ; 2 uses
  store i64 0, ptr %i.z, align 8, !tbaa !20233
  %i.aa = getelementptr inbounds nuw i8, ptr %.01418.i.epil.init, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !20865
  store ptr %i.ab, ptr %i.y, align 8, !tbaa !20865
  store <2 x ptr> <ptr null, ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance>, ptr %i.w, align 8, !tbaa !20353
  %i.ac = getelementptr inbounds nuw i8, ptr %.01418.i.epil.init, i64 24 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !20214
  store i64 %i.ad, ptr %i.z, align 8, !tbaa !20214
  store i64 0, ptr %i.ac, align 8, !tbaa !20214
  br label %_ZN5folly3f146detail21VectorContainerPolicyIPKNS_18RegexMatchCacheKeyENS_15RegexMatchCache23StringQueueReverseEntryEvvvSt17integral_constantIbLb1EEE8transferERSaISt4pairIKS5_S7_EEPSD_SG_m.exit

_ZN5folly3f146detail21VectorContainerPolicyIPKNS_18RegexMatchCacheKeyENS_15RegexMatchCache23StringQueueReverseEntryEvvvSt17integral_constantIbLb1EEE8transferERSaISt4pairIKS5_S7_EEPSD_SG_m.exit: ; preds = %_ZSt10destroy_atISt4pairIKPKN5folly18RegexMatchCacheKeyENS1_15RegexMatchCache23StringQueueReverseEntryEEEvPT_.exit.i.epil.preheader, %_ZN5folly3f146detail21VectorContainerPolicyIPKNS_18RegexMatchCacheKeyENS_15RegexMatchCache23StringQueueReverseEntryEvvvSt17integral_constantIbLb1EEE8transferERSaISt4pairIKS5_S7_EEPSD_SG_m.exit.loopexit.unr-lcssa, %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !20254
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEvvvEEE19tryEmplaceValueImplISB_JRKSt21piecewise_construct_tSt5tupleIJRKSB_EESK_IJEEEEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkISP_ISL_SD_EEEEEbESP_ImmERKT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.473") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 1 dereferenceable(1) %7) local_unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 !guid !22498 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !20233 ; 3 uses
  %i.c = lshr i64 %i.b, 8                         ; 3 uses
  %.not = icmp eq i64 %i.c, 0
  %.pre = load ptr, ptr %1, align 8, !tbaa !20264 ; 3 uses
  br i1 %.not, label %.thread66, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = shl i64 %3, 1
  %i.e = or disjoint i64 %i.d, 1
  %i.f = trunc i64 %3 to i8
  %i.g = insertelement <16 x i8> poison, i8 %i.f, i64 0
  %i.h = shufflevector <16 x i8> %i.g, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.i = and i64 %i.b, 255                        ; 4 uses
  %i.j = shl nuw i64 1, %i.i
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.f
  %.023.i75 = phi i64 [ %i.j, %bb.b ], [ %i.ae, %bb.f ]
  %.025.i74 = phi i64 [ %2, %bb.b ], [ %i.af, %bb.f ] ; 2 uses
  %i.k = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.025.i74, i64 range(i64 0, 256) %i.i)
  %i.l = getelementptr inbounds nuw [256 x i8], ptr %.pre, i64 %i.k ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 144
  tail call void @llvm.prefetch.p0(ptr nonnull %i.n, i32 0, i32 3, i32 1)
  %i.o = load <16 x i8>, ptr %i.l, align 16       ; 2 uses
  %i.p = icmp eq <16 x i8> %i.o, %i.h
  %i.q = bitcast <16 x i1> %i.p to i16
  %i.r = and i16 %i.q, 16383
  %i.s = zext nneg i16 %i.r to i32
  %i.t = icmp ne ptr %i.l, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  %i.u = extractelement <16 x i8> %i.o, i64 15
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.d, %bb.c
  %.sroa.042.0 = phi i32 [ %i.s, %bb.c ], [ %i.x, %bb.d ] ; 4 uses
  %.not68 = icmp eq i32 %.sroa.042.0, 0
  br i1 %.not68, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.critedge.i
  %i.v = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.042.0, i1 true)
  %i.w = add nuw nsw i32 %.sroa.042.0, 16383
  %i.x = and i32 %i.w, %.sroa.042.0
  %i.y = zext nneg i32 %i.v to i64                ; 2 uses
  tail call void @llvm.assume(i1 %i.t)
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %i.y ; 2 uses
  %i.aa = load ptr, ptr %4, align 8, !tbaa !20303
  %i.ab = load ptr, ptr %i.z, align 8, !tbaa !20303
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %.loopexit, label %.critedge.i, !prof !20223, !llvm.loop !788

bb.e:                                             ; preds = %.critedge.i
  %i.ad = icmp eq i8 %i.u, 0
  br i1 %i.ad, label %.thread66, label %bb.f, !prof !20223

bb.f:                                             ; preds = %bb.e
  %i.ae = add i64 %.023.i75, -1                   ; 2 uses
  %i.af = add i64 %i.e, %.025.i74
  %.not.i = icmp eq i64 %i.ae, 0
  br i1 %.not.i, label %.thread66, label %bb.c, !llvm.loop !789

.thread66:                                        ; preds = %bb.f, %bb.e, %bb.a
  %.pre-phi83 = phi i64 [ %i.b, %bb.a ], [ %i.i, %bb.e ], [ %i.i, %bb.f ] ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.pre, i64 14
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !20220
  %i.ai = and i8 %i.ah, 15
  %i.aj = zext nneg i8 %i.ai to i64               ; 2 uses
  %i.ak = shl i64 %i.aj, %.pre-phi83              ; 2 uses
  %.not.i32 = icmp ult i64 %i.c, %i.ak
  br i1 %.not.i32, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEvvvEEE16reserveForInsertEm.exit, label %bb.g

bb.g:                                             ; preds = %.thread66
  %i.al = shl nuw i64 1, %.pre-phi83
  tail call void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEvvvEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.c, i64 noundef %i.al, i64 noundef %i.aj, i64 noundef %i.ak)
  %.pre79 = load ptr, ptr %1, align 8, !tbaa !20264
  %.pre80 = load i64, ptr %i.a, align 8, !tbaa !20233
  %.pre81 = and i64 %.pre80, 255
  br label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEvvvEEE16reserveForInsertEm.exit

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEvvvEEE16reserveForInsertEm.exit: ; preds = %.thread66, %bb.g
  %.pre-phi = phi i64 [ %.pre-phi83, %.thread66 ], [ %.pre81, %bb.g ] ; 2 uses
  %i.am = phi ptr [ %.pre, %.thread66 ], [ %.pre79, %bb.g ] ; 3 uses
  %i.an = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %2, i64 range(i64 0, 256) %.pre-phi) ; 2 uses
  %i.ao = getelementptr inbounds nuw [256 x i8], ptr %i.am, i64 %i.an ; 2 uses
  %i.ap = load <16 x i8>, ptr %i.ao, align 16, !tbaa !20220
  %i.aq = icmp slt <16 x i8> %i.ap, zeroinitializer
  %i.ar = bitcast <16 x i1> %i.aq to i16
  %i.as = and i16 %i.ar, 16383                    ; 2 uses
  %.not69 = icmp eq i16 %i.as, 16383
  br i1 %.not69, label %bb.h, label %bb.l

bb.h:                                             ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEvvvEEE16reserveForInsertEm.exit
  %i.at = shl i64 %3, 1
  %i.au = or disjoint i64 %i.at, 1
  br label %bb.i

bb.i:                                             ; preds = %_ZN5folly3f146detail8F14ChunkISt4pairIKPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEEE25incrOutboundOverflowCountEv.exit, %bb.h
  %i.av = phi i64 [ %i.an, %bb.h ], [ %i.bb, %_ZN5folly3f146detail8F14ChunkISt4pairIKPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEEE25incrOutboundOverflowCountEv.exit ]
  %.030 = phi i64 [ %2, %bb.h ], [ %i.ba, %_ZN5folly3f146detail8F14ChunkISt4pairIKPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEEE25incrOutboundOverflowCountEv.exit ]
  %i.aw = getelementptr inbounds nuw [256 x i8], ptr %i.am, i64 %i.av
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 15 ; 2 uses
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !20816 ; 2 uses
  %.not.i33 = icmp eq i8 %i.ay, -2
  br i1 %.not.i33, label %_ZN5folly3f146detail8F14ChunkISt4pairIKPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEEE25incrOutboundOverflowCountEv.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.az = add i8 %i.ay, 1
  store i8 %i.az, ptr %i.ax, align 1, !tbaa !20816
  br label %_ZN5folly3f146detail8F14ChunkISt4pairIKPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEEE25incrOutboundOverflowCountEv.exit

_ZN5folly3f146detail8F14ChunkISt4pairIKPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEEE25incrOutboundOverflowCountEv.exit: ; preds = %bb.i, %bb.j
  %i.ba = add i64 %i.au, %.030                    ; 2 uses
  %i.bb = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %i.ba, i64 range(i64 0, 256) %.pre-phi) ; 2 uses
  %i.bc = getelementptr inbounds nuw [256 x i8], ptr %i.am, i64 %i.bb ; 3 uses
  %i.bd = load <16 x i8>, ptr %i.bc, align 16     ; 2 uses
  %i.be = icmp slt <16 x i8> %i.bd, zeroinitializer
  %i.bf = bitcast <16 x i1> %i.be to i16
  %i.bg = and i16 %i.bf, 16383                    ; 2 uses
  %.not70 = icmp eq i16 %i.bg, 16383
  br i1 %.not70, label %bb.i, label %bb.k, !llvm.loop !796

bb.k:                                             ; preds = %_ZN5folly3f146detail8F14ChunkISt4pairIKPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEEE25incrOutboundOverflowCountEv.exit
  %i.bh = extractelement <16 x i8> %i.bd, i64 14
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bc, i64 14
  %i.bj = add i8 %i.bh, 16
  store i8 %i.bj, ptr %i.bi, align 2, !tbaa !20266
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEvvvEEE16reserveForInsertEm.exit
  %.sroa.036.0.in.in = phi i16 [ %i.as, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEvvvEEE16reserveForInsertEm.exit ], [ %i.bg, %bb.k ]
  %.1 = phi ptr [ %i.ao, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEvvvEEE16reserveForInsertEm.exit ], [ %i.bc, %bb.k ] ; 3 uses
  %.sroa.036.0.in = xor i16 %.sroa.036.0.in.in, 16383
  %i.bk = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.036.0.in, i1 true)
  %i.bl = zext nneg i16 %i.bk to i64              ; 4 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.1, i64 %i.bl ; 2 uses
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !20220
  %i.bo = icmp eq i8 %i.bn, 0
  br i1 %i.bo, label %_ZN5folly3f146detail8F14ChunkISt4pairIKPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEEE6setTagEmm.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkISt4pairIKPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEEE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.15) #48
  unreachable

_ZN5folly3f146detail8F14ChunkISt4pairIKPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEEE6setTagEmm.exit: ; preds = %bb.l
  %i.bp = trunc i64 %3 to i8
  store i8 %i.bp, ptr %i.bm, align 1, !tbaa !20220
  %i.bq = getelementptr inbounds nuw i8, ptr %.1, i64 16
  %i.br = getelementptr inbounds nuw [16 x i8], ptr %i.bq, i64 %i.bl ; 4 uses
  %i.bs = icmp ne ptr %.1, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.bs)
  %i.bt = load i64, ptr %6, align 8, !tbaa !20871
  %i.bu = inttoptr i64 %i.bt to ptr
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !20303
  store ptr %i.bv, ptr %i.br, align 8, !tbaa !20819
  %i.bw = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  store i64 0, ptr %i.bw, align 8, !tbaa !20219
  %i.bx = ptrtoint ptr %i.br to i64
  %i.by = or i64 %i.bx, %i.bl                     ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !20305
  %i.cb = icmp ult i64 %i.ca, %i.by
  br i1 %i.cb, label %bb.n, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJRKSB_EESK_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairISL_SD_EEEEESR_ImmEDpOT_.exit

bb.n:                                             ; preds = %_ZN5folly3f146detail8F14ChunkISt4pairIKPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEEE6setTagEmm.exit
  store i64 %i.by, ptr %i.bz, align 8, !tbaa !20214
  br label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJRKSB_EESK_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairISL_SD_EEEEESR_ImmEDpOT_.exit

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJRKSB_EESK_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairISL_SD_EEEEESR_ImmEDpOT_.exit: ; preds = %_ZN5folly3f146detail8F14ChunkISt4pairIKPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEEE6setTagEmm.exit, %bb.n
  %i.cc = load i64, ptr %i.a, align 8, !tbaa !20233
  %i.cd = add i64 %i.cc, 256
  store i64 %i.cd, ptr %i.a, align 8, !tbaa !20233
  br label %.loopexit

.loopexit:                                        ; preds = %bb.d, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJRKSB_EESK_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairISL_SD_EEEEESR_ImmEDpOT_.exit
  %.lcssa92.sink = phi ptr [ %i.br, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJRKSB_EESK_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairISL_SD_EEEEESR_ImmEDpOT_.exit ], [ %i.z, %bb.d ]
  %.lcssa93.sink = phi i64 [ %i.bl, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJRKSB_EESK_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairISL_SD_EEEEESR_ImmEDpOT_.exit ], [ %i.y, %bb.d ]
  %.sink = phi i8 [ 1, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJRKSB_EESK_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairISL_SD_EEEEESR_ImmEDpOT_.exit ], [ 0, %bb.d ]
  store ptr %.lcssa92.sink, ptr %0, align 8, !tbaa !20873
  %.sroa.541.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.lcssa93.sink, ptr %.sroa.541.0..sroa_idx, align 8, !tbaa !20214
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.ce, align 8, !tbaa !22501
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEvvvEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #34 comdat align 2 personality ptr @__gxx_personality_v0 !guid !22502 {
bb.a:
  %i.a = add i64 %1, 1
  %i.b = lshr i64 %4, 2
  %i.c = add i64 %i.b, %4
  %i.d = lshr i64 %4, 3
  %i.e = add i64 %i.c, %i.d
  %i.f = lshr i64 %4, 5
  %i.g = add i64 %i.e, %i.f
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.a, i64 %i.g) ; 4 uses
  %i.h = icmp ult i64 %.sroa.speculated, 15
  br i1 %i.h, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.i = icmp samesign ult i64 %.sroa.speculated, 3
  br i1 %i.i, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEvvvEEE25computeChunkCountAndScaleEmbb.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.inv.i = icmp samesign ugt i64 %.sroa.speculated, 6
  %spec.select.i = select i1 %.inv.i, i64 14, i64 6
  br label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEvvvEEE25computeChunkCountAndScaleEmbb.exit

bb.d:                                             ; preds = %bb.a
  %i.j = add i64 %.sroa.speculated, -1
  %i.k = udiv i64 %i.j, 12
  %i.l = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.k, i1 true)
  %i.m = sub nuw nsw i64 64, %i.l                 ; 2 uses
  %i.n = shl i64 12, %i.m
  %i.o = icmp ugt i64 %i.n, 72057594037927935
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN5folly6detail16throw_exception_ISt9bad_allocJEEEvDpT0_() #20
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.p = shl nuw nsw i64 1, %i.m
  br label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEvvvEEE25computeChunkCountAndScaleEmbb.exit

_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEvvvEEE25computeChunkCountAndScaleEmbb.exit: ; preds = %bb.b, %bb.c, %bb.f
  %.pn21.i = phi i64 [ %i.p, %bb.f ], [ 1, %bb.c ], [ 1, %bb.b ]
  %.0.pn.i = phi i64 [ 12, %bb.f ], [ %spec.select.i, %bb.c ], [ 2, %bb.b ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !20233
  %i.s = lshr i64 %i.r, 8
  tail call void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEvvvEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.s, i64 noundef %2, i64 noundef %3, i64 noundef %.pn21.i, i64 noundef %.0.pn.i)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEvvvEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) local_unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 !guid !22512 {
bb.a:
  %i.a = alloca i64, align 8                      ; 3 uses
  %i.b = alloca i64, align 8                      ; 3 uses
  %i.c = alloca ptr, align 8                      ; 7 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  %i.g = alloca i64, align 8                      ; 5 uses
  %i.h = alloca ptr, align 8                      ; 5 uses
  %i.i = alloca i8, align 1                       ; 5 uses
  %i.j = alloca i8, align 1                       ; 6 uses
  %6 = alloca %"class.folly::detail::ScopeGuardImpl.479", align 8 ; 16 uses
  %7 = alloca %"struct.std::array.398", align 1   ; 5 uses
  store i64 %1, ptr %i.a, align 8, !tbaa !20214
  store i64 %2, ptr %i.b, align 8, !tbaa !20214
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #40
  %i.k = load ptr, ptr %0, align 8, !tbaa !20264  ; 5 uses
  store ptr %i.k, ptr %i.c, align 8, !tbaa !20874
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #40
  %i.l = mul i64 %3, %2
  store i64 %i.l, ptr %i.d, align 8, !tbaa !20214
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #40
  %i.m = icmp eq i64 %2, 1                        ; 2 uses
  %i.n = shl i64 %3, 4
  %i.o = add i64 %i.n, 16
  %i.p = shl i64 %2, 8
  %.0.i = select i1 %i.m, i64 %i.o, i64 %i.p
  store i64 %.0.i, ptr %i.e, align 8, !tbaa !20214
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #40
  %i.q = mul i64 %5, %4
  store i64 %i.q, ptr %i.f, align 8, !tbaa !20214
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #40
  %i.r = icmp eq i64 %4, 1                        ; 2 uses
  %i.s = shl i64 %5, 4
  %i.t = add i64 %i.s, 16
  %i.u = shl i64 %4, 8
  %.0.i71 = select i1 %i.r, i64 %i.t, i64 %i.u    ; 2 uses
  store i64 %.0.i71, ptr %i.g, align 8, !tbaa !20214
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #40
  %i.v = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %.0.i71) #46 ; 16 uses
  store ptr %i.v, ptr %i.h, align 8, !tbaa !20346
  store i8 0, ptr %i.i, align 1, !tbaa !20711
  %.not.i = icmp eq i64 %4, 0                     ; 2 uses
  br i1 %.not.i, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEvvvEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %xtraiter = and i64 %4, 7                       ; 3 uses
  %i.w = icmp ult i64 %4, 8
  br i1 %i.w, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %4, -8
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.08.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.am, %.lr.ph.i ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.7, %.lr.ph.i ]
  %i.x = getelementptr inbounds nuw [256 x i8], ptr %i.v, i64 %.08.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.x, i8 0, i64 16, i1 false)
  %i.y = getelementptr inbounds nuw [256 x i8], ptr %i.v, i64 %.08.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 256
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.z, i8 0, i64 16, i1 false)
  %i.aa = getelementptr inbounds nuw [256 x i8], ptr %i.v, i64 %.08.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 512
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.ab, i8 0, i64 16, i1 false)
  %i.ac = getelementptr inbounds nuw [256 x i8], ptr %i.v, i64 %.08.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 768
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.ad, i8 0, i64 16, i1 false)
  %i.ae = getelementptr inbounds nuw [256 x i8], ptr %i.v, i64 %.08.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 1024
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.af, i8 0, i64 16, i1 false)
  %i.ag = getelementptr inbounds nuw [256 x i8], ptr %i.v, i64 %.08.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 1280
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.ah, i8 0, i64 16, i1 false)
  %i.ai = getelementptr inbounds nuw [256 x i8], ptr %i.v, i64 %.08.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 1536
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.aj, i8 0, i64 16, i1 false)
  %i.ak = getelementptr inbounds nuw [256 x i8], ptr %i.v, i64 %.08.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 1792
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.al, i8 0, i64 16, i1 false)
  %i.am = add nuw i64 %.08.i, 8                   ; 2 uses
  %niter.next.7 = add nuw i64 %niter, 8           ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEvvvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !22503

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEvvvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEvvvEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEvvvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.08.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.am, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEvvvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa ]
  %lcmp.mod179 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod179)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.08.i.epil = phi i64 [ %i.ao, %.lr.ph.i.epil ], [ %.08.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.an = getelementptr inbounds nuw [256 x i8], ptr %i.v, i64 %.08.i.epil
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.an, i8 0, i64 16, i1 false)
  %i.ao = add nuw i64 %.08.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEvvvEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.epil, !llvm.loop !22504

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEvvvEEE16initializeChunksEPhmm.exit: ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEvvvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, %.lr.ph.i.epil, %bb.a
  %i.ap = getelementptr inbounds nuw i8, ptr %i.v, i64 14
  %i.aq = trunc i64 %5 to i8
  store i8 %i.aq, ptr %i.ap, align 2, !tbaa !20266
  store ptr %i.v, ptr %0, align 8, !tbaa !20264
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.as = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %4, i1 true)
  %i.at = load i64, ptr %i.ar, align 8, !tbaa !20233
  %i.au = and i64 %i.at, -256
  %i.av = select i1 %.not.i, i64 4294967295, i64 %i.as
  %i.aw = or i64 %i.au, %i.av
  store i64 %i.aw, ptr %i.ar, align 8, !tbaa !20233
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #40
  store i8 0, ptr %i.j, align 1, !tbaa !20711
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #40
  store i8 0, ptr %6, align 8, !tbaa !20828, !alias.scope !22513
  %i.ax = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.j, ptr %i.ax, align 8, !tbaa !20832
  %.sroa.496.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.d, ptr %.sroa.496.0..sroa_idx, align 8, !tbaa !20306
  %.sroa.597.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %i.c, ptr %.sroa.597.0..sroa_idx, align 8, !tbaa !22514
  %.sroa.698.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 32
  store ptr %i.e, ptr %.sroa.698.0..sroa_idx, align 8, !tbaa !20306
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 40
  store ptr %i.h, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !20840
  %.sroa.899.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 48
  store ptr %i.g, ptr %.sroa.899.0..sroa_idx, align 8, !tbaa !20306
end_hunk_5
begin_hunk_6_@_ZN5folly28RegexMatchCacheDynamicBitset8reserve_Em:bb.a
  %i.aa = or disjoint i64 %i.z, -9223372036854775808
  store i64 %i.aa, ptr %0, align 8, !tbaa !20219
  br label %bb.g

bb.d:                                             ; preds = %_ZN5folly10nextPowTwoImEET_S1_.exit
  %i.ab = shl i64 %i.g, 1
  %i.ac = inttoptr i64 %i.ab to ptr               ; 3 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !20217 ; 2 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZdaPv(ptr noundef nonnull %i.ad) #41
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  store ptr %i.f, ptr %i.ac, align 8, !tbaa !20306
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store i64 %.sroa.speculated, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !20214
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.c
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %i.f, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 %.sroa.speculated, 1
  ret { ptr, i64 } %.fca.1.insert
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #21

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb0EEEEE19tryEmplaceValueImplISB_JRKSB_EEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEbESJ_ImmERKT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.456") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) local_unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 !guid !22527 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !20233 ; 4 uses
  %i.c = lshr i64 %i.b, 8                         ; 3 uses
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %..thread64_crit_edge, label %bb.b

..thread64_crit_edge:                             ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !20259
  %.pre83 = shl nuw i64 1, %i.b
  br label %.thread64

bb.b:                                             ; preds = %bb.a
  %i.d = shl i64 %3, 1
  %i.e = or disjoint i64 %i.d, 1
  %i.f = trunc i64 %3 to i8
  %i.g = insertelement <16 x i8> poison, i8 %i.f, i64 0
  %i.h = shufflevector <16 x i8> %i.g, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.i = and i64 %i.b, 255                        ; 4 uses
  %i.j = shl nuw i64 1, %i.i                      ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !20259 ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.f
  %.022.i75 = phi i64 [ %i.j, %bb.b ], [ %i.aj, %bb.f ]
  %.024.i74 = phi i64 [ %2, %bb.b ], [ %i.ak, %bb.f ] ; 2 uses
  %i.m = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.024.i74, i64 range(i64 0, 256) %i.i)
  %i.n = getelementptr inbounds nuw [64 x i8], ptr %i.l, i64 %i.m ; 3 uses
  %i.o = load <16 x i8>, ptr %i.n, align 16       ; 2 uses
  %i.p = icmp eq <16 x i8> %i.o, %i.h
  %i.q = bitcast <16 x i1> %i.p to i16
  %i.r = and i16 %i.q, 4095
  %i.s = zext nneg i16 %i.r to i32
  %i.t = icmp ne ptr %i.n, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  %i.v = extractelement <16 x i8> %i.o, i64 15
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.d, %bb.c
  %.sroa.040.0 = phi i32 [ %i.s, %bb.c ], [ %i.y, %bb.d ] ; 4 uses
  %.not66 = icmp eq i32 %.sroa.040.0, 0
  br i1 %.not66, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.critedge.i
  %i.w = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.040.0, i1 true)
  %i.x = add nuw nsw i32 %.sroa.040.0, 4095
  %i.y = and i32 %i.x, %.sroa.040.0
  %i.z = zext nneg i32 %i.w to i64                ; 3 uses
  tail call void @llvm.assume(i1 %i.t)
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.z
  %i.ab = load ptr, ptr %1, align 8, !tbaa !20809
  %i.ac = load i32, ptr %i.aa, align 4, !tbaa !20326
  %i.ad = zext i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.ad
  %i.af = load ptr, ptr %4, align 8, !tbaa !20303
  %i.ag = load ptr, ptr %i.ae, align 8, !tbaa !20303
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %bb.g, label %.critedge.i, !prof !20223, !llvm.loop !786

bb.e:                                             ; preds = %.critedge.i
  %i.ai = icmp eq i8 %i.v, 0
  br i1 %i.ai, label %.thread64, label %bb.f, !prof !20223

bb.f:                                             ; preds = %bb.e
  %i.aj = add i64 %.022.i75, -1                   ; 2 uses
  %i.ak = add i64 %i.e, %.024.i74
  %.not.i = icmp eq i64 %i.aj, 0
  br i1 %.not.i, label %.thread64, label %bb.c, !llvm.loop !787

bb.g:                                             ; preds = %bb.d
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.z
  br label %bb.o

.thread64:                                        ; preds = %bb.f, %bb.e, %..thread64_crit_edge
  %.pre-phi84 = phi i64 [ %.pre83, %..thread64_crit_edge ], [ %i.j, %bb.e ], [ %i.j, %bb.f ] ; 2 uses
  %.pre-phi = phi i64 [ %i.b, %..thread64_crit_edge ], [ %i.i, %bb.e ], [ %i.i, %bb.f ]
  %i.am = phi ptr [ %.pre, %..thread64_crit_edge ], [ %i.l, %bb.e ], [ %i.l, %bb.f ] ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 12
  %.0.copyload.i.i = load i16, ptr %i.an, align 1
  %i.ao = zext i16 %.0.copyload.i.i to i64        ; 2 uses
  %i.ap = add i64 %.pre-phi84, -1
  %i.aq = lshr i64 %i.ap, 12
  %i.ar = add nuw nsw i64 %i.aq, 1
  %i.as = mul i64 %i.ar, %i.ao                    ; 2 uses
  %.not.i30 = icmp ult i64 %i.c, %i.as
  br i1 %.not.i30, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb0EEEEE16reserveForInsertEm.exit, label %bb.h

bb.h:                                             ; preds = %.thread64
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb0EEEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.c, i64 noundef %.pre-phi84, i64 noundef %i.ao, i64 noundef %i.as)
  %.pre80 = load ptr, ptr %i.at, align 8, !tbaa !20259
  %.pre81 = load i64, ptr %i.a, align 8, !tbaa !20233
  %.pre85 = and i64 %.pre81, 255
  br label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb0EEEEE16reserveForInsertEm.exit

_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb0EEEEE16reserveForInsertEm.exit: ; preds = %.thread64, %bb.h
  %.pre-phi86 = phi i64 [ %.pre-phi, %.thread64 ], [ %.pre85, %bb.h ] ; 2 uses
  %i.au = phi ptr [ %i.am, %.thread64 ], [ %.pre80, %bb.h ] ; 3 uses
  %i.av = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %2, i64 range(i64 0, 256) %.pre-phi86) ; 2 uses
  %i.aw = getelementptr inbounds nuw [64 x i8], ptr %i.au, i64 %i.av ; 2 uses
  %i.ax = load <16 x i8>, ptr %i.aw, align 16, !tbaa !20220
  %i.ay = icmp slt <16 x i8> %i.ax, zeroinitializer
  %i.az = bitcast <16 x i1> %i.ay to i16
  %i.ba = and i16 %i.az, 4095                     ; 2 uses
  %.not67 = icmp eq i16 %i.ba, 4095
  br i1 %.not67, label %bb.i, label %bb.m

bb.i:                                             ; preds = %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb0EEEEE16reserveForInsertEm.exit
  %i.bb = shl i64 %3, 1
  %i.bc = or disjoint i64 %i.bb, 1
  br label %bb.j

bb.j:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit, %bb.i
  %i.bd = phi i64 [ %i.av, %bb.i ], [ %i.bj, %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit ]
  %.028 = phi i64 [ %2, %bb.i ], [ %i.bi, %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit ]
  %i.be = getelementptr inbounds nuw [64 x i8], ptr %i.au, i64 %i.bd
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 15 ; 2 uses
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !20823 ; 2 uses
  %.not.i31 = icmp eq i8 %i.bg, -2
  br i1 %.not.i31, label %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bh = add i8 %i.bg, 1
  store i8 %i.bh, ptr %i.bf, align 1, !tbaa !20823
  br label %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit

_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit: ; preds = %bb.j, %bb.k
  %i.bi = add i64 %i.bc, %.028                    ; 2 uses
  %i.bj = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %i.bi, i64 range(i64 0, 256) %.pre-phi86) ; 2 uses
  %i.bk = getelementptr inbounds nuw [64 x i8], ptr %i.au, i64 %i.bj ; 3 uses
  %i.bl = load <16 x i8>, ptr %i.bk, align 16     ; 2 uses
  %i.bm = icmp slt <16 x i8> %i.bl, zeroinitializer
  %i.bn = bitcast <16 x i1> %i.bm to i16
  %i.bo = and i16 %i.bn, 4095                     ; 2 uses
  %.not68 = icmp eq i16 %i.bo, 4095
  br i1 %.not68, label %bb.j, label %bb.l, !llvm.loop !797

bb.l:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit
  %i.bp = extractelement <16 x i8> %i.bl, i64 14
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bk, i64 14
  %i.br = add i8 %i.bp, 16
  store i8 %i.br, ptr %i.bq, align 2, !tbaa !20824
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb0EEEEE16reserveForInsertEm.exit
  %.sroa.034.0.in.in = phi i16 [ %i.ba, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb0EEEEE16reserveForInsertEm.exit ], [ %i.bo, %bb.l ]
  %.1 = phi ptr [ %i.aw, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb0EEEEE16reserveForInsertEm.exit ], [ %i.bk, %bb.l ] ; 3 uses
  %.sroa.034.0.in = xor i16 %.sroa.034.0.in.in, 4095
  %i.bs = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.034.0.in, i1 true)
  %i.bt = zext nneg i16 %i.bs to i64              ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.1, i64 %i.bt ; 2 uses
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !20220
  %i.bw = icmp eq i8 %i.bv, 0
  br i1 %i.bw, label %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIjE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.15) #48
  unreachable

_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit:  ; preds = %bb.m
  %i.bx = trunc i64 %3 to i8
  store i8 %i.bx, ptr %i.bu, align 1, !tbaa !20220
  %i.by = getelementptr inbounds nuw i8, ptr %.1, i64 16
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %i.bt ; 2 uses
  %i.ca = icmp ne ptr %.1, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.ca)
  %i.cb = load i64, ptr %i.a, align 8, !tbaa !20233 ; 2 uses
  %i.cc = lshr i64 %i.cb, 8                       ; 2 uses
  %i.cd = trunc i64 %i.cc to i32
  store i32 %i.cd, ptr %i.bz, align 4, !tbaa !20326
  %i.ce = load ptr, ptr %1, align 8, !tbaa !20809, !nonnull !1767, !noundef !1767
  %i.cf = and i64 %i.cc, 4294967295
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %i.cf
  %i.ch = load ptr, ptr %5, align 8, !tbaa !20303
  store ptr %i.ch, ptr %i.cg, align 8, !tbaa !20303
  %i.ci = add i64 %i.cb, 256
  store i64 %i.ci, ptr %i.a, align 8, !tbaa !20233
  br label %bb.o

bb.o:                                             ; preds = %bb.g, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit
  %.sink99 = phi ptr [ %i.al, %bb.g ], [ %i.bz, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ]
  %.lcssa97.sink = phi i64 [ %i.z, %bb.g ], [ %i.bt, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ]
  %.sink = phi i8 [ 0, %bb.g ], [ 1, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ]
  store ptr %.sink99, ptr %0, align 8, !tbaa !20414
  %.sroa.539.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.lcssa97.sink, ptr %.sroa.539.0..sroa_idx, align 8, !tbaa !20214
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.cj, align 8, !tbaa !20864
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb0EEEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #34 comdat align 2 personality ptr @__gxx_personality_v0 !guid !22528 {
bb.a:
  %i.a = add i64 %1, 1
  %i.b = lshr i64 %4, 2
  %i.c = add i64 %i.b, %4
  %i.d = lshr i64 %4, 3
  %i.e = add i64 %i.c, %i.d
  %i.f = lshr i64 %4, 5
  %i.g = add i64 %i.e, %i.f
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.a, i64 %i.g) ; 4 uses
  %i.h = icmp ult i64 %.sroa.speculated, 13
  br i1 %i.h, label %bb.b, label %_ZN5folly11findLastSetImEEjT_.exit.i

bb.b:                                             ; preds = %bb.a
  %i.i = icmp samesign ult i64 %.sroa.speculated, 3
  br i1 %i.i, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb0EEEEE25computeChunkCountAndScaleEmbb.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.inv.i = icmp samesign ugt i64 %.sroa.speculated, 6
  %spec.select.i = select i1 %.inv.i, i64 12, i64 6
  br label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb0EEEEE25computeChunkCountAndScaleEmbb.exit

_ZN5folly11findLastSetImEEjT_.exit.i:             ; preds = %bb.a
  %i.j = add i64 %.sroa.speculated, -1            ; 2 uses
  %i.k = udiv i64 %i.j, 10
  %i.l = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.k, i1 true)
  %i.m = trunc nuw nsw i64 %i.l to i32
  %i.n = sub nuw nsw i32 64, %i.m                 ; 2 uses
  %i.o = zext nneg i32 %i.n to i64
  %i.p = shl nuw nsw i64 1, %i.o                  ; 2 uses
  %i.q = icmp ugt i64 %i.j, 20479
  %i.r = shl i32 10, %i.n
  %i.s = zext i32 %i.r to i64
  %i.t = select i1 %i.q, i64 40960, i64 %i.s      ; 2 uses
  %i.u = add nsw i64 %i.p, -1
  %i.v = lshr i64 %i.u, 12
  %i.w = add nuw nsw i64 %i.v, 1
  %i.x = mul i64 %i.w, %i.t
  %i.y = icmp ugt i64 %i.x, 4294967295
  br i1 %i.y, label %bb.d, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb0EEEEE25computeChunkCountAndScaleEmbb.exit

bb.d:                                             ; preds = %_ZN5folly11findLastSetImEEjT_.exit.i
  tail call void @_ZN5folly6detail16throw_exception_ISt9bad_allocJEEEvDpT0_() #20
  unreachable

_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb0EEEEE25computeChunkCountAndScaleEmbb.exit: ; preds = %_ZN5folly11findLastSetImEEjT_.exit.i, %bb.b, %bb.c
  %.pn22.i = phi i64 [ 1, %bb.b ], [ 1, %bb.c ], [ %i.p, %_ZN5folly11findLastSetImEEjT_.exit.i ]
  %.0.pn.i = phi i64 [ 2, %bb.b ], [ %spec.select.i, %bb.c ], [ %i.t, %_ZN5folly11findLastSetImEEjT_.exit.i ]
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !20233
  %i.ab = lshr i64 %i.aa, 8
  tail call void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb0EEEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.ab, i64 noundef %2, i64 noundef %3, i64 noundef %.pn22.i, i64 noundef %.0.pn.i)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb0EEEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) local_unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 !guid !22537 {
bb.a:
  %i.a = alloca i64, align 8                      ; 3 uses
  %i.b = alloca i64, align 8                      ; 3 uses
  %i.c = alloca ptr, align 8                      ; 7 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  %i.g = alloca i64, align 8                      ; 5 uses
  %i.h = alloca ptr, align 8                      ; 5 uses
  %i.i = alloca ptr, align 8                      ; 5 uses
  %i.j = alloca i8, align 1                       ; 6 uses
  %6 = alloca %"class.folly::detail::ScopeGuardImpl.489", align 8 ; 15 uses
  %7 = alloca %"struct.std::array.398", align 1   ; 5 uses
  store i64 %1, ptr %i.a, align 8, !tbaa !20214
  store i64 %2, ptr %i.b, align 8, !tbaa !20214
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #40
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !20259 ; 5 uses
  store ptr %i.l, ptr %i.c, align 8, !tbaa !20865
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #40
  %i.m = add i64 %2, -1
  %i.n = lshr i64 %i.m, 12
  %i.o = add nuw nsw i64 %i.n, 1
  %i.p = mul i64 %i.o, %3
  store i64 %i.p, ptr %i.d, align 8, !tbaa !20214
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #40
  %i.q = icmp eq i64 %2, 1                        ; 2 uses
  %i.r = shl i64 %3, 2
  %i.s = add i64 %i.r, 16
  %i.t = shl i64 %2, 6
  %.0.i = select i1 %i.q, i64 %i.s, i64 %i.t
  store i64 %.0.i, ptr %i.e, align 8, !tbaa !20214
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #40
  %i.u = add i64 %4, -1
  %i.v = lshr i64 %i.u, 12
  %i.w = add nuw nsw i64 %i.v, 1
  %i.x = mul i64 %i.w, %5                         ; 2 uses
  store i64 %i.x, ptr %i.f, align 8, !tbaa !20214
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #40
  %i.y = icmp eq i64 %4, 1                        ; 2 uses
  %i.z = shl i64 %5, 2
  %i.aa = add i64 %i.z, 16
  %i.ab = shl i64 %4, 6
  %.0.i52 = select i1 %i.y, i64 %i.aa, i64 %i.ab  ; 2 uses
  store i64 %.0.i52, ptr %i.g, align 8, !tbaa !20214
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #40
  %i.ac = sub i64 0, %.0.i52
  %i.ad = and i64 %i.ac, -8                       ; 2 uses
  %i.ae = shl i64 %i.x, 3
  %i.af = sub i64 %i.ae, %i.ad
  %i.ag = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.af) #46 ; 15 uses
  store ptr %i.ag, ptr %i.h, align 8, !tbaa !20346
  %i.ah = load ptr, ptr %0, align 8, !tbaa !20809 ; 2 uses
  %i.ai = sub i64 0, %i.ad
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ai ; 2 uses
  %.not.i = icmp eq i64 %1, 0                     ; 2 uses
  br i1 %.not.i, label %_ZN5folly3f146detail21VectorContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb0EEE12beforeRehashEmmmmRPh.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ak = shl i64 %1, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aj, ptr align 1 %i.ah, i64 %i.ak, i1 false)
  br label %_ZN5folly3f146detail21VectorContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb0EEE12beforeRehashEmmmmRPh.exit

_ZN5folly3f146detail21VectorContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb0EEE12beforeRehashEmmmmRPh.exit: ; preds = %bb.a, %bb.b
  store ptr %i.aj, ptr %0, align 8, !tbaa !20809
  store ptr %i.ah, ptr %i.i, align 8, !tbaa !20871
  %.not.i53 = icmp eq i64 %4, 0                   ; 2 uses
  br i1 %.not.i53, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb0EEEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZN5folly3f146detail21VectorContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb0EEE12beforeRehashEmmmmRPh.exit
  %xtraiter = and i64 %4, 7                       ; 3 uses
  %i.al = icmp ult i64 %4, 8
  br i1 %i.al, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %4, -8
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.08.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.bb, %.lr.ph.i ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.7, %.lr.ph.i ]
  %i.am = getelementptr inbounds nuw [64 x i8], ptr %i.ag, i64 %.08.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.am, i8 0, i64 16, i1 false)
  %i.an = getelementptr inbounds nuw [64 x i8], ptr %i.ag, i64 %.08.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.ao, i8 0, i64 16, i1 false)
  %i.ap = getelementptr inbounds nuw [64 x i8], ptr %i.ag, i64 %.08.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 128
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.aq, i8 0, i64 16, i1 false)
  %i.ar = getelementptr inbounds nuw [64 x i8], ptr %i.ag, i64 %.08.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 192
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.as, i8 0, i64 16, i1 false)
  %i.at = getelementptr inbounds nuw [64 x i8], ptr %i.ag, i64 %.08.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 256
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.au, i8 0, i64 16, i1 false)
  %i.av = getelementptr inbounds nuw [64 x i8], ptr %i.ag, i64 %.08.i
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 320
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.aw, i8 0, i64 16, i1 false)
  %i.ax = getelementptr inbounds nuw [64 x i8], ptr %i.ag, i64 %.08.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 384
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.ay, i8 0, i64 16, i1 false)
  %i.az = getelementptr inbounds nuw [64 x i8], ptr %i.ag, i64 %.08.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 448
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.ba, i8 0, i64 16, i1 false)
  %i.bb = add nuw i64 %.08.i, 8                   ; 2 uses
  %niter.next.7 = add nuw i64 %niter, 8           ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb0EEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !22529

_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb0EEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb0EEEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb0EEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.08.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.bb, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb0EEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa ]
  %lcmp.mod163 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod163)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.08.i.epil = phi i64 [ %i.bd, %.lr.ph.i.epil ], [ %.08.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.bc = getelementptr inbounds nuw [64 x i8], ptr %i.ag, i64 %.08.i.epil
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.bc, i8 0, i64 16, i1 false)
  %i.bd = add nuw i64 %.08.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
end_hunk_6
begin_hunk_7_@_ZN5folly15RegexMatchCache9addStringEPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  %i.el = getelementptr inbounds i8, ptr %.017.i.i, i64 -112
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.el, i64 %i.ej
  br label %_ZN5folly3f146detail21NodeContainerIteratorIPSt4pairIKNS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEEEppEv.exit.backedge

_ZN5folly3f146detail21NodeContainerIteratorIPSt4pairIKNS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEEEppEv.exit.backedge: ; preds = %thread-pre-split.i, %bb.w
  %.sroa.051.085.be = phi ptr [ %i.em, %bb.w ], [ %i.du, %thread-pre-split.i ]
  %.sroa.9.084.be = phi i64 [ %i.ej, %bb.w ], [ %i.dt, %thread-pre-split.i ]
  br label %_ZN5folly3f146detail21NodeContainerIteratorIPSt4pairIKNS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEEEppEv.exit

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.r, %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNS_18RegexMatchCacheKeyEmvvvEEE4findIS6_EENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKS6_mEEEEERKT_.exit.thread.i, %bb.c
  %lpad.loopexit.split-lp121 = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5folly6detail14ScopeGuardImplISt5_BindIFMNS_15RegexMatchCacheEDoFvvEPS3_EELb1EED2Ev.exit47

bb.x:                                             ; preds = %bb.s, %bb.t
  %i.en = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #40
  br label %_ZN5folly6detail14ScopeGuardImplISt5_BindIFMNS_15RegexMatchCacheEDoFvvEPS3_EELb1EED2Ev.exit47

_ZN5folly6detail14ScopeGuardImplISt5_BindIFMNS_15RegexMatchCacheEDoFvvEPS3_EELb1EED2Ev.exit: ; preds = %.critedge.i.i41, %.critedge, %bb.b, %bb.a
  ret void

_ZN5folly6detail14ScopeGuardImplISt5_BindIFMNS_15RegexMatchCacheEDoFvvEPS3_EELb1EED2Ev.exit47: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.x, %bb.h
  %.pn27.pn.pn.pn = phi { ptr, i32 } [ %i.en, %bb.x ], [ %i.ab, %bb.h ], [ %lpad.loopexit.split-lp121, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZN5folly15RegexMatchCache6repairEv(ptr noundef nonnull align 8 dereferenceable(168) %0) #40, !inline_history !798
  resume { ptr, i32 } %.pn27.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEvvvEEE19tryEmplaceValueImplISB_JRKSt21piecewise_construct_tSt5tupleIJRKSB_EESK_IJEEEEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkISP_ISL_SD_EEEEEbESP_ImmERKT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.505") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 1 dereferenceable(1) %7) local_unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 !guid !22608 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !20233 ; 3 uses
  %i.c = lshr i64 %i.b, 8                         ; 3 uses
  %.not = icmp eq i64 %i.c, 0
  %.pre = load ptr, ptr %1, align 8, !tbaa !20802 ; 3 uses
  br i1 %.not, label %.thread66, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = shl i64 %3, 1
  %i.e = or disjoint i64 %i.d, 1
  %i.f = trunc i64 %3 to i8
  %i.g = insertelement <16 x i8> poison, i8 %i.f, i64 0
  %i.h = shufflevector <16 x i8> %i.g, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.i = and i64 %i.b, 255                        ; 4 uses
  %i.j = shl nuw i64 1, %i.i
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.f
  %.023.i75 = phi i64 [ %i.j, %bb.b ], [ %i.ae, %bb.f ]
  %.025.i74 = phi i64 [ %2, %bb.b ], [ %i.af, %bb.f ] ; 2 uses
  %i.k = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.025.i74, i64 range(i64 0, 256) %i.i)
  %i.l = getelementptr inbounds nuw [256 x i8], ptr %.pre, i64 %i.k ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 144
  tail call void @llvm.prefetch.p0(ptr nonnull %i.n, i32 0, i32 3, i32 1)
  %i.o = load <16 x i8>, ptr %i.l, align 16       ; 2 uses
  %i.p = icmp eq <16 x i8> %i.o, %i.h
  %i.q = bitcast <16 x i1> %i.p to i16
  %i.r = and i16 %i.q, 16383
  %i.s = zext nneg i16 %i.r to i32
  %i.t = icmp ne ptr %i.l, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  %i.u = extractelement <16 x i8> %i.o, i64 15
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.d, %bb.c
  %.sroa.042.0 = phi i32 [ %i.s, %bb.c ], [ %i.x, %bb.d ] ; 4 uses
  %.not68 = icmp eq i32 %.sroa.042.0, 0
  br i1 %.not68, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.critedge.i
  %i.v = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.042.0, i1 true)
  %i.w = add nuw nsw i32 %.sroa.042.0, 16383
  %i.x = and i32 %i.w, %.sroa.042.0
  %i.y = zext nneg i32 %i.v to i64                ; 2 uses
  tail call void @llvm.assume(i1 %i.t)
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %i.y ; 2 uses
  %i.aa = load ptr, ptr %4, align 8, !tbaa !20303
  %i.ab = load ptr, ptr %i.z, align 8, !tbaa !20303
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %.loopexit, label %.critedge.i, !prof !20223, !llvm.loop !792

bb.e:                                             ; preds = %.critedge.i
  %i.ad = icmp eq i8 %i.u, 0
  br i1 %i.ad, label %.thread66, label %bb.f, !prof !20223

bb.f:                                             ; preds = %bb.e
  %i.ae = add i64 %.023.i75, -1                   ; 2 uses
  %i.af = add i64 %i.e, %.025.i74
  %.not.i = icmp eq i64 %i.ae, 0
  br i1 %.not.i, label %.thread66, label %bb.c, !llvm.loop !793

.thread66:                                        ; preds = %bb.f, %bb.e, %bb.a
  %.pre-phi83 = phi i64 [ %i.b, %bb.a ], [ %i.i, %bb.e ], [ %i.i, %bb.f ] ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.pre, i64 14
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !20220
  %i.ai = and i8 %i.ah, 15
  %i.aj = zext nneg i8 %i.ai to i64               ; 2 uses
  %i.ak = shl i64 %i.aj, %.pre-phi83              ; 2 uses
  %.not.i32 = icmp ult i64 %i.c, %i.ak
  br i1 %.not.i32, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEvvvEEE16reserveForInsertEm.exit, label %bb.g

bb.g:                                             ; preds = %.thread66
  %i.al = shl nuw i64 1, %.pre-phi83
  tail call void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEvvvEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.c, i64 noundef %i.al, i64 noundef %i.aj, i64 noundef %i.ak)
  %.pre79 = load ptr, ptr %1, align 8, !tbaa !20802
  %.pre80 = load i64, ptr %i.a, align 8, !tbaa !20233
  %.pre81 = and i64 %.pre80, 255
  br label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEvvvEEE16reserveForInsertEm.exit

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEvvvEEE16reserveForInsertEm.exit: ; preds = %.thread66, %bb.g
  %.pre-phi = phi i64 [ %.pre-phi83, %.thread66 ], [ %.pre81, %bb.g ] ; 2 uses
  %i.am = phi ptr [ %.pre, %.thread66 ], [ %.pre79, %bb.g ] ; 3 uses
  %i.an = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %2, i64 range(i64 0, 256) %.pre-phi) ; 2 uses
  %i.ao = getelementptr inbounds nuw [256 x i8], ptr %i.am, i64 %i.an ; 2 uses
  %i.ap = load <16 x i8>, ptr %i.ao, align 16, !tbaa !20220
  %i.aq = icmp slt <16 x i8> %i.ap, zeroinitializer
  %i.ar = bitcast <16 x i1> %i.aq to i16
  %i.as = and i16 %i.ar, 16383                    ; 2 uses
  %.not69 = icmp eq i16 %i.as, 16383
  br i1 %.not69, label %bb.h, label %bb.l

bb.h:                                             ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEvvvEEE16reserveForInsertEm.exit
  %i.at = shl i64 %3, 1
  %i.au = or disjoint i64 %i.at, 1
  br label %bb.i

bb.i:                                             ; preds = %_ZN5folly3f146detail8F14ChunkISt4pairIKPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEEE25incrOutboundOverflowCountEv.exit, %bb.h
  %i.av = phi i64 [ %i.an, %bb.h ], [ %i.bb, %_ZN5folly3f146detail8F14ChunkISt4pairIKPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEEE25incrOutboundOverflowCountEv.exit ]
  %.030 = phi i64 [ %2, %bb.h ], [ %i.ba, %_ZN5folly3f146detail8F14ChunkISt4pairIKPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEEE25incrOutboundOverflowCountEv.exit ]
  %i.aw = getelementptr inbounds nuw [256 x i8], ptr %i.am, i64 %i.av
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 15 ; 2 uses
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !20881 ; 2 uses
  %.not.i33 = icmp eq i8 %i.ay, -2
  br i1 %.not.i33, label %_ZN5folly3f146detail8F14ChunkISt4pairIKPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEEE25incrOutboundOverflowCountEv.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.az = add i8 %i.ay, 1
  store i8 %i.az, ptr %i.ax, align 1, !tbaa !20881
  br label %_ZN5folly3f146detail8F14ChunkISt4pairIKPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEEE25incrOutboundOverflowCountEv.exit

_ZN5folly3f146detail8F14ChunkISt4pairIKPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEEE25incrOutboundOverflowCountEv.exit: ; preds = %bb.i, %bb.j
  %i.ba = add i64 %i.au, %.030                    ; 2 uses
  %i.bb = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %i.ba, i64 range(i64 0, 256) %.pre-phi) ; 2 uses
  %i.bc = getelementptr inbounds nuw [256 x i8], ptr %i.am, i64 %i.bb ; 3 uses
  %i.bd = load <16 x i8>, ptr %i.bc, align 16     ; 2 uses
  %i.be = icmp slt <16 x i8> %i.bd, zeroinitializer
  %i.bf = bitcast <16 x i1> %i.be to i16
  %i.bg = and i16 %i.bf, 16383                    ; 2 uses
  %.not70 = icmp eq i16 %i.bg, 16383
  br i1 %.not70, label %bb.i, label %bb.k, !llvm.loop !22607

bb.k:                                             ; preds = %_ZN5folly3f146detail8F14ChunkISt4pairIKPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEEE25incrOutboundOverflowCountEv.exit
  %i.bh = extractelement <16 x i8> %i.bd, i64 14
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bc, i64 14
  %i.bj = add i8 %i.bh, 16
  store i8 %i.bj, ptr %i.bi, align 2, !tbaa !20882
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEvvvEEE16reserveForInsertEm.exit
  %.sroa.036.0.in.in = phi i16 [ %i.as, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEvvvEEE16reserveForInsertEm.exit ], [ %i.bg, %bb.k ]
  %.1 = phi ptr [ %i.ao, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEvvvEEE16reserveForInsertEm.exit ], [ %i.bc, %bb.k ] ; 3 uses
  %.sroa.036.0.in = xor i16 %.sroa.036.0.in.in, 16383
  %i.bk = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.036.0.in, i1 true)
  %i.bl = zext nneg i16 %i.bk to i64              ; 4 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.1, i64 %i.bl ; 2 uses
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !20220
  %i.bo = icmp eq i8 %i.bn, 0
  br i1 %i.bo, label %_ZN5folly3f146detail8F14ChunkISt4pairIKPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEEE6setTagEmm.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkISt4pairIKPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEEE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.15) #48
  unreachable

_ZN5folly3f146detail8F14ChunkISt4pairIKPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEEE6setTagEmm.exit: ; preds = %bb.l
  %i.bp = trunc i64 %3 to i8
  store i8 %i.bp, ptr %i.bm, align 1, !tbaa !20220
  %i.bq = getelementptr inbounds nuw i8, ptr %.1, i64 16
  %i.br = getelementptr inbounds nuw [16 x i8], ptr %i.bq, i64 %i.bl ; 4 uses
  %i.bs = icmp ne ptr %.1, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.bs)
  %i.bt = load i64, ptr %6, align 8, !tbaa !20871
  %i.bu = inttoptr i64 %i.bt to ptr
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !20303
  store ptr %i.bv, ptr %i.br, align 8, !tbaa !20885
  %i.bw = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  store i64 0, ptr %i.bw, align 8, !tbaa !20219
  %i.bx = ptrtoint ptr %i.br to i64
  %i.by = or i64 %i.bx, %i.bl                     ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !20213
  %i.cb = icmp ult i64 %i.ca, %i.by
  br i1 %i.cb, label %bb.n, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJRKSB_EESK_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairISL_SD_EEEEESR_ImmEDpOT_.exit

bb.n:                                             ; preds = %_ZN5folly3f146detail8F14ChunkISt4pairIKPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEEE6setTagEmm.exit
  store i64 %i.by, ptr %i.bz, align 8, !tbaa !20214
  br label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJRKSB_EESK_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairISL_SD_EEEEESR_ImmEDpOT_.exit

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJRKSB_EESK_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairISL_SD_EEEEESR_ImmEDpOT_.exit: ; preds = %_ZN5folly3f146detail8F14ChunkISt4pairIKPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEEE6setTagEmm.exit, %bb.n
  %i.cc = load i64, ptr %i.a, align 8, !tbaa !20233
  %i.cd = add i64 %i.cc, 256
  store i64 %i.cd, ptr %i.a, align 8, !tbaa !20233
  br label %.loopexit

.loopexit:                                        ; preds = %bb.d, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJRKSB_EESK_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairISL_SD_EEEEESR_ImmEDpOT_.exit
  %.lcssa92.sink = phi ptr [ %i.br, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJRKSB_EESK_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairISL_SD_EEEEESR_ImmEDpOT_.exit ], [ %i.z, %bb.d ]
  %.lcssa93.sink = phi i64 [ %i.bl, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJRKSB_EESK_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairISL_SD_EEEEESR_ImmEDpOT_.exit ], [ %i.y, %bb.d ]
  %.sink = phi i8 [ 1, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJRKSB_EESK_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairISL_SD_EEEEESR_ImmEDpOT_.exit ], [ 0, %bb.d ]
  store ptr %.lcssa92.sink, ptr %0, align 8, !tbaa !22610
  %.sroa.541.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.lcssa93.sink, ptr %.sroa.541.0..sroa_idx, align 8, !tbaa !20214
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.ce, align 8, !tbaa !22613
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEvvvEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #34 comdat align 2 personality ptr @__gxx_personality_v0 !guid !22614 {
bb.a:
  %i.a = add i64 %1, 1
  %i.b = lshr i64 %4, 2
  %i.c = add i64 %i.b, %4
  %i.d = lshr i64 %4, 3
  %i.e = add i64 %i.c, %i.d
  %i.f = lshr i64 %4, 5
  %i.g = add i64 %i.e, %i.f
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.a, i64 %i.g) ; 4 uses
  %i.h = icmp ult i64 %.sroa.speculated, 15
  br i1 %i.h, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.i = icmp samesign ult i64 %.sroa.speculated, 3
  br i1 %i.i, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEvvvEEE25computeChunkCountAndScaleEmbb.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.inv.i = icmp samesign ugt i64 %.sroa.speculated, 6
  %spec.select.i = select i1 %.inv.i, i64 14, i64 6
  br label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEvvvEEE25computeChunkCountAndScaleEmbb.exit

bb.d:                                             ; preds = %bb.a
  %i.j = add i64 %.sroa.speculated, -1
  %i.k = udiv i64 %i.j, 12
  %i.l = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.k, i1 true)
  %i.m = sub nuw nsw i64 64, %i.l                 ; 2 uses
  %i.n = shl i64 12, %i.m
  %i.o = icmp ugt i64 %i.n, 72057594037927935
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN5folly6detail16throw_exception_ISt9bad_allocJEEEvDpT0_() #20
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.p = shl nuw nsw i64 1, %i.m
  br label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEvvvEEE25computeChunkCountAndScaleEmbb.exit

_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEvvvEEE25computeChunkCountAndScaleEmbb.exit: ; preds = %bb.b, %bb.c, %bb.f
  %.pn21.i = phi i64 [ %i.p, %bb.f ], [ 1, %bb.c ], [ 1, %bb.b ]
  %.0.pn.i = phi i64 [ 12, %bb.f ], [ %spec.select.i, %bb.c ], [ 2, %bb.b ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !20233
  %i.s = lshr i64 %i.r, 8
  tail call void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEvvvEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.s, i64 noundef %2, i64 noundef %3, i64 noundef %.pn21.i, i64 noundef %.0.pn.i)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEvvvEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) local_unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 !guid !22624 {
bb.a:
  %i.a = alloca i64, align 8                      ; 3 uses
  %i.b = alloca i64, align 8                      ; 3 uses
  %i.c = alloca ptr, align 8                      ; 7 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  %i.g = alloca i64, align 8                      ; 5 uses
  %i.h = alloca ptr, align 8                      ; 5 uses
  %i.i = alloca i8, align 1                       ; 5 uses
  %i.j = alloca i8, align 1                       ; 6 uses
  %6 = alloca %"class.folly::detail::ScopeGuardImpl.508", align 8 ; 16 uses
  %7 = alloca %"struct.std::array.398", align 1   ; 5 uses
  store i64 %1, ptr %i.a, align 8, !tbaa !20214
  store i64 %2, ptr %i.b, align 8, !tbaa !20214
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #40
  %i.k = load ptr, ptr %0, align 8, !tbaa !20802  ; 5 uses
  store ptr %i.k, ptr %i.c, align 8, !tbaa !20886
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #40
  %i.l = mul i64 %3, %2
  store i64 %i.l, ptr %i.d, align 8, !tbaa !20214
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #40
  %i.m = icmp eq i64 %2, 1                        ; 2 uses
  %i.n = shl i64 %3, 4
  %i.o = add i64 %i.n, 16
  %i.p = shl i64 %2, 8
  %.0.i = select i1 %i.m, i64 %i.o, i64 %i.p
  store i64 %.0.i, ptr %i.e, align 8, !tbaa !20214
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #40
  %i.q = mul i64 %5, %4
  store i64 %i.q, ptr %i.f, align 8, !tbaa !20214
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #40
  %i.r = icmp eq i64 %4, 1                        ; 2 uses
  %i.s = shl i64 %5, 4
  %i.t = add i64 %i.s, 16
  %i.u = shl i64 %4, 8
  %.0.i71 = select i1 %i.r, i64 %i.t, i64 %i.u    ; 2 uses
  store i64 %.0.i71, ptr %i.g, align 8, !tbaa !20214
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #40
  %i.v = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %.0.i71) #46 ; 16 uses
  store ptr %i.v, ptr %i.h, align 8, !tbaa !20346
  store i8 0, ptr %i.i, align 1, !tbaa !20711
  %.not.i = icmp eq i64 %4, 0                     ; 2 uses
  br i1 %.not.i, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEvvvEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %xtraiter = and i64 %4, 7                       ; 3 uses
  %i.w = icmp ult i64 %4, 8
  br i1 %i.w, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %4, -8
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.08.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.am, %.lr.ph.i ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.7, %.lr.ph.i ]
  %i.x = getelementptr inbounds nuw [256 x i8], ptr %i.v, i64 %.08.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.x, i8 0, i64 16, i1 false)
  %i.y = getelementptr inbounds nuw [256 x i8], ptr %i.v, i64 %.08.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 256
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.z, i8 0, i64 16, i1 false)
  %i.aa = getelementptr inbounds nuw [256 x i8], ptr %i.v, i64 %.08.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 512
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.ab, i8 0, i64 16, i1 false)
  %i.ac = getelementptr inbounds nuw [256 x i8], ptr %i.v, i64 %.08.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 768
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.ad, i8 0, i64 16, i1 false)
  %i.ae = getelementptr inbounds nuw [256 x i8], ptr %i.v, i64 %.08.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 1024
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.af, i8 0, i64 16, i1 false)
  %i.ag = getelementptr inbounds nuw [256 x i8], ptr %i.v, i64 %.08.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 1280
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.ah, i8 0, i64 16, i1 false)
  %i.ai = getelementptr inbounds nuw [256 x i8], ptr %i.v, i64 %.08.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 1536
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.aj, i8 0, i64 16, i1 false)
  %i.ak = getelementptr inbounds nuw [256 x i8], ptr %i.v, i64 %.08.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 1792
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.al, i8 0, i64 16, i1 false)
  %i.am = add nuw i64 %.08.i, 8                   ; 2 uses
  %niter.next.7 = add nuw i64 %niter, 8           ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEvvvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !22615

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEvvvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEvvvEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEvvvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.08.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.am, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEvvvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa ]
  %lcmp.mod179 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod179)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.08.i.epil = phi i64 [ %i.ao, %.lr.ph.i.epil ], [ %.08.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.an = getelementptr inbounds nuw [256 x i8], ptr %i.v, i64 %.08.i.epil
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.an, i8 0, i64 16, i1 false)
  %i.ao = add nuw i64 %.08.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEvvvEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.epil, !llvm.loop !22616

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEvvvEEE16initializeChunksEPhmm.exit: ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEvvvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, %.lr.ph.i.epil, %bb.a
  %i.ap = getelementptr inbounds nuw i8, ptr %i.v, i64 14
  %i.aq = trunc i64 %5 to i8
  store i8 %i.aq, ptr %i.ap, align 2, !tbaa !20882
  store ptr %i.v, ptr %0, align 8, !tbaa !20802
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.as = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %4, i1 true)
  %i.at = load i64, ptr %i.ar, align 8, !tbaa !20233
  %i.au = and i64 %i.at, -256
  %i.av = select i1 %.not.i, i64 4294967295, i64 %i.as
  %i.aw = or i64 %i.au, %i.av
  store i64 %i.aw, ptr %i.ar, align 8, !tbaa !20233
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #40
  store i8 0, ptr %i.j, align 1, !tbaa !20711
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #40
  store i8 0, ptr %6, align 8, !tbaa !20828, !alias.scope !22625
  %i.ax = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.j, ptr %i.ax, align 8, !tbaa !20832
  %.sroa.496.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.d, ptr %.sroa.496.0..sroa_idx, align 8, !tbaa !20306
  %.sroa.597.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %i.c, ptr %.sroa.597.0..sroa_idx, align 8, !tbaa !22626
  %.sroa.698.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 32
  store ptr %i.e, ptr %.sroa.698.0..sroa_idx, align 8, !tbaa !20306
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 40
  store ptr %i.h, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !20840
  %.sroa.899.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 48
  store ptr %i.g, ptr %.sroa.899.0..sroa_idx, align 8, !tbaa !20306
end_hunk_7
begin_hunk_8_@_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEvvvEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev:bb.a
  %.02.i.i = phi ptr [ %i.l, %bb.d ], [ %i.t, %bb.e ] ; 2 uses
  %.0.i.i = phi i64 [ %i.o, %bb.d ], [ %i.w, %bb.e ]
  %.not.i.i.i = icmp eq ptr %.02.i.i, null
  br i1 %.not.i.i.i, label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEvvvEEE10rehashImplEmmmmmEUlvE_Lb1EE7executeEv.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_ZdlPvm(ptr noundef nonnull %.02.i.i, i64 noundef %.0.i.i) #40
  br label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEvvvEEE10rehashImplEmmmmmEUlvE_Lb1EE7executeEv.exit

_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEvvvEEE10rehashImplEmmmmmEUlvE_Lb1EE7executeEv.exit: ; preds = %bb.g, %bb.f, %bb.c, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPKNS_18RegexMatchCacheKeyENS_15RegexMatchCache23StringQueueReverseEntryEvvvSt17integral_constantIbLb1EEEEE19tryEmplaceValueImplIS6_JRKSt21piecewise_construct_tSt5tupleIJOS6_EESH_IJEEEEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEbESL_ImmERKT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.456") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 1 dereferenceable(1) %7) local_unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 !guid !22639 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !20233 ; 4 uses
  %i.c = lshr i64 %i.b, 8                         ; 3 uses
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %..thread66_crit_edge, label %bb.b

..thread66_crit_edge:                             ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !20253
  %.pre85 = shl nuw i64 1, %i.b
  br label %.thread66

bb.b:                                             ; preds = %bb.a
  %i.d = shl i64 %3, 1
  %i.e = or disjoint i64 %i.d, 1
  %i.f = trunc i64 %3 to i8
  %i.g = insertelement <16 x i8> poison, i8 %i.f, i64 0
  %i.h = shufflevector <16 x i8> %i.g, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.i = and i64 %i.b, 255                        ; 4 uses
  %i.j = shl nuw i64 1, %i.i                      ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !20253 ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.f
  %.022.i77 = phi i64 [ %i.j, %bb.b ], [ %i.aj, %bb.f ]
  %.024.i76 = phi i64 [ %2, %bb.b ], [ %i.ak, %bb.f ] ; 2 uses
  %i.m = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.024.i76, i64 range(i64 0, 256) %i.i)
  %i.n = getelementptr inbounds nuw [64 x i8], ptr %i.l, i64 %i.m ; 3 uses
  %i.o = load <16 x i8>, ptr %i.n, align 16       ; 2 uses
  %i.p = icmp eq <16 x i8> %i.o, %i.h
  %i.q = bitcast <16 x i1> %i.p to i16
  %i.r = and i16 %i.q, 4095
  %i.s = zext nneg i16 %i.r to i32
  %i.t = icmp ne ptr %i.n, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  %i.v = extractelement <16 x i8> %i.o, i64 15
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.d, %bb.c
  %.sroa.042.0 = phi i32 [ %i.s, %bb.c ], [ %i.y, %bb.d ] ; 4 uses
  %.not68 = icmp eq i32 %.sroa.042.0, 0
  br i1 %.not68, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.critedge.i
  %i.w = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.042.0, i1 true)
  %i.x = add nuw nsw i32 %.sroa.042.0, 4095
  %i.y = and i32 %i.x, %.sroa.042.0
  %i.z = zext nneg i32 %i.w to i64                ; 3 uses
  tail call void @llvm.assume(i1 %i.t)
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.z
  %i.ab = load ptr, ptr %1, align 8, !tbaa !20254
  %i.ac = load i32, ptr %i.aa, align 4, !tbaa !20326
  %i.ad = zext i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw [32 x i8], ptr %i.ab, i64 %i.ad
  %i.af = load ptr, ptr %4, align 8, !tbaa !20309
  %i.ag = load ptr, ptr %i.ae, align 8, !tbaa !20309
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %bb.g, label %.critedge.i, !prof !20223, !llvm.loop !790

bb.e:                                             ; preds = %.critedge.i
  %i.ai = icmp eq i8 %i.v, 0
  br i1 %i.ai, label %.thread66, label %bb.f, !prof !20223

bb.f:                                             ; preds = %bb.e
  %i.aj = add i64 %.022.i77, -1                   ; 2 uses
  %i.ak = add i64 %i.e, %.024.i76
  %.not.i = icmp eq i64 %i.aj, 0
  br i1 %.not.i, label %.thread66, label %bb.c, !llvm.loop !791

bb.g:                                             ; preds = %bb.d
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.z
  br label %bb.o

.thread66:                                        ; preds = %bb.f, %bb.e, %..thread66_crit_edge
  %.pre-phi86 = phi i64 [ %.pre85, %..thread66_crit_edge ], [ %i.j, %bb.e ], [ %i.j, %bb.f ] ; 2 uses
  %.pre-phi = phi i64 [ %i.b, %..thread66_crit_edge ], [ %i.i, %bb.e ], [ %i.i, %bb.f ]
  %i.am = phi ptr [ %.pre, %..thread66_crit_edge ], [ %i.l, %bb.e ], [ %i.l, %bb.f ] ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 12
  %.0.copyload.i.i = load i16, ptr %i.an, align 1
  %i.ao = zext i16 %.0.copyload.i.i to i64        ; 2 uses
  %i.ap = add i64 %.pre-phi86, -1
  %i.aq = lshr i64 %i.ap, 12
  %i.ar = add nuw nsw i64 %i.aq, 1
  %i.as = mul i64 %i.ar, %i.ao                    ; 2 uses
  %.not.i32 = icmp ult i64 %i.c, %i.as
  br i1 %.not.i32, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPKNS_18RegexMatchCacheKeyENS_15RegexMatchCache23StringQueueReverseEntryEvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit, label %bb.h

bb.h:                                             ; preds = %.thread66
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPKNS_18RegexMatchCacheKeyENS_15RegexMatchCache23StringQueueReverseEntryEvvvSt17integral_constantIbLb1EEEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.c, i64 noundef %.pre-phi86, i64 noundef %i.ao, i64 noundef %i.as)
  %.pre82 = load ptr, ptr %i.at, align 8, !tbaa !20253
  %.pre83 = load i64, ptr %i.a, align 8, !tbaa !20233
  %.pre87 = and i64 %.pre83, 255
  br label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPKNS_18RegexMatchCacheKeyENS_15RegexMatchCache23StringQueueReverseEntryEvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit

_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPKNS_18RegexMatchCacheKeyENS_15RegexMatchCache23StringQueueReverseEntryEvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit: ; preds = %.thread66, %bb.h
  %.pre-phi88 = phi i64 [ %.pre-phi, %.thread66 ], [ %.pre87, %bb.h ] ; 2 uses
  %i.au = phi ptr [ %i.am, %.thread66 ], [ %.pre82, %bb.h ] ; 3 uses
  %i.av = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %2, i64 range(i64 0, 256) %.pre-phi88) ; 2 uses
  %i.aw = getelementptr inbounds nuw [64 x i8], ptr %i.au, i64 %i.av ; 2 uses
  %i.ax = load <16 x i8>, ptr %i.aw, align 16, !tbaa !20220
  %i.ay = icmp slt <16 x i8> %i.ax, zeroinitializer
  %i.az = bitcast <16 x i1> %i.ay to i16
  %i.ba = and i16 %i.az, 4095                     ; 2 uses
  %.not69 = icmp eq i16 %i.ba, 4095
  br i1 %.not69, label %bb.i, label %bb.m

bb.i:                                             ; preds = %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPKNS_18RegexMatchCacheKeyENS_15RegexMatchCache23StringQueueReverseEntryEvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit
  %i.bb = shl i64 %3, 1
  %i.bc = or disjoint i64 %i.bb, 1
  br label %bb.j

bb.j:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit, %bb.i
  %i.bd = phi i64 [ %i.av, %bb.i ], [ %i.bj, %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit ]
  %.030 = phi i64 [ %2, %bb.i ], [ %i.bi, %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit ]
  %i.be = getelementptr inbounds nuw [64 x i8], ptr %i.au, i64 %i.bd
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 15 ; 2 uses
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !20823 ; 2 uses
  %.not.i33 = icmp eq i8 %i.bg, -2
  br i1 %.not.i33, label %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bh = add i8 %i.bg, 1
  store i8 %i.bh, ptr %i.bf, align 1, !tbaa !20823
  br label %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit

_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit: ; preds = %bb.j, %bb.k
  %i.bi = add i64 %i.bc, %.030                    ; 2 uses
  %i.bj = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %i.bi, i64 range(i64 0, 256) %.pre-phi88) ; 2 uses
  %i.bk = getelementptr inbounds nuw [64 x i8], ptr %i.au, i64 %i.bj ; 3 uses
  %i.bl = load <16 x i8>, ptr %i.bk, align 16     ; 2 uses
  %i.bm = icmp slt <16 x i8> %i.bl, zeroinitializer
  %i.bn = bitcast <16 x i1> %i.bm to i16
  %i.bo = and i16 %i.bn, 4095                     ; 2 uses
  %.not70 = icmp eq i16 %i.bo, 4095
  br i1 %.not70, label %bb.j, label %bb.l, !llvm.loop !22638

bb.l:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit
  %i.bp = extractelement <16 x i8> %i.bl, i64 14
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bk, i64 14
  %i.br = add i8 %i.bp, 16
  store i8 %i.br, ptr %i.bq, align 2, !tbaa !20824
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPKNS_18RegexMatchCacheKeyENS_15RegexMatchCache23StringQueueReverseEntryEvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit
  %.sroa.036.0.in.in = phi i16 [ %i.ba, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPKNS_18RegexMatchCacheKeyENS_15RegexMatchCache23StringQueueReverseEntryEvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit ], [ %i.bo, %bb.l ]
  %.1 = phi ptr [ %i.aw, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPKNS_18RegexMatchCacheKeyENS_15RegexMatchCache23StringQueueReverseEntryEvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit ], [ %i.bk, %bb.l ] ; 3 uses
  %.sroa.036.0.in = xor i16 %.sroa.036.0.in.in, 4095
  %i.bs = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.036.0.in, i1 true)
  %i.bt = zext nneg i16 %i.bs to i64              ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.1, i64 %i.bt ; 2 uses
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !20220
  %i.bw = icmp eq i8 %i.bv, 0
  br i1 %i.bw, label %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIjE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.15) #48
  unreachable

_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit:  ; preds = %bb.m
  %i.bx = trunc i64 %3 to i8
  store i8 %i.bx, ptr %i.bu, align 1, !tbaa !20220
  %i.by = getelementptr inbounds nuw i8, ptr %.1, i64 16
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %i.bt ; 2 uses
  %i.ca = icmp ne ptr %.1, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.ca)
  %i.cb = load i64, ptr %i.a, align 8, !tbaa !20233
  %i.cc = lshr i64 %i.cb, 8                       ; 2 uses
  %i.cd = trunc i64 %i.cc to i32
  store i32 %i.cd, ptr %i.bz, align 4, !tbaa !20326
  %i.ce = load ptr, ptr %1, align 8, !tbaa !20254, !nonnull !1767, !noundef !1767
  %i.cf = and i64 %i.cc, 4294967295
  %i.cg = getelementptr inbounds nuw [32 x i8], ptr %i.ce, i64 %i.cf ; 4 uses
  %i.ch = load i64, ptr %6, align 8, !tbaa !20813
  %i.ci = inttoptr i64 %i.ch to ptr
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !20309
  store ptr %i.cj, ptr %i.cg, align 8, !tbaa !20862
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  store i64 0, ptr %i.ck, align 8
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %i.cl, align 8, !tbaa !20259
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cg, i64 24
  store i64 0, ptr %i.cm, align 8, !tbaa !20233
  %i.cn = load i64, ptr %i.a, align 8, !tbaa !20233
  %i.co = add i64 %i.cn, 256
  store i64 %i.co, ptr %i.a, align 8, !tbaa !20233
  br label %bb.o

bb.o:                                             ; preds = %bb.g, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit
  %.sink101 = phi ptr [ %i.al, %bb.g ], [ %i.bz, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ]
  %.lcssa99.sink = phi i64 [ %i.z, %bb.g ], [ %i.bt, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ]
  %.sink = phi i8 [ 0, %bb.g ], [ 1, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ]
  store ptr %.sink101, ptr %0, align 8, !tbaa !20414
  %.sroa.541.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.lcssa99.sink, ptr %.sroa.541.0..sroa_idx, align 8, !tbaa !20214
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.cp, align 8, !tbaa !20864
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5folly15RegexMatchCache11eraseStringEPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef %1) local_unnamed_addr #14 align 2 personality ptr @__gxx_personality_v0 !guid !22644 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.c = load i64, ptr %i.b, align 8, !tbaa !20233 ; 2 uses
  %i.d = lshr i64 %i.c, 8
  switch i64 %i.d, label %.noexc52 [
    i64 0, label %.thread405
    i64 1, label %.noexc50
  ]

.noexc50:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.f = load i64, ptr %i.e, align 8, !tbaa !20305 ; 2 uses
  %i.g = and i64 %i.f, -16
  %i.h = inttoptr i64 %i.g to ptr                 ; 2 uses
  %i.i = and i64 %i.f, 15
  %i.j = load ptr, ptr %i.h, align 16, !tbaa !20303
  %i.k = icmp eq ptr %1, %i.j
  br i1 %i.k, label %.thread410, label %.thread405

.noexc52:                                         ; preds = %bb.a
  %i.l = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.m = tail call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 0, i64 %i.l) ; 2 uses
  %i.n = lshr i64 %i.m, 24
  %i.o = or i64 %i.n, 128                         ; 2 uses
  %i.p = add i64 %i.m, %i.l
  %i.q = shl nuw nsw i64 %i.o, 1
  %i.r = or disjoint i64 %i.q, 1
  %i.s = trunc nuw i64 %i.o to i8
  %i.t = insertelement <16 x i8> poison, i8 %i.s, i64 0
  %i.u = shufflevector <16 x i8> %i.t, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.v = and i64 %i.c, 255                        ; 2 uses
  %i.w = shl nuw i64 1, %i.v
  %i.x = load ptr, ptr %i.a, align 8, !tbaa !20264
  br label %.noexc54

.noexc54:                                         ; preds = %.noexc52, %.noexc58
  %.023.i.i553 = phi i64 [ %i.w, %.noexc52 ], [ %i.ar, %.noexc58 ]
  %.025.i.i552 = phi i64 [ %i.p, %.noexc52 ], [ %i.as, %.noexc58 ] ; 2 uses
  %i.y = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.025.i.i552, i64 range(i64 0, 256) %i.v)
  %i.z = getelementptr inbounds nuw [256 x i8], ptr %i.x, i64 %i.y ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 144
  tail call void @llvm.prefetch.p0(ptr nonnull %i.ab, i32 0, i32 3, i32 1)
  %i.ac = load <16 x i8>, ptr %i.z, align 16      ; 2 uses
  %i.ad = icmp eq <16 x i8> %i.ac, %i.u
  %i.ae = bitcast <16 x i1> %i.ad to i16
  %i.af = and i16 %i.ae, 16383
  %i.ag = zext nneg i16 %i.af to i32
  %i.ah = icmp ne ptr %i.z, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  %i.ai = extractelement <16 x i8> %i.ac, i64 15
  br label %.critedge.i.i40

.critedge.i.i40:                                  ; preds = %.noexc57, %.noexc54
  %.sroa.0326.0 = phi i32 [ %i.ag, %.noexc54 ], [ %i.al, %.noexc57 ] ; 4 uses
  %.not = icmp eq i32 %.sroa.0326.0, 0
  br i1 %.not, label %bb.b, label %.noexc57

.noexc57:                                         ; preds = %.critedge.i.i40
  %i.aj = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.0326.0, i1 true)
  %i.ak = add nuw nsw i32 %.sroa.0326.0, 16383
  %i.al = and i32 %i.ak, %.sroa.0326.0
  %i.am = zext nneg i32 %i.aj to i64              ; 2 uses
  tail call void @llvm.assume(i1 %i.ah)
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %i.aa, i64 %i.am ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !20303
  %i.ap = icmp eq ptr %1, %i.ao
  br i1 %i.ap, label %.thread410, label %.critedge.i.i40, !prof !20223, !llvm.loop !788

bb.b:                                             ; preds = %.critedge.i.i40
  %i.aq = icmp eq i8 %i.ai, 0
  br i1 %i.aq, label %.thread405, label %.noexc58, !prof !20223

.noexc58:                                         ; preds = %bb.b
  %i.ar = add i64 %.023.i.i553, -1                ; 2 uses
  %i.as = add i64 %i.r, %.025.i.i552
  %.not.i.i39 = icmp eq i64 %i.ar, 0
  br i1 %.not.i.i39, label %.thread405, label %.noexc54, !llvm.loop !789

.thread410:                                       ; preds = %.noexc57, %.noexc50
  %.sroa.7325.1416 = phi i64 [ %i.i, %.noexc50 ], [ %i.am, %.noexc57 ] ; 4 uses
  %.sroa.0324.1415 = phi ptr [ %i.h, %.noexc50 ], [ %i.an, %.noexc57 ] ; 5 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.0324.1415, i64 8 ; 2 uses
  %i.au = load i64, ptr %i.at, align 8, !tbaa !20214 ; 2 uses
  %i.av = icmp slt i64 %i.au, 0
  br i1 %i.av, label %_ZNK5folly28RegexMatchCacheDynamicBitset17as_index_set_viewEv.exit, label %.lr.ph.i.i.i.preheader

_ZNK5folly28RegexMatchCacheDynamicBitset17as_index_set_viewEv.exit: ; preds = %.thread410
  %i.aw = shl i64 %i.au, 1
  %i.ax = inttoptr i64 %i.aw to ptr               ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.ax, align 8, !tbaa !20306 ; 2 uses
  %.sroa.3.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %.sroa.3.0.copyload.i.i.i = load i64, ptr %.sroa.3.0..sroa_idx.i.i.i, align 8, !tbaa !20214 ; 2 uses
  %.not.i159 = icmp eq i64 %.sroa.3.0.copyload.i.i.i, 0
  br i1 %.not.i159, label %_ZNK5folly28RegexMatchCacheDynamicBitset14index_set_view5beginEv.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %.thread410, %_ZNK5folly28RegexMatchCacheDynamicBitset17as_index_set_viewEv.exit
  %.sroa.0.0.i.i.i653 = phi ptr [ %.sroa.0.0.copyload.i.i.i, %_ZNK5folly28RegexMatchCacheDynamicBitset17as_index_set_viewEv.exit ], [ %i.at, %.thread410 ] ; 3 uses
  %.sroa.3.0.i.i.i651 = phi i64 [ %.sroa.3.0.copyload.i.i.i, %_ZNK5folly28RegexMatchCacheDynamicBitset17as_index_set_viewEv.exit ], [ 64, %.thread410 ] ; 3 uses
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %bb.c
  %.01422.i.i.i = phi i64 [ %i.bg, %bb.c ], [ 0, %.lr.ph.i.i.i.preheader ] ; 4 uses
  %i.ay = lshr i64 %.01422.i.i.i, 6
  %i.az = and i64 %.01422.i.i.i, 63
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.i.i.i653, i64 %i.ay
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !20214, !noalias !22645
  %i.bc = lshr i64 %i.bb, %i.az                   ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.bc, 0
  br i1 %.not.i.i.i, label %bb.c, label %.thread.i.i.i

.thread.i.i.i:                                    ; preds = %.lr.ph.i.i.i
  %i.bd = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.bc, i1 true)
  %i.be = add i64 %i.bd, %.01422.i.i.i
  br label %_ZNK5folly28RegexMatchCacheDynamicBitset14index_set_view5beginEv.exit

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.bf = and i64 %.01422.i.i.i, -64
  %i.bg = add i64 %i.bf, 64                       ; 3 uses
  %i.bh = icmp ult i64 %i.bg, %.sroa.3.0.i.i.i651
  br i1 %i.bh, label %.lr.ph.i.i.i, label %_ZNK5folly28RegexMatchCacheDynamicBitset14index_set_view5beginEv.exit, !llvm.loop !742

_ZNK5folly28RegexMatchCacheDynamicBitset14index_set_view5beginEv.exit: ; preds = %bb.c, %_ZNK5folly28RegexMatchCacheDynamicBitset17as_index_set_viewEv.exit, %.thread.i.i.i
  %.sroa.0.0.i.i.i654 = phi ptr [ %.sroa.0.0.i.i.i653, %.thread.i.i.i ], [ %.sroa.0.0.copyload.i.i.i, %_ZNK5folly28RegexMatchCacheDynamicBitset17as_index_set_viewEv.exit ], [ %.sroa.0.0.i.i.i653, %bb.c ]
  %.sroa.3.0.i.i.i652 = phi i64 [ %.sroa.3.0.i.i.i651, %.thread.i.i.i ], [ 0, %_ZNK5folly28RegexMatchCacheDynamicBitset17as_index_set_viewEv.exit ], [ %.sroa.3.0.i.i.i651, %bb.c ] ; 4 uses
  %.2.i.i.i = phi i64 [ %i.be, %.thread.i.i.i ], [ 0, %_ZNK5folly28RegexMatchCacheDynamicBitset17as_index_set_viewEv.exit ], [ %i.bg, %bb.c ] ; 2 uses
  %.not500562 = icmp eq i64 %.2.i.i.i, %.sroa.3.0.i.i.i652
  br i1 %.not500562, label %.noexc95, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK5folly28RegexMatchCacheDynamicBitset14index_set_view5beginEv.exit
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.bo = ptrtoint ptr %1 to i64                  ; 2 uses
  br label %bb.h

.noexc95:                                         ; preds = %_ZN5folly28RegexMatchCacheDynamicBitset14index_set_view14const_iteratorppEv.exit, %_ZNK5folly28RegexMatchCacheDynamicBitset14index_set_view5beginEv.exit
  %.neg.i.i.i = mul nsw i64 %.sroa.7325.1416, -16 ; 2 uses
  %i.bp = getelementptr i8, ptr %.sroa.0324.1415, i64 %.neg.i.i.i
  %i.bq = getelementptr i8, ptr %i.bp, i64 -2
  %i.br = load i8, ptr %i.bq, align 2, !tbaa !20266
  %.not.i169 = icmp ult i8 %i.br, 16
  br i1 %.not.i169, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.noexc95
  %i.bs = load ptr, ptr %.sroa.0324.1415, align 8, !tbaa !20303
  %i.bt = ptrtoint ptr %i.bs to i64               ; 2 uses
  %i.bu = tail call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 0, i64 %i.bt) ; 2 uses
  %i.bv = lshr i64 %i.bu, 24
  %i.bw = or i64 %i.bv, 128
  %i.bx = add i64 %i.bu, %i.bt
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.noexc95
  %.sroa.5.0.i = phi i64 [ 0, %.noexc95 ], [ %i.bw, %bb.d ]
  %.sroa.04.0.i = phi i64 [ 0, %.noexc95 ], [ %i.bx, %bb.d ]
  invoke void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEvvvEEE9eraseImplENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKSB_SD_EEEEESI_ImmE(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr nonnull %.sroa.0324.1415, i64 %.sroa.7325.1416, i64 %.sroa.04.0.i, i64 %.sroa.5.0.i)
          to label %.noexc106 unwind label %_ZN5folly6detail14ScopeGuardImplISt5_BindIFMNS_15RegexMatchCacheEDoFvvEPS3_EELb1EED2Ev.exit257.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc106:                                        ; preds = %bb.e
  %i.by = getelementptr inbounds i8, ptr %.sroa.0324.1415, i64 -16
  %i.bz = getelementptr inbounds i8, ptr %i.by, i64 %.neg.i.i.i ; 2 uses
  %.not19.i.i753 = icmp eq i64 %.sroa.7325.1416, 0
  br i1 %.not19.i.i753, label %.preheader514.preheader, label %.lr.ph755

.preheader514.preheader:                          ; preds = %bb.f, %.noexc106
  br label %.preheader514

bb.f:                                             ; preds = %.lr.ph755
  %.not19.i.i = icmp eq i64 %i.ca, 0
  br i1 %.not19.i.i, label %.preheader514.preheader, label %.lr.ph755, !llvm.loop !745

.lr.ph755:                                        ; preds = %.noexc106, %bb.f
  %.sroa.10349.0754 = phi i64 [ %i.ca, %bb.f ], [ %.sroa.7325.1416, %.noexc106 ]
  %i.ca = add nsw i64 %.sroa.10349.0754, -1       ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.ca
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !20220
  %.not501 = icmp eq i8 %i.cc, 0
  br i1 %.not501, label %bb.f, label %.thread405, !prof !20221, !llvm.loop !745

bb.g:                                             ; preds = %.noexc107
end_hunk_8
begin_hunk_9_@_ZN5folly15RegexMatchCache20prepareToFindMatchesERKNS_25RegexMatchCacheKeyAndViewE:bb.a
_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.al, %bb.ak
  %.0.i.i.i.i.i.i = phi i32 [ %i.ct, %bb.ak ], [ %i.dd, %bb.al ]
  %i.de = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.de, label %bb.am, label %_ZN5folly15RegexMatchCache11RegexObjectD2Ev.exit, !prof !20221

bb.am:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cp) #40
  br label %_ZN5folly15RegexMatchCache11RegexObjectD2Ev.exit

_ZN5folly15RegexMatchCache11RegexObjectD2Ev.exit: ; preds = %._crit_edge706, %bb.ai, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #40
  br label %_ZN5folly6detail14ScopeGuardImplISt5_BindIFMNS_15RegexMatchCacheEDoFvvEPS3_EELb1EED2Ev.exit

bb.an:                                            ; preds = %bb.af
  %i.df = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

_ZN5folly3f146detail22ValueContainerIteratorIPSt4pairIKPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEEEppEv.exit: ; preds = %_ZN5folly3f146detail22ValueContainerIteratorIPSt4pairIKPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEEEppEv.exit.backedge, %.lr.ph705
  %.sroa.0414.0703 = phi ptr [ %i.cj, %.lr.ph705 ], [ %.sroa.0414.0703.be, %_ZN5folly3f146detail22ValueContainerIteratorIPSt4pairIKPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEEEppEv.exit.backedge ] ; 6 uses
  %.sroa.9417.0702 = phi i64 [ %i.ck, %.lr.ph705 ], [ %.sroa.9417.0702.be, %_ZN5folly3f146detail22ValueContainerIteratorIPSt4pairIKPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEEEppEv.exit.backedge ] ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.0414.0703, i64 8 ; 5 uses
  %i.dh = load ptr, ptr %.sroa.0414.0703, align 8, !tbaa !20303 ; 2 uses
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !20210
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !20211
  %i.dl = invoke noundef zeroext i1 @_ZNK5folly15RegexMatchCache11RegexObjectclESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %13, i64 %i.dk, ptr %i.di)
          to label %bb.ao unwind label %bb.bk

bb.ao:                                            ; preds = %_ZN5folly3f146detail22ValueContainerIteratorIPSt4pairIKPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEEEppEv.exit
  br i1 %i.dl, label %bb.ap, label %bb.bl

bb.ap:                                            ; preds = %bb.ao
  %i.dm = load ptr, ptr %.sroa.0414.0703, align 8, !tbaa !20303, !noalias !22697 ; 2 uses
  %i.dn = ptrtoint ptr %i.dm to i64               ; 2 uses
  %i.do = call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 0, i64 %i.dn) ; 2 uses
  %i.dp = lshr i64 %i.do, 24
  %i.dq = or i64 %i.dp, 128                       ; 4 uses
  %i.dr = add i64 %i.do, %i.dn                    ; 3 uses
  %i.ds = load i64, ptr %i.cm, align 8, !tbaa !20233, !noalias !22698 ; 4 uses
  %i.dt = lshr i64 %i.ds, 8                       ; 3 uses
  %.not.i795 = icmp eq i64 %i.dt, 0
  br i1 %.not.i795, label %..thread64_crit_edge.i, label %bb.aq

..thread64_crit_edge.i:                           ; preds = %bb.ap
  %.pre.i = load ptr, ptr %i.cn, align 8, !tbaa !20259, !noalias !22698
  %.pre83.i = shl nuw i64 1, %i.ds
  br label %.thread64.i

bb.aq:                                            ; preds = %bb.ap
  %i.du = shl nuw nsw i64 %i.dq, 1
  %i.dv = or disjoint i64 %i.du, 1
  %i.dw = trunc nuw i64 %i.dq to i8
  %i.dx = insertelement <16 x i8> poison, i8 %i.dw, i64 0
  %i.dy = shufflevector <16 x i8> %i.dx, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.dz = and i64 %i.ds, 255                      ; 4 uses
  %i.ea = shl nuw i64 1, %i.dz                    ; 3 uses
  %i.eb = load ptr, ptr %i.cn, align 8, !tbaa !20259, !noalias !22698 ; 3 uses
  br label %bb.ar

bb.ar:                                            ; preds = %bb.au, %bb.aq
  %.022.i75.i = phi i64 [ %i.ea, %bb.aq ], [ %i.ey, %bb.au ]
  %.024.i74.i = phi i64 [ %i.dr, %bb.aq ], [ %i.ez, %bb.au ] ; 2 uses
  %i.ec = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.024.i74.i, i64 range(i64 0, 256) %i.dz)
  %i.ed = getelementptr inbounds nuw [64 x i8], ptr %i.eb, i64 %i.ec ; 3 uses
  %i.ee = load <16 x i8>, ptr %i.ed, align 16, !noalias !22698 ; 2 uses
  %i.ef = icmp eq <16 x i8> %i.ee, %i.dy
  %i.eg = bitcast <16 x i1> %i.ef to i16
  %i.eh = and i16 %i.eg, 4095
  %i.ei = zext nneg i16 %i.eh to i32
  %i.ej = icmp ne ptr %i.ed, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ed, i64 16
  %i.el = extractelement <16 x i8> %i.ee, i64 15
  br label %.critedge.i.i796

.critedge.i.i796:                                 ; preds = %bb.as, %bb.ar
  %.sroa.040.0.i = phi i32 [ %i.ei, %bb.ar ], [ %i.eo, %bb.as ] ; 4 uses
  %.not66.i = icmp eq i32 %.sroa.040.0.i, 0
  br i1 %.not66.i, label %bb.at, label %bb.as

bb.as:                                            ; preds = %.critedge.i.i796
  %i.em = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.040.0.i, i1 true)
  %i.en = add nuw nsw i32 %.sroa.040.0.i, 4095
  %i.eo = and i32 %i.en, %.sroa.040.0.i
  %i.ep = zext nneg i32 %i.em to i64
  call void @llvm.assume(i1 %i.ej)
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %i.ek, i64 %i.ep
  %i.er = load ptr, ptr %i.cl, align 8, !tbaa !20809, !noalias !22698
  %i.es = load i32, ptr %i.eq, align 4, !tbaa !20326, !noalias !22698
  %i.et = zext i32 %i.es to i64
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.er, i64 %i.et
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !20303, !noalias !22698
  %i.ew = icmp eq ptr %i.dm, %i.ev
  br i1 %i.ew, label %.noexc289, label %.critedge.i.i796, !prof !20223, !llvm.loop !786

bb.at:                                            ; preds = %.critedge.i.i796
  %i.ex = icmp eq i8 %i.el, 0
  br i1 %i.ex, label %.thread64.i, label %bb.au, !prof !20223

bb.au:                                            ; preds = %bb.at
  %i.ey = add i64 %.022.i75.i, -1                 ; 2 uses
  %i.ez = add i64 %i.dv, %.024.i74.i
  %.not.i.i797 = icmp eq i64 %i.ey, 0
  br i1 %.not.i.i797, label %.thread64.i, label %bb.ar, !llvm.loop !787

.thread64.i:                                      ; preds = %bb.au, %bb.at, %..thread64_crit_edge.i
  %.pre-phi84.i = phi i64 [ %.pre83.i, %..thread64_crit_edge.i ], [ %i.ea, %bb.at ], [ %i.ea, %bb.au ] ; 2 uses
  %.pre-phi.i = phi i64 [ %i.ds, %..thread64_crit_edge.i ], [ %i.dz, %bb.at ], [ %i.dz, %bb.au ]
  %i.fa = phi ptr [ %.pre.i, %..thread64_crit_edge.i ], [ %i.eb, %bb.at ], [ %i.eb, %bb.au ] ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 12
  %.0.copyload.i.i.i = load i16, ptr %i.fb, align 1, !noalias !22698
  %i.fc = zext i16 %.0.copyload.i.i.i to i64      ; 2 uses
  %i.fd = add i64 %.pre-phi84.i, -1
  %i.fe = lshr i64 %i.fd, 12
  %i.ff = add nuw nsw i64 %i.fe, 1
  %i.fg = mul i64 %i.ff, %i.fc                    ; 2 uses
  %.not.i30.i = icmp ult i64 %i.dt, %i.fg
  br i1 %.not.i30.i, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb0EEEEE16reserveForInsertEm.exit.i, label %bb.av

bb.av:                                            ; preds = %.thread64.i
  invoke void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb0EEEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(24) %i.cl, i64 noundef %i.dt, i64 noundef %.pre-phi84.i, i64 noundef %i.fc, i64 noundef %i.fg)
          to label %.noexc unwind label %bb.bk

.noexc:                                           ; preds = %bb.av
  %.pre80.i = load ptr, ptr %i.cn, align 8, !tbaa !20259, !noalias !22698
  %.pre81.i = load i64, ptr %i.cm, align 8, !tbaa !20233, !noalias !22698
  %.pre85.i = and i64 %.pre81.i, 255
  br label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb0EEEEE16reserveForInsertEm.exit.i

_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb0EEEEE16reserveForInsertEm.exit.i: ; preds = %.noexc, %.thread64.i
  %.pre-phi86.i = phi i64 [ %.pre-phi.i, %.thread64.i ], [ %.pre85.i, %.noexc ] ; 2 uses
  %i.fh = phi ptr [ %i.fa, %.thread64.i ], [ %.pre80.i, %.noexc ] ; 3 uses
  %i.fi = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %i.dr, i64 range(i64 0, 256) %.pre-phi86.i) ; 2 uses
  %i.fj = getelementptr inbounds nuw [64 x i8], ptr %i.fh, i64 %i.fi ; 2 uses
  %i.fk = load <16 x i8>, ptr %i.fj, align 16, !tbaa !20220, !noalias !22698
  %i.fl = icmp slt <16 x i8> %i.fk, zeroinitializer
  %i.fm = bitcast <16 x i1> %i.fl to i16
  %i.fn = and i16 %i.fm, 4095                     ; 2 uses
  %.not67.i = icmp eq i16 %i.fn, 4095
  br i1 %.not67.i, label %bb.aw, label %bb.ba

bb.aw:                                            ; preds = %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb0EEEEE16reserveForInsertEm.exit.i
  %i.fo = shl nuw nsw i64 %i.dq, 1
  %i.fp = or disjoint i64 %i.fo, 1
  br label %bb.ax

bb.ax:                                            ; preds = %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit.i, %bb.aw
  %i.fq = phi i64 [ %i.fi, %bb.aw ], [ %i.fw, %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit.i ]
  %.028.i = phi i64 [ %i.dr, %bb.aw ], [ %i.fv, %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit.i ]
  %i.fr = getelementptr inbounds nuw [64 x i8], ptr %i.fh, i64 %i.fq
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 15 ; 2 uses
  %i.ft = load i8, ptr %i.fs, align 1, !tbaa !20823, !noalias !22698 ; 2 uses
  %.not.i31.i = icmp eq i8 %i.ft, -2
  br i1 %.not.i31.i, label %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit.i, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.fu = add i8 %i.ft, 1
  store i8 %i.fu, ptr %i.fs, align 1, !tbaa !20823, !noalias !22698
  br label %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit.i

_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit.i: ; preds = %bb.ay, %bb.ax
  %i.fv = add i64 %i.fp, %.028.i                  ; 2 uses
  %i.fw = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %i.fv, i64 range(i64 0, 256) %.pre-phi86.i) ; 2 uses
  %i.fx = getelementptr inbounds nuw [64 x i8], ptr %i.fh, i64 %i.fw ; 3 uses
  %i.fy = load <16 x i8>, ptr %i.fx, align 16, !noalias !22698 ; 2 uses
  %i.fz = icmp slt <16 x i8> %i.fy, zeroinitializer
  %i.ga = bitcast <16 x i1> %i.fz to i16
  %i.gb = and i16 %i.ga, 4095                     ; 2 uses
  %.not68.i = icmp eq i16 %i.gb, 4095
  br i1 %.not68.i, label %bb.ax, label %bb.az, !llvm.loop !797

bb.az:                                            ; preds = %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit.i
  %i.gc = extractelement <16 x i8> %i.fy, i64 14
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fx, i64 14
  %i.ge = add i8 %i.gc, 16
  store i8 %i.ge, ptr %i.gd, align 2, !tbaa !20824, !noalias !22698
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb0EEEEE16reserveForInsertEm.exit.i
  %.sroa.034.0.in.in.i = phi i16 [ %i.fn, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb0EEEEE16reserveForInsertEm.exit.i ], [ %i.gb, %bb.az ]
  %.1.i = phi ptr [ %i.fj, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb0EEEEE16reserveForInsertEm.exit.i ], [ %i.fx, %bb.az ] ; 3 uses
  %.sroa.034.0.in.i = xor i16 %.sroa.034.0.in.in.i, 4095
  %i.gf = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.034.0.in.i, i1 true)
  %i.gg = zext nneg i16 %i.gf to i64              ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %.1.i, i64 %i.gg ; 2 uses
  %i.gi = load i8, ptr %i.gh, align 1, !tbaa !20220, !noalias !22698
  %i.gj = icmp eq i8 %i.gi, 0
  br i1 %i.gj, label %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit.i, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIjE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.15) #48, !noalias !22698
  unreachable

_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit.i: ; preds = %bb.ba
  %i.gk = trunc nuw i64 %i.dq to i8
  store i8 %i.gk, ptr %i.gh, align 1, !tbaa !20220, !noalias !22698
  %i.gl = getelementptr inbounds nuw i8, ptr %.1.i, i64 16
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %i.gl, i64 %i.gg
  %i.gn = icmp ne ptr %.1.i, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.gn)
  %i.go = load i64, ptr %i.cm, align 8, !tbaa !20233, !noalias !22698 ; 2 uses
  %i.gp = lshr i64 %i.go, 8                       ; 2 uses
  %i.gq = trunc i64 %i.gp to i32
  store i32 %i.gq, ptr %i.gm, align 4, !tbaa !20326, !noalias !22698
  %i.gr = load ptr, ptr %i.cl, align 8, !tbaa !20809, !noalias !22698, !nonnull !1767, !noundef !1767
  %i.gs = and i64 %i.gp, 4294967295
  %i.gt = getelementptr inbounds nuw [8 x i8], ptr %i.gr, i64 %i.gs
  %i.gu = load ptr, ptr %.sroa.0414.0703, align 8, !tbaa !20303, !noalias !22698
  store ptr %i.gu, ptr %i.gt, align 8, !tbaa !20303, !noalias !22698
  %i.gv = add i64 %i.go, 256
  store i64 %i.gv, ptr %i.cm, align 8, !tbaa !20233, !noalias !22698
  br label %.noexc289

.noexc289:                                        ; preds = %bb.as, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit.i
  %i.gw = load i64, ptr %7, align 8, !tbaa !20214 ; 5 uses
  %i.gx = load i64, ptr %i.dg, align 8, !tbaa !20214 ; 2 uses
  %i.gy = icmp slt i64 %i.gx, 0
  br i1 %i.gy, label %bb.bc, label %_ZN5folly28RegexMatchCacheDynamicBitset13get_bit_span_Ev.exit.i

bb.bc:                                            ; preds = %.noexc289
  %i.gz = shl i64 %i.gx, 1
  %i.ha = inttoptr i64 %i.gz to ptr               ; 2 uses
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.ha, align 8, !tbaa !20306
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ha, i64 8
  %.sroa.3.0.copyload.i.i = load i64, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !tbaa !20214
  br label %_ZN5folly28RegexMatchCacheDynamicBitset13get_bit_span_Ev.exit.i

_ZN5folly28RegexMatchCacheDynamicBitset13get_bit_span_Ev.exit.i: ; preds = %bb.bc, %.noexc289
  %.sroa.3.0.i.i = phi i64 [ %.sroa.3.0.copyload.i.i, %bb.bc ], [ 64, %.noexc289 ] ; 2 uses
  %.sroa.0.0.i.i = phi ptr [ %.sroa.0.0.copyload.i.i, %bb.bc ], [ %i.dg, %.noexc289 ]
  %i.hb = icmp ult i64 %i.gw, %.sroa.3.0.i.i
  br i1 %i.hb, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %_ZN5folly28RegexMatchCacheDynamicBitset13get_bit_span_Ev.exit.i
  %i.hc = icmp eq i64 %.sroa.3.0.i.i, 64
  %i.hd = icmp eq i64 %i.gw, 63
  %or.cond.i = and i1 %i.hd, %i.hc
  br i1 %or.cond.i, label %bb.be, label %_ZN5folly28RegexMatchCacheDynamicBitset9set_valueEmb.exit

bb.be:                                            ; preds = %bb.bd, %_ZN5folly28RegexMatchCacheDynamicBitset13get_bit_span_Ev.exit.i
  %i.he = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.gw, i1 false)
  %i.hf = sub nsw i64 0, %i.he
  %i.hg = and i64 %i.hf, 63
  %i.hh = shl nuw i64 1, %i.hg
  %.sroa.speculated.i = call i64 @llvm.umax.i64(i64 %i.hh, i64 128) ; 4 uses
  %i.hi = and i64 %.sroa.speculated.i, -8
  %i.hj = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.hi) #44
          to label %.noexc804 unwind label %bb.bk ; 6 uses

.noexc804:                                        ; preds = %bb.be
  %i.hk = load i64, ptr %i.dg, align 8, !tbaa !20214 ; 3 uses
  %i.hl = icmp slt i64 %i.hk, 0                   ; 2 uses
  br i1 %i.hl, label %_ZN5folly28RegexMatchCacheDynamicBitset13get_bit_span_Ev.exit.i799, label %.thread.i

_ZN5folly28RegexMatchCacheDynamicBitset13get_bit_span_Ev.exit.i799: ; preds = %.noexc804
  %i.hm = shl i64 %i.hk, 1
  %i.hn = inttoptr i64 %i.hm to ptr               ; 2 uses
  %.sroa.0.0.copyload.i.i800 = load ptr, ptr %i.hn, align 8, !tbaa !20306 ; 3 uses
  %.sroa.3.0..sroa_idx.i.i801 = getelementptr inbounds nuw i8, ptr %i.hn, i64 8
  %.sroa.3.0.copyload.i.i802 = load i64, ptr %.sroa.3.0..sroa_idx.i.i801, align 8, !tbaa !20214 ; 2 uses
  %.not.i.i803 = icmp eq i64 %.sroa.3.0.copyload.i.i802, 0
  br i1 %.not.i.i803, label %_ZN5folly10nextPowTwoImEET_S1_.exit.i, label %bb.bf

bb.bf:                                            ; preds = %_ZN5folly28RegexMatchCacheDynamicBitset13get_bit_span_Ev.exit.i799
  %i.ho = add i64 %.sroa.3.0.copyload.i.i802, -1  ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.ho, 0
  br i1 %.not.i.i.i, label %_ZN5folly11findLastSetImEEjT_.exit.i.i, label %.thread.i

.thread.i:                                        ; preds = %bb.bf, %.noexc804
  %i.hp = phi i64 [ %i.ho, %bb.bf ], [ 63, %.noexc804 ]
  %.sroa.0.0.i2934.i = phi ptr [ %.sroa.0.0.copyload.i.i800, %bb.bf ], [ %i.dg, %.noexc804 ]
  %i.hq = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.hp, i1 true)
  %i.hr = sub nuw nsw i64 64, %i.hq
  br label %_ZN5folly11findLastSetImEEjT_.exit.i.i

_ZN5folly11findLastSetImEEjT_.exit.i.i:           ; preds = %.thread.i, %bb.bf
  %.sroa.0.0.i2935.i = phi ptr [ %.sroa.0.0.i2934.i, %.thread.i ], [ %.sroa.0.0.copyload.i.i800, %bb.bf ]
  %i.hs = phi i64 [ %i.hr, %.thread.i ], [ 0, %bb.bf ]
  %i.ht = shl nuw i64 1, %i.hs
  br label %_ZN5folly10nextPowTwoImEET_S1_.exit.i

_ZN5folly10nextPowTwoImEET_S1_.exit.i:            ; preds = %_ZN5folly11findLastSetImEEjT_.exit.i.i, %_ZN5folly28RegexMatchCacheDynamicBitset13get_bit_span_Ev.exit.i799
  %.sroa.0.0.i30.i = phi ptr [ %.sroa.0.0.i2935.i, %_ZN5folly11findLastSetImEEjT_.exit.i.i ], [ %.sroa.0.0.copyload.i.i800, %_ZN5folly28RegexMatchCacheDynamicBitset13get_bit_span_Ev.exit.i799 ]
  %i.hu = phi i64 [ %i.ht, %_ZN5folly11findLastSetImEEjT_.exit.i.i ], [ 1, %_ZN5folly28RegexMatchCacheDynamicBitset13get_bit_span_Ev.exit.i799 ] ; 3 uses
  %i.hv = lshr i64 %i.hu, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.hj, ptr align 8 %.sroa.0.0.i30.i, i64 %i.hv, i1 false)
  %i.hw = lshr i64 %i.hu, 6
  %i.hx = getelementptr inbounds nuw [8 x i8], ptr %i.hj, i64 %i.hw
  %i.hy = sub i64 %.sroa.speculated.i, %i.hu
  %i.hz = lshr i64 %i.hy, 3
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.hx, i8 0, i64 %i.hz, i1 false)
  br i1 %i.hl, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %_ZN5folly10nextPowTwoImEET_S1_.exit.i
  %i.ia = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #44
          to label %.noexc805 unwind label %bb.bk ; 3 uses

.noexc805:                                        ; preds = %bb.bg
  store ptr %i.hj, ptr %i.ia, align 8, !tbaa !20217
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 8
  store i64 %.sroa.speculated.i, ptr %i.ib, align 8, !tbaa !20820
  %i.ic = ptrtoint ptr %i.ia to i64
  %i.id = lshr i64 %i.ic, 1
  %i.ie = or disjoint i64 %i.id, -9223372036854775808
  store i64 %i.ie, ptr %i.dg, align 8, !tbaa !20219
  br label %_ZN5folly28RegexMatchCacheDynamicBitset9set_valueEmb.exit

bb.bh:                                            ; preds = %_ZN5folly10nextPowTwoImEET_S1_.exit.i
  %i.if = shl i64 %i.hk, 1
  %i.ig = inttoptr i64 %i.if to ptr               ; 3 uses
  %i.ih = load ptr, ptr %i.ig, align 8, !tbaa !20217 ; 2 uses
  %i.ii = icmp eq ptr %i.ih, null
  br i1 %i.ii, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  call void @_ZdaPv(ptr noundef nonnull %i.ih) #41
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  store ptr %i.hj, ptr %i.ig, align 8, !tbaa !20306
  %.sroa.4.0..sroa_idx.i798 = getelementptr inbounds nuw i8, ptr %i.ig, i64 8
  store i64 %.sroa.speculated.i, ptr %.sroa.4.0..sroa_idx.i798, align 8, !tbaa !20214
  br label %_ZN5folly28RegexMatchCacheDynamicBitset9set_valueEmb.exit

_ZN5folly28RegexMatchCacheDynamicBitset9set_valueEmb.exit: ; preds = %.noexc805, %bb.bj, %bb.bd
  %.pn.i290 = phi ptr [ %.sroa.0.0.i.i, %bb.bd ], [ %i.hj, %bb.bj ], [ %i.hj, %.noexc805 ]
  %i.ij = lshr i64 %i.gw, 6
  %i.ik = and i64 %i.gw, 63
  %i.il = shl nuw i64 1, %i.ik
  %i.im = getelementptr inbounds nuw [8 x i8], ptr %.pn.i290, i64 %i.ij ; 2 uses
  %i.in = load i64, ptr %i.im, align 8, !tbaa !20214
  %i.io = or i64 %i.in, %i.il
  store i64 %i.io, ptr %i.im, align 8, !tbaa !20214
  br label %bb.bl

bb.bk:                                            ; preds = %bb.bg, %bb.be, %bb.av, %_ZN5folly3f146detail22ValueContainerIteratorIPSt4pairIKPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEEEppEv.exit
  %i.ip = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5folly15RegexMatchCache11RegexObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %13) #40
  br label %bb.bp

bb.bl:                                            ; preds = %_ZN5folly28RegexMatchCacheDynamicBitset9set_valueEmb.exit, %bb.ao
  %i.iq = getelementptr inbounds i8, ptr %.sroa.0414.0703, i64 -16
  %.neg.i.i.i = mul nsw i64 %.sroa.9417.0702, -16
  %i.ir = getelementptr inbounds i8, ptr %i.iq, i64 %.neg.i.i.i ; 2 uses
  %.not19.i6.i = icmp eq i64 %.sroa.9417.0702, 0
  br i1 %.not19.i6.i, label %.critedge.i.i294.preheader, label %thread-pre-split.i

.critedge.i.i294.preheader:                       ; preds = %bb.bm, %bb.bl
  br label %.critedge.i.i294

bb.bm:                                            ; preds = %thread-pre-split.i
  %.not19.i.i293 = icmp eq i64 %i.iu, 0
  br i1 %.not19.i.i293, label %.critedge.i.i294.preheader, label %thread-pre-split.i

thread-pre-split.i:                               ; preds = %bb.bl, %bb.bm
  %i.is = phi i64 [ %i.iu, %bb.bm ], [ %.sroa.9417.0702, %bb.bl ]
  %i.it = phi ptr [ %i.iv, %bb.bm ], [ %.sroa.0414.0703, %bb.bl ]
  %i.iu = add nsw i64 %i.is, -1                   ; 4 uses
  %i.iv = getelementptr inbounds i8, ptr %i.it, i64 -16 ; 2 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %i.ir, i64 %i.iu
  %i.ix = load i8, ptr %i.iw, align 1, !tbaa !20220
  %.not.i292 = icmp eq i8 %i.ix, 0
  br i1 %.not.i292, label %bb.bm, label %_ZN5folly3f146detail22ValueContainerIteratorIPSt4pairIKPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEEEppEv.exit.backedge, !prof !20221, !llvm.loop !737

.critedge.i.i294:                                 ; preds = %.critedge.i.i294.preheader, %bb.bn
  %.017.i.i295 = phi ptr [ %i.jb, %bb.bn ], [ %i.ir, %.critedge.i.i294.preheader ] ; 4 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %.017.i.i295, i64 14
  %i.iz = load i8, ptr %i.iy, align 1, !tbaa !20220
  %i.ja = and i8 %i.iz, 15
  %.not2.i = icmp eq i8 %i.ja, 0
  br i1 %.not2.i, label %bb.bn, label %._crit_edge706, !prof !20223

bb.bn:                                            ; preds = %.critedge.i.i294
  %i.jb = getelementptr inbounds i8, ptr %.017.i.i295, i64 -256 ; 3 uses
  %i.jc = load <16 x i8>, ptr %i.jb, align 16, !tbaa !20220
  %i.jd = icmp slt <16 x i8> %i.jc, zeroinitializer
  %i.je = bitcast <16 x i1> %i.jd to i16
  %i.jf = and i16 %i.je, 16383                    ; 2 uses
  %i.jg = getelementptr inbounds i8, ptr %.017.i.i295, i64 -512
  call void @llvm.prefetch.p0(ptr nonnull %i.jg, i32 0, i32 3, i32 1)
  %.not3.i = icmp eq i16 %i.jf, 0
  br i1 %.not3.i, label %.critedge.i.i294, label %bb.bo, !prof !20221, !llvm.loop !738

bb.bo:                                            ; preds = %bb.bn
  %i.jh = zext nneg i16 %i.jf to i32
  %i.ji = call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.jh, i1 true)
  %i.jj = xor i32 %i.ji, 31
  %i.jk = zext nneg i32 %i.jj to i64              ; 2 uses
  %i.jl = icmp ne ptr %i.jb, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.jl)
  %i.jm = getelementptr inbounds i8, ptr %.017.i.i295, i64 -240
  %i.jn = getelementptr inbounds nuw [16 x i8], ptr %i.jm, i64 %i.jk
  br label %_ZN5folly3f146detail22ValueContainerIteratorIPSt4pairIKPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEEEppEv.exit.backedge

_ZN5folly3f146detail22ValueContainerIteratorIPSt4pairIKPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEEEppEv.exit.backedge: ; preds = %thread-pre-split.i, %bb.bo
  %.sroa.0414.0703.be = phi ptr [ %i.jn, %bb.bo ], [ %i.iv, %thread-pre-split.i ]
  %.sroa.9417.0702.be = phi i64 [ %i.jk, %bb.bo ], [ %i.iu, %thread-pre-split.i ]
  br label %_ZN5folly3f146detail22ValueContainerIteratorIPSt4pairIKPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEEEppEv.exit

bb.bp:                                            ; preds = %bb.bk, %bb.an
  %.pn127.pn = phi { ptr, i32 } [ %i.ip, %bb.bk ], [ %i.df, %bb.an ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #40
  br label %_ZN5folly3f146detail11F14BasicSetINS1_21VectorContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb0EEEEED2Ev.exit

bb.bq:                                            ; preds = %_ZN6google12Check_EQImplIbbEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc.exit.thread
  br i1 %i.t, label %_ZN5folly6detail14ScopeGuardImplISt5_BindIFMNS_15RegexMatchCacheEDoFvvEPS3_EELb1EED2Ev.exit, label %.noexc149

.noexc149:                                        ; preds = %bb.bq
  %i.jo = load ptr, ptr %i.a, align 8, !tbaa !20309 ; 2 uses
  %i.jp = ptrtoint ptr %i.jo to i64               ; 2 uses
end_hunk_9
