Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/curl/original/multi?download=true
inline.NumInlined: 135
inline.NumDeleted: 39
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 4
begin_hunk_0_@Curl_mntfy_cleanup

declare void @Curl_uint32_bset_destroy(ptr noundef) local_unnamed_addr #2

declare void @Curl_uint32_tbl_destroy(ptr noundef) local_unnamed_addr #2

declare void @Curl_wakeup_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define ptr @curl_multi_init() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @Curl_multi_handle(i32 noundef 512, i64 noundef 911, i64 noundef 97, i64 noundef 71, i64 noundef 25)
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define zeroext i1 @Curl_is_connecting(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i32, ptr %i.a, align 8, !tbaa !97
  %i.c = icmp ult i32 %i.b, 7
  ret i1 %i.c
}

; Function Attrs: nounwind uwtable
define range(i32 0, 12) i32 @curl_multi_add_handle(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.ab, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i32, ptr %0, align 8, !tbaa !38
  %i.b = icmp eq i32 %i.a, 764702
  br i1 %i.b, label %bb.c, label %bb.ab

bb.c:                                             ; preds = %bb.b
  %.not70 = icmp eq ptr %1, null
  br i1 %.not70, label %bb.ab, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = load i32, ptr %1, align 8, !tbaa !98
  %i.d = icmp eq i32 %i.c, -1059136595
  br i1 %i.d, label %bb.e, label %bb.ab

bb.e:                                             ; preds = %bb.d
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !94
  %.not71 = icmp eq ptr %i.f, null
  br i1 %.not71, label %bb.f, label %bb.ab

bb.f:                                             ; preds = %bb.e
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 744 ; 3 uses
  %i.h = load i16, ptr %i.g, align 8              ; 2 uses
  %i.i = and i16 %i.h, 8
  %.not72 = icmp eq i16 %i.i, 0
  br i1 %.not72, label %bb.g, label %bb.ab

bb.g:                                             ; preds = %bb.f
  %i.j = and i16 %i.h, 64
  %.not73 = icmp eq i16 %i.j, 0
  br i1 %.not73, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.l = tail call i32 @Curl_uint32_tbl_count(ptr noundef nonnull %i.k) #13
  %.not74 = icmp eq i32 %i.l, 1
  br i1 %.not74, label %bb.i, label %bb.ab

bb.i:                                             ; preds = %bb.h
  %i.m = tail call zeroext i1 @Curl_uint32_tbl_contains(ptr noundef nonnull %i.k, i32 noundef 0) #13
  br i1 %i.m, label %bb.j, label %bb.ab

bb.j:                                             ; preds = %bb.i
  %i.n = load i16, ptr %i.g, align 8
  %i.o = and i16 %i.n, -65
  store i16 %i.o, ptr %i.g, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @Curl_uint32_bset_clear(ptr noundef nonnull %i.p) #13
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 72
  tail call void @Curl_uint32_bset_clear(ptr noundef nonnull %i.q) #13
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 88
  tail call void @Curl_uint32_bset_clear(ptr noundef nonnull %i.r) #13
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 104
  tail call void @Curl_uint32_bset_clear(ptr noundef nonnull %i.s) #13
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !99   ; 2 uses
  %.not75 = icmp eq ptr %i.u, null
  br i1 %.not75, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.v = tail call i32 @curl_multi_cleanup(ptr noundef nonnull %i.u) ; 0 uses
  store ptr null, ptr %i.t, align 8, !tbaa !99
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.w = tail call fastcc i32 @multi_xfers_add(ptr noundef %0, ptr noundef %1)
  %.not76 = icmp eq i32 %i.w, 0
  br i1 %.not76, label %bb.n, label %bb.ab

bb.n:                                             ; preds = %bb.m
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 3208
  tail call void @Curl_llist_init(ptr noundef nonnull %i.x, ptr noundef null) #13
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 440
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !163  ; 2 uses
  %.not77 = icmp eq ptr %i.z, null
  br i1 %.not77, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  store i8 0, ptr %i.z, align 1, !tbaa !100
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 2880
  store i32 0, ptr %i.aa, align 8, !tbaa !164
  store ptr %0, ptr %i.e, align 8, !tbaa !94
  tail call fastcc void @mstate(ptr noundef nonnull %1, i32 noundef 0)
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 4628 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 4
  %i.ad = and i32 %i.ac, -2
  store i32 %i.ad, ptr %i.ab, align 4
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !165 ; 3 uses
  %.not78 = icmp eq ptr %i.af, null
  br i1 %.not78, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 4
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !167
  %i.ai = and i32 %i.ah, 64
  %.not79 = icmp eq i32 %i.ai, 0
  br i1 %.not79, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 264
  br label %bb.t

bb.s:                                             ; preds = %bb.q, %bb.p
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 256
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.sink = phi ptr [ %i.ak, %bb.s ], [ %i.aj, %bb.r ]
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 176
  store ptr %.sink, ptr %i.al, align 8, !tbaa !101
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !95
  %i.ap = tail call zeroext i1 @Curl_uint32_bset_add(ptr noundef nonnull %i.am, i32 noundef %i.ao) #13 ; 0 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !102
  %i.as = add i32 %i.ar, 1
  store i32 %i.as, ptr %i.aq, align 4, !tbaa !102
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.au = load i64, ptr %i.at, align 8, !tbaa !103
  %i.av = add nsw i64 %i.au, 1
  store i64 %i.av, ptr %i.at, align 8, !tbaa !103
  tail call void @Curl_cpool_xfer_init(ptr noundef nonnull %1) #13
  %i.aw = load ptr, ptr %i.e, align 8, !tbaa !94  ; 2 uses
  %.not.i = icmp eq ptr %i.aw, null
  br i1 %.not.i, label %Curl_multi_mark_dirty.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ax = load i32, ptr %i.an, align 8, !tbaa !95 ; 2 uses
  %.not5.i = icmp eq i32 %i.ax, -1
  br i1 %.not5.i, label %Curl_multi_mark_dirty.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 72
  %i.az = tail call zeroext i1 @Curl_uint32_bset_add(ptr noundef nonnull %i.ay, i32 noundef %i.ax) #13 ; 0 uses
  br label %Curl_multi_mark_dirty.exit

Curl_multi_mark_dirty.exit:                       ; preds = %bb.t, %bb.u, %bb.v
  %i.ba = tail call i32 @Curl_update_timer(ptr noundef nonnull %0) ; 2 uses
  %.not80 = icmp eq i32 %i.ba, 0
  br i1 %.not80, label %bb.x, label %bb.w

bb.w:                                             ; preds = %Curl_multi_mark_dirty.exit
  store ptr null, ptr %i.e, align 8, !tbaa !94
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bc = load i32, ptr %i.an, align 8, !tbaa !95
  tail call void @Curl_uint32_tbl_remove(ptr noundef nonnull %i.bb, i32 noundef %i.bc) #13
  store i32 -1, ptr %i.an, align 8, !tbaa !95
  br label %bb.ab

bb.x:                                             ; preds = %Curl_multi_mark_dirty.exit
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 2048
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !104
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !42 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 2048
  store i64 %i.be, ptr %i.bh, align 8, !tbaa !104
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 2072
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !168
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bg, i64 2072
  store i64 %i.bj, ptr %i.bk, align 8, !tbaa !168
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 2187 ; 2 uses
  %2 = load i64, ptr %i.bl, align 1
  %3 = and i64 %2, 4294967296
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bg, i64 2187 ; 2 uses
  %i.bn = load i64, ptr %i.bm, align 1
  %i.bo = and i64 %i.bn, -4294967297
  %i.bp = or disjoint i64 %i.bo, %3
  store i64 %i.bp, ptr %i.bm, align 1
  %i.bq = load i64, ptr %i.bl, align 1
  %i.br = and i64 %i.bq, 536870912
  %.not81 = icmp eq i64 %i.br, 0
  br i1 %.not81, label %bb.ab, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 4504
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !105 ; 2 uses
  %.not82 = icmp eq ptr %i.bt, null
  br i1 %.not82, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.bv = load i32, ptr %i.bu, align 8, !tbaa !107
  %i.bw = icmp sgt i32 %i.bv, 0
  %i.bx = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_multi, i64 8), align 8
  %i.by = icmp sgt i32 %i.bx, 0
  %or.cond = select i1 %i.bw, i1 %i.by, i1 false
  br i1 %or.cond, label %Curl_multi_xfers_running.exit, label %bb.ab

bb.aa:                                            ; preds = %bb.y
  %.old = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_multi, i64 8), align 8, !tbaa !107
  %.old1 = icmp sgt i32 %.old, 0
  br i1 %.old1, label %Curl_multi_xfers_running.exit, label %bb.ab

Curl_multi_xfers_running.exit:                    ; preds = %bb.z, %bb.aa
  %i.bz = load i32, ptr %i.an, align 8, !tbaa !95
  %i.ca = load i32, ptr %i.aq, align 4, !tbaa !102
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cc = tail call i32 @Curl_uint32_tbl_count(ptr noundef nonnull %i.cb) #13
  tail call void (ptr, ptr, ...) @Curl_trc_multi(ptr noundef nonnull %1, ptr noundef nonnull @.str, i32 noundef %i.bz, i32 noundef %i.ca, i32 noundef %i.cc) #13
  br label %bb.ab

bb.ab:                                            ; preds = %bb.x, %bb.z, %bb.aa, %Curl_multi_xfers_running.exit, %bb.m, %bb.h, %bb.i, %bb.f, %bb.e, %bb.c, %bb.d, %bb.a, %bb.b, %bb.w
  %.0 = phi i32 [ 2, %bb.c ], [ 7, %bb.e ], [ 8, %bb.f ], [ 11, %bb.h ], [ %i.ba, %bb.w ], [ 3, %bb.m ], [ 1, %bb.a ], [ 1, %bb.b ], [ 2, %bb.d ], [ 11, %bb.i ], [ 0, %Curl_multi_xfers_running.exit ], [ 0, %bb.aa ], [ 0, %bb.z ], [ 0, %bb.x ]
  ret i32 %.0
}

declare i32 @Curl_uint32_tbl_count(ptr noundef) local_unnamed_addr #2

declare zeroext i1 @Curl_uint32_tbl_contains(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @Curl_uint32_bset_clear(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define range(i32 0, 9) i32 @curl_multi_cleanup(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca ptr, align 8                      ; 7 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.y, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %0, align 8, !tbaa !38
  %i.e = icmp eq i32 %i.d, 764702
  br i1 %i.e, label %bb.c, label %bb.y

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 744 ; 8 uses
  %i.g = load i16, ptr %i.f, align 8
  %i.h = and i16 %i.g, 24
  %or.cond58 = icmp eq i16 %i.h, 0
  br i1 %or.cond58, label %bb.d, label %bb.x

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.j = call zeroext i1 @Curl_uint32_tbl_first(ptr noundef nonnull %i.i, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a) #13
  br i1 %i.j, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 256
  br label %bb.e

bb.e:                                             ; preds = %.preheader, %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !11   ; 9 uses
  store ptr %i.m, ptr %i.c, align 8, !tbaa !170
  %.not49 = icmp eq ptr %i.m, null
  br i1 %.not49, label %bb.o, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = load i32, ptr %i.m, align 8, !tbaa !98
  %i.o = icmp eq i32 %i.n, -1059136595
  br i1 %i.o, label %bb.g, label %bb.o

bb.g:                                             ; preds = %bb.f
  %i.p = load ptr, ptr %i.k, align 8, !tbaa !42
  %i.q = icmp eq ptr %i.m, %i.p
  br i1 %i.q, label %bb.p, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 4628
  %i.s = load i32, ptr %i.r, align 4
  %i.t = and i32 %i.s, 1024
  %.not50 = icmp eq i32 %i.t, 0
  br i1 %.not50, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !108
  %.not51 = icmp eq ptr %i.v, null
  br i1 %.not51, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.w = call fastcc i32 @multi_done(ptr noundef nonnull %i.m, i32 noundef 0, i1 noundef zeroext true) ; 0 uses
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !170
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  %i.x = phi ptr [ %.pre, %bb.j ], [ %i.m, %bb.i ], [ %i.m, %bb.h ]
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 104
  store ptr null, ptr %i.y, align 8, !tbaa !94
  %i.z = load i32, ptr %i.b, align 4, !tbaa !41
  call void @Curl_uint32_tbl_remove(ptr noundef nonnull %i.i, i32 noundef %i.z) #13
  %i.aa = load ptr, ptr %i.c, align 8, !tbaa !170 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store i32 -1, ptr %i.ab, align 8, !tbaa !95
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 176 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !101
  %i.ae = icmp eq ptr %i.ad, %i.l
  br i1 %i.ae, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store ptr null, ptr %i.ac, align 8, !tbaa !101
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 4628
  %i.ag = load i32, ptr %i.af, align 4
  %i.ah = and i32 %i.ag, 65536
  %.not52 = icmp eq i32 %i.ah, 0
  br i1 %.not52, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ai = call i32 @Curl_close(ptr noundef nonnull %i.c) #13 ; 0 uses
  br label %bb.p

bb.o:                                             ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  br label %bb.x

bb.p:                                             ; preds = %bb.g, %bb.n, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  %i.aj = load i32, ptr %i.b, align 4, !tbaa !41
  %i.ak = call zeroext i1 @Curl_uint32_tbl_next(ptr noundef nonnull %i.i, i32 noundef %i.aj, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a) #13
  br i1 %i.ak, label %bb.e, label %.loopexit, !llvm.loop !169

.loopexit:                                        ; preds = %bb.p, %bb.d
  %i.al = load i16, ptr %i.f, align 8
  %i.am = and i16 %i.al, 1024
  %.not53 = icmp eq i16 %i.am, 0
  call void @Curl_async_thrdd_multi_destroy(ptr noundef nonnull %0, i1 noundef zeroext %.not53) #13
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 552
  call void @Curl_cpool_destroy(ptr noundef nonnull %i.an) #13
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 4 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !42
  call void @Curl_cshutdn_destroy(ptr noundef nonnull %i.ao, ptr noundef %i.aq) #13
  %i.ar = load ptr, ptr %i.ap, align 8, !tbaa !42 ; 7 uses
  %.not54 = icmp eq ptr %i.ar, null
  br i1 %.not54, label %bb.w, label %bb.q

bb.q:                                             ; preds = %.loopexit
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 2187
  %i.at = load i64, ptr %i.as, align 1
  %i.au = and i64 %i.at, 536870912
  %.not55 = icmp eq i64 %i.au, 0
  br i1 %.not55, label %bb.v, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 4504
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !105 ; 2 uses
  %.not56 = icmp eq ptr %i.aw, null
  br i1 %.not56, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !107
  %i.az = icmp sgt i32 %i.ay, 0
  %i.ba = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_multi, i64 8), align 8
  %i.bb = icmp sgt i32 %i.ba, 0
  %or.cond = select i1 %i.az, i1 %i.bb, i1 false
  br i1 %or.cond, label %bb.u, label %bb.v

bb.t:                                             ; preds = %bb.r
  %.old = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_multi, i64 8), align 8, !tbaa !107
  %.old1 = icmp sgt i32 %.old, 0
  br i1 %.old1, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.s, %bb.t
  call void (ptr, ptr, ...) @Curl_trc_multi(ptr noundef nonnull %i.ar, ptr noundef nonnull @.str.13) #13
  %.pre60 = load ptr, ptr %i.ap, align 8, !tbaa !42
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.s, %bb.q
  %i.bc = phi ptr [ %.pre60, %bb.u ], [ %i.ar, %bb.t ], [ %i.ar, %bb.s ], [ %i.ar, %bb.q ] ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 104
end_hunk_0
begin_hunk_1_@multi_posix_poll:bb.a
  %i.f = icmp slt i32 %i.e, 0
  br i1 %i.f, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.b
  %i.g = zext i32 %3 to i64                       ; 2 uses
  %.not2 = icmp eq i32 %3, 0
  br i1 %.not2, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.h = load ptr, ptr %0, align 8, !tbaa !151
  %i.i = zext i32 %1 to i64
  %invariant.gep = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.i ; 5 uses
  %xtraiter = and i64 %i.g, 3                     ; 3 uses
  %i.j = icmp ult i32 %3, 4
  br i1 %i.j, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.g, 4294967292
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.new
  %.0281 = phi i64 [ 0, %.lr.ph.new ], [ %i.ad, %bb.c ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.c ]
  %gep = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %.0281
  %i.k = getelementptr inbounds nuw i8, ptr %gep, i64 6
  %i.l = load i16, ptr %i.k, align 2, !tbaa !153
  %.2 = and i16 %i.l, 7
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.0281
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 6
  store i16 %.2, ptr %i.n, align 2, !tbaa !216
  %i.o = or disjoint i64 %.0281, 1                ; 2 uses
  %gep.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %i.o
  %i.p = getelementptr inbounds nuw i8, ptr %gep.1, i64 6
  %i.q = load i16, ptr %i.p, align 2, !tbaa !153
  %.2.1 = and i16 %i.q, 7
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.o
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 6
  store i16 %.2.1, ptr %i.s, align 2, !tbaa !216
  %i.t = or disjoint i64 %.0281, 2                ; 2 uses
  %gep.2 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %i.t
  %i.u = getelementptr inbounds nuw i8, ptr %gep.2, i64 6
  %i.v = load i16, ptr %i.u, align 2, !tbaa !153
  %.2.2 = and i16 %i.v, 7
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.t
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 6
  store i16 %.2.2, ptr %i.x, align 2, !tbaa !216
  %i.y = or disjoint i64 %.0281, 3                ; 2 uses
  %gep.3 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %i.y
  %i.z = getelementptr inbounds nuw i8, ptr %gep.3, i64 6
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !153
  %.2.3 = and i16 %i.aa, 7
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.y
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 6
  store i16 %.2.3, ptr %i.ac, align 2, !tbaa !216
  %i.ad = add nuw nsw i64 %.0281, 4               ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.loopexit.unr-lcssa, label %bb.c, !llvm.loop !214

bb.d:                                             ; preds = %bb.a
  br i1 %5, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %bb.d
  %i.ae = zext nneg i32 %4 to i64
  %i.af = tail call i32 @curlx_wait_ms(i64 noundef %i.ae) #13 ; 0 uses
  br label %.loopexit

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph
  %.0281.epil.init = phi i64 [ 0, %.lr.ph ], [ %i.ad, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod4 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod4)
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.epil.preheader
  %.0281.epil = phi i64 [ %.0281.epil.init, %.epil.preheader ], [ %i.ak, %bb.f ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.f ]
  %gep.epil = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %.0281.epil
  %i.ag = getelementptr inbounds nuw i8, ptr %gep.epil, i64 6
  %i.ah = load i16, ptr %i.ag, align 2, !tbaa !153
  %.2.epil = and i16 %i.ah, 7
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.0281.epil
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 6
  store i16 %.2.epil, ptr %i.aj, align 2, !tbaa !216
  %i.ak = add nuw nsw i64 %.0281.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit, label %bb.f, !llvm.loop !215

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %bb.f, %.preheader, %bb.b, %bb.e, %bb.d
  %.132 = phi i32 [ 0, %bb.d ], [ 0, %bb.e ], [ 12, %bb.b ], [ 0, %.preheader ], [ 0, %bb.f ], [ 0, %.loopexit.loopexit.unr-lcssa ]
  %.130 = phi i32 [ 0, %bb.d ], [ 0, %bb.e ], [ 0, %bb.b ], [ %i.e, %.preheader ], [ %i.e, %bb.f ], [ %i.e, %.loopexit.loopexit.unr-lcssa ]
  store i32 %.130, ptr %6, align 4, !tbaa !41
  ret i32 %.132
}

