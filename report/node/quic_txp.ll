inline.NumInlined: 112
inline.NumDeleted: 45
begin_hunk_0_@ossl_quic_tx_packetiser_generate:bb.a
  %.1.i52.i.i.i.i = select i1 %i.qs, i64 %spec.select29.i51.i.i.i.i, i64 %spec.select.i50.i.i.i.i ; 3 uses
  %.not.i.i.not.i.i = icmp eq i64 %.1.i52.i.i.i.i, 0
  %.not29.1.i.i.i.i = icmp ult i64 %.1.i44.i.i.i.i, %.1.i52.i.i.i.i
  %or.cond.i.i.i.i = or i1 %.not64.i.i.i.i, %.not29.1.i.i.i.i ; 2 uses
  %.125.1.i.i.i.i = select i1 %or.cond.i.i.i.i, i64 %.1.i52.i.i.i.i, i64 %.1.i44.i.i.i.i ; 2 uses
  %.not29.2.i.i.i.i = icmp ult i64 %.1.i36.i.i.i.i, %.125.1.i.i.i.i
  %or.cond70.i.i.i.i = select i1 %.not65.i.i.i.i, i1 true, i1 %.not29.2.i.i.i.i ; 2 uses
  %17 = and i1 %or.cond.i.i.i.i, %or.cond70.i.i.i.i
  %.125.2.i.i.i.i = select i1 %or.cond70.i.i.i.i, i64 %.125.1.i.i.i.i, i64 %.1.i36.i.i.i.i ; 2 uses
  %.not29.3.i.i.i.i = icmp ult i64 %.1.i.i.i.i.i, %.125.2.i.i.i.i
  %or.cond71.i.i.i.i.a = select i1 %.not66.i.i.i.i, i1 true, i1 %.not29.3.i.i.i.i ; 2 uses
  %i.qt = select i1 %or.cond71.i.i.i.i.a, i1 %17, i1 false
  %.125.3.i.i.i.i = select i1 %or.cond71.i.i.i.i.a, i64 %.125.2.i.i.i.i, i64 %.1.i.i.i.i.i ; 2 uses
  store i64 %.125.3.i.i.i.i, ptr %i.be, align 8, !tbaa !51
  %or.cond.i.i = and i1 %.not.i.i.not.i.i, %i.qt
  br i1 %or.cond.i.i, label %txp_generate_crypto_frames.exit.thread.i, label %determine_crypto_len.exit.thread44.i.i

determine_crypto_len.exit.thread44.i.i:           ; preds = %try_len.exit53.i.i.i.i
end_hunk_0
begin_hunk_1_@determine_stream_len:bb.a
  %.125.i = phi i64 [ 0, %try_len.exit53.i ], [ %.1.i52.i, %bb.f ], [ 0, %try_len.exit45.i ] ; 2 uses
  %.1.i = phi i64 [ 0, %try_len.exit53.i ], [ %i.s, %bb.f ], [ %i.s, %try_len.exit45.i ]
  %.not29.1.i = icmp ult i64 %.sink.i40.i, %.125.i
  %or.cond.i = or i1 %.0.i41.i, %.not29.1.i       ; 3 uses
  %.125.1.i = select i1 %or.cond.i, i64 %.125.i, i64 %.sink.i40.i ; 2 uses
  %.1.1.i = select i1 %or.cond.i, i64 %.1.i, i64 %i.p
  %.not29.2.i = icmp ult i64 %.sink.i32.i, %.125.1.i
  %or.cond70.i = select i1 %.0.i33.i, i1 true, i1 %.not29.2.i ; 3 uses
  %4 = and i1 %or.cond.i, %or.cond70.i
  %.125.2.i.a = select i1 %or.cond70.i, i64 %.125.1.i, i64 %.sink.i32.i ; 2 uses
  %.1.2.i = select i1 %or.cond70.i, i64 %.1.1.i, i64 %i.m
  %.not29.3.i = icmp ult i64 %.sink.i.i, %.125.2.i.a
  %or.cond71.i.a = select i1 %.0.i.i, i1 true, i1 %.not29.3.i ; 3 uses
  %i.v = select i1 %or.cond71.i.a, i1 %4, i1 false
  %.127.3.i = select i1 %i.v, i32 %.127.i, i32 1
  %.125.3.i = select i1 %or.cond71.i.a, i64 %.125.2.i.a, i64 %.sink.i.i
  %.1.3.i = select i1 %or.cond71.i.a, i64 %.1.2.i, i64 %i.i
  store i64 %.1.3.i, ptr %2, align 8, !tbaa !51
  store i64 %.125.3.i, ptr %3, align 8, !tbaa !51
  br label %bb.g
end_hunk_1
