inline.NumInlined: 114
inline.NumDeleted: 25
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@get_midx_filename
define dso_local void @get_midx_filename(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !62
  tail call void (ptr, ptr, ...) @strbuf_addf(ptr noundef %1, ptr noundef nonnull @.str, ptr noundef %i.b) #21
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @get_midx_filename_ext(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !62
  tail call void (ptr, ptr, ...) @strbuf_addf(ptr noundef %1, ptr noundef nonnull @.str, ptr noundef %i.b) #21
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !26
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !30
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 448
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !42
  %i.h = tail call ptr @hash_to_hex_algop(ptr noundef %2, ptr noundef %i.g) #21
  tail call void (ptr, ptr, ...) @strbuf_addf(ptr noundef %1, ptr noundef nonnull @.str.1, ptr noundef %i.h, ptr noundef nonnull %3) #21
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

declare void @strbuf_addf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local ptr @get_multi_pack_index(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !63   ; 2 uses
  %.not.i = icmp eq i32 %i.b, 1
  br i1 %.not.i, label %odb_source_files_downcast.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @BUG_fl(ptr noundef nonnull @.str.32, i32 noundef 31, ptr noundef nonnull @.str.33, i32 noundef %i.b) #22
  unreachable

odb_source_files_downcast.exit:                   ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !64
  tail call void @packfile_store_prepare(ptr noundef %i.d) #21
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !64
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !68
  ret ptr %i.g
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

declare void @packfile_store_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: nounwind uwtable
define dso_local void @get_midx_chain_dirname(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !62
  tail call void (ptr, ptr, ...) @strbuf_addf(ptr noundef %1, ptr noundef nonnull @.str.2, ptr noundef %i.b) #21
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @get_midx_chain_filename(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !62
  tail call void (ptr, ptr, ...) @strbuf_addf(ptr noundef %1, ptr noundef nonnull @.str.2, ptr noundef %i.b) #21
  tail call void @strbuf_add(ptr noundef %1, ptr noundef nonnull @.str.3, i64 noundef 23) #21
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @get_split_midx_filename_ext(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !62
  tail call void (ptr, ptr, ...) @strbuf_addf(ptr noundef %1, ptr noundef nonnull @.str.2, ptr noundef %i.b) #21
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !26
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !30
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 448
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !42
  %i.h = tail call ptr @hash_to_hex_algop(ptr noundef %2, ptr noundef %i.g) #21
  tail call void (ptr, ptr, ...) @strbuf_addf(ptr noundef %1, ptr noundef nonnull @.str.4, ptr noundef %i.h, ptr noundef %3) #21
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @load_multi_pack_index(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.strbuf, align 8             ; 9 uses
  %2 = alloca %struct.object_id, align 4          ; 5 uses
  %3 = alloca %struct.strbuf, align 8             ; 7 uses
  %4 = alloca %struct.stat, align 8               ; 4 uses
  %5 = alloca %struct.strbuf, align 8             ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) @__const.load_midx_chain_fd_st.buf, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !62
  call void (ptr, ptr, ...) @strbuf_addf(ptr noundef nonnull %5, ptr noundef nonnull @.str, ptr noundef %i.b) #21
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !73
  %i.e = call fastcc ptr @load_multi_pack_index_one(ptr noundef %0, ptr noundef %i.d) ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.b, label %bb.aa

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) @__const.load_midx_chain_fd_st.buf, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !62
  call void (ptr, ptr, ...) @strbuf_addf(ptr noundef nonnull %3, ptr noundef nonnull @.str.2, ptr noundef %i.f) #21
  call void @strbuf_add(ptr noundef nonnull %3, ptr noundef nonnull @.str.3, i64 noundef 23) #21
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !26
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !30
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 448
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !42
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !73
  %i.n = call i32 @git_open_cloexec(ptr noundef %i.m, i32 noundef 0) #21 ; 5 uses
  %i.o = icmp slt i32 %i.n, 0
  br i1 %i.o, label %load_multi_pack_index_chain.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = call i32 @fstat64(i32 noundef %i.n, ptr noundef nonnull %4) #21
  %.not.i.i = icmp eq i32 %i.p, 0
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = call i32 @close(i32 noundef %i.n) #21    ; 0 uses
  br label %load_multi_pack_index_chain.exit

bb.e:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.s = load i64, ptr %i.r, align 8, !tbaa !75   ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.u = load i64, ptr %i.t, align 8, !tbaa !78
  %i.v = icmp ult i64 %i.s, %i.u
  br i1 %i.v, label %bb.f, label %open_multi_pack_index_chain.exit.i

bb.f:                                             ; preds = %bb.e
  %i.w = call i32 @close(i32 noundef %i.n) #21    ; 0 uses
  %.not11.i.i = icmp eq i64 %i.s, 0
  br i1 %.not11.i.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.x = tail call ptr @__errno_location() #23
  store i32 2, ptr %i.x, align 4, !tbaa !79
  br label %load_multi_pack_index_chain.exit

bb.h:                                             ; preds = %bb.f
  %i.y = load i32, ptr @git_gettext_enabled, align 4, !tbaa !79
  %.not4.i.i.i = icmp eq i32 %i.y, 0
  br i1 %.not4.i.i.i, label %_.exit.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.z = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.54, i32 noundef 5) #21
  br label %_.exit.i.i

_.exit.i.i:                                       ; preds = %bb.i, %bb.h
  %.0.i.i.i = phi ptr [ %i.z, %bb.i ], [ @.str.54, %bb.h ]
  call void (ptr, ...) @warning(ptr noundef %.0.i.i.i) #21
  %i.aa = tail call ptr @__errno_location() #23
  store i32 22, ptr %i.aa, align 4, !tbaa !79
  br label %load_multi_pack_index_chain.exit

open_multi_pack_index_chain.exit.i:               ; preds = %bb.e
  %i.ab = load ptr, ptr %i.g, align 8, !tbaa !26
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !30
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 448
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !42 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) @__const.load_midx_chain_fd_st.buf, i64 24, i1 false)
  %i.af = call ptr @xfdopen(i32 noundef %i.n, ptr noundef nonnull @.str.55) #21 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !78
  %i.ai = add i64 %i.ah, 1
  %i.aj = udiv i64 %i.s, %i.ai
  %i.ak = trunc i64 %i.aj to i32                  ; 2 uses
  %.not45.i.i = icmp eq i32 %i.ak, 0
  br i1 %.not45.i.i, label %load_midx_chain_fd_st.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %open_multi_pack_index_chain.exit.i
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.j

bb.j:                                             ; preds = %bb.z, %.lr.ph.i.i
  %.02144.i.i = phi ptr [ null, %.lr.ph.i.i ], [ %i.bc, %bb.z ] ; 9 uses
  %.02643.i.i = phi i32 [ 0, %.lr.ph.i.i ], [ %i.bx, %bb.z ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  %i.an = call i32 @strbuf_getline_lf(ptr noundef nonnull %1, ptr noundef %i.af) #21
  %.not46.not.not.i.not.i = icmp eq i32 %i.an, -1
  br i1 %.not46.not.not.i.not.i, label %.thread7.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ao = load ptr, ptr %i.al, align 8, !tbaa !73
  %i.ap = call i32 @get_oid_hex_algop(ptr noundef %i.ao, ptr noundef nonnull %2, ptr noundef %i.ae) #21
  %.not.i4.i = icmp eq i32 %i.ap, 0
  br i1 %.not.i4.i, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aq = load i32, ptr @git_gettext_enabled, align 4, !tbaa !79
  %.not4.i.i5.i = icmp eq i32 %i.aq, 0
  br i1 %.not4.i.i5.i, label %_.exit.i6.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ar = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.56, i32 noundef 5) #21
  br label %_.exit.i6.i

_.exit.i6.i:                                      ; preds = %bb.m, %bb.l
  %.0.i.i7.i = phi ptr [ %i.ar, %bb.m ], [ @.str.56, %bb.l ]
  %i.as = load ptr, ptr %i.al, align 8, !tbaa !73
  call void (ptr, ...) @warning(ptr noundef %.0.i.i7.i, ptr noundef %i.as) #21
  br label %.thread7.i.i

bb.n:                                             ; preds = %bb.k
  store i64 0, ptr %i.am, align 8, !tbaa !80
  %i.at = load ptr, ptr %i.al, align 8, !tbaa !73 ; 2 uses
  %.not9.i.i.i = icmp eq ptr %i.at, @strbuf_slopbuf
  br i1 %.not9.i.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  store i8 0, ptr %i.at, align 1, !tbaa !81
  br label %strbuf_setlen.exit.i.i

bb.p:                                             ; preds = %bb.n
  %i.au = load i8, ptr @strbuf_slopbuf, align 1, !tbaa !81
  %.not10.i.i.i = icmp eq i8 %i.au, 0
  br i1 %.not10.i.i.i, label %strbuf_setlen.exit.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @__assert_fail(ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.68, i32 noundef 172, ptr noundef nonnull @__PRETTY_FUNCTION__.strbuf_setlen) #22
  unreachable

strbuf_setlen.exit.i.i:                           ; preds = %bb.p, %bb.o
  %i.av = load ptr, ptr %i.a, align 8, !tbaa !62
  call void (ptr, ptr, ...) @strbuf_addf(ptr noundef nonnull %1, ptr noundef nonnull @.str.2, ptr noundef %i.av) #21
  %i.aw = load ptr, ptr %i.g, align 8, !tbaa !26
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !30
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 448
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !42
  %i.ba = call ptr @hash_to_hex_algop(ptr noundef nonnull %2, ptr noundef %i.az) #21
  call void (ptr, ptr, ...) @strbuf_addf(ptr noundef nonnull %1, ptr noundef nonnull @.str.4, ptr noundef %i.ba, ptr noundef nonnull @.str.19) #21
  %i.bb = load ptr, ptr %i.al, align 8, !tbaa !73
  %i.bc = call fastcc ptr @load_multi_pack_index_one(ptr noundef nonnull %0, ptr noundef %i.bb) ; 8 uses
  %.not28.i.i = icmp eq ptr %i.bc, null
  br i1 %.not28.i.i, label %.loopexit11.i.i, label %bb.r

bb.r:                                             ; preds = %strbuf_setlen.exit.i.i
  %.not.i.i.i = icmp eq ptr %.02144.i.i, null
  br i1 %.not.i.i.i, label %bb.z, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bd = getelementptr inbounds nuw i8, ptr %.02144.i.i, i64 172
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !82 ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.02144.i.i, i64 56
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !83 ; 2 uses
  %i.bh = xor i32 %i.bg, -1
  %i.bi = icmp ugt i32 %i.be, %i.bh
  br i1 %i.bi, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bj = load i32, ptr @git_gettext_enabled, align 4, !tbaa !79
  %.not4.i.i.i.i = icmp eq i32 %i.bj, 0
  br i1 %.not4.i.i.i.i, label %_.exit.i.i.i, label %6

6:                                                ; preds = %bb.t
  %7 = getelementptr inbounds nuw i8, ptr %.02144.i.i, i64 172
  %8 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.58, i32 noundef 5) #21
  %.pre20.i.i.i = load i32, ptr %7, align 4, !tbaa !82
  br label %_.exit.i.i.i

bb.u:                                             ; preds = %bb.s
  %i.bk = getelementptr inbounds nuw i8, ptr %.02144.i.i, i64 168
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !84 ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.02144.i.i, i64 60
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !85 ; 2 uses
  %i.bo = xor i32 %i.bn, -1
  %i.bp = icmp ugt i32 %i.bl, %i.bo
  br i1 %i.bp, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.bq = load i32, ptr @git_gettext_enabled, align 4, !tbaa !79
  %.not4.i17.i.i.i = icmp eq i32 %i.bq, 0
  br i1 %.not4.i17.i.i.i, label %_.exit.i.i.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.br = getelementptr inbounds nuw i8, ptr %.02144.i.i, i64 168
  %9 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.59, i32 noundef 5) #21
  %.pre.i.i.i = load i32, ptr %i.br, align 8, !tbaa !84
  br label %_.exit.i.i.i

