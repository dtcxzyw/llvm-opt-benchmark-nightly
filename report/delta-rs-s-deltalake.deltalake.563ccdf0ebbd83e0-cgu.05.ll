begin_hunk_0
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %17 = load i64, ptr %16, align 8, !noundef !4
  %18 = icmp eq i64 %.sroa.0.0.i, %17
  br i1 %18, label %68, label %19

19:                                               ; preds = %_RNvMs_NtCsdNqyU9N9qTX_12sharded_slab3tidINtB4_3TidNtNtB6_3cfg13DefaultConfigE7currentCs7p2uQeJxui2_9deltalake.exit
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 24
end_hunk_0
begin_hunk_1

55:                                               ; preds = %51
  %56 = trunc i64 %.sroa.0.018.i.i.i.i to i32
  %57 = and i32 %56, 31                           ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %57, 31
  br i1 %.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.preheader.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %55
  %58 = shl nuw nsw i32 1, %57
  %59 = freeze i32 %58                            ; 3 uses
  %60 = add i32 %59, -1
  %xtraiter = and i32 %59, 7                      ; 3 uses
  %61 = icmp ult i32 %60, 7
  br i1 %61, label %.lr.ph.i.i.i.i.epil.preheader, label %.lr.ph.preheader.i.i.i.i.new

.lr.ph.preheader.i.i.i.i.new:                     ; preds = %.lr.ph.preheader.i.i.i.i
  %unroll_iter = and i32 %59, -8
  br label %.lr.ph.i.i.i.i

._crit_edge.i.i.i.i.loopexit.unr-lcssa:           ; preds = %.lr.ph.i.i.i.i
end_hunk_1
begin_hunk_2
  br i1 %lcmp.mod.not, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.epil.preheader:                    ; preds = %._crit_edge.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.preheader.i.i.i.i
  %lcmp.mod41 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod41)
  br label %.lr.ph.i.i.i.i.epil

end_hunk_2
begin_hunk_3
  br i1 %epil.iter.cmp.not, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i.epil, !llvm.loop !11110

._crit_edge.i.i.i.i:                              ; preds = %._crit_edge.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.epil, %55
  %62 = icmp ugt i64 %.sroa.0.018.i.i.i.i, 7
  br i1 %62, label %65, label %63

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i, %.lr.ph.preheader.i.i.i.i.new
  %niter = phi i32 [ 0, %.lr.ph.preheader.i.i.i.i.new ], [ %niter.next.7, %.lr.ph.i.i.i.i ]
end_hunk_3
begin_hunk_4
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.i.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i

63:                                               ; preds = %._crit_edge.i.i.i.i
  %64 = add nuw nsw i64 %.sroa.0.018.i.i.i.i, 1
  br label %_RNvNtNtCsdNqyU9N9qTX_12sharded_slab4page4slot19exponential_backoff.exit.i.i.i.i

65:                                               ; preds = %._crit_edge.i.i.i.i
  tail call void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now(), !noalias !11107
  br label %_RNvNtNtCsdNqyU9N9qTX_12sharded_slab4page4slot19exponential_backoff.exit.i.i.i.i

_RNvNtNtCsdNqyU9N9qTX_12sharded_slab4page4slot19exponential_backoff.exit.i.i.i.i: ; preds = %65, %63, %47
  %.sroa.0.1.i.i.i.i = phi i64 [ 0, %47 ], [ %.sroa.0.018.i.i.i.i, %65 ], [ %64, %63 ]
  %.sroa.06.1.i.i.i.i = phi i64 [ %.sroa.01.0.i.i.i.i.i, %47 ], [ %.sroa.06.019.i.i.i.i, %65 ], [ %.sroa.06.019.i.i.i.i, %63 ] ; 2 uses
  %.sroa.02.1.i.i.i.i = phi i1 [ %.sroa.02.020.i.i.i.i, %47 ], [ true, %65 ], [ true, %63 ] ; 2 uses
  %66 = lshr i64 %.sroa.06.1.i.i.i.i, 51
  %67 = icmp eq i64 %29, %66
  %or.cond.not.i.i.i.i = or i1 %.sroa.02.1.i.i.i.i, %67
  br i1 %or.cond.not.i.i.i.i, label %47, label %_RNvMs0_NtCsdNqyU9N9qTX_12sharded_slab5shardINtB5_5ShardNtNtNtCsbG4i8A5DnWX_18tracing_subscriber8registry7sharded9DataInnerNtNtB7_3cfg13DefaultConfigE12clear_remoteCs7p2uQeJxui2_9deltalake.exit

