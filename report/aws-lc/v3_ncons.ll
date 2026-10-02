Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/aws-lc/original/v3_ncons?download=true
inline.NumInlined: 47
inline.NumDeleted: 24
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@cn2dnsid:bb.a
  %or.cond11.peel = or i1 %i.z, %or.cond8.peel
  br i1 %or.cond11.peel, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aa = add i8 %i.v, -127
  %or.cond17.peel = icmp ult i8 %i.aa, -94
  br i1 %or.cond17.peel, label %bb.h, label %.thread91

bb.h:                                             ; preds = %bb.g, %bb.f, %.lr.ph102
  %.1.ph.peel = phi i32 [ 1, %bb.g ], [ 0, %bb.f ], [ 0, %.lr.ph102 ]
  %indvars.iv.next.peel = or disjoint i64 %i.s, 1 ; 2 uses
  %exitcond.peel.not = icmp eq i64 %indvars.iv.next.peel, %wide.trip.count
  br i1 %exitcond.peel.not, label %.thread91, label %.peel.next

.peel.next:                                       ; preds = %bb.h, %bb.o
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.o ], [ %indvars.iv.next.peel, %bb.h ] ; 4 uses
  %.060100 = phi i32 [ %.1.ph, %bb.o ], [ %.1.ph.peel, %bb.h ] ; 4 uses
  %.06199 = phi i32 [ %.162.ph, %bb.o ], [ 0, %bb.h ] ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.pre, i64 %indvars.iv ; 3 uses
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !11  ; 5 uses
  %i.ad = and i8 %i.ac, -33
  %i.ae = add i8 %i.ad, -65
  %or.cond74 = icmp ult i8 %i.ae, 26
  br i1 %or.cond74, label %bb.o, label %bb.i

bb.i:                                             ; preds = %.peel.next
  %i.af = add i8 %i.ac, -48
  %or.cond8 = icmp ult i8 %i.af, 10
  %i.ag = icmp eq i8 %i.ac, 95
  %or.cond11 = or i1 %i.ag, %or.cond8
  br i1 %or.cond11, label %bb.o, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ah = add i8 %i.ac, -127
  %or.cond17 = icmp ult i8 %i.ah, -94
  br i1 %or.cond17, label %bb.o, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ai = icmp samesign ugt i64 %indvars.iv, %i.s
  %i.aj = icmp samesign ult i64 %indvars.iv, %i.t
  %or.cond76 = select i1 %i.ai, i1 %i.aj, i1 false
  br i1 %or.cond76, label %bb.l, label %.thread91

bb.l:                                             ; preds = %bb.k
  switch i8 %i.ac, label %.thread91 [
    i8 45, label %bb.o
    i8 46, label %bb.m
  ]

bb.m:                                             ; preds = %bb.l
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ab, i64 1
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !11  ; 2 uses
  %.not71 = icmp eq i8 %i.al, 46
  br i1 %.not71, label %.thread91, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.am = getelementptr i8, ptr %i.ab, i64 -1
  %i.an = load i8, ptr %i.am, align 1, !tbaa !11
  %.not72 = icmp eq i8 %i.an, 45
  %.not73 = icmp eq i8 %i.al, 45
  %or.cond77 = or i1 %.not73, %.not72
  br i1 %or.cond77, label %.thread91, label %bb.o

