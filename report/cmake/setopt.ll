Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/setopt?download=true
inline.NumInlined: 70
inline.NumDeleted: 15
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@setopt_long_http:bb.a
    i32 107, label %bb.h
    i32 84, label %bb.j
    i32 227, label %bb.m
    i32 239, label %bb.n
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = icmp ugt i64 %2, 3
  br i1 %i.a, label %value_range.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = trunc nuw nsw i64 %2 to i8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2048
  store i8 %i.b, ptr %i.c, align 8, !tbaa !196
  br label %value_range.exit

bb.d:                                             ; preds = %bb.a
  %i.d = icmp slt i64 %2, -1
  br i1 %i.d, label %value_range.exit, label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.d
  %spec.select = tail call i64 @llvm.smin.i64(i64 %2, i64 32767)
  %i.e = trunc nsw i64 %spec.select to i16
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 2028
  store i16 %i.e, ptr %i.f, align 4, !tbaa !197
  br label %value_range.exit

bb.e:                                             ; preds = %bb.a
  %i.g = icmp slt i64 %2, 0
  br i1 %i.g, label %value_range.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = trunc i64 %2 to i8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 2055 ; 2 uses
  %i.j = load i8, ptr %i.i, align 1
  %i.k = shl i8 %i.h, 3
  %i.l = and i8 %i.j, -57
  %i.m = and i8 %i.k, 56
  %i.n = or disjoint i8 %i.l, %i.m
  store i8 %i.n, ptr %i.i, align 1
  br label %value_range.exit

bb.g:                                             ; preds = %bb.a
  %i.o = trunc i64 %2 to i32
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 2049 ; 2 uses
  %i.q = load i32, ptr %i.p, align 1
  %i.r = shl i32 %i.o, 4
  %i.s = and i32 %i.r, 16
  %i.t = and i32 %i.q, -17
  %i.u = or disjoint i32 %i.t, %i.s
  store i32 %i.u, ptr %i.p, align 1
  br label %value_range.exit

bb.h:                                             ; preds = %bb.a
  %.not.i = icmp eq i64 %2, 0
  br i1 %.not.i, label %.thread.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = and i64 %2, 16                           ; 2 uses
  %sh.diff30.i = lshr exact i64 %i.v, 2
  %tr.sh.diff31.i = trunc nuw nsw i64 %sh.diff30.i to i8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 2876 ; 2 uses
  %i.x = load i8, ptr %i.w, align 4
  %i.y = and i8 %i.x, -5
  %i.z = or disjoint i8 %i.y, %tr.sh.diff31.i
  store i8 %i.z, ptr %i.w, align 4
  %i.aa = lshr exact i64 %i.v, 3
  %.masked.i = and i64 %2, -29
  %i.ab = or i64 %i.aa, %.masked.i                ; 2 uses
  %i.ac = and i64 %i.ab, 2
  %.not32.1.i = icmp eq i64 %i.ac, 0
  %i.ad = and i64 %2, 2147483617
  %i.ae = icmp eq i64 %i.ad, 0
  %or.cond62.i = select i1 %i.ae, i1 %.not32.1.i, i1 false
  br i1 %or.cond62.i, label %value_range.exit, label %.thread.loopexit.i

.thread.loopexit.i:                               ; preds = %bb.i
  %i.af = trunc i64 %i.ab to i32
  br label %.thread.i

.thread.i:                                        ; preds = %.thread.loopexit.i, %bb.h
  %.1.i = phi i32 [ 0, %bb.h ], [ %i.af, %.thread.loopexit.i ]
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 464
  store i32 %.1.i, ptr %i.ag, align 8, !tbaa !198
  br label %value_range.exit

bb.j:                                             ; preds = %bb.a
  %switch.i = icmp ult i64 %2, 6
  br i1 %switch.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ah = icmp slt i64 %2, 0
  %..i = select i1 %i.ah, i32 43, i32 1
  br label %value_range.exit

bb.l:                                             ; preds = %bb.j
  %i.ai = trunc nuw nsw i64 %2 to i8
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 2045
  store i8 %i.ai, ptr %i.aj, align 1, !tbaa !199
  br label %value_range.exit

bb.m:                                             ; preds = %bb.a
  %i.ak = icmp slt i64 %2, 0
  br i1 %i.ak, label %value_range.exit, label %.sink.split.i25

.sink.split.i25:                                  ; preds = %bb.m
  %spec.select40 = tail call i64 @llvm.umin.i64(i64 %2, i64 65535)
  %i.al = trunc nuw i64 %spec.select40 to i16
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 2030
  store i16 %i.al, ptr %i.am, align 2, !tbaa !200
  br label %value_range.exit

