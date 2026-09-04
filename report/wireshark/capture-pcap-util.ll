Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/capture-pcap-util?download=true
inline.NumInlined: 21
inline.NumDeleted: 11
begin_hunk_0_@get_if_capabilities_pcap_create:bb.a
  br i1 %i.af, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.ag = call i32 @pcap_set_rfmon(ptr noundef nonnull %i.e, i32 noundef 1) ; 2 uses
  %i.ah = icmp slt i32 %i.ag, 0
  br i1 %i.ah, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  store i32 6, ptr %1, align 4
  %i.ai = call noalias ptr (ptr, ptr, ...) @wmem_strdup_printf(ptr noundef null, ptr noundef nonnull @.str.5, i32 noundef %i.ag)
  store ptr %i.ai, ptr %2, align 8
  call void @pcap_close(ptr noundef nonnull %i.e)
  call void @g_free(ptr noundef %i.ab)
  br label %bb.al

bb.o:                                             ; preds = %bb.j
  store i32 6, ptr %1, align 4
  %i.aj = call noalias ptr (ptr, ptr, ...) @wmem_strdup_printf(ptr noundef null, ptr noundef nonnull @.str.6, i32 noundef %i.q)
  store ptr %i.aj, ptr %2, align 8
  call void @pcap_close(ptr noundef nonnull %i.e)
  call void @g_free(ptr noundef %i.ab)
  br label %bb.al

bb.p:                                             ; preds = %bb.m, %bb.l, %bb.k
  %i.ak = phi ptr [ %i.ab, %bb.m ], [ %i.ab, %bb.l ], [ %i.ac, %bb.k ] ; 7 uses
  %i.al = call i32 @pcap_activate(ptr noundef nonnull %i.e) ; 3 uses
  %i.am = icmp slt i32 %i.al, 0
  br i1 %i.am, label %bb.q, label %bb.x

bb.q:                                             ; preds = %bb.p
  switch i32 %i.al, label %bb.v [
    i32 -5, label %bb.r
    i32 -8, label %bb.s
    i32 -9, label %bb.t
    i32 -1, label %bb.u
  ]

bb.r:                                             ; preds = %bb.q
  store i32 1, ptr %1, align 4
  %i.an = call ptr @pcap_geterr(ptr noundef nonnull %i.e)
  %i.ao = call noalias ptr (ptr, ptr, ...) @wmem_strdup_printf(ptr noundef null, ptr noundef nonnull @.str.7, ptr noundef %i.an)
  br label %bb.w

bb.s:                                             ; preds = %bb.q
  store i32 3, ptr %1, align 4
  %i.ap = call ptr @pcap_geterr(ptr noundef nonnull %i.e)
  %i.aq = call noalias ptr (ptr, ptr, ...) @wmem_strdup_printf(ptr noundef null, ptr noundef nonnull @.str.7, ptr noundef %i.ap)
  br label %bb.w

bb.t:                                             ; preds = %bb.q
  store i32 4, ptr %1, align 4
  %i.ar = call ptr @pcap_geterr(ptr noundef nonnull %i.e)
  %i.as = call noalias ptr (ptr, ptr, ...) @wmem_strdup_printf(ptr noundef null, ptr noundef nonnull @.str.7, ptr noundef %i.ar)
  br label %bb.w

bb.u:                                             ; preds = %bb.q
  store i32 6, ptr %1, align 4
  %i.at = call ptr @pcap_geterr(ptr noundef nonnull %i.e)
  %i.au = call noalias ptr (ptr, ptr, ...) @wmem_strdup_printf(ptr noundef null, ptr noundef nonnull @.str.7, ptr noundef %i.at)
  br label %bb.w

bb.v:                                             ; preds = %bb.q
  store i32 6, ptr %1, align 4
  %i.av = call ptr @pcap_statustostr(i32 noundef %i.al)
  %i.aw = call ptr @pcap_geterr(ptr noundef nonnull %i.e)
  %i.ax = call noalias ptr (ptr, ptr, ...) @wmem_strdup_printf(ptr noundef null, ptr noundef nonnull @.str.8, ptr noundef %i.av, ptr noundef %i.aw)
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %bb.t, %bb.s, %bb.r
  %.sink107 = phi ptr [ %i.ax, %bb.v ], [ %i.au, %bb.u ], [ %i.as, %bb.t ], [ %i.aq, %bb.s ], [ %i.ao, %bb.r ]
  store ptr %.sink107, ptr %2, align 8
  call void @pcap_close(ptr noundef nonnull %i.e)
  call void @g_free(ptr noundef %i.ak)
  br label %bb.al

