Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_demosaic?download=true
inline.NumInlined: 382
inline.NumDeleted: 74
loop-unroll.NumCompletelyUnrolled: 134
loop-unroll.NumRuntimeUnrolled: 42
loop-unroll.NumUnrolled: 177
begin_hunk_0_@legacy_params:bb.a
bb.f:                                             ; preds = %.sink.split, %bb.a
  %.0 = phi i32 [ 1, %bb.a ], [ 0, %.sink.split ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #5

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #5

; Function Attrs: nounwind uwtable
define range(i32 0, 3) i32 @input_colorspace(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef readnone captures(none) %2) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !32
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.d = tail call i32 @dt_image_is_mono_sraw(ptr noundef nonnull %i.c) #27
  %.not = icmp eq i32 %i.d, 0
  %i.e = select i1 %.not, i32 0, i32 2
  ret i32 %i.e
}

declare i32 @dt_image_is_mono_sraw(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @output_colorspace(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef readnone captures(none) %2) local_unnamed_addr #0 {
bb.a:
  ret i32 2
}

; Function Attrs: nounwind uwtable
define void @distort_mask(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.b = load float, ptr %i.a, align 4, !tbaa !34
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.d = load float, ptr %i.c, align 4, !tbaa !34
  %i.e = fcmp reassoc nsz arcp contract afn une float %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = tail call ptr @dt_interpolation_new(i32 noundef 3) #27
  tail call void @dt_interpolation_resample_roi_mask(ptr noundef %i.f, ptr noundef %3, ptr noundef nonnull %5, ptr noundef %2, ptr noundef nonnull %4) #27
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @dt_iop_copy_image_roi(ptr noundef %3, ptr noundef %2, i64 noundef 1, ptr noundef nonnull %4, ptr noundef nonnull %5) #27
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

declare ptr @dt_interpolation_new(i32 noundef) local_unnamed_addr #3

declare void @dt_interpolation_resample_roi_mask(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @dt_iop_copy_image_roi(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @modify_roi_out(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef writeonly captures(none) initializes((0, 20)) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #7 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %2, ptr noundef nonnull align 4 dereferenceable(20) %3, i64 20, i1 false), !tbaa.struct !35
  store i32 0, ptr %2, align 4, !tbaa !36
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 0, ptr %i.a, align 4, !tbaa !37
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @modify_roi_in(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef writeonly captures(none) initializes((0, 20)) %3) local_unnamed_addr #7 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %3, ptr noundef nonnull align 4 dereferenceable(20) %2, i64 20, i1 false), !tbaa.struct !35
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.b = load float, ptr %i.a, align 4, !tbaa !34
  %i.c = load <4 x i32>, ptr %2, align 4, !tbaa !15
  %i.d = sitofp <4 x i32> %i.c to <4 x float>
  %i.e = insertelement <4 x float> poison, float %i.b, i64 0
  %i.f = shufflevector <4 x float> %i.e, <4 x float> poison, <4 x i32> zeroinitializer
  %i.g = fdiv reassoc nsz arcp contract afn <4 x float> %i.d, %i.f ; 2 uses
  %i.h = fcmp reassoc nsz arcp contract afn ole <4 x float> %i.g, <float 0.000000e+00, float 0.000000e+00, float 8.000000e+00, float 8.000000e+00>
  %i.i = select <4 x i1> %i.h, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 8.000000e+00, float 8.000000e+00>, <4 x float> %i.g
  %i.j = fptosi <4 x float> %i.i to <4 x i32>
  store <4 x i32> %i.j, ptr %3, align 4, !tbaa !15
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 16
  store float 1.000000e+00, ptr %i.k, align 4, !tbaa !34
  ret void
}

; Function Attrs: nounwind uwtable
define void @process(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca [4 x float], align 16             ; 6 uses
  %i.b = alloca [6 x ptr], align 16               ; 32 uses
  %i.c = alloca [3 x [104 x float]], align 16     ; 7 uses
  %i.d = alloca [112 x float], align 16           ; 14 uses
  %i.e = alloca [3 x [3 x [8 x i16]]], align 16   ; 7 uses
  %i.f = alloca [5 x i8], align 1                 ; 12 uses
  %i.g = alloca [8 x i8], align 8                 ; 8 uses
  %i.h = alloca [3 x [3 x [8 x i16]]], align 16   ; 6 uses
  %i.i = alloca [3 x [8 x float]], align 16       ; 16 uses
  %i.j = alloca [5 x i8], align 1                 ; 88 uses
  %i.k = alloca [4 x float], align 16             ; 21 uses
  %i.l = alloca [4 x float], align 16             ; 21 uses
  %i.m = alloca [2 x i32], align 4                ; 5 uses
  %i.n = alloca [4 x float], align 16             ; 15 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 664 ; 4 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !32   ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 112 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !446  ; 9 uses
  tail call void @dt_dev_clear_scharr_mask(ptr noundef %i.s) #27
  %i.t = getelementptr i8, ptr %i.s, i64 644
  %.val = load i32, ptr %i.t, align 4, !tbaa !454 ; 2 uses
  %i.u = and i32 %.val, 260
  %i.v = icmp ne i32 %i.u, 0                      ; 4 uses
  %i.w = and i32 %.val, 2
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 480 ; 42 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.z = load ptr, ptr %i.y, align 16, !tbaa !56  ; 11 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 704 ; 3 uses
  %i.ab = load ptr, ptr %i.aa, align 16, !tbaa !57 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 516 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !455
  %.fr1070 = freeze i32 %i.ad                     ; 73 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.p, i64 1540 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !58
  %i.ag = and i32 %i.af, 16384
  %.not.i = icmp eq i32 %i.ag, 0
  %.sroa.gep = getelementptr i8, ptr %i.c, i64 1664
  %.sroa.gep4790 = getelementptr inbounds nuw i8, ptr %i.c, i64 1248
  br i1 %.not.i, label %bb.b, label %_demosaic_full.exit

bb.b:                                             ; preds = %bb.a
  %i.ah = tail call i32 @dt_image_is_mono_sraw(ptr noundef nonnull %i.q) #27
  %.not9.i = icmp eq i32 %i.ah, 0
  br i1 %.not9.i, label %bb.c, label %_demosaic_full.exit

bb.c:                                             ; preds = %bb.b
  %i.ai = load ptr, ptr %i.r, align 8, !tbaa !446 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 552
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !456
  %.not10.i = icmp eq i32 %i.ak, 0
  br i1 %.not10.i, label %bb.d, label %_demosaic_full.exit

bb.d:                                             ; preds = %bb.c
  %i.al = getelementptr i8, ptr %i.ai, i64 644
  %.val13.i = load i32, ptr %i.al, align 4, !tbaa !454 ; 2 uses
  %i.am = and i32 %.val13.i, 8
  %.not11.i = icmp eq i32 %i.am, 0
  br i1 %.not11.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !457
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !458
  %i.ar = tail call i32 @dt_mipmap_cache_get_matching_size(i32 noundef %i.ao, i32 noundef %i.aq) #27
  %i.as = tail call ptr @dt_conf_get_string_const(ptr noundef nonnull @.str.187) #27
  %i.at = tail call i32 @dt_mipmap_cache_get_min_mip_from_pref(ptr noundef %i.as) #27
  %i.au = icmp uge i32 %i.ar, %i.at
  br label %_demosaic_full.exit

bb.f:                                             ; preds = %bb.d
  %i.av = and i32 %.val13.i, 4
  %.not12.i = icmp eq i32 %i.av, 0
  br i1 %.not12.i, label %_demosaic_full.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aw = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !34
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ai, i64 184
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !459
  %i.ba = icmp eq i32 %i.az, 9
  %i.bb = select reassoc nsz arcp contract afn i1 %i.ba, float f0x3F2AC083, float 5.000000e-01
  %i.bc = fcmp reassoc nsz arcp contract afn ogt float %i.ax, %i.bb
  br label %_demosaic_full.exit

_demosaic_full.exit:                              ; preds = %bb.a, %bb.b, %bb.c, %bb.e, %bb.f, %bb.g
  %.0.shrunk.i = phi i1 [ true, %bb.a ], [ %i.au, %bb.e ], [ %i.bc, %bb.g ], [ true, %bb.c ], [ true, %bb.b ], [ true, %bb.f ]
  %i.bd = icmp eq i32 %.fr1070, 9                 ; 10 uses
  %i.be = load i32, ptr %i.ae, align 4, !tbaa !58
  %.fr1069 = freeze i32 %i.be
  %i.bf = and i32 %.fr1069, 16384                 ; 2 uses
  %i.bg = icmp ne i32 %i.bf, 0                    ; 4 uses
  %i.bh = icmp eq i32 %.fr1070, 0                 ; 3 uses
  %i.bi = or i1 %i.bd, %i.bh
  %spec.select.not = or i1 %i.bg, %i.bi
  %i.bj = tail call i32 @dt_image_is_mono_sraw(ptr noundef nonnull %i.q) #27 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !60 ; 2 uses
  %i.bm = and i32 %i.bl, -2049                    ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !457 ; 107 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 2 uses
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !458 ; 16 uses
  %i.br = icmp slt i32 %i.bo, 16                  ; 2 uses
  %i.bs = icmp slt i32 %i.bq, 16
  %or.cond3 = select i1 %i.br, i1 true, i1 %i.bs
  %i.bt = add i32 %i.bm, -5
  %i.bu = icmp ult i32 %i.bt, -2
  %or.cond7 = select i1 %or.cond3, i1 %i.bu, i1 false
  %i.bv = select i1 %i.bd, i32 1024, i32 2
  %.0394 = select i1 %or.cond7, i32 %i.bv, i32 %i.bm ; 10 uses
  %i.bw = load ptr, ptr %i.o, align 8, !tbaa !32  ; 3 uses
  %i.bx = load i32, ptr %i.bw, align 16, !tbaa !460
  %i.by = icmp ne i32 %i.bx, 0
  %i.bz = icmp ne i32 %i.w, 0
  %or.cond9 = select i1 %i.by, i1 %i.bz, i1 false
  br i1 %or.cond9, label %bb.h, label %bb.p

bb.h:                                             ; preds = %_demosaic_full.exit
  %i.ca = getelementptr inbounds nuw i8, ptr %i.ab, i64 180
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !81
  %.not404 = icmp eq i32 %i.cb, 0
  br i1 %.not404, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cc = getelementptr inbounds nuw i8, ptr %i.s, i64 628
  store i32 1, ptr %i.cc, align 4, !tbaa !461
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.0392 = phi i32 [ 1, %bb.i ], [ 0, %bb.h ]     ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ab, i64 176
  %i.ce = load i32, ptr %i.cd, align 8, !tbaa !82
  %.not405 = icmp eq i32 %i.ce, 0
  br i1 %.not405, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cf = getelementptr inbounds nuw i8, ptr %i.z, i64 144
  %i.cg = load i32, ptr %i.cf, align 8, !tbaa !83
  %.not406 = icmp eq i32 %i.cg, 0
  br i1 %.not406, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ch = getelementptr inbounds nuw i8, ptr %i.s, i64 628
  store i32 1, ptr %i.ch, align 4, !tbaa !461
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j
  %.0390 = phi i32 [ 1, %bb.l ], [ 0, %bb.k ], [ 0, %bb.j ] ; 5 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ab, i64 184
  %i.cj = load i32, ptr %i.ci, align 8, !tbaa !84
  %.not407 = icmp eq i32 %i.cj, 0
  br i1 %.not407, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ck = getelementptr inbounds nuw i8, ptr %i.z, i64 144
  %i.cl = load i32, ptr %i.ck, align 8, !tbaa !83
  %.not408 = icmp eq i32 %i.cl, 0
  br i1 %.not408, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cm = getelementptr inbounds nuw i8, ptr %i.s, i64 628
  store i32 1, ptr %i.cm, align 4, !tbaa !461
  br label %bb.p

bb.p:                                             ; preds = %bb.m, %bb.n, %bb.o, %_demosaic_full.exit
  %.1393 = phi i32 [ %.0392, %bb.o ], [ %.0392, %bb.n ], [ %.0392, %bb.m ], [ 0, %_demosaic_full.exit ] ; 2 uses
  %.1391 = phi i32 [ %.0390, %bb.o ], [ %.0390, %bb.n ], [ %.0390, %bb.m ], [ 0, %_demosaic_full.exit ]
  %i.cn = phi i1 [ true, %bb.o ], [ false, %bb.n ], [ false, %bb.m ], [ false, %_demosaic_full.exit ]
  %.not183.i = phi i1 [ false, %bb.o ], [ true, %bb.n ], [ true, %bb.m ], [ true, %_demosaic_full.exit ]
  %.0389 = phi i32 [ 1, %bb.o ], [ %.0390, %bb.n ], [ %.0390, %bb.m ], [ 0, %_demosaic_full.exit ]
  br i1 %.0.shrunk.i, label %bb.x, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.co = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !122
  %i.cp = and i32 %i.co, 33554432
  %.not410 = icmp eq i32 %i.cp, 0
  br i1 %.not410, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void (ptr, ptr, ptr, i32, ptr, ptr, ptr, ...) @dt_print_pipe_ext(ptr noundef nonnull @.str.6, ptr noundef nonnull %i.s, ptr noundef nonnull %0, i32 noundef -1, ptr noundef nonnull %4, ptr noundef %5, ptr noundef nonnull @.str.7) #27
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.cq = add i32 %.0394, -3
  %or.cond11 = icmp ult i32 %i.cq, 2
  %i.cr = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !457 ; 3 uses
  br i1 %or.cond11, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  tail call void @dt_iop_clip_and_zoom_demosaic_passthrough_monochrome_f(ptr noundef %3, ptr noundef %2, ptr noundef %5, ptr noundef nonnull %4, i32 noundef %i.cs, i32 noundef %i.bo) #27
  br label %bb.so

bb.u:                                             ; preds = %bb.s
  br i1 %i.bd, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  tail call void @dt_iop_clip_and_zoom_demosaic_third_size_xtrans_f(ptr noundef %3, ptr noundef %2, ptr noundef %5, ptr noundef nonnull %4, i32 noundef %i.cs, i32 noundef %i.bo, ptr noundef nonnull %i.x) #27
  br label %bb.so

bb.w:                                             ; preds = %bb.u
  tail call void @dt_iop_clip_and_zoom_demosaic_half_size_f(ptr noundef %3, ptr noundef %2, ptr noundef %5, ptr noundef nonnull %4, i32 noundef %i.cs, i32 noundef %i.bo, i32 noundef %.fr1070) #27
  br label %bb.so

bb.x:                                             ; preds = %bb.p
  %i.ct = getelementptr inbounds nuw i8, ptr %i.s, i64 628
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !461 ; 2 uses
  %i.cv = icmp eq i32 %i.cu, 128                  ; 2 uses
  %i.cw = icmp ne i32 %i.cu, 0                    ; 3 uses
  %i.cx = and i32 %i.bl, 2048
  %i.cy = icmp eq i32 %i.cx, 0
  %or.cond13 = select i1 %i.cy, i1 true, i1 %i.v
  %or.cond15 = or i1 %or.cond13, %i.cn
  %i.cz = icmp ne i32 %.1391, 0                   ; 2 uses
  %or.cond17 = or i1 %i.cz, %or.cond15
  %spec.select432.not = select i1 %or.cond17, i1 true, i1 %i.cv ; 3 uses
  %i.da = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.db = load i32, ptr %i.da, align 4, !tbaa !457
  %i.dc = icmp eq i32 %i.db, %i.bo
  br i1 %i.dc, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %bb.x
  %i.dd = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !458
  %i.df = icmp eq i32 %i.de, %i.bq
  br i1 %i.df, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.dg = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.dh = load float, ptr %i.dg, align 4, !tbaa !34
  %i.di = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.dj = load float, ptr %i.di, align 4, !tbaa !34
  %i.dk = fsub reassoc nsz arcp contract afn float %i.dh, %i.dj
  %i.dl = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.dk)
  %i.dm = fcmp reassoc nsz arcp contract afn olt float %i.dl, f0x322BCC77
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y, %bb.x
  %i.dn = phi i1 [ false, %bb.y ], [ false, %bb.x ], [ %i.dm, %bb.z ] ; 5 uses
  %i.do = add i32 %.0394, -3
  %i.dp = icmp ult i32 %i.do, 2
  %i.dq = or i32 %.1393, %i.bf
  %i.dr = icmp ne i32 %i.dq, 0
  %or.cond21 = or i1 %i.dp, %i.dr
  %or.cond23 = select i1 %or.cond21, i1 true, i1 %i.v
  br i1 %or.cond23, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ds = getelementptr inbounds nuw i8, ptr %i.z, i64 144
  %i.dt = load i32, ptr %i.ds, align 8, !tbaa !83
  %i.du = icmp ne i32 %i.dt, 0
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.dv = phi i1 [ %i.du, %bb.ab ], [ false, %bb.aa ] ; 5 uses
  br i1 %i.bg, label %bb.ae, label %switch.early.test

switch.early.test:                                ; preds = %bb.ac
  switch i32 %.fr1070, label %bb.ad [
    i32 9, label %bb.ae
    i32 0, label %bb.ae
  ]

bb.ad:                                            ; preds = %switch.early.test
  %i.dw = load i32, ptr %i.z, align 8, !tbaa !123
  %i.dx = icmp eq i32 %i.dw, 0
  %or.cond25.not413 = select i1 %i.dx, i1 true, i1 %i.cw
  %or.cond27 = select i1 %or.cond25.not413, i1 true, i1 %i.v
  %.not414 = icmp eq i32 %i.bj, 0
  %not.or.cond27 = xor i1 %or.cond27, true
  %spec.select433 = select i1 %not.or.cond27, i1 %.not414, i1 false
  br label %bb.ae

bb.ae:                                            ; preds = %switch.early.test, %switch.early.test, %bb.ac, %bb.ad
  %i.dy = phi i1 [ false, %switch.early.test ], [ %spec.select433, %bb.ad ], [ false, %bb.ac ], [ false, %switch.early.test ] ; 3 uses
  %.val438 = load ptr, ptr %i.r, align 8, !tbaa !446 ; 7 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %.val438, i64 272
  %i.ea = load float, ptr %i.dz, align 4, !tbaa !12 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %.val438, i64 276
  %i.ec = load float, ptr %i.eb, align 4, !tbaa !12 ; 2 uses
  %i.ed = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.ea, float %i.ec)
  %i.ee = getelementptr inbounds nuw i8, ptr %.val438, i64 280
  %i.ef = load float, ptr %i.ee, align 4, !tbaa !12 ; 2 uses
  %i.eg = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.ed, float %i.ef)
  %i.eh = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.eg, float 1.000000e+00) ; 13 uses
  %i.ei = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.ea, float %i.ec)
  %i.ej = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.ei, float %i.ef)
  %i.ek = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.ej, float 1.000000e+00)
  %i.el = getelementptr inbounds nuw i8, ptr %i.p, i64 132
  %i.em = load float, ptr %i.el, align 4, !tbaa !124
  %i.en = fptosi float %i.em to i32               ; 2 uses
  br i1 %i.dv, label %bb.af, label %_radius_requested.exit.thread698

