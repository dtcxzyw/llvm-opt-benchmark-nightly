inline.NumInlined: 7
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@proto_tree_add_bytes_with_length

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_string(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @tvb_new_child_real_data(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @add_new_data_source(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden zeroext i1 @zbee_sec_ccm_decrypt(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 17 uses
  %i.b = alloca [16 x i8], align 16               ; 12 uses
  %i.c = alloca [16 x i8], align 16               ; 7 uses
  %i.d = alloca ptr, align 8                      ; 20 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #14
  %i.e = icmp ugt i32 %7, 16
  %i.f = icmp ugt i32 %5, 1048575
  %or.cond = or i1 %i.f, %i.e
  br i1 %or.cond, label %bb.z, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, i8 noundef 0, i64 noundef 16, i1 noundef false) #14
  store i8 1, ptr %i.a, align 16
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(13) %i.g, ptr noundef align 1 dereferenceable(13) %1, i64 noundef 13, i1 noundef false) #14
  %i.h = call i32 @gcry_cipher_open(ptr noundef nonnull %i.d, i32 noundef 7, i32 noundef 6, i32 noundef 0)
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.c, label %bb.z

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %i.d, align 8
  %i.j = call i32 @gcry_cipher_setkey(ptr noundef %i.i, ptr noundef %0, i64 noundef 16)
  %.not63 = icmp eq i32 %i.j, 0
  %i.k = load ptr, ptr %i.d, align 8              ; 2 uses
  br i1 %.not63, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @gcry_cipher_close(ptr noundef %i.k)
  br label %bb.z

bb.e:                                             ; preds = %bb.c
  %i.l = call i32 @gcry_cipher_setctr(ptr noundef %i.k, ptr noundef nonnull %i.a, i64 noundef 16)
  %.not64 = icmp eq i32 %i.l, 0
  br i1 %.not64, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = load ptr, ptr %i.d, align 8
  call void @gcry_cipher_close(ptr noundef %i.m)
  br label %bb.z

bb.g:                                             ; preds = %bb.e
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.c, i8 noundef 0, i64 noundef 16, i1 noundef false) #14
  %i.n = zext i32 %6 to i64                       ; 4 uses
  %i.o = getelementptr i8, ptr %3, i64 %i.n
  %i.p = zext nneg i32 %7 to i64                  ; 2 uses
  %i.q = call ptr @__memcpy_chk(ptr noundef nonnull %i.c, ptr noundef %i.o, i64 noundef %i.p, i64 noundef 16) #14, !alias.scope !12 ; 0 uses
  %i.r = load ptr, ptr %i.d, align 8
  %i.s = call i32 @gcry_cipher_encrypt(ptr noundef %i.r, ptr noundef nonnull %i.c, i64 noundef 16, ptr noundef nonnull %i.c, i64 noundef 16)
  %.not65 = icmp eq i32 %i.s, 0
  %i.t = load ptr, ptr %i.d, align 8              ; 2 uses
  br i1 %.not65, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @gcry_cipher_close(ptr noundef %i.t)
  br label %bb.z

bb.i:                                             ; preds = %bb.g
  %i.u = call i32 @gcry_cipher_encrypt(ptr noundef %i.t, ptr noundef %4, i64 noundef %i.n, ptr noundef %3, i64 noundef %i.n)
  %.not66 = icmp eq i32 %i.u, 0
  %i.v = load ptr, ptr %i.d, align 8
  call void @gcry_cipher_close(ptr noundef %i.v)
  br i1 %.not66, label %bb.j, label %bb.z

bb.j:                                             ; preds = %bb.i
  %i.w = icmp eq i32 %7, 0
  br i1 %i.w, label %bb.z, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.x = call i32 @gcry_cipher_open(ptr noundef nonnull %i.d, i32 noundef 7, i32 noundef 1, i32 noundef 0)
  %.not67 = icmp eq i32 %i.x, 0
  br i1 %.not67, label %bb.l, label %bb.z

bb.l:                                             ; preds = %bb.k
  %i.y = load ptr, ptr %i.d, align 8
  %i.z = call i32 @gcry_cipher_setkey(ptr noundef %i.y, ptr noundef %0, i64 noundef 16)
  %.not68 = icmp eq i32 %i.z, 0
  br i1 %.not68, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aa = load ptr, ptr %i.d, align 8
  call void @gcry_cipher_close(ptr noundef %i.aa)
  br label %bb.z

bb.n:                                             ; preds = %bb.l
  %i.ab = shl nuw nsw i32 %7, 2
  %i.ac = add nuw nsw i32 %i.ab, 56
  %i.ad = and i32 %i.ac, 56
  %.not69 = icmp eq i32 %5, 0                     ; 2 uses
  %i.ae = select i1 %.not69, i32 0, i32 64
  %i.af = or disjoint i32 %i.ad, %i.ae
  %i.ag = trunc nuw nsw i32 %i.af to i8
  %i.ah = or disjoint i8 %i.ag, 1
  store i8 %i.ah, ptr %i.a, align 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(13) %i.g, ptr noundef align 1 dereferenceable(13) %1, i64 noundef 13, i1 noundef false) #14
  %i.ai = trunc i32 %6 to i8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 15
  store i8 %i.ai, ptr %i.aj, align 1
  %i.ak = lshr i32 %6, 8
  %i.al = trunc i32 %i.ak to i8
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 14
  store i8 %i.al, ptr %i.am, align 2
  %i.an = load ptr, ptr %i.d, align 8
  %i.ao = call i32 @gcry_cipher_encrypt(ptr noundef %i.an, ptr noundef nonnull %i.b, i64 noundef 16, ptr noundef nonnull %i.a, i64 noundef 16)
  %.not70 = icmp eq i32 %i.ao, 0
  br i1 %.not70, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ap = load ptr, ptr %i.d, align 8
  call void @gcry_cipher_close(ptr noundef %i.ap)
  br label %bb.z

