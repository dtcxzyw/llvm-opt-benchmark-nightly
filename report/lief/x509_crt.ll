Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lief/original/x509_crt?download=true
inline.NumInlined: 84
inline.NumDeleted: 28
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@x509_info_cert_policies:.peel.begin

bb.c:                                             ; preds = %bb.b
  %i.h = zext nneg i32 %i.f to i64                ; 3 uses
  %.not27.peel = icmp ugt i64 %i.b, %i.h
  br i1 %.not27.peel, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.i = sub nuw i64 %i.b, %i.h                   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.h ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !73   ; 2 uses
  %.not.peel = icmp eq ptr %i.l, null
  br i1 %.not.peel, label %.loopexit36, label %.peel.next

.peel.next:                                       ; preds = %bb.d, %bb.h
  %.02032 = phi ptr [ %i.u, %bb.h ], [ %i.l, %bb.d ] ; 2 uses
  %.02131 = phi ptr [ %i.s, %bb.h ], [ %i.j, %bb.d ] ; 2 uses
  %.02230 = phi i64 [ %i.r, %bb.h ], [ %i.i, %bb.d ] ; 3 uses
  %i.m = call i32 @mbedtls_x509_oid_get_certificate_policies(ptr noundef nonnull %.02032, ptr noundef nonnull %i.a) #18
  %.not26 = icmp eq i32 %i.m, 0
  br i1 %.not26, label %._crit_edge, label %bb.e

._crit_edge:                                      ; preds = %.peel.next
  %.pre37 = load ptr, ptr %i.a, align 8, !tbaa !26
  br label %bb.f

bb.e:                                             ; preds = %.peel.next
  store ptr @.str.27, ptr %i.a, align 8, !tbaa !26
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge, %bb.e
  %i.n = phi ptr [ %.pre37, %._crit_edge ], [ @.str.27, %bb.e ]
  %i.o = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %.02131, i64 noundef %.02230, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.29, ptr noundef %i.n) #18 ; 2 uses
  %i.p = icmp slt i32 %i.o, 0
  br i1 %i.p, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = zext nneg i32 %i.o to i64                ; 3 uses
  %.not27 = icmp ugt i64 %.02230, %i.q
  br i1 %.not27, label %bb.h, label %.loopexit

bb.h:                                             ; preds = %bb.g
  %i.r = sub nuw i64 %.02230, %i.q                ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.02131, i64 %i.q ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.02032, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !73   ; 2 uses
  %.not = icmp eq ptr %i.u, null
  br i1 %.not, label %.loopexit36, label %.peel.next, !llvm.loop !76

.loopexit36:                                      ; preds = %bb.h, %bb.d
  %.lcssa34 = phi i64 [ %i.i, %bb.d ], [ %i.r, %bb.h ]
  %.lcssa = phi ptr [ %i.j, %bb.d ], [ %i.s, %bb.h ]
  store i64 %.lcssa34, ptr %1, align 8, !tbaa !27
  store ptr %.lcssa, ptr %0, align 8, !tbaa !26
  br label %.loopexit

.loopexit:                                        ; preds = %bb.f, %bb.g, %bb.b, %bb.c, %.loopexit36
  %.023 = phi i32 [ 0, %.loopexit36 ], [ -138, %bb.c ], [ -138, %bb.b ], [ -138, %bb.g ], [ -138, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret i32 %.023
}

; Function Attrs: nofree nounwind uwtable
define hidden i32 @mbedtls_x509_crt_verify_info(ptr nofree noundef writeonly captures(none) %0, i64 noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #7 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.f
  %i.a = phi ptr [ @.str.30, %bb.a ], [ %i.m, %bb.f ]
  %.052 = phi i64 [ %1, %bb.a ], [ %.1, %bb.f ]   ; 4 uses
  %.03251 = phi ptr [ %0, %bb.a ], [ %.133, %bb.f ] ; 3 uses
  %.03450 = phi ptr [ @x509_crt_verify_strings, %bb.a ], [ %i.k, %bb.f ] ; 3 uses
  %.03549 = phi i32 [ %3, %bb.a ], [ %.136, %bb.f ] ; 3 uses
  %i.b = load i32, ptr %.03450, align 8, !tbaa !77 ; 2 uses
  %i.c = and i32 %i.b, %.03549
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %.03251, i64 noundef %.052, ptr noundef nonnull @.str.22, ptr noundef %2, ptr noundef nonnull %i.a) #18 ; 2 uses
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
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !79   ; 2 uses
  %.not = icmp eq ptr %i.m, null
  br i1 %.not, label %bb.g, label %bb.b, !llvm.loop !80

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
  %i.b = load i32, ptr %i.a, align 8, !tbaa !68
  %i.c = and i32 %i.b, 4
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = and i32 %1, -32770                       ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1220
  %i.g = load i32, ptr %i.f, align 4, !tbaa !72   ; 2 uses
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
  %i.b = load i32, ptr %i.a, align 8, !tbaa !68
  %i.c = and i32 %i.b, 2048
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1224
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.thread
  %.01423 = phi ptr [ %i.e, %bb.b ], [ %i.r, %.thread ] ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.01423, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !41   ; 2 uses
  %i.h = icmp eq i64 %i.g, %2
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %.01423, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !43
  %bcmp = tail call i32 @bcmp(ptr %i.j, ptr %1, i64 %2)
  %i.k = icmp eq i32 %bcmp, 0
  br i1 %i.k, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.not18 = icmp eq i64 %i.g, 4
  br i1 %.not18, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %.01423, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !43
  %i.n = load i32, ptr %i.m, align 1
  %i.o = icmp ne i32 2432341, %i.n
  %i.p = zext i1 %i.o to i32
  %.not20 = icmp eq i32 %i.p, 0
  br i1 %.not20, label %.critedge, label %.thread

