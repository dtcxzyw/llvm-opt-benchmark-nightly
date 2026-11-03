Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/tracing_subscriber-b028a260e510e734.tracing_subscriber.d73552fd6ec86dd1-cgu.1?download=true
inline.NumInlined: 183
inline.NumDeleted: 123
begin_hunk_0_@_RINvMNtCshzWfHUSfYae_4core3stre16trim_end_matchesReECsity1gTxgZvF_18tracing_subscriber:bb.a
  %i.al = phi i64 [ %i.ag, %.lr.ph.i.i.us.i ], [ %i.bj, %bb.j ] ; 4 uses
  %i.am = phi i64 [ %i.ag, %.lr.ph.i.i.us.i ], [ %i.bk, %bb.j ] ; 5 uses
  %i.an = phi i64 [ %i.ah, %.lr.ph.i.i.us.i ], [ %i.bm, %bb.j ] ; 7 uses
  %.not.i16.i.us.i = icmp eq i64 %.lcssa5666, %i.ak
  br i1 %.not.i16.i.us.i, label %bb.d, label %_RNvYNtNtNtCshzWfHUSfYae_4core3str7pattern11StrSearcherNtB4_15ReverseSearcher16next_reject_backCsity1gTxgZvF_18tracing_subscriber.exit

bb.d:                                             ; preds = %bb.c
  %i.ao = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.an
  %i.ap = load i8, ptr %i.ao, align 1, !alias.scope !32, !noalias !34, !noundef !5
  %i.aq = and i8 %i.ap, 63
  %i.ar = zext nneg i8 %i.aq to i64
  %i.as = shl nuw i64 1, %i.ar
  %i.at = and i64 %i.as, %i.ab
  %.not19.i.i.us.i = icmp eq i64 %i.at, 0
  br i1 %.not19.i.i.us.i, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %..i.i.i.us.i = tail call i64 @llvm.umin.i64(i64 %i.am, i64 %i.e)
  %.sroa.03.0.i.i.us.i = select i1 %i.v, i64 %i.e, i64 %..i.i.i.us.i
  %.sroa.03.0.i.fr.i.us.i = freeze i64 %.sroa.03.0.i.i.us.i ; 3 uses
  %i.au = add i64 %.sroa.03.0.i.fr.i.us.i, -1     ; 2 uses
  %.first_iter.i.i.us.i = icmp ult i64 %i.au, %i.z
  %.not20.i.us.i.us.i209 = icmp eq i64 %.sroa.03.0.i.fr.i.us.i, 0 ; 2 uses
  br i1 %.first_iter.i.i.us.i, label %.split39.us.i.us.i.preheader, label %.split39.i.us.i

.split39.us.i.us.i.preheader:                     ; preds = %bb.e
  br i1 %.not20.i.us.i.us.i209, label %.split41.us.i.us.i, label %.lr.ph

.split39.i.us.i:                                  ; preds = %bb.e
  br i1 %.not20.i.us.i.us.i209, label %.split41.us.i.us.i, label %.split80.us.i

.split39.us.i.us.i:                               ; preds = %.lr.ph
  %.not20.i.us.i.us.i = icmp eq i64 %i.av, 0
  br i1 %.not20.i.us.i.us.i, label %.split41.us.i.us.i, label %.lr.ph

.lr.ph:                                           ; preds = %.split39.us.i.us.i.preheader, %.split39.us.i.us.i
  %.sroa.2.0.i.us.i.us.i210 = phi i64 [ %i.av, %.split39.us.i.us.i ], [ %.sroa.03.0.i.fr.i.us.i, %.split39.us.i.us.i.preheader ]
  %i.av = add i64 %.sroa.2.0.i.us.i.us.i210, -1   ; 5 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.av
  %i.ax = load i8, ptr %i.aw, align 1, !alias.scope !33, !noalias !34, !noundef !5
  %i.ay = add i64 %i.av, %i.an                    ; 2 uses
  %i.az = icmp ult i64 %i.ay, %i.i
  tail call void @llvm.assume(i1 %i.az)
  %i.ba = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.ay
  %i.bb = load i8, ptr %i.ba, align 1, !alias.scope !32, !noalias !34, !noundef !5
  %.not22.i.us.i.us.i = icmp eq i8 %i.ax, %i.bb
  br i1 %.not22.i.us.i.us.i, label %.split39.us.i.us.i, label %.split43.us.i.us.i

.split43.us.i.us.i:                               ; preds = %.lr.ph
  %.reass.i.i.us.i = add i64 %i.av, %invariant.op.i.i.us.i ; 2 uses
  br i1 %i.v, label %bb.j, label %.sink.split.i.i.us.i

.split41.us.i.us.i:                               ; preds = %.split39.us.i.us.i, %.split39.us.i.us.i.preheader, %.split39.i.us.i
  %.sroa.08.0.i.i.us.i = select i1 %i.v, i64 %i.z, i64 %i.am ; 2 uses
  %umax.i.i.us.i = tail call i64 @llvm.umax.i64(i64 %.sroa.08.0.i.i.us.i, i64 %i.e)
  %exitcond.not.i.i.us.i211.not = icmp ult i64 %i.e, %.sroa.08.0.i.i.us.i
  br i1 %exitcond.not.i.i.us.i211.not, label %.lr.ph213, label %.split41.us.i.us.i._crit_edge

bb.f:                                             ; preds = %bb.g
  %i.bc = add nuw i64 %.sroa.09.0.i.i.us.i212, 1  ; 2 uses
  %exitcond.not.i.i.us.i = icmp eq i64 %i.bc, %umax.i.i.us.i
  br i1 %exitcond.not.i.i.us.i, label %.split41.us.i.us.i._crit_edge, label %.lr.ph213

.lr.ph213:                                        ; preds = %.split41.us.i.us.i, %bb.f
  %.sroa.09.0.i.i.us.i212 = phi i64 [ %i.bc, %bb.f ], [ %i.e, %.split41.us.i.us.i ] ; 4 uses
  %exitcond54.not.i.i.us.i = icmp eq i64 %.sroa.09.0.i.i.us.i212, %umax53.i.i.i
  br i1 %exitcond54.not.i.i.us.i, label %.split84.us.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph213
  %i.bd = getelementptr inbounds nuw i8, ptr %i.x, i64 %.sroa.09.0.i.i.us.i212
  %i.be = load i8, ptr %i.bd, align 1, !alias.scope !33, !noalias !34, !noundef !5
  %i.bf = add i64 %.sroa.09.0.i.i.us.i212, %i.an  ; 2 uses
  %i.bg = icmp ult i64 %i.bf, %i.i
  tail call void @llvm.assume(i1 %i.bg)
  %i.bh = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.bf
  %i.bi = load i8, ptr %i.bh, align 1, !alias.scope !32, !noalias !34, !noundef !5
  %.not21.i.i.us.i = icmp eq i8 %i.be, %i.bi
  br i1 %.not21.i.i.us.i, label %bb.f, label %bb.h

bb.h:                                             ; preds = %bb.g
  br i1 %i.v, label %bb.j, label %.sink.split.i.i.us.i

bb.i:                                             ; preds = %bb.d
  br i1 %i.v, label %bb.j, label %.sink.split.i.i.us.i

.sink.split.i.i.us.i:                             ; preds = %bb.i, %bb.h, %.split43.us.i.us.i
  %.sink75.i.i.us.i = phi i64 [ %i.af, %bb.h ], [ %i.z, %.split43.us.i.us.i ], [ %i.z, %bb.i ] ; 3 uses
  %.ph74.i.i.us.i = phi i64 [ %i.aj, %bb.h ], [ %.reass.i.i.us.i, %.split43.us.i.us.i ], [ %i.an, %bb.i ]
  br label %bb.j