bb.o:                                             ; preds = %.peel.next, %bb.j, %bb.l, %bb.i, %bb.n
  %.162.ph = phi i32 [ 1, %bb.n ], [ %.06199, %bb.i ], [ %.06199, %bb.l ], [ %.06199, %bb.j ], [ %.06199, %.peel.next ] ; 2 uses
  %.1.ph = phi i32 [ %.060100, %bb.n ], [ %.060100, %bb.i ], [ %.060100, %bb.l ], [ 1, %bb.j ], [ %.060100, %.peel.next ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.peel.next, !llvm.loop !54

._crit_edge:                                      ; preds = %bb.o
  %i.ao = icmp ne i32 %.162.ph, 0                 ; 2 uses
  %i.ap = icmp ne i32 %.1.ph, 0
  %or.cond19 = select i1 %i.ao, i1 %i.ap, i1 false
  br i1 %or.cond19, label %bb.p, label %bb.q

bb.p:                                             ; preds = %._crit_edge
  call void @OPENSSL_free(ptr noundef nonnull %.pre) #5
  br label %bb.s

bb.q:                                             ; preds = %._crit_edge
  br i1 %i.ao, label %bb.r, label %.thread91

bb.r:                                             ; preds = %bb.q
  store ptr %.pre, ptr %1, align 8, !tbaa !25
  store i64 %i.d, ptr %2, align 8, !tbaa !26
  br label %bb.s

.thread91:                                        ; preds = %bb.b, %bb.k, %bb.n, %bb.m, %bb.l, %.preheader, %OPENSSL_memchr.exit.thread.thread, %bb.h, %bb.g, %bb.q
  call void @OPENSSL_free(ptr noundef %.pre) #5
  br label %bb.s

bb.s:                                             ; preds = %bb.p, %bb.r, %.thread91, %bb.a, %bb.c
  %.167 = phi i32 [ 17, %bb.a ], [ 53, %bb.c ], [ 53, %bb.p ], [ 0, %bb.r ], [ 0, %.thread91 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret i32 %.167
}

declare i32 @ASN1_STRING_to_UTF8(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @OPENSSL_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 54) i32 @NAME_CONSTRAINTS_check_CN(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.asn1_string_st, align 8     ; 6 uses
  %3 = alloca %struct.GENERAL_NAME_st, align 8    ; 6 uses
  %i.a = alloca ptr, align 8                      ; 7 uses
  %i.b = alloca i64, align 8                      ; 7 uses
  %i.c = tail call ptr @X509_get_subject_name(ptr noundef %0) #5 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) @__const.NAME_CONSTRAINTS_check_CN.stmp, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #5
  store i32 2, ptr %3, align 8, !tbaa !23
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 0, ptr %i.d, align 4
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %2, ptr %i.e, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  %i.f = call i32 @X509_NAME_get_index_by_NID(ptr noundef %i.c, i32 noundef 13, i32 noundef -1) #5 ; 2 uses
  %i.g = icmp eq i32 %i.f, -1
  br i1 %i.g, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %select.unfold
  %i.i = phi i32 [ %i.f, %.lr.ph ], [ %i.r, %select.unfold ] ; 2 uses
  %i.j = call ptr @X509_NAME_get_entry(ptr noundef %i.c, i32 noundef %i.i) #5
  %i.k = call ptr @X509_NAME_ENTRY_get_data(ptr noundef %i.j) #5
  %i.l = call i32 @cn2dnsid(ptr noundef %i.k, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) ; 2 uses
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %bb.c, label %._crit_edge

bb.c:                                             ; preds = %bb.b
  %i.m = load i64, ptr %i.b, align 8, !tbaa !26   ; 2 uses
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %select.unfold, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = trunc i64 %i.m to i32
  store i32 %i.o, ptr %2, align 8, !tbaa !27
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !25   ; 2 uses
  store ptr %i.p, ptr %i.h, align 8, !tbaa !28
  %i.q = call fastcc i32 @nc_match(ptr noundef nonnull %3, ptr noundef %1) ; 2 uses
  call void @OPENSSL_free(ptr noundef %i.p) #5
  %.not20 = icmp eq i32 %i.q, 0
  br i1 %.not20, label %select.unfold, label %._crit_edge

select.unfold:                                    ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  store ptr null, ptr %i.a, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  store i64 0, ptr %i.b, align 8, !tbaa !26
  %i.r = call i32 @X509_NAME_get_index_by_NID(ptr noundef %i.c, i32 noundef 13, i32 noundef %i.i) #5 ; 2 uses
  %i.s = icmp eq i32 %i.r, -1
  br i1 %i.s, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %bb.d, %bb.b, %select.unfold, %bb.a
  %spec.select = phi i32 [ 0, %bb.a ], [ %i.l, %bb.b ], [ 0, %select.unfold ], [ %i.q, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #5
  ret i32 %spec.select
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @validate_cidr_mask(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @CBS_len(ptr noundef %0) #5
  switch i64 %i.a, label %validate_ipv4_cidr_mask.exit [
    i64 4, label %bb.b
    i64 16, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @CBS_data(ptr noundef %0) #5
  %i.c = load i32, ptr %i.b, align 1              ; 2 uses
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call i32 @llvm.bswap.i32(i32 %i.c)  ; 2 uses
  %i.e = add i32 %i.d, -1
  %i.f = or i32 %i.e, %i.d
  %.not8.i = icmp eq i32 %i.f, -1
  br i1 %.not8.i, label %bb.d, label %validate_ipv4_cidr_mask.exit

bb.d:                                             ; preds = %bb.c, %bb.b
  br label %validate_ipv4_cidr_mask.exit

bb.e:                                             ; preds = %bb.a
  %i.g = tail call ptr @CBS_data(ptr noundef %0) #5 ; 16 uses
  %1 = load i8, ptr %i.g, align 1, !tbaa !11
  %2 = zext i8 %1 to i64
  %3 = shl nuw i64 %2, 56
  %4 = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %5 = load i8, ptr %4, align 1, !tbaa !11
  %6 = zext i8 %5 to i64
  %7 = shl nuw nsw i64 %6, 48
  %8 = or disjoint i64 %7, %3
  %9 = getelementptr inbounds nuw i8, ptr %i.g, i64 2
  %10 = load i8, ptr %9, align 1, !tbaa !11
  %11 = zext i8 %10 to i64
  %12 = shl nuw nsw i64 %11, 40
  %13 = or disjoint i64 %8, %12
  %14 = getelementptr inbounds nuw i8, ptr %i.g, i64 3
  %15 = load i8, ptr %14, align 1, !tbaa !11
  %16 = zext i8 %15 to i64
  %17 = shl nuw nsw i64 %16, 32
  %18 = or disjoint i64 %13, %17
  %19 = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %20 = load i8, ptr %19, align 1, !tbaa !11
  %21 = zext i8 %20 to i64
  %22 = shl nuw nsw i64 %21, 24
  %23 = or disjoint i64 %18, %22
  %24 = getelementptr inbounds nuw i8, ptr %i.g, i64 5
  %25 = load i8, ptr %24, align 1, !tbaa !11
  %26 = zext i8 %25 to i64
  %27 = shl nuw nsw i64 %26, 16
  %28 = or disjoint i64 %23, %27
  %29 = getelementptr inbounds nuw i8, ptr %i.g, i64 6
  %30 = load i8, ptr %29, align 1, !tbaa !11
  %31 = zext i8 %30 to i64
  %32 = shl nuw nsw i64 %31, 8
  %33 = or i64 %28, %32
  %34 = getelementptr inbounds nuw i8, ptr %i.g, i64 7
  %35 = load i8, ptr %34, align 1, !tbaa !11
  %36 = zext i8 %35 to i64
  %37 = or i64 %33, %36                           ; 4 uses
  %38 = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %39 = load i8, ptr %38, align 1, !tbaa !11
  %40 = zext i8 %39 to i64
  %41 = shl nuw i64 %40, 56
  %42 = getelementptr inbounds nuw i8, ptr %i.g, i64 9
  %43 = load i8, ptr %42, align 1, !tbaa !11
  %44 = zext i8 %43 to i64
  %45 = shl nuw nsw i64 %44, 48
  %46 = or disjoint i64 %45, %41
  %47 = getelementptr inbounds nuw i8, ptr %i.g, i64 10
  %48 = load i8, ptr %47, align 1, !tbaa !11
  %49 = zext i8 %48 to i64
  %50 = shl nuw nsw i64 %49, 40
  %51 = or disjoint i64 %46, %50
  %52 = getelementptr inbounds nuw i8, ptr %i.g, i64 11
  %53 = load i8, ptr %52, align 1, !tbaa !11
  %54 = zext i8 %53 to i64
  %55 = shl nuw nsw i64 %54, 32
  %56 = or disjoint i64 %51, %55
  %57 = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  %58 = load i8, ptr %57, align 1, !tbaa !11
  %59 = zext i8 %58 to i64
  %60 = shl nuw nsw i64 %59, 24
  %61 = or disjoint i64 %56, %60
  %62 = getelementptr inbounds nuw i8, ptr %i.g, i64 13
  %63 = load i8, ptr %62, align 1, !tbaa !11
  %64 = zext i8 %63 to i64
  %65 = shl nuw nsw i64 %64, 16
  %66 = or disjoint i64 %61, %65
  %67 = getelementptr inbounds nuw i8, ptr %i.g, i64 14
  %68 = load i8, ptr %67, align 1, !tbaa !11
  %69 = zext i8 %68 to i64
  %70 = shl nuw nsw i64 %69, 8
  %71 = or i64 %66, %70
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 15
  %72 = load i8, ptr %i.h, align 1, !tbaa !11
  %73 = zext i8 %72 to i64
  %74 = or i64 %71, %73                           ; 4 uses
  %i.i = icmp eq i64 %37, 0
  br i1 %i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.j = icmp eq i64 %74, 0
  br label %validate_ipv6_cidr_mask.exit

bb.g:                                             ; preds = %bb.e
  %i.k = add i64 %37, -1
  %i.l = or i64 %i.k, %37
  %.not.i7 = icmp eq i64 %i.l, -1
  br i1 %.not.i7, label %bb.h, label %validate_ipv6_cidr_mask.exit

bb.h:                                             ; preds = %bb.g
  %.not28.i = icmp eq i64 %37, -1
  br i1 %.not28.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.m = icmp eq i64 %74, 0
  br label %validate_ipv6_cidr_mask.exit

bb.j:                                             ; preds = %bb.h
  %i.n = add i64 %74, -1
  %i.o = or i64 %i.n, %74
  %i.p = icmp eq i64 %i.o, -1
  br label %validate_ipv6_cidr_mask.exit

validate_ipv6_cidr_mask.exit:                     ; preds = %bb.f, %bb.g, %bb.i, %bb.j
  %.1.shrunk.i = phi i1 [ %i.j, %bb.f ], [ %i.p, %bb.j ], [ %i.m, %bb.i ], [ false, %bb.g ]
  %.1.i = zext i1 %.1.shrunk.i to i32
  br label %validate_ipv4_cidr_mask.exit

validate_ipv4_cidr_mask.exit:                     ; preds = %bb.d, %bb.c, %bb.a, %validate_ipv6_cidr_mask.exit
  %.0 = phi i32 [ %.1.i, %validate_ipv6_cidr_mask.exit ], [ 0, %bb.a ], [ 1, %bb.d ], [ 0, %bb.c ]
  ret i32 %.0
}

declare i64 @CBS_len(ptr noundef) local_unnamed_addr #1

declare ptr @CBS_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #3

declare void @ERR_put_error(i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @v2i_GENERAL_NAME_ex(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare i64 @OPENSSL_sk_num(ptr noundef) local_unnamed_addr #1

declare ptr @OPENSSL_sk_value(ptr noundef, i64 noundef) local_unnamed_addr #1

declare ptr @OPENSSL_sk_new_null() local_unnamed_addr #1

declare i64 @OPENSSL_sk_push(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @do_i2r_name_constraints(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @OPENSSL_sk_num(ptr noundef %0) #5
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %1, ptr noundef nonnull @.str.13, i32 noundef %2, ptr noundef nonnull @.str.14, ptr noundef %3) #5 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = tail call i64 @OPENSSL_sk_num(ptr noundef %0) #5
  %.not4 = icmp eq i64 %i.c, 0
  br i1 %.not4, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.d = add nsw i32 %2, 2
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %print_nc_ipadd.exit
  %.01 = phi i64 [ 0, %.lr.ph ], [ %i.gr, %print_nc_ipadd.exit ] ; 2 uses
  %i.e = tail call ptr @OPENSSL_sk_value(ptr noundef %0, i64 noundef %.01) #5 ; 2 uses
  %i.f = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %1, ptr noundef nonnull @.str.15, i32 noundef %i.d, ptr noundef nonnull @.str.14) #5 ; 0 uses
  %i.g = icmp eq ptr %i.e, null
  br i1 %i.g, label %._crit_edge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !15   ; 3 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !23
  %i.j = icmp eq i32 %i.i, 7
  br i1 %i.j, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !11   ; 2 uses
  %.val = load i32, ptr %i.l, align 8, !tbaa !27
  %i.m = getelementptr i8, ptr %i.l, i64 8
  %.val20 = load ptr, ptr %i.m, align 8, !tbaa !28 ; 40 uses
  %i.n = tail call i32 @BIO_puts(ptr noundef %1, ptr noundef nonnull @.str.17) #5 ; 0 uses
  switch i32 %.val, label %bb.h [
    i32 8, label %bb.g
    i32 32, label %.loopexit.loopexit.i
  ]

bb.g:                                             ; preds = %bb.f
  %i.o = load i8, ptr %.val20, align 1, !tbaa !11
  %i.p = zext i8 %i.o to i32
  %i.q = getelementptr inbounds nuw i8, ptr %.val20, i64 1
  %i.r = load i8, ptr %i.q, align 1, !tbaa !11
  %i.s = zext i8 %i.r to i32
  %i.t = getelementptr inbounds nuw i8, ptr %.val20, i64 2
  %i.u = load i8, ptr %i.t, align 1, !tbaa !11
  %i.v = zext i8 %i.u to i32
  %i.w = getelementptr inbounds nuw i8, ptr %.val20, i64 3
  %i.x = load i8, ptr %i.w, align 1, !tbaa !11
  %i.y = zext i8 %i.x to i32
  %i.z = getelementptr inbounds nuw i8, ptr %.val20, i64 4
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !11
  %i.ab = zext i8 %i.aa to i32
  %i.ac = getelementptr inbounds nuw i8, ptr %.val20, i64 5
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !11
  %i.ae = zext i8 %i.ad to i32
  %i.af = getelementptr inbounds nuw i8, ptr %.val20, i64 6
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !11
  %i.ah = zext i8 %i.ag to i32
  %i.ai = getelementptr inbounds nuw i8, ptr %.val20, i64 7
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !11
  %i.ak = zext i8 %i.aj to i32
  %i.al = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %1, ptr noundef nonnull @.str.18, i32 noundef %i.p, i32 noundef %i.s, i32 noundef %i.v, i32 noundef %i.y, i32 noundef %i.ab, i32 noundef %i.ae, i32 noundef %i.ah, i32 noundef %i.ak) #5 ; 0 uses
  br label %print_nc_ipadd.exit

.loopexit.loopexit.i:                             ; preds = %bb.f
  %i.am = load i8, ptr %.val20, align 1, !tbaa !11
  %i.an = zext i8 %i.am to i32
  %i.ao = shl nuw nsw i32 %i.an, 8
  %i.ap = getelementptr inbounds nuw i8, ptr %.val20, i64 1
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !11
  %i.ar = zext i8 %i.aq to i32
  %i.as = or disjoint i32 %i.ao, %i.ar
  %i.at = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %1, ptr noundef nonnull @.str.19, i32 noundef %i.as) #5 ; 0 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.val20, i64 2
  %i.av = tail call i32 @BIO_puts(ptr noundef %1, ptr noundef nonnull @.str.21) #5 ; 0 uses
  %i.aw = load i8, ptr %i.au, align 1, !tbaa !11
  %i.ax = zext i8 %i.aw to i32
  %i.ay = shl nuw nsw i32 %i.ax, 8
  %i.az = getelementptr inbounds nuw i8, ptr %.val20, i64 3
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !11
  %i.bb = zext i8 %i.ba to i32
  %i.bc = or disjoint i32 %i.ay, %i.bb
  %i.bd = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %1, ptr noundef nonnull @.str.19, i32 noundef %i.bc) #5 ; 0 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.val20, i64 4
  %i.bf = tail call i32 @BIO_puts(ptr noundef %1, ptr noundef nonnull @.str.21) #5 ; 0 uses
  %i.bg = load i8, ptr %i.be, align 1, !tbaa !11
  %i.bh = zext i8 %i.bg to i32
  %i.bi = shl nuw nsw i32 %i.bh, 8
  %i.bj = getelementptr inbounds nuw i8, ptr %.val20, i64 5
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !11
  %i.bl = zext i8 %i.bk to i32
  %i.bm = or disjoint i32 %i.bi, %i.bl
  %i.bn = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %1, ptr noundef nonnull @.str.19, i32 noundef %i.bm) #5 ; 0 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.val20, i64 6
  %i.bp = tail call i32 @BIO_puts(ptr noundef %1, ptr noundef nonnull @.str.21) #5 ; 0 uses
  %i.bq = load i8, ptr %i.bo, align 1, !tbaa !11
  %i.br = zext i8 %i.bq to i32
  %i.bs = shl nuw nsw i32 %i.br, 8
  %i.bt = getelementptr inbounds nuw i8, ptr %.val20, i64 7
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !11
  %i.bv = zext i8 %i.bu to i32
  %i.bw = or disjoint i32 %i.bs, %i.bv
  %i.bx = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %1, ptr noundef nonnull @.str.19, i32 noundef %i.bw) #5 ; 0 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.val20, i64 8
  %i.bz = tail call i32 @BIO_puts(ptr noundef %1, ptr noundef nonnull @.str.21) #5 ; 0 uses
  %i.ca = load i8, ptr %i.by, align 1, !tbaa !11
  %i.cb = zext i8 %i.ca to i32
  %i.cc = shl nuw nsw i32 %i.cb, 8
  %i.cd = getelementptr inbounds nuw i8, ptr %.val20, i64 9
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !11
  %i.cf = zext i8 %i.ce to i32
  %i.cg = or disjoint i32 %i.cc, %i.cf
  %i.ch = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %1, ptr noundef nonnull @.str.19, i32 noundef %i.cg) #5 ; 0 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.val20, i64 10
  %i.cj = tail call i32 @BIO_puts(ptr noundef %1, ptr noundef nonnull @.str.21) #5 ; 0 uses
  %i.ck = load i8, ptr %i.ci, align 1, !tbaa !11
  %i.cl = zext i8 %i.ck to i32
  %i.cm = shl nuw nsw i32 %i.cl, 8
  %i.cn = getelementptr inbounds nuw i8, ptr %.val20, i64 11
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !11
  %i.cp = zext i8 %i.co to i32
  %i.cq = or disjoint i32 %i.cm, %i.cp
  %i.cr = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %1, ptr noundef nonnull @.str.19, i32 noundef %i.cq) #5 ; 0 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.val20, i64 12
  %i.ct = tail call i32 @BIO_puts(ptr noundef %1, ptr noundef nonnull @.str.21) #5 ; 0 uses
  %i.cu = load i8, ptr %i.cs, align 1, !tbaa !11
  %i.cv = zext i8 %i.cu to i32
  %i.cw = shl nuw nsw i32 %i.cv, 8
  %i.cx = getelementptr inbounds nuw i8, ptr %.val20, i64 13
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !11
  %i.cz = zext i8 %i.cy to i32
  %i.da = or disjoint i32 %i.cw, %i.cz
  %i.db = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %1, ptr noundef nonnull @.str.19, i32 noundef %i.da) #5 ; 0 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.val20, i64 14
  %i.dd = tail call i32 @BIO_puts(ptr noundef %1, ptr noundef nonnull @.str.21) #5 ; 0 uses
  %i.de = load i8, ptr %i.dc, align 1, !tbaa !11
  %i.df = zext i8 %i.de to i32
  %i.dg = shl nuw nsw i32 %i.df, 8
  %i.dh = getelementptr inbounds nuw i8, ptr %.val20, i64 15
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !11
  %i.dj = zext i8 %i.di to i32
  %i.dk = or disjoint i32 %i.dg, %i.dj
  %i.dl = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %1, ptr noundef nonnull @.str.19, i32 noundef %i.dk) #5 ; 0 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.val20, i64 16
  %i.dn = tail call i32 @BIO_puts(ptr noundef %1, ptr noundef nonnull @.str.20) #5 ; 0 uses
  %i.do = load i8, ptr %i.dm, align 1, !tbaa !11
  %i.dp = zext i8 %i.do to i32
  %i.dq = shl nuw nsw i32 %i.dp, 8
  %i.dr = getelementptr inbounds nuw i8, ptr %.val20, i64 17
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !11
  %i.dt = zext i8 %i.ds to i32
  %i.du = or disjoint i32 %i.dq, %i.dt
  %i.dv = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %1, ptr noundef nonnull @.str.19, i32 noundef %i.du) #5 ; 0 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %.val20, i64 18
  %i.dx = tail call i32 @BIO_puts(ptr noundef %1, ptr noundef nonnull @.str.21) #5 ; 0 uses
  %i.dy = load i8, ptr %i.dw, align 1, !tbaa !11
  %i.dz = zext i8 %i.dy to i32
  %i.ea = shl nuw nsw i32 %i.dz, 8
  %i.eb = getelementptr inbounds nuw i8, ptr %.val20, i64 19
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !11
  %i.ed = zext i8 %i.ec to i32
  %i.ee = or disjoint i32 %i.ea, %i.ed
  %i.ef = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %1, ptr noundef nonnull @.str.19, i32 noundef %i.ee) #5 ; 0 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %.val20, i64 20
  %i.eh = tail call i32 @BIO_puts(ptr noundef %1, ptr noundef nonnull @.str.21) #5 ; 0 uses
  %i.ei = load i8, ptr %i.eg, align 1, !tbaa !11
  %i.ej = zext i8 %i.ei to i32
  %i.ek = shl nuw nsw i32 %i.ej, 8
  %i.el = getelementptr inbounds nuw i8, ptr %.val20, i64 21
  %i.em = load i8, ptr %i.el, align 1, !tbaa !11
  %i.en = zext i8 %i.em to i32
  %i.eo = or disjoint i32 %i.ek, %i.en
  %i.ep = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %1, ptr noundef nonnull @.str.19, i32 noundef %i.eo) #5 ; 0 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %.val20, i64 22
  %i.er = tail call i32 @BIO_puts(ptr noundef %1, ptr noundef nonnull @.str.21) #5 ; 0 uses
  %i.es = load i8, ptr %i.eq, align 1, !tbaa !11
  %i.et = zext i8 %i.es to i32
  %i.eu = shl nuw nsw i32 %i.et, 8
  %i.ev = getelementptr inbounds nuw i8, ptr %.val20, i64 23
  %i.ew = load i8, ptr %i.ev, align 1, !tbaa !11
  %i.ex = zext i8 %i.ew to i32
  %i.ey = or disjoint i32 %i.eu, %i.ex
  %i.ez = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %1, ptr noundef nonnull @.str.19, i32 noundef %i.ey) #5 ; 0 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %.val20, i64 24
  %i.fb = tail call i32 @BIO_puts(ptr noundef %1, ptr noundef nonnull @.str.21) #5 ; 0 uses
  %i.fc = load i8, ptr %i.fa, align 1, !tbaa !11
  %i.fd = zext i8 %i.fc to i32
  %i.fe = shl nuw nsw i32 %i.fd, 8
  %i.ff = getelementptr inbounds nuw i8, ptr %.val20, i64 25
  %i.fg = load i8, ptr %i.ff, align 1, !tbaa !11
  %i.fh = zext i8 %i.fg to i32
  %i.fi = or disjoint i32 %i.fe, %i.fh
  %i.fj = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %1, ptr noundef nonnull @.str.19, i32 noundef %i.fi) #5 ; 0 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %.val20, i64 26
  %i.fl = tail call i32 @BIO_puts(ptr noundef %1, ptr noundef nonnull @.str.21) #5 ; 0 uses
  %i.fm = load i8, ptr %i.fk, align 1, !tbaa !11
  %i.fn = zext i8 %i.fm to i32
  %i.fo = shl nuw nsw i32 %i.fn, 8
  %i.fp = getelementptr inbounds nuw i8, ptr %.val20, i64 27
  %i.fq = load i8, ptr %i.fp, align 1, !tbaa !11
  %i.fr = zext i8 %i.fq to i32
  %i.fs = or disjoint i32 %i.fo, %i.fr
  %i.ft = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %1, ptr noundef nonnull @.str.19, i32 noundef %i.fs) #5 ; 0 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %.val20, i64 28
  %i.fv = tail call i32 @BIO_puts(ptr noundef %1, ptr noundef nonnull @.str.21) #5 ; 0 uses
  %i.fw = load i8, ptr %i.fu, align 1, !tbaa !11
  %i.fx = zext i8 %i.fw to i32
  %i.fy = shl nuw nsw i32 %i.fx, 8
  %i.fz = getelementptr inbounds nuw i8, ptr %.val20, i64 29
  %i.ga = load i8, ptr %i.fz, align 1, !tbaa !11
  %i.gb = zext i8 %i.ga to i32
  %i.gc = or disjoint i32 %i.fy, %i.gb
  %i.gd = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %1, ptr noundef nonnull @.str.19, i32 noundef %i.gc) #5 ; 0 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %.val20, i64 30
  %i.gf = tail call i32 @BIO_puts(ptr noundef %1, ptr noundef nonnull @.str.21) #5 ; 0 uses
  %i.gg = load i8, ptr %i.ge, align 1, !tbaa !11
  %i.gh = zext i8 %i.gg to i32
  %i.gi = shl nuw nsw i32 %i.gh, 8
  %i.gj = getelementptr inbounds nuw i8, ptr %.val20, i64 31
  %i.gk = load i8, ptr %i.gj, align 1, !tbaa !11
  %i.gl = zext i8 %i.gk to i32
  %i.gm = or disjoint i32 %i.gi, %i.gl
  %i.gn = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %1, ptr noundef nonnull @.str.19, i32 noundef %i.gm) #5 ; 0 uses
  br label %print_nc_ipadd.exit

