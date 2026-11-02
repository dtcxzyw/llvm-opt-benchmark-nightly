Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/aws-lc/original/pem_lib?download=true
inline.NumInlined: 9
inline.NumDeleted: 5
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@BIO_free

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @PEM_bytes_read_bio(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(address_is_null) %2, ptr noundef %3, ptr noundef %4, ptr nofree noundef readonly captures(address_is_null) %5, ptr noundef %6) local_unnamed_addr #0 {
bb.a:
  %7 = alloca %struct.evp_cipher_info_st, align 8 ; 4 uses
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = alloca ptr, align 8                      ; 7 uses
  %i.c = alloca ptr, align 8                      ; 8 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  store ptr null, ptr %i.a, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  store ptr null, ptr %i.b, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  store ptr null, ptr %i.c, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  %i.e = call i32 @PEM_read_bio(ptr noundef %4, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d)
  %.not36 = icmp eq i32 %i.e, 0
  br i1 %.not36, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %check_pem.exit.thread25, %bb.a
  %i.f = tail call i32 @ERR_peek_error() #8
  %i.g = and i32 %i.f, -16773121
  %or.cond = icmp eq i32 %i.g, 150995054
  br i1 %or.cond, label %bb.b, label %bb.z

bb.b:                                             ; preds = %._crit_edge
  tail call void (i32, ...) @ERR_add_error_data(i32 noundef 2, ptr noundef nonnull @.str.9, ptr noundef %3) #8
  br label %bb.z

.lr.ph:                                           ; preds = %bb.a, %check_pem.exit.thread25
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !13   ; 15 uses
  %i.i = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.h, ptr noundef nonnull readonly dereferenceable(1) %3) #9
  %.not.i = icmp eq i32 %i.i, 0
  br i1 %.not.i, label %check_pem.exit.thread, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.j = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %3, ptr noundef nonnull dereferenceable(16) @.str.15) #9
  %.not24.i = icmp eq i32 %i.j, 0
  br i1 %.not24.i, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.k = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.h, ptr noundef nonnull dereferenceable(22) @.str.16) #9
  %.not25.i = icmp eq i32 %i.k, 0
  br i1 %.not25.i, label %check_pem.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.h, ptr noundef nonnull dereferenceable(12) @.str.17) #9
  %.not26.i = icmp eq i32 %i.l, 0
  br i1 %.not26.i, label %check_pem.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.h, ptr noundef nonnull dereferenceable(16) @.str.18) #9
  %.not27.i = icmp eq i32 %i.m, 0
  br i1 %.not27.i, label %check_pem.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.h, ptr noundef nonnull dereferenceable(15) @.str.19) #9
  %.not28.i = icmp eq i32 %i.n, 0
  br i1 %.not28.i, label %check_pem.exit.thread, label %check_pem.exit

bb.h:                                             ; preds = %bb.c
  %i.o = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %3, ptr noundef nonnull dereferenceable(11) @.str.21) #9
  %.not30.i = icmp eq i32 %i.o, 0
  br i1 %.not30.i, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.p = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.h, ptr noundef nonnull dereferenceable(14) @.str.22) #9
  %.not31.i = icmp eq i32 %i.p, 0
  br i1 %.not31.i, label %check_pem.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.q = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.h, ptr noundef nonnull dereferenceable(15) @.str.23) #9
  %.not32.i = icmp eq i32 %i.q, 0
  br i1 %.not32.i, label %check_pem.exit.thread, label %check_pem.exit

bb.k:                                             ; preds = %bb.h
  %i.r = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.h, ptr noundef nonnull dereferenceable(17) @.str.25) #9
  %.not34.i = icmp eq i32 %i.r, 0                 ; 2 uses
  br i1 %.not34.i, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.s = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %3, ptr noundef nonnull dereferenceable(12) @.str.26) #9
  %.not35.i = icmp eq i32 %i.s, 0
  br i1 %.not35.i, label %check_pem.exit.thread, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.t = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.h, ptr noundef nonnull dereferenceable(24) @.str.27) #9
  %.not36.i = icmp eq i32 %i.t, 0
  br i1 %.not36.i, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.u = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %3, ptr noundef nonnull dereferenceable(20) @.str.28) #9
  %.not37.i = icmp eq i32 %i.u, 0
  br i1 %.not37.i, label %check_pem.exit.thread, label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.v = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.h, ptr noundef nonnull dereferenceable(12) @.str.26) #9
  %.not38.i = icmp eq i32 %i.v, 0                 ; 2 uses
  br i1 %.not38.i, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.w = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %3, ptr noundef nonnull dereferenceable(20) @.str.29) #9
  %.not39.i = icmp eq i32 %i.w, 0
  br i1 %.not39.i, label %check_pem.exit.thread, label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  br i1 %.not34.i, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.x = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %3, ptr noundef nonnull dereferenceable(20) @.str.29) #9
  %.not41.i = icmp eq i32 %i.x, 0
  br i1 %.not41.i, label %check_pem.exit.thread, label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  br i1 %.not38.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.y = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %3, ptr noundef nonnull dereferenceable(6) @.str.30) #9
  %.not43.i = icmp eq i32 %i.y, 0
  br i1 %.not43.i, label %check_pem.exit.thread, label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.z = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.h, ptr noundef nonnull dereferenceable(20) @.str.31) #9
  %.not44.i = icmp eq i32 %i.z, 0
  br i1 %.not44.i, label %bb.v, label %check_pem.exit.thread25