bb.j:                                             ; preds = %.sink.split.i.i.us.i, %bb.i, %bb.h, %.split43.us.i.us.i
  %.sink75.i.i.us.i60 = phi i64 [ %.sink75.i.i.us.i61, %.split43.us.i.us.i ], [ %.sink75.i.i.us.i61, %bb.i ], [ %.sink75.i.i.us.i61, %bb.h ], [ %.sink75.i.i.us.i, %.sink.split.i.i.us.i ]
  %i.bj = phi i64 [ %i.al, %.split43.us.i.us.i ], [ %i.al, %bb.i ], [ %i.al, %bb.h ], [ %.sink75.i.i.us.i, %.sink.split.i.i.us.i ]
  %i.bk = phi i64 [ %i.am, %.split43.us.i.us.i ], [ %i.am, %bb.i ], [ %i.am, %bb.h ], [ %.sink75.i.i.us.i, %.sink.split.i.i.us.i ]
  %i.bl = phi i64 [ %.reass.i.i.us.i, %.split43.us.i.us.i ], [ %i.an, %bb.i ], [ %i.aj, %bb.h ], [ %.ph74.i.i.us.i, %.sink.split.i.i.us.i ] ; 2 uses
  %i.bm = sub i64 %i.bl, %i.z                     ; 2 uses
  %i.bn = icmp ult i64 %i.bm, %i.i
  br i1 %i.bn, label %bb.c, label %_RNvYNtNtNtCshzWfHUSfYae_4core3str7pattern11StrSearcherNtB4_15ReverseSearcher16next_reject_backCsity1gTxgZvF_18tracing_subscriber.exit

.split41.us.i.us.i._crit_edge:                    ; preds = %.split41.us.i.us.i, %bb.f
  %spec.select = select i1 %i.v, i64 %.sink75.i.i.us.i61, i64 %i.z
  %spec.select77 = select i1 %i.v, i64 %i.al, i64 %i.z
  %i.bo = icmp eq i64 %i.an, 0
  br i1 %i.bo, label %_RNvYNtNtNtCshzWfHUSfYae_4core3str7pattern11StrSearcherNtB4_15ReverseSearcher16next_reject_backCsity1gTxgZvF_18tracing_subscriber.exit, label %bb.b

.split.i:                                         ; preds = %bb.a
  %i.bp = getelementptr inbounds nuw i8, ptr %i.a, i64 25
  %i.bq = getelementptr inbounds nuw i8, ptr %i.a, i64 26
  %i.br = load i8, ptr %i.bq, align 2, !range !6, !alias.scope !29
  %i.bs = trunc nuw i8 %i.br to i1
  %.promoted89.i = load i8, ptr %i.bp, align 1, !alias.scope !29 ; 9 uses
  br i1 %i.bs, label %_RNvYNtNtNtCshzWfHUSfYae_4core3str7pattern11StrSearcherNtB4_15ReverseSearcher16next_reject_backCsity1gTxgZvF_18tracing_subscriber.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.split.i
  br i1 %i.j, label %.lr.ph.split.us.split.i, label %.lr.ph.split.split.i.preheader

.lr.ph.split.split.i.preheader:                   ; preds = %.lr.ph.i
  br i1 %.not.i.i.i, label %.lr.ph.split.split.i.preheader.split.us, label %.lr.ph.split.split.i.preheader.split

.lr.ph.split.split.i.preheader.split.us:          ; preds = %.lr.ph.split.split.i.preheader
  %i.bt = load i8, ptr %i.l, align 1, !alias.scope !35, !noalias !34, !noundef !5
  %i.bu = icmp sgt i8 %i.bt, -65
  br i1 %i.bu, label %.lr.ph.split.split.i.preheader.split.us.split.us, label %.split97.us.i

.lr.ph.split.split.i.preheader.split.us.split.us: ; preds = %.lr.ph.split.split.i.preheader.split.us
  %i.bv = load i8, ptr %i.m, align 1, !noalias !36, !noundef !5
  %i.bw = icmp sgt i8 %i.bv, -1
  br i1 %i.bw, label %.lr.ph.split.split.i.us.us.us.preheader, label %.lr.ph.split.split.i.preheader.split.us.split.us.split

.lr.ph.split.split.i.us.us.us.preheader:          ; preds = %.lr.ph.split.split.i.preheader.split.us.split.us
  %i.bx = trunc nuw i8 %.promoted89.i to i1
  br i1 %i.bx, label %_RNvYNtNtNtCshzWfHUSfYae_4core3str7pattern11StrSearcherNtB4_15ReverseSearcher16next_reject_backCsity1gTxgZvF_18tracing_subscriber.exit.sink.split, label %_RNvYNtNtNtCshzWfHUSfYae_4core3str7pattern11StrSearcherNtB4_15ReverseSearcher16next_reject_backCsity1gTxgZvF_18tracing_subscriber.exit

.lr.ph.split.split.i.preheader.split.us.split.us.split: ; preds = %.lr.ph.split.split.i.preheader.split.us.split.us
  tail call void @llvm.assume(i1 %i.n)
  %i.by = load i8, ptr %i.o, align 1, !noalias !36, !noundef !5
  %i.bz = icmp slt i8 %i.by, -64
  br i1 %i.bz, label %.lr.ph.split.split.i.preheader.split.us.split.us.split.split.us, label %.lr.ph.split.split.i.preheader.split.us.split.us.split.split

.lr.ph.split.split.i.preheader.split.us.split.us.split.split.us: ; preds = %.lr.ph.split.split.i.preheader.split.us.split.us.split
  tail call void @llvm.assume(i1 %i.p)
  %i.ca = load i8, ptr %i.q, align 1, !noalias !36, !noundef !5
  %i.cb = icmp slt i8 %i.ca, -64
  br i1 %i.cb, label %.lr.ph.split.split.i.preheader.split.us.split.us.split.split.us.split.us, label %.lr.ph.split.split.i.preheader.split.us.split.us.split.split.us.split

.lr.ph.split.split.i.preheader.split.us.split.us.split.split.us.split.us: ; preds = %.lr.ph.split.split.i.preheader.split.us.split.us.split.split.us
  tail call void @llvm.assume(i1 %i.r)
  %i.cc = trunc nuw i8 %.promoted89.i to i1
  br i1 %i.cc, label %_RNvYNtNtNtCshzWfHUSfYae_4core3str7pattern11StrSearcherNtB4_15ReverseSearcher16next_reject_backCsity1gTxgZvF_18tracing_subscriber.exit.sink.split, label %_RNvYNtNtNtCshzWfHUSfYae_4core3str7pattern11StrSearcherNtB4_15ReverseSearcher16next_reject_backCsity1gTxgZvF_18tracing_subscriber.exit

.lr.ph.split.split.i.preheader.split.us.split.us.split.split.us.split: ; preds = %.lr.ph.split.split.i.preheader.split.us.split.us.split.split.us
  %i.cd = trunc nuw i8 %.promoted89.i to i1
  br i1 %i.cd, label %_RNvYNtNtNtCshzWfHUSfYae_4core3str7pattern11StrSearcherNtB4_15ReverseSearcher16next_reject_backCsity1gTxgZvF_18tracing_subscriber.exit.sink.split, label %_RNvYNtNtNtCshzWfHUSfYae_4core3str7pattern11StrSearcherNtB4_15ReverseSearcher16next_reject_backCsity1gTxgZvF_18tracing_subscriber.exit

.lr.ph.split.split.i.preheader.split.us.split.us.split.split: ; preds = %.lr.ph.split.split.i.preheader.split.us.split.us.split
  %i.ce = trunc nuw i8 %.promoted89.i to i1
  br i1 %i.ce, label %_RNvYNtNtNtCshzWfHUSfYae_4core3str7pattern11StrSearcherNtB4_15ReverseSearcher16next_reject_backCsity1gTxgZvF_18tracing_subscriber.exit.sink.split, label %_RNvYNtNtNtCshzWfHUSfYae_4core3str7pattern11StrSearcherNtB4_15ReverseSearcher16next_reject_backCsity1gTxgZvF_18tracing_subscriber.exit