68:                                               ; preds = %_RNvMs_NtCsdNqyU9N9qTX_12sharded_slab3tidINtB4_3TidNtNtB6_3cfg13DefaultConfigE7currentCs7p2uQeJxui2_9deltalake.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11112)
  %69 = and i64 %1, 274877906943                  ; 2 uses
  %70 = add nuw nsw i64 %69, 32
  %71 = lshr i64 %70, 6
  %72 = tail call range(i64 31, 65) i64 @llvm.ctlz.i64(i64 %71, i1 false)
  %73 = sub nuw nsw i64 64, %72                   ; 5 uses
  %74 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %75 = load i64, ptr %74, align 8, !alias.scope !11112, !noundef !4
  %.not.i3 = icmp ult i64 %73, %75
  br i1 %.not.i3, label %76, label %_RNvMs0_NtCsdNqyU9N9qTX_12sharded_slab5shardINtB5_5ShardNtNtNtCsbG4i8A5DnWX_18tracing_subscriber8registry7sharded9DataInnerNtNtB7_3cfg13DefaultConfigE12clear_remoteCs7p2uQeJxui2_9deltalake.exit

76:                                               ; preds = %68
  %77 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %78 = load ptr, ptr %77, align 8, !alias.scope !11112, !nonnull !4, !noundef !4
  %79 = getelementptr inbounds nuw [40 x i8], ptr %78, i64 %73 ; 3 uses
  %80 = lshr i64 %1, 51                           ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11115)
  %81 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %82 = load i64, ptr %81, align 8, !alias.scope !11118, !noundef !4 ; 2 uses
  %83 = icmp ult i64 %73, %82
  br i1 %83, label %_RNvMs0_NtCsdNqyU9N9qTX_12sharded_slab5shardINtB5_5ShardNtNtNtCsbG4i8A5DnWX_18tracing_subscriber8registry7sharded9DataInnerNtNtB7_3cfg13DefaultConfigE5localCs7p2uQeJxui2_9deltalake.exit.i, label %84

84:                                               ; preds = %76
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef range(i64 0, 34) %73, i64 noundef %82, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #43, !noalias !11118
  unreachable

_RNvMs0_NtCsdNqyU9N9qTX_12sharded_slab5shardINtB5_5ShardNtNtNtCsbG4i8A5DnWX_18tracing_subscriber8registry7sharded9DataInnerNtNtB7_3cfg13DefaultConfigE5localCs7p2uQeJxui2_9deltalake.exit.i: ; preds = %76
  %85 = load ptr, ptr %0, align 8, !alias.scope !11118, !nonnull !4, !noundef !4
  %86 = getelementptr inbounds nuw [8 x i8], ptr %85, i64 %73 ; 2 uses
  %87 = getelementptr inbounds nuw i8, ptr %79, i64 32
  %88 = load i64, ptr %87, align 8, !noalias !11112, !noundef !4
  %89 = sub i64 %69, %88                          ; 3 uses
  %90 = load ptr, ptr %79, align 8, !noalias !11119, !align !1680, !noundef !4 ; 2 uses
  %.not.i.i.i5 = icmp eq ptr %90, null
  br i1 %.not.i.i.i5, label %_RNvMs0_NtCsdNqyU9N9qTX_12sharded_slab5shardINtB5_5ShardNtNtNtCsbG4i8A5DnWX_18tracing_subscriber8registry7sharded9DataInnerNtNtB7_3cfg13DefaultConfigE12clear_remoteCs7p2uQeJxui2_9deltalake.exit, label %91