bb.af:                                            ; preds = %bb.ae
  %.val440 = load ptr, ptr %i.aa, align 16, !tbaa !57 ; 6 uses
  %.val442 = load ptr, ptr %i.y, align 16, !tbaa !56 ; 3 uses
  %i.eo = getelementptr i8, ptr %.val438, i64 644
  %.val441.val = load i32, ptr %i.eo, align 4, !tbaa !454
  %i.ep = getelementptr i8, ptr %.val442, i64 128 ; 2 uses
  %.val442.val = load float, ptr %i.ep, align 8, !tbaa !462
end_hunk_0
begin_hunk_1_@process:bb.a
  %or.cond.i.i571 = select i1 %i.ltu, i1 %i.ltv, i1 false
  br i1 %or.cond.i.i571, label %.preheader.i.i572, label %bb.ok

bb.ok:                                            ; preds = %bb.oj
  tail call void @free(ptr noundef %i.ltt) #27, !noalias !549
  tail call void @free(ptr noundef %i.lts) #27, !noalias !549
  store ptr null, ptr @lmmse_gamma_in, align 8, !tbaa !140, !noalias !551
  store ptr null, ptr @lmmse_gamma_out, align 8, !tbaa !140, !noalias !551
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.212) #27, !noalias !549
  br label %.preheader1027.preheader.i

.preheader.i.i572:                                ; preds = %bb.oj, %bb.oq
  %indvars.iv.i.i573 = phi i64 [ %indvars.iv.next.i.i574, %bb.oq ], [ 0, %bb.oj ] ; 4 uses
  %i.ltw = trunc nuw nsw i64 %indvars.iv.i.i573 to i32
  %i.ltx = uitofp nsz nneg i32 %i.ltw to double   ; 4 uses
  %i.lty = fmul reassoc nnan nsz arcp contract afn double %i.ltx, f0x3EF0001000100010 ; 3 uses
  %i.ltz = fcmp reassoc nsz arcp contract afn ugt double %i.lty, 1.867000e-03
  br i1 %i.ltz, label %bb.om, label %bb.ol

bb.ol:                                            ; preds = %.preheader.i.i572
  %i.lua = fmul reassoc nnan nsz arcp contract afn double %i.ltx, f0x3F31001100110011
  br label %bb.on

bb.om:                                            ; preds = %.preheader.i.i572
  %i.lub = tail call fast double @llvm.log.f64(double %i.lty)
  %i.luc = fmul reassoc nnan nsz arcp contract afn double %i.lub, f0x3FDAAAAAAAAAAAAB
  %i.lud = tail call reassoc nnan nsz arcp contract afn double @llvm.exp.f64(double %i.luc)
  %i.lue = fmul reassoc nnan nsz arcp contract afn double %i.lud, f0x3FF0B60BF5D78812
  %i.luf = fadd reassoc nsz arcp contract afn double %i.lue, -4.444500e-02
  br label %bb.on

bb.on:                                            ; preds = %bb.om, %bb.ol
  %i.lug = phi reassoc nsz arcp contract afn double [ %i.lua, %bb.ol ], [ %i.luf, %bb.om ]
  %i.luh = fptrunc reassoc nsz arcp contract afn double %i.lug to float
  %i.lui = getelementptr inbounds nuw [4 x i8], ptr %i.ltt, i64 %indvars.iv.i.i573
  store float %i.luh, ptr %i.lui, align 4, !tbaa !12, !noalias !549
  %i.luj = fcmp reassoc nsz arcp contract afn ugt double %i.lty, 3.174600e-02
  br i1 %i.luj, label %bb.op, label %bb.oo

bb.oo:                                            ; preds = %bb.on
  %i.luk = fmul reassoc nnan nsz arcp contract afn double %i.ltx, f0x3EAE1E3C3C5A5A78
  br label %bb.oq

bb.op:                                            ; preds = %bb.on
  %i.lul = fmul reassoc nnan nsz arcp contract afn double %i.ltx, f0x3EEEA3850F60F739
  %i.lum = fadd reassoc nnan nsz arcp contract afn double %i.lul, f0x3FA5C99942418271
  %i.lun = tail call reassoc nnan nsz arcp contract afn double @llvm.log.f64(double %i.lum)
  %i.luo = fmul reassoc nnan nsz arcp contract afn double %i.lun, 2.400000e+00
  %i.lup = tail call reassoc nsz arcp contract afn double @llvm.exp.f64(double %i.luo)
  br label %bb.oq

