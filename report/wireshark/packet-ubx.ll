Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-ubx?download=true
inline.NumInlined: 6
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 13
begin_hunk_0_@fmt_decl:bb.a
bb.b:                                             ; preds = %bb.a
  %i.b = udiv i32 %1, 100
  %i.c = urem i32 %1, 100
  %i.d = tail call i32 (ptr, i64, i32, i64, ptr, ...) @__snprintf_chk(ptr noundef %0, i64 noundef 240, i32 noundef 2, i64 noundef -1, ptr noundef @.str.835, i32 noundef %i.b, i32 noundef %i.c, ptr noundef @.str.817) ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = sub i32 0, %1                            ; 2 uses
  %i.f = sdiv i32 %i.e, 100
  %i.g = srem i32 %i.e, 100
  %i.h = tail call i32 (ptr, i64, i32, i64, ptr, ...) @__snprintf_chk(ptr noundef %0, i64 noundef 240, i32 noundef 2, i64 noundef -1, ptr noundef @.str.836, i32 noundef %i.f, i32 noundef %i.g, ptr noundef @.str.817) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: nofree null_pointer_is_valid sspstrong uwtable
define internal void @fmt_decl_acc(ptr noundef %0, i32 noundef %1) #1 {
bb.a:
  %i.a = udiv i32 %1, 100
  %i.b = urem i32 %1, 100
  %i.c = tail call i32 (ptr, i64, i32, i64, ptr, ...) @__snprintf_chk(ptr noundef %0, i64 noundef 240, i32 noundef 2, i64 noundef -1, ptr noundef @.str.835, i32 noundef %i.a, i32 noundef %i.b, ptr noundef @.str.817) ; 0 uses
  ret void
}

; Function Attrs: nofree null_pointer_is_valid sspstrong uwtable
define internal void @fmt_relpos_hp(ptr noundef %0, i8 noundef signext %1) #1 {
bb.a:
  %i.a = sext i8 %1 to i32                        ; 4 uses
  %i.b = icmp sgt i8 %1, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.cmp = icmp samesign ugt i8 %1, 99
  %i.c = zext i1 %.cmp to i32
  %.urem = add nsw i32 %i.a, -100
  %.cmp8 = icmp samesign ult i8 %1, 100
  %i.d = select i1 %.cmp8, i32 %i.a, i32 %.urem
  %i.e = tail call i32 (ptr, i64, i32, i64, ptr, ...) @__snprintf_chk(ptr noundef %0, i64 noundef 240, i32 noundef 2, i64 noundef -1, ptr noundef @.str.837, i32 noundef %i.c, i32 noundef %i.d) ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = sub nsw i32 0, %i.a                      ; 3 uses
  %.cmp9 = icmp samesign ugt i32 %i.f, 99
  %i.g = zext i1 %.cmp9 to i32
  %.urem10 = sub nsw i32 -100, %i.a
  %.cmp11 = icmp samesign ult i32 %i.f, 100
  %i.h = select i1 %.cmp11, i32 %i.f, i32 %.urem10
  %i.i = tail call i32 (ptr, i64, i32, i64, ptr, ...) @__snprintf_chk(ptr noundef %0, i64 noundef 240, i32 noundef 2, i64 noundef -1, ptr noundef @.str.838, i32 noundef %i.g, i32 noundef %i.h) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: nofree null_pointer_is_valid sspstrong uwtable
define internal void @fmt_relpos_acc(ptr noundef %0, i32 noundef %1) #1 {
bb.a:
  %i.a = udiv i32 %1, 100
  %i.b = urem i32 %1, 100
  %i.c = tail call i32 (ptr, i64, i32, i64, ptr, ...) @__snprintf_chk(ptr noundef %0, i64 noundef 240, i32 noundef 2, i64 noundef -1, ptr noundef @.str.837, i32 noundef %i.a, i32 noundef %i.b) ; 0 uses
  ret void
}

; Function Attrs: nofree null_pointer_is_valid sspstrong uwtable
define internal void @fmt_relpos_full(ptr noundef %0, i64 noundef %1) #1 {
bb.a:
  %i.a = icmp sgt i64 %1, -1
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = udiv i64 %1, 100
  %i.c = urem i64 %1, 100
  %i.d = tail call i32 (ptr, i64, i32, i64, ptr, ...) @__snprintf_chk(ptr noundef %0, i64 noundef 240, i32 noundef 2, i64 noundef -1, ptr noundef @.str.843, i64 noundef %i.b, i64 noundef %i.c) ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = sub i64 0, %1                            ; 2 uses
  %i.f = sdiv i64 %i.e, 100
  %i.g = srem i64 %i.e, 100
  %i.h = tail call i32 (ptr, i64, i32, i64, ptr, ...) @__snprintf_chk(ptr noundef %0, i64 noundef 240, i32 noundef 2, i64 noundef -1, ptr noundef @.str.844, i64 noundef %i.f, i64 noundef %i.g) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: nofree null_pointer_is_valid sspstrong uwtable
define internal void @fmt_pr_res(ptr noundef %0, i32 noundef %1) #1 {
bb.a:
  %i.a = icmp sgt i32 %1, -1
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = udiv i32 %1, 10
  %i.c = urem i32 %1, 10
  %i.d = tail call i32 (ptr, i64, i32, i64, ptr, ...) @__snprintf_chk(ptr noundef %0, i64 noundef 240, i32 noundef 2, i64 noundef -1, ptr noundef @.str.845, i32 noundef %i.b, i32 noundef %i.c) ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = sub i32 0, %1                            ; 2 uses
  %i.f = sdiv i32 %i.e, 10
  %i.g = srem i32 %i.e, 10
  %i.h = tail call i32 (ptr, i64, i32, i64, ptr, ...) @__snprintf_chk(ptr noundef %0, i64 noundef 240, i32 noundef 2, i64 noundef -1, ptr noundef @.str.846, i32 noundef %i.f, i32 noundef %i.g) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: nofree null_pointer_is_valid sspstrong uwtable
define internal void @fmt_towacc(ptr noundef %0, i32 noundef %1) #1 {
bb.a:
  %i.a = lshr i32 %1, 4
  %i.b = mul i32 %1, 10000
  %i.c = lshr exact i32 %i.b, 4
  %i.d = urem i32 %i.c, 10000
  %i.e = tail call i32 (ptr, i64, i32, i64, ptr, ...) @__snprintf_chk(ptr noundef %0, i64 noundef 240, i32 noundef 2, i64 noundef -1, ptr noundef @.str.884, i32 noundef %i.a, i32 noundef %i.d) ; 0 uses
  ret void
}

; Function Attrs: nofree null_pointer_is_valid sspstrong uwtable
define internal void @fmt_dopplerms(ptr noundef %0, i32 noundef %1) #1 {
bb.a:
  %i.a = icmp sgt i32 %1, -1                      ; 2 uses
  %.neg = mul i32 %1, -4
  %i.b = shl i32 %1, 2
  %.neg.sink9 = select i1 %i.a, i32 %i.b, i32 %.neg ; 2 uses
  %.str.891.sink = select i1 %i.a, ptr @.str.890, ptr @.str.891
  %i.c = sdiv i32 %.neg.sink9, 100
  %i.d = srem i32 %.neg.sink9, 100
  %i.e = tail call i32 (ptr, i64, i32, i64, ptr, ...) @__snprintf_chk(ptr noundef %0, i64 noundef 240, i32 noundef 2, i64 noundef -1, ptr noundef %.str.891.sink, i32 noundef %i.c, i32 noundef %i.d) ; 0 uses
  ret void
}

