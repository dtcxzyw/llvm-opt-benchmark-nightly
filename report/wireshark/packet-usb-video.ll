Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-usb-video?download=true
inline.NumInlined: 22
inline.NumDeleted: 17
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@dissect_usb_vid_descriptor:bb.a
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
  tail call void @col_set_str(ptr noundef %i.c, i32 noundef 35, ptr noundef nonnull @.str.409)
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
  %i.am = tail call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format_value(ptr noundef %2, i32 noundef %i.ak, ptr noundef %0, i32 noundef 3, i32 noundef 1, i32 noundef %i.al, ptr noundef nonnull @.str.557, ptr noundef nonnull %spec.store.select, i32 noundef %i.al) ; 0 uses
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
  %i.au = tail call ptr @proto_tree_add_bitmask(ptr noundef %2, ptr noundef %0, i32 noundef 5, i32 noundef %i.as, i32 noundef %i.at, ptr noundef nonnull @dissect_usb_vid_control_info.capability_bits, i32 noundef 0) ; 0 uses
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
  tail call void @dissector_add_uint(ptr noundef nonnull @.str.414, i32 noundef 14, ptr noundef %i.a)
  %i.b = load ptr, ptr @usb_vid_descriptor_handle, align 8
  tail call void @dissector_add_uint(ptr noundef nonnull @.str.415, i32 noundef 14, ptr noundef %i.b)
  %i.c = load ptr, ptr @usb_vid_interrupt_handle, align 8
  tail call void @dissector_add_uint(ptr noundef nonnull @.str.416, i32 noundef 14, ptr noundef %i.c)
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
  %i.e = load i16, ptr %i.d, align 2
  %i.f = lshr i16 %i.e, 8                         ; 3 uses
  %7 = zext nneg i16 %i.f to i32                  ; 7 uses
  %i.g = getelementptr i8, ptr %0, i64 8          ; 6 uses
  %i.h = load ptr, ptr %i.g, align 8
  tail call void @col_append_str(ptr noundef %i.h, i32 noundef 25, ptr noundef nonnull @.str.553)
  %i.i = getelementptr i8, ptr %6, i64 40         ; 4 uses
  %i.j = load ptr, ptr %i.i, align 8              ; 4 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %get_control_selector_name.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr i8, ptr %i.j, i64 40
  %i.m = load i32, ptr %i.l, align 8
  %.not.i.i = icmp eq i32 %i.m, 3
  br i1 %.not.i.i, label %bb.c, label %get_control_selector_name.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr i8, ptr %i.j, i64 32
  %i.o = load ptr, ptr %i.n, align 8              ; 2 uses
  %.not16.i.i = icmp eq ptr %i.o, null
  br i1 %.not16.i.i, label %.thread.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = zext nneg i16 %i.c to i32
  %i.r = tail call ptr @wmem_tree_lookup32(ptr noundef %i.p, i32 noundef %i.q) ; 3 uses
  %i.s = icmp eq i16 %i.c, 0
  br i1 %i.s, label %bb.e, label %bb.f

.thread.i.i:                                      ; preds = %bb.c
  %i.t = icmp eq i16 %i.c, 0
  br i1 %i.t, label %bb.e, label %get_control_selector_name.exit.thread.thread

bb.e:                                             ; preds = %.thread.i.i, %bb.d
  %i.u = getelementptr i8, ptr %i.j, i64 6
  %i.v = load i16, ptr %i.u, align 2
  switch i16 %i.v, label %get_control_selector_name.exit.thread.thread141 [
    i16 1, label %get_control_selector_name.exit
    i16 2, label %get_control_selector_values.exit.thread10.fold.split.i
  ]

bb.f:                                             ; preds = %bb.d
  %.not17.i.i = icmp eq ptr %i.r, null
  br i1 %.not17.i.i, label %get_control_selector_name.exit.thread.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = getelementptr i8, ptr %i.r, i64 1
  %i.x = load i8, ptr %i.w, align 1
  switch i8 %i.x, label %get_control_selector_name.exit.thread.thread [
    i8 2, label %bb.h
    i8 5, label %get_control_selector_name.exit
    i8 4, label %bb.i
  ]

