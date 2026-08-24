Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/nl80211?download=true
inline.NumInlined: 4004
inline.NumDeleted: 562
loop-unroll.NumCompletelyUnrolled: 33
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 35
begin_hunk_0_@validate_supported_selectors:bb.a

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: read)
define internal range(i32 -22, 1) i32 @validate_uhr_capa(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1) #10 align 16 prefalign(16) {
bb.a:
  %.val = load i16, ptr %0, align 2
  %i.a = trunc i16 %.val to i8
  %i.b = add i8 %i.a, -15
  %i.c = icmp ult i8 %i.b, -11
  %. = select i1 %i.c, i32 0, i32 -22
  ret i32 %.
}

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: read)
define internal range(i32 -22, 1) i32 @validate_uhr_operation(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1) #10 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 4          ; 3 uses
  %.val = load i16, ptr %0, align 2
  %i.b = trunc i16 %.val to i8
  %i.c = add i8 %i.b, -4                          ; 8 uses
  %i.d = icmp ult i8 %i.c, 6
  br i1 %i.d, label %ieee80211_uhr_oper_size_ok.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i16, ptr %i.a, align 2              ; 4 uses
  %i.f = and i16 %i.e, 1
  %.not.i = icmp eq i16 %i.f, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = icmp ult i8 %i.c, 10
  br i1 %i.g, label %ieee80211_uhr_oper_size_ok.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.037.i = phi i8 [ 10, %bb.c ], [ 6, %bb.b ]    ; 4 uses
  %i.h = and i16 %i.e, 2
  %.not44.i = icmp eq i16 %i.h, 0
  br i1 %.not44.i, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %narrow.i = add nuw nsw i8 %.037.i, 4           ; 2 uses
  %i.i = icmp ult i8 %i.c, %narrow.i
  br i1 %i.i, label %ieee80211_uhr_oper_size_ok.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = zext nneg i8 %.037.i to i64
  %i.k = getelementptr i8, ptr %i.a, i64 %i.j
  %i.l = load i32, ptr %i.k, align 1
  %i.m = and i32 %i.l, 8388608
  %.not45.i = icmp eq i32 %i.m, 0
  br i1 %.not45.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %narrow46.i = add nuw nsw i8 %.037.i, 6         ; 2 uses
  %i.n = icmp ult i8 %i.c, %narrow46.i
  br i1 %i.n, label %ieee80211_uhr_oper_size_ok.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.d
  %.3.i = phi i8 [ %.037.i, %bb.d ], [ %narrow.i, %bb.f ], [ %narrow46.i, %bb.g ] ; 2 uses
  %i.o = and i16 %i.e, 4
  %.not47.i = icmp eq i16 %i.o, 0
  br i1 %.not47.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.p = add nuw nsw i8 %.3.i, 3                  ; 2 uses
  %i.q = icmp ult i8 %i.c, %i.p
  br i1 %i.q, label %ieee80211_uhr_oper_size_ok.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.4.i = phi i8 [ %i.p, %bb.i ], [ %.3.i, %bb.h ] ; 5 uses
  %i.r = and i16 %i.e, 8
  %.not48.i = icmp eq i16 %i.r, 0
  br i1 %.not48.i, label %ieee80211_uhr_oper_size_ok.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.not52.i = icmp ugt i8 %i.c, %.4.i
  br i1 %.not52.i, label %bb.l, label %ieee80211_uhr_oper_size_ok.exit.thread

bb.l:                                             ; preds = %bb.k
  %i.s = add nuw nsw i8 %.4.i, 1
  %i.t = zext nneg i8 %.4.i to i64
  %i.u = getelementptr i8, ptr %i.a, i64 %i.t
  %i.v = load i8, ptr %i.u, align 1
  %i.w = and i8 %i.v, 8
  %.not49.i = icmp eq i8 %i.w, 0
  br i1 %.not49.i, label %ieee80211_uhr_oper_size_ok.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.x = add nuw nsw i8 %.4.i, 3                  ; 2 uses
  %i.y = icmp ult i8 %i.c, %i.x
  br i1 %i.y, label %ieee80211_uhr_oper_size_ok.exit.thread, label %ieee80211_uhr_oper_size_ok.exit

ieee80211_uhr_oper_size_ok.exit:                  ; preds = %bb.j, %bb.l, %bb.m
  %.7.i = phi i8 [ %.4.i, %bb.j ], [ %i.s, %bb.l ], [ %i.x, %bb.m ]
  %i.z = icmp uge i8 %i.c, %.7.i
  %cond.fr = freeze i1 %i.z
  %spec.select = select i1 %cond.fr, i32 0, i32 -22
  br label %ieee80211_uhr_oper_size_ok.exit.thread