91:                                               ; preds = %_RNvMs0_NtCsdNqyU9N9qTX_12sharded_slab5shardINtB5_5ShardNtNtNtCsbG4i8A5DnWX_18tracing_subscriber8registry7sharded9DataInnerNtNtB7_3cfg13DefaultConfigE5localCs7p2uQeJxui2_9deltalake.exit.i
  %92 = getelementptr inbounds nuw i8, ptr %79, i64 8
  %93 = load i64, ptr %92, align 8, !noalias !11119, !noundef !4
  %94 = icmp ult i64 %89, %93
  br i1 %94, label %95, label %_RNvMs0_NtCsdNqyU9N9qTX_12sharded_slab5shardINtB5_5ShardNtNtNtCsbG4i8A5DnWX_18tracing_subscriber8registry7sharded9DataInnerNtNtB7_3cfg13DefaultConfigE12clear_remoteCs7p2uQeJxui2_9deltalake.exit

95:                                               ; preds = %91
  %96 = getelementptr inbounds nuw [96 x i8], ptr %90, i64 %89 ; 3 uses
  %97 = getelementptr inbounds nuw i8, ptr %96, i64 80 ; 2 uses
  %98 = load atomic i64, ptr %97 acquire, align 8, !noalias !11119 ; 2 uses
  %99 = lshr i64 %98, 51
  %100 = icmp eq i64 %80, %99
  br i1 %100, label %.lr.ph23.i.i.i.i6, label %_RNvMs0_NtCsdNqyU9N9qTX_12sharded_slab5shardINtB5_5ShardNtNtNtCsbG4i8A5DnWX_18tracing_subscriber8registry7sharded9DataInnerNtNtB7_3cfg13DefaultConfigE12clear_remoteCs7p2uQeJxui2_9deltalake.exit

.lr.ph23.i.i.i.i6:                                ; preds = %95
  %.cmp.i.i.i.i7 = icmp ult i64 %1, -4503599627370496
  %.v.i.i.i.i8 = select i1 %.cmp.i.i.i.i7, i64 1, i64 -8190
  %101 = add nsw i64 %.v.i.i.i.i8, %80
  %102 = shl nuw i64 %101, 51
  br label %103

103:                                              ; preds = %_RNvNtNtCsdNqyU9N9qTX_12sharded_slab4page4slot19exponential_backoff.exit.i.i.i.i14, %.lr.ph23.i.i.i.i6
  %.sroa.02.020.i.i.i.i9 = phi i1 [ false, %.lr.ph23.i.i.i.i6 ], [ %.sroa.02.1.i.i.i.i17, %_RNvNtNtCsdNqyU9N9qTX_12sharded_slab4page4slot19exponential_backoff.exit.i.i.i.i14 ]
  %.sroa.06.019.i.i.i.i10 = phi i64 [ %98, %.lr.ph23.i.i.i.i6 ], [ %.sroa.06.1.i.i.i.i16, %_RNvNtNtCsdNqyU9N9qTX_12sharded_slab4page4slot19exponential_backoff.exit.i.i.i.i14 ] ; 4 uses
  %.sroa.0.018.i.i.i.i11 = phi i64 [ 0, %.lr.ph23.i.i.i.i6 ], [ %.sroa.0.1.i.i.i.i15, %_RNvNtNtCsdNqyU9N9qTX_12sharded_slab4page4slot19exponential_backoff.exit.i.i.i.i14 ] ; 4 uses
  %104 = and i64 %.sroa.06.019.i.i.i.i10, 2251799813685247
  %105 = or disjoint i64 %104, %102
  %106 = cmpxchg ptr %97, i64 %.sroa.06.019.i.i.i.i10, i64 %105 acq_rel acquire, align 8, !noalias !11119 ; 2 uses
  %.sroa.18.0.in.i.i.i.i.i12 = extractvalue { i64, i1 } %106, 1
  %.sroa.01.0.i.i.i.i.i13 = extractvalue { i64, i1 } %106, 0 ; 2 uses
  br i1 %.sroa.18.0.in.i.i.i.i.i12, label %107, label %_RNvNtNtCsdNqyU9N9qTX_12sharded_slab4page4slot19exponential_backoff.exit.i.i.i.i14

