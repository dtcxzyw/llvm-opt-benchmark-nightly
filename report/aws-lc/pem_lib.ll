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
  %i.b = alloca i32, align 4                      ; 12 uses
  %i.c = alloca [256 x i8], align 16              ; 34 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  store i32 0, ptr %i.b, align 4, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  %i.d = tail call ptr @BUF_MEM_new() #8          ; 6 uses
  %i.e = tail call ptr @BUF_MEM_new() #8          ; 15 uses
  %i.f = tail call ptr @BUF_MEM_new() #8          ; 15 uses
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

._crit_edge:                                      ; preds = %.backedge, %bb.c
  call void @ERR_put_error(i32 noundef 9, i32 noundef 0, i32 noundef 110, ptr noundef nonnull @.str.8, i32 noundef 586) #8
  br label %.loopexit140.a

.preheader143:                                    ; preds = %.preheader143.backedge, %.preheader143.lr.ph
  %.0108146 = phi i32 [ %i.k, %.preheader143.lr.ph ], [ %.0108146.be, %.preheader143.backedge ] ; 4 uses
  %i.n = zext nneg i32 %.0108146 to i64
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.n
  %i.p = load i8, ptr %i.o, align 1, !tbaa !9
  %i.q = icmp slt i8 %i.p, 33
  br i1 %i.q, label %bb.d, label %.critedge

bb.d:                                             ; preds = %.preheader143
  %i.r = add nsw i32 %.0108146, -1
  %i.s = icmp sgt i32 %.0108146, 0
  br i1 %i.s, label %.preheader143.backedge, label %.critedge

.preheader143.backedge:                           ; preds = %bb.d, %.backedge
  %.0108146.be = phi i32 [ %i.r, %bb.d ], [ %i.al, %.backedge ]
  br label %.preheader143

.critedge:                                        ; preds = %bb.d, %.preheader143
  %.0108.lcssa = phi i32 [ -1, %bb.d ], [ %.0108146, %.preheader143 ]
  %i.t = sext i32 %.0108.lcssa to i64
  %i.u = getelementptr i8, ptr %i.c, i64 %i.t     ; 2 uses
  %i.v = getelementptr i8, ptr %i.u, i64 1
  store i8 10, ptr %i.v, align 1, !tbaa !9
  %i.w = getelementptr i8, ptr %i.u, i64 2
  store i8 0, ptr %i.w, align 1, !tbaa !9
  %i.x = load i64, ptr %i.c, align 16
  %i.y = xor i64 %i.x, 5135583711884815661
  %i.z = getelementptr i8, ptr %i.c, i64 3
  %i.aa = load i64, ptr %i.z, align 1
  %i.ab = xor i64 %i.aa, 2327878627850595629
  %i.ac = or i64 %i.y, %i.ab
  %i.ad = icmp ne i64 %i.ac, 0
  %i.ae = zext i1 %i.ad to i32
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %bb.e, label %.backedge

bb.e:                                             ; preds = %.critedge
  %i.ag = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.m) #9
  %i.ah = shl i64 %i.ag, 32                       ; 3 uses
  %sext = add i64 %i.ah, 21474836480
  %i.ai = ashr exact i64 %sext, 32
  %i.aj = getelementptr inbounds i8, ptr %i.c, i64 %i.ai
  %i.ak = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.aj, ptr noundef nonnull dereferenceable(7) @.str.12, i64 noundef 6) #9
  %.not = icmp eq i32 %i.ak, 0
  br i1 %.not, label %bb.f, label %.backedge

.backedge:                                        ; preds = %bb.e, %.critedge
  %i.al = call i32 @BIO_gets(ptr noundef %0, ptr noundef nonnull %i.c, i32 noundef 254) #8 ; 2 uses
  %i.am = icmp slt i32 %i.al, 1
  br i1 %i.am, label %._crit_edge, label %.preheader143.backedge