.lr.ph.split.split.i.preheader.split:             ; preds = %.lr.ph.split.split.i.preheader
  br i1 %i.k, label %.lr.ph.split.split.i.preheader.split.split.us, label %.split97.us.i

.lr.ph.split.split.i.preheader.split.split.us:    ; preds = %.lr.ph.split.split.i.preheader.split
  %i.cf = load i8, ptr %i.m, align 1, !noalias !36, !noundef !5
  %i.cg = icmp sgt i8 %i.cf, -1
  br i1 %i.cg, label %.lr.ph.split.split.i.us34.us.preheader, label %.lr.ph.split.split.i.preheader.split.split.us.split

.lr.ph.split.split.i.us34.us.preheader:           ; preds = %.lr.ph.split.split.i.preheader.split.split.us
  %i.ch = trunc nuw i8 %.promoted89.i to i1
  br i1 %i.ch, label %_RNvYNtNtNtCshzWfHUSfYae_4core3str7pattern11StrSearcherNtB4_15ReverseSearcher16next_reject_backCsity1gTxgZvF_18tracing_subscriber.exit.sink.split, label %_RNvYNtNtNtCshzWfHUSfYae_4core3str7pattern11StrSearcherNtB4_15ReverseSearcher16next_reject_backCsity1gTxgZvF_18tracing_subscriber.exit

.lr.ph.split.split.i.preheader.split.split.us.split: ; preds = %.lr.ph.split.split.i.preheader.split.split.us
  tail call void @llvm.assume(i1 %i.n)
  %i.ci = load i8, ptr %i.o, align 1, !noalias !36, !noundef !5
  %i.cj = icmp slt i8 %i.ci, -64
  br i1 %i.cj, label %.lr.ph.split.split.i.preheader.split.split.us.split.split.us, label %.lr.ph.split.split.i.preheader.split.split.us.split.split

.lr.ph.split.split.i.preheader.split.split.us.split.split.us: ; preds = %.lr.ph.split.split.i.preheader.split.split.us.split
  tail call void @llvm.assume(i1 %i.p)
  %i.ck = load i8, ptr %i.q, align 1, !noalias !36, !noundef !5
  %i.cl = icmp slt i8 %i.ck, -64
  br i1 %i.cl, label %.lr.ph.split.split.i.preheader.split.split.us.split.split.us.split.us, label %.lr.ph.split.split.i.preheader.split.split.us.split.split.us.split

.lr.ph.split.split.i.preheader.split.split.us.split.split.us.split.us: ; preds = %.lr.ph.split.split.i.preheader.split.split.us.split.split.us
  tail call void @llvm.assume(i1 %i.r)
  %i.cm = trunc nuw i8 %.promoted89.i to i1
  br i1 %i.cm, label %_RNvYNtNtNtCshzWfHUSfYae_4core3str7pattern11StrSearcherNtB4_15ReverseSearcher16next_reject_backCsity1gTxgZvF_18tracing_subscriber.exit.sink.split, label %_RNvYNtNtNtCshzWfHUSfYae_4core3str7pattern11StrSearcherNtB4_15ReverseSearcher16next_reject_backCsity1gTxgZvF_18tracing_subscriber.exit

.lr.ph.split.split.i.preheader.split.split.us.split.split.us.split: ; preds = %.lr.ph.split.split.i.preheader.split.split.us.split.split.us
  %i.cn = trunc nuw i8 %.promoted89.i to i1
  br i1 %i.cn, label %_RNvYNtNtNtCshzWfHUSfYae_4core3str7pattern11StrSearcherNtB4_15ReverseSearcher16next_reject_backCsity1gTxgZvF_18tracing_subscriber.exit.sink.split, label %_RNvYNtNtNtCshzWfHUSfYae_4core3str7pattern11StrSearcherNtB4_15ReverseSearcher16next_reject_backCsity1gTxgZvF_18tracing_subscriber.exit

.lr.ph.split.split.i.preheader.split.split.us.split.split: ; preds = %.lr.ph.split.split.i.preheader.split.split.us.split
  %i.co = trunc nuw i8 %.promoted89.i to i1
  br i1 %i.co, label %_RNvYNtNtNtCshzWfHUSfYae_4core3str7pattern11StrSearcherNtB4_15ReverseSearcher16next_reject_backCsity1gTxgZvF_18tracing_subscriber.exit.sink.split, label %_RNvYNtNtNtCshzWfHUSfYae_4core3str7pattern11StrSearcherNtB4_15ReverseSearcher16next_reject_backCsity1gTxgZvF_18tracing_subscriber.exit

.lr.ph.split.us.split.i:                          ; preds = %.lr.ph.i
  %i.cp = trunc nuw i8 %.promoted89.i to i1
  br i1 %i.cp, label %_RNvYNtNtNtCshzWfHUSfYae_4core3str7pattern11StrSearcherNtB4_15ReverseSearcher16next_reject_backCsity1gTxgZvF_18tracing_subscriber.exit.sink.split, label %_RNvYNtNtNtCshzWfHUSfYae_4core3str7pattern11StrSearcherNtB4_15ReverseSearcher16next_reject_backCsity1gTxgZvF_18tracing_subscriber.exit

.split97.us.i:                                    ; preds = %.lr.ph.split.split.i.preheader.split, %.lr.ph.split.split.i.preheader.split.us
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31)
  tail call void @_RNvNtCshzWfHUSfYae_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.g, i64 noundef %i.i, i64 noundef 0, i64 noundef %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #14, !noalias !34
  unreachable

.split80.us.i:                                    ; preds = %.split39.i.us.i
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %i.au, i64 noundef range(i64 0, -9223372036854775808) %i.z, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #14, !noalias !37
  unreachable

.split84.us.i:                                    ; preds = %.lr.ph213
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %umax53.i.i.i, i64 noundef range(i64 0, -9223372036854775808) %i.z, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #14, !noalias !37
  unreachable

_RNvYNtNtNtCshzWfHUSfYae_4core3str7pattern11StrSearcherNtB4_15ReverseSearcher16next_reject_backCsity1gTxgZvF_18tracing_subscriber.exit.sink.split: ; preds = %.lr.ph.split.split.i.us.us.us.preheader, %.lr.ph.split.split.i.us34.us.preheader, %.lr.ph.split.split.i.preheader.split.us.split.us.split.split.us.split.us, %.lr.ph.split.split.i.preheader.split.us.split.us.split.split.us.split, %.lr.ph.split.split.i.preheader.split.us.split.us.split.split, %.lr.ph.split.split.i.preheader.split.split.us.split.split.us.split.us, %.lr.ph.split.split.i.preheader.split.split.us.split.split.us.split, %.lr.ph.split.split.i.preheader.split.split.us.split.split, %.lr.ph.split.us.split.i
  %.sroa.0.0.ph = phi i64 [ 0, %.lr.ph.split.us.split.i ], [ %i.e, %.lr.ph.split.split.i.preheader.split.us.split.us.split.split.us.split.us ], [ %i.e, %.lr.ph.split.split.i.preheader.split.split.us.split.split ], [ %i.e, %.lr.ph.split.split.i.preheader.split.split.us.split.split.us.split ], [ %i.e, %.lr.ph.split.split.i.preheader.split.split.us.split.split.us.split.us ], [ %i.e, %.lr.ph.split.split.i.preheader.split.us.split.us.split.split ], [ %i.e, %.lr.ph.split.split.i.preheader.split.us.split.us.split.split.us.split ], [ %i.e, %.lr.ph.split.split.i.us34.us.preheader ], [ %i.e, %.lr.ph.split.split.i.us.us.us.preheader ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31)
  br label %_RNvYNtNtNtCshzWfHUSfYae_4core3str7pattern11StrSearcherNtB4_15ReverseSearcher16next_reject_backCsity1gTxgZvF_18tracing_subscriber.exit

