Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/radius_dict?download=true
inline.NumInlined: 32
inline.NumDeleted: 8
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@Radius_lex_init:bb.a
  br i1 %i.b, label %.sink.split, label %bb.c

.sink.split:                                      ; preds = %bb.b, %bb.a
  %.sink = phi i32 [ 22, %bb.a ], [ 12, %bb.b ]
  %i.c = tail call ptr @__errno_location() #30
  store i32 %.sink, ptr %i.c, align 4
  br label %bb.c

bb.c:                                             ; preds = %.sink.split, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ 1, %.sink.split ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid sspstrong willreturn memory(write, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden range(i32 0, 2) i32 @Radius_lex_init_extra(ptr noundef %0, ptr nofree noundef writeonly captures(address_is_null) %1) local_unnamed_addr #15 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__errno_location() #30
  store i32 22, ptr %i.b, align 4
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %calloc = tail call dereferenceable_or_null(144) ptr @calloc(i64 1, i64 144) ; 3 uses
  store ptr %calloc, ptr %1, align 8
  %i.c = icmp eq ptr %calloc, null
  br i1 %i.c, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.d = tail call ptr @__errno_location() #30
  store i32 12, ptr %i.d, align 4
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  store ptr %0, ptr %calloc, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.b
  %.0 = phi i32 [ 1, %bb.b ], [ 1, %bb.d ], [ 0, %bb.e ]
  ret i32 %.0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong memory(readwrite, target_mem: none) uwtable
define hidden noundef i32 @Radius_lex_destroy(ptr noundef captures(none) %0) local_unnamed_addr #16 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24         ; 7 uses
  %i.b = getelementptr i8, ptr %0, i64 40         ; 6 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 3 uses
  %.not22 = icmp eq ptr %i.c, null
  br i1 %.not22, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 52
  %i.e = getelementptr i8, ptr %0, i64 64
  %i.f = getelementptr i8, ptr %0, i64 128
  %i.g = getelementptr i8, ptr %0, i64 8
  %i.h = getelementptr i8, ptr %0, i64 48
  %i.i = getelementptr i8, ptr %0, i64 80
  %i.j = load i64, ptr %i.a, align 8
  %i.k = getelementptr [8 x i8], ptr %i.c, i64 %i.j ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %.critedge, label %.critedge.i

.critedge.i:                                      ; preds = %.lr.ph, %Radius_pop_buffer_state.exit
  %i.n = phi ptr [ %i.ay, %Radius_pop_buffer_state.exit ], [ %i.l, %.lr.ph ] ; 3 uses
  %i.o = phi ptr [ %i.ax, %Radius_pop_buffer_state.exit ], [ %i.k, %.lr.ph ]
  store ptr null, ptr %i.o, align 8
  %i.p = getelementptr i8, ptr %i.n, i64 32
  %i.q = load i32, ptr %i.p, align 8
  %.not13.i = icmp eq i32 %i.q, 0
  br i1 %.not13.i, label %Radius__delete_buffer.exit, label %bb.b

bb.b:                                             ; preds = %.critedge.i
  %i.r = getelementptr i8, ptr %i.n, i64 8
  %i.s = load ptr, ptr %i.r, align 8
  tail call void @free(ptr noundef %i.s) #28
  br label %Radius__delete_buffer.exit

Radius__delete_buffer.exit:                       ; preds = %.critedge.i, %bb.b
  tail call void @free(ptr noundef nonnull %i.n) #28
  %i.t = load ptr, ptr %i.b, align 8
  %i.u = load i64, ptr %i.a, align 8
  %i.v = getelementptr [8 x i8], ptr %i.t, i64 %i.u
  store ptr null, ptr %i.v, align 8
  %i.w = load ptr, ptr %i.b, align 8              ; 3 uses
  %.not.i20 = icmp eq ptr %i.w, null
  br i1 %.not.i20, label %.critedge, label %bb.c

bb.c:                                             ; preds = %Radius__delete_buffer.exit
  %i.x = load i64, ptr %i.a, align 8
  %i.y = getelementptr [8 x i8], ptr %i.w, i64 %i.x ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8              ; 4 uses
  %.not20.i = icmp eq ptr %i.z, null
  br i1 %.not20.i, label %Radius_pop_buffer_state.exit, label %.critedge.i.i

.critedge.i.i:                                    ; preds = %bb.c
  store ptr null, ptr %i.y, align 8
  %i.aa = getelementptr i8, ptr %i.z, i64 32
  %i.ab = load i32, ptr %i.aa, align 8
  %.not13.i.i = icmp eq i32 %i.ab, 0
  br i1 %.not13.i.i, label %Radius__delete_buffer.exit.i, label %bb.d

bb.d:                                             ; preds = %.critedge.i.i
  %i.ac = getelementptr i8, ptr %i.z, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void @free(ptr noundef %i.ad) #28
  br label %Radius__delete_buffer.exit.i

Radius__delete_buffer.exit.i:                     ; preds = %bb.d, %.critedge.i.i
  tail call void @free(ptr noundef nonnull %i.z) #28
  %i.ae = load ptr, ptr %i.b, align 8
  %i.af = load i64, ptr %i.a, align 8
  %i.ag = getelementptr [8 x i8], ptr %i.ae, i64 %i.af
  store ptr null, ptr %i.ag, align 8
  %i.ah = load i64, ptr %i.a, align 8             ; 2 uses
  %.not21.i = icmp eq i64 %i.ah, 0
  br i1 %.not21.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %Radius__delete_buffer.exit.i
  %i.ai = add i64 %i.ah, -1                       ; 2 uses
  store i64 %i.ai, ptr %i.a, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %Radius__delete_buffer.exit.i
  %i.aj = phi i64 [ %i.ai, %bb.e ], [ 0, %Radius__delete_buffer.exit.i ]
  %i.ak = load ptr, ptr %i.b, align 8             ; 4 uses
  %.not22.i = icmp eq ptr %i.ak, null
  br i1 %.not22.i, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.al = getelementptr [8 x i8], ptr %i.ak, i64 %i.aj ; 3 uses
  %i.am = load ptr, ptr %i.al, align 8            ; 2 uses
  %.not23.i = icmp eq ptr %i.am, null
  br i1 %.not23.i, label %Radius_pop_buffer_state.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.an = getelementptr i8, ptr %i.am, i64 28
  %i.ao = load i32, ptr %i.an, align 4
  store i32 %i.ao, ptr %i.d, align 4
  %i.ap = load ptr, ptr %i.al, align 8
  %i.aq = getelementptr i8, ptr %i.ap, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8            ; 3 uses
  store ptr %i.ar, ptr %i.e, align 8
  store ptr %i.ar, ptr %i.f, align 8
  %i.as = load ptr, ptr %i.al, align 8
  %i.at = load ptr, ptr %i.as, align 8
  store ptr %i.at, ptr %i.g, align 8
  %i.au = load i8, ptr %i.ar, align 1
  store i8 %i.au, ptr %i.h, align 8
  store i32 1, ptr %i.i, align 8
  br label %Radius_pop_buffer_state.exit

Radius_pop_buffer_state.exit:                     ; preds = %bb.c, %bb.g, %bb.h
  %i.av = phi ptr [ %i.ak, %bb.g ], [ %i.w, %bb.c ], [ %i.ak, %bb.h ] ; 2 uses
  %i.aw = load i64, ptr %i.a, align 8
  %i.ax = getelementptr [8 x i8], ptr %i.av, i64 %i.aw ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8            ; 2 uses
  %i.az = icmp eq ptr %i.ay, null
  br i1 %i.az, label %.critedge, label %.critedge.i, !llvm.loop !23

.critedge:                                        ; preds = %Radius_pop_buffer_state.exit, %Radius__delete_buffer.exit, %bb.f, %.lr.ph, %bb.a
  %.lcssa = phi ptr [ null, %bb.a ], [ %i.c, %.lr.ph ], [ null, %bb.f ], [ null, %Radius__delete_buffer.exit ], [ %i.av, %Radius_pop_buffer_state.exit ]
  tail call void @free(ptr noundef %.lcssa) #28
  store ptr null, ptr %i.b, align 8
  %i.ba = getelementptr i8, ptr %0, i64 96
  %i.bb = load ptr, ptr %i.ba, align 8
  tail call void @free(ptr noundef %i.bb) #28
  tail call void @free(ptr noundef %0) #28
  ret i32 0
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden noundef zeroext i1 @radius_load_dictionary(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %3) local_unnamed_addr #0 {
g_strdup_inline.exit:
  %4 = alloca %struct.Radius_scanner_state_t, align 8 ; 41 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 80
  store i32 0, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 88 ; 3 uses
  store ptr %0, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 148
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(52) %i.c, i8 0, i64 52, i1 false)
  store i32 1, ptr %i.d, align 4
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 152
  store i32 1, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 156
  store i8 0, ptr %i.f, align 4
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 160
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 176
  store ptr null, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 184
  store i32 0, ptr %i.i, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(14) %i.g, i8 0, i64 14, i1 false)
  %i.j = tail call noalias ptr @g_strdup(ptr noundef %1) ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 272
  store ptr %i.j, ptr %i.k, align 8
  %i.l = tail call noalias ptr (ptr, ptr, ...) @wmem_strdup_printf(ptr noundef null, ptr noundef nonnull @.str.20, ptr noundef %i.j, ptr noundef %2) ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 280 ; 3 uses
  store ptr %i.l, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 360
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 192 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 288 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.o, i8 0, i64 80, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 296
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 304
  store <4 x i32> splat (i32 1), ptr %i.n, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 312
  store <4 x ptr> splat (ptr null), ptr %i.p, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 376
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 320 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 328
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 336
  store <4 x i32> splat (i32 1), ptr %i.t, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 344
  store <4 x ptr> splat (ptr null), ptr %i.u, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 392
  store i32 1, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 352 ; 2 uses
  store ptr null, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 396
  store i32 1, ptr %i.aa, align 4
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 188
  store i32 0, ptr %i.ab, align 4
  %i.ac = tail call ptr @g_string_new(ptr noundef nonnull @.str.21) ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 400 ; 3 uses
  store ptr %i.ac, ptr %i.ad, align 8
  %i.ae = tail call noalias ptr @fopen(ptr noundef %i.l, ptr noundef nonnull @.str.10) ; 3 uses
  %.not = icmp eq ptr %i.ae, null
  br i1 %.not, label %bb.a, label %bb.b