bb.v:                                             ; preds = %bb.u
  %i.aa = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %3, ptr noundef nonnull dereferenceable(6) @.str.30) #9
  %.not45.i = icmp eq i32 %i.aa, 0
  br i1 %.not45.i, label %check_pem.exit.thread, label %check_pem.exit.thread25

check_pem.exit:                                   ; preds = %bb.j, %bb.g
  %.str.20.sink = phi ptr [ @.str.20, %bb.g ], [ @.str.24, %bb.j ]
  %i.ab = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.h, ptr noundef nonnull dereferenceable(14) %.str.20.sink) #9
  %.0.shrunk.i.not = icmp eq i32 %i.ab, 0
  br i1 %.0.shrunk.i.not, label %check_pem.exit.thread, label %check_pem.exit.thread25

check_pem.exit.thread25:                          ; preds = %bb.v, %bb.u, %check_pem.exit
  tail call void @OPENSSL_free(ptr noundef nonnull %i.h) #8
  %i.ac = load ptr, ptr %i.b, align 8, !tbaa !13
  tail call void @OPENSSL_free(ptr noundef %i.ac) #8
  %i.ad = load ptr, ptr %i.c, align 8, !tbaa !13
  tail call void @OPENSSL_free(ptr noundef %i.ad) #8
  %i.ae = call i32 @PEM_read_bio(ptr noundef %4, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d)
  %.not = icmp eq i32 %i.ae, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

check_pem.exit.thread:                            ; preds = %bb.v, %bb.i, %bb.j, %bb.d, %bb.e, %bb.f, %bb.g, %.lr.ph, %bb.l, %bb.n, %bb.p, %bb.r, %bb.t, %check_pem.exit
  %i.af = load ptr, ptr %i.b, align 8, !tbaa !13  ; 3 uses
  %i.ag = call i32 @PEM_get_EVP_CIPHER_INFO(ptr noundef %i.af, ptr noundef nonnull %7)
  %.not19 = icmp eq i32 %i.ag, 0
  br i1 %.not19, label %.thread, label %bb.w

bb.w:                                             ; preds = %check_pem.exit.thread
  %i.ah = load ptr, ptr %i.c, align 8, !tbaa !13  ; 2 uses
  %i.ai = call i32 @PEM_do_header(ptr noundef nonnull %7, ptr noundef %i.ah, ptr noundef nonnull %i.d, ptr noundef %5, ptr noundef %6)
  %.not20 = icmp eq i32 %i.ai, 0
  br i1 %.not20, label %.thread, label %bb.x

bb.x:                                             ; preds = %bb.w
  store ptr %i.ah, ptr %0, align 8, !tbaa !13
  %i.aj = load i64, ptr %i.d, align 8, !tbaa !15
  store i64 %i.aj, ptr %1, align 8, !tbaa !15
  %.not21 = icmp eq ptr %2, null
  br i1 %.not21, label %.thread, label %.thread33

.thread33:                                        ; preds = %bb.x
  store ptr %i.h, ptr %2, align 8, !tbaa !13
  call void @OPENSSL_free(ptr noundef %i.af) #8
  br label %bb.z

.thread:                                          ; preds = %bb.x, %bb.w, %check_pem.exit.thread
  %.031 = phi i32 [ 0, %check_pem.exit.thread ], [ 1, %bb.x ], [ 0, %bb.w ] ; 2 uses
  %i.ak = phi i1 [ false, %check_pem.exit.thread ], [ true, %bb.x ], [ false, %bb.w ]
  call void @OPENSSL_free(ptr noundef nonnull %i.h) #8
  call void @OPENSSL_free(ptr noundef %i.af) #8
  br i1 %i.ak, label %bb.z, label %bb.y

bb.y:                                             ; preds = %.thread
  %i.al = load ptr, ptr %i.c, align 8, !tbaa !13
  call void @OPENSSL_free(ptr noundef %i.al) #8
  br label %bb.z

