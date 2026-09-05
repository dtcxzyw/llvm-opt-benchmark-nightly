Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-opa-mad?download=true
inline.NumInlined: 61
inline.NumDeleted: 40
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@parse_P_KeyTable:bb.a

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr i8, ptr %2, i64 1
  %i.d = load i8, ptr %i.c, align 1
  %i.e = icmp eq i8 %i.d, 3
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.f = add i32 %.0.val, -4
  %i.g = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %1, i32 noundef %i.f)
  %i.h = zext i16 %i.g to i32
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.i = getelementptr i8, ptr %2, i64 20
  %i.j = load i32, ptr %i.i, align 4              ; 2 uses
  %i.k = lshr i32 %i.j, 24
  %i.l = and i32 %i.j, 2047
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.037 = phi i32 [ 1, %bb.d ], [ %i.k, %bb.e ]   ; 3 uses
  %.0 = phi i32 [ %i.h, %bb.d ], [ %i.l, %bb.e ]  ; 2 uses
  %i.m = load i32, ptr @hf_opa_P_KeyTable, align 4
  %i.n = shl nuw nsw i32 %.037, 6
  %i.o = tail call ptr @proto_tree_add_item(ptr noundef nonnull %0, i32 noundef %i.m, ptr noundef %1, i32 noundef %.0.val, i32 noundef %i.n, i32 noundef 0)
  %i.p = load i32, ptr @ett_pkeytable, align 4
  %i.q = tail call ptr @proto_item_add_subtree(ptr noundef %i.o, i32 noundef %i.p)
  %i.r = add nuw nsw i32 %.0, %.037
  %.not5 = icmp eq i32 %.037, 0
  br i1 %.not5, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f, %bb.h
  %.0384 = phi i32 [ %i.aa, %bb.h ], [ %.0, %bb.f ] ; 2 uses
  %.0403 = phi i32 [ %i.y, %bb.h ], [ %.0.val, %bb.f ] ; 2 uses
  %i.s = load i32, ptr @ett_pkeytable_block, align 4
  %i.t = tail call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef %i.q, ptr noundef %1, i32 noundef %.0403, i32 noundef 64, i32 noundef %i.s, ptr noundef null, ptr noundef nonnull @.str.2332, i32 noundef %.0384) ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.g
  %.0392 = phi i32 [ 0, %.lr.ph ], [ %i.z, %bb.g ] ; 2 uses
  %.11 = phi i32 [ %.0403, %.lr.ph ], [ %i.y, %bb.g ] ; 3 uses
  %i.u = load i32, ptr @hf_opa_P_KeyTable_MembershipType, align 4
  %i.v = tail call ptr @proto_tree_add_item(ptr noundef %i.t, i32 noundef %i.u, ptr noundef %1, i32 noundef %.11, i32 noundef 2, i32 noundef 0)
  %i.w = load i32, ptr @hf_opa_P_KeyTable_P_KeyBase, align 4
  %i.x = tail call ptr @proto_tree_add_item(ptr noundef %i.t, i32 noundef %i.w, ptr noundef %1, i32 noundef %.11, i32 noundef 2, i32 noundef 0)
  %i.y = add i32 %.11, 2                          ; 3 uses
  tail call void (ptr, ptr, ...) @proto_item_prepend_text(ptr noundef %i.v, ptr noundef nonnull @.str.2329, i32 noundef %.0392)
  tail call void (ptr, ptr, ...) @proto_item_prepend_text(ptr noundef %i.x, ptr noundef nonnull @.str.2331)
  %i.z = add nuw nsw i32 %.0392, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.z, 32
  br i1 %exitcond.not, label %bb.h, label %bb.g, !llvm.loop !25

bb.h:                                             ; preds = %bb.g
  %i.aa = add nuw nsw i32 %.0384, 1               ; 2 uses
  %i.ab = icmp samesign ult i32 %i.aa, %i.r
  br i1 %i.ab, label %.lr.ph, label %.loopexit, !llvm.loop !26

