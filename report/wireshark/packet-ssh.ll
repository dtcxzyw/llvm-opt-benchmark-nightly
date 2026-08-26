Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-ssh?download=true
inline.NumInlined: 154
inline.NumDeleted: 58
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@ssh_kex_shared_secret:bb.a
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @proto_report_dissector_bug(ptr noundef nonnull @.str.744, ptr noundef nonnull @.str.745, i32 noundef 3193, ptr noundef nonnull @.str.746) #28
  unreachable

bb.c:                                             ; preds = %bb.a
  %.not53 = icmp eq ptr %2, null
  br i1 %.not53, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @proto_report_dissector_bug(ptr noundef nonnull @.str.744, ptr noundef nonnull @.str.745, i32 noundef 3194, ptr noundef nonnull @.str.747) #28
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.i = getelementptr i8, ptr %1, i64 8          ; 5 uses
  %i.j = load i32, ptr %i.i, align 8              ; 3 uses
  %i.k = add i32 %i.j, -1026
  %or.cond.i = icmp ult i32 %i.k, -1025
  br i1 %or.cond.i, label %ssh_kex_make_bignum.exit.thread, label %ssh_kex_make_bignum.exit

ssh_kex_make_bignum.exit:                         ; preds = %bb.e
  %i.l = tail call ptr @wmem_file_scope()
  %i.m = tail call noalias dereferenceable_or_null(16) ptr @wmem_alloc0(ptr noundef %i.l, i64 noundef 16) #23 ; 6 uses
  %i.n = tail call ptr @wmem_file_scope()
  %i.o = zext nneg i32 %i.j to i64
  %i.p = tail call noalias ptr @wmem_alloc0(ptr noundef %i.n, i64 noundef %i.o) #23 ; 2 uses
  store ptr %i.p, ptr %i.m, align 8
  %i.q = getelementptr i8, ptr %i.m, i64 8        ; 5 uses
  store i32 %i.j, ptr %i.q, align 8
  %.not54 = icmp eq ptr %i.m, null
  br i1 %.not54, label %ssh_kex_make_bignum.exit.thread, label %bb.f

bb.f:                                             ; preds = %ssh_kex_make_bignum.exit
  switch i32 %0, label %ssh_kex_make_bignum.exit.thread [
    i32 131072, label %bb.g
    i32 196632, label %bb.i
    i32 196630, label %bb.i
    i32 196628, label %bb.i
    i32 196609, label %bb.i
    i32 65536, label %bb.o
  ]

bb.g:                                             ; preds = %bb.f
  %i.r = icmp eq ptr %3, null
  br i1 %i.r, label %ssh_kex_make_bignum.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store ptr null, ptr %i.a, align 8
  %i.s = load ptr, ptr %1, align 8
  %i.t = load i32, ptr %i.i, align 8
  %i.u = zext i32 %i.t to i64
  %i.v = call i32 @gcry_mpi_scan(ptr noundef nonnull %i.a, i32 noundef 5, ptr noundef %i.s, i64 noundef %i.u, ptr noundef null) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  store ptr null, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  store ptr null, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #25
  store i64 0, ptr %i.d, align 8
  %i.w = load i32, ptr %i.i, align 8
  %i.x = shl i32 %i.w, 3
  %i.y = call ptr @gcry_mpi_new(i32 noundef %i.x) ; 3 uses
  %i.z = load ptr, ptr %2, align 8
  %i.aa = getelementptr i8, ptr %2, i64 8
  %i.ab = load i32, ptr %i.aa, align 8
  %i.ac = zext i32 %i.ab to i64
  %i.ad = call i32 @gcry_mpi_scan(ptr noundef nonnull %i.b, i32 noundef 5, ptr noundef %i.z, i64 noundef %i.ac, ptr noundef null) ; 0 uses
  %i.ae = load ptr, ptr %3, align 8
  %i.af = getelementptr i8, ptr %3, i64 8
  %i.ag = load i32, ptr %i.af, align 8
  %i.ah = zext i32 %i.ag to i64
  %i.ai = call i32 @gcry_mpi_scan(ptr noundef nonnull %i.c, i32 noundef 5, ptr noundef %i.ae, i64 noundef %i.ah, ptr noundef null) ; 0 uses
  %i.aj = load ptr, ptr %i.a, align 8
  %i.ak = load ptr, ptr %i.b, align 8
  %i.al = load ptr, ptr %i.c, align 8
  call void @gcry_mpi_powm(ptr noundef %i.y, ptr noundef %i.aj, ptr noundef %i.ak, ptr noundef %i.al)
  %i.am = load ptr, ptr %i.m, align 8
  %i.an = load i32, ptr %i.q, align 8
  %i.ao = zext i32 %i.an to i64
  %i.ap = call i32 @gcry_mpi_print(i32 noundef 5, ptr noundef %i.am, i64 noundef %i.ao, ptr noundef nonnull %i.d, ptr noundef %i.y) ; 0 uses
  %i.aq = load i64, ptr %i.d, align 8
  %i.ar = trunc i64 %i.aq to i32
  store i32 %i.ar, ptr %i.q, align 8
  call void @gcry_mpi_release(ptr noundef %i.y)
  %i.as = load ptr, ptr %i.a, align 8
  call void @gcry_mpi_release(ptr noundef %i.as)
  %i.at = load ptr, ptr %i.b, align 8
  call void @gcry_mpi_release(ptr noundef %i.at)
  %i.au = load ptr, ptr %i.c, align 8
  call void @gcry_mpi_release(ptr noundef %i.au)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %bb.p

