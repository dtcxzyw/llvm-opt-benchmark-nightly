Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/mdtest-6d13eae5d4aac296.mdtest.f417265bba566f7e-cgu.01?download=true
inline.NumInlined: 420
inline.NumDeleted: 232
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RNvNtCskXhPDodhyTq_6mdtest7matcher10match_file:bb.a
  %i.aau = sub i64 %i.yl, %i.aat
  %invariant.op = sub i64 1, %i.aas
  br label %bb.iq

bb.iq:                                            ; preds = %.sink.split.i.i.i.i.i.i.i, %.lr.ph.i14.i.i.i.i.i.i
  %i.aav = phi i64 [ %.promoted.i11.i.i.i.i.i.i, %.lr.ph.i14.i.i.i.i.i.i ], [ %.ph71.i.i.i.i.i.i.i, %.sink.split.i.i.i.i.i.i.i ] ; 6 uses
  %i.aaw = phi i64 [ %i.yg, %.lr.ph.i14.i.i.i.i.i.i ], [ %.sink.i.i.i.i.i.i.i, %.sink.split.i.i.i.i.i.i.i ] ; 3 uses
  %i.aax = phi i64 [ %i.aap, %.lr.ph.i14.i.i.i.i.i.i ], [ %i.abg, %.sink.split.i.i.i.i.i.i.i ]
  %i.aay = getelementptr inbounds nuw i8, ptr %i.yi, i64 %i.aax
  %i.aaz = load i8, ptr %i.aay, align 1, !alias.scope !839, !noalias !807, !noundef !7
  %i.aba = and i8 %i.aaz, 63
  %i.abb = zext nneg i8 %i.aba to i64
  %i.abc = shl nuw i64 1, %i.abb
  %i.abd = and i64 %i.abc, %i.aar
  %i.abe = icmp eq i64 %i.abd, 0
  br i1 %i.abe, label %bb.ir, label %bb.is

bb.ir:                                            ; preds = %bb.iq
  %i.abf = add i64 %i.aav, %i.yl
  br label %.sink.split.i.i.i.i.i.i.i

bb.is:                                            ; preds = %bb.iq
  %.sroa.0.0.i.i.i.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.aaw, i64 %i.aas) ; 4 uses
  %umax49.i.i.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %.sroa.0.0.i.i.i.i.i.i.i.i, i64 range(i64 0, -9223372036854775808) %i.yl)
  %exitcond.not.i15.i.i.i.i.i.i1758.not = icmp ult i64 %.sroa.0.0.i.i.i.i.i.i.i.i, %i.yl
  br i1 %exitcond.not.i15.i.i.i.i.i.i1758.not, label %.lr.ph1761, label %.preheader35.i.i.i.i.i.i.preheader

.sink.split.i.i.i.i.i.i.i:                        ; preds = %bb.iz, %bb.iw, %bb.ir
  %.sink.i.i.i.i.i.i.i = phi i64 [ %i.aau, %bb.iw ], [ 0, %bb.iz ], [ 0, %bb.ir ]
  %.ph71.i.i.i.i.i.i.i = phi i64 [ %i.abv, %bb.iw ], [ %i.acb, %bb.iz ], [ %i.abf, %bb.ir ] ; 2 uses
  %i.abg = add i64 %.ph71.i.i.i.i.i.i.i, %i.ym    ; 2 uses
  %i.abh = icmp ult i64 %i.abg, %i.yj
  br i1 %i.abh, label %bb.iq, label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i.i.i.i.i

bb.it:                                            ; preds = %bb.ix
  %i.abi = add nuw i64 %.sroa.02.0.i.i.i.i.i.i.i1759, 1 ; 2 uses
  %exitcond.not.i15.i.i.i.i.i.i = icmp eq i64 %i.abi, %umax49.i.i.i.i.i.i.i
  br i1 %exitcond.not.i15.i.i.i.i.i.i, label %.preheader35.i.i.i.i.i.i.preheader, label %.lr.ph1761

.preheader35.i.i.i.i.i.i.preheader:               ; preds = %bb.it, %bb.is
  %i.abj = icmp ult i64 %i.aaw, %i.aas
  br i1 %i.abj, label %.lr.ph1763, label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i.i.i.i.i

.lr.ph1761:                                       ; preds = %bb.is, %bb.it
  %.sroa.02.0.i.i.i.i.i.i.i1759 = phi i64 [ %i.abi, %bb.it ], [ %.sroa.0.0.i.i.i.i.i.i.i.i, %bb.is ] ; 4 uses
  %i.abk = add i64 %.sroa.02.0.i.i.i.i.i.i.i1759, %i.aav ; 2 uses
  %i.abl = icmp ult i64 %i.abk, %i.yj
  br i1 %i.abl, label %bb.ix, label %bb.iy

.preheader35.i.i.i.i.i.i:                         ; preds = %bb.iv
  %i.abm = icmp ult i64 %i.aaw, %i.abn
  br i1 %i.abm, label %.lr.ph1763, label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i.i.i.i.i

.lr.ph1763:                                       ; preds = %.preheader35.i.i.i.i.i.i.preheader, %.preheader35.i.i.i.i.i.i
  %.sroa.2.0.i.i.i.i.i.i.i1762 = phi i64 [ %i.abn, %.preheader35.i.i.i.i.i.i ], [ %i.aas, %.preheader35.i.i.i.i.i.i.preheader ]
  %i.abn = add i64 %.sroa.2.0.i.i.i.i.i.i.i1762, -1 ; 6 uses
  %i.abo = icmp ult i64 %i.abn, %i.yl
  br i1 %i.abo, label %bb.iu, label %.invoke.i.i.i.i.i

bb.iu:                                            ; preds = %.lr.ph1763
  %i.abp = add i64 %i.abn, %i.aav                 ; 3 uses
  %i.abq = icmp ult i64 %i.abp, %i.yj
  br i1 %i.abq, label %bb.iv, label %.invoke.i.i.i.i.i

bb.iv:                                            ; preds = %bb.iu
  %i.abr = getelementptr inbounds nuw i8, ptr %i.yk, i64 %i.abn
  %i.abs = load i8, ptr %i.abr, align 1, !alias.scope !840, !noalias !807, !noundef !7
  %i.abt = getelementptr inbounds nuw i8, ptr %i.yi, i64 %i.abp
  %i.abu = load i8, ptr %i.abt, align 1, !alias.scope !839, !noalias !807, !noundef !7
  %.not.i16.i.i.i.i.i.i = icmp eq i8 %i.abs, %i.abu
  br i1 %.not.i16.i.i.i.i.i.i, label %.preheader35.i.i.i.i.i.i, label %bb.iw

bb.iw:                                            ; preds = %bb.iv
  %i.abv = add i64 %i.aav, %i.aat
  br label %.sink.split.i.i.i.i.i.i.i

bb.ix:                                            ; preds = %.lr.ph1761
  %i.abw = getelementptr inbounds nuw i8, ptr %i.yk, i64 %.sroa.02.0.i.i.i.i.i.i.i1759
  %i.abx = load i8, ptr %i.abw, align 1, !alias.scope !840, !noalias !807, !noundef !7
  %i.aby = getelementptr inbounds nuw i8, ptr %i.yi, i64 %i.abk
  %i.abz = load i8, ptr %i.aby, align 1, !alias.scope !839, !noalias !807, !noundef !7
  %.not21.i.i.i.i.i.i.i = icmp eq i8 %i.abx, %i.abz
  br i1 %.not21.i.i.i.i.i.i.i, label %bb.it, label %bb.iz

bb.iy:                                            ; preds = %.lr.ph1761
  %i.aca = add i64 %.sroa.0.0.i.i.i.i.i.i.i.i, %i.aav
  %umax.i.i.i.i.i.i.i = call i64 @llvm.umax.i64(i64 range(i64 0, -9223372036854775808) %i.yj, i64 %i.aca)
  br label %.invoke.i.i.i.i.i

bb.iz:                                            ; preds = %bb.ix
  %.reass.i.reass.i.reass.i.reass.i.reass.i.reass.i.reass.reass = add i64 %i.aav, %invariant.op
  %i.acb = add i64 %.reass.i.reass.i.reass.i.reass.i.reass.i.reass.i.reass.reass, %.sroa.02.0.i.i.i.i.i.i.i1759
  br label %.sink.split.i.i.i.i.i.i.i