bb.h:                                             ; preds = %bb.g
  %i.y = getelementptr i8, ptr %i.r, i64 2
  %i.z = load i16, ptr %i.y, align 2
  %i.aa = icmp eq i16 %i.z, 513
  br i1 %i.aa, label %get_control_selector_name.exit, label %get_control_selector_name.exit.thread.thread

bb.i:                                             ; preds = %bb.g
  br label %get_control_selector_name.exit

get_control_selector_values.exit.thread10.fold.split.i: ; preds = %bb.e
  br label %get_control_selector_name.exit

get_control_selector_name.exit:                   ; preds = %bb.e, %bb.g, %bb.h, %bb.i, %get_control_selector_values.exit.thread10.fold.split.i
  %.013.i13.i = phi ptr [ @cs_camera_terminal_ext, %bb.h ], [ @cs_selector_unit_ext, %bb.i ], [ @cs_processing_unit_ext, %bb.g ], [ @cs_control_interface_ext, %bb.e ], [ @cs_streaming_interface_ext, %get_control_selector_values.exit.thread10.fold.split.i ]
  %i.ab = tail call ptr @try_val_to_str_ext(i32 noundef %7, ptr noundef nonnull %.013.i13.i) ; 3 uses
  %.not = icmp eq ptr %i.ab, null
  br i1 %.not, label %get_control_selector_name.exit.thread, label %bb.j

bb.j:                                             ; preds = %get_control_selector_name.exit
  %i.ac = load ptr, ptr %i.g, align 8
  tail call void @col_append_str(ptr noundef %i.ac, i32 noundef 25, ptr noundef nonnull %i.ab)
  br label %bb.k

get_control_selector_name.exit.thread:            ; preds = %bb.b, %bb.a, %get_control_selector_name.exit
  %i.ad = icmp eq i16 %i.c, 0
  br i1 %i.ad, label %get_control_selector_name.exit.thread.thread141, label %get_control_selector_name.exit.thread.thread

get_control_selector_name.exit.thread.thread141:  ; preds = %bb.e, %get_control_selector_name.exit.thread
  %i.ae = load ptr, ptr %i.g, align 8
  %i.af = load ptr, ptr %i.i, align 8
  %i.ag = getelementptr i8, ptr %i.af, i64 10
  %i.ah = load i8, ptr %i.ag, align 2
  %i.ai = zext i8 %i.ah to i32
  tail call void (ptr, i32, ptr, ...) @col_append_fstr(ptr noundef %i.ae, i32 noundef 25, ptr noundef nonnull @.str.554, i32 noundef %i.ai, i32 noundef %7)
  br label %bb.k

get_control_selector_name.exit.thread.thread:     ; preds = %bb.f, %bb.g, %bb.h, %.thread.i.i, %get_control_selector_name.exit.thread
  %i.aj = zext nneg i16 %i.c to i32
  %i.ak = load ptr, ptr %i.g, align 8
  tail call void (ptr, i32, ptr, ...) @col_append_fstr(ptr noundef %i.ak, i32 noundef 25, ptr noundef nonnull @.str.555, i32 noundef %i.aj, i32 noundef %7)
  br label %bb.k

bb.k:                                             ; preds = %get_control_selector_name.exit.thread.thread141, %get_control_selector_name.exit.thread.thread, %bb.j
  %.0111 = phi ptr [ %i.ab, %bb.j ], [ @.str.442, %get_control_selector_name.exit.thread.thread141 ], [ @.str.442, %get_control_selector_name.exit.thread.thread ] ; 2 uses
  %i.al = load ptr, ptr %i.g, align 8
  tail call void @col_append_str(ptr noundef %i.al, i32 noundef 25, ptr noundef nonnull @.str.556)
  %i.am = load ptr, ptr %i.g, align 8
  tail call void @col_set_fence(ptr noundef %i.am, i32 noundef 25)
  br i1 %4, label %bb.s, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.an = load i32, ptr @hf_usb_vid_control_interface, align 4
  %i.ao = load i16, ptr %i.a, align 4
  %i.ap = and i16 %i.ao, 255
  %i.aq = zext nneg i16 %i.ap to i32
  %i.ar = tail call ptr @proto_tree_add_uint(ptr noundef %1, i32 noundef %i.an, ptr noundef %2, i32 noundef 0, i32 noundef 0, i32 noundef %i.aq) ; 2 uses
  %.not.i = icmp eq ptr %i.ar, null
  br i1 %.not.i, label %proto_item_set_generated.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.as = getelementptr i8, ptr %i.ar, i64 40
  %i.at = load ptr, ptr %i.as, align 8            ; 2 uses
  %.not5.i = icmp eq ptr %i.at, null
  br i1 %.not5.i, label %proto_item_set_generated.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.au = getelementptr i8, ptr %i.at, i64 28     ; 2 uses
  %i.av = load i32, ptr %i.au, align 4
  %i.aw = or i32 %i.av, 2
  store i32 %i.aw, ptr %i.au, align 4
  br label %proto_item_set_generated.exit

