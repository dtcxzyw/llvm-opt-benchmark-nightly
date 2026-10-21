Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/curl/original/tool_setopt?download=true
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@tool_setopt_slist:.thread435.thread
; Function Attrs: nounwind uwtable
define internal fastcc i32 @libcurl_generate_slist(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef nonnull captures(none) initializes((0, 4)) %1) unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr @easysrc_slist_count, align 4, !tbaa !30
  %i.b = add nsw i32 %i.a, 1                      ; 3 uses
  store i32 %i.b, ptr @easysrc_slist_count, align 4, !tbaa !30
  store i32 %i.b, ptr %1, align 4, !tbaa !30
  %i.c = tail call i32 (ptr, ptr, ...) @easysrc_addf(ptr noundef nonnull @easysrc_decl, ptr noundef nonnull @.str.98, i32 noundef %i.b) #9 ; 2 uses
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %1, align 4, !tbaa !30
  %i.e = tail call i32 (ptr, ptr, ...) @easysrc_addf(ptr noundef nonnull @easysrc_data, ptr noundef nonnull @.str.97, i32 noundef %i.d) #9 ; 2 uses
  %.not28 = icmp eq i32 %i.e, 0
  br i1 %.not28, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.f = load i32, ptr %1, align 4, !tbaa !30
  %i.g = tail call i32 (ptr, ptr, ...) @easysrc_addf(ptr noundef nonnull @easysrc_clean, ptr noundef nonnull @.str.99, i32 noundef %i.f) #9 ; 2 uses
  %.not29 = icmp eq i32 %i.g, 0
  br i1 %.not29, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  %i.h = load i32, ptr %1, align 4, !tbaa !30
  %i.i = tail call i32 (ptr, ptr, ...) @easysrc_addf(ptr noundef nonnull @easysrc_clean, ptr noundef nonnull @.str.97, i32 noundef %i.h) #9 ; 2 uses
  %.not30 = icmp eq i32 %i.i, 0
  br i1 %.not30, label %.preheader, label %.critedge

.preheader:                                       ; preds = %bb.d
  %.not3145.not = icmp eq ptr %0, null
  br i1 %.not3145.not, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %bb.e
  %.02546 = phi ptr [ %i.o, %bb.e ], [ %0, %.preheader ] ; 2 uses
  %i.j = load ptr, ptr %.02546, align 8, !tbaa !44
  %i.k = tail call fastcc ptr @c_escape(ptr noundef %i.j, i64 noundef -1) ; 3 uses
  %.not33.not = icmp eq ptr %i.k, null
  br i1 %.not33.not, label %.critedge, label %bb.e

bb.e:                                             ; preds = %.lr.ph
  %i.l = load i32, ptr %1, align 4, !tbaa !30     ; 2 uses
  %i.m = tail call i32 (ptr, ptr, ...) @easysrc_addf(ptr noundef nonnull @easysrc_data, ptr noundef nonnull @.str.100, i32 noundef %i.l, i32 noundef %i.l, ptr noundef nonnull %i.k) #9 ; 2 uses
  tail call void @free(ptr noundef nonnull %i.k) #9
  %i.n = getelementptr inbounds nuw i8, ptr %.02546, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !45   ; 2 uses
  %.not31 = icmp ne ptr %i.o, null
  %.not32 = icmp eq i32 %i.m, 0
  %or.cond = select i1 %.not31, i1 %.not32, i1 false
  br i1 %or.cond, label %.lr.ph, label %.critedge, !llvm.loop !42

.critedge:                                        ; preds = %bb.e, %.lr.ph, %.preheader, %bb.a, %bb.b, %bb.c, %bb.d
  %.224 = phi i32 [ %i.e, %bb.b ], [ %i.c, %bb.a ], [ %i.i, %bb.d ], [ %i.g, %bb.c ], [ 0, %.preheader ], [ %i.m, %bb.e ], [ 27, %.lr.ph ]
  ret i32 %.224
}

