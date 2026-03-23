begin_hunk_0

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i, %115
  %108 = call noundef zeroext i1 @_ZNK4YAML5RegEx7MatchesINS_16StringCharSourceEEEbRKT_(ptr noundef nonnull align 8 dereferenceable(32) %102, ptr noundef nonnull align 8 dereferenceable(24) %19)
  br i1 %108, label %_ZN4YAML5Utils12_GLOBAL__N_118IsValidPlainScalarERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_8FlowType5valueEb.exit.thread21, label %109

109:                                              ; preds = %.lr.ph.split.us.i
  %110 = load ptr, ptr %19, align 8, !tbaa !23
end_hunk_0
begin_hunk_1
  %112 = getelementptr i8, ptr %110, i64 %111
  %113 = load i8, ptr %112, align 1, !tbaa !17
  %114 = icmp slt i8 %113, 0
  br i1 %114, label %_ZN4YAML5Utils12_GLOBAL__N_118IsValidPlainScalarERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_8FlowType5valueEb.exit.thread21, label %115

115:                                              ; preds = %109
  %116 = add i64 %111, 1                          ; 2 uses
end_hunk_1
begin_hunk_2

.lr.ph.split.i:                                   ; preds = %.lr.ph.i
  %118 = call noundef zeroext i1 @_ZNK4YAML5RegEx7MatchesINS_16StringCharSourceEEEbRKT_(ptr noundef nonnull align 8 dereferenceable(32) %102, ptr noundef nonnull align 8 dereferenceable(24) %19)
  br i1 %118, label %_ZN4YAML5Utils12_GLOBAL__N_118IsValidPlainScalarERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_8FlowType5valueEb.exit.thread21, label %.lr.ph62.i

119:                                              ; preds = %.lr.ph62.i
  %120 = call noundef zeroext i1 @_ZNK4YAML5RegEx7MatchesINS_16StringCharSourceEEEbRKT_(ptr noundef nonnull align 8 dereferenceable(32) %102, ptr noundef nonnull align 8 dereferenceable(24) %19)
  br i1 %120, label %_ZN4YAML5Utils12_GLOBAL__N_118IsValidPlainScalarERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_8FlowType5valueEb.exit.thread21, label %.lr.ph62.i, !llvm.loop !27

121:                                              ; preds = %46
  %122 = landingpad { ptr, i32 }
end_hunk_2
begin_hunk_3
  call void @__cxa_guard_abort(ptr nonnull %_ZGVZN4YAML5Utils12_GLOBAL__N_118IsValidPlainScalarERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_8FlowType5valueEbE16disallowed_block.sink.i) #13
  resume { ptr, i32 } %.pn45.pn.pn.pn.pn.pn.pn.pn.pn.pn.i

_ZN4YAML5Utils12_GLOBAL__N_118IsValidPlainScalarERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_8FlowType5valueEb.exit.thread21: ; preds = %119, %109, %.lr.ph.split.us.i, %.lr.ph.split.i
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #13
  br label %_ZN4YAML5Utils12_GLOBAL__N_118IsValidPlainScalarERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_8FlowType5valueEb.exit.thread

end_hunk_3
begin_hunk_4
  %or.cond.i.i23.i.i.i.i.i = and i1 %3, %204
  %205 = icmp eq i8 %203, 10
  %206 = or i1 %205, %or.cond.i.i23.i.i.i.i.i
  br i1 %206, label %_ZN4YAML5Utils12_GLOBAL__N_125IsValidSingleQuotedScalarERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb.exit.loopexit.split.loop.exit69, label %207

207:                                              ; preds = %201
  %208 = getelementptr inbounds nuw i8, ptr %.sroa.044.063.i.i.i.i.i, i64 3
end_hunk_4
begin_hunk_5
  %or.cond.i.i24.i.i.i.i.i = and i1 %3, %210
  %211 = icmp eq i8 %209, 10
  %212 = or i1 %211, %or.cond.i.i24.i.i.i.i.i
  br i1 %212, label %_ZN4YAML5Utils12_GLOBAL__N_125IsValidSingleQuotedScalarERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb.exit.loopexit.split.loop.exit71, label %213

213:                                              ; preds = %207
  %214 = getelementptr inbounds nuw i8, ptr %.sroa.044.063.i.i.i.i.i, i64 4
end_hunk_5
begin_hunk_6
  %235 = getelementptr inbounds nuw i8, ptr %.sroa.044.063.i.i.i.i.i, i64 1
  br label %_ZN4YAML5Utils12_GLOBAL__N_125IsValidSingleQuotedScalarERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb.exit