.loopexit:                                        ; preds = %bb.h, %bb.f, %bb.a, %bb.b, %bb.b
  %.041 = phi i32 [ %.0.val, %bb.a ], [ %.0.val, %bb.b ], [ %.0.val, %bb.b ], [ %.0.val, %bb.f ], [ %i.y, %bb.h ]
  ret i32 %.041
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc i32 @parse_SLtoSCMappingTable(ptr noundef %0, ptr noundef %1, i32 %.0.val, ptr nofree noundef readonly captures(none) %2) unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr i8, ptr %2, i64 3
  %i.b = load i8, ptr %i.a, align 1
  switch i8 %i.b, label %bb.c [
    i8 1, label %.loopexit
    i8 18, label %.loopexit
  ]

bb.c:                                             ; preds = %bb.b
  %i.c = load i32, ptr @hf_opa_SLtoSCMappingTable, align 4
  %i.d = tail call ptr @proto_tree_add_item(ptr noundef nonnull %0, i32 noundef %i.c, ptr noundef %1, i32 noundef %.0.val, i32 noundef 32, i32 noundef 0)
  %i.e = load i32, ptr @ett_sltoscmapping, align 4
  %i.f = tail call ptr @proto_item_add_subtree(ptr noundef %i.d, i32 noundef %i.e) ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.d
  %.02 = phi i32 [ 0, %bb.c ], [ %i.l, %bb.d ]    ; 2 uses
  %.0221 = phi i32 [ %.0.val, %bb.c ], [ %i.k, %bb.d ] ; 3 uses
  %i.g = load i32, ptr @hf_opa_SLtoSCMappingTable_SLtoSC_HighBits, align 4
  %i.h = tail call ptr @proto_tree_add_item(ptr noundef %i.f, i32 noundef %i.g, ptr noundef %1, i32 noundef %.0221, i32 noundef 1, i32 noundef 0)
  tail call void (ptr, ptr, ...) @proto_item_prepend_text(ptr noundef %i.h, ptr noundef nonnull @.str.2329, i32 noundef %.02)
  %i.i = load i32, ptr @hf_opa_SLtoSCMappingTable_SLtoSC_LowBits, align 4
  %i.j = tail call ptr @proto_tree_add_item(ptr noundef %i.f, i32 noundef %i.i, ptr noundef %1, i32 noundef %.0221, i32 noundef 1, i32 noundef 0)
  tail call void (ptr, ptr, ...) @proto_item_prepend_text(ptr noundef %i.j, ptr noundef nonnull @.str.2331)
  %i.k = add i32 %.0221, 1                        ; 2 uses
  %i.l = add nuw nsw i32 %.02, 1                  ; 2 uses
  %exitcond.not = icmp eq i32 %i.l, 32
  br i1 %exitcond.not, label %.loopexit, label %bb.d, !llvm.loop !27

