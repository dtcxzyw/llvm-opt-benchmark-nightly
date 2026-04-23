inline.NumInlined: 36272
inline.NumDeleted: 7699
begin_hunk_0_@_ZN8facebook5velox12_GLOBAL__N_121CastFromJsonTypedImplIN8simdjson8fallback8ondemand5valueEE5applyILNS0_8TypeKindE30EEENS3_10error_codeES6_RNS0_4exec13GenericWriterE:bb.a
  %i.be = load ptr, ptr %.sroa.0.sroa.0.0.copyload, align 8, !tbaa !9620
  %i.bf = load i32, ptr %i.az, align 4, !tbaa !3
  %i.bg = zext i32 %i.bf to i64
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.bg ; 3 uses
  %.0.copyload.i.i.i = load i32, ptr %i.bh, align 1
  %.not.i35.i = icmp eq i32 %.0.copyload.i.i.i, 1819047278
  br i1 %.not.i35.i, label %bb.h, label %_ZNK8simdjson8fallback8ondemand14value_iterator10parse_nullEPKh.exit.i

end_hunk_0
begin_hunk_1_@_ZN8facebook5velox12_GLOBAL__N_121CastFromJsonTypedImplIN8simdjson8fallback8ondemand5valueEE5applyILNS0_8TypeKindE30EEENS3_10error_codeES6_RNS0_4exec13GenericWriterE:bb.a
  %i.bl = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal24structural_or_whitespaceE, i64 %i.bk
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !146, !range !110, !noundef !111
  %.not397 = icmp eq i8 %i.bm, 0
  br i1 %.not397, label %_ZNK8simdjson8fallback8ondemand14value_iterator10parse_nullEPKh.exit.i, label %.critedge.i.i.thread

_ZNK8simdjson8fallback8ondemand14value_iterator10parse_nullEPKh.exit.i: ; preds = %bb.h, %_ZN8simdjson8fallback8ondemand14value_iterator20peek_non_root_scalarEPKc.exit.i
  %15 = load i8, ptr %i.bh, align 1, !tbaa !37
  %.not = icmp eq i8 %15, 110
  br i1 %.not, label %_ZN8simdjson8fallback8ondemand14value_iterator7is_nullEv.exit.i, label %.critedge.i

_ZN8simdjson8fallback8ondemand14value_iterator7is_nullEv.exit.i: ; preds = %_ZNK8simdjson8fallback8ondemand14value_iterator10parse_nullEPKh.exit.i
  %i.bn = tail call ptr @__cxa_allocate_exception(i64 16) #39, !inline_history !10039 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN8simdjson14simdjson_errorE, i64 16), ptr %i.bn, align 8, !tbaa !19
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
end_hunk_1
