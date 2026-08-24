Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openssl/original/evp_test?download=true
inline.NumInlined: 194
inline.NumDeleted: 51
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 9
begin_hunk_0_@encode_test_init:bb.a
  br i1 %i.d, label %.sink.split, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(6) @.str.302) #13
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.sink.split, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(8) @.str.303) #13
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i32 2, ptr %i.i, align 8, !tbaa !193
  %i.j = tail call ptr @CRYPTO_strdup(ptr noundef nonnull @.str.305, ptr noundef nonnull @.str.30, i32 noundef 3641) #12 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 2488
  store ptr %i.j, ptr %i.k, align 8, !tbaa !30
  %i.l = tail call i32 @test_ptr(ptr noundef nonnull @.str.30, i32 noundef 3641, ptr noundef nonnull @.str.304, ptr noundef %i.j) #12
  %.not11 = icmp eq i32 %i.l, 0
  br i1 %.not11, label %bb.h, label %bb.g

bb.f:                                             ; preds = %bb.d
  tail call void (ptr, i32, ptr, ...) @test_error(ptr noundef nonnull @.str.30, i32 noundef 3646, ptr noundef nonnull @.str.306, ptr noundef nonnull %1) #12
  br label %bb.h

.sink.split:                                      ; preds = %bb.c, %bb.b
  %.sink = phi i32 [ 0, %bb.b ], [ 1, %bb.c ]
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i32 %.sink, ptr %i.m, align 8, !tbaa !193
  br label %bb.g

bb.g:                                             ; preds = %.sink.split, %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 2504
  store ptr %i.a, ptr %i.n, align 8, !tbaa !25
  br label %bb.i

bb.h:                                             ; preds = %bb.e, %bb.f
  tail call void @CRYPTO_free(ptr noundef %i.a, ptr noundef nonnull @.str.30, i32 noundef 3652) #12
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %bb.h, %bb.g
  %.0 = phi i32 [ 1, %bb.g ], [ 0, %bb.h ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal void @encode_test_cleanup(ptr nofree noundef readonly captures(none) %0) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2504
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !25   ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !195
  tail call void @CRYPTO_free(ptr noundef %i.c, ptr noundef nonnull @.str.30, i32 noundef 3660) #12
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !196
  tail call void @CRYPTO_free(ptr noundef %i.e, ptr noundef nonnull @.str.30, i32 noundef 3661) #12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.b, i8 0, i64 40, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 2) i32 @encode_test_parse(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2504
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !25   ; 3 uses
  %i.c = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(6) @.str.238) #13
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %.sink.split, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(7) @.str.239) #13
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  br label %.sink.split

.sink.split:                                      ; preds = %bb.a, %bb.c
  %.sink10 = phi i64 [ 24, %bb.c ], [ 8, %bb.a ]
  %.sink = phi ptr [ %i.g, %bb.c ], [ %i.b, %bb.a ]
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 %.sink10
  %i.i = tail call fastcc i32 @parse_bin(ptr noundef %2, ptr noundef %.sink, ptr noundef nonnull %i.h)
  br label %bb.d

bb.d:                                             ; preds = %.sink.split, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ %i.i, %.sink.split ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @encode_test_run(ptr nofree noundef captures(none) %0) #1 {
bb.a:
  %i.a = alloca i32, align 4                      ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2504
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !25   ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.d = tail call ptr @EVP_ENCODE_CTX_new() #12  ; 5 uses
  %i.e = tail call i32 @test_ptr(ptr noundef nonnull @.str.30, i32 noundef 3685, ptr noundef nonnull @.str.307, ptr noundef %i.d) #12
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %.loopexit.sink.split, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !193
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.c, label %memory_err_compare.exit

