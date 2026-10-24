Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/curl/original/content_encoding?download=true
inline.NumInlined: 17
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@Curl_build_unencoding_stack:bb.a

bb.g:                                             ; preds = %bb.f
  %i.p = load i64, ptr %i.d, align 1
  %i.q = and i64 %i.p, 536870912
  %.not142 = icmp eq i64 %i.q, 0
  br i1 %.not142, label %bb.l, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = load ptr, ptr %i.e, align 8, !tbaa !101  ; 2 uses
  %.not143 = icmp eq ptr %i.r, null
  br i1 %.not143, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load i32, ptr %i.s, align 8, !tbaa !103
  %i.u = icmp sgt i32 %i.t, 0
  %i.v = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_write, i64 8), align 8
  %i.w = icmp sgt i32 %i.v, 0
  %or.cond = select i1 %i.u, i1 %i.w, i1 false
  br i1 %or.cond, label %bb.k, label %bb.l

bb.j:                                             ; preds = %bb.h
  %.old = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_write, i64 8), align 8, !tbaa !103
  %.old3 = icmp sgt i32 %.old, 0
  br i1 %.old3, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.i, %bb.j
  %i.x = trunc i64 %.0113 to i32
  call void (ptr, ptr, ...) @Curl_trc_write(ptr noundef nonnull %0, ptr noundef nonnull @.str.2, ptr noundef nonnull %i.f, i32 noundef %i.x, ptr noundef nonnull %.1124) #5
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i, %bb.g, %bb.f
  %i.y = icmp eq i64 %.0113, 7                    ; 2 uses
  %or.cond6 = select i1 %i.b, i1 %i.y, i1 false
  br i1 %or.cond6, label %.thread, label %bb.m

.thread:                                          ; preds = %bb.l
  %i.z = call i32 @curl_strnequal(ptr noundef nonnull %.1124, ptr noundef nonnull @.str.5, i64 noundef 7) #5
  %i.aa = icmp ne i32 %i.z, 0
  %.pre = load i64, ptr %i.d, align 1
  br label %bb.n

bb.m:                                             ; preds = %bb.l
  %.pre200 = load i64, ptr %i.d, align 1          ; 2 uses
  br i1 %i.b, label %bb.n, label %.critedge159

bb.n:                                             ; preds = %.thread, %bb.m
  %i.ab = phi i64 [ %.pre, %.thread ], [ %.pre200, %bb.m ]
  %i.ac = phi i1 [ %i.aa, %.thread ], [ false, %bb.m ] ; 6 uses
  %i.ad = and i64 %i.ab, 8388608
  %i.ae = icmp ne i64 %i.ad, 0
  %or.cond9 = select i1 %i.ae, i1 true, i1 %i.ac
  br i1 %or.cond9, label %bb.z, label %bb.o

.critedge159:                                     ; preds = %bb.m
  %i.af = and i64 %.pre200, 68719476736
  %.not144 = icmp eq i64 %i.af, 0
  br i1 %.not144, label %.thread161, label %bb.o

bb.o:                                             ; preds = %.critedge159, %bb.n
  %i.ag = call i32 @curl_strnequal(ptr noundef nonnull %.1124, ptr noundef nonnull @.str, i64 noundef 8) #5
  %.not145 = icmp eq i32 %i.ag, 0
  %i.ah = load i64, ptr %i.d, align 1
  %i.ai = and i64 %i.ah, 536870912
  %.not146 = icmp eq i64 %i.ai, 0
  br i1 %.not146, label %bb.t, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.aj = load ptr, ptr %i.e, align 8, !tbaa !101 ; 2 uses
  %.not147 = icmp eq ptr %i.aj, null
  br i1 %.not147, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !103
  %i.am = icmp sgt i32 %i.al, 0
  %i.an = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_write, i64 8), align 8
  %i.ao = icmp sgt i32 %i.an, 0
  %or.cond12 = select i1 %i.am, i1 %i.ao, i1 false
  br i1 %or.cond12, label %bb.s, label %bb.t

bb.r:                                             ; preds = %bb.p
  %.old10 = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_write, i64 8), align 8, !tbaa !103
  %.old11 = icmp sgt i32 %.old10, 0
  br i1 %.old11, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.q, %bb.r
  %i.ap = trunc i64 %.0113 to i32
  call void (ptr, ptr, ...) @Curl_trc_write(ptr noundef nonnull %0, ptr noundef nonnull @.str.6, i32 noundef %i.ap, ptr noundef nonnull %.1124) #5
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.q, %bb.o
  br i1 %i.b, label %bb.u, label %.thread169

