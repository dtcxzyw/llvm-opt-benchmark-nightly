Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openssl/original/ex_data?download=true
inline.NumInlined: 36
inline.NumDeleted: 11
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@CRYPTO_dup_ex_data:bb.a
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %.054101, i64 %indvars.iv
  store ptr %i.aa, ptr %i.ab, align 8, !tbaa !28
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %bb.j, label %.lr.ph, !llvm.loop !34

.loopexit80:                                      ; preds = %bb.g
  %i.ac = load ptr, ptr %i.g, align 8, !tbaa !10
  %i.ad = tail call i32 @CRYPTO_THREAD_unlock(ptr noundef %i.ac) #9 ; 0 uses
  %i.ae = icmp eq i32 %spec.select, 0
  %spec.select107 = zext i1 %i.ae to i32
  br label %get_and_lock.exit.thread

bb.j:                                             ; preds = %.lr.ph
  %i.af = load ptr, ptr %i.g, align 8, !tbaa !10
  %i.ag = tail call i32 @CRYPTO_THREAD_unlock(ptr noundef %i.af) #9 ; 0 uses
  %i.ah = add nsw i32 %spec.select, -1            ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !26 ; 2 uses
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %CRYPTO_get_ex_data.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.al = tail call i32 @OPENSSL_sk_num(ptr noundef nonnull %i.aj) #9
  %.not.i.not = icmp sgt i32 %spec.select, %i.al
  br i1 %.not.i.not, label %CRYPTO_get_ex_data.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.am = load ptr, ptr %i.ai, align 8, !tbaa !26
  %i.an = tail call ptr @OPENSSL_sk_value(ptr noundef %i.am, i32 noundef %i.ah) #9
  br label %CRYPTO_get_ex_data.exit

CRYPTO_get_ex_data.exit:                          ; preds = %bb.j, %bb.k, %bb.l
  %.0.i70 = phi ptr [ %i.an, %bb.l ], [ null, %bb.k ], [ null, %bb.j ]
  %i.ao = tail call i32 @CRYPTO_set_ex_data(ptr noundef nonnull %1, i32 noundef %i.ah, ptr noundef %.0.i70)
  %.not65 = icmp eq i32 %i.ao, 0
  br i1 %.not65, label %.loopexit, label %.lr.ph83.preheader

.lr.ph83.preheader:                               ; preds = %CRYPTO_get_ex_data.exit
  %wide.trip.count90 = zext nneg i32 %spec.select to i64
  br label %.lr.ph83

.lr.ph83:                                         ; preds = %.lr.ph83.preheader, %bb.q
  %indvars.iv87 = phi i64 [ 0, %.lr.ph83.preheader ], [ %indvars.iv.next88, %bb.q ] ; 6 uses
  %i.ap = load ptr, ptr %i.d, align 8, !tbaa !26  ; 2 uses
  %i.aq = icmp eq ptr %i.ap, null
  br i1 %i.aq, label %CRYPTO_get_ex_data.exit73, label %bb.m

bb.m:                                             ; preds = %.lr.ph83
  %i.ar = call i32 @OPENSSL_sk_num(ptr noundef nonnull %i.ap) #9
  %i.as = sext i32 %i.ar to i64
  %.not.i71 = icmp slt i64 %indvars.iv87, %i.as
  br i1 %.not.i71, label %bb.n, label %CRYPTO_get_ex_data.exit73

bb.n:                                             ; preds = %bb.m
  %i.at = load ptr, ptr %i.d, align 8, !tbaa !26
  %i.au = trunc nuw nsw i64 %indvars.iv87 to i32
  %i.av = call ptr @OPENSSL_sk_value(ptr noundef %i.at, i32 noundef %i.au) #9
  br label %CRYPTO_get_ex_data.exit73

CRYPTO_get_ex_data.exit73:                        ; preds = %.lr.ph83, %bb.m, %bb.n
  %.0.i72 = phi ptr [ %i.av, %bb.n ], [ null, %bb.m ], [ null, %.lr.ph83 ] ; 3 uses
  store ptr %.0.i72, ptr %i.a, align 8, !tbaa !36
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %.054101, i64 %indvars.iv87
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !28 ; 4 uses
  %.not66 = icmp eq ptr %i.ax, null
  br i1 %.not66, label %bb.q, label %bb.o