_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i.i.i.i.i: ; preds = %.sink.split.i.i.i.i.i.i.i, %.preheader35.i.i.i.i.i.i.preheader, %bb.ik, %.preheader.i.us.i.i.i.i.i.preheader, %.preheader35.i.i.i.i.i.i, %.preheader.i.us.i.i.i.i.i, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXhPDodhyTq_6mdtest.exit12.i.i.i.i.i.i.i.i.i, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXhPDodhyTq_6mdtest.exit14.i.i.i.i.i.i.i.i.i, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXhPDodhyTq_6mdtest.exit16.i.i.i.i.i.i.i.i.i, %bb.ig, %bb.ip, %.preheader.i.i.i.i.i.i, %bb.ih, %bb.if, %bb.hx, %bb.hu, %.preheader.i4.i.i.i.i.i.i
  %.sroa.0.031.i.i.i.i.i.i = phi i8 [ 1, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXhPDodhyTq_6mdtest.exit12.i.i.i.i.i.i.i.i.i ], [ 0, %bb.ih ], [ 0, %.preheader.i4.i.i.i.i.i.i ], [ 1, %bb.if ], [ 1, %.preheader35.i.i.i.i.i.i ], [ 1, %bb.hx ], [ %.promoted26.i.i.i.i.i.i.i, %bb.hu ], [ 0, %bb.ip ], [ 0, %bb.ik ], [ 1, %.preheader.i.us.i.i.i.i.i ], [ 1, %.preheader.i.i.i.i.i.i ], [ 1, %bb.ig ], [ 1, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXhPDodhyTq_6mdtest.exit16.i.i.i.i.i.i.i.i.i ], [ 1, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXhPDodhyTq_6mdtest.exit14.i.i.i.i.i.i.i.i.i ], [ 1, %.preheader.i.us.i.i.i.i.i.preheader ], [ 0, %.sink.split.i.i.i.i.i.i.i ], [ 1, %.preheader35.i.i.i.i.i.i.preheader ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !826
  br label %.loopexit.i.i.i.i.i

bb.ja:                                            ; preds = %bb.ho
  call void @llvm.experimental.noalias.scope.decl(metadata !841)
  call void @llvm.experimental.noalias.scope.decl(metadata !842)
  %i.acc = load i8, ptr %i.ud, align 1, !alias.scope !843, !noalias !807, !noundef !7 ; 3 uses
  br i1 %i.uj, label %.thread.i.i.i.i.i.i.i, label %.lr.ph1757

.preheader.i.i.i:                                 ; preds = %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CskXhPDodhyTq_6mdtest.exit.i.i.i.i.i.i.i.i
  %i.acd = icmp ult i64 %i.uk, %i.acf
  br i1 %i.acd, label %.lr.ph1757, label %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern13simd_contains.exit.i.i.i.i.i.i

.lr.ph1757:                                       ; preds = %bb.ja, %.preheader.i.i.i
  %i.ace = phi i64 [ %i.acf, %.preheader.i.i.i ], [ %i.ue, %bb.ja ]
  %i.acf = add nsw i64 %i.ace, -1                 ; 6 uses
  %i.acg = icmp ult i64 %i.acf, %i.ue
  br i1 %i.acg, label %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CskXhPDodhyTq_6mdtest.exit.i.i.i.i.i.i.i.i, label %.invoke.i.i.i.i.i

.invoke.i.i.i.i.i:                                ; preds = %.preheader.i.i.i.i.i.i, %.lr.ph1757, %bb.iu, %.lr.ph1763, %.lr.ph1769, %bb.iy, %bb.in
  %i.ach = phi i64 [ %i.acf, %.lr.ph1757 ], [ %umax.i.i.i.i.i.i.i, %bb.iy ], [ %i.aaa, %.lr.ph1769 ], [ %i.abp, %bb.iu ], [ %umax.i26.i.i.i.i.i.i, %bb.in ], [ %i.abn, %.lr.ph1763 ], [ %i.zk, %.preheader.i.i.i.i.i.i ]
  %i.aci = phi i64 [ %i.ue, %.lr.ph1757 ], [ %i.yj, %bb.iy ], [ %i.yj, %.lr.ph1769 ], [ %i.yj, %bb.iu ], [ %i.yj, %bb.in ], [ %i.yl, %.lr.ph1763 ], [ %i.yl, %.preheader.i.i.i.i.i.i ]
  %i.acj = phi ptr [ @39, %.lr.ph1757 ], [ @20, %bb.iy ], [ @19, %.lr.ph1769 ], [ @19, %bb.iu ], [ @20, %bb.in ], [ @18, %.lr.ph1763 ], [ @18, %.preheader.i.i.i.i.i.i ]
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.ach, i64 noundef range(i64 0, -9223372036854775808) %i.aci, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.acj) #20
          to label %.cont.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !807

.cont.i.i.i.i.i:                                  ; preds = %.invoke.i.i.i.i.i
  unreachable

_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CskXhPDodhyTq_6mdtest.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph1757
  %i.ack = getelementptr inbounds nuw i8, ptr %i.ud, i64 %i.acf
  %i.acl = load i8, ptr %i.ack, align 1, !alias.scope !843, !noalias !844, !noundef !7 ; 2 uses
  %.not.i.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.acl, %i.acc
  br i1 %.not.i.not.i.i.i.i.i.i.i.i, label %.preheader.i.i.i, label %bb.jb

bb.jb:                                            ; preds = %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CskXhPDodhyTq_6mdtest.exit.i.i.i.i.i.i.i.i
  %i.acm = icmp ult i64 %i.vr, %i.ul
  br i1 %i.acm, label %.lr.ph.split.us.i.i.i.i.i.i.i.i, label %bb.jc

.thread.i.i.i.i.i.i.i:                            ; preds = %bb.ja
  %i.acn = icmp ult i64 %i.vr, 17
  br i1 %i.acn, label %.lr.ph.split.us.i.i.i.i.i.i.i.i, label %.thread93.i.i.i.i.i.i.i

.thread93.i.i.i.i.i.i.i:                          ; preds = %.thread.i.i.i.i.i.i.i
  %i.aco = insertelement <16 x i8> poison, i8 %i.acc, i64 0
  %i.acp = shufflevector <16 x i8> %i.aco, <16 x i8> poison, <16 x i32> zeroinitializer
  %.pre.i.i.i.i.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i.i.i.i.i, align 1, !alias.scope !843, !noalias !807
  br label %bb.jd

bb.jc:                                            ; preds = %bb.jb
  %i.acq = insertelement <16 x i8> poison, i8 %i.acc, i64 0
  %i.acr = shufflevector <16 x i8> %i.acq, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.jd

.lr.ph.split.us.i.i.i.i.i.i.i.i:                  ; preds = %.thread.i.i.i.i.i.i.i, %bb.jb
  %bcmp.i.i.us23.i.i.i.i.i.i.i.i = call i32 @bcmp(ptr noundef nonnull readonly dereferenceable(1) %i.vq, ptr noundef nonnull readonly dereferenceable(1) %i.ud, i64 range(i64 2, 33) %i.ue), !alias.scope !845, !noalias !846
  %i.acs = icmp eq i32 %bcmp.i.i.us23.i.i.i.i.i.i.i.i, 0
  br i1 %i.acs, label %.loopexit.i.i.i.i.i, label %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CskXhPDodhyTq_6mdtest.exit.backedge.us.i.i.i.i.i.i.i.i

.split.us.i.i.i.i.i.i.i.i:                        ; preds = %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CskXhPDodhyTq_6mdtest.exit.backedge.us.i.i.i.i.i.i.i.i
  %i.act = getelementptr inbounds nuw i8, ptr %.pn.i.i.i.i.i.i.i, i64 1 ; 2 uses
  %bcmp.i.i.us.i.i.i.i.i.i.i.i = call i32 @bcmp(ptr noundef nonnull readonly dereferenceable(1) %i.act, ptr noundef nonnull readonly dereferenceable(1) %i.ud, i64 range(i64 2, 33) %i.ue), !alias.scope !845, !noalias !846
  %i.acu = icmp eq i32 %bcmp.i.i.us.i.i.i.i.i.i.i.i, 0
  br i1 %i.acu, label %.loopexit.i.i.i.i.i, label %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CskXhPDodhyTq_6mdtest.exit.backedge.us.i.i.i.i.i.i.i.i

_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CskXhPDodhyTq_6mdtest.exit.backedge.us.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.split.us.i.i.i.i.i.i.i.i, %.split.us.i.i.i.i.i.i.i.i
  %.pn.i.i.i.i.i.i.i = phi ptr [ %i.act, %.split.us.i.i.i.i.i.i.i.i ], [ %i.vq, %.lr.ph.split.us.i.i.i.i.i.i.i.i ]
  %.in.i.i.i.i.i.i.i = phi i64 [ %i.acv, %.split.us.i.i.i.i.i.i.i.i ], [ %i.vr, %.lr.ph.split.us.i.i.i.i.i.i.i.i ]
  %i.acv = add i64 %.in.i.i.i.i.i.i.i, -1         ; 2 uses
  %.not28.i.i.i.i.i.i.i.i = icmp ugt i64 %i.ue, %i.acv
  br i1 %.not28.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i, label %.split.us.i.i.i.i.i.i.i.i

bb.jd:                                            ; preds = %bb.jc, %.thread93.i.i.i.i.i.i.i
  %i.acw = phi i8 [ %.pre.i.i.i.i.i.i.i, %.thread93.i.i.i.i.i.i.i ], [ %i.acl, %bb.jc ]
  %i.acx = phi <16 x i8> [ %i.acp, %.thread93.i.i.i.i.i.i.i ], [ %i.acr, %bb.jc ] ; 6 uses
  %storemerge9295.i.i.i.i.i.i.i = phi i64 [ 1, %.thread93.i.i.i.i.i.i.i ], [ %i.acf, %bb.jc ] ; 6 uses
  %i.acy = insertelement <16 x i8> poison, i8 %i.acw, i64 0
  %i.acz = shufflevector <16 x i8> %i.acy, <16 x i8> poison, <16 x i32> zeroinitializer ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !847
  store ptr %i.vq, ptr %i.m, align 8, !noalias !847
  store i64 %i.vr, ptr %i.hw, align 8, !noalias !847
  store ptr %.phi.trans.insert.i.i.i.i.i.i.i, ptr %i.hx, align 8, !noalias !847
  store i64 %i.ui, ptr %i.hy, align 8, !noalias !847
  %.not.i7.i.i.i.i.i.i = icmp ult i64 %i.um, %i.vr
  br i1 %.not.i7.i.i.i.i.i.i, label %.lr.ph.i10.i.i.i.i.i.i, label %.preheader.i8.i.i.i.i.i.i

.preheader.i8.i.i.i.i.i.i:                        ; preds = %.noexc17.i.i.i.i.i, %bb.jd
  %.sroa.014.0.lcssa.i.i.i.i.i.i.i = phi i8 [ 0, %bb.jd ], [ %.sroa.014.2.3.i.i.i.i.i.i.i, %.noexc17.i.i.i.i.i ] ; 2 uses
  %.sroa.06.0.lcssa.i.i.i.i.i.i.i = phi i64 [ 0, %bb.jd ], [ %i.ahn, %.noexc17.i.i.i.i.i ] ; 2 uses
  %i.ada = add i64 %.sroa.06.0.lcssa.i.i.i.i.i.i.i, %i.ul
  %i.adb = icmp uge i64 %i.ada, %i.vr
  %i.adc = trunc nuw i8 %.sroa.014.0.lcssa.i.i.i.i.i.i.i to i1 ; 2 uses
  %or.cond3105.i.i.i.i.i.i.i = select i1 %i.adb, i1 true, i1 %i.adc
  br i1 %or.cond3105.i.i.i.i.i.i.i, label %._crit_edge.i9.i.i.i.i.i.i, label %.lr.ph107.i.i.i.i.i.i.i