.loopexit:                                        ; preds = %bb.d, %bb.a, %bb.b, %bb.b
  %.023 = phi i32 [ %.0.val, %bb.a ], [ %.0.val, %bb.b ], [ %.0.val, %bb.b ], [ %i.k, %bb.d ]
  ret i32 %.023
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc i32 @parse_VLArbitrationTable(ptr noundef %0, ptr noundef %1, i32 %.0.val, ptr nofree noundef readonly captures(none) %2) unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.loopexit2, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr i8, ptr %2, i64 3
  %i.b = load i8, ptr %i.a, align 1
  switch i8 %i.b, label %bb.c [
    i8 1, label %.loopexit2
    i8 18, label %.loopexit2
  ]

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr i8, ptr %2, i64 1
  %i.d = load i8, ptr %i.c, align 1
  %i.e = icmp eq i8 %i.d, 3
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.f = add i32 %.0.val, -3
  %i.g = tail call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef %i.f)
  %i.h = zext i8 %i.g to i32
  %i.i = add i32 %.0.val, -4
  %i.j = tail call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef %i.i)
  %i.k = zext i8 %i.j to i32
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.l = getelementptr i8, ptr %2, i64 20
  %i.m = load i32, ptr %i.l, align 4              ; 3 uses
  %i.n = lshr i32 %i.m, 24
  %i.o = lshr i32 %i.m, 16
  %i.p = and i32 %i.o, 255
  %i.q = and i32 %i.m, 255
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.060 = phi i32 [ %i.h, %bb.d ], [ %i.p, %bb.e ] ; 3 uses
  %.059 = phi i32 [ 1, %bb.d ], [ %i.n, %bb.e ]   ; 3 uses
  %.0 = phi i32 [ %i.k, %bb.d ], [ %i.q, %bb.e ]  ; 4 uses
  %i.r = tail call ptr @val_to_str_const(i32 noundef %.060, ptr noundef nonnull @MADAttrModSectionVLarb_short, ptr noundef nonnull @.str.1227) ; 3 uses
  %i.s = load i32, ptr @hf_opa_VLArbitrationTable, align 4
  %i.t = shl nuw nsw i32 %.059, 8
  %i.u = tail call ptr @proto_tree_add_item(ptr noundef nonnull %0, i32 noundef %i.s, ptr noundef %1, i32 noundef %.0.val, i32 noundef %i.t, i32 noundef 0)
  %i.v = load i32, ptr @ett_vlarbitrationtable, align 4
  %i.w = tail call ptr @proto_item_add_subtree(ptr noundef %i.u, i32 noundef %i.v) ; 3 uses
  %i.x = add nuw nsw i32 %.0, %.059               ; 3 uses
  %.not14 = icmp eq i32 %.059, 0
  br i1 %.not14, label %.loopexit2, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f
  %i.y = icmp samesign ult i32 %.060, 3
  br i1 %i.y, label %.preheader.us, label %.lr.ph.split

.preheader.us:                                    ; preds = %.lr.ph, %.loopexit.us
  %.0618.us = phi i32 [ %i.ak, %.loopexit.us ], [ %.0, %.lr.ph ] ; 2 uses
  %.0637.us = phi i32 [ %i.ai, %.loopexit.us ], [ %.0.val, %.lr.ph ] ; 2 uses
  %i.z = load i32, ptr @ett_vlarbitrationtable_port, align 4
  %i.aa = tail call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef %i.w, ptr noundef %1, i32 noundef %.0637.us, i32 noundef 256, i32 noundef %i.z, ptr noundef null, ptr noundef nonnull @.str.2333, ptr noundef %i.r, i32 noundef %.0618.us) ; 3 uses
  br label %bb.g

bb.g:                                             ; preds = %.preheader.us, %bb.g
  %.0626.us = phi i32 [ 0, %.preheader.us ], [ %i.aj, %bb.g ] ; 2 uses
  %.1645.us = phi i32 [ %.0637.us, %.preheader.us ], [ %i.ai, %bb.g ] ; 4 uses
  %i.ab = load i32, ptr @hf_opa_VLArbitrationTable_reserved, align 4
  %i.ac = tail call ptr @proto_tree_add_item(ptr noundef %i.aa, i32 noundef %i.ab, ptr noundef %1, i32 noundef %.1645.us, i32 noundef 1, i32 noundef 0)
  tail call void (ptr, ptr, ...) @proto_item_prepend_text(ptr noundef %i.ac, ptr noundef nonnull @.str.2329, i32 noundef %.0626.us)
  %i.ad = load i32, ptr @hf_opa_VLArbitrationTable_VL, align 4
  %i.ae = tail call ptr @proto_tree_add_item(ptr noundef %i.aa, i32 noundef %i.ad, ptr noundef %1, i32 noundef %.1645.us, i32 noundef 1, i32 noundef 0)
  tail call void (ptr, ptr, ...) @proto_item_prepend_text(ptr noundef %i.ae, ptr noundef nonnull @.str.2331)
  %i.af = add i32 %.1645.us, 1
  %i.ag = load i32, ptr @hf_opa_VLArbitrationTable_Weight, align 4
  %i.ah = tail call ptr @proto_tree_add_item(ptr noundef %i.aa, i32 noundef %i.ag, ptr noundef %1, i32 noundef %i.af, i32 noundef 1, i32 noundef 0)
  %i.ai = add i32 %.1645.us, 2                    ; 3 uses
  tail call void (ptr, ptr, ...) @proto_item_prepend_text(ptr noundef %i.ah, ptr noundef nonnull @.str.2331)
  %i.aj = add nuw nsw i32 %.0626.us, 1            ; 2 uses
  %exitcond19.not = icmp eq i32 %i.aj, 128
  br i1 %exitcond19.not, label %.loopexit.us, label %bb.g, !llvm.loop !28