bb.c:                                             ; preds = %bb.b
  %i.i = tail call ptr @EVP_ENCODE_CTX_new() #12  ; 11 uses
  %i.j = tail call i32 @test_ptr(ptr noundef nonnull @.str.30, i32 noundef 3692, ptr noundef nonnull @.str.309, ptr noundef %i.i) #12
  %.not95 = icmp eq i32 %i.j, 0
  br i1 %.not95, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !197  ; 2 uses
  %i.m = add i64 %i.l, 2
  %i.n = udiv i64 %i.m, 3
  %i.o = shl i64 %i.n, 2
  %i.p = udiv i64 %i.l, 48
  %i.q = shl nuw nsw i64 %i.p, 1
  %i.r = add nuw nsw i64 %i.q, 82
  %i.s = add i64 %i.r, %i.o
  %i.t = tail call noalias ptr @CRYPTO_malloc(i64 noundef %i.s, ptr noundef nonnull @.str.30, i32 noundef 3693) #12 ; 11 uses
  %i.u = tail call i32 @test_ptr(ptr noundef nonnull @.str.30, i32 noundef 3693, ptr noundef nonnull @.str.310, ptr noundef %i.t) #12
  %.not96 = icmp eq i32 %i.u, 0
  br i1 %.not96, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @EVP_EncodeInit(ptr noundef %i.i) #12
  %i.v = load i64, ptr %i.k, align 8, !tbaa !197
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %bb.e
  %.086 = phi i32 [ 0, %bb.e ], [ %i.ak, %bb.g ]
  %.080 = phi i64 [ %i.v, %bb.e ], [ %i.ai, %bb.g ] ; 3 uses
  %.078 = phi i64 [ 0, %bb.e ], [ %i.ah, %bb.g ]  ; 2 uses
  %i.w = load i32, ptr @data_chunk_size, align 4, !tbaa !9 ; 2 uses
  %i.x = icmp eq i32 %i.w, 0
  %i.y = sext i32 %i.w to i64
  %i.z = call i64 @llvm.umin.i64(i64 %.080, i64 %i.y)
  %.077 = select i1 %i.x, i64 %.080, i64 %i.z     ; 3 uses
  %i.aa = load ptr, ptr %i.c, align 8, !tbaa !195
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %.078
  %i.ac = trunc i64 %.077 to i32
  %i.ad = call i32 @EVP_EncodeUpdate(ptr noundef %i.i, ptr noundef %i.t, ptr noundef nonnull %i.a, ptr noundef %i.ab, i32 noundef %i.ac) #12
  %i.ae = icmp ne i32 %i.ad, 0
  %i.af = zext i1 %i.ae to i32
  %i.ag = call i32 @test_true(ptr noundef nonnull @.str.30, i32 noundef 3708, ptr noundef nonnull @.str.311, i32 noundef %i.af) #12
  %.not97 = icmp eq i32 %i.ag, 0
  br i1 %.not97, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ah = add i64 %.077, %.078
  %i.ai = sub i64 %.080, %.077                    ; 2 uses
  %i.aj = load i32, ptr %i.a, align 4, !tbaa !9
  %i.ak = add nsw i32 %i.aj, %.086                ; 3 uses
  %.not98 = icmp eq i64 %i.ai, 0
  br i1 %.not98, label %bb.h, label %bb.f, !llvm.loop !198

bb.h:                                             ; preds = %bb.g
  %i.al = sext i32 %i.ak to i64
  %i.am = getelementptr inbounds i8, ptr %i.t, i64 %i.al
  call void @EVP_EncodeFinal(ptr noundef %i.i, ptr noundef %i.am, ptr noundef nonnull %i.a) #12
  %i.an = load i32, ptr %i.a, align 4, !tbaa !9
  %i.ao = add nsw i32 %i.an, %i.ak
  %i.ap = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !196 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !199 ; 2 uses
  %i.at = sext i32 %i.ao to i64                   ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 2488
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !30 ; 2 uses
  %.not.i = icmp eq ptr %i.av, null
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aw = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.av, ptr noundef nonnull dereferenceable(13) @.str.312) #13
  %i.ax = icmp eq i32 %i.aw, 0
  br i1 %i.ax, label %.split, label %bb.j

.split:                                           ; preds = %bb.i
  %i.ay = call i32 @test_mem_ne(ptr noundef nonnull @.str.30, i32 noundef 384, ptr noundef nonnull @.str.235, ptr noundef nonnull @.str.120, ptr noundef %i.aq, i64 noundef %i.as, ptr noundef %i.t, i64 noundef %i.at) #12
  %.not15.i.not = icmp eq i32 %i.ay, 0
  br i1 %.not15.i.not, label %memory_err_compare.exit, label %.loopexit.sink.split

