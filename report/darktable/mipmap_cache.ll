Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/mipmap_cache?download=true
inline.NumInlined: 56
inline.NumDeleted: 19
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_mipmap_cache_deallocate_dynamic:bb.a

bb.h:                                             ; preds = %bb.g
  %i.v = tail call i32 @dt_conf_get_bool(ptr noundef nonnull @.str.30) #19
  %i.w = icmp ne i32 %i.v, 0
  %i.x = icmp ne i32 %i.e, 10                     ; 2 uses
  %or.cond = and i1 %i.x, %i.w
  br i1 %or.cond, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.y = tail call i32 @dt_conf_get_bool(ptr noundef nonnull @.str.37) #19
  %i.z = icmp eq i32 %i.y, 0
  %or.cond3.not = or i1 %i.z, %i.x
  br i1 %or.cond3.not, label %_mipmap_cache_unlink_ondisk_thumbnail.exit, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4096) %i.b, i8 0, i64 4096, i1 false)
  %i.aa = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.b, i64 noundef 4096, ptr noundef nonnull @.str.41, ptr noundef nonnull %i.p, i32 noundef %i.e) #19 ; 0 uses
  %i.ab = call i32 @g_mkdir_with_parents(ptr noundef nonnull %i.b, i32 noundef 488) #19
  %.not46 = icmp eq i32 %i.ab, 0
  br i1 %.not46, label %bb.k, label %.thread53

bb.k:                                             ; preds = %bb.j
  %i.ac = load i32, ptr %i.c, align 4, !tbaa !90
  %i.ad = and i32 %i.ac, 268435455
  %i.ae = add nuw nsw i32 %i.ad, 1
  %i.af = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.b, i64 noundef 4096, ptr noundef nonnull @.str.7, ptr noundef nonnull %i.p, i32 noundef %i.e, i32 noundef %i.ae) #19 ; 0 uses
  %i.ag = call i32 @g_file_test(ptr noundef nonnull %i.b, i32 noundef 16) #19
  %.not47 = icmp eq i32 %i.ag, 0
  br i1 %.not47, label %bb.l, label %.thread53

bb.l:                                             ; preds = %bb.k
  %i.ah = call noalias ptr @fopen(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.42) ; 2 uses
  %.not48 = icmp eq ptr %i.ah, null
  br i1 %.not48, label %.thread53, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.ai = call i32 @statvfs(ptr noundef nonnull %i.b, ptr noundef nonnull %2) #19
  %.not49 = icmp eq i32 %i.ai, 0
  br i1 %.not49, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !145
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.am = load i64, ptr %i.al, align 8, !tbaa !146
  %i.an = mul i64 %i.am, %i.ak                    ; 2 uses
  %i.ao = icmp ult i64 %i.an, 104857600
  br i1 %i.ao, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.ap = lshr i64 %i.an, 20
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.43, i64 noundef %i.ap, ptr noundef nonnull %i.b) #19
  br label %bb.t

bb.p:                                             ; preds = %bb.m
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.44, ptr noundef nonnull %i.b) #19
  br label %bb.t

bb.q:                                             ; preds = %bb.n
  %i.aq = call i32 @dt_conf_get_int(ptr noundef nonnull @.str.45) #19
  %i.ar = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !39
  switch i32 %i.as, label %.fold.split [
    i32 1, label %bb.s
    i32 2, label %bb.r
  ]

bb.r:                                             ; preds = %bb.q
  br label %bb.s

