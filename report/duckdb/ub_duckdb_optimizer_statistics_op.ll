inline.NumInlined: 3433
inline.NumDeleted: 1871
begin_hunk_0_@_ZN6duckdb20StatisticsPropagator20TryExecuteAggregatesERNS_16LogicalAggregateERNS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS4_ELb1EEE:bb.a
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_112MaxValueCompINS0_12NumericStatsEEESt14default_deleteIS4_EED2Ev.exit.i.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i10.i, %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_112MaxValueCompINS0_11StringStatsEEESt14default_deleteIS4_EED2Ev.exit.i.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i.i
  %.sink.i9.sink.i = phi ptr [ getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN6duckdb12_GLOBAL__N_112MinValueCompINS_11StringStatsEEE, i64 16), %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i.i ], [ getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN6duckdb12_GLOBAL__N_112MaxValueCompINS_11StringStatsEEE, i64 16), %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_112MaxValueCompINS0_11StringStatsEEESt14default_deleteIS4_EED2Ev.exit.i.i ], [ getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN6duckdb12_GLOBAL__N_112MaxValueCompINS_12NumericStatsEEE, i64 16), %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_112MaxValueCompINS0_12NumericStatsEEESt14default_deleteIS4_EED2Ev.exit.i.i ], [ getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN6duckdb12_GLOBAL__N_112MinValueCompINS_12NumericStatsEEE, i64 16), %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i10.i ] ; 2 uses
  %i.di = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #25
          to label %bb.ad unwind label %bb.ac     ; 5 uses

end_hunk_0
begin_hunk_1_@_ZN6duckdb20StatisticsPropagator20TryExecuteAggregatesERNS_16LogicalAggregateERNS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS4_ELb1EEE:bb.a
_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_115ValueComparatorESt14default_deleteIS2_EED2Ev.exit317.loopexit.split-lp: ; preds = %bb.ag
  %lpad.loopexit.split-lp530 = landingpad { ptr, i32 }
          cleanup
  %.pre702 = load ptr, ptr %i.di, align 8, !tbaa !43
  br label %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_115ValueComparatorESt14default_deleteIS2_EED2Ev.exit317

_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_115ValueComparatorESt14default_deleteIS2_EED2Ev.exit317: ; preds = %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_115ValueComparatorESt14default_deleteIS2_EED2Ev.exit317.loopexit.split-lp, %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_115ValueComparatorESt14default_deleteIS2_EED2Ev.exit317.loopexit
  %35 = phi ptr [ %.sink.i9.sink.i, %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_115ValueComparatorESt14default_deleteIS2_EED2Ev.exit317.loopexit ], [ %.pre702, %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_115ValueComparatorESt14default_deleteIS2_EED2Ev.exit317.loopexit.split-lp ]
  %lpad.phi531 = phi { ptr, i32 } [ %lpad.loopexit529, %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_115ValueComparatorESt14default_deleteIS2_EED2Ev.exit317.loopexit ], [ %lpad.loopexit.split-lp530, %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_115ValueComparatorESt14default_deleteIS2_EED2Ev.exit317.loopexit.split-lp ]
  %i.ev = getelementptr inbounds nuw i8, ptr %35, i64 8
  %i.ew = load ptr, ptr %i.ev, align 8
  call void %i.ew(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.di) #23, !inline_history !66
end_hunk_1