bb.z:                                             ; preds = %.thread33, %.thread, %bb.y, %._crit_edge, %bb.b
  %.016 = phi i32 [ 0, %._crit_edge ], [ 0, %bb.b ], [ 1, %.thread33 ], [ %.031, %bb.y ], [ %.031, %.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #8
  ret i32 %.016
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @PEM_read_bio(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef writeonly captures(none) %4) local_unnamed_addr #0 {
bb.a:
  %5 = alloca %struct.evp_encode_ctx_st, align 4  ; 5 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 11 uses
  %i.c = alloca [256 x i8], align 16              ; 34 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  store i32 0, ptr %i.b, align 4, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  %i.d = tail call ptr @BUF_MEM_new() #8          ; 6 uses
  %i.e = tail call ptr @BUF_MEM_new() #8          ; 16 uses
  %i.f = tail call ptr @BUF_MEM_new() #8          ; 16 uses
  %i.g = icmp eq ptr %i.d, null
  %i.h = icmp eq ptr %i.e, null
  %or.cond = select i1 %i.g, i1 true, i1 %i.h
  %i.i = icmp eq ptr %i.f, null
  %or.cond3 = select i1 %or.cond, i1 true, i1 %i.i
  br i1 %or.cond3, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @BUF_MEM_free(ptr noundef %i.d) #8
  tail call void @BUF_MEM_free(ptr noundef %i.e) #8
  tail call void @BUF_MEM_free(ptr noundef %i.f) #8
  br label %bb.ac

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 254
  store i8 0, ptr %i.j, align 2, !tbaa !9
  %i.k = call i32 @BIO_gets(ptr noundef %0, ptr noundef nonnull %i.c, i32 noundef 254) #8 ; 2 uses
  %i.l = icmp slt i32 %i.k, 1
  br i1 %i.l, label %._crit_edge, label %.preheader143.lr.ph

.preheader143.lr.ph:                              ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 11 ; 2 uses
  br label %.preheader143

.preheader143:                                    ; preds = %.preheader143.lr.ph, %.backedge
  %6 = phi i32 [ %i.k, %.preheader143.lr.ph ], [ %i.ai, %.backedge ]
  %7 = zext nneg i32 %6 to i64
  br label %.preheader143.a

._crit_edge:                                      ; preds = %.backedge, %bb.c
  call void @ERR_put_error(i32 noundef 9, i32 noundef 0, i32 noundef 110, ptr noundef nonnull @.str.8, i32 noundef 586) #8
  br label %.loopexit140

.preheader143.a:                                  ; preds = %.preheader143, %bb.d
  %indvars.iv = phi i64 [ %7, %.preheader143 ], [ %indvars.iv.next, %bb.d ] ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv
  %i.o = load i8, ptr %i.n, align 1, !tbaa !9
  %i.p = icmp slt i8 %i.o, 33
  br i1 %i.p, label %bb.d, label %.critedge

bb.d:                                             ; preds = %.preheader143.a
  %8 = trunc nuw i64 %indvars.iv to i32
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.q = icmp sgt i32 %8, 0
  br i1 %i.q, label %.preheader143.a, label %.critedge, !llvm.loop !20

.critedge:                                        ; preds = %bb.d, %.preheader143.a
  %.0108.lcssa = phi i64 [ -1, %bb.d ], [ %indvars.iv, %.preheader143.a ]
  %sext180 = shl i64 %.0108.lcssa, 32
  %9 = ashr exact i64 %sext180, 32
  %i.r = getelementptr i8, ptr %i.c, i64 %9       ; 2 uses
  %i.s = getelementptr i8, ptr %i.r, i64 1
  store i8 10, ptr %i.s, align 1, !tbaa !9
  %i.t = getelementptr i8, ptr %i.r, i64 2
  store i8 0, ptr %i.t, align 1, !tbaa !9
  %i.u = load i64, ptr %i.c, align 16
  %i.v = xor i64 %i.u, 5135583711884815661
  %i.w = getelementptr i8, ptr %i.c, i64 3
  %i.x = load i64, ptr %i.w, align 1
  %i.y = xor i64 %i.x, 2327878627850595629
  %i.z = or i64 %i.v, %i.y
  %i.aa = icmp ne i64 %i.z, 0
  %i.ab = zext i1 %i.aa to i32
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %bb.e, label %.backedge

bb.e:                                             ; preds = %.critedge
  %i.ad = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.m) #9
  %i.ae = shl i64 %i.ad, 32                       ; 3 uses
  %sext = add i64 %i.ae, 21474836480
  %i.af = ashr exact i64 %sext, 32
  %i.ag = getelementptr inbounds i8, ptr %i.c, i64 %i.af
  %i.ah = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.ag, ptr noundef nonnull dereferenceable(7) @.str.12, i64 noundef 6) #9
  %.not = icmp eq i32 %i.ah, 0
  br i1 %.not, label %bb.f, label %.backedge

.backedge:                                        ; preds = %bb.e, %.critedge
  %i.ai = call i32 @BIO_gets(ptr noundef %0, ptr noundef nonnull %i.c, i32 noundef 254) #8 ; 2 uses
  %i.aj = icmp slt i32 %i.ai, 1
  br i1 %i.aj, label %._crit_edge, label %.preheader143