bb.j:                                             ; preds = %bb.h, %bb.i
  %i.az = call i32 @test_mem_eq(ptr noundef nonnull @.str.30, i32 noundef 386, ptr noundef nonnull @.str.235, ptr noundef nonnull @.str.120, ptr noundef %i.aq, i64 noundef %i.as, ptr noundef %i.t, i64 noundef %i.at) #12
  %i.ba = icmp eq i32 %i.az, 0
  br i1 %i.ba, label %.loopexit.sink.split, label %memory_err_compare.exit

memory_err_compare.exit:                          ; preds = %.split, %bb.j, %bb.b
  %.091 = phi ptr [ null, %bb.b ], [ %i.t, %bb.j ], [ %i.t, %.split ] ; 8 uses
  %.084 = phi ptr [ null, %bb.b ], [ %i.i, %bb.j ], [ %i.i, %.split ] ; 8 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !199
  %i.bd = add i64 %i.bc, 3
  %i.be = lshr i64 %i.bd, 2
  %i.bf = mul nuw i64 %i.be, 3
  %i.bg = add nuw i64 %i.bf, 80                   ; 3 uses
  %i.bh = call noalias ptr @CRYPTO_malloc(i64 noundef %i.bg, ptr noundef nonnull @.str.30, i32 noundef 3725) #12 ; 15 uses
  %i.bi = call i32 @test_ptr(ptr noundef nonnull @.str.30, i32 noundef 3725, ptr noundef nonnull @.str.313, ptr noundef %i.bh) #12
  %.not100 = icmp eq i32 %i.bi, 0
  br i1 %.not100, label %.loopexit, label %bb.k

bb.k:                                             ; preds = %memory_err_compare.exit
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.bh, i8 -1, i64 %i.bg, i1 false)
  call void @EVP_DecodeInit(ptr noundef %i.d) #12
  %i.bj = load i64, ptr %i.bb, align 8, !tbaa !199
  %i.bk = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  br label %bb.l

bb.l:                                             ; preds = %bb.m, %bb.k
  %.288 = phi i32 [ 0, %bb.k ], [ %i.bz, %bb.m ]  ; 2 uses
  %.282 = phi i64 [ %i.bj, %bb.k ], [ %i.bx, %bb.m ] ; 3 uses
  %.2 = phi i64 [ 0, %bb.k ], [ %i.bw, %bb.m ]    ; 2 uses
  %i.bl = load i32, ptr @data_chunk_size, align 4, !tbaa !9 ; 2 uses
  %i.bm = icmp eq i32 %i.bl, 0
  %i.bn = sext i32 %i.bl to i64
  %i.bo = call i64 @llvm.umin.i64(i64 %.282, i64 %i.bn)
  %.0 = select i1 %i.bm, i64 %.282, i64 %i.bo     ; 3 uses
  %i.bp = sext i32 %.288 to i64
  %i.bq = getelementptr inbounds i8, ptr %i.bh, i64 %i.bp
  %i.br = load ptr, ptr %i.bk, align 8, !tbaa !196
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 %.2
  %i.bt = trunc i64 %.0 to i32
  %i.bu = call i32 @EVP_DecodeUpdate(ptr noundef %i.d, ptr noundef nonnull %i.bq, ptr noundef nonnull %i.a, ptr noundef %i.bs, i32 noundef %i.bt) #12
  %i.bv = icmp slt i32 %i.bu, 0
  br i1 %i.bv, label %.loopexit.sink.split, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bw = add i64 %.0, %.2
  %i.bx = sub i64 %.282, %.0                      ; 2 uses
  %i.by = load i32, ptr %i.a, align 4, !tbaa !9
  %i.bz = add nsw i32 %i.by, %.288                ; 3 uses
  %.not101 = icmp eq i64 %i.bx, 0
  br i1 %.not101, label %bb.n, label %bb.l, !llvm.loop !200

bb.n:                                             ; preds = %bb.m
  %i.ca = sext i32 %i.bz to i64
  %i.cb = getelementptr inbounds i8, ptr %i.bh, i64 %i.ca
  %i.cc = call i32 @EVP_DecodeFinal(ptr noundef %i.d, ptr noundef nonnull %i.cb, ptr noundef nonnull %i.a) #12
  %.not102 = icmp eq i32 %i.cc, 1
  br i1 %.not102, label %bb.o, label %.loopexit.sink.split