107:                                              ; preds = %103
  %108 = and i64 %.sroa.01.0.i.i.i.i.i13, 2251799813685244
  %109 = icmp eq i64 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %107
  tail call void @_RNvXs6_NtNtCsbG4i8A5DnWX_18tracing_subscriber8registry7shardedNtB5_9DataInnerNtNtCsdNqyU9N9qTX_12sharded_slab5clear5Clear5clear(ptr noalias noundef nonnull align 8 dereferenceable(80) dereferenceable_or_null(80) %96), !noalias !11119
  %111 = load i64, ptr %86, align 8, !noalias !11119, !noundef !4
  %112 = getelementptr inbounds nuw i8, ptr %96, i64 88
  store i64 %111, ptr %112, align 8, !noalias !11119
  store i64 %89, ptr %86, align 8, !noalias !11119
  br label %_RNvMs0_NtCsdNqyU9N9qTX_12sharded_slab5shardINtB5_5ShardNtNtNtCsbG4i8A5DnWX_18tracing_subscriber8registry7sharded9DataInnerNtNtB7_3cfg13DefaultConfigE12clear_remoteCs7p2uQeJxui2_9deltalake.exit

113:                                              ; preds = %107
  %114 = trunc i64 %.sroa.0.018.i.i.i.i11 to i32
  %115 = and i32 %114, 31                         ; 2 uses
  %.not.i.i.i.i19 = icmp eq i32 %115, 31
  br i1 %.not.i.i.i.i19, label %._crit_edge.i.i.i.i24, label %.lr.ph.preheader.i.i.i.i20

.lr.ph.preheader.i.i.i.i20:                       ; preds = %113
  %116 = shl nuw nsw i32 1, %115
  %117 = freeze i32 %116                          ; 3 uses
  %118 = add i32 %117, -1
  %xtraiter42 = and i32 %117, 7                   ; 3 uses
  %119 = icmp ult i32 %118, 7
  br i1 %119, label %.lr.ph.i.i.i.i21.epil.preheader, label %.lr.ph.preheader.i.i.i.i20.new

.lr.ph.preheader.i.i.i.i20.new:                   ; preds = %.lr.ph.preheader.i.i.i.i20
  %unroll_iter46 = and i32 %117, -8
  br label %.lr.ph.i.i.i.i21

._crit_edge.i.i.i.i24.loopexit.unr-lcssa:         ; preds = %.lr.ph.i.i.i.i21
end_hunk_4
begin_hunk_5
  br i1 %lcmp.mod44.not, label %._crit_edge.i.i.i.i24, label %.lr.ph.i.i.i.i21.epil.preheader

.lr.ph.i.i.i.i21.epil.preheader:                  ; preds = %._crit_edge.i.i.i.i24.loopexit.unr-lcssa, %.lr.ph.preheader.i.i.i.i20
  %lcmp.mod45 = icmp ne i32 %xtraiter42, 0
  tail call void @llvm.assume(i1 %lcmp.mod45)
  br label %.lr.ph.i.i.i.i21.epil

end_hunk_5
begin_hunk_6
  %epil.iter43.cmp.not = icmp eq i32 %epil.iter43.next, %xtraiter42
  br i1 %epil.iter43.cmp.not, label %._crit_edge.i.i.i.i24, label %.lr.ph.i.i.i.i21.epil, !llvm.loop !11125

