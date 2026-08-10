inline.NumInlined: 66
inline.NumDeleted: 23
begin_hunk_0_@ossl_x509v3_cache_extensions:bb.a
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bn
  %i.ia = and i32 %.21, 2
  %.not206 = icmp eq i32 %i.ia, 0
  br i1 %.not206, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  store i32 %.1168, ptr %i.r, align 4, !tbaa !44
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp
  %i.ib = getelementptr inbounds nuw i8, ptr %0, i64 240
  store i32 %.2172, ptr %i.ib, align 8, !tbaa !73
  %i.ic = and i32 %.21, 8
  %.not207 = icmp eq i32 %i.ic, 0
  br i1 %.not207, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  store i32 %.1174, ptr %i.t, align 4, !tbaa !45
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %bb.br
  %i.id = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !74
  call void @ASN1_OCTET_STRING_free(ptr noundef %i.ie) #9
  store ptr %i.dd, ptr %i.id, align 8, !tbaa !74
  %i.if = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.ig = load ptr, ptr %i.if, align 8, !tbaa !75
  call void @AUTHORITY_KEYID_free(ptr noundef %i.ig) #9
  store ptr %i.di, ptr %i.if, align 8, !tbaa !75
  %i.ih = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !76
  call void @OPENSSL_sk_pop_free(ptr noundef %i.ii, ptr noundef nonnull @GENERAL_NAME_free) #9
  store ptr %i.dy, ptr %i.ih, align 8, !tbaa !76
  %i.ij = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 2 uses
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !77
  call void @NAME_CONSTRAINTS_free(ptr noundef %i.ik) #9
  store ptr %i.ed, ptr %i.ij, align 8, !tbaa !77
  %i.il = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 2 uses
  %i.im = load ptr, ptr %i.il, align 8, !tbaa !78
  call void @OPENSSL_sk_pop_free(ptr noundef %i.im, ptr noundef nonnull @DIST_POINT_free) #9
  store ptr %i.ei, ptr %i.il, align 8, !tbaa !78
  %i.in = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !79
  call void @OPENSSL_sk_pop_free(ptr noundef %i.io, ptr noundef nonnull @IPAddressFamily_free) #9
  store ptr %i.go, ptr %i.in, align 8, !tbaa !79
  %i.ip = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  %i.iq = load ptr, ptr %i.ip, align 8, !tbaa !80
  call void @ASIdentifiers_free(ptr noundef %i.iq) #9
  store ptr %i.gs, ptr %i.ip, align 8, !tbaa !80
  %i.ir = getelementptr inbounds nuw i8, ptr %0, i64 176
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ir, ptr noundef nonnull align 4 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !81
  store atomic i32 1, ptr %i.e release, align 8
  %i.is = load ptr, ptr %i.k, align 8, !tbaa !42
  %i.it = call i32 @CRYPTO_THREAD_unlock(ptr noundef %i.is) #9 ; 0 uses
  %i.iu = and i32 %.21, 128
  %.not208 = icmp eq i32 %i.iu, 0
  br i1 %.not208, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  call void @ERR_new() #9
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 728, ptr noundef nonnull @__func__.ossl_x509v3_cache_extensions) #9
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 34, i32 noundef 158, ptr noundef null) #9
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %.loopexit, %bb.bt, %bb.c, %bb.e, %bb.b
  %.1 = phi i32 [ %i.j, %bb.b ], [ %i.z, %bb.e ], [ 0, %bb.c ], [ 0, %bb.bu ], [ 0, %.loopexit ], [ 1, %bb.bt ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define range(i32 -1, -2147483638) i32 @X509_PURPOSE_get_by_id(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.x509_purpose_st, align 8    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #9
  %i.a = add i32 %0, -1                           ; 2 uses
  %or.cond = icmp ult i32 %i.a, 10
  br i1 %or.cond, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr @xptable, align 8, !tbaa !8 ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 %0, ptr %1, align 8, !tbaa !11
  %i.d = call i32 @OPENSSL_sk_find(ptr noundef nonnull %i.b, ptr noundef nonnull %1) #9 ; 2 uses
  %narrow = add nuw i32 %i.d, 10
  %.inv = icmp sgt i32 %i.d, -1
  %spec.select = select i1 %.inv, i32 %narrow, i32 -1
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c, %bb.b
  %.0 = phi i32 [ -1, %bb.b ], [ %spec.select, %bb.c ], [ %i.a, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #9
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define ptr @X509_PURPOSE_get0(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp slt i32 %0, 0
  br i1 %i.a, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp samesign ult i32 %0, 10
  br i1 %i.b, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = zext nneg i32 %0 to i64
  %i.d = getelementptr inbounds nuw [48 x i8], ptr @xstandard, i64 %i.c
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.e = load ptr, ptr @xptable, align 8, !tbaa !8
  %i.f = add nsw i32 %0, -10
  %i.g = tail call ptr @OPENSSL_sk_value(ptr noundef %i.e, i32 noundef %i.f) #9
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %bb.c
  %.0 = phi ptr [ %i.g, %bb.d ], [ %i.d, %bb.c ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @X509_PURPOSE_set(ptr nofree noundef writeonly captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.x509_purpose_st, align 8    ; 5 uses
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #9
  %or.cond.i = icmp ult i32 %1, 11
  br i1 %or.cond.i, label %X509_PURPOSE_get_by_id.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.a = load ptr, ptr @xptable, align 8, !tbaa !8 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i32 %1, ptr %2, align 8, !tbaa !11
  %i.c = call i32 @OPENSSL_sk_find(ptr noundef nonnull %i.a, ptr noundef nonnull %2) #9
  %.inv.i = icmp sgt i32 %i.c, -1
  br i1 %.inv.i, label %X509_PURPOSE_get_by_id.exit, label %bb.e

X509_PURPOSE_get_by_id.exit:                      ; preds = %bb.d, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #9
  br label %bb.f

bb.e:                                             ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #9
  call void @ERR_new() #9
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 107, ptr noundef nonnull @__func__.X509_PURPOSE_set) #9
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 34, i32 noundef 146, ptr noundef null) #9
  br label %bb.g

bb.f:                                             ; preds = %X509_PURPOSE_get_by_id.exit, %bb.a
  store i32 %1, ptr %0, align 4, !tbaa !50
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.0 = phi i32 [ 0, %bb.e ], [ 1, %bb.f ]
  ret i32 %.0
}

declare void @ERR_new() local_unnamed_addr #2

declare void @ERR_set_debug(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @ERR_set_error(i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define i32 @X509_PURPOSE_get_count() local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @xptable, align 8, !tbaa !8 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @OPENSSL_sk_num(ptr noundef nonnull %i.a) #9
  %i.c = add i32 %i.b, 10
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.c, %bb.b ], [ 10, %bb.a ]
  ret i32 %.0
}

declare i32 @OPENSSL_sk_num(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define range(i32 11, 1) i32 @X509_PURPOSE_get_unused_id(ptr nofree noundef readnone captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.x509_purpose_st, align 8    ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #9
  %i.a = load ptr, ptr @xptable, align 8, !tbaa !8 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %select.unfold
  %i.c = phi ptr [ %i.f, %select.unfold ], [ %i.a, %bb.a ]
  %.06 = phi i32 [ %i.e, %select.unfold ], [ 11, %bb.a ] ; 3 uses
  store i32 %.06, ptr %1, align 8, !tbaa !11
  %i.d = call i32 @OPENSSL_sk_find(ptr noundef nonnull %i.c, ptr noundef nonnull %1) #9
  %.inv.i = icmp sgt i32 %i.d, -1
  br i1 %.inv.i, label %select.unfold, label %._crit_edge

select.unfold:                                    ; preds = %.lr.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #9
  %i.e = add nuw nsw i32 %.06, 1                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #9
  %i.f = load ptr, ptr @xptable, align 8, !tbaa !8 ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %._crit_edge, label %.lr.ph, !llvm.loop !82

._crit_edge:                                      ; preds = %.lr.ph, %select.unfold, %bb.a
  %.0.lcssa = phi i32 [ 11, %bb.a ], [ %.06, %.lr.ph ], [ %i.e, %select.unfold ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #9
  ret i32 %.0.lcssa
}

declare ptr @OPENSSL_sk_value(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define range(i32 -1, 2147483647) i32 @X509_PURPOSE_get_by_sname(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.g, %bb.a
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.g ], [ 0, %bb.a ] ; 6 uses
  %i.a = load ptr, ptr @xptable, align 8, !tbaa !8 ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %X509_PURPOSE_get_count.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = tail call i32 @OPENSSL_sk_num(ptr noundef nonnull %i.a) #9
  %i.c = add i32 %i.b, 10
  %i.d = sext i32 %i.c to i64
  br label %X509_PURPOSE_get_count.exit

X509_PURPOSE_get_count.exit:                      ; preds = %bb.b, %bb.c
  %.0.i = phi i64 [ %i.d, %bb.c ], [ 10, %bb.b ]
  %i.e = icmp slt i64 %indvars.iv, %.0.i
  br i1 %i.e, label %bb.d, label %.split.loop.exit

bb.d:                                             ; preds = %X509_PURPOSE_get_count.exit
  %i.f = icmp samesign ult i64 %indvars.iv, 10
  br i1 %i.f, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.g = getelementptr inbounds nuw [48 x i8], ptr @xstandard, i64 %indvars.iv
  br label %X509_PURPOSE_get0.exit

bb.f:                                             ; preds = %bb.d
  %i.h = load ptr, ptr @xptable, align 8, !tbaa !8
  %i.i = trunc i64 %indvars.iv to i32
  %i.j = add i32 %i.i, -10
  %i.k = tail call ptr @OPENSSL_sk_value(ptr noundef %i.h, i32 noundef %i.j) #9
  br label %X509_PURPOSE_get0.exit

X509_PURPOSE_get0.exit:                           ; preds = %bb.e, %bb.f
  %.0.i7 = phi ptr [ %i.k, %bb.f ], [ %i.g, %bb.e ]
  %i.l = getelementptr inbounds nuw i8, ptr %.0.i7, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !83
  %i.n = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.m, ptr noundef nonnull dereferenceable(1) %0) #10
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %.split.loop.exit10, label %bb.g

bb.g:                                             ; preds = %X509_PURPOSE_get0.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %bb.b, !llvm.loop !84

.split.loop.exit10:                               ; preds = %X509_PURPOSE_get0.exit
  %i.p = trunc nuw nsw i64 %indvars.iv to i32
  br label %.split.loop.exit

.split.loop.exit:                                 ; preds = %X509_PURPOSE_get_count.exit, %.split.loop.exit10
  %.0 = phi i32 [ %i.p, %.split.loop.exit10 ], [ -1, %X509_PURPOSE_get_count.exit ]
  ret i32 %.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #3

declare i32 @OPENSSL_sk_find(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @X509_PURPOSE_add(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) local_unnamed_addr #0 {
bb.a:
  %7 = alloca %struct.x509_purpose_st, align 8    ; 5 uses
  %8 = alloca %struct.x509_purpose_st, align 8    ; 5 uses
  %i.a = icmp slt i32 %0, 1
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @ERR_new() #9
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 183, ptr noundef nonnull @__func__.X509_PURPOSE_add) #9
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 34, i32 noundef 146, ptr noundef null) #9
  br label %bb.ac

bb.c:                                             ; preds = %bb.a
  %i.b = icmp slt i32 %1, 0
  %i.c = icmp eq ptr %4, null
  %or.cond = or i1 %i.b, %i.c
  %i.d = icmp eq ptr %5, null
  %or.cond3 = or i1 %or.cond, %i.d
  %i.e = icmp eq ptr %3, null
  %or.cond5 = or i1 %i.e, %or.cond3
  br i1 %or.cond5, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @ERR_new() #9
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 187, ptr noundef nonnull @__func__.X509_PURPOSE_add) #9
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 34, i32 noundef 524550, ptr noundef null) #9
  br label %bb.ac

bb.e:                                             ; preds = %bb.c
  %i.f = and i32 %2, -4
  br label %bb.f

bb.f:                                             ; preds = %bb.i, %bb.e
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.i ], [ 0, %bb.e ] ; 8 uses
  %i.g = load ptr, ptr @xptable, align 8, !tbaa !8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %X509_PURPOSE_get_count.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.h = tail call i32 @OPENSSL_sk_num(ptr noundef nonnull %i.g) #9
  %i.i = add i32 %i.h, 10
  %i.j = sext i32 %i.i to i64
  br label %X509_PURPOSE_get_count.exit.i

X509_PURPOSE_get_count.exit.i:                    ; preds = %bb.g, %bb.f
  %.0.i.i = phi i64 [ %i.j, %bb.g ], [ 10, %bb.f ]
  %.not84 = icmp slt i64 %indvars.iv.i, %.0.i.i   ; 3 uses
  br i1 %.not84, label %bb.h, label %X509_PURPOSE_get_by_sname.exit.thread

bb.h:                                             ; preds = %X509_PURPOSE_get_count.exit.i
  %i.k = icmp samesign ult i64 %indvars.iv.i, 10
  br i1 %i.k, label %X509_PURPOSE_get0.exit.i, label %X509_PURPOSE_get0.exit.i.thread

X509_PURPOSE_get0.exit.i:                         ; preds = %bb.h
  %i.l = getelementptr inbounds nuw [48 x i8], ptr @xstandard, i64 %indvars.iv.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.n = load ptr, ptr %i.m, align 16, !tbaa !83
  %i.o = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.n, ptr noundef nonnull readonly dereferenceable(1) %5) #10
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %bb.n, label %bb.i