bb.o:                                             ; preds = %bb.n
  %i.cd = load i32, ptr %i.a, align 4, !tbaa !9
  %i.ce = add i32 %i.cd, %i.bz                    ; 3 uses
  %i.cf = load i32, ptr %i.f, align 8, !tbaa !193
  %.not103 = icmp eq i32 %i.cf, 2
  br i1 %.not103, label %memory_err_compare.exit114, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cg = load ptr, ptr %i.c, align 8, !tbaa !195 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !197 ; 2 uses
  %i.cj = sext i32 %i.ce to i64                   ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 2488
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !30 ; 2 uses
  %.not.i110 = icmp eq ptr %i.cl, null
  br i1 %.not.i110, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cm = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.cl, ptr noundef nonnull dereferenceable(13) @.str.314) #13
  %i.cn = icmp eq i32 %i.cm, 0
  br i1 %i.cn, label %.split140, label %bb.r

.split140:                                        ; preds = %bb.q
  %i.co = call i32 @test_mem_ne(ptr noundef nonnull @.str.30, i32 noundef 384, ptr noundef nonnull @.str.235, ptr noundef nonnull @.str.120, ptr noundef %i.cg, i64 noundef %i.ci, ptr noundef nonnull %i.bh, i64 noundef %i.cj) #12
  %.not15.i113.not = icmp eq i32 %i.co, 0
  br i1 %.not15.i113.not, label %memory_err_compare.exit114, label %.loopexit.sink.split

bb.r:                                             ; preds = %bb.p, %bb.q
  %i.cp = call i32 @test_mem_eq(ptr noundef nonnull @.str.30, i32 noundef 386, ptr noundef nonnull @.str.235, ptr noundef nonnull @.str.120, ptr noundef %i.cg, i64 noundef %i.ci, ptr noundef nonnull %i.bh, i64 noundef %i.cj) #12
  %i.cq = icmp eq i32 %i.cp, 0
  br i1 %i.cq, label %.loopexit.sink.split, label %memory_err_compare.exit114

memory_err_compare.exit114:                       ; preds = %.split140, %bb.r, %bb.o
  %i.cr = trunc i64 %i.bg to i32                  ; 2 uses
  %i.cs = icmp slt i32 %i.ce, %i.cr
  br i1 %i.cs, label %.lr.ph.preheader, label %.loopexit.sink.split

.lr.ph.preheader:                                 ; preds = %memory_err_compare.exit114
  %i.ct = sext i32 %i.ce to i64
  br label %.lr.ph

bb.s:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %lftr.wideiv, %i.cr
  br i1 %exitcond.not, label %.loopexit.sink.split, label %.lr.ph, !llvm.loop !201

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.s
  %indvars.iv = phi i64 [ %i.ct, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.s ] ; 2 uses
  %i.cu = getelementptr inbounds i8, ptr %i.bh, i64 %indvars.iv
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !42
  %.not105 = icmp eq i8 %i.cv, -1
  br i1 %.not105, label %bb.s, label %.loopexit.sink.split

.loopexit.sink.split:                             ; preds = %bb.l, %bb.s, %.lr.ph, %memory_err_compare.exit114, %bb.r, %.split140, %bb.n, %bb.j, %.split, %bb.a
  %.str.305.sink = phi ptr [ @.str.312, %bb.j ], [ @.str.308, %bb.a ], [ null, %memory_err_compare.exit114 ], [ @.str.314, %bb.r ], [ @.str.305, %bb.n ], [ @.str.314, %.lr.ph ], [ @.str.312, %.split ], [ @.str.314, %.split140 ], [ null, %bb.s ], [ @.str.305, %bb.l ]
  %.192.ph = phi ptr [ %i.t, %bb.j ], [ null, %bb.a ], [ %.091, %memory_err_compare.exit114 ], [ %.091, %bb.r ], [ %.091, %bb.n ], [ %.091, %bb.s ], [ %i.t, %.split ], [ %.091, %.split140 ], [ %.091, %.lr.ph ], [ %.091, %bb.l ]
  %.090.ph = phi ptr [ null, %bb.j ], [ null, %bb.a ], [ %i.bh, %memory_err_compare.exit114 ], [ %i.bh, %bb.r ], [ %i.bh, %bb.n ], [ %i.bh, %bb.s ], [ null, %.split ], [ %i.bh, %.split140 ], [ %i.bh, %.lr.ph ], [ %i.bh, %bb.l ]
  %.185.ph = phi ptr [ %i.i, %bb.j ], [ null, %bb.a ], [ %.084, %memory_err_compare.exit114 ], [ %.084, %bb.r ], [ %.084, %bb.n ], [ %.084, %bb.s ], [ %i.i, %.split ], [ %.084, %.split140 ], [ %.084, %.lr.ph ], [ %.084, %bb.l ]
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 2472
  store ptr %.str.305.sink, ptr %i.cw, align 8, !tbaa !71
  br label %.loopexit

