Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/aws-lc/original/pem_lib?download=true
inline.NumInlined: 9
inline.NumDeleted: 5
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@PEM_bytes_read_bio:bb.a
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
  %i.b = alloca i32, align 4                      ; 10 uses
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

._crit_edge:                                      ; preds = %.backedge, %bb.c
  call void @ERR_put_error(i32 noundef 9, i32 noundef 0, i32 noundef 110, ptr noundef nonnull @.str.8, i32 noundef 586) #8
  br label %.loopexit140

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
  br i1 %.not122, label %.loopexit140, label %bb.g

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
  br i1 %.not124, label %.loopexit140, label %bb.i

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
  br i1 %.not125, label %.loopexit140, label %bb.m

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
  br i1 %.not126, label %.loopexit140, label %bb.n

bb.n:                                             ; preds = %._crit_edge149
  %i.ce = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !24
  store i8 0, ptr %i.cf, align 1, !tbaa !9
  br i1 %.not127, label %.preheader139, label %bb.s

.preheader139:                                    ; preds = %bb.n, %OPENSSL_memcpy.exit137
  %i.cg = phi i32 [ %i.dg, %OPENSSL_memcpy.exit137 ], [ 0, %bb.n ] ; 5 uses
  %i.ch = call i32 @BIO_gets(ptr noundef %0, ptr noundef nonnull %i.c, i32 noundef 254) #8 ; 2 uses
  %i.ci = icmp slt i32 %i.ch, 1
  br i1 %i.ci, label %.loopexit, label %.preheader138

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
  br i1 %or.cond11, label %.loopexit, label %bb.p

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
  store i32 %i.dg, ptr %i.b, align 4, !tbaa !16
  br i1 %.not128, label %.preheader139, label %bb.q

bb.q:                                             ; preds = %OPENSSL_memcpy.exit137
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

bb.s:                                             ; preds = %bb.n
  store i32 %.0107.lcssa, ptr %i.b, align 4, !tbaa !16
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader139, %.critedge7, %.critedge9, %bb.q, %bb.s
  %i.dv = phi i32 [ %.0107.lcssa, %bb.s ], [ %i.dg, %bb.q ], [ %i.dg, %.critedge9 ], [ %i.cg, %.critedge7 ], [ %i.cg, %.preheader139 ]
  %.0104 = phi ptr [ %i.f, %bb.s ], [ %i.e, %bb.q ], [ %i.e, %.critedge9 ], [ %i.e, %.critedge7 ], [ %i.e, %.preheader139 ] ; 6 uses
  %.0 = phi ptr [ %i.e, %bb.s ], [ %i.f, %bb.q ], [ %i.f, %.critedge9 ], [ %i.f, %.critedge7 ], [ %i.f, %.preheader139 ] ; 6 uses
  %i.dw = load ptr, ptr %i.ap, align 8, !tbaa !24
  %i.dx = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.dw) #9
  %i.dy = call i32 @CRYPTO_memcmp(ptr noundef nonnull %i.c, ptr noundef nonnull @.str.13, i64 noundef 9) #8
  %.not131 = icmp eq i32 %i.dy, 0
  br i1 %.not131, label %bb.t, label %bb.v

bb.t:                                             ; preds = %.loopexit
  %i.dz = load ptr, ptr %i.ap, align 8, !tbaa !24
  %i.ea = getelementptr inbounds nuw i8, ptr %i.c, i64 9
  %sext132 = shl i64 %i.dx, 32                    ; 2 uses
  %i.eb = ashr exact i64 %sext132, 32
  %i.ec = call i32 @strncmp(ptr noundef %i.dz, ptr noundef nonnull %i.ea, i64 noundef %i.eb) #9
  %.not133 = icmp eq i32 %i.ec, 0
  br i1 %.not133, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %sext134 = add i64 %sext132, 38654705664
  %i.ed = ashr exact i64 %sext134, 32
  %i.ee = getelementptr inbounds i8, ptr %i.c, i64 %i.ed
  %i.ef = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.ee, ptr noundef nonnull dereferenceable(7) @.str.12, i64 noundef 6) #9
  %.not135 = icmp eq i32 %i.ef, 0
  br i1 %.not135, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %.loopexit
  call void @ERR_put_error(i32 noundef 9, i32 noundef 0, i32 noundef 102, ptr noundef nonnull @.str.8, i32 noundef 705) #8
  br label %.loopexit140

