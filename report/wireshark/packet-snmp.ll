inline.NumInlined: 22
inline.NumDeleted: 15
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 4
begin_hunk_0_@dissect_snmp_T_msgAuthenticationParameters:bb.a
  %i.e = tail call i32 @tvb_offset_from_real_beginning(ptr noundef nonnull %i.b)
  store i32 %i.e, ptr getelementptr inbounds nuw (i8, ptr @usm_p, i64 8), align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret i32 %i.a
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_snmp_T_msgPrivacyParameters(i1 noundef zeroext %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) #0 {
bb.a:
  %i.a = tail call i32 @dissect_ber_octet_string(i1 noundef zeroext %0, ptr noundef %3, ptr noundef %4, ptr noundef %1, i32 noundef %2, i32 noundef %5, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @usm_p, i64 56))
  ret i32 %i.a
}

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_reported_length_remaining(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_captured_length(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(1)
declare ptr @g_memdup2(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @set_ue_keys(ptr nofree noundef captures(none) initializes((40, 52)) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 7 uses
  %i.b = getelementptr i8, ptr %0, i64 16         ; 6 uses
  %i.c = load i32, ptr %i.b, align 8
  %i.d = zext i32 %i.c to i64
  %i.e = getelementptr [4 x i8], ptr @auth_hash_len, i64 %i.d
  %i.f = load i32, ptr %i.e, align 4              ; 10 uses
  %i.g = zext i32 %i.f to i64                     ; 3 uses
  %i.h = tail call noalias ptr @g_malloc(i64 noundef %i.g) #12 ; 2 uses
  %i.i = getelementptr i8, ptr %0, i64 40
  store ptr %i.h, ptr %i.i, align 8
  %i.j = getelementptr i8, ptr %0, i64 48
  store i32 %i.f, ptr %i.j, align 8
  %i.k = load i32, ptr %i.b, align 8
  %i.l = getelementptr i8, ptr %0, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = getelementptr i8, ptr %0, i64 32
  %i.o = load i32, ptr %i.n, align 8
  %i.p = getelementptr i8, ptr %0, i64 96         ; 4 uses
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = getelementptr i8, ptr %0, i64 104        ; 4 uses
  %i.s = load i32, ptr %i.r, align 8
  tail call fastcc void @snmp_usm_password_to_key(i32 noundef %i.k, ptr noundef %i.m, i32 noundef %i.o, ptr noundef %i.q, i32 noundef %i.s, ptr noundef %i.h)
  %i.t = getelementptr i8, ptr %0, i64 116
  %i.u = load i32, ptr %i.t, align 4              ; 2 uses
  %.off = add i32 %i.u, -1
  %switch = icmp ult i32 %.off, 3
  br i1 %switch, label %switch.lookup, label %bb.i

switch.lookup:                                    ; preds = %bb.a
  %switch.tableidx = shl nuw nsw i32 %i.u, 3
  %switch.offset = add nuw nsw i32 %switch.tableidx, 8 ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %switch.lookup
  %.065 = phi i32 [ %i.f, %switch.lookup ], [ %i.w, %bb.b ] ; 3 uses
  %i.v = icmp ult i32 %.065, %switch.offset
  %i.w = add i32 %.065, %i.f
  br i1 %i.v, label %bb.b, label %bb.c, !llvm.loop !34

bb.c:                                             ; preds = %bb.b
  %i.x = zext i32 %.065 to i64
  %i.y = tail call noalias ptr @g_malloc(i64 noundef %i.x) #12 ; 2 uses
  %i.z = getelementptr i8, ptr %0, i64 80         ; 4 uses
  store ptr %i.y, ptr %i.z, align 8
  %i.aa = getelementptr i8, ptr %0, i64 88
  store i32 %switch.offset, ptr %i.aa, align 8
  %i.ab = load i32, ptr %i.b, align 8
  %i.ac = getelementptr i8, ptr %0, i64 64
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = getelementptr i8, ptr %0, i64 72
  %i.af = load i32, ptr %i.ae, align 8
  %i.ag = load ptr, ptr %i.p, align 8
  %i.ah = load i32, ptr %i.r, align 8
  tail call fastcc void @snmp_usm_password_to_key(i32 noundef %i.ab, ptr noundef %i.ad, i32 noundef %i.af, ptr noundef %i.ag, i32 noundef %i.ah, ptr noundef %i.y)
  %.not7073 = icmp ult i32 %i.f, %switch.offset
  br i1 %.not7073, label %.lr.ph, label %.critedge72

.lr.ph:                                           ; preds = %bb.c
  %i.ai = getelementptr i8, ptr %0, i64 120
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.h
  %.16674 = phi i32 [ %i.f, %.lr.ph ], [ %i.bg, %bb.h ] ; 4 uses
  %i.aj = load i32, ptr %i.ai, align 8
  switch i32 %i.aj, label %bb.h [
    i32 0, label %bb.e
    i32 1, label %bb.f
  ]

bb.e:                                             ; preds = %bb.d
  %i.ak = load i32, ptr %i.b, align 8
  %i.al = load ptr, ptr %i.z, align 8             ; 2 uses
  %i.am = sub nsw i32 %.16674, %i.f
  %i.an = zext i32 %i.am to i64
  %i.ao = getelementptr i8, ptr %i.al, i64 %i.an
  %i.ap = load ptr, ptr %i.p, align 8
  %i.aq = load i32, ptr %i.r, align 8
  %i.ar = zext nneg i32 %.16674 to i64
  %i.as = getelementptr i8, ptr %i.al, i64 %i.ar
  call fastcc void @snmp_usm_password_to_key(i32 noundef %i.ak, ptr noundef %i.ao, i32 noundef %i.f, ptr noundef %i.ap, i32 noundef %i.aq, ptr noundef %i.as)
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.at = load i32, ptr %i.b, align 8
  %i.au = zext i32 %i.at to i64
  %i.av = getelementptr [4 x i8], ptr @auth_hash_algo, i64 %i.au
  %i.aw = load i32, ptr %i.av, align 4
  %i.ax = call i32 @gcry_md_open(ptr noundef nonnull %i.a, i32 noundef %i.aw, i32 noundef 0)
  %.not = icmp eq i32 %i.ax, 0
  br i1 %.not, label %bb.g, label %.critedge

bb.g:                                             ; preds = %bb.f
  %i.ay = load ptr, ptr %i.a, align 8
  %i.az = load ptr, ptr %i.z, align 8
  %i.ba = zext nneg i32 %.16674 to i64            ; 2 uses
  call void @gcry_md_write(ptr noundef %i.ay, ptr noundef %i.az, i64 noundef %i.ba)
  %i.bb = load ptr, ptr %i.z, align 8
  %i.bc = getelementptr i8, ptr %i.bb, i64 %i.ba
  %i.bd = load ptr, ptr %i.a, align 8
  %i.be = call ptr @gcry_md_read(ptr noundef %i.bd, i32 noundef 0)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 1 %i.bc, ptr noundef align 1 %i.be, i64 noundef %i.g, i1 noundef false) #10
  %i.bf = load ptr, ptr %i.a, align 8
  call void @gcry_md_close(ptr noundef %i.bf)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.d, %bb.e
  %i.bg = add nuw nsw i32 %.16674, %i.f           ; 2 uses
  %.not70 = icmp ult i32 %i.bg, %switch.offset
  br i1 %.not70, label %bb.d, label %.critedge72, !llvm.loop !35

.critedge:                                        ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %.critedge72

bb.i:                                             ; preds = %bb.a
  %i.bh = tail call noalias ptr @g_malloc(i64 noundef %i.g) #12 ; 2 uses
  %i.bi = getelementptr i8, ptr %0, i64 80
  store ptr %i.bh, ptr %i.bi, align 8
  %i.bj = getelementptr i8, ptr %0, i64 88
  store i32 %i.f, ptr %i.bj, align 8
  %i.bk = load i32, ptr %i.b, align 8
  %i.bl = getelementptr i8, ptr %0, i64 64
  %i.bm = load ptr, ptr %i.bl, align 8
  %i.bn = getelementptr i8, ptr %0, i64 72
  %i.bo = load i32, ptr %i.bn, align 8
  %i.bp = load ptr, ptr %i.p, align 8
  %i.bq = load i32, ptr %i.r, align 8
  tail call fastcc void @snmp_usm_password_to_key(i32 noundef %i.bk, ptr noundef %i.bm, i32 noundef %i.bo, ptr noundef %i.bp, i32 noundef %i.bq, ptr noundef %i.bh)
  br label %.critedge72

.critedge72:                                      ; preds = %bb.h, %bb.c, %.critedge, %bb.i
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare noalias ptr @g_malloc(i64 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @snmp_usm_password_to_key(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 13 uses
  %i.b = alloca [64 x i8], align 16               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  %i.c = zext i32 %0 to i64                       ; 2 uses
  %i.d = getelementptr [4 x i8], ptr @auth_hash_algo, i64 %i.c
  %i.e = load i32, ptr %i.d, align 4              ; 2 uses
  %i.f = call i32 @gcry_md_open(ptr noundef nonnull %i.a, i32 noundef %i.e, i32 noundef 0)
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr [4 x i8], ptr @auth_hash_len, i64 %i.c
  %i.h = load i32, ptr %i.g, align 4
  %.not27 = icmp eq i32 %2, 0
  br i1 %.not27, label %.split.us, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.b
  %scevgep = getelementptr inbounds nuw i8, ptr %i.b, i64 63
  br label %.preheader

.split.us:                                        ; preds = %bb.b, %.split.us
  %.02332.us = phi i32 [ %i.j, %.split.us ], [ 0, %bb.b ] ; 2 uses
  store i8 0, ptr %i.b, align 16
  %i.i = load ptr, ptr %i.a, align 8
  call void @gcry_md_write(ptr noundef %i.i, ptr noundef nonnull %i.b, i64 noundef 64)
  %i.j = add nuw nsw i32 %.02332.us, 64
  %i.k = icmp samesign ult i32 %.02332.us, 1048512
  br i1 %i.k, label %.split.us, label %.split34.us, !llvm.loop !36

.preheader:                                       ; preds = %.preheader.preheader, %.loopexit
  %.02431 = phi i32 [ %i.x, %.loopexit ], [ 0, %.preheader.preheader ] ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.preheader
  %.030 = phi ptr [ %i.b, %.preheader ], [ %i.v, %bb.c ] ; 3 uses
  %.128 = phi i32 [ %.02431, %.preheader ], [ %i.q, %bb.c ] ; 3 uses
  %6 = or disjoint i32 %.128, 1
  %i.l = urem i32 %.128, %2
  %i.m = zext nneg i32 %i.l to i64
  %i.n = getelementptr i8, ptr %1, i64 %i.m
  %i.o = load i8, ptr %i.n, align 1
  %i.p = getelementptr i8, ptr %.030, i64 1       ; 2 uses
  store i8 %i.o, ptr %.030, align 1
  %i.q = add nuw nsw i32 %.128, 2
  %i.r = urem i32 %6, %2
  %i.s = zext nneg i32 %i.r to i64
  %i.t = getelementptr i8, ptr %1, i64 %i.s
  %i.u = load i8, ptr %i.t, align 1
  %i.v = getelementptr i8, ptr %.030, i64 2
  store i8 %i.u, ptr %i.p, align 1
  %exitcond.not.1 = icmp eq ptr %i.p, %scevgep
  br i1 %exitcond.not.1, label %.loopexit, label %bb.c, !llvm.loop !37

.loopexit:                                        ; preds = %bb.c
  %i.w = load ptr, ptr %i.a, align 8
  call void @gcry_md_write(ptr noundef %i.w, ptr noundef nonnull %i.b, i64 noundef 64)
  %i.x = add nuw nsw i32 %.02431, 64
  %i.y = icmp samesign ult i32 %.02431, 1048512
  br i1 %i.y, label %.preheader, label %.split34.us, !llvm.loop !36

.split34.us:                                      ; preds = %.loopexit, %.split.us
  %i.z = load ptr, ptr %i.a, align 8
  %i.aa = call ptr @gcry_md_read(ptr noundef %i.z, i32 noundef 0)
  %i.ab = zext i32 %i.h to i64                    ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 1 %5, ptr noundef align 1 %i.aa, i64 noundef %i.ab, i1 noundef false) #10
  %i.ac = load ptr, ptr %i.a, align 8
  call void @gcry_md_close(ptr noundef %i.ac)
  %i.ad = call i32 @gcry_md_open(ptr noundef nonnull %i.a, i32 noundef %i.e, i32 noundef 0)
  %.not26 = icmp eq i32 %i.ad, 0
  br i1 %.not26, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.split34.us
  %i.ae = load ptr, ptr %i.a, align 8
  call void @gcry_md_write(ptr noundef %i.ae, ptr noundef %5, i64 noundef %i.ab)
  %i.af = load ptr, ptr %i.a, align 8
  %i.ag = zext i32 %4 to i64
  call void @gcry_md_write(ptr noundef %i.af, ptr noundef %3, i64 noundef %i.ag)
  %i.ah = load ptr, ptr %i.a, align 8
  call void @gcry_md_write(ptr noundef %i.ah, ptr noundef %5, i64 noundef %i.ab)
  %i.ai = load ptr, ptr %i.a, align 8
  %i.aj = call ptr @gcry_md_read(ptr noundef %i.ai, i32 noundef 0)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 1 %5, ptr noundef align 1 %i.aj, i64 noundef %i.ab, i1 noundef false) #10
  %i.ak = load ptr, ptr %i.a, align 8
  call void @gcry_md_close(ptr noundef %i.ak)
  br label %bb.e

bb.e:                                             ; preds = %.split34.us, %bb.a, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare i32 @gcry_md_open(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @gcry_md_write(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @gcry_md_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @gcry_md_close(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_snmp_ScopedPDU(i1 noundef zeroext %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) #0 {
bb.a:
  %i.a = load i32, ptr @ett_snmp_ScopedPDU, align 4
  %i.b = tail call i32 @dissect_ber_sequence(i1 noundef zeroext %0, ptr noundef %3, ptr noundef %4, ptr noundef %1, i32 noundef %2, ptr noundef nonnull @ScopedPDU_sequence, i32 noundef %5, i32 noundef %i.a)
  ret i32 %i.b
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_snmp_T_encryptedPDU(i1 zeroext %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, i32 %5) #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 7 uses
  %i.b = alloca i8, align 1                       ; 6 uses
  %i.c = alloca i32, align 4                      ; 7 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = alloca ptr, align 8                      ; 6 uses
  %i.f = alloca ptr, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #10
  %i.g = load i32, ptr @hf_snmp_encryptedPDU, align 4
  %i.h = call i32 @dissect_ber_octet_string(i1 noundef zeroext false, ptr noundef %3, ptr noundef %4, ptr noundef %1, i32 noundef %2, i32 noundef %i.g, ptr noundef nonnull %i.e)
  %i.i = load i8, ptr getelementptr inbounds nuw (i8, ptr @usm_p, i64 1), align 1, !range !6, !noundef !7
  %i.j = trunc nuw i8 %i.i to i1
  %i.k = load ptr, ptr %i.e, align 8
  %i.l = icmp ne ptr %i.k, null
  %or.cond = select i1 %i.j, i1 %i.l, i1 false
  %i.m = load ptr, ptr getelementptr inbounds nuw (i8, ptr @usm_p, i64 72), align 8 ; 2 uses
  %i.n = icmp ne ptr %i.m, null
  %or.cond4 = select i1 %or.cond, i1 %i.n, i1 false
  br i1 %or.cond4, label %bb.b, label %bb.o

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr i8, ptr %i.m, i64 56
  %i.p = load ptr, ptr %i.o, align 8
  %.not = icmp eq ptr %i.p, null
  br i1 %.not, label %bb.o, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #10
  store ptr null, ptr %i.f, align 8
  %i.q = getelementptr i8, ptr %3, i64 24
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = load i32, ptr @ett_encryptedPDU, align 4
  %i.t = call ptr @proto_item_add_subtree(ptr noundef %i.r, i32 noundef %i.s) ; 3 uses
  %i.u = load ptr, ptr getelementptr inbounds nuw (i8, ptr @usm_p, i64 72), align 8
  %i.v = getelementptr i8, ptr %i.u, i64 56
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = load ptr, ptr %i.e, align 8
  %i.y = getelementptr i8, ptr %3, i64 16         ; 5 uses
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = call ptr %i.w(ptr noundef nonnull @usm_p, ptr noundef %i.x, ptr noundef %i.z, ptr noundef nonnull %i.f) ; 11 uses
  %.not37 = icmp eq ptr %i.aa, null
  br i1 %.not37, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ab = load ptr, ptr %i.y, align 8
  %i.ac = load ptr, ptr %i.e, align 8
  %i.ad = load ptr, ptr %i.f, align 8
  %i.ae = call ptr (ptr, ptr, ptr, ptr, i32, ptr, ...) @proto_tree_add_expert_format_remaining(ptr noundef %i.t, ptr noundef %i.ab, ptr noundef nonnull @ei_snmp_failed_decrypted_data_pdu, ptr noundef %i.ac, i32 noundef 0, ptr noundef nonnull @.str.434, ptr noundef %i.ad) ; 0 uses
  br label %.thread

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #10
  %i.af = call i32 @get_ber_identifier(ptr noundef nonnull %i.aa, i32 noundef 0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c)
  %i.ag = call i32 @get_ber_length(ptr noundef nonnull %i.aa, i32 noundef %i.af, ptr noundef null, ptr noundef null) ; 4 uses
  %i.ah = load i8, ptr %i.a, align 1              ; 2 uses
  %i.ai = and i8 %i.ah, -3
  %or.cond.not.i = icmp eq i8 %i.ai, 1
  br i1 %or.cond.not.i, label %bb.m, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aj = load i8, ptr %i.b, align 1, !range !6, !noundef !7
  %i.ak = trunc nuw i8 %i.aj to i1
  %.not.i = xor i1 %i.ak, true
  %i.al = icmp ne i8 %i.ah, 0
  %or.cond5.i = or i1 %i.al, %.not.i
  %i.am = load i32, ptr %i.c, align 4
  %i.an = icmp ne i32 %i.am, 10
  %or.cond7.i = select i1 %or.cond5.i, i1 true, i1 %i.an
  br i1 %or.cond7.i, label %bb.g, label %bb.m

bb.g:                                             ; preds = %bb.f
  %i.ao = call zeroext i8 @tvb_get_uint8(ptr noundef nonnull %i.aa, i32 noundef %i.ag)
  %i.ap = icmp eq i8 %i.ao, 0
  br i1 %i.ap, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.aq = add i32 %i.ag, 1
  %i.ar = call zeroext i8 @tvb_get_uint8(ptr noundef nonnull %i.aa, i32 noundef %i.aq)
  %i.as = icmp eq i8 %i.ar, 0
  br i1 %i.as, label %bb.n, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.at = call i32 @get_ber_identifier(ptr noundef nonnull %i.aa, i32 noundef %i.ag, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c)
  %i.au = call i32 @get_ber_length(ptr noundef nonnull %i.aa, i32 noundef %i.at, ptr noundef nonnull %i.d, ptr noundef null)
  %i.av = load i32, ptr %i.d, align 4
  %i.aw = add i32 %i.av, %i.au
  %.not31.i = icmp sgt i32 %i.aw, %i.ag
  br i1 %.not31.i, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.ax = load i8, ptr %i.a, align 1              ; 2 uses
  %i.ay = and i8 %i.ax, -3
  %or.cond10.not.i = icmp eq i8 %i.ay, 1
  br i1 %or.cond10.not.i, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.not32.i = icmp eq i8 %i.ax, 0
  br i1 %.not32.i, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.az = load i32, ptr %i.c, align 4             ; 2 uses
  %i.ba = icmp slt i32 %i.az, 18
  %i.bb = and i32 %i.az, -9
  %i.bc = icmp ne i32 %i.bb, 4
  %or.cond14.i = and i1 %i.ba, %i.bc
  br i1 %or.cond14.i, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.e, %bb.i, %bb.f, %bb.l, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  %i.bd = load ptr, ptr %i.y, align 8
  %i.be = call ptr @proto_tree_add_expert_remaining(ptr noundef %i.t, ptr noundef %i.bd, ptr noundef nonnull @ei_snmp_decrypted_data_bad_formatted, ptr noundef nonnull %i.aa, i32 noundef 0) ; 0 uses
  br label %.thread

.thread:                                          ; preds = %bb.d, %bb.m
  %.str.435.sink = phi ptr [ @.str.435, %bb.d ], [ @.str.436, %bb.m ]
  %i.bf = load ptr, ptr %i.y, align 8
  %i.bg = getelementptr i8, ptr %i.bf, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8
  call void @col_set_str(ptr noundef %i.bh, i32 noundef 25, ptr noundef nonnull %.str.435.sink)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #10
  br label %bb.p

bb.n:                                             ; preds = %bb.j, %bb.l, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  %i.bi = load ptr, ptr %i.y, align 8
  %i.bj = call ptr @add_new_data_source(ptr noundef %i.bi, ptr noundef nonnull %i.aa, ptr noundef nonnull @.str.43) ; 0 uses
  %i.bk = load i32, ptr @hf_snmp_decryptedPDU, align 4
  %i.bl = call ptr @proto_tree_add_item(ptr noundef %i.t, i32 noundef %i.bk, ptr noundef nonnull %i.aa, i32 noundef 0, i32 noundef -1, i32 noundef 0)
  %i.bm = load i32, ptr @ett_decrypted, align 4
  %i.bn = call ptr @proto_item_add_subtree(ptr noundef %i.bl, i32 noundef %i.bm)
  %i.bo = load i32, ptr @ett_snmp_ScopedPDU, align 4
  %i.bp = call i32 @dissect_ber_sequence(i1 noundef zeroext false, ptr noundef %3, ptr noundef %i.bn, ptr noundef nonnull %i.aa, i32 noundef 0, ptr noundef nonnull @ScopedPDU_sequence, i32 noundef -1, i32 noundef %i.bo) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #10
  br label %bb.p

end_hunk_0