X509_PURPOSE_get0.exit.i.thread:                  ; preds = %bb.h
  %i.q = load ptr, ptr @xptable, align 8, !tbaa !8
  %i.r = trunc i64 %indvars.iv.i to i32
  %i.s = add i32 %i.r, -10
  %i.t = tail call ptr @OPENSSL_sk_value(ptr noundef %i.q, i32 noundef %i.s) #9
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !83
  %i.w = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.v, ptr noundef nonnull readonly dereferenceable(1) %5) #10
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %bb.o, label %bb.i

bb.i:                                             ; preds = %X509_PURPOSE_get0.exit.i.thread, %X509_PURPOSE_get0.exit.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  br label %bb.f, !llvm.loop !84

X509_PURPOSE_get_by_sname.exit.thread:            ; preds = %X509_PURPOSE_get_count.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #9
  %or.cond.i = icmp ult i32 %0, 11
  br i1 %or.cond.i, label %select.unfold, label %bb.j

bb.j:                                             ; preds = %X509_PURPOSE_get_by_sname.exit.thread
  %i.y = load ptr, ptr @xptable, align 8, !tbaa !8 ; 2 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i32 %0, ptr %8, align 8, !tbaa !11
  %i.aa = call i32 @OPENSSL_sk_find(ptr noundef nonnull %i.y, ptr noundef nonnull %8) #9
  %.inv.i = icmp sgt i32 %i.aa, -1
  br i1 %.inv.i, label %select.unfold, label %bb.l