.loopexit.us:                                     ; preds = %bb.g
  %i.ak = add nuw nsw i32 %.0618.us, 1            ; 2 uses
  %i.al = icmp samesign ult i32 %i.ak, %i.x
  br i1 %i.al, label %.preheader.us, label %.loopexit2, !llvm.loop !29

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.am = icmp eq i32 %.060, 3
  br i1 %i.am, label %.preheader1.us, label %.lr.ph.split.split

.preheader1.us:                                   ; preds = %.lr.ph.split, %bb.i
  %.0618.us9 = phi i32 [ %i.au, %bb.i ], [ %.0, %.lr.ph.split ] ; 2 uses
  %.0637.us10 = phi i32 [ %i.at, %bb.i ], [ %.0.val, %.lr.ph.split ] ; 2 uses
  %i.an = load i32, ptr @ett_vlarbitrationtable_port, align 4
  %i.ao = tail call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef %i.w, ptr noundef %1, i32 noundef %.0637.us10, i32 noundef 256, i32 noundef %i.an, ptr noundef null, ptr noundef nonnull @.str.2333, ptr noundef %i.r, i32 noundef %.0618.us9)
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.preheader1.us
  %.14.us = phi i32 [ 0, %.preheader1.us ], [ %i.as, %bb.h ] ; 2 uses
  %.23.us = phi i32 [ %.0637.us10, %.preheader1.us ], [ %i.ar, %bb.h ] ; 3 uses
  %i.ap = load i32, ptr @hf_opa_VLArbitrationTable_Matrix, align 4
  %i.aq = tail call ptr @proto_tree_add_item(ptr noundef %i.ao, i32 noundef %i.ap, ptr noundef %1, i32 noundef %.23.us, i32 noundef 4, i32 noundef 0)
  %i.ar = add i32 %.23.us, 4
  tail call void (ptr, ptr, ...) @proto_item_prepend_text(ptr noundef %i.aq, ptr noundef nonnull @.str.2329, i32 noundef %.14.us)
  %i.as = add nuw nsw i32 %.14.us, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.as, 32
  br i1 %exitcond.not, label %bb.i, label %bb.h, !llvm.loop !30

bb.i:                                             ; preds = %bb.h
  %i.at = add i32 %.23.us, 132                    ; 2 uses
  %i.au = add nuw nsw i32 %.0618.us9, 1           ; 2 uses
  %i.av = icmp samesign ult i32 %i.au, %i.x
  br i1 %i.av, label %.preheader1.us, label %.loopexit2, !llvm.loop !29

.lr.ph.split.split:                               ; preds = %.lr.ph.split, %.lr.ph.split.split
  %.0618 = phi i32 [ %i.az, %.lr.ph.split.split ], [ %.0, %.lr.ph.split ] ; 2 uses
  %.0637 = phi i32 [ %i.ay, %.lr.ph.split.split ], [ %.0.val, %.lr.ph.split ] ; 2 uses
  %i.aw = load i32, ptr @ett_vlarbitrationtable_port, align 4
  %i.ax = tail call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef %i.w, ptr noundef %1, i32 noundef %.0637, i32 noundef 256, i32 noundef %i.aw, ptr noundef null, ptr noundef nonnull @.str.2333, ptr noundef %i.r, i32 noundef %.0618) ; 0 uses
  %i.ay = add i32 %.0637, 256                     ; 2 uses
  %i.az = add nuw nsw i32 %.0618, 1               ; 2 uses
  %i.ba = icmp samesign ult i32 %i.az, %i.x
  br i1 %i.ba, label %.lr.ph.split.split, label %.loopexit2, !llvm.loop !29

