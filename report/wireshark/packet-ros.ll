Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-ros?download=true
inline.NumInlined: 9
inline.NumDeleted: 5
begin_hunk_0_@dissect_ros_T_unbind_invoke:bb.a

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr i8, ptr %i.b, i64 4
  store i32 301989888, ptr %i.k, align 4
  %i.l = load ptr, ptr %i.h, align 8
  %i.m = load ptr, ptr @top_tree, align 8
  %i.n = tail call i32 @call_ros_oid_callback(ptr noundef nonnull %i.j, ptr noundef %1, i32 noundef %2, ptr noundef %i.l, ptr noundef %i.m, ptr noundef nonnull %i.b)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ %i.n, %bb.d ], [ %2, %bb.c ], [ %2, %bb.b ], [ %2, %bb.a ]
  ret i32 %.0
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_ros_T_unbind_result(i1 zeroext %0, ptr noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, ptr noundef %4, i32 %5) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %3, i64 48
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %i.c = load i32, ptr @ett_ros_unbind_result, align 4
  %i.d = tail call ptr @proto_tree_add_subtree(ptr noundef %4, ptr noundef %1, i32 noundef %2, i32 noundef -1, i32 noundef %i.c, ptr noundef null, ptr noundef @.str.13) ; 0 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %i.b, i64 2
  %i.f = load i8, ptr %i.e, align 2               ; 2 uses
  %.not17 = icmp eq i8 %i.f, 0
  br i1 %.not17, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = zext i8 %i.f to i32
  %i.h = getelementptr i8, ptr %3, i64 16         ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call ptr @find_oid_by_pres_ctx_id(ptr noundef %i.i, i32 noundef %i.g) ; 2 uses
  %.not18 = icmp eq ptr %i.j, null
  br i1 %.not18, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr i8, ptr %i.b, i64 4
  store i32 570425344, ptr %i.k, align 4
  %i.l = load ptr, ptr %i.h, align 8
  %i.m = load ptr, ptr @top_tree, align 8
  %i.n = tail call i32 @call_ros_oid_callback(ptr noundef nonnull %i.j, ptr noundef %1, i32 noundef %2, ptr noundef %i.l, ptr noundef %i.m, ptr noundef nonnull %i.b)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ %i.n, %bb.d ], [ %2, %bb.c ], [ %2, %bb.b ], [ %2, %bb.a ]
  ret i32 %.0
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_ros_T_unbind_error(i1 zeroext %0, ptr noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, ptr noundef %4, i32 %5) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %3, i64 48
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %i.c = load i32, ptr @ett_ros_unbind_error, align 4
  %i.d = tail call ptr @proto_tree_add_subtree(ptr noundef %4, ptr noundef %1, i32 noundef %2, i32 noundef -1, i32 noundef %i.c, ptr noundef null, ptr noundef @.str.14) ; 0 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %i.b, i64 2
  %i.f = load i8, ptr %i.e, align 2               ; 2 uses
  %.not17 = icmp eq i8 %i.f, 0
  br i1 %.not17, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = zext i8 %i.f to i32
  %i.h = getelementptr i8, ptr %3, i64 16         ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call ptr @find_oid_by_pres_ctx_id(ptr noundef %i.i, i32 noundef %i.g) ; 2 uses
  %.not18 = icmp eq ptr %i.j, null
  br i1 %.not18, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr i8, ptr %i.b, i64 4
  store i32 838860800, ptr %i.k, align 4
  %i.l = load ptr, ptr %i.h, align 8
  %i.m = load ptr, ptr @top_tree, align 8
  %i.n = tail call i32 @call_ros_oid_callback(ptr noundef nonnull %i.j, ptr noundef %1, i32 noundef %2, ptr noundef %i.l, ptr noundef %i.m, ptr noundef nonnull %i.b)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ %i.n, %bb.d ], [ %2, %bb.c ], [ %2, %bb.b ], [ %2, %bb.a ]
  ret i32 %.0
}