bb.f:                                             ; preds = %bb.e
  %sext121 = add i64 %i.ae, 38654705664
  %i.ak = ashr exact i64 %sext121, 32
  %i.al = call i64 @BUF_MEM_grow(ptr noundef %i.d, i64 noundef %i.ak) #8
  %.not122 = icmp eq i64 %i.al, 0
  br i1 %.not122, label %.loopexit140, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.am = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 5 uses
  %sext123 = add i64 %i.ae, -25769803776          ; 2 uses
  %i.an = ashr exact i64 %sext123, 32             ; 2 uses
  %i.ao = icmp eq i64 %sext123, 0
  br i1 %i.ao, label %OPENSSL_memcpy.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ap = load ptr, ptr %i.am, align 8, !tbaa !25
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ap, ptr nonnull readonly align 1 %i.m, i64 range(i64 -2147483648, 2147483648) %i.an, i1 false)
  br label %OPENSSL_memcpy.exit

OPENSSL_memcpy.exit:                              ; preds = %bb.g, %bb.h
  %i.aq = load ptr, ptr %i.am, align 8, !tbaa !25
  %i.ar = getelementptr inbounds i8, ptr %i.aq, i64 %i.an
  store i8 0, ptr %i.ar, align 1, !tbaa !9
  %i.as = call i64 @BUF_MEM_grow(ptr noundef %i.e, i64 noundef 256) #8
  %.not124 = icmp eq i64 %i.as, 0
  br i1 %.not124, label %.loopexit140, label %bb.i

bb.i:                                             ; preds = %OPENSSL_memcpy.exit
  %i.at = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !25
  store i8 0, ptr %i.au, align 1, !tbaa !9
  %i.av = call i32 @BIO_gets(ptr noundef %0, ptr noundef nonnull %i.c, i32 noundef 254) #8 ; 2 uses
  %i.aw = icmp slt i32 %i.av, 1
  br i1 %i.aw, label %._crit_edge149, label %.preheader141

.preheader141:                                    ; preds = %bb.i, %OPENSSL_memcpy.exit136
  %i.ax = phi i32 [ %i.bt, %OPENSSL_memcpy.exit136 ], [ %i.av, %bb.i ]
  %.0107148 = phi i32 [ %i.bk, %OPENSSL_memcpy.exit136 ], [ 0, %bb.i ] ; 4 uses
  %10 = zext nneg i32 %i.ax to i64
  br label %bb.j

bb.j:                                             ; preds = %.preheader141, %bb.k
  %indvars.iv160 = phi i64 [ %10, %.preheader141 ], [ %indvars.iv.next161, %bb.k ] ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv160
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !9
  %i.ba = icmp slt i8 %i.az, 33
  %11 = trunc nuw i64 %indvars.iv160 to i32       ; 2 uses
  br i1 %i.ba, label %bb.k, label %.critedge5

bb.k:                                             ; preds = %bb.j
  %indvars.iv.next161 = add nsw i64 %indvars.iv160, -1
  %i.bb = icmp sgt i32 %11, 0
  br i1 %i.bb, label %bb.j, label %.critedge5, !llvm.loop !21

.critedge5:                                       ; preds = %bb.k, %bb.j
  %.1109.lcssa = phi i32 [ -1, %bb.k ], [ %11, %bb.j ] ; 2 uses
  %i.bc = sext i32 %.1109.lcssa to i64
  %i.bd = getelementptr i8, ptr %i.c, i64 %i.bc
  %i.be = getelementptr i8, ptr %i.bd, i64 1
  store i8 10, ptr %i.be, align 1, !tbaa !9
  %i.bf = add nsw i32 %.1109.lcssa, 2             ; 3 uses
  %i.bg = zext nneg i32 %i.bf to i64              ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.bg
  store i8 0, ptr %i.bh, align 1, !tbaa !9
  %i.bi = load i8, ptr %i.c, align 16, !tbaa !9
  %i.bj = icmp eq i8 %i.bi, 10
  br i1 %i.bj, label %._crit_edge149, label %bb.l

bb.l:                                             ; preds = %.critedge5
  %i.bk = add nuw nsw i32 %i.bf, %.0107148        ; 4 uses
  %i.bl = add nuw nsw i32 %i.bk, 9
  %i.bm = zext nneg i32 %i.bl to i64
  %i.bn = call i64 @BUF_MEM_grow(ptr noundef %i.e, i64 noundef %i.bm) #8
  %.not125 = icmp eq i64 %i.bn, 0
  br i1 %.not125, label %.loopexit140, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bo = call i32 @CRYPTO_memcmp(ptr noundef nonnull %i.c, ptr noundef nonnull @.str.13, i64 noundef 9) #8
  %i.bp = icmp eq i32 %i.bo, 0
  br i1 %i.bp, label %._crit_edge149, label %12

12:                                               ; preds = %bb.m
  %13 = icmp eq i32 %i.bf, 0
  br i1 %13, label %OPENSSL_memcpy.exit136, label %14

