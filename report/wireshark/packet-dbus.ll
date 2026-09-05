Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-dbus?download=true
inline.NumInlined: 72
inline.NumDeleted: 19
begin_hunk_0_@is_dbus_bus_name_valid:bb.a
  %.023 = phi i32 [ %i.aa, %bb.j ], [ 0, %bb.a ]
  %.1 = phi ptr [ %i.ap, %bb.j ], [ %spec.select, %bb.a ] ; 2 uses
  %i.s = load i8, ptr %.1, align 1                ; 3 uses
  %i.t = or i8 %i.s, 32
  %i.u = sext i8 %i.t to i32
  %i.v = add nsw i32 %i.u, -97
  %i.w = icmp ult i32 %i.v, 26
  br i1 %i.w, label %bb.h, label %bb.f

bb.f:                                             ; preds = %.split
  switch i8 %i.s, label %bb.g [
    i8 95, label %bb.h
    i8 45, label %bb.h
  ]

bb.g:                                             ; preds = %bb.f
  %i.x = sext i8 %i.s to i32
  %i.y = add nsw i32 %i.x, -48
  %i.z = icmp ult i32 %i.y, 10
  br i1 %i.z, label %bb.h, label %.loopexit

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.f, %.split
  %i.aa = add i32 %.023, 1                        ; 2 uses
  br label %.critedge

.critedge:                                        ; preds = %.critedge.backedge, %bb.h
  %.1.pn = phi ptr [ %.1, %bb.h ], [ %.2, %.critedge.backedge ] ; 2 uses
  %.2 = getelementptr i8, ptr %.1.pn, i64 1       ; 3 uses
  %i.ab = load i8, ptr %.2, align 1               ; 4 uses
  %i.ac = or i8 %i.ab, 32
  %i.ad = sext i8 %i.ac to i32
  %i.ae = add nsw i32 %i.ad, -97
  %i.af = icmp ult i32 %i.ae, 26
  %i.ag = sext i8 %i.ab to i32
  %i.ah = add nsw i32 %i.ag, -48
  %i.ai = icmp ult i32 %i.ah, 10
  %or.cond30 = select i1 %i.af, i1 true, i1 %i.ai
  br i1 %or.cond30, label %.critedge.backedge, label %bb.i

bb.i:                                             ; preds = %.critedge
  switch i8 %i.ab, label %bb.j [
    i8 95, label %.critedge.backedge
    i8 45, label %.critedge.backedge
    i8 0, label %.split36.us
  ]

.critedge.backedge:                               ; preds = %bb.i, %bb.i, %.critedge
  br label %.critedge, !llvm.loop !16

.split36.us:                                      ; preds = %bb.d, %bb.i
  %.us-phi = phi i32 [ %i.aa, %bb.i ], [ %i.h, %bb.d ]
  %.us-phi37 = phi ptr [ %.2, %bb.i ], [ %.2.us, %bb.d ]
  %i.aj = ptrtoint ptr %.us-phi37 to i64
  %i.ak = ptrtoint ptr %0 to i64
  %i.al = sub i64 %i.aj, %i.ak
  %i.am = icmp sgt i32 %.us-phi, 1
  %i.an = icmp ult i64 %i.al, 256
  %i.ao = and i1 %i.am, %i.an
  br label %.loopexit

bb.j:                                             ; preds = %bb.i
  %i.ap = getelementptr i8, ptr %.1.pn, i64 2
  %i.aq = icmp eq i8 %i.ab, 46
  br i1 %i.aq, label %.split, label %.loopexit, !llvm.loop !17