.lr.ph.i10.i.i.i.i.i.i:                           ; preds = %bb.jd, %.noexc17.i.i.i.i.i
  %.sroa.06.0103.i.i.i.i.i.i.i = phi i64 [ %i.ahn, %.noexc17.i.i.i.i.i ], [ 0, %bb.jd ] ; 2 uses
  %i.add = getelementptr i8, ptr %i.vq, i64 %.sroa.06.0103.i.i.i.i.i.i.i ; 7 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.add, align 1, !alias.scope !848, !noalias !849
  %i.ade = getelementptr inbounds nuw i8, ptr %i.add, i64 %storemerge9295.i.i.i.i.i.i.i
  %.sroa.02.0.copyload.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.ade, align 1, !alias.scope !848, !noalias !849
  %i.adf = icmp eq <16 x i8> %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, %i.acx
  %i.adg = icmp eq <16 x i8> %.sroa.02.0.copyload.i.i.i.i.i.i.i.i, %i.acz
  %i.adh = and <16 x i1> %i.adf, %i.adg
  %11 = bitcast <16 x i1> %i.adh to i16           ; 3 uses
  %i.adi = getelementptr i8, ptr %i.add, i64 16   ; 4 uses
  %.sroa.0.0.copyload.i.1.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.adi, align 1, !alias.scope !848, !noalias !849
  %i.adj = getelementptr inbounds nuw i8, ptr %i.adi, i64 %storemerge9295.i.i.i.i.i.i.i
  %.sroa.02.0.copyload.i.1.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.adj, align 1, !alias.scope !848, !noalias !849
  %i.adk = icmp eq <16 x i8> %.sroa.0.0.copyload.i.1.i.i.i.i.i.i.i, %i.acx
  %i.adl = icmp eq <16 x i8> %.sroa.02.0.copyload.i.1.i.i.i.i.i.i.i, %i.acz
  %i.adm = and <16 x i1> %i.adk, %i.adl
  %12 = bitcast <16 x i1> %i.adm to i16           ; 3 uses
  %i.adn = getelementptr i8, ptr %i.add, i64 32   ; 4 uses
  %.sroa.0.0.copyload.i.2.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.adn, align 1, !alias.scope !848, !noalias !849
  %i.ado = getelementptr inbounds nuw i8, ptr %i.adn, i64 %storemerge9295.i.i.i.i.i.i.i
  %.sroa.02.0.copyload.i.2.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.ado, align 1, !alias.scope !848, !noalias !849
  %i.adp = icmp eq <16 x i8> %.sroa.0.0.copyload.i.2.i.i.i.i.i.i.i, %i.acx
  %i.adq = icmp eq <16 x i8> %.sroa.02.0.copyload.i.2.i.i.i.i.i.i.i, %i.acz
  %i.adr = and <16 x i1> %i.adp, %i.adq
  %13 = bitcast <16 x i1> %i.adr to i16           ; 3 uses
  %i.ads = getelementptr i8, ptr %i.add, i64 48   ; 4 uses
  %.sroa.0.0.copyload.i.3.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.ads, align 1, !alias.scope !848, !noalias !849
  %i.adt = getelementptr inbounds nuw i8, ptr %i.ads, i64 %storemerge9295.i.i.i.i.i.i.i
  %.sroa.02.0.copyload.i.3.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.adt, align 1, !alias.scope !848, !noalias !849
  %i.adu = icmp eq <16 x i8> %.sroa.0.0.copyload.i.3.i.i.i.i.i.i.i, %i.acx
  %i.adv = icmp eq <16 x i8> %.sroa.02.0.copyload.i.3.i.i.i.i.i.i.i, %i.acz
  %i.adw = and <16 x i1> %i.adu, %i.adv
  %i.adx = bitcast <16 x i1> %i.adw to i16        ; 3 uses
  %i.ady = icmp eq i16 %11, 0
  br i1 %i.ady, label %.preheader96.1.i.i.i.i.i.i.i, label %bb.jo

.preheader96.1.i.i.i.i.i.i.i:                     ; preds = %bb.jr, %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern14small_slice_eq.exit.thread.loopexit.us.i131, %.lr.ph.i10.i.i.i.i.i.i
  %i.adz = icmp eq i16 %12, 0
  br i1 %i.adz, label %.preheader96.2.i.i.i.i.i.i.i, label %.preheader.i198

.preheader.i198:                                  ; preds = %.preheader96.1.i.i.i.i.i.i.i
  br i1 %i.un, label %.preheader.split.us.i215, label %.preheader.split.i202

.preheader.split.us.i215:                         ; preds = %.preheader.i198, %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern14small_slice_eq.exit.thread.loopexit.us.i226
  %.sroa.0.09.us.i216 = phi i16 [ %i.aem, %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern14small_slice_eq.exit.thread.loopexit.us.i226 ], [ %12, %.preheader.i198 ] ; 2 uses
  %i.aea = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.0.09.us.i216, i1 true) ; 2 uses
  %i.aeb = zext nneg i16 %i.aea to i64
  %i.aec = getelementptr i8, ptr %i.adi, i64 %i.aeb ; 2 uses
  %i.aed = getelementptr i8, ptr %i.aec, i64 1
  call void @llvm.experimental.noalias.scope.decl(metadata !850), !noalias !807
  call void @llvm.experimental.noalias.scope.decl(metadata !851), !noalias !807
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !852
  %i.aee = getelementptr i8, ptr %i.aec, i64 %i.ue
  invoke void @_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E3newCskXhPDodhyTq_6mdtest(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull readonly %i.aed, ptr noundef nonnull readonly %i.aee, ptr noundef nonnull readonly %.phi.trans.insert.i.i.i.i.i.i.i, ptr noundef nonnull readonly %i.uo)
          to label %.noexc228 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc228:                                        ; preds = %.preheader.split.us.i215
  %.sroa.0.0.copyload.i.us.i217 = load ptr, ptr %i.a, align 8, !noalias !853 ; 2 uses
  %.sroa.522.0.copyload.i.us.i218 = load ptr, ptr %.sroa.522.0..sroa_idx.i.i199, align 8, !noalias !853 ; 2 uses
  %.sroa.623.0.copyload.i.us.i219 = load i64, ptr %.sroa.623.0..sroa_idx.i.i200, align 8, !noalias !853 ; 3 uses
  %.sroa.8.0.copyload.i.us.i220 = load i64, ptr %.sroa.8.0..sroa_idx.i.i201, align 8, !noalias !853 ; 2 uses
  %umax.i.us.i221 = call i64 @llvm.umax.i64(i64 %.sroa.8.0.copyload.i.us.i220, i64 %.sroa.623.0.copyload.i.us.i219)
  %exitcond.not.i.us.i2231772.not = icmp ult i64 %.sroa.623.0.copyload.i.us.i219, %.sroa.8.0.copyload.i.us.i220
  br i1 %exitcond.not.i.us.i2231772.not, label %_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCskXhPDodhyTq_6mdtest.exit.i.us.i224.preheader, label %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern14small_slice_eq.exit.thread6.i227

_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCskXhPDodhyTq_6mdtest.exit.i.us.i224.preheader: ; preds = %.noexc228
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.us.i217), "nonnull"(ptr %.sroa.522.0.copyload.i.us.i218) ], !noalias !807
  br label %_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCskXhPDodhyTq_6mdtest.exit.i.us.i224

bb.je:                                            ; preds = %_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCskXhPDodhyTq_6mdtest.exit.i.us.i224
  %i.aef = add nuw i64 %.sroa.623.0.i.us.i2221773, 1 ; 2 uses
  %exitcond.not.i.us.i223 = icmp eq i64 %i.aef, %umax.i.us.i221
  br i1 %exitcond.not.i.us.i223, label %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern14small_slice_eq.exit.thread6.i227, label %_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCskXhPDodhyTq_6mdtest.exit.i.us.i224

_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCskXhPDodhyTq_6mdtest.exit.i.us.i224: ; preds = %_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCskXhPDodhyTq_6mdtest.exit.i.us.i224.preheader, %bb.je
  %.sroa.623.0.i.us.i2221773 = phi i64 [ %i.aef, %bb.je ], [ %.sroa.623.0.copyload.i.us.i219, %_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCskXhPDodhyTq_6mdtest.exit.i.us.i224.preheader ] ; 3 uses
  %i.aeg = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.us.i217, i64 %.sroa.623.0.i.us.i2221773
  %i.aeh = getelementptr inbounds nuw i8, ptr %.sroa.522.0.copyload.i.us.i218, i64 %.sroa.623.0.i.us.i2221773
  %i.aei = load i8, ptr %i.aeg, align 1, !noalias !852, !noundef !7
  %i.aej = load i8, ptr %i.aeh, align 1, !noalias !852, !noundef !7
  %.not21.i.us.i225 = icmp eq i8 %i.aei, %i.aej
  br i1 %.not21.i.us.i225, label %bb.je, label %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern14small_slice_eq.exit.thread.loopexit.us.i226

_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern14small_slice_eq.exit.thread.loopexit.us.i226: ; preds = %_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCskXhPDodhyTq_6mdtest.exit.i.us.i224
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !852
  %i.aek = shl nuw i16 1, %i.aea
  %i.ael = xor i16 %i.aek, -1
  %i.aem = and i16 %.sroa.0.09.us.i216, %i.ael    ; 2 uses
  %i.aen = icmp eq i16 %i.aem, 0
  br i1 %i.aen, label %.preheader96.2.i.i.i.i.i.i.i, label %.preheader.split.us.i215

.preheader.split.i202:                            ; preds = %.preheader.i198, %bb.jg
  %.sroa.0.09.i203 = phi i16 [ %i.afb, %bb.jg ], [ %12, %.preheader.i198 ] ; 2 uses
  %i.aeo = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.0.09.i203, i1 true) ; 2 uses
  %i.aep = zext nneg i16 %i.aeo to i64
  %i.aeq = getelementptr i8, ptr %i.adi, i64 %i.aep ; 2 uses
  %i.aer = getelementptr i8, ptr %i.aeq, i64 1    ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !850), !noalias !807
  call void @llvm.experimental.noalias.scope.decl(metadata !851), !noalias !807
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !852
  %i.aes = getelementptr i8, ptr %i.aeq, i64 %i.ue
  %i.aet = getelementptr i8, ptr %i.aes, i64 -4   ; 3 uses
  %i.aeu = icmp ult ptr %i.aer, %i.aet
  br i1 %i.aeu, label %.lr.ph.i.i208, label %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern14small_slice_eq.exit.i204