bb.f:                                             ; preds = %bb.e
  %sext121 = add i64 %i.ah, 38654705664
  %i.an = ashr exact i64 %sext121, 32
  %i.ao = call i64 @BUF_MEM_grow(ptr noundef %i.d, i64 noundef %i.an) #8
  %.not122 = icmp eq i64 %i.ao, 0
  br i1 %.not122, label %.loopexit140.a, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ap = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 5 uses
  %sext123 = add i64 %i.ah, -25769803776          ; 2 uses
  %i.aq = ashr exact i64 %sext123, 32             ; 2 uses
  %i.ar = icmp eq i64 %sext123, 0
  br i1 %i.ar, label %OPENSSL_memcpy.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.as = load ptr, ptr %i.ap, align 8, !tbaa !24
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.as, ptr nonnull readonly align 1 %i.m, i64 range(i64 -2147483648, 2147483648) %i.aq, i1 false)
  br label %OPENSSL_memcpy.exit

OPENSSL_memcpy.exit:                              ; preds = %bb.g, %bb.h
  %i.at = load ptr, ptr %i.ap, align 8, !tbaa !24
  %i.au = getelementptr inbounds i8, ptr %i.at, i64 %i.aq
  store i8 0, ptr %i.au, align 1, !tbaa !9
  %i.av = call i64 @BUF_MEM_grow(ptr noundef %i.e, i64 noundef 256) #8
  %.not124 = icmp eq i64 %i.av, 0
  br i1 %.not124, label %.loopexit140.a, label %bb.i

bb.i:                                             ; preds = %OPENSSL_memcpy.exit
  %i.aw = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !24
  store i8 0, ptr %i.ax, align 1, !tbaa !9
  %i.ay = call i32 @BIO_gets(ptr noundef %0, ptr noundef nonnull %i.c, i32 noundef 254) #8 ; 2 uses
  %i.az = icmp slt i32 %i.ay, 1
  br i1 %i.az, label %._crit_edge149, label %.preheader141

.preheader141:                                    ; preds = %bb.i, %OPENSSL_memcpy.exit136
  %i.ba = phi i32 [ %i.cb, %OPENSSL_memcpy.exit136 ], [ %i.ay, %bb.i ]
  %.0107148 = phi i32 [ %i.bp, %OPENSSL_memcpy.exit136 ], [ 0, %bb.i ] ; 4 uses
  br label %bb.j

bb.j:                                             ; preds = %.preheader141, %bb.k
  %.1109147 = phi i32 [ %i.ba, %.preheader141 ], [ %i.bf, %bb.k ] ; 4 uses
  %i.bb = zext nneg i32 %.1109147 to i64
  %i.bc = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.bb
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !9
  %i.be = icmp slt i8 %i.bd, 33
  br i1 %i.be, label %bb.k, label %.critedge5

bb.k:                                             ; preds = %bb.j
  %i.bf = add nsw i32 %.1109147, -1
  %i.bg = icmp sgt i32 %.1109147, 0
  br i1 %i.bg, label %bb.j, label %.critedge5, !llvm.loop !20

.critedge5:                                       ; preds = %bb.k, %bb.j
  %.1109.lcssa = phi i32 [ -1, %bb.k ], [ %.1109147, %bb.j ] ; 2 uses
  %i.bh = sext i32 %.1109.lcssa to i64
  %i.bi = getelementptr i8, ptr %i.c, i64 %i.bh
  %i.bj = getelementptr i8, ptr %i.bi, i64 1
  store i8 10, ptr %i.bj, align 1, !tbaa !9
  %i.bk = add nsw i32 %.1109.lcssa, 2             ; 2 uses
  %i.bl = zext nneg i32 %i.bk to i64              ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.bl
  store i8 0, ptr %i.bm, align 1, !tbaa !9
  %i.bn = load i8, ptr %i.c, align 16, !tbaa !9
  %i.bo = icmp eq i8 %i.bn, 10
  br i1 %i.bo, label %._crit_edge149, label %bb.l

