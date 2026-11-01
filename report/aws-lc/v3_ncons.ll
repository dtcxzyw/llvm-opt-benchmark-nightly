Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/aws-lc/original/v3_ncons?download=true
inline.NumInlined: 47
inline.NumDeleted: 24
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@NAME_CONSTRAINTS_check:bb.a
  br i1 %.not57, label %bb.h, label %.thread63

bb.h:                                             ; preds = %bb.g
  store i32 1, ptr %2, align 8, !tbaa !23
  br label %bb.i

bb.i:                                             ; preds = %bb.k, %bb.h
  %.047 = phi i32 [ -1, %bb.h ], [ %i.x, %bb.k ]
  %i.x = tail call i32 @X509_NAME_get_index_by_NID(ptr noundef %i.a, i32 noundef 48, i32 noundef %.047) #5 ; 3 uses
  %i.y = icmp eq i32 %i.x, -1
  br i1 %i.y, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.z = tail call ptr @X509_NAME_get_entry(ptr noundef %i.a, i32 noundef %i.x) #5
  %i.aa = tail call ptr @X509_NAME_ENTRY_get_data(ptr noundef %i.z) #5 ; 2 uses
  store ptr %i.aa, ptr %i.v, align 8, !tbaa !11
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !48
  %.not58 = icmp eq i32 %i.ac, 22
  br i1 %.not58, label %bb.k, label %.thread63

bb.k:                                             ; preds = %bb.j
  %i.ad = call fastcc i32 @nc_match(ptr noundef nonnull %2, ptr noundef nonnull %1) ; 2 uses
  %.not59 = icmp eq i32 %i.ad, 0
  br i1 %.not59, label %bb.i, label %.thread63