bb.u:                                             ; preds = %bb.t
  %i.aq = load i64, ptr %i.d, align 1
  %i.ar = and i64 %i.aq, 34359738368
  %.not148 = icmp eq i64 %i.ar, 0
  br i1 %.not148, label %bb.v, label %.thread169

bb.v:                                             ; preds = %bb.u
  br i1 %.0115, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.as = trunc i64 %.0113 to i32
  call void (ptr, ptr, ...) @Curl_failf(ptr noundef nonnull %0, ptr noundef nonnull @.str.7, i32 noundef %i.as, ptr noundef nonnull %.1124) #5
  br label %.thread169

bb.x:                                             ; preds = %bb.v
  br i1 %.not145, label %bb.y, label %bb.bd

bb.y:                                             ; preds = %bb.x
  %i.at = trunc i64 %.0113 to i32
  call void (ptr, ptr, ...) @Curl_failf(ptr noundef nonnull %0, ptr noundef nonnull @.str.8, i32 noundef %i.at, ptr noundef nonnull %.1124) #5
  br label %.thread169

bb.z:                                             ; preds = %bb.n
  %i.au = call i64 @Curl_cwriter_count(ptr noundef nonnull %0, i32 noundef 1) #5
  %i.av = icmp ugt i64 %i.au, 4
  br i1 %i.av, label %bb.aa, label %.preheader.preheader.i

.thread161:                                       ; preds = %.critedge159
  %i.aw = call i64 @Curl_cwriter_count(ptr noundef nonnull %0, i32 noundef 3) #5
  %i.ax = icmp ugt i64 %i.aw, 4
  br i1 %i.ax, label %bb.aa, label %.loopexit.i

bb.aa:                                            ; preds = %.thread161, %bb.z
  call void (ptr, ptr, ...) @Curl_failf(ptr noundef nonnull %0, ptr noundef nonnull @.str.9, i32 noundef 5, ptr noundef nonnull %i.f) #5
  br label %.thread169

.preheader.preheader.i:                           ; preds = %bb.z
  %i.ay = call i32 @curl_strnequal(ptr noundef nonnull %.1124, ptr noundef %i.g, i64 noundef range(i64 -9223372036854775807, -9223372036854775808) %.0113) #5
  %.not48.i = icmp eq i32 %i.ay, 0
  br i1 %.not48.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %.preheader.preheader.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.g, i64 %.0113
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !41
  %.not49.i = icmp eq i8 %i.ba, 0
  br i1 %.not49.i, label %find_unencode_writer.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %.preheader.preheader.i
  br i1 %.not50.i, label %.loopexit.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bb = call i32 @curl_strnequal(ptr noundef nonnull %.1124, ptr noundef nonnull %i.h, i64 noundef range(i64 -9223372036854775807, -9223372036854775808) %.0113) #5
  %.not51.i = icmp eq i32 %i.bb, 0
  br i1 %.not51.i, label %.loopexit.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.bc = getelementptr inbounds nuw i8, ptr %i.h, i64 %.0113
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !41
  %.not52.i = icmp eq i8 %i.bd, 0
  br i1 %.not52.i, label %find_unencode_writer.exit, label %.loopexit.i

.loopexit.i:                                      ; preds = %.thread161, %bb.ae, %bb.ad, %bb.ac
  %i.be = phi i1 [ false, %.thread161 ], [ %i.ac, %bb.ae ], [ %i.ac, %bb.ad ], [ %i.ac, %bb.ac ] ; 7 uses
  %i.bf = call i32 @curl_strnequal(ptr noundef nonnull %.1124, ptr noundef nonnull @.str, i64 noundef range(i64 -9223372036854775807, -9223372036854775808) %.0113) #5
  %.not43.i = icmp ne i32 %i.bf, 0
  %.not44.i = icmp eq i64 %.0113, 8
  %or.cond.i = and i1 %.not44.i, %.not43.i
  br i1 %or.cond.i, label %find_unencode_writer.exit, label %bb.af

