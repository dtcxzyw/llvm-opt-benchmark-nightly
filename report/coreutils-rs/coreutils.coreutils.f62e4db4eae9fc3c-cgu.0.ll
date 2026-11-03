Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/coreutils.coreutils.f62e4db4eae9fc3c-cgu.0?download=true
inline.NumInlined: 9927
inline.NumDeleted: 3951
loop-unroll.NumCompletelyUnrolled: 28
loop-unroll.NumRuntimeUnrolled: 60
loop-unroll.NumUnrolled: 89
begin_hunk_0_@_RINvCsiibOIv6tv3q_7uu_date27try_parse_with_abbreviationReECsl8pJiQOn4hA_9coreutils:bb.a
bb.g:                                             ; preds = %bb.n, %.lr.ph.i.i.us.i.i
  %i.bj = phi i64 [ %i.bf, %.lr.ph.i.i.us.i.i ], [ %i.ci, %bb.n ] ; 4 uses
  %i.bk = phi i64 [ %i.bf, %.lr.ph.i.i.us.i.i ], [ %i.cj, %bb.n ] ; 5 uses
  %i.bl = phi i64 [ %i.bg, %.lr.ph.i.i.us.i.i ], [ %i.cl, %bb.n ] ; 7 uses
  %i.bm = phi i64 [ %.lcssa5666.i, %.lr.ph.i.i.us.i.i ], [ %i.ck, %bb.n ]
  %.not.i16.i.us.i.i = icmp eq i64 %.lcssa5666.i, %i.bm
  br i1 %.not.i16.i.us.i.i, label %bb.h, label %_RINvMNtCs6JMX4GRUq9U_4core3stre16trim_end_matchesReECsl8pJiQOn4hA_9coreutils.exit

bb.h:                                             ; preds = %bb.g
  %i.bn = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.bl
  %i.bo = load i8, ptr %i.bn, align 1, !alias.scope !16218, !noalias !16220, !noundef !12
  %i.bp = and i8 %i.bo, 63
  %i.bq = zext nneg i8 %i.bp to i64
  %i.br = shl nuw i64 1, %i.bq
  %i.bs = and i64 %i.br, %i.ba
  %.not19.i.i.us.i.i = icmp eq i64 %i.bs, 0
  br i1 %.not19.i.i.us.i.i, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  %..i.i.i.us.i.i = tail call i64 @llvm.umin.i64(i64 %i.bk, i64 %i.ad)
  %.sroa.03.0.i.i.us.i.i = select i1 %i.au, i64 %i.ad, i64 %..i.i.i.us.i.i
  %.sroa.03.0.i.fr.i.us.i.i = freeze i64 %.sroa.03.0.i.i.us.i.i ; 3 uses
  %i.bt = add i64 %.sroa.03.0.i.fr.i.us.i.i, -1   ; 2 uses
  %.first_iter.i.i.us.i.i = icmp ult i64 %i.bt, %i.ay
  %.not20.i.us.i.us.i.i312 = icmp eq i64 %.sroa.03.0.i.fr.i.us.i.i, 0 ; 2 uses
  br i1 %.first_iter.i.i.us.i.i, label %.split39.us.i.us.i.i.preheader, label %.split39.i.us.i.i

.split39.us.i.us.i.i.preheader:                   ; preds = %bb.i
  br i1 %.not20.i.us.i.us.i.i312, label %.split41.us.i.us.i.i, label %.lr.ph

.split39.i.us.i.i:                                ; preds = %bb.i
  br i1 %.not20.i.us.i.us.i.i312, label %.split41.us.i.us.i.i, label %.split80.us.i.i

.split39.us.i.us.i.i:                             ; preds = %.lr.ph
  %.not20.i.us.i.us.i.i = icmp eq i64 %i.bu, 0
  br i1 %.not20.i.us.i.us.i.i, label %.split41.us.i.us.i.i, label %.lr.ph

.lr.ph:                                           ; preds = %.split39.us.i.us.i.i.preheader, %.split39.us.i.us.i.i
  %.sroa.2.0.i.us.i.us.i.i313 = phi i64 [ %i.bu, %.split39.us.i.us.i.i ], [ %.sroa.03.0.i.fr.i.us.i.i, %.split39.us.i.us.i.i.preheader ]
  %i.bu = add i64 %.sroa.2.0.i.us.i.us.i.i313, -1 ; 5 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.bu
  %i.bw = load i8, ptr %i.bv, align 1, !alias.scope !16219, !noalias !16220, !noundef !12
  %i.bx = add i64 %i.bu, %i.bl                    ; 2 uses
  %i.by = icmp ult i64 %i.bx, %i.ah
  tail call void @llvm.assume(i1 %i.by)
  %i.bz = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.bx
  %i.ca = load i8, ptr %i.bz, align 1, !alias.scope !16218, !noalias !16220, !noundef !12
  %.not22.i.us.i.us.i.i = icmp eq i8 %i.bw, %i.ca
  br i1 %.not22.i.us.i.us.i.i, label %.split39.us.i.us.i.i, label %.split43.us.i.us.i.i

.split43.us.i.us.i.i:                             ; preds = %.lr.ph
  %.reass.i.i.us.i.i = add i64 %i.bu, %invariant.op.i.i.us.i.i ; 2 uses
  br i1 %i.au, label %bb.n, label %.sink.split.i.i.us.i.i