.loopexit2:                                       ; preds = %.lr.ph.split.split, %bb.i, %.loopexit.us, %bb.f, %bb.a, %bb.b, %bb.b
  %.065 = phi i32 [ %.0.val, %bb.a ], [ %.0.val, %bb.b ], [ %.0.val, %bb.b ], [ %.0.val, %bb.f ], [ %i.ai, %.loopexit.us ], [ %i.at, %bb.i ], [ %i.ay, %.lr.ph.split.split ]
  ret i32 %.065
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc i32 @parse_LinearForwardingTable(ptr noundef %0, ptr noundef %1, i32 %.0.val, ptr nofree noundef readonly captures(none) %2) unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr i8, ptr %2, i64 3
  %i.b = load i8, ptr %i.a, align 1
  switch i8 %i.b, label %bb.c [
    i8 1, label %.loopexit
    i8 18, label %.loopexit
  ]

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr i8, ptr %2, i64 1
  %i.d = load i8, ptr %i.c, align 1
  %i.e = icmp eq i8 %i.d, 3
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.f = add i32 %.0.val, -4
  %i.g = tail call i32 @tvb_get_ntohl(ptr noundef %1, i32 noundef %i.f)
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.h = getelementptr i8, ptr %2, i64 20
  %i.i = load i32, ptr %i.h, align 4              ; 2 uses
  %i.j = lshr i32 %i.i, 24
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.033.in = phi i32 [ %i.g, %bb.d ], [ %i.i, %bb.e ]
  %.0 = phi i32 [ 1, %bb.d ], [ %i.j, %bb.e ]     ; 3 uses
  %.033 = and i32 %.033.in, 262143                ; 2 uses
  %i.k = load i32, ptr @hf_opa_LinearForwardingTable, align 4
  %i.l = shl nuw nsw i32 %.0, 6
  %i.m = tail call ptr @proto_tree_add_item(ptr noundef nonnull %0, i32 noundef %i.k, ptr noundef %1, i32 noundef %.0.val, i32 noundef %i.l, i32 noundef 0)
  %i.n = load i32, ptr @ett_linearforwardingtable, align 4
  %i.o = tail call ptr @proto_item_add_subtree(ptr noundef %i.m, i32 noundef %i.n)
  %i.p = add nuw nsw i32 %.033, %.0
  %.not5 = icmp eq i32 %.0, 0
  br i1 %.not5, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f, %bb.h
  %.0354 = phi i32 [ %i.w, %bb.h ], [ %.033, %bb.f ] ; 2 uses
  %.0363 = phi i32 [ %i.u, %bb.h ], [ %.0.val, %bb.f ] ; 2 uses
  %i.q = load i32, ptr @ett_linearforwardingtable_block, align 4
  %i.r = tail call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef %i.o, ptr noundef %1, i32 noundef %.0363, i32 noundef 64, i32 noundef %i.q, ptr noundef null, ptr noundef nonnull @.str.2338, i32 noundef %.0354)
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.g
  %.0342 = phi i32 [ 0, %.lr.ph ], [ %i.v, %bb.g ] ; 2 uses
  %.11 = phi i32 [ %.0363, %.lr.ph ], [ %i.u, %bb.g ] ; 2 uses
  %i.s = load i32, ptr @hf_opa_LinearForwardingTable_Port, align 4
  %i.t = tail call ptr @proto_tree_add_item(ptr noundef %i.r, i32 noundef %i.s, ptr noundef %1, i32 noundef %.11, i32 noundef 1, i32 noundef 0)
  %i.u = add i32 %.11, 1                          ; 3 uses
  tail call void (ptr, ptr, ...) @proto_item_prepend_text(ptr noundef %i.t, ptr noundef nonnull @.str.2329, i32 noundef %.0342)
  %i.v = add nuw nsw i32 %.0342, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.v, 64
  br i1 %exitcond.not, label %bb.h, label %bb.g, !llvm.loop !31

bb.h:                                             ; preds = %bb.g
  %i.w = add nuw nsw i32 %.0354, 1                ; 2 uses
  %i.x = icmp samesign ult i32 %i.w, %i.p
  br i1 %i.x, label %.lr.ph, label %.loopexit, !llvm.loop !32