bb.oq:                                            ; preds = %bb.op, %bb.oo
  %i.luq = phi reassoc nsz arcp contract afn double [ %i.luk, %bb.oo ], [ %i.lup, %bb.op ]
  %i.lur = fptrunc reassoc nsz arcp contract afn double %i.luq to float
  %i.lus = getelementptr inbounds nuw [4 x i8], ptr %i.lts, i64 %indvars.iv.i.i573
  store float %i.lur, ptr %i.lus, align 4, !tbaa !12, !noalias !549
  %indvars.iv.next.i.i574 = add nuw nsw i64 %indvars.iv.i.i573, 1 ; 2 uses
  %exitcond.not.i.i575 = icmp eq i64 %indvars.iv.next.i.i574, 65536
  br i1 %exitcond.not.i.i575, label %.preheader1027.preheader.i, label %.preheader.i.i572

.preheader1027.preheader.i:                       ; preds = %bb.oq, %bb.ok, %bb.oi
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27, !noalias !551
  %i.lut = tail call ptr @dt_alloc_aligned(i64 noundef 443904) #27, !noalias !549 ; 31 uses
  %i.luu = ptrtoaddr ptr %i.lut to i64
  call void @llvm.assume(i1 true) [ "align"(ptr %i.lut, i64 64) ]
  store ptr %i.lut, ptr %i.b, align 16, !tbaa !140, !noalias !551
  %i.luv = getelementptr inbounds nuw i8, ptr %i.lut, i64 73984 ; 14 uses
  store ptr %i.luv, ptr %i.aoi, align 8, !tbaa !140, !noalias !551
  %i.luw = getelementptr inbounds nuw i8, ptr %i.lut, i64 147968 ; 6 uses
  store ptr %i.luw, ptr %i.aoj, align 16, !tbaa !140, !noalias !551
  %i.lux = getelementptr inbounds nuw i8, ptr %i.lut, i64 221952 ; 5 uses
  store ptr %i.lux, ptr %i.aok, align 8, !tbaa !140, !noalias !551
  %i.luy = getelementptr inbounds nuw i8, ptr %i.lut, i64 295936 ; 5 uses
  store ptr %i.luy, ptr %i.aol, align 16, !tbaa !140, !noalias !551
  %i.luz = getelementptr inbounds nuw i8, ptr %i.lut, i64 369920 ; 10 uses
  store ptr %i.luz, ptr %i.aom, align 8, !tbaa !140, !noalias !551
  %i.lva = icmp ult i32 %i.lto, 2
  %i.lvb = select i1 %i.lva, i32 %i.lto, i32 3    ; 2 uses
  %i.lvc = tail call i32 @llvm.usub.sat.i32(i32 %i.lto, i32 2) ; 2 uses
  %i.lvd = add nsw i32 %i.axe, -17
  %i.lve = sdiv i32 %i.lvd, 112                   ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(443904) %i.lut, i8 0, i64 443904, i1 false), !noalias !549
  %.not1191.i = icmp eq i32 %i.lvb, 0
  %i.lvf = icmp sgt i32 %i.lvc, 0
  %i.lvg = tail call i32 @llvm.smax.i32(i32 %i.lve, i32 0)
  %scevgep3937 = getelementptr i8, ptr %i.lut, i64 295400
  %scevgep4006 = getelementptr i8, ptr %i.lut, i64 295400
  %i.lvh = add i64 %i.luu, 372112
  %i.lvi = getelementptr inbounds nuw i8, ptr %i.axo, i64 128
  %i.lvj = getelementptr inbounds nuw i8, ptr %i.axo, i64 256
  %i.lvk = getelementptr inbounds nuw i8, ptr %i.axo, i64 384
  br label %.preheader1027.i

.preheader1027.i:                                 ; preds = %._crit_edge1187.i, %.preheader1027.preheader.i
  %indvars.iv1156 = phi i32 [ %indvars.iv.next1157, %._crit_edge1187.i ], [ 6, %.preheader1027.preheader.i ] ; 2 uses
  %indvars.iv1137 = phi i32 [ %indvars.iv.next1138, %._crit_edge1187.i ], [ 7, %.preheader1027.preheader.i ] ; 3 uses
  %indvars.iv1132 = phi i32 [ %indvars.iv.next1133, %._crit_edge1187.i ], [ 8, %.preheader1027.preheader.i ] ; 2 uses
  %indvars.iv1115 = phi i32 [ %indvars.iv.next1116, %._crit_edge1187.i ], [ 5, %.preheader1027.preheader.i ] ; 2 uses
  %indvars.iv1112 = phi i32 [ %indvars.iv.next1113, %._crit_edge1187.i ], [ 4, %.preheader1027.preheader.i ] ; 2 uses
  %indvars.iv = phi i32 [ %indvars.iv.next, %._crit_edge1187.i ], [ 128, %.preheader1027.preheader.i ] ; 2 uses
  %indvars.iv1309.i = phi i32 [ %indvars.iv.next1310.i, %._crit_edge1187.i ], [ 0, %.preheader1027.preheader.i ] ; 2 uses
  %indvars.iv.i555 = phi i32 [ %indvars.iv.next.i560, %._crit_edge1187.i ], [ 0, %.preheader1027.preheader.i ] ; 2 uses
  %.08821189.i = phi i32 [ %i.lxt, %._crit_edge1187.i ], [ 0, %.preheader1027.preheader.i ] ; 5 uses
  %smin1161 = call i32 @llvm.smin.i32(i32 %i.axe, i32 %indvars.iv) ; 5 uses
  %i.lvl = add i32 %smin1161, %indvars.iv1112
  %i.lvm = call i32 @llvm.smax.i32(i32 %i.lvl, i32 5)
  %smax1153 = zext nneg i32 %i.lvm to i64         ; 4 uses
  %i.lvn = add i32 %smin1161, %indvars.iv1137
  %i.lvo = call i32 @llvm.smax.i32(i32 %i.lvn, i32 2)
  %smax1145 = zext nneg i32 %i.lvo to i64         ; 3 uses
  %i.lvp = add i32 %smin1161, %indvars.iv1132
  %i.lvq = call i32 @llvm.smax.i32(i32 %i.lvp, i32 1)
  %smax1134 = zext nneg i32 %i.lvq to i64
  %i.lvr = add i32 %smin1161, %indvars.iv1115
  %i.lvs = call i32 @llvm.umax.i32(i32 %i.lvr, i32 2)
  %umax = zext i32 %i.lvs to i64
  %i.lvt = mul nuw i32 %.08821189.i, 112          ; 4 uses
  %i.lvu = add nuw nsw i32 %i.lvt, 128
  %i.lvv = tail call i32 @llvm.smin.i32(i32 %i.lvu, i32 %i.axe) ; 2 uses
  %i.lvw = sub nsw i32 %i.lvv, %i.lvt             ; 5 uses
  %i.lvx = add nsw i32 %i.lvw, 8
  %i.lvy = icmp sgt i32 %i.lvw, 0                 ; 3 uses
  %i.lvz = icmp sgt i32 %i.lvw, -4
  %i.lwa = add i32 %i.lvt, -4
  %i.lwb = icmp sgt i32 %i.lvw, -8
  %i.lwc = icmp slt i32 %i.lvw, -5                ; 2 uses
  %i.lwd = icmp eq i32 %.08821189.i, 0            ; 2 uses
  %i.lwe = select i1 %i.lwd, i32 6, i32 0         ; 3 uses
  %i.lwf = icmp eq i32 %.08821189.i, %i.lve       ; 2 uses
  %.neg949.i = select i1 %i.lwf, i32 -6, i32 0    ; 2 uses
  %i.lwg = add nsw i32 %i.lvx, %.neg949.i         ; 2 uses
  %i.lwh = add nsw i32 %i.lwg, -1
  %i.lwi = icmp slt i32 %i.lwe, %i.lwh
  %i.lwj = add nuw nsw i32 %i.lwe, 2
  %i.lwk = add nsw i32 %i.lwg, -2
  %i.lwl = icmp slt i32 %i.lwj, %i.lwk
  %i.lwm = select i1 %i.lwd, i32 4, i32 8         ; 3 uses
  %i.lwn = or disjoint i32 %i.lwm, %i.lvt
  %.neg950.i = select i1 %i.lwf, i32 -4, i32 -8
  %i.lwo = add nsw i32 %i.lvv, %.neg950.i         ; 2 uses
  %i.lwp = icmp slt i32 %i.lwn, %i.lwo
  %i.lwq = zext nneg i32 %i.lwe to i64            ; 5 uses
  %i.lwr = add nuw nsw i64 %i.lwq, 2              ; 3 uses
  %narrow.i = add nuw nsw i32 %i.lwm, 4
  %i.lws = or disjoint i32 %i.lwm, %indvars.iv1309.i
  %i.lwt = zext i32 %i.lws to i64
  %i.lwu = add i32 %.neg949.i, %smin1161          ; 2 uses
  %i.lwv = add i32 %i.lwu, %indvars.iv1137
  %i.lww = sext i32 %i.lwv to i64                 ; 2 uses
  %i.lwx = add i32 %i.lwu, %indvars.iv1156
  %i.lwy = sext i32 %i.lwx to i64                 ; 3 uses
  %i.lwz = mul nuw nsw i64 %i.lwq, 544            ; 6 uses
  %i.lxa = mul nuw nsw i64 %i.lwq, 544            ; 8 uses
  %i.lxb = add nuw nsw i64 %i.lxa, 552
  %i.lxc = add nuw nsw i64 %i.lxa, 1644
  %i.lxd = mul nuw nsw i64 %i.lwq, 544            ; 5 uses
  %scevgep3935 = getelementptr i8, ptr %i.lut, i64 %i.lxd
  %i.lxe = mul nsw i64 %i.lww, 544                ; 2 uses
  %scevgep3938 = getelementptr i8, ptr %scevgep3937, i64 %i.lxe
  %i.lxf = or disjoint i64 %i.lxd, 8
  %i.lxg = or disjoint i64 %i.lxd, 4
  %scevgep4004 = getelementptr i8, ptr %i.lut, i64 %i.lxd
  %scevgep4007 = getelementptr i8, ptr %scevgep4006, i64 %i.lxe
  %invariant.op = or disjoint i64 %i.lxd, 4
  %i.lxh = getelementptr i8, ptr %i.lut, i64 %i.lxa
  %i.lxi = getelementptr i8, ptr %i.lxh, i64 74536
  %i.lxj = getelementptr i8, ptr %i.lut, i64 %i.lxa
  %i.lxk = getelementptr i8, ptr %i.lxj, i64 75628
  %i.lxl = getelementptr i8, ptr %i.lut, i64 %i.lxa
  %i.lxm = getelementptr i8, ptr %i.lxl, i64 73992
  %i.lxn = getelementptr i8, ptr %i.lut, i64 %i.lxa
  %i.lxo = getelementptr i8, ptr %i.lxn, i64 76172
  %i.lxp = getelementptr i8, ptr %i.lut, i64 %i.lwz
  %i.lxq = getelementptr i8, ptr %i.lxp, i64 74536
  %i.lxr = getelementptr i8, ptr %i.lut, i64 %i.lwz
  %i.lxs = getelementptr i8, ptr %i.lxr, i64 75628
  br label %bb.or

._crit_edge1190.split.i:                          ; preds = %._crit_edge1187.i
  tail call void @free(ptr noundef %i.lut) #27, !noalias !549
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27, !noalias !551
  br label %demosaic_box3.exit