14:                                               ; preds = %12
  %15 = load ptr, ptr %i.at, align 8, !tbaa !25
  %16 = zext nneg i32 %.0107148 to i64
  %17 = getelementptr inbounds nuw i8, ptr %15, i64 %16
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %17, ptr nonnull readonly align 16 %i.c, i64 range(i64 -2147483648, 2147483648) %i.bg, i1 false)
  br label %OPENSSL_memcpy.exit136

OPENSSL_memcpy.exit136:                           ; preds = %12, %14
  %i.bq = load ptr, ptr %i.at, align 8, !tbaa !25
  %i.br = zext nneg i32 %i.bk to i64
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.br
  store i8 0, ptr %i.bs, align 1, !tbaa !9
  %i.bt = call i32 @BIO_gets(ptr noundef %0, ptr noundef nonnull %i.c, i32 noundef 254) #8 ; 2 uses
  %i.bu = icmp slt i32 %i.bt, 1
  br i1 %i.bu, label %._crit_edge149, label %.preheader141

._crit_edge149:                                   ; preds = %OPENSSL_memcpy.exit136, %.critedge5, %bb.m, %bb.i
  %.0107.lcssa = phi i32 [ 0, %bb.i ], [ %.0107148, %bb.m ], [ %.0107148, %.critedge5 ], [ %i.bk, %OPENSSL_memcpy.exit136 ] ; 2 uses
  %.not127 = phi i1 [ true, %bb.i ], [ false, %bb.m ], [ true, %.critedge5 ], [ true, %OPENSSL_memcpy.exit136 ]
  store i32 0, ptr %i.b, align 4, !tbaa !16
  %i.bv = call i64 @BUF_MEM_grow(ptr noundef %i.f, i64 noundef 1024) #8
  %.not126 = icmp eq i64 %i.bv, 0
  br i1 %.not126, label %.loopexit140, label %bb.n

bb.n:                                             ; preds = %._crit_edge149
  %i.bw = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !25
  store i8 0, ptr %i.bx, align 1, !tbaa !9
  br i1 %.not127, label %.preheader139, label %bb.s

.preheader139:                                    ; preds = %bb.n, %OPENSSL_memcpy.exit137
  %i.by = phi i32 [ %i.ct, %OPENSSL_memcpy.exit137 ], [ 0, %bb.n ] ; 7 uses
  %i.bz = call i32 @BIO_gets(ptr noundef %0, ptr noundef nonnull %i.c, i32 noundef 254) #8 ; 2 uses
  %i.ca = icmp slt i32 %i.bz, 1
  br i1 %i.ca, label %.loopexit, label %.preheader138.preheader

.preheader138.preheader:                          ; preds = %.preheader139
  %18 = zext nneg i32 %i.bz to i64
  br label %.preheader138

.preheader138:                                    ; preds = %.preheader138.preheader, %bb.o
  %indvars.iv164 = phi i64 [ %18, %.preheader138.preheader ], [ %indvars.iv.next165, %bb.o ] ; 4 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv164
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !9
  %i.cd = icmp slt i8 %i.cc, 33
  br i1 %i.cd, label %bb.o, label %.critedge7.split.loop.exit191

bb.o:                                             ; preds = %.preheader138
  %indvars.iv.next165 = add nsw i64 %indvars.iv164, -1
  %i.ce = icmp sgt i64 %indvars.iv164, 0
  br i1 %i.ce, label %.preheader138, label %.critedge7, !llvm.loop !22

.critedge7.split.loop.exit191:                    ; preds = %.preheader138
  %19 = trunc nuw nsw i64 %indvars.iv164 to i32
  br label %.critedge7

.critedge7:                                       ; preds = %bb.o, %.critedge7.split.loop.exit191
  %.2.lcssa = phi i32 [ %19, %.critedge7.split.loop.exit191 ], [ -1, %bb.o ] ; 4 uses
  %i.cf = sext i32 %.2.lcssa to i64
  %i.cg = getelementptr i8, ptr %i.c, i64 %i.cf
  %i.ch = getelementptr i8, ptr %i.cg, i64 1
  store i8 10, ptr %i.ch, align 1, !tbaa !9
  %i.ci = add nsw i32 %.2.lcssa, 2                ; 4 uses
  %i.cj = zext nneg i32 %i.ci to i64              ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.cj
  store i8 0, ptr %i.ck, align 1, !tbaa !9
  %.not128 = icmp eq i32 %i.ci, 65
  %i.cl = call i32 @CRYPTO_memcmp(ptr noundef nonnull %i.c, ptr noundef nonnull @.str.13, i64 noundef 9) #8
  %i.cm = icmp eq i32 %i.cl, 0
  %i.cn = icmp sgt i32 %.2.lcssa, 63
  %or.cond11 = or i1 %i.cn, %i.cm
  br i1 %or.cond11, label %.loopexit, label %bb.p