ieee80211_uhr_oper_size_ok.exit.thread:           ; preds = %ieee80211_uhr_oper_size_ok.exit, %bb.m, %bb.k, %bb.e, %bb.c, %bb.a, %bb.i, %bb.g
  %i.aa = phi i32 [ -22, %bb.m ], [ %spec.select, %ieee80211_uhr_oper_size_ok.exit ], [ -22, %bb.g ], [ -22, %bb.i ], [ -22, %bb.a ], [ -22, %bb.c ], [ -22, %bb.e ], [ -22, %bb.k ]
  ret i32 %i.aa
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal range(i32 -22, 1) i32 @validate_nan_avail_blob(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 4          ; 2 uses
  %.val = load i16, ptr %0, align 2
  %i.b = add i16 %.val, -4                        ; 2 uses
  %i.c = zext i16 %i.b to i32                     ; 3 uses
  %i.d = icmp ult i16 %i.b, 3
  br i1 %i.d, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %.not44 = icmp eq ptr %1, null
  br i1 %.not44, label %bb.p, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr i8, ptr %1, i64 43         ; 4 uses
  %i.f = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %i.e, i64 noundef 80, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str, i32 noundef %i.c, ptr noundef nonnull @.str) #27
  %i.g = icmp sgt i32 %i.f, 79
  br i1 %i.g, label %bb.d, label %.sink.split

bb.d:                                             ; preds = %bb.c
  %i.h = tail call i32 @net_ratelimit() #27
  %.not45 = icmp eq i32 %i.h, 0
  br i1 %.not45, label %.sink.split, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.40, i32 noundef %i.c, ptr noundef nonnull @.str.41) #32 ; 0 uses
  br label %.sink.split

bb.f:                                             ; preds = %bb.a
  %i.j = load i8, ptr %i.a, align 2               ; 2 uses
  %i.k = zext i8 %i.j to i32
  %.not = icmp eq i8 %i.j, 18
  br i1 %.not, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.not42 = icmp eq ptr %1, null
  br i1 %.not42, label %bb.p, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.l = getelementptr i8, ptr %1, i64 43         ; 4 uses
  %i.m = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %i.l, i64 noundef 80, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str, i32 noundef %i.k, ptr noundef nonnull @.str) #27
  %i.n = icmp sgt i32 %i.m, 79
  br i1 %i.n, label %bb.i, label %.sink.split

bb.i:                                             ; preds = %bb.h
  %i.o = tail call i32 @net_ratelimit() #27
  %.not43 = icmp eq i32 %i.o, 0
  br i1 %.not43, label %.sink.split, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.p = load i8, ptr %i.a, align 2
  %i.q = zext i8 %i.p to i32
  %i.r = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.40, i32 noundef %i.q, ptr noundef nonnull @.str.41) #32 ; 0 uses
  br label %.sink.split

bb.k:                                             ; preds = %bb.f
  %i.s = getelementptr i8, ptr %0, i64 5
  %.val46 = load i16, ptr %i.s, align 1
  %i.t = zext i16 %.val46 to i32                  ; 3 uses
  %i.u = add nsw i32 %i.c, -3                     ; 3 uses
  %.not39 = icmp eq i32 %i.u, %i.t
  br i1 %.not39, label %bb.p, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.not40 = icmp eq ptr %1, null
  br i1 %.not40, label %bb.p, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.v = getelementptr i8, ptr %1, i64 43         ; 4 uses
  %i.w = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %i.v, i64 noundef 80, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str, i32 noundef %i.t, i32 noundef %i.u, ptr noundef nonnull @.str) #27
  %i.x = icmp sgt i32 %i.w, 79
  br i1 %i.x, label %bb.n, label %.sink.split

bb.n:                                             ; preds = %bb.m
  %i.y = tail call i32 @net_ratelimit() #27
  %.not41 = icmp eq i32 %i.y, 0
  br i1 %.not41, label %.sink.split, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.z = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.40, i32 noundef %i.t, i32 noundef %i.u, ptr noundef nonnull @.str.41) #32 ; 0 uses
  br label %.sink.split

