Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quiche-rs/original/h3i-bf848a31a08909a0.h3i.e031f187eee866af-cgu.15?download=true
inline.NumInlined: 312
inline.NumDeleted: 129
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvXs1_NtNtNtCskKLDkoKarTP_4core3ops8function5implsQNCNvNtNtCsjfnSKV9Rz3v_3h3i7prompts2h316squish_suggester0INtB7_5FnMutTRRReEE8call_mutBW_:bb.a
    #dbg_value(i64 %i.o, !19652, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18743)
    #dbg_value(ptr undef, !19652, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !18743)
    #dbg_value(ptr undef, !19650, !DIExpression(), !18741)
    #dbg_value(ptr undef, !19625, !DIExpression(), !18740)
    #dbg_value(ptr undef, !19623, !DIExpression(), !18739)
    #dbg_value(ptr undef, !19620, !DIExpression(), !18738)
    #dbg_value(ptr undef, !19621, !DIExpression(), !18738)
  br label %bb.ao, !dbg !20041

bb.an:                                            ; preds = %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CsjfnSKV9Rz3v_3h3i.exit.i.i.i.i
    #dbg_value(ptr undef, !19625, !DIExpression(), !18740)
    #dbg_value(ptr undef, !19623, !DIExpression(), !18739)
    #dbg_value(ptr undef, !19620, !DIExpression(), !18738)
    #dbg_value(ptr undef, !19621, !DIExpression(), !18738)
  %i.hh = icmp ult i64 %i.hg, %i.hj, !dbg !20042
  br i1 %i.hh, label %bb.ao, label %_RNvNtNtCskKLDkoKarTP_4core3str7pattern13simd_contains.exit.i.i, !dbg !20041

bb.ao:                                            ; preds = %.lr.ph, %bb.an
  %i.hi = phi i64 [ %i.o, %.lr.ph ], [ %i.hj, %bb.an ]
    #dbg_value(i64 %i.hi, !19718, !DIExpression(), !18775)
    #dbg_value(i64 %i.hi, !19721, !DIExpression(), !18778)
    #dbg_value(i64 1, !19719, !DIExpression(), !18775)
    #dbg_value(i64 1, !19722, !DIExpression(), !18778)
  %i.hj = add nsw i64 %i.hi, -1, !dbg !20043      ; 6 uses
    #dbg_value(i64 %i.hj, !19654, !DIExpression(), !18779)
    #dbg_value(ptr poison, !19724, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !18782)
    #dbg_value(ptr undef, !19728, !DIExpression(DW_OP_deref), !18782)
    #dbg_value(ptr poison, !19734, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 16, DW_OP_deref), !18786)
    #dbg_value(ptr poison, !19740, !DIExpression(), !18786)
    #dbg_value(i64 %i.hj, !19739, !DIExpression(), !18787)
  %i.hk = icmp ult i64 %i.hj, %i.o, !dbg !20044
  br i1 %i.hk, label %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CsjfnSKV9Rz3v_3h3i.exit.i.i.i.i, label %.invoke.i, !dbg !20044

.invoke.i:                                        ; preds = %bb.ao, %.lr.ph120, %.preheader.i39.i.i.i
  %i.hl = phi i64 [ %i.gc, %.preheader.i39.i.i.i ], [ %i.fl, %.lr.ph120 ], [ %i.hj, %bb.ao ]
  %i.hm = phi i64 [ %i.dr, %.preheader.i39.i.i.i ], [ %i.dr, %.lr.ph120 ], [ %i.o, %bb.ao ]
  %i.hn = phi ptr [ @26, %.preheader.i39.i.i.i ], [ @26, %.lr.ph120 ], [ @29, %bb.ao ]
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.hl, i64 noundef range(i64 0, -9223372036854775808) %i.hm, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.hn) #32
          to label %.cont.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !20045

.cont.i:                                          ; preds = %.invoke.i
  unreachable

_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CsjfnSKV9Rz3v_3h3i.exit.i.i.i.i: ; preds = %bb.ao
  %i.ho = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.hj, !dbg !20044
  %i.hp = load i8, ptr %i.ho, align 1, !dbg !20044, !alias.scope !19711, !noalias !19742, !noundef !1445 ; 2 uses
  %.not.i.not.i.i.i.i = icmp eq i8 %i.hp, %i.hd, !dbg !20044
  br i1 %.not.i.not.i.i.i.i, label %bb.an, label %bb.ap, !dbg !20046

bb.ap:                                            ; preds = %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CsjfnSKV9Rz3v_3h3i.exit.i.i.i.i
  %i.hq = add nuw nsw i64 %i.o, 15, !dbg !20047
  %i.hr = icmp ult i64 %i.k, %i.hq, !dbg !20048
  br i1 %i.hr, label %.lr.ph.split.us.i.i21.i.i, label %bb.aq, !dbg !20048

.thread.i.i.i:                                    ; preds = %bb.am
  %i.hs = icmp ult i64 %i.k, 17, !dbg !20048
  br i1 %i.hs, label %.lr.ph.split.us.i.i21.i.i, label %.thread131.i.i.i, !dbg !20048

.thread131.i.i.i:                                 ; preds = %.thread.i.i.i
    #dbg_value(i8 %i.hd, !19713, !DIExpression(), !18771)
    #dbg_value(i8 %i.hd, !19532, !DIExpression(), !18768)
  %i.ht = insertelement <16 x i8> poison, i8 %i.hd, i64 0, !dbg !20049
  %i.hu = shufflevector <16 x i8> %i.ht, <16 x i8> poison, <16 x i32> zeroinitializer, !dbg !20049
    #dbg_value(<16 x i8> %i.hu, !19536, !DIExpression(), !18795)
    #dbg_value(i64 1, !19534, !DIExpression(), !18796)
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  %.pre.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i, align 1, !dbg !20050, !alias.scope !19711
  br label %bb.ar, !dbg !20050

bb.aq:                                            ; preds = %bb.ap
    #dbg_value(i8 %i.hd, !19713, !DIExpression(), !18771)
    #dbg_value(i8 %i.hd, !19532, !DIExpression(), !18768)
  %i.hv = insertelement <16 x i8> poison, i8 %i.hd, i64 0, !dbg !20049
  %i.hw = shufflevector <16 x i8> %i.hv, <16 x i8> poison, <16 x i32> zeroinitializer, !dbg !20049
    #dbg_value(<16 x i8> %i.hw, !19536, !DIExpression(), !18795)
    #dbg_value(i64 %i.hj, !19534, !DIExpression(), !18796)
  br label %bb.ar, !dbg !20050

.lr.ph.split.us.i.i21.i.i:                        ; preds = %.thread.i.i.i, %bb.ap
    #dbg_value(ptr undef, !19615, !DIExpression(), !18713)
    #dbg_value(ptr undef, !19616, !DIExpression(), !18713)
    #dbg_value(ptr undef, !19593, !DIExpression(), !18712)
    #dbg_value(ptr undef, !19591, !DIExpression(), !18712)
    #dbg_value(ptr undef, !19554, !DIExpression(), !18711)
    #dbg_value(i64 0, !19743, !DIExpression(), !18805)
    #dbg_value(i64 1, !19761, !DIExpression(), !18808)
    #dbg_value(i64 1, !19764, !DIExpression(), !18812)
    #dbg_value(i64 1, !19743, !DIExpression(), !18814)
    #dbg_value(ptr %i.i, !19744, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18805)
    #dbg_value(i64 %i.k, !19744, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18805)
    #dbg_value(i64 %i.o, !19745, !DIExpression(), !18805)
    #dbg_value(ptr %i.i, !19570, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18815)
    #dbg_value(i64 %i.o, !19570, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18815)
    #dbg_value(ptr %i.i, !19762, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18808)
    #dbg_value(ptr %i.i, !19765, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18812)
    #dbg_value(ptr %i.i, !19744, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18814)
    #dbg_value(i64 %i.k, !19762, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18808)
    #dbg_value(i64 %i.k, !19765, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18812)
    #dbg_value(i64 %i.k, !19744, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18814)
  %bcmp.i.i.us24.i.i.i.i = tail call i32 @bcmp(ptr noundef nonnull readonly dereferenceable(1) %i.i, ptr noundef nonnull readonly dereferenceable(1) %i.m, i64 range(i64 2, 33) %i.o), !dbg !20051, !alias.scope !19769, !noalias !19770
  %i.hx = icmp eq i32 %bcmp.i.i.us24.i.i.i.i, 0, !dbg !20051
  br i1 %i.hx, label %.loopexit.i, label %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CsjfnSKV9Rz3v_3h3i.exit.backedge.us.i.i.i.i, !dbg !20052

.split.us.i.i.i.i:                                ; preds = %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CsjfnSKV9Rz3v_3h3i.exit.backedge.us.i.i.i.i
  %i.hy = getelementptr inbounds nuw i8, ptr %.pn.i.i.i, i64 1, !dbg !20053 ; 2 uses
    #dbg_value(ptr %i.hy, !19744, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18805)
    #dbg_value(i64 %i.ia, !19744, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18805)
    #dbg_value(i64 %i.o, !19745, !DIExpression(), !18805)
    #dbg_value(ptr %i.hy, !19762, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18808)
    #dbg_value(ptr %i.hy, !19765, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18812)
    #dbg_value(ptr %i.hy, !19744, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18814)
    #dbg_value(i64 %i.ia, !19762, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18808)
    #dbg_value(i64 %i.ia, !19765, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18812)
    #dbg_value(i64 %i.ia, !19744, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18814)
    #dbg_value(i64 %i.ia, !19766, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !18825)
    #dbg_value(i64 %i.ia, !19745, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !18814)
    #dbg_value(ptr %i.hy, !19570, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18815)
    #dbg_value(i64 %i.o, !19570, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18815)
    #dbg_value(ptr %i.hy, !19595, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18826)
    #dbg_value(i64 %i.o, !19595, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18826)
    #dbg_value(ptr poison, !19692, !DIExpression(DW_OP_deref), !18827)
    #dbg_value(ptr %i.hy, !19691, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18827)
    #dbg_value(i64 %i.o, !19691, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18827)
    #dbg_value(ptr poison, !19686, !DIExpression(DW_OP_deref, DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !18828)
    #dbg_value(ptr %i.hy, !19685, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18828)
    #dbg_value(ptr %i.hy, !19776, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18829)
    #dbg_value(i64 %i.o, !19685, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18828)
    #dbg_value(i64 %i.o, !19776, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18829)
    #dbg_value(ptr poison, !19680, !DIExpression(), !18830)
    #dbg_value(ptr undef, !19679, !DIExpression(), !18750)
    #dbg_value(i64 %i.o, !19777, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18829)
    #dbg_value(i64 %i.o, !19778, !DIExpression(), !18831)
    #dbg_value(i64 %i.o, !19773, !DIExpression(), !18832)
    #dbg_value(i64 %i.o, !19774, !DIExpression(), !18833)
    #dbg_value(ptr %i.m, !19777, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18829)
    #dbg_value(ptr %i.hy, !19771, !DIExpression(), !18832)
    #dbg_value(ptr %i.m, !19772, !DIExpression(), !18832)
  %bcmp.i.i.us.i.i.i.i = tail call i32 @bcmp(ptr noundef nonnull readonly dereferenceable(1) %i.hy, ptr noundef nonnull readonly dereferenceable(1) %i.m, i64 range(i64 2, 33) %i.o), !dbg !20051, !alias.scope !19769, !noalias !19770
  %i.hz = icmp eq i32 %bcmp.i.i.us.i.i.i.i, 0, !dbg !20051
  br i1 %i.hz, label %.loopexit.i, label %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CsjfnSKV9Rz3v_3h3i.exit.backedge.us.i.i.i.i, !dbg !20052

