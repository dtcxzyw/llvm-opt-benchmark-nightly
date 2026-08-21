inline.NumInlined: 4
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@proto_register_solaredge:bb.a
  %i.b = tail call ptr @register_dissector(ptr noundef nonnull @.str.91, ptr noundef nonnull @dissect_solaredge, i32 noundef %i.a)
  store ptr %i.b, ptr @solaredge_handle, align 8
  %i.c = load i32, ptr @proto_solaredge, align 4
  %i.d = tail call ptr @prefs_register_protocol(i32 noundef %i.c, ptr noundef null) ; 2 uses
  tail call void @prefs_register_bool_preference(ptr noundef %i.d, ptr noundef nonnull @.str.92, ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.94, ptr noundef nonnull @global_show_unknown_fields)
  tail call void @prefs_register_string_preference(ptr noundef %i.d, ptr noundef nonnull @.str.95, ptr noundef nonnull @.str.96, ptr noundef nonnull @.str.97, ptr noundef nonnull @global_system_encryption_key)
  %i.e = load i32, ptr @proto_solaredge, align 4
  tail call void @proto_register_field_array(i32 noundef %i.e, ptr noundef nonnull @proto_register_solaredge.hf, i32 noundef 45)
  tail call void @proto_register_subtree_array(ptr noundef nonnull @proto_register_solaredge.ett, i32 noundef 4)
  %i.f = load i32, ptr @proto_solaredge, align 4
  %i.g = tail call ptr @expert_register_protocol(i32 noundef %i.f)
  tail call void @expert_register_field_array(ptr noundef %i.g, ptr noundef nonnull @proto_register_solaredge.ei, i32 noundef 2)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: null_pointer_is_valid