; Function Attrs: null_pointer_is_valid
declare i32 @dissect_ber_sequence(i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_ros_INTEGER(i1 noundef zeroext %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) #0 {
bb.a:
  %i.a = tail call i32 @dissect_ber_integer(i1 noundef zeroext %0, ptr noundef %3, ptr noundef %4, ptr noundef %1, i32 noundef %2, i32 noundef %5, ptr noundef null)
  ret i32 %i.a
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_ros_OperationCode(i1 noundef zeroext %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) #0 {
bb.a:
  %i.a = tail call i32 @dissect_ber_integer(i1 noundef zeroext %0, ptr noundef %3, ptr noundef %4, ptr noundef %1, i32 noundef %2, i32 noundef %5, ptr noundef @opcode)
  ret i32 %i.a
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_ros_T_argument(i1 zeroext %0, ptr noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, ptr noundef %4, i32 %5) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %3, i64 48
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %i.c = load i32, ptr @ett_ros_invoke_argument, align 4
  %i.d = tail call ptr @proto_tree_add_subtree(ptr noundef %4, ptr noundef %1, i32 noundef %2, i32 noundef -1, i32 noundef %i.c, ptr noundef null, ptr noundef @.str.85)
  %i.e = getelementptr i8, ptr %3, i64 16         ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = load i32, ptr @invokeid, align 4
  tail call fastcc void @ros_match_call_response(ptr noundef %1, ptr noundef %i.f, ptr noundef %i.d, i32 noundef %i.g, i1 noundef zeroext true)
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr i8, ptr %i.b, i64 2
  %i.i = load i8, ptr %i.h, align 2               ; 2 uses
  %.not21 = icmp eq i8 %i.i, 0
  br i1 %.not21, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = zext i8 %i.i to i32
  %i.k = load ptr, ptr %i.e, align 8
  %i.l = tail call ptr @find_oid_by_pres_ctx_id(ptr noundef %i.k, i32 noundef %i.j) ; 2 uses
  %.not22 = icmp eq ptr %i.l, null
  br i1 %.not22, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr i8, ptr %i.b, i64 4        ; 2 uses
  store i32 318767104, ptr %i.m, align 4
  %i.n = load i32, ptr @opcode, align 4
  %i.o = or i32 %i.n, 318767104
  store i32 %i.o, ptr %i.m, align 4
  %i.p = load ptr, ptr %i.e, align 8
  %i.q = load ptr, ptr @top_tree, align 8
  %i.r = tail call i32 @call_ros_oid_callback(ptr noundef nonnull %i.l, ptr noundef %1, i32 noundef %2, ptr noundef %i.p, ptr noundef %i.q, ptr noundef nonnull %i.b)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ %i.r, %bb.d ], [ %2, %bb.c ], [ %2, %bb.b ], [ %2, %bb.a ]
  ret i32 %.0
}

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_subtree(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @ros_match_call_response(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i1 noundef zeroext %4) unnamed_addr #0 {
bb.a:
  %5 = alloca %struct.ros_call_response, align 8  ; 12 uses
  %6 = alloca %struct.nstime_t, align 8           ; 4 uses
  %i.a = zext i1 %4 to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #6
  %i.b = tail call ptr @find_conversation_pinfo(ptr noundef %1, i32 noundef 0) ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %proto_item_set_generated.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr @proto_ros, align 4
  %i.e = tail call ptr @conversation_get_proto_data(ptr noundef nonnull %i.b, i32 noundef %i.d) ; 7 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %proto_item_set_generated.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 28 ; 3 uses
  store i32 %3, ptr %i.g, align 4
  store i8 %i.a, ptr %5, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  %i.i = getelementptr i8, ptr %i.e, i64 8        ; 3 uses
  br i1 %4, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr i8, ptr %1, i64 20         ; 2 uses
  %i.k = load i32, ptr %i.j, align 4
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 %i.k, ptr %i.l, align 4
  store i32 0, ptr %i.h, align 8
  %i.m = load ptr, ptr %i.i, align 8
  %i.n = call ptr @wmem_map_lookup(ptr noundef %i.m, ptr noundef nonnull %5) ; 2 uses
  %.not = icmp eq ptr %i.n, null
  br i1 %.not, label %bb.f, label %bb.e

.thread:                                          ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 0, ptr %i.o, align 4
  %i.p = getelementptr i8, ptr %1, i64 20         ; 2 uses
  %i.q = load i32, ptr %i.p, align 4
  store i32 %i.q, ptr %i.h, align 8
  %i.r = load ptr, ptr %i.i, align 8
  %i.s = call ptr @wmem_map_lookup(ptr noundef %i.r, ptr noundef nonnull %5) ; 2 uses
  %.not76 = icmp eq ptr %i.s, null
  br i1 %.not76, label %.thread77, label %bb.e

bb.e:                                             ; preds = %.thread, %bb.d
  %i.t = phi ptr [ %i.s, %.thread ], [ %i.n, %bb.d ] ; 2 uses
  %i.u = load i8, ptr %5, align 8, !range !11, !noundef !12
  store i8 %i.u, ptr %i.t, align 8
  br label %bb.k

bb.f:                                             ; preds = %bb.d
  store i32 %3, ptr %i.g, align 4
  %i.v = load ptr, ptr %i.e, align 8
  %i.w = call ptr @wmem_map_lookup(ptr noundef %i.v, ptr noundef nonnull %5) ; 3 uses
  %.not68 = icmp eq ptr %i.w, null
  br i1 %.not68, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = load ptr, ptr %i.e, align 8
  %i.y = call ptr @wmem_map_remove(ptr noundef %i.x, ptr noundef nonnull %i.w) ; 0 uses
  br label %bb.h

.critedge:                                        ; preds = %bb.f
  %i.z = call ptr @wmem_file_scope()
  %i.aa = call noalias dereferenceable_or_null(32) ptr @wmem_alloc(ptr noundef %i.z, i64 noundef 32) #7
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.critedge
  %.0 = phi ptr [ %i.w, %bb.g ], [ %i.aa, %.critedge ] ; 7 uses
  %i.ab = getelementptr i8, ptr %.0, i64 28
  store i32 %3, ptr %i.ab, align 4
  %i.ac = load i32, ptr %i.j, align 4
  %i.ad = getelementptr i8, ptr %.0, i64 4
  store i32 %i.ac, ptr %i.ad, align 4
  %i.ae = getelementptr i8, ptr %.0, i64 8
  %i.af = getelementptr i8, ptr %1, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(16) %i.ae, ptr noundef align 8 dereferenceable(16) %i.af, i64 16, i1 false)
  %i.ag = getelementptr i8, ptr %.0, i64 24
  store i32 0, ptr %i.ag, align 8
  store i8 1, ptr %.0, align 8
  %i.ah = load ptr, ptr %i.e, align 8
  %i.ai = call ptr @wmem_map_insert(ptr noundef %i.ah, ptr noundef %.0, ptr noundef %.0) ; 0 uses
  br label %proto_item_set_generated.exit

