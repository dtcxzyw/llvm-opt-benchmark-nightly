Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-sml?download=true
inline.NumInlined: 101
inline.NumDeleted: 17
begin_hunk_0_@dissect_sml_file:bb.a

bb.if:                                            ; preds = %bb.ie
  %i.bba = sub i32 %i.bav, %.1301                 ; 2 uses
  %i.bbb = call zeroext i16 @crc16_ccitt_tvb_offset(ptr noundef %0, i32 noundef %.1301, i32 noundef %i.bba) ; 2 uses
  %i.bbc = load i32, ptr %2, align 4
  %i.bbd = load i32, ptr @hf_sml_crc16, align 4
  %i.bbe = load i32, ptr @hf_sml_crc16_status, align 4
  %i.bbf = zext i16 %i.bbb to i32
  %i.bbg = call ptr @proto_tree_add_checksum(ptr noundef %i.bap, ptr noundef %0, i32 noundef %i.bbc, i32 noundef %i.bbd, i32 noundef %i.bbe, ptr noundef nonnull @ei_sml_crc_error, ptr noundef %1, i32 noundef %i.bbf, i32 noundef -2147483648, i32 noundef 1) ; 0 uses
  br label %bb.ih

bb.ig:                                            ; preds = %bb.ie
  %i.bbh = load i32, ptr @hf_sml_crc16, align 4
  %i.bbi = load i32, ptr @hf_sml_crc16_status, align 4
  %i.bbj = zext i16 %.2311 to i32
  %i.bbk = call ptr @proto_tree_add_checksum(ptr noundef %i.bap, ptr noundef %0, i32 noundef %i.bav, i32 noundef %i.bbh, i32 noundef %i.bbi, ptr noundef nonnull @ei_sml_crc_error, ptr noundef %1, i32 noundef %i.bbj, i32 noundef -2147483648, i32 noundef 0) ; 0 uses
  br label %bb.ih

bb.ih:                                            ; preds = %bb.ig, %bb.if
  %.3312 = phi i16 [ %i.bbb, %bb.if ], [ %.2311, %bb.ig ]
  %.2302 = phi i32 [ %i.bba, %bb.if ], [ %.1301, %bb.ig ]
  %i.bbl = load i32, ptr %2, align 4
  %i.bbm = add i32 %i.bbl, 2                      ; 2 uses
  store i32 %i.bbm, ptr %2, align 4
  %i.bbn = call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %i.bbm)
  %i.bbo = icmp eq i32 %i.bbn, 0
  br i1 %i.bbo, label %.loopexit, label %bb.ii

bb.ii:                                            ; preds = %bb.ih
  %i.bbp = load i8, ptr @sml_reassemble, align 1, !range !6, !noundef !7
  %i.bbq = trunc nuw i8 %i.bbp to i1
  br i1 %i.bbq, label %bb.ij, label %bb.ik

bb.ij:                                            ; preds = %bb.ii
  %i.bbr = load i32, ptr %2, align 4
  call void @proto_item_set_end(ptr noundef %.1314, ptr noundef %0, i32 noundef %i.bbr)
  br label %.backedge

.backedge:                                        ; preds = %bb.ij, %bb.ik
  br label %bb.k, !llvm.loop !21

bb.ik:                                            ; preds = %bb.ii
  %i.bbs = load i32, ptr @hf_sml_new_file_marker, align 4
  %i.bbt = load i32, ptr %2, align 4
  %i.bbu = call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.bbs, ptr noundef %0, i32 noundef %i.bbt, i32 noundef 0, i32 noundef 0) ; 0 uses
  br label %.backedge