bb.l:                                             ; preds = %.critedge5
  %i.bp = add nuw nsw i32 %i.bk, %.0107148        ; 4 uses
  %i.bq = add nuw nsw i32 %i.bp, 9
  %i.br = zext nneg i32 %i.bq to i64
  %i.bs = call i64 @BUF_MEM_grow(ptr noundef %i.e, i64 noundef %i.br) #8
  %.not125 = icmp eq i64 %i.bs, 0
  br i1 %.not125, label %.loopexit140.a, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bt = call i32 @CRYPTO_memcmp(ptr noundef nonnull %i.c, ptr noundef nonnull @.str.13, i64 noundef 9) #8
  %i.bu = icmp eq i32 %i.bt, 0
  br i1 %i.bu, label %._crit_edge149, label %OPENSSL_memcpy.exit136

OPENSSL_memcpy.exit136:                           ; preds = %bb.m
  %i.bv = load ptr, ptr %i.aw, align 8, !tbaa !24
  %i.bw = zext nneg i32 %.0107148 to i64
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.bw
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bx, ptr nonnull readonly align 16 %i.c, i64 range(i64 -2147483648, 2147483648) %i.bl, i1 false)
  %i.by = load ptr, ptr %i.aw, align 8, !tbaa !24
  %i.bz = zext nneg i32 %i.bp to i64
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.bz
  store i8 0, ptr %i.ca, align 1, !tbaa !9
  %i.cb = call i32 @BIO_gets(ptr noundef %0, ptr noundef nonnull %i.c, i32 noundef 254) #8 ; 2 uses
  %i.cc = icmp slt i32 %i.cb, 1
  br i1 %i.cc, label %._crit_edge149, label %.preheader141

._crit_edge149:                                   ; preds = %OPENSSL_memcpy.exit136, %.critedge5, %bb.m, %bb.i
  %.0107.lcssa = phi i32 [ 0, %bb.i ], [ %.0107148, %bb.m ], [ %.0107148, %.critedge5 ], [ %i.bp, %OPENSSL_memcpy.exit136 ] ; 2 uses
  %.not127 = phi i1 [ true, %bb.i ], [ false, %bb.m ], [ true, %.critedge5 ], [ true, %OPENSSL_memcpy.exit136 ]
  store i32 0, ptr %i.b, align 4, !tbaa !16
  %i.cd = call i64 @BUF_MEM_grow(ptr noundef %i.f, i64 noundef 1024) #8
  %.not126 = icmp eq i64 %i.cd, 0
  br i1 %.not126, label %.loopexit140.a, label %bb.n

bb.n:                                             ; preds = %._crit_edge149
  %i.ce = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !24
  store i8 0, ptr %i.cf, align 1, !tbaa !9
  br i1 %.not127, label %.preheader139, label %6

.preheader139:                                    ; preds = %bb.n, %OPENSSL_memcpy.exit137
  %i.cg = phi i32 [ %i.dg, %OPENSSL_memcpy.exit137 ], [ 0, %bb.n ] ; 6 uses
  %i.ch = call i32 @BIO_gets(ptr noundef %0, ptr noundef nonnull %i.c, i32 noundef 254) #8 ; 2 uses
  %i.ci = icmp slt i32 %i.ch, 1
  br i1 %i.ci, label %bb.s, label %.preheader138

.preheader138:                                    ; preds = %.preheader139, %bb.o
  %.2156 = phi i32 [ %i.cn, %bb.o ], [ %i.ch, %.preheader139 ] ; 4 uses
  %i.cj = zext nneg i32 %.2156 to i64
  %i.ck = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.cj
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !9
  %i.cm = icmp slt i8 %i.cl, 33
  br i1 %i.cm, label %bb.o, label %.critedge7

bb.o:                                             ; preds = %.preheader138
  %i.cn = add nsw i32 %.2156, -1
  %i.co = icmp sgt i32 %.2156, 0
  br i1 %i.co, label %.preheader138, label %.critedge7, !llvm.loop !21