bb.h:                                             ; preds = %bb.f
  %i.go = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %1, ptr noundef nonnull @.str.22) #5 ; 0 uses
  br label %print_nc_ipadd.exit

bb.i:                                             ; preds = %bb.e
  %i.gp = tail call i32 @GENERAL_NAME_print(ptr noundef %1, ptr noundef nonnull %i.h) #5 ; 0 uses
  br label %print_nc_ipadd.exit

print_nc_ipadd.exit:                              ; preds = %bb.h, %.loopexit.loopexit.i, %bb.g, %bb.i
  %i.gq = tail call i32 @BIO_puts(ptr noundef %1, ptr noundef nonnull @.str.16) #5 ; 0 uses
  %i.gr = add nuw i64 %.01, 1                     ; 2 uses
  %i.gs = tail call i64 @OPENSSL_sk_num(ptr noundef %0) #5
  %i.gt = icmp ult i64 %i.gr, %i.gs
  br i1 %i.gt, label %bb.d, label %._crit_edge, !llvm.loop !56

._crit_edge:                                      ; preds = %bb.d, %print_nc_ipadd.exit, %bb.c
  ret void
}

declare i32 @BIO_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

declare i32 @GENERAL_NAME_print(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @BIO_puts(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 54) i32 @nc_match_single(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef range(i32 0, 2) %2) unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.cbs_st, align 8             ; 5 uses
  %4 = alloca %struct.cbs_st, align 8             ; 7 uses
  %5 = alloca %struct.cbs_st, align 8             ; 4 uses
  %6 = alloca %struct.cbs_st, align 8             ; 5 uses
  %i.a = alloca i8, align 1                       ; 5 uses
  %i.b = alloca i8, align 1                       ; 5 uses
  %i.c = alloca i8, align 1                       ; 5 uses
  %7 = alloca %struct.cbs_st, align 8             ; 15 uses
  %8 = alloca %struct.cbs_st, align 8             ; 8 uses
  %9 = alloca %struct.cbs_st, align 8             ; 3 uses
  %i.d = alloca i8, align 1                       ; 6 uses
  %10 = alloca %struct.cbs_st, align 8            ; 14 uses
  %i.e = alloca i8, align 1                       ; 3 uses
  %i.f = alloca i8, align 1                       ; 3 uses
  %11 = alloca %struct.cbs_st, align 8            ; 7 uses
  %12 = alloca %struct.cbs_st, align 8            ; 14 uses
  %13 = alloca %struct.cbs_st, align 8            ; 7 uses
  %14 = alloca %struct.cbs_st, align 8            ; 10 uses
  %15 = alloca %struct.cbs_st, align 8            ; 4 uses
  %16 = alloca %struct.cbs_st, align 8            ; 7 uses
  %17 = alloca %struct.cbs_st, align 8            ; 5 uses
  %18 = alloca %struct.cbs_st, align 8            ; 5 uses
  %19 = alloca %struct.cbs_st, align 8            ; 18 uses
  %20 = alloca %struct.cbs_st, align 8            ; 17 uses
  %i.g = alloca i8, align 1                       ; 3 uses
  %i.h = alloca i8, align 1                       ; 3 uses
  %21 = alloca %struct.cbs_st, align 8            ; 4 uses
  %22 = alloca %struct.cbs_st, align 8            ; 7 uses
  %23 = alloca %struct.cbs_st, align 8            ; 6 uses
  %i.i = alloca i8, align 1                       ; 5 uses
  %i.j = load i32, ptr %1, align 8, !tbaa !23
  switch i32 %i.j, label %nc_dn.exit [
    i32 4, label %bb.b
    i32 2, label %bb.h
    i32 1, label %bb.u
    i32 6, label %bb.ao
    i32 7, label %bb.be
  ]

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !11   ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !11   ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.p = load i32, ptr %i.o, align 8, !tbaa !64
  %.not.i = icmp eq i32 %i.p, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = tail call i32 @i2d_X509_NAME(ptr noundef nonnull %i.l, ptr noundef null) #5
  %i.r = icmp slt i32 %i.q, 0
  br i1 %i.r, label %nc_dn.exit, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.t = load i32, ptr %i.s, align 8, !tbaa !64
  %.not10.i = icmp eq i32 %i.t, 0
  br i1 %.not10.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = tail call i32 @i2d_X509_NAME(ptr noundef nonnull %i.n, ptr noundef null) #5
  %i.v = icmp slt i32 %i.u, 0
  br i1 %i.v, label %nc_dn.exit, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.x = load i32, ptr %i.w, align 8, !tbaa !65   ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.z = load i32, ptr %i.y, align 8, !tbaa !65
  %i.aa = icmp sgt i32 %i.x, %i.z
  br i1 %i.aa, label %nc_dn.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !66
  %i.ad = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !66
  %.not16.i.i = icmp eq i32 %i.x, 0
  br i1 %.not16.i.i, label %OPENSSL_memcmp.exit.thread.i, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %bb.g
  %i.af = sext i32 %i.x to i64
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.preheader.i
  %.018.i.i = phi i64 [ %.fr.i, %.lr.ph.i.i ], [ 0, %.lr.ph.i.preheader.i ]
  %.01517.i.i = phi i64 [ %i.ag, %.lr.ph.i.i ], [ %i.af, %.lr.ph.i.preheader.i ]
  %i.ag = add i64 %.01517.i.i, -1                 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ag
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !11
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ag
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !11
  %i.al = zext i8 %i.ai to i32                    ; 2 uses
  %i.am = zext i8 %i.ak to i32                    ; 2 uses
  %i.an = xor i32 %i.am, %i.al
  %i.ao = zext nneg i32 %i.an to i64
  %i.ap = add nsw i64 %i.ao, -1
  %.neg.i.i.i.i = ashr i64 %i.ap, 63              ; 2 uses
  %i.aq = xor i64 %.neg.i.i.i.i, -1
  %i.ar = sub nsw i32 %i.al, %i.am
  %i.as = zext i32 %i.ar to i64
  %i.at = tail call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -1, 1) %i.aq) #7, !srcloc !67
  %i.au = and i64 %i.at, %i.as
  %i.av = tail call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -1, 1) %.neg.i.i.i.i) #7, !srcloc !67
  %i.aw = and i64 %i.av, %.018.i.i
  %i.ax = or i64 %i.au, %i.aw
  %.fr.i = freeze i64 %i.ax                       ; 2 uses
  %.not.i.i = icmp eq i64 %i.ag, 0
  br i1 %.not.i.i, label %OPENSSL_memcmp.exit.i, label %.lr.ph.i.i, !llvm.loop !57