.loopexit:                                        ; preds = %bb.ih, %bb.hy, %bb.hz, %bb.a, %bb.id, %bb.ia, %bb.hw, %bb.hq, %.loopexit769, %bb.hj, %bb.ae, %bb.u, %bb.p, %bb.h, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_captured_length(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_reported_length_remaining(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare i64 @tvb_get_ntoh40(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare ptr @expert_add_info(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_expert(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_subtree_format(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare ptr @expert_add_info_format(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_uint(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_subtree(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare zeroext i16 @tvb_get_ntohs(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare void @col_append_str(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare void @proto_item_append_text(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @field_globalSignature(ptr noundef %0, ptr noundef %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(none) initializes((0, 4)) %3, ptr nofree noundef captures(none) initializes((0, 4)) %4) unnamed_addr #0 {
bb.a:
  %.val = load i32, ptr %2, align 4               ; 2 uses
  store i32 0, ptr %3, align 4
  store i32 0, ptr %4, align 4
  %i.a = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.val) ; 3 uses
  %i.b = zext i8 %i.a to i32                      ; 2 uses
  %i.c = icmp eq i8 %i.a, 1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 1, ptr %4, align 4
  %.pre = load i32, ptr %3, align 4
  br label %get_length.exit

bb.c:                                             ; preds = %bb.a
  %.not.i = icmp sgt i8 %i.a, -1
  br i1 %.not.i, label %bb.e, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c, %.preheader.i
  %.02.i = phi i32 [ %i.j, %.preheader.i ], [ %.val, %bb.c ]
  %.0301.i = phi i32 [ %i.l, %.preheader.i ], [ %i.b, %bb.c ]
  %i.d = and i32 %.0301.i, 15
  %i.e = load i32, ptr %3, align 4
  %i.f = add i32 %i.e, %i.d
  %i.g = shl i32 %i.f, 4
  store i32 %i.g, ptr %3, align 4
  %i.h = load i32, ptr %4, align 4
  %i.i = add i32 %i.h, 1
  store i32 %i.i, ptr %4, align 4
  %i.j = add i32 %.02.i, 1                        ; 2 uses
  %i.k = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.j) ; 2 uses
  %i.l = zext i8 %i.k to i32                      ; 2 uses
  %.not32.i = icmp sgt i8 %i.k, -1
  br i1 %.not32.i, label %bb.d, label %.preheader.i, !llvm.loop !8

bb.d:                                             ; preds = %.preheader.i
  %i.m = and i32 %i.l, 15
  %i.n = load i32, ptr %3, align 4
  %i.o = add i32 %i.n, %i.m
  store i32 %i.o, ptr %3, align 4
  %i.p = load i32, ptr %4, align 4
  %i.q = add i32 %i.p, 1                          ; 2 uses
  store i32 %i.q, ptr %4, align 4
  %i.r = load i32, ptr %3, align 4
  %i.s = sub i32 %i.r, %i.q                       ; 2 uses
  store i32 %i.s, ptr %3, align 4
  br label %get_length.exit

bb.e:                                             ; preds = %bb.c
  %i.t = and i32 %i.b, 15
  %i.u = load i32, ptr %4, align 4
  %i.v = add i32 %i.u, 1                          ; 2 uses
  store i32 %i.v, ptr %4, align 4
  %i.w = sub i32 %i.t, %i.v                       ; 2 uses
  store i32 %i.w, ptr %3, align 4
  br label %get_length.exit

get_length.exit:                                  ; preds = %bb.b, %bb.d, %bb.e
  %i.x = phi i32 [ %.pre, %bb.b ], [ %i.s, %bb.d ], [ %i.w, %bb.e ] ; 2 uses
  %i.y = load i32, ptr @hf_sml_globalSignature, align 4
  %i.z = load i32, ptr %2, align 4
  %i.aa = load i32, ptr %4, align 4
  %i.ab = add i32 %i.x, %i.aa
  %i.ac = icmp eq i32 %i.x, 0
  %i.ad = select i1 %i.ac, ptr @.str.297, ptr @.str.298
  %i.ae = tail call ptr (ptr, i32, ptr, i32, i32, ptr, ptr, ...) @proto_tree_add_bytes_format(ptr noundef %1, i32 noundef %i.y, ptr noundef %0, i32 noundef %i.z, i32 noundef %i.ab, ptr noundef null, ptr noundef nonnull @.str.308, ptr noundef nonnull %i.ad)
  %i.af = load i32, ptr %3, align 4
  %.not = icmp eq i32 %i.af, 0
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %get_length.exit
  %i.ag = load i32, ptr @ett_sml_globalSignature, align 4
  %i.ah = tail call ptr @proto_item_add_subtree(ptr noundef %i.ae, i32 noundef %i.ag) ; 2 uses
  %i.ai = load i32, ptr @hf_sml_length, align 4
  %i.aj = load i32, ptr %2, align 4
  %i.ak = load i32, ptr %4, align 4
  %i.al = load i32, ptr %3, align 4
  %i.am = tail call ptr @proto_tree_add_uint(ptr noundef %i.ah, i32 noundef %i.ai, ptr noundef %0, i32 noundef %i.aj, i32 noundef %i.ak, i32 noundef %i.al) ; 0 uses
  %i.an = load i32, ptr %4, align 4
  %i.ao = load i32, ptr %2, align 4
  %i.ap = add i32 %i.ao, %i.an                    ; 2 uses
  store i32 %i.ap, ptr %2, align 4
  %i.aq = load i32, ptr @hf_sml_globalSignature, align 4
  %i.ar = load i32, ptr %3, align 4
  %i.as = tail call ptr @proto_tree_add_item(ptr noundef %i.ah, i32 noundef %i.aq, ptr noundef %0, i32 noundef %i.ap, i32 noundef %i.ar, i32 noundef 0) ; 0 uses
  %i.at = load i32, ptr %3, align 4
  br label %bb.g

bb.g:                                             ; preds = %get_length.exit, %bb.f
  %.sink26 = phi i32 [ %i.at, %bb.f ], [ 1, %get_length.exit ]
  %i.au = load i32, ptr %2, align 4
  %i.av = add i32 %i.au, %.sink26
  store i32 %i.av, ptr %2, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc noundef zeroext i1 @decode_GetProfile_List_Pack_Req(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 11 uses
  %i.b = alloca ptr, align 8                      ; 8 uses
  %i.c = alloca ptr, align 8                      ; 9 uses
  %i.d = alloca ptr, align 8                      ; 9 uses
  %i.e = alloca i32, align 4                      ; 22 uses
  %i.f = alloca i32, align 4                      ; 22 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  store ptr null, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  store ptr null, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  store ptr null, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #5
  store ptr null, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #5
  call fastcc void @field_serverId(ptr noundef %0, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f)
  call fastcc void @field_username(ptr noundef %0, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f)
  call fastcc void @field_password(ptr noundef %0, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f)
  %.val128 = load i32, ptr %3, align 4            ; 2 uses
  %i.g = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.val128) ; 3 uses
  %i.h = zext i8 %i.g to i32                      ; 2 uses
  %i.i = icmp eq i8 %i.g, 1
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 1, ptr %i.f, align 4
  br label %get_length.exit

bb.c:                                             ; preds = %bb.a
  %.not.i = icmp sgt i8 %i.g, -1
  br i1 %.not.i, label %bb.e, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c, %.preheader.i
  %i.j = phi i32 [ %i.o, %.preheader.i ], [ 0, %bb.c ] ; 2 uses
  %i.k = phi i32 [ %i.n, %.preheader.i ], [ 0, %bb.c ]
  %.02.i = phi i32 [ %i.p, %.preheader.i ], [ %.val128, %bb.c ]
  %.0301.i = phi i32 [ %i.r, %.preheader.i ], [ %i.h, %bb.c ]
  %i.l = and i32 %.0301.i, 15
  %i.m = or disjoint i32 %i.k, %i.l
  %i.n = shl i32 %i.m, 4                          ; 2 uses
  %i.o = add i32 %i.j, 1
  %i.p = add i32 %.02.i, 1                        ; 2 uses
  %i.q = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.p) ; 2 uses
  %i.r = zext i8 %i.q to i32                      ; 2 uses
  %.not32.i = icmp sgt i8 %i.q, -1
  br i1 %.not32.i, label %bb.d, label %.preheader.i, !llvm.loop !8

bb.d:                                             ; preds = %.preheader.i
  %i.s = and i32 %i.r, 15
  %i.t = or disjoint i32 %i.n, %i.s
  %i.u = add i32 %i.j, 2                          ; 3 uses
  store i32 %i.u, ptr %i.f, align 4
  %i.v = sub i32 %i.t, %i.u                       ; 2 uses
  store i32 %i.v, ptr %i.e, align 4
  br label %get_length.exit

bb.e:                                             ; preds = %bb.c
  %i.w = and i32 %i.h, 15
  store i32 1, ptr %i.f, align 4
  %i.x = add nsw i32 %i.w, -1                     ; 2 uses
  store i32 %i.x, ptr %i.e, align 4
  br label %get_length.exit

get_length.exit:                                  ; preds = %bb.b, %bb.d, %bb.e
  %i.y = phi i32 [ 1, %bb.b ], [ %i.u, %bb.d ], [ 1, %bb.e ]
  %i.z = phi i32 [ 0, %bb.b ], [ %i.v, %bb.d ], [ %i.x, %bb.e ] ; 2 uses
  %i.aa = load i32, ptr @hf_sml_withRawdata, align 4
  %i.ab = load i32, ptr %3, align 4
  %i.ac = add i32 %i.y, %i.z                      ; 2 uses
  %i.ad = icmp eq i32 %i.z, 0                     ; 2 uses
  %i.ae = select i1 %i.ad, ptr @.str.297, ptr @.str.298
  %i.af = tail call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format(ptr noundef %2, i32 noundef %i.aa, ptr noundef %0, i32 noundef %i.ab, i32 noundef %i.ac, i32 noundef %i.ac, ptr noundef nonnull @.str.309, ptr noundef nonnull %i.ae)
  br i1 %i.ad, label %bb.g, label %bb.f

bb.f:                                             ; preds = %get_length.exit
  %i.ag = load i32, ptr @ett_sml_withRawdata, align 4
  %i.ah = tail call ptr @proto_item_add_subtree(ptr noundef %i.af, i32 noundef %i.ag) ; 2 uses
  %i.ai = load i32, ptr @hf_sml_datatype, align 4
  %i.aj = load i32, ptr %3, align 4
  %i.ak = tail call ptr @proto_tree_add_item(ptr noundef %i.ah, i32 noundef %i.ai, ptr noundef %0, i32 noundef %i.aj, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.al = load i32, ptr %3, align 4
  %i.am = add i32 %i.al, 1                        ; 2 uses
  store i32 %i.am, ptr %3, align 4
  %i.an = load i32, ptr @hf_sml_withRawdata, align 4
  %i.ao = tail call ptr @proto_tree_add_item(ptr noundef %i.ah, i32 noundef %i.an, ptr noundef %0, i32 noundef %i.am, i32 noundef 1, i32 noundef 0) ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %get_length.exit, %bb.f
  %storemerge.in = load i32, ptr %3, align 4
  %storemerge = add i32 %storemerge.in, 1         ; 3 uses
  store i32 %storemerge, ptr %3, align 4
  %i.ap = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %storemerge) ; 3 uses
  %i.aq = zext i8 %i.ap to i32                    ; 2 uses
  %i.ar = icmp eq i8 %i.ap, 1
  br i1 %i.ar, label %get_length.exit134, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.not.i129 = icmp sgt i8 %i.ap, -1
  br i1 %.not.i129, label %bb.j, label %.preheader.i130

.preheader.i130:                                  ; preds = %bb.h, %.preheader.i130
  %i.as = phi i32 [ %i.ax, %.preheader.i130 ], [ 0, %bb.h ] ; 2 uses
  %i.at = phi i32 [ %i.aw, %.preheader.i130 ], [ 0, %bb.h ]
  %.02.i131 = phi i32 [ %i.ay, %.preheader.i130 ], [ %storemerge, %bb.h ]
  %.0301.i132 = phi i32 [ %i.ba, %.preheader.i130 ], [ %i.aq, %bb.h ]
  %i.au = and i32 %.0301.i132, 15
  %i.av = or disjoint i32 %i.at, %i.au
  %i.aw = shl i32 %i.av, 4                        ; 2 uses
  %i.ax = add i32 %i.as, 1
  %i.ay = add i32 %.02.i131, 1                    ; 2 uses
  %i.az = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.ay) ; 2 uses
  %i.ba = zext i8 %i.az to i32                    ; 2 uses
  %.not32.i133 = icmp sgt i8 %i.az, -1
  br i1 %.not32.i133, label %bb.i, label %.preheader.i130, !llvm.loop !8

bb.i:                                             ; preds = %.preheader.i130
  %i.bb = and i32 %i.ba, 15
  %i.bc = or disjoint i32 %i.aw, %i.bb            ; 2 uses
  store i32 %i.bc, ptr %i.e, align 4
  %i.bd = add i32 %i.as, 2                        ; 3 uses
  store i32 %i.bd, ptr %i.f, align 4
  %i.be = sub i32 %i.bc, %i.bd
  br label %get_length.exit134

bb.j:                                             ; preds = %bb.h
  %i.bf = and i32 %i.aq, 15
  %i.bg = add nsw i32 %i.bf, -1
  br label %get_length.exit134

get_length.exit134:                               ; preds = %bb.g, %bb.i, %bb.j
  %i.bh = phi i32 [ 1, %bb.j ], [ %i.bd, %bb.i ], [ 1, %bb.g ]
  %i.bi = phi i32 [ %i.bg, %bb.j ], [ %i.be, %bb.i ], [ 0, %bb.g ]
  %i.bj = load i32, ptr %3, align 4
  %i.bk = load i32, ptr @ett_sml_time, align 4
  %i.bl = call ptr @proto_tree_add_subtree(ptr noundef %2, ptr noundef %0, i32 noundef %i.bj, i32 noundef -1, i32 noundef %i.bk, ptr noundef nonnull %i.a, ptr noundef nonnull @.str.310)
  %i.bm = icmp eq i32 %i.bi, 0
  br i1 %i.bm, label %bb.k, label %bb.l

bb.k:                                             ; preds = %get_length.exit134
  %i.bn = load ptr, ptr %i.a, align 8
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.bn, ptr noundef nonnull @.str.297)
  %i.bo = load ptr, ptr %i.a, align 8
  call void @proto_item_set_len(ptr noundef %i.bo, i32 noundef %i.bh)
  %i.bp = load i32, ptr %3, align 4
  %i.bq = add i32 %i.bp, 1                        ; 2 uses
  store i32 %i.bq, ptr %3, align 4
  br label %bb.m

bb.l:                                             ; preds = %get_length.exit134
  %i.br = load i32, ptr %3, align 4
  %i.bs = add i32 %i.br, 1
  store i32 %i.bs, ptr %3, align 4
  call fastcc void @sml_time_type(ptr noundef %0, ptr noundef %1, ptr noundef %i.bl, ptr noundef %3)
  %i.bt = load ptr, ptr %i.a, align 8
  %i.bu = load i32, ptr %3, align 4
  call void @proto_item_set_end(ptr noundef %i.bt, ptr noundef %0, i32 noundef %i.bu)
  %.val126.pre = load i32, ptr %3, align 4
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.val126 = phi i32 [ %.val126.pre, %bb.l ], [ %i.bq, %bb.k ] ; 2 uses
  store i32 0, ptr %i.e, align 4
  %i.bv = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.val126) ; 3 uses
  %i.bw = zext i8 %i.bv to i32                    ; 2 uses
  %i.bx = icmp eq i8 %i.bv, 1
  br i1 %i.bx, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i32 1, ptr %i.f, align 4
  br label %get_length.exit140

bb.o:                                             ; preds = %bb.m
  %.not.i135 = icmp sgt i8 %i.bv, -1
  br i1 %.not.i135, label %bb.q, label %.preheader.i136

.preheader.i136:                                  ; preds = %bb.o, %.preheader.i136
  %i.by = phi i32 [ %i.cd, %.preheader.i136 ], [ 0, %bb.o ] ; 2 uses
  %i.bz = phi i32 [ %i.cc, %.preheader.i136 ], [ 0, %bb.o ]
  %.02.i137 = phi i32 [ %i.ce, %.preheader.i136 ], [ %.val126, %bb.o ]
  %.0301.i138 = phi i32 [ %i.cg, %.preheader.i136 ], [ %i.bw, %bb.o ]
  %i.ca = and i32 %.0301.i138, 15
  %i.cb = or disjoint i32 %i.bz, %i.ca
  %i.cc = shl i32 %i.cb, 4                        ; 2 uses
  %i.cd = add i32 %i.by, 1
  %i.ce = add i32 %.02.i137, 1                    ; 2 uses
  %i.cf = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.ce) ; 2 uses
  %i.cg = zext i8 %i.cf to i32                    ; 2 uses
  %.not32.i139 = icmp sgt i8 %i.cf, -1
  br i1 %.not32.i139, label %bb.p, label %.preheader.i136, !llvm.loop !8

bb.p:                                             ; preds = %.preheader.i136
  %i.ch = and i32 %i.cg, 15
  %i.ci = or disjoint i32 %i.cc, %i.ch
  %i.cj = add i32 %i.by, 2                        ; 3 uses
  store i32 %i.cj, ptr %i.f, align 4
  %i.ck = sub i32 %i.ci, %i.cj                    ; 2 uses
  store i32 %i.ck, ptr %i.e, align 4
  br label %get_length.exit140

bb.q:                                             ; preds = %bb.o
  %i.cl = and i32 %i.bw, 15
  store i32 1, ptr %i.f, align 4
  %i.cm = add nsw i32 %i.cl, -1                   ; 2 uses
  store i32 %i.cm, ptr %i.e, align 4
  br label %get_length.exit140

get_length.exit140:                               ; preds = %bb.n, %bb.p, %bb.q
  %i.cn = phi i32 [ 1, %bb.n ], [ %i.cj, %bb.p ], [ 1, %bb.q ]
  %i.co = phi i32 [ 0, %bb.n ], [ %i.ck, %bb.p ], [ %i.cm, %bb.q ]
  %i.cp = load i32, ptr %3, align 4
  %i.cq = load i32, ptr @ett_sml_time, align 4
  %i.cr = call ptr @proto_tree_add_subtree(ptr noundef %2, ptr noundef %0, i32 noundef %i.cp, i32 noundef -1, i32 noundef %i.cq, ptr noundef nonnull %i.a, ptr noundef nonnull @.str.311)
  %i.cs = icmp eq i32 %i.co, 0
  br i1 %i.cs, label %bb.r, label %bb.s

bb.r:                                             ; preds = %get_length.exit140
  %i.ct = load ptr, ptr %i.a, align 8
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.ct, ptr noundef nonnull @.str.297)
  %i.cu = load ptr, ptr %i.a, align 8
  call void @proto_item_set_len(ptr noundef %i.cu, i32 noundef %i.cn)
  %i.cv = load i32, ptr %3, align 4
  %i.cw = add i32 %i.cv, 1                        ; 2 uses
  store i32 %i.cw, ptr %3, align 4
  br label %bb.t

bb.s:                                             ; preds = %get_length.exit140
  %i.cx = load i32, ptr %3, align 4
  %i.cy = add i32 %i.cx, 1
  store i32 %i.cy, ptr %3, align 4
  call fastcc void @sml_time_type(ptr noundef %0, ptr noundef %1, ptr noundef %i.cr, ptr noundef %3)
  %i.cz = load ptr, ptr %i.a, align 8
  %i.da = load i32, ptr %3, align 4
  call void @proto_item_set_end(ptr noundef %i.cz, ptr noundef %0, i32 noundef %i.da)
  %.val125.pre = load i32, ptr %3, align 4
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.val125 = phi i32 [ %.val125.pre, %bb.s ], [ %i.cw, %bb.r ] ; 2 uses
  %i.db = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.val125) ; 3 uses
  %i.dc = zext i8 %i.db to i32                    ; 2 uses
  %i.dd = icmp eq i8 %i.db, 1
  br i1 %i.dd, label %get_length.exit146, label %bb.u

bb.u:                                             ; preds = %bb.t
  %.not.i141 = icmp sgt i8 %i.db, -1
  br i1 %.not.i141, label %bb.w, label %.preheader.i142

.preheader.i142:                                  ; preds = %bb.u, %.preheader.i142
  %i.de = phi i32 [ %i.dj, %.preheader.i142 ], [ 0, %bb.u ] ; 2 uses
  %i.df = phi i32 [ %i.di, %.preheader.i142 ], [ 0, %bb.u ]
  %.02.i143 = phi i32 [ %i.dk, %.preheader.i142 ], [ %.val125, %bb.u ]
  %.0301.i144 = phi i32 [ %i.dm, %.preheader.i142 ], [ %i.dc, %bb.u ]
  %i.dg = and i32 %.0301.i144, 15
  %i.dh = or disjoint i32 %i.df, %i.dg
  %i.di = shl i32 %i.dh, 4                        ; 2 uses
  %i.dj = add i32 %i.de, 1
  %i.dk = add i32 %.02.i143, 1                    ; 2 uses
  %i.dl = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.dk) ; 2 uses
  %i.dm = zext i8 %i.dl to i32                    ; 2 uses
  %.not32.i145 = icmp sgt i8 %i.dl, -1
  br i1 %.not32.i145, label %bb.v, label %.preheader.i142, !llvm.loop !8

bb.v:                                             ; preds = %.preheader.i142
  %i.dn = and i32 %i.dm, 15
  %i.do = or disjoint i32 %i.di, %i.dn            ; 2 uses
  store i32 %i.do, ptr %i.e, align 4
  %i.dp = add i32 %i.de, 2                        ; 2 uses
  %i.dq = sub i32 %i.do, %i.dp
  br label %get_length.exit146

bb.w:                                             ; preds = %bb.u
  %i.dr = and i32 %i.dc, 15
  %i.ds = add nsw i32 %i.dr, -1
  br label %get_length.exit146

get_length.exit146:                               ; preds = %bb.t, %bb.v, %bb.w
  %i.dt = phi i32 [ 1, %bb.w ], [ %i.dp, %bb.v ], [ 1, %bb.t ] ; 2 uses
  %i.du = phi i32 [ %i.ds, %bb.w ], [ %i.dq, %bb.v ], [ 0, %bb.t ]
  %i.dv = add i32 %i.dt, %i.du                    ; 4 uses
  %i.dw = load i32, ptr %3, align 4
  %i.dx = load i32, ptr @ett_sml_treepath, align 4
  %i.dy = icmp eq i32 %i.dv, 1
  %i.dz = select i1 %i.dy, ptr @.str.260, ptr @.str.261
  %i.ea = call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef %2, ptr noundef %0, i32 noundef %i.dw, i32 noundef -1, i32 noundef %i.dx, ptr noundef nonnull %i.b, ptr noundef nonnull @.str.312, i32 noundef %i.dv, ptr noundef nonnull %i.dz)
  %i.eb = load i32, ptr %3, align 4
  %i.ec = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.eb)
  %.not119 = icmp ugt i8 %i.ec, -17
  br i1 %.not119, label %bb.z, label %bb.x