_RNvYNtNtNtCshzWfHUSfYae_4core3str7pattern11StrSearcherNtB4_15ReverseSearcher16next_reject_backCsity1gTxgZvF_18tracing_subscriber.exit: ; preds = %.split41.us.i.us.i._crit_edge, %bb.b, %bb.c, %bb.j, %_RNvYNtNtNtCshzWfHUSfYae_4core3str7pattern11StrSearcherNtB4_15ReverseSearcher16next_reject_backCsity1gTxgZvF_18tracing_subscriber.exit.sink.split, %.lr.ph.split.split.i.preheader.split.split.us.split.split, %.lr.ph.split.split.i.preheader.split.split.us.split.split.us.split, %.lr.ph.split.split.i.preheader.split.split.us.split.split.us.split.us, %.lr.ph.split.split.i.preheader.split.us.split.us.split.split, %.lr.ph.split.split.i.preheader.split.us.split.us.split.split.us.split, %.lr.ph.split.split.i.preheader.split.us.split.us.split.split.us.split.us, %.lr.ph.split.split.i.us34.us.preheader, %.lr.ph.split.split.i.us.us.us.preheader, %.lr.ph.split.us.split.i, %.split.us.i, %.split.i
  %.sroa.0.0 = phi i64 [ %i.e, %.lr.ph.split.split.i.us34.us.preheader ], [ 0, %.lr.ph.split.us.split.i ], [ 0, %.split.us.i ], [ %i.e, %.lr.ph.split.split.i.preheader.split.us.split.us.split.split.us.split ], [ 0, %.split.i ], [ %i.e, %.lr.ph.split.split.i.preheader.split.split.us.split.split.us.split.us ], [ %i.e, %.lr.ph.split.split.i.us.us.us.preheader ], [ %i.e, %.lr.ph.split.split.i.preheader.split.us.split.us.split.split.us.split.us ], [ %i.e, %.lr.ph.split.split.i.preheader.split.split.us.split.split.us.split ], [ %i.e, %.lr.ph.split.split.i.preheader.split.split.us.split.split ], [ %.lcssa5666, %bb.c ], [ %i.e, %.lr.ph.split.split.i.preheader.split.us.split.us.split.split ], [ %.sroa.0.0.ph, %_RNvYNtNtNtCshzWfHUSfYae_4core3str7pattern11StrSearcherNtB4_15ReverseSearcher16next_reject_backCsity1gTxgZvF_18tracing_subscriber.exit.sink.split ], [ %.lcssa5666, %bb.j ], [ %.lcssa5666, %bb.b ], [ 0, %.split41.us.i.us.i._crit_edge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.cq = insertvalue { ptr, i64 } poison, ptr %0, 0
  %i.cr = insertvalue { ptr, i64 } %i.cq, i64 %.sroa.0.0, 1
  ret { ptr, i64 } %i.cr
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB6_3VecNtNtB8_6string6StringE16extend_desugaredINtNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map9FilterMapINtNtNtB1t_3str4iter5SplitcENCNvXsb_NtNtCsity1gTxgZvF_18tracing_subscriber6filter9directiveNtB2W_15StaticDirectiveNtNtB2r_6traits7FromStr8from_strs_0EEB30_(ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(72) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 10 uses
  %i.b = alloca [8 x i8], align 8                 ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 65 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !76)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !77)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !78)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !79
  store ptr %i.d, ptr %i.b, align 8, !noalias !80
  %.promoted.i.i.i10 = load i8, ptr %i.e, align 1, !alias.scope !81
  %i.f = trunc nuw i8 %.promoted.i.i.i10 to i1
  br i1 %i.f, label %.loopexit, label %.lr.ph.i.i.i.lr.ph

.lr.ph.i.i.i.lr.ph:                               ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.phi.trans.insert.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.lr.ph, %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsity1gTxgZvF_18tracing_subscriber.exit
  %.promoted20.i.i.i12 = load i64, ptr %1, align 8 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !82)
  call void @llvm.experimental.noalias.scope.decl(metadata !83)
  call void @llvm.experimental.noalias.scope.decl(metadata !84)
  %.val.i.i.i.i.i = load ptr, ptr %i.g, align 8, !alias.scope !85, !nonnull !5, !noundef !5 ; 4 uses
  %.val1.i.i.i.i.i = load i64, ptr %i.h, align 8, !alias.scope !85, !noundef !5 ; 2 uses
  %i.p = load i64, ptr %i.j, align 8, !alias.scope !86, !noundef !5 ; 6 uses
  %.not.i.i.i.i.i.i = icmp ugt i64 %i.p, %.val1.i.i.i.i.i
  %i.q = load i8, ptr %i.l, align 8, !alias.scope !87 ; 2 uses
  %i.r = zext nneg i8 %i.q to i64                 ; 4 uses
  %i.s = icmp ult i8 %i.q, 5
  %i.t = getelementptr i8, ptr %i.k, i64 %i.r
  %i.u = getelementptr i8, ptr %i.t, i64 -1
  %i.v = load i8, ptr %i.m, align 8, !range !6, !alias.scope !87
  %i.w = trunc nuw i8 %i.v to i1                  ; 2 uses
  %.pre2.i.i.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i.i.i, align 8, !alias.scope !87 ; 4 uses
  br i1 %.not.i.i.i.i.i.i, label %.lr.ph.split.us.i.i.i, label %.lr.ph.split.preheader.i.i.i

.lr.ph.split.preheader.i.i.i:                     ; preds = %.lr.ph.i.i.i
  %.promoted24.i.i.i = load i64, ptr %i.i, align 8, !alias.scope !86
  br label %.lr.ph.split.i.i.i

.lr.ph.split.us.i.i.i:                            ; preds = %.lr.ph.i.i.i
  store i8 1, ptr %i.e, align 1, !alias.scope !88
  %.not.i3.i.i.us.i.i.i = icmp ne i64 %.pre2.i.i.i.i.i.i, %.promoted20.i.i.i12
  %or.cond.not.i.i.i.us.i.i.i = select i1 %i.w, i1 true, i1 %.not.i3.i.i.us.i.i.i
  br i1 %or.cond.not.i.i.i.us.i.i.i, label %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCsity1gTxgZvF_18tracing_subscriber.exit.i.i.us.us.i.i.i, label %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCsity1gTxgZvF_18tracing_subscriber.exit.i.i.us.i.i.i

_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCsity1gTxgZvF_18tracing_subscriber.exit.i.i.us.us.i.i.i: ; preds = %.lr.ph.split.us.i.i.i
  %.sroa.0.1.i.i.us.i.i.i = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 %.promoted20.i.i.i12
  %i.x = sub nuw i64 %.pre2.i.i.i.i.i.i, %.promoted20.i.i.i12
  call void @llvm.experimental.noalias.scope.decl(metadata !89)
  call void @llvm.experimental.noalias.scope.decl(metadata !90)
  call void @llvm.experimental.noalias.scope.decl(metadata !91)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !92
  call void @_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCNvXsb_NtNtCsity1gTxgZvF_18tracing_subscriber6filter9directiveNtBW_15StaticDirectiveNtNtNtBb_3str6traits7FromStr8from_strs_0INtB7_5FnMutTReEE8call_mutB10_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.1.i.i.us.i.i.i, i64 noundef %i.x), !noalias !93
  %i.y = load i64, ptr %i.a, align 8, !range !7, !noalias !92, !noundef !5 ; 2 uses
  %.not.i.us.us.i.i.i = icmp eq i64 %i.y, -1
  br i1 %.not.i.us.us.i.i.i, label %._crit_edge.split.us.split.us.i.i.i, label %.loopexit5

._crit_edge.split.us.split.us.i.i.i:              ; preds = %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCsity1gTxgZvF_18tracing_subscriber.exit.i.i.us.us.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !92
  br label %.loopexit

_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCsity1gTxgZvF_18tracing_subscriber.exit.i.i.us.i.i.i: ; preds = %.lr.ph.split.us.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !89)
  call void @llvm.experimental.noalias.scope.decl(metadata !90)
  call void @llvm.experimental.noalias.scope.decl(metadata !91)
  br label %.loopexit