.lr.ph.i.i208:                                    ; preds = %.preheader.split.i202, %bb.jf
  %.sroa.04.030.i.i209 = phi ptr [ %i.aev, %bb.jf ], [ %i.aer, %.preheader.split.i202 ] ; 2 uses
  %.sroa.08.029.i.i210 = phi ptr [ %i.aew, %bb.jf ], [ %.phi.trans.insert.i.i.i.i.i.i.i, %.preheader.split.i202 ] ; 2 uses
  %.sroa.011.0.copyload.i.i211 = load i32, ptr %.sroa.04.030.i.i209, align 1, !alias.scope !850, !noalias !852
  %.sroa.013.0.copyload.i.i212 = load i32, ptr %.sroa.08.029.i.i210, align 1, !alias.scope !851, !noalias !852
  %.not.i.i213 = icmp eq i32 %.sroa.011.0.copyload.i.i211, %.sroa.013.0.copyload.i.i212
  br i1 %.not.i.i213, label %bb.jf, label %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern14small_slice_eq.exit.thread.loopexit8.i214

bb.jf:                                            ; preds = %.lr.ph.i.i208
  %i.aev = getelementptr inbounds nuw i8, ptr %.sroa.04.030.i.i209, i64 4 ; 2 uses
  %i.aew = getelementptr inbounds nuw i8, ptr %.sroa.08.029.i.i210, i64 4
  %i.aex = icmp ult ptr %i.aev, %i.aet
  br i1 %i.aex, label %.lr.ph.i.i208, label %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern14small_slice_eq.exit.i204

_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern14small_slice_eq.exit.thread6.i227: ; preds = %.noexc228, %bb.je
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !852
  br label %.preheader96.2.i.i.i.i.i.i.i

_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern14small_slice_eq.exit.thread.loopexit8.i214: ; preds = %.lr.ph.i.i208
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !852
  br label %bb.jg

_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern14small_slice_eq.exit.i204: ; preds = %bb.jf, %.preheader.split.i202
  %.sroa.015.0.copyload.i.i205 = load i32, ptr %i.aet, align 1, !alias.scope !850, !noalias !852
  %.sroa.017.0.copyload.i.i206 = load i32, ptr %i.up, align 1, !alias.scope !851, !noalias !852
  %i.aey = icmp eq i32 %.sroa.015.0.copyload.i.i205, %.sroa.017.0.copyload.i.i206
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !852
  br i1 %i.aey, label %.preheader96.2.i.i.i.i.i.i.i, label %bb.jg

bb.jg:                                            ; preds = %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern14small_slice_eq.exit.i204, %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern14small_slice_eq.exit.thread.loopexit8.i214
  %i.aez = shl nuw i16 1, %i.aeo
  %i.afa = xor i16 %i.aez, -1
  %i.afb = and i16 %.sroa.0.09.i203, %i.afa       ; 2 uses
  %i.afc = icmp eq i16 %i.afb, 0
  br i1 %i.afc, label %.preheader96.2.i.i.i.i.i.i.i, label %.preheader.split.i202

.preheader96.2.i.i.i.i.i.i.i:                     ; preds = %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern14small_slice_eq.exit.i109, %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern14small_slice_eq.exit.i204, %bb.jg, %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern14small_slice_eq.exit.thread.loopexit.us.i226, %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern14small_slice_eq.exit.thread6.i132, %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern14small_slice_eq.exit.thread6.i227, %.preheader96.1.i.i.i.i.i.i.i
  %.sroa.014.2.1.i.i.i.i.i.i.i = phi i8 [ 0, %.preheader96.1.i.i.i.i.i.i.i ], [ 1, %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern14small_slice_eq.exit.thread6.i227 ], [ 1, %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern14small_slice_eq.exit.thread6.i132 ], [ 0, %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern14small_slice_eq.exit.thread.loopexit.us.i226 ], [ 0, %bb.jg ], [ 1, %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern14small_slice_eq.exit.i204 ], [ 1, %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern14small_slice_eq.exit.i109 ] ; 2 uses
  %i.afd = icmp eq i16 %13, 0
  br i1 %i.afd, label %.preheader96.3.i.i.i.i.i.i.i, label %bb.jh

bb.jh:                                            ; preds = %.preheader96.2.i.i.i.i.i.i.i
  %i.afe = trunc nuw i8 %.sroa.014.2.1.i.i.i.i.i.i.i to i1
  br i1 %i.afe, label %.preheader96.3.i.i.i.i.i.i.i, label %.preheader.i166

.preheader.i166:                                  ; preds = %bb.jh
  br i1 %i.un, label %.preheader.split.us.i183, label %.preheader.split.i170

.preheader.split.us.i183:                         ; preds = %.preheader.i166, %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern14small_slice_eq.exit.thread.loopexit.us.i194
  %.sroa.0.09.us.i184 = phi i16 [ %i.afr, %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern14small_slice_eq.exit.thread.loopexit.us.i194 ], [ %13, %.preheader.i166 ] ; 2 uses
  %i.aff = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.0.09.us.i184, i1 true) ; 2 uses
  %i.afg = zext nneg i16 %i.aff to i64
  %i.afh = getelementptr i8, ptr %i.adn, i64 %i.afg ; 2 uses
  %i.afi = getelementptr i8, ptr %i.afh, i64 1
  call void @llvm.experimental.noalias.scope.decl(metadata !854), !noalias !807
  call void @llvm.experimental.noalias.scope.decl(metadata !855), !noalias !807
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !856
  %i.afj = getelementptr i8, ptr %i.afh, i64 %i.ue
  invoke void @_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E3newCskXhPDodhyTq_6mdtest(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.b, ptr noundef nonnull readonly %i.afi, ptr noundef nonnull readonly %i.afj, ptr noundef nonnull readonly %.phi.trans.insert.i.i.i.i.i.i.i, ptr noundef nonnull readonly %i.uo)
          to label %.noexc196 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc196:                                        ; preds = %.preheader.split.us.i183
  %.sroa.0.0.copyload.i.us.i185 = load ptr, ptr %i.b, align 8, !noalias !857 ; 2 uses
  %.sroa.522.0.copyload.i.us.i186 = load ptr, ptr %.sroa.522.0..sroa_idx.i.i167, align 8, !noalias !857 ; 2 uses
  %.sroa.623.0.copyload.i.us.i187 = load i64, ptr %.sroa.623.0..sroa_idx.i.i168, align 8, !noalias !857 ; 3 uses
  %.sroa.8.0.copyload.i.us.i188 = load i64, ptr %.sroa.8.0..sroa_idx.i.i169, align 8, !noalias !857 ; 2 uses
  %umax.i.us.i189 = call i64 @llvm.umax.i64(i64 %.sroa.8.0.copyload.i.us.i188, i64 %.sroa.623.0.copyload.i.us.i187)
  %exitcond.not.i.us.i1911774.not = icmp ult i64 %.sroa.623.0.copyload.i.us.i187, %.sroa.8.0.copyload.i.us.i188
  br i1 %exitcond.not.i.us.i1911774.not, label %_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCskXhPDodhyTq_6mdtest.exit.i.us.i192.preheader, label %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern14small_slice_eq.exit.thread6.i195

_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCskXhPDodhyTq_6mdtest.exit.i.us.i192.preheader: ; preds = %.noexc196
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.us.i185), "nonnull"(ptr %.sroa.522.0.copyload.i.us.i186) ], !noalias !807
  br label %_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCskXhPDodhyTq_6mdtest.exit.i.us.i192

bb.ji:                                            ; preds = %_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCskXhPDodhyTq_6mdtest.exit.i.us.i192
  %i.afk = add nuw i64 %.sroa.623.0.i.us.i1901775, 1 ; 2 uses
  %exitcond.not.i.us.i191 = icmp eq i64 %i.afk, %umax.i.us.i189
  br i1 %exitcond.not.i.us.i191, label %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern14small_slice_eq.exit.thread6.i195, label %_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCskXhPDodhyTq_6mdtest.exit.i.us.i192

_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCskXhPDodhyTq_6mdtest.exit.i.us.i192: ; preds = %_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCskXhPDodhyTq_6mdtest.exit.i.us.i192.preheader, %bb.ji
  %.sroa.623.0.i.us.i1901775 = phi i64 [ %i.afk, %bb.ji ], [ %.sroa.623.0.copyload.i.us.i187, %_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCskXhPDodhyTq_6mdtest.exit.i.us.i192.preheader ] ; 3 uses
  %i.afl = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.us.i185, i64 %.sroa.623.0.i.us.i1901775
  %i.afm = getelementptr inbounds nuw i8, ptr %.sroa.522.0.copyload.i.us.i186, i64 %.sroa.623.0.i.us.i1901775
  %i.afn = load i8, ptr %i.afl, align 1, !noalias !856, !noundef !7
  %i.afo = load i8, ptr %i.afm, align 1, !noalias !856, !noundef !7
  %.not21.i.us.i193 = icmp eq i8 %i.afn, %i.afo
  br i1 %.not21.i.us.i193, label %bb.ji, label %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern14small_slice_eq.exit.thread.loopexit.us.i194

_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern14small_slice_eq.exit.thread.loopexit.us.i194: ; preds = %_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCskXhPDodhyTq_6mdtest.exit.i.us.i192
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !856
  %i.afp = shl nuw i16 1, %i.aff
  %i.afq = xor i16 %i.afp, -1
  %i.afr = and i16 %.sroa.0.09.us.i184, %i.afq    ; 2 uses
  %i.afs = icmp eq i16 %i.afr, 0
  br i1 %i.afs, label %.preheader96.3.i.i.i.i.i.i.i, label %.preheader.split.us.i183