.thread:                                          ; preds = %bb.e, %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %.01423, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !73   ; 2 uses
  %.not = icmp eq ptr %i.r, null
  br i1 %.not, label %.critedge, label %bb.c, !llvm.loop !81

.critedge:                                        ; preds = %bb.d, %.thread, %bb.f, %bb.a
  %.2 = phi i32 [ 0, %bb.a ], [ 0, %bb.d ], [ 0, %bb.f ], [ -10240, %.thread ]
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
  %i.e = load i64, ptr %i.d, align 8, !tbaa !82   ; 3 uses
  %.not12 = icmp eq i64 %i.e, 0
  br i1 %.not12, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i64, ptr %i.c, align 8, !tbaa !85
  %i.g = icmp eq i64 %i.f, %i.e
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !86
  %i.i = getelementptr inbounds nuw i8, ptr %.013, i64 40
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !87
  %bcmp = tail call i32 @bcmp(ptr %i.h, ptr %i.j, i64 %i.e)
  %i.k = icmp eq i32 %bcmp, 0
  br i1 %i.k, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %.013, i64 96
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !88   ; 2 uses
  %.not = icmp eq ptr %i.m, null
  br i1 %.not, label %.critedge, label %bb.b, !llvm.loop !89

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
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca [64 x i8], align 16               ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  %i.e = alloca [64 x i8], align 16               ; 4 uses
  %8 = alloca %struct.mbedtls_x509_time, align 4  ; 10 uses
  %i.f = alloca [4 x i32], align 16               ; 5 uses
  %9 = alloca %struct.mbedtls_x509_crt_verify_chain, align 8 ; 30 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  store i32 0, ptr %5, align 4, !tbaa !33
  store ptr null, ptr %9, align 8, !tbaa !90
  %i.g = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  store i32 -1, ptr %i.g, align 8, !tbaa !92
  %i.h = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr null, ptr %i.h, align 8, !tbaa !90
  %i.i = getelementptr inbounds nuw i8, ptr %9, i64 24
  store i32 -1, ptr %i.i, align 8, !tbaa !92
  %i.j = getelementptr inbounds nuw i8, ptr %9, i64 32
  store ptr null, ptr %i.j, align 8, !tbaa !90
  %i.k = getelementptr inbounds nuw i8, ptr %9, i64 40
  store i32 -1, ptr %i.k, align 8, !tbaa !92
  %i.l = getelementptr inbounds nuw i8, ptr %9, i64 48
  store ptr null, ptr %i.l, align 8, !tbaa !90
  %i.m = getelementptr inbounds nuw i8, ptr %9, i64 56
  store i32 -1, ptr %i.m, align 8, !tbaa !92
  %i.n = getelementptr inbounds nuw i8, ptr %9, i64 64
  store ptr null, ptr %i.n, align 8, !tbaa !90
  %i.o = getelementptr inbounds nuw i8, ptr %9, i64 72
  store i32 -1, ptr %i.o, align 8, !tbaa !92
  %i.p = getelementptr inbounds nuw i8, ptr %9, i64 80
  store ptr null, ptr %i.p, align 8, !tbaa !90
  %i.q = getelementptr inbounds nuw i8, ptr %9, i64 88
  store i32 -1, ptr %i.q, align 8, !tbaa !92
  %i.r = getelementptr inbounds nuw i8, ptr %9, i64 96
  store ptr null, ptr %i.r, align 8, !tbaa !90
  %i.s = getelementptr inbounds nuw i8, ptr %9, i64 104
  store i32 -1, ptr %i.s, align 8, !tbaa !92
  %i.t = getelementptr inbounds nuw i8, ptr %9, i64 112
  store ptr null, ptr %i.t, align 8, !tbaa !90
  %i.u = getelementptr inbounds nuw i8, ptr %9, i64 120
  store i32 -1, ptr %i.u, align 8, !tbaa !92
  %i.v = getelementptr inbounds nuw i8, ptr %9, i64 128
  store ptr null, ptr %i.v, align 8, !tbaa !90
  %i.w = getelementptr inbounds nuw i8, ptr %9, i64 136
  store i32 -1, ptr %i.w, align 8, !tbaa !92
  %i.x = getelementptr inbounds nuw i8, ptr %9, i64 144
  store ptr null, ptr %i.x, align 8, !tbaa !90
  %i.y = getelementptr inbounds nuw i8, ptr %9, i64 152
  store i32 -1, ptr %i.y, align 8, !tbaa !92
  %i.z = getelementptr inbounds nuw i8, ptr %9, i64 160 ; 5 uses
  %i.aa = icmp eq ptr %3, null
  br i1 %i.aa, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq ptr %4, null
  br i1 %.not, label %x509_crt_verify_name.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ab = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #19 ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 1208
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !68
  %i.ae = and i32 %i.ad, 32
  %.not.i = icmp eq i32 %i.ae, 0
  br i1 %.not.i, label %bb.j, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 1016 ; 3 uses
  br label %.lr.ph.outer.i.i.outer

