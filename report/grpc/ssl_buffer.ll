Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/ssl_buffer?download=true
inline.NumInlined: 46
inline.NumDeleted: 17
begin_hunk_0_@free
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN4bssl9SSLBuffer9EnsureCapEmm(ptr noundef nonnull align 8 dereferenceable(19) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = icmp ugt i64 %2, 65535
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @ERR_put_error(i32 noundef 16, i32 noundef 0, i32 noundef 68, ptr noundef nonnull @.str, i32 noundef 51)
  br label %bb.m

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.c = load i16, ptr %i.b, align 4, !tbaa !16
  %i.d = zext i16 %i.c to i64
  %.not = icmp samesign ugt i64 %2, %i.d
  br i1 %.not, label %bb.d, label %bb.m

bb.d:                                             ; preds = %bb.c
  %i.e = icmp samesign ult i64 %2, 6
  br i1 %i.e, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 14
  br label %bb.i

bb.f:                                             ; preds = %bb.d
  %i.g = add nuw nsw i64 %2, 7
  %i.h = tail call noalias ptr @malloc(i64 noundef %i.g) #10 ; 3 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @ERR_put_error(i32 noundef 16, i32 noundef 0, i32 noundef 65, ptr noundef nonnull @.str, i32 noundef 74)
  br label %bb.m

bb.h:                                             ; preds = %bb.f
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = add i64 %1, %i.j
  %i.l = sub i64 0, %i.k
  %i.m = and i64 %i.l, 7
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.e
  %.013 = phi ptr [ %i.f, %bb.e ], [ %i.h, %bb.h ] ; 2 uses
  %.0 = phi i64 [ 0, %bb.e ], [ %i.m, %bb.h ]     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.p = load i16, ptr %i.o, align 2, !tbaa !17   ; 2 uses
  %i.q = icmp eq i16 %i.p, 0
  br i1 %i.q, label %_ZL15OPENSSL_memmovePvPKvm.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.r = zext i16 %i.p to i64
  %i.s = load ptr, ptr %0, align 8, !tbaa !15
  %i.t = load i16, ptr %i.n, align 8, !tbaa !18
  %i.u = zext i16 %i.t to i64
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %.013, i64 %.0
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.w, ptr readonly align 1 %i.v, i64 range(i64 0, 65536) %i.r, i1 false)
  br label %_ZL15OPENSSL_memmovePvPKvm.exit

_ZL15OPENSSL_memmovePvPKvm.exit:                  ; preds = %bb.i, %bb.j
  %i.x = load ptr, ptr %0, align 8, !tbaa !15     ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 14
  %.not18 = icmp eq ptr %i.x, %i.y
  br i1 %.not18, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZL15OPENSSL_memmovePvPKvm.exit
  tail call void @free(ptr noundef %i.x) #9
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZL15OPENSSL_memmovePvPKvm.exit
  store ptr %.013, ptr %0, align 8, !tbaa !15
  %i.z = trunc nuw nsw i64 %.0 to i16
  store i16 %i.z, ptr %i.n, align 8, !tbaa !18
  %i.aa = trunc nuw i64 %2 to i16
  store i16 %i.aa, ptr %i.b, align 4, !tbaa !16
  br label %bb.m

bb.m:                                             ; preds = %bb.g, %bb.l, %bb.c, %bb.b
  %.1 = phi i1 [ false, %bb.b ], [ true, %bb.c ], [ true, %bb.l ], [ false, %bb.g ]
  ret i1 %.1
}

