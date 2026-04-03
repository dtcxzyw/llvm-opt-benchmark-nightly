begin_hunk_0
define linkonce_odr void @_ZN8simdjson14to_json_stringERNS_8fallback8ondemand5valueE(ptr dead_on_unwind noalias writable sret(%"struct.simdjson::simdjson_result.1061") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #14 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.simdjson::fallback::ondemand::array", align 8 ; 6 uses
  %3 = alloca %"class.simdjson::fallback::ondemand::object", align 8 ; 6 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !1922   ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1924 ; 6 uses
end_hunk_0
begin_hunk_1
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.u
  %i.w = load i8, ptr %i.v, align 1, !tbaa !26, !noalias !2041
  %.not8.i.i = icmp eq i8 %i.w, 91
  br i1 %.not8.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %i.m, i64 4 ; 2 uses
end_hunk_1
begin_hunk_2
  %i.ag = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.af
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !26, !noalias !2041
  %i.ai = icmp eq i8 %i.ah, 93
  br i1 %i.ai, label %4, label %_ZN8simdjson8fallback8ondemand14value_iterator13started_arrayEv.exit

4:                                                ; preds = %._crit_edge
  %5 = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  store ptr %5, ptr %i.l, align 8, !tbaa !1883, !noalias !2041
  br label %_ZN8simdjson8fallback8ondemand14value_iterator13started_arrayEv.exit

bb.e:                                             ; preds = %bb.c
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 17, ptr %i.aj, align 8, !tbaa !1913
  br label %bb.f

_ZN8simdjson8fallback8ondemand14value_iterator13started_arrayEv.exit: ; preds = %._crit_edge, %4
  %.sink = phi i32 [ -1, %4 ], [ 1, %._crit_edge ]
  %i.ak = add nsw i32 %i.y, %.sink
  store i32 %i.ak, ptr %i.ac, align 4, !tbaa !1897, !noalias !2041
  %.sroa.077.sroa.6.0.copyload = load ptr, ptr %i.b, align 8, !tbaa !814, !noalias !2041
end_hunk_2
begin_hunk_3
  call void @_ZN8simdjson14to_json_stringERNS_8fallback8ondemand5arrayE(ptr dead_on_unwind writable sret(%"struct.simdjson::simdjson_result.1061") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %2) #32
  br label %bb.f

bb.f:                                             ; preds = %_ZN8simdjson8fallback8ondemand14value_iterator13started_arrayEv.exit, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  br label %bb.r

end_hunk_3
begin_hunk_4
  br label %._crit_edge164

._crit_edge164:                                   ; preds = %bb.g, %bb.i
  %i.bc = phi i32 [ %i.at, %bb.i ], [ %i.au, %bb.g ] ; 3 uses
  %i.bd = phi ptr [ %i.bb, %bb.i ], [ %i.aq, %bb.g ] ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.bf = icmp eq ptr %i.bd, %i.be
end_hunk_4
begin_hunk_5
  %or.cond.i.i = icmp ne i32 %i.bc, 2147483647
  tail call void @llvm.assume(i1 %or.cond.i.i), !noalias !2044
  store i32 %i.bo, ptr %i.bm, align 4, !tbaa !1897, !noalias !2044
  br label %_ZN8simdjson8fallback8ondemand6object5startERNS1_14value_iteratorE.exit.thread.critedge

_ZN8simdjson8fallback8ondemand6object5startERNS1_14value_iteratorE.exit.thread.critedge: ; preds = %bb.j, %._crit_edge164
  %.sroa.050.sroa.6.0.copyload = load ptr, ptr %i.b, align 8, !tbaa !814
  store ptr %i.a, ptr %3, align 8, !tbaa !1899
  %6 = load <2 x i32>, ptr %i.ao, align 8
  store <2 x i32> %6, ptr %i.am, align 8
  store ptr %.sroa.050.sroa.6.0.copyload, ptr %i.an, align 8, !tbaa !814
  call void @_ZN8simdjson14to_json_stringERNS_8fallback8ondemand6objectE(ptr dead_on_unwind writable sret(%"struct.simdjson::simdjson_result.1061") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %3) #32
  br label %bb.k
end_hunk_5