.lr.ph.outer.i.i.outer:                           ; preds = %.lr.ph.outer.i.i.outer.backedge, %bb.d
  %.01635.ph.i.i.ph = phi ptr [ %i.af, %bb.d ], [ %.01635.ph.i.i.ph.be, %.lr.ph.outer.i.i.outer.backedge ]
  %.01734.ph.i.i.ph = phi i32 [ 0, %bb.d ], [ %.01734.ph.i.i.ph.be, %.lr.ph.outer.i.i.outer.backedge ] ; 4 uses
  %.01833.ph.i.i.ph = phi i1 [ false, %bb.d ], [ %.01833.ph.i.i.ph.be, %.lr.ph.outer.i.i.outer.backedge ]
  br label %.lr.ph.outer.i.i

.lr.ph.outer.i.i:                                 ; preds = %.lr.ph.outer.i.i.outer, %.loopexit.i.i.thread
  %.01635.ph.i.i = phi ptr [ %i.ar, %.loopexit.i.i.thread ], [ %.01635.ph.i.i.ph, %.lr.ph.outer.i.i.outer ] ; 5 uses
  %.01833.ph.i.i = phi i1 [ true, %.loopexit.i.i.thread ], [ %.01833.ph.i.i.ph, %.lr.ph.outer.i.i.outer ] ; 3 uses
  %i.ag = load i32, ptr %.01635.ph.i.i, align 8, !tbaa !93
  %i.ah = and i32 %i.ag, 31
  switch i32 %i.ah, label %.loopexit.i.i [
    i32 2, label %.loopexit47.i
    i32 7, label %.thread.i.peel.i
    i32 6, label %.loopexit.i.i.loopexit
  ]

.thread.i.peel.i:                                 ; preds = %.lr.ph.outer.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.01635.ph.i.i, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !73 ; 2 uses
  %.not49.i.peel.i = icmp eq ptr %i.aj, null
  br i1 %.not49.i.peel.i, label %.critedge.thread52.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.thread.i.peel.i, %.thread.i.i
  %.01635.i.i = phi ptr [ %i.aw, %.thread.i.i ], [ %i.aj, %.thread.i.peel.i ] ; 5 uses
  %i.ak = load i32, ptr %.01635.i.i, align 8, !tbaa !93
  %i.al = and i32 %i.ak, 31
  switch i32 %i.al, label %.loopexit.i.i.thread [
    i32 2, label %.loopexit47.i
    i32 7, label %.thread.i.i
    i32 6, label %.loopexit.i.thread.i
  ]

.loopexit47.i:                                    ; preds = %.lr.ph.outer.i.i, %.lr.ph.i.i
  %.01635.i.lcssa40.i = phi ptr [ %.01635.i.i, %.lr.ph.i.i ], [ %.01635.ph.i.i, %.lr.ph.outer.i.i ] ; 2 uses
  %.01833.i.lcssa36.i = phi i1 [ true, %.lr.ph.i.i ], [ %.01833.ph.i.i, %.lr.ph.outer.i.i ]
  %i.am = tail call fastcc i32 @x509_crt_check_cn(ptr noundef %.01635.i.lcssa40.i, ptr noundef nonnull %4, i64 noundef %i.ab)
  %i.an = icmp eq i32 %i.am, 0
  br i1 %i.an, label %x509_crt_verify_name.exit, label %.loopexit.i.i

.loopexit.i.i.loopexit:                           ; preds = %.lr.ph.outer.i.i
  br label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %.lr.ph.outer.i.i, %.loopexit.i.i.loopexit, %.loopexit47.i
  %.01635.i43.i = phi ptr [ %.01635.ph.i.i, %.loopexit.i.i.loopexit ], [ %.01635.i.lcssa40.i, %.loopexit47.i ], [ %.01635.ph.i.i, %.lr.ph.outer.i.i ]
  %.01833.i39.i = phi i1 [ %.01833.ph.i.i, %.loopexit.i.i.loopexit ], [ %.01833.i.lcssa36.i, %.loopexit47.i ], [ %.01833.ph.i.i, %.lr.ph.outer.i.i ] ; 2 uses
  %.1.i.i = phi i32 [ 1, %.loopexit.i.i.loopexit ], [ %.01734.ph.i.i.ph, %.loopexit47.i ], [ %.01734.ph.i.i.ph, %.lr.ph.outer.i.i ] ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.01635.i43.i, i64 24
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !73 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ap, null
  br i1 %.not.i.i, label %.critedge.i.i, label %.lr.ph.outer.i.i.outer.backedge