.split41.us.i.us.i.i:                             ; preds = %.split39.us.i.us.i.i, %.split39.us.i.us.i.i.preheader, %.split39.i.us.i.i
  %.sroa.08.0.i.i.us.i.i = select i1 %i.au, i64 %i.ay, i64 %i.bk ; 2 uses
  %umax.i.i.us.i.i = tail call i64 @llvm.umax.i64(i64 %.sroa.08.0.i.i.us.i.i, i64 %i.ad)
  %exitcond.not.i.i.us.i.i314.not = icmp ult i64 %i.ad, %.sroa.08.0.i.i.us.i.i
  br i1 %exitcond.not.i.i.us.i.i314.not, label %.lr.ph316, label %.split41.us.i.us.i.i._crit_edge

bb.j:                                             ; preds = %bb.k
  %i.cb = add nuw i64 %.sroa.09.0.i.i.us.i.i315, 1 ; 2 uses
  %exitcond.not.i.i.us.i.i = icmp eq i64 %i.cb, %umax.i.i.us.i.i
  br i1 %exitcond.not.i.i.us.i.i, label %.split41.us.i.us.i.i._crit_edge, label %.lr.ph316

.lr.ph316:                                        ; preds = %.split41.us.i.us.i.i, %bb.j
  %.sroa.09.0.i.i.us.i.i315 = phi i64 [ %i.cb, %bb.j ], [ %i.ad, %.split41.us.i.us.i.i ] ; 4 uses
  %exitcond54.not.i.i.us.i.i = icmp eq i64 %.sroa.09.0.i.i.us.i.i315, %umax53.i.i.i.i
  br i1 %exitcond54.not.i.i.us.i.i, label %.split84.us.i.i, label %bb.k

bb.k:                                             ; preds = %.lr.ph316
  %i.cc = getelementptr inbounds nuw i8, ptr %i.aw, i64 %.sroa.09.0.i.i.us.i.i315
  %i.cd = load i8, ptr %i.cc, align 1, !alias.scope !16219, !noalias !16220, !noundef !12
  %i.ce = add i64 %.sroa.09.0.i.i.us.i.i315, %i.bl ; 2 uses
  %i.cf = icmp ult i64 %i.ce, %i.ah
  tail call void @llvm.assume(i1 %i.cf)
  %i.cg = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ce
  %i.ch = load i8, ptr %i.cg, align 1, !alias.scope !16218, !noalias !16220, !noundef !12
  %.not21.i.i.us.i.i = icmp eq i8 %i.cd, %i.ch
  br i1 %.not21.i.i.us.i.i, label %bb.j, label %bb.l

bb.l:                                             ; preds = %bb.k
  br i1 %i.au, label %bb.n, label %.sink.split.i.i.us.i.i

bb.m:                                             ; preds = %bb.h
  br i1 %i.au, label %bb.n, label %.sink.split.i.i.us.i.i

.sink.split.i.i.us.i.i:                           ; preds = %bb.m, %bb.l, %.split43.us.i.us.i.i
  %.sink75.i.i.us.i.i = phi i64 [ %i.be, %bb.l ], [ %i.ay, %.split43.us.i.us.i.i ], [ %i.ay, %bb.m ] ; 2 uses
  %.ph74.i.i.us.i.i = phi i64 [ %i.bi, %bb.l ], [ %.reass.i.i.us.i.i, %.split43.us.i.us.i.i ], [ %i.bl, %bb.m ]
  br label %bb.n

bb.n:                                             ; preds = %.sink.split.i.i.us.i.i, %bb.m, %bb.l, %.split43.us.i.us.i.i
  %i.ci = phi i64 [ %i.bj, %.split43.us.i.us.i.i ], [ %i.bj, %bb.m ], [ %i.bj, %bb.l ], [ %.sink75.i.i.us.i.i, %.sink.split.i.i.us.i.i ]
  %i.cj = phi i64 [ %i.bk, %.split43.us.i.us.i.i ], [ %i.bk, %bb.m ], [ %i.bk, %bb.l ], [ %.sink75.i.i.us.i.i, %.sink.split.i.i.us.i.i ]
  %i.ck = phi i64 [ %.reass.i.i.us.i.i, %.split43.us.i.us.i.i ], [ %i.bl, %bb.m ], [ %i.bi, %bb.l ], [ %.ph74.i.i.us.i.i, %.sink.split.i.i.us.i.i ] ; 2 uses
  %i.cl = sub i64 %i.ck, %i.ay                    ; 2 uses
  %i.cm = icmp ult i64 %i.cl, %i.ah
  br i1 %i.cm, label %bb.g, label %_RINvMNtCs6JMX4GRUq9U_4core3stre16trim_end_matchesReECsl8pJiQOn4hA_9coreutils.exit

.split41.us.i.us.i.i._crit_edge:                  ; preds = %.split41.us.i.us.i.i, %bb.j
  %spec.select77.i = select i1 %i.au, i64 %i.bj, i64 %i.ay
  %i.cn = icmp eq i64 %i.bl, 0
  br i1 %i.cn, label %_RINvMNtCs6JMX4GRUq9U_4core3stre16trim_end_matchesReECsl8pJiQOn4hA_9coreutils.exit, label %bb.f

