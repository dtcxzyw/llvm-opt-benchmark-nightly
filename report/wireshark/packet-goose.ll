Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-goose?download=true
inline.NumInlined: 4
inline.NumDeleted: 3
begin_hunk_0_@dissect_goose_GSEMngtRequests:bb.a
  %i.a = load i32, ptr @ett_goose_GSEMngtRequests, align 4
  %i.b = tail call i32 @dissect_ber_choice(ptr noundef %3, ptr noundef %4, ptr noundef %1, i32 noundef %2, ptr noundef @GSEMngtRequests_choice, i32 noundef %5, i32 noundef %i.a, ptr noundef null)
  ret i32 %i.b
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_goose_GSEMngtResponses(i1 zeroext %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) #0 {
bb.a:
  %i.a = load i32, ptr @ett_goose_GSEMngtResponses, align 4
  %i.b = tail call i32 @dissect_ber_choice(ptr noundef %3, ptr noundef %4, ptr noundef %1, i32 noundef %2, ptr noundef @GSEMngtResponses_choice, i32 noundef %5, i32 noundef %i.a, ptr noundef null)
  ret i32 %i.b
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_goose_GetReferenceRequestPdu(i1 noundef zeroext %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) #0 {
bb.a:
  %i.a = load i32, ptr @ett_goose_GetReferenceRequestPdu, align 4
  %i.b = tail call i32 @dissect_ber_sequence(i1 noundef zeroext %0, ptr noundef %3, ptr noundef %4, ptr noundef %1, i32 noundef %2, ptr noundef @GetReferenceRequestPdu_sequence, i32 noundef %5, i32 noundef %i.a)
  ret i32 %i.b
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_goose_GetElementRequestPdu(i1 noundef zeroext %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) #0 {
bb.a:
  %i.a = load i32, ptr @ett_goose_GetElementRequestPdu, align 4
  %i.b = tail call i32 @dissect_ber_sequence(i1 noundef zeroext %0, ptr noundef %3, ptr noundef %4, ptr noundef %1, i32 noundef %2, ptr noundef @GetElementRequestPdu_sequence, i32 noundef %5, i32 noundef %i.a)
  ret i32 %i.b
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_goose_VisibleString(i1 noundef zeroext %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) #0 {
bb.a:
  %i.a = tail call i32 @dissect_ber_restricted_string(i1 noundef zeroext %0, i32 noundef 26, ptr noundef %3, ptr noundef %4, ptr noundef %1, i32 noundef %2, i32 noundef %5, ptr noundef null)
  ret i32 %i.a
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_goose_T_getReferenceRequest_offset(i1 noundef zeroext %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) #0 {
bb.a:
  %i.a = load i32, ptr @ett_goose_T_getReferenceRequest_offset, align 4
  %i.b = tail call i32 @dissect_ber_sequence_of(i1 noundef zeroext %0, ptr noundef %3, ptr noundef %4, ptr noundef %1, i32 noundef %2, ptr noundef @T_getReferenceRequest_offset_sequence_of, i32 noundef %5, i32 noundef %i.a)
  ret i32 %i.b
}