OPENSSL_memcmp.exit.i:                            ; preds = %.lr.ph.i.i
  %.not11.i = icmp eq i64 %.fr.i, 0
  br i1 %.not11.i, label %OPENSSL_memcmp.exit.thread.i, label %nc_dn.exit

OPENSSL_memcmp.exit.thread.i:                     ; preds = %OPENSSL_memcmp.exit.i, %bb.g
  br label %nc_dn.exit

bb.h:                                             ; preds = %bb.a
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !11 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !11 ; 2 uses
  %.val = load i32, ptr %i.az, align 8, !tbaa !27
  %i.bc = getelementptr i8, ptr %i.az, i64 8
  %.val13 = load ptr, ptr %i.bc, align 8, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #5
  %i.bd = sext i32 %.val to i64
  call void @CBS_init(ptr noundef nonnull %19, ptr noundef %.val13, i64 noundef %i.bd) #5
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !28
  %i.bg = load i32, ptr %i.bb, align 8, !tbaa !27
  %i.bh = sext i32 %i.bg to i64
  call void @CBS_init(ptr noundef nonnull %20, ptr noundef %i.bf, i64 noundef %i.bh) #5
  %i.bi = call i64 @CBS_len(ptr noundef nonnull %20) #5
  %i.bj = icmp eq i64 %i.bi, 0
  br i1 %i.bj, label %nc_dns.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bk = call i64 @CBS_len(ptr noundef nonnull %19) #5
  %.not.i.i20 = icmp eq i64 %i.bk, 0
  br i1 %.not.i.i20, label %ends_with_byte.exit.thread.i, label %ends_with_byte.exit.i