.preheader.split.i170:                            ; preds = %.preheader.i166, %bb.jk
  %.sroa.0.09.i171 = phi i16 [ %i.agg, %bb.jk ], [ %13, %.preheader.i166 ] ; 2 uses
  %i.aft = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.0.09.i171, i1 true) ; 2 uses
  %i.afu = zext nneg i16 %i.aft to i64
  %i.afv = getelementptr i8, ptr %i.adn, i64 %i.afu ; 2 uses
  %i.afw = getelementptr i8, ptr %i.afv, i64 1    ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !854), !noalias !807
  call void @llvm.experimental.noalias.scope.decl(metadata !855), !noalias !807
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !856
  %i.afx = getelementptr i8, ptr %i.afv, i64 %i.ue
  %i.afy = getelementptr i8, ptr %i.afx, i64 -4   ; 3 uses
  %i.afz = icmp ult ptr %i.afw, %i.afy
  br i1 %i.afz, label %.lr.ph.i.i176, label %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern14small_slice_eq.exit.i172

.lr.ph.i.i176:                                    ; preds = %.preheader.split.i170, %bb.jj
  %.sroa.04.030.i.i177 = phi ptr [ %i.aga, %bb.jj ], [ %i.afw, %.preheader.split.i170 ] ; 2 uses
  %.sroa.08.029.i.i178 = phi ptr [ %i.agb, %bb.jj ], [ %.phi.trans.insert.i.i.i.i.i.i.i, %.preheader.split.i170 ] ; 2 uses
  %.sroa.011.0.copyload.i.i179 = load i32, ptr %.sroa.04.030.i.i177, align 1, !alias.scope !854, !noalias !856
  %.sroa.013.0.copyload.i.i180 = load i32, ptr %.sroa.08.029.i.i178, align 1, !alias.scope !855, !noalias !856
  %.not.i.i181 = icmp eq i32 %.sroa.011.0.copyload.i.i179, %.sroa.013.0.copyload.i.i180
  br i1 %.not.i.i181, label %bb.jj, label %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern14small_slice_eq.exit.thread.loopexit8.i182

bb.jj:                                            ; preds = %.lr.ph.i.i176
  %i.aga = getelementptr inbounds nuw i8, ptr %.sroa.04.030.i.i177, i64 4 ; 2 uses
  %i.agb = getelementptr inbounds nuw i8, ptr %.sroa.08.029.i.i178, i64 4
  %i.agc = icmp ult ptr %i.aga, %i.afy
  br i1 %i.agc, label %.lr.ph.i.i176, label %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern14small_slice_eq.exit.i172

_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern14small_slice_eq.exit.thread6.i195: ; preds = %.noexc196, %bb.ji
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !856
  br label %.preheader96.3.i.i.i.i.i.i.i

_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern14small_slice_eq.exit.thread.loopexit8.i182: ; preds = %.lr.ph.i.i176
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !856
  br label %bb.jk

_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern14small_slice_eq.exit.i172: ; preds = %bb.jj, %.preheader.split.i170
  %.sroa.015.0.copyload.i.i173 = load i32, ptr %i.afy, align 1, !alias.scope !854, !noalias !856
  %.sroa.017.0.copyload.i.i174 = load i32, ptr %i.up, align 1, !alias.scope !855, !noalias !856
  %i.agd = icmp eq i32 %.sroa.015.0.copyload.i.i173, %.sroa.017.0.copyload.i.i174
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !856
  br i1 %i.agd, label %.preheader96.3.i.i.i.i.i.i.i, label %bb.jk

bb.jk:                                            ; preds = %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern14small_slice_eq.exit.i172, %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern14small_slice_eq.exit.thread.loopexit8.i182
  %i.age = shl nuw i16 1, %i.aft
  %i.agf = xor i16 %i.age, -1
  %i.agg = and i16 %.sroa.0.09.i171, %i.agf       ; 2 uses
  %i.agh = icmp eq i16 %i.agg, 0
  br i1 %i.agh, label %.preheader96.3.i.i.i.i.i.i.i, label %.preheader.split.i170

.preheader96.3.i.i.i.i.i.i.i:                     ; preds = %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern14small_slice_eq.exit.i172, %bb.jk, %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern14small_slice_eq.exit.thread.loopexit.us.i194, %bb.jh, %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern14small_slice_eq.exit.thread6.i195, %.preheader96.2.i.i.i.i.i.i.i
  %.sroa.014.2.2.i.i.i.i.i.i.i = phi i8 [ %.sroa.014.2.1.i.i.i.i.i.i.i, %.preheader96.2.i.i.i.i.i.i.i ], [ 1, %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern14small_slice_eq.exit.thread6.i195 ], [ 1, %bb.jh ], [ 0, %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern14small_slice_eq.exit.thread.loopexit.us.i194 ], [ 1, %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern14small_slice_eq.exit.i172 ], [ 0, %bb.jk ] ; 4 uses
  %i.agi = icmp eq i16 %i.adx, 0
  %i.agj = trunc nuw i8 %.sroa.014.2.2.i.i.i.i.i.i.i to i1
  %or.cond1781 = select i1 %i.agi, i1 true, i1 %i.agj
  br i1 %or.cond1781, label %.noexc17.i.i.i.i.i, label %.preheader.i

.preheader.i:                                     ; preds = %.preheader96.3.i.i.i.i.i.i.i
  br i1 %i.un, label %.preheader.split.us.i151, label %.preheader.split.i138

.preheader.split.us.i151:                         ; preds = %.preheader.i, %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern14small_slice_eq.exit.thread.loopexit.us.i162
  %.sroa.0.09.us.i152 = phi i16 [ %i.agw, %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern14small_slice_eq.exit.thread.loopexit.us.i162 ], [ %i.adx, %.preheader.i ] ; 2 uses
  %i.agk = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.0.09.us.i152, i1 true) ; 2 uses
  %i.agl = zext nneg i16 %i.agk to i64
  %i.agm = getelementptr i8, ptr %i.ads, i64 %i.agl ; 2 uses
  %i.agn = getelementptr i8, ptr %i.agm, i64 1
  call void @llvm.experimental.noalias.scope.decl(metadata !858), !noalias !807
  call void @llvm.experimental.noalias.scope.decl(metadata !859), !noalias !807
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !860
  %i.ago = getelementptr i8, ptr %i.agm, i64 %i.ue
  invoke void @_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E3newCskXhPDodhyTq_6mdtest(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.c, ptr noundef nonnull readonly %i.agn, ptr noundef nonnull readonly %i.ago, ptr noundef nonnull readonly %.phi.trans.insert.i.i.i.i.i.i.i, ptr noundef nonnull readonly %i.uo)
          to label %.noexc164 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc164:                                        ; preds = %.preheader.split.us.i151
  %.sroa.0.0.copyload.i.us.i153 = load ptr, ptr %i.c, align 8, !noalias !861 ; 2 uses
  %.sroa.522.0.copyload.i.us.i154 = load ptr, ptr %.sroa.522.0..sroa_idx.i.i135, align 8, !noalias !861 ; 2 uses
  %.sroa.623.0.copyload.i.us.i155 = load i64, ptr %.sroa.623.0..sroa_idx.i.i136, align 8, !noalias !861 ; 3 uses
  %.sroa.8.0.copyload.i.us.i156 = load i64, ptr %.sroa.8.0..sroa_idx.i.i137, align 8, !noalias !861 ; 2 uses
  %umax.i.us.i157 = call i64 @llvm.umax.i64(i64 %.sroa.8.0.copyload.i.us.i156, i64 %.sroa.623.0.copyload.i.us.i155)
  %exitcond.not.i.us.i1591776.not = icmp ult i64 %.sroa.623.0.copyload.i.us.i155, %.sroa.8.0.copyload.i.us.i156
  br i1 %exitcond.not.i.us.i1591776.not, label %_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCskXhPDodhyTq_6mdtest.exit.i.us.i160.preheader, label %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern14small_slice_eq.exit.thread6.i163

_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCskXhPDodhyTq_6mdtest.exit.i.us.i160.preheader: ; preds = %.noexc164
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.us.i153), "nonnull"(ptr %.sroa.522.0.copyload.i.us.i154) ], !noalias !807
  br label %_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCskXhPDodhyTq_6mdtest.exit.i.us.i160

bb.jl:                                            ; preds = %_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCskXhPDodhyTq_6mdtest.exit.i.us.i160
  %i.agp = add nuw i64 %.sroa.623.0.i.us.i1581777, 1 ; 2 uses
  %exitcond.not.i.us.i159 = icmp eq i64 %i.agp, %umax.i.us.i157
  br i1 %exitcond.not.i.us.i159, label %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern14small_slice_eq.exit.thread6.i163, label %_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCskXhPDodhyTq_6mdtest.exit.i.us.i160

_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCskXhPDodhyTq_6mdtest.exit.i.us.i160: ; preds = %_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCskXhPDodhyTq_6mdtest.exit.i.us.i160.preheader, %bb.jl
  %.sroa.623.0.i.us.i1581777 = phi i64 [ %i.agp, %bb.jl ], [ %.sroa.623.0.copyload.i.us.i155, %_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCskXhPDodhyTq_6mdtest.exit.i.us.i160.preheader ] ; 3 uses
  %i.agq = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.us.i153, i64 %.sroa.623.0.i.us.i1581777
  %i.agr = getelementptr inbounds nuw i8, ptr %.sroa.522.0.copyload.i.us.i154, i64 %.sroa.623.0.i.us.i1581777
  %i.ags = load i8, ptr %i.agq, align 1, !noalias !860, !noundef !7
  %i.agt = load i8, ptr %i.agr, align 1, !noalias !860, !noundef !7
  %.not21.i.us.i161 = icmp eq i8 %i.ags, %i.agt
  br i1 %.not21.i.us.i161, label %bb.jl, label %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern14small_slice_eq.exit.thread.loopexit.us.i162