declare i32 @Curl_wakeup_consume(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

declare void @Curl_pollfds_cleanup(ptr noundef) local_unnamed_addr #2

declare i32 @Curl_poll(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

declare i32 @curlx_wait_ms(i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, -1) i32 @multi_runsingle(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 11 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i8, align 1                       ; 6 uses
  %i.d = alloca i8, align 1                       ; 5 uses
  %i.e = alloca ptr, align 8                      ; 6 uses
  %i.f = alloca i8, align 1                       ; 6 uses
  %i.g = alloca i8, align 1                       ; 6 uses
  %i.h = alloca i8, align 1                       ; 4 uses
  %i.i = alloca i8, align 1                       ; 4 uses
  %3 = alloca %struct.sigaction, align 8          ; 6 uses
  %i.j = alloca i32, align 4                      ; 30 uses
  %i.k = alloca i8, align 1                       ; 19 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #13
  store i32 0, ptr %i.j, align 4, !tbaa !41
  %i.l = load i32, ptr %1, align 8, !tbaa !98
  %i.m = icmp eq i32 %i.l, -1059136595
  br i1 %i.m, label %bb.b, label %bb.mb

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 744 ; 5 uses
  %i.o = load i16, ptr %i.n, align 8
  %i.p = and i16 %i.o, 64
  %.not = icmp eq i16 %i.p, 0
  br i1 %.not, label %mstate.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 42, ptr %i.j, align 4, !tbaa !41
  %i.q = tail call fastcc i32 @multi_done(ptr noundef nonnull %1, i32 noundef 42, i1 noundef zeroext false) ; 0 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.s = load i32, ptr %i.r, align 8, !tbaa !97   ; 2 uses
  %i.t = icmp eq i32 %i.s, 14
  br i1 %i.t, label %mstate.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 2187
  %i.v = load i64, ptr %i.u, align 1
  %i.w = and i64 %i.v, 536870912
  %.not19.i = icmp eq i64 %i.w, 0
  br i1 %.not19.i, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 4504
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !105  ; 2 uses
  %.not20.i = icmp eq ptr %i.y, null
  br i1 %.not20.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !107
  %i.ab = icmp sgt i32 %i.aa, 0
  %i.ac = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_multi, i64 8), align 8
  %i.ad = icmp sgt i32 %i.ac, 0
  %or.cond.i = select i1 %i.ab, i1 %i.ad, i1 false
  br i1 %or.cond.i, label %bb.h, label %bb.i

bb.g:                                             ; preds = %bb.e
  %.old.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_multi, i64 8), align 8, !tbaa !107
  %.old1.i = icmp sgt i32 %.old.i, 0
  br i1 %.old1.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ae = tail call ptr @Curl_trc_mstate_name(i32 noundef 14) #13
  tail call void (ptr, ptr, ...) @Curl_trc_multi(ptr noundef nonnull %1, ptr noundef nonnull @.str.33, ptr noundef %i.ae) #13
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.d
  store i32 14, ptr %i.r, align 8, !tbaa !97
  tail call void @mstate_enter_completed(ptr noundef nonnull %1, i32 noundef %i.s) #13, !inline_history !230
  br label %mstate.exit

mstate.exit:                                      ; preds = %bb.i, %bb.c, %bb.b
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 8 uses
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !95
  tail call void @Curl_uint32_bset_remove(ptr noundef nonnull %i.af, i32 noundef %i.ah) #13
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 6 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !42
  %i.ak = icmp eq ptr %1, %i.aj
  br i1 %i.ak, label %bb.j, label %bb.k

bb.j:                                             ; preds = %mstate.exit
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 720
  %i.am = tail call i32 @Curl_wakeup_consume(ptr noundef nonnull %i.al, i1 noundef zeroext true) #13 ; 0 uses
  tail call void @Curl_async_thrdd_multi_process(ptr noundef nonnull %0) #13
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.ao = load ptr, ptr %i.ai, align 8, !tbaa !42
  tail call void @Curl_cshutdn_perform(ptr noundef nonnull %i.an, ptr noundef %i.ao, ptr noundef nonnull %2) #13
  br label %bb.mb

bb.k:                                             ; preds = %mstate.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 2187 ; 31 uses
  %4 = load i64, ptr %i.ap, align 1
  %5 = lshr i64 %4, 32                            ; 2 uses
  %6 = trunc nuw i64 %5 to i32
  %i.aq = and i32 %6, 1
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 152 ; 3 uses
  %i.as = load i8, ptr %i.ar, align 8             ; 2 uses
  %i.at = and i8 %i.as, 1                         ; 2 uses
  %i.au = zext nneg i8 %i.at to i32
  %.not.i = icmp eq i32 %i.aq, %i.au
  br i1 %.not.i, label %sigpipe_apply.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.not.i.i = icmp eq i8 %i.at, 0
  br i1 %.not.i.i, label %bb.m, label %sigpipe_restore.exit.i

bb.m:                                             ; preds = %bb.l
  %i.av = tail call i32 @sigaction(i32 noundef 13, ptr noundef nonnull %2, ptr noundef null) #13 ; 0 uses
  %.pre.i = load i64, ptr %i.ap, align 1
  %.pre7.i = load i8, ptr %i.ar, align 8
  %.pre8.i = lshr i64 %.pre.i, 32
  br label %sigpipe_restore.exit.i

sigpipe_restore.exit.i:                           ; preds = %bb.m, %bb.l
  %.pre-phi.i = phi i64 [ %5, %bb.l ], [ %.pre8.i, %bb.m ]
  %7 = phi i8 [ %i.as, %bb.l ], [ %.pre7.i, %bb.m ]
  %i.aw = trunc i64 %.pre-phi.i to i8
  %i.ax = and i8 %i.aw, 1
  %i.ay = and i8 %7, -2
  %i.az = or disjoint i8 %i.ax, %i.ay
  store i8 %i.az, ptr %i.ar, align 8
  %8 = load i64, ptr %i.ap, align 1
  %9 = and i64 %8, 4294967296
  %.not.i6.i = icmp eq i64 %9, 0
  br i1 %.not.i6.i, label %bb.n, label %sigpipe_apply.exit

bb.n:                                             ; preds = %sigpipe_restore.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  %i.ba = tail call i32 @sigaction(i32 noundef 13, ptr noundef null, ptr noundef nonnull %2) #13 ; 0 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %3, ptr noundef nonnull align 8 dereferenceable(152) %2, i64 152, i1 false), !tbaa.struct !231
  store ptr inttoptr (i64 1 to ptr), ptr %3, align 8, !tbaa !100
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 136 ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !234
  %i.bd = and i32 %i.bc, -5
  store i32 %i.bd, ptr %i.bb, align 8, !tbaa !234
  %i.be = call i32 @sigaction(i32 noundef 13, ptr noundef nonnull %3, ptr noundef null) #13 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  br label %sigpipe_apply.exit

sigpipe_apply.exit:                               ; preds = %bb.k, %sigpipe_restore.exit.i, %bb.n
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 4504 ; 28 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 50 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 24 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 4628 ; 7 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 4632 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 417 ; 6 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 376 ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 368 ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 8 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 384
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 616 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 624
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 4724
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 4770
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 4816
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 4818
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 2048
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 2056
  br label %.critedge

.critedge:                                        ; preds = %.critedge.backedge, %sigpipe_apply.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #13
  store i8 0, ptr %i.k, align 1, !tbaa !162
  %i.bz = load i16, ptr %i.n, align 8             ; 2 uses
  %i.ca = and i16 %i.bz, -5
  store i16 %i.ca, ptr %i.n, align 8
  %i.cb = and i16 %i.bz, 4
  %.not268 = icmp eq i16 %i.cb, 0
  br i1 %.not268, label %multi_ischanged.exit.thread, label %bb.o

bb.o:                                             ; preds = %.critedge
  %i.cc = load i64, ptr %i.ap, align 1
  %i.cd = and i64 %i.cc, 536870912
  %.not74 = icmp eq i64 %i.cd, 0
  br i1 %.not74, label %bb.t, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ce = load ptr, ptr %i.bf, align 8, !tbaa !105 ; 2 uses
  %.not75 = icmp eq ptr %i.ce, null
  br i1 %.not75, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.cg = load i32, ptr %i.cf, align 8, !tbaa !107
  %i.ch = icmp sgt i32 %i.cg, 0
  %i.ci = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_multi, i64 8), align 8
  %i.cj = icmp sgt i32 %i.ci, 0
  %or.cond = select i1 %i.ch, i1 %i.cj, i1 false
  br i1 %or.cond, label %bb.s, label %bb.t

bb.r:                                             ; preds = %bb.p
  %.old = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_multi, i64 8), align 8, !tbaa !107
  %.old1 = icmp sgt i32 %.old, 0
  br i1 %.old1, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.q, %bb.r
  call void (ptr, ptr, ...) @Curl_trc_multi(ptr noundef nonnull %1, ptr noundef nonnull @.str.44) #13
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.q, %bb.o
  call fastcc void @process_pending_handles(ptr noundef nonnull %0)
  br label %multi_ischanged.exit.thread

multi_ischanged.exit.thread:                      ; preds = %bb.t, %.critedge
  %i.ck = load i32, ptr %i.bg, align 8, !tbaa !97 ; 3 uses
  %i.cl = add i32 %i.ck, -4
  %or.cond79 = icmp ult i32 %i.cl, 10
  br i1 %or.cond79, label %bb.u, label %bb.v

bb.u:                                             ; preds = %multi_ischanged.exit.thread
  %i.cm = load ptr, ptr %i.bh, align 8, !tbaa !108
  %.not76 = icmp eq ptr %i.cm, null
  br i1 %.not76, label %handle_completed.exit.thread, label %.thread377

bb.v:                                             ; preds = %multi_ischanged.exit.thread
  %i.cn = add i32 %i.ck, -3
  %or.cond81 = icmp ult i32 %i.cn, 11
  br i1 %or.cond81, label %.thread377, label %._crit_edge

.thread377:                                       ; preds = %bb.u, %bb.v
  %i.co = call fastcc zeroext i1 @multi_handle_timeout(ptr noundef nonnull %1, ptr noundef %i.k, ptr noundef %i.j)
  %.pr262.pre286 = load i32, ptr %i.bg, align 8, !tbaa !97 ; 2 uses
  br i1 %i.co, label %.thread, label %._crit_edge

._crit_edge:                                      ; preds = %.thread377, %bb.v
  %i.cp = phi i32 [ %i.ck, %bb.v ], [ %.pr262.pre286, %.thread377 ] ; 4 uses
  switch i32 %i.cp, label %handle_completed.exit.thread [
    i32 0, label %bb.w
    i32 2, label %bb.ah
    i32 3, label %bb.as
    i32 4, label %bb.bt
    i32 5, label %bb.co
    i32 6, label %bb.dq
    i32 7, label %bb.ed
    i32 8, label %bb.ga
    i32 9, label %bb.gm
    i32 10, label %bb.gy
    i32 12, label %bb.ht
    i32 11, label %bb.hy
    i32 13, label %bb.ir
    i32 14, label %multistate_init.exit
    i32 1, label %multistate_init.exit
    i32 15, label %multistate_init.exit
  ]

bb.w:                                             ; preds = %._crit_edge
  %i.cq = load i32, ptr %i.bi, align 4            ; 2 uses
  %i.cr = and i32 %i.cq, 1
  %.not.i83 = icmp eq i32 %i.cr, 0
  br i1 %.not.i83, label %bb.x, label %.thread.i

bb.x:                                             ; preds = %bb.w
  %i.cs = or disjoint i32 %i.cq, 1
  store i32 %i.cs, ptr %i.bi, align 4
  %i.ct = load ptr, ptr %i.bn, align 8, !tbaa !94 ; 4 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 8 ; 2 uses
  %i.cv = load i32, ptr %i.cu, align 8, !tbaa !118 ; 2 uses
  %i.cw = add i32 %i.cv, 1
  store i32 %i.cw, ptr %i.cu, align 8, !tbaa !118
  %i.cx = icmp eq i32 %i.cv, 0
  br i1 %i.cx, label %bb.y, label %.thread.i

bb.y:                                             ; preds = %bb.x
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ct, i64 160
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !119
  %.not.i.i84 = icmp eq ptr %i.cz, null
  br i1 %.not.i.i84, label %.thread.i, label %multi_assess_wakeup.exit.i

multi_assess_wakeup.exit.i:                       ; preds = %bb.y
  %i.da = getelementptr inbounds nuw i8, ptr %i.ct, i64 152
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !42
  %i.dc = call i32 @Curl_multi_ev_assess_xfer(ptr noundef nonnull %i.ct, ptr noundef %i.db) #13 ; 3 uses
  %.not17.not.i = icmp eq i32 %i.dc, 0
  br i1 %.not17.not.i, label %.thread.i, label %bb.z

bb.z:                                             ; preds = %multi_assess_wakeup.exit.i
  call void (ptr, ptr, ...) @Curl_failf(ptr noundef nonnull %1, ptr noundef nonnull @.str.1, i32 noundef %i.dc) #13
  br label %multistate_init.exitthread-pre-split

.thread.i:                                        ; preds = %multi_assess_wakeup.exit.i, %bb.y, %bb.x, %bb.w
  %i.dd = call i32 @Curl_pretransfer(ptr noundef nonnull %1) #13 ; 2 uses
  store i32 %i.dd, ptr %i.j, align 4, !tbaa !41
  %.not18.i = icmp eq i32 %i.dd, 0
  br i1 %.not18.i, label %bb.aa, label %multistate_init.exitthread-pre-split

bb.aa:                                            ; preds = %.thread.i
  %i.de = load i32, ptr %i.bg, align 8, !tbaa !97
  %i.df = icmp eq i32 %i.de, 2
  br i1 %i.df, label %mstate.exit.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dg = load i64, ptr %i.ap, align 1
  %i.dh = and i64 %i.dg, 536870912
  %.not19.i.i = icmp eq i64 %i.dh, 0
  br i1 %.not19.i.i, label %bb.ag, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.di = load ptr, ptr %i.bf, align 8, !tbaa !105 ; 2 uses
  %.not20.i.i = icmp eq ptr %i.di, null
  br i1 %.not20.i.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  %i.dk = load i32, ptr %i.dj, align 8, !tbaa !107
  %i.dl = icmp sgt i32 %i.dk, 0
  %i.dm = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_multi, i64 8), align 8
  %i.dn = icmp sgt i32 %i.dm, 0
  %or.cond.i.i = select i1 %i.dl, i1 %i.dn, i1 false
  br i1 %or.cond.i.i, label %bb.af, label %bb.ag

bb.ae:                                            ; preds = %bb.ac
  %.old.i.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_multi, i64 8), align 8, !tbaa !107
  %.old1.i.i = icmp sgt i32 %.old.i.i, 0
  br i1 %.old1.i.i, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.do = call ptr @Curl_trc_mstate_name(i32 noundef 2) #13
  call void (ptr, ptr, ...) @Curl_trc_multi(ptr noundef nonnull %1, ptr noundef nonnull @.str.33, ptr noundef %i.do) #13
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae, %bb.ad, %bb.ab
  store i32 2, ptr %i.bg, align 8, !tbaa !97
  br label %mstate.exit.i

mstate.exit.i:                                    ; preds = %bb.ag, %bb.aa
  call void @Curl_pgrsTime(ptr noundef nonnull %1, i32 noundef 1) #13
  br label %multistate_init.exitthread-pre-split

bb.ah:                                            ; preds = %._crit_edge
  call void @Curl_pgrsTime(ptr noundef nonnull %1, i32 noundef 2) #13
  %i.dp = load i64, ptr %i.bx, align 8, !tbaa !104 ; 2 uses
  %.not.i85 = icmp eq i64 %i.dp, 0
  br i1 %.not.i85, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  call void @Curl_expire_ex(ptr noundef nonnull %1, i64 noundef %i.dp, i32 noundef 9)
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.dq = load i64, ptr %i.by, align 8, !tbaa !235 ; 2 uses
  %.not9.i = icmp eq i64 %i.dq, 0
  br i1 %.not9.i, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  call void @Curl_expire_ex(ptr noundef nonnull %1, i64 noundef %i.dq, i32 noundef 2)
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.dr = load i32, ptr %i.bg, align 8, !tbaa !97
  %i.ds = icmp eq i32 %i.dr, 3
  br i1 %i.ds, label %.thread.thread, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.dt = load i64, ptr %i.ap, align 1
  %i.du = and i64 %i.dt, 536870912
  %.not19.i.i86 = icmp eq i64 %i.du, 0
  br i1 %.not19.i.i86, label %bb.ar, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.dv = load ptr, ptr %i.bf, align 8, !tbaa !105 ; 2 uses
  %.not20.i.i87 = icmp eq ptr %i.dv, null
  br i1 %.not20.i.i87, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  %i.dx = load i32, ptr %i.dw, align 8, !tbaa !107
  %i.dy = icmp sgt i32 %i.dx, 0
  %i.dz = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_multi, i64 8), align 8
  %i.ea = icmp sgt i32 %i.dz, 0
  %or.cond.i.i88 = select i1 %i.dy, i1 %i.ea, i1 false
  br i1 %or.cond.i.i88, label %bb.aq, label %bb.ar

bb.ap:                                            ; preds = %bb.an
  %.old.i.i90 = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_multi, i64 8), align 8, !tbaa !107
  %.old1.i.i91 = icmp sgt i32 %.old.i.i90, 0
  br i1 %.old1.i.i91, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %i.eb = call ptr @Curl_trc_mstate_name(i32 noundef 3) #13
  call void (ptr, ptr, ...) @Curl_trc_multi(ptr noundef nonnull %1, ptr noundef nonnull @.str.33, ptr noundef %i.eb) #13
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap, %bb.ao, %bb.am
  store i32 3, ptr %i.bg, align 8, !tbaa !97
  call void @Curl_init_CONNECT(ptr noundef nonnull %1) #13
  br label %multistate_init.exitthread-pre-split

bb.as:                                            ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #13
  %i.ec = call i32 @Curl_connect(ptr noundef nonnull %1, ptr noundef nonnull %i.i) #13 ; 3 uses
  %i.ed = icmp eq i32 %i.ec, 89
  br i1 %i.ed, label %bb.at, label %bb.ba

bb.at:                                            ; preds = %bb.as
  %i.ee = load i32, ptr %i.bg, align 8, !tbaa !97
  %i.ef = icmp eq i32 %i.ee, 1
  br i1 %i.ef, label %mstate.exit.i96, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.eg = load i64, ptr %i.ap, align 1
  %i.eh = and i64 %i.eg, 536870912
  %.not19.i.i93 = icmp eq i64 %i.eh, 0
  br i1 %.not19.i.i93, label %bb.az, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ei = load ptr, ptr %i.bf, align 8, !tbaa !105 ; 2 uses
  %.not20.i.i94 = icmp eq ptr %i.ei, null
  br i1 %.not20.i.i94, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  %i.ek = load i32, ptr %i.ej, align 8, !tbaa !107
  %i.el = icmp sgt i32 %i.ek, 0
  %i.em = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_multi, i64 8), align 8
  %i.en = icmp sgt i32 %i.em, 0
  %or.cond.i.i95 = select i1 %i.el, i1 %i.en, i1 false
  br i1 %or.cond.i.i95, label %bb.ay, label %bb.az

bb.ax:                                            ; preds = %bb.av
  %.old.i.i97 = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_multi, i64 8), align 8, !tbaa !107
  %.old1.i.i98 = icmp sgt i32 %.old.i.i97, 0
  br i1 %.old1.i.i98, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %i.eo = call ptr @Curl_trc_mstate_name(i32 noundef 1) #13
  call void (ptr, ptr, ...) @Curl_trc_multi(ptr noundef nonnull %1, ptr noundef nonnull @.str.33, ptr noundef %i.eo) #13
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax, %bb.aw, %bb.au
  store i32 1, ptr %i.bg, align 8, !tbaa !97
  br label %mstate.exit.i96

mstate.exit.i96:                                  ; preds = %bb.az, %bb.at
  %i.ep = load i32, ptr %i.ag, align 8, !tbaa !95
  call void @Curl_uint32_bset_remove(ptr noundef nonnull %i.bv, i32 noundef %i.ep) #13
  %i.eq = load i32, ptr %i.ag, align 8, !tbaa !95
  call void @Curl_uint32_bset_remove(ptr noundef nonnull %i.af, i32 noundef %i.eq) #13
  %i.er = load i32, ptr %i.ag, align 8, !tbaa !95
  %i.es = call zeroext i1 @Curl_uint32_bset_add(ptr noundef nonnull %i.bw, i32 noundef %i.er) #13 ; 0 uses
  br label %multistate_connect.exit

bb.ba:                                            ; preds = %bb.as
  %i.et = load ptr, ptr %i.bn, align 8, !tbaa !94
  call fastcc void @process_pending_handles(ptr noundef %i.et)
  %.not.i92 = icmp eq i32 %i.ec, 0
  br i1 %.not.i92, label %bb.bb, label %multistate_connect.exit

bb.bb:                                            ; preds = %bb.ba
  %i.eu = load i8, ptr %i.i, align 1, !tbaa !162, !range !236, !noundef !237
  %i.ev = trunc nuw i8 %i.eu to i1
  br i1 %i.ev, label %bb.bc, label %bb.bm

bb.bc:                                            ; preds = %bb.bb
  %i.ew = load ptr, ptr %i.bh, align 8, !tbaa !108 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 720
  %i.ey = load i32, ptr %i.ex, align 8
  %i.ez = and i32 %i.ey, 8
  %.not23.i = icmp eq i32 %i.ez, 0
  br i1 %.not23.i, label %bb.bd, label %bb.bf

bb.bd:                                            ; preds = %bb.bc
  %i.fa = call zeroext i1 @Curl_conn_is_multiplex(ptr noundef nonnull %i.ew, i32 noundef 0) #13
  br i1 %i.fa, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.fb = load ptr, ptr %i.bn, align 8, !tbaa !94
  call fastcc void @process_pending_handles(ptr noundef %i.fb)
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd, %bb.bc
  %i.fc = load i32, ptr %i.bg, align 8, !tbaa !97
  %i.fd = icmp eq i32 %i.fc, 5
  br i1 %i.fd, label %multistate_connect.exit, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.fe = load i64, ptr %i.ap, align 1
  %i.ff = and i64 %i.fe, 536870912
  %.not19.i24.i = icmp eq i64 %i.ff, 0
  br i1 %.not19.i24.i, label %bb.bl, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.fg = load ptr, ptr %i.bf, align 8, !tbaa !105 ; 2 uses
  %.not20.i25.i = icmp eq ptr %i.fg, null
  br i1 %.not20.i25.i, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 8
  %i.fi = load i32, ptr %i.fh, align 8, !tbaa !107
  %i.fj = icmp sgt i32 %i.fi, 0
  %i.fk = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_multi, i64 8), align 8
  %i.fl = icmp sgt i32 %i.fk, 0
  %or.cond.i26.i = select i1 %i.fj, i1 %i.fl, i1 false
  br i1 %or.cond.i26.i, label %bb.bk, label %bb.bl

