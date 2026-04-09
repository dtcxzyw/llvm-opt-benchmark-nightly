inline.NumInlined: 4822
inline.NumDeleted: 2510
begin_hunk_0_@_ZN6duckdb18ParquetDecodeUtils9BitUnpackIhEEvRNS_10ByteBufferERhPT_mh:bb.a
  %.038 = phi i64 [ %i.af, %_ZN6duckdb20BitpackingPrimitives12UnPackBufferIhEEvPhS2_mhb.exit.loopexit.i ], [ %3, %_ZNK6duckdb10ByteBuffer9availableEm.exit ] ; 2 uses
  %.037 = phi ptr [ %i.al, %_ZN6duckdb20BitpackingPrimitives12UnPackBufferIhEEvPhS2_mhb.exit.loopexit.i ], [ %2, %_ZNK6duckdb10ByteBuffer9availableEm.exit ]
  %.not = icmp eq i64 %.038, 0
  br i1 %.not, label %._crit_edge46, label %bb.g

._crit_edge46:                                    ; preds = %._crit_edge, %bb.f
  ret void

bb.g:                                             ; preds = %bb.f, %._crit_edge
  %.03643 = phi i64 [ %i.bl, %._crit_edge ], [ 0, %bb.f ] ; 2 uses
  %i.am = load ptr, ptr %0, align 8, !tbaa !385
  %.0.copyload.i.i = load i8, ptr %i.am, align 1
  %i.an = zext i8 %.0.copyload.i.i to i32
end_hunk_0
begin_hunk_1_@_ZN6duckdb18ParquetDecodeUtils9BitUnpackIhEEvRNS_10ByteBufferERhPT_mh:bb.a
  %.0.copyload.i.i40 = load i8, ptr %i.ay, align 1
  %i.az = zext i8 %.0.copyload.i.i40 to i32
  %i.ba = load i8, ptr %1, align 1, !tbaa !211    ; 2 uses
  %i.bb = sub i8 %4, %i.ba
  %5 = add i8 %i.bb, 8
  %i.bc = zext nneg i8 %5 to i32
  %i.bd = shl i32 %i.az, %i.bc
  %i.be = zext i32 %i.bd to i64
  %i.bf = and i64 %i.c, %i.be
end_hunk_1
