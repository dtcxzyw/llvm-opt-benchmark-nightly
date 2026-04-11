inline.NumInlined: 20
inline.NumDeleted: 14
begin_hunk_0_@_ZN13duckdb_brotli29BrotliDecoderDecompressStreamEPNS_24BrotliDecoderStateStructEPmPPKhS2_PPhS2_:bb.a
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 848 ; 14 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 2672 ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 2668 ; 4 uses
end_hunk_0
begin_hunk_1_@_ZN13duckdb_brotli29BrotliDecoderDecompressStreamEPNS_24BrotliDecoderStateStructEPmPPKhS2_PPhS2_:bb.a
  br label %bb.cg

bb.cf:                                            ; preds = %bb.v
  %.pre656 = load i32, ptr %i.aq, align 4, !tbaa !56 ; 3 uses
  %6 = icmp ult i32 %.pre656, 3
  br i1 %6, label %switch.lookup, label %.thread570

.thread570:                                       ; preds = %bb.cf
  %i.sf = load i64, ptr %1, align 8, !tbaa !32
end_hunk_1
begin_hunk_2_@_ZN13duckdb_brotli29BrotliDecoderDecompressStreamEPNS_24BrotliDecoderStateStructEPmPPKhS2_PPhS2_:bb.a
  %i.sh = call fastcc noundef i32 @_ZN13duckdb_brotliL13SaveErrorCodeEPNS_24BrotliDecoderStateStructENS_22BrotliDecoderErrorCodeEm(ptr noundef nonnull %0, i32 noundef -31, i64 noundef %i.sg)
  br label %bb.ds

switch.lookup:                                    ; preds = %bb.cf
  %narrow = mul nuw nsw i32 %.pre656, 24
  %narrow747 = add nuw nsw i32 %narrow, 184
  %switch.offset = zext nneg i32 %narrow747 to i64
  br label %bb.cg

bb.cg:                                            ; preds = %switch.lookup, %.thread719
  %7 = phi i32 [ %.pre656, %switch.lookup ], [ 0, %.thread719 ]
  %.pn = phi i64 [ %switch.offset, %switch.lookup ], [ 184, %.thread719 ]
  %.0308 = getelementptr inbounds nuw i8, ptr %0, i64 %.pn ; 5 uses
  %i.si = load i32, ptr %i.bh, align 8, !tbaa !70
  %.not.i453 = icmp eq i32 %i.si, 1
  br i1 %.not.i453, label %._crit_edge26.i, label %bb.ch
end_hunk_2
begin_hunk_3_@_ZN13duckdb_brotli29BrotliDecoderDecompressStreamEPNS_24BrotliDecoderStateStructEPmPPKhS2_PPhS2_:bb.a
  br label %.loopexit579

.loopexit579:                                     ; preds = %.loopexit579.loopexit, %bb.ci
  %i.tj = phi i32 [ %.pre657, %.loopexit579.loopexit ], [ %7, %bb.ci ] ; 2 uses
  store i32 0, ptr %i.bh, align 8, !tbaa !70
  %i.tk = add nsw i32 %i.tj, 1
  store i32 %i.tk, ptr %i.aq, align 4, !tbaa !56
end_hunk_3
