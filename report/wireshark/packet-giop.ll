Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-giop?download=true
inline.NumInlined: 128
inline.NumDeleted: 21
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 11
begin_hunk_0_@dissect_giop:bb.a
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal noundef zeroext i1 @dissect_giop_heur(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
bb.a:
  %i.a = tail call i32 @tvb_captured_length(ptr noundef %0)
  %i.b = icmp ult i32 %i.a, 12
  br i1 %i.b, label %dissect_giop_tcp.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @tvb_get_ntohl(ptr noundef %0, i32 noundef 0)
  %.not = icmp eq i32 %i.c, 1195986768
  br i1 %.not, label %bb.c, label %dissect_giop_tcp.exit

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr i8, ptr %1, i64 284
  %i.e = load i32, ptr %i.d, align 4
  %i.f = icmp eq i32 %i.e, 2
  br i1 %i.f, label %bb.d, label %bb.j

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr i8, ptr %1, i64 80
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = getelementptr i8, ptr %i.h, i64 53
  %i.j = load i16, ptr %i.i, align 1
  %i.k = and i16 %i.j, 8
  %.not15 = icmp eq i16 %i.k, 0
  br i1 %.not15, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.l = tail call ptr @find_or_create_conversation(ptr noundef %1)
  %i.m = load ptr, ptr @giop_tcp_handle, align 8
  tail call void @conversation_set_dissector(ptr noundef %i.l, ptr noundef %i.m)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.n = tail call i32 @tvb_get_ntohl(ptr noundef %0, i32 noundef 0)
  %.not.i = icmp eq i32 %i.n, 1195986768
  br i1 %.not.i, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = tail call i32 @tvb_memeql(ptr noundef %0, i32 noundef 0, ptr noundef nonnull @.str.567, i64 noundef 4)
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %bb.h, label %.sink.split.i

bb.h:                                             ; preds = %bb.g
  %i.q = tail call zeroext i1 @dissect_ziop_heur(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef null)
  br i1 %i.q, label %.sink.split.i, label %dissect_giop_tcp.exit

bb.i:                                             ; preds = %bb.f
  %i.r = load i8, ptr @giop_desegment, align 1, !range !11, !noundef !12
  %i.s = trunc nuw i8 %i.r to i1
  tail call void @tcp_dissect_pdus(ptr noundef %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext %i.s, i32 noundef 12, ptr noundef nonnull @get_giop_pdu_len, ptr noundef nonnull @dissect_giop_common, ptr noundef %3)
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.i, %bb.h, %bb.g
  %i.t = tail call i32 @tvb_captured_length(ptr noundef %0) ; 0 uses
  br label %dissect_giop_tcp.exit

bb.j:                                             ; preds = %bb.c
  %i.u = tail call i32 @dissect_giop_common(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr poison) ; 0 uses
  br label %dissect_giop_tcp.exit

dissect_giop_tcp.exit:                            ; preds = %.sink.split.i, %bb.h, %bb.j, %bb.b, %bb.a
  %.0 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ true, %bb.j ], [ true, %bb.h ], [ true, %.sink.split.i ]
  ret i1 %.0
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @proto_register_giop() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @proto_register_protocol(ptr noundef nonnull @.str.209, ptr noundef nonnull @.str.210, ptr noundef nonnull @.str.211) ; 2 uses
  store i32 %i.a, ptr @proto_giop, align 4
  %i.b = tail call ptr @register_dissector(ptr noundef nonnull @.str.211, ptr noundef nonnull @dissect_giop_tcp, i32 noundef %i.a)
  store ptr %i.b, ptr @giop_tcp_handle, align 8
  %i.c = load i32, ptr @proto_giop, align 4
  tail call void @proto_register_field_array(i32 noundef %i.c, ptr noundef nonnull @proto_register_giop.hf, i32 noundef 91)
  tail call void @proto_register_subtree_array(ptr noundef nonnull @proto_register_giop.ett, i32 noundef 19)
  %i.d = load i32, ptr @proto_giop, align 4
  %i.e = tail call ptr @expert_register_protocol(i32 noundef %i.d)
  tail call void @expert_register_field_array(ptr noundef %i.e, ptr noundef nonnull @proto_register_giop.ei, i32 noundef 9)
  tail call void @register_init_routine(ptr noundef nonnull @giop_init)
  tail call void @register_cleanup_routine(ptr noundef nonnull @giop_cleanup)
  tail call void @reassembly_table_register(ptr noundef nonnull @giop_reassembly_table, ptr noundef nonnull @addresses_reassembly_table_functions)
  %i.f = tail call i32 @register_tap(ptr noundef nonnull @.str.211) ; 0 uses
  %i.g = load i32, ptr @proto_giop, align 4
  %i.h = tail call ptr @prefs_register_protocol(i32 noundef %i.g, ptr noundef null) ; 4 uses
  tail call void @prefs_register_bool_preference(ptr noundef %i.h, ptr noundef nonnull @.str.212, ptr noundef nonnull @.str.213, ptr noundef nonnull @.str.214, ptr noundef nonnull @giop_desegment)
  tail call void @prefs_register_bool_preference(ptr noundef %i.h, ptr noundef nonnull @.str.215, ptr noundef nonnull @.str.216, ptr noundef nonnull @.str.217, ptr noundef nonnull @giop_reassemble)
  tail call void @prefs_register_uint_preference(ptr noundef %i.h, ptr noundef nonnull @.str.218, ptr noundef nonnull @.str.219, ptr noundef nonnull @.str.220, i32 noundef 10, ptr noundef nonnull @giop_max_message_size)
  tail call void @prefs_register_filename_preference(ptr noundef %i.h, ptr noundef nonnull @.str.221, ptr noundef nonnull @.str.222, ptr noundef nonnull @.str.223, ptr noundef nonnull @giop_ior_file, i1 noundef zeroext false)
  %i.i = tail call ptr @g_hash_table_new(ptr noundef nonnull @giop_hash_module_hash, ptr noundef nonnull @giop_hash_module_equal)
  store ptr %i.i, ptr @giop_module_hash, align 8
  tail call void @register_shutdown_routine(ptr noundef nonnull @giop_shutdown)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare i32 @proto_register_protocol(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @register_dissector(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_giop_tcp(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
bb.a:
  %i.a = tail call i32 @tvb_get_ntohl(ptr noundef %0, i32 noundef 0)
  %.not = icmp eq i32 %i.a, 1195986768
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @tvb_memeql(ptr noundef %0, i32 noundef 0, ptr noundef nonnull @.str.567, i64 noundef 4)
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.c, label %.sink.split

bb.c:                                             ; preds = %bb.b
  %i.d = tail call zeroext i1 @dissect_ziop_heur(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef null)
  br i1 %i.d, label %.sink.split, label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.e = load i8, ptr @giop_desegment, align 1, !range !11, !noundef !12
  %i.f = trunc nuw i8 %i.e to i1
  tail call void @tcp_dissect_pdus(ptr noundef %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext %i.f, i32 noundef 12, ptr noundef nonnull @get_giop_pdu_len, ptr noundef nonnull @dissect_giop_common, ptr noundef %3)
  br label %.sink.split

.sink.split:                                      ; preds = %bb.b, %bb.c, %bb.d
  %i.g = tail call i32 @tvb_captured_length(ptr noundef %0)
  br label %bb.e

bb.e:                                             ; preds = %.sink.split, %bb.c
  %.0 = phi i32 [ 0, %bb.c ], [ %i.g, %.sink.split ]
  ret i32 %.0
}

; Function Attrs: null_pointer_is_valid
declare void @proto_register_field_array(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @proto_register_subtree_array(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @expert_register_protocol(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @expert_register_field_array(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @register_init_routine(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @giop_init() #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = tail call ptr @g_hash_table_new(ptr noundef nonnull @giop_hash_objkey_hash, ptr noundef nonnull @giop_hash_objkey_equal)
  store ptr %i.b, ptr @giop_objkey_hash, align 8
  %i.c = tail call ptr @g_hash_table_new(ptr noundef nonnull @complete_reply_hash_fn, ptr noundef nonnull @complete_reply_equal_fn)
  store ptr %i.c, ptr @giop_complete_reply_hash, align 8
  store ptr null, ptr @giop_complete_request_list, align 8
  %i.d = load ptr, ptr @giop_ior_file, align 8    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.e = tail call noalias ptr @fopen(ptr noundef %i.d, ptr noundef nonnull @.str.568) ; 4 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = tail call ptr @__errno_location() #18
  %i.h = load i32, ptr %i.g, align 4
  %i.i = icmp eq i32 %i.h, 13
  br i1 %i.i, label %bb.c, label %read_IOR_strings_from_file.exit

bb.c:                                             ; preds = %bb.b
  tail call void @report_open_failure(ptr noundef %i.d, i32 noundef 13, i1 noundef zeroext false)
  br label %read_IOR_strings_from_file.exit

bb.d:                                             ; preds = %bb.a
  %i.j = tail call noalias dereferenceable_or_null(601) ptr @wmem_alloc0(ptr noundef null, i64 noundef 601) #17 ; 6 uses
  %i.k = tail call ptr @fgets(ptr noundef %i.j, i32 noundef 601, ptr noundef nonnull %i.e)
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %giop_getline.exit.thread.i, label %giop_getline.exit.lr.ph.i

giop_getline.exit.lr.ph.i:                        ; preds = %bb.d
  %i.m = load ptr, ptr @g_ascii_table, align 8    ; 2 uses
  br label %giop_getline.exit.i

giop_getline.exit.i:                              ; preds = %string_to_IOR.exit.thread.i, %giop_getline.exit.lr.ph.i
  %i.n = tail call i64 @strlen(ptr noundef %i.j) #19 ; 2 uses
  %i.o = trunc i64 %i.n to i32                    ; 3 uses
  %i.p = icmp sgt i32 %i.o, 0
  br i1 %i.p, label %bb.e, label %giop_getline.exit.thread.i

bb.e:                                             ; preds = %giop_getline.exit.i
  %i.q = and i64 %i.n, 2147483647                 ; 2 uses
  %i.r = tail call noalias ptr @wmem_alloc0(ptr noundef null, i64 noundef %i.q) #17 ; 4 uses
  %i.s = icmp ne ptr %i.r, null
  %i.t = icmp samesign ugt i32 %i.o, 5
  %or.cond.i.i = select i1 %i.s, i1 %i.t, i1 false
  br i1 %or.cond.i.i, label %.lr.ph.i.i, label %string_to_IOR.exit.thread.i

.lr.ph.i.i:                                       ; preds = %bb.e
  %i.u = and i32 %i.o, 2147483646
  br label %bb.f

bb.f:                                             ; preds = %bb.l, %.lr.ph.i.i
  %indvars.iv38.i.i = phi i64 [ 4, %.lr.ph.i.i ], [ %indvars.iv.next39.i.i, %bb.l ] ; 5 uses
  %indvars.iv.i.i = phi i64 [ 5, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.l ] ; 2 uses
  %i.v = getelementptr i8, ptr %i.j, i64 %indvars.iv38.i.i
  %i.w = load i8, ptr %i.v, align 1               ; 2 uses
  %i.x = zext i8 %i.w to i64
  %i.y = getelementptr [2 x i8], ptr %i.m, i64 %i.x
  %i.z = load i16, ptr %i.y, align 2
  %i.aa = and i16 %i.z, 1024
  %.not.i.i = icmp eq i16 %i.aa, 0
  br i1 %.not.i.i, label %._crit_edge.loopexit.split.loop.exit.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ab = getelementptr i8, ptr %i.j, i64 %indvars.iv.i.i ; 2 uses
  %i.ac = load i8, ptr %i.ab, align 1
  %i.ad = zext i8 %i.ac to i64
  %i.ae = getelementptr [2 x i8], ptr %i.m, i64 %i.ad
  %i.af = load i16, ptr %i.ae, align 2
  %i.ag = and i16 %i.af, 1024
  %.not30.i.i = icmp eq i16 %i.ag, 0
  br i1 %.not30.i.i, label %._crit_edge.loopexit.split.loop.exit45.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ah = tail call i32 @ws_xton(i8 noundef signext %i.w) ; 2 uses
  %sext.i.i = shl i32 %i.ah, 24
  %i.ai = ashr exact i32 %sext.i.i, 24            ; 2 uses
  %i.aj = icmp slt i32 %i.ai, 0
  br i1 %i.aj, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void (ptr, ...) @report_failure(ptr noundef nonnull @.str.569, i32 noundef %i.ai)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ak = load i8, ptr %i.ab, align 1
  %i.al = tail call i32 @ws_xton(i8 noundef signext %i.ak) ; 2 uses
  %sext31.i.i = shl i32 %i.al, 24
  %i.am = ashr exact i32 %sext31.i.i, 24          ; 2 uses
  %i.an = icmp slt i32 %i.am, 0
  br i1 %i.an, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  tail call void (ptr, ...) @report_failure(ptr noundef nonnull @.str.569, i32 noundef %i.am)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ao = shl i32 %i.ah, 4
  %i.ap = add i32 %i.al, %i.ao
  %i.aq = trunc i32 %i.ap to i8
  %i.ar = add nsw i64 %indvars.iv38.i.i, -4
  %i.as = lshr exact i64 %i.ar, 1
  %i.at = getelementptr i8, ptr %i.r, i64 %i.as
  store i8 %i.aq, ptr %i.at, align 1
  %indvars.iv.next39.i.i = add nuw nsw i64 %indvars.iv38.i.i, 2 ; 2 uses
  %0 = or disjoint i64 %indvars.iv.next39.i.i, 1
  %i.au = icmp samesign ult i64 %0, %i.q
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 2
  br i1 %i.au, label %bb.f, label %string_to_IOR.exit.i, !llvm.loop !39

._crit_edge.loopexit.split.loop.exit.i.i:         ; preds = %bb.f
  %i.av = trunc nuw nsw i64 %indvars.iv38.i.i to i32
  br label %string_to_IOR.exit.i

._crit_edge.loopexit.split.loop.exit45.i.i:       ; preds = %bb.g
  %i.aw = trunc nuw nsw i64 %indvars.iv38.i.i to i32
  br label %string_to_IOR.exit.i

string_to_IOR.exit.i:                             ; preds = %bb.l, %._crit_edge.loopexit.split.loop.exit45.i.i, %._crit_edge.loopexit.split.loop.exit.i.i
  %.0.lcssa.ph.i.i = phi i32 [ %i.aw, %._crit_edge.loopexit.split.loop.exit45.i.i ], [ %i.av, %._crit_edge.loopexit.split.loop.exit.i.i ], [ %i.u, %bb.l ]
  %i.ax = add nsw i32 %.0.lcssa.ph.i.i, -4        ; 2 uses
  %.not.i = icmp eq i32 %i.ax, 0
  br i1 %.not.i, label %string_to_IOR.exit.thread.i, label %bb.m

bb.m:                                             ; preds = %string_to_IOR.exit.i
  %i.ay = lshr exact i32 %i.ax, 1                 ; 2 uses
  %i.az = tail call ptr @tvb_new_real_data(ptr noundef nonnull %i.r, i32 noundef %i.ay, i32 noundef %i.ay) ; 3 uses
  %i.ba = tail call zeroext i8 @tvb_get_uint8(ptr noundef %i.az, i32 noundef 0)
  store i32 1, ptr %i.a, align 4
  %.not20.i = icmp eq i8 %i.ba, 0
  call fastcc void @decode_IOR(ptr noundef %i.az, ptr noundef null, ptr noundef null, ptr noundef nonnull %i.a, i32 noundef 0, i1 noundef zeroext %.not20.i)
  tail call void @tvb_free(ptr noundef %i.az)
  br label %string_to_IOR.exit.thread.i

string_to_IOR.exit.thread.i:                      ; preds = %bb.m, %string_to_IOR.exit.i, %bb.e
  tail call void @wmem_free(ptr noundef null, ptr noundef %i.r)
  %i.bb = tail call ptr @fgets(ptr noundef %i.j, i32 noundef 601, ptr noundef nonnull %i.e)
  %i.bc = icmp eq ptr %i.bb, null
  br i1 %i.bc, label %giop_getline.exit.thread.i, label %giop_getline.exit.i, !llvm.loop !40

giop_getline.exit.thread.i:                       ; preds = %string_to_IOR.exit.thread.i, %giop_getline.exit.i, %bb.d
  %i.bd = tail call i32 @fclose(ptr noundef nonnull %i.e) ; 0 uses
  tail call void @wmem_free(ptr noundef null, ptr noundef %i.j)
  br label %read_IOR_strings_from_file.exit

read_IOR_strings_from_file.exit:                  ; preds = %bb.b, %bb.c, %giop_getline.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare void @register_cleanup_routine(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @giop_cleanup() #0 {
bb.a:
  %i.a = load ptr, ptr @giop_objkey_hash, align 8
  tail call void @g_hash_table_destroy(ptr noundef %i.a)
  %i.b = load ptr, ptr @giop_complete_reply_hash, align 8
  tail call void @g_hash_table_destroy(ptr noundef %i.b)
  %i.c = load ptr, ptr @giop_complete_request_list, align 8
  tail call void @g_list_free(ptr noundef %i.c)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare void @reassembly_table_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @register_tap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @prefs_register_protocol(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @prefs_register_bool_preference(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @prefs_register_uint_preference(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @prefs_register_filename_preference(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @g_hash_table_new(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal i32 @giop_hash_module_hash(ptr nofree noundef readonly captures(none) %0) #5 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %i.b = tail call i64 @strlen(ptr noundef %i.a) #19 ; 3 uses
  %i.c = trunc i64 %i.b to i32
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = and i64 %i.b, 2147483647     ; 3 uses
  %min.iters.check = icmp samesign ult i64 %wide.trip.count, 8
  br i1 %min.iters.check, label %.lr.ph.preheader14, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.b, 2147483640               ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.i, %vector.body ]
  %vec.phi12 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.j, %vector.body ]
  %i.e = getelementptr i8, ptr %i.a, i64 %index   ; 2 uses
  %i.f = getelementptr i8, ptr %i.e, i64 4
  %wide.load = load <4 x i8>, ptr %i.e, align 1
  %wide.load13 = load <4 x i8>, ptr %i.f, align 1
  %i.g = zext <4 x i8> %wide.load to <4 x i32>
  %i.h = zext <4 x i8> %wide.load13 to <4 x i32>
  %i.i = add <4 x i32> %vec.phi, %i.g             ; 2 uses
  %i.j = add <4 x i32> %vec.phi12, %i.h           ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.k = icmp eq i64 %index.next, %n.vec
  br i1 %i.k, label %middle.block, label %vector.body, !llvm.loop !41

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.j, %i.i
  %i.l = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %wide.trip.count, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader14

.lr.ph.preheader14:                               ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  %.010.ph = phi i32 [ 0, %.lr.ph.preheader ], [ %i.l, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader14, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader14 ] ; 2 uses
  %.010 = phi i32 [ %i.p, %.lr.ph ], [ %.010.ph, %.lr.ph.preheader14 ]
  %i.m = getelementptr i8, ptr %i.a, i64 %indvars.iv
  %i.n = load i8, ptr %i.m, align 1
  %i.o = zext i8 %i.n to i32
  %i.p = add i32 %.010, %i.o                      ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !42

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %i.l, %middle.block ], [ %i.p, %.lr.ph ]
  ret i32 %.0.lcssa
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 0, 2) i32 @giop_hash_module_equal(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #6 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = load ptr, ptr %1, align 8
  %i.c = tail call i32 @strcmp(ptr noundef %i.a, ptr noundef %i.b) #19
  %i.d = icmp eq i32 %i.c, 0
  %. = zext i1 %i.d to i32
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare void @register_shutdown_routine(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @giop_shutdown() #0 {
bb.a:
  %i.a = load ptr, ptr @giop_sub_list, align 8
  tail call void @g_slist_free(ptr noundef %i.a)
  %i.b = load ptr, ptr @giop_module_hash, align 8
  tail call void @g_hash_table_destroy(ptr noundef %i.b)
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @proto_reg_handoff_giop() local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr @proto_giop, align 4
  tail call void @heur_dissector_add(ptr noundef nonnull @.str.224, ptr noundef nonnull @dissect_giop_heur, ptr noundef nonnull @.str.225, ptr noundef nonnull @.str.226, i32 noundef %i.a, i32 noundef 1)
  %i.b = load i32, ptr @proto_giop, align 4
  tail call void @heur_dissector_add(ptr noundef nonnull @.str.227, ptr noundef nonnull @dissect_giop_heur, ptr noundef nonnull @.str.228, ptr noundef nonnull @.str.229, i32 noundef %i.b, i32 noundef 1)
  %i.c = load ptr, ptr @giop_tcp_handle, align 8
  tail call void @dissector_add_for_decode_as_with_preference(ptr noundef nonnull @.str.230, ptr noundef %i.c)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare void @heur_dissector_add(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @dissector_add_for_decode_as_with_preference(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind null_pointer_is_valid memory(argmem: readwrite)
declare ptr @__memcpy_chk(ptr noalias noundef writeonly, ptr noalias noundef readonly captures(none), i64 noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare i32 @p_get_proto_depth(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_expert(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @p_set_proto_depth(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_int(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind null_pointer_is_valid willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #8

end_hunk_0
