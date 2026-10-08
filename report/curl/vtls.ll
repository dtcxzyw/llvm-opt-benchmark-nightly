Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/curl/original/vtls?download=true
inline.NumInlined: 38
inline.NumDeleted: 11
begin_hunk_0_@ssl_cf_adjust_pollset:bb.a
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !131
  %i.g = tail call i32 %i.f(ptr noundef %0, ptr noundef %1, ptr noundef %2) #15
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !29
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  store ptr %.sroa.0.0.copyload, ptr %i.i, align 8, !tbaa !116
  ret i32 %i.g
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @ssl_cf_data_pending(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !29   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %i.c, align 8, !tbaa !116
  store ptr %1, ptr %i.c, align 8, !tbaa !117
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !118
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !172  ; 2 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = tail call zeroext i1 %i.f(ptr noundef nonnull %0, ptr noundef %1) #15
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !42   ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !100
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !173
  %i.m = tail call zeroext i1 %i.l(ptr noundef nonnull %i.i, ptr noundef %1) #15
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.0 = phi i1 [ %i.m, %bb.c ], [ true, %bb.b ]
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !29
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 64
  store ptr %.sroa.0.0.copyload, ptr %i.o, align 8, !tbaa !116
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define internal i32 @ssl_cf_send(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i1 zeroext %4, ptr nofree noundef captures(none) initializes((0, 8)) %5) #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !29   ; 4 uses
  store i64 0, ptr %5, align 8, !tbaa !109
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 64 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %i.e, align 8, !tbaa !116
  store ptr %1, ptr %i.e, align 8, !tbaa !117
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 176
  %i.g = load i32, ptr %i.f, align 8, !tbaa !120
  %i.h = icmp eq i32 %i.g, 1
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store i8 0, ptr %i.a, align 1, !tbaa !124
  %i.i = call fastcc i32 @ssl_cf_connect_deferred(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %i.a) ; 2 uses
  %.not = icmp eq i32 %i.i, 0                     ; 2 uses
  %i.j = load i8, ptr %i.a, align 1, !range !125
  %i.k = trunc nuw i8 %i.j to i1                  ; 2 uses
  %. = select i1 %i.k, i32 0, i32 81
  %.037 = select i1 %.not, i32 %., i32 %i.i       ; 2 uses
  %i.l = select i1 %.not, i1 %i.k, i1 false
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br i1 %i.l, label %bb.c, label %bb.k

bb.c:                                             ; preds = %bb.b, %bb.a
  %.1 = phi i32 [ %.037, %bb.b ], [ 0, %bb.a ]
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 168 ; 4 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !132  ; 4 uses
  %.not46 = icmp eq i64 %i.n, 0
  br i1 %.not46, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not47 = icmp ult i64 %i.n, %3
  br i1 %.not47, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = sub nuw i64 %i.n, %3
  store i64 %i.o, ptr %i.m, align 8, !tbaa !132
  store i64 %3, ptr %5, align 8, !tbaa !109
  br label %bb.k

bb.f:                                             ; preds = %bb.d
  store i64 %i.n, ptr %5, align 8, !tbaa !109
  %i.p = load i64, ptr %i.m, align 8, !tbaa !132  ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 %i.p
  %i.r = sub i64 %3, %i.p
  store i64 0, ptr %i.m, align 8, !tbaa !132
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.c
  %.040 = phi i64 [ %i.r, %bb.f ], [ %3, %bb.c ]  ; 2 uses
  %.039 = phi ptr [ %i.q, %bb.f ], [ %2, %bb.c ]
  %.not48 = icmp eq i64 %.040, 0
  br i1 %.not48, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  %i.s = load ptr, ptr %i.d, align 8, !tbaa !118
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 168
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !133
  %i.v = call i32 %i.u(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %.039, i64 noundef %.040, ptr noundef nonnull %i.b) #15 ; 2 uses
  %.not49 = icmp eq i32 %i.v, 0
  br i1 %.not49, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.w = load i64, ptr %i.b, align 8, !tbaa !109
  %i.x = load i64, ptr %5, align 8, !tbaa !109
  %i.y = add i64 %i.x, %i.w
  store i64 %i.y, ptr %5, align 8, !tbaa !109
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  br label %bb.k

bb.k:                                             ; preds = %bb.b, %bb.e, %bb.j, %bb.g
  %.2 = phi i32 [ 0, %bb.e ], [ %i.v, %bb.j ], [ %.1, %bb.g ], [ %.037, %bb.b ]
  %i.z = load ptr, ptr %i.c, align 8, !tbaa !29
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 64
  store ptr %.sroa.0.0.copyload, ptr %i.aa, align 8, !tbaa !116
  ret i32 %.2
}