.split.i.i:                                       ; preds = %bb.e
  %i.co = getelementptr inbounds nuw i8, ptr %i.k, i64 25
  %i.cp = getelementptr inbounds nuw i8, ptr %i.k, i64 26
  %i.cq = load i8, ptr %i.cp, align 2, !range !21, !alias.scope !16215, !noalias !16214
  %i.cr = trunc nuw i8 %i.cq to i1
  %.promoted89.i.i = load i8, ptr %i.co, align 1, !alias.scope !16215, !noalias !16214 ; 9 uses
  br i1 %i.cr, label %_RINvMNtCs6JMX4GRUq9U_4core3stre16trim_end_matchesReECsl8pJiQOn4hA_9coreutils.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.split.i.i
  br i1 %i.ai, label %.lr.ph.split.us.split.i.i, label %.lr.ph.split.split.i.preheader.i

.lr.ph.split.split.i.preheader.i:                 ; preds = %.lr.ph.i.i
  br i1 %.not.i.i.i.i, label %.lr.ph.split.split.i.preheader.split.us.i, label %.lr.ph.split.split.i.preheader.split.i

.lr.ph.split.split.i.preheader.split.us.i:        ; preds = %.lr.ph.split.split.i.preheader.i
  %i.cs = load i8, ptr %i.ak, align 1, !alias.scope !16221, !noalias !16220, !noundef !12
  %i.ct = icmp sgt i8 %i.cs, -65
  br i1 %i.ct, label %.lr.ph.split.split.i.preheader.split.us.split.us.i, label %.split97.us.i.i

.lr.ph.split.split.i.preheader.split.us.split.us.i: ; preds = %.lr.ph.split.split.i.preheader.split.us.i
  %i.cu = load i8, ptr %i.al, align 1, !noalias !16222, !noundef !12
  %i.cv = icmp sgt i8 %i.cu, -1
  br i1 %i.cv, label %.lr.ph.split.split.i.us.us.us.preheader.i, label %.lr.ph.split.split.i.preheader.split.us.split.us.split.i

.lr.ph.split.split.i.us.us.us.preheader.i:        ; preds = %.lr.ph.split.split.i.preheader.split.us.split.us.i
  %i.cw = trunc nuw i8 %.promoted89.i.i to i1
  br i1 %i.cw, label %_RNvYNtNtNtCs6JMX4GRUq9U_4core3str7pattern11StrSearcherNtB4_15ReverseSearcher16next_reject_backCsl8pJiQOn4hA_9coreutils.exit.sink.split.i, label %_RINvMNtCs6JMX4GRUq9U_4core3stre16trim_end_matchesReECsl8pJiQOn4hA_9coreutils.exit

.lr.ph.split.split.i.preheader.split.us.split.us.split.i: ; preds = %.lr.ph.split.split.i.preheader.split.us.split.us.i
  tail call void @llvm.assume(i1 %i.am)
  %i.cx = load i8, ptr %i.an, align 1, !noalias !16222, !noundef !12
  %i.cy = icmp slt i8 %i.cx, -64
  br i1 %i.cy, label %.lr.ph.split.split.i.preheader.split.us.split.us.split.split.us.i, label %.lr.ph.split.split.i.preheader.split.us.split.us.split.split.i

.lr.ph.split.split.i.preheader.split.us.split.us.split.split.us.i: ; preds = %.lr.ph.split.split.i.preheader.split.us.split.us.split.i
  tail call void @llvm.assume(i1 %i.ao)
  %i.cz = load i8, ptr %i.ap, align 1, !noalias !16222, !noundef !12
  %i.da = icmp slt i8 %i.cz, -64
  br i1 %i.da, label %.lr.ph.split.split.i.preheader.split.us.split.us.split.split.us.split.us.i, label %.lr.ph.split.split.i.preheader.split.us.split.us.split.split.us.split.i

.lr.ph.split.split.i.preheader.split.us.split.us.split.split.us.split.us.i: ; preds = %.lr.ph.split.split.i.preheader.split.us.split.us.split.split.us.i
  tail call void @llvm.assume(i1 %i.aq)
  %i.db = trunc nuw i8 %.promoted89.i.i to i1
  br i1 %i.db, label %_RNvYNtNtNtCs6JMX4GRUq9U_4core3str7pattern11StrSearcherNtB4_15ReverseSearcher16next_reject_backCsl8pJiQOn4hA_9coreutils.exit.sink.split.i, label %_RINvMNtCs6JMX4GRUq9U_4core3stre16trim_end_matchesReECsl8pJiQOn4hA_9coreutils.exit

.lr.ph.split.split.i.preheader.split.us.split.us.split.split.us.split.i: ; preds = %.lr.ph.split.split.i.preheader.split.us.split.us.split.split.us.i
  %i.dc = trunc nuw i8 %.promoted89.i.i to i1
  br i1 %i.dc, label %_RNvYNtNtNtCs6JMX4GRUq9U_4core3str7pattern11StrSearcherNtB4_15ReverseSearcher16next_reject_backCsl8pJiQOn4hA_9coreutils.exit.sink.split.i, label %_RINvMNtCs6JMX4GRUq9U_4core3stre16trim_end_matchesReECsl8pJiQOn4hA_9coreutils.exit

