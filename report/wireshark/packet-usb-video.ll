Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-usb-video?download=true
inline.NumInlined: 22
inline.NumDeleted: 17
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@dissect_usb_vid_descriptor:bb.a
  %i.ll = load i32, ptr @hf_usb_vid_transfer_characteristics, align 4
  %i.lm = tail call ptr @proto_tree_add_item(ptr noundef %i.go, i32 noundef %i.ll, ptr noundef %i.l, i32 noundef 4, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.ln = load i32, ptr @hf_usb_vid_matrix_coefficients, align 4
  %i.lo = tail call ptr @proto_tree_add_item(ptr noundef %i.go, i32 noundef %i.ln, ptr noundef %i.l, i32 noundef 5, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  br label %dissect_usb_video_format.exit.i

dissect_usb_video_format.exit.i:                  ; preds = %bb.bo, %dissect_usb_video_frame.exit.i, %bb.be, %bb.bd, %dissect_usb_video_streaming_input_header.exit.i, %bb.au
  %.0.i35 = phi i32 [ 3, %bb.au ], [ %.1.i.i37, %dissect_usb_video_streaming_input_header.exit.i ], [ 6, %bb.bo ], [ %.4.i.i, %dissect_usb_video_frame.exit.i ], [ %i.jg, %bb.be ], [ %i.jd, %bb.bd ] ; 3 uses
  %i.lp = icmp slt i32 %.0.i35, %i.k
  br i1 %i.lp, label %bb.bp, label %.critedge

bb.bp:                                            ; preds = %dissect_usb_video_format.exit.i
  %i.lq = load i32, ptr @hf_usb_vid_descriptor_data, align 4
  %i.lr = sub i32 %i.k, %.0.i35
  %i.ls = call ptr @proto_tree_add_item(ptr noundef %i.go, i32 noundef %i.lq, ptr noundef %i.l, i32 noundef %.0.i35, i32 noundef %i.lr, i32 noundef 0) ; 0 uses
  br label %.critedge

.critedge:                                        ; preds = %bb.j, %bb.i, %bb.bp, %dissect_usb_video_format.exit.i, %bb.g, %bb.f, %bb.h, %bb.a, %dissect_usb_video_control_interface_descriptor.exit
  %.0 = phi i32 [ 0, %bb.h ], [ %i.k, %dissect_usb_video_control_interface_descriptor.exit ], [ %i.k, %bb.f ], [ 0, %bb.j ], [ %i.k, %bb.bp ], [ %i.k, %bb.g ], [ 0, %bb.a ], [ %i.k, %dissect_usb_video_format.exit.i ], [ 0, %bb.i ]
  ret i32 %.0
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_usb_vid_interrupt(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3) #0 {
bb.a:
  %i.a = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef 0)
  %i.b = getelementptr i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  tail call void @col_set_str(ptr noundef %i.c, i32 noundef 35, ptr noundef @.str.409)
  %i.d = icmp sgt i32 %i.a, 0
  br i1 %i.d, label %bb.b, label %bb.p

bb.b:                                             ; preds = %bb.a
  %i.e = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 0)
  %i.f = and i8 %i.e, 15
  %i.g = load i32, ptr @hf_usb_vid_interrupt_bStatusType, align 4
  %i.h = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.g, ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.i = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 1) ; 3 uses
  %i.j = load i32, ptr @hf_usb_vid_interrupt_bOriginator, align 4
  %i.k = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.j, ptr noundef %0, i32 noundef 1, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.l = icmp eq i8 %i.f, 1
  br i1 %i.l, label %bb.c, label %bb.p

bb.c:                                             ; preds = %bb.b
  %i.m = load i32, ptr @hf_usb_vid_control_interrupt_bEvent, align 4
  %i.n = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.m, ptr noundef %0, i32 noundef 2, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.o = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 3) ; 2 uses
  %i.p = getelementptr i8, ptr %3, i64 40
  %i.q = load ptr, ptr %i.p, align 8              ; 4 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %get_control_selector_name.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr i8, ptr %i.q, i64 40
  %i.t = load i32, ptr %i.s, align 8
  %.not.i.i = icmp eq i32 %i.t, 3
  br i1 %.not.i.i, label %bb.e, label %get_control_selector_name.exit

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr i8, ptr %i.q, i64 32
  %i.v = load ptr, ptr %i.u, align 8              ; 2 uses
  %.not16.i.i = icmp eq ptr %i.v, null
  br i1 %.not16.i.i, label %.thread.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = zext i8 %i.i to i32
  %i.y = tail call ptr @wmem_tree_lookup32(ptr noundef %i.w, i32 noundef %i.x) ; 3 uses
  %i.z = icmp eq i8 %i.i, 0
  br i1 %i.z, label %bb.g, label %bb.h

.thread.i.i:                                      ; preds = %bb.e
  %i.aa = icmp eq i8 %i.i, 0
  br i1 %i.aa, label %bb.g, label %get_control_selector_name.exit