bb.p:                                             ; preds = %bb.n
  br i1 %.not69, label %.loopexit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aq = load i8, ptr %i.b, align 16
  %i.ar = lshr i32 %5, 8
  %i.as = trunc i32 %i.ar to i8
  %i.at = xor i8 %i.aq, %i.as
  store i8 %i.at, ptr %i.a, align 16
  %i.au = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 2 uses
  %i.av = load i8, ptr %i.au, align 1
  %i.aw = trunc i32 %5 to i8
  %i.ax = xor i8 %i.av, %i.aw
  store i8 %i.ax, ptr %i.g, align 1
  %wide.trip.count = zext nneg i32 %5 to i64
  br label %bb.r

.preheader74:                                     ; preds = %bb.u
  %.not86 = icmp eq i32 %.1, 15
  br i1 %.not86, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader74
  %scevgep92 = getelementptr i8, ptr %i.g, i64 %i.bd
  %scevgep94 = getelementptr i8, ptr %i.au, i64 %i.bd
  %narrow111 = xor i32 %.1, 15
  %i.ay = zext nneg i32 %narrow111 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 1 %scevgep92, ptr noundef align 1 %scevgep94, i64 %i.ay, i1 false)
  br label %.loopexit

bb.r:                                             ; preds = %bb.q, %bb.u
  %indvars.iv = phi i64 [ 0, %bb.q ], [ %indvars.iv.next, %bb.u ] ; 2 uses
  %.079 = phi i32 [ 2, %bb.q ], [ %i.bk, %bb.u ]  ; 2 uses
  %i.az = icmp ugt i32 %.079, 15
  br i1 %i.az, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r
  %i.ba = load ptr, ptr %i.d, align 8
  %i.bb = call i32 @gcry_cipher_encrypt(ptr noundef %i.ba, ptr noundef nonnull %i.b, i64 noundef 16, ptr noundef nonnull %i.a, i64 noundef 16)
  %.not73 = icmp eq i32 %i.bb, 0
  br i1 %.not73, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bc = load ptr, ptr %i.d, align 8
  call void @gcry_cipher_close(ptr noundef %i.bc)
  br label %bb.z

bb.u:                                             ; preds = %bb.s, %bb.r
  %.1 = phi i32 [ %.079, %bb.r ], [ 0, %bb.s ]    ; 4 uses
  %i.bd = zext nneg i32 %.1 to i64                ; 4 uses
  %i.be = getelementptr i8, ptr %i.b, i64 %i.bd
  %i.bf = load i8, ptr %i.be, align 1
  %i.bg = getelementptr i8, ptr %2, i64 %indvars.iv
  %i.bh = load i8, ptr %i.bg, align 1
  %i.bi = xor i8 %i.bh, %i.bf
  %i.bj = getelementptr i8, ptr %i.a, i64 %i.bd
  store i8 %i.bi, ptr %i.bj, align 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bk = add nuw nsw i32 %.1, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader74, label %bb.r, !llvm.loop !16

.loopexit:                                        ; preds = %.lr.ph.preheader, %.preheader74, %bb.p
  %.3 = phi i32 [ 0, %bb.p ], [ 16, %.preheader74 ], [ 16, %.lr.ph.preheader ] ; 2 uses
  %.not87 = icmp eq i32 %6, 0
  br i1 %.not87, label %.preheader, label %.lr.ph83

.preheader:                                       ; preds = %bb.x, %.loopexit
  %.4.lcssa = phi i32 [ %.3, %.loopexit ], [ %i.bz, %bb.x ] ; 3 uses
  %i.bl = icmp samesign ult i32 %.4.lcssa, 16
  br i1 %i.bl, label %.lr.ph85.preheader, label %._crit_edge

.lr.ph85.preheader:                               ; preds = %.preheader
  %i.bm = zext nneg i32 %.4.lcssa to i64          ; 2 uses
  %scevgep104 = getelementptr i8, ptr %i.a, i64 %i.bm
  %scevgep105 = getelementptr i8, ptr %i.b, i64 %i.bm
  %narrow = sub nuw nsw i32 16, %.4.lcssa
  %i.bn = zext nneg i32 %narrow to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %scevgep104, ptr align 1 %scevgep105, i64 %i.bn, i1 false)
  br label %._crit_edge

.lr.ph83:                                         ; preds = %.loopexit, %bb.x
  %indvars.iv99 = phi i64 [ %indvars.iv.next100, %bb.x ], [ 0, %.loopexit ] ; 2 uses
  %.482 = phi i32 [ %i.bz, %bb.x ], [ %.3, %.loopexit ] ; 2 uses
  %i.bo = icmp ugt i32 %.482, 15
  br i1 %i.bo, label %bb.v, label %bb.x

bb.v:                                             ; preds = %.lr.ph83
  %i.bp = load ptr, ptr %i.d, align 8
  %i.bq = call i32 @gcry_cipher_encrypt(ptr noundef %i.bp, ptr noundef nonnull %i.b, i64 noundef 16, ptr noundef nonnull %i.a, i64 noundef 16)
  %.not72 = icmp eq i32 %i.bq, 0
  br i1 %.not72, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.br = load ptr, ptr %i.d, align 8
  call void @gcry_cipher_close(ptr noundef %i.br)
  br label %bb.z