bb.w:                                             ; preds = %bb.u
  call void @EVP_DecodeInit(ptr noundef nonnull %5) #8
  %i.eg = getelementptr inbounds nuw i8, ptr %.0, i64 8 ; 3 uses
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !24 ; 2 uses
  %i.ei = sext i32 %i.dv to i64
  %i.ej = call i32 @EVP_DecodeUpdate(ptr noundef nonnull %5, ptr noundef %i.eh, ptr noundef nonnull %i.b, ptr noundef %i.eh, i64 noundef %i.ei) #8
  %i.ek = icmp slt i32 %i.ej, 0
  br i1 %i.ek, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  call void @ERR_put_error(i32 noundef 9, i32 noundef 0, i32 noundef 100, ptr noundef nonnull @.str.8, i32 noundef 713) #8
  br label %.loopexit140

bb.y:                                             ; preds = %bb.w
  %i.el = load ptr, ptr %i.eg, align 8, !tbaa !24
  %i.em = load i32, ptr %i.b, align 4, !tbaa !16
  %i.en = sext i32 %i.em to i64
  %i.eo = getelementptr inbounds i8, ptr %i.el, i64 %i.en
  %i.ep = call i32 @EVP_DecodeFinal(ptr noundef nonnull %5, ptr noundef %i.eo, ptr noundef nonnull %i.a) #8
  %i.eq = icmp slt i32 %i.ep, 0
  br i1 %i.eq, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  call void @ERR_put_error(i32 noundef 9, i32 noundef 0, i32 noundef 100, ptr noundef nonnull @.str.8, i32 noundef 718) #8
  br label %.loopexit140

bb.aa:                                            ; preds = %bb.y
  %i.er = load i32, ptr %i.a, align 4, !tbaa !16
  %i.es = load i32, ptr %i.b, align 4, !tbaa !16
  %i.et = add nsw i32 %i.es, %i.er                ; 3 uses
  store i32 %i.et, ptr %i.b, align 4, !tbaa !16
  %i.eu = icmp eq i32 %i.et, 0
  br i1 %i.eu, label %.loopexit140, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ev = load ptr, ptr %i.ap, align 8, !tbaa !24
  store ptr %i.ev, ptr %1, align 8, !tbaa !13
  %i.ew = getelementptr inbounds nuw i8, ptr %.0104, i64 8
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !24
  store ptr %i.ex, ptr %2, align 8, !tbaa !13
  %i.ey = load ptr, ptr %i.eg, align 8, !tbaa !24
  store ptr %i.ey, ptr %3, align 8, !tbaa !13
  %i.ez = sext i32 %i.et to i64
  store i64 %i.ez, ptr %4, align 8, !tbaa !15
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
  %i.r = call i32 @EVP_DecryptUpdate(ptr noundef nonnull %5, ptr noundef %1, ptr noundef nonnull %i.a, ptr noundef %1, i32 noundef %i.o) #8
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %.critedge26, label %.critedge

.critedge:                                        ; preds = %bb.f
  %i.t = load i32, ptr %i.a, align 4, !tbaa !16
  %i.u = sext i32 %i.t to i64
  %i.v = getelementptr inbounds i8, ptr %1, i64 %i.u
  %i.w = call i32 @EVP_DecryptFinal_ex(ptr noundef nonnull %5, ptr noundef %i.v, ptr noundef nonnull %i.b) #8
  %i.x = icmp eq i32 %i.w, 0
  %i.y = call i32 @EVP_CIPHER_CTX_cleanup(ptr noundef nonnull %5) #8 ; 0 uses
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.d, i64 noundef 1024) #8
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.c, i64 noundef 64) #8
  br i1 %i.x, label %bb.g, label %bb.h

