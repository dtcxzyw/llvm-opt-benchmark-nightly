begin_hunk_0
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %17 = load i64, ptr %16, align 8, !noundef !4
  %18 = icmp eq i64 %.sroa.0.0.i, %17
  br i1 %18, label %66, label %19

19:                                               ; preds = %_RNvMs_NtCsdNqyU9N9qTX_12sharded_slab3tidINtB4_3TidNtNtB6_3cfg13DefaultConfigE7currentCs7p2uQeJxui2_9deltalake.exit
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 24
end_hunk_0
begin_hunk_1

55:                                               ; preds = %51
  %56 = trunc i64 %.sroa.0.018.i.i.i.i to i32
  %57 = and i32 %56, 31                           ; 4 uses
  %.not.i.i.i.i = icmp eq i32 %57, 31
  br i1 %.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.preheader.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %55
  %58 = shl nuw nsw i32 1, %57                    ; 2 uses
  %xtraiter = and i32 %58, 7                      ; 2 uses
  %59 = icmp samesign ult i32 %57, 3
  br i1 %59, label %.lr.ph.i.i.i.i.epil.preheader, label %.lr.ph.preheader.i.i.i.i.new

.lr.ph.preheader.i.i.i.i.new:                     ; preds = %.lr.ph.preheader.i.i.i.i
  %unroll_iter = and i32 %58, 2147483640
  br label %.lr.ph.i.i.i.i

._crit_edge.i.i.i.i.loopexit.unr-lcssa:           ; preds = %.lr.ph.i.i.i.i
end_hunk_1
begin_hunk_2
  br i1 %lcmp.mod.not, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.epil.preheader:                    ; preds = %._crit_edge.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.preheader.i.i.i.i
  %lcmp.mod41 = icmp samesign ult i32 %57, 3
  tail call void @llvm.assume(i1 %lcmp.mod41)
  br label %.lr.ph.i.i.i.i.epil

end_hunk_2
begin_hunk_3
  br i1 %epil.iter.cmp.not, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i.epil, !llvm.loop !11110

._crit_edge.i.i.i.i:                              ; preds = %._crit_edge.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.epil, %55
  %60 = icmp ugt i64 %.sroa.0.018.i.i.i.i, 7
  br i1 %60, label %63, label %61

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i, %.lr.ph.preheader.i.i.i.i.new
  %niter = phi i32 [ 0, %.lr.ph.preheader.i.i.i.i.new ], [ %niter.next.7, %.lr.ph.i.i.i.i ]
end_hunk_3
begin_hunk_4
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.i.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i

61:                                               ; preds = %._crit_edge.i.i.i.i
  %62 = add nuw nsw i64 %.sroa.0.018.i.i.i.i, 1
  br label %_RNvNtNtCsdNqyU9N9qTX_12sharded_slab4page4slot19exponential_backoff.exit.i.i.i.i

63:                                               ; preds = %._crit_edge.i.i.i.i
  tail call void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now(), !noalias !11107
  br label %_RNvNtNtCsdNqyU9N9qTX_12sharded_slab4page4slot19exponential_backoff.exit.i.i.i.i

_RNvNtNtCsdNqyU9N9qTX_12sharded_slab4page4slot19exponential_backoff.exit.i.i.i.i: ; preds = %63, %61, %47
  %.sroa.0.1.i.i.i.i = phi i64 [ 0, %47 ], [ %.sroa.0.018.i.i.i.i, %63 ], [ %62, %61 ]
  %.sroa.06.1.i.i.i.i = phi i64 [ %.sroa.01.0.i.i.i.i.i, %47 ], [ %.sroa.06.019.i.i.i.i, %63 ], [ %.sroa.06.019.i.i.i.i, %61 ] ; 2 uses
  %.sroa.02.1.i.i.i.i = phi i1 [ %.sroa.02.020.i.i.i.i, %47 ], [ true, %63 ], [ true, %61 ] ; 2 uses
  %64 = lshr i64 %.sroa.06.1.i.i.i.i, 51
  %65 = icmp eq i64 %29, %64
  %or.cond.not.i.i.i.i = or i1 %.sroa.02.1.i.i.i.i, %65
  br i1 %or.cond.not.i.i.i.i, label %47, label %_RNvMs0_NtCsdNqyU9N9qTX_12sharded_slab5shardINtB5_5ShardNtNtNtCsbG4i8A5DnWX_18tracing_subscriber8registry7sharded9DataInnerNtNtB7_3cfg13DefaultConfigE12clear_remoteCs7p2uQeJxui2_9deltalake.exit