.lr.ph.outer.i.i.outer.backedge:                  ; preds = %.loopexit.i.i, %.loopexit.i.thread.i
  %.01635.ph.i.i.ph.be = phi ptr [ %i.au, %.loopexit.i.thread.i ], [ %i.ap, %.loopexit.i.i ]
  %.01734.ph.i.i.ph.be = phi i32 [ 1, %.loopexit.i.thread.i ], [ %.1.i.i, %.loopexit.i.i ]
  %.01833.ph.i.i.ph.be = phi i1 [ true, %.loopexit.i.thread.i ], [ %.01833.i39.i, %.loopexit.i.i ]
  br label %.lr.ph.outer.i.i.outer, !llvm.loop !94

.loopexit.i.i.thread:                             ; preds = %.lr.ph.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %.01635.i.i, i64 24
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !73 ; 2 uses
  %.not.i.i8 = icmp eq ptr %i.ar, null
  br i1 %.not.i.i8, label %.critedge.i.i.thread, label %.lr.ph.outer.i.i, !llvm.loop !94

.critedge.i.i.thread:                             ; preds = %.loopexit.i.i.thread
  %i.as = icmp eq i32 %.01734.ph.i.i.ph, 0
  br label %.critedge.i.thread.i

.loopexit.i.thread.i:                             ; preds = %.lr.ph.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %.01635.i.i, i64 24
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !73 ; 2 uses
  %.not.i60.i = icmp eq ptr %i.au, null
  br i1 %.not.i60.i, label %.critedge.i.thread.i, label %.lr.ph.outer.i.i.outer.backedge

.thread.i.i:                                      ; preds = %.lr.ph.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %.01635.i.i, i64 24
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !73 ; 2 uses
  %.not49.i.i = icmp eq ptr %i.aw, null
  br i1 %.not49.i.i, label %.critedge.thread52.i.i, label %.lr.ph.i.i, !llvm.loop !95

.critedge.thread52.i.i:                           ; preds = %.thread.i.peel.i, %.thread.i.i
  %i.ax = icmp eq i32 %.01734.ph.i.i.ph, 0
  br label %.critedge.i.thread.i

.critedge.i.i:                                    ; preds = %.loopexit.i.i
  %i.ay = icmp eq i32 %.1.i.i, 0                  ; 2 uses
  br i1 %.01833.i39.i, label %.critedge.i.thread.i, label %bb.g

.critedge.i.thread.i:                             ; preds = %.loopexit.i.thread.i, %.critedge.i.i.thread, %.critedge.i.i, %.critedge.thread52.i.i
  %i.az = phi i1 [ %i.ax, %.critedge.thread52.i.i ], [ %i.ay, %.critedge.i.i ], [ %i.as, %.critedge.i.i.thread ], [ false, %.loopexit.i.thread.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #18
  %i.ba = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %4, i32 noundef 58) #19
  %i.bb = icmp eq ptr %i.ba, null                 ; 2 uses
  %..i.i.i.i = select i1 %i.bb, i32 2, i32 10
  %.8.i.i.i.i = select i1 %i.bb, i64 4, i64 16
  %i.bc = call i32 @inet_pton(i32 noundef %..i.i.i.i, ptr noundef nonnull %4, ptr noundef nonnull %i.f) #18
  %.not.i.not.i.not.i.i = icmp eq i32 %i.bc, 1    ; 2 uses
  %i.bd = select i1 %.not.i.not.i.not.i.i, i64 %.8.i.i.i.i, i64 0 ; 2 uses
  br i1 %.not.i.not.i.not.i.i, label %.lr.ph.i.i.i, label %x509_crt_check_san_ip.exit.thread.i.i

.lr.ph.i.i.i:                                     ; preds = %.critedge.i.thread.i, %.critedge.i.i.i
  %.019.i.i.i = phi ptr [ %i.bo, %.critedge.i.i.i ], [ %i.af, %.critedge.i.thread.i ] ; 4 uses
  %i.be = load i32, ptr %.019.i.i.i, align 8, !tbaa !93
  %i.bf = and i32 %i.be, 31
  %i.bg = icmp eq i32 %i.bf, 7
  br i1 %i.bg, label %bb.e, label %.critedge.i.i.i

bb.e:                                             ; preds = %.lr.ph.i.i.i
  %i.bh = getelementptr inbounds nuw i8, ptr %.019.i.i.i, i64 8
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !96
  %i.bj = icmp eq i64 %i.bi, %i.bd
  br i1 %i.bj, label %bb.f, label %.critedge.i.i.i

