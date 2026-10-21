Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/vtls?download=true
inline.NumInlined: 44
inline.NumDeleted: 12
begin_hunk_0_@ssl_cf_close:bb.a
  tail call void %i.r(ptr noundef %i.t) #15, !inline_history !4
  store ptr null, ptr %i.s, align 8, !tbaa !137
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i32 0, ptr %i.u, align 8, !tbaa !138
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.w = load i8, ptr %i.v, align 4
  %i.x = and i8 %i.w, -2
  store i8 %i.x, ptr %i.v, align 4
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !122  ; 3 uses
  %.not = icmp eq ptr %i.z, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %cf_close.exit
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !126
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !208
  tail call void %i.ac(ptr noundef nonnull %i.z, ptr noundef %1) #15
  br label %bb.d

bb.d:                                             ; preds = %cf_close.exit, %bb.c
  %i.ad = load ptr, ptr %i.a, align 8, !tbaa !115
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 64
  store ptr %.sroa.0.0.copyload, ptr %i.ae, align 8, !tbaa !141
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @ssl_cf_shutdown(ptr noundef %0, ptr noundef %1, ptr noundef initializes((0, 1)) %2) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !115  ; 3 uses
  store i8 1, ptr %2, align 1, !tbaa !149
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 3 uses
  %i.d = load i8, ptr %i.c, align 4               ; 2 uses
  %i.e = and i8 %i.d, 1
  %.not = icmp eq i8 %i.e, 0
  br i1 %.not, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 176
  %i.g = load i32, ptr %i.f, align 8, !tbaa !145
  %i.h = icmp eq i32 %i.g, 3
  %i.i = and i8 %i.d, 2
  %.not30 = icmp eq i8 %i.i, 0
  %or.cond36 = and i1 %.not30, %i.h
  br i1 %or.cond36, label %bb.c, label %bb.m

bb.c:                                             ; preds = %bb.b
  %i.j = load ptr, ptr @Curl_ssl, align 8, !tbaa !43
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !154
  %.not31 = icmp eq ptr %i.l, null
  br i1 %.not31, label %bb.m, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %i.m, align 8, !tbaa !141
  store ptr %1, ptr %i.m, align 8, !tbaa !142
  %i.n = load ptr, ptr %i.b, align 8, !tbaa !143
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 56
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !154
  %i.q = tail call i32 %i.p(ptr noundef nonnull %0, ptr noundef %1, i1 noundef zeroext true, ptr noundef nonnull %2) #15 ; 3 uses
  %.not32 = icmp eq ptr %1, null
  br i1 %.not32, label %bb.j, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 2049
  %i.s = load i32, ptr %i.r, align 1
  %i.t = and i32 %i.s, 134217728
  %.not33 = icmp eq i32 %i.t, 0
  br i1 %.not33, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 4296
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !123  ; 2 uses
  %.not34 = icmp eq ptr %i.v, null
  br i1 %.not34, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load i32, ptr %i.w, align 8, !tbaa !125
  %i.y = icmp sgt i32 %i.x, 0
  br i1 %i.y, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.z = load ptr, ptr %0, align 8, !tbaa !126
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 12
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !128
  %i.ac = icmp sgt i32 %i.ab, 0
  br i1 %i.ac, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ad = load i8, ptr %2, align 1, !tbaa !149, !range !150, !noundef !151
  %i.ae = zext nneg i8 %i.ad to i32
  tail call void (ptr, ptr, ptr, ...) @Curl_trc_cf_infof(ptr noundef nonnull %1, ptr noundef nonnull %0, ptr noundef nonnull @.str.36, i32 noundef %i.q, i32 noundef %i.ae) #15
  br label %bb.j