bb.a:                                             ; preds = %g_strdup_inline.exit
  %i.af = tail call ptr @__errno_location() #30
  %i.ag = load i32, ptr %i.af, align 4
  %i.ah = tail call ptr @g_strerror(i32 noundef %i.ag) #30
  tail call void (ptr, ptr, ...) @g_string_append_printf(ptr noundef %i.ac, ptr noundef nonnull @.str.11, ptr noundef %i.l, ptr noundef %i.ah)
  tail call void @g_free(ptr noundef %i.l)
  %i.ai = tail call ptr @g_string_free_and_steal(ptr noundef %i.ac)
  store ptr %i.ai, ptr %3, align 8
  br label %bb.g

bb.b:                                             ; preds = %g_strdup_inline.exit
  %i.aj = tail call ptr @g_hash_table_new_full(ptr noundef nonnull @g_str_hash, ptr noundef nonnull @g_str_equal, ptr noundef nonnull @g_free, ptr noundef nonnull @destroy_value_strings)
  store ptr %i.aj, ptr %i.c, align 8
  %calloc.i = tail call dereferenceable_or_null(144) ptr @calloc(i64 1, i64 144) ; 5 uses
  %i.ak = icmp eq ptr %calloc.i, null
  br i1 %i.ak, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.al = tail call ptr @__errno_location() #30
  store i32 12, ptr %i.al, align 4
  %5 = load ptr, ptr %i.ad, align 8               ; 2 uses
  %i.am = tail call ptr @strerror(i32 noundef 12) #28
  tail call void (ptr, ptr, ...) @g_string_append_printf(ptr noundef %5, ptr noundef nonnull @.str.22, ptr noundef %i.am)
  %i.an = tail call i32 @fclose(ptr noundef nonnull %i.ae) ; 0 uses
  %6 = load ptr, ptr %i.m, align 8
  tail call void @g_free(ptr noundef %6)
  %i.ao = tail call ptr @g_string_free_and_steal(ptr noundef %5)
  store ptr %i.ao, ptr %3, align 8
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.ap = getelementptr i8, ptr %calloc.i, i64 8
  store ptr %i.ae, ptr %i.ap, align 8
  store ptr %4, ptr %calloc.i, align 8
  %i.aq = call i32 @Radius_lex(ptr noundef nonnull %calloc.i) ; 0 uses
  %i.ar = call i32 @Radius_lex_destroy(ptr noundef nonnull %calloc.i) ; 0 uses
  %i.as = load ptr, ptr %i.m, align 8
  call void @g_free(ptr noundef %i.as)
  %i.at = load ptr, ptr %i.o, align 8
  call void @g_free(ptr noundef %i.at)
  %i.au = load ptr, ptr %i.p, align 8
  call void @g_free(ptr noundef %i.au)
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 200
  %i.aw = load ptr, ptr %i.av, align 8
  call void @g_free(ptr noundef %i.aw)
  %i.ax = load ptr, ptr %i.q, align 8
  call void @g_free(ptr noundef %i.ax)
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 208
  %i.az = load ptr, ptr %i.ay, align 8
  call void @g_free(ptr noundef %i.az)
  %i.ba = load ptr, ptr %i.r, align 8
  call void @g_free(ptr noundef %i.ba)
  %i.bb = getelementptr inbounds nuw i8, ptr %4, i64 216
  %i.bc = load ptr, ptr %i.bb, align 8
  call void @g_free(ptr noundef %i.bc)
  %i.bd = load ptr, ptr %i.s, align 8
  call void @g_free(ptr noundef %i.bd)
  %i.be = getelementptr inbounds nuw i8, ptr %4, i64 224
  %i.bf = load ptr, ptr %i.be, align 8
  call void @g_free(ptr noundef %i.bf)
  %i.bg = load ptr, ptr %i.u, align 8
  call void @g_free(ptr noundef %i.bg)
  %i.bh = getelementptr inbounds nuw i8, ptr %4, i64 232
  %i.bi = load ptr, ptr %i.bh, align 8
  call void @g_free(ptr noundef %i.bi)
  %i.bj = load ptr, ptr %i.v, align 8
  call void @g_free(ptr noundef %i.bj)
  %i.bk = getelementptr inbounds nuw i8, ptr %4, i64 240
  %i.bl = load ptr, ptr %i.bk, align 8
  call void @g_free(ptr noundef %i.bl)
  %i.bm = load ptr, ptr %i.w, align 8
  call void @g_free(ptr noundef %i.bm)
  %i.bn = getelementptr inbounds nuw i8, ptr %4, i64 248
  %i.bo = load ptr, ptr %i.bn, align 8
  call void @g_free(ptr noundef %i.bo)
  %i.bp = load ptr, ptr %i.x, align 8
  call void @g_free(ptr noundef %i.bp)
  %i.bq = getelementptr inbounds nuw i8, ptr %4, i64 256
  %i.br = load ptr, ptr %i.bq, align 8
  call void @g_free(ptr noundef %i.br)
  %i.bs = load ptr, ptr %i.z, align 8
  call void @g_free(ptr noundef %i.bs)
  %i.bt = getelementptr inbounds nuw i8, ptr %4, i64 264
  %i.bu = load ptr, ptr %i.bt, align 8
  call void @g_free(ptr noundef %i.bu)
  %i.bv = load ptr, ptr %i.b, align 8
  %i.bw = load ptr, ptr %i.bv, align 8
  call void @g_hash_table_foreach(ptr noundef %i.bw, ptr noundef nonnull @setup_attrs, ptr noundef nonnull %4)
  %i.bx = load ptr, ptr %i.b, align 8
  %i.by = getelementptr i8, ptr %i.bx, i64 16
  %i.bz = load ptr, ptr %i.by, align 8
  call void @g_hash_table_foreach(ptr noundef %i.bz, ptr noundef nonnull @setup_vendors, ptr noundef nonnull %4)
  %i.ca = load ptr, ptr %i.c, align 8
  call void @g_hash_table_destroy(ptr noundef %i.ca)
  %i.cb = load ptr, ptr %i.ad, align 8            ; 3 uses
  %i.cc = getelementptr i8, ptr %i.cb, i64 8
  %i.cd = load i64, ptr %i.cc, align 8
  %.not22 = icmp eq i64 %i.cd, 0
  br i1 %.not22, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ce = call ptr @g_string_free_and_steal(ptr noundef %i.cb)
  store ptr %i.ce, ptr %3, align 8
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  store ptr null, ptr %3, align 8
  %i.cf = call ptr @g_string_free(ptr noundef %i.cb, i32 noundef 1) ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.c, %bb.a
  %.019 = phi i1 [ false, %bb.c ], [ false, %bb.e ], [ true, %bb.f ], [ false, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  ret i1 %.019
}