bb.f:                                             ; preds = %bb.e
  %i.bk = getelementptr inbounds nuw i8, ptr %.019.i.i.i, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !97
  %bcmp.i.i.i = call i32 @bcmp(ptr %i.bl, ptr nonnull %i.f, i64 %i.bd)
  %i.bm = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.bm, label %x509_crt_check_san_ip.exit.i.i, label %.critedge.i.i.i

.critedge.i.i.i:                                  ; preds = %bb.f, %bb.e, %.lr.ph.i.i.i
  %i.bn = getelementptr inbounds nuw i8, ptr %.019.i.i.i, i64 24
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !73 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bo, null
  br i1 %.not.i.i.i, label %x509_crt_check_san_ip.exit.thread.i.i, label %.lr.ph.i.i.i, !llvm.loop !98

x509_crt_check_san_ip.exit.thread.i.i:            ; preds = %.critedge.i.i.i, %.critedge.i.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #18
  br i1 %i.az, label %x509_crt_verify_name.exit, label %.lr.ph.i24.i.i.preheader

x509_crt_check_san_ip.exit.i.i:                   ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #18
  br label %x509_crt_verify_name.exit

bb.g:                                             ; preds = %.critedge.i.i
  br i1 %i.ay, label %x509_crt_verify_name.exit, label %.lr.ph.i24.i.i.preheader

.lr.ph.i24.i.i.preheader:                         ; preds = %bb.g, %x509_crt_check_san_ip.exit.thread.i.i
  br label %.lr.ph.i24.i.i

.lr.ph.i24.i.i:                                   ; preds = %.lr.ph.i24.i.i.preheader, %.critedge.i25.i.i
  %.01218.i.i.i = phi ptr [ %i.bz, %.critedge.i25.i.i ], [ %i.af, %.lr.ph.i24.i.i.preheader ] ; 4 uses
  %i.bp = load i32, ptr %.01218.i.i.i, align 8, !tbaa !93
  %i.bq = and i32 %i.bp, 31
  %i.br = icmp eq i32 %i.bq, 6
  br i1 %i.br, label %bb.h, label %.critedge.i25.i.i

bb.h:                                             ; preds = %.lr.ph.i24.i.i
  %i.bs = getelementptr inbounds nuw i8, ptr %.01218.i.i.i, i64 8
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !96
  %i.bu = icmp eq i64 %i.bt, %i.ab
  br i1 %i.bu, label %bb.i, label %.critedge.i25.i.i

bb.i:                                             ; preds = %bb.h
  %i.bv = getelementptr inbounds nuw i8, ptr %.01218.i.i.i, i64 16
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !97
  %bcmp.i27.i.i = call i32 @bcmp(ptr %i.bw, ptr nonnull readonly %4, i64 %i.ab)
  %i.bx = icmp eq i32 %bcmp.i27.i.i, 0
  br i1 %i.bx, label %x509_crt_verify_name.exit, label %.critedge.i25.i.i

.critedge.i25.i.i:                                ; preds = %bb.i, %bb.h, %.lr.ph.i24.i.i
  %i.by = getelementptr inbounds nuw i8, ptr %.01218.i.i.i, i64 24
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !73 ; 2 uses
  %.not.i26.i.i = icmp eq ptr %i.bz, null
  br i1 %.not.i26.i.i, label %x509_crt_verify_name.exit, label %.lr.ph.i24.i.i, !llvm.loop !99

bb.j:                                             ; preds = %bb.c
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 224
  br label %bb.k

bb.k:                                             ; preds = %.critedge.i, %bb.j
  %.032.i = phi ptr [ %i.ca, %bb.j ], [ %i.cs, %.critedge.i ] ; 4 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.032.i, i64 8
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !100
  %.not16.i = icmp eq i64 %i.cc, 3
  br i1 %.not16.i, label %bb.l, label %.critedge.i

bb.l:                                             ; preds = %bb.k
  %i.cd = getelementptr inbounds nuw i8, ptr %.032.i, i64 16
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !101 ; 2 uses
  %i.cf = load i16, ptr %i.ce, align 1
  %i.cg = xor i16 1109, %i.cf
  %i.ch = getelementptr i8, ptr %i.ce, i64 2
  %i.ci = load i8, ptr %i.ch, align 1
  %i.cj = zext i8 %i.ci to i16
  %i.ck = xor i16 3, %i.cj
  %i.cl = or i16 %i.cg, %i.ck
  %i.cm = icmp ne i16 %i.cl, 0
  %i.cn = zext i1 %i.cm to i32
  %.not17.i.a = icmp eq i32 %i.cn, 0
  br i1 %.not17.i.a, label %bb.m, label %.critedge.i

