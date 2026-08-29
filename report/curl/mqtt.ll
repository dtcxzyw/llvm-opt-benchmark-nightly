Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/curl/original/mqtt?download=true
inline.NumInlined: 26
inline.NumDeleted: 13
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@mqtt_send:bb.a
bb.f:                                             ; preds = %bb.d
  %i.k = load i64, ptr %i.a, align 8, !tbaa !13
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 %i.k
  %i.m = call i32 @curlx_dyn_addn(ptr noundef nonnull %i.b, ptr noundef %i.l, i64 noundef %i.h) #6
  br label %bb.h

bb.g:                                             ; preds = %bb.c
  call void @curlx_dyn_reset(ptr noundef nonnull %i.b) #6
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.b, %bb.a
  %.021 = phi i32 [ 2, %bb.a ], [ %i.c, %bb.b ], [ 0, %bb.g ], [ %i.j, %bb.e ], [ %i.m, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret i32 %.021
}

declare void @Curl_creds_unlink(ptr noundef) local_unnamed_addr #2

declare i32 @Curl_xfer_send(ptr noundef, ptr noundef, i64 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

declare void @Curl_debug(ptr noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i64 @curlx_dyn_len(ptr noundef) local_unnamed_addr #2

declare i32 @curlx_dyn_tail(ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @curlx_dyn_addn(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @curlx_dyn_reset(ptr noundef) local_unnamed_addr #2

declare ptr @Curl_conn_meta_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @Curl_conn_connect(ptr noundef, i32 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

declare void @Curl_conncontrol(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @curlx_dyn_ptr(ptr noundef) local_unnamed_addr #2

declare i32 @Curl_xfer_recv(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef zeroext i1 @mqtt_decode_len(ptr nofree noundef nonnull writeonly captures(none) %0, ptr nofree noundef nonnull readonly captures(none) %1, i64 noundef %2) unnamed_addr #4 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.a = load i8, ptr %1, align 1, !tbaa !81      ; 2 uses
  %i.b = and i8 %i.a, 127
  %i.c = zext nneg i8 %i.b to i64                 ; 2 uses
  %i.d = icmp ne i64 %2, 1
  %i.e = icmp slt i8 %i.a, 0                      ; 2 uses
  %i.f = select i1 %i.d, i1 %i.e, i1 false
  br i1 %i.f, label %.lr.ph.1, label %._crit_edge

.lr.ph.1:                                         ; preds = %.lr.ph.preheader
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.h = load i8, ptr %i.g, align 1, !tbaa !81    ; 2 uses
  %i.i = and i8 %i.h, 127
  %i.j = zext nneg i8 %i.i to i64
  %i.k = shl nuw nsw i64 %i.j, 7
  %i.l = or disjoint i64 %i.k, %i.c               ; 2 uses
  %i.m = icmp ugt i64 %2, 2
  %i.n = icmp slt i8 %i.h, 0                      ; 2 uses
  %i.o = select i1 %i.m, i1 %i.n, i1 false
  br i1 %i.o, label %.lr.ph.2, label %._crit_edge

.lr.ph.2:                                         ; preds = %.lr.ph.1
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.q = load i8, ptr %i.p, align 1, !tbaa !81    ; 2 uses
  %i.r = and i8 %i.q, 127
  %i.s = zext nneg i8 %i.r to i64
  %i.t = shl nuw nsw i64 %i.s, 14
  %i.u = or disjoint i64 %i.t, %i.l               ; 2 uses
  %i.v = icmp ugt i64 %2, 3
  %i.w = icmp slt i8 %i.q, 0                      ; 2 uses
  %i.x = select i1 %i.v, i1 %i.w, i1 false
  br i1 %i.x, label %.lr.ph.3, label %._crit_edge

.lr.ph.3:                                         ; preds = %.lr.ph.2
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.z = load i8, ptr %i.y, align 1, !tbaa !81    ; 2 uses
  %i.aa = and i8 %i.z, 127
  %i.ab = zext nneg i8 %i.aa to i64
  %i.ac = shl nuw nsw i64 %i.ab, 21
  %i.ad = or disjoint i64 %i.ac, %i.u
  %i.ae = icmp ugt i64 %2, 4
  %i.af = icmp slt i8 %i.z, 0                     ; 2 uses
  %i.ag = select i1 %i.ae, i1 %i.af, i1 false
  br i1 %i.ag, label %.loopexit, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.3, %.lr.ph.2, %.lr.ph.1, %.lr.ph.preheader
  %.lcssa24 = phi i64 [ %i.c, %.lr.ph.preheader ], [ %i.l, %.lr.ph.1 ], [ %i.u, %.lr.ph.2 ], [ %i.ad, %.lr.ph.3 ]
  %.lcssa = phi i1 [ %i.e, %.lr.ph.preheader ], [ %i.n, %.lr.ph.1 ], [ %i.w, %.lr.ph.2 ], [ %i.af, %.lr.ph.3 ]
  br i1 %.lcssa, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  store i64 %.lcssa24, ptr %0, align 8, !tbaa !13
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.3, %bb.a, %._crit_edge, %bb.b
  %.017 = phi i1 [ false, %bb.b ], [ true, %._crit_edge ], [ true, %bb.a ], [ true, %.lr.ph.3 ]
  ret i1 %.017
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @mqtt_verify_connack(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [1024 x i8], align 16             ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = tail call ptr @Curl_meta_get(ptr noundef %0, ptr noundef nonnull @.str.1) #6 ; 3 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %mqtt_recv_atleast.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.e = load i64, ptr %i.d, align 8, !tbaa !96   ; 2 uses
  %.not21 = icmp eq i64 %i.e, 2
  br i1 %.not21, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ptr, ...) @Curl_failf(ptr noundef %0, ptr noundef nonnull @.str.16, i64 noundef %i.e) #6
  br label %mqtt_recv_atleast.exit.thread

bb.d:                                             ; preds = %bb.b
  %i.f = tail call ptr @Curl_meta_get(ptr noundef %0, ptr noundef nonnull @.str.1) #6 ; 2 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %mqtt_recv_atleast.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32 ; 3 uses
  %i.h = tail call i64 @curlx_dyn_len(ptr noundef nonnull %i.g) #6 ; 2 uses
  %i.i = icmp ult i64 %i.h, 2
  br i1 %i.i, label %bb.f, label %mqtt_recv_atleast.exit

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  %i.j = sub nuw nsw i64 2, %i.h
  %i.k = call i32 @Curl_xfer_recv(ptr noundef %0, ptr noundef nonnull %i.a, i64 noundef %i.j, ptr noundef nonnull %i.b) #6 ; 2 uses
  %.not24.i = icmp eq i32 %i.k, 0
  br i1 %.not24.i, label %bb.g, label %.thread.i

bb.g:                                             ; preds = %bb.f
  %i.l = load i64, ptr %i.b, align 8, !tbaa !13   ; 2 uses
  %.not25.i = icmp eq i64 %i.l, 0
  br i1 %.not25.i, label %.thread.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = call i32 @curlx_dyn_addn(ptr noundef nonnull %i.g, ptr noundef nonnull %i.a, i64 noundef %i.l) #6
  %.not26.i = icmp eq i32 %i.m, 0
  br i1 %.not26.i, label %bb.i, label %.thread.i

.thread.i:                                        ; preds = %bb.h, %bb.g, %bb.f
  %.016.ph.i = phi i32 [ 27, %bb.h ], [ 56, %bb.g ], [ %i.k, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %mqtt_recv_atleast.exit.thread

bb.i:                                             ; preds = %bb.h
  %i.n = call i64 @curlx_dyn_len(ptr noundef nonnull %i.g) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  %i.o = icmp ult i64 %i.n, 2
  br i1 %i.o, label %mqtt_recv_atleast.exit.thread, label %mqtt_recv_atleast.exit

mqtt_recv_atleast.exit:                           ; preds = %bb.e, %bb.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  %i.q = call ptr @curlx_dyn_ptr(ptr noundef nonnull %i.p) #6 ; 3 uses
  call void @Curl_debug(ptr noundef %0, i32 noundef 1, ptr noundef %i.q, i64 noundef 2) #6
  %i.r = load i8, ptr %i.q, align 1, !tbaa !81    ; 2 uses
  %.not23 = icmp eq i8 %i.r, 0
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 1
  %i.t = load i8, ptr %i.s, align 1, !tbaa !81    ; 2 uses
  %.not24 = icmp eq i8 %i.t, 0
  %or.cond = select i1 %.not23, i1 %.not24, i1 false
  br i1 %or.cond, label %bb.j, label %mqtt_recv_atleast.exit._crit_edge

mqtt_recv_atleast.exit._crit_edge:                ; preds = %mqtt_recv_atleast.exit
  %i.u = zext i8 %i.r to i32
  %i.v = zext i8 %i.t to i32
  call void (ptr, ptr, ...) @Curl_failf(ptr noundef %0, ptr noundef nonnull @.str.17, i32 noundef 0, i32 noundef 0, i32 noundef %i.u, i32 noundef %i.v) #6
  call void @curlx_dyn_reset(ptr noundef nonnull %i.p) #6
  br label %mqtt_recv_atleast.exit.thread

bb.j:                                             ; preds = %mqtt_recv_atleast.exit
  call fastcc void @mqtt_recv_consume(ptr noundef %0, i64 noundef 2)
  br label %mqtt_recv_atleast.exit.thread

mqtt_recv_atleast.exit.thread:                    ; preds = %bb.i, %.thread.i, %bb.d, %bb.a, %bb.j, %mqtt_recv_atleast.exit._crit_edge, %bb.c
  %.0 = phi i32 [ 8, %bb.c ], [ 2, %bb.a ], [ 8, %mqtt_recv_atleast.exit._crit_edge ], [ 0, %bb.j ], [ 2, %bb.d ], [ %.016.ph.i, %.thread.i ], [ 81, %bb.i ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @mqtt_publish(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 7 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 8 uses
  %1 = alloca [4 x i8], align 1                   ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !102  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store ptr null, ptr %i.b, align 8, !tbaa !103
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.g = load i64, ptr %i.f, align 8, !tbaa !104  ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = call zeroext i1 @curlx_sotouz_fits(i64 noundef %i.g, ptr noundef nonnull %i.a) #6
  br i1 %i.h, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = icmp sgt i64 %i.g, 0
  br i1 %i.i, label %bb.j, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.e) #7
  store i64 %i.j, ptr %i.a, align 8, !tbaa !13
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 4232
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !105  ; 2 uses
  %i.m = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.l) #7
  %i.n = icmp ugt i64 %i.m, 1
  br i1 %i.n, label %bb.f, label %.sink.split.i

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  %i.p = call i32 @Curl_urldecode(ptr noundef nonnull %i.o, i64 noundef 0, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, i32 noundef 2) #6 ; 2 uses
  %.not.i = icmp eq i32 %i.p, 0
  br i1 %.not.i, label %bb.g, label %mqtt_get_topic.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.q = load i64, ptr %i.c, align 8, !tbaa !13   ; 2 uses
  %i.r = icmp ugt i64 %i.q, 65535
  br i1 %i.r, label %.sink.split.i, label %mqtt_get_topic.exit

.sink.split.i:                                    ; preds = %bb.g, %bb.e
  %.str.18.sink.i = phi ptr [ @.str.18, %bb.g ], [ @.str.19, %bb.e ]
  call void (ptr, ptr, ...) @Curl_failf(ptr noundef nonnull %0, ptr noundef nonnull %.str.18.sink.i) #6
  br label %mqtt_get_topic.exit.thread

mqtt_get_topic.exit:                              ; preds = %bb.g
  %i.s = load i64, ptr %i.a, align 8, !tbaa !13
  %i.t = add i64 %i.s, 2
  %i.u = add i64 %i.t, %i.q                       ; 8 uses
  %.not14.i = icmp eq i64 %i.u, 0
  br i1 %.not14.i, label %mqtt_encode_len.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %mqtt_get_topic.exit
  %i.v = trunc i64 %i.u to i8
  %i.w = and i8 %i.v, 127
  %i.x = lshr i64 %i.u, 7                         ; 3 uses
  %.not.i45 = icmp eq i64 %i.x, 0
  %masksel.i = select i1 %.not.i45, i8 0, i8 -128
  %.0.i46 = or disjoint i8 %masksel.i, %i.w
  store i8 %.0.i46, ptr %1, align 1, !tbaa !81
  %.not57 = icmp eq i64 %i.x, 0
  br i1 %.not57, label %mqtt_encode_len.exit, label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %.lr.ph.i
  %i.y = trunc i64 %i.x to i8
  %i.z = and i8 %i.y, 127
  %i.aa = lshr i64 %i.u, 14                       ; 3 uses
  %.not.i45.1 = icmp eq i64 %i.aa, 0
  %masksel.i.1 = select i1 %.not.i45.1, i8 0, i8 -128
  %.0.i46.1 = or disjoint i8 %masksel.i.1, %i.z
  %.sroa.0.1..sroa_idx54 = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 %.0.i46.1, ptr %.sroa.0.1..sroa_idx54, align 1, !tbaa !81
  %.not58 = icmp eq i64 %i.aa, 0
  br i1 %.not58, label %mqtt_encode_len.exit, label %.lr.ph.i.2

.lr.ph.i.2:                                       ; preds = %.lr.ph.i.1
  %i.ab = trunc i64 %i.aa to i8
  %i.ac = and i8 %i.ab, 127
  %i.ad = lshr i64 %i.u, 21                       ; 3 uses
  %.not.i45.2 = icmp eq i64 %i.ad, 0
  %masksel.i.2 = select i1 %.not.i45.2, i8 0, i8 -128
  %.0.i46.2 = or disjoint i8 %masksel.i.2, %i.ac
  %.sroa.0.2..sroa_idx55 = getelementptr inbounds nuw i8, ptr %1, i64 2
  store i8 %.0.i46.2, ptr %.sroa.0.2..sroa_idx55, align 1, !tbaa !81
  %.not59 = icmp eq i64 %i.ad, 0
  br i1 %.not59, label %mqtt_encode_len.exit, label %.lr.ph.i.3

.lr.ph.i.3:                                       ; preds = %.lr.ph.i.2
  %i.ae = trunc i64 %i.ad to i8
  %i.af = and i8 %i.ae, 127
  %.not.i45.3 = icmp ult i64 %i.u, 268435456
  %masksel.i.3 = select i1 %.not.i45.3, i8 0, i8 -128
  %.0.i46.3 = or disjoint i8 %masksel.i.3, %i.af
  %.sroa.0.3..sroa_idx56 = getelementptr inbounds nuw i8, ptr %1, i64 3
  store i8 %.0.i46.3, ptr %.sroa.0.3..sroa_idx56, align 1, !tbaa !81
  br label %mqtt_encode_len.exit

mqtt_encode_len.exit:                             ; preds = %.lr.ph.i, %.lr.ph.i.1, %.lr.ph.i.2, %.lr.ph.i.3, %mqtt_get_topic.exit
  %.010.lcssa.i = phi i64 [ 0, %mqtt_get_topic.exit ], [ 1, %.lr.ph.i ], [ 2, %.lr.ph.i.1 ], [ 3, %.lr.ph.i.2 ], [ 4, %.lr.ph.i.3 ] ; 5 uses
  %i.ag = sub nuw nsw i64 268435454, %.010.lcssa.i
  %i.ah = icmp ugt i64 %i.u, %i.ag
  br i1 %i.ah, label %mqtt_get_topic.exit.thread, label %bb.h

bb.h:                                             ; preds = %mqtt_encode_len.exit
  %i.ai = load ptr, ptr @Curl_cmalloc, align 8, !tbaa !8
  %i.aj = add nuw nsw i64 %i.u, 1
  %i.ak = add nuw nsw i64 %i.aj, %.010.lcssa.i
  %i.al = call ptr %i.ai(i64 noundef %i.ak) #6    ; 8 uses
  %.not44 = icmp eq ptr %i.al, null
  br i1 %.not44, label %mqtt_get_topic.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i8 48, ptr %i.al, align 1, !tbaa !81
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.am, ptr nonnull align 1 %1, i64 %.010.lcssa.i, i1 false)
  %i.an = load i64, ptr %i.c, align 8, !tbaa !13
  %i.ao = lshr i64 %i.an, 8
  %i.ap = trunc i64 %i.ao to i8
  %i.aq = getelementptr i8, ptr %i.al, i64 %.010.lcssa.i ; 2 uses
  %i.ar = getelementptr i8, ptr %i.aq, i64 1
  store i8 %i.ap, ptr %i.ar, align 1, !tbaa !81
  %i.as = load i64, ptr %i.c, align 8, !tbaa !13
  %i.at = trunc i64 %i.as to i8
  %i.au = add nuw nsw i64 %.010.lcssa.i, 3        ; 2 uses
  %i.av = getelementptr i8, ptr %i.aq, i64 2
  store i8 %i.at, ptr %i.av, align 1, !tbaa !81
  %i.aw = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.au
  %i.ax = load ptr, ptr %i.b, align 8, !tbaa !103
  %i.ay = load i64, ptr %i.c, align 8, !tbaa !13
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aw, ptr align 1 %i.ax, i64 %i.ay, i1 false)
  %i.az = load i64, ptr %i.c, align 8, !tbaa !13
  %i.ba = add i64 %i.az, %i.au                    ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.ba
  %i.bc = load i64, ptr %i.a, align 8, !tbaa !13
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bb, ptr nonnull align 1 %i.e, i64 %i.bc, i1 false)
  %i.bd = load i64, ptr %i.a, align 8, !tbaa !13
  %i.be = add i64 %i.bd, %i.ba
  %i.bf = call fastcc i32 @mqtt_send(ptr noundef nonnull %0, ptr noundef nonnull %i.al, i64 noundef %i.be)
  br label %mqtt_get_topic.exit.thread

mqtt_get_topic.exit.thread:                       ; preds = %.sink.split.i, %bb.f, %bb.h, %mqtt_encode_len.exit, %bb.i
  %.037 = phi i32 [ 27, %bb.h ], [ 100, %mqtt_encode_len.exit ], [ %i.bf, %bb.i ], [ 3, %.sink.split.i ], [ %i.p, %bb.f ]
  %.0 = phi ptr [ null, %bb.h ], [ null, %mqtt_encode_len.exit ], [ %i.al, %bb.i ], [ null, %.sink.split.i ], [ null, %bb.f ]
  %i.bg = load ptr, ptr @Curl_cfree, align 8, !tbaa !8
  call void %i.bg(ptr noundef %.0) #6
  %i.bh = load ptr, ptr @Curl_cfree, align 8, !tbaa !8
  %i.bi = load ptr, ptr %i.b, align 8, !tbaa !103
  call void %i.bh(ptr noundef %i.bi) #6
  br label %bb.j

bb.j:                                             ; preds = %bb.c, %bb.a, %mqtt_get_topic.exit.thread
  %.038 = phi i32 [ %.037, %mqtt_get_topic.exit.thread ], [ 43, %bb.a ], [ 43, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret i32 %.038
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @mqtt_subscribe(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 8 uses
  %1 = alloca [4 x i8], align 1                   ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store ptr null, ptr %i.a, align 8, !tbaa !103
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !86
  %i.e = tail call ptr @Curl_conn_meta_get(ptr noundef %i.d, ptr noundef nonnull @.str) #6 ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4232
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !105  ; 2 uses
  %i.h = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.g) #7
  %i.i = icmp ugt i64 %i.h, 1
  br i1 %i.i, label %bb.c, label %.sink.split.i

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %i.k = call i32 @Curl_urldecode(ptr noundef nonnull %i.j, i64 noundef 0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i32 noundef 2) #6 ; 2 uses
  %.not.i = icmp eq i32 %i.k, 0
  br i1 %.not.i, label %bb.d, label %mqtt_get_topic.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.l = load i64, ptr %i.b, align 8, !tbaa !13   ; 2 uses
  %i.m = icmp ugt i64 %i.l, 65535
  br i1 %i.m, label %.sink.split.i, label %.lr.ph.i.preheader

.sink.split.i:                                    ; preds = %bb.d, %bb.b
  %.str.18.sink.i = phi ptr [ @.str.18, %bb.d ], [ @.str.19, %bb.b ]
  call void (ptr, ptr, ...) @Curl_failf(ptr noundef nonnull %0, ptr noundef nonnull %.str.18.sink.i) #6
  br label %mqtt_get_topic.exit.thread

.lr.ph.i.preheader:                               ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 4 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !98
  %i.p = add i32 %i.o, 1
  store i32 %i.p, ptr %i.n, align 4, !tbaa !98
  %i.q = add nuw nsw i64 %i.l, 5                  ; 4 uses
  %i.r = trunc i64 %i.q to i8
  %i.s = and i8 %i.r, 127
  %i.t = lshr i64 %i.q, 7                         ; 3 uses
  %.not.i40 = icmp eq i64 %i.t, 0
  %masksel.i = select i1 %.not.i40, i8 0, i8 -128
  %.0.i41 = or disjoint i8 %masksel.i, %i.s
  store i8 %.0.i41, ptr %1, align 1, !tbaa !81
  %.not52 = icmp eq i64 %i.t, 0
  br i1 %.not52, label %mqtt_encode_len.exit, label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %.lr.ph.i.preheader
  %i.u = trunc i64 %i.t to i8
  %i.v = and i8 %i.u, 127
  %i.w = lshr i64 %i.q, 14                        ; 3 uses
  %.not.i40.1 = icmp eq i64 %i.w, 0
  %masksel.i.1 = select i1 %.not.i40.1, i8 0, i8 -128
  %.0.i41.1 = or disjoint i8 %masksel.i.1, %i.v
  %.sroa.0.1..sroa_idx49 = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 %.0.i41.1, ptr %.sroa.0.1..sroa_idx49, align 1, !tbaa !81
  %.not53 = icmp eq i64 %i.w, 0
  br i1 %.not53, label %mqtt_encode_len.exit, label %.lr.ph.i.2

.lr.ph.i.2:                                       ; preds = %.lr.ph.i.1
  %i.x = trunc nuw i64 %i.w to i8
  %.sroa.0.2..sroa_idx50 = getelementptr inbounds nuw i8, ptr %1, i64 2
  store i8 %i.x, ptr %.sroa.0.2..sroa_idx50, align 1, !tbaa !81
  br label %mqtt_encode_len.exit

mqtt_encode_len.exit:                             ; preds = %.lr.ph.i.2, %.lr.ph.i.1, %.lr.ph.i.preheader
  %indvars.iv.i.lcssa = phi i64 [ 2, %.lr.ph.i.preheader ], [ 3, %.lr.ph.i.1 ], [ 4, %.lr.ph.i.2 ] ; 2 uses
  %indvars.iv.next.i.lcssa = phi i64 [ 1, %.lr.ph.i.preheader ], [ 2, %.lr.ph.i.1 ], [ 3, %.lr.ph.i.2 ] ; 2 uses
  %i.y = add nuw nsw i64 %indvars.iv.i.lcssa, %i.q ; 2 uses
  %i.z = load ptr, ptr @Curl_cmalloc, align 8, !tbaa !8
  %i.aa = call ptr %i.z(i64 noundef %i.y) #6      ; 7 uses
  %.not39 = icmp eq ptr %i.aa, null
  br i1 %.not39, label %mqtt_get_topic.exit.thread, label %bb.e

bb.e:                                             ; preds = %mqtt_encode_len.exit
  store i8 -126, ptr %i.aa, align 1, !tbaa !81
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ab, ptr noundef nonnull align 1 dereferenceable(1) %1, i64 %indvars.iv.next.i.lcssa, i1 false)
  %i.ac = load i32, ptr %i.n, align 4, !tbaa !98
  %i.ad = lshr i32 %i.ac, 8
  %i.ae = trunc i32 %i.ad to i8
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 %indvars.iv.i.lcssa
  store i8 %i.ae, ptr %i.af, align 1, !tbaa !81
  %i.ag = load i32, ptr %i.n, align 4, !tbaa !98
  %i.ah = trunc i32 %i.ag to i8
  %i.ai = getelementptr i8, ptr %i.aa, i64 %indvars.iv.next.i.lcssa ; 4 uses
  %i.aj = getelementptr i8, ptr %i.ai, i64 2
  store i8 %i.ah, ptr %i.aj, align 1, !tbaa !81
  %i.ak = load i64, ptr %i.b, align 8, !tbaa !13
  %i.al = lshr i64 %i.ak, 8
  %i.am = trunc i64 %i.al to i8
  %i.an = getelementptr i8, ptr %i.ai, i64 3
  store i8 %i.am, ptr %i.an, align 1, !tbaa !81
  %i.ao = load i64, ptr %i.b, align 8, !tbaa !13
  %i.ap = trunc i64 %i.ao to i8
  %i.aq = getelementptr i8, ptr %i.ai, i64 4
  store i8 %i.ap, ptr %i.aq, align 1, !tbaa !81
  %i.ar = getelementptr i8, ptr %i.ai, i64 5      ; 2 uses
  %i.as = load ptr, ptr %i.a, align 8, !tbaa !103
  %i.at = load i64, ptr %i.b, align 8, !tbaa !13
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ar, ptr align 1 %i.as, i64 %i.at, i1 false)
  %i.au = load i64, ptr %i.b, align 8, !tbaa !13
  %i.av = getelementptr i8, ptr %i.ar, i64 %i.au
  store i8 0, ptr %i.av, align 1, !tbaa !81
  %i.aw = call fastcc i32 @mqtt_send(ptr noundef nonnull %0, ptr noundef nonnull %i.aa, i64 noundef %i.y)
  br label %mqtt_get_topic.exit.thread

mqtt_get_topic.exit.thread:                       ; preds = %.sink.split.i, %bb.c, %mqtt_encode_len.exit, %bb.e
  %.033 = phi i32 [ 27, %mqtt_encode_len.exit ], [ %i.aw, %bb.e ], [ 3, %.sink.split.i ], [ %i.k, %bb.c ]
  %.0 = phi ptr [ null, %mqtt_encode_len.exit ], [ %i.aa, %bb.e ], [ null, %.sink.split.i ], [ null, %bb.c ]
  %i.ax = load ptr, ptr @Curl_cfree, align 8, !tbaa !8
  %i.ay = load ptr, ptr %i.a, align 8, !tbaa !103
  call void %i.ax(ptr noundef %i.ay) #6
  %i.az = load ptr, ptr @Curl_cfree, align 8, !tbaa !8
  call void %i.az(ptr noundef %.0) #6
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %mqtt_get_topic.exit.thread
  %.034 = phi i32 [ %.033, %mqtt_get_topic.exit.thread ], [ 2, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret i32 %.034
}

declare i64 @curlx_ptimediff_ms(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @mqtt_recv_consume(ptr noundef %0, i64 noundef range(i64 2, 4) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @Curl_meta_get(ptr noundef %0, ptr noundef nonnull @.str.1) #6 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  %i.c = tail call i64 @curlx_dyn_len(ptr noundef nonnull %i.b) #6 ; 2 uses
  %.not10 = icmp ugt i64 %i.c, %1
  br i1 %.not10, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @curlx_dyn_reset(ptr noundef nonnull %i.b) #6
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.d = sub nuw i64 %i.c, %1
  %i.e = tail call i32 @curlx_dyn_tail(ptr noundef nonnull %i.b, i64 noundef %i.d) #6 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.a
  ret void
}

declare zeroext i1 @curlx_sotouz_fits(i64 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @Curl_urldecode(ptr noundef, i64 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @Curl_pgrsSetDownloadSize(ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @Curl_client_write(ptr noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @Curl_pollset_change(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }
attributes #7 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"any pointer", !6, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"_Bool", !6, i64 0}
!12 = !{i64 0, i64 8, !13, i64 8, i64 4, !15}
!13 = !{!14, !14, i64 0}
!14 = !{!"long", !6, i64 0}
!15 = !{!5, !5, i64 0}
!16 = !{!17, !59, i64 4560}
!17 = !{!"Curl_easy", !5, i64 0, !14, i64 8, !5, i64 16, !5, i64 20, !9, i64 24, !18, i64 32, !5, i64 40, !5, i64 44, !19, i64 48, !24, i64 104, !24, i64 112, !25, i64 120, !26, i64 128, !29, i64 176, !30, i64 184, !38, i64 424, !49, i64 2200, !50, i64 2208, !51, i64 2216, !52, i64 2224, !55, i64 2784, !72, i64 4632, !73, i64 4640, !77, i64 4864}
!18 = !{!"p1 _ZTS11connectdata", !9, i64 0}
!19 = !{!"Curl_message", !20, i64 0, !23, i64 32}
!20 = !{!"Curl_llist_node", !21, i64 0, !9, i64 8, !22, i64 16, !22, i64 24}
!21 = !{!"p1 _ZTS10Curl_llist", !9, i64 0}
!22 = !{!"p1 _ZTS15Curl_llist_node", !9, i64 0}
!23 = !{!"CURLMsg", !5, i64 0, !9, i64 8, !6, i64 16}
!24 = !{!"p1 _ZTS10Curl_multi", !9, i64 0}
!25 = !{!"p1 _ZTS10Curl_share", !9, i64 0}
!26 = !{!"Curl_hash", !27, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !14, i64 32, !14, i64 40}
!27 = !{!"p2 _ZTS17Curl_hash_element", !28, i64 0}
!28 = !{!"any p2 pointer", !9, i64 0}
!29 = !{!"p1 _ZTS8PslCache", !9, i64 0}
!30 = !{!"SingleRequest", !14, i64 0, !14, i64 8, !14, i64 16, !14, i64 24, !14, i64 32, !31, i64 40, !5, i64 56, !5, i64 60, !5, i64 64, !5, i64 68, !5, i64 72, !6, i64 76, !6, i64 77, !5, i64 80, !32, i64 88, !33, i64 96, !34, i64 104, !14, i64 168, !14, i64 176, !37, i64 184, !37, i64 192, !6, i64 200, !37, i64 208, !37, i64 216, !37, i64 224, !6, i64 232, !5, i64 233, !5, i64 233, !5, i64 233, !5, i64 233, !5, i64 233, !5, i64 233, !5, i64 233, !5, i64 233, !5, i64 234, !5, i64 234, !5, i64 234, !5, i64 234, !5, i64 234, !5, i64 234, !5, i64 234, !5, i64 234, !5, i64 235, !5, i64 235, !5, i64 235, !5, i64 235, !5, i64 235, !5, i64 235}
!31 = !{!"curltime", !14, i64 0, !5, i64 8}
!32 = !{!"p1 _ZTS12Curl_cwriter", !9, i64 0}
!33 = !{!"p1 _ZTS12Curl_creader", !9, i64 0}
!34 = !{!"bufq", !35, i64 0, !35, i64 8, !35, i64 16, !36, i64 24, !14, i64 32, !14, i64 40, !14, i64 48, !5, i64 56}
!35 = !{!"p1 _ZTS9buf_chunk", !9, i64 0}
!36 = !{!"p1 _ZTS9bufc_pool", !9, i64 0}
!37 = !{!"p1 omnipotent char", !9, i64 0}
!38 = !{!"UserDefined", !39, i64 0, !9, i64 8, !37, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !5, i64 48, !5, i64 52, !9, i64 56, !9, i64 64, !14, i64 72, !9, i64 80, !9, i64 88, !9, i64 96, !9, i64 104, !9, i64 112, !9, i64 120, !9, i64 128, !9, i64 136, !9, i64 144, !9, i64 152, !9, i64 160, !9, i64 168, !9, i64 176, !9, i64 184, !9, i64 192, !9, i64 200, !9, i64 208, !9, i64 216, !9, i64 224, !9, i64 232, !9, i64 240, !9, i64 248, !9, i64 256, !14, i64 264, !14, i64 272, !14, i64 280, !14, i64 288, !14, i64 296, !14, i64 304, !14, i64 312, !40, i64 320, !41, i64 328, !42, i64 336, !40, i64 344, !40, i64 352, !40, i64 360, !14, i64 368, !43, i64 376, !43, i64 576, !40, i64 776, !46, i64 784, !6, i64 786, !6, i64 787, !47, i64 788, !14, i64 792, !5, i64 800, !5, i64 804, !9, i64 808, !40, i64 816, !14, i64 824, !14, i64 832, !6, i64 840, !6, i64 841, !6, i64 842, !40, i64 848, !40, i64 856, !40, i64 864, !5, i64 872, !6, i64 880, !6, i64 1480, !5, i64 1544, !14, i64 1552, !14, i64 1560, !9, i64 1568, !5, i64 1576, !9, i64 1584, !9, i64 1592, !9, i64 1600, !9, i64 1608, !9, i64 1616, !14, i64 1624, !14, i64 1632, !14, i64 1640, !14, i64 1648, !14, i64 1656, !5, i64 1664, !5, i64 1668, !5, i64 1672, !9, i64 1680, !9, i64 1688, !14, i64 1696, !48, i64 1704, !9, i64 1712, !9, i64 1720, !40, i64 1728, !5, i64 1736, !46, i64 1740, !46, i64 1742, !46, i64 1744, !46, i64 1746, !46, i64 1748, !46, i64 1750, !46, i64 1752, !6, i64 1754, !6, i64 1755, !6, i64 1756, !6, i64 1757, !6, i64 1758, !6, i64 1759, !6, i64 1760, !6, i64 1761, !6, i64 1762, !5, i64 1763, !5, i64 1763, !5, i64 1763, !5, i64 1763, !5, i64 1763, !5, i64 1763, !5, i64 1763, !5, i64 1763, !5, i64 1764, !5, i64 1764, !5, i64 1764, !5, i64 1764, !5, i64 1764, !5, i64 1764, !5, i64 1764, !5, i64 1764, !5, i64 1765, !5, i64 1765, !5, i64 1765, !5, i64 1765, !5, i64 1765, !5, i64 1765, !5, i64 1765, !5, i64 1765, !5, i64 1766, !5, i64 1766, !5, i64 1766, !5, i64 1766, !5, i64 1766, !5, i64 1766, !5, i64 1766, !5, i64 1766, !5, i64 1767, !5, i64 1767, !5, i64 1767, !5, i64 1767, !5, i64 1767, !5, i64 1767, !5, i64 1767, !5, i64 1767, !5, i64 1768, !5, i64 1768, !5, i64 1768, !5, i64 1768, !5, i64 1768, !5, i64 1768, !5, i64 1768, !5, i64 1768, !5, i64 1769, !5, i64 1769, !5, i64 1769, !5, i64 1769, !5, i64 1769, !5, i64 1769, !5, i64 1769, !5, i64 1769, !5, i64 1770, !5, i64 1770, !5, i64 1770}
!39 = !{!"p1 _ZTS8_IO_FILE", !9, i64 0}
!40 = !{!"p1 _ZTS10curl_slist", !9, i64 0}
!41 = !{!"p1 _ZTS13curl_httppost", !9, i64 0}
!42 = !{!"p1 _ZTS13curl_mimepart", !9, i64 0}
!43 = !{!"ssl_config_data", !44, i64 0, !14, i64 168, !9, i64 176, !9, i64 184, !5, i64 192, !5, i64 192, !5, i64 192, !5, i64 192, !5, i64 192, !5, i64 192, !5, i64 192, !5, i64 192, !5, i64 193, !5, i64 193, !5, i64 193}
!44 = !{!"ssl_primary_config", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !37, i64 48, !37, i64 56, !37, i64 64, !37, i64 72, !37, i64 80, !37, i64 88, !37, i64 96, !45, i64 104, !45, i64 112, !45, i64 120, !45, i64 128, !37, i64 136, !37, i64 144, !37, i64 152, !5, i64 160, !6, i64 164, !6, i64 165, !5, i64 166, !5, i64 166, !5, i64 166, !5, i64 166, !5, i64 166}
!45 = !{!"p1 _ZTS9curl_blob", !9, i64 0}
!46 = !{!"short", !6, i64 0}
!47 = !{!"ssl_general_config", !5, i64 0}
!48 = !{!"p1 _ZTS8Curl_URL", !9, i64 0}
!49 = !{!"p1 _ZTS10CookieInfo", !9, i64 0}
!50 = !{!"p1 _ZTS4hsts", !9, i64 0}
!51 = !{!"p1 _ZTS10altsvcinfo", !9, i64 0}
!52 = !{!"Progress", !31, i64 0, !14, i64 16, !53, i64 24, !53, i64 128, !14, i64 232, !14, i64 240, !14, i64 248, !14, i64 256, !14, i64 264, !14, i64 272, !14, i64 280, !14, i64 288, !14, i64 296, !14, i64 304, !14, i64 312, !14, i64 320, !31, i64 328, !31, i64 344, !31, i64 360, !31, i64 376, !31, i64 392, !6, i64 408, !6, i64 456, !5, i64 552, !5, i64 556, !5, i64 556, !5, i64 556, !5, i64 556, !5, i64 556, !5, i64 556}
!53 = !{!"pgrs_dir", !14, i64 0, !14, i64 8, !14, i64 16, !54, i64 24}
!54 = !{!"Curl_rlimit", !14, i64 0, !14, i64 8, !14, i64 16, !14, i64 24, !14, i64 32, !14, i64 40, !14, i64 48, !31, i64 56, !5, i64 72}
!55 = !{!"UrlState", !31, i64 0, !14, i64 16, !14, i64 24, !56, i64 32, !40, i64 64, !14, i64 72, !57, i64 80, !57, i64 88, !5, i64 96, !5, i64 100, !9, i64 104, !37, i64 112, !58, i64 120, !58, i64 192, !60, i64 264, !60, i64 280, !61, i64 296, !9, i64 304, !9, i64 312, !9, i64 320, !9, i64 328, !37, i64 336, !5, i64 344, !31, i64 352, !62, i64 368, !64, i64 424, !6, i64 456, !37, i64 1296, !37, i64 1304, !14, i64 1312, !5, i64 1320, !5, i64 1324, !5, i64 1328, !6, i64 1332, !14, i64 1368, !9, i64 1376, !9, i64 1384, !48, i64 1392, !65, i64 1400, !66, i64 1464, !66, i64 1488, !40, i64 1512, !42, i64 1520, !42, i64 1528, !14, i64 1536, !56, i64 1544, !64, i64 1576, !6, i64 1608, !67, i64 1704, !40, i64 1712, !68, i64 1720, !69, i64 1728, !59, i64 1776, !70, i64 1784, !71, i64 1832, !46, i64 1840, !6, i64 1842, !6, i64 1843, !5, i64 1844, !5, i64 1844, !5, i64 1844, !5, i64 1844, !5, i64 1844, !5, i64 1844, !5, i64 1844, !5, i64 1844, !5, i64 1845, !5, i64 1845, !5, i64 1845, !5, i64 1845, !5, i64 1845, !5, i64 1845, !5, i64 1845, !5, i64 1845, !5, i64 1846, !5, i64 1846, !5, i64 1846, !5, i64 1846, !5, i64 1846, !5, i64 1846, !5, i64 1846}
!56 = !{!"dynbuf", !37, i64 0, !14, i64 8, !14, i64 16, !14, i64 24}
!57 = !{!"p1 _ZTS9Curl_peer", !9, i64 0}
!58 = !{!"digestdata", !59, i64 0, !57, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !37, i64 48, !37, i64 56, !5, i64 64, !6, i64 68, !5, i64 69, !5, i64 69}
!59 = !{!"p1 _ZTS10Curl_creds", !9, i64 0}
!60 = !{!"auth", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 12}
!61 = !{!"p1 _ZTS17Curl_resolv_async", !9, i64 0}
!62 = !{!"Curl_tree", !63, i64 0, !63, i64 8, !63, i64 16, !63, i64 24, !31, i64 32, !9, i64 48}
!63 = !{!"p1 _ZTS9Curl_tree", !9, i64 0}
!64 = !{!"Curl_llist", !22, i64 0, !22, i64 8, !9, i64 16, !14, i64 24}
!65 = !{!"urlpieces", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !37, i64 48, !37, i64 56}
!66 = !{!"bufref", !9, i64 0, !37, i64 8, !14, i64 16}
!67 = !{!"p1 _ZTS17Curl_header_store", !9, i64 0}
!68 = !{!"p1 _ZTS13curl_trc_feat", !9, i64 0}
!69 = !{!"store_netrc", !56, i64 0, !37, i64 32, !5, i64 40}
!70 = !{!"dynamically_allocated_data", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40}
!71 = !{!"http_negotiation", !6, i64 0, !6, i64 1, !6, i64 2, !6, i64 3, !5, i64 4, !5, i64 4, !5, i64 4, !5, i64 4}
!72 = !{!"p1 _ZTS12WildcardData", !9, i64 0}
!73 = !{!"PureInfo", !5, i64 0, !5, i64 4, !5, i64 8, !14, i64 16, !14, i64 24, !14, i64 32, !5, i64 40, !5, i64 44, !5, i64 48, !5, i64 52, !37, i64 56, !37, i64 64, !14, i64 72, !5, i64 80, !74, i64 84, !37, i64 184, !5, i64 192, !75, i64 200, !5, i64 216, !5, i64 220, !5, i64 220}
!74 = !{!"ip_quadruple", !6, i64 0, !6, i64 46, !46, i64 92, !46, i64 94, !6, i64 96}
!75 = !{!"curl_certinfo", !5, i64 0, !76, i64 8}
!76 = !{!"p2 _ZTS10curl_slist", !28, i64 0}
!77 = !{!"curl_tlssessioninfo", !5, i64 0, !9, i64 8}
!78 = !{!79, !37, i64 0}
!79 = !{!"Curl_creds", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !5, i64 40, !6, i64 44, !6, i64 45}
!80 = !{!79, !37, i64 8}
!81 = !{!6, !6, i64 0}
!82 = distinct !{null}
!83 = !{!17, !68, i64 4504}
!84 = !{!85, !5, i64 8}
!85 = !{!"curl_trc_feat", !37, i64 0, !5, i64 8}
!86 = !{!17, !18, i64 32}
!87 = !{!88, !5, i64 0}
!88 = !{!"mqtt_conn", !5, i64 0, !5, i64 4, !5, i64 8}
!89 = !{!88, !5, i64 4}
!90 = !{!17, !14, i64 2120}
!91 = !{!92, !14, i64 64}
!92 = !{!"MQTT", !56, i64 0, !56, i64 32, !14, i64 64, !14, i64 72, !6, i64 80, !31, i64 88, !6, i64 104, !5, i64 105}
!93 = distinct !{!93, !94}
!94 = !{!"llvm.loop.mustprogress"}
!95 = !{!92, !6, i64 104}
!96 = !{!92, !14, i64 72}
!97 = !{!17, !6, i64 4627}
!98 = !{!88, !5, i64 8}
!99 = !{!17, !14, i64 1248}
!100 = !{!17, !14, i64 200}
!101 = !{!17, !14, i64 184}
!102 = !{!17, !9, i64 480}
!103 = !{!37, !37, i64 0}
!104 = !{!17, !14, i64 496}
!105 = !{!17, !37, i64 4232}
end_hunk_0