bb.af:                                            ; preds = %.loopexit.i
  %i.bg = call i32 @curl_strnequal(ptr noundef nonnull %.1124, ptr noundef nonnull @.str.13, i64 noundef range(i64 -9223372036854775807, -9223372036854775808) %.0113) #5
  %.not46.i = icmp ne i32 %i.bg, 0
  %.not47.i = icmp eq i64 %.0113, 4               ; 3 uses
  %or.cond74.i = and i1 %.not47.i, %.not46.i
  br i1 %or.cond74.i, label %find_unencode_writer.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.bh = call i32 @curl_strnequal(ptr noundef nonnull %.1124, ptr noundef nonnull @.str.14, i64 noundef range(i64 -9223372036854775807, -9223372036854775808) %.0113) #5
  %.not43.1.i = icmp ne i32 %i.bh, 0
  %or.cond75.i = and i1 %i.y, %.not43.1.i
  br i1 %or.cond75.i, label %find_unencode_writer.exit, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.bi = call i32 @curl_strnequal(ptr noundef nonnull %.1124, ptr noundef nonnull @.str.19, i64 noundef range(i64 -9223372036854775807, -9223372036854775808) %.0113) #5
  %.not43.2.i = icmp ne i32 %i.bi, 0
  %or.cond76.i = and i1 %.not47.i, %.not43.2.i
  br i1 %or.cond76.i, label %find_unencode_writer.exit, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.bj = call i32 @curl_strnequal(ptr noundef nonnull %.1124, ptr noundef nonnull @.str.20, i64 noundef range(i64 -9223372036854775807, -9223372036854775808) %.0113) #5
  %.not46.2.i = icmp ne i32 %i.bj, 0
  %.not47.2.i = icmp eq i64 %.0113, 6
  %or.cond77.i = and i1 %.not47.2.i, %.not46.2.i
  br i1 %or.cond77.i, label %find_unencode_writer.exit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.bk = call i32 @curl_strnequal(ptr noundef nonnull %.1124, ptr noundef nonnull @.str.21, i64 noundef range(i64 -9223372036854775807, -9223372036854775808) %.0113) #5
  %.not43.3.i = icmp ne i32 %i.bk, 0
  %.not44.3.i = icmp eq i64 %.0113, 2
  %or.cond78.i = and i1 %.not44.3.i, %.not43.3.i
  br i1 %or.cond78.i, label %find_unencode_writer.exit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.bl = call i32 @curl_strnequal(ptr noundef nonnull %.1124, ptr noundef nonnull @.str.22, i64 noundef range(i64 -9223372036854775807, -9223372036854775808) %.0113) #5
  %.not43.4.i = icmp ne i32 %i.bl, 0
  %or.cond79.i = and i1 %.not47.i, %.not43.4.i
  %or.cond79.i.fr = freeze i1 %or.cond79.i
  %spec.select.i = select i1 %or.cond79.i.fr, ptr @zstd_encoding, ptr null
  br label %find_unencode_writer.exit

find_unencode_writer.exit:                        ; preds = %bb.ab, %bb.ae, %.loopexit.i, %bb.af, %bb.ag, %bb.ah, %bb.ai, %bb.aj, %bb.ak
  %i.bm = phi i1 [ %i.be, %bb.ai ], [ %i.be, %bb.af ], [ %i.be, %.loopexit.i ], [ %i.ac, %bb.ab ], [ %i.be, %bb.ag ], [ %i.be, %bb.aj ], [ %i.be, %bb.ak ], [ %i.be, %bb.ah ], [ %i.ac, %bb.ae ] ; 3 uses
  %.5.i = phi ptr [ @gzip_encoding, %bb.ai ], [ @identity_encoding, %bb.af ], [ @identity_encoding, %.loopexit.i ], [ @Curl_httpchunk_unencoder, %bb.ab ], [ @deflate_encoding, %bb.ag ], [ @brotli_encoding, %bb.aj ], [ %spec.select.i, %bb.ak ], [ @gzip_encoding, %bb.ah ], [ @Curl_httpchunk_unencoder, %bb.ae ] ; 4 uses
  %or.cond15 = select i1 %.not, i1 true, i1 %i.bm
  br i1 %or.cond15, label %bb.an, label %bb.al

bb.al:                                            ; preds = %find_unencode_writer.exit
  %i.bn = call ptr @Curl_cwriter_get_by_name(ptr noundef nonnull %0, ptr noundef nonnull @.str.5) #5
  %.not149 = icmp eq ptr %i.bn, null
  br i1 %.not149, label %.thread163, label %bb.am

