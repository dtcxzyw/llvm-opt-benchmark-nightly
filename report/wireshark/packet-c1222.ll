Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-c1222?download=true
inline.NumInlined: 19
inline.NumDeleted: 14
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@tvb_get_uint8
; Function Attrs: null_pointer_is_valid
declare void @tvb_ensure_bytes_exist(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(1)
declare noalias ptr @wmem_alloc(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare ptr @tvb_memcpy(ptr noundef, ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_c1222_OBJECT_IDENTIFIER(i1 noundef zeroext %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) #0 {
bb.a:
  %i.a = tail call i32 @dissect_ber_object_identifier(i1 noundef zeroext %0, ptr noundef %3, ptr noundef %4, ptr noundef %1, i32 noundef %2, i32 noundef %5, ptr noundef null)
  ret i32 %i.a
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_c1222_RELATIVE_OID(i1 noundef zeroext %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) #0 {
bb.a:
  %i.a = tail call i32 @dissect_ber_relative_oid(i1 noundef zeroext %0, ptr noundef %3, ptr noundef %4, ptr noundef %1, i32 noundef %2, i32 noundef %5, ptr noundef null)
  ret i32 %i.a
}

; Function Attrs: null_pointer_is_valid
declare i32 @dissect_ber_relative_oid(i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @dissect_ber_integer(i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_c1222_Calling_authentication_value_U(i1 noundef zeroext %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) #0 {
bb.a:
  %i.a = load i32, ptr @ett_c1222_Calling_authentication_value_U, align 4
  %i.b = tail call i32 @dissect_ber_sequence(i1 noundef zeroext %0, ptr noundef %3, ptr noundef %4, ptr noundef %1, i32 noundef %2, ptr noundef @Calling_authentication_value_U_sequence, i32 noundef %5, i32 noundef %i.a)
  ret i32 %i.b
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_c1222_INTEGER(i1 noundef zeroext %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) #0 {
bb.a:
  %i.a = tail call i32 @dissect_ber_integer(i1 noundef zeroext %0, ptr noundef %3, ptr noundef %4, ptr noundef %1, i32 noundef %2, i32 noundef %5, ptr noundef null)
  ret i32 %i.a
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_c1222_Authentication_value_encoding(i1 zeroext %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) #0 {
bb.a:
  %i.a = load i32, ptr @ett_c1222_Authentication_value_encoding, align 4
  %i.b = tail call i32 @dissect_ber_choice(ptr noundef %3, ptr noundef %4, ptr noundef %1, i32 noundef %2, ptr noundef @Authentication_value_encoding_choice, i32 noundef %5, i32 noundef %i.a, ptr noundef null)
  ret i32 %i.b
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_c1222_Calling_authentication_value_single_asn1(i1 zeroext %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) #0 {
bb.a:
  %i.a = load i32, ptr @ett_c1222_Calling_authentication_value_single_asn1, align 4
  %i.b = tail call i32 @dissect_ber_choice(ptr noundef %3, ptr noundef %4, ptr noundef %1, i32 noundef %2, ptr noundef @Calling_authentication_value_single_asn1_choice, i32 noundef %5, i32 noundef %i.a, ptr noundef null)
  ret i32 %i.b
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_c1222_OCTET_STRING(i1 noundef zeroext %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) #0 {
bb.a:
  %i.a = tail call i32 @dissect_ber_octet_string(i1 noundef zeroext %0, ptr noundef %3, ptr noundef %4, ptr noundef %1, i32 noundef %2, i32 noundef %5, ptr noundef null)
  ret i32 %i.a
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_c1222_Calling_authentication_value_c1222(i1 noundef zeroext %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) #0 {
bb.a:
  %i.a = tail call i32 @dissect_ber_tagged_type(i1 noundef zeroext %0, ptr noundef %3, ptr noundef %4, ptr noundef %1, i32 noundef %2, i32 noundef %5, i8 noundef signext 2, i32 noundef 1, i1 noundef zeroext true, ptr noundef @dissect_c1222_Calling_authentication_value_c1222_U)
  ret i32 %i.a
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_c1222_Calling_authentication_value_c1221(i1 noundef zeroext %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) #0 {
bb.a:
  %i.a = tail call i32 @dissect_ber_tagged_type(i1 noundef zeroext %0, ptr noundef %3, ptr noundef %4, ptr noundef %1, i32 noundef %2, i32 noundef %5, i8 noundef signext 2, i32 noundef 0, i1 noundef zeroext true, ptr noundef @dissect_c1222_Calling_authentication_value_c1221_U)
  ret i32 %i.a
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_c1222_Calling_authentication_value_c1222_U(i1 noundef zeroext %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) #0 {
bb.a:
  %i.a = load i32, ptr @ett_c1222_Calling_authentication_value_c1222_U, align 4
  %i.b = tail call i32 @dissect_ber_sequence(i1 noundef zeroext %0, ptr noundef %3, ptr noundef %4, ptr noundef %1, i32 noundef %2, ptr noundef @Calling_authentication_value_c1222_U_sequence, i32 noundef %5, i32 noundef %i.a)
  ret i32 %i.b
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_c1222_Key_id_element(i1 noundef zeroext %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) #0 {
bb.a:
  %i.a = tail call i32 @dissect_ber_constrained_octet_string(i1 noundef zeroext %0, ptr noundef %3, ptr noundef %4, ptr noundef %1, i32 noundef %2, i32 noundef 1, i32 noundef 1, i32 noundef %5, ptr noundef null) ; 2 uses
  %i.b = sub i32 %i.a, %2                         ; 3 uses
  %i.c = getelementptr i8, ptr %3, i64 16
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr i8, ptr %i.d, i64 416
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = sext i32 %i.b to i64
  %i.h = tail call ptr @tvb_memdup(ptr noundef %i.f, ptr noundef %1, i32 noundef %2, i64 noundef %i.g)
  store ptr %i.h, ptr @key_id_element, align 8
  store i32 %i.b, ptr @key_id_element_len, align 4
  store i32 %i.b, ptr @key_id_element_allocated, align 4
  ret i32 %i.a
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_c1222_Iv_element(i1 noundef zeroext %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) #0 {
bb.a:
  %i.a = tail call i32 @dissect_ber_constrained_octet_string(i1 noundef zeroext %0, ptr noundef %3, ptr noundef %4, ptr noundef %1, i32 noundef %2, i32 noundef 4, i32 noundef 4, i32 noundef %5, ptr noundef null) ; 2 uses
  %i.b = sub i32 %i.a, %2                         ; 3 uses
  %i.c = getelementptr i8, ptr %3, i64 16
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr i8, ptr %i.d, i64 416
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = sext i32 %i.b to i64
  %i.h = tail call ptr @tvb_memdup(ptr noundef %i.f, ptr noundef %1, i32 noundef %2, i64 noundef %i.g)
  store ptr %i.h, ptr @iv_element, align 8
  store i32 %i.b, ptr @iv_element_len, align 4
  store i32 %i.b, ptr @iv_element_allocated, align 4
  ret i32 %i.a
}

; Function Attrs: null_pointer_is_valid
declare i32 @dissect_ber_constrained_octet_string(i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_c1222_Calling_authentication_value_c1221_U(i1 zeroext %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) #0 {
bb.a:
  %i.a = load i32, ptr @ett_c1222_Calling_authentication_value_c1221_U, align 4
  %i.b = tail call i32 @dissect_ber_choice(ptr noundef %3, ptr noundef %4, ptr noundef %1, i32 noundef %2, ptr noundef @Calling_authentication_value_c1221_U_choice, i32 noundef %5, i32 noundef %i.a, ptr noundef null)
  ret i32 %i.b
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_c1222_OCTET_STRING_SIZE_CONSTR001(i1 noundef zeroext %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) #0 {
bb.a:
  %i.a = tail call i32 @dissect_ber_constrained_octet_string(i1 noundef zeroext %0, ptr noundef %3, ptr noundef %4, ptr noundef %1, i32 noundef %2, i32 noundef 3, i32 noundef 259, i32 noundef %5, ptr noundef null)
  ret i32 %i.a
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_c1222_OCTET_STRING_SIZE_1_255(i1 noundef zeroext %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) #0 {
bb.a:
  %i.a = tail call i32 @dissect_ber_constrained_octet_string(i1 noundef zeroext %0, ptr noundef %3, ptr noundef %4, ptr noundef %1, i32 noundef %2, i32 noundef 1, i32 noundef 255, i32 noundef %5, ptr noundef null)
  ret i32 %i.a
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_c1222_OCTET_STRING_SIZE_CONSTR002(i1 noundef zeroext %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) #0 {
bb.a:
  %i.a = tail call i32 @dissect_ber_constrained_octet_string(i1 noundef zeroext %0, ptr noundef %3, ptr noundef %4, ptr noundef %1, i32 noundef %2, i32 noundef 0, i32 noundef 255, i32 noundef %5, ptr noundef null)
  ret i32 %i.a
}

; Function Attrs: null_pointer_is_valid
declare i32 @dissect_ber_octet_string(i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @dissect_ber_identifier(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @expert_add_info(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_bitmask(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_reported_length_remaining(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc zeroext i1 @decrypt_packet(ptr noundef %0, i32 noundef %1, i1 noundef zeroext %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [300 x i8], align 16              ; 6 uses
  %i.b = alloca [16 x i8], align 16               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  %i.c = icmp ult i32 %1, 4
  br i1 %i.c, label %canonify_unencrypted_header.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr @key_id_element, align 8   ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load i8, ptr %i.d, align 1
  %i.f = zext i8 %i.e to i32
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.010 = phi i32 [ %i.f, %bb.c ], [ 0, %bb.b ]
  br label %bb.e

bb.e:                                             ; preds = %bb.q, %bb.d
  %.0 = phi i32 [ 0, %bb.d ], [ %.2, %bb.q ]      ; 4 uses
  %i.g = phi ptr [ @aSO_context, %bb.d ], [ %i.bq, %bb.q ] ; 3 uses
  %.03035.i = phi ptr [ @canonifyTable, %bb.d ], [ %i.bo, %bb.q ] ; 8 uses
  %i.h = getelementptr i8, ptr %.03035.i, i64 16
  %i.i = load ptr, ptr %i.h, align 16
  %i.j = load i32, ptr %i.i, align 4              ; 9 uses
  %i.k = getelementptr i8, ptr %.03035.i, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = load i32, ptr %i.l, align 4
  %i.n = load i8, ptr %.03035.i, align 16, !range !6, !noundef !7
  %i.o = trunc nuw i8 %i.n to i1
  %i.p = load ptr, ptr %i.g, align 8
  %i.q = icmp eq ptr %i.p, null                   ; 2 uses
  br i1 %i.o, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  br i1 %i.q, label %canonify_unencrypted_header.exit.thread, label %.thread.i

bb.g:                                             ; preds = %bb.e
  br i1 %i.q, label %bb.q, label %.thread.i

.thread.i:                                        ; preds = %bb.g, %bb.f
  %i.r = getelementptr i8, ptr %.03035.i, i64 3
  %i.s = load i8, ptr %i.r, align 1, !range !6, !noundef !7
  %i.t = trunc nuw i8 %i.s to i1                  ; 2 uses
  br i1 %i.t, label %bb.h, label %bb.l

bb.h:                                             ; preds = %.thread.i
  %i.u = getelementptr i8, ptr %.03035.i, i64 2
  %i.v = load i8, ptr %i.u, align 2
  %i.w = add nuw nsw i32 %.0, 1                   ; 2 uses
  %i.x = zext nneg i32 %.0 to i64
  %i.y = getelementptr i8, ptr %i.a, i64 %i.x
  store i8 %i.v, ptr %i.y, align 1
  %i.z = zext nneg i32 %i.w to i64
  %i.aa = getelementptr i8, ptr %i.a, i64 %i.z    ; 3 uses
  %i.ab = insertelement <4 x i32> poison, i32 %i.j, i64 0
  %i.ac = shufflevector <4 x i32> %i.ab, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.ad = icmp ugt <4 x i32> %i.ac, <i32 255, i32 65535, i32 16777215, i32 127>
  %i.ae = select <4 x i1> %i.ad, <4 x i32> <i32 1, i32 1, i32 1, i32 2>, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.af = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.ae) ; 8 uses
  %i.ag = icmp samesign ugt i32 %i.af, 4
  br i1 %i.ag, label %encode_ber_len.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ah = icmp eq i32 %i.af, 1
  br i1 %i.ah, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ai = trunc i32 %i.j to i8
  %i.aj = and i8 %i.ai, 127
  store i8 %i.aj, ptr %i.aa, align 1
  br label %encode_ber_len.exit.i

bb.k:                                             ; preds = %bb.i
  %i.ak = add nsw i32 %i.af, -1                   ; 2 uses
  %i.al = trunc nuw nsw i32 %i.ak to i8
  %i.am = or i8 %i.al, -128
  store i8 %i.am, ptr %i.aa, align 1
  %.not18.i.i = icmp eq i32 %i.j, 0
  br i1 %.not18.i.i, label %encode_ber_len.exit.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.k
  %i.an = zext nneg i32 %i.ak to i64
  %i.ao = getelementptr i8, ptr %i.aa, i64 %i.an  ; 4 uses
  %3 = trunc i32 %i.j to i8
  store i8 %3, ptr %i.ao, align 1
  %4 = lshr i32 %i.j, 8                           ; 2 uses
  %.not.i.i = icmp eq i32 %4, 0
  br i1 %.not.i.i, label %encode_ber_len.exit.i, label %.lr.ph.i.i.1

.lr.ph.i.i.1:                                     ; preds = %.lr.ph.preheader.i.i
  %5 = getelementptr i8, ptr %i.ao, i64 -1
  %6 = trunc i32 %4 to i8
  store i8 %6, ptr %5, align 1
  %7 = lshr i32 %i.j, 16                          ; 2 uses
  %.not.i.i.1 = icmp eq i32 %7, 0
  br i1 %.not.i.i.1, label %encode_ber_len.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.1
  %8 = getelementptr i8, ptr %i.ao, i64 -2
  %i.ap = trunc i32 %7 to i8
  store i8 %i.ap, ptr %8, align 1
  %i.aq = lshr i32 %i.j, 24                       ; 2 uses
  %.not.i.i.a = icmp eq i32 %i.aq, 0
  br i1 %.not.i.i.a, label %encode_ber_len.exit.i, label %.lr.ph.i.i.3

.lr.ph.i.i.3:                                     ; preds = %.lr.ph.i.i
  %9 = getelementptr i8, ptr %i.ao, i64 -3
  %10 = trunc nuw i32 %i.aq to i8
  store i8 %10, ptr %9, align 1
  br label %encode_ber_len.exit.i

encode_ber_len.exit.i:                            ; preds = %.lr.ph.preheader.i.i, %.lr.ph.i.i.1, %.lr.ph.i.i, %.lr.ph.i.i.3, %bb.k, %bb.j, %bb.h
  %.0.i.i = phi i32 [ 0, %bb.h ], [ 1, %bb.j ], [ %i.af, %bb.k ], [ %i.af, %.lr.ph.i.i.3 ], [ %i.af, %.lr.ph.i.i ], [ %i.af, %.lr.ph.i.i.1 ], [ %i.af, %.lr.ph.preheader.i.i ]
  %i.ar = add nuw nsw i32 %.0.i.i, %i.w
  br label %bb.l

bb.l:                                             ; preds = %encode_ber_len.exit.i, %.thread.i
  %.1 = phi i32 [ %i.ar, %encode_ber_len.exit.i ], [ %.0, %.thread.i ] ; 3 uses
  %i.as = getelementptr i8, ptr %.03035.i, i64 1
  %i.at = load i8, ptr %i.as, align 1, !range !6, !noundef !7
  %i.au = trunc nuw i8 %i.at to i1
  br i1 %i.au, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.av = insertelement <4 x i32> poison, i32 %i.j, i64 0
  %i.aw = shufflevector <4 x i32> %i.av, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.ax = icmp ugt <4 x i32> %i.aw, <i32 255, i32 65535, i32 16777215, i32 127>
  %i.ay = select <4 x i1> %i.ax, <4 x i32> <i32 1, i32 1, i32 1, i32 2>, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.az = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.ay)
  %i.ba = shl nuw nsw i32 %i.az, 1
  %i.bb = add nuw nsw i32 %i.ba, 3
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.0.i = phi i32 [ %i.bb, %bb.m ], [ %i.j, %bb.l ] ; 3 uses
  %i.bc = add i32 %.0.i, %.1                      ; 3 uses
  %i.bd = icmp ugt i32 %i.bc, 300
  %i.be = icmp ult i32 %i.m, %.0.i
  %or.cond.i = select i1 %i.bd, i1 true, i1 %i.be
  br i1 %or.cond.i, label %canonify_unencrypted_header.exit.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bf = zext nneg i32 %.1 to i64                ; 2 uses
  %i.bg = getelementptr i8, ptr %i.a, i64 %i.bf
  %i.bh = load ptr, ptr %i.g, align 8
  %i.bi = zext i32 %.0.i to i64
  %i.bj = sub nsw i64 300, %i.bf
  %i.bk = icmp ugt i32 %.1, 300
  %i.bl = select i1 %i.bk, i64 0, i64 %i.bj       ; 2 uses
  %i.bm = icmp ne i64 %i.bl, -1
  call void @llvm.assume(i1 %i.bm)
  %i.bn = call ptr @__memcpy_chk(ptr noundef %i.bg, ptr noundef %i.bh, i64 noundef %i.bi, i64 noundef %i.bl) #13, !alias.scope !28 ; 0 uses
  br i1 %i.t, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store ptr null, ptr %i.g, align 8
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.g
  %.2 = phi i32 [ %i.bc, %bb.p ], [ %i.bc, %bb.o ], [ %.0, %bb.g ] ; 3 uses
  %i.bo = getelementptr i8, ptr %.03035.i, i64 32
  %i.bp = getelementptr i8, ptr %.03035.i, i64 40
  %i.bq = load ptr, ptr %i.bp, align 8            ; 2 uses
  %.not.i = icmp eq ptr %i.bq, null
  br i1 %.not.i, label %canonify_unencrypted_header.exit, label %bb.e, !llvm.loop !26

canonify_unencrypted_header.exit:                 ; preds = %bb.q
  %.not14 = icmp eq i32 %.2, 0
  br i1 %.not14, label %canonify_unencrypted_header.exit.thread, label %bb.r

bb.r:                                             ; preds = %canonify_unencrypted_header.exit
  %i.br = load ptr, ptr @c1222_uat_data, align 8  ; 2 uses
  %i.bs = icmp eq ptr %i.br, null
  br i1 %i.bs, label %canonify_unencrypted_header.exit.thread, label %.preheader.i

.preheader.i:                                     ; preds = %bb.r
  %i.bt = load i32, ptr @num_c1222_uat_data, align 4 ; 2 uses
  %.not.i16 = icmp eq i32 %i.bt, 0
  br i1 %.not.i16, label %canonify_unencrypted_header.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %wide.trip.count.i = zext i32 %i.bt to i64
  br label %bb.t

bb.s:                                             ; preds = %bb.t
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %canonify_unencrypted_header.exit.thread, label %bb.t, !llvm.loop !27

bb.t:                                             ; preds = %bb.s, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.s ] ; 2 uses
  %i.bu = getelementptr [24 x i8], ptr %i.br, i64 %indvars.iv.i ; 2 uses
  %i.bv = load i32, ptr %i.bu, align 8
  %i.bw = icmp eq i32 %i.bv, %.010
  br i1 %i.bw, label %bb.u, label %bb.s

bb.u:                                             ; preds = %bb.t
  %i.bx = getelementptr i8, ptr %i.bu, i64 8
  %i.by = load ptr, ptr %i.bx, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.b, ptr noundef align 1 dereferenceable(16) %i.by, i64 noundef 16, i1 noundef false) #13
  %i.bz = add i32 %1, -4                          ; 2 uses
  %i.ca = zext i32 %i.bz to i64
  %i.cb = getelementptr i8, ptr %0, i64 %i.ca
  %i.cc = select i1 %2, i8 2, i8 1
  %i.cd = call zeroext i1 @Eax_Decrypt(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef %0, i32 noundef %.2, i32 noundef 16, i32 noundef %i.bz, ptr noundef %i.cb, i8 noundef zeroext %i.cc)
  br label %canonify_unencrypted_header.exit.thread

canonify_unencrypted_header.exit.thread:          ; preds = %bb.f, %bb.n, %bb.s, %.preheader.i, %bb.r, %bb.u, %canonify_unencrypted_header.exit, %bb.a
  %.011 = phi i1 [ false, %bb.a ], [ false, %.preheader.i ], [ false, %canonify_unencrypted_header.exit ], [ %i.cd, %bb.u ], [ false, %bb.s ], [ false, %bb.r ], [ false, %bb.n ], [ false, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret i1 %.011
}

; Function Attrs: null_pointer_is_valid
declare ptr @tvb_new_real_data(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @tvb_set_child_real_data_tvbuff(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @add_new_data_source(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @tvb_new_subset_remaining(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare zeroext i1 @tvb_offset_exists(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_captured_length_remaining(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_boolean(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare zeroext i1 @Eax_Decrypt(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_uint(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare zeroext i16 @tvb_get_ntohs(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_item_ret_string(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @proto_item_set_text(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @val_to_str(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @expert_add_info_format(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @tvb_bytes_to_str(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare zeroext i16 @tvb_get_uint16(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_checksum(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind null_pointer_is_valid memory(argmem: readwrite)
declare ptr @__memcpy_chk(ptr noalias noundef writeonly, ptr noalias noundef readonly captures(none), i64 noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #9

attributes #0 = { null_pointer_is_valid sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind null_pointer_is_valid willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { null_pointer_is_valid allocsize(1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind null_pointer_is_valid memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nounwind willreturn memory(read) }
attributes #11 = { allocsize(1) }
attributes #12 = { allocsize(0) }
attributes #13 = { nounwind }
attributes #14 = { allocsize(2) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 8, !"cf-protection-return", i32 1}
!1 = !{i32 8, !"cf-protection-branch", i32 1}
!2 = !{i32 4, !"probe-stack", !"inline-asm"}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!6 = !{i8 0, i8 2}
!7 = !{}
!8 = !{!"llvm.loop.mustprogress"}
!9 = distinct !{!9, i1 true, !"memcpy.inline"}
!10 = distinct !{!10, !9, !"memcpy.inline: argument 1"}
!11 = distinct !{!11, !9, !"memcpy.inline: argument 0"}
!12 = !{!11, !10}
!13 = distinct !{!13, i1 true, !"memcpy.inline"}
!14 = distinct !{!14, !13, !"memcpy.inline: argument 1"}
!15 = distinct !{!15, !13, !"memcpy.inline: argument 0"}
!16 = !{!15, !14}
!17 = distinct !{!17, i1 true, !"memcpy.inline"}
!18 = distinct !{!18, !17, !"memcpy.inline: argument 1"}
!19 = distinct !{!19, !17, !"memcpy.inline: argument 0"}
!20 = !{!19, !18}
!21 = distinct !{!21, !8}
!22 = distinct !{!22, !8}
!23 = distinct !{!23, i1 true, !"memcpy.inline"}
!24 = distinct !{!24, !23, !"memcpy.inline: argument 1"}
!25 = distinct !{!25, !23, !"memcpy.inline: argument 0"}
!26 = distinct !{!26, !8}
!27 = distinct !{!27, !8}
!28 = !{!25, !24}
end_hunk_0