bb.m:                                             ; preds = %bb.l
  %i.co = getelementptr inbounds nuw i8, ptr %.032.i, i64 24
  %i.cp = tail call fastcc i32 @x509_crt_check_cn(ptr noundef %i.co, ptr noundef nonnull %4, i64 noundef %i.ab)
  %i.cq = icmp eq i32 %i.cp, 0
  br i1 %i.cq, label %x509_crt_verify_name.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.m, %bb.l, %bb.k
  %i.cr = getelementptr inbounds nuw i8, ptr %.032.i, i64 48
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !102 ; 2 uses
  %.not15.i = icmp eq ptr %i.cs, null
  br i1 %.not15.i, label %x509_crt_verify_name.exit, label %bb.k, !llvm.loop !103

x509_crt_verify_name.exit:                        ; preds = %.loopexit47.i, %bb.i, %.critedge.i25.i.i, %bb.m, %.critedge.i, %x509_crt_check_san_ip.exit.i.i, %bb.g, %x509_crt_check_san_ip.exit.thread.i.i, %bb.b
  %.1 = phi i32 [ 0, %bb.b ], [ 4, %bb.g ], [ 0, %bb.m ], [ 0, %x509_crt_check_san_ip.exit.i.i ], [ 0, %bb.i ], [ 4, %x509_crt_check_san_ip.exit.thread.i.i ], [ 4, %.critedge.i ], [ 4, %.critedge.i25.i.i ], [ 0, %.loopexit47.i ] ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 2 uses
  %i.cu = call i32 @mbedtls_pk_get_type(ptr noundef nonnull %i.ct) #18 ; 2 uses
  %i.cv = icmp eq i32 %i.cu, 0
  br i1 %i.cv, label %x509_profile_check_pk_alg.exit.thread, label %x509_profile_check_pk_alg.exit

x509_profile_check_pk_alg.exit:                   ; preds = %x509_crt_verify_name.exit
  %i.cw = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !104
  %i.cy = add i32 %i.cu, -1
  %i.cz = shl nuw i32 1, %i.cy
  %i.da = and i32 %i.cx, %i.cz
  %.not.i35.not = icmp eq i32 %i.da, 0
  br i1 %.not.i35.not, label %x509_profile_check_pk_alg.exit.thread, label %bb.n

x509_profile_check_pk_alg.exit.thread:            ; preds = %x509_crt_verify_name.exit, %x509_profile_check_pk_alg.exit
  %i.db = or disjoint i32 %.1, 32768
  br label %bb.n

bb.n:                                             ; preds = %x509_profile_check_pk_alg.exit.thread, %x509_profile_check_pk_alg.exit
  %.2 = phi i32 [ %.1, %x509_profile_check_pk_alg.exit ], [ %i.db, %x509_profile_check_pk_alg.exit.thread ] ; 2 uses
  %i.dc = call fastcc i32 @x509_profile_check_key(ptr noundef %3, ptr noundef nonnull %i.ct)
  %.not31 = icmp eq i32 %i.dc, 0
  %i.dd = or i32 %.2, 65536
  %spec.select = select i1 %.not31, i32 %.2, i32 %i.dd
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  %i.de = call i64 @time(ptr noundef null) #18
  %i.df = call i32 @mbedtls_x509_time_gmtime(i64 noundef %i.de, ptr noundef nonnull %8) #18
  %.not.i36 = icmp eq i32 %i.df, 0
  br i1 %.not.i36, label %.preheader.i, label %x509_crt_verify_chain.exit

.preheader.i:                                     ; preds = %bb.n
  %i.dg = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %.not1213.i.i = icmp eq ptr %1, null
  %.not8083.i.i = icmp eq ptr %2, null
  br label %bb.o

bb.o:                                             ; preds = %x509_crt_verifycrl.exit.i, %.preheader.i
  %i.dh = phi i32 [ %.pre, %x509_crt_verifycrl.exit.i ], [ 0, %.preheader.i ] ; 2 uses
  %.042.i = phi ptr [ %.2.ph.i, %x509_crt_verifycrl.exit.i ], [ %0, %.preheader.i ] ; 18 uses
  %.041.i = phi i32 [ %storemerge.i.i, %x509_crt_verifycrl.exit.i ], [ 0, %.preheader.i ]
  %.0.i37 = phi i32 [ %.121.i, %x509_crt_verifycrl.exit.i ], [ 0, %.preheader.i ] ; 3 uses
  %i.di = zext i32 %i.dh to i64
  %i.dj = getelementptr inbounds nuw [16 x i8], ptr %9, i64 %i.di ; 2 uses
  store ptr %.042.i, ptr %i.dj, align 8, !tbaa !90
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 8 ; 17 uses
  store i32 0, ptr %i.dk, align 8, !tbaa !92
  %i.dl = add i32 %i.dh, 1
  store i32 %i.dl, ptr %i.z, align 8, !tbaa !106
  %i.dm = getelementptr inbounds nuw i8, ptr %.042.i, i64 312
  %i.dn = call i32 @mbedtls_x509_time_cmp(ptr noundef nonnull %i.dm, ptr noundef nonnull %8) #18
  %i.do = icmp slt i32 %i.dn, 0
  br i1 %i.do, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.dp = load i32, ptr %i.dk, align 8, !tbaa !33
  %i.dq = or i32 %i.dp, 1
  store i32 %i.dq, ptr %i.dk, align 8, !tbaa !33
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.dr = getelementptr inbounds nuw i8, ptr %.042.i, i64 288
  %i.ds = call i32 @mbedtls_x509_time_cmp(ptr noundef nonnull %i.dr, ptr noundef nonnull %8) #18
  %i.dt = icmp sgt i32 %i.ds, 0
  br i1 %i.dt, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.du = load i32, ptr %i.dk, align 8, !tbaa !33
  %i.dv = or i32 %i.du, 512
  store i32 %i.dv, ptr %i.dk, align 8, !tbaa !33
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.not44.i = icmp eq i32 %.041.i, 0
  br i1 %.not44.i, label %bb.t, label %.loopexit31