.sink.split:                                      ; preds = %bb.m, %bb.o, %bb.n, %bb.h, %bb.j, %bb.i, %bb.c, %bb.e, %bb.d
  %.sink50 = phi ptr [ %i.l, %bb.h ], [ %i.e, %bb.c ], [ %i.e, %bb.d ], [ %i.e, %bb.e ], [ %i.l, %bb.i ], [ %i.l, %bb.j ], [ %i.v, %bb.n ], [ %i.v, %bb.o ], [ %i.v, %bb.m ] ; 2 uses
  tail call void @do_trace_netlink_extack(ptr noundef %.sink50) #27
  store ptr %.sink50, ptr %1, align 8
  br label %bb.p

bb.p:                                             ; preds = %.sink.split, %bb.k, %bb.l, %bb.g, %bb.b
  %.0 = phi i32 [ -22, %bb.g ], [ -22, %bb.l ], [ 0, %bb.k ], [ -22, %bb.b ], [ -22, %.sink.split ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal range(i32 -22, 1) i32 @validate_nan_ulw(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 4          ; 3 uses
  %.val = load i16, ptr %0, align 2
  %i.b = add i16 %.val, -4
  %i.c = zext i16 %i.b to i32                     ; 5 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.r, %bb.a
  %.070 = phi i32 [ 0, %bb.a ], [ %i.ae, %bb.r ]  ; 5 uses
  %i.d = icmp ult i32 %.070, %i.c
  br i1 %i.d, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.e = add nuw nsw i32 %.070, 3                 ; 3 uses
  %i.f = icmp ugt i32 %i.e, %i.c
  br i1 %i.f, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %.not86 = icmp eq ptr %1, null
  br i1 %.not86, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = getelementptr i8, ptr %1, i64 43         ; 4 uses
  %i.h = sub nsw i32 %i.c, %.070                  ; 2 uses
  %i.i = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %i.g, i64 noundef 80, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str, i32 noundef %i.h, ptr noundef nonnull @.str) #27
  %i.j = icmp sgt i32 %i.i, 79
  br i1 %i.j, label %bb.f, label %.critedge.sink.split

bb.f:                                             ; preds = %bb.e
  %i.k = tail call i32 @net_ratelimit() #27
  %.not87 = icmp eq i32 %i.k, 0
  br i1 %.not87, label %.critedge.sink.split, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.40, i32 noundef %i.h, ptr noundef nonnull @.str.41) #32 ; 0 uses
  br label %.critedge.sink.split

bb.h:                                             ; preds = %bb.c
  %i.m = zext nneg i32 %.070 to i64               ; 2 uses
  %i.n = getelementptr i8, ptr %i.a, i64 %i.m
  %i.o = load i8, ptr %i.n, align 1               ; 2 uses
  %.not = icmp eq i8 %i.o, 23
  br i1 %.not, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  %2 = getelementptr i8, ptr %i.a, i64 %i.m
  %.not84 = icmp eq ptr %1, null
  br i1 %.not84, label %.critedge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.p = zext i8 %i.o to i32
  %i.q = getelementptr i8, ptr %1, i64 43         ; 4 uses
  %i.r = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %i.q, i64 noundef 80, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str, i32 noundef %i.p, ptr noundef nonnull @.str) #27
  %i.s = icmp sgt i32 %i.r, 79
  br i1 %i.s, label %bb.k, label %.critedge.sink.split

bb.k:                                             ; preds = %bb.j
  %i.t = tail call i32 @net_ratelimit() #27
  %.not85 = icmp eq i32 %i.t, 0
  br i1 %.not85, label %.critedge.sink.split, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.u = load i8, ptr %2, align 1
  %i.v = zext i8 %i.u to i32
  %i.w = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.40, i32 noundef %i.v, ptr noundef nonnull @.str.41) #32 ; 0 uses
  br label %.critedge.sink.split

bb.m:                                             ; preds = %bb.h
  %3 = zext nneg i32 %.070 to i64
  %4 = getelementptr i8, ptr %i.a, i64 %3
  %i.x = getelementptr i8, ptr %4, i64 1
  %.val88 = load i16, ptr %i.x, align 1           ; 2 uses
  %i.y = zext i16 %.val88 to i32                  ; 5 uses
  switch i16 %.val88, label %bb.n [
    i16 23, label %bb.r
    i16 21, label %bb.r
    i16 18, label %bb.r
    i16 16, label %bb.r
  ]

bb.n:                                             ; preds = %bb.m
  %.not82 = icmp eq ptr %1, null
  br i1 %.not82, label %.critedge, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.z = getelementptr i8, ptr %1, i64 43         ; 4 uses
  %i.aa = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %i.z, i64 noundef 80, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str, i32 noundef %i.y, ptr noundef nonnull @.str) #27
  %i.ab = icmp sgt i32 %i.aa, 79
  br i1 %i.ab, label %bb.p, label %.critedge.sink.split