.lr.ph.split.i.i.i:                               ; preds = %bb.g, %.lr.ph.split.preheader.i.i.i
  %i.z = phi i64 [ %i.aw, %bb.g ], [ %.promoted24.i.i.i, %.lr.ph.split.preheader.i.i.i ] ; 3 uses
  %.lcssa172223.i.i.i = phi i64 [ %.lcssa1721.i.i.i, %bb.g ], [ %.promoted20.i.i.i12, %.lr.ph.split.preheader.i.i.i ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !89)
  call void @llvm.experimental.noalias.scope.decl(metadata !90)
  call void @llvm.experimental.noalias.scope.decl(metadata !91)
  %i.aa = icmp ult i64 %i.p, %i.z
  br i1 %i.aa, label %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCsity1gTxgZvF_18tracing_subscriber.exit.i.i.i.i.i, label %.lr.ph.split.preheader.i.i.i.i.i.i

.lr.ph.split.preheader.i.i.i.i.i.i:               ; preds = %.lr.ph.split.i.i.i
  call void @llvm.assume(i1 %i.s)
  %.pre.i.i.i.i.i.i = load i8, ptr %i.u, align 1, !alias.scope !86 ; 2 uses
  br label %.lr.ph.split.i.i.i.i.i.i

.lr.ph.split.i.i.i.i.i.i:                         ; preds = %bb.e, %.lr.ph.split.preheader.i.i.i.i.i.i
  %i.ab = phi i64 [ %i.aq, %bb.e ], [ %i.z, %.lr.ph.split.preheader.i.i.i.i.i.i ] ; 3 uses
  %i.ac = sub nuw i64 %i.p, %i.ab                 ; 5 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 %i.ab ; 2 uses
  %i.ae = icmp samesign ult i64 %i.ac, 16
  br i1 %i.ae, label %.preheader.i.i.i.i.i.i.i, label %bb.b

.preheader.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.split.i.i.i.i.i.i
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.ac, 0
  br i1 %.not.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

bb.b:                                             ; preds = %.lr.ph.split.i.i.i.i.i.i
  %i.af = call { i64, i64 } @_RNvNtNtCshzWfHUSfYae_4core5slice6memchr14memchr_aligned(i8 noundef %.pre.i.i.i.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ad, i64 noundef range(i64 0, -9223372036854775808) %i.ac), !noalias !94
  br label %_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr.exit.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %bb.c, %.lr.ph.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i
  %.sroa.01.0.lcssa.i.i.i.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i ], [ %i.ac, %bb.c ], [ %.sroa.01.05.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ]
  %.sroa.0.1.i.i.i.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i ], [ 0, %bb.c ], [ 1, %.lr.ph.i.i.i.i.i.i.i ]
  %i.ag = insertvalue { i64, i64 } poison, i64 %.sroa.0.1.i.i.i.i.i.i.i, 0
  %i.ah = insertvalue { i64, i64 } %i.ag, i64 %.sroa.01.0.lcssa.i.i.i.i.i.i.i, 1
  br label %_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr.exit.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.preheader.i.i.i.i.i.i.i, %bb.c
  %.sroa.01.05.i.i.i.i.i.i.i = phi i64 [ %i.al, %bb.c ], [ 0, %.preheader.i.i.i.i.i.i.i ] ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 %.sroa.01.05.i.i.i.i.i.i.i
  %i.aj = load i8, ptr %i.ai, align 1, !alias.scope !95, !noalias !94, !noundef !5
  %i.ak = icmp eq i8 %i.aj, %.pre.i.i.i.i.i.i
  br i1 %i.ak, label %._crit_edge.i.i.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.al = add nuw nsw i64 %.sroa.01.05.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i = icmp eq i64 %i.al, %i.ac
  br i1 %exitcond.not.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr.exit.i.i.i.i.i.i: ; preds = %._crit_edge.i.i.i.i.i.i.i, %bb.b
  %.merged.i.i.i.i.i.i.i = phi { i64, i64 } [ %i.ah, %._crit_edge.i.i.i.i.i.i.i ], [ %i.af, %bb.b ] ; 2 uses
  %i.am = extractvalue { i64, i64 } %.merged.i.i.i.i.i.i.i, 0
  %i.an = trunc nuw i64 %i.am to i1
  br i1 %i.an, label %bb.d, label %.split.us.i.i.i.i.i.i

bb.d:                                             ; preds = %_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr.exit.i.i.i.i.i.i
  %i.ao = extractvalue { i64, i64 } %.merged.i.i.i.i.i.i.i, 1
  %i.ap = add i64 %i.ab, 1
  %i.aq = add i64 %i.ap, %i.ao                    ; 10 uses
  store i64 %i.aq, ptr %i.i, align 8, !alias.scope !86
  %.not11.i.i.i.i.i.i = icmp ult i64 %i.aq, %i.r
  %.not12.i.i.i.i.i.i = icmp ugt i64 %i.aq, %.val1.i.i.i.i.i
  %or.cond.i.i.i.i.i.i = or i1 %.not11.i.i.i.i.i.i, %.not12.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i, label %bb.e, label %bb.f

.split.us.i.i.i.i.i.i:                            ; preds = %_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr.exit.i.i.i.i.i.i
  store i64 %i.p, ptr %i.i, align 8, !alias.scope !86
  br label %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCsity1gTxgZvF_18tracing_subscriber.exit.i.i.i.i.i

bb.e:                                             ; preds = %bb.f, %bb.d
  %i.ar = icmp ult i64 %i.p, %i.aq
  br i1 %i.ar, label %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCsity1gTxgZvF_18tracing_subscriber.exit.i.i.i.i.i, label %.lr.ph.split.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.as = sub nuw i64 %i.aq, %i.r                 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 %i.as
  %bcmp.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull %i.at, ptr nonnull %i.k, i64 %i.r), !noalias !96
  %i.au = icmp eq i32 %bcmp.i.i.i.i.i.i, 0
  br i1 %i.au, label %_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i.i.i, label %bb.e

_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i.i.i: ; preds = %bb.f
  store i64 %i.aq, ptr %1, align 8, !alias.scope !85
  br label %select.unfold.i.i.i

_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCsity1gTxgZvF_18tracing_subscriber.exit.i.i.i.i.i: ; preds = %bb.e, %.split.us.i.i.i.i.i.i, %.lr.ph.split.i.i.i
  %i.av = phi i64 [ %i.z, %.lr.ph.split.i.i.i ], [ %i.p, %.split.us.i.i.i.i.i.i ], [ %i.aq, %bb.e ]
  store i8 1, ptr %i.e, align 1, !alias.scope !88
  %.not.i3.i.i.i.i.i = icmp ne i64 %.pre2.i.i.i.i.i.i, %.lcssa172223.i.i.i
  %or.cond.not.i.i.i.i.i.i = select i1 %i.w, i1 true, i1 %.not.i3.i.i.i.i.i
  br i1 %or.cond.not.i.i.i.i.i.i, label %select.unfold.i.i.i, label %.loopexit

select.unfold.i.i.i:                              ; preds = %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCsity1gTxgZvF_18tracing_subscriber.exit.i.i.i.i.i, %_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i.i.i
  %i.aw = phi i64 [ %i.aq, %_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i.i.i ], [ %i.av, %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCsity1gTxgZvF_18tracing_subscriber.exit.i.i.i.i.i ]
  %.lcssa1721.i.i.i = phi i64 [ %i.aq, %_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i.i.i ], [ %.lcssa172223.i.i.i, %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCsity1gTxgZvF_18tracing_subscriber.exit.i.i.i.i.i ]
  %i.ax = phi i1 [ false, %_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i.i.i ], [ true, %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCsity1gTxgZvF_18tracing_subscriber.exit.i.i.i.i.i ]
  %.pn.i.i.i = phi i64 [ %i.as, %_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i.i.i ], [ %.pre2.i.i.i.i.i.i, %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCsity1gTxgZvF_18tracing_subscriber.exit.i.i.i.i.i ]
  %.sroa.4.1.i.i.i.i.i = sub nuw i64 %.pn.i.i.i, %.lcssa172223.i.i.i
  %.sroa.0.1.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 %.lcssa172223.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !92
  call void @_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCNvXsb_NtNtCsity1gTxgZvF_18tracing_subscriber6filter9directiveNtBW_15StaticDirectiveNtNtNtBb_3str6traits7FromStr8from_strs_0INtB7_5FnMutTReEE8call_mutB10_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.1.i.i.i.i.i, i64 noundef %.sroa.4.1.i.i.i.i.i), !noalias !93
  %i.ay = load i64, ptr %i.a, align 8, !range !7, !noalias !92, !noundef !5 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.ay, -1
  br i1 %.not.i.i.i.i, label %bb.g, label %.loopexit5