bb.t:                                             ; preds = %bb.s
  %i.dw = getelementptr inbounds nuw i8, ptr %.042.i, i64 1288 ; 3 uses
  %i.dx = load i32, ptr %i.dw, align 8, !tbaa !67 ; 2 uses
  %i.dy = icmp eq i32 %i.dx, 0
  br i1 %i.dy, label %x509_profile_check_md_alg.exit.thread.i, label %x509_profile_check_md_alg.exit.i

x509_profile_check_md_alg.exit.i:                 ; preds = %bb.t
  %i.dz = load i32, ptr %3, align 4, !tbaa !108
  %i.ea = add i32 %i.dx, -1
  %i.eb = shl nuw i32 1, %i.ea
  %i.ec = and i32 %i.dz, %i.eb
  %.not.i.not.i = icmp eq i32 %i.ec, 0
  br i1 %.not.i.not.i, label %x509_profile_check_md_alg.exit.thread.i, label %bb.u

x509_profile_check_md_alg.exit.thread.i:          ; preds = %x509_profile_check_md_alg.exit.i, %bb.t
  %i.ed = load i32, ptr %i.dk, align 8, !tbaa !33
  %i.ee = or i32 %i.ed, 16384
  store i32 %i.ee, ptr %i.dk, align 8, !tbaa !33
  br label %bb.u

bb.u:                                             ; preds = %x509_profile_check_md_alg.exit.thread.i, %x509_profile_check_md_alg.exit.i
  %i.ef = getelementptr inbounds nuw i8, ptr %.042.i, i64 1292 ; 3 uses
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !66 ; 2 uses
  %i.eh = icmp eq i32 %i.eg, 0
  br i1 %i.eh, label %x509_profile_check_pk_alg.exit.thread.i, label %x509_profile_check_pk_alg.exit.i

x509_profile_check_pk_alg.exit.i:                 ; preds = %bb.u
  %i.ei = load i32, ptr %i.dg, align 4, !tbaa !104
  %i.ej = add i32 %i.eg, -1
  %i.ek = shl nuw i32 1, %i.ej
  %i.el = and i32 %i.ei, %i.ek
  %.not.i51.not.i = icmp eq i32 %i.el, 0
  br i1 %.not.i51.not.i, label %x509_profile_check_pk_alg.exit.thread.i, label %bb.v

x509_profile_check_pk_alg.exit.thread.i:          ; preds = %x509_profile_check_pk_alg.exit.i, %bb.u
  %i.em = load i32, ptr %i.dk, align 8, !tbaa !33
  %i.en = or i32 %i.em, 32768
  store i32 %i.en, ptr %i.dk, align 8, !tbaa !33
  br label %bb.v

bb.v:                                             ; preds = %x509_profile_check_pk_alg.exit.thread.i, %x509_profile_check_pk_alg.exit.i
  %i.eo = load i32, ptr %i.z, align 8, !tbaa !106 ; 2 uses
  %i.ep = icmp eq i32 %i.eo, 1
  br i1 %i.ep, label %bb.w, label %x509_crt_check_ee_locally_trusted.exit.thread.i

bb.w:                                             ; preds = %bb.v
  %i.eq = getelementptr inbounds nuw i8, ptr %.042.i, i64 160
  %i.er = getelementptr inbounds nuw i8, ptr %.042.i, i64 224
  %i.es = call fastcc i32 @x509_name_cmp(ptr noundef nonnull readonly %i.eq, ptr noundef nonnull readonly %i.er)
  %.not.i54.i = icmp eq i32 %i.es, 0
  br i1 %.not.i54.i, label %.preheader.i.i, label %x509_crt_check_ee_locally_trusted.exit.thread.i

.preheader.i.i:                                   ; preds = %bb.w
  %i.et = getelementptr inbounds nuw i8, ptr %.042.i, i64 24
  br i1 %.not1213.i.i, label %x509_crt_check_ee_locally_trusted.exit.thread.i, label %.lr.ph.i.i41