bb.i:                                             ; preds = %bb.f, %bb.f, %bb.f, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #25
  store ptr null, ptr %i.e, align 8
  switch i32 %0, label %bb.n [
    i32 196609, label %bb.j
    i32 196628, label %bb.k
    i32 196630, label %bb.l
    i32 196632, label %bb.m
  ]

bb.j:                                             ; preds = %bb.i
  %i.av = call i32 @gcry_mpi_scan(ptr noundef nonnull %i.e, i32 noundef 5, ptr noundef nonnull @ssh_kex_shared_secret.p, i64 noundef 128, ptr noundef null) ; 0 uses
  br label %bb.n

bb.k:                                             ; preds = %bb.i
  %i.aw = call i32 @gcry_mpi_scan(ptr noundef nonnull %i.e, i32 noundef 5, ptr noundef nonnull @ssh_kex_shared_secret.p.748, i64 noundef 256, ptr noundef null) ; 0 uses
  br label %bb.n

bb.l:                                             ; preds = %bb.i
  %i.ax = call i32 @gcry_mpi_scan(ptr noundef nonnull %i.e, i32 noundef 5, ptr noundef nonnull @ssh_kex_shared_secret.p.749, i64 noundef 512, ptr noundef null) ; 0 uses
  br label %bb.n

bb.m:                                             ; preds = %bb.i
  %i.ay = call i32 @gcry_mpi_scan(ptr noundef nonnull %i.e, i32 noundef 5, ptr noundef nonnull @ssh_kex_shared_secret.p.750, i64 noundef 1024, ptr noundef null) ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.i, %bb.k, %bb.m, %bb.l, %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #25
  store ptr null, ptr %i.f, align 8
  %i.az = load ptr, ptr %1, align 8
  %i.ba = load i32, ptr %i.i, align 8
  %i.bb = zext i32 %i.ba to i64
  %i.bc = call i32 @gcry_mpi_scan(ptr noundef nonnull %i.f, i32 noundef 5, ptr noundef %i.az, i64 noundef %i.bb, ptr noundef null) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #25
  store ptr null, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #25
  store i64 0, ptr %i.h, align 8
  %i.bd = load i32, ptr %i.i, align 8
  %i.be = shl i32 %i.bd, 3
  %i.bf = call ptr @gcry_mpi_new(i32 noundef %i.be) ; 3 uses
  %i.bg = load ptr, ptr %2, align 8
  %i.bh = getelementptr i8, ptr %2, i64 8
  %i.bi = load i32, ptr %i.bh, align 8
  %i.bj = zext i32 %i.bi to i64
  %i.bk = call i32 @gcry_mpi_scan(ptr noundef nonnull %i.g, i32 noundef 5, ptr noundef %i.bg, i64 noundef %i.bj, ptr noundef null) ; 0 uses
  %i.bl = load ptr, ptr %i.f, align 8
  %i.bm = load ptr, ptr %i.g, align 8
  %i.bn = load ptr, ptr %i.e, align 8
  call void @gcry_mpi_powm(ptr noundef %i.bf, ptr noundef %i.bl, ptr noundef %i.bm, ptr noundef %i.bn)
  %i.bo = load ptr, ptr %i.m, align 8
  %i.bp = load i32, ptr %i.q, align 8
  %i.bq = zext i32 %i.bp to i64
  %i.br = call i32 @gcry_mpi_print(i32 noundef 5, ptr noundef %i.bo, i64 noundef %i.bq, ptr noundef nonnull %i.h, ptr noundef %i.bf) ; 0 uses
  %i.bs = load i64, ptr %i.h, align 8
  %i.bt = trunc i64 %i.bs to i32
  store i32 %i.bt, ptr %i.q, align 8
  call void @gcry_mpi_release(ptr noundef %i.bf)
  %i.bu = load ptr, ptr %i.f, align 8
  call void @gcry_mpi_release(ptr noundef %i.bu)
  %i.bv = load ptr, ptr %i.g, align 8
  call void @gcry_mpi_release(ptr noundef %i.bv)
  %i.bw = load ptr, ptr %i.e, align 8
  call void @gcry_mpi_release(ptr noundef %i.bw)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #25
  br label %bb.p

