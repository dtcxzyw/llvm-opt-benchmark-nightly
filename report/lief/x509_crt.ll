Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lief/original/x509_crt?download=true
inline.NumInlined: 84
inline.NumDeleted: 28
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@mbedtls_x509_crt_verify_info:bb.a
  %i.f = icmp slt i32 %i.e, 0
  br i1 %i.f, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = zext nneg i32 %i.e to i64                ; 3 uses
  %.not45 = icmp ugt i64 %.052, %i.g
  br i1 %.not45, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %bb.d
  %i.h = sub nuw i64 %.052, %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %.03251, i64 %i.g
  %i.j = xor i32 %i.b, %.03549
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.e
  %.136 = phi i32 [ %.03549, %bb.b ], [ %i.j, %bb.e ] ; 2 uses
  %.133 = phi ptr [ %.03251, %bb.b ], [ %i.i, %bb.e ] ; 2 uses
  %.1 = phi i64 [ %.052, %bb.b ], [ %i.h, %bb.e ] ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.03450, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %.03450, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !97   ; 2 uses
  %.not = icmp eq ptr %i.m, null
  br i1 %.not, label %bb.g, label %bb.b, !llvm.loop !94

bb.g:                                             ; preds = %bb.f
  %.not43 = icmp eq i32 %.136, 0
  br i1 %.not43, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %.133, i64 noundef %.1, ptr noundef nonnull @.str.23, ptr noundef %2) #18 ; 2 uses
  %i.o = icmp slt i32 %i.n, 0
  br i1 %i.o, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.p = zext nneg i32 %i.n to i64                ; 2 uses
  %.not44 = icmp ugt i64 %.1, %i.p
  br i1 %.not44, label %bb.j, label %.loopexit

bb.j:                                             ; preds = %bb.i
  %i.q = sub nuw i64 %.1, %i.p
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.g
  %.2 = phi i64 [ %i.q, %bb.j ], [ %.1, %bb.g ]
  %i.r = sub i64 %1, %.2
  %i.s = trunc i64 %i.r to i32
  br label %.loopexit