_ZN4YAML5Utils12_GLOBAL__N_125IsValidSingleQuotedScalarERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb.exit.loopexit.split.loop.exit69: ; preds = %201
  %236 = getelementptr inbounds nuw i8, ptr %.sroa.044.063.i.i.i.i.i, i64 2
  br label %_ZN4YAML5Utils12_GLOBAL__N_125IsValidSingleQuotedScalarERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb.exit

_ZN4YAML5Utils12_GLOBAL__N_125IsValidSingleQuotedScalarERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb.exit.loopexit.split.loop.exit71: ; preds = %207
  %237 = getelementptr inbounds nuw i8, ptr %.sroa.044.063.i.i.i.i.i, i64 3
  br label %_ZN4YAML5Utils12_GLOBAL__N_125IsValidSingleQuotedScalarERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb.exit

_ZN4YAML5Utils12_GLOBAL__N_125IsValidSingleQuotedScalarERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb.exit: ; preds = %190, %_ZN4YAML5Utils12_GLOBAL__N_125IsValidSingleQuotedScalarERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb.exit.loopexit.split.loop.exit, %_ZN4YAML5Utils12_GLOBAL__N_125IsValidSingleQuotedScalarERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb.exit.loopexit.split.loop.exit69, %_ZN4YAML5Utils12_GLOBAL__N_125IsValidSingleQuotedScalarERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb.exit.loopexit.split.loop.exit71, %._crit_edge.i.i.i.i.i, %218, %._crit_edge._crit_edge69.i.i.i.i.i, %._crit_edge._crit_edge.i.i.i.i.i
  %.sroa.08.0.in.sroa.speculated.i.i.i.i.i = phi ptr [ %.sroa.044.1.i.i.i.i.i, %._crit_edge._crit_edge69.i.i.i.i.i ], [ %spec.select.i.i.i.i.i, %._crit_edge._crit_edge.i.i.i.i.i ], [ %185, %._crit_edge.i.i.i.i.i ], [ %.sroa.044.0.lcssa.i.i.i.i.i, %218 ], [ %237, %_ZN4YAML5Utils12_GLOBAL__N_125IsValidSingleQuotedScalarERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb.exit.loopexit.split.loop.exit71 ], [ %236, %_ZN4YAML5Utils12_GLOBAL__N_125IsValidSingleQuotedScalarERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb.exit.loopexit.split.loop.exit69 ], [ %235, %_ZN4YAML5Utils12_GLOBAL__N_125IsValidSingleQuotedScalarERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb.exit.loopexit.split.loop.exit ], [ %.sroa.044.063.i.i.i.i.i, %190 ]
  %238 = icmp eq ptr %185, %.sroa.08.0.in.sroa.speculated.i.i.i.i.i
  %.9 = select i1 %238, i32 1, i32 2
  br label %_ZN4YAML5Utils12_GLOBAL__N_118IsValidPlainScalarERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_8FlowType5valueEb.exit.thread
end_hunk_6
begin_hunk_7
  %251 = getelementptr inbounds nuw i8, ptr %.sroa.038.057.i.i.i.i.i, i64 1
  %252 = load i8, ptr %251, align 1, !tbaa !17
  %253 = icmp slt i8 %252, 0
  br i1 %253, label %_ZN4YAML5Utils12_GLOBAL__N_120IsValidLiteralScalarERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_8FlowType5valueEb.exit.loopexit.split.loop.exit63, label %254

254:                                              ; preds = %250
  %255 = getelementptr inbounds nuw i8, ptr %.sroa.038.057.i.i.i.i.i, i64 2
  %256 = load i8, ptr %255, align 1, !tbaa !17
  %257 = icmp slt i8 %256, 0
  br i1 %257, label %_ZN4YAML5Utils12_GLOBAL__N_120IsValidLiteralScalarERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_8FlowType5valueEb.exit.loopexit.split.loop.exit61, label %258

258:                                              ; preds = %254
  %259 = getelementptr inbounds nuw i8, ptr %.sroa.038.057.i.i.i.i.i, i64 3
end_hunk_7
begin_hunk_8
  %282 = getelementptr inbounds nuw i8, ptr %.sroa.038.057.i.i.i.i.i, i64 3
  br label %_ZN4YAML5Utils12_GLOBAL__N_120IsValidLiteralScalarERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_8FlowType5valueEb.exit

_ZN4YAML5Utils12_GLOBAL__N_120IsValidLiteralScalarERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_8FlowType5valueEb.exit.loopexit.split.loop.exit61: ; preds = %254
  %283 = getelementptr inbounds nuw i8, ptr %.sroa.038.057.i.i.i.i.i, i64 2
  br label %_ZN4YAML5Utils12_GLOBAL__N_120IsValidLiteralScalarERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_8FlowType5valueEb.exit