.fold.split:                                      ; preds = %bb.q
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %.fold.split, %bb.r
  %.038 = phi ptr [ @dt_mipmap_cache_exif_data_srgb, %bb.q ], [ @dt_mipmap_cache_exif_data_adobergb, %bb.r ], [ null, %.fold.split ]
  %.0 = phi i32 [ 50, %bb.q ], [ 50, %bb.r ], [ 0, %.fold.split ]
  %i.at = load ptr, ptr %1, align 8, !tbaa !20
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 64
  %i.av = load i32, ptr %i.g, align 64, !tbaa !36
  %i.aw = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !37
  %i.ay = call i32 @llvm.smax.i32(i32 %i.aq, i32 10)
  %i.az = call i32 @llvm.umin.i32(i32 %i.ay, i32 100)
  %i.ba = call i32 @dt_imageio_jpeg_write(ptr noundef nonnull %i.b, ptr noundef nonnull %i.au, i32 noundef %i.av, i32 noundef %i.ax, i32 noundef %i.az, ptr noundef %.038, i32 noundef %.0) #19
  %.not50 = icmp eq i32 %i.ba, 0
  br i1 %.not50, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.o, %bb.s, %bb.p
  %i.bb = call i32 @g_unlink(ptr noundef nonnull %i.b) #19 ; 0 uses
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  %i.bc = call i32 @fclose(ptr noundef nonnull %i.ah) ; 0 uses
  br label %.thread53

.thread53:                                        ; preds = %bb.l, %bb.k, %bb.u, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  br label %_mipmap_cache_unlink_ondisk_thumbnail.exit

_mipmap_cache_unlink_ondisk_thumbnail.exit:       ; preds = %bb.f, %bb.e, %bb.c, %bb.g, %bb.i, %.thread53, %bb.a
  %i.bd = load ptr, ptr %1, align 8, !tbaa !20
  call void @free(ptr noundef %i.bd) #19
  ret void
}

declare i32 @dt_worker_threads(...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define void @dt_mipmap_cache_cleanup() local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 112), align 8, !tbaa !82 ; 5 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 208
  tail call void @dt_cache_cleanup(ptr noundef nonnull %i.b) #19
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 512
  tail call void @dt_cache_cleanup(ptr noundef nonnull %i.c) #19
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 360
  tail call void @dt_cache_cleanup(ptr noundef nonnull %i.d) #19
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 112), align 8, !tbaa !82
  tail call void @free(ptr noundef nonnull %i.a) #19
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