; Function Attrs: nofree null_pointer_is_valid sspstrong uwtable
define internal void @fmt_dopplerhz(ptr noundef %0, i32 noundef %1) #1 {
bb.a:
  %i.a = icmp sgt i32 %1, -1                      ; 2 uses
  %.neg = mul i32 %1, -2
  %i.b = shl nuw i32 %1, 1
  %.neg.sink9 = select i1 %i.a, i32 %i.b, i32 %.neg ; 2 uses
  %.str.893.sink = select i1 %i.a, ptr @.str.892, ptr @.str.893
  %i.c = sdiv i32 %.neg.sink9, 10
  %i.d = srem i32 %.neg.sink9, 10
  %i.e = tail call i32 (ptr, i64, i32, i64, ptr, ...) @__snprintf_chk(ptr noundef %0, i64 noundef 240, i32 noundef 2, i64 noundef -1, ptr noundef %.str.893.sink, i32 noundef %i.c, i32 noundef %i.d) ; 0 uses
  ret void
}

; Function Attrs: nofree null_pointer_is_valid sspstrong uwtable
define internal void @fmt_codephase(ptr noundef %0, i32 noundef %1) #1 {
bb.a:
  %i.a = tail call i32 (ptr, i64, i32, i64, ptr, ...) @__snprintf_chk(ptr noundef %0, i64 noundef 240, i32 noundef 2, i64 noundef -1, ptr noundef @.str.894, i32 noundef %1) ; 0 uses
  ret void
}

; Function Attrs: nofree null_pointer_is_valid sspstrong uwtable
define internal void @fmt_prstdev(ptr noundef %0, i32 noundef %1) #1 {
bb.a:
  %i.a = shl nuw i32 1, %1                        ; 2 uses
  %i.b = sdiv i32 %i.a, 100
  %i.c = srem i32 %i.a, 100
  %i.d = tail call i32 (ptr, i64, i32, i64, ptr, ...) @__snprintf_chk(ptr noundef %0, i64 noundef 240, i32 noundef 2, i64 noundef -1, ptr noundef @.str.895, i32 noundef %i.b, i32 noundef %i.c) ; 0 uses
  ret void
}

; Function Attrs: nofree null_pointer_is_valid sspstrong uwtable
define internal void @fmt_cpstdev(ptr noundef %0, i32 noundef %1) #1 {
bb.a:
  %i.a = shl i32 %1, 2                            ; 2 uses
  %i.b = udiv i32 %i.a, 1000
  %i.c = urem i32 %i.a, 1000
  %i.d = tail call i32 (ptr, i64, i32, i64, ptr, ...) @__snprintf_chk(ptr noundef %0, i64 noundef 240, i32 noundef 2, i64 noundef -1, ptr noundef @.str.896, i32 noundef %i.b, i32 noundef %i.c) ; 0 uses
  ret void
}