bb.x:                                             ; preds = %get_length.exit146
  %i.ed = load i32, ptr %3, align 4
  %i.ee = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.ed)
  %i.ef = and i8 %i.ee, -16
  %.not120 = icmp eq i8 %i.ef, 112
  br i1 %.not120, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.eg = load ptr, ptr %i.b, align 8
  %i.eh = call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %i.eg, ptr noundef nonnull @ei_sml_invalid_count, ptr noundef nonnull @.str.313) ; 0 uses
  br label %bb.bd

bb.z:                                             ; preds = %bb.x, %get_length.exit146
  %i.ei = icmp eq i32 %i.dv, 0
  br i1 %i.ei, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.ej = load ptr, ptr %i.b, align 8
  %i.ek = call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %i.ej, ptr noundef nonnull @ei_sml_invalid_count, ptr noundef nonnull @.str.148) ; 0 uses
  br label %bb.bd

bb.ab:                                            ; preds = %bb.z
  %i.el = load i32, ptr %3, align 4
  %i.em = add i32 %i.el, %i.dt
  store i32 %i.em, ptr %3, align 4
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.ac
  %.0172 = phi i32 [ 0, %bb.ab ], [ %i.en, %bb.ac ]
  call fastcc void @field_parameterTreePath(ptr noundef %0, ptr noundef %i.ea, ptr noundef %3, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f)
  %i.en = add nuw i32 %.0172, 1                   ; 2 uses
  %exitcond.not = icmp eq i32 %i.en, %i.dv
  br i1 %exitcond.not, label %bb.ad, label %bb.ac, !llvm.loop !22