bb.x:                                             ; preds = %bb.u
  %10 = add i32 %i.bg, %i.be
  %11 = getelementptr inbounds nuw i8, ptr %i.bc, i64 172
  store i32 %10, ptr %11, align 4, !tbaa !82
  %12 = add i32 %i.bn, %i.bl
  %13 = getelementptr inbounds nuw i8, ptr %i.bc, i64 168
  store i32 %12, ptr %13, align 8, !tbaa !84
  br label %bb.z

_.exit.i.i.i:                                     ; preds = %bb.w, %bb.v, %6, %bb.t
  %.sink106.i.i = phi i32 [ %i.be, %bb.t ], [ %.pre20.i.i.i, %6 ], [ %.pre.i.i.i, %bb.w ], [ %i.bl, %bb.v ]
  %.0.i.i.sink.i.i = phi ptr [ @.str.58, %bb.t ], [ %8, %6 ], [ %9, %bb.w ], [ @.str.59, %bb.v ]
  %i.bs = zext i32 %.sink106.i.i to i64
  call void (ptr, ...) @warning(ptr noundef %.0.i.i.sink.i.i, i64 noundef %i.bs) #21
  call void @close_midx(ptr noundef nonnull %i.bc)
  br label %.loopexit11.i.i

.loopexit11.i.i:                                  ; preds = %strbuf_setlen.exit.i.i, %_.exit.i.i.i
  %i.bt = load i32, ptr @git_gettext_enabled, align 4, !tbaa !79
  %.not4.i33.i.i = icmp eq i32 %i.bt, 0
  br i1 %.not4.i33.i.i, label %_.exit35.i.i, label %bb.y