bb.g:                                             ; preds = %select.unfold.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !92
  br i1 %i.ax, label %.loopexit, label %.lr.ph.split.i.i.i

.loopexit5:                                       ; preds = %select.unfold.i.i.i, %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCsity1gTxgZvF_18tracing_subscriber.exit.i.i.us.us.i.i.i
  %.us-phi.i.i.i = phi i64 [ %i.y, %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCsity1gTxgZvF_18tracing_subscriber.exit.i.i.us.us.i.i.i ], [ %i.ay, %select.unfold.i.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx.i.i.i, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !92
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !97
  store i64 %.us-phi.i.i.i, ptr %i.c, align 8
  %i.az = load i64, ptr %i.n, align 8, !noundef !5 ; 5 uses
  %i.ba = icmp ult i64 %i.az, 384307168202282326
  call void @llvm.assume(i1 %i.ba)
  %i.bb = load i64, ptr %0, align 8, !range !8, !noundef !5
  %i.bc = icmp eq i64 %i.az, %i.bb
  br i1 %i.bc, label %bb.i, label %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsity1gTxgZvF_18tracing_subscriber.exit

.loopexit:                                        ; preds = %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsity1gTxgZvF_18tracing_subscriber.exit, %bb.g, %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCsity1gTxgZvF_18tracing_subscriber.exit.i.i.i.i.i, %bb.a, %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCsity1gTxgZvF_18tracing_subscriber.exit.i.i.us.i.i.i, %._crit_edge.split.us.split.us.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !97
  ret void

_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsity1gTxgZvF_18tracing_subscriber.exit: ; preds = %bb.i, %.loopexit5
  %i.bd = load ptr, ptr %i.o, align 8, !nonnull !5, !noundef !5
  %i.be = getelementptr inbounds nuw [24 x i8], ptr %i.bd, i64 %i.az
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.be, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  %i.bf = add nuw nsw i64 %i.az, 1
  store i64 %i.bf, ptr %i.n, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.experimental.noalias.scope.decl(metadata !98)
  call void @llvm.experimental.noalias.scope.decl(metadata !99)
  call void @llvm.experimental.noalias.scope.decl(metadata !100)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !101
  store ptr %i.d, ptr %i.b, align 8, !noalias !102
  %.promoted.i.i.i = load i8, ptr %i.e, align 1, !alias.scope !103
  %i.bg = trunc nuw i8 %.promoted.i.i.i to i1
  br i1 %i.bg, label %.loopexit, label %.lr.ph.i.i.i

bb.h:                                             ; preds = %bb.i
  %i.bh = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsity1gTxgZvF_18tracing_subscriber(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsity1gTxgZvF_18tracing_subscriber.exit unwind label %bb.j

bb.i:                                             ; preds = %.loopexit5
  invoke void @_RINvNvMs2_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsity1gTxgZvF_18tracing_subscriber(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.az, i64 noundef range(i64 1, 0) 1, i64 noundef 8, i64 noundef 24)
          to label %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsity1gTxgZvF_18tracing_subscriber.exit unwind label %bb.h

bb.j:                                             ; preds = %bb.h
  %i.bi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #15
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsity1gTxgZvF_18tracing_subscriber.exit: ; preds = %bb.h
  resume { ptr, i32 } %i.bh
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs4gx7repjoPU_12sharded_slab4page6SharedNtNtNtCsity1gTxgZvF_18tracing_subscriber8registry7sharded9DataInnerNtNtBG_3cfg13DefaultConfigEEB1q_(ptr %.0.val, i64 %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq ptr %.0.val, null
  %cond = icmp eq i64 %.8.val, 0
  %or.cond = select i1 %i.a, i1 true, i1 %cond
  br i1 %or.cond, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCs4gx7repjoPU_12sharded_slab4sync5inner10UnsafeCellINtNtB4_6option6OptionINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSINtNtNtBI_4page4slot4SlotNtNtNtCsity1gTxgZvF_18tracing_subscriber8registry7sharded9DataInnerNtNtBI_3cfg13DefaultConfigEEEEEB2Y_.exit, label %.lr.ph

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCs4gx7repjoPU_12sharded_slab4page4slot4SlotNtNtNtCsity1gTxgZvF_18tracing_subscriber8registry7sharded9DataInnerNtNtBI_3cfg13DefaultConfigEEB1v_.exit.i.i.i.i.i: ; preds = %.lr.ph
  %i.b = icmp eq i64 %i.d, %.8.val
  br i1 %i.b, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSINtNtNtCs4gx7repjoPU_12sharded_slab4page4slot4SlotNtNtNtCsity1gTxgZvF_18tracing_subscriber8registry7sharded9DataInnerNtNtBJ_3cfg13DefaultConfigEEB1w_.exit.i.i.i.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCs4gx7repjoPU_12sharded_slab4page4slot4SlotNtNtNtCsity1gTxgZvF_18tracing_subscriber8registry7sharded9DataInnerNtNtBI_3cfg13DefaultConfigEEB1v_.exit.i.i.i.i.i
  %.sroa.0.0.i.i.i.i.i1 = phi i64 [ %i.d, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCs4gx7repjoPU_12sharded_slab4page4slot4SlotNtNtNtCsity1gTxgZvF_18tracing_subscriber8registry7sharded9DataInnerNtNtBI_3cfg13DefaultConfigEEB1v_.exit.i.i.i.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.c = getelementptr inbounds nuw [96 x i8], ptr %.0.val, i64 %.sroa.0.0.i.i.i.i.i1
  %i.d = add nuw nsw i64 %.sroa.0.0.i.i.i.i.i1, 1 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  invoke void @_RNvXsg_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_8RawTableTNtNtCshzWfHUSfYae_4core3any6TypeIdINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxDNtBR_3AnyNtNtBT_6marker4SyncNtB28_4SendEL_EEENtNtNtBT_3ops4drop4Drop4dropCsity1gTxgZvF_18tracing_subscriber(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.e)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCs4gx7repjoPU_12sharded_slab4page4slot4SlotNtNtNtCsity1gTxgZvF_18tracing_subscriber8registry7sharded9DataInnerNtNtBI_3cfg13DefaultConfigEEB1v_.exit.i.i.i.i.i unwind label %bb.b

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCs4gx7repjoPU_12sharded_slab4page4slot4SlotNtNtNtCsity1gTxgZvF_18tracing_subscriber8registry7sharded9DataInnerNtNtBI_3cfg13DefaultConfigEEB1v_.exit7.i.i.i.i.i: ; preds = %.lr.ph3
  %i.f = add nuw nsw i64 %.sroa.0.1.i.i.i.i.i2, 1 ; 2 uses
  %i.g = icmp eq i64 %i.f, %.8.val
  br i1 %i.g, label %.body.thread.i.i.i.i, label %.lr.ph3

bb.b:                                             ; preds = %.lr.ph
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = icmp eq i64 %i.d, %.8.val
  br i1 %i.i, label %.body.thread.i.i.i.i, label %.lr.ph3

.lr.ph3:                                          ; preds = %bb.b, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCs4gx7repjoPU_12sharded_slab4page4slot4SlotNtNtNtCsity1gTxgZvF_18tracing_subscriber8registry7sharded9DataInnerNtNtBI_3cfg13DefaultConfigEEB1v_.exit7.i.i.i.i.i
  %.sroa.0.1.i.i.i.i.i2 = phi i64 [ %i.f, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCs4gx7repjoPU_12sharded_slab4page4slot4SlotNtNtNtCsity1gTxgZvF_18tracing_subscriber8registry7sharded9DataInnerNtNtBI_3cfg13DefaultConfigEEB1v_.exit7.i.i.i.i.i ], [ %i.d, %bb.b ] ; 2 uses
  %i.j = getelementptr inbounds nuw [96 x i8], ptr %.0.val, i64 %.sroa.0.1.i.i.i.i.i2
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  invoke void @_RNvXsg_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_8RawTableTNtNtCshzWfHUSfYae_4core3any6TypeIdINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxDNtBR_3AnyNtNtBT_6marker4SyncNtB28_4SendEL_EEENtNtNtBT_3ops4drop4Drop4dropCsity1gTxgZvF_18tracing_subscriber(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.k)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCs4gx7repjoPU_12sharded_slab4page4slot4SlotNtNtNtCsity1gTxgZvF_18tracing_subscriber8registry7sharded9DataInnerNtNtBI_3cfg13DefaultConfigEEB1v_.exit7.i.i.i.i.i unwind label %bb.c

bb.c:                                             ; preds = %.lr.ph3
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #15
  unreachable

.body.thread.i.i.i.i:                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCs4gx7repjoPU_12sharded_slab4page4slot4SlotNtNtNtCsity1gTxgZvF_18tracing_subscriber8registry7sharded9DataInnerNtNtBI_3cfg13DefaultConfigEEB1v_.exit7.i.i.i.i.i, %bb.b
  %i.m = mul nuw nsw i64 %.8.val, 96
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, -9223372036854775808) %i.m, i64 noundef 8) #16
  resume { ptr, i32 } %i.h

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSINtNtNtCs4gx7repjoPU_12sharded_slab4page4slot4SlotNtNtNtCsity1gTxgZvF_18tracing_subscriber8registry7sharded9DataInnerNtNtBJ_3cfg13DefaultConfigEEB1w_.exit.i.i.i.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCs4gx7repjoPU_12sharded_slab4page4slot4SlotNtNtNtCsity1gTxgZvF_18tracing_subscriber8registry7sharded9DataInnerNtNtBI_3cfg13DefaultConfigEEB1v_.exit.i.i.i.i.i
  %i.n = mul nuw nsw i64 %.8.val, 96
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, -9223372036854775808) %i.n, i64 noundef 8) #16
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCs4gx7repjoPU_12sharded_slab4sync5inner10UnsafeCellINtNtB4_6option6OptionINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSINtNtNtBI_4page4slot4SlotNtNtNtCsity1gTxgZvF_18tracing_subscriber8registry7sharded9DataInnerNtNtBI_3cfg13DefaultConfigEEEEEB2Y_.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCs4gx7repjoPU_12sharded_slab4sync5inner10UnsafeCellINtNtB4_6option6OptionINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSINtNtNtBI_4page4slot4SlotNtNtNtCsity1gTxgZvF_18tracing_subscriber8registry7sharded9DataInnerNtNtBI_3cfg13DefaultConfigEEEEEB2Y_.exit: ; preds = %bb.a, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSINtNtNtCs4gx7repjoPU_12sharded_slab4page4slot4SlotNtNtNtCsity1gTxgZvF_18tracing_subscriber8registry7sharded9DataInnerNtNtBJ_3cfg13DefaultConfigEEB1w_.exit.i.i.i.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtCs1bZVCNcVUvD_12thread_local5EntryINtNtB4_4cell7RefCellNtNtNtCsity1gTxgZvF_18tracing_subscriber8registry5stack9SpanStackEEEEB2a_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load i64, ptr %i.b, align 8, !noundef !5 ; 4 uses
  %i.c = icmp eq i64 %.val1, 0
  br i1 %i.c, label %_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecINtCs1bZVCNcVUvD_12thread_local5EntryINtNtCshzWfHUSfYae_4core4cell7RefCellNtNtNtCsity1gTxgZvF_18tracing_subscriber8registry5stack9SpanStackEEENtNtNtB1l_3ops4drop4Drop4dropB1X_.exit, label %.lr.ph

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCs1bZVCNcVUvD_12thread_local5EntryINtNtB4_4cell7RefCellNtNtNtCsity1gTxgZvF_18tracing_subscriber8registry5stack9SpanStackEEEB1D_.exit.i.i: ; preds = %.lr.ph
  %i.d = icmp eq i64 %i.f, %.val1
  br i1 %i.d, label %_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecINtCs1bZVCNcVUvD_12thread_local5EntryINtNtCshzWfHUSfYae_4core4cell7RefCellNtNtNtCsity1gTxgZvF_18tracing_subscriber8registry5stack9SpanStackEEENtNtNtB1l_3ops4drop4Drop4dropB1X_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCs1bZVCNcVUvD_12thread_local5EntryINtNtB4_4cell7RefCellNtNtNtCsity1gTxgZvF_18tracing_subscriber8registry5stack9SpanStackEEEB1D_.exit.i.i
  %.sroa.0.0.i.i2 = phi i64 [ %i.f, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCs1bZVCNcVUvD_12thread_local5EntryINtNtB4_4cell7RefCellNtNtNtCsity1gTxgZvF_18tracing_subscriber8registry5stack9SpanStackEEEB1D_.exit.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.e = getelementptr inbounds nuw [40 x i8], ptr %.val, i64 %.sroa.0.0.i.i2
  %i.f = add nuw nsw i64 %.sroa.0.0.i.i2, 1       ; 4 uses
  invoke void @_RNvXCs1bZVCNcVUvD_12thread_localINtB2_5EntryINtNtCshzWfHUSfYae_4core4cell7RefCellNtNtNtCsity1gTxgZvF_18tracing_subscriber8registry5stack9SpanStackEENtNtNtBL_3ops4drop4Drop4dropB1n_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.e)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCs1bZVCNcVUvD_12thread_local5EntryINtNtB4_4cell7RefCellNtNtNtCsity1gTxgZvF_18tracing_subscriber8registry5stack9SpanStackEEEB1D_.exit.i.i unwind label %bb.b

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCs1bZVCNcVUvD_12thread_local5EntryINtNtB4_4cell7RefCellNtNtNtCsity1gTxgZvF_18tracing_subscriber8registry5stack9SpanStackEEEB1D_.exit7.i.i: ; preds = %.lr.ph4
  %i.g = add nuw nsw i64 %.sroa.0.1.i.i3, 1       ; 2 uses
  %i.h = icmp eq i64 %i.g, %.val1
  br i1 %i.h, label %.body, label %.lr.ph4