bb.ad:                                            ; preds = %bb.ac
  %i.eo = load ptr, ptr %i.b, align 8
  %i.ep = load i32, ptr %3, align 4
  call void @proto_item_set_end(ptr noundef %i.eo, ptr noundef %0, i32 noundef %i.ep)
  %i.eq = load i32, ptr %3, align 4
  %i.er = load i32, ptr @ett_sml_object_list, align 4
  %i.es = call ptr @proto_tree_add_subtree(ptr noundef %2, ptr noundef %0, i32 noundef %i.eq, i32 noundef -1, i32 noundef %i.er, ptr noundef nonnull %i.c, ptr noundef nonnull @.str.314)
  %i.et = load i32, ptr %3, align 4
  %i.eu = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.et)
  %i.ev = icmp eq i8 %i.eu, 1
  br i1 %i.ev, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.ew = load ptr, ptr %i.c, align 8
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.ew, ptr noundef nonnull @.str.297)
  %i.ex = load ptr, ptr %i.c, align 8
  call void @proto_item_set_len(ptr noundef %i.ex, i32 noundef 1)
  %i.ey = load i32, ptr %3, align 4
  %i.ez = add i32 %i.ey, 1                        ; 2 uses
  store i32 %i.ez, ptr %3, align 4
  br label %bb.au