66:                                               ; preds = %_RNvMs_NtCsdNqyU9N9qTX_12sharded_slab3tidINtB4_3TidNtNtB6_3cfg13DefaultConfigE7currentCs7p2uQeJxui2_9deltalake.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11112)
  %67 = and i64 %1, 274877906943                  ; 2 uses
  %68 = add nuw nsw i64 %67, 32
  %69 = lshr i64 %68, 6
  %70 = tail call range(i64 31, 65) i64 @llvm.ctlz.i64(i64 %69, i1 false)
  %71 = sub nuw nsw i64 64, %70                   ; 5 uses
  %72 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %73 = load i64, ptr %72, align 8, !alias.scope !11112, !noundef !4
  %.not.i3 = icmp ult i64 %71, %73
  br i1 %.not.i3, label %74, label %_RNvMs0_NtCsdNqyU9N9qTX_12sharded_slab5shardINtB5_5ShardNtNtNtCsbG4i8A5DnWX_18tracing_subscriber8registry7sharded9DataInnerNtNtB7_3cfg13DefaultConfigE12clear_remoteCs7p2uQeJxui2_9deltalake.exit

74:                                               ; preds = %66
  %75 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %76 = load ptr, ptr %75, align 8, !alias.scope !11112, !nonnull !4, !noundef !4
  %77 = getelementptr inbounds nuw [40 x i8], ptr %76, i64 %71 ; 3 uses
  %78 = lshr i64 %1, 51                           ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11115)
  %79 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %80 = load i64, ptr %79, align 8, !alias.scope !11118, !noundef !4 ; 2 uses
  %81 = icmp ult i64 %71, %80
  br i1 %81, label %_RNvMs0_NtCsdNqyU9N9qTX_12sharded_slab5shardINtB5_5ShardNtNtNtCsbG4i8A5DnWX_18tracing_subscriber8registry7sharded9DataInnerNtNtB7_3cfg13DefaultConfigE5localCs7p2uQeJxui2_9deltalake.exit.i, label %82

82:                                               ; preds = %74
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef range(i64 0, 34) %71, i64 noundef %80, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #43, !noalias !11118
  unreachable

_RNvMs0_NtCsdNqyU9N9qTX_12sharded_slab5shardINtB5_5ShardNtNtNtCsbG4i8A5DnWX_18tracing_subscriber8registry7sharded9DataInnerNtNtB7_3cfg13DefaultConfigE5localCs7p2uQeJxui2_9deltalake.exit.i: ; preds = %74
  %83 = load ptr, ptr %0, align 8, !alias.scope !11118, !nonnull !4, !noundef !4
  %84 = getelementptr inbounds nuw [8 x i8], ptr %83, i64 %71 ; 2 uses
  %85 = getelementptr inbounds nuw i8, ptr %77, i64 32
  %86 = load i64, ptr %85, align 8, !noalias !11112, !noundef !4
  %87 = sub i64 %67, %86                          ; 3 uses
  %88 = load ptr, ptr %77, align 8, !noalias !11119, !align !1680, !noundef !4 ; 2 uses
  %.not.i.i.i5 = icmp eq ptr %88, null
  br i1 %.not.i.i.i5, label %_RNvMs0_NtCsdNqyU9N9qTX_12sharded_slab5shardINtB5_5ShardNtNtNtCsbG4i8A5DnWX_18tracing_subscriber8registry7sharded9DataInnerNtNtB7_3cfg13DefaultConfigE12clear_remoteCs7p2uQeJxui2_9deltalake.exit, label %89