bb.b:                                             ; preds = %.lr.ph
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = icmp eq i64 %i.f, %.val1
  br i1 %i.j, label %.body, label %.lr.ph4

.lr.ph4:                                          ; preds = %bb.b, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCs1bZVCNcVUvD_12thread_local5EntryINtNtB4_4cell7RefCellNtNtNtCsity1gTxgZvF_18tracing_subscriber8registry5stack9SpanStackEEEB1D_.exit7.i.i
  %.sroa.0.1.i.i3 = phi i64 [ %i.g, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCs1bZVCNcVUvD_12thread_local5EntryINtNtB4_4cell7RefCellNtNtNtCsity1gTxgZvF_18tracing_subscriber8registry5stack9SpanStackEEEB1D_.exit7.i.i ], [ %i.f, %bb.b ] ; 2 uses
  %i.k = getelementptr inbounds nuw [40 x i8], ptr %.val, i64 %.sroa.0.1.i.i3
  invoke void @_RNvXCs1bZVCNcVUvD_12thread_localINtB2_5EntryINtNtCshzWfHUSfYae_4core4cell7RefCellNtNtNtCsity1gTxgZvF_18tracing_subscriber8registry5stack9SpanStackEENtNtNtBL_3ops4drop4Drop4dropB1n_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.k)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCs1bZVCNcVUvD_12thread_local5EntryINtNtB4_4cell7RefCellNtNtNtCsity1gTxgZvF_18tracing_subscriber8registry5stack9SpanStackEEEB1D_.exit7.i.i unwind label %bb.c