bb.p:                                             ; preds = %bb.o
  %i.ac = tail call i32 @net_ratelimit() #27
  %.not83 = icmp eq i32 %i.ac, 0
  br i1 %.not83, label %.critedge.sink.split, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ad = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.40, i32 noundef %i.y, ptr noundef nonnull @.str.41) #32 ; 0 uses
  br label %.critedge.sink.split

bb.r:                                             ; preds = %bb.m, %bb.m, %bb.m, %bb.m
  %i.ae = add nuw nsw i32 %i.e, %i.y              ; 2 uses
  %i.af = icmp ugt i32 %i.ae, %i.c
  br i1 %i.af, label %bb.s, label %bb.b, !llvm.loop !261

bb.s:                                             ; preds = %bb.r
  %.not80 = icmp eq ptr %1, null
  br i1 %.not80, label %.critedge, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ag = getelementptr i8, ptr %1, i64 43        ; 4 uses
  %i.ah = sub nsw i32 %i.c, %i.e                  ; 2 uses
  %i.ai = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %i.ag, i64 noundef 80, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str, i32 noundef %i.y, i32 noundef %i.ah, ptr noundef nonnull @.str) #27
  %i.aj = icmp sgt i32 %i.ai, 79
  br i1 %i.aj, label %bb.u, label %.critedge.sink.split

bb.u:                                             ; preds = %bb.t
  %i.ak = tail call i32 @net_ratelimit() #27
  %.not81 = icmp eq i32 %i.ak, 0
  br i1 %.not81, label %.critedge.sink.split, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.al = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.40, i32 noundef %i.y, i32 noundef %i.ah, ptr noundef nonnull @.str.41) #32 ; 0 uses
  br label %.critedge.sink.split

.critedge.sink.split:                             ; preds = %bb.t, %bb.v, %bb.u, %bb.o, %bb.q, %bb.p, %bb.j, %bb.l, %bb.k, %bb.e, %bb.g, %bb.f
  %.sink140 = phi ptr [ %i.z, %bb.o ], [ %i.q, %bb.j ], [ %i.g, %bb.e ], [ %i.g, %bb.f ], [ %i.g, %bb.g ], [ %i.q, %bb.k ], [ %i.q, %bb.l ], [ %i.z, %bb.p ], [ %i.z, %bb.q ], [ %i.ag, %bb.u ], [ %i.ag, %bb.v ], [ %i.ag, %bb.t ] ; 2 uses
  tail call void @do_trace_netlink_extack(ptr noundef %.sink140) #27
  store ptr %.sink140, ptr %1, align 8
  br label %.critedge

.critedge:                                        ; preds = %bb.b, %.critedge.sink.split, %bb.d, %bb.i, %bb.n, %bb.s
  %.2 = phi i32 [ -22, %.critedge.sink.split ], [ -22, %bb.s ], [ -22, %bb.n ], [ -22, %bb.i ], [ -22, %bb.d ], [ 0, %bb.b ]
  ret i32 %.2
}

; Function Attrs: mustprogress nofree noredzone nosync nounwind null_pointer_is_valid willreturn memory(none)
declare dso_local i32 @ieee80211_hdrlen(i16 noundef zeroext) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare i64 @llvm.read_register.i64(metadata) #12

; Function Attrs: nocallback nounwind
declare void @llvm.write_register.i64(metadata, i64) #13

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal range(i32 -22, 1) i32 @validate_nan_cluster_id(ptr noundef %0, ptr nofree noundef writeonly captures(address_is_null) %1) #0 align 16 prefalign(16) {
bb.a:
  %.val = load i16, ptr %0, align 2
  %.not = icmp eq i16 %.val, 10
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @validate_nan_cluster_id.__msg) #27
  %.not19 = icmp eq ptr %1, null
  br i1 %.not19, label %bb.e, label %.sink.split

bb.c:                                             ; preds = %bb.a
  %i.a = getelementptr i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 1
  %i.c = icmp ne i32 %i.b, 26898256
  %i.d = zext i1 %i.c to i32
  %.not17 = icmp eq i32 %i.d, 0
  br i1 %.not17, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @validate_nan_cluster_id.__msg.36) #27
  %.not18 = icmp eq ptr %1, null
  br i1 %.not18, label %bb.e, label %.sink.split