.loopexit:                                        ; preds = %bb.f, %.loopexit.sink.split, %memory_err_compare.exit, %bb.c, %bb.d
  %.192 = phi ptr [ %i.t, %bb.d ], [ %.091, %memory_err_compare.exit ], [ null, %bb.c ], [ %.192.ph, %.loopexit.sink.split ], [ %i.t, %bb.f ]
  %.090 = phi ptr [ null, %bb.d ], [ %i.bh, %memory_err_compare.exit ], [ null, %bb.c ], [ %.090.ph, %.loopexit.sink.split ], [ null, %bb.f ]
  %.185 = phi ptr [ %i.i, %bb.d ], [ %.084, %memory_err_compare.exit ], [ %i.i, %bb.c ], [ %.185.ph, %.loopexit.sink.split ], [ %i.i, %bb.f ]
  call void @CRYPTO_free(ptr noundef %.192, ptr noundef nonnull @.str.30, i32 noundef 3777) #12
  call void @CRYPTO_free(ptr noundef %.090, ptr noundef nonnull @.str.30, i32 noundef 3778) #12
  call void @EVP_ENCODE_CTX_free(ptr noundef %i.d) #12
  call void @EVP_ENCODE_CTX_free(ptr noundef %.185) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret i32 1
}

declare ptr @EVP_ENCODE_CTX_new() local_unnamed_addr #4

declare void @EVP_EncodeInit(ptr noundef) local_unnamed_addr #4