bb.o:                                             ; preds = %CRYPTO_get_ex_data.exit73
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 40
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !17 ; 2 uses
  %.not67 = icmp eq ptr %i.az, null
  br i1 %.not67, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ba = load i64, ptr %i.ax, align 8, !tbaa !19
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !20
  %i.bd = trunc nuw nsw i64 %indvars.iv87 to i32
  %i.be = call i32 %i.az(ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %i.a, i32 noundef %i.bd, i64 noundef %i.ba, ptr noundef %i.bc) #9
  %.not68 = icmp eq i32 %i.be, 0
  br i1 %.not68, label %.loopexit, label %._crit_edge

._crit_edge:                                      ; preds = %bb.p
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !36
  br label %bb.q

bb.q:                                             ; preds = %._crit_edge, %bb.o, %CRYPTO_get_ex_data.exit73
  %i.bf = phi ptr [ %.pre, %._crit_edge ], [ %.0.i72, %bb.o ], [ %.0.i72, %CRYPTO_get_ex_data.exit73 ]
  %i.bg = trunc nuw nsw i64 %indvars.iv87 to i32
  %i.bh = call i32 @CRYPTO_set_ex_data(ptr noundef nonnull %1, i32 noundef %i.bg, ptr noundef %i.bf) ; 0 uses
  %indvars.iv.next88 = add nuw nsw i64 %indvars.iv87, 1 ; 2 uses
  %exitcond91.not = icmp eq i64 %indvars.iv.next88, %wide.trip.count90
  br i1 %exitcond91.not, label %.loopexit, label %.lr.ph83, !llvm.loop !35

.loopexit:                                        ; preds = %bb.p, %bb.q, %CRYPTO_get_ex_data.exit
  %.0 = phi i32 [ 0, %CRYPTO_get_ex_data.exit ], [ 0, %bb.p ], [ 1, %bb.q ] ; 2 uses
  %.not69 = icmp eq ptr %.054101, %i.b
  br i1 %.not69, label %get_and_lock.exit.thread, label %bb.r

bb.r:                                             ; preds = %.loopexit
  call void @CRYPTO_free(ptr noundef nonnull %.054101, ptr noundef nonnull @.str, i32 noundef 336) #9
  br label %get_and_lock.exit.thread

get_and_lock.exit.thread:                         ; preds = %.loopexit80, %bb.e, %bb.f, %bb.d, %.thread77, %.loopexit, %bb.r, %bb.b, %bb.a
  %.058 = phi i32 [ 0, %bb.e ], [ 1, %bb.a ], [ 0, %bb.b ], [ 0, %.thread77 ], [ %spec.select107, %.loopexit80 ], [ %.0, %bb.r ], [ %.0, %.loopexit ], [ 0, %bb.d ], [ 0, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret i32 %.058
}

declare i32 @OPENSSL_sk_num(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @CRYPTO_set_ex_data(ptr nofree noundef captures(none) %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !26   ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @OPENSSL_sk_new_null() #9
  %i.e = tail call ptr @OPENSSL_sk_set_thunks(ptr noundef %i.d, ptr noundef nonnull @sk_void_freefunc_thunk) #9 ; 3 uses
  store ptr %i.e, ptr %i.a, align 8, !tbaa !26
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %.sink.split, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = phi ptr [ %i.e, %bb.b ], [ %i.b, %bb.a ]
  %i.h = tail call i32 @OPENSSL_sk_num(ptr noundef nonnull %i.g) #9 ; 2 uses
  %.not15 = icmp sgt i32 %i.h, %1
  br i1 %.not15, label %._crit_edge, label %.lr.ph

bb.d:                                             ; preds = %.lr.ph
  %i.i = add i32 %.016, 1
  %exitcond.not = icmp eq i32 %.016, %1
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !37

.lr.ph:                                           ; preds = %bb.c, %bb.d
  %.016 = phi i32 [ %i.i, %bb.d ], [ %i.h, %bb.c ] ; 2 uses
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !26
  %i.k = tail call i32 @OPENSSL_sk_push(ptr noundef %i.j, ptr noundef null) #9
  %.not14 = icmp eq i32 %i.k, 0
  br i1 %.not14, label %.sink.split, label %bb.d

._crit_edge:                                      ; preds = %bb.d, %bb.c
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !26
  %i.m = tail call ptr @OPENSSL_sk_set(ptr noundef %i.l, i32 noundef %1, ptr noundef %2) #9
  %.not13 = icmp eq ptr %i.m, %2
  br i1 %.not13, label %bb.e, label %.sink.split

.sink.split:                                      ; preds = %.lr.ph, %._crit_edge, %bb.b
  %.sink21 = phi i32 [ 487, %._crit_edge ], [ 474, %bb.b ], [ 481, %.lr.ph ]
  %.sink = phi i32 [ 524550, %._crit_edge ], [ 524303, %bb.b ], [ 524303, %.lr.ph ]
  tail call void @ERR_new() #9
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef %.sink21, ptr noundef nonnull @__func__.CRYPTO_set_ex_data) #9
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 15, i32 noundef %.sink, ptr noundef null) #9
  br label %bb.e