; Function Attrs: nounwind uwtable
define internal i32 @ssl_cf_recv(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef initializes((0, 8)) %4) #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !29   ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 64 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %i.d, align 8, !tbaa !116
  store ptr %1, ptr %i.d, align 8, !tbaa !117
  store i64 0, ptr %4, align 8, !tbaa !109
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 176
  %i.f = load i32, ptr %i.e, align 8, !tbaa !120
  %i.g = icmp eq i32 %i.f, 1
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store i8 0, ptr %i.a, align 1, !tbaa !124
  %i.h = call fastcc i32 @ssl_cf_connect_deferred(ptr noundef nonnull %0, ptr noundef %1, ptr noundef null, i64 noundef 0, ptr noundef %i.a) ; 2 uses
  %.not = icmp eq i32 %i.h, 0                     ; 2 uses
  %i.i = load i8, ptr %i.a, align 1, !range !125
  %i.j = trunc nuw i8 %i.i to i1                  ; 2 uses
  %. = select i1 %i.j, i32 0, i32 81
  %.019 = select i1 %.not, i32 %., i32 %i.h
  %i.k = select i1 %.not, i1 %i.j, i1 false
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !118
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 160
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !134
  %i.o = call i32 %i.n(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %4) #15
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.1 = phi i32 [ %i.o, %bb.c ], [ %.019, %bb.b ]
  %i.p = load ptr, ptr %i.b, align 8, !tbaa !29
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 64
  store ptr %.sroa.0.0.copyload, ptr %i.q, align 8, !tbaa !116
  ret i32 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @ssl_cf_cntrl(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1, i32 noundef %2, i32 %3, ptr nofree readnone captures(none) %4) #5 {
bb.a:
  %cond = icmp eq i32 %2, 256
  br i1 %cond, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !29
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !121  ; 7 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load i32, ptr %i.e, align 8, !tbaa !135
  %.not9 = icmp eq i32 %i.f, 0
  br i1 %.not9, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(9) @.str.40, ptr noundef nonnull dereferenceable(1) %i.d) #16
  %.not10 = icmp eq i32 %i.g, 0
  br i1 %.not10, label %.sink.split, label %sub_0

sub_0:                                            ; preds = %bb.d
  %i.h = load i8, ptr %i.d, align 1
  %.not18 = icmp eq i8 %i.h, 104
  br i1 %.not18, label %sub_1, label %bb.e

sub_1:                                            ; preds = %sub_0
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %i.j = load i8, ptr %i.i, align 1               ; 2 uses
  %i.k = zext i8 %i.j to i32
  %i.l = sub nsw i32 50, %i.k
  %.not19 = icmp eq i8 %i.j, 50
  br i1 %.not19, label %sub_2, label %.tail

sub_2:                                            ; preds = %sub_1
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  %i.n = load i8, ptr %i.m, align 1
  %i.o = zext i8 %i.n to i32
  %i.p = sub nsw i32 0, %i.o
  br label %.tail

.tail:                                            ; preds = %sub_1, %sub_2
  %i.q = phi i32 [ %i.p, %sub_2 ], [ %i.l, %sub_1 ]
  %.not11 = icmp eq i32 %i.q, 0
  br i1 %.not11, label %.sink.split, label %sub_115

sub_115:                                          ; preds = %.tail
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %i.s = load i8, ptr %i.r, align 1               ; 2 uses
  %i.t = zext i8 %i.s to i32
  %i.u = sub nsw i32 51, %i.t
  %.not21 = icmp eq i8 %i.s, 51
  br i1 %.not21, label %sub_216, label %.tail13

sub_216:                                          ; preds = %sub_115
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  %i.w = load i8, ptr %i.v, align 1
  %i.x = zext i8 %i.w to i32
  %i.y = sub nsw i32 0, %i.x
  br label %.tail13