; Function Attrs: nounwind uwtable
define i32 @tool_setopt_long(ptr noundef %0, ptr noundef %1, i32 noundef %2, i64 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(23) @.str.101) #10
  %.not438 = icmp eq i32 %i.a, 0
  br i1 %.not438, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.a
  %.0435442.lcssa = phi ptr [ @setopt_nv_CURLNONZERODEFAULTS, %bb.a ], [ getelementptr inbounds nuw (i8, ptr @setopt_nv_CURLNONZERODEFAULTS, i64 16), %bb.c ], [ getelementptr inbounds nuw (i8, ptr @setopt_nv_CURLNONZERODEFAULTS, i64 32), %bb.d ], [ getelementptr inbounds nuw (i8, ptr @setopt_nv_CURLNONZERODEFAULTS, i64 48), %bb.e ], [ getelementptr inbounds nuw (i8, ptr @setopt_nv_CURLNONZERODEFAULTS, i64 64), %bb.f ], [ getelementptr inbounds nuw (i8, ptr @setopt_nv_CURLNONZERODEFAULTS, i64 80), %bb.g ], [ getelementptr inbounds nuw (i8, ptr @setopt_nv_CURLNONZERODEFAULTS, i64 96), %bb.h ], [ getelementptr inbounds nuw (i8, ptr @setopt_nv_CURLNONZERODEFAULTS, i64 112), %bb.i ], [ getelementptr inbounds nuw (i8, ptr @setopt_nv_CURLNONZERODEFAULTS, i64 128), %bb.j ]
  %i.b = getelementptr inbounds nuw i8, ptr %.0435442.lcssa, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !25
  br label %.thread.thread

bb.c:                                             ; preds = %bb.a
  %i.d = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(23) @.str.102) #10
  %.not438.1 = icmp eq i32 %i.d, 0
  br i1 %.not438.1, label %bb.b, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(23) @.str.103) #10
  %.not438.2 = icmp eq i32 %i.e, 0
  br i1 %.not438.2, label %bb.b, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(24) @.str.104) #10
  %.not438.3 = icmp eq i32 %i.f, 0
  br i1 %.not438.3, label %bb.b, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(20) @.str.105) #10
  %.not438.4 = icmp eq i32 %i.g, 0
  br i1 %.not438.4, label %bb.b, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.h = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(29) @.str.106) #10
  %.not438.5 = icmp eq i32 %i.h, 0
  br i1 %.not438.5, label %bb.b, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.i = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(29) @.str.107) #10
  %.not438.6 = icmp eq i32 %i.i, 0
  br i1 %.not438.6, label %bb.b, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.j = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(20) @.str.108) #10
  %.not438.7 = icmp eq i32 %i.j, 0
  br i1 %.not438.7, label %bb.b, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.k = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(21) @.str.109) #10
  %.not438.8 = icmp eq i32 %i.k, 0
  br i1 %.not438.8, label %bb.b, label %.thread.thread

.thread.thread:                                   ; preds = %bb.b, %bb.j
  %.0 = phi i64 [ %i.c, %bb.b ], [ 0, %bb.j ]
  %i.l = tail call i32 (ptr, i32, ...) @curl_easy_setopt(ptr noundef %0, i32 noundef %2, i64 noundef %3) #9 ; 3 uses
  %.not439 = icmp eq i64 %3, %.0
  br i1 %.not439, label %bb.m, label %bb.k

bb.k:                                             ; preds = %.thread.thread
  %i.m = load ptr, ptr @global, align 8, !tbaa !10
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 224
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !23
  %i.p = icmp eq ptr %i.o, null
  %i.q = icmp ne i32 %i.l, 0
  %or.cond255 = select i1 %i.p, i1 true, i1 %i.q
  br i1 %or.cond255, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.r = tail call i32 (ptr, ptr, ...) @easysrc_addf(ptr noundef nonnull @easysrc_code, ptr noundef nonnull @.str.62, ptr noundef nonnull %1, i64 noundef %3) #9
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %.thread.thread
  %.0434 = phi i32 [ %i.l, %bb.k ], [ %i.r, %bb.l ], [ %i.l, %.thread.thread ]
  ret i32 %.0434
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define i32 @tool_setopt_offt(ptr noundef %0, ptr noundef %1, i32 noundef %2, i64 noundef %3) local_unnamed_addr #0 {
.thread.thread:
  %i.a = tail call i32 (ptr, i32, ...) @curl_easy_setopt(ptr noundef %0, i32 noundef %2, i64 noundef %3) #9 ; 2 uses
  %i.b = load ptr, ptr @global, align 8, !tbaa !10
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 224
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !23
  %i.e = icmp ne ptr %i.d, null
  %i.f = icmp eq i32 %i.a, 0
  %or.cond255.not432 = select i1 %i.e, i1 %i.f, i1 false
  %i.g = icmp ne i64 %3, 0
  %or.cond257 = and i1 %i.g, %or.cond255.not432
  br i1 %or.cond257, label %bb.a, label %bb.b

