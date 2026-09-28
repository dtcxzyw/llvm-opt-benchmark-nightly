Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-ssh?download=true
inline.NumInlined: 154
inline.NumDeleted: 58
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@dissect_ssh:bb.a
  %.not.i126 = icmp eq ptr %i.qr, null
  br i1 %.not.i126, label %.thread172, label %bb.ds

bb.ds:                                            ; preds = %proto_item_set_generated.exit
  %i.qs = call i32 @fflush(ptr noundef nonnull %i.qr) ; 0 uses
  br label %.thread172

.thread172:                                       ; preds = %bb.ds, %proto_item_set_generated.exit, %bb.cd, %bb.ca, %ssh_dissect_protocol.exit, %ssh_dissect_ssh2.exit.thread169
  %i.qt = call i32 @tvb_captured_length(ptr noundef %0)
  ret i32 %i.qt
}

; Function Attrs: null_pointer_is_valid
declare void @reassembly_table_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @register_shutdown_routine(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @ssh_shutdown() #0 {
bb.a:
  %i.a = load ptr, ptr @ssh_master_key_map, align 8
  tail call void @g_hash_table_destroy(ptr noundef %i.a)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @proto_reg_handoff_ssh() local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @ssh_debug_file_name, align 8
  tail call fastcc void @ssh_set_debug(ptr noundef %i.a)
  %i.b = load ptr, ptr @ssh_handle, align 8
  tail call void @dissector_add_uint_range_with_preference(ptr noundef nonnull @.str.538, ptr noundef nonnull @.str.539, ptr noundef %i.b)
  %i.c = load ptr, ptr @ssh_handle, align 8
  tail call void @dissector_add_uint(ptr noundef nonnull @.str.540, i32 noundef 22, ptr noundef %i.c)
  %i.d = load ptr, ptr @ssh_handle, align 8
  tail call void @dissector_add_uint(ptr noundef nonnull @.str.541, i32 noundef 45, ptr noundef %i.d)
  %i.e = load i32, ptr @proto_ssh, align 4
  %i.f = tail call ptr @find_dissector_add_dependency(ptr noundef nonnull @.str.542, i32 noundef %i.e)
  store ptr %i.f, ptr @sftp_handle, align 8
  %i.g = load i32, ptr @proto_ssh, align 4
  %i.h = tail call ptr @find_dissector_add_dependency(ptr noundef nonnull @.str.543, i32 noundef %i.g)
  store ptr %i.h, ptr @data_text_lines_handle, align 8
  %i.i = load i32, ptr @proto_ssh, align 4
  tail call void @heur_dissector_add(ptr noundef nonnull @.str.544, ptr noundef nonnull @dissect_ssh_heur, ptr noundef nonnull @.str.545, ptr noundef nonnull @.str.546, i32 noundef %i.i, i32 noundef 1)
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @ssh_set_debug(ptr nofree noundef readonly captures(address_is_null) %0) unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null                    ; 2 uses
  br i1 %.not, label %.tail, label %sub_0

sub_0:                                            ; preds = %bb.a
  %i.a = load i8, ptr %0, align 1
  %.not8 = icmp eq i8 %i.a, 45
  br i1 %.not8, label %sub_1, label %.tail

sub_1:                                            ; preds = %sub_0
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.c = load i8, ptr %i.b, align 1
  %i.d = icmp ne i8 %i.c, 0
  br label %.tail

.tail:                                            ; preds = %sub_1, %sub_0, %bb.a
  %i.e = phi i1 [ true, %bb.a ], [ true, %sub_0 ], [ %i.d, %sub_1 ] ; 2 uses
  %.b = load i1, ptr @ssh_set_debug.debug_file_must_be_closed, align 4
  br i1 %.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.tail
  %i.f = load ptr, ptr @ssh_debug_file, align 8
  %i.g = tail call i32 @fclose(ptr noundef %i.f)  ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.tail
  br i1 %i.e, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr @stderr, align 8
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  br i1 %.not, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %strcmpload = load i8, ptr %0, align 1
  %i.i = icmp eq i8 %strcmpload, 0
  br i1 %i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.j = tail call noalias ptr @fopen(ptr noundef nonnull %0, ptr noundef nonnull @.str.892)
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.f, %bb.g, %bb.d
  %.sink = phi ptr [ %i.h, %bb.d ], [ %i.j, %bb.g ], [ null, %bb.f ], [ null, %bb.e ] ; 2 uses
  store ptr %.sink, ptr @ssh_debug_file, align 8
  %i.k = icmp ne ptr %.sink, null
  %or.cond = select i1 %i.e, i1 %i.k, i1 false
  store i1 %or.cond, ptr @ssh_set_debug.debug_file_must_be_closed, align 4
  tail call void (ptr, ...) @ssh_debug_printf(ptr noundef nonnull @.str.893)
  %i.l = tail call ptr @gnutls_check_version(ptr noundef null) #26
  tail call void (ptr, ...) @ssh_debug_printf(ptr noundef nonnull @.str.894, ptr noundef %i.l)
  %i.m = tail call ptr @gcry_check_version(ptr noundef null)
  tail call void (ptr, ...) @ssh_debug_printf(ptr noundef nonnull @.str.895, ptr noundef %i.m)
  tail call void (ptr, ...) @ssh_debug_printf(ptr noundef nonnull @.str.755)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare void @dissector_add_uint_range_with_preference(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @dissector_add_uint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @find_dissector_add_dependency(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @heur_dissector_add(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal noundef zeroext i1 @dissect_ssh_heur(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree readnone captures(none) %3) #0 {
bb.a:
  %i.a = tail call i32 @tvb_strneql(ptr noundef %0, i32 noundef 0, ptr noundef nonnull @.str.674, i64 noundef 4)
  %.not = icmp eq i32 %i.a, 0                     ; 2 uses
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @find_or_create_conversation(ptr noundef %1)
  %i.c = load ptr, ptr @ssh_handle, align 8
  tail call void @conversation_set_dissector(ptr noundef %i.b, ptr noundef %i.c)
  %i.d = tail call i32 @dissect_ssh(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr poison) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret i1 %.not
}

; Function Attrs: null_pointer_is_valid
declare void @g_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind null_pointer_is_valid willreturn memory(argmem: read)
declare ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable
define internal void @ssh_debug_printf(ptr noundef %0, ...) unnamed_addr #6 {
bb.a:
  %1 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  %i.a = load ptr, ptr @ssh_debug_file, align 8
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.va_start.p0(ptr nonnull %1)
  %i.b = load ptr, ptr @ssh_debug_file, align 8
  %i.c = call i32 @__vfprintf_chk(ptr noundef %i.b, i32 noundef 2, ptr noundef %0, ptr noundef nonnull %1) #25 ; 0 uses
  call void @llvm.va_end.p0(ptr nonnull %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  ret void
}

; Function Attrs: null_pointer_is_valid
declare noalias ptr @g_strndup(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @ssh_keylog_process_line(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @g_strsplit(ptr noundef %0, ptr noundef nonnull @.str.661, i32 noundef 3) ; 6 uses
  %i.b = tail call i32 @g_strv_length(ptr noundef %i.a)
  %i.c = icmp eq i32 %i.b, 3
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %i.a, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.f = tail call i32 @g_strv_length(ptr noundef %i.a)
  %i.g = icmp eq i32 %i.f, 2
  br i1 %i.g, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, i32, ptr, i64, ptr, ptr, ...) @ws_log_full(ptr noundef nonnull @.str.663, i32 noundef 3, ptr noundef null, i64 noundef -1, ptr noundef null, ptr noundef nonnull @.str.664)
  br label %.loopexit

bb.e:                                             ; preds = %bb.c, %bb.b
  %.sink = phi i64 [ 16, %bb.b ], [ 8, %bb.c ]
  %.0125 = phi ptr [ %i.e, %bb.b ], [ @.str.662, %bb.c ] ; 2 uses
  %i.h = getelementptr i8, ptr %i.a, i64 %.sink
  %.0123 = load ptr, ptr %i.a, align 8            ; 2 uses
  %.0130 = load ptr, ptr %i.h, align 8            ; 2 uses
  %i.i = tail call i64 @strlen(ptr noundef %.0130) #22 ; 4 uses
  %i.j = tail call i64 @strlen(ptr noundef %.0123) #22 ; 4 uses
  %i.k = and i64 %i.i, 1
  %.not = icmp eq i64 %i.k, 0
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, i32, ptr, i64, ptr, ptr, ...) @ws_log_full(ptr noundef nonnull @.str.663, i32 noundef 3, ptr noundef null, i64 noundef -1, ptr noundef null, ptr noundef nonnull @.str.665)
  br label %.loopexit

bb.g:                                             ; preds = %bb.e
  %i.l = and i64 %i.j, 1
  %.not137 = icmp eq i64 %i.l, 0
  br i1 %.not137, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, i32, ptr, i64, ptr, ptr, ...) @ws_log_full(ptr noundef nonnull @.str.663, i32 noundef 3, ptr noundef null, i64 noundef -1, ptr noundef null, ptr noundef nonnull @.str.666)
  br label %.loopexit

bb.i:                                             ; preds = %bb.g
  %i.m = lshr exact i64 %i.j, 1                   ; 4 uses
  %i.n = trunc i64 %i.m to i32                    ; 3 uses
  %i.o = add i32 %i.n, -1026
  %or.cond.i = icmp ult i32 %i.o, -1025
  br i1 %or.cond.i, label %ssh_kex_make_bignum.exit.thread, label %ssh_kex_make_bignum.exit

ssh_kex_make_bignum.exit:                         ; preds = %bb.i
  %i.p = tail call ptr @wmem_file_scope()
  %i.q = tail call noalias dereferenceable_or_null(16) ptr @wmem_alloc0(ptr noundef %i.p, i64 noundef 16) #23 ; 3 uses
  %i.r = tail call ptr @wmem_file_scope()
  %i.s = and i64 %i.m, 4294967295
  %i.t = tail call noalias ptr @wmem_alloc0(ptr noundef %i.r, i64 noundef %i.s) #23 ; 3 uses
  store ptr %i.t, ptr %i.q, align 8
  %i.u = getelementptr i8, ptr %i.q, i64 8
  store i32 %i.n, ptr %i.u, align 8
  %i.v = icmp eq ptr %i.q, null
  br i1 %i.v, label %ssh_kex_make_bignum.exit.thread, label %bb.j

ssh_kex_make_bignum.exit.thread:                  ; preds = %bb.i, %ssh_kex_make_bignum.exit
  tail call void (ptr, i32, ptr, i64, ptr, ptr, ...) @ws_log_full(ptr noundef nonnull @.str.663, i32 noundef 3, ptr noundef null, i64 noundef -1, ptr noundef null, ptr noundef nonnull @.str.667, i64 noundef %i.j)
  br label %.loopexit

bb.j:                                             ; preds = %ssh_kex_make_bignum.exit
  %i.w = lshr exact i64 %i.i, 1                   ; 4 uses
  %i.x = trunc i64 %i.w to i32                    ; 3 uses
  %i.y = add i32 %i.x, -1026
  %or.cond.i149 = icmp ult i32 %i.y, -1025
  br i1 %or.cond.i149, label %ssh_kex_make_bignum.exit151.thread, label %ssh_kex_make_bignum.exit151

ssh_kex_make_bignum.exit151:                      ; preds = %bb.j
  %i.z = tail call ptr @wmem_file_scope()
  %i.aa = tail call noalias dereferenceable_or_null(16) ptr @wmem_alloc0(ptr noundef %i.z, i64 noundef 16) #23 ; 3 uses
  %i.ab = tail call ptr @wmem_file_scope()
  %i.ac = and i64 %i.w, 4294967295
  %i.ad = tail call noalias ptr @wmem_alloc0(ptr noundef %i.ab, i64 noundef %i.ac) #23 ; 3 uses
  store ptr %i.ad, ptr %i.aa, align 8
  %i.ae = getelementptr i8, ptr %i.aa, i64 8
  store i32 %i.x, ptr %i.ae, align 8
  %i.af = icmp eq ptr %i.aa, null
  br i1 %i.af, label %ssh_kex_make_bignum.exit151.thread, label %.preheader

.preheader:                                       ; preds = %ssh_kex_make_bignum.exit151
  %.not141155.not = icmp eq i64 %i.i, 0
  br i1 %.not141155.not, label %.critedge.preheader, label %.lr.ph

ssh_kex_make_bignum.exit151.thread:               ; preds = %bb.j, %ssh_kex_make_bignum.exit151
  tail call void (ptr, i32, ptr, i64, ptr, ptr, ...) @ws_log_full(ptr noundef nonnull @.str.663, i32 noundef 3, ptr noundef null, i64 noundef -1, ptr noundef null, ptr noundef nonnull @.str.668, i64 noundef %i.i)
  br label %.loopexit

.critedge.preheader:                              ; preds = %bb.k, %.preheader
  %.not146157.not = icmp eq i64 %i.j, 0
  br i1 %.not146157.not, label %.critedge148, label %.lr.ph159

.lr.ph:                                           ; preds = %.preheader, %bb.k
  %.0128156 = phi i64 [ %i.at, %bb.k ], [ 0, %.preheader ] ; 3 uses
  %i.ag = shl nuw i64 %.0128156, 1
  %i.ah = getelementptr i8, ptr %.0130, i64 %i.ag ; 2 uses
  %i.ai = load i8, ptr %i.ah, align 1
  %i.aj = tail call i32 @ws_xton(i8 noundef signext %i.ai)
  %i.ak = getelementptr i8, ptr %i.ah, i64 1
  %i.al = load i8, ptr %i.ak, align 1
  %i.am = tail call i32 @ws_xton(i8 noundef signext %i.al) ; 2 uses
  %sext = shl i32 %i.aj, 24                       ; 2 uses
  %i.an = icmp ne i32 %sext, -16777216
  %sext138.mask = and i32 %i.am, 255
  %i.ao = icmp ne i32 %sext138.mask, 255
  %or.cond.not = select i1 %i.an, i1 %i.ao, i1 false
  br i1 %or.cond.not, label %bb.k, label %.loopexit

bb.k:                                             ; preds = %.lr.ph
  %i.ap = lshr exact i32 %sext, 20
  %i.aq = or i32 %i.ap, %i.am
  %i.ar = trunc i32 %i.aq to i8
  %i.as = getelementptr i8, ptr %i.ad, i64 %.0128156
  store i8 %i.ar, ptr %i.as, align 1
  %i.at = add nuw nsw i64 %.0128156, 1            ; 2 uses
  %exitcond.not = icmp eq i64 %i.at, %i.w
  br i1 %exitcond.not, label %.critedge.preheader, label %.lr.ph, !llvm.loop !18

.lr.ph159:                                        ; preds = %.critedge.preheader, %.critedge
  %.0127158 = phi i64 [ %i.bh, %.critedge ], [ 0, %.critedge.preheader ] ; 3 uses
  %i.au = shl nuw i64 %.0127158, 1
  %i.av = getelementptr i8, ptr %.0123, i64 %i.au ; 2 uses
  %i.aw = load i8, ptr %i.av, align 1
  %i.ax = tail call i32 @ws_xton(i8 noundef signext %i.aw)
  %i.ay = getelementptr i8, ptr %i.av, i64 1
  %i.az = load i8, ptr %i.ay, align 1
  %i.ba = tail call i32 @ws_xton(i8 noundef signext %i.az) ; 2 uses
  %sext142 = shl i32 %i.ax, 24                    ; 2 uses
  %i.bb = icmp ne i32 %sext142, -16777216
  %sext143.mask = and i32 %i.ba, 255
  %i.bc = icmp ne i32 %sext143.mask, 255
  %or.cond8.not = select i1 %i.bb, i1 %i.bc, i1 false
  br i1 %or.cond8.not, label %.critedge, label %.loopexit

.critedge:                                        ; preds = %.lr.ph159
  %i.bd = lshr exact i32 %sext142, 20
  %i.be = or i32 %i.bd, %i.ba
  %i.bf = trunc i32 %i.be to i8
  %i.bg = getelementptr i8, ptr %i.t, i64 %.0127158
  store i8 %i.bf, ptr %i.bg, align 1
  %i.bh = add nuw nsw i64 %.0127158, 1            ; 2 uses
  %exitcond160.not = icmp eq i64 %i.bh, %i.m
  br i1 %exitcond160.not, label %.critedge148, label %.lr.ph159, !llvm.loop !19

.critedge148:                                     ; preds = %.critedge, %.critedge.preheader
  %i.bi = tail call noalias dereferenceable_or_null(16) ptr @g_malloc(i64 noundef 16) #27 ; 3 uses
  %i.bj = getelementptr i8, ptr %i.bi, i64 8
  store i32 %i.x, ptr %i.bj, align 8
  %i.bk = and i64 %i.w, 4294967295
  %i.bl = tail call ptr @g_memdup2(ptr noundef %i.ad, i64 noundef %i.bk) #23
  store ptr %i.bl, ptr %i.bi, align 8
  %i.bm = tail call noalias dereferenceable_or_null(16) ptr @g_malloc(i64 noundef 16) #27 ; 3 uses
  %i.bn = getelementptr i8, ptr %i.bm, i64 8
  store i32 %i.n, ptr %i.bn, align 8
  %i.bo = and i64 %i.m, 4294967295
  %i.bp = tail call ptr @g_memdup2(ptr noundef %i.t, i64 noundef %i.bo) #23
  store ptr %i.bp, ptr %i.bm, align 8
  %i.bq = tail call i64 @strlen(ptr noundef %.0125) #22
  %i.br = add i64 %i.bq, 1
  %i.bs = tail call ptr @g_memdup2(ptr noundef %.0125, i64 noundef %i.br) #23
  %i.bt = tail call noalias dereferenceable_or_null(16) ptr @g_malloc(i64 noundef 16) #27 ; 3 uses
  store ptr %i.bs, ptr %i.bt, align 8
  %i.bu = getelementptr i8, ptr %i.bt, i64 8
  store ptr %i.bi, ptr %i.bu, align 8
  %i.bv = load ptr, ptr @ssh_master_key_map, align 8
  %i.bw = tail call i32 @g_hash_table_insert(ptr noundef %i.bv, ptr noundef %i.bm, ptr noundef %i.bt) ; 0 uses
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %.lr.ph159, %ssh_kex_make_bignum.exit.thread, %.critedge148, %ssh_kex_make_bignum.exit151.thread, %bb.h, %bb.f, %bb.d
  tail call void @g_strfreev(ptr noundef %i.a)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #7

; Function Attrs: null_pointer_is_valid
declare i32 @__vfprintf_chk(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @g_strsplit(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @g_strv_length(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @ws_log_full(ptr noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @g_strfreev(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind null_pointer_is_valid willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare i32 @ws_xton(i8 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare noalias ptr @g_malloc(i64 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid allocsize(1)
declare ptr @g_memdup2(ptr noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare i32 @g_hash_table_insert(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(1)
declare noalias ptr @wmem_alloc0(ptr noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare ptr @wmem_file_scope() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind null_pointer_is_valid memory(argmem: readwrite)
declare ptr @__memcpy_chk(ptr noalias noundef writeonly, ptr noalias noundef readonly captures(none), i64 noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare ptr @find_or_create_conversation(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @conversation_get_proto_data(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal noundef i32 @ssh_dissect_kex_dh(i8 noundef zeroext %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr nofree noundef captures(address_is_null) %5) #0 {
bb.a:
  %i.a = load i32, ptr @hf_ssh2_kex_dh_msg_code, align 4
  %i.b = tail call ptr @proto_tree_add_item(ptr noundef %4, i32 noundef %i.a, ptr noundef %1, i32 noundef %3, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.c = add i32 %3, 1                            ; 8 uses
  %i.d = getelementptr i8, ptr %2, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr i8, ptr %2, i64 416        ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = zext i8 %0 to i32
  %i.i = tail call ptr @val_to_str(ptr noundef %i.g, i32 noundef %i.h, ptr noundef nonnull @ssh2_kex_dh_msg_vals, ptr noundef nonnull @.str.678)
  tail call void @col_append_sep_str(ptr noundef %i.e, i32 noundef 25, ptr noundef null, ptr noundef %i.i)
  switch i8 %0, label %bb.h [
    i8 30, label %bb.b
    i8 31, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %i.j = tail call i32 @tvb_get_ntohl(ptr noundef %1, i32 noundef %i.c) ; 3 uses
  %i.k = add i32 %i.j, -1026
  %or.cond.i.i = icmp ult i32 %i.k, -1025
  br i1 %or.cond.i.i, label %ssh_kex_make_bignum.exit.thread.i, label %ssh_kex_make_bignum.exit.i

ssh_kex_make_bignum.exit.thread.i:                ; preds = %bb.b
  %i.l = getelementptr i8, ptr %5, i64 616
  store ptr null, ptr %i.l, align 8
  br label %bb.c

ssh_kex_make_bignum.exit.i:                       ; preds = %bb.b
  %i.m = tail call ptr @wmem_file_scope()
  %i.n = tail call noalias dereferenceable_or_null(16) ptr @wmem_alloc0(ptr noundef %i.m, i64 noundef 16) #23 ; 4 uses
  %i.o = tail call ptr @wmem_file_scope()
  %i.p = zext nneg i32 %i.j to i64                ; 2 uses
  %i.q = tail call noalias ptr @wmem_alloc0(ptr noundef %i.o, i64 noundef %i.p) #23 ; 2 uses
  store ptr %i.q, ptr %i.n, align 8
  %i.r = getelementptr i8, ptr %i.n, i64 8
  store i32 %i.j, ptr %i.r, align 8
  %i.s = getelementptr i8, ptr %5, i64 616
  store ptr %i.n, ptr %i.s, align 8
  %.not.not.i = icmp eq ptr %i.n, null
  br i1 %.not.not.i, label %bb.c, label %ssh_read_e.exit

ssh_read_e.exit:                                  ; preds = %ssh_kex_make_bignum.exit.i
  %i.t = add i32 %3, 5                            ; 2 uses
  %i.u = tail call ptr @tvb_memcpy(ptr noundef %1, ptr noundef %i.q, i32 noundef %i.t, i64 noundef %i.p) ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %ssh_kex_make_bignum.exit.thread.i, %ssh_kex_make_bignum.exit.i
  %i.v = tail call i32 @tvb_get_ntohl(ptr noundef %1, i32 noundef %i.c)
  %i.w = tail call ptr (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @proto_tree_add_expert_format(ptr noundef %4, ptr noundef %2, ptr noundef nonnull @ei_ssh_invalid_keylen, ptr noundef %1, i32 noundef %i.c, i32 noundef 2, ptr noundef nonnull @.str.679, i32 noundef %i.v) ; 0 uses
  %.pre = add i32 %3, 5
  br label %bb.d

bb.d:                                             ; preds = %ssh_read_e.exit, %bb.c
  %.pre-phi = phi i32 [ %i.t, %ssh_read_e.exit ], [ %.pre, %bb.c ] ; 2 uses
  %i.x = load i32, ptr @hf_ssh_dh_e, align 4
  %i.y = tail call i32 @tvb_get_ntohl(ptr noundef %1, i32 noundef %i.c) ; 3 uses
  %i.z = load i32, ptr @hf_ssh_mpint_length, align 4
  %i.aa = tail call ptr @proto_tree_add_uint(ptr noundef %4, i32 noundef %i.z, ptr noundef %1, i32 noundef %i.c, i32 noundef 4, i32 noundef %i.y) ; 0 uses
  %i.ab = tail call ptr @proto_tree_add_item(ptr noundef %4, i32 noundef %i.x, ptr noundef %1, i32 noundef %.pre-phi, i32 noundef %i.y, i32 noundef 0) ; 0 uses
  %i.ac = add i32 %.pre-phi, %i.y
  br label %bb.h

bb.e:                                             ; preds = %bb.a
  %i.ad = load i32, ptr @ett_key_exchange_host_key, align 4
  %i.ae = tail call fastcc i32 @ssh_tree_add_hostkey(ptr noundef %1, ptr noundef %2, i32 noundef %i.c, ptr noundef %4, ptr noundef nonnull @.str.680, i32 noundef %i.ad, ptr noundef %5)
  %i.af = add i32 %i.ae, %i.c                     ; 7 uses
  %i.ag = tail call i32 @tvb_get_ntohl(ptr noundef %1, i32 noundef %i.af) ; 3 uses
  %i.ah = add i32 %i.ag, -1026
  %or.cond.i.i49 = icmp ult i32 %i.ah, -1025
  br i1 %or.cond.i.i49, label %ssh_kex_make_bignum.exit.thread.i53, label %ssh_kex_make_bignum.exit.i50

ssh_kex_make_bignum.exit.thread.i53:              ; preds = %bb.e
  %i.ai = getelementptr i8, ptr %5, i64 624
  store ptr null, ptr %i.ai, align 8
  br label %bb.f

ssh_kex_make_bignum.exit.i50:                     ; preds = %bb.e
  %i.aj = tail call ptr @wmem_file_scope()
  %i.ak = tail call noalias dereferenceable_or_null(16) ptr @wmem_alloc0(ptr noundef %i.aj, i64 noundef 16) #23 ; 4 uses
  %i.al = tail call ptr @wmem_file_scope()
  %i.am = zext nneg i32 %i.ag to i64              ; 2 uses
  %i.an = tail call noalias ptr @wmem_alloc0(ptr noundef %i.al, i64 noundef %i.am) #23 ; 2 uses
  store ptr %i.an, ptr %i.ak, align 8
  %i.ao = getelementptr i8, ptr %i.ak, i64 8
  store i32 %i.ag, ptr %i.ao, align 8
  %i.ap = getelementptr i8, ptr %5, i64 624
  store ptr %i.ak, ptr %i.ap, align 8
  %.not.not.i51 = icmp eq ptr %i.ak, null
  br i1 %.not.not.i51, label %bb.f, label %ssh_read_f.exit

ssh_read_f.exit:                                  ; preds = %ssh_kex_make_bignum.exit.i50
  %i.aq = add i32 %i.af, 4                        ; 2 uses
  %i.ar = tail call ptr @tvb_memcpy(ptr noundef %1, ptr noundef %i.an, i32 noundef %i.aq, i64 noundef %i.am) ; 0 uses
  br label %bb.g

bb.f:                                             ; preds = %ssh_kex_make_bignum.exit.thread.i53, %ssh_kex_make_bignum.exit.i50
  %i.as = tail call i32 @tvb_get_ntohl(ptr noundef %1, i32 noundef %i.af)
  %i.at = tail call ptr (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @proto_tree_add_expert_format(ptr noundef %4, ptr noundef %2, ptr noundef nonnull @ei_ssh_invalid_keylen, ptr noundef %1, i32 noundef %i.af, i32 noundef 2, ptr noundef nonnull @.str.679, i32 noundef %i.as) ; 0 uses
  %.pre56 = add i32 %i.af, 4
  br label %bb.g

bb.g:                                             ; preds = %ssh_read_f.exit, %bb.f
  %.pre-phi57 = phi i32 [ %i.aq, %ssh_read_f.exit ], [ %.pre56, %bb.f ] ; 2 uses
  tail call fastcc void @ssh_choose_enc_mac(ptr noundef %5)
  %i.au = load ptr, ptr %i.f, align 8
  tail call fastcc void @ssh_keylog_hash_write_secret(ptr noundef %5, ptr noundef %i.au)
  %i.av = load i32, ptr @hf_ssh_dh_f, align 4
  %i.aw = tail call i32 @tvb_get_ntohl(ptr noundef %1, i32 noundef %i.af) ; 3 uses
  %i.ax = load i32, ptr @hf_ssh_mpint_length, align 4
  %i.ay = tail call ptr @proto_tree_add_uint(ptr noundef %4, i32 noundef %i.ax, ptr noundef %1, i32 noundef %i.af, i32 noundef 4, i32 noundef %i.aw) ; 0 uses
  %i.az = tail call ptr @proto_tree_add_item(ptr noundef %4, i32 noundef %i.av, ptr noundef %1, i32 noundef %.pre-phi57, i32 noundef %i.aw, i32 noundef 0) ; 0 uses
  %i.ba = add i32 %.pre-phi57, %i.aw              ; 2 uses
  %i.bb = load i32, ptr @ett_key_exchange_host_sig, align 4
  %i.bc = tail call fastcc i32 @ssh_tree_add_hostsignature(ptr noundef %1, ptr noundef %2, i32 noundef %i.ba, ptr noundef %4, i32 noundef %i.bb)
  %i.bd = add i32 %i.bc, %i.ba
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.d, %bb.a
  %.0 = phi i32 [ %i.c, %bb.a ], [ %i.ac, %bb.d ], [ %i.bd, %bb.g ]
end_hunk_0
begin_hunk_1_@ssh_dissect_term_modes:bb.a
  br label %bb.d

.fold.split107:                                   ; preds = %.preheader.42
  br label %bb.d

.fold.split108:                                   ; preds = %.preheader.42
  br label %bb.d

.fold.split109:                                   ; preds = %.preheader.42
  br label %bb.d

.fold.split110:                                   ; preds = %.preheader.42
  br label %bb.d

.fold.split111:                                   ; preds = %.preheader.42
  br label %bb.d

bb.d:                                             ; preds = %.preheader.42, %.fold.split111, %.fold.split110, %.fold.split109, %.fold.split108, %.fold.split107, %.fold.split106, %.fold.split105, %.fold.split104, %.fold.split103, %.fold.split102, %.fold.split101, %.fold.split100, %.fold.split99, %.fold.split98, %bb.b, %.fold.split97, %.fold.split96, %.fold.split95, %.fold.split94, %.fold.split93, %.fold.split92, %.fold.split91, %.fold.split90, %.fold.split89, %.fold.split88, %.fold.split87, %.fold.split86, %.fold.split85, %.fold.split84, %.fold.split83, %.fold.split82, %.fold.split81, %.fold.split80, %.fold.split79, %.fold.split78, %.fold.split77, %.fold.split76, %.fold.split75, %.fold.split74, %.fold.split73, %.fold.split72, %.fold.split71, %.fold.split70, %.fold.split69, %.fold.split68, %.fold.split67, %.fold.split66, %.fold.split65, %.fold.split64, %.fold.split63, %.fold.split62, %.fold.split61, %.fold.split60, %.fold.split59, %.fold.split
  %.lcssa = phi i64 [ 55, %.fold.split110 ], [ 1, %bb.b ], [ 54, %.fold.split109 ], [ 2, %.fold.split ], [ 3, %.fold.split59 ], [ 4, %.fold.split60 ], [ 5, %.fold.split61 ], [ 6, %.fold.split62 ], [ 7, %.fold.split63 ], [ 8, %.fold.split64 ], [ 9, %.fold.split65 ], [ 10, %.fold.split66 ], [ 11, %.fold.split67 ], [ 12, %.fold.split68 ], [ 13, %.fold.split69 ], [ 14, %.fold.split70 ], [ 15, %.fold.split71 ], [ 16, %.fold.split72 ], [ 17, %.fold.split73 ], [ 18, %.fold.split74 ], [ 19, %.fold.split75 ], [ 20, %.fold.split76 ], [ 21, %.fold.split77 ], [ 22, %.fold.split78 ], [ 23, %.fold.split79 ], [ 24, %.fold.split80 ], [ 25, %.fold.split81 ], [ 26, %.fold.split82 ], [ 27, %.fold.split83 ], [ 28, %.fold.split84 ], [ 29, %.fold.split85 ], [ 30, %.fold.split86 ], [ 31, %.fold.split87 ], [ 32, %.fold.split88 ], [ 33, %.fold.split89 ], [ 34, %.fold.split90 ], [ 35, %.fold.split91 ], [ 36, %.fold.split92 ], [ 37, %.fold.split93 ], [ 38, %.fold.split94 ], [ 39, %.fold.split95 ], [ 40, %.fold.split96 ], [ 42, %.preheader.42 ], [ 41, %.fold.split97 ], [ 43, %.fold.split98 ], [ 44, %.fold.split99 ], [ 45, %.fold.split100 ], [ 46, %.fold.split101 ], [ 47, %.fold.split102 ], [ 48, %.fold.split103 ], [ 49, %.fold.split104 ], [ 50, %.fold.split105 ], [ 51, %.fold.split106 ], [ 52, %.fold.split107 ], [ 53, %.fold.split108 ], [ 56, %.fold.split111 ]
  %i.x = getelementptr [16 x i8], ptr @ssh_dissect_term_modes.tty_opts, i64 %.lcssa
  %i.y = getelementptr i8, ptr %i.x, i64 8
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = load i32, ptr %i.z, align 4             ; 4 uses
  %i.ab = call i32 @proto_registrar_get_ftype(i32 noundef %i.aa)
  switch i32 %i.ab, label %bb.h [
    i32 2, label %bb.e
    i32 3, label %bb.f
    i32 7, label %bb.g
  ]

bb.e:                                             ; preds = %bb.d
  %i.ac = add i32 %.04453, 4
  %i.ad = call ptr @proto_tree_add_item_ret_boolean(ptr noundef %i.n, i32 noundef %i.aa, ptr noundef %0, i32 noundef %i.ac, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %i.c) ; 0 uses
  %i.ae = load i8, ptr %i.c, align 1, !range !8, !noundef !9
  %i.af = trunc nuw i8 %i.ae to i1
  %i.ag = select i1 %i.af, ptr @.str.879, ptr @.str.880
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.l, ptr noundef nonnull @.str.878, ptr noundef nonnull %i.ag)
  br label %bb.i

bb.f:                                             ; preds = %bb.d
  %i.ah = add i32 %.04453, 4
  %i.ai = call ptr @proto_tree_add_item_ret_uint(ptr noundef %i.n, i32 noundef %i.aa, ptr noundef %0, i32 noundef %i.ah, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %i.b) ; 0 uses
  %i.aj = load ptr, ptr %i.j, align 8
  %i.ak = load i32, ptr %i.b, align 4
  %i.al = trunc i32 %i.ak to i8
  %i.am = call ptr @format_char(ptr noundef %i.aj, i8 noundef signext %i.al)
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.l, ptr noundef nonnull @.str.881, ptr noundef %i.am)
  br label %bb.i

bb.g:                                             ; preds = %bb.d
  %i.an = call ptr @proto_tree_add_item_ret_uint(ptr noundef %i.n, i32 noundef %i.aa, ptr noundef %0, i32 noundef %i.s, i32 noundef 4, i32 noundef 0, ptr noundef nonnull %i.b) ; 0 uses
  %i.ao = load i32, ptr %i.b, align 4
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.l, ptr noundef nonnull @.str.876, i32 noundef %i.ao)
  br label %bb.i

bb.h:                                             ; preds = %bb.d
  call void (ptr, ...) @proto_report_dissector_bug(ptr noundef nonnull @.str.839, ptr noundef nonnull @.str.745, i32 noundef 5483) #28
  unreachable

bb.i:                                             ; preds = %bb.e, %bb.f, %bb.g, %bb.c
  %i.ap = add i32 %.04453, 5                      ; 3 uses
  %i.aq = call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %i.ap)
  %.not = icmp eq i32 %i.aq, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !94

._crit_edge:                                      ; preds = %bb.i, %bb.b, %bb.a
  %.1 = phi i32 [ 0, %bb.a ], [ %i.s, %bb.b ], [ %i.ap, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  ret i32 %.1
}

; Function Attrs: null_pointer_is_valid
declare ptr @wmem_map_new(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid willreturn memory(none)
declare i32 @g_direct_hash(ptr noundef) #18

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid willreturn memory(none)
declare i32 @g_direct_equal(ptr noundef, ptr noundef) #18

; Function Attrs: null_pointer_is_valid
declare ptr @wmem_map_insert(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @wmem_tree_new(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @wmem_map_lookup(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @wmem_tree_lookup32(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @fragment_get(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @wmem_tree_lookup32_le(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @fragment_add(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @tvb_new_chain(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @fragment_set_partial_reassembly(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_get_root(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @pdu_store_sequencenumber_of_next_pdu(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @col_set_fence(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @col_set_writable(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_bytes_format(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare zeroext i1 @show_fragment_tree(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_get_parent(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_item_get_parent_nth(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @proto_tree_move_item(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @call_dissector(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @call_data_dissector(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare zeroext i1 @wmem_map_lookup_extended(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @val_to_str_const(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @proto_registrar_get_ftype(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_item_ret_boolean(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @format_char(ptr noundef, i8 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_uint_format(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_item_ret_uint8(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare noundef i32 @fflush(ptr noundef captures(none)) local_unnamed_addr #13

; Function Attrs: null_pointer_is_valid
declare void @g_hash_table_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid willreturn memory(none)
declare ptr @gnutls_check_version(ptr noundef) local_unnamed_addr #18

; Function Attrs: null_pointer_is_valid
declare ptr @gcry_check_version(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_strneql(ptr noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @conversation_set_dissector(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.xor.v4i32(<4 x i32>) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #17

attributes #0 = { null_pointer_is_valid sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind null_pointer_is_valid sspstrong memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind null_pointer_is_valid willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind null_pointer_is_valid sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn }
attributes #8 = { null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { null_pointer_is_valid allocsize(1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind null_pointer_is_valid memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree nounwind null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree nounwind null_pointer_is_valid memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { noreturn null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { mustprogress nofree nosync nounwind null_pointer_is_valid willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #22 = { nounwind willreturn memory(read) }
attributes #23 = { allocsize(1) }
attributes #24 = { allocsize(2) }
attributes #25 = { nounwind }
attributes #26 = { nounwind willreturn memory(none) }
attributes #27 = { allocsize(0) }
attributes #28 = { noreturn }

!llvm.module.flags = !{!1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !{!0, !7}
!1 = !{i32 8, !"cf-protection-return", i32 1}
!2 = !{i32 8, !"cf-protection-branch", i32 1}
!3 = !{i32 4, !"probe-stack", !"inline-asm"}
!4 = !{i32 8, !"PIC Level", i32 2}
!5 = !{i32 7, !"uwtable", i32 2}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!7 = !{!"llvm.loop.mustprogress"}
!8 = !{i8 0, i8 2}
!9 = !{}
!10 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!11 = distinct !{!11, !7, !13, !14}
!12 = distinct !{!12, !7, !14, !13}
!13 = !{!"llvm.loop.isvectorized", i32 1}
!14 = !{!"llvm.loop.unroll.runtime.disable"}
!15 = distinct !{!15, !7}
!16 = distinct !{!16, !7}
!17 = distinct !{null, null}
!18 = distinct !{!18, !7}
!19 = distinct !{!19, !7}
!20 = distinct !{!20, !"memcpy.inline"}
!21 = distinct !{!21, !20, !"memcpy.inline: argument 1"}
!22 = distinct !{!22, !20, !"memcpy.inline: argument 0"}
!23 = distinct !{!23, !"memcpy.inline"}
!24 = distinct !{!24, !23, !"memcpy.inline: argument 1"}
!25 = distinct !{!25, !23, !"memcpy.inline: argument 0"}
!26 = distinct !{!26, !7}
!27 = distinct !{!27, !7}
!28 = distinct !{null}
!29 = !{!22, !21}
!30 = !{!25, !24}
!31 = distinct !{!31, !"memcpy.inline"}
!32 = distinct !{!32, !31, !"memcpy.inline: argument 1"}
!33 = distinct !{!33, !31, !"memcpy.inline: argument 0"}
!34 = !{!33, !32}
!35 = distinct !{!35, !7}
!36 = distinct !{!36, !"memcpy.inline"}
!37 = distinct !{!37, !36, !"memcpy.inline: argument 1"}
!38 = distinct !{!38, !36, !"memcpy.inline: argument 0"}
!39 = distinct !{!39, !"memcpy.inline"}
!40 = distinct !{!40, !39, !"memcpy.inline: argument 1"}
!41 = distinct !{!41, !39, !"memcpy.inline: argument 0"}
!42 = distinct !{!42, !"memcpy.inline"}
!43 = distinct !{!43, !42, !"memcpy.inline: argument 1"}
!44 = distinct !{!44, !42, !"memcpy.inline: argument 0"}
!45 = distinct !{!45, !"memcpy.inline"}
!46 = distinct !{!46, !45, !"memcpy.inline: argument 1"}
!47 = distinct !{!47, !45, !"memcpy.inline: argument 0"}
!48 = distinct !{!48, !"memcpy.inline"}
!49 = distinct !{!49, !48, !"memcpy.inline: argument 1"}
!50 = distinct !{!50, !48, !"memcpy.inline: argument 0"}
!51 = distinct !{!51, !"memcpy.inline"}
!52 = distinct !{!52, !51, !"memcpy.inline: argument 1"}
!53 = distinct !{!53, !51, !"memcpy.inline: argument 0"}
!54 = distinct !{!54, !"memcpy.inline"}
!55 = distinct !{!55, !54, !"memcpy.inline: argument 1"}
!56 = distinct !{!56, !54, !"memcpy.inline: argument 0"}
!57 = distinct !{!57, !"memcpy.inline"}
!58 = distinct !{!58, !57, !"memcpy.inline: argument 1"}
!59 = distinct !{!59, !57, !"memcpy.inline: argument 0"}
!60 = distinct !{!60, !7}
!61 = distinct !{!61, !7}
!62 = !{!38, !37}
!63 = !{!41, !40}
!64 = !{!44, !43}
!65 = !{!47, !46}
!66 = !{!50, !49}
!67 = !{!53, !52}
!68 = !{!56, !55}
!69 = !{!59, !58}
!70 = distinct !{!70, !7}
!71 = distinct !{!71, !7}
!72 = distinct !{!72, !7}
!73 = distinct !{!73, !7}
!74 = distinct !{!74, !7}
!75 = distinct !{!75, !7}
!76 = distinct !{!76, !"memcpy.inline"}
!77 = distinct !{!77, !76, !"memcpy.inline: argument 1"}
!78 = distinct !{!78, !76, !"memcpy.inline: argument 0"}
!79 = !{!78, !77}
!80 = distinct !{!80, !"memcpy.inline"}
!81 = distinct !{!81, !80, !"memcpy.inline: argument 1"}
!82 = distinct !{!82, !80, !"memcpy.inline: argument 0"}
!83 = distinct !{!83, !"memcpy.inline"}
!84 = distinct !{!84, !83, !"memcpy.inline: argument 1"}
!85 = distinct !{!85, !83, !"memcpy.inline: argument 0"}
!86 = distinct !{!86, !"memcpy.inline"}
!87 = distinct !{!87, !86, !"memcpy.inline: argument 1"}
!88 = distinct !{!88, !86, !"memcpy.inline: argument 0"}
!89 = !{!82, !81}
!90 = !{!85, !84}
!91 = !{!88, !87}
!92 = distinct !{!92, !7}
!93 = !{!"branch_weights", !"expected", i32 2789303, i32 2144694345}
!94 = distinct !{!94, !7}
end_hunk_1