bb.x:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  %i.ay = call i32 @pcap_datalink(ptr noundef nonnull %i.e)
  %i.az = call i32 @pcap_list_datalinks(ptr noundef nonnull %i.e, ptr noundef nonnull %i.b) ; 5 uses
  %i.ba = icmp slt i32 %i.az, 0
  br i1 %i.ba, label %bb.y, label %.preheader.i

.preheader.i:                                     ; preds = %bb.x
  %.not.i = icmp eq i32 %i.az, 0
  br i1 %.not.i, label %get_data_link_types.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.preheader.i
  %wide.trip.count.i = zext nneg i32 %i.az to i64
  br label %.lr.ph.i

bb.y:                                             ; preds = %bb.x
  %cond.i = icmp eq i32 %i.az, -1
  store i32 6, ptr %1, align 4
  br i1 %cond.i, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.bb = call ptr @pcap_geterr(ptr noundef nonnull %i.e)
  %i.bc = call noalias ptr (ptr, ptr, ...) @wmem_strdup_printf(ptr noundef null, ptr noundef nonnull @.str.62, ptr noundef %i.bb)
  br label %get_data_link_types.exit.thread

bb.aa:                                            ; preds = %bb.y
  %i.bd = call ptr @pcap_statustostr(i32 noundef %i.az)
  %i.be = call ptr @pcap_geterr(ptr noundef nonnull %i.e)
  %i.bf = call noalias ptr (ptr, ptr, ...) @wmem_strdup_printf(ptr noundef null, ptr noundef nonnull @.str.63, ptr noundef %i.bd, ptr noundef %i.be)
  br label %get_data_link_types.exit.thread

.lr.ph.i:                                         ; preds = %bb.af, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.af ] ; 3 uses
  %.0241.i = phi ptr [ null, %.lr.ph.preheader.i ], [ %.1.i, %bb.af ] ; 2 uses
  %i.bg = load ptr, ptr %i.b, align 8
  %i.bh = getelementptr [4 x i8], ptr %i.bg, i64 %indvars.iv.i
  %i.bi = load i32, ptr %i.bh, align 4            ; 4 uses
  %i.bj = call noalias dereferenceable_or_null(24) ptr @g_malloc(i64 noundef 24) #12 ; 5 uses
  store i32 %i.bi, ptr %i.bj, align 8
  %i.bk = call ptr @pcap_datalink_val_to_name(i32 noundef %i.bi) ; 2 uses
  %.not.i.i = icmp eq ptr %i.bk, null
  br i1 %.not.i.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph.i
  %i.bl = call noalias ptr @g_strdup(ptr noundef nonnull %i.bk)
  br label %g_strdup_inline.exit28.i.i

bb.ac:                                            ; preds = %.lr.ph.i
  %i.bm = call noalias ptr (ptr, ptr, ...) @wmem_strdup_printf(ptr noundef null, ptr noundef nonnull @.str.64, i32 noundef %i.bi)
  br label %g_strdup_inline.exit28.i.i

g_strdup_inline.exit28.i.i:                       ; preds = %bb.ac, %bb.ab
  %.sink.i.i = phi ptr [ %i.bm, %bb.ac ], [ %i.bl, %bb.ab ]
  %i.bn = getelementptr i8, ptr %i.bj, i64 8
  store ptr %.sink.i.i, ptr %i.bn, align 8
  %i.bo = call ptr @pcap_datalink_val_to_description(i32 noundef %i.bi)
  %i.bp = call noalias ptr @g_strdup(ptr noundef %i.bo)
  %i.bq = getelementptr i8, ptr %i.bj, i64 16
  store ptr %i.bp, ptr %i.bq, align 8
  %i.br = load ptr, ptr %i.b, align 8
  %i.bs = getelementptr [4 x i8], ptr %i.br, i64 %indvars.iv.i
  %i.bt = load i32, ptr %i.bs, align 4
  %i.bu = icmp eq i32 %i.bt, %i.ay
  br i1 %i.bu, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %g_strdup_inline.exit28.i.i
  %i.bv = call ptr @g_list_prepend(ptr noundef %.0241.i, ptr noundef %i.bj)
  br label %bb.af