.loopexit:                                        ; preds = %bb.e, %bb.b, %bb.g, %bb.j, %.split36.us
  %.0 = phi i1 [ %i.ao, %.split36.us ], [ false, %bb.g ], [ false, %bb.j ], [ false, %bb.b ], [ false, %bb.e ]
  ret i1 %.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind null_pointer_is_valid willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare noalias ptr @wmem_strdup(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_item_get_subtree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @resolve_unique_name(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = tail call ptr @ptvcursor_tvbuff(ptr noundef %i.a) ; 2 uses
  %i.c = getelementptr i8, ptr %0, i64 96
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %proto_item_set_generated.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr @unique_name_map, align 8
  %i.f = tail call ptr @wmem_map_lookup(ptr noundef %i.e, ptr noundef nonnull %i.d) ; 4 uses
  %.not24 = icmp eq ptr %i.f, null
  br i1 %.not24, label %proto_item_set_generated.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8              ; 4 uses
  %i.i = getelementptr i8, ptr %i.h, i64 208
  %i.j = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.f) #11
  %i.k = trunc i64 %i.j to i32
  %i.l = add i32 %i.k, 1
  store i32 7, ptr %i.i, align 8
  %i.m = getelementptr i8, ptr %i.h, i64 212
  store i32 %i.l, ptr %i.m, align 4
  %i.n = getelementptr i8, ptr %i.h, i64 216
  store ptr %i.f, ptr %i.n, align 8
  %i.o = getelementptr i8, ptr %i.h, i64 224
  store ptr null, ptr %i.o, align 8
  %i.p = load i32, ptr @hf_dbus_sender, align 4
  %i.q = tail call ptr @proto_tree_add_string(ptr noundef %1, i32 noundef %i.p, ptr noundef %i.b, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.f) ; 2 uses
  %.not.i = icmp eq ptr %i.q, null
  br i1 %.not.i, label %proto_item_set_generated.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr i8, ptr %i.q, i64 40
  %i.s = load ptr, ptr %i.r, align 8              ; 2 uses
  %.not5.i = icmp eq ptr %i.s, null
  br i1 %.not5.i, label %proto_item_set_generated.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr i8, ptr %i.s, i64 28       ; 2 uses
  %i.u = load i32, ptr %i.t, align 4
  %i.v = or i32 %i.u, 2
  store i32 %i.v, ptr %i.t, align 4
  br label %proto_item_set_generated.exit

proto_item_set_generated.exit:                    ; preds = %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %i.w = getelementptr i8, ptr %0, i64 88
  %i.x = load ptr, ptr %i.w, align 8              ; 2 uses
  %.not25 = icmp eq ptr %i.x, null
  br i1 %.not25, label %proto_item_set_generated.exit29, label %bb.f

bb.f:                                             ; preds = %proto_item_set_generated.exit
  %i.y = load ptr, ptr @unique_name_map, align 8
  %i.z = tail call ptr @wmem_map_lookup(ptr noundef %i.y, ptr noundef nonnull %i.x) ; 4 uses
  %.not26 = icmp eq ptr %i.z, null
  br i1 %.not26, label %proto_item_set_generated.exit29, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aa = getelementptr i8, ptr %0, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8            ; 4 uses
  %i.ac = getelementptr i8, ptr %i.ab, i64 232
  %i.ad = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.z) #11
  %i.ae = trunc i64 %i.ad to i32
  %i.af = add i32 %i.ae, 1
  store i32 7, ptr %i.ac, align 8
  %i.ag = getelementptr i8, ptr %i.ab, i64 236
  store i32 %i.af, ptr %i.ag, align 4
  %i.ah = getelementptr i8, ptr %i.ab, i64 240
  store ptr %i.z, ptr %i.ah, align 8
  %i.ai = getelementptr i8, ptr %i.ab, i64 248
  store ptr null, ptr %i.ai, align 8
  %i.aj = load i32, ptr @hf_dbus_destination, align 4
  %i.ak = tail call ptr @proto_tree_add_string(ptr noundef %1, i32 noundef %i.aj, ptr noundef %i.b, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.z) ; 2 uses
  %.not.i27 = icmp eq ptr %i.ak, null
  br i1 %.not.i27, label %proto_item_set_generated.exit29, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.al = getelementptr i8, ptr %i.ak, i64 40
  %i.am = load ptr, ptr %i.al, align 8            ; 2 uses
  %.not5.i28 = icmp eq ptr %i.am, null
  br i1 %.not5.i28, label %proto_item_set_generated.exit29, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.an = getelementptr i8, ptr %i.am, i64 28     ; 2 uses
  %i.ao = load i32, ptr %i.an, align 4
  %i.ap = or i32 %i.ao, 2
  store i32 %i.ap, ptr %i.an, align 4
  br label %proto_item_set_generated.exit29