bb.af:                                            ; preds = %bb.ad
  %.val124 = load i32, ptr %3, align 4            ; 2 uses
  %i.fa = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.val124) ; 3 uses
  %i.fb = zext i8 %i.fa to i32                    ; 2 uses
  %i.fc = icmp eq i8 %i.fa, 1
  br i1 %i.fc, label %get_length.exit152, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %.not.i147 = icmp sgt i8 %i.fa, -1
  br i1 %.not.i147, label %bb.ai, label %.preheader.i148

.preheader.i148:                                  ; preds = %bb.ag, %.preheader.i148
  %i.fd = phi i32 [ %i.fi, %.preheader.i148 ], [ 0, %bb.ag ] ; 2 uses
  %i.fe = phi i32 [ %i.fh, %.preheader.i148 ], [ 0, %bb.ag ]
  %.02.i149 = phi i32 [ %i.fj, %.preheader.i148 ], [ %.val124, %bb.ag ]
  %.0301.i150 = phi i32 [ %i.fl, %.preheader.i148 ], [ %i.fb, %bb.ag ]
  %i.ff = and i32 %.0301.i150, 15
  %i.fg = or disjoint i32 %i.fe, %i.ff
  %i.fh = shl i32 %i.fg, 4                        ; 2 uses
  %i.fi = add i32 %i.fd, 1
  %i.fj = add i32 %.02.i149, 1                    ; 2 uses
  %i.fk = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.fj) ; 2 uses
  %i.fl = zext i8 %i.fk to i32                    ; 2 uses
  %.not32.i151 = icmp sgt i8 %i.fk, -1
  br i1 %.not32.i151, label %bb.ah, label %.preheader.i148, !llvm.loop !8