declare void @dt_cache_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define void @dt_mipmap_cache_print() local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 112), align 8, !tbaa !82 ; 17 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 256
  %i.c = load i64, ptr %i.b, align 8, !tbaa !148  ; 2 uses
  %i.d = uitofp reassoc nsz arcp contract afn i64 %i.c to double
  %i.e = fmul reassoc nnan nsz arcp contract afn double %i.d, f0x3EB0000000000000
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 264
  %i.g = load i64, ptr %i.f, align 8, !tbaa !149  ; 2 uses
  %i.h = uitofp reassoc nsz arcp contract afn i64 %i.g to double
  %i.i = fmul reassoc nnan nsz arcp contract afn double %i.h, f0x3EB0000000000000
  %i.j = uitofp reassoc nsz arcp contract afn i64 %i.c to float
  %i.k = fmul reassoc nnan nsz arcp contract afn float %i.j, 1.000000e+02
  %i.l = uitofp reassoc nsz arcp contract afn i64 %i.g to float
  %i.m = fdiv reassoc nsz arcp contract afn float %i.k, %i.l
  %i.n = fpext reassoc nsz arcp contract afn float %i.m to double
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str, double noundef %i.e, double noundef %i.i, double noundef %i.n) #19
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 408
  %i.p = load i64, ptr %i.o, align 8, !tbaa !150  ; 2 uses
  %i.q = trunc i64 %i.p to i32
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 416
  %i.s = load i64, ptr %i.r, align 8, !tbaa !151  ; 2 uses
  %i.t = trunc i64 %i.s to i32
  %i.u = uitofp reassoc nsz arcp contract afn i64 %i.p to float
  %i.v = fmul reassoc nnan nsz arcp contract afn float %i.u, 1.000000e+02
  %i.w = uitofp reassoc nsz arcp contract afn i64 %i.s to float
  %i.x = fdiv reassoc nsz arcp contract afn float %i.v, %i.w
  %i.y = fpext reassoc nsz arcp contract afn float %i.x to double
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.1, i32 noundef %i.q, i32 noundef %i.t, double noundef %i.y) #19
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 560
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !152 ; 2 uses
  %i.ab = trunc i64 %i.aa to i32
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 568
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !153 ; 2 uses
  %i.ae = trunc i64 %i.ad to i32
  %i.af = uitofp reassoc nsz arcp contract afn i64 %i.aa to float
  %i.ag = fmul reassoc nnan nsz arcp contract afn float %i.af, 1.000000e+02
  %i.ah = uitofp reassoc nsz arcp contract afn i64 %i.ad to float
  %i.ai = fdiv reassoc nsz arcp contract afn float %i.ag, %i.ah
  %i.aj = fpext reassoc nsz arcp contract afn float %i.ai to double
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.2, i32 noundef %i.ab, i32 noundef %i.ae, double noundef %i.aj) #19
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 320 ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !154
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 344
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 472 ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !155
  %i.ap = add i64 %i.ao, %i.al
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 496 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 624 ; 2 uses
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !156
  %i.at = add i64 %i.ap, %i.as
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 648 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 328
  %i.aw = load <2 x i64>, ptr %i.am, align 8, !tbaa !87
  %i.ax = load <2 x i64>, ptr %i.aq, align 8, !tbaa !87
  %i.ay = add <2 x i64> %i.ax, %i.aw
  %i.az = load <2 x i64>, ptr %i.au, align 8, !tbaa !87
  %i.ba = add <2 x i64> %i.ay, %i.az
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.3) #19
  %i.bb = load i64, ptr %i.ak, align 8, !tbaa !154 ; 2 uses
  %i.bc = load <4 x i64>, ptr %i.av, align 8, !tbaa !87
  %i.bd = sitofp reassoc nsz arcp contract afn <4 x i64> %i.bc to <4 x double>
  %i.be = fmul reassoc nnan nsz arcp contract afn <4 x double> %i.bd, splat (double 1.000000e+02)
  %i.bf = insertelement <4 x i64> poison, i64 %i.bb, i64 0
  %i.bg = shufflevector <4 x i64> %i.bf, <4 x i64> poison, <4 x i32> <i32 0, i32 0, i32 poison, i32 poison>
  %i.bh = shufflevector <2 x i64> %i.ba, <2 x i64> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bi = shufflevector <4 x i64> %i.bg, <4 x i64> %i.bh, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 2 uses
  %i.bj = sitofp reassoc nsz arcp contract afn <4 x i64> %i.bi to <4 x float>
  %i.bk = uitofp reassoc nsz arcp contract afn <4 x i64> %i.bi to <4 x float>
  %i.bl = shufflevector <4 x float> %i.bj, <4 x float> %i.bk, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.bm = fpext reassoc nsz arcp contract afn <4 x float> %i.bl to <4 x double> ; 2 uses
  %i.bn = fdiv reassoc nsz arcp contract afn <4 x double> %i.be, %i.bm ; 4 uses
  %i.bo = sitofp reassoc nsz arcp contract afn i64 %i.bb to double
  %i.bp = fmul reassoc nnan nsz arcp contract afn double %i.bo, 1.000000e+02
  %i.bq = uitofp reassoc nsz arcp contract afn i64 %i.at to float
  %i.br = fpext reassoc nsz arcp contract afn float %i.bq to double ; 3 uses
  %i.bs = fdiv reassoc nsz arcp contract afn double %i.bp, %i.br
  %i.bt = extractelement <4 x double> %i.bn, i64 0
  %i.bu = extractelement <4 x double> %i.bn, i64 1
  %i.bv = extractelement <4 x double> %i.bn, i64 2
  %i.bw = extractelement <4 x double> %i.bn, i64 3
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.4, double noundef %i.bt, double noundef %i.bu, double noundef %i.bw, double noundef %i.bv, double noundef %i.bs) #19
  %i.bx = getelementptr inbounds nuw i8, ptr %i.a, i64 480
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !157
  %i.bz = sitofp reassoc nsz arcp contract afn i64 %i.by to double
  %i.ca = fmul reassoc nnan nsz arcp contract afn double %i.bz, 1.000000e+02
  %i.cb = load i64, ptr %i.an, align 8, !tbaa !155 ; 2 uses
  %i.cc = sitofp reassoc nsz arcp contract afn i64 %i.cb to float
  %i.cd = fpext reassoc nsz arcp contract afn float %i.cc to double ; 2 uses
  %i.ce = fdiv reassoc nsz arcp contract afn double %i.ca, %i.cd
  %i.cf = getelementptr inbounds nuw i8, ptr %i.a, i64 488
  %i.cg = tail call <3 x i64> @llvm.masked.load.v3i64.p0(ptr nonnull align 8 %i.cf, <3 x i1> <i1 true, i1 false, i1 true>, <3 x i64> poison), !tbaa !87
  %i.ch = shufflevector <3 x i64> %i.cg, <3 x i64> poison, <2 x i32> <i32 0, i32 2>
  %i.ci = sitofp reassoc nsz arcp contract afn <2 x i64> %i.ch to <2 x double>
  %i.cj = fmul reassoc nnan nsz arcp contract afn <2 x double> %i.ci, splat (double 1.000000e+02)
  %i.ck = shufflevector <4 x double> %i.bm, <4 x double> poison, <2 x i32> <i32 2, i32 3> ; 3 uses
  %i.cl = insertelement <2 x double> %i.ck, double %i.cd, i64 0
  %i.cm = fdiv reassoc nsz arcp contract afn <2 x double> %i.cj, %i.cl ; 2 uses
  %i.cn = load <2 x i64>, ptr %i.aq, align 8
  %i.co = insertelement <2 x i64> %i.cn, i64 %i.cb, i64 1
  %i.cp = sitofp reassoc nsz arcp contract afn <2 x i64> %i.co to <2 x double>
  %i.cq = fmul reassoc nnan nsz arcp contract afn <2 x double> %i.cp, splat (double 1.000000e+02)
  %i.cr = insertelement <2 x double> %i.ck, double %i.br, i64 1
  %i.cs = fdiv reassoc nsz arcp contract afn <2 x double> %i.cq, %i.cr ; 2 uses
  %i.ct = extractelement <2 x double> %i.cm, i64 0
  %i.cu = extractelement <2 x double> %i.cm, i64 1
  %i.cv = extractelement <2 x double> %i.cs, i64 0
  %i.cw = extractelement <2 x double> %i.cs, i64 1
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.5, double noundef %i.ce, double noundef %i.ct, double noundef %i.cu, double noundef %i.cv, double noundef %i.cw) #19
  %i.cx = getelementptr inbounds nuw i8, ptr %i.a, i64 632
  %i.cy = load i64, ptr %i.ar, align 8, !tbaa !156 ; 2 uses
  %i.cz = sitofp reassoc nsz arcp contract afn i64 %i.cy to float
  %i.da = fpext reassoc nsz arcp contract afn float %i.cz to double
  %i.db = load <2 x i64>, ptr %i.cx, align 8, !tbaa !87
  %i.dc = sitofp reassoc nsz arcp contract afn <2 x i64> %i.db to <2 x double>
  %i.dd = fmul reassoc nnan nsz arcp contract afn <2 x double> %i.dc, splat (double 1.000000e+02)
  %i.de = insertelement <2 x double> poison, double %i.da, i64 0
  %i.df = shufflevector <2 x double> %i.de, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dg = fdiv reassoc nsz arcp contract afn <2 x double> %i.dd, %i.df ; 2 uses
  %i.dh = load <2 x i64>, ptr %i.au, align 8, !tbaa !87
  %i.di = sitofp reassoc nsz arcp contract afn <2 x i64> %i.dh to <2 x double>
  %i.dj = fmul reassoc nnan nsz arcp contract afn <2 x double> %i.di, splat (double 1.000000e+02)
  %i.dk = fdiv reassoc nsz arcp contract afn <2 x double> %i.dj, %i.ck ; 2 uses
  %i.dl = sitofp reassoc nsz arcp contract afn i64 %i.cy to double
  %i.dm = fmul reassoc nnan nsz arcp contract afn double %i.dl, 1.000000e+02
  %i.dn = fdiv reassoc nsz arcp contract afn double %i.dm, %i.br
  %i.do = extractelement <2 x double> %i.dg, i64 0
  %i.dp = extractelement <2 x double> %i.dg, i64 1
  %i.dq = extractelement <2 x double> %i.dk, i64 0
  %i.dr = extractelement <2 x double> %i.dk, i64 1
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.6, double noundef %i.do, double noundef %i.dp, double noundef %i.dr, double noundef %i.dq, double noundef %i.dn) #19
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