bb.a:                                             ; preds = %.thread.thread
  %i.h = tail call i32 (ptr, ptr, ...) @easysrc_addf(ptr noundef nonnull @easysrc_code, ptr noundef nonnull @.str.73, ptr noundef %1, i64 noundef %3) #9
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %.thread.thread
  %.0 = phi i32 [ %i.h, %bb.a ], [ %i.a, %.thread.thread ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define i32 @tool_setopt_ptr(ptr noundef %0, ptr noundef %1, i32 noundef %2, ...) local_unnamed_addr #0 {
bb.a:
  %3 = alloca [1 x %struct.__va_list_tag], align 16 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #9
  call void @llvm.va_start.p0(ptr nonnull %3)
  %i.a = load i32, ptr %3, align 16               ; 3 uses
  %i.b = icmp ult i32 %i.a, 41
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.d = load ptr, ptr %i.c, align 16
  %i.e = zext nneg i32 %i.a to i64
  %i.f = getelementptr i8, ptr %i.d, i64 %i.e
  %i.g = add nuw nsw i32 %i.a, 8
  store i32 %i.g, ptr %3, align 16
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = getelementptr i8, ptr %i.i, i64 8
  store ptr %i.j, ptr %i.h, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.k = phi ptr [ %i.f, %bb.b ], [ %i.i, %bb.c ]
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !46   ; 2 uses
  %i.m = call i32 (ptr, i32, ...) @curl_easy_setopt(ptr noundef %0, i32 noundef %2, ptr noundef %i.l) #9 ; 2 uses
  %i.n = load ptr, ptr @global, align 8, !tbaa !10
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 224
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !23
  %i.q = icmp eq ptr %i.p, null
  %i.r = icmp eq ptr %i.l, null
  %or.cond255.not434 = or i1 %i.q, %i.r
  %i.s = icmp ne i32 %i.m, 0
  %or.cond257 = select i1 %or.cond255.not434, i1 true, i1 %i.s
  br i1 %or.cond257, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %4 = icmp ult i32 %2, 20000                     ; 2 uses
  %i.t = select i1 %4, ptr @.str.75, ptr @.str.74
  %i.u = select i1 %4, ptr @.str.77, ptr @.str.32
  %i.v = call i32 (ptr, ptr, ...) @easysrc_addf(ptr noundef nonnull @easysrc_toohard, ptr noundef nonnull @.str.76, ptr noundef %1, ptr noundef nonnull %i.u, ptr noundef nonnull %i.t) #9
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0 = phi i32 [ %i.m, %bb.d ], [ %i.v, %bb.e ]
  call void @llvm.va_end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #4

; Function Attrs: nounwind uwtable
define i32 @tool_setopt_str(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ...) local_unnamed_addr #0 {
bb.a:
  %4 = alloca [1 x %struct.__va_list_tag], align 16 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  call void @llvm.va_start.p0(ptr nonnull %4)
  %i.a = load i32, ptr %4, align 16               ; 3 uses
  %i.b = icmp ult i32 %i.a, 41
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.d = load ptr, ptr %i.c, align 16
  %i.e = zext nneg i32 %i.a to i64
  %i.f = getelementptr i8, ptr %i.d, i64 %i.e
  %i.g = add nuw nsw i32 %i.a, 8
  store i32 %i.g, ptr %4, align 16
  br label %.thread445.thread

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = getelementptr i8, ptr %i.i, i64 8
  store ptr %i.j, ptr %i.h, align 8
  br label %.thread445.thread

.thread445.thread:                                ; preds = %bb.c, %bb.b
  %i.k = phi ptr [ %i.f, %bb.b ], [ %i.i, %bb.c ]
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !47   ; 3 uses
  %i.m = call i32 (ptr, i32, ...) @curl_easy_setopt(ptr noundef %0, i32 noundef %3, ptr noundef %i.l) #9 ; 2 uses
  %i.n = load ptr, ptr @global, align 8, !tbaa !10
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 224
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !23
  %i.q = icmp eq ptr %i.p, null
  %i.r = icmp eq ptr %i.l, null
  %or.cond255.not440 = or i1 %i.q, %i.r
  %i.s = icmp ne i32 %i.m, 0
  %or.cond257 = select i1 %or.cond255.not440, i1 true, i1 %i.s
  br i1 %or.cond257, label %bb.h, label %bb.d

bb.d:                                             ; preds = %.thread445.thread
  %i.t = icmp eq i32 %3, 10015
  br i1 %i.t, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.u = call i64 @curlx_dyn_len(ptr noundef %1) #9
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0 = phi i64 [ %i.u, %bb.e ], [ -1, %bb.d ]
  %i.v = call fastcc ptr @c_escape(ptr noundef nonnull %i.l, i64 noundef %.0) ; 3 uses
  %.not = icmp eq ptr %i.v, null
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = call i32 (ptr, ptr, ...) @easysrc_addf(ptr noundef nonnull @easysrc_code, ptr noundef nonnull @.str.78, ptr noundef %2, ptr noundef nonnull %i.v) #9
  call void @free(ptr noundef nonnull %i.v) #9
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %.thread445.thread
  %.1 = phi i32 [ %i.m, %.thread445.thread ], [ %i.w, %bb.g ], [ 27, %bb.f ]
  call void @llvm.va_end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  ret i32 %.1
}