bb.o:                                             ; preds = %bb.f
  %i.bx = load ptr, ptr %2, align 8
  %i.by = load ptr, ptr %1, align 8
  %i.bz = tail call i32 @crypto_scalarmult_curve25519(ptr noundef %i.p, ptr noundef %i.bx, ptr noundef %i.by)
  %.not55 = icmp eq i32 %i.bz, 0
  br i1 %.not55, label %bb.p, label %ssh_kex_make_bignum.exit.thread

bb.p:                                             ; preds = %bb.n, %bb.o, %bb.h
  br label %ssh_kex_make_bignum.exit.thread

ssh_kex_make_bignum.exit.thread:                  ; preds = %bb.f, %bb.e, %bb.o, %bb.g, %ssh_kex_make_bignum.exit, %bb.p
  %.0 = phi ptr [ null, %ssh_kex_make_bignum.exit ], [ %i.m, %bb.p ], [ null, %bb.g ], [ null, %bb.o ], [ null, %bb.f ], [ null, %bb.e ]
  ret ptr %.0
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @ssh_print_data(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef range(i64 0, 4294967296) %2) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @ssh_debug_file, align 8   ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = trunc nuw i64 %2 to i32
  %i.c = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef nonnull %i.a, i32 noundef 2, ptr noundef nonnull @.str.751, ptr noundef %0, i32 noundef %i.b) ; 0 uses
  %.not44 = icmp eq i64 %2, 0
  br i1 %.not44, label %.loopexit, label %.lr.ph43

.lr.ph43:                                         ; preds = %bb.b
  %i.d = load ptr, ptr @g_ascii_table, align 8
  %i.e = add nsw i64 %2, -1
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph43, %._crit_edge40
  %indvars.iv = phi i64 [ %i.e, %.lr.ph43 ], [ %indvars.iv.next, %._crit_edge40 ] ; 2 uses
  %.041 = phi i64 [ 0, %.lr.ph43 ], [ %i.ak, %._crit_edge40 ] ; 4 uses
  %umin45 = tail call i64 @llvm.umin.i64(i64 %indvars.iv, i64 15)
  %i.f = load ptr, ptr @ssh_debug_file, align 8
  %i.g = trunc nuw i64 %.041 to i32
  %i.h = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.f, i32 noundef 2, ptr noundef nonnull @.str.752, i32 noundef %i.g) ; 0 uses
  br label %bb.d

.preheader:                                       ; preds = %bb.d
  br i1 %3, label %.lr.ph, label %.lr.ph39.preheader

bb.d:                                             ; preds = %bb.c, %bb.d
  %.02834 = phi i64 [ 0, %bb.c ], [ %i.o, %bb.d ] ; 2 uses
  %.02933 = phi i64 [ %.041, %bb.c ], [ %i.n, %bb.d ] ; 2 uses
  %i.i = load ptr, ptr @ssh_debug_file, align 8
  %i.j = getelementptr i8, ptr %1, i64 %.02933
  %i.k = load i8, ptr %i.j, align 1
  %i.l = zext i8 %i.k to i32
  %i.m = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.i, i32 noundef 2, ptr noundef nonnull @.str.753, i32 noundef %i.l) ; 0 uses
  %i.n = add nuw nsw i64 %.02933, 1               ; 2 uses
  %i.o = add nuw nsw i64 %.02834, 1               ; 2 uses
  %3 = icmp samesign ult i64 %.02834, 15          ; 2 uses
  %4 = icmp samesign ult i64 %i.n, %2
  %5 = select i1 %3, i1 %4, i1 false
  br i1 %5, label %bb.d, label %.preheader, !llvm.loop !72

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %.135.in = phi i64 [ %6, %.lr.ph ], [ %i.o, %.preheader ] ; 2 uses
  %i.p = load ptr, ptr @ssh_debug_file, align 8
  %i.q = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.p, i32 noundef 2, ptr noundef nonnull @.str.754) ; 0 uses
  %6 = add nuw nsw i64 %.135.in, 1
  %i.r = icmp samesign ult i64 %.135.in, 15
  br i1 %i.r, label %.lr.ph, label %.lr.ph39.preheader, !llvm.loop !73