._crit_edge1187.i:                                ; preds = %._crit_edge1183.split.i
  %i.lxt = add nuw nsw i32 %.08821189.i, 1
  %indvars.iv.next.i560 = add i32 %indvars.iv.i555, %i.aop
  %indvars.iv.next1310.i = add nuw i32 %indvars.iv1309.i, 112
  %exitcond1318.i = icmp eq i32 %.08821189.i, %i.lvg
  %indvars.iv.next = add nuw i32 %indvars.iv, 112
  %indvars.iv.next1113 = add i32 %indvars.iv1112, -112
  %indvars.iv.next1116 = add i32 %indvars.iv1115, -112
  %indvars.iv.next1133 = add i32 %indvars.iv1132, -112
  %indvars.iv.next1138 = add i32 %indvars.iv1137, -112
  %indvars.iv.next1157 = add i32 %indvars.iv1156, -112
  br i1 %exitcond1318.i, label %._crit_edge1190.split.i, label %.preheader1027.i

bb.or:                                            ; preds = %._crit_edge1183.split.i, %.preheader1027.i
  %indvars.iv1121 = phi i32 [ %indvars.iv.next1122, %._crit_edge1183.split.i ], [ 0, %.preheader1027.i ] ; 7 uses
  %indvars.iv1118 = phi i32 [ %indvars.iv.next1119, %._crit_edge1183.split.i ], [ 128, %.preheader1027.i ] ; 5 uses
  %indvars.iv1212.i = phi i32 [ %indvars.iv.next1213.i, %._crit_edge1183.split.i ], [ %indvars.iv.i555, %.preheader1027.i ] ; 2 uses
  %.08871185.i = phi i32 [ %i.poi, %._crit_edge1183.split.i ], [ 0, %.preheader1027.i ] ; 7 uses
  %smin4712 = call i32 @llvm.smin.i32(i32 %i.bo, i32 %indvars.iv1118)
  %i.lxu = add i32 %smin4712, %indvars.iv1121
  %smin4713 = call i32 @llvm.smin.i32(i32 %i.lxu, i32 128) ; 2 uses
  %i.lxv = add nsw i32 %smin4713, 3
  %i.lxw = zext i32 %i.lxv to i64
  %i.lxx = add nsw i64 %i.lxw, -3                 ; 2 uses
  %smin4697.a = call i32 @llvm.smin.i32(i32 %i.bo, i32 %indvars.iv1118)
  %i.lxy = add i32 %smin4697.a, %indvars.iv1121
  %i.lxz = call i32 @llvm.smin.i32(i32 %i.lxy, i32 128)
  %narrow4791 = add nsw i32 %i.lxz, 7             ; 2 uses
  %i.lya = mul nuw i32 %.08871185.i, 112
  %i.lyb = add i32 %i.lya, 128
  %smin4689 = call i32 @llvm.smin.i32(i32 %i.bo, i32 %i.lyb)
  %i.lyc = mul i32 %.08871185.i, -112
  %i.lyd = add i32 %smin4689, %i.lyc
  %smin4413 = call i32 @llvm.smin.i32(i32 %i.bo, i32 %indvars.iv1118)
  %i.lye = add i32 %smin4413, %indvars.iv1121
  %smin4414 = call i32 @llvm.smin.i32(i32 %i.lye, i32 128)
  %i.lyf = add i32 %smin4414, -1                  ; 3 uses
  %i.lyg = zext i32 %i.lyf to i64
  %i.lyh = add nuw nsw i64 %i.lyg, 1              ; 5 uses
  %i.lyi = add i32 %indvars.iv1121, -1
  %i.lyj = add i32 %indvars.iv1121, -1
  %smin1149 = call i32 @llvm.smin.i32(i32 %i.bo, i32 %indvars.iv1118)
  %i.lyk = add i32 %smin1149, %indvars.iv1121
  %smin1150 = call i32 @llvm.smin.i32(i32 %i.lyk, i32 128)
  %i.lyl = add nsw i32 %smin1150, 3
  %i.lym = zext i32 %i.lyl to i64                 ; 2 uses
  %i.lyn = mul nuw i32 %.08871185.i, 112          ; 5 uses
  %i.lyo = add nuw i32 %i.lyn, 128
  %i.lyp = tail call i32 @llvm.smin.i32(i32 %i.lyo, i32 %i.bo) ; 3 uses
  %i.lyq = sub i32 %i.lyp, %i.lyn                 ; 7 uses
  %i.lyr = tail call i32 @llvm.smin.i32(i32 %i.lyq, i32 128) ; 19 uses
  %i.lys = add nsw i32 %i.lyr, 8                  ; 2 uses
  br i1 %i.lvy, label %.lr.ph1038.i, label %.preheader1026.i

.lr.ph1038.i:                                     ; preds = %bb.or
  %i.lyt = add nsw i32 %i.lyr, 4                  ; 2 uses
  %i.lyu = icmp sgt i32 %i.lyq, 0
  %i.lyv = load ptr, ptr @lmmse_gamma_in, align 8, !noalias !551 ; 4 uses
  %i.lyw = icmp eq ptr %i.lyv, null
  br i1 %i.lyu, label %.lr.ph.i566.preheader, label %.lr.ph1049.i

.lr.ph.i566.preheader:                            ; preds = %.lr.ph1038.i
  %xtraiter4691 = and i32 %i.lyr, 1
  %i.lyx = icmp eq i32 %i.lyd, 1
  %unroll_iter4695 = and i32 %i.lyr, 254
  %lcmp.mod4693.not = icmp eq i32 %xtraiter4691, 0
  %lcmp.mod4694 = trunc i32 %i.lyr to i1
  %min.iters.check4416 = icmp ult i32 %i.lyf, 7
  %min.iters.check4418 = icmp ult i32 %i.lyf, 31
  %i.lyy = and i64 %i.lyh, 24
  %n.vec4420 = and i64 %i.lyh, 8589934560         ; 8 uses
  %i.lyz = shl nuw nsw i64 %n.vec4420, 2
  %i.lza = trunc i64 %n.vec4420 to i32
  %i.lzb = or disjoint i32 %i.lza, 4
  %i.lzc = icmp eq i64 %n.vec4420, 32
  %i.lzd = icmp eq i64 %n.vec4420, 64
  %i.lze = icmp eq i64 %n.vec4420, 96
  %cmp.n4432 = icmp eq i64 %i.lyh, %n.vec4420
  %min.epilog.iters.check4440 = icmp eq i64 %i.lyy, 0
  %n.vec4442 = and i64 %i.lyh, 8589934584         ; 5 uses
  %i.lzf = shl nuw nsw i64 %n.vec4442, 2
  %i.lzg = trunc i64 %n.vec4442 to i32
  %i.lzh = or disjoint i32 %i.lzg, 4
  %cmp.n4451 = icmp eq i64 %i.lyh, %n.vec4442
  br label %.lr.ph.i566

.preheader1026.i:                                 ; preds = %._crit_edge.i570, %bb.or
  br i1 %i.lvz, label %.preheader1026.i..lr.ph1049.i_crit_edge, label %._crit_edge1060.i

.preheader1026.i..lr.ph1049.i_crit_edge:          ; preds = %.preheader1026.i
  %.pre1268 = add nsw i32 %i.lyr, 4
  br label %.lr.ph1049.i

.lr.ph1049.i:                                     ; preds = %.preheader1026.i..lr.ph1049.i_crit_edge, %.lr.ph1038.i
  %.pre-phi1269 = phi i32 [ %.pre1268, %.preheader1026.i..lr.ph1049.i_crit_edge ], [ %i.lyt, %.lr.ph1038.i ] ; 2 uses
  %i.lzi = add nsw i32 %i.lyr, 6
  %i.lzj = sext i32 %i.lzi to i64                 ; 4 uses
  br label %bb.oy

.lr.ph.i566:                                      ; preds = %.lr.ph.i566.preheader, %._crit_edge.i570
  %indvar4410 = phi i64 [ %indvar.next4411, %._crit_edge.i570 ], [ 0, %.lr.ph.i566.preheader ] ; 2 uses
  %indvars.iv1222.i = phi i64 [ %indvars.iv.next1223.i, %._crit_edge.i570 ], [ 4, %.lr.ph.i566.preheader ] ; 2 uses
  %indvars.iv1214.i = phi i32 [ %indvars.iv.next1215.i, %._crit_edge.i570 ], [ %indvars.iv1212.i, %.lr.ph.i566.preheader ] ; 3 uses
  %i.lzk = zext i32 %indvars.iv1214.i to i64      ; 10 uses
  %.idx.i567 = mul nuw nsw i64 %indvars.iv1222.i, 544
  %i.lzl = getelementptr inbounds nuw i8, ptr %i.luz, i64 %.idx.i567 ; 16 uses
  %i.lzm = getelementptr inbounds nuw i8, ptr %i.lzl, i64 16 ; 7 uses
  br i1 %i.lyw, label %iter.check4437, label %.lr.ph.split.i.preheader

.lr.ph.split.i.preheader:                         ; preds = %.lr.ph.i566
  br i1 %i.lyx, label %.lr.ph.split.i.epil.preheader, label %.lr.ph.split.i

iter.check4437:                                   ; preds = %.lr.ph.i566
  %i.lzn = zext i32 %indvars.iv1214.i to i64
  %i.lzo = add nsw i64 %i.axn, %i.lzn
  %i.lzp = shl nsw i64 %i.lzo, 2
  %i.lzq = add i64 %i.lzp, %.13623
  %i.lzr = mul nuw nsw i64 %indvar4410, 544
  %i.lzs = add i64 %i.lvh, %i.lzr
  %i.lzt = sub i64 %i.lzq, %i.lzs
  %diff.check4412 = icmp ugt i64 %i.lzt, -128
  %or.cond4571 = select i1 %min.iters.check4416, i1 true, i1 %diff.check4412
  br i1 %or.cond4571, label %_calc_gamma.exit.us.i.preheader, label %vector.main.loop.iter.check4417

vector.main.loop.iter.check4417:                  ; preds = %iter.check4437
  br i1 %min.iters.check4418, label %vec.epilog.ph4441, label %vector.ph4419

vector.ph4419:                                    ; preds = %vector.main.loop.iter.check4417
  %i.lzu = add nuw nsw i64 %n.vec4420, %i.lzk
  %i.lzv = getelementptr i8, ptr %i.lzm, i64 %i.lyz
  %i.lzw = getelementptr inbounds nuw [4 x i8], ptr %i.axo, i64 %i.lzk ; 4 uses
  %i.lzx = getelementptr inbounds nuw i8, ptr %i.lzw, i64 32
  %i.lzy = getelementptr inbounds nuw i8, ptr %i.lzw, i64 64
  %i.lzz = getelementptr inbounds nuw i8, ptr %i.lzw, i64 96
  %wide.load4426 = load <8 x float>, ptr %i.lzw, align 4, !tbaa !12, !alias.scope !550, !noalias !549
  %wide.load4427 = load <8 x float>, ptr %i.lzx, align 4, !tbaa !12, !alias.scope !550, !noalias !549
  %wide.load4428 = load <8 x float>, ptr %i.lzy, align 4, !tbaa !12, !alias.scope !550, !noalias !549
  %wide.load4429 = load <8 x float>, ptr %i.lzz, align 4, !tbaa !12, !alias.scope !550, !noalias !549
  %i.maa = fmul reassoc nsz arcp contract afn <8 x float> %wide.load4426, %broadcast.splat4422
  %i.mab = fmul reassoc nsz arcp contract afn <8 x float> %wide.load4427, %broadcast.splat4422
  %i.mac = fmul reassoc nsz arcp contract afn <8 x float> %wide.load4428, %broadcast.splat4422
  %i.mad = fmul reassoc nsz arcp contract afn <8 x float> %wide.load4429, %broadcast.splat4422
  %i.mae = getelementptr i8, ptr %i.lzl, i64 48
  %i.maf = getelementptr i8, ptr %i.lzl, i64 80
  %i.mag = getelementptr i8, ptr %i.lzl, i64 112
  store <8 x float> %i.maa, ptr %i.lzm, align 16, !tbaa !12, !noalias !549
  store <8 x float> %i.mab, ptr %i.mae, align 16, !tbaa !12, !noalias !549
  store <8 x float> %i.mac, ptr %i.maf, align 16, !tbaa !12, !noalias !549
  store <8 x float> %i.mad, ptr %i.mag, align 16, !tbaa !12, !noalias !549
  br i1 %i.lzc, label %middle.block4431, label %vector.body4423.1