declare void @ERR_put_error(i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind uwtable
define hidden void @_ZN4bssl9SSLBuffer8DidWriteEm(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(19) %0, i64 noundef %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i16, ptr %i.a, align 4, !tbaa !16
  %i.c = zext i16 %i.b to i64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 2 uses
  %i.e = load i16, ptr %i.d, align 2, !tbaa !17   ; 2 uses
  %i.f = zext i16 %i.e to i64
  %i.g = sub nsw i64 %i.c, %i.f
  %i.h = icmp ugt i64 %1, %i.g
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @abort() #11
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.i = trunc i64 %1 to i16
  %i.j = add i16 %i.e, %i.i
  store i16 %i.j, ptr %i.d, align 2, !tbaa !17
  ret void
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind uwtable
define hidden void @_ZN4bssl9SSLBuffer7ConsumeEm(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(19) %0, i64 noundef %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 2 uses
  %i.b = load i16, ptr %i.a, align 2, !tbaa !17   ; 2 uses
  %i.c = zext i16 %i.b to i64
  %i.d = icmp ugt i64 %1, %i.c
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @abort() #11
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = trunc nuw i64 %1 to i16                  ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load i16, ptr %i.f, align 8, !tbaa !18
  %i.h = add i16 %i.g, %i.e
  store i16 %i.h, ptr %i.f, align 8, !tbaa !18
  %i.i = sub nuw i16 %i.b, %i.e
  store i16 %i.i, ptr %i.a, align 2, !tbaa !17
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.k = load i16, ptr %i.j, align 4, !tbaa !16
  %i.l = sub i16 %i.k, %i.e
  store i16 %i.l, ptr %i.j, align 4, !tbaa !16
  ret void
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define hidden void @_ZN4bssl9SSLBuffer15DiscardConsumedEv(ptr nofree noundef nonnull align 8 captures(address) dereferenceable(19) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.b = load i16, ptr %i.a, align 2, !tbaa !17
  %i.c = icmp eq i16 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !15     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 14
  %.not.i = icmp eq ptr %i.d, %i.e
  br i1 %.not.i, label %_ZN4bssl9SSLBuffer5ClearEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @free(ptr noundef %i.d) #9
  br label %_ZN4bssl9SSLBuffer5ClearEv.exit

_ZN4bssl9SSLBuffer5ClearEv.exit:                  ; preds = %bb.b, %bb.c
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(19) %0, i8 0, i64 14, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %_ZN4bssl9SSLBuffer5ClearEv.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef range(i32 -2147483648, 2) i32 @_ZN4bssl25ssl_read_buffer_extend_toEP6ssl_stm(ptr noundef %0, i64 noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 6 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !62   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 80 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 90
  %i.e = load i16, ptr %i.d, align 2, !tbaa !17
  %i.f = icmp eq i16 %i.e, 0
  br i1 %i.f, label %bb.b, label %_ZN4bssl9SSLBuffer15DiscardConsumedEv.exit

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.c, align 8, !tbaa !15   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 94
  %.not.i.i = icmp eq ptr %i.g, %i.h
  br i1 %.not.i.i, label %_ZN4bssl9SSLBuffer5ClearEv.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @free(ptr noundef %i.g) #9
  br label %_ZN4bssl9SSLBuffer5ClearEv.exit.i

_ZN4bssl9SSLBuffer5ClearEv.exit.i:                ; preds = %bb.c, %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(19) %i.c, i8 0, i64 14, i1 false)
  br label %_ZN4bssl9SSLBuffer15DiscardConsumedEv.exit

_ZN4bssl9SSLBuffer15DiscardConsumedEv.exit:       ; preds = %bb.a, %_ZN4bssl9SSLBuffer5ClearEv.exit.i
  %i.i = tail call i32 @SSL_is_dtls(ptr noundef nonnull %0)
  %.not = icmp eq i32 %i.i, 0
  %spec.select = select i1 %.not, i64 %1, i64 16717 ; 9 uses
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !62   ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 80 ; 3 uses
  %2 = icmp ugt i64 %spec.select, 65535
  br i1 %2, label %3, label %4

3:                                                ; preds = %_ZN4bssl9SSLBuffer15DiscardConsumedEv.exit
  tail call void @ERR_put_error(i32 noundef 16, i32 noundef 0, i32 noundef 68, ptr noundef nonnull @.str, i32 noundef 51)
  br label %_ZN4bsslL28dtls_read_buffer_next_packetEP6ssl_st.exit

4:                                                ; preds = %_ZN4bssl9SSLBuffer15DiscardConsumedEv.exit
  %5 = getelementptr inbounds nuw i8, ptr %i.j, i64 92 ; 2 uses
  %6 = load i16, ptr %5, align 4, !tbaa !16
  %7 = zext i16 %6 to i64
  %.not.i = icmp samesign ugt i64 %spec.select, %7
  br i1 %.not.i, label %8, label %bb.d

8:                                                ; preds = %4
  %9 = icmp samesign ult i64 %spec.select, 6
  br i1 %9, label %10, label %12

10:                                               ; preds = %8
  %11 = getelementptr inbounds nuw i8, ptr %i.j, i64 94
  br label %21

12:                                               ; preds = %8
  %13 = add nuw nsw i64 %spec.select, 7
  %14 = tail call noalias ptr @malloc(i64 noundef %13) #10 ; 3 uses
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  tail call void @ERR_put_error(i32 noundef 16, i32 noundef 0, i32 noundef 65, ptr noundef nonnull @.str, i32 noundef 74)
  br label %_ZN4bsslL28dtls_read_buffer_next_packetEP6ssl_st.exit

17:                                               ; preds = %12
  %18 = ptrtoint ptr %14 to i64
  %19 = sub i64 3, %18
  %20 = and i64 %19, 7
  br label %21

21:                                               ; preds = %17, %10
  %.013.i = phi ptr [ %11, %10 ], [ %14, %17 ]    ; 2 uses
  %.0.i = phi i64 [ 0, %10 ], [ %20, %17 ]        ; 2 uses
  %22 = getelementptr inbounds nuw i8, ptr %i.j, i64 88 ; 2 uses
  %23 = getelementptr inbounds nuw i8, ptr %i.j, i64 90
  %24 = load i16, ptr %23, align 2, !tbaa !17     ; 2 uses
  %25 = icmp eq i16 %24, 0
  br i1 %25, label %_ZL15OPENSSL_memmovePvPKvm.exit.i, label %26

26:                                               ; preds = %21
  %27 = zext i16 %24 to i64
  %28 = load ptr, ptr %i.k, align 8, !tbaa !15
  %29 = load i16, ptr %22, align 8, !tbaa !18
  %30 = zext i16 %29 to i64
  %31 = getelementptr inbounds nuw i8, ptr %28, i64 %30
  %32 = getelementptr inbounds nuw i8, ptr %.013.i, i64 %.0.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %32, ptr readonly align 1 %31, i64 range(i64 0, 65536) %27, i1 false)
  br label %_ZL15OPENSSL_memmovePvPKvm.exit.i

_ZL15OPENSSL_memmovePvPKvm.exit.i:                ; preds = %26, %21
  %33 = load ptr, ptr %i.k, align 8, !tbaa !15    ; 2 uses
  %34 = getelementptr inbounds nuw i8, ptr %i.j, i64 94
  %.not18.i = icmp eq ptr %33, %34
  br i1 %.not18.i, label %36, label %35

35:                                               ; preds = %_ZL15OPENSSL_memmovePvPKvm.exit.i
  tail call void @free(ptr noundef %33) #9
  br label %36

36:                                               ; preds = %35, %_ZL15OPENSSL_memmovePvPKvm.exit.i
  store ptr %.013.i, ptr %i.k, align 8, !tbaa !15
  %37 = trunc nuw nsw i64 %.0.i to i16
  store i16 %37, ptr %22, align 8, !tbaa !18
  %38 = trunc nuw i64 %spec.select to i16
  store i16 %38, ptr %5, align 4, !tbaa !16
  br label %bb.d

bb.d:                                             ; preds = %4, %36
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !63
  %.not.i.a = icmp eq ptr %i.m, null
  br i1 %.not.i.a, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @ERR_put_error(i32 noundef 16, i32 noundef 0, i32 noundef 119, ptr noundef nonnull @.str, i32 noundef 185)
  br label %_ZN4bsslL28dtls_read_buffer_next_packetEP6ssl_st.exit

bb.f:                                             ; preds = %bb.d
  %i.n = tail call i32 @SSL_is_dtls(ptr noundef nonnull %0)
  %.not14 = icmp eq i32 %i.n, 0
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !62   ; 8 uses
  br i1 %.not14, label %bb.m, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 90 ; 3 uses
  %i.q = load i16, ptr %i.p, align 2, !tbaa !17
  %i.r = icmp eq i16 %i.q, 0
  br i1 %i.r, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @ERR_put_error(i32 noundef 16, i32 noundef 0, i32 noundef 68, ptr noundef nonnull @.str, i32 noundef 125)
  br label %bb.s

bb.i:                                             ; preds = %bb.g
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 80
  %i.t = load ptr, ptr %i.l, align 8, !tbaa !63
  %i.u = load ptr, ptr %i.s, align 8, !tbaa !15
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 88
  %i.w = load i16, ptr %i.v, align 8, !tbaa !18
  %i.x = zext i16 %i.w to i64
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %i.o, i64 92 ; 2 uses
  %i.aa = load i16, ptr %i.z, align 4, !tbaa !16
  %i.ab = zext i16 %i.aa to i32
  %i.ac = tail call i32 @BIO_read(ptr noundef %i.t, ptr noundef %i.y, i32 noundef %i.ab) ; 4 uses
  %i.ad = icmp slt i32 %i.ac, 1
  br i1 %i.ad, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ae = load ptr, ptr %i.a, align 8, !tbaa !62
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 196
  store i32 2, ptr %i.af, align 4, !tbaa !104
  br label %bb.s

bb.k:                                             ; preds = %bb.i
  %i.ag = zext nneg i32 %i.ac to i64
  %i.ah = load i16, ptr %i.z, align 4, !tbaa !16
  %i.ai = zext i16 %i.ah to i64
  %i.aj = load i16, ptr %i.p, align 2, !tbaa !17  ; 2 uses
  %i.ak = zext i16 %i.aj to i64
  %i.al = sub nsw i64 %i.ai, %i.ak
  %i.am = icmp ult i64 %i.al, %i.ag
  br i1 %i.am, label %bb.l, label %_ZN4bssl9SSLBuffer8DidWriteEm.exit.i

bb.l:                                             ; preds = %bb.k
  tail call void @abort() #11
  unreachable

_ZN4bssl9SSLBuffer8DidWriteEm.exit.i:             ; preds = %bb.k
  %i.an = trunc i32 %i.ac to i16
  %i.ao = add i16 %i.aj, %i.an
  store i16 %i.ao, ptr %i.p, align 2, !tbaa !17
  br label %_ZN4bsslL28dtls_read_buffer_next_packetEP6ssl_st.exit

bb.m:                                             ; preds = %bb.f
  %i.ap = getelementptr inbounds nuw i8, ptr %i.o, i64 80
  %i.aq = getelementptr inbounds nuw i8, ptr %i.o, i64 92 ; 2 uses
  %i.ar = load i16, ptr %i.aq, align 4, !tbaa !16
  %i.as = zext i16 %i.ar to i64
  %i.at = icmp samesign ugt i64 %spec.select, %i.as
  br i1 %i.at, label %bb.n, label %.preheader.i

.preheader.i:                                     ; preds = %bb.m
  %i.au = getelementptr inbounds nuw i8, ptr %i.o, i64 90 ; 3 uses
  %i.av = load i16, ptr %i.au, align 2, !tbaa !17
  %i.aw = zext i16 %i.av to i64                   ; 2 uses
  %i.ax = icmp samesign ugt i64 %spec.select, %i.aw
  br i1 %i.ax, label %.lr.ph.i, label %_ZN4bsslL28dtls_read_buffer_next_packetEP6ssl_st.exit

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.o, i64 88
  br label %bb.o

bb.n:                                             ; preds = %bb.m
  tail call void @ERR_put_error(i32 noundef 16, i32 noundef 0, i32 noundef 121, ptr noundef nonnull @.str, i32 noundef 144)
  br label %bb.s

bb.o:                                             ; preds = %bb.r, %.lr.ph.i
  %i.az = phi i64 [ %i.aw, %.lr.ph.i ], [ %i.bv, %bb.r ] ; 2 uses
  %i.ba = load ptr, ptr %i.l, align 8, !tbaa !63
  %i.bb = load ptr, ptr %i.ap, align 8, !tbaa !15
  %i.bc = load i16, ptr %i.ay, align 8, !tbaa !18
  %i.bd = zext i16 %i.bc to i64
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.bd
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.az
  %i.bg = sub nuw nsw i64 %spec.select, %i.az
  %i.bh = trunc nuw nsw i64 %i.bg to i32
  %i.bi = tail call i32 @BIO_read(ptr noundef %i.ba, ptr noundef %i.bf, i32 noundef %i.bh) ; 4 uses
  %i.bj = icmp sgt i32 %i.bi, 0
  br i1 %i.bj, label %bb.p, label %.thread.i

.thread.i:                                        ; preds = %bb.o
  %i.bk = load ptr, ptr %i.a, align 8, !tbaa !62
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 196
  store i32 2, ptr %i.bl, align 4, !tbaa !104
  br label %bb.s

bb.p:                                             ; preds = %bb.o
  %i.bm = zext nneg i32 %i.bi to i64
  %i.bn = load i16, ptr %i.aq, align 4, !tbaa !16
  %i.bo = zext i16 %i.bn to i64
  %i.bp = load i16, ptr %i.au, align 2, !tbaa !17 ; 2 uses
  %i.bq = zext i16 %i.bp to i64
  %i.br = sub nsw i64 %i.bo, %i.bq
  %i.bs = icmp ult i64 %i.br, %i.bm
  br i1 %i.bs, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  tail call void @abort() #11
  unreachable

bb.r:                                             ; preds = %bb.p
  %i.bt = trunc i32 %i.bi to i16
  %i.bu = add i16 %i.bp, %i.bt                    ; 2 uses
  store i16 %i.bu, ptr %i.au, align 2, !tbaa !17
  %i.bv = zext i16 %i.bu to i64                   ; 2 uses
  %i.bw = icmp ugt i64 %spec.select, %i.bv
  br i1 %i.bw, label %bb.o, label %_ZN4bsslL28dtls_read_buffer_next_packetEP6ssl_st.exit, !llvm.loop !106

bb.s:                                             ; preds = %bb.h, %bb.j, %bb.n, %.thread.i
  %.0.ph = phi i32 [ %i.bi, %.thread.i ], [ -1, %bb.n ], [ %i.ac, %bb.j ], [ -1, %bb.h ] ; 2 uses
  %i.bx = load ptr, ptr %i.a, align 8, !tbaa !62  ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 80 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 90
  %i.ca = load i16, ptr %i.bz, align 2, !tbaa !17
  %i.cb = icmp eq i16 %i.ca, 0
  br i1 %i.cb, label %bb.t, label %_ZN4bsslL28dtls_read_buffer_next_packetEP6ssl_st.exit

bb.t:                                             ; preds = %bb.s
  %i.cc = load ptr, ptr %i.by, align 8, !tbaa !15 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bx, i64 94
  %.not.i.i15 = icmp eq ptr %i.cc, %i.cd
  br i1 %.not.i.i15, label %_ZN4bssl9SSLBuffer5ClearEv.exit.i16, label %bb.u

bb.u:                                             ; preds = %bb.t
  tail call void @free(ptr noundef %i.cc) #9
  br label %_ZN4bssl9SSLBuffer5ClearEv.exit.i16

_ZN4bssl9SSLBuffer5ClearEv.exit.i16:              ; preds = %bb.u, %bb.t
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(19) %i.by, i8 0, i64 14, i1 false)
  br label %_ZN4bsslL28dtls_read_buffer_next_packetEP6ssl_st.exit

_ZN4bsslL28dtls_read_buffer_next_packetEP6ssl_st.exit: ; preds = %bb.r, %_ZN4bssl9SSLBuffer5ClearEv.exit.i16, %bb.s, %_ZN4bssl9SSLBuffer8DidWriteEm.exit.i, %.preheader.i, %16, %3, %bb.e
  %.013 = phi i32 [ -1, %bb.e ], [ -1, %16 ], [ %.0.ph, %_ZN4bssl9SSLBuffer5ClearEv.exit.i16 ], [ -1, %3 ], [ 1, %_ZN4bssl9SSLBuffer8DidWriteEm.exit.i ], [ 1, %.preheader.i ], [ %.0.ph, %bb.s ], [ 1, %bb.r ]
  ret i32 %.013
}

declare i32 @SSL_is_dtls(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define hidden noundef range(i32 -2147483648, 2) i32 @_ZN4bssl22ssl_handle_open_recordEP6ssl_stPbNS_17ssl_open_record_tEmh(ptr noundef %0, ptr nofree noundef writeonly captures(none) initializes((0, 1)) %1, i32 noundef %2, i64 noundef %3, i8 noundef zeroext %4) local_unnamed_addr #2 {
bb.a:
  store i8 0, ptr %1, align 1, !tbaa !107
  %cond = icmp eq i32 %2, 2
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !62 ; 5 uses
  %.phi.trans.insert22 = getelementptr inbounds nuw i8, ptr %.pre, i64 90 ; 2 uses
  %.pre23 = load i16, ptr %.phi.trans.insert22, align 2, !tbaa !17 ; 3 uses
  br i1 %cond, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = zext i16 %.pre23 to i64
  %i.b = icmp ugt i64 %3, %i.a
  br i1 %i.b, label %bb.c, label %_ZN4bssl9SSLBuffer7ConsumeEm.exit

bb.c:                                             ; preds = %bb.b
  tail call void @abort() #11
  unreachable

_ZN4bssl9SSLBuffer7ConsumeEm.exit:                ; preds = %bb.b
  %i.c = trunc nuw i64 %3 to i16                  ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.pre, i64 88 ; 2 uses
  %i.e = load i16, ptr %i.d, align 8, !tbaa !18
  %i.f = add i16 %i.e, %i.c
  store i16 %i.f, ptr %i.d, align 8, !tbaa !18
  %i.g = sub nuw i16 %.pre23, %i.c                ; 2 uses
  store i16 %i.g, ptr %.phi.trans.insert22, align 2, !tbaa !17
  %i.h = getelementptr inbounds nuw i8, ptr %.pre, i64 92 ; 2 uses
  %i.i = load i16, ptr %i.h, align 4, !tbaa !16
  %i.j = sub i16 %i.i, %i.c
  store i16 %i.j, ptr %i.h, align 4, !tbaa !16
  %cond21 = icmp eq i32 %2, 0
  br i1 %cond21, label %bb.m, label %._crit_edge

._crit_edge:                                      ; preds = %bb.a, %_ZN4bssl9SSLBuffer7ConsumeEm.exit
  %i.k = phi i16 [ %i.g, %_ZN4bssl9SSLBuffer7ConsumeEm.exit ], [ %.pre23, %bb.a ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.m = getelementptr inbounds nuw i8, ptr %.pre, i64 80 ; 2 uses
  %i.n = icmp eq i16 %i.k, 0
  br i1 %i.n, label %bb.d, label %_ZN4bssl9SSLBuffer15DiscardConsumedEv.exit

bb.d:                                             ; preds = %._crit_edge
  %i.o = load ptr, ptr %i.m, align 8, !tbaa !15   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.pre, i64 94
  %.not.i.i = icmp eq ptr %i.o, %i.p
  br i1 %.not.i.i, label %_ZN4bssl9SSLBuffer5ClearEv.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @free(ptr noundef %i.o) #9
  br label %_ZN4bssl9SSLBuffer5ClearEv.exit.i

_ZN4bssl9SSLBuffer5ClearEv.exit.i:                ; preds = %bb.e, %bb.d
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(19) %i.m, i8 0, i64 14, i1 false)
  br label %_ZN4bssl9SSLBuffer15DiscardConsumedEv.exit

_ZN4bssl9SSLBuffer15DiscardConsumedEv.exit:       ; preds = %._crit_edge, %_ZN4bssl9SSLBuffer5ClearEv.exit.i
  switch i32 %2, label %bb.l [
    i32 0, label %bb.m
    i32 2, label %bb.f
    i32 1, label %bb.h
    i32 3, label %bb.i
    i32 4, label %bb.j
  ]

bb.f:                                             ; preds = %_ZN4bssl9SSLBuffer15DiscardConsumedEv.exit
  %i.q = tail call noundef i32 @_ZN4bssl25ssl_read_buffer_extend_toEP6ssl_stm(ptr noundef nonnull %0, i64 noundef %3) ; 2 uses
  %i.r = icmp slt i32 %i.q, 1
  br i1 %i.r, label %bb.m, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i8 1, ptr %1, align 1, !tbaa !107
  br label %bb.m

bb.h:                                             ; preds = %_ZN4bssl9SSLBuffer15DiscardConsumedEv.exit
  store i8 1, ptr %1, align 1, !tbaa !107
  br label %bb.m

bb.i:                                             ; preds = %_ZN4bssl9SSLBuffer15DiscardConsumedEv.exit
  %i.s = load ptr, ptr %i.l, align 8, !tbaa !62
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 196
  store i32 6, ptr %i.t, align 4, !tbaa !104
  br label %bb.m

bb.j:                                             ; preds = %_ZN4bssl9SSLBuffer15DiscardConsumedEv.exit
  %.not20 = icmp eq i8 %4, 0
  br i1 %.not20, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.u = zext i8 %4 to i32
  tail call void @_ZN4bssl14ssl_send_alertEP6ssl_stii(ptr noundef nonnull %0, i32 noundef 2, i32 noundef %i.u)
  br label %bb.m

bb.l:                                             ; preds = %_ZN4bssl9SSLBuffer15DiscardConsumedEv.exit
  br label %bb.m

bb.m:                                             ; preds = %_ZN4bssl9SSLBuffer7ConsumeEm.exit, %bb.j, %bb.k, %bb.g, %bb.f, %_ZN4bssl9SSLBuffer15DiscardConsumedEv.exit, %bb.l, %bb.i, %bb.h
  %.1 = phi i32 [ -1, %bb.l ], [ %i.q, %bb.f ], [ 1, %_ZN4bssl9SSLBuffer15DiscardConsumedEv.exit ], [ 1, %bb.h ], [ 0, %bb.i ], [ 1, %_ZN4bssl9SSLBuffer7ConsumeEm.exit ], [ 1, %bb.g ], [ -1, %bb.k ], [ -1, %bb.j ]
  ret i32 %.1
}

declare void @_ZN4bssl14ssl_send_alertEP6ssl_stii(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define hidden noundef range(i32 -2147483648, 2) i32 @_ZN4bssl22ssl_write_buffer_flushEP6ssl_st(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !63
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @ERR_put_error(i32 noundef 16, i32 noundef 0, i32 noundef 119, ptr noundef nonnull @.str, i32 noundef 294)
  br label %_ZN4bsslL23dtls_write_buffer_flushEP6ssl_st.exit

bb.c:                                             ; preds = %bb.a
  %i.c = tail call i32 @SSL_is_dtls(ptr noundef nonnull %0)
  %.not = icmp eq i32 %i.c, 0
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !62   ; 8 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 104 ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 114 ; 3 uses
  %i.h = load i16, ptr %i.g, align 2, !tbaa !17   ; 3 uses
  %i.i = icmp eq i16 %i.h, 0                      ; 2 uses
  br i1 %.not, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  br i1 %i.i, label %_ZN4bsslL23dtls_write_buffer_flushEP6ssl_st.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !63
  %i.k = load ptr, ptr %i.f, align 8, !tbaa !15
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 112
  %i.m = load i16, ptr %i.l, align 8, !tbaa !18
  %i.n = zext i16 %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.n
  %i.p = zext i16 %i.h to i32
  %i.q = tail call i32 @BIO_write(ptr noundef %i.j, ptr noundef %i.o, i32 noundef %i.p) ; 3 uses
  %i.r = icmp slt i32 %i.q, 1
  br i1 %i.r, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.s = load ptr, ptr %i.d, align 8, !tbaa !62
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 196
  store i32 3, ptr %i.t, align 4, !tbaa !104
  %i.u = load ptr, ptr %i.f, align 8, !tbaa !15   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 118
  %.not.i.i = icmp eq ptr %i.u, %i.v
  br i1 %.not.i.i, label %.sink.split.i, label %.sink.split.sink.split.i

bb.g:                                             ; preds = %bb.e
  %i.w = load ptr, ptr %i.f, align 8, !tbaa !15   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.e, i64 118
  %.not.i11.i = icmp eq ptr %i.w, %i.x
  br i1 %.not.i11.i, label %.sink.split.i, label %.sink.split.sink.split.i

.sink.split.sink.split.i:                         ; preds = %bb.g, %bb.f
  %.sink.i = phi ptr [ %i.u, %bb.f ], [ %i.w, %bb.g ]
  %.1.ph.ph.i = phi i32 [ %i.q, %bb.f ], [ 1, %bb.g ]
  tail call void @free(ptr noundef %.sink.i) #9
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %.sink.split.sink.split.i, %bb.g, %bb.f
  %.1.ph.i = phi i32 [ 1, %bb.g ], [ %i.q, %bb.f ], [ %.1.ph.ph.i, %.sink.split.sink.split.i ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(19) %i.f, i8 0, i64 14, i1 false)
  br label %_ZN4bsslL23dtls_write_buffer_flushEP6ssl_st.exit

bb.h:                                             ; preds = %bb.c
  br i1 %i.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %i.e, i64 112 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.e, i64 116 ; 2 uses
  %.pre.i = load i16, ptr %i.y, align 8, !tbaa !18
  br label %bb.i

bb.i:                                             ; preds = %bb.l, %.lr.ph.i
  %i.aa = phi i16 [ %.pre.i, %.lr.ph.i ], [ %i.aq, %bb.l ]
  %i.ab = phi i16 [ %i.h, %.lr.ph.i ], [ %i.ar, %bb.l ]
  %i.ac = load ptr, ptr %i.a, align 8, !tbaa !63
  %i.ad = load ptr, ptr %i.f, align 8, !tbaa !15
  %i.ae = zext i16 %i.aa to i64
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ae
  %i.ag = zext i16 %i.ab to i32
  %i.ah = tail call i32 @BIO_write(ptr noundef %i.ac, ptr noundef %i.af, i32 noundef %i.ag) ; 4 uses
  %i.ai = icmp sgt i32 %i.ah, 0
  br i1 %i.ai, label %bb.j, label %.thread.i

.thread.i:                                        ; preds = %bb.i
  %i.aj = load ptr, ptr %i.d, align 8, !tbaa !62
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 196
  store i32 3, ptr %i.ak, align 4, !tbaa !104
  br label %_ZN4bsslL23dtls_write_buffer_flushEP6ssl_st.exit

bb.j:                                             ; preds = %bb.i
end_hunk_0