bb.x:                                             ; preds = %bb.v, %.lr.ph83
  %.5 = phi i32 [ %.482, %.lr.ph83 ], [ 0, %bb.v ] ; 2 uses
  %i.bs = zext nneg i32 %.5 to i64                ; 2 uses
  %i.bt = getelementptr i8, ptr %i.b, i64 %i.bs
  %i.bu = load i8, ptr %i.bt, align 1
  %i.bv = getelementptr i8, ptr %4, i64 %indvars.iv99
  %i.bw = load i8, ptr %i.bv, align 1
  %i.bx = xor i8 %i.bw, %i.bu
  %i.by = getelementptr i8, ptr %i.a, i64 %i.bs
  store i8 %i.bx, ptr %i.by, align 1
  %indvars.iv.next100 = add nuw nsw i64 %indvars.iv99, 1 ; 2 uses
  %i.bz = add nuw nsw i32 %.5, 1                  ; 2 uses
  %exitcond103.not = icmp eq i64 %indvars.iv.next100, %i.n
  br i1 %exitcond103.not, label %.preheader, label %.lr.ph83, !llvm.loop !17

._crit_edge:                                      ; preds = %.lr.ph85.preheader, %.preheader
  %i.ca = load ptr, ptr %i.d, align 8
  %i.cb = call i32 @gcry_cipher_encrypt(ptr noundef %i.ca, ptr noundef nonnull %i.b, i64 noundef 16, ptr noundef nonnull %i.a, i64 noundef 16)
  %.not71 = icmp eq i32 %i.cb, 0
  %i.cc = load ptr, ptr %i.d, align 8
  call void @gcry_cipher_close(ptr noundef %i.cc)
  br i1 %.not71, label %bb.y, label %bb.z

bb.y:                                             ; preds = %._crit_edge
  %bcmp = call i32 @bcmp(ptr nonnull %i.b, ptr nonnull %i.c, i64 %i.p)
  %i.cd = icmp eq i32 %bcmp, 0
  br label %bb.z

bb.z:                                             ; preds = %._crit_edge, %bb.i, %bb.k, %bb.j, %bb.b, %bb.a, %bb.y, %bb.w, %bb.t, %bb.o, %bb.m, %bb.h, %bb.f, %bb.d
  %.060 = phi i1 [ %i.cd, %bb.y ], [ false, %bb.a ], [ false, %bb.k ], [ false, %bb.d ], [ false, %bb.f ], [ false, %bb.h ], [ false, %bb.i ], [ false, %bb.b ], [ true, %bb.j ], [ false, %bb.m ], [ false, %bb.o ], [ false, %bb.t ], [ false, %bb.w ], [ false, %._crit_edge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret i1 %.060
}