.critedge7:                                       ; preds = %bb.o, %.preheader138
  %.2.lcssa = phi i32 [ -1, %bb.o ], [ %.2156, %.preheader138 ] ; 4 uses
  %i.cp = sext i32 %.2.lcssa to i64
  %i.cq = getelementptr i8, ptr %i.c, i64 %i.cp
  %i.cr = getelementptr i8, ptr %i.cq, i64 1
  store i8 10, ptr %i.cr, align 1, !tbaa !9
  %i.cs = add nsw i32 %.2.lcssa, 2                ; 3 uses
  %i.ct = zext nneg i32 %i.cs to i64              ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.ct
  store i8 0, ptr %i.cu, align 1, !tbaa !9
  %.not128 = icmp eq i32 %i.cs, 65
  %i.cv = call i32 @CRYPTO_memcmp(ptr noundef nonnull %i.c, ptr noundef nonnull @.str.13, i64 noundef 9) #8
  %i.cw = icmp eq i32 %i.cv, 0
  %i.cx = icmp sgt i32 %.2.lcssa, 63
  %or.cond11 = or i1 %i.cx, %i.cw
  br i1 %or.cond11, label %bb.s, label %bb.p

bb.p:                                             ; preds = %.critedge7
  %i.cy = add nsw i32 %.2.lcssa, 11
  %i.cz = add i32 %i.cy, %i.cg
  %i.da = sext i32 %i.cz to i64
  %i.db = call i64 @BUF_MEM_grow_clean(ptr noundef %i.f, i64 noundef %i.da) #8
  %.not129 = icmp eq i64 %i.db, 0
  br i1 %.not129, label %.loopexit140, label %OPENSSL_memcpy.exit137

OPENSSL_memcpy.exit137:                           ; preds = %bb.p
  %i.dc = load ptr, ptr %i.ce, align 8, !tbaa !24
  %i.dd = sext i32 %i.cg to i64
  %i.de = getelementptr inbounds i8, ptr %i.dc, i64 %i.dd
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.de, ptr nonnull readonly align 16 %i.c, i64 range(i64 -2147483648, 2147483648) %i.ct, i1 false)
  %i.df = load ptr, ptr %i.ce, align 8, !tbaa !24
  %i.dg = add nsw i32 %i.cg, %i.cs                ; 5 uses
  %i.dh = sext i32 %i.dg to i64
  %i.di = getelementptr inbounds i8, ptr %i.df, i64 %i.dh
  store i8 0, ptr %i.di, align 1, !tbaa !9
  br i1 %.not128, label %.preheader139, label %bb.q

bb.q:                                             ; preds = %OPENSSL_memcpy.exit137
  store i32 %i.dg, ptr %i.b, align 4
  store i8 0, ptr %i.c, align 16, !tbaa !9
  %i.dj = call i32 @BIO_gets(ptr noundef %0, ptr noundef nonnull %i.c, i32 noundef 254) #8 ; 2 uses
  %i.dk = icmp slt i32 %i.dj, 1
  br i1 %i.dk, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.q, %bb.r
  %.3157 = phi i32 [ %i.dp, %bb.r ], [ %i.dj, %bb.q ] ; 4 uses
  %i.dl = zext nneg i32 %.3157 to i64
  %i.dm = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.dl
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !9
  %i.do = icmp slt i8 %i.dn, 33
  br i1 %i.do, label %bb.r, label %.critedge9

bb.r:                                             ; preds = %.preheader
  %i.dp = add nsw i32 %.3157, -1
  %i.dq = icmp sgt i32 %.3157, 0
  br i1 %i.dq, label %.preheader, label %.critedge9, !llvm.loop !22

.critedge9:                                       ; preds = %bb.r, %.preheader
  %.3.lcssa = phi i32 [ -1, %bb.r ], [ %.3157, %.preheader ]
  %i.dr = sext i32 %.3.lcssa to i64
  %i.ds = getelementptr i8, ptr %i.c, i64 %i.dr   ; 2 uses
  %i.dt = getelementptr i8, ptr %i.ds, i64 1
  store i8 10, ptr %i.dt, align 1, !tbaa !9
  %i.du = getelementptr i8, ptr %i.ds, i64 2
  store i8 0, ptr %i.du, align 1, !tbaa !9
  br label %.loopexit