bb.y:                                             ; preds = %.loopexit11.i.i
  %i.bu = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.57, i32 noundef 5) #21
  br label %_.exit35.i.i

_.exit35.i.i:                                     ; preds = %bb.y, %.loopexit11.i.i
  %.0.i34.i.i = phi ptr [ %i.bu, %bb.y ], [ @.str.57, %.loopexit11.i.i ]
  call void (ptr, ...) @warning(ptr noundef %.0.i34.i.i) #21
  br label %.thread7.i.i

.thread7.i.i:                                     ; preds = %bb.j, %_.exit35.i.i, %_.exit.i6.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %load_midx_chain_fd_st.exit.i

bb.z:                                             ; preds = %bb.x, %bb.r
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bc, i64 160
  store ptr %.02144.i.i, ptr %i.bv, align 8, !tbaa !86
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bc, i64 68
  store i32 1, ptr %i.bw, align 4, !tbaa !87
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  %i.bx = add nuw i32 %.02643.i.i, 1              ; 2 uses
  %i.by = icmp ult i32 %i.bx, %i.ak
  br i1 %i.by, label %bb.j, label %load_midx_chain_fd_st.exit.i, !llvm.loop !88

load_midx_chain_fd_st.exit.i:                     ; preds = %bb.z, %.thread7.i.i, %open_multi_pack_index_chain.exit.i
  %.02118.i.i = phi ptr [ %.02144.i.i, %.thread7.i.i ], [ null, %open_multi_pack_index_chain.exit.i ], [ %i.bc, %bb.z ]
  %i.bz = call i32 @fclose(ptr noundef %i.af)     ; 0 uses
  call void @strbuf_release(ptr noundef nonnull %1) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  br label %load_multi_pack_index_chain.exit