.lr.ph39.preheader:                               ; preds = %.lr.ph, %.preheader
  %i.s = load ptr, ptr @ssh_debug_file, align 8
  %i.t = tail call i32 @fputc(i32 noundef 32, ptr noundef %i.s) ; 0 uses
  br label %.lr.ph39

.lr.ph39:                                         ; preds = %.lr.ph39.preheader, %.lr.ph39
  %.237 = phi i64 [ %i.ah, %.lr.ph39 ], [ 0, %.lr.ph39.preheader ] ; 2 uses
  %.13036 = phi i64 [ %i.ag, %.lr.ph39 ], [ %.041, %.lr.ph39.preheader ] ; 2 uses
  %i.u = getelementptr i8, ptr %1, i64 %.13036
  %i.v = load i8, ptr %i.u, align 1               ; 3 uses
  %i.w = zext i8 %i.v to i64
  %i.x = getelementptr [2 x i8], ptr %i.d, i64 %i.w
  %i.y = load i16, ptr %i.x, align 2
  %i.z = and i16 %i.y, 64
  %i.aa = icmp eq i16 %i.z, 0
  %i.ab = icmp eq i8 %i.v, 9
  %or.cond = or i1 %i.ab, %i.aa
  %i.ac = zext i8 %i.v to i32
  %i.ad = select i1 %or.cond, i32 46, i32 %i.ac
  %i.ae = load ptr, ptr @ssh_debug_file, align 8
  %i.af = tail call i32 @fputc(i32 noundef %i.ad, ptr noundef %i.ae) ; 0 uses
  %i.ag = add nuw nsw i64 %.13036, 1
  %i.ah = add nuw nsw i64 %.237, 1
  %exitcond46.not = icmp eq i64 %.237, %umin45
  br i1 %exitcond46.not, label %._crit_edge40, label %.lr.ph39, !llvm.loop !74

._crit_edge40:                                    ; preds = %.lr.ph39
  %i.ai = load ptr, ptr @ssh_debug_file, align 8
  %i.aj = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.ai, i32 noundef 2, ptr noundef nonnull @.str.755) ; 0 uses
  %i.ak = add nuw nsw i64 %.041, 16               ; 2 uses
  %i.al = icmp samesign ult i64 %i.ak, %2
  %indvars.iv.next = add nsw i64 %indvars.iv, -16
  br i1 %i.al, label %bb.c, label %.loopexit, !llvm.loop !75

.loopexit:                                        ; preds = %._crit_edge40, %bb.b, %bb.a
  ret void
}