vector.body4423.1:                                ; preds = %vector.ph4419
  %next.gep4425.1 = getelementptr i8, ptr %i.lzl, i64 144
  %i.mah = getelementptr inbounds nuw [4 x i8], ptr %i.lvi, i64 %i.lzk ; 4 uses
  %i.mai = getelementptr inbounds nuw i8, ptr %i.mah, i64 32
  %i.maj = getelementptr inbounds nuw i8, ptr %i.mah, i64 64
  %i.mak = getelementptr inbounds nuw i8, ptr %i.mah, i64 96
  %wide.load4426.1 = load <8 x float>, ptr %i.mah, align 4, !tbaa !12, !alias.scope !550, !noalias !549
  %wide.load4427.1 = load <8 x float>, ptr %i.mai, align 4, !tbaa !12, !alias.scope !550, !noalias !549
  %wide.load4428.1 = load <8 x float>, ptr %i.maj, align 4, !tbaa !12, !alias.scope !550, !noalias !549
  %wide.load4429.1 = load <8 x float>, ptr %i.mak, align 4, !tbaa !12, !alias.scope !550, !noalias !549
  %i.mal = fmul reassoc nsz arcp contract afn <8 x float> %wide.load4426.1, %broadcast.splat4422
  %i.mam = fmul reassoc nsz arcp contract afn <8 x float> %wide.load4427.1, %broadcast.splat4422
  %i.man = fmul reassoc nsz arcp contract afn <8 x float> %wide.load4428.1, %broadcast.splat4422
  %i.mao = fmul reassoc nsz arcp contract afn <8 x float> %wide.load4429.1, %broadcast.splat4422
  %i.map = getelementptr i8, ptr %i.lzl, i64 176
  %i.maq = getelementptr i8, ptr %i.lzl, i64 208
  %i.mar = getelementptr i8, ptr %i.lzl, i64 240
  store <8 x float> %i.mal, ptr %next.gep4425.1, align 16, !tbaa !12, !noalias !549
  store <8 x float> %i.mam, ptr %i.map, align 16, !tbaa !12, !noalias !549
  store <8 x float> %i.man, ptr %i.maq, align 16, !tbaa !12, !noalias !549
  store <8 x float> %i.mao, ptr %i.mar, align 16, !tbaa !12, !noalias !549
  br i1 %i.lzd, label %middle.block4431, label %vector.body4423.2

vector.body4423.2:                                ; preds = %vector.body4423.1
  %next.gep4425.2 = getelementptr i8, ptr %i.lzl, i64 272
  %i.mas = getelementptr inbounds nuw [4 x i8], ptr %i.lvj, i64 %i.lzk ; 4 uses
  %i.mat = getelementptr inbounds nuw i8, ptr %i.mas, i64 32
  %i.mau = getelementptr inbounds nuw i8, ptr %i.mas, i64 64
  %i.mav = getelementptr inbounds nuw i8, ptr %i.mas, i64 96
  %wide.load4426.2 = load <8 x float>, ptr %i.mas, align 4, !tbaa !12, !alias.scope !550, !noalias !549
  %wide.load4427.2 = load <8 x float>, ptr %i.mat, align 4, !tbaa !12, !alias.scope !550, !noalias !549
  %wide.load4428.2 = load <8 x float>, ptr %i.mau, align 4, !tbaa !12, !alias.scope !550, !noalias !549
  %wide.load4429.2 = load <8 x float>, ptr %i.mav, align 4, !tbaa !12, !alias.scope !550, !noalias !549
  %i.maw = fmul reassoc nsz arcp contract afn <8 x float> %wide.load4426.2, %broadcast.splat4422
  %i.max = fmul reassoc nsz arcp contract afn <8 x float> %wide.load4427.2, %broadcast.splat4422
  %i.may = fmul reassoc nsz arcp contract afn <8 x float> %wide.load4428.2, %broadcast.splat4422
  %i.maz = fmul reassoc nsz arcp contract afn <8 x float> %wide.load4429.2, %broadcast.splat4422
  %i.mba = getelementptr i8, ptr %i.lzl, i64 304
  %i.mbb = getelementptr i8, ptr %i.lzl, i64 336
  %i.mbc = getelementptr i8, ptr %i.lzl, i64 368
  store <8 x float> %i.maw, ptr %next.gep4425.2, align 16, !tbaa !12, !noalias !549
  store <8 x float> %i.max, ptr %i.mba, align 16, !tbaa !12, !noalias !549
  store <8 x float> %i.may, ptr %i.mbb, align 16, !tbaa !12, !noalias !549
  store <8 x float> %i.maz, ptr %i.mbc, align 16, !tbaa !12, !noalias !549
  br i1 %i.lze, label %middle.block4431, label %vector.body4423.3

vector.body4423.3:                                ; preds = %vector.body4423.2
  %next.gep4425.3 = getelementptr i8, ptr %i.lzl, i64 400
  %i.mbd = getelementptr inbounds nuw [4 x i8], ptr %i.lvk, i64 %i.lzk ; 4 uses
  %i.mbe = getelementptr inbounds nuw i8, ptr %i.mbd, i64 32
  %i.mbf = getelementptr inbounds nuw i8, ptr %i.mbd, i64 64
  %i.mbg = getelementptr inbounds nuw i8, ptr %i.mbd, i64 96
  %wide.load4426.3 = load <8 x float>, ptr %i.mbd, align 4, !tbaa !12, !alias.scope !550, !noalias !549
  %wide.load4427.3 = load <8 x float>, ptr %i.mbe, align 4, !tbaa !12, !alias.scope !550, !noalias !549
  %wide.load4428.3 = load <8 x float>, ptr %i.mbf, align 4, !tbaa !12, !alias.scope !550, !noalias !549
  %wide.load4429.3 = load <8 x float>, ptr %i.mbg, align 4, !tbaa !12, !alias.scope !550, !noalias !549
  %i.mbh = fmul reassoc nsz arcp contract afn <8 x float> %wide.load4426.3, %broadcast.splat4422
  %i.mbi = fmul reassoc nsz arcp contract afn <8 x float> %wide.load4427.3, %broadcast.splat4422
  %i.mbj = fmul reassoc nsz arcp contract afn <8 x float> %wide.load4428.3, %broadcast.splat4422
  %i.mbk = fmul reassoc nsz arcp contract afn <8 x float> %wide.load4429.3, %broadcast.splat4422
  %i.mbl = getelementptr i8, ptr %i.lzl, i64 432
  %i.mbm = getelementptr i8, ptr %i.lzl, i64 464
  %i.mbn = getelementptr i8, ptr %i.lzl, i64 496
  store <8 x float> %i.mbh, ptr %next.gep4425.3, align 16, !tbaa !12, !noalias !549
  store <8 x float> %i.mbi, ptr %i.mbl, align 16, !tbaa !12, !noalias !549
  store <8 x float> %i.mbj, ptr %i.mbm, align 16, !tbaa !12, !noalias !549
  store <8 x float> %i.mbk, ptr %i.mbn, align 16, !tbaa !12, !noalias !549
  br label %middle.block4431

middle.block4431:                                 ; preds = %vector.body4423.3, %vector.body4423.2, %vector.body4423.1, %vector.ph4419
  br i1 %cmp.n4432, label %._crit_edge.i570, label %vec.epilog.iter.check4439

vec.epilog.iter.check4439:                        ; preds = %middle.block4431
  br i1 %min.epilog.iters.check4440, label %_calc_gamma.exit.us.i.preheader, label %vec.epilog.ph4441, !prof !552

vec.epilog.ph4441:                                ; preds = %vector.main.loop.iter.check4417, %vec.epilog.iter.check4439
  %vec.epilog.resume.val4433 = phi i64 [ %n.vec4420, %vec.epilog.iter.check4439 ], [ 0, %vector.main.loop.iter.check4417 ]
end_hunk_1
begin_hunk_2_@process:bb.a
  %i.mmr = fadd reassoc nsz arcp contract afn float %i.mmo, %i.mmq
  %i.mms = fmul reassoc nsz arcp contract afn float %i.mmr, 5.000000e-01
  %i.mmt = fsub reassoc nsz arcp contract afn float %i.mml, %i.mms ; 3 uses
  %i.mmu = fcmp reassoc nsz arcp contract afn ult float %i.mmf, -1.000000e+00
  %.inv.i = fcmp reassoc nsz arcp contract afn ole float %i.mmf, 0.000000e+00
  %spec.select957.i = select reassoc nsz arcp contract afn i1 %.inv.i, float %i.mmf, float 0.000000e+00
  %i.mmv = select reassoc nsz arcp contract afn i1 %i.mmu, float -1.000000e+00, float %spec.select957.i
  %i.mmw = fadd reassoc nsz arcp contract afn float %i.mmv, %i.mlz
  store float %i.mmw, ptr %i.mlp, align 4, !tbaa !12, !noalias !549
  %i.mmx = fcmp reassoc nsz arcp contract afn ult float %i.mmt, -1.000000e+00
  %.inv987.i = fcmp reassoc nsz arcp contract afn ole float %i.mmt, 0.000000e+00
  %spec.select958.i = select reassoc nsz arcp contract afn i1 %.inv987.i, float %i.mmt, float 0.000000e+00
  %i.mmy = select reassoc nsz arcp contract afn i1 %i.mmx, float -1.000000e+00, float %spec.select958.i
  %i.mmz = fadd reassoc nsz arcp contract afn float %i.mmy, %i.mlz
  store float %i.mmz, ptr %i.mlq, align 4, !tbaa !12, !noalias !549
  %indvars.iv.next1229.i = add nuw nsw i64 %indvars.iv1228.i, 2 ; 2 uses
  %i.mna = icmp slt i64 %indvars.iv.next1229.i, %i.lzj
  br i1 %i.mna, label %scalar.ph4335, label %._crit_edge1047.i, !llvm.loop !338

.lr.ph1059.i:                                     ; preds = %._crit_edge1052.i, %.preheader1019.lr.ph.i
  %i.mnb = add nsw i32 %i.lyr, 2
  %i.mnc = sext i32 %i.mnb to i64                 ; 2 uses
  br label %bb.ph

.preheader1019.i:                                 ; preds = %.preheader1019.i.preheader, %._crit_edge1052.i
  %indvars.iv1237.i = phi i64 [ %indvars.iv.next1238.i, %._crit_edge1052.i ], [ 4, %.preheader1019.i.preheader ] ; 2 uses
  %i.mnd = mul nuw nsw i64 %indvars.iv1237.i, 136 ; 4 uses
  %i.mne = getelementptr inbounds nuw [4 x i8], ptr %i.lut, i64 %i.mnd ; 2 uses
  %i.mnf = getelementptr inbounds nuw [4 x i8], ptr %i.luv, i64 %i.mnd ; 2 uses
  %i.mng = getelementptr inbounds nuw [4 x i8], ptr %i.luw, i64 %i.mnd ; 2 uses
  %i.mnh = getelementptr inbounds nuw [4 x i8], ptr %i.lux, i64 %i.mnd ; 2 uses
  br i1 %min.iters.check4308, label %scalar.ph4307.preheader, label %vector.body4311