bb.j:                                             ; preds = %bb.d, %bb.e, %bb.g, %bb.h, %bb.i
  %i.af = load ptr, ptr %i.a, align 8, !tbaa !115
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 64
  store ptr %.sroa.0.0.copyload, ptr %i.ag, align 8, !tbaa !141
  %.not35 = icmp eq i32 %i.q, 0
  br i1 %.not35, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ah = load i8, ptr %2, align 1, !tbaa !149, !range !150, !noundef !151
  %i.ai = shl nuw nsw i8 %i.ah, 1
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.aj = phi i8 [ 2, %bb.j ], [ %i.ai, %bb.k ]
  %i.ak = load i8, ptr %i.c, align 4
  %i.al = and i8 %i.ak, -3
  %i.am = or i8 %i.al, %i.aj
  store i8 %i.am, ptr %i.c, align 4
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ %i.q, %bb.l ], [ 0, %bb.c ], [ 0, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal i32 @ssl_cf_adjust_pollset(ptr noundef %0, ptr noundef %1, ptr noundef %2) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !115  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %i.c, align 8, !tbaa !141
  store ptr %1, ptr %i.c, align 8, !tbaa !142
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !143
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !155
  %i.g = tail call i32 %i.f(ptr noundef %0, ptr noundef %1, ptr noundef %2) #15
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !115
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  store ptr %.sroa.0.0.copyload, ptr %i.i, align 8, !tbaa !141
  ret i32 %i.g
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @ssl_cf_data_pending(ptr noundef %0, ptr noundef %1) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !115  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %i.c, align 8, !tbaa !141
  store ptr %1, ptr %i.c, align 8, !tbaa !142
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !143
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !209  ; 2 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = tail call zeroext i1 %i.f(ptr noundef nonnull %0, ptr noundef %1) #15
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !122  ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !126
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !210
  %i.m = tail call zeroext i1 %i.l(ptr noundef nonnull %i.i, ptr noundef %1) #15
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.0 = phi i1 [ %i.m, %bb.c ], [ true, %bb.b ]
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !115
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 64
  store ptr %.sroa.0.0.copyload, ptr %i.o, align 8, !tbaa !141
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define internal i32 @ssl_cf_send(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i1 zeroext %4, ptr nofree noundef captures(none) initializes((0, 8)) %5) #2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !115  ; 4 uses
  store i64 0, ptr %5, align 8, !tbaa !23
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 64 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %i.e, align 8, !tbaa !141
  store ptr %1, ptr %i.e, align 8, !tbaa !142
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 176
  %i.g = load i32, ptr %i.f, align 8, !tbaa !145
  %i.h = icmp eq i32 %i.g, 1
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store i8 0, ptr %i.a, align 1, !tbaa !149
  %i.i = call fastcc i32 @ssl_cf_connect_deferred(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %i.a) ; 2 uses
  %.not = icmp eq i32 %i.i, 0                     ; 2 uses
  %i.j = load i8, ptr %i.a, align 1, !range !150
  %i.k = trunc nuw i8 %i.j to i1                  ; 2 uses
  %. = select i1 %i.k, i32 0, i32 81
  %.037 = select i1 %.not, i32 %., i32 %i.i       ; 2 uses
  %i.l = select i1 %.not, i1 %i.k, i1 false
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br i1 %i.l, label %bb.c, label %bb.k

bb.c:                                             ; preds = %bb.b, %bb.a
  %.1 = phi i32 [ %.037, %bb.b ], [ 0, %bb.a ]
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 168 ; 4 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !156  ; 4 uses
  %.not46 = icmp eq i64 %i.n, 0
  br i1 %.not46, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not47 = icmp ult i64 %i.n, %3
  br i1 %.not47, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = sub nuw i64 %i.n, %3
  store i64 %i.o, ptr %i.m, align 8, !tbaa !156
  store i64 %3, ptr %5, align 8, !tbaa !23
  br label %bb.k

bb.f:                                             ; preds = %bb.d
  store i64 %i.n, ptr %5, align 8, !tbaa !23
  %i.p = load i64, ptr %i.m, align 8, !tbaa !156  ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 %i.p
  %i.r = sub i64 %3, %i.p
  store i64 0, ptr %i.m, align 8, !tbaa !156
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.c
  %.040 = phi i64 [ %i.r, %bb.f ], [ %3, %bb.c ]  ; 2 uses
  %.039 = phi ptr [ %i.q, %bb.f ], [ %2, %bb.c ]
  %.not48 = icmp eq i64 %.040, 0
  br i1 %.not48, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  %i.s = load ptr, ptr %i.d, align 8, !tbaa !143
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 168
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !157
  %i.v = call i32 %i.u(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %.039, i64 noundef %.040, ptr noundef nonnull %i.b) #15 ; 2 uses
  %.not49 = icmp eq i32 %i.v, 0
  br i1 %.not49, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.w = load i64, ptr %i.b, align 8, !tbaa !23
  %i.x = load i64, ptr %5, align 8, !tbaa !23
  %i.y = add i64 %i.x, %i.w
  store i64 %i.y, ptr %5, align 8, !tbaa !23
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  br label %bb.k

bb.k:                                             ; preds = %bb.b, %bb.e, %bb.j, %bb.g
  %.2 = phi i32 [ 0, %bb.e ], [ %i.v, %bb.j ], [ %.1, %bb.g ], [ %.037, %bb.b ]
  %i.z = load ptr, ptr %i.c, align 8, !tbaa !115
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 64
  store ptr %.sroa.0.0.copyload, ptr %i.aa, align 8, !tbaa !141
  ret i32 %.2
}