_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern14small_slice_eq.exit.thread.loopexit.us.i162: ; preds = %_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCskXhPDodhyTq_6mdtest.exit.i.us.i160
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !860
  %i.agu = shl nuw i16 1, %i.agk
  %i.agv = xor i16 %i.agu, -1
  %i.agw = and i16 %.sroa.0.09.us.i152, %i.agv    ; 2 uses
  %i.agx = icmp eq i16 %i.agw, 0
  br i1 %i.agx, label %.noexc17.i.i.i.i.i, label %.preheader.split.us.i151

.preheader.split.i138:                            ; preds = %.preheader.i, %bb.jn
  %.sroa.0.09.i139 = phi i16 [ %i.ahl, %bb.jn ], [ %i.adx, %.preheader.i ] ; 2 uses
  %i.agy = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.0.09.i139, i1 true) ; 2 uses
  %i.agz = zext nneg i16 %i.agy to i64
  %i.aha = getelementptr i8, ptr %i.ads, i64 %i.agz ; 2 uses
  %i.ahb = getelementptr i8, ptr %i.aha, i64 1    ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !858), !noalias !807
  call void @llvm.experimental.noalias.scope.decl(metadata !859), !noalias !807
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !860
  %i.ahc = getelementptr i8, ptr %i.aha, i64 %i.ue
  %i.ahd = getelementptr i8, ptr %i.ahc, i64 -4   ; 3 uses
  %i.ahe = icmp ult ptr %i.ahb, %i.ahd
  br i1 %i.ahe, label %.lr.ph.i.i144, label %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern14small_slice_eq.exit.i140

.lr.ph.i.i144:                                    ; preds = %.preheader.split.i138, %bb.jm
  %.sroa.04.030.i.i145 = phi ptr [ %i.ahf, %bb.jm ], [ %i.ahb, %.preheader.split.i138 ] ; 2 uses
  %.sroa.08.029.i.i146 = phi ptr [ %i.ahg, %bb.jm ], [ %.phi.trans.insert.i.i.i.i.i.i.i, %.preheader.split.i138 ] ; 2 uses
  %.sroa.011.0.copyload.i.i147 = load i32, ptr %.sroa.04.030.i.i145, align 1, !alias.scope !858, !noalias !860
  %.sroa.013.0.copyload.i.i148 = load i32, ptr %.sroa.08.029.i.i146, align 1, !alias.scope !859, !noalias !860
  %.not.i.i149 = icmp eq i32 %.sroa.011.0.copyload.i.i147, %.sroa.013.0.copyload.i.i148
  br i1 %.not.i.i149, label %bb.jm, label %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern14small_slice_eq.exit.thread.loopexit8.i150

bb.jm:                                            ; preds = %.lr.ph.i.i144
  %i.ahf = getelementptr inbounds nuw i8, ptr %.sroa.04.030.i.i145, i64 4 ; 2 uses
  %i.ahg = getelementptr inbounds nuw i8, ptr %.sroa.08.029.i.i146, i64 4
  %i.ahh = icmp ult ptr %i.ahf, %i.ahd
  br i1 %i.ahh, label %.lr.ph.i.i144, label %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern14small_slice_eq.exit.i140

_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern14small_slice_eq.exit.thread6.i163: ; preds = %.noexc164, %bb.jl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !860
  br label %.noexc17.i.i.i.i.i

_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern14small_slice_eq.exit.thread.loopexit8.i150: ; preds = %.lr.ph.i.i144
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !860
  br label %bb.jn

_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern14small_slice_eq.exit.i140: ; preds = %bb.jm, %.preheader.split.i138
  %.sroa.015.0.copyload.i.i141 = load i32, ptr %i.ahd, align 1, !alias.scope !858, !noalias !860
  %.sroa.017.0.copyload.i.i142 = load i32, ptr %i.up, align 1, !alias.scope !859, !noalias !860
  %i.ahi = icmp eq i32 %.sroa.015.0.copyload.i.i141, %.sroa.017.0.copyload.i.i142
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !860
  br i1 %i.ahi, label %.noexc17.i.i.i.i.i, label %bb.jn

bb.jn:                                            ; preds = %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern14small_slice_eq.exit.i140, %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern14small_slice_eq.exit.thread.loopexit8.i150
  %i.ahj = shl nuw i16 1, %i.agy
  %i.ahk = xor i16 %i.ahj, -1
  %i.ahl = and i16 %.sroa.0.09.i139, %i.ahk       ; 2 uses
  %i.ahm = icmp eq i16 %i.ahl, 0
  br i1 %i.ahm, label %.noexc17.i.i.i.i.i, label %.preheader.split.i138

.noexc17.i.i.i.i.i:                               ; preds = %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern14small_slice_eq.exit.i140, %bb.jn, %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern14small_slice_eq.exit.thread.loopexit.us.i162, %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern14small_slice_eq.exit.thread6.i163, %.preheader96.3.i.i.i.i.i.i.i
  %.sroa.014.2.3.i.i.i.i.i.i.i = phi i8 [ %.sroa.014.2.2.i.i.i.i.i.i.i, %.preheader96.3.i.i.i.i.i.i.i ], [ 1, %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern14small_slice_eq.exit.thread6.i163 ], [ %.sroa.014.2.2.i.i.i.i.i.i.i, %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern14small_slice_eq.exit.thread.loopexit.us.i162 ], [ 1, %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern14small_slice_eq.exit.i140 ], [ %.sroa.014.2.2.i.i.i.i.i.i.i, %bb.jn ] ; 2 uses
  %i.ahn = add i64 %.sroa.06.0103.i.i.i.i.i.i.i, 64 ; 3 uses
  %i.aho = add i64 %i.ahn, %i.um
  %i.ahp = icmp uge i64 %i.aho, %i.vr
  %i.ahq = trunc nuw i8 %.sroa.014.2.3.i.i.i.i.i.i.i to i1
  %or.cond.i.i.i.i.i.i.i = select i1 %i.ahp, i1 true, i1 %i.ahq
  br i1 %or.cond.i.i.i.i.i.i.i, label %.preheader.i8.i.i.i.i.i.i, label %.lr.ph.i10.i.i.i.i.i.i

bb.jo:                                            ; preds = %.lr.ph.i10.i.i.i.i.i.i
  br i1 %i.un, label %.preheader.split.us.i120, label %.preheader.split.i107

.preheader.split.us.i120:                         ; preds = %bb.jo, %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern14small_slice_eq.exit.thread.loopexit.us.i131
  %.sroa.0.09.us.i121 = phi i16 [ %i.aid, %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern14small_slice_eq.exit.thread.loopexit.us.i131 ], [ %11, %bb.jo ] ; 2 uses
  %i.ahr = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.0.09.us.i121, i1 true) ; 2 uses
  %i.ahs = zext nneg i16 %i.ahr to i64
  %i.aht = getelementptr i8, ptr %i.add, i64 %i.ahs ; 2 uses
  %i.ahu = getelementptr i8, ptr %i.aht, i64 1
  call void @llvm.experimental.noalias.scope.decl(metadata !862), !noalias !807
  call void @llvm.experimental.noalias.scope.decl(metadata !863), !noalias !807
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !864
  %i.ahv = getelementptr i8, ptr %i.aht, i64 %i.ue
  invoke void @_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E3newCskXhPDodhyTq_6mdtest(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.d, ptr noundef nonnull readonly %i.ahu, ptr noundef nonnull readonly %i.ahv, ptr noundef nonnull readonly %.phi.trans.insert.i.i.i.i.i.i.i, ptr noundef nonnull readonly %i.uo)
          to label %.noexc133 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc133:                                        ; preds = %.preheader.split.us.i120
  %.sroa.0.0.copyload.i.us.i122 = load ptr, ptr %i.d, align 8, !noalias !865 ; 2 uses
  %.sroa.522.0.copyload.i.us.i123 = load ptr, ptr %.sroa.522.0..sroa_idx.i.i104, align 8, !noalias !865 ; 2 uses
  %.sroa.623.0.copyload.i.us.i124 = load i64, ptr %.sroa.623.0..sroa_idx.i.i105, align 8, !noalias !865 ; 3 uses
  %.sroa.8.0.copyload.i.us.i125 = load i64, ptr %.sroa.8.0..sroa_idx.i.i106, align 8, !noalias !865 ; 2 uses
  %umax.i.us.i126 = call i64 @llvm.umax.i64(i64 %.sroa.8.0.copyload.i.us.i125, i64 %.sroa.623.0.copyload.i.us.i124)
  %exitcond.not.i.us.i1281770.not = icmp ult i64 %.sroa.623.0.copyload.i.us.i124, %.sroa.8.0.copyload.i.us.i125
  br i1 %exitcond.not.i.us.i1281770.not, label %_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCskXhPDodhyTq_6mdtest.exit.i.us.i129.preheader, label %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern14small_slice_eq.exit.thread6.i132

_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCskXhPDodhyTq_6mdtest.exit.i.us.i129.preheader: ; preds = %.noexc133
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.us.i122), "nonnull"(ptr %.sroa.522.0.copyload.i.us.i123) ], !noalias !807
  br label %_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCskXhPDodhyTq_6mdtest.exit.i.us.i129

bb.jp:                                            ; preds = %_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCskXhPDodhyTq_6mdtest.exit.i.us.i129
  %i.ahw = add nuw i64 %.sroa.623.0.i.us.i1271771, 1 ; 2 uses
  %exitcond.not.i.us.i128 = icmp eq i64 %i.ahw, %umax.i.us.i126
  br i1 %exitcond.not.i.us.i128, label %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern14small_slice_eq.exit.thread6.i132, label %_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCskXhPDodhyTq_6mdtest.exit.i.us.i129

