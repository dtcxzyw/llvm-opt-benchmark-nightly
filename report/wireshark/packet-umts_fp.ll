Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-umts_fp?download=true
inline.NumInlined: 102
inline.NumDeleted: 45
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 10
begin_hunk_0_@heur_dissect_fp_unknown_format:bb.a
bb.j:                                             ; preds = %bb.i
  %i.ai = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 1)
  %i.aj = add i8 %i.ai, -1
  %or.cond = icmp ult i8 %i.aj, 15
  br i1 %or.cond, label %bb.k, label %check_control_frame_crc_for_heur.exit.thread

bb.k:                                             ; preds = %bb.j
  %i.ak = getelementptr i8, ptr %1, i64 416
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = tail call i32 @tvb_reported_length(ptr noundef %0) ; 2 uses
  %i.an = icmp eq i32 %i.am, 0
  br i1 %i.an, label %check_control_frame_crc_for_heur.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ao = tail call i32 @tvb_captured_length(ptr noundef %0)
  %i.ap = icmp ugt i32 %i.am, %i.ao
  br i1 %i.ap, label %check_control_frame_crc_for_heur.exit.thread, label %check_control_frame_crc_for_heur.exit

check_control_frame_crc_for_heur.exit:            ; preds = %bb.l
  %i.aq = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 0)
  %i.ar = tail call i32 @tvb_reported_length(ptr noundef %0)
  %i.as = zext i32 %i.ar to i64
  %i.at = tail call ptr @tvb_memdup(ptr noundef %i.al, ptr noundef %0, i32 noundef 0, i64 noundef %i.as) ; 3 uses
  %i.au = load i8, ptr %i.at, align 1
  %i.av = and i8 %i.au, 1
  store i8 %i.av, ptr %i.at, align 1
  %i.aw = tail call i32 @tvb_reported_length(ptr noundef %0)
  %i.ax = tail call zeroext i8 @crc7update(i8 noundef zeroext 0, ptr noundef %i.at, i32 noundef %i.aw)
  %.unshifted.i = xor i8 %i.ax, %i.aq
  %i.ay = icmp ult i8 %.unshifted.i, 2
  br i1 %i.ay, label %bb.m, label %check_control_frame_crc_for_heur.exit.thread

bb.m:                                             ; preds = %check_control_frame_crc_for_heur.exit
  %i.az = tail call ptr @wmem_file_scope()
  %i.ba = tail call noalias dereferenceable_or_null(132696) ptr @wmem_alloc0(ptr noundef %i.az, i64 noundef 132696) #12 ; 2 uses
  %i.bb = getelementptr i8, ptr %i.ba, i64 8
  store i32 0, ptr %i.bb, align 8
  tail call fastcc void @set_both_sides_umts_fp_conv_data(ptr noundef %1, ptr noundef %i.ba)
  br label %check_control_frame_crc_for_heur.exit.thread.sink.split

check_control_frame_crc_for_heur.exit.thread.sink.split: ; preds = %bb.g, %bb.c, %bb.m
  %i.bc = tail call fastcc i32 @dissect_fp_common(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef null) ; 0 uses
  br label %check_control_frame_crc_for_heur.exit.thread

check_control_frame_crc_for_heur.exit.thread:     ; preds = %check_control_frame_crc_for_heur.exit.thread.sink.split, %bb.k, %bb.l, %check_control_frame_crc_for_heur.exit, %bb.j, %bb.i, %bb.h, %bb.f, %bb.g, %bb.e, %bb.c
  %.0 = phi i1 [ false, %bb.g ], [ false, %check_control_frame_crc_for_heur.exit ], [ false, %bb.c ], [ false, %bb.e ], [ false, %bb.l ], [ false, %bb.f ], [ false, %bb.h ], [ false, %bb.i ], [ false, %bb.j ], [ false, %bb.k ], [ true, %check_control_frame_crc_for_heur.exit.thread.sink.split ]
  ret i1 %.0
}