declare void @dt_print_ext(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define void @dt_mipmap_cache_get_with_caller(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i8 noundef signext %4, ptr noundef %5, i32 noundef %6) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [4096 x i8], align 16             ; 6 uses
  %7 = alloca %struct.dt_image_t, align 64        ; 6 uses
  %i.b = alloca [4096 x i8], align 16             ; 5 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca [4096 x i8], align 16             ; 5 uses
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 112), align 8, !tbaa !82 ; 6 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %i.f, align 8, !tbaa !32
  br label %.critedge274

bb.c:                                             ; preds = %bb.a
  %i.g = shl i32 %2, 28
  %i.h = add i32 %1, 268435455
  %i.i = and i32 %i.h, 268435455
  %i.j = or disjoint i32 %i.g, %i.i               ; 5 uses
  %.not251 = icmp eq ptr %0, null                 ; 2 uses
  br i1 %.not251, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 0, ptr %i.k, align 4, !tbaa !159
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.l = icmp eq i32 %3, 4                        ; 2 uses
  br i1 %i.l, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %switch.selectcmp.i = icmp eq i32 %2, 11
  %switch.select.i = select i1 %switch.selectcmp.i, i64 360, i64 208
  %switch.selectcmp4.i = icmp eq i32 %2, 12
  %switch.select5.i = select i1 %switch.selectcmp4.i, i64 512, i64 %switch.select.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 %switch.select5.i
  %i.n = tail call ptr @dt_cache_testget(ptr noundef nonnull %i.m, i32 noundef %i.j, i8 noundef signext %4) #19 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.n, ptr %i.o, align 8, !tbaa !16
  %.not266 = icmp eq ptr %i.n, null
  br i1 %.not266, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = load ptr, ptr %i.n, align 8, !tbaa !20   ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load <2 x i32>, ptr %i.p, align 64, !tbaa !85
  store <2 x i32> %i.r, ptr %i.q, align 8, !tbaa !85
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.t = load float, ptr %i.s, align 8, !tbaa !38
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  store float %i.t, ptr %i.u, align 8, !tbaa !160
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.w = load i32, ptr %i.v, align 8, !tbaa !39
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %i.w, ptr %i.x, align 8, !tbaa !86
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %1, ptr %i.y, align 4, !tbaa !161
  store i32 %2, ptr %0, align 8, !tbaa !128
  %i.z = getelementptr inbounds nuw i8, ptr %i.p, i64 64
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.z, ptr %i.aa, align 8, !tbaa !32
  br label %_dead_image_8.exit