bb.bj:                                            ; preds = %bb.bh
  %.old.i27.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_multi, i64 8), align 8, !tbaa !107
  %.old1.i28.i = icmp sgt i32 %.old.i27.i, 0
  br i1 %.old1.i28.i, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %i.fm = call ptr @Curl_trc_mstate_name(i32 noundef 5) #13
  call void (ptr, ptr, ...) @Curl_trc_multi(ptr noundef nonnull %1, ptr noundef nonnull @.str.33, ptr noundef %i.fm) #13
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj, %bb.bi, %bb.bg
  store i32 5, ptr %i.bg, align 8, !tbaa !97
  br label %multistate_connect.exit

bb.bm:                                            ; preds = %bb.bb
  %i.fn = load i32, ptr %i.bg, align 8, !tbaa !97
  %i.fo = icmp eq i32 %i.fn, 4
  br i1 %i.fo, label %multistate_connect.exit, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.fp = load i64, ptr %i.ap, align 1
  %i.fq = and i64 %i.fp, 536870912
  %.not19.i30.i = icmp eq i64 %i.fq, 0
  br i1 %.not19.i30.i, label %bb.bs, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.fr = load ptr, ptr %i.bf, align 8, !tbaa !105 ; 2 uses
  %.not20.i31.i = icmp eq ptr %i.fr, null
  br i1 %.not20.i31.i, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 8
  %i.ft = load i32, ptr %i.fs, align 8, !tbaa !107
  %i.fu = icmp sgt i32 %i.ft, 0
  %i.fv = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_multi, i64 8), align 8
  %i.fw = icmp sgt i32 %i.fv, 0
  %or.cond.i32.i = select i1 %i.fu, i1 %i.fw, i1 false
  br i1 %or.cond.i32.i, label %bb.br, label %bb.bs

bb.bq:                                            ; preds = %bb.bo
  %.old.i33.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_multi, i64 8), align 8, !tbaa !107
  %.old1.i34.i = icmp sgt i32 %.old.i33.i, 0
  br i1 %.old1.i34.i, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq, %bb.bp
  %i.fx = call ptr @Curl_trc_mstate_name(i32 noundef 4) #13
  call void (ptr, ptr, ...) @Curl_trc_multi(ptr noundef nonnull %1, ptr noundef nonnull @.str.33, ptr noundef %i.fx) #13
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bq, %bb.bp, %bb.bn
  store i32 4, ptr %i.bg, align 8, !tbaa !97
  br label %multistate_connect.exit

multistate_connect.exit:                          ; preds = %mstate.exit.i96, %bb.ba, %bb.bf, %bb.bl, %bb.bm, %bb.bs
  %storemerge.i = phi i32 [ 0, %mstate.exit.i96 ], [ %i.ec, %bb.ba ], [ 0, %bb.bl ], [ 0, %bb.bf ], [ 0, %bb.bm ], [ 0, %bb.bs ]
  %.021.i = phi i32 [ 0, %mstate.exit.i96 ], [ 0, %bb.ba ], [ -1, %bb.bl ], [ -1, %bb.bf ], [ -1, %bb.bm ], [ -1, %bb.bs ]
  store i32 %storemerge.i, ptr %i.j, align 4, !tbaa !41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #13
  br label %multistate_init.exitthread-pre-split

bb.bt:                                            ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #13
  %i.fy = load ptr, ptr %i.bh, align 8, !tbaa !108
  %.not.i99 = icmp eq ptr %i.fy, null
  br i1 %.not.i99, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  store i32 2, ptr %i.j, align 4, !tbaa !41
  br label %multistate_connecting.exit

bb.bv:                                            ; preds = %bb.bt
  %i.fz = call zeroext i1 @Curl_xfer_recv_is_paused(ptr noundef nonnull %1) #13
  br i1 %i.fz, label %multistate_connecting.exit, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.ga = call i32 @Curl_conn_connect(ptr noundef nonnull %1, i32 noundef 0, i1 noundef zeroext false, ptr noundef nonnull %i.h) #13 ; 4 uses
  store i32 %i.ga, ptr %i.j, align 4, !tbaa !41
  %i.gb = load i8, ptr %i.h, align 1, !tbaa !162, !range !236, !noundef !237
  %i.gc = trunc nuw i8 %i.gb to i1
  %.not24.i = icmp eq i32 %i.ga, 0                ; 2 uses
  %or.cond29.i = select i1 %i.gc, i1 %.not24.i, i1 false
  br i1 %or.cond29.i, label %bb.bx, label %bb.ch

bb.bx:                                            ; preds = %bb.bw
  %i.gd = load ptr, ptr %i.bh, align 8, !tbaa !108 ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 720
  %i.gf = load i32, ptr %i.ge, align 8
  %i.gg = and i32 %i.gf, 8
  %.not25.i = icmp eq i32 %i.gg, 0
  br i1 %.not25.i, label %bb.by, label %bb.ca

bb.by:                                            ; preds = %bb.bx
  %i.gh = call zeroext i1 @Curl_conn_is_multiplex(ptr noundef nonnull %i.gd, i32 noundef 0) #13
  br i1 %i.gh, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  %i.gi = load ptr, ptr %i.bn, align 8, !tbaa !94
  call fastcc void @process_pending_handles(ptr noundef %i.gi)
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.by, %bb.bx
  %i.gj = load i32, ptr %i.bg, align 8, !tbaa !97
  %i.gk = icmp eq i32 %i.gj, 5
  br i1 %i.gk, label %multistate_connecting.exit, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.gl = load i64, ptr %i.ap, align 1
  %i.gm = and i64 %i.gl, 536870912
  %.not19.i.i106 = icmp eq i64 %i.gm, 0
  br i1 %.not19.i.i106, label %bb.cg, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.gn = load ptr, ptr %i.bf, align 8, !tbaa !105 ; 2 uses
  %.not20.i.i107 = icmp eq ptr %i.gn, null
  br i1 %.not20.i.i107, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 8
  %i.gp = load i32, ptr %i.go, align 8, !tbaa !107
  %i.gq = icmp sgt i32 %i.gp, 0
  %i.gr = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_multi, i64 8), align 8
  %i.gs = icmp sgt i32 %i.gr, 0
  %or.cond.i.i108 = select i1 %i.gq, i1 %i.gs, i1 false
  br i1 %or.cond.i.i108, label %bb.cf, label %bb.cg

bb.ce:                                            ; preds = %bb.cc
  %.old.i.i109 = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_multi, i64 8), align 8, !tbaa !107
  %.old1.i.i110 = icmp sgt i32 %.old.i.i109, 0
  br i1 %.old1.i.i110, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %bb.ce, %bb.cd
  %i.gt = call ptr @Curl_trc_mstate_name(i32 noundef 5) #13
  call void (ptr, ptr, ...) @Curl_trc_multi(ptr noundef nonnull %1, ptr noundef nonnull @.str.33, ptr noundef %i.gt) #13
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %bb.ce, %bb.cd, %bb.cb
  store i32 5, ptr %i.bg, align 8, !tbaa !97
  br label %multistate_connecting.exit

bb.ch:                                            ; preds = %bb.bw
  br i1 %.not24.i, label %multistate_connecting.exit, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.gu = load i64, ptr %i.ap, align 1
  %i.gv = and i64 %i.gu, 536870912
  %.not27.i = icmp eq i64 %i.gv, 0
  br i1 %.not27.i, label %bb.cn, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.gw = load ptr, ptr %i.bf, align 8, !tbaa !105 ; 2 uses
  %.not28.i = icmp eq ptr %i.gw, null
  br i1 %.not28.i, label %bb.cl, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 8
  %i.gy = load i32, ptr %i.gx, align 8, !tbaa !107
  %i.gz = icmp sgt i32 %i.gy, 0
  %i.ha = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_multi, i64 8), align 8
  %i.hb = icmp sgt i32 %i.ha, 0
  %or.cond.i100 = select i1 %i.gz, i1 %i.hb, i1 false
  br i1 %or.cond.i100, label %bb.cm, label %bb.cn

bb.cl:                                            ; preds = %bb.cj
  %.old.i104 = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_multi, i64 8), align 8, !tbaa !107
  %.old1.i105 = icmp sgt i32 %.old.i104, 0
  br i1 %.old1.i105, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %bb.cl, %bb.ck
  call void (ptr, ptr, ...) @Curl_trc_multi(ptr noundef nonnull %1, ptr noundef nonnull @.str.45, i32 noundef %i.ga) #13
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %bb.cl, %bb.ck, %bb.ci
  %i.hc = call fastcc i32 @multi_done(ptr noundef nonnull %1, i32 noundef %i.ga, i1 noundef zeroext true) ; 0 uses
  store i8 1, ptr %i.k, align 1, !tbaa !162
  br label %multistate_connecting.exit

multistate_connecting.exit:                       ; preds = %bb.bu, %bb.bv, %bb.ca, %bb.cg, %bb.ch, %bb.cn
  %.0.i102 = phi i32 [ 0, %bb.bu ], [ 0, %bb.cn ], [ 0, %bb.bv ], [ 0, %bb.ch ], [ -1, %bb.ca ], [ -1, %bb.cg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #13
  br label %multistate_init.exitthread-pre-split

bb.co:                                            ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #13
  store i8 0, ptr %i.g, align 1, !tbaa !162
  %i.hd = load i32, ptr %i.j, align 4, !tbaa !41  ; 2 uses
  %.not.i111 = icmp eq i32 %i.hd, 0
  br i1 %.not.i111, label %bb.cp, label %.thread34.i

bb.cp:                                            ; preds = %bb.co
  %i.he = load ptr, ptr %i.bh, align 8, !tbaa !108 ; 3 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 720 ; 3 uses
  %i.hg = load i32, ptr %i.hf, align 8            ; 3 uses
  %i.hh = and i32 %i.hg, 8
  %.not15.i = icmp eq i32 %i.hh, 0
  br i1 %.not15.i, label %bb.cw, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.hi = load i64, ptr %i.ap, align 1
  %i.hj = and i64 %i.hi, 536870912
  %.not19.i.i114 = icmp eq i64 %i.hj, 0
  br i1 %.not19.i.i114, label %bb.cv, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.hk = load ptr, ptr %i.bf, align 8, !tbaa !105 ; 2 uses
  %.not20.i.i115 = icmp eq ptr %i.hk, null
  br i1 %.not20.i.i115, label %bb.ct, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 8
  %i.hm = load i32, ptr %i.hl, align 8, !tbaa !107
  %i.hn = icmp sgt i32 %i.hm, 0
  %i.ho = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_multi, i64 8), align 8
  %i.hp = icmp sgt i32 %i.ho, 0
  %or.cond.i.i116 = select i1 %i.hn, i1 %i.hp, i1 false
  br i1 %or.cond.i.i116, label %bb.cu, label %bb.cv

bb.ct:                                            ; preds = %bb.cr
  %.old.i.i117 = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_multi, i64 8), align 8, !tbaa !107
  %.old1.i.i118 = icmp sgt i32 %.old.i.i117, 0
  br i1 %.old1.i.i118, label %bb.cu, label %bb.cv

bb.cu:                                            ; preds = %bb.ct, %bb.cs
  %i.hq = call ptr @Curl_trc_mstate_name(i32 noundef 7) #13
  call void (ptr, ptr, ...) @Curl_trc_multi(ptr noundef nonnull %1, ptr noundef nonnull @.str.33, ptr noundef %i.hq) #13
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cu, %bb.ct, %bb.cs, %bb.cq
  store i32 7, ptr %i.bg, align 8, !tbaa !97
  br label %multistate_protoconnect.exit

bb.cw:                                            ; preds = %bb.cp
  %i.hr = and i32 %i.hg, 128
  %.not.i.i119 = icmp eq i32 %i.hr, 0
  br i1 %.not.i.i119, label %bb.cx, label %bb.da

bb.cx:                                            ; preds = %bb.cw
  %i.hs = getelementptr inbounds nuw i8, ptr %i.he, i64 728
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !132
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 8
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !135
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 32
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !238 ; 2 uses
  %.not14.i.i = icmp eq ptr %i.hx, null
  br i1 %.not14.i.i, label %bb.cz, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.hy = call i32 %i.hx(ptr noundef nonnull %1, ptr noundef nonnull %i.g) #13, !inline_history !218 ; 3 uses
  %.not15.i.i = icmp eq i32 %i.hy, 0
  br i1 %.not15.i.i, label %._crit_edge.i.i, label %.thread31.i

.thread31.i:                                      ; preds = %bb.cy
  store i32 %i.hy, ptr %i.j, align 4, !tbaa !41
  br label %.thread34.i

._crit_edge.i.i:                                  ; preds = %bb.cy
  %.pre.i.i = load i32, ptr %i.hf, align 8
  br label %bb.cz

bb.cz:                                            ; preds = %._crit_edge.i.i, %bb.cx
  %i.hz = phi i32 [ %.pre.i.i, %._crit_edge.i.i ], [ %i.hg, %bb.cx ]
  %i.ia = or i32 %i.hz, 128
  store i32 %i.ia, ptr %i.hf, align 8
  br label %bb.da

bb.da:                                            ; preds = %bb.cz, %bb.cw
  %i.ib = getelementptr inbounds nuw i8, ptr %i.he, i64 728
  %i.ic = load ptr, ptr %i.ib, align 8, !tbaa !132
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 8
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !135
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 40
  %i.ig = load ptr, ptr %i.if, align 8, !tbaa !239
  %.not16.i.i = icmp eq ptr %i.ig, null
  br i1 %.not16.i.i, label %.thread.i121, label %bb.db

.thread.i121:                                     ; preds = %bb.da
  store i8 1, ptr %i.g, align 1, !tbaa !162
  %.pre284 = load i32, ptr %i.bg, align 8, !tbaa !97
  br label %bb.dj

bb.db:                                            ; preds = %bb.da
  %.pre.i120 = load i8, ptr %i.g, align 1, !range !236
  %i.ih = trunc nuw i8 %.pre.i120 to i1
  %.pre285 = load i32, ptr %i.bg, align 8, !tbaa !97 ; 2 uses
  br i1 %i.ih, label %bb.dj, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.ii = icmp eq i32 %.pre285, 6
  br i1 %i.ii, label %multistate_protoconnect.exit, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.ij = load i64, ptr %i.ap, align 1
  %i.ik = and i64 %i.ij, 536870912
  %.not19.i17.i = icmp eq i64 %i.ik, 0
  br i1 %.not19.i17.i, label %bb.di, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.il = load ptr, ptr %i.bf, align 8, !tbaa !105 ; 2 uses
  %.not20.i18.i = icmp eq ptr %i.il, null
  br i1 %.not20.i18.i, label %bb.dg, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 8
  %i.in = load i32, ptr %i.im, align 8, !tbaa !107
  %i.io = icmp sgt i32 %i.in, 0
  %i.ip = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_multi, i64 8), align 8
  %i.iq = icmp sgt i32 %i.ip, 0
  %or.cond.i19.i = select i1 %i.io, i1 %i.iq, i1 false
  br i1 %or.cond.i19.i, label %bb.dh, label %bb.di

bb.dg:                                            ; preds = %bb.de
  %.old.i20.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_multi, i64 8), align 8, !tbaa !107
  %.old1.i21.i = icmp sgt i32 %.old.i20.i, 0
  br i1 %.old1.i21.i, label %bb.dh, label %bb.di

bb.dh:                                            ; preds = %bb.dg, %bb.df
  %i.ir = call ptr @Curl_trc_mstate_name(i32 noundef 6) #13
  call void (ptr, ptr, ...) @Curl_trc_multi(ptr noundef nonnull %1, ptr noundef nonnull @.str.33, ptr noundef %i.ir) #13
  br label %bb.di

bb.di:                                            ; preds = %bb.dh, %bb.dg, %bb.df, %bb.dd
  store i32 6, ptr %i.bg, align 8, !tbaa !97
  br label %multistate_protoconnect.exit

bb.dj:                                            ; preds = %bb.db, %.thread.i121
  %i.is = phi i32 [ %.pre285, %bb.db ], [ %.pre284, %.thread.i121 ]
  %i.it = icmp eq i32 %i.is, 7
  br i1 %i.it, label %multistate_protoconnect.exit, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.iu = load i64, ptr %i.ap, align 1
  %i.iv = and i64 %i.iu, 536870912
  %.not19.i23.i = icmp eq i64 %i.iv, 0
  br i1 %.not19.i23.i, label %bb.dp, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.iw = load ptr, ptr %i.bf, align 8, !tbaa !105 ; 2 uses
  %.not20.i24.i = icmp eq ptr %i.iw, null
  br i1 %.not20.i24.i, label %bb.dn, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 8
  %i.iy = load i32, ptr %i.ix, align 8, !tbaa !107
  %i.iz = icmp sgt i32 %i.iy, 0
  %i.ja = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_multi, i64 8), align 8
  %i.jb = icmp sgt i32 %i.ja, 0
  %or.cond.i25.i = select i1 %i.iz, i1 %i.jb, i1 false
  br i1 %or.cond.i25.i, label %bb.do, label %bb.dp

bb.dn:                                            ; preds = %bb.dl
  %.old.i26.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_multi, i64 8), align 8, !tbaa !107
  %.old1.i27.i = icmp sgt i32 %.old.i26.i, 0
  br i1 %.old1.i27.i, label %bb.do, label %bb.dp

bb.do:                                            ; preds = %bb.dn, %bb.dm
  %i.jc = call ptr @Curl_trc_mstate_name(i32 noundef 7) #13
  call void (ptr, ptr, ...) @Curl_trc_multi(ptr noundef nonnull %1, ptr noundef nonnull @.str.33, ptr noundef %i.jc) #13
  br label %bb.dp

bb.dp:                                            ; preds = %bb.do, %bb.dn, %bb.dm, %bb.dk
  store i32 7, ptr %i.bg, align 8, !tbaa !97
  br label %multistate_protoconnect.exit

.thread34.i:                                      ; preds = %.thread31.i, %bb.co
  %i.jd = phi i32 [ %i.hd, %bb.co ], [ %i.hy, %.thread31.i ]
  %i.je = call fastcc i32 @multi_done(ptr noundef nonnull %1, i32 noundef %i.jd, i1 noundef zeroext true) ; 0 uses
  store i8 1, ptr %i.k, align 1, !tbaa !162
  br label %multistate_protoconnect.exit

multistate_protoconnect.exit:                     ; preds = %bb.cv, %bb.dc, %bb.di, %bb.dj, %bb.dp, %.thread34.i
  %.0.i113 = phi i32 [ 0, %.thread34.i ], [ -1, %bb.di ], [ -1, %bb.cv ], [ -1, %bb.dp ], [ -1, %bb.dc ], [ -1, %bb.dj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #13
  br label %multistate_init.exitthread-pre-split

bb.dq:                                            ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #13
  %i.jf = load ptr, ptr %i.bh, align 8, !tbaa !108 ; 2 uses
  %.not.i.i122 = icmp eq ptr %i.jf, null
  br i1 %.not.i.i122, label %bb.dt, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 728
  %i.jh = load ptr, ptr %i.jg, align 8, !tbaa !132
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 8
  %i.jj = load ptr, ptr %i.ji, align 8, !tbaa !135
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 40
  %i.jl = load ptr, ptr %i.jk, align 8, !tbaa !239 ; 2 uses
  %.not9.i.i = icmp eq ptr %i.jl, null
  br i1 %.not9.i.i, label %bb.dt, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  store i8 0, ptr %i.f, align 1, !tbaa !162
  %i.jm = call i32 %i.jl(ptr noundef nonnull %1, ptr noundef nonnull %i.f) #13, !inline_history !219
  %.pre.i123 = load i8, ptr %i.f, align 1, !range !236
  %i.jn = trunc nuw i8 %.pre.i123 to i1
  br label %protocol_connecting.exit.i

bb.dt:                                            ; preds = %bb.dr, %bb.dq
  store i8 1, ptr %i.f, align 1, !tbaa !162
  br label %protocol_connecting.exit.i

protocol_connecting.exit.i:                       ; preds = %bb.dt, %bb.ds
  %i.jo = phi i1 [ %i.jn, %bb.ds ], [ true, %bb.dt ]
  %.0.i.i = phi i32 [ %i.jm, %bb.ds ], [ 0, %bb.dt ] ; 3 uses
  store i32 %.0.i.i, ptr %i.j, align 4, !tbaa !41
  %i.jp = icmp eq i32 %.0.i.i, 0                  ; 2 uses
  %or.cond.i124 = select i1 %i.jp, i1 %i.jo, i1 false
  br i1 %or.cond.i124, label %bb.du, label %bb.eb

bb.du:                                            ; preds = %protocol_connecting.exit.i
  %i.jq = load i32, ptr %i.bg, align 8, !tbaa !97
  %i.jr = icmp eq i32 %i.jq, 7
  br i1 %i.jr, label %multistate_protoconnecting.exit, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.js = load i64, ptr %i.ap, align 1
  %i.jt = and i64 %i.js, 536870912
  %.not19.i.i127 = icmp eq i64 %i.jt, 0
  br i1 %.not19.i.i127, label %bb.ea, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.ju = load ptr, ptr %i.bf, align 8, !tbaa !105 ; 2 uses
  %.not20.i.i128 = icmp eq ptr %i.ju, null
  br i1 %.not20.i.i128, label %bb.dy, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 8
  %i.jw = load i32, ptr %i.jv, align 8, !tbaa !107
  %i.jx = icmp sgt i32 %i.jw, 0
  %i.jy = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_multi, i64 8), align 8
  %i.jz = icmp sgt i32 %i.jy, 0
  %or.cond.i.i129 = select i1 %i.jx, i1 %i.jz, i1 false
  br i1 %or.cond.i.i129, label %bb.dz, label %bb.ea