ends_with_byte.exit.i:                            ; preds = %bb.i
  %i.bl = call ptr @CBS_data(ptr noundef nonnull %19) #5
  %i.bm = call i64 @CBS_len(ptr noundef nonnull %19) #5
  %i.bn = getelementptr i8, ptr %i.bl, i64 %i.bm
  %i.bo = getelementptr i8, ptr %i.bn, i64 -1
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !11
  %.not.i21 = icmp eq i8 %i.bp, 46
  br i1 %.not.i21, label %bb.j, label %ends_with_byte.exit.thread.i

bb.j:                                             ; preds = %ends_with_byte.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #5
  %i.bq = call i32 @CBS_get_last_u8(ptr noundef nonnull %19, ptr noundef nonnull %i.g) #5 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #5
  br label %ends_with_byte.exit.thread.i

ends_with_byte.exit.thread.i:                     ; preds = %bb.j, %ends_with_byte.exit.i, %bb.i
  %i.br = call i64 @CBS_len(ptr noundef nonnull %20) #5
  %.not.i24.i = icmp eq i64 %i.br, 0
  br i1 %.not.i24.i, label %ends_with_byte.exit25.thread.i, label %ends_with_byte.exit25.i

ends_with_byte.exit25.i:                          ; preds = %ends_with_byte.exit.thread.i
  %i.bs = call ptr @CBS_data(ptr noundef nonnull %20) #5
  %i.bt = call i64 @CBS_len(ptr noundef nonnull %20) #5
  %i.bu = getelementptr i8, ptr %i.bs, i64 %i.bt
  %i.bv = getelementptr i8, ptr %i.bu, i64 -1
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !11
  %.not10.i22 = icmp eq i8 %i.bw, 46
  br i1 %.not10.i22, label %bb.k, label %ends_with_byte.exit25.thread.i

bb.k:                                             ; preds = %ends_with_byte.exit25.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #5
  %i.bx = call i32 @CBS_get_last_u8(ptr noundef nonnull %20, ptr noundef nonnull %i.h) #5 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #5
  br label %ends_with_byte.exit25.thread.i

ends_with_byte.exit25.thread.i:                   ; preds = %bb.k, %ends_with_byte.exit25.i, %ends_with_byte.exit.thread.i
  %.not13.i = icmp eq i32 %2, 0
  br i1 %.not13.i, label %starts_with_str.exit.thread.i, label %bb.l

bb.l:                                             ; preds = %ends_with_byte.exit25.thread.i
  %i.by = call i64 @CBS_len(ptr noundef nonnull %19) #5
  %i.bz = icmp ugt i64 %i.by, 1
  br i1 %i.bz, label %starts_with_str.exit.i, label %starts_with_str.exit.thread.i

starts_with_str.exit.i:                           ; preds = %bb.l
  %i.ca = call ptr @CBS_data(ptr noundef nonnull %19) #5 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 1
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !11
  %i.cd = zext i8 %i.cc to i32                    ; 2 uses
  %i.ce = xor i32 %i.cd, 46
  %i.cf = zext nneg i32 %i.ce to i64
  %i.cg = add nsw i64 %i.cf, -1
  %.neg.i.i.i.i.i = ashr i64 %i.cg, 63            ; 2 uses
  %i.ch = xor i64 %.neg.i.i.i.i.i, -1
  %i.ci = add nsw i32 %i.cd, -46
  %i.cj = zext i32 %i.ci to i64
  %i.ck = call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -1, 1) %i.ch) #7, !srcloc !67
  %i.cl = and i64 %i.ck, %i.cj
  %i.cm = call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -1, 1) %.neg.i.i.i.i.i) #7, !srcloc !67 ; 0 uses
  %i.cn = load i8, ptr %i.ca, align 1, !tbaa !11
end_hunk_0
begin_hunk_1_@nc_match_single:bb.a
  br i1 %or.cond.i, label %nc_uri.exit, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.gy = call i32 @CBS_get_u8(ptr noundef nonnull %7, ptr noundef nonnull %i.d) #5
  %i.gz = icmp eq i32 %i.gy, 0
  %i.ha = load i8, ptr %i.d, align 1
  %i.hb = icmp ne i8 %i.ha, 47
  %or.cond8.i = select i1 %i.gz, i1 true, i1 %i.hb
  br i1 %or.cond8.i, label %nc_uri.exit, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.hc = call i64 @CBS_len(ptr noundef nonnull %7) #5
  %.not.i.i39 = icmp eq i64 %i.hc, 0
  br i1 %.not.i.i39, label %.critedge10.preheader.i, label %starts_with.exit.i40

starts_with.exit.i40:                             ; preds = %bb.as
  %i.hd = call ptr @CBS_data(ptr noundef nonnull %7) #5
  %i.he = load i8, ptr %i.hd, align 1, !tbaa !11
  %.not18.i41 = icmp eq i8 %i.he, 91
  br i1 %.not18.i41, label %nc_uri.exit, label %.critedge10.preheader.i