bb.h:                                             ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ab, i8 0, i64 16, i1 false)
  store i32 -1, ptr %i.ac, align 8, !tbaa !86
  store i32 13, ptr %0, align 8, !tbaa !128
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %i.ad, align 8, !tbaa !32
  br label %_dead_image_8.exit

bb.i:                                             ; preds = %bb.e
  switch i32 %3, label %_dead_image_8.exit [
    i32 1, label %bb.j
    i32 2, label %bb.l
    i32 3, label %bb.o
    i32 0, label %bb.bb
  ]

bb.j:                                             ; preds = %bb.i
  %i.ae = icmp ugt i32 %2, 12
  br i1 %i.ae, label %.critedge274, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.af = tail call ptr @dt_image_load_job_create(i32 noundef %1, i32 noundef %2) #19
  %i.ag = tail call i32 @dt_control_add_job(i32 noundef 1, ptr noundef %i.af) #19 ; 0 uses
  br label %_dead_image_8.exit

bb.l:                                             ; preds = %bb.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.e, i64 664 ; 2 uses
  %i.ai = load i8, ptr %i.ah, align 8, !tbaa !83
  %.not264 = icmp eq i8 %i.ai, 0
  %i.aj = icmp ugt i32 %2, 12
  %or.cond277 = or i1 %i.aj, %.not264
  br i1 %or.cond277, label %.critedge274, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4096) %i.a, i8 0, i64 4096, i1 false)
  %i.ak = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 4096, ptr noundef nonnull @.str.7, ptr noundef nonnull %i.ah, i32 noundef %2, i32 noundef %i.j) #19 ; 0 uses
  %i.al = call i32 @g_file_test(ptr noundef nonnull %i.a, i32 noundef 16) #19
  %.not265.not = icmp eq i32 %i.al, 0
  br i1 %.not265.not, label %.critedge, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.am = call ptr @dt_image_load_job_create(i32 noundef %1, i32 noundef %2) #19
  %i.an = call i32 @dt_control_add_job(i32 noundef 1, ptr noundef %i.am) #19 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %_dead_image_8.exit