bb.e:                                             ; preds = %.sink.split, %._crit_edge
  %.011 = phi i32 [ 1, %._crit_edge ], [ 0, %.sink.split ]
  ret i32 %.011
}

; Function Attrs: nounwind uwtable
define void @CRYPTO_free_ex_data(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca [10 x %struct.ex_callback_entry], align 16 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #9
  %i.a = load ptr, ptr %2, align 8, !tbaa !25
  %i.b = tail call ptr @ossl_lib_ctx_get_ex_data_global(ptr noundef %i.a) #9 ; 5 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %get_and_lock.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %or.cond.i = icmp ugt i32 %0, 17
  br i1 %or.cond.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @ERR_new() #9
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 37, ptr noundef nonnull @__func__.get_and_lock) #9
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 15, i32 noundef 524550, ptr noundef null) #9
  br label %get_and_lock.exit.thread

bb.d:                                             ; preds = %bb.b
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !10   ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %get_and_lock.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = tail call i32 @CRYPTO_THREAD_read_lock(ptr noundef nonnull %i.d) #9
  %.not13.i = icmp eq i32 %i.f, 0
  br i1 %.not13.i, label %get_and_lock.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.h = zext nneg i32 %0 to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.h ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !13
  %i.k = tail call i32 @OPENSSL_sk_num(ptr noundef %i.j) #9 ; 4 uses
  %i.l = icmp sgt i32 %i.k, 0
  br i1 %i.l, label %bb.g, label %.thread61

bb.g:                                             ; preds = %bb.f
  %i.m = icmp samesign ult i32 %i.k, 10
  br i1 %i.m, label %.lr.ph.preheader, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = zext nneg i32 %i.k to i64
  %i.o = tail call noalias ptr @CRYPTO_malloc_array(i64 noundef %i.n, i64 noundef 16, ptr noundef nonnull @.str, i32 noundef 388) #9 ; 2 uses
  %.not = icmp eq ptr %i.o, null
  br i1 %.not, label %.thread61, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.g, %bb.h
  %.086 = phi ptr [ %i.o, %bb.h ], [ %3, %bb.g ]  ; 5 uses
  %wide.trip.count = zext nneg i32 %i.k to i64    ; 3 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 3 uses
  %i.p = load ptr, ptr %i.i, align 8, !tbaa !13
  %i.q = trunc nuw nsw i64 %indvars.iv to i32     ; 2 uses
  %i.r = tail call ptr @OPENSSL_sk_value(ptr noundef %i.p, i32 noundef %i.q) #9
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %.086, i64 %indvars.iv ; 2 uses
  store ptr %i.r, ptr %i.s, align 8, !tbaa !31
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i32 %i.q, ptr %i.t, align 8, !tbaa !40
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.lr.ph68, label %.lr.ph, !llvm.loop !38

.thread61:                                        ; preds = %bb.f, %bb.h
  %i.u = load ptr, ptr %i.b, align 8, !tbaa !10
  %i.v = tail call i32 @CRYPTO_THREAD_unlock(ptr noundef %i.u) #9 ; 0 uses
  br label %bb.o

