Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/curl/original/content_encoding?download=true
inline.NumInlined: 18
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@Curl_build_unencoding_stack:bb.a
  %.5.i = phi ptr [ @gzip_encoding, %bb.ai ], [ @identity_encoding, %bb.af ], [ @identity_encoding, %.loopexit.i ], [ @Curl_httpchunk_unencoder, %bb.ab ], [ @deflate_encoding, %bb.ag ], [ @brotli_encoding, %bb.aj ], [ %spec.select.i, %bb.ak ], [ @gzip_encoding, %bb.ah ], [ @Curl_httpchunk_unencoder, %bb.ae ] ; 3 uses
  %or.cond15 = select i1 %.not, i1 true, i1 %i.bm
  br i1 %or.cond15, label %bb.an, label %bb.al

bb.al:                                            ; preds = %find_unencode_writer.exit
  %i.bn = call ptr @Curl_cwriter_get_by_name(ptr noundef nonnull %0, ptr noundef nonnull @.str.5) #5
  %.not149 = icmp eq ptr %i.bn, null
  br i1 %.not149, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  call void (ptr, ptr, ...) @Curl_failf(ptr noundef nonnull %0, ptr noundef nonnull @.str.10) #5
  br label %.thread169

bb.an:                                            ; preds = %bb.al, %find_unencode_writer.exit
  %i.bo = icmp ne ptr %.5.i, null                 ; 2 uses
  %or.cond18 = select i1 %i.bo, i1 %i.bm, i1 false
  br i1 %or.cond18, label %bb.ao, label %bb.au

bb.ao:                                            ; preds = %bb.an
  %i.bp = call ptr @Curl_cwriter_get_by_type(ptr noundef nonnull %0, ptr noundef nonnull %.5.i) #5
  %.not150 = icmp eq ptr %i.bp, null
  br i1 %.not150, label %bb.au, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.bq = load i64, ptr %i.d, align 1
  %i.br = and i64 %i.bq, 536870912
  %.not155 = icmp eq i64 %i.br, 0
  br i1 %.not155, label %bb.bc, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.bs = load ptr, ptr %i.e, align 8, !tbaa !101 ; 2 uses
  %.not156 = icmp eq ptr %i.bs, null
  br i1 %.not156, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !103
  %i.bv = icmp sgt i32 %i.bu, 0
  %i.bw = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_write, i64 8), align 8
  %i.bx = icmp sgt i32 %i.bw, 0
  %or.cond21 = select i1 %i.bv, i1 %i.bx, i1 false
  br i1 %or.cond21, label %bb.at, label %bb.bc

bb.as:                                            ; preds = %bb.aq
  %.old19 = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_write, i64 8), align 8, !tbaa !103
  %.old20 = icmp sgt i32 %.old19, 0
  br i1 %.old20, label %bb.at, label %bb.bc

bb.at:                                            ; preds = %bb.ar, %bb.as
  call void (ptr, ptr, ...) @Curl_trc_write(ptr noundef nonnull %0, ptr noundef nonnull @.str.11) #5
  br label %bb.bc

bb.au:                                            ; preds = %bb.an, %bb.ao
  %spec.store.select = select i1 %i.bo, ptr %.5.i, ptr @error_writer ; 2 uses
  %i.by = call i32 @Curl_cwriter_create(ptr noundef nonnull %i.a, ptr noundef nonnull %0, ptr noundef nonnull %spec.store.select, i32 noundef %i.c) #5 ; 3 uses
  %i.bz = load i64, ptr %i.d, align 1
  %i.ca = and i64 %i.bz, 536870912
  %.not151 = icmp eq i64 %i.ca, 0
  br i1 %.not151, label %bb.az, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.cb = load ptr, ptr %i.e, align 8, !tbaa !101 ; 2 uses
  %.not152 = icmp eq ptr %i.cb, null
  br i1 %.not152, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !103
  %i.ce = icmp sgt i32 %i.cd, 0
  %i.cf = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_write, i64 8), align 8
  %i.cg = icmp sgt i32 %i.cf, 0
  %or.cond24 = select i1 %i.ce, i1 %i.cg, i1 false
  br i1 %or.cond24, label %bb.ay, label %bb.az

bb.ax:                                            ; preds = %bb.av
  %.old22 = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_write, i64 8), align 8, !tbaa !103
  %.old23 = icmp sgt i32 %.old22, 0
  br i1 %.old23, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.aw, %bb.ax
  %i.ch = load ptr, ptr %spec.store.select, align 8, !tbaa !12
  call void (ptr, ptr, ...) @Curl_trc_write(ptr noundef nonnull %0, ptr noundef nonnull @.str.12, ptr noundef nonnull %i.f, ptr noundef %i.ch, i32 noundef %i.by) #5
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax, %bb.aw, %bb.au
  %.not153 = icmp eq i32 %i.by, 0
  br i1 %.not153, label %bb.ba, label %.thread169

bb.ba:                                            ; preds = %bb.az
  %i.ci = load ptr, ptr %i.a, align 8, !tbaa !104
  %i.cj = call i32 @Curl_cwriter_add(ptr noundef nonnull %0, ptr noundef %i.ci) #5 ; 2 uses
  %.not154 = icmp eq i32 %i.cj, 0
  br i1 %.not154, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.ck = load ptr, ptr %i.a, align 8, !tbaa !104
  call void @Curl_cwriter_free(ptr noundef nonnull %0, ptr noundef %i.ck) #5
  br label %.thread169

bb.bc:                                            ; preds = %bb.ba, %bb.ap, %bb.ar, %bb.as, %bb.at
  %spec.select = select i1 %i.bm, i1 true, i1 %.0115
  br label %bb.bd