.thread77:                                        ; preds = %.thread
  store i32 %3, ptr %i.g, align 4
  %i.aj = load ptr, ptr %i.e, align 8
  %i.ak = call ptr @wmem_map_lookup(ptr noundef %i.aj, ptr noundef nonnull %5) ; 8 uses
  %.not66 = icmp eq ptr %i.ak, null
  br i1 %.not66, label %proto_item_set_generated.exit, label %bb.i

bb.i:                                             ; preds = %.thread77
  %i.al = getelementptr i8, ptr %i.ak, i64 24     ; 2 uses
  %i.am = load i32, ptr %i.al, align 8
  %.not67 = icmp eq i32 %i.am, 0
  br i1 %.not67, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.an = load ptr, ptr %i.e, align 8
  %i.ao = call ptr @wmem_map_remove(ptr noundef %i.an, ptr noundef nonnull %i.ak) ; 0 uses
  %i.ap = load i32, ptr %i.p, align 4
  store i32 %i.ap, ptr %i.al, align 8
  store i8 0, ptr %i.ak, align 8
  %i.aq = load ptr, ptr %i.i, align 8
  %i.ar = call ptr @wmem_map_insert(ptr noundef %i.aq, ptr noundef nonnull %i.ak, ptr noundef nonnull %i.ak) ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.e, %bb.i, %bb.j
  %.1.ph = phi ptr [ %i.ak, %bb.j ], [ %i.ak, %bb.i ], [ %i.t, %bb.e ] ; 4 uses
  %7 = load i8, ptr %.1.ph, align 8, !range !11, !noundef !12
  %i.as = trunc nuw i8 %7 to i1
  br i1 %i.as, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.at = load i32, ptr @hf_ros_response_in, align 4
  %i.au = getelementptr i8, ptr %.1.ph, i64 24
  %i.av = load i32, ptr %i.au, align 8
  %i.aw = call ptr @proto_tree_add_uint(ptr noundef %2, i32 noundef %i.at, ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef %i.av) ; 2 uses
  %.not.i = icmp eq ptr %i.aw, null
  br i1 %.not.i, label %proto_item_set_generated.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ax = getelementptr i8, ptr %i.aw, i64 40
  %i.ay = load ptr, ptr %i.ax, align 8            ; 2 uses
  %.not5.i = icmp eq ptr %i.ay, null
  br i1 %.not5.i, label %proto_item_set_generated.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.az = getelementptr i8, ptr %i.ay, i64 28     ; 2 uses
  %i.ba = load i32, ptr %i.az, align 4
  %i.bb = or i32 %i.ba, 2
  store i32 %i.bb, ptr %i.az, align 4
  br label %proto_item_set_generated.exit

