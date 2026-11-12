Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/file?download=true
inline.NumInlined: 76
inline.NumDeleted: 9
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@cf_save_records:bb.a
  store i32 4, ptr %i.hv, align 8
  %i.hw = load ptr, ptr %i.dy, align 8
  call void @wtap_sequential_close(ptr noundef %i.hw)
  %i.hx = call i64 @g_get_monotonic_time()
  %i.hy = sub i64 %i.hx, %i.fg
  %i.hz = sdiv i64 %i.hy, 1000
  %i.ia = getelementptr i8, ptr %0, i64 720
  store i64 %i.hz, ptr %i.ia, align 8
  %i.ib = load ptr, ptr %i.dy, align 8
  %i.ic = call i32 @wtap_file_encap(ptr noundef %i.ib)
  %i.id = getelementptr i8, ptr %0, i64 60
  store i32 %i.ic, ptr %i.id, align 4
  %.07.i92.i = load ptr, ptr @cf_callbacks, align 8 ; 2 uses
  %.not8.i93.i = icmp eq ptr %.07.i92.i, null
  br i1 %.not8.i93.i, label %cf_callback_invoke.exit99.i, label %.lr.ph.i94.i

.lr.ph.i94.i:                                     ; preds = %bb.bl, %.lr.ph.i94.i
  %.09.i95.i = phi ptr [ %.0.i96.i, %.lr.ph.i94.i ], [ %.07.i92.i, %bb.bl ] ; 2 uses
  %i.ie = load ptr, ptr %.09.i95.i, align 8       ; 2 uses
  %i.if = load ptr, ptr %i.ie, align 8
  %i.ig = getelementptr i8, ptr %i.ie, i64 8
  %i.ih = load ptr, ptr %i.ig, align 8
  call void %i.if(i32 noundef 8, ptr noundef %0, ptr noundef %i.ih), !inline_history !70
  %i.ii = getelementptr i8, ptr %.09.i95.i, i64 8
  %.0.i96.i = load ptr, ptr %i.ii, align 8        ; 2 uses
  %.not.i97.i = icmp eq ptr %.0.i96.i, null
  br i1 %.not.i97.i, label %cf_callback_invoke.exit99.i, label %.lr.ph.i94.i, !llvm.loop !1

cf_callback_invoke.exit99.i:                      ; preds = %.lr.ph.i94.i, %bb.bl
  %i.ij = load i8, ptr %i.ff, align 2, !range !10, !noundef !11
  %i.ik = trunc nuw i8 %i.ij to i1
  br i1 %i.ik, label %bb.bo, label %bb.bm

bb.bm:                                            ; preds = %cf_callback_invoke.exit99.i
  %i.il = load i32, ptr %i.b, align 4             ; 2 uses
  %.not84.i = icmp eq i32 %i.il, 0
  br i1 %.not84.i, label %rescan_file.exit, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.im = load ptr, ptr %i.c, align 8
  call void @report_cfile_read_failure(ptr noundef null, i32 noundef %i.il, ptr noundef %i.im)
  br label %bb.bo

rescan_file.exit:                                 ; preds = %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %cf_callback_invoke.exit150

bb.bo:                                            ; preds = %bb.ao, %cf_callback_invoke.exit99.i, %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  call void @cf_close(ptr noundef %0)
  br label %cf_callback_invoke.exit150

default.unreachable209:                           ; preds = %bb.af
  unreachable

cf_callback_invoke.exit150:                       ; preds = %.lr.ph.i153, %.lr.ph.i146, %rescan_file.exit, %bb.ai, %g_strdup_inline.exit127, %bb.al, %bb.am, %bb.ak, %bb.bo
  br i1 %4, label %bb.bp, label %cf_callback_invoke.exit167

bb.bp:                                            ; preds = %cf_callback_invoke.exit150
  %i.in = getelementptr i8, ptr %0, i64 232
  %i.io = load ptr, ptr %i.in, align 8
  call void @wtap_write_shb_comment(ptr noundef %i.io, ptr noundef null)
  %i.ip = getelementptr i8, ptr %0, i64 72        ; 2 uses
  %i.iq = load i32, ptr %i.ip, align 8
  %.not120192 = icmp eq i32 %i.iq, 0
  br i1 %.not120192, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.bp
  %i.ir = getelementptr i8, ptr %0, i64 264
  br label %bb.bq