.thread163:                                       ; preds = %bb.al
  %.not228 = icmp eq ptr %.5.i, null
  br i1 %.not228, label %bb.au, label %.thread211

bb.am:                                            ; preds = %bb.al
  call void (ptr, ptr, ...) @Curl_failf(ptr noundef nonnull %0, ptr noundef nonnull @.str.10) #5
  br label %.thread169

bb.an:                                            ; preds = %find_unencode_writer.exit
  %i.bo = icmp ne ptr %.5.i, null                 ; 2 uses
  %or.cond18 = select i1 %i.bo, i1 %i.bm, i1 false
  br i1 %or.cond18, label %bb.ao, label %3

bb.ao:                                            ; preds = %bb.an
  %i.bp = call ptr @Curl_cwriter_get_by_type(ptr noundef nonnull %0, ptr noundef nonnull %.5.i) #5
  %.not150 = icmp eq ptr %i.bp, null
  br i1 %.not150, label %.thread211, label %bb.ap

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

3:                                                ; preds = %bb.an
  br i1 %i.bo, label %.thread211, label %bb.au

.thread211:                                       ; preds = %bb.ao, %.thread163, %3
  br label %bb.au

bb.au:                                            ; preds = %.thread163, %3, %.thread211
  %4 = phi ptr [ %.5.i, %.thread211 ], [ @error_writer, %3 ], [ @error_writer, %.thread163 ] ; 2 uses
  %i.by = call i32 @Curl_cwriter_create(ptr noundef nonnull %i.a, ptr noundef nonnull %0, ptr noundef nonnull %4, i32 noundef %i.c) #5 ; 3 uses
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
  %i.ch = load ptr, ptr %4, align 8, !tbaa !12
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
  br label %.thread163.a

.thread163.a:                                     ; preds = %.critedge2, %bb.bd
  %i.cl = phi i8 [ %.pre201, %bb.bd ], [ %i.l, %.critedge2 ]
  %.4168 = phi i1 [ %.2117, %bb.bd ], [ %.0115, %.critedge2 ]
  %.not157 = icmp eq i8 %i.cl, 0
  br i1 %.not157, label %.loopexit, label %bb.b, !llvm.loop !40

.loopexit:                                        ; preds = %.thread163.a, %.thread169
  %.5 = phi i32 [ %.2120.ph, %.thread169 ], [ 0, %.thread163.a ]
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
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16424
  store ptr %3, ptr %i.f, align 8, !tbaa !25
  %i.g = trunc i64 %4 to i32
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16432
  store i32 %i.g, ptr %i.h, align 8, !tbaa !26
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.j = load i32, ptr %i.i, align 8, !tbaa !23
  %i.k = icmp eq i32 %i.j, 3
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = tail call fastcc i32 @process_trailer(ptr noundef %0, ptr noundef nonnull %1)
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.m = tail call fastcc i32 @inflate_stream(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %2, i32 noundef 2)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.b
  %.0 = phi i32 [ %i.l, %bb.d ], [ %i.m, %bb.e ], [ %i.e, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal void @deflate_do_close(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !27
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
  store i32 0, ptr %i.a, align 4, !tbaa !27
  br label %exit_zlib.exit

exit_zlib.exit:                                   ; preds = %bb.a, %process_zlib_error.exit.i
  ret void
}

; Function Attrs: nounwind uwtable
define internal ptr @zalloc_cb(ptr nofree readnone captures(none) %0, i32 noundef %1, i32 noundef %2) #0 {
bb.a:
  %i.a = load ptr, ptr @Curl_ccalloc, align 8, !tbaa !28
  %i.b = zext i32 %1 to i64
  %i.c = zext i32 %2 to i64
  %i.d = tail call ptr %i.a(i64 noundef %i.b, i64 noundef %i.c) #5
  ret ptr %i.d
}

; Function Attrs: nounwind uwtable
define internal void @zfree_cb(ptr nofree readnone captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = load ptr, ptr @Curl_cfree, align 8, !tbaa !28
  tail call void %i.a(ptr noundef %1) #5
  ret void
}

declare i32 @inflateInit_(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @Curl_cwriter_write(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

end_hunk_0