bb.ae:                                            ; preds = %g_strdup_inline.exit28.i.i
  %i.bw = call ptr @g_list_append(ptr noundef %.0241.i, ptr noundef %i.bj)
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %.1.i = phi ptr [ %i.bv, %bb.ad ], [ %i.bw, %bb.ae ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %get_data_link_types.exit, label %.lr.ph.i, !llvm.loop !15

get_data_link_types.exit.thread:                  ; preds = %bb.aa, %bb.z
  %storemerge27.i.ph = phi ptr [ %i.bc, %bb.z ], [ %i.bf, %bb.aa ]
  store ptr %storemerge27.i.ph, ptr %2, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  %i.bx = getelementptr i8, ptr %i.ak, i64 8
  store ptr null, ptr %i.bx, align 8
  br label %bb.ag

get_data_link_types.exit:                         ; preds = %bb.af, %.preheader.i
  %.024.lcssa.i = phi ptr [ null, %.preheader.i ], [ %.1.i, %bb.af ] ; 3 uses
  %i.by = load ptr, ptr %i.b, align 8
  call void @pcap_free_datalinks(ptr noundef %i.by)
  store ptr null, ptr %2, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  %i.bz = getelementptr i8, ptr %i.ak, i64 8      ; 2 uses
  store ptr %.024.lcssa.i, ptr %i.bz, align 8
  %i.ca = icmp eq ptr %.024.lcssa.i, null
  br i1 %i.ca, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %get_data_link_types.exit.thread, %get_data_link_types.exit
  call void @pcap_close(ptr noundef nonnull %i.e)
  call void @g_free(ptr noundef %i.ak)
  br label %bb.al

bb.ah:                                            ; preds = %get_data_link_types.exit
  %i.cb = getelementptr i8, ptr %0, i64 148
  %i.cc = load i8, ptr %i.cb, align 4, !range !6, !noundef !7
  %i.cd = trunc nuw i8 %i.cc to i1
  br i1 %i.cd, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.ce = getelementptr i8, ptr %i.ak, i64 16
  store ptr %.024.lcssa.i, ptr %i.ce, align 8
  store ptr null, ptr %i.bz, align 8
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.cf = call i32 @pcap_list_tstamp_types(ptr noundef nonnull %i.e, ptr noundef nonnull %i.a) ; 2 uses
  %i.cg = icmp slt i32 %i.cf, 1
  br i1 %i.cg, label %get_pcap_timestamp_types.exit, label %.preheader.i84.preheader

.preheader.i84.preheader:                         ; preds = %bb.aj
  %i.ch = zext nneg i32 %i.cf to i64
  br label %.preheader.i84

.preheader.i84:                                   ; preds = %.preheader.i84, %.preheader.i84.preheader
  %indvars.iv = phi i64 [ %i.ch, %.preheader.i84.preheader ], [ %i.ci, %.preheader.i84 ]
  %.0151.i = phi ptr [ null, %.preheader.i84.preheader ], [ %i.cv, %.preheader.i84 ]
  %i.ci = add nsw i64 %indvars.iv, -1             ; 4 uses
  %i.cj = call noalias dereferenceable_or_null(16) ptr @g_malloc(i64 noundef 16) #12 ; 3 uses
  %i.ck = load ptr, ptr %i.a, align 8
  %i.cl = getelementptr [4 x i8], ptr %i.ck, i64 %i.ci
  %i.cm = load i32, ptr %i.cl, align 4
  %i.cn = call ptr @pcap_tstamp_type_val_to_name(i32 noundef %i.cm)
  %i.co = call noalias ptr @g_strdup(ptr noundef %i.cn)
  store ptr %i.co, ptr %i.cj, align 8
  %i.cp = load ptr, ptr %i.a, align 8
  %i.cq = getelementptr [4 x i8], ptr %i.cp, i64 %i.ci
  %i.cr = load i32, ptr %i.cq, align 4
  %i.cs = call ptr @pcap_tstamp_type_val_to_description(i32 noundef %i.cr)
  %i.ct = call noalias ptr @g_strdup(ptr noundef %i.cs)
  %i.cu = getelementptr i8, ptr %i.cj, i64 8
  store ptr %i.ct, ptr %i.cu, align 8
  %i.cv = call ptr @g_list_prepend(ptr noundef %.0151.i, ptr noundef %i.cj) ; 2 uses
  %.not.i86.wide = icmp eq i64 %i.ci, 0
  br i1 %.not.i86.wide, label %bb.ak, label %.preheader.i84, !llvm.loop !16

bb.ak:                                            ; preds = %.preheader.i84
  %i.cw = load ptr, ptr %i.a, align 8
  call void @pcap_free_tstamp_types(ptr noundef %i.cw)
  br label %get_pcap_timestamp_types.exit

get_pcap_timestamp_types.exit:                    ; preds = %bb.aj, %bb.ak
  %.0.i87 = phi ptr [ %i.cv, %bb.ak ], [ null, %bb.aj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  %i.cx = getelementptr i8, ptr %i.ak, i64 24
  store ptr %.0.i87, ptr %i.cx, align 8
  call void @pcap_close(ptr noundef nonnull %i.e)
  store i32 0, ptr %1, align 4
  store ptr null, ptr %2, align 8
  br label %bb.al

bb.al:                                            ; preds = %get_pcap_timestamp_types.exit, %bb.ag, %bb.w, %bb.o, %bb.n, %bb.i, %g_strdup_inline.exit
  %.078 = phi ptr [ null, %g_strdup_inline.exit ], [ null, %bb.i ], [ null, %bb.w ], [ null, %bb.ag ], [ %i.ak, %get_pcap_timestamp_types.exit ], [ null, %bb.n ], [ null, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  ret ptr %.078
}

; Function Attrs: null_pointer_is_valid
declare ptr @pcap_create(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @pcap_can_set_rfmon(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare noalias ptr @wmem_strdup_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @pcap_statustostr(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @pcap_close(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare noalias ptr @g_malloc0(i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare i32 @pcap_set_rfmon(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @pcap_activate(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden ptr @open_capture_device_pcap_create(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8
  %i.b = tail call ptr @pcap_create(ptr noundef %i.a, ptr noundef %4) ; 40 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 6, ptr %3, align 4
  br label %bb.aw

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %1, i64 52
  %i.e = load i8, ptr %i.d, align 4, !range !6, !noundef !7
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr i8, ptr %1, i64 56
  %i.h = load i32, ptr %i.g, align 8
  %i.i = tail call i32 @pcap_set_snaplen(ptr noundef nonnull %i.b, i32 noundef %i.h) ; 3 uses
  %i.j = icmp slt i32 %i.i, 0
  br i1 %i.j, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %cond.i = icmp eq i32 %i.i, -1
  br i1 %cond.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.k = tail call ptr @pcap_geterr(ptr noundef nonnull %i.b)
  br label %set_open_status_str.exit

bb.g:                                             ; preds = %bb.e
  %i.l = tail call ptr @pcap_statustostr(i32 noundef range(i32 -2147483648, 0) %i.i)
  br label %set_open_status_str.exit

set_open_status_str.exit:                         ; preds = %bb.f, %bb.g
  %.sink.i = phi ptr [ %i.l, %bb.g ], [ %i.k, %bb.f ]
  %i.m = tail call i64 @g_strlcpy(ptr noundef %4, ptr noundef %.sink.i, i64 noundef 256) ; 0 uses
  store i32 6, ptr %3, align 4
  tail call void @pcap_close(ptr noundef nonnull %i.b)
  br label %bb.aw

bb.h:                                             ; preds = %bb.c, %bb.d
  %i.n = getelementptr i8, ptr %1, i64 64
  %i.o = load i8, ptr %i.n, align 8, !range !6, !noundef !7
  %i.p = zext nneg i8 %i.o to i32
  %i.q = tail call i32 @pcap_set_promisc(ptr noundef nonnull %i.b, i32 noundef %i.p) ; 3 uses
  %i.r = icmp slt i32 %i.q, 0
  br i1 %i.r, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %cond.i119 = icmp eq i32 %i.q, -1
  br i1 %cond.i119, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.s = tail call ptr @pcap_geterr(ptr noundef nonnull %i.b)
  br label %set_open_status_str.exit121

bb.k:                                             ; preds = %bb.i
  %i.t = tail call ptr @pcap_statustostr(i32 noundef range(i32 -2147483648, 0) %i.q)
  br label %set_open_status_str.exit121

set_open_status_str.exit121:                      ; preds = %bb.j, %bb.k
  %.sink.i120 = phi ptr [ %i.t, %bb.k ], [ %i.s, %bb.j ]
  %i.u = tail call i64 @g_strlcpy(ptr noundef %4, ptr noundef %.sink.i120, i64 noundef 256) ; 0 uses
  store i32 6, ptr %3, align 4
  tail call void @pcap_close(ptr noundef nonnull %i.b)
  br label %bb.aw

bb.l:                                             ; preds = %bb.h
  %i.v = tail call i32 @pcap_set_timeout(ptr noundef nonnull %i.b, i32 noundef %2) ; 3 uses
  %i.w = icmp slt i32 %i.v, 0
  br i1 %i.w, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %cond.i122 = icmp eq i32 %i.v, -1
  br i1 %cond.i122, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.x = tail call ptr @pcap_geterr(ptr noundef nonnull %i.b)
  br label %set_open_status_str.exit124

bb.o:                                             ; preds = %bb.m
  %i.y = tail call ptr @pcap_statustostr(i32 noundef range(i32 -2147483648, 0) %i.v)
  br label %set_open_status_str.exit124

set_open_status_str.exit124:                      ; preds = %bb.n, %bb.o
  %.sink.i123 = phi ptr [ %i.y, %bb.o ], [ %i.x, %bb.n ]
  %i.z = tail call i64 @g_strlcpy(ptr noundef %4, ptr noundef %.sink.i123, i64 noundef 256) ; 0 uses
  store i32 6, ptr %3, align 4
  tail call void @pcap_close(ptr noundef nonnull %i.b)
  br label %bb.aw

bb.p:                                             ; preds = %bb.l
  %i.aa = tail call i32 @pcap_set_tstamp_precision(ptr noundef nonnull %i.b, i32 noundef 1) ; 2 uses
  %i.ab = icmp eq i32 %i.aa, -12
  %spec.store.select.i = select i1 %i.ab, i32 0, i32 %i.aa ; 3 uses
  %i.ac = icmp slt i32 %spec.store.select.i, 0
  br i1 %i.ac, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  %cond.i125 = icmp eq i32 %spec.store.select.i, -1
  br i1 %cond.i125, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ad = tail call ptr @pcap_geterr(ptr noundef nonnull %i.b)
  br label %set_open_status_str.exit127

bb.s:                                             ; preds = %bb.q
  %i.ae = tail call ptr @pcap_statustostr(i32 noundef range(i32 -2147483648, 0) %spec.store.select.i)
  br label %set_open_status_str.exit127

set_open_status_str.exit127:                      ; preds = %bb.r, %bb.s
  %.sink.i126 = phi ptr [ %i.ae, %bb.s ], [ %i.ad, %bb.r ]
  %i.af = tail call i64 @g_strlcpy(ptr noundef %4, ptr noundef %.sink.i126, i64 noundef 256) ; 0 uses
  store i32 6, ptr %3, align 4
  tail call void @pcap_close(ptr noundef nonnull %i.b)
  br label %bb.aw

bb.t:                                             ; preds = %bb.p
  %i.ag = getelementptr i8, ptr %1, i64 152
  %i.ah = load ptr, ptr %i.ag, align 8
  %.not = icmp eq ptr %i.ah, null
  br i1 %.not, label %bb.y, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ai = getelementptr i8, ptr %1, i64 160
  %i.aj = load i32, ptr %i.ai, align 8
  %i.ak = tail call i32 @pcap_set_tstamp_type(ptr noundef nonnull %i.b, i32 noundef %i.aj) ; 3 uses
  %i.al = icmp slt i32 %i.ak, 0
  br i1 %i.al, label %bb.v, label %bb.y

end_hunk_0