; Function Attrs: nofree null_pointer_is_valid sspstrong uwtable
define internal void @fmt_dostdev(ptr noundef %0, i32 noundef %1) #1 {
bb.a:
  %i.a = shl i32 2, %1                            ; 2 uses
  %i.b = sdiv i32 %i.a, 1000
  %i.c = srem i32 %i.a, 1000
  %i.d = tail call i32 (ptr, i64, i32, i64, ptr, ...) @__snprintf_chk(ptr noundef %0, i64 noundef 240, i32 noundef 2, i64 noundef -1, ptr noundef @.str.897, i32 noundef %i.b, i32 noundef %i.c) ; 0 uses
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: null_pointer_is_valid
declare i32 @proto_register_protocol(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare ptr @register_dissector(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_ubx(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree readnone captures(none) %3) #0 {
.new:
  %i.a = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.b = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8
  tail call void @col_set_str(ptr noundef %i.c, i32 noundef 35, ptr noundef @.str.625)
  %i.d = load ptr, ptr %i.b, align 8
  tail call void @col_clear(ptr noundef %i.d, i32 noundef 25)
  %i.e = tail call zeroext i16 @tvb_get_uint16(ptr noundef %0, i32 noundef 4, i32 noundef -2147483648)
  %i.f = zext i16 %i.e to i32                     ; 4 uses
  %i.g = load i32, ptr @proto_ubx, align 4
  %i.h = add nuw nsw i32 %i.f, 8
  %i.i = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.g, ptr noundef %0, i32 noundef 0, i32 noundef %i.h, i32 noundef 0)
  %i.j = load i32, ptr @ett_ubx, align 4
  %i.k = tail call ptr @proto_item_add_subtree(ptr noundef %i.i, i32 noundef %i.j) ; 4 uses
  %i.l = load i32, ptr @hf_ubx_preamble, align 4
  %i.m = tail call ptr @proto_tree_add_item(ptr noundef %i.k, i32 noundef %i.l, ptr noundef %0, i32 noundef 0, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.n = load i32, ptr @hf_ubx_msg_class_id, align 4
  %i.o = call ptr @proto_tree_add_item_ret_uint(ptr noundef %i.k, i32 noundef %i.n, ptr noundef %0, i32 noundef 2, i32 noundef 2, i32 noundef 0, ptr noundef nonnull %i.a) ; 0 uses
  %i.p = load i32, ptr @hf_ubx_payload_len, align 4
  %i.q = call ptr @proto_tree_add_item(ptr noundef %i.k, i32 noundef %i.p, ptr noundef %0, i32 noundef 4, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.r = getelementptr i8, ptr %1, i64 416
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = add nuw nsw i32 %i.f, 4
  %i.u = zext nneg i32 %i.t to i64                ; 3 uses
  %i.v = call ptr @tvb_memdup(ptr noundef %i.s, ptr noundef %0, i32 noundef 2, i64 noundef %i.u) ; 5 uses
  %xtraiter = and i64 %i.u, 3                     ; 3 uses
  %unroll_iter = and i64 %i.u, 131068
  br label %bb.a

bb.a:                                             ; preds = %bb.a, %.new
  %indvars.iv.i = phi i64 [ 0, %.new ], [ %indvars.iv.next.i.3, %bb.a ] ; 5 uses
  %.0912.i = phi i8 [ 0, %.new ], [ %i.ao, %bb.a ]
  %.01011.i = phi i8 [ 0, %.new ], [ %i.an, %bb.a ]
  %niter = phi i64 [ 0, %.new ], [ %niter.next.3, %bb.a ]
  %i.w = getelementptr i8, ptr %i.v, i64 %indvars.iv.i
  %i.x = load i8, ptr %i.w, align 1
  %i.y = add i8 %i.x, %.01011.i                   ; 2 uses
  %i.z = add i8 %i.y, %.0912.i
  %i.aa = getelementptr i8, ptr %i.v, i64 %indvars.iv.i
  %i.ab = getelementptr i8, ptr %i.aa, i64 1
  %i.ac = load i8, ptr %i.ab, align 1
  %i.ad = add i8 %i.ac, %i.y                      ; 2 uses
  %i.ae = add i8 %i.ad, %i.z
  %i.af = getelementptr i8, ptr %i.v, i64 %indvars.iv.i
  %i.ag = getelementptr i8, ptr %i.af, i64 2
  %i.ah = load i8, ptr %i.ag, align 1
  %i.ai = add i8 %i.ah, %i.ad                     ; 2 uses
  %i.aj = add i8 %i.ai, %i.ae
  %i.ak = getelementptr i8, ptr %i.v, i64 %indvars.iv.i
  %i.al = getelementptr i8, ptr %i.ak, i64 3
  %i.am = load i8, ptr %i.al, align 1
  %i.an = add i8 %i.am, %i.ai                     ; 4 uses
  %i.ao = add i8 %i.an, %i.aj                     ; 3 uses
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %chksum_fletcher_8.exit.unr-lcssa, label %bb.a, !llvm.loop !15

chksum_fletcher_8.exit.unr-lcssa:                 ; preds = %bb.a
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %chksum_fletcher_8.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %chksum_fletcher_8.exit.unr-lcssa
  %lcmp.mod36 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod36)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.next.i.3, %.epil.preheader ], [ %indvars.iv.next.i.epil, %bb.b ] ; 2 uses
  %.0912.i.epil = phi i8 [ %i.ao, %.epil.preheader ], [ %i.as, %bb.b ]
  %.01011.i.epil = phi i8 [ %i.an, %.epil.preheader ], [ %i.ar, %bb.b ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.b ]
  %i.ap = getelementptr i8, ptr %i.v, i64 %indvars.iv.i.epil
  %i.aq = load i8, ptr %i.ap, align 1
  %i.ar = add i8 %i.aq, %.01011.i.epil            ; 3 uses
  %i.as = add i8 %i.ar, %.0912.i.epil             ; 2 uses
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %chksum_fletcher_8.exit, label %bb.b, !llvm.loop !16

chksum_fletcher_8.exit:                           ; preds = %bb.b, %chksum_fletcher_8.exit.unr-lcssa
  %.lcssa33 = phi i8 [ %i.an, %chksum_fletcher_8.exit.unr-lcssa ], [ %i.ar, %bb.b ]
  %.lcssa = phi i8 [ %i.ao, %chksum_fletcher_8.exit.unr-lcssa ], [ %i.as, %bb.b ]
  %i.at = add nuw nsw i32 %i.f, 6
  %i.au = zext i8 %.lcssa to i32
  %i.av = shl nuw nsw i32 %i.au, 8
  %i.aw = zext i8 %.lcssa33 to i32
  %i.ax = or disjoint i32 %i.av, %i.aw
  %i.ay = load i32, ptr @hf_ubx_chksum, align 4
  %i.az = call ptr @proto_tree_add_checksum(ptr noundef %i.k, ptr noundef %0, i32 noundef %i.at, i32 noundef %i.ay, i32 noundef -1, ptr noundef @ei_ubx_chksum, ptr noundef null, i32 noundef %i.ax, i32 noundef -2147483648, i32 noundef 1) ; 0 uses
  %i.ba = call ptr @tvb_new_subset_length(ptr noundef %0, i32 noundef 6, i32 noundef %i.f) ; 2 uses
  %i.bb = load ptr, ptr @ubx_class_id_dissector_table, align 8
  %i.bc = load i32, ptr %i.a, align 4
  %i.bd = call i32 @dissector_try_uint(ptr noundef %i.bb, i32 noundef %i.bc, ptr noundef %i.ba, ptr noundef %1, ptr noundef %2)
  %.not = icmp eq i32 %i.bd, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %chksum_fletcher_8.exit
  %i.be = call i32 @call_data_dissector(ptr noundef %i.ba, ptr noundef %1, ptr noundef %2) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %chksum_fletcher_8.exit
  %i.bf = call i32 @tvb_captured_length(ptr noundef %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret i32 %i.bf
}

; Function Attrs: null_pointer_is_valid
declare void @proto_register_field_array(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare void @proto_register_subtree_array(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare ptr @expert_register_protocol(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare void @expert_register_field_array(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare ptr @register_dissector_table(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @proto_reg_handoff_ubx() local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr @proto_ubx, align 4
  %i.b = tail call ptr @create_dissector_handle(ptr noundef @dissect_ubx_ack_ack, i32 noundef %i.a)
  tail call void @dissector_add_uint(ptr noundef @.str.3, i32 noundef 1281, ptr noundef %i.b)
  %i.c = load i32, ptr @proto_ubx, align 4
  %i.d = tail call ptr @create_dissector_handle(ptr noundef @dissect_ubx_ack_nak, i32 noundef %i.c)
  tail call void @dissector_add_uint(ptr noundef @.str.3, i32 noundef 1280, ptr noundef %i.d)
  %i.e = load i32, ptr @proto_ubx, align 4
  %i.f = tail call ptr @create_dissector_handle(ptr noundef @dissect_ubx_cfg_gnss, i32 noundef %i.e)
  tail call void @dissector_add_uint(ptr noundef @.str.3, i32 noundef 1598, ptr noundef %i.f)
  %i.g = load i32, ptr @proto_ubx, align 4
  %i.h = tail call ptr @create_dissector_handle(ptr noundef @dissect_ubx_cfg_sbas, i32 noundef %i.g)
  tail call void @dissector_add_uint(ptr noundef @.str.3, i32 noundef 1558, ptr noundef %i.h)
  %i.i = load i32, ptr @proto_ubx, align 4
  %i.j = tail call ptr @create_dissector_handle(ptr noundef @dissect_ubx_mon_rf, i32 noundef %i.i)
  tail call void @dissector_add_uint(ptr noundef @.str.3, i32 noundef 2616, ptr noundef %i.j)
  %i.k = load i32, ptr @proto_ubx, align 4
  %i.l = tail call ptr @create_dissector_handle(ptr noundef @dissect_ubx_nav_dop, i32 noundef %i.k)
  tail call void @dissector_add_uint(ptr noundef @.str.3, i32 noundef 260, ptr noundef %i.l)
  %i.m = load i32, ptr @proto_ubx, align 4
  %i.n = tail call ptr @create_dissector_handle(ptr noundef @dissect_ubx_nav_eoe, i32 noundef %i.m)
  tail call void @dissector_add_uint(ptr noundef @.str.3, i32 noundef 353, ptr noundef %i.n)
  %i.o = load i32, ptr @proto_ubx, align 4
  %i.p = tail call ptr @create_dissector_handle(ptr noundef @dissect_ubx_nav_odo, i32 noundef %i.o)
  tail call void @dissector_add_uint(ptr noundef @.str.3, i32 noundef 265, ptr noundef %i.p)
  %i.q = load i32, ptr @proto_ubx, align 4
  %i.r = tail call ptr @create_dissector_handle(ptr noundef @dissect_ubx_nav_posecef, i32 noundef %i.q)
  tail call void @dissector_add_uint(ptr noundef @.str.3, i32 noundef 257, ptr noundef %i.r)
  %i.s = load i32, ptr @proto_ubx, align 4
  %i.t = tail call ptr @create_dissector_handle(ptr noundef @dissect_ubx_nav_pvt, i32 noundef %i.s)
  tail call void @dissector_add_uint(ptr noundef @.str.3, i32 noundef 263, ptr noundef %i.t)
  %i.u = load i32, ptr @proto_ubx, align 4
  %i.v = tail call ptr @create_dissector_handle(ptr noundef @dissect_ubx_nav_relposned, i32 noundef %i.u)
  tail call void @dissector_add_uint(ptr noundef @.str.3, i32 noundef 316, ptr noundef %i.v)
  %i.w = load i32, ptr @proto_ubx, align 4
  %i.x = tail call ptr @create_dissector_handle(ptr noundef @dissect_ubx_nav_sat, i32 noundef %i.w)
  tail call void @dissector_add_uint(ptr noundef @.str.3, i32 noundef 309, ptr noundef %i.x)
  %i.y = load i32, ptr @proto_ubx, align 4
  %i.z = tail call ptr @create_dissector_handle(ptr noundef @dissect_ubx_nav_sbas, i32 noundef %i.y)
  tail call void @dissector_add_uint(ptr noundef @.str.3, i32 noundef 306, ptr noundef %i.z)
  %i.aa = load i32, ptr @proto_ubx, align 4
  %i.ab = tail call ptr @create_dissector_handle(ptr noundef @dissect_ubx_nav_timegps, i32 noundef %i.aa)
  tail call void @dissector_add_uint(ptr noundef @.str.3, i32 noundef 288, ptr noundef %i.ab)
  %i.ac = load i32, ptr @proto_ubx, align 4
  %i.ad = tail call ptr @create_dissector_handle(ptr noundef @dissect_ubx_nav_timeutc, i32 noundef %i.ac)
  tail call void @dissector_add_uint(ptr noundef @.str.3, i32 noundef 289, ptr noundef %i.ad)
  %i.ae = load i32, ptr @proto_ubx, align 4
  %i.af = tail call ptr @create_dissector_handle(ptr noundef @dissect_ubx_nav_velecef, i32 noundef %i.ae)
  tail call void @dissector_add_uint(ptr noundef @.str.3, i32 noundef 273, ptr noundef %i.af)
  %i.ag = load i32, ptr @proto_ubx, align 4
  %i.ah = tail call ptr @create_dissector_handle(ptr noundef @dissect_ubx_rxm_measx, i32 noundef %i.ag)
  tail call void @dissector_add_uint(ptr noundef @.str.3, i32 noundef 532, ptr noundef %i.ah)
  %i.ai = load i32, ptr @proto_ubx, align 4
  %i.aj = tail call ptr @create_dissector_handle(ptr noundef @dissect_ubx_rxm_rawx, i32 noundef %i.ai)
  tail call void @dissector_add_uint(ptr noundef @.str.3, i32 noundef 533, ptr noundef %i.aj)
  %i.ak = load i32, ptr @proto_ubx, align 4
  %i.al = tail call ptr @create_dissector_handle(ptr noundef @dissect_ubx_rxm_sfrbx, i32 noundef %i.ak)
  tail call void @dissector_add_uint(ptr noundef @.str.3, i32 noundef 531, ptr noundef %i.al)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare void @dissector_add_uint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare ptr @create_dissector_handle(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_ubx_ack_ack(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr nofree readnone captures(none) %3) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  tail call void @col_set_str(ptr noundef %i.b, i32 noundef 35, ptr noundef @.str.8)
  %i.c = load ptr, ptr %i.a, align 8
  tail call void @col_clear(ptr noundef %i.c, i32 noundef 25)
  %i.d = load i32, ptr @hf_ubx_ack_ack, align 4
  %i.e = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.d, ptr noundef %0, i32 noundef 0, i32 noundef 2, i32 noundef 0)
  %i.f = load i32, ptr @ett_ubx_ack_ack, align 4
  %i.g = tail call ptr @proto_item_add_subtree(ptr noundef %i.e, i32 noundef %i.f)
  %i.h = load i32, ptr @hf_ubx_ack_ack_msg_class_id, align 4
  %i.i = tail call ptr @proto_tree_add_item(ptr noundef %i.g, i32 noundef %i.h, ptr noundef %0, i32 noundef 0, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.j = tail call i32 @tvb_captured_length(ptr noundef %0)
  ret i32 %i.j
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_ubx_ack_nak(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr nofree readnone captures(none) %3) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  tail call void @col_set_str(ptr noundef %i.b, i32 noundef 35, ptr noundef @.str.11)
  %i.c = load ptr, ptr %i.a, align 8
  tail call void @col_clear(ptr noundef %i.c, i32 noundef 25)
  %i.d = load i32, ptr @hf_ubx_ack_nak, align 4
  %i.e = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.d, ptr noundef %0, i32 noundef 0, i32 noundef 2, i32 noundef 0)
  %i.f = load i32, ptr @ett_ubx_ack_nak, align 4
  %i.g = tail call ptr @proto_item_add_subtree(ptr noundef %i.e, i32 noundef %i.f)
  %i.h = load i32, ptr @hf_ubx_ack_nak_msg_class_id, align 4
  %i.i = tail call ptr @proto_tree_add_item(ptr noundef %i.g, i32 noundef %i.h, ptr noundef %0, i32 noundef 0, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.j = tail call i32 @tvb_captured_length(ptr noundef %0)
  ret i32 %i.j
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_ubx_cfg_gnss(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr nofree readnone captures(none) %3) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  tail call void @col_set_str(ptr noundef %i.b, i32 noundef 35, ptr noundef @.str.14)
  %i.c = load ptr, ptr %i.a, align 8
  tail call void @col_clear(ptr noundef %i.c, i32 noundef 25)
  %i.d = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 3) ; 3 uses
  %i.e = load i32, ptr @hf_ubx_cfg_gnss, align 4
  %i.f = zext i8 %i.d to i32
  %i.g = shl nuw nsw i32 %i.f, 3
  %i.h = or disjoint i32 %i.g, 4
  %i.i = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.e, ptr noundef %0, i32 noundef 0, i32 noundef %i.h, i32 noundef 0)
  %i.j = load i32, ptr @ett_ubx_cfg_gnss, align 4
  %i.k = tail call ptr @proto_item_add_subtree(ptr noundef %i.i, i32 noundef %i.j) ; 5 uses
  %i.l = load i32, ptr @hf_ubx_cfg_gnss_version, align 4
  %i.m = tail call ptr @proto_tree_add_item(ptr noundef %i.k, i32 noundef %i.l, ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.n = load i32, ptr @hf_ubx_cfg_gnss_numtrkchhw, align 4
  %i.o = tail call ptr @proto_tree_add_item(ptr noundef %i.k, i32 noundef %i.n, ptr noundef %0, i32 noundef 1, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.p = load i32, ptr @hf_ubx_cfg_gnss_numtrkchuse, align 4
  %i.q = tail call ptr @proto_tree_add_item(ptr noundef %i.k, i32 noundef %i.p, ptr noundef %0, i32 noundef 2, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.r = load i32, ptr @hf_ubx_cfg_gnss_numconfigblocks, align 4
  %i.s = tail call ptr @proto_tree_add_item(ptr noundef %i.k, i32 noundef %i.r, ptr noundef %0, i32 noundef 3, i32 noundef 1, i32 noundef 0) ; 0 uses
  %.not = icmp eq i8 %i.d, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext i8 %i.d to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %i.t = trunc nuw i64 %indvars.iv to i32
  %i.u = shl nuw nsw i32 %i.t, 3                  ; 5 uses
  %i.v = or disjoint i32 %i.u, 4                  ; 3 uses
  %i.w = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.v) ; 3 uses
  %i.x = or disjoint i32 %i.u, 5                  ; 2 uses
  %i.y = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.x)
  %i.z = or disjoint i32 %i.u, 6                  ; 2 uses
  %i.aa = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.z)
  %i.ab = getelementptr [4 x i8], ptr @ett_ubx_cfg_gnss_block, i64 %indvars.iv
  %i.ac = load i32, ptr %i.ab, align 4
  %i.ad = zext i8 %i.w to i32
  %i.ae = tail call ptr @val_to_str_const(i32 noundef %i.ad, ptr noundef @UBX_GNSS_ID, ptr noundef @.str.899)
  %i.af = zext i8 %i.y to i32
  %i.ag = zext i8 %i.aa to i32
  %i.ah = tail call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef %i.k, ptr noundef %0, i32 noundef %i.v, i32 noundef 8, i32 noundef %i.ac, ptr noundef null, ptr noundef @.str.898, ptr noundef %i.ae, i32 noundef %i.af, i32 noundef %i.ag) ; 6 uses
  %i.ai = load i32, ptr @hf_ubx_cfg_gnss_blk_gnssid, align 4
  %i.aj = tail call ptr @proto_tree_add_item(ptr noundef %i.ah, i32 noundef %i.ai, ptr noundef %0, i32 noundef %i.v, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ak = load i32, ptr @hf_ubx_cfg_gnss_blk_restrkch, align 4
  %i.al = tail call ptr @proto_tree_add_item(ptr noundef %i.ah, i32 noundef %i.ak, ptr noundef %0, i32 noundef %i.x, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.am = load i32, ptr @hf_ubx_cfg_gnss_blk_maxtrkch, align 4
  %i.an = tail call ptr @proto_tree_add_item(ptr noundef %i.ah, i32 noundef %i.am, ptr noundef %0, i32 noundef %i.z, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ao = load i32, ptr @hf_ubx_cfg_gnss_blk_reserved1, align 4
  %i.ap = or disjoint i32 %i.u, 7
  %i.aq = tail call ptr @proto_tree_add_item(ptr noundef %i.ah, i32 noundef %i.ao, ptr noundef %0, i32 noundef %i.ap, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ar = load i32, ptr @hf_ubx_cfg_gnss_blk_enable, align 4
  %i.as = add nuw nsw i32 %i.u, 8                 ; 2 uses
  %i.at = tail call ptr @proto_tree_add_item(ptr noundef %i.ah, i32 noundef %i.ar, ptr noundef %0, i32 noundef %i.as, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.au = icmp ult i8 %i.w, 7
  br i1 %i.au, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %.lr.ph
  %i.av = zext nneg i8 %i.w to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.dissect_ubx_cfg_gnss, i64 %i.av
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %switch.lookup
  %.0.in = phi ptr [ %switch.load, %switch.lookup ], [ @hf_ubx_cfg_gnss_blk_sigcfgmask, %.lr.ph ]
  %.0 = load i32, ptr %.0.in, align 4
  %i.aw = tail call ptr @proto_tree_add_item(ptr noundef %i.ah, i32 noundef %.0, ptr noundef %0, i32 noundef %i.as, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
end_hunk_0
begin_hunk_1_@dissect_ubx_rxm_measx:bb.a
  %i.an = load i32, ptr @hf_ubx_rxm_measx_reserved4, align 4
  %i.ao = tail call ptr @proto_tree_add_item(ptr noundef %i.k, i32 noundef %i.an, ptr noundef %0, i32 noundef 36, i32 noundef 8, i32 noundef -2147483648) ; 0 uses
  %.not = icmp eq i8 %i.d, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext i8 %i.d to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 3 uses
  %i.ap = mul nuw nsw i64 %indvars.iv, 24         ; 12 uses
  %i.aq = trunc i64 %i.ap to i32
  %i.ar = add i32 %i.aq, 44                       ; 3 uses
  %i.as = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.ar)
  %i.at = trunc i64 %i.ap to i32
  %i.au = add i32 %i.at, 45                       ; 2 uses
  %i.av = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.au)
  %i.aw = trunc i64 %i.ap to i32
  %i.ax = add i32 %i.aw, 46                       ; 2 uses
  %i.ay = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.ax)
  %i.az = getelementptr [4 x i8], ptr @ett_ubx_rxm_measx_meas, i64 %indvars.iv
  %i.ba = load i32, ptr %i.az, align 4
  %i.bb = zext i8 %i.as to i32
  %i.bc = tail call ptr @val_to_str_const(i32 noundef %i.bb, ptr noundef @UBX_GNSS_ID, ptr noundef @.str.899)
  %i.bd = zext i8 %i.av to i32
  %i.be = zext i8 %i.ay to i32
  %i.bf = tail call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef %i.k, ptr noundef %0, i32 noundef %i.ar, i32 noundef 24, i32 noundef %i.ba, ptr noundef null, ptr noundef @.str.906, ptr noundef %i.bc, i32 noundef %i.bd, i32 noundef %i.be) ; 12 uses
  %i.bg = load i32, ptr @hf_ubx_rxm_measx_gnssid, align 4
  %i.bh = tail call ptr @proto_tree_add_item(ptr noundef %i.bf, i32 noundef %i.bg, ptr noundef %0, i32 noundef %i.ar, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.bi = load i32, ptr @hf_ubx_rxm_measx_svid, align 4
  %i.bj = tail call ptr @proto_tree_add_item(ptr noundef %i.bf, i32 noundef %i.bi, ptr noundef %0, i32 noundef %i.au, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.bk = load i32, ptr @hf_ubx_rxm_measx_cn0, align 4
  %i.bl = tail call ptr @proto_tree_add_item(ptr noundef %i.bf, i32 noundef %i.bk, ptr noundef %0, i32 noundef %i.ax, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.bm = load i32, ptr @hf_ubx_rxm_measx_mpathindic, align 4
  %i.bn = trunc i64 %i.ap to i32
  %i.bo = add i32 %i.bn, 47
  %i.bp = tail call ptr @proto_tree_add_item(ptr noundef %i.bf, i32 noundef %i.bm, ptr noundef %0, i32 noundef %i.bo, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.bq = load i32, ptr @hf_ubx_rxm_measx_dopplerms, align 4
  %i.br = trunc i64 %i.ap to i32
  %i.bs = add i32 %i.br, 48
  %i.bt = tail call ptr @proto_tree_add_item(ptr noundef %i.bf, i32 noundef %i.bq, ptr noundef %0, i32 noundef %i.bs, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.bu = load i32, ptr @hf_ubx_rxm_measx_dopplerhz, align 4
  %i.bv = trunc i64 %i.ap to i32
  %i.bw = add i32 %i.bv, 52
  %i.bx = tail call ptr @proto_tree_add_item(ptr noundef %i.bf, i32 noundef %i.bu, ptr noundef %0, i32 noundef %i.bw, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.by = load i32, ptr @hf_ubx_rxm_measx_wholechips, align 4
  %i.bz = trunc i64 %i.ap to i32
  %i.ca = add i32 %i.bz, 56
  %i.cb = tail call ptr @proto_tree_add_item(ptr noundef %i.bf, i32 noundef %i.by, ptr noundef %0, i32 noundef %i.ca, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.cc = load i32, ptr @hf_ubx_rxm_measx_fracchips, align 4
  %i.cd = trunc i64 %i.ap to i32
  %i.ce = add i32 %i.cd, 58
  %i.cf = tail call ptr @proto_tree_add_item(ptr noundef %i.bf, i32 noundef %i.cc, ptr noundef %0, i32 noundef %i.ce, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.cg = load i32, ptr @hf_ubx_rxm_measx_codephase, align 4
  %i.ch = trunc i64 %i.ap to i32
  %i.ci = add i32 %i.ch, 60
  %i.cj = tail call ptr @proto_tree_add_item(ptr noundef %i.bf, i32 noundef %i.cg, ptr noundef %0, i32 noundef %i.ci, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.ck = load i32, ptr @hf_ubx_rxm_measx_intcodephase, align 4
  %i.cl = trunc i64 %i.ap to i32
  %i.cm = add i32 %i.cl, 64
  %i.cn = tail call ptr @proto_tree_add_item(ptr noundef %i.bf, i32 noundef %i.ck, ptr noundef %0, i32 noundef %i.cm, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.co = load i32, ptr @hf_ubx_rxm_measx_pseurangermserr, align 4
  %i.cp = trunc i64 %i.ap to i32
  %i.cq = add i32 %i.cp, 65
  %i.cr = tail call ptr @proto_tree_add_item(ptr noundef %i.bf, i32 noundef %i.co, ptr noundef %0, i32 noundef %i.cq, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.cs = load i32, ptr @hf_ubx_rxm_measx_reserved5, align 4
  %i.ct = trunc i64 %i.ap to i32
  %i.cu = add i32 %i.ct, 66
  %i.cv = tail call ptr @proto_tree_add_item(ptr noundef %i.bf, i32 noundef %i.cs, ptr noundef %0, i32 noundef %i.cu, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !22

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.cw = tail call i32 @tvb_captured_length(ptr noundef %0)
  ret i32 %i.cw
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_ubx_rxm_rawx(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr nofree readnone captures(none) %3) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  tail call void @col_set_str(ptr noundef %i.b, i32 noundef 35, ptr noundef @.str.555)
  %i.c = load ptr, ptr %i.a, align 8
  tail call void @col_clear(ptr noundef %i.c, i32 noundef 25)
  %i.d = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 11) ; 3 uses
  %i.e = zext i8 %i.d to i32
  %i.f = load i32, ptr @hf_ubx_rxm_rawx, align 4
  %i.g = shl nuw nsw i32 %i.e, 5
  %i.h = or disjoint i32 %i.g, 16
  %i.i = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.f, ptr noundef %0, i32 noundef 0, i32 noundef %i.h, i32 noundef 0)
  %i.j = load i32, ptr @ett_ubx_rxm_rawx, align 4
  %i.k = tail call ptr @proto_item_add_subtree(ptr noundef %i.i, i32 noundef %i.j) ; 8 uses
  %i.l = load i32, ptr @hf_ubx_rxm_rawx_rcvtow, align 4
  %i.m = tail call ptr @proto_tree_add_item(ptr noundef %i.k, i32 noundef %i.l, ptr noundef %0, i32 noundef 0, i32 noundef 8, i32 noundef -2147483648) ; 0 uses
  %i.n = load i32, ptr @hf_ubx_rxm_rawx_week, align 4
  %i.o = tail call ptr @proto_tree_add_item(ptr noundef %i.k, i32 noundef %i.n, ptr noundef %0, i32 noundef 8, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.p = load i32, ptr @hf_ubx_rxm_rawx_leaps, align 4
  %i.q = tail call ptr @proto_tree_add_item(ptr noundef %i.k, i32 noundef %i.p, ptr noundef %0, i32 noundef 10, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.r = load i32, ptr @hf_ubx_rxm_rawx_nummeas, align 4
  %i.s = tail call ptr @proto_tree_add_item(ptr noundef %i.k, i32 noundef %i.r, ptr noundef %0, i32 noundef 11, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.t = load i32, ptr @hf_ubx_rxm_rawx_recstat, align 4
  %i.u = load i32, ptr @ett_ubx_rxm_rawx_recstat, align 4
  %i.v = tail call ptr @proto_tree_add_bitmask(ptr noundef %i.k, ptr noundef %0, i32 noundef 12, i32 noundef %i.t, i32 noundef %i.u, ptr noundef @ubx_rxm_rawx_recstat_fields, i32 noundef 0) ; 0 uses
  %i.w = load i32, ptr @hf_ubx_rxm_rawx_version, align 4
  %i.x = tail call ptr @proto_tree_add_item(ptr noundef %i.k, i32 noundef %i.w, ptr noundef %0, i32 noundef 13, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.y = load i32, ptr @hf_ubx_rxm_rawx_reserved1, align 4
  %i.z = tail call ptr @proto_tree_add_item(ptr noundef %i.k, i32 noundef %i.y, ptr noundef %0, i32 noundef 14, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %.not = icmp eq i8 %i.d, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext i8 %i.d to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 3 uses
  %i.aa = shl nuw nsw i64 %indvars.iv, 5          ; 14 uses
  %i.ab = trunc i64 %i.aa to i32
  %i.ac = add i32 %i.ab, 36                       ; 2 uses
  %i.ad = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.ac)
  %i.ae = trunc i64 %i.aa to i32
  %i.af = add i32 %i.ae, 37                       ; 2 uses
  %i.ag = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.af)
  %i.ah = trunc i64 %i.aa to i32
  %i.ai = add i32 %i.ah, 42                       ; 2 uses
  %i.aj = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.ai)
  %i.ak = getelementptr [4 x i8], ptr @ett_ubx_rxm_rawx_meas, i64 %indvars.iv
  %i.al = load i32, ptr %i.ak, align 4
  %i.am = zext i8 %i.ad to i32
  %i.an = tail call ptr @val_to_str_const(i32 noundef %i.am, ptr noundef @UBX_GNSS_ID, ptr noundef @.str.899)
  %i.ao = zext i8 %i.ag to i32
  %i.ap = zext i8 %i.aj to i32
  %i.aq = trunc i64 %i.aa to i32
  %i.ar = or disjoint i32 %i.aq, 16               ; 2 uses
  %i.as = tail call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef %i.k, ptr noundef %0, i32 noundef %i.ar, i32 noundef 32, i32 noundef %i.al, ptr noundef null, ptr noundef @.str.906, ptr noundef %i.an, i32 noundef %i.ao, i32 noundef %i.ap) ; 14 uses
  %i.at = load i32, ptr @hf_ubx_rxm_rawx_prmes, align 4
  %i.au = tail call ptr @proto_tree_add_item(ptr noundef %i.as, i32 noundef %i.at, ptr noundef %0, i32 noundef %i.ar, i32 noundef 8, i32 noundef -2147483648) ; 0 uses
  %i.av = load i32, ptr @hf_ubx_rxm_rawx_cpmes, align 4
  %i.aw = trunc i64 %i.aa to i32
  %i.ax = or disjoint i32 %i.aw, 24
  %i.ay = tail call ptr @proto_tree_add_item(ptr noundef %i.as, i32 noundef %i.av, ptr noundef %0, i32 noundef %i.ax, i32 noundef 8, i32 noundef -2147483648) ; 0 uses
  %i.az = load i32, ptr @hf_ubx_rxm_rawx_domes, align 4
  %i.ba = trunc i64 %i.aa to i32
  %i.bb = add i32 %i.ba, 32
  %i.bc = tail call ptr @proto_tree_add_item(ptr noundef %i.as, i32 noundef %i.az, ptr noundef %0, i32 noundef %i.bb, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.bd = load i32, ptr @hf_ubx_rxm_rawx_gnssid, align 4
  %i.be = tail call ptr @proto_tree_add_item(ptr noundef %i.as, i32 noundef %i.bd, ptr noundef %0, i32 noundef %i.ac, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.bf = load i32, ptr @hf_ubx_rxm_rawx_svid, align 4
  %i.bg = tail call ptr @proto_tree_add_item(ptr noundef %i.as, i32 noundef %i.bf, ptr noundef %0, i32 noundef %i.af, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.bh = load i32, ptr @hf_ubx_rxm_rawx_sigid, align 4
  %i.bi = trunc i64 %i.aa to i32
  %i.bj = add i32 %i.bi, 38
  %i.bk = tail call ptr @proto_tree_add_item(ptr noundef %i.as, i32 noundef %i.bh, ptr noundef %0, i32 noundef %i.bj, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.bl = load i32, ptr @hf_ubx_rxm_rawx_freqid, align 4
  %i.bm = trunc i64 %i.aa to i32
  %i.bn = add i32 %i.bm, 39
  %i.bo = tail call ptr @proto_tree_add_item(ptr noundef %i.as, i32 noundef %i.bl, ptr noundef %0, i32 noundef %i.bn, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.bp = load i32, ptr @hf_ubx_rxm_rawx_locktime, align 4
  %i.bq = trunc i64 %i.aa to i32
  %i.br = add i32 %i.bq, 40
  %i.bs = tail call ptr @proto_tree_add_item(ptr noundef %i.as, i32 noundef %i.bp, ptr noundef %0, i32 noundef %i.br, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.bt = load i32, ptr @hf_ubx_rxm_rawx_cn0, align 4
  %i.bu = tail call ptr @proto_tree_add_item(ptr noundef %i.as, i32 noundef %i.bt, ptr noundef %0, i32 noundef %i.ai, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.bv = load i32, ptr @hf_ubx_rxm_rawx_prstdev, align 4
  %i.bw = trunc i64 %i.aa to i32
  %i.bx = add i32 %i.bw, 43
  %i.by = tail call ptr @proto_tree_add_item(ptr noundef %i.as, i32 noundef %i.bv, ptr noundef %0, i32 noundef %i.bx, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.bz = load i32, ptr @hf_ubx_rxm_rawx_cpstdev, align 4
  %i.ca = trunc i64 %i.aa to i32
  %i.cb = add i32 %i.ca, 44
  %i.cc = tail call ptr @proto_tree_add_item(ptr noundef %i.as, i32 noundef %i.bz, ptr noundef %0, i32 noundef %i.cb, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.cd = load i32, ptr @hf_ubx_rxm_rawx_dostdev, align 4
  %i.ce = trunc i64 %i.aa to i32
  %i.cf = add i32 %i.ce, 45
  %i.cg = tail call ptr @proto_tree_add_item(ptr noundef %i.as, i32 noundef %i.cd, ptr noundef %0, i32 noundef %i.cf, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ch = load i32, ptr @hf_ubx_rxm_rawx_trkstat, align 4
  %i.ci = load i32, ptr @ett_ubx_rxm_rawx_trkstat, align 4
  %i.cj = trunc i64 %i.aa to i32
  %i.ck = add i32 %i.cj, 46
  %i.cl = tail call ptr @proto_tree_add_bitmask(ptr noundef %i.as, ptr noundef %0, i32 noundef %i.ck, i32 noundef %i.ch, i32 noundef %i.ci, ptr noundef @ubx_rxm_rawx_trkstat_fields, i32 noundef 0) ; 0 uses
  %i.cm = load i32, ptr @hf_ubx_rxm_rawx_reserved2, align 4
  %i.cn = trunc i64 %i.aa to i32
  %i.co = add i32 %i.cn, 47
  %i.cp = tail call ptr @proto_tree_add_item(ptr noundef %i.as, i32 noundef %i.cm, ptr noundef %0, i32 noundef %i.co, i32 noundef 1, i32 noundef 0) ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !23

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.cq = tail call i32 @tvb_captured_length(ptr noundef %0)
  ret i32 %i.cq
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_ubx_rxm_sfrbx(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree readnone captures(none) %3) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.b = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8
  tail call void @col_set_str(ptr noundef %i.c, i32 noundef 35, ptr noundef @.str.603)
  %i.d = load ptr, ptr %i.b, align 8
  tail call void @col_clear(ptr noundef %i.d, i32 noundef 25)
  %i.e = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 4) ; 3 uses
  %i.f = zext i8 %i.e to i32
  %i.g = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 6)
  %i.h = load i32, ptr @hf_ubx_rxm_sfrbx, align 4
  %i.i = shl nuw nsw i32 %i.f, 2                  ; 6 uses
  %i.j = add nuw nsw i32 %i.i, 8
  %i.k = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.h, ptr noundef %0, i32 noundef 0, i32 noundef %i.j, i32 noundef 0)
  %i.l = load i32, ptr @ett_ubx_rxm_sfrbx, align 4
  %i.m = tail call ptr @proto_item_add_subtree(ptr noundef %i.k, i32 noundef %i.l) ; 9 uses
  %i.n = load i32, ptr @hf_ubx_rxm_sfrbx_gnssid, align 4
  %i.o = call ptr @proto_tree_add_item_ret_uint(ptr noundef %i.m, i32 noundef %i.n, ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %i.a) ; 0 uses
  %i.p = load i32, ptr @hf_ubx_rxm_sfrbx_svid, align 4
  %i.q = call ptr @proto_tree_add_item(ptr noundef %i.m, i32 noundef %i.p, ptr noundef %0, i32 noundef 1, i32 noundef 1, i32 noundef 0) ; 0 uses
  switch i8 %i.g, label %bb.b [
    i8 1, label %.sink.split
    i8 2, label %.thread61
  ]

.thread61:                                        ; preds = %bb.a
  br label %.sink.split

.sink.split:                                      ; preds = %bb.a, %.thread61
  %hf_ubx_rxm_sfrbx_sigid.sink = phi ptr [ @hf_ubx_rxm_sfrbx_sigid, %.thread61 ], [ @hf_ubx_rxm_sfrbx_reserved1, %bb.a ]
  %hf_ubx_rxm_sfrbx_freqid.sink.ph = phi ptr [ @hf_ubx_rxm_sfrbx_chn, %.thread61 ], [ @hf_ubx_rxm_sfrbx_reserved2, %bb.a ]
  %hf_ubx_rxm_sfrbx_version.sink.ph = phi ptr [ @hf_ubx_rxm_sfrbx_reserved1, %.thread61 ], [ @hf_ubx_rxm_sfrbx_reserved3, %bb.a ]
  %i.r = load i32, ptr %hf_ubx_rxm_sfrbx_sigid.sink, align 4
  %i.s = call ptr @proto_tree_add_item(ptr noundef %i.m, i32 noundef %i.r, ptr noundef %0, i32 noundef 2, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.t = load i32, ptr @hf_ubx_rxm_sfrbx_freqid, align 4
  %i.u = call ptr @proto_tree_add_item(ptr noundef %i.m, i32 noundef %i.t, ptr noundef %0, i32 noundef 3, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.v = load i32, ptr @hf_ubx_rxm_sfrbx_numwords, align 4
  %i.w = call ptr @proto_tree_add_item(ptr noundef %i.m, i32 noundef %i.v, ptr noundef %0, i32 noundef 4, i32 noundef 1, i32 noundef 0) ; 0 uses
  br label %bb.b

bb.b:                                             ; preds = %.sink.split, %bb.a
  %hf_ubx_rxm_sfrbx_freqid.sink = phi ptr [ @hf_ubx_rxm_sfrbx_freqid, %bb.a ], [ %hf_ubx_rxm_sfrbx_freqid.sink.ph, %.sink.split ]
  %.sink69 = phi i32 [ 3, %bb.a ], [ 5, %.sink.split ]
  %hf_ubx_rxm_sfrbx_numwords.sink = phi ptr [ @hf_ubx_rxm_sfrbx_numwords, %bb.a ], [ @hf_ubx_rxm_sfrbx_version, %.sink.split ]
  %.sink68 = phi i32 [ 4, %bb.a ], [ 6, %.sink.split ]
  %hf_ubx_rxm_sfrbx_version.sink = phi ptr [ @hf_ubx_rxm_sfrbx_version, %bb.a ], [ %hf_ubx_rxm_sfrbx_version.sink.ph, %.sink.split ]
  %.sink67 = phi i32 [ 6, %bb.a ], [ 7, %.sink.split ]
  %i.x = load i32, ptr %hf_ubx_rxm_sfrbx_freqid.sink, align 4
  %i.y = call ptr @proto_tree_add_item(ptr noundef %i.m, i32 noundef %i.x, ptr noundef %0, i32 noundef %.sink69, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.z = load i32, ptr %hf_ubx_rxm_sfrbx_numwords.sink, align 4
  %i.aa = call ptr @proto_tree_add_item(ptr noundef %i.m, i32 noundef %i.z, ptr noundef %0, i32 noundef %.sink68, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ab = load i32, ptr %hf_ubx_rxm_sfrbx_version.sink, align 4
  %i.ac = call ptr @proto_tree_add_item(ptr noundef %i.m, i32 noundef %i.ab, ptr noundef %0, i32 noundef %.sink67, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ad = load i32, ptr @hf_ubx_rxm_sfrbx_dwrd, align 4
  %i.ae = call ptr @proto_tree_add_item(ptr noundef %i.m, i32 noundef %i.ad, ptr noundef %0, i32 noundef 8, i32 noundef %i.i, i32 noundef 0) ; 0 uses
  %i.af = load i32, ptr %i.a, align 4
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ah = call ptr @tvb_new_subset_length(ptr noundef %0, i32 noundef 8, i32 noundef %i.i)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.ai = getelementptr i8, ptr %1, i64 416
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = zext nneg i32 %i.i to i64
  %i.al = call noalias ptr @wmem_alloc(ptr noundef %i.aj, i64 noundef %i.ak) #9 ; 2 uses
  %.not65 = icmp eq i8 %i.e, 0
  br i1 %.not65, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.d
  %wide.trip.count = zext i8 %i.e to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.d
  %i.am = call ptr @tvb_new_child_real_data(ptr noundef %0, ptr noundef %i.al, i32 noundef %i.i, i32 noundef %i.i) ; 2 uses
  %i.an = call ptr @add_new_data_source(ptr noundef %1, ptr noundef %i.am, ptr noundef @.str.907) ; 0 uses
  br label %bb.e

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %i.ao = shl nuw nsw i64 %indvars.iv, 2          ; 2 uses
  %i.ap = getelementptr i8, ptr %i.al, i64 %i.ao
  %i.aq = trunc i64 %i.ao to i32
  %i.ar = add i32 %i.aq, 8
  %i.as = call i32 @tvb_get_uint32(ptr noundef %0, i32 noundef %i.ar, i32 noundef -2147483648)
  %4 = call i32 @llvm.bswap.i32(i32 %i.as)
  store i32 %4, ptr %i.ap, align 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !24

bb.e:                                             ; preds = %._crit_edge, %bb.c
  %.060 = phi ptr [ %i.ah, %bb.c ], [ %i.am, %._crit_edge ] ; 2 uses
  %i.at = load ptr, ptr @ubx_gnssid_dissector_table, align 8
  %i.au = load i32, ptr %i.a, align 4
  %i.av = call ptr @tvb_get_ptr(ptr noundef %0, i32 noundef 1, i32 noundef 1)
  %i.aw = call i32 @dissector_try_uint_with_data(ptr noundef %i.at, i32 noundef %i.au, ptr noundef %.060, ptr noundef %1, ptr noundef %2, i1 noundef zeroext true, ptr noundef %i.av)
  %.not = icmp eq i32 %i.aw, 0
  br i1 %.not, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ax = call i32 @call_data_dissector(ptr noundef %.060, ptr noundef %1, ptr noundef %2) ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ay = call i32 @tvb_captured_length(ptr noundef %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret i32 %i.ay
}

; Function Attrs: nofree null_pointer_is_valid
declare i32 @__snprintf_chk(ptr noundef, i64 noundef, i32 noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare void @col_set_str(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare void @col_clear(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare zeroext i16 @tvb_get_uint16(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_item(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare ptr @proto_item_add_subtree(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_item_ret_uint(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare ptr @tvb_memdup(ptr noundef, ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_checksum(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare ptr @tvb_new_subset_length(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare i32 @dissector_try_uint(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare i32 @call_data_dissector(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_captured_length(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare zeroext i8 @tvb_get_uint8(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_subtree_format(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare ptr @val_to_str_const(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_bitmask(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_subtree(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare signext i16 @tvb_get_int16(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare signext i8 @tvb_get_int8(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_get_int32(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_int64(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_get_uint32(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(1)
declare noalias ptr @wmem_alloc(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare ptr @tvb_new_child_real_data(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare ptr @add_new_data_source(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare i32 @dissector_try_uint_with_data(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare ptr @tvb_get_ptr(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #7

attributes #0 = { null_pointer_is_valid sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree null_pointer_is_valid sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { null_pointer_is_valid allocsize(1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind }
attributes #9 = { allocsize(1) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 8, !"cf-protection-return", i32 1}
!1 = !{i32 8, !"cf-protection-branch", i32 1}
!2 = !{i32 4, !"probe-stack", !"inline-asm"}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!6 = !{!"llvm.loop.mustprogress"}
!7 = distinct !{!7, !6, !13, !14}
!8 = distinct !{!8, !6, !13, !14}
!9 = distinct !{!9, !6, !13, !14}
!10 = distinct !{!10, !6, !13, !14}
!11 = distinct !{!11, !6, !13, !14}
!12 = distinct !{!12, !6, !13, !14}
!13 = !{!"llvm.loop.isvectorized", i32 1}
!14 = !{!"llvm.loop.unroll.runtime.disable"}
!15 = distinct !{!15, !6}
!16 = distinct !{!16, !17}
!17 = !{!"llvm.loop.unroll.disable"}
!18 = distinct !{!18, !6}
!19 = distinct !{!19, !6}
!20 = distinct !{!20, !6}
!21 = distinct !{!21, !6}
!22 = distinct !{!22, !6}
!23 = distinct !{!23, !6}
!24 = distinct !{!24, !6}
end_hunk_1