.sink.split:                                      ; preds = %bb.d, %bb.b
  %validate_nan_cluster_id.__msg.36.sink = phi ptr [ @validate_nan_cluster_id.__msg, %bb.b ], [ @validate_nan_cluster_id.__msg.36, %bb.d ]
  store ptr %validate_nan_cluster_id.__msg.36.sink, ptr %1, align 8
  %i.e = getelementptr i8, ptr %1, i64 8
  store ptr %0, ptr %i.e, align 8
  %i.f = getelementptr i8, ptr %1, i64 16
  store ptr null, ptr %i.f, align 8
  br label %bb.e

bb.e:                                             ; preds = %.sink.split, %bb.c, %bb.d, %bb.b
  %.0 = phi i32 [ -22, %bb.d ], [ -22, %bb.b ], [ 0, %bb.c ], [ -22, %.sink.split ]
  ret i32 %.0
}

; Function Attrs: nofree noredzone nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #14

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #1

; Function Attrs: cold noredzone null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #15

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc nonnull ptr @__cfg80211_wdev_from_attrs(ptr nofree noundef readonly captures(address) %0, ptr nofree noundef readnone captures(address) %1, ptr nofree readonly captures(address_is_null) %.24.val, ptr %.1224.val) unnamed_addr #0 align 16 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = icmp ne ptr %.24.val, null               ; 4 uses
  %i.c = icmp ne ptr %.1224.val, null             ; 6 uses
  %or.cond = select i1 %i.b, i1 true, i1 %i.c
  br i1 %or.cond, label %bb.b, label %.thread6

bb.b:                                             ; preds = %bb.a
  br i1 %i.b, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr i8, ptr %.24.val, i64 4
  %.val = load i32, ptr %i.d, align 4
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.072 = phi i32 [ %.val, %bb.c ], [ -1, %bb.b ] ; 4 uses
  br i1 %i.c, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  store i64 0, ptr %i.a, align 8, !annotation !117
  %i.e = call i32 @nla_memcpy(ptr noundef nonnull %i.a, ptr noundef nonnull %.1224.val, i32 noundef 8) #27 ; 0 uses
  %i.f = load i64, ptr %i.a, align 8              ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  %i.g = lshr i64 %i.f, 32
  %i.h = trunc nuw i64 %i.g to i32
  %i.i = trunc i64 %i.f to i32
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.071 = phi i32 [ %i.h, %bb.e ], [ -1, %bb.d ]  ; 2 uses
  %.069 = phi i32 [ %i.i, %bb.e ], [ 0, %bb.d ]   ; 4 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.n, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.j = getelementptr i8, ptr %0, i64 2160       ; 5 uses
  %.pn8813 = load ptr, ptr %i.j, align 8          ; 4 uses
  %.not914 = icmp eq ptr %.pn8813, %i.j
  br i1 %.not914, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g
  br i1 %i.b, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  br i1 %i.c, label %.lr.ph.split.us.split.us, label %.lr.ph.split.us.split

.lr.ph.split.us.split.us:                         ; preds = %.lr.ph.split.us, %bb.j
  %.pn8815.us.us = phi ptr [ %.pn88.us.us, %bb.j ], [ %.pn8813, %.lr.ph.split.us ] ; 5 uses
  %i.k = getelementptr i8, ptr %.pn8815.us.us, i64 16
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %.not90.us.us = icmp eq ptr %i.l, null
  br i1 %.not90.us.us, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.split.us.split.us
  %i.m = getelementptr i8, ptr %i.l, i64 224
  %i.n = load i32, ptr %i.m, align 32
  %i.o = icmp eq i32 %i.n, %.072
  br i1 %i.o, label %.split.us, label %bb.i

bb.i:                                             ; preds = %bb.h, %.lr.ph.split.us.split.us
  %i.p = getelementptr i8, ptr %.pn8815.us.us, i64 24
  %i.q = load i32, ptr %i.p, align 8
  %i.r = icmp eq i32 %i.q, %.069
  br i1 %i.r, label %.split.us, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.pn88.us.us = load ptr, ptr %.pn8815.us.us, align 8 ; 2 uses
  %.not9.us.us = icmp eq ptr %.pn88.us.us, %i.j
  br i1 %.not9.us.us, label %.thread, label %.lr.ph.split.us.split.us, !llvm.loop !262

.lr.ph.split.us.split:                            ; preds = %.lr.ph.split.us, %bb.l
  %.pn8815.us = phi ptr [ %.pn88.us, %bb.l ], [ %.pn8813, %.lr.ph.split.us ] ; 3 uses
end_hunk_0