89:                                               ; preds = %_RNvMs0_NtCsdNqyU9N9qTX_12sharded_slab5shardINtB5_5ShardNtNtNtCsbG4i8A5DnWX_18tracing_subscriber8registry7sharded9DataInnerNtNtB7_3cfg13DefaultConfigE5localCs7p2uQeJxui2_9deltalake.exit.i
  %90 = getelementptr inbounds nuw i8, ptr %77, i64 8
  %91 = load i64, ptr %90, align 8, !noalias !11119, !noundef !4
  %92 = icmp ult i64 %87, %91
  br i1 %92, label %93, label %_RNvMs0_NtCsdNqyU9N9qTX_12sharded_slab5shardINtB5_5ShardNtNtNtCsbG4i8A5DnWX_18tracing_subscriber8registry7sharded9DataInnerNtNtB7_3cfg13DefaultConfigE12clear_remoteCs7p2uQeJxui2_9deltalake.exit

93:                                               ; preds = %89
  %94 = getelementptr inbounds nuw [96 x i8], ptr %88, i64 %87 ; 3 uses
  %95 = getelementptr inbounds nuw i8, ptr %94, i64 80 ; 2 uses
  %96 = load atomic i64, ptr %95 acquire, align 8, !noalias !11119 ; 2 uses
  %97 = lshr i64 %96, 51
  %98 = icmp eq i64 %78, %97
  br i1 %98, label %.lr.ph23.i.i.i.i6, label %_RNvMs0_NtCsdNqyU9N9qTX_12sharded_slab5shardINtB5_5ShardNtNtNtCsbG4i8A5DnWX_18tracing_subscriber8registry7sharded9DataInnerNtNtB7_3cfg13DefaultConfigE12clear_remoteCs7p2uQeJxui2_9deltalake.exit

.lr.ph23.i.i.i.i6:                                ; preds = %93
  %.cmp.i.i.i.i7 = icmp ult i64 %1, -4503599627370496
  %.v.i.i.i.i8 = select i1 %.cmp.i.i.i.i7, i64 1, i64 -8190
  %99 = add nsw i64 %.v.i.i.i.i8, %78
  %100 = shl nuw i64 %99, 51
  br label %101

101:                                              ; preds = %_RNvNtNtCsdNqyU9N9qTX_12sharded_slab4page4slot19exponential_backoff.exit.i.i.i.i14, %.lr.ph23.i.i.i.i6
  %.sroa.02.020.i.i.i.i9 = phi i1 [ false, %.lr.ph23.i.i.i.i6 ], [ %.sroa.02.1.i.i.i.i17, %_RNvNtNtCsdNqyU9N9qTX_12sharded_slab4page4slot19exponential_backoff.exit.i.i.i.i14 ]
  %.sroa.06.019.i.i.i.i10 = phi i64 [ %96, %.lr.ph23.i.i.i.i6 ], [ %.sroa.06.1.i.i.i.i16, %_RNvNtNtCsdNqyU9N9qTX_12sharded_slab4page4slot19exponential_backoff.exit.i.i.i.i14 ] ; 4 uses
  %.sroa.0.018.i.i.i.i11 = phi i64 [ 0, %.lr.ph23.i.i.i.i6 ], [ %.sroa.0.1.i.i.i.i15, %_RNvNtNtCsdNqyU9N9qTX_12sharded_slab4page4slot19exponential_backoff.exit.i.i.i.i14 ] ; 4 uses
  %102 = and i64 %.sroa.06.019.i.i.i.i10, 2251799813685247
  %103 = or disjoint i64 %102, %100
  %104 = cmpxchg ptr %95, i64 %.sroa.06.019.i.i.i.i10, i64 %103 acq_rel acquire, align 8, !noalias !11119 ; 2 uses
  %.sroa.18.0.in.i.i.i.i.i12 = extractvalue { i64, i1 } %104, 1
  %.sroa.01.0.i.i.i.i.i13 = extractvalue { i64, i1 } %104, 0 ; 2 uses
  br i1 %.sroa.18.0.in.i.i.i.i.i12, label %105, label %_RNvNtNtCsdNqyU9N9qTX_12sharded_slab4page4slot19exponential_backoff.exit.i.i.i.i14

