Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/curl/original/http?download=true
inline.NumInlined: 80
inline.NumDeleted: 55
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@Curl_add_custom_headers:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret i32 %.3
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #5

declare i32 @curlx_str_casecompare(ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @curlx_dyn_addf(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define i32 @Curl_add_timecondition(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 {
bb.a:
  %2 = alloca %struct.tm, align 8                 ; 10 uses
  %i.a = alloca [80 x i8], align 16               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2181 ; 2 uses
  %i.c = load i8, ptr %i.b, align 1, !tbaa !127
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 792
  %i.f = load i64, ptr %i.e, align 8, !tbaa !185
  %i.g = call i32 @curlx_gmtime(i64 noundef %i.f, ptr noundef nonnull %2) #9 ; 2 uses
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void (ptr, ptr, ...) @Curl_failf(ptr noundef nonnull %0, ptr noundef nonnull @.str.20) #9
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.h = load i8, ptr %i.b, align 1, !tbaa !127
  %switch.tableidx = add i8 %i.h, -1              ; 3 uses
  %i.i = icmp ult i8 %switch.tableidx, 3
  br i1 %i.i, label %switch.lookup, label %bb.f

switch.lookup:                                    ; preds = %bb.d
  %i.j = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.Curl_add_timecondition, i64 %i.j
  %switch.load = load ptr, ptr %switch.gep, align 8 ; 2 uses
  %i.k = zext nneg i8 %switch.tableidx to i64
  %switch.gep27 = getelementptr inbounds nuw i8, ptr @switch.table.Curl_add_timecondition.6, i64 %i.k
  %switch.load28 = load i8, ptr %switch.gep27, align 1
  %switch.ext = zext i8 %switch.load28 to i64
  %i.l = call ptr @Curl_checkheaders(ptr noundef nonnull %0, ptr noundef nonnull %switch.load, i64 noundef %switch.ext) #9
  %.not24 = icmp eq ptr %i.l, null
  br i1 %.not24, label %bb.e, label %bb.f

bb.e:                                             ; preds = %switch.lookup
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.n = load i32, ptr %i.m, align 8, !tbaa !187  ; 2 uses
  %.not25 = icmp eq i32 %i.n, 0
  %i.o = add nsw i32 %i.n, -1
  %narrow = select i1 %.not25, i32 6, i32 %i.o
  %i.p = sext i32 %narrow to i64
  %i.q = getelementptr inbounds [8 x i8], ptr @Curl_wkday, i64 %i.p
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !86
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.t = load i32, ptr %i.s, align 4, !tbaa !188
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.v = load i32, ptr %i.u, align 8, !tbaa !189
  %i.w = sext i32 %i.v to i64
  %i.x = getelementptr inbounds [8 x i8], ptr @Curl_month, i64 %i.w
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !86
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !190
  %i.ab = add nsw i32 %i.aa, 1900
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !191
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !192
  %i.ag = load i32, ptr %2, align 8, !tbaa !193
  %i.ah = call i32 (ptr, i64, ptr, ...) @curl_msnprintf(ptr noundef nonnull %i.a, i64 noundef 80, ptr noundef nonnull @.str.24, ptr noundef nonnull %switch.load, ptr noundef %i.r, i32 noundef %i.t, ptr noundef %i.y, i32 noundef %i.ab, i32 noundef %i.ad, i32 noundef %i.af, i32 noundef %i.ag) #9 ; 0 uses
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
define void @Curl_http_method(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %1, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %2) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4627
  %i.b = load i8, ptr %i.a, align 1, !tbaa !108   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !90
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 728
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !128
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load i64, ptr %i.g, align 8, !tbaa !131  ; 2 uses
  %i.i = and i64 %i.h, 3221225472
  %.not = icmp eq i64 %i.i, 0
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.j = and i64 %i.h, 7
  %.not14 = icmp eq i64 %i.j, 0
  br i1 %.not14, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 4628
  %i.l = load i32, ptr %i.k, align 4
  %i.m = and i32 %i.l, 32768
  %.not15 = icmp eq i32 %i.m, 0
  %spec.select = select i1 %.not15, i8 %i.b, i8 4
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a, %bb.b
  %.012.shrunk = phi i8 [ %i.b, %bb.b ], [ 0, %bb.a ], [ %spec.select, %bb.c ] ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1528
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !86   ; 2 uses
  %.not16 = icmp eq ptr %i.o, null
  br i1 %.not16, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 4628
  %i.q = load i32, ptr %i.p, align 4
  %i.r = and i32 %i.q, 131072
  %.not17 = icmp eq i32 %i.r, 0
  br i1 %.not17, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 417
  %i.t = load i32, ptr %i.s, align 1
  %i.u = and i32 %i.t, 65536
  %.not18 = icmp eq i32 %i.u, 0
  br i1 %.not18, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %switch.tableidx = add i8 %.012.shrunk, -1      ; 2 uses
  %i.v = icmp ult i8 %switch.tableidx, 5
  br i1 %i.v, label %switch.lookup, label %bb.h

switch.lookup:                                    ; preds = %bb.g
  %i.w = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.Curl_http, i64 %i.w
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %switch.lookup, %bb.f, %bb.e
  %.0 = phi ptr [ %i.o, %bb.e ], [ @.str.28, %bb.g ], [ @.str.25, %bb.f ], [ %switch.load, %switch.lookup ]
  %.012 = zext i8 %.012.shrunk to i32
  store ptr %.0, ptr %1, align 8, !tbaa !86
  store i32 %.012, ptr %2, align 4, !tbaa !111
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @Curl_http(ptr noundef %0, ptr nofree noundef writeonly captures(none) initializes((0, 1)) %1) #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = alloca ptr, align 8                      ; 8 uses
  %2 = alloca %struct.Curl_str, align 8           ; 7 uses
  %i.c = alloca ptr, align 8                      ; 8 uses
  %3 = alloca %struct.Curl_str, align 8           ; 7 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  %i.e = alloca ptr, align 8                      ; 7 uses
  %4 = alloca %struct.Curl_llist, align 8         ; 5 uses
  %i.f = alloca i8, align 1                       ; 4 uses
  %i.g = alloca ptr, align 8                      ; 5 uses
  %5 = alloca %struct.dynbuf, align 8             ; 44 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #9
  store i8 1, ptr %1, align 1, !tbaa !133
  call void @curlx_dyn_init(ptr noundef nonnull %5, i64 noundef 1048576) #9
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 2816
  call void @curlx_dyn_reset(ptr noundef nonnull %i.h) #9
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4628 ; 15 uses
  %i.j = load i32, ptr %i.i, align 4
  %i.k = and i32 %i.j, -2097153
  store i32 %i.k, ptr %i.i, align 4
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 8 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !90   ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 720 ; 2 uses
  %i.o = load i32, ptr %i.n, align 8
  %i.p = and i32 %i.o, 8
  %.not = icmp eq i32 %i.p, 0
  br i1 %.not, label %bb.b, label %http_check_new_conn.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.q = call ptr @Curl_conn_get_alpn_negotiated(ptr noundef nonnull %0, ptr noundef nonnull %i.m) #9 ; 5 uses
  %.not.i = icmp eq ptr %i.q, null
  br i1 %.not.i, label %.critedge.i, label %sub_0.i

sub_0.i:                                          ; preds = %bb.b
  %i.r = load i8, ptr %i.q, align 1
  %.not37.i = icmp eq i8 %i.r, 104
  br i1 %.not37.i, label %sub_1.i, label %.critedge.i

sub_1.i:                                          ; preds = %sub_0.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 1
  %i.t = load i8, ptr %i.s, align 1               ; 3 uses
  %.not38.i = icmp eq i8 %i.t, 51
  br i1 %.not38.i, label %.tail.i.thread, label %sub_033.i

.tail.i.thread:                                   ; preds = %sub_1.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 2
  %i.v = load i8, ptr %i.u, align 1
  %.not25.i120 = icmp eq i8 %i.v, 0
  %spec.select = select i1 %.not25.i120, ptr @.str.65, ptr @.str.68
  br label %.critedge.i

sub_033.i:                                        ; preds = %sub_1.i
  %i.w = zext i8 %i.t to i32
  %i.x = sub nsw i32 50, %i.w
  %.not40.i = icmp eq i8 %i.t, 50
  br i1 %.not40.i, label %sub_235.i, label %.tail32.i

sub_235.i:                                        ; preds = %sub_033.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.q, i64 2
  %i.z = load i8, ptr %i.y, align 1
  %i.aa = zext i8 %i.z to i32
  %i.ab = sub nsw i32 0, %i.aa
  br label %.tail32.i

.tail32.i:                                        ; preds = %sub_235.i, %sub_033.i
  %6 = phi i32 [ %i.ab, %sub_235.i ], [ %i.x, %sub_033.i ]
  %.not26.i = icmp eq i32 %6, 0
  br i1 %.not26.i, label %bb.c, label %.critedge.i

bb.c:                                             ; preds = %.tail32.i
  %i.ac = call zeroext i8 @Curl_conn_http_version(ptr noundef nonnull %0, ptr noundef nonnull %i.m) #9
  %.not27.i = icmp eq i8 %i.ac, 20
  br i1 %.not27.i, label %.critedge.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ad = load i32, ptr %i.n, align 8
  %i.ae = and i32 %i.ad, 2
  %.not28.i = icmp eq i32 %i.ae, 0
  br i1 %.not28.i, label %.critedge.i, label %http_check_new_conn.exit.thread152

.critedge.i:                                      ; preds = %.tail.i.thread, %sub_0.i, %bb.d, %bb.c, %.tail32.i, %bb.b
  %.0.i = phi ptr [ @.str.67, %bb.c ], [ %spec.select, %.tail.i.thread ], [ @.str.67, %bb.d ], [ @.str.68, %bb.b ], [ @.str.68, %.tail32.i ], [ @.str.68, %sub_0.i ]
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 2187
  %i.ag = load i64, ptr %i.af, align 1
  %i.ah = and i64 %i.ag, 536870912
  %.not30.i = icmp eq i64 %i.ah, 0
  br i1 %.not30.i, label %http_check_new_conn.exit.thread, label %bb.e

bb.e:                                             ; preds = %.critedge.i
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 4504
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !101 ; 2 uses
  %.not31.i = icmp eq ptr %i.aj, null
  br i1 %.not31.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !103
  %i.am = icmp sgt i32 %i.al, 0
  br i1 %i.am, label %bb.g, label %http_check_new_conn.exit.thread

bb.g:                                             ; preds = %bb.f, %bb.e
  call void (ptr, ptr, ...) @Curl_infof(ptr noundef nonnull %0, ptr noundef nonnull @.str.69, ptr noundef nonnull %.0.i) #9
  br label %http_check_new_conn.exit.thread

http_check_new_conn.exit.thread:                  ; preds = %bb.g, %bb.f, %.critedge.i, %bb.a
  %i.an = call i32 @Curl_headers_init(ptr noundef nonnull %0) #9 ; 2 uses
  %.not48 = icmp eq i32 %i.an, 0
  br i1 %.not48, label %bb.h, label %http_check_new_conn.exit

bb.h:                                             ; preds = %http_check_new_conn.exit.thread
  %i.ao = load i32, ptr %i.i, align 4             ; 3 uses
  %i.ap = and i32 %i.ao, -1835009
  store i32 %i.ap, ptr %i.i, align 4
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 4627
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !108 ; 2 uses
  %i.as = load ptr, ptr %i.l, align 8, !tbaa !90  ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 728
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !128
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !131 ; 2 uses
  %i.ax = and i64 %i.aw, 3221225472
  %.not.i57 = icmp eq i64 %i.ax, 0
  br i1 %.not.i57, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.ay = and i64 %i.aw, 7
  %.not14.i = icmp eq i64 %i.ay, 0
  br i1 %.not14.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.az = and i32 %i.ao, 32768
  %.not15.i = icmp eq i32 %i.az, 0
  %spec.select.i = select i1 %.not15.i, i8 %i.ar, i8 4
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  %.012.shrunk.i = phi i8 [ %i.ar, %bb.i ], [ 0, %bb.h ], [ %spec.select.i, %bb.j ] ; 8 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 1528
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !86 ; 2 uses
  %.not16.i = icmp ne ptr %i.bb, null
  %i.bc = and i32 %i.ao, 131072
  %.not17.i = icmp eq i32 %i.bc, 0
  %or.cond = select i1 %.not16.i, i1 %.not17.i, i1 false
  br i1 %or.cond, label %Curl_http_method.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 417
  %i.be = load i32, ptr %i.bd, align 1
  %i.bf = and i32 %i.be, 65536
  %.not18.i = icmp eq i32 %i.bf, 0
  br i1 %.not18.i, label %bb.m, label %Curl_http_method.exit

bb.m:                                             ; preds = %bb.l
  %switch.tableidx = add i8 %.012.shrunk.i, -1    ; 2 uses
  %i.bg = icmp ult i8 %switch.tableidx, 5
  br i1 %i.bg, label %switch.lookup, label %Curl_http_method.exit

switch.lookup:                                    ; preds = %bb.m
  %i.bh = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.Curl_http, i64 %i.bh
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %Curl_http_method.exit

Curl_http_method.exit:                            ; preds = %bb.m, %switch.lookup, %bb.k, %bb.l
  %.0.i58 = phi ptr [ %i.bb, %bb.k ], [ @.str.28, %bb.m ], [ @.str.25, %bb.l ], [ %switch.load, %switch.lookup ] ; 2 uses
  %.012.i = zext i8 %.012.shrunk.i to i32         ; 2 uses
  %i.bi = load ptr, ptr @Curl_cfree, align 8, !tbaa !106
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 4600 ; 5 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !207
  call void %i.bi(ptr noundef %i.bk) #9, !inline_history !194
  store ptr null, ptr %i.bj, align 8, !tbaa !207
  %i.bl = load ptr, ptr @Curl_cfree, align 8, !tbaa !106
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 4 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !134
  call void %i.bl(ptr noundef %i.bn) #9, !inline_history !194
  store ptr null, ptr %i.bm, align 8, !tbaa !134
  %i.bo = call ptr @Curl_checkheaders(ptr noundef nonnull %0, ptr noundef nonnull @.str.11, i64 noundef 4) #9 ; 4 uses
  %.not.i59 = icmp eq ptr %i.bo, null
  br i1 %.not.i59, label %bb.y, label %bb.n

bb.n:                                             ; preds = %Curl_http_method.exit
  %i.bp = load i32, ptr %i.i, align 4
  %i.bq = and i32 %i.bp, 2
  %.not47.i = icmp eq i32 %i.bq, 0
  br i1 %.not47.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 2864
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !208
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 2872
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !135
  %i.bv = call zeroext i1 @Curl_peer_equal(ptr noundef %i.bs, ptr noundef %i.bu) #9
  br i1 %i.bv, label %bb.p, label %bb.y

bb.p:                                             ; preds = %bb.o, %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #9
  %i.bw = call fastcc i32 @copy_custom_value(ptr noundef nonnull %i.bo, ptr noundef %i.g) ; 2 uses
  %.not51.i = icmp eq i32 %i.bw, 0
  br i1 %.not51.i, label %bb.q, label %.thread.i

bb.q:                                             ; preds = %bb.p
  %i.bx = load ptr, ptr %i.g, align 8, !tbaa !86  ; 8 uses
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !84
  switch i8 %i.by, label %bb.t [
    i8 0, label %bb.r
    i8 91, label %bb.s
  ]

bb.r:                                             ; preds = %bb.q
  %i.bz = load ptr, ptr @Curl_cfree, align 8, !tbaa !106
  call void %i.bz(ptr noundef nonnull %i.bx) #9, !inline_history !194
  br label %bb.v

bb.s:                                             ; preds = %bb.q
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 1
  %i.cb = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bx) #10
  %i.cc = add i64 %i.cb, -1
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.bx, ptr nonnull align 1 %i.ca, i64 %i.cc, i1 false)
  %i.cd = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.bx, i32 noundef 93) #10 ; 2 uses
  %.not54.i = icmp eq ptr %i.cd, null
  br i1 %.not54.i, label %bb.u, label %.sink.split.i

bb.t:                                             ; preds = %bb.q
  %i.ce = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.bx, i32 noundef 58) #10 ; 2 uses
  %.not53.i = icmp eq ptr %i.ce, null
  br i1 %.not53.i, label %bb.u, label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.t, %bb.s
  %.sink.i = phi ptr [ %i.cd, %bb.s ], [ %i.ce, %bb.t ]
  store i8 0, ptr %.sink.i, align 1, !tbaa !84
  br label %bb.u