bb.ah:                                            ; preds = %.preheader.i148
  %i.fm = and i32 %i.fl, 15
  %i.fn = or disjoint i32 %i.fh, %i.fm            ; 2 uses
  store i32 %i.fn, ptr %i.e, align 4
  %i.fo = add i32 %i.fd, 2                        ; 3 uses
  store i32 %i.fo, ptr %i.f, align 4
  %i.fp = sub i32 %i.fn, %i.fo
  br label %get_length.exit152

bb.ai:                                            ; preds = %bb.ag
  %i.fq = and i32 %i.fb, 15
  %i.fr = add nsw i32 %i.fq, -1
  br label %get_length.exit152

get_length.exit152:                               ; preds = %bb.af, %bb.ah, %bb.ai
  %i.fs = phi i32 [ 1, %bb.ai ], [ %i.fo, %bb.ah ], [ 1, %bb.af ] ; 2 uses
  %i.ft = phi i32 [ %i.fr, %bb.ai ], [ %i.fp, %bb.ah ], [ 0, %bb.af ]
  %i.fu = add i32 %i.fs, %i.ft                    ; 4 uses
  %i.fv = load ptr, ptr %i.c, align 8
  %i.fw = icmp eq i32 %i.fu, 1
  %i.fx = select i1 %i.fw, ptr @.str.260, ptr @.str.261
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.fv, ptr noundef nonnull @.str.315, i32 noundef %i.fu, ptr noundef nonnull %i.fx)
  %i.fy = load i32, ptr %3, align 4
  %i.fz = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.fy)
  %.not121 = icmp ugt i8 %i.fz, -17
  br i1 %.not121, label %bb.al, label %bb.aj