declare i32 @EVP_EncodeUpdate(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare void @EVP_EncodeFinal(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @EVP_DecodeInit(ptr noundef) local_unnamed_addr #4

declare i32 @EVP_DecodeUpdate(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare i32 @EVP_DecodeFinal(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @EVP_ENCODE_CTX_free(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @kdf_test_init(ptr nofree noundef writeonly captures(none) %0, ptr noundef %1) #1 {
bb.a:
  %2 = alloca %struct.ossl_param_st, align 8      ; 4 uses
  %i.a = tail call noalias ptr @CRYPTO_zalloc(i64 noundef 840, ptr noundef nonnull @.str.30, i32 noundef 4115) #12 ; 9 uses
  %i.b = tail call i32 @test_ptr(ptr noundef nonnull @.str.30, i32 noundef 4115, ptr noundef nonnull @.str.316, ptr noundef %i.a) #12
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 824
  store ptr %i.c, ptr %i.d, align 8, !tbaa !202
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  call void @OSSL_PARAM_construct_end(ptr dead_on_unwind nonnull writable sret(%struct.ossl_param_st) align 8 %2) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.c, ptr noundef nonnull align 8 dereferenceable(40) %2, i64 40, i1 false), !tbaa.struct !103
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  %i.e = load ptr, ptr @libctx, align 8, !tbaa !15
  %i.f = load ptr, ptr @propquery, align 8, !tbaa !12
  %i.g = call ptr @EVP_KDF_fetch(ptr noundef %i.e, ptr noundef %1, ptr noundef %i.f) #12 ; 3 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @CRYPTO_free(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.30, i32 noundef 4122) #12
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.i = call ptr @EVP_KDF_CTX_new(ptr noundef nonnull %i.g) #12
  store ptr %i.i, ptr %i.a, align 8, !tbaa !206
  call void @EVP_KDF_free(ptr noundef nonnull %i.g) #12
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !206
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @CRYPTO_free(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.30, i32 noundef 4128) #12
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 2504
  store ptr %i.a, ptr %i.l, align 8, !tbaa !25
  %i.m = call ptr @OPENSSL_sk_new_null() #12
  %i.n = call ptr @OPENSSL_sk_set_thunks(ptr noundef %i.m, ptr noundef nonnull @sk_OPENSSL_STRING_freefunc_thunk) #12
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 832
  store ptr %i.n, ptr %i.o, align 8, !tbaa !207
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.f, %bb.e, %bb.c
  %.0 = phi i32 [ 1, %bb.f ], [ 0, %bb.c ], [ 0, %bb.e ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal void @kdf_test_cleanup(ptr nofree noundef readonly captures(none) %0) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2504
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !25   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 832
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !207
  tail call void @OPENSSL_sk_pop_free(ptr noundef %i.d, ptr noundef nonnull @openssl_free) #12
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !208
  %.not8 = icmp eq ptr %i.f, null
  br i1 %.not8, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.09 = phi ptr [ %i.i, %.lr.ph ], [ %i.e, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.09, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !105
  tail call void @CRYPTO_free(ptr noundef %i.h, ptr noundef nonnull @.str.30, i32 noundef 4143) #12
  %i.i = getelementptr inbounds nuw i8, ptr %.09, i64 40 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !208
  %.not = icmp eq ptr %i.j, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !209

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !210
  tail call void @CRYPTO_free(ptr noundef %i.l, ptr noundef nonnull @.str.30, i32 noundef 4144) #12
  %i.m = load ptr, ptr %i.b, align 8, !tbaa !206
  tail call void @EVP_KDF_CTX_free(ptr noundef %i.m) #12
  ret void
}

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 2) i32 @kdf_test_parse(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) #1 {
bb.a:
  %3 = alloca %struct.ossl_param_st, align 8      ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2504
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !25   ; 5 uses
  %i.c = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(7) @.str.239) #13
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.g = tail call fastcc i32 @parse_bin(ptr noundef %2, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f)
  br label %ctrladd.exit

bb.c:                                             ; preds = %bb.a
  %i.h = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(9) @.str.103) #13
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 832
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !207
  %i.l = tail call ptr @CRYPTO_strdup(ptr noundef %2, ptr noundef nonnull @.str.30, i32 noundef 254) #12 ; 3 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %ctrladd.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = tail call i32 @OPENSSL_sk_push(ptr noundef %i.k, ptr noundef nonnull %i.l) #12
  %i.o = icmp slt i32 %i.n, 1
  br i1 %i.o, label %bb.f, label %ctrladd.exit

bb.f:                                             ; preds = %bb.e
  tail call void @CRYPTO_free(ptr noundef nonnull %i.l, ptr noundef nonnull @.str.30, i32 noundef 260) #12
  br label %ctrladd.exit

bb.g:                                             ; preds = %bb.c
  %i.p = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(5) @.str.245, i64 noundef 4) #13
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.h, label %ctrladd.exit

bb.h:                                             ; preds = %bb.g
  %i.r = load ptr, ptr %i.b, align 8, !tbaa !206
  %i.s = tail call ptr @EVP_KDF_CTX_kdf(ptr noundef %i.r) #12
  %i.t = tail call ptr @EVP_KDF_settable_ctx_params(ptr noundef %i.s) #12 ; 8 uses
  %i.u = tail call ptr @CRYPTO_strdup(ptr noundef %2, ptr noundef nonnull @.str.30, i32 noundef 4156) #12 ; 24 uses
  %i.v = tail call i32 @test_ptr(ptr noundef nonnull @.str.30, i32 noundef 4156, ptr noundef nonnull @.str.317, ptr noundef %i.u) #12
  %.not.i = icmp eq i32 %i.v, 0
  br i1 %.not.i, label %ctrladd.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.u, i32 noundef 58) #13 ; 3 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %sub_0.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 1
  store i8 0, ptr %i.w, align 1, !tbaa !42
  br label %sub_0.i

sub_0.i:                                          ; preds = %bb.j, %bb.i
  %.0.i12 = phi ptr [ %i.y, %bb.j ], [ @.str.111, %bb.i ] ; 6 uses
  %i.z = load i8, ptr %i.u, align 1
  %.not69.i = icmp eq i8 %i.z, 114
  br i1 %.not69.i, label %.tail.i, label %.tail.thread.i

.tail.i:                                          ; preds = %sub_0.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 1
  %i.ab = load i8, ptr %i.aa, align 1
end_hunk_0