proto_item_set_generated.exit:                    ; preds = %bb.l, %bb.m, %bb.n
  %i.ax = load i32, ptr @hf_usb_vid_control_entity, align 4
  %i.ay = zext nneg i16 %i.c to i32
  %i.az = tail call ptr @proto_tree_add_uint(ptr noundef %1, i32 noundef %i.ax, ptr noundef %2, i32 noundef 0, i32 noundef 0, i32 noundef %i.ay) ; 2 uses
  %.not.i117 = icmp eq ptr %i.az, null
  br i1 %.not.i117, label %proto_item_set_generated.exit119, label %bb.o

bb.o:                                             ; preds = %proto_item_set_generated.exit
  %i.ba = getelementptr i8, ptr %i.az, i64 40
  %i.bb = load ptr, ptr %i.ba, align 8            ; 2 uses
  %.not5.i118 = icmp eq ptr %i.bb, null
  br i1 %.not5.i118, label %proto_item_set_generated.exit119, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bc = getelementptr i8, ptr %i.bb, i64 28     ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4
  %i.be = or i32 %i.bd, 2
  store i32 %i.be, ptr %i.bc, align 4
  br label %proto_item_set_generated.exit119

proto_item_set_generated.exit119:                 ; preds = %proto_item_set_generated.exit, %bb.o, %bb.p
  %i.bf = load i32, ptr @hf_usb_vid_control_selector, align 4
  %i.bg = tail call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format_value(ptr noundef %1, i32 noundef %i.bf, ptr noundef %2, i32 noundef 0, i32 noundef 0, i32 noundef %7, ptr noundef nonnull @.str.557, ptr noundef nonnull %.0111, i32 noundef %7) ; 2 uses
  %.not.i120 = icmp eq ptr %i.bg, null
  br i1 %.not.i120, label %proto_item_set_generated.exit122.thread, label %bb.q

bb.q:                                             ; preds = %proto_item_set_generated.exit119
  %i.bh = getelementptr i8, ptr %i.bg, i64 40
  %i.bi = load ptr, ptr %i.bh, align 8            ; 2 uses
  %.not5.i121 = icmp eq ptr %i.bi, null
  br i1 %.not5.i121, label %proto_item_set_generated.exit122.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bj = getelementptr i8, ptr %i.bi, i64 28     ; 2 uses
  %i.bk = load i32, ptr %i.bj, align 4
  %i.bl = or i32 %i.bk, 2
  store i32 %i.bl, ptr %i.bj, align 4
  br label %proto_item_set_generated.exit122.thread

bb.s:                                             ; preds = %bb.k
  %i.bm = add i32 %3, 1
  %i.bn = load i32, ptr @hf_usb_vid_control_selector, align 4
  %i.bo = tail call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format_value(ptr noundef %1, i32 noundef %i.bn, ptr noundef %2, i32 noundef %i.bm, i32 noundef 1, i32 noundef %7, ptr noundef nonnull @.str.557, ptr noundef nonnull %.0111, i32 noundef %7) ; 0 uses
  %i.bp = add i32 %3, 2
  %i.bq = load i32, ptr @hf_usb_vid_control_interface, align 4
  %i.br = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.bq, ptr noundef %2, i32 noundef %i.bp, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.bs = add i32 %3, 3
  %i.bt = load i32, ptr @hf_usb_vid_control_entity, align 4
  %i.bu = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.bt, ptr noundef %2, i32 noundef %i.bs, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.bv = add i32 %3, 4
  %i.bw = load i32, ptr @hf_usb_vid_length, align 4
  %i.bx = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.bw, ptr noundef %2, i32 noundef %i.bv, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.by = add i32 %3, 6                           ; 2 uses
  %i.bz = getelementptr i8, ptr %5, i64 29
  %i.ca = load i8, ptr %i.bz, align 1
  %i.cb = icmp eq i8 %i.ca, 1
  br i1 %i.cb, label %proto_item_set_generated.exit122.thread, label %bb.ag