bb.c:                                             ; preds = %.lr.ph4
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #15
  unreachable

.body:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCs1bZVCNcVUvD_12thread_local5EntryINtNtB4_4cell7RefCellNtNtNtCsity1gTxgZvF_18tracing_subscriber8registry5stack9SpanStackEEEB1D_.exit7.i.i, %bb.b
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecINtCs1bZVCNcVUvD_12thread_local5EntryINtNtCshzWfHUSfYae_4core4cell7RefCellNtNtNtCsity1gTxgZvF_18tracing_subscriber8registry5stack9SpanStackEEENtNtNtB1s_3ops4drop4Drop4dropB24_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVecINtCs1bZVCNcVUvD_12thread_local5EntryINtNtB4_4cell7RefCellNtNtNtCsity1gTxgZvF_18tracing_subscriber8registry5stack9SpanStackEEEEB2h_.exit unwind label %bb.d

_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecINtCs1bZVCNcVUvD_12thread_local5EntryINtNtCshzWfHUSfYae_4core4cell7RefCellNtNtNtCsity1gTxgZvF_18tracing_subscriber8registry5stack9SpanStackEEENtNtNtB1l_3ops4drop4Drop4dropB1X_.exit: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCs1bZVCNcVUvD_12thread_local5EntryINtNtB4_4cell7RefCellNtNtNtCsity1gTxgZvF_18tracing_subscriber8registry5stack9SpanStackEEEB1D_.exit.i.i, %bb.a
  tail call void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecINtCs1bZVCNcVUvD_12thread_local5EntryINtNtCshzWfHUSfYae_4core4cell7RefCellNtNtNtCsity1gTxgZvF_18tracing_subscriber8registry5stack9SpanStackEEENtNtNtB1s_3ops4drop4Drop4dropB24_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %.body
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #15
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVecINtCs1bZVCNcVUvD_12thread_local5EntryINtNtB4_4cell7RefCellNtNtNtCsity1gTxgZvF_18tracing_subscriber8registry5stack9SpanStackEEEEB2h_.exit: ; preds = %.body
  resume { ptr, i32 } %i.i
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtNtCs4gx7repjoPU_12sharded_slab4page6SharedNtNtNtCsity1gTxgZvF_18tracing_subscriber8registry7sharded9DataInnerNtNtB1d_3cfg13DefaultConfigEEEB1X_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load i64, ptr %i.b, align 8, !noundef !5 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !106)
  %i.c = icmp eq i64 %.val1, 0
  br i1 %i.c, label %_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecINtNtCs4gx7repjoPU_12sharded_slab4page6SharedNtNtNtCsity1gTxgZvF_18tracing_subscriber8registry7sharded9DataInnerNtNtBK_3cfg13DefaultConfigEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropB1u_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs4gx7repjoPU_12sharded_slab4page6SharedNtNtNtCsity1gTxgZvF_18tracing_subscriber8registry7sharded9DataInnerNtNtBG_3cfg13DefaultConfigEEB1q_.exit.i.i
  %.sroa.0.011.i.i = phi i64 [ %i.e, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs4gx7repjoPU_12sharded_slab4page6SharedNtNtNtCsity1gTxgZvF_18tracing_subscriber8registry7sharded9DataInnerNtNtBG_3cfg13DefaultConfigEEB1q_.exit.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.d = getelementptr inbounds nuw [40 x i8], ptr %.val, i64 %.sroa.0.011.i.i ; 2 uses
  %i.e = add nuw nsw i64 %.sroa.0.011.i.i, 1      ; 4 uses
  %.val8.i.i = load ptr, ptr %i.d, align 8, !alias.scope !106, !align !9, !noundef !5 ; 5 uses
  %i.f = getelementptr i8, ptr %i.d, i64 8
  %.val9.i.i = load i64, ptr %i.f, align 8, !alias.scope !106 ; 6 uses
  %i.g = icmp eq ptr %.val8.i.i, null
  %cond = icmp eq i64 %.val9.i.i, 0
  %or.cond = select i1 %i.g, i1 true, i1 %cond
  br i1 %or.cond, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs4gx7repjoPU_12sharded_slab4page6SharedNtNtNtCsity1gTxgZvF_18tracing_subscriber8registry7sharded9DataInnerNtNtBG_3cfg13DefaultConfigEEB1q_.exit.i.i, label %.lr.ph

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCs4gx7repjoPU_12sharded_slab4page4slot4SlotNtNtNtCsity1gTxgZvF_18tracing_subscriber8registry7sharded9DataInnerNtNtBI_3cfg13DefaultConfigEEB1v_.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph
  %i.h = icmp eq i64 %i.j, %.val9.i.i
  br i1 %i.h, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSINtNtNtCs4gx7repjoPU_12sharded_slab4page4slot4SlotNtNtNtCsity1gTxgZvF_18tracing_subscriber8registry7sharded9DataInnerNtNtBJ_3cfg13DefaultConfigEEB1w_.exit.i.i.i.i.i.i.i, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.i.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCs4gx7repjoPU_12sharded_slab4page4slot4SlotNtNtNtCsity1gTxgZvF_18tracing_subscriber8registry7sharded9DataInnerNtNtBI_3cfg13DefaultConfigEEB1v_.exit.i.i.i.i.i.i.i.i
  %.sroa.0.0.i.i.i.i.i.i.i.i18 = phi i64 [ %i.j, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCs4gx7repjoPU_12sharded_slab4page4slot4SlotNtNtNtCsity1gTxgZvF_18tracing_subscriber8registry7sharded9DataInnerNtNtBI_3cfg13DefaultConfigEEB1v_.exit.i.i.i.i.i.i.i.i ], [ 0, %.lr.ph.i.i ] ; 2 uses
  %i.i = getelementptr inbounds nuw [96 x i8], ptr %.val8.i.i, i64 %.sroa.0.0.i.i.i.i.i.i.i.i18
  %i.j = add nuw nsw i64 %.sroa.0.0.i.i.i.i.i.i.i.i18, 1 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  invoke void @_RNvXsg_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_8RawTableTNtNtCshzWfHUSfYae_4core3any6TypeIdINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxDNtBR_3AnyNtNtBT_6marker4SyncNtB28_4SendEL_EEENtNtNtBT_3ops4drop4Drop4dropCsity1gTxgZvF_18tracing_subscriber(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.k)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCs4gx7repjoPU_12sharded_slab4page4slot4SlotNtNtNtCsity1gTxgZvF_18tracing_subscriber8registry7sharded9DataInnerNtNtBI_3cfg13DefaultConfigEEB1v_.exit.i.i.i.i.i.i.i.i unwind label %bb.b, !noalias !106

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCs4gx7repjoPU_12sharded_slab4page4slot4SlotNtNtNtCsity1gTxgZvF_18tracing_subscriber8registry7sharded9DataInnerNtNtBI_3cfg13DefaultConfigEEB1v_.exit7.i.i.i.i.i.i.i.i: ; preds = %.lr.ph20
  %i.l = add nuw nsw i64 %.sroa.0.1.i.i.i.i.i.i.i.i19, 1 ; 2 uses
  %i.m = icmp eq i64 %i.l, %.val9.i.i
  br i1 %i.m, label %.body.thread.i.i.i.i.i.i.i, label %.lr.ph20

bb.b:                                             ; preds = %.lr.ph
end_hunk_0