bb.p:                                             ; preds = %.critedge7
  %i.co = add nsw i32 %.2.lcssa, 11
  %i.cp = add i32 %i.co, %i.by
  %i.cq = sext i32 %i.cp to i64
  %i.cr = call i64 @BUF_MEM_grow_clean(ptr noundef %i.f, i64 noundef %i.cq) #8
  %.not129 = icmp eq i64 %i.cr, 0
  br i1 %.not129, label %.loopexit140, label %20

20:                                               ; preds = %bb.p
  %21 = icmp eq i32 %i.ci, 0
  %22 = load ptr, ptr %i.bw, align 8, !tbaa !25
  %23 = sext i32 %i.by to i64
  %24 = getelementptr inbounds i8, ptr %22, i64 %23 ; 2 uses
  br i1 %21, label %OPENSSL_memcpy.exit137.thread, label %OPENSSL_memcpy.exit137

OPENSSL_memcpy.exit137.thread:                    ; preds = %20
  store i8 0, ptr %24, align 1, !tbaa !9
  store i32 %i.by, ptr %i.b, align 4, !tbaa !16
  br label %bb.q

OPENSSL_memcpy.exit137:                           ; preds = %20
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %24, ptr nonnull readonly align 16 %i.c, i64 range(i64 -2147483648, 2147483648) %i.cj, i1 false)
  %i.cs = load ptr, ptr %i.bw, align 8, !tbaa !25
  %i.ct = add nsw i32 %i.by, %i.ci                ; 4 uses
  %i.cu = sext i32 %i.ct to i64
  %i.cv = getelementptr inbounds i8, ptr %i.cs, i64 %i.cu
  store i8 0, ptr %i.cv, align 1, !tbaa !9
  store i32 %i.ct, ptr %i.b, align 4, !tbaa !16
  br i1 %.not128, label %.preheader139, label %bb.q

bb.q:                                             ; preds = %OPENSSL_memcpy.exit137, %OPENSSL_memcpy.exit137.thread
  %25 = phi i32 [ %i.by, %OPENSSL_memcpy.exit137.thread ], [ %i.ct, %OPENSSL_memcpy.exit137 ] ; 2 uses
  store i8 0, ptr %i.c, align 16, !tbaa !9
  %i.cw = call i32 @BIO_gets(ptr noundef %0, ptr noundef nonnull %i.c, i32 noundef 254) #8 ; 2 uses
  %i.cx = icmp slt i32 %i.cw, 1
  br i1 %i.cx, label %.loopexit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.q
  %26 = zext nneg i32 %i.cw to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %bb.r
  %indvars.iv167 = phi i64 [ %26, %.preheader.preheader ], [ %indvars.iv.next168, %bb.r ] ; 4 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv167
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !9
  %i.da = icmp slt i8 %i.cz, 33
  br i1 %i.da, label %bb.r, label %.critedge9

bb.r:                                             ; preds = %.preheader
  %indvars.iv.next168 = add nsw i64 %indvars.iv167, -1
  %i.db = icmp sgt i64 %indvars.iv167, 0
  br i1 %i.db, label %.preheader, label %.critedge9, !llvm.loop !23

.critedge9:                                       ; preds = %bb.r, %.preheader
  %.3.lcssa = phi i64 [ -1, %bb.r ], [ %indvars.iv167, %.preheader ]
  %i.dc = getelementptr i8, ptr %i.c, i64 %.3.lcssa ; 2 uses
  %i.dd = getelementptr i8, ptr %i.dc, i64 1
  store i8 10, ptr %i.dd, align 1, !tbaa !9
  %i.de = getelementptr i8, ptr %i.dc, i64 2
  store i8 0, ptr %i.de, align 1, !tbaa !9
  br label %.loopexit

bb.s:                                             ; preds = %bb.n
  store i32 %.0107.lcssa, ptr %i.b, align 4, !tbaa !16
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader139, %.critedge7, %.critedge9, %bb.q, %bb.s
  %i.df = phi i32 [ %.0107.lcssa, %bb.s ], [ %25, %bb.q ], [ %25, %.critedge9 ], [ %i.by, %.critedge7 ], [ %i.by, %.preheader139 ]
  %.0104 = phi ptr [ %i.f, %bb.s ], [ %i.e, %bb.q ], [ %i.e, %.critedge9 ], [ %i.e, %.critedge7 ], [ %i.e, %.preheader139 ] ; 6 uses
  %.0 = phi ptr [ %i.e, %bb.s ], [ %i.f, %bb.q ], [ %i.f, %.critedge9 ], [ %i.f, %.critedge7 ], [ %i.f, %.preheader139 ] ; 6 uses
  %i.dg = load ptr, ptr %i.am, align 8, !tbaa !25
  %i.dh = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.dg) #9
  %i.di = call i32 @CRYPTO_memcmp(ptr noundef nonnull %i.c, ptr noundef nonnull @.str.13, i64 noundef 9) #8
  %.not131 = icmp eq i32 %i.di, 0
  br i1 %.not131, label %bb.t, label %bb.v