_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CsjfnSKV9Rz3v_3h3i.exit.backedge.us.i.i.i.i: ; preds = %.lr.ph.split.us.i.i21.i.i, %.split.us.i.i.i.i
  %.pn.i.i.i = phi ptr [ %i.hy, %.split.us.i.i.i.i ], [ %i.i, %.lr.ph.split.us.i.i21.i.i ]
  %.in.i.i.i = phi i64 [ %i.ia, %.split.us.i.i.i.i ], [ %i.k, %.lr.ph.split.us.i.i21.i.i ]
  %i.ia = add i64 %.in.i.i.i, -1, !dbg !20054     ; 2 uses
    #dbg_value(ptr undef, !19554, !DIExpression(), !18711)
    #dbg_value(i64 0, !19743, !DIExpression(), !18805)
    #dbg_value(i64 1, !19761, !DIExpression(), !18808)
    #dbg_value(i64 1, !19764, !DIExpression(), !18812)
    #dbg_value(i64 1, !19743, !DIExpression(), !18814)
  %.not29.i.i.i.i = icmp ugt i64 %i.o, %i.ia, !dbg !20055
  br i1 %.not29.i.i.i.i, label %.loopexit.i, label %.split.us.i.i.i.i, !dbg !20055

bb.ar:                                            ; preds = %bb.aq, %.thread131.i.i.i
  %i.ib = phi i8 [ %.pre.i.i.i, %.thread131.i.i.i ], [ %i.hp, %bb.aq ], !dbg !20050
  %i.ic = phi <16 x i8> [ %i.hu, %.thread131.i.i.i ], [ %i.hw, %bb.aq ] ; 6 uses
  %storemerge130133.i.i.i = phi i64 [ 1, %.thread131.i.i.i ], [ %i.hj, %bb.aq ] ; 6 uses
    #dbg_value(i8 %i.ib, !19713, !DIExpression(), !18835)
  %i.id = insertelement <16 x i8> poison, i8 %i.ib, i64 0, !dbg !20056
  %i.ie = shufflevector <16 x i8> %i.id, <16 x i8> poison, <16 x i32> zeroinitializer, !dbg !20056 ; 6 uses
    #dbg_value(<16 x i8> %i.ie, !19537, !DIExpression(), !18836)
    #dbg_value(i64 %i.he, !19705, !DIExpression(), !18837)
    #dbg_value(i64 %i.he, !19709, !DIExpression(), !18765)
  %i.if = getelementptr inbounds nuw i8, ptr %i.m, i64 1, !dbg !20057
    #dbg_value(ptr %i.if, !19538, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18838)
    #dbg_value(i64 %i.he, !19538, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18838)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !20058, !noalias !19769
  store ptr %i.i, ptr %i.a, align 8, !dbg !20059, !noalias !19769
  %i.ig = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !20059
  store i64 %i.k, ptr %i.ig, align 8, !dbg !20059, !noalias !19769
  %i.ih = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !20059
  store ptr %i.if, ptr %i.ih, align 8, !dbg !20059, !noalias !19769
  %i.ii = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !20059
  store i64 %i.he, ptr %i.ii, align 8, !dbg !20059, !noalias !19769
    #dbg_value(ptr %i.i, !19515, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18684)
    #dbg_value(i64 %i.k, !19515, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18684)
    #dbg_value(ptr undef, !19515, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !18684)
    #dbg_value(ptr undef, !19515, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !18684)
    #dbg_value(ptr undef, !19515, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !18684)
    #dbg_value(i64 0, !19540, !DIExpression(), !18839)
    #dbg_value(i8 0, !19541, !DIExpression(), !18840)
  %i.ij = add nuw nsw i64 %i.o, 63                ; 2 uses
  %.not.i17.i.i = icmp ult i64 %i.ij, %i.k, !dbg !20060
  br i1 %.not.i17.i.i, label %.lr.ph.i19.i.i, label %.preheader.i18.i.i, !dbg !20060

.preheader.i18.i.i:                               ; preds = %bb.av, %bb.ar
  %.sroa.014.0.lcssa.i.i.i = phi i8 [ 0, %bb.ar ], [ %.sroa.014.2.3.i.i.i, %bb.av ], !dbg !20061 ; 2 uses
  %.sroa.06.0.lcssa.i.i.i = phi i64 [ 0, %bb.ar ], [ %i.kc, %bb.av ], !dbg !20062 ; 2 uses
  %i.ik = add nuw nsw i64 %i.o, 15                ; 2 uses
    #dbg_value(i64 %.sroa.06.0.lcssa.i.i.i, !19540, !DIExpression(), !18839)
    #dbg_value(i8 %.sroa.014.0.lcssa.i.i.i, !19541, !DIExpression(), !18840)
  %i.il = add i64 %.sroa.06.0.lcssa.i.i.i, %i.ik, !dbg !20063
  %i.im = icmp uge i64 %i.il, %i.k, !dbg !20063
  %i.in = trunc nuw i8 %.sroa.014.0.lcssa.i.i.i to i1 ; 2 uses
  %or.cond3143.i.i.i = select i1 %i.im, i1 true, i1 %i.in, !dbg !20063
  br i1 %or.cond3143.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph145.i.i.i, !dbg !20063

.lr.ph.i19.i.i:                                   ; preds = %bb.ar, %bb.av
  %.sroa.06.0141.i.i.i = phi i64 [ %i.kc, %bb.av ], [ 0, %bb.ar ] ; 6 uses
    #dbg_value(i64 %.sroa.06.0141.i.i.i, !19540, !DIExpression(), !18839)
    #dbg_value(i16 0, !19543, !DIExpression(DW_OP_LLVM_fragment, 0, 16), !18841)
    #dbg_value(i16 0, !19543, !DIExpression(DW_OP_LLVM_fragment, 16, 16), !18841)
    #dbg_value(i16 0, !19543, !DIExpression(DW_OP_LLVM_fragment, 32, 16), !18841)
    #dbg_value(i16 0, !19543, !DIExpression(DW_OP_LLVM_fragment, 48, 16), !18841)
    #dbg_value(i64 0, !19544, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18842)
    #dbg_value(i64 4, !19544, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18842)
  %i.io = getelementptr inbounds nuw i8, ptr %i.i, i64 %.sroa.06.0141.i.i.i ; 5 uses
    #dbg_value(i64 0, !19544, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !18842)
    #dbg_value(i64 0, !19545, !DIExpression(), !18843)
    #dbg_value(ptr poison, !19785, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 16, DW_OP_deref), !18853)
    #dbg_value(ptr poison, !19791, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 24, DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !18853)
    #dbg_value(ptr poison, !19792, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 32, DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !18853)
    #dbg_value(!DIArgList(i64 %.sroa.06.0141.i.i.i, i64 0), !19789, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value), !18853)
    #dbg_value(!DIArgList(i64 %.sroa.06.0141.i.i.i, i64 0), !19810, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value), !18856)
    #dbg_value(!DIArgList(i64 %.sroa.06.0141.i.i.i, i64 0), !19810, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value), !18858)
    #dbg_value(ptr %i.i, !19811, !DIExpression(), !18856)
    #dbg_value(ptr %i.io, !19814, !DIExpression(), !18861)
    #dbg_value(ptr %i.io, !19820, !DIExpression(), !18864)
  %.sroa.0.0.copyload.i.i.i.i = load <16 x i8>, ptr %i.io, align 1, !dbg !20064, !alias.scope !19822, !noalias !19823
    #dbg_value(<16 x i8> %.sroa.0.0.copyload.i.i.i.i, !19793, !DIExpression(), !18870)
    #dbg_value(<16 x i8> %.sroa.0.0.copyload.i.i.i.i, !19832, !DIExpression(), !18873)
    #dbg_value(ptr %i.i, !19811, !DIExpression(), !18858)
    #dbg_value(ptr %i.io, !19811, !DIExpression(), !18875)
    #dbg_value(i64 %storemerge130133.i.i.i, !19810, !DIExpression(), !18875)
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 %storemerge130133.i.i.i, !dbg !20065
    #dbg_value(ptr %i.ip, !19814, !DIExpression(), !18877)
    #dbg_value(ptr %i.ip, !19820, !DIExpression(), !18879)
  %.sroa.01.0.copyload.i.i.i.i = load <16 x i8>, ptr %i.ip, align 1, !dbg !20066, !alias.scope !19822, !noalias !19823
    #dbg_value(<16 x i8> %.sroa.01.0.copyload.i.i.i.i, !19794, !DIExpression(), !18881)
    #dbg_value(<16 x i8> %.sroa.01.0.copyload.i.i.i.i, !19832, !DIExpression(), !18883)
    #dbg_value(<16 x i8> %i.ic, !19839, !DIExpression(), !18873)
  %i.iq = icmp eq <16 x i8> %.sroa.0.0.copyload.i.i.i.i, %i.ic, !dbg !20067
    #dbg_value(<16 x i8> poison, !19795, !DIExpression(), !18884)
    #dbg_value(<16 x i8> poison, !19844, !DIExpression(), !18887)
    #dbg_value(<16 x i8> %i.ie, !19839, !DIExpression(), !18883)
  %i.ir = icmp eq <16 x i8> %.sroa.01.0.copyload.i.i.i.i, %i.ie, !dbg !20068
    #dbg_value(<16 x i8> poison, !19796, !DIExpression(), !18888)
    #dbg_value(<16 x i8> poison, !19848, !DIExpression(), !18887)
  %i.is = and <16 x i1> %i.iq, %i.ir, !dbg !20069
    #dbg_value(<16 x i8> poison, !19797, !DIExpression(), !18889)
    #dbg_declare(ptr poison, !19850, !DIExpression(), !18892)
    #dbg_value(<16 x i8> poison, !19856, !DIExpression(), !18897)
    #dbg_value(<16 x i8> poison, !19861, !DIExpression(), !18898)
    #dbg_value(i64 1, !19544, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18842)
  %2 = bitcast <16 x i1> %i.is to i16, !dbg !20070 ; 2 uses
    #dbg_value(i16 %2, !19543, !DIExpression(DW_OP_LLVM_fragment, 0, 16), !18841)
    #dbg_value(i64 1, !19544, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !18842)
    #dbg_value(i64 1, !19545, !DIExpression(), !18843)
    #dbg_value(!DIArgList(i64 %.sroa.06.0141.i.i.i, i64 16), !19789, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value), !18853)
    #dbg_value(!DIArgList(i64 %.sroa.06.0141.i.i.i, i64 16), !19810, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value), !18856)
    #dbg_value(!DIArgList(i64 %.sroa.06.0141.i.i.i, i64 16), !19810, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value), !18858)
  %i.it = getelementptr inbounds nuw i8, ptr %i.io, i64 16, !dbg !20071 ; 2 uses
    #dbg_value(ptr %i.it, !19814, !DIExpression(), !18861)
    #dbg_value(ptr %i.it, !19820, !DIExpression(), !18864)
  %.sroa.0.0.copyload.i.1.i.i.i = load <16 x i8>, ptr %i.it, align 1, !dbg !20064, !alias.scope !19822, !noalias !19823
    #dbg_value(<16 x i8> %.sroa.0.0.copyload.i.1.i.i.i, !19793, !DIExpression(), !18870)
    #dbg_value(<16 x i8> %.sroa.0.0.copyload.i.1.i.i.i, !19832, !DIExpression(), !18873)
    #dbg_value(ptr %i.it, !19811, !DIExpression(), !18875)
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 %storemerge130133.i.i.i, !dbg !20065
    #dbg_value(ptr %i.iu, !19814, !DIExpression(), !18877)
    #dbg_value(ptr %i.iu, !19820, !DIExpression(), !18879)
  %.sroa.01.0.copyload.i.1.i.i.i = load <16 x i8>, ptr %i.iu, align 1, !dbg !20066, !alias.scope !19822, !noalias !19823
    #dbg_value(<16 x i8> %.sroa.01.0.copyload.i.1.i.i.i, !19794, !DIExpression(), !18881)
    #dbg_value(<16 x i8> %.sroa.01.0.copyload.i.1.i.i.i, !19832, !DIExpression(), !18883)
  %i.iv = icmp eq <16 x i8> %.sroa.0.0.copyload.i.1.i.i.i, %i.ic, !dbg !20067
  %i.iw = icmp eq <16 x i8> %.sroa.01.0.copyload.i.1.i.i.i, %i.ie, !dbg !20068
  %i.ix = and <16 x i1> %i.iv, %i.iw, !dbg !20069
    #dbg_declare(ptr poison, !19850, !DIExpression(), !18892)
    #dbg_value(i64 2, !19544, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18842)
  %3 = bitcast <16 x i1> %i.ix to i16, !dbg !20070 ; 2 uses
    #dbg_value(i16 %3, !19543, !DIExpression(DW_OP_LLVM_fragment, 16, 16), !18841)
    #dbg_value(i64 2, !19544, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !18842)
    #dbg_value(i64 2, !19545, !DIExpression(), !18843)
    #dbg_value(!DIArgList(i64 %.sroa.06.0141.i.i.i, i64 32), !19789, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value), !18853)
    #dbg_value(!DIArgList(i64 %.sroa.06.0141.i.i.i, i64 32), !19810, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value), !18856)
    #dbg_value(!DIArgList(i64 %.sroa.06.0141.i.i.i, i64 32), !19810, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value), !18858)
  %i.iy = getelementptr inbounds nuw i8, ptr %i.io, i64 32, !dbg !20071 ; 2 uses
    #dbg_value(ptr %i.iy, !19814, !DIExpression(), !18861)
    #dbg_value(ptr %i.iy, !19820, !DIExpression(), !18864)
  %.sroa.0.0.copyload.i.2.i.i.i = load <16 x i8>, ptr %i.iy, align 1, !dbg !20064, !alias.scope !19822, !noalias !19823
    #dbg_value(<16 x i8> %.sroa.0.0.copyload.i.2.i.i.i, !19793, !DIExpression(), !18870)
    #dbg_value(<16 x i8> %.sroa.0.0.copyload.i.2.i.i.i, !19832, !DIExpression(), !18873)
    #dbg_value(ptr %i.iy, !19811, !DIExpression(), !18875)
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 %storemerge130133.i.i.i, !dbg !20065
    #dbg_value(ptr %i.iz, !19814, !DIExpression(), !18877)
    #dbg_value(ptr %i.iz, !19820, !DIExpression(), !18879)
  %.sroa.01.0.copyload.i.2.i.i.i = load <16 x i8>, ptr %i.iz, align 1, !dbg !20066, !alias.scope !19822, !noalias !19823
    #dbg_value(<16 x i8> %.sroa.01.0.copyload.i.2.i.i.i, !19794, !DIExpression(), !18881)
    #dbg_value(<16 x i8> %.sroa.01.0.copyload.i.2.i.i.i, !19832, !DIExpression(), !18883)
  %i.ja = icmp eq <16 x i8> %.sroa.0.0.copyload.i.2.i.i.i, %i.ic, !dbg !20067
  %i.jb = icmp eq <16 x i8> %.sroa.01.0.copyload.i.2.i.i.i, %i.ie, !dbg !20068
  %i.jc = and <16 x i1> %i.ja, %i.jb, !dbg !20069
    #dbg_declare(ptr poison, !19850, !DIExpression(), !18892)
    #dbg_value(i64 3, !19544, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18842)
  %4 = bitcast <16 x i1> %i.jc to i16, !dbg !20070 ; 2 uses
    #dbg_value(i16 %4, !19543, !DIExpression(DW_OP_LLVM_fragment, 32, 16), !18841)
    #dbg_value(i64 3, !19544, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !18842)
    #dbg_value(i64 3, !19545, !DIExpression(), !18843)
    #dbg_value(!DIArgList(i64 %.sroa.06.0141.i.i.i, i64 48), !19789, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value), !18853)
    #dbg_value(!DIArgList(i64 %.sroa.06.0141.i.i.i, i64 48), !19810, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value), !18856)
    #dbg_value(!DIArgList(i64 %.sroa.06.0141.i.i.i, i64 48), !19810, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value), !18858)
  %i.jd = getelementptr inbounds nuw i8, ptr %i.io, i64 48, !dbg !20071 ; 2 uses
    #dbg_value(ptr %i.jd, !19814, !DIExpression(), !18861)
    #dbg_value(ptr %i.jd, !19820, !DIExpression(), !18864)
  %.sroa.0.0.copyload.i.3.i.i.i = load <16 x i8>, ptr %i.jd, align 1, !dbg !20064, !alias.scope !19822, !noalias !19823
    #dbg_value(<16 x i8> %.sroa.0.0.copyload.i.3.i.i.i, !19793, !DIExpression(), !18870)
    #dbg_value(<16 x i8> %.sroa.0.0.copyload.i.3.i.i.i, !19832, !DIExpression(), !18873)
    #dbg_value(ptr %i.jd, !19811, !DIExpression(), !18875)
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 %storemerge130133.i.i.i, !dbg !20065
    #dbg_value(ptr %i.je, !19814, !DIExpression(), !18877)
    #dbg_value(ptr %i.je, !19820, !DIExpression(), !18879)
  %.sroa.01.0.copyload.i.3.i.i.i = load <16 x i8>, ptr %i.je, align 1, !dbg !20066, !alias.scope !19822, !noalias !19823
    #dbg_value(<16 x i8> %.sroa.01.0.copyload.i.3.i.i.i, !19794, !DIExpression(), !18881)
    #dbg_value(<16 x i8> %.sroa.01.0.copyload.i.3.i.i.i, !19832, !DIExpression(), !18883)
  %i.jf = icmp eq <16 x i8> %.sroa.0.0.copyload.i.3.i.i.i, %i.ic, !dbg !20067
  %i.jg = icmp eq <16 x i8> %.sroa.01.0.copyload.i.3.i.i.i, %i.ie, !dbg !20068
  %i.jh = and <16 x i1> %i.jf, %i.jg, !dbg !20069
    #dbg_declare(ptr poison, !19850, !DIExpression(), !18892)
    #dbg_value(i64 4, !19544, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18842)
  %i.ji = bitcast <16 x i1> %i.jh to i16, !dbg !20070 ; 2 uses
    #dbg_value(i16 %i.ji, !19543, !DIExpression(DW_OP_LLVM_fragment, 48, 16), !18841)
    #dbg_value(i8 0, !19541, !DIExpression(), !18840)
    #dbg_value(i64 1, !19546, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18899)
    #dbg_value(i64 0, !19547, !DIExpression(), !18900)
    #dbg_value(i16 %2, !19548, !DIExpression(), !18901)
  %i.jj = icmp eq i16 %2, 0, !dbg !20072
  br i1 %i.jj, label %.preheader134.1.i.i.i, label %bb.aw, !dbg !20072