.critedge10.preheader.i:                          ; preds = %starts_with.exit.i40, %bb.as
  %i.hf = call i64 @CBS_len(ptr noundef nonnull %7) #5
  %.not19.i42 = icmp eq i64 %i.hf, 0
  br i1 %.not19.i42, label %.thread3.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.critedge10.preheader.i, %.critedge10.i
  %.05512.i = phi i64 [ %i.hj, %.critedge10.i ], [ 0, %.critedge10.preheader.i ] ; 2 uses
  %i.hg = call ptr @CBS_data(ptr noundef nonnull %7) #5
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 %.05512.i
  %i.hi = load i8, ptr %i.hh, align 1, !tbaa !11
  switch i8 %i.hi, label %.critedge10.i [
    i8 63, label %.thread3.i
    i8 47, label %.thread3.i
    i8 35, label %.thread3.i
    i8 64, label %nc_uri.exit
  ]

.critedge10.i:                                    ; preds = %.lr.ph.i
  %i.hj = add nuw i64 %.05512.i, 1                ; 2 uses
  %i.hk = call i64 @CBS_len(ptr noundef nonnull %7) #5
  %i.hl = icmp ult i64 %i.hj, %i.hk
  br i1 %i.hl, label %.lr.ph.i, label %.thread3.i, !llvm.loop !58

.thread3.i:                                       ; preds = %.critedge10.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.critedge10.preheader.i
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #5
  %i.hm = call i32 @CBS_get_until_first(ptr noundef nonnull %7, ptr noundef nonnull %10, i8 noundef zeroext 58) #5
  %.not64.i = icmp eq i32 %i.hm, 0
  br i1 %.not64.i, label %bb.at, label %bb.av

bb.at:                                            ; preds = %.thread3.i
  %i.hn = call i32 @CBS_get_until_first(ptr noundef nonnull %7, ptr noundef nonnull %10, i8 noundef zeroext 47) #5
  %.not65.i = icmp eq i32 %i.hn, 0
  br i1 %.not65.i, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull align 8 dereferenceable(16) %7, i64 16, i1 false), !tbaa.struct !29
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at, %.thread3.i
  %i.ho = call i64 @CBS_len(ptr noundef nonnull %10) #5
  %i.hp = icmp eq i64 %i.ho, 0
  br i1 %i.hp, label %.loopexit.i, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.hq = call fastcc i32 @ends_with_byte(ptr noundef %10)
  %.not66.i = icmp eq i32 %i.hq, 0
  br i1 %.not66.i, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #5
  %i.hr = call i32 @CBS_get_last_u8(ptr noundef nonnull %10, ptr noundef nonnull %i.e) #5 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #5
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %i.hs = call fastcc i32 @ends_with_byte(ptr noundef %8)
  %.not67.i = icmp eq i32 %i.hs, 0
  br i1 %.not67.i, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #5
  %i.ht = call i32 @CBS_get_last_u8(ptr noundef nonnull %8, ptr noundef nonnull %i.f) #5 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #5
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %i.hu = call i64 @CBS_len(ptr noundef nonnull %10) #5
  %i.hv = icmp eq i64 %i.hu, 0
  br i1 %i.hv, label %.loopexit.i, label %.preheader.i

.preheader.i:                                     ; preds = %bb.ba
  %i.hw = call i64 @CBS_len(ptr noundef nonnull %10) #5
  %.not6815.not.i = icmp eq i64 %i.hw, 0
  br i1 %.not6815.not.i, label %.critedge74.i, label %.lr.ph17.i

.lr.ph17.i:                                       ; preds = %.preheader.i, %.critedge.i43
  %.016.i = phi i64 [ %i.if, %.critedge.i43 ], [ 0, %.preheader.i ] ; 2 uses
  %i.hx = call ptr @CBS_data(ptr noundef nonnull %10) #5
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 %.016.i
  %i.hz = load i8, ptr %i.hy, align 1, !tbaa !11  ; 3 uses
  %i.ia = and i8 %i.hz, -33
  %i.ib = add i8 %i.ia, -65
  %or.cond72.i = icmp ult i8 %i.ib, 26
  br i1 %or.cond72.i, label %.critedge.i43, label %bb.bb

bb.bb:                                            ; preds = %.lr.ph17.i
  %i.ic = add i8 %i.hz, -48
  %or.cond23.i = icmp ult i8 %i.ic, 10
  %i.id = add i8 %i.hz, -45
  %i.ie = icmp ult i8 %i.id, 2
  %or.cond29.i = or i1 %or.cond23.i, %i.ie
  br i1 %or.cond29.i, label %.critedge.i43, label %.loopexit.i

.critedge.i43:                                    ; preds = %bb.bb, %.lr.ph17.i
  %i.if = add nuw i64 %.016.i, 1                  ; 2 uses
  %i.ig = call i64 @CBS_len(ptr noundef nonnull %10) #5
  %.not68.i = icmp ult i64 %i.if, %i.ig
  br i1 %.not68.i, label %.lr.ph17.i, label %.critedge74.i, !llvm.loop !59

.critedge74.i:                                    ; preds = %.critedge.i43, %.preheader.i
  %i.ih = call fastcc i32 @starts_with(ptr noundef %8, i8 noundef zeroext 46)
  %.not69.i = icmp eq i32 %i.ih, 0
  br i1 %.not69.i, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %.critedge74.i
  %i.ii = call fastcc i32 @has_suffix_case(ptr noundef %10, ptr noundef %8)
  %.not71.i = icmp eq i32 %i.ii, 0
  %..i44 = select i1 %.not71.i, i32 47, i32 0
  br label %.loopexit.i