105:                                              ; preds = %101
  %106 = and i64 %.sroa.01.0.i.i.i.i.i13, 2251799813685244
  %107 = icmp eq i64 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %105
  tail call void @_RNvXs6_NtNtCsbG4i8A5DnWX_18tracing_subscriber8registry7shardedNtB5_9DataInnerNtNtCsdNqyU9N9qTX_12sharded_slab5clear5Clear5clear(ptr noalias noundef nonnull align 8 dereferenceable(80) dereferenceable_or_null(80) %94), !noalias !11119
  %109 = load i64, ptr %84, align 8, !noalias !11119, !noundef !4
  %110 = getelementptr inbounds nuw i8, ptr %94, i64 88
  store i64 %109, ptr %110, align 8, !noalias !11119
  store i64 %87, ptr %84, align 8, !noalias !11119
  br label %_RNvMs0_NtCsdNqyU9N9qTX_12sharded_slab5shardINtB5_5ShardNtNtNtCsbG4i8A5DnWX_18tracing_subscriber8registry7sharded9DataInnerNtNtB7_3cfg13DefaultConfigE12clear_remoteCs7p2uQeJxui2_9deltalake.exit

111:                                              ; preds = %105
  %112 = trunc i64 %.sroa.0.018.i.i.i.i11 to i32
  %113 = and i32 %112, 31                         ; 4 uses
  %.not.i.i.i.i19 = icmp eq i32 %113, 31
  br i1 %.not.i.i.i.i19, label %._crit_edge.i.i.i.i24, label %.lr.ph.preheader.i.i.i.i20

.lr.ph.preheader.i.i.i.i20:                       ; preds = %111
  %114 = shl nuw nsw i32 1, %113                  ; 2 uses
  %xtraiter42 = and i32 %114, 7                   ; 2 uses
  %115 = icmp samesign ult i32 %113, 3
  br i1 %115, label %.lr.ph.i.i.i.i21.epil.preheader, label %.lr.ph.preheader.i.i.i.i20.new

.lr.ph.preheader.i.i.i.i20.new:                   ; preds = %.lr.ph.preheader.i.i.i.i20
  %unroll_iter46 = and i32 %114, 2147483640
  br label %.lr.ph.i.i.i.i21

._crit_edge.i.i.i.i24.loopexit.unr-lcssa:         ; preds = %.lr.ph.i.i.i.i21
end_hunk_4
begin_hunk_5
  br i1 %lcmp.mod44.not, label %._crit_edge.i.i.i.i24, label %.lr.ph.i.i.i.i21.epil.preheader

.lr.ph.i.i.i.i21.epil.preheader:                  ; preds = %._crit_edge.i.i.i.i24.loopexit.unr-lcssa, %.lr.ph.preheader.i.i.i.i20
  %lcmp.mod45 = icmp samesign ult i32 %113, 3
  tail call void @llvm.assume(i1 %lcmp.mod45)
  br label %.lr.ph.i.i.i.i21.epil

end_hunk_5
begin_hunk_6
  %epil.iter43.cmp.not = icmp eq i32 %epil.iter43.next, %xtraiter42
  br i1 %epil.iter43.cmp.not, label %._crit_edge.i.i.i.i24, label %.lr.ph.i.i.i.i21.epil, !llvm.loop !11125