.lr.ph.split.split.i.preheader.split.us.split.us.split.split.i: ; preds = %.lr.ph.split.split.i.preheader.split.us.split.us.split.i
  %i.dd = trunc nuw i8 %.promoted89.i.i to i1
  br i1 %i.dd, label %_RNvYNtNtNtCs6JMX4GRUq9U_4core3str7pattern11StrSearcherNtB4_15ReverseSearcher16next_reject_backCsl8pJiQOn4hA_9coreutils.exit.sink.split.i, label %_RINvMNtCs6JMX4GRUq9U_4core3stre16trim_end_matchesReECsl8pJiQOn4hA_9coreutils.exit

.lr.ph.split.split.i.preheader.split.i:           ; preds = %.lr.ph.split.split.i.preheader.i
  br i1 %i.aj, label %.lr.ph.split.split.i.preheader.split.split.us.i, label %.split97.us.i.i

.lr.ph.split.split.i.preheader.split.split.us.i:  ; preds = %.lr.ph.split.split.i.preheader.split.i
  %i.de = load i8, ptr %i.al, align 1, !noalias !16222, !noundef !12
  %i.df = icmp sgt i8 %i.de, -1
  br i1 %i.df, label %.lr.ph.split.split.i.us34.us.preheader.i, label %.lr.ph.split.split.i.preheader.split.split.us.split.i

.lr.ph.split.split.i.us34.us.preheader.i:         ; preds = %.lr.ph.split.split.i.preheader.split.split.us.i
  %i.dg = trunc nuw i8 %.promoted89.i.i to i1
  br i1 %i.dg, label %_RNvYNtNtNtCs6JMX4GRUq9U_4core3str7pattern11StrSearcherNtB4_15ReverseSearcher16next_reject_backCsl8pJiQOn4hA_9coreutils.exit.sink.split.i, label %_RINvMNtCs6JMX4GRUq9U_4core3stre16trim_end_matchesReECsl8pJiQOn4hA_9coreutils.exit

.lr.ph.split.split.i.preheader.split.split.us.split.i: ; preds = %.lr.ph.split.split.i.preheader.split.split.us.i
  tail call void @llvm.assume(i1 %i.am)
  %i.dh = load i8, ptr %i.an, align 1, !noalias !16222, !noundef !12
  %i.di = icmp slt i8 %i.dh, -64
  br i1 %i.di, label %.lr.ph.split.split.i.preheader.split.split.us.split.split.us.i, label %.lr.ph.split.split.i.preheader.split.split.us.split.split.i

.lr.ph.split.split.i.preheader.split.split.us.split.split.us.i: ; preds = %.lr.ph.split.split.i.preheader.split.split.us.split.i
  tail call void @llvm.assume(i1 %i.ao)
  %i.dj = load i8, ptr %i.ap, align 1, !noalias !16222, !noundef !12
  %i.dk = icmp slt i8 %i.dj, -64
  br i1 %i.dk, label %.lr.ph.split.split.i.preheader.split.split.us.split.split.us.split.us.i, label %.lr.ph.split.split.i.preheader.split.split.us.split.split.us.split.i

.lr.ph.split.split.i.preheader.split.split.us.split.split.us.split.us.i: ; preds = %.lr.ph.split.split.i.preheader.split.split.us.split.split.us.i
  tail call void @llvm.assume(i1 %i.aq)
  %i.dl = trunc nuw i8 %.promoted89.i.i to i1
  br i1 %i.dl, label %_RNvYNtNtNtCs6JMX4GRUq9U_4core3str7pattern11StrSearcherNtB4_15ReverseSearcher16next_reject_backCsl8pJiQOn4hA_9coreutils.exit.sink.split.i, label %_RINvMNtCs6JMX4GRUq9U_4core3stre16trim_end_matchesReECsl8pJiQOn4hA_9coreutils.exit

.lr.ph.split.split.i.preheader.split.split.us.split.split.us.split.i: ; preds = %.lr.ph.split.split.i.preheader.split.split.us.split.split.us.i
  %i.dm = trunc nuw i8 %.promoted89.i.i to i1
  br i1 %i.dm, label %_RNvYNtNtNtCs6JMX4GRUq9U_4core3str7pattern11StrSearcherNtB4_15ReverseSearcher16next_reject_backCsl8pJiQOn4hA_9coreutils.exit.sink.split.i, label %_RINvMNtCs6JMX4GRUq9U_4core3stre16trim_end_matchesReECsl8pJiQOn4hA_9coreutils.exit

.lr.ph.split.split.i.preheader.split.split.us.split.split.i: ; preds = %.lr.ph.split.split.i.preheader.split.split.us.split.i
  %i.dn = trunc nuw i8 %.promoted89.i.i to i1
  br i1 %i.dn, label %_RNvYNtNtNtCs6JMX4GRUq9U_4core3str7pattern11StrSearcherNtB4_15ReverseSearcher16next_reject_backCsl8pJiQOn4hA_9coreutils.exit.sink.split.i, label %_RINvMNtCs6JMX4GRUq9U_4core3stre16trim_end_matchesReECsl8pJiQOn4hA_9coreutils.exit