bb.u:                                             ; preds = %.sink.split.i, %bb.t, %bb.s
  store ptr %i.bx, ptr %i.bm, align 8, !tbaa !134
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.r
  %i.cf = call i32 @curl_strequal(ptr noundef nonnull @.str.70, ptr noundef nonnull %i.bo) #9
  %.not55.i = icmp eq i32 %i.cf, 0
  br i1 %.not55.i, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bo, i64 5
  %i.ch = call ptr (ptr, ...) @curl_maprintf(ptr noundef nonnull @.str.71, ptr noundef nonnull %i.cg) #9 ; 2 uses
  store ptr %i.ch, ptr %i.bj, align 8, !tbaa !207
  %.not56.i = icmp eq ptr %i.ch, null
  br i1 %.not56.i, label %.thread.i, label %bb.x

.thread.i:                                        ; preds = %bb.w, %bb.p
  %.040.ph.i = phi i32 [ 27, %bb.w ], [ %i.bw, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #9
  br label %http_check_new_conn.exit.thread152

bb.x:                                             ; preds = %bb.w, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #9
  br label %bb.ad

bb.y:                                             ; preds = %bb.o, %Curl_http_method.exit
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 2872
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !135 ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 35 ; 2 uses
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !84
  %i.cm = icmp eq i8 %i.cl, 91
  br i1 %i.cm, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !137
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.cp = phi ptr [ %i.co, %bb.z ], [ %i.ck, %bb.y ] ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.as, i64 736
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !209
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !131 ; 2 uses
  %i.cu = and i64 %i.ct, 2147483650
  %.not48.i = icmp ne i64 %i.cu, 0
  %.phi.trans.insert.i.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.cj, i64 32
  %.pre.i.pre = load i16, ptr %.phi.trans.insert.i.phi.trans.insert, align 8, !tbaa !138 ; 3 uses
  %i.cv = icmp eq i16 %.pre.i.pre, 443
  %or.cond255 = select i1 %.not48.i, i1 %i.cv, i1 false
end_hunk_0