bb.n:                                             ; preds = %bb.a
  %i.an = add i64 %2, -1
  %or.cond = icmp ult i64 %i.an, 256
  br i1 %or.cond, label %bb.o, label %value_range.exit

bb.o:                                             ; preds = %bb.n
  %i.ao = trunc nuw nsw i64 %2 to i32
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 1968
  store i32 %i.ao, ptr %i.ap, align 8, !tbaa !201
  br label %value_range.exit

value_range.exit:                                 ; preds = %bb.m, %bb.l, %bb.k, %.thread.i, %bb.i, %bb.d, %bb.g, %bb.c, %.sink.split.i, %bb.f, %.sink.split.i25, %bb.o, %bb.n, %bb.b, %bb.e, %bb.a
  %.016 = phi i32 [ 0, %.thread.i ], [ 48, %bb.a ], [ 43, %bb.d ], [ 0, %bb.n ], [ 0, %bb.c ], [ 43, %bb.e ], [ 0, %.sink.split.i ], [ 43, %bb.b ], [ 0, %bb.f ], [ 0, %bb.g ], [ 0, %bb.l ], [ 0, %.sink.split.i25 ], [ 0, %bb.o ], [ 4, %bb.i ], [ %..i, %bb.k ], [ 43, %bb.m ]
  ret i32 %.016
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @setopt_long_ssl(ptr noundef %0, i32 noundef %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  switch i32 %1, label %value_range.exit [
    i32 321, label %bb.b
    i32 32, label %bb.d
    i32 250, label %bb.d
    i32 233, label %bb.f
    i32 119, label %bb.g
    i32 216, label %bb.i
    i32 261, label %bb.j
    i32 225, label %bb.l
    i32 90, label %bb.k
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = tail call zeroext i1 @Curl_ssl_supports(ptr noundef %0, i32 noundef 256) #10
  br i1 %i.a, label %bb.c, label %value_range.exit

bb.c:                                             ; preds = %bb.b
  %i.b = icmp slt i64 %2, -1
  br i1 %i.b, label %value_range.exit, label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.c
  %spec.select = tail call i64 @llvm.smin.i64(i64 %2, i64 2147483647)
  %i.c = trunc nsw i64 %spec.select to i32
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1164
  store i32 %i.c, ptr %i.d, align 4, !tbaa !202
  br label %value_range.exit

bb.d:                                             ; preds = %bb.a, %bb.a
  %i.e = and i64 %2, 65535                        ; 2 uses
  %i.f = and i64 %2, 4294901760                   ; 2 uses
  %i.g = and i64 %2, 65534
  %or.cond3.i = icmp ne i64 %i.g, 2
  %i.h = icmp samesign ult i64 %i.e, 8
  %or.cond5.not33.i = select i1 %or.cond3.i, i1 %i.h, i1 false
  %i.i = icmp samesign ult i64 %i.f, 524288
  %or.cond9.not.i = select i1 %or.cond5.not33.i, i1 %i.i, i1 false
  br i1 %or.cond9.not.i, label %bb.e, label %value_range.exit

bb.e:                                             ; preds = %bb.d
  %.not.i = icmp eq i32 %1, 32
  %spec.select.v.i = select i1 %.not.i, i64 784, i64 968
  %spec.select.i = getelementptr inbounds nuw i8, ptr %0, i64 %spec.select.v.i ; 2 uses
  %i.j = icmp eq i64 %i.e, 0
  %i.k = trunc i64 %2 to i8
  %i.l = select i1 %i.j, i8 6, i8 %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %spec.select.i, i64 109
  store i8 %i.l, ptr %i.m, align 1, !tbaa !24
  %i.n = trunc nuw nsw i64 %i.f to i32
  %i.o = getelementptr inbounds nuw i8, ptr %spec.select.i, i64 104
  store i32 %i.n, ptr %i.o, align 8, !tbaa !25
  br label %value_range.exit

bb.f:                                             ; preds = %bb.a
  br label %value_range.exit

bb.g:                                             ; preds = %bb.a
  %or.cond = icmp ugt i64 %2, 3
  br i1 %or.cond, label %value_range.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = trunc nuw nsw i64 %2 to i8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 2042
  store i8 %i.p, ptr %i.q, align 2, !tbaa !203
  br label %value_range.exit

bb.i:                                             ; preds = %bb.a
  %i.r = trunc i64 %2 to i8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 892
  store i8 %i.r, ptr %i.s, align 4, !tbaa !204
  %i.t = trunc i64 %2 to i16
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 960 ; 2 uses
  %i.v = load i16, ptr %i.u, align 8
  %i.w = shl i16 %i.t, 2
  %i.x = and i16 %i.v, -255
  %sh.diff.i = lshr i64 %2, 5
  %tr.sh.diff23.i = trunc i64 %sh.diff.i to i16
  %i.y = and i16 %tr.sh.diff23.i, 2
  %i.z = and i16 %i.w, 252
  %i.aa = or disjoint i16 %i.y, %i.z
  %i.ab = or disjoint i16 %i.aa, %i.x
  store i16 %i.ab, ptr %i.u, align 8
  br label %value_range.exit

bb.j:                                             ; preds = %bb.a
  %i.ac = trunc i64 %2 to i8
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 1076
  store i8 %i.ac, ptr %i.ad, align 4, !tbaa !204
  %i.ae = trunc i64 %2 to i16
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 1144 ; 2 uses
  %i.ag = load i16, ptr %i.af, align 8
  %i.ah = shl i16 %i.ae, 2
  %i.ai = and i16 %i.ag, -255
  %sh.diff.i20 = lshr i64 %2, 5
  %tr.sh.diff23.i21 = trunc i64 %sh.diff.i20 to i16
  %i.aj = and i16 %tr.sh.diff23.i21, 2
  %i.ak = and i16 %i.ah, 252
  %i.al = or disjoint i16 %i.aj, %i.ak
  %i.am = or disjoint i16 %i.al, %i.ai
  store i16 %i.am, ptr %i.af, align 8
  br label %value_range.exit

bb.k:                                             ; preds = %bb.a
  %i.an = load ptr, ptr @Curl_cfree, align 8, !tbaa !10
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 1608 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !12
  tail call void %i.an(ptr noundef %i.ap) #10
  store ptr null, ptr %i.ao, align 8, !tbaa !12
  %i.aq = tail call i32 @Curl_ssl_set_engine_default(ptr noundef %0) #10
  br label %value_range.exit

bb.l:                                             ; preds = %bb.a
  br label %value_range.exit

value_range.exit:                                 ; preds = %bb.e, %bb.d, %bb.c, %bb.f, %bb.i, %bb.j, %bb.k, %.sink.split.i, %bb.h, %bb.b, %bb.g, %bb.a, %bb.l
  %.017 = phi i32 [ 43, %bb.c ], [ 48, %bb.a ], [ 0, %bb.l ], [ 0, %.sink.split.i ], [ %i.aq, %bb.k ], [ 4, %bb.f ], [ 4, %bb.b ], [ 0, %bb.h ], [ 0, %bb.i ], [ 0, %bb.j ], [ 43, %bb.g ], [ 43, %bb.d ], [ 0, %bb.e ]
  ret i32 %.017
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 49) i32 @setopt_long_misc(ptr noundef %0, i32 noundef %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  switch i32 %1, label %bb.u [
    i32 33, label %bb.b
    i32 34, label %bb.d
    i32 60, label %bb.e
    i32 14, label %bb.j
    i32 21, label %bb.l
    i32 327, label %bb.n
    i32 315, label %bb.o
    i32 299, label %bb.p
  ]

bb.b:                                             ; preds = %bb.a
  %or.cond = icmp ugt i64 %2, 3
  br i1 %or.cond, label %bb.u, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.a = trunc nuw nsw i64 %2 to i8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2043
  store i8 %i.a, ptr %i.b, align 1, !tbaa !205
  br label %bb.t

bb.d:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 776
  store i64 %2, ptr %i.c, align 8, !tbaa !90
  br label %bb.t

bb.e:                                             ; preds = %bb.a
  %i.d = icmp slt i64 %2, -1
  br i1 %i.d, label %bb.u, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 488 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !91
  %i.g = icmp slt i64 %i.f, %2
  br i1 %i.g, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 472 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !92
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1760 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !12   ; 2 uses
  %i.l = icmp eq ptr %i.i, %i.k
  br i1 %i.l, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.m = load ptr, ptr @Curl_cfree, align 8, !tbaa !10
  tail call void %i.m(ptr noundef %i.k) #10
  store ptr null, ptr %i.j, align 8, !tbaa !12
  store ptr null, ptr %i.h, align 8, !tbaa !92
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  store i64 %2, ptr %i.e, align 8, !tbaa !91
  br label %bb.t

bb.j:                                             ; preds = %bb.a
  %i.n = icmp slt i64 %2, -1
  br i1 %i.n, label %bb.u, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 696
  store i64 %2, ptr %i.o, align 8, !tbaa !93
  br label %bb.t

bb.l:                                             ; preds = %bb.a
  %i.p = icmp slt i64 %2, -1
  br i1 %i.p, label %bb.u, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 728
  store i64 %2, ptr %i.q, align 8, !tbaa !94
  br label %bb.t

bb.n:                                             ; preds = %bb.a
  %i.r = trunc i64 %2 to i8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 2047
  store i8 %i.r, ptr %i.s, align 1, !tbaa !206
  br label %bb.t

bb.o:                                             ; preds = %bb.a
  %i.t = trunc i64 %2 to i32
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 2049 ; 2 uses
  %i.v = load i32, ptr %i.u, align 1
  %i.w = shl i32 %i.t, 2
  %i.x = and i32 %i.w, 4
  %i.y = and i32 %i.v, -5
  %i.z = or disjoint i32 %i.y, %i.x
  store i32 %i.z, ptr %i.u, align 1
  br label %bb.t

bb.p:                                             ; preds = %bb.a
  %i.aa = and i64 %2, 1
  %.not = icmp eq i64 %i.aa, 0
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 2064 ; 3 uses
  br i1 %.not, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !98
  %.not36 = icmp eq ptr %i.ac, null
  br i1 %.not36, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.ad = tail call ptr @Curl_hsts_init() #10     ; 2 uses
  store ptr %i.ad, ptr %i.ab, align 8, !tbaa !98
  %.not37 = icmp eq ptr %i.ad, null
  br i1 %.not37, label %bb.u, label %bb.t

bb.s:                                             ; preds = %bb.p
  tail call void @Curl_hsts_cleanup(ptr noundef nonnull %i.ab) #10
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.q, %bb.o, %bb.n, %bb.m, %bb.k, %bb.i, %bb.d, %bb.c
  br label %bb.u

bb.u:                                             ; preds = %bb.a, %bb.r, %bb.l, %bb.j, %bb.e, %bb.b, %bb.t
  %.0 = phi i32 [ 27, %bb.r ], [ 43, %bb.l ], [ 0, %bb.t ], [ 43, %bb.b ], [ 43, %bb.e ], [ 43, %bb.j ], [ 48, %bb.a ]
  ret i32 %.0
}

declare void @Curl_ssl_conn_config_update(ptr noundef, i1 noundef zeroext) local_unnamed_addr #5

declare zeroext i1 @Curl_ssl_cert_status_request() local_unnamed_addr #5

declare zeroext i1 @Curl_ssl_supports(ptr noundef, i32 noundef) local_unnamed_addr #5

declare void @Curl_infof(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

declare zeroext i16 @curlx_sltous(i64 noundef) local_unnamed_addr #5

declare i32 @Curl_ssl_set_engine_default(ptr noundef) local_unnamed_addr #5

declare ptr @Curl_hsts_init() local_unnamed_addr #5

declare void @Curl_hsts_cleanup(ptr noundef) local_unnamed_addr #5

declare void @Curl_bufref_free(ptr noundef) local_unnamed_addr #5

declare void @Curl_mime_cleanpart(ptr noundef) local_unnamed_addr #5

declare i32 @Curl_share_easy_unlink(ptr noundef) local_unnamed_addr #5

declare i32 @Curl_share_easy_link(ptr noundef, ptr noundef) local_unnamed_addr #5

declare i32 @Curl_data_priority_add_child(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #5

declare void @Curl_mime_initpart(ptr noundef) local_unnamed_addr #5

declare i32 @Curl_mime_set_subparts(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 44) i32 @setopt_copypostfields(ptr noundef %0, ptr nofree noundef captures(none) %1) unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.split, label %bb.b

.split:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 1344 ; 2 uses
  %i.b = load ptr, ptr @Curl_cfree, align 8, !tbaa !10
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !12
  tail call void %i.b(ptr noundef %i.c) #10, !inline_history !96
  store ptr null, ptr %i.a, align 8, !tbaa !12
  br label %Curl_setstropt.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.e = load i64, ptr %i.d, align 8, !tbaa !91   ; 3 uses
  %i.f = icmp eq i64 %i.e, -1
  br i1 %i.f, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 1344 ; 3 uses
  %i.h = load ptr, ptr @Curl_cfree, align 8, !tbaa !10
  %i.i = load ptr, ptr %i.g, align 8, !tbaa !12
  tail call void %i.h(ptr noundef %i.i) #10, !inline_history !96
end_hunk_0