.preheader134.1.i.i.i:                            ; preds = %.noexc16.i, %.lr.ph.i19.i.i
  %.sroa.014.2.i.i.i = phi i8 [ 0, %.lr.ph.i19.i.i ], [ %i.kh, %.noexc16.i ], !dbg !20073 ; 3 uses
    #dbg_value(i8 %.sroa.014.2.i.i.i, !19541, !DIExpression(), !18840)
    #dbg_value(i64 2, !19546, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18899)
    #dbg_value(i64 1, !19547, !DIExpression(), !18900)
    #dbg_value(i16 %3, !19548, !DIExpression(), !18901)
  %i.jk = icmp eq i16 %3, 0, !dbg !20072
  br i1 %i.jk, label %.preheader134.2.i.i.i, label %bb.as, !dbg !20072

bb.as:                                            ; preds = %.preheader134.1.i.i.i
  %i.jl = or disjoint i64 %.sroa.06.0141.i.i.i, 16, !dbg !20074
  %i.jm = trunc nuw i8 %.sroa.014.2.i.i.i to i1, !dbg !20075
  %i.jn = invoke fastcc noundef zeroext i1 @_RNCNvNtNtCskKLDkoKarTP_4core3str7pattern13simd_containss0_0CsjfnSKV9Rz3v_3h3i(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %i.jl, i16 noundef %3, i1 noundef zeroext %i.jm) #33
          to label %.noexc13.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !20076

.noexc13.i:                                       ; preds = %bb.as
  %i.jo = zext i1 %i.jn to i8, !dbg !20077
  %i.jp = or i8 %.sroa.014.2.i.i.i, %i.jo, !dbg !20077
    #dbg_value(i8 %i.jp, !19541, !DIExpression(), !18840)
  br label %.preheader134.2.i.i.i, !dbg !20078

.preheader134.2.i.i.i:                            ; preds = %.noexc13.i, %.preheader134.1.i.i.i
  %.sroa.014.2.1.i.i.i = phi i8 [ %.sroa.014.2.i.i.i, %.preheader134.1.i.i.i ], [ %i.jp, %.noexc13.i ], !dbg !20073 ; 3 uses
    #dbg_value(i8 %.sroa.014.2.1.i.i.i, !19541, !DIExpression(), !18840)
    #dbg_value(i64 3, !19546, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18899)
    #dbg_value(i64 2, !19547, !DIExpression(), !18900)
    #dbg_value(i16 %4, !19548, !DIExpression(), !18901)
  %i.jq = icmp eq i16 %4, 0, !dbg !20072
  br i1 %i.jq, label %.preheader134.3.i.i.i, label %bb.at, !dbg !20072

bb.at:                                            ; preds = %.preheader134.2.i.i.i
  %i.jr = or disjoint i64 %.sroa.06.0141.i.i.i, 32, !dbg !20074
  %i.js = trunc nuw i8 %.sroa.014.2.1.i.i.i to i1, !dbg !20075
  %i.jt = invoke fastcc noundef zeroext i1 @_RNCNvNtNtCskKLDkoKarTP_4core3str7pattern13simd_containss0_0CsjfnSKV9Rz3v_3h3i(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %i.jr, i16 noundef %4, i1 noundef zeroext %i.js) #33
          to label %.noexc14.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !20076

.noexc14.i:                                       ; preds = %bb.at
  %i.ju = zext i1 %i.jt to i8, !dbg !20077
  %i.jv = or i8 %.sroa.014.2.1.i.i.i, %i.ju, !dbg !20077
    #dbg_value(i8 %i.jv, !19541, !DIExpression(), !18840)
  br label %.preheader134.3.i.i.i, !dbg !20078

.preheader134.3.i.i.i:                            ; preds = %.noexc14.i, %.preheader134.2.i.i.i
  %.sroa.014.2.2.i.i.i = phi i8 [ %.sroa.014.2.1.i.i.i, %.preheader134.2.i.i.i ], [ %i.jv, %.noexc14.i ], !dbg !20073 ; 3 uses
    #dbg_value(i8 %.sroa.014.2.2.i.i.i, !19541, !DIExpression(), !18840)
    #dbg_value(i64 4, !19546, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18899)
    #dbg_value(i64 3, !19547, !DIExpression(), !18900)
    #dbg_value(i16 %i.ji, !19548, !DIExpression(), !18901)
  %i.jw = icmp eq i16 %i.ji, 0, !dbg !20072
  br i1 %i.jw, label %bb.av, label %bb.au, !dbg !20072

bb.au:                                            ; preds = %.preheader134.3.i.i.i
  %i.jx = or disjoint i64 %.sroa.06.0141.i.i.i, 48, !dbg !20074
  %i.jy = trunc nuw i8 %.sroa.014.2.2.i.i.i to i1, !dbg !20075
  %i.jz = invoke fastcc noundef zeroext i1 @_RNCNvNtNtCskKLDkoKarTP_4core3str7pattern13simd_containss0_0CsjfnSKV9Rz3v_3h3i(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %i.jx, i16 noundef %i.ji, i1 noundef zeroext %i.jy) #33
          to label %.noexc15.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !20076

.noexc15.i:                                       ; preds = %bb.au
  %i.ka = zext i1 %i.jz to i8, !dbg !20077
  %i.kb = or i8 %.sroa.014.2.2.i.i.i, %i.ka, !dbg !20077
    #dbg_value(i8 %i.kb, !19541, !DIExpression(), !18840)
  br label %bb.av, !dbg !20078

bb.av:                                            ; preds = %.noexc15.i, %.preheader134.3.i.i.i
  %.sroa.014.2.3.i.i.i = phi i8 [ %.sroa.014.2.2.i.i.i, %.preheader134.3.i.i.i ], [ %i.kb, %.noexc15.i ], !dbg !20073 ; 2 uses
    #dbg_value(i8 %.sroa.014.2.3.i.i.i, !19541, !DIExpression(), !18840)
    #dbg_value(i64 4, !19546, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18899)
  %i.kc = add i64 %.sroa.06.0141.i.i.i, 64, !dbg !20079 ; 3 uses
    #dbg_value(i64 %i.kc, !19540, !DIExpression(), !18839)
  %i.kd = add i64 %i.kc, %i.ij, !dbg !20060
  %i.ke = icmp uge i64 %i.kd, %i.k, !dbg !20060
  %i.kf = trunc nuw i8 %.sroa.014.2.3.i.i.i to i1
  %or.cond.i.i.i = select i1 %i.ke, i1 true, i1 %i.kf, !dbg !20060
  br i1 %or.cond.i.i.i, label %.preheader.i18.i.i, label %.lr.ph.i19.i.i, !dbg !20060