_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCskXhPDodhyTq_6mdtest.exit.i.us.i129: ; preds = %_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCskXhPDodhyTq_6mdtest.exit.i.us.i129.preheader, %bb.jp
  %.sroa.623.0.i.us.i1271771 = phi i64 [ %i.ahw, %bb.jp ], [ %.sroa.623.0.copyload.i.us.i124, %_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCskXhPDodhyTq_6mdtest.exit.i.us.i129.preheader ] ; 3 uses
  %i.ahx = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.us.i122, i64 %.sroa.623.0.i.us.i1271771
  %i.ahy = getelementptr inbounds nuw i8, ptr %.sroa.522.0.copyload.i.us.i123, i64 %.sroa.623.0.i.us.i1271771
  %i.ahz = load i8, ptr %i.ahx, align 1, !noalias !864, !noundef !7
  %i.aia = load i8, ptr %i.ahy, align 1, !noalias !864, !noundef !7
  %.not21.i.us.i130 = icmp eq i8 %i.ahz, %i.aia
  br i1 %.not21.i.us.i130, label %bb.jp, label %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern14small_slice_eq.exit.thread.loopexit.us.i131

_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern14small_slice_eq.exit.thread.loopexit.us.i131: ; preds = %_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCskXhPDodhyTq_6mdtest.exit.i.us.i129
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !864
  %i.aib = shl nuw i16 1, %i.ahr
  %i.aic = xor i16 %i.aib, -1
  %i.aid = and i16 %.sroa.0.09.us.i121, %i.aic    ; 2 uses
  %i.aie = icmp eq i16 %i.aid, 0
  br i1 %i.aie, label %.preheader96.1.i.i.i.i.i.i.i, label %.preheader.split.us.i120

.preheader.split.i107:                            ; preds = %bb.jo, %bb.jr
  %.sroa.0.09.i108 = phi i16 [ %i.ais, %bb.jr ], [ %11, %bb.jo ] ; 2 uses
  %i.aif = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.0.09.i108, i1 true) ; 2 uses
  %i.aig = zext nneg i16 %i.aif to i64
  %i.aih = getelementptr i8, ptr %i.add, i64 %i.aig ; 2 uses
  %i.aii = getelementptr i8, ptr %i.aih, i64 1    ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !862), !noalias !807
  call void @llvm.experimental.noalias.scope.decl(metadata !863), !noalias !807
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !864
  %i.aij = getelementptr i8, ptr %i.aih, i64 %i.ue
  %i.aik = getelementptr i8, ptr %i.aij, i64 -4   ; 3 uses
  %i.ail = icmp ult ptr %i.aii, %i.aik
  br i1 %i.ail, label %.lr.ph.i.i113, label %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern14small_slice_eq.exit.i109

.lr.ph.i.i113:                                    ; preds = %.preheader.split.i107, %bb.jq
  %.sroa.04.030.i.i114 = phi ptr [ %i.aim, %bb.jq ], [ %i.aii, %.preheader.split.i107 ] ; 2 uses
  %.sroa.08.029.i.i115 = phi ptr [ %i.ain, %bb.jq ], [ %.phi.trans.insert.i.i.i.i.i.i.i, %.preheader.split.i107 ] ; 2 uses
  %.sroa.011.0.copyload.i.i116 = load i32, ptr %.sroa.04.030.i.i114, align 1, !alias.scope !862, !noalias !864
  %.sroa.013.0.copyload.i.i117 = load i32, ptr %.sroa.08.029.i.i115, align 1, !alias.scope !863, !noalias !864
  %.not.i.i118 = icmp eq i32 %.sroa.011.0.copyload.i.i116, %.sroa.013.0.copyload.i.i117
  br i1 %.not.i.i118, label %bb.jq, label %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern14small_slice_eq.exit.thread.loopexit8.i119

bb.jq:                                            ; preds = %.lr.ph.i.i113
  %i.aim = getelementptr inbounds nuw i8, ptr %.sroa.04.030.i.i114, i64 4 ; 2 uses
  %i.ain = getelementptr inbounds nuw i8, ptr %.sroa.08.029.i.i115, i64 4
  %i.aio = icmp ult ptr %i.aim, %i.aik
  br i1 %i.aio, label %.lr.ph.i.i113, label %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern14small_slice_eq.exit.i109

_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern14small_slice_eq.exit.thread6.i132: ; preds = %.noexc133, %bb.jp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !864
  br label %.preheader96.2.i.i.i.i.i.i.i

_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern14small_slice_eq.exit.thread.loopexit8.i119: ; preds = %.lr.ph.i.i113
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !864
  br label %bb.jr

_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern14small_slice_eq.exit.i109: ; preds = %bb.jq, %.preheader.split.i107
  %.sroa.015.0.copyload.i.i110 = load i32, ptr %i.aik, align 1, !alias.scope !862, !noalias !864
  %.sroa.017.0.copyload.i.i111 = load i32, ptr %i.up, align 1, !alias.scope !863, !noalias !864
  %i.aip = icmp eq i32 %.sroa.015.0.copyload.i.i110, %.sroa.017.0.copyload.i.i111
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !864
  br i1 %i.aip, label %.preheader96.2.i.i.i.i.i.i.i, label %bb.jr

bb.jr:                                            ; preds = %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern14small_slice_eq.exit.i109, %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern14small_slice_eq.exit.thread.loopexit8.i119
  %i.aiq = shl nuw i16 1, %i.aif
  %i.air = xor i16 %i.aiq, -1
  %i.ais = and i16 %.sroa.0.09.i108, %i.air       ; 2 uses
  %i.ait = icmp eq i16 %i.ais, 0
  br i1 %i.ait, label %.preheader96.1.i.i.i.i.i.i.i, label %.preheader.split.i107

._crit_edge.i9.i.i.i.i.i.i:                       ; preds = %.noexc19.i.i.i.i.i, %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern14small_slice_eq.exit.i, %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern14small_slice_eq.exit.thread6.i, %.preheader.i8.i.i.i.i.i.i
  %.sroa.014.3.lcssa.i.i.i.i.i.i.i = phi i8 [ %.sroa.014.0.lcssa.i.i.i.i.i.i.i, %.preheader.i8.i.i.i.i.i.i ], [ 1, %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern14small_slice_eq.exit.i ], [ 1, %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern14small_slice_eq.exit.thread6.i ], [ 0, %.noexc19.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i = phi i1 [ %i.adc, %.preheader.i8.i.i.i.i.i.i ], [ true, %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern14small_slice_eq.exit.i ], [ true, %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern14small_slice_eq.exit.thread6.i ], [ false, %.noexc19.i.i.i.i.i ]
  %.reass.reass.i.reass.reass.i.reass.reass.i.reass.reass.reass = add i64 %i.vr, %invariant.op2296 ; 2 uses
  %i.aiu = getelementptr inbounds nuw i8, ptr %i.vq, i64 %.reass.reass.i.reass.reass.i.reass.reass.i.reass.reass.reass ; 2 uses
  %.sroa.0.0.copyload.i58.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.aiu, align 1, !alias.scope !848, !noalias !866
  %i.aiv = getelementptr inbounds nuw i8, ptr %i.aiu, i64 %storemerge9295.i.i.i.i.i.i.i
  %.sroa.02.0.copyload.i59.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.aiv, align 1, !alias.scope !848, !noalias !866
  %i.aiw = icmp eq <16 x i8> %.sroa.0.0.copyload.i58.i.i.i.i.i.i.i, %i.acx
  %i.aix = icmp eq <16 x i8> %.sroa.02.0.copyload.i59.i.i.i.i.i.i.i, %i.acz
  %i.aiy = and <16 x i1> %i.aiw, %i.aix
  %i.aiz = bitcast <16 x i1> %i.aiy to i16        ; 2 uses
  %i.aja = icmp eq i16 %i.aiz, 0
  br i1 %i.aja, label %bb.jw, label %bb.jx

.lr.ph107.i.i.i.i.i.i.i:                          ; preds = %.preheader.i8.i.i.i.i.i.i, %.noexc19.i.i.i.i.i
  %.sroa.06.1106.i.i.i.i.i.i.i = phi i64 [ %i.aji, %.noexc19.i.i.i.i.i ], [ %.sroa.06.0.lcssa.i.i.i.i.i.i.i, %.preheader.i8.i.i.i.i.i.i ] ; 2 uses
  %i.ajb = getelementptr inbounds nuw i8, ptr %i.vq, i64 %.sroa.06.1106.i.i.i.i.i.i.i ; 4 uses
  %.sroa.0.0.copyload.i60.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.ajb, align 1, !alias.scope !848, !noalias !867
  %i.ajc = getelementptr inbounds nuw i8, ptr %i.ajb, i64 %storemerge9295.i.i.i.i.i.i.i
  %.sroa.02.0.copyload.i61.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.ajc, align 1, !alias.scope !848, !noalias !867
  %i.ajd = icmp eq <16 x i8> %.sroa.0.0.copyload.i60.i.i.i.i.i.i.i, %i.acx
  %i.aje = icmp eq <16 x i8> %.sroa.02.0.copyload.i61.i.i.i.i.i.i.i, %i.acz
  %i.ajf = and <16 x i1> %i.ajd, %i.aje
  %i.ajg = bitcast <16 x i1> %i.ajf to i16        ; 3 uses
  %i.ajh = icmp eq i16 %i.ajg, 0
  br i1 %i.ajh, label %.noexc19.i.i.i.i.i, label %bb.js

.noexc19.i.i.i.i.i:                               ; preds = %bb.jv, %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern14small_slice_eq.exit.thread.loopexit.us.i, %.lr.ph107.i.i.i.i.i.i.i
  %i.aji = add i64 %.sroa.06.1106.i.i.i.i.i.i.i, 16 ; 2 uses
  %i.ajj = add i64 %i.aji, %i.ul
  %.not1475 = icmp ult i64 %i.ajj, %i.vr
  br i1 %.not1475, label %.lr.ph107.i.i.i.i.i.i.i, label %._crit_edge.i9.i.i.i.i.i.i

bb.js:                                            ; preds = %.lr.ph107.i.i.i.i.i.i.i
  br i1 %i.un, label %.preheader.split.us.i, label %.preheader.split.i

.preheader.split.us.i:                            ; preds = %bb.js, %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern14small_slice_eq.exit.thread.loopexit.us.i
  %.sroa.0.09.us.i = phi i16 [ %i.ajw, %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern14small_slice_eq.exit.thread.loopexit.us.i ], [ %i.ajg, %bb.js ] ; 2 uses
  %i.ajk = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.0.09.us.i, i1 true) ; 2 uses
  %i.ajl = zext nneg i16 %i.ajk to i64
  %i.ajm = getelementptr i8, ptr %i.ajb, i64 %i.ajl ; 2 uses
  %i.ajn = getelementptr i8, ptr %i.ajm, i64 1
  call void @llvm.experimental.noalias.scope.decl(metadata !868), !noalias !807
  call void @llvm.experimental.noalias.scope.decl(metadata !869), !noalias !807
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !870
  %i.ajo = getelementptr i8, ptr %i.ajm, i64 %i.ue
  invoke void @_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E3newCskXhPDodhyTq_6mdtest(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.e, ptr noundef nonnull readonly %i.ajn, ptr noundef nonnull readonly %i.ajo, ptr noundef nonnull readonly %.phi.trans.insert.i.i.i.i.i.i.i, ptr noundef nonnull readonly %i.uo)
          to label %.noexc103 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc103:                                        ; preds = %.preheader.split.us.i
  %.sroa.0.0.copyload.i.us.i = load ptr, ptr %i.e, align 8, !noalias !871 ; 2 uses
  %.sroa.522.0.copyload.i.us.i = load ptr, ptr %.sroa.522.0..sroa_idx.i.i, align 8, !noalias !871 ; 2 uses
  %.sroa.623.0.copyload.i.us.i = load i64, ptr %.sroa.623.0..sroa_idx.i.i, align 8, !noalias !871 ; 3 uses
  %.sroa.8.0.copyload.i.us.i = load i64, ptr %.sroa.8.0..sroa_idx.i.i, align 8, !noalias !871 ; 2 uses
  %umax.i.us.i = call i64 @llvm.umax.i64(i64 %.sroa.8.0.copyload.i.us.i, i64 %.sroa.623.0.copyload.i.us.i)
  %exitcond.not.i.us.i1778.not = icmp ult i64 %.sroa.623.0.copyload.i.us.i, %.sroa.8.0.copyload.i.us.i
  br i1 %exitcond.not.i.us.i1778.not, label %_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCskXhPDodhyTq_6mdtest.exit.i.us.i.preheader, label %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern14small_slice_eq.exit.thread6.i