.lr.ph.split.us.split.i.i:                        ; preds = %.lr.ph.i.i
  %i.do = trunc nuw i8 %.promoted89.i.i to i1
  br i1 %i.do, label %_RNvYNtNtNtCs6JMX4GRUq9U_4core3str7pattern11StrSearcherNtB4_15ReverseSearcher16next_reject_backCsl8pJiQOn4hA_9coreutils.exit.sink.split.i, label %_RINvMNtCs6JMX4GRUq9U_4core3stre16trim_end_matchesReECsl8pJiQOn4hA_9coreutils.exit

.split97.us.i.i:                                  ; preds = %.lr.ph.split.split.i.preheader.split.i, %.lr.ph.split.split.i.preheader.split.us.i
  tail call void @_RNvNtCs6JMX4GRUq9U_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.af, i64 noundef %i.ah, i64 noundef 0, i64 noundef %i.ad, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1472) #50, !noalias !16220
  unreachable

.split80.us.i.i:                                  ; preds = %.split39.i.us.i.i
  tail call void @_RNvNtCs6JMX4GRUq9U_4core9panicking18panic_bounds_check(i64 noundef %i.bt, i64 noundef range(i64 0, -9223372036854775808) %i.ay, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @288) #50, !noalias !16223
  unreachable

.split84.us.i.i:                                  ; preds = %.lr.ph316
  tail call void @_RNvNtCs6JMX4GRUq9U_4core9panicking18panic_bounds_check(i64 noundef %umax53.i.i.i.i, i64 noundef range(i64 0, -9223372036854775808) %i.ay, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @287) #50, !noalias !16223
  unreachable

_RNvYNtNtNtCs6JMX4GRUq9U_4core3str7pattern11StrSearcherNtB4_15ReverseSearcher16next_reject_backCsl8pJiQOn4hA_9coreutils.exit.sink.split.i: ; preds = %.lr.ph.split.us.split.i.i, %.lr.ph.split.split.i.preheader.split.split.us.split.split.i, %.lr.ph.split.split.i.preheader.split.split.us.split.split.us.split.i, %.lr.ph.split.split.i.preheader.split.split.us.split.split.us.split.us.i, %.lr.ph.split.split.i.us34.us.preheader.i, %.lr.ph.split.split.i.preheader.split.us.split.us.split.split.i, %.lr.ph.split.split.i.preheader.split.us.split.us.split.split.us.split.i, %.lr.ph.split.split.i.preheader.split.us.split.us.split.split.us.split.us.i, %.lr.ph.split.split.i.us.us.us.preheader.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16217)
  br label %_RINvMNtCs6JMX4GRUq9U_4core3stre16trim_end_matchesReECsl8pJiQOn4hA_9coreutils.exit

_RINvMNtCs6JMX4GRUq9U_4core3stre16trim_end_matchesReECsl8pJiQOn4hA_9coreutils.exit: ; preds = %bb.f, %.split41.us.i.us.i.i._crit_edge, %bb.n, %bb.g, %.split.us.i.i, %.split.i.i, %.lr.ph.split.split.i.us.us.us.preheader.i, %.lr.ph.split.split.i.preheader.split.us.split.us.split.split.us.split.us.i, %.lr.ph.split.split.i.preheader.split.us.split.us.split.split.us.split.i, %.lr.ph.split.split.i.preheader.split.us.split.us.split.split.i, %.lr.ph.split.split.i.us34.us.preheader.i, %.lr.ph.split.split.i.preheader.split.split.us.split.split.us.split.us.i, %.lr.ph.split.split.i.preheader.split.split.us.split.split.us.split.i, %.lr.ph.split.split.i.preheader.split.split.us.split.split.i, %.lr.ph.split.us.split.i.i, %_RNvYNtNtNtCs6JMX4GRUq9U_4core3str7pattern11StrSearcherNtB4_15ReverseSearcher16next_reject_backCsl8pJiQOn4hA_9coreutils.exit.sink.split.i
  %.sroa.0.0.i = phi i64 [ %i.ad, %.lr.ph.split.split.i.us34.us.preheader.i ], [ 0, %.lr.ph.split.us.split.i.i ], [ 0, %.split.us.i.i ], [ %i.ad, %.lr.ph.split.split.i.preheader.split.us.split.us.split.split.us.split.i ], [ 0, %.split.i.i ], [ %i.ad, %.lr.ph.split.split.i.preheader.split.split.us.split.split.us.split.us.i ], [ %i.ad, %.lr.ph.split.split.i.us.us.us.preheader.i ], [ %i.ad, %.lr.ph.split.split.i.preheader.split.us.split.us.split.split.us.split.us.i ], [ %i.ad, %.lr.ph.split.split.i.preheader.split.split.us.split.split.us.split.i ], [ %.lcssa5666.i, %bb.n ], [ %i.ad, %.lr.ph.split.split.i.preheader.split.split.us.split.split.i ], [ %i.ad, %.lr.ph.split.split.i.preheader.split.us.split.us.split.split.i ], [ %i.ad, %_RNvYNtNtNtCs6JMX4GRUq9U_4core3str7pattern11StrSearcherNtB4_15ReverseSearcher16next_reject_backCsl8pJiQOn4hA_9coreutils.exit.sink.split.i ], [ %.lcssa5666.i, %bb.g ], [ %.lcssa5666.i, %bb.f ], [ 0, %.split41.us.i.us.i.i._crit_edge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !16214
  %i.dp = tail call fastcc { ptr, i64 } @_RINvMNtCs6JMX4GRUq9U_4core3stre12trim_matchesNvMNtNtB5_4char7methodsc13is_whitespaceECsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %.sroa.0.0.i) #45 ; 2 uses
  %i.dq = extractvalue { ptr, i64 } %i.dp, 0      ; 4 uses
  %i.dr = extractvalue { ptr, i64 } %i.dp, 1      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dq, i64 %i.dr
  store i64 0, ptr %i.q, align 8
  %.sroa.452.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 %i.dr, ptr %.sroa.452.0..sroa_idx, align 8
  %.sroa.553.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store ptr %i.dq, ptr %.sroa.553.0..sroa_idx, align 8
  %.sroa.553.sroa.4.0..sroa.553.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store i64 %i.dr, ptr %.sroa.553.sroa.4.0..sroa.553.0..sroa_idx.sroa_idx, align 8
  %.sroa.553.sroa.5.0..sroa.553.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  store ptr %i.dq, ptr %.sroa.553.sroa.5.0..sroa.553.0..sroa_idx.sroa_idx, align 8
  %.sroa.553.sroa.6.0..sroa.553.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  store ptr %i.ds, ptr %.sroa.553.sroa.6.0..sroa.553.0..sroa_idx.sroa_idx, align 8
  %.sroa.553.sroa.7.0..sroa.553.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 48
  store i64 0, ptr %.sroa.553.sroa.7.0..sroa.553.0..sroa_idx.sroa_idx, align 8
  %.sroa.654.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 56
  store i8 1, ptr %.sroa.654.0..sroa_idx, align 8
  %.sroa.755.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 57
  store i8 0, ptr %.sroa.755.0..sroa_idx, align 1
  br label %bb.o