6:                                                ; preds = %bb.n
  store i32 %.0107.lcssa, ptr %i.b, align 4, !tbaa !16
  br label %.loopexit

bb.s:                                             ; preds = %.critedge7, %.preheader139
  store i32 %i.cg, ptr %i.b, align 4
  br label %.loopexit

.loopexit:                                        ; preds = %bb.s, %.critedge9, %bb.q, %6
  %7 = phi i32 [ %.0107.lcssa, %6 ], [ %i.dg, %bb.q ], [ %i.dg, %.critedge9 ], [ %i.cg, %bb.s ]
  %.0104 = phi ptr [ %i.f, %6 ], [ %i.e, %bb.q ], [ %i.e, %.critedge9 ], [ %i.e, %bb.s ] ; 6 uses
  %.0 = phi ptr [ %i.e, %6 ], [ %i.f, %bb.q ], [ %i.f, %.critedge9 ], [ %i.f, %bb.s ] ; 6 uses
  %i.dv = load ptr, ptr %i.ap, align 8, !tbaa !24
  %i.dw = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.dv) #9
  %i.dx = call i32 @CRYPTO_memcmp(ptr noundef nonnull %i.c, ptr noundef nonnull @.str.13, i64 noundef 9) #8
  %.not131 = icmp eq i32 %i.dx, 0
  br i1 %.not131, label %bb.t, label %bb.v

bb.t:                                             ; preds = %.loopexit
  %i.dy = load ptr, ptr %i.ap, align 8, !tbaa !24
  %i.dz = getelementptr inbounds nuw i8, ptr %i.c, i64 9
  %sext132 = shl i64 %i.dw, 32                    ; 2 uses
  %i.ea = ashr exact i64 %sext132, 32
  %i.eb = call i32 @strncmp(ptr noundef %i.dy, ptr noundef nonnull %i.dz, i64 noundef %i.ea) #9
  %.not133 = icmp eq i32 %i.eb, 0
  br i1 %.not133, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %sext134 = add i64 %sext132, 38654705664
  %i.ec = ashr exact i64 %sext134, 32
  %i.ed = getelementptr inbounds i8, ptr %i.c, i64 %i.ec
  %i.ee = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.ed, ptr noundef nonnull dereferenceable(7) @.str.12, i64 noundef 6) #9
  %.not135 = icmp eq i32 %i.ee, 0
  br i1 %.not135, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %.loopexit
  call void @ERR_put_error(i32 noundef 9, i32 noundef 0, i32 noundef 102, ptr noundef nonnull @.str.8, i32 noundef 705) #8
  br label %.loopexit140.a

bb.w:                                             ; preds = %bb.u
  call void @EVP_DecodeInit(ptr noundef nonnull %5) #8
  %i.ef = getelementptr inbounds nuw i8, ptr %.0, i64 8 ; 3 uses
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !24 ; 2 uses
  %i.eh = sext i32 %7 to i64
  %i.ei = call i32 @EVP_DecodeUpdate(ptr noundef nonnull %5, ptr noundef %i.eg, ptr noundef nonnull %i.b, ptr noundef %i.eg, i64 noundef %i.eh) #8
  %i.ej = icmp slt i32 %i.ei, 0
  br i1 %i.ej, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  call void @ERR_put_error(i32 noundef 9, i32 noundef 0, i32 noundef 100, ptr noundef nonnull @.str.8, i32 noundef 713) #8
  br label %.loopexit140.a

bb.y:                                             ; preds = %bb.w
  %i.ek = load ptr, ptr %i.ef, align 8, !tbaa !24
  %i.el = load i32, ptr %i.b, align 4, !tbaa !16
  %i.em = sext i32 %i.el to i64
  %i.en = getelementptr inbounds i8, ptr %i.ek, i64 %i.em
  %i.eo = call i32 @EVP_DecodeFinal(ptr noundef nonnull %5, ptr noundef %i.en, ptr noundef nonnull %i.a) #8
  %i.ep = icmp slt i32 %i.eo, 0
  br i1 %i.ep, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  call void @ERR_put_error(i32 noundef 9, i32 noundef 0, i32 noundef 100, ptr noundef nonnull @.str.8, i32 noundef 718) #8
  br label %.loopexit140.a