.lr.ph68:                                         ; preds = %.lr.ph
  %i.w = load ptr, ptr %i.b, align 8, !tbaa !10
  %i.x = tail call i32 @CRYPTO_THREAD_unlock(ptr noundef %i.w) #9 ; 0 uses
  call void @qsort(ptr noundef nonnull %.086, i64 noundef %wide.trip.count, i64 noundef 16, ptr noundef nonnull @ex_callback_compare) #9
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph68, %bb.n
  %indvars.iv71 = phi i64 [ 0, %.lr.ph68 ], [ %indvars.iv.next72, %bb.n ] ; 2 uses
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %.086, i64 %indvars.iv71 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !31  ; 4 uses
  %.not54 = icmp eq ptr %i.aa, null
  br i1 %.not54, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 32 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !18
  %.not55 = icmp eq ptr %i.ac, null
  br i1 %.not55, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !40 ; 2 uses
  %i.af = load ptr, ptr %i.y, align 8, !tbaa !26  ; 2 uses
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %CRYPTO_get_ex_data.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ah = call i32 @OPENSSL_sk_num(ptr noundef nonnull %i.af) #9
  %.not.i = icmp slt i32 %i.ae, %i.ah
  br i1 %.not.i, label %bb.m, label %CRYPTO_get_ex_data.exit

bb.m:                                             ; preds = %bb.l
  %i.ai = load ptr, ptr %i.y, align 8, !tbaa !26
  %i.aj = call ptr @OPENSSL_sk_value(ptr noundef %i.ai, i32 noundef %i.ae) #9
  br label %CRYPTO_get_ex_data.exit

CRYPTO_get_ex_data.exit:                          ; preds = %bb.k, %bb.l, %bb.m
  %.0.i56 = phi ptr [ %i.aj, %bb.m ], [ null, %bb.l ], [ null, %bb.k ]
  %i.ak = load ptr, ptr %i.ab, align 8, !tbaa !18
  %i.al = load i32, ptr %i.ad, align 8, !tbaa !40
  %i.am = load i64, ptr %i.aa, align 8, !tbaa !19
  %i.an = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !20
  call void %i.ak(ptr noundef %1, ptr noundef %.0.i56, ptr noundef nonnull %2, i32 noundef %i.al, i64 noundef %i.am, ptr noundef %i.ao) #9
  br label %bb.n

bb.n:                                             ; preds = %bb.i, %bb.j, %CRYPTO_get_ex_data.exit
  %indvars.iv.next72 = add nuw nsw i64 %indvars.iv71, 1 ; 2 uses
  %exitcond76.not = icmp eq i64 %indvars.iv.next72, %wide.trip.count
  br i1 %exitcond76.not, label %._crit_edge69, label %bb.i, !llvm.loop !39

._crit_edge69:                                    ; preds = %bb.n
  %.not53 = icmp eq ptr %.086, %3
  br i1 %.not53, label %get_and_lock.exit.thread, label %bb.o

bb.o:                                             ; preds = %.thread61, %._crit_edge69
  %.16064 = phi ptr [ null, %.thread61 ], [ %.086, %._crit_edge69 ]
  call void @CRYPTO_free(ptr noundef %.16064, ptr noundef nonnull @.str, i32 noundef 411) #9
  br label %get_and_lock.exit.thread

get_and_lock.exit.thread:                         ; preds = %bb.d, %bb.e, %bb.c, %._crit_edge69, %bb.o, %bb.a
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !26
  call void @OPENSSL_sk_free(ptr noundef %i.aq) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  ret void
}

; Function Attrs: nofree
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 -1, 2) i32 @ex_callback_compare(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #5 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !31     ; 3 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !31     ; 3 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp eq ptr %i.a, null
  br i1 %i.d, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = icmp eq ptr %i.b, null
  br i1 %i.e, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.g = load i32, ptr %i.f, align 8, !tbaa !21   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.i = load i32, ptr %i.h, align 8, !tbaa !21   ; 2 uses
  %i.j = icmp eq i32 %i.g, %i.i
  br i1 %i.j, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = icmp sgt i32 %i.g, %i.i
  %i.l = select i1 %i.k, i32 -1, i32 1
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.a, %bb.e
  %.0 = phi i32 [ %i.l, %bb.e ], [ 0, %bb.a ], [ 1, %bb.b ], [ -1, %bb.c ], [ 0, %bb.d ]
  ret i32 %.0
}