bb.aj:                                            ; preds = %get_length.exit152
  %i.ga = load i32, ptr %3, align 4
  %i.gb = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.ga)
  %i.gc = and i8 %i.gb, -16
  %.not122 = icmp eq i8 %i.gc, 112
  br i1 %.not122, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.gd = load ptr, ptr %i.c, align 8
  %i.ge = call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %i.gd, ptr noundef nonnull @ei_sml_invalid_count, ptr noundef nonnull @.str.316) ; 0 uses
  br label %bb.bd

bb.al:                                            ; preds = %bb.aj, %get_length.exit152
  %i.gf = icmp eq i32 %i.fu, 0
  br i1 %i.gf, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.gg = load ptr, ptr %i.b, align 8
  %i.gh = call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %i.gg, ptr noundef nonnull @ei_sml_invalid_count, ptr noundef nonnull @.str.148) ; 0 uses
  br label %bb.bd

bb.an:                                            ; preds = %bb.al
  %i.gi = load i32, ptr %3, align 4
  %i.gj = add i32 %i.gi, %i.fs                    ; 2 uses
  store i32 %i.gj, ptr %3, align 4
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %field_ObjReqEntry.exit
  %.val.i = phi i32 [ %i.gj, %bb.an ], [ %i.hs, %field_ObjReqEntry.exit ] ; 2 uses
  %.1173 = phi i32 [ 0, %bb.an ], [ %i.ht, %field_ObjReqEntry.exit ]
  store i32 0, ptr %i.e, align 4
  %i.gk = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.val.i) ; 3 uses
  %i.gl = zext i8 %i.gk to i32                    ; 2 uses
  %i.gm = icmp eq i8 %i.gk, 1
  br i1 %i.gm, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  store i32 1, ptr %i.f, align 4
  br label %field_ObjReqEntry.exit

bb.aq:                                            ; preds = %bb.ao
  %.not.i.i = icmp sgt i8 %i.gk, -1
  br i1 %.not.i.i, label %bb.as, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.aq, %.preheader.i.i
  %i.gn = phi i32 [ %i.gs, %.preheader.i.i ], [ 0, %bb.aq ] ; 2 uses
  %i.go = phi i32 [ %i.gr, %.preheader.i.i ], [ 0, %bb.aq ]
  %.02.i.i = phi i32 [ %i.gt, %.preheader.i.i ], [ %.val.i, %bb.aq ]
  %.0301.i.i = phi i32 [ %i.gv, %.preheader.i.i ], [ %i.gl, %bb.aq ]
  %i.gp = and i32 %.0301.i.i, 15
  %i.gq = or disjoint i32 %i.go, %i.gp
  %i.gr = shl i32 %i.gq, 4                        ; 2 uses
  %i.gs = add i32 %i.gn, 1
  %i.gt = add i32 %.02.i.i, 1                     ; 2 uses
  %i.gu = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.gt) ; 2 uses
  %i.gv = zext i8 %i.gu to i32                    ; 2 uses
  %.not32.i.i = icmp sgt i8 %i.gu, -1
  br i1 %.not32.i.i, label %bb.ar, label %.preheader.i.i, !llvm.loop !8

bb.ar:                                            ; preds = %.preheader.i.i
  %i.gw = and i32 %i.gv, 15
  %i.gx = or disjoint i32 %i.gr, %i.gw
  %i.gy = add i32 %i.gn, 2                        ; 3 uses
  store i32 %i.gy, ptr %i.f, align 4
  %i.gz = sub i32 %i.gx, %i.gy                    ; 2 uses
  store i32 %i.gz, ptr %i.e, align 4
  br label %field_ObjReqEntry.exit

bb.as:                                            ; preds = %bb.aq
  %i.ha = and i32 %i.gl, 15
  store i32 1, ptr %i.f, align 4
  %i.hb = add nsw i32 %i.ha, -1                   ; 2 uses
  store i32 %i.hb, ptr %i.e, align 4
  br label %field_ObjReqEntry.exit

field_ObjReqEntry.exit:                           ; preds = %bb.ap, %bb.ar, %bb.as
  %i.hc = phi i32 [ 1, %bb.ap ], [ %i.gy, %bb.ar ], [ 1, %bb.as ]
  %i.hd = phi i32 [ 0, %bb.ap ], [ %i.gz, %bb.ar ], [ %i.hb, %bb.as ]
  %i.he = load i32, ptr %3, align 4
  %i.hf = add i32 %i.hc, %i.hd
  %i.hg = load i32, ptr @ett_sml_object_list_Entry, align 4
  %i.hh = call ptr @proto_tree_add_subtree(ptr noundef %i.es, ptr noundef %0, i32 noundef %i.he, i32 noundef %i.hf, i32 noundef %i.hg, ptr noundef null, ptr noundef nonnull @.str.83) ; 2 uses
  %i.hi = load i32, ptr @hf_sml_length, align 4
  %i.hj = load i32, ptr %3, align 4
  %i.hk = load i32, ptr %i.f, align 4             ; 2 uses
  %i.hl = load i32, ptr %i.e, align 4             ; 3 uses
  %i.hm = call ptr @proto_tree_add_uint(ptr noundef %i.hh, i32 noundef %i.hi, ptr noundef %0, i32 noundef %i.hj, i32 noundef %i.hk, i32 noundef %i.hl) ; 0 uses
  %i.hn = load i32, ptr %3, align 4
  %i.ho = add i32 %i.hn, %i.hk                    ; 2 uses
  store i32 %i.ho, ptr %3, align 4
  %i.hp = load i32, ptr @hf_sml_object_list_Entry, align 4
  %i.hq = call ptr @proto_tree_add_item(ptr noundef %i.hh, i32 noundef %i.hp, ptr noundef %0, i32 noundef %i.ho, i32 noundef %i.hl, i32 noundef 0) ; 0 uses
  %i.hr = load i32, ptr %3, align 4
  %i.hs = add i32 %i.hr, %i.hl                    ; 3 uses
  store i32 %i.hs, ptr %3, align 4
  %i.ht = add nuw i32 %.1173, 1                   ; 2 uses
  %exitcond186.not = icmp eq i32 %i.ht, %i.fu
  br i1 %exitcond186.not, label %bb.at, label %bb.ao, !llvm.loop !23