.thread63:                                        ; preds = %bb.k, %bb.j, %bb.g
  %.250.ph = phi i32 [ %i.w, %bb.g ], [ 53, %bb.j ], [ %i.ad, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #5
  br label %.loopexit

bb.l:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #5
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.f
  %i.ae = load ptr, ptr %i.d, align 8, !tbaa !47
  %i.af = tail call i64 @OPENSSL_sk_num(ptr noundef %i.ae) #5
  %.not69 = icmp eq i64 %i.af, 0
  br i1 %.not69, label %.loopexit, label %.lr.ph

bb.n:                                             ; preds = %.lr.ph
  %i.ag = add nuw i64 %.04666, 1                  ; 2 uses
  %i.ah = load ptr, ptr %i.d, align 8, !tbaa !47
  %i.ai = tail call i64 @OPENSSL_sk_num(ptr noundef %i.ah) #5
  %i.aj = icmp ult i64 %i.ag, %i.ai
  br i1 %i.aj, label %.lr.ph, label %.loopexit, !llvm.loop !35

.lr.ph:                                           ; preds = %bb.m, %bb.n
  %.04666 = phi i64 [ %i.ag, %bb.n ], [ 0, %bb.m ] ; 2 uses
  %i.ak = load ptr, ptr %i.d, align 8, !tbaa !47
  %i.al = tail call ptr @OPENSSL_sk_value(ptr noundef %i.ak, i64 noundef %.04666) #5
  %i.am = tail call fastcc i32 @nc_match(ptr noundef %i.al, ptr noundef nonnull %1) ; 2 uses
  %.not60 = icmp eq i32 %i.am, 0
  br i1 %.not60, label %bb.n, label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %bb.n, %bb.m, %.thread63, %bb.a, %bb.b, %bb.d, %bb.e
  %.6 = phi i32 [ %.250.ph, %.thread63 ], [ 1, %bb.b ], [ 1, %bb.a ], [ 1, %bb.e ], [ 1, %bb.d ], [ 0, %bb.m ], [ %i.am, %.lr.ph ], [ 0, %bb.n ]
  ret i32 %.6
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare ptr @X509_get_subject_name(ptr noundef) local_unnamed_addr #1

declare i32 @X509_NAME_entry_count(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 54) i32 @nc_match(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !19
  %i.b = tail call i64 @OPENSSL_sk_num(ptr noundef %i.a) #5
  %.not57 = icmp eq i64 %i.b, 0
  br i1 %.not57, label %.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.f
  %.047 = phi i64 [ %i.n, %bb.f ], [ 0, %bb.a ]   ; 2 uses
  %.03146 = phi i32 [ %.132, %bb.f ], [ 0, %bb.a ] ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !19
  %i.d = tail call ptr @OPENSSL_sk_value(ptr noundef %i.c, i64 noundef %.047) #5 ; 3 uses
  %i.e = load i32, ptr %0, align 8, !tbaa !23
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !15   ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !23
  %.not39 = icmp eq i32 %i.e, %i.g
  br i1 %.not39, label %bb.b, label %bb.f

bb.b:                                             ; preds = %.lr.ph
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !51
  %.not40 = icmp eq ptr %i.i, null
  br i1 %.not40, label %bb.c, label %.loopexit43

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !52
  %.not41 = icmp eq ptr %i.k, null
  br i1 %.not41, label %bb.d, label %.loopexit43

bb.d:                                             ; preds = %bb.c
  %i.l = icmp eq i32 %.03146, 2
  br i1 %i.l, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = tail call fastcc i32 @nc_match_single(ptr noundef nonnull %0, ptr noundef nonnull %i.f, i32 noundef 0) ; 2 uses
  switch i32 %i.m, label %.loopexit43 [
    i32 0, label %bb.f
    i32 47, label %.fold.split
  ]

.fold.split:                                      ; preds = %bb.e
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.fold.split, %bb.d, %.lr.ph
  %.132 = phi i32 [ %.03146, %.lr.ph ], [ 2, %bb.d ], [ 2, %bb.e ], [ 1, %.fold.split ] ; 2 uses
  %i.n = add nuw i64 %.047, 1                     ; 2 uses
  %i.o = load ptr, ptr %1, align 8, !tbaa !19
  %i.p = tail call i64 @OPENSSL_sk_num(ptr noundef %i.o) #5
  %i.q = icmp ult i64 %i.n, %i.p
  br i1 %i.q, label %.lr.ph, label %._crit_edge, !llvm.loop !49

._crit_edge:                                      ; preds = %bb.f
  %i.r = icmp eq i32 %.132, 1
  br i1 %i.r, label %.loopexit43, label %.preheader

.preheader:                                       ; preds = %bb.a, %._crit_edge
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !20
  %i.u = tail call i64 @OPENSSL_sk_num(ptr noundef %i.t) #5
  %.not58 = icmp eq i64 %i.u, 0
  br i1 %.not58, label %.loopexit43, label %.lr.ph49

.lr.ph49:                                         ; preds = %.preheader, %bb.j
  %.148 = phi i64 [ %i.af, %bb.j ], [ 0, %.preheader ] ; 2 uses
  %i.v = load ptr, ptr %i.s, align 8, !tbaa !20
  %i.w = tail call ptr @OPENSSL_sk_value(ptr noundef %i.v, i64 noundef %.148) #5 ; 3 uses
  %i.x = load i32, ptr %0, align 8, !tbaa !23
  %i.y = load ptr, ptr %i.w, align 8, !tbaa !15   ; 2 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !23
  %.not = icmp eq i32 %i.x, %i.z
  br i1 %.not, label %bb.g, label %bb.j

bb.g:                                             ; preds = %.lr.ph49
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !51
  %.not36 = icmp eq ptr %i.ab, null
  br i1 %.not36, label %bb.h, label %.loopexit43

bb.h:                                             ; preds = %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !52
  %.not37 = icmp eq ptr %i.ad, null
  br i1 %.not37, label %bb.i, label %.loopexit43

bb.i:                                             ; preds = %bb.h
  %i.ae = tail call fastcc i32 @nc_match_single(ptr noundef nonnull %0, ptr noundef nonnull %i.y, i32 noundef 1) ; 2 uses
  switch i32 %i.ae, label %.loopexit43 [
    i32 0, label %.loopexit43.loopexit69
    i32 47, label %bb.j
  ]

bb.j:                                             ; preds = %bb.i, %.lr.ph49
  %i.af = add nuw i64 %.148, 1                    ; 2 uses
  %i.ag = load ptr, ptr %i.s, align 8, !tbaa !20
  %i.ah = tail call i64 @OPENSSL_sk_num(ptr noundef %i.ag) #5
  %i.ai = icmp ult i64 %i.af, %i.ah
  br i1 %i.ai, label %.lr.ph49, label %.loopexit43, !llvm.loop !50

.loopexit43.loopexit69:                           ; preds = %bb.i
  br label %.loopexit43

.loopexit43:                                      ; preds = %bb.b, %bb.c, %bb.e, %bb.h, %bb.g, %bb.j, %bb.i, %.loopexit43.loopexit69, %.preheader, %._crit_edge
  %.033 = phi i32 [ 48, %.loopexit43.loopexit69 ], [ 47, %._crit_edge ], [ %i.ae, %bb.i ], [ 0, %.preheader ], [ 49, %bb.h ], [ 49, %bb.g ], [ 0, %bb.j ], [ 49, %bb.c ], [ %i.m, %bb.e ], [ 49, %bb.b ]
  ret i32 %.033
}

declare i32 @X509_NAME_get_index_by_NID(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare ptr @X509_NAME_get_entry(ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @X509_NAME_ENTRY_get_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nounwind uwtable
define range(i32 0, 54) i32 @cn2dnsid(ptr noundef %0, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %1, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  store ptr null, ptr %1, align 8, !tbaa !25
  store i64 0, ptr %2, align 8, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  store ptr null, ptr %i.a, align 8, !tbaa !25
  %i.b = call i32 @ASN1_STRING_to_UTF8(ptr noundef nonnull %i.a, ptr noundef %0) #5 ; 3 uses
  %i.c = icmp slt i32 %i.b, 0
  br i1 %i.c, label %bb.s, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.not9297 = icmp eq i32 %i.b, 0
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !25  ; 10 uses
  br i1 %.not9297, label %.thread91, label %.lr.ph.a

.lr.ph.a:                                         ; preds = %.preheader, %bb.b
  %.06598 = phi i32 [ %4, %bb.b ], [ %i.b, %.preheader ] ; 6 uses
  %3 = zext nneg i32 %.06598 to i64               ; 3 uses
  %i.d = getelementptr i8, ptr %.pre, i64 %3
  %i.e = getelementptr i8, ptr %i.d, i64 -1
  %i.f = load i8, ptr %i.e, align 1, !tbaa !11
  %i.g = icmp eq i8 %i.f, 0
  br i1 %i.g, label %bb.b, label %.critedge

bb.b:                                             ; preds = %.lr.ph.a
  %4 = add nsw i32 %.06598, -1                    ; 2 uses
  %.not92 = icmp eq i32 %4, 0
  br i1 %.not92, label %.thread91, label %.lr.ph.a, !llvm.loop !53

.critedge:                                        ; preds = %.lr.ph.a
  %i.h = call ptr @memchr(ptr noundef nonnull readonly dereferenceable(1) %.pre, i32 noundef 0, i64 noundef range(i64 0, 2147483648) %3) #6
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %OPENSSL_memchr.exit.thread, label %bb.c

bb.c:                                             ; preds = %.critedge
  call void @OPENSSL_free(ptr noundef nonnull %.pre) #5
  br label %bb.s

OPENSSL_memchr.exit.thread:                       ; preds = %.critedge
  %i.i = icmp samesign ugt i32 %.06598, 2
  br i1 %i.i, label %bb.d, label %OPENSSL_memchr.exit.thread.thread

bb.d:                                             ; preds = %OPENSSL_memchr.exit.thread
  %i.j = load i8, ptr %.pre, align 1, !tbaa !11
  %i.k = icmp eq i8 %i.j, 42
  br i1 %i.k, label %bb.e, label %OPENSSL_memchr.exit.thread.thread

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %.pre, i64 1
  %i.m = load i8, ptr %i.l, align 1, !tbaa !11
  %i.n = icmp eq i8 %i.m, 46
  %spec.select = select i1 %i.n, i32 2, i32 0
  br label %OPENSSL_memchr.exit.thread.thread

OPENSSL_memchr.exit.thread.thread:                ; preds = %bb.e, %bb.d, %OPENSSL_memchr.exit.thread
  %.059 = phi i32 [ 0, %OPENSSL_memchr.exit.thread ], [ %spec.select, %bb.e ], [ 0, %bb.d ] ; 2 uses
  %i.o = icmp slt i32 %.059, %.06598
  br i1 %i.o, label %.lr.ph102, label %.thread91

.lr.ph102:                                        ; preds = %OPENSSL_memchr.exit.thread.thread
  %5 = add nsw i32 %.06598, -1
  %i.p = zext nneg i32 %.059 to i64               ; 3 uses
  %6 = zext nneg i32 %5 to i64
  %wide.trip.count = zext nneg i32 %.06598 to i64 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.pre, i64 %i.p
  %i.r = load i8, ptr %i.q, align 1, !tbaa !11    ; 4 uses
  %i.s = and i8 %i.r, -33
  %i.t = add i8 %i.s, -65
  %or.cond74.peel = icmp ult i8 %i.t, 26
  br i1 %or.cond74.peel, label %bb.h, label %bb.f

bb.f:                                             ; preds = %.lr.ph102
  %i.u = add i8 %i.r, -48
  %or.cond8.peel = icmp ult i8 %i.u, 10
  %i.v = icmp eq i8 %i.r, 95
  %or.cond11.peel = or i1 %i.v, %or.cond8.peel
  br i1 %or.cond11.peel, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = add i8 %i.r, -127
  %or.cond17.peel = icmp ult i8 %i.w, -94
  br i1 %or.cond17.peel, label %bb.h, label %.thread91

bb.h:                                             ; preds = %bb.g, %bb.f, %.lr.ph102
  %.1.ph.peel = phi i32 [ 1, %bb.g ], [ 0, %bb.f ], [ 0, %.lr.ph102 ]
  %indvars.iv.next.peel = or disjoint i64 %i.p, 1 ; 2 uses
  %exitcond.peel.not = icmp eq i64 %indvars.iv.next.peel, %wide.trip.count
  br i1 %exitcond.peel.not, label %.thread91, label %.peel.next

.peel.next:                                       ; preds = %bb.h, %bb.o
  %indvars.iv.a = phi i64 [ %indvars.iv.next.a, %bb.o ], [ %indvars.iv.next.peel, %bb.h ] ; 4 uses
  %.060100 = phi i32 [ %.1.ph, %bb.o ], [ %.1.ph.peel, %bb.h ] ; 4 uses
  %.06199 = phi i32 [ %.162.ph, %bb.o ], [ 0, %bb.h ] ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.pre, i64 %indvars.iv.a ; 3 uses
  %i.y = load i8, ptr %i.x, align 1, !tbaa !11    ; 5 uses
  %i.z = and i8 %i.y, -33
  %i.aa = add i8 %i.z, -65
  %or.cond74 = icmp ult i8 %i.aa, 26
  br i1 %or.cond74, label %bb.o, label %bb.i

bb.i:                                             ; preds = %.peel.next
  %i.ab = add i8 %i.y, -48
  %or.cond8 = icmp ult i8 %i.ab, 10
  %i.ac = icmp eq i8 %i.y, 95
  %or.cond11 = or i1 %i.ac, %or.cond8
  br i1 %or.cond11, label %bb.o, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ad = add i8 %i.y, -127
  %or.cond17 = icmp ult i8 %i.ad, -94
  br i1 %or.cond17, label %bb.o, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ae = icmp samesign ugt i64 %indvars.iv.a, %i.p
  %i.af = icmp samesign ult i64 %indvars.iv.a, %6
  %or.cond76 = select i1 %i.ae, i1 %i.af, i1 false
  br i1 %or.cond76, label %bb.l, label %.thread91

bb.l:                                             ; preds = %bb.k
  switch i8 %i.y, label %.thread91 [
    i8 45, label %bb.o
    i8 46, label %bb.m
  ]

bb.m:                                             ; preds = %bb.l
  %i.ag = getelementptr inbounds nuw i8, ptr %i.x, i64 1
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !11  ; 2 uses
  %.not71 = icmp eq i8 %i.ah, 46
  br i1 %.not71, label %.thread91, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ai = getelementptr i8, ptr %i.x, i64 -1
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !11
  %.not72 = icmp eq i8 %i.aj, 45
  %.not73 = icmp eq i8 %i.ah, 45
  %or.cond77 = or i1 %.not73, %.not72
  br i1 %or.cond77, label %.thread91, label %bb.o

bb.o:                                             ; preds = %.peel.next, %bb.j, %bb.l, %bb.i, %bb.n
  %.162.ph = phi i32 [ 1, %bb.n ], [ %.06199, %bb.i ], [ %.06199, %bb.l ], [ %.06199, %bb.j ], [ %.06199, %.peel.next ] ; 2 uses
  %.1.ph = phi i32 [ %.060100, %bb.n ], [ %.060100, %bb.i ], [ %.060100, %bb.l ], [ 1, %bb.j ], [ %.060100, %.peel.next ] ; 2 uses
  %indvars.iv.next.a = add nuw nsw i64 %indvars.iv.a, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next.a, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.peel.next, !llvm.loop !54

._crit_edge:                                      ; preds = %bb.o
  %i.ak = icmp ne i32 %.162.ph, 0                 ; 2 uses
  %i.al = icmp ne i32 %.1.ph, 0
  %or.cond19 = select i1 %i.ak, i1 %i.al, i1 false
  br i1 %or.cond19, label %bb.p, label %bb.q

bb.p:                                             ; preds = %._crit_edge
  call void @OPENSSL_free(ptr noundef nonnull %.pre) #5
  br label %bb.s

bb.q:                                             ; preds = %._crit_edge
  br i1 %i.ak, label %bb.r, label %.thread91

bb.r:                                             ; preds = %bb.q
  store ptr %.pre, ptr %1, align 8, !tbaa !25
  store i64 %3, ptr %2, align 8, !tbaa !26
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
  %i.h = load i8, ptr %i.g, align 1, !tbaa !11
  %i.i = zext i8 %i.h to i64
  %i.j = shl nuw i64 %i.i, 56
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %i.l = load i8, ptr %i.k, align 1, !tbaa !11
  %i.m = zext i8 %i.l to i64
  %i.n = shl nuw nsw i64 %i.m, 48
  %i.o = or disjoint i64 %i.n, %i.j
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 2
  %i.q = load i8, ptr %i.p, align 1, !tbaa !11
  %i.r = zext i8 %i.q to i64
  %i.s = shl nuw nsw i64 %i.r, 40
  %i.t = or disjoint i64 %i.o, %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %i.g, i64 3
  %i.v = load i8, ptr %i.u, align 1, !tbaa !11
  %i.w = zext i8 %i.v to i64
  %i.x = shl nuw nsw i64 %i.w, 32
  %i.y = or disjoint i64 %i.t, %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !11
  %i.ab = zext i8 %i.aa to i64
  %i.ac = shl nuw nsw i64 %i.ab, 24
  %i.ad = or disjoint i64 %i.y, %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %i.g, i64 5
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !11
  %i.ag = zext i8 %i.af to i64
  %i.ah = shl nuw nsw i64 %i.ag, 16
  %i.ai = or disjoint i64 %i.ad, %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %i.g, i64 6
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !11
  %i.al = zext i8 %i.ak to i64
  %i.am = shl nuw nsw i64 %i.al, 8
  %i.an = or i64 %i.ai, %i.am
  %i.ao = getelementptr inbounds nuw i8, ptr %i.g, i64 7
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !11
  %i.aq = zext i8 %i.ap to i64
  %i.ar = or i64 %i.an, %i.aq                     ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.at = load i8, ptr %i.as, align 1, !tbaa !11
  %i.au = zext i8 %i.at to i64
  %i.av = shl nuw i64 %i.au, 56
  %i.aw = getelementptr inbounds nuw i8, ptr %i.g, i64 9
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !11
  %i.ay = zext i8 %i.ax to i64
  %i.az = shl nuw nsw i64 %i.ay, 48
  %i.ba = or disjoint i64 %i.az, %i.av
  %i.bb = getelementptr inbounds nuw i8, ptr %i.g, i64 10
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !11
  %i.bd = zext i8 %i.bc to i64
  %i.be = shl nuw nsw i64 %i.bd, 40
  %i.bf = or disjoint i64 %i.ba, %i.be
  %i.bg = getelementptr inbounds nuw i8, ptr %i.g, i64 11
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !11
  %i.bi = zext i8 %i.bh to i64
  %i.bj = shl nuw nsw i64 %i.bi, 32
  %i.bk = or disjoint i64 %i.bf, %i.bj
  %i.bl = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !11
  %i.bn = zext i8 %i.bm to i64
  %i.bo = shl nuw nsw i64 %i.bn, 24
  %i.bp = or disjoint i64 %i.bk, %i.bo
  %i.bq = getelementptr inbounds nuw i8, ptr %i.g, i64 13
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !11
  %i.bs = zext i8 %i.br to i64
  %i.bt = shl nuw nsw i64 %i.bs, 16
  %i.bu = or disjoint i64 %i.bp, %i.bt
  %i.bv = getelementptr inbounds nuw i8, ptr %i.g, i64 14
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !11
  %i.bx = zext i8 %i.bw to i64
  %i.by = shl nuw nsw i64 %i.bx, 8
  %i.bz = or i64 %i.bu, %i.by
  %i.ca = getelementptr inbounds nuw i8, ptr %i.g, i64 15
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !11
  %i.cc = zext i8 %i.cb to i64
  %i.cd = or i64 %i.bz, %i.cc                     ; 4 uses
  %i.ce = icmp eq i64 %i.ar, 0
  br i1 %i.ce, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.cf = icmp eq i64 %i.cd, 0
  br label %validate_ipv6_cidr_mask.exit

bb.g:                                             ; preds = %bb.e
  %i.cg = add i64 %i.ar, -1
  %i.ch = or i64 %i.cg, %i.ar
end_hunk_0