bb.dy:                                            ; preds = %bb.dw
  %.old.i.i130 = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_multi, i64 8), align 8, !tbaa !107
  %.old1.i.i131 = icmp sgt i32 %.old.i.i130, 0
  br i1 %.old1.i.i131, label %bb.dz, label %bb.ea

bb.dz:                                            ; preds = %bb.dy, %bb.dx
  %i.ka = call ptr @Curl_trc_mstate_name(i32 noundef 7) #13
  call void (ptr, ptr, ...) @Curl_trc_multi(ptr noundef nonnull %1, ptr noundef nonnull @.str.33, ptr noundef %i.ka) #13
  br label %bb.ea

bb.ea:                                            ; preds = %bb.dz, %bb.dy, %bb.dx, %bb.dv
  store i32 7, ptr %i.bg, align 8, !tbaa !97
  br label %multistate_protoconnecting.exit

bb.eb:                                            ; preds = %protocol_connecting.exit.i
  br i1 %i.jp, label %multistate_protoconnecting.exit, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %i.kb = call fastcc i32 @multi_done(ptr noundef nonnull %1, i32 noundef %.0.i.i, i1 noundef zeroext true) ; 0 uses
  store i8 1, ptr %i.k, align 1, !tbaa !162
  br label %multistate_protoconnecting.exit

multistate_protoconnecting.exit:                  ; preds = %bb.du, %bb.ea, %bb.eb, %bb.ec
  %.0.i126 = phi i32 [ 0, %bb.ec ], [ 0, %bb.eb ], [ -1, %bb.du ], [ -1, %bb.ea ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #13
  br label %multistate_init.exitthread-pre-split

bb.ed:                                            ; preds = %._crit_edge
  %i.kc = load ptr, ptr %i.bp, align 8, !tbaa !240 ; 2 uses
  %.not.i132 = icmp eq ptr %i.kc, null
  br i1 %.not.i132, label %.thread.i135, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  %i.kd = load ptr, ptr %i.bn, align 8, !tbaa !94 ; 2 uses
  %.not4.i.i = icmp eq ptr %i.kd, null
  br i1 %.not4.i.i, label %Curl_set_in_callback.exit.i, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 744 ; 2 uses
  %i.kf = load i16, ptr %i.ke, align 8
  %i.kg = or i16 %i.kf, 8
  store i16 %i.kg, ptr %i.ke, align 8
  %.pre.i133 = load ptr, ptr %i.bp, align 8, !tbaa !240
  br label %Curl_set_in_callback.exit.i

Curl_set_in_callback.exit.i:                      ; preds = %bb.ef, %bb.ee
  %i.kh = phi ptr [ %i.kc, %bb.ee ], [ %.pre.i133, %bb.ef ]
  %i.ki = load ptr, ptr %i.bq, align 8, !tbaa !241
  %i.kj = load i16, ptr %i.bt, align 8, !tbaa !242
  %i.kk = zext i16 %i.kj to i32
  %i.kl = load i16, ptr %i.bu, align 2, !tbaa !243
  %i.km = zext i16 %i.kl to i32
  %i.kn = call i32 %i.kh(ptr noundef %i.ki, ptr noundef nonnull %i.br, ptr noundef nonnull %i.bs, i32 noundef %i.kk, i32 noundef %i.km) #13, !inline_history !220
  %i.ko = load ptr, ptr %i.bn, align 8, !tbaa !94 ; 2 uses
  %.not4.i93.i = icmp eq ptr %i.ko, null
  br i1 %.not4.i93.i, label %Curl_set_in_callback.exit94.i, label %bb.eg

bb.eg:                                            ; preds = %Curl_set_in_callback.exit.i
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 744 ; 2 uses
  %i.kq = load i16, ptr %i.kp, align 8
  %i.kr = and i16 %i.kq, -9
  store i16 %i.kr, ptr %i.kp, align 8
  br label %Curl_set_in_callback.exit94.i

Curl_set_in_callback.exit94.i:                    ; preds = %bb.eg, %Curl_set_in_callback.exit.i
  %.not79.i = icmp eq i32 %i.kn, 0
  br i1 %.not79.i, label %.thread.i135, label %bb.eh

bb.eh:                                            ; preds = %Curl_set_in_callback.exit94.i
  call void (ptr, ptr, ...) @Curl_failf(ptr noundef nonnull %1, ptr noundef nonnull @.str.46) #13
  %i.ks = call fastcc i32 @multi_done(ptr noundef nonnull %1, i32 noundef 42, i1 noundef zeroext false) ; 0 uses
  store i8 1, ptr %i.k, align 1, !tbaa !162
  br label %multistate_do.exit

.thread.i135:                                     ; preds = %Curl_set_in_callback.exit94.i, %bb.ed
  %i.kt = load i64, ptr %i.ap, align 1            ; 2 uses
  %i.ku = and i64 %i.kt, 3
  %or.cond91.i = icmp eq i64 %i.ku, 1
  br i1 %or.cond91.i, label %bb.ei, label %bb.er

bb.ei:                                            ; preds = %.thread.i135
  %i.kv = load i32, ptr %i.bg, align 8, !tbaa !97
  %i.kw = icmp eq i32 %i.kv, 13
  br i1 %i.kw, label %multistate_do.exit, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  %i.kx = and i64 %i.kt, 536870912
  %.not19.i.i138 = icmp eq i64 %i.kx, 0
  br i1 %.not19.i.i138, label %bb.eo, label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  %i.ky = load ptr, ptr %i.bf, align 8, !tbaa !105 ; 2 uses
  %.not20.i.i139 = icmp eq ptr %i.ky, null
  br i1 %.not20.i.i139, label %bb.em, label %bb.el

bb.el:                                            ; preds = %bb.ek
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 8
  %i.la = load i32, ptr %i.kz, align 8, !tbaa !107
  %i.lb = icmp sgt i32 %i.la, 0
  %i.lc = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_multi, i64 8), align 8
  %i.ld = icmp sgt i32 %i.lc, 0
  %or.cond.i.i140 = select i1 %i.lb, i1 %i.ld, i1 false
  br i1 %or.cond.i.i140, label %bb.en, label %bb.eo

bb.em:                                            ; preds = %bb.ek
  %.old.i.i141 = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_multi, i64 8), align 8, !tbaa !107
  %.old1.i.i142 = icmp sgt i32 %.old.i.i141, 0
  br i1 %.old1.i.i142, label %bb.en, label %bb.eo

bb.en:                                            ; preds = %bb.em, %bb.el
  %i.le = call ptr @Curl_trc_mstate_name(i32 noundef 13) #13
  call void (ptr, ptr, ...) @Curl_trc_multi(ptr noundef nonnull %1, ptr noundef nonnull @.str.33, ptr noundef %i.le) #13
  br label %bb.eo

bb.eo:                                            ; preds = %bb.en, %bb.em, %bb.el, %bb.ej
  store i32 13, ptr %i.bg, align 8, !tbaa !97
  %i.lf = load ptr, ptr %i.bn, align 8, !tbaa !94 ; 2 uses
  %.not5.i.i = icmp eq ptr %i.lf, null
  br i1 %.not5.i.i, label %multistate_do.exit, label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lf, i64 400
  %i.lh = load ptr, ptr %i.lg, align 8, !tbaa !156
  %.not6.i.i = icmp eq ptr %i.lh, null
  br i1 %.not6.i.i, label %multistate_do.exit, label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  call void @Curl_mntfy_add(ptr noundef nonnull %1, i32 noundef 1) #13
  br label %multistate_do.exit

bb.er:                                            ; preds = %.thread.i135
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #13
  store i8 0, ptr %i.d, align 1, !tbaa !162
  %i.li = load ptr, ptr %i.bh, align 8, !tbaa !108
  %i.lj = getelementptr inbounds nuw i8, ptr %i.li, i64 728
  %i.lk = load ptr, ptr %i.lj, align 8, !tbaa !132
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lk, i64 8
  %i.lm = load ptr, ptr %i.ll, align 8, !tbaa !135
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lm, i64 8
  %i.lo = load ptr, ptr %i.ln, align 8, !tbaa !244 ; 2 uses
  %.not.i.i136 = icmp eq ptr %i.lo, null
  br i1 %.not.i.i136, label %multi_do.exit.thread.thread.i, label %multi_do.exit.i

multi_do.exit.i:                                  ; preds = %bb.er
  %i.lp = call i32 %i.lo(ptr noundef nonnull %1, ptr noundef nonnull %i.d) #13, !inline_history !221 ; 3 uses
  switch i32 %i.lp, label %bb.fy [
    i32 0, label %multi_do.exit.thread.i
    i32 55, label %bb.fp
  ]

multi_do.exit.thread.i:                           ; preds = %multi_do.exit.i
  %.pre126.i = load i8, ptr %i.d, align 1, !tbaa !162, !range !236
  %i.lq = trunc nuw i8 %.pre126.i to i1
  br i1 %i.lq, label %bb.fa, label %multi_do.exit.thread.thread.i

multi_do.exit.thread.thread.i:                    ; preds = %multi_do.exit.thread.i, %bb.er
  %i.lr = load i32, ptr %i.bi, align 4
  %i.ls = and i32 %i.lr, 64
  %.not83.i = icmp eq i32 %i.ls, 0
  br i1 %.not83.i, label %.thread119.i, label %bb.es

bb.es:                                            ; preds = %multi_do.exit.thread.thread.i
  %i.lt = load ptr, ptr %i.bj, align 8, !tbaa !245
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lt, i64 64
  %i.lv = load i8, ptr %i.lu, align 8, !tbaa !248
  switch i8 %i.lv, label %.thread119.i [
    i8 7, label %bb.et
    i8 5, label %bb.et
  ]

bb.et:                                            ; preds = %bb.es, %bb.es
  %i.lw = call fastcc i32 @multi_done(ptr noundef nonnull %1, i32 noundef 0, i1 noundef zeroext false) ; 0 uses
  %i.lx = load ptr, ptr %i.bh, align 8, !tbaa !108
  %.not84.i = icmp eq ptr %i.lx, null
  %i.ly = select i1 %.not84.i, i32 14, i32 13
  call fastcc void @mstate(ptr noundef nonnull %1, i32 noundef %i.ly)
  br label %mstate.exit100.i

.thread119.i:                                     ; preds = %bb.es, %multi_do.exit.thread.thread.i
  %i.lz = load i32, ptr %i.bg, align 8, !tbaa !97
  %i.ma = icmp eq i32 %i.lz, 8
  br i1 %i.ma, label %mstate.exit100.i, label %bb.eu

bb.eu:                                            ; preds = %.thread119.i
  %i.mb = load i64, ptr %i.ap, align 1
  %i.mc = and i64 %i.mb, 536870912
  %.not19.i95.i = icmp eq i64 %i.mc, 0
  br i1 %.not19.i95.i, label %bb.ez, label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  %i.md = load ptr, ptr %i.bf, align 8, !tbaa !105 ; 2 uses
  %.not20.i96.i = icmp eq ptr %i.md, null
  br i1 %.not20.i96.i, label %bb.ex, label %bb.ew

bb.ew:                                            ; preds = %bb.ev
  %i.me = getelementptr inbounds nuw i8, ptr %i.md, i64 8
  %i.mf = load i32, ptr %i.me, align 8, !tbaa !107
  %i.mg = icmp sgt i32 %i.mf, 0
  %i.mh = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_multi, i64 8), align 8
  %i.mi = icmp sgt i32 %i.mh, 0
  %or.cond.i97.i = select i1 %i.mg, i1 %i.mi, i1 false
  br i1 %or.cond.i97.i, label %bb.ey, label %bb.ez

bb.ex:                                            ; preds = %bb.ev
  %.old.i98.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_multi, i64 8), align 8, !tbaa !107
  %.old1.i99.i = icmp sgt i32 %.old.i98.i, 0
  br i1 %.old1.i99.i, label %bb.ey, label %bb.ez

bb.ey:                                            ; preds = %bb.ex, %bb.ew
  %i.mj = call ptr @Curl_trc_mstate_name(i32 noundef 8) #13
  call void (ptr, ptr, ...) @Curl_trc_multi(ptr noundef nonnull %1, ptr noundef nonnull @.str.33, ptr noundef %i.mj) #13
  br label %bb.ez

bb.ez:                                            ; preds = %bb.ey, %bb.ex, %bb.ew, %bb.eu
  store i32 8, ptr %i.bg, align 8, !tbaa !97
  br label %mstate.exit100.i

bb.fa:                                            ; preds = %multi_do.exit.thread.i
  %i.mk = load ptr, ptr %i.bh, align 8, !tbaa !108
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mk, i64 720
  %i.mm = load i32, ptr %i.ml, align 8
  %i.mn = and i32 %i.mm, 64
  %.not85.i = icmp eq i32 %i.mn, 0
  %i.mo = load i32, ptr %i.bg, align 8, !tbaa !97 ; 2 uses
  br i1 %.not85.i, label %bb.fi, label %bb.fb

bb.fb:                                            ; preds = %bb.fa
  %i.mp = icmp eq i32 %i.mo, 9
  br i1 %i.mp, label %mstate.exit100.i, label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  %i.mq = load i64, ptr %i.ap, align 1
  %i.mr = and i64 %i.mq, 536870912
  %.not19.i101.i = icmp eq i64 %i.mr, 0
  br i1 %.not19.i101.i, label %bb.fh, label %bb.fd

bb.fd:                                            ; preds = %bb.fc
  %i.ms = load ptr, ptr %i.bf, align 8, !tbaa !105 ; 2 uses
  %.not20.i102.i = icmp eq ptr %i.ms, null
  br i1 %.not20.i102.i, label %bb.ff, label %bb.fe

bb.fe:                                            ; preds = %bb.fd
  %i.mt = getelementptr inbounds nuw i8, ptr %i.ms, i64 8
  %i.mu = load i32, ptr %i.mt, align 8, !tbaa !107
  %i.mv = icmp sgt i32 %i.mu, 0
  %i.mw = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_multi, i64 8), align 8
  %i.mx = icmp sgt i32 %i.mw, 0
  %or.cond.i103.i = select i1 %i.mv, i1 %i.mx, i1 false
  br i1 %or.cond.i103.i, label %bb.fg, label %bb.fh

bb.ff:                                            ; preds = %bb.fd
  %.old.i104.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_multi, i64 8), align 8, !tbaa !107
  %.old1.i105.i = icmp sgt i32 %.old.i104.i, 0
  br i1 %.old1.i105.i, label %bb.fg, label %bb.fh

bb.fg:                                            ; preds = %bb.ff, %bb.fe
  %i.my = call ptr @Curl_trc_mstate_name(i32 noundef 9) #13
  call void (ptr, ptr, ...) @Curl_trc_multi(ptr noundef nonnull %1, ptr noundef nonnull @.str.33, ptr noundef %i.my) #13
  br label %bb.fh

bb.fh:                                            ; preds = %bb.fg, %bb.ff, %bb.fe, %bb.fc
  store i32 9, ptr %i.bg, align 8, !tbaa !97
  br label %mstate.exit100.i

bb.fi:                                            ; preds = %bb.fa
  %i.mz = icmp eq i32 %i.mo, 10
  br i1 %i.mz, label %mstate.exit100.i, label %bb.fj

bb.fj:                                            ; preds = %bb.fi
  %i.na = load i64, ptr %i.ap, align 1
  %i.nb = and i64 %i.na, 536870912
  %.not19.i107.i = icmp eq i64 %i.nb, 0
  br i1 %.not19.i107.i, label %bb.fo, label %bb.fk

bb.fk:                                            ; preds = %bb.fj
  %i.nc = load ptr, ptr %i.bf, align 8, !tbaa !105 ; 2 uses
  %.not20.i108.i = icmp eq ptr %i.nc, null
  br i1 %.not20.i108.i, label %bb.fm, label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  %i.nd = getelementptr inbounds nuw i8, ptr %i.nc, i64 8
  %i.ne = load i32, ptr %i.nd, align 8, !tbaa !107
  %i.nf = icmp sgt i32 %i.ne, 0
  %i.ng = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_multi, i64 8), align 8
  %i.nh = icmp sgt i32 %i.ng, 0
  %or.cond.i109.i = select i1 %i.nf, i1 %i.nh, i1 false
  br i1 %or.cond.i109.i, label %bb.fn, label %bb.fo

bb.fm:                                            ; preds = %bb.fk
  %.old.i110.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_multi, i64 8), align 8, !tbaa !107
  %.old1.i111.i = icmp sgt i32 %.old.i110.i, 0
  br i1 %.old1.i111.i, label %bb.fn, label %bb.fo

bb.fn:                                            ; preds = %bb.fm, %bb.fl
  %i.ni = call ptr @Curl_trc_mstate_name(i32 noundef 10) #13
  call void (ptr, ptr, ...) @Curl_trc_multi(ptr noundef nonnull %1, ptr noundef nonnull @.str.33, ptr noundef %i.ni) #13
  br label %bb.fo

bb.fo:                                            ; preds = %bb.fn, %bb.fm, %bb.fl, %bb.fj
  store i32 10, ptr %i.bg, align 8, !tbaa !97
  call void @mstate_enter_did(ptr noundef nonnull %1, i32 poison) #13, !inline_history !230
  br label %mstate.exit100.i

bb.fp:                                            ; preds = %multi_do.exit.i
  %i.nj = load ptr, ptr %i.bh, align 8, !tbaa !108 ; 2 uses
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nj, i64 720
  %i.nl = load i32, ptr %i.nk, align 8
  %i.nm = and i32 %i.nl, 8
  %.not86.i = icmp eq i32 %i.nm, 0
  br i1 %.not86.i, label %.thread124.i, label %bb.fq

bb.fq:                                            ; preds = %bb.fp
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nj, i64 728
  %i.no = load ptr, ptr %i.nn, align 8, !tbaa !132 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #13
  store ptr null, ptr %i.e, align 8, !tbaa !159
  %i.np = call i32 @Curl_retry_request(ptr noundef nonnull %1, ptr noundef nonnull %i.e) #13 ; 2 uses
  %.not88.i = icmp eq i32 %i.np, 0
  br i1 %.not88.i, label %bb.fs, label %bb.fr

bb.fr:                                            ; preds = %bb.fq
  store i8 1, ptr %i.k, align 1, !tbaa !162
  br label %bb.fs

bb.fs:                                            ; preds = %bb.fr, %bb.fq
  %.265.i = phi i32 [ %i.np, %bb.fr ], [ 55, %bb.fq ] ; 2 uses
  %i.nq = call fastcc i32 @multi_done(ptr noundef nonnull %1, i32 noundef %.265.i, i1 noundef zeroext false) ; 2 uses
  %i.nr = load ptr, ptr %i.e, align 8, !tbaa !159 ; 2 uses
  %.not89.i = icmp eq ptr %i.nr, null
  br i1 %.not89.i, label %bb.fw, label %bb.ft

bb.ft:                                            ; preds = %bb.fs
  switch i32 %i.nq, label %bb.fx [
    i32 55, label %bb.fu
    i32 0, label %bb.fu
  ]

bb.fu:                                            ; preds = %bb.ft, %bb.ft
  %.not.i113.i = icmp eq ptr %i.no, null
  br i1 %.not.i113.i, label %multi_follow.exit.thread.i, label %bb.fv

bb.fv:                                            ; preds = %bb.fu
  %i.ns = getelementptr inbounds nuw i8, ptr %i.no, i64 8
  %i.nt = load ptr, ptr %i.ns, align 8, !tbaa !135
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nt, i64 128
  %i.nv = load ptr, ptr %i.nu, align 8, !tbaa !249 ; 2 uses
  %.not9.i.i137 = icmp eq ptr %i.nv, null
  br i1 %.not9.i.i137, label %multi_follow.exit.thread.i, label %multi_follow.exit.i

multi_follow.exit.i:                              ; preds = %bb.fv
  %i.nw = call i32 %i.nv(ptr noundef nonnull %1, ptr noundef nonnull %i.nr, i32 noundef 2) #13, !inline_history !222 ; 2 uses
  %.not90.i = icmp eq i32 %i.nw, 0
  br i1 %.not90.i, label %multi_follow.exit.thread.i, label %bb.fx