; Function Attrs: null_pointer_is_valid
declare i32 @gcry_cipher_open(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @gcry_cipher_setkey(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @gcry_cipher_close(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @gcry_cipher_setctr(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @gcry_cipher_encrypt(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @zbee_sec_add_key_to_keyring(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.key_record_t, align 8       ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  %i.a = getelementptr i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %i.b, i64 53
  %i.d = load i16, ptr %i.c, align 1
  %i.e = and i16 %i.d, 8
  %.not = icmp eq i16 %i.e, 0
  br i1 %.not, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.f = tail call ptr @wmem_file_scope()
  %i.g = load i32, ptr @proto_zbee_nwk, align 4
  %i.h = tail call ptr @p_get_proto_data(ptr noundef %i.f, ptr noundef %0, i32 noundef %i.g, i32 noundef 0) ; 3 uses
  %.not17 = icmp eq ptr %i.h, null
  br i1 %.not17, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr @zbee_table_nwk_keyring, align 8
  %i.j = tail call ptr @g_hash_table_lookup(ptr noundef %i.i, ptr noundef nonnull %i.h) ; 2 uses
  %.not18 = icmp eq ptr %i.j, null
  br i1 %.not18, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.k = tail call noalias dereferenceable_or_null(8) ptr @g_malloc0(i64 noundef 8) #13 ; 3 uses
  %i.l = load ptr, ptr @zbee_table_nwk_keyring, align 8
  %i.m = tail call dereferenceable_or_null(4) ptr @g_memdup2(ptr noundef nonnull %i.h, i64 noundef 4) #15
  %i.n = tail call i32 @g_hash_table_insert(ptr noundef %i.l, ptr noundef %i.m, ptr noundef %i.k) ; 0 uses
  %.not19 = icmp eq ptr %i.k, null
  br i1 %.not19, label %bb.g, label %.thread

.thread:                                          ; preds = %bb.c, %bb.d
  %.024 = phi ptr [ %i.k, %bb.d ], [ %i.j, %bb.c ] ; 2 uses
  %i.o = load ptr, ptr %.024, align 8             ; 3 uses
  %.not20 = icmp eq ptr %i.o, null
  br i1 %.not20, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.thread
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = getelementptr i8, ptr %i.p, i64 16
  %i.r = load i128, ptr %i.q, align 1
  %i.s = load i128, ptr %1, align 1
  %i.t = icmp ne i128 %i.r, %i.s
  %i.u = zext i1 %i.t to i32
  %.not21 = icmp eq i32 %i.u, 0
  br i1 %.not21, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e, %.thread
  %i.v = getelementptr i8, ptr %0, i64 20
  %i.w = load i32, ptr %i.v, align 4
  store i32 %i.w, ptr %2, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr null, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, ptr noundef align 1 dereferenceable(16) %1, i64 noundef 16, i1 noundef false) #14
  %i.z = call dereferenceable_or_null(32) ptr @g_memdup2(ptr noundef nonnull %2, i64 noundef 32) #15
  %i.aa = call ptr @g_slist_prepend(ptr noundef %i.o, ptr noundef %i.z)
  store ptr %i.aa, ptr %.024, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.f, %bb.e, %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare noalias ptr @g_malloc0(i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare i32 @g_hash_table_insert(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(1)
declare ptr @g_memdup2(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare ptr @g_slist_prepend(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @zbee_sec_add_key_to_keyring_panid(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 3 uses
  %3 = alloca %struct.key_record_t, align 8       ; 6 uses
  store i32 %2, ptr %i.a, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  %i.b = getelementptr i8, ptr %0, i64 80
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr i8, ptr %i.c, i64 53
  %i.e = load i16, ptr %i.d, align 1
  %i.f = and i16 %i.e, 8
  %.not = icmp eq i16 %i.f, 0
  br i1 %.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr @zbee_table_nwk_keyring, align 8
  %i.h = call ptr @g_hash_table_lookup(ptr noundef %i.g, ptr noundef nonnull %i.a) ; 2 uses
  %.not13 = icmp eq ptr %i.h, null
  br i1 %.not13, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.i = call noalias dereferenceable_or_null(8) ptr @g_malloc0(i64 noundef 8) #13 ; 3 uses
  %i.j = load ptr, ptr @zbee_table_nwk_keyring, align 8
  %i.k = call dereferenceable_or_null(4) ptr @g_memdup2(ptr noundef nonnull %i.a, i64 noundef 4) #15
  %i.l = call i32 @g_hash_table_insert(ptr noundef %i.j, ptr noundef %i.k, ptr noundef %i.i) ; 0 uses
  %.not14 = icmp eq ptr %i.i, null
  br i1 %.not14, label %bb.f, label %.thread

.thread:                                          ; preds = %bb.b, %bb.c
  %.019 = phi ptr [ %i.i, %bb.c ], [ %i.h, %bb.b ] ; 2 uses
  %i.m = load ptr, ptr %.019, align 8             ; 3 uses
  %.not15 = icmp eq ptr %i.m, null
  br i1 %.not15, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.thread
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = getelementptr i8, ptr %i.n, i64 16
  %i.p = load i128, ptr %i.o, align 1
  %i.q = load i128, ptr %1, align 1
  %i.r = icmp ne i128 %i.p, %i.q
  %i.s = zext i1 %i.r to i32
  %.not16 = icmp eq i32 %i.s, 0
  br i1 %.not16, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d, %.thread
  %i.t = getelementptr i8, ptr %0, i64 20
  %i.u = load i32, ptr %i.t, align 4
  store i32 %i.u, ptr %3, align 8
end_hunk_0
begin_hunk_1_@zbee_security_parse_key:bb.a
  %.not46.us.4 = icmp eq i16 %i.al, 0
  br i1 %.not46.us.4, label %.loopexit, label %.split.us.5

.split.us.5:                                      ; preds = %.split.us.4
  %indvars.iv.next54.3 = select i1 %2, i64 11, i64 4
  %i.am = getelementptr i8, ptr %0, i64 6
  %i.an = getelementptr i8, ptr %1, i64 %indvars.iv.next54.3
  store i8 %.3.us.3, ptr %i.an, align 1
  %.3.us.4 = load i8, ptr %i.am, align 1          ; 2 uses
  %i.ao = zext i8 %.3.us.4 to i64
  %i.ap = getelementptr [2 x i8], ptr %i.i, i64 %i.ao
  %i.aq = load i16, ptr %i.ap, align 2
  %i.ar = and i16 %i.aq, 64
  %.not46.us.5 = icmp eq i16 %i.ar, 0
  br i1 %.not46.us.5, label %.loopexit, label %.split.us.6

.split.us.6:                                      ; preds = %.split.us.5
  %indvars.iv.next54.4 = select i1 %2, i64 10, i64 5
  %i.as = getelementptr i8, ptr %0, i64 7
  %i.at = getelementptr i8, ptr %1, i64 %indvars.iv.next54.4
  store i8 %.3.us.4, ptr %i.at, align 1
  %.3.us.5 = load i8, ptr %i.as, align 1          ; 2 uses
  %i.au = zext i8 %.3.us.5 to i64
  %i.av = getelementptr [2 x i8], ptr %i.i, i64 %i.au
  %i.aw = load i16, ptr %i.av, align 2
  %i.ax = and i16 %i.aw, 64
  %.not46.us.6 = icmp eq i16 %i.ax, 0
  br i1 %.not46.us.6, label %.loopexit, label %.split.us.7

.split.us.7:                                      ; preds = %.split.us.6
  %indvars.iv.next54.5 = select i1 %2, i64 9, i64 6
  %i.ay = getelementptr i8, ptr %0, i64 8
  %i.az = getelementptr i8, ptr %1, i64 %indvars.iv.next54.5
  store i8 %.3.us.5, ptr %i.az, align 1
  %.3.us.6 = load i8, ptr %i.ay, align 1          ; 2 uses
  %i.ba = zext i8 %.3.us.6 to i64
  %i.bb = getelementptr [2 x i8], ptr %i.i, i64 %i.ba
  %i.bc = load i16, ptr %i.bb, align 2
  %i.bd = and i16 %i.bc, 64
  %.not46.us.7 = icmp eq i16 %i.bd, 0
  br i1 %.not46.us.7, label %.loopexit, label %.split.us.8

.split.us.8:                                      ; preds = %.split.us.7
  %indvars.iv.next54.6 = select i1 %2, i64 8, i64 7
  %i.be = getelementptr i8, ptr %0, i64 9
  %i.bf = getelementptr i8, ptr %1, i64 %indvars.iv.next54.6
  store i8 %.3.us.6, ptr %i.bf, align 1
  %.3.us.7 = load i8, ptr %i.be, align 1          ; 2 uses
  %i.bg = zext i8 %.3.us.7 to i64
  %i.bh = getelementptr [2 x i8], ptr %i.i, i64 %i.bg
  %i.bi = load i16, ptr %i.bh, align 2
  %i.bj = and i16 %i.bi, 64
  %.not46.us.8 = icmp eq i16 %i.bj, 0
  br i1 %.not46.us.8, label %.loopexit, label %.split.us.9

.split.us.9:                                      ; preds = %.split.us.8
  %indvars.iv.next54.7 = select i1 %2, i64 7, i64 8
  %i.bk = getelementptr i8, ptr %0, i64 10
  %i.bl = getelementptr i8, ptr %1, i64 %indvars.iv.next54.7
  store i8 %.3.us.7, ptr %i.bl, align 1
  %.3.us.8 = load i8, ptr %i.bk, align 1          ; 2 uses
  %i.bm = zext i8 %.3.us.8 to i64
  %i.bn = getelementptr [2 x i8], ptr %i.i, i64 %i.bm
  %i.bo = load i16, ptr %i.bn, align 2
  %i.bp = and i16 %i.bo, 64
  %.not46.us.9 = icmp eq i16 %i.bp, 0
  br i1 %.not46.us.9, label %.loopexit, label %.split.us.10

.split.us.10:                                     ; preds = %.split.us.9
  %indvars.iv.next54.8 = select i1 %2, i64 6, i64 9
  %i.bq = getelementptr i8, ptr %0, i64 11
  %i.br = getelementptr i8, ptr %1, i64 %indvars.iv.next54.8
  store i8 %.3.us.8, ptr %i.br, align 1
  %.3.us.9 = load i8, ptr %i.bq, align 1          ; 2 uses
  %i.bs = zext i8 %.3.us.9 to i64
  %i.bt = getelementptr [2 x i8], ptr %i.i, i64 %i.bs
  %i.bu = load i16, ptr %i.bt, align 2
  %i.bv = and i16 %i.bu, 64
  %.not46.us.10 = icmp eq i16 %i.bv, 0
  br i1 %.not46.us.10, label %.loopexit, label %.split.us.11

.split.us.11:                                     ; preds = %.split.us.10
  %indvars.iv.next54.9 = select i1 %2, i64 5, i64 10
  %i.bw = getelementptr i8, ptr %0, i64 12
  %i.bx = getelementptr i8, ptr %1, i64 %indvars.iv.next54.9
  store i8 %.3.us.9, ptr %i.bx, align 1
  %.3.us.10 = load i8, ptr %i.bw, align 1         ; 2 uses
  %i.by = zext i8 %.3.us.10 to i64
  %i.bz = getelementptr [2 x i8], ptr %i.i, i64 %i.by
  %i.ca = load i16, ptr %i.bz, align 2
  %i.cb = and i16 %i.ca, 64
  %.not46.us.11 = icmp eq i16 %i.cb, 0
  br i1 %.not46.us.11, label %.loopexit, label %.split.us.12

.split.us.12:                                     ; preds = %.split.us.11
  %indvars.iv.next54.10 = select i1 %2, i64 4, i64 11
  %i.cc = getelementptr i8, ptr %0, i64 13
  %i.cd = getelementptr i8, ptr %1, i64 %indvars.iv.next54.10
  store i8 %.3.us.10, ptr %i.cd, align 1
  %.3.us.11 = load i8, ptr %i.cc, align 1         ; 2 uses
  %i.ce = zext i8 %.3.us.11 to i64
  %i.cf = getelementptr [2 x i8], ptr %i.i, i64 %i.ce
  %i.cg = load i16, ptr %i.cf, align 2
  %i.ch = and i16 %i.cg, 64
  %.not46.us.12 = icmp eq i16 %i.ch, 0
  br i1 %.not46.us.12, label %.loopexit, label %.split.us.13

.split.us.13:                                     ; preds = %.split.us.12
  %indvars.iv.next54.11 = select i1 %2, i64 3, i64 12
  %i.ci = getelementptr i8, ptr %0, i64 14
  %i.cj = getelementptr i8, ptr %1, i64 %indvars.iv.next54.11
  store i8 %.3.us.11, ptr %i.cj, align 1
  %.3.us.12 = load i8, ptr %i.ci, align 1         ; 2 uses
  %i.ck = zext i8 %.3.us.12 to i64
  %i.cl = getelementptr [2 x i8], ptr %i.i, i64 %i.ck
  %i.cm = load i16, ptr %i.cl, align 2
  %i.cn = and i16 %i.cm, 64
  %.not46.us.13 = icmp eq i16 %i.cn, 0
  br i1 %.not46.us.13, label %.loopexit, label %.split.us.14

.split.us.14:                                     ; preds = %.split.us.13
  %indvars.iv.next54.12 = select i1 %2, i64 2, i64 13
  %i.co = getelementptr i8, ptr %0, i64 15
  %i.cp = getelementptr i8, ptr %1, i64 %indvars.iv.next54.12
  store i8 %.3.us.12, ptr %i.cp, align 1
  %.3.us.13 = load i8, ptr %i.co, align 1         ; 2 uses
  %i.cq = zext i8 %.3.us.13 to i64
  %i.cr = getelementptr [2 x i8], ptr %i.i, i64 %i.cq
  %i.cs = load i16, ptr %i.cr, align 2
  %i.ct = and i16 %i.cs, 64
  %.not46.us.14 = icmp eq i16 %i.ct, 0
  br i1 %.not46.us.14, label %.loopexit, label %.split.us.15

.split.us.15:                                     ; preds = %.split.us.14
  %indvars.iv.next54.13 = select i1 %2, i64 1, i64 14 ; 2 uses
  %i.cu = getelementptr i8, ptr %0, i64 16
  %i.cv = getelementptr i8, ptr %1, i64 %indvars.iv.next54.13
  store i8 %.3.us.13, ptr %i.cv, align 1
  %.3.us.14 = load i8, ptr %i.cu, align 1         ; 2 uses
  %i.cw = zext i8 %.3.us.14 to i64
  %i.cx = getelementptr [2 x i8], ptr %i.i, i64 %i.cw
  %i.cy = load i16, ptr %i.cx, align 2
  %i.cz = and i16 %i.cy, 64
  %.not46.us.15 = icmp eq i16 %i.cz, 0
  br i1 %.not46.us.15, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %.split.us.15
  %i.da = getelementptr i8, ptr %1, i64 %indvars.iv.next54.13
  %i.db = getelementptr i8, ptr %i.da, i64 %i.e
  store i8 %.3.us.14, ptr %i.db, align 1
  br label %.loopexit

.split:                                           ; preds = %.split.preheader, %bb.g
  %indvars.iv = phi i64 [ %i.g, %.split.preheader ], [ %indvars.iv.next, %bb.g ] ; 2 uses
  %.150 = phi i8 [ %i.c, %.split.preheader ], [ %.3, %bb.g ] ; 2 uses
  %.03848 = phi i32 [ 15, %.split.preheader ], [ %i.dv, %bb.g ] ; 2 uses
  %.14147 = phi ptr [ %i.b, %.split.preheader ], [ %i.du, %bb.g ] ; 3 uses
  switch i8 %.150, label %bb.e [
    i8 58, label %bb.d
    i8 45, label %bb.d
    i8 32, label %bb.d
  ]

bb.d:                                             ; preds = %.split, %.split, %.split
  %i.dc = getelementptr i8, ptr %.14147, i64 1
  %i.dd = load i8, ptr %.14147, align 1
  br label %bb.e

bb.e:                                             ; preds = %.split, %bb.d
  %.242 = phi ptr [ %i.dc, %bb.d ], [ %.14147, %.split ] ; 3 uses
  %.2 = phi i8 [ %i.dd, %bb.d ], [ %.150, %.split ] ; 2 uses
  %i.de = zext i8 %.2 to i64
  %i.df = getelementptr [2 x i8], ptr %i.f, i64 %i.de
  %i.dg = load i16, ptr %i.df, align 2
  %i.dh = and i16 %i.dg, 1024
  %.not = icmp eq i16 %i.dh, 0
  br i1 %.not, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.di = tail call i32 @g_ascii_xdigit_value(i8 noundef signext %.2) #16
  %.tr = trunc i32 %i.di to i8
  %i.dj = shl i8 %.tr, 4                          ; 2 uses
  %i.dk = getelementptr i8, ptr %1, i64 %indvars.iv ; 2 uses
  store i8 %i.dj, ptr %i.dk, align 1
  %i.dl = load i8, ptr %.242, align 1             ; 2 uses
  %i.dm = zext i8 %i.dl to i64
  %i.dn = getelementptr [2 x i8], ptr %i.f, i64 %i.dm
  %i.do = load i16, ptr %i.dn, align 2
  %i.dp = and i16 %i.do, 1024
  %.not45 = icmp eq i16 %i.dp, 0
  br i1 %.not45, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.dq = getelementptr i8, ptr %.242, i64 1
  %i.dr = tail call i32 @g_ascii_xdigit_value(i8 noundef signext %i.dl) #16
  %i.ds = trunc i32 %i.dr to i8
  %i.dt = or i8 %i.dj, %i.ds
  store i8 %i.dt, ptr %i.dk, align 1
  %i.du = getelementptr i8, ptr %.242, i64 2
  %.3 = load i8, ptr %i.dq, align 1
  %i.dv = add nsw i32 %.03848, -1
  %.not56 = icmp eq i32 %.03848, 0
  %indvars.iv.next = add i64 %indvars.iv, %i.e
  br i1 %.not56, label %.loopexit, label %.split, !llvm.loop !19

.loopexit:                                        ; preds = %bb.e, %bb.f, %bb.g, %.split.us.preheader, %.split.us.1, %.split.us.2, %.split.us.3, %.split.us.4, %.split.us.5, %.split.us.6, %.split.us.7, %.split.us.8, %.split.us.9, %.split.us.10, %.split.us.11, %.split.us.12, %.split.us.13, %.split.us.14, %.split.us.15, %bb.c, %bb.a
  %.039 = phi i1 [ false, %bb.a ], [ false, %.split.us.8 ], [ true, %bb.c ], [ false, %.split.us.preheader ], [ false, %.split.us.1 ], [ false, %.split.us.15 ], [ false, %.split.us.2 ], [ false, %.split.us.10 ], [ false, %.split.us.3 ], [ false, %.split.us.14 ], [ false, %.split.us.4 ], [ false, %.split.us.9 ], [ false, %.split.us.5 ], [ false, %.split.us.13 ], [ false, %.split.us.6 ], [ false, %.split.us.11 ], [ false, %.split.us.7 ], [ false, %.split.us.12 ], [ false, %bb.f ], [ false, %bb.e ], [ true, %bb.g ]
  ret i1 %.039
}

; Function Attrs: null_pointer_is_valid
declare noalias ptr @wmem_strdup_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid willreturn memory(none)
declare i32 @g_ascii_xdigit_value(i8 noundef signext) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare void @g_slist_free_full(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @zbee_free_key_record(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  tail call void @g_free(ptr noundef %i.b)
  tail call void @g_free(ptr noundef %0)
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @zbee_sec_key_hash(ptr nofree noundef readonly captures(none) %0, i8 noundef zeroext range(i8 0, 3) %1, ptr noundef initializes((0, 17)) %2) unnamed_addr #0 {
.preheader.preheader:
  %i.a = alloca [32 x i8], align 16               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.b = getelementptr i8, ptr %0, i64 1
  %i.c = getelementptr i8, ptr %0, i64 2
  %i.d = getelementptr i8, ptr %0, i64 3
  %i.e = getelementptr i8, ptr %0, i64 4
  %i.f = getelementptr i8, ptr %0, i64 5
  %i.g = getelementptr i8, ptr %0, i64 6
  %i.h = getelementptr i8, ptr %0, i64 7
  %i.i = getelementptr i8, ptr %0, i64 8
  %i.j = getelementptr i8, ptr %0, i64 9
  %i.k = getelementptr i8, ptr %0, i64 10
  %i.l = getelementptr i8, ptr %0, i64 11
  %i.m = getelementptr i8, ptr %0, i64 12
  %i.n = getelementptr i8, ptr %0, i64 13
  %i.o = getelementptr i8, ptr %0, i64 14
  %i.p = getelementptr i8, ptr %0, i64 15
  %i.q = load <16 x i8>, ptr %0, align 1
  %i.r = load i8, ptr %0, align 1
  %i.s = xor <16 x i8> %i.q, splat (i8 92)
  store <16 x i8> %i.s, ptr %i.a, align 16
  %i.t = xor i8 %i.r, 54
  store i8 %i.t, ptr %2, align 1
  %i.u = load i8, ptr %i.b, align 1
  %i.v = xor i8 %i.u, 54
  %i.w = getelementptr i8, ptr %2, i64 1
  store i8 %i.v, ptr %i.w, align 1
  %i.x = load i8, ptr %i.c, align 1
  %i.y = xor i8 %i.x, 54
  %i.z = getelementptr i8, ptr %2, i64 2
  store i8 %i.y, ptr %i.z, align 1
  %i.aa = load i8, ptr %i.d, align 1
  %i.ab = xor i8 %i.aa, 54
  %i.ac = getelementptr i8, ptr %2, i64 3
  store i8 %i.ab, ptr %i.ac, align 1
  %i.ad = load i8, ptr %i.e, align 1
  %i.ae = xor i8 %i.ad, 54
  %i.af = getelementptr i8, ptr %2, i64 4
  store i8 %i.ae, ptr %i.af, align 1
  %i.ag = load i8, ptr %i.f, align 1
  %i.ah = xor i8 %i.ag, 54
  %i.ai = getelementptr i8, ptr %2, i64 5
  store i8 %i.ah, ptr %i.ai, align 1
  %i.aj = load i8, ptr %i.g, align 1
  %i.ak = xor i8 %i.aj, 54
  %i.al = getelementptr i8, ptr %2, i64 6
  store i8 %i.ak, ptr %i.al, align 1
  %i.am = load i8, ptr %i.h, align 1
  %i.an = xor i8 %i.am, 54
  %i.ao = getelementptr i8, ptr %2, i64 7
  store i8 %i.an, ptr %i.ao, align 1
  %i.ap = load i8, ptr %i.i, align 1
  %i.aq = xor i8 %i.ap, 54
  %i.ar = getelementptr i8, ptr %2, i64 8
  store i8 %i.aq, ptr %i.ar, align 1
  %i.as = load i8, ptr %i.j, align 1
  %i.at = xor i8 %i.as, 54
  %i.au = getelementptr i8, ptr %2, i64 9
  store i8 %i.at, ptr %i.au, align 1
  %i.av = load i8, ptr %i.k, align 1
  %i.aw = xor i8 %i.av, 54
  %i.ax = getelementptr i8, ptr %2, i64 10
  store i8 %i.aw, ptr %i.ax, align 1
  %i.ay = load i8, ptr %i.l, align 1
  %i.az = xor i8 %i.ay, 54
  %i.ba = getelementptr i8, ptr %2, i64 11
  store i8 %i.az, ptr %i.ba, align 1
  %i.bb = load i8, ptr %i.m, align 1
  %i.bc = xor i8 %i.bb, 54
  %i.bd = getelementptr i8, ptr %2, i64 12
  store i8 %i.bc, ptr %i.bd, align 1
  %i.be = load i8, ptr %i.n, align 1
  %i.bf = xor i8 %i.be, 54
  %i.bg = getelementptr i8, ptr %2, i64 13
  store i8 %i.bf, ptr %i.bg, align 1
  %i.bh = load i8, ptr %i.o, align 1
  %i.bi = xor i8 %i.bh, 54
  %i.bj = getelementptr i8, ptr %2, i64 14
  store i8 %i.bi, ptr %i.bj, align 1
  %i.bk = load i8, ptr %i.p, align 1
  %i.bl = xor i8 %i.bk, 54
  %i.bm = getelementptr i8, ptr %2, i64 15
  store i8 %i.bl, ptr %i.bm, align 1
  %i.bn = getelementptr i8, ptr %2, i64 16
  store i8 %1, ptr %i.bn, align 1
  %i.bo = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  call fastcc void @zbee_sec_hash(ptr noundef %2, i32 noundef 17, ptr noundef nonnull %i.bo)
  call fastcc void @zbee_sec_hash(ptr noundef nonnull %i.a, i32 noundef 32, ptr noundef %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @zbee_sec_hash(ptr nofree noundef readonly captures(none) %0, i32 noundef range(i32 17, 33) %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 13 uses
  %i.b = alloca ptr, align 8                      ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  tail call void @llvm.memset.p0.i64(ptr noundef align 1 dereferenceable(16) %2, i8 noundef 0, i64 noundef 16, i1 noundef false) #14
  %i.c = call i32 @gcry_cipher_open(ptr noundef nonnull %i.b, i32 noundef 7, i32 noundef 1, i32 noundef 0)
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %.preheader.preheader, label %bb.c

.preheader.preheader:                             ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %.loopexit39
  %indvars.iv = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next, %.loopexit39 ] ; 2 uses
  %.042 = phi i32 [ 0, %.preheader.preheader ], [ %.2, %.loopexit39 ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.d = getelementptr i8, ptr %0, i64 %indvars.iv
  %i.e = load i8, ptr %i.d, align 1
  %i.f = add i32 %.042, 1                         ; 2 uses
  %i.g = zext i32 %.042 to i64
  %i.h = getelementptr i8, ptr %i.a, i64 %i.g
  store i8 %i.e, ptr %i.h, align 1
  %i.i = icmp ugt i32 %i.f, 15
  br i1 %i.i, label %.loopexit39.loopexit, label %.loopexit39

.loopexit39.loopexit:                             ; preds = %.preheader
  %i.j = load ptr, ptr %i.b, align 8
  %i.k = call i32 @gcry_cipher_setkey(ptr noundef %i.j, ptr noundef %2, i64 noundef 16) ; 0 uses
  %i.l = load ptr, ptr %i.b, align 8
  %i.m = call i32 @gcry_cipher_encrypt(ptr noundef %i.l, ptr noundef %2, i64 noundef 16, ptr noundef nonnull %i.a, i64 noundef 16) ; 0 uses
  %i.n = load <16 x i8>, ptr %i.a, align 16
  %i.o = load <16 x i8>, ptr %2, align 1
  %i.p = xor <16 x i8> %i.o, %i.n
  store <16 x i8> %i.p, ptr %2, align 1
  br label %.loopexit39

.loopexit39:                                      ; preds = %.loopexit39.loopexit, %.preheader
  %.2 = phi i32 [ %i.f, %.preheader ], [ 0, %.loopexit39.loopexit ] ; 4 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %bb.b, label %.preheader, !llvm.loop !20

bb.b:                                             ; preds = %.loopexit39
  %i.q = zext nneg i32 %.2 to i64
  %i.r = getelementptr i8, ptr %i.a, i64 %i.q
  store i8 -128, ptr %i.r, align 1
  %.344 = add nuw nsw i32 %.2, 1                  ; 2 uses
  %.not3845 = icmp eq i32 %.344, 14
  br i1 %.not3845, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %.loopexit
  %.347 = phi i32 [ %.3, %.loopexit ], [ %.344, %bb.b ]
  %.3.in46 = phi i32 [ %.5, %.loopexit ], [ %.2, %bb.b ]
  %i.s = icmp ugt i32 %.3.in46, 14
  br i1 %i.s, label %.loopexit.loopexit, label %.loopexit

.loopexit.loopexit:                               ; preds = %.lr.ph
  %i.t = load ptr, ptr %i.b, align 8
  %i.u = call i32 @gcry_cipher_setkey(ptr noundef %i.t, ptr noundef %2, i64 noundef 16) ; 0 uses
  %i.v = load ptr, ptr %i.b, align 8
  %i.w = call i32 @gcry_cipher_encrypt(ptr noundef %i.v, ptr noundef %2, i64 noundef 16, ptr noundef nonnull %i.a, i64 noundef 16) ; 0 uses
  %i.x = load <16 x i8>, ptr %i.a, align 16
  %i.y = load <16 x i8>, ptr %2, align 1
  %i.z = xor <16 x i8> %i.y, %i.x
  store <16 x i8> %i.z, ptr %2, align 1
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %.lr.ph
  %.5 = phi i32 [ %.347, %.lr.ph ], [ 0, %.loopexit.loopexit ] ; 3 uses
  %i.aa = zext nneg i32 %.5 to i64
  %i.ab = getelementptr i8, ptr %i.a, i64 %i.aa
  store i8 0, ptr %i.ab, align 1
  %.3 = add nuw nsw i32 %.5, 1                    ; 2 uses
  %.not38 = icmp eq i32 %.3, 14
  br i1 %.not38, label %._crit_edge, label %.lr.ph, !llvm.loop !21

end_hunk_1