load_multi_pack_index_chain.exit:                 ; preds = %bb.b, %bb.d, %bb.g, %_.exit.i.i, %load_midx_chain_fd_st.exit.i
  %.0.i = phi ptr [ %.02118.i.i, %load_midx_chain_fd_st.exit.i ], [ null, %bb.g ], [ null, %bb.d ], [ null, %bb.b ], [ null, %_.exit.i.i ]
  call void @strbuf_release(ptr noundef nonnull %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %bb.aa

bb.aa:                                            ; preds = %load_multi_pack_index_chain.exit, %bb.a
  %.0 = phi ptr [ %i.e, %bb.a ], [ %.0.i, %load_multi_pack_index_chain.exit ]
  call void @strbuf_release(ptr noundef nonnull %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  ret ptr %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @load_multi_pack_index_one(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.stat, align 8               ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !26
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !30   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  %i.d = tail call i32 @git_open_cloexec(ptr noundef %1, i32 noundef 0) #21 ; 6 uses
  %i.e = icmp slt i32 %i.d, 0
  br i1 %i.e, label %bb.ah, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = call i32 @fstat64(i32 noundef %i.d, ptr noundef nonnull %2) #21
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr @git_gettext_enabled, align 4, !tbaa !79
  %.not4.i = icmp eq i32 %i.g, 0
  br i1 %.not4.i, label %_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.34, i32 noundef 5) #21
  br label %_.exit

_.exit:                                           ; preds = %bb.c, %bb.d
  %.0.i = phi ptr [ %i.h, %bb.d ], [ @.str.34, %bb.c ]
  %i.i = tail call i32 (ptr, ...) @error_errno(ptr noundef %.0.i, ptr noundef %1) #21 ; 0 uses
  br label %bb.ah

bb.e:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.k = load i64, ptr %i.j, align 8, !tbaa !75   ; 8 uses
  %i.l = icmp slt i64 %i.k, 0
  br i1 %i.l, label %bb.f, label %xsize_t.exit

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.49) #22
  unreachable

xsize_t.exit:                                     ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 448 ; 4 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !42
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load i64, ptr %i.o, align 8, !tbaa !59
  %i.q = add i64 %i.p, 12
  %i.r = icmp ult i64 %i.k, %i.q
  br i1 %i.r, label %bb.g, label %bb.i

bb.g:                                             ; preds = %xsize_t.exit
  %i.s = load i32, ptr @git_gettext_enabled, align 4, !tbaa !79
  %.not4.i128 = icmp eq i32 %i.s, 0
  br i1 %.not4.i128, label %_.exit130, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.35, i32 noundef 5) #21
  br label %_.exit130