bb.aw:                                            ; preds = %.lr.ph.i19.i.i
  %i.kg = invoke fastcc noundef zeroext i1 @_RNCNvNtNtCskKLDkoKarTP_4core3str7pattern13simd_containss0_0CsjfnSKV9Rz3v_3h3i(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %.sroa.06.0141.i.i.i, i16 noundef %2, i1 noundef zeroext false) #33
          to label %.noexc16.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !20076

.noexc16.i:                                       ; preds = %bb.aw
  %i.kh = zext i1 %i.kg to i8, !dbg !20077
    #dbg_value(i8 %i.kh, !19541, !DIExpression(), !18840)
  br label %.preheader134.1.i.i.i, !dbg !20078

._crit_edge.i.i.i:                                ; preds = %bb.ax, %.preheader.i18.i.i
  %.sroa.014.3.lcssa.i.i.i = phi i8 [ %.sroa.014.0.lcssa.i.i.i, %.preheader.i18.i.i ], [ %.sroa.014.4.i.i.i, %bb.ax ], !dbg !20061 ; 2 uses
  %.lcssa.i.i.i = phi i1 [ %i.in, %.preheader.i18.i.i ], [ %i.lb, %bb.ax ]
  %i.ki = sub nuw i64 %i.k, %i.he, !dbg !20080
  %i.kj = add i64 %i.ki, -16, !dbg !20080         ; 2 uses
    #dbg_value(i64 %i.kj, !19550, !DIExpression(), !18902)
    #dbg_value(ptr poison, !19785, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 16, DW_OP_deref), !18904)
    #dbg_value(ptr poison, !19791, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 24, DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !18904)
    #dbg_value(ptr poison, !19792, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 32, DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !18904)
    #dbg_value(i64 %i.kj, !19789, !DIExpression(), !18904)
    #dbg_value(i64 %i.kj, !19810, !DIExpression(), !18906)
    #dbg_value(i64 %i.kj, !19810, !DIExpression(), !18908)
    #dbg_value(ptr %i.i, !19811, !DIExpression(), !18906)
  %i.kk = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.kj, !dbg !20081 ; 2 uses
    #dbg_value(ptr %i.kk, !19814, !DIExpression(), !18910)
    #dbg_value(ptr %i.kk, !19820, !DIExpression(), !18912)
  %.sroa.0.0.copyload.i96.i.i.i = load <16 x i8>, ptr %i.kk, align 1, !dbg !20082, !alias.scope !19822, !noalias !19866
    #dbg_value(<16 x i8> %.sroa.0.0.copyload.i96.i.i.i, !19793, !DIExpression(), !18916)
    #dbg_value(<16 x i8> %.sroa.0.0.copyload.i96.i.i.i, !19832, !DIExpression(), !18918)
    #dbg_value(ptr %i.i, !19811, !DIExpression(), !18908)
    #dbg_value(ptr %i.kk, !19811, !DIExpression(), !18920)
    #dbg_value(i64 %storemerge130133.i.i.i, !19810, !DIExpression(), !18920)
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 %storemerge130133.i.i.i, !dbg !20083
    #dbg_value(ptr %i.kl, !19814, !DIExpression(), !18922)
    #dbg_value(ptr %i.kl, !19820, !DIExpression(), !18924)
  %.sroa.01.0.copyload.i97.i.i.i = load <16 x i8>, ptr %i.kl, align 1, !dbg !20084, !alias.scope !19822, !noalias !19866
    #dbg_value(<16 x i8> %.sroa.01.0.copyload.i97.i.i.i, !19794, !DIExpression(), !18926)
    #dbg_value(<16 x i8> %.sroa.01.0.copyload.i97.i.i.i, !19832, !DIExpression(), !18928)
    #dbg_value(<16 x i8> %i.ic, !19839, !DIExpression(), !18918)
  %i.km = icmp eq <16 x i8> %.sroa.0.0.copyload.i96.i.i.i, %i.ic, !dbg !20085
    #dbg_value(<16 x i8> poison, !19795, !DIExpression(), !18929)
    #dbg_value(<16 x i8> poison, !19844, !DIExpression(), !18931)
    #dbg_value(<16 x i8> %i.ie, !19839, !DIExpression(), !18928)
  %i.kn = icmp eq <16 x i8> %.sroa.01.0.copyload.i97.i.i.i, %i.ie, !dbg !20086
    #dbg_value(<16 x i8> poison, !19796, !DIExpression(), !18932)
    #dbg_value(<16 x i8> poison, !19848, !DIExpression(), !18931)
  %i.ko = and <16 x i1> %i.km, %i.kn, !dbg !20087
    #dbg_value(<16 x i8> poison, !19797, !DIExpression(), !18933)
    #dbg_declare(ptr poison, !19850, !DIExpression(), !18935)
    #dbg_value(<16 x i8> poison, !19856, !DIExpression(), !18937)
    #dbg_value(<16 x i8> poison, !19861, !DIExpression(), !18938)
  %i.kp = bitcast <16 x i1> %i.ko to i16, !dbg !20088 ; 2 uses
    #dbg_value(i16 %i.kp, !19551, !DIExpression(), !18939)
  %i.kq = icmp eq i16 %i.kp, 0, !dbg !20089
  br i1 %i.kq, label %bb.az, label %bb.ba, !dbg !20089

.lr.ph145.i.i.i:                                  ; preds = %.preheader.i18.i.i, %bb.ax
  %.sroa.06.1144.i.i.i = phi i64 [ %i.ky, %bb.ax ], [ %.sroa.06.0.lcssa.i.i.i, %.preheader.i18.i.i ] ; 3 uses
    #dbg_value(i64 %.sroa.06.1144.i.i.i, !19540, !DIExpression(), !18839)
    #dbg_value(ptr poison, !19785, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 16, DW_OP_deref), !18941)
    #dbg_value(ptr poison, !19791, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 24, DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !18941)
    #dbg_value(ptr poison, !19792, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 32, DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !18941)
    #dbg_value(i64 %.sroa.06.1144.i.i.i, !19789, !DIExpression(), !18941)
    #dbg_value(i64 %.sroa.06.1144.i.i.i, !19810, !DIExpression(), !18943)
    #dbg_value(i64 %.sroa.06.1144.i.i.i, !19810, !DIExpression(), !18945)
    #dbg_value(ptr %i.i, !19811, !DIExpression(), !18943)
  %i.kr = getelementptr inbounds nuw i8, ptr %i.i, i64 %.sroa.06.1144.i.i.i, !dbg !20090 ; 2 uses
    #dbg_value(ptr %i.kr, !19814, !DIExpression(), !18947)
    #dbg_value(ptr %i.kr, !19820, !DIExpression(), !18949)
  %.sroa.0.0.copyload.i98.i.i.i = load <16 x i8>, ptr %i.kr, align 1, !dbg !20091, !alias.scope !19822, !noalias !19867
    #dbg_value(<16 x i8> %.sroa.0.0.copyload.i98.i.i.i, !19793, !DIExpression(), !18953)
    #dbg_value(<16 x i8> %.sroa.0.0.copyload.i98.i.i.i, !19832, !DIExpression(), !18955)
    #dbg_value(ptr %i.i, !19811, !DIExpression(), !18945)
    #dbg_value(ptr %i.kr, !19811, !DIExpression(), !18957)
    #dbg_value(i64 %storemerge130133.i.i.i, !19810, !DIExpression(), !18957)
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kr, i64 %storemerge130133.i.i.i, !dbg !20092
    #dbg_value(ptr %i.ks, !19814, !DIExpression(), !18959)
    #dbg_value(ptr %i.ks, !19820, !DIExpression(), !18961)
  %.sroa.01.0.copyload.i99.i.i.i = load <16 x i8>, ptr %i.ks, align 1, !dbg !20093, !alias.scope !19822, !noalias !19867
    #dbg_value(<16 x i8> %.sroa.01.0.copyload.i99.i.i.i, !19794, !DIExpression(), !18963)
    #dbg_value(<16 x i8> %.sroa.01.0.copyload.i99.i.i.i, !19832, !DIExpression(), !18965)
    #dbg_value(<16 x i8> %i.ic, !19839, !DIExpression(), !18955)
  %i.kt = icmp eq <16 x i8> %.sroa.0.0.copyload.i98.i.i.i, %i.ic, !dbg !20094
    #dbg_value(<16 x i8> poison, !19795, !DIExpression(), !18966)
    #dbg_value(<16 x i8> poison, !19844, !DIExpression(), !18968)
    #dbg_value(<16 x i8> %i.ie, !19839, !DIExpression(), !18965)
  %i.ku = icmp eq <16 x i8> %.sroa.01.0.copyload.i99.i.i.i, %i.ie, !dbg !20095
    #dbg_value(<16 x i8> poison, !19796, !DIExpression(), !18969)
    #dbg_value(<16 x i8> poison, !19848, !DIExpression(), !18968)
  %i.kv = and <16 x i1> %i.kt, %i.ku, !dbg !20096
    #dbg_value(<16 x i8> poison, !19797, !DIExpression(), !18970)
    #dbg_declare(ptr poison, !19850, !DIExpression(), !18972)
    #dbg_value(<16 x i8> poison, !19856, !DIExpression(), !18974)
    #dbg_value(<16 x i8> poison, !19861, !DIExpression(), !18975)
  %i.kw = bitcast <16 x i1> %i.kv to i16, !dbg !20097 ; 2 uses
    #dbg_value(i16 %i.kw, !19549, !DIExpression(), !18976)
  %i.kx = icmp eq i16 %i.kw, 0, !dbg !20098
  br i1 %i.kx, label %bb.ax, label %bb.ay, !dbg !20098

bb.ax:                                            ; preds = %.noexc17.i, %.lr.ph145.i.i.i
  %.sroa.014.4.i.i.i = phi i8 [ 0, %.lr.ph145.i.i.i ], [ %i.ld, %.noexc17.i ], !dbg !20073 ; 2 uses
    #dbg_value(i8 %.sroa.014.4.i.i.i, !19541, !DIExpression(), !18840)
  %i.ky = add i64 %.sroa.06.1144.i.i.i, 16, !dbg !20099 ; 2 uses
    #dbg_value(i64 %i.ky, !19540, !DIExpression(), !18839)
  %i.kz = add i64 %i.ky, %i.ik, !dbg !20063
  %i.la = icmp uge i64 %i.kz, %i.k, !dbg !20063
  %i.lb = trunc nuw i8 %.sroa.014.4.i.i.i to i1   ; 2 uses
  %or.cond3.i.i.i = or i1 %i.la, %i.lb, !dbg !20063
  br i1 %or.cond3.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph145.i.i.i, !dbg !20063

bb.ay:                                            ; preds = %.lr.ph145.i.i.i
  %i.lc = invoke fastcc noundef zeroext i1 @_RNCNvNtNtCskKLDkoKarTP_4core3str7pattern13simd_containss0_0CsjfnSKV9Rz3v_3h3i(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %.sroa.06.1144.i.i.i, i16 noundef %i.kw, i1 noundef zeroext false) #33
          to label %.noexc17.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !20100

.noexc17.i:                                       ; preds = %bb.ay
  %i.ld = zext i1 %i.lc to i8, !dbg !20101
    #dbg_value(i8 %i.ld, !19541, !DIExpression(), !18840)
  br label %bb.ax, !dbg !20102

bb.az:                                            ; preds = %.noexc18.i, %._crit_edge.i.i.i
  %.sroa.014.5.i.i.i = phi i8 [ %.sroa.014.3.lcssa.i.i.i, %._crit_edge.i.i.i ], [ %i.lg, %.noexc18.i ], !dbg !20073
    #dbg_value(i8 %.sroa.014.5.i.i.i, !19541, !DIExpression(), !18840)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !20103, !noalias !19769
  br label %.loopexit.i, !dbg !20104

bb.ba:                                            ; preds = %._crit_edge.i.i.i
  %i.le = invoke fastcc noundef zeroext i1 @_RNCNvNtNtCskKLDkoKarTP_4core3str7pattern13simd_containss0_0CsjfnSKV9Rz3v_3h3i(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %i.kj, i16 noundef %i.kp, i1 noundef zeroext %.lcssa.i.i.i) #33
          to label %.noexc18.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !20105