bb.bd:                                            ; preds = %.critedge74.i
  %i.ij = call fastcc i32 @equal_case(ptr noundef %8, ptr noundef %10)
  %.not70.i = icmp eq i32 %i.ij, 0
  %.75.i = select i1 %.not70.i, i32 47, i32 0
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %bb.bb, %bb.bd, %bb.bc, %bb.ba, %bb.av
  %.6.i = phi i32 [ %.75.i, %bb.bd ], [ 53, %bb.av ], [ %..i44, %bb.bc ], [ 53, %bb.ba ], [ 53, %bb.bb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #5
  br label %nc_uri.exit

nc_uri.exit:                                      ; preds = %.lr.ph.i, %bb.ao, %bb.ap, %bb.aq, %bb.ar, %starts_with.exit.i40, %.loopexit.i
  %.7.i = phi i32 [ 53, %starts_with.exit.i40 ], [ 53, %bb.ao ], [ %.6.i, %.loopexit.i ], [ 53, %bb.ar ], [ 53, %bb.aq ], [ 53, %bb.ap ], [ 53, %.lr.ph.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #5
  br label %nc_dn.exit

bb.be:                                            ; preds = %bb.a
  %i.ik = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !11 ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !11 ; 2 uses
  %.val18 = load i32, ptr %i.il, align 8, !tbaa !27
  %i.io = getelementptr i8, ptr %i.il, i64 8
  %.val19 = load ptr, ptr %i.io, align 8, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #5
  %i.ip = sext i32 %.val18 to i64
  call void @CBS_init(ptr noundef nonnull %3, ptr noundef %.val19, i64 noundef %i.ip) #5
  %i.iq = getelementptr inbounds nuw i8, ptr %i.in, i64 8
  %i.ir = load ptr, ptr %i.iq, align 8, !tbaa !28
  %i.is = load i32, ptr %i.in, align 8, !tbaa !27
  %i.it = sext i32 %i.is to i64
  call void @CBS_init(ptr noundef nonnull %4, ptr noundef %i.ir, i64 noundef %i.it) #5
  %i.iu = call i64 @CBS_len(ptr noundef nonnull %3) #5 ; 5 uses
  %i.iv = call i64 @CBS_len(ptr noundef nonnull %4) #5 ; 2 uses
  switch i64 %i.iu, label %nc_ip.exit [
    i64 16, label %bb.bf
    i64 4, label %bb.bf
  ]

bb.bf:                                            ; preds = %bb.be, %bb.be
  switch i64 %i.iv, label %nc_ip.exit [
    i64 32, label %bb.bg
    i64 8, label %bb.bg
  ]

bb.bg:                                            ; preds = %bb.bf, %bb.bf
  %i.iw = shl nuw nsw i64 %i.iu, 1
  %.not.i45 = icmp eq i64 %i.iw, %i.iv
  br i1 %.not.i45, label %bb.bh, label %nc_ip.exit

bb.bh:                                            ; preds = %bb.bg
  %i.ix = call i32 @CBS_get_bytes(ptr noundef nonnull %4, ptr noundef nonnull %5, i64 noundef %i.iu) #5
  %.not21.i47 = icmp eq i32 %i.ix, 0
  br i1 %.not21.i47, label %nc_ip.exit, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.iy = call i32 @CBS_get_bytes(ptr noundef nonnull %4, ptr noundef nonnull %6, i64 noundef %i.iu) #5
  %.not22.i = icmp eq i32 %i.iy, 0
  br i1 %.not22.i, label %nc_ip.exit, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.iz = call i64 @CBS_len(ptr noundef nonnull %4) #5
  %.not23.i = icmp eq i64 %i.iz, 0
  br i1 %.not23.i, label %bb.bk, label %nc_ip.exit

bb.bk:                                            ; preds = %bb.bj
  %i.ja = call i32 @validate_cidr_mask(ptr noundef nonnull %6)
  %.not24.i = icmp eq i32 %i.ja, 0
  br i1 %.not24.i, label %nc_ip.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.bk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  store i8 0, ptr %i.a, align 1, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  store i8 0, ptr %i.b, align 1, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  store i8 0, ptr %i.c, align 1, !tbaa !11
  br label %.lr.ph.i48

bb.bl:                                            ; preds = %bb.bo
  %i.jb = add nuw i64 %.02.i, 1                   ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.jb, %i.iu
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i48, !llvm.loop !60

.lr.ph.i48:                                       ; preds = %bb.bl, %.lr.ph.preheader.i
  %.02.i = phi i64 [ %i.jb, %bb.bl ], [ 0, %.lr.ph.preheader.i ]
  %i.jc = call i32 @CBS_get_u8(ptr noundef nonnull %3, ptr noundef nonnull %i.a) #5
  %.not25.i = icmp eq i32 %i.jc, 0
  br i1 %.not25.i, label %._crit_edge.i, label %bb.bm

bb.bm:                                            ; preds = %.lr.ph.i48
  %i.jd = call i32 @CBS_get_u8(ptr noundef nonnull %5, ptr noundef nonnull %i.b) #5
  %.not26.i = icmp eq i32 %i.jd, 0
  br i1 %.not26.i, label %._crit_edge.i, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.je = call i32 @CBS_get_u8(ptr noundef nonnull %6, ptr noundef nonnull %i.c) #5
  %.not27.i = icmp eq i32 %i.je, 0
  br i1 %.not27.i, label %._crit_edge.i, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.jf = load i8, ptr %i.a, align 1, !tbaa !11
  %i.jg = load i8, ptr %i.c, align 1, !tbaa !11
  %i.jh = load i8, ptr %i.b, align 1, !tbaa !11
  %i.ji = xor i8 %i.jh, %i.jf
  %i.jj = and i8 %i.ji, %i.jg
  %.not28.i = icmp eq i8 %i.jj, 0
  br i1 %.not28.i, label %bb.bl, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.bo, %bb.bn, %bb.bm, %.lr.ph.i48, %bb.bl
  %spec.select.ph.i = phi i32 [ 0, %bb.bl ], [ 47, %bb.bo ], [ 47, %bb.bn ], [ 47, %bb.bm ], [ 47, %.lr.ph.i48 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br label %nc_ip.exit

nc_ip.exit:                                       ; preds = %bb.be, %bb.bf, %bb.bg, %bb.bh, %bb.bi, %bb.bj, %bb.bk, %._crit_edge.i
  %.2.i46 = phi i32 [ 53, %bb.be ], [ 47, %bb.bg ], [ %spec.select.ph.i, %._crit_edge.i ], [ 53, %bb.bh ], [ 53, %bb.bf ], [ 53, %bb.bj ], [ 53, %bb.bi ], [ 53, %bb.bk ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #5
  br label %nc_dn.exit

nc_dn.exit:                                       ; preds = %OPENSSL_memcmp.exit.thread.i, %OPENSSL_memcmp.exit.i, %bb.f, %bb.e, %bb.c, %bb.a, %nc_ip.exit, %nc_uri.exit, %nc_email.exit, %nc_dns.exit
  %.0 = phi i32 [ %.2.i46, %nc_ip.exit ], [ 51, %bb.a ], [ %.3.i, %nc_dns.exit ], [ %.4.i, %nc_email.exit ], [ %.7.i, %nc_uri.exit ], [ 47, %bb.f ], [ 17, %bb.c ], [ 17, %bb.e ], [ 0, %OPENSSL_memcmp.exit.thread.i ], [ 47, %OPENSSL_memcmp.exit.i ]
  ret i32 %.0
}

declare i32 @i2d_X509_NAME(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @CBS_init(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @ends_with_byte(ptr noundef nonnull %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @CBS_len(ptr noundef nonnull %0) #5
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @CBS_data(ptr noundef nonnull %0) #5
  %i.c = tail call i64 @CBS_len(ptr noundef nonnull %0) #5
  %i.d = getelementptr i8, ptr %i.b, i64 %i.c
  %i.e = getelementptr i8, ptr %i.d, i64 -1
  %i.f = load i8, ptr %i.e, align 1, !tbaa !11
  %i.g = icmp eq i8 %i.f, 46
  %i.h = zext i1 %i.g to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.i = phi i32 [ 0, %bb.a ], [ %i.h, %bb.b ]
  ret i32 %i.i
}

declare i32 @CBS_get_last_u8(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @CBS_skip(ptr noundef, i64 noundef) local_unnamed_addr #1

declare i32 @CBS_get_until_first(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @equal_case(ptr noundef nonnull %0, ptr noundef nonnull %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @CBS_len(ptr noundef nonnull %0) #5
  %i.b = tail call i64 @CBS_len(ptr noundef nonnull %1) #5
  %.not = icmp eq i64 %i.a, %i.b
  br i1 %.not, label %bb.b, label %._crit_edge

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @CBS_data(ptr noundef nonnull %0) #5
  %i.d = tail call ptr @CBS_data(ptr noundef nonnull %1) #5
  %i.e = tail call i64 @CBS_len(ptr noundef nonnull %0) #5
  %.not1516 = icmp eq i64 %i.e, 0
  br i1 %.not1516, label %._crit_edge, label %.lr.ph

bb.c:                                             ; preds = %.lr.ph
  %i.f = add nuw i64 %.01217, 1                   ; 2 uses
  %i.g = tail call i64 @CBS_len(ptr noundef nonnull %0) #5
  %.not15.not = icmp ult i64 %i.f, %i.g
  br i1 %.not15.not, label %.lr.ph, label %._crit_edge, !llvm.loop !68

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %.01217 = phi i64 [ %i.f, %bb.c ], [ 0, %bb.b ] ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 %.01217
  %i.i = load i8, ptr %i.h, align 1, !tbaa !11
  %i.j = zext i8 %i.i to i32
  %i.k = tail call i32 @OPENSSL_tolower(i32 noundef %i.j) #5
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 %.01217
  %i.m = load i8, ptr %i.l, align 1, !tbaa !11
  %i.n = zext i8 %i.m to i32
  %i.o = tail call i32 @OPENSSL_tolower(i32 noundef %i.n) #5
  %.not14 = icmp eq i32 %i.k, %i.o
  br i1 %.not14, label %bb.c, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.2 = phi i32 [ 0, %bb.a ], [ 1, %bb.b ], [ 0, %.lr.ph ], [ 1, %bb.c ]
  ret i32 %.2
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @starts_with(ptr noundef nonnull %0, i8 noundef zeroext range(i8 46, 92) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @CBS_len(ptr noundef nonnull %0) #5
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @CBS_data(ptr noundef nonnull %0) #5
  %i.c = load i8, ptr %i.b, align 1, !tbaa !11
  %i.d = icmp eq i8 %i.c, %1
  %i.e = zext i1 %i.d to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = phi i32 [ 0, %bb.a ], [ %i.e, %bb.b ]
  ret i32 %i.f
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @has_suffix_case(ptr noundef nonnull %0, ptr noundef nonnull %1) unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.cbs_st, align 8             ; 5 uses
  %i.a = tail call i64 @CBS_len(ptr noundef nonnull %0) #5
  %i.b = tail call i64 @CBS_len(ptr noundef nonnull %1) #5
  %i.c = icmp ult i64 %i.a, %i.b
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !29
  %i.d = tail call i64 @CBS_len(ptr noundef nonnull %0) #5
  %i.e = tail call i64 @CBS_len(ptr noundef nonnull %1) #5
  %i.f = sub i64 %i.d, %i.e
  %i.g = call i32 @CBS_skip(ptr noundef nonnull %2, i64 noundef %i.f) #5 ; 0 uses
  %i.h = call fastcc i32 @equal_case(ptr noundef %2, ptr noundef %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #5
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.h, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

declare i32 @CBS_get_u8(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @OPENSSL_tolower(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @is_valid_rfc822_local_part(ptr noundef nonnull %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @CBS_len(ptr noundef nonnull %0) #5
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.c = tail call i64 @CBS_len(ptr noundef nonnull %0) #5
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %.loopexit, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.d = add nuw i64 %.08892, 1                   ; 2 uses
  %i.e = tail call i64 @CBS_len(ptr noundef nonnull %0) #5
  %i.f = icmp ult i64 %i.d, %i.e
  br i1 %i.f, label %.lr.ph, label %.loopexit, !llvm.loop !69

.lr.ph:                                           ; preds = %.preheader, %bb.b
  %.08892 = phi i64 [ %i.d, %bb.b ], [ 0, %.preheader ] ; 2 uses
  %i.g = tail call ptr @CBS_data(ptr noundef nonnull %0) #5
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 %.08892
  %i.i = load i8, ptr %i.h, align 1, !tbaa !11    ; 5 uses
  %i.j = zext i8 %i.i to i32
  %i.k = tail call i32 @OPENSSL_isalnum(i32 noundef %i.j) #5
  %i.l = icmp ne i32 %i.k, 0
  %i.m = insertelement <4 x i8> poison, i8 %i.i, i64 0
  %i.n = shufflevector <4 x i8> %i.m, <4 x i8> poison, <4 x i32> zeroinitializer
  %i.o = and <4 x i8> %i.n, <i8 -3, i8 -4, i8 -2, i8 -19>
  %i.p = icmp eq <4 x i8> %i.o, <i8 33, i8 36, i8 42, i8 45>
  %i.q = add i8 %i.i, -94
  %i.r = icmp ult i8 %i.q, 3
  %i.s = add i8 %i.i, -123
  %i.t = icmp ult i8 %i.s, 4
  %i.u = icmp eq i8 %i.i, 46
  %i.v = bitcast <4 x i1> %i.p to i4
  %i.w = icmp ne i4 %i.v, 0
  %op.rdx = or i1 %i.w, %i.u
  %op.rdx95 = or i1 %i.r, %i.t
  %op.rdx96 = or i1 %op.rdx, %op.rdx95
  %op.rdx97 = or i1 %op.rdx96, %i.l
  br i1 %op.rdx97, label %bb.b, label %.loopexit

.loopexit:                                        ; preds = %bb.b, %.lr.ph, %.preheader, %bb.a
  %.3 = phi i32 [ 0, %bb.a ], [ 1, %.preheader ], [ 1, %bb.b ], [ 0, %.lr.ph ]
  ret i32 %.3
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @is_valid_rfc822_domain(ptr noundef nonnull %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @CBS_len(ptr noundef nonnull %0) #5
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.c = tail call i64 @CBS_len(ptr noundef nonnull %0) #5
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %.loopexit, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.d = add nuw i64 %.01620, 1                   ; 2 uses
  %i.e = tail call i64 @CBS_len(ptr noundef nonnull %0) #5
  %i.f = icmp ult i64 %i.d, %i.e
  br i1 %i.f, label %.lr.ph, label %.loopexit, !llvm.loop !0

.lr.ph:                                           ; preds = %.preheader, %bb.b
  %.01620 = phi i64 [ %i.d, %bb.b ], [ 0, %.preheader ] ; 2 uses
  %i.g = tail call ptr @CBS_data(ptr noundef nonnull %0) #5
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 %.01620
  %i.i = load i8, ptr %i.h, align 1, !tbaa !11    ; 2 uses
  %i.j = zext i8 %i.i to i32
  %i.k = tail call i32 @OPENSSL_isalnum(i32 noundef %i.j) #5
  %i.l = icmp ne i32 %i.k, 0
  %i.m = add i8 %i.i, -45
  %i.n = icmp ult i8 %i.m, 2
  %or.cond5 = or i1 %i.l, %i.n
  br i1 %or.cond5, label %bb.b, label %.loopexit

.loopexit:                                        ; preds = %bb.b, %.lr.ph, %.preheader, %bb.a
  %.3 = phi i32 [ 0, %bb.a ], [ 1, %.preheader ], [ 1, %bb.b ], [ 0, %.lr.ph ]
  ret i32 %.3
}

declare i32 @CBS_mem_equal(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare i32 @OPENSSL_isalnum(i32 noundef) local_unnamed_addr #1

declare i32 @CBS_get_bytes(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }
attributes #6 = { nounwind willreturn memory(read) }
attributes #7 = { nounwind memory(none) }

!llvm.module.flags = !{!1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = distinct !{!0, !17}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 omnipotent char", !9, i64 0}
!11 = !{!5, !5, i64 0}
!12 = !{!"p1 _ZTS15GENERAL_NAME_st", !9, i64 0}
!13 = !{!"p1 _ZTS14asn1_string_st", !9, i64 0}
!14 = !{!"GENERAL_SUBTREE_st", !12, i64 0, !13, i64 8, !13, i64 16}
!15 = !{!14, !12, i64 0}
!16 = !{!"p1 _ZTS24stack_st_GENERAL_SUBTREE", !9, i64 0}
!17 = !{!"llvm.loop.mustprogress"}
!18 = !{!"NAME_CONSTRAINTS_st", !16, i64 0, !16, i64 8}
!19 = !{!18, !16, i64 0}
!20 = !{!18, !16, i64 8}
!21 = !{!"long", !5, i64 0}
!22 = !{!"GENERAL_NAME_st", !6, i64 0, !5, i64 8}
!23 = !{!22, !6, i64 0}
!24 = !{!"asn1_string_st", !6, i64 0, !6, i64 4, !10, i64 8, !21, i64 16}
!25 = !{!10, !10, i64 0}
!26 = !{!21, !21, i64 0}
!27 = !{!24, !6, i64 0}
!28 = !{!24, !10, i64 8}
!29 = !{i64 0, i64 8, !25, i64 8, i64 8, !26}
!30 = distinct !{!30, !17}
!31 = !{!"conf_value_st", !10, i64 0, !10, i64 8, !10, i64 16}
!32 = !{!31, !10, i64 8}
!33 = !{!31, !10, i64 16}
!34 = !{!16, !16, i64 0}
!35 = distinct !{!35, !17}
!36 = !{!"p1 _ZTS13X509_algor_st", !9, i64 0}
!37 = !{!"x509_sig_info_st", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12}
!38 = !{!"p1 _ZTS13stack_st_void", !9, i64 0}
!39 = !{!"crypto_ex_data_st", !38, i64 0}
!40 = !{!"p1 _ZTS18AUTHORITY_KEYID_st", !9, i64 0}
!41 = !{!"p1 _ZTS19stack_st_DIST_POINT", !9, i64 0}
!42 = !{!"p1 _ZTS21stack_st_GENERAL_NAME", !9, i64 0}
!43 = !{!"p1 _ZTS19NAME_CONSTRAINTS_st", !9, i64 0}
!44 = !{!"p1 _ZTS16x509_cert_aux_st", !9, i64 0}
!45 = !{!"p1 _ZTS16crypto_buffer_st", !9, i64 0}
!46 = !{!"x509_st", !9, i64 0, !36, i64 8, !13, i64 16, !37, i64 24, !6, i64 40, !39, i64 48, !21, i64 56, !6, i64 64, !6, i64 68, !6, i64 72, !6, i64 76, !13, i64 80, !40, i64 88, !41, i64 96, !42, i64 104, !43, i64 112, !5, i64 120, !44, i64 152, !45, i64 160, !5, i64 168}
!47 = !{!46, !42, i64 104}
!48 = !{!24, !6, i64 4}
!49 = distinct !{!49, !17}
!50 = distinct !{!50, !17}
!51 = !{!14, !13, i64 8}
!52 = !{!14, !13, i64 16}
!53 = distinct !{!53, !17}
!54 = distinct !{!54, !17, !55}
!55 = !{!"llvm.loop.peeled.count", i32 1}
!56 = distinct !{!56, !17}
!57 = distinct !{!57, !17}
!58 = distinct !{!58, !17}
!59 = distinct !{!59, !17}
!60 = distinct !{!60, !17}
!61 = !{!"p1 _ZTS24stack_st_X509_NAME_ENTRY", !9, i64 0}
!62 = !{!"p1 _ZTS10buf_mem_st", !9, i64 0}
!63 = !{!"X509_name_st", !61, i64 0, !6, i64 8, !62, i64 16, !10, i64 24, !6, i64 32}
!64 = !{!63, !6, i64 8}
!65 = !{!63, !6, i64 32}
!66 = !{!63, !10, i64 24}
!67 = !{i64 2490868}
!68 = distinct !{!68, !17}
!69 = distinct !{!69, !17}
end_hunk_1