proto_item_set_generated.exit29:                  ; preds = %bb.i, %bb.h, %bb.g, %bb.f, %proto_item_set_generated.exit
  ret void
}

; Function Attrs: null_pointer_is_valid
declare void @col_add_fstr(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc range(i32 0, 2) i32 @add_padding(ptr nofree noundef captures(none) %0, i8 noundef signext %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = tail call ptr @ptvcursor_tvbuff(ptr noundef %i.a)
  %i.c = load ptr, ptr %0, align 8
  %i.d = tail call i32 @ptvcursor_current_offset(ptr noundef %i.c) ; 4 uses
  %switch.tableidx = add i8 %1, -40               ; 2 uses
  %i.e = icmp ult i8 %switch.tableidx, 84
  br i1 %i.e, label %switch.lookup, label %calculate_padding_len.exit

switch.lookup:                                    ; preds = %bb.a
  %i.f = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.add_padding, i64 %i.f
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  br label %calculate_padding_len.exit

calculate_padding_len.exit:                       ; preds = %switch.lookup, %bb.a
  %.0.i = phi i32 [ 1, %bb.a ], [ %switch.ext, %switch.lookup ] ; 3 uses
  %i.g = srem i32 %i.d, %.0.i
  %i.h = sub nsw i32 %.0.i, %i.g
  %.lhs.trunc.i = trunc nuw nsw i32 %i.h to i8
  %.rhs.trunc.i = trunc nuw nsw i32 %.0.i to i8
  %2 = add nsw i8 %.rhs.trunc.i, -1
  %3 = and i8 %2, %.lhs.trunc.i                   ; 2 uses
  %.not = icmp eq i8 %3, 0
  br i1 %.not, label %proto_item_set_hidden.exit, label %bb.b

bb.b:                                             ; preds = %calculate_padding_len.exit
  %.sext.i = zext nneg i8 %3 to i32               ; 2 uses
  %i.i = load ptr, ptr %0, align 8
  %i.j = load i32, ptr @hf_dbus_padding, align 4
  %i.k = getelementptr i8, ptr %0, i64 16
  %i.l = load i32, ptr %i.k, align 8
  %i.m = tail call ptr @ptvcursor_add(ptr noundef %i.i, i32 noundef %i.j, i32 noundef %.sext.i, i32 noundef %i.l) ; 2 uses
  %i.n = getelementptr i8, ptr %0, i64 40         ; 3 uses
  store ptr %i.m, ptr %i.n, align 8
  %i.o = add i32 %i.d, %.sext.i                   ; 2 uses
  %.not2426 = icmp slt i32 %i.d, %i.o
  br i1 %.not2426, label %.lr.ph, label %.critedge

bb.c:                                             ; preds = %.lr.ph
  %i.p = add i32 %.02027, 1                       ; 2 uses
  %exitcond.not = icmp eq i32 %i.p, %i.o
  br i1 %exitcond.not, label %.critedge.loopexit, label %.lr.ph, !llvm.loop !18

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %.02027 = phi i32 [ %i.p, %bb.c ], [ %i.d, %bb.b ] ; 2 uses
  %i.q = tail call zeroext i8 @tvb_get_uint8(ptr noundef %i.b, i32 noundef %.02027)
  %.not23 = icmp eq i8 %i.q, 0
  br i1 %.not23, label %bb.c, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %i.r = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.r, align 8
  %.val25 = load ptr, ptr %i.n, align 8
  %i.s = tail call ptr @expert_add_info(ptr noundef %.val, ptr noundef %.val25, ptr noundef nonnull @ei_dbus_padding_invalid) ; 0 uses
  br label %proto_item_set_hidden.exit

.critedge.loopexit:                               ; preds = %bb.c
  %.pre = load ptr, ptr %i.n, align 8
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %bb.b
  %i.t = phi ptr [ %.pre, %.critedge.loopexit ], [ %i.m, %bb.b ] ; 2 uses
  %.not.i = icmp eq ptr %i.t, null
  br i1 %.not.i, label %proto_item_set_hidden.exit, label %bb.e

bb.e:                                             ; preds = %.critedge
  %i.u = getelementptr i8, ptr %i.t, i64 40
  %i.v = load ptr, ptr %i.u, align 8              ; 2 uses
  %.not5.i = icmp eq ptr %i.v, null
  br i1 %.not5.i, label %proto_item_set_hidden.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = getelementptr i8, ptr %i.v, i64 28       ; 2 uses
  %i.x = load i32, ptr %i.w, align 4
  %i.y = or i32 %i.x, 1
  store i32 %i.y, ptr %i.w, align 4
  br label %proto_item_set_hidden.exit

proto_item_set_hidden.exit:                       ; preds = %bb.f, %bb.e, %.critedge, %bb.d, %calculate_padding_len.exit
  %.1 = phi i32 [ 1, %bb.d ], [ 0, %calculate_padding_len.exit ], [ 0, %.critedge ], [ 0, %bb.e ], [ 0, %bb.f ]
  ret i32 %.1
}

; Function Attrs: null_pointer_is_valid
declare ptr @ptvcursor_add_ret_boolean(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @ptvcursor_add_ret_int(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i64 @tvb_get_int64(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @ptvcursor_add(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i64 @tvb_get_uint64(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare double @tvb_get_ieee_double(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc ptr @add_dbus_string(ptr nofree noundef captures(none) initializes((40, 48)) %0, i32 noundef %1, i32 noundef range(i32 1, 5) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.b = load ptr, ptr %0, align 8
  %i.c = tail call i32 @ptvcursor_current_offset(ptr noundef %i.b)
  %i.d = load ptr, ptr %0, align 8
  %i.e = getelementptr i8, ptr %0, i64 16
  %i.f = load i32, ptr %i.e, align 8
  %i.g = or i32 %i.f, 2
  %i.h = getelementptr i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = getelementptr i8, ptr %i.i, i64 416
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = call ptr @ptvcursor_add_ret_string(ptr noundef %i.d, i32 noundef %1, i32 noundef %2, i32 noundef %i.g, ptr noundef %i.k, ptr noundef nonnull %i.a) ; 2 uses
  %i.m = load ptr, ptr %0, align 8
  %i.n = call i32 @ptvcursor_current_offset(ptr noundef %i.m)
  %i.o = sub i32 %i.n, %i.c                       ; 2 uses
  %i.p = load ptr, ptr %0, align 8
  %i.q = call ptr @ptvcursor_tvbuff(ptr noundef %i.p)
  %i.r = load ptr, ptr %0, align 8
  %i.s = call i32 @ptvcursor_current_offset(ptr noundef %i.r)
  %i.t = call zeroext i8 @tvb_get_uint8(ptr noundef %i.q, i32 noundef %i.s)
  %i.u = add i32 %i.o, 1
  call void @proto_item_set_len(ptr noundef %i.l, i32 noundef %i.u)
  %i.v = load ptr, ptr %0, align 8
  call void @ptvcursor_advance(ptr noundef %i.v, i32 noundef 1)
  %i.w = getelementptr i8, ptr %0, i64 40
  store ptr %i.l, ptr %i.w, align 8
  %i.x = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.y = call i64 @strlen(ptr noundef %i.x) #11
  %i.z = sub i32 %i.o, %2
  %i.aa = zext i32 %i.z to i64
  %i.ab = icmp ne i64 %i.y, %i.aa
  %i.ac = icmp ne i8 %i.t, 0
  %or.cond = select i1 %i.ab, i1 true, i1 %i.ac
  %. = select i1 %or.cond, ptr null, ptr %i.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret ptr %.
}

; Function Attrs: null_pointer_is_valid
declare i32 @g_utf8_validate(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc zeroext i1 @is_dbus_signature_valid(ptr nofree noundef nonnull readonly captures(address) %0, ptr %.8.val.416.val) unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @wmem_list_new(ptr noundef %.8.val.416.val) ; 4 uses
  %i.b = load i8, ptr %0, align 1                 ; 2 uses
  %.not2 = icmp eq i8 %i.b, 0
  br i1 %.not2, label %._crit_edge, label %.lr.ph.preheader

.lr.ph:                                           ; preds = %bb.j
  %i.c = add nuw nsw i64 %i.d, 1
  %exitcond = icmp eq i64 %i.d, 254
  br i1 %exitcond, label %is_basic_type.exit, label %.lr.ph.preheader, !llvm.loop !19

.lr.ph.preheader:                                 ; preds = %bb.a, %.lr.ph
  %i.d = phi i64 [ %i.c, %.lr.ph ], [ 1, %bb.a ]  ; 2 uses
  %.02239 = phi ptr [ %i.f, %.lr.ph ], [ %0, %bb.a ] ; 2 uses
  %.01958 = phi i8 [ %i.e, %.lr.ph ], [ 0, %bb.a ]
  %i.e = phi i8 [ %i.s, %.lr.ph ], [ %i.b, %bb.a ] ; 3 uses
  %i.f = getelementptr i8, ptr %.02239, i64 1     ; 5 uses
  switch i8 %i.e, label %is_basic_type.exit [
    i8 121, label %thread-pre-split
    i8 103, label %thread-pre-split
    i8 118, label %thread-pre-split
    i8 110, label %thread-pre-split
    i8 113, label %thread-pre-split
    i8 105, label %thread-pre-split
    i8 117, label %thread-pre-split
    i8 98, label %thread-pre-split
    i8 111, label %thread-pre-split
    i8 115, label %thread-pre-split
    i8 104, label %thread-pre-split
    i8 120, label %thread-pre-split
    i8 116, label %thread-pre-split
    i8 100, label %thread-pre-split
    i8 97, label %bb.b
    i8 40, label %bb.c
    i8 123, label %bb.d
    i8 41, label %bb.h
    i8 125, label %bb.h
  ]

bb.b:                                             ; preds = %.lr.ph.preheader
  %i.g = load i8, ptr %i.f, align 1               ; 2 uses
  switch i8 %i.g, label %bb.j [
    i8 0, label %is_basic_type.exit
    i8 41, label %is_basic_type.exit
    i8 125, label %is_basic_type.exit
  ]

bb.c:                                             ; preds = %.lr.ph.preheader
  %i.h = load i8, ptr %i.f, align 1
  %i.i = icmp eq i8 %i.h, 41
  br i1 %i.i, label %is_basic_type.exit, label %thread-pre-split.sink.split

bb.d:                                             ; preds = %.lr.ph.preheader
  %.not27 = icmp eq i8 %.01958, 97
  br i1 %.not27, label %bb.e, label %is_basic_type.exit

bb.e:                                             ; preds = %bb.d
  %i.j = load i8, ptr %i.f, align 1
  switch i8 %i.j, label %is_basic_type.exit [
    i8 121, label %bb.f
    i8 98, label %bb.f
    i8 110, label %bb.f
    i8 113, label %bb.f
    i8 105, label %bb.f
    i8 117, label %bb.f
    i8 120, label %bb.f
    i8 116, label %bb.f
    i8 100, label %bb.f
    i8 115, label %bb.f
    i8 111, label %bb.f
    i8 103, label %bb.f
    i8 104, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e
  %i.k = getelementptr i8, ptr %.02239, i64 2
  %i.l = tail call fastcc ptr @skip_single_complete_type(ptr noundef %i.k) ; 2 uses
  %.not28 = icmp eq ptr %i.l, null
  br i1 %.not28, label %is_basic_type.exit, label %bb.g
end_hunk_0