; Function Attrs: nounwind uwtable
define internal i32 @ssl_cf_recv(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef initializes((0, 8)) %4) #2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !115  ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 64 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %i.d, align 8, !tbaa !141
  store ptr %1, ptr %i.d, align 8, !tbaa !142
  store i64 0, ptr %4, align 8, !tbaa !23
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 176
  %i.f = load i32, ptr %i.e, align 8, !tbaa !145
  %i.g = icmp eq i32 %i.f, 1
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store i8 0, ptr %i.a, align 1, !tbaa !149
  %i.h = call fastcc i32 @ssl_cf_connect_deferred(ptr noundef nonnull %0, ptr noundef %1, ptr noundef null, i64 noundef 0, ptr noundef %i.a) ; 2 uses
  %.not = icmp eq i32 %i.h, 0                     ; 2 uses
  %i.i = load i8, ptr %i.a, align 1, !range !150
  %i.j = trunc nuw i8 %i.i to i1                  ; 2 uses
  %. = select i1 %i.j, i32 0, i32 81
  %.019 = select i1 %.not, i32 %., i32 %i.h
  %i.k = select i1 %.not, i1 %i.j, i1 false
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !143
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 160
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !158
  %i.o = call i32 %i.n(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %4) #15
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.1 = phi i32 [ %i.o, %bb.c ], [ %.019, %bb.b ]
  %i.p = load ptr, ptr %i.b, align 8, !tbaa !115
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 64
  store ptr %.sroa.0.0.copyload, ptr %i.q, align 8, !tbaa !141
  ret i32 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @ssl_cf_cntrl(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1, i32 noundef %2, i32 %3, ptr nofree readnone captures(none) %4) #3 {
bb.a:
  %cond = icmp eq i32 %2, 256
  br i1 %cond, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !115
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !146  ; 7 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load i32, ptr %i.e, align 8, !tbaa !159
  %.not9 = icmp eq i32 %i.f, 0
  br i1 %.not9, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(9) @.str.40, ptr noundef nonnull dereferenceable(1) %i.d) #16
  %.not10 = icmp eq i32 %i.g, 0
  br i1 %.not10, label %.sink.split, label %sub_0

sub_0:                                            ; preds = %bb.d
  %i.h = load i8, ptr %i.d, align 1               ; 2 uses
  %.not18 = icmp eq i8 %i.h, 104
  br i1 %.not18, label %sub_1, label %.tail.thread

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

.tail.thread:                                     ; preds = %sub_0
  %i.r = zext i8 %i.h to i32
  %i.s = sub nsw i32 104, %i.r
  br label %.tail13

sub_115:                                          ; preds = %.tail
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %i.u = load i8, ptr %i.t, align 1               ; 2 uses
  %i.v = zext i8 %i.u to i32
  %i.w = sub nsw i32 51, %i.v
  %.not21 = icmp eq i8 %i.u, 51
  br i1 %.not21, label %sub_216, label %.tail13

sub_216:                                          ; preds = %sub_115
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  %i.y = load i8, ptr %i.x, align 1
  %i.z = zext i8 %i.y to i32
  %i.aa = sub nsw i32 0, %i.z
  br label %.tail13

.tail13:                                          ; preds = %.tail.thread, %sub_115, %sub_216
  %i.ab = phi i32 [ %i.s, %.tail.thread ], [ %i.w, %sub_115 ], [ %i.aa, %sub_216 ]
  %.not12 = icmp eq i32 %i.ab, 0
  br i1 %.not12, label %.sink.split, label %bb.e

.sink.split:                                      ; preds = %.tail13, %.tail, %bb.d
  %.sink = phi i8 [ 11, %bb.d ], [ 20, %.tail ], [ 30, %.tail13 ]
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !140
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 804
  store i8 %.sink, ptr %i.ae, align 4, !tbaa !211
  br label %bb.e

bb.e:                                             ; preds = %.sink.split, %bb.b, %bb.c, %.tail13, %bb.a
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @cf_ssl_is_alive(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !122  ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !126
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !212
  %i.f = tail call zeroext i1 %i.e(ptr noundef nonnull %i.b, ptr noundef %1, ptr noundef %2) #15
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.g = phi i1 [ %i.f, %bb.b ], [ false, %bb.a ]
  ret i1 %i.g
}

declare i32 @Curl_cf_def_conn_keep_alive(ptr noundef, ptr noundef) #4

; Function Attrs: nounwind uwtable
define internal i32 @ssl_cf_query(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !115  ; 5 uses
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
  %i.f = load ptr, ptr %0, align 8, !tbaa !126
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load i32, ptr %i.g, align 8, !tbaa !139
  %i.i = and i32 %i.h, 10
  %i.j = icmp eq i32 %i.i, 10
  br i1 %i.j, label %bb.r, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %i.k, i64 16, i1 false), !tbaa.struct !153
  br label %bb.r

bb.e:                                             ; preds = %bb.a, %bb.a
  %i.l = load ptr, ptr %0, align 8, !tbaa !126
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load i32, ptr %i.m, align 8, !tbaa !139
  %i.o = and i32 %i.n, 10
  %i.p = icmp eq i32 %i.o, 10
  br i1 %i.p, label %bb.p, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 2 uses
end_hunk_0