bb.o:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #6
  %i.bc = load i32, ptr @hf_ros_response_to, align 4
  %i.bd = getelementptr i8, ptr %.1.ph, i64 4
  %i.be = load i32, ptr %i.bd, align 4
  %i.bf = call ptr @proto_tree_add_uint(ptr noundef %2, i32 noundef %i.bc, ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef %i.be) ; 2 uses
  %.not.i70 = icmp eq ptr %i.bf, null
  br i1 %.not.i70, label %proto_item_set_generated.exit72, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bg = getelementptr i8, ptr %i.bf, i64 40
  %i.bh = load ptr, ptr %i.bg, align 8            ; 2 uses
  %.not5.i71 = icmp eq ptr %i.bh, null
  br i1 %.not5.i71, label %proto_item_set_generated.exit72, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bi = getelementptr i8, ptr %i.bh, i64 28     ; 2 uses
  %i.bj = load i32, ptr %i.bi, align 4
  %i.bk = or i32 %i.bj, 2
  store i32 %i.bk, ptr %i.bi, align 4
  br label %proto_item_set_generated.exit72

proto_item_set_generated.exit72:                  ; preds = %bb.o, %bb.p, %bb.q
  %i.bl = getelementptr i8, ptr %1, i64 24
  %i.bm = getelementptr i8, ptr %.1.ph, i64 8
  call void @nstime_delta(ptr noundef nonnull %6, ptr noundef %i.bl, ptr noundef %i.bm)
  %i.bn = load i32, ptr @hf_ros_time, align 4
  %i.bo = call ptr @proto_tree_add_time(ptr noundef %2, i32 noundef %i.bn, ptr noundef %0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %6) ; 2 uses
  %.not.i73 = icmp eq ptr %i.bo, null
  br i1 %.not.i73, label %proto_item_set_generated.exit75, label %bb.r

bb.r:                                             ; preds = %proto_item_set_generated.exit72
  %i.bp = getelementptr i8, ptr %i.bo, i64 40
  %i.bq = load ptr, ptr %i.bp, align 8            ; 2 uses
  %.not5.i74 = icmp eq ptr %i.bq, null
  br i1 %.not5.i74, label %proto_item_set_generated.exit75, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.br = getelementptr i8, ptr %i.bq, i64 28     ; 2 uses
  %i.bs = load i32, ptr %i.br, align 4
  %i.bt = or i32 %i.bs, 2
  store i32 %i.bt, ptr %i.br, align 4
  br label %proto_item_set_generated.exit75

proto_item_set_generated.exit75:                  ; preds = %proto_item_set_generated.exit72, %bb.r, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #6
  br label %proto_item_set_generated.exit