bb.bq:                                            ; preds = %.lr.ph, %bb.bq
  %.0107193 = phi i32 [ 1, %.lr.ph ], [ %i.ix, %bb.bq ] ; 2 uses
  %i.is = load ptr, ptr %i.ir, align 8
  %i.it = call ptr @frame_data_sequence_find(ptr noundef %i.is, i32 noundef %.0107193)
  %i.iu = getelementptr i8, ptr %i.it, i64 53     ; 2 uses
  %i.iv = load i16, ptr %i.iu, align 1
  %i.iw = and i16 %i.iv, -257
  store i16 %i.iw, ptr %i.iu, align 1
  %i.ix = add i32 %.0107193, 1                    ; 2 uses
  %i.iy = load i32, ptr %i.ip, align 8
  %.not120 = icmp ugt i32 %i.ix, %i.iy
  br i1 %.not120, label %._crit_edge, label %bb.bq, !llvm.loop !72

._crit_edge:                                      ; preds = %bb.bq, %bb.bp
  %i.iz = getelementptr i8, ptr %0, i64 272       ; 2 uses
  %i.ja = load ptr, ptr %i.iz, align 8            ; 2 uses
  %.not121 = icmp eq ptr %i.ja, null
  br i1 %.not121, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %._crit_edge
  call void @g_tree_destroy(ptr noundef nonnull %i.ja)
  store ptr null, ptr %i.iz, align 8
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %._crit_edge
  %i.jb = getelementptr i8, ptr %0, i64 80
  store i64 0, ptr %i.jb, align 8
  br label %cf_callback_invoke.exit167

bb.bt:                                            ; preds = %.thread, %bb.l
  %.2 = phi ptr [ %i.ar, %bb.l ], [ %.0109, %.thread ] ; 2 uses
  %.not122 = icmp eq ptr %.2, null
  br i1 %.not122, label %.thread180, label %bb.bu

bb.bu:                                            ; preds = %.thread183, %bb.bt
  %.2186 = phi ptr [ %.1110, %.thread183 ], [ %.2, %bb.bt ] ; 2 uses
  %i.jc = call i32 @unlink(ptr noundef nonnull %.2186) #22 ; 0 uses
  call void @g_free(ptr noundef nonnull %.2186)
  br label %.thread180

.thread180:                                       ; preds = %bb.k, %bb.m, %bb.bu, %bb.bt
  %.07.i161 = load ptr, ptr @cf_callbacks, align 8 ; 2 uses
  %.not8.i162 = icmp eq ptr %.07.i161, null
  br i1 %.not8.i162, label %cf_callback_invoke.exit167, label %.lr.ph.i163

.lr.ph.i163:                                      ; preds = %.thread180, %.lr.ph.i163
  %.09.i164 = phi ptr [ %.0.i165, %.lr.ph.i163 ], [ %.07.i161, %.thread180 ] ; 2 uses
  %i.jd = load ptr, ptr %.09.i164, align 8        ; 2 uses
  %i.je = load ptr, ptr %i.jd, align 8
  %i.jf = getelementptr i8, ptr %i.jd, i64 8
  %i.jg = load ptr, ptr %i.jf, align 8
  call void %i.je(i32 noundef 16, ptr noundef null, ptr noundef %i.jg), !inline_history !0
  %i.jh = getelementptr i8, ptr %.09.i164, i64 8
  %.0.i165 = load ptr, ptr %i.jh, align 8         ; 2 uses
  %.not.i166 = icmp eq ptr %.0.i165, null
  br i1 %.not.i166, label %cf_callback_invoke.exit167, label %.lr.ph.i163, !llvm.loop !1

cf_callback_invoke.exit167:                       ; preds = %.lr.ph.i163, %.thread180, %.thread169, %cf_callback_invoke.exit143, %bb.bs, %cf_callback_invoke.exit150
  %.1112 = phi i32 [ 2, %.thread169 ], [ 0, %cf_callback_invoke.exit143 ], [ 0, %cf_callback_invoke.exit150 ], [ 0, %bb.bs ], [ 1, %.thread180 ], [ 1, %.lr.ph.i163 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #22
  ret i32 %.1112
}