.loopexit:                                        ; preds = %bb.c, %bb.d, %bb.h, %bb.i, %bb.k
  %.037 = phi i32 [ %i.s, %bb.k ], [ -138, %bb.i ], [ -138, %bb.h ], [ -138, %bb.d ], [ -138, %bb.c ]
  ret i32 %.037
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden range(i32 -10240, 1) i32 @mbedtls_x509_crt_check_key_usage(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1208
  %i.b = load i32, ptr %i.a, align 8, !tbaa !42
  %i.c = and i32 %i.b, 4
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = and i32 %1, -32770                       ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1220
  %i.g = load i32, ptr %i.f, align 4, !tbaa !45   ; 2 uses
  %i.h = and i32 %i.g, %i.e
  %.not = icmp eq i32 %i.h, %i.e
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = and i32 %1, 32769
  %i.j = xor i32 %i.i, 32769
  %i.k = and i32 %i.j, %i.g
  %.not13 = icmp eq i32 %i.k, 0
  %. = select i1 %.not13, i32 0, i32 -10240
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ -10240, %bb.b ], [ 0, %bb.a ], [ %., %bb.c ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden range(i32 -10240, 1) i32 @mbedtls_x509_crt_check_extended_key_usage(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1208
  %i.b = load i32, ptr %i.a, align 8, !tbaa !42
  %i.c = and i32 %i.b, 2048
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1224
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.thread
  %.01423 = phi ptr [ %i.e, %bb.b ], [ %i.r, %.thread ] ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.01423, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !36   ; 2 uses
  %i.h = icmp eq i64 %i.g, %2
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %.01423, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !37
  %bcmp = tail call i32 @bcmp(ptr %i.j, ptr %1, i64 %2)
  %i.k = icmp eq i32 %bcmp, 0
  br i1 %i.k, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.not18 = icmp eq i64 %i.g, 4
  br i1 %.not18, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %.01423, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !37
  %i.n = load i32, ptr %i.m, align 1
  %i.o = icmp ne i32 2432341, %i.n
  %i.p = zext i1 %i.o to i32
  %bcmp19.fr = freeze i32 %i.p
  %.not20 = icmp eq i32 %bcmp19.fr, 0
  br i1 %.not20, label %.critedge, label %.thread

.thread:                                          ; preds = %bb.e, %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %.01423, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !46   ; 2 uses
  %.not = icmp eq ptr %i.r, null
  br i1 %.not, label %.critedge, label %bb.c, !llvm.loop !98

.critedge:                                        ; preds = %bb.f, %bb.d, %.thread, %bb.a
  %.2 = phi i32 [ 0, %bb.a ], [ 0, %bb.f ], [ 0, %bb.d ], [ -10240, %.thread ]
  ret i32 %.2
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden range(i32 0, 2) i32 @mbedtls_x509_crt_is_revoked(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.e
  %.013 = phi ptr [ %i.a, %bb.a ], [ %i.m, %bb.e ] ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.013, i64 32
  %i.e = load i64, ptr %i.d, align 8, !tbaa !50   ; 3 uses
  %.not12 = icmp eq i64 %i.e, 0
  br i1 %.not12, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i64, ptr %i.c, align 8, !tbaa !51
  %i.g = icmp eq i64 %i.f, %i.e
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !52
  %i.i = getelementptr inbounds nuw i8, ptr %.013, i64 40
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !53
  %bcmp = tail call i32 @bcmp(ptr %i.h, ptr %i.j, i64 %i.e)
  %i.k = icmp eq i32 %bcmp, 0
  br i1 %i.k, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %.013, i64 96
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !54   ; 2 uses
  %.not = icmp eq ptr %i.m, null
  br i1 %.not, label %.critedge, label %bb.b, !llvm.loop !0

.critedge:                                        ; preds = %bb.b, %bb.e, %bb.d
  %.09 = phi i32 [ 1, %bb.d ], [ 0, %bb.e ], [ 0, %bb.b ]
  ret i32 %.09
}

; Function Attrs: nounwind uwtable
define hidden range(i64 0, 17) i64 @mbedtls_x509_crt_parse_cn_inet_pton(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 58) #19
  %i.b = icmp eq ptr %i.a, null                   ; 2 uses
  %. = select i1 %i.b, i32 2, i32 10
  %.8 = select i1 %i.b, i64 4, i64 16
  %i.c = tail call i32 @inet_pton(i32 noundef %., ptr noundef nonnull %0, ptr noundef %1) #18
  %.not = icmp eq i32 %i.c, 1
  %i.d = select i1 %.not, i64 %.8, i64 0
  ret i64 %i.d
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden i32 @mbedtls_x509_crt_verify(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nofree noundef captures(none) initializes((0, 4)) %4, ptr nofree noundef readonly captures(address_is_null) %5, ptr noundef %6) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i32 @x509_crt_verify_restartable_ca_cb(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @mbedtls_x509_crt_profile_default, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @x509_crt_verify_restartable_ca_cb(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(address_is_null) %3, ptr noundef %4, ptr nofree noundef captures(none) initializes((0, 4)) %5, ptr nofree noundef readonly captures(address_is_null) %6, ptr noundef %7) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 7 uses
  %i.b = alloca [64 x i8], align 16               ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  %i.e = alloca [64 x i8], align 16               ; 4 uses
  %8 = alloca %struct.mbedtls_x509_time, align 4  ; 11 uses
  %i.f = alloca [4 x i32], align 16               ; 5 uses
  %9 = alloca %struct.mbedtls_x509_crt_verify_chain, align 8 ; 30 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  store i32 0, ptr %5, align 4, !tbaa !35
  store ptr null, ptr %9, align 8, !tbaa !111
  %i.g = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 5 uses
  store i32 -1, ptr %i.g, align 8, !tbaa !112
  %i.h = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr null, ptr %i.h, align 8, !tbaa !111
  %i.i = getelementptr inbounds nuw i8, ptr %9, i64 24
  store i32 -1, ptr %i.i, align 8, !tbaa !112
  %i.j = getelementptr inbounds nuw i8, ptr %9, i64 32
  store ptr null, ptr %i.j, align 8, !tbaa !111
  %i.k = getelementptr inbounds nuw i8, ptr %9, i64 40
  store i32 -1, ptr %i.k, align 8, !tbaa !112
  %i.l = getelementptr inbounds nuw i8, ptr %9, i64 48
  store ptr null, ptr %i.l, align 8, !tbaa !111
  %i.m = getelementptr inbounds nuw i8, ptr %9, i64 56
  store i32 -1, ptr %i.m, align 8, !tbaa !112
  %i.n = getelementptr inbounds nuw i8, ptr %9, i64 64
  store ptr null, ptr %i.n, align 8, !tbaa !111
  %i.o = getelementptr inbounds nuw i8, ptr %9, i64 72
  store i32 -1, ptr %i.o, align 8, !tbaa !112
  %i.p = getelementptr inbounds nuw i8, ptr %9, i64 80
  store ptr null, ptr %i.p, align 8, !tbaa !111
  %i.q = getelementptr inbounds nuw i8, ptr %9, i64 88
  store i32 -1, ptr %i.q, align 8, !tbaa !112
  %i.r = getelementptr inbounds nuw i8, ptr %9, i64 96
  store ptr null, ptr %i.r, align 8, !tbaa !111
  %i.s = getelementptr inbounds nuw i8, ptr %9, i64 104
  store i32 -1, ptr %i.s, align 8, !tbaa !112
  %i.t = getelementptr inbounds nuw i8, ptr %9, i64 112
  store ptr null, ptr %i.t, align 8, !tbaa !111
  %i.u = getelementptr inbounds nuw i8, ptr %9, i64 120
  store i32 -1, ptr %i.u, align 8, !tbaa !112
  %i.v = getelementptr inbounds nuw i8, ptr %9, i64 128
  store ptr null, ptr %i.v, align 8, !tbaa !111
  %i.w = getelementptr inbounds nuw i8, ptr %9, i64 136
  store i32 -1, ptr %i.w, align 8, !tbaa !112
  %i.x = getelementptr inbounds nuw i8, ptr %9, i64 144
  store ptr null, ptr %i.x, align 8, !tbaa !111
  %i.y = getelementptr inbounds nuw i8, ptr %9, i64 152
  store i32 -1, ptr %i.y, align 8, !tbaa !112
  %i.z = getelementptr inbounds nuw i8, ptr %9, i64 160 ; 4 uses
  %i.aa = icmp eq ptr %3, null
  br i1 %i.aa, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq ptr %4, null
  br i1 %.not, label %x509_crt_verify_name.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ab = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #19 ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 1208
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !42
  %i.ae = and i32 %i.ad, 32
  %.not.i = icmp eq i32 %i.ae, 0
  br i1 %.not.i, label %bb.j, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 1016 ; 3 uses
  br label %.lr.ph.outer.i.i.outer

.lr.ph.outer.i.i.outer:                           ; preds = %.lr.ph.outer.i.i.outer.backedge, %bb.d
  %.01635.ph.i.i.ph = phi ptr [ %i.af, %bb.d ], [ %.01635.ph.i.i.ph.be, %.lr.ph.outer.i.i.outer.backedge ]
  %.01734.ph.i.i.ph = phi i32 [ 0, %bb.d ], [ %.01734.ph.i.i.ph.be, %.lr.ph.outer.i.i.outer.backedge ] ; 4 uses
  %.01833.ph.i.i.ph = phi i32 [ 0, %bb.d ], [ %.01833.ph.i.i.ph.be, %.lr.ph.outer.i.i.outer.backedge ]
  br label %.lr.ph.outer.i.i

.lr.ph.outer.i.i:                                 ; preds = %.lr.ph.outer.i.i.outer, %.loopexit.i.i.thread
  %.01635.ph.i.i = phi ptr [ %i.ar, %.loopexit.i.i.thread ], [ %.01635.ph.i.i.ph, %.lr.ph.outer.i.i.outer ] ; 5 uses
  %.01833.ph.i.i = phi i32 [ 1, %.loopexit.i.i.thread ], [ %.01833.ph.i.i.ph, %.lr.ph.outer.i.i.outer ] ; 3 uses
  %i.ag = load i32, ptr %.01635.ph.i.i, align 8, !tbaa !113
  %i.ah = and i32 %i.ag, 31
  switch i32 %i.ah, label %.loopexit.i.i [
    i32 2, label %.loopexit47.i
    i32 7, label %.thread.i.peel.i
    i32 6, label %.loopexit.i.i.loopexit
  ]

.thread.i.peel.i:                                 ; preds = %.lr.ph.outer.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.01635.ph.i.i, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !46 ; 2 uses
  %.not49.i.peel.i = icmp eq ptr %i.aj, null
  br i1 %.not49.i.peel.i, label %.critedge.thread52.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.thread.i.peel.i, %.thread.i.i
  %.01635.i.i = phi ptr [ %i.aw, %.thread.i.i ], [ %i.aj, %.thread.i.peel.i ] ; 5 uses
  %i.ak = load i32, ptr %.01635.i.i, align 8, !tbaa !113
  %i.al = and i32 %i.ak, 31
  switch i32 %i.al, label %.loopexit.i.i.thread [
    i32 2, label %.loopexit47.i
    i32 7, label %.thread.i.i
    i32 6, label %.loopexit.i.thread.i
  ]

.loopexit47.i:                                    ; preds = %.lr.ph.outer.i.i, %.lr.ph.i.i
  %.01635.i.lcssa40.i = phi ptr [ %.01635.i.i, %.lr.ph.i.i ], [ %.01635.ph.i.i, %.lr.ph.outer.i.i ] ; 2 uses
  %.01833.i.lcssa36.i = phi i32 [ 1, %.lr.ph.i.i ], [ %.01833.ph.i.i, %.lr.ph.outer.i.i ]
  %i.am = tail call fastcc i32 @x509_crt_check_cn(ptr noundef %.01635.i.lcssa40.i, ptr noundef nonnull %4, i64 noundef %i.ab)
  %i.an = icmp eq i32 %i.am, 0
  br i1 %i.an, label %x509_crt_verify_name.exit, label %.loopexit.i.i

.loopexit.i.i.loopexit:                           ; preds = %.lr.ph.outer.i.i
  br label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %.lr.ph.outer.i.i, %.loopexit.i.i.loopexit, %.loopexit47.i
  %.01635.i43.i = phi ptr [ %.01635.ph.i.i, %.loopexit.i.i.loopexit ], [ %.01635.i.lcssa40.i, %.loopexit47.i ], [ %.01635.ph.i.i, %.lr.ph.outer.i.i ]
  %.01833.i39.i = phi i32 [ %.01833.ph.i.i, %.loopexit.i.i.loopexit ], [ %.01833.i.lcssa36.i, %.loopexit47.i ], [ %.01833.ph.i.i, %.lr.ph.outer.i.i ] ; 2 uses
  %.1.i.i = phi i32 [ 1, %.loopexit.i.i.loopexit ], [ %.01734.ph.i.i.ph, %.loopexit47.i ], [ %.01734.ph.i.i.ph, %.lr.ph.outer.i.i ] ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.01635.i43.i, i64 24
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !46 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ap, null
  br i1 %.not.i.i, label %.critedge.i.i, label %.lr.ph.outer.i.i.outer.backedge

.lr.ph.outer.i.i.outer.backedge:                  ; preds = %.loopexit.i.i, %.loopexit.i.thread.i
  %.01635.ph.i.i.ph.be = phi ptr [ %i.au, %.loopexit.i.thread.i ], [ %i.ap, %.loopexit.i.i ]
  %.01734.ph.i.i.ph.be = phi i32 [ 1, %.loopexit.i.thread.i ], [ %.1.i.i, %.loopexit.i.i ]
  %.01833.ph.i.i.ph.be = phi i32 [ 1, %.loopexit.i.thread.i ], [ %.01833.i39.i, %.loopexit.i.i ]
  br label %.lr.ph.outer.i.i.outer, !llvm.loop !99

.loopexit.i.i.thread:                             ; preds = %.lr.ph.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %.01635.i.i, i64 24
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !46 ; 2 uses
  %.not.i.i8 = icmp eq ptr %i.ar, null
  br i1 %.not.i.i8, label %.critedge.i.i.thread, label %.lr.ph.outer.i.i, !llvm.loop !99

.critedge.i.i.thread:                             ; preds = %.loopexit.i.i.thread
  %i.as = icmp eq i32 %.01734.ph.i.i.ph, 0
  br label %.critedge.i.thread.i

.loopexit.i.thread.i:                             ; preds = %.lr.ph.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %.01635.i.i, i64 24
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !46 ; 2 uses
  %.not.i60.i = icmp eq ptr %i.au, null
  br i1 %.not.i60.i, label %.critedge.i.thread.i, label %.lr.ph.outer.i.i.outer.backedge

.thread.i.i:                                      ; preds = %.lr.ph.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %.01635.i.i, i64 24
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !46 ; 2 uses
  %.not49.i.i = icmp eq ptr %i.aw, null
  br i1 %.not49.i.i, label %.critedge.thread52.i.i, label %.lr.ph.i.i, !llvm.loop !100

.critedge.thread52.i.i:                           ; preds = %.thread.i.peel.i, %.thread.i.i
  %i.ax = icmp eq i32 %.01734.ph.i.i.ph, 0
  br label %.critedge.i.thread.i

.critedge.i.i:                                    ; preds = %.loopexit.i.i
  %i.ay = icmp eq i32 %.01833.i39.i, 0
  %i.az = icmp eq i32 %.1.i.i, 0                  ; 2 uses
  br i1 %i.ay, label %bb.g, label %.critedge.i.thread.i

.critedge.i.thread.i:                             ; preds = %.loopexit.i.thread.i, %.critedge.i.i.thread, %.critedge.i.i, %.critedge.thread52.i.i
  %i.ba = phi i1 [ %i.ax, %.critedge.thread52.i.i ], [ %i.az, %.critedge.i.i ], [ %i.as, %.critedge.i.i.thread ], [ false, %.loopexit.i.thread.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #18
  %i.bb = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %4, i32 noundef 58) #19
  %i.bc = icmp eq ptr %i.bb, null                 ; 2 uses
  %..i.i.i.i = select i1 %i.bc, i32 2, i32 10
  %.8.i.i.i.i = select i1 %i.bc, i64 4, i64 16
  %i.bd = call i32 @inet_pton(i32 noundef %..i.i.i.i, ptr noundef nonnull %4, ptr noundef nonnull %i.f) #18
  %.not.i.not.i.not.i.i = icmp eq i32 %i.bd, 1    ; 2 uses
  %i.be = select i1 %.not.i.not.i.not.i.i, i64 %.8.i.i.i.i, i64 0 ; 2 uses
  br i1 %.not.i.not.i.not.i.i, label %.lr.ph.i.i.i, label %x509_crt_check_san_ip.exit.thread.i.i

.lr.ph.i.i.i:                                     ; preds = %.critedge.i.thread.i, %.critedge.i.i.i
  %.019.i.i.i = phi ptr [ %i.bp, %.critedge.i.i.i ], [ %i.af, %.critedge.i.thread.i ] ; 4 uses
  %i.bf = load i32, ptr %.019.i.i.i, align 8, !tbaa !113
  %i.bg = and i32 %i.bf, 31
  %i.bh = icmp eq i32 %i.bg, 7
  br i1 %i.bh, label %bb.e, label %.critedge.i.i.i

bb.e:                                             ; preds = %.lr.ph.i.i.i
  %i.bi = getelementptr inbounds nuw i8, ptr %.019.i.i.i, i64 8
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !114
  %i.bk = icmp eq i64 %i.bj, %i.be
  br i1 %i.bk, label %bb.f, label %.critedge.i.i.i

bb.f:                                             ; preds = %bb.e
  %i.bl = getelementptr inbounds nuw i8, ptr %.019.i.i.i, i64 16
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !55
  %bcmp.i.i.i = call i32 @bcmp(ptr %i.bm, ptr nonnull %i.f, i64 %i.be)
  %i.bn = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.bn, label %x509_crt_check_san_ip.exit.i.i, label %.critedge.i.i.i

.critedge.i.i.i:                                  ; preds = %bb.f, %bb.e, %.lr.ph.i.i.i
  %i.bo = getelementptr inbounds nuw i8, ptr %.019.i.i.i, i64 24
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !46 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bp, null
  br i1 %.not.i.i.i, label %x509_crt_check_san_ip.exit.thread.i.i, label %.lr.ph.i.i.i, !llvm.loop !101

x509_crt_check_san_ip.exit.thread.i.i:            ; preds = %.critedge.i.i.i, %.critedge.i.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #18
  br i1 %i.ba, label %x509_crt_verify_name.exit, label %.lr.ph.i24.i.i.preheader

x509_crt_check_san_ip.exit.i.i:                   ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #18
  br label %x509_crt_verify_name.exit

bb.g:                                             ; preds = %.critedge.i.i
  br i1 %i.az, label %x509_crt_verify_name.exit, label %.lr.ph.i24.i.i.preheader

.lr.ph.i24.i.i.preheader:                         ; preds = %bb.g, %x509_crt_check_san_ip.exit.thread.i.i
  br label %.lr.ph.i24.i.i

.lr.ph.i24.i.i:                                   ; preds = %.lr.ph.i24.i.i.preheader, %.critedge.i25.i.i
  %.01218.i.i.i = phi ptr [ %i.ca, %.critedge.i25.i.i ], [ %i.af, %.lr.ph.i24.i.i.preheader ] ; 4 uses
  %i.bq = load i32, ptr %.01218.i.i.i, align 8, !tbaa !113
  %i.br = and i32 %i.bq, 31
  %i.bs = icmp eq i32 %i.br, 6
  br i1 %i.bs, label %bb.h, label %.critedge.i25.i.i

bb.h:                                             ; preds = %.lr.ph.i24.i.i
  %i.bt = getelementptr inbounds nuw i8, ptr %.01218.i.i.i, i64 8
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !114
  %i.bv = icmp eq i64 %i.bu, %i.ab
  br i1 %i.bv, label %bb.i, label %.critedge.i25.i.i

bb.i:                                             ; preds = %bb.h
  %i.bw = getelementptr inbounds nuw i8, ptr %.01218.i.i.i, i64 16
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !55
  %bcmp.i27.i.i = call i32 @bcmp(ptr %i.bx, ptr nonnull readonly %4, i64 %i.ab)
  %i.by = icmp eq i32 %bcmp.i27.i.i, 0
  br i1 %i.by, label %x509_crt_verify_name.exit, label %.critedge.i25.i.i

.critedge.i25.i.i:                                ; preds = %bb.i, %bb.h, %.lr.ph.i24.i.i
  %i.bz = getelementptr inbounds nuw i8, ptr %.01218.i.i.i, i64 24
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !46 ; 2 uses
  %.not.i26.i.i = icmp eq ptr %i.ca, null
  br i1 %.not.i26.i.i, label %x509_crt_verify_name.exit, label %.lr.ph.i24.i.i, !llvm.loop !102

bb.j:                                             ; preds = %bb.c
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 224
  br label %bb.k

bb.k:                                             ; preds = %.critedge.i, %bb.j
  %.032.i = phi ptr [ %i.cb, %bb.j ], [ %i.ct, %.critedge.i ] ; 4 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.032.i, i64 8
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !56
  %.not16.i = icmp eq i64 %i.cd, 3
  br i1 %.not16.i, label %bb.l, label %.critedge.i

bb.l:                                             ; preds = %bb.k
  %i.ce = getelementptr inbounds nuw i8, ptr %.032.i, i64 16
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !57 ; 2 uses
  %i.cg = load i16, ptr %i.cf, align 1
  %i.ch = xor i16 1109, %i.cg
  %i.ci = getelementptr i8, ptr %i.cf, i64 2
  %i.cj = load i8, ptr %i.ci, align 1
  %i.ck = zext i8 %i.cj to i16
  %i.cl = xor i16 3, %i.ck
  %i.cm = or i16 %i.ch, %i.cl
  %i.cn = icmp ne i16 %i.cm, 0
  %i.co = zext i1 %i.cn to i32
  %.not17.i = icmp eq i32 %i.co, 0
  br i1 %.not17.i, label %bb.m, label %.critedge.i

bb.m:                                             ; preds = %bb.l
  %i.cp = getelementptr inbounds nuw i8, ptr %.032.i, i64 24
  %i.cq = tail call fastcc i32 @x509_crt_check_cn(ptr noundef %i.cp, ptr noundef nonnull %4, i64 noundef %i.ab)
  %i.cr = icmp eq i32 %i.cq, 0
  br i1 %i.cr, label %x509_crt_verify_name.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.m, %bb.l, %bb.k
  %i.cs = getelementptr inbounds nuw i8, ptr %.032.i, i64 48
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !58 ; 2 uses
  %.not15.i = icmp eq ptr %i.ct, null
  br i1 %.not15.i, label %x509_crt_verify_name.exit, label %bb.k, !llvm.loop !103

x509_crt_verify_name.exit:                        ; preds = %.loopexit47.i, %bb.i, %.critedge.i25.i.i, %bb.m, %.critedge.i, %x509_crt_check_san_ip.exit.i.i, %bb.g, %x509_crt_check_san_ip.exit.thread.i.i, %bb.b
  %.1 = phi i32 [ 0, %bb.b ], [ 4, %bb.g ], [ 0, %bb.m ], [ 0, %bb.i ], [ 0, %x509_crt_check_san_ip.exit.i.i ], [ 4, %x509_crt_check_san_ip.exit.thread.i.i ], [ 4, %.critedge.i ], [ 4, %.critedge.i25.i.i ], [ 0, %.loopexit47.i ] ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 2 uses
  %i.cv = call i32 @mbedtls_pk_get_type(ptr noundef nonnull %i.cu) #18 ; 2 uses
  %i.cw = icmp eq i32 %i.cv, 0
  br i1 %i.cw, label %x509_profile_check_pk_alg.exit.thread, label %x509_profile_check_pk_alg.exit

x509_profile_check_pk_alg.exit:                   ; preds = %x509_crt_verify_name.exit
  %i.cx = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !115
  %i.cz = add i32 %i.cv, -1
  %i.da = shl nuw i32 1, %i.cz
  %i.db = and i32 %i.cy, %i.da
  %.not.i35.not = icmp eq i32 %i.db, 0
  br i1 %.not.i35.not, label %x509_profile_check_pk_alg.exit.thread, label %bb.n

x509_profile_check_pk_alg.exit.thread:            ; preds = %x509_crt_verify_name.exit, %x509_profile_check_pk_alg.exit
  %i.dc = or disjoint i32 %.1, 32768
  br label %bb.n

bb.n:                                             ; preds = %x509_profile_check_pk_alg.exit.thread, %x509_profile_check_pk_alg.exit
  %.2 = phi i32 [ %.1, %x509_profile_check_pk_alg.exit ], [ %i.dc, %x509_profile_check_pk_alg.exit.thread ] ; 2 uses
  %i.dd = call fastcc i32 @x509_profile_check_key(ptr noundef %3, ptr noundef nonnull %i.cu)
  %.not31 = icmp eq i32 %i.dd, 0
  %i.de = or i32 %.2, 65536
  %spec.select = select i1 %.not31, i32 %.2, i32 %i.de ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  %i.df = call i64 @time(ptr noundef null) #18
  %i.dg = call i32 @mbedtls_x509_time_gmtime(i64 noundef %i.df, ptr noundef nonnull %8) #18
  %.not.i36 = icmp eq i32 %i.dg, 0
  br i1 %.not.i36, label %.preheader.i, label %x509_crt_verify_chain.exit

.preheader.i:                                     ; preds = %bb.n
  %i.dh = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %.not1213.i.i = icmp eq ptr %1, null
  %.not8083.i.i = icmp eq ptr %2, null
  br label %bb.o

bb.o:                                             ; preds = %x509_crt_verifycrl.exit.i, %.preheader.i
  %i.di = phi i32 [ %.pre, %x509_crt_verifycrl.exit.i ], [ 0, %.preheader.i ] ; 2 uses
  %.042.i = phi ptr [ %.2.ph.i, %x509_crt_verifycrl.exit.i ], [ %0, %.preheader.i ] ; 18 uses
  %.041.i = phi i32 [ %storemerge.i.i, %x509_crt_verifycrl.exit.i ], [ 0, %.preheader.i ]
  %.0.i37 = phi i32 [ %.121.i, %x509_crt_verifycrl.exit.i ], [ 0, %.preheader.i ] ; 3 uses
  %i.dj = zext i32 %i.di to i64
  %i.dk = getelementptr inbounds nuw [16 x i8], ptr %9, i64 %i.dj ; 2 uses
  store ptr %.042.i, ptr %i.dk, align 8, !tbaa !111
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 8 ; 17 uses
  store i32 0, ptr %i.dl, align 8, !tbaa !112
  %i.dm = add nuw i32 %i.di, 1
  store i32 %i.dm, ptr %i.z, align 8, !tbaa !117
  %i.dn = getelementptr inbounds nuw i8, ptr %.042.i, i64 312
  %i.do = call i32 @mbedtls_x509_time_cmp(ptr noundef nonnull %i.dn, ptr noundef nonnull %8) #18
  %i.dp = icmp slt i32 %i.do, 0
  br i1 %i.dp, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.dq = load i32, ptr %i.dl, align 8, !tbaa !35
  %i.dr = or i32 %i.dq, 1
  store i32 %i.dr, ptr %i.dl, align 8, !tbaa !35
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.ds = getelementptr inbounds nuw i8, ptr %.042.i, i64 288
  %i.dt = call i32 @mbedtls_x509_time_cmp(ptr noundef nonnull %i.ds, ptr noundef nonnull %8) #18
  %i.du = icmp sgt i32 %i.dt, 0
  br i1 %i.du, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.dv = load i32, ptr %i.dl, align 8, !tbaa !35
  %i.dw = or i32 %i.dv, 512
  store i32 %i.dw, ptr %i.dl, align 8, !tbaa !35
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.not44.i = icmp eq i32 %.041.i, 0
  br i1 %.not44.i, label %bb.t, label %.loopexit31.loopexit75

bb.t:                                             ; preds = %bb.s
  %i.dx = getelementptr inbounds nuw i8, ptr %.042.i, i64 1288 ; 3 uses
  %i.dy = load i32, ptr %i.dx, align 8, !tbaa !41 ; 2 uses
  %i.dz = icmp eq i32 %i.dy, 0
  br i1 %i.dz, label %x509_profile_check_md_alg.exit.thread.i, label %x509_profile_check_md_alg.exit.i

x509_profile_check_md_alg.exit.i:                 ; preds = %bb.t
  %i.ea = load i32, ptr %3, align 4, !tbaa !118
  %i.eb = add i32 %i.dy, -1
  %i.ec = shl nuw i32 1, %i.eb
  %i.ed = and i32 %i.ea, %i.ec
  %.not.i.not.i = icmp eq i32 %i.ed, 0
  br i1 %.not.i.not.i, label %x509_profile_check_md_alg.exit.thread.i, label %bb.u

x509_profile_check_md_alg.exit.thread.i:          ; preds = %x509_profile_check_md_alg.exit.i, %bb.t
  %i.ee = load i32, ptr %i.dl, align 8, !tbaa !35
  %i.ef = or i32 %i.ee, 16384
  store i32 %i.ef, ptr %i.dl, align 8, !tbaa !35
  br label %bb.u

bb.u:                                             ; preds = %x509_profile_check_md_alg.exit.thread.i, %x509_profile_check_md_alg.exit.i
  %i.eg = getelementptr inbounds nuw i8, ptr %.042.i, i64 1292 ; 3 uses
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !40 ; 2 uses
  %i.ei = icmp eq i32 %i.eh, 0
  br i1 %i.ei, label %x509_profile_check_pk_alg.exit.thread.i, label %x509_profile_check_pk_alg.exit.i

x509_profile_check_pk_alg.exit.i:                 ; preds = %bb.u
  %i.ej = load i32, ptr %i.dh, align 4, !tbaa !115
  %i.ek = add i32 %i.eh, -1
  %i.el = shl nuw i32 1, %i.ek
  %i.em = and i32 %i.ej, %i.el
  %.not.i51.not.i = icmp eq i32 %i.em, 0
  br i1 %.not.i51.not.i, label %x509_profile_check_pk_alg.exit.thread.i, label %bb.v

x509_profile_check_pk_alg.exit.thread.i:          ; preds = %x509_profile_check_pk_alg.exit.i, %bb.u
  %i.en = load i32, ptr %i.dl, align 8, !tbaa !35
  %i.eo = or i32 %i.en, 32768
  store i32 %i.eo, ptr %i.dl, align 8, !tbaa !35
  br label %bb.v

bb.v:                                             ; preds = %x509_profile_check_pk_alg.exit.thread.i, %x509_profile_check_pk_alg.exit.i
  %i.ep = load i32, ptr %i.z, align 8, !tbaa !117 ; 4 uses
  %i.eq = icmp eq i32 %i.ep, 1                    ; 2 uses
  br i1 %i.eq, label %bb.w, label %x509_crt_check_ee_locally_trusted.exit.thread.i

bb.w:                                             ; preds = %bb.v
  %i.er = getelementptr inbounds nuw i8, ptr %.042.i, i64 160
  %i.es = getelementptr inbounds nuw i8, ptr %.042.i, i64 224
  %i.et = call fastcc i32 @x509_name_cmp(ptr noundef nonnull readonly %i.er, ptr noundef nonnull readonly %i.es)
  %.not.i54.i = icmp eq i32 %i.et, 0
  br i1 %.not.i54.i, label %.preheader.i.i, label %x509_crt_check_ee_locally_trusted.exit.thread.i

.preheader.i.i:                                   ; preds = %bb.w
  %i.eu = getelementptr inbounds nuw i8, ptr %.042.i, i64 24
  br i1 %.not1213.i.i, label %x509_crt_check_ee_locally_trusted.exit.thread.i, label %.lr.ph.i.i41

.lr.ph.i.i41:                                     ; preds = %.preheader.i.i
  %i.ev = getelementptr inbounds nuw i8, ptr %.042.i, i64 16
  %i.ew = load i64, ptr %i.ev, align 8, !tbaa !30 ; 2 uses
  br label %bb.x

bb.x:                                             ; preds = %bb.z, %.lr.ph.i.i41
  %.014.i.i = phi ptr [ %1, %.lr.ph.i.i41 ], [ %i.ff, %bb.z ] ; 3 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %.014.i.i, i64 16
  %i.ey = load i64, ptr %i.ex, align 8, !tbaa !30
  %i.ez = icmp eq i64 %i.ew, %i.ey
  br i1 %i.ez, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.fa = load ptr, ptr %i.eu, align 8, !tbaa !31
  %i.fb = getelementptr inbounds nuw i8, ptr %.014.i.i, i64 24
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !31
  %bcmp.i.i = call i32 @bcmp(ptr %i.fa, ptr %i.fc, i64 %i.ew)
  %i.fd = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.fd, label %.loopexit31.thread, label %bb.z

.loopexit31.thread:                               ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  %10 = load i32, ptr %i.g, align 8, !tbaa !112
  %11 = or i32 %10, %spec.select
  store i32 %11, ptr %i.g, align 8, !tbaa !112
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  br label %.lr.ph.i

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.fe = getelementptr inbounds nuw i8, ptr %.014.i.i, i64 1296
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !27 ; 2 uses
  %.not12.i.i = icmp eq ptr %i.ff, null
  br i1 %.not12.i.i, label %x509_crt_check_ee_locally_trusted.exit.thread.i, label %bb.x, !llvm.loop !104

x509_crt_check_ee_locally_trusted.exit.thread.i:  ; preds = %bb.z, %.preheader.i.i, %bb.w, %bb.v
  %i.fg = getelementptr inbounds nuw i8, ptr %.042.i, i64 1296
  %i.fh = getelementptr inbounds nuw i8, ptr %.042.i, i64 160 ; 2 uses
  %i.fi = sub i32 %i.ep, %.0.i37
  %i.fj = getelementptr inbounds nuw i8, ptr %.042.i, i64 48
  %i.fk = getelementptr inbounds nuw i8, ptr %.042.i, i64 40
  %i.fl = getelementptr inbounds nuw i8, ptr %.042.i, i64 1280
  %i.fm = getelementptr inbounds nuw i8, ptr %.042.i, i64 1272
  br label %bb.aa

bb.aa:                                            ; preds = %x509_crt_find_parent_in.exit.thread.i.i, %x509_crt_check_ee_locally_trusted.exit.thread.i
  %.not.i55.i = phi i1 [ false, %x509_crt_check_ee_locally_trusted.exit.thread.i ], [ true, %x509_crt_find_parent_in.exit.thread.i.i ] ; 5 uses
  %storemerge.i.i = phi i32 [ 1, %x509_crt_check_ee_locally_trusted.exit.thread.i ], [ 0, %x509_crt_find_parent_in.exit.thread.i.i ]
  br i1 %.not.i55.i, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.fn = load ptr, ptr %i.fg, align 8, !tbaa !27
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.fo = phi ptr [ %i.fn, %bb.ab ], [ %1, %bb.aa ] ; 2 uses
  %cond4.i.i.i = icmp eq ptr %i.fo, null
  br i1 %cond4.i.i.i, label %x509_crt_find_parent_in.exit.thread.i.i, label %.lr.ph.i.i.i38

.lr.ph.i.i.i38:                                   ; preds = %bb.ac, %x509_crt_check_parent.exit.thread.i.i.i
  %.07.i.i.i = phi i32 [ %.1.i.i.i, %x509_crt_check_parent.exit.thread.i.i.i ], [ 0, %bb.ac ] ; 15 uses
  %.0326.i.i.i = phi ptr [ %.133.i.i.i, %x509_crt_check_parent.exit.thread.i.i.i ], [ null, %bb.ac ] ; 16 uses
  %.0345.i.i.i = phi ptr [ %i.jj, %x509_crt_check_parent.exit.thread.i.i.i ], [ %i.fo, %bb.ac ] ; 12 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %.0345.i.i.i, i64 224
  br label %.lr.ph.i19.i.i

.lr.ph.i19.i.i:                                   ; preds = %bb.aq, %.lr.ph.i.i.i38
  %.029.i.i.i = phi ptr [ %i.hr, %bb.aq ], [ %i.fp, %.lr.ph.i.i.i38 ] ; 11 uses
  %.01828.i.i.i = phi ptr [ %i.hp, %bb.aq ], [ %i.fh, %.lr.ph.i.i.i38 ] ; 11 uses
  %i.fq = icmp eq ptr %.01828.i.i.i, null
  %i.fr = icmp eq ptr %.029.i.i.i, null
  %or.cond.i20.i.i = select i1 %i.fq, i1 true, i1 %i.fr
  br i1 %or.cond.i20.i.i, label %x509_crt_check_parent.exit.thread.i.i.i, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph.i19.i.i
  %i.fs = load i32, ptr %.01828.i.i.i, align 8, !tbaa !60
  %i.ft = load i32, ptr %.029.i.i.i, align 8, !tbaa !60
  %.not.i.i.i39 = icmp eq i32 %i.fs, %i.ft
  br i1 %.not.i.i.i39, label %bb.ae, label %x509_crt_check_parent.exit.thread.i.i.i

bb.ae:                                            ; preds = %bb.ad
  %i.fu = getelementptr inbounds nuw i8, ptr %.01828.i.i.i, i64 8
  %i.fv = load i64, ptr %i.fu, align 8, !tbaa !56 ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %.029.i.i.i, i64 8
  %i.fx = load i64, ptr %i.fw, align 8, !tbaa !56
  %.not21.i.i.i = icmp eq i64 %i.fv, %i.fx
  br i1 %.not21.i.i.i, label %bb.af, label %x509_crt_check_parent.exit.thread.i.i.i

bb.af:                                            ; preds = %bb.ae
  %i.fy = getelementptr inbounds nuw i8, ptr %.01828.i.i.i, i64 16
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !57
  %i.ga = getelementptr inbounds nuw i8, ptr %.029.i.i.i, i64 16
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !57
  %bcmp.i.i.i40 = call i32 @bcmp(ptr %i.fz, ptr %i.gb, i64 %i.fv)
  %.not22.i.i.i = icmp eq i32 %bcmp.i.i.i40, 0
  br i1 %.not22.i.i.i, label %bb.ag, label %x509_crt_check_parent.exit.thread.i.i.i

bb.ag:                                            ; preds = %bb.af
  %i.gc = getelementptr inbounds nuw i8, ptr %.01828.i.i.i, i64 24
  %i.gd = getelementptr inbounds nuw i8, ptr %.029.i.i.i, i64 24
  %i.ge = load i32, ptr %i.gc, align 8, !tbaa !38 ; 2 uses
  %i.gf = load i32, ptr %i.gd, align 8, !tbaa !38 ; 2 uses
  %i.gg = icmp eq i32 %i.ge, %i.gf
  br i1 %i.gg, label %bb.ah, label %bb.aj

bb.ah:                                            ; preds = %bb.ag
  %i.gh = getelementptr inbounds nuw i8, ptr %.01828.i.i.i, i64 32
  %i.gi = load i64, ptr %i.gh, align 8, !tbaa !36 ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %.029.i.i.i, i64 32
  %i.gk = load i64, ptr %i.gj, align 8, !tbaa !36
  %i.gl = icmp eq i64 %i.gi, %i.gk
  br i1 %i.gl, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.gm = getelementptr inbounds nuw i8, ptr %.01828.i.i.i, i64 40
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !37
  %i.go = getelementptr inbounds nuw i8, ptr %.029.i.i.i, i64 40
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !37
  %bcmp.i.i.i.i = call i32 @bcmp(ptr %i.gn, ptr %i.gp, i64 %i.gi)
  %i.gq = icmp eq i32 %bcmp.i.i.i.i, 0
  br i1 %i.gq, label %x509_string_cmp.exit.i.i.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah, %bb.ag
  switch i32 %i.ge, label %x509_crt_check_parent.exit.thread.i.i.i [
    i32 12, label %bb.ak
    i32 19, label %bb.ak
  ]

bb.ak:                                            ; preds = %bb.aj, %bb.aj
  switch i32 %i.gf, label %x509_crt_check_parent.exit.thread.i.i.i [
    i32 12, label %bb.al
    i32 19, label %bb.al
  ]

bb.al:                                            ; preds = %bb.ak, %bb.ak
  %i.gr = getelementptr inbounds nuw i8, ptr %.01828.i.i.i, i64 32
  %i.gs = load i64, ptr %i.gr, align 8, !tbaa !36 ; 3 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %.029.i.i.i, i64 32
  %i.gu = load i64, ptr %i.gt, align 8, !tbaa !36
  %i.gv = icmp eq i64 %i.gs, %i.gu
  br i1 %i.gv, label %bb.am, label %x509_crt_check_parent.exit.thread.i.i.i

bb.am:                                            ; preds = %bb.al
  %i.gw = getelementptr inbounds nuw i8, ptr %.01828.i.i.i, i64 40
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !37
  %i.gy = getelementptr inbounds nuw i8, ptr %.029.i.i.i, i64 40
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !37
  %.not.i.i.i.i.i = icmp eq i64 %i.gs, 0
  br i1 %.not.i.i.i.i.i, label %x509_string_cmp.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.am, %bb.ap
  %.025.i.i.i.i.i = phi i64 [ %i.hj, %bb.ap ], [ 0, %bb.am ] ; 3 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gx, i64 %.025.i.i.i.i.i
  %i.hb = load i8, ptr %i.ha, align 1, !tbaa !39  ; 3 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gz, i64 %.025.i.i.i.i.i
  %i.hd = load i8, ptr %i.hc, align 1, !tbaa !39  ; 2 uses
  %i.he = icmp eq i8 %i.hb, %i.hd
  br i1 %i.he, label %bb.ap, label %bb.an

bb.an:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.hf = xor i8 %i.hd, %i.hb
  %i.hg = icmp eq i8 %i.hf, 32
  br i1 %i.hg, label %bb.ao, label %x509_crt_check_parent.exit.thread.i.i.i

bb.ao:                                            ; preds = %bb.an
  %i.hh = and i8 %i.hb, -33
  %i.hi = add i8 %i.hh, -65
  %or.cond24.i.i.i.i.i = icmp ult i8 %i.hi, 26
  br i1 %or.cond24.i.i.i.i.i, label %bb.ap, label %x509_crt_check_parent.exit.thread.i.i.i

bb.ap:                                            ; preds = %bb.ao, %.lr.ph.i.i.i.i.i
  %i.hj = add nuw i64 %.025.i.i.i.i.i, 1          ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i64 %i.hj, %i.gs
  br i1 %exitcond.not.i.i.i.i.i, label %x509_string_cmp.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !1

x509_string_cmp.exit.i.i.i:                       ; preds = %bb.ap, %bb.am, %bb.ai
  %i.hk = getelementptr inbounds nuw i8, ptr %.01828.i.i.i, i64 56
  %i.hl = load i8, ptr %i.hk, align 8, !tbaa !61
  %i.hm = getelementptr inbounds nuw i8, ptr %.029.i.i.i, i64 56
  %i.hn = load i8, ptr %i.hm, align 8, !tbaa !61
  %.not24.i.i.i = icmp eq i8 %i.hl, %i.hn
  br i1 %.not24.i.i.i, label %bb.aq, label %x509_crt_check_parent.exit.thread.i.i.i

bb.aq:                                            ; preds = %x509_string_cmp.exit.i.i.i
  %i.ho = getelementptr inbounds nuw i8, ptr %.01828.i.i.i, i64 48
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !58 ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %.029.i.i.i, i64 48
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !58 ; 2 uses
  %i.hs = icmp ne ptr %i.hp, null
  %i.ht = icmp ne ptr %i.hr, null
  %i.hu = select i1 %i.hs, i1 true, i1 %i.ht
  br i1 %i.hu, label %.lr.ph.i19.i.i, label %x509_name_cmp.exit.i.i, !llvm.loop !2

x509_name_cmp.exit.i.i:                           ; preds = %bb.aq
  br i1 %.not.i55.i, label %.thread.i.i.i.i, label %bb.ar

bb.ar:                                            ; preds = %x509_name_cmp.exit.i.i
  %i.hv = getelementptr inbounds nuw i8, ptr %.0345.i.i.i, i64 56
  %i.hw = load i32, ptr %i.hv, align 8, !tbaa !25
  %i.hx = icmp slt i32 %i.hw, 3
  br i1 %i.hx, label %x509_crt_check_parent.exit.i.i.i, label %.thread.i.i.i.i

.thread.i.i.i.i:                                  ; preds = %bb.ar, %x509_name_cmp.exit.i.i
  %i.hy = getelementptr inbounds nuw i8, ptr %.0345.i.i.i, i64 1212
  %i.hz = load i32, ptr %i.hy, align 4, !tbaa !43
  %.not11.i.i.i.i = icmp eq i32 %i.hz, 0
  br i1 %.not11.i.i.i.i, label %x509_crt_check_parent.exit.thread.i.i.i, label %bb.as

bb.as:                                            ; preds = %.thread.i.i.i.i
  %i.ia = getelementptr inbounds nuw i8, ptr %.0345.i.i.i, i64 1208
  %i.ib = load i32, ptr %i.ia, align 8, !tbaa !42
  %i.ic = and i32 %i.ib, 4
  %i.id = icmp eq i32 %i.ic, 0
  br i1 %i.id, label %x509_crt_check_parent.exit.i.i.i, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ie = getelementptr inbounds nuw i8, ptr %.0345.i.i.i, i64 1220
  %i.if = load i32, ptr %i.ie, align 4, !tbaa !45
  %i.ig = and i32 %i.if, 32773
  %or.cond.i.i.i.i = icmp eq i32 %i.ig, 4
  br i1 %or.cond.i.i.i.i, label %x509_crt_check_parent.exit.i.i.i, label %x509_crt_check_parent.exit.thread.i.i.i

x509_crt_check_parent.exit.i.i.i:                 ; preds = %bb.at, %bb.as, %bb.ar
  %i.ih = getelementptr inbounds nuw i8, ptr %.0345.i.i.i, i64 1216
  %i.ii = load i32, ptr %i.ih, align 8, !tbaa !44 ; 2 uses
  %i.ij = icmp sgt i32 %i.ii, 0
  %i.ik = icmp ult i32 %i.ii, %i.fi
  %or.cond12.i.i.i = and i1 %i.ij, %i.ik
  br i1 %or.cond12.i.i.i, label %x509_crt_check_parent.exit.thread.i.i.i, label %bb.au

bb.au:                                            ; preds = %x509_crt_check_parent.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #18
  %i.il = load i32, ptr %i.dx, align 8, !tbaa !41
  %i.im = or i32 %i.il, 33554432
  %i.in = load ptr, ptr %i.fj, align 8, !tbaa !33
  %i.io = load i64, ptr %i.fk, align 8, !tbaa !34
  %i.ip = call i32 @psa_hash_compute(i32 noundef %i.im, ptr noundef %i.in, i64 noundef %i.io, ptr noundef nonnull %i.e, i64 noundef 64, ptr noundef nonnull %i.d) #18
  %.not.i38.i.i.i = icmp eq i32 %i.ip, 0
  br i1 %.not.i38.i.i.i, label %bb.av, label %x509_crt_check_signature.exit.i.i.i

bb.av:                                            ; preds = %bb.au
  %i.iq = getelementptr inbounds nuw i8, ptr %.0345.i.i.i, i64 360 ; 2 uses
  %i.ir = load i32, ptr %i.eg, align 4, !tbaa !40
  %i.is = call i32 @mbedtls_pk_can_do(ptr noundef nonnull %i.iq, i32 noundef %i.ir) #18
  %.not12.i.i.i.i = icmp eq i32 %i.is, 0
  br i1 %.not12.i.i.i.i, label %x509_crt_check_signature.exit.i.i.i, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.it = load i32, ptr %i.eg, align 4, !tbaa !40
  %i.iu = load i32, ptr %i.dx, align 8, !tbaa !41
  %i.iv = load i64, ptr %i.d, align 8, !tbaa !29
  %i.iw = load ptr, ptr %i.fl, align 8, !tbaa !119
  %i.ix = load i64, ptr %i.fm, align 8, !tbaa !120
  %i.iy = call i32 @mbedtls_pk_verify_ext(i32 noundef %i.it, ptr noundef nonnull %i.iq, i32 noundef %i.iu, ptr noundef nonnull %i.e, i64 noundef %i.iv, ptr noundef %i.iw, i64 noundef %i.ix) #18
  %i.iz = icmp eq i32 %i.iy, 0
  br label %x509_crt_check_signature.exit.i.i.i

x509_crt_check_signature.exit.i.i.i:              ; preds = %bb.aw, %bb.av, %bb.au
  %.0.i.i.i.i = phi i1 [ false, %bb.au ], [ %i.iz, %bb.aw ], [ false, %bb.av ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18
  %i.ja = zext i1 %.0.i.i.i.i to i32              ; 2 uses
  %or.cond.i.i.i = select i1 %.not.i55.i, i1 true, i1 %.0.i.i.i.i
  br i1 %or.cond.i.i.i, label %bb.ax, label %x509_crt_check_parent.exit.thread.i.i.i

bb.ax:                                            ; preds = %x509_crt_check_signature.exit.i.i.i
  %i.jb = getelementptr inbounds nuw i8, ptr %.0345.i.i.i, i64 312
  %i.jc = call i32 @mbedtls_x509_time_cmp(ptr noundef nonnull %i.jb, ptr noundef nonnull %8) #18
  %i.jd = icmp slt i32 %i.jc, 0
  br i1 %i.jd, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.je = getelementptr inbounds nuw i8, ptr %.0345.i.i.i, i64 288
  %i.jf = call i32 @mbedtls_x509_time_cmp(ptr noundef nonnull %i.je, ptr noundef nonnull %8) #18
  %i.jg = icmp sgt i32 %i.jf, 0
  br i1 %i.jg, label %bb.az, label %.loopexit.i

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %i.jh = icmp eq ptr %.0326.i.i.i, null          ; 2 uses
  %spec.select.i.i.i = select i1 %i.jh, ptr %.0345.i.i.i, ptr %.0326.i.i.i
  %spec.select37.i.i.i = select i1 %i.jh, i32 %i.ja, i32 %.07.i.i.i
  br label %x509_crt_check_parent.exit.thread.i.i.i

x509_crt_check_parent.exit.thread.i.i.i:          ; preds = %x509_string_cmp.exit.i.i.i, %bb.al, %bb.ak, %bb.aj, %bb.af, %bb.ae, %bb.ad, %.lr.ph.i19.i.i, %bb.ao, %bb.an, %bb.az, %x509_crt_check_signature.exit.i.i.i, %x509_crt_check_parent.exit.i.i.i, %bb.at, %.thread.i.i.i.i
  %.133.i.i.i = phi ptr [ %spec.select.i.i.i, %bb.az ], [ %.0326.i.i.i, %x509_crt_check_parent.exit.i.i.i ], [ %.0326.i.i.i, %x509_crt_check_signature.exit.i.i.i ], [ %.0326.i.i.i, %bb.at ], [ %.0326.i.i.i, %.thread.i.i.i.i ], [ %.0326.i.i.i, %bb.ao ], [ %.0326.i.i.i, %bb.an ], [ %.0326.i.i.i, %.lr.ph.i19.i.i ], [ %.0326.i.i.i, %bb.ad ], [ %.0326.i.i.i, %bb.ae ], [ %.0326.i.i.i, %bb.af ], [ %.0326.i.i.i, %bb.aj ], [ %.0326.i.i.i, %bb.ak ], [ %.0326.i.i.i, %bb.al ], [ %.0326.i.i.i, %x509_string_cmp.exit.i.i.i ] ; 3 uses
  %.1.i.i.i = phi i32 [ %spec.select37.i.i.i, %bb.az ], [ %.07.i.i.i, %x509_crt_check_parent.exit.i.i.i ], [ %.07.i.i.i, %x509_crt_check_signature.exit.i.i.i ], [ %.07.i.i.i, %bb.at ], [ %.07.i.i.i, %.thread.i.i.i.i ], [ %.07.i.i.i, %bb.ao ], [ %.07.i.i.i, %bb.an ], [ %.07.i.i.i, %.lr.ph.i19.i.i ], [ %.07.i.i.i, %bb.ad ], [ %.07.i.i.i, %bb.ae ], [ %.07.i.i.i, %bb.af ], [ %.07.i.i.i, %bb.aj ], [ %.07.i.i.i, %bb.ak ], [ %.07.i.i.i, %bb.al ], [ %.07.i.i.i, %x509_string_cmp.exit.i.i.i ] ; 2 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %.0345.i.i.i, i64 1296
  %i.jj = load ptr, ptr %i.ji, align 8, !tbaa !27 ; 2 uses
  %cond.i.i.i = icmp eq ptr %i.jj, null
  br i1 %cond.i.i.i, label %x509_crt_find_parent_in.exit.i.i, label %.lr.ph.i.i.i38, !llvm.loop !105

x509_crt_find_parent_in.exit.i.i:                 ; preds = %x509_crt_check_parent.exit.thread.i.i.i
  %.not18.i.i = icmp eq ptr %.133.i.i.i, null
  br i1 %.not18.i.i, label %x509_crt_find_parent_in.exit.thread.i.i, label %.loopexit.i

x509_crt_find_parent_in.exit.thread.i.i:          ; preds = %x509_crt_find_parent_in.exit.i.i, %bb.ac
  br i1 %.not.i55.i, label %x509_crt_find_parent.exit.i, label %bb.aa

x509_crt_find_parent.exit.i:                      ; preds = %x509_crt_find_parent_in.exit.thread.i.i
  %i.jk = load i32, ptr %i.dl, align 4, !tbaa !35
  %i.jl = or i32 %i.jk, 8
  store i32 %i.jl, ptr %i.dl, align 4, !tbaa !35
  br label %.loopexit31

.loopexit.i:                                      ; preds = %x509_crt_find_parent_in.exit.i.i, %bb.ay
  %.2.ph.i = phi ptr [ %.0345.i.i.i, %bb.ay ], [ %.133.i.i.i, %x509_crt_find_parent_in.exit.i.i ] ; 5 uses
  %.07.ph.i = phi i32 [ %i.ja, %bb.ay ], [ %.1.i.i.i, %x509_crt_find_parent_in.exit.i.i ]
  br i1 %i.eq, label %.thread23.i, label %bb.ba

bb.ba:                                            ; preds = %.loopexit.i
  %i.jm = getelementptr inbounds nuw i8, ptr %.042.i, i64 224
  %i.jn = call fastcc i32 @x509_name_cmp(ptr noundef nonnull %i.fh, ptr noundef nonnull %i.jm)
  %i.jo = icmp eq i32 %i.jn, 0
  %i.jp = zext i1 %i.jo to i32
  %spec.select.i = add i32 %.0.i37, %i.jp
  %i.jq = icmp ugt i32 %i.ep, 8
  %or.cond.i = and i1 %i.jq, %.not.i55.i
  br i1 %or.cond.i, label %x509_crt_verify_chain.exit, label %.thread23.i

.thread23.i:                                      ; preds = %bb.ba, %.loopexit.i
  %.121.i = phi i32 [ %spec.select.i, %bb.ba ], [ %.0.i37, %.loopexit.i ]
  %.not49.i = icmp eq i32 %.07.ph.i, 0
  br i1 %.not49.i, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %.thread23.i
  %i.jr = load i32, ptr %i.dl, align 8, !tbaa !35
  %i.js = or i32 %i.jr, 8
  store i32 %i.js, ptr %i.dl, align 8, !tbaa !35
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %.thread23.i
  %i.jt = getelementptr inbounds nuw i8, ptr %.2.ph.i, i64 360 ; 3 uses
  %i.ju = call fastcc i32 @x509_profile_check_key(ptr noundef nonnull readonly %3, ptr noundef nonnull %i.jt)
  %.not50.i = icmp eq i32 %i.ju, 0
  br i1 %.not50.i, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.jv = load i32, ptr %i.dl, align 8, !tbaa !35
  %i.jw = or i32 %i.jv, 65536
  store i32 %i.jw, ptr %i.dl, align 8, !tbaa !35
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  br i1 %.not8083.i.i, label %x509_crt_verifycrl.exit.i, label %.lr.ph.lr.ph.i.i

.lr.ph.lr.ph.i.i:                                 ; preds = %bb.be
  %i.jx = getelementptr inbounds nuw i8, ptr %.2.ph.i, i64 224
  %i.jy = getelementptr inbounds nuw i8, ptr %.2.ph.i, i64 1208
  %i.jz = getelementptr inbounds nuw i8, ptr %.2.ph.i, i64 1220
  %i.ka = getelementptr inbounds nuw i8, ptr %.042.i, i64 80
  %i.kb = getelementptr inbounds nuw i8, ptr %.042.i, i64 72
  br label %.lr.ph.i56.i

.lr.ph.i56.i:                                     ; preds = %.outer.i.i, %.lr.ph.lr.ph.i.i
  %.0.ph85.i.i = phi i32 [ 0, %.lr.ph.lr.ph.i.i ], [ %.5.i.i, %.outer.i.i ] ; 5 uses
  %.041.ph84.i.i = phi ptr [ %2, %.lr.ph.lr.ph.i.i ], [ %i.mw, %.outer.i.i ]
  br label %bb.bf

bb.bf:                                            ; preds = %bb.bh, %.lr.ph.i56.i
  %.04181.i.i = phi ptr [ %.041.ph84.i.i, %.lr.ph.i56.i ], [ %i.ki, %bb.bh ] ; 13 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %.04181.i.i, i64 48
  %i.kd = load i32, ptr %i.kc, align 8, !tbaa !123
  %i.ke = icmp eq i32 %i.kd, 0
  br i1 %i.ke, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.kf = getelementptr inbounds nuw i8, ptr %.04181.i.i, i64 104
  %i.kg = call fastcc i32 @x509_name_cmp(ptr noundef nonnull %i.kf, ptr noundef nonnull %i.jx)
  %.not42.i.i = icmp eq i32 %i.kg, 0
  br i1 %.not42.i.i, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  %i.kh = getelementptr inbounds nuw i8, ptr %.04181.i.i, i64 400
  %i.ki = load ptr, ptr %i.kh, align 8, !tbaa !124 ; 2 uses
  %.not.i57.i = icmp eq ptr %i.ki, null
  br i1 %.not.i57.i, label %x509_crt_verifycrl.exit.i, label %bb.bf, !llvm.loop !106

bb.bi:                                            ; preds = %bb.bg
  %i.kj = load i32, ptr %i.jy, align 8, !tbaa !42
  %i.kk = and i32 %i.kj, 4
  %i.kl = icmp eq i32 %i.kk, 0
  br i1 %i.kl, label %select.unfold.i.i, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.km = load i32, ptr %i.jz, align 4, !tbaa !45
  %i.kn = and i32 %i.km, 32771
  %or.cond.i.i = icmp eq i32 %i.kn, 2
  br i1 %or.cond.i.i, label %select.unfold.i.i, label %mbedtls_x509_crt_check_key_usage.exit.i.i

mbedtls_x509_crt_check_key_usage.exit.i.i:        ; preds = %bb.bj
  %i.ko = or i32 %.0.ph85.i.i, 16
  br label %x509_crt_verifycrl.exit.i

select.unfold.i.i:                                ; preds = %bb.bj, %bb.bi
  %i.kp = getelementptr inbounds nuw i8, ptr %.04181.i.i, i64 392 ; 2 uses
  %i.kq = load i32, ptr %i.kp, align 8, !tbaa !125 ; 3 uses
  %i.kr = icmp eq i32 %i.kq, 0
  br i1 %i.kr, label %x509_profile_check_md_alg.exit.thread.i.i, label %x509_profile_check_md_alg.exit.i.i

x509_profile_check_md_alg.exit.thread.i.i:        ; preds = %select.unfold.i.i
  %i.ks = or i32 %.0.ph85.i.i, 131072
  br label %bb.bk

x509_profile_check_md_alg.exit.i.i:               ; preds = %select.unfold.i.i
  %i.kt = load i32, ptr %3, align 4, !tbaa !118
  %i.ku = add i32 %i.kq, -1
  %i.kv = shl nuw i32 1, %i.ku
  %i.kw = and i32 %i.kt, %i.kv
  %.fr.i.i = freeze i32 %i.kw
  %.not.i52.not.i.i = icmp eq i32 %.fr.i.i, 0
  %i.kx = or i32 %.0.ph85.i.i, 131072
  %spec.select.i.i = select i1 %.not.i52.not.i.i, i32 %i.kx, i32 %.0.ph85.i.i
  br label %bb.bk

bb.bk:                                            ; preds = %x509_profile_check_md_alg.exit.i.i, %x509_profile_check_md_alg.exit.thread.i.i
  %i.ky = phi i32 [ %i.ks, %x509_profile_check_md_alg.exit.thread.i.i ], [ %spec.select.i.i, %x509_profile_check_md_alg.exit.i.i ] ; 3 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %.04181.i.i, i64 396 ; 2 uses
  %i.la = load i32, ptr %i.kz, align 4, !tbaa !126 ; 2 uses
  %i.lb = icmp eq i32 %i.la, 0
  br i1 %i.lb, label %x509_profile_check_pk_alg.exit.thread.i.i, label %x509_profile_check_pk_alg.exit.i.i

x509_profile_check_pk_alg.exit.thread.i.i:        ; preds = %bb.bk
  %i.lc = or i32 %i.ky, 262144
  br label %bb.bl

x509_profile_check_pk_alg.exit.i.i:               ; preds = %bb.bk
  %i.ld = load i32, ptr %i.dh, align 4, !tbaa !115
  %i.le = add i32 %i.la, -1
  %i.lf = shl nuw i32 1, %i.le
  %i.lg = and i32 %i.ld, %i.lf
  %.fr71.i.i = freeze i32 %i.lg
  %.not.i55.not.i.i = icmp eq i32 %.fr71.i.i, 0
  %i.lh = or i32 %i.ky, 262144
  %spec.select70.i.i = select i1 %.not.i55.not.i.i, i32 %i.lh, i32 %i.ky
  br label %bb.bl

bb.bl:                                            ; preds = %x509_profile_check_pk_alg.exit.i.i, %x509_profile_check_pk_alg.exit.thread.i.i
  %i.li = phi i32 [ %i.lc, %x509_profile_check_pk_alg.exit.thread.i.i ], [ %spec.select70.i.i, %x509_profile_check_pk_alg.exit.i.i ] ; 3 uses
  %i.lj = or i32 %i.kq, 33554432
  %i.lk = getelementptr inbounds nuw i8, ptr %.04181.i.i, i64 40
  %i.ll = load ptr, ptr %i.lk, align 8, !tbaa !127
  %i.lm = getelementptr inbounds nuw i8, ptr %.04181.i.i, i64 32
  %i.ln = load i64, ptr %i.lm, align 8, !tbaa !128
  %i.lo = call i32 @psa_hash_compute(i32 noundef %i.lj, ptr noundef %i.ll, i64 noundef %i.ln, ptr noundef nonnull %i.b, i64 noundef 64, ptr noundef nonnull %i.c) #18
  %.not46.i.i = icmp eq i32 %i.lo, 0
  br i1 %.not46.i.i, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.lp = or i32 %i.li, 16
  br label %x509_crt_verifycrl.exit.i

bb.bn:                                            ; preds = %bb.bl
  %i.lq = call fastcc i32 @x509_profile_check_key(ptr noundef nonnull readonly %3, ptr noundef nonnull %i.jt)
  %.not47.i.i = icmp eq i32 %i.lq, 0
  %i.lr = or i32 %i.li, 65536
  %spec.select50.i.i = select i1 %.not47.i.i, i32 %i.li, i32 %i.lr ; 2 uses
  %i.ls = load i32, ptr %i.kz, align 4, !tbaa !126
  %i.lt = load i32, ptr %i.kp, align 8, !tbaa !125
  %i.lu = load i64, ptr %i.c, align 8, !tbaa !29
  %i.lv = getelementptr inbounds nuw i8, ptr %.04181.i.i, i64 384
  %i.lw = load ptr, ptr %i.lv, align 8, !tbaa !129
  %i.lx = getelementptr inbounds nuw i8, ptr %.04181.i.i, i64 376
  %i.ly = load i64, ptr %i.lx, align 8, !tbaa !130
  %i.lz = call i32 @mbedtls_pk_verify_ext(i32 noundef %i.ls, ptr noundef nonnull %i.jt, i32 noundef %i.lt, ptr noundef nonnull %i.b, i64 noundef %i.lu, ptr noundef %i.lw, i64 noundef %i.ly) #18
  %.not48.i.i = icmp eq i32 %i.lz, 0
  br i1 %.not48.i.i, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.ma = or i32 %spec.select50.i.i, 16
  br label %x509_crt_verifycrl.exit.i

bb.bp:                                            ; preds = %bb.bn
  %i.mb = getelementptr inbounds nuw i8, ptr %.04181.i.i, i64 192
  %i.mc = call i32 @mbedtls_x509_time_cmp(ptr noundef nonnull %i.mb, ptr noundef nonnull %8) #18
  %i.md = lshr i32 %i.mc, 26
  %i.me = and i32 %i.md, 32
  %spec.select51.i.i = or i32 %i.me, %spec.select50.i.i ; 2 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %.04181.i.i, i64 168
  %i.mg = call i32 @mbedtls_x509_time_cmp(ptr noundef nonnull %i.mf, ptr noundef nonnull %8) #18
  %i.mh = icmp sgt i32 %i.mg, 0
  %i.mi = or i32 %spec.select51.i.i, 1024
  %.5.i.i = select i1 %i.mh, i32 %i.mi, i32 %spec.select51.i.i ; 3 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %.04181.i.i, i64 216
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bt, %bb.bp
  %.013.i.i.i = phi ptr [ %i.mj, %bb.bp ], [ %i.mt, %bb.bt ] ; 3 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 32
  %i.ml = load i64, ptr %i.mk, align 8, !tbaa !50 ; 3 uses
  %.not12.i.i.i = icmp eq i64 %i.ml, 0
  br i1 %.not12.i.i.i, label %.outer.i.i, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.mm = load i64, ptr %i.kb, align 8, !tbaa !51
  %i.mn = icmp eq i64 %i.mm, %i.ml
  br i1 %i.mn, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br
  %i.mo = load ptr, ptr %i.ka, align 8, !tbaa !52
  %i.mp = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 40
  %i.mq = load ptr, ptr %i.mp, align 8, !tbaa !53
  %bcmp.i.i58.i = call i32 @bcmp(ptr %i.mo, ptr %i.mq, i64 %i.ml)
  %i.mr = icmp eq i32 %bcmp.i.i58.i, 0
  br i1 %i.mr, label %mbedtls_x509_crt_is_revoked.exit.i.i, label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %bb.br
  %i.ms = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 96
  %i.mt = load ptr, ptr %i.ms, align 8, !tbaa !54 ; 2 uses
  %.not.i58.i.i = icmp eq ptr %i.mt, null
  br i1 %.not.i58.i.i, label %.outer.i.i, label %bb.bq, !llvm.loop !0

mbedtls_x509_crt_is_revoked.exit.i.i:             ; preds = %bb.bs
  %i.mu = or i32 %.5.i.i, 2
  br label %x509_crt_verifycrl.exit.i

.outer.i.i:                                       ; preds = %bb.bt, %bb.bq
  %i.mv = getelementptr inbounds nuw i8, ptr %.04181.i.i, i64 400
  %i.mw = load ptr, ptr %i.mv, align 8, !tbaa !124 ; 2 uses
  %.not80.i.i = icmp eq ptr %i.mw, null
  br i1 %.not80.i.i, label %x509_crt_verifycrl.exit.i, label %.lr.ph.i56.i, !llvm.loop !106

x509_crt_verifycrl.exit.i:                        ; preds = %.outer.i.i, %bb.bh, %mbedtls_x509_crt_is_revoked.exit.i.i, %bb.bo, %bb.bm, %mbedtls_x509_crt_check_key_usage.exit.i.i, %bb.be
  %.040.i.i = phi i32 [ 0, %bb.be ], [ %i.ko, %mbedtls_x509_crt_check_key_usage.exit.i.i ], [ %i.lp, %bb.bm ], [ %i.ma, %bb.bo ], [ %i.mu, %mbedtls_x509_crt_is_revoked.exit.i.i ], [ %.0.ph85.i.i, %bb.bh ], [ %.5.i.i, %.outer.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  %i.mx = load i32, ptr %i.dl, align 8, !tbaa !35
  %i.my = or i32 %i.mx, %.040.i.i
  store i32 %i.my, ptr %i.dl, align 8, !tbaa !35
  %.pre = load i32, ptr %i.z, align 8, !tbaa !117
  br label %bb.o

x509_crt_verify_chain.exit:                       ; preds = %bb.ba, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  br label %.thread

.loopexit31.loopexit75:                           ; preds = %bb.s
  %.pre115 = load i32, ptr %i.z, align 8, !tbaa !117
  br label %.loopexit31

.loopexit31:                                      ; preds = %.loopexit31.loopexit75, %x509_crt_find_parent.exit.i
  %12 = phi i32 [ %.pre115, %.loopexit31.loopexit75 ], [ %i.ep, %x509_crt_find_parent.exit.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  %i.mz = load i32, ptr %i.g, align 8, !tbaa !112
  %i.na = or i32 %i.mz, %spec.select
  store i32 %i.na, ptr %i.g, align 8, !tbaa !112
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %.not18.i = icmp eq i32 %12, 0
  br i1 %.not18.i, label %.loopexit31..loopexit27_crit_edge, label %.lr.ph.i

.loopexit31..loopexit27_crit_edge:                ; preds = %.loopexit31
  %.pre115.a = load i32, ptr %5, align 4, !tbaa !35
  br label %.loopexit27

.lr.ph.i:                                         ; preds = %.loopexit31.thread, %.loopexit31
  %13 = phi i32 [ 1, %.loopexit31.thread ], [ %12, %.loopexit31 ] ; 3 uses
  %.not16.i42 = icmp eq ptr %6, null
  br i1 %.not16.i42, label %.lr.ph.split.us.i, label %.lr.ph.split.preheader.i

.lr.ph.split.preheader.i:                         ; preds = %.lr.ph.i
  %i.nb = zext i32 %13 to i64
  br label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i
  %.promoted.i = load i32, ptr %5, align 4, !tbaa !35 ; 2 uses
  %i.nc = zext i32 %13 to i64                     ; 3 uses
  %xtraiter = and i64 %i.nc, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph.split.us.i, %.prol.preheader
  %indvars.iv23.i.prol = phi i64 [ %i.ne, %.prol.preheader ], [ %i.nc, %.lr.ph.split.us.i ]
  %i.nd = phi i32 [ %i.ni, %.prol.preheader ], [ %.promoted.i, %.lr.ph.split.us.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph.split.us.i ]
  %i.ne = add nsw i64 %indvars.iv23.i.prol, -1    ; 3 uses
  %i.nf = getelementptr inbounds nuw [16 x i8], ptr %9, i64 %i.ne
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nf, i64 8
  %i.nh = load i32, ptr %i.ng, align 8, !tbaa !112
  %i.ni = or i32 %i.nh, %i.nd                     ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !107

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph.split.us.i
  %.lcssa.unr = phi i32 [ poison, %.lr.ph.split.us.i ], [ %i.ni, %.prol.preheader ]
  %indvars.iv23.i.unr = phi i64 [ %i.nc, %.lr.ph.split.us.i ], [ %i.ne, %.prol.preheader ]
  %.unr = phi i32 [ %.promoted.i, %.lr.ph.split.us.i ], [ %i.ni, %.prol.preheader ]
  %i.nj = icmp ult i32 %13, 4
  br i1 %i.nj, label %.loopexit, label %.lr.ph.split.us.i.new

.lr.ph.split.us.i.new:                            ; preds = %.prol.loopexit, %.lr.ph.split.us.i.new
  %indvars.iv23.i = phi i64 [ %i.nx, %.lr.ph.split.us.i.new ], [ %indvars.iv23.i.unr, %.prol.loopexit ] ; 4 uses
  %i.nk = phi i32 [ %i.ob, %.lr.ph.split.us.i.new ], [ %.unr, %.prol.loopexit ]
  %i.nl = getelementptr [16 x i8], ptr %9, i64 %indvars.iv23.i
  %i.nm = getelementptr i8, ptr %i.nl, i64 -8
  %i.nn = load i32, ptr %i.nm, align 8, !tbaa !112
  %i.no = or i32 %i.nn, %i.nk
  %i.np = getelementptr [16 x i8], ptr %9, i64 %indvars.iv23.i
  %i.nq = getelementptr i8, ptr %i.np, i64 -24
  %i.nr = load i32, ptr %i.nq, align 8, !tbaa !112
  %i.ns = or i32 %i.nr, %i.no
  %i.nt = getelementptr [16 x i8], ptr %9, i64 %indvars.iv23.i
  %i.nu = getelementptr i8, ptr %i.nt, i64 -40
  %i.nv = load i32, ptr %i.nu, align 8, !tbaa !112
  %i.nw = or i32 %i.nv, %i.ns
  %i.nx = add nsw i64 %indvars.iv23.i, -4         ; 3 uses
  %i.ny = getelementptr inbounds nuw [16 x i8], ptr %9, i64 %i.nx
  %i.nz = getelementptr inbounds nuw i8, ptr %i.ny, i64 8
  %i.oa = load i32, ptr %i.nz, align 8, !tbaa !112
  %i.ob = or i32 %i.oa, %i.nw                     ; 2 uses
  %.not.us.wide.i.3 = icmp eq i64 %i.nx, 0
  br i1 %.not.us.wide.i.3, label %.loopexit, label %.lr.ph.split.us.i.new, !llvm.loop !108

.lr.ph.split.i:                                   ; preds = %bb.bu, %.lr.ph.split.preheader.i
  %indvars.iv.i = phi i64 [ %i.nb, %.lr.ph.split.preheader.i ], [ %indvars.iv.next.i, %bb.bu ]
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 3 uses
  %indvars.i = trunc i64 %indvars.iv.next.i to i32 ; 2 uses
  %i.oc = and i64 %indvars.iv.next.i, 4294967295
  %i.od = getelementptr inbounds nuw [16 x i8], ptr %9, i64 %i.oc ; 2 uses
  %i.oe = getelementptr inbounds nuw i8, ptr %i.od, i64 8
  %i.of = load i32, ptr %i.oe, align 8, !tbaa !112
  store i32 %i.of, ptr %i.a, align 4, !tbaa !35
  %i.og = load ptr, ptr %i.od, align 8, !tbaa !111
  %i.oh = call i32 %6(ptr noundef %7, ptr noundef %i.og, i32 noundef %indvars.i, ptr noundef nonnull %i.a) #18, !inline_history !109
  %.fr = freeze i32 %i.oh                         ; 3 uses
  %.not17.i43 = icmp eq i32 %.fr, 0
  br i1 %.not17.i43, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %.lr.ph.split.i
  %i.oi = load i32, ptr %i.a, align 4, !tbaa !35
  %i.oj = load i32, ptr %5, align 4, !tbaa !35
  %i.ok = or i32 %i.oj, %i.oi                     ; 2 uses
  store i32 %i.ok, ptr %5, align 4, !tbaa !35
  %.not.i44 = icmp eq i32 %indvars.i, 0
  br i1 %.not.i44, label %.loopexit27, label %.lr.ph.split.i, !llvm.loop !108

bb.bv:                                            ; preds = %.lr.ph.split.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  %i.ol = icmp eq i32 %.fr, -9984
  %spec.select26 = select i1 %i.ol, i32 -12288, i32 %.fr
  br label %.thread

.thread:                                          ; preds = %bb.bv, %bb.a, %x509_crt_verify_chain.exit
  %.ph = phi i32 [ -12288, %x509_crt_verify_chain.exit ], [ %spec.select26, %bb.bv ], [ -10240, %bb.a ]
  store i32 -1, ptr %5, align 4, !tbaa !35
  br label %bb.bw

.loopexit:                                        ; preds = %.lr.ph.split.us.i.new, %.prol.loopexit
  %.lcssa = phi i32 [ %.lcssa.unr, %.prol.loopexit ], [ %i.ob, %.lr.ph.split.us.i.new ] ; 2 uses
  store i32 %.lcssa, ptr %5, align 4, !tbaa !35
  br label %.loopexit27

.loopexit27:                                      ; preds = %bb.bu, %.loopexit31..loopexit27_crit_edge, %.loopexit
  %i.om = phi i32 [ %.pre115.a, %.loopexit31..loopexit27_crit_edge ], [ %.lcssa, %.loopexit ], [ %i.ok, %bb.bu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  %.not34 = icmp eq i32 %i.om, 0
  %. = select i1 %.not34, i32 0, i32 -9984
  br label %bb.bw

bb.bw:                                            ; preds = %.loopexit27, %.thread
  %.026 = phi i32 [ %.ph, %.thread ], [ %., %.loopexit27 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  ret i32 %.026
}

; Function Attrs: nounwind uwtable
define hidden i32 @mbedtls_x509_crt_verify_with_profile(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(address_is_null) %3, ptr noundef %4, ptr nofree noundef captures(none) initializes((0, 4)) %5, ptr nofree noundef readonly captures(address_is_null) %6, ptr noundef %7) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i32 @x509_crt_verify_restartable_ca_cb(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define hidden i32 @mbedtls_x509_crt_verify_restartable(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(address_is_null) %3, ptr noundef %4, ptr nofree noundef captures(none) initializes((0, 4)) %5, ptr nofree noundef readonly captures(address_is_null) %6, ptr noundef %7, ptr nofree noundef readnone captures(none) %8) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i32 @x509_crt_verify_restartable_ca_cb(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7)
  ret i32 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @mbedtls_x509_crt_init(ptr nofree noundef writeonly captures(none) initializes((0, 1304)) %0) local_unnamed_addr #10 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1304) %0, i8 0, i64 1304, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @mbedtls_x509_crt_free(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %.not23 = icmp eq ptr %0, null
  br i1 %.not23, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.f
  %.024 = phi ptr [ %i.t, %bb.f ], [ %0, %bb.a ]  ; 14 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.024, i64 360
  tail call void @mbedtls_pk_free(ptr noundef nonnull %i.a) #18
  %i.b = getelementptr inbounds nuw i8, ptr %.024, i64 208
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !133
  tail call void @mbedtls_asn1_free_named_data_list_shallow(ptr noundef %i.c) #18
  %i.d = getelementptr inbounds nuw i8, ptr %.024, i64 272
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !134
  tail call void @mbedtls_asn1_free_named_data_list_shallow(ptr noundef %i.e) #18
  %i.f = getelementptr inbounds nuw i8, ptr %.024, i64 1248
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !135
  tail call void @mbedtls_asn1_sequence_free(ptr noundef %i.g) #18
  %i.h = getelementptr inbounds nuw i8, ptr %.024, i64 1040
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !136
  tail call void @mbedtls_asn1_sequence_free(ptr noundef %i.i) #18
  %i.j = getelementptr inbounds nuw i8, ptr %.024, i64 1200
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !137
  tail call void @mbedtls_asn1_sequence_free(ptr noundef %i.k) #18
  %i.l = getelementptr inbounds nuw i8, ptr %.024, i64 1120
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !138
  tail call void @mbedtls_asn1_sequence_free(ptr noundef %i.m) #18
  %i.n = getelementptr inbounds nuw i8, ptr %.024, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !31   ; 2 uses
  %.not20 = icmp eq ptr %i.o, null
  br i1 %.not20, label %bb.d, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.p = load i32, ptr %.024, align 8, !tbaa !32
  %.not21 = icmp eq i32 %i.p, 0
  br i1 %.not21, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %.024, i64 16
  %i.r = load i64, ptr %i.q, align 8, !tbaa !30
  tail call void @mbedtls_zeroize_and_free(ptr noundef nonnull %i.o, i64 noundef %i.r) #18
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %.lr.ph
  %i.s = getelementptr inbounds nuw i8, ptr %.024, i64 1296
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !27   ; 2 uses
  tail call void @mbedtls_platform_zeroize(ptr noundef nonnull %.024, i64 noundef 1304) #18
  %.not22 = icmp eq ptr %.024, %0
  br i1 %.not22, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @free(ptr noundef nonnull %.024) #18
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.not = icmp eq ptr %i.t, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !132

._crit_edge:                                      ; preds = %bb.f, %bb.a
  ret void
}

declare void @mbedtls_pk_free(ptr noundef) local_unnamed_addr #3

declare void @mbedtls_asn1_free_named_data_list_shallow(ptr noundef) local_unnamed_addr #3

declare void @mbedtls_asn1_sequence_free(ptr noundef) local_unnamed_addr #3

declare void @mbedtls_platform_zeroize(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #11

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden i32 @mbedtls_x509_crt_get_ca_istrue(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1208
  %i.b = load i32, ptr %i.a, align 8, !tbaa !42
  %i.c = and i32 %i.b, 256
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1212
  %i.e = load i32, ptr %i.d, align 4, !tbaa !43
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.e, %bb.b ], [ -9472, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #12

declare i32 @mbedtls_asn1_get_tag(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare i32 @mbedtls_x509_get_serial(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3
end_hunk_0