bb.o:                                             ; preds = %bb.p, %_RINvMNtCs6JMX4GRUq9U_4core3stre16trim_end_matchesReECsl8pJiQOn4hA_9coreutils.exit
  %i.dt = call fastcc { ptr, i64 } @_RNvMsf_NtNtCs6JMX4GRUq9U_4core3str4iterINtB5_13SplitInternalNtB7_12IsWhitespaceE9next_backCsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.q) #51 ; 2 uses
  %i.du = extractvalue { ptr, i64 } %i.dt, 0      ; 2 uses
  %.not.i114 = icmp eq ptr %i.du, null
  br i1 %.not.i114, label %bb.x, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.dv = extractvalue { ptr, i64 } %i.dt, 1      ; 2 uses
  %.not.i.i115 = icmp eq i64 %i.dv, 0
  br i1 %.not.i.i115, label %bb.o, label %_RINvYINtNtNtCs6JMX4GRUq9U_4core3str4iter5SplitNtB8_12IsWhitespaceENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNvB12_5rfind5checkReQNtB8_10IsNotEmptyE0INtNtNtBa_3ops12control_flow11ControlFlowB2w_EECsl8pJiQOn4hA_9coreutils.exit117

bb.q:                                             ; preds = %_RINvYINtNtNtCs6JMX4GRUq9U_4core3str4iter5SplitNtB8_12IsWhitespaceENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNvB12_5rfind5checkReQNtB8_10IsNotEmptyE0INtNtNtBa_3ops12control_flow11ControlFlowB2w_EECsl8pJiQOn4hA_9coreutils.exit
  store i64 0, ptr %0, align 8
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs3JjgEOiFeOI_4jiff2tz8timezone8TimeZoneECsl8pJiQOn4hA_9coreutils.exit

_RINvYINtNtNtCs6JMX4GRUq9U_4core3str4iter5SplitNtB8_12IsWhitespaceENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNvB12_5rfind5checkReQNtB8_10IsNotEmptyE0INtNtNtBa_3ops12control_flow11ControlFlowB2w_EECsl8pJiQOn4hA_9coreutils.exit117: ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  %i.dw = tail call { i64, ptr } @_RNvCsiibOIv6tv3q_7uu_date23resolve_tz_abbreviation(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.du, i64 noundef %i.dv) #45 ; 2 uses
  %i.dx = extractvalue { i64, ptr } %i.dw, 0      ; 2 uses
  %i.dy = extractvalue { i64, ptr } %i.dw, 1      ; 3 uses
  %i.dz = icmp eq i64 %i.dx, 1
  %i.ea = icmp eq i64 %i.dx, 0
  br i1 %i.ea, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs3JjgEOiFeOI_4jiff2tz8timezone8TimeZoneEECsl8pJiQOn4hA_9coreutils.exit.thread, label %bb.r