; Function Attrs: null_pointer_is_valid
declare ptr @get_addrinfo_list() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare zeroext i1 @wtap_addrinfo_list_empty(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare i32 @wtap_file_type_subtype_supports_block(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind null_pointer_is_valid
declare noundef i32 @rename(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #17

; Function Attrs: null_pointer_is_valid
declare void @report_rename_failure(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare zeroext i1 @file_exists(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare noalias ptr @wmem_strdup_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare zeroext i1 @copy_file_binary_mode(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare void @wtap_dump_params_init(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare i32 @wtap_dump_required_file_encap_type(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare ptr @wtap_dump_open(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare void @wtap_dump_params_cleanup(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare void @report_cfile_dump_open_failure(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare zeroext i1 @wtap_dump_set_addrinfo_list(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal noundef zeroext i1 @save_record(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) #1 {
bb.a:
  %4 = alloca %struct.wtap_rec, align 8           ; 9 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(296) %4, ptr noundef align 8 dereferenceable(296) %2, i64 296, i1 false)
  %i.c = getelementptr i8, ptr %1, i64 53         ; 2 uses
  %i.d = load i16, ptr %i.c, align 1              ; 2 uses
  %i.e = and i16 %i.d, 256
  %.not = icmp eq i16 %i.e, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %0, i64 232
  %i.g = tail call ptr @cap_file_provider_get_modified_block(ptr noundef %i.f, ptr noundef %1)
  %.pre = load i16, ptr %i.c, align 1
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr i8, ptr %2, i64 216
  %i.i = load ptr, ptr %i.h, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %5 = phi i16 [ %.pre, %bb.b ], [ %i.d, %bb.c ]
  %.0 = phi ptr [ %i.g, %bb.b ], [ %i.i, %bb.c ]
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 216
  store ptr %.0, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 224
  %6 = lshr i16 %5, 8
  %7 = trunc nuw i16 %6 to i8
  %i.l = and i8 %7, 1
  store i8 %i.l, ptr %i.k, align 8
  %i.m = getelementptr i8, ptr %1, i64 72         ; 3 uses
  %i.n = tail call zeroext i1 @nstime_is_zero(ptr noundef %i.m)
  br i1 %i.n, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.p = load i32, ptr %i.o, align 4
  %i.q = and i32 %i.p, 1
  %.not18 = icmp eq i32 %i.q, 0
  br i1 %.not18, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  call void @nstime_sum(ptr noundef nonnull %i.r, ptr noundef nonnull %i.r, ptr noundef %i.m)
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.d
  %i.s = load ptr, ptr %3, align 8
  %i.t = call zeroext i1 @wtap_dump(ptr noundef %i.s, ptr noundef nonnull %4, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) ; 2 uses
  br i1 %i.t, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = getelementptr i8, ptr %3, i64 8
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = load i32, ptr %i.a, align 4
  %i.x = load ptr, ptr %i.b, align 8
  %i.y = load i32, ptr %1, align 8
  %i.z = zext i32 %i.y to i64
  %i.aa = getelementptr i8, ptr %3, i64 16
  %i.ab = load i32, ptr %i.aa, align 8
  call void @report_cfile_write_failure(ptr noundef null, ptr noundef %i.v, i32 noundef %i.w, ptr noundef %i.x, i64 noundef %i.z, i32 noundef %i.ab)
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.ac = getelementptr i8, ptr %3, i64 20
  %i.ad = load i8, ptr %i.ac, align 4, !range !10, !noundef !11
  %i.ae = trunc nuw i8 %i.ad to i1
  br i1 %i.ae, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.ag = load i32, ptr %i.af, align 4
  %i.ah = and i32 %i.ag, 1
  %.not19 = icmp eq i32 %i.ah, 0
  br i1 %.not19, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @nstime_set_zero(ptr noundef %i.m)
  br label %bb.l

bb.l:                                             ; preds = %bb.i, %bb.j, %bb.k, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  ret i1 %i.t
}

; Function Attrs: null_pointer_is_valid
declare zeroext i1 @wtap_dump_close(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare void @report_cfile_close_failure(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare void @wtap_fdclose(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare zeroext i1 @wtap_fdreopen(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare void @wtap_write_shb_comment(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden range(i32 0, 3) i32 @cf_export_specified_packets(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  %5 = alloca %struct.save_callback_args_t, align 8 ; 7 uses
  %6 = alloca %struct.wtap_dump_params, align 8   ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 20
  store i8 1, ptr %i.c, align 4
  %i.d = getelementptr i8, ptr %0, i64 232
  %i.e = load ptr, ptr %i.d, align 8
  call void @wtap_dump_params_init(ptr noundef nonnull %6, ptr noundef %i.e)
  %i.f = getelementptr i8, ptr %0, i64 64
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = call i32 @wtap_dump_required_file_encap_type(ptr noundef %i.g)
  store i32 %i.h, ptr %6, align 8
  %i.i = getelementptr i8, ptr %0, i64 136
  %i.j = load i32, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i32 %i.j, ptr %i.k, align 4
  %i.l = call zeroext i1 @file_exists(ptr noundef %1)
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.m = call noalias ptr (ptr, ptr, ...) @wmem_strdup_printf(ptr noundef null, ptr noundef @.str.47, ptr noundef %1) ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sink = phi ptr [ %i.m, %bb.b ], [ %1, %bb.a ]
  %.037 = phi ptr [ %i.m, %bb.b ], [ null, %bb.a ] ; 7 uses
  %i.n = call ptr @wtap_dump_open(ptr noundef %.sink, i32 noundef %3, i32 noundef %4, ptr noundef nonnull %6, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8
  call void @g_free(ptr noundef %i.p)
  store ptr null, ptr %i.o, align 8
  %i.q = icmp eq ptr %i.n, null
  br i1 %i.q, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.r = load i32, ptr %i.a, align 4
  %i.s = load ptr, ptr %i.b, align 8
  call void @report_cfile_dump_open_failure(ptr noundef %1, i32 noundef %i.r, ptr noundef %i.s, i32 noundef %3)
  br label %bb.k

bb.e:                                             ; preds = %bb.c
  %i.t = call ptr @get_addrinfo_list()
  %i.u = call zeroext i1 @wtap_dump_set_addrinfo_list(ptr noundef nonnull %i.n, ptr noundef %i.t) ; 0 uses
  store ptr %i.n, ptr %5, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %1, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 %3, ptr %i.w, align 8
  %i.x = call fastcc i32 @process_specified_records(ptr noundef %0, ptr noundef %2, ptr noundef @.str.50, ptr noundef @.str.51, ptr noundef @save_record, ptr noundef nonnull %5, i1 noundef zeroext true)
  %i.y = call zeroext i1 @wtap_dump_close(ptr noundef nonnull %i.n, ptr noundef null, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b)
  switch i32 %i.x, label %bb.g [
    i32 2, label %bb.k
    i32 1, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e
  %.not = icmp eq ptr %.037, null
  br i1 %.not, label %bb.l, label %.sink.split.sink.split

bb.g:                                             ; preds = %bb.e
  br i1 %i.y, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.z = load i32, ptr %i.a, align 4
  %i.aa = load ptr, ptr %i.b, align 8
  call void @report_cfile_close_failure(ptr noundef %1, i32 noundef %i.z, ptr noundef %i.aa)
  br label %bb.k

bb.i:                                             ; preds = %bb.g
  %.not39 = icmp eq ptr %.037, null
  br i1 %.not39, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ab = call i32 @rename(ptr noundef nonnull %.037, ptr noundef %1) #22
  %i.ac = icmp eq i32 %i.ab, -1
  br i1 %i.ac, label %.thread, label %.sink.split

.thread:                                          ; preds = %bb.j
  %i.ad = tail call ptr @__errno_location() #27
  %i.ae = load i32, ptr %i.ad, align 4
  call void @report_rename_failure(ptr noundef nonnull %.037, ptr noundef %1, i32 noundef %i.ae)
  br label %.sink.split.sink.split

bb.k:                                             ; preds = %bb.e, %bb.h, %bb.d
  %.not40 = icmp eq ptr %.037, null
  br i1 %.not40, label %bb.l, label %.sink.split.sink.split

.sink.split.sink.split:                           ; preds = %bb.k, %.thread, %bb.f
  %.038.ph.ph = phi i32 [ 2, %bb.f ], [ 1, %.thread ], [ 1, %bb.k ]
  %i.af = call i32 @unlink(ptr noundef nonnull %.037) #22 ; 0 uses
  br label %.sink.split

.sink.split:                                      ; preds = %.sink.split.sink.split, %bb.j
  %.038.ph = phi i32 [ 0, %bb.j ], [ %.038.ph.ph, %.sink.split.sink.split ]
  call void @g_free(ptr noundef nonnull %.037)
  br label %bb.l

bb.l:                                             ; preds = %.sink.split, %bb.k, %bb.i, %bb.f
  %.038 = phi i32 [ 0, %bb.i ], [ 2, %bb.f ], [ 1, %bb.k ], [ %.038.ph, %.sink.split ]
  call void @wtap_dump_params_cleanup(ptr noundef nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  ret i32 %.038
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden range(i32 0, 2) i32 @cf_reload(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca i32, align 4                      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  %i.b = getelementptr i8, ptr %0, i64 169
  %i.c = load i8, ptr %i.b, align 1, !range !10, !noundef !11
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = getelementptr i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  br i1 %i.d, label %bb.b, label %g_strdup_inline.exit
end_hunk_0