proto_item_set_generated.exit:                    ; preds = %bb.n, %bb.m, %bb.l, %.thread77, %proto_item_set_generated.exit75, %bb.b, %bb.a, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare ptr @find_oid_by_pres_ctx_id(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @find_conversation_pinfo(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @conversation_get_proto_data(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @wmem_map_remove(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(1)
declare noalias ptr @wmem_alloc(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare ptr @wmem_file_scope() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_uint(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @nstime_delta(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_time(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_ros_T_result(i1 noundef zeroext %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) #0 {
bb.a:
  %i.a = load i32, ptr @ett_ros_T_result, align 4
  %i.b = tail call i32 @dissect_ber_sequence(i1 noundef zeroext %0, ptr noundef %3, ptr noundef %4, ptr noundef %1, i32 noundef %2, ptr noundef @T_result_sequence, i32 noundef %5, i32 noundef %i.a)
  ret i32 %i.b
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_ros_OperationResult(i1 zeroext %0, ptr noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, ptr noundef %4, i32 %5) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %3, i64 48
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %i.c = load i32, ptr @ett_ros_return_result, align 4
  %i.d = tail call ptr @proto_tree_add_subtree(ptr noundef %4, ptr noundef %1, i32 noundef %2, i32 noundef -1, i32 noundef %i.c, ptr noundef null, ptr noundef @.str.88)
  %i.e = getelementptr i8, ptr %3, i64 16         ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = load i32, ptr @invokeid, align 4
  tail call fastcc void @ros_match_call_response(ptr noundef %1, ptr noundef %i.f, ptr noundef %i.d, i32 noundef %i.g, i1 noundef zeroext false)
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr i8, ptr %i.b, i64 2
  %i.i = load i8, ptr %i.h, align 2               ; 2 uses
  %.not21 = icmp eq i8 %i.i, 0
  br i1 %.not21, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = zext i8 %i.i to i32
  %i.k = load ptr, ptr %i.e, align 8
  %i.l = tail call ptr @find_oid_by_pres_ctx_id(ptr noundef %i.k, i32 noundef %i.j) ; 2 uses
  %.not22 = icmp eq ptr %i.l, null
  br i1 %.not22, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr i8, ptr %i.b, i64 4        ; 2 uses
  store i32 587202560, ptr %i.m, align 4
  %i.n = load i32, ptr @opcode, align 4
  %i.o = or i32 %i.n, 587202560
  store i32 %i.o, ptr %i.m, align 4
  %i.p = load ptr, ptr %i.e, align 8
  %i.q = load ptr, ptr @top_tree, align 8
  %i.r = tail call i32 @call_ros_oid_callback(ptr noundef nonnull %i.l, ptr noundef %1, i32 noundef %2, ptr noundef %i.p, ptr noundef %i.q, ptr noundef nonnull %i.b)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ %i.r, %bb.d ], [ %2, %bb.c ], [ %2, %bb.b ], [ %2, %bb.a ]
  ret i32 %.0
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_ros_ErrorCode(i1 noundef zeroext %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) #0 {
bb.a:
  %i.a = tail call i32 @dissect_ber_integer(i1 noundef zeroext %0, ptr noundef %3, ptr noundef %4, ptr noundef %1, i32 noundef %2, i32 noundef %5, ptr noundef @opcode)
  ret i32 %i.a
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_ros_T_parameter(i1 zeroext %0, ptr noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, ptr noundef %4, i32 %5) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %3, i64 48
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %i.c = load i32, ptr @ett_ros_return_result, align 4
  %i.d = tail call ptr @proto_tree_add_subtree(ptr noundef %4, ptr noundef %1, i32 noundef %2, i32 noundef -1, i32 noundef %i.c, ptr noundef null, ptr noundef @.str.88)
  %i.e = getelementptr i8, ptr %3, i64 16         ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = load i32, ptr @invokeid, align 4
  tail call fastcc void @ros_match_call_response(ptr noundef %1, ptr noundef %i.f, ptr noundef %i.d, i32 noundef %i.g, i1 noundef zeroext false)
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr i8, ptr %i.b, i64 2
  %i.i = load i8, ptr %i.h, align 2               ; 2 uses
  %.not21 = icmp eq i8 %i.i, 0
  br i1 %.not21, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = zext i8 %i.i to i32
  %i.k = load ptr, ptr %i.e, align 8
  %i.l = tail call ptr @find_oid_by_pres_ctx_id(ptr noundef %i.k, i32 noundef %i.j) ; 2 uses
  %.not22 = icmp eq ptr %i.l, null
  br i1 %.not22, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr i8, ptr %i.b, i64 4        ; 2 uses
  store i32 855638016, ptr %i.m, align 4
  %i.n = load i32, ptr @opcode, align 4
  %i.o = or i32 %i.n, 855638016
  store i32 %i.o, ptr %i.m, align 4
  %i.p = load ptr, ptr %i.e, align 8
  %i.q = load ptr, ptr @top_tree, align 8
end_hunk_0