bb.t:                                             ; preds = %.loopexit
  %i.dj = load ptr, ptr %i.am, align 8, !tbaa !25
  %i.dk = getelementptr inbounds nuw i8, ptr %i.c, i64 9
  %sext132 = shl i64 %i.dh, 32                    ; 2 uses
  %i.dl = ashr exact i64 %sext132, 32
  %i.dm = call i32 @strncmp(ptr noundef %i.dj, ptr noundef nonnull %i.dk, i64 noundef %i.dl) #9
  %.not133 = icmp eq i32 %i.dm, 0
  br i1 %.not133, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %sext134 = add i64 %sext132, 38654705664
  %i.dn = ashr exact i64 %sext134, 32
  %i.do = getelementptr inbounds i8, ptr %i.c, i64 %i.dn
  %i.dp = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.do, ptr noundef nonnull dereferenceable(7) @.str.12, i64 noundef 6) #9
  %.not135 = icmp eq i32 %i.dp, 0
  br i1 %.not135, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %.loopexit
  call void @ERR_put_error(i32 noundef 9, i32 noundef 0, i32 noundef 102, ptr noundef nonnull @.str.8, i32 noundef 705) #8
  br label %.loopexit140

bb.w:                                             ; preds = %bb.u
  call void @EVP_DecodeInit(ptr noundef nonnull %5) #8
  %i.dq = getelementptr inbounds nuw i8, ptr %.0, i64 8 ; 3 uses
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !25 ; 2 uses
  %i.ds = sext i32 %i.df to i64
  %i.dt = call i32 @EVP_DecodeUpdate(ptr noundef nonnull %5, ptr noundef %i.dr, ptr noundef nonnull %i.b, ptr noundef %i.dr, i64 noundef %i.ds) #8
  %i.du = icmp slt i32 %i.dt, 0
  br i1 %i.du, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  call void @ERR_put_error(i32 noundef 9, i32 noundef 0, i32 noundef 100, ptr noundef nonnull @.str.8, i32 noundef 713) #8
  br label %.loopexit140

bb.y:                                             ; preds = %bb.w
  %i.dv = load ptr, ptr %i.dq, align 8, !tbaa !25
  %i.dw = load i32, ptr %i.b, align 4, !tbaa !16
  %i.dx = sext i32 %i.dw to i64
  %i.dy = getelementptr inbounds i8, ptr %i.dv, i64 %i.dx
  %i.dz = call i32 @EVP_DecodeFinal(ptr noundef nonnull %5, ptr noundef %i.dy, ptr noundef nonnull %i.a) #8
  %i.ea = icmp slt i32 %i.dz, 0
  br i1 %i.ea, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  call void @ERR_put_error(i32 noundef 9, i32 noundef 0, i32 noundef 100, ptr noundef nonnull @.str.8, i32 noundef 718) #8
  br label %.loopexit140

bb.aa:                                            ; preds = %bb.y
  %i.eb = load i32, ptr %i.a, align 4, !tbaa !16
  %i.ec = load i32, ptr %i.b, align 4, !tbaa !16
  %i.ed = add nsw i32 %i.ec, %i.eb                ; 3 uses
  store i32 %i.ed, ptr %i.b, align 4, !tbaa !16
  %i.ee = icmp eq i32 %i.ed, 0
  br i1 %i.ee, label %.loopexit140, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ef = load ptr, ptr %i.am, align 8, !tbaa !25
  store ptr %i.ef, ptr %1, align 8, !tbaa !13
  %i.eg = getelementptr inbounds nuw i8, ptr %.0104, i64 8
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !25
  store ptr %i.eh, ptr %2, align 8, !tbaa !13
  %i.ei = load ptr, ptr %i.dq, align 8, !tbaa !25
  store ptr %i.ei, ptr %3, align 8, !tbaa !13
  %i.ej = sext i32 %i.ed to i64
  store i64 %i.ej, ptr %4, align 8, !tbaa !15
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.c, i64 noundef 256) #8
  call void @OPENSSL_free(ptr noundef nonnull %i.d) #8
  call void @OPENSSL_free(ptr noundef %.0104) #8
  call void @OPENSSL_free(ptr noundef nonnull %.0) #8
  br label %bb.ac