.tail13:                                          ; preds = %sub_115, %sub_216
  %5 = phi i32 [ %i.y, %sub_216 ], [ %i.u, %sub_115 ]
  %.not12 = icmp eq i32 %5, 0
  br i1 %.not12, label %.sink.split, label %bb.e

.sink.split:                                      ; preds = %.tail13, %.tail, %bb.d
  %.sink = phi i8 [ 11, %bb.d ], [ 20, %.tail ], [ 30, %.tail13 ]
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !136
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 790
  store i8 %.sink, ptr %i.ab, align 2, !tbaa !178
  br label %bb.e

bb.e:                                             ; preds = %sub_0, %.sink.split, %bb.b, %bb.c, %.tail13, %bb.a
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @cf_ssl_is_alive(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !42   ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !100
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !179
  %i.f = tail call zeroext i1 %i.e(ptr noundef nonnull %i.b, ptr noundef %1, ptr noundef %2) #15
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.g = phi i1 [ %i.f, %bb.b ], [ false, %bb.a ]
  ret i1 %i.g
}

declare i32 @Curl_cf_def_conn_keep_alive(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal i32 @ssl_cf_query(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !29   ; 5 uses
  switch i32 %2, label %bb.p [
    i32 5, label %bb.b
    i32 12, label %bb.e
    i32 13, label %bb.e
    i32 15, label %bb.j
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.d = load i8, ptr %i.c, align 4
  %i.e = and i8 %i.d, 1
  %.not44 = icmp eq i8 %i.e, 0
  br i1 %.not44, label %bb.r, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %0, align 8, !tbaa !100
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load i32, ptr %i.g, align 8, !tbaa !137
  %i.i = and i32 %i.h, 10
  %i.j = icmp eq i32 %i.i, 10
  br i1 %i.j, label %bb.r, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %i.k, i64 16, i1 false), !tbaa.struct !129
  br label %bb.r

bb.e:                                             ; preds = %bb.a, %bb.a
  %i.l = load ptr, ptr %0, align 8, !tbaa !100
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load i32, ptr %i.m, align 8, !tbaa !137
  %i.o = and i32 %i.n, 10
  %i.p = icmp eq i32 %i.o, 10
  br i1 %i.p, label %bb.p, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %i.q, align 8, !tbaa !116
  store ptr %1, ptr %i.q, align 8, !tbaa !117
  %i.r = load ptr, ptr @Curl_ssl, align 8, !tbaa !15 ; 2 uses
  %.not.i.i = icmp ne ptr %i.r, @Curl_ssl_multi
  %i.s = load ptr, ptr @available_backends, align 16
  %.not15.i.i = icmp eq ptr %i.s, null
  %or.cond.i = select i1 %.not.i.i, i1 true, i1 %.not15.i.i
  br i1 %or.cond.i, label %Curl_ssl_backend.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = tail call ptr @curl_getenv(ptr noundef nonnull @.str.23) #15, !inline_history !0 ; 3 uses
  %.not16.i.i = icmp eq ptr %i.t, null
  %i.u = load ptr, ptr @available_backends, align 16 ; 3 uses
  %.not1720.i.i = icmp eq ptr %i.u, null
  %or.cond.i.i = select i1 %.not16.i.i, i1 true, i1 %.not1720.i.i
  br i1 %or.cond.i.i, label %multissl_setup.exit.sink.split.i, label %.lr.ph.i.i

bb.h:                                             ; preds = %.lr.ph.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr @available_backends, i64 %indvars.iv.next.i.i
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !15   ; 2 uses
  %.not17.i.i = icmp eq ptr %i.w, null
  br i1 %.not17.i.i, label %.loopexit.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !1

.lr.ph.i.i:                                       ; preds = %bb.g, %bb.h
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %bb.h ], [ 0, %bb.g ] ; 2 uses
  %i.x = phi ptr [ %i.w, %bb.h ], [ %i.u, %bb.g ]
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !21
  %i.aa = tail call i32 @curl_strequal(ptr noundef nonnull %i.t, ptr noundef %i.z) #15, !inline_history !0
  %.not18.i.i = icmp eq i32 %i.aa, 0
  br i1 %.not18.i.i, label %bb.h, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr @available_backends, i64 %indvars.iv.i.i
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !15
  br label %multissl_setup.exit.sink.split.i

.loopexit.loopexit.i.i:                           ; preds = %bb.h
  %.pre.i.i = load ptr, ptr @available_backends, align 16, !tbaa !15
  br label %multissl_setup.exit.sink.split.i

multissl_setup.exit.sink.split.i:                 ; preds = %.loopexit.loopexit.i.i, %bb.i, %bb.g
  %.sink.i = phi ptr [ %i.ac, %bb.i ], [ %.pre.i.i, %.loopexit.loopexit.i.i ], [ %i.u, %bb.g ]
  store ptr %.sink.i, ptr @Curl_ssl, align 8, !tbaa !15
  %i.ad = load ptr, ptr @Curl_cfree, align 8, !tbaa !22
  tail call void %i.ad(ptr noundef %i.t) #15, !inline_history !180
  %.pre = load ptr, ptr @Curl_ssl, align 8, !tbaa !15
  %.pre48 = load ptr, ptr %i.a, align 8, !tbaa !29
  br label %Curl_ssl_backend.exit

Curl_ssl_backend.exit:                            ; preds = %bb.f, %multissl_setup.exit.sink.split.i
  %i.ae = phi ptr [ %i.b, %bb.f ], [ %.pre48, %multissl_setup.exit.sink.split.i ]
  %i.af = phi ptr [ %i.r, %bb.f ], [ %.pre, %multissl_setup.exit.sink.split.i ]
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !23
  store i32 %i.ag, ptr %4, align 8, !tbaa !181
  %i.ah = load ptr, ptr %i.b, align 8, !tbaa !118
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 104
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !138
  %i.ak = icmp eq i32 %2, 12
  %i.al = select i1 %i.ak, i32 4194349, i32 4194347
  %i.am = tail call ptr %i.aj(ptr noundef %i.ae, i32 noundef %i.al) #15
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.am, ptr %i.an, align 8, !tbaa !182
  %i.ao = load ptr, ptr %i.a, align 8, !tbaa !29
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 64
  store ptr %.sroa.0.0.copyload, ptr %i.ap, align 8, !tbaa !116
  br label %bb.r

bb.j:                                             ; preds = %bb.a
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !121 ; 2 uses
  store ptr %i.ar, ptr %4, align 8, !tbaa !108
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.r, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 2187
  %i.at = load i64, ptr %i.as, align 1
  %i.au = and i64 %i.at, 536870912
  %.not42 = icmp eq i64 %i.au, 0
  br i1 %.not42, label %bb.r, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 4504
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !97 ; 2 uses
  %.not43 = icmp eq ptr %i.aw, null
  br i1 %.not43, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !99
  %i.az = icmp sgt i32 %i.ay, 0
  br i1 %i.az, label %bb.n, label %bb.r

bb.n:                                             ; preds = %bb.l, %bb.m
  %i.ba = load ptr, ptr %0, align 8, !tbaa !100
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 12
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !102
  %i.bd = icmp sgt i32 %i.bc, 0
  br i1 %i.bd, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  tail call void (ptr, ptr, ptr, ...) @Curl_trc_cf_infof(ptr noundef nonnull %1, ptr noundef nonnull %0, ptr noundef nonnull @.str.43, ptr noundef %i.ar) #15
  br label %bb.r

bb.p:                                             ; preds = %bb.a, %bb.e
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !42 ; 3 uses
  %.not45 = icmp eq ptr %i.bf, null
  br i1 %.not45, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !100
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 96
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !183
  %i.bj = tail call i32 %i.bi(ptr noundef nonnull %i.bf, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) #15
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.j, %bb.k, %bb.m, %bb.n, %bb.o, %bb.b, %bb.c, %bb.d, %Curl_ssl_backend.exit
  %.0 = phi i32 [ 0, %bb.j ], [ 0, %bb.b ], [ 0, %Curl_ssl_backend.exit ], [ 0, %bb.d ], [ 0, %bb.c ], [ 0, %bb.o ], [ 0, %bb.n ], [ 48, %bb.p ], [ 0, %bb.m ], [ 0, %bb.k ], [ %i.bj, %bb.q ]
  ret i32 %.0
}

declare i32 @Curl_cf_def_cntrl(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define hidden i32 @Curl_ssl_cfilter_add(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [80 x i8], align 16               ; 4 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  %i.c = icmp eq i32 %3, 1
end_hunk_0