.thread169:                                       ; preds = %bb.t, %bb.u, %bb.az, %bb.aa, %bb.bb, %bb.am, %bb.w, %bb.y
  %.2120.ph = phi i32 [ %i.cj, %bb.bb ], [ 61, %bb.aa ], [ 61, %bb.y ], [ 61, %bb.w ], [ 61, %bb.am ], [ 0, %bb.t ], [ 0, %bb.u ], [ %i.by, %bb.az ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br label %.loopexit

bb.bd:                                            ; preds = %bb.bc, %bb.x
  %.2117 = phi i1 [ false, %bb.x ], [ %spec.select, %bb.bc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  %.pre201 = load i8, ptr %.2125, align 1, !tbaa !41
  br label %.thread163

.thread163:                                       ; preds = %.critedge2, %bb.bd
  %i.cl = phi i8 [ %.pre201, %bb.bd ], [ %i.l, %.critedge2 ]
  %.4168 = phi i1 [ %.2117, %bb.bd ], [ %.0115, %.critedge2 ]
  %.not157 = icmp eq i8 %i.cl, 0
  br i1 %.not157, label %.loopexit, label %bb.b, !llvm.loop !40

.loopexit:                                        ; preds = %.thread163, %.thread169
  %.5 = phi i32 [ %.2120.ph, %.thread169 ], [ 0, %.thread163 ]
  ret i32 %.5
}

declare void @Curl_trc_write(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

declare i32 @curl_strnequal(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @Curl_failf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

declare i64 @Curl_cwriter_count(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @Curl_cwriter_get_by_name(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @Curl_cwriter_get_by_type(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @Curl_cwriter_create(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @Curl_cwriter_add(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @Curl_cwriter_free(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @Curl_cwriter_def_init(ptr noundef, ptr noundef) #2

declare i32 @Curl_cwriter_def_write(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i64 noundef) #2

declare void @Curl_cwriter_def_close(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal range(i32 0, 62) i32 @deflate_do_init(ptr noundef %0, ptr noundef initializes((16488, 16504)) %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16424
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16488
  store ptr @zalloc_cb, ptr %i.b, align 8, !tbaa !18
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16496
  store ptr @zfree_cb, ptr %i.c, align 8, !tbaa !19
  %i.d = tail call i32 @inflateInit_(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.15, i32 noundef 112) #5
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %1, i64 16472
  %.val = load ptr, ptr %i.e, align 8, !tbaa !20  ; 2 uses
  %.not.i = icmp eq ptr %.val, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ptr, ...) @Curl_failf(ptr noundef %0, ptr noundef nonnull @.str.16, ptr noundef nonnull %.val) #5
  br label %process_zlib_error.exit

bb.d:                                             ; preds = %bb.b
  tail call void (ptr, ptr, ...) @Curl_failf(ptr noundef %0, ptr noundef nonnull @.str.17) #5
  br label %process_zlib_error.exit

bb.e:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i32 1, ptr %i.f, align 8, !tbaa !23
  br label %process_zlib_error.exit

process_zlib_error.exit:                          ; preds = %bb.d, %bb.c, %bb.e
  %.0 = phi i32 [ 0, %bb.e ], [ 61, %bb.c ], [ 61, %bb.d ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal i32 @deflate_do_write(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i64 noundef %4) #0 {
bb.a:
  %i.a = trunc i32 %2 to i1
  %i.b = icmp ne i64 %4, 0
  %or.cond = and i1 %i.b, %i.a
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !24
  %i.e = tail call i32 @Curl_cwriter_write(ptr noundef %0, ptr noundef %i.d, i32 noundef %2, ptr noundef %3, i64 noundef %4) #5
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16424 ; 4 uses
  store ptr %3, ptr %i.f, align 8, !tbaa !25
  %i.g = trunc i64 %4 to i32                      ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16432 ; 2 uses
  store i32 %i.g, ptr %i.h, align 8, !tbaa !26
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !23
  %i.k = icmp eq i32 %i.j, 3
  br i1 %i.k, label %5, label %bb.e

5:                                                ; preds = %bb.c
  %6 = getelementptr inbounds nuw i8, ptr %1, i64 16420 ; 2 uses
  %7 = load i32, ptr %6, align 4, !tbaa !27       ; 4 uses
  %..i = tail call i32 @llvm.umin.i32(i32 %i.g, i32 %7) ; 3 uses
  %8 = sub nuw i32 %7, %..i
  store i32 %8, ptr %6, align 4, !tbaa !27
  %9 = sub nuw i32 %i.g, %..i
  store i32 %9, ptr %i.h, align 8, !tbaa !26
  %10 = zext i32 %..i to i64
  %11 = getelementptr inbounds nuw i8, ptr %3, i64 %10
  store ptr %11, ptr %i.f, align 8, !tbaa !25
  %.not.not.i = icmp ult i32 %7, %i.g
  br i1 %.not.not.i, label %process_zlib_error.exit.i.i, label %13

process_zlib_error.exit.i.i:                      ; preds = %5
  %12 = tail call i32 @inflateEnd(ptr noundef nonnull %i.f) #5 ; 0 uses
  store i32 0, ptr %i.i, align 8, !tbaa !28
  br label %bb.f

13:                                               ; preds = %5
  %.not23.not.i = icmp ugt i32 %7, %i.g
  br i1 %.not23.not.i, label %bb.f, label %.split19.i

.split19.i:                                       ; preds = %13
  %14 = tail call i32 @inflateEnd(ptr noundef nonnull %i.f) #5
  %.not.i = icmp eq i32 %14, 0
  br i1 %.not.i, label %bb.d, label %15

15:                                               ; preds = %.split19.i
  %16 = getelementptr i8, ptr %1, i64 16472
  %.val.i29.i = load ptr, ptr %16, align 8, !tbaa !20 ; 2 uses
  %.not.i.i30.i = icmp eq ptr %.val.i29.i, null
  br i1 %.not.i.i30.i, label %18, label %17

17:                                               ; preds = %15
  tail call void (ptr, ptr, ...) @Curl_failf(ptr noundef %0, ptr noundef nonnull @.str.16, ptr noundef nonnull %.val.i29.i) #5
  br label %bb.d

18:                                               ; preds = %15
  tail call void (ptr, ptr, ...) @Curl_failf(ptr noundef %0, ptr noundef nonnull @.str.17) #5
  br label %bb.d

bb.d:                                             ; preds = %18, %17, %.split19.i
  %.0.i27.i = phi i32 [ 0, %.split19.i ], [ 61, %17 ], [ 61, %18 ]
  store i32 0, ptr %i.i, align 8, !tbaa !28
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.l = tail call fastcc i32 @inflate_stream(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %2, i32 noundef 2)
  br label %bb.f

bb.f:                                             ; preds = %13, %bb.d, %process_zlib_error.exit.i.i, %bb.e, %bb.b
  %.0 = phi i32 [ %i.e, %bb.b ], [ %i.l, %bb.e ], [ 23, %process_zlib_error.exit.i.i ], [ %.0.i27.i, %bb.d ], [ 0, %13 ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal void @deflate_do_close(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !28
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %exit_zlib.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16424
  %i.d = tail call i32 @inflateEnd(ptr noundef nonnull %i.c) #5
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %process_zlib_error.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr i8, ptr %1, i64 16472
  %.val.i = load ptr, ptr %i.e, align 8, !tbaa !20 ; 2 uses
  %.not.i.i = icmp eq ptr %.val.i, null
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ptr, ...) @Curl_failf(ptr noundef %0, ptr noundef nonnull @.str.16, ptr noundef nonnull %.val.i) #5
  br label %process_zlib_error.exit.i

bb.e:                                             ; preds = %bb.c
  tail call void (ptr, ptr, ...) @Curl_failf(ptr noundef %0, ptr noundef nonnull @.str.17) #5
  br label %process_zlib_error.exit.i

process_zlib_error.exit.i:                        ; preds = %bb.e, %bb.d, %bb.b
  store i32 0, ptr %i.a, align 4, !tbaa !28
  br label %exit_zlib.exit

exit_zlib.exit:                                   ; preds = %bb.a, %process_zlib_error.exit.i
  ret void
}

; Function Attrs: nounwind uwtable
define internal ptr @zalloc_cb(ptr nofree readnone captures(none) %0, i32 noundef %1, i32 noundef %2) #0 {
bb.a:
  %i.a = load ptr, ptr @Curl_ccalloc, align 8, !tbaa !29
  %i.b = zext i32 %1 to i64
  %i.c = zext i32 %2 to i64
  %i.d = tail call ptr %i.a(i64 noundef %i.b, i64 noundef %i.c) #5
  ret ptr %i.d
}

; Function Attrs: nounwind uwtable
define internal void @zfree_cb(ptr nofree readnone captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = load ptr, ptr @Curl_cfree, align 8, !tbaa !29
  tail call void %i.a(ptr noundef %1) #5
  ret void
}

declare i32 @inflateInit_(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @Curl_cwriter_write(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 62) i32 @process_trailer(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16424 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16432 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !26   ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16420 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !27   ; 4 uses
  %. = tail call i32 @llvm.umin.i32(i32 %i.c, i32 %i.e) ; 3 uses
  %i.f = sub nuw i32 %i.e, %.
  store i32 %i.f, ptr %i.d, align 4, !tbaa !27
  %i.g = sub nuw i32 %i.c, %.
  store i32 %i.g, ptr %i.b, align 8, !tbaa !26
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !25
  %i.i = zext i32 %. to i64
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.i
  store ptr %i.j, ptr %i.a, align 8, !tbaa !25
  %.not.not = icmp ugt i32 %i.c, %i.e
  br i1 %.not.not, label %.split, label %bb.b

.split:                                           ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !28
  %.not.i = icmp eq i32 %i.l, 0
  br i1 %.not.i, label %exit_zlib.exit, label %process_zlib_error.exit.i

process_zlib_error.exit.i:                        ; preds = %.split
  %i.m = tail call i32 @inflateEnd(ptr noundef nonnull %i.a) #5 ; 0 uses
  store i32 0, ptr %i.k, align 8, !tbaa !28
  br label %exit_zlib.exit

bb.b:                                             ; preds = %bb.a
  %.not23.not = icmp ugt i32 %i.e, %i.c
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  br i1 %.not23.not, label %bb.g, label %.split19

.split19:                                         ; preds = %bb.b
  %i.o = load i32, ptr %i.n, align 8, !tbaa !28
  %.not.i24 = icmp eq i32 %i.o, 0
  br i1 %.not.i24, label %exit_zlib.exit, label %bb.c

bb.c:                                             ; preds = %.split19
  %i.p = tail call i32 @inflateEnd(ptr noundef nonnull %i.a) #5
  %.not = icmp eq i32 %i.p, 0
  br i1 %.not, label %process_zlib_error.exit.i26, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr i8, ptr %1, i64 16472
  %.val.i29 = load ptr, ptr %i.q, align 8, !tbaa !20 ; 2 uses
  %.not.i.i30 = icmp eq ptr %.val.i29, null
  br i1 %.not.i.i30, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ptr, ...) @Curl_failf(ptr noundef %0, ptr noundef nonnull @.str.16, ptr noundef nonnull %.val.i29) #5
  br label %process_zlib_error.exit.i26

bb.f:                                             ; preds = %bb.d
  tail call void (ptr, ptr, ...) @Curl_failf(ptr noundef %0, ptr noundef nonnull @.str.17) #5
  br label %process_zlib_error.exit.i26

process_zlib_error.exit.i26:                      ; preds = %bb.f, %bb.e, %bb.c
  %.0.i27 = phi i32 [ 0, %bb.c ], [ 61, %bb.e ], [ 61, %bb.f ]
  store i32 0, ptr %i.n, align 8, !tbaa !28
  br label %exit_zlib.exit

bb.g:                                             ; preds = %bb.b
  store i32 3, ptr %i.n, align 8, !tbaa !23
  br label %exit_zlib.exit

exit_zlib.exit:                                   ; preds = %process_zlib_error.exit.i26, %.split19, %process_zlib_error.exit.i, %.split, %bb.g
  %.1 = phi i32 [ 0, %bb.g ], [ 23, %.split ], [ 23, %process_zlib_error.exit.i ], [ %.0.i27, %process_zlib_error.exit.i26 ], [ 0, %.split19 ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @inflate_stream(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef range(i32 2, 5) %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16424 ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16432 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !26   ; 2 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !25
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 14 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !23
  switch i32 %i.f, label %exit_zlib.exit.sink.split.sink.split [
    i32 1, label %bb.b
    i32 2, label %bb.b
    i32 4, label %bb.b
    i32 0, label %exit_zlib.exit
  ]

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16448
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16456 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = getelementptr i8, ptr %1, i64 16472      ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16420
  br label %exit_zlib.exit88

exit_zlib.exit88:                                 ; preds = %exit_zlib.exit88.backedge, %bb.b
  %.065126 = phi i32 [ 0, %bb.b ], [ %.1, %exit_zlib.exit88.backedge ] ; 2 uses
  %i.m = add nsw i32 %.065126, 1
  %i.n = icmp sgt i32 %.065126, 63
  br i1 %i.n, label %bb.c, label %bb.e

bb.c:                                             ; preds = %exit_zlib.exit88
  %i.o = tail call i64 @Curl_timeleft_ms(ptr noundef %0) #5
  %i.p = icmp slt i64 %i.o, 0
  br i1 %i.p, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ptr, ...) @Curl_failf(ptr noundef %0, ptr noundef nonnull @.str.18) #5
  %i.q = load i32, ptr %i.e, align 8, !tbaa !28
  %.not.i86 = icmp eq i32 %i.q, 0
  br i1 %.not.i86, label %exit_zlib.exit, label %exit_zlib.exit.sink.split.sink.split

bb.e:                                             ; preds = %bb.c, %exit_zlib.exit88
  %.1 = phi i32 [ 0, %bb.c ], [ %i.m, %exit_zlib.exit88 ]
  store ptr %i.g, ptr %i.h, align 8, !tbaa !105
  store i32 16384, ptr %i.i, align 8, !tbaa !106
  %i.r = tail call i32 @inflate(ptr noundef nonnull %i.a, i32 noundef 5) #5 ; 2 uses
  %i.s = load i32, ptr %i.i, align 8, !tbaa !106  ; 2 uses
  %.not81 = icmp ne i32 %i.s, 16384
  %or.cond = icmp ult i32 %i.r, 2
  %or.cond84 = select i1 %.not81, i1 %or.cond, i1 false
  br i1 %or.cond84, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  store i32 %3, ptr %i.e, align 8, !tbaa !23
  %i.t = load ptr, ptr %i.j, align 8, !tbaa !24
  %i.u = sub i32 16384, %i.s
  %i.v = zext i32 %i.u to i64
  %i.w = tail call i32 @Curl_cwriter_write(ptr noundef %0, ptr noundef %i.t, i32 noundef %2, ptr noundef nonnull %i.g, i64 noundef %i.v) #5 ; 3 uses
  %.not82 = icmp eq i32 %i.w, 0
  br i1 %.not82, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = load i32, ptr %i.e, align 8, !tbaa !28
  %.not.i89 = icmp eq i32 %i.x, 0
  br i1 %.not.i89, label %exit_zlib.exit88.thread117, label %process_zlib_error.exit.i

process_zlib_error.exit.i:                        ; preds = %bb.g
  %i.y = tail call i32 @inflateEnd(ptr noundef nonnull %i.a) #5 ; 0 uses
  store i32 0, ptr %i.e, align 8, !tbaa !28
  br label %exit_zlib.exit88.thread117

bb.h:                                             ; preds = %bb.f, %bb.e
  switch i32 %i.r, label %bb.q [
    i32 0, label %exit_zlib.exit88.backedge
    i32 -5, label %exit_zlib.exit88.thread117
    i32 1, label %bb.i
    i32 -3, label %bb.j
  ]

exit_zlib.exit88.backedge:                        ; preds = %bb.h, %bb.l
  br label %exit_zlib.exit88

bb.i:                                             ; preds = %bb.h
  %i.z = tail call fastcc i32 @process_trailer(ptr noundef %0, ptr noundef nonnull %1)
  br label %exit_zlib.exit88.thread117

bb.j:                                             ; preds = %bb.h
  %i.aa = load i32, ptr %i.e, align 8, !tbaa !23
  %i.ab = icmp eq i32 %i.aa, 1
  br i1 %i.ab, label %bb.k, label %.loopexit

bb.k:                                             ; preds = %bb.j
  %i.ac = tail call i32 @inflateReset2(ptr noundef nonnull %i.a, i32 noundef -15) #5
  %i.ad = icmp eq i32 %i.ac, 0
  br i1 %i.ad, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store ptr %i.d, ptr %i.a, align 8, !tbaa !25
  store i32 %i.c, ptr %i.b, align 8, !tbaa !26
  store i32 2, ptr %i.e, align 8, !tbaa !23
  store i32 4, ptr %i.l, align 4, !tbaa !27
  br label %exit_zlib.exit88.backedge

bb.m:                                             ; preds = %bb.k
  store i32 0, ptr %i.e, align 8, !tbaa !23
  br label %.loopexit

.loopexit:                                        ; preds = %bb.j, %bb.m
  %.val85 = load ptr, ptr %i.k, align 8, !tbaa !20 ; 2 uses
  %.not.i92 = icmp eq ptr %.val85, null
  br i1 %.not.i92, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.loopexit
  tail call void (ptr, ptr, ...) @Curl_failf(ptr noundef %0, ptr noundef nonnull @.str.16, ptr noundef nonnull %.val85) #5
  br label %process_zlib_error.exit

bb.o:                                             ; preds = %.loopexit
  tail call void (ptr, ptr, ...) @Curl_failf(ptr noundef %0, ptr noundef nonnull @.str.17) #5
  br label %process_zlib_error.exit

process_zlib_error.exit:                          ; preds = %bb.n, %bb.o
  %i.ae = load i32, ptr %i.e, align 8, !tbaa !28
  %.not.i93 = icmp eq i32 %i.ae, 0
  br i1 %.not.i93, label %exit_zlib.exit88.thread117, label %bb.p

bb.p:                                             ; preds = %process_zlib_error.exit
  %i.af = tail call i32 @inflateEnd(ptr noundef nonnull %i.a) #5 ; 0 uses
  store i32 0, ptr %i.e, align 8, !tbaa !28
  br label %exit_zlib.exit88.thread117

bb.q:                                             ; preds = %bb.h
  %.val = load ptr, ptr %i.k, align 8, !tbaa !20  ; 2 uses
  %.not.i101 = icmp eq ptr %.val, null
  br i1 %.not.i101, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void (ptr, ptr, ...) @Curl_failf(ptr noundef %0, ptr noundef nonnull @.str.16, ptr noundef nonnull %.val) #5
  br label %process_zlib_error.exit102

bb.s:                                             ; preds = %bb.q
  tail call void (ptr, ptr, ...) @Curl_failf(ptr noundef %0, ptr noundef nonnull @.str.17) #5
  br label %process_zlib_error.exit102

process_zlib_error.exit102:                       ; preds = %bb.r, %bb.s
  %i.ag = load i32, ptr %i.e, align 8, !tbaa !28
  %.not.i103 = icmp eq i32 %i.ag, 0
  br i1 %.not.i103, label %exit_zlib.exit88.thread117, label %bb.t

bb.t:                                             ; preds = %process_zlib_error.exit102
  %i.ah = tail call i32 @inflateEnd(ptr noundef nonnull %i.a) #5 ; 0 uses
  store i32 0, ptr %i.e, align 8, !tbaa !28
  br label %exit_zlib.exit88.thread117

exit_zlib.exit88.thread117:                       ; preds = %bb.h, %bb.t, %bb.i, %bb.p, %process_zlib_error.exit102, %process_zlib_error.exit, %bb.g, %process_zlib_error.exit.i
  %.4 = phi i32 [ %i.w, %bb.g ], [ %i.w, %process_zlib_error.exit.i ], [ 61, %bb.t ], [ %i.z, %bb.i ], [ 61, %process_zlib_error.exit ], [ 61, %bb.p ], [ 61, %process_zlib_error.exit102 ], [ 0, %bb.h ] ; 3 uses
  %.not83 = icmp eq i32 %i.c, 0
  br i1 %.not83, label %exit_zlib.exit, label %bb.u

bb.u:                                             ; preds = %exit_zlib.exit88.thread117
  %i.ai = load i32, ptr %i.e, align 8, !tbaa !23
  %i.aj = icmp eq i32 %i.ai, 1
  br i1 %i.aj, label %exit_zlib.exit.sink.split, label %exit_zlib.exit

exit_zlib.exit.sink.split.sink.split:             ; preds = %bb.d, %bb.a
  %.274.ph.ph = phi i32 [ 23, %bb.a ], [ 28, %bb.d ]
  %i.ak = tail call i32 @inflateEnd(ptr noundef nonnull %i.a) #5 ; 0 uses
  br label %exit_zlib.exit.sink.split

exit_zlib.exit.sink.split:                        ; preds = %exit_zlib.exit.sink.split.sink.split, %bb.u
  %.sink = phi i32 [ %3, %bb.u ], [ 0, %exit_zlib.exit.sink.split.sink.split ]
  %.274.ph = phi i32 [ %.4, %bb.u ], [ %.274.ph.ph, %exit_zlib.exit.sink.split.sink.split ]
  store i32 %.sink, ptr %i.e, align 8, !tbaa !28
  br label %exit_zlib.exit

exit_zlib.exit:                                   ; preds = %exit_zlib.exit.sink.split, %bb.a, %bb.d, %exit_zlib.exit88.thread117, %bb.u
  %.274 = phi i32 [ %.4, %exit_zlib.exit88.thread117 ], [ 23, %bb.a ], [ 28, %bb.d ], [ %.4, %bb.u ], [ %.274.ph, %exit_zlib.exit.sink.split ]
  ret i32 %.274
}

declare i32 @inflateEnd(ptr noundef) local_unnamed_addr #2

declare i64 @Curl_timeleft_ms(ptr noundef) local_unnamed_addr #2

declare i32 @inflate(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @inflateReset2(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal range(i32 0, 62) i32 @gzip_do_init(ptr noundef %0, ptr noundef initializes((16488, 16504)) %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16424
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16488
  store ptr @zalloc_cb, ptr %i.b, align 8, !tbaa !18
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16496
  store ptr @zfree_cb, ptr %i.c, align 8, !tbaa !19
  %i.d = tail call i32 @inflateInit2_(ptr noundef nonnull %i.a, i32 noundef 47, ptr noundef nonnull @.str.15, i32 noundef 112) #5
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %1, i64 16472
  %.val = load ptr, ptr %i.e, align 8, !tbaa !20  ; 2 uses
  %.not.i = icmp eq ptr %.val, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ptr, ...) @Curl_failf(ptr noundef %0, ptr noundef nonnull @.str.16, ptr noundef nonnull %.val) #5
  br label %process_zlib_error.exit

bb.d:                                             ; preds = %bb.b
  tail call void (ptr, ptr, ...) @Curl_failf(ptr noundef %0, ptr noundef nonnull @.str.17) #5
  br label %process_zlib_error.exit

bb.e:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i32 4, ptr %i.f, align 8, !tbaa !23
  br label %process_zlib_error.exit

process_zlib_error.exit:                          ; preds = %bb.d, %bb.c, %bb.e
  %.0 = phi i32 [ 0, %bb.e ], [ 61, %bb.c ], [ 61, %bb.d ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal i32 @gzip_do_write(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i64 noundef %4) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16424 ; 2 uses
  %i.b = trunc i32 %2 to i1
  %i.c = icmp ne i64 %4, 0
  %or.cond = and i1 %i.c, %i.b
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !24
  %i.f = tail call i32 @Curl_cwriter_write(ptr noundef %0, ptr noundef %i.e, i32 noundef %2, ptr noundef %3, i64 noundef %4) #5
  br label %exit_zlib.exit

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !23
  switch i32 %i.h, label %bb.e [
    i32 4, label %bb.d
    i32 0, label %exit_zlib.exit
  ]

bb.d:                                             ; preds = %bb.c
  store ptr %3, ptr %i.a, align 8, !tbaa !25
  %i.i = trunc i64 %4 to i32
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16432
  store i32 %i.i, ptr %i.j, align 8, !tbaa !26
  %i.k = tail call fastcc i32 @inflate_stream(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %2, i32 noundef 4)
  br label %exit_zlib.exit

bb.e:                                             ; preds = %bb.c
  %i.l = tail call i32 @inflateEnd(ptr noundef nonnull %i.a) #5 ; 0 uses
  store i32 0, ptr %i.g, align 8, !tbaa !28
  br label %exit_zlib.exit

exit_zlib.exit:                                   ; preds = %bb.c, %bb.e, %bb.d, %bb.b
  %.0 = phi i32 [ %i.k, %bb.d ], [ %i.f, %bb.b ], [ 23, %bb.c ], [ 23, %bb.e ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal void @gzip_do_close(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !28
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %exit_zlib.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16424
  %i.d = tail call i32 @inflateEnd(ptr noundef nonnull %i.c) #5
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %process_zlib_error.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr i8, ptr %1, i64 16472
  %.val.i = load ptr, ptr %i.e, align 8, !tbaa !20 ; 2 uses
  %.not.i.i = icmp eq ptr %.val.i, null
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ptr, ...) @Curl_failf(ptr noundef %0, ptr noundef nonnull @.str.16, ptr noundef nonnull %.val.i) #5
  br label %process_zlib_error.exit.i

bb.e:                                             ; preds = %bb.c
  tail call void (ptr, ptr, ...) @Curl_failf(ptr noundef %0, ptr noundef nonnull @.str.17) #5
  br label %process_zlib_error.exit.i

process_zlib_error.exit.i:                        ; preds = %bb.e, %bb.d, %bb.b
  store i32 0, ptr %i.a, align 4, !tbaa !28
  br label %exit_zlib.exit

exit_zlib.exit:                                   ; preds = %bb.a, %process_zlib_error.exit.i
  ret void
}

declare i32 @inflateInit2_(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal range(i32 0, 28) i32 @brotli_do_init(ptr nofree readnone captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((16416, 16424)) %1) #0 {
bb.a:
  %i.a = tail call ptr @BrotliDecoderCreateInstance(ptr noundef null, ptr noundef null, ptr noundef null) #5 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16416
  store ptr %i.a, ptr %i.b, align 8, !tbaa !32
  %.not = icmp eq ptr %i.a, null
  %i.c = select i1 %.not, i32 27, i32 0
  ret i32 %i.c
}

; Function Attrs: nounwind uwtable
define internal i32 @brotli_do_write(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i64 noundef %4) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  store i64 %4, ptr %i.a, align 8, !tbaa !108
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  store ptr %3, ptr %i.b, align 8, !tbaa !109
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #5
  %i.e = trunc i32 %2 to i1
  %i.f = icmp ne i64 %4, 0
  %or.cond = and i1 %i.f, %i.e
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !24
  %i.i = tail call i32 @Curl_cwriter_write(ptr noundef %0, ptr noundef %i.h, i32 noundef %2, ptr noundef %3, i64 noundef %4) #5
  br label %.critedge

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16416 ; 5 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !32
  %.not = icmp eq ptr %i.k, null
  br i1 %.not, label %.critedge, label %.preheader

.preheader:                                       ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.d

bb.d:                                             ; preds = %.preheader, %brotli_map_error.exit
  %.039 = phi i32 [ 0, %.preheader ], [ %.1, %brotli_map_error.exit ] ; 2 uses
  %i.n = add nsw i32 %.039, 1
  %i.o = icmp sgt i32 %.039, 63
  br i1 %i.o, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.p = call i64 @Curl_timeleft_ms(ptr noundef %0) #5
  %i.q = icmp slt i64 %i.p, 0
  br i1 %i.q, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void (ptr, ptr, ...) @Curl_failf(ptr noundef %0, ptr noundef nonnull @.str.18) #5
  br label %.critedge

bb.g:                                             ; preds = %bb.e, %bb.d
  %.1 = phi i32 [ 0, %bb.e ], [ %i.n, %bb.d ]
  store ptr %i.l, ptr %i.c, align 8, !tbaa !109
  store i64 16384, ptr %i.d, align 8, !tbaa !108
  %i.r = load ptr, ptr %i.j, align 8, !tbaa !32
  %i.s = call i32 @BrotliDecoderDecompressStream(ptr noundef %i.r, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.d, ptr noundef nonnull %i.c, ptr noundef null) #5 ; 2 uses
  %i.t = load ptr, ptr %i.m, align 8, !tbaa !24
  %i.u = load i64, ptr %i.d, align 8, !tbaa !108
  %i.v = sub i64 16384, %i.u
  %i.w = call i32 @Curl_cwriter_write(ptr noundef %0, ptr noundef %i.t, i32 noundef %2, ptr noundef nonnull %i.l, i64 noundef %i.v) #5 ; 2 uses
  %.not37 = icmp eq i32 %i.w, 0
  br i1 %.not37, label %bb.h, label %.critedge

bb.h:                                             ; preds = %bb.g
  switch i32 %i.s, label %bb.j [
    i32 3, label %brotli_map_error.exit
    i32 2, label %brotli_map_error.exit
    i32 1, label %bb.i
  ]

bb.i:                                             ; preds = %bb.h
  %i.x = load ptr, ptr %i.j, align 8, !tbaa !32
  call void @BrotliDecoderDestroyInstance(ptr noundef %i.x) #5
  store ptr null, ptr %i.j, align 8, !tbaa !32
  %i.y = load i64, ptr %i.a, align 8, !tbaa !108
  %.not38 = icmp eq i64 %i.y, 0
  %spec.select = select i1 %.not38, i32 0, i32 23
  br label %brotli_map_error.exit

bb.j:                                             ; preds = %bb.h
  %i.z = load ptr, ptr %i.j, align 8, !tbaa !32
  %i.aa = call i32 @BrotliDecoderGetErrorCode(ptr noundef %i.z) #5 ; 2 uses
  %i.ab = icmp ugt i32 %i.aa, -31
  br i1 %i.ab, label %switch.lookup, label %.critedge

brotli_map_error.exit:                            ; preds = %bb.i, %bb.h, %bb.h
  %.132 = phi i32 [ %spec.select, %bb.i ], [ 0, %bb.h ], [ 0, %bb.h ] ; 2 uses
  %i.ac = load i64, ptr %i.a, align 8, !tbaa !108
  %i.ad = icmp ne i64 %i.ac, 0
  %i.ae = icmp eq i32 %i.s, 3
  %or.cond3 = select i1 %i.ad, i1 true, i1 %i.ae
  %i.af = icmp eq i32 %.132, 0
  %or.cond5 = select i1 %or.cond3, i1 %i.af, i1 false
  br i1 %or.cond5, label %bb.d, label %.critedge, !llvm.loop !107

switch.lookup:                                    ; preds = %bb.j
  %i.ag = sext i32 %i.aa to i64
  %i.ah = getelementptr i8, ptr @switch.table.brotli_do_write, i64 %i.ag
  %switch.gep = getelementptr i8, ptr %i.ah, i64 30
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  br label %.critedge

.critedge:                                        ; preds = %bb.g, %brotli_map_error.exit, %bb.j, %switch.lookup, %bb.c, %bb.f, %bb.b
  %.033 = phi i32 [ 28, %bb.f ], [ 23, %bb.c ], [ %i.i, %bb.b ], [ 23, %bb.j ], [ %switch.ext, %switch.lookup ], [ %.132, %brotli_map_error.exit ], [ %i.w, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  ret i32 %.033
}

; Function Attrs: nounwind uwtable
define internal void @brotli_do_close(ptr nofree readnone captures(none) %0, ptr nofree noundef captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16416 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !32   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @BrotliDecoderDestroyInstance(ptr noundef nonnull %i.b) #5
  store ptr null, ptr %i.a, align 8, !tbaa !32
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

declare ptr @BrotliDecoderCreateInstance(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @BrotliDecoderDecompressStream(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BrotliDecoderDestroyInstance(ptr noundef) local_unnamed_addr #2

declare i32 @BrotliDecoderGetErrorCode(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal range(i32 0, 28) i32 @zstd_do_init(ptr nofree readnone captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((32, 40)) %1) #0 {
bb.a:
  %i.a = tail call ptr @ZSTD_createDStream() #5   ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr %i.a, ptr %i.b, align 8, !tbaa !35
  %.not = icmp eq ptr %i.a, null
  %i.c = select i1 %.not, i32 27, i32 0
  ret i32 %i.c
}

; Function Attrs: nounwind uwtable
define internal i32 @zstd_do_write(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i64 noundef %4) #0 {
bb.a:
  %5 = alloca %struct.ZSTD_inBuffer_s, align 8    ; 6 uses
  %6 = alloca %struct.ZSTD_outBuffer_s, align 8   ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #5
  %i.a = trunc i32 %2 to i1
  %i.b = icmp ne i64 %4, 0
  %or.cond = and i1 %i.b, %i.a
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !24
  %i.e = tail call i32 @Curl_cwriter_write(ptr noundef %0, ptr noundef %i.d, i32 noundef %2, ptr noundef %3, i64 noundef %4) #5
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  store i64 0, ptr %i.f, align 8, !tbaa !111
  store ptr %3, ptr %5, align 8, !tbaa !112
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %4, ptr %i.g, align 8, !tbaa !113
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.d

bb.d:                                             ; preds = %.backedge, %bb.c
  %.0 = phi i32 [ 0, %bb.c ], [ %.1, %.backedge ] ; 2 uses
  %i.m = add nsw i32 %.0, 1
  %i.n = icmp sgt i32 %.0, 63
  br i1 %i.n, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.o = call i64 @Curl_timeleft_ms(ptr noundef %0) #5
  %i.p = icmp slt i64 %i.o, 0
  br i1 %i.p, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void (ptr, ptr, ...) @Curl_failf(ptr noundef %0, ptr noundef nonnull @.str.18) #5
  br label %.loopexit

bb.g:                                             ; preds = %bb.e, %bb.d
  %.1 = phi i32 [ 0, %bb.e ], [ %i.m, %bb.d ]
  store i64 0, ptr %i.h, align 8, !tbaa !115
  store ptr %i.i, ptr %6, align 8, !tbaa !116
  store i64 16384, ptr %i.j, align 8, !tbaa !117
  %i.q = load ptr, ptr %i.k, align 8, !tbaa !35
  %i.r = call i64 @ZSTD_decompressStream(ptr noundef %i.q, ptr noundef nonnull %6, ptr noundef nonnull %5) #5
  %i.s = call i32 @ZSTD_isError(i64 noundef %i.r) #5
  %.not = icmp eq i32 %i.s, 0
  br i1 %.not, label %bb.h, label %.loopexit

bb.h:                                             ; preds = %bb.g
  %i.t = load i64, ptr %i.h, align 8, !tbaa !115  ; 2 uses
  %.not32 = icmp eq i64 %i.t, 0
  br i1 %.not32, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.u = load ptr, ptr %i.l, align 8, !tbaa !24
  %i.v = call i32 @Curl_cwriter_write(ptr noundef %0, ptr noundef %i.u, i32 noundef %2, ptr noundef nonnull %i.i, i64 noundef %i.t) #5 ; 2 uses
  %.not33 = icmp eq i32 %i.v, 0
  br i1 %.not33, label %bb.j, label %.loopexit

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.w = load i64, ptr %i.f, align 8, !tbaa !111
  %i.x = icmp eq i64 %i.w, %4
  br i1 %i.x, label %bb.k, label %.backedge

bb.k:                                             ; preds = %bb.j
  %i.y = load i64, ptr %i.h, align 8, !tbaa !115
  %i.z = load i64, ptr %i.j, align 8, !tbaa !117
  %i.aa = icmp ult i64 %i.y, %i.z
  br i1 %i.aa, label %.loopexit, label %.backedge

.backedge:                                        ; preds = %bb.k, %bb.j
  br label %bb.d

.loopexit:                                        ; preds = %bb.i, %bb.k, %bb.g, %bb.f, %bb.b
  %.026 = phi i32 [ 28, %bb.f ], [ %i.e, %bb.b ], [ 0, %bb.k ], [ %i.v, %bb.i ], [ 61, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #5
  ret i32 %.026
}

; Function Attrs: nounwind uwtable
define internal void @zstd_do_close(ptr nofree readnone captures(none) %0, ptr nofree noundef captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !35   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i64 @ZSTD_freeDStream(ptr noundef nonnull %i.b) #5 ; 0 uses
  store ptr null, ptr %i.a, align 8, !tbaa !35
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

declare ptr @ZSTD_createDStream() local_unnamed_addr #2

declare i64 @ZSTD_decompressStream(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ZSTD_isError(i64 noundef) local_unnamed_addr #2

declare i64 @ZSTD_freeDStream(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @error_do_init(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1) #3 {
bb.a:
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @error_do_write(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr noundef %3, i64 noundef %4) #0 {
bb.a:
  %i.a = trunc i32 %2 to i1
  %i.b = icmp ne i64 %4, 0
  %or.cond = and i1 %i.b, %i.a
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !24
  %i.e = tail call i32 @Curl_cwriter_write(ptr noundef %0, ptr noundef %i.d, i32 noundef %2, ptr noundef %3, i64 noundef %4) #5
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void (ptr, ptr, ...) @Curl_failf(ptr noundef %0, ptr noundef nonnull @.str.24) #5
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ 61, %bb.c ], [ %i.e, %bb.b ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @error_do_close(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1) #3 {
bb.a:
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!"p1 omnipotent char", !8, i64 0}
!10 = !{!"long", !4, i64 0}
!11 = !{!"Curl_cwtype", !9, i64 0, !9, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !10, i64 40}
!12 = !{!11, !9, i64 0}
!13 = !{!"p1 _ZTS11Curl_cwtype", !8, i64 0}
!14 = !{!"llvm.loop.mustprogress"}
!15 = !{!"p1 _ZTS12Curl_cwriter", !8, i64 0}
!16 = !{!"p1 _ZTS14internal_state", !8, i64 0}
!17 = !{!"z_stream_s", !9, i64 0, !5, i64 8, !10, i64 16, !9, i64 24, !5, i64 32, !10, i64 40, !9, i64 48, !16, i64 56, !8, i64 64, !8, i64 72, !8, i64 80, !5, i64 88, !10, i64 96, !10, i64 104}
!18 = !{!17, !8, i64 64}
!19 = !{!17, !8, i64 72}
!20 = !{!17, !9, i64 48}
!21 = !{!"Curl_cwriter", !13, i64 0, !15, i64 8, !8, i64 16, !5, i64 24}
!22 = !{!"zlib_writer", !21, i64 0, !5, i64 32, !4, i64 36, !5, i64 16420, !17, i64 16424}
!23 = !{!22, !5, i64 32}
!24 = !{!21, !15, i64 8}
!25 = !{!17, !9, i64 0}
!26 = !{!17, !5, i64 8}
!27 = !{!22, !5, i64 16420}
!28 = !{!5, !5, i64 0}
!29 = !{!8, !8, i64 0}
!30 = !{!"p1 _ZTS24BrotliDecoderStateStruct", !8, i64 0}
!31 = !{!"brotli_writer", !21, i64 0, !4, i64 32, !30, i64 16416}
!32 = !{!31, !30, i64 16416}
!33 = !{!"p1 _ZTS11ZSTD_DCtx_s", !8, i64 0}
!34 = !{!"zstd_writer", !21, i64 0, !33, i64 32, !4, i64 40}
!35 = !{!34, !33, i64 32}
!36 = distinct !{!36, !14}
!37 = !{!13, !13, i64 0}
!38 = distinct !{!38, !14}
!39 = distinct !{!39, !14}
!40 = distinct !{!40, !14}
!41 = !{!4, !4, i64 0}
!42 = !{!"p1 _ZTS11connectdata", !8, i64 0}
!43 = !{!"p1 _ZTS10Curl_llist", !8, i64 0}
!44 = !{!"p1 _ZTS15Curl_llist_node", !8, i64 0}
!45 = !{!"Curl_llist_node", !43, i64 0, !8, i64 8, !44, i64 16, !44, i64 24}
!46 = !{!"CURLMsg", !5, i64 0, !8, i64 8, !4, i64 16}
!47 = !{!"Curl_message", !45, i64 0, !46, i64 32}
!48 = !{!"p1 _ZTS10Curl_multi", !8, i64 0}
!49 = !{!"p1 _ZTS10Curl_share", !8, i64 0}
!50 = !{!"any p2 pointer", !8, i64 0}
!51 = !{!"p2 _ZTS17Curl_hash_element", !50, i64 0}
!52 = !{!"Curl_hash", !51, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !10, i64 32, !10, i64 40}
!53 = !{!"p1 _ZTS8PslCache", !8, i64 0}
!54 = !{!"curltime", !10, i64 0, !5, i64 8}
!55 = !{!"p1 _ZTS12Curl_creader", !8, i64 0}
!56 = !{!"p1 _ZTS9buf_chunk", !8, i64 0}
!57 = !{!"p1 _ZTS9bufc_pool", !8, i64 0}
!58 = !{!"bufq", !56, i64 0, !56, i64 8, !56, i64 16, !57, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !5, i64 56}
!59 = !{!"SingleRequest", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !54, i64 40, !5, i64 56, !5, i64 60, !5, i64 64, !5, i64 68, !5, i64 72, !4, i64 76, !4, i64 77, !5, i64 80, !15, i64 88, !55, i64 96, !58, i64 104, !10, i64 168, !10, i64 176, !9, i64 184, !9, i64 192, !4, i64 200, !9, i64 208, !9, i64 216, !9, i64 224, !4, i64 232, !5, i64 233, !5, i64 233, !5, i64 233, !5, i64 233, !5, i64 233, !5, i64 233, !5, i64 233, !5, i64 233, !5, i64 234, !5, i64 234, !5, i64 234, !5, i64 234, !5, i64 234, !5, i64 234, !5, i64 234, !5, i64 234, !5, i64 235, !5, i64 235, !5, i64 235, !5, i64 235, !5, i64 235, !5, i64 235}
!60 = !{!"p1 _ZTS8_IO_FILE", !8, i64 0}
!61 = !{!"p1 _ZTS10curl_slist", !8, i64 0}
!62 = !{!"p1 _ZTS13curl_httppost", !8, i64 0}
!63 = !{!"p1 _ZTS13curl_mimepart", !8, i64 0}
!64 = !{!"p1 _ZTS9curl_blob", !8, i64 0}
!65 = !{!"ssl_primary_config", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !9, i64 48, !9, i64 56, !9, i64 64, !9, i64 72, !9, i64 80, !9, i64 88, !9, i64 96, !64, i64 104, !64, i64 112, !64, i64 120, !64, i64 128, !9, i64 136, !9, i64 144, !9, i64 152, !5, i64 160, !4, i64 164, !4, i64 165, !5, i64 166, !5, i64 166, !5, i64 166, !5, i64 166, !5, i64 166}
!66 = !{!"ssl_config_data", !65, i64 0, !10, i64 168, !8, i64 176, !8, i64 184, !5, i64 192, !5, i64 192, !5, i64 192, !5, i64 192, !5, i64 192, !5, i64 192, !5, i64 192, !5, i64 192, !5, i64 193, !5, i64 193, !5, i64 193}
!67 = !{!"short", !4, i64 0}
!68 = !{!"ssl_general_config", !5, i64 0}
!69 = !{!"p1 _ZTS8Curl_URL", !8, i64 0}
!70 = !{!"UserDefined", !60, i64 0, !8, i64 8, !9, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !5, i64 48, !5, i64 52, !8, i64 56, !8, i64 64, !10, i64 72, !8, i64 80, !8, i64 88, !8, i64 96, !8, i64 104, !8, i64 112, !8, i64 120, !8, i64 128, !8, i64 136, !8, i64 144, !8, i64 152, !8, i64 160, !8, i64 168, !8, i64 176, !8, i64 184, !8, i64 192, !8, i64 200, !8, i64 208, !8, i64 216, !8, i64 224, !8, i64 232, !8, i64 240, !8, i64 248, !8, i64 256, !10, i64 264, !10, i64 272, !10, i64 280, !10, i64 288, !10, i64 296, !10, i64 304, !10, i64 312, !61, i64 320, !62, i64 328, !63, i64 336, !61, i64 344, !61, i64 352, !61, i64 360, !10, i64 368, !66, i64 376, !66, i64 576, !61, i64 776, !67, i64 784, !4, i64 786, !4, i64 787, !68, i64 788, !10, i64 792, !5, i64 800, !5, i64 804, !8, i64 808, !61, i64 816, !10, i64 824, !10, i64 832, !4, i64 840, !4, i64 841, !4, i64 842, !61, i64 848, !61, i64 856, !61, i64 864, !5, i64 872, !4, i64 880, !4, i64 1480, !5, i64 1544, !10, i64 1552, !10, i64 1560, !8, i64 1568, !5, i64 1576, !8, i64 1584, !8, i64 1592, !8, i64 1600, !8, i64 1608, !8, i64 1616, !10, i64 1624, !10, i64 1632, !10, i64 1640, !10, i64 1648, !10, i64 1656, !5, i64 1664, !5, i64 1668, !5, i64 1672, !8, i64 1680, !8, i64 1688, !10, i64 1696, !69, i64 1704, !8, i64 1712, !8, i64 1720, !61, i64 1728, !5, i64 1736, !67, i64 1740, !67, i64 1742, !67, i64 1744, !67, i64 1746, !67, i64 1748, !67, i64 1750, !67, i64 1752, !4, i64 1754, !4, i64 1755, !4, i64 1756, !4, i64 1757, !4, i64 1758, !4, i64 1759, !4, i64 1760, !4, i64 1761, !4, i64 1762, !5, i64 1763, !5, i64 1763, !5, i64 1763, !5, i64 1763, !5, i64 1763, !5, i64 1763, !5, i64 1763, !5, i64 1763, !5, i64 1764, !5, i64 1764, !5, i64 1764, !5, i64 1764, !5, i64 1764, !5, i64 1764, !5, i64 1764, !5, i64 1764, !5, i64 1765, !5, i64 1765, !5, i64 1765, !5, i64 1765, !5, i64 1765, !5, i64 1765, !5, i64 1765, !5, i64 1765, !5, i64 1766, !5, i64 1766, !5, i64 1766, !5, i64 1766, !5, i64 1766, !5, i64 1766, !5, i64 1766, !5, i64 1766, !5, i64 1767, !5, i64 1767, !5, i64 1767, !5, i64 1767, !5, i64 1767, !5, i64 1767, !5, i64 1767, !5, i64 1767, !5, i64 1768, !5, i64 1768, !5, i64 1768, !5, i64 1768, !5, i64 1768, !5, i64 1768, !5, i64 1768, !5, i64 1768, !5, i64 1769, !5, i64 1769, !5, i64 1769, !5, i64 1769, !5, i64 1769, !5, i64 1769, !5, i64 1769, !5, i64 1769, !5, i64 1770, !5, i64 1770, !5, i64 1770}
!71 = !{!"p1 _ZTS10CookieInfo", !8, i64 0}
!72 = !{!"p1 _ZTS4hsts", !8, i64 0}
!73 = !{!"p1 _ZTS10altsvcinfo", !8, i64 0}
!74 = !{!"Curl_rlimit", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !54, i64 56, !5, i64 72}
!75 = !{!"pgrs_dir", !10, i64 0, !10, i64 8, !10, i64 16, !74, i64 24}
!76 = !{!"Progress", !54, i64 0, !10, i64 16, !75, i64 24, !75, i64 128, !10, i64 232, !10, i64 240, !10, i64 248, !10, i64 256, !10, i64 264, !10, i64 272, !10, i64 280, !10, i64 288, !10, i64 296, !10, i64 304, !10, i64 312, !10, i64 320, !54, i64 328, !54, i64 344, !54, i64 360, !54, i64 376, !54, i64 392, !4, i64 408, !4, i64 456, !5, i64 552, !5, i64 556, !5, i64 556, !5, i64 556, !5, i64 556, !5, i64 556, !5, i64 556}
!77 = !{!"dynbuf", !9, i64 0, !10, i64 8, !10, i64 16, !10, i64 24}
!78 = !{!"p1 _ZTS9Curl_peer", !8, i64 0}
!79 = !{!"p1 _ZTS10Curl_creds", !8, i64 0}
!80 = !{!"digestdata", !79, i64 0, !78, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !9, i64 48, !9, i64 56, !5, i64 64, !4, i64 68, !5, i64 69, !5, i64 69}
!81 = !{!"auth", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 12}
!82 = !{!"p1 _ZTS17Curl_resolv_async", !8, i64 0}
!83 = !{!"p1 _ZTS9Curl_tree", !8, i64 0}
!84 = !{!"Curl_tree", !83, i64 0, !83, i64 8, !83, i64 16, !83, i64 24, !54, i64 32, !8, i64 48}
!85 = !{!"Curl_llist", !44, i64 0, !44, i64 8, !8, i64 16, !10, i64 24}
!86 = !{!"urlpieces", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !9, i64 48, !9, i64 56}
!87 = !{!"bufref", !8, i64 0, !9, i64 8, !10, i64 16}
!88 = !{!"p1 _ZTS17Curl_header_store", !8, i64 0}
!89 = !{!"p1 _ZTS13curl_trc_feat", !8, i64 0}
!90 = !{!"store_netrc", !77, i64 0, !9, i64 32, !5, i64 40}
!91 = !{!"dynamically_allocated_data", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40}
!92 = !{!"http_negotiation", !4, i64 0, !4, i64 1, !4, i64 2, !4, i64 3, !5, i64 4, !5, i64 4, !5, i64 4, !5, i64 4}
!93 = !{!"UrlState", !54, i64 0, !10, i64 16, !10, i64 24, !77, i64 32, !61, i64 64, !10, i64 72, !78, i64 80, !78, i64 88, !5, i64 96, !5, i64 100, !8, i64 104, !9, i64 112, !80, i64 120, !80, i64 192, !81, i64 264, !81, i64 280, !82, i64 296, !8, i64 304, !8, i64 312, !8, i64 320, !8, i64 328, !9, i64 336, !5, i64 344, !54, i64 352, !84, i64 368, !85, i64 424, !4, i64 456, !9, i64 1296, !9, i64 1304, !10, i64 1312, !5, i64 1320, !5, i64 1324, !5, i64 1328, !4, i64 1332, !10, i64 1368, !8, i64 1376, !8, i64 1384, !69, i64 1392, !86, i64 1400, !87, i64 1464, !87, i64 1488, !61, i64 1512, !63, i64 1520, !63, i64 1528, !10, i64 1536, !77, i64 1544, !85, i64 1576, !4, i64 1608, !88, i64 1704, !61, i64 1712, !89, i64 1720, !90, i64 1728, !79, i64 1776, !91, i64 1784, !92, i64 1832, !67, i64 1840, !4, i64 1842, !4, i64 1843, !5, i64 1844, !5, i64 1844, !5, i64 1844, !5, i64 1844, !5, i64 1844, !5, i64 1844, !5, i64 1844, !5, i64 1844, !5, i64 1845, !5, i64 1845, !5, i64 1845, !5, i64 1845, !5, i64 1845, !5, i64 1845, !5, i64 1845, !5, i64 1845, !5, i64 1846, !5, i64 1846, !5, i64 1846, !5, i64 1846, !5, i64 1846, !5, i64 1846, !5, i64 1846}
!94 = !{!"p1 _ZTS12WildcardData", !8, i64 0}
!95 = !{!"ip_quadruple", !4, i64 0, !4, i64 46, !67, i64 92, !67, i64 94, !4, i64 96}
!96 = !{!"p2 _ZTS10curl_slist", !50, i64 0}
!97 = !{!"curl_certinfo", !5, i64 0, !96, i64 8}
!98 = !{!"PureInfo", !5, i64 0, !5, i64 4, !5, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !5, i64 40, !5, i64 44, !5, i64 48, !5, i64 52, !9, i64 56, !9, i64 64, !10, i64 72, !5, i64 80, !95, i64 84, !9, i64 184, !5, i64 192, !97, i64 200, !5, i64 216, !5, i64 220, !5, i64 220}
!99 = !{!"curl_tlssessioninfo", !5, i64 0, !8, i64 8}
!100 = !{!"Curl_easy", !5, i64 0, !10, i64 8, !5, i64 16, !5, i64 20, !8, i64 24, !42, i64 32, !5, i64 40, !5, i64 44, !47, i64 48, !48, i64 104, !48, i64 112, !49, i64 120, !52, i64 128, !53, i64 176, !59, i64 184, !70, i64 424, !71, i64 2200, !72, i64 2208, !73, i64 2216, !76, i64 2224, !93, i64 2784, !94, i64 4632, !98, i64 4640, !99, i64 4864}
!101 = !{!100, !89, i64 4504}
!102 = !{!"curl_trc_feat", !9, i64 0, !5, i64 8}
!103 = !{!102, !5, i64 8}
!104 = !{!15, !15, i64 0}
!105 = !{!17, !9, i64 24}
!106 = !{!17, !5, i64 32}
!107 = distinct !{!107, !14}
!108 = !{!10, !10, i64 0}
!109 = !{!9, !9, i64 0}
!110 = !{!"ZSTD_inBuffer_s", !8, i64 0, !10, i64 8, !10, i64 16}
!111 = !{!110, !10, i64 16}
!112 = !{!110, !8, i64 0}
!113 = !{!110, !10, i64 8}
!114 = !{!"ZSTD_outBuffer_s", !8, i64 0, !10, i64 8, !10, i64 16}
!115 = !{!114, !10, i64 16}
!116 = !{!114, !8, i64 0}
!117 = !{!114, !10, i64 8}
end_hunk_0