proto_item_set_generated.exit122.thread:          ; preds = %proto_item_set_generated.exit119, %bb.q, %bb.r, %bb.s
  %.0128 = phi i32 [ %i.by, %bb.s ], [ %3, %bb.r ], [ %3, %bb.q ], [ %3, %proto_item_set_generated.exit119 ] ; 30 uses
  %i.cc = tail call i32 @tvb_reported_length_remaining(ptr noundef %2, i32 noundef %.0128) ; 7 uses
  %.not116 = icmp eq i32 %i.cc, 0
  br i1 %.not116, label %bb.ag, label %bb.t

bb.t:                                             ; preds = %proto_item_set_generated.exit122.thread
  %i.cd = icmp eq i16 %i.c, 0                     ; 2 uses
  br i1 %i.cd, label %bb.u, label %bb.y

bb.u:                                             ; preds = %bb.t
  %i.ce = load ptr, ptr %i.i, align 8
  %i.cf = getelementptr i8, ptr %i.ce, i64 6
  %i.cg = load i16, ptr %i.cf, align 2
  %i.ch = icmp eq i16 %i.cg, 2
  br i1 %i.ch, label %bb.v, label %bb.y

bb.v:                                             ; preds = %bb.u
  %i.ci = add nsw i16 %i.f, -1
  %or.cond = icmp ult i16 %i.ci, 2
  br i1 %or.cond, label %bb.w, label %bb.ae