bb.g:                                             ; preds = %.thread.i.i, %bb.f
  %i.ab = getelementptr i8, ptr %i.q, i64 6
  %i.ac = load i16, ptr %i.ab, align 2
  switch i16 %i.ac, label %get_control_selector_name.exit [
    i16 1, label %get_control_selector_values.exit.thread10.i
    i16 2, label %get_control_selector_values.exit.thread10.fold.split.i
  ]

bb.h:                                             ; preds = %bb.f
  %.not17.i.i = icmp eq ptr %i.y, null
  br i1 %.not17.i.i, label %get_control_selector_name.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ad = getelementptr i8, ptr %i.y, i64 1
  %i.ae = load i8, ptr %i.ad, align 1
  switch i8 %i.ae, label %get_control_selector_name.exit [
    i8 2, label %bb.j
    i8 5, label %get_control_selector_values.exit.thread10.i
    i8 4, label %bb.k
  ]

bb.j:                                             ; preds = %bb.i
  %i.af = getelementptr i8, ptr %i.y, i64 2
  %i.ag = load i16, ptr %i.af, align 2
  %i.ah = icmp eq i16 %i.ag, 513
  br i1 %i.ah, label %get_control_selector_values.exit.thread10.i, label %get_control_selector_name.exit

bb.k:                                             ; preds = %bb.i
  br label %get_control_selector_values.exit.thread10.i

get_control_selector_values.exit.thread10.fold.split.i: ; preds = %bb.g
  br label %get_control_selector_values.exit.thread10.i

get_control_selector_values.exit.thread10.i:      ; preds = %get_control_selector_values.exit.thread10.fold.split.i, %bb.k, %bb.j, %bb.i, %bb.g
  %.013.i13.i = phi ptr [ @cs_camera_terminal_ext, %bb.j ], [ @cs_selector_unit_ext, %bb.k ], [ @cs_processing_unit_ext, %bb.i ], [ @cs_control_interface_ext, %bb.g ], [ @cs_streaming_interface_ext, %get_control_selector_values.exit.thread10.fold.split.i ]
  %i.ai = zext i8 %i.o to i32
  %i.aj = tail call ptr @try_val_to_str_ext(i32 noundef %i.ai, ptr noundef nonnull %.013.i13.i)
  br label %get_control_selector_name.exit

get_control_selector_name.exit:                   ; preds = %bb.c, %bb.d, %.thread.i.i, %bb.g, %bb.h, %bb.i, %bb.j, %get_control_selector_values.exit.thread10.i
  %.0.i = phi ptr [ %i.aj, %get_control_selector_values.exit.thread10.i ], [ null, %bb.g ], [ null, %bb.c ], [ null, %bb.d ], [ null, %bb.h ], [ null, %bb.i ], [ null, %bb.j ], [ null, %.thread.i.i ] ; 2 uses
  %.not = icmp eq ptr %.0.i, null
  %spec.store.select = select i1 %.not, ptr @.str.442, ptr %.0.i
  %i.ak = load i32, ptr @hf_usb_vid_control_selector, align 4
  %i.al = zext i8 %i.o to i32                     ; 2 uses
  %i.am = tail call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format_value(ptr noundef %2, i32 noundef %i.ak, ptr noundef %0, i32 noundef 3, i32 noundef 1, i32 noundef %i.al, ptr noundef @.str.557, ptr noundef nonnull %spec.store.select, i32 noundef %i.al) ; 0 uses
  %i.an = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 4) ; 2 uses
  %i.ao = load i32, ptr @hf_usb_vid_interrupt_bAttribute, align 4
  %i.ap = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.ao, ptr noundef %0, i32 noundef 4, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  switch i8 %i.an, label %bb.o [
    i8 2, label %bb.l
    i8 1, label %bb.m
    i8 0, label %bb.n
    i8 3, label %bb.n
    i8 4, label %bb.n
  ]

bb.l:                                             ; preds = %get_control_selector_name.exit
  %i.aq = load i32, ptr @hf_usb_vid_request_error, align 4
  %i.ar = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.aq, ptr noundef %0, i32 noundef 5, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  br label %bb.p

bb.m:                                             ; preds = %get_control_selector_name.exit
  %i.as = load i32, ptr @hf_usb_vid_control_info, align 4
  %i.at = load i32, ptr @ett_control_capabilities, align 4
  %i.au = tail call ptr @proto_tree_add_bitmask(ptr noundef %2, ptr noundef %0, i32 noundef 5, i32 noundef %i.as, i32 noundef %i.at, ptr noundef @dissect_usb_vid_control_info.capability_bits, i32 noundef 0) ; 0 uses
  br label %bb.p

bb.n:                                             ; preds = %get_control_selector_name.exit, %get_control_selector_name.exit, %get_control_selector_name.exit
  tail call fastcc void @dissect_usb_vid_control_value(ptr noundef %2, ptr noundef %0, i32 noundef 5, i8 noundef zeroext %i.an)
  %i.av = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef 5)
  %i.aw = add i32 %i.av, 5
  br label %bb.p