select.unfold:                                    ; preds = %bb.k, %X509_PURPOSE_get_by_sname.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #9
  call void @ERR_new() #9
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 200, ptr noundef nonnull @__func__.X509_PURPOSE_add) #9
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 34, i32 noundef 173, ptr noundef null) #9
  br label %bb.ac

bb.l:                                             ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #9
  %i.ab = call noalias ptr @CRYPTO_malloc(i64 noundef 48, ptr noundef nonnull @.str, i32 noundef 203) #9 ; 3 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %bb.ac, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store i32 1, ptr %i.ad, align 8, !tbaa !85
  br label %bb.s

bb.n:                                             ; preds = %X509_PURPOSE_get0.exit.i
  %i.ae = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.af = getelementptr inbounds nuw [48 x i8], ptr @xstandard, i64 %indvars.iv.i
  br label %X509_PURPOSE_get0.exit

bb.o:                                             ; preds = %X509_PURPOSE_get0.exit.i.thread
  %i.ag = trunc nuw nsw i64 %indvars.iv.i to i32  ; 2 uses
  %i.ah = load ptr, ptr @xptable, align 8, !tbaa !8
  %i.ai = add nsw i32 %i.ag, -10
  %i.aj = tail call ptr @OPENSSL_sk_value(ptr noundef %i.ah, i32 noundef %i.ai) #9
  br label %X509_PURPOSE_get0.exit

X509_PURPOSE_get0.exit:                           ; preds = %bb.n, %bb.o
  %i.ak = phi i32 [ %i.ag, %bb.o ], [ %i.ae, %bb.n ] ; 2 uses
  %.0.i69 = phi ptr [ %i.aj, %bb.o ], [ %i.af, %bb.n ] ; 3 uses
  %i.al = load i32, ptr %.0.i69, align 8, !tbaa !11
  %.not = icmp eq i32 %0, %i.al
  br i1 %.not, label %bb.s, label %bb.p

end_hunk_0