.noexc18.i:                                       ; preds = %bb.ba
  %i.lf = zext i1 %i.le to i8, !dbg !20106
  %i.lg = or i8 %.sroa.014.3.lcssa.i.i.i, %i.lf, !dbg !20106
    #dbg_value(i8 %i.lg, !19541, !DIExpression(), !18840)
  br label %bb.az, !dbg !20107

bb.bb:                                            ; preds = %bb.d
    #dbg_value(ptr %i.m, !19138, !DIExpression(), !18273)
    #dbg_value(ptr %i.i, !19139, !DIExpression(), !18273)
  %bcmp.i.i = tail call i32 @bcmp(ptr nonnull readonly %i.m, ptr nonnull readonly %i.i, i64 %i.k), !dbg !20108, !alias.scope !19171
  %i.lh = icmp eq i32 %bcmp.i.i, 0, !dbg !20108
  %i.li = zext i1 %i.lh to i8, !dbg !20108
    #dbg_value(i8 %i.li, !19081, !DIExpression(), !18654)
  br label %.loopexit.i, !dbg !20109

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ay, %bb.aw, %bb.au, %bb.at, %bb.as, %bb.ba, %.invoke.i, %bb.y, %.split.us181.i.i.i, %_RNvNtNtCskKLDkoKarTP_4core3str7pattern13simd_contains.exit.i.i, %bb.g
  %lpad.loopexit.split-lp130 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsjfnSKV9Rz3v_3h3i(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #28
          to label %common.resume.i unwind label %bb.bg, !dbg !20110

.loopexit.i:                                      ; preds = %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CsjfnSKV9Rz3v_3h3i.exit.backedge.us.i.i.i.i, %.split.us.i.i.i.i, %bb.h, %bb.bb, %bb.az, %.lr.ph.split.us.i.i21.i.i, %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i, %.loopexit13.i.i.i.i, %.noexc.i, %bb.d, %bb.a
  %.sroa.0.0.i.i = phi i8 [ 0, %bb.d ], [ %.sroa.014.5.i.i.i, %bb.az ], [ 1, %bb.a ], [ %storemerge.i.sink.i.i.i, %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i ], [ %i.li, %bb.bb ], [ 0, %.noexc.i ], [ 1, %.lr.ph.split.us.i.i21.i.i ], [ 0, %bb.h ], [ 1, %.loopexit13.i.i.i.i ], [ 1, %.split.us.i.i.i.i ], [ 0, %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CsjfnSKV9Rz3v_3h3i.exit.backedge.us.i.i.i.i ], !dbg !20045
    #dbg_value(i8 %.sroa.0.0.i.i, !19081, !DIExpression(), !18654)
    #dbg_value(ptr %i.c, !2820, !DIExpression(), !18978)
    #dbg_value(ptr %i.c, !2805, !DIExpression(), !18980)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjfnSKV9Rz3v_3h3i(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %bb.be unwind label %bb.bc, !dbg !20111

bb.bc:                                            ; preds = %.loopexit.i
  %i.lj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val3.i.i.i = load i64, ptr %i.c, align 8, !dbg !20111, !range !2294, !alias.scope !19868, !noundef !1445 ; 2 uses
    #dbg_value(ptr poison, !2808, !DIExpression(), !18988)
    #dbg_value(ptr poison, !2814, !DIExpression(), !18990)
    #dbg_value(ptr poison, !2558, !DIExpression(), !18992)
    #dbg_value(i64 1, !2563, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18992)
    #dbg_value(i64 1, !2563, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18992)
    #dbg_value(ptr poison, !2567, !DIExpression(), !18994)
    #dbg_value(i64 1, !2584, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18994)
    #dbg_value(i64 1, !2584, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18994)
  %i.lk = icmp eq i64 %.val3.i.i.i, 0, !dbg !20112
  br i1 %i.lk, label %common.resume.i, label %bb.bd, !dbg !20112

bb.bd:                                            ; preds = %bb.bc
  %.val4.i.i.i = load ptr, ptr %i.h, align 8, !dbg !20111, !alias.scope !19869, !nonnull !1445, !noundef !1445
    #dbg_value(ptr %.val4.i.i.i, !2564, !DIExpression(), !18995)
    #dbg_value(i64 1, !2565, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18995)
    #dbg_value(i64 %.val3.i.i.i, !2565, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18995)
    #dbg_value(ptr poison, !2449, !DIExpression(), !18997)
    #dbg_value(ptr poison, !2455, !DIExpression(), !18999)
    #dbg_value(ptr %.val4.i.i.i, !2452, !DIExpression(), !18997)
    #dbg_value(ptr %.val4.i.i.i, !2458, !DIExpression(), !18999)
    #dbg_value(ptr %.val4.i.i.i, !2461, !DIExpression(), !19001)
    #dbg_value(ptr %.val4.i.i.i, !2467, !DIExpression(), !19003)
    #dbg_value(i64 1, !2453, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18997)
    #dbg_value(i64 1, !2459, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18999)
    #dbg_value(i64 1, !2465, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19001)
    #dbg_value(i64 1, !2468, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19003)
    #dbg_value(i64 %.val3.i.i.i, !2453, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18997)
    #dbg_value(i64 %.val3.i.i.i, !2459, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18999)
    #dbg_value(i64 %.val3.i.i.i, !2465, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19001)
    #dbg_value(i64 %.val3.i.i.i, !2468, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19003)
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4.i.i.i, i64 noundef %.val3.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #30, !dbg !20113, !noalias !19870
  br label %common.resume.i, !dbg !20114

bb.be:                                            ; preds = %.loopexit.i
  %.val.i.i.i = load i64, ptr %i.c, align 8, !dbg !20111, !range !2294, !alias.scope !19868, !noundef !1445 ; 2 uses
    #dbg_value(ptr poison, !2808, !DIExpression(), !19007)
    #dbg_value(ptr poison, !2814, !DIExpression(), !19009)
    #dbg_value(ptr poison, !2558, !DIExpression(), !19011)
    #dbg_value(i64 1, !2563, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19011)
    #dbg_value(i64 1, !2563, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19011)
    #dbg_value(ptr poison, !2567, !DIExpression(), !19013)
end_hunk_0
begin_hunk_1_@llvm.umax.i64
!19870 = !{!19005}
!19871 = !{!19024}
!19872 = !DILocation(line: 298, column: 13, scope: !18202)
!19873 = !DILocation(line: 298, column: 21, scope: !18202)
!19874 = !DILocation(line: 295, column: 21, scope: !18203, inlinedAt: !18204)
!19875 = !DILocation(line: 295, column: 23, scope: !18203, inlinedAt: !18204)
!19876 = !DILocation(line: 611, column: 9, scope: !18212, inlinedAt: !18221)
!19877 = !DILocation(line: 1864, column: 86, scope: !18216, inlinedAt: !18217)
!19878 = !DILocation(line: 611, column: 9, scope: !18212, inlinedAt: !18238)
!19879 = !DILocation(line: 1864, column: 86, scope: !18216, inlinedAt: !18234)
!19880 = !DILocation(line: 2680, column: 18, scope: !18225, inlinedAt: !18226)
!19881 = !DILocation(line: 990, column: 12, scope: !18243, inlinedAt: !18244)
!19882 = !DILocation(line: 994, column: 9, scope: !18243, inlinedAt: !18244)
!19883 = !DILocation(line: 996, column: 20, scope: !18243, inlinedAt: !18244)
!19884 = !DILocation(line: 21, column: 12, scope: !18263, inlinedAt: !18267)
!19885 = !DILocation(line: 1005, column: 20, scope: !18243, inlinedAt: !18244)
!19886 = !DILocation(line: 2604, column: 9, scope: !18275, inlinedAt: !18276)
!19887 = !DILocation(line: 28, column: 12, scope: !18289, inlinedAt: !18290)
!19888 = !DILocation(line: 28, column: 74, scope: !18289, inlinedAt: !18290)
!19889 = !DILocation(line: 29, column: 12, scope: !18287, inlinedAt: !18290)
!19890 = !DILocation(line: 28, scope: !18289, inlinedAt: !18290)
!19891 = !DILocation(line: 31, column: 48, scope: !18287, inlinedAt: !18290)
!19892 = !DILocation(line: 210, column: 9, scope: !18298, inlinedAt: !18299)
!19893 = !DILocation(line: 29, column: 5, scope: !18288, inlinedAt: !18290)
!19894 = !DILocation(line: 42, column: 12, scope: !18292, inlinedAt: !18294)
!19895 = !DILocation(line: 46, column: 9, scope: !18292, inlinedAt: !18294)
!19896 = !DILocation(line: 41, column: 11, scope: !18292, inlinedAt: !18294)
!19897 = !DILocation(line: 1011, column: 17, scope: !18243, inlinedAt: !18244)
!19898 = !DILocation(line: 978, column: 9, scope: !18260, inlinedAt: !18261)
!19899 = !DILocation(line: 1011, column: 46, scope: !18243, inlinedAt: !18244)
!19900 = !DILocation(line: 1206, column: 15, scope: !18320, inlinedAt: !18321)
!19901 = !DILocation(line: 1206, column: 9, scope: !18320, inlinedAt: !18321)
!19902 = !DILocation(line: 1141, column: 20, scope: !18341, inlinedAt: !18342)
!19903 = !DILocation(line: 1145, column: 32, scope: !18341, inlinedAt: !18342)
!19904 = !DILocation(line: 380, column: 12, scope: !18357, inlinedAt: !18358)
!19905 = !DILocation(line: 384, column: 12, scope: !18357, inlinedAt: !18358)
!19906 = !DILocation(line: 394, column: 13, scope: !18357, inlinedAt: !18358)
!19907 = !DILocation(line: 493, column: 12, scope: !18354, inlinedAt: !18355)
!19908 = !DILocation(line: 396, column: 13, scope: !18357, inlinedAt: !18358)
!19909 = !DILocation(line: 1231, column: 9, scope: !18379, inlinedAt: !18380)
!19910 = !DILocation(line: 872, column: 18, scope: !18369, inlinedAt: !18370)
!19911 = !DILocation(line: 1663, column: 9, scope: !186, inlinedAt: !18418)
!19912 = !DILocation(line: 180, column: 28, scope: !182, inlinedAt: !18412)
!19913 = !DILocation(line: 37, column: 13, scope: !18406, inlinedAt: !18407)
!19914 = !DILocation(line: 38, column: 8, scope: !18405, inlinedAt: !18407)
!19915 = !DILocation(line: 627, column: 28, scope: !185, inlinedAt: !18414)
!19916 = !DILocation(line: 11, column: 5, scope: !18409, inlinedAt: !18410)
!19917 = !DILocation(line: 1663, column: 9, scope: !186, inlinedAt: !18434)
!19918 = !DILocation(line: 180, column: 28, scope: !182, inlinedAt: !18428)
!19919 = !DILocation(line: 48, column: 22, scope: !18398, inlinedAt: !18407)
!19920 = !DILocation(line: 17, column: 5, scope: !18425, inlinedAt: !18426)
!19921 = !DILocation(line: 17, column: 17, scope: !18425, inlinedAt: !18426)
!19922 = !DILocation(line: 50, column: 8, scope: !18396, inlinedAt: !18407)
!19923 = !DILocation(line: 627, column: 28, scope: !185, inlinedAt: !18430)
!19924 = !DILocation(line: 1663, column: 9, scope: !186, inlinedAt: !18445)
!19925 = !DILocation(line: 180, column: 28, scope: !182, inlinedAt: !18439)
!19926 = !DILocation(line: 55, column: 26, scope: !18396, inlinedAt: !18407)
!19927 = !DILocation(line: 17, column: 5, scope: !18425, inlinedAt: !18449)
!19928 = !DILocation(line: 17, column: 17, scope: !18425, inlinedAt: !18449)
!19929 = !DILocation(line: 57, column: 14, scope: !18394, inlinedAt: !18407)
!19930 = !DILocation(line: 57, column: 9, scope: !18394, inlinedAt: !18407)
!19931 = !DILocation(line: 58, column: 12, scope: !18394, inlinedAt: !18407)
!19932 = !DILocation(line: 627, column: 28, scope: !185, inlinedAt: !18441)
!19933 = !DILocation(line: 1663, column: 9, scope: !186, inlinedAt: !18460)
!19934 = !DILocation(line: 180, column: 28, scope: !182, inlinedAt: !18454)
!19935 = !DILocation(line: 63, column: 30, scope: !18394, inlinedAt: !18407)
!19936 = !DILocation(line: 64, column: 18, scope: !18393, inlinedAt: !18407)
!19937 = !DILocation(line: 17, column: 5, scope: !18425, inlinedAt: !18452)
!19938 = !DILocation(line: 17, column: 17, scope: !18425, inlinedAt: !18452)
!19939 = !DILocation(line: 64, column: 13, scope: !18393, inlinedAt: !18407)
!19940 = !DILocation(line: 58, column: 9, scope: !18394, inlinedAt: !18407)
!19941 = !DILocation(line: 39, column: 21, scope: !18405, inlinedAt: !18407)
!19942 = !DILocation(line: 0, scope: !19338, inlinedAt: !18407)
!19943 = !DILocation(line: 34, column: 9, scope: !18476, inlinedAt: !18477)
!19944 = !DILocation(line: 1149, column: 26, scope: !18338, inlinedAt: !18342)
!19945 = !DILocation(line: 2490, column: 9, scope: !18483, inlinedAt: !18484)
!19946 = !DILocation(line: 2491, column: 9, scope: !18483, inlinedAt: !18484)
!19947 = !DILocation(line: 2492, column: 9, scope: !18483, inlinedAt: !18484)
!19948 = !DILocation(line: 0, scope: !18483, inlinedAt: !18484)
!19949 = !DILocation(line: 1155, column: 25, scope: !18337, inlinedAt: !18342)
!19950 = !DILocation(line: 528, column: 21, scope: !18347, inlinedAt: !18350)
!19951 = !DILocation(line: 1215, column: 29, scope: !18318, inlinedAt: !18321)
!19952 = !DILocation(line: 1216, column: 20, scope: !18317, inlinedAt: !18321)
!19953 = !DILocation(line: 1231, column: 37, scope: !18320, inlinedAt: !18321)
!19954 = !DILocation(line: 1232, column: 31, scope: !18314, inlinedAt: !18321)
!19955 = !DILocation(line: 0, scope: !18313, inlinedAt: !18321)
!19956 = !DILocation(line: 1546, column: 23, scope: !18515, inlinedAt: !18610)
!19957 = !DILocation(line: 1547, column: 27, scope: !18516, inlinedAt: !18610)
!19958 = !DILocation(line: 1235, column: 20, scope: !18313, inlinedAt: !18321)
!19959 = !DILocation(line: 1219, column: 38, scope: !18317, inlinedAt: !18321)
!19960 = !DILocation(line: 549, column: 27, scope: !18495, inlinedAt: !18496)
!19961 = !DILocation(line: 90, column: 24, scope: !18498, inlinedAt: !18499)
!19962 = !DILocation(line: 28, column: 12, scope: !18289, inlinedAt: !18614)
!19963 = !DILocation(line: 28, column: 74, scope: !18289, inlinedAt: !18614)
!19964 = !DILocation(line: 29, column: 12, scope: !18287, inlinedAt: !18614)
!19965 = !DILocation(line: 42, column: 12, scope: !18292, inlinedAt: !18616)
!19966 = !DILocation(line: 46, column: 9, scope: !18292, inlinedAt: !18616)
!19967 = !DILocation(line: 41, column: 11, scope: !18292, inlinedAt: !18616)
!19968 = !DILocation(line: 1242, column: 30, scope: !18313, inlinedAt: !18321)
!19969 = !DILocation(line: 1552, column: 48, scope: !18517, inlinedAt: !18528)
!19970 = !DILocation(line: 184, column: 12, scope: !18567, inlinedAt: !18570)
!19971 = !DILocation(line: 1565, column: 17, scope: !18518, inlinedAt: !18528)
!19972 = !DILocation(line: 186, column: 27, scope: !18567, inlinedAt: !18570)
!19973 = !DILocation(line: 1553, column: 23, scope: !18517, inlinedAt: !18528)
!19974 = !DILocation(line: 1532, column: 27, scope: !18557, inlinedAt: !18560)
!19975 = !DILocation(line: 1532, column: 26, scope: !18557, inlinedAt: !18560)
!19976 = !DILocation(line: 1532, column: 9, scope: !18557, inlinedAt: !18560)
!19977 = !DILocation(line: 1566, column: 17, scope: !18518, inlinedAt: !18528)
!19978 = !DILocation(line: 1567, column: 17, scope: !18518, inlinedAt: !18528)
!19979 = !DILocation(line: 1099, column: 5, scope: !453, inlinedAt: !18631)
!19980 = !DILocation(line: 2192, column: 50, scope: !18503, inlinedAt: !18549)
!19981 = !DILocation(line: 1100, column: 12, scope: !18541, inlinedAt: !18548)
!19982 = !DILocation(line: 1043, column: 17, scope: !18595, inlinedAt: !18598)
!19983 = !DILocation(line: 2192, column: 50, scope: !18503, inlinedAt: !18532)
!19984 = !DILocation(line: 1142, column: 12, scope: !18504, inlinedAt: !18531)
!19985 = !DILocation(line: 1583, column: 20, scope: !18512, inlinedAt: !18528)
!19986 = !DILocation(line: 1583, column: 66, scope: !18512, inlinedAt: !18528)
!19987 = !DILocation(line: 218, column: 39, scope: !18577, inlinedAt: !18580)
!19988 = !DILocation(line: 218, column: 13, scope: !18577, inlinedAt: !18580)
!19989 = !DILocation(line: 219, column: 13, scope: !18577, inlinedAt: !18580)
!19990 = !DILocation(line: 1583, column: 42, scope: !18512, inlinedAt: !18528)
!19991 = !DILocation(line: 1222, column: 17, scope: !18605, inlinedAt: !18608)
!19992 = !DILocation(line: 1601, column: 20, scope: !18511, inlinedAt: !18528)
!19993 = !DILocation(line: 1601, column: 66, scope: !18511, inlinedAt: !18528)
!19994 = !DILocation(line: 218, column: 39, scope: !18577, inlinedAt: !18588)
!19995 = !DILocation(line: 218, column: 13, scope: !18577, inlinedAt: !18588)
!19996 = !DILocation(line: 219, column: 13, scope: !18577, inlinedAt: !18588)
!19997 = !DILocation(line: 1601, column: 42, scope: !18511, inlinedAt: !18528)
!19998 = !DILocation(line: 1602, column: 21, scope: !18511, inlinedAt: !18528)
!19999 = !DILocation(line: 1603, column: 21, scope: !18511, inlinedAt: !18528)
!20000 = !DILocation(line: 1584, column: 21, scope: !18512, inlinedAt: !18528)
!20001 = !DILocation(line: 1585, column: 21, scope: !18512, inlinedAt: !18528)
!20002 = !DILocation(line: 1236, column: 30, scope: !18313, inlinedAt: !18321)
!20003 = !DILocation(line: 1552, column: 48, scope: !18517, inlinedAt: !18522)
!20004 = !DILocation(line: 184, column: 12, scope: !18567, inlinedAt: !18568)
!20005 = !DILocation(line: 1565, column: 17, scope: !18518, inlinedAt: !18522)
!20006 = !DILocation(line: 186, column: 27, scope: !18567, inlinedAt: !18568)
!20007 = !DILocation(line: 1553, column: 23, scope: !18517, inlinedAt: !18522)
!20008 = !DILocation(line: 1532, column: 27, scope: !18557, inlinedAt: !18558)
!20009 = !DILocation(line: 1532, column: 26, scope: !18557, inlinedAt: !18558)
!20010 = !DILocation(line: 1532, column: 9, scope: !18557, inlinedAt: !18558)
!20011 = !DILocation(line: 1100, column: 12, scope: !18541, inlinedAt: !18544)
!20012 = !DILocation(line: 1043, column: 17, scope: !18595, inlinedAt: !18596)
!20013 = !DILocation(line: 2192, column: 50, scope: !18503, inlinedAt: !18545)
!20014 = !DILocation(line: 1142, column: 12, scope: !18504, inlinedAt: !18525)
!20015 = !DILocation(line: 2192, column: 50, scope: !18503, inlinedAt: !18526)
!20016 = !DILocation(line: 1222, column: 17, scope: !18605, inlinedAt: !18606)
!20017 = !DILocation(line: 1601, column: 20, scope: !18511, inlinedAt: !18522)
!20018 = !DILocation(line: 1601, column: 66, scope: !18511, inlinedAt: !18522)
!20019 = !DILocation(line: 218, column: 39, scope: !18577, inlinedAt: !18586)
!20020 = !DILocation(line: 218, column: 13, scope: !18577, inlinedAt: !18586)
!20021 = !DILocation(line: 219, column: 13, scope: !18577, inlinedAt: !18586)
!20022 = !DILocation(line: 1601, column: 42, scope: !18511, inlinedAt: !18522)
!20023 = !DILocation(line: 1602, column: 21, scope: !18511, inlinedAt: !18522)
!20024 = !DILocation(line: 1603, column: 25, scope: !18511, inlinedAt: !18522)
!20025 = !DILocation(line: 1583, column: 20, scope: !18512, inlinedAt: !18522)
!20026 = !DILocation(line: 1583, column: 66, scope: !18512, inlinedAt: !18522)
!20027 = !DILocation(line: 218, column: 39, scope: !18577, inlinedAt: !18578)
!20028 = !DILocation(line: 218, column: 13, scope: !18577, inlinedAt: !18578)
!20029 = !DILocation(line: 219, column: 13, scope: !18577, inlinedAt: !18578)
!20030 = !DILocation(line: 1583, column: 42, scope: !18512, inlinedAt: !18522)
!20031 = !DILocation(line: 1584, column: 21, scope: !18512, inlinedAt: !18522)
!20032 = !DILocation(line: 1585, column: 25, scope: !18512, inlinedAt: !18522)
!20033 = !DILocation(line: 1566, column: 17, scope: !18518, inlinedAt: !18522)
!20034 = !DILocation(line: 1567, column: 21, scope: !18518, inlinedAt: !18522)
!20035 = !DILocation(line: 1011, column: 67, scope: !18243, inlinedAt: !18244)
!20036 = !DILocation(line: 1006, column: 43, scope: !18242, inlinedAt: !18244)
!20037 = !DILocation(line: 1904, column: 23, scope: !18674, inlinedAt: !18683)
!20038 = !DILocation(line: 1905, column: 28, scope: !18675, inlinedAt: !18683)
!20039 = !DILocation(line: 1908, column: 34, scope: !18676, inlinedAt: !18683)
!20040 = !DILocation(line: 2570, column: 13, scope: !18753, inlinedAt: !18754)
!20041 = !DILocation(line: 1142, column: 12, scope: !18715, inlinedAt: !18736)
!20042 = !DILocation(line: 2192, column: 50, scope: !18714, inlinedAt: !18737)
!20043 = !DILocation(line: 1222, column: 17, scope: !18776, inlinedAt: !18777)
!20044 = !DILocation(line: 1915, column: 73, scope: !18783, inlinedAt: !18785)
!20045 = !DILocation(line: 0, scope: !18243, inlinedAt: !18244)
!20046 = !DILocation(line: 290, column: 21, scope: !18731, inlinedAt: !18734)
!20047 = !DILocation(line: 1925, column: 25, scope: !18677, inlinedAt: !18683)
!20048 = !DILocation(line: 1925, column: 8, scope: !18677, inlinedAt: !18683)
!20049 = !DILocation(line: 153, column: 18, scope: !18769, inlinedAt: !18770)
!20050 = !DILocation(line: 1930, column: 44, scope: !18678, inlinedAt: !18683)
!20051 = !DILocation(line: 157, column: 13, scope: !18820, inlinedAt: !18824)
!20052 = !DILocation(line: 2490, column: 21, scope: !18706, inlinedAt: !18709)
!20053 = !DILocation(line: 90, column: 24, scope: !18797, inlinedAt: !18813)
!20054 = !DILocation(line: 549, column: 27, scope: !18810, inlinedAt: !18811)
!20055 = !DILocation(line: 1355, column: 12, scope: !18691, inlinedAt: !18710)
!20056 = !DILocation(line: 153, column: 18, scope: !18769, inlinedAt: !18834)
!20057 = !DILocation(line: 90, column: 24, scope: !18763, inlinedAt: !18764)
!20058 = !DILocation(line: 1936, column: 9, scope: !18680, inlinedAt: !18683)
!20059 = !DILocation(line: 1937, column: 5, scope: !18680, inlinedAt: !18683)
!20060 = !DILocation(line: 1980, column: 11, scope: !18669, inlinedAt: !18683)
!20061 = !DILocation(line: 1976, column: 22, scope: !18670, inlinedAt: !18683)
!20062 = !DILocation(line: 0, scope: !18682, inlinedAt: !18683)
!20063 = !DILocation(line: 1993, column: 11, scope: !18669, inlinedAt: !18683)
!20064 = !DILocation(line: 1756, column: 9, scope: !18868, inlinedAt: !18869)
!20065 = !DILocation(line: 872, column: 18, scope: !18854, inlinedAt: !18874)
!20066 = !DILocation(line: 1756, column: 9, scope: !18868, inlinedAt: !18880)
!20067 = !DILocation(line: 31, column: 52, scope: !18871, inlinedAt: !18872)
!20068 = !DILocation(line: 31, column: 52, scope: !18871, inlinedAt: !18882)
!20069 = !DILocation(line: 549, column: 23, scope: !18885, inlinedAt: !18886)
!20070 = !DILocation(line: 1983, column: 13, scope: !18666, inlinedAt: !18683)
!20071 = !DILocation(line: 872, column: 18, scope: !18854, inlinedAt: !18855)
!20072 = !DILocation(line: 1987, column: 16, scope: !18663, inlinedAt: !18683)
!20073 = !DILocation(line: 0, scope: !18670, inlinedAt: !18683)
!20074 = !DILocation(line: 1988, column: 38, scope: !18663, inlinedAt: !18683)
!20075 = !DILocation(line: 1988, column: 64, scope: !18663, inlinedAt: !18683)
!20076 = !DILocation(line: 1988, column: 27, scope: !18663, inlinedAt: !18683)
!20077 = !DILocation(line: 1988, column: 17, scope: !18663, inlinedAt: !18683)
!20078 = !DILocation(line: 1987, column: 13, scope: !18663, inlinedAt: !18683)
!20079 = !DILocation(line: 1991, column: 9, scope: !18668, inlinedAt: !18683)
!20080 = !DILocation(line: 2005, column: 13, scope: !18669, inlinedAt: !18683)
!20081 = !DILocation(line: 872, column: 18, scope: !18854, inlinedAt: !18905)
!20082 = !DILocation(line: 1756, column: 9, scope: !18868, inlinedAt: !18915)
!20083 = !DILocation(line: 872, column: 18, scope: !18854, inlinedAt: !18919)
!20084 = !DILocation(line: 1756, column: 9, scope: !18868, inlinedAt: !18925)
!20085 = !DILocation(line: 31, column: 52, scope: !18871, inlinedAt: !18917)
!20086 = !DILocation(line: 31, column: 52, scope: !18871, inlinedAt: !18927)
!20087 = !DILocation(line: 549, column: 23, scope: !18885, inlinedAt: !18930)
!20088 = !DILocation(line: 317, column: 39, scope: !18894, inlinedAt: !18936)
!20089 = !DILocation(line: 2007, column: 8, scope: !18660, inlinedAt: !18683)
!20090 = !DILocation(line: 872, column: 18, scope: !18854, inlinedAt: !18942)
!20091 = !DILocation(line: 1756, column: 9, scope: !18868, inlinedAt: !18952)
!20092 = !DILocation(line: 872, column: 18, scope: !18854, inlinedAt: !18956)
!20093 = !DILocation(line: 1756, column: 9, scope: !18868, inlinedAt: !18962)
!20094 = !DILocation(line: 31, column: 52, scope: !18871, inlinedAt: !18954)
!20095 = !DILocation(line: 31, column: 52, scope: !18871, inlinedAt: !18964)
!20096 = !DILocation(line: 549, column: 23, scope: !18885, inlinedAt: !18967)
!20097 = !DILocation(line: 317, column: 39, scope: !18894, inlinedAt: !18973)
!20098 = !DILocation(line: 1995, column: 12, scope: !18662, inlinedAt: !18683)
!20099 = !DILocation(line: 1998, column: 9, scope: !18662, inlinedAt: !18683)
!20100 = !DILocation(line: 1996, column: 23, scope: !18662, inlinedAt: !18683)
!20101 = !DILocation(line: 1996, column: 13, scope: !18662, inlinedAt: !18683)
!20102 = !DILocation(line: 1995, column: 9, scope: !18662, inlinedAt: !18683)
!20103 = !DILocation(line: 2012, column: 1, scope: !18680, inlinedAt: !18683)
!20104 = !DILocation(line: 2012, column: 2, scope: !18672, inlinedAt: !18683)
!20105 = !DILocation(line: 2008, column: 19, scope: !18660, inlinedAt: !18683)
!20106 = !DILocation(line: 2008, column: 9, scope: !18660, inlinedAt: !18683)
!20107 = !DILocation(line: 2007, column: 5, scope: !18660, inlinedAt: !18683)
!20108 = !DILocation(line: 157, column: 13, scope: !18270, inlinedAt: !18272)
!20109 = !DILocation(line: 21, column: 9, scope: !18263, inlinedAt: !18267)
!20110 = !DILocation(line: 295, column: 57, scope: !18203, inlinedAt: !18204)
!20111 = !DILocation(line: 848, column: 1, scope: !409, inlinedAt: !18979)
!20112 = !DILocation(line: 631, column: 39, scope: !330, inlinedAt: !18993)
!20113 = !DILocation(line: 175, column: 14, scope: !303, inlinedAt: !19002)
!20114 = !DILocation(line: 312, column: 9, scope: !302, inlinedAt: !19000)
!20115 = !DILocation(line: 631, column: 39, scope: !330, inlinedAt: !19012)
!20116 = !DILocation(line: 175, column: 14, scope: !303, inlinedAt: !19021)
!20117 = !DILocation(line: 312, column: 9, scope: !302, inlinedAt: !19019)
!20118 = !DILocation(line: 295, scope: !18203, inlinedAt: !18204)
!20119 = !DILocation(line: 295, column: 17, scope: !18203, inlinedAt: !18204)
!20120 = !DILocation(line: 1015, column: 6, scope: !18243, inlinedAt: !18244)
!20121 = !DILocation(line: 299, column: 10, scope: !18202)
!20122 = distinct !DISubprogram(name: "fmt<quiche::h3::frame::Frame>", linkageName: "_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtCs3f36owOmepS_6quiche2h35frame5FrameNtB6_5Debug3fmtCsjfnSKV9Rz3v_3h3i", scope: !20124, file: !20123, line: 2887, type: !20128, scopeLine: 2887, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !162, templateParams: !2826, retainedNodes: !20131)
!20123 = !DIFile(filename: "library/core/src/fmt/mod.rs", directory: "/rustc/bff8e12ff5e6bcd53dfb1dbccdcec80a60a856ed", checksumkind: CSK_MD5, checksum: "12cfba091d4ac621dc20425387516488")
!20124 = !DINamespace(name: "{impl#80}", scope: !1971)
!20125 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&quiche::h3::frame::Frame", baseType: !395, size: 64, align: 64, dwarfAddressSpace: 0)
!20126 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&&quiche::h3::frame::Frame", baseType: !20125, size: 64, align: 64, dwarfAddressSpace: 0)
!20127 = !{!167, !20126, !1975}
!20128 = !DISubroutineType(types: !20127)
!20129 = !DILocalVariable(name: "self", arg: 1, scope: !20122, file: !20123, line: 2887, type: !20126)
!20130 = !DILocalVariable(name: "f", arg: 2, scope: !20122, file: !20123, line: 2887, type: !1975)
!20131 = !{!20129, !20130}
!20132 = !DILocation(line: 0, scope: !20122)
!20133 = !DILocation(line: 2887, column: 71, scope: !20122)
!20134 = !DILocation(line: 2887, column: 62, scope: !20122)
!20135 = !DILocation(line: 2887, column: 84, scope: !20122)
!20136 = distinct !DILexicalBlock(scope: !20139, file: !20140, line: 11, column: 10)
!20137 = distinct !DILexicalBlock(scope: !20139, file: !20140, line: 11, column: 10)
!20138 = distinct !DILexicalBlock(scope: !20139, file: !20140, line: 11, column: 10)
!20139 = distinct !DISubprogram(name: "fmt", linkageName: "_RNvXs3_NtCs8Nb2mar7w9E_7inquire5errorNtB5_12InquireErrorNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt", scope: !20141, file: !20140, line: 11, type: !20143, scopeLine: 11, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !162, templateParams: !1445, retainedNodes: !20149)
!20140 = !DIFile(filename: "src/error.rs", directory: "/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/inquire-0.9.4", checksumkind: CSK_MD5, checksum: "7c0e21a8b93cdba587918afddd906b87")
!20141 = !DINamespace(name: "{impl#5}", scope: !1621)
!20142 = !{!167, !3534, !1975}
!20143 = !DISubroutineType(types: !20142)
!20144 = !DILocalVariable(name: "self", arg: 1, scope: !20139, file: !20140, line: 11, type: !3534)
!20145 = !DILocalVariable(name: "f", arg: 2, scope: !20139, file: !20140, line: 11, type: !1975)
!20146 = !DILocalVariable(name: "__self_0", scope: !20138, file: !20140, line: 19, type: !1537, align: 64)
!20147 = !DILocalVariable(name: "__self_0", scope: !20137, file: !20140, line: 22, type: !1465, align: 64)
!20148 = !DILocalVariable(name: "__self_0", scope: !20136, file: !20140, line: 36, type: !1451, align: 64)
!20149 = !{!20144, !20145, !20146, !20147, !20148}
!20150 = !DILocation(line: 0, scope: !20139)
!20151 = !DILocation(line: 0, scope: !20138)
!20152 = !DILocation(line: 0, scope: !20137)
!20153 = !DILocation(line: 0, scope: !20136)
!20154 = !DILocation(line: 11, column: 10, scope: !20139)
!20155 = !DILocation(line: 19, column: 26, scope: !20139)
!20156 = !DILocation(line: 11, column: 10, scope: !20138)
!20157 = !DILocation(line: 11, column: 14, scope: !20139)
!20158 = !DILocation(line: 22, column: 8, scope: !20139)
!20159 = !DILocation(line: 11, column: 10, scope: !20137)
!20160 = !DILocation(line: 36, column: 12, scope: !20139)
!20161 = !DILocation(line: 11, column: 10, scope: !20136)
!20162 = !DILocation(line: 11, column: 15, scope: !20139)
!20163 = distinct !DISubprogram(name: "fmt", linkageName: "_RNvXs8_Cs3cD8Bj6DSIP_6octetsNtB5_19BufferTooShortErrorNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt", scope: !20164, file: !3873, line: 43, type: !20167, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !162, templateParams: !1445, retainedNodes: !20170)
!20164 = !DINamespace(name: "{impl#10}", scope: !1615)
!20165 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&octets::BufferTooShortError", baseType: !49, size: 64, align: 64, dwarfAddressSpace: 0)
!20166 = !{!167, !20165, !1975}
!20167 = !DISubroutineType(types: !20166)
!20168 = !DILocalVariable(name: "self", arg: 1, scope: !20163, file: !3873, line: 43, type: !20165)
!20169 = !DILocalVariable(name: "f", arg: 2, scope: !20163, file: !3873, line: 43, type: !1975)
!20170 = !{!20168, !20169}
!20171 = !DILocation(line: 0, scope: !20163)
!20172 = !DILocation(line: 43, column: 23, scope: !20163)
!20173 = !DILocation(line: 43, column: 28, scope: !20163)
!20174 = distinct !DISubprogram(name: "fmt", linkageName: "_RNvXsc_NtNtCskKLDkoKarTP_4core3num5errorNtB5_13ParseIntErrorNtNtB9_3fmt5Debug3fmt", scope: !20176, file: !20175, line: 67, type: !20179, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !162, templateParams: !1445, retainedNodes: !20182)
!20175 = !DIFile(filename: "library/core/src/num/error.rs", directory: "/rustc/bff8e12ff5e6bcd53dfb1dbccdcec80a60a856ed", checksumkind: CSK_MD5, checksum: "0c87095a3417151834e6e3681908ba3a")
!20176 = !DINamespace(name: "{impl#14}", scope: !1101)
!20177 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&core::num::error::ParseIntError", baseType: !46, size: 64, align: 64, dwarfAddressSpace: 0)
!20178 = !{!167, !20177, !1975}
!20179 = !DISubroutineType(types: !20178)
!20180 = !DILocalVariable(name: "self", arg: 1, scope: !20174, file: !20175, line: 67, type: !20177)
!20181 = !DILocalVariable(name: "f", arg: 2, scope: !20174, file: !20175, line: 67, type: !1975)
!20182 = !{!20180, !20181}
!20183 = !DILocation(line: 0, scope: !20174)
!20184 = !DILocation(line: 70, column: 5, scope: !20174)
!20185 = !DILocation(line: 67, column: 10, scope: !20174)
!20186 = !DILocation(line: 67, column: 14, scope: !20174)
!20187 = !DILocation(line: 67, column: 15, scope: !20174)
!20188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Some", scope: !20191, file: !946, size: 192, align: 64, flags: DIFlagPublic, elements: !20218, templateParams: !1602, identifier: "3c7dbc489ef9f7c6a9cf2e8177ce29a3")
!20189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "None", scope: !20191, file: !946, size: 192, align: 64, flags: DIFlagPublic, elements: !1445, templateParams: !1602, identifier: "cec14170d3b05cac4ebeab483825e1bd")
!20190 = distinct !DICompositeType(tag: DW_TAG_variant_part, scope: !20191, file: !946, size: 192, align: 64, elements: !20216, templateParams: !1445, identifier: "2a6f9a4a6a47efa4564de710386aa463", discriminator: !20219)
!20191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Option<core::cell::RefCell<u64>>", scope: !1880, file: !946, size: 192, align: 64, flags: DIFlagPublic, elements: !20213, templateParams: !1445, identifier: "71e9d70d09ec6dbf5f7bdf909d8c9c61")
!20192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Some", scope: !20195, file: !946, size: 64, align: 64, flags: DIFlagPublic, elements: !20212, templateParams: !20221, identifier: "fc42aaa4787f0d2b527de8887659eab8")
!20193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "None", scope: !20195, file: !946, size: 64, align: 64, flags: DIFlagPublic, elements: !1445, templateParams: !20221, identifier: "3f70bad3829c7712e9b3d241794bc76b")
!20194 = distinct !DICompositeType(tag: DW_TAG_variant_part, scope: !20195, file: !946, size: 64, align: 64, elements: !20209, templateParams: !1445, identifier: "b3d00f1b79ffb1b52e575430c0c9d0d2", discriminator: !20222)
!20195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Option<&mut core::option::Option<core::cell::RefCell<u64>>>", scope: !1880, file: !946, size: 64, align: 64, flags: DIFlagPublic, elements: !20206, templateParams: !1445, identifier: "13d816bc5ac2015c6da8dda275a66f53")
!20196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "{closure_env#1}", scope: !1571, file: !946, align: 8, elements: !1445, identifier: "af612e9cbaa8ce8cd19b51e79196e2b8")
!20197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "(core::option::Option<&mut core::option::Option<core::cell::RefCell<u64>>>)", file: !946, size: 64, align: 64, elements: !20227, templateParams: !1445, identifier: "4a4b32740fb9009746ce29d03098dffa")
!20198 = distinct !DISubprogram(name: "call_once<h3i::prompts::h3::CONNECTION_IDLE_TIMEOUT::{constant#0}::{closure_env#1}, (core::option::Option<&mut core::option::Option<core::cell::RefCell<u64>>>)>", linkageName: "_RNvYNCNKNvNtNtCsjfnSKV9Rz3v_3h3i7prompts2h323CONNECTION_IDLE_TIMEOUT0s_0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB1f_6option6OptionQIB1U_INtNtB1f_4cell7RefCellyEEEEE9call_onceBc_", scope: !20202, file: !3918, line: 250, type: !20205, scopeLine: 250, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !162, templateParams: !20230, retainedNodes: !20225)
!20199 = distinct !DISubprogram(name: "{closure#1}", linkageName: "_RNCNKNvNtNtCsjfnSKV9Rz3v_3h3i7prompts2h323CONNECTION_IDLE_TIMEOUT0s_0B9_", scope: !1571, file: !20233, line: 71, type: !20237, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !162, templateParams: !1445, retainedNodes: !20239)
!20200 = distinct !DILocation(line: 250, column: 5, scope: !20198)
!20201 = distinct !DILocation(line: 0, scope: !20199, inlinedAt: !20200)
!20202 = !DINamespace(name: "FnOnce", scope: !3921)
!20203 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "*const core::cell::RefCell<u64>", baseType: !39, size: 64, align: 64, dwarfAddressSpace: 0)
!20204 = !{!20203, !20196, !20195}
!20205 = !DISubroutineType(types: !20204)
!20206 = !{!20194}
!20207 = !DIDerivedType(tag: DW_TAG_member, name: "None", scope: !20194, file: !946, baseType: !20193, size: 64, align: 64, extraData: i64 0)
!20208 = !DIDerivedType(tag: DW_TAG_member, name: "Some", scope: !20194, file: !946, baseType: !20192, size: 64, align: 64)
!20209 = !{!20207, !20208}
!20210 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut core::option::Option<core::cell::RefCell<u64>>", baseType: !20191, size: 64, align: 64, dwarfAddressSpace: 0)
!20211 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !20192, file: !946, baseType: !20210, size: 64, align: 64, flags: DIFlagPublic)
!20212 = !{!20211}
!20213 = !{!20190}
!20214 = !DIDerivedType(tag: DW_TAG_member, name: "None", scope: !20190, file: !946, baseType: !20189, size: 192, align: 64, extraData: i64 0)
!20215 = !DIDerivedType(tag: DW_TAG_member, name: "Some", scope: !20190, file: !946, baseType: !20188, size: 192, align: 64, extraData: i64 1)
!20216 = !{!20214, !20215}
!20217 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !20188, file: !946, baseType: !39, size: 128, align: 64, offset: 64, flags: DIFlagPublic)
!20218 = !{!20217}
!20219 = !DIDerivedType(tag: DW_TAG_member, scope: !20191, file: !946, baseType: !1033, size: 64, align: 64, flags: DIFlagArtificial)
!20220 = !DITemplateTypeParameter(name: "T", type: !20210)
!20221 = !{!20220}
!20222 = !DIDerivedType(tag: DW_TAG_member, scope: !20195, file: !946, baseType: !1033, size: 64, align: 64, flags: DIFlagArtificial)
!20223 = !DILocalVariable(arg: 1, scope: !20198, file: !3918, line: 250, type: !20196)
!20224 = !DILocalVariable(arg: 2, scope: !20198, file: !3918, line: 250, type: !20197)
!20225 = !{!20223, !20224}
!20226 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !20197, file: !946, baseType: !20195, size: 64, align: 64)
!20227 = !{!20226}
!20228 = !DITemplateTypeParameter(name: "Self", type: !20196)
!20229 = !DITemplateTypeParameter(name: "Args", type: !20197)
!20230 = !{!20228, !20229}
!20231 = !DILocation(line: 0, scope: !20198)
!20232 = !DILocation(line: 250, column: 5, scope: !20198)
!20233 = !DIFile(filename: "library/std/src/sys/thread_local/native/mod.rs", directory: "/rustc/bff8e12ff5e6bcd53dfb1dbccdcec80a60a856ed", checksumkind: CSK_MD5, checksum: "f45b912659b967b327e1af351608d593")
!20234 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&h3i::prompts::h3::CONNECTION_IDLE_TIMEOUT::{constant#0}::{closure_env#1}", baseType: !20196, size: 64, align: 64, dwarfAddressSpace: 0)
!20235 = !DILocalVariable(arg: 1, scope: !20199, file: !20233, line: 71, type: !20234)
!20236 = !{!20203, !20234, !20195}
!20237 = !DISubroutineType(cc: DW_CC_nocall, types: !20236)
!20238 = !DILocalVariable(arg: 2, scope: !20199, file: !20233, line: 71, type: !20195)
!20239 = !{!20235, !20238}
!20240 = !DILocation(line: 75, column: 26, scope: !20199, inlinedAt: !20200)
!20241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "StringError", scope: !20257, file: !946, size: 192, align: 64, flags: DIFlagProtected, elements: !20259, templateParams: !1445, identifier: "cc1e7dd8ac5f87238e90886a1915734e")
!20242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dyn core::error::Error", file: !946, align: 8, elements: !1445, identifier: "b962d9af39513513fcfcb37fd6d373e7")
!20243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "&dyn core::error::Error", file: !946, size: 128, align: 64, elements: !20269, templateParams: !1445, identifier: "183260fa12085b2ba78f5dd8afe3ca9e")
!20244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Some", scope: !20247, file: !946, size: 128, align: 64, flags: DIFlagPublic, elements: !20265, templateParams: !20271, identifier: "453a89c9dc2df2e6ee2a590401de2e95")
!20245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "None", scope: !20247, file: !946, size: 128, align: 64, flags: DIFlagPublic, elements: !1445, templateParams: !20271, identifier: "8c24fc83b02fde91937673d72982247c")
!20246 = distinct !DICompositeType(tag: DW_TAG_variant_part, scope: !20247, file: !946, size: 128, align: 64, elements: !20263, templateParams: !1445, identifier: "779a70b247f767d79b20506650d7f8c", discriminator: !20272)
!20247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Option<&dyn core::error::Error>", scope: !1880, file: !946, size: 128, align: 64, flags: DIFlagPublic, elements: !20260, templateParams: !1445, identifier: "8dc721e3c8445c2ac9aea4d1de9148b")
!20248 = distinct !DISubprogram(name: "cause<alloc::boxed::convert::{impl#17}::from::StringError>", linkageName: "_RNvYNtNvXsf_NtNtCsexYYUdYSQU6_5alloc5boxed7convertINtBc_3BoxDNtNtCskKLDkoKarTP_4core5error5ErrorNtNtB11_6marker4SendNtB1y_4SyncEL_EINtNtB11_7convert4FromNtNtBe_6string6StringE4from11StringErrorBX_5causeCsjfnSKV9Rz3v_3h3i", scope: !20251, file: !20249, line: 147, type: !20254, scopeLine: 147, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !162, templateParams: !20276, retainedNodes: !20274)
!20249 = !DIFile(filename: "library/core/src/error.rs", directory: "/rustc/bff8e12ff5e6bcd53dfb1dbccdcec80a60a856ed", checksumkind: CSK_MD5, checksum: "cc25b44a5121d276a0b8ccd864a2c9a1")
!20250 = !DINamespace(name: "error", scope: !982)
!20251 = !DINamespace(name: "Error", scope: !20250)
!20252 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&alloc::boxed::convert::{impl#17}::from::StringError", baseType: !20241, size: 64, align: 64, dwarfAddressSpace: 0)
!20253 = !{!20247, !20252}
!20254 = !DISubroutineType(types: !20253)
!20255 = !DINamespace(name: "convert", scope: !2319)
!20256 = !DINamespace(name: "{impl#17}", scope: !20255)
!20257 = !DINamespace(name: "from", scope: !20256)
!20258 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !20241, file: !946, baseType: !33, size: 192, align: 64, flags: DIFlagProtected)
!20259 = !{!20258}
!20260 = !{!20246}
!20261 = !DIDerivedType(tag: DW_TAG_member, name: "None", scope: !20246, file: !946, baseType: !20245, size: 128, align: 64, extraData: i64 0)
!20262 = !DIDerivedType(tag: DW_TAG_member, name: "Some", scope: !20246, file: !946, baseType: !20244, size: 128, align: 64)
!20263 = !{!20261, !20262}
!20264 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !20244, file: !946, baseType: !20243, size: 128, align: 64, flags: DIFlagPublic)
!20265 = !{!20264}
!20266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20242, size: 64, align: 64, dwarfAddressSpace: 0)
!20267 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !20243, file: !946, baseType: !20266, size: 64, align: 64)
!20268 = !DIDerivedType(tag: DW_TAG_member, name: "vtable", scope: !20243, file: !946, baseType: !1457, size: 64, align: 64, offset: 64)
!20269 = !{!20267, !20268}
!20270 = !DITemplateTypeParameter(name: "T", type: !20243)
!20271 = !{!20270}
end_hunk_1