.critedge26:                                      ; preds = %bb.e, %bb.f
  %i.z = call i32 @EVP_CIPHER_CTX_cleanup(ptr noundef nonnull %5) #8 ; 0 uses
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.d, i64 noundef 1024) #8
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.c, i64 noundef 64) #8
  br label %bb.g

bb.g:                                             ; preds = %.critedge26, %.critedge
  call void @ERR_put_error(i32 noundef 9, i32 noundef 0, i32 noundef 101, ptr noundef nonnull @.str.8, i32 noundef 369) #8
  br label %bb.i

bb.h:                                             ; preds = %.critedge
  %i.aa = load i32, ptr %i.a, align 4, !tbaa !16
  %i.ab = load i32, ptr %i.b, align 4, !tbaa !16
  %i.ac = add nsw i32 %i.ab, %i.aa
  %i.ad = sext i32 %i.ac to i64
  store i64 %i.ad, ptr %2, align 8, !tbaa !15
  br label %bb.i

bb.i:                                             ; preds = %bb.d, %bb.a, %bb.h, %bb.g, %bb.c
  %.019 = phi i32 [ 1, %bb.a ], [ 0, %bb.c ], [ 1, %bb.h ], [ 0, %bb.g ], [ 0, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret i32 %.019
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @PEM_ASN1_write(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6, ptr nofree noundef readonly captures(address_is_null) %7, ptr noundef %8) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @BIO_new_fp(ptr noundef %2, i32 noundef 0) #8 ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @ERR_put_error(i32 noundef 9, i32 noundef 0, i32 noundef 7, ptr noundef nonnull @.str.8, i32 noundef 220) #8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = tail call i32 @PEM_ASN1_write_bio(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %i.a, ptr noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6, ptr noundef %7, ptr noundef %8)
  %i.d = tail call i32 @BIO_free(ptr noundef nonnull %i.a) #8 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ %i.c, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @PEM_ASN1_write_bio(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6, ptr nofree noundef readonly captures(address_is_null) %7, ptr noundef %8) local_unnamed_addr #0 {
bb.a:
  %9 = alloca %struct.evp_cipher_ctx_st, align 8  ; 9 uses
  %i.a = alloca i32, align 4                      ; 8 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = alloca [1024 x i8], align 16             ; 19 uses
  %i.e = alloca [64 x i8], align 16               ; 5 uses
  %i.f = alloca [16 x i8], align 16               ; 9 uses
  %i.g = alloca i32, align 4                      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
end_hunk_0
begin_hunk_1_@cipher_by_name:bb.a
  %i.a = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(8) @.str.32) #9
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @EVP_des_cbc() #8
  br label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.d = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(13) @.str.33) #9
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.f = tail call ptr @EVP_des_ede3_cbc() #8
  br label %bb.k

bb.e:                                             ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(12) @.str.34) #9
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.i = tail call ptr @EVP_aes_128_cbc() #8
  br label %bb.k

bb.g:                                             ; preds = %bb.e
  %i.j = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(12) @.str.35) #9
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.l = tail call ptr @EVP_aes_192_cbc() #8
  br label %bb.k

bb.i:                                             ; preds = %bb.g
  %i.m = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(12) @.str.36) #9
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.o = tail call ptr @EVP_aes_256_cbc() #8
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j, %bb.h, %bb.f, %bb.d, %bb.b
  %.0 = phi ptr [ %i.c, %bb.b ], [ %i.f, %bb.d ], [ %i.i, %bb.f ], [ %i.l, %bb.h ], [ %i.o, %bb.j ], [ null, %bb.i ]
  ret ptr %.0
}

declare i32 @EVP_CIPHER_iv_length(ptr noundef) local_unnamed_addr #2