multi_follow.exit.thread.i:                       ; preds = %multi_follow.exit.i, %bb.fv, %bb.fu
  call fastcc void @mstate(ptr noundef nonnull %1, i32 noundef 2)
  br label %bb.fx

bb.fw:                                            ; preds = %bb.fs
  store i8 1, ptr %i.k, align 1, !tbaa !162
  br label %bb.fx

bb.fx:                                            ; preds = %bb.fw, %multi_follow.exit.thread.i, %multi_follow.exit.i, %bb.ft
  %.167.i = phi i32 [ 0, %bb.fw ], [ -1, %multi_follow.exit.thread.i ], [ 0, %multi_follow.exit.i ], [ 0, %bb.ft ]
  %.3.i = phi i32 [ %.265.i, %bb.fw ], [ 0, %multi_follow.exit.thread.i ], [ %i.nw, %multi_follow.exit.i ], [ %i.nq, %bb.ft ]
  %i.nx = load ptr, ptr @Curl_cfree, align 8, !tbaa !11
  %i.ny = load ptr, ptr %i.e, align 8, !tbaa !159
  call void %i.nx(ptr noundef %i.ny) #13, !inline_history !220
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #13
  br label %mstate.exit100.i

bb.fy:                                            ; preds = %multi_do.exit.i
  %.pr.i = load ptr, ptr %i.bh, align 8, !tbaa !108
  %.not87.i = icmp eq ptr %.pr.i, null
  br i1 %.not87.i, label %bb.fz, label %.thread124.i

.thread124.i:                                     ; preds = %bb.fy, %bb.fp
  %i.nz = call fastcc i32 @multi_done(ptr noundef nonnull %1, i32 noundef %i.lp, i1 noundef zeroext false) ; 0 uses
  br label %bb.fz

bb.fz:                                            ; preds = %.thread124.i, %bb.fy
  store i8 1, ptr %i.k, align 1, !tbaa !162
  br label %mstate.exit100.i

mstate.exit100.i:                                 ; preds = %bb.fz, %bb.fx, %bb.fo, %bb.fi, %bb.fh, %bb.fb, %bb.ez, %.thread119.i, %bb.et
  %.369.i = phi i32 [ -1, %bb.et ], [ %.167.i, %bb.fx ], [ 0, %bb.fz ], [ -1, %bb.ez ], [ -1, %bb.fh ], [ -1, %.thread119.i ], [ -1, %bb.fb ], [ -1, %bb.fi ], [ -1, %bb.fo ]
  %.5.i = phi i32 [ 0, %bb.et ], [ %.3.i, %bb.fx ], [ %i.lp, %bb.fz ], [ 0, %bb.ez ], [ 0, %bb.fh ], [ 0, %.thread119.i ], [ 0, %bb.fb ], [ 0, %bb.fi ], [ 0, %bb.fo ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  br label %multistate_do.exit

multistate_do.exit:                               ; preds = %bb.eh, %bb.ei, %bb.eo, %bb.ep, %bb.eq, %mstate.exit100.i
  %.470.i = phi i32 [ 0, %bb.eh ], [ %.369.i, %mstate.exit100.i ], [ -1, %bb.eq ], [ -1, %bb.ep ], [ -1, %bb.eo ], [ -1, %bb.ei ]
  %.6.i = phi i32 [ 42, %bb.eh ], [ %.5.i, %mstate.exit100.i ], [ 0, %bb.eq ], [ 0, %bb.ep ], [ 0, %bb.eo ], [ 0, %bb.ei ]
  store i32 %.6.i, ptr %i.j, align 4, !tbaa !41
  br label %multistate_init.exitthread-pre-split

bb.ga:                                            ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  %i.oa = load ptr, ptr %i.bh, align 8, !tbaa !108 ; 3 uses
  %.not.i.i143 = icmp eq ptr %i.oa, null
  br i1 %.not.i.i143, label %.thread379, label %bb.gb

bb.gb:                                            ; preds = %bb.ga
  %i.ob = getelementptr inbounds nuw i8, ptr %i.oa, i64 728
  %i.oc = load ptr, ptr %i.ob, align 8, !tbaa !132
  %i.od = getelementptr inbounds nuw i8, ptr %i.oc, i64 8
  %i.oe = load ptr, ptr %i.od, align 8, !tbaa !135
  %i.of = getelementptr inbounds nuw i8, ptr %i.oe, i64 48
  %i.og = load ptr, ptr %i.of, align 8, !tbaa !250 ; 2 uses
  %.not9.i.i144 = icmp eq ptr %i.og, null
  br i1 %.not9.i.i144, label %.thread379, label %protocol_doing.exit.i

.thread379:                                       ; preds = %bb.ga, %bb.gb
  store i8 1, ptr %i.c, align 1, !tbaa !162
  store i32 0, ptr %i.j, align 4, !tbaa !41
  %i.oh = getelementptr inbounds nuw i8, ptr %i.oa, i64 720
  %i.oi = load i32, ptr %i.oh, align 8
  %i.oj = and i32 %i.oi, 64
  %.not9.i149380 = icmp eq i32 %i.oj, 0
  %i.ok = select i1 %.not9.i149380, i32 10, i32 9
  br label %bb.ge

protocol_doing.exit.i:                            ; preds = %bb.gb
  store i8 0, ptr %i.c, align 1, !tbaa !162
  %i.ol = call i32 %i.og(ptr noundef nonnull %1, ptr noundef nonnull %i.c) #13, !inline_history !223 ; 3 uses
  store i32 %i.ol, ptr %i.j, align 4, !tbaa !41
  %.not.i145 = icmp eq i32 %i.ol, 0
  br i1 %.not.i145, label %bb.gc, label %bb.gl

bb.gc:                                            ; preds = %protocol_doing.exit.i
  %.pre.i148 = load i8, ptr %i.c, align 1, !tbaa !162, !range !236
  %i.om = trunc nuw i8 %.pre.i148 to i1
  br i1 %i.om, label %bb.gd, label %multistate_doing.exit

bb.gd:                                            ; preds = %bb.gc
  %.pre282 = load ptr, ptr %i.bh, align 8, !tbaa !108
  %.pre283 = load i32, ptr %i.bg, align 8, !tbaa !97 ; 2 uses
  %i.on = getelementptr inbounds nuw i8, ptr %.pre282, i64 720
  %i.oo = load i32, ptr %i.on, align 8
  %i.op = and i32 %i.oo, 64
  %.not9.i149 = icmp eq i32 %i.op, 0
  %i.oq = select i1 %.not9.i149, i32 10, i32 9    ; 2 uses
  %i.or = icmp eq i32 %.pre283, %i.oq
  br i1 %i.or, label %multistate_doing.exit, label %bb.ge

bb.ge:                                            ; preds = %.thread379, %bb.gd
  %i.os = phi i32 [ %i.ok, %.thread379 ], [ %i.oq, %bb.gd ] ; 3 uses
  %i.ot = phi i32 [ 8, %.thread379 ], [ %.pre283, %bb.gd ]
  %i.ou = load i64, ptr %i.ap, align 1
  %i.ov = and i64 %i.ou, 536870912
  %.not19.i.i150 = icmp eq i64 %i.ov, 0
  br i1 %.not19.i.i150, label %bb.gj, label %bb.gf

bb.gf:                                            ; preds = %bb.ge
  %i.ow = load ptr, ptr %i.bf, align 8, !tbaa !105 ; 2 uses
  %.not20.i.i151 = icmp eq ptr %i.ow, null
  br i1 %.not20.i.i151, label %bb.gh, label %bb.gg

bb.gg:                                            ; preds = %bb.gf
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ow, i64 8
  %i.oy = load i32, ptr %i.ox, align 8, !tbaa !107
  %i.oz = icmp sgt i32 %i.oy, 0
  %i.pa = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_multi, i64 8), align 8
  %i.pb = icmp sgt i32 %i.pa, 0
  %or.cond.i.i152 = select i1 %i.oz, i1 %i.pb, i1 false
  br i1 %or.cond.i.i152, label %bb.gi, label %bb.gj

bb.gh:                                            ; preds = %bb.gf
  %.old.i.i153 = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_multi, i64 8), align 8, !tbaa !107
  %.old1.i.i154 = icmp sgt i32 %.old.i.i153, 0
  br i1 %.old1.i.i154, label %bb.gi, label %bb.gj

bb.gi:                                            ; preds = %bb.gh, %bb.gg
  %i.pc = call ptr @Curl_trc_mstate_name(i32 noundef range(i32 0, 16) %i.os) #13
  call void (ptr, ptr, ...) @Curl_trc_multi(ptr noundef nonnull %1, ptr noundef nonnull @.str.33, ptr noundef %i.pc) #13
  br label %bb.gj

bb.gj:                                            ; preds = %bb.gi, %bb.gh, %bb.gg, %bb.ge
  store i32 %i.os, ptr %i.bg, align 8, !tbaa !97
  %i.pd = zext nneg i32 %i.os to i64              ; 2 uses
  %i.pe = shl nuw nsw i64 1, %i.pd
  %i.pf = and i64 %i.pe, 2816
  %.not21.not.i.i = icmp eq i64 %i.pf, 0
  br i1 %.not21.not.i.i, label %bb.gk, label %multistate_doing.exit

bb.gk:                                            ; preds = %bb.gj
  %i.pg = getelementptr inbounds nuw [8 x i8], ptr @mstate.state_enter, i64 %i.pd
  %i.ph = load ptr, ptr %i.pg, align 8, !tbaa !11
  call void %i.ph(ptr noundef nonnull %1, i32 noundef %i.ot) #13, !inline_history !224
  br label %multistate_doing.exit

bb.gl:                                            ; preds = %protocol_doing.exit.i
  %i.pi = call fastcc i32 @multi_done(ptr noundef nonnull %1, i32 noundef %i.ol, i1 noundef zeroext false) ; 0 uses
  store i8 1, ptr %i.k, align 1, !tbaa !162
  br label %multistate_doing.exit

multistate_doing.exit:                            ; preds = %bb.gc, %bb.gd, %bb.gj, %bb.gk, %bb.gl
  %.0.i147 = phi i32 [ 0, %bb.gl ], [ 0, %bb.gc ], [ -1, %bb.gd ], [ -1, %bb.gj ], [ -1, %bb.gk ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  br label %multistate_init.exitthread-pre-split

bb.gm:                                            ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  %i.pj = load ptr, ptr %i.bh, align 8, !tbaa !108
  store i32 0, ptr %i.b, align 4, !tbaa !41
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pj, i64 728
  %i.pl = load ptr, ptr %i.pk, align 8, !tbaa !132
  %i.pm = getelementptr inbounds nuw i8, ptr %i.pl, i64 8
  %i.pn = load ptr, ptr %i.pm, align 8, !tbaa !135
  %i.po = getelementptr inbounds nuw i8, ptr %i.pn, i64 24
  %i.pp = load ptr, ptr %i.po, align 8, !tbaa !251 ; 2 uses
  %.not.i.i156 = icmp eq ptr %i.pp, null
  br i1 %.not.i.i156, label %.thread.i167, label %multi_do_more.exit.i

.thread.i167:                                     ; preds = %bb.gm
  store i32 0, ptr %i.j, align 4, !tbaa !41
  br label %multistate_doing_more.exit

multi_do_more.exit.i:                             ; preds = %bb.gm
  %i.pq = call i32 %i.pp(ptr noundef nonnull %1, ptr noundef nonnull %i.b) #13, !inline_history !225 ; 3 uses
  store i32 %i.pq, ptr %i.j, align 4, !tbaa !41
  %.not.i157 = icmp eq i32 %i.pq, 0
  br i1 %.not.i157, label %bb.gn, label %bb.gx

bb.gn:                                            ; preds = %multi_do_more.exit.i
  %.pre.i160 = load i32, ptr %i.b, align 4, !tbaa !41 ; 2 uses
  %.not9.i161 = icmp eq i32 %.pre.i160, 0
  br i1 %.not9.i161, label %multistate_doing_more.exit, label %bb.go

bb.go:                                            ; preds = %bb.gn
  %.not12.i = icmp eq i32 %.pre.i160, 1           ; 2 uses
  %i.pr = select i1 %.not12.i, i32 10, i32 8      ; 3 uses
  %i.ps = load i32, ptr %i.bg, align 8, !tbaa !97
  %i.pt = icmp eq i32 %i.ps, %i.pr
  br i1 %i.pt, label %multistate_doing_more.exit, label %bb.gp

bb.gp:                                            ; preds = %bb.go
  %i.pu = load i64, ptr %i.ap, align 1
  %i.pv = and i64 %i.pu, 536870912
  %.not19.i.i162 = icmp eq i64 %i.pv, 0
  br i1 %.not19.i.i162, label %bb.gu, label %bb.gq

bb.gq:                                            ; preds = %bb.gp
  %i.pw = load ptr, ptr %i.bf, align 8, !tbaa !105 ; 2 uses
  %.not20.i.i163 = icmp eq ptr %i.pw, null
  br i1 %.not20.i.i163, label %bb.gs, label %bb.gr

bb.gr:                                            ; preds = %bb.gq
  %i.px = getelementptr inbounds nuw i8, ptr %i.pw, i64 8
  %i.py = load i32, ptr %i.px, align 8, !tbaa !107
  %i.pz = icmp sgt i32 %i.py, 0
  %i.qa = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_multi, i64 8), align 8
  %i.qb = icmp sgt i32 %i.qa, 0
  %or.cond.i.i164 = select i1 %i.pz, i1 %i.qb, i1 false
  br i1 %or.cond.i.i164, label %bb.gt, label %bb.gu

bb.gs:                                            ; preds = %bb.gq
  %.old.i.i165 = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_multi, i64 8), align 8, !tbaa !107
  %.old1.i.i166 = icmp sgt i32 %.old.i.i165, 0
  br i1 %.old1.i.i166, label %bb.gt, label %bb.gu

bb.gt:                                            ; preds = %bb.gs, %bb.gr
  %i.qc = call ptr @Curl_trc_mstate_name(i32 noundef range(i32 0, 16) %i.pr) #13
  call void (ptr, ptr, ...) @Curl_trc_multi(ptr noundef nonnull %1, ptr noundef nonnull @.str.33, ptr noundef %i.qc) #13
  br label %bb.gu

bb.gu:                                            ; preds = %bb.gt, %bb.gs, %bb.gr, %bb.gp
  store i32 %i.pr, ptr %i.bg, align 8, !tbaa !97
  br i1 %.not12.i, label %bb.gv, label %multistate_doing_more.exit

bb.gv:                                            ; preds = %bb.gu
  %i.qd = load i32, ptr %i.bk, align 1
  %i.qe = and i32 %i.qd, -4097
  store i32 %i.qe, ptr %i.bk, align 1
  call void @Curl_pgrsTime(ptr noundef nonnull %1, i32 noundef 7) #13
  %i.qf = load i8, ptr %i.bo, align 8, !tbaa !154
  %i.qg = and i8 %i.qf, 2
  %.not.i20.i = icmp eq i8 %i.qg, 0
  br i1 %.not.i20.i, label %bb.gw, label %multistate_doing_more.exit

bb.gw:                                            ; preds = %bb.gv
  call void @Curl_pgrsTime(ptr noundef nonnull %1, i32 noundef 9) #13
  br label %multistate_doing_more.exit

bb.gx:                                            ; preds = %multi_do_more.exit.i
  %i.qh = call fastcc i32 @multi_done(ptr noundef nonnull %1, i32 noundef %i.pq, i1 noundef zeroext false) ; 0 uses
  store i8 1, ptr %i.k, align 1, !tbaa !162
  br label %multistate_doing_more.exit

multistate_doing_more.exit:                       ; preds = %.thread.i167, %bb.gn, %bb.go, %bb.gu, %bb.gv, %bb.gw, %bb.gx
  %.0.i159 = phi i32 [ 0, %bb.gx ], [ 0, %bb.gn ], [ -1, %bb.go ], [ -1, %bb.gu ], [ 0, %.thread.i167 ], [ -1, %bb.gv ], [ -1, %bb.gw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  br label %multistate_init.exitthread-pre-split

bb.gy:                                            ; preds = %._crit_edge
  %i.qi = load ptr, ptr %i.bh, align 8, !tbaa !108 ; 2 uses
  %i.qj = getelementptr inbounds nuw i8, ptr %i.qi, i64 720
  %i.qk = load i32, ptr %i.qj, align 8
  %i.ql = and i32 %i.qk, 16384
  %.not.i168 = icmp eq i32 %i.ql, 0
  br i1 %.not.i168, label %bb.ha, label %bb.gz

bb.gz:                                            ; preds = %bb.gy
  call fastcc void @process_pending_handles(ptr noundef %0)
  %.pre.i169 = load ptr, ptr %i.bh, align 8, !tbaa !108
  br label %bb.ha

bb.ha:                                            ; preds = %bb.gz, %bb.gy
  %i.qm = phi ptr [ %.pre.i169, %bb.gz ], [ %i.qi, %bb.gy ] ; 3 uses
  %i.qn = getelementptr inbounds nuw i8, ptr %i.qm, i64 336
  %i.qo = load i32, ptr %i.qn, align 8, !tbaa !142
  %or.cond.i170 = icmp ult i32 %i.qo, 2
  br i1 %or.cond.i170, label %bb.hc, label %bb.hb

bb.hb:                                            ; preds = %bb.ha
  %i.qp = getelementptr inbounds nuw i8, ptr %i.qm, i64 340
  %i.qq = load i32, ptr %i.qp, align 4, !tbaa !141
  %or.cond13.i = icmp ult i32 %i.qq, 2
  br i1 %or.cond13.i, label %bb.hc, label %bb.hh

bb.hc:                                            ; preds = %bb.hb, %bb.ha
  %i.qr = load i32, ptr %i.bg, align 8, !tbaa !97
  %i.qs = icmp eq i32 %i.qr, 11
  br i1 %i.qs, label %.thread.thread, label %bb.hd

bb.hd:                                            ; preds = %bb.hc
  %i.qt = load i64, ptr %i.ap, align 1
  %i.qu = and i64 %i.qt, 536870912
  %.not19.i.i175 = icmp eq i64 %i.qu, 0
  br i1 %.not19.i.i175, label %.thread.thread.sink.split, label %bb.he

bb.he:                                            ; preds = %bb.hd
  %i.qv = load ptr, ptr %i.bf, align 8, !tbaa !105 ; 2 uses
  %.not20.i.i176 = icmp eq ptr %i.qv, null
  br i1 %.not20.i.i176, label %bb.hg, label %bb.hf

bb.hf:                                            ; preds = %bb.he
  %i.qw = getelementptr inbounds nuw i8, ptr %i.qv, i64 8
  %i.qx = load i32, ptr %i.qw, align 8, !tbaa !107
  %i.qy = icmp sgt i32 %i.qx, 0
  %i.qz = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_multi, i64 8), align 8
  %i.ra = icmp sgt i32 %i.qz, 0
  %or.cond.i.i177 = select i1 %i.qy, i1 %i.ra, i1 false
  br i1 %or.cond.i.i177, label %.thread.thread.sink.split.sink.split, label %.thread.thread.sink.split

bb.hg:                                            ; preds = %bb.he
  %.old.i.i178 = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_multi, i64 8), align 8, !tbaa !107
  %.old1.i.i179 = icmp sgt i32 %.old.i.i178, 0
  br i1 %.old1.i.i179, label %.thread.thread.sink.split.sink.split, label %.thread.thread.sink.split

bb.hh:                                            ; preds = %bb.hb
  %i.rb = load i32, ptr %i.bi, align 4
  %i.rc = and i32 %i.rb, 64
  %.not12.i171 = icmp eq i32 %i.rc, 0
  br i1 %.not12.i171, label %bb.hk, label %bb.hi

bb.hi:                                            ; preds = %bb.hh
  %i.rd = getelementptr inbounds nuw i8, ptr %i.qm, i64 728
  %i.re = load ptr, ptr %i.rd, align 8, !tbaa !132
  %i.rf = getelementptr inbounds nuw i8, ptr %i.re, i64 32
  %i.rg = load i32, ptr %i.rf, align 8, !tbaa !160
  %i.rh = and i32 %i.rg, 4096
  %i.ri = icmp eq i32 %i.rh, 0
  br i1 %i.ri, label %bb.hj, label %bb.hk

bb.hj:                                            ; preds = %bb.hi
  %i.rj = load ptr, ptr %i.bj, align 8, !tbaa !245
  %i.rk = getelementptr inbounds nuw i8, ptr %i.rj, i64 64
  store i8 7, ptr %i.rk, align 8, !tbaa !248
  br label %bb.hk

bb.hk:                                            ; preds = %bb.hj, %bb.hi, %bb.hh
  %i.rl = load i32, ptr %i.bg, align 8, !tbaa !97
  %i.rm = icmp eq i32 %i.rl, 13
  br i1 %i.rm, label %.thread.thread, label %bb.hl

bb.hl:                                            ; preds = %bb.hk
  %i.rn = load i64, ptr %i.ap, align 1
  %i.ro = and i64 %i.rn, 536870912
  %.not19.i14.i = icmp eq i64 %i.ro, 0
  br i1 %.not19.i14.i, label %bb.hq, label %bb.hm

