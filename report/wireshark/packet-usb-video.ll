Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-usb-video?download=true
inline.NumInlined: 22
inline.NumDeleted: 17
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@dissect_usb_vid_descriptor:bb.a
bb.bo:                                            ; preds = %bb.au
  %i.lj = load i32, ptr @hf_usb_vid_color_primaries, align 4
  %i.lk = tail call ptr @proto_tree_add_item(ptr noundef %i.go, i32 noundef %i.lj, ptr noundef %i.l, i32 noundef 3, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
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
  %7 = load i16, ptr %i.a, align 4
  %8 = lshr i16 %7, 8                             ; 7 uses
  %i.b = getelementptr i8, ptr %5, i64 30
  %9 = load i16, ptr %i.b, align 2
  %10 = lshr i16 %9, 8                            ; 3 uses
  %11 = zext nneg i16 %10 to i32                  ; 7 uses
  %i.c = getelementptr i8, ptr %0, i64 8          ; 6 uses
  %i.d = load ptr, ptr %i.c, align 8
  tail call void @col_append_str(ptr noundef %i.d, i32 noundef 25, ptr noundef @.str.553)
  %i.e = getelementptr i8, ptr %6, i64 40         ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 4 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %get_control_selector_name.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr i8, ptr %i.f, i64 40
  %i.i = load i32, ptr %i.h, align 8
  %.not.i.i = icmp eq i32 %i.i, 3
  br i1 %.not.i.i, label %bb.c, label %get_control_selector_name.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr i8, ptr %i.f, i64 32
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %.not16.i.i = icmp eq ptr %i.k, null
  br i1 %.not16.i.i, label %.thread.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = zext nneg i16 %8 to i32
  %i.n = tail call ptr @wmem_tree_lookup32(ptr noundef %i.l, i32 noundef %i.m) ; 3 uses
  %i.o = icmp eq i16 %8, 0
  br i1 %i.o, label %bb.e, label %bb.f

.thread.i.i:                                      ; preds = %bb.c
  %i.p = icmp eq i16 %8, 0
  br i1 %i.p, label %bb.e, label %get_control_selector_name.exit.thread.thread

bb.e:                                             ; preds = %.thread.i.i, %bb.d
  %i.q = getelementptr i8, ptr %i.f, i64 6
  %i.r = load i16, ptr %i.q, align 2
  switch i16 %i.r, label %get_control_selector_name.exit.thread.thread141 [
    i16 1, label %get_control_selector_name.exit
    i16 2, label %get_control_selector_values.exit.thread10.fold.split.i
  ]

bb.f:                                             ; preds = %bb.d
  %.not17.i.i = icmp eq ptr %i.n, null
  br i1 %.not17.i.i, label %get_control_selector_name.exit.thread.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr i8, ptr %i.n, i64 1
  %i.t = load i8, ptr %i.s, align 1
  switch i8 %i.t, label %get_control_selector_name.exit.thread.thread [
    i8 2, label %bb.h
    i8 5, label %get_control_selector_name.exit
    i8 4, label %bb.i
  ]

bb.h:                                             ; preds = %bb.g
  %i.u = getelementptr i8, ptr %i.n, i64 2
  %i.v = load i16, ptr %i.u, align 2
  %i.w = icmp eq i16 %i.v, 513
  br i1 %i.w, label %get_control_selector_name.exit, label %get_control_selector_name.exit.thread.thread

bb.i:                                             ; preds = %bb.g
  br label %get_control_selector_name.exit

get_control_selector_values.exit.thread10.fold.split.i: ; preds = %bb.e
  br label %get_control_selector_name.exit

get_control_selector_name.exit:                   ; preds = %bb.e, %bb.g, %bb.h, %bb.i, %get_control_selector_values.exit.thread10.fold.split.i
  %.013.i13.i = phi ptr [ @cs_camera_terminal_ext, %bb.h ], [ @cs_selector_unit_ext, %bb.i ], [ @cs_processing_unit_ext, %bb.g ], [ @cs_control_interface_ext, %bb.e ], [ @cs_streaming_interface_ext, %get_control_selector_values.exit.thread10.fold.split.i ]
  %i.x = tail call ptr @try_val_to_str_ext(i32 noundef %11, ptr noundef nonnull %.013.i13.i) ; 3 uses
  %.not = icmp eq ptr %i.x, null
  br i1 %.not, label %get_control_selector_name.exit.thread, label %bb.j

bb.j:                                             ; preds = %get_control_selector_name.exit
  %i.y = load ptr, ptr %i.c, align 8
  tail call void @col_append_str(ptr noundef %i.y, i32 noundef 25, ptr noundef nonnull %i.x)
  br label %bb.k

get_control_selector_name.exit.thread:            ; preds = %bb.b, %bb.a, %get_control_selector_name.exit
  %i.z = icmp eq i16 %8, 0
  br i1 %i.z, label %get_control_selector_name.exit.thread.thread141, label %get_control_selector_name.exit.thread.thread

get_control_selector_name.exit.thread.thread141:  ; preds = %bb.e, %get_control_selector_name.exit.thread
  %i.aa = load ptr, ptr %i.c, align 8
  %i.ab = load ptr, ptr %i.e, align 8
  %i.ac = getelementptr i8, ptr %i.ab, i64 10
  %i.ad = load i8, ptr %i.ac, align 2
  %i.ae = zext i8 %i.ad to i32
  tail call void (ptr, i32, ptr, ...) @col_append_fstr(ptr noundef %i.aa, i32 noundef 25, ptr noundef @.str.554, i32 noundef %i.ae, i32 noundef %11)
  br label %bb.k

get_control_selector_name.exit.thread.thread:     ; preds = %bb.f, %bb.g, %bb.h, %.thread.i.i, %get_control_selector_name.exit.thread
  %i.af = zext nneg i16 %8 to i32
  %i.ag = load ptr, ptr %i.c, align 8
  tail call void (ptr, i32, ptr, ...) @col_append_fstr(ptr noundef %i.ag, i32 noundef 25, ptr noundef @.str.555, i32 noundef %i.af, i32 noundef %11)
  br label %bb.k

bb.k:                                             ; preds = %get_control_selector_name.exit.thread.thread141, %get_control_selector_name.exit.thread.thread, %bb.j
  %.0111 = phi ptr [ %i.x, %bb.j ], [ @.str.442, %get_control_selector_name.exit.thread.thread141 ], [ @.str.442, %get_control_selector_name.exit.thread.thread ] ; 2 uses
  %i.ah = load ptr, ptr %i.c, align 8
  tail call void @col_append_str(ptr noundef %i.ah, i32 noundef 25, ptr noundef @.str.556)
  %i.ai = load ptr, ptr %i.c, align 8
  tail call void @col_set_fence(ptr noundef %i.ai, i32 noundef 25)
  br i1 %4, label %bb.s, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aj = load i32, ptr @hf_usb_vid_control_interface, align 4
  %i.ak = load i16, ptr %i.a, align 4
  %i.al = and i16 %i.ak, 255
  %i.am = zext nneg i16 %i.al to i32
  %i.an = tail call ptr @proto_tree_add_uint(ptr noundef %1, i32 noundef %i.aj, ptr noundef %2, i32 noundef 0, i32 noundef 0, i32 noundef %i.am) ; 2 uses
  %.not.i = icmp eq ptr %i.an, null
  br i1 %.not.i, label %proto_item_set_generated.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ao = getelementptr i8, ptr %i.an, i64 40
  %i.ap = load ptr, ptr %i.ao, align 8            ; 2 uses
  %.not5.i = icmp eq ptr %i.ap, null
  br i1 %.not5.i, label %proto_item_set_generated.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aq = getelementptr i8, ptr %i.ap, i64 28     ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 4
  %i.as = or i32 %i.ar, 2
  store i32 %i.as, ptr %i.aq, align 4
  br label %proto_item_set_generated.exit

proto_item_set_generated.exit:                    ; preds = %bb.l, %bb.m, %bb.n
  %i.at = load i32, ptr @hf_usb_vid_control_entity, align 4
  %i.au = zext nneg i16 %8 to i32
  %i.av = tail call ptr @proto_tree_add_uint(ptr noundef %1, i32 noundef %i.at, ptr noundef %2, i32 noundef 0, i32 noundef 0, i32 noundef %i.au) ; 2 uses
  %.not.i117 = icmp eq ptr %i.av, null
  br i1 %.not.i117, label %proto_item_set_generated.exit119, label %bb.o

bb.o:                                             ; preds = %proto_item_set_generated.exit
  %i.aw = getelementptr i8, ptr %i.av, i64 40
  %i.ax = load ptr, ptr %i.aw, align 8            ; 2 uses
  %.not5.i118 = icmp eq ptr %i.ax, null
  br i1 %.not5.i118, label %proto_item_set_generated.exit119, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ay = getelementptr i8, ptr %i.ax, i64 28     ; 2 uses
  %i.az = load i32, ptr %i.ay, align 4
  %i.ba = or i32 %i.az, 2
  store i32 %i.ba, ptr %i.ay, align 4
  br label %proto_item_set_generated.exit119

proto_item_set_generated.exit119:                 ; preds = %proto_item_set_generated.exit, %bb.o, %bb.p
  %i.bb = load i32, ptr @hf_usb_vid_control_selector, align 4
  %i.bc = tail call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format_value(ptr noundef %1, i32 noundef %i.bb, ptr noundef %2, i32 noundef 0, i32 noundef 0, i32 noundef %11, ptr noundef @.str.557, ptr noundef %.0111, i32 noundef %11) ; 2 uses
  %.not.i120 = icmp eq ptr %i.bc, null
  br i1 %.not.i120, label %proto_item_set_generated.exit122.thread, label %bb.q

bb.q:                                             ; preds = %proto_item_set_generated.exit119
  %i.bd = getelementptr i8, ptr %i.bc, i64 40
  %i.be = load ptr, ptr %i.bd, align 8            ; 2 uses
  %.not5.i121 = icmp eq ptr %i.be, null
  br i1 %.not5.i121, label %proto_item_set_generated.exit122.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bf = getelementptr i8, ptr %i.be, i64 28     ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 4
  %i.bh = or i32 %i.bg, 2
  store i32 %i.bh, ptr %i.bf, align 4
  br label %proto_item_set_generated.exit122.thread

bb.s:                                             ; preds = %bb.k
  %i.bi = add i32 %3, 1
  %i.bj = load i32, ptr @hf_usb_vid_control_selector, align 4
  %i.bk = tail call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format_value(ptr noundef %1, i32 noundef %i.bj, ptr noundef %2, i32 noundef %i.bi, i32 noundef 1, i32 noundef %11, ptr noundef @.str.557, ptr noundef %.0111, i32 noundef %11) ; 0 uses
  %i.bl = add i32 %3, 2
  %i.bm = load i32, ptr @hf_usb_vid_control_interface, align 4
  %i.bn = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.bm, ptr noundef %2, i32 noundef %i.bl, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.bo = add i32 %3, 3
  %i.bp = load i32, ptr @hf_usb_vid_control_entity, align 4
  %i.bq = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.bp, ptr noundef %2, i32 noundef %i.bo, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.br = add i32 %3, 4
  %i.bs = load i32, ptr @hf_usb_vid_length, align 4
  %i.bt = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.bs, ptr noundef %2, i32 noundef %i.br, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.bu = add i32 %3, 6                           ; 2 uses
  %i.bv = getelementptr i8, ptr %5, i64 29
  %i.bw = load i8, ptr %i.bv, align 1
  %i.bx = icmp eq i8 %i.bw, 1
  br i1 %i.bx, label %proto_item_set_generated.exit122.thread, label %bb.ag

proto_item_set_generated.exit122.thread:          ; preds = %proto_item_set_generated.exit119, %bb.q, %bb.r, %bb.s
  %.0128 = phi i32 [ %i.bu, %bb.s ], [ %3, %bb.r ], [ %3, %bb.q ], [ %3, %proto_item_set_generated.exit119 ] ; 30 uses
  %i.by = tail call i32 @tvb_reported_length_remaining(ptr noundef %2, i32 noundef %.0128) ; 7 uses
  %.not116 = icmp eq i32 %i.by, 0
  br i1 %.not116, label %bb.ag, label %bb.t

bb.t:                                             ; preds = %proto_item_set_generated.exit122.thread
  %i.bz = icmp eq i16 %8, 0                       ; 2 uses
  br i1 %i.bz, label %bb.u, label %bb.y

bb.u:                                             ; preds = %bb.t
  %i.ca = load ptr, ptr %i.e, align 8
  %i.cb = getelementptr i8, ptr %i.ca, i64 6
  %i.cc = load i16, ptr %i.cb, align 2
  %i.cd = icmp eq i16 %i.cc, 2
  br i1 %i.cd, label %bb.v, label %bb.y

bb.v:                                             ; preds = %bb.u
  %12 = add nsw i16 %10, -1
  %or.cond = icmp ult i16 %12, 2
  br i1 %or.cond, label %bb.w, label %bb.ae

bb.w:                                             ; preds = %bb.v
  %i.ce = load i32, ptr @ett_video_probe, align 4
  %i.cf = tail call ptr @proto_tree_add_subtree(ptr noundef %1, ptr noundef %2, i32 noundef %.0128, i32 noundef -1, i32 noundef %i.ce, ptr noundef null, ptr noundef @.str.587) ; 16 uses
  %i.cg = load i32, ptr @hf_usb_vid_probe_hint, align 4
  %i.ch = load i32, ptr @ett_probe_hint, align 4
  %i.ci = tail call ptr @proto_tree_add_bitmask(ptr noundef %i.cf, ptr noundef %2, i32 noundef %.0128, i32 noundef %i.cg, i32 noundef %i.ch, ptr noundef @dissect_usb_vid_probe.hint_bits, i32 noundef -2147483648) ; 0 uses
  %i.cj = load i32, ptr @hf_usb_vid_format_index, align 4
  %i.ck = add i32 %.0128, 2
  %i.cl = tail call ptr @proto_tree_add_item(ptr noundef %i.cf, i32 noundef %i.cj, ptr noundef %2, i32 noundef %i.ck, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.cm = load i32, ptr @hf_usb_vid_frame_index, align 4
  %i.cn = add i32 %.0128, 3
  %i.co = tail call ptr @proto_tree_add_item(ptr noundef %i.cf, i32 noundef %i.cm, ptr noundef %2, i32 noundef %i.cn, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.cp = load i32, ptr @hf_usb_vid_frame_interval, align 4
  %i.cq = add i32 %.0128, 4
  %i.cr = tail call ptr @proto_tree_add_item(ptr noundef %i.cf, i32 noundef %i.cp, ptr noundef %2, i32 noundef %i.cq, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.cs = load i32, ptr @hf_usb_vid_probe_key_frame_rate, align 4
  %i.ct = add i32 %.0128, 8
  %i.cu = tail call ptr @proto_tree_add_item(ptr noundef %i.cf, i32 noundef %i.cs, ptr noundef %2, i32 noundef %i.ct, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.cv = load i32, ptr @hf_usb_vid_probe_p_frame_rate, align 4
  %i.cw = add i32 %.0128, 10
  %i.cx = tail call ptr @proto_tree_add_item(ptr noundef %i.cf, i32 noundef %i.cv, ptr noundef %2, i32 noundef %i.cw, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.cy = load i32, ptr @hf_usb_vid_probe_comp_quality, align 4
  %i.cz = add i32 %.0128, 12
  %i.da = tail call ptr @proto_tree_add_item(ptr noundef %i.cf, i32 noundef %i.cy, ptr noundef %2, i32 noundef %i.cz, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.db = load i32, ptr @hf_usb_vid_probe_comp_window, align 4
  %i.dc = add i32 %.0128, 14
  %i.dd = tail call ptr @proto_tree_add_item(ptr noundef %i.cf, i32 noundef %i.db, ptr noundef %2, i32 noundef %i.dc, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.de = load i32, ptr @hf_usb_vid_probe_delay, align 4
  %i.df = add i32 %.0128, 16
  %i.dg = tail call ptr @proto_tree_add_item(ptr noundef %i.cf, i32 noundef %i.de, ptr noundef %2, i32 noundef %i.df, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.dh = load i32, ptr @hf_usb_vid_probe_max_frame_sz, align 4
  %i.di = add i32 %.0128, 18
  %i.dj = tail call ptr @proto_tree_add_item(ptr noundef %i.cf, i32 noundef %i.dh, ptr noundef %2, i32 noundef %i.di, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.dk = load i32, ptr @hf_usb_vid_probe_max_payload_sz, align 4
  %i.dl = add i32 %.0128, 22
  %i.dm = tail call ptr @proto_tree_add_item(ptr noundef %i.cf, i32 noundef %i.dk, ptr noundef %2, i32 noundef %i.dl, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.dn = add i32 %.0128, 26                      ; 3 uses
  %i.do = tail call i32 @tvb_reported_length_remaining(ptr noundef %2, i32 noundef %i.dn)
  %.not.i123 = icmp eq i32 %i.do, 0
  br i1 %.not.i123, label %dissect_usb_vid_probe.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dp = load i32, ptr @hf_usb_vid_probe_clock_freq, align 4
  %i.dq = tail call ptr @proto_tree_add_item(ptr noundef %i.cf, i32 noundef %i.dp, ptr noundef %2, i32 noundef %i.dn, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.dr = add i32 %.0128, 30
  %i.ds = load i32, ptr @hf_usb_vid_probe_framing, align 4
  %i.dt = load i32, ptr @ett_probe_framing, align 4
  %i.du = tail call ptr @proto_tree_add_bitmask(ptr noundef %i.cf, ptr noundef %2, i32 noundef %i.dr, i32 noundef %i.ds, i32 noundef %i.dt, ptr noundef @dissect_usb_vid_probe.framing_bits, i32 noundef 0) ; 0 uses
  %i.dv = add i32 %.0128, 31
  %i.dw = load i32, ptr @hf_usb_vid_probe_preferred_ver, align 4
  %i.dx = tail call ptr @proto_tree_add_item(ptr noundef %i.cf, i32 noundef %i.dw, ptr noundef %2, i32 noundef %i.dv, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.dy = load i32, ptr @hf_usb_vid_probe_min_ver, align 4
  %i.dz = add i32 %.0128, 32
  %i.ea = tail call ptr @proto_tree_add_item(ptr noundef %i.cf, i32 noundef %i.dy, ptr noundef %2, i32 noundef %i.dz, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.eb = load i32, ptr @hf_usb_vid_probe_max_ver, align 4
  %i.ec = add i32 %.0128, 33
  %i.ed = tail call ptr @proto_tree_add_item(ptr noundef %i.cf, i32 noundef %i.eb, ptr noundef %2, i32 noundef %i.ec, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.ee = add i32 %.0128, 34
  br label %dissect_usb_vid_probe.exit

dissect_usb_vid_probe.exit:                       ; preds = %bb.w, %bb.x
  %.0.i124 = phi i32 [ %i.ee, %bb.x ], [ %i.dn, %bb.w ] ; 2 uses
  %.neg = add i32 %i.by, %.0128
  %i.ef = sub i32 %.neg, %.0.i124
  br label %bb.ae

bb.y:                                             ; preds = %bb.u, %bb.t
  %i.eg = getelementptr i8, ptr %5, i64 29
  %i.eh = load i8, ptr %i.eg, align 1             ; 3 uses
  switch i8 %i.eh, label %bb.ab [
    i8 -122, label %bb.z
    i8 -123, label %bb.aa
  ]

bb.z:                                             ; preds = %bb.y
  %i.ei = load i32, ptr @hf_usb_vid_control_info, align 4
  %i.ej = load i32, ptr @ett_control_capabilities, align 4
  %i.ek = tail call ptr @proto_tree_add_bitmask(ptr noundef %1, ptr noundef %2, i32 noundef %.0128, i32 noundef %i.ei, i32 noundef %i.ej, ptr noundef @dissect_usb_vid_control_info.capability_bits, i32 noundef 0) ; 0 uses
  %i.el = add i32 %.0128, 1
  %i.em = add i32 %i.by, -1
  br label %bb.ae

bb.aa:                                            ; preds = %bb.y
  %i.en = load i32, ptr @hf_usb_vid_control_length, align 4
  %i.eo = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.en, ptr noundef %2, i32 noundef %.0128, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.ep = add i32 %.0128, 2
  %i.eq = add i32 %i.by, -2
  br label %bb.ae

bb.ab:                                            ; preds = %bb.y
  %i.er = icmp eq i8 %i.eh, -127
  %or.cond5 = and i1 %i.bz, %i.er
  br i1 %or.cond5, label %bb.ac, label %.thread

bb.ac:                                            ; preds = %bb.ab
  %i.es = load ptr, ptr %i.e, align 8
  %i.et = getelementptr i8, ptr %i.es, i64 6
  %i.eu = load i16, ptr %i.et, align 2
  %i.ev = icmp eq i16 %i.eu, 1
  %i.ew = icmp eq i16 %10, 2
  %or.cond8 = select i1 %i.ev, i1 %i.ew, i1 false
  br i1 %or.cond8, label %bb.ad, label %.thread

bb.ad:                                            ; preds = %bb.ac
  %i.ex = load i32, ptr @hf_usb_vid_request_error, align 4
  %i.ey = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.ex, ptr noundef %2, i32 noundef %.0128, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.ez = add i32 %.0128, 1
  %i.fa = add i32 %i.by, -1
  br label %bb.ae

.thread:                                          ; preds = %bb.ab, %bb.ac
  tail call fastcc void @dissect_usb_vid_control_value(ptr noundef %1, ptr noundef %2, i32 noundef %.0128, i8 noundef zeroext %i.eh)
  %i.fb = add i32 %i.by, %.0128
  br label %bb.ag

bb.ae:                                            ; preds = %bb.z, %bb.ad, %bb.aa, %dissect_usb_vid_probe.exit, %bb.v
  %.0110 = phi i32 [ %i.ef, %dissect_usb_vid_probe.exit ], [ %i.by, %bb.v ], [ %i.em, %bb.z ], [ %i.eq, %bb.aa ], [ %i.fa, %bb.ad ] ; 2 uses
  %.1 = phi i32 [ %.0.i124, %dissect_usb_vid_probe.exit ], [ %.0128, %bb.v ], [ %i.el, %bb.z ], [ %i.ep, %bb.aa ], [ %i.ez, %bb.ad ] ; 3 uses
  %i.fc = icmp sgt i32 %.0110, 0
  br i1 %i.fc, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.fd = load i32, ptr @hf_usb_vid_control_data, align 4
  %i.fe = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.fd, ptr noundef %2, i32 noundef %.1, i32 noundef -1, i32 noundef 0) ; 0 uses
  %i.ff = add i32 %.1, %.0110
  br label %bb.ag

bb.ag:                                            ; preds = %.thread, %proto_item_set_generated.exit122.thread, %bb.af, %bb.ae, %bb.s
  %.3 = phi i32 [ %i.bu, %bb.s ], [ %i.ff, %bb.af ], [ %.1, %bb.ae ], [ %.0128, %proto_item_set_generated.exit122.thread ], [ %i.fb, %.thread ]
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