.lr.ph.i.i41:                                     ; preds = %.preheader.i.i
  %i.eu = getelementptr inbounds nuw i8, ptr %.042.i, i64 16
  %i.ev = load i64, ptr %i.eu, align 8, !tbaa !28 ; 2 uses
  br label %bb.x

bb.x:                                             ; preds = %bb.z, %.lr.ph.i.i41
  %.014.i.i = phi ptr [ %1, %.lr.ph.i.i41 ], [ %i.fe, %bb.z ] ; 3 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %.014.i.i, i64 16
  %i.ex = load i64, ptr %i.ew, align 8, !tbaa !28
  %i.ey = icmp eq i64 %i.ev, %i.ex
  br i1 %i.ey, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.ez = load ptr, ptr %i.et, align 8, !tbaa !29
  %i.fa = getelementptr inbounds nuw i8, ptr %.014.i.i, i64 24
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !29
  %bcmp.i.i = call i32 @bcmp(ptr %i.ez, ptr %i.fb, i64 %i.ev)
  %i.fc = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.fc, label %.loopexit31, label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.fd = getelementptr inbounds nuw i8, ptr %.014.i.i, i64 1296
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !25 ; 2 uses
  %.not12.i.i = icmp eq ptr %i.fe, null
  br i1 %.not12.i.i, label %x509_crt_check_ee_locally_trusted.exit.thread.i, label %bb.x, !llvm.loop !109

x509_crt_check_ee_locally_trusted.exit.thread.i:  ; preds = %bb.z, %.preheader.i.i, %bb.w, %bb.v
  %i.ff = getelementptr inbounds nuw i8, ptr %.042.i, i64 1296
  %i.fg = getelementptr inbounds nuw i8, ptr %.042.i, i64 160 ; 2 uses
  %i.fh = sub i32 %i.eo, %.0.i37
  %i.fi = getelementptr inbounds nuw i8, ptr %.042.i, i64 48
  %i.fj = getelementptr inbounds nuw i8, ptr %.042.i, i64 40
  %i.fk = getelementptr inbounds nuw i8, ptr %.042.i, i64 1280
  %i.fl = getelementptr inbounds nuw i8, ptr %.042.i, i64 1272
  br label %bb.aa

bb.aa:                                            ; preds = %x509_crt_find_parent_in.exit.thread.i.i, %x509_crt_check_ee_locally_trusted.exit.thread.i
  %.not.i55.i = phi i1 [ false, %x509_crt_check_ee_locally_trusted.exit.thread.i ], [ true, %x509_crt_find_parent_in.exit.thread.i.i ] ; 5 uses
  %storemerge.i.i = phi i32 [ 1, %x509_crt_check_ee_locally_trusted.exit.thread.i ], [ 0, %x509_crt_find_parent_in.exit.thread.i.i ]
  br i1 %.not.i55.i, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.fm = load ptr, ptr %i.ff, align 8, !tbaa !25
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.fn = phi ptr [ %i.fm, %bb.ab ], [ %1, %bb.aa ] ; 2 uses
  %cond4.i.i.i = icmp eq ptr %i.fn, null
  br i1 %cond4.i.i.i, label %x509_crt_find_parent_in.exit.thread.i.i, label %.lr.ph.i.i.i38

.lr.ph.i.i.i38:                                   ; preds = %bb.ac, %x509_crt_check_parent.exit.thread.i.i.i
  %.07.i.i.i = phi i32 [ %.1.i.i.i, %x509_crt_check_parent.exit.thread.i.i.i ], [ 0, %bb.ac ] ; 15 uses
  %.0326.i.i.i = phi ptr [ %.133.i.i.i, %x509_crt_check_parent.exit.thread.i.i.i ], [ null, %bb.ac ] ; 16 uses
  %.0345.i.i.i = phi ptr [ %i.ji, %x509_crt_check_parent.exit.thread.i.i.i ], [ %i.fn, %bb.ac ] ; 12 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %.0345.i.i.i, i64 224
  br label %.lr.ph.i19.i.i

.lr.ph.i19.i.i:                                   ; preds = %bb.aq, %.lr.ph.i.i.i38
  %.029.i.i.i = phi ptr [ %i.hq, %bb.aq ], [ %i.fo, %.lr.ph.i.i.i38 ] ; 11 uses
  %.01828.i.i.i = phi ptr [ %i.ho, %bb.aq ], [ %i.fg, %.lr.ph.i.i.i38 ] ; 11 uses
  %i.fp = icmp eq ptr %.01828.i.i.i, null
  %i.fq = icmp eq ptr %.029.i.i.i, null
  %or.cond.i20.i.i = select i1 %i.fp, i1 true, i1 %i.fq
  br i1 %or.cond.i20.i.i, label %x509_crt_check_parent.exit.thread.i.i.i, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph.i19.i.i
  %i.fr = load i32, ptr %.01828.i.i.i, align 8, !tbaa !110
  %i.fs = load i32, ptr %.029.i.i.i, align 8, !tbaa !110
  %.not.i.i.i39 = icmp eq i32 %i.fr, %i.fs
end_hunk_0