; Function Attrs: null_pointer_is_valid
declare ptr @wmem_array_get_raw(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @wmem_array_get_count(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @gcry_md_open(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @gcry_md_write(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @gcry_md_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @gcry_md_close(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare zeroext i1 @file_needs_reopen(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare noundef i32 @fileno(ptr noundef captures(none)) local_unnamed_addr #13

; Function Attrs: null_pointer_is_valid
declare void @g_hash_table_remove_all(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare noalias noundef ptr @fopen(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #13

; Function Attrs: nofree nounwind null_pointer_is_valid
declare noundef ptr @fgets(ptr noundef writeonly, i32 noundef, ptr noundef captures(none)) local_unnamed_addr #13

; Function Attrs: nofree nounwind null_pointer_is_valid
declare void @rewind(ptr noundef captures(none)) local_unnamed_addr #13

; Function Attrs: nofree nounwind null_pointer_is_valid memory(read)
declare noundef i32 @ferror(ptr noundef captures(none)) local_unnamed_addr #14

; Function Attrs: nofree nounwind null_pointer_is_valid
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #13

; Function Attrs: noreturn null_pointer_is_valid
declare void @proto_report_dissector_bug(ptr noundef, ...) local_unnamed_addr #15

; Function Attrs: null_pointer_is_valid
declare i32 @gcry_mpi_scan(ptr noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @gcry_mpi_new(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @gcry_mpi_powm(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @gcry_mpi_print(i32 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @gcry_mpi_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @crypto_scalarmult_curve25519(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @__fprintf_chk(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #13

; Function Attrs: null_pointer_is_valid
declare i32 @gcry_md_get_algo_dlen(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_item_ret_uint(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare ptr @wmem_memdup(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #16

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc noundef i32 @ssh_dissect_encrypted_packet(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, ptr noundef %4) unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %3) ; 6 uses
  %i.b = getelementptr i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  tail call void (ptr, i32, ptr, ptr, ...) @col_append_sep_fstr(ptr noundef %i.c, i32 noundef 25, ptr noundef null, ptr noundef nonnull @.str.772, i32 noundef %i.a)
  %.not = icmp eq ptr %4, null
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp sgt i32 %i.a, 4
  br i1 %i.d, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr i8, ptr %2, i64 112
  %i.f = load i32, ptr %i.e, align 8
  %.not40 = icmp eq i32 %i.f, 0
  br i1 %.not40, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = tail call i32 @tvb_get_ntohl(ptr noundef %0, i32 noundef %3)
  %i.h = load i32, ptr @hf_ssh_packet_length, align 4
  %i.i = tail call ptr @proto_tree_add_uint(ptr noundef nonnull %4, i32 noundef %i.h, ptr noundef %0, i32 noundef %3, i32 noundef 4, i32 noundef %i.g) ; 0 uses
  %i.j = add nsw i32 %i.a, -4
  br label %.critedge

bb.e:                                             ; preds = %bb.c
  %i.k = load i32, ptr @hf_ssh_packet_length_encrypted, align 4
  %i.l = tail call ptr @proto_tree_add_item(ptr noundef nonnull %4, i32 noundef %i.k, ptr noundef %0, i32 noundef %3, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.m = add nsw i32 %i.a, -4
  br label %.critedge

.critedge:                                        ; preds = %bb.b, %bb.e, %bb.d
  %.0 = phi i32 [ %i.j, %bb.d ], [ %i.m, %bb.e ], [ %i.a, %bb.b ]
  %i.n = getelementptr i8, ptr %2, i64 56         ; 2 uses
  %i.o = load i32, ptr %i.n, align 8
  %i.p = tail call i32 @llvm.smax.i32(i32 %i.o, i32 0)
  %spec.select = sub i32 %.0, %i.p                ; 2 uses
  %i.q = load i32, ptr @hf_ssh_encrypted_packet, align 4
  %i.r = add i32 %3, 4                            ; 2 uses
  %i.s = tail call ptr @proto_tree_add_item(ptr noundef nonnull %4, i32 noundef %i.q, ptr noundef %0, i32 noundef %i.r, i32 noundef %spec.select, i32 noundef 0) ; 0 uses
  %i.t = load i32, ptr %i.n, align 8              ; 2 uses
  %i.u = icmp sgt i32 %i.t, 0
  br i1 %i.u, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.critedge
  %i.v = load i32, ptr @hf_ssh_mac_string, align 4
  %i.w = add i32 %spec.select, %i.r
  %i.x = tail call ptr @proto_tree_add_item(ptr noundef nonnull %4, i32 noundef %i.v, ptr noundef %0, i32 noundef %i.w, i32 noundef %i.t, i32 noundef 0) ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %.critedge, %bb.f, %bb.a
  %i.y = add i32 %i.a, %3
  ret i32 %i.y
}

; Function Attrs: null_pointer_is_valid
declare zeroext i1 @tvb_find_line_end_remaining(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @col_append_sep_fstr(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @tvb_format_text(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_raw_offset(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @tvb_new_subset_remaining(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_captured_length_remaining(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @tvb_get_ptr(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc zeroext i1 @ssh_decrypt_chacha20(ptr noundef %0, i32 noundef %1, i32 noundef range(i32 0, 2) %2, ptr noundef %3, i32 noundef range(i32 0, 32769) %4, ptr noundef %5, i32 noundef range(i32 0, 32769) %6) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 9 uses
end_hunk_0