_.exit130:                                        ; preds = %bb.g, %bb.h
  %.0.i129 = phi ptr [ %i.t, %bb.h ], [ @.str.35, %bb.g ]
  %i.u = tail call i32 (ptr, ...) @error(ptr noundef %.0.i129, ptr noundef %1) #21 ; 0 uses
  br label %bb.ah

bb.i:                                             ; preds = %xsize_t.exit
  %i.v = tail call ptr @xmmap(ptr noundef null, i64 noundef %i.k, i32 noundef 1, i32 noundef 2, i32 noundef %i.d, i64 noundef 0) #21 ; 6 uses
  %i.w = tail call i32 @close(i32 noundef %i.d) #21 ; 0 uses
  %i.x = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 200) #21 ; 26 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 3 uses
  store ptr %i.v, ptr %i.y, align 8, !tbaa !12
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store i64 %i.k, ptr %i.z, align 8, !tbaa !24
  store ptr %0, ptr %i.x, align 8, !tbaa !25
  %i.aa = load i32, ptr %i.v, align 1             ; 2 uses
  %i.ab = tail call i32 @llvm.bswap.i32(i32 %i.aa)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 48 ; 2 uses
  store i32 %i.ab, ptr %i.ac, align 8, !tbaa !90
  %.not115 = icmp eq i32 %i.aa, 1480870221
  br i1 %.not115, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ad = tail call fastcc ptr @_(ptr noundef nonnull @.str.36)
  %i.ae = load i32, ptr %i.ac, align 8, !tbaa !90
  tail call void (ptr, ...) @die(ptr noundef %i.ad, i32 noundef %i.ae, i32 noundef 1296647256) #22
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !81  ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.x, i64 52 ; 3 uses
  store i8 %i.ag, ptr %i.ah, align 4, !tbaa !91
  %.off = add i8 %i.ag, -1
  %switch = icmp ult i8 %.off, 2
  br i1 %switch, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ai = tail call fastcc ptr @_(ptr noundef nonnull @.str.37)
  %i.aj = load i8, ptr %i.ah, align 4, !tbaa !91
  %i.ak = zext i8 %i.aj to i32
  tail call void (ptr, ...) @die(ptr noundef %i.ai, i32 noundef %i.ak) #22
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.al = getelementptr inbounds nuw i8, ptr %i.v, i64 5
  %i.am = load i8, ptr %i.al, align 1, !tbaa !81  ; 2 uses
  %i.an = load ptr, ptr %i.m, align 8, !tbaa !42
  %i.ao = tail call zeroext i8 @oid_version(ptr noundef %i.an) #21
  %.not118 = icmp eq i8 %i.am, %i.ao
  br i1 %.not118, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ap = zext i8 %i.am to i32
  %i.aq = load i32, ptr @git_gettext_enabled, align 4, !tbaa !79
  %.not4.i131 = icmp eq i32 %i.aq, 0
  br i1 %.not4.i131, label %_.exit133, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ar = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.38, i32 noundef 5) #21
  br label %_.exit133

