Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/curl/original/curl_trc?download=true
inline.NumInlined: 11
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@Curl_failf:bb.a
  br i1 %.not13, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @curlx_strcopy(ptr noundef nonnull %i.j, i64 noundef 256, ptr noundef nonnull %i.a, i64 noundef %i.h) #7
  %i.n = load i32, ptr %i.k, align 4
  %i.o = or i32 %i.n, 8
  store i32 %i.o, ptr %i.k, align 4
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %i.p = add nuw nsw i64 %i.h, 1                  ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.h
  store i8 10, ptr %i.q, align 1, !tbaa !78
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.p
  store i8 0, ptr %i.r, align 1, !tbaa !78
  call fastcc void @trc_write(ptr noundef nonnull %0, ptr noundef %i.a, i64 noundef %i.p)
  call void @llvm.va_end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.b
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #4

declare i32 @curl_mvsnprintf(ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @curlx_strcopy(ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @trc_write(ptr noundef %0, ptr noundef nonnull %1, i64 noundef range(i64 -2147483647, 2147483649) %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2187
  %i.c = load i64, ptr %i.b, align 1
  %i.d = and i64 %i.c, 536870912
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 552 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !71
  %.not17 = icmp eq ptr %i.f, null
  br i1 %.not17, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = tail call zeroext i1 @Curl_is_in_callback(ptr noundef nonnull %0) #7
  tail call void @Curl_set_in_callback(ptr noundef nonnull %0, i1 noundef zeroext true) #7
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !71
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !79
  %i.k = tail call i32 %i.h(ptr noundef nonnull %0, i32 noundef 0, ptr noundef nonnull %1, i64 noundef %2, ptr noundef %i.j) #7 ; 0 uses
  tail call void @Curl_set_in_callback(ptr noundef nonnull %0, i1 noundef zeroext %i.g) #7
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !80
  %i.m = tail call i64 @fwrite(ptr noundef nonnull @trc_write.s_infotype, i64 noundef 2, i64 noundef 1, ptr noundef %i.l) ; 0 uses
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !80
  %i.o = tail call i64 @fwrite(ptr noundef nonnull %1, i64 noundef %2, i64 noundef 1, ptr noundef %i.n) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @Curl_reset_fail(ptr nofree noundef captures(none) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !81   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %i.b, align 1, !tbaa !78
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4628 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4
  %i.e = and i32 %i.d, -9
  store i32 %i.e, ptr %i.c, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @Curl_infof(ptr noundef %0, ptr noundef %1, ...) local_unnamed_addr #0 {
bb.a:
  %2 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2187
  %i.b = load i64, ptr %i.a, align 1
  %i.c = and i64 %i.b, 536870912
  %.not8 = icmp eq i64 %i.c, 0
  br i1 %.not8, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4504 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !72   ; 2 uses
  %.not9 = icmp eq ptr %i.e, null
  br i1 %.not9, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load i32, ptr %i.f, align 8, !tbaa !74
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #7
  call void @llvm.va_start.p0(ptr nonnull %2)
  %i.i = load ptr, ptr %i.d, align 8, !tbaa !72
  call fastcc void @trc_infof(ptr noundef %0, ptr noundef %i.i, ptr noundef null, i32 noundef 0, ptr noundef %1, ptr noundef %2)
  call void @llvm.va_end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @trc_infof(ptr noundef nonnull %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull %5) unnamed_addr #0 {
bb.a:
  %i.a = alloca [2048 x i8], align 16             ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2187
  %i.c = load i64, ptr %i.b, align 1
  %i.d = and i64 %i.c, 536870912
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4504
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !72   ; 2 uses
  %.not37 = icmp eq ptr %i.f, null
  br i1 %.not37, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load i32, ptr %i.g, align 8, !tbaa !74
  %i.i = icmp sgt i32 %i.h, 0
  %i.j = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_ids, i64 8), align 8
  %i.k = icmp sgt i32 %i.j, 0
  %or.cond = select i1 %i.i, i1 %i.k, i1 false
  br i1 %or.cond, label %bb.e, label %bb.l

bb.d:                                             ; preds = %bb.b
  %.old = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_ids, i64 8), align 8, !tbaa !74
  %.old1 = icmp sgt i32 %.old, 0
  br i1 %.old1, label %bb.e, label %bb.l

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !75   ; 2 uses
  %.not.i = icmp eq ptr %i.m, null
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 80
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 2808
  %.in.i = select i1 %.not.i, ptr %i.o, ptr %i.n
  %i.p = load i64, ptr %.in.i, align 8, !tbaa !76 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !77   ; 3 uses
  %i.s = icmp sgt i64 %i.r, -1
  %i.t = icmp sgt i64 %i.p, -1                    ; 2 uses
  br i1 %i.s, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  br i1 %i.t, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.u = call i32 (ptr, i64, ptr, ...) @curl_msnprintf(ptr noundef nonnull %i.a, i64 noundef 2048, ptr noundef nonnull @.str.15, i64 noundef %i.r, i64 noundef %i.p) #7
  br label %trc_print_ids.exit

bb.h:                                             ; preds = %bb.f
  %i.v = call i32 (ptr, i64, ptr, ...) @curl_msnprintf(ptr noundef nonnull %i.a, i64 noundef 2048, ptr noundef nonnull @.str.16, i64 noundef %i.r) #7
  br label %trc_print_ids.exit

bb.i:                                             ; preds = %bb.e
  br i1 %i.t, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.w = call i32 (ptr, i64, ptr, ...) @curl_msnprintf(ptr noundef nonnull %i.a, i64 noundef 2048, ptr noundef nonnull @.str.17, i64 noundef %i.p) #7
  br label %trc_print_ids.exit

bb.k:                                             ; preds = %bb.i
  %i.x = call i32 (ptr, i64, ptr, ...) @curl_msnprintf(ptr noundef nonnull %i.a, i64 noundef 2048, ptr noundef nonnull @.str.18) #7
  br label %trc_print_ids.exit

trc_print_ids.exit:                               ; preds = %bb.g, %bb.h, %bb.j, %bb.k
  %.0.in.i = phi i32 [ %i.u, %bb.g ], [ %i.v, %bb.h ], [ %i.w, %bb.j ], [ %i.x, %bb.k ]
  %.0.i = sext i32 %.0.in.i to i64
  br label %bb.l

bb.l:                                             ; preds = %trc_print_ids.exit, %bb.d, %bb.c, %bb.a
  %.0.a = phi i64 [ %.0.i, %trc_print_ids.exit ], [ 0, %bb.c ], [ 0, %bb.d ], [ 0, %bb.a ] ; 4 uses
  %.not38 = icmp eq ptr %1, null
  br i1 %.not38, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 %.0.a
  %6 = sub nsw i64 2048, %.0.a
  %i.z = load ptr, ptr %1, align 8, !tbaa !82
  %i.aa = call i32 (ptr, i64, ptr, ...) @curl_msnprintf(ptr noundef nonnull %i.y, i64 noundef %6, ptr noundef nonnull @.str.19, ptr noundef %i.z) #7
  %i.ab = sext i32 %i.aa to i64
  %i.ac = add nsw i64 %.0.a, %i.ab
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.1 = phi i64 [ %i.ac, %bb.m ], [ %.0.a, %bb.l ] ; 5 uses
  %.not39 = icmp eq ptr %2, null
  br i1 %.not39, label %bb.r, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ad = icmp sgt i32 %3, 0
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 %.1 ; 2 uses
  %i.af = sub nsw i64 2048, %.1                   ; 2 uses
  br i1 %i.ad, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ag = call i32 (ptr, i64, ptr, ...) @curl_msnprintf(ptr noundef nonnull %i.ae, i64 noundef %i.af, ptr noundef nonnull @.str.20, ptr noundef nonnull %2, i32 noundef %3) #7
  %i.ah = sext i32 %i.ag to i64
  %i.ai = add nsw i64 %.1, %i.ah
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.aj = call i32 (ptr, i64, ptr, ...) @curl_msnprintf(ptr noundef nonnull %i.ae, i64 noundef %i.af, ptr noundef nonnull @.str.19, ptr noundef nonnull %2) #7
  %i.ak = sext i32 %i.aj to i64
  %i.al = add nsw i64 %.1, %i.ak
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q, %bb.n
  %.2 = phi i64 [ %i.ai, %bb.p ], [ %i.al, %bb.q ], [ %.1, %bb.n ] ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 %.2
  %i.an = sub nsw i64 2048, %.2
  %i.ao = call i32 @curl_mvsnprintf(ptr noundef nonnull %i.am, i64 noundef %i.an, ptr noundef %4, ptr noundef nonnull %5) #7
  %i.ap = sext i32 %i.ao to i64
  %i.aq = add nsw i64 %.2, %i.ap                  ; 3 uses
  %.not.i40 = icmp ult i64 %i.aq, 2046
  br i1 %.not.i40, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 2043
  store i8 46, ptr %i.ar, align 1, !tbaa !78
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 2044
  store i8 46, ptr %i.as, align 4, !tbaa !78
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 2045
  store i8 46, ptr %i.at, align 1, !tbaa !78
  br label %trc_end_buf.exit

bb.t:                                             ; preds = %bb.r
  %i.au = add nuw nsw i64 %i.aq, 1
  br label %trc_end_buf.exit

trc_end_buf.exit:                                 ; preds = %bb.s, %bb.t
  %.sink19.i = phi i64 [ %i.aq, %bb.t ], [ 2046, %bb.s ]
  %.0.ph.i = phi i64 [ %i.au, %bb.t ], [ 2047, %bb.s ] ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sink19.i
  store i8 10, ptr %i.av, align 1, !tbaa !78
  %i.aw = getelementptr inbounds nuw i8, ptr %i.a, i64 %.0.ph.i
  store i8 0, ptr %i.aw, align 1, !tbaa !78
  call fastcc void @trc_write(ptr noundef nonnull %0, ptr noundef %i.a, i64 noundef %.0.ph.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret void
}

; Function Attrs: nounwind uwtable
define void @Curl_trc_cf_infof(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr noundef %2, ...) local_unnamed_addr #0 {
bb.a:
  %3 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2187
  %i.b = load i64, ptr %i.a, align 1
  %i.c = and i64 %i.b, 536870912
  %.not13 = icmp eq i64 %i.c, 0
  br i1 %.not13, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4504 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !72   ; 2 uses
  %.not14 = icmp eq ptr %i.e, null
  br i1 %.not14, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load i32, ptr %i.f, align 8, !tbaa !74
  %i.h = icmp sgt i32 %i.g, 0
  %i.i = icmp ne ptr %1, null
  %or.cond = and i1 %i.i, %i.h
  br i1 %or.cond, label %bb.f, label %bb.h

bb.e:                                             ; preds = %bb.c
  %.old1.not = icmp eq ptr %1, null
  br i1 %.old1.not, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.j = load ptr, ptr %1, align 8, !tbaa !90
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  %i.l = load i32, ptr %i.k, align 4, !tbaa !84
  %i.m = icmp sgt i32 %i.l, 0
  br i1 %i.m, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  call void @llvm.va_start.p0(ptr nonnull %3)
  %i.n = load ptr, ptr %i.d, align 8, !tbaa !72
  %i.o = load ptr, ptr %1, align 8, !tbaa !90
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !85
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.r = load i32, ptr %i.q, align 8, !tbaa !91
  call fastcc void @trc_infof(ptr noundef %0, ptr noundef %i.n, ptr noundef %i.p, i32 noundef %i.r, ptr noundef %2, ptr noundef %3)
  call void @llvm.va_end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define void @Curl_trc_feat_infof(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr noundef %2, ...) local_unnamed_addr #0 {
bb.a:
  %3 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2187
  %i.b = load i64, ptr %i.a, align 1
  %i.c = and i64 %i.b, 536870912
  %.not9 = icmp eq i64 %i.c, 0
  br i1 %.not9, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4504
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !72   ; 2 uses
  %.not10 = icmp eq ptr %i.e, null
  br i1 %.not10, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load i32, ptr %i.f, align 8, !tbaa !74
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load i32, ptr %i.i, align 8, !tbaa !74
  %i.k = icmp sgt i32 %i.j, 0
  br i1 %i.k, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  call void @llvm.va_start.p0(ptr nonnull %3)
  call fastcc void @trc_infof(ptr noundef %0, ptr noundef nonnull %1, ptr noundef null, i32 noundef 0, ptr noundef %2, ptr noundef %3)
  call void @llvm.va_end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define void @Curl_trc_timer(ptr noundef %0, i32 noundef %1, ptr noundef %2, ...) local_unnamed_addr #0 {
bb.a:
  %3 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2187
  %i.b = load i64, ptr %i.a, align 1
  %i.c = and i64 %i.b, 536870912
  %.not9 = icmp eq i64 %i.c, 0
  br i1 %.not9, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4504
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !72   ; 2 uses
  %.not10 = icmp eq ptr %i.e, null
  br i1 %.not10, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load i32, ptr %i.f, align 8, !tbaa !74
  %i.h = icmp sgt i32 %i.g, 0
  %i.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_timer, i64 8), align 8
  %i.j = icmp sgt i32 %i.i, 0
  %or.cond = select i1 %i.h, i1 %i.j, i1 false
  br i1 %or.cond, label %bb.f, label %bb.h

bb.e:                                             ; preds = %bb.c
  %.old = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_timer, i64 8), align 8, !tbaa !74
  %.old1 = icmp sgt i32 %.old, 0
  br i1 %.old1, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.k = icmp ult i32 %1, 15
  br i1 %i.k, label %bb.g, label %trc_timer_name.exit

end_hunk_0