declare void @OPENSSL_cleanse(ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @OPENSSL_malloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define i32 @PEM_def_callback(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp slt i32 %1, 1
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = zext nneg i32 %1 to i64                  ; 4 uses
  tail call void @OPENSSL_cleanse(ptr noundef nonnull %0, i64 noundef %i.c) #8
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #9 ; 2 uses
  %.not30 = icmp ult i64 %i.d, %i.c
  br i1 %.not30, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.e = tail call i64 @OPENSSL_strlcpy(ptr noundef nonnull %0, ptr noundef nonnull %3, i64 noundef %i.c) #8 ; 0 uses
  %i.f = trunc nuw nsw i64 %i.d to i32
  br label %bb.g

bb.e:                                             ; preds = %bb.b
  %i.g = tail call ptr @EVP_get_pw_prompt() #8    ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  %spec.store.select = select i1 %i.h, ptr @.str.14, ptr %i.g
  %.not28 = icmp eq i32 %2, 0
  %i.i = select i1 %.not28, i32 0, i32 4
  %i.j = tail call i32 @EVP_read_pw_string_min(ptr noundef nonnull %0, i32 noundef %i.i, i32 noundef %1, ptr noundef nonnull %spec.store.select, i32 noundef %2) #8
  %.not29 = icmp eq i32 %i.j, 0
  br i1 %.not29, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.k = tail call i64 @OPENSSL_strnlen(ptr noundef nonnull %0, i64 noundef %i.c) #8
  %i.l = trunc i64 %i.k to i32
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.a
  %.2 = phi i32 [ 0, %bb.c ], [ 0, %bb.a ], [ %i.f, %bb.d ], [ %i.l, %bb.f ], [ 0, %bb.e ]
  ret i32 %.2
}

declare i32 @RAND_bytes(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #4

declare i32 @EVP_BytesToKey(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @EVP_md5() local_unnamed_addr #2

declare void @EVP_CIPHER_CTX_init(ptr noundef) local_unnamed_addr #2

declare i32 @EVP_EncryptInit_ex(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @EVP_EncryptUpdate(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @EVP_EncryptFinal_ex(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @EVP_CIPHER_CTX_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define i32 @PEM_write_bio(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 9 uses
  %5 = alloca %struct.evp_encode_ctx_st, align 4  ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #8
  call void @EVP_EncodeInit(ptr noundef nonnull %5) #8
  %i.b = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #9
  %i.c = trunc i64 %i.b to i32                    ; 4 uses
  %i.d = call i32 @BIO_write(ptr noundef %0, ptr noundef nonnull @.str.11, i32 noundef 11) #8
  %.not = icmp eq i32 %i.d, 11
  br i1 %.not, label %bb.b, label %.thread70

bb.b:                                             ; preds = %bb.a
  %i.e = call i32 @BIO_write(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %i.c) #8
  %.not57 = icmp eq i32 %i.e, %i.c
  br i1 %.not57, label %bb.c, label %.thread70

bb.c:                                             ; preds = %bb.b
  %i.f = call i32 @BIO_write(ptr noundef %0, ptr noundef nonnull @.str.12, i32 noundef 6) #8
  %.not58 = icmp eq i32 %i.f, 6
  br i1 %.not58, label %bb.d, label %.thread70

bb.d:                                             ; preds = %bb.c
  %.not59 = icmp eq ptr %2, null
  br i1 %.not59, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #9 ; 3 uses
  %i.h = icmp sgt i64 %i.g, 0
  br i1 %i.h, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  %i.i = trunc i64 %i.g to i32
  %i.j = call i32 @BIO_write(ptr noundef %0, ptr noundef nonnull %2, i32 noundef %i.i) #8
  %i.k = sext i32 %i.j to i64
  %.not60 = icmp eq i64 %i.g, %i.k
  br i1 %.not60, label %bb.g, label %.thread70

bb.g:                                             ; preds = %bb.f
  %i.l = call i32 @BIO_write(ptr noundef %0, ptr noundef nonnull @.str.5, i32 noundef 1) #8
  %.not61 = icmp eq i32 %i.l, 1
  br i1 %.not61, label %.thread, label %.thread70

.thread:                                          ; preds = %bb.d, %bb.g, %bb.e
  %i.m = call ptr @OPENSSL_malloc(i64 noundef 8192) #8 ; 7 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %.thread70, label %.preheader

.preheader:                                       ; preds = %.thread
  %i.o = icmp sgt i64 %4, 0
  br i1 %i.o, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader, %bb.j
  %.04678 = phi i64 [ %i.z, %bb.j ], [ 0, %.preheader ] ; 2 uses
  %.04777 = phi i64 [ %i.x, %bb.j ], [ 0, %.preheader ]
  %.04876 = phi i64 [ %i.y, %bb.j ], [ %4, %.preheader ] ; 2 uses
  %i.p = call i64 @llvm.umin.i64(i64 %.04876, i64 5120) ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 %.04678
  %i.r = call i32 @EVP_EncodeUpdate(ptr noundef nonnull %5, ptr noundef nonnull %i.m, ptr noundef nonnull %i.a, ptr noundef %i.q, i64 noundef %i.p) #8
  %.not66 = icmp eq i32 %i.r, 0
  br i1 %.not66, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %.lr.ph
  %i.s = load i32, ptr %i.a, align 4, !tbaa !16   ; 2 uses
  %.not67 = icmp eq i32 %i.s, 0
  br i1 %.not67, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.t = call i32 @BIO_write(ptr noundef %0, ptr noundef nonnull %i.m, i32 noundef %i.s) #8 ; 2 uses
  %i.u = load i32, ptr %i.a, align 4, !tbaa !16
  %.not68 = icmp eq i32 %i.t, %i.u
  br i1 %.not68, label %bb.j, label %.loopexit

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.v = phi i32 [ %i.t, %bb.i ], [ 0, %bb.h ]
  %i.w = sext i32 %i.v to i64
  %i.x = add nsw i64 %.04777, %i.w                ; 2 uses
  %i.y = sub nuw nsw i64 %.04876, %i.p            ; 2 uses
  %i.z = add nuw nsw i64 %.04678, %i.p
  %.not79 = icmp eq i64 %i.y, 0
  br i1 %.not79, label %._crit_edge, label %.lr.ph, !llvm.loop !26

._crit_edge:                                      ; preds = %bb.j, %.preheader
  %.047.lcssa = phi i64 [ 0, %.preheader ], [ %i.x, %bb.j ]
  call void @EVP_EncodeFinal(ptr noundef nonnull %5, ptr noundef nonnull %i.m, ptr noundef nonnull %i.a) #8
  %i.aa = load i32, ptr %i.a, align 4, !tbaa !16  ; 2 uses
  %i.ab = icmp sgt i32 %i.aa, 0
  br i1 %i.ab, label %bb.k, label %bb.l

bb.k:                                             ; preds = %._crit_edge
  %i.ac = call i32 @BIO_write(ptr noundef %0, ptr noundef nonnull %i.m, i32 noundef %i.aa) #8
  %i.ad = load i32, ptr %i.a, align 4, !tbaa !16
  %.not62 = icmp eq i32 %i.ac, %i.ad
  br i1 %.not62, label %bb.l, label %.loopexit

bb.l:                                             ; preds = %bb.k, %._crit_edge
  call void @OPENSSL_free(ptr noundef nonnull %i.m) #8
  %i.ae = call i32 @BIO_write(ptr noundef %0, ptr noundef nonnull @.str.13, i32 noundef 9) #8
  %.not63 = icmp eq i32 %i.ae, 9
  br i1 %.not63, label %bb.m, label %.thread70

bb.m:                                             ; preds = %bb.l
  %i.af = call i32 @BIO_write(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %i.c) #8
  %.not64 = icmp eq i32 %i.af, %i.c
  br i1 %.not64, label %bb.n, label %.thread70

bb.n:                                             ; preds = %bb.m
  %i.ag = call i32 @BIO_write(ptr noundef %0, ptr noundef nonnull @.str.12, i32 noundef 6) #8
  %.not65 = icmp eq i32 %i.ag, 6
  br i1 %.not65, label %bb.o, label %.thread70

bb.o:                                             ; preds = %bb.n
  %i.ah = load i32, ptr %i.a, align 4, !tbaa !16
  %i.ai = sext i32 %i.ah to i64
  %i.aj = add nsw i64 %.047.lcssa, %i.ai          ; 2 uses
  %i.ak = icmp sgt i64 %i.aj, 2147483647
  br i1 %i.ak, label %.thread70, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.al = trunc i64 %i.aj to i32
  br label %bb.q

.loopexit:                                        ; preds = %.lr.ph, %bb.i, %bb.k
  call void @OPENSSL_free(ptr noundef nonnull %i.m) #8
  br label %.thread70

.thread70:                                        ; preds = %bb.o, %bb.n, %bb.m, %bb.l, %.thread, %bb.g, %bb.f, %bb.c, %bb.b, %bb.a, %.loopexit
  %.074 = phi i32 [ 7, %.loopexit ], [ 69, %bb.o ], [ 7, %bb.n ], [ 7, %bb.m ], [ 7, %bb.l ], [ 7, %.thread ], [ 7, %bb.g ], [ 7, %bb.f ], [ 7, %bb.c ], [ 7, %bb.b ], [ 7, %bb.a ]
  call void @ERR_put_error(i32 noundef 9, i32 noundef 0, i32 noundef %.074, ptr noundef nonnull @.str.8, i32 noundef 546) #8
  br label %bb.q

bb.q:                                             ; preds = %.thread70, %bb.p
  %.049 = phi i32 [ 0, %.thread70 ], [ %i.al, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret i32 %.049
}

declare i32 @EVP_DecryptInit_ex(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @EVP_DecryptUpdate(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @EVP_DecryptFinal_ex(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #3

declare i32 @OPENSSL_isdigit(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @load_iv(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef captures(none) %1, i64 noundef range(i64 0, 4294967296) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.b = load ptr, ptr %0, align 8, !tbaa !13     ; 2 uses
  %.not32 = icmp eq i64 %2, 0
  br i1 %.not32, label %.critedge, label %.lr.ph31.preheader

.lr.ph31.preheader:                               ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr align 1 %1, i8 0, i64 %2, i1 false), !tbaa !9
  %i.c = shl nuw nsw i64 %2, 1
  br label %.lr.ph31

.lr.ph31:                                         ; preds = %.lr.ph31.preheader, %bb.c
  %.01829 = phi i64 [ %i.r, %bb.c ], [ 0, %.lr.ph31.preheader ] ; 3 uses
  %.02028 = phi ptr [ %i.g, %bb.c ], [ %i.b, %.lr.ph31.preheader ] ; 2 uses
  %i.d = load i8, ptr %.02028, align 1, !tbaa !9
  %i.e = sext i8 %i.d to i32
  %i.f = call i32 @OPENSSL_fromxdigit(ptr noundef nonnull %i.a, i32 noundef %i.e) #8
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph31
  call void @ERR_put_error(i32 noundef 9, i32 noundef 0, i32 noundef 103, ptr noundef nonnull @.str.8, i32 noundef 461) #8
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph31
  %i.g = getelementptr inbounds nuw i8, ptr %.02028, i64 1 ; 2 uses
  %i.h = load i8, ptr %i.a, align 1, !tbaa !9
  %i.i = trunc i64 %.01829 to i8
  %i.j = shl i8 %i.i, 2
  %i.k = and i8 %i.j, 4
  %i.l = xor i8 %i.k, 4
  %i.m = shl i8 %i.h, %i.l
  %i.n = lshr i64 %.01829, 1
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 %i.n ; 2 uses
  %i.p = load i8, ptr %i.o, align 1, !tbaa !9
  %i.q = or i8 %i.m, %i.p
  store i8 %i.q, ptr %i.o, align 1, !tbaa !9
  %i.r = add nuw nsw i64 %.01829, 1               ; 2 uses
  %exitcond.not = icmp eq i64 %i.r, %i.c
  br i1 %exitcond.not, label %.critedge, label %.lr.ph31, !llvm.loop !27

.critedge:                                        ; preds = %bb.c, %bb.a
  %.020.lcssa = phi ptr [ %i.b, %bb.a ], [ %i.g, %bb.c ]
  store ptr %.020.lcssa, ptr %0, align 8, !tbaa !13
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %.critedge
  %.1 = phi i32 [ 1, %.critedge ], [ 0, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define i32 @PEM_write(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @BIO_new_fp(ptr noundef %0, i32 noundef 0) #8 ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @ERR_put_error(i32 noundef 9, i32 noundef 0, i32 noundef 7, ptr noundef nonnull @.str.8, i32 noundef 476) #8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = tail call i32 @PEM_write_bio(ptr noundef nonnull %i.a, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4)
  %i.d = tail call i32 @BIO_free(ptr noundef nonnull %i.a) #8 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ %i.c, %bb.c ]
  ret i32 %.0
}

declare void @EVP_EncodeInit(ptr noundef) local_unnamed_addr #2

declare i32 @BIO_write(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @EVP_EncodeUpdate(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @EVP_EncodeFinal(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @PEM_read(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef writeonly captures(none) %4) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @BIO_new_fp(ptr noundef %0, i32 noundef 0) #8 ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @ERR_put_error(i32 noundef 9, i32 noundef 0, i32 noundef 7, ptr noundef nonnull @.str.8, i32 noundef 554) #8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = tail call i32 @PEM_read_bio(ptr noundef nonnull %i.a, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4)
  %i.d = tail call i32 @BIO_free(ptr noundef nonnull %i.a) #8 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ %i.c, %bb.c ]
  ret i32 %.0
}

declare ptr @BUF_MEM_new() local_unnamed_addr #2

declare void @BUF_MEM_free(ptr noundef) local_unnamed_addr #2

declare i32 @BIO_gets(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i64 @BUF_MEM_grow(ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @CRYPTO_memcmp(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i64 @BUF_MEM_grow_clean(ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @EVP_DecodeInit(ptr noundef) local_unnamed_addr #2

declare i32 @EVP_DecodeUpdate(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @EVP_DecodeFinal(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i64 @OPENSSL_strlcpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @EVP_get_pw_prompt() local_unnamed_addr #2

declare i32 @EVP_read_pw_string_min(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i64 @OPENSSL_strnlen(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #3

declare ptr @EVP_des_cbc() local_unnamed_addr #2

declare ptr @EVP_des_ede3_cbc() local_unnamed_addr #2

declare ptr @EVP_aes_128_cbc() local_unnamed_addr #2

declare ptr @EVP_aes_192_cbc() local_unnamed_addr #2

declare ptr @EVP_aes_256_cbc() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

declare i32 @OPENSSL_fromxdigit(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #8 = { nounwind }
attributes #9 = { nounwind willreturn memory(read) }
attributes #10 = { noreturn nounwind }

!llvm.module.flags = !{!1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = distinct !{!0, !10}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!5, !5, i64 0}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"any pointer", !5, i64 0}
!12 = !{!"p1 omnipotent char", !11, i64 0}
!13 = !{!12, !12, i64 0}
!14 = !{!"long", !5, i64 0}
!15 = !{!14, !14, i64 0}
!16 = !{!6, !6, i64 0}
!17 = !{!"p1 _ZTS13evp_cipher_st", !11, i64 0}
!18 = !{!"evp_cipher_info_st", !17, i64 0, !5, i64 8}
!19 = !{!18, !17, i64 0}
!20 = distinct !{!20, !10}
!21 = distinct !{!21, !10}
!22 = distinct !{!22, !10}
!23 = !{!"buf_mem_st", !14, i64 0, !12, i64 8, !14, i64 16}
!24 = !{!23, !12, i64 8}
!25 = distinct !{!25, !10}
!26 = distinct !{!26, !10}
!27 = distinct !{!27, !10}
end_hunk_1