bb.aa:                                            ; preds = %bb.y
  %i.eq = load i32, ptr %i.a, align 4, !tbaa !16
  %i.er = load i32, ptr %i.b, align 4, !tbaa !16
  %i.es = add nsw i32 %i.er, %i.eq                ; 3 uses
  store i32 %i.es, ptr %i.b, align 4, !tbaa !16
  %i.et = icmp eq i32 %i.es, 0
  br i1 %i.et, label %.loopexit140.a, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.eu = load ptr, ptr %i.ap, align 8, !tbaa !24
  store ptr %i.eu, ptr %1, align 8, !tbaa !13
  %i.ev = getelementptr inbounds nuw i8, ptr %.0104, i64 8
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !24
  store ptr %i.ew, ptr %2, align 8, !tbaa !13
  %i.ex = load ptr, ptr %i.ef, align 8, !tbaa !24
  store ptr %i.ex, ptr %3, align 8, !tbaa !13
  %i.ey = sext i32 %i.es to i64
  store i64 %i.ey, ptr %4, align 8, !tbaa !15
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.c, i64 noundef 256) #8
  call void @OPENSSL_free(ptr noundef nonnull %i.d) #8
  call void @OPENSSL_free(ptr noundef %.0104) #8
  call void @OPENSSL_free(ptr noundef nonnull %.0) #8
  br label %bb.ac

.loopexit140:                                     ; preds = %bb.p
  store i32 %i.cg, ptr %i.b, align 4
  br label %.loopexit140.a

.loopexit140.a:                                   ; preds = %bb.l, %.loopexit140, %bb.aa, %._crit_edge149, %OPENSSL_memcpy.exit, %bb.f, %bb.z, %bb.x, %bb.v, %._crit_edge
  %.1105 = phi ptr [ %i.e, %._crit_edge ], [ %.0104, %bb.v ], [ %.0104, %bb.x ], [ %.0104, %bb.z ], [ %.0104, %bb.aa ], [ %i.e, %bb.f ], [ %i.e, %._crit_edge149 ], [ %i.e, %.loopexit140 ], [ %i.e, %OPENSSL_memcpy.exit ], [ %i.e, %bb.l ]
  %.1 = phi ptr [ %i.f, %._crit_edge ], [ %.0, %bb.v ], [ %.0, %bb.x ], [ %.0, %bb.z ], [ %.0, %bb.aa ], [ %i.f, %bb.f ], [ %i.f, %._crit_edge149 ], [ %i.f, %.loopexit140 ], [ %i.f, %OPENSSL_memcpy.exit ], [ %i.f, %bb.l ]
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.c, i64 noundef 256) #8
  call void @BUF_MEM_free(ptr noundef %i.d) #8
  call void @BUF_MEM_free(ptr noundef %.1105) #8
  call void @BUF_MEM_free(ptr noundef %.1) #8
  br label %bb.ac

bb.ac:                                            ; preds = %.loopexit140.a, %bb.ab, %bb.b
  %.0112 = phi i32 [ 0, %bb.b ], [ 0, %.loopexit140.a ], [ 1, %bb.ab ]
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
  br label %.preheader, !llvm.loop !25

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
  store i8 0, ptr %storemerge, align 1, !tbaa !9
  %i.x = tail call fastcc ptr @cipher_by_name(ptr noundef nonnull %i.q) ; 4 uses
  store ptr %i.x, ptr %1, align 8, !tbaa !19
  store i8 %i.r, ptr %storemerge, align 1, !tbaa !9
  %i.y = getelementptr inbounds nuw i8, ptr %storemerge, i64 1
  store ptr %i.y, ptr %i.a, align 8, !tbaa !13
  %i.z = icmp eq ptr %i.x, null
  br i1 %i.z, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  tail call void @ERR_put_error(i32 noundef 9, i32 noundef 0, i32 noundef 114, ptr noundef nonnull @.str.8, i32 noundef 433) #8
  br label %bb.v