bb.hm:                                            ; preds = %bb.hl
  %i.rp = load ptr, ptr %i.bf, align 8, !tbaa !105 ; 2 uses
  %.not20.i15.i = icmp eq ptr %i.rp, null
  br i1 %.not20.i15.i, label %bb.ho, label %bb.hn

bb.hn:                                            ; preds = %bb.hm
  %i.rq = getelementptr inbounds nuw i8, ptr %i.rp, i64 8
  %i.rr = load i32, ptr %i.rq, align 8, !tbaa !107
  %i.rs = icmp sgt i32 %i.rr, 0
  %i.rt = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_multi, i64 8), align 8
  %i.ru = icmp sgt i32 %i.rt, 0
  %or.cond.i16.i = select i1 %i.rs, i1 %i.ru, i1 false
  br i1 %or.cond.i16.i, label %bb.hp, label %bb.hq

bb.ho:                                            ; preds = %bb.hm
  %.old.i17.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_multi, i64 8), align 8, !tbaa !107
  %.old1.i18.i = icmp sgt i32 %.old.i17.i, 0
  br i1 %.old1.i18.i, label %bb.hp, label %bb.hq

bb.hp:                                            ; preds = %bb.ho, %bb.hn
  %i.rv = call ptr @Curl_trc_mstate_name(i32 noundef 13) #13
  call void (ptr, ptr, ...) @Curl_trc_multi(ptr noundef nonnull %1, ptr noundef nonnull @.str.33, ptr noundef %i.rv) #13
  br label %bb.hq

bb.hq:                                            ; preds = %bb.hp, %bb.ho, %bb.hn, %bb.hl
  store i32 13, ptr %i.bg, align 8, !tbaa !97
  %i.rw = load ptr, ptr %i.bn, align 8, !tbaa !94 ; 2 uses
  %.not5.i.i172 = icmp eq ptr %i.rw, null
  br i1 %.not5.i.i172, label %.thread.thread, label %bb.hr

bb.hr:                                            ; preds = %bb.hq
  %i.rx = getelementptr inbounds nuw i8, ptr %i.rw, i64 400
  %i.ry = load ptr, ptr %i.rx, align 8, !tbaa !156
  %.not6.i.i173 = icmp eq ptr %i.ry, null
  br i1 %.not6.i.i173, label %multistate_init.exitthread-pre-split, label %bb.hs

bb.hs:                                            ; preds = %bb.hr
  call void @Curl_mntfy_add(ptr noundef nonnull %1, i32 noundef 1) #13
  br label %multistate_init.exitthread-pre-split

bb.ht:                                            ; preds = %._crit_edge
  %i.rz = call i32 @Curl_pgrsCheck(ptr noundef nonnull %1) #13 ; 4 uses
  %.not.i180 = icmp eq i32 %i.rz, 0
  br i1 %.not.i180, label %bb.hx, label %bb.hu

bb.hu:                                            ; preds = %bb.ht
  %i.sa = load ptr, ptr %i.bh, align 8, !tbaa !108 ; 2 uses
  %i.sb = getelementptr inbounds nuw i8, ptr %i.sa, i64 728
  %i.sc = load ptr, ptr %i.sb, align 8, !tbaa !132
  %i.sd = getelementptr inbounds nuw i8, ptr %i.sc, i64 32
  %i.se = load i32, ptr %i.sd, align 8, !tbaa !160
  %i.sf = and i32 %i.se, 2
  %i.sg = icmp eq i32 %i.sf, 0
  %i.sh = icmp ne i32 %i.rz, 92
  %or.cond.i181 = and i1 %i.sh, %i.sg
  br i1 %or.cond.i181, label %bb.hv, label %bb.hw

bb.hv:                                            ; preds = %bb.hu
  call void @Curl_conncontrol(ptr noundef nonnull %i.sa, i32 noundef 2) #13
  br label %bb.hw

bb.hw:                                            ; preds = %bb.hv, %bb.hu
  %i.si = call fastcc i32 @multi_done(ptr noundef nonnull %1, i32 noundef %i.rz, i1 noundef zeroext true) ; 0 uses
  br label %multistate_ratelimiting.exit

bb.hx:                                            ; preds = %bb.ht
  %i.sj = call fastcc i32 @mspeed_check(ptr noundef nonnull %1)
  %.not13.i = icmp eq i32 %i.sj, 0
  %spec.select.i = sext i1 %.not13.i to i32
  br label %multistate_ratelimiting.exit

multistate_ratelimiting.exit:                     ; preds = %bb.hw, %bb.hx
  %.0.i182 = phi i32 [ 0, %bb.hw ], [ %spec.select.i, %bb.hx ]
  store i32 %i.rz, ptr %i.j, align 4, !tbaa !41
  br label %multistate_init.exitthread-pre-split

bb.hy:                                            ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store ptr null, ptr %i.a, align 8, !tbaa !159
  store i32 0, ptr %i.j, align 4, !tbaa !41
  store i8 0, ptr %i.k, align 1, !tbaa !162
  %i.sk = call fastcc i32 @mspeed_check(ptr noundef nonnull %1)
  %i.sl = icmp eq i32 %i.sk, 81
  br i1 %i.sl, label %multistate_performing.exit, label %bb.hz

bb.hz:                                            ; preds = %bb.hy
  %i.sm = call i32 @Curl_sendrecv(ptr noundef nonnull %1) #13 ; 4 uses
  %i.sn = load i32, ptr %i.bk, align 1
  %i.so = and i32 %i.sn, 2
  %i.sp = icmp ne i32 %i.so, 0
  %i.sq = icmp eq i32 %i.sm, 56
  %or.cond.i183 = select i1 %i.sp, i1 true, i1 %i.sq
  br i1 %or.cond.i183, label %bb.ia, label %bb.ib

bb.ia:                                            ; preds = %bb.hz
  %i.sr = call i32 @Curl_retry_request(ptr noundef nonnull %1, ptr noundef nonnull %i.a) #13 ; 2 uses
  %.not.i191 = icmp eq i32 %i.sr, 0               ; 2 uses
  %.not67.i = icmp ne i32 %i.sm, 0
  %i.ss = load ptr, ptr %i.a, align 8
  %i.st = icmp ne ptr %i.ss, null
  %.059.i = select i1 %.not.i191, i1 %i.st, i1 false
  %i.su = select i1 %.not.i191, i1 true, i1 %.not67.i
  %.055.i = select i1 %i.su, i32 %i.sm, i32 %i.sr
  br i1 %.059.i, label %.thread101.i, label %bb.ib

.thread101.i:                                     ; preds = %bb.ia
  %i.sv = load i32, ptr %i.bk, align 1
  %i.sw = or i32 %i.sv, 2
  store i32 %i.sw, ptr %i.bk, align 1
  br label %bb.ig

bb.ib:                                            ; preds = %bb.ia, %bb.hz
  %.2.i = phi i32 [ %.055.i, %bb.ia ], [ %i.sm, %bb.hz ] ; 4 uses
  %.not68.i = icmp eq i32 %.2.i, 0
  br i1 %.not68.i, label %bb.if, label %bb.ic

bb.ic:                                            ; preds = %bb.ib
  %i.sx = load ptr, ptr %i.bh, align 8, !tbaa !108 ; 2 uses
  %i.sy = getelementptr inbounds nuw i8, ptr %i.sx, i64 728
  %i.sz = load ptr, ptr %i.sy, align 8, !tbaa !132
  %i.ta = getelementptr inbounds nuw i8, ptr %i.sz, i64 32
  %i.tb = load i32, ptr %i.ta, align 8, !tbaa !160
  %i.tc = and i32 %i.tb, 2
  %i.td = icmp eq i32 %i.tc, 0
  %i.te = icmp ne i32 %.2.i, 92
  %or.cond3.i = and i1 %i.te, %i.td
  br i1 %or.cond3.i, label %bb.id, label %bb.ie

bb.id:                                            ; preds = %bb.ic
  call void @Curl_conncontrol(ptr noundef nonnull %i.sx, i32 noundef 2) #13
  br label %bb.ie

bb.ie:                                            ; preds = %bb.id, %bb.ic
  %i.tf = call fastcc i32 @multi_done(ptr noundef nonnull %1, i32 noundef %.2.i, i1 noundef zeroext true) ; 0 uses
  br label %multi_follow.exit.thread85.i

bb.if:                                            ; preds = %bb.ib
  %.pre.i185 = load i32, ptr %i.bk, align 1
  %i.tg = and i32 %.pre.i185, 2
  %i.th = icmp eq i32 %i.tg, 0
  br i1 %i.th, label %bb.iq, label %bb.ig

bb.ig:                                            ; preds = %bb.if, %.thread101.i
  %.16081104.i = phi i1 [ true, %.thread101.i ], [ false, %bb.if ] ; 3 uses
  %i.ti = call zeroext i1 @Curl_cwriter_is_paused(ptr noundef nonnull %1) #13
  br i1 %i.ti, label %bb.iq, label %bb.ih

bb.ih:                                            ; preds = %bb.ig
  %i.tj = load ptr, ptr %i.bh, align 8, !tbaa !108
  %i.tk = getelementptr inbounds nuw i8, ptr %i.tj, i64 728
  %i.tl = load ptr, ptr %i.tk, align 8, !tbaa !132 ; 4 uses
  %i.tm = load ptr, ptr %i.bl, align 8, !tbaa !130
  %i.tn = icmp ne ptr %i.tm, null
  %or.cond5.i = or i1 %.16081104.i, %i.tn
  br i1 %or.cond5.i, label %bb.ii, label %bb.in

bb.ii:                                            ; preds = %bb.ih
  br i1 %.16081104.i, label %bb.ik, label %bb.ij

bb.ij:                                            ; preds = %bb.ii
  %i.to = load ptr, ptr @Curl_cfree, align 8, !tbaa !11
  %i.tp = load ptr, ptr %i.a, align 8, !tbaa !159
  call void %i.to(ptr noundef %i.tp) #13, !inline_history !226
  %i.tq = load ptr, ptr %i.bl, align 8, !tbaa !130
  store ptr %i.tq, ptr %i.a, align 8, !tbaa !159
  store ptr null, ptr %i.bl, align 8, !tbaa !130
  br label %bb.ik

bb.ik:                                            ; preds = %bb.ij, %bb.ii
  %.0.i186 = phi i32 [ 3, %bb.ij ], [ 2, %bb.ii ]
  %i.tr = call fastcc i32 @multi_done(ptr noundef nonnull %1, i32 noundef 0, i1 noundef zeroext false) ; 0 uses
  %i.ts = load ptr, ptr %i.a, align 8, !tbaa !159
  %.not.i.i187 = icmp eq ptr %i.tl, null
  br i1 %.not.i.i187, label %bb.im, label %bb.il

bb.il:                                            ; preds = %bb.ik
  %i.tt = getelementptr inbounds nuw i8, ptr %i.tl, i64 8
  %i.tu = load ptr, ptr %i.tt, align 8, !tbaa !135
  %i.tv = getelementptr inbounds nuw i8, ptr %i.tu, i64 128
  %i.tw = load ptr, ptr %i.tv, align 8, !tbaa !249 ; 2 uses
  %.not9.i.i188 = icmp eq ptr %i.tw, null
  br i1 %.not9.i.i188, label %bb.im, label %multi_follow.exit.i189

bb.im:                                            ; preds = %bb.il, %bb.ik
  br i1 %.16081104.i, label %multi_follow.exit.thread.i190, label %multi_follow.exit.thread85.i

multi_follow.exit.i189:                           ; preds = %bb.il
  %i.tx = call i32 %i.tw(ptr noundef nonnull %1, ptr noundef %i.ts, i32 noundef range(i32 1, 4) %.0.i186) #13, !inline_history !227 ; 2 uses
  %.not73.i = icmp eq i32 %i.tx, 0
  br i1 %.not73.i, label %multi_follow.exit.thread.i190, label %multi_follow.exit.thread85.i

multi_follow.exit.thread.i190:                    ; preds = %multi_follow.exit.i189, %bb.im
  call fastcc void @mstate(ptr noundef nonnull %1, i32 noundef 2)
  br label %multi_follow.exit.thread85.i

bb.in:                                            ; preds = %bb.ih
  %i.ty = load ptr, ptr %i.bm, align 8, !tbaa !131
  %.not70.i = icmp eq ptr %i.ty, null
  br i1 %.not70.i, label %.thread91.i, label %bb.io

bb.io:                                            ; preds = %bb.in
  %i.tz = load ptr, ptr @Curl_cfree, align 8, !tbaa !11
  %i.ua = load ptr, ptr %i.a, align 8, !tbaa !159
  call void %i.tz(ptr noundef %i.ua) #13, !inline_history !226
  %i.ub = load ptr, ptr %i.bm, align 8, !tbaa !131 ; 2 uses
  store ptr %i.ub, ptr %i.a, align 8, !tbaa !159
  store ptr null, ptr %i.bm, align 8, !tbaa !131
  %.not.i74.i = icmp eq ptr %i.tl, null
  br i1 %.not.i74.i, label %multi_follow.exit77.thread.i, label %bb.ip

bb.ip:                                            ; preds = %bb.io
  %i.uc = getelementptr inbounds nuw i8, ptr %i.tl, i64 8
  %i.ud = load ptr, ptr %i.uc, align 8, !tbaa !135
  %i.ue = getelementptr inbounds nuw i8, ptr %i.ud, i64 128
  %i.uf = load ptr, ptr %i.ue, align 8, !tbaa !249 ; 2 uses
  %.not9.i75.i = icmp eq ptr %i.uf, null
  br i1 %.not9.i75.i, label %multi_follow.exit77.thread.i, label %multi_follow.exit77.i

multi_follow.exit77.i:                            ; preds = %bb.ip
  %i.ug = call i32 %i.uf(ptr noundef nonnull %1, ptr noundef %i.ub, i32 noundef 1) #13, !inline_history !227 ; 2 uses
  %.not71.i = icmp eq i32 %i.ug, 0
  br i1 %.not71.i, label %.thread91.i, label %multi_follow.exit77.thread.i

multi_follow.exit77.thread.i:                     ; preds = %multi_follow.exit77.i, %bb.ip, %bb.io
  %.0.i7690.i = phi i32 [ %i.ug, %multi_follow.exit77.i ], [ 47, %bb.ip ], [ 47, %bb.io ]
  store i8 1, ptr %i.k, align 1, !tbaa !162
  %i.uh = call fastcc i32 @multi_done(ptr noundef nonnull %1, i32 noundef %.0.i7690.i, i1 noundef zeroext true) ; 2 uses
  %.not72.i = icmp eq i32 %i.uh, 0
  br i1 %.not72.i, label %.thread91.i, label %multi_follow.exit.thread85.i

.thread91.i:                                      ; preds = %multi_follow.exit77.thread.i, %multi_follow.exit77.i, %bb.in
  call fastcc void @mstate(ptr noundef nonnull %1, i32 noundef 13)
  br label %multi_follow.exit.thread85.i

bb.iq:                                            ; preds = %bb.ig, %bb.if
  %i.ui = call fastcc i32 @mspeed_check(ptr noundef nonnull %1) ; 0 uses
  br label %multi_follow.exit.thread85.i

multi_follow.exit.thread85.i:                     ; preds = %bb.iq, %.thread91.i, %multi_follow.exit77.thread.i, %multi_follow.exit.thread.i190, %multi_follow.exit.i189, %bb.im, %bb.ie
  %.258.i = phi i32 [ 0, %bb.ie ], [ 0, %bb.iq ], [ -1, %.thread91.i ], [ 0, %multi_follow.exit77.thread.i ], [ 0, %multi_follow.exit.i189 ], [ -1, %multi_follow.exit.thread.i190 ], [ 0, %bb.im ]
  %.5.i184 = phi i32 [ %.2.i, %bb.ie ], [ 0, %bb.iq ], [ 0, %.thread91.i ], [ %i.uh, %multi_follow.exit77.thread.i ], [ %i.tx, %multi_follow.exit.i189 ], [ 0, %multi_follow.exit.thread.i190 ], [ 47, %bb.im ]
  %i.uj = load ptr, ptr @Curl_cfree, align 8, !tbaa !11
  %i.uk = load ptr, ptr %i.a, align 8, !tbaa !159
  call void %i.uj(ptr noundef %i.uk) #13, !inline_history !226
  store i32 %.5.i184, ptr %i.j, align 4, !tbaa !41
  br label %multistate_performing.exit

multistate_performing.exit:                       ; preds = %bb.hy, %multi_follow.exit.thread85.i
  %.061.i = phi i32 [ %.258.i, %multi_follow.exit.thread85.i ], [ 0, %bb.hy ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %multistate_init.exitthread-pre-split

bb.ir:                                            ; preds = %._crit_edge
  %i.ul = load ptr, ptr %i.bh, align 8, !tbaa !108
  %.not.i192 = icmp eq ptr %i.ul, null
  br i1 %.not.i192, label %bb.iu, label %bb.is

bb.is:                                            ; preds = %bb.ir
  %i.um = load i32, ptr %i.j, align 4, !tbaa !41  ; 2 uses
  %i.un = call fastcc i32 @multi_done(ptr noundef nonnull %1, i32 noundef %i.um, i1 noundef zeroext false)
  %.not10.i = icmp eq i32 %i.um, 0
  br i1 %.not10.i, label %bb.it, label %bb.iu

bb.it:                                            ; preds = %bb.is
  store i32 %i.un, ptr %i.j, align 4, !tbaa !41
  br label %bb.iu

bb.iu:                                            ; preds = %bb.it, %bb.is, %bb.ir
  %i.uo = load i32, ptr %i.bi, align 4
  %i.up = and i32 %i.uo, 64
  %.not11.i = icmp eq i32 %i.up, 0
  br i1 %.not11.i, label %._crit_edge278, label %bb.iv

._crit_edge278:                                   ; preds = %bb.iu
  %.pre279 = load i32, ptr %i.bg, align 8, !tbaa !97
  br label %bb.jb

bb.iv:                                            ; preds = %bb.iu
  %i.uq = load ptr, ptr %i.bj, align 8, !tbaa !245
  %i.ur = getelementptr inbounds nuw i8, ptr %i.uq, i64 64
  %i.us = load i8, ptr %i.ur, align 8, !tbaa !248
  %.not12.i193 = icmp eq i8 %i.us, 7
  %.pre280 = load i32, ptr %i.bg, align 8, !tbaa !97 ; 2 uses
  br i1 %.not12.i193, label %bb.jb, label %bb.iw

bb.iw:                                            ; preds = %bb.iv
  %i.ut = icmp eq i32 %.pre280, 0
  br i1 %i.ut, label %.thread.thread, label %bb.ix

bb.ix:                                            ; preds = %bb.iw
  %i.uu = load i64, ptr %i.ap, align 1
  %i.uv = and i64 %i.uu, 536870912
  %.not19.i.i194 = icmp eq i64 %i.uv, 0
  br i1 %.not19.i.i194, label %.thread.thread.sink.split, label %bb.iy

bb.iy:                                            ; preds = %bb.ix
  %i.uw = load ptr, ptr %i.bf, align 8, !tbaa !105 ; 2 uses
  %.not20.i.i195 = icmp eq ptr %i.uw, null
  br i1 %.not20.i.i195, label %bb.ja, label %bb.iz

bb.iz:                                            ; preds = %bb.iy
  %i.ux = getelementptr inbounds nuw i8, ptr %i.uw, i64 8
  %i.uy = load i32, ptr %i.ux, align 8, !tbaa !107
  %i.uz = icmp sgt i32 %i.uy, 0
  %i.va = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_multi, i64 8), align 8
  %i.vb = icmp sgt i32 %i.va, 0
  %or.cond.i.i196 = select i1 %i.uz, i1 %i.vb, i1 false
  br i1 %or.cond.i.i196, label %.thread.thread.sink.split.sink.split, label %.thread.thread.sink.split

bb.ja:                                            ; preds = %bb.iy
  %.old.i.i198 = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_multi, i64 8), align 8, !tbaa !107
  %.old1.i.i199 = icmp sgt i32 %.old.i.i198, 0
  br i1 %.old1.i.i199, label %.thread.thread.sink.split.sink.split, label %.thread.thread.sink.split

bb.jb:                                            ; preds = %._crit_edge278, %bb.iv
  %i.vc = phi i32 [ %.pre279, %._crit_edge278 ], [ %.pre280, %bb.iv ] ; 2 uses
  %i.vd = icmp eq i32 %i.vc, 14
  br i1 %i.vd, label %.thread.thread265, label %bb.jc

.thread.thread265:                                ; preds = %bb.jb
  %i.ve = load i32, ptr %i.j, align 4, !tbaa !41
  br label %is_finished.exit

bb.jc:                                            ; preds = %bb.jb
  %i.vf = load i64, ptr %i.ap, align 1
  %i.vg = and i64 %i.vf, 536870912
  %.not19.i13.i = icmp eq i64 %i.vg, 0
  br i1 %.not19.i13.i, label %bb.jh, label %bb.jd

bb.jd:                                            ; preds = %bb.jc
  %i.vh = load ptr, ptr %i.bf, align 8, !tbaa !105 ; 2 uses
  %.not20.i14.i = icmp eq ptr %i.vh, null
  br i1 %.not20.i14.i, label %bb.jf, label %bb.je