_ZN4YAML5Utils12_GLOBAL__N_120IsValidLiteralScalarERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_8FlowType5valueEb.exit.loopexit.split.loop.exit63: ; preds = %250
  %284 = getelementptr inbounds nuw i8, ptr %.sroa.038.057.i.i.i.i.i, i64 1
  br label %_ZN4YAML5Utils12_GLOBAL__N_120IsValidLiteralScalarERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_8FlowType5valueEb.exit

_ZN4YAML5Utils12_GLOBAL__N_120IsValidLiteralScalarERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_8FlowType5valueEb.exit: ; preds = %.lr.ph.split.i.i.i.i.i, %_ZN4YAML5Utils12_GLOBAL__N_120IsValidLiteralScalarERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_8FlowType5valueEb.exit.loopexit.split.loop.exit, %_ZN4YAML5Utils12_GLOBAL__N_120IsValidLiteralScalarERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_8FlowType5valueEb.exit.loopexit.split.loop.exit61, %_ZN4YAML5Utils12_GLOBAL__N_120IsValidLiteralScalarERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_8FlowType5valueEb.exit.loopexit.split.loop.exit63, %268, %._crit_edge._crit_edge70.i.i.i.i.i, %._crit_edge._crit_edge.i.i.i.i.i15
  %.sroa.08.0.in.sroa.speculated.i.i.i.i.i17 = phi ptr [ %.sroa.038.1.i.i.i.i.i, %._crit_edge._crit_edge70.i.i.i.i.i ], [ %spec.select.i.i.i.i.i16, %._crit_edge._crit_edge.i.i.i.i.i15 ], [ %.sroa.038.0.lcssa.i.i.i.i.i, %268 ], [ %284, %_ZN4YAML5Utils12_GLOBAL__N_120IsValidLiteralScalarERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_8FlowType5valueEb.exit.loopexit.split.loop.exit63 ], [ %283, %_ZN4YAML5Utils12_GLOBAL__N_120IsValidLiteralScalarERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_8FlowType5valueEb.exit.loopexit.split.loop.exit61 ], [ %282, %_ZN4YAML5Utils12_GLOBAL__N_120IsValidLiteralScalarERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_8FlowType5valueEb.exit.loopexit.split.loop.exit ], [ %.sroa.038.057.i.i.i.i.i, %.lr.ph.split.i.i.i.i.i ]
  %285 = icmp eq ptr %243, %.sroa.08.0.in.sroa.speculated.i.i.i.i.i17
  %cond.fr = freeze i1 %285
  br i1 %cond.fr, label %_ZN4YAML5Utils12_GLOBAL__N_120IsValidLiteralScalarERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_8FlowType5valueEb.exit.thread25, label %_ZN4YAML5Utils12_GLOBAL__N_118IsValidPlainScalarERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_8FlowType5valueEb.exit.thread

_ZN4YAML5Utils12_GLOBAL__N_120IsValidLiteralScalarERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_8FlowType5valueEb.exit.thread25: ; preds = %._crit_edge.i.i.i.i.i14, %_ZN4YAML5Utils12_GLOBAL__N_120IsValidLiteralScalarERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_8FlowType5valueEb.exit
  br label %_ZN4YAML5Utils12_GLOBAL__N_118IsValidPlainScalarERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_8FlowType5valueEb.exit.thread

_ZN4YAML5Utils12_GLOBAL__N_118IsValidPlainScalarERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_8FlowType5valueEb.exit.thread: ; preds = %239, %36, %28, %20, %_ZN4YAML5Utils12_GLOBAL__N_120IsValidLiteralScalarERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_8FlowType5valueEb.exit.thread25, %_ZN4YAML5Utils12_GLOBAL__N_120IsValidLiteralScalarERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_8FlowType5valueEb.exit, %.loopexit, %_ZN4YAML5Utils12_GLOBAL__N_118IsValidPlainScalarERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_8FlowType5valueEb.exit.thread21, %4, %_ZN4YAML5Utils12_GLOBAL__N_125IsValidSingleQuotedScalarERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb.exit
  %.0 = phi i32 [ %.9, %_ZN4YAML5Utils12_GLOBAL__N_125IsValidSingleQuotedScalarERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb.exit ], [ 2, %4 ], [ 2, %36 ], [ 0, %.loopexit ], [ 2, %_ZN4YAML5Utils12_GLOBAL__N_118IsValidPlainScalarERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_8FlowType5valueEb.exit.thread21 ], [ 3, %_ZN4YAML5Utils12_GLOBAL__N_120IsValidLiteralScalarERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_8FlowType5valueEb.exit.thread25 ], [ 2, %_ZN4YAML5Utils12_GLOBAL__N_120IsValidLiteralScalarERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_8FlowType5valueEb.exit ], [ 2, %20 ], [ 2, %28 ], [ 2, %239 ]
  ret i32 %.0
}

end_hunk_8