._crit_edge.i.i.i.i24:                            ; preds = %._crit_edge.i.i.i.i24.loopexit.unr-lcssa, %.lr.ph.i.i.i.i21.epil, %113
  %120 = icmp ugt i64 %.sroa.0.018.i.i.i.i11, 7
  br i1 %120, label %123, label %121

.lr.ph.i.i.i.i21:                                 ; preds = %.lr.ph.i.i.i.i21, %.lr.ph.preheader.i.i.i.i20.new
  %niter47 = phi i32 [ 0, %.lr.ph.preheader.i.i.i.i20.new ], [ %niter47.next.7, %.lr.ph.i.i.i.i21 ]
end_hunk_6
begin_hunk_7
  %niter47.ncmp.7 = icmp eq i32 %niter47.next.7, %unroll_iter46
  br i1 %niter47.ncmp.7, label %._crit_edge.i.i.i.i24.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i21

121:                                              ; preds = %._crit_edge.i.i.i.i24
  %122 = add nuw nsw i64 %.sroa.0.018.i.i.i.i11, 1
  br label %_RNvNtNtCsdNqyU9N9qTX_12sharded_slab4page4slot19exponential_backoff.exit.i.i.i.i14

123:                                              ; preds = %._crit_edge.i.i.i.i24
  tail call void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now(), !noalias !11122
  br label %_RNvNtNtCsdNqyU9N9qTX_12sharded_slab4page4slot19exponential_backoff.exit.i.i.i.i14

_RNvNtNtCsdNqyU9N9qTX_12sharded_slab4page4slot19exponential_backoff.exit.i.i.i.i14: ; preds = %123, %121, %103
  %.sroa.0.1.i.i.i.i15 = phi i64 [ 0, %103 ], [ %.sroa.0.018.i.i.i.i11, %123 ], [ %122, %121 ]
  %.sroa.06.1.i.i.i.i16 = phi i64 [ %.sroa.01.0.i.i.i.i.i13, %103 ], [ %.sroa.06.019.i.i.i.i10, %123 ], [ %.sroa.06.019.i.i.i.i10, %121 ] ; 2 uses
  %.sroa.02.1.i.i.i.i17 = phi i1 [ %.sroa.02.020.i.i.i.i9, %103 ], [ true, %123 ], [ true, %121 ] ; 2 uses
  %124 = lshr i64 %.sroa.06.1.i.i.i.i16, 51
  %125 = icmp eq i64 %80, %124
  %or.cond.not.i.i.i.i18 = or i1 %.sroa.02.1.i.i.i.i17, %125
  br i1 %or.cond.not.i.i.i.i18, label %103, label %_RNvMs0_NtCsdNqyU9N9qTX_12sharded_slab5shardINtB5_5ShardNtNtNtCsbG4i8A5DnWX_18tracing_subscriber8registry7sharded9DataInnerNtNtB7_3cfg13DefaultConfigE12clear_remoteCs7p2uQeJxui2_9deltalake.exit

_RNvMs0_NtCsdNqyU9N9qTX_12sharded_slab5shardINtB5_5ShardNtNtNtCsbG4i8A5DnWX_18tracing_subscriber8registry7sharded9DataInnerNtNtB7_3cfg13DefaultConfigE12clear_remoteCs7p2uQeJxui2_9deltalake.exit: ; preds = %_RNvNtNtCsdNqyU9N9qTX_12sharded_slab4page4slot19exponential_backoff.exit.i.i.i.i, %_RNvNtNtCsdNqyU9N9qTX_12sharded_slab4page4slot19exponential_backoff.exit.i.i.i.i14, %110, %95, %91, %_RNvMs0_NtCsdNqyU9N9qTX_12sharded_slab5shardINtB5_5ShardNtNtNtCsbG4i8A5DnWX_18tracing_subscriber8registry7sharded9DataInnerNtNtB7_3cfg13DefaultConfigE5localCs7p2uQeJxui2_9deltalake.exit.i, %68, %54, %39, %35, %26, %19
  ret void
}

end_hunk_7