._crit_edge.i.i.i.i24:                            ; preds = %._crit_edge.i.i.i.i24.loopexit.unr-lcssa, %.lr.ph.i.i.i.i21.epil, %111
  %116 = icmp ugt i64 %.sroa.0.018.i.i.i.i11, 7
  br i1 %116, label %119, label %117

.lr.ph.i.i.i.i21:                                 ; preds = %.lr.ph.i.i.i.i21, %.lr.ph.preheader.i.i.i.i20.new
  %niter47 = phi i32 [ 0, %.lr.ph.preheader.i.i.i.i20.new ], [ %niter47.next.7, %.lr.ph.i.i.i.i21 ]
end_hunk_6
begin_hunk_7
  %niter47.ncmp.7 = icmp eq i32 %niter47.next.7, %unroll_iter46
  br i1 %niter47.ncmp.7, label %._crit_edge.i.i.i.i24.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i21

117:                                              ; preds = %._crit_edge.i.i.i.i24
  %118 = add nuw nsw i64 %.sroa.0.018.i.i.i.i11, 1
  br label %_RNvNtNtCsdNqyU9N9qTX_12sharded_slab4page4slot19exponential_backoff.exit.i.i.i.i14

119:                                              ; preds = %._crit_edge.i.i.i.i24
  tail call void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now(), !noalias !11122
  br label %_RNvNtNtCsdNqyU9N9qTX_12sharded_slab4page4slot19exponential_backoff.exit.i.i.i.i14

_RNvNtNtCsdNqyU9N9qTX_12sharded_slab4page4slot19exponential_backoff.exit.i.i.i.i14: ; preds = %119, %117, %101
  %.sroa.0.1.i.i.i.i15 = phi i64 [ 0, %101 ], [ %.sroa.0.018.i.i.i.i11, %119 ], [ %118, %117 ]
  %.sroa.06.1.i.i.i.i16 = phi i64 [ %.sroa.01.0.i.i.i.i.i13, %101 ], [ %.sroa.06.019.i.i.i.i10, %119 ], [ %.sroa.06.019.i.i.i.i10, %117 ] ; 2 uses
  %.sroa.02.1.i.i.i.i17 = phi i1 [ %.sroa.02.020.i.i.i.i9, %101 ], [ true, %119 ], [ true, %117 ] ; 2 uses
  %120 = lshr i64 %.sroa.06.1.i.i.i.i16, 51
  %121 = icmp eq i64 %78, %120
  %or.cond.not.i.i.i.i18 = or i1 %.sroa.02.1.i.i.i.i17, %121
  br i1 %or.cond.not.i.i.i.i18, label %101, label %_RNvMs0_NtCsdNqyU9N9qTX_12sharded_slab5shardINtB5_5ShardNtNtNtCsbG4i8A5DnWX_18tracing_subscriber8registry7sharded9DataInnerNtNtB7_3cfg13DefaultConfigE12clear_remoteCs7p2uQeJxui2_9deltalake.exit

_RNvMs0_NtCsdNqyU9N9qTX_12sharded_slab5shardINtB5_5ShardNtNtNtCsbG4i8A5DnWX_18tracing_subscriber8registry7sharded9DataInnerNtNtB7_3cfg13DefaultConfigE12clear_remoteCs7p2uQeJxui2_9deltalake.exit: ; preds = %_RNvNtNtCsdNqyU9N9qTX_12sharded_slab4page4slot19exponential_backoff.exit.i.i.i.i, %_RNvNtNtCsdNqyU9N9qTX_12sharded_slab4page4slot19exponential_backoff.exit.i.i.i.i14, %108, %93, %89, %_RNvMs0_NtCsdNqyU9N9qTX_12sharded_slab5shardINtB5_5ShardNtNtNtCsbG4i8A5DnWX_18tracing_subscriber8registry7sharded9DataInnerNtNtB7_3cfg13DefaultConfigE5localCs7p2uQeJxui2_9deltalake.exit.i, %66, %54, %39, %35, %26, %19
  ret void
}

end_hunk_7
