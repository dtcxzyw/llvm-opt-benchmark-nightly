Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/git/original/receive-pack?download=true
inline.NumInlined: 113
inline.NumDeleted: 54
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 8
begin_hunk_0_@show_ref_cb:bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !201
  %i.g = tail call i32 @oidset_insert(ptr noundef %1, ptr noundef %i.f) #20
  br i1 %.not13, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %.not14 = icmp eq i32 %i.g, 0
  br i1 %.not14, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.b, %bb.c
  %.0 = phi ptr [ @.str.50, %bb.c ], [ %i.b, %bb.b ]
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !201
  tail call fastcc void @show_ref(ptr noundef nonnull %.0, ptr noundef %i.i)
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.a, %bb.d
  ret i32 0
}

declare void @odb_for_each_alternate_ref(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal void @show_one_alternate_ref(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = tail call i32 @oidset_insert(ptr noundef %1, ptr noundef %0) #20
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @show_ref(ptr noundef nonnull @.str.50, ptr noundef %0)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

declare void @oidset_clear(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @show_ref(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.strbuf, align 8             ; 13 uses
  %.b = load i1, ptr @sent_capabilities, align 4
  br i1 %.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = tail call ptr @oid_to_hex(ptr noundef %1) #20
  tail call void (i32, ptr, ...) @packet_write_fmt(i32 noundef 1, ptr noundef nonnull @.str.51, ptr noundef %i.a, ptr noundef %0) #20
  br label %bb.n

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) @__const.report.buf, i64 24, i1 false)
  call void @strbuf_add(ptr noundef nonnull %2, ptr noundef nonnull @.str.52, i64 noundef 62) #20
  %i.b = load i32, ptr @advertise_atomic_push, align 4, !tbaa !12
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @strbuf_add(ptr noundef nonnull %2, ptr noundef nonnull @.str.53, i64 noundef 7) #20
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.c = load i32, ptr @prefer_ofs_delta, align 4, !tbaa !12
  %.not4 = icmp eq i32 %i.c, 0
  br i1 %.not4, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @strbuf_add(ptr noundef nonnull %2, ptr noundef nonnull @.str.54, i64 noundef 10) #20
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.d = load ptr, ptr @push_cert_nonce, align 8, !tbaa !27 ; 2 uses
  %.not5 = icmp eq ptr %i.d, null
  br i1 %.not5, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void (ptr, ptr, ...) @strbuf_addf(ptr noundef nonnull %2, ptr noundef nonnull @.str.55, ptr noundef nonnull %i.d) #20
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.e = load i32, ptr @advertise_push_options, align 4, !tbaa !12
  %.not6 = icmp eq i32 %i.e, 0
  br i1 %.not6, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @strbuf_add(ptr noundef nonnull %2, ptr noundef nonnull @.str.56, i64 noundef 13) #20
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.f = load i32, ptr @advertise_sid, align 4, !tbaa !12
  %.not7 = icmp eq i32 %i.f, 0
  br i1 %.not7, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.g = call ptr @trace2_session_id() #20
  call void (ptr, ptr, ...) @strbuf_addf(ptr noundef nonnull %2, ptr noundef nonnull @.str.57, ptr noundef %i.g) #20
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.h = load ptr, ptr @the_repository, align 8, !tbaa !28
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 448
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !59
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !67
  call void (ptr, ptr, ...) @strbuf_addf(ptr noundef nonnull %2, ptr noundef nonnull @.str.58, ptr noundef %i.k) #20
  %i.l = call ptr @git_user_agent_sanitized() #20
  call void (ptr, ptr, ...) @strbuf_addf(ptr noundef nonnull %2, ptr noundef nonnull @.str.59, ptr noundef %i.l) #20
  %i.m = call ptr @oid_to_hex(ptr noundef %1) #20
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !73
  call void (i32, ptr, ...) @packet_write_fmt(i32 noundef 1, ptr noundef nonnull @.str.60, ptr noundef %i.m, ptr noundef %0, i32 noundef 0, ptr noundef %i.o) #20
  call void @strbuf_release(ptr noundef nonnull %2) #20
  store i1 true, ptr @sent_capabilities, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.b
  ret void
}

declare ptr @null_oid(ptr noundef) local_unnamed_addr #3

declare void @advertise_shallow_grafts(i32 noundef) local_unnamed_addr #3

declare ptr @strip_namespace(ptr noundef) local_unnamed_addr #3

declare i32 @ref_is_hidden(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @oidset_insert(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @oid_to_hex(ptr noundef) local_unnamed_addr #3

declare ptr @trace2_session_id() local_unnamed_addr #3

declare ptr @git_user_agent_sanitized() local_unnamed_addr #3

declare void @strbuf_add(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare i32 @packet_reader_read(ptr noundef) local_unnamed_addr #3

declare zeroext i1 @starts_with(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @get_oid_hex(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @oid_array_append(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @parse_feature_request(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @parse_feature_value(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @xstrncmpz(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare ptr @xstrndup(ptr noundef, i64 noundef) local_unnamed_addr #3

declare void @trace2_data_string_fl(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc ptr @queue_command(ptr nofree noundef writeonly captures(none) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.object_id, align 4          ; 5 uses
  %4 = alloca %struct.object_id, align 4          ; 5 uses
  %i.a = alloca ptr, align 8                      ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.b = call i32 @parse_oid_hex(ptr noundef %1, ptr noundef nonnull %3, ptr noundef nonnull %i.a) #20
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !27   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 1 ; 2 uses
  store ptr %i.d, ptr %i.a, align 8, !tbaa !27
  %i.e = load i8, ptr %i.c, align 1, !tbaa !76
  %.not13 = icmp eq i8 %i.e, 32
  br i1 %.not13, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = call i32 @parse_oid_hex(ptr noundef nonnull %i.d, ptr noundef nonnull %4, ptr noundef nonnull %i.a) #20
  %.not14 = icmp eq i32 %i.f, 0
  br i1 %.not14, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !27   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 1 ; 3 uses
  store ptr %i.h, ptr %i.a, align 8, !tbaa !27
  %i.i = load i8, ptr %i.g, align 1, !tbaa !76
  %.not15 = icmp eq i8 %i.i, 32
  br i1 %.not15, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  call void (ptr, ...) @die(ptr noundef nonnull @.str.76, ptr noundef %1) #21
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %1 to i64
  %.neg = sub i64 %i.k, %i.j
  %i.l = trunc i64 %.neg to i32
  %i.m = add i32 %2, %i.l                         ; 3 uses
  %i.n = sext i32 %i.m to i64                     ; 3 uses
  %5 = icmp ugt i32 %i.m, -113
  br i1 %5, label %bb.g, label %st_add.exit

bb.g:                                             ; preds = %bb.f
  call void (ptr, ...) @die(ptr noundef nonnull @.str.77, i64 noundef 112, i64 noundef range(i64 -2147483648, 2147483648) %i.n) #21
  unreachable

st_add.exit:                                      ; preds = %bb.f
  %6 = icmp eq i32 %i.m, -113
  br i1 %6, label %bb.h, label %st_add.exit16

bb.h:                                             ; preds = %st_add.exit
  call void (ptr, ...) @die(ptr noundef nonnull @.str.77, i64 noundef -1, i64 noundef 1) #21
  unreachable

st_add.exit16:                                    ; preds = %st_add.exit
  %7 = add nuw nsw i64 %i.n, 113
  %i.o = call ptr @xcalloc(i64 noundef 1, i64 noundef %7) #20 ; 7 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.p, ptr nonnull align 1 %i.h, i64 %i.n, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.q, ptr noundef nonnull readonly align 4 dereferenceable(32) %3, i64 32, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.s = load i32, ptr %i.r, align 4, !tbaa !176
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 72
  store i32 %i.s, ptr %i.t, align 8, !tbaa !176
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 76
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.u, ptr noundef nonnull readonly align 4 dereferenceable(32) %4, i64 32, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.w = load i32, ptr %i.v, align 4, !tbaa !176
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 108
  store i32 %i.w, ptr %i.x, align 4, !tbaa !176
  store ptr %i.o, ptr %0, align 8, !tbaa !60
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  ret ptr %i.o
}

declare i32 @parse_oid_hex(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strstr(ptr noundef, ptr noundef captures(none)) local_unnamed_addr #8

declare i64 @parse_signed_buffer(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #8

declare ptr @string_list_append(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @find_commit_header(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @unpack(i32 noundef %0, ptr nofree noundef nonnull readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.pack_header, align 4        ; 6 uses
  %3 = alloca %struct.child_process, align 8      ; 27 uses
  %i.a = alloca [65 x i8], align 16               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %3, ptr noundef nonnull align 8 dereferenceable(136) @__const.push_to_deploy.child, i64 136, i1 false)
  %i.b = load i32, ptr @receive_fsck_objects, align 4, !tbaa !12 ; 2 uses
  %i.c = load i32, ptr @transfer_fsck_objects, align 4
  %i.d = tail call i32 @llvm.smax.i32(i32 %i.c, i32 0)
  %i.e = icmp slt i32 %i.b, 0
  %i.f = select i1 %i.e, i32 %i.d, i32 %i.b       ; 2 uses
  %i.g = call i32 @read_pack_header(i32 noundef 0, ptr noundef nonnull %2) #20
  switch i32 %i.g, label %bb.d [
    i32 -1, label %bb.e
    i32 -2, label %bb.b
    i32 -3, label %bb.c
    i32 0, label %parse_pack_header.exit
  ]

bb.b:                                             ; preds = %bb.a
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b, %bb.c, %bb.a
  %.0.i.ph = phi ptr [ @.str.99, %bb.a ], [ @.str.101, %bb.c ], [ @.str.100, %bb.b ], [ @.str.102, %bb.d ] ; 2 uses
  %i.h = icmp sgt i32 %0, 0
  br i1 %i.h, label %bb.f, label %bb.al

bb.f:                                             ; preds = %bb.e
  %i.i = call i32 @close(i32 noundef %0) #20      ; 0 uses
  br label %bb.al

parse_pack_header.exit:                           ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = load i64, ptr %i.j, align 8, !tbaa !83
  %.not31 = icmp eq i64 %i.k, 0
  br i1 %.not31, label %bb.g, label %bb.h

bb.g:                                             ; preds = %parse_pack_header.exit
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.m = load i64, ptr %i.l, align 8, !tbaa !202
  %.not32 = icmp eq i64 %i.m, 0
  br i1 %.not32, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g, %parse_pack_header.exit
  %i.n = load ptr, ptr %1, align 8, !tbaa !99
  %i.o = call ptr @setup_temporary_shallow(ptr noundef %i.n) #20
  store ptr %i.o, ptr @alt_shallow_file, align 8, !tbaa !27
  %i.p = call ptr @strvec_push(ptr noundef nonnull %3, ptr noundef nonnull @.str.82) #20 ; 0 uses
  %i.q = load ptr, ptr @alt_shallow_file, align 8, !tbaa !27
  %i.r = call ptr @strvec_push(ptr noundef nonnull %3, ptr noundef %i.q) #20 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.s = load ptr, ptr @the_repository, align 8, !tbaa !28
  %i.t = call ptr @tmp_objdir_create(ptr noundef %i.s, ptr noundef nonnull @.str.83) #20 ; 3 uses
  store ptr %i.t, ptr @tmp_objdir, align 8, !tbaa !122
  %.not33 = icmp eq ptr %i.t, null
  br i1 %.not33, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.u = icmp sgt i32 %0, 0
  br i1 %i.u, label %bb.k, label %bb.al

bb.k:                                             ; preds = %bb.j
  %i.v = call i32 @close(i32 noundef %0) #20      ; 0 uses
  br label %bb.al

bb.l:                                             ; preds = %bb.i
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.x = call ptr @tmp_objdir_env(ptr noundef nonnull %i.t) #20
  call void @strvec_pushv(ptr noundef nonnull %i.w, ptr noundef %i.x) #20
  %i.y = load ptr, ptr @tmp_objdir, align 8, !tbaa !122
  call void @tmp_objdir_add_as_alternate(ptr noundef %i.y) #20
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !203
  %i.ab = call i32 @llvm.bswap.i32(i32 %i.aa)
  %i.ac = load i32, ptr @unpack_limit, align 4, !tbaa !12
  %i.ad = icmp ult i32 %i.ab, %i.ac
  br i1 %i.ad, label %bb.m, label %bb.t

bb.m:                                             ; preds = %bb.l
  %i.ae = call ptr @strvec_push(ptr noundef nonnull %3, ptr noundef nonnull @.str.85) #20 ; 0 uses
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 4
  %.val46 = load i32, ptr %i.af, align 4, !tbaa !205
  %.val47 = load i32, ptr %i.z, align 4, !tbaa !203
  %i.ag = call i32 @llvm.bswap.i32(i32 %.val46)
  %i.ah = call i32 @llvm.bswap.i32(i32 %.val47)
  %i.ai = call ptr (ptr, ptr, ...) @strvec_pushf(ptr noundef nonnull %3, ptr noundef nonnull @.str.103, i32 noundef %i.ag, i32 noundef %i.ah) #20 ; 0 uses
  %i.aj = load i32, ptr @quiet, align 4, !tbaa !12
  %.not41 = icmp eq i32 %i.aj, 0
  br i1 %.not41, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ak = call ptr @strvec_push(ptr noundef nonnull %3, ptr noundef nonnull @.str.86) #20 ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.not42 = icmp eq i32 %i.f, 0
  br i1 %.not42, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.al = load ptr, ptr getelementptr inbounds nuw (i8, ptr @fsck_msg_types, i64 16), align 8, !tbaa !73
  %i.am = call ptr (ptr, ptr, ...) @strvec_pushf(ptr noundef nonnull %3, ptr noundef nonnull @.str.87, ptr noundef %i.al) #20 ; 0 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.an = load i64, ptr @max_input_size, align 8, !tbaa !66 ; 2 uses
  %.not43 = icmp eq i64 %i.an, 0
  br i1 %.not43, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ao = call ptr (ptr, ptr, ...) @strvec_pushf(ptr noundef nonnull %3, ptr noundef nonnull @.str.88, i64 noundef %i.an) #20 ; 0 uses
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 2 uses
  %i.aq = load i8, ptr %i.ap, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 88
  store i32 %0, ptr %i.ar, align 8, !tbaa !160
  %i.as = or i8 %i.aq, 10
  store i8 %i.as, ptr %i.ap, align 8
  %i.at = call i32 @run_command(ptr noundef nonnull %3) #20
  %.not44 = icmp eq i32 %i.at, 0
  br i1 %.not44, label %bb.ak, label %bb.al

bb.t:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  call void (ptr, ...) @strvec_pushl(ptr noundef nonnull %3, ptr noundef nonnull @.str.90, ptr noundef nonnull @.str.91, ptr noundef null) #20
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 4
  %.val = load i32, ptr %i.au, align 4, !tbaa !205
  %.val45 = load i32, ptr %i.z, align 4, !tbaa !203
  %i.av = call i32 @llvm.bswap.i32(i32 %.val)
  %i.aw = call i32 @llvm.bswap.i32(i32 %.val45)
  %i.ax = call ptr (ptr, ptr, ...) @strvec_pushf(ptr noundef nonnull %3, ptr noundef nonnull @.str.103, i32 noundef %i.av, i32 noundef %i.aw) #20 ; 0 uses
  %i.ay = call i32 @xgethostname(ptr noundef nonnull %i.a, i64 noundef 65) #20
  %.not34 = icmp eq i32 %i.ay, 0
  br i1 %.not34, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.az = call i32 (ptr, i64, ptr, ...) @xsnprintf(ptr noundef nonnull %i.a, i64 noundef 65, ptr noundef nonnull @.str.92) #20 ; 0 uses
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.ba = call i32 @getpid() #20
  %i.bb = sext i32 %i.ba to i64
  %i.bc = call ptr (ptr, ptr, ...) @strvec_pushf(ptr noundef nonnull %3, ptr noundef nonnull @.str.93, i64 noundef %i.bb, ptr noundef nonnull %i.a) #20 ; 0 uses
  %i.bd = load i32, ptr @quiet, align 4, !tbaa !12
  %i.be = icmp eq i32 %i.bd, 0
  %i.bf = icmp ne i32 %0, 0
  %or.cond = and i1 %i.bf, %i.be
  br i1 %or.cond, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.bg = call ptr @strvec_push(ptr noundef nonnull %3, ptr noundef nonnull @.str.94) #20 ; 0 uses
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.b = load i1, ptr @use_sideband, align 4
  br i1 %.b, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.bh = call ptr @strvec_push(ptr noundef nonnull %3, ptr noundef nonnull @.str.95) #20 ; 0 uses
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.not35 = icmp eq i32 %i.f, 0
  br i1 %.not35, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bi = load ptr, ptr getelementptr inbounds nuw (i8, ptr @fsck_msg_types, i64 16), align 8, !tbaa !73
  %i.bj = call ptr (ptr, ptr, ...) @strvec_pushf(ptr noundef nonnull %3, ptr noundef nonnull @.str.87, ptr noundef %i.bi) #20 ; 0 uses
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.bk = load i32, ptr @reject_thin, align 4, !tbaa !12
  %.not36 = icmp eq i32 %i.bk, 0
  br i1 %.not36, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
end_hunk_0