bb.o:                                             ; preds = %bb.i
  %switch.selectcmp.i278 = icmp eq i32 %2, 11     ; 2 uses
  %switch.select.i279 = select i1 %switch.selectcmp.i278, i64 360, i64 208
  %switch.selectcmp4.i280 = icmp eq i32 %2, 12
  %switch.select5.i281 = select i1 %switch.selectcmp4.i280, i64 512, i64 %switch.select.i279
  %i.ao = getelementptr inbounds nuw i8, ptr %i.e, i64 %switch.select5.i281 ; 4 uses
  %i.ap = tail call ptr @dt_cache_get_with_caller(ptr noundef nonnull %i.ao, i32 noundef %i.j, i8 noundef signext %4, ptr noundef %5, i32 noundef %6) #19 ; 4 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !20 ; 12 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  store ptr %i.ap, ptr %i.ar, align 8, !tbaa !16
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 20
  %i.at = load i32, ptr %i.as, align 4, !tbaa !40
  %i.au = and i32 %i.at, 1
  %.not258 = icmp eq i32 %i.au, 0                 ; 2 uses
  br i1 %.not258, label %bb.ab, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.av = getelementptr inbounds nuw i8, ptr %i.ao, i64 136
  %i.aw = atomicrmw add ptr %i.av, i64 1 seq_cst, align 8 ; 0 uses
  switch i32 %2, label %bb.z [
    i32 12, label %bb.q
    i32 11, label %bb.y
  ]

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  %i.ax = tail call ptr @dt_image_cache_get(i32 noundef %1, i8 noundef signext 114) #19 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(1888) %7, ptr noundef nonnull align 16 dereferenceable(1888) %i.ax, i64 1888, i1 false), !tbaa.struct !166
  tail call void @dt_image_cache_read_release(ptr noundef nonnull %i.ax) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4096) %i.b, i8 0, i64 4096, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  store i32 1, ptr %i.c, align 4, !tbaa !85
  %i.ay = getelementptr inbounds nuw i8, ptr %7, i64 1440
  %i.az = load i32, ptr %i.ay, align 32, !tbaa !131
  call void @dt_image_full_path(i32 noundef %i.az, ptr noundef nonnull %i.b, i64 noundef 4096, ptr noundef nonnull %i.c) #19
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %1, ptr %i.ba, align 4, !tbaa !161
  store i32 12, ptr %0, align 8, !tbaa !128
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %i.bb, align 8, !tbaa !32
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 0, ptr %i.bc, align 4, !tbaa !167
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.bd, align 8, !tbaa !168
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store float 0.000000e+00, ptr %i.be, align 8, !tbaa !160
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store i32 -1, ptr %i.bf, align 8, !tbaa !86
  %i.bg = call i32 @dt_imageio_open(ptr noundef nonnull %7, ptr noundef nonnull %i.b, ptr noundef nonnull %0) #19 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 %i.bg, ptr %i.bh, align 4, !tbaa !159
  %i.bi = load ptr, ptr %i.ar, align 8, !tbaa !16
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !20 ; 5 uses
  %i.bk = icmp eq i32 %i.bg, 0
  br i1 %i.bk, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bl = call ptr @dt_image_cache_get(i32 noundef %1, i8 noundef signext 119) #19 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1888) %i.bl, ptr noundef nonnull align 64 dereferenceable(1888) %7, i64 1888, i1 false), !tbaa.struct !166
  br label %bb.x

bb.s:                                             ; preds = %bb.q
  %i.bm = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !126
  %i.bn = and i32 %i.bm, 33554432
  %.not259 = icmp eq i32 %i.bn, 0
end_hunk_0