.loopexit:                                        ; preds = %bb.h, %bb.f, %bb.a, %bb.b, %bb.b
  %.037 = phi i32 [ %.0.val, %bb.a ], [ %.0.val, %bb.b ], [ %.0.val, %bb.b ], [ %.0.val, %bb.f ], [ %i.u, %bb.h ]
  ret i32 %.037
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc i32 @parse_MulticastForwardingTable(ptr noundef %0, ptr noundef %1, i32 %.0.val, ptr nofree noundef readonly captures(none) %2) unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr i8, ptr %2, i64 3
  %i.b = load i8, ptr %i.a, align 1
  switch i8 %i.b, label %bb.c [
    i8 1, label %.loopexit
    i8 18, label %.loopexit
  ]

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr i8, ptr %2, i64 1
  %i.d = load i8, ptr %i.c, align 1
  %i.e = icmp eq i8 %i.d, 3
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.f = add i32 %.0.val, -4
  %i.g = tail call i32 @tvb_get_ntohl(ptr noundef %1, i32 noundef %i.f)
  %i.h = and i32 %i.g, 2097151
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.i = getelementptr i8, ptr %2, i64 20
  %i.j = load i32, ptr %i.i, align 4              ; 3 uses
  %i.k = lshr i32 %i.j, 24
  %i.l = lshr i32 %i.j, 22
  %i.m = and i32 %i.l, 3
  %i.n = and i32 %i.j, 1048575
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.037 = phi i32 [ %i.h, %bb.d ], [ %i.n, %bb.e ] ; 2 uses
  %.036 = phi i32 [ 1, %bb.d ], [ %i.k, %bb.e ]   ; 3 uses
  %.0 = phi i32 [ 0, %bb.d ], [ %i.m, %bb.e ]
  %i.o = tail call ptr @val_to_str_const(i32 noundef %.0, ptr noundef nonnull @GroupTablePosition, ptr noundef nonnull @.str.2079)
  %i.p = load i32, ptr @hf_opa_MulticastForwardingTable, align 4
  %i.q = shl nuw nsw i32 %.036, 6
  %i.r = tail call ptr @proto_tree_add_item(ptr noundef nonnull %0, i32 noundef %i.p, ptr noundef %1, i32 noundef %.0.val, i32 noundef %i.q, i32 noundef 0)
  %i.s = load i32, ptr @ett_multicastforwardingtable, align 4
  %i.t = tail call ptr @proto_item_add_subtree(ptr noundef %i.r, i32 noundef %i.s)
  %i.u = add nuw nsw i32 %.036, %.037
  %.not5 = icmp eq i32 %.036, 0
  br i1 %.not5, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f, %.lr.ph
  %.0394 = phi i32 [ %i.av, %.lr.ph ], [ %.037, %bb.f ] ; 2 uses
  %.0403 = phi i32 [ %i.au, %.lr.ph ], [ %.0.val, %bb.f ] ; 10 uses
  %i.v = load i32, ptr @ett_multicastforwardingtable_block, align 4
  %i.w = tail call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef %i.t, ptr noundef %1, i32 noundef %.0403, i32 noundef 64, i32 noundef %i.v, ptr noundef null, ptr noundef nonnull @.str.2339, i32 noundef %.0394, ptr noundef %i.o) ; 8 uses
  %i.x = load i32, ptr @hf_opa_MulticastForwardingTable_PortMask, align 4
  %i.y = tail call ptr @proto_tree_add_item(ptr noundef %i.w, i32 noundef %i.x, ptr noundef %1, i32 noundef %.0403, i32 noundef 8, i32 noundef 0)
  %i.z = add i32 %.0403, 8
  tail call void (ptr, ptr, ...) @proto_item_prepend_text(ptr noundef %i.y, ptr noundef nonnull @.str.2329, i32 noundef 0)
  %i.aa = load i32, ptr @hf_opa_MulticastForwardingTable_PortMask, align 4
  %i.ab = tail call ptr @proto_tree_add_item(ptr noundef %i.w, i32 noundef %i.aa, ptr noundef %1, i32 noundef %i.z, i32 noundef 8, i32 noundef 0)
  %i.ac = add i32 %.0403, 16
  tail call void (ptr, ptr, ...) @proto_item_prepend_text(ptr noundef %i.ab, ptr noundef nonnull @.str.2329, i32 noundef 1)
  %i.ad = load i32, ptr @hf_opa_MulticastForwardingTable_PortMask, align 4
  %i.ae = tail call ptr @proto_tree_add_item(ptr noundef %i.w, i32 noundef %i.ad, ptr noundef %1, i32 noundef %i.ac, i32 noundef 8, i32 noundef 0)
  %i.af = add i32 %.0403, 24
  tail call void (ptr, ptr, ...) @proto_item_prepend_text(ptr noundef %i.ae, ptr noundef nonnull @.str.2329, i32 noundef 2)
  %i.ag = load i32, ptr @hf_opa_MulticastForwardingTable_PortMask, align 4
  %i.ah = tail call ptr @proto_tree_add_item(ptr noundef %i.w, i32 noundef %i.ag, ptr noundef %1, i32 noundef %i.af, i32 noundef 8, i32 noundef 0)
  %i.ai = add i32 %.0403, 32
  tail call void (ptr, ptr, ...) @proto_item_prepend_text(ptr noundef %i.ah, ptr noundef nonnull @.str.2329, i32 noundef 3)
  %i.aj = load i32, ptr @hf_opa_MulticastForwardingTable_PortMask, align 4
  %i.ak = tail call ptr @proto_tree_add_item(ptr noundef %i.w, i32 noundef %i.aj, ptr noundef %1, i32 noundef %i.ai, i32 noundef 8, i32 noundef 0)
  %i.al = add i32 %.0403, 40
  tail call void (ptr, ptr, ...) @proto_item_prepend_text(ptr noundef %i.ak, ptr noundef nonnull @.str.2329, i32 noundef 4)
  %i.am = load i32, ptr @hf_opa_MulticastForwardingTable_PortMask, align 4
  %i.an = tail call ptr @proto_tree_add_item(ptr noundef %i.w, i32 noundef %i.am, ptr noundef %1, i32 noundef %i.al, i32 noundef 8, i32 noundef 0)
  %i.ao = add i32 %.0403, 48
  tail call void (ptr, ptr, ...) @proto_item_prepend_text(ptr noundef %i.an, ptr noundef nonnull @.str.2329, i32 noundef 5)
  %i.ap = load i32, ptr @hf_opa_MulticastForwardingTable_PortMask, align 4
  %i.aq = tail call ptr @proto_tree_add_item(ptr noundef %i.w, i32 noundef %i.ap, ptr noundef %1, i32 noundef %i.ao, i32 noundef 8, i32 noundef 0)
  %i.ar = add i32 %.0403, 56
  tail call void (ptr, ptr, ...) @proto_item_prepend_text(ptr noundef %i.aq, ptr noundef nonnull @.str.2329, i32 noundef 6)
  %i.as = load i32, ptr @hf_opa_MulticastForwardingTable_PortMask, align 4
  %i.at = tail call ptr @proto_tree_add_item(ptr noundef %i.w, i32 noundef %i.as, ptr noundef %1, i32 noundef %i.ar, i32 noundef 8, i32 noundef 0)
  %i.au = add i32 %.0403, 64                      ; 2 uses
  tail call void (ptr, ptr, ...) @proto_item_prepend_text(ptr noundef %i.at, ptr noundef nonnull @.str.2329, i32 noundef 7)
  %i.av = add nuw nsw i32 %.0394, 1               ; 2 uses
  %i.aw = icmp samesign ult i32 %i.av, %i.u
  br i1 %i.aw, label %.lr.ph, label %.loopexit, !llvm.loop !33

.loopexit:                                        ; preds = %.lr.ph, %bb.f, %bb.a, %bb.b, %bb.b
  %.041 = phi i32 [ %.0.val, %bb.a ], [ %.0.val, %bb.b ], [ %.0.val, %bb.b ], [ %.0.val, %bb.f ], [ %i.au, %.lr.ph ]
  ret i32 %.041
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc i32 @parse_SMInfo(ptr noundef %0, ptr noundef %1, i32 %.0.val, ptr nofree noundef readonly captures(none) %2) unnamed_addr #0 {
end_hunk_0