; Function Attrs: null_pointer_is_valid
declare i32 @dissect_ber_restricted_string(i1 noundef zeroext, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @dissect_ber_sequence_of(i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_goose_T_references(i1 noundef zeroext %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) #0 {
bb.a:
  %i.a = load i32, ptr @ett_goose_T_references, align 4
  %i.b = tail call i32 @dissect_ber_sequence_of(i1 noundef zeroext %0, ptr noundef %3, ptr noundef %4, ptr noundef %1, i32 noundef %2, ptr noundef @T_references_sequence_of, i32 noundef %5, i32 noundef %i.a)
  ret i32 %i.b
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_goose_NULL(i1 noundef zeroext %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) #0 {
bb.a:
  %i.a = tail call i32 @dissect_ber_null(i1 noundef zeroext %0, ptr noundef %3, ptr noundef %4, ptr noundef %1, i32 noundef %2, i32 noundef %5)
  ret i32 %i.a
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_goose_GSEMngtResponsePdu(i1 noundef zeroext %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) #0 {
bb.a:
  %i.a = load i32, ptr @ett_goose_GSEMngtResponsePdu, align 4
  %i.b = tail call i32 @dissect_ber_sequence(i1 noundef zeroext %0, ptr noundef %3, ptr noundef %4, ptr noundef %1, i32 noundef %2, ptr noundef @GSEMngtResponsePdu_sequence, i32 noundef %5, i32 noundef %i.a)
  ret i32 %i.b
}

; Function Attrs: null_pointer_is_valid
declare i32 @dissect_ber_null(i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_goose_PositiveNegative(i1 zeroext %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) #0 {
bb.a:
  %i.a = load i32, ptr @ett_goose_PositiveNegative, align 4
  %i.b = tail call i32 @dissect_ber_choice(ptr noundef %3, ptr noundef %4, ptr noundef %1, i32 noundef %2, ptr noundef @PositiveNegative_choice, i32 noundef %5, i32 noundef %i.a, ptr noundef null)
  ret i32 %i.b
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_goose_T_responsePositive(i1 noundef zeroext %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) #0 {
bb.a:
  %i.a = load i32, ptr @ett_goose_T_responsePositive, align 4
  %i.b = tail call i32 @dissect_ber_sequence(i1 noundef zeroext %0, ptr noundef %3, ptr noundef %4, ptr noundef %1, i32 noundef %2, ptr noundef @T_responsePositive_sequence, i32 noundef %5, i32 noundef %i.a)
  ret i32 %i.b
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_goose_GlbErrors(i1 noundef zeroext %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) #0 {
bb.a:
  %i.a = tail call i32 @dissect_ber_integer(i1 noundef zeroext %0, ptr noundef %3, ptr noundef %4, ptr noundef %1, i32 noundef %2, i32 noundef %5, ptr noundef null)
  ret i32 %i.a
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_goose_SEQUENCE_OF_RequestResults(i1 noundef zeroext %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) #0 {
bb.a:
  %i.a = load i32, ptr @ett_goose_SEQUENCE_OF_RequestResults, align 4
  %i.b = tail call i32 @dissect_ber_sequence_of(i1 noundef zeroext %0, ptr noundef %3, ptr noundef %4, ptr noundef %1, i32 noundef %2, ptr noundef @SEQUENCE_OF_RequestResults_sequence_of, i32 noundef %5, i32 noundef %i.a)
  ret i32 %i.b
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_goose_RequestResults(i1 zeroext %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) #0 {
bb.a:
  %i.a = load i32, ptr @ett_goose_RequestResults, align 4
  %i.b = tail call i32 @dissect_ber_choice(ptr noundef %3, ptr noundef %4, ptr noundef %1, i32 noundef %2, ptr noundef @RequestResults_choice, i32 noundef %5, i32 noundef %i.a, ptr noundef null)
  ret i32 %i.b
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_goose_IA5String(i1 noundef zeroext %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) #0 {
bb.a:
  %i.a = tail call i32 @dissect_ber_restricted_string(i1 noundef zeroext %0, i32 noundef 22, ptr noundef %3, ptr noundef %4, ptr noundef %1, i32 noundef %2, i32 noundef %5, ptr noundef null)
  ret i32 %i.a
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_goose_ErrorReason(i1 noundef zeroext %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) #0 {
bb.a:
  %i.a = tail call i32 @dissect_ber_integer(i1 noundef zeroext %0, ptr noundef %3, ptr noundef %4, ptr noundef %1, i32 noundef %2, i32 noundef %5, ptr noundef null)
  ret i32 %i.a
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal noundef i32 @dissect_goose_UtcTime(i1 zeroext %0, ptr noundef %1, i32 noundef returned %2, ptr nofree noundef readonly captures(none) %3, ptr noundef %4, i32 noundef %5) #0 {
bb.a:
  %6 = alloca %struct.nstime_t, align 8           ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #4
  %i.a = tail call i32 @tvb_reported_length_remaining(ptr noundef %1, i32 noundef %2) ; 3 uses
  %.not = icmp eq i32 %i.a, 8
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %3, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call ptr @proto_tree_add_expert(ptr noundef %4, ptr noundef %i.c, ptr noundef @ei_goose_mal_utctime, ptr noundef %1, i32 noundef %2, i32 noundef %i.a) ; 0 uses
  %i.e = icmp sgt i32 %5, 0
  br i1 %i.e, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.f = tail call ptr @proto_tree_add_string(ptr noundef %4, i32 noundef %5, ptr noundef %1, i32 noundef %2, i32 noundef %i.a, ptr noundef @.str.243) ; 0 uses
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.g = tail call i32 @tvb_get_ntohl(ptr noundef %1, i32 noundef %2)
  %i.h = add i32 %2, 4
  %i.i = tail call i32 @tvb_get_ntoh24(ptr noundef %1, i32 noundef %i.h)
  %i.j = shl i32 %i.i, 8
  %i.k = zext i32 %i.j to i64
  %i.l = mul nuw nsw i64 %i.k, 1953125
  %i.m = lshr i64 %i.l, 23
  %i.n = trunc nuw nsw i64 %i.m to i32
  %i.o = zext i32 %i.g to i64
  store i64 %i.o, ptr %6, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 %i.n, ptr %i.p, align 8
  %i.q = getelementptr i8, ptr %3, i64 16
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = getelementptr i8, ptr %i.r, i64 416
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = call ptr @abs_time_to_str_ex(ptr noundef %i.t, ptr noundef nonnull %6, i32 noundef 19, i32 noundef 1)
  %i.v = icmp sgt i32 %5, 0
  br i1 %i.v, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.w = call ptr @proto_tree_add_string(ptr noundef %4, i32 noundef %5, ptr noundef %1, i32 noundef %2, i32 noundef 8, ptr noundef %i.u) ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #4
  ret i32 %2
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_goose_T_simulation(i1 noundef zeroext %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  %i.b = tail call i32 @tvb_reported_length_remaining(ptr noundef %1, i32 noundef %2)
  %i.c = call i32 @dissect_ber_boolean(i1 noundef zeroext %0, ptr noundef %3, ptr noundef %4, ptr noundef %1, i32 noundef %2, i32 noundef %5, ptr noundef nonnull %i.a)
  %i.d = getelementptr i8, ptr %3, i64 48
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %3, i64 24
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %.not20 = icmp eq ptr %i.g, null
  br i1 %.not20, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load i8, ptr %i.e, align 1, !range !9, !noundef !10
  %i.i = trunc nuw i8 %i.h to i1
  %i.j = load i8, ptr %i.a, align 1, !range !9
  %6 = icmp eq i8 %i.j, 0
  %or.cond = select i1 %i.i, i1 %6, i1 false
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = load i32, ptr @ett_expert_inf_sim, align 4
  %i.l = call ptr @proto_item_add_subtree(ptr noundef nonnull %i.g, i32 noundef %i.k)
  %i.m = getelementptr i8, ptr %3, i64 16
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = call ptr @proto_tree_add_expert(ptr noundef %i.l, ptr noundef %i.n, ptr noundef @ei_goose_invalid_sim, ptr noundef %1, i32 noundef %2, i32 noundef %i.b) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  ret i32 %i.c
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_goose_BOOLEAN(i1 noundef zeroext %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) #0 {
bb.a:
  %i.a = tail call i32 @dissect_ber_boolean(i1 noundef zeroext %0, ptr noundef %3, ptr noundef %4, ptr noundef %1, i32 noundef %2, i32 noundef %5, ptr noundef null)
  ret i32 %i.a
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_goose_SEQUENCE_OF_Data(i1 noundef zeroext %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) #0 {
bb.a:
  %i.a = load i32, ptr @ett_goose_SEQUENCE_OF_Data, align 4
  %i.b = tail call i32 @dissect_ber_sequence_of(i1 noundef zeroext %0, ptr noundef %3, ptr noundef %4, ptr noundef %1, i32 noundef %2, ptr noundef @SEQUENCE_OF_Data_sequence_of, i32 noundef %5, i32 noundef %i.a)
  ret i32 %i.b
}

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_reported_length_remaining(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_expert(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_string(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_get_ntohl(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_get_ntoh24(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @abs_time_to_str_ex(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @dissect_ber_boolean(i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_goose_Data(i1 zeroext %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %3, i64 16         ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  tail call void @increment_dissection_depth_by_n(ptr noundef %i.b, i32 noundef 2)
  %i.c = load i32, ptr @ett_goose_Data, align 4
  %i.d = tail call i32 @dissect_ber_choice(ptr noundef %3, ptr noundef %4, ptr noundef %1, i32 noundef %2, ptr noundef @Data_choice, i32 noundef %5, i32 noundef %i.c, ptr noundef null)
  %i.e = load ptr, ptr %i.a, align 8
  tail call void @decrement_dissection_depth_by_n(ptr noundef %i.e, i32 noundef 2)
  ret i32 %i.d
}

; Function Attrs: null_pointer_is_valid
declare void @increment_dissection_depth_by_n(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @decrement_dissection_depth_by_n(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_goose_BIT_STRING(i1 noundef zeroext %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) #0 {
bb.a:
  %i.a = tail call i32 @dissect_ber_bitstring(i1 noundef zeroext %0, ptr noundef %3, ptr noundef %4, ptr noundef %1, i32 noundef %2, ptr noundef null, i32 noundef 0, i32 noundef %5, i32 noundef -1, ptr noundef null)
  ret i32 %i.a
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_goose_FloatingPoint(i1 noundef zeroext %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) #0 {
bb.a:
  %i.a = tail call i32 @tvb_reported_length_remaining(ptr noundef %1, i32 noundef %2)
  %i.b = tail call i32 @dissect_ber_octet_string(i1 noundef zeroext %0, ptr noundef %3, ptr noundef %4, ptr noundef %1, i32 noundef %2, i32 noundef %5, ptr noundef null)
  %i.c = icmp eq i32 %i.a, 5
  br i1 %i.c, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.d = tail call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef 0)
  %i.e = icmp eq i8 %i.d, 8
  br i1 %i.e, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr i8, ptr %3, i64 24
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %proto_item_set_hidden.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr i8, ptr %i.g, i64 40
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %.not5.i = icmp eq ptr %i.i, null
  br i1 %.not5.i, label %proto_item_set_hidden.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr i8, ptr %i.i, i64 28       ; 2 uses
  %i.k = load i32, ptr %i.j, align 4
  %i.l = or i32 %i.k, 1
  store i32 %i.l, ptr %i.j, align 4
  br label %proto_item_set_hidden.exit

proto_item_set_hidden.exit:                       ; preds = %bb.c, %bb.d, %bb.e
  %i.m = load i32, ptr @hf_goose_float_value, align 4
  %i.n = tail call ptr @proto_tree_add_item(ptr noundef %4, i32 noundef %i.m, ptr noundef %1, i32 noundef 1, i32 noundef 4, i32 noundef 0) ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %proto_item_set_hidden.exit, %bb.b, %bb.a
  ret i32 %i.b
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_goose_REAL(i1 noundef zeroext %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) #0 {
bb.a:
  %i.a = tail call i32 @dissect_ber_real(i1 noundef zeroext %0, ptr noundef %3, ptr noundef %4, ptr noundef %1, i32 noundef %2, i32 noundef %5, ptr noundef null)
  ret i32 %i.a
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_goose_OCTET_STRING(i1 noundef zeroext %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) #0 {
bb.a:
  %i.a = tail call i32 @dissect_ber_octet_string(i1 noundef zeroext %0, ptr noundef %3, ptr noundef %4, ptr noundef %1, i32 noundef %2, i32 noundef %5, ptr noundef null)
  ret i32 %i.a
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_goose_TimeOfDay(i1 noundef zeroext %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) #0 {
bb.a:
  %i.a = tail call i32 @dissect_ber_octet_string(i1 noundef zeroext %0, ptr noundef %3, ptr noundef %4, ptr noundef %1, i32 noundef %2, i32 noundef %5, ptr noundef null)
  ret i32 %i.a
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_goose_OBJECT_IDENTIFIER(i1 noundef zeroext %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) #0 {
bb.a:
  %i.a = tail call i32 @dissect_ber_object_identifier(i1 noundef zeroext %0, ptr noundef %3, ptr noundef %4, ptr noundef %1, i32 noundef %2, i32 noundef %5, ptr noundef null)
  ret i32 %i.a
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_goose_MMSString(i1 noundef zeroext %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) #0 {
bb.a:
  %i.a = tail call i32 @dissect_ber_restricted_string(i1 noundef zeroext %0, i32 noundef 12, ptr noundef %3, ptr noundef %4, ptr noundef %1, i32 noundef %2, i32 noundef %5, ptr noundef null)
  ret i32 %i.a
}

; Function Attrs: null_pointer_is_valid
declare i32 @dissect_ber_bitstring(i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @dissect_ber_octet_string(i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare zeroext i8 @tvb_get_uint8(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @dissect_ber_real(i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @dissect_ber_object_identifier(i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

attributes #0 = { null_pointer_is_valid sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { null_pointer_is_valid allocsize(1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { allocsize(1) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 8, !"cf-protection-return", i32 1}
!1 = !{i32 8, !"cf-protection-branch", i32 1}
!2 = !{i32 4, !"probe-stack", !"inline-asm"}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!6 = !{!"llvm.loop.mustprogress"}
!7 = distinct !{!7, !6}
!8 = distinct !{!8, !6}
!9 = !{i8 0, i8 2}
!10 = !{}
end_hunk_0