bb.w:                                             ; preds = %bb.v
  %i.cj = load i32, ptr @ett_video_probe, align 4
  %i.ck = tail call ptr @proto_tree_add_subtree(ptr noundef %1, ptr noundef %2, i32 noundef %.0128, i32 noundef -1, i32 noundef %i.cj, ptr noundef null, ptr noundef nonnull @.str.587) ; 16 uses
  %i.cl = load i32, ptr @hf_usb_vid_probe_hint, align 4
  %i.cm = load i32, ptr @ett_probe_hint, align 4
  %i.cn = tail call ptr @proto_tree_add_bitmask(ptr noundef %i.ck, ptr noundef %2, i32 noundef %.0128, i32 noundef %i.cl, i32 noundef %i.cm, ptr noundef nonnull @dissect_usb_vid_probe.hint_bits, i32 noundef -2147483648) ; 0 uses
  %i.co = load i32, ptr @hf_usb_vid_format_index, align 4
  %i.cp = add i32 %.0128, 2
  %i.cq = tail call ptr @proto_tree_add_item(ptr noundef %i.ck, i32 noundef %i.co, ptr noundef %2, i32 noundef %i.cp, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.cr = load i32, ptr @hf_usb_vid_frame_index, align 4
  %i.cs = add i32 %.0128, 3
  %i.ct = tail call ptr @proto_tree_add_item(ptr noundef %i.ck, i32 noundef %i.cr, ptr noundef %2, i32 noundef %i.cs, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.cu = load i32, ptr @hf_usb_vid_frame_interval, align 4
  %i.cv = add i32 %.0128, 4
  %i.cw = tail call ptr @proto_tree_add_item(ptr noundef %i.ck, i32 noundef %i.cu, ptr noundef %2, i32 noundef %i.cv, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.cx = load i32, ptr @hf_usb_vid_probe_key_frame_rate, align 4
  %i.cy = add i32 %.0128, 8
  %i.cz = tail call ptr @proto_tree_add_item(ptr noundef %i.ck, i32 noundef %i.cx, ptr noundef %2, i32 noundef %i.cy, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.da = load i32, ptr @hf_usb_vid_probe_p_frame_rate, align 4
  %i.db = add i32 %.0128, 10
  %i.dc = tail call ptr @proto_tree_add_item(ptr noundef %i.ck, i32 noundef %i.da, ptr noundef %2, i32 noundef %i.db, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.dd = load i32, ptr @hf_usb_vid_probe_comp_quality, align 4
  %i.de = add i32 %.0128, 12
  %i.df = tail call ptr @proto_tree_add_item(ptr noundef %i.ck, i32 noundef %i.dd, ptr noundef %2, i32 noundef %i.de, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.dg = load i32, ptr @hf_usb_vid_probe_comp_window, align 4
  %i.dh = add i32 %.0128, 14
  %i.di = tail call ptr @proto_tree_add_item(ptr noundef %i.ck, i32 noundef %i.dg, ptr noundef %2, i32 noundef %i.dh, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.dj = load i32, ptr @hf_usb_vid_probe_delay, align 4
  %i.dk = add i32 %.0128, 16
  %i.dl = tail call ptr @proto_tree_add_item(ptr noundef %i.ck, i32 noundef %i.dj, ptr noundef %2, i32 noundef %i.dk, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.dm = load i32, ptr @hf_usb_vid_probe_max_frame_sz, align 4
  %i.dn = add i32 %.0128, 18
  %i.do = tail call ptr @proto_tree_add_item(ptr noundef %i.ck, i32 noundef %i.dm, ptr noundef %2, i32 noundef %i.dn, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.dp = load i32, ptr @hf_usb_vid_probe_max_payload_sz, align 4
  %i.dq = add i32 %.0128, 22
  %i.dr = tail call ptr @proto_tree_add_item(ptr noundef %i.ck, i32 noundef %i.dp, ptr noundef %2, i32 noundef %i.dq, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.ds = add i32 %.0128, 26                      ; 3 uses
  %i.dt = tail call i32 @tvb_reported_length_remaining(ptr noundef %2, i32 noundef %i.ds)
  %.not.i123 = icmp eq i32 %i.dt, 0
  br i1 %.not.i123, label %dissect_usb_vid_probe.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.du = load i32, ptr @hf_usb_vid_probe_clock_freq, align 4
  %i.dv = tail call ptr @proto_tree_add_item(ptr noundef %i.ck, i32 noundef %i.du, ptr noundef %2, i32 noundef %i.ds, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.dw = add i32 %.0128, 30
  %i.dx = load i32, ptr @hf_usb_vid_probe_framing, align 4
  %i.dy = load i32, ptr @ett_probe_framing, align 4
  %i.dz = tail call ptr @proto_tree_add_bitmask(ptr noundef %i.ck, ptr noundef %2, i32 noundef %i.dw, i32 noundef %i.dx, i32 noundef %i.dy, ptr noundef nonnull @dissect_usb_vid_probe.framing_bits, i32 noundef 0) ; 0 uses
  %i.ea = add i32 %.0128, 31
  %i.eb = load i32, ptr @hf_usb_vid_probe_preferred_ver, align 4
  %i.ec = tail call ptr @proto_tree_add_item(ptr noundef %i.ck, i32 noundef %i.eb, ptr noundef %2, i32 noundef %i.ea, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.ed = load i32, ptr @hf_usb_vid_probe_min_ver, align 4
  %i.ee = add i32 %.0128, 32
  %i.ef = tail call ptr @proto_tree_add_item(ptr noundef %i.ck, i32 noundef %i.ed, ptr noundef %2, i32 noundef %i.ee, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.eg = load i32, ptr @hf_usb_vid_probe_max_ver, align 4
  %i.eh = add i32 %.0128, 33
  %i.ei = tail call ptr @proto_tree_add_item(ptr noundef %i.ck, i32 noundef %i.eg, ptr noundef %2, i32 noundef %i.eh, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.ej = add i32 %.0128, 34
  br label %dissect_usb_vid_probe.exit

dissect_usb_vid_probe.exit:                       ; preds = %bb.w, %bb.x
  %.0.i124 = phi i32 [ %i.ej, %bb.x ], [ %i.ds, %bb.w ] ; 2 uses
  %.neg = add i32 %i.cc, %.0128
  %i.ek = sub i32 %.neg, %.0.i124
  br label %bb.ae

bb.y:                                             ; preds = %bb.u, %bb.t
  %i.el = getelementptr i8, ptr %5, i64 29
  %i.em = load i8, ptr %i.el, align 1             ; 3 uses
  switch i8 %i.em, label %bb.ab [
    i8 -122, label %bb.z
    i8 -123, label %bb.aa
  ]

bb.z:                                             ; preds = %bb.y
  %i.en = load i32, ptr @hf_usb_vid_control_info, align 4
  %i.eo = load i32, ptr @ett_control_capabilities, align 4
  %i.ep = tail call ptr @proto_tree_add_bitmask(ptr noundef %1, ptr noundef %2, i32 noundef %.0128, i32 noundef %i.en, i32 noundef %i.eo, ptr noundef nonnull @dissect_usb_vid_control_info.capability_bits, i32 noundef 0) ; 0 uses
  %i.eq = add i32 %.0128, 1
  %i.er = add i32 %i.cc, -1
  br label %bb.ae

bb.aa:                                            ; preds = %bb.y
  %i.es = load i32, ptr @hf_usb_vid_control_length, align 4
  %i.et = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.es, ptr noundef %2, i32 noundef %.0128, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.eu = add i32 %.0128, 2
  %i.ev = add i32 %i.cc, -2
  br label %bb.ae

bb.ab:                                            ; preds = %bb.y
  %i.ew = icmp eq i8 %i.em, -127
  %or.cond5 = and i1 %i.cd, %i.ew
  br i1 %or.cond5, label %bb.ac, label %.thread

bb.ac:                                            ; preds = %bb.ab
  %i.ex = load ptr, ptr %i.i, align 8
  %i.ey = getelementptr i8, ptr %i.ex, i64 6
  %i.ez = load i16, ptr %i.ey, align 2
  %i.fa = icmp eq i16 %i.ez, 1
  %i.fb = icmp eq i16 %i.f, 2
  %or.cond8 = select i1 %i.fa, i1 %i.fb, i1 false
  br i1 %or.cond8, label %bb.ad, label %.thread

bb.ad:                                            ; preds = %bb.ac
  %i.fc = load i32, ptr @hf_usb_vid_request_error, align 4
  %i.fd = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.fc, ptr noundef %2, i32 noundef %.0128, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.fe = add i32 %.0128, 1
  %i.ff = add i32 %i.cc, -1
  br label %bb.ae

.thread:                                          ; preds = %bb.ab, %bb.ac
  tail call fastcc void @dissect_usb_vid_control_value(ptr noundef %1, ptr noundef %2, i32 noundef %.0128, i8 noundef zeroext %i.em)
  %i.fg = add i32 %i.cc, %.0128
  br label %bb.ag

bb.ae:                                            ; preds = %bb.z, %bb.ad, %bb.aa, %dissect_usb_vid_probe.exit, %bb.v
  %.0110 = phi i32 [ %i.ek, %dissect_usb_vid_probe.exit ], [ %i.cc, %bb.v ], [ %i.er, %bb.z ], [ %i.ev, %bb.aa ], [ %i.ff, %bb.ad ] ; 2 uses
  %.1 = phi i32 [ %.0.i124, %dissect_usb_vid_probe.exit ], [ %.0128, %bb.v ], [ %i.eq, %bb.z ], [ %i.eu, %bb.aa ], [ %i.fe, %bb.ad ] ; 3 uses
  %i.fh = icmp sgt i32 %.0110, 0
  br i1 %i.fh, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.fi = load i32, ptr @hf_usb_vid_control_data, align 4
  %i.fj = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.fi, ptr noundef %2, i32 noundef %.1, i32 noundef -1, i32 noundef 0) ; 0 uses
  %i.fk = add i32 %.1, %.0110
  br label %bb.ag

bb.ag:                                            ; preds = %.thread, %proto_item_set_generated.exit122.thread, %bb.af, %bb.ae, %bb.s
  %.3 = phi i32 [ %i.by, %bb.s ], [ %i.fk, %bb.af ], [ %.1, %bb.ae ], [ %.0128, %proto_item_set_generated.exit122.thread ], [ %i.fg, %.thread ]
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
end_hunk_0