_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCskXhPDodhyTq_6mdtest.exit.i.us.i.preheader: ; preds = %.noexc103
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.us.i), "nonnull"(ptr %.sroa.522.0.copyload.i.us.i) ], !noalias !807
  br label %_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCskXhPDodhyTq_6mdtest.exit.i.us.i

bb.jt:                                            ; preds = %_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCskXhPDodhyTq_6mdtest.exit.i.us.i
  %i.ajp = add nuw i64 %.sroa.623.0.i.us.i1779, 1 ; 2 uses
  %exitcond.not.i.us.i = icmp eq i64 %i.ajp, %umax.i.us.i
  br i1 %exitcond.not.i.us.i, label %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern14small_slice_eq.exit.thread6.i, label %_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCskXhPDodhyTq_6mdtest.exit.i.us.i

_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCskXhPDodhyTq_6mdtest.exit.i.us.i: ; preds = %_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCskXhPDodhyTq_6mdtest.exit.i.us.i.preheader, %bb.jt
  %.sroa.623.0.i.us.i1779 = phi i64 [ %i.ajp, %bb.jt ], [ %.sroa.623.0.copyload.i.us.i, %_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCskXhPDodhyTq_6mdtest.exit.i.us.i.preheader ] ; 3 uses
  %i.ajq = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.us.i, i64 %.sroa.623.0.i.us.i1779
  %i.ajr = getelementptr inbounds nuw i8, ptr %.sroa.522.0.copyload.i.us.i, i64 %.sroa.623.0.i.us.i1779
  %i.ajs = load i8, ptr %i.ajq, align 1, !noalias !870, !noundef !7
  %i.ajt = load i8, ptr %i.ajr, align 1, !noalias !870, !noundef !7
  %.not21.i.us.i = icmp eq i8 %i.ajs, %i.ajt
  br i1 %.not21.i.us.i, label %bb.jt, label %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern14small_slice_eq.exit.thread.loopexit.us.i

_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern14small_slice_eq.exit.thread.loopexit.us.i: ; preds = %_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCskXhPDodhyTq_6mdtest.exit.i.us.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !870
  %i.aju = shl nuw i16 1, %i.ajk
  %i.ajv = xor i16 %i.aju, -1
  %i.ajw = and i16 %.sroa.0.09.us.i, %i.ajv       ; 2 uses
  %i.ajx = icmp eq i16 %i.ajw, 0
  br i1 %i.ajx, label %.noexc19.i.i.i.i.i, label %.preheader.split.us.i

.preheader.split.i:                               ; preds = %bb.js, %bb.jv
  %.sroa.0.09.i = phi i16 [ %i.akl, %bb.jv ], [ %i.ajg, %bb.js ] ; 2 uses
  %i.ajy = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.0.09.i, i1 true) ; 2 uses
  %i.ajz = zext nneg i16 %i.ajy to i64
  %i.aka = getelementptr i8, ptr %i.ajb, i64 %i.ajz ; 2 uses
  %i.akb = getelementptr i8, ptr %i.aka, i64 1    ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !868), !noalias !807
  call void @llvm.experimental.noalias.scope.decl(metadata !869), !noalias !807
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !870
  %i.akc = getelementptr i8, ptr %i.aka, i64 %i.ue
  %i.akd = getelementptr i8, ptr %i.akc, i64 -4   ; 3 uses
  %i.ake = icmp ult ptr %i.akb, %i.akd
  br i1 %i.ake, label %.lr.ph.i.i, label %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern14small_slice_eq.exit.i

.lr.ph.i.i:                                       ; preds = %.preheader.split.i, %bb.ju
  %.sroa.04.030.i.i = phi ptr [ %i.akf, %bb.ju ], [ %i.akb, %.preheader.split.i ] ; 2 uses
  %.sroa.08.029.i.i = phi ptr [ %i.akg, %bb.ju ], [ %.phi.trans.insert.i.i.i.i.i.i.i, %.preheader.split.i ] ; 2 uses
  %.sroa.011.0.copyload.i.i = load i32, ptr %.sroa.04.030.i.i, align 1, !alias.scope !868, !noalias !870
  %.sroa.013.0.copyload.i.i = load i32, ptr %.sroa.08.029.i.i, align 1, !alias.scope !869, !noalias !870
  %.not.i.i102 = icmp eq i32 %.sroa.011.0.copyload.i.i, %.sroa.013.0.copyload.i.i
  br i1 %.not.i.i102, label %bb.ju, label %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern14small_slice_eq.exit.thread.loopexit8.i

bb.ju:                                            ; preds = %.lr.ph.i.i
  %i.akf = getelementptr inbounds nuw i8, ptr %.sroa.04.030.i.i, i64 4 ; 2 uses
  %i.akg = getelementptr inbounds nuw i8, ptr %.sroa.08.029.i.i, i64 4
  %i.akh = icmp ult ptr %i.akf, %i.akd
  br i1 %i.akh, label %.lr.ph.i.i, label %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern14small_slice_eq.exit.i

_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern14small_slice_eq.exit.thread6.i: ; preds = %.noexc103, %bb.jt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !870
  br label %._crit_edge.i9.i.i.i.i.i.i

_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern14small_slice_eq.exit.thread.loopexit8.i: ; preds = %.lr.ph.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !870
  br label %bb.jv

_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern14small_slice_eq.exit.i: ; preds = %bb.ju, %.preheader.split.i
  %.sroa.015.0.copyload.i.i = load i32, ptr %i.akd, align 1, !alias.scope !868, !noalias !870
  %.sroa.017.0.copyload.i.i = load i32, ptr %i.up, align 1, !alias.scope !869, !noalias !870
  %i.aki = icmp eq i32 %.sroa.015.0.copyload.i.i, %.sroa.017.0.copyload.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !870
  br i1 %i.aki, label %._crit_edge.i9.i.i.i.i.i.i, label %bb.jv

bb.jv:                                            ; preds = %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern14small_slice_eq.exit.i, %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern14small_slice_eq.exit.thread.loopexit8.i
  %i.akj = shl nuw i16 1, %i.ajy
  %i.akk = xor i16 %i.akj, -1
  %i.akl = and i16 %.sroa.0.09.i, %i.akk          ; 2 uses
  %i.akm = icmp eq i16 %i.akl, 0
  br i1 %i.akm, label %.noexc19.i.i.i.i.i, label %.preheader.split.i

bb.jw:                                            ; preds = %.noexc20.i.i.i.i.i, %._crit_edge.i9.i.i.i.i.i.i
  %.sroa.014.5.i.i.i.i.i.i.i = phi i8 [ %.sroa.014.3.lcssa.i.i.i.i.i.i.i, %._crit_edge.i9.i.i.i.i.i.i ], [ %i.akp, %.noexc20.i.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !847
  br label %.loopexit.i.i.i.i.i

bb.jx:                                            ; preds = %._crit_edge.i9.i.i.i.i.i.i
  %i.akn = invoke fastcc noundef zeroext i1 @_RNCNvNtNtCs4NRVxsYgnAr_4core3str7pattern13simd_containss0_0CskXhPDodhyTq_6mdtest(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.m, i64 noundef %.reass.reass.i.reass.reass.i.reass.reass.i.reass.reass.reass, i16 noundef %i.aiz, i1 noundef zeroext %.lcssa.i.i.i.i.i.i.i)
          to label %.noexc20.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !807

.noexc20.i.i.i.i.i:                               ; preds = %bb.jx
  %i.ako = zext i1 %i.akn to i8
  %i.akp = or i8 %.sroa.014.3.lcssa.i.i.i.i.i.i.i, %i.ako
  br label %bb.jw

bb.jy:                                            ; preds = %bb.hn
  %bcmp.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull readonly %i.ud, ptr nonnull readonly %i.vq, i64 %i.ue), !alias.scope !872, !noalias !807
  %i.akq = icmp eq i32 %bcmp.i.i.i.i.i.i, 0
end_hunk_0
