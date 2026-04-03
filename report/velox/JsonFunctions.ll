begin_hunk_0
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  br label %_ZNOSt8optionalIiE5valueEv.exit

_ZNOSt8optionalIiE5valueEv.exit:                  ; preds = %bb.g, %bb.f, %bb.i
  %.0 = phi i1 [ %i.ba, %bb.i ], [ false, %bb.f ], [ %spec.select, %bb.g ]
  ret i1 %.0
}
end_hunk_0
begin_hunk_1
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  br label %_ZNOSt8optionalIiE5valueEv.exit

_ZNOSt8optionalIiE5valueEv.exit:                  ; preds = %bb.g, %bb.f, %bb.i
  %.0 = phi i1 [ %i.bs, %bb.i ], [ false, %bb.f ], [ %spec.select, %bb.g ]
  ret i1 %.0
}
end_hunk_1
begin_hunk_2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  br label %_ZNOSt8optionalIiE5valueEv.exit

_ZNOSt8optionalIiE5valueEv.exit:                  ; preds = %bb.g, %bb.f, %bb.i
  %.0 = phi i1 [ %i.bc, %bb.i ], [ false, %bb.f ], [ %spec.select, %bb.g ]
  ret i1 %.0
}
end_hunk_2
begin_hunk_3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  br label %_ZNOSt8optionalIiE5valueEv.exit

_ZNOSt8optionalIiE5valueEv.exit:                  ; preds = %bb.g, %bb.f, %bb.i
  %.0 = phi i1 [ %i.bu, %bb.i ], [ false, %bb.f ], [ %spec.select, %bb.g ]
  ret i1 %.0
}
end_hunk_3
begin_hunk_4
  %i.bl = icmp slt i32 %i.bk, 0
  br label %_ZNOSt8optionalIiE5valueEv.exit

_ZNOSt8optionalIiE5valueEv.exit:                  ; preds = %bb.g, %bb.f, %bb.i
  %.0 = phi i1 [ %i.bl, %bb.i ], [ false, %bb.f ], [ %spec.select, %bb.g ]
  ret i1 %.0
}
end_hunk_4
begin_hunk_5
define linkonce_odr void @_ZN8simdjson14to_json_stringERNS_8fallback8ondemand5valueE(ptr dead_on_unwind noalias writable sret(%"struct.simdjson::simdjson_result.114") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #8 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.simdjson::fallback::ondemand::array", align 8 ; 6 uses
  %3 = alloca %"class.simdjson::fallback::ondemand::object", align 8 ; 7 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !215    ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !217  ; 6 uses
end_hunk_5
begin_hunk_6
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.u
  %i.w = load i8, ptr %i.v, align 1, !tbaa !20, !noalias !2377
  %.not8.i.i = icmp eq i8 %i.w, 91
  br i1 %.not8.i.i, label %bb.d, label %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand5arrayEE3getIS3_EENS_10error_codeERT_.exit

bb.d:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %i.m, i64 4 ; 2 uses
end_hunk_6
begin_hunk_7
  %i.ag = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.af
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !20, !noalias !2377
  %i.ai = icmp eq i8 %i.ah, 93
  br i1 %i.ai, label %bb.e, label %_ZN8simdjson8fallback8ondemand14value_iterator13started_arrayEv.exit.i

bb.e:                                             ; preds = %._crit_edge
  %i.aj = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  store ptr %i.aj, ptr %i.l, align 8, !tbaa !21, !noalias !2377
  br label %_ZN8simdjson8fallback8ondemand14value_iterator13started_arrayEv.exit.i

_ZN8simdjson8fallback8ondemand14value_iterator13started_arrayEv.exit.i: ; preds = %._crit_edge, %bb.e
  %.sink = phi i32 [ -1, %bb.e ], [ 1, %._crit_edge ]
  %i.ak = add nsw i32 %i.y, %.sink
  store i32 %i.ak, ptr %i.ac, align 4, !tbaa !41, !noalias !2377
  %.sroa.046.sroa.6.0.copyload = load ptr, ptr %i.b, align 8, !tbaa !40, !noalias !2377
end_hunk_7
begin_hunk_8
  call void @_ZN8simdjson14to_json_stringERNS_8fallback8ondemand5arrayE(ptr dead_on_unwind writable sret(%"struct.simdjson::simdjson_result.114") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %2) #27
  br label %bb.f

_ZN8simdjson15simdjson_resultINS_8fallback8ondemand5arrayEE3getIS3_EENS_10error_codeERT_.exit: ; preds = %bb.c
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 17, ptr %4, align 8, !tbaa !2210
  br label %bb.f

bb.f:                                             ; preds = %_ZN8simdjson8fallback8ondemand14value_iterator13started_arrayEv.exit.i, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand5arrayEE3getIS3_EENS_10error_codeERT_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  br label %bb.r

end_hunk_8
begin_hunk_9
  br label %._crit_edge164

._crit_edge164:                                   ; preds = %bb.g, %bb.i
  %i.bc = phi i32 [ %i.at, %bb.i ], [ %i.au, %bb.g ] ; 4 uses
  %i.bd = phi ptr [ %i.bb, %bb.i ], [ %i.aq, %bb.g ] ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.bf = icmp eq ptr %i.bd, %i.be
end_hunk_9
begin_hunk_10
  %or.cond.i.i21 = icmp ne i32 %i.bc, 2147483647
  tail call void @llvm.assume(i1 %or.cond.i.i21), !noalias !2380
  store i32 %i.bo, ptr %i.bm, align 4, !tbaa !41, !noalias !2380
  %.sroa.073.sroa.4.0.copyload.pre = load i32, ptr %i.ao, align 8, !tbaa !3
  br label %_ZN8simdjson8fallback8ondemand6object5startERNS1_14value_iteratorE.exit.thread.critedge

_ZN8simdjson8fallback8ondemand6object5startERNS1_14value_iteratorE.exit.thread.critedge: ; preds = %bb.j, %._crit_edge164
  %.sroa.073.sroa.4.0.copyload = phi i32 [ %.sroa.073.sroa.4.0.copyload.pre, %bb.j ], [ %i.bc, %._crit_edge164 ]
  %.sroa.073.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.073.sroa.5.0.copyload = load i32, ptr %.sroa.073.sroa.5.0..sroa_idx, align 4
  %.sroa.073.sroa.6.0.copyload = load ptr, ptr %i.b, align 8, !tbaa !40
  store ptr %i.a, ptr %3, align 8, !tbaa !50
  store i32 %.sroa.073.sroa.4.0.copyload, ptr %i.am, align 8, !tbaa !3
  %.sroa.030.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 %.sroa.073.sroa.5.0.copyload, ptr %.sroa.030.sroa.6.0..sroa_idx, align 4
  store ptr %.sroa.073.sroa.6.0.copyload, ptr %i.an, align 8, !tbaa !40
  call void @_ZN8simdjson14to_json_stringERNS_8fallback8ondemand6objectE(ptr dead_on_unwind writable sret(%"struct.simdjson::simdjson_result.114") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %3) #27
  br label %bb.k
end_hunk_10