vector.body4311:                                  ; preds = %.preheader1019.i, %vector.body4311
  %index4312 = phi i64 [ %index.next4331, %vector.body4311 ], [ 0, %.preheader1019.i ] ; 2 uses
  %i.mni = or disjoint i64 %index4312, 4          ; 4 uses
  %i.mnj = getelementptr inbounds nuw [4 x i8], ptr %i.mne, i64 %i.mni ; 9 uses
  %i.mnk = getelementptr inbounds nuw [4 x i8], ptr %i.mnf, i64 %i.mni ; 9 uses
  %i.mnl = getelementptr inbounds nuw [4 x i8], ptr %i.mng, i64 %i.mni
  %i.mnm = getelementptr inbounds nuw [4 x i8], ptr %i.mnh, i64 %i.mni
  %wide.load4313 = load <8 x float>, ptr %i.mnj, align 16, !tbaa !12, !noalias !549
  %i.mnn = fmul reassoc nsz arcp contract afn <8 x float> %wide.load4313, splat (float f0x3E51104A)
  %i.mno = getelementptr inbounds i8, ptr %i.mnj, i64 -4
  %wide.load4314 = load <8 x float>, ptr %i.mno, align 4, !tbaa !12, !noalias !549
  %i.mnp = getelementptr inbounds nuw i8, ptr %i.mnj, i64 4
  %wide.load4315 = load <8 x float>, ptr %i.mnp, align 4, !tbaa !12, !noalias !549
  %i.mnq = fadd reassoc nsz arcp contract afn <8 x float> %wide.load4315, %wide.load4314
  %i.mnr = fmul reassoc nsz arcp contract afn <8 x float> %i.mnq, splat (float f0x3E387F7D)
  %i.mns = fadd reassoc nsz arcp contract afn <8 x float> %i.mnr, %i.mnn
  %i.mnt = getelementptr inbounds i8, ptr %i.mnj, i64 -8
  %wide.load4316 = load <8 x float>, ptr %i.mnt, align 8, !tbaa !12, !noalias !549
  %i.mnu = getelementptr inbounds nuw i8, ptr %i.mnj, i64 8
  %wide.load4317 = load <8 x float>, ptr %i.mnu, align 8, !tbaa !12, !noalias !549
  %i.mnv = fadd reassoc nsz arcp contract afn <8 x float> %wide.load4317, %wide.load4316
  %i.mnw = fmul reassoc nsz arcp contract afn <8 x float> %i.mnv, splat (float f0x3DFD9B65)
  %i.mnx = fadd reassoc nsz arcp contract afn <8 x float> %i.mns, %i.mnw
  %i.mny = getelementptr inbounds i8, ptr %i.mnj, i64 -12
  %wide.load4318 = load <8 x float>, ptr %i.mny, align 4, !tbaa !12, !noalias !549
  %i.mnz = getelementptr inbounds nuw i8, ptr %i.mnj, i64 12
  %wide.load4319 = load <8 x float>, ptr %i.mnz, align 4, !tbaa !12, !noalias !549
  %i.moa = fadd reassoc nsz arcp contract afn <8 x float> %wide.load4319, %wide.load4318
  %i.mob = fmul reassoc nsz arcp contract afn <8 x float> %i.moa, splat (float f0x3D87BEFD)
  %i.moc = fadd reassoc nsz arcp contract afn <8 x float> %i.mnx, %i.mob
  %i.mod = getelementptr inbounds i8, ptr %i.mnj, i64 -16
  %wide.load4320 = load <8 x float>, ptr %i.mod, align 32, !tbaa !12, !noalias !549
  %i.moe = getelementptr inbounds nuw i8, ptr %i.mnj, i64 16
  %wide.load4321 = load <8 x float>, ptr %i.moe, align 32, !tbaa !12, !noalias !549
  %i.mof = fadd reassoc nsz arcp contract afn <8 x float> %wide.load4321, %wide.load4320
  %i.mog = fmul reassoc nsz arcp contract afn <8 x float> %i.mof, splat (float f0x3CE25978)
  %i.moh = fadd reassoc nsz arcp contract afn <8 x float> %i.moc, %i.mog
  store <8 x float> %i.moh, ptr %i.mnl, align 16, !tbaa !12, !noalias !549
  %wide.load4322 = load <8 x float>, ptr %i.mnk, align 16, !tbaa !12, !noalias !549
  %i.moi = fmul reassoc nsz arcp contract afn <8 x float> %wide.load4322, splat (float f0x3E51104A)
  %i.moj = getelementptr inbounds i8, ptr %i.mnk, i64 -544
  %wide.load4323 = load <8 x float>, ptr %i.moj, align 16, !tbaa !12, !noalias !549
  %i.mok = getelementptr inbounds nuw i8, ptr %i.mnk, i64 544
  %wide.load4324 = load <8 x float>, ptr %i.mok, align 16, !tbaa !12, !noalias !549
  %i.mol = fadd reassoc nsz arcp contract afn <8 x float> %wide.load4324, %wide.load4323
  %i.mom = fmul reassoc nsz arcp contract afn <8 x float> %i.mol, splat (float f0x3E387F7D)
  %i.mon = fadd reassoc nsz arcp contract afn <8 x float> %i.mom, %i.moi
  %i.moo = getelementptr inbounds i8, ptr %i.mnk, i64 -1088
  %wide.load4325 = load <8 x float>, ptr %i.moo, align 16, !tbaa !12, !noalias !549
  %i.mop = getelementptr inbounds nuw i8, ptr %i.mnk, i64 1088
  %wide.load4326 = load <8 x float>, ptr %i.mop, align 16, !tbaa !12, !noalias !549
  %i.moq = fadd reassoc nsz arcp contract afn <8 x float> %wide.load4326, %wide.load4325
  %i.mor = fmul reassoc nsz arcp contract afn <8 x float> %i.moq, splat (float f0x3DFD9B65)
  %i.mos = fadd reassoc nsz arcp contract afn <8 x float> %i.mon, %i.mor
  %i.mot = getelementptr inbounds i8, ptr %i.mnk, i64 -1632
  %wide.load4327 = load <8 x float>, ptr %i.mot, align 16, !tbaa !12, !noalias !549
  %i.mou = getelementptr inbounds nuw i8, ptr %i.mnk, i64 1632
  %wide.load4328 = load <8 x float>, ptr %i.mou, align 16, !tbaa !12, !noalias !549
  %i.mov = fadd reassoc nsz arcp contract afn <8 x float> %wide.load4328, %wide.load4327
  %i.mow = fmul reassoc nsz arcp contract afn <8 x float> %i.mov, splat (float f0x3D87BEFD)
  %i.mox = fadd reassoc nsz arcp contract afn <8 x float> %i.mos, %i.mow
  %i.moy = getelementptr inbounds i8, ptr %i.mnk, i64 -2176
  %wide.load4329 = load <8 x float>, ptr %i.moy, align 16, !tbaa !12, !noalias !549
  %i.moz = getelementptr inbounds nuw i8, ptr %i.mnk, i64 2176
  %wide.load4330 = load <8 x float>, ptr %i.moz, align 16, !tbaa !12, !noalias !549
  %i.mpa = fadd reassoc nsz arcp contract afn <8 x float> %wide.load4330, %wide.load4329
  %i.mpb = fmul reassoc nsz arcp contract afn <8 x float> %i.mpa, splat (float f0x3CE25978)
  %i.mpc = fadd reassoc nsz arcp contract afn <8 x float> %i.mox, %i.mpb
  store <8 x float> %i.mpc, ptr %i.mnm, align 16, !tbaa !12, !noalias !549
  %index.next4331 = add nuw i64 %index4312, 8     ; 2 uses
  %i.mpd = icmp eq i64 %index.next4331, %n.vec4310
  br i1 %i.mpd, label %middle.block4332, label %vector.body4311, !llvm.loop !339

middle.block4332:                                 ; preds = %vector.body4311
  br i1 %cmp.n4333, label %._crit_edge1052.i, label %scalar.ph4307.preheader

scalar.ph4307.preheader:                          ; preds = %.preheader1019.i, %middle.block4332
  %indvars.iv1234.i.ph = phi i64 [ 4, %.preheader1019.i ], [ %i.mdx, %middle.block4332 ]
  br label %scalar.ph4307

._crit_edge1052.i:                                ; preds = %scalar.ph4307, %middle.block4332
  %indvars.iv.next1238.i = add nuw nsw i64 %indvars.iv1237.i, 1 ; 2 uses
  %exitcond1127.not = icmp eq i64 %indvars.iv.next1238.i, %smax1153
  br i1 %exitcond1127.not, label %.lr.ph1059.i, label %.preheader1019.i

scalar.ph4307:                                    ; preds = %scalar.ph4307.preheader, %scalar.ph4307
  %indvars.iv1234.i = phi i64 [ %indvars.iv.next1235.i, %scalar.ph4307 ], [ %indvars.iv1234.i.ph, %scalar.ph4307.preheader ] ; 6 uses
  %i.mpe = getelementptr inbounds nuw [4 x i8], ptr %i.mne, i64 %indvars.iv1234.i ; 9 uses
  %i.mpf = getelementptr inbounds nuw [4 x i8], ptr %i.mnf, i64 %indvars.iv1234.i ; 9 uses
  %i.mpg = getelementptr inbounds nuw [4 x i8], ptr %i.mng, i64 %indvars.iv1234.i
  %i.mph = getelementptr inbounds nuw [4 x i8], ptr %i.mnh, i64 %indvars.iv1234.i
  %i.mpi = load float, ptr %i.mpe, align 4, !tbaa !12, !noalias !549
  %i.mpj = fmul reassoc nsz arcp contract afn float %i.mpi, f0x3E51104A
  %i.mpk = getelementptr inbounds i8, ptr %i.mpe, i64 -4
  %i.mpl = load float, ptr %i.mpk, align 4, !tbaa !12, !noalias !549
  %i.mpm = getelementptr inbounds nuw i8, ptr %i.mpe, i64 4
  %i.mpn = load float, ptr %i.mpm, align 4, !tbaa !12, !noalias !549
  %i.mpo = fadd reassoc nsz arcp contract afn float %i.mpn, %i.mpl
  %i.mpp = fmul reassoc nsz arcp contract afn float %i.mpo, f0x3E387F7D
  %i.mpq = fadd reassoc nsz arcp contract afn float %i.mpp, %i.mpj
  %i.mpr = getelementptr inbounds i8, ptr %i.mpe, i64 -8
  %i.mps = load float, ptr %i.mpr, align 4, !tbaa !12, !noalias !549
  %i.mpt = getelementptr inbounds nuw i8, ptr %i.mpe, i64 8
  %i.mpu = load float, ptr %i.mpt, align 4, !tbaa !12, !noalias !549
  %i.mpv = fadd reassoc nsz arcp contract afn float %i.mpu, %i.mps
  %i.mpw = fmul reassoc nsz arcp contract afn float %i.mpv, f0x3DFD9B65
  %i.mpx = fadd reassoc nsz arcp contract afn float %i.mpq, %i.mpw
  %i.mpy = getelementptr inbounds i8, ptr %i.mpe, i64 -12
  %i.mpz = load float, ptr %i.mpy, align 4, !tbaa !12, !noalias !549
  %i.mqa = getelementptr inbounds nuw i8, ptr %i.mpe, i64 12
  %i.mqb = load float, ptr %i.mqa, align 4, !tbaa !12, !noalias !549
  %i.mqc = fadd reassoc nsz arcp contract afn float %i.mqb, %i.mpz
  %i.mqd = fmul reassoc nsz arcp contract afn float %i.mqc, f0x3D87BEFD
  %i.mqe = fadd reassoc nsz arcp contract afn float %i.mpx, %i.mqd
  %i.mqf = getelementptr inbounds i8, ptr %i.mpe, i64 -16
  %i.mqg = load float, ptr %i.mqf, align 4, !tbaa !12, !noalias !549
  %i.mqh = getelementptr inbounds nuw i8, ptr %i.mpe, i64 16
  %i.mqi = load float, ptr %i.mqh, align 4, !tbaa !12, !noalias !549
  %i.mqj = fadd reassoc nsz arcp contract afn float %i.mqi, %i.mqg
  %i.mqk = fmul reassoc nsz arcp contract afn float %i.mqj, f0x3CE25978
  %i.mql = fadd reassoc nsz arcp contract afn float %i.mqe, %i.mqk
  store float %i.mql, ptr %i.mpg, align 4, !tbaa !12, !noalias !549
  %i.mqm = load float, ptr %i.mpf, align 4, !tbaa !12, !noalias !549
  %i.mqn = fmul reassoc nsz arcp contract afn float %i.mqm, f0x3E51104A
  %i.mqo = getelementptr inbounds i8, ptr %i.mpf, i64 -544
  %i.mqp = load float, ptr %i.mqo, align 4, !tbaa !12, !noalias !549
  %i.mqq = getelementptr inbounds nuw i8, ptr %i.mpf, i64 544
  %i.mqr = load float, ptr %i.mqq, align 4, !tbaa !12, !noalias !549
  %i.mqs = fadd reassoc nsz arcp contract afn float %i.mqr, %i.mqp
  %i.mqt = fmul reassoc nsz arcp contract afn float %i.mqs, f0x3E387F7D
  %i.mqu = fadd reassoc nsz arcp contract afn float %i.mqt, %i.mqn
  %i.mqv = getelementptr inbounds i8, ptr %i.mpf, i64 -1088
  %i.mqw = load float, ptr %i.mqv, align 4, !tbaa !12, !noalias !549
  %i.mqx = getelementptr inbounds nuw i8, ptr %i.mpf, i64 1088
  %i.mqy = load float, ptr %i.mqx, align 4, !tbaa !12, !noalias !549
  %i.mqz = fadd reassoc nsz arcp contract afn float %i.mqy, %i.mqw
  %i.mra = fmul reassoc nsz arcp contract afn float %i.mqz, f0x3DFD9B65
  %i.mrb = fadd reassoc nsz arcp contract afn float %i.mqu, %i.mra
  %i.mrc = getelementptr inbounds i8, ptr %i.mpf, i64 -1632
  %i.mrd = load float, ptr %i.mrc, align 4, !tbaa !12, !noalias !549
  %i.mre = getelementptr inbounds nuw i8, ptr %i.mpf, i64 1632
  %i.mrf = load float, ptr %i.mre, align 4, !tbaa !12, !noalias !549
  %i.mrg = fadd reassoc nsz arcp contract afn float %i.mrf, %i.mrd
  %i.mrh = fmul reassoc nsz arcp contract afn float %i.mrg, f0x3D87BEFD
  %i.mri = fadd reassoc nsz arcp contract afn float %i.mrb, %i.mrh
  %i.mrj = getelementptr inbounds i8, ptr %i.mpf, i64 -2176
  %i.mrk = load float, ptr %i.mrj, align 4, !tbaa !12, !noalias !549
  %i.mrl = getelementptr inbounds nuw i8, ptr %i.mpf, i64 2176
  %i.mrm = load float, ptr %i.mrl, align 4, !tbaa !12, !noalias !549
  %i.mrn = fadd reassoc nsz arcp contract afn float %i.mrm, %i.mrk
  %i.mro = fmul reassoc nsz arcp contract afn float %i.mrn, f0x3CE25978
  %i.mrp = fadd reassoc nsz arcp contract afn float %i.mri, %i.mro
  store float %i.mrp, ptr %i.mph, align 4, !tbaa !12, !noalias !549
  %indvars.iv.next1235.i = add nuw nsw i64 %indvars.iv1234.i, 1
  %exitcond1124.not = icmp eq i64 %indvars.iv1234.i, %i.lym
  br i1 %exitcond1124.not, label %._crit_edge1052.i, label %scalar.ph4307, !llvm.loop !340