bb.r:                                             ; preds = %_RINvYINtNtNtCs6JMX4GRUq9U_4core3str4iter5SplitNtB8_12IsWhitespaceENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNvB12_5rfind5checkReQNtB8_10IsNotEmptyE0INtNtNtBa_3ops12control_flow11ControlFlowB2w_EECsl8pJiQOn4hA_9coreutils.exit117
  %i.eb = ptrtoint ptr %i.dy to i64
  %i.ec = and i64 %i.eb, 7
  switch i64 %i.ec, label %bb.s [
    i64 1, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs3JjgEOiFeOI_4jiff2tz8timezone8TimeZoneEECsl8pJiQOn4hA_9coreutils.exit
    i64 2, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs3JjgEOiFeOI_4jiff2tz8timezone8TimeZoneEECsl8pJiQOn4hA_9coreutils.exit
    i64 3, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs3JjgEOiFeOI_4jiff2tz8timezone8TimeZoneEECsl8pJiQOn4hA_9coreutils.exit
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs3JjgEOiFeOI_4jiff2tz8timezone8TimeZoneEECsl8pJiQOn4hA_9coreutils.exit
    i64 4, label %bb.t
    i64 5, label %bb.v
  ]

bb.s:                                             ; preds = %bb.r
  unreachable

bb.t:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.ed = getelementptr i8, ptr %i.dy, i64 -20    ; 2 uses
  store ptr %i.ed, ptr %i.j, align 8
  %i.ee = atomicrmw add ptr %i.ed, i64 -1 release, align 8, !noalias !16224
  %i.ef = icmp eq i64 %i.ee, 1
  br i1 %i.ef, label %bb.u, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc4sync3ArcNtNtNtCscxuc9kp9KZq_9jiff_core2tz4tzif18MaybeNamedTimeZoneEECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i

bb.u:                                             ; preds = %bb.t
  fence acquire
  call void @_RNvMsn_NtCs7tKScEop1B6_5alloc4syncINtB5_3ArcNtNtNtCscxuc9kp9KZq_9jiff_core2tz4tzif18MaybeNamedTimeZoneE9drop_slowCs3JjgEOiFeOI_4jiff(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.j) #53
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc4sync3ArcNtNtNtCscxuc9kp9KZq_9jiff_core2tz4tzif18MaybeNamedTimeZoneEECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc4sync3ArcNtNtNtCscxuc9kp9KZq_9jiff_core2tz4tzif18MaybeNamedTimeZoneEECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i: ; preds = %bb.u, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs3JjgEOiFeOI_4jiff2tz8timezone8TimeZoneEECsl8pJiQOn4hA_9coreutils.exit

bb.v:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.eg = getelementptr i8, ptr %i.dy, i64 -21    ; 2 uses
  store ptr %i.eg, ptr %i.i, align 8
  %i.eh = atomicrmw add ptr %i.eg, i64 -1 release, align 8, !noalias !16225
  %i.ei = icmp eq i64 %i.eh, 1
  br i1 %i.ei, label %bb.w, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc4sync3ArcNtNtNtCscxuc9kp9KZq_9jiff_core2tz5posix8TimeZoneEECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i

bb.w:                                             ; preds = %bb.v
  fence acquire
  call void @_RNvMsn_NtCs7tKScEop1B6_5alloc4syncINtB5_3ArcNtNtNtCscxuc9kp9KZq_9jiff_core2tz5posix8TimeZoneE9drop_slowCs3JjgEOiFeOI_4jiff(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.i) #53
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc4sync3ArcNtNtNtCscxuc9kp9KZq_9jiff_core2tz5posix8TimeZoneEECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc4sync3ArcNtNtNtCscxuc9kp9KZq_9jiff_core2tz5posix8TimeZoneEECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i: ; preds = %bb.w, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs3JjgEOiFeOI_4jiff2tz8timezone8TimeZoneEECsl8pJiQOn4hA_9coreutils.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs3JjgEOiFeOI_4jiff2tz8timezone8TimeZoneEECsl8pJiQOn4hA_9coreutils.exit: ; preds = %bb.r, %bb.r, %bb.r, %bb.r, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc4sync3ArcNtNtNtCscxuc9kp9KZq_9jiff_core2tz4tzif18MaybeNamedTimeZoneEECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc4sync3ArcNtNtNtCscxuc9kp9KZq_9jiff_core2tz5posix8TimeZoneEECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i
  br i1 %i.dz, label %bb.ad, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs3JjgEOiFeOI_4jiff2tz8timezone8TimeZoneEECsl8pJiQOn4hA_9coreutils.exit.thread

bb.x:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs3JjgEOiFeOI_4jiff2tz8timezone8TimeZoneEECsl8pJiQOn4hA_9coreutils.exit.thread

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs3JjgEOiFeOI_4jiff2tz8timezone8TimeZoneEECsl8pJiQOn4hA_9coreutils.exit.thread: ; preds = %_RINvYINtNtNtCs6JMX4GRUq9U_4core3str4iter5SplitNtB8_12IsWhitespaceENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNvB12_5rfind5checkReQNtB8_10IsNotEmptyE0INtNtNtBa_3ops12control_flow11ControlFlowB2w_EECsl8pJiQOn4hA_9coreutils.exit117, %bb.x, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs3JjgEOiFeOI_4jiff2tz8timezone8TimeZoneEECsl8pJiQOn4hA_9coreutils.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.ej = load i64, ptr %3, align 8, !noundef !12
  %i.ek = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.el = load i32, ptr %i.ek, align 8, !noundef !12
  %i.em = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.en = getelementptr inbounds nuw i8, ptr %3, i64 36
  %i.eo = load i32, ptr %i.en, align 4, !noundef !12
  %i.ep = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.val104 = load ptr, ptr %i.ep, align 8, !noundef !12 ; 10 uses
  %i.eq = ptrtoint ptr %.val104 to i64            ; 2 uses
  %i.er = and i64 %i.eq, 7                        ; 2 uses
  switch i64 %i.er, label %bb.y [
    i64 1, label %_RNvXs2_NtNtNtCs3JjgEOiFeOI_4jiff2tz8timezone4reprNtB5_4ReprNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit
    i64 2, label %_RNvXs2_NtNtNtCs3JjgEOiFeOI_4jiff2tz8timezone4reprNtB5_4ReprNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit
    i64 3, label %_RNvXs2_NtNtNtCs3JjgEOiFeOI_4jiff2tz8timezone4reprNtB5_4ReprNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit
    i64 0, label %_RNvXs2_NtNtNtCs3JjgEOiFeOI_4jiff2tz8timezone4reprNtB5_4ReprNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit
    i64 4, label %bb.z
    i64 5, label %bb.ab
  ]