_.exit133:                                        ; preds = %bb.n, %bb.o
  %.0.i132 = phi ptr [ %i.ar, %bb.o ], [ @.str.38, %bb.n ]
  %i.as = load ptr, ptr %i.m, align 8, !tbaa !42
  %i.at = tail call zeroext i8 @oid_version(ptr noundef %i.as) #21
  %i.au = zext i8 %i.at to i32
  %i.av = tail call i32 (ptr, ...) @error(ptr noundef %.0.i132, i32 noundef %i.ap, i32 noundef %i.au) #21 ; 0 uses
  br label %bb.ah

bb.p:                                             ; preds = %bb.m
  %i.aw = load ptr, ptr %i.m, align 8, !tbaa !42
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !59
  %i.az = trunc i64 %i.ay to i8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.x, i64 53
  store i8 %i.az, ptr %i.ba, align 1, !tbaa !92
  %i.bb = load ptr, ptr %i.y, align 8, !tbaa !12  ; 5 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 6
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !81
  %i.be = getelementptr inbounds nuw i8, ptr %i.x, i64 54 ; 2 uses
  store i8 %i.bd, ptr %i.be, align 2, !tbaa !93
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !81
  %i.bh = zext i8 %i.bg to i32
  %i.bi = shl nuw i32 %i.bh, 24
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bb, i64 9
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !81
  %i.bl = zext i8 %i.bk to i32
  %i.bm = shl nuw nsw i32 %i.bl, 16
  %i.bn = or disjoint i32 %i.bm, %i.bi
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bb, i64 10
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !81
  %i.bq = zext i8 %i.bp to i32
  %i.br = shl nuw nsw i32 %i.bq, 8
  %i.bs = or disjoint i32 %i.bn, %i.br
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bb, i64 11
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !81
  %i.bv = zext i8 %i.bu to i32
  %i.bw = or disjoint i32 %i.bs, %i.bv
  %i.bx = getelementptr inbounds nuw i8, ptr %i.x, i64 56 ; 4 uses
  store i32 %i.bw, ptr %i.bx, align 8, !tbaa !83
  %i.by = getelementptr inbounds nuw i8, ptr %i.x, i64 64
  store i32 -1, ptr %i.by, align 8, !tbaa !94
  %i.bz = tail call ptr @init_chunkfile(ptr noundef null) #21 ; 10 uses
  %i.ca = load ptr, ptr %i.y, align 8, !tbaa !12
  %i.cb = load i8, ptr %i.be, align 2, !tbaa !93
  %i.cc = zext i8 %i.cb to i32
  %i.cd = tail call i32 @read_table_of_contents(ptr noundef %i.bz, ptr noundef %i.ca, i64 noundef %i.k, i64 noundef 12, i32 noundef %i.cc, i32 noundef 4) #21
end_hunk_0