bb.je:                                            ; preds = %bb.jd
  %i.vi = getelementptr inbounds nuw i8, ptr %i.vh, i64 8
  %i.vj = load i32, ptr %i.vi, align 8, !tbaa !107
  %i.vk = icmp sgt i32 %i.vj, 0
  %i.vl = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_multi, i64 8), align 8
  %i.vm = icmp sgt i32 %i.vl, 0
  %or.cond.i15.i = select i1 %i.vk, i1 %i.vm, i1 false
  br i1 %or.cond.i15.i, label %bb.jg, label %bb.jh

bb.jf:                                            ; preds = %bb.jd
  %.old.i16.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_multi, i64 8), align 8, !tbaa !107
  %.old1.i17.i = icmp sgt i32 %.old.i16.i, 0
  br i1 %.old1.i17.i, label %bb.jg, label %bb.jh

bb.jg:                                            ; preds = %bb.jf, %bb.je
  %i.vn = call ptr @Curl_trc_mstate_name(i32 noundef 14) #13
  call void (ptr, ptr, ...) @Curl_trc_multi(ptr noundef nonnull %1, ptr noundef nonnull @.str.33, ptr noundef %i.vn) #13
  br label %bb.jh

bb.jh:                                            ; preds = %bb.jg, %bb.jf, %bb.je, %bb.jc
  store i32 14, ptr %i.bg, align 8, !tbaa !97
  call void @mstate_enter_completed(ptr noundef nonnull %1, i32 noundef %i.vc) #13, !inline_history !230
  br label %multistate_init.exitthread-pre-split

multistate_init.exitthread-pre-split:             ; preds = %multistate_connect.exit, %multistate_connecting.exit, %multistate_protoconnect.exit, %multistate_protoconnecting.exit, %multistate_do.exit, %multistate_doing.exit, %multistate_doing_more.exit, %multistate_ratelimiting.exit, %multistate_performing.exit, %bb.z, %.thread.i, %mstate.exit.i, %bb.ar, %bb.hr, %bb.hs, %bb.jh
  %.065.ph = phi i32 [ -1, %bb.jh ], [ -1, %bb.hr ], [ -1, %mstate.exit.i ], [ %i.dc, %bb.z ], [ -1, %bb.hs ], [ %.061.i, %multistate_performing.exit ], [ %.0.i182, %multistate_ratelimiting.exit ], [ -1, %bb.ar ], [ %.0.i159, %multistate_doing_more.exit ], [ %.0.i147, %multistate_doing.exit ], [ %.470.i, %multistate_do.exit ], [ %.0.i126, %multistate_protoconnecting.exit ], [ %.0.i113, %multistate_protoconnect.exit ], [ %.0.i102, %multistate_connecting.exit ], [ %.021.i, %multistate_connect.exit ], [ 0, %.thread.i ]
  %.pr = load i32, ptr %i.bg, align 8, !tbaa !97
  br label %multistate_init.exit

multistate_init.exit:                             ; preds = %multistate_init.exitthread-pre-split, %._crit_edge, %._crit_edge, %._crit_edge
  %i.vo = phi i32 [ %.pr, %multistate_init.exitthread-pre-split ], [ %i.cp, %._crit_edge ], [ %i.cp, %._crit_edge ], [ %i.cp, %._crit_edge ] ; 3 uses
  %.065 = phi i32 [ %.065.ph, %multistate_init.exitthread-pre-split ], [ 0, %._crit_edge ], [ 0, %._crit_edge ], [ 0, %._crit_edge ] ; 4 uses
  %i.vp = icmp ugt i32 %i.vo, 2
  br i1 %i.vp, label %bb.ji, label %.thread.thread381

bb.ji:                                            ; preds = %multistate_init.exit
  %i.vq = icmp ult i32 %i.vo, 7
  %i.vr = icmp ne i32 %.065, -1
  %or.cond4 = select i1 %i.vq, i1 %i.vr, i1 false
  br i1 %or.cond4, label %multi_ischanged.exit202, label %.thread

multi_ischanged.exit202:                          ; preds = %bb.ji
  %i.vs = load i16, ptr %i.n, align 8
  %i.vt = and i16 %i.vs, 4
  %.not269 = icmp eq i16 %i.vt, 0
  br i1 %.not269, label %multi_ischanged.exit202.thread, label %.thread.thread381

multi_ischanged.exit202.thread:                   ; preds = %multi_ischanged.exit202
  %i.vu = call fastcc zeroext i1 @multi_handle_timeout(ptr noundef nonnull %1, ptr noundef %i.k, ptr noundef %i.j) ; 0 uses
  %.pr262.pre = load i32, ptr %i.bg, align 8, !tbaa !97
  br label %.thread

.thread.thread.sink.split.sink.split:             ; preds = %bb.iz, %bb.ja, %bb.hf, %bb.hg
  %.sink389 = phi i32 [ 11, %bb.hf ], [ 11, %bb.hg ], [ 0, %bb.ja ], [ 0, %bb.iz ] ; 2 uses
  %i.vv = call ptr @Curl_trc_mstate_name(i32 noundef %.sink389) #13
  call void (ptr, ptr, ...) @Curl_trc_multi(ptr noundef nonnull %1, ptr noundef nonnull @.str.33, ptr noundef %i.vv) #13
  br label %.thread.thread.sink.split

.thread.thread.sink.split:                        ; preds = %.thread.thread.sink.split.sink.split, %bb.ix, %bb.iz, %bb.ja, %bb.hd, %bb.hf, %bb.hg
  %.sink = phi i32 [ 11, %bb.hd ], [ 0, %bb.iz ], [ 11, %bb.hg ], [ 11, %bb.hf ], [ 0, %bb.ix ], [ 0, %bb.ja ], [ %.sink389, %.thread.thread.sink.split.sink.split ]
  store i32 %.sink, ptr %i.bg, align 8, !tbaa !97
  br label %.thread.thread

.thread.thread:                                   ; preds = %.thread.thread.sink.split, %bb.iw, %bb.hq, %bb.hk, %bb.hc, %bb.al
  %i.vw = load i32, ptr %i.j, align 4, !tbaa !41
  br label %bb.jj

.thread.thread381:                                ; preds = %multistate_init.exit, %multi_ischanged.exit202
  %i.vx = load i32, ptr %i.j, align 4, !tbaa !41
  br label %bb.jj

.thread:                                          ; preds = %bb.ji, %multi_ischanged.exit202.thread, %.thread377
  %.pr262 = phi i32 [ %.pr262.pre286, %.thread377 ], [ %i.vo, %bb.ji ], [ %.pr262.pre, %multi_ischanged.exit202.thread ]
  %.1.ph = phi i32 [ 0, %.thread377 ], [ %.065, %bb.ji ], [ %.065, %multi_ischanged.exit202.thread ] ; 2 uses
  %i.vy = load i32, ptr %i.j, align 4, !tbaa !41  ; 2 uses
  %i.vz = icmp ult i32 %.pr262, 14
  br i1 %i.vz, label %bb.jj, label %is_finished.exit

bb.jj:                                            ; preds = %.thread.thread381, %.thread.thread, %.thread
  %i.wa = phi i32 [ %i.vw, %.thread.thread ], [ %i.vy, %.thread ], [ %i.vx, %.thread.thread381 ] ; 4 uses
  %.1264 = phi i32 [ -1, %.thread.thread ], [ %.1.ph, %.thread ], [ %.065, %.thread.thread381 ]
  %.in = load i8, ptr %i.k, align 1, !tbaa !162, !range !236, !noundef !237
  %i.wb = trunc nuw i8 %.in to i1
  %.not.i205 = icmp eq i32 %i.wa, 0
  br i1 %.not.i205, label %bb.jy, label %bb.jk

bb.jk:                                            ; preds = %bb.jj
  call fastcc void @process_pending_handles(ptr noundef %0)
  %i.wc = load ptr, ptr %i.bh, align 8, !tbaa !108 ; 4 uses
  %.not33.i = icmp eq ptr %i.wc, null
  br i1 %.not33.i, label %bb.jp, label %bb.jl

bb.jl:                                            ; preds = %bb.jk
  br i1 %i.wb, label %bb.jm, label %thread-pre-split.i

bb.jm:                                            ; preds = %bb.jl
  %i.wd = icmp eq i32 %i.wa, 28
  %i.we = getelementptr inbounds nuw i8, ptr %i.wc, i64 776 ; 2 uses
  %i.wf = load i32, ptr %i.we, align 8, !tbaa !125 ; 2 uses
  %.not8.i.i = icmp eq i32 %i.wf, 0
  br i1 %.not8.i.i, label %Curl_detach_connection.exit.i, label %bb.jn

bb.jn:                                            ; preds = %bb.jm
  %i.wg = add i32 %i.wf, -1                       ; 2 uses
  store i32 %i.wg, ptr %i.we, align 8, !tbaa !125
  %.not9.i.i212 = icmp eq i32 %i.wg, 0
  br i1 %.not9.i.i212, label %bb.jo, label %Curl_detach_connection.exit.i

bb.jo:                                            ; preds = %bb.jn
  %i.wh = getelementptr inbounds nuw i8, ptr %i.wc, i64 760
  store ptr null, ptr %i.wh, align 8, !tbaa !126
  br label %Curl_detach_connection.exit.i

Curl_detach_connection.exit.i:                    ; preds = %bb.jo, %bb.jn, %bb.jm
  store ptr null, ptr %i.bh, align 8, !tbaa !108
  call void @Curl_conn_terminate(ptr noundef nonnull %1, ptr noundef nonnull %i.wc, i1 noundef zeroext %i.wd) #13
  br label %thread-pre-split.i

bb.jp:                                            ; preds = %bb.jk
  %i.wi = load i32, ptr %i.bg, align 8, !tbaa !97 ; 2 uses
  %i.wj = icmp eq i32 %i.wi, 3
  br i1 %i.wj, label %bb.jq, label %bb.jr

bb.jq:                                            ; preds = %bb.jp
  call void @Curl_pgrsUpdate_nometer(ptr noundef nonnull %1) #13
  br label %thread-pre-split.i

thread-pre-split.i:                               ; preds = %bb.jq, %Curl_detach_connection.exit.i, %bb.jl
  %.pr.i206 = load i32, ptr %i.bg, align 8, !tbaa !97
  br label %bb.jr

bb.jr:                                            ; preds = %thread-pre-split.i, %bb.jp
  %i.wk = phi i32 [ %.pr.i206, %thread-pre-split.i ], [ %i.wi, %bb.jp ] ; 2 uses
  %i.wl = icmp eq i32 %i.wk, 14
  br i1 %i.wl, label %.thread384thread-pre-split, label %bb.js

bb.js:                                            ; preds = %bb.jr
  %i.wm = load i64, ptr %i.ap, align 1
  %i.wn = and i64 %i.wm, 536870912
  %.not19.i.i207 = icmp eq i64 %i.wn, 0
  br i1 %.not19.i.i207, label %bb.jx, label %bb.jt

bb.jt:                                            ; preds = %bb.js
  %i.wo = load ptr, ptr %i.bf, align 8, !tbaa !105 ; 2 uses
  %.not20.i.i208 = icmp eq ptr %i.wo, null
  br i1 %.not20.i.i208, label %bb.jv, label %bb.ju

bb.ju:                                            ; preds = %bb.jt
  %i.wp = getelementptr inbounds nuw i8, ptr %i.wo, i64 8
  %i.wq = load i32, ptr %i.wp, align 8, !tbaa !107
  %i.wr = icmp sgt i32 %i.wq, 0
  %i.ws = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_multi, i64 8), align 8
  %i.wt = icmp sgt i32 %i.ws, 0
  %or.cond.i.i209 = select i1 %i.wr, i1 %i.wt, i1 false
  br i1 %or.cond.i.i209, label %bb.jw, label %bb.jx

bb.jv:                                            ; preds = %bb.jt
  %.old.i.i210 = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_multi, i64 8), align 8, !tbaa !107
  %.old1.i.i211 = icmp sgt i32 %.old.i.i210, 0
  br i1 %.old1.i.i211, label %bb.jw, label %bb.jx

bb.jw:                                            ; preds = %bb.jv, %bb.ju
  %i.wu = call ptr @Curl_trc_mstate_name(i32 noundef 14) #13
  call void (ptr, ptr, ...) @Curl_trc_multi(ptr noundef nonnull %1, ptr noundef nonnull @.str.33, ptr noundef %i.wu) #13
  br label %bb.jx

bb.jx:                                            ; preds = %bb.jw, %bb.jv, %bb.ju, %bb.js
  store i32 14, ptr %i.bg, align 8, !tbaa !97
  call void @mstate_enter_completed(ptr noundef nonnull %1, i32 noundef %i.wk) #13, !inline_history !230
  br label %.thread384thread-pre-split

bb.jy:                                            ; preds = %bb.jj
  %i.wv = load ptr, ptr %i.bh, align 8, !tbaa !108 ; 2 uses
  %.not31.i = icmp eq ptr %i.wv, null
  br i1 %.not31.i, label %is_finished.exit.thread253, label %bb.jz

bb.jz:                                            ; preds = %bb.jy
  %i.ww = call zeroext i1 @Curl_conn_is_connected(ptr noundef nonnull %i.wv, i32 noundef 0) #13
  br i1 %i.ww, label %bb.ka, label %is_finished.exit.thread253

bb.ka:                                            ; preds = %bb.jz
  %i.wx = call i32 @Curl_pgrsUpdate(ptr noundef nonnull %1) #13 ; 4 uses
  %.not32.i = icmp eq i32 %i.wx, 0
  br i1 %.not32.i, label %is_finished.exit.thread253, label %bb.kb

bb.kb:                                            ; preds = %bb.ka
  %i.wy = load ptr, ptr %i.bh, align 8, !tbaa !108
  call void @Curl_conncontrol(ptr noundef %i.wy, i32 noundef 2) #13
  %i.wz = load i32, ptr %i.bg, align 8, !tbaa !97 ; 4 uses
  %i.xa = icmp ult i32 %i.wz, 13
  %i.xb = select i1 %i.xa, i32 13, i32 14         ; 5 uses
  %i.xc = icmp eq i32 %i.wz, %i.xb
  br i1 %i.xc, label %.thread384, label %bb.kc

bb.kc:                                            ; preds = %bb.kb
  %i.xd = load i64, ptr %i.ap, align 1
  %i.xe = and i64 %i.xd, 536870912
  %.not19.i34.i = icmp eq i64 %i.xe, 0
  br i1 %.not19.i34.i, label %bb.kh, label %bb.kd

bb.kd:                                            ; preds = %bb.kc
  %i.xf = load ptr, ptr %i.bf, align 8, !tbaa !105 ; 2 uses
  %.not20.i35.i = icmp eq ptr %i.xf, null
  br i1 %.not20.i35.i, label %bb.kf, label %bb.ke

bb.ke:                                            ; preds = %bb.kd
  %i.xg = getelementptr inbounds nuw i8, ptr %i.xf, i64 8
  %i.xh = load i32, ptr %i.xg, align 8, !tbaa !107
  %i.xi = icmp sgt i32 %i.xh, 0
  %i.xj = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_multi, i64 8), align 8
  %i.xk = icmp sgt i32 %i.xj, 0
  %or.cond.i36.i = select i1 %i.xi, i1 %i.xk, i1 false
  br i1 %or.cond.i36.i, label %bb.kg, label %bb.kh

bb.kf:                                            ; preds = %bb.kd
  %.old.i37.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_multi, i64 8), align 8, !tbaa !107
  %.old1.i38.i = icmp sgt i32 %.old.i37.i, 0
  br i1 %.old1.i38.i, label %bb.kg, label %bb.kh

bb.kg:                                            ; preds = %bb.kf, %bb.ke
  %i.xl = call ptr @Curl_trc_mstate_name(i32 noundef range(i32 0, 16) %i.xb) #13
  call void (ptr, ptr, ...) @Curl_trc_multi(ptr noundef nonnull %1, ptr noundef nonnull @.str.33, ptr noundef %i.xl) #13
  br label %bb.kh

bb.kh:                                            ; preds = %bb.kg, %bb.kf, %bb.ke, %bb.kc
  store i32 %i.xb, ptr %i.bg, align 8, !tbaa !97
  %i.xm = zext nneg i32 %i.xb to i64              ; 2 uses
  %i.xn = shl nuw nsw i64 1, %i.xm
  %i.xo = and i64 %i.xn, 36864
  %.not21.not.i.i213 = icmp eq i64 %i.xo, 0
  br i1 %.not21.not.i.i213, label %bb.ki, label %.thread384

bb.ki:                                            ; preds = %bb.kh
  %i.xp = getelementptr inbounds nuw [8 x i8], ptr @mstate.state_enter, i64 %i.xm
  %i.xq = load ptr, ptr %i.xp, align 8, !tbaa !11
  call void %i.xq(ptr noundef nonnull %1, i32 noundef %i.wz) #13, !inline_history !228
  br label %.thread384thread-pre-split

is_finished.exit.thread253:                       ; preds = %bb.jy, %bb.ka, %bb.jz
  store i32 0, ptr %i.j, align 4, !tbaa !41
  br label %bb.kj

is_finished.exit:                                 ; preds = %.thread.thread265, %.thread
  %.1267 = phi i32 [ %.1.ph, %.thread ], [ -1, %.thread.thread265 ]
  %.0.i204 = phi i32 [ %i.vy, %.thread ], [ %i.ve, %.thread.thread265 ]
  %.0.i204.fr = freeze i32 %.0.i204               ; 3 uses
  store i32 %.0.i204.fr, ptr %i.j, align 4, !tbaa !41
  %.not77 = icmp eq i32 %.0.i204.fr, 0
  %spec.select = select i1 %.not77, i32 %.1267, i32 -1
  br label %bb.kj

bb.kj:                                            ; preds = %is_finished.exit, %is_finished.exit.thread253
  %i.xr = phi i32 [ 0, %is_finished.exit.thread253 ], [ %.0.i204.fr, %is_finished.exit ] ; 2 uses
  %i.xs = phi i32 [ %.1264, %is_finished.exit.thread253 ], [ %spec.select, %is_finished.exit ] ; 2 uses
  %i.xt = load i32, ptr %i.bg, align 8, !tbaa !97
  %i.xu = icmp eq i32 %i.xt, 14
  br i1 %i.xu, label %bb.kk, label %bb.ma

.thread384thread-pre-split:                       ; preds = %bb.jx, %bb.jr, %bb.ki
  %.0.i204.ph.ph = phi i32 [ %i.wa, %bb.jx ], [ %i.wa, %bb.jr ], [ %i.wx, %bb.ki ]
  %.pr386 = load i32, ptr %i.bg, align 8, !tbaa !97
  br label %.thread384

.thread384:                                       ; preds = %.thread384thread-pre-split, %bb.kh, %bb.kb
  %i.xv = phi i32 [ %.pr386, %.thread384thread-pre-split ], [ %i.xb, %bb.kh ], [ %i.wz, %bb.kb ]
  %.0.i204.ph = phi i32 [ %.0.i204.ph.ph, %.thread384thread-pre-split ], [ %i.wx, %bb.kh ], [ %i.wx, %bb.kb ] ; 2 uses
  store i32 %.0.i204.ph, ptr %i.j, align 4, !tbaa !41
  %i.xw = icmp eq i32 %i.xv, 14
  br i1 %i.xw, label %bb.kk, label %.thread385

.thread385:                                       ; preds = %.thread384
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #13
  br label %.critedge.backedge

.critedge.backedge:                               ; preds = %.thread385, %multi_ischanged.exit237, %bb.ma
  br label %.critedge

bb.kk:                                            ; preds = %.thread384, %bb.kj
  %i.xx = phi i32 [ %.0.i204.ph, %.thread384 ], [ %i.xr, %bb.kj ] ; 2 uses
  %i.xy = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 4 uses
  %i.xz = load i32, ptr %i.xy, align 4, !tbaa !129 ; 5 uses
  %.not.i214 = icmp eq i32 %i.xz, -1
  br i1 %.not.i214, label %bb.lj, label %bb.kl

bb.kl:                                            ; preds = %bb.kk
  %i.ya = load i64, ptr %i.ap, align 1
  %i.yb = and i64 %i.ya, 536870912
  %.not63.i = icmp eq i64 %i.yb, 0
  br i1 %.not63.i, label %bb.kq, label %bb.km

bb.km:                                            ; preds = %bb.kl
  %i.yc = load ptr, ptr %i.bf, align 8, !tbaa !105 ; 2 uses
  %.not64.i = icmp eq ptr %i.yc, null
  br i1 %.not64.i, label %bb.ko, label %bb.kn

bb.kn:                                            ; preds = %bb.km
  %i.yd = getelementptr inbounds nuw i8, ptr %i.yc, i64 8
  %i.ye = load i32, ptr %i.yd, align 8, !tbaa !107
  %i.yf = icmp sgt i32 %i.ye, 0
  %i.yg = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_multi, i64 8), align 8
  %i.yh = icmp sgt i32 %i.yg, 0
  %or.cond.i215 = select i1 %i.yf, i1 %i.yh, i1 false
  br i1 %or.cond.i215, label %bb.kp, label %bb.kq