declare i32 @proto_register_protocol(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @register_dissector(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal range(i32 0, 65558) i32 @dissect_solaredge(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree readnone captures(none) %3) #0 {
bb.a:
  %i.a = tail call ptr @find_or_create_conversation(ptr noundef %1) ; 3 uses
  %i.b = load i32, ptr @proto_solaredge, align 4
  %i.c = tail call ptr @conversation_get_proto_data(ptr noundef %i.a, i32 noundef %i.b)
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @wmem_file_scope()
  %i.f = tail call noalias dereferenceable_or_null(24) ptr @wmem_alloc(ptr noundef %i.e, i64 noundef 24) #7 ; 2 uses
  store i8 0, ptr %i.f, align 8
  %i.g = load i32, ptr @proto_solaredge, align 4
  tail call void @conversation_add_proto_data(ptr noundef %i.a, i32 noundef %i.g, ptr noundef %i.f)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = load i32, ptr @ett_solaredge_packet, align 4
  %i.i = tail call fastcc i32 @dissect_solaredge_recursive(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %i.h, ptr noundef %i.a)
  ret i32 %i.i
}

; Function Attrs: null_pointer_is_valid
declare ptr @prefs_register_protocol(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @prefs_register_bool_preference(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @prefs_register_string_preference(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @proto_register_field_array(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @proto_register_subtree_array(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @expert_register_protocol(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @expert_register_field_array(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: null_pointer_is_valid
declare ptr @find_or_create_conversation(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @conversation_get_proto_data(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(1)
declare noalias ptr @wmem_alloc(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare ptr @wmem_file_scope() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @conversation_add_proto_data(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc range(i32 0, 65558) i32 @dissect_solaredge_recursive(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca i16, align 2                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i16, align 2                      ; 4 uses
  %i.e = alloca [16 x i8], align 16               ; 5 uses
  %i.f = alloca [16 x i8], align 16               ; 6 uses
  %i.g = alloca [16 x i8], align 16               ; 7 uses
  %i.h = alloca [16 x i8], align 16               ; 7 uses
  %i.i = tail call i32 @tvb_get_uint32(ptr noundef %0, i32 noundef 0, i32 noundef -2147483648)
  %.not = icmp eq i32 %i.i, 2035692562
  br i1 %.not, label %bb.b, label %bb.bb

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr i8, ptr %1, i64 8          ; 6 uses
  %i.k = load ptr, ptr %i.j, align 8
  tail call void @col_set_str(ptr noundef %i.k, i32 noundef 35, ptr noundef nonnull @.str.90)
  %i.l = load ptr, ptr %i.j, align 8
  tail call void @col_clear(ptr noundef %i.l, i32 noundef 25)
  %i.m = load i32, ptr @proto_solaredge, align 4
  %i.n = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.m, ptr noundef %0, i32 noundef 0, i32 noundef -1, i32 noundef 0)
  %i.o = tail call ptr @proto_item_add_subtree(ptr noundef %i.n, i32 noundef %3) ; 11 uses
  %i.p = tail call zeroext i16 @tvb_get_uint16(ptr noundef %0, i32 noundef 4, i32 noundef -2147483648) ; 6 uses
  %i.q = load i32, ptr @hf_solaredge_length_type, align 4
  %i.r = tail call ptr @proto_tree_add_item(ptr noundef %i.o, i32 noundef %i.q, ptr noundef %0, i32 noundef 4, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.s = tail call zeroext i16 @tvb_get_uint16(ptr noundef %0, i32 noundef 6, i32 noundef -2147483648)
  %i.t = zext i16 %i.s to i32                     ; 2 uses
  %i.u = zext i16 %i.p to i32                     ; 14 uses
  %i.v = xor i32 %i.t, %i.u
  %.not97 = icmp eq i32 %i.v, 65535
  br i1 %.not97, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.w = tail call ptr (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @proto_tree_add_expert_format(ptr noundef %i.o, ptr noundef %1, ptr noundef nonnull @ei_solaredge_invalid_length, ptr noundef %0, i32 noundef 4, i32 noundef 8, ptr noundef nonnull @.str.524, i32 noundef %i.t, i32 noundef %i.u) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.x = load i32, ptr @hf_solaredge_length_inverse_type, align 4
  %i.y = tail call ptr @proto_tree_add_item(ptr noundef %i.o, i32 noundef %i.x, ptr noundef %0, i32 noundef 6, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.z = tail call zeroext i16 @tvb_get_uint16(ptr noundef %0, i32 noundef 8, i32 noundef -2147483648)
  %i.aa = load i32, ptr @hf_solaredge_sequence_number_type, align 4
  %i.ab = tail call ptr @proto_tree_add_item(ptr noundef %i.o, i32 noundef %i.aa, ptr noundef %0, i32 noundef 8, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.ac = tail call i32 @tvb_get_uint32(ptr noundef %0, i32 noundef 10, i32 noundef -2147483648)
  %i.ad = load i32, ptr @hf_solaredge_source_address_type, align 4
  %i.ae = tail call ptr @proto_tree_add_item(ptr noundef %i.o, i32 noundef %i.ad, ptr noundef %0, i32 noundef 10, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.af = tail call i32 @tvb_get_uint32(ptr noundef %0, i32 noundef 14, i32 noundef -2147483648)
  %i.ag = load i32, ptr @hf_solaredge_destination_address_type, align 4
  %i.ah = tail call ptr @proto_tree_add_item(ptr noundef %i.o, i32 noundef %i.ag, ptr noundef %0, i32 noundef 14, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.ai = tail call zeroext i16 @tvb_get_uint16(ptr noundef %0, i32 noundef 18, i32 noundef -2147483648) ; 3 uses
  %i.aj = load i32, ptr @hf_solaredge_command_type, align 4
  %i.ak = tail call ptr @proto_tree_add_item(ptr noundef %i.o, i32 noundef %i.aj, ptr noundef %0, i32 noundef 18, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.al = load ptr, ptr %i.j, align 8
  %i.am = zext i16 %i.ai to i32
  %i.an = tail call ptr @val_to_str_const(i32 noundef %i.am, ptr noundef nonnull @solaredge_packet_commandtypes, ptr noundef nonnull @.str.525)
  tail call void @col_append_str(ptr noundef %i.al, i32 noundef 25, ptr noundef %i.an)
  tail call void @increment_dissection_depth(ptr noundef %1)
  switch i16 %i.ai, label %bb.ba [
    i16 61, label %bb.e
    i16 1280, label %bb.l
    i16 1283, label %bb.ao
  ]

bb.e:                                             ; preds = %bb.d
  %i.ao = load i32, ptr @hf_solaredge_payload_type, align 4
  %i.ap = tail call ptr @proto_tree_add_item(ptr noundef %i.o, i32 noundef %i.ao, ptr noundef %0, i32 noundef 20, i32 noundef %i.u, i32 noundef 0) ; 0 uses
  %i.aq = load i32, ptr @proto_solaredge, align 4
  %i.ar = tail call ptr @conversation_get_proto_data(ptr noundef %4, i32 noundef %i.aq) ; 3 uses
  %.not98 = icmp eq ptr %i.ar, null
  br i1 %.not98, label %solaredge_decrypt.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.as = load i8, ptr %i.ar, align 8, !range !6, !noundef !7
  %i.at = trunc nuw i8 %i.as to i1
  br i1 %i.at, label %bb.g, label %solaredge_decrypt.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.au = getelementptr i8, ptr %1, i64 416
  %i.av = load ptr, ptr %i.au, align 8            ; 2 uses
  %i.aw = tail call ptr @tvb_get_ptr(ptr noundef %0, i32 noundef 20, i32 noundef %i.u) ; 2 uses
  %i.ax = getelementptr i8, ptr %i.ar, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8            ; 2 uses
  %i.az = icmp ult i16 %i.p, 22
  br i1 %i.az, label %solaredge_decrypt.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.g, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #8
  %i.ba = add nsw i32 %i.u, -16
  %i.bb = getelementptr i8, ptr %i.aw, i64 16
  %i.bc = zext nneg i32 %i.ba to i64              ; 2 uses
  %i.bd = tail call ptr @wmem_memdup(ptr noundef %i.av, ptr noundef %i.bb, i64 noundef %i.bc) #9 ; 14 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.h, ptr noundef align 1 dereferenceable(16) %i.aw, i64 noundef 16, i1 noundef false) #8
  %i.be = call i32 @gcry_cipher_encrypt(ptr noundef %i.ay, ptr noundef nonnull %i.g, i64 noundef 16, ptr noundef nonnull %i.h, i64 noundef 16)
  %.not.i = icmp eq i32 %i.be, 0
  br i1 %.not.i, label %.lr.ph.i, label %solaredge_decrypt.exit

.lr.ph.i:                                         ; preds = %bb.h, %bb.j
  %indvars.iv.i.a = phi i64 [ %indvars.iv.next.i.a, %bb.j ], [ 0, %bb.h ] ; 2 uses
  %.03749.i = phi i32 [ %.1.i, %bb.j ], [ 0, %bb.h ] ; 2 uses
  %i.bf = add i32 %.03749.i, 1                    ; 2 uses
  %i.bg = sext i32 %.03749.i to i64
  %i.bh = getelementptr i8, ptr %i.g, i64 %i.bg
  %i.bi = load i8, ptr %i.bh, align 1
  %i.bj = getelementptr i8, ptr %i.bd, i64 %indvars.iv.i.a ; 2 uses
  %i.bk = load i8, ptr %i.bj, align 1
  %i.bl = xor i8 %i.bk, %i.bi
  store i8 %i.bl, ptr %i.bj, align 1
  %i.bm = icmp eq i32 %i.bf, 16
  br i1 %i.bm, label %.preheader.i, label %bb.j

.preheader.i:                                     ; preds = %.lr.ph.i, %.preheader.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.preheader.i ], [ 15, %.lr.ph.i ] ; 3 uses
  %i.bn = getelementptr i8, ptr %i.h, i64 %indvars.iv.i ; 2 uses
  %i.bo = load i8, ptr %i.bn, align 1
  %i.bp = add i8 %i.bo, 1                         ; 2 uses
  store i8 %i.bp, ptr %i.bn, align 1
  %.not44.i = icmp eq i8 %i.bp, 0
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1
  %i.bq = icmp ne i64 %indvars.iv.i, 0
  %or.cond.i = and i1 %i.bq, %.not44.i
  br i1 %or.cond.i, label %.preheader.i, label %bb.i, !llvm.loop !8

bb.i:                                             ; preds = %.preheader.i
  %i.br = call i32 @gcry_cipher_encrypt(ptr noundef %i.ay, ptr noundef nonnull %i.g, i64 noundef 16, ptr noundef nonnull %i.h, i64 noundef 16)
  %.not45.i = icmp eq i32 %i.br, 0
  br i1 %.not45.i, label %bb.j, label %solaredge_decrypt.exit

bb.j:                                             ; preds = %bb.i, %.lr.ph.i
  %.1.i = phi i32 [ 0, %bb.i ], [ %i.bf, %.lr.ph.i ]
  %indvars.iv.next.i.a = add nuw nsw i64 %indvars.iv.i.a, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i.a, %i.bc
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !10

._crit_edge.i:                                    ; preds = %bb.j
  %i.bs = add nsw i32 %i.u, -22                   ; 4 uses
  %i.bt = zext nneg i32 %i.bs to i64
  %i.bu = call noalias ptr @wmem_alloc(ptr noundef %i.av, i64 noundef %i.bt) #7 ; 8 uses
  %.not54.i = icmp eq i16 %i.p, 22
  br i1 %.not54.i, label %.loopexit, label %iter.check

iter.check:                                       ; preds = %._crit_edge.i
  %smax.i = call i32 @llvm.smax.i32(i32 %i.bs, i32 1) ; 2 uses
  %wide.trip.count60.i = zext nneg i32 %smax.i to i64 ; 7 uses
  %min.iters.check = icmp ult i16 %i.p, 26
  %i.bv = add nsw i32 %smax.i, -5
  %i.bw = icmp ult i32 %i.bv, -4
  %or.cond = select i1 %min.iters.check, i1 true, i1 %i.bw
  br i1 %or.cond, label %.lr.ph53.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %scevgep = getelementptr i8, ptr %i.bu, i64 %wide.trip.count60.i
  %scevgep33 = getelementptr i8, ptr %i.bd, i64 2
  %i.bx = getelementptr i8, ptr %i.bd, i64 %wide.trip.count60.i
  %scevgep34 = getelementptr i8, ptr %i.bx, i64 6
  %bound0 = icmp ult ptr %i.bu, %scevgep34
  %bound1 = icmp ult ptr %scevgep33, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph53.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check35 = icmp ult i16 %i.p, 54
  br i1 %min.iters.check35, label %vec.epilog.ph, label %vector.body.preheader

vector.body.preheader:                            ; preds = %vector.main.loop.iter.check
  %i.by = getelementptr i8, ptr %i.bd, i64 2
  %i.bz = getelementptr i8, ptr %i.bd, i64 18
  %wide.load37 = load <16 x i8>, ptr %i.by, align 1, !alias.scope !11
  %wide.load38 = load <16 x i8>, ptr %i.bz, align 1, !alias.scope !11
  br label %vector.body

vector.body:                                      ; preds = %vector.body.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.body.preheader ] ; 3 uses
  %i.ca = getelementptr i8, ptr %i.bd, i64 %index ; 2 uses
  %i.cb = getelementptr i8, ptr %i.ca, i64 6
  %i.cc = getelementptr i8, ptr %i.ca, i64 22
  %wide.load = load <16 x i8>, ptr %i.cb, align 1, !alias.scope !11
  %wide.load36 = load <16 x i8>, ptr %i.cc, align 1, !alias.scope !11
  %i.cd = xor <16 x i8> %wide.load37, %wide.load
  %i.ce = xor <16 x i8> %wide.load38, %wide.load36
  %i.cf = getelementptr i8, ptr %i.bu, i64 %index ; 2 uses
  %i.cg = getelementptr i8, ptr %i.cf, i64 16
  store <16 x i8> %i.cd, ptr %i.cf, align 1, !alias.scope !14, !noalias !11
  store <16 x i8> %i.ce, ptr %i.cg, align 1, !alias.scope !14, !noalias !11
  %index.next = add nuw i64 %index, 32
  br label %vector.body, !llvm.loop !16

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check
  %n.vec39 = and i64 %wide.trip.count60.i, 4      ; 3 uses
  %i.ch = getelementptr i8, ptr %i.bd, i64 2
  %wide.load42 = load <4 x i8>, ptr %i.ch, align 1, !alias.scope !11
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index40 = phi i64 [ 0, %vec.epilog.ph ], [ %index.next43, %vec.epilog.vector.body ] ; 3 uses
  %i.ci = getelementptr i8, ptr %i.bd, i64 %index40
  %i.cj = getelementptr i8, ptr %i.ci, i64 6
  %wide.load41 = load <4 x i8>, ptr %i.cj, align 1, !alias.scope !11
  %i.ck = xor <4 x i8> %wide.load42, %wide.load41
  %i.cl = getelementptr i8, ptr %i.bu, i64 %index40
  store <4 x i8> %i.ck, ptr %i.cl, align 1, !alias.scope !14, !noalias !11
  %index.next43 = add nuw i64 %index40, 4         ; 2 uses
  %i.cm = icmp eq i64 %index.next43, %n.vec39
  br i1 %i.cm, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !19

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n44 = icmp eq i64 %n.vec39, %wide.trip.count60.i
  br i1 %cmp.n44, label %.loopexit, label %.lr.ph53.i.preheader

.lr.ph53.i.preheader:                             ; preds = %vector.memcheck, %iter.check, %vec.epilog.middle.block
  %indvars.iv57.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %iter.check ], [ %n.vec39, %vec.epilog.middle.block ] ; 5 uses
  %xtraiter = and i64 %wide.trip.count60.i, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph53.i.prol.loopexit, label %.lr.ph53.i.prol

.lr.ph53.i.prol:                                  ; preds = %.lr.ph53.i.preheader
  %i.cn = getelementptr i8, ptr %i.bd, i64 %indvars.iv57.i.ph
  %i.co = getelementptr i8, ptr %i.cn, i64 6
  %i.cp = load i8, ptr %i.co, align 1
  %i.cq = getelementptr i8, ptr %i.bd, i64 2
  %i.cr = load i8, ptr %i.cq, align 1
  %i.cs = xor i8 %i.cr, %i.cp
  %i.ct = getelementptr i8, ptr %i.bu, i64 %indvars.iv57.i.ph
  store i8 %i.cs, ptr %i.ct, align 1
  %indvars.iv.next58.i.prol = or disjoint i64 %indvars.iv57.i.ph, 1
  br label %.lr.ph53.i.prol.loopexit

.lr.ph53.i.prol.loopexit:                         ; preds = %.lr.ph53.i.prol, %.lr.ph53.i.preheader
  %indvars.iv57.i.unr = phi i64 [ %indvars.iv57.i.ph, %.lr.ph53.i.preheader ], [ %indvars.iv.next58.i.prol, %.lr.ph53.i.prol ]
  %i.cu = add nsw i64 %wide.trip.count60.i, -1
  %i.cv = icmp eq i64 %indvars.iv57.i.ph, %i.cu
  br i1 %i.cv, label %.loopexit, label %.lr.ph53.i

.lr.ph53.i:                                       ; preds = %.lr.ph53.i.prol.loopexit, %.lr.ph53.i
  %indvars.iv57.i = phi i64 [ %indvars.iv.next58.i.1, %.lr.ph53.i ], [ %indvars.iv57.i.unr, %.lr.ph53.i.prol.loopexit ] ; 5 uses
  %i.cw = getelementptr i8, ptr %i.bd, i64 %indvars.iv57.i
  %i.cx = getelementptr i8, ptr %i.cw, i64 6
  %i.cy = load i8, ptr %i.cx, align 1
  %i.cz = and i64 %indvars.iv57.i, 3
  %i.da = getelementptr i8, ptr %i.bd, i64 %i.cz
  %i.db = getelementptr i8, ptr %i.da, i64 2
  %i.dc = load i8, ptr %i.db, align 1
  %i.dd = xor i8 %i.dc, %i.cy
  %i.de = getelementptr i8, ptr %i.bu, i64 %indvars.iv57.i
  store i8 %i.dd, ptr %i.de, align 1
  %indvars.iv.next58.i = add nuw nsw i64 %indvars.iv57.i, 1 ; 3 uses
  %i.df = getelementptr i8, ptr %i.bd, i64 %indvars.iv.next58.i
  %i.dg = getelementptr i8, ptr %i.df, i64 6
  %i.dh = load i8, ptr %i.dg, align 1
  %i.di = and i64 %indvars.iv.next58.i, 3
  %i.dj = getelementptr i8, ptr %i.bd, i64 %i.di
  %i.dk = getelementptr i8, ptr %i.dj, i64 2
  %i.dl = load i8, ptr %i.dk, align 1
  %i.dm = xor i8 %i.dl, %i.dh
  %i.dn = getelementptr i8, ptr %i.bu, i64 %indvars.iv.next58.i
  store i8 %i.dm, ptr %i.dn, align 1
  %indvars.iv.next58.i.1 = add nuw nsw i64 %indvars.iv57.i, 2 ; 2 uses
  %exitcond61.not.i.1 = icmp eq i64 %indvars.iv.next58.i.1, %wide.trip.count60.i
  br i1 %exitcond61.not.i.1, label %.loopexit, label %.lr.ph53.i, !llvm.loop !20

solaredge_decrypt.exit:                           ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #8
  br label %solaredge_decrypt.exit.thread

.loopexit:                                        ; preds = %.lr.ph53.i.prol.loopexit, %.lr.ph53.i, %vec.epilog.middle.block, %._crit_edge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #8
  %i.do = call ptr @tvb_new_child_real_data(ptr noundef %0, ptr noundef %i.bu, i32 noundef %i.bs, i32 noundef %i.bs) ; 3 uses
  %i.dp = call i32 @tvb_get_uint32(ptr noundef %i.do, i32 noundef 0, i32 noundef -2147483648)
  %i.dq = icmp eq i32 %i.dp, 2035692562
  br i1 %i.dq, label %bb.k, label %solaredge_decrypt.exit.thread

bb.k:                                             ; preds = %.loopexit
  %i.dr = call ptr @add_new_data_source(ptr noundef %1, ptr noundef %i.do, ptr noundef nonnull @.str.526) ; 0 uses
  %i.ds = load i32, ptr @ett_solaredge_packet_decrypted, align 4
  %i.dt = call fastcc i32 @dissect_solaredge_recursive(ptr noundef %i.do, ptr noundef %1, ptr noundef %2, i32 noundef %i.ds, ptr noundef %4) ; 0 uses
  br label %solaredge_decrypt.exit.thread

solaredge_decrypt.exit.thread:                    ; preds = %bb.g, %bb.k, %.loopexit, %solaredge_decrypt.exit, %bb.f, %bb.e
  %i.du = add nuw nsw i32 %i.u, 20                ; 2 uses
  br label %dissect_solaredge_devicedata.exit

bb.l:                                             ; preds = %bb.d
  %i.dv = load i32, ptr @hf_solaredge_post_type, align 4
  %i.dw = tail call ptr @proto_tree_add_item(ptr noundef %i.o, i32 noundef %i.dv, ptr noundef %0, i32 noundef 20, i32 noundef %i.u, i32 noundef 0)
  %i.dx = load i32, ptr @ett_solaredge_packet_post, align 4
  %i.dy = tail call ptr @proto_item_add_subtree(ptr noundef %i.dw, i32 noundef %i.dx)
  br label %tailrecurse.i

tailrecurse.i:                                    ; preds = %bb.an, %bb.l
  %.tr267.i = phi i32 [ 20, %bb.l ], [ %.1.i99, %bb.an ] ; 52 uses
  %i.dz = tail call zeroext i16 @tvb_get_letohs(ptr noundef %0, i32 noundef %.tr267.i), !inline_history !21
  %i.ea = add nuw nsw i32 %.tr267.i, 2            ; 2 uses
  %i.eb = tail call i32 @tvb_get_letohl(ptr noundef %0, i32 noundef %i.ea), !inline_history !21 ; 0 uses
  %i.ec = add nuw nsw i32 %.tr267.i, 6            ; 2 uses
  %i.ed = tail call zeroext i16 @tvb_get_letohs(ptr noundef %0, i32 noundef %i.ec), !inline_history !21
  %i.ee = load i32, ptr @hf_solaredge_post_device_type, align 4
  %i.ef = zext i16 %i.ed to i32                   ; 3 uses
  %i.eg = add nuw nsw i32 %i.ef, 8
  %i.eh = tail call ptr @proto_tree_add_item(ptr noundef %i.dy, i32 noundef %i.ee, ptr noundef %0, i32 noundef %.tr267.i, i32 noundef %i.eg, i32 noundef 0), !inline_history !21
  %i.ei = load i32, ptr @ett_solaredge_packet_post_device, align 4
  %i.ej = tail call ptr @proto_item_add_subtree(ptr noundef %i.eh, i32 noundef %i.ei), !inline_history !21 ; 52 uses
  %i.ek = load i32, ptr @hf_solaredge_post_device_type_type, align 4
  %i.el = tail call ptr @proto_tree_add_item(ptr noundef %i.ej, i32 noundef %i.ek, ptr noundef %0, i32 noundef %.tr267.i, i32 noundef 2, i32 noundef -2147483648), !inline_history !21 ; 0 uses
  %i.em = load i32, ptr @hf_solaredge_post_device_id_type, align 4
  %i.en = tail call ptr @proto_tree_add_item(ptr noundef %i.ej, i32 noundef %i.em, ptr noundef %0, i32 noundef %i.ea, i32 noundef 4, i32 noundef -2147483648), !inline_history !21 ; 0 uses
  %i.eo = load i32, ptr @hf_solaredge_post_length_type, align 4
  %i.ep = tail call ptr @proto_tree_add_item(ptr noundef %i.ej, i32 noundef %i.eo, ptr noundef %0, i32 noundef %i.ec, i32 noundef 2, i32 noundef -2147483648), !inline_history !21 ; 0 uses
  %i.eq = add nuw nsw i32 %.tr267.i, 8            ; 6 uses
  %i.er = load ptr, ptr %i.j, align 8
  tail call void @col_append_str(ptr noundef %i.er, i32 noundef 25, ptr noundef nonnull @.str.527), !inline_history !21
  tail call void @increment_dissection_depth(ptr noundef %1), !inline_history !21
  %i.es = load ptr, ptr %i.j, align 8             ; 6 uses
  switch i16 %i.dz, label %bb.al [
    i16 0, label %bb.m
    i16 16, label %bb.p
    i16 17, label %bb.ae
    i16 128, label %bb.af
    i16 768, label %bb.ag
end_hunk_0
