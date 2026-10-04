Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/http?download=true
inline.NumInlined: 77
inline.NumDeleted: 54
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@Curl_add_custom_headers:bb.a
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %.038
  br i1 %exitcond.not, label %.loopexit, label %bb.g, !llvm.loop !173

.loopexit:                                        ; preds = %._crit_edge, %.thread73
  %.3 = phi i32 [ %.035, %.thread73 ], [ 0, %._crit_edge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret i32 %.3
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #5

declare i32 @curlx_str_casecompare(ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @curlx_dyn_addf(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @Curl_add_timecondition(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 {
bb.a:
  %2 = alloca %struct.tm, align 8                 ; 10 uses
  %i.a = alloca [80 x i8], align 16               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2043 ; 2 uses
  %i.c = load i8, ptr %i.b, align 1, !tbaa !122
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 776
  %i.f = load i64, ptr %i.e, align 8, !tbaa !175
  %i.g = call i32 @curlx_gmtime(i64 noundef %i.f, ptr noundef nonnull %2) #9 ; 2 uses
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void (ptr, ptr, ...) @Curl_failf(ptr noundef nonnull %0, ptr noundef nonnull @.str.19) #9
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.h = load i8, ptr %i.b, align 1, !tbaa !122
  %switch.tableidx = add i8 %i.h, -1              ; 3 uses
  %i.i = icmp ult i8 %switch.tableidx, 3
  br i1 %i.i, label %switch.lookup, label %bb.f

switch.lookup:                                    ; preds = %bb.d
  %i.j = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.Curl_add_timecondition, i64 %i.j
  %switch.load = load ptr, ptr %switch.gep, align 8 ; 2 uses
  %i.k = zext nneg i8 %switch.tableidx to i64
  %switch.gep27 = getelementptr inbounds nuw i8, ptr @switch.table.Curl_add_timecondition.5, i64 %i.k
  %switch.load28 = load i8, ptr %switch.gep27, align 1
  %switch.ext = zext i8 %switch.load28 to i64
  %i.l = call ptr @Curl_checkheaders(ptr noundef nonnull %0, ptr noundef nonnull %switch.load, i64 noundef %switch.ext) #9
  %.not24 = icmp eq ptr %i.l, null
  br i1 %.not24, label %bb.e, label %bb.f

bb.e:                                             ; preds = %switch.lookup
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.n = load i32, ptr %i.m, align 8, !tbaa !177  ; 2 uses
  %.not25 = icmp eq i32 %i.n, 0
  %i.o = add nsw i32 %i.n, -1
  %narrow = select i1 %.not25, i32 6, i32 %i.o
  %i.p = sext i32 %narrow to i64
  %i.q = getelementptr inbounds [8 x i8], ptr @Curl_wkday, i64 %i.p
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !86
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.t = load i32, ptr %i.s, align 4, !tbaa !178
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.v = load i32, ptr %i.u, align 8, !tbaa !179
  %i.w = sext i32 %i.v to i64
  %i.x = getelementptr inbounds [8 x i8], ptr @Curl_month, i64 %i.w
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !86
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !180
  %i.ab = add nsw i32 %i.aa, 1900
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !181
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !182
  %i.ag = load i32, ptr %2, align 8, !tbaa !183
  %i.ah = call i32 (ptr, i64, ptr, ...) @curl_msnprintf(ptr noundef nonnull %i.a, i64 noundef 80, ptr noundef nonnull @.str.23, ptr noundef nonnull %switch.load, ptr noundef %i.r, i32 noundef %i.t, ptr noundef %i.y, i32 noundef %i.ab, i32 noundef %i.ad, i32 noundef %i.af, i32 noundef %i.ag) #9 ; 0 uses
  %i.ai = call i32 @curlx_dyn_add(ptr noundef %1, ptr noundef nonnull %i.a) #9
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %switch.lookup, %bb.a, %bb.e, %bb.c
  %.021 = phi i32 [ %i.ai, %bb.e ], [ %i.g, %bb.c ], [ 0, %bb.a ], [ 43, %bb.d ], [ 0, %switch.lookup ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #9
  ret i32 %.021
}

declare i32 @curlx_gmtime(i64 noundef, ptr noundef) local_unnamed_addr #4

declare ptr @Curl_checkheaders(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

declare i32 @curl_msnprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #4

declare i32 @curlx_dyn_add(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @Curl_http_method(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %1, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %2) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4435
  %i.b = load i8, ptr %i.a, align 1, !tbaa !103   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !90
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 736
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !123
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load i64, ptr %i.g, align 8, !tbaa !126
  %i.i = and i64 %i.h, 3221225479
  %.not = icmp eq i64 %i.i, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4436
  %i.k = load i32, ptr %i.j, align 4
  %i.l = and i32 %i.k, 131072
  %.not13 = icmp eq i32 %i.l, 0
  %spec.select = select i1 %.not13, i8 %i.b, i8 4
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.011.shrunk = phi i8 [ %i.b, %bb.a ], [ %spec.select, %bb.b ] ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1480
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !86   ; 2 uses
  %.not14 = icmp eq ptr %i.n, null
  br i1 %.not14, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 4436
  %i.p = load i32, ptr %i.o, align 4
  %i.q = and i32 %i.p, 524288
  %.not15 = icmp eq i32 %i.q, 0
  br i1 %.not15, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 409
  %i.s = load i32, ptr %i.r, align 1
  %i.t = and i32 %i.s, 65536
  %.not16 = icmp eq i32 %i.t, 0
  br i1 %.not16, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %switch.tableidx = add i8 %.011.shrunk, -1      ; 2 uses
  %i.u = icmp ult i8 %switch.tableidx, 5
  br i1 %i.u, label %switch.lookup, label %bb.g

switch.lookup:                                    ; preds = %bb.f
  %i.v = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.Curl_http, i64 %i.v
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %switch.lookup, %bb.e, %bb.d
  %.0 = phi ptr [ %i.n, %bb.d ], [ @.str.27, %bb.f ], [ @.str.24, %bb.e ], [ %switch.load, %switch.lookup ]
  %.011 = zext i8 %.011.shrunk to i32
  store ptr %.0, ptr %1, align 8, !tbaa !86
  store i32 %.011, ptr %2, align 4, !tbaa !106
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @Curl_http(ptr noundef %0, ptr nofree noundef writeonly captures(none) initializes((0, 1)) %1) #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 8 uses
  %2 = alloca %struct.Curl_str, align 8           ; 7 uses
  %i.b = alloca ptr, align 8                      ; 8 uses
  %3 = alloca %struct.Curl_str, align 8           ; 7 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %i.d = alloca ptr, align 8                      ; 7 uses
  %4 = alloca %struct.Curl_llist, align 8         ; 5 uses
  %i.e = alloca i8, align 1                       ; 4 uses
  %i.f = alloca ptr, align 8                      ; 5 uses
  %5 = alloca %struct.dynbuf, align 8             ; 40 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #9
  store i8 1, ptr %1, align 1, !tbaa !128
  call void @curlx_dyn_init(ptr noundef nonnull %5, i64 noundef 1048576) #9
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 2664
  call void @curlx_dyn_reset(ptr noundef nonnull %i.g) #9
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4436 ; 14 uses
  %i.i = load i32, ptr %i.h, align 4
  %i.j = and i32 %i.i, -8388609
  store i32 %i.j, ptr %i.h, align 4
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 9 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !90   ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 728 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8
  %i.o = and i64 %i.n, 128
  %.not = icmp eq i64 %i.o, 0
  br i1 %.not, label %bb.b, label %http_check_new_conn.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.p = call ptr @Curl_conn_get_alpn_negotiated(ptr noundef nonnull %0, ptr noundef nonnull %i.l) #9 ; 5 uses
  %.not.i = icmp eq ptr %i.p, null
  br i1 %.not.i, label %.critedge.i, label %sub_0.i

sub_0.i:                                          ; preds = %bb.b
  %i.q = load i8, ptr %i.p, align 1               ; 2 uses
  %.not49.i = icmp eq i8 %i.q, 104
  br i1 %.not49.i, label %sub_1.i, label %.tail.thread.i

sub_1.i:                                          ; preds = %sub_0.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 1
  %i.s = load i8, ptr %i.r, align 1               ; 3 uses
  %.not50.i = icmp eq i8 %i.s, 51
  br i1 %.not50.i, label %.tail.i.thread, label %sub_045.i

.tail.i.thread:                                   ; preds = %sub_1.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 2
  %i.u = load i8, ptr %i.t, align 1
  %.not34.i117 = icmp eq i8 %i.u, 0
  br i1 %.not34.i117, label %bb.h, label %.critedge.i

.tail.thread.i:                                   ; preds = %sub_0.i
  %6 = zext i8 %i.q to i32
  %7 = sub nsw i32 104, %6
  br label %.tail44.i

sub_045.i:                                        ; preds = %sub_1.i
  %i.v = zext i8 %i.s to i32
  %i.w = sub nsw i32 50, %i.v
  %.not52.i = icmp eq i8 %i.s, 50
  br i1 %.not52.i, label %sub_247.i, label %.tail44.i

sub_247.i:                                        ; preds = %sub_045.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.p, i64 2
  %i.y = load i8, ptr %i.x, align 1
  %i.z = zext i8 %i.y to i32
  %i.aa = sub nsw i32 0, %i.z
  br label %.tail44.i

.tail44.i:                                        ; preds = %sub_247.i, %sub_045.i, %.tail.thread.i
  %8 = phi i32 [ %7, %.tail.thread.i ], [ %i.w, %sub_045.i ], [ %i.aa, %sub_247.i ]
  %.not35.i = icmp eq i32 %8, 0
  br i1 %.not35.i, label %bb.c, label %.critedge.i

bb.c:                                             ; preds = %.tail44.i
  %i.ab = call zeroext i8 @Curl_conn_http_version(ptr noundef nonnull %0, ptr noundef nonnull %i.l) #9
  %.not36.i = icmp eq i8 %i.ab, 20
  br i1 %.not36.i, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ac = load i64, ptr %i.m, align 8
  %i.ad = and i64 %i.ac, 48
  %or.cond.i = icmp eq i64 %i.ad, 32
  br i1 %or.cond.i, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.ae = call i32 @Curl_http2_switch(ptr noundef nonnull %0) #9 ; 2 uses
  %.not39.i = icmp eq i32 %i.ae, 0
  br i1 %.not39.i, label %bb.h, label %http_check_new_conn.exit

.critedge.i:                                      ; preds = %.tail.i.thread, %.tail44.i, %bb.b
  %i.af = call zeroext i1 @Curl_http2_may_switch(ptr noundef nonnull %0) #9
  br i1 %i.af, label %bb.f, label %bb.h

bb.f:                                             ; preds = %.critedge.i
  %i.ag = call i32 @Curl_http2_switch(ptr noundef nonnull %0) #9 ; 2 uses
  %.not40.i = icmp eq i32 %i.ag, 0
  br i1 %.not40.i, label %bb.g, label %http_check_new_conn.exit

bb.g:                                             ; preds = %bb.f
  %i.ah = getelementptr inbounds nuw i8, ptr %i.l, i64 804
  store i8 20, ptr %i.ah, align 4, !tbaa !129
  call void @Curl_conn_set_multiplex(ptr noundef nonnull %i.l) #9
  br label %bb.h

bb.h:                                             ; preds = %.tail.i.thread, %bb.g, %.critedge.i, %bb.e, %bb.d, %bb.c
  %.0.i = phi ptr [ @.str.66, %bb.g ], [ @.str.66, %bb.e ], [ @.str.64, %.tail.i.thread ], [ @.str.66, %bb.d ], [ @.str.66, %bb.c ], [ @.str.67, %.critedge.i ]
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 2049
  %i.aj = load i32, ptr %i.ai, align 1
  %i.ak = and i32 %i.aj, 134217728
  %.not42.i = icmp eq i32 %i.ak, 0
  br i1 %.not42.i, label %http_check_new_conn.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 4296
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !97 ; 2 uses
  %.not43.i = icmp eq ptr %i.am, null
  br i1 %.not43.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !99
  %i.ap = icmp sgt i32 %i.ao, 0
  br i1 %i.ap, label %bb.k, label %http_check_new_conn.exit.thread

bb.k:                                             ; preds = %bb.j, %bb.i
  call void (ptr, ptr, ...) @Curl_infof(ptr noundef nonnull %0, ptr noundef nonnull @.str.68, ptr noundef nonnull %.0.i) #9
  br label %http_check_new_conn.exit.thread

http_check_new_conn.exit.thread:                  ; preds = %bb.k, %bb.j, %bb.h, %bb.a
  %i.aq = call i32 @Curl_headers_init(ptr noundef nonnull %0) #9 ; 2 uses
  %.not63 = icmp eq i32 %i.aq, 0
  br i1 %.not63, label %bb.l, label %http_check_new_conn.exit

bb.l:                                             ; preds = %http_check_new_conn.exit.thread
  %i.ar = load i32, ptr %i.h, align 4             ; 4 uses
  %i.as = and i32 %i.ar, -7340033
  store i32 %i.as, ptr %i.h, align 4
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 4435
  %i.au = load i8, ptr %i.at, align 1, !tbaa !103
  %i.av = load ptr, ptr %i.k, align 8, !tbaa !90  ; 7 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 736 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !123
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !126
  %i.ba = and i64 %i.az, 3221225479
  %.not.i74 = icmp eq i64 %i.ba, 0
  %i.bb = and i32 %i.ar, 131072
  %.not13.i = icmp eq i32 %i.bb, 0
  %i.bc = select i1 %.not.i74, i1 true, i1 %.not13.i
  %.011.shrunk.i = select i1 %i.bc, i8 %i.au, i8 4 ; 8 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 1480
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !86 ; 2 uses
  %.not14.i = icmp ne ptr %i.be, null
  %i.bf = and i32 %i.ar, 524288
  %.not15.i = icmp eq i32 %i.bf, 0
  %or.cond = select i1 %.not14.i, i1 %.not15.i, i1 false
  br i1 %or.cond, label %Curl_http_method.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 409
  %i.bh = load i32, ptr %i.bg, align 1
  %i.bi = and i32 %i.bh, 65536
  %.not16.i = icmp eq i32 %i.bi, 0
  br i1 %.not16.i, label %bb.n, label %Curl_http_method.exit

bb.n:                                             ; preds = %bb.m
  %switch.tableidx = add i8 %.011.shrunk.i, -1    ; 2 uses
  %i.bj = icmp ult i8 %switch.tableidx, 5
  br i1 %i.bj, label %switch.lookup, label %Curl_http_method.exit

switch.lookup:                                    ; preds = %bb.n
  %i.bk = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.Curl_http, i64 %i.bk
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %Curl_http_method.exit

Curl_http_method.exit:                            ; preds = %bb.n, %switch.lookup, %bb.l, %bb.m
  %.0.i75 = phi ptr [ %i.be, %bb.l ], [ @.str.27, %bb.n ], [ @.str.24, %bb.m ], [ %switch.load, %switch.lookup ] ; 2 uses
  %.011.i = zext i8 %.011.shrunk.i to i32         ; 2 uses
  %i.bl = and i32 %i.ar, 8
  %.not.i76 = icmp eq i32 %i.bl, 0
  br i1 %.not.i76, label %bb.o, label %bb.q

bb.o:                                             ; preds = %Curl_http_method.exit
  %i.bm = load ptr, ptr @Curl_cfree, align 8, !tbaa !101
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 2712 ; 2 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !196
  call void %i.bm(ptr noundef %i.bo) #9, !inline_history !184
  %i.bp = load ptr, ptr @Curl_cstrdup, align 8, !tbaa !101
  %i.bq = getelementptr inbounds nuw i8, ptr %i.av, i64 160
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !130
  %i.bs = call ptr %i.bp(ptr noundef %i.br) #9, !inline_history !184 ; 2 uses
  store ptr %i.bs, ptr %i.bn, align 8, !tbaa !196
  %.not56.i = icmp eq ptr %i.bs, null
  br i1 %.not56.i, label %http_check_new_conn.exit.thread149, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bt = getelementptr inbounds nuw i8, ptr %i.av, i64 792
  %i.bu = load i16, ptr %i.bt, align 8, !tbaa !197
  %i.bv = zext i16 %i.bu to i32
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 2720
  store i32 %i.bv, ptr %i.bw, align 8, !tbaa !198
  %i.bx = load ptr, ptr %i.aw, align 8, !tbaa !123
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !126
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 2728
  store i64 %i.bz, ptr %i.ca, align 8, !tbaa !199
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %Curl_http_method.exit
  %i.cb = load ptr, ptr @Curl_cfree, align 8, !tbaa !101
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 4384 ; 5 uses
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !200
  call void %i.cb(ptr noundef %i.cd) #9, !inline_history !184
  store ptr null, ptr %i.cc, align 8, !tbaa !200
  %i.ce = load ptr, ptr @Curl_cfree, align 8, !tbaa !101
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 4 uses
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !131
  call void %i.ce(ptr noundef %i.cg) #9, !inline_history !184
  store ptr null, ptr %i.cf, align 8, !tbaa !131
  %i.ch = call ptr @Curl_checkheaders(ptr noundef nonnull %0, ptr noundef nonnull @.str.10, i64 noundef 4) #9 ; 4 uses
  %.not57.i = icmp eq ptr %i.ch, null
  br i1 %.not57.i, label %bb.ac, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ci = load i32, ptr %i.h, align 4
  %i.cj = and i32 %i.ci, 8
  %.not58.i = icmp eq i32 %i.cj, 0
  br i1 %.not58.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 2712
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !196
  %i.cm = getelementptr inbounds nuw i8, ptr %i.av, i64 160
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !130
  %i.co = call i32 @curl_strequal(ptr noundef %i.cl, ptr noundef %i.cn) #9
  %.not59.i = icmp eq i32 %i.co, 0
  br i1 %.not59.i, label %bb.ac, label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #9
  %i.cp = call fastcc i32 @copy_custom_value(ptr noundef nonnull %i.ch, ptr noundef %i.f) ; 2 uses
  %.not63.i = icmp eq i32 %i.cp, 0
  br i1 %.not63.i, label %bb.u, label %.thread.i

bb.u:                                             ; preds = %bb.t
  %i.cq = load ptr, ptr %i.f, align 8, !tbaa !86  ; 8 uses
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !84
  switch i8 %i.cr, label %bb.x [
    i8 0, label %bb.v
    i8 91, label %bb.w
  ]

bb.v:                                             ; preds = %bb.u
  %i.cs = load ptr, ptr @Curl_cfree, align 8, !tbaa !101
  call void %i.cs(ptr noundef nonnull %i.cq) #9, !inline_history !184
  br label %bb.z

bb.w:                                             ; preds = %bb.u
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cq, i64 1
  %i.cu = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.cq) #10
  %i.cv = add i64 %i.cu, -1
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.cq, ptr nonnull align 1 %i.ct, i64 %i.cv, i1 false)
  %i.cw = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.cq, i32 noundef 93) #10 ; 2 uses
  %.not66.i = icmp eq ptr %i.cw, null
  br i1 %.not66.i, label %bb.y, label %.sink.split.i

bb.x:                                             ; preds = %bb.u
  %i.cx = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.cq, i32 noundef 58) #10 ; 2 uses
  %.not65.i = icmp eq ptr %i.cx, null
  br i1 %.not65.i, label %bb.y, label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.x, %bb.w
  %.sink.i = phi ptr [ %i.cw, %bb.w ], [ %i.cx, %bb.x ]
  store i8 0, ptr %.sink.i, align 1, !tbaa !84
  br label %bb.y

bb.y:                                             ; preds = %.sink.split.i, %bb.x, %bb.w
  store ptr %i.cq, ptr %i.cf, align 8, !tbaa !131
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.v
  %i.cy = call i32 @curl_strequal(ptr noundef nonnull @.str.69, ptr noundef nonnull %i.ch) #9
  %.not67.i = icmp eq i32 %i.cy, 0
  br i1 %.not67.i, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.cz = getelementptr inbounds nuw i8, ptr %i.ch, i64 5
  %i.da = call ptr (ptr, ...) @curl_maprintf(ptr noundef nonnull @.str.70, ptr noundef nonnull %i.cz) #9 ; 2 uses
  store ptr %i.da, ptr %i.cc, align 8, !tbaa !200
end_hunk_0