declare void @OPENSSL_sk_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @CRYPTO_alloc_ex_data(i32 noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !26   ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %CRYPTO_get_ex_data.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @OPENSSL_sk_num(ptr noundef nonnull %i.b) #9
  %.not.i = icmp slt i32 %3, %i.d
  br i1 %.not.i, label %CRYPTO_get_ex_data.exit, label %CRYPTO_get_ex_data.exit.thread

CRYPTO_get_ex_data.exit:                          ; preds = %bb.b
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !26
  %i.f = tail call ptr @OPENSSL_sk_value(ptr noundef %i.e, i32 noundef %3) #9
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %CRYPTO_get_ex_data.exit.thread, label %bb.c

CRYPTO_get_ex_data.exit.thread:                   ; preds = %bb.a, %bb.b, %CRYPTO_get_ex_data.exit
  %i.g = tail call i32 @ossl_crypto_alloc_ex_data_intern(i32 noundef %0, ptr noundef %1, ptr noundef nonnull %2, i32 noundef %3)
  br label %bb.c

bb.c:                                             ; preds = %CRYPTO_get_ex_data.exit, %CRYPTO_get_ex_data.exit.thread
  %.0 = phi i32 [ %i.g, %CRYPTO_get_ex_data.exit.thread ], [ 1, %CRYPTO_get_ex_data.exit ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @ossl_crypto_alloc_ex_data_intern(i32 noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !25
  %i.b = tail call ptr @ossl_lib_ctx_get_ex_data_global(ptr noundef %i.a) #9 ; 4 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %get_and_lock.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %or.cond.i = icmp ugt i32 %0, 17
  br i1 %or.cond.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @ERR_new() #9
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 37, ptr noundef nonnull @__func__.get_and_lock) #9
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 15, i32 noundef 524550, ptr noundef null) #9
  br label %get_and_lock.exit.thread

bb.d:                                             ; preds = %bb.b
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !10   ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %get_and_lock.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = tail call i32 @CRYPTO_THREAD_read_lock(ptr noundef nonnull %i.d) #9
  %.not13.i = icmp eq i32 %i.f, 0
  br i1 %.not13.i, label %get_and_lock.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.h = zext nneg i32 %0 to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.h
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !13
  %i.k = tail call ptr @OPENSSL_sk_value(ptr noundef %i.j, i32 noundef %3) #9 ; 3 uses
  %i.l = load ptr, ptr %i.b, align 8, !tbaa !10
  %i.m = tail call i32 @CRYPTO_THREAD_unlock(ptr noundef %i.l) #9 ; 0 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !16   ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %get_and_lock.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = load i64, ptr %i.k, align 8, !tbaa !19
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !20
  tail call void %i.o(ptr noundef %1, ptr noundef null, ptr noundef nonnull %2, i32 noundef %3, i64 noundef %i.q, ptr noundef %i.s) #9
  br label %get_and_lock.exit.thread

get_and_lock.exit.thread:                         ; preds = %bb.d, %bb.e, %bb.c, %bb.f, %bb.a, %bb.g
  %.0 = phi i32 [ 1, %bb.g ], [ 0, %bb.a ], [ 0, %bb.f ], [ 0, %bb.c ], [ 0, %bb.e ], [ 0, %bb.d ]
  ret i32 %.0
}

declare ptr @OPENSSL_sk_set_thunks(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @OPENSSL_sk_new_null() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal void @sk_void_freefunc_thunk(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #6 {
bb.a:
  tail call void %0(ptr noundef %1) #9
  ret void
}

declare i32 @OPENSSL_sk_push(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @OPENSSL_sk_set(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @OPENSSL_sk_value(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal void @sk_EX_CALLBACK_freefunc_thunk(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #6 {
bb.a:
  tail call void %0(ptr noundef %1) #9
  ret void
}

declare void @OPENSSL_sk_pop_free(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @CRYPTO_THREAD_read_lock(ptr noundef) local_unnamed_addr #2

declare i32 @CRYPTO_THREAD_write_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"any pointer", !4, i64 0}
end_hunk_0