declare i64 @curlx_dyn_len(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc ptr @c_escape(ptr noundef %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.dynbuf, align 8             ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #9
  call void @curlx_dyn_init(ptr noundef nonnull %2, i64 noundef 8003) #9
  %i.a = icmp eq i64 %1, -1
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #10
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.039 = phi i64 [ %i.b, %bb.b ], [ %1, %bb.a ]  ; 3 uses
  %i.c = icmp sgt i64 %.039, 2000
  %spec.select59 = select i1 %i.c, i64 3, i64 0
  %i.d = call i32 @curlx_dyn_addn(ptr noundef nonnull %2, ptr noundef nonnull @.str.32, i64 noundef 0) #9
  %.not68 = icmp eq i32 %i.d, 0                   ; 2 uses
  %i.e = icmp ne i64 %.039, 0
  %i.f = select i1 %.not68, i1 %i.e, i1 false
  br i1 %i.f, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.c
  %spec.select = call i64 @llvm.smin.i64(i64 %.039, i64 2000)
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.l
  %.03871 = phi ptr [ %i.am, %bb.l ], [ %0, %.lr.ph.preheader ] ; 7 uses
  %.24170 = phi i64 [ %i.an, %bb.l ], [ %spec.select, %.lr.ph.preheader ] ; 2 uses
  %.04269 = phi ptr [ %.143, %bb.l ], [ %0, %.lr.ph.preheader ] ; 5 uses
  %i.g = load i8, ptr %.03871, align 1, !tbaa !27 ; 3 uses
  %i.h = sext i8 %i.g to i32
  %memchr = call ptr @memchr(ptr noundef nonnull dereferenceable(1) @c_escape.from, i32 %i.h, i64 7) ; 3 uses
  %.not55 = icmp eq ptr %memchr, null
  br i1 %.not55, label %bb.d, label %.thread

bb.d:                                             ; preds = %.lr.ph
  %i.i = add i8 %i.g, -14
  %or.cond = icmp ult i8 %i.i, -5
  %i.j = add i8 %i.g, -127
  %or.cond60 = icmp ult i8 %i.j, -95
  %or.cond66 = and i1 %or.cond, %or.cond60
  br i1 %or.cond66, label %bb.e, label %bb.l

bb.e:                                             ; preds = %bb.d
  %i.k = ptrtoint ptr %.03871 to i64
  %i.l = ptrtoint ptr %.04269 to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = call i32 @curlx_dyn_addn(ptr noundef nonnull %2, ptr noundef %.04269, i64 noundef %i.m) #9
  %i.o = getelementptr inbounds nuw i8, ptr %.03871, i64 1
  %.not57 = icmp eq i32 %i.n, 0
  br i1 %.not57, label %bb.g, label %.critedge63

.thread:                                          ; preds = %.lr.ph
  %i.p = ptrtoint ptr %.03871 to i64
  %i.q = ptrtoint ptr %.04269 to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = call i32 @curlx_dyn_addn(ptr noundef nonnull %2, ptr noundef %.04269, i64 noundef %i.r) #9
  %i.t = getelementptr inbounds nuw i8, ptr %.03871, i64 1 ; 2 uses
  %.not5764 = icmp eq i32 %i.s, 0
  br i1 %.not5764, label %.thread65, label %.critedge63

.thread65:                                        ; preds = %.thread
  %i.u = load i8, ptr %memchr, align 1, !tbaa !27
  %.not58 = icmp eq i8 %i.u, 0
  br i1 %.not58, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.thread65
  %i.v = ptrtoint ptr %memchr to i64
  %i.w = sub i64 %i.v, ptrtoint (ptr @c_escape.from to i64)
  %i.x = shl nsw i64 %i.w, 1
  %i.y = getelementptr inbounds i8, ptr @c_escape.to, i64 %i.x
  %i.z = call i32 @curlx_dyn_addn(ptr noundef nonnull %2, ptr noundef nonnull %i.y, i64 noundef 2) #9
  br label %bb.l

bb.g:                                             ; preds = %bb.e, %.thread65
  %i.aa = phi ptr [ %i.t, %.thread65 ], [ %i.o, %bb.e ] ; 2 uses
  %i.ab = icmp sgt i64 %.24170, 1
  br i1 %i.ab, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.ac = load i8, ptr %i.aa, align 1, !tbaa !27  ; 4 uses
  %i.ad = add i8 %i.ac, -48
  %or.cond61 = icmp ult i8 %i.ad, 10
  %i.ae = add i8 %i.ac, -97
  %or.cond62 = icmp ult i8 %i.ae, 6
  %or.cond67 = or i1 %or.cond61, %or.cond62
  br i1 %or.cond67, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.af = icmp sgt i8 %i.ac, 64
  br i1 %i.af, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ag = icmp samesign ult i8 %i.ac, 71
  %i.ah = select i1 %i.ag, ptr @.str.110, ptr @.str.111
  br label %bb.k

bb.k:                                             ; preds = %bb.h, %bb.j, %bb.i, %bb.g
  %i.ai = phi ptr [ @.str.111, %bb.g ], [ %i.ah, %bb.j ], [ @.str.110, %bb.h ], [ @.str.111, %bb.i ]
  %i.aj = load i8, ptr %.03871, align 1, !tbaa !27
  %i.ak = zext i8 %i.aj to i32
  %i.al = call i32 (ptr, ptr, ...) @curlx_dyn_addf(ptr noundef nonnull %2, ptr noundef nonnull %i.ai, i32 noundef %i.ak) #9
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.f, %bb.d
  %.143 = phi ptr [ %.04269, %bb.d ], [ %i.aa, %bb.k ], [ %i.t, %bb.f ] ; 2 uses
  %.2 = phi i32 [ 0, %bb.d ], [ %i.al, %bb.k ], [ %i.z, %bb.f ]
  %i.am = getelementptr inbounds nuw i8, ptr %.03871, i64 1 ; 2 uses
  %i.an = add nsw i64 %.24170, -1                 ; 2 uses
  %.not = icmp eq i32 %.2, 0                      ; 2 uses
  %i.ao = icmp ne i64 %i.an, 0
  %i.ap = select i1 %.not, i1 %i.ao, i1 false
  br i1 %i.ap, label %.lr.ph, label %._crit_edge, !llvm.loop !48

end_hunk_0