.loopexit140:                                     ; preds = %bb.l, %bb.p, %bb.aa, %._crit_edge149, %OPENSSL_memcpy.exit, %bb.f, %bb.z, %bb.x, %bb.v, %._crit_edge
  %.1105 = phi ptr [ %i.e, %._crit_edge ], [ %.0104, %bb.v ], [ %.0104, %bb.x ], [ %.0104, %bb.z ], [ %.0104, %bb.aa ], [ %i.e, %bb.f ], [ %i.e, %._crit_edge149 ], [ %i.e, %bb.p ], [ %i.e, %OPENSSL_memcpy.exit ], [ %i.e, %bb.l ]
  %.1 = phi ptr [ %i.f, %._crit_edge ], [ %.0, %bb.v ], [ %.0, %bb.x ], [ %.0, %bb.z ], [ %.0, %bb.aa ], [ %i.f, %bb.f ], [ %i.f, %._crit_edge149 ], [ %i.f, %bb.p ], [ %i.f, %OPENSSL_memcpy.exit ], [ %i.f, %bb.l ]
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.c, i64 noundef 256) #8
  call void @BUF_MEM_free(ptr noundef %i.d) #8
  call void @BUF_MEM_free(ptr noundef %.1105) #8
  call void @BUF_MEM_free(ptr noundef %.1) #8
  br label %bb.ac

bb.ac:                                            ; preds = %.loopexit140, %bb.ab, %bb.b
  %.0112 = phi i32 [ 0, %bb.b ], [ 0, %.loopexit140 ], [ 1, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  ret i32 %.0112
}

declare i32 @ERR_peek_error() local_unnamed_addr #2

declare void @ERR_add_error_data(i32 noundef, ...) local_unnamed_addr #2

declare void @OPENSSL_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @PEM_get_EVP_CIPHER_INFO(ptr noundef %0, ptr nofree noundef captures(none) initializes((0, 24)) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = icmp eq ptr %0, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  br i1 %i.c, label %bb.v, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i8, ptr %0, align 1, !tbaa !9
  switch i8 %i.d, label %bb.c [
    i8 0, label %bb.v
    i8 10, label %bb.v
  ]

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(12) @.str.10, i64 noundef 11) #9
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @ERR_put_error(i32 noundef 9, i32 noundef 0, i32 noundef 109, ptr noundef nonnull @.str.8, i32 noundef 388) #8
  br label %bb.v

bb.e:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 11
  %i.g = load i8, ptr %i.f, align 1, !tbaa !9
  %.not24 = icmp eq i8 %i.g, 52
  br i1 %.not24, label %bb.f, label %bb.v

bb.f:                                             ; preds = %bb.e
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.i = load i8, ptr %i.h, align 1, !tbaa !9
  %.not25 = icmp eq i8 %i.i, 44
  br i1 %.not25, label %bb.g, label %bb.v

bb.g:                                             ; preds = %bb.f
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 13 ; 2 uses
  %i.k = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.j, ptr noundef nonnull dereferenceable(10) @.str, i64 noundef 9) #9
  %.not26 = icmp eq i32 %i.k, 0
  br i1 %.not26, label %.preheader, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @ERR_put_error(i32 noundef 9, i32 noundef 0, i32 noundef 108, ptr noundef nonnull @.str.8, i32 noundef 401) #8
  br label %bb.v

.preheader:                                       ; preds = %bb.g, %bb.i
  %i.l = phi ptr [ %i.n, %bb.i ], [ %i.j, %bb.g ] ; 4 uses
  %i.m = load i8, ptr %i.l, align 1, !tbaa !9
  switch i8 %i.m, label %bb.i [
    i8 0, label %bb.j
    i8 10, label %bb.k
  ]

bb.i:                                             ; preds = %.preheader
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  br label %.preheader, !llvm.loop !26

bb.j:                                             ; preds = %.preheader
  tail call void @ERR_put_error(i32 noundef 9, i32 noundef 0, i32 noundef 112, ptr noundef nonnull @.str.8, i32 noundef 408) #8
  br label %bb.v

bb.k:                                             ; preds = %.preheader
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  %i.p = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.o, ptr noundef nonnull dereferenceable(11) @.str.6, i64 noundef 10) #9
  %.not29 = icmp eq i32 %i.p, 0
  br i1 %.not29, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @ERR_put_error(i32 noundef 9, i32 noundef 0, i32 noundef 107, ptr noundef nonnull @.str.8, i32 noundef 413) #8
  br label %bb.v

bb.m:                                             ; preds = %bb.k
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 11 ; 2 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.p, %bb.m
  %storemerge = phi ptr [ %i.q, %bb.m ], [ %i.w, %bb.p ] ; 5 uses
  %i.r = load i8, ptr %storemerge, align 1, !tbaa !9 ; 4 uses
  %i.s = add i8 %i.r, -65
  %or.cond = icmp ult i8 %i.s, 26
  %i.t = icmp eq i8 %i.r, 45
  %or.cond5 = or i1 %i.t, %or.cond
  br i1 %or.cond5, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.u = sext i8 %i.r to i32
  %i.v = tail call i32 @OPENSSL_isdigit(i32 noundef %i.u) #8
  %.not30 = icmp eq i32 %i.v, 0
  br i1 %.not30, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
  %i.w = getelementptr inbounds nuw i8, ptr %storemerge, i64 1
  br label %bb.n

bb.q:                                             ; preds = %bb.o
end_hunk_0