; Function Attrs: null_pointer_is_valid
declare ptr @g_string_new(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @g_string_free_and_steal(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @g_hash_table_new_full(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @g_str_hash(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare i32 @g_str_equal(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @destroy_value_strings(ptr noundef %0) #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %i.b = getelementptr i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %.not6 = icmp eq ptr %i.c, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %i.d = phi ptr [ %i.g, %.lr.ph ], [ %i.c, %bb.a ]
  %.07 = phi ptr [ %i.e, %.lr.ph ], [ %i.a, %bb.a ] ; 2 uses
  tail call void @g_free(ptr noundef nonnull %i.d)
  %i.e = getelementptr i8, ptr %.07, i64 16
  %i.f = getelementptr i8, ptr %.07, i64 24
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !24

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.h = tail call ptr @g_array_free(ptr noundef %0, i32 noundef 1) ; 0 uses
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid
declare ptr @strerror(i32 noundef) local_unnamed_addr #17

; Function Attrs: null_pointer_is_valid
declare void @g_hash_table_foreach(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @setup_attrs(ptr nofree readnone captures(none) %0, ptr nofree noundef captures(none) %1, ptr noundef %2) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %3 = alloca %union.anon, align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %i.b = getelementptr i8, ptr %2, i64 96         ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = load ptr, ptr %1, align 8
  %i.e = call i32 @g_hash_table_lookup_extended(ptr noundef %i.c, ptr noundef %i.d, ptr noundef nonnull %i.a, ptr noundef nonnull %3)
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.b, align 8
  %i.g = load ptr, ptr %i.a, align 8
  %i.h = call i32 @g_hash_table_steal(ptr noundef %i.f, ptr noundef %i.g) ; 0 uses
  %i.i = load ptr, ptr %3, align 8
  call void @g_array_sort(ptr noundef %i.i, ptr noundef nonnull @value_str_value_compare)
  %i.j = load ptr, ptr %3, align 8
  %i.k = call ptr @g_array_free(ptr noundef %i.j, i32 noundef 0)
  %i.l = getelementptr i8, ptr %1, i64 40
  store ptr %i.k, ptr %i.l, align 8
  %i.m = load ptr, ptr %i.a, align 8
  call void @g_free(ptr noundef %i.m)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.n = getelementptr i8, ptr %1, i64 72
  %i.o = load ptr, ptr %i.n, align 8              ; 2 uses
  %.not9 = icmp eq ptr %i.o, null
  br i1 %.not9, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @g_hash_table_foreach(ptr noundef nonnull %i.o, ptr noundef nonnull @setup_tlvs, ptr noundef %2)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @setup_vendors(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8
  tail call void @g_hash_table_foreach(ptr noundef %i.b, ptr noundef nonnull @setup_attrs, ptr noundef %2)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare void @g_hash_table_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @g_string_free(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare noalias ptr @g_malloc(i64 noundef) local_unnamed_addr #18

; Function Attrs: null_pointer_is_valid
declare noalias ptr @g_strdup(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind null_pointer_is_valid willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
end_hunk_0