bb.y:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs3JjgEOiFeOI_4jiff2tz8timezone8TimeZoneEECsl8pJiQOn4hA_9coreutils.exit.thread
  unreachable

bb.z:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs3JjgEOiFeOI_4jiff2tz8timezone8TimeZoneEECsl8pJiQOn4hA_9coreutils.exit.thread
  %i.es = getelementptr i8, ptr %.val104, i64 -20
  %i.et = atomicrmw add ptr %i.es, i64 1 monotonic, align 8
  %i.eu = icmp slt i64 %i.et, 0
  br i1 %i.eu, label %bb.aa, label %_RNvXs2_NtNtNtCs3JjgEOiFeOI_4jiff2tz8timezone4reprNtB5_4ReprNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit

bb.aa:                                            ; preds = %bb.z
  call void @llvm.trap()
  unreachable

bb.ab:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs3JjgEOiFeOI_4jiff2tz8timezone8TimeZoneEECsl8pJiQOn4hA_9coreutils.exit.thread
  %i.ev = getelementptr i8, ptr %.val104, i64 -21
  %i.ew = atomicrmw add ptr %i.ev, i64 1 monotonic, align 8
  %i.ex = icmp slt i64 %i.ew, 0
  br i1 %i.ex, label %bb.ac, label %_RNvXs2_NtNtNtCs3JjgEOiFeOI_4jiff2tz8timezone4reprNtB5_4ReprNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.trap()
  unreachable

_RNvXs2_NtNtNtCs3JjgEOiFeOI_4jiff2tz8timezone4reprNtB5_4ReprNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs3JjgEOiFeOI_4jiff2tz8timezone8TimeZoneEECsl8pJiQOn4hA_9coreutils.exit.thread, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs3JjgEOiFeOI_4jiff2tz8timezone8TimeZoneEECsl8pJiQOn4hA_9coreutils.exit.thread, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs3JjgEOiFeOI_4jiff2tz8timezone8TimeZoneEECsl8pJiQOn4hA_9coreutils.exit.thread, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs3JjgEOiFeOI_4jiff2tz8timezone8TimeZoneEECsl8pJiQOn4hA_9coreutils.exit.thread, %bb.z, %bb.ab
  %.sroa.665.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.665.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(12) %i.em, i64 12, i1 false)
  store i64 %i.ej, ptr %i.o, align 8
  %.sroa.462.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i32 %i.el, ptr %.sroa.462.0..sroa_idx, align 8
  %.sroa.564.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store ptr %.val104, ptr %.sroa.564.0..sroa_idx, align 8
  %.sroa.766.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 36
  store i32 %i.eo, ptr %.sroa.766.0..sroa_idx, align 4
  call fastcc void @_RINvCs65h624QUiyW_14parse_datetime22parse_datetime_at_dateReECsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef align 8 captures(none) dereferenceable(48) %i.p, ptr noalias nofree noundef align 8 captures(address) dereferenceable(40) %i.o, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.dq, i64 noundef %i.dr) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  %i.ey = load i32, ptr %i.p, align 8, !range !42, !noundef !12 ; 2 uses
  %i.ez = icmp eq i32 %i.ey, 2
  br i1 %i.ez, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtCs65h624QUiyW_14parse_datetime14ParsedDateTimeNtBZ_18ParseDateTimeErrorEECsl8pJiQOn4hA_9coreutils.exit129, label %bb.ae

bb.ad:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs3JjgEOiFeOI_4jiff2tz8timezone8TimeZoneEECsl8pJiQOn4hA_9coreutils.exit
  store i64 0, ptr %0, align 8
  br label %bb.bi

bb.ae:                                            ; preds = %_RNvXs2_NtNtNtCs3JjgEOiFeOI_4jiff2tz8timezone4reprNtB5_4ReprNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit
  %.sroa.474.sroa.4.0..sroa.474.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %.sroa.474.sroa.4.0.copyload = load ptr, ptr %.sroa.474.sroa.4.0..sroa.474.0..sroa_idx.sroa_idx, align 8 ; 6 uses
  %.sroa.474.sroa.5.0..sroa.474.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.2.sroa.3, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.474.sroa.5.0..sroa.474.0..sroa_idx.sroa_idx, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.fa = trunc nuw i32 %i.ey to i1
  br i1 %i.fa, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  store i64 0, ptr %0, align 8
end_hunk_0