bb.s:                                             ; preds = %bb.q
  %i.aa = tail call i32 @EVP_CIPHER_iv_length(ptr noundef nonnull %i.x) #8
  %i.ab = icmp ult i32 %i.aa, 8
  br i1 %i.ab, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  tail call void @ERR_put_error(i32 noundef 9, i32 noundef 0, i32 noundef 114, ptr noundef nonnull @.str.8, i32 noundef 440) #8
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  %i.ac = tail call i32 @EVP_CIPHER_iv_length(ptr noundef nonnull %i.x) #8
  %i.ad = zext i32 %i.ac to i64
  %i.ae = call fastcc i32 @load_iv(ptr noundef %i.a, ptr noundef nonnull %i.b, i64 noundef %i.ad)
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.f, %bb.e, %bb.a, %bb.b, %bb.b, %bb.t, %bb.r, %bb.l, %bb.j, %bb.h, %bb.d
  %.0 = phi i32 [ %i.ae, %bb.u ], [ 0, %bb.d ], [ 1, %bb.a ], [ 0, %bb.e ], [ 0, %bb.h ], [ 0, %bb.j ], [ 0, %bb.l ], [ 0, %bb.r ], [ 0, %bb.t ], [ 0, %bb.f ], [ 1, %bb.b ], [ 1, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @PEM_do_header(ptr noundef %0, ptr noundef %1, ptr nofree noundef captures(none) %2, ptr nofree noundef readonly captures(address_is_null) %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %5 = alloca %struct.evp_cipher_ctx_st, align 8  ; 8 uses
  %i.c = alloca [64 x i8], align 16               ; 6 uses
  %i.d = alloca [1024 x i8], align 16             ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  store i32 0, ptr %i.a, align 4, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  %i.e = load i64, ptr %2, align 8, !tbaa !15
  %i.f = load ptr, ptr %0, align 8, !tbaa !19
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq ptr %3, null
  %spec.store.select = select i1 %.not, ptr @PEM_def_callback, ptr %3
  %i.h = call i32 %spec.store.select(ptr noundef nonnull %i.d, i32 noundef 1024, i32 noundef 0, ptr noundef %4) #8 ; 2 uses
  %i.i = icmp slt i32 %i.h, 0
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @ERR_put_error(i32 noundef 9, i32 noundef 0, i32 noundef 104, ptr noundef nonnull @.str.8, i32 noundef 347) #8
  br label %bb.i

bb.d:                                             ; preds = %bb.b
  %i.j = load ptr, ptr %0, align 8, !tbaa !19
  %i.k = call ptr @EVP_md5() #8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.m = zext nneg i32 %i.h to i64
  %i.n = call i32 @EVP_BytesToKey(ptr noundef %i.j, ptr noundef %i.k, ptr noundef nonnull %i.l, ptr noundef nonnull %i.d, i64 noundef %i.m, i32 noundef 1, ptr noundef nonnull %i.c, ptr noundef null) #8
  %.not22 = icmp eq i32 %i.n, 0
  br i1 %.not22, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = trunc i64 %i.e to i32                    ; 2 uses
  store i32 %i.o, ptr %i.b, align 4, !tbaa !16
  call void @EVP_CIPHER_CTX_init(ptr noundef nonnull %5) #8
  %i.p = load ptr, ptr %0, align 8, !tbaa !19
  %i.q = call i32 @EVP_DecryptInit_ex(ptr noundef nonnull %5, ptr noundef %i.p, ptr noundef null, ptr noundef nonnull %i.c, ptr noundef nonnull %i.l) #8
  %.not23 = icmp eq i32 %i.q, 0
  br i1 %.not23, label %.critedge26, label %bb.f

bb.f:                                             ; preds = %bb.e
end_hunk_0