bb.ko:                                            ; preds = %bb.km
  %.old.i231 = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_multi, i64 8), align 8, !tbaa !107
  %.old1.i232 = icmp sgt i32 %.old.i231, 0
  br i1 %.old1.i232, label %bb.kp, label %bb.kq

bb.kp:                                            ; preds = %bb.ko, %bb.kn
  call void (ptr, ptr, ...) @Curl_trc_multi(ptr noundef nonnull %1, ptr noundef nonnull @.str.51, i32 noundef %i.xz) #13
  %.pre.i230 = load i32, ptr %i.xy, align 4, !tbaa !129
  br label %bb.kq

bb.kq:                                            ; preds = %bb.kp, %bb.ko, %bb.kn, %bb.kl
  %i.yi = phi i32 [ %.pre.i230, %bb.kp ], [ %i.xz, %bb.ko ], [ %i.xz, %bb.kn ], [ %i.xz, %bb.kl ] ; 3 uses
  %i.yj = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.yk = call ptr @Curl_uint32_tbl_get(ptr noundef nonnull %i.yj, i32 noundef %i.yi) #13 ; 4 uses
  %.not.i.i216 = icmp eq ptr %i.yk, null
  br i1 %.not.i.i216, label %bb.ks, label %bb.kr

bb.kr:                                            ; preds = %bb.kq
  %i.yl = load i32, ptr %i.yk, align 8, !tbaa !98
  %i.ym = icmp eq i32 %i.yl, -1059136595
  br i1 %i.ym, label %Curl_multi_get_easy.exit.i, label %bb.ks

bb.ks:                                            ; preds = %bb.kr, %bb.kq
  %i.yn = load ptr, ptr %i.ai, align 8, !tbaa !42 ; 4 uses
  %.not17.i.i = icmp eq ptr %i.yn, null
  br i1 %.not17.i.i, label %bb.le, label %bb.kt

bb.kt:                                            ; preds = %bb.ks
  %i.yo = getelementptr inbounds nuw i8, ptr %i.yn, i64 2187
  %i.yp = load i64, ptr %i.yo, align 1
  %i.yq = and i64 %i.yp, 536870912
  %.not18.i.i = icmp eq i64 %i.yq, 0
  br i1 %.not18.i.i, label %bb.le, label %bb.ku

bb.ku:                                            ; preds = %bb.kt
  %i.yr = getelementptr inbounds nuw i8, ptr %i.yn, i64 4504
  %i.ys = load ptr, ptr %i.yr, align 8, !tbaa !105 ; 2 uses
  %.not19.i.i217 = icmp eq ptr %i.ys, null
  br i1 %.not19.i.i217, label %bb.kw, label %bb.kv

bb.kv:                                            ; preds = %bb.ku
  %i.yt = getelementptr inbounds nuw i8, ptr %i.ys, i64 8
  %i.yu = load i32, ptr %i.yt, align 8, !tbaa !107
  %i.yv = icmp sgt i32 %i.yu, 0
  %i.yw = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_multi, i64 8), align 8
  %i.yx = icmp sgt i32 %i.yw, 0
  %or.cond.i.i218 = select i1 %i.yv, i1 %i.yx, i1 false
  br i1 %or.cond.i.i218, label %bb.kx, label %bb.le

bb.kw:                                            ; preds = %bb.ku
  %.old.i.i226 = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_multi, i64 8), align 8, !tbaa !107
  %.old1.i.i227 = icmp sgt i32 %.old.i.i226, 0
  br i1 %.old1.i.i227, label %bb.kx, label %bb.le

bb.kx:                                            ; preds = %bb.kw, %bb.kv
  call void (ptr, ptr, ...) @Curl_trc_multi(ptr noundef nonnull %i.yn, ptr noundef nonnull @.str.31, i32 noundef %i.yi) #13
  br label %bb.le

Curl_multi_get_easy.exit.i:                       ; preds = %bb.kr
  %i.yy = getelementptr inbounds nuw i8, ptr %i.yk, i64 24
  %i.yz = load ptr, ptr %i.yy, align 8, !tbaa !252 ; 2 uses
  %.not68.i228 = icmp eq ptr %i.yz, null
  br i1 %.not68.i228, label %bb.kz, label %bb.ky

bb.ky:                                            ; preds = %Curl_multi_get_easy.exit.i
  call void %i.yz(ptr noundef nonnull %i.yk, ptr noundef nonnull %1, i32 noundef %i.xx) #13, !inline_history !229
  br label %bb.lo

bb.kz:                                            ; preds = %Curl_multi_get_easy.exit.i
  %i.za = load i64, ptr %i.ap, align 1
  %i.zb = and i64 %i.za, 536870912
  %.not69.i = icmp eq i64 %i.zb, 0
  br i1 %.not69.i, label %bb.lo, label %bb.la

bb.la:                                            ; preds = %bb.kz
  %i.zc = load ptr, ptr %i.bf, align 8, !tbaa !105 ; 2 uses
  %.not70.i229 = icmp eq ptr %i.zc, null
  br i1 %.not70.i229, label %bb.lc, label %bb.lb

bb.lb:                                            ; preds = %bb.la
  %i.zd = getelementptr inbounds nuw i8, ptr %i.zc, i64 8
  %i.ze = load i32, ptr %i.zd, align 8, !tbaa !107
  %i.zf = icmp sgt i32 %i.ze, 0
  %i.zg = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_multi, i64 8), align 8
  %i.zh = icmp sgt i32 %i.zg, 0
  %or.cond4.i = select i1 %i.zf, i1 %i.zh, i1 false
  br i1 %or.cond4.i, label %bb.ld, label %bb.lo

bb.lc:                                            ; preds = %bb.la
  %.old2.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_multi, i64 8), align 8, !tbaa !107
  %.old3.i = icmp sgt i32 %.old2.i, 0
  br i1 %.old3.i, label %bb.ld, label %bb.lo

bb.ld:                                            ; preds = %bb.lc, %bb.lb
  %i.zi = load i32, ptr %i.xy, align 4, !tbaa !129
  call void (ptr, ptr, ...) @Curl_trc_multi(ptr noundef nonnull %1, ptr noundef nonnull @.str.52, i32 noundef %i.zi) #13
  br label %bb.lo

bb.le:                                            ; preds = %bb.kx, %bb.kw, %bb.kv, %bb.kt, %bb.ks
  call void @Curl_uint32_tbl_remove(ptr noundef nonnull %i.yj, i32 noundef %i.yi) #13
  %i.zj = load i64, ptr %i.ap, align 1
  %i.zk = and i64 %i.zj, 536870912
  %.not66.i = icmp eq i64 %i.zk, 0
  br i1 %.not66.i, label %bb.lo, label %bb.lf

bb.lf:                                            ; preds = %bb.le
  %i.zl = load ptr, ptr %i.bf, align 8, !tbaa !105 ; 2 uses
  %.not67.i219 = icmp eq ptr %i.zl, null
  br i1 %.not67.i219, label %bb.lh, label %bb.lg

bb.lg:                                            ; preds = %bb.lf
  %i.zm = getelementptr inbounds nuw i8, ptr %i.zl, i64 8
  %i.zn = load i32, ptr %i.zm, align 8, !tbaa !107
  %i.zo = icmp sgt i32 %i.zn, 0
  %i.zp = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_multi, i64 8), align 8
  %i.zq = icmp sgt i32 %i.zp, 0
  %or.cond7.i = select i1 %i.zo, i1 %i.zq, i1 false
  br i1 %or.cond7.i, label %bb.li, label %bb.lo

bb.lh:                                            ; preds = %bb.lf
  %.old5.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_multi, i64 8), align 8, !tbaa !107
  %.old6.i = icmp sgt i32 %.old5.i, 0
  br i1 %.old6.i, label %bb.li, label %bb.lo

bb.li:                                            ; preds = %bb.lh, %bb.lg
  %i.zr = load i32, ptr %i.xy, align 4, !tbaa !129
  call void (ptr, ptr, ...) @Curl_trc_multi(ptr noundef nonnull %1, ptr noundef nonnull @.str.53, i32 noundef %i.zr) #13
  br label %bb.lo

bb.lj:                                            ; preds = %bb.kk
  %i.zs = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.zt = getelementptr inbounds nuw i8, ptr %1, i64 80
  store i32 1, ptr %i.zt, align 8, !tbaa !253
  %i.zu = getelementptr inbounds nuw i8, ptr %1, i64 88
  store ptr %1, ptr %i.zu, align 8, !tbaa !128
  %i.zv = getelementptr inbounds nuw i8, ptr %1, i64 96
  store i32 %i.xx, ptr %i.zv, align 8, !tbaa !100
  %i.zw = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.zx = call i64 @Curl_llist_count(ptr noundef nonnull %i.zw) #13
  %.not.i74.i233 = icmp eq i64 %i.zx, 0
  br i1 %.not.i74.i233, label %bb.lk, label %multi_addmsg.exit.i

bb.lk:                                            ; preds = %bb.lj
  %i.zy = load ptr, ptr %i.ai, align 8, !tbaa !42 ; 3 uses
  %.not9.i.i234 = icmp eq ptr %i.zy, null
  br i1 %.not9.i.i234, label %multi_addmsg.exit.i, label %bb.ll

bb.ll:                                            ; preds = %bb.lk
  %i.zz = getelementptr inbounds nuw i8, ptr %i.zy, i64 104
  %i.aaa = load ptr, ptr %i.zz, align 8, !tbaa !94 ; 2 uses
  %.not10.i.i = icmp eq ptr %i.aaa, null
  br i1 %.not10.i.i, label %multi_addmsg.exit.i, label %bb.lm

bb.lm:                                            ; preds = %bb.ll
  %i.aab = getelementptr inbounds nuw i8, ptr %i.aaa, i64 400
  %i.aac = load ptr, ptr %i.aab, align 8, !tbaa !156
  %.not11.i.i = icmp eq ptr %i.aac, null
  br i1 %.not11.i.i, label %multi_addmsg.exit.i, label %bb.ln

bb.ln:                                            ; preds = %bb.lm
  call void @Curl_mntfy_add(ptr noundef nonnull %i.zy, i32 noundef 0) #13
  br label %multi_addmsg.exit.i

multi_addmsg.exit.i:                              ; preds = %bb.ln, %bb.lm, %bb.ll, %bb.lk, %bb.lj
  call void @Curl_llist_append(ptr noundef nonnull %i.zw, ptr noundef nonnull %i.zs, ptr noundef nonnull %i.zs) #13
  br label %bb.lo

bb.lo:                                            ; preds = %multi_addmsg.exit.i, %bb.li, %bb.lh, %bb.lg, %bb.le, %bb.ld, %bb.lc, %bb.lb, %bb.kz, %bb.ky
  %i.aad = load i32, ptr %i.bg, align 8, !tbaa !97
  %i.aae = icmp eq i32 %i.aad, 15
  br i1 %i.aae, label %mstate.exit.i221, label %bb.lp

bb.lp:                                            ; preds = %bb.lo
  %i.aaf = load i64, ptr %i.ap, align 1
  %i.aag = and i64 %i.aaf, 536870912
  %.not19.i75.i = icmp eq i64 %i.aag, 0
  br i1 %.not19.i75.i, label %bb.lu, label %bb.lq

bb.lq:                                            ; preds = %bb.lp
  %i.aah = load ptr, ptr %i.bf, align 8, !tbaa !105 ; 2 uses
  %.not20.i.i220 = icmp eq ptr %i.aah, null
  br i1 %.not20.i.i220, label %bb.ls, label %bb.lr

bb.lr:                                            ; preds = %bb.lq
  %i.aai = getelementptr inbounds nuw i8, ptr %i.aah, i64 8
  %i.aaj = load i32, ptr %i.aai, align 8, !tbaa !107
  %i.aak = icmp sgt i32 %i.aaj, 0
  %i.aal = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_multi, i64 8), align 8
  %i.aam = icmp sgt i32 %i.aal, 0
  %or.cond.i76.i = select i1 %i.aak, i1 %i.aam, i1 false
  br i1 %or.cond.i76.i, label %bb.lt, label %bb.lu

bb.ls:                                            ; preds = %bb.lq
  %.old.i77.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_multi, i64 8), align 8, !tbaa !107
  %.old1.i78.i = icmp sgt i32 %.old.i77.i, 0
  br i1 %.old1.i78.i, label %bb.lt, label %bb.lu

bb.lt:                                            ; preds = %bb.ls, %bb.lr
  %i.aan = call ptr @Curl_trc_mstate_name(i32 noundef 15) #13
  call void (ptr, ptr, ...) @Curl_trc_multi(ptr noundef nonnull %1, ptr noundef nonnull @.str.33, ptr noundef %i.aan) #13
  br label %bb.lu

bb.lu:                                            ; preds = %bb.lt, %bb.ls, %bb.lr, %bb.lp
  store i32 15, ptr %i.bg, align 8, !tbaa !97
  br label %mstate.exit.i221

mstate.exit.i221:                                 ; preds = %bb.lu, %bb.lo
  %i.aao = load i32, ptr %i.ag, align 8, !tbaa !95
  call void @Curl_uint32_bset_remove(ptr noundef nonnull %i.bv, i32 noundef %i.aao) #13
  %i.aap = load i32, ptr %i.ag, align 8, !tbaa !95
  call void @Curl_uint32_bset_remove(ptr noundef nonnull %i.af, i32 noundef %i.aap) #13
  %i.aaq = load i32, ptr %i.ag, align 8, !tbaa !95
  call void @Curl_uint32_bset_remove(ptr noundef nonnull %i.bw, i32 noundef %i.aaq) #13
  %i.aar = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.aas = load i32, ptr %i.ag, align 8, !tbaa !95
  %i.aat = call zeroext i1 @Curl_uint32_bset_add(ptr noundef nonnull %i.aar, i32 noundef %i.aas) #13 ; 0 uses
  %i.aau = load i32, ptr %i.bi, align 4           ; 2 uses
  %i.aav = and i32 %i.aau, 1
  %.not71.i222 = icmp eq i32 %i.aav, 0
  br i1 %.not71.i222, label %multi_assess_wakeup.exit.i224, label %bb.lv

bb.lv:                                            ; preds = %mstate.exit.i221
  %i.aaw = and i32 %i.aau, -2
  store i32 %i.aaw, ptr %i.bi, align 4
  %i.aax = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.aay = load i32, ptr %i.aax, align 8, !tbaa !118
  %i.aaz = add i32 %i.aay, -1                     ; 2 uses
  store i32 %i.aaz, ptr %i.aax, align 8, !tbaa !118
  %.not72.i223 = icmp eq i32 %i.aaz, 0
  br i1 %.not72.i223, label %bb.lw, label %multi_assess_wakeup.exit.i224

bb.lw:                                            ; preds = %bb.lv
  %i.aba = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.abb = load ptr, ptr %i.aba, align 8, !tbaa !119
  %.not.i79.i = icmp eq ptr %i.abb, null
  br i1 %.not.i79.i, label %multi_assess_wakeup.exit.i224, label %bb.lx

bb.lx:                                            ; preds = %bb.lw
  %i.abc = load ptr, ptr %i.ai, align 8, !tbaa !42
  %i.abd = call i32 @Curl_multi_ev_assess_xfer(ptr noundef nonnull %0, ptr noundef %i.abc) #13 ; 0 uses
  br label %multi_assess_wakeup.exit.i224

multi_assess_wakeup.exit.i224:                    ; preds = %bb.lx, %bb.lw, %bb.lv, %mstate.exit.i221
  %i.abe = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.abf = load i32, ptr %i.abe, align 4, !tbaa !102
  %i.abg = add i32 %i.abf, -1                     ; 2 uses
  store i32 %i.abg, ptr %i.abe, align 4, !tbaa !102
  %.not73.i225 = icmp eq i32 %i.abg, 0
  br i1 %.not73.i225, label %bb.ly, label %handle_completed.exit.thread

bb.ly:                                            ; preds = %multi_assess_wakeup.exit.i224
  %i.abh = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.abi = load ptr, ptr %i.abh, align 8, !tbaa !119
  %.not.i81.i = icmp eq ptr %i.abi, null
  br i1 %.not.i81.i, label %handle_completed.exit.thread, label %bb.lz

bb.lz:                                            ; preds = %bb.ly
  %i.abj = load ptr, ptr %i.ai, align 8, !tbaa !42
  %i.abk = call i32 @Curl_multi_ev_assess_xfer(ptr noundef nonnull %0, ptr noundef %i.abj) #13 ; 0 uses
  br label %handle_completed.exit.thread

handle_completed.exit.thread:                     ; preds = %._crit_edge, %bb.u, %multi_assess_wakeup.exit.i224, %bb.ly, %bb.lz
  %.167.ph = phi i32 [ 0, %bb.lz ], [ 0, %bb.ly ], [ 0, %multi_assess_wakeup.exit.i224 ], [ 4, %bb.u ], [ 4, %._crit_edge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #13
  br label %bb.mb

bb.ma:                                            ; preds = %bb.kj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #13
  %i.abl = icmp eq i32 %i.xs, -1
  br i1 %i.abl, label %.critedge.backedge, label %multi_ischanged.exit237

multi_ischanged.exit237:                          ; preds = %bb.ma
  %i.abm = load i16, ptr %i.n, align 8
  %i.abn = and i16 %i.abm, 4
  %.not270 = icmp eq i16 %i.abn, 0
  br i1 %.not270, label %multi_ischanged.exit237.thread, label %.critedge.backedge

multi_ischanged.exit237.thread:                   ; preds = %multi_ischanged.exit237
  %i.abo = getelementptr inbounds nuw i8, ptr %1, i64 44
  store i32 %i.xr, ptr %i.abo, align 4, !tbaa !117
  br label %bb.mb

bb.mb:                                            ; preds = %handle_completed.exit.thread, %bb.a, %multi_ischanged.exit237.thread, %bb.j
  %.268 = phi i32 [ 0, %bb.j ], [ %i.xs, %multi_ischanged.exit237.thread ], [ %.167.ph, %handle_completed.exit.thread ], [ 2, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #13
  ret i32 %.268
}

declare i32 @Curl_mntfy_dispatch_all(ptr noundef) local_unnamed_addr #2

declare ptr @Curl_splaygetbest(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @Curl_splayget(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @add_next_timeout(ptr noundef %0, ptr nofree noundef captures(none) %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 3136 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 3208 ; 2 uses
  %i.c = tail call ptr @Curl_llist_head(ptr noundef nonnull %i.b) #13 ; 2 uses
  %.not27 = icmp eq ptr %i.c, null
  br i1 %.not27, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.02228 = phi ptr [ %i.d, %bb.b ], [ %i.c, %bb.a ] ; 3 uses
  %i.d = tail call ptr @Curl_node_next(ptr noundef nonnull %.02228) #13 ; 2 uses
  %i.e = tail call ptr @Curl_node_elem(ptr noundef nonnull %.02228) #13
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = tail call i64 @curlx_ptimediff_us(ptr noundef nonnull %i.f, ptr noundef %0) #13
  %i.h = icmp slt i64 %i.g, 1
  br i1 %i.h, label %bb.b, label %.thread

bb.b:                                             ; preds = %.lr.ph
  tail call void @Curl_node_remove(ptr noundef nonnull %.02228) #13
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %.thread, label %.lr.ph

.thread:                                          ; preds = %bb.b, %.lr.ph, %bb.a
  %i.i = tail call ptr @Curl_llist_head(ptr noundef nonnull %i.b) #13 ; 2 uses
  %.not24 = icmp eq ptr %i.i, null
  br i1 %.not24, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.thread
  store i64 0, ptr %i.a, align 8, !tbaa !137
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 3144
  store i32 0, ptr %i.j, align 8, !tbaa !138
  br label %bb.e

bb.d:                                             ; preds = %.thread
  %i.k = tail call ptr @Curl_node_elem(ptr noundef nonnull %i.i) #13
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %i.l, i64 16, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 296 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !139
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 3152
  %i.p = tail call ptr @Curl_splayinsert(ptr noundef nonnull %i.a, ptr noundef %i.n, ptr noundef nonnull %i.o) #13
  store ptr %i.p, ptr %i.m, align 8, !tbaa !139
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef zeroext i1 @multi_handle_timeout(ptr noundef %0, ptr nofree noundef nonnull writeonly captures(none) %1, ptr nofree noundef nonnull captures(none) %2) unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.curltime, align 8           ; 6 uses
  %i.a = tail call i64 @Curl_timeleft_ms(ptr noundef %0) #13
  %i.b = icmp slt i64 %i.a, 0                     ; 2 uses
  br i1 %i.b, label %bb.b, label %bb.m

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !97   ; 2 uses
  %i.e = icmp ult i32 %i.d, 7
  br i1 %i.e, label %bb.c, label %.thread

.thread:                                          ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 2584
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.f, i64 16, i1 false), !tbaa.struct !115
  br label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 2568
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.g, i64 16, i1 false), !tbaa.struct !115
  %i.h = icmp eq i32 %i.d, 4
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !108
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 720
  %i.l = load i32, ptr %i.k, align 8
end_hunk_1