bb.o:                                             ; preds = %get_control_selector_name.exit
  %i.ax = load i32, ptr @hf_usb_vid_value_data, align 4
  %i.ay = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.ax, ptr noundef %0, i32 noundef 5, i32 noundef -1, i32 noundef 0) ; 0 uses
  %i.az = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef 5)
  %i.ba = add i32 %i.az, 5
  br label %bb.p

bb.p:                                             ; preds = %bb.a, %bb.o, %bb.n, %bb.m, %bb.l, %bb.b
  %.2 = phi i32 [ 2, %bb.b ], [ %i.aw, %bb.n ], [ %i.ba, %bb.o ], [ 6, %bb.l ], [ 6, %bb.m ], [ -2, %bb.a ]
  ret i32 %.2
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @proto_reg_handoff_usb_vid() local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @usb_vid_control_handle, align 8
  tail call void @dissector_add_uint(ptr noundef @.str.414, i32 noundef 14, ptr noundef %i.a)
  %i.b = load ptr, ptr @usb_vid_descriptor_handle, align 8
  tail call void @dissector_add_uint(ptr noundef @.str.415, i32 noundef 14, ptr noundef %i.b)
  %i.c = load ptr, ptr @usb_vid_interrupt_handle, align 8
  tail call void @dissector_add_uint(ptr noundef @.str.416, i32 noundef 14, ptr noundef %i.c)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare void @dissector_add_uint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @_try_val_to_str_ext_init(i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare void @col_set_str(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @col_add_fstr(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @val_to_str(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_item(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc i32 @dissect_usb_vid_get_set(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i1 noundef zeroext %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef readonly captures(none) %6) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %5, i64 32         ; 2 uses
  %i.b = load i16, ptr %i.a, align 4
  %i.c = lshr i16 %i.b, 8                         ; 7 uses
  %i.d = getelementptr i8, ptr %5, i64 30
  %7 = load i16, ptr %i.d, align 2
  %8 = lshr i16 %7, 8                             ; 3 uses
  %9 = zext nneg i16 %8 to i32                    ; 7 uses
  %i.e = getelementptr i8, ptr %0, i64 8          ; 6 uses
  %i.f = load ptr, ptr %i.e, align 8
  tail call void @col_append_str(ptr noundef %i.f, i32 noundef 25, ptr noundef @.str.553)
  %i.g = getelementptr i8, ptr %6, i64 40         ; 4 uses
  %i.h = load ptr, ptr %i.g, align 8              ; 4 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %get_control_selector_name.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr i8, ptr %i.h, i64 40
  %i.k = load i32, ptr %i.j, align 8
  %.not.i.i = icmp eq i32 %i.k, 3
  br i1 %.not.i.i, label %bb.c, label %get_control_selector_name.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr i8, ptr %i.h, i64 32
  %i.m = load ptr, ptr %i.l, align 8              ; 2 uses
  %.not16.i.i = icmp eq ptr %i.m, null
  br i1 %.not16.i.i, label %.thread.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = zext nneg i16 %i.c to i32
  %i.p = tail call ptr @wmem_tree_lookup32(ptr noundef %i.n, i32 noundef %i.o) ; 3 uses
  %i.q = icmp eq i16 %i.c, 0
  br i1 %i.q, label %bb.e, label %bb.f

.thread.i.i:                                      ; preds = %bb.c
  %i.r = icmp eq i16 %i.c, 0
  br i1 %i.r, label %bb.e, label %get_control_selector_name.exit.thread.thread

bb.e:                                             ; preds = %.thread.i.i, %bb.d
  %i.s = getelementptr i8, ptr %i.h, i64 6
  %i.t = load i16, ptr %i.s, align 2
  switch i16 %i.t, label %get_control_selector_name.exit.thread.thread141 [
    i16 1, label %get_control_selector_name.exit
    i16 2, label %get_control_selector_values.exit.thread10.fold.split.i
  ]

bb.f:                                             ; preds = %bb.d
  %.not17.i.i = icmp eq ptr %i.p, null
  br i1 %.not17.i.i, label %get_control_selector_name.exit.thread.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr i8, ptr %i.p, i64 1
  %i.v = load i8, ptr %i.u, align 1
  switch i8 %i.v, label %get_control_selector_name.exit.thread.thread [
    i8 2, label %bb.h
    i8 5, label %get_control_selector_name.exit
    i8 4, label %bb.i
  ]

bb.h:                                             ; preds = %bb.g
  %i.w = getelementptr i8, ptr %i.p, i64 2
  %i.x = load i16, ptr %i.w, align 2
  %i.y = icmp eq i16 %i.x, 513
  br i1 %i.y, label %get_control_selector_name.exit, label %get_control_selector_name.exit.thread.thread

bb.i:                                             ; preds = %bb.g
  br label %get_control_selector_name.exit

get_control_selector_values.exit.thread10.fold.split.i: ; preds = %bb.e
  br label %get_control_selector_name.exit

get_control_selector_name.exit:                   ; preds = %bb.e, %bb.g, %bb.h, %bb.i, %get_control_selector_values.exit.thread10.fold.split.i
  %.013.i13.i = phi ptr [ @cs_camera_terminal_ext, %bb.h ], [ @cs_selector_unit_ext, %bb.i ], [ @cs_processing_unit_ext, %bb.g ], [ @cs_control_interface_ext, %bb.e ], [ @cs_streaming_interface_ext, %get_control_selector_values.exit.thread10.fold.split.i ]
  %i.z = tail call ptr @try_val_to_str_ext(i32 noundef %9, ptr noundef nonnull %.013.i13.i) ; 3 uses
  %.not = icmp eq ptr %i.z, null
  br i1 %.not, label %get_control_selector_name.exit.thread, label %bb.j

bb.j:                                             ; preds = %get_control_selector_name.exit
  %i.aa = load ptr, ptr %i.e, align 8
  tail call void @col_append_str(ptr noundef %i.aa, i32 noundef 25, ptr noundef nonnull %i.z)
  br label %bb.k

get_control_selector_name.exit.thread:            ; preds = %bb.b, %bb.a, %get_control_selector_name.exit
  %i.ab = icmp eq i16 %i.c, 0
  br i1 %i.ab, label %get_control_selector_name.exit.thread.thread141, label %get_control_selector_name.exit.thread.thread

get_control_selector_name.exit.thread.thread141:  ; preds = %bb.e, %get_control_selector_name.exit.thread
  %i.ac = load ptr, ptr %i.e, align 8
  %i.ad = load ptr, ptr %i.g, align 8
  %i.ae = getelementptr i8, ptr %i.ad, i64 10
  %i.af = load i8, ptr %i.ae, align 2
  %i.ag = zext i8 %i.af to i32
  tail call void (ptr, i32, ptr, ...) @col_append_fstr(ptr noundef %i.ac, i32 noundef 25, ptr noundef @.str.554, i32 noundef %i.ag, i32 noundef %9)
  br label %bb.k

get_control_selector_name.exit.thread.thread:     ; preds = %bb.f, %bb.g, %bb.h, %.thread.i.i, %get_control_selector_name.exit.thread
  %i.ah = zext nneg i16 %i.c to i32
  %i.ai = load ptr, ptr %i.e, align 8
  tail call void (ptr, i32, ptr, ...) @col_append_fstr(ptr noundef %i.ai, i32 noundef 25, ptr noundef @.str.555, i32 noundef %i.ah, i32 noundef %9)
  br label %bb.k

bb.k:                                             ; preds = %get_control_selector_name.exit.thread.thread141, %get_control_selector_name.exit.thread.thread, %bb.j
  %.0111 = phi ptr [ %i.z, %bb.j ], [ @.str.442, %get_control_selector_name.exit.thread.thread141 ], [ @.str.442, %get_control_selector_name.exit.thread.thread ] ; 2 uses
  %i.aj = load ptr, ptr %i.e, align 8
  tail call void @col_append_str(ptr noundef %i.aj, i32 noundef 25, ptr noundef @.str.556)
  %i.ak = load ptr, ptr %i.e, align 8
  tail call void @col_set_fence(ptr noundef %i.ak, i32 noundef 25)
  br i1 %4, label %bb.s, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.al = load i32, ptr @hf_usb_vid_control_interface, align 4
  %i.am = load i16, ptr %i.a, align 4
  %i.an = and i16 %i.am, 255
  %i.ao = zext nneg i16 %i.an to i32
  %i.ap = tail call ptr @proto_tree_add_uint(ptr noundef %1, i32 noundef %i.al, ptr noundef %2, i32 noundef 0, i32 noundef 0, i32 noundef %i.ao) ; 2 uses
  %.not.i = icmp eq ptr %i.ap, null
  br i1 %.not.i, label %proto_item_set_generated.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aq = getelementptr i8, ptr %i.ap, i64 40
  %i.ar = load ptr, ptr %i.aq, align 8            ; 2 uses
  %.not5.i = icmp eq ptr %i.ar, null
  br i1 %.not5.i, label %proto_item_set_generated.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.as = getelementptr i8, ptr %i.ar, i64 28     ; 2 uses
  %i.at = load i32, ptr %i.as, align 4
  %i.au = or i32 %i.at, 2
  store i32 %i.au, ptr %i.as, align 4
  br label %proto_item_set_generated.exit

proto_item_set_generated.exit:                    ; preds = %bb.l, %bb.m, %bb.n
  %i.av = load i32, ptr @hf_usb_vid_control_entity, align 4
  %i.aw = zext nneg i16 %i.c to i32
  %i.ax = tail call ptr @proto_tree_add_uint(ptr noundef %1, i32 noundef %i.av, ptr noundef %2, i32 noundef 0, i32 noundef 0, i32 noundef %i.aw) ; 2 uses
  %.not.i117 = icmp eq ptr %i.ax, null
  br i1 %.not.i117, label %proto_item_set_generated.exit119, label %bb.o

bb.o:                                             ; preds = %proto_item_set_generated.exit
  %i.ay = getelementptr i8, ptr %i.ax, i64 40
  %i.az = load ptr, ptr %i.ay, align 8            ; 2 uses
  %.not5.i118 = icmp eq ptr %i.az, null
  br i1 %.not5.i118, label %proto_item_set_generated.exit119, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ba = getelementptr i8, ptr %i.az, i64 28     ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 4
  %i.bc = or i32 %i.bb, 2
  store i32 %i.bc, ptr %i.ba, align 4
  br label %proto_item_set_generated.exit119

proto_item_set_generated.exit119:                 ; preds = %proto_item_set_generated.exit, %bb.o, %bb.p
  %i.bd = load i32, ptr @hf_usb_vid_control_selector, align 4
  %i.be = tail call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format_value(ptr noundef %1, i32 noundef %i.bd, ptr noundef %2, i32 noundef 0, i32 noundef 0, i32 noundef %9, ptr noundef @.str.557, ptr noundef %.0111, i32 noundef %9) ; 2 uses
  %.not.i120 = icmp eq ptr %i.be, null
  br i1 %.not.i120, label %proto_item_set_generated.exit122.thread, label %bb.q

bb.q:                                             ; preds = %proto_item_set_generated.exit119
  %i.bf = getelementptr i8, ptr %i.be, i64 40
  %i.bg = load ptr, ptr %i.bf, align 8            ; 2 uses
  %.not5.i121 = icmp eq ptr %i.bg, null
  br i1 %.not5.i121, label %proto_item_set_generated.exit122.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bh = getelementptr i8, ptr %i.bg, i64 28     ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 4
  %i.bj = or i32 %i.bi, 2
  store i32 %i.bj, ptr %i.bh, align 4
  br label %proto_item_set_generated.exit122.thread

bb.s:                                             ; preds = %bb.k
  %i.bk = add i32 %3, 1
  %i.bl = load i32, ptr @hf_usb_vid_control_selector, align 4
  %i.bm = tail call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format_value(ptr noundef %1, i32 noundef %i.bl, ptr noundef %2, i32 noundef %i.bk, i32 noundef 1, i32 noundef %9, ptr noundef @.str.557, ptr noundef %.0111, i32 noundef %9) ; 0 uses
  %i.bn = add i32 %3, 2
  %i.bo = load i32, ptr @hf_usb_vid_control_interface, align 4
  %i.bp = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.bo, ptr noundef %2, i32 noundef %i.bn, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.bq = add i32 %3, 3
  %i.br = load i32, ptr @hf_usb_vid_control_entity, align 4
  %i.bs = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.br, ptr noundef %2, i32 noundef %i.bq, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.bt = add i32 %3, 4
  %i.bu = load i32, ptr @hf_usb_vid_length, align 4
  %i.bv = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.bu, ptr noundef %2, i32 noundef %i.bt, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.bw = add i32 %3, 6                           ; 2 uses
  %i.bx = getelementptr i8, ptr %5, i64 29
  %i.by = load i8, ptr %i.bx, align 1
  %i.bz = icmp eq i8 %i.by, 1
  br i1 %i.bz, label %proto_item_set_generated.exit122.thread, label %bb.ag

proto_item_set_generated.exit122.thread:          ; preds = %proto_item_set_generated.exit119, %bb.q, %bb.r, %bb.s
  %.0128 = phi i32 [ %i.bw, %bb.s ], [ %3, %bb.r ], [ %3, %bb.q ], [ %3, %proto_item_set_generated.exit119 ] ; 30 uses
  %i.ca = tail call i32 @tvb_reported_length_remaining(ptr noundef %2, i32 noundef %.0128) ; 7 uses
  %.not116 = icmp eq i32 %i.ca, 0
  br i1 %.not116, label %bb.ag, label %bb.t

bb.t:                                             ; preds = %proto_item_set_generated.exit122.thread
  %i.cb = icmp eq i16 %i.c, 0                     ; 2 uses
  br i1 %i.cb, label %bb.u, label %bb.y

bb.u:                                             ; preds = %bb.t
  %i.cc = load ptr, ptr %i.g, align 8
  %i.cd = getelementptr i8, ptr %i.cc, i64 6
  %i.ce = load i16, ptr %i.cd, align 2
  %i.cf = icmp eq i16 %i.ce, 2
  br i1 %i.cf, label %bb.v, label %bb.y

bb.v:                                             ; preds = %bb.u
  %10 = add nsw i16 %8, -1
  %or.cond = icmp ult i16 %10, 2
  br i1 %or.cond, label %bb.w, label %bb.ae

bb.w:                                             ; preds = %bb.v
  %i.cg = load i32, ptr @ett_video_probe, align 4
  %i.ch = tail call ptr @proto_tree_add_subtree(ptr noundef %1, ptr noundef %2, i32 noundef %.0128, i32 noundef -1, i32 noundef %i.cg, ptr noundef null, ptr noundef @.str.587) ; 16 uses
  %i.ci = load i32, ptr @hf_usb_vid_probe_hint, align 4
  %i.cj = load i32, ptr @ett_probe_hint, align 4
  %i.ck = tail call ptr @proto_tree_add_bitmask(ptr noundef %i.ch, ptr noundef %2, i32 noundef %.0128, i32 noundef %i.ci, i32 noundef %i.cj, ptr noundef @dissect_usb_vid_probe.hint_bits, i32 noundef -2147483648) ; 0 uses
  %i.cl = load i32, ptr @hf_usb_vid_format_index, align 4
  %i.cm = add i32 %.0128, 2
  %i.cn = tail call ptr @proto_tree_add_item(ptr noundef %i.ch, i32 noundef %i.cl, ptr noundef %2, i32 noundef %i.cm, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.co = load i32, ptr @hf_usb_vid_frame_index, align 4
  %i.cp = add i32 %.0128, 3
  %i.cq = tail call ptr @proto_tree_add_item(ptr noundef %i.ch, i32 noundef %i.co, ptr noundef %2, i32 noundef %i.cp, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.cr = load i32, ptr @hf_usb_vid_frame_interval, align 4
  %i.cs = add i32 %.0128, 4
  %i.ct = tail call ptr @proto_tree_add_item(ptr noundef %i.ch, i32 noundef %i.cr, ptr noundef %2, i32 noundef %i.cs, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.cu = load i32, ptr @hf_usb_vid_probe_key_frame_rate, align 4
  %i.cv = add i32 %.0128, 8
  %i.cw = tail call ptr @proto_tree_add_item(ptr noundef %i.ch, i32 noundef %i.cu, ptr noundef %2, i32 noundef %i.cv, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.cx = load i32, ptr @hf_usb_vid_probe_p_frame_rate, align 4
  %i.cy = add i32 %.0128, 10
  %i.cz = tail call ptr @proto_tree_add_item(ptr noundef %i.ch, i32 noundef %i.cx, ptr noundef %2, i32 noundef %i.cy, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.da = load i32, ptr @hf_usb_vid_probe_comp_quality, align 4
  %i.db = add i32 %.0128, 12
  %i.dc = tail call ptr @proto_tree_add_item(ptr noundef %i.ch, i32 noundef %i.da, ptr noundef %2, i32 noundef %i.db, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.dd = load i32, ptr @hf_usb_vid_probe_comp_window, align 4
  %i.de = add i32 %.0128, 14
  %i.df = tail call ptr @proto_tree_add_item(ptr noundef %i.ch, i32 noundef %i.dd, ptr noundef %2, i32 noundef %i.de, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.dg = load i32, ptr @hf_usb_vid_probe_delay, align 4
  %i.dh = add i32 %.0128, 16
  %i.di = tail call ptr @proto_tree_add_item(ptr noundef %i.ch, i32 noundef %i.dg, ptr noundef %2, i32 noundef %i.dh, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.dj = load i32, ptr @hf_usb_vid_probe_max_frame_sz, align 4
  %i.dk = add i32 %.0128, 18
  %i.dl = tail call ptr @proto_tree_add_item(ptr noundef %i.ch, i32 noundef %i.dj, ptr noundef %2, i32 noundef %i.dk, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.dm = load i32, ptr @hf_usb_vid_probe_max_payload_sz, align 4
  %i.dn = add i32 %.0128, 22
  %i.do = tail call ptr @proto_tree_add_item(ptr noundef %i.ch, i32 noundef %i.dm, ptr noundef %2, i32 noundef %i.dn, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.dp = add i32 %.0128, 26                      ; 3 uses
  %i.dq = tail call i32 @tvb_reported_length_remaining(ptr noundef %2, i32 noundef %i.dp)
  %.not.i123 = icmp eq i32 %i.dq, 0
  br i1 %.not.i123, label %dissect_usb_vid_probe.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dr = load i32, ptr @hf_usb_vid_probe_clock_freq, align 4
  %i.ds = tail call ptr @proto_tree_add_item(ptr noundef %i.ch, i32 noundef %i.dr, ptr noundef %2, i32 noundef %i.dp, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.dt = add i32 %.0128, 30
  %i.du = load i32, ptr @hf_usb_vid_probe_framing, align 4
  %i.dv = load i32, ptr @ett_probe_framing, align 4
  %i.dw = tail call ptr @proto_tree_add_bitmask(ptr noundef %i.ch, ptr noundef %2, i32 noundef %i.dt, i32 noundef %i.du, i32 noundef %i.dv, ptr noundef @dissect_usb_vid_probe.framing_bits, i32 noundef 0) ; 0 uses
  %i.dx = add i32 %.0128, 31
  %i.dy = load i32, ptr @hf_usb_vid_probe_preferred_ver, align 4
  %i.dz = tail call ptr @proto_tree_add_item(ptr noundef %i.ch, i32 noundef %i.dy, ptr noundef %2, i32 noundef %i.dx, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.ea = load i32, ptr @hf_usb_vid_probe_min_ver, align 4
  %i.eb = add i32 %.0128, 32
  %i.ec = tail call ptr @proto_tree_add_item(ptr noundef %i.ch, i32 noundef %i.ea, ptr noundef %2, i32 noundef %i.eb, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.ed = load i32, ptr @hf_usb_vid_probe_max_ver, align 4
  %i.ee = add i32 %.0128, 33
  %i.ef = tail call ptr @proto_tree_add_item(ptr noundef %i.ch, i32 noundef %i.ed, ptr noundef %2, i32 noundef %i.ee, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.eg = add i32 %.0128, 34
  br label %dissect_usb_vid_probe.exit

dissect_usb_vid_probe.exit:                       ; preds = %bb.w, %bb.x
  %.0.i124 = phi i32 [ %i.eg, %bb.x ], [ %i.dp, %bb.w ] ; 2 uses
  %.neg = add i32 %i.ca, %.0128
  %i.eh = sub i32 %.neg, %.0.i124
  br label %bb.ae

bb.y:                                             ; preds = %bb.u, %bb.t
  %i.ei = getelementptr i8, ptr %5, i64 29
  %i.ej = load i8, ptr %i.ei, align 1             ; 3 uses
  switch i8 %i.ej, label %bb.ab [
    i8 -122, label %bb.z
    i8 -123, label %bb.aa
  ]

bb.z:                                             ; preds = %bb.y
  %i.ek = load i32, ptr @hf_usb_vid_control_info, align 4
  %i.el = load i32, ptr @ett_control_capabilities, align 4
  %i.em = tail call ptr @proto_tree_add_bitmask(ptr noundef %1, ptr noundef %2, i32 noundef %.0128, i32 noundef %i.ek, i32 noundef %i.el, ptr noundef @dissect_usb_vid_control_info.capability_bits, i32 noundef 0) ; 0 uses
  %i.en = add i32 %.0128, 1
  %i.eo = add i32 %i.ca, -1
  br label %bb.ae

bb.aa:                                            ; preds = %bb.y
  %i.ep = load i32, ptr @hf_usb_vid_control_length, align 4
  %i.eq = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.ep, ptr noundef %2, i32 noundef %.0128, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.er = add i32 %.0128, 2
  %i.es = add i32 %i.ca, -2
  br label %bb.ae

bb.ab:                                            ; preds = %bb.y
  %i.et = icmp eq i8 %i.ej, -127
  %or.cond5 = and i1 %i.cb, %i.et
  br i1 %or.cond5, label %bb.ac, label %.thread

bb.ac:                                            ; preds = %bb.ab
  %i.eu = load ptr, ptr %i.g, align 8
  %i.ev = getelementptr i8, ptr %i.eu, i64 6
  %i.ew = load i16, ptr %i.ev, align 2
  %i.ex = icmp eq i16 %i.ew, 1
  %i.ey = icmp eq i16 %8, 2
  %or.cond8 = select i1 %i.ex, i1 %i.ey, i1 false
  br i1 %or.cond8, label %bb.ad, label %.thread

bb.ad:                                            ; preds = %bb.ac
  %i.ez = load i32, ptr @hf_usb_vid_request_error, align 4
  %i.fa = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.ez, ptr noundef %2, i32 noundef %.0128, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.fb = add i32 %.0128, 1
  %i.fc = add i32 %i.ca, -1
  br label %bb.ae

.thread:                                          ; preds = %bb.ab, %bb.ac
  tail call fastcc void @dissect_usb_vid_control_value(ptr noundef %1, ptr noundef %2, i32 noundef %.0128, i8 noundef zeroext %i.ej)
  %i.fd = add i32 %i.ca, %.0128
  br label %bb.ag

bb.ae:                                            ; preds = %bb.z, %bb.ad, %bb.aa, %dissect_usb_vid_probe.exit, %bb.v
  %.0110 = phi i32 [ %i.eh, %dissect_usb_vid_probe.exit ], [ %i.ca, %bb.v ], [ %i.eo, %bb.z ], [ %i.es, %bb.aa ], [ %i.fc, %bb.ad ] ; 2 uses
  %.1 = phi i32 [ %.0.i124, %dissect_usb_vid_probe.exit ], [ %.0128, %bb.v ], [ %i.en, %bb.z ], [ %i.er, %bb.aa ], [ %i.fb, %bb.ad ] ; 3 uses
  %i.fe = icmp sgt i32 %.0110, 0
  br i1 %i.fe, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.ff = load i32, ptr @hf_usb_vid_control_data, align 4
  %i.fg = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.ff, ptr noundef %2, i32 noundef %.1, i32 noundef -1, i32 noundef 0) ; 0 uses
  %i.fh = add i32 %.1, %.0110
  br label %bb.ag

bb.ag:                                            ; preds = %.thread, %proto_item_set_generated.exit122.thread, %bb.af, %bb.ae, %bb.s
  %.3 = phi i32 [ %i.bw, %bb.s ], [ %i.fh, %bb.af ], [ %.1, %bb.ae ], [ %.0128, %proto_item_set_generated.exit122.thread ], [ %i.fd, %.thread ]
  ret i32 %.3
}

; Function Attrs: null_pointer_is_valid
declare void @col_append_str(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @col_append_fstr(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @col_set_fence(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_uint_format_value(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_uint(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_reported_length_remaining(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @dissect_usb_vid_control_value(ptr noundef %0, ptr noundef %1, i32 noundef %2, i8 noundef zeroext %3) unnamed_addr #0 {
bb.a:
  switch i8 %3, label %.thread [
    i8 -121, label %bb.f
    i8 -126, label %bb.b
    i8 3, label %bb.b
    i8 -125, label %bb.c
    i8 4, label %bb.c
    i8 -124, label %bb.d
    i8 -127, label %bb.e
    i8 1, label %bb.e
    i8 0, label %bb.e
  ]

.thread:                                          ; preds = %bb.a
  %i.a = tail call i32 @tvb_reported_length_remaining(ptr noundef %1, i32 noundef %2)
  br label %.thread44

bb.b:                                             ; preds = %bb.a, %bb.a
  br label %bb.f

bb.c:                                             ; preds = %bb.a, %bb.a
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  br label %bb.f

bb.e:                                             ; preds = %bb.a, %bb.a, %bb.a
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e, %bb.d, %bb.c, %bb.b
  %.035 = phi ptr [ @.str.591, %bb.e ], [ @.str.42, %bb.d ], [ @.str.589, %bb.b ], [ @.str.590, %bb.c ], [ @.str.588, %bb.a ] ; 2 uses
  %.0.in = phi ptr [ @hf_usb_vid_control_cur, %bb.e ], [ @hf_usb_vid_control_res, %bb.d ], [ @hf_usb_vid_control_min, %bb.b ], [ @hf_usb_vid_control_max, %bb.c ], [ @hf_usb_vid_control_default, %bb.a ]
  %.0 = load i32, ptr %.0.in, align 4             ; 3 uses
  %i.b = tail call i32 @tvb_reported_length_remaining(ptr noundef %1, i32 noundef %2) ; 4 uses
  %.not = icmp eq i32 %.0, -1
  br i1 %.not, label %.thread44, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.c = tail call ptr @proto_registrar_get_nth(i32 noundef %.0)
  %i.d = getelementptr i8, ptr %i.c, i64 16
  %i.e = load i32, ptr %i.d, align 8
  switch i32 %i.e, label %bb.h [
    i32 12, label %bb.i
    i32 13, label %bb.i
    i32 14, label %bb.i
    i32 15, label %bb.i
    i32 16, label %bb.i
    i32 17, label %bb.i
    i32 18, label %bb.i
    i32 19, label %bb.i
    i32 3, label %bb.i
    i32 4, label %bb.i
    i32 5, label %bb.i
    i32 6, label %bb.i
    i32 7, label %bb.i
    i32 35, label %bb.i
    i32 8, label %bb.i
    i32 9, label %bb.i
    i32 10, label %bb.i
    i32 11, label %bb.i
  ]

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, ...) @proto_report_dissector_bug(ptr noundef @.str.592, ptr noundef @.str.593, i32 noundef 1738, ptr noundef @.str.594) #7
  unreachable

bb.i:                                             ; preds = %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g
  %i.f = icmp slt i32 %i.b, 5
  br i1 %i.f, label %bb.j, label %.thread44

bb.j:                                             ; preds = %bb.i
  %i.g = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %.0, ptr noundef %1, i32 noundef %2, i32 noundef %i.b, i32 noundef -2147483648) ; 0 uses
  br label %bb.k

.thread44:                                        ; preds = %bb.f, %.thread, %bb.i
  %.0354048 = phi ptr [ %.035, %bb.i ], [ %.035, %bb.f ], [ @.str.502, %.thread ]
  %i.h = phi i32 [ %i.b, %bb.i ], [ %i.b, %bb.f ], [ %i.a, %.thread ]
  %i.i = load i32, ptr @hf_usb_vid_control_value, align 4
  %i.j = tail call ptr (ptr, i32, ptr, i32, i32, ptr, ptr, ...) @proto_tree_add_bytes_format(ptr noundef %0, i32 noundef %i.i, ptr noundef %1, i32 noundef %2, i32 noundef %i.h, ptr noundef null, ptr noundef @.str.595, ptr noundef %.0354048) ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %.thread44, %bb.j
  ret void
}

; Function Attrs: null_pointer_is_valid
declare ptr @try_val_to_str_ext(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @wmem_tree_lookup32(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_subtree(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_bitmask(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_registrar_get_nth(i32 noundef) local_unnamed_addr #2

; Function Attrs: noreturn null_pointer_is_valid
declare void @proto_report_dissector_bug(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_bytes_format(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare zeroext i8 @tvb_get_uint8(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @tvb_new_subset_length(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_subtree_format(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @dissect_usb_descriptor_header(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @val_to_str_ext(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare zeroext i16 @tvb_get_letohs(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @expert_add_info_format(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @proto_item_append_text(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @get_usb_iface_conv_info(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(1)
declare noalias ptr @wmem_alloc(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare ptr @wmem_file_scope() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @wmem_tree_new(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @wmem_tree_insert32(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_item_ret_uint8(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

end_hunk_0