bb.at:                                            ; preds = %field_ObjReqEntry.exit
  %i.hu = load ptr, ptr %i.c, align 8
  call void @proto_item_set_end(ptr noundef %i.hu, ptr noundef %0, i32 noundef %i.hs)
  %.pre = load i32, ptr %3, align 4
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.ae
  %i.hv = phi i32 [ %.pre, %bb.at ], [ %i.ez, %bb.ae ]
  %i.hw = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.hv) ; 2 uses
  %i.hx = load i32, ptr %3, align 4
  %i.hy = load i32, ptr @ett_sml_dasDetails, align 4
  %i.hz = call ptr @proto_tree_add_subtree(ptr noundef %2, ptr noundef %0, i32 noundef %i.hx, i32 noundef -1, i32 noundef %i.hy, ptr noundef nonnull %i.d, ptr noundef nonnull @.str.317)
  %i.ia = icmp eq i8 %i.hw, 1
  br i1 %i.ia, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.ib = load ptr, ptr %i.d, align 8
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.ib, ptr noundef nonnull @.str.297)
  %i.ic = load ptr, ptr %i.d, align 8
  call void @proto_item_set_len(ptr noundef %i.ic, i32 noundef 1)
  %i.id = load i32, ptr %3, align 4
  %i.ie = add i32 %i.id, 1
  store i32 %i.ie, ptr %3, align 4
  br label %bb.bd

bb.aw:                                            ; preds = %bb.au
  %i.if = and i8 %i.hw, 112
  %or.cond = icmp eq i8 %i.if, 112
  br i1 %or.cond, label %bb.ax, label %bb.bc

bb.ax:                                            ; preds = %bb.aw
  %.val = load i32, ptr %3, align 4               ; 2 uses
  store i32 0, ptr %i.e, align 4
  %i.ig = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.val) ; 3 uses
  %i.ih = zext i8 %i.ig to i32                    ; 2 uses
  %i.ii = icmp eq i8 %i.ig, 1
  br i1 %i.ii, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  store i32 1, ptr %i.f, align 4
  br label %get_length.exit158

bb.az:                                            ; preds = %bb.ax
  %.not.i153 = icmp sgt i8 %i.ig, -1
  br i1 %.not.i153, label %bb.bb, label %.preheader.i154

.preheader.i154:                                  ; preds = %bb.az, %.preheader.i154
  %i.ij = phi i32 [ %i.io, %.preheader.i154 ], [ 0, %bb.az ] ; 2 uses
  %i.ik = phi i32 [ %i.in, %.preheader.i154 ], [ 0, %bb.az ]
  %.02.i155 = phi i32 [ %i.ip, %.preheader.i154 ], [ %.val, %bb.az ]
  %.0301.i156 = phi i32 [ %i.ir, %.preheader.i154 ], [ %i.ih, %bb.az ]
  %i.il = and i32 %.0301.i156, 15
  %i.im = or disjoint i32 %i.ik, %i.il
  %i.in = shl i32 %i.im, 4                        ; 2 uses
  %i.io = add i32 %i.ij, 1
  %i.ip = add i32 %.02.i155, 1                    ; 2 uses
  %i.iq = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.ip) ; 2 uses
  %i.ir = zext i8 %i.iq to i32                    ; 2 uses
  %.not32.i157 = icmp sgt i8 %i.iq, -1
  br i1 %.not32.i157, label %bb.ba, label %.preheader.i154, !llvm.loop !8

bb.ba:                                            ; preds = %.preheader.i154
  %i.is = and i32 %i.ir, 15
  %i.it = or disjoint i32 %i.in, %i.is
  %i.iu = add i32 %i.ij, 2                        ; 3 uses
  store i32 %i.iu, ptr %i.f, align 4
  %i.iv = sub i32 %i.it, %i.iu                    ; 2 uses
  store i32 %i.iv, ptr %i.e, align 4
  br label %get_length.exit158

bb.bb:                                            ; preds = %bb.az
  %i.iw = and i32 %i.ih, 15
  store i32 1, ptr %i.f, align 4
  %i.ix = add nsw i32 %i.iw, -1                   ; 2 uses
  store i32 %i.ix, ptr %i.e, align 4
  br label %get_length.exit158

get_length.exit158:                               ; preds = %bb.ay, %bb.ba, %bb.bb
  %i.iy = phi i32 [ 0, %bb.ay ], [ %i.iv, %bb.ba ], [ %i.ix, %bb.bb ]
  %i.iz = phi i32 [ 1, %bb.ay ], [ %i.iu, %bb.ba ], [ 1, %bb.bb ] ; 2 uses
  %i.ja = load ptr, ptr %i.d, align 8
  %i.jb = add i32 %i.iy, %i.iz                    ; 2 uses
  %i.jc = icmp eq i32 %i.jb, 1
  %i.jd = select i1 %i.jc, ptr @.str.260, ptr @.str.261
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.ja, ptr noundef nonnull @.str.315, i32 noundef %i.jb, ptr noundef nonnull %i.jd)
end_hunk_0
