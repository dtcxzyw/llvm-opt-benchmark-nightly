Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-nbap?download=true
inline.NumInlined: 1168
inline.NumDeleted: 830
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 16
begin_hunk_0_@dissect_nbap_BindingID
define internal i32 @dissect_nbap_BindingID(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store ptr null, ptr %i.a, align 8
  %i.b = call i32 @dissect_per_octet_string(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef 1, i32 noundef 4, i1 noundef zeroext true, ptr noundef nonnull %i.a)
  %i.c = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = call i32 @tvb_reported_length(ptr noundef nonnull %i.c)
  %i.e = icmp ugt i32 %i.d, 1
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %i.a, align 8
  %i.g = call zeroext i16 @tvb_get_ntohs(ptr noundef %i.f, i32 noundef 0) ; 2 uses
  %i.h = getelementptr i8, ptr %2, i64 16
  %i.i = load ptr, ptr %i.h, align 8              ; 3 uses
  %i.j = getelementptr i8, ptr %i.i, i64 416      ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = load i32, ptr @proto_nbap, align 4
  %i.m = call ptr @p_get_proto_data(ptr noundef %i.k, ptr noundef %i.i, i32 noundef %i.l, i32 noundef 0) ; 2 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %.loopexit.loopexit.i, label %nbap_get_private_data.exit

.loopexit.loopexit.i:                             ; preds = %bb.c
  %i.o = load ptr, ptr %i.j, align 8
  %i.p = call noalias dereferenceable_or_null(268056) ptr @wmem_alloc0(ptr noundef %i.o, i64 noundef 268056) #10 ; 15 uses
  %i.q = load ptr, ptr %i.j, align 8
  %i.r = load i32, ptr @proto_nbap, align 4
  call void @p_add_proto_data(ptr noundef %i.q, ptr noundef %i.i, i32 noundef %i.r, i32 noundef 0, ptr noundef %i.p)
  %i.s = getelementptr i8, ptr %i.p, i64 68
  store i32 3, ptr %i.s, align 4
  %i.t = getelementptr i8, ptr %i.p, i64 108
  store i8 0, ptr %i.t, align 4
  %i.u = getelementptr i8, ptr %i.p, i64 12
  store i32 65535, ptr %i.u, align 4
  %i.v = getelementptr i8, ptr %i.p, i64 40
  store i32 65535, ptr %i.v, align 8
  %i.w = getelementptr i8, ptr %i.p, i64 109
  store i8 2, ptr %i.w, align 1
  %i.x = getelementptr i8, ptr %i.p, i64 267508
  store i8 1, ptr %i.x, align 4
  %i.y = getelementptr i8, ptr %i.p, i64 267548
  store i8 1, ptr %i.y, align 4
  %i.z = getelementptr i8, ptr %i.p, i64 267588
  store i8 1, ptr %i.z, align 4
  %i.aa = getelementptr i8, ptr %i.p, i64 267628
  store i8 1, ptr %i.aa, align 4
  %i.ab = getelementptr i8, ptr %i.p, i64 267668
  store i8 1, ptr %i.ab, align 4
  %i.ac = getelementptr i8, ptr %i.p, i64 267708
  store i8 1, ptr %i.ac, align 4
  %i.ad = getelementptr i8, ptr %i.p, i64 267748
  store i8 1, ptr %i.ad, align 4
  %i.ae = getelementptr i8, ptr %i.p, i64 267788
  store i8 1, ptr %i.ae, align 4
  br label %nbap_get_private_data.exit

nbap_get_private_data.exit:                       ; preds = %bb.c, %.loopexit.loopexit.i
  %.0.i = phi ptr [ %i.m, %bb.c ], [ %i.p, %.loopexit.loopexit.i ]
  %i.af = getelementptr i8, ptr %.0.i, i64 4
  store i16 %i.g, ptr %i.af, align 4
  %i.ag = getelementptr i8, ptr %2, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = zext i16 %i.g to i32
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.ah, ptr noundef @.str.9275, i32 noundef %i.ai)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %nbap_get_private_data.exit, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret i32 %i.b
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_nbap_TransportLayerAddress(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store ptr null, ptr %i.a, align 8
  %i.b = getelementptr i8, ptr %2, i64 16         ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 3 uses
  %i.d = getelementptr i8, ptr %i.c, i64 416      ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = load i32, ptr @proto_nbap, align 4
  %i.g = tail call ptr @p_get_proto_data(ptr noundef %i.e, ptr noundef %i.c, i32 noundef %i.f, i32 noundef 0) ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %.loopexit.loopexit.i, label %nbap_get_private_data.exit

.loopexit.loopexit.i:                             ; preds = %bb.a
  %i.i = load ptr, ptr %i.d, align 8
  %i.j = tail call noalias dereferenceable_or_null(268056) ptr @wmem_alloc0(ptr noundef %i.i, i64 noundef 268056) #10 ; 15 uses
  %i.k = load ptr, ptr %i.d, align 8
  %i.l = load i32, ptr @proto_nbap, align 4
  tail call void @p_add_proto_data(ptr noundef %i.k, ptr noundef %i.c, i32 noundef %i.l, i32 noundef 0, ptr noundef %i.j)
  %i.m = getelementptr i8, ptr %i.j, i64 68
  store i32 3, ptr %i.m, align 4
  %i.n = getelementptr i8, ptr %i.j, i64 108
  store i8 0, ptr %i.n, align 4
  %i.o = getelementptr i8, ptr %i.j, i64 12
  store i32 65535, ptr %i.o, align 4
  %i.p = getelementptr i8, ptr %i.j, i64 40
  store i32 65535, ptr %i.p, align 8
  %i.q = getelementptr i8, ptr %i.j, i64 109
  store i8 2, ptr %i.q, align 1
  %i.r = getelementptr i8, ptr %i.j, i64 267508
  store i8 1, ptr %i.r, align 4
  %i.s = getelementptr i8, ptr %i.j, i64 267548
  store i8 1, ptr %i.s, align 4
  %i.t = getelementptr i8, ptr %i.j, i64 267588
  store i8 1, ptr %i.t, align 4
  %i.u = getelementptr i8, ptr %i.j, i64 267628
  store i8 1, ptr %i.u, align 4
  %i.v = getelementptr i8, ptr %i.j, i64 267668
  store i8 1, ptr %i.v, align 4
  %i.w = getelementptr i8, ptr %i.j, i64 267708
  store i8 1, ptr %i.w, align 4
  %i.x = getelementptr i8, ptr %i.j, i64 267748
  store i8 1, ptr %i.x, align 4
  %i.y = getelementptr i8, ptr %i.j, i64 267788
  store i8 1, ptr %i.y, align 4
  br label %nbap_get_private_data.exit

nbap_get_private_data.exit:                       ; preds = %bb.a, %.loopexit.loopexit.i
  %.0.i = phi ptr [ %i.g, %bb.a ], [ %i.j, %.loopexit.loopexit.i ] ; 2 uses
  %i.z = call i32 @dissect_per_bit_string(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef 1, i32 noundef 160, i1 noundef zeroext true, ptr noundef null, i32 noundef 0, ptr noundef nonnull %i.a, ptr noundef null)
  %i.aa = load ptr, ptr %i.a, align 8             ; 2 uses
  %.not = icmp eq ptr %i.aa, null
  br i1 %.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %nbap_get_private_data.exit
  %i.ab = call i32 @tvb_reported_length(ptr noundef nonnull %i.aa) ; 2 uses
  %i.ac = getelementptr i8, ptr %2, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = load i32, ptr @ett_nbap_TransportLayerAddress, align 4
  %i.af = call ptr @proto_item_add_subtree(ptr noundef %i.ad, i32 noundef %i.ae) ; 3 uses
  switch i32 %i.ab, label %.thread [
    i32 4, label %bb.c
    i32 16, label %bb.d
    i32 7, label %bb.e
    i32 20, label %bb.f
  ]

bb.c:                                             ; preds = %bb.b
  %i.ag = load i32, ptr @hf_nbap_transportLayerAddress_ipv4, align 4
  %i.ah = load ptr, ptr %i.a, align 8
  %i.ai = call ptr @proto_tree_add_item(ptr noundef %i.af, i32 noundef %i.ag, ptr noundef %i.ah, i32 noundef 0, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.aj = load ptr, ptr %i.a, align 8
  %i.ak = call i32 @tvb_get_ipv4(ptr noundef %i.aj, i32 noundef 0)
  store i32 %i.ak, ptr %.0.i, align 8
  br label %.thread

bb.d:                                             ; preds = %bb.b
  %i.al = load i32, ptr @hf_nbap_transportLayerAddress_ipv6, align 4
  %i.am = load ptr, ptr %i.a, align 8
  %i.an = call ptr @proto_tree_add_item(ptr noundef %i.af, i32 noundef %i.al, ptr noundef %i.am, i32 noundef 0, i32 noundef 16, i32 noundef 0) ; 0 uses
  br label %.thread

bb.e:                                             ; preds = %bb.b
  %i.ao = load ptr, ptr %i.b, align 8
  %i.ap = getelementptr i8, ptr %i.ao, i64 416
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = call noalias dereferenceable_or_null(20) ptr @wmem_alloc0(ptr noundef %i.aq, i64 noundef 20) #10 ; 2 uses
  %i.as = load ptr, ptr %i.a, align 8
  %i.at = call ptr @tvb_memcpy(ptr noundef %i.as, ptr noundef %i.ar, i32 noundef 0, i64 noundef 7) ; 0 uses
  %i.au = call ptr @tvb_new_child_real_data(ptr noundef %0, ptr noundef %i.ar, i32 noundef 20, i32 noundef 20) ; 2 uses
  %i.av = load ptr, ptr %i.b, align 8
  %i.aw = call ptr @add_new_data_source(ptr noundef %i.av, ptr noundef %i.au, ptr noundef @.str.9276) ; 0 uses
  %.pre = load ptr, ptr %i.a, align 8
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  %i.ax = load ptr, ptr %i.a, align 8             ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ay = phi ptr [ %.pre, %bb.e ], [ %i.ax, %bb.f ]
  %.0 = phi ptr [ %i.au, %bb.e ], [ %i.ax, %bb.f ]
  %i.az = load i32, ptr @hf_nbap_transportLayerAddress_nsap, align 4
  %i.ba = call ptr @proto_tree_add_item(ptr noundef %i.af, i32 noundef %i.az, ptr noundef %i.ay, i32 noundef 0, i32 noundef %i.ab, i32 noundef 0)
  %i.bb = load i32, ptr @ett_nbap_TransportLayerAddress_nsap, align 4
  %i.bc = call ptr @proto_item_add_subtree(ptr noundef %i.ba, i32 noundef %i.bb)
  %i.bd = load ptr, ptr %i.a, align 8
  %i.be = call i32 @tvb_get_ntoh24(ptr noundef %i.bd, i32 noundef 0)
  %i.bf = icmp eq i32 %i.be, 3473409
  br i1 %i.bf, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bg = load ptr, ptr %i.a, align 8
  %i.bh = call i32 @tvb_get_ipv4(ptr noundef %i.bg, i32 noundef 3)
  store i32 %i.bh, ptr %.0.i, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.bi = load ptr, ptr %i.b, align 8
  call void @dissect_nsap(ptr noundef %.0, ptr noundef %i.bi, i32 noundef 0, i32 noundef 20, ptr noundef %i.bc)
  br label %.thread

.thread:                                          ; preds = %bb.d, %bb.c, %bb.b, %bb.i, %nbap_get_private_data.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret i32 %i.z
}

; Function Attrs: null_pointer_is_valid
declare i32 @dissect_per_octet_string(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare zeroext i16 @tvb_get_ntohs(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_get_ipv4(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @tvb_memcpy(ptr noundef, ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @tvb_new_child_real_data(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @add_new_data_source(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_get_ntoh24(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @dissect_nsap(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @wmem_map_lookup(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @wmem_map_remove(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_nbap_TriggeringMessage(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) #0 {
bb.a:
  %i.a = tail call i32 @dissect_per_enumerated(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef 4, ptr noundef null, i1 noundef zeroext false, i32 noundef 0, ptr noundef null)
  ret i32 %i.a
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_nbap_CriticalityDiagnostics_IE_List(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) #0 {
bb.a:
  %i.a = load i32, ptr @ett_nbap_CriticalityDiagnostics_IE_List, align 4
  %i.b = tail call i32 @dissect_per_constrained_sequence_of(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %i.a, ptr noundef @CriticalityDiagnostics_IE_List_sequence_of, i32 noundef 1, i32 noundef 256, i1 noundef zeroext false)
  ret i32 %i.b
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_nbap_CriticalityDiagnostics_IE_List_item(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) #0 {
bb.a:
  %i.a = load i32, ptr @ett_nbap_CriticalityDiagnostics_IE_List_item, align 4
  %i.b = tail call i32 @dissect_per_sequence(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %i.a, ptr noundef @CriticalityDiagnostics_IE_List_item_sequence)
  ret i32 %i.b
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_nbap_RepetitionNumber0(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) #0 {
bb.a:
  %i.a = tail call i32 @dissect_per_constrained_integer(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef 0, i32 noundef 255, ptr noundef null, i1 noundef zeroext false)
  ret i32 %i.a
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_nbap_Cause(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) #0 {
bb.a:
  %i.a = load i32, ptr @ett_nbap_Cause, align 4
  %i.b = tail call i32 @dissect_per_choice(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %i.a, ptr noundef @Cause_choice, ptr noundef null)
  ret i32 %i.b
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_nbap_CauseRadioNetwork(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) #0 {
bb.a:
  %i.a = tail call i32 @dissect_per_enumerated(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef 31, ptr noundef null, i1 noundef zeroext true, i32 noundef 36, ptr noundef null)
  ret i32 %i.a
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_nbap_CauseTransport(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) #0 {
bb.a:
  %i.a = tail call i32 @dissect_per_enumerated(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef 2, ptr noundef null, i1 noundef zeroext true, i32 noundef 0, ptr noundef null)
  ret i32 %i.a
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_nbap_CauseProtocol(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) #0 {
bb.a:
  %i.a = tail call i32 @dissect_per_enumerated(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef 7, ptr noundef null, i1 noundef zeroext true, i32 noundef 0, ptr noundef null)
  ret i32 %i.a
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_nbap_CauseMisc(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) #0 {
bb.a:
  %i.a = tail call i32 @dissect_per_enumerated(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef 5, ptr noundef null, i1 noundef zeroext true, i32 noundef 0, ptr noundef null)
  ret i32 %i.a
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_nbap_Secondary_CCPCHList_CTCH_ReconfRqstFDD(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) #0 {
bb.a:
  %i.a = load i32, ptr @ett_nbap_Secondary_CCPCHList_CTCH_ReconfRqstFDD, align 4
  %i.b = tail call i32 @dissect_per_sequence(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %i.a, ptr noundef @Secondary_CCPCHList_CTCH_ReconfRqstFDD_sequence)
  ret i32 %i.b
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_nbap_PRACHList_CTCH_ReconfRqstFDD(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) #0 {
bb.a:
  %i.a = load i32, ptr @ett_nbap_PRACHList_CTCH_ReconfRqstFDD, align 4
  %i.b = tail call i32 @dissect_per_sequence(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %i.a, ptr noundef @PRACHList_CTCH_ReconfRqstFDD_sequence)
  ret i32 %i.b
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_nbap_FACH_ParametersList_CTCH_ReconfRqstFDD(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) #0 {
bb.a:
  %i.a = load i32, ptr @ett_nbap_ProtocolIE_Field, align 4
  %i.b = tail call i32 @dissect_per_sequence(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %i.a, ptr noundef @ProtocolIE_Field_sequence)
  ret i32 %i.b
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_nbap_PCH_Parameters_CTCH_ReconfRqstFDD(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) #0 {
bb.a:
  %i.a = load i32, ptr @ett_nbap_ProtocolIE_Field, align 4
  %i.b = tail call i32 @dissect_per_sequence(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %i.a, ptr noundef @ProtocolIE_Field_sequence)
  ret i32 %i.b
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_nbap_PICH_Parameters_CTCH_ReconfRqstFDD(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) #0 {
bb.a:
  %i.a = load i32, ptr @ett_nbap_ProtocolIE_Field, align 4
  %i.b = tail call i32 @dissect_per_sequence(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %i.a, ptr noundef @ProtocolIE_Field_sequence)
  ret i32 %i.b
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_nbap_PRACH_ParametersList_CTCH_ReconfRqstFDD(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) #0 {
bb.a:
  %i.a = load i32, ptr @ett_nbap_ProtocolIE_Field, align 4
  %i.b = tail call i32 @dissect_per_sequence(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %i.a, ptr noundef @ProtocolIE_Field_sequence)
  ret i32 %i.b
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_nbap_AICH_ParametersList_CTCH_ReconfRqstFDD(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) #0 {
bb.a:
  %i.a = load i32, ptr @ett_nbap_ProtocolIE_Field, align 4
  %i.b = tail call i32 @dissect_per_sequence(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %i.a, ptr noundef @ProtocolIE_Field_sequence)
  ret i32 %i.b
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_nbap_FACH_ParametersItem_CTCH_ReconfRqstFDD(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) #0 {
bb.a:
  %i.a = load i32, ptr @ett_nbap_FACH_ParametersItem_CTCH_ReconfRqstFDD, align 4
  %i.b = tail call i32 @dissect_per_sequence(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %i.a, ptr noundef @FACH_ParametersItem_CTCH_ReconfRqstFDD_sequence)
  ret i32 %i.b
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_nbap_PRACH_ParametersItem_CTCH_ReconfRqstFDD(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) #0 {
bb.a:
  %i.a = load i32, ptr @ett_nbap_PRACH_ParametersItem_CTCH_ReconfRqstFDD, align 4
  %i.b = tail call i32 @dissect_per_sequence(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %i.a, ptr noundef @PRACH_ParametersItem_CTCH_ReconfRqstFDD_sequence)
  ret i32 %i.b
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_nbap_AllowedSlotFormatInformationList_CTCH_ReconfRqstFDD(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) #0 {
bb.a:
  %i.a = load i32, ptr @ett_nbap_AllowedSlotFormatInformationList_CTCH_ReconfRqstFDD, align 4
  %i.b = tail call i32 @dissect_per_constrained_sequence_of(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %i.a, ptr noundef @AllowedSlotFormatInformationList_CTCH_ReconfRqstFDD_sequence_of, i32 noundef 1, i32 noundef 8, i1 noundef zeroext false)
  ret i32 %i.b
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_nbap_AllowedSlotFormatInformationItem_CTCH_ReconfRqstFDD(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) #0 {
bb.a:
  %i.a = load i32, ptr @ett_nbap_AllowedSlotFormatInformationItem_CTCH_ReconfRqstFDD, align 4
  %i.b = tail call i32 @dissect_per_sequence(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %i.a, ptr noundef @AllowedSlotFormatInformationItem_CTCH_ReconfRqstFDD_sequence)
  ret i32 %i.b
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_nbap_AICH_ParametersItem_CTCH_ReconfRqstFDD(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) #0 {
bb.a:
  %i.a = load i32, ptr @ett_nbap_AICH_ParametersItem_CTCH_ReconfRqstFDD, align 4
  %i.b = tail call i32 @dissect_per_sequence(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %i.a, ptr noundef @AICH_ParametersItem_CTCH_ReconfRqstFDD_sequence)
  ret i32 %i.b
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_nbap_Secondary_CCPCHList_CTCH_ReconfRqstTDD(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) #0 {
bb.a:
  %i.a = load i32, ptr @ett_nbap_ProtocolIE_Field, align 4
end_hunk_0