._crit_edge1060.i:                                ; preds = %._crit_edge1057.i, %.preheader1025.i, %.preheader1026.i
  br i1 %i.lwb, label %.lr.ph1071.i, label %._crit_edge1085.i

.lr.ph1071.i:                                     ; preds = %._crit_edge1060.i
  %i.mrq = add nsw i32 %i.lyn, -4
  %i.mrr = icmp sgt i32 %i.lyq, -8
  br i1 %i.mrr, label %.lr.ph1066.preheader.i, label %.preheader1023.i

.lr.ph1066.preheader.i:                           ; preds = %.lr.ph1071.i
  %i.mrs = sext i32 %i.lys to i64                 ; 3 uses
  %i.mrt = icmp eq i32 %narrow4791, 0
  %unroll_iter4703 = and i64 %i.mrs, -2
  %i.mru = and i32 %i.lyr, 1
  %lcmp.mod4701.not = icmp eq i32 %i.mru, 0
  %lcmp.mod4702 = trunc i32 %i.lyr to i1
  %i.mrv = icmp eq i32 %narrow4791, 0
  %unroll_iter4709 = and i64 %i.mrs, -2
  %i.mrw = and i32 %i.lyr, 1
  %lcmp.mod4707.not = icmp eq i32 %i.mrw, 0
  %lcmp.mod4708 = trunc i32 %i.lyr to i1
  br label %.lr.ph1066.i

bb.ph:                                            ; preds = %._crit_edge1057.i, %.lr.ph1059.i
  %indvars.iv1243.i = phi i64 [ 4, %.lr.ph1059.i ], [ %indvars.iv.next1244.i, %._crit_edge1057.i ] ; 3 uses
  %i.mrx = trunc nuw nsw i64 %indvars.iv1243.i to i32
  %i.mry = shl i32 %i.mrx, 2
  %i.mrz = and i32 %i.mry, 28
  %i.msa = lshr i32 %.fr1070, %i.mrz              ; 2 uses
  %i.msb = and i32 %i.msa, 1                      ; 2 uses
  %i.msc = icmp sgt i32 %i.lyq, %i.msb
  br i1 %i.msc, label %.lr.ph1056.i, label %._crit_edge1057.i

.lr.ph1056.i:                                     ; preds = %bb.ph
  %i.msd = mul nuw nsw i64 %indvars.iv1243.i, 136 ; 5 uses
  %i.mse = getelementptr inbounds nuw [4 x i8], ptr %i.lut, i64 %i.msd ; 2 uses
  %i.msf = getelementptr inbounds nuw [4 x i8], ptr %i.luv, i64 %i.msd ; 2 uses
  %i.msg = getelementptr inbounds nuw [4 x i8], ptr %i.luw, i64 %i.msd ; 2 uses
  %i.msh = getelementptr inbounds nuw [4 x i8], ptr %i.lux, i64 %i.msd ; 2 uses
  %i.msi = getelementptr inbounds nuw [4 x i8], ptr %i.luy, i64 %i.msd ; 2 uses
  %i.msj = or disjoint i32 %i.msb, 4
  %i.msk = zext nneg i32 %i.msj to i64            ; 4 uses
  %i.msl = and i32 %i.msa, 1
  %i.msm = zext nneg i32 %i.msl to i64            ; 2 uses
  %i.msn = or disjoint i64 %i.msm, 4
  %i.mso = call i64 @llvm.smax.i64(i64 %i.msn, i64 %i.mnc)
  %i.msp = add nsw i64 %i.mso, -3
  %i.msq = sub i64 %i.msp, %i.msm                 ; 2 uses
  %min.iters.check4229 = icmp ult i64 %i.msq, 16
  br i1 %min.iters.check4229, label %scalar.ph4228.preheader, label %vector.ph4230

scalar.ph4228.preheader:                          ; preds = %vector.body4235, %.lr.ph1056.i
  %indvars.iv1240.i.ph = phi i64 [ %i.msk, %.lr.ph1056.i ], [ %i.msx, %vector.body4235 ]
  br label %scalar.ph4228

vector.ph4230:                                    ; preds = %.lr.ph1056.i
  %i.msr = lshr i64 %i.msq, 1
  %i.mss = add nuw nsw i64 %i.msr, 1              ; 2 uses
  %i.mst = and i64 %i.mss, 7                      ; 2 uses
  %i.msu = icmp eq i64 %i.mst, 0
  %i.msv = select i1 %i.msu, i64 8, i64 %i.mst
  %n.vec4231 = sub nsw i64 %i.mss, %i.msv         ; 2 uses
  %i.msw = shl i64 %n.vec4231, 1
  %i.msx = add i64 %i.msw, %i.msk
  %broadcast.splatinsert4232 = insertelement <8 x i64> poison, i64 %i.msk, i64 0
  %broadcast.splat4233 = shufflevector <8 x i64> %broadcast.splatinsert4232, <8 x i64> poison, <8 x i32> zeroinitializer
  %induction4234 = add nuw nsw <8 x i64> %broadcast.splat4233, <i64 0, i64 2, i64 4, i64 6, i64 8, i64 10, i64 12, i64 14>
  br label %vector.body4235