; Function Attrs: null_pointer_is_valid
declare void @conversation_set_dissector(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc zeroext i1 @check_header_crc_for_heur(ptr noundef %0, i16 noundef zeroext %1) unnamed_addr #0 {
bb.a:
  %i.a = zext i16 %1 to i32                       ; 2 uses
  %i.b = tail call i32 @tvb_captured_length(ptr noundef %0)
  %i.c = icmp ult i32 %i.b, %i.a
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 0)
  %i.e = add nsw i32 %i.a, -1                     ; 2 uses
  %i.f = tail call ptr @tvb_get_ptr(ptr noundef %0, i32 noundef 1, i32 noundef %i.e)
  %i.g = tail call zeroext i8 @crc7update(i8 noundef zeroext 0, ptr noundef %i.f, i32 noundef %i.e)
  %.unshifted = xor i8 %i.g, %i.d
  %i.h = icmp ult i8 %.unshifted, 2
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i1 [ %i.h, %bb.b ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc zeroext i1 @check_payload_crc_for_heur(ptr noundef %0, i16 noundef zeroext %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @tvb_reported_length(ptr noundef %0) ; 3 uses
  %i.b = and i32 %i.a, 65535                      ; 2 uses
  %i.c = icmp samesign ult i32 %i.b, 2
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @tvb_captured_length(ptr noundef %0)
  %i.e = icmp ugt i32 %i.b, %i.d
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = shl i32 %i.a, 3
  %i.g = add i32 %i.f, 524272
  %i.h = and i32 %i.g, 524280
  %i.i = tail call zeroext i16 @tvb_get_bits16(ptr noundef %0, i32 noundef %i.h, i32 noundef 16, i32 noundef 0)
  %i.j = zext i16 %1 to i32
  %i.k = trunc i32 %i.a to i16
  %i.l = sub i16 %i.k, %1
  %i.m = add i16 %i.l, -2                         ; 2 uses
  %i.n = zext i16 %i.m to i32
  %i.o = tail call ptr @tvb_get_ptr(ptr noundef %0, i32 noundef %i.j, i32 noundef %i.n)
  %i.p = zext i16 %i.m to i64
  %i.q = tail call zeroext i16 @crc16_8005_noreflect_noxor(ptr noundef %i.o, i64 noundef %i.p)
  %i.r = icmp eq i16 %i.q, %i.i
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi i1 [ %i.r, %bb.c ], [ false, %bb.b ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: null_pointer_is_valid
declare ptr @conversation_new(i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @set_both_sides_umts_fp_conv_data(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 20         ; 4 uses
  %i.c = load i32, ptr %i.b, align 4
  %i.d = getelementptr i8, ptr %0, i64 184        ; 4 uses
  %i.e = getelementptr i8, ptr %0, i64 160        ; 4 uses
  %i.f = getelementptr i8, ptr %0, i64 284        ; 4 uses
  %i.g = load i32, ptr %i.f, align 4
  %i.h = tail call i32 @conversation_pt_to_conversation_type(i32 noundef %i.g)
  %i.i = getelementptr i8, ptr %0, i64 292        ; 4 uses
  %i.j = load i32, ptr %i.i, align 4
  %i.k = getelementptr i8, ptr %0, i64 288        ; 4 uses
  %i.l = load i32, ptr %i.k, align 8
  %i.m = tail call ptr @find_conversation(i32 noundef %i.c, ptr noundef %i.d, ptr noundef %i.e, i32 noundef %i.h, i32 noundef %i.j, i32 noundef %i.l, i32 noundef 65536) ; 2 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.o = load i32, ptr %i.b, align 4
  %i.p = load i32, ptr %i.f, align 4
  %i.q = tail call i32 @conversation_pt_to_conversation_type(i32 noundef %i.p)
  %i.r = load i32, ptr %i.i, align 4
  %i.s = load i32, ptr %i.k, align 8
  %i.t = tail call ptr @conversation_new(i32 noundef %i.o, ptr noundef %i.d, ptr noundef %i.e, i32 noundef %i.q, i32 noundef %i.r, i32 noundef %i.s, i32 noundef 1)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.031 = phi ptr [ %i.t, %bb.c ], [ %i.m, %bb.b ]
  %i.u = load i32, ptr @proto_fp, align 4
  tail call void @conversation_add_proto_data(ptr noundef %.031, i32 noundef %i.u, ptr noundef %1)
  %i.v = load i32, ptr %i.b, align 4
  %i.w = load i32, ptr %i.f, align 4
  %i.x = tail call i32 @conversation_pt_to_conversation_type(i32 noundef %i.w)
  %i.y = load i32, ptr %i.k, align 8
  %i.z = load i32, ptr %i.i, align 4
  %i.aa = tail call ptr @find_conversation(i32 noundef %i.v, ptr noundef %i.e, ptr noundef %i.d, i32 noundef %i.x, i32 noundef %i.y, i32 noundef %i.z, i32 noundef 65536) ; 2 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ac = load i32, ptr %i.b, align 4
  %i.ad = load i32, ptr %i.f, align 4
  %i.ae = tail call i32 @conversation_pt_to_conversation_type(i32 noundef %i.ad)
  %i.af = load i32, ptr %i.k, align 8
  %i.ag = load i32, ptr %i.i, align 4
  %i.ah = tail call ptr @conversation_new(i32 noundef %i.ac, ptr noundef %i.e, ptr noundef %i.d, i32 noundef %i.ae, i32 noundef %i.af, i32 noundef %i.ag, i32 noundef 1)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0 = phi ptr [ %i.ah, %bb.e ], [ %i.aa, %bb.d ]
  %i.ai = load i32, ptr @proto_fp, align 4
  tail call void @conversation_add_proto_data(ptr noundef %.0, i32 noundef %i.ai, ptr noundef %1)
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.f
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc i32 @generate_ue_id_for_heur(ptr nofree noundef readonly captures(none) %0) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 284
  %i.b = load i32, ptr %i.a, align 4
  %i.c = icmp eq i32 %i.b, 3
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 208
  %i.e = load i32, ptr %i.d, align 8
  %i.f = icmp eq i32 %i.e, 2
  br i1 %i.f, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr i8, ptr %0, i64 232
  %i.h = load i32, ptr %i.g, align 8
  %i.i = icmp eq i32 %i.h, 2
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr i8, ptr %0, i64 216
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = load i32, ptr %i.k, align 1
  %i.m = tail call i32 @llvm.bswap.i32(i32 %i.l)
  %i.n = getelementptr i8, ptr %0, i64 288
  %1 = load i32, ptr %i.n, align 8                ; 2 uses
  %2 = shl i32 %1, 16
  %3 = or i32 %2, %1
  %i.o = getelementptr i8, ptr %0, i64 240
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = load i32, ptr %i.p, align 1
  %i.r = tail call i32 @llvm.bswap.i32(i32 %i.q)
  %4 = getelementptr i8, ptr %0, i64 292
  %5 = load i32, ptr %4, align 4                  ; 2 uses
  %6 = shl i32 %5, 16
  %7 = or i32 %6, %5
  %8 = xor i32 %i.m, %3
  %i.s = xor i32 %8, %7
  %i.t = xor i32 %i.s, %i.r
  br label %bb.f

bb.e:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.u = getelementptr i8, ptr %0, i64 20
  %i.v = load i32, ptr %i.u, align 4
  %i.w = xor i32 %i.v, -1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0 = phi i32 [ %i.t, %bb.d ], [ %i.w, %bb.e ]
  ret i32 %.0
}

; Function Attrs: inlinehint null_pointer_is_valid sspstrong uwtable
define internal fastcc void @copy_address_wmem(ptr noundef %0, ptr nofree noundef writeonly captures(none) initializes((0, 24)) %1, ptr nofree noundef readonly captures(none) %2) unnamed_addr #7 {
bb.a:
  %i.a = load i32, ptr %2, align 8
  %i.b = getelementptr i8, ptr %2, i64 4
  %i.c = load i32, ptr %i.b, align 4              ; 3 uses
  %i.d = getelementptr i8, ptr %2, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  store i32 %i.a, ptr %1, align 8
  %i.f = icmp eq i32 %i.c, 0
  br i1 %i.f, label %alloc_address_wmem.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = sext i32 %i.c to i64
  %i.h = tail call ptr @wmem_memdup(ptr noundef %0, ptr noundef %i.e, i64 noundef %i.g) #15 ; 2 uses
  %i.i = getelementptr i8, ptr %1, i64 16
  store ptr %i.h, ptr %i.i, align 8
  %i.j = getelementptr i8, ptr %1, i64 8
  store ptr %i.h, ptr %i.j, align 8
  %i.k = getelementptr i8, ptr %1, i64 4
  store i32 %i.c, ptr %i.k, align 4
  br label %alloc_address_wmem.exit

alloc_address_wmem.exit:                          ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: null_pointer_is_valid
declare ptr @find_or_create_conversation(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @tvb_get_ptr(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare zeroext i16 @tvb_get_bits16(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare ptr @wmem_memdup(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare ptr @wmem_tree_new_autoreset(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @wmem_epan_scope() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @fill_pch_conversation_info_for_heur(ptr nofree noundef writeonly captures(none) initializes((0, 50), (56, 60), (64, 76), (1104, 1108), (1368, 1372), (132684, 132685)) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  store i32 0, ptr %0, align 8
  %i.a = getelementptr i8, ptr %0, i64 4
  store i32 1, ptr %i.a, align 4
  %i.b = getelementptr i8, ptr %1, i64 20         ; 2 uses
  %i.c = load i32, ptr %i.b, align 4              ; 2 uses
  %i.d = getelementptr i8, ptr %0, i64 16
  store i32 %i.c, ptr %i.d, align 8
  %i.e = getelementptr i8, ptr %0, i64 20
  store i32 %i.c, ptr %i.e, align 4
  %i.f = getelementptr i8, ptr %0, i64 132684
  store i8 1, ptr %i.f, align 4
  %i.g = getelementptr i8, ptr %1, i64 284
  %i.h = load i32, ptr %i.g, align 4
  %i.i = icmp eq i32 %i.h, 3
  br i1 %i.i, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr i8, ptr %1, i64 208
  %i.k = load i32, ptr %i.j, align 8
  %i.l = icmp eq i32 %i.k, 2
  br i1 %i.l, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr i8, ptr %1, i64 232
  %i.n = load i32, ptr %i.m, align 8
  %i.o = icmp eq i32 %i.n, 2
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr i8, ptr %1, i64 216
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = load i32, ptr %i.q, align 1
  %i.s = tail call i32 @llvm.bswap.i32(i32 %i.r)
  %i.t = getelementptr i8, ptr %1, i64 288
  %2 = load i32, ptr %i.t, align 8                ; 2 uses
  %3 = shl i32 %2, 16
  %4 = or i32 %3, %2
  %i.u = getelementptr i8, ptr %1, i64 240
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = load i32, ptr %i.v, align 1
  %i.x = tail call i32 @llvm.bswap.i32(i32 %i.w)
  %5 = getelementptr i8, ptr %1, i64 292
  %6 = load i32, ptr %5, align 4                  ; 2 uses
  %7 = shl i32 %6, 16
  %8 = or i32 %7, %6
  %9 = xor i32 %i.s, %4
  %i.y = xor i32 %9, %8
  %i.z = xor i32 %i.y, %i.x
  br label %generate_ue_id_for_heur.exit

bb.e:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.aa = load i32, ptr %i.b, align 4
  %i.ab = xor i32 %i.aa, -1
  br label %generate_ue_id_for_heur.exit

generate_ue_id_for_heur.exit:                     ; preds = %bb.d, %bb.e
  %.0.i = phi i32 [ %i.z, %bb.d ], [ %i.ab, %bb.e ]
  %i.ac = getelementptr i8, ptr %0, i64 56
  store i32 %.0.i, ptr %i.ac, align 8
  %i.ad = getelementptr i8, ptr %0, i64 12
  store i32 3, ptr %i.ad, align 4
  %i.ae = tail call ptr @wmem_file_scope()
  %i.af = getelementptr i8, ptr %0, i64 24        ; 2 uses
  %i.ag = getelementptr i8, ptr %1, i64 208
  %i.ah = load i32, ptr %i.ag, align 8
  %i.ai = getelementptr i8, ptr %1, i64 212
  %i.aj = load i32, ptr %i.ai, align 4            ; 3 uses
  %i.ak = getelementptr i8, ptr %1, i64 216
  %i.al = load ptr, ptr %i.ak, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(24) %i.af, i8 0, i64 24, i1 false)
  store i32 %i.ah, ptr %i.af, align 8
  %i.am = icmp eq i32 %i.aj, 0
  br i1 %i.am, label %copy_address_wmem.exit, label %bb.f

bb.f:                                             ; preds = %generate_ue_id_for_heur.exit
  %i.an = sext i32 %i.aj to i64
  %i.ao = tail call ptr @wmem_memdup(ptr noundef %i.ae, ptr noundef %i.al, i64 noundef %i.an) #15 ; 2 uses
  %i.ap = getelementptr i8, ptr %0, i64 40
  store ptr %i.ao, ptr %i.ap, align 8
  %i.aq = getelementptr i8, ptr %0, i64 32
  store ptr %i.ao, ptr %i.aq, align 8
  %i.ar = getelementptr i8, ptr %0, i64 28
  store i32 %i.aj, ptr %i.ar, align 4
  br label %copy_address_wmem.exit

copy_address_wmem.exit:                           ; preds = %generate_ue_id_for_heur.exit, %bb.f
  %i.as = getelementptr i8, ptr %1, i64 288
  %i.at = load i32, ptr %i.as, align 8
  %i.au = trunc i32 %i.at to i16
  %i.av = getelementptr i8, ptr %0, i64 48
  store i16 %i.au, ptr %i.av, align 8
  %i.aw = getelementptr i8, ptr %0, i64 8
  store i32 9, ptr %i.aw, align 8
  %i.ax = getelementptr i8, ptr %0, i64 72
  store i32 1, ptr %i.ax, align 8
  %i.ay = getelementptr i8, ptr %0, i64 1104
  store i32 1, ptr %i.ay, align 8
  %i.az = getelementptr i8, ptr %0, i64 1368
  store i32 1, ptr %i.az, align 8
  %i.ba = tail call ptr @wmem_file_scope()
  %i.bb = tail call noalias dereferenceable_or_null(16) ptr @wmem_alloc0(ptr noundef %i.ba, i64 noundef 16) #12
  %i.bc = getelementptr i8, ptr %0, i64 64
  store ptr %i.bb, ptr %i.bc, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare zeroext i16 @tvb_get_uint16(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #4

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc zeroext i1 @check_edch_header_crc_for_heur(ptr noundef %0, ptr noundef %1, i16 noundef zeroext %2) unnamed_addr #0 {
bb.a:
  %i.a = zext i16 %2 to i32                       ; 2 uses
  %i.b = tail call i32 @tvb_captured_length(ptr noundef %1)
  %i.c = icmp ult i32 %i.b, %i.a
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call zeroext i8 @tvb_get_bits8(ptr noundef %1, i32 noundef 0, i32 noundef 7)
  %i.e = zext i8 %i.d to i32
  %i.f = shl nuw nsw i32 %i.e, 4
  %i.g = tail call zeroext i8 @tvb_get_bits8(ptr noundef %1, i32 noundef 8, i32 noundef 4)
  %i.h = zext i8 %i.g to i32
  %i.i = add nuw nsw i32 %i.f, %i.h
  %i.j = add nsw i32 %i.a, -1
  %i.k = sext i32 %i.j to i64                     ; 2 uses
  %i.l = tail call ptr @tvb_memdup(ptr noundef %0, ptr noundef %1, i32 noundef 1, i64 noundef %i.k) ; 3 uses
  %i.m = load i8, ptr %i.l, align 1
  %i.n = and i8 %i.m, 15
  store i8 %i.n, ptr %i.l, align 1
  %i.o = tail call zeroext i16 @crc11_307_noreflect_noxor(ptr noundef %i.l, i64 noundef %i.k)
  %i.p = zext i16 %i.o to i32
  %i.q = icmp eq i32 %i.i, %i.p
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i1 [ %i.q, %bb.b ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #4

attributes #0 = { null_pointer_is_valid sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { null_pointer_is_valid allocsize(1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { noreturn null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { inlinehint null_pointer_is_valid sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { allocsize(1) }
attributes #13 = { nounwind }
attributes #14 = { noreturn }
attributes #15 = { allocsize(2) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 8, !"cf-protection-return", i32 1}
!1 = !{i32 8, !"cf-protection-branch", i32 1}
!2 = !{i32 4, !"probe-stack", !"inline-asm"}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!6 = !{!"llvm.loop.mustprogress"}
!7 = !{i8 0, i8 2}
!8 = !{}
!9 = !{!"llvm.loop.peeled.count", i32 1}
!10 = !{!"llvm.loop.unroll.disable"}
!11 = !{!"llvm.loop.unswitch.partial.disable"}
!12 = !{!"llvm.loop.unroll.runtime.disable"}
!13 = !{!"llvm.loop.isvectorized", i32 1}
!14 = distinct !{!14, !6}
!15 = distinct !{!15, !6}
!16 = distinct !{!16, !6}
!17 = distinct !{!17, !6}
!18 = distinct !{!18, !6}
!19 = distinct !{!19, !6}
!20 = distinct !{!20, !6, !9}
!21 = distinct !{!21, !6}
!22 = distinct !{!22, !6}
!23 = distinct !{!23, !6}
!24 = distinct !{!24, !10}
!25 = distinct !{!25, !6, !11}
!26 = distinct !{!26, !6}
!27 = distinct !{!27, !6}
!28 = distinct !{!28, !6, !11}
!29 = distinct !{!29, !6}
!30 = distinct !{!30, !6}
!31 = distinct !{!31, !6}
!32 = distinct !{!32, !6}
!33 = distinct !{!33, !6}
!34 = distinct !{!34, !6}
!35 = distinct !{!35, !6}
!36 = distinct !{!36, !9}
!37 = distinct !{!37, !6}
!38 = distinct !{!38, !6}
!39 = distinct !{!39, !6, !12, !13}
!40 = distinct !{!40, !6}
!41 = distinct !{!41, !6}
!42 = distinct !{!42, !6, !12, !13}
!43 = distinct !{!43, !6}
!44 = distinct !{!44, !6}
!45 = distinct !{!45, !6}
!46 = distinct !{!46, !6}
!47 = distinct !{!47, !6}
!48 = distinct !{!48, !6}
!49 = distinct !{!49, !6}
!50 = distinct !{!50, !6}
!51 = distinct !{!51, !6}
!52 = distinct !{!52, !10}
!53 = distinct !{!53, !6}
!54 = distinct !{!54, !6}
!55 = distinct !{!55, !6}
!56 = distinct !{!56, !10}
!57 = distinct !{!57, !6, !13, !12}
!58 = distinct !{!58, !6, !12, !13}
!59 = distinct !{!59, !6}
!60 = distinct !{!60, !6}
!61 = distinct !{!61, !6}
!62 = distinct !{!62, !6}
end_hunk_0