vector.body4235:                                  ; preds = %vector.body4235, %vector.ph4230
  %index4236 = phi i64 [ 0, %vector.ph4230 ], [ %index.next4303, %vector.body4235 ] ; 2 uses
  %vec.ind4237 = phi <8 x i64> [ %induction4234, %vector.ph4230 ], [ %vec.ind.next4304, %vector.body4235 ] ; 2 uses
  %i.msy = shl nuw i64 %index4236, 1
  %i.msz = or disjoint i64 %i.msy, %i.msk         ; 4 uses
  %i.mta = getelementptr inbounds nuw [4 x i8], ptr %i.mse, i64 %i.msz ; 5 uses
  %i.mtb = getelementptr inbounds nuw [4 x i8], ptr %i.msf, i64 %i.msz ; 9 uses
  %i.mtc = getelementptr inbounds nuw [4 x i8], ptr %i.msg, i64 %i.msz ; 5 uses
  %i.mtd = getelementptr inbounds nuw [4 x i8], ptr %i.msh, i64 %i.msz ; 9 uses
  %wide.gep4238 = getelementptr inbounds nuw [4 x i8], ptr %i.msi, <8 x i64> %vec.ind4237
  %i.mte = getelementptr inbounds i8, ptr %i.mtc, i64 -16
  %wide.vec4239 = load <16 x float>, ptr %i.mte, align 4, !tbaa !12, !noalias !549
  %strided.vec4240 = shufflevector <16 x float> %wide.vec4239, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 3 uses
  %i.mtf = getelementptr inbounds i8, ptr %i.mtc, i64 -12
  %wide.vec4241 = load <16 x float>, ptr %i.mtf, align 4, !tbaa !12, !noalias !549 ; 2 uses
  %strided.vec4242 = shufflevector <16 x float> %wide.vec4241, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 3 uses
  %strided.vec4243 = shufflevector <16 x float> %wide.vec4241, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15> ; 3 uses
  %i.mtg = getelementptr inbounds i8, ptr %i.mtc, i64 -4
  %wide.vec4244 = load <16 x float>, ptr %i.mtg, align 4, !tbaa !12, !noalias !549 ; 2 uses
  %strided.vec4245 = shufflevector <16 x float> %wide.vec4244, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 3 uses
  %strided.vec4246 = shufflevector <16 x float> %wide.vec4244, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15> ; 4 uses
  %i.mth = getelementptr inbounds nuw i8, ptr %i.mtc, i64 4
  %wide.vec4247 = load <16 x float>, ptr %i.mth, align 4, !tbaa !12, !noalias !549 ; 2 uses
  %strided.vec4248 = shufflevector <16 x float> %wide.vec4247, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 3 uses
  %strided.vec4249 = shufflevector <16 x float> %wide.vec4247, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15> ; 3 uses
  %i.mti = getelementptr inbounds nuw i8, ptr %i.mtc, i64 12
  %wide.vec4250 = load <16 x float>, ptr %i.mti, align 4, !tbaa !12, !noalias !549 ; 2 uses
  %strided.vec4251 = shufflevector <16 x float> %wide.vec4250, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 3 uses
  %strided.vec4252 = shufflevector <16 x float> %wide.vec4250, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15> ; 3 uses
  %i.mtj = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec4242, %strided.vec4240
  %i.mtk = fadd reassoc nsz arcp contract afn <8 x float> %i.mtj, %strided.vec4243
  %i.mtl = fadd reassoc nsz arcp contract afn <8 x float> %i.mtk, %strided.vec4245
  %i.mtm = fadd reassoc nsz arcp contract afn <8 x float> %i.mtl, %strided.vec4246
  %i.mtn = fadd reassoc nsz arcp contract afn <8 x float> %i.mtm, %strided.vec4248
  %i.mto = fadd reassoc nsz arcp contract afn <8 x float> %i.mtn, %strided.vec4249
  %i.mtp = fadd reassoc nsz arcp contract afn <8 x float> %i.mto, %strided.vec4251
  %i.mtq = fadd reassoc nsz arcp contract afn <8 x float> %i.mtp, %strided.vec4252
  %i.mtr = fmul reassoc nsz arcp contract afn <8 x float> %i.mtq, splat (float f0x3DE38E39) ; 9 uses
  %i.mts = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec4240, %i.mtr ; 2 uses
  %i.mtt = fmul reassoc nsz arcp contract afn <8 x float> %i.mts, %i.mts
  %i.mtu = fadd reassoc nsz arcp contract afn <8 x float> %i.mtt, splat (float 1.000000e-07)
  %i.mtv = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec4242, %i.mtr ; 2 uses
  %i.mtw = fmul reassoc nsz arcp contract afn <8 x float> %i.mtv, %i.mtv
  %i.mtx = fadd reassoc nsz arcp contract afn <8 x float> %i.mtu, %i.mtw
  %i.mty = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec4243, %i.mtr ; 2 uses
  %i.mtz = fmul reassoc nsz arcp contract afn <8 x float> %i.mty, %i.mty
  %i.mua = fadd reassoc nsz arcp contract afn <8 x float> %i.mtx, %i.mtz
  %i.mub = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec4245, %i.mtr ; 2 uses
  %i.muc = fmul reassoc nsz arcp contract afn <8 x float> %i.mub, %i.mub
  %i.mud = fadd reassoc nsz arcp contract afn <8 x float> %i.mua, %i.muc
  %i.mue = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec4246, %i.mtr ; 2 uses
  %i.muf = fmul reassoc nsz arcp contract afn <8 x float> %i.mue, %i.mue
  %i.mug = fadd reassoc nsz arcp contract afn <8 x float> %i.mud, %i.muf
  %i.muh = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec4248, %i.mtr ; 2 uses
  %i.mui = fmul reassoc nsz arcp contract afn <8 x float> %i.muh, %i.muh
  %i.muj = fadd reassoc nsz arcp contract afn <8 x float> %i.mug, %i.mui
  %i.muk = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec4249, %i.mtr ; 2 uses
  %i.mul = fmul reassoc nsz arcp contract afn <8 x float> %i.muk, %i.muk
  %i.mum = fadd reassoc nsz arcp contract afn <8 x float> %i.muj, %i.mul
  %i.mun = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec4251, %i.mtr ; 2 uses
  %i.muo = fmul reassoc nsz arcp contract afn <8 x float> %i.mun, %i.mun
  %i.mup = fadd reassoc nsz arcp contract afn <8 x float> %i.mum, %i.muo
  %i.muq = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec4252, %i.mtr ; 2 uses
  %i.mur = fmul reassoc nsz arcp contract afn <8 x float> %i.muq, %i.muq
  %i.mus = fadd reassoc nsz arcp contract afn <8 x float> %i.mup, %i.mur ; 3 uses
  %i.mut = getelementptr inbounds i8, ptr %i.mta, i64 -16
  %wide.vec4253 = load <16 x float>, ptr %i.mut, align 4, !tbaa !12, !noalias !549
  %strided.vec4254 = shufflevector <16 x float> %wide.vec4253, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.muu = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec4240, %strided.vec4254 ; 2 uses
  %i.muv = getelementptr inbounds i8, ptr %i.mta, i64 -12
  %wide.vec4255 = load <16 x float>, ptr %i.muv, align 4, !tbaa !12, !noalias !549 ; 2 uses
  %strided.vec4256 = shufflevector <16 x float> %wide.vec4255, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec4257 = shufflevector <16 x float> %wide.vec4255, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.muw = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec4242, %strided.vec4256 ; 2 uses
  %i.mux = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec4243, %strided.vec4257 ; 2 uses
  %i.muy = getelementptr inbounds i8, ptr %i.mta, i64 -4
  %wide.vec4258 = load <16 x float>, ptr %i.muy, align 4, !tbaa !12, !noalias !549 ; 2 uses
  %strided.vec4259 = shufflevector <16 x float> %wide.vec4258, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec4260 = shufflevector <16 x float> %wide.vec4258, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15> ; 2 uses
  %i.muz = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec4245, %strided.vec4259 ; 2 uses
  %i.mva = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec4246, %strided.vec4260 ; 2 uses
  %i.mvb = getelementptr inbounds nuw i8, ptr %i.mta, i64 4
  %wide.vec4261 = load <16 x float>, ptr %i.mvb, align 4, !tbaa !12, !noalias !549 ; 2 uses
  %strided.vec4262 = shufflevector <16 x float> %wide.vec4261, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec4263 = shufflevector <16 x float> %wide.vec4261, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.mvc = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec4248, %strided.vec4262 ; 2 uses
  %i.mvd = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec4249, %strided.vec4263 ; 2 uses
  %i.mve = getelementptr inbounds nuw i8, ptr %i.mta, i64 12
  %wide.vec4264 = load <16 x float>, ptr %i.mve, align 4, !tbaa !12, !noalias !549 ; 2 uses
  %strided.vec4265 = shufflevector <16 x float> %wide.vec4264, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec4266 = shufflevector <16 x float> %wide.vec4264, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.mvf = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec4251, %strided.vec4265 ; 2 uses
  %i.mvg = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec4252, %strided.vec4266 ; 2 uses
  %i.mvh = fmul reassoc nsz arcp contract afn <8 x float> %i.muu, %i.muu
  %i.mvi = fadd reassoc nsz arcp contract afn <8 x float> %i.mvh, splat (float 1.000000e-07)
  %i.mvj = fmul reassoc nsz arcp contract afn <8 x float> %i.muw, %i.muw
  %i.mvk = fadd reassoc nsz arcp contract afn <8 x float> %i.mvi, %i.mvj
  %i.mvl = fmul reassoc nsz arcp contract afn <8 x float> %i.mux, %i.mux
  %i.mvm = fadd reassoc nsz arcp contract afn <8 x float> %i.mvk, %i.mvl
  %i.mvn = fmul reassoc nsz arcp contract afn <8 x float> %i.muz, %i.muz
  %i.mvo = fadd reassoc nsz arcp contract afn <8 x float> %i.mvm, %i.mvn
  %i.mvp = fmul reassoc nsz arcp contract afn <8 x float> %i.mva, %i.mva
  %i.mvq = fadd reassoc nsz arcp contract afn <8 x float> %i.mvo, %i.mvp
  %i.mvr = fmul reassoc nsz arcp contract afn <8 x float> %i.mvc, %i.mvc
  %i.mvs = fadd reassoc nsz arcp contract afn <8 x float> %i.mvq, %i.mvr
  %i.mvt = fmul reassoc nsz arcp contract afn <8 x float> %i.mvd, %i.mvd
  %i.mvu = fadd reassoc nsz arcp contract afn <8 x float> %i.mvs, %i.mvt
  %i.mvv = fmul reassoc nsz arcp contract afn <8 x float> %i.mvf, %i.mvf
  %i.mvw = fadd reassoc nsz arcp contract afn <8 x float> %i.mvu, %i.mvv
  %i.mvx = fmul reassoc nsz arcp contract afn <8 x float> %i.mvg, %i.mvg
  %i.mvy = fadd reassoc nsz arcp contract afn <8 x float> %i.mvw, %i.mvx ; 3 uses
  %i.mvz = fmul reassoc nsz arcp contract afn <8 x float> %i.mus, %strided.vec4260
  %i.mwa = fmul reassoc nsz arcp contract afn <8 x float> %i.mvy, %strided.vec4246
  %i.mwb = fadd reassoc nsz arcp contract afn <8 x float> %i.mvz, %i.mwa
  %i.mwc = fadd reassoc nsz arcp contract afn <8 x float> %i.mus, %i.mvy ; 2 uses
  %i.mwd = fmul reassoc nsz arcp contract afn <8 x float> %i.mus, %i.mvy
  %i.mwe = fdiv reassoc nsz arcp contract afn <8 x float> %i.mwd, %i.mwc ; 2 uses
  %i.mwf = getelementptr inbounds i8, ptr %i.mtd, i64 -2176
  %wide.vec4267 = load <16 x float>, ptr %i.mwf, align 4, !tbaa !12, !noalias !549
  %strided.vec4268 = shufflevector <16 x float> %wide.vec4267, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 3 uses
  %i.mwg = getelementptr inbounds i8, ptr %i.mtd, i64 -1632
  %wide.vec4269 = load <16 x float>, ptr %i.mwg, align 4, !tbaa !12, !noalias !549
  %strided.vec4270 = shufflevector <16 x float> %wide.vec4269, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 3 uses
  %i.mwh = getelementptr inbounds i8, ptr %i.mtd, i64 -1088
  %wide.vec4271 = load <16 x float>, ptr %i.mwh, align 4, !tbaa !12, !noalias !549
  %strided.vec4272 = shufflevector <16 x float> %wide.vec4271, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 3 uses
  %i.mwi = getelementptr inbounds i8, ptr %i.mtd, i64 -544
  %wide.vec4273 = load <16 x float>, ptr %i.mwi, align 4, !tbaa !12, !noalias !549
  %strided.vec4274 = shufflevector <16 x float> %wide.vec4273, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 3 uses
  %wide.vec4275 = load <16 x float>, ptr %i.mtd, align 4, !tbaa !12, !noalias !549
  %strided.vec4276 = shufflevector <16 x float> %wide.vec4275, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 4 uses
  %i.mwj = getelementptr inbounds nuw i8, ptr %i.mtd, i64 544
  %wide.vec4277 = load <16 x float>, ptr %i.mwj, align 4, !tbaa !12, !noalias !549
  %strided.vec4278 = shufflevector <16 x float> %wide.vec4277, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 3 uses
  %i.mwk = getelementptr inbounds nuw i8, ptr %i.mtd, i64 1088
  %wide.vec4279 = load <16 x float>, ptr %i.mwk, align 4, !tbaa !12, !noalias !549
  %strided.vec4280 = shufflevector <16 x float> %wide.vec4279, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 3 uses
  %i.mwl = getelementptr inbounds nuw i8, ptr %i.mtd, i64 1632
  %wide.vec4281 = load <16 x float>, ptr %i.mwl, align 4, !tbaa !12, !noalias !549
  %strided.vec4282 = shufflevector <16 x float> %wide.vec4281, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 3 uses
  %i.mwm = getelementptr inbounds nuw i8, ptr %i.mtd, i64 2176
  %wide.vec4283 = load <16 x float>, ptr %i.mwm, align 4, !tbaa !12, !noalias !549
  %strided.vec4284 = shufflevector <16 x float> %wide.vec4283, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 3 uses
  %i.mwn = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec4270, %strided.vec4268
  %i.mwo = fadd reassoc nsz arcp contract afn <8 x float> %i.mwn, %strided.vec4272
  %i.mwp = fadd reassoc nsz arcp contract afn <8 x float> %i.mwo, %strided.vec4274
  %i.mwq = fadd reassoc nsz arcp contract afn <8 x float> %i.mwp, %strided.vec4276
  %i.mwr = fadd reassoc nsz arcp contract afn <8 x float> %i.mwq, %strided.vec4278
end_hunk_2
