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
  %.sroa.gep4799 = getelementptr inbounds nuw i8, ptr %i.c, i64 1248
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
  %wide.trip.count1495.i = zext i32 %i.apx to i64
  %i.aqh = icmp sgt i32 %i.bo, 0                  ; 4 uses
  %i.aqi = add i32 %i.bo, 13                      ; 6 uses
  %i.aqj = add nsw i32 %i.bo, -13
  %i.aqk = sext i32 %i.aqj to i64
  %i.aql = sext i32 %i.aqi to i64
  %gep1350.1.i = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  %invariant.gep1344.1.i = getelementptr inbounds nuw i8, ptr %i.i, i64 4 ; 3 uses
  %gep1350.1.1.i = getelementptr inbounds nuw i8, ptr %i.i, i64 68
  %invariant.gep1344.2.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 3 uses
  %invariant.gep1344.3.i = getelementptr inbounds nuw i8, ptr %i.i, i64 12 ; 4 uses
  %i.aqm = getelementptr inbounds nuw i8, ptr %i.i, i64 72
  %i.aqn = getelementptr inbounds nuw i8, ptr %i.i, i64 76 ; 2 uses
  %invariant.gep1344.4.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 3 uses
  %invariant.gep1344.5.i = getelementptr inbounds nuw i8, ptr %i.i, i64 20 ; 3 uses
  %i.aqo = getelementptr inbounds nuw i8, ptr %i.i, i64 80
  %i.aqp = getelementptr inbounds nuw i8, ptr %i.i, i64 84
  %i.aqq = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.aqr = getelementptr inbounds nuw i8, ptr %0, i64 752
  %i.aqs = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.aqt = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %.not123.i.i = icmp eq i32 %i.bo, 0
  %i.aqu = add nsw i32 %i.bo, -2
  %i.aqv = sext i32 %i.aqu to i64
  %i.aqw = sext i32 %i.apn to i64                 ; 2 uses
  %exitcond129.peel.not.i.i = icmp eq i32 %i.bo, 1
  %exitcond129.peel147.not.i.i = icmp eq i32 %i.bo, 2
  %i.aqx = add nsw i32 %i.bo, -3                  ; 2 uses
  %i.aqy = sext i32 %i.aqx to i64
  %i.aqz = mul nuw nsw i32 %i.bo, 3               ; 8 uses
  %i.ara = sub nsw i32 0, %i.aow
  %i.arb = sub nuw nsw i32 -2, %i.aow
  %i.arc = sext i32 %i.arb to i64                 ; 2 uses
  %i.ard = sub nsw i32 2, %i.aow
  %i.are = sext i32 %i.ard to i64                 ; 2 uses
  %i.arf = sub nsw i32 0, %i.apn
  %i.arg = sub nuw i32 -4, %i.apn
  %i.arh = sext i32 %i.arg to i64                 ; 2 uses
  %i.ari = sub nsw i32 4, %i.apn
  %i.arj = sext i32 %i.ari to i64                 ; 2 uses
  %i.ark = zext nneg i32 %i.apn to i64            ; 4 uses
  %i.arl = zext nneg i32 %i.aow to i64            ; 2 uses
  %i.arm = xor i32 %i.aow, -1
  %i.arn = sext i32 %i.arm to i64                 ; 2 uses
  %i.aro = sub nsw i32 1, %i.aow
  %i.arp = sext i32 %i.aro to i64                 ; 2 uses
  %i.arq = sub nsw i32 0, %i.bo
  %i.arr = sub i32 -4, %i.bo
  %i.ars = sext i32 %i.arr to i64                 ; 2 uses
  %i.art = sub i32 4, %i.bo
  %i.aru = sext i32 %i.art to i64                 ; 2 uses
  %i.arv = sext i32 %i.ara to i64                 ; 2 uses
  %i.arw = sub nsw i32 0, %i.aqz
  %i.arx = sub nuw i32 -3, %i.aqz
  %i.ary = sext i32 %i.arx to i64                 ; 2 uses
  %i.arz = sub nsw i32 3, %i.aqz
  %i.asa = sext i32 %i.arz to i64                 ; 2 uses
  %i.asb = zext nneg i32 %i.aqz to i64            ; 2 uses
  %i.asc = sub nuw i32 -2, %i.aqz
  %i.asd = sext i32 %i.asc to i64                 ; 2 uses
  %i.ase = sub nsw i32 2, %i.aqz
  %i.asf = sext i32 %i.ase to i64                 ; 2 uses
  %i.asg = sub nuw i32 -3, %i.apn
  %i.ash = sext i32 %i.asg to i64                 ; 2 uses
  %i.asi = sub nsw i32 3, %i.apn
  %i.asj = sext i32 %i.asi to i64                 ; 2 uses
  %i.ask = xor i32 %i.aqz, -1
  %i.asl = sext i32 %i.ask to i64                 ; 2 uses
  %i.asm = sub nsw i32 1, %i.aqz
  %i.asn = sext i32 %i.asm to i64                 ; 2 uses
  %i.aso = sub i32 -3, %i.bo
  %i.asp = sext i32 %i.aso to i64                 ; 2 uses
  %i.asq = sub i32 3, %i.bo
  %i.asr = sext i32 %i.asq to i64                 ; 2 uses
  %i.ass = sext i32 %i.arw to i64                 ; 2 uses
  %i.ast = sub nuw nsw i32 -2, %i.apn
  %i.asu = sext i32 %i.ast to i64                 ; 2 uses
  %i.asv = sub nsw i32 2, %i.apn
  %i.asw = sext i32 %i.asv to i64                 ; 2 uses
  %i.asx = xor i32 %i.apn, -1
  %i.asy = sext i32 %i.asx to i64                 ; 4 uses
  %i.asz = sub nsw i32 1, %i.apn
  %i.ata = sext i32 %i.asz to i64                 ; 4 uses
  %i.atb = sub i32 -2, %i.bo
  %i.atc = sext i32 %i.atb to i64                 ; 4 uses
  %i.atd = sub i32 2, %i.bo
  %i.ate = sext i32 %i.atd to i64                 ; 4 uses
  %i.atf = sext i32 %i.arf to i64                 ; 4 uses
  %i.atg = xor i32 %i.bo, -1
  %i.ath = sext i32 %i.atg to i64                 ; 4 uses
  %i.ati = sub i32 1, %i.bo
  %i.atj = sext i32 %i.ati to i64                 ; 4 uses
  %i.atk = sext i32 %i.arq to i64                 ; 4 uses
  %i.atl = getelementptr inbounds nuw i8, ptr %i.z, i64 120
  %i.atm = icmp ne i32 %.1393, 0                  ; 2 uses
  %i.atn = shl nuw nsw i64 %i.aod, 2
  %i.ato = add nsw i32 %.neg.i511, -1             ; 2 uses
  %i.atp = zext i32 %.0684720 to i64
  %wide.trip.count = zext nneg i32 %.0682723 to i64
  %scevgep1681 = getelementptr i8, ptr %i.anw, i64 12 ; 2 uses
  %i.atq = shl nuw nsw i64 %i.aod, 4
  %i.atr = shl nuw nsw i64 %i.aod, 2
  %i.ats = shl nuw nsw i64 %i.aod, 4
  %i.att = shl nuw nsw i64 %i.aod, 2
  %scevgep1762 = getelementptr i8, ptr %i.anw, i64 16
  %scevgep1820 = getelementptr i8, ptr %i.anw, i64 4 ; 2 uses
  %scevgep1821 = getelementptr i8, ptr %i.anw, i64 8 ; 2 uses
  %scevgep1822 = getelementptr i8, ptr %i.anw, i64 12 ; 3 uses
  %i.atu = shl nsw i64 %i.aoc, 2
  %i.atv = shl nsw i64 %i.aoc, 4
  %scevgep1862 = getelementptr i8, ptr %i.anw, i64 16
  %i.atw = shl nsw i64 %i.aoc, 2
  %i.atx = shl nsw i64 %i.aoc, 2
  %scevgep1959 = getelementptr i8, ptr %i.anw, i64 32 ; 2 uses
  %scevgep1960 = getelementptr i8, ptr %i.anw, i64 -4
  %i.aty = shl nsw i64 %i.aoc, 4
  %i.atz = shl nsw i64 %i.aoc, 2
  %scevgep1995 = getelementptr i8, ptr %i.anw, i64 -4
  %i.aua = shl nsw i64 %i.aoc, 4
  %i.aub = mul i32 %i.bo, 384
  %i.auc = shl i32 %i.bo, 2
  %i.aud = mul i32 %i.bo, 384
  %i.aue = shl i32 %i.bo, 2
  %scevgep2044 = getelementptr i8, ptr %i.anw, i64 -212
  %i.auf = mul nuw nsw i64 %i.aqf, 123
  %i.aug = select i1 %i.apa, i64 1547936, i64 773968
  %i.auh = mul nuw nsw i64 %i.aqf, 122
  %i.aui = add nuw nsw i64 %i.aqf, 1
  %i.auj = add nsw i32 %.neg.i511, 122
  %i.auk = mul nuw nsw i64 %i.aqf, 492            ; 5 uses
  %i.aul = select i1 %i.apa, i64 1905152, i64 952576
  %i.aum = mul nuw nsw i64 %i.aqf, 488            ; 9 uses
  %i.aun = add nuw nsw i64 %i.api, %i.auk         ; 2 uses
  %i.auo = select i1 %i.apa, i64 1905152, i64 952576
  %i.aup = select i1 %i.apa, i64 1905152, i64 952576
  %i.auq = add nuw nsw i64 %i.api, %i.auk         ; 2 uses
  %i.aur = select i1 %i.apa, i64 1905152, i64 952576
  %i.aus = select i1 %i.apa, i64 1905152, i64 952576
  %i.aut = add nuw nsw i64 %i.api, %i.auk         ; 2 uses
  %i.auu = select i1 %i.apa, i64 1905152, i64 952576
  %i.auv = select i1 %i.apa, i64 1905152, i64 952576
  %i.auw = add nuw nsw i64 %i.api, %i.auk         ; 2 uses
  %i.aux = select i1 %i.apa, i64 1905152, i64 952576
  %i.auy = select i1 %i.apa, i64 1905152, i64 952576
  %i.auz = mul nuw nsw i64 %i.aqe, 492            ; 3 uses
  %i.ava = add nuw nsw i64 %i.api, %i.auz
  %i.avb = add nuw nsw i64 %i.ava, 178608
  %i.avc = add nuw nsw i64 %i.api, %i.auz
  %i.avd = add nuw nsw i64 %i.api, %i.auz
  %scevgep3526 = getelementptr i8, ptr %i.d, i64 -8
  %i.ave = shl nuw nsw i64 %i.aod, 4              ; 3 uses
  %i.avf = getelementptr i8, ptr %i.anw, i64 %i.ave
  %scevgep4463.a = getelementptr i8, ptr %i.avf, i64 -12
  %i.avg = shl nsw i64 %i.aoc, 4
  %i.avh = insertelement <4 x ptr> poison, ptr %i.anw, i64 0
  %i.avi = shufflevector <4 x ptr> %i.avh, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.avj = getelementptr i8, ptr %i.anw, <4 x i64> <i64 12, i64 8, i64 4, i64 4> ; 2 uses
  %i.avk = getelementptr i8, ptr %i.anw, i64 %i.ave
  %scevgep4466.a = getelementptr i8, ptr %i.avk, i64 -8
  %scevgep4468 = getelementptr i8, ptr %i.anw, i64 8 ; 2 uses
  %i.avl = getelementptr i8, ptr %i.anw, i64 %i.ave
  %scevgep4469 = getelementptr i8, ptr %i.avl, i64 -4
  %i.avm = getelementptr i8, ptr %i.anw, <2 x i64> <i64 4, i64 12>
  %scevgep4471 = getelementptr i8, ptr %i.anw, i64 12
  %i.avn = shl nuw nsw i64 %i.aod, 4
  %i.avo = shl nuw nsw i64 %i.aod, 2
  %scevgep4473 = getelementptr i8, ptr %.1, i64 %i.avo
  %i.avp = shl nsw i64 %i.aoc, 2
  %i.avq = select i1 %i.apa, i64 1547936, i64 773968
  %i.avr = mul nuw nsw i64 %i.apv, 123
  %i.avs = add nsw i64 %i.aod, -1                 ; 2 uses
  %xtraiter4682 = and i64 %i.aod, 3               ; 3 uses
  %i.avt = icmp ult i64 %i.avs, 3
  %unroll_iter4685 = and i64 %i.aod, 2147483644
  %lcmp.mod4683.not = icmp eq i64 %xtraiter4682, 0
  %lcmp.mod4684 = icmp ne i64 %xtraiter4682, 0
  %xtraiter4687 = and i64 %i.aod, 1
  %i.avu = icmp eq i64 %i.avs, 0
  %unroll_iter4691 = and i64 %i.aod, 2147483646
  %lcmp.mod4689.not = icmp eq i64 %xtraiter4687, 0
  %lcmp.mod4690 = trunc i32 %i.bo to i1
  %i.avv = shufflevector <4 x ptr> %i.avj, <4 x ptr> poison, <4 x i32> <i32 2, i32 1, i32 0, i32 poison>
  %i.avw = shufflevector <2 x ptr> %i.avm, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %min.iters.check4515 = icmp ult i32 %i.bo, 16
  %i.avx = insertelement <4 x ptr> %i.avw, ptr %scevgep4468, i64 3
  %n.vec4517 = and i64 %i.aod, 2147483640         ; 3 uses
  %cmp.n4535 = icmp eq i64 %n.vec4517, %i.aod
  %xtraiter4693 = and i64 %i.aod, 3               ; 2 uses
  %lcmp.mod4694.not = icmp eq i64 %xtraiter4693, 0
  %broadcast.splatinsert4428 = insertelement <8 x float> poison, float %i.any, i64 0
  %broadcast.splat4429 = shufflevector <8 x float> %broadcast.splatinsert4428, <8 x float> poison, <8 x i32> zeroinitializer ; 16 uses
  %broadcast.splatinsert4450 = insertelement <8 x float> poison, float %i.any, i64 0
  %broadcast.splat4451 = shufflevector <8 x float> %broadcast.splatinsert4450, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert3706 = insertelement <8 x float> poison, float %i.eh, i64 0
  %broadcast.splat3707 = shufflevector <8 x float> %broadcast.splatinsert3706, <8 x float> poison, <8 x i32> zeroinitializer ; 3 uses
  %broadcast.splatinsert3683 = insertelement <8 x float> poison, float %i.eh, i64 0 ; 2 uses
  %broadcast.splat3684 = shufflevector <8 x float> %broadcast.splatinsert3683, <8 x float> poison, <8 x i32> zeroinitializer
  %i.avy = shufflevector <8 x float> %broadcast.splatinsert3683, <8 x float> poison, <16 x i32> zeroinitializer
  %i.avz = insertelement <2 x float> poison, float %i.eh, i64 0
  %i.awa = shufflevector <2 x float> %i.avz, <2 x float> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert3647 = insertelement <8 x float> poison, float %i.eh, i64 0
  %broadcast.splat3648 = shufflevector <8 x float> %broadcast.splatinsert3647, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %i.awb = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %broadcast.splat3648
  %i.awc = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %broadcast.splat3648
  %i.awd = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %broadcast.splat3648
  %i.awe = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %broadcast.splat3648
  %broadcast.splatinsert3668 = insertelement <4 x float> poison, float %i.eh, i64 0
  %broadcast.splat3669 = shufflevector <4 x float> %broadcast.splatinsert3668, <4 x float> poison, <4 x i32> zeroinitializer
  %i.awf = fdiv reassoc nsz arcp contract afn <4 x float> splat (float 1.000000e+00), %broadcast.splat3669
  %i.awg = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.eh
  %broadcast.splatinsert2948 = insertelement <8 x float> poison, float %i.eh, i64 0 ; 2 uses
  %broadcast.splat2949 = shufflevector <8 x float> %broadcast.splatinsert2948, <8 x float> poison, <8 x i32> zeroinitializer
  %i.awh = shufflevector <8 x float> %broadcast.splatinsert2948, <8 x float> poison, <16 x i32> zeroinitializer
  %i.awi = insertelement <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, float %i.eh, i64 0
  %i.awj = shufflevector <4 x float> %i.awi, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %broadcast.splatinsert2865 = insertelement <8 x i64> poison, i64 %i.aoc, i64 0
  %broadcast.splat2866 = shufflevector <8 x i64> %broadcast.splatinsert2865, <8 x i64> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert2867 = insertelement <8 x i32> poison, i32 %i.apo, i64 0
  %broadcast.splat2868 = shufflevector <8 x i32> %broadcast.splatinsert2867, <8 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert2914 = insertelement <4 x i64> poison, i64 %i.aoc, i64 0
  %broadcast.splat2915 = shufflevector <4 x i64> %broadcast.splatinsert2914, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert2916 = insertelement <4 x i32> poison, i32 %i.apo, i64 0
  %broadcast.splat2917 = shufflevector <4 x i32> %broadcast.splatinsert2916, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert2777 = insertelement <8 x i64> poison, i64 %i.aoc, i64 0
  %broadcast.splat2778 = shufflevector <8 x i64> %broadcast.splatinsert2777, <8 x i64> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert2779 = insertelement <8 x i32> poison, i32 %i.apo, i64 0
  %broadcast.splat2780 = shufflevector <8 x i32> %broadcast.splatinsert2779, <8 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert2826 = insertelement <4 x i64> poison, i64 %i.aoc, i64 0
  %broadcast.splat2827 = shufflevector <4 x i64> %broadcast.splatinsert2826, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert2828 = insertelement <4 x i32> poison, i32 %i.apo, i64 0
  %broadcast.splat2829 = shufflevector <4 x i32> %broadcast.splatinsert2828, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.awk = add nuw nsw i64 %i.aqe, 1
  %xtraiter4736 = and i64 %i.aqb, 4               ; 2 uses
  %unroll_iter4741 = and i64 %i.aqb, 8
  %lcmp.mod4738.not = icmp eq i64 %xtraiter4736, 0
  %lcmp.mod4740.a = icmp ne i64 %xtraiter4736, 0
  %n.vec2696 = and i64 %i.aqb, 8
  %n.vec2622 = and i64 %i.aqb, 8
  %n.vec2577 = and i64 %i.aqb, 8
  %min.iters.check2015 = icmp ult i32 %i.bo, 9
  %stride.check2005 = icmp slt i32 %i.bo, 0
  %i.awl = and i64 %i.aoc, 7
  %i.awm = and i32 %i.bo, 7
  %i.awn = icmp eq i32 %i.awm, 0
  %i.awo = select i1 %i.awn, i64 8, i64 %i.awl
  %n.vec2017 = sub nsw i64 %i.aoc, %i.awo         ; 2 uses
  %i.awp = add nsw i64 %i.aoc, -1
  %i.awq = add nsw i64 %i.aoc, -2                 ; 3 uses
  %min.iters.check1980 = icmp ult i64 %i.awq, 9
  %stride.check1970 = icmp slt i32 %i.bo, 0
  %i.awr = and i64 %i.awq, 7                      ; 2 uses
  %i.aws = icmp eq i64 %i.awr, 0
  %i.awt = select i1 %i.aws, i64 8, i64 %i.awr
  %n.vec1982 = sub nsw i64 %i.awq, %i.awt         ; 2 uses
  %i.awu = add nsw i64 %n.vec1982, 2
  %i.awv = add nsw i64 %i.aoc, -1
  br label %bb.hc

._crit_edge:                                      ; preds = %bb.sg, %.thread726
  br i1 %.not75.i, label %bb.sh, label %bb.si

bb.hc:                                            ; preds = %.lr.ph, %bb.sg
  %indvars.iv1249 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next1250, %bb.sg ] ; 3 uses
  %indvars1251 = trunc i64 %indvars.iv1249 to i32 ; 2 uses
  %i.aww = mul i64 %indvars.iv1249, %i.atp        ; 2 uses
  %i.awx = mul nsw i32 %.0684720, %indvars1251
  %i.awy = trunc i64 %i.aww to i32                ; 2 uses
  %i.awz = add i32 %i.anz, %i.awy
  %. = tail call i32 @llvm.smin.i32(i32 %i.bq, i32 %i.awz) ; 2 uses
  %i.axa = trunc i64 %i.aww to i32
  %i.axb = sub i32 %i.axa, %.0688708714           ; 2 uses
  %i.axc = tail call i32 @llvm.smax.i32(i32 %i.axb, i32 0) ; 4 uses
  %i.axd = sub nsw i32 %., %i.axc                 ; 2 uses
  %i.axe = select i1 %.not75.i, i32 %i.axd, i32 %i.bq ; 64 uses
  %i.axf = tail call i32 @llvm.smin.i32(i32 %i.axb, i32 0)
  %i.axg = add nsw i32 %i.axf, %.0688708714       ; 2 uses
  %i.axh = sub nsw i32 %i.axe, %i.axg             ; 2 uses
  %i.axi = icmp sgt i32 %i.axh, 0
  br i1 %i.axi, label %bb.hd, label %bb.sg

bb.hd:                                            ; preds = %bb.hc
  br i1 %.not75.i, label %bb.he, label %bb.hg

bb.he:                                            ; preds = %bb.hd
  %i.axj = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !122
  %i.axk = and i32 %i.axj, 25165824
  %or.cond434.not = icmp eq i32 %i.axk, 25165824
  br i1 %or.cond434.not, label %bb.hf, label %bb.hg

bb.hf:                                            ; preds = %bb.he
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.26, i32 noundef %indvars1251, i32 noundef %.0682723, i32 noundef %i.awx, i32 noundef %i.axc, i32 noundef %., i32 noundef %i.axd) #27
  br label %bb.hg

bb.hg:                                            ; preds = %bb.he, %bb.hf, %bb.hd
  %i.axl = mul nsw i32 %i.axc, %i.bo
  %i.axm = shl i32 %i.axl, %i.aoa
  %i.axn = sext i32 %i.axm to i64                 ; 4 uses
  %i.axo = getelementptr [4 x i8], ptr %.1, i64 %i.axn ; 68 uses
  br i1 %i.cv, label %bb.hh, label %bb.hv

bb.hh:                                            ; preds = %bb.hg
  tail call void @llvm.experimental.noalias.scope.decl(metadata !470)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !471)
  %i.axp = icmp slt i32 %i.axe, 1
  %brmerge = select i1 %i.axp, i1 true, i1 %i.aob
  br i1 %brmerge, label %demosaic_box3.exit, label %.preheader59.preheader.i

.preheader59.preheader.i:                         ; preds = %bb.hh
  %wide.trip.count76.i = zext nneg i32 %i.axe to i64
  br label %.preheader59.i

.preheader59.i:                                   ; preds = %._crit_edge.i, %.preheader59.preheader.i
  %indvars.iv73.i = phi i64 [ 0, %.preheader59.preheader.i ], [ %indvars.iv.next74.i, %._crit_edge.i ] ; 5 uses
  %i.axq = mul nuw nsw i64 %indvars.iv73.i, %i.aod
  %i.axr = trunc i64 %indvars.iv73.i to i32       ; 16 uses
  %i.axs = add i32 %i.axr, -1                     ; 11 uses
  %i.axt = icmp slt i32 %i.axs, %i.axe
  %i.axu = shl i32 %i.axs, 1
  %i.axv = and i32 %i.axu, 14                     ; 3 uses
  %i.axw = zext nneg i32 %i.axs to i64
  %i.axx = mul nuw nsw i64 %i.axw, %i.aod
  %i.axy = getelementptr inbounds nuw [4 x i8], ptr %i.axo, i64 %i.axx ; 3 uses
  %i.axz = icmp slt i32 %i.axr, 2147483646
  %i.aya = icmp sgt i32 %i.axe, %i.axr
  %i.ayb = shl i32 %i.axr, 1
  %i.ayc = and i32 %i.ayb, 14                     ; 3 uses
  %i.ayd = and i64 %indvars.iv73.i, 4294967295
  %i.aye = mul nuw nsw i64 %i.ayd, %i.aod
  %i.ayf = getelementptr inbounds nuw [4 x i8], ptr %i.axo, i64 %i.aye ; 3 uses
  %i.ayg = add nsw i32 %i.axr, 1                  ; 6 uses
  %i.ayh = icmp slt i32 %i.ayg, %i.axe
  %i.ayi = shl i32 %i.ayg, 1
  %i.ayj = and i32 %i.ayi, 14                     ; 3 uses
  %i.ayk = zext nneg i32 %i.ayg to i64
  %i.ayl = mul nuw nsw i64 %i.ayk, %i.aod
  %i.aym = getelementptr inbounds nuw [4 x i8], ptr %i.axo, i64 %i.ayl ; 3 uses
  %i.ayn = icmp slt i32 %i.axs, %i.axe
  %i.ayo = add i32 %i.axr, 599
  %i.ayp = srem i32 %i.ayo, 6
  %i.ayq = sext i32 %i.ayp to i64
  %i.ayr = getelementptr inbounds [6 x i8], ptr %i.x, i64 %i.ayq ; 3 uses
  %i.ays = zext nneg i32 %i.axs to i64
  %i.ayt = mul nuw nsw i64 %i.ays, %i.aod
  %i.ayu = getelementptr inbounds nuw [4 x i8], ptr %i.axo, i64 %i.ayt ; 3 uses
  %i.ayv = icmp slt i32 %i.axr, 2147483646
  %i.ayw = icmp sgt i32 %i.axe, %i.axr
  %i.ayx = and i64 %indvars.iv73.i, 4294967295
  %i.ayy = mul nuw nsw i64 %i.ayx, %i.aod
  %i.ayz = getelementptr inbounds nuw [4 x i8], ptr %i.axo, i64 %i.ayy ; 3 uses
  %i.aza = add nsw i32 %i.axr, 1                  ; 5 uses
  %i.azb = icmp slt i32 %i.aza, %i.axe
  %i.azc = insertelement <2 x i32> poison, i32 %i.axr, i64 0
  %i.azd = shufflevector <2 x i32> %i.azc, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.aze = add nsw <2 x i32> %i.azd, <i32 600, i32 601>
  %i.azf = srem <2 x i32> %i.aze, splat (i32 6)   ; 2 uses
  %i.azg = extractelement <2 x i32> %i.azf, i64 0
  %i.azh = sext i32 %i.azg to i64
  %i.azi = getelementptr inbounds [6 x i8], ptr %i.x, i64 %i.azh ; 3 uses
  %i.azj = extractelement <2 x i32> %i.azf, i64 1
  %i.azk = sext i32 %i.azj to i64
  %i.azl = getelementptr inbounds [6 x i8], ptr %i.x, i64 %i.azk ; 3 uses
  %i.azm = zext nneg i32 %i.aza to i64
  %i.azn = mul nuw nsw i64 %i.azm, %i.aod
  %i.azo = getelementptr inbounds nuw [4 x i8], ptr %i.axo, i64 %i.azn ; 3 uses
  br label %bb.hi

._crit_edge.i:                                    ; preds = %.preheader.i
  %indvars.iv.next74.i = add nuw nsw i64 %indvars.iv73.i, 1 ; 2 uses
  %exitcond77.not.i = icmp eq i64 %indvars.iv.next74.i, %wide.trip.count76.i
  br i1 %exitcond77.not.i, label %demosaic_box3.exit, label %.preheader59.i

bb.hi:                                            ; preds = %.preheader.i, %.preheader59.i
  %indvars.iv.i = phi i64 [ 0, %.preheader59.i ], [ %i.azu, %.preheader.i ] ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #27, !noalias !472
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.k, i8 0, i64 16, i1 false), !noalias !472
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #27, !noalias !472
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.l, i8 0, i64 16, i1 false), !noalias !472
  %i.azp = add nsw i64 %indvars.iv.i, -1          ; 7 uses
  %i.azq = trunc nsw i64 %i.azp to i32            ; 7 uses
  %i.azr = and i32 %i.azq, 1                      ; 3 uses
  %i.azs = trunc i64 %indvars.iv.i to i32         ; 9 uses
  %i.azt = and i32 %i.azs, 1                      ; 3 uses
  %i.azu = add nuw nsw i64 %indvars.iv.i, 1       ; 10 uses
  %i.azv = trunc nuw nsw i64 %i.azu to i32        ; 7 uses
  %i.azw = icmp samesign ult i64 %i.azu, %i.aod   ; 6 uses
  %i.azx = and i32 %i.azv, 1                      ; 3 uses
  %i.azy = add i32 %i.azs, 599
  %i.azz = srem i32 %i.azy, 6
  %i.baa = sext i32 %i.azz to i64                 ; 3 uses
  %i.bab = insertelement <2 x i32> poison, i32 %i.azs, i64 0
  %i.bac = shufflevector <2 x i32> %i.bab, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.bad = add <2 x i32> %i.bac, <i32 600, i32 601>
  %i.bae = srem <2 x i32> %i.bad, splat (i32 6)   ; 2 uses
  %i.baf = extractelement <2 x i32> %i.bae, i64 0
  %i.bag = sext i32 %i.baf to i64                 ; 3 uses
  %i.bah = extractelement <2 x i32> %i.bae, i64 1
  %i.bai = sext i32 %i.bah to i64                 ; 3 uses
  br i1 %i.bd, label %.split1053.us.preheader, label %.split1053.preheader

.split1053.preheader:                             ; preds = %bb.hi
end_hunk_1
begin_hunk_2_@process:bb.a
.lr.ph1512.i:                                     ; preds = %.loopexit1270.i
  %i.car = getelementptr inbounds nuw i8, ptr %i.bqr, i64 714432 ; 8 uses
  %i.cas = getelementptr inbounds nuw i8, ptr %i.bqr, i64 893040 ; 4 uses
  %i.cat = getelementptr inbounds nuw i8, ptr %i.bqr, i64 773968 ; 15 uses
  %i.cau = getelementptr inbounds nuw i8, ptr %i.bqr, i64 1131184 ; 10 uses
  %i.cav = getelementptr inbounds nuw i8, ptr %i.bqr, i64 1250256 ; 4 uses
  %i.caw = add nuw i32 %i.axe, 13                 ; 4 uses
  %i.cax = shl nuw nsw i32 %i.axe, 1
  %i.cay = add nsw i32 %i.cax, -2                 ; 3 uses
  %i.caz = zext nneg i16 %.31019.4.fr.i to i32
  %i.cba = getelementptr inbounds nuw i8, ptr %i.bqr, i64 833504
  br i1 %i.aqh, label %.lr.ph1508.preheader.i, label %._crit_edge1513.split.i

.lr.ph1508.preheader.i:                           ; preds = %.lr.ph1512.i
  %i.cbb = zext nneg i32 %i.axe to i64
  %i.cbc = zext i16 %.31013.4.fr.i to i64         ; 4 uses
  %i.cbd = zext i16 %.31019.4.fr.i to i64         ; 2 uses
  %i.cbe = sext i32 %i.cap to i64
  %i.cbf = sext i32 %i.caw to i64
  %i.cbg = getelementptr inbounds nuw i8, ptr %i.bqr, i64 178608
  %i.cbh = getelementptr inbounds nuw i8, ptr %i.bqr, i64 357216
  %i.cbi = getelementptr inbounds nuw i8, ptr %i.bqr, i64 535824
  %i.cbj = getelementptr inbounds nuw i8, ptr %i.bqr, i64 1071648 ; 3 uses
  %i.cbk = getelementptr inbounds nuw i8, ptr %i.bqr, i64 952576 ; 3 uses
  %i.cbl = getelementptr inbounds nuw i8, ptr %i.bqr, i64 1012112 ; 3 uses
  %i.cbm = getelementptr inbounds nuw i8, ptr %i.bqr, i64 788852
  %i.cbn = getelementptr inbounds nuw i8, ptr %i.bqr, i64 729316
  %i.cbo = getelementptr inbounds nuw i8, ptr %i.bqr, i64 803736
  %i.cbp = getelementptr inbounds nuw i8, ptr %i.bqr, i64 744200
  %i.cbq = getelementptr inbounds nuw i8, ptr %i.bqr, i64 818620
  %i.cbr = getelementptr inbounds nuw i8, ptr %i.bqr, i64 759084
  %i.cbs = getelementptr inbounds nuw i8, ptr %i.bqr, i64 1309792 ; 3 uses
  %scevgep2036 = getelementptr i8, ptr %i.bqr, i64 1250308
  %scevgep2038 = getelementptr i8, ptr %i.bqr, i64 1309792
  %scevgep2047 = getelementptr i8, ptr %i.bqr, i64 1250304
  %scevgep2049 = getelementptr i8, ptr %i.bqr, i64 1309796
  %scevgep2052 = getelementptr i8, ptr %i.bqr, i64 1250308
  %scevgep2054 = getelementptr i8, ptr %i.bqr, i64 1309792
  %scevgep2057 = getelementptr i8, ptr %i.bqr, i64 19188
  %scevgep2058 = getelementptr i8, ptr %i.bqr, i64 534360
  %scevgep2063 = getelementptr i8, ptr %i.bqr, i64 775567
  %scevgep2064 = getelementptr i8, ptr %i.bqr, i64 818498
  %broadcast.splatinsert2092 = insertelement <8 x float> poison, float %spec.select1142.i, i64 0
  %broadcast.splat2093 = shufflevector <8 x float> %broadcast.splatinsert2092, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert2094 = insertelement <8 x float> poison, float %spec.select.i489, i64 0
  %broadcast.splat2095 = shufflevector <8 x float> %broadcast.splatinsert2094, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %.lr.ph1508.i

._crit_edge1513.split.i:                          ; preds = %._crit_edge1509.i, %.lr.ph1512.i, %.loopexit1270.i
  tail call void @free(ptr noundef %i.bqr) #27
  br label %xtrans_fdc_interpolate.exit

.lr.ph1508.i:                                     ; preds = %._crit_edge1509.i, %.lr.ph1508.preheader.i
  %indvar = phi i32 [ %indvar.next, %._crit_edge1509.i ], [ 0, %.lr.ph1508.preheader.i ] ; 3 uses
  %indvars.iv1209 = phi i32 [ %indvars.iv.next1210, %._crit_edge1509.i ], [ 5, %.lr.ph1508.preheader.i ] ; 2 uses
  %indvars.iv1727.i = phi i32 [ %indvars.iv.next1728.i, %._crit_edge1509.i ], [ 109, %.lr.ph1508.preheader.i ] ; 3 uses
  %indvars.iv1660.i = phi i64 [ %indvars.iv.next1661.i, %._crit_edge1509.i ], [ -5, %.lr.ph1508.preheader.i ] ; 2 uses
  %indvars.iv1636.i = phi i64 [ %indvars.iv.next1637.i, %._crit_edge1509.i ], [ -7, %.lr.ph1508.preheader.i ] ; 2 uses
  %indvars.iv1608.i = phi i64 [ %indvars.iv.next1609.i, %._crit_edge1509.i ], [ -10, %.lr.ph1508.preheader.i ] ; 2 uses
  %indvars.iv1583.i = phi i64 [ %indvars.iv.next1584.i, %._crit_edge1509.i ], [ -13, %.lr.ph1508.preheader.i ] ; 15 uses
  %i.cbt = phi <4 x i32> [ %i.cel, %._crit_edge1509.i ], [ <i32 7, i32 3, i32 4, i32 0>, %.lr.ph1508.preheader.i ] ; 3 uses
  %i.cbu = extractelement <4 x i32> %i.cbt, i64 3 ; 2 uses
  %i.cbv = mul i32 %i.aud, %indvar
  %smin2059 = call i32 @llvm.smin.i32(i32 %indvars.iv1727.i, i32 %i.caw)
  %i.cbw = add i32 %smin2059, %i.cbu
  %smax2060 = call i32 @llvm.smax.i32(i32 %i.cbw, i32 14)
  %i.cbx = zext nneg i32 %smax2060 to i64         ; 2 uses
  %i.cby = mul nuw nsw i64 %i.cbx, 1464
  %i.cbz = mul nuw nsw i64 %i.cbx, 122
  %i.cca = mul i32 %i.aub, %indvar
  %smin1246 = call i32 @llvm.smin.i32(i32 %indvars.iv1727.i, i32 %i.caw) ; 6 uses
  %i.ccb = insertelement <4 x i32> poison, i32 %smin1246, i64 0
  %i.ccc = shufflevector <4 x i32> %i.ccb, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.ccd = add <4 x i32> %i.ccc, %i.cbt
  %i.cce = add i32 %smin1246, %i.cbu              ; 5 uses
  %i.ccf = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.ccd, <4 x i32> <i32 7, i32 11, i32 10, i32 14>) ; 4 uses
  %i.ccg = add i32 %smin1246, %indvars.iv1209
  %i.cch = call i32 @llvm.smax.i32(i32 %i.ccg, i32 9)
  %smax1211 = zext nneg i32 %i.cch to i64
  %i.cci = add i32 %smin1246, -8
  %i.ccj = sext i32 %i.cci to i64
  %i.cck = add i32 %smin1246, -6
  %i.ccl = sext i32 %i.cck to i64
  %i.ccm = add i32 %smin1246, -3
  %i.ccn = sext i32 %i.ccm to i64
  %i.cco = tail call i32 @llvm.smax.i32(i32 %i.cce, i32 14)
  %smax1762.i = zext nneg i32 %i.cco to i64       ; 5 uses
  %i.ccp = trunc i64 %indvars.iv1583.i to i32     ; 2 uses
  %i.ccq = add i32 %i.ccp, 122
  %i.ccr = tail call i32 @llvm.smin.i32(i32 %i.ccq, i32 %i.caw) ; 6 uses
  %i.ccs = icmp slt i64 %indvars.iv1583.i, %i.cbf
  %i.cct = add nuw nsw i64 %indvars.iv1583.i, 3   ; 3 uses
  %i.ccu = add nsw i32 %i.ccr, -3                 ; 2 uses
  %i.ccv = sext i32 %i.ccu to i64
  %i.ccw = icmp slt i64 %i.cct, %i.ccv
  %i.ccx = add nsw i32 %i.ccr, -4
  %i.ccy = sub i64 %indvars.iv1583.i, %i.cbc
  %i.ccz = trunc i64 %i.ccy to i32
  %i.cda = add i32 %i.ccz, 8                      ; 2 uses
  %i.cdb = srem i32 %i.cda, 3
  %i.cdc = add i32 %i.cda, %i.brn
  %i.cdd = sub i32 %i.cdc, %i.cdb                 ; 2 uses
  %i.cde = add nsw i32 %i.ccr, -6                 ; 2 uses
  %i.cdf = icmp slt i32 %i.cdd, %i.cde
  %i.cdg = add nuw nsw i64 %indvars.iv1583.i, 6
  %i.cdh = sext i32 %i.cde to i64                 ; 2 uses
  %i.cdi = icmp slt i64 %i.cdg, %i.cdh
  %i.cdj = add nuw nsw i64 %indvars.iv1583.i, 8
  %i.cdk = add nsw i32 %i.ccr, -8
  %i.cdl = sext i32 %i.cdk to i64
  %i.cdm = icmp slt i64 %i.cdj, %i.cdl
  %i.cdn = sub nsw i32 %i.ccr, %i.ccp             ; 5 uses
  %i.cdo = icmp sgt i32 %i.cdn, 16
  %i.cdp = icmp sgt i32 %i.cdn, 18
  %i.cdq = icmp sgt i32 %i.cdn, 20
  %i.cdr = icmp sgt i32 %i.cdn, 26                ; 2 uses
  %i.cds = icmp sgt i32 %i.cdn, 12
  %i.cdt = sext i32 %i.ccr to i64
  %i.cdu = sext i32 %i.cdd to i64
  %i.cdv = trunc nsw i64 %i.cct to i32
  %i.cdw = extractelement <4 x i32> %i.ccf, i64 0
  %i.cdx = zext nneg i32 %i.cdw to i64
  %i.cdy = add nsw i64 %i.cdx, -7
  %scevgep2061 = getelementptr i8, ptr %scevgep2058, i64 %i.cby
  %scevgep2065 = getelementptr i8, ptr %scevgep2064, i64 %i.cbz
  %i.cdz = add nsw i64 %smax1762.i, -13           ; 8 uses
  %i.cea = extractelement <4 x i32> %i.ccf, i64 2
  %i.ceb = zext nneg i32 %i.cea to i64
  %i.cec = extractelement <4 x i32> %i.ccf, i64 1
  %i.ced = zext nneg i32 %i.cec to i64
  %xtraiter4752 = and i64 %i.cdz, 7               ; 3 uses
  %i.cee = icmp slt i32 %i.cce, 21
  %unroll_iter4756 = and i64 %i.cdz, -8
  %lcmp.mod4754.not = icmp eq i64 %xtraiter4752, 0
  %lcmp.mod4755 = icmp ne i64 %xtraiter4752, 0
  %xtraiter4758 = and i64 %i.cdz, 7               ; 3 uses
  %i.cef = icmp slt i32 %i.cce, 21
  %unroll_iter4762 = and i64 %i.cdz, -8
  %lcmp.mod4760.not = icmp eq i64 %xtraiter4758, 0
  %lcmp.mod4761 = icmp ne i64 %xtraiter4758, 0
  %xtraiter4764 = and i64 %i.cdz, 7               ; 3 uses
  %i.ceg = icmp slt i32 %i.cce, 21
  %unroll_iter4768 = and i64 %i.cdz, -8
  %lcmp.mod4766.not = icmp eq i64 %xtraiter4764, 0
  %lcmp.mod4767 = icmp ne i64 %xtraiter4764, 0
  %xtraiter4770.a = and i64 %i.cdz, 7             ; 3 uses
  %i.ceh = icmp slt i32 %i.cce, 21
  %unroll_iter4774 = and i64 %i.cdz, -8
  %lcmp.mod4772.not = icmp eq i64 %xtraiter4770.a, 0
  %lcmp.mod4773 = icmp ne i64 %xtraiter4770.a, 0
  %i.cei = extractelement <4 x i32> %i.ccf, i64 3
  %i.cej = zext nneg i32 %i.cei to i64
  br label %bb.iu

._crit_edge1509.i:                                ; preds = %._crit_edge1503.split.i
  %indvars.iv.next1584.i = add nsw i64 %indvars.iv1583.i, 96 ; 2 uses
  %i.cek = icmp slt i64 %indvars.iv.next1584.i, %i.cbe
  %indvars.iv.next1609.i = add nsw i64 %indvars.iv1608.i, 96
  %indvars.iv.next1637.i = add nsw i64 %indvars.iv1636.i, 96
  %indvars.iv.next1661.i = add nsw i64 %indvars.iv1660.i, 96
  %indvars.iv.next1728.i = add nuw i32 %indvars.iv1727.i, 96
  %indvars.iv.next1210 = add i32 %indvars.iv1209, -96
  %i.cel = add <4 x i32> %i.cbt, splat (i32 -96)
  %indvar.next = add i32 %indvar, 1
  br i1 %i.cek, label %.lr.ph1508.i, label %._crit_edge1513.split.i

bb.iu:                                            ; preds = %._crit_edge1503.split.i, %.lr.ph1508.i
  %indvar2028 = phi i32 [ %indvar.next2029, %._crit_edge1503.split.i ], [ 0, %.lr.ph1508.i ] ; 3 uses
  %indvars.iv1234 = phi i32 [ %indvars.iv.next1235, %._crit_edge1503.split.i ], [ 7, %.lr.ph1508.i ] ; 2 uses
  %indvars.iv1224 = phi i32 [ %indvars.iv.next1225, %._crit_edge1503.split.i ], [ 3, %.lr.ph1508.i ] ; 2 uses
  %indvars.iv1214 = phi i32 [ %indvars.iv.next1215, %._crit_edge1503.split.i ], [ 4, %.lr.ph1508.i ] ; 2 uses
  %indvars.iv1204 = phi i32 [ %indvars.iv.next1205, %._crit_edge1503.split.i ], [ 5, %.lr.ph1508.i ] ; 2 uses
  %indvars.iv1724.i = phi i32 [ %indvars.iv.next1725.i, %._crit_edge1503.split.i ], [ 0, %.lr.ph1508.i ] ; 4 uses
  %indvars.iv1722.i = phi i32 [ %indvars.iv.next1723.i, %._crit_edge1503.split.i ], [ 109, %.lr.ph1508.i ] ; 5 uses
  %indvars.iv1655.i = phi i64 [ %indvars.iv.next1656.i, %._crit_edge1503.split.i ], [ -5, %.lr.ph1508.i ] ; 2 uses
  %indvars.iv1631.i = phi i64 [ %indvars.iv.next1632.i, %._crit_edge1503.split.i ], [ -7, %.lr.ph1508.i ] ; 2 uses
  %indvars.iv1603.i = phi i64 [ %indvars.iv.next1604.i, %._crit_edge1503.split.i ], [ -10, %.lr.ph1508.i ] ; 2 uses
  %indvars.iv1578.i = phi i64 [ %indvars.iv.next1579.i, %._crit_edge1503.split.i ], [ -13, %.lr.ph1508.i ] ; 15 uses
  %smin4744 = call i32 @llvm.smin.i32(i32 %indvars.iv1722.i, i32 %i.aqi)
  %i.cem = add i32 %smin4744, %indvars.iv1204     ; 2 uses
  %smax4745 = call i32 @llvm.smax.i32(i32 %i.cem, i32 9) ; 2 uses
  %i.cen = zext nneg i32 %smax4745 to i64         ; 2 uses
  %smin2039 = call i32 @llvm.smin.i32(i32 %indvars.iv1722.i, i32 %i.aqi)
  %i.ceo = add i32 %smin2039, %indvars.iv1724.i
  %i.cep = call i32 @llvm.umax.i32(i32 %i.ceo, i32 14)
  %umax2040 = zext i32 %i.cep to i64              ; 4 uses
  %i.ceq = shl nuw nsw i64 %umax2040, 2           ; 3 uses
  %i.cer = mul i32 %indvar2028, 384
  %i.ces = add i32 %i.cbv, %i.cer
  %i.cet = shl nuw nsw i64 %umax2040, 4
  %i.ceu = mul nuw nsw i64 %umax2040, 12
  %scevgep2062 = getelementptr i8, ptr %scevgep2061, i64 %i.ceu
  %scevgep2066 = getelementptr i8, ptr %scevgep2065, i64 %umax2040
  %smin = call i32 @llvm.smin.i32(i32 %indvars.iv1722.i, i32 %i.aqi)
  %i.cev = add i32 %smin, %indvars.iv1724.i
  %i.cew = zext i32 %i.cev to i64
  %i.cex = call i64 @llvm.usub.sat.i64(i64 %i.cew, i64 14) ; 2 uses
  %i.cey = mul i32 %indvar2028, 384
  %i.cez = add i32 %i.cca, %i.cey
  %smin1243 = call i32 @llvm.smin.i32(i32 %indvars.iv1722.i, i32 %i.aqi) ; 7 uses
  %i.cfa = add i32 %smin1243, %indvars.iv1724.i   ; 3 uses
  %i.cfb = call i32 @llvm.umax.i32(i32 %i.cfa, i32 14)
  %umax1244 = zext i32 %i.cfb to i64              ; 2 uses
  %i.cfc = add i32 %smin1243, %indvars.iv1234
  %i.cfd = call i32 @llvm.umax.i32(i32 %i.cfc, i32 7)
  %umax1236 = zext i32 %i.cfd to i64
  %i.cfe = add i32 %smin1243, %indvars.iv1224
  %i.cff = call i32 @llvm.umax.i32(i32 %i.cfe, i32 11)
  %umax1226 = zext i32 %i.cff to i64
  %i.cfg = add i32 %smin1243, %indvars.iv1214     ; 2 uses
  %i.cfh = call i32 @llvm.smax.i32(i32 %i.cfg, i32 10)
  %smax1216 = zext nneg i32 %i.cfh to i64         ; 2 uses
  %i.cfi = add i32 %smin1243, -8
  %i.cfj = sext i32 %i.cfi to i64
  %i.cfk = add i32 %smin1243, -6
  %i.cfl = sext i32 %i.cfk to i64
  %i.cfm = add i32 %smin1243, -3
  %i.cfn = sext i32 %i.cfm to i64
  %i.cfo = tail call i32 @llvm.smax.i32(i32 %i.cfa, i32 10)
  %smax1756.i = zext nneg i32 %i.cfo to i64       ; 4 uses
  %i.cfp = trunc i64 %indvars.iv1578.i to i32     ; 3 uses
  %i.cfq = add i32 %i.cfp, 122
  %i.cfr = tail call i32 @llvm.smin.i32(i32 %i.cfq, i32 %i.aqi) ; 7 uses
  %i.cfs = icmp slt i64 %indvars.iv1578.i, %i.aql
  %or.cond1515.i = and i1 %i.ccs, %i.cfs
  br i1 %or.cond1515.i, label %.preheader1263.preheader.i, label %.preheader1268.i

.preheader1263.preheader.i:                       ; preds = %bb.iu
  %i.cft = sext i32 %i.cfr to i64
  br label %.preheader1263.i

.preheader1268.i:                                 ; preds = %._crit_edge.i495, %bb.iu
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(178608) %i.cbg, ptr noundef nonnull align 64 dereferenceable(178608) %i.bqr, i64 178608, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(178608) %i.cbh, ptr noundef nonnull align 64 dereferenceable(178608) %i.bqr, i64 178608, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(178608) %i.cbi, ptr noundef nonnull align 64 dereferenceable(178608) %i.bqr, i64 178608, i1 false)
  br i1 %i.ccw, label %.lr.ph1325.i, label %._crit_edge1343.split.i

.preheader1263.i:                                 ; preds = %._crit_edge.i495, %.preheader1263.preheader.i
  %indvars.iv1585.i = phi i64 [ %indvars.iv1583.i, %.preheader1263.preheader.i ], [ %indvars.iv.next1586.i, %._crit_edge.i495 ] ; 5 uses
  %i.cfu = sub nsw i64 %indvars.iv1585.i, %indvars.iv1583.i ; 2 uses
  %i.cfv = getelementptr inbounds [1464 x i8], ptr %i.bqr, i64 %i.cfu
  %i.cfw = icmp slt i64 %indvars.iv1585.i, %i.cbb ; 2 uses
  %i.cfx = trunc i64 %indvars.iv1585.i to i32     ; 7 uses
  %i.cfy = sub i32 %i.cay, %i.cfx                 ; 3 uses
  %i.cfz = tail call i32 @llvm.abs.i32(i32 %i.cfx, i1 true) ; 3 uses
  %invariant.gep1310.idx.i = mul nuw nsw i64 %i.cfu, 488
  %invariant.gep1310.i = getelementptr i8, ptr %i.cau, i64 %invariant.gep1310.idx.i ; 2 uses
  %i.cga = mul nuw nsw i64 %indvars.iv1585.i, %i.aod
  %i.cgb = add i32 %i.cfx, -1                     ; 3 uses
  %.1514.i = select i1 %i.cfw, i32 %i.cfz, i32 %i.cfy ; 2 uses
  %i.cgc = mul nsw i32 %.1514.i, %i.bo
  %invariant.gep.i493 = getelementptr [4 x i8], ptr %i.axo, i64 %i.cga
  %.not1140.i = icmp slt i32 %i.cgb, %i.axe
  %i.cgd = sub nsw i32 %i.cay, %i.cgb             ; 2 uses
  %i.cge = mul nsw i32 %i.cgd, %i.bo              ; 3 uses
  %i.cgf = tail call i32 @llvm.abs.i32(i32 %i.cgb, i1 true) ; 2 uses
  %i.cgg = add nuw nsw i32 %i.cgf, 600
  %i.cgh = urem i32 %i.cgg, 6
  %i.cgi = zext nneg i32 %i.cgh to i64
  %i.cgj = getelementptr inbounds nuw [6 x i8], ptr %i.x, i64 %i.cgi ; 3 uses
  %i.cgk = mul nuw nsw i32 %i.cgf, %i.bo          ; 3 uses
  %.not1140.i.1 = icmp sgt i32 %i.axe, %i.cfx
  %i.cgl = insertelement <4 x i32> poison, i32 %i.cfx, i64 0
  %i.cgm = insertelement <4 x i32> %i.cgl, i32 %.1514.i, i64 1
  %i.cgn = insertelement <4 x i32> %i.cgm, i32 %i.cgd, i64 2
  %i.cgo = insertelement <4 x i32> %i.cgn, i32 %i.cfy, i64 3
  %i.cgp = add <4 x i32> %i.cgo, splat (i32 600)
  %i.cgq = srem <4 x i32> %i.cgp, splat (i32 6)   ; 4 uses
  %i.cgr = extractelement <4 x i32> %i.cgq, i64 0
  %i.cgs = sext i32 %i.cgr to i64
  %i.cgt = getelementptr inbounds [6 x i8], ptr %i.x, i64 %i.cgs
  %i.cgu = extractelement <4 x i32> %i.cgq, i64 1
  %i.cgv = sext i32 %i.cgu to i64
  %i.cgw = getelementptr inbounds [6 x i8], ptr %i.x, i64 %i.cgv
  %i.cgx = extractelement <4 x i32> %i.cgq, i64 2
  %i.cgy = sext i32 %i.cgx to i64
  %i.cgz = getelementptr inbounds [6 x i8], ptr %i.x, i64 %i.cgy ; 3 uses
  %i.cha = extractelement <4 x i32> %i.cgq, i64 3
  %i.chb = sext i32 %i.cha to i64
  %i.chc = getelementptr inbounds [6 x i8], ptr %i.x, i64 %i.chb ; 3 uses
  %i.chd = mul nsw i32 %i.cfy, %i.bo              ; 3 uses
  %i.che = add nuw nsw i32 %i.cfz, 600
  %i.chf = urem i32 %i.che, 6
  %i.chg = zext nneg i32 %i.chf to i64
  %i.chh = getelementptr inbounds nuw [6 x i8], ptr %i.x, i64 %i.chg ; 3 uses
  %i.chi = mul nuw nsw i32 %i.cfz, %i.bo          ; 3 uses
  %i.chj = add i32 %i.cfx, 1                      ; 3 uses
  %.not1140.i.2 = icmp slt i32 %i.chj, %i.axe
  %i.chk = sub nsw i32 %i.cay, %i.chj             ; 2 uses
  %i.chl = add nsw i32 %i.chk, 600
  %i.chm = srem i32 %i.chl, 6
  %i.chn = sext i32 %i.chm to i64
  %i.cho = getelementptr inbounds [6 x i8], ptr %i.x, i64 %i.chn ; 3 uses
  %i.chp = mul nsw i32 %i.chk, %i.bo              ; 3 uses
  %i.chq = tail call i32 @llvm.abs.i32(i32 %i.chj, i1 true) ; 2 uses
  %i.chr = add nuw nsw i32 %i.chq, 600
  %i.chs = urem i32 %i.chr, 6
  %i.cht = zext nneg i32 %i.chs to i64
  %i.chu = getelementptr inbounds nuw [6 x i8], ptr %i.x, i64 %i.cht ; 3 uses
  %i.chv = mul nuw nsw i32 %i.chq, %i.bo          ; 3 uses
  br label %bb.iv

._crit_edge.i495:                                 ; preds = %.loopexit1256.i
  %indvars.iv.next1586.i = add nsw i64 %indvars.iv1585.i, 1 ; 2 uses
  %i.chw = icmp slt i64 %indvars.iv.next1586.i, %i.cdt
  br i1 %i.chw, label %.preheader1263.i, label %.preheader1268.i

bb.iv:                                            ; preds = %.loopexit1256.i, %.preheader1263.i
  %indvars.iv1580.i = phi i64 [ %indvars.iv1578.i, %.preheader1263.i ], [ %indvars.iv.next1581.i.pre-phi, %.loopexit1256.i ] ; 7 uses
  %i.chx = sub nsw i64 %indvars.iv1580.i, %indvars.iv1578.i ; 3 uses
  %i.chy = getelementptr inbounds [12 x i8], ptr %i.cfv, i64 %i.chx ; 7 uses
  %i.chz = trunc i64 %indvars.iv1580.i to i32     ; 5 uses
  %i.cia = or i32 %i.chz, %i.cfx
  %or.cond.i494 = icmp sgt i32 %i.cia, -1
  %i.cib = icmp slt i64 %indvars.iv1580.i, %i.aod ; 2 uses
  %or.cond1143.i = and i1 %i.cib, %or.cond.i494
  %or.cond1144.i = and i1 %i.cfw, %or.cond1143.i
  %i.cic = add i32 %i.chz, 600
  %i.cid = srem i32 %i.cic, 6
  %i.cie = sext i32 %i.cid to i64
  %i.cif = getelementptr inbounds i8, ptr %i.cgt, i64 %i.cie
  %i.cig = load i8, ptr %i.cif, align 1, !tbaa !133 ; 23 uses
  br i1 %or.cond1144.i, label %bb.iw, label %bb.jc

bb.iw:                                            ; preds = %bb.iv
  %gep.i497 = getelementptr [4 x i8], ptr %invariant.gep.i493, i64 %indvars.iv1580.i ; 4 uses
  %i.cih = icmp eq i8 %i.cig, 0
  br i1 %i.cih, label %.thread.i, label %bb.ix

.thread.i:                                        ; preds = %bb.iw
  %i.cii = load float, ptr %gep.i497, align 4, !tbaa !12
  store float %i.cii, ptr %i.chy, align 4, !tbaa !12
  br label %.thread2090.i

bb.ix:                                            ; preds = %bb.iw
  store float 0.000000e+00, ptr %i.chy, align 4, !tbaa !12
  %i.cij = icmp eq i8 %i.cig, 1
  br i1 %i.cij, label %bb.iy, label %bb.iz

bb.iy:                                            ; preds = %bb.ix
  %i.cik = load float, ptr %gep.i497, align 4, !tbaa !12
  br label %.thread2090.i

.thread2090.i:                                    ; preds = %bb.iy, %.thread.i
  %.ph.i = phi float [ 0.000000e+00, %.thread.i ], [ %i.cik, %bb.iy ]
  %i.cil = getelementptr inbounds nuw i8, ptr %i.chy, i64 4
  store float %.ph.i, ptr %i.cil, align 4, !tbaa !12
  br label %bb.jb

bb.iz:                                            ; preds = %bb.ix
  %i.cim = getelementptr inbounds nuw i8, ptr %i.chy, i64 4
  store float 0.000000e+00, ptr %i.cim, align 4, !tbaa !12
  %i.cin = icmp eq i8 %i.cig, 2
  br i1 %i.cin, label %bb.ja, label %bb.jb

bb.ja:                                            ; preds = %bb.iz
  %i.cio = load float, ptr %gep.i497, align 4, !tbaa !12
  br label %bb.jb

bb.jb:                                            ; preds = %bb.ja, %bb.iz, %.thread2090.i
  %i.cip = phi reassoc nsz arcp contract afn float [ %i.cio, %bb.ja ], [ 0.000000e+00, %bb.iz ], [ 0.000000e+00, %.thread2090.i ]
  %i.ciq = getelementptr inbounds nuw i8, ptr %i.chy, i64 8
  store float %i.cip, ptr %i.ciq, align 4, !tbaa !12
  %i.cir = load float, ptr %gep.i497, align 4, !tbaa !12
  %i.cis = getelementptr inbounds [4 x i8], ptr %invariant.gep1310.i, i64 %i.chx
  store float %i.cir, ptr %i.cis, align 4, !tbaa !12
  %.pre1267 = add nsw i64 %indvars.iv1580.i, 1
  br label %.loopexit1256.i

bb.jc:                                            ; preds = %bb.iv
  %i.cit = sub i32 %i.apo, %i.chz
  %i.ciu = tail call i32 @llvm.abs.i32(i32 %i.chz, i1 true)
  %i.civ = zext i8 %i.cig to i64                  ; 2 uses
  %i.ciw = getelementptr inbounds nuw [4 x i8], ptr %i.chy, i64 %i.civ ; 2 uses
  %gep1311.i = getelementptr [4 x i8], ptr %invariant.gep1310.i, i64 %i.chx ; 2 uses
  %i.cix = select i1 %i.cib, i32 %i.ciu, i32 %i.cit ; 8 uses
  %i.ciy = add nsw i32 %i.cix, 600
  %i.ciz = srem i32 %i.ciy, 6
  %i.cja = sext i32 %i.ciz to i64                 ; 7 uses
  %i.cjb = getelementptr inbounds i8, ptr %i.cgw, i64 %i.cja
  %i.cjc = add i32 %i.chz, -1                     ; 2 uses
  %i.cjd = tail call i32 @llvm.abs.i32(i32 %i.cjc, i1 true)
  %i.cje = sub i32 %i.apo, %i.cjc
  %i.cjf = add nsw i64 %indvars.iv1580.i, 1       ; 3 uses
  %i.cjg = trunc nsw i64 %i.cjf to i32            ; 2 uses
  %i.cjh = sub i32 %i.apo, %i.cjg
  %i.cji = tail call i32 @llvm.abs.i32(i32 %i.cjg, i1 true)
  %i.cjj = add nsw i32 %i.cix, %i.cgc
  %i.cjk = sext i32 %i.cjj to i64
  %i.cjl = getelementptr inbounds [4 x i8], ptr %i.axo, i64 %i.cjk
  %.not1141.not.i = icmp sgt i64 %indvars.iv1580.i, %i.aod
  %.not1141.2.i = icmp slt i64 %i.cjf, %i.aod
  %.2127.i = select i1 %.not1141.not.i, i32 %i.cje, i32 %i.cjd ; 7 uses
  %.2131.i = select i1 %.not1141.2.i, i32 %i.cji, i32 %i.cjh ; 4 uses
  %i.cjm = insertelement <2 x i32> poison, i32 %.2127.i, i64 0
  %i.cjn = insertelement <2 x i32> %i.cjm, i32 %.2131.i, i64 1
  %i.cjo = add nsw <2 x i32> %i.cjn, splat (i32 600)
  %i.cjp = srem <2 x i32> %i.cjo, splat (i32 6)   ; 2 uses
  %i.cjq = extractelement <2 x i32> %i.cjp, i64 0
  %i.cjr = sext i32 %i.cjq to i64                 ; 6 uses
  %i.cjs = extractelement <2 x i32> %i.cjp, i64 1
  %i.cjt = sext i32 %i.cjs to i64                 ; 6 uses
  %i.cju = getelementptr inbounds i8, ptr %i.cgz, i64 %i.cjr
  %i.cjv = add nsw i32 %i.cge, %.2127.i
  %i.cjw = sext i32 %i.cjv to i64
  %i.cjx = getelementptr inbounds [4 x i8], ptr %i.axo, i64 %i.cjw
  %i.cjy = getelementptr inbounds i8, ptr %i.cgz, i64 %i.cja
  %i.cjz = add nsw i32 %i.cge, %i.cix
  %i.cka = sext i32 %i.cjz to i64
  %i.ckb = getelementptr inbounds [4 x i8], ptr %i.axo, i64 %i.cka
  %i.ckc = getelementptr inbounds i8, ptr %i.cgz, i64 %i.cjt
  %i.ckd = getelementptr inbounds i8, ptr %i.cgj, i64 %i.cjr
end_hunk_2
begin_hunk_3_@process:bb.a
  %i.dle = sext i32 %i.dld to i64                 ; 2 uses
  %.not1130.i = icmp eq i32 %.masked.i, 0         ; 2 uses
  br label %bb.kv

._crit_edge1369.i:                                ; preds = %.loopexit1252.i
  %indvars.iv.next1639.i = add nsw i64 %indvars.iv1638.i, 1 ; 2 uses
  %exitcond1198.not = icmp eq i64 %indvars.iv.next1639.i, %i.ccl
  br i1 %exitcond1198.not, label %._crit_edge1373.split.i, label %.lr.ph1368.i

bb.kv:                                            ; preds = %.loopexit1252.i, %.lr.ph1368.i
  %indvars.iv1633.i = phi i64 [ %indvars.iv1631.i, %.lr.ph1368.i ], [ %indvars.iv.next1634.i, %.loopexit1252.i ] ; 3 uses
  %i.dlf = trunc i64 %indvars.iv1633.i to i32
  %i.dlg = add i32 %i.dlf, 600
  %i.dlh = srem i32 %i.dlg, 6
  %i.dli = sext i32 %i.dlh to i64
  %i.dlj = getelementptr inbounds i8, ptr %i.dks, i64 %i.dli
  %i.dlk = load i8, ptr %i.dlj, align 1, !tbaa !133 ; 2 uses
  %i.dll = zext i8 %i.dlk to i64
  %i.dlm = sub nsw i64 2, %i.dll                  ; 12 uses
  %i.dln = icmp eq i8 %i.dlk, 1
  br i1 %i.dln, label %.loopexit1252.i, label %bb.kw

bb.kw:                                            ; preds = %bb.kv
  %i.dlo = sub nsw i64 %indvars.iv1633.i, %indvars.iv1578.i
  %i.dlp = getelementptr inbounds [12 x i8], ptr %i.dku, i64 %i.dlo ; 14 uses
  %i.dlq = getelementptr inbounds nuw i8, ptr %i.dlp, i64 4
  %i.dlr = load float, ptr %i.dlq, align 4, !tbaa !12 ; 5 uses
  %i.dls = getelementptr inbounds nuw [12 x i8], ptr %i.dlp, i64 %i.dlb
  %i.dlt = getelementptr inbounds nuw i8, ptr %i.dls, i64 4
  %i.dlu = load float, ptr %i.dlt, align 4, !tbaa !12 ; 3 uses
  br i1 %.not1130.i, label %bb.kx, label %._crit_edge2012.i

bb.kx:                                            ; preds = %bb.kw
  %i.dlv = fsub reassoc nsz arcp contract afn float %i.dlr, %i.dlu
  %i.dlw = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.dlv)
  %i.dlx = getelementptr inbounds [12 x i8], ptr %i.dlp, i64 %.neg.i491
  %i.dly = getelementptr inbounds nuw i8, ptr %i.dlx, i64 4
  %i.dlz = load float, ptr %i.dly, align 4, !tbaa !12
  %i.dma = fsub reassoc nsz arcp contract afn float %i.dlr, %i.dlz
  %i.dmb = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.dma)
  %i.dmc = fadd reassoc nsz arcp contract afn float %i.dmb, %i.dlw
  %i.dmd = getelementptr inbounds nuw [12 x i8], ptr %i.dlp, i64 %i.dlc
  %i.dme = getelementptr inbounds nuw i8, ptr %i.dmd, i64 4
  %i.dmf = load float, ptr %i.dme, align 4, !tbaa !12 ; 2 uses
  %i.dmg = fsub reassoc nsz arcp contract afn float %i.dlr, %i.dmf
  %i.dmh = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.dmg)
  %i.dmi = getelementptr inbounds [12 x i8], ptr %i.dlp, i64 %i.dle
  %i.dmj = getelementptr inbounds nuw i8, ptr %i.dmi, i64 4
  %i.dmk = load float, ptr %i.dmj, align 4, !tbaa !12
  %i.dml = fsub reassoc nsz arcp contract afn float %i.dlr, %i.dmk
  %i.dmm = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.dml)
  %i.dmn = fadd reassoc nsz arcp contract afn float %i.dmm, %i.dmh
  %i.dmo = fmul reassoc nsz arcp contract afn float %i.dmn, 2.000000e+00
  %i.dmp = fcmp reassoc nsz arcp contract afn olt float %i.dmc, %i.dmo ; 2 uses
  %spec.select1155.i = select i1 %i.dmp, i32 %i.dky, i32 %i.dla ; 2 uses
  %i.dmq = select i1 %i.dmp, float %i.dlu, float %i.dmf
  %.pre2035.i = zext nneg i32 %spec.select1155.i to i64
  br label %._crit_edge2012.i

._crit_edge2012.i:                                ; preds = %bb.kx, %bb.kw
  %.pre-phi.i = phi i64 [ %.pre2035.i, %bb.kx ], [ %i.dlb, %bb.kw ]
  %i.dmr = phi float [ %i.dmq, %bb.kx ], [ %i.dlu, %bb.kw ]
  %i.dms = phi i32 [ %spec.select1155.i, %bb.kx ], [ %i.dky, %bb.kw ]
  %i.dmt = getelementptr inbounds nuw [12 x i8], ptr %i.dlp, i64 %.pre-phi.i
  %i.dmu = getelementptr inbounds [4 x i8], ptr %i.dmt, i64 %i.dlm
  %i.dmv = load float, ptr %i.dmu, align 4, !tbaa !12
  %i.dmw = sub nsw i32 0, %i.dms
  %i.dmx = sext i32 %i.dmw to i64
  %i.dmy = getelementptr inbounds [12 x i8], ptr %i.dlp, i64 %i.dmx ; 2 uses
  %i.dmz = getelementptr inbounds [4 x i8], ptr %i.dmy, i64 %i.dlm
  %i.dna = load float, ptr %i.dmz, align 4, !tbaa !12
  %i.dnb = fmul reassoc nsz arcp contract afn float %i.dlr, 2.000000e+00
  %i.dnc = getelementptr inbounds nuw i8, ptr %i.dmy, i64 4
  %i.dnd = load float, ptr %i.dnc, align 4, !tbaa !12
  %.neg926 = fsub reassoc nsz arcp contract afn float %i.dnb, %i.dmr
  %.neg1224.i = fadd reassoc nsz arcp contract afn float %i.dmv, %.neg926
  %i.dne = fadd reassoc nsz arcp contract afn float %.neg1224.i, %i.dna
  %i.dnf = fsub reassoc nsz arcp contract afn float %i.dne, %i.dnd
  %i.dng = fmul reassoc nsz arcp contract afn float %i.dnf, 5.000000e-01
  %i.dnh = getelementptr inbounds [4 x i8], ptr %i.dlp, i64 %i.dlm
  store float %i.dng, ptr %i.dnh, align 4, !tbaa !12
  %i.dni = getelementptr inbounds nuw i8, ptr %i.dlp, i64 178608 ; 7 uses
  %.phi.trans.insert2017.i = getelementptr inbounds nuw i8, ptr %i.dlp, i64 178612
  %.pre2018.i = load float, ptr %.phi.trans.insert2017.i, align 4, !tbaa !12 ; 5 uses
  %.phi.trans.insert2019.i = getelementptr inbounds nuw [12 x i8], ptr %i.dni, i64 %i.dlb
  %.phi.trans.insert2020.i = getelementptr inbounds nuw i8, ptr %.phi.trans.insert2019.i, i64 4
  %.pre2021.i = load float, ptr %.phi.trans.insert2020.i, align 4, !tbaa !12 ; 3 uses
  br i1 %.not1130.i, label %.loopexit1252.loopexit.i, label %bb.ky

bb.ky:                                            ; preds = %._crit_edge2012.i
  %i.dnj = fsub reassoc nsz arcp contract afn float %.pre2018.i, %.pre2021.i
  %i.dnk = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.dnj)
  %i.dnl = getelementptr inbounds [12 x i8], ptr %i.dni, i64 %.neg.i491
  %i.dnm = getelementptr inbounds nuw i8, ptr %i.dnl, i64 4
  %i.dnn = load float, ptr %i.dnm, align 4, !tbaa !12
  %i.dno = fsub reassoc nsz arcp contract afn float %.pre2018.i, %i.dnn
  %i.dnp = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.dno)
  %i.dnq = fadd reassoc nsz arcp contract afn float %i.dnp, %i.dnk
  %i.dnr = getelementptr inbounds nuw [12 x i8], ptr %i.dni, i64 %i.dlc
  %i.dns = getelementptr inbounds nuw i8, ptr %i.dnr, i64 4
  %i.dnt = load float, ptr %i.dns, align 4, !tbaa !12 ; 2 uses
  %i.dnu = fsub reassoc nsz arcp contract afn float %.pre2018.i, %i.dnt
  %i.dnv = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.dnu)
  %i.dnw = getelementptr inbounds [12 x i8], ptr %i.dni, i64 %i.dle
  %i.dnx = getelementptr inbounds nuw i8, ptr %i.dnw, i64 4
  %i.dny = load float, ptr %i.dnx, align 4, !tbaa !12
  %i.dnz = fsub reassoc nsz arcp contract afn float %.pre2018.i, %i.dny
  %i.doa = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.dnz)
  %i.dob = fadd reassoc nsz arcp contract afn float %i.doa, %i.dnv
  %i.doc = fmul reassoc nsz arcp contract afn float %i.dob, 2.000000e+00
  %i.dod = fcmp reassoc nsz arcp contract afn olt float %i.dnq, %i.doc ; 2 uses
  %spec.select1155.1.i = select i1 %i.dod, i32 %i.dky, i32 %i.dla ; 2 uses
  %i.doe = select i1 %i.dod, float %.pre2021.i, float %i.dnt
  %.pre2036.i = zext nneg i32 %spec.select1155.1.i to i64
  br label %.loopexit1252.loopexit.i

.loopexit1252.loopexit.i:                         ; preds = %bb.ky, %._crit_edge2012.i
  %.pre-phi2037.i = phi i64 [ %.pre2036.i, %bb.ky ], [ %i.dlb, %._crit_edge2012.i ]
  %i.dof = phi float [ %i.doe, %bb.ky ], [ %.pre2021.i, %._crit_edge2012.i ]
  %i.dog = phi i32 [ %spec.select1155.1.i, %bb.ky ], [ %i.dky, %._crit_edge2012.i ]
  %i.doh = getelementptr inbounds nuw [12 x i8], ptr %i.dni, i64 %.pre-phi2037.i
  %i.doi = getelementptr inbounds [4 x i8], ptr %i.doh, i64 %i.dlm
  %i.doj = load float, ptr %i.doi, align 4, !tbaa !12
  %i.dok = sub nsw i32 0, %i.dog
  %i.dol = sext i32 %i.dok to i64
  %i.dom = getelementptr inbounds [12 x i8], ptr %i.dni, i64 %i.dol ; 2 uses
  %i.don = getelementptr inbounds [4 x i8], ptr %i.dom, i64 %i.dlm
  %i.doo = load float, ptr %i.don, align 4, !tbaa !12
  %i.dop = fmul reassoc nsz arcp contract afn float %.pre2018.i, 2.000000e+00
  %i.doq = getelementptr inbounds nuw i8, ptr %i.dom, i64 4
  %i.dor = load float, ptr %i.doq, align 4, !tbaa !12
  %.neg929 = fsub reassoc nsz arcp contract afn float %i.dop, %i.dof
  %.neg1224.1.i = fadd reassoc nsz arcp contract afn float %i.doj, %.neg929
  %i.dos = fadd reassoc nsz arcp contract afn float %.neg1224.1.i, %i.doo
  %i.dot = fsub reassoc nsz arcp contract afn float %i.dos, %i.dor
  %i.dou = fmul reassoc nsz arcp contract afn float %i.dot, 5.000000e-01
  %i.dov = getelementptr inbounds [4 x i8], ptr %i.dni, i64 %i.dlm
  store float %i.dou, ptr %i.dov, align 4, !tbaa !12
  %i.dow = getelementptr inbounds nuw i8, ptr %i.dlp, i64 357216 ; 3 uses
  %.phi.trans.insert2025.i = getelementptr inbounds nuw [12 x i8], ptr %i.dow, i64 %i.dlb ; 2 uses
  %.phi.trans.insert2026.i = getelementptr inbounds nuw i8, ptr %.phi.trans.insert2025.i, i64 4
  %.pre2027.i = load float, ptr %.phi.trans.insert2026.i, align 4, !tbaa !12
  %.phi.trans.insert2023.i = getelementptr inbounds nuw i8, ptr %i.dlp, i64 357220
  %.pre2024.i = load float, ptr %.phi.trans.insert2023.i, align 4, !tbaa !12
  %i.dox = getelementptr inbounds [4 x i8], ptr %.phi.trans.insert2025.i, i64 %i.dlm
  %i.doy = load float, ptr %i.dox, align 4, !tbaa !12
  %i.doz = getelementptr inbounds [12 x i8], ptr %i.dow, i64 %.neg.i491 ; 2 uses
  %i.dpa = getelementptr inbounds [4 x i8], ptr %i.doz, i64 %i.dlm
  %i.dpb = load float, ptr %i.dpa, align 4, !tbaa !12
  %i.dpc = fmul reassoc nsz arcp contract afn float %.pre2024.i, 2.000000e+00
  %i.dpd = getelementptr inbounds nuw i8, ptr %i.doz, i64 4
  %i.dpe = load float, ptr %i.dpd, align 4, !tbaa !12
  %.neg931 = fsub reassoc nsz arcp contract afn float %i.doy, %.pre2027.i
  %.neg1224.2.i = fadd reassoc nsz arcp contract afn float %.neg931, %i.dpc
  %i.dpf = fadd reassoc nsz arcp contract afn float %.neg1224.2.i, %i.dpb
  %i.dpg = fsub reassoc nsz arcp contract afn float %i.dpf, %i.dpe
  %i.dph = fmul reassoc nsz arcp contract afn float %i.dpg, 5.000000e-01
  %i.dpi = getelementptr inbounds [4 x i8], ptr %i.dow, i64 %i.dlm
  store float %i.dph, ptr %i.dpi, align 4, !tbaa !12
  %i.dpj = getelementptr inbounds nuw i8, ptr %i.dlp, i64 535824 ; 3 uses
  %.phi.trans.insert2030.i = getelementptr inbounds nuw [12 x i8], ptr %i.dpj, i64 %i.dlb ; 2 uses
  %.phi.trans.insert2031.i = getelementptr inbounds nuw i8, ptr %.phi.trans.insert2030.i, i64 4
  %.pre2032.i = load float, ptr %.phi.trans.insert2031.i, align 4, !tbaa !12
  %.phi.trans.insert2028.i = getelementptr inbounds nuw i8, ptr %i.dlp, i64 535828
  %.pre2029.i = load float, ptr %.phi.trans.insert2028.i, align 4, !tbaa !12
  %i.dpk = getelementptr inbounds [4 x i8], ptr %.phi.trans.insert2030.i, i64 %i.dlm
  %i.dpl = load float, ptr %i.dpk, align 4, !tbaa !12
  %i.dpm = getelementptr inbounds [12 x i8], ptr %i.dpj, i64 %.neg.i491 ; 2 uses
  %i.dpn = getelementptr inbounds [4 x i8], ptr %i.dpm, i64 %i.dlm
  %i.dpo = load float, ptr %i.dpn, align 4, !tbaa !12
  %i.dpp = fmul reassoc nsz arcp contract afn float %.pre2029.i, 2.000000e+00
  %i.dpq = getelementptr inbounds nuw i8, ptr %i.dpm, i64 4
  %i.dpr = load float, ptr %i.dpq, align 4, !tbaa !12
  %.neg933 = fsub reassoc nsz arcp contract afn float %i.dpl, %.pre2032.i
  %.neg1224.3.i = fadd reassoc nsz arcp contract afn float %.neg933, %i.dpp
  %i.dps = fadd reassoc nsz arcp contract afn float %.neg1224.3.i, %i.dpo
  %i.dpt = fsub reassoc nsz arcp contract afn float %i.dps, %i.dpr
  %i.dpu = fmul reassoc nsz arcp contract afn float %i.dpt, 5.000000e-01
  %i.dpv = getelementptr inbounds [4 x i8], ptr %i.dpj, i64 %i.dlm
  store float %i.dpu, ptr %i.dpv, align 4, !tbaa !12
  br label %.loopexit1252.i

.loopexit1252.i:                                  ; preds = %.loopexit1252.loopexit.i, %bb.kv
  %indvars.iv.next1634.i = add nsw i64 %indvars.iv1633.i, 1 ; 2 uses
  %exitcond1196.not = icmp eq i64 %indvars.iv.next1634.i, %i.cfl
  br i1 %exitcond1196.not, label %._crit_edge1369.i, label %bb.kv

._crit_edge1388.i:                                ; preds = %.loopexit1262.i, %._crit_edge1373.split.i
  %i.dpw = sub nsw i32 %i.cfr, %i.cfp             ; 7 uses
  %i.dpx = icmp sgt i32 %i.dpw, 16
  %i.dpy = icmp sgt i32 %i.dpw, 18
  br i1 %i.cdo, label %.preheader1261.i.preheader, label %.split1052.thread

.preheader1261.i.preheader:                       ; preds = %._crit_edge1388.i
  %xtraiter4746 = and i64 %i.cen, 1
  %i.dpz = icmp slt i32 %i.cem, 10
  %i.dqa = and i64 %i.cen, 2147483646
  %i.dqb = add nsw i64 %i.dqa, -10
  %lcmp.mod4748.not = icmp eq i64 %xtraiter4746, 0
  %lcmp.mod4749 = trunc i32 %smax4745 to i1
  %i.dqc = add nsw i64 %smax1216, -9              ; 2 uses
  %min.iters.check2556 = icmp slt i32 %i.cfg, 17
  %n.vec2558 = and i64 %i.dqc, -8                 ; 3 uses
  %i.dqd = add nsw i64 %n.vec2558, 9
  %cmp.n2572 = icmp eq i64 %i.dqc, %n.vec2558
  br label %.preheader1261.i

.split1052.thread:                                ; preds = %._crit_edge1388.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(59536) %i.car, i8 0, i64 59536, i1 false)
  br label %.preheader1265.split.i

bb.kz:                                            ; preds = %.loopexit1262.i, %.lr.ph1387.i
  %indvars.iv1662.i = phi i64 [ %indvars.iv1660.i, %.lr.ph1387.i ], [ %indvars.iv.next1663.i, %.loopexit1262.i ] ; 4 uses
  %i.dqe = sub nsw i64 %indvars.iv1662.i, %i.cbc
  %i.dqf = trunc nsw i64 %i.dqe to i32
  %i.dqg = srem i32 %i.dqf, 3
  %.not1126.i = icmp eq i32 %i.dqg, 0
  %brmerge.i = select i1 %.not1126.i, i1 true, i1 %i.dkn
  br i1 %brmerge.i, label %.loopexit1262.i, label %.lr.ph1383.i

.lr.ph1383.i:                                     ; preds = %bb.kz
  %i.dqh = sub nsw i64 %indvars.iv1662.i, %indvars.iv1583.i
  %i.dqi = getelementptr inbounds [1464 x i8], ptr %i.bqr, i64 %i.dqh
  %i.dqj = trunc i64 %indvars.iv1662.i to i32
  %i.dqk = add i32 %i.dqj, 600
  %i.dql = srem i32 %i.dqk, 3
  %i.dqm = sext i32 %i.dql to i64
  %i.dqn = getelementptr inbounds [48 x i8], ptr %i.h, i64 %i.dqm
  br label %bb.la

bb.la:                                            ; preds = %bb.lc, %.lr.ph1383.i
  %indvars.iv1657.i = phi i64 [ %indvars.iv1655.i, %.lr.ph1383.i ], [ %indvars.iv.next1658.i, %bb.lc ] ; 4 uses
  %i.dqo = sub nsw i64 %indvars.iv1657.i, %i.cbd
  %i.dqp = trunc nsw i64 %i.dqo to i32
  %i.dqq = srem i32 %i.dqp, 3
  %.not1127.i = icmp eq i32 %i.dqq, 0
  br i1 %.not1127.i, label %bb.lc, label %bb.lb

bb.lb:                                            ; preds = %bb.la
  %i.dqr = sub nsw i64 %indvars.iv1657.i, %indvars.iv1578.i
  %i.dqs = getelementptr inbounds [12 x i8], ptr %i.dqi, i64 %i.dqr ; 12 uses
  %i.dqt = trunc i64 %indvars.iv1657.i to i32
  %i.dqu = add i32 %i.dqt, 600
  %i.dqv = srem i32 %i.dqu, 3
  %i.dqw = sext i32 %i.dqv to i64
  %i.dqx = getelementptr inbounds [16 x i8], ptr %i.dqn, i64 %i.dqw ; 4 uses
  %i.dqy = load i16, ptr %i.dqx, align 16, !tbaa !481 ; 2 uses
  %i.dqz = sext i16 %i.dqy to i32
  %i.dra = getelementptr inbounds nuw i8, ptr %i.dqx, i64 2
  %i.drb = load i16, ptr %i.dra, align 2, !tbaa !481 ; 2 uses
  %i.drc = sext i16 %i.drb to i32
  %i.drd = sub nsw i32 0, %i.drc
  %.not1128.i = icmp eq i32 %i.dqz, %i.drd
  %i.dre = getelementptr inbounds nuw i8, ptr %i.dqs, i64 4
  %i.drf = load float, ptr %i.dre, align 4, !tbaa !12 ; 2 uses
  %i.drg = sext i16 %i.dqy to i64
  %i.drh = getelementptr inbounds [12 x i8], ptr %i.dqs, i64 %i.drg ; 5 uses
  %i.dri = getelementptr inbounds nuw i8, ptr %i.drh, i64 4
  %i.drj = load float, ptr %i.dri, align 4, !tbaa !12 ; 3 uses
  %i.drk = sext i16 %i.drb to i64
  %i.drl = getelementptr inbounds [12 x i8], ptr %i.dqs, i64 %i.drk ; 5 uses
  %i.drm = getelementptr inbounds nuw i8, ptr %i.drl, i64 4
  %i.drn = load float, ptr %i.drm, align 4, !tbaa !12 ; 2 uses
  br i1 %.not1128.i, label %.loopexit.loopexit.i, label %.loopexit.loopexit1518.i

.loopexit.loopexit1518.i:                         ; preds = %bb.lb
  %i.dro = fmul reassoc nsz arcp contract afn float %i.drf, 3.000000e+00
  %i.drp = fsub reassoc nsz arcp contract afn float %i.dro, %i.drn ; 2 uses
  %i.drq = load float, ptr %i.drh, align 4, !tbaa !12
  %i.drr = load float, ptr %i.drl, align 4, !tbaa !12
  %reass.add.i = fsub reassoc nsz arcp contract afn float %i.drq, %i.drj
  %reass.mul.i = fmul reassoc nsz arcp contract afn float %reass.add.i, 2.000000e+00
  %i.drs = fadd reassoc nsz arcp contract afn float %i.drr, %i.drp
  %i.drt = fadd reassoc nsz arcp contract afn float %i.drs, %reass.mul.i
  %i.dru = fmul reassoc nsz arcp contract afn float %i.drt, f0x3EAAAAAB
  %i.drv = getelementptr inbounds nuw i8, ptr %i.drh, i64 8
  %i.drw = load float, ptr %i.drv, align 4, !tbaa !12
  %i.drx = getelementptr inbounds nuw i8, ptr %i.drl, i64 8
  %i.dry = load float, ptr %i.drx, align 4, !tbaa !12
  %reass.add.1.i = fsub reassoc nsz arcp contract afn float %i.drw, %i.drj
  %reass.mul.1.i = fmul reassoc nsz arcp contract afn float %reass.add.1.i, 2.000000e+00
  %i.drz = fadd reassoc nsz arcp contract afn float %i.dry, %i.drp
  %i.dsa = fadd reassoc nsz arcp contract afn float %i.drz, %reass.mul.1.i
  %i.dsb = fmul reassoc nsz arcp contract afn float %i.dsa, f0x3EAAAAAB
  br label %.loopexit.i

.loopexit.loopexit.i:                             ; preds = %bb.lb
  %i.dsc = fmul reassoc nsz arcp contract afn float %i.drf, 2.000000e+00
  %i.dsd = fadd reassoc nsz arcp contract afn float %i.drj, %i.drn
  %i.dse = fsub reassoc nsz arcp contract afn float %i.dsc, %i.dsd ; 2 uses
  %i.dsf = load float, ptr %i.drh, align 4, !tbaa !12
  %i.dsg = load float, ptr %i.drl, align 4, !tbaa !12
  %i.dsh = fadd reassoc nsz arcp contract afn float %i.dsf, %i.dse
  %i.dsi = fadd reassoc nsz arcp contract afn float %i.dsh, %i.dsg
  %i.dsj = fmul reassoc nsz arcp contract afn float %i.dsi, 5.000000e-01
  %i.dsk = getelementptr inbounds nuw i8, ptr %i.drh, i64 8
  %i.dsl = load float, ptr %i.dsk, align 4, !tbaa !12
  %i.dsm = getelementptr inbounds nuw i8, ptr %i.drl, i64 8
  %i.dsn = load float, ptr %i.dsm, align 4, !tbaa !12
  %i.dso = fadd reassoc nsz arcp contract afn float %i.dsl, %i.dse
  %i.dsp = fadd reassoc nsz arcp contract afn float %i.dso, %i.dsn
  %i.dsq = fmul reassoc nsz arcp contract afn float %i.dsp, 5.000000e-01
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.loopexit.loopexit.i, %.loopexit.loopexit1518.i
  %.sink = phi float [ %i.dsj, %.loopexit.loopexit.i ], [ %i.dru, %.loopexit.loopexit1518.i ] ; 2 uses
  %.sink.i = phi float [ %i.dsq, %.loopexit.loopexit.i ], [ %i.dsb, %.loopexit.loopexit1518.i ] ; 2 uses
  store float %.sink, ptr %i.dqs, align 4, !tbaa !12
  %i.dsr = getelementptr inbounds nuw i8, ptr %i.dqs, i64 8
  store float %.sink.i, ptr %i.dsr, align 4, !tbaa !12
  %i.dss = getelementptr inbounds nuw i8, ptr %i.dqs, i64 178608 ; 3 uses
  %i.dst = getelementptr inbounds nuw i8, ptr %i.dqx, i64 4
  %i.dsu = load i16, ptr %i.dst, align 4, !tbaa !481 ; 2 uses
  %i.dsv = sext i16 %i.dsu to i32
  %i.dsw = getelementptr inbounds nuw i8, ptr %i.dqx, i64 6
  %i.dsx = load i16, ptr %i.dsw, align 2, !tbaa !481 ; 2 uses
  %i.dsy = sext i16 %i.dsx to i32
  %i.dsz = sub nsw i32 0, %i.dsy
  %.not1128.1.i = icmp eq i32 %i.dsv, %i.dsz
  %i.dta = getelementptr inbounds nuw i8, ptr %i.dqs, i64 178612
  %i.dtb = load float, ptr %i.dta, align 4, !tbaa !12 ; 2 uses
  %i.dtc = sext i16 %i.dsu to i64
  %i.dtd = getelementptr inbounds [12 x i8], ptr %i.dss, i64 %i.dtc ; 5 uses
  %i.dte = getelementptr inbounds nuw i8, ptr %i.dtd, i64 4
  %i.dtf = load float, ptr %i.dte, align 4, !tbaa !12 ; 3 uses
  %i.dtg = sext i16 %i.dsx to i64
  %i.dth = getelementptr inbounds [12 x i8], ptr %i.dss, i64 %i.dtg ; 5 uses
  %i.dti = getelementptr inbounds nuw i8, ptr %i.dth, i64 4
  %i.dtj = load float, ptr %i.dti, align 4, !tbaa !12 ; 2 uses
  br i1 %.not1128.1.i, label %.loopexit.loopexit.1.i, label %.loopexit.loopexit1518.1.i

.loopexit.loopexit1518.1.i:                       ; preds = %.loopexit.i
  %i.dtk = fmul reassoc nsz arcp contract afn float %i.dtb, 3.000000e+00
  %i.dtl = fsub reassoc nsz arcp contract afn float %i.dtk, %i.dtj ; 2 uses
  %i.dtm = load float, ptr %i.dtd, align 4, !tbaa !12
  %i.dtn = load float, ptr %i.dth, align 4, !tbaa !12
  %reass.add.11650.i = fsub reassoc nsz arcp contract afn float %i.dtm, %i.dtf
  %reass.mul.11651.i = fmul reassoc nsz arcp contract afn float %reass.add.11650.i, 2.000000e+00
  %i.dto = fadd reassoc nsz arcp contract afn float %i.dtn, %i.dtl
  %i.dtp = fadd reassoc nsz arcp contract afn float %i.dto, %reass.mul.11651.i
  %i.dtq = fmul reassoc nsz arcp contract afn float %i.dtp, f0x3EAAAAAB
  %i.dtr = getelementptr inbounds nuw i8, ptr %i.dtd, i64 8
  %i.dts = load float, ptr %i.dtr, align 4, !tbaa !12
  %i.dtt = getelementptr inbounds nuw i8, ptr %i.dth, i64 8
  %i.dtu = load float, ptr %i.dtt, align 4, !tbaa !12
  %reass.add.1.1.i = fsub reassoc nsz arcp contract afn float %i.dts, %i.dtf
  %reass.mul.1.1.i = fmul reassoc nsz arcp contract afn float %reass.add.1.1.i, 2.000000e+00
  %i.dtv = fadd reassoc nsz arcp contract afn float %i.dtu, %i.dtl
  %i.dtw = fadd reassoc nsz arcp contract afn float %i.dtv, %reass.mul.1.1.i
  %i.dtx = fmul reassoc nsz arcp contract afn float %i.dtw, f0x3EAAAAAB
  br label %.loopexit.1.i

.loopexit.loopexit.1.i:                           ; preds = %.loopexit.i
  %i.dty = fmul reassoc nsz arcp contract afn float %i.dtb, 2.000000e+00
  %i.dtz = fadd reassoc nsz arcp contract afn float %i.dtf, %i.dtj
  %i.dua = fsub reassoc nsz arcp contract afn float %i.dty, %i.dtz ; 2 uses
  %i.dub = load float, ptr %i.dtd, align 4, !tbaa !12
  %i.duc = load float, ptr %i.dth, align 4, !tbaa !12
  %i.dud = fadd reassoc nsz arcp contract afn float %i.dub, %i.dua
  %i.due = fadd reassoc nsz arcp contract afn float %i.dud, %i.duc
  %i.duf = fmul reassoc nsz arcp contract afn float %i.due, 5.000000e-01
  %i.dug = getelementptr inbounds nuw i8, ptr %i.dtd, i64 8
  %i.duh = load float, ptr %i.dug, align 4, !tbaa !12
  %i.dui = getelementptr inbounds nuw i8, ptr %i.dth, i64 8
  %i.duj = load float, ptr %i.dui, align 4, !tbaa !12
  %i.duk = fadd reassoc nsz arcp contract afn float %i.duh, %i.dua
  %i.dul = fadd reassoc nsz arcp contract afn float %i.duk, %i.duj
  %i.dum = fmul reassoc nsz arcp contract afn float %i.dul, 5.000000e-01
  br label %.loopexit.1.i

.loopexit.1.i:                                    ; preds = %.loopexit.loopexit.1.i, %.loopexit.loopexit1518.1.i
  %.sink1254 = phi float [ %i.duf, %.loopexit.loopexit.1.i ], [ %i.dtq, %.loopexit.loopexit1518.1.i ] ; 2 uses
  %.sink2133.i = phi float [ %i.dum, %.loopexit.loopexit.1.i ], [ %i.dtx, %.loopexit.loopexit1518.1.i ] ; 2 uses
  store float %.sink1254, ptr %i.dss, align 4, !tbaa !12
  %i.dun = getelementptr inbounds nuw i8, ptr %i.dqs, i64 178616
  store float %.sink2133.i, ptr %i.dun, align 4, !tbaa !12
  %i.duo = getelementptr inbounds nuw i8, ptr %i.dqs, i64 357216
  %i.dup = fadd reassoc nsz arcp contract afn float %.sink1254, %.sink
  %i.duq = fmul reassoc nsz arcp contract afn float %i.dup, 5.000000e-01 ; 2 uses
  store float %i.duq, ptr %i.duo, align 4, !tbaa !12
  %i.dur = fadd reassoc nsz arcp contract afn float %.sink2133.i, %.sink.i
  %i.dus = fmul reassoc nsz arcp contract afn float %i.dur, 5.000000e-01 ; 2 uses
  %i.dut = getelementptr inbounds nuw i8, ptr %i.dqs, i64 357224
  store float %i.dus, ptr %i.dut, align 4, !tbaa !12
  %i.duu = getelementptr inbounds nuw i8, ptr %i.dqs, i64 535824
  store float %i.duq, ptr %i.duu, align 4, !tbaa !12
  %i.duv = getelementptr inbounds nuw i8, ptr %i.dqs, i64 535832
  store float %i.dus, ptr %i.duv, align 4, !tbaa !12
  br label %bb.lc

bb.lc:                                            ; preds = %.loopexit.1.i, %bb.la
  %indvars.iv.next1658.i = add nsw i64 %indvars.iv1657.i, 1 ; 2 uses
  %exitcond1200.not = icmp eq i64 %indvars.iv.next1658.i, %i.cfj
  br i1 %exitcond1200.not, label %.loopexit1262.i, label %bb.la

.loopexit1262.i:                                  ; preds = %bb.lc, %bb.kz
  %indvars.iv.next1663.i = add nsw i64 %indvars.iv1662.i, 1 ; 2 uses
  %exitcond1202.not = icmp eq i64 %indvars.iv.next1663.i, %i.ccj
  br i1 %exitcond1202.not, label %._crit_edge1388.i, label %bb.kz

.preheader1261.i:                                 ; preds = %.preheader1261.i.preheader, %._crit_edge1398.split.i
end_hunk_3
begin_hunk_4_@process:bb.a
  %i.eni = sub i8 %i.enh, %i.eng                  ; 2 uses
  store i8 %i.eni, ptr %i.enb, align 1, !tbaa !133
  store i8 %op.rdx4585.a, ptr %i.enf, align 1, !tbaa !133
  %indvars.iv.next1710.2.i = add nuw nsw i64 %indvars.iv1709.2.i, 1 ; 2 uses
  %exitcond1739.not.i = icmp eq i64 %indvars.iv.next1710.2.i, %smax1756.i
  br i1 %exitcond1739.not.i, label %._crit_edge1425.us.2.i, label %.preheader1237.us.2.i

._crit_edge1425.us.2.i:                           ; preds = %.preheader1237.us.2.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #27
  %exitcond1742.not.i = icmp eq i64 %i.emk, %smax1762.i
  %indvar.next4553 = add i64 %indvar4552, 1
  br i1 %exitcond1742.not.i, label %.preheader1237.lr.ph.us.3.i, label %.preheader1237.lr.ph.us.2.i

.lr.ph1427.split.3.i:                             ; preds = %.lr.ph1427.split.3.i.preheader, %.lr.ph1427.split.3.i
  %indvars.iv1703.3.i = phi i64 [ %indvars.iv.next1704.3.i.7, %.lr.ph1427.split.3.i ], [ 13, %.lr.ph1427.split.3.i.preheader ] ; 9 uses
  %niter4775 = phi i64 [ %niter4775.next.7, %.lr.ph1427.split.3.i ], [ 0, %.lr.ph1427.split.3.i.preheader ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #27
  %i.enj = getelementptr inbounds nuw [122 x i8], ptr %i.bqr, i64 %indvars.iv1703.3.i
  %i.enk = getelementptr inbounds nuw i8, ptr %i.enj, i64 818628
  store i8 0, ptr %i.enk, align 2, !tbaa !133
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #27
  %i.enl = getelementptr inbounds nuw [122 x i8], ptr %i.bqr, i64 %indvars.iv1703.3.i
  %i.enm = getelementptr inbounds nuw i8, ptr %i.enl, i64 818750
  store i8 0, ptr %i.enm, align 2, !tbaa !133
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #27
  %i.enn = getelementptr inbounds nuw [122 x i8], ptr %i.bqr, i64 %indvars.iv1703.3.i
  %i.eno = getelementptr inbounds nuw i8, ptr %i.enn, i64 818872
  store i8 0, ptr %i.eno, align 2, !tbaa !133
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #27
  %i.enp = getelementptr inbounds nuw [122 x i8], ptr %i.bqr, i64 %indvars.iv1703.3.i
  %i.enq = getelementptr inbounds nuw i8, ptr %i.enp, i64 818994
  store i8 0, ptr %i.enq, align 2, !tbaa !133
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #27
  %i.enr = getelementptr inbounds nuw [122 x i8], ptr %i.bqr, i64 %indvars.iv1703.3.i
  %i.ens = getelementptr inbounds nuw i8, ptr %i.enr, i64 819116
  store i8 0, ptr %i.ens, align 2, !tbaa !133
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #27
  %i.ent = getelementptr inbounds nuw [122 x i8], ptr %i.bqr, i64 %indvars.iv1703.3.i
  %i.enu = getelementptr inbounds nuw i8, ptr %i.ent, i64 819238
  store i8 0, ptr %i.enu, align 2, !tbaa !133
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #27
  %i.env = getelementptr inbounds nuw [122 x i8], ptr %i.bqr, i64 %indvars.iv1703.3.i
  %i.enw = getelementptr inbounds nuw i8, ptr %i.env, i64 819360
  store i8 0, ptr %i.enw, align 2, !tbaa !133
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #27
  %i.enx = getelementptr inbounds nuw [122 x i8], ptr %i.bqr, i64 %indvars.iv1703.3.i
  %i.eny = getelementptr inbounds nuw i8, ptr %i.enx, i64 819482
  store i8 0, ptr %i.eny, align 2, !tbaa !133
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #27
  %indvars.iv.next1704.3.i.7 = add nuw nsw i64 %indvars.iv1703.3.i, 8 ; 2 uses
  %niter4775.next.7 = add i64 %niter4775, 8       ; 2 uses
  %niter4775.ncmp.7 = icmp eq i64 %niter4775.next.7, %unroll_iter4774
  br i1 %niter4775.ncmp.7, label %.preheader1258.lr.ph.i.unr-lcssa, label %.lr.ph1427.split.3.i

.preheader1237.lr.ph.us.3.i:                      ; preds = %._crit_edge1425.us.2.i, %._crit_edge1425.us.3.i
  %indvar4557 = phi i64 [ %indvar.next4558, %._crit_edge1425.us.3.i ], [ 0, %._crit_edge1425.us.2.i ] ; 2 uses
  %indvars.iv1712.3.i = phi i64 [ %i.eod, %._crit_edge1425.us.3.i ], [ 13, %._crit_edge1425.us.2.i ] ; 3 uses
  %i.enz = mul nuw nsw i64 %indvar4557, 122
  %i.eoa = getelementptr i8, ptr %i.bqr, i64 %i.enz
  %scevgep4559 = getelementptr i8, ptr %i.eoa, i64 820214
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.j, i8 0, i64 5, i1 false)
  %i.eob = getelementptr inbounds nuw [122 x i8], ptr %i.cbq, i64 %indvars.iv1712.3.i ; 2 uses
  %i.eoc = getelementptr inbounds nuw i8, ptr %i.eob, i64 8
  store i8 0, ptr %i.eoc, align 2, !tbaa !133
  %i.eod = add nuw nsw i64 %indvars.iv1712.3.i, 1 ; 3 uses
  %load_initial4560 = load i8, ptr %scevgep4559, align 2
  br label %.preheader1237.us.3.i

.preheader1237.us.3.i:                            ; preds = %.preheader1237.us.3.i, %.preheader1237.lr.ph.us.3.i
  %store_forwarded4561 = phi i8 [ %load_initial4560, %.preheader1237.lr.ph.us.3.i ], [ %i.epb, %.preheader1237.us.3.i ]
  %indvars.iv1709.3.i = phi i64 [ 9, %.preheader1237.lr.ph.us.3.i ], [ %indvars.iv.next1710.3.i, %.preheader1237.us.3.i ] ; 4 uses
  %invariant.gep1420.us.3.i = getelementptr i8, ptr %i.cbr, i64 %indvars.iv1709.3.i ; 2 uses
  %i.eoe = getelementptr [122 x i8], ptr %invariant.gep1420.us.3.i, i64 %indvars.iv1712.3.i ; 4 uses
  %i.eof = getelementptr i8, ptr %i.eoe, i64 -242
  %i.eog = load i8, ptr %i.eof, align 1, !tbaa !133
  %i.eoh = getelementptr i8, ptr %i.eoe, i64 -120
  %i.eoi = load i8, ptr %i.eoh, align 1, !tbaa !133
  %i.eoj = getelementptr inbounds nuw i8, ptr %i.eoe, i64 2
  %i.eok = load i8, ptr %i.eoj, align 1, !tbaa !133
  %gep1421.us.3.3.i = getelementptr [122 x i8], ptr %invariant.gep1420.us.3.i, i64 %i.eod
  %i.eol = getelementptr inbounds nuw i8, ptr %gep1421.us.3.3.i, i64 2
  %i.eom = load i8, ptr %i.eol, align 1, !tbaa !133
  %i.eon = getelementptr i8, ptr %i.eoe, i64 246
  %i.eoo = load i8, ptr %i.eon, align 1, !tbaa !133
  %i.eop = insertelement <4 x i8> poison, i8 %i.eoi, i64 0
  %i.eoq = insertelement <4 x i8> %i.eop, i8 %i.eog, i64 1
  %i.eor = insertelement <4 x i8> %i.eoq, i8 %i.eok, i64 2
  %i.eos = insertelement <4 x i8> %i.eor, i8 %i.eom, i64 3
  %i.eot = call i8 @llvm.vector.reduce.add.v4i8(<4 x i8> %i.eos)
  %op.rdx4584 = add i8 %i.eot, %i.eoo             ; 2 uses
  %i.eou = getelementptr i8, ptr %i.eob, i64 %indvars.iv1709.3.i
  %i.eov = trunc nuw nsw i64 %indvars.iv1709.3.i to i32
  %i.eow = urem i32 %i.eov, 5
  %i.eox = zext nneg i32 %i.eow to i64
  %i.eoy = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.eox ; 2 uses
  %i.eoz = load i8, ptr %i.eoy, align 1, !tbaa !133
  %i.epa = add i8 %store_forwarded4561, %op.rdx4584
  %i.epb = sub i8 %i.epa, %i.eoz                  ; 2 uses
  store i8 %i.epb, ptr %i.eou, align 1, !tbaa !133
  store i8 %op.rdx4584, ptr %i.eoy, align 1, !tbaa !133
  %indvars.iv.next1710.3.i = add nuw nsw i64 %indvars.iv1709.3.i, 1 ; 2 uses
  %exitcond1726.not.i = icmp eq i64 %indvars.iv.next1710.3.i, %smax1756.i
  br i1 %exitcond1726.not.i, label %._crit_edge1425.us.3.i, label %.preheader1237.us.3.i

._crit_edge1425.us.3.i:                           ; preds = %.preheader1237.us.3.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #27
  %exitcond1733.not.i = icmp eq i64 %i.eod, %smax1762.i
  %indvar.next4558 = add i64 %indvar4557, 1
  br i1 %exitcond1733.not.i, label %.preheader1265.split.i, label %.preheader1237.lr.ph.us.3.i

.lr.ph1427.split.i:                               ; preds = %.lr.ph1427.split.i.preheader, %.lr.ph1427.split.i
  %indvars.iv1703.i = phi i64 [ %indvars.iv.next1704.i.7, %.lr.ph1427.split.i ], [ 13, %.lr.ph1427.split.i.preheader ] ; 9 uses
  %niter4757 = phi i64 [ %niter4757.next.7, %.lr.ph1427.split.i ], [ 0, %.lr.ph1427.split.i.preheader ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #27
  %i.epc = getelementptr inbounds nuw [122 x i8], ptr %i.cat, i64 %indvars.iv1703.i
  %i.epd = getelementptr inbounds nuw i8, ptr %i.epc, i64 8
  store i8 0, ptr %i.epd, align 2, !tbaa !133
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #27
  %i.epe = getelementptr inbounds nuw [122 x i8], ptr %i.cat, i64 %indvars.iv1703.i
  %i.epf = getelementptr inbounds nuw i8, ptr %i.epe, i64 130
  store i8 0, ptr %i.epf, align 4, !tbaa !133
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #27
  %i.epg = getelementptr inbounds nuw [122 x i8], ptr %i.cat, i64 %indvars.iv1703.i
  %i.eph = getelementptr inbounds nuw i8, ptr %i.epg, i64 252
  store i8 0, ptr %i.eph, align 2, !tbaa !133
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #27
  %i.epi = getelementptr inbounds nuw [122 x i8], ptr %i.cat, i64 %indvars.iv1703.i
  %i.epj = getelementptr inbounds nuw i8, ptr %i.epi, i64 374
  store i8 0, ptr %i.epj, align 2, !tbaa !133
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #27
  %i.epk = getelementptr inbounds nuw [122 x i8], ptr %i.cat, i64 %indvars.iv1703.i
  %i.epl = getelementptr inbounds nuw i8, ptr %i.epk, i64 496
  store i8 0, ptr %i.epl, align 2, !tbaa !133
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #27
  %i.epm = getelementptr inbounds nuw [122 x i8], ptr %i.cat, i64 %indvars.iv1703.i
  %i.epn = getelementptr inbounds nuw i8, ptr %i.epm, i64 618
  store i8 0, ptr %i.epn, align 2, !tbaa !133
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #27
  %i.epo = getelementptr inbounds nuw [122 x i8], ptr %i.cat, i64 %indvars.iv1703.i
  %i.epp = getelementptr inbounds nuw i8, ptr %i.epo, i64 740
  store i8 0, ptr %i.epp, align 2, !tbaa !133
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #27
  %i.epq = getelementptr inbounds nuw [122 x i8], ptr %i.cat, i64 %indvars.iv1703.i
  %i.epr = getelementptr inbounds nuw i8, ptr %i.epq, i64 862
  store i8 0, ptr %i.epr, align 16, !tbaa !133
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #27
  %indvars.iv.next1704.i.7 = add nuw nsw i64 %indvars.iv1703.i, 8 ; 2 uses
  %niter4757.next.7 = add i64 %niter4757, 8       ; 2 uses
  %niter4757.ncmp.7 = icmp eq i64 %niter4757.next.7, %unroll_iter4756
  br i1 %niter4757.ncmp.7, label %.lr.ph1427.split.1.i.preheader.unr-lcssa, label %.lr.ph1427.split.i

.lr.ph1427.split.1.i.preheader.unr-lcssa:         ; preds = %.lr.ph1427.split.i
  br i1 %lcmp.mod4754.not, label %.lr.ph1427.split.1.i.preheader, label %.lr.ph1427.split.i.epil.preheader

.lr.ph1427.split.i.epil.preheader:                ; preds = %.lr.ph1427.split.1.i.preheader.unr-lcssa, %.lr.ph1427.split.i.preheader
  %indvars.iv1703.i.epil.init = phi i64 [ 13, %.lr.ph1427.split.i.preheader ], [ %indvars.iv.next1704.i.7, %.lr.ph1427.split.1.i.preheader.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod4755)
  br label %.lr.ph1427.split.i.epil

.lr.ph1427.split.i.epil:                          ; preds = %.lr.ph1427.split.i.epil, %.lr.ph1427.split.i.epil.preheader
  %indvars.iv1703.i.epil = phi i64 [ %indvars.iv.next1704.i.epil, %.lr.ph1427.split.i.epil ], [ %indvars.iv1703.i.epil.init, %.lr.ph1427.split.i.epil.preheader ] ; 2 uses
  %epil.iter4753 = phi i64 [ %epil.iter4753.next, %.lr.ph1427.split.i.epil ], [ 0, %.lr.ph1427.split.i.epil.preheader ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #27
  %i.eps = getelementptr inbounds nuw [122 x i8], ptr %i.cat, i64 %indvars.iv1703.i.epil
  %i.ept = getelementptr inbounds nuw i8, ptr %i.eps, i64 8
  store i8 0, ptr %i.ept, align 2, !tbaa !133
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #27
  %indvars.iv.next1704.i.epil = add nuw nsw i64 %indvars.iv1703.i.epil, 1
  %epil.iter4753.next = add i64 %epil.iter4753, 1 ; 2 uses
  %epil.iter4753.cmp.not = icmp eq i64 %epil.iter4753.next, %xtraiter4752
  br i1 %epil.iter4753.cmp.not, label %.lr.ph1427.split.1.i.preheader, label %.lr.ph1427.split.i.epil, !llvm.loop !219

.lr.ph1427.split.1.i.preheader:                   ; preds = %.lr.ph1427.split.i.epil, %.lr.ph1427.split.1.i.preheader.unr-lcssa
  br i1 %i.cef, label %.lr.ph1427.split.1.i.epil.preheader, label %.lr.ph1427.split.1.i

.preheader1264.i:                                 ; preds = %._crit_edge1482.i
  %i.epu = icmp sgt i32 %i.dpw, 26
  %or.cond2135.i = select i1 %i.cdr, i1 %i.epu, i1 false
  br i1 %or.cond2135.i, label %.preheader1257.i.preheader, label %._crit_edge1503.split.i

.preheader1257.i.preheader:                       ; preds = %.preheader1264.i
  %scevgep2041 = getelementptr i8, ptr %scevgep2038, i64 %i.ceq
  %scevgep2045 = getelementptr i8, ptr %scevgep2044, i64 %i.cet
  %scevgep2050 = getelementptr i8, ptr %scevgep2049, i64 %i.ceq
  %scevgep2055 = getelementptr i8, ptr %scevgep2054, i64 %i.ceq
  %i.epv = add nsw i64 %umax1244, -13             ; 2 uses
  %min.iters.check2087 = icmp ult i32 %i.cfa, 21
  %i.epw = trunc nuw i64 %i.cex to i32
  %mul.result2033 = shl i32 %i.epw, 2
  %mul.overflow2034 = icmp samesign ugt i64 %i.cex, 1073741823
  %n.vec2089 = and i64 %i.epv, -8                 ; 3 uses
  %i.epx = add nsw i64 %n.vec2089, 13
  %cmp.n2160 = icmp eq i64 %i.epv, %n.vec2089
  br label %.preheader1257.i

.preheader1258.i:                                 ; preds = %._crit_edge1482.i, %.preheader1258.preheader.i
  %indvars.iv1858.i = phi i64 [ 6, %.preheader1258.preheader.i ], [ %indvars.iv.next1859.i, %._crit_edge1482.i ] ; 4 uses
  %indvars.iv1784.i = phi i64 [ 0, %.preheader1258.preheader.i ], [ %indvars.iv.next1785.i, %._crit_edge1482.i ] ; 6 uses
  %invariant.gep1430.i = getelementptr inbounds nuw [122 x i8], ptr %i.cat, i64 %indvars.iv1858.i
  %i.epy = add nuw nsw i64 %indvars.iv1858.i, %.11087.i
  %i.epz = trunc nuw i64 %i.epy to i32
  %i.eqa = urem i32 %i.epz, 6
  %i.eqb = zext nneg i32 %i.eqa to i64
  %i.eqc = getelementptr inbounds nuw [384 x i8], ptr @xtrans_fdc_interpolate.modarr, i64 %i.eqb
  %i.eqd = mul nuw nsw i64 %indvars.iv1858.i, 122 ; 2 uses
  %i.eqe = getelementptr inbounds nuw [4 x i8], ptr %i.cau, i64 %i.eqd
  %invariant.gep1475.i = getelementptr inbounds nuw [4 x i8], ptr %i.cav, i64 %i.eqd
  %broadcast.splatinsert2164 = insertelement <8 x i64> poison, i64 %indvars.iv1784.i, i64 0
  %broadcast.splat2165 = shufflevector <8 x i64> %broadcast.splatinsert2164, <8 x i64> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.eqf = mul nuw <8 x i64> %broadcast.splat2165, splat (i64 488)
  %i.eqg = add nuw <8 x i64> %i.eqf, <i64 0, i64 488, i64 976, i64 1464, i64 1952, i64 2440, i64 2928, i64 3416>
  %wide.gep2174 = getelementptr inbounds nuw i8, ptr %i.cau, <8 x i64> %i.eqg ; 13 uses
  %broadcast.splatinsert2258 = insertelement <8 x i64> poison, i64 %indvars.iv1784.i, i64 0
  %broadcast.splat2259 = shufflevector <8 x i64> %broadcast.splatinsert2258, <8 x i64> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.eqh = mul nuw <8 x i64> %broadcast.splat2259, splat (i64 488)
  %i.eqi = add nuw <8 x i64> %i.eqh, <i64 3904, i64 4392, i64 4880, i64 5368, i64 5856, i64 6344, i64 6832, i64 7320>
  %wide.gep2268.1 = getelementptr inbounds nuw i8, ptr %i.cau, <8 x i64> %i.eqi ; 13 uses
  %broadcast.splatinsert2446 = insertelement <8 x i64> poison, i64 %indvars.iv1784.i, i64 0
  %broadcast.splat2447 = shufflevector <8 x i64> %broadcast.splatinsert2446, <8 x i64> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.eqj = mul nuw <8 x i64> %broadcast.splat2447, splat (i64 488)
  %i.eqk = add nuw <8 x i64> %i.eqj, <i64 0, i64 488, i64 976, i64 1464, i64 1952, i64 2440, i64 2928, i64 3416>
  %wide.gep2456 = getelementptr inbounds nuw i8, ptr %i.cau, <8 x i64> %i.eqk ; 13 uses
  %i.eql = mul nuw <8 x i64> %broadcast.splat2447, splat (i64 488)
  %i.eqm = add nuw <8 x i64> %i.eql, <i64 3904, i64 4392, i64 4880, i64 5368, i64 5856, i64 6344, i64 6832, i64 7320>
  %wide.gep2456.1 = getelementptr inbounds nuw i8, ptr %i.cau, <8 x i64> %i.eqm ; 13 uses
  %broadcast.splatinsert2352 = insertelement <8 x i64> poison, i64 %indvars.iv1784.i, i64 0
  %broadcast.splat2353 = shufflevector <8 x i64> %broadcast.splatinsert2352, <8 x i64> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.eqn = mul nuw <8 x i64> %broadcast.splat2353, splat (i64 488)
  %i.eqo = add nuw <8 x i64> %i.eqn, <i64 0, i64 488, i64 976, i64 1464, i64 1952, i64 2440, i64 2928, i64 3416>
  %wide.gep2362 = getelementptr inbounds nuw i8, ptr %i.cau, <8 x i64> %i.eqo ; 13 uses
  %i.eqp = mul nuw <8 x i64> %broadcast.splat2353, splat (i64 488)
  %i.eqq = add nuw <8 x i64> %i.eqp, <i64 3904, i64 4392, i64 4880, i64 5368, i64 5856, i64 6344, i64 6832, i64 7320>
  %wide.gep2362.1 = getelementptr inbounds nuw i8, ptr %i.cau, <8 x i64> %i.eqq ; 13 uses
  %i.eqr = mul nuw <8 x i64> %broadcast.splat2259, splat (i64 488)
  %i.eqs = add nuw <8 x i64> %i.eqr, <i64 0, i64 488, i64 976, i64 1464, i64 1952, i64 2440, i64 2928, i64 3416>
  %wide.gep2268 = getelementptr inbounds nuw i8, ptr %i.cau, <8 x i64> %i.eqs ; 13 uses
  %i.eqt = mul nuw <8 x i64> %broadcast.splat2165, splat (i64 488)
  %i.equ = add nuw <8 x i64> %i.eqt, <i64 3904, i64 4392, i64 4880, i64 5368, i64 5856, i64 6344, i64 6832, i64 7320>
  %wide.gep2174.1 = getelementptr inbounds nuw i8, ptr %i.cau, <8 x i64> %i.equ ; 13 uses
  br label %vector.ph2445

._crit_edge1482.i:                                ; preds = %vector.ph2445
  %indvars.iv.next1859.i = add nuw nsw i64 %indvars.iv1858.i, 1
  %indvars.iv.next1785.i = add nuw nsw i64 %indvars.iv1784.i, 1
  %exitcond1242.not = icmp eq i64 %indvars.iv1784.i, %i.cdy
  br i1 %exitcond1242.not, label %.preheader1264.i, label %.preheader1258.i

vector.ph2445:                                    ; preds = %vector.ph2445, %.preheader1258.i
  %indvars.iv1855.i = phi i64 [ 6, %.preheader1258.i ], [ %indvars.iv.next1856.i, %vector.ph2445 ] ; 5 uses
  %indvars.iv1774.i = phi i64 [ 0, %.preheader1258.i ], [ %indvars.iv.next1777.i, %vector.ph2445 ] ; 21 uses
  %invariant.gep1432.i = getelementptr inbounds nuw i8, ptr %invariant.gep1430.i, i64 %indvars.iv1855.i ; 4 uses
  %i.eqv = load i8, ptr %invariant.gep1432.i, align 1, !tbaa !133
  %gep1433.1.i = getelementptr inbounds nuw i8, ptr %invariant.gep1432.i, i64 14884
  %i.eqw = load i8, ptr %gep1433.1.i, align 1, !tbaa !133
  %gep1433.2.i = getelementptr inbounds nuw i8, ptr %invariant.gep1432.i, i64 29768
  %i.eqx = load i8, ptr %gep1433.2.i, align 1, !tbaa !133
  %gep1433.3.i = getelementptr inbounds nuw i8, ptr %invariant.gep1432.i, i64 44652
  %i.eqy = load i8, ptr %gep1433.3.i, align 1, !tbaa !133
  %indvars.iv.next1777.i = add nuw nsw i64 %indvars.iv1774.i, 1 ; 9 uses
  %indvars.iv.next1777.1.i = add nuw nsw i64 %indvars.iv1774.i, 2 ; 8 uses
  %indvars.iv.next1777.2.i = add nuw nsw i64 %indvars.iv1774.i, 3 ; 8 uses
  %indvars.iv.next1777.3.i = add nuw nsw i64 %indvars.iv1774.i, 4 ; 8 uses
  %indvars.iv.next1777.4.i = add nuw nsw i64 %indvars.iv1774.i, 5 ; 8 uses
  %indvars.iv.next1777.5.i = add nuw nsw i64 %indvars.iv1774.i, 6 ; 8 uses
  %indvars.iv.next1777.6.i = add nuw nsw i64 %indvars.iv1774.i, 7 ; 8 uses
  %indvars.iv.next1777.7.i = add nuw nsw i64 %indvars.iv1774.i, 8 ; 8 uses
  %indvars.iv.next1777.8.i = add nuw nsw i64 %indvars.iv1774.i, 9 ; 8 uses
  %indvars.iv.next1777.9.i = add nuw nsw i64 %indvars.iv1774.i, 10 ; 8 uses
  %indvars.iv.next1777.10.i = add nuw nsw i64 %indvars.iv1774.i, 11 ; 8 uses
  %indvars.iv.next1777.11.i = add nuw nsw i64 %indvars.iv1774.i, 12 ; 8 uses
  %wide.masked.gather2458 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 8 getelementptr inbounds nuw (i8, <8 x ptr> getelementptr inbounds nuw (i8, ptr @xtrans_fdc_interpolate.harr, <8 x i64> <i64 1248, i64 1144, i64 1040, i64 936, i64 832, i64 728, i64 624, i64 520>), <8 x i64> splat (i64 96)), <8 x i1> splat (i1 true), <8 x float> poison)
  %wide.masked.gather2460 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 getelementptr inbounds nuw (i8, <8 x ptr> getelementptr inbounds nuw (i8, ptr @xtrans_fdc_interpolate.harr, <8 x i64> <i64 1248, i64 1144, i64 1040, i64 936, i64 832, i64 728, i64 624, i64 520>), <8 x i64> splat (i64 100)), <8 x i1> splat (i1 true), <8 x float> poison)
  %wide.gep2461 = getelementptr inbounds nuw [4 x i8], <8 x ptr> %wide.gep2456, i64 %indvars.iv1774.i
  %wide.masked.gather2462 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep2461, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !12 ; 2 uses
  %i.eqz = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather2462, %wide.masked.gather2458
  %i.era = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather2462, %wide.masked.gather2460
  %wide.masked.gather2464 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 8 getelementptr inbounds nuw (i8, <8 x ptr> getelementptr inbounds nuw (i8, ptr @xtrans_fdc_interpolate.harr, <8 x i64> <i64 1248, i64 1144, i64 1040, i64 936, i64 832, i64 728, i64 624, i64 520>), <8 x i64> splat (i64 88)), <8 x i1> splat (i1 true), <8 x float> poison)
  %wide.masked.gather2466 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 getelementptr inbounds nuw (i8, <8 x ptr> getelementptr inbounds nuw (i8, ptr @xtrans_fdc_interpolate.harr, <8 x i64> <i64 1248, i64 1144, i64 1040, i64 936, i64 832, i64 728, i64 624, i64 520>), <8 x i64> splat (i64 92)), <8 x i1> splat (i1 true), <8 x float> poison)
  %wide.gep2467 = getelementptr inbounds nuw [4 x i8], <8 x ptr> %wide.gep2456, i64 %indvars.iv.next1777.i
  %wide.masked.gather2468 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep2467, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !12 ; 2 uses
  %i.erb = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather2468, %wide.masked.gather2464
  %i.erc = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather2468, %wide.masked.gather2466
  %i.erd = fadd reassoc nsz arcp contract afn <8 x float> %i.erb, %i.eqz
  %i.ere = fadd reassoc nsz arcp contract afn <8 x float> %i.erc, %i.era
  %wide.masked.gather2470 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 8 getelementptr inbounds nuw (i8, <8 x ptr> getelementptr inbounds nuw (i8, ptr @xtrans_fdc_interpolate.harr, <8 x i64> <i64 1248, i64 1144, i64 1040, i64 936, i64 832, i64 728, i64 624, i64 520>), <8 x i64> splat (i64 80)), <8 x i1> splat (i1 true), <8 x float> poison)
  %wide.masked.gather2472 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 getelementptr inbounds nuw (i8, <8 x ptr> getelementptr inbounds nuw (i8, ptr @xtrans_fdc_interpolate.harr, <8 x i64> <i64 1248, i64 1144, i64 1040, i64 936, i64 832, i64 728, i64 624, i64 520>), <8 x i64> splat (i64 84)), <8 x i1> splat (i1 true), <8 x float> poison)
  %wide.gep2473 = getelementptr inbounds nuw [4 x i8], <8 x ptr> %wide.gep2456, i64 %indvars.iv.next1777.1.i
  %wide.masked.gather2474 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep2473, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !12 ; 2 uses
  %i.erf = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather2474, %wide.masked.gather2470
  %i.erg = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather2474, %wide.masked.gather2472
  %i.erh = fadd reassoc nsz arcp contract afn <8 x float> %i.erd, %i.erf
  %i.eri = fadd reassoc nsz arcp contract afn <8 x float> %i.ere, %i.erg
  %wide.masked.gather2476 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 8 getelementptr inbounds nuw (i8, <8 x ptr> getelementptr inbounds nuw (i8, ptr @xtrans_fdc_interpolate.harr, <8 x i64> <i64 1248, i64 1144, i64 1040, i64 936, i64 832, i64 728, i64 624, i64 520>), <8 x i64> splat (i64 72)), <8 x i1> splat (i1 true), <8 x float> poison)
  %wide.masked.gather2478 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 getelementptr inbounds nuw (i8, <8 x ptr> getelementptr inbounds nuw (i8, ptr @xtrans_fdc_interpolate.harr, <8 x i64> <i64 1248, i64 1144, i64 1040, i64 936, i64 832, i64 728, i64 624, i64 520>), <8 x i64> splat (i64 76)), <8 x i1> splat (i1 true), <8 x float> poison)
  %wide.gep2479 = getelementptr inbounds nuw [4 x i8], <8 x ptr> %wide.gep2456, i64 %indvars.iv.next1777.2.i
  %wide.masked.gather2480 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep2479, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !12 ; 2 uses
  %i.erj = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather2480, %wide.masked.gather2476
  %i.erk = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather2480, %wide.masked.gather2478
  %i.erl = fadd reassoc nsz arcp contract afn <8 x float> %i.erh, %i.erj
  %i.erm = fadd reassoc nsz arcp contract afn <8 x float> %i.eri, %i.erk
  %wide.masked.gather2482 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 8 getelementptr inbounds nuw (i8, <8 x ptr> getelementptr inbounds nuw (i8, ptr @xtrans_fdc_interpolate.harr, <8 x i64> <i64 1248, i64 1144, i64 1040, i64 936, i64 832, i64 728, i64 624, i64 520>), <8 x i64> splat (i64 64)), <8 x i1> splat (i1 true), <8 x float> poison)
  %wide.masked.gather2484 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 getelementptr inbounds nuw (i8, <8 x ptr> getelementptr inbounds nuw (i8, ptr @xtrans_fdc_interpolate.harr, <8 x i64> <i64 1248, i64 1144, i64 1040, i64 936, i64 832, i64 728, i64 624, i64 520>), <8 x i64> splat (i64 68)), <8 x i1> splat (i1 true), <8 x float> poison)
  %wide.gep2485 = getelementptr inbounds nuw [4 x i8], <8 x ptr> %wide.gep2456, i64 %indvars.iv.next1777.3.i
  %wide.masked.gather2486 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep2485, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !12 ; 2 uses
  %i.ern = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather2486, %wide.masked.gather2482
  %i.ero = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather2486, %wide.masked.gather2484
  %i.erp = fadd reassoc nsz arcp contract afn <8 x float> %i.erl, %i.ern
  %i.erq = fadd reassoc nsz arcp contract afn <8 x float> %i.erm, %i.ero
  %wide.masked.gather2488 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 8 getelementptr inbounds nuw (i8, <8 x ptr> getelementptr inbounds nuw (i8, ptr @xtrans_fdc_interpolate.harr, <8 x i64> <i64 1248, i64 1144, i64 1040, i64 936, i64 832, i64 728, i64 624, i64 520>), <8 x i64> splat (i64 56)), <8 x i1> splat (i1 true), <8 x float> poison)
  %wide.masked.gather2490 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 getelementptr inbounds nuw (i8, <8 x ptr> getelementptr inbounds nuw (i8, ptr @xtrans_fdc_interpolate.harr, <8 x i64> <i64 1248, i64 1144, i64 1040, i64 936, i64 832, i64 728, i64 624, i64 520>), <8 x i64> splat (i64 60)), <8 x i1> splat (i1 true), <8 x float> poison)
  %wide.gep2491 = getelementptr inbounds nuw [4 x i8], <8 x ptr> %wide.gep2456, i64 %indvars.iv.next1777.4.i
  %wide.masked.gather2492 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep2491, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !12 ; 2 uses
  %i.err = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather2492, %wide.masked.gather2488
  %i.ers = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather2492, %wide.masked.gather2490
  %i.ert = fadd reassoc nsz arcp contract afn <8 x float> %i.erp, %i.err
  %i.eru = fadd reassoc nsz arcp contract afn <8 x float> %i.erq, %i.ers
  %wide.masked.gather2494 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 8 getelementptr inbounds nuw (i8, <8 x ptr> getelementptr inbounds nuw (i8, ptr @xtrans_fdc_interpolate.harr, <8 x i64> <i64 1248, i64 1144, i64 1040, i64 936, i64 832, i64 728, i64 624, i64 520>), <8 x i64> splat (i64 48)), <8 x i1> splat (i1 true), <8 x float> poison)
  %wide.masked.gather2496 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 getelementptr inbounds nuw (i8, <8 x ptr> getelementptr inbounds nuw (i8, ptr @xtrans_fdc_interpolate.harr, <8 x i64> <i64 1248, i64 1144, i64 1040, i64 936, i64 832, i64 728, i64 624, i64 520>), <8 x i64> splat (i64 52)), <8 x i1> splat (i1 true), <8 x float> poison)
  %wide.gep2497 = getelementptr inbounds nuw [4 x i8], <8 x ptr> %wide.gep2456, i64 %indvars.iv.next1777.5.i
  %wide.masked.gather2498 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep2497, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !12 ; 2 uses
  %i.erv = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather2498, %wide.masked.gather2494
  %i.erw = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather2498, %wide.masked.gather2496
  %i.erx = fadd reassoc nsz arcp contract afn <8 x float> %i.ert, %i.erv
  %i.ery = fadd reassoc nsz arcp contract afn <8 x float> %i.eru, %i.erw
  %wide.masked.gather2500 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 8 getelementptr inbounds nuw (i8, <8 x ptr> getelementptr inbounds nuw (i8, ptr @xtrans_fdc_interpolate.harr, <8 x i64> <i64 1248, i64 1144, i64 1040, i64 936, i64 832, i64 728, i64 624, i64 520>), <8 x i64> splat (i64 40)), <8 x i1> splat (i1 true), <8 x float> poison)
  %wide.masked.gather2502 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 getelementptr inbounds nuw (i8, <8 x ptr> getelementptr inbounds nuw (i8, ptr @xtrans_fdc_interpolate.harr, <8 x i64> <i64 1248, i64 1144, i64 1040, i64 936, i64 832, i64 728, i64 624, i64 520>), <8 x i64> splat (i64 44)), <8 x i1> splat (i1 true), <8 x float> poison)
  %wide.gep2503 = getelementptr inbounds nuw [4 x i8], <8 x ptr> %wide.gep2456, i64 %indvars.iv.next1777.6.i
  %wide.masked.gather2504 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep2503, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !12 ; 2 uses
  %i.erz = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather2504, %wide.masked.gather2500
  %i.esa = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather2504, %wide.masked.gather2502
  %i.esb = fadd reassoc nsz arcp contract afn <8 x float> %i.erx, %i.erz
  %i.esc = fadd reassoc nsz arcp contract afn <8 x float> %i.ery, %i.esa
  %wide.masked.gather2506 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 8 getelementptr inbounds nuw (i8, <8 x ptr> getelementptr inbounds nuw (i8, ptr @xtrans_fdc_interpolate.harr, <8 x i64> <i64 1248, i64 1144, i64 1040, i64 936, i64 832, i64 728, i64 624, i64 520>), <8 x i64> splat (i64 32)), <8 x i1> splat (i1 true), <8 x float> poison)
  %wide.masked.gather2508 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 getelementptr inbounds nuw (i8, <8 x ptr> getelementptr inbounds nuw (i8, ptr @xtrans_fdc_interpolate.harr, <8 x i64> <i64 1248, i64 1144, i64 1040, i64 936, i64 832, i64 728, i64 624, i64 520>), <8 x i64> splat (i64 36)), <8 x i1> splat (i1 true), <8 x float> poison)
  %wide.gep2509 = getelementptr inbounds nuw [4 x i8], <8 x ptr> %wide.gep2456, i64 %indvars.iv.next1777.7.i
  %wide.masked.gather2510 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep2509, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !12 ; 2 uses
  %i.esd = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather2510, %wide.masked.gather2506
  %i.ese = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather2510, %wide.masked.gather2508
  %i.esf = fadd reassoc nsz arcp contract afn <8 x float> %i.esb, %i.esd
  %i.esg = fadd reassoc nsz arcp contract afn <8 x float> %i.esc, %i.ese
  %wide.masked.gather2512 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 8 getelementptr inbounds nuw (i8, <8 x ptr> getelementptr inbounds nuw (i8, ptr @xtrans_fdc_interpolate.harr, <8 x i64> <i64 1248, i64 1144, i64 1040, i64 936, i64 832, i64 728, i64 624, i64 520>), <8 x i64> splat (i64 24)), <8 x i1> splat (i1 true), <8 x float> poison)
  %wide.masked.gather2514 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 getelementptr inbounds nuw (i8, <8 x ptr> getelementptr inbounds nuw (i8, ptr @xtrans_fdc_interpolate.harr, <8 x i64> <i64 1248, i64 1144, i64 1040, i64 936, i64 832, i64 728, i64 624, i64 520>), <8 x i64> splat (i64 28)), <8 x i1> splat (i1 true), <8 x float> poison)
  %wide.gep2515 = getelementptr inbounds nuw [4 x i8], <8 x ptr> %wide.gep2456, i64 %indvars.iv.next1777.8.i
  %wide.masked.gather2516 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep2515, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !12 ; 2 uses
  %i.esh = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather2516, %wide.masked.gather2512
  %i.esi = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather2516, %wide.masked.gather2514
  %i.esj = fadd reassoc nsz arcp contract afn <8 x float> %i.esf, %i.esh
  %i.esk = fadd reassoc nsz arcp contract afn <8 x float> %i.esg, %i.esi
  %wide.masked.gather2518 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 8 getelementptr inbounds nuw (i8, <8 x ptr> getelementptr inbounds nuw (i8, ptr @xtrans_fdc_interpolate.harr, <8 x i64> <i64 1248, i64 1144, i64 1040, i64 936, i64 832, i64 728, i64 624, i64 520>), <8 x i64> splat (i64 16)), <8 x i1> splat (i1 true), <8 x float> poison)
  %wide.masked.gather2520 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 getelementptr inbounds nuw (i8, <8 x ptr> getelementptr inbounds nuw (i8, ptr @xtrans_fdc_interpolate.harr, <8 x i64> <i64 1248, i64 1144, i64 1040, i64 936, i64 832, i64 728, i64 624, i64 520>), <8 x i64> splat (i64 20)), <8 x i1> splat (i1 true), <8 x float> poison)
  %wide.gep2521 = getelementptr inbounds nuw [4 x i8], <8 x ptr> %wide.gep2456, i64 %indvars.iv.next1777.9.i
  %wide.masked.gather2522 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep2521, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !12 ; 2 uses
  %i.esl = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather2522, %wide.masked.gather2518
  %i.esm = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather2522, %wide.masked.gather2520
  %i.esn = fadd reassoc nsz arcp contract afn <8 x float> %i.esj, %i.esl
  %i.eso = fadd reassoc nsz arcp contract afn <8 x float> %i.esk, %i.esm
  %wide.masked.gather2524 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 8 getelementptr inbounds nuw (i8, <8 x ptr> getelementptr inbounds nuw (i8, ptr @xtrans_fdc_interpolate.harr, <8 x i64> <i64 1248, i64 1144, i64 1040, i64 936, i64 832, i64 728, i64 624, i64 520>), <8 x i64> splat (i64 8)), <8 x i1> splat (i1 true), <8 x float> poison)
  %wide.masked.gather2526 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 getelementptr inbounds nuw (i8, <8 x ptr> getelementptr inbounds nuw (i8, ptr @xtrans_fdc_interpolate.harr, <8 x i64> <i64 1248, i64 1144, i64 1040, i64 936, i64 832, i64 728, i64 624, i64 520>), <8 x i64> splat (i64 12)), <8 x i1> splat (i1 true), <8 x float> poison)
  %wide.gep2527 = getelementptr inbounds nuw [4 x i8], <8 x ptr> %wide.gep2456, i64 %indvars.iv.next1777.10.i
  %wide.masked.gather2528 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep2527, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !12 ; 2 uses
  %i.esp = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather2528, %wide.masked.gather2524
  %i.esq = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather2528, %wide.masked.gather2526
  %i.esr = fadd reassoc nsz arcp contract afn <8 x float> %i.esn, %i.esp
  %i.ess = fadd reassoc nsz arcp contract afn <8 x float> %i.eso, %i.esq
  %wide.masked.gather2529 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 8 getelementptr inbounds nuw (i8, ptr @xtrans_fdc_interpolate.harr, <8 x i64> <i64 1248, i64 1144, i64 1040, i64 936, i64 832, i64 728, i64 624, i64 520>), <8 x i1> splat (i1 true), <8 x float> poison)
  %wide.masked.gather2531 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 getelementptr inbounds nuw (i8, <8 x ptr> getelementptr inbounds nuw (i8, ptr @xtrans_fdc_interpolate.harr, <8 x i64> <i64 1248, i64 1144, i64 1040, i64 936, i64 832, i64 728, i64 624, i64 520>), <8 x i64> splat (i64 4)), <8 x i1> splat (i1 true), <8 x float> poison)
  %wide.gep2532 = getelementptr inbounds nuw [4 x i8], <8 x ptr> %wide.gep2456, i64 %indvars.iv.next1777.11.i
  %wide.masked.gather2533 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep2532, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !12 ; 2 uses
  %i.est = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather2533, %wide.masked.gather2529
  %i.esu = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather2533, %wide.masked.gather2531
  %i.esv = fadd reassoc nsz arcp contract afn <8 x float> %i.esr, %i.est ; 2 uses
  %i.esw = fadd reassoc nsz arcp contract afn <8 x float> %i.ess, %i.esu ; 2 uses
  %wide.masked.gather2458.1 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 8 getelementptr inbounds nuw (i8, <8 x ptr> getelementptr inbounds nuw (i8, ptr @xtrans_fdc_interpolate.harr, <8 x i64> <i64 416, i64 312, i64 208, i64 104, i64 0, i64 -104, i64 -208, i64 -312>), <8 x i64> splat (i64 96)), <8 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 false, i1 false, i1 false>, <8 x float> poison)
  %wide.masked.gather2460.1 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 getelementptr inbounds nuw (i8, <8 x ptr> getelementptr inbounds nuw (i8, ptr @xtrans_fdc_interpolate.harr, <8 x i64> <i64 416, i64 312, i64 208, i64 104, i64 0, i64 -104, i64 -208, i64 -312>), <8 x i64> splat (i64 100)), <8 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 false, i1 false, i1 false>, <8 x float> poison)
  %wide.gep2461.1 = getelementptr inbounds nuw [4 x i8], <8 x ptr> %wide.gep2456.1, i64 %indvars.iv1774.i
  %wide.masked.gather2462.1 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep2461.1, <8 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 false, i1 false, i1 false>, <8 x float> poison), !tbaa !12 ; 2 uses
  %i.esx = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather2462.1, %wide.masked.gather2458.1
  %i.esy = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather2462.1, %wide.masked.gather2460.1
  %i.esz = fadd reassoc nsz arcp contract afn <8 x float> %i.esv, %i.esx
  %i.eta = fadd reassoc nsz arcp contract afn <8 x float> %i.esw, %i.esy
  %wide.masked.gather2464.1 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 8 getelementptr inbounds nuw (i8, <8 x ptr> getelementptr inbounds nuw (i8, ptr @xtrans_fdc_interpolate.harr, <8 x i64> <i64 416, i64 312, i64 208, i64 104, i64 0, i64 -104, i64 -208, i64 -312>), <8 x i64> splat (i64 88)), <8 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 false, i1 false, i1 false>, <8 x float> poison)
  %wide.masked.gather2466.1 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 getelementptr inbounds nuw (i8, <8 x ptr> getelementptr inbounds nuw (i8, ptr @xtrans_fdc_interpolate.harr, <8 x i64> <i64 416, i64 312, i64 208, i64 104, i64 0, i64 -104, i64 -208, i64 -312>), <8 x i64> splat (i64 92)), <8 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 false, i1 false, i1 false>, <8 x float> poison)
  %wide.gep2467.1 = getelementptr inbounds nuw [4 x i8], <8 x ptr> %wide.gep2456.1, i64 %indvars.iv.next1777.i
  %wide.masked.gather2468.1 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep2467.1, <8 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 false, i1 false, i1 false>, <8 x float> poison), !tbaa !12 ; 2 uses
  %i.etb = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather2468.1, %wide.masked.gather2464.1
  %i.etc = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather2468.1, %wide.masked.gather2466.1
end_hunk_4
begin_hunk_5_@process:bb.a
  store float %spec.select1153.2.i, ptr %i.fxb, align 4, !tbaa !12
  %indvars.iv.next1885.i = add nuw nsw i64 %indvars.iv1884.i, 1 ; 2 uses
  %exitcond1245.not = icmp eq i64 %indvars.iv.next1885.i, %umax1244
  br i1 %exitcond1245.not, label %._crit_edge1501.i, label %scalar.ph2086, !llvm.loop !228

xtrans_fdc_interpolate.exit:                      ; preds = %bb.ic, %._crit_edge1513.split.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #27
  br label %demosaic_box3.exit

bb.lh:                                            ; preds = %bb.ia
  br i1 %or.cond29, label %bb.li, label %bb.nt

bb.li:                                            ; preds = %bb.lh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #27
  %i.fxc = tail call ptr @dt_alloc_aligned(i64 noundef %i.apg) #27 ; 38 uses
  %i.fxd = ptrtoaddr ptr %i.fxc to i64            ; 3 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.fxc, i64 64) ]
  %.not.i498 = icmp eq ptr %i.fxc, null
  br i1 %.not.i498, label %bb.lj, label %.preheader1065.i

bb.lj:                                            ; preds = %bb.li
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.210) #27
  br label %xtrans_markesteijn_interpolate.exit

.preheader1065.i:                                 ; preds = %bb.li, %bb.ns
  %indvars.iv1325.i = phi i64 [ %indvars.iv.next1326.i, %bb.ns ], [ 0, %bb.li ] ; 4 uses
  %.08441080.i = phi i16 [ %.3.4.i, %bb.ns ], [ 0, %bb.li ]
  %.08481079.i = phi i16 [ %.3851.4.i, %bb.ns ], [ 0, %bb.li ]
  %i.fxe = trunc nsw i64 %indvars.iv1325.i to i32
  %i.fxf = trunc nuw nsw i64 %indvars.iv1325.i to i16
  %i.fxg = getelementptr inbounds nuw [48 x i8], ptr %i.e, i64 %indvars.iv1325.i
  %i.fxh = insertelement <4 x i32> poison, i32 %i.fxe, i64 0
  %i.fxi = shufflevector <4 x i32> %i.fxh, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.fxj = or <4 x i32> %i.fxi, <i32 600, i32 poison, i32 poison, i32 poison>
  %i.fxk = add nuw nsw <4 x i32> %i.fxi, <i32 poison, i32 601, i32 600, i32 599>
  %i.fxl = shufflevector <4 x i32> %i.fxj, <4 x i32> %i.fxk, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.fxm = urem <4 x i32> %i.fxl, splat (i32 6)   ; 4 uses
  %i.fxn = extractelement <4 x i32> %i.fxm, i64 0
  %i.fxo = zext nneg i32 %i.fxn to i64
  %i.fxp = getelementptr inbounds nuw [6 x i8], ptr %i.x, i64 %i.fxo
  %i.fxq = extractelement <4 x i32> %i.fxm, i64 1
  %i.fxr = zext nneg i32 %i.fxq to i64
  %i.fxs = getelementptr inbounds nuw [6 x i8], ptr %i.x, i64 %i.fxr
  %i.fxt = extractelement <4 x i32> %i.fxm, i64 2
  %i.fxu = zext nneg i32 %i.fxt to i64
  %i.fxv = getelementptr inbounds nuw [6 x i8], ptr %i.x, i64 %i.fxu ; 2 uses
  %i.fxw = extractelement <4 x i32> %i.fxm, i64 3
  %i.fxx = zext nneg i32 %i.fxw to i64
  %i.fxy = getelementptr inbounds nuw [6 x i8], ptr %i.x, i64 %i.fxx
  br label %.preheader1064.i

bb.lk:                                            ; preds = %bb.ns
  %i.fxz = sub nsw i32 %i.axe, %i.aph             ; 3 uses
  %i.fya = icmp slt i32 %.neg.i511, %i.fxz
  br i1 %i.fya, label %.lr.ph1250.i, label %._crit_edge1251.i

.lr.ph1250.i:                                     ; preds = %bb.lk
  %i.fyb = getelementptr inbounds nuw i8, ptr %i.fxc, i64 %i.api ; 12 uses
  %i.fyc = getelementptr inbounds nuw i8, ptr %i.fyb, i64 178608 ; 4 uses
  %i.fyd = getelementptr inbounds nuw i8, ptr %i.fyb, i64 59536 ; 4 uses
  %i.fye = getelementptr inbounds nuw i8, ptr %i.fyb, i64 %i.apj ; 3 uses
  %i.fyf = add nsw i32 %i.axe, %i.aph             ; 2 uses
  %i.fyg = shl nsw i32 %i.axe, 1
  %i.fyh = add i32 %i.fyg, -2                     ; 2 uses
  %i.fyi = zext nneg i16 %.3.4.i to i32           ; 3 uses
  %i.fyj = zext nneg i16 %.3851.4.i to i32        ; 2 uses
  %i.fyk = getelementptr inbounds nuw i8, ptr %i.fyb, i64 119072
  br i1 %i.apl, label %.lr.ph1246.us.preheader.i, label %.lr.ph1250.split.i

.lr.ph1246.us.preheader.i:                        ; preds = %.lr.ph1250.i
  %i.fyl = sext i32 %i.axe to i64                 ; 2 uses
  %i.fym = zext i16 %.3.4.i to i64                ; 4 uses
  %i.fyn = zext nneg i16 %.3851.4.i to i64
  %i.fyo = getelementptr inbounds nuw i8, ptr %i.fxc, i64 178608
  %i.fyp = getelementptr inbounds nuw i8, ptr %i.fxc, i64 357216
  %i.fyq = getelementptr inbounds nuw i8, ptr %i.fxc, i64 535824
  %invariant.gep = getelementptr i8, ptr %i.fye, i64 %i.apv ; 4 uses
  %i.fyr = add i64 %i.avb, %i.fxd
  %i.fys = add i64 %i.avc, %i.fxd
  %i.fyt = add i64 %i.avd, %i.fxd
  %i.fyu = insertelement <2 x i64> <i64 poison, i64 119072>, i64 %i.fyr, i64 0
  %i.fyv = getelementptr i8, ptr %i.fxc, i64 %i.api
  %i.fyw = getelementptr i8, ptr %i.fyv, i64 %i.auf
  %i.fyx = getelementptr i8, ptr %i.fxc, i64 %i.aug
  %i.fyy = getelementptr i8, ptr %i.fyx, i64 %i.auh
  %i.fyz = getelementptr i8, ptr %i.fyy, i64 -14884
  %i.fza = getelementptr i8, ptr %i.fxc, i64 %i.api
  %i.fzb = getelementptr i8, ptr %i.fza, i64 %i.auk
  %i.fzc = getelementptr i8, ptr %i.fzb, i64 178116
  %i.fzd = getelementptr i8, ptr %i.fxc, i64 %i.aul
  %i.fze = getelementptr i8, ptr %i.fzd, i64 %i.aum
  %i.fzf = getelementptr i8, ptr %i.fze, i64 118580
  %i.fzg = getelementptr i8, ptr %i.fxc, i64 %i.aun
  %i.fzh = getelementptr i8, ptr %i.fzg, i64 178120
  %i.fzi = getelementptr i8, ptr %i.fxc, i64 %i.auo
  %i.fzj = getelementptr i8, ptr %i.fzi, i64 %i.aum
  %i.fzk = getelementptr i8, ptr %i.fzj, i64 118584
  %i.fzl = getelementptr i8, ptr %i.fxc, i64 %i.aun
  %i.fzm = getelementptr i8, ptr %i.fzl, i64 178124
  %i.fzn = getelementptr i8, ptr %i.fxc, i64 %i.aup
  %i.fzo = getelementptr i8, ptr %i.fzn, i64 %i.aum
  %i.fzp = getelementptr i8, ptr %i.fzo, i64 118588
  %i.fzq = getelementptr i8, ptr %i.fxc, i64 %i.auq
  %i.fzr = getelementptr i8, ptr %i.fzq, i64 178604
  %i.fzs = getelementptr i8, ptr %i.fxc, i64 %i.aur
  %i.fzt = getelementptr i8, ptr %i.fzs, i64 %i.aum
  %i.fzu = getelementptr i8, ptr %i.fzt, i64 119068
  %i.fzv = getelementptr i8, ptr %i.fxc, i64 %i.auq
  %i.fzw = getelementptr i8, ptr %i.fzv, i64 178608
  %i.fzx = getelementptr i8, ptr %i.fxc, i64 %i.aus
  %i.fzy = getelementptr i8, ptr %i.fzx, i64 %i.aum
  %i.fzz = getelementptr i8, ptr %i.fzy, i64 119072
  %i.gaa = getelementptr i8, ptr %i.fxc, i64 %i.aut
  %i.gab = getelementptr i8, ptr %i.gaa, i64 178612
  %i.gac = getelementptr i8, ptr %i.fxc, i64 %i.auu
  %i.gad = getelementptr i8, ptr %i.gac, i64 %i.aum
  %i.gae = getelementptr i8, ptr %i.gad, i64 119076
  %i.gaf = getelementptr i8, ptr %i.fxc, i64 %i.aut
  %i.gag = getelementptr i8, ptr %i.gaf, i64 179092
  %i.gah = getelementptr i8, ptr %i.fxc, i64 %i.auv
  %i.gai = getelementptr i8, ptr %i.gah, i64 %i.aum
  %i.gaj = getelementptr i8, ptr %i.gai, i64 119556
  %i.gak = getelementptr i8, ptr %i.fxc, i64 %i.auw
  %i.gal = getelementptr i8, ptr %i.gak, i64 179096
  %i.gam = getelementptr i8, ptr %i.fxc, i64 %i.aux
  %i.gan = getelementptr i8, ptr %i.gam, i64 %i.aum
  %i.gao = getelementptr i8, ptr %i.gan, i64 119560
  %i.gap = getelementptr i8, ptr %i.fxc, i64 %i.auw
  %i.gaq = getelementptr i8, ptr %i.gap, i64 179100
  %i.gar = getelementptr i8, ptr %i.fxc, i64 %i.auy
  %i.gas = getelementptr i8, ptr %i.gar, i64 %i.aum
  %i.gat = getelementptr i8, ptr %i.gas, i64 119564
  %i.gau = getelementptr i8, ptr %i.fxc, i64 %i.avq
  %i.gav = getelementptr i8, ptr %i.gau, i64 %i.avr
  %i.gaw = getelementptr i8, ptr %i.gav, i64 -5
  br label %.lr.ph1246.us.i

.lr.ph1246.us.i:                                  ; preds = %._crit_edge1247.us.i, %.lr.ph1246.us.preheader.i
  %indvars.iv1185 = phi i32 [ %indvars.iv.next1186, %._crit_edge1247.us.i ], [ %i.ato, %.lr.ph1246.us.preheader.i ] ; 2 uses
  %indvars.iv1426.i = phi i32 [ %indvars.iv.next1427.i, %._crit_edge1247.us.i ], [ %i.aqc, %.lr.ph1246.us.preheader.i ] ; 2 uses
  %indvars.iv1407.i = phi i32 [ %indvars.iv.next1408.i, %._crit_edge1247.us.i ], [ %i.aqa, %.lr.ph1246.us.preheader.i ] ; 2 uses
  %indvars.iv1380.i = phi i32 [ %indvars.iv.next1381.i, %._crit_edge1247.us.i ], [ %i.apz, %.lr.ph1246.us.preheader.i ] ; 2 uses
  %indvars.iv1366.i = phi i32 [ %indvars.iv.next1367.i, %._crit_edge1247.us.i ], [ %i.apy, %.lr.ph1246.us.preheader.i ] ; 2 uses
  %indvars.iv1341.i = phi i32 [ %indvars.iv.next1342.i, %._crit_edge1247.us.i ], [ %.neg.i511, %.lr.ph1246.us.preheader.i ] ; 13 uses
  %i.gax = sext i32 %indvars.iv1426.i to i64
  %i.gay = sext i32 %indvars.iv1407.i to i64
  %i.gaz = sext i32 %indvars.iv1380.i to i64
  %i.gba = sext i32 %indvars.iv1366.i to i64
  %i.gbb = sext i32 %indvars.iv1341.i to i64      ; 6 uses
  %i.gbc = add nsw i32 %indvars.iv1341.i, 122
  %..us.i = tail call i32 @llvm.smin.i32(i32 %i.gbc, i32 %i.fyf) ; 7 uses
  %i.gbd = icmp sgt i32 %i.fyf, %indvars.iv1341.i
  %i.gbe = add nsw i32 %indvars.iv1341.i, 3       ; 3 uses
  %i.gbf = add nsw i32 %..us.i, -3                ; 3 uses
  %i.gbg = icmp slt i32 %i.gbe, %i.gbf
  %i.gbh = add nsw i32 %..us.i, -4
  %i.gbi = sub nsw i32 %indvars.iv1341.i, %i.fyi
  %.fr.us.i = freeze i32 %i.gbi
  %i.gbj = add i32 %.fr.us.i, %i.apq              ; 2 uses
  %i.gbk = srem i32 %i.gbj, 3
  %i.gbl = add i32 %i.gbj, %i.fyi
  %i.gbm = sub i32 %i.gbl, %i.gbk                 ; 2 uses
  %i.gbn = sub nsw i32 %..us.i, %i.app            ; 3 uses
  %i.gbo = icmp sge i32 %i.gbm, %i.gbn
  %i.gbp = add nsw i32 %indvars.iv1341.i, %i.app
  %i.gbq = icmp sge i32 %i.gbp, %i.gbn
  %i.gbr = add nsw i32 %indvars.iv1341.i, %i.apr
  %i.gbs = sub nsw i32 %..us.i, %i.apr            ; 2 uses
  %i.gbt = icmp slt i32 %i.gbr, %i.gbs
  %i.gbu = add nsw i32 %indvars.iv1341.i, 6
  %i.gbv = add nsw i32 %..us.i, -6                ; 2 uses
  %i.gbw = icmp sge i32 %i.gbu, %i.gbv
  %i.gbx = sub nsw i32 %..us.i, %indvars.iv1341.i ; 4 uses
  %i.gby = sub nsw i32 %i.gbx, %i.aps             ; 2 uses
  %i.gbz = icmp slt i32 %i.aps, %i.gby
  %i.gca = sub nsw i32 %i.gbx, %i.apt             ; 2 uses
  %i.gcb = icmp slt i32 %i.apt, %i.gca
  %i.gcc = sub nsw i32 %i.gbx, %i.apu             ; 2 uses
  %i.gcd = icmp slt i32 %i.apu, %i.gcc
  %i.gce = sub nsw i32 %i.gbx, %i.aph             ; 2 uses
  %i.gcf = icmp slt i32 %i.aph, %i.gce
  %i.gcg = sext i32 %..us.i to i64
  %i.gch = sext i32 %i.gbf to i64
  %i.gci = sext i32 %i.gbv to i64
  %i.gcj = sext i32 %i.gbm to i64
  %i.gck = sext i32 %i.gbn to i64                 ; 2 uses
  %i.gcl = sext i32 %i.gbs to i64
  %i.gcm = sext i32 %i.gby to i64
  %i.gcn = sext i32 %i.gca to i64
  %i.gco = sext i32 %i.gcc to i64
  %i.gcp = sext i32 %i.gce to i64                 ; 6 uses
  br label %bb.ll

bb.ll:                                            ; preds = %._crit_edge1241.split.us.i, %.lr.ph1246.us.i
  %indvar2635 = phi i32 [ %indvar.next2636, %._crit_edge1241.split.us.i ], [ 0, %.lr.ph1246.us.i ] ; 3 uses
  %indvars.iv1177 = phi i32 [ %indvars.iv.next1178, %._crit_edge1241.split.us.i ], [ %i.ato, %.lr.ph1246.us.i ] ; 2 uses
  %indvars.iv1421.i = phi i32 [ %indvars.iv.next1422.i, %._crit_edge1241.split.us.i ], [ %i.aqc, %.lr.ph1246.us.i ] ; 2 uses
  %indvars.iv1402.i = phi i32 [ %indvars.iv.next1403.i, %._crit_edge1241.split.us.i ], [ %i.aqa, %.lr.ph1246.us.i ] ; 2 uses
  %indvars.iv1375.i = phi i32 [ %indvars.iv.next1376.i, %._crit_edge1241.split.us.i ], [ %i.apz, %.lr.ph1246.us.i ] ; 2 uses
  %indvars.iv1361.i = phi i32 [ %indvars.iv.next1362.i, %._crit_edge1241.split.us.i ], [ %i.apy, %.lr.ph1246.us.i ] ; 2 uses
  %indvars.iv1336.i = phi i32 [ %indvars.iv.next1337.i, %._crit_edge1241.split.us.i ], [ %.neg.i511, %.lr.ph1246.us.i ] ; 14 uses
  %i.gcq = sext i32 %indvars.iv1336.i to i64
  %i.gcr = add nsw i64 %i.gcq, 1
  %i.gcs = mul i32 %reass.sub955.i, %indvar2635
  %i.gct = add i32 %i.auj, %i.gcs
  %smin2637 = call i32 @llvm.smin.i32(i32 %i.gct, i32 %i.apm)
  %i.gcu = mul i32 %reass.sub955.i.neg, %indvar2635
  %i.gcv = add i32 %i.gcu, 2
  %i.gcw = add i32 %smin2637, %i.gcv
  %i.gcx = zext i32 %i.gcw to i64
  %umax2638 = call i64 @llvm.umax.i64(i64 %i.aui, i64 %i.gcx) ; 2 uses
  %i.gcy = shl nuw nsw i64 %umax2638, 2           ; 9 uses
  %i.gcz = sext i32 %indvars.iv1421.i to i64
  %i.gda = sext i32 %indvars.iv1402.i to i64
  %i.gdb = sext i32 %indvars.iv1375.i to i64
  %i.gdc = sext i32 %indvars.iv1361.i to i64
  %i.gdd = sext i32 %indvars.iv1336.i to i64      ; 7 uses
  %i.gde = add i32 %indvars.iv1336.i, 122
  %i.gdf = tail call i32 @llvm.smin.i32(i32 %i.gde, i32 %i.apm) ; 7 uses
  %i.gdg = icmp sgt i32 %i.apm, %indvars.iv1336.i
  %or.cond.i512 = select i1 %i.gbd, i1 %i.gdg, i1 false
  br i1 %or.cond.i512, label %.preheader1056.us.preheader.i, label %.preheader1061.us.i

.preheader1056.us.preheader.i:                    ; preds = %bb.ll
  %i.gdh = sext i32 %i.gdf to i64
  br label %.preheader1056.us.i

.preheader1056.us.i:                              ; preds = %._crit_edge.us.i, %.preheader1056.us.preheader.i
  %indvars.iv1187 = phi i32 [ %indvars.iv.next1188, %._crit_edge.us.i ], [ %indvars.iv1185, %.preheader1056.us.preheader.i ] ; 2 uses
  %indvars.iv1343.i = phi i64 [ %indvars.iv.next1344.i, %._crit_edge.us.i ], [ %i.gbb, %.preheader1056.us.preheader.i ] ; 6 uses
  %i.gdi = sext i32 %indvars.iv1187 to i64
  %i.gdj = sub nsw i64 %indvars.iv1343.i, %i.gbb
  %i.gdk = getelementptr inbounds [1464 x i8], ptr %i.fxc, i64 %i.gdj
  %i.gdl = icmp slt i64 %indvars.iv1343.i, %i.fyl ; 2 uses
  %i.gdm = trunc i64 %indvars.iv1343.i to i32     ; 4 uses
  %i.gdn = sub i32 %i.fyh, %i.gdm
  %i.gdo = tail call i32 @llvm.abs.i32(i32 %i.gdm, i1 true)
  %i.gdp = mul nuw nsw i64 %indvars.iv1343.i, %i.aoc
  %..i519 = select i1 %i.gdl, i32 %i.gdo, i32 %i.gdn ; 2 uses
  %i.gdq = insertelement <2 x i32> poison, i32 %i.gdm, i64 0
  %i.gdr = insertelement <2 x i32> %i.gdq, i32 %..i519, i64 1
  %i.gds = add <2 x i32> %i.gdr, splat (i32 600)
  %i.gdt = srem <2 x i32> %i.gds, splat (i32 6)   ; 2 uses
  %i.gdu = extractelement <2 x i32> %i.gdt, i64 0
  %i.gdv = sext i32 %i.gdu to i64
  %i.gdw = getelementptr inbounds [6 x i8], ptr %i.x, i64 %i.gdv
  %i.gdx = extractelement <2 x i32> %i.gdt, i64 1
  %i.gdy = sext i32 %i.gdx to i64
  %i.gdz = getelementptr inbounds [6 x i8], ptr %i.x, i64 %i.gdy
  %i.gea = mul nsw i32 %..i519, %i.bo
  %invariant.gep.i520 = getelementptr [4 x i8], ptr %i.axo, i64 %i.gdp
  br label %bb.lm

bb.lm:                                            ; preds = %.loopexit1051.us.i, %.preheader1056.us.i
  %indvar2766 = phi i64 [ %indvar.next2767, %.loopexit1051.us.i ], [ 0, %.preheader1056.us.i ] ; 2 uses
  %indvars.iv1179 = phi i32 [ %indvars.iv.next1180, %.loopexit1051.us.i ], [ %indvars.iv1177, %.preheader1056.us.i ] ; 5 uses
  %indvars.iv1338.i = phi i64 [ %indvars.iv.next1339.i, %.loopexit1051.us.i ], [ %i.gdd, %.preheader1056.us.i ] ; 7 uses
  %i.geb = add i64 %i.gcr, %indvar2766
  %i.gec = sext i32 %indvars.iv1179 to i64        ; 2 uses
  %smax2768 = call i64 @llvm.smax.i64(i64 %i.geb, i64 %i.gec)
  %i.ged = add i64 %smax2768, 1
  %i.gee = sub i64 %i.ged, %i.gec                 ; 13 uses
  %i.gef = sext i32 %indvars.iv1179 to i64        ; 10 uses
  %i.geg = sub nsw i64 %indvars.iv1338.i, %i.gdd
  %i.geh = getelementptr inbounds [12 x i8], ptr %i.gdk, i64 %i.geg ; 7 uses
  %i.gei = trunc nsw i64 %indvars.iv1338.i to i32 ; 4 uses
  %i.gej = or i32 %i.gei, %i.gdm
  %or.cond.us.i521 = icmp sgt i32 %i.gej, -1
  %i.gek = icmp slt i64 %indvars.iv1338.i, %i.aoc ; 2 uses
  %or.cond980.us.i = and i1 %i.gek, %or.cond.us.i521
  %or.cond981.us.i = and i1 %i.gdl, %or.cond980.us.i
  %i.gel = add i32 %i.gei, 600
  %i.gem = srem i32 %i.gel, 6
  %i.gen = sext i32 %i.gem to i64
  %i.geo = getelementptr inbounds i8, ptr %i.gdw, i64 %i.gen
  %i.gep = load i8, ptr %i.geo, align 1, !tbaa !133 ; 11 uses
  br i1 %or.cond981.us.i, label %bb.ly, label %bb.ln

bb.ln:                                            ; preds = %bb.lm
  %i.geq = sub i32 %i.apo, %i.gei
  %i.ger = tail call i32 @llvm.abs.i32(i32 %i.gei, i1 true)
  %i.ges = zext i8 %i.gep to i64                  ; 2 uses
  %i.get = getelementptr inbounds nuw [4 x i8], ptr %i.geh, i64 %i.ges ; 2 uses
  %i.geu = select i1 %i.gek, i32 %i.ger, i32 %i.geq ; 2 uses
  %i.gev = add nsw i32 %i.geu, 600
  %i.gew = srem i32 %i.gev, 6
  %i.gex = sext i32 %i.gew to i64
  %i.gey = getelementptr inbounds i8, ptr %i.gdz, i64 %i.gex
  %i.gez = add nsw i32 %i.geu, %i.gea
  %i.gfa = sext i32 %i.gez to i64
  %i.gfb = getelementptr inbounds [4 x i8], ptr %i.axo, i64 %i.gfa
  %min.iters.check2858 = icmp ult i64 %i.gee, 4   ; 2 uses
  %min.iters.check2860 = icmp ult i64 %i.gee, 16
  %i.gfc = and i64 %i.gee, 12
  %n.vec2862 = and i64 %i.gee, -16                ; 4 uses
  %i.gfd = add i64 %n.vec2862, %i.gef             ; 2 uses
  %broadcast.splatinsert2869 = insertelement <8 x i8> poison, i8 %i.gep, i64 0
  %broadcast.splat2870 = shufflevector <8 x i8> %broadcast.splatinsert2869, <8 x i8> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert2871 = insertelement <8 x i64> poison, i64 %i.gef, i64 0
  %broadcast.splat2872 = shufflevector <8 x i64> %broadcast.splatinsert2871, <8 x i64> poison, <8 x i32> zeroinitializer
  %induction2873 = add nsw <8 x i64> %broadcast.splat2872, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  %broadcast.splatinsert2874 = insertelement <8 x i32> poison, i32 %indvars.iv1179, i64 0
  %broadcast.splat2875 = shufflevector <8 x i32> %broadcast.splatinsert2874, <8 x i32> poison, <8 x i32> zeroinitializer
  %induction2876 = add <8 x i32> %broadcast.splat2875, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %cmp.n2901 = icmp eq i64 %i.gee, %n.vec2862
  %min.epilog.iters.check2909 = icmp eq i64 %i.gfc, 0
  %n.vec2911 = and i64 %i.gee, -4                 ; 3 uses
  %i.gfe = add i64 %n.vec2911, %i.gef
  %broadcast.splatinsert2918 = insertelement <4 x i8> poison, i8 %i.gep, i64 0
  %broadcast.splat2919 = shufflevector <4 x i8> %broadcast.splatinsert2918, <4 x i8> poison, <4 x i32> zeroinitializer
  %cmp.n2940 = icmp eq i64 %i.gee, %n.vec2911
  %min.iters.check2772 = icmp ult i64 %i.gee, 16
  %i.gff = and i64 %i.gee, 12
  %n.vec2774 = and i64 %i.gee, -16                ; 4 uses
  %i.gfg = add i64 %n.vec2774, %i.gef             ; 2 uses
  %broadcast.splatinsert2781 = insertelement <8 x i8> poison, i8 %i.gep, i64 0
  %broadcast.splat2782 = shufflevector <8 x i8> %broadcast.splatinsert2781, <8 x i8> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert2783 = insertelement <8 x i64> poison, i64 %i.gef, i64 0
  %broadcast.splat2784 = shufflevector <8 x i64> %broadcast.splatinsert2783, <8 x i64> poison, <8 x i32> zeroinitializer
  %induction2785 = add nsw <8 x i64> %broadcast.splat2784, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  %broadcast.splatinsert2786 = insertelement <8 x i32> poison, i32 %indvars.iv1179, i64 0
  %broadcast.splat2787 = shufflevector <8 x i32> %broadcast.splatinsert2786, <8 x i32> poison, <8 x i32> zeroinitializer
  %induction2788 = add <8 x i32> %broadcast.splat2787, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %cmp.n2813 = icmp eq i64 %i.gee, %n.vec2774
  %min.epilog.iters.check2821 = icmp eq i64 %i.gff, 0
  %n.vec2823 = and i64 %i.gee, -4                 ; 3 uses
  %i.gfh = add i64 %n.vec2823, %i.gef
  %broadcast.splatinsert2830 = insertelement <4 x i8> poison, i8 %i.gep, i64 0
  %broadcast.splat2831 = shufflevector <4 x i8> %broadcast.splatinsert2830, <4 x i8> poison, <4 x i32> zeroinitializer
  %cmp.n2852 = icmp eq i64 %i.gee, %n.vec2823
  br label %bb.lo

bb.lo:                                            ; preds = %bb.lx, %bb.ln
  %indvars.iv1328.i = phi i64 [ %indvars.iv.next1329.i, %bb.lx ], [ 0, %bb.ln ] ; 3 uses
  %.not973.us.i = icmp eq i64 %indvars.iv1328.i, %i.ges
  br i1 %.not973.us.i, label %bb.lq, label %bb.lp

bb.lp:                                            ; preds = %bb.lo
  %i.gfi = getelementptr inbounds nuw [4 x i8], ptr %i.geh, i64 %indvars.iv1328.i
  store float 0.000000e+00, ptr %i.gfi, align 4, !tbaa !12
  br label %bb.lx

bb.lq:                                            ; preds = %bb.lo
  %i.gfj = load i8, ptr %i.gey, align 1, !tbaa !133
  %i.gfk = icmp eq i8 %i.gep, %i.gfj
  br i1 %i.gfk, label %bb.lw, label %.preheader.i522

.preheader.i522:                                  ; preds = %bb.lq, %.split1085.us1261.i
  %indvars.iv1189 = phi i64 [ %indvars.iv.next1190, %.split1085.us1261.i ], [ %i.gdi, %bb.lq ] ; 4 uses
  %.09001088.us.i = phi i8 [ %.us-phi1086.us.i, %.split1085.us1261.i ], [ 0, %bb.lq ] ; 6 uses
  %.09031087.us.i = phi float [ %.us-phi.us.i, %.split1085.us1261.i ], [ 0.000000e+00, %bb.lq ] ; 6 uses
  %.not978.us.i = icmp slt i64 %indvars.iv1189, %i.fyl
  %i.gfl = trunc nsw i64 %indvars.iv1189 to i32   ; 2 uses
  br i1 %.not978.us.i, label %iter.check2818, label %iter.check2906

iter.check2906:                                   ; preds = %.preheader.i522
  %i.gfm = sub i32 %i.fyh, %i.gfl                 ; 2 uses
  %i.gfn = add nsw i32 %i.gfm, 600
  %i.gfo = srem i32 %i.gfn, 6
  %i.gfp = sext i32 %i.gfo to i64
  %i.gfq = getelementptr inbounds [6 x i8], ptr %i.x, i64 %i.gfp ; 21 uses
  %i.gfr = mul nsw i32 %i.gfm, %i.bo              ; 3 uses
  br i1 %min.iters.check2858, label %vec.epilog.scalar.ph2907.preheader, label %vector.main.loop.iter.check2859

vector.main.loop.iter.check2859:                  ; preds = %iter.check2906
  br i1 %min.iters.check2860, label %vec.epilog.ph2910, label %vector.ph2861

vector.ph2861:                                    ; preds = %vector.main.loop.iter.check2859
  %i.gfs = insertelement <8 x i8> <i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, i8 %.09001088.us.i, i64 0
  %i.gft = insertelement <8 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %.09031087.us.i, i64 0
  %broadcast.splatinsert2863 = insertelement <8 x i32> poison, i32 %i.gfr, i64 0
  %broadcast.splat2864 = shufflevector <8 x i32> %broadcast.splatinsert2863, <8 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body2877

vector.body2877:                                  ; preds = %vector.ph2861, %vector.body2877
  %index2878 = phi i64 [ 0, %vector.ph2861 ], [ %index.next2895, %vector.body2877 ]
  %vec.ind2879 = phi <8 x i64> [ %induction2873, %vector.ph2861 ], [ %vec.ind.next2896.a, %vector.body2877 ] ; 3 uses
  %vec.phi2880.a = phi <8 x i8> [ %i.gfs, %vector.ph2861 ], [ %predphi2893.a, %vector.body2877 ]
  %vec.phi2881.a = phi <8 x i8> [ zeroinitializer, %vector.ph2861 ], [ %predphi2894, %vector.body2877 ]
  %vec.phi2882.a = phi <8 x float> [ %i.gft, %vector.ph2861 ], [ %predphi2891.a, %vector.body2877 ] ; 2 uses
  %vec.phi2883 = phi <8 x float> [ zeroinitializer, %vector.ph2861 ], [ %predphi2892.a, %vector.body2877 ] ; 2 uses
  %vec.ind2884 = phi <8 x i32> [ %induction2876, %vector.ph2861 ], [ %vec.ind.next2897, %vector.body2877 ] ; 4 uses
  %step.add2885.a = add nsw <8 x i64> %vec.ind2879, splat (i64 8)
  %step.add2886 = add <8 x i32> %vec.ind2884, splat (i32 8) ; 2 uses
  %i.gfu = icmp slt <8 x i64> %vec.ind2879, %broadcast.splat2866
  %i.gfv = icmp slt <8 x i64> %step.add2885.a, %broadcast.splat2866
  %i.gfw = sub <8 x i32> %broadcast.splat2868, %vec.ind2884
  %i.gfx = sub <8 x i32> %broadcast.splat2868, %step.add2886
  %i.gfy = call <8 x i32> @llvm.abs.v8i32(<8 x i32> %vec.ind2884, i1 true)
  %i.gfz = call <8 x i32> @llvm.abs.v8i32(<8 x i32> %step.add2886, i1 true)
  %i.gga = select <8 x i1> %i.gfu, <8 x i32> %i.gfy, <8 x i32> %i.gfw ; 2 uses
  %i.ggb = select <8 x i1> %i.gfv, <8 x i32> %i.gfz, <8 x i32> %i.gfx ; 2 uses
  %i.ggc = add nsw <8 x i32> %i.gga, splat (i32 600)
  %i.ggd = add nsw <8 x i32> %i.ggb, splat (i32 600)
  %i.gge = srem <8 x i32> %i.ggc, splat (i32 6)
  %i.ggf = srem <8 x i32> %i.ggd, splat (i32 6)
  %i.ggg = sext <8 x i32> %i.gge to <8 x i64>     ; 8 uses
  %i.ggh = sext <8 x i32> %i.ggf to <8 x i64>     ; 8 uses
  %i.ggi = extractelement <8 x i64> %i.ggg, i64 0
  %i.ggj = getelementptr inbounds i8, ptr %i.gfq, i64 %i.ggi
  %i.ggk = extractelement <8 x i64> %i.ggg, i64 1
  %i.ggl = getelementptr inbounds i8, ptr %i.gfq, i64 %i.ggk
  %i.ggm = extractelement <8 x i64> %i.ggg, i64 2
  %i.ggn = getelementptr inbounds i8, ptr %i.gfq, i64 %i.ggm
  %i.ggo = extractelement <8 x i64> %i.ggg, i64 3
  %i.ggp = getelementptr inbounds i8, ptr %i.gfq, i64 %i.ggo
  %i.ggq = extractelement <8 x i64> %i.ggg, i64 4
  %i.ggr = getelementptr inbounds i8, ptr %i.gfq, i64 %i.ggq
  %i.ggs = extractelement <8 x i64> %i.ggg, i64 5
  %i.ggt = getelementptr inbounds i8, ptr %i.gfq, i64 %i.ggs
  %i.ggu = extractelement <8 x i64> %i.ggg, i64 6
  %i.ggv = getelementptr inbounds i8, ptr %i.gfq, i64 %i.ggu
  %i.ggw = extractelement <8 x i64> %i.ggg, i64 7
  %i.ggx = getelementptr inbounds i8, ptr %i.gfq, i64 %i.ggw
  %i.ggy = extractelement <8 x i64> %i.ggh, i64 0
  %i.ggz = getelementptr inbounds i8, ptr %i.gfq, i64 %i.ggy
  %i.gha = extractelement <8 x i64> %i.ggh, i64 1
  %i.ghb = getelementptr inbounds i8, ptr %i.gfq, i64 %i.gha
  %i.ghc = extractelement <8 x i64> %i.ggh, i64 2
  %i.ghd = getelementptr inbounds i8, ptr %i.gfq, i64 %i.ghc
  %i.ghe = extractelement <8 x i64> %i.ggh, i64 3
  %i.ghf = getelementptr inbounds i8, ptr %i.gfq, i64 %i.ghe
  %i.ghg = extractelement <8 x i64> %i.ggh, i64 4
  %i.ghh = getelementptr inbounds i8, ptr %i.gfq, i64 %i.ghg
  %i.ghi = extractelement <8 x i64> %i.ggh, i64 5
  %i.ghj = getelementptr inbounds i8, ptr %i.gfq, i64 %i.ghi
  %i.ghk = extractelement <8 x i64> %i.ggh, i64 6
  %i.ghl = getelementptr inbounds i8, ptr %i.gfq, i64 %i.ghk
  %i.ghm = extractelement <8 x i64> %i.ggh, i64 7
  %i.ghn = getelementptr inbounds i8, ptr %i.gfq, i64 %i.ghm
  %i.gho = load i8, ptr %i.ggj, align 1, !tbaa !133
  %i.ghp = load i8, ptr %i.ggl, align 1, !tbaa !133
  %i.ghq = load i8, ptr %i.ggn, align 1, !tbaa !133
  %i.ghr = load i8, ptr %i.ggp, align 1, !tbaa !133
  %i.ghs = load i8, ptr %i.ggr, align 1, !tbaa !133
  %i.ght = load i8, ptr %i.ggt, align 1, !tbaa !133
  %i.ghu = load i8, ptr %i.ggv, align 1, !tbaa !133
  %i.ghv = load i8, ptr %i.ggx, align 1, !tbaa !133
  %i.ghw = insertelement <8 x i8> poison, i8 %i.gho, i64 0
  %i.ghx = insertelement <8 x i8> %i.ghw, i8 %i.ghp, i64 1
  %i.ghy = insertelement <8 x i8> %i.ghx, i8 %i.ghq, i64 2
  %i.ghz = insertelement <8 x i8> %i.ghy, i8 %i.ghr, i64 3
  %i.gia = insertelement <8 x i8> %i.ghz, i8 %i.ghs, i64 4
  %i.gib = insertelement <8 x i8> %i.gia, i8 %i.ght, i64 5
  %i.gic = insertelement <8 x i8> %i.gib, i8 %i.ghu, i64 6
  %i.gid = insertelement <8 x i8> %i.gic, i8 %i.ghv, i64 7
  %i.gie = load i8, ptr %i.ggz, align 1, !tbaa !133
  %i.gif = load i8, ptr %i.ghb, align 1, !tbaa !133
  %i.gig = load i8, ptr %i.ghd, align 1, !tbaa !133
  %i.gih = load i8, ptr %i.ghf, align 1, !tbaa !133
  %i.gii = load i8, ptr %i.ghh, align 1, !tbaa !133
  %i.gij = load i8, ptr %i.ghj, align 1, !tbaa !133
  %i.gik = load i8, ptr %i.ghl, align 1, !tbaa !133
  %i.gil = load i8, ptr %i.ghn, align 1, !tbaa !133
  %i.gim = insertelement <8 x i8> poison, i8 %i.gie, i64 0
  %i.gin = insertelement <8 x i8> %i.gim, i8 %i.gif, i64 1
  %i.gio = insertelement <8 x i8> %i.gin, i8 %i.gig, i64 2
  %i.gip = insertelement <8 x i8> %i.gio, i8 %i.gih, i64 3
  %i.giq = insertelement <8 x i8> %i.gip, i8 %i.gii, i64 4
  %i.gir = insertelement <8 x i8> %i.giq, i8 %i.gij, i64 5
  %i.gis = insertelement <8 x i8> %i.gir, i8 %i.gik, i64 6
  %i.git = insertelement <8 x i8> %i.gis, i8 %i.gil, i64 7
  %i.giu = icmp eq <8 x i8> %i.gid, %broadcast.splat2870 ; 3 uses
  %i.giv = icmp eq <8 x i8> %i.git, %broadcast.splat2870 ; 3 uses
  %i.giw = add nsw <8 x i32> %i.gga, %broadcast.splat2864
  %i.gix = add nsw <8 x i32> %i.ggb, %broadcast.splat2864
  %i.giy = sext <8 x i32> %i.giw to <8 x i64>
  %i.giz = sext <8 x i32> %i.gix to <8 x i64>
  %wide.gep2887.a = getelementptr inbounds [4 x i8], ptr %i.axo, <8 x i64> %i.giy
  %wide.gep2888 = getelementptr inbounds [4 x i8], ptr %i.axo, <8 x i64> %i.giz
  %wide.masked.gather2889.a = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep2887.a, <8 x i1> %i.giu, <8 x float> poison), !tbaa !12
  %wide.masked.gather2890 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep2888, <8 x i1> %i.giv, <8 x float> poison), !tbaa !12
  %i.gja = call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %wide.masked.gather2889.a, <8 x float> zeroinitializer)
  %i.gjb = call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %wide.masked.gather2890, <8 x float> zeroinitializer)
  %i.gjc = fadd reassoc nsz arcp contract afn <8 x float> %i.gja, %vec.phi2882.a
  %i.gjd = fadd reassoc nsz arcp contract afn <8 x float> %i.gjb, %vec.phi2883
  %predphi2891.a = select nsz <8 x i1> %i.giu, <8 x float> %i.gjc, <8 x float> %vec.phi2882.a ; 2 uses
  %predphi2892.a = select nsz <8 x i1> %i.giv, <8 x float> %i.gjd, <8 x float> %vec.phi2883 ; 2 uses
  %i.gje = zext <8 x i1> %i.giu to <8 x i8>
  %predphi2893.a = add <8 x i8> %vec.phi2880.a, %i.gje ; 2 uses
  %i.gjf = zext <8 x i1> %i.giv to <8 x i8>
  %predphi2894 = add <8 x i8> %vec.phi2881.a, %i.gjf ; 2 uses
  %index.next2895 = add nuw i64 %index2878, 16    ; 2 uses
  %vec.ind.next2896.a = add nsw <8 x i64> %vec.ind2879, splat (i64 16)
  %vec.ind.next2897 = add <8 x i32> %vec.ind2884, splat (i32 16)
  %i.gjg = icmp eq i64 %index.next2895, %n.vec2862
  br i1 %i.gjg, label %middle.block2898, label %vector.body2877, !llvm.loop !229

middle.block2898:                                 ; preds = %vector.body2877
  %bin.rdx2899.a = add <8 x i8> %predphi2894, %predphi2893.a
  %i.gjh = call i8 @llvm.vector.reduce.add.v8i8(<8 x i8> %bin.rdx2899.a) ; 3 uses
  %bin.rdx2900 = fadd reassoc nsz arcp contract afn <8 x float> %predphi2892.a, %predphi2891.a
  %i.gji = call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %bin.rdx2900) ; 3 uses
  br i1 %cmp.n2901, label %.split1085.us1261.i, label %vec.epilog.iter.check2908

vec.epilog.iter.check2908:                        ; preds = %middle.block2898
  br i1 %min.epilog.iters.check2909, label %vec.epilog.scalar.ph2907.preheader, label %vec.epilog.ph2910, !prof !138

vec.epilog.ph2910:                                ; preds = %vector.main.loop.iter.check2859, %vec.epilog.iter.check2908
  %vec.epilog.resume.val2902 = phi i64 [ %n.vec2862, %vec.epilog.iter.check2908 ], [ 0, %vector.main.loop.iter.check2859 ]
  %bc.resume.val2903 = phi i64 [ %i.gfd, %vec.epilog.iter.check2908 ], [ %i.gef, %vector.main.loop.iter.check2859 ] ; 2 uses
  %bc.merge.rdx2904.a = phi i8 [ %i.gjh, %vec.epilog.iter.check2908 ], [ %.09001088.us.i, %vector.main.loop.iter.check2859 ]
  %bc.merge.rdx2905 = phi float [ %i.gji, %vec.epilog.iter.check2908 ], [ %.09031087.us.i, %vector.main.loop.iter.check2859 ]
  %i.gjj = insertelement <4 x i8> <i8 poison, i8 0, i8 0, i8 0>, i8 %bc.merge.rdx2904.a, i64 0
  %i.gjk = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %bc.merge.rdx2905, i64 0
  %broadcast.splatinsert2912 = insertelement <4 x i32> poison, i32 %i.gfr, i64 0
  %broadcast.splat2913 = shufflevector <4 x i32> %broadcast.splatinsert2912, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert2920 = insertelement <4 x i64> poison, i64 %bc.resume.val2903, i64 0
  %broadcast.splat2921 = shufflevector <4 x i64> %broadcast.splatinsert2920, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction2922 = add nsw <4 x i64> %broadcast.splat2921, <i64 0, i64 1, i64 2, i64 3>
  %i.gjl = trunc i64 %bc.resume.val2903 to i32
  %broadcast.splatinsert2923 = insertelement <4 x i32> poison, i32 %i.gjl, i64 0
  %broadcast.splat2924 = shufflevector <4 x i32> %broadcast.splatinsert2923, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction2925 = add <4 x i32> %broadcast.splat2924, <i32 0, i32 1, i32 2, i32 3>
  br label %vec.epilog.vector.body2926

vec.epilog.vector.body2926:                       ; preds = %vec.epilog.vector.body2926, %vec.epilog.ph2910
  %index2927 = phi i64 [ %vec.epilog.resume.val2902, %vec.epilog.ph2910 ], [ %index.next2936, %vec.epilog.vector.body2926 ]
  %vec.ind2928 = phi <4 x i64> [ %induction2922, %vec.epilog.ph2910 ], [ %vec.ind.next2937.a, %vec.epilog.vector.body2926 ] ; 2 uses
  %vec.phi2929.a = phi <4 x i8> [ %i.gjj, %vec.epilog.ph2910 ], [ %predphi2935, %vec.epilog.vector.body2926 ]
  %vec.phi2930 = phi <4 x float> [ %i.gjk, %vec.epilog.ph2910 ], [ %predphi2934.a, %vec.epilog.vector.body2926 ] ; 2 uses
  %vec.ind2931 = phi <4 x i32> [ %induction2925, %vec.epilog.ph2910 ], [ %vec.ind.next2938, %vec.epilog.vector.body2926 ] ; 3 uses
  %i.gjm = icmp slt <4 x i64> %vec.ind2928, %broadcast.splat2915
  %i.gjn = sub <4 x i32> %broadcast.splat2917, %vec.ind2931
  %i.gjo = call <4 x i32> @llvm.abs.v4i32(<4 x i32> %vec.ind2931, i1 true)
  %i.gjp = select <4 x i1> %i.gjm, <4 x i32> %i.gjo, <4 x i32> %i.gjn ; 2 uses
  %i.gjq = add nsw <4 x i32> %i.gjp, splat (i32 600)
  %i.gjr = srem <4 x i32> %i.gjq, splat (i32 6)
  %i.gjs = sext <4 x i32> %i.gjr to <4 x i64>     ; 4 uses
  %i.gjt = extractelement <4 x i64> %i.gjs, i64 0
  %i.gju = getelementptr inbounds i8, ptr %i.gfq, i64 %i.gjt
  %i.gjv = extractelement <4 x i64> %i.gjs, i64 1
  %i.gjw = getelementptr inbounds i8, ptr %i.gfq, i64 %i.gjv
  %i.gjx = extractelement <4 x i64> %i.gjs, i64 2
  %i.gjy = getelementptr inbounds i8, ptr %i.gfq, i64 %i.gjx
  %i.gjz = extractelement <4 x i64> %i.gjs, i64 3
  %i.gka = getelementptr inbounds i8, ptr %i.gfq, i64 %i.gjz
  %i.gkb = load i8, ptr %i.gju, align 1, !tbaa !133
  %i.gkc = load i8, ptr %i.gjw, align 1, !tbaa !133
  %i.gkd = load i8, ptr %i.gjy, align 1, !tbaa !133
  %i.gke = load i8, ptr %i.gka, align 1, !tbaa !133
  %i.gkf = insertelement <4 x i8> poison, i8 %i.gkb, i64 0
  %i.gkg = insertelement <4 x i8> %i.gkf, i8 %i.gkc, i64 1
  %i.gkh = insertelement <4 x i8> %i.gkg, i8 %i.gkd, i64 2
  %i.gki = insertelement <4 x i8> %i.gkh, i8 %i.gke, i64 3
  %i.gkj = icmp eq <4 x i8> %i.gki, %broadcast.splat2919 ; 3 uses
  %i.gkk = add nsw <4 x i32> %i.gjp, %broadcast.splat2913
  %i.gkl = sext <4 x i32> %i.gkk to <4 x i64>
  %wide.gep2932 = getelementptr inbounds [4 x i8], ptr %i.axo, <4 x i64> %i.gkl
  %wide.masked.gather2933 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep2932, <4 x i1> %i.gkj, <4 x float> poison), !tbaa !12
  %i.gkm = call reassoc nsz arcp contract afn <4 x float> @llvm.maxnum.v4f32(<4 x float> %wide.masked.gather2933, <4 x float> zeroinitializer)
  %i.gkn = fadd reassoc nsz arcp contract afn <4 x float> %i.gkm, %vec.phi2930
  %predphi2934.a = select nsz <4 x i1> %i.gkj, <4 x float> %i.gkn, <4 x float> %vec.phi2930 ; 2 uses
  %i.gko = zext <4 x i1> %i.gkj to <4 x i8>
  %predphi2935 = add <4 x i8> %vec.phi2929.a, %i.gko ; 2 uses
  %index.next2936 = add nuw i64 %index2927, 4     ; 2 uses
  %vec.ind.next2937.a = add nsw <4 x i64> %vec.ind2928, splat (i64 4)
  %vec.ind.next2938 = add <4 x i32> %vec.ind2931, splat (i32 4)
  %i.gkp = icmp eq i64 %index.next2936, %n.vec2911
  br i1 %i.gkp, label %vec.epilog.middle.block2939, label %vec.epilog.vector.body2926, !llvm.loop !230

vec.epilog.middle.block2939:                      ; preds = %vec.epilog.vector.body2926
  %i.gkq = call i8 @llvm.vector.reduce.add.v4i8(<4 x i8> %predphi2935) ; 2 uses
  %i.gkr = call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %predphi2934.a) ; 2 uses
  br i1 %cmp.n2940, label %.split1085.us1261.i, label %vec.epilog.scalar.ph2907.preheader

vec.epilog.scalar.ph2907.preheader:               ; preds = %iter.check2906, %vec.epilog.iter.check2908, %vec.epilog.middle.block2939
  %indvars.iv1181.ph = phi i64 [ %i.gef, %iter.check2906 ], [ %i.gfd, %vec.epilog.iter.check2908 ], [ %i.gfe, %vec.epilog.middle.block2939 ]
  %.19011082.us1254.i.ph = phi i8 [ %.09001088.us.i, %iter.check2906 ], [ %i.gjh, %vec.epilog.iter.check2908 ], [ %i.gkq, %vec.epilog.middle.block2939 ]
  %.19041081.us1255.i.ph = phi float [ %.09031087.us.i, %iter.check2906 ], [ %i.gji, %vec.epilog.iter.check2908 ], [ %i.gkr, %vec.epilog.middle.block2939 ]
  br label %vec.epilog.scalar.ph2907

vec.epilog.scalar.ph2907:                         ; preds = %vec.epilog.scalar.ph2907.preheader, %bb.ls
  %indvars.iv1181 = phi i64 [ %indvars.iv.next1182, %bb.ls ], [ %indvars.iv1181.ph, %vec.epilog.scalar.ph2907.preheader ] ; 4 uses
  %.19011082.us1254.i = phi i8 [ %.2902.us1259.i, %bb.ls ], [ %.19011082.us1254.i.ph, %vec.epilog.scalar.ph2907.preheader ] ; 2 uses
  %.19041081.us1255.i = phi float [ %.2905.us1258.i, %bb.ls ], [ %.19041081.us1255.i.ph, %vec.epilog.scalar.ph2907.preheader ] ; 2 uses
  %.not979.us1256.i = icmp slt i64 %indvars.iv1181, %i.aoc
  %i.gks = trunc nsw i64 %indvars.iv1181 to i32   ; 2 uses
  %i.gkt = sub i32 %i.apo, %i.gks
  %i.gku = tail call i32 @llvm.abs.i32(i32 %i.gks, i1 true)
  %i.gkv = select i1 %.not979.us1256.i, i32 %i.gku, i32 %i.gkt ; 2 uses
  %i.gkw = add nsw i32 %i.gkv, 600
  %i.gkx = srem i32 %i.gkw, 6
  %i.gky = sext i32 %i.gkx to i64
  %i.gkz = getelementptr inbounds i8, ptr %i.gfq, i64 %i.gky
  %i.gla = load i8, ptr %i.gkz, align 1, !tbaa !133
  %i.glb = icmp eq i8 %i.gla, %i.gep
  br i1 %i.glb, label %bb.lr, label %bb.ls

bb.lr:                                            ; preds = %vec.epilog.scalar.ph2907
  %i.glc = add nsw i32 %i.gkv, %i.gfr
  %i.gld = sext i32 %i.glc to i64
  %i.gle = getelementptr inbounds [4 x i8], ptr %i.axo, i64 %i.gld
  %i.glf = load float, ptr %i.gle, align 4, !tbaa !12
  %i.glg = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.glf, float 0.000000e+00)
  %i.glh = fadd reassoc nsz arcp contract afn float %i.glg, %.19041081.us1255.i
  %i.gli = add i8 %.19011082.us1254.i, 1
  br label %bb.ls

bb.ls:                                            ; preds = %bb.lr, %vec.epilog.scalar.ph2907
  %.2905.us1258.i = phi nsz float [ %i.glh, %bb.lr ], [ %.19041081.us1255.i, %vec.epilog.scalar.ph2907 ] ; 2 uses
  %.2902.us1259.i = phi i8 [ %i.gli, %bb.lr ], [ %.19011082.us1254.i, %vec.epilog.scalar.ph2907 ] ; 2 uses
  %indvars.iv.next1182 = add nsw i64 %indvars.iv1181, 1
  %.not977.us1260.i = icmp slt i64 %indvars.iv1338.i, %indvars.iv1181
  br i1 %.not977.us1260.i, label %.split1085.us1261.i, label %vec.epilog.scalar.ph2907, !llvm.loop !231

iter.check2818:                                   ; preds = %.preheader.i522
  %i.glj = tail call i32 @llvm.abs.i32(i32 %i.gfl, i1 true) ; 2 uses
  %i.glk = add nuw nsw i32 %i.glj, 600
  %i.gll = urem i32 %i.glk, 6
  %i.glm = zext nneg i32 %i.gll to i64
  %i.gln = getelementptr inbounds nuw [6 x i8], ptr %i.x, i64 %i.glm ; 21 uses
  %i.glo = mul nsw i32 %i.glj, %i.bo              ; 3 uses
  br i1 %min.iters.check2858, label %vec.epilog.scalar.ph2819.preheader, label %vector.main.loop.iter.check2771

vector.main.loop.iter.check2771:                  ; preds = %iter.check2818
  br i1 %min.iters.check2772, label %vec.epilog.ph2822, label %vector.ph2773

vector.ph2773:                                    ; preds = %vector.main.loop.iter.check2771
  %i.glp = insertelement <8 x i8> <i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, i8 %.09001088.us.i, i64 0
  %i.glq = insertelement <8 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %.09031087.us.i, i64 0
  %broadcast.splatinsert2775 = insertelement <8 x i32> poison, i32 %i.glo, i64 0
  %broadcast.splat2776 = shufflevector <8 x i32> %broadcast.splatinsert2775, <8 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body2789

vector.body2789:                                  ; preds = %vector.ph2773, %vector.body2789
  %index2790 = phi i64 [ 0, %vector.ph2773 ], [ %index.next2807, %vector.body2789 ]
  %vec.ind2791 = phi <8 x i64> [ %induction2785, %vector.ph2773 ], [ %vec.ind.next2808, %vector.body2789 ] ; 3 uses
  %vec.phi2792 = phi <8 x i8> [ %i.glp, %vector.ph2773 ], [ %predphi2805, %vector.body2789 ]
  %vec.phi2793 = phi <8 x i8> [ zeroinitializer, %vector.ph2773 ], [ %predphi2806, %vector.body2789 ]
  %vec.phi2794 = phi <8 x float> [ %i.glq, %vector.ph2773 ], [ %predphi2803, %vector.body2789 ] ; 2 uses
  %vec.phi2795 = phi <8 x float> [ zeroinitializer, %vector.ph2773 ], [ %predphi2804, %vector.body2789 ] ; 2 uses
  %vec.ind2796 = phi <8 x i32> [ %induction2788, %vector.ph2773 ], [ %vec.ind.next2809, %vector.body2789 ] ; 4 uses
  %step.add2797 = add nsw <8 x i64> %vec.ind2791, splat (i64 8)
  %step.add2798 = add <8 x i32> %vec.ind2796, splat (i32 8) ; 2 uses
  %i.glr = icmp slt <8 x i64> %vec.ind2791, %broadcast.splat2778
  %i.gls = icmp slt <8 x i64> %step.add2797, %broadcast.splat2778
  %i.glt = sub <8 x i32> %broadcast.splat2780, %vec.ind2796
  %i.glu = sub <8 x i32> %broadcast.splat2780, %step.add2798
  %i.glv = call <8 x i32> @llvm.abs.v8i32(<8 x i32> %vec.ind2796, i1 true)
  %i.glw = call <8 x i32> @llvm.abs.v8i32(<8 x i32> %step.add2798, i1 true)
  %i.glx = select <8 x i1> %i.glr, <8 x i32> %i.glv, <8 x i32> %i.glt ; 2 uses
  %i.gly = select <8 x i1> %i.gls, <8 x i32> %i.glw, <8 x i32> %i.glu ; 2 uses
  %i.glz = add nsw <8 x i32> %i.glx, splat (i32 600)
  %i.gma = add nsw <8 x i32> %i.gly, splat (i32 600)
  %i.gmb = srem <8 x i32> %i.glz, splat (i32 6)
  %i.gmc = srem <8 x i32> %i.gma, splat (i32 6)
  %i.gmd = sext <8 x i32> %i.gmb to <8 x i64>     ; 8 uses
  %i.gme = sext <8 x i32> %i.gmc to <8 x i64>     ; 8 uses
  %i.gmf = extractelement <8 x i64> %i.gmd, i64 0
  %i.gmg = getelementptr inbounds i8, ptr %i.gln, i64 %i.gmf
  %i.gmh = extractelement <8 x i64> %i.gmd, i64 1
  %i.gmi = getelementptr inbounds i8, ptr %i.gln, i64 %i.gmh
  %i.gmj = extractelement <8 x i64> %i.gmd, i64 2
  %i.gmk = getelementptr inbounds i8, ptr %i.gln, i64 %i.gmj
  %i.gml = extractelement <8 x i64> %i.gmd, i64 3
  %i.gmm = getelementptr inbounds i8, ptr %i.gln, i64 %i.gml
  %i.gmn = extractelement <8 x i64> %i.gmd, i64 4
  %i.gmo = getelementptr inbounds i8, ptr %i.gln, i64 %i.gmn
  %i.gmp = extractelement <8 x i64> %i.gmd, i64 5
  %i.gmq = getelementptr inbounds i8, ptr %i.gln, i64 %i.gmp
  %i.gmr = extractelement <8 x i64> %i.gmd, i64 6
  %i.gms = getelementptr inbounds i8, ptr %i.gln, i64 %i.gmr
  %i.gmt = extractelement <8 x i64> %i.gmd, i64 7
  %i.gmu = getelementptr inbounds i8, ptr %i.gln, i64 %i.gmt
  %i.gmv = extractelement <8 x i64> %i.gme, i64 0
  %i.gmw = getelementptr inbounds i8, ptr %i.gln, i64 %i.gmv
  %i.gmx = extractelement <8 x i64> %i.gme, i64 1
  %i.gmy = getelementptr inbounds i8, ptr %i.gln, i64 %i.gmx
  %i.gmz = extractelement <8 x i64> %i.gme, i64 2
  %i.gna = getelementptr inbounds i8, ptr %i.gln, i64 %i.gmz
  %i.gnb = extractelement <8 x i64> %i.gme, i64 3
  %i.gnc = getelementptr inbounds i8, ptr %i.gln, i64 %i.gnb
  %i.gnd = extractelement <8 x i64> %i.gme, i64 4
  %i.gne = getelementptr inbounds i8, ptr %i.gln, i64 %i.gnd
  %i.gnf = extractelement <8 x i64> %i.gme, i64 5
  %i.gng = getelementptr inbounds i8, ptr %i.gln, i64 %i.gnf
  %i.gnh = extractelement <8 x i64> %i.gme, i64 6
  %i.gni = getelementptr inbounds i8, ptr %i.gln, i64 %i.gnh
  %i.gnj = extractelement <8 x i64> %i.gme, i64 7
  %i.gnk = getelementptr inbounds i8, ptr %i.gln, i64 %i.gnj
  %i.gnl = load i8, ptr %i.gmg, align 1, !tbaa !133
  %i.gnm = load i8, ptr %i.gmi, align 1, !tbaa !133
  %i.gnn = load i8, ptr %i.gmk, align 1, !tbaa !133
  %i.gno = load i8, ptr %i.gmm, align 1, !tbaa !133
  %i.gnp = load i8, ptr %i.gmo, align 1, !tbaa !133
  %i.gnq = load i8, ptr %i.gmq, align 1, !tbaa !133
  %i.gnr = load i8, ptr %i.gms, align 1, !tbaa !133
  %i.gns = load i8, ptr %i.gmu, align 1, !tbaa !133
  %i.gnt = insertelement <8 x i8> poison, i8 %i.gnl, i64 0
  %i.gnu = insertelement <8 x i8> %i.gnt, i8 %i.gnm, i64 1
  %i.gnv = insertelement <8 x i8> %i.gnu, i8 %i.gnn, i64 2
  %i.gnw = insertelement <8 x i8> %i.gnv, i8 %i.gno, i64 3
  %i.gnx = insertelement <8 x i8> %i.gnw, i8 %i.gnp, i64 4
  %i.gny = insertelement <8 x i8> %i.gnx, i8 %i.gnq, i64 5
  %i.gnz = insertelement <8 x i8> %i.gny, i8 %i.gnr, i64 6
  %i.goa = insertelement <8 x i8> %i.gnz, i8 %i.gns, i64 7
  %i.gob = load i8, ptr %i.gmw, align 1, !tbaa !133
  %i.goc = load i8, ptr %i.gmy, align 1, !tbaa !133
  %i.god = load i8, ptr %i.gna, align 1, !tbaa !133
  %i.goe = load i8, ptr %i.gnc, align 1, !tbaa !133
  %i.gof = load i8, ptr %i.gne, align 1, !tbaa !133
  %i.gog = load i8, ptr %i.gng, align 1, !tbaa !133
  %i.goh = load i8, ptr %i.gni, align 1, !tbaa !133
  %i.goi = load i8, ptr %i.gnk, align 1, !tbaa !133
  %i.goj = insertelement <8 x i8> poison, i8 %i.gob, i64 0
  %i.gok = insertelement <8 x i8> %i.goj, i8 %i.goc, i64 1
  %i.gol = insertelement <8 x i8> %i.gok, i8 %i.god, i64 2
  %i.gom = insertelement <8 x i8> %i.gol, i8 %i.goe, i64 3
  %i.gon = insertelement <8 x i8> %i.gom, i8 %i.gof, i64 4
  %i.goo = insertelement <8 x i8> %i.gon, i8 %i.gog, i64 5
  %i.gop = insertelement <8 x i8> %i.goo, i8 %i.goh, i64 6
  %i.goq = insertelement <8 x i8> %i.gop, i8 %i.goi, i64 7
  %i.gor = icmp eq <8 x i8> %i.goa, %broadcast.splat2782 ; 3 uses
  %i.gos = icmp eq <8 x i8> %i.goq, %broadcast.splat2782 ; 3 uses
  %i.got = add nsw <8 x i32> %i.glx, %broadcast.splat2776
  %i.gou = add nsw <8 x i32> %i.gly, %broadcast.splat2776
  %i.gov = sext <8 x i32> %i.got to <8 x i64>
  %i.gow = sext <8 x i32> %i.gou to <8 x i64>
  %wide.gep2799 = getelementptr inbounds [4 x i8], ptr %i.axo, <8 x i64> %i.gov
  %wide.gep2800 = getelementptr inbounds [4 x i8], ptr %i.axo, <8 x i64> %i.gow
  %wide.masked.gather2801 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep2799, <8 x i1> %i.gor, <8 x float> poison), !tbaa !12
  %wide.masked.gather2802 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep2800, <8 x i1> %i.gos, <8 x float> poison), !tbaa !12
  %i.gox = call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %wide.masked.gather2801, <8 x float> zeroinitializer)
  %i.goy = call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %wide.masked.gather2802, <8 x float> zeroinitializer)
  %i.goz = fadd reassoc nsz arcp contract afn <8 x float> %i.gox, %vec.phi2794
  %i.gpa = fadd reassoc nsz arcp contract afn <8 x float> %i.goy, %vec.phi2795
  %predphi2803 = select nsz <8 x i1> %i.gor, <8 x float> %i.goz, <8 x float> %vec.phi2794 ; 2 uses
  %predphi2804 = select nsz <8 x i1> %i.gos, <8 x float> %i.gpa, <8 x float> %vec.phi2795 ; 2 uses
  %i.gpb = zext <8 x i1> %i.gor to <8 x i8>
  %predphi2805 = add <8 x i8> %vec.phi2792, %i.gpb ; 2 uses
  %i.gpc = zext <8 x i1> %i.gos to <8 x i8>
  %predphi2806 = add <8 x i8> %vec.phi2793, %i.gpc ; 2 uses
  %index.next2807 = add nuw i64 %index2790, 16    ; 2 uses
  %vec.ind.next2808 = add nsw <8 x i64> %vec.ind2791, splat (i64 16)
  %vec.ind.next2809 = add <8 x i32> %vec.ind2796, splat (i32 16)
  %i.gpd = icmp eq i64 %index.next2807, %n.vec2774
  br i1 %i.gpd, label %middle.block2810, label %vector.body2789, !llvm.loop !232

middle.block2810:                                 ; preds = %vector.body2789
  %bin.rdx2811 = add <8 x i8> %predphi2806, %predphi2805
  %i.gpe = call i8 @llvm.vector.reduce.add.v8i8(<8 x i8> %bin.rdx2811) ; 3 uses
  %bin.rdx2812 = fadd reassoc nsz arcp contract afn <8 x float> %predphi2804, %predphi2803
  %i.gpf = call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %bin.rdx2812) ; 3 uses
  br i1 %cmp.n2813, label %.split1085.us1261.i, label %vec.epilog.iter.check2820

vec.epilog.iter.check2820:                        ; preds = %middle.block2810
  br i1 %min.epilog.iters.check2821, label %vec.epilog.scalar.ph2819.preheader, label %vec.epilog.ph2822, !prof !138

vec.epilog.ph2822:                                ; preds = %vector.main.loop.iter.check2771, %vec.epilog.iter.check2820
  %vec.epilog.resume.val2814 = phi i64 [ %n.vec2774, %vec.epilog.iter.check2820 ], [ 0, %vector.main.loop.iter.check2771 ]
  %bc.resume.val2815 = phi i64 [ %i.gfg, %vec.epilog.iter.check2820 ], [ %i.gef, %vector.main.loop.iter.check2771 ] ; 2 uses
  %bc.merge.rdx2816 = phi i8 [ %i.gpe, %vec.epilog.iter.check2820 ], [ %.09001088.us.i, %vector.main.loop.iter.check2771 ]
  %bc.merge.rdx2817 = phi float [ %i.gpf, %vec.epilog.iter.check2820 ], [ %.09031087.us.i, %vector.main.loop.iter.check2771 ]
  %i.gpg = insertelement <4 x i8> <i8 poison, i8 0, i8 0, i8 0>, i8 %bc.merge.rdx2816, i64 0
  %i.gph = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %bc.merge.rdx2817, i64 0
  %broadcast.splatinsert2824 = insertelement <4 x i32> poison, i32 %i.glo, i64 0
  %broadcast.splat2825 = shufflevector <4 x i32> %broadcast.splatinsert2824, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert2832 = insertelement <4 x i64> poison, i64 %bc.resume.val2815, i64 0
  %broadcast.splat2833 = shufflevector <4 x i64> %broadcast.splatinsert2832, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction2834 = add nsw <4 x i64> %broadcast.splat2833, <i64 0, i64 1, i64 2, i64 3>
  %i.gpi = trunc i64 %bc.resume.val2815 to i32
  %broadcast.splatinsert2835 = insertelement <4 x i32> poison, i32 %i.gpi, i64 0
  %broadcast.splat2836 = shufflevector <4 x i32> %broadcast.splatinsert2835, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction2837 = add <4 x i32> %broadcast.splat2836, <i32 0, i32 1, i32 2, i32 3>
  br label %vec.epilog.vector.body2838

vec.epilog.vector.body2838:                       ; preds = %vec.epilog.vector.body2838, %vec.epilog.ph2822
  %index2839 = phi i64 [ %vec.epilog.resume.val2814, %vec.epilog.ph2822 ], [ %index.next2848, %vec.epilog.vector.body2838 ]
  %vec.ind2840 = phi <4 x i64> [ %induction2834, %vec.epilog.ph2822 ], [ %vec.ind.next2849, %vec.epilog.vector.body2838 ] ; 2 uses
  %vec.phi2841 = phi <4 x i8> [ %i.gpg, %vec.epilog.ph2822 ], [ %predphi2847, %vec.epilog.vector.body2838 ]
  %vec.phi2842 = phi <4 x float> [ %i.gph, %vec.epilog.ph2822 ], [ %predphi2846, %vec.epilog.vector.body2838 ] ; 2 uses
  %vec.ind2843 = phi <4 x i32> [ %induction2837, %vec.epilog.ph2822 ], [ %vec.ind.next2850, %vec.epilog.vector.body2838 ] ; 3 uses
  %i.gpj = icmp slt <4 x i64> %vec.ind2840, %broadcast.splat2827
  %i.gpk = sub <4 x i32> %broadcast.splat2829, %vec.ind2843
  %i.gpl = call <4 x i32> @llvm.abs.v4i32(<4 x i32> %vec.ind2843, i1 true)
  %i.gpm = select <4 x i1> %i.gpj, <4 x i32> %i.gpl, <4 x i32> %i.gpk ; 2 uses
  %i.gpn = add nsw <4 x i32> %i.gpm, splat (i32 600)
  %i.gpo = srem <4 x i32> %i.gpn, splat (i32 6)
  %i.gpp = sext <4 x i32> %i.gpo to <4 x i64>     ; 4 uses
  %i.gpq = extractelement <4 x i64> %i.gpp, i64 0
  %i.gpr = getelementptr inbounds i8, ptr %i.gln, i64 %i.gpq
  %i.gps = extractelement <4 x i64> %i.gpp, i64 1
  %i.gpt = getelementptr inbounds i8, ptr %i.gln, i64 %i.gps
  %i.gpu = extractelement <4 x i64> %i.gpp, i64 2
  %i.gpv = getelementptr inbounds i8, ptr %i.gln, i64 %i.gpu
  %i.gpw = extractelement <4 x i64> %i.gpp, i64 3
  %i.gpx = getelementptr inbounds i8, ptr %i.gln, i64 %i.gpw
  %i.gpy = load i8, ptr %i.gpr, align 1, !tbaa !133
  %i.gpz = load i8, ptr %i.gpt, align 1, !tbaa !133
  %i.gqa = load i8, ptr %i.gpv, align 1, !tbaa !133
  %i.gqb = load i8, ptr %i.gpx, align 1, !tbaa !133
  %i.gqc = insertelement <4 x i8> poison, i8 %i.gpy, i64 0
  %i.gqd = insertelement <4 x i8> %i.gqc, i8 %i.gpz, i64 1
  %i.gqe = insertelement <4 x i8> %i.gqd, i8 %i.gqa, i64 2
  %i.gqf = insertelement <4 x i8> %i.gqe, i8 %i.gqb, i64 3
  %i.gqg = icmp eq <4 x i8> %i.gqf, %broadcast.splat2831 ; 3 uses
  %i.gqh = add nsw <4 x i32> %i.gpm, %broadcast.splat2825
  %i.gqi = sext <4 x i32> %i.gqh to <4 x i64>
  %wide.gep2844 = getelementptr inbounds [4 x i8], ptr %i.axo, <4 x i64> %i.gqi
  %wide.masked.gather2845 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep2844, <4 x i1> %i.gqg, <4 x float> poison), !tbaa !12
  %i.gqj = call reassoc nsz arcp contract afn <4 x float> @llvm.maxnum.v4f32(<4 x float> %wide.masked.gather2845, <4 x float> zeroinitializer)
  %i.gqk = fadd reassoc nsz arcp contract afn <4 x float> %i.gqj, %vec.phi2842
  %predphi2846 = select nsz <4 x i1> %i.gqg, <4 x float> %i.gqk, <4 x float> %vec.phi2842 ; 2 uses
  %i.gql = zext <4 x i1> %i.gqg to <4 x i8>
  %predphi2847 = add <4 x i8> %vec.phi2841, %i.gql ; 2 uses
  %index.next2848 = add nuw i64 %index2839, 4     ; 2 uses
  %vec.ind.next2849 = add nsw <4 x i64> %vec.ind2840, splat (i64 4)
  %vec.ind.next2850 = add <4 x i32> %vec.ind2843, splat (i32 4)
  %i.gqm = icmp eq i64 %index.next2848, %n.vec2823
  br i1 %i.gqm, label %vec.epilog.middle.block2851, label %vec.epilog.vector.body2838, !llvm.loop !233

vec.epilog.middle.block2851:                      ; preds = %vec.epilog.vector.body2838
  %i.gqn = call i8 @llvm.vector.reduce.add.v4i8(<4 x i8> %predphi2847) ; 2 uses
end_hunk_5
begin_hunk_6_@process:bb.a
  tail call void @free(ptr noundef %i.fxc) #27
  tail call fastcc void @_vng_lininterpolate(ptr noundef nonnull %i.anw, ptr noundef readonly %i.axo, i32 noundef %i.bo, i32 noundef %i.axe, i32 noundef 9, ptr noundef nonnull readonly %i.x, i32 noundef %i.aph)
  br label %xtrans_markesteijn_interpolate.exit

.lr.ph1250.split.i:                               ; preds = %.lr.ph1250.i, %.lr.ph1250.split.i
  %.09141248.i = phi i32 [ %i.jem, %.lr.ph1250.split.i ], [ %.neg.i511, %.lr.ph1250.i ]
  %i.jem = add i32 %.09141248.i, %reass.sub955.i  ; 2 uses
  %i.jen = icmp slt i32 %i.jem, %i.fxz
  br i1 %i.jen, label %.lr.ph1250.split.i, label %._crit_edge1251.i

xtrans_markesteijn_interpolate.exit:              ; preds = %bb.lj, %._crit_edge1251.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #27
  br label %demosaic_box3.exit

bb.nt:                                            ; preds = %bb.lh
  tail call fastcc void @vng_interpolate(ptr noundef %i.anw, ptr noundef %i.axo, i32 noundef %i.bo, i32 noundef %i.axe, i32 noundef 9, ptr noundef nonnull %i.x, i32 noundef 0)
  br label %demosaic_box3.exit

bb.nu:                                            ; preds = %bb.hz
  br i1 %or.cond31, label %bb.nv, label %bb.nx

bb.nv:                                            ; preds = %bb.nu
  tail call fastcc void @vng_interpolate(ptr noundef %i.anw, ptr noundef %i.axo, i32 noundef %i.bo, i32 noundef %i.axe, i32 noundef %.fr1070, ptr noundef nonnull %i.x, i32 noundef 0)
  br i1 %i.bg, label %bb.nw, label %demosaic_box3.exit

bb.nw:                                            ; preds = %bb.nv
  %i.jeo = mul nsw i32 %i.axe, %i.bo
  tail call void @dt_colorspaces_cygm_to_rgb(ptr noundef nonnull %i.anw, i32 noundef %i.jeo, ptr noundef nonnull %i.aoy) #27
  tail call void @dt_colorspaces_cygm_to_rgb(ptr noundef nonnull %i.aoz, i32 noundef 1, ptr noundef nonnull %i.aoy) #27
  br label %demosaic_box3.exit

bb.nx:                                            ; preds = %bb.nu
  switch i32 %.0394, label %bb.qh [
    i32 5, label %bb.ny
    i32 6, label %bb.oh
    i32 1, label %bb.qi
  ]

bb.ny:                                            ; preds = %bb.nx
  tail call void @llvm.experimental.noalias.scope.decl(metadata !499)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !500)
  tail call fastcc void @demosaic_ppg(ptr noundef nonnull %i.anw, ptr noundef %i.axo, i32 noundef %i.bo, i32 noundef %i.axe, i32 noundef range(i32 10, 9) %.fr1070, float noundef 0.000000e+00, i32 noundef 10)
  %i.jep = icmp slt i32 %i.axe, 20
  %or.cond.i540 = or i1 %i.aoq, %i.jep
  br i1 %or.cond.i540, label %demosaic_box3.exit, label %bb.nz

bb.nz:                                            ; preds = %bb.ny
  %i.jeq = add nsw i32 %i.axe, -21
  %i.jer = sdiv i32 %i.jeq, 92
  %i.jes = tail call ptr @dt_alloc_aligned(i64 noundef 50176) #27, !noalias !499 ; 19 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.jes, i64 64) ]
  %.not.i.i541 = icmp eq ptr %i.jes, null
  br i1 %.not.i.i541, label %.preheader833.preheader.i, label %bb.oa

bb.oa:                                            ; preds = %bb.nz
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(50176) %i.jes, i8 0, i64 50176, i1 false), !noalias !499
  br label %.preheader833.preheader.i

.preheader833.preheader.i:                        ; preds = %bb.oa, %bb.nz
  %i.jet = tail call ptr @dt_alloc_aligned(i64 noundef 25088) #27, !noalias !499 ; 28 uses
  %i.jeu = ptrtoaddr ptr %i.jet to i64
  call void @llvm.assume(i1 true) [ "align"(ptr %i.jet, i64 64) ]
  %i.jev = tail call ptr @dt_alloc_aligned(i64 noundef 50176) #27, !noalias !499 ; 38 uses
  %i.jew = ptrtoaddr ptr %i.jev to i64            ; 3 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.jev, i64 64) ]
  %i.jex = tail call ptr @dt_alloc_aligned(i64 noundef 25088) #27, !noalias !499 ; 13 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.jex, i64 64) ]
  %i.jey = tail call ptr @dt_alloc_aligned(i64 noundef 25088) #27, !noalias !499 ; 13 uses
  %i.jez = insertelement <2 x ptr> poison, ptr %i.jex, i64 0
  %i.jfa = insertelement <2 x ptr> %i.jez, ptr %i.jey, i64 1
  %i.jfb = shufflevector <2 x ptr> %i.jfa, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.jfc = ptrtoaddr <4 x ptr> %i.jfb to <4 x i64>
  call void @llvm.assume(i1 true) [ "align"(ptr %i.jey, i64 64) ]
  %i.jfd = tail call ptr @dt_alloc_aligned(i64 noundef 150528) #27, !noalias !499 ; 61 uses
  %i.jfe = ptrtoaddr ptr %i.jfd to i64            ; 4 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.jfd, i64 64) ]
  %i.jff = getelementptr inbounds nuw i8, ptr %i.jfd, i64 50176 ; 24 uses
  %i.jfg = getelementptr inbounds nuw i8, ptr %i.jfd, i64 100352 ; 12 uses
  %scevgep2963.a = getelementptr i8, ptr %i.jfd, i64 -1344
  %scevgep2965.a = getelementptr i8, ptr %i.jfd, i64 101700
  %scevgep2967.a = getelementptr i8, ptr %i.jes, i64 -452
  %scevgep2969.a = getelementptr i8, ptr %i.jes, i64 456
  %scevgep3050.a = getelementptr i8, ptr %i.jfd, i64 100352
  %scevgep3052.a = getelementptr i8, ptr %i.jfd, i64 100356
  %scevgep3055.a = getelementptr i8, ptr %i.jet, i64 8
  %scevgep3058.a = getelementptr i8, ptr %i.jet, i64 8
  %scevgep3060 = getelementptr i8, ptr %i.jet, i64 8
  %scevgep3064.a = getelementptr i8, ptr %i.jet, i64 12
  %scevgep3066.a = getelementptr i8, ptr %i.jfd, i64 99900
  %scevgep3068.a = getelementptr i8, ptr %i.jfd, i64 99904
  %scevgep3070.a = getelementptr i8, ptr %i.jfd, i64 100804
  %scevgep3072.a = getelementptr i8, ptr %i.jfd, i64 100808
  %scevgep3074.a = getelementptr i8, ptr %i.jfd, i64 98996
  %scevgep3076.a = getelementptr i8, ptr %i.jfd, i64 99000
  %scevgep3078.a = getelementptr i8, ptr %i.jfd, i64 50176
  %scevgep3080.a = getelementptr i8, ptr %i.jfd, i64 50180
  %scevgep3082.a = getelementptr i8, ptr %i.jfd, i64 49272
  %scevgep3084.a = getelementptr i8, ptr %i.jfd, i64 49276
  %scevgep3086.a = getelementptr i8, ptr %i.jfd, i64 99908
  %scevgep3088.a = getelementptr i8, ptr %i.jfd, i64 99912
  %scevgep3090.a = getelementptr i8, ptr %i.jfd, i64 100796
  %scevgep3092.a = getelementptr i8, ptr %i.jfd, i64 100800
  %scevgep3094.a = getelementptr i8, ptr %i.jfd, i64 99020
  %scevgep3096.a = getelementptr i8, ptr %i.jfd, i64 99024
  %scevgep3098.a = getelementptr i8, ptr %i.jfd, i64 49288
  %scevgep3100.a = getelementptr i8, ptr %i.jfd, i64 49292
  %scevgep3102.a = getelementptr i8, ptr %i.jfd, i64 101684
  %scevgep3104.a = getelementptr i8, ptr %i.jfd, i64 101688
  %scevgep3106.a = getelementptr i8, ptr %i.jfd, i64 51064
  %scevgep3108.a = getelementptr i8, ptr %i.jfd, i64 51068
  %scevgep3110.a = getelementptr i8, ptr %i.jfd, i64 101708
  %scevgep3112.a = getelementptr i8, ptr %i.jfd, i64 101712
  %scevgep3114.a = getelementptr i8, ptr %i.jfd, i64 51080
  %scevgep3116.a = getelementptr i8, ptr %i.jfd, i64 51084
  %scevgep3118.a = getelementptr i8, ptr %i.jfd, i64 49724
  %scevgep3120.a = getelementptr i8, ptr %i.jfd, i64 49728
  %scevgep3122.a = getelementptr i8, ptr %i.jfd, i64 49732
  %scevgep3124.a = getelementptr i8, ptr %i.jfd, i64 49736
  %scevgep3126.a = getelementptr i8, ptr %i.jfd, i64 50620
  %scevgep3128.a = getelementptr i8, ptr %i.jfd, i64 50624
  %scevgep3130.a = getelementptr i8, ptr %i.jfd, i64 50628
  %scevgep3132.a = getelementptr i8, ptr %i.jfd, i64 50632
  %i.jfh = insertelement <4 x i64> poison, i64 %i.jeu, i64 0
  %i.jfi = shufflevector <4 x i64> %i.jfh, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.jfj = or disjoint <4 x i64> %i.jfi, <i64 4, i64 8, i64 8, i64 4>
  %scevgep3308 = getelementptr i8, ptr %i.jev, i64 -1344
  %scevgep3313.a = getelementptr i8, ptr %i.jev, i64 -440
  %scevgep3315.a = getelementptr i8, ptr %i.jev, i64 -892
  %scevgep3317.a = getelementptr i8, ptr %i.jev, i64 12
  %scevgep3319.a = getelementptr i8, ptr %i.jev, i64 -1320
  %scevgep3321 = getelementptr i8, ptr %i.jev, i64 -432
  %scevgep3323.a = getelementptr i8, ptr %i.jev, i64 -876
  %scevgep3333 = getelementptr i8, ptr %i.jev, i64 -1344
  %scevgep3335 = getelementptr i8, ptr %i.jev, i64 1364
  %scevgep3387.a = getelementptr i8, ptr %i.jfd, i64 50176
  %scevgep3389.a = getelementptr i8, ptr %i.jfd, i64 50180
  %scevgep3391.a = getelementptr i8, ptr %i.jev, i64 -1792
  %scevgep3393.a = getelementptr i8, ptr %i.jev, i64 1796
  %scevgep3395.a = getelementptr i8, ptr %i.jet, i64 -448
  %scevgep3397 = getelementptr i8, ptr %i.jet, i64 452
  %scevgep3399 = getelementptr i8, ptr %i.jes, i64 -452
  %scevgep3401 = getelementptr i8, ptr %i.jes, i64 456
  %scevgep3478 = getelementptr i8, ptr %i.jet, i64 4
  %scevgep3480 = getelementptr i8, ptr %i.jev, i64 -452
  %scevgep3482 = getelementptr i8, ptr %i.jev, i64 456
  %scevgep3514.a = getelementptr i8, ptr %i.jes, i64 16
  %scevgep3565 = getelementptr i8, ptr %i.jev, i64 -1328
  %scevgep3567 = getelementptr i8, ptr %i.jev, i64 1344
  %invariant.op4855.a = sub i64 %i.jfe, %i.jew
  %invariant.op4857 = sub i64 %i.jfe, %i.jew
  br label %.preheader833.i

.preheader833.i:                                  ; preds = %._crit_edge939.i, %.preheader833.preheader.i
  %indvars.iv1056.i = phi i32 [ 0, %.preheader833.preheader.i ], [ %indvars.iv.next1057.i, %._crit_edge939.i ] ; 2 uses
  %indvars.iv947.i = phi i32 [ 0, %.preheader833.preheader.i ], [ %indvars.iv.next948.i, %._crit_edge939.i ] ; 2 uses
  %.0740941.i = phi i32 [ 0, %.preheader833.preheader.i ], [ %i.jgh, %._crit_edge939.i ] ; 4 uses
  %i.jfk = mul nuw nsw i32 %.0740941.i, 92        ; 5 uses
  %i.jfl = add nuw nsw i32 %i.jfk, 112            ; 2 uses
  %i.jfm = tail call i32 @llvm.smin.i32(i32 %i.jfl, i32 %i.axe) ; 3 uses
  %i.jfn = sub nsw i32 %i.jfm, %i.jfk             ; 6 uses
  %i.jfo = icmp sgt i32 %i.jfl, %i.axe
  %i.jfp = icmp sgt i32 %i.axe, %i.jfk
  %i.jfq = add nsw i32 %i.jfn, -3                 ; 2 uses
  %i.jfr = tail call i32 @llvm.smin.i32(i32 %i.jfq, i32 5)
  %i.jfs = icmp sgt i32 %i.jfn, 6                 ; 2 uses
  %i.jft = add nsw i32 %i.jfn, -4                 ; 5 uses
  %i.jfu = icmp sgt i32 %i.jfn, 8                 ; 3 uses
  %i.jfv = add nsw i32 %i.jfn, -2
  %i.jfw = icmp sgt i32 %i.jfn, 4
  %i.jfx = icmp eq i32 %.0740941.i, 0
  %i.jfy = select i1 %i.jfx, i32 9, i32 10        ; 3 uses
  %i.jfz = add nuw nsw i32 %i.jfy, %i.jfk         ; 2 uses
  %i.jga = icmp eq i32 %.0740941.i, %i.jer        ; 2 uses
  %.neg.i542 = select i1 %i.jga, i32 -9, i32 -10
  %i.jgb = add nsw i32 %i.jfm, %.neg.i542         ; 2 uses
  %i.jgc = icmp slt i32 %i.jfz, %i.jgb
  %i.jgd = sext i32 %i.jfr to i64
  %i.jge = add i32 %i.jfy, %indvars.iv1056.i
  %i.jgf = mul i32 %i.jge, %i.bo
  %i.jgg = mul nuw nsw i32 %i.jfy, 112
  %invariant.op.i = add nsw i64 %i.jgd, -1
  br label %bb.ob

._crit_edge942.split.i:                           ; preds = %._crit_edge939.i
  tail call void @free(ptr noundef %i.jev) #27, !noalias !499
  tail call void @free(ptr noundef %i.jfd) #27, !noalias !499
  tail call void @free(ptr noundef %i.jes) #27, !noalias !499
  tail call void @free(ptr noundef %i.jet) #27, !noalias !499
  tail call void @free(ptr noundef %i.jex) #27, !noalias !499
  tail call void @free(ptr noundef %i.jey) #27, !noalias !499
  br label %demosaic_box3.exit

._crit_edge939.i:                                 ; preds = %._crit_edge935.split.i
  %i.jgh = add nuw nsw i32 %.0740941.i, 1
  %indvars.iv.next948.i = add i32 %indvars.iv947.i, %i.aov
  %indvars.iv.next1057.i = add nuw i32 %indvars.iv1056.i, 92
  br i1 %i.jga, label %._crit_edge942.split.i, label %.preheader833.i

bb.ob:                                            ; preds = %._crit_edge935.split.i, %.preheader833.i
  %indvars.iv1058.i = phi i32 [ %i.jgf, %.preheader833.i ], [ %indvars.iv.next1059.i, %._crit_edge935.split.i ] ; 2 uses
  %indvars.iv949.i.a = phi i32 [ 0, %.preheader833.i ], [ %indvars.iv.next1019.i, %._crit_edge935.split.i ] ; 6 uses
  %.0745937.i.a = phi i32 [ 112, %.preheader833.i ], [ %indvars.iv.next950.i, %._crit_edge935.split.i ] ; 5 uses
  %indvars.iv949.i = phi i32 [ %indvars.iv947.i, %.preheader833.i ], [ %i.lri, %._crit_edge935.split.i ] ; 2 uses
  %.0745937.i = phi i32 [ 0, %.preheader833.i ], [ %11, %._crit_edge935.split.i ] ; 5 uses
  %smin3639 = call i32 @llvm.smin.i32(i32 %i.bo, i32 %.0745937.i.a)
  %i.jgi = mul i32 %.0745937.i, 92
  %i.jgj = or disjoint i32 %i.jgi, 1
  %smax3640 = call i32 @llvm.smax.i32(i32 %smin3639, i32 %i.jgj)
  %i.jgk = add i32 %indvars.iv949.i.a, -1
  %i.jgl = add i32 %smax3640, %i.jgk              ; 3 uses
  %i.jgm = zext i32 %i.jgl to i64
  %i.jgn = add nuw nsw i64 %i.jgm, 1              ; 5 uses
  %smin3562 = call i32 @llvm.smin.i32(i32 %i.bo, i32 %.0745937.i.a)
  %i.jgo = add i32 %smin3562, %indvars.iv949.i.a
  %smin3563 = call i32 @llvm.smin.i32(i32 %i.jgo, i32 112)
  %i.jgp = add i32 %smin3563, -4
  %i.jgq = sext i32 %i.jgp to i64
  %i.jgr = shl nsw i64 %i.jgq, 2                  ; 2 uses
  %smin3516 = call i32 @llvm.smin.i32(i32 %i.bo, i32 %.0745937.i.a)
  %i.jgs = add i32 %smin3516, %indvars.iv949.i.a
  %smin3517 = call i32 @llvm.smin.i32(i32 %i.jgs, i32 112)
  %i.jgt = add i32 %smin3517, -4
  %i.jgu = sext i32 %i.jgt to i64
  %i.jgv = shl nsw i64 %i.jgu, 2                  ; 5 uses
  %scevgep3527 = getelementptr i8, ptr %scevgep3526, i64 %i.jgv
  %i.jgw = add i32 %indvars.iv949.i.a, -1
  %smin3328 = call i32 @llvm.smin.i32(i32 %i.bo, i32 %.0745937.i.a)
  %i.jgx = add i32 %smin3328, %indvars.iv949.i.a
  %smax3329 = call i32 @llvm.smin.i32(i32 %i.jgx, i32 112) ; 11 uses
  %i.jgy = add i32 %smax3329, -4
  %6 = sext i32 %i.jgy to i64                     ; 10 uses
  %i.jgz = add i32 %smax3329, -3                  ; 2 uses
  %7 = sext i32 %i.jgz to i64                     ; 2 uses
  %8 = add nsw i64 %6, 336
  %smax.i = tail call i32 @llvm.smax.i32(i32 %i.jgz, i32 5)
  %i.jha = add nsw i32 %smax.i, -4
  %9 = lshr i32 %i.jha, 1                         ; 4 uses
  %i.jhb = mul i32 %.0745937.i, 92                ; 8 uses
  %i.jhc = add i32 %i.jhb, 112                    ; 2 uses
  %i.jhd = tail call i32 @llvm.smin.i32(i32 %i.jhc, i32 %i.bo) ; 4 uses
  %i.jhe = sub nsw i32 %i.jhd, %i.jhb             ; 4 uses
  %i.jhf = tail call i32 @llvm.smin.i32(i32 %i.jhe, i32 112) ; 3 uses
  %i.jhg = icmp sgt i32 %i.jhc, %i.bo
  %or.cond794.i = select i1 %i.jfo, i1 true, i1 %i.jhg
  br i1 %or.cond794.i, label %bb.oc, label %bb.od

bb.oc:                                            ; preds = %bb.ob
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(50176) %i.jes, i8 0, i64 50176, i1 false), !noalias !499
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(150528) %i.jfd, i8 0, i64 150528, i1 false), !noalias !499
  br label %bb.od

bb.od:                                            ; preds = %bb.oc, %bb.ob
  %i.jhh = icmp sgt i32 %i.bo, %i.jhb
  %or.cond943.i = select i1 %i.jfp, i1 %i.jhh, i1 false
  br i1 %or.cond943.i, label %iter.check3662.preheader, label %._crit_edge842.split.i

iter.check3662.preheader:                         ; preds = %bb.od
  %min.iters.check3642 = icmp ult i32 %i.jgl, 3
  %min.iters.check3644 = icmp ult i32 %i.jgl, 31
  %i.jhi = and i64 %i.jgn, 28
  %n.vec3646 = and i64 %i.jgn, 8589934560         ; 6 uses
  %i.jhj = trunc i64 %n.vec3646 to i32
  %i.jhk = add i32 %i.jhb, %i.jhj
  %cmp.n3657 = icmp eq i64 %i.jgn, %n.vec3646
  %min.epilog.iters.check3665 = icmp eq i64 %i.jhi, 0
  %n.vec3667 = and i64 %i.jgn, 8589934588         ; 5 uses
  %i.jhl = trunc i64 %n.vec3667 to i32
  %i.jhm = add i32 %i.jhb, %i.jhl
  %cmp.n3675 = icmp eq i64 %i.jgn, %n.vec3667
  br label %iter.check3662

._crit_edge842.split.i:                           ; preds = %._crit_edge.i549, %bb.od
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #27, !noalias !501
  br i1 %i.jfs, label %.lr.ph850.i, label %._crit_edge851.split.thread.i

._crit_edge851.split.thread.i:                    ; preds = %._crit_edge842.split.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #27, !noalias !501
  br label %.preheader832.i

.lr.ph850.i:                                      ; preds = %._crit_edge842.split.i
  %i.jhn = icmp sgt i32 %i.jhe, 8                 ; 2 uses
  br i1 %i.jhn, label %.lr.ph846.i.preheader, label %._crit_edge851.split.i

.lr.ph846.i.preheader:                            ; preds = %.lr.ph850.i
  %i.jho = add nsw i64 %6, -4                     ; 3 uses
  %min.iters.check3609 = icmp ult i64 %i.jho, 8
  %n.vec3611 = and i64 %i.jho, -8                 ; 4 uses
  %i.jhp = or disjoint i64 %n.vec3611, 4
  %cmp.n3623 = icmp eq i64 %i.jho, %n.vec3611
  br label %.lr.ph846.i

iter.check3662:                                   ; preds = %iter.check3662.preheader, %._crit_edge.i549
  %indvars.iv951.i = phi i32 [ %indvars.iv.next952.i, %._crit_edge.i549 ], [ %indvars.iv949.i, %iter.check3662.preheader ] ; 3 uses
  %indvars.iv.i548 = phi i32 [ %indvars.iv.next.i550, %._crit_edge.i549 ], [ 0, %iter.check3662.preheader ] ; 3 uses
  %.0746839.i = phi i32 [ %i.jkd, %._crit_edge.i549 ], [ %i.jfk, %iter.check3662.preheader ] ; 2 uses
  %i.jhq = zext i32 %indvars.iv.i548 to i64       ; 6 uses
  %i.jhr = zext i32 %indvars.iv951.i to i64       ; 6 uses
  %i.jhs = shl i32 %.0746839.i, 2
  %i.jht = and i32 %i.jhs, 28                     ; 2 uses
  %i.jhu = lshr i32 %.fr1070, %i.jht
  %i.jhv = and i32 %i.jhu, 3
  %i.jhw = or disjoint i32 %i.jht, 2
  %i.jhx = lshr i32 %.fr1070, %i.jhw
  %i.jhy = and i32 %i.jhx, 3
  %i.jhz = zext nneg i32 %i.jhy to i64            ; 2 uses
  %i.jia = getelementptr inbounds nuw [50176 x i8], ptr %i.jfd, i64 %i.jhz ; 3 uses
  %i.jib = zext nneg i32 %i.jhv to i64            ; 2 uses
  %i.jic = getelementptr inbounds nuw [50176 x i8], ptr %i.jfd, i64 %i.jib ; 3 uses
  br i1 %min.iters.check3642, label %vec.epilog.scalar.ph3663.preheader, label %vector.memcheck3626

vector.memcheck3626:                              ; preds = %iter.check3662
  %i.jid = zext i32 %indvars.iv.i548 to i64
  %i.jie = shl nuw nsw i64 %i.jid, 2              ; 3 uses
  %i.jif = add i64 %i.jie, %i.jew
  %i.jig = zext i32 %indvars.iv951.i to i64
  %i.jih = add nsw i64 %i.axn, %i.jig
  %i.jii = shl nsw i64 %i.jih, 2
  %i.jij = add i64 %i.jii, %.13630                ; 3 uses
  %i.jik = mul nuw nsw i64 %i.jib, 50176          ; 2 uses
  %i.jil = mul nuw nsw i64 %i.jhz, 50176          ; 2 uses
  %.reass4856.a = add i64 %i.jil, %invariant.op4855.a
  %diff.check3628.a = icmp ugt i64 %.reass4856.a, -128
  %i.jim = add i64 %i.jil, %i.jfe
  %i.jin = add i64 %i.jim, %i.jie
  %i.jio = sub i64 %i.jij, %i.jin
  %diff.check3631 = icmp ugt i64 %i.jio, -128
  %conflict.rdx3632 = or i1 %diff.check3628.a, %diff.check3631
  %.reass4858 = add i64 %i.jik, %invariant.op4857
  %diff.check3633 = icmp ugt i64 %.reass4858, -128
  %conflict.rdx3634 = or i1 %conflict.rdx3632, %diff.check3633
  %i.jip = add i64 %i.jik, %i.jfe
  %i.jiq = add i64 %i.jip, %i.jie
  %i.jir = sub i64 %i.jij, %i.jiq
  %diff.check3635 = icmp ugt i64 %i.jir, -128
  %conflict.rdx3636 = or i1 %conflict.rdx3634, %diff.check3635
  %i.jis = sub i64 %i.jij, %i.jif
  %diff.check3637 = icmp ugt i64 %i.jis, -128
  %conflict.rdx3638 = or i1 %conflict.rdx3636, %diff.check3637
  br i1 %conflict.rdx3638, label %vec.epilog.scalar.ph3663.preheader, label %vector.main.loop.iter.check3643

vector.main.loop.iter.check3643:                  ; preds = %vector.memcheck3626
  br i1 %min.iters.check3644, label %vec.epilog.ph3666, label %vector.ph3645

vector.ph3645:                                    ; preds = %vector.main.loop.iter.check3643
  %i.jit = add nuw nsw i64 %n.vec3646, %i.jhr
  %i.jiu = add nuw nsw i64 %n.vec3646, %i.jhq
  %invariant.gep4851.a = getelementptr [4 x i8], ptr %i.axo, i64 %i.jhr
  br label %vector.body3649

vector.body3649:                                  ; preds = %vector.ph3645, %vector.body3649
  %index3650 = phi i64 [ 0, %vector.ph3645 ], [ %index.next3655, %vector.body3649 ] ; 3 uses
  %i.jiv = add nuw i64 %index3650, %i.jhq         ; 3 uses
  %gep4852.a = getelementptr [4 x i8], ptr %invariant.gep4851.a, i64 %index3650 ; 4 uses
  %i.jiw = getelementptr inbounds nuw i8, ptr %gep4852.a, i64 32
  %i.jix = getelementptr inbounds nuw i8, ptr %gep4852.a, i64 64
  %i.jiy = getelementptr inbounds nuw i8, ptr %gep4852.a, i64 96
  %wide.load3651 = load <8 x float>, ptr %gep4852.a, align 4, !tbaa !12, !alias.scope !500, !noalias !499
  %wide.load3652 = load <8 x float>, ptr %i.jiw, align 4, !tbaa !12, !alias.scope !500, !noalias !499
  %wide.load3653 = load <8 x float>, ptr %i.jix, align 4, !tbaa !12, !alias.scope !500, !noalias !499
  %wide.load3654 = load <8 x float>, ptr %i.jiy, align 4, !tbaa !12, !alias.scope !500, !noalias !499
  %i.jiz = call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %wide.load3651, <8 x float> zeroinitializer)
  %i.jja = call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %wide.load3652, <8 x float> zeroinitializer)
  %i.jjb = call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %wide.load3653, <8 x float> zeroinitializer)
  %i.jjc = call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %wide.load3654, <8 x float> zeroinitializer)
  %i.jjd = fmul reassoc nsz arcp contract afn <8 x float> %i.jiz, %i.awb ; 3 uses
  %i.jje = fmul reassoc nsz arcp contract afn <8 x float> %i.jja, %i.awc ; 3 uses
  %i.jjf = fmul reassoc nsz arcp contract afn <8 x float> %i.jjb, %i.awd ; 3 uses
  %i.jjg = fmul reassoc nsz arcp contract afn <8 x float> %i.jjc, %i.awe ; 3 uses
  %i.jjh = getelementptr inbounds nuw [4 x i8], ptr %i.jia, i64 %i.jiv ; 4 uses
  %i.jji = getelementptr inbounds nuw i8, ptr %i.jjh, i64 32
  %i.jjj = getelementptr inbounds nuw i8, ptr %i.jjh, i64 64
  %i.jjk = getelementptr inbounds nuw i8, ptr %i.jjh, i64 96
  store <8 x float> %i.jjd, ptr %i.jjh, align 64, !tbaa !12, !noalias !499
  store <8 x float> %i.jje, ptr %i.jji, align 32, !tbaa !12, !noalias !499
  store <8 x float> %i.jjf, ptr %i.jjj, align 64, !tbaa !12, !noalias !499
  store <8 x float> %i.jjg, ptr %i.jjk, align 32, !tbaa !12, !noalias !499
  %i.jjl = getelementptr inbounds nuw [4 x i8], ptr %i.jic, i64 %i.jiv ; 4 uses
  %i.jjm = getelementptr inbounds nuw i8, ptr %i.jjl, i64 32
  %i.jjn = getelementptr inbounds nuw i8, ptr %i.jjl, i64 64
  %i.jjo = getelementptr inbounds nuw i8, ptr %i.jjl, i64 96
  store <8 x float> %i.jjd, ptr %i.jjl, align 64, !tbaa !12, !noalias !499
  store <8 x float> %i.jje, ptr %i.jjm, align 32, !tbaa !12, !noalias !499
  store <8 x float> %i.jjf, ptr %i.jjn, align 64, !tbaa !12, !noalias !499
  store <8 x float> %i.jjg, ptr %i.jjo, align 32, !tbaa !12, !noalias !499
  %i.jjp = getelementptr inbounds nuw [4 x i8], ptr %i.jev, i64 %i.jiv ; 4 uses
  %i.jjq = getelementptr inbounds nuw i8, ptr %i.jjp, i64 32
  %i.jjr = getelementptr inbounds nuw i8, ptr %i.jjp, i64 64
  %i.jjs = getelementptr inbounds nuw i8, ptr %i.jjp, i64 96
  store <8 x float> %i.jjd, ptr %i.jjp, align 64, !tbaa !12, !noalias !499
  store <8 x float> %i.jje, ptr %i.jjq, align 32, !tbaa !12, !noalias !499
  store <8 x float> %i.jjf, ptr %i.jjr, align 64, !tbaa !12, !noalias !499
  store <8 x float> %i.jjg, ptr %i.jjs, align 32, !tbaa !12, !noalias !499
  %index.next3655 = add nuw i64 %index3650, 32    ; 2 uses
  %i.jjt = icmp eq i64 %index.next3655, %n.vec3646
  br i1 %i.jjt, label %middle.block3656, label %vector.body3649, !llvm.loop !259

middle.block3656:                                 ; preds = %vector.body3649
  br i1 %cmp.n3657, label %._crit_edge.i549, label %vec.epilog.iter.check3664

vec.epilog.iter.check3664:                        ; preds = %middle.block3656
  br i1 %min.epilog.iters.check3665, label %vec.epilog.scalar.ph3663.preheader, label %vec.epilog.ph3666, !prof !469

vec.epilog.ph3666:                                ; preds = %vector.main.loop.iter.check3643, %vec.epilog.iter.check3664
  %vec.epilog.resume.val3658 = phi i64 [ %n.vec3646, %vec.epilog.iter.check3664 ], [ 0, %vector.main.loop.iter.check3643 ]
  %i.jju = add nuw nsw i64 %n.vec3667, %i.jhr
  %i.jjv = add nuw nsw i64 %n.vec3667, %i.jhq
  %invariant.gep4853.a = getelementptr [4 x i8], ptr %i.axo, i64 %i.jhr
  br label %vec.epilog.vector.body3670

vec.epilog.vector.body3670:                       ; preds = %vec.epilog.vector.body3670, %vec.epilog.ph3666
  %index3671 = phi i64 [ %vec.epilog.resume.val3658, %vec.epilog.ph3666 ], [ %index.next3673, %vec.epilog.vector.body3670 ] ; 3 uses
  %i.jjw = add nuw i64 %index3671, %i.jhq         ; 3 uses
  %gep4854.a = getelementptr [4 x i8], ptr %invariant.gep4853.a, i64 %index3671
  %wide.load3672 = load <4 x float>, ptr %gep4854.a, align 4, !tbaa !12, !alias.scope !500, !noalias !499
  %i.jjx = call reassoc nsz arcp contract afn <4 x float> @llvm.maxnum.v4f32(<4 x float> %wide.load3672, <4 x float> zeroinitializer)
  %i.jjy = fmul reassoc nsz arcp contract afn <4 x float> %i.jjx, %i.awf ; 3 uses
  %i.jjz = getelementptr inbounds nuw [4 x i8], ptr %i.jia, i64 %i.jjw
  store <4 x float> %i.jjy, ptr %i.jjz, align 16, !tbaa !12, !noalias !499
  %i.jka = getelementptr inbounds nuw [4 x i8], ptr %i.jic, i64 %i.jjw
  store <4 x float> %i.jjy, ptr %i.jka, align 16, !tbaa !12, !noalias !499
  %i.jkb = getelementptr inbounds nuw [4 x i8], ptr %i.jev, i64 %i.jjw
  store <4 x float> %i.jjy, ptr %i.jkb, align 16, !tbaa !12, !noalias !499
  %index.next3673 = add nuw i64 %index3671, 4     ; 2 uses
  %i.jkc = icmp eq i64 %index.next3673, %n.vec3667
  br i1 %i.jkc, label %vec.epilog.middle.block3674, label %vec.epilog.vector.body3670, !llvm.loop !260

vec.epilog.middle.block3674:                      ; preds = %vec.epilog.vector.body3670
  br i1 %cmp.n3675, label %._crit_edge.i549, label %vec.epilog.scalar.ph3663.preheader

vec.epilog.scalar.ph3663.preheader:               ; preds = %iter.check3662, %vector.memcheck3626, %vec.epilog.iter.check3664, %vec.epilog.middle.block3674
  %indvars.iv953.i.ph = phi i64 [ %i.jhr, %iter.check3662 ], [ %i.jhr, %vector.memcheck3626 ], [ %i.jit, %vec.epilog.iter.check3664 ], [ %i.jju, %vec.epilog.middle.block3674 ]
  %indvars.iv945.i.ph = phi i64 [ %i.jhq, %iter.check3662 ], [ %i.jhq, %vector.memcheck3626 ], [ %i.jiu, %vec.epilog.iter.check3664 ], [ %i.jjv, %vec.epilog.middle.block3674 ]
  %.0747838.i.ph = phi i32 [ %i.jhb, %iter.check3662 ], [ %i.jhb, %vector.memcheck3626 ], [ %i.jhk, %vec.epilog.iter.check3664 ], [ %i.jhm, %vec.epilog.middle.block3674 ]
  br label %vec.epilog.scalar.ph3663

._crit_edge.i549:                                 ; preds = %vec.epilog.scalar.ph3663, %vec.epilog.middle.block3674, %middle.block3656
  %i.jkd = add nuw nsw i32 %.0746839.i, 1         ; 2 uses
  %i.jke = icmp slt i32 %i.jkd, %i.jfm
  %indvars.iv.next.i550 = add i32 %indvars.iv.i548, 112
  %indvars.iv.next952.i = add i32 %indvars.iv951.i, %i.bo
  br i1 %i.jke, label %iter.check3662, label %._crit_edge842.split.i

vec.epilog.scalar.ph3663:                         ; preds = %vec.epilog.scalar.ph3663.preheader, %vec.epilog.scalar.ph3663
  %indvars.iv953.i = phi i64 [ %indvars.iv.next954.i, %vec.epilog.scalar.ph3663 ], [ %indvars.iv953.i.ph, %vec.epilog.scalar.ph3663.preheader ] ; 2 uses
  %indvars.iv945.i = phi i64 [ %indvars.iv.next946.i, %vec.epilog.scalar.ph3663 ], [ %indvars.iv945.i.ph, %vec.epilog.scalar.ph3663.preheader ] ; 4 uses
  %.0747838.i = phi i32 [ %i.jkm, %vec.epilog.scalar.ph3663 ], [ %.0747838.i.ph, %vec.epilog.scalar.ph3663.preheader ]
  %i.jkf = getelementptr inbounds nuw [4 x i8], ptr %i.axo, i64 %indvars.iv953.i
  %i.jkg = load float, ptr %i.jkf, align 4, !tbaa !12, !alias.scope !500, !noalias !499
  %i.jkh = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.jkg, float 0.000000e+00)
  %i.jki = fmul reassoc nsz arcp contract afn float %i.jkh, %i.awg ; 3 uses
  %i.jkj = getelementptr inbounds nuw [4 x i8], ptr %i.jia, i64 %indvars.iv945.i
  store float %i.jki, ptr %i.jkj, align 4, !tbaa !12, !noalias !499
  %i.jkk = getelementptr inbounds nuw [4 x i8], ptr %i.jic, i64 %indvars.iv945.i
  store float %i.jki, ptr %i.jkk, align 4, !tbaa !12, !noalias !499
  %i.jkl = getelementptr inbounds nuw [4 x i8], ptr %i.jev, i64 %indvars.iv945.i
  store float %i.jki, ptr %i.jkl, align 4, !tbaa !12, !noalias !499
  %i.jkm = add nuw nsw i32 %.0747838.i, 1         ; 2 uses
  %indvars.iv.next946.i = add nuw nsw i64 %indvars.iv945.i, 1
  %indvars.iv.next954.i = add nuw nsw i64 %indvars.iv953.i, 1
  %i.jkn = icmp slt i32 %i.jkm, %i.jhd
  br i1 %i.jkn, label %vec.epilog.scalar.ph3663, label %._crit_edge.i549, !llvm.loop !261

._crit_edge851.split.i:                           ; preds = %._crit_edge847.i, %.lr.ph850.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #27, !noalias !501
  br i1 %i.jfu, label %.lr.ph872.i, label %.preheader832.i

.lr.ph872.i:                                      ; preds = %._crit_edge851.split.i
  %i.jko = icmp sgt i32 %i.jhe, 6
  br i1 %i.jko, label %.lr.ph855.preheader.i.preheader, label %.lr.ph881.i

.lr.ph855.preheader.i.preheader:                  ; preds = %.lr.ph872.i
  %scevgep3518.a = getelementptr i8, ptr %i.jes, i64 %i.jgv
  %scevgep3568 = getelementptr i8, ptr %scevgep3567, i64 %i.jgr
  %i.jkp = add nsw i64 %6, -1
  %i.jkq = add nsw i64 %6, -1
  %i.jkr = add nsw i64 %7, -3                     ; 3 uses
  %min.iters.check3592 = icmp ult i64 %i.jkr, 8
  %n.vec3594 = and i64 %i.jkr, -8                 ; 4 uses
  %i.jks = or disjoint i64 %n.vec3594, 3
  %cmp.n3605 = icmp eq i64 %i.jkr, %n.vec3594
  %i.jkt = add nsw i64 %6, -4                     ; 3 uses
  %min.iters.check3574 = icmp ult i64 %i.jkt, 8
  %n.vec3576 = and i64 %i.jkt, -8                 ; 4 uses
  %i.jku = or disjoint i64 %n.vec3576, 4
  %cmp.n3588 = icmp eq i64 %i.jkt, %n.vec3576
  %i.jkv = add nsw i64 %6, -4                     ; 3 uses
  %min.iters.check3544 = icmp ult i64 %i.jkv, 8
  %n.vec3546 = and i64 %i.jkv, -8                 ; 4 uses
  %i.jkw = or disjoint i64 %n.vec3546, 4
  %cmp.n3557 = icmp eq i64 %i.jkv, %n.vec3546
  br label %.lr.ph855.preheader.i

.lr.ph846.i:                                      ; preds = %.lr.ph846.i.preheader, %._crit_edge847.i
  %indvars.iv1165 = phi i64 [ %indvars.iv.next1166, %._crit_edge847.i ], [ %8, %.lr.ph846.i.preheader ] ; 2 uses
  %.sroa.phi = phi ptr [ %.sroa.gep, %._crit_edge847.i ], [ %.sroa.gep4799, %.lr.ph846.i.preheader ] ; 2 uses
  %indvars.iv967.i = phi i64 [ 4, %._crit_edge847.i ], [ 3, %.lr.ph846.i.preheader ]
  %indvars.iv960.i = phi i64 [ %indvars.iv.next961.i, %._crit_edge847.i ], [ 340, %.lr.ph846.i.preheader ] ; 4 uses
  br i1 %min.iters.check3609, label %scalar.ph3608.preheader, label %vector.ph3610

vector.ph3610:                                    ; preds = %.lr.ph846.i
  %i.jkx = add i64 %indvars.iv960.i, %n.vec3611
  %i.jky = getelementptr [4 x i8], ptr %i.jev, i64 %indvars.iv960.i
  br label %vector.body3612

vector.body3612:                                  ; preds = %vector.body3612, %vector.ph3610
  %index3613 = phi i64 [ 0, %vector.ph3610 ], [ %index.next3621, %vector.body3612 ] ; 3 uses
  %i.jkz = getelementptr [4 x i8], ptr %i.jky, i64 %index3613 ; 7 uses
  %i.jla = getelementptr i8, ptr %i.jkz, i64 -1344
  %wide.load3614 = load <8 x float>, ptr %i.jla, align 16, !tbaa !12, !noalias !499
  %i.jlb = getelementptr i8, ptr %i.jkz, i64 -448
  %wide.load3615 = load <8 x float>, ptr %i.jlb, align 16, !tbaa !12, !noalias !499
  %i.jlc = getelementptr inbounds nuw i8, ptr %i.jkz, i64 448
  %wide.load3616 = load <8 x float>, ptr %i.jlc, align 16, !tbaa !12, !noalias !499
  %i.jld = getelementptr inbounds nuw i8, ptr %i.jkz, i64 1344
  %wide.load3617 = load <8 x float>, ptr %i.jld, align 16, !tbaa !12, !noalias !499
  %i.jle = getelementptr i8, ptr %i.jkz, i64 -896
  %wide.load3618 = load <8 x float>, ptr %i.jle, align 16, !tbaa !12, !noalias !499
  %i.jlf = getelementptr inbounds nuw i8, ptr %i.jkz, i64 896
  %wide.load3619 = load <8 x float>, ptr %i.jlf, align 16, !tbaa !12, !noalias !499
  %i.jlg = fadd reassoc nsz arcp contract afn <8 x float> %wide.load3619, %wide.load3618
  %i.jlh = fmul reassoc nsz arcp contract afn <8 x float> %i.jlg, splat (float -3.000000e+00)
  %wide.load3620 = load <8 x float>, ptr %i.jkz, align 16, !tbaa !12, !noalias !499
  %i.jli = fmul reassoc nsz arcp contract afn <8 x float> %wide.load3620, splat (float 6.000000e+00)
  %i.jlj = fadd reassoc nsz arcp contract afn <8 x float> %wide.load3615, %wide.load3616
  %i.jlk = fsub reassoc nsz arcp contract afn <8 x float> %wide.load3614, %i.jlj
  %i.jll = fadd reassoc nsz arcp contract afn <8 x float> %i.jlk, %wide.load3617
  %i.jlm = fadd reassoc nsz arcp contract afn <8 x float> %i.jll, %i.jlh
  %i.jln = fadd reassoc nsz arcp contract afn <8 x float> %i.jlm, %i.jli ; 2 uses
  %i.jlo = fmul reassoc nsz arcp contract afn <8 x float> %i.jln, %i.jln
  %i.jlp = getelementptr [4 x i8], ptr %.sroa.phi, i64 %index3613
  %i.jlq = getelementptr i8, ptr %i.jlp, i64 -1248
  store <8 x float> %i.jlo, ptr %i.jlq, align 16, !tbaa !12, !noalias !501
  %index.next3621 = add nuw i64 %index3613, 8     ; 2 uses
  %i.jlr = icmp eq i64 %index.next3621, %n.vec3611
  br i1 %i.jlr, label %middle.block3622, label %vector.body3612, !llvm.loop !262

middle.block3622:                                 ; preds = %vector.body3612
  br i1 %cmp.n3623, label %._crit_edge847.i, label %scalar.ph3608.preheader

scalar.ph3608.preheader:                          ; preds = %.lr.ph846.i, %middle.block3622
  %indvars.iv962.i.ph = phi i64 [ %indvars.iv960.i, %.lr.ph846.i ], [ %i.jkx, %middle.block3622 ]
  %indvars.iv958.i.ph = phi i64 [ 4, %.lr.ph846.i ], [ %i.jhp, %middle.block3622 ]
  br label %scalar.ph3608

._crit_edge847.i:                                 ; preds = %scalar.ph3608, %middle.block3622
  %i.jls = icmp slt i64 %indvars.iv967.i, %invariant.op.i
  %indvars.iv.next961.i = add nuw nsw i64 %indvars.iv960.i, 112
  %indvars.iv.next1166 = add i64 %indvars.iv1165, 112
  br i1 %i.jls, label %.lr.ph846.i, label %._crit_edge851.split.i

scalar.ph3608:                                    ; preds = %scalar.ph3608.preheader, %scalar.ph3608
  %indvars.iv962.i = phi i64 [ %indvars.iv.next963.i, %scalar.ph3608 ], [ %indvars.iv962.i.ph, %scalar.ph3608.preheader ] ; 2 uses
  %indvars.iv958.i = phi i64 [ %indvars.iv.next959.i, %scalar.ph3608 ], [ %indvars.iv958.i.ph, %scalar.ph3608.preheader ] ; 2 uses
  %i.jlt = getelementptr [4 x i8], ptr %i.jev, i64 %indvars.iv962.i ; 7 uses
  %i.jlu = getelementptr i8, ptr %i.jlt, i64 -1344
  %i.jlv = load float, ptr %i.jlu, align 4, !tbaa !12, !noalias !499
  %i.jlw = getelementptr i8, ptr %i.jlt, i64 -448
  %i.jlx = load float, ptr %i.jlw, align 4, !tbaa !12, !noalias !499
  %i.jly = getelementptr inbounds nuw i8, ptr %i.jlt, i64 448
  %i.jlz = load float, ptr %i.jly, align 4, !tbaa !12, !noalias !499
  %i.jma = getelementptr inbounds nuw i8, ptr %i.jlt, i64 1344
  %i.jmb = load float, ptr %i.jma, align 4, !tbaa !12, !noalias !499
  %i.jmc = getelementptr i8, ptr %i.jlt, i64 -896
  %i.jmd = load float, ptr %i.jmc, align 4, !tbaa !12, !noalias !499
  %i.jme = getelementptr inbounds nuw i8, ptr %i.jlt, i64 896
  %i.jmf = load float, ptr %i.jme, align 4, !tbaa !12, !noalias !499
  %i.jmg = fadd reassoc nsz arcp contract afn float %i.jmf, %i.jmd
  %.neg826.i = fmul reassoc nsz arcp contract afn float %i.jmg, -3.000000e+00
  %i.jmh = load float, ptr %i.jlt, align 4, !tbaa !12, !noalias !499
  %i.jmi = fmul reassoc nsz arcp contract afn float %i.jmh, 6.000000e+00
  %i.jmj = fadd reassoc nsz arcp contract afn float %i.jlx, %i.jlz
  %.neg827.i = fsub reassoc nsz arcp contract afn float %i.jlv, %i.jmj
  %i.jmk = fadd reassoc nsz arcp contract afn float %.neg827.i, %i.jmb
  %i.jml = fadd reassoc nsz arcp contract afn float %i.jmk, %.neg826.i
  %i.jmm = fadd reassoc nsz arcp contract afn float %i.jml, %i.jmi ; 2 uses
  %i.jmn = fmul reassoc nsz arcp contract afn float %i.jmm, %i.jmm
  %i.jmo = getelementptr [4 x i8], ptr %.sroa.phi, i64 %indvars.iv958.i
  %i.jmp = getelementptr i8, ptr %i.jmo, i64 -1264
  store float %i.jmn, ptr %i.jmp, align 4, !tbaa !12, !noalias !501
  %indvars.iv.next959.i = add nuw nsw i64 %indvars.iv958.i, 1
  %indvars.iv.next963.i = add nuw i64 %indvars.iv962.i, 1 ; 2 uses
  %exitcond1167.not = icmp eq i64 %indvars.iv.next963.i, %indvars.iv1165
  br i1 %exitcond1167.not, label %._crit_edge847.i, label %scalar.ph3608, !llvm.loop !263

.loopexit.i546:                                   ; preds = %.lr.ph866.i.prol.loopexit, %.lr.ph866.i, %middle.block3556, %._crit_edge856.i
  %i.jmq = add nuw nsw i32 %.0772867.i, 1         ; 2 uses
  %i.jmr = icmp slt i32 %i.jmq, %i.jft
  %indvars.iv.next973.i = add i32 %indvars.iv972.i, 112
  %indvars.iv.next982.i = add i32 %indvars.iv981.i, 112
  br i1 %i.jmr, label %.lr.ph855.preheader.i, label %.preheader832.i

.preheader832.i:                                  ; preds = %.loopexit.i546, %._crit_edge851.split.i, %._crit_edge851.split.thread.i
  br i1 %i.jfw, label %.lr.ph881.i, label %._crit_edge925.i

.lr.ph881.i:                                      ; preds = %.lr.ph872.i, %.preheader832.i
  %i.jms = add nsw i32 %i.jhf, -2                 ; 2 uses
  %i.jmt = add i32 %smax3329, -5
  %i.jmu = add i32 %smax3329, -5
  br label %bb.oe

.lr.ph855.preheader.i:                            ; preds = %.lr.ph855.preheader.i.preheader, %.loopexit.i546
  %indvars.iv981.i = phi i32 [ %indvars.iv.next982.i, %.loopexit.i546 ], [ 560, %.lr.ph855.preheader.i.preheader ] ; 4 uses
  %indvars.iv972.i = phi i32 [ %indvars.iv.next973.i, %.loopexit.i546 ], [ 448, %.lr.ph855.preheader.i.preheader ] ; 3 uses
  %.0769870.i = phi ptr [ %.0770869.i, %.loopexit.i546 ], [ %i.c, %.lr.ph855.preheader.i.preheader ] ; 7 uses
  %.0770869.i = phi ptr [ %.0771868.i, %.loopexit.i546 ], [ %i.aot, %.lr.ph855.preheader.i.preheader ] ; 7 uses
  %.0771868.i = phi ptr [ %.0769870.i, %.loopexit.i546 ], [ %i.aou, %.lr.ph855.preheader.i.preheader ] ; 13 uses
  %.0772867.i = phi i32 [ %i.jmq, %.loopexit.i546 ], [ 4, %.lr.ph855.preheader.i.preheader ]
  %i.jmv = zext i32 %indvars.iv981.i to i64
  %i.jmw = shl nuw nsw i64 %i.jmv, 2              ; 2 uses
  %scevgep3566 = getelementptr i8, ptr %scevgep3565, i64 %i.jmw
  %scevgep3569 = getelementptr i8, ptr %scevgep3568, i64 %i.jmw
  %i.jmx = zext i32 %indvars.iv972.i to i64
  %i.jmy = shl nuw nsw i64 %i.jmx, 2              ; 2 uses
  %scevgep3515.a = getelementptr i8, ptr %scevgep3514.a, i64 %i.jmy ; 4 uses
  %scevgep3519 = getelementptr i8, ptr %scevgep3518.a, i64 %i.jmy ; 4 uses
  %i.jmz = zext i32 %indvars.iv972.i to i64       ; 5 uses
  %i.jna = add nsw i64 %6, %i.jmz
  %i.jnb = zext i32 %indvars.iv981.i to i64       ; 2 uses
  %i.jnc = add nsw i64 %6, %i.jnb
  %i.jnd = add nsw i64 %7, %i.jmz
  %i.jne = or disjoint i64 %i.jmz, 3              ; 4 uses
  %.phi.trans.insert.i = getelementptr [4 x i8], ptr %i.jev, i64 %i.jne
  %.pre.i = load float, ptr %.phi.trans.insert.i, align 4, !tbaa !12, !noalias !499 ; 2 uses
  br i1 %min.iters.check3592, label %.lr.ph855.i.preheader, label %vector.ph3593

vector.ph3593:                                    ; preds = %.lr.ph855.preheader.i
  %i.jnf = add nsw i64 %i.jne, %n.vec3594
  %vector.recur.init = insertelement <8 x float> poison, float %.pre.i, i64 7
  br label %vector.body3595

vector.body3595:                                  ; preds = %vector.body3595, %vector.ph3593
  %index3596 = phi i64 [ 0, %vector.ph3593 ], [ %index.next3603, %vector.body3595 ] ; 3 uses
  %vector.recur = phi <8 x float> [ %vector.recur.init, %vector.ph3593 ], [ %wide.load3599, %vector.body3595 ]
  %i.jng = add nuw i64 %i.jne, %index3596         ; 2 uses
  %i.jnh = getelementptr [4 x i8], ptr %i.jev, i64 %i.jng ; 5 uses
  %i.jni = getelementptr i8, ptr %i.jnh, i64 -12
  %wide.load3597 = load <8 x float>, ptr %i.jni, align 32, !tbaa !12, !noalias !499
  %i.jnj = getelementptr i8, ptr %i.jnh, i64 -4
  %wide.load3598 = load <8 x float>, ptr %i.jnj, align 8, !tbaa !12, !noalias !499
  %i.jnk = getelementptr inbounds nuw [4 x i8], ptr %i.jev, i64 %i.jng
  %i.jnl = getelementptr inbounds nuw i8, ptr %i.jnk, i64 4
  %wide.load3599 = load <8 x float>, ptr %i.jnl, align 16, !tbaa !12, !noalias !499 ; 4 uses
  %i.jnm = shufflevector <8 x float> %vector.recur, <8 x float> %wide.load3599, <8 x i32> <i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14>
  %i.jnn = getelementptr inbounds nuw i8, ptr %i.jnh, i64 12
  %wide.load3600 = load <8 x float>, ptr %i.jnn, align 8, !tbaa !12, !noalias !499
  %i.jno = getelementptr i8, ptr %i.jnh, i64 -8
  %wide.load3601 = load <8 x float>, ptr %i.jno, align 4, !tbaa !12, !noalias !499
  %i.jnp = getelementptr inbounds nuw i8, ptr %i.jnh, i64 8
  %wide.load3602 = load <8 x float>, ptr %i.jnp, align 4, !tbaa !12, !noalias !499
  %i.jnq = fadd reassoc nsz arcp contract afn <8 x float> %wide.load3602, %wide.load3601
  %i.jnr = fmul reassoc nsz arcp contract afn <8 x float> %i.jnq, splat (float -3.000000e+00)
  %i.jns = fmul reassoc nsz arcp contract afn <8 x float> %i.jnm, splat (float 6.000000e+00)
  %i.jnt = fadd reassoc nsz arcp contract afn <8 x float> %i.jns, %wide.load3597
  %i.jnu = fadd reassoc nsz arcp contract afn <8 x float> %wide.load3598, %wide.load3599
  %i.jnv = fsub reassoc nsz arcp contract afn <8 x float> %i.jnt, %i.jnu
  %i.jnw = fadd reassoc nsz arcp contract afn <8 x float> %i.jnv, %wide.load3600
  %i.jnx = fadd reassoc nsz arcp contract afn <8 x float> %i.jnw, %i.jnr ; 2 uses
  %i.jny = fmul reassoc nsz arcp contract afn <8 x float> %i.jnx, %i.jnx
  %i.jnz = getelementptr [4 x i8], ptr %i.d, i64 %index3596
  store <8 x float> %i.jny, ptr %i.jnz, align 16, !tbaa !12, !noalias !501
  %index.next3603 = add nuw i64 %index3596, 8     ; 2 uses
  %i.joa = icmp eq i64 %index.next3603, %n.vec3594
  br i1 %i.joa, label %middle.block3604, label %vector.body3595, !llvm.loop !264

middle.block3604:                                 ; preds = %vector.body3595
  %vector.recur.extract = extractelement <8 x float> %wide.load3599, i64 7
  br i1 %cmp.n3605, label %._crit_edge856.i, label %.lr.ph855.i.preheader

.lr.ph855.i.preheader:                            ; preds = %.lr.ph855.preheader.i, %middle.block3604
  %.ph = phi float [ %.pre.i, %.lr.ph855.preheader.i ], [ %vector.recur.extract, %middle.block3604 ]
  %indvars.iv974.i.ph = phi i64 [ %i.jne, %.lr.ph855.preheader.i ], [ %i.jnf, %middle.block3604 ]
  %indvars.iv970.i.ph = phi i64 [ 3, %.lr.ph855.preheader.i ], [ %i.jks, %middle.block3604 ]
  br label %.lr.ph855.i

._crit_edge856.i:                                 ; preds = %.lr.ph855.i, %middle.block3604
  %i.job = or disjoint i64 %i.jmz, 4              ; 4 uses
  br i1 %i.jhn, label %.lr.ph860.i.preheader, label %.loopexit.i546

.lr.ph860.i.preheader:                            ; preds = %._crit_edge856.i
  %i.joc = or disjoint i32 %indvars.iv981.i, 4
  %i.jod = zext i32 %i.joc to i64                 ; 4 uses
  br i1 %min.iters.check3574, label %.lr.ph860.i.preheader4611, label %vector.memcheck3560

vector.memcheck3560:                              ; preds = %.lr.ph860.i.preheader
  %scevgep3561 = getelementptr i8, ptr %.0771868.i, i64 -16
  %scevgep3564 = getelementptr i8, ptr %scevgep3561, i64 %i.jgr
  %bound03570 = icmp ult ptr %.0771868.i, %scevgep3569
  %bound13571 = icmp ult ptr %scevgep3566, %scevgep3564
  %found.conflict3572 = and i1 %bound03570, %bound13571
  br i1 %found.conflict3572, label %.lr.ph860.i.preheader4611, label %vector.ph3575

vector.ph3575:                                    ; preds = %vector.memcheck3560
  %i.joe = add nsw i64 %n.vec3576, %i.jod
  %invariant.gep4859.a = getelementptr [4 x i8], ptr %i.jev, i64 %i.jod
  br label %vector.body3577

vector.body3577:                                  ; preds = %vector.body3577, %vector.ph3575
  %index3578 = phi i64 [ 0, %vector.ph3575 ], [ %index.next3586, %vector.body3577 ] ; 3 uses
  %gep4860.a = getelementptr [4 x i8], ptr %invariant.gep4859.a, i64 %index3578 ; 7 uses
  %i.jof = getelementptr i8, ptr %gep4860.a, i64 -1344
  %wide.load3579 = load <8 x float>, ptr %i.jof, align 16, !tbaa !12, !alias.scope !502, !noalias !499
  %i.jog = getelementptr i8, ptr %gep4860.a, i64 -448
  %wide.load3580 = load <8 x float>, ptr %i.jog, align 16, !tbaa !12, !alias.scope !502, !noalias !499
  %i.joh = getelementptr inbounds nuw i8, ptr %gep4860.a, i64 448
  %wide.load3581 = load <8 x float>, ptr %i.joh, align 16, !tbaa !12, !alias.scope !502, !noalias !499
  %i.joi = getelementptr inbounds nuw i8, ptr %gep4860.a, i64 1344
  %wide.load3582 = load <8 x float>, ptr %i.joi, align 16, !tbaa !12, !alias.scope !502, !noalias !499
  %i.joj = getelementptr i8, ptr %gep4860.a, i64 -896
  %wide.load3583 = load <8 x float>, ptr %i.joj, align 16, !tbaa !12, !alias.scope !502, !noalias !499
  %i.jok = getelementptr inbounds nuw i8, ptr %gep4860.a, i64 896
  %wide.load3584 = load <8 x float>, ptr %i.jok, align 16, !tbaa !12, !alias.scope !502, !noalias !499
  %i.jol = fadd reassoc nsz arcp contract afn <8 x float> %wide.load3584, %wide.load3583
  %i.jom = fmul reassoc nsz arcp contract afn <8 x float> %i.jol, splat (float -3.000000e+00)
  %wide.load3585 = load <8 x float>, ptr %gep4860.a, align 16, !tbaa !12, !alias.scope !502, !noalias !499
  %i.jon = fmul reassoc nsz arcp contract afn <8 x float> %wide.load3585, splat (float 6.000000e+00)
  %i.joo = fadd reassoc nsz arcp contract afn <8 x float> %wide.load3580, %wide.load3581
  %i.jop = fsub reassoc nsz arcp contract afn <8 x float> %wide.load3579, %i.joo
  %i.joq = fadd reassoc nsz arcp contract afn <8 x float> %i.jop, %wide.load3582
  %i.jor = fadd reassoc nsz arcp contract afn <8 x float> %i.joq, %i.jom
  %i.jos = fadd reassoc nsz arcp contract afn <8 x float> %i.jor, %i.jon ; 2 uses
  %i.jot = fmul reassoc nsz arcp contract afn <8 x float> %i.jos, %i.jos
  %i.jou = getelementptr [4 x i8], ptr %.0771868.i, i64 %index3578
  store <8 x float> %i.jot, ptr %i.jou, align 4, !tbaa !12, !alias.scope !503, !noalias !504
  %index.next3586 = add nuw i64 %index3578, 8     ; 2 uses
  %i.jov = icmp eq i64 %index.next3586, %n.vec3576
  br i1 %i.jov, label %middle.block3587, label %vector.body3577, !llvm.loop !268

middle.block3587:                                 ; preds = %vector.body3577
  br i1 %cmp.n3588, label %.lr.ph866.i.preheader, label %.lr.ph860.i.preheader4611

.lr.ph860.i.preheader4611:                        ; preds = %vector.memcheck3560, %.lr.ph860.i.preheader, %middle.block3587
  %indvars.iv983.i.ph = phi i64 [ %i.jod, %vector.memcheck3560 ], [ %i.jod, %.lr.ph860.i.preheader ], [ %i.joe, %middle.block3587 ] ; 5 uses
  %indvars.iv979.i.ph = phi i64 [ 4, %vector.memcheck3560 ], [ 4, %.lr.ph860.i.preheader ], [ %i.jku, %middle.block3587 ] ; 3 uses
  %i.jow = sub nsw i64 %6, %indvars.iv983.i.ph
  %i.jox = add nsw i64 %i.jkp, %i.jnb
  %xtraiter4729 = and i64 %i.jow, 1
  %lcmp.mod4730.not = icmp eq i64 %xtraiter4729, 0
  br i1 %lcmp.mod4730.not, label %.lr.ph860.i.prol.loopexit, label %.lr.ph860.i.prol

.lr.ph860.i.prol:                                 ; preds = %.lr.ph860.i.preheader4611
  %i.joy = getelementptr [4 x i8], ptr %i.jev, i64 %indvars.iv983.i.ph ; 7 uses
  %i.joz = getelementptr i8, ptr %i.joy, i64 -1344
  %i.jpa = load float, ptr %i.joz, align 4, !tbaa !12, !noalias !499
  %i.jpb = getelementptr i8, ptr %i.joy, i64 -448
  %i.jpc = load float, ptr %i.jpb, align 4, !tbaa !12, !noalias !499
  %i.jpd = getelementptr inbounds nuw i8, ptr %i.joy, i64 448
  %i.jpe = load float, ptr %i.jpd, align 4, !tbaa !12, !noalias !499
  %i.jpf = getelementptr inbounds nuw i8, ptr %i.joy, i64 1344
  %i.jpg = load float, ptr %i.jpf, align 4, !tbaa !12, !noalias !499
  %i.jph = getelementptr i8, ptr %i.joy, i64 -896
  %i.jpi = load float, ptr %i.jph, align 4, !tbaa !12, !noalias !499
  %i.jpj = getelementptr inbounds nuw i8, ptr %i.joy, i64 896
  %i.jpk = load float, ptr %i.jpj, align 4, !tbaa !12, !noalias !499
  %i.jpl = fadd reassoc nsz arcp contract afn float %i.jpk, %i.jpi
  %.neg816.i.prol = fmul reassoc nsz arcp contract afn float %i.jpl, -3.000000e+00
  %i.jpm = load float, ptr %i.joy, align 4, !tbaa !12, !noalias !499
  %i.jpn = fmul reassoc nsz arcp contract afn float %i.jpm, 6.000000e+00
  %i.jpo = fadd reassoc nsz arcp contract afn float %i.jpc, %i.jpe
  %.neg817.i.prol = fsub reassoc nsz arcp contract afn float %i.jpa, %i.jpo
  %i.jpp = fadd reassoc nsz arcp contract afn float %.neg817.i.prol, %i.jpg
  %i.jpq = fadd reassoc nsz arcp contract afn float %i.jpp, %.neg816.i.prol
  %i.jpr = fadd reassoc nsz arcp contract afn float %i.jpq, %i.jpn ; 2 uses
  %i.jps = fmul reassoc nsz arcp contract afn float %i.jpr, %i.jpr
  %i.jpt = getelementptr [4 x i8], ptr %.0771868.i, i64 %indvars.iv979.i.ph
  %i.jpu = getelementptr i8, ptr %i.jpt, i64 -16
  store float %i.jps, ptr %i.jpu, align 4, !tbaa !12, !noalias !501
  %indvars.iv.next980.i.prol = add nuw nsw i64 %indvars.iv979.i.ph, 1
  %indvars.iv.next984.i.prol = add nuw nsw i64 %indvars.iv983.i.ph, 1
  br label %.lr.ph860.i.prol.loopexit

.lr.ph860.i.prol.loopexit:                        ; preds = %.lr.ph860.i.prol, %.lr.ph860.i.preheader4611
  %indvars.iv983.i.unr = phi i64 [ %indvars.iv983.i.ph, %.lr.ph860.i.preheader4611 ], [ %indvars.iv.next984.i.prol, %.lr.ph860.i.prol ]
  %indvars.iv979.i.unr = phi i64 [ %indvars.iv979.i.ph, %.lr.ph860.i.preheader4611 ], [ %indvars.iv.next980.i.prol, %.lr.ph860.i.prol ]
  %i.jpv = icmp eq i64 %i.jox, %indvars.iv983.i.ph
  br i1 %i.jpv, label %.lr.ph866.i.preheader, label %.lr.ph860.i

.lr.ph855.i:                                      ; preds = %.lr.ph855.i.preheader, %.lr.ph855.i
  %i.jpw = phi float [ %i.jqd, %.lr.ph855.i ], [ %.ph, %.lr.ph855.i.preheader ]
  %indvars.iv974.i = phi i64 [ %indvars.iv.next975.i, %.lr.ph855.i ], [ %indvars.iv974.i.ph, %.lr.ph855.i.preheader ] ; 2 uses
  %indvars.iv970.i = phi i64 [ %indvars.iv.next971.i, %.lr.ph855.i ], [ %indvars.iv970.i.ph, %.lr.ph855.i.preheader ] ; 2 uses
  %i.jpx = getelementptr [4 x i8], ptr %i.jev, i64 %indvars.iv974.i ; 5 uses
  %i.jpy = getelementptr i8, ptr %i.jpx, i64 -12
  %i.jpz = load float, ptr %i.jpy, align 4, !tbaa !12, !noalias !499
  %i.jqa = getelementptr i8, ptr %i.jpx, i64 -4
  %i.jqb = load float, ptr %i.jqa, align 4, !tbaa !12, !noalias !499
  %indvars.iv.next975.i = add nuw nsw i64 %indvars.iv974.i, 1 ; 3 uses
  %i.jqc = getelementptr inbounds nuw [4 x i8], ptr %i.jev, i64 %indvars.iv.next975.i
  %i.jqd = load float, ptr %i.jqc, align 4, !tbaa !12, !noalias !499 ; 2 uses
  %i.jqe = getelementptr inbounds nuw i8, ptr %i.jpx, i64 12
  %i.jqf = load float, ptr %i.jqe, align 4, !tbaa !12, !noalias !499
  %i.jqg = getelementptr i8, ptr %i.jpx, i64 -8
  %i.jqh = load float, ptr %i.jqg, align 4, !tbaa !12, !noalias !499
  %i.jqi = getelementptr inbounds nuw i8, ptr %i.jpx, i64 8
  %i.jqj = load float, ptr %i.jqi, align 4, !tbaa !12, !noalias !499
  %i.jqk = fadd reassoc nsz arcp contract afn float %i.jqj, %i.jqh
  %.neg821.i = fmul reassoc nsz arcp contract afn float %i.jqk, -3.000000e+00
  %i.jql = fmul reassoc nsz arcp contract afn float %i.jpw, 6.000000e+00
  %.neg768 = fadd reassoc nsz arcp contract afn float %i.jql, %i.jpz
  %i.jqm = fadd reassoc nsz arcp contract afn float %i.jqb, %i.jqd
  %i.jqn = fsub reassoc nsz arcp contract afn float %.neg768, %i.jqm
  %i.jqo = fadd reassoc nsz arcp contract afn float %i.jqn, %i.jqf
  %i.jqp = fadd reassoc nsz arcp contract afn float %i.jqo, %.neg821.i ; 2 uses
  %i.jqq = fmul reassoc nsz arcp contract afn float %i.jqp, %i.jqp
  %i.jqr = getelementptr [4 x i8], ptr %i.d, i64 %indvars.iv970.i
  %i.jqs = getelementptr i8, ptr %i.jqr, i64 -12
  store float %i.jqq, ptr %i.jqs, align 4, !tbaa !12, !noalias !501
  %indvars.iv.next971.i = add nuw nsw i64 %indvars.iv970.i, 1
  %exitcond1170.not = icmp eq i64 %indvars.iv.next975.i, %i.jnd
  br i1 %exitcond1170.not, label %._crit_edge856.i, label %.lr.ph855.i, !llvm.loop !269

.lr.ph860.i:                                      ; preds = %.lr.ph860.i.prol.loopexit, %.lr.ph860.i
  %indvars.iv983.i = phi i64 [ %indvars.iv.next984.i.1, %.lr.ph860.i ], [ %indvars.iv983.i.unr, %.lr.ph860.i.prol.loopexit ] ; 3 uses
  %indvars.iv979.i = phi i64 [ %indvars.iv.next980.i.1, %.lr.ph860.i ], [ %indvars.iv979.i.unr, %.lr.ph860.i.prol.loopexit ] ; 3 uses
  %i.jqt = getelementptr [4 x i8], ptr %i.jev, i64 %indvars.iv983.i ; 7 uses
  %i.jqu = getelementptr i8, ptr %i.jqt, i64 -1344
  %i.jqv = load float, ptr %i.jqu, align 4, !tbaa !12, !noalias !499
  %i.jqw = getelementptr i8, ptr %i.jqt, i64 -448
  %i.jqx = load float, ptr %i.jqw, align 4, !tbaa !12, !noalias !499
  %i.jqy = getelementptr inbounds nuw i8, ptr %i.jqt, i64 448
  %i.jqz = load float, ptr %i.jqy, align 4, !tbaa !12, !noalias !499
  %i.jra = getelementptr inbounds nuw i8, ptr %i.jqt, i64 1344
  %i.jrb = load float, ptr %i.jra, align 4, !tbaa !12, !noalias !499
  %i.jrc = getelementptr i8, ptr %i.jqt, i64 -896
  %i.jrd = load float, ptr %i.jrc, align 4, !tbaa !12, !noalias !499
  %i.jre = getelementptr inbounds nuw i8, ptr %i.jqt, i64 896
  %i.jrf = load float, ptr %i.jre, align 4, !tbaa !12, !noalias !499
  %i.jrg = fadd reassoc nsz arcp contract afn float %i.jrf, %i.jrd
  %.neg816.i = fmul reassoc nsz arcp contract afn float %i.jrg, -3.000000e+00
  %i.jrh = load float, ptr %i.jqt, align 4, !tbaa !12, !noalias !499
  %i.jri = fmul reassoc nsz arcp contract afn float %i.jrh, 6.000000e+00
  %i.jrj = fadd reassoc nsz arcp contract afn float %i.jqx, %i.jqz
  %.neg817.i = fsub reassoc nsz arcp contract afn float %i.jqv, %i.jrj
  %i.jrk = fadd reassoc nsz arcp contract afn float %.neg817.i, %i.jrb
  %i.jrl = fadd reassoc nsz arcp contract afn float %i.jrk, %.neg816.i
  %i.jrm = fadd reassoc nsz arcp contract afn float %i.jrl, %i.jri ; 2 uses
  %i.jrn = fmul reassoc nsz arcp contract afn float %i.jrm, %i.jrm
  %i.jro = getelementptr [4 x i8], ptr %.0771868.i, i64 %indvars.iv979.i
  %i.jrp = getelementptr i8, ptr %i.jro, i64 -16
  store float %i.jrn, ptr %i.jrp, align 4, !tbaa !12, !noalias !501
  %i.jrq = getelementptr [4 x i8], ptr %i.jev, i64 %indvars.iv983.i ; 7 uses
  %i.jrr = getelementptr i8, ptr %i.jrq, i64 4
  %i.jrs = getelementptr i8, ptr %i.jrq, i64 -1340
  %i.jrt = load float, ptr %i.jrs, align 4, !tbaa !12, !noalias !499
  %i.jru = getelementptr i8, ptr %i.jrq, i64 -444
  %i.jrv = load float, ptr %i.jru, align 4, !tbaa !12, !noalias !499
  %i.jrw = getelementptr i8, ptr %i.jrq, i64 452
  %i.jrx = load float, ptr %i.jrw, align 4, !tbaa !12, !noalias !499
  %i.jry = getelementptr i8, ptr %i.jrq, i64 1348
  %i.jrz = load float, ptr %i.jry, align 4, !tbaa !12, !noalias !499
  %i.jsa = getelementptr i8, ptr %i.jrq, i64 -892
  %i.jsb = load float, ptr %i.jsa, align 4, !tbaa !12, !noalias !499
  %i.jsc = getelementptr i8, ptr %i.jrq, i64 900
  %i.jsd = load float, ptr %i.jsc, align 4, !tbaa !12, !noalias !499
  %i.jse = fadd reassoc nsz arcp contract afn float %i.jsd, %i.jsb
  %.neg816.i.1 = fmul reassoc nsz arcp contract afn float %i.jse, -3.000000e+00
  %i.jsf = load float, ptr %i.jrr, align 4, !tbaa !12, !noalias !499
  %i.jsg = fmul reassoc nsz arcp contract afn float %i.jsf, 6.000000e+00
  %i.jsh = fadd reassoc nsz arcp contract afn float %i.jrv, %i.jrx
  %.neg817.i.1 = fsub reassoc nsz arcp contract afn float %i.jrt, %i.jsh
  %i.jsi = fadd reassoc nsz arcp contract afn float %.neg817.i.1, %i.jrz
  %i.jsj = fadd reassoc nsz arcp contract afn float %i.jsi, %.neg816.i.1
  %i.jsk = fadd reassoc nsz arcp contract afn float %i.jsj, %i.jsg ; 2 uses
  %i.jsl = fmul reassoc nsz arcp contract afn float %i.jsk, %i.jsk
  %i.jsm = getelementptr [4 x i8], ptr %.0771868.i, i64 %indvars.iv979.i
  %i.jsn = getelementptr i8, ptr %i.jsm, i64 -12
  store float %i.jsl, ptr %i.jsn, align 4, !tbaa !12, !noalias !501
  %indvars.iv.next980.i.1 = add nuw nsw i64 %indvars.iv979.i, 2
  %indvars.iv.next984.i.1 = add nuw nsw i64 %indvars.iv983.i, 2 ; 2 uses
  %exitcond1173.not.1 = icmp eq i64 %indvars.iv.next984.i.1, %i.jnc
  br i1 %exitcond1173.not.1, label %.lr.ph866.i.preheader, label %.lr.ph860.i, !llvm.loop !270

.lr.ph866.i.preheader:                            ; preds = %.lr.ph860.i.prol.loopexit, %.lr.ph860.i, %middle.block3587
  br i1 %min.iters.check3544, label %.lr.ph866.i.preheader4610, label %vector.memcheck3513

vector.memcheck3513:                              ; preds = %.lr.ph866.i.preheader
  %scevgep3520 = getelementptr i8, ptr %.0771868.i, i64 -16
  %scevgep3521 = getelementptr i8, ptr %scevgep3520, i64 %i.jgv
  %scevgep3522 = getelementptr i8, ptr %.0770869.i, i64 -16
  %scevgep3523 = getelementptr i8, ptr %scevgep3522, i64 %i.jgv
  %scevgep3524 = getelementptr i8, ptr %.0769870.i, i64 -16
  %scevgep3525 = getelementptr i8, ptr %scevgep3524, i64 %i.jgv
  %bound03528.a = icmp ult ptr %scevgep3515.a, %scevgep3521
  %bound13529.a = icmp ult ptr %.0771868.i, %scevgep3519
  %found.conflict3530.a = and i1 %bound03528.a, %bound13529.a
  %bound03531 = icmp ult ptr %scevgep3515.a, %scevgep3523
  %bound13532 = icmp ult ptr %.0770869.i, %scevgep3519
  %found.conflict3533 = and i1 %bound03531, %bound13532
  %conflict.rdx3534 = or i1 %found.conflict3530.a, %found.conflict3533
  %bound03535 = icmp ult ptr %scevgep3515.a, %scevgep3525
  %bound13536 = icmp ult ptr %.0769870.i, %scevgep3519
  %found.conflict3537 = and i1 %bound03535, %bound13536
  %conflict.rdx3538 = or i1 %conflict.rdx3534, %found.conflict3537
  %bound03539 = icmp ult ptr %scevgep3515.a, %scevgep3527
  %bound13540 = icmp ult ptr %i.d, %scevgep3519
  %found.conflict3541 = and i1 %bound03539, %bound13540
  %conflict.rdx3542 = or i1 %conflict.rdx3538, %found.conflict3541
  br i1 %conflict.rdx3542, label %.lr.ph866.i.preheader4610, label %vector.ph3545

vector.ph3545:                                    ; preds = %vector.memcheck3513
  %i.jso = add nsw i64 %i.job, %n.vec3546
  %i.jsp = getelementptr inbounds nuw [4 x i8], ptr %i.jes, i64 %i.job
  br label %vector.body3547

vector.body3547:                                  ; preds = %vector.body3547, %vector.ph3545
  %index3548 = phi i64 [ 0, %vector.ph3545 ], [ %index.next3555, %vector.body3547 ] ; 7 uses
  %i.jsq = getelementptr inbounds [4 x i8], ptr %.0769870.i, i64 %index3548
  %wide.load3549 = load <8 x float>, ptr %i.jsq, align 4, !tbaa !12, !alias.scope !505, !noalias !501
  %i.jsr = getelementptr inbounds [4 x i8], ptr %.0770869.i, i64 %index3548
  %wide.load3550 = load <8 x float>, ptr %i.jsr, align 4, !tbaa !12, !alias.scope !506, !noalias !501
  %i.jss = fadd reassoc nsz arcp contract afn <8 x float> %wide.load3550, %wide.load3549
  %i.jst = getelementptr inbounds [4 x i8], ptr %.0771868.i, i64 %index3548
  %wide.load3551 = load <8 x float>, ptr %i.jst, align 4, !tbaa !12, !alias.scope !507, !noalias !501
  %i.jsu = fadd reassoc nsz arcp contract afn <8 x float> %i.jss, %wide.load3551
  %i.jsv = call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.jsu, <8 x float> splat (float 1.000000e-10)) ; 2 uses
  %i.jsw = getelementptr inbounds [4 x i8], ptr %i.d, i64 %index3548
  %wide.load3552 = load <8 x float>, ptr %i.jsw, align 16, !tbaa !12, !alias.scope !508, !noalias !501
  %i.jsx = getelementptr [4 x i8], ptr %i.d, i64 %index3548 ; 2 uses
  %i.jsy = getelementptr i8, ptr %i.jsx, i64 4
  %wide.load3553 = load <8 x float>, ptr %i.jsy, align 4, !tbaa !12, !alias.scope !508, !noalias !501
  %i.jsz = fadd reassoc nsz arcp contract afn <8 x float> %wide.load3553, %wide.load3552
  %i.jta = getelementptr i8, ptr %i.jsx, i64 8
  %wide.load3554 = load <8 x float>, ptr %i.jta, align 8, !tbaa !12, !alias.scope !508, !noalias !501
  %i.jtb = fadd reassoc nsz arcp contract afn <8 x float> %i.jsz, %wide.load3554
  %i.jtc = call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.jtb, <8 x float> splat (float 1.000000e-10))
  %i.jtd = fadd reassoc nsz arcp contract afn <8 x float> %i.jtc, %i.jsv
  %i.jte = fdiv reassoc nsz arcp contract afn <8 x float> %i.jsv, %i.jtd
  %i.jtf = getelementptr inbounds nuw [4 x i8], ptr %i.jsp, i64 %index3548
  store <8 x float> %i.jte, ptr %i.jtf, align 16, !tbaa !12, !alias.scope !509, !noalias !510
  %index.next3555 = add nuw i64 %index3548, 8     ; 2 uses
  %i.jtg = icmp eq i64 %index.next3555, %n.vec3546
  br i1 %i.jtg, label %middle.block3556, label %vector.body3547, !llvm.loop !277

middle.block3556:                                 ; preds = %vector.body3547
  br i1 %cmp.n3557, label %.loopexit.i546, label %.lr.ph866.i.preheader4610

.lr.ph866.i.preheader4610:                        ; preds = %vector.memcheck3513, %.lr.ph866.i.preheader, %middle.block3556
  %indvars.iv990.i.ph = phi i64 [ %i.job, %vector.memcheck3513 ], [ %i.job, %.lr.ph866.i.preheader ], [ %i.jso, %middle.block3556 ] ; 5 uses
  %indvars.iv988.i.ph = phi i64 [ 4, %vector.memcheck3513 ], [ 4, %.lr.ph866.i.preheader ], [ %i.jkw, %middle.block3556 ] ; 4 uses
  %i.jth = sub nsw i64 %6, %indvars.iv990.i.ph
  %i.jti = add nsw i64 %i.jkq, %i.jmz
  %xtraiter4732 = and i64 %i.jth, 1
  %lcmp.mod4733.not = icmp eq i64 %xtraiter4732, 0
  br i1 %lcmp.mod4733.not, label %.lr.ph866.i.prol.loopexit, label %.lr.ph866.i.prol

.lr.ph866.i.prol:                                 ; preds = %.lr.ph866.i.preheader4610
  %i.jtj = add nsw i64 %indvars.iv988.i.ph, -4    ; 4 uses
  %i.jtk = getelementptr inbounds [4 x i8], ptr %.0769870.i, i64 %i.jtj
  %i.jtl = load float, ptr %i.jtk, align 4, !tbaa !12, !noalias !501
  %i.jtm = getelementptr inbounds [4 x i8], ptr %.0770869.i, i64 %i.jtj
  %i.jtn = load float, ptr %i.jtm, align 4, !tbaa !12, !noalias !501
  %i.jto = fadd reassoc nsz arcp contract afn float %i.jtn, %i.jtl
  %i.jtp = getelementptr inbounds [4 x i8], ptr %.0771868.i, i64 %i.jtj
  %i.jtq = load float, ptr %i.jtp, align 4, !tbaa !12, !noalias !501
  %i.jtr = fadd reassoc nsz arcp contract afn float %i.jto, %i.jtq
  %i.jts = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.jtr, float 1.000000e-10) ; 2 uses
  %i.jtt = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.jtj
  %i.jtu = load float, ptr %i.jtt, align 4, !tbaa !12, !noalias !501
  %i.jtv = getelementptr [4 x i8], ptr %i.d, i64 %indvars.iv988.i.ph ; 2 uses
  %i.jtw = getelementptr i8, ptr %i.jtv, i64 -12
  %i.jtx = load float, ptr %i.jtw, align 4, !tbaa !12, !noalias !501
  %i.jty = fadd reassoc nsz arcp contract afn float %i.jtx, %i.jtu
  %i.jtz = getelementptr i8, ptr %i.jtv, i64 -8
  %i.jua = load float, ptr %i.jtz, align 4, !tbaa !12, !noalias !501
  %i.jub = fadd reassoc nsz arcp contract afn float %i.jty, %i.jua
  %i.juc = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.jub, float 1.000000e-10)
  %i.jud = fadd reassoc nsz arcp contract afn float %i.juc, %i.jts
  %i.jue = fdiv reassoc nsz arcp contract afn float %i.jts, %i.jud
  %i.juf = getelementptr inbounds nuw [4 x i8], ptr %i.jes, i64 %indvars.iv990.i.ph
  store float %i.jue, ptr %i.juf, align 4, !tbaa !12, !noalias !499
  %indvars.iv.next989.i.prol = add nuw nsw i64 %indvars.iv988.i.ph, 1
  %indvars.iv.next991.i.prol = add nuw nsw i64 %indvars.iv990.i.ph, 1
  br label %.lr.ph866.i.prol.loopexit

.lr.ph866.i.prol.loopexit:                        ; preds = %.lr.ph866.i.prol, %.lr.ph866.i.preheader4610
  %indvars.iv990.i.unr = phi i64 [ %indvars.iv990.i.ph, %.lr.ph866.i.preheader4610 ], [ %indvars.iv.next991.i.prol, %.lr.ph866.i.prol ]
  %indvars.iv988.i.unr = phi i64 [ %indvars.iv988.i.ph, %.lr.ph866.i.preheader4610 ], [ %indvars.iv.next989.i.prol, %.lr.ph866.i.prol ]
  %i.jug = icmp eq i64 %i.jti, %indvars.iv990.i.ph
  br i1 %i.jug, label %.loopexit.i546, label %.lr.ph866.i

.lr.ph866.i:                                      ; preds = %.lr.ph866.i.prol.loopexit, %.lr.ph866.i
  %indvars.iv990.i = phi i64 [ %indvars.iv.next991.i.1, %.lr.ph866.i ], [ %indvars.iv990.i.unr, %.lr.ph866.i.prol.loopexit ] ; 3 uses
  %indvars.iv988.i = phi i64 [ %indvars.iv.next989.i.1, %.lr.ph866.i ], [ %indvars.iv988.i.unr, %.lr.ph866.i.prol.loopexit ] ; 5 uses
  %i.juh = add nsw i64 %indvars.iv988.i, -4       ; 4 uses
  %i.jui = getelementptr inbounds [4 x i8], ptr %.0769870.i, i64 %i.juh
  %i.juj = load float, ptr %i.jui, align 4, !tbaa !12, !noalias !501
  %i.juk = getelementptr inbounds [4 x i8], ptr %.0770869.i, i64 %i.juh
  %i.jul = load float, ptr %i.juk, align 4, !tbaa !12, !noalias !501
  %i.jum = fadd reassoc nsz arcp contract afn float %i.jul, %i.juj
  %i.jun = getelementptr inbounds [4 x i8], ptr %.0771868.i, i64 %i.juh
  %i.juo = load float, ptr %i.jun, align 4, !tbaa !12, !noalias !501
  %i.jup = fadd reassoc nsz arcp contract afn float %i.jum, %i.juo
  %i.juq = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.jup, float 1.000000e-10) ; 2 uses
  %i.jur = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.juh
  %i.jus = load float, ptr %i.jur, align 4, !tbaa !12, !noalias !501
  %i.jut = getelementptr [4 x i8], ptr %i.d, i64 %indvars.iv988.i ; 2 uses
  %i.juu = getelementptr i8, ptr %i.jut, i64 -12
  %i.juv = load float, ptr %i.juu, align 4, !tbaa !12, !noalias !501 ; 2 uses
  %i.juw = fadd reassoc nsz arcp contract afn float %i.juv, %i.jus
  %i.jux = getelementptr i8, ptr %i.jut, i64 -8
  %i.juy = load float, ptr %i.jux, align 4, !tbaa !12, !noalias !501 ; 2 uses
  %i.juz = fadd reassoc nsz arcp contract afn float %i.juw, %i.juy
  %i.jva = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.juz, float 1.000000e-10)
  %i.jvb = fadd reassoc nsz arcp contract afn float %i.jva, %i.juq
  %i.jvc = fdiv reassoc nsz arcp contract afn float %i.juq, %i.jvb
  %i.jvd = getelementptr inbounds nuw [4 x i8], ptr %i.jes, i64 %indvars.iv990.i
  store float %i.jvc, ptr %i.jvd, align 4, !tbaa !12, !noalias !499
  %i.jve = add nsw i64 %indvars.iv988.i, -3       ; 3 uses
  %i.jvf = getelementptr inbounds [4 x i8], ptr %.0769870.i, i64 %i.jve
  %i.jvg = load float, ptr %i.jvf, align 4, !tbaa !12, !noalias !501
  %i.jvh = getelementptr inbounds [4 x i8], ptr %.0770869.i, i64 %i.jve
  %i.jvi = load float, ptr %i.jvh, align 4, !tbaa !12, !noalias !501
  %i.jvj = fadd reassoc nsz arcp contract afn float %i.jvi, %i.jvg
  %i.jvk = getelementptr inbounds [4 x i8], ptr %.0771868.i, i64 %i.jve
  %i.jvl = load float, ptr %i.jvk, align 4, !tbaa !12, !noalias !501
  %i.jvm = fadd reassoc nsz arcp contract afn float %i.jvj, %i.jvl
  %i.jvn = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.jvm, float 1.000000e-10) ; 2 uses
  %i.jvo = getelementptr [4 x i8], ptr %i.d, i64 %indvars.iv988.i
  %i.jvp = fadd reassoc nsz arcp contract afn float %i.juy, %i.juv
  %i.jvq = getelementptr i8, ptr %i.jvo, i64 -4
  %i.jvr = load float, ptr %i.jvq, align 4, !tbaa !12, !noalias !501
  %i.jvs = fadd reassoc nsz arcp contract afn float %i.jvp, %i.jvr
  %i.jvt = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.jvs, float 1.000000e-10)
  %i.jvu = fadd reassoc nsz arcp contract afn float %i.jvt, %i.jvn
  %i.jvv = fdiv reassoc nsz arcp contract afn float %i.jvn, %i.jvu
  %i.jvw = getelementptr inbounds nuw [4 x i8], ptr %i.jes, i64 %indvars.iv990.i
  %i.jvx = getelementptr inbounds nuw i8, ptr %i.jvw, i64 4
  store float %i.jvv, ptr %i.jvx, align 4, !tbaa !12, !noalias !499
  %indvars.iv.next989.i.1 = add nuw nsw i64 %indvars.iv988.i, 2
  %indvars.iv.next991.i.1 = add nuw nsw i64 %indvars.iv990.i, 2 ; 2 uses
  %exitcond1176.not.1 = icmp eq i64 %indvars.iv.next991.i.1, %i.jna
  br i1 %exitcond1176.not.1, label %.loopexit.i546, label %.lr.ph866.i, !llvm.loop !278

.preheader831.i:                                  ; preds = %._crit_edge879.i
  br i1 %i.jfu, label %.lr.ph889.i, label %.preheader830.i

.lr.ph889.i:                                      ; preds = %.preheader831.i
  %i.jvy = add nsw i32 %i.jhf, -4                 ; 2 uses
  %i.jvz = add i32 %smax3329, -9
  %i.jwa = add i32 %smax3329, -9
  br label %bb.of

bb.oe:                                            ; preds = %._crit_edge879.i, %.lr.ph881.i
  %indvars.iv995.i = phi i32 [ 226, %.lr.ph881.i ], [ %indvars.iv.next996.i, %._crit_edge879.i ] ; 3 uses
  %.0779880.i = phi i32 [ 2, %.lr.ph881.i ], [ %i.jya, %._crit_edge879.i ] ; 2 uses
  %i.jwb = shl i32 %.0779880.i, 2
  %i.jwc = and i32 %i.jwb, 28
  %i.jwd = lshr i32 %.fr1070, %i.jwc
  %i.jwe = and i32 %i.jwd, 1                      ; 5 uses
  %i.jwf = or disjoint i32 %i.jwe, 2              ; 4 uses
  %i.jwg = icmp slt i32 %i.jwf, %i.jms
  br i1 %i.jwg, label %.lr.ph878.preheader.i, label %._crit_edge879.i

.lr.ph878.preheader.i:                            ; preds = %bb.oe
  %i.jwh = or disjoint i32 %i.jwe, %indvars.iv995.i
  %i.jwi = zext i32 %i.jwh to i64                 ; 5 uses
  %i.jwj = lshr i64 %i.jwi, 1                     ; 4 uses
  %i.jwk = sub i32 %i.jmu, %i.jwe                 ; 2 uses
  %i.jwl = lshr i32 %i.jwk, 1
  %narrow4568.a = add nuw i32 %i.jwl, 1
  %i.jwm = zext i32 %narrow4568.a to i64          ; 2 uses
  %min.iters.check3488 = icmp ult i32 %i.jwk, 16
  br i1 %min.iters.check3488, label %.lr.ph878.i.preheader, label %vector.memcheck3476

.lr.ph878.i.preheader:                            ; preds = %vector.body3491, %vector.memcheck3476, %.lr.ph878.preheader.i
  %indvars.iv999.i.ph = phi i64 [ %i.jwj, %vector.memcheck3476 ], [ %i.jwj, %.lr.ph878.preheader.i ], [ %i.jxc, %vector.body3491 ]
  %indvars.iv997.i.ph = phi i64 [ %i.jwi, %vector.memcheck3476 ], [ %i.jwi, %.lr.ph878.preheader.i ], [ %i.jxe, %vector.body3491 ]
  %.0780876.i.ph = phi i32 [ %i.jwf, %vector.memcheck3476 ], [ %i.jwf, %.lr.ph878.preheader.i ], [ %i.jxh, %vector.body3491 ]
  br label %.lr.ph878.i

vector.memcheck3476:                              ; preds = %.lr.ph878.preheader.i
  %i.jwn = or disjoint i32 %indvars.iv995.i, %i.jwe
  %i.jwo = zext i32 %i.jwn to i64                 ; 2 uses
  %i.jwp = shl nuw nsw i64 %i.jwo, 1
  %i.jwq = and i64 %i.jwp, 8589934588             ; 2 uses
  %scevgep3477 = getelementptr i8, ptr %i.jet, i64 %i.jwq
  %i.jwr = sub i32 %i.jmt, %i.jwe
  %i.jws = lshr i32 %i.jwr, 1
  %i.jwt = zext nneg i32 %i.jws to i64            ; 2 uses
  %i.jwu = shl nuw nsw i64 %i.jwt, 2
  %i.jwv = getelementptr i8, ptr %scevgep3478, i64 %i.jwu
  %scevgep3479 = getelementptr i8, ptr %i.jwv, i64 %i.jwq
  %i.jww = shl nuw nsw i64 %i.jwo, 2              ; 2 uses
  %scevgep3481 = getelementptr i8, ptr %scevgep3480, i64 %i.jww
  %i.jwx = shl nuw nsw i64 %i.jwt, 3
  %i.jwy = getelementptr i8, ptr %scevgep3482, i64 %i.jwx
  %scevgep3483 = getelementptr i8, ptr %i.jwy, i64 %i.jww
  %bound03484 = icmp ult ptr %scevgep3477, %scevgep3483
  %bound13485 = icmp ult ptr %scevgep3481, %scevgep3479
  %found.conflict3486 = and i1 %bound03484, %bound13485
  br i1 %found.conflict3486, label %.lr.ph878.i.preheader, label %vector.ph3489

vector.ph3489:                                    ; preds = %vector.memcheck3476
  %i.jwz = and i64 %i.jwm, 7                      ; 2 uses
  %i.jxa = icmp eq i64 %i.jwz, 0
  %i.jxb = select i1 %i.jxa, i64 8, i64 %i.jwz
  %n.vec3490 = sub nsw i64 %i.jwm, %i.jxb         ; 4 uses
  %i.jxc = add nsw i64 %i.jwj, %n.vec3490
  %i.jxd = shl nsw i64 %n.vec3490, 1
  %i.jxe = add nsw i64 %i.jxd, %i.jwi
  %i.jxf = trunc i64 %n.vec3490 to i32
  %i.jxg = shl i32 %i.jxf, 1
  %i.jxh = add i32 %i.jwf, %i.jxg
  %invariant.gep4861 = getelementptr [4 x i8], ptr %i.jev, i64 %i.jwi
  %i.jxi = getelementptr inbounds nuw [4 x i8], ptr %i.jet, i64 %i.jwj
  br label %vector.body3491

vector.body3491:                                  ; preds = %vector.body3491, %vector.ph3489
  %index3492 = phi i64 [ 0, %vector.ph3489 ], [ %index.next3508, %vector.body3491 ] ; 3 uses
  %.idx4569.a = shl i64 %index3492, 3
  %gep4862 = getelementptr i8, ptr %invariant.gep4861, i64 %.idx4569.a ; 6 uses
  %wide.vec3493 = load <16 x float>, ptr %gep4862, align 4, !tbaa !12, !alias.scope !511, !noalias !499 ; 2 uses
  %strided.vec3494.a = shufflevector <16 x float> %wide.vec3493, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec3495 = shufflevector <16 x float> %wide.vec3493, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.jxj = getelementptr i8, ptr %gep4862, i64 -448
  %wide.vec3496 = load <16 x float>, ptr %i.jxj, align 4, !tbaa !12, !alias.scope !511, !noalias !499 ; 2 uses
  %strided.vec3497 = shufflevector <16 x float> %wide.vec3496, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec3498.a = shufflevector <16 x float> %wide.vec3496, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.jxk = getelementptr inbounds nuw i8, ptr %gep4862, i64 448
  %wide.vec3499.a = load <16 x float>, ptr %i.jxk, align 4, !tbaa !12, !alias.scope !511, !noalias !499 ; 2 uses
  %strided.vec3500.a = shufflevector <16 x float> %wide.vec3499.a, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec3501 = shufflevector <16 x float> %wide.vec3499.a, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.jxl = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec3500.a, %strided.vec3497
  %i.jxm = getelementptr i8, ptr %gep4862, i64 -4
  %wide.vec3502 = load <16 x float>, ptr %i.jxm, align 4, !tbaa !12, !alias.scope !511, !noalias !499
  %strided.vec3503 = shufflevector <16 x float> %wide.vec3502, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.jxn = fadd reassoc nsz arcp contract afn <8 x float> %i.jxl, %strided.vec3503
  %i.jxo = fadd reassoc nsz arcp contract afn <8 x float> %i.jxn, %strided.vec3495
  %i.jxp = fmul reassoc nsz arcp contract afn <8 x float> %i.jxo, splat (float 5.000000e-01)
  %i.jxq = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec3494.a, %i.jxp
  %i.jxr = getelementptr i8, ptr %gep4862, i64 -452
  %wide.vec3504 = load <16 x float>, ptr %i.jxr, align 4, !tbaa !12, !alias.scope !511, !noalias !499
  %strided.vec3505 = shufflevector <16 x float> %wide.vec3504, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.jxs = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec3498.a, %strided.vec3505
  %i.jxt = getelementptr inbounds nuw i8, ptr %gep4862, i64 444
  %wide.vec3506 = load <16 x float>, ptr %i.jxt, align 4, !tbaa !12, !alias.scope !511, !noalias !499
  %strided.vec3507 = shufflevector <16 x float> %wide.vec3506, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.jxu = fadd reassoc nsz arcp contract afn <8 x float> %i.jxs, %strided.vec3507
  %i.jxv = fadd reassoc nsz arcp contract afn <8 x float> %i.jxu, %strided.vec3501
  %i.jxw = fmul reassoc nsz arcp contract afn <8 x float> %i.jxv, splat (float 2.500000e-01)
  %i.jxx = fadd reassoc nsz arcp contract afn <8 x float> %i.jxw, %i.jxq
  %i.jxy = getelementptr inbounds nuw [4 x i8], ptr %i.jxi, i64 %index3492
  store <8 x float> %i.jxx, ptr %i.jxy, align 4, !tbaa !12, !alias.scope !512, !noalias !513
  %index.next3508 = add nuw i64 %index3492, 8     ; 2 uses
  %i.jxz = icmp eq i64 %index.next3508, %n.vec3490
  br i1 %i.jxz, label %.lr.ph878.i.preheader, label %vector.body3491, !llvm.loop !282

._crit_edge879.i:                                 ; preds = %.lr.ph878.i, %bb.oe
  %i.jya = add nuw nsw i32 %.0779880.i, 1         ; 2 uses
  %i.jyb = icmp slt i32 %i.jya, %i.jfv
  %indvars.iv.next996.i = add i32 %indvars.iv995.i, 112
  br i1 %i.jyb, label %bb.oe, label %.preheader831.i

.lr.ph878.i:                                      ; preds = %.lr.ph878.i.preheader, %.lr.ph878.i
  %indvars.iv999.i = phi i64 [ %indvars.iv.next1000.i, %.lr.ph878.i ], [ %indvars.iv999.i.ph, %.lr.ph878.i.preheader ] ; 2 uses
  %indvars.iv997.i = phi i64 [ %indvars.iv.next998.i, %.lr.ph878.i ], [ %indvars.iv997.i.ph, %.lr.ph878.i.preheader ] ; 2 uses
  %.0780876.i = phi i32 [ %i.jzf, %.lr.ph878.i ], [ %.0780876.i.ph, %.lr.ph878.i.preheader ]
  %i.jyc = getelementptr [4 x i8], ptr %i.jev, i64 %indvars.iv997.i ; 9 uses
  %i.jyd = load float, ptr %i.jyc, align 4, !tbaa !12, !noalias !499
  %i.jye = getelementptr i8, ptr %i.jyc, i64 -448
  %i.jyf = load float, ptr %i.jye, align 4, !tbaa !12, !noalias !499
  %i.jyg = getelementptr inbounds nuw i8, ptr %i.jyc, i64 448
  %i.jyh = load float, ptr %i.jyg, align 4, !tbaa !12, !noalias !499
  %i.jyi = fadd reassoc nsz arcp contract afn float %i.jyh, %i.jyf
  %i.jyj = getelementptr i8, ptr %i.jyc, i64 -4
  %i.jyk = load float, ptr %i.jyj, align 4, !tbaa !12, !noalias !499
  %i.jyl = fadd reassoc nsz arcp contract afn float %i.jyi, %i.jyk
  %i.jym = getelementptr inbounds nuw i8, ptr %i.jyc, i64 4
  %i.jyn = load float, ptr %i.jym, align 4, !tbaa !12, !noalias !499
  %i.jyo = fadd reassoc nsz arcp contract afn float %i.jyl, %i.jyn
  %i.jyp = fmul reassoc nsz arcp contract afn float %i.jyo, 5.000000e-01
  %i.jyq = fadd reassoc nsz arcp contract afn float %i.jyd, %i.jyp
  %i.jyr = getelementptr i8, ptr %i.jyc, i64 -452
  %i.jys = load float, ptr %i.jyr, align 4, !tbaa !12, !noalias !499
  %i.jyt = getelementptr i8, ptr %i.jyc, i64 -444
  %i.jyu = load float, ptr %i.jyt, align 4, !tbaa !12, !noalias !499
  %i.jyv = fadd reassoc nsz arcp contract afn float %i.jyu, %i.jys
  %i.jyw = getelementptr inbounds nuw i8, ptr %i.jyc, i64 444
  %i.jyx = load float, ptr %i.jyw, align 4, !tbaa !12, !noalias !499
  %i.jyy = fadd reassoc nsz arcp contract afn float %i.jyv, %i.jyx
  %i.jyz = getelementptr inbounds nuw i8, ptr %i.jyc, i64 452
  %i.jza = load float, ptr %i.jyz, align 4, !tbaa !12, !noalias !499
  %i.jzb = fadd reassoc nsz arcp contract afn float %i.jyy, %i.jza
  %i.jzc = fmul reassoc nsz arcp contract afn float %i.jzb, 2.500000e-01
  %i.jzd = fadd reassoc nsz arcp contract afn float %i.jzc, %i.jyq
  %i.jze = getelementptr inbounds nuw [4 x i8], ptr %i.jet, i64 %indvars.iv999.i
  store float %i.jzd, ptr %i.jze, align 4, !tbaa !12, !noalias !499
  %i.jzf = add nuw nsw i32 %.0780876.i, 2         ; 2 uses
  %indvars.iv.next998.i = add nuw nsw i64 %indvars.iv997.i, 2
  %indvars.iv.next1000.i = add nuw nsw i64 %indvars.iv999.i, 1
  %i.jzg = icmp slt i32 %i.jzf, %i.jms
  br i1 %i.jzg, label %.lr.ph878.i, label %._crit_edge879.i, !llvm.loop !283

.preheader830.i:                                  ; preds = %._crit_edge887.i, %.preheader831.i
  br i1 %i.jfs, label %.lr.ph897.i, label %._crit_edge925.i

.lr.ph897.i:                                      ; preds = %.preheader830.i
  %i.jzh = icmp sgt i32 %i.jhe, 6
  br i1 %i.jzh, label %.lr.ph894.preheader.i, label %.preheader829.i

.lr.ph894.preheader.i:                            ; preds = %.lr.ph897.i
  %i.jzi = add nuw nsw i32 %9, 1
  %i.jzj = add nuw i32 %9, 1
  %10 = add nuw i32 %9, 1
  %invariant.op4865 = add i32 %9, 1
  br label %.lr.ph894.i

bb.of:                                            ; preds = %._crit_edge887.i, %.lr.ph889.i
  %indvars.iv1002.i = phi i32 [ 452, %.lr.ph889.i ], [ %indvars.iv.next1003.i, %._crit_edge887.i ] ; 3 uses
  %.0786888.i = phi i32 [ 4, %.lr.ph889.i ], [ %i.kfe, %._crit_edge887.i ] ; 2 uses
  %i.jzk = shl i32 %.0786888.i, 2
  %i.jzl = and i32 %i.jzk, 28
  %i.jzm = lshr i32 %.fr1070, %i.jzl
  %i.jzn = and i32 %i.jzm, 1                      ; 5 uses
  %i.jzo = or disjoint i32 %i.jzn, 4              ; 4 uses
  %i.jzp = icmp slt i32 %i.jzo, %i.jvy
  br i1 %i.jzp, label %.lr.ph886.preheader.i, label %._crit_edge887.i

.lr.ph886.preheader.i:                            ; preds = %bb.of
  %i.jzq = or disjoint i32 %i.jzn, %indvars.iv1002.i
  %i.jzr = zext i32 %i.jzq to i64                 ; 6 uses
  %i.jzs = lshr i64 %i.jzr, 1                     ; 4 uses
  %i.jzt = sub i32 %i.jwa, %i.jzn                 ; 2 uses
  %i.jzu = lshr i32 %i.jzt, 1
  %narrow4570 = add nuw i32 %i.jzu, 1
  %i.jzv = zext i32 %narrow4570 to i64            ; 2 uses
  %min.iters.check3415 = icmp ult i32 %i.jzt, 16
  br i1 %min.iters.check3415, label %.lr.ph886.i.preheader, label %vector.memcheck3386

.lr.ph886.i.preheader:                            ; preds = %vector.body3421, %vector.memcheck3386, %.lr.ph886.preheader.i
  %indvars.iv1006.i.ph = phi i64 [ %i.jzr, %vector.memcheck3386 ], [ %i.jzr, %.lr.ph886.preheader.i ], [ %i.kam, %vector.body3421 ]
  %indvars.iv1004.i.ph = phi i64 [ %i.jzs, %vector.memcheck3386 ], [ %i.jzs, %.lr.ph886.preheader.i ], [ %i.kan, %vector.body3421 ]
  %.0785882.i.ph = phi i32 [ %i.jzo, %vector.memcheck3386 ], [ %i.jzo, %.lr.ph886.preheader.i ], [ %i.kaq, %vector.body3421 ]
  br label %.lr.ph886.i

vector.memcheck3386:                              ; preds = %.lr.ph886.preheader.i
  %i.jzw = or disjoint i32 %indvars.iv1002.i, %i.jzn
  %i.jzx = zext i32 %i.jzw to i64                 ; 2 uses
  %i.jzy = shl nuw nsw i64 %i.jzx, 2              ; 4 uses
  %scevgep3388 = getelementptr i8, ptr %scevgep3387.a, i64 %i.jzy ; 3 uses
  %i.jzz = sub i32 %i.jvz, %i.jzn
  %i.kaa = lshr i32 %i.jzz, 1
  %i.kab = zext nneg i32 %i.kaa to i64            ; 2 uses
  %i.kac = shl nuw nsw i64 %i.kab, 3
  %i.kad = add nuw nsw i64 %i.kac, %i.jzy         ; 3 uses
  %scevgep3390 = getelementptr i8, ptr %scevgep3389.a, i64 %i.kad ; 3 uses
  %scevgep3392 = getelementptr i8, ptr %scevgep3391.a, i64 %i.jzy
  %scevgep3394 = getelementptr i8, ptr %scevgep3393.a, i64 %i.kad
  %i.kae = shl nuw nsw i64 %i.jzx, 1
  %i.kaf = and i64 %i.kae, 8589934584             ; 2 uses
  %scevgep3396 = getelementptr i8, ptr %scevgep3395.a, i64 %i.kaf
  %i.kag = shl nuw nsw i64 %i.kab, 2
  %i.kah = getelementptr i8, ptr %scevgep3397, i64 %i.kag
  %scevgep3398 = getelementptr i8, ptr %i.kah, i64 %i.kaf
  %scevgep3400 = getelementptr i8, ptr %scevgep3399, i64 %i.jzy
  %scevgep3402 = getelementptr i8, ptr %scevgep3401, i64 %i.kad
  %bound03403.a = icmp ult ptr %scevgep3388, %scevgep3394
  %bound13404.a = icmp ult ptr %scevgep3392, %scevgep3390
  %found.conflict3405.a = and i1 %bound03403.a, %bound13404.a
  %bound03406 = icmp ult ptr %scevgep3388, %scevgep3398
  %bound13407 = icmp ult ptr %scevgep3396, %scevgep3390
  %found.conflict3408 = and i1 %bound03406, %bound13407
  %conflict.rdx3409 = or i1 %found.conflict3405.a, %found.conflict3408
  %bound03410 = icmp ult ptr %scevgep3388, %scevgep3402
  %bound13411 = icmp ult ptr %scevgep3400, %scevgep3390
  %found.conflict3412 = and i1 %bound03410, %bound13411
  %conflict.rdx3413 = or i1 %conflict.rdx3409, %found.conflict3412
  br i1 %conflict.rdx3413, label %.lr.ph886.i.preheader, label %vector.ph3416

vector.ph3416:                                    ; preds = %vector.memcheck3386
  %i.kai = and i64 %i.jzv, 7                      ; 2 uses
  %i.kaj = icmp eq i64 %i.kai, 0
  %i.kak = select i1 %i.kaj, i64 8, i64 %i.kai
  %n.vec3417 = sub nsw i64 %i.jzv, %i.kak         ; 4 uses
  %i.kal = shl nsw i64 %n.vec3417, 1
  %i.kam = add nsw i64 %i.kal, %i.jzr
  %i.kan = add nsw i64 %i.jzs, %n.vec3417
  %i.kao = trunc i64 %n.vec3417 to i32
  %i.kap = shl i32 %i.kao, 1
  %i.kaq = add i32 %i.jzo, %i.kap
  %broadcast.splatinsert3418 = insertelement <8 x i64> poison, i64 %i.jzr, i64 0
  %broadcast.splat3419 = shufflevector <8 x i64> %broadcast.splatinsert3418, <8 x i64> poison, <8 x i32> zeroinitializer
  %induction3420 = add nuw nsw <8 x i64> %broadcast.splat3419, <i64 0, i64 2, i64 4, i64 6, i64 8, i64 10, i64 12, i64 14>
  br label %vector.body3421

vector.body3421:                                  ; preds = %vector.body3421, %vector.ph3416
  %index3422 = phi i64 [ 0, %vector.ph3416 ], [ %index.next3470, %vector.body3421 ] ; 3 uses
  %vec.ind3423 = phi <8 x i64> [ %induction3420, %vector.ph3416 ], [ %vec.ind.next3471, %vector.body3421 ] ; 2 uses
  %i.kar = shl nuw i64 %index3422, 1
  %i.kas = add nuw i64 %i.kar, %i.jzr             ; 2 uses
  %i.kat = add nuw i64 %i.jzs, %index3422         ; 2 uses
  %i.kau = getelementptr [4 x i8], ptr %i.jev, i64 %i.kas ; 13 uses
  %wide.vec3424 = load <16 x float>, ptr %i.kau, align 4, !tbaa !12, !alias.scope !514, !noalias !499
  %strided.vec3425 = shufflevector <16 x float> %wide.vec3424, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 4 uses
  %i.kav = getelementptr i8, ptr %i.kau, i64 -448
  %wide.vec3426 = load <16 x float>, ptr %i.kav, align 4, !tbaa !12, !alias.scope !514, !noalias !499
  %strided.vec3427 = shufflevector <16 x float> %wide.vec3426, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 4 uses
  %i.kaw = getelementptr inbounds nuw i8, ptr %i.kau, i64 448
  %wide.vec3428 = load <16 x float>, ptr %i.kaw, align 4, !tbaa !12, !alias.scope !514, !noalias !499
  %strided.vec3429 = shufflevector <16 x float> %wide.vec3428, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 4 uses
  %i.kax = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3427, %strided.vec3429
  %i.kay = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.kax)
  %i.kaz = fadd reassoc nsz arcp contract afn <8 x float> %i.kay, splat (float f0x3727C5AC)
  %i.kba = getelementptr i8, ptr %i.kau, i64 -896
  %wide.vec3430 = load <16 x float>, ptr %i.kba, align 4, !tbaa !12, !alias.scope !514, !noalias !499
  %strided.vec3431 = shufflevector <16 x float> %wide.vec3430, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 2 uses
  %i.kbb = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3425, %strided.vec3431
  %i.kbc = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.kbb)
  %i.kbd = fadd reassoc nsz arcp contract afn <8 x float> %i.kaz, %i.kbc
  %i.kbe = getelementptr i8, ptr %i.kau, i64 -1344
  %wide.vec3432 = load <16 x float>, ptr %i.kbe, align 4, !tbaa !12, !alias.scope !514, !noalias !499
  %strided.vec3433 = shufflevector <16 x float> %wide.vec3432, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.kbf = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3427, %strided.vec3433
  %i.kbg = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.kbf)
  %i.kbh = fadd reassoc nsz arcp contract afn <8 x float> %i.kbd, %i.kbg
  %i.kbi = getelementptr i8, ptr %i.kau, i64 -1792
  %wide.vec3434 = load <16 x float>, ptr %i.kbi, align 4, !tbaa !12, !alias.scope !514, !noalias !499
  %strided.vec3435 = shufflevector <16 x float> %wide.vec3434, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.kbj = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3431, %strided.vec3435
  %i.kbk = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.kbj)
  %i.kbl = fadd reassoc nsz arcp contract afn <8 x float> %i.kbh, %i.kbk ; 2 uses
  %i.kbm = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3429, %strided.vec3427
  %i.kbn = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.kbm)
  %i.kbo = fadd reassoc nsz arcp contract afn <8 x float> %i.kbn, splat (float f0x3727C5AC)
  %i.kbp = getelementptr inbounds nuw i8, ptr %i.kau, i64 896
  %wide.vec3436 = load <16 x float>, ptr %i.kbp, align 4, !tbaa !12, !alias.scope !514, !noalias !499
  %strided.vec3437.a = shufflevector <16 x float> %wide.vec3436, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 2 uses
  %i.kbq = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3425, %strided.vec3437.a
  %i.kbr = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.kbq)
  %i.kbs = fadd reassoc nsz arcp contract afn <8 x float> %i.kbo, %i.kbr
  %i.kbt = getelementptr inbounds nuw i8, ptr %i.kau, i64 1344
  %wide.vec3438.a = load <16 x float>, ptr %i.kbt, align 4, !tbaa !12, !alias.scope !514, !noalias !499
  %strided.vec3439.a = shufflevector <16 x float> %wide.vec3438.a, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.kbu = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3429, %strided.vec3439.a
  %i.kbv = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.kbu)
  %i.kbw = fadd reassoc nsz arcp contract afn <8 x float> %i.kbs, %i.kbv
  %i.kbx = getelementptr inbounds nuw i8, ptr %i.kau, i64 1792
  %wide.vec3440 = load <16 x float>, ptr %i.kbx, align 4, !tbaa !12, !alias.scope !514, !noalias !499
  %strided.vec3441 = shufflevector <16 x float> %wide.vec3440, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.kby = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3437.a, %strided.vec3441
  %i.kbz = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.kby)
  %i.kca = fadd reassoc nsz arcp contract afn <8 x float> %i.kbw, %i.kbz ; 2 uses
  %i.kcb = getelementptr i8, ptr %i.kau, i64 -8
  %wide.vec3442 = load <16 x float>, ptr %i.kcb, align 4, !tbaa !12, !alias.scope !514, !noalias !499 ; 2 uses
  %strided.vec3443.a = shufflevector <16 x float> %wide.vec3442, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 2 uses
  %strided.vec3444 = shufflevector <16 x float> %wide.vec3442, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15> ; 4 uses
  %i.kcc = getelementptr inbounds nuw i8, ptr %i.kau, i64 4
  %wide.vec3445 = load <16 x float>, ptr %i.kcc, align 4, !tbaa !12, !alias.scope !514, !noalias !499 ; 2 uses
  %strided.vec3446.a = shufflevector <16 x float> %wide.vec3445, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 4 uses
  %strided.vec3447 = shufflevector <16 x float> %wide.vec3445, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15> ; 2 uses
  %i.kcd = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3444, %strided.vec3446.a
  %i.kce = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.kcd)
  %i.kcf = fadd reassoc nsz arcp contract afn <8 x float> %i.kce, splat (float f0x3727C5AC)
  %i.kcg = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3425, %strided.vec3443.a
  %i.kch = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.kcg)
  %i.kci = fadd reassoc nsz arcp contract afn <8 x float> %i.kcf, %i.kch
  %i.kcj = getelementptr i8, ptr %i.kau, i64 -16
  %wide.vec3448 = load <16 x float>, ptr %i.kcj, align 4, !tbaa !12, !alias.scope !514, !noalias !499 ; 2 uses
  %strided.vec3449 = shufflevector <16 x float> %wide.vec3448, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec3450 = shufflevector <16 x float> %wide.vec3448, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.kck = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3444, %strided.vec3450
  %i.kcl = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.kck)
  %i.kcm = fadd reassoc nsz arcp contract afn <8 x float> %i.kci, %i.kcl
  %i.kcn = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3443.a, %strided.vec3449
  %i.kco = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.kcn)
  %i.kcp = fadd reassoc nsz arcp contract afn <8 x float> %i.kcm, %i.kco ; 2 uses
  %i.kcq = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3446.a, %strided.vec3444
  %i.kcr = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.kcq)
  %i.kcs = fadd reassoc nsz arcp contract afn <8 x float> %i.kcr, splat (float f0x3727C5AC)
  %i.kct = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3425, %strided.vec3447
  %i.kcu = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.kct)
  %i.kcv = fadd reassoc nsz arcp contract afn <8 x float> %i.kcs, %i.kcu
  %i.kcw = getelementptr inbounds nuw i8, ptr %i.kau, i64 12
  %wide.vec3451 = load <16 x float>, ptr %i.kcw, align 4, !tbaa !12, !alias.scope !514, !noalias !499 ; 2 uses
  %strided.vec3452 = shufflevector <16 x float> %wide.vec3451, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec3453.a = shufflevector <16 x float> %wide.vec3451, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.kcx = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3446.a, %strided.vec3452
  %i.kcy = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.kcx)
  %i.kcz = fadd reassoc nsz arcp contract afn <8 x float> %i.kcv, %i.kcy
  %i.kda = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3447, %strided.vec3453.a
  %i.kdb = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.kda)
  %i.kdc = fadd reassoc nsz arcp contract afn <8 x float> %i.kcz, %i.kdb ; 2 uses
  %i.kdd = getelementptr inbounds nuw [4 x i8], ptr %i.jet, i64 %i.kat ; 4 uses
  %wide.load3454 = load <8 x float>, ptr %i.kdd, align 8, !tbaa !12, !alias.scope !515, !noalias !499 ; 2 uses
  %i.kde = fmul reassoc nsz arcp contract afn <8 x float> %wide.load3454, splat (float 2.000000e+00) ; 4 uses
  %i.kdf = fadd reassoc nsz arcp contract afn <8 x float> %wide.load3454, splat (float f0x3727C5AC) ; 4 uses
  %i.kdg = getelementptr i8, ptr %i.kdd, i64 -448
  %wide.load3455 = load <8 x float>, ptr %i.kdg, align 8, !tbaa !12, !alias.scope !515, !noalias !499
  %i.kdh = fadd reassoc nsz arcp contract afn <8 x float> %i.kdf, %wide.load3455
  %i.kdi = getelementptr inbounds nuw i8, ptr %i.kdd, i64 448
  %wide.load3456 = load <8 x float>, ptr %i.kdi, align 8, !tbaa !12, !alias.scope !515, !noalias !499
  %i.kdj = fadd reassoc nsz arcp contract afn <8 x float> %wide.load3456, %i.kdf
  %i.kdk = fmul reassoc nsz arcp contract afn <8 x float> %i.kde, %strided.vec3444
  %i.kdl = getelementptr i8, ptr %i.kdd, i64 -4
  %wide.load3457 = load <8 x float>, ptr %i.kdl, align 4, !tbaa !12, !alias.scope !515, !noalias !499
  %i.kdm = fadd reassoc nsz arcp contract afn <8 x float> %wide.load3457, %i.kdf
  %i.kdn = getelementptr inbounds nuw [4 x i8], ptr %i.jet, i64 %i.kat
  %i.kdo = getelementptr inbounds nuw i8, ptr %i.kdn, i64 4
  %wide.load3458 = load <8 x float>, ptr %i.kdo, align 4, !tbaa !12, !alias.scope !515, !noalias !499
  %i.kdp = fadd reassoc nsz arcp contract afn <8 x float> %wide.load3458, %i.kdf
  %i.kdq = fmul reassoc nsz arcp contract afn <8 x float> %i.kca, %strided.vec3427
  %i.kdr = fmul reassoc nsz arcp contract afn <8 x float> %i.kdq, %i.kde
  %i.kds = fdiv reassoc nsz arcp contract afn <8 x float> %i.kdr, %i.kdh
  %i.kdt = fmul reassoc nsz arcp contract afn <8 x float> %i.kbl, %strided.vec3429
  %i.kdu = fmul reassoc nsz arcp contract afn <8 x float> %i.kdt, %i.kde
end_hunk_6
begin_hunk_7_@process:bb.a
  %i.kee = fadd reassoc nsz arcp contract afn <8 x float> %i.keb, %i.ked
  %i.kef = fadd reassoc nsz arcp contract afn <8 x float> %i.kdc, %i.kcp
  %i.keg = fdiv reassoc nsz arcp contract afn <8 x float> %i.kee, %i.kef
  %i.keh = getelementptr inbounds nuw [4 x i8], ptr %i.jes, i64 %i.kas ; 5 uses
  %wide.vec3459 = load <16 x float>, ptr %i.keh, align 4, !tbaa !12, !alias.scope !516, !noalias !499
  %strided.vec3460 = shufflevector <16 x float> %wide.vec3459, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 2 uses
  %i.kei = getelementptr i8, ptr %i.keh, i64 -452
  %wide.vec3461 = load <16 x float>, ptr %i.kei, align 4, !tbaa !12, !alias.scope !516, !noalias !499
  %strided.vec3462 = shufflevector <16 x float> %wide.vec3461, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.kej = getelementptr i8, ptr %i.keh, i64 -444
  %wide.vec3463 = load <16 x float>, ptr %i.kej, align 4, !tbaa !12, !alias.scope !516, !noalias !499
  %strided.vec3464 = shufflevector <16 x float> %wide.vec3463, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.kek = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec3464, %strided.vec3462
  %i.kel = getelementptr inbounds nuw i8, ptr %i.keh, i64 444
  %wide.vec3465 = load <16 x float>, ptr %i.kel, align 4, !tbaa !12, !alias.scope !516, !noalias !499
  %strided.vec3466 = shufflevector <16 x float> %wide.vec3465, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.kem = fadd reassoc nsz arcp contract afn <8 x float> %i.kek, %strided.vec3466
  %i.ken = getelementptr inbounds nuw i8, ptr %i.keh, i64 452
  %wide.vec3467 = load <16 x float>, ptr %i.ken, align 4, !tbaa !12, !alias.scope !516, !noalias !499
  %strided.vec3468 = shufflevector <16 x float> %wide.vec3467, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.keo = fadd reassoc nsz arcp contract afn <8 x float> %i.kem, %strided.vec3468
  %i.kep = fmul reassoc nsz arcp contract afn <8 x float> %i.keo, splat (float 2.500000e-01) ; 2 uses
  %i.keq = fsub reassoc nsz arcp contract afn <8 x float> splat (float 5.000000e-01), %strided.vec3460
  %i.ker = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.keq)
  %i.kes = fsub reassoc nsz arcp contract afn <8 x float> splat (float 5.000000e-01), %i.kep
  %i.ket = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.kes)
  %i.keu = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.ker, %i.ket
  %i.kev = select reassoc nsz arcp contract afn <8 x i1> %i.keu, <8 x float> %i.kep, <8 x float> %strided.vec3460 ; 3 uses
  %i.kew = fcmp reassoc nsz arcp contract afn oge <8 x float> %i.kev, zeroinitializer
  %i.kex = fcmp reassoc nsz arcp contract afn ole <8 x float> %i.kev, splat (float 1.000000e+00)
  %i.key = select reassoc nsz arcp contract afn <8 x i1> %i.kex, <8 x float> %i.kev, <8 x float> splat (float 1.000000e+00)
  %i.kez = select reassoc nsz arcp contract afn <8 x i1> %i.kew, <8 x float> %i.key, <8 x float> zeroinitializer
  %i.kfa = fsub reassoc nsz arcp contract afn <8 x float> %i.keg, %i.kdy
  %i.kfb = fmul reassoc nsz arcp contract afn <8 x float> %i.kez, %i.kfa
  %i.kfc = fadd reassoc nsz arcp contract afn <8 x float> %i.kfb, %i.kdy
  %wide.gep3469 = getelementptr inbounds nuw [4 x i8], ptr %i.jff, <8 x i64> %vec.ind3423
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.kfc, <8 x ptr> align 4 %wide.gep3469, <8 x i1> splat (i1 true)), !tbaa !12, !alias.scope !517, !noalias !518
  %index.next3470 = add nuw i64 %index3422, 8     ; 2 uses
  %vec.ind.next3471 = add nuw nsw <8 x i64> %vec.ind3423, splat (i64 16)
  %i.kfd = icmp eq i64 %index.next3470, %n.vec3417
  br i1 %i.kfd, label %.lr.ph886.i.preheader, label %vector.body3421, !llvm.loop !289

._crit_edge887.i:                                 ; preds = %.lr.ph886.i, %bb.of
  %i.kfe = add nuw nsw i32 %.0786888.i, 1         ; 2 uses
  %i.kff = icmp slt i32 %i.kfe, %i.jft
  %indvars.iv.next1003.i = add i32 %indvars.iv1002.i, 112
  br i1 %i.kff, label %bb.of, label %.preheader830.i

.lr.ph886.i:                                      ; preds = %.lr.ph886.i.preheader, %.lr.ph886.i
  %indvars.iv1006.i = phi i64 [ %indvars.iv.next1007.i, %.lr.ph886.i ], [ %indvars.iv1006.i.ph, %.lr.ph886.i.preheader ] ; 4 uses
  %indvars.iv1004.i = phi i64 [ %indvars.iv.next1005.i, %.lr.ph886.i ], [ %indvars.iv1004.i.ph, %.lr.ph886.i.preheader ] ; 2 uses
  %.0785882.i = phi i32 [ %i.kkm, %.lr.ph886.i ], [ %.0785882.i.ph, %.lr.ph886.i.preheader ]
  %i.kfg = getelementptr [4 x i8], ptr %i.jev, i64 %indvars.iv1006.i ; 14 uses
  %i.kfh = getelementptr inbounds nuw i8, ptr %i.kfg, i64 1344
  %i.kfi = getelementptr i8, ptr %i.kfg, i64 -896
  %i.kfj = load float, ptr %i.kfi, align 4, !tbaa !12, !noalias !499 ; 2 uses
  %i.kfk = getelementptr i8, ptr %i.kfg, i64 -1344
  %i.kfl = load float, ptr %i.kfk, align 4, !tbaa !12, !noalias !499
  %i.kfm = getelementptr i8, ptr %i.kfg, i64 -1792
  %i.kfn = load float, ptr %i.kfm, align 4, !tbaa !12, !noalias !499
  %i.kfo = fsub reassoc nsz arcp contract afn float %i.kfj, %i.kfn
  %i.kfp = getelementptr i8, ptr %i.kfg, i64 -448
  %i.kfq = load float, ptr %i.kfp, align 4, !tbaa !12, !noalias !499 ; 4 uses
  %i.kfr = getelementptr inbounds nuw i8, ptr %i.kfg, i64 448
  %i.kfs = load float, ptr %i.kfr, align 4, !tbaa !12, !noalias !499 ; 4 uses
  %i.kft = fsub reassoc nsz arcp contract afn float %i.kfq, %i.kfs
  %i.kfu = fsub reassoc nsz arcp contract afn float %i.kfq, %i.kfl
  %i.kfv = insertelement <4 x float> poison, float %i.kft, i64 0
  %i.kfw = fsub reassoc nsz arcp contract afn float %i.kfs, %i.kfq
  %i.kfx = getelementptr inbounds nuw i8, ptr %i.kfg, i64 896
  %i.kfy = load float, ptr %i.kfx, align 4, !tbaa !12, !noalias !499 ; 2 uses
  %i.kfz = load float, ptr %i.kfh, align 4, !tbaa !12, !noalias !499
  %i.kga = fsub reassoc nsz arcp contract afn float %i.kfs, %i.kfz
  %i.kgb = getelementptr inbounds nuw i8, ptr %i.kfg, i64 1792
  %i.kgc = load float, ptr %i.kgb, align 4, !tbaa !12, !noalias !499
  %i.kgd = fsub reassoc nsz arcp contract afn float %i.kfy, %i.kgc
  %i.kge = insertelement <4 x float> poison, float %i.kfw, i64 0
  %i.kgf = getelementptr i8, ptr %i.kfg, i64 -4
  %i.kgg = getelementptr inbounds nuw i8, ptr %i.kfg, i64 4
  %i.kgh = getelementptr i8, ptr %i.kfg, i64 -8
  %i.kgi = load float, ptr %i.kgh, align 4, !tbaa !12, !noalias !499 ; 2 uses
  %i.kgj = getelementptr i8, ptr %i.kfg, i64 -16
  %indvars.iv.next1007.i = add nuw nsw i64 %indvars.iv1006.i, 2
  %i.kgk = getelementptr inbounds nuw i8, ptr %i.kfg, i64 16
  %i.kgl = load float, ptr %i.kgk, align 4, !tbaa !12, !noalias !499
  %i.kgm = load <2 x float>, ptr %i.kgf, align 4, !tbaa !12, !noalias !499 ; 3 uses
  %i.kgn = load float, ptr %i.kfg, align 4, !tbaa !12, !noalias !499 ; 3 uses
  %i.kgo = fsub reassoc nsz arcp contract afn float %i.kgn, %i.kfj
  %i.kgp = insertelement <4 x float> %i.kfv, float %i.kgo, i64 1
  %i.kgq = insertelement <4 x float> %i.kgp, float %i.kfu, i64 2
  %i.kgr = insertelement <4 x float> %i.kgq, float %i.kfo, i64 3
  %i.kgs = call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %i.kgr)
  %i.kgt = call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.kgs)
  %i.kgu = fsub reassoc nsz arcp contract afn float %i.kgn, %i.kfy
  %i.kgv = insertelement <4 x float> %i.kge, float %i.kgu, i64 1
  %i.kgw = insertelement <4 x float> %i.kgv, float %i.kga, i64 2
  %i.kgx = insertelement <4 x float> %i.kgw, float %i.kgd, i64 3
  %i.kgy = call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %i.kgx)
  %i.kgz = call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.kgy) ; 2 uses
  %i.kha = load <3 x float>, ptr %i.kgg, align 4, !tbaa !12, !noalias !499 ; 3 uses
  %i.khb = shufflevector <3 x float> %i.kha, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1> ; 2 uses
  %i.khc = load <2 x float>, ptr %i.kgj, align 4, !tbaa !12, !noalias !499
  %i.khd = shufflevector <2 x float> %i.kgm, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 0, i32 poison>
  %i.khe = insertelement <4 x float> %i.khd, float %i.kgn, i64 1
  %i.khf = insertelement <4 x float> %i.khe, float %i.kgi, i64 3
  %i.khg = insertelement <4 x float> %i.khb, float %i.kgi, i64 1
  %i.khh = shufflevector <2 x float> %i.khc, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 poison, i32 poison>
  %i.khi = shufflevector <4 x float> %i.khg, <4 x float> %i.khh, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.khj = fsub reassoc nsz arcp contract afn <4 x float> %i.khf, %i.khi
  %i.khk = call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %i.khj)
  %i.khl = call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.khk)
  %i.khm = shufflevector <2 x float> %i.kgm, <2 x float> poison, <3 x i32> <i32 0, i32 1, i32 poison>
  %i.khn = shufflevector <3 x float> %i.khm, <3 x float> %i.kha, <4 x i32> <i32 0, i32 1, i32 3, i32 poison>
  %i.kho = insertelement <4 x float> %i.khn, float %i.kgl, i64 3
  %i.khp = fsub reassoc nsz arcp contract afn <4 x float> %i.khb, %i.kho
  %i.khq = call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %i.khp)
  %i.khr = call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.khq)
  %i.khs = getelementptr inbounds nuw [4 x i8], ptr %i.jet, i64 %indvars.iv1004.i ; 4 uses
  %i.kht = getelementptr i8, ptr %i.khs, i64 -448
  %i.khu = load float, ptr %i.kht, align 4, !tbaa !12, !noalias !499
  %i.khv = getelementptr inbounds nuw i8, ptr %i.khs, i64 448
  %i.khw = load float, ptr %i.khv, align 4, !tbaa !12, !noalias !499
  %i.khx = getelementptr i8, ptr %i.khs, i64 -4
  %i.khy = load float, ptr %i.khx, align 4, !tbaa !12, !noalias !499
  %indvars.iv.next1005.i = add nuw nsw i64 %indvars.iv1004.i, 1
  %i.khz = insertelement <2 x float> poison, float %i.khl, i64 0
  %i.kia = insertelement <2 x float> %i.khz, float %i.kgt, i64 1
  %i.kib = fadd reassoc nsz arcp contract afn <2 x float> %i.kia, splat (float f0x3727C5AC) ; 2 uses
  %i.kic = insertelement <2 x float> poison, float %i.khr, i64 0
  %i.kid = insertelement <2 x float> %i.kic, float %i.kgz, i64 1
  %i.kie = fadd reassoc nsz arcp contract afn <2 x float> %i.kid, splat (float f0x3727C5AC) ; 2 uses
  %i.kif = load <2 x float>, ptr %i.khs, align 4, !tbaa !12, !noalias !499 ; 3 uses
  %i.kig = insertelement <2 x float> %i.kif, float %i.kgz, i64 1 ; 2 uses
  %i.kih = fmul reassoc nsz arcp contract afn <2 x float> %i.kig, <float 2.000000e+00, float f0x3727C5AC> ; 3 uses
  %i.kii = fadd reassoc nsz arcp contract afn <2 x float> %i.kig, <float poison, float f0x3727C5AC>
  %i.kij = shufflevector <2 x float> %i.kih, <2 x float> %i.kii, <2 x i32> <i32 0, i32 3>
  %i.kik = extractelement <2 x float> %i.kif, i64 0
  %i.kil = fadd reassoc nsz arcp contract afn float %i.kik, f0x3727C5AC
  %i.kim = insertelement <2 x float> poison, float %i.khy, i64 0
  %i.kin = insertelement <2 x float> %i.kim, float %i.khu, i64 1
  %i.kio = insertelement <2 x float> poison, float %i.kil, i64 0
  %i.kip = shufflevector <2 x float> %i.kio, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.kiq = fadd reassoc nsz arcp contract afn <2 x float> %i.kin, %i.kip
  %i.kir = shufflevector <2 x float> %i.kif, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.kis = insertelement <2 x float> %i.kir, float %i.khw, i64 1
  %i.kit = fadd reassoc nsz arcp contract afn <2 x float> %i.kis, %i.kip
  %i.kiu = insertelement <2 x float> %i.kgm, float %i.kfq, i64 1
  %i.kiv = fmul reassoc nsz arcp contract afn <2 x float> %i.kij, %i.kiu
  %i.kiw = shufflevector <3 x float> %i.kha, <3 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.kix = insertelement <2 x float> %i.kiw, float %i.kfs, i64 1
  %i.kiy = fmul reassoc nsz arcp contract afn <2 x float> %i.kib, %i.kix
  %i.kiz = shufflevector <2 x float> %i.kih, <2 x float> poison, <2 x i32> zeroinitializer
  %i.kja = fmul reassoc nsz arcp contract afn <2 x float> %i.kiy, %i.kiz
  %i.kjb = fdiv reassoc nsz arcp contract afn <2 x float> %i.kja, %i.kit
  %i.kjc = shufflevector <2 x float> %i.kie, <2 x float> %i.kih, <2 x i32> <i32 0, i32 2>
  %i.kjd = fmul reassoc nsz arcp contract afn <2 x float> %i.kiv, %i.kjc
  %i.kje = fdiv reassoc nsz arcp contract afn <2 x float> %i.kjd, %i.kiq
  %i.kjf = fadd reassoc nsz arcp contract afn <2 x float> %i.kjb, %i.kje
  %i.kjg = fadd reassoc nsz arcp contract afn <2 x float> %i.kie, %i.kib
  %i.kjh = fdiv reassoc nsz arcp contract afn <2 x float> %i.kjf, %i.kjg ; 2 uses
  %i.kji = getelementptr inbounds nuw [4 x i8], ptr %i.jes, i64 %indvars.iv1006.i ; 5 uses
  %i.kjj = load float, ptr %i.kji, align 4, !tbaa !12, !noalias !499 ; 2 uses
  %i.kjk = getelementptr i8, ptr %i.kji, i64 -452
  %i.kjl = load float, ptr %i.kjk, align 4, !tbaa !12, !noalias !499
  %i.kjm = getelementptr i8, ptr %i.kji, i64 -444
  %i.kjn = load float, ptr %i.kjm, align 4, !tbaa !12, !noalias !499
  %i.kjo = fadd reassoc nsz arcp contract afn float %i.kjn, %i.kjl
  %i.kjp = getelementptr inbounds nuw i8, ptr %i.kji, i64 444
  %i.kjq = load float, ptr %i.kjp, align 4, !tbaa !12, !noalias !499
  %i.kjr = fadd reassoc nsz arcp contract afn float %i.kjo, %i.kjq
  %i.kjs = getelementptr inbounds nuw i8, ptr %i.kji, i64 452
  %i.kjt = load float, ptr %i.kjs, align 4, !tbaa !12, !noalias !499
  %i.kju = fadd reassoc nsz arcp contract afn float %i.kjr, %i.kjt
  %i.kjv = fmul reassoc nsz arcp contract afn float %i.kju, 2.500000e-01 ; 2 uses
  %i.kjw = fsub reassoc nsz arcp contract afn float 5.000000e-01, %i.kjj
  %i.kjx = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.kjw)
  %i.kjy = fsub reassoc nsz arcp contract afn float 5.000000e-01, %i.kjv
  %i.kjz = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.kjy)
  %i.kka = fcmp reassoc nsz arcp contract afn olt float %i.kjx, %i.kjz
  %i.kkb = select reassoc nsz arcp contract afn i1 %i.kka, float %i.kjv, float %i.kjj ; 3 uses
  %i.kkc = fcmp reassoc nsz arcp contract afn oge float %i.kkb, 0.000000e+00
  %i.kkd = fcmp reassoc nsz arcp contract afn ole float %i.kkb, 1.000000e+00
  %i.kke = select reassoc nsz arcp contract afn i1 %i.kkd, float %i.kkb, float 1.000000e+00
  %i.kkf = select reassoc nsz arcp contract afn i1 %i.kkc, float %i.kke, float 0.000000e+00
  %i.kkg = extractelement <2 x float> %i.kjh, i64 0
  %i.kkh = extractelement <2 x float> %i.kjh, i64 1 ; 2 uses
  %i.kki = fsub reassoc nsz arcp contract afn float %i.kkg, %i.kkh
  %i.kkj = fmul reassoc nsz arcp contract afn float %i.kkf, %i.kki
  %i.kkk = fadd reassoc nsz arcp contract afn float %i.kkj, %i.kkh
  %i.kkl = getelementptr inbounds nuw [4 x i8], ptr %i.jff, i64 %indvars.iv1006.i
  store float %i.kkk, ptr %i.kkl, align 4, !tbaa !12, !noalias !499
  %i.kkm = add nuw nsw i32 %.0785882.i, 2         ; 2 uses
  %i.kkn = icmp slt i32 %i.kkm, %i.jvy
  br i1 %i.kkn, label %.lr.ph886.i, label %._crit_edge887.i, !llvm.loop !290

.preheader829.i:                                  ; preds = %._crit_edge895.i, %.lr.ph897.i
  br i1 %i.jfu, label %.lr.ph906.i, label %._crit_edge925.i

.lr.ph906.i:                                      ; preds = %.preheader829.i
  %i.kko = add nsw i32 %i.jhf, -4                 ; 6 uses
  %i.kkp = add i32 %smax3329, -9
  br label %bb.og

.lr.ph894.i:                                      ; preds = %._crit_edge895.i, %.lr.ph894.preheader.i
  %indvars.iv1009.i = phi i32 [ 336, %.lr.ph894.preheader.i ], [ %indvars.iv.next1010.i, %._crit_edge895.i ] ; 5 uses
  %.0767896.i = phi i32 [ 3, %.lr.ph894.preheader.i ], [ %i.kof, %._crit_edge895.i ]
  %i.kkq = zext i32 %indvars.iv1009.i to i64      ; 2 uses
  %i.kkr = lshr exact i64 %i.kkq, 1
  %i.kks = or disjoint i64 %i.kkr, 1              ; 3 uses
  %i.kkt = shl nuw nsw i64 %i.kks, 2              ; 2 uses
  %scevgep3326 = getelementptr nuw i8, ptr %i.jex, i64 %i.kkt ; 2 uses
  %i.kku = trunc nuw nsw i64 %i.kks to i32
  %i.kkv = add i32 %10, %i.kku
  %i.kkw = zext i32 %i.kkv to i64                 ; 2 uses
  %i.kkx = shl nuw nsw i64 %i.kkw, 2              ; 2 uses
  %scevgep3330 = getelementptr i8, ptr %i.jex, i64 %i.kkx ; 2 uses
  %scevgep3331 = getelementptr i8, ptr %i.jey, i64 %i.kkt ; 2 uses
  %scevgep3332 = getelementptr i8, ptr %i.jey, i64 %i.kkx ; 2 uses
  %i.kky = shl nuw nsw i64 %i.kkq, 2              ; 2 uses
  %scevgep3334 = getelementptr i8, ptr %scevgep3333, i64 %i.kky ; 2 uses
  %i.kkz = shl nuw nsw i64 %i.kkw, 3
  %i.kla = add nuw nsw i64 %i.kkz, %i.kky
  %i.klb = shl nuw nsw i64 %i.kks, 3
  %i.klc = sub nsw i64 %i.kla, %i.klb
  %scevgep3336 = getelementptr i8, ptr %scevgep3335, i64 %i.klc ; 2 uses
  %i.kld = or disjoint i32 %indvars.iv1009.i, 3
  %i.kle = zext i32 %i.kld to i64                 ; 6 uses
  %i.klf = lshr i64 %i.kle, 1                     ; 6 uses
  %i.klg = trunc nuw nsw i64 %i.klf to i32
  %i.klh = add nuw i32 %i.jzi, %i.klg
  %wide.trip.count.i = zext i32 %i.klh to i64
  %i.kli = lshr exact i32 %indvars.iv1009.i, 1
  %i.klj = or disjoint i32 %i.kli, 1              ; 2 uses
  %i.klk = zext nneg i32 %i.klj to i64
  %.reass4866 = add i32 %i.klj, %invariant.op4865
  %i.kll = zext i32 %.reass4866 to i64
  %i.klm = sub nsw i64 %i.kll, %i.klk             ; 3 uses
  %min.iters.check3349 = icmp ult i64 %i.klm, 17
  br i1 %min.iters.check3349, label %scalar.ph3348.preheader, label %vector.scevcheck3304

scalar.ph3348.preheader:                          ; preds = %vector.body3352, %vector.memcheck3325, %vector.scevcheck3304, %.lr.ph894.i
  %indvars.iv1013.i.ph = phi i64 [ %i.kle, %vector.memcheck3325 ], [ %i.kle, %vector.scevcheck3304 ], [ %i.kle, %.lr.ph894.i ], [ %i.kmv, %vector.body3352 ]
  %indvars.iv1011.i.ph = phi i64 [ %i.klf, %vector.memcheck3325 ], [ %i.klf, %vector.scevcheck3304 ], [ %i.klf, %.lr.ph894.i ], [ %i.kmw, %vector.body3352 ]
  br label %scalar.ph3348

vector.scevcheck3304:                             ; preds = %.lr.ph894.i
  %i.kln = zext i32 %indvars.iv1009.i to i64      ; 2 uses
  %i.klo = shl nuw nsw i64 %i.kln, 2              ; 7 uses
  %scevgep3324 = getelementptr i8, ptr %scevgep3323.a, i64 %i.klo ; 2 uses
  %scevgep3322 = getelementptr i8, ptr %scevgep3321, i64 %i.klo ; 2 uses
  %scevgep3320 = getelementptr i8, ptr %scevgep3319.a, i64 %i.klo ; 2 uses
  %scevgep3318 = getelementptr i8, ptr %scevgep3317.a, i64 %i.klo ; 2 uses
  %scevgep3316 = getelementptr i8, ptr %scevgep3315.a, i64 %i.klo ; 2 uses
  %scevgep3314 = getelementptr i8, ptr %scevgep3313.a, i64 %i.klo ; 2 uses
  %scevgep3309 = getelementptr i8, ptr %scevgep3308, i64 %i.klo ; 2 uses
  %i.klp = lshr exact i64 %i.kln, 1               ; 2 uses
  %i.klq = trunc nuw nsw i64 %i.klp to i32
  %i.klr = or disjoint i32 %i.klq, 1
  %i.kls = add i32 %i.jzj, %i.klr
  %i.klt = zext i32 %i.kls to i64
  %i.klu = xor i64 %i.klp, -2
  %i.klv = add nsw i64 %i.klu, %i.klt             ; 2 uses
  %mul.result3311 = shl nsw i64 %i.klv, 3         ; 7 uses
  %mul.overflow3312 = icmp ugt i64 %i.klv, 2305843009213693951
  %i.klw = getelementptr i8, ptr %scevgep3309, i64 %mul.result3311
  %i.klx = icmp ult ptr %i.klw, %scevgep3309
  %i.kly = getelementptr i8, ptr %scevgep3314, i64 %mul.result3311
  %i.klz = icmp ult ptr %i.kly, %scevgep3314
  %i.kma = getelementptr i8, ptr %scevgep3316, i64 %mul.result3311
  %i.kmb = icmp ult ptr %i.kma, %scevgep3316
  %i.kmc = or i1 %i.kmb, %mul.overflow3312
  %i.kmd = getelementptr i8, ptr %scevgep3318, i64 %mul.result3311
  %i.kme = icmp ult ptr %i.kmd, %scevgep3318
  %i.kmf = getelementptr i8, ptr %scevgep3320, i64 %mul.result3311
  %i.kmg = icmp ult ptr %i.kmf, %scevgep3320
  %i.kmh = getelementptr i8, ptr %scevgep3322, i64 %mul.result3311
  %i.kmi = icmp ult ptr %i.kmh, %scevgep3322
  %i.kmj = getelementptr i8, ptr %scevgep3324, i64 %mul.result3311
  %i.kmk = icmp ult ptr %i.kmj, %scevgep3324
  %i.kml = or i1 %i.klz, %i.klx
  %i.kmm = or i1 %i.kml, %i.kmc
  %i.kmn = or i1 %i.kme, %i.kmm
  %i.kmo = or i1 %i.kmg, %i.kmn
  %i.kmp = or i1 %i.kmi, %i.kmo
  %i.kmq = or i1 %i.kmk, %i.kmp
  br i1 %i.kmq, label %scalar.ph3348.preheader, label %vector.memcheck3325

vector.memcheck3325:                              ; preds = %vector.scevcheck3304
  %bound03337.a = icmp ult ptr %scevgep3326, %scevgep3332
  %bound13338.a = icmp ult ptr %scevgep3331, %scevgep3330
  %found.conflict3339.a = and i1 %bound03337.a, %bound13338.a
  %bound03340 = icmp ult ptr %scevgep3326, %scevgep3336
  %bound13341 = icmp ult ptr %scevgep3334, %scevgep3330
  %found.conflict3342 = and i1 %bound03340, %bound13341
  %conflict.rdx3343 = or i1 %found.conflict3339.a, %found.conflict3342
  %bound03344 = icmp ult ptr %scevgep3331, %scevgep3336
  %bound13345 = icmp ult ptr %scevgep3334, %scevgep3332
  %found.conflict3346 = and i1 %bound03344, %bound13345
  %conflict.rdx3347 = or i1 %conflict.rdx3343, %found.conflict3346
  br i1 %conflict.rdx3347, label %scalar.ph3348.preheader, label %vector.ph3350

vector.ph3350:                                    ; preds = %vector.memcheck3325
  %i.kmr = and i64 %i.klm, 7                      ; 2 uses
  %i.kms = icmp eq i64 %i.kmr, 0
  %i.kmt = select i1 %i.kms, i64 8, i64 %i.kmr
  %n.vec3351 = sub nsw i64 %i.klm, %i.kmt         ; 3 uses
  %i.kmu = shl nsw i64 %n.vec3351, 1
  %i.kmv = add nsw i64 %i.kmu, %i.kle
  %i.kmw = add nsw i64 %i.klf, %n.vec3351
  %invariant.gep4863 = getelementptr [4 x i8], ptr %i.jev, i64 %i.kle
  br label %vector.body3352

vector.body3352:                                  ; preds = %vector.body3352, %vector.ph3350
  %index3353 = phi i64 [ 0, %vector.ph3350 ], [ %index.next3382, %vector.body3352 ] ; 3 uses
  %i.kmx = add nuw i64 %i.klf, %index3353         ; 2 uses
  %.idx4571 = shl i64 %index3353, 3
  %gep4864 = getelementptr i8, ptr %invariant.gep4863, i64 %.idx4571 ; 14 uses
  %i.kmy = getelementptr i8, ptr %gep4864, i64 -1356
  %wide.vec3354 = load <16 x float>, ptr %i.kmy, align 64, !tbaa !12, !alias.scope !519, !noalias !499
  %strided.vec3355 = shufflevector <16 x float> %wide.vec3354, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.kmz = getelementptr i8, ptr %gep4864, i64 -452
  %wide.vec3356 = load <16 x float>, ptr %i.kmz, align 8, !tbaa !12, !alias.scope !519, !noalias !499
  %strided.vec3357 = shufflevector <16 x float> %wide.vec3356, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.kna = getelementptr inbounds nuw i8, ptr %gep4864, i64 452
  %wide.vec3358 = load <16 x float>, ptr %i.kna, align 16, !tbaa !12, !alias.scope !519, !noalias !499
  %strided.vec3359 = shufflevector <16 x float> %wide.vec3358, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.knb = getelementptr inbounds nuw i8, ptr %gep4864, i64 1356
  %wide.vec3360 = load <16 x float>, ptr %i.knb, align 8, !tbaa !12, !alias.scope !519, !noalias !499
  %strided.vec3361 = shufflevector <16 x float> %wide.vec3360, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.knc = getelementptr i8, ptr %gep4864, i64 -904
  %wide.vec3362 = load <16 x float>, ptr %i.knc, align 4, !tbaa !12, !alias.scope !519, !noalias !499
  %strided.vec3363 = shufflevector <16 x float> %wide.vec3362, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.knd = getelementptr inbounds nuw i8, ptr %gep4864, i64 904
  %wide.vec3364 = load <16 x float>, ptr %i.knd, align 4, !tbaa !12, !alias.scope !519, !noalias !499
  %strided.vec3365 = shufflevector <16 x float> %wide.vec3364, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.kne = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec3365, %strided.vec3363
  %i.knf = fmul reassoc nsz arcp contract afn <8 x float> %i.kne, splat (float -3.000000e+00)
  %wide.vec3366 = load <16 x float>, ptr %gep4864, align 4, !tbaa !12, !alias.scope !519, !noalias !499
  %strided.vec3367 = shufflevector <16 x float> %wide.vec3366, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.kng = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec3367, splat (float 6.000000e+00)
  %i.knh = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec3357, %strided.vec3359
  %i.kni = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3355, %i.knh
  %i.knj = fadd reassoc nsz arcp contract afn <8 x float> %i.kni, %strided.vec3361
  %i.knk = fadd reassoc nsz arcp contract afn <8 x float> %i.knj, %i.knf
  %i.knl = fadd reassoc nsz arcp contract afn <8 x float> %i.knk, %i.kng ; 2 uses
  %i.knm = fmul reassoc nsz arcp contract afn <8 x float> %i.knl, %i.knl
  %i.knn = getelementptr inbounds nuw [4 x i8], ptr %i.jex, i64 %i.kmx
  store <8 x float> %i.knm, ptr %i.knn, align 4, !tbaa !12, !alias.scope !520, !noalias !521
  %i.kno = getelementptr i8, ptr %gep4864, i64 -1332
  %wide.vec3368 = load <16 x float>, ptr %i.kno, align 8, !tbaa !12, !alias.scope !519, !noalias !499
  %strided.vec3369 = shufflevector <16 x float> %wide.vec3368, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.knp = getelementptr i8, ptr %gep4864, i64 -444
  %wide.vec3370 = load <16 x float>, ptr %i.knp, align 16, !tbaa !12, !alias.scope !519, !noalias !499
  %strided.vec3371 = shufflevector <16 x float> %wide.vec3370, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.knq = getelementptr inbounds nuw i8, ptr %gep4864, i64 444
  %wide.vec3372 = load <16 x float>, ptr %i.knq, align 8, !tbaa !12, !alias.scope !519, !noalias !499
  %strided.vec3373 = shufflevector <16 x float> %wide.vec3372, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.knr = getelementptr inbounds nuw i8, ptr %gep4864, i64 1332
  %wide.vec3374 = load <16 x float>, ptr %i.knr, align 64, !tbaa !12, !alias.scope !519, !noalias !499
  %strided.vec3375 = shufflevector <16 x float> %wide.vec3374, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.kns = getelementptr i8, ptr %gep4864, i64 -888
  %wide.vec3376 = load <16 x float>, ptr %i.kns, align 4, !tbaa !12, !alias.scope !519, !noalias !499
  %strided.vec3377 = shufflevector <16 x float> %wide.vec3376, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.knt = getelementptr inbounds nuw i8, ptr %gep4864, i64 888
  %wide.vec3378 = load <16 x float>, ptr %i.knt, align 4, !tbaa !12, !alias.scope !519, !noalias !499
  %strided.vec3379 = shufflevector <16 x float> %wide.vec3378, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.knu = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec3379, %strided.vec3377
  %i.knv = fmul reassoc nsz arcp contract afn <8 x float> %i.knu, splat (float -3.000000e+00)
  %wide.vec3380 = load <16 x float>, ptr %gep4864, align 4, !tbaa !12, !alias.scope !519, !noalias !499
  %strided.vec3381 = shufflevector <16 x float> %wide.vec3380, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.knw = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec3381, splat (float 6.000000e+00)
  %i.knx = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec3371, %strided.vec3373
  %i.kny = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3369, %i.knx
  %i.knz = fadd reassoc nsz arcp contract afn <8 x float> %i.kny, %strided.vec3375
  %i.koa = fadd reassoc nsz arcp contract afn <8 x float> %i.knz, %i.knv
  %i.kob = fadd reassoc nsz arcp contract afn <8 x float> %i.koa, %i.knw ; 2 uses
  %i.koc = fmul reassoc nsz arcp contract afn <8 x float> %i.kob, %i.kob
  %i.kod = getelementptr inbounds nuw [4 x i8], ptr %i.jey, i64 %i.kmx
  store <8 x float> %i.koc, ptr %i.kod, align 4, !tbaa !12, !alias.scope !522, !noalias !523
  %index.next3382 = add nuw i64 %index3353, 8     ; 2 uses
  %i.koe = icmp eq i64 %index.next3382, %n.vec3351
  br i1 %i.koe, label %scalar.ph3348.preheader, label %vector.body3352, !llvm.loop !295

._crit_edge895.i:                                 ; preds = %scalar.ph3348
  %i.kof = add nuw nsw i32 %.0767896.i, 1         ; 2 uses
  %i.kog = icmp slt i32 %i.kof, %i.jfq
  %indvars.iv.next1010.i = add i32 %indvars.iv1009.i, 112
  br i1 %i.kog, label %.lr.ph894.i, label %.preheader829.i

scalar.ph3348:                                    ; preds = %scalar.ph3348.preheader, %scalar.ph3348
  %indvars.iv1013.i = phi i64 [ %indvars.iv.next1014.i, %scalar.ph3348 ], [ %indvars.iv1013.i.ph, %scalar.ph3348.preheader ] ; 2 uses
  %indvars.iv1011.i = phi i64 [ %indvars.iv.next1012.i, %scalar.ph3348 ], [ %indvars.iv1011.i.ph, %scalar.ph3348.preheader ] ; 3 uses
  %i.koh = getelementptr [4 x i8], ptr %i.jev, i64 %indvars.iv1013.i ; 14 uses
  %i.koi = getelementptr i8, ptr %i.koh, i64 -1356
  %i.koj = load float, ptr %i.koi, align 4, !tbaa !12, !noalias !499
  %i.kok = getelementptr i8, ptr %i.koh, i64 -452
  %i.kol = load float, ptr %i.kok, align 4, !tbaa !12, !noalias !499
  %i.kom = getelementptr inbounds nuw i8, ptr %i.koh, i64 452
  %i.kon = load float, ptr %i.kom, align 4, !tbaa !12, !noalias !499
  %i.koo = getelementptr inbounds nuw i8, ptr %i.koh, i64 1356
  %i.kop = load float, ptr %i.koo, align 4, !tbaa !12, !noalias !499
  %i.koq = getelementptr i8, ptr %i.koh, i64 -904
  %i.kor = load float, ptr %i.koq, align 4, !tbaa !12, !noalias !499
  %i.kos = getelementptr inbounds nuw i8, ptr %i.koh, i64 904
  %i.kot = load float, ptr %i.kos, align 4, !tbaa !12, !noalias !499
  %i.kou = fadd reassoc nsz arcp contract afn float %i.kot, %i.kor
  %.neg806.i = fmul reassoc nsz arcp contract afn float %i.kou, -3.000000e+00
  %i.kov = load float, ptr %i.koh, align 4, !tbaa !12, !noalias !499
  %i.kow = fmul reassoc nsz arcp contract afn float %i.kov, 6.000000e+00
  %i.kox = fadd reassoc nsz arcp contract afn float %i.kol, %i.kon
  %.neg807.i = fsub reassoc nsz arcp contract afn float %i.koj, %i.kox
  %i.koy = fadd reassoc nsz arcp contract afn float %.neg807.i, %i.kop
  %i.koz = fadd reassoc nsz arcp contract afn float %i.koy, %.neg806.i
  %i.kpa = fadd reassoc nsz arcp contract afn float %i.koz, %i.kow ; 2 uses
  %i.kpb = fmul reassoc nsz arcp contract afn float %i.kpa, %i.kpa
  %i.kpc = getelementptr inbounds nuw [4 x i8], ptr %i.jex, i64 %indvars.iv1011.i
  store float %i.kpb, ptr %i.kpc, align 4, !tbaa !12, !noalias !499
  %i.kpd = getelementptr i8, ptr %i.koh, i64 -1332
  %i.kpe = load float, ptr %i.kpd, align 4, !tbaa !12, !noalias !499
  %i.kpf = getelementptr i8, ptr %i.koh, i64 -444
  %i.kpg = load float, ptr %i.kpf, align 4, !tbaa !12, !noalias !499
  %i.kph = getelementptr inbounds nuw i8, ptr %i.koh, i64 444
  %i.kpi = load float, ptr %i.kph, align 4, !tbaa !12, !noalias !499
  %i.kpj = getelementptr inbounds nuw i8, ptr %i.koh, i64 1332
  %i.kpk = load float, ptr %i.kpj, align 4, !tbaa !12, !noalias !499
  %i.kpl = getelementptr i8, ptr %i.koh, i64 -888
  %i.kpm = load float, ptr %i.kpl, align 4, !tbaa !12, !noalias !499
  %i.kpn = getelementptr inbounds nuw i8, ptr %i.koh, i64 888
  %i.kpo = load float, ptr %i.kpn, align 4, !tbaa !12, !noalias !499
  %i.kpp = fadd reassoc nsz arcp contract afn float %i.kpo, %i.kpm
  %.neg811.i = fmul reassoc nsz arcp contract afn float %i.kpp, -3.000000e+00
  %i.kpq = load float, ptr %i.koh, align 4, !tbaa !12, !noalias !499
  %i.kpr = fmul reassoc nsz arcp contract afn float %i.kpq, 6.000000e+00
  %i.kps = fadd reassoc nsz arcp contract afn float %i.kpg, %i.kpi
  %.neg812.i = fsub reassoc nsz arcp contract afn float %i.kpe, %i.kps
  %i.kpt = fadd reassoc nsz arcp contract afn float %.neg812.i, %i.kpk
  %i.kpu = fadd reassoc nsz arcp contract afn float %i.kpt, %.neg811.i
  %i.kpv = fadd reassoc nsz arcp contract afn float %i.kpu, %i.kpr ; 2 uses
  %i.kpw = fmul reassoc nsz arcp contract afn float %i.kpv, %i.kpv
  %i.kpx = getelementptr inbounds nuw [4 x i8], ptr %i.jey, i64 %indvars.iv1011.i
  store float %i.kpw, ptr %i.kpx, align 4, !tbaa !12, !noalias !499
  %indvars.iv.next1014.i = add nuw nsw i64 %indvars.iv1013.i, 2
  %indvars.iv.next1012.i = add nuw nsw i64 %indvars.iv1011.i, 1 ; 2 uses
  %exitcond.not.i544 = icmp eq i64 %indvars.iv.next1012.i, %wide.trip.count.i
  br i1 %exitcond.not.i544, label %._crit_edge895.i, label %scalar.ph3348, !llvm.loop !296

bb.og:                                            ; preds = %._crit_edge904.i, %.lr.ph906.i
  %indvar3272 = phi i32 [ %indvar.next3273, %._crit_edge904.i ], [ 0, %.lr.ph906.i ] ; 2 uses
  %indvars.iv1029.i = phi i32 [ %indvars.iv.next1030.i, %._crit_edge904.i ], [ 452, %.lr.ph906.i ] ; 2 uses
  %.0763905.i = phi i32 [ %i.ksf, %._crit_edge904.i ], [ 4, %.lr.ph906.i ] ; 2 uses
  %i.kpy = phi <2 x i32> [ %i.ksh, %._crit_edge904.i ], [ <i32 563, i32 339>, %.lr.ph906.i ] ; 2 uses
  %i.kpz = mul i32 %indvar3272, 112
  %i.kqa = add i32 %i.kpz, 448
  %i.kqb = zext i32 %i.kqa to i64
  %i.kqc = shl nuw nsw i64 %i.kqb, 1
  %i.kqd = shl i32 %.0763905.i, 2
  %i.kqe = and i32 %i.kqd, 28
  %i.kqf = lshr i32 %.fr1070, %i.kqe
  %i.kqg = and i32 %i.kqf, 1                      ; 3 uses
  %i.kqh = or disjoint i32 %i.kqg, 4              ; 4 uses
  %i.kqi = icmp slt i32 %i.kqh, %i.kko
  br i1 %i.kqi, label %.lr.ph903.preheader.i, label %._crit_edge904.i

.lr.ph903.preheader.i:                            ; preds = %bb.og
  %i.kqj = insertelement <2 x i32> poison, i32 %i.kqg, i64 0
  %i.kqk = shufflevector <2 x i32> %i.kqj, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.kql = add <2 x i32> %i.kqk, %i.kpy
  %i.kqm = lshr <2 x i32> %i.kql, splat (i32 1)
  %i.kqn = zext nneg <2 x i32> %i.kqm to <2 x i64> ; 3 uses
  %i.kqo = lshr exact i32 %indvars.iv1029.i, 1
  %i.kqp = zext nneg i32 %i.kqo to i64            ; 4 uses
  %i.kqq = sub i32 %i.kkp, %i.kqg                 ; 2 uses
  %i.kqr = lshr i32 %i.kqq, 1
  %narrow4572 = add nuw i32 %i.kqr, 1
  %i.kqs = zext i32 %narrow4572 to i64            ; 2 uses
  %min.iters.check3286 = icmp ult i32 %i.kqq, 14
  %i.kqt = extractelement <2 x i64> %i.kqn, i64 0 ; 4 uses
  %i.kqu = extractelement <2 x i64> %i.kqn, i64 1 ; 4 uses
  br i1 %min.iters.check3286, label %.lr.ph903.i.preheader, label %vector.memcheck3271

vector.memcheck3271:                              ; preds = %.lr.ph903.preheader.i
  %i.kqv = shl nuw nsw <2 x i64> %i.kqn, splat (i64 2)
  %i.kqw = shufflevector <2 x i64> %i.kqv, <2 x i64> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.kqx = insertelement <4 x i64> poison, i64 %i.kqc, i64 0
  %i.kqy = shufflevector <4 x i64> %i.kqx, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.kqz = add <4 x i64> %i.jfj, %i.kqy
  %i.kra = add <4 x i64> %i.kqw, %i.jfc
  %i.krb = sub <4 x i64> %i.kra, %i.kqz
  %i.krc = icmp ugt <4 x i64> %i.krb, splat (i64 -32)
  %i.krd = bitcast <4 x i1> %i.krc to i4
  %.not4606 = icmp eq i4 %i.krd, 0
  br i1 %.not4606, label %vector.ph3287, label %.lr.ph903.i.preheader

vector.ph3287:                                    ; preds = %vector.memcheck3271
  %n.vec3288 = and i64 %i.kqs, 4294967288         ; 6 uses
  %i.kre = add nuw nsw i64 %n.vec3288, %i.kqp
  %i.krf = add nuw nsw i64 %n.vec3288, %i.kqu
  %i.krg = add nuw nsw i64 %n.vec3288, %i.kqt
  %i.krh = trunc nuw i64 %n.vec3288 to i32
  %i.kri = shl i32 %i.krh, 1
  %i.krj = or disjoint i32 %i.kqh, %i.kri
  br label %vector.body3289

vector.body3289:                                  ; preds = %vector.body3289, %vector.ph3287
  %index3290 = phi i64 [ 0, %vector.ph3287 ], [ %index.next3297, %vector.body3289 ] ; 4 uses
  %i.krk = add nuw i64 %index3290, %i.kqp         ; 3 uses
  %i.krl = add nuw i64 %index3290, %i.kqu         ; 2 uses
  %i.krm = add nuw i64 %index3290, %i.kqt         ; 2 uses
  %i.krn = getelementptr inbounds nuw [4 x i8], ptr %i.jex, i64 %i.krl
  %wide.load3291.a = load <8 x float>, ptr %i.krn, align 4, !tbaa !12, !noalias !499
  %i.kro = getelementptr inbounds nuw [4 x i8], ptr %i.jex, i64 %i.krk
  %wide.load3292.a = load <8 x float>, ptr %i.kro, align 8, !tbaa !12, !noalias !499
  %i.krp = fadd reassoc nsz arcp contract afn <8 x float> %wide.load3292.a, %wide.load3291.a
  %i.krq = getelementptr inbounds nuw [4 x i8], ptr %i.jex, i64 %i.krm
  %i.krr = getelementptr inbounds nuw i8, ptr %i.krq, i64 4
  %wide.load3293.a = load <8 x float>, ptr %i.krr, align 4, !tbaa !12, !noalias !499
  %i.krs = fadd reassoc nsz arcp contract afn <8 x float> %i.krp, %wide.load3293.a
  %i.krt = call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.krs, <8 x float> splat (float 1.000000e-10)) ; 2 uses
  %i.kru = getelementptr inbounds nuw [4 x i8], ptr %i.jey, i64 %i.krl
  %i.krv = getelementptr inbounds nuw i8, ptr %i.kru, i64 4
  %wide.load3294.a = load <8 x float>, ptr %i.krv, align 4, !tbaa !12, !noalias !499
  %i.krw = getelementptr inbounds nuw [4 x i8], ptr %i.jey, i64 %i.krk
  %wide.load3295.a = load <8 x float>, ptr %i.krw, align 8, !tbaa !12, !noalias !499
  %i.krx = fadd reassoc nsz arcp contract afn <8 x float> %wide.load3295.a, %wide.load3294.a
  %i.kry = getelementptr inbounds nuw [4 x i8], ptr %i.jey, i64 %i.krm
  %wide.load3296 = load <8 x float>, ptr %i.kry, align 4, !tbaa !12, !noalias !499
  %i.krz = fadd reassoc nsz arcp contract afn <8 x float> %i.krx, %wide.load3296
  %i.ksa = call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.krz, <8 x float> splat (float 1.000000e-10))
  %i.ksb = fadd reassoc nsz arcp contract afn <8 x float> %i.ksa, %i.krt
  %i.ksc = fdiv reassoc nsz arcp contract afn <8 x float> %i.krt, %i.ksb
  %i.ksd = getelementptr inbounds nuw [4 x i8], ptr %i.jet, i64 %i.krk
  store <8 x float> %i.ksc, ptr %i.ksd, align 8, !tbaa !12, !noalias !499
  %index.next3297 = add nuw i64 %index3290, 8     ; 2 uses
  %i.kse = icmp eq i64 %index.next3297, %n.vec3288
  br i1 %i.kse, label %middle.block3298, label %vector.body3289, !llvm.loop !297

middle.block3298:                                 ; preds = %vector.body3289
  %cmp.n3299 = icmp eq i64 %n.vec3288, %i.kqs
  br i1 %cmp.n3299, label %._crit_edge904.i, label %.lr.ph903.i.preheader

.lr.ph903.i.preheader:                            ; preds = %vector.memcheck3271, %.lr.ph903.preheader.i, %middle.block3298
  %indvars.iv1031.i.ph = phi i64 [ %i.kqp, %vector.memcheck3271 ], [ %i.kqp, %.lr.ph903.preheader.i ], [ %i.kre, %middle.block3298 ]
  %indvars.iv1027.i.ph = phi i64 [ %i.kqu, %vector.memcheck3271 ], [ %i.kqu, %.lr.ph903.preheader.i ], [ %i.krf, %middle.block3298 ]
  %indvars.iv1023.i.ph = phi i64 [ %i.kqt, %vector.memcheck3271 ], [ %i.kqt, %.lr.ph903.preheader.i ], [ %i.krg, %middle.block3298 ]
  %.0762898.i.ph = phi i32 [ %i.kqh, %vector.memcheck3271 ], [ %i.kqh, %.lr.ph903.preheader.i ], [ %i.krj, %middle.block3298 ]
  br label %.lr.ph903.i

._crit_edge904.i:                                 ; preds = %.lr.ph903.i, %middle.block3298, %bb.og
  %i.ksf = add nuw nsw i32 %.0763905.i, 1         ; 2 uses
  %i.ksg = icmp slt i32 %i.ksf, %i.jft
  %i.ksh = add <2 x i32> %i.kpy, splat (i32 112)
  %indvars.iv.next1030.i = add i32 %indvars.iv1029.i, 112
  %indvar.next3273 = add i32 %indvar3272, 1
  br i1 %i.ksg, label %bb.og, label %.preheader828.i.preheader

.preheader828.i.preheader:                        ; preds = %._crit_edge904.i
  %i.ksi = add i32 %smax3329, -9
  %i.ksj = add i32 %smax3329, -9
  br label %.preheader828.i

.lr.ph903.i:                                      ; preds = %.lr.ph903.i.preheader, %.lr.ph903.i
  %indvars.iv1031.i = phi i64 [ %indvars.iv.next1032.i, %.lr.ph903.i ], [ %indvars.iv1031.i.ph, %.lr.ph903.i.preheader ] ; 4 uses
  %indvars.iv1027.i = phi i64 [ %indvars.iv.next1028.i, %.lr.ph903.i ], [ %indvars.iv1027.i.ph, %.lr.ph903.i.preheader ] ; 2 uses
  %indvars.iv1023.i = phi i64 [ %indvars.iv.next1024.i, %.lr.ph903.i ], [ %indvars.iv1023.i.ph, %.lr.ph903.i.preheader ] ; 2 uses
  %.0762898.i = phi i32 [ %i.ktf, %.lr.ph903.i ], [ %.0762898.i.ph, %.lr.ph903.i.preheader ]
  %i.ksk = getelementptr inbounds nuw [4 x i8], ptr %i.jex, i64 %indvars.iv1027.i
  %i.ksl = load float, ptr %i.ksk, align 4, !tbaa !12, !noalias !499
  %i.ksm = getelementptr inbounds nuw [4 x i8], ptr %i.jex, i64 %indvars.iv1031.i
  %i.ksn = load float, ptr %i.ksm, align 4, !tbaa !12, !noalias !499
  %i.kso = fadd reassoc nsz arcp contract afn float %i.ksn, %i.ksl
  %indvars.iv.next1024.i = add nuw nsw i64 %indvars.iv1023.i, 1 ; 2 uses
  %i.ksp = getelementptr inbounds nuw [4 x i8], ptr %i.jex, i64 %indvars.iv.next1024.i
  %i.ksq = load float, ptr %i.ksp, align 4, !tbaa !12, !noalias !499
  %i.ksr = fadd reassoc nsz arcp contract afn float %i.kso, %i.ksq
  %i.kss = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.ksr, float 1.000000e-10) ; 2 uses
  %indvars.iv.next1028.i = add nuw nsw i64 %indvars.iv1027.i, 1 ; 2 uses
  %i.kst = getelementptr inbounds nuw [4 x i8], ptr %i.jey, i64 %indvars.iv.next1028.i
  %i.ksu = load float, ptr %i.kst, align 4, !tbaa !12, !noalias !499
  %i.ksv = getelementptr inbounds nuw [4 x i8], ptr %i.jey, i64 %indvars.iv1031.i
  %i.ksw = load float, ptr %i.ksv, align 4, !tbaa !12, !noalias !499
  %i.ksx = fadd reassoc nsz arcp contract afn float %i.ksw, %i.ksu
  %i.ksy = getelementptr inbounds nuw [4 x i8], ptr %i.jey, i64 %indvars.iv1023.i
  %i.ksz = load float, ptr %i.ksy, align 4, !tbaa !12, !noalias !499
  %i.kta = fadd reassoc nsz arcp contract afn float %i.ksx, %i.ksz
  %i.ktb = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.kta, float 1.000000e-10)
  %i.ktc = fadd reassoc nsz arcp contract afn float %i.ktb, %i.kss
  %i.ktd = fdiv reassoc nsz arcp contract afn float %i.kss, %i.ktc
  %i.kte = getelementptr inbounds nuw [4 x i8], ptr %i.jet, i64 %indvars.iv1031.i
  store float %i.ktd, ptr %i.kte, align 4, !tbaa !12, !noalias !499
  %i.ktf = add nuw nsw i32 %.0762898.i, 2         ; 2 uses
  %indvars.iv.next1032.i = add nuw nsw i64 %indvars.iv1031.i, 1
  %i.ktg = icmp slt i32 %i.ktf, %i.kko
  br i1 %i.ktg, label %.lr.ph903.i, label %._crit_edge904.i, !llvm.loop !298

.preheader828.i:                                  ; preds = %.preheader828.i.preheader, %._crit_edge914.i
  %indvar3061 = phi i32 [ 0, %.preheader828.i.preheader ], [ %indvar.next3062, %._crit_edge914.i ] ; 2 uses
  %indvars.iv1041.i = phi i32 [ 452, %.preheader828.i.preheader ], [ %indvars.iv.next1042.i, %._crit_edge914.i ] ; 4 uses
  %indvars.iv1037.i = phi i32 [ 339, %.preheader828.i.preheader ], [ %indvars.iv.next1038.i, %._crit_edge914.i ] ; 2 uses
  %indvars.iv1033.i = phi i32 [ 563, %.preheader828.i.preheader ], [ %indvars.iv.next1034.i, %._crit_edge914.i ] ; 2 uses
  %.0755915.i = phi i32 [ 4, %.preheader828.i.preheader ], [ %i.kzh, %._crit_edge914.i ] ; 2 uses
  %i.kth = mul i32 %indvar3061, 112
  %i.kti = add i32 %i.kth, 448
  %i.ktj = zext i32 %i.kti to i64
  %i.ktk = shl nuw nsw i64 %i.ktj, 1              ; 2 uses
  %scevgep3063 = getelementptr i8, ptr %scevgep3060, i64 %i.ktk
  %i.ktl = shl nuw i32 %.0755915.i, 1
  %i.ktm = and i32 %i.ktl, 14                     ; 2 uses
  %i.ktn = shl nuw nsw i32 %i.ktm, 1
  %i.kto = lshr i32 %.fr1070, %i.ktn
  %i.ktp = and i32 %i.kto, 1                      ; 8 uses
  %i.ktq = or disjoint i32 %i.ktp, 4              ; 4 uses
  %i.ktr = icmp slt i32 %i.ktq, %i.kko
  br i1 %i.ktr, label %.lr.ph913.i, label %._crit_edge914.i

.lr.ph913.i:                                      ; preds = %.preheader828.i
  %i.kts = or disjoint i32 %i.ktp, %i.ktm
  %i.ktt = shl nuw nsw i32 %i.kts, 1
  %i.ktu = lshr i32 %.fr1070, %i.ktt              ; 2 uses
  %i.ktv = and i32 %i.ktu, 3
  %i.ktw = sub nsw i32 2, %i.ktv
  %i.ktx = sext i32 %i.ktw to i64
  %i.kty = getelementptr inbounds [50176 x i8], ptr %i.jfd, i64 %i.ktx ; 10 uses
  %i.ktz = add i32 %i.ktp, %indvars.iv1033.i
  %i.kua = lshr i32 %i.ktz, 1
  %i.kub = zext nneg i32 %i.kua to i64            ; 5 uses
  %i.kuc = add i32 %i.ktp, %indvars.iv1037.i
  %i.kud = lshr i32 %i.kuc, 1
  %i.kue = zext nneg i32 %i.kud to i64            ; 5 uses
  %i.kuf = or disjoint i32 %i.ktp, %indvars.iv1041.i
  %i.kug = lshr exact i32 %indvars.iv1041.i, 1
  %i.kuh = zext nneg i32 %i.kug to i64            ; 4 uses
  %i.kui = sext i32 %i.kuf to i64                 ; 5 uses
  %i.kuj = sub i32 %i.ksj, %i.ktp                 ; 2 uses
  %i.kuk = lshr i32 %i.kuj, 1
  %narrow4573 = add nuw i32 %i.kuk, 1
  %i.kul = zext i32 %narrow4573 to i64            ; 2 uses
  %min.iters.check3214 = icmp ult i32 %i.kuj, 16
  br i1 %min.iters.check3214, label %scalar.ph3213.preheader, label %vector.memcheck3049

scalar.ph3213.preheader:                          ; preds = %vector.body3220, %vector.memcheck3049, %.lr.ph913.i
  %indvars.iv1045.i.ph = phi i64 [ %i.kui, %vector.memcheck3049 ], [ %i.kui, %.lr.ph913.i ], [ %i.kvj, %vector.body3220 ]
  %indvars.iv1043.i.ph = phi i64 [ %i.kuh, %vector.memcheck3049 ], [ %i.kuh, %.lr.ph913.i ], [ %i.kvk, %vector.body3220 ]
  %indvars.iv1039.i.ph = phi i64 [ %i.kue, %vector.memcheck3049 ], [ %i.kue, %.lr.ph913.i ], [ %i.kvl, %vector.body3220 ]
  %indvars.iv1035.i.ph = phi i64 [ %i.kub, %vector.memcheck3049 ], [ %i.kub, %.lr.ph913.i ], [ %i.kvm, %vector.body3220 ]
  %.0754907.i.ph = phi i32 [ %i.ktq, %vector.memcheck3049 ], [ %i.ktq, %.lr.ph913.i ], [ %i.kvp, %vector.body3220 ]
  br label %scalar.ph3213

vector.memcheck3049:                              ; preds = %.lr.ph913.i
  %i.kum = or disjoint i32 %indvars.iv1041.i, %i.ktp
  %i.kun = sext i32 %i.kum to i64
  %i.kuo = shl nsw i64 %i.kun, 2                  ; 12 uses
  %i.kup = and i32 %i.ktu, 3
  %narrow4574 = mul nuw nsw i32 %i.kup, 50176
  %i.kuq = zext nneg i32 %narrow4574 to i64       ; 2 uses
  %i.kur = sub nsw i64 %i.kuo, %i.kuq             ; 9 uses
  %scevgep3051 = getelementptr i8, ptr %scevgep3050.a, i64 %i.kur ; 20 uses
  %i.kus = sub i32 %i.ksi, %i.ktp
  %i.kut = lshr i32 %i.kus, 1
  %i.kuu = zext nneg i32 %i.kut to i64            ; 2 uses
  %i.kuv = shl nuw nsw i64 %i.kuu, 3              ; 2 uses
  %i.kuw = add nsw i64 %i.kuv, %i.kuo
  %i.kux = sub nsw i64 %i.kuw, %i.kuq             ; 9 uses
  %scevgep3053.a = getelementptr i8, ptr %scevgep3052.a, i64 %i.kux ; 20 uses
  %i.kuy = shl nuw nsw i64 %i.kub, 2              ; 2 uses
  %scevgep3054 = getelementptr i8, ptr %i.jet, i64 %i.kuy
  %i.kuz = shl nuw nsw i64 %i.kuu, 2              ; 3 uses
  %i.kva = getelementptr i8, ptr %scevgep3055.a, i64 %i.kuz
  %scevgep3056.a = getelementptr i8, ptr %i.kva, i64 %i.kuy
  %i.kvb = shl nuw nsw i64 %i.kue, 2              ; 2 uses
  %scevgep3057 = getelementptr i8, ptr %i.jet, i64 %i.kvb
  %i.kvc = getelementptr i8, ptr %scevgep3058.a, i64 %i.kuz
  %scevgep3059 = getelementptr i8, ptr %i.kvc, i64 %i.kvb
  %i.kvd = getelementptr i8, ptr %scevgep3064.a, i64 %i.kuz
  %scevgep3065 = getelementptr i8, ptr %i.kvd, i64 %i.ktk
  %scevgep3067 = getelementptr i8, ptr %scevgep3066.a, i64 %i.kur
  %scevgep3069 = getelementptr i8, ptr %scevgep3068.a, i64 %i.kux
  %scevgep3071 = getelementptr i8, ptr %scevgep3070.a, i64 %i.kur
  %scevgep3073 = getelementptr i8, ptr %scevgep3072.a, i64 %i.kux
  %scevgep3075 = getelementptr i8, ptr %scevgep3074.a, i64 %i.kur
  %scevgep3077 = getelementptr i8, ptr %scevgep3076.a, i64 %i.kux
  %scevgep3079 = getelementptr i8, ptr %scevgep3078.a, i64 %i.kuo
  %i.kve = add nsw i64 %i.kuv, %i.kuo             ; 9 uses
  %scevgep3081 = getelementptr i8, ptr %scevgep3080.a, i64 %i.kve
  %scevgep3083 = getelementptr i8, ptr %scevgep3082.a, i64 %i.kuo
  %scevgep3085 = getelementptr i8, ptr %scevgep3084.a, i64 %i.kve
  %scevgep3087 = getelementptr i8, ptr %scevgep3086.a, i64 %i.kur
  %scevgep3089 = getelementptr i8, ptr %scevgep3088.a, i64 %i.kux
  %scevgep3091 = getelementptr i8, ptr %scevgep3090.a, i64 %i.kur
  %scevgep3093 = getelementptr i8, ptr %scevgep3092.a, i64 %i.kux
  %scevgep3095 = getelementptr i8, ptr %scevgep3094.a, i64 %i.kur
  %scevgep3097 = getelementptr i8, ptr %scevgep3096.a, i64 %i.kux
  %scevgep3099 = getelementptr i8, ptr %scevgep3098.a, i64 %i.kuo
  %scevgep3101 = getelementptr i8, ptr %scevgep3100.a, i64 %i.kve
  %scevgep3103 = getelementptr i8, ptr %scevgep3102.a, i64 %i.kur
  %scevgep3105 = getelementptr i8, ptr %scevgep3104.a, i64 %i.kux
  %scevgep3107 = getelementptr i8, ptr %scevgep3106.a, i64 %i.kuo
  %scevgep3109 = getelementptr i8, ptr %scevgep3108.a, i64 %i.kve
  %scevgep3111 = getelementptr i8, ptr %scevgep3110.a, i64 %i.kur
  %scevgep3113 = getelementptr i8, ptr %scevgep3112.a, i64 %i.kux
  %scevgep3115 = getelementptr i8, ptr %scevgep3114.a, i64 %i.kuo
  %scevgep3117 = getelementptr i8, ptr %scevgep3116.a, i64 %i.kve
  %scevgep3119 = getelementptr i8, ptr %scevgep3118.a, i64 %i.kuo
  %scevgep3121 = getelementptr i8, ptr %scevgep3120.a, i64 %i.kve
  %scevgep3123 = getelementptr i8, ptr %scevgep3122.a, i64 %i.kuo
  %scevgep3125 = getelementptr i8, ptr %scevgep3124.a, i64 %i.kve
  %scevgep3127 = getelementptr i8, ptr %scevgep3126.a, i64 %i.kuo
  %scevgep3129 = getelementptr i8, ptr %scevgep3128.a, i64 %i.kve
  %scevgep3131 = getelementptr i8, ptr %scevgep3130.a, i64 %i.kuo
  %scevgep3133 = getelementptr i8, ptr %scevgep3132.a, i64 %i.kve
  %bound03134 = icmp ult ptr %scevgep3051, %scevgep3056.a
  %bound13135 = icmp ult ptr %scevgep3054, %scevgep3053.a
  %found.conflict3136 = and i1 %bound03134, %bound13135
  %bound03137 = icmp ult ptr %scevgep3051, %scevgep3059
  %bound13138 = icmp ult ptr %scevgep3057, %scevgep3053.a
  %found.conflict3139 = and i1 %bound03137, %bound13138
  %conflict.rdx3140 = or i1 %found.conflict3136, %found.conflict3139
  %bound03141 = icmp ult ptr %scevgep3051, %scevgep3065
  %bound13142 = icmp ult ptr %scevgep3063, %scevgep3053.a
  %found.conflict3143 = and i1 %bound03141, %bound13142
  %conflict.rdx3144 = or i1 %conflict.rdx3140, %found.conflict3143
  %bound03145 = icmp ult ptr %scevgep3051, %scevgep3069
  %bound13146 = icmp ult ptr %scevgep3067, %scevgep3053.a
  %found.conflict3147 = and i1 %bound03145, %bound13146
  %conflict.rdx3148 = or i1 %conflict.rdx3144, %found.conflict3147
  %bound03149 = icmp ult ptr %scevgep3051, %scevgep3073
  %bound13150 = icmp ult ptr %scevgep3071, %scevgep3053.a
  %found.conflict3151 = and i1 %bound03149, %bound13150
  %conflict.rdx3152 = or i1 %conflict.rdx3148, %found.conflict3151
  %bound03153 = icmp ult ptr %scevgep3051, %scevgep3077
  %bound13154 = icmp ult ptr %scevgep3075, %scevgep3053.a
  %found.conflict3155 = and i1 %bound03153, %bound13154
  %conflict.rdx3156 = or i1 %conflict.rdx3152, %found.conflict3155
  %bound03157 = icmp ult ptr %scevgep3051, %scevgep3081
  %bound13158 = icmp ult ptr %scevgep3079, %scevgep3053.a
  %found.conflict3159 = and i1 %bound03157, %bound13158
  %conflict.rdx3160 = or i1 %conflict.rdx3156, %found.conflict3159
  %bound03161 = icmp ult ptr %scevgep3051, %scevgep3085
  %bound13162 = icmp ult ptr %scevgep3083, %scevgep3053.a
  %found.conflict3163 = and i1 %bound03161, %bound13162
  %conflict.rdx3164 = or i1 %conflict.rdx3160, %found.conflict3163
  %bound03165 = icmp ult ptr %scevgep3051, %scevgep3089
  %bound13166 = icmp ult ptr %scevgep3087, %scevgep3053.a
  %found.conflict3167 = and i1 %bound03165, %bound13166
  %conflict.rdx3168 = or i1 %conflict.rdx3164, %found.conflict3167
  %bound03169 = icmp ult ptr %scevgep3051, %scevgep3093
  %bound13170 = icmp ult ptr %scevgep3091, %scevgep3053.a
  %found.conflict3171 = and i1 %bound03169, %bound13170
  %conflict.rdx3172 = or i1 %conflict.rdx3168, %found.conflict3171
  %bound03173 = icmp ult ptr %scevgep3051, %scevgep3097
  %bound13174 = icmp ult ptr %scevgep3095, %scevgep3053.a
  %found.conflict3175 = and i1 %bound03173, %bound13174
  %conflict.rdx3176 = or i1 %conflict.rdx3172, %found.conflict3175
  %bound03177 = icmp ult ptr %scevgep3051, %scevgep3101
  %bound13178 = icmp ult ptr %scevgep3099, %scevgep3053.a
  %found.conflict3179 = and i1 %bound03177, %bound13178
  %conflict.rdx3180 = or i1 %conflict.rdx3176, %found.conflict3179
  %bound03181 = icmp ult ptr %scevgep3051, %scevgep3105
  %bound13182 = icmp ult ptr %scevgep3103, %scevgep3053.a
end_hunk_7
begin_hunk_8_@process:bb.a
  %conflict.rdx3188 = or i1 %conflict.rdx3184, %found.conflict3187
  %bound03189 = icmp ult ptr %scevgep3051, %scevgep3113
  %bound13190 = icmp ult ptr %scevgep3111, %scevgep3053.a
  %found.conflict3191 = and i1 %bound03189, %bound13190
  %conflict.rdx3192 = or i1 %conflict.rdx3188, %found.conflict3191
  %bound03193 = icmp ult ptr %scevgep3051, %scevgep3117
  %bound13194 = icmp ult ptr %scevgep3115, %scevgep3053.a
  %found.conflict3195 = and i1 %bound03193, %bound13194
  %conflict.rdx3196 = or i1 %conflict.rdx3192, %found.conflict3195
  %bound03197 = icmp ult ptr %scevgep3051, %scevgep3121
  %bound13198 = icmp ult ptr %scevgep3119, %scevgep3053.a
  %found.conflict3199 = and i1 %bound03197, %bound13198
  %conflict.rdx3200 = or i1 %conflict.rdx3196, %found.conflict3199
  %bound03201 = icmp ult ptr %scevgep3051, %scevgep3125
  %bound13202 = icmp ult ptr %scevgep3123, %scevgep3053.a
  %found.conflict3203 = and i1 %bound03201, %bound13202
  %conflict.rdx3204 = or i1 %conflict.rdx3200, %found.conflict3203
  %bound03205 = icmp ult ptr %scevgep3051, %scevgep3129
  %bound13206 = icmp ult ptr %scevgep3127, %scevgep3053.a
  %found.conflict3207 = and i1 %bound03205, %bound13206
  %conflict.rdx3208 = or i1 %conflict.rdx3204, %found.conflict3207
  %bound03209 = icmp ult ptr %scevgep3051, %scevgep3133
  %bound13210 = icmp ult ptr %scevgep3131, %scevgep3053.a
  %found.conflict3211 = and i1 %bound03209, %bound13210
  %conflict.rdx3212 = or i1 %conflict.rdx3208, %found.conflict3211
  br i1 %conflict.rdx3212, label %scalar.ph3213.preheader, label %vector.ph3215

vector.ph3215:                                    ; preds = %vector.memcheck3049
  %i.kvf = and i64 %i.kul, 7                      ; 2 uses
  %i.kvg = icmp eq i64 %i.kvf, 0
  %i.kvh = select i1 %i.kvg, i64 8, i64 %i.kvf
  %n.vec3216 = sub nsw i64 %i.kul, %i.kvh         ; 6 uses
  %i.kvi = shl nsw i64 %n.vec3216, 1
  %i.kvj = add nsw i64 %i.kvi, %i.kui
  %i.kvk = add nsw i64 %n.vec3216, %i.kuh
  %i.kvl = add nsw i64 %n.vec3216, %i.kue
  %i.kvm = add nsw i64 %n.vec3216, %i.kub
  %i.kvn = trunc i64 %n.vec3216 to i32
  %i.kvo = shl i32 %i.kvn, 1
  %i.kvp = add i32 %i.ktq, %i.kvo
  %broadcast.splatinsert3217 = insertelement <8 x i64> poison, i64 %i.kui, i64 0
  %broadcast.splat3218 = shufflevector <8 x i64> %broadcast.splatinsert3217, <8 x i64> poison, <8 x i32> zeroinitializer
  %induction3219 = add nuw nsw <8 x i64> %broadcast.splat3218, <i64 0, i64 2, i64 4, i64 6, i64 8, i64 10, i64 12, i64 14>
  %invariant.gep4867 = getelementptr [4 x i8], ptr %i.jet, i64 %i.kuh
  br label %vector.body3220

vector.body3220:                                  ; preds = %vector.body3220, %vector.ph3215
  %index3221 = phi i64 [ 0, %vector.ph3215 ], [ %index.next3263, %vector.body3220 ] ; 5 uses
  %vec.ind3222 = phi <8 x i64> [ %induction3219, %vector.ph3215 ], [ %vec.ind.next3264, %vector.body3220 ] ; 2 uses
  %i.kvq = shl nuw i64 %index3221, 1
  %i.kvr = add nuw i64 %i.kvq, %i.kui             ; 5 uses
  %i.kvs = add nuw i64 %index3221, %i.kue         ; 2 uses
  %i.kvt = add nuw i64 %index3221, %i.kub         ; 2 uses
  %gep4868 = getelementptr [4 x i8], ptr %invariant.gep4867, i64 %index3221
  %wide.load3223.a = load <8 x float>, ptr %gep4868, align 8, !tbaa !12, !alias.scope !524, !noalias !499 ; 2 uses
  %i.kvu = getelementptr inbounds nuw [4 x i8], ptr %i.jet, i64 %i.kvs
  %wide.load3224.a = load <8 x float>, ptr %i.kvu, align 4, !tbaa !12, !alias.scope !525, !noalias !499
  %i.kvv = getelementptr inbounds nuw [4 x i8], ptr %i.jet, i64 %i.kvs
  %i.kvw = getelementptr inbounds nuw i8, ptr %i.kvv, i64 4
  %wide.load3225.a = load <8 x float>, ptr %i.kvw, align 4, !tbaa !12, !alias.scope !525, !noalias !499
  %i.kvx = fadd reassoc nsz arcp contract afn <8 x float> %wide.load3225.a, %wide.load3224.a
  %i.kvy = getelementptr inbounds nuw [4 x i8], ptr %i.jet, i64 %i.kvt
  %wide.load3226.a = load <8 x float>, ptr %i.kvy, align 4, !tbaa !12, !alias.scope !526, !noalias !499
  %i.kvz = fadd reassoc nsz arcp contract afn <8 x float> %i.kvx, %wide.load3226.a
  %i.kwa = getelementptr inbounds nuw [4 x i8], ptr %i.jet, i64 %i.kvt
  %i.kwb = getelementptr inbounds nuw i8, ptr %i.kwa, i64 4
  %wide.load3227 = load <8 x float>, ptr %i.kwb, align 4, !tbaa !12, !alias.scope !526, !noalias !499
  %i.kwc = fadd reassoc nsz arcp contract afn <8 x float> %i.kvz, %wide.load3227
  %i.kwd = fmul reassoc nsz arcp contract afn <8 x float> %i.kwc, splat (float 2.500000e-01) ; 2 uses
  %i.kwe = fsub reassoc nsz arcp contract afn <8 x float> splat (float 5.000000e-01), %wide.load3223.a
  %i.kwf = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.kwe)
  %i.kwg = fsub reassoc nsz arcp contract afn <8 x float> splat (float 5.000000e-01), %i.kwd
  %i.kwh = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.kwg)
  %i.kwi = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.kwf, %i.kwh
  %i.kwj = select reassoc nsz arcp contract afn <8 x i1> %i.kwi, <8 x float> %i.kwd, <8 x float> %wide.load3223.a ; 3 uses
  %i.kwk = add nsw i64 %i.kvr, -113               ; 2 uses
  %i.kwl = getelementptr inbounds [4 x i8], ptr %i.kty, i64 %i.kwk
  %wide.vec3228 = load <16 x float>, ptr %i.kwl, align 4, !tbaa !12, !alias.scope !527, !noalias !499
  %strided.vec3229 = shufflevector <16 x float> %wide.vec3228, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 3 uses
  %i.kwm = add nuw nsw i64 %i.kvr, 113            ; 2 uses
  %i.kwn = getelementptr inbounds nuw [4 x i8], ptr %i.kty, i64 %i.kwm
  %wide.vec3230 = load <16 x float>, ptr %i.kwn, align 4, !tbaa !12, !alias.scope !528, !noalias !499
  %strided.vec3231 = shufflevector <16 x float> %wide.vec3230, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 3 uses
  %i.kwo = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3229, %strided.vec3231
  %i.kwp = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.kwo)
  %i.kwq = fadd reassoc nsz arcp contract afn <8 x float> %i.kwp, splat (float f0x3727C5AC) ; 2 uses
  %wide.gep3232 = getelementptr [4 x i8], ptr %i.kty, <8 x i64> %vec.ind3222 ; 2 uses
  %i.kwr = extractelement <8 x ptr> %wide.gep3232, i64 0 ; 4 uses
  %i.kws = getelementptr i8, ptr %i.kwr, i64 -1356
  %wide.vec3233 = load <16 x float>, ptr %i.kws, align 4, !tbaa !12, !alias.scope !529, !noalias !499
  %strided.vec3234 = shufflevector <16 x float> %wide.vec3233, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.kwt = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3229, %strided.vec3234
  %i.kwu = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.kwt)
  %i.kwv = fadd reassoc nsz arcp contract afn <8 x float> %i.kwq, %i.kwu
  %i.kww = getelementptr inbounds nuw [4 x i8], ptr %i.jff, i64 %i.kvr ; 5 uses
  %wide.vec3235 = load <16 x float>, ptr %i.kww, align 4, !tbaa !12, !alias.scope !530, !noalias !499
  %strided.vec3236 = shufflevector <16 x float> %wide.vec3235, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 5 uses
  %i.kwx = getelementptr i8, ptr %i.kww, i64 -904
  %wide.vec3237 = load <16 x float>, ptr %i.kwx, align 4, !tbaa !12, !alias.scope !531, !noalias !499
  %strided.vec3238 = shufflevector <16 x float> %wide.vec3237, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.kwy = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3236, %strided.vec3238
  %i.kwz = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.kwy)
  %i.kxa = fadd reassoc nsz arcp contract afn <8 x float> %i.kwv, %i.kwz ; 2 uses
  %i.kxb = add nsw i64 %i.kvr, -111               ; 2 uses
  %i.kxc = getelementptr inbounds [4 x i8], ptr %i.kty, i64 %i.kxb
  %wide.vec3239 = load <16 x float>, ptr %i.kxc, align 4, !tbaa !12, !alias.scope !532, !noalias !499
  %strided.vec3240 = shufflevector <16 x float> %wide.vec3239, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 3 uses
  %i.kxd = add nuw nsw i64 %i.kvr, 111            ; 2 uses
  %i.kxe = getelementptr inbounds nuw [4 x i8], ptr %i.kty, i64 %i.kxd
  %wide.vec3241 = load <16 x float>, ptr %i.kxe, align 4, !tbaa !12, !alias.scope !533, !noalias !499
  %strided.vec3242 = shufflevector <16 x float> %wide.vec3241, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 3 uses
  %i.kxf = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3240, %strided.vec3242
  %i.kxg = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.kxf)
  %i.kxh = fadd reassoc nsz arcp contract afn <8 x float> %i.kxg, splat (float f0x3727C5AC) ; 2 uses
  %i.kxi = getelementptr i8, ptr %i.kwr, i64 -1332
  %wide.vec3243 = load <16 x float>, ptr %i.kxi, align 4, !tbaa !12, !alias.scope !534, !noalias !499
  %strided.vec3244 = shufflevector <16 x float> %wide.vec3243, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.kxj = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3240, %strided.vec3244
  %i.kxk = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.kxj)
  %i.kxl = fadd reassoc nsz arcp contract afn <8 x float> %i.kxh, %i.kxk
  %i.kxm = getelementptr i8, ptr %i.kww, i64 -888
  %wide.vec3245 = load <16 x float>, ptr %i.kxm, align 4, !tbaa !12, !alias.scope !535, !noalias !499
  %strided.vec3246 = shufflevector <16 x float> %wide.vec3245, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.kxn = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3236, %strided.vec3246
  %i.kxo = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.kxn)
  %i.kxp = fadd reassoc nsz arcp contract afn <8 x float> %i.kxl, %i.kxo ; 2 uses
  %i.kxq = getelementptr inbounds nuw i8, ptr %i.kwr, i64 1332
  %wide.vec3247 = load <16 x float>, ptr %i.kxq, align 4, !tbaa !12, !alias.scope !536, !noalias !499
  %strided.vec3248 = shufflevector <16 x float> %wide.vec3247, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.kxr = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3242, %strided.vec3248
  %i.kxs = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.kxr)
  %i.kxt = fadd reassoc nsz arcp contract afn <8 x float> %i.kxs, %i.kxh
  %i.kxu = getelementptr inbounds nuw i8, ptr %i.kww, i64 888
  %wide.vec3249 = load <16 x float>, ptr %i.kxu, align 4, !tbaa !12, !alias.scope !537, !noalias !499
  %strided.vec3250 = shufflevector <16 x float> %wide.vec3249, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.kxv = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3236, %strided.vec3250
  %i.kxw = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.kxv)
  %i.kxx = fadd reassoc nsz arcp contract afn <8 x float> %i.kxt, %i.kxw ; 2 uses
  %i.kxy = getelementptr inbounds nuw i8, ptr %i.kwr, i64 1356
  %wide.vec3251 = load <16 x float>, ptr %i.kxy, align 4, !tbaa !12, !alias.scope !538, !noalias !499
  %strided.vec3252 = shufflevector <16 x float> %wide.vec3251, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.kxz = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3231, %strided.vec3252
  %i.kya = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.kxz)
  %i.kyb = fadd reassoc nsz arcp contract afn <8 x float> %i.kya, %i.kwq
  %i.kyc = getelementptr inbounds nuw i8, ptr %i.kww, i64 904
  %wide.vec3253 = load <16 x float>, ptr %i.kyc, align 4, !tbaa !12, !alias.scope !539, !noalias !499
  %strided.vec3254 = shufflevector <16 x float> %wide.vec3253, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.kyd = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3236, %strided.vec3254
  %i.kye = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.kyd)
  %i.kyf = fadd reassoc nsz arcp contract afn <8 x float> %i.kyb, %i.kye ; 2 uses
  %i.kyg = getelementptr inbounds [4 x i8], ptr %i.jff, i64 %i.kwk
  %wide.vec3255 = load <16 x float>, ptr %i.kyg, align 4, !tbaa !12, !alias.scope !540, !noalias !499
  %strided.vec3256 = shufflevector <16 x float> %wide.vec3255, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.kyh = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3229, %strided.vec3256
  %i.kyi = getelementptr inbounds [4 x i8], ptr %i.jff, i64 %i.kxb
  %wide.vec3257 = load <16 x float>, ptr %i.kyi, align 4, !tbaa !12, !alias.scope !541, !noalias !499
  %strided.vec3258 = shufflevector <16 x float> %wide.vec3257, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.kyj = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3240, %strided.vec3258
  %i.kyk = getelementptr inbounds nuw [4 x i8], ptr %i.jff, i64 %i.kxd
  %wide.vec3259 = load <16 x float>, ptr %i.kyk, align 4, !tbaa !12, !alias.scope !542, !noalias !499
  %strided.vec3260 = shufflevector <16 x float> %wide.vec3259, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.kyl = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3242, %strided.vec3260
  %i.kym = getelementptr inbounds nuw [4 x i8], ptr %i.jff, i64 %i.kwm
  %wide.vec3261 = load <16 x float>, ptr %i.kym, align 4, !tbaa !12, !alias.scope !543, !noalias !499
  %strided.vec3262 = shufflevector <16 x float> %wide.vec3261, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.kyn = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3231, %strided.vec3262
  %i.kyo = fmul reassoc nsz arcp contract afn <8 x float> %i.kyn, %i.kxa
  %i.kyp = fmul reassoc nsz arcp contract afn <8 x float> %i.kyf, %i.kyh
  %i.kyq = fadd reassoc nsz arcp contract afn <8 x float> %i.kyo, %i.kyp
  %i.kyr = fadd reassoc nsz arcp contract afn <8 x float> %i.kyf, %i.kxa
  %i.kys = fdiv reassoc nsz arcp contract afn <8 x float> %i.kyq, %i.kyr ; 2 uses
  %i.kyt = fmul reassoc nsz arcp contract afn <8 x float> %i.kyl, %i.kxp
  %i.kyu = fmul reassoc nsz arcp contract afn <8 x float> %i.kyj, %i.kxx
  %i.kyv = fadd reassoc nsz arcp contract afn <8 x float> %i.kyt, %i.kyu
  %i.kyw = fadd reassoc nsz arcp contract afn <8 x float> %i.kxx, %i.kxp
  %i.kyx = fdiv reassoc nsz arcp contract afn <8 x float> %i.kyv, %i.kyw
  %i.kyy = fcmp reassoc nsz arcp contract afn oge <8 x float> %i.kwj, zeroinitializer
  %i.kyz = fcmp reassoc nsz arcp contract afn ole <8 x float> %i.kwj, splat (float 1.000000e+00)
  %i.kza = select reassoc nsz arcp contract afn <8 x i1> %i.kyz, <8 x float> %i.kwj, <8 x float> splat (float 1.000000e+00)
  %i.kzb = select reassoc nsz arcp contract afn <8 x i1> %i.kyy, <8 x float> %i.kza, <8 x float> zeroinitializer
  %i.kzc = fsub reassoc nsz arcp contract afn <8 x float> %i.kyx, %i.kys
  %i.kzd = fmul reassoc nsz arcp contract afn <8 x float> %i.kzc, %i.kzb
  %i.kze = fadd reassoc nsz arcp contract afn <8 x float> %i.kys, %i.kzd
  %i.kzf = fadd reassoc nsz arcp contract afn <8 x float> %i.kze, %strided.vec3236
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.kzf, <8 x ptr> align 4 %wide.gep3232, <8 x i1> splat (i1 true)), !tbaa !12, !alias.scope !544, !noalias !545
  %index.next3263 = add nuw i64 %index3221, 8     ; 2 uses
  %vec.ind.next3264 = add nuw nsw <8 x i64> %vec.ind3222, splat (i64 16)
  %i.kzg = icmp eq i64 %index.next3263, %n.vec3216
  br i1 %i.kzg, label %scalar.ph3213.preheader, label %vector.body3220, !llvm.loop !321

._crit_edge914.i:                                 ; preds = %scalar.ph3213, %.preheader828.i
  %i.kzh = add nuw nsw i32 %.0755915.i, 1         ; 2 uses
  %i.kzi = icmp slt i32 %i.kzh, %i.jft
  %indvars.iv.next1034.i = add i32 %indvars.iv1033.i, 112
  %indvars.iv.next1038.i = add i32 %indvars.iv1037.i, 112
  %indvars.iv.next1042.i = add i32 %indvars.iv1041.i, 112
  %indvar.next3062 = add i32 %indvar3061, 1
  br i1 %i.kzi, label %.preheader828.i, label %.preheader.i543.preheader

.preheader.i543.preheader:                        ; preds = %._crit_edge914.i
  %i.kzj = add i32 %smax3329, -9
  %i.kzk = add i32 %smax3329, -9
  br label %.preheader.i543

scalar.ph3213:                                    ; preds = %scalar.ph3213.preheader, %scalar.ph3213
  %indvars.iv1045.i = phi i64 [ %indvars.iv.next1046.i, %scalar.ph3213 ], [ %indvars.iv1045.i.ph, %scalar.ph3213.preheader ] ; 7 uses
  %indvars.iv1043.i = phi i64 [ %indvars.iv.next1044.i, %scalar.ph3213 ], [ %indvars.iv1043.i.ph, %scalar.ph3213.preheader ] ; 2 uses
  %indvars.iv1039.i = phi i64 [ %indvars.iv.next1040.i, %scalar.ph3213 ], [ %indvars.iv1039.i.ph, %scalar.ph3213.preheader ] ; 2 uses
  %indvars.iv1035.i = phi i64 [ %indvars.iv.next1036.i, %scalar.ph3213 ], [ %indvars.iv1035.i.ph, %scalar.ph3213.preheader ] ; 2 uses
  %.0754907.i = phi i32 [ %i.ldn, %scalar.ph3213 ], [ %.0754907.i.ph, %scalar.ph3213.preheader ]
  %i.kzl = getelementptr inbounds nuw [4 x i8], ptr %i.jet, i64 %indvars.iv1043.i
  %i.kzm = load float, ptr %i.kzl, align 4, !tbaa !12, !noalias !499 ; 2 uses
  %i.kzn = getelementptr inbounds nuw [4 x i8], ptr %i.jet, i64 %indvars.iv1039.i
  %indvars.iv.next1040.i = add nuw nsw i64 %indvars.iv1039.i, 1
  %i.kzo = getelementptr inbounds nuw [4 x i8], ptr %i.jet, i64 %indvars.iv1035.i
  %indvars.iv.next1036.i = add nuw nsw i64 %indvars.iv1035.i, 1
  %i.kzp = load <2 x float>, ptr %i.kzn, align 4, !tbaa !12, !noalias !499
  %i.kzq = load <2 x float>, ptr %i.kzo, align 4, !tbaa !12, !noalias !499
  %i.kzr = shufflevector <2 x float> %i.kzq, <2 x float> %i.kzp, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.kzs = call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.kzr)
  %i.kzt = fmul reassoc nsz arcp contract afn float %i.kzs, 2.500000e-01 ; 2 uses
  %i.kzu = fsub reassoc nsz arcp contract afn float 5.000000e-01, %i.kzm
  %i.kzv = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.kzu)
  %i.kzw = fsub reassoc nsz arcp contract afn float 5.000000e-01, %i.kzt
  %i.kzx = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.kzw)
  %i.kzy = fcmp reassoc nsz arcp contract afn olt float %i.kzv, %i.kzx
  %i.kzz = select reassoc nsz arcp contract afn i1 %i.kzy, float %i.kzt, float %i.kzm ; 3 uses
  %i.laa = add nsw i64 %indvars.iv1045.i, -113    ; 2 uses
  %i.lab = getelementptr inbounds [4 x i8], ptr %i.kty, i64 %i.laa
  %i.lac = load float, ptr %i.lab, align 4, !tbaa !12, !noalias !499 ; 3 uses
  %i.lad = add nuw nsw i64 %indvars.iv1045.i, 113 ; 2 uses
  %i.lae = getelementptr inbounds nuw [4 x i8], ptr %i.kty, i64 %i.lad
  %i.laf = load float, ptr %i.lae, align 4, !tbaa !12, !noalias !499 ; 3 uses
  %i.lag = fsub reassoc nsz arcp contract afn float %i.lac, %i.laf
  %i.lah = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.lag)
  %i.lai = fadd reassoc nsz arcp contract afn float %i.lah, f0x3727C5AC ; 2 uses
  %i.laj = getelementptr [4 x i8], ptr %i.kty, i64 %indvars.iv1045.i ; 5 uses
  %i.lak = getelementptr i8, ptr %i.laj, i64 -1356
  %i.lal = load float, ptr %i.lak, align 4, !tbaa !12, !noalias !499
  %i.lam = fsub reassoc nsz arcp contract afn float %i.lac, %i.lal
  %i.lan = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.lam)
  %i.lao = fadd reassoc nsz arcp contract afn float %i.lai, %i.lan
  %i.lap = getelementptr inbounds nuw [4 x i8], ptr %i.jff, i64 %indvars.iv1045.i ; 5 uses
  %i.laq = load float, ptr %i.lap, align 4, !tbaa !12, !noalias !499 ; 5 uses
  %i.lar = getelementptr i8, ptr %i.lap, i64 -904
  %i.las = load float, ptr %i.lar, align 4, !tbaa !12, !noalias !499
  %i.lat = fsub reassoc nsz arcp contract afn float %i.laq, %i.las
  %i.lau = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.lat)
  %i.lav = fadd reassoc nsz arcp contract afn float %i.lao, %i.lau ; 2 uses
  %i.law = add nsw i64 %indvars.iv1045.i, -111    ; 2 uses
  %i.lax = getelementptr inbounds [4 x i8], ptr %i.kty, i64 %i.law
  %i.lay = load float, ptr %i.lax, align 4, !tbaa !12, !noalias !499 ; 3 uses
  %i.laz = add nuw nsw i64 %indvars.iv1045.i, 111 ; 2 uses
  %i.lba = getelementptr inbounds nuw [4 x i8], ptr %i.kty, i64 %i.laz
  %i.lbb = load float, ptr %i.lba, align 4, !tbaa !12, !noalias !499 ; 3 uses
  %i.lbc = fsub reassoc nsz arcp contract afn float %i.lay, %i.lbb
  %i.lbd = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.lbc)
  %i.lbe = fadd reassoc nsz arcp contract afn float %i.lbd, f0x3727C5AC ; 2 uses
  %i.lbf = getelementptr i8, ptr %i.laj, i64 -1332
  %i.lbg = load float, ptr %i.lbf, align 4, !tbaa !12, !noalias !499
  %i.lbh = fsub reassoc nsz arcp contract afn float %i.lay, %i.lbg
  %i.lbi = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.lbh)
  %i.lbj = fadd reassoc nsz arcp contract afn float %i.lbe, %i.lbi
  %i.lbk = getelementptr i8, ptr %i.lap, i64 -888
  %i.lbl = load float, ptr %i.lbk, align 4, !tbaa !12, !noalias !499
  %i.lbm = fsub reassoc nsz arcp contract afn float %i.laq, %i.lbl
  %i.lbn = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.lbm)
  %i.lbo = fadd reassoc nsz arcp contract afn float %i.lbj, %i.lbn ; 2 uses
  %i.lbp = getelementptr inbounds nuw i8, ptr %i.laj, i64 1332
  %i.lbq = load float, ptr %i.lbp, align 4, !tbaa !12, !noalias !499
  %i.lbr = fsub reassoc nsz arcp contract afn float %i.lbb, %i.lbq
  %i.lbs = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.lbr)
  %i.lbt = fadd reassoc nsz arcp contract afn float %i.lbs, %i.lbe
  %i.lbu = getelementptr inbounds nuw i8, ptr %i.lap, i64 888
  %i.lbv = load float, ptr %i.lbu, align 4, !tbaa !12, !noalias !499
  %i.lbw = fsub reassoc nsz arcp contract afn float %i.laq, %i.lbv
  %i.lbx = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.lbw)
  %i.lby = fadd reassoc nsz arcp contract afn float %i.lbt, %i.lbx ; 2 uses
  %i.lbz = getelementptr inbounds nuw i8, ptr %i.laj, i64 1356
  %i.lca = load float, ptr %i.lbz, align 4, !tbaa !12, !noalias !499
  %i.lcb = fsub reassoc nsz arcp contract afn float %i.laf, %i.lca
  %i.lcc = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.lcb)
  %i.lcd = fadd reassoc nsz arcp contract afn float %i.lcc, %i.lai
  %i.lce = getelementptr inbounds nuw i8, ptr %i.lap, i64 904
  %i.lcf = load float, ptr %i.lce, align 4, !tbaa !12, !noalias !499
  %i.lcg = fsub reassoc nsz arcp contract afn float %i.laq, %i.lcf
  %i.lch = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.lcg)
  %i.lci = fadd reassoc nsz arcp contract afn float %i.lcd, %i.lch ; 2 uses
  %i.lcj = getelementptr inbounds [4 x i8], ptr %i.jff, i64 %i.laa
  %i.lck = load float, ptr %i.lcj, align 4, !tbaa !12, !noalias !499
  %i.lcl = fsub reassoc nsz arcp contract afn float %i.lac, %i.lck
  %i.lcm = getelementptr inbounds [4 x i8], ptr %i.jff, i64 %i.law
  %i.lcn = load float, ptr %i.lcm, align 4, !tbaa !12, !noalias !499
  %i.lco = fsub reassoc nsz arcp contract afn float %i.lay, %i.lcn
  %i.lcp = getelementptr inbounds nuw [4 x i8], ptr %i.jff, i64 %i.laz
  %i.lcq = load float, ptr %i.lcp, align 4, !tbaa !12, !noalias !499
  %i.lcr = fsub reassoc nsz arcp contract afn float %i.lbb, %i.lcq
  %i.lcs = getelementptr inbounds nuw [4 x i8], ptr %i.jff, i64 %i.lad
  %i.lct = load float, ptr %i.lcs, align 4, !tbaa !12, !noalias !499
  %i.lcu = fsub reassoc nsz arcp contract afn float %i.laf, %i.lct
  %i.lcv = fmul reassoc nsz arcp contract afn float %i.lcu, %i.lav
  %i.lcw = fmul reassoc nsz arcp contract afn float %i.lci, %i.lcl
  %i.lcx = fadd reassoc nsz arcp contract afn float %i.lcv, %i.lcw
  %i.lcy = fadd reassoc nsz arcp contract afn float %i.lci, %i.lav
  %i.lcz = fdiv reassoc nsz arcp contract afn float %i.lcx, %i.lcy ; 2 uses
  %i.lda = fmul reassoc nsz arcp contract afn float %i.lcr, %i.lbo
  %i.ldb = fmul reassoc nsz arcp contract afn float %i.lco, %i.lby
  %i.ldc = fadd reassoc nsz arcp contract afn float %i.lda, %i.ldb
  %i.ldd = fadd reassoc nsz arcp contract afn float %i.lby, %i.lbo
  %i.lde = fdiv reassoc nsz arcp contract afn float %i.ldc, %i.ldd
  %i.ldf = fcmp reassoc nsz arcp contract afn oge float %i.kzz, 0.000000e+00
  %i.ldg = fcmp reassoc nsz arcp contract afn ole float %i.kzz, 1.000000e+00
  %i.ldh = select reassoc nsz arcp contract afn i1 %i.ldg, float %i.kzz, float 1.000000e+00
  %i.ldi = select reassoc nsz arcp contract afn i1 %i.ldf, float %i.ldh, float 0.000000e+00
  %i.ldj = fsub reassoc nsz arcp contract afn float %i.lde, %i.lcz
  %i.ldk = fmul reassoc nsz arcp contract afn float %i.ldj, %i.ldi
  %i.ldl = fadd reassoc nsz arcp contract afn float %i.lcz, %i.ldk
  %i.ldm = fadd reassoc nsz arcp contract afn float %i.ldl, %i.laq
  store float %i.ldm, ptr %i.laj, align 4, !tbaa !12, !noalias !499
  %i.ldn = add nuw nsw i32 %.0754907.i, 2         ; 2 uses
  %indvars.iv.next1046.i = add nuw nsw i64 %indvars.iv1045.i, 2
  %indvars.iv.next1044.i = add nuw nsw i64 %indvars.iv1043.i, 1
  %i.ldo = icmp slt i32 %i.ldn, %i.kko
  br i1 %i.ldo, label %scalar.ph3213, label %._crit_edge914.i, !llvm.loop !322

._crit_edge925.i:                                 ; preds = %._crit_edge922.i, %.preheader829.i, %.preheader830.i, %.preheader832.i
  %i.ldp = icmp eq i32 %.0745937.i, 0
  %i.ldq = select i1 %i.ldp, i32 9, i32 10        ; 4 uses
  %i.ldr = add nuw nsw i32 %i.ldq, %i.jhb         ; 3 uses
  %i.lds = icmp eq i32 %.0745937.i, %i.aos        ; 2 uses
  %.neg793.i = select i1 %i.lds, i32 -9, i32 -10  ; 2 uses
  %i.ldt = add nsw i32 %i.jhd, %.neg793.i         ; 2 uses
  %i.ldu = icmp slt i32 %i.ldr, %i.ldt
  %or.cond944.i = select i1 %i.jgc, i1 %i.ldu, i1 false
  br i1 %or.cond944.i, label %.lr.ph930.preheader.i, label %._crit_edge935.split.i

.lr.ph930.preheader.i:                            ; preds = %._crit_edge925.i
  %i.ldv = add i32 %i.ldq, %indvars.iv1058.i
  %i.ldw = shl i32 %i.ldv, 2
  %i.ldx = or disjoint i32 %i.ldq, %i.jgg
  %i.ldy = add i32 %.neg793.i, %i.jhd
  %i.ldz = add i32 %i.ldy, %i.jgw
  %i.lea = sub i32 %i.ldz, %i.ldq                 ; 2 uses
  %i.leb = zext i32 %i.lea to i64
  %i.lec = add nuw nsw i64 %i.leb, 1              ; 2 uses
  %min.iters.check2945 = icmp ult i32 %i.lea, 7
  %n.vec2947 = and i64 %i.lec, 8589934584         ; 5 uses
  %i.led = shl nuw nsw i64 %n.vec2947, 2
  %i.lee = trunc i64 %n.vec2947 to i32
  %i.lef = add i32 %i.ldr, %i.lee
  %cmp.n2958 = icmp eq i64 %i.lec, %n.vec2947
  br label %.lr.ph930.i

.preheader.i543:                                  ; preds = %.preheader.i543.preheader, %._crit_edge922.i
  %indvars.iv1051.i = phi i32 [ %indvars.iv.next1052.i, %._crit_edge922.i ], [ 452, %.preheader.i543.preheader ] ; 3 uses
  %.0744923.i = phi i32 [ %i.lks, %._crit_edge922.i ], [ 4, %.preheader.i543.preheader ] ; 2 uses
  %i.leg = shl i32 %.0744923.i, 2
  %i.leh = and i32 %i.leg, 28
  %i.lei = or disjoint i32 %i.leh, 2
  %i.lej = lshr i32 %.fr1070, %i.lei
  %i.lek = and i32 %i.lej, 1                      ; 5 uses
  %i.lel = or disjoint i32 %i.lek, 4              ; 4 uses
  %i.lem = icmp slt i32 %i.lel, %i.kko
  br i1 %i.lem, label %.lr.ph921.preheader.i, label %._crit_edge922.i

.lr.ph921.preheader.i:                            ; preds = %.preheader.i543
  %i.len = or disjoint i32 %i.lek, %indvars.iv1051.i
  %i.leo = sext i32 %i.len to i64                 ; 5 uses
  %i.lep = sub i32 %i.kzk, %i.lek                 ; 2 uses
  %i.leq = lshr i32 %i.lep, 1
  %narrow4575 = add nuw i32 %i.leq, 1
  %i.ler = zext i32 %narrow4575 to i64            ; 2 uses
  %min.iters.check2975 = icmp ult i32 %i.lep, 16
  br i1 %min.iters.check2975, label %.lr.ph921.i.preheader, label %vector.memcheck2962

.lr.ph921.i.preheader:                            ; preds = %vector.body2981, %vector.memcheck2962, %.lr.ph921.preheader.i
  %indvars.iv1053.i.ph = phi i64 [ %i.leo, %vector.memcheck2962 ], [ %i.leo, %.lr.ph921.preheader.i ], [ %i.lfe, %vector.body2981 ]
  %.0743918.i.ph = phi i32 [ %i.lel, %vector.memcheck2962 ], [ %i.lel, %.lr.ph921.preheader.i ], [ %i.lfh, %vector.body2981 ]
  br label %.lr.ph921.i

vector.memcheck2962:                              ; preds = %.lr.ph921.preheader.i
  %i.les = or disjoint i32 %indvars.iv1051.i, %i.lek
  %i.let = sext i32 %i.les to i64
  %i.leu = shl nsw i64 %i.let, 2                  ; 3 uses
  %scevgep2964 = getelementptr i8, ptr %scevgep2963.a, i64 %i.leu
  %i.lev = sub i32 %i.kzj, %i.lek
  %i.lew = lshr i32 %i.lev, 1
  %i.lex = zext nneg i32 %i.lew to i64
  %i.ley = shl nuw nsw i64 %i.lex, 3
  %i.lez = add nsw i64 %i.ley, %i.leu             ; 2 uses
  %scevgep2966 = getelementptr i8, ptr %scevgep2965.a, i64 %i.lez
  %scevgep2968 = getelementptr i8, ptr %scevgep2967.a, i64 %i.leu
  %scevgep2970 = getelementptr i8, ptr %scevgep2969.a, i64 %i.lez
  %bound02971 = icmp ult ptr %scevgep2964, %scevgep2970
  %bound12972 = icmp ult ptr %scevgep2968, %scevgep2966
  %found.conflict2973 = and i1 %bound02971, %bound12972
  br i1 %found.conflict2973, label %.lr.ph921.i.preheader, label %vector.ph2976

vector.ph2976:                                    ; preds = %vector.memcheck2962
  %i.lfa = and i64 %i.ler, 7                      ; 2 uses
  %i.lfb = icmp eq i64 %i.lfa, 0
  %i.lfc = select i1 %i.lfb, i64 8, i64 %i.lfa
  %n.vec2977 = sub nsw i64 %i.ler, %i.lfc         ; 3 uses
  %i.lfd = shl nsw i64 %n.vec2977, 1
  %i.lfe = add nsw i64 %i.lfd, %i.leo
  %i.lff = trunc i64 %n.vec2977 to i32
  %i.lfg = shl i32 %i.lff, 1
  %i.lfh = add i32 %i.lel, %i.lfg
  %broadcast.splatinsert2978 = insertelement <8 x i64> poison, i64 %i.leo, i64 0
  %broadcast.splat2979 = shufflevector <8 x i64> %broadcast.splatinsert2978, <8 x i64> poison, <8 x i32> zeroinitializer
  %induction2980 = add nuw nsw <8 x i64> %broadcast.splat2979, <i64 0, i64 2, i64 4, i64 6, i64 8, i64 10, i64 12, i64 14>
  br label %vector.body2981

vector.body2981:                                  ; preds = %vector.body2981, %vector.ph2976
  %index2982 = phi i64 [ 0, %vector.ph2976 ], [ %index.next3044, %vector.body2981 ] ; 2 uses
  %vec.ind2983 = phi <8 x i64> [ %induction2980, %vector.ph2976 ], [ %vec.ind.next3045, %vector.body2981 ] ; 3 uses
  %i.lfi = shl nuw i64 %index2982, 1
  %i.lfj = add nuw i64 %i.lfi, %i.leo             ; 7 uses
  %i.lfk = getelementptr inbounds nuw [4 x i8], ptr %i.jes, i64 %i.lfj ; 5 uses
  %wide.vec2984 = load <16 x float>, ptr %i.lfk, align 4, !tbaa !12, !alias.scope !546, !noalias !499
  %strided.vec2985 = shufflevector <16 x float> %wide.vec2984, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 2 uses
  %i.lfl = add nsw i64 %i.lfj, -112               ; 3 uses
  %i.lfm = getelementptr i8, ptr %i.lfk, i64 -452
  %wide.vec2986 = load <16 x float>, ptr %i.lfm, align 4, !tbaa !12, !alias.scope !546, !noalias !499
  %strided.vec2987 = shufflevector <16 x float> %wide.vec2986, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.lfn = getelementptr i8, ptr %i.lfk, i64 -444
  %wide.vec2988 = load <16 x float>, ptr %i.lfn, align 4, !tbaa !12, !alias.scope !546, !noalias !499
  %strided.vec2989 = shufflevector <16 x float> %wide.vec2988, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.lfo = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec2989, %strided.vec2987
  %i.lfp = add nuw nsw i64 %i.lfj, 112            ; 3 uses
  %i.lfq = getelementptr inbounds nuw i8, ptr %i.lfk, i64 444
  %wide.vec2990 = load <16 x float>, ptr %i.lfq, align 4, !tbaa !12, !alias.scope !546, !noalias !499
  %strided.vec2991 = shufflevector <16 x float> %wide.vec2990, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.lfr = fadd reassoc nsz arcp contract afn <8 x float> %i.lfo, %strided.vec2991
  %i.lfs = getelementptr inbounds nuw i8, ptr %i.lfk, i64 452
  %wide.vec2992 = load <16 x float>, ptr %i.lfs, align 4, !tbaa !12, !alias.scope !546, !noalias !499
  %strided.vec2993 = shufflevector <16 x float> %wide.vec2992, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.lft = fadd reassoc nsz arcp contract afn <8 x float> %i.lfr, %strided.vec2993
  %i.lfu = fmul reassoc nsz arcp contract afn <8 x float> %i.lft, splat (float 2.500000e-01) ; 2 uses
  %i.lfv = fsub reassoc nsz arcp contract afn <8 x float> splat (float 5.000000e-01), %strided.vec2985
  %i.lfw = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.lfv)
  %i.lfx = fsub reassoc nsz arcp contract afn <8 x float> splat (float 5.000000e-01), %i.lfu
  %i.lfy = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.lfx)
  %i.lfz = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.lfw, %i.lfy
  %i.lga = select reassoc nsz arcp contract afn <8 x i1> %i.lfz, <8 x float> %i.lfu, <8 x float> %strided.vec2985 ; 3 uses
  %i.lgb = getelementptr inbounds nuw [4 x i8], ptr %i.jff, i64 %i.lfj ; 4 uses
  %wide.vec2994 = load <16 x float>, ptr %i.lgb, align 4, !tbaa !12, !alias.scope !547, !noalias !499
  %strided.vec2995 = shufflevector <16 x float> %wide.vec2994, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 6 uses
  %i.lgc = getelementptr i8, ptr %i.lgb, i64 -896
  %wide.vec2996 = load <16 x float>, ptr %i.lgc, align 4, !tbaa !12, !alias.scope !547, !noalias !499
  %strided.vec2997 = shufflevector <16 x float> %wide.vec2996, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.lgd = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec2995, %strided.vec2997
  %i.lge = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.lgd)
  %i.lgf = fadd reassoc nsz arcp contract afn <8 x float> %i.lge, splat (float f0x3727C5AC) ; 2 uses
  %i.lgg = getelementptr inbounds nuw i8, ptr %i.lgb, i64 896
  %wide.vec2998 = load <16 x float>, ptr %i.lgg, align 4, !tbaa !12, !alias.scope !547, !noalias !499
  %strided.vec2999 = shufflevector <16 x float> %wide.vec2998, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.lgh = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec2995, %strided.vec2999
  %i.lgi = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.lgh)
  %i.lgj = fadd reassoc nsz arcp contract afn <8 x float> %i.lgi, splat (float f0x3727C5AC) ; 2 uses
  %i.lgk = getelementptr i8, ptr %i.lgb, i64 -8
  %wide.vec3000 = load <16 x float>, ptr %i.lgk, align 4, !tbaa !12, !alias.scope !547, !noalias !499 ; 2 uses
  %strided.vec3001.a = shufflevector <16 x float> %wide.vec3000, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec3002 = shufflevector <16 x float> %wide.vec3000, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15> ; 2 uses
  %i.lgl = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec2995, %strided.vec3001.a
  %i.lgm = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.lgl)
  %i.lgn = fadd reassoc nsz arcp contract afn <8 x float> %i.lgm, splat (float f0x3727C5AC) ; 2 uses
  %i.lgo = getelementptr inbounds nuw [4 x i8], ptr %i.jff, i64 %i.lfj
  %i.lgp = getelementptr inbounds nuw i8, ptr %i.lgo, i64 4
  %wide.vec3003 = load <16 x float>, ptr %i.lgp, align 4, !tbaa !12, !alias.scope !547, !noalias !499 ; 2 uses
  %strided.vec3004.a = shufflevector <16 x float> %wide.vec3003, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 2 uses
  %strided.vec3005 = shufflevector <16 x float> %wide.vec3003, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.lgq = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec2995, %strided.vec3005
  %i.lgr = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.lgq)
  %i.lgs = fadd reassoc nsz arcp contract afn <8 x float> %i.lgr, splat (float f0x3727C5AC) ; 2 uses
  %i.lgt = getelementptr inbounds [4 x i8], ptr %i.jff, i64 %i.lfl
  %wide.vec3006 = load <16 x float>, ptr %i.lgt, align 4, !tbaa !12, !alias.scope !547, !noalias !499
  %strided.vec3007 = shufflevector <16 x float> %wide.vec3006, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 2 uses
  %i.lgu = getelementptr inbounds nuw [4 x i8], ptr %i.jff, i64 %i.lfp
  %wide.vec3008 = load <16 x float>, ptr %i.lgu, align 4, !tbaa !12, !alias.scope !547, !noalias !499
  %strided.vec3009 = shufflevector <16 x float> %wide.vec3008, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 2 uses
  %i.lgv = add nsw i64 %i.lfj, -1                 ; 2 uses
  %i.lgw = add nuw nsw i64 %i.lfj, 1              ; 2 uses
  %i.lgx = fcmp reassoc nsz arcp contract afn oge <8 x float> %i.lga, zeroinitializer
  %i.lgy = fcmp reassoc nsz arcp contract afn ole <8 x float> %i.lga, splat (float 1.000000e+00)
  %i.lgz = select reassoc nsz arcp contract afn <8 x i1> %i.lgy, <8 x float> %i.lga, <8 x float> splat (float 1.000000e+00)
  %i.lha = select reassoc nsz arcp contract afn <8 x i1> %i.lgx, <8 x float> %i.lgz, <8 x float> zeroinitializer ; 2 uses
  %i.lhb = getelementptr inbounds [4 x i8], ptr %i.jfd, i64 %i.lfl
  %wide.vec3010 = load <16 x float>, ptr %i.lhb, align 4, !tbaa !12, !alias.scope !547, !noalias !499
  %strided.vec3011 = shufflevector <16 x float> %wide.vec3010, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 3 uses
  %i.lhc = getelementptr inbounds nuw [4 x i8], ptr %i.jfd, i64 %i.lfp
  %wide.vec3012 = load <16 x float>, ptr %i.lhc, align 4, !tbaa !12, !alias.scope !547, !noalias !499
  %strided.vec3013 = shufflevector <16 x float> %wide.vec3012, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 3 uses
  %i.lhd = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3011, %strided.vec3013
  %i.lhe = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.lhd) ; 2 uses
  %i.lhf = getelementptr inbounds [4 x i8], ptr %i.jfd, i64 %i.lgv
  %wide.vec3014 = load <16 x float>, ptr %i.lhf, align 4, !tbaa !12, !alias.scope !547, !noalias !499
  %strided.vec3015 = shufflevector <16 x float> %wide.vec3014, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 3 uses
  %i.lhg = getelementptr inbounds nuw [4 x i8], ptr %i.jfd, i64 %i.lgw
  %wide.vec3016 = load <16 x float>, ptr %i.lhg, align 4, !tbaa !12, !alias.scope !547, !noalias !499
  %strided.vec3017 = shufflevector <16 x float> %wide.vec3016, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 3 uses
  %i.lhh = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3015, %strided.vec3017
  %i.lhi = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.lhh) ; 2 uses
  %i.lhj = fadd reassoc nsz arcp contract afn <8 x float> %i.lhe, %i.lgf
  %wide.gep3018 = getelementptr [4 x i8], ptr %i.jfd, <8 x i64> %vec.ind2983 ; 2 uses
  %i.lhk = extractelement <8 x ptr> %wide.gep3018, i64 0 ; 4 uses
  %i.lhl = getelementptr i8, ptr %i.lhk, i64 -1344
  %wide.vec3019 = load <16 x float>, ptr %i.lhl, align 4, !tbaa !12, !alias.scope !547, !noalias !499
  %strided.vec3020 = shufflevector <16 x float> %wide.vec3019, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.lhm = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3011, %strided.vec3020
  %i.lhn = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.lhm)
  %i.lho = fadd reassoc nsz arcp contract afn <8 x float> %i.lhj, %i.lhn ; 2 uses
  %i.lhp = fadd reassoc nsz arcp contract afn <8 x float> %i.lhe, %i.lgj
  %i.lhq = getelementptr inbounds nuw i8, ptr %i.lhk, i64 1344
  %wide.vec3021 = load <16 x float>, ptr %i.lhq, align 4, !tbaa !12, !alias.scope !547, !noalias !499
  %strided.vec3022 = shufflevector <16 x float> %wide.vec3021, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.lhr = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3013, %strided.vec3022
  %i.lhs = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.lhr)
  %i.lht = fadd reassoc nsz arcp contract afn <8 x float> %i.lhp, %i.lhs ; 2 uses
  %i.lhu = fadd reassoc nsz arcp contract afn <8 x float> %i.lhi, %i.lgn
  %i.lhv = getelementptr i8, ptr %i.lhk, i64 -12
  %wide.vec3023 = load <16 x float>, ptr %i.lhv, align 4, !tbaa !12, !alias.scope !547, !noalias !499
  %strided.vec3024 = shufflevector <16 x float> %wide.vec3023, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.lhw = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3015, %strided.vec3024
  %i.lhx = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.lhw)
  %i.lhy = fadd reassoc nsz arcp contract afn <8 x float> %i.lhu, %i.lhx ; 2 uses
  %i.lhz = fadd reassoc nsz arcp contract afn <8 x float> %i.lhi, %i.lgs
  %i.lia = getelementptr inbounds nuw i8, ptr %i.lhk, i64 12
  %wide.vec3025 = load <16 x float>, ptr %i.lia, align 4, !tbaa !12, !alias.scope !547, !noalias !499
  %strided.vec3026 = shufflevector <16 x float> %wide.vec3025, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.lib = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3017, %strided.vec3026
  %i.lic = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.lib)
  %i.lid = fadd reassoc nsz arcp contract afn <8 x float> %i.lhz, %i.lic ; 2 uses
  %i.lie = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3011, %strided.vec3007
  %i.lif = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3013, %strided.vec3009
  %i.lig = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3015, %strided.vec3002
  %i.lih = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3017, %strided.vec3004.a
  %i.lii = fmul reassoc nsz arcp contract afn <8 x float> %i.lho, %i.lif
  %i.lij = fmul reassoc nsz arcp contract afn <8 x float> %i.lht, %i.lie
  %i.lik = fadd reassoc nsz arcp contract afn <8 x float> %i.lij, %i.lii
  %i.lil = fadd reassoc nsz arcp contract afn <8 x float> %i.lht, %i.lho
  %i.lim = fdiv reassoc nsz arcp contract afn <8 x float> %i.lik, %i.lil ; 2 uses
end_hunk_8
begin_hunk_9_@process:bb.a
  %i.lkk = fadd reassoc nsz arcp contract afn <8 x float> %i.lki, %i.lkj
  %i.lkl = fadd reassoc nsz arcp contract afn <8 x float> %i.ljy, %i.ljt
  %i.lkm = fdiv reassoc nsz arcp contract afn <8 x float> %i.lkk, %i.lkl
  %i.lkn = fsub reassoc nsz arcp contract afn <8 x float> %i.lkm, %i.lkh
  %i.lko = fmul reassoc nsz arcp contract afn <8 x float> %i.lkn, %i.lha
  %i.lkp = fadd reassoc nsz arcp contract afn <8 x float> %i.lkh, %i.lko
  %i.lkq = fadd reassoc nsz arcp contract afn <8 x float> %i.lkp, %strided.vec2995
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.lkq, <8 x ptr> align 4 %wide.gep3035, <8 x i1> splat (i1 true)), !tbaa !12, !alias.scope !547, !noalias !548
  %index.next3044 = add nuw i64 %index2982, 8     ; 2 uses
  %vec.ind.next3045 = add nuw nsw <8 x i64> %vec.ind2983, splat (i64 16)
  %i.lkr = icmp eq i64 %index.next3044, %n.vec2977
  br i1 %i.lkr, label %.lr.ph921.i.preheader, label %vector.body2981, !llvm.loop !326

._crit_edge922.i:                                 ; preds = %.lr.ph921.i, %.preheader.i543
  %i.lks = add nuw nsw i32 %.0744923.i, 1         ; 2 uses
  %i.lkt = icmp slt i32 %i.lks, %i.jft
  %indvars.iv.next1052.i = add i32 %indvars.iv1051.i, 112
  br i1 %i.lkt, label %.preheader.i543, label %._crit_edge925.i

.lr.ph921.i:                                      ; preds = %.lr.ph921.i.preheader, %.lr.ph921.i
  %indvars.iv1053.i = phi i64 [ %indvars.iv.next1054.i, %.lr.ph921.i ], [ %indvars.iv1053.i.ph, %.lr.ph921.i.preheader ] ; 9 uses
  %.0743918.i = phi i32 [ %i.lrg, %.lr.ph921.i ], [ %.0743918.i.ph, %.lr.ph921.i.preheader ]
  %i.lku = getelementptr inbounds nuw [4 x i8], ptr %i.jes, i64 %indvars.iv1053.i ; 5 uses
  %i.lkv = load float, ptr %i.lku, align 4, !tbaa !12, !noalias !499 ; 2 uses
  %i.lkw = add nsw i64 %indvars.iv1053.i, -112    ; 3 uses
  %i.lkx = getelementptr i8, ptr %i.lku, i64 -452
  %i.lky = load float, ptr %i.lkx, align 4, !tbaa !12, !noalias !499
  %i.lkz = getelementptr i8, ptr %i.lku, i64 -444
  %i.lla = load float, ptr %i.lkz, align 4, !tbaa !12, !noalias !499
  %i.llb = fadd reassoc nsz arcp contract afn float %i.lla, %i.lky
  %i.llc = add nuw nsw i64 %indvars.iv1053.i, 112 ; 3 uses
  %i.lld = getelementptr inbounds nuw i8, ptr %i.lku, i64 444
  %i.lle = load float, ptr %i.lld, align 4, !tbaa !12, !noalias !499
  %i.llf = fadd reassoc nsz arcp contract afn float %i.llb, %i.lle
  %i.llg = getelementptr inbounds nuw i8, ptr %i.lku, i64 452
  %i.llh = load float, ptr %i.llg, align 4, !tbaa !12, !noalias !499
  %i.lli = fadd reassoc nsz arcp contract afn float %i.llf, %i.llh
  %i.llj = fmul reassoc nsz arcp contract afn float %i.lli, 2.500000e-01 ; 2 uses
  %i.llk = fsub reassoc nsz arcp contract afn float 5.000000e-01, %i.lkv
  %i.lll = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.llk)
  %i.llm = fsub reassoc nsz arcp contract afn float 5.000000e-01, %i.llj
  %i.lln = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.llm)
  %i.llo = fcmp reassoc nsz arcp contract afn olt float %i.lll, %i.lln
  %i.llp = select reassoc nsz arcp contract afn i1 %i.llo, float %i.llj, float %i.lkv ; 3 uses
  %i.llq = getelementptr inbounds nuw [4 x i8], ptr %i.jff, i64 %indvars.iv1053.i ; 4 uses
  %i.llr = load float, ptr %i.llq, align 4, !tbaa !12, !noalias !499 ; 6 uses
  %i.lls = getelementptr i8, ptr %i.llq, i64 -896
  %i.llt = load float, ptr %i.lls, align 4, !tbaa !12, !noalias !499
  %i.llu = fsub reassoc nsz arcp contract afn float %i.llr, %i.llt
  %i.llv = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.llu)
  %i.llw = fadd reassoc nsz arcp contract afn float %i.llv, f0x3727C5AC ; 2 uses
  %i.llx = getelementptr inbounds nuw i8, ptr %i.llq, i64 896
  %i.lly = load float, ptr %i.llx, align 4, !tbaa !12, !noalias !499
  %i.llz = fsub reassoc nsz arcp contract afn float %i.llr, %i.lly
  %i.lma = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.llz)
  %i.lmb = fadd reassoc nsz arcp contract afn float %i.lma, f0x3727C5AC ; 2 uses
  %i.lmc = getelementptr i8, ptr %i.llq, i64 -8
  %i.lmd = load float, ptr %i.lmc, align 4, !tbaa !12, !noalias !499
  %i.lme = fsub reassoc nsz arcp contract afn float %i.llr, %i.lmd
  %i.lmf = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.lme)
  %i.lmg = fadd reassoc nsz arcp contract afn float %i.lmf, f0x3727C5AC ; 2 uses
  %indvars.iv.next1054.i = add nuw nsw i64 %indvars.iv1053.i, 2 ; 2 uses
  %i.lmh = getelementptr inbounds nuw [4 x i8], ptr %i.jff, i64 %indvars.iv.next1054.i
  %i.lmi = load float, ptr %i.lmh, align 4, !tbaa !12, !noalias !499
  %i.lmj = fsub reassoc nsz arcp contract afn float %i.llr, %i.lmi
  %i.lmk = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.lmj)
  %i.lml = fadd reassoc nsz arcp contract afn float %i.lmk, f0x3727C5AC ; 2 uses
  %i.lmm = getelementptr inbounds [4 x i8], ptr %i.jff, i64 %i.lkw
  %i.lmn = load float, ptr %i.lmm, align 4, !tbaa !12, !noalias !499 ; 2 uses
  %i.lmo = getelementptr inbounds nuw [4 x i8], ptr %i.jff, i64 %i.llc
  %i.lmp = load float, ptr %i.lmo, align 4, !tbaa !12, !noalias !499 ; 2 uses
  %i.lmq = add nsw i64 %indvars.iv1053.i, -1      ; 3 uses
  %i.lmr = getelementptr inbounds [4 x i8], ptr %i.jff, i64 %i.lmq
  %i.lms = load float, ptr %i.lmr, align 4, !tbaa !12, !noalias !499 ; 2 uses
  %i.lmt = add nuw nsw i64 %indvars.iv1053.i, 1   ; 3 uses
  %i.lmu = getelementptr inbounds nuw [4 x i8], ptr %i.jff, i64 %i.lmt
  %i.lmv = load float, ptr %i.lmu, align 4, !tbaa !12, !noalias !499 ; 2 uses
  %i.lmw = fcmp reassoc nsz arcp contract afn oge float %i.llp, 0.000000e+00
  %i.lmx = fcmp reassoc nsz arcp contract afn ole float %i.llp, 1.000000e+00
  %i.lmy = select reassoc nsz arcp contract afn i1 %i.lmx, float %i.llp, float 1.000000e+00
  %i.lmz = select reassoc nsz arcp contract afn i1 %i.lmw, float %i.lmy, float 0.000000e+00 ; 2 uses
  %i.lna = getelementptr inbounds [4 x i8], ptr %i.jfd, i64 %i.lkw
  %i.lnb = load float, ptr %i.lna, align 4, !tbaa !12, !noalias !499 ; 3 uses
  %i.lnc = getelementptr inbounds nuw [4 x i8], ptr %i.jfd, i64 %i.llc
  %i.lnd = load float, ptr %i.lnc, align 4, !tbaa !12, !noalias !499 ; 3 uses
  %i.lne = fsub reassoc nsz arcp contract afn float %i.lnb, %i.lnd
  %i.lnf = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.lne) ; 2 uses
  %i.lng = getelementptr inbounds [4 x i8], ptr %i.jfd, i64 %i.lmq
  %i.lnh = load float, ptr %i.lng, align 4, !tbaa !12, !noalias !499 ; 3 uses
  %i.lni = getelementptr inbounds nuw [4 x i8], ptr %i.jfd, i64 %i.lmt
  %i.lnj = load float, ptr %i.lni, align 4, !tbaa !12, !noalias !499 ; 3 uses
  %i.lnk = fsub reassoc nsz arcp contract afn float %i.lnh, %i.lnj
  %i.lnl = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.lnk) ; 2 uses
  %i.lnm = fadd reassoc nsz arcp contract afn float %i.lnf, %i.llw
  %i.lnn = getelementptr [4 x i8], ptr %i.jfd, i64 %indvars.iv1053.i ; 5 uses
  %i.lno = getelementptr i8, ptr %i.lnn, i64 -1344
  %i.lnp = load float, ptr %i.lno, align 4, !tbaa !12, !noalias !499
  %i.lnq = fsub reassoc nsz arcp contract afn float %i.lnb, %i.lnp
  %i.lnr = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.lnq)
  %i.lns = fadd reassoc nsz arcp contract afn float %i.lnm, %i.lnr ; 2 uses
  %i.lnt = fadd reassoc nsz arcp contract afn float %i.lnf, %i.lmb
  %i.lnu = getelementptr inbounds nuw i8, ptr %i.lnn, i64 1344
  %i.lnv = load float, ptr %i.lnu, align 4, !tbaa !12, !noalias !499
  %i.lnw = fsub reassoc nsz arcp contract afn float %i.lnd, %i.lnv
  %i.lnx = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.lnw)
  %i.lny = fadd reassoc nsz arcp contract afn float %i.lnt, %i.lnx ; 2 uses
  %i.lnz = fadd reassoc nsz arcp contract afn float %i.lnl, %i.lmg
  %i.loa = getelementptr i8, ptr %i.lnn, i64 -12
  %i.lob = load float, ptr %i.loa, align 4, !tbaa !12, !noalias !499
  %i.loc = fsub reassoc nsz arcp contract afn float %i.lnh, %i.lob
  %i.lod = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.loc)
  %i.loe = fadd reassoc nsz arcp contract afn float %i.lnz, %i.lod ; 2 uses
  %i.lof = fadd reassoc nsz arcp contract afn float %i.lnl, %i.lml
  %i.log = getelementptr inbounds nuw i8, ptr %i.lnn, i64 12
  %i.loh = load float, ptr %i.log, align 4, !tbaa !12, !noalias !499
  %i.loi = fsub reassoc nsz arcp contract afn float %i.lnj, %i.loh
  %i.loj = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.loi)
  %i.lok = fadd reassoc nsz arcp contract afn float %i.lof, %i.loj ; 2 uses
  %i.lol = fsub reassoc nsz arcp contract afn float %i.lnb, %i.lmn
  %i.lom = fsub reassoc nsz arcp contract afn float %i.lnd, %i.lmp
  %i.lon = fsub reassoc nsz arcp contract afn float %i.lnh, %i.lms
  %i.loo = fsub reassoc nsz arcp contract afn float %i.lnj, %i.lmv
  %i.lop = fmul reassoc nsz arcp contract afn float %i.lns, %i.lom
  %i.loq = fmul reassoc nsz arcp contract afn float %i.lny, %i.lol
  %i.lor = fadd reassoc nsz arcp contract afn float %i.loq, %i.lop
  %i.los = fadd reassoc nsz arcp contract afn float %i.lny, %i.lns
  %i.lot = fdiv reassoc nsz arcp contract afn float %i.lor, %i.los ; 2 uses
  %i.lou = fmul reassoc nsz arcp contract afn float %i.lok, %i.lon
  %i.lov = fmul reassoc nsz arcp contract afn float %i.loe, %i.loo
  %i.low = fadd reassoc nsz arcp contract afn float %i.lou, %i.lov
  %i.lox = fadd reassoc nsz arcp contract afn float %i.lok, %i.loe
  %i.loy = fdiv reassoc nsz arcp contract afn float %i.low, %i.lox
  %i.loz = fsub reassoc nsz arcp contract afn float %i.loy, %i.lot
  %i.lpa = fmul reassoc nsz arcp contract afn float %i.loz, %i.lmz
  %i.lpb = fadd reassoc nsz arcp contract afn float %i.lot, %i.lpa
  %i.lpc = fadd reassoc nsz arcp contract afn float %i.lpb, %i.llr
  store float %i.lpc, ptr %i.lnn, align 4, !tbaa !12, !noalias !499
  %i.lpd = getelementptr inbounds [4 x i8], ptr %i.jfg, i64 %i.lkw
  %i.lpe = load float, ptr %i.lpd, align 4, !tbaa !12, !noalias !499 ; 3 uses
  %i.lpf = getelementptr inbounds nuw [4 x i8], ptr %i.jfg, i64 %i.llc
  %i.lpg = load float, ptr %i.lpf, align 4, !tbaa !12, !noalias !499 ; 3 uses
  %i.lph = fsub reassoc nsz arcp contract afn float %i.lpe, %i.lpg
  %i.lpi = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.lph) ; 2 uses
  %i.lpj = getelementptr inbounds [4 x i8], ptr %i.jfg, i64 %i.lmq
  %i.lpk = load float, ptr %i.lpj, align 4, !tbaa !12, !noalias !499 ; 3 uses
  %i.lpl = getelementptr inbounds nuw [4 x i8], ptr %i.jfg, i64 %i.lmt
  %i.lpm = load float, ptr %i.lpl, align 4, !tbaa !12, !noalias !499 ; 3 uses
  %i.lpn = fsub reassoc nsz arcp contract afn float %i.lpk, %i.lpm
  %i.lpo = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.lpn) ; 2 uses
  %i.lpp = fadd reassoc nsz arcp contract afn float %i.lpi, %i.llw
  %i.lpq = getelementptr [4 x i8], ptr %i.jfg, i64 %indvars.iv1053.i ; 5 uses
  %i.lpr = getelementptr i8, ptr %i.lpq, i64 -1344
  %i.lps = load float, ptr %i.lpr, align 4, !tbaa !12, !noalias !499
  %i.lpt = fsub reassoc nsz arcp contract afn float %i.lpe, %i.lps
  %i.lpu = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.lpt)
  %i.lpv = fadd reassoc nsz arcp contract afn float %i.lpp, %i.lpu ; 2 uses
  %i.lpw = fadd reassoc nsz arcp contract afn float %i.lpi, %i.lmb
  %i.lpx = getelementptr inbounds nuw i8, ptr %i.lpq, i64 1344
  %i.lpy = load float, ptr %i.lpx, align 4, !tbaa !12, !noalias !499
  %i.lpz = fsub reassoc nsz arcp contract afn float %i.lpg, %i.lpy
  %i.lqa = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.lpz)
  %i.lqb = fadd reassoc nsz arcp contract afn float %i.lpw, %i.lqa ; 2 uses
  %i.lqc = fadd reassoc nsz arcp contract afn float %i.lpo, %i.lmg
  %i.lqd = getelementptr i8, ptr %i.lpq, i64 -12
  %i.lqe = load float, ptr %i.lqd, align 4, !tbaa !12, !noalias !499
  %i.lqf = fsub reassoc nsz arcp contract afn float %i.lpk, %i.lqe
  %i.lqg = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.lqf)
  %i.lqh = fadd reassoc nsz arcp contract afn float %i.lqc, %i.lqg ; 2 uses
  %i.lqi = fadd reassoc nsz arcp contract afn float %i.lpo, %i.lml
  %i.lqj = getelementptr inbounds nuw i8, ptr %i.lpq, i64 12
  %i.lqk = load float, ptr %i.lqj, align 4, !tbaa !12, !noalias !499
  %i.lql = fsub reassoc nsz arcp contract afn float %i.lpm, %i.lqk
  %i.lqm = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.lql)
  %i.lqn = fadd reassoc nsz arcp contract afn float %i.lqi, %i.lqm ; 2 uses
  %i.lqo = fsub reassoc nsz arcp contract afn float %i.lpe, %i.lmn
  %i.lqp = fsub reassoc nsz arcp contract afn float %i.lpg, %i.lmp
  %i.lqq = fsub reassoc nsz arcp contract afn float %i.lpk, %i.lms
  %i.lqr = fsub reassoc nsz arcp contract afn float %i.lpm, %i.lmv
  %i.lqs = fmul reassoc nsz arcp contract afn float %i.lpv, %i.lqp
  %i.lqt = fmul reassoc nsz arcp contract afn float %i.lqb, %i.lqo
  %i.lqu = fadd reassoc nsz arcp contract afn float %i.lqt, %i.lqs
  %i.lqv = fadd reassoc nsz arcp contract afn float %i.lqb, %i.lpv
  %i.lqw = fdiv reassoc nsz arcp contract afn float %i.lqu, %i.lqv ; 2 uses
  %i.lqx = fmul reassoc nsz arcp contract afn float %i.lqn, %i.lqq
  %i.lqy = fmul reassoc nsz arcp contract afn float %i.lqh, %i.lqr
  %i.lqz = fadd reassoc nsz arcp contract afn float %i.lqx, %i.lqy
  %i.lra = fadd reassoc nsz arcp contract afn float %i.lqn, %i.lqh
  %i.lrb = fdiv reassoc nsz arcp contract afn float %i.lqz, %i.lra
  %i.lrc = fsub reassoc nsz arcp contract afn float %i.lrb, %i.lqw
  %i.lrd = fmul reassoc nsz arcp contract afn float %i.lrc, %i.lmz
  %i.lre = fadd reassoc nsz arcp contract afn float %i.lqw, %i.lrd
  %i.lrf = fadd reassoc nsz arcp contract afn float %i.lre, %i.llr
  store float %i.lrf, ptr %i.lpq, align 4, !tbaa !12, !noalias !499
  %i.lrg = add nuw nsw i32 %.0743918.i, 2         ; 2 uses
  %i.lrh = icmp slt i32 %i.lrg, %i.kko
  br i1 %i.lrh, label %.lr.ph921.i, label %._crit_edge922.i, !llvm.loop !327

._crit_edge935.split.i:                           ; preds = %._crit_edge931.i, %._crit_edge925.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #27, !noalias !501
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #27, !noalias !501
  %11 = add nuw i32 %.0745937.i, 1
  %i.lri = add i32 %indvars.iv949.i, 92
  %indvars.iv.next950.i = add i32 %.0745937.i.a, 92
  %indvars.iv.next1019.i = add i32 %indvars.iv949.i.a, -92
  %indvars.iv.next1059.i = add i32 %indvars.iv1058.i, 92
  br i1 %i.lds, label %._crit_edge939.i, label %bb.ob

.lr.ph930.i:                                      ; preds = %._crit_edge931.i, %.lr.ph930.preheader.i
  %indvars.iv1064.i = phi i32 [ %i.ldx, %.lr.ph930.preheader.i ], [ %indvars.iv.next1065.i, %._crit_edge931.i ] ; 2 uses
  %indvars.iv1060.i = phi i32 [ %i.ldw, %.lr.ph930.preheader.i ], [ %indvars.iv.next1061.i, %._crit_edge931.i ] ; 2 uses
  %.0739932.i = phi i32 [ %i.jfz, %.lr.ph930.preheader.i ], [ %i.lry, %._crit_edge931.i ]
  %i.lrj = sext i32 %indvars.iv1060.i to i64      ; 3 uses
  %i.lrk = zext i32 %indvars.iv1064.i to i64      ; 3 uses
  br i1 %min.iters.check2945, label %scalar.ph2944.preheader, label %vector.ph2946

vector.ph2946:                                    ; preds = %.lr.ph930.i
  %i.lrl = add nuw nsw i64 %n.vec2947, %i.lrk
  %i.lrm = add nsw i64 %i.led, %i.lrj
  %invariant.gep4869 = getelementptr [4 x i8], ptr %i.anw, i64 %i.lrj
  br label %vector.body2950

vector.body2950:                                  ; preds = %vector.body2950, %vector.ph2946
  %index2951 = phi i64 [ 0, %vector.ph2946 ], [ %index.next2956, %vector.body2950 ] ; 3 uses
  %i.lrn = add nuw i64 %index2951, %i.lrk         ; 3 uses
  %i.lro = getelementptr inbounds nuw [4 x i8], ptr %i.jfd, i64 %i.lrn
  %wide.load2952.a = load <8 x float>, ptr %i.lro, align 4, !tbaa !12, !noalias !499
  %.idx4576 = shl i64 %index2951, 4
  %gep4870 = getelementptr i8, ptr %invariant.gep4869, i64 %.idx4576
  %i.lrp = getelementptr inbounds nuw [4 x i8], ptr %i.jff, i64 %i.lrn
  %wide.load2953.a = load <8 x float>, ptr %i.lrp, align 4, !tbaa !12, !noalias !499
  %i.lrq = getelementptr inbounds nuw [4 x i8], ptr %i.jfg, i64 %i.lrn
  %wide.load2954 = load <8 x float>, ptr %i.lrq, align 4, !tbaa !12, !noalias !499
  %i.lrr = call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %wide.load2954, <8 x float> zeroinitializer)
  %i.lrs = fmul reassoc nsz arcp contract afn <8 x float> %i.lrr, %broadcast.splat2949
  %i.lrt = shufflevector <8 x float> %wide.load2952.a, <8 x float> %wide.load2953.a, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.lru = call reassoc nsz arcp contract afn <16 x float> @llvm.maxnum.v16f32(<16 x float> %i.lrt, <16 x float> zeroinitializer)
  %i.lrv = fmul reassoc nsz arcp contract afn <16 x float> %i.lru, %i.awh
  %i.lrw = shufflevector <8 x float> %i.lrs, <8 x float> zeroinitializer, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %interleaved.vec2955 = shufflevector <16 x float> %i.lrv, <16 x float> %i.lrw, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  store <32 x float> %interleaved.vec2955, ptr %gep4870, align 4, !tbaa !12, !alias.scope !499, !noalias !500
  %index.next2956 = add nuw i64 %index2951, 8     ; 2 uses
  %i.lrx = icmp eq i64 %index.next2956, %n.vec2947
  br i1 %i.lrx, label %middle.block2957, label %vector.body2950, !llvm.loop !328

middle.block2957:                                 ; preds = %vector.body2950
  br i1 %cmp.n2958, label %._crit_edge931.i, label %scalar.ph2944.preheader

scalar.ph2944.preheader:                          ; preds = %.lr.ph930.i, %middle.block2957
  %indvars.iv1066.i.ph = phi i64 [ %i.lrk, %.lr.ph930.i ], [ %i.lrl, %middle.block2957 ]
  %indvars.iv1062.i.ph = phi i64 [ %i.lrj, %.lr.ph930.i ], [ %i.lrm, %middle.block2957 ]
  %.0738926.i.ph = phi i32 [ %i.ldr, %.lr.ph930.i ], [ %i.lef, %middle.block2957 ]
  br label %scalar.ph2944

._crit_edge931.i:                                 ; preds = %scalar.ph2944, %middle.block2957
  %i.lry = add nuw nsw i32 %.0739932.i, 1         ; 2 uses
  %i.lrz = icmp slt i32 %i.lry, %i.jgb
  %indvars.iv.next1061.i = add i32 %indvars.iv1060.i, %i.aow
  %indvars.iv.next1065.i = add i32 %indvars.iv1064.i, 112
  br i1 %i.lrz, label %.lr.ph930.i, label %._crit_edge935.split.i

scalar.ph2944:                                    ; preds = %scalar.ph2944.preheader, %scalar.ph2944
  %indvars.iv1066.i = phi i64 [ %indvars.iv.next1067.i, %scalar.ph2944 ], [ %indvars.iv1066.i.ph, %scalar.ph2944.preheader ] ; 4 uses
  %indvars.iv1062.i = phi i64 [ %indvars.iv.next1063.i, %scalar.ph2944 ], [ %indvars.iv1062.i.ph, %scalar.ph2944.preheader ] ; 2 uses
  %.0738926.i = phi i32 [ %i.lso, %scalar.ph2944 ], [ %.0738926.i.ph, %scalar.ph2944.preheader ]
  %i.lsa = getelementptr inbounds nuw [4 x i8], ptr %i.jfd, i64 %indvars.iv1066.i
  %i.lsb = load float, ptr %i.lsa, align 4, !tbaa !12, !noalias !499
  %i.lsc = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.lsb, float 0.000000e+00)
  %i.lsd = getelementptr inbounds [4 x i8], ptr %i.anw, i64 %indvars.iv1062.i
  %i.lse = getelementptr inbounds nuw [4 x i8], ptr %i.jff, i64 %indvars.iv1066.i
  %i.lsf = load float, ptr %i.lse, align 4, !tbaa !12, !noalias !499
  %i.lsg = getelementptr inbounds nuw [4 x i8], ptr %i.jfg, i64 %indvars.iv1066.i
  %i.lsh = load float, ptr %i.lsg, align 4, !tbaa !12, !noalias !499
  %i.lsi = insertelement <4 x float> poison, float %i.lsf, i64 0
  %i.lsj = insertelement <4 x float> %i.lsi, float %i.lsh, i64 1
  %i.lsk = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.lsc, i64 0
  %i.lsl = call reassoc nsz arcp contract afn <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.lsj, <4 x float> <float 0.000000e+00, float 0.000000e+00, float poison, float poison>)
  %i.lsm = shufflevector <4 x float> %i.lsk, <4 x float> %i.lsl, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.lsn = fmul reassoc nsz arcp contract afn <4 x float> %i.lsm, %i.awj
  store <4 x float> %i.lsn, ptr %i.lsd, align 4, !tbaa !12, !alias.scope !499, !noalias !500
  %i.lso = add nuw nsw i32 %.0738926.i, 1         ; 2 uses
  %indvars.iv.next1063.i = add nsw i64 %indvars.iv1062.i, 4
  %indvars.iv.next1067.i = add nuw nsw i64 %indvars.iv1066.i, 1
  %i.lsp = icmp slt i32 %i.lso, %i.ldt
  br i1 %i.lsp, label %scalar.ph2944, label %._crit_edge931.i, !llvm.loop !329

bb.oh:                                            ; preds = %bb.nx
  %i.lsq = load i32, ptr %i.aog, align 4, !tbaa !139 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !549)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !550)
  tail call fastcc void @demosaic_ppg(ptr noundef nonnull %i.anw, ptr noundef %i.axo, i32 noundef %i.bo, i32 noundef %i.axe, i32 noundef range(i32 10, 9) %.fr1070, float noundef 0.000000e+00, i32 noundef 4)
  %i.lsr = icmp slt i32 %i.axe, 8
  %or.cond.i551 = or i1 %i.aoh, %i.lsr
  br i1 %or.cond.i551, label %demosaic_box3.exit, label %bb.oi

bb.oi:                                            ; preds = %bb.oh
  %i.lss = load ptr, ptr @lmmse_gamma_in, align 8, !tbaa !140, !noalias !551
  %.not.i552 = icmp eq ptr %i.lss, null
  br i1 %.not.i552, label %bb.oj, label %.preheader1027.preheader.i

bb.oj:                                            ; preds = %bb.oi
  %i.lst = tail call ptr @dt_alloc_aligned(i64 noundef 262144) #27, !noalias !549 ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.lst, i64 64) ]
  store ptr %i.lst, ptr @lmmse_gamma_in, align 8, !tbaa !140, !noalias !551
  %i.lsu = tail call ptr @dt_alloc_aligned(i64 noundef 262144) #27, !noalias !549 ; 5 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.lsu, i64 64) ]
  store ptr %i.lsu, ptr @lmmse_gamma_out, align 8, !tbaa !140, !noalias !551
  %i.lsv = load ptr, ptr @lmmse_gamma_in, align 8, !tbaa !140, !noalias !551 ; 3 uses
  %i.lsw = icmp ne ptr %i.lsv, null
  %i.lsx = icmp ne ptr %i.lsu, null
  %or.cond.i.i571 = select i1 %i.lsw, i1 %i.lsx, i1 false
  br i1 %or.cond.i.i571, label %.preheader.i.i572, label %bb.ok

bb.ok:                                            ; preds = %bb.oj
  tail call void @free(ptr noundef %i.lsv) #27, !noalias !549
  tail call void @free(ptr noundef %i.lsu) #27, !noalias !549
  store ptr null, ptr @lmmse_gamma_in, align 8, !tbaa !140, !noalias !551
  store ptr null, ptr @lmmse_gamma_out, align 8, !tbaa !140, !noalias !551
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.212) #27, !noalias !549
  br label %.preheader1027.preheader.i

.preheader.i.i572:                                ; preds = %bb.oj, %bb.oq
  %indvars.iv.i.i573 = phi i64 [ %indvars.iv.next.i.i574, %bb.oq ], [ 0, %bb.oj ] ; 4 uses
  %i.lsy = trunc nuw nsw i64 %indvars.iv.i.i573 to i32
  %i.lsz = uitofp nsz nneg i32 %i.lsy to double   ; 4 uses
  %i.lta = fmul reassoc nnan nsz arcp contract afn double %i.lsz, f0x3EF0001000100010 ; 3 uses
  %i.ltb = fcmp reassoc nsz arcp contract afn ugt double %i.lta, 1.867000e-03
  br i1 %i.ltb, label %bb.om, label %bb.ol

bb.ol:                                            ; preds = %.preheader.i.i572
  %i.ltc = fmul reassoc nnan nsz arcp contract afn double %i.lsz, f0x3F31001100110011
  br label %bb.on

bb.om:                                            ; preds = %.preheader.i.i572
  %i.ltd = tail call fast double @llvm.log.f64(double %i.lta)
  %i.lte = fmul reassoc nnan nsz arcp contract afn double %i.ltd, f0x3FDAAAAAAAAAAAAB
  %i.ltf = tail call reassoc nnan nsz arcp contract afn double @llvm.exp.f64(double %i.lte)
  %i.ltg = fmul reassoc nnan nsz arcp contract afn double %i.ltf, f0x3FF0B60BF5D78812
  %i.lth = fadd reassoc nsz arcp contract afn double %i.ltg, -4.444500e-02
  br label %bb.on

bb.on:                                            ; preds = %bb.om, %bb.ol
  %i.lti = phi reassoc nsz arcp contract afn double [ %i.ltc, %bb.ol ], [ %i.lth, %bb.om ]
  %i.ltj = fptrunc reassoc nsz arcp contract afn double %i.lti to float
  %i.ltk = getelementptr inbounds nuw [4 x i8], ptr %i.lsv, i64 %indvars.iv.i.i573
  store float %i.ltj, ptr %i.ltk, align 4, !tbaa !12, !noalias !549
  %i.ltl = fcmp reassoc nsz arcp contract afn ugt double %i.lta, 3.174600e-02
  br i1 %i.ltl, label %bb.op, label %bb.oo

bb.oo:                                            ; preds = %bb.on
  %i.ltm = fmul reassoc nnan nsz arcp contract afn double %i.lsz, f0x3EAE1E3C3C5A5A78
  br label %bb.oq

bb.op:                                            ; preds = %bb.on
  %i.ltn = fmul reassoc nnan nsz arcp contract afn double %i.lsz, f0x3EEEA3850F60F739
  %i.lto = fadd reassoc nnan nsz arcp contract afn double %i.ltn, f0x3FA5C99942418271
  %i.ltp = tail call reassoc nnan nsz arcp contract afn double @llvm.log.f64(double %i.lto)
  %i.ltq = fmul reassoc nnan nsz arcp contract afn double %i.ltp, 2.400000e+00
  %i.ltr = tail call reassoc nsz arcp contract afn double @llvm.exp.f64(double %i.ltq)
  br label %bb.oq

bb.oq:                                            ; preds = %bb.op, %bb.oo
  %i.lts = phi reassoc nsz arcp contract afn double [ %i.ltm, %bb.oo ], [ %i.ltr, %bb.op ]
  %i.ltt = fptrunc reassoc nsz arcp contract afn double %i.lts to float
  %i.ltu = getelementptr inbounds nuw [4 x i8], ptr %i.lsu, i64 %indvars.iv.i.i573
  store float %i.ltt, ptr %i.ltu, align 4, !tbaa !12, !noalias !549
  %indvars.iv.next.i.i574 = add nuw nsw i64 %indvars.iv.i.i573, 1 ; 2 uses
  %exitcond.not.i.i575 = icmp eq i64 %indvars.iv.next.i.i574, 65536
  br i1 %exitcond.not.i.i575, label %.preheader1027.preheader.i, label %.preheader.i.i572

.preheader1027.preheader.i:                       ; preds = %bb.oq, %bb.ok, %bb.oi
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27, !noalias !551
  %i.ltv = tail call ptr @dt_alloc_aligned(i64 noundef 443904) #27, !noalias !549 ; 31 uses
  %i.ltw = ptrtoaddr ptr %i.ltv to i64
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ltv, i64 64) ]
  store ptr %i.ltv, ptr %i.b, align 16, !tbaa !140, !noalias !551
  %i.ltx = getelementptr inbounds nuw i8, ptr %i.ltv, i64 73984 ; 14 uses
  store ptr %i.ltx, ptr %i.aoi, align 8, !tbaa !140, !noalias !551
  %i.lty = getelementptr inbounds nuw i8, ptr %i.ltv, i64 147968 ; 6 uses
  store ptr %i.lty, ptr %i.aoj, align 16, !tbaa !140, !noalias !551
  %i.ltz = getelementptr inbounds nuw i8, ptr %i.ltv, i64 221952 ; 5 uses
  store ptr %i.ltz, ptr %i.aok, align 8, !tbaa !140, !noalias !551
  %i.lua = getelementptr inbounds nuw i8, ptr %i.ltv, i64 295936 ; 5 uses
  store ptr %i.lua, ptr %i.aol, align 16, !tbaa !140, !noalias !551
  %i.lub = getelementptr inbounds nuw i8, ptr %i.ltv, i64 369920 ; 10 uses
  store ptr %i.lub, ptr %i.aom, align 8, !tbaa !140, !noalias !551
  %i.luc = icmp ult i32 %i.lsq, 2
  %i.lud = select i1 %i.luc, i32 %i.lsq, i32 3    ; 2 uses
  %i.lue = tail call i32 @llvm.usub.sat.i32(i32 %i.lsq, i32 2) ; 2 uses
  %i.luf = add nsw i32 %i.axe, -17
  %i.lug = sdiv i32 %i.luf, 112                   ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(443904) %i.ltv, i8 0, i64 443904, i1 false), !noalias !549
  %.not1191.i = icmp eq i32 %i.lud, 0
  %i.luh = icmp sgt i32 %i.lue, 0
  %i.lui = tail call i32 @llvm.smax.i32(i32 %i.lug, i32 0)
  %scevgep3944.a = getelementptr i8, ptr %i.ltv, i64 295400
  %scevgep4013 = getelementptr i8, ptr %i.ltv, i64 295400
  %i.luj = add i64 %i.ltw, 372112
  %i.luk = getelementptr inbounds nuw i8, ptr %i.axo, i64 128
  %i.lul = getelementptr inbounds nuw i8, ptr %i.axo, i64 256
  %i.lum = getelementptr inbounds nuw i8, ptr %i.axo, i64 384
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
  %.08821189.i = phi i32 [ %i.lwv, %._crit_edge1187.i ], [ 0, %.preheader1027.preheader.i ] ; 5 uses
  %smin1161 = call i32 @llvm.smin.i32(i32 %i.axe, i32 %indvars.iv) ; 5 uses
  %i.lun = add i32 %smin1161, %indvars.iv1112
  %i.luo = call i32 @llvm.smax.i32(i32 %i.lun, i32 5)
  %smax1153 = zext nneg i32 %i.luo to i64         ; 4 uses
  %i.lup = add i32 %smin1161, %indvars.iv1137
  %i.luq = call i32 @llvm.smax.i32(i32 %i.lup, i32 2)
  %smax1145 = zext nneg i32 %i.luq to i64         ; 3 uses
  %i.lur = add i32 %smin1161, %indvars.iv1132
  %i.lus = call i32 @llvm.smax.i32(i32 %i.lur, i32 1)
  %smax1134 = zext nneg i32 %i.lus to i64
  %i.lut = add i32 %smin1161, %indvars.iv1115
  %i.luu = call i32 @llvm.umax.i32(i32 %i.lut, i32 2)
  %umax = zext i32 %i.luu to i64
  %i.luv = mul nuw i32 %.08821189.i, 112          ; 4 uses
  %i.luw = add nuw nsw i32 %i.luv, 128
  %i.lux = tail call i32 @llvm.smin.i32(i32 %i.luw, i32 %i.axe) ; 2 uses
  %i.luy = sub nsw i32 %i.lux, %i.luv             ; 5 uses
  %i.luz = add nsw i32 %i.luy, 8
  %i.lva = icmp sgt i32 %i.luy, 0                 ; 3 uses
  %i.lvb = icmp sgt i32 %i.luy, -4
  %i.lvc = add i32 %i.luv, -4
  %i.lvd = icmp sgt i32 %i.luy, -8
  %i.lve = icmp slt i32 %i.luy, -5                ; 2 uses
  %i.lvf = icmp eq i32 %.08821189.i, 0            ; 2 uses
  %i.lvg = select i1 %i.lvf, i32 6, i32 0         ; 3 uses
  %i.lvh = icmp eq i32 %.08821189.i, %i.lug       ; 2 uses
  %.neg949.i = select i1 %i.lvh, i32 -6, i32 0    ; 2 uses
  %i.lvi = add nsw i32 %i.luz, %.neg949.i         ; 2 uses
  %i.lvj = add nsw i32 %i.lvi, -1
  %i.lvk = icmp slt i32 %i.lvg, %i.lvj
  %i.lvl = add nuw nsw i32 %i.lvg, 2
  %i.lvm = add nsw i32 %i.lvi, -2
  %i.lvn = icmp slt i32 %i.lvl, %i.lvm
  %i.lvo = select i1 %i.lvf, i32 4, i32 8         ; 3 uses
  %i.lvp = or disjoint i32 %i.lvo, %i.luv
  %.neg950.i = select i1 %i.lvh, i32 -4, i32 -8
  %i.lvq = add nsw i32 %i.lux, %.neg950.i         ; 2 uses
  %i.lvr = icmp slt i32 %i.lvp, %i.lvq
  %i.lvs = zext nneg i32 %i.lvg to i64            ; 5 uses
  %i.lvt = add nuw nsw i64 %i.lvs, 2              ; 3 uses
  %narrow.i = add nuw nsw i32 %i.lvo, 4
  %i.lvu = or disjoint i32 %i.lvo, %indvars.iv1309.i
  %i.lvv = zext i32 %i.lvu to i64
  %i.lvw = add i32 %.neg949.i, %smin1161          ; 2 uses
  %i.lvx = add i32 %i.lvw, %indvars.iv1137
  %i.lvy = sext i32 %i.lvx to i64                 ; 2 uses
  %i.lvz = add i32 %i.lvw, %indvars.iv1156
  %i.lwa = sext i32 %i.lvz to i64                 ; 3 uses
  %i.lwb = mul nuw nsw i64 %i.lvs, 544            ; 6 uses
  %i.lwc = mul nuw nsw i64 %i.lvs, 544            ; 8 uses
  %i.lwd = add nuw nsw i64 %i.lwc, 552
  %i.lwe = add nuw nsw i64 %i.lwc, 1644
  %i.lwf = mul nuw nsw i64 %i.lvs, 544            ; 5 uses
  %scevgep3942.a = getelementptr i8, ptr %i.ltv, i64 %i.lwf
  %i.lwg = mul nsw i64 %i.lvy, 544                ; 2 uses
  %scevgep3945.a = getelementptr i8, ptr %scevgep3944.a, i64 %i.lwg
  %i.lwh = or disjoint i64 %i.lwf, 8
  %i.lwi = or disjoint i64 %i.lwf, 4
  %scevgep4011 = getelementptr i8, ptr %i.ltv, i64 %i.lwf
  %scevgep4014 = getelementptr i8, ptr %scevgep4013, i64 %i.lwg
  %invariant.op = or disjoint i64 %i.lwf, 4
  %i.lwj = getelementptr i8, ptr %i.ltv, i64 %i.lwc
  %i.lwk = getelementptr i8, ptr %i.lwj, i64 74536
  %i.lwl = getelementptr i8, ptr %i.ltv, i64 %i.lwc
  %i.lwm = getelementptr i8, ptr %i.lwl, i64 75628
  %i.lwn = getelementptr i8, ptr %i.ltv, i64 %i.lwc
  %i.lwo = getelementptr i8, ptr %i.lwn, i64 73992
  %i.lwp = getelementptr i8, ptr %i.ltv, i64 %i.lwc
  %i.lwq = getelementptr i8, ptr %i.lwp, i64 76172
  %i.lwr = getelementptr i8, ptr %i.ltv, i64 %i.lwb
  %i.lws = getelementptr i8, ptr %i.lwr, i64 74536
  %i.lwt = getelementptr i8, ptr %i.ltv, i64 %i.lwb
  %i.lwu = getelementptr i8, ptr %i.lwt, i64 75628
  br label %bb.or

._crit_edge1190.split.i:                          ; preds = %._crit_edge1187.i
  tail call void @free(ptr noundef %i.ltv) #27, !noalias !549
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27, !noalias !551
  br label %demosaic_box3.exit

._crit_edge1187.i:                                ; preds = %._crit_edge1183.split.i
  %i.lwv = add nuw nsw i32 %.08821189.i, 1
  %indvars.iv.next.i560 = add i32 %indvars.iv.i555, %i.aop
  %indvars.iv.next1310.i = add nuw i32 %indvars.iv1309.i, 112
  %exitcond1318.i = icmp eq i32 %.08821189.i, %i.lui
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
  %.08871185.i = phi i32 [ %i.pnk, %._crit_edge1183.split.i ], [ 0, %.preheader1027.i ] ; 7 uses
  %smin4721 = call i32 @llvm.smin.i32(i32 %i.bo, i32 %indvars.iv1118)
  %i.lww = add i32 %smin4721, %indvars.iv1121
  %smin4722 = call i32 @llvm.smin.i32(i32 %i.lww, i32 128) ; 2 uses
  %i.lwx = add nsw i32 %smin4722, 3
  %i.lwy = zext i32 %i.lwx to i64
  %i.lwz = add nsw i64 %i.lwy, -3                 ; 2 uses
  %smin4712 = call i32 @llvm.smin.i32(i32 %i.bo, i32 %indvars.iv1118)
  %i.lxa = add i32 %smin4712, %indvars.iv1121
  %smin4704 = call i32 @llvm.smin.i32(i32 %i.lxa, i32 128)
  %i.lxb = add nsw i32 %smin4704, 7               ; 2 uses
  %i.lxc = mul nuw i32 %.08871185.i, 112
  %i.lxd = add i32 %i.lxc, 128
  %smin4696 = call i32 @llvm.smin.i32(i32 %i.bo, i32 %i.lxd)
  %i.lxe = mul i32 %.08871185.i, -112
  %i.lxf = add i32 %smin4696, %i.lxe
  %smin4420 = call i32 @llvm.smin.i32(i32 %i.bo, i32 %indvars.iv1118)
  %i.lxg = add i32 %smin4420, %indvars.iv1121
  %smin4421 = call i32 @llvm.smin.i32(i32 %i.lxg, i32 128)
  %i.lxh = add i32 %smin4421, -1                  ; 3 uses
  %i.lxi = zext i32 %i.lxh to i64
  %i.lxj = add nuw nsw i64 %i.lxi, 1              ; 5 uses
  %i.lxk = add i32 %indvars.iv1121, -1
  %i.lxl = add i32 %indvars.iv1121, -1
  %smin1149 = call i32 @llvm.smin.i32(i32 %i.bo, i32 %indvars.iv1118)
  %i.lxm = add i32 %smin1149, %indvars.iv1121
  %smin1150 = call i32 @llvm.smin.i32(i32 %i.lxm, i32 128)
  %i.lxn = add nsw i32 %smin1150, 3
  %i.lxo = zext i32 %i.lxn to i64                 ; 2 uses
  %i.lxp = mul nuw i32 %.08871185.i, 112          ; 5 uses
  %i.lxq = add nuw i32 %i.lxp, 128
  %i.lxr = tail call i32 @llvm.smin.i32(i32 %i.lxq, i32 %i.bo) ; 3 uses
  %i.lxs = sub i32 %i.lxr, %i.lxp                 ; 7 uses
  %i.lxt = tail call i32 @llvm.smin.i32(i32 %i.lxs, i32 128) ; 19 uses
  %i.lxu = add nsw i32 %i.lxt, 8                  ; 2 uses
  br i1 %i.lva, label %.lr.ph1038.i, label %.preheader1026.i

.lr.ph1038.i:                                     ; preds = %bb.or
  %i.lxv = add nsw i32 %i.lxt, 4                  ; 2 uses
  %i.lxw = icmp sgt i32 %i.lxs, 0
  %i.lxx = load ptr, ptr @lmmse_gamma_in, align 8, !noalias !551 ; 4 uses
  %i.lxy = icmp eq ptr %i.lxx, null
  br i1 %i.lxw, label %.lr.ph.i566.preheader, label %.lr.ph1049.i

.lr.ph.i566.preheader:                            ; preds = %.lr.ph1038.i
  %xtraiter4698 = and i32 %i.lxt, 1
  %i.lxz = icmp eq i32 %i.lxf, 1
  %unroll_iter4702 = and i32 %i.lxt, 254
  %lcmp.mod4700.not = icmp eq i32 %xtraiter4698, 0
  %lcmp.mod4701 = trunc i32 %i.lxt to i1
  %min.iters.check4423 = icmp ult i32 %i.lxh, 7
  %min.iters.check4425 = icmp ult i32 %i.lxh, 31
  %i.lya = and i64 %i.lxj, 24
  %n.vec4427 = and i64 %i.lxj, 8589934560         ; 8 uses
  %i.lyb = shl nuw nsw i64 %n.vec4427, 2
  %i.lyc = trunc i64 %n.vec4427 to i32
  %i.lyd = or disjoint i32 %i.lyc, 4
  %i.lye = icmp eq i64 %n.vec4427, 32
  %i.lyf = icmp eq i64 %n.vec4427, 64
  %i.lyg = icmp eq i64 %n.vec4427, 96
  %cmp.n4439 = icmp eq i64 %i.lxj, %n.vec4427
  %min.epilog.iters.check4447 = icmp eq i64 %i.lya, 0
  %n.vec4449 = and i64 %i.lxj, 8589934584         ; 5 uses
  %i.lyh = shl nuw nsw i64 %n.vec4449, 2
  %i.lyi = trunc i64 %n.vec4449 to i32
  %i.lyj = or disjoint i32 %i.lyi, 4
  %cmp.n4458 = icmp eq i64 %i.lxj, %n.vec4449
  br label %.lr.ph.i566

.preheader1026.i:                                 ; preds = %._crit_edge.i570, %bb.or
  br i1 %i.lvb, label %.preheader1026.i..lr.ph1049.i_crit_edge, label %._crit_edge1060.i

.preheader1026.i..lr.ph1049.i_crit_edge:          ; preds = %.preheader1026.i
  %.pre1268 = add nsw i32 %i.lxt, 4
  br label %.lr.ph1049.i

.lr.ph1049.i:                                     ; preds = %.preheader1026.i..lr.ph1049.i_crit_edge, %.lr.ph1038.i
  %.pre-phi1269 = phi i32 [ %.pre1268, %.preheader1026.i..lr.ph1049.i_crit_edge ], [ %i.lxv, %.lr.ph1038.i ] ; 2 uses
  %i.lyk = add nsw i32 %i.lxt, 6
  %i.lyl = sext i32 %i.lyk to i64                 ; 4 uses
  br label %bb.oy

.lr.ph.i566:                                      ; preds = %.lr.ph.i566.preheader, %._crit_edge.i570
  %indvar4417 = phi i64 [ %indvar.next4418, %._crit_edge.i570 ], [ 0, %.lr.ph.i566.preheader ] ; 2 uses
  %indvars.iv1222.i = phi i64 [ %indvars.iv.next1223.i, %._crit_edge.i570 ], [ 4, %.lr.ph.i566.preheader ] ; 2 uses
  %indvars.iv1214.i = phi i32 [ %indvars.iv.next1215.i, %._crit_edge.i570 ], [ %indvars.iv1212.i, %.lr.ph.i566.preheader ] ; 3 uses
  %i.lym = zext i32 %indvars.iv1214.i to i64      ; 10 uses
  %.idx.i567 = mul nuw nsw i64 %indvars.iv1222.i, 544
  %i.lyn = getelementptr inbounds nuw i8, ptr %i.lub, i64 %.idx.i567 ; 16 uses
  %i.lyo = getelementptr inbounds nuw i8, ptr %i.lyn, i64 16 ; 7 uses
  br i1 %i.lxy, label %iter.check4444, label %.lr.ph.split.i.preheader

.lr.ph.split.i.preheader:                         ; preds = %.lr.ph.i566
  br i1 %i.lxz, label %.lr.ph.split.i.epil.preheader, label %.lr.ph.split.i

iter.check4444:                                   ; preds = %.lr.ph.i566
  %i.lyp = zext i32 %indvars.iv1214.i to i64
  %i.lyq = add nsw i64 %i.axn, %i.lyp
  %i.lyr = shl nsw i64 %i.lyq, 2
  %i.lys = add i64 %i.lyr, %.13630
  %i.lyt = mul nuw nsw i64 %indvar4417, 544
  %i.lyu = add i64 %i.luj, %i.lyt
  %i.lyv = sub i64 %i.lys, %i.lyu
  %diff.check4419 = icmp ugt i64 %i.lyv, -128
  %or.cond4578 = select i1 %min.iters.check4423, i1 true, i1 %diff.check4419
  br i1 %or.cond4578, label %_calc_gamma.exit.us.i.preheader, label %vector.main.loop.iter.check4424

vector.main.loop.iter.check4424:                  ; preds = %iter.check4444
  br i1 %min.iters.check4425, label %vec.epilog.ph4448, label %vector.ph4426

vector.ph4426:                                    ; preds = %vector.main.loop.iter.check4424
  %i.lyw = add nuw nsw i64 %n.vec4427, %i.lym
  %i.lyx = getelementptr i8, ptr %i.lyo, i64 %i.lyb
  %i.lyy = getelementptr inbounds nuw [4 x i8], ptr %i.axo, i64 %i.lym ; 4 uses
  %i.lyz = getelementptr inbounds nuw i8, ptr %i.lyy, i64 32
  %i.lza = getelementptr inbounds nuw i8, ptr %i.lyy, i64 64
  %i.lzb = getelementptr inbounds nuw i8, ptr %i.lyy, i64 96
  %wide.load4433 = load <8 x float>, ptr %i.lyy, align 4, !tbaa !12, !alias.scope !550, !noalias !549
  %wide.load4434 = load <8 x float>, ptr %i.lyz, align 4, !tbaa !12, !alias.scope !550, !noalias !549
  %wide.load4435 = load <8 x float>, ptr %i.lza, align 4, !tbaa !12, !alias.scope !550, !noalias !549
  %wide.load4436 = load <8 x float>, ptr %i.lzb, align 4, !tbaa !12, !alias.scope !550, !noalias !549
  %i.lzc = fmul reassoc nsz arcp contract afn <8 x float> %wide.load4433, %broadcast.splat4429
  %i.lzd = fmul reassoc nsz arcp contract afn <8 x float> %wide.load4434, %broadcast.splat4429
  %i.lze = fmul reassoc nsz arcp contract afn <8 x float> %wide.load4435, %broadcast.splat4429
  %i.lzf = fmul reassoc nsz arcp contract afn <8 x float> %wide.load4436, %broadcast.splat4429
  %i.lzg = getelementptr i8, ptr %i.lyn, i64 48
  %i.lzh = getelementptr i8, ptr %i.lyn, i64 80
  %i.lzi = getelementptr i8, ptr %i.lyn, i64 112
  store <8 x float> %i.lzc, ptr %i.lyo, align 16, !tbaa !12, !noalias !549
  store <8 x float> %i.lzd, ptr %i.lzg, align 16, !tbaa !12, !noalias !549
  store <8 x float> %i.lze, ptr %i.lzh, align 16, !tbaa !12, !noalias !549
  store <8 x float> %i.lzf, ptr %i.lzi, align 16, !tbaa !12, !noalias !549
  br i1 %i.lye, label %middle.block4438, label %vector.body4430.1

vector.body4430.1:                                ; preds = %vector.ph4426
  %next.gep4432.1 = getelementptr i8, ptr %i.lyn, i64 144
  %i.lzj = getelementptr inbounds nuw [4 x i8], ptr %i.luk, i64 %i.lym ; 4 uses
  %i.lzk = getelementptr inbounds nuw i8, ptr %i.lzj, i64 32
  %i.lzl = getelementptr inbounds nuw i8, ptr %i.lzj, i64 64
  %i.lzm = getelementptr inbounds nuw i8, ptr %i.lzj, i64 96
  %wide.load4433.1 = load <8 x float>, ptr %i.lzj, align 4, !tbaa !12, !alias.scope !550, !noalias !549
  %wide.load4434.1 = load <8 x float>, ptr %i.lzk, align 4, !tbaa !12, !alias.scope !550, !noalias !549
  %wide.load4435.1 = load <8 x float>, ptr %i.lzl, align 4, !tbaa !12, !alias.scope !550, !noalias !549
  %wide.load4436.1 = load <8 x float>, ptr %i.lzm, align 4, !tbaa !12, !alias.scope !550, !noalias !549
  %i.lzn = fmul reassoc nsz arcp contract afn <8 x float> %wide.load4433.1, %broadcast.splat4429
  %i.lzo = fmul reassoc nsz arcp contract afn <8 x float> %wide.load4434.1, %broadcast.splat4429
  %i.lzp = fmul reassoc nsz arcp contract afn <8 x float> %wide.load4435.1, %broadcast.splat4429
  %i.lzq = fmul reassoc nsz arcp contract afn <8 x float> %wide.load4436.1, %broadcast.splat4429
  %i.lzr = getelementptr i8, ptr %i.lyn, i64 176
  %i.lzs = getelementptr i8, ptr %i.lyn, i64 208
  %i.lzt = getelementptr i8, ptr %i.lyn, i64 240
  store <8 x float> %i.lzn, ptr %next.gep4432.1, align 16, !tbaa !12, !noalias !549
  store <8 x float> %i.lzo, ptr %i.lzr, align 16, !tbaa !12, !noalias !549
  store <8 x float> %i.lzp, ptr %i.lzs, align 16, !tbaa !12, !noalias !549
  store <8 x float> %i.lzq, ptr %i.lzt, align 16, !tbaa !12, !noalias !549
  br i1 %i.lyf, label %middle.block4438, label %vector.body4430.2

vector.body4430.2:                                ; preds = %vector.body4430.1
  %next.gep4432.2 = getelementptr i8, ptr %i.lyn, i64 272
  %i.lzu = getelementptr inbounds nuw [4 x i8], ptr %i.lul, i64 %i.lym ; 4 uses
  %i.lzv = getelementptr inbounds nuw i8, ptr %i.lzu, i64 32
  %i.lzw = getelementptr inbounds nuw i8, ptr %i.lzu, i64 64
  %i.lzx = getelementptr inbounds nuw i8, ptr %i.lzu, i64 96
  %wide.load4433.2 = load <8 x float>, ptr %i.lzu, align 4, !tbaa !12, !alias.scope !550, !noalias !549
  %wide.load4434.2 = load <8 x float>, ptr %i.lzv, align 4, !tbaa !12, !alias.scope !550, !noalias !549
  %wide.load4435.2 = load <8 x float>, ptr %i.lzw, align 4, !tbaa !12, !alias.scope !550, !noalias !549
  %wide.load4436.2 = load <8 x float>, ptr %i.lzx, align 4, !tbaa !12, !alias.scope !550, !noalias !549
  %i.lzy = fmul reassoc nsz arcp contract afn <8 x float> %wide.load4433.2, %broadcast.splat4429
  %i.lzz = fmul reassoc nsz arcp contract afn <8 x float> %wide.load4434.2, %broadcast.splat4429
  %i.maa = fmul reassoc nsz arcp contract afn <8 x float> %wide.load4435.2, %broadcast.splat4429
  %i.mab = fmul reassoc nsz arcp contract afn <8 x float> %wide.load4436.2, %broadcast.splat4429
  %i.mac = getelementptr i8, ptr %i.lyn, i64 304
  %i.mad = getelementptr i8, ptr %i.lyn, i64 336
  %i.mae = getelementptr i8, ptr %i.lyn, i64 368
  store <8 x float> %i.lzy, ptr %next.gep4432.2, align 16, !tbaa !12, !noalias !549
  store <8 x float> %i.lzz, ptr %i.mac, align 16, !tbaa !12, !noalias !549
  store <8 x float> %i.maa, ptr %i.mad, align 16, !tbaa !12, !noalias !549
  store <8 x float> %i.mab, ptr %i.mae, align 16, !tbaa !12, !noalias !549
  br i1 %i.lyg, label %middle.block4438, label %vector.body4430.3

vector.body4430.3:                                ; preds = %vector.body4430.2
  %next.gep4432.3 = getelementptr i8, ptr %i.lyn, i64 400
  %i.maf = getelementptr inbounds nuw [4 x i8], ptr %i.lum, i64 %i.lym ; 4 uses
  %i.mag = getelementptr inbounds nuw i8, ptr %i.maf, i64 32
  %i.mah = getelementptr inbounds nuw i8, ptr %i.maf, i64 64
  %i.mai = getelementptr inbounds nuw i8, ptr %i.maf, i64 96
  %wide.load4433.3 = load <8 x float>, ptr %i.maf, align 4, !tbaa !12, !alias.scope !550, !noalias !549
  %wide.load4434.3 = load <8 x float>, ptr %i.mag, align 4, !tbaa !12, !alias.scope !550, !noalias !549
  %wide.load4435.3 = load <8 x float>, ptr %i.mah, align 4, !tbaa !12, !alias.scope !550, !noalias !549
  %wide.load4436.3 = load <8 x float>, ptr %i.mai, align 4, !tbaa !12, !alias.scope !550, !noalias !549
  %i.maj = fmul reassoc nsz arcp contract afn <8 x float> %wide.load4433.3, %broadcast.splat4429
  %i.mak = fmul reassoc nsz arcp contract afn <8 x float> %wide.load4434.3, %broadcast.splat4429
  %i.mal = fmul reassoc nsz arcp contract afn <8 x float> %wide.load4435.3, %broadcast.splat4429
  %i.mam = fmul reassoc nsz arcp contract afn <8 x float> %wide.load4436.3, %broadcast.splat4429
  %i.man = getelementptr i8, ptr %i.lyn, i64 432
  %i.mao = getelementptr i8, ptr %i.lyn, i64 464
  %i.map = getelementptr i8, ptr %i.lyn, i64 496
  store <8 x float> %i.maj, ptr %next.gep4432.3, align 16, !tbaa !12, !noalias !549
  store <8 x float> %i.mak, ptr %i.man, align 16, !tbaa !12, !noalias !549
  store <8 x float> %i.mal, ptr %i.mao, align 16, !tbaa !12, !noalias !549
  store <8 x float> %i.mam, ptr %i.map, align 16, !tbaa !12, !noalias !549
  br label %middle.block4438

middle.block4438:                                 ; preds = %vector.body4430.3, %vector.body4430.2, %vector.body4430.1, %vector.ph4426
  br i1 %cmp.n4439, label %._crit_edge.i570, label %vec.epilog.iter.check4446

vec.epilog.iter.check4446:                        ; preds = %middle.block4438
  br i1 %min.epilog.iters.check4447, label %_calc_gamma.exit.us.i.preheader, label %vec.epilog.ph4448, !prof !552

vec.epilog.ph4448:                                ; preds = %vector.main.loop.iter.check4424, %vec.epilog.iter.check4446
  %vec.epilog.resume.val4440 = phi i64 [ %n.vec4427, %vec.epilog.iter.check4446 ], [ 0, %vector.main.loop.iter.check4424 ]
  %i.maq = add nuw nsw i64 %n.vec4449, %i.lym
  %i.mar = getelementptr i8, ptr %i.lyo, i64 %i.lyh
  %invariant.gep4837.a = getelementptr [4 x i8], ptr %i.axo, i64 %i.lym
  br label %vec.epilog.vector.body4452

vec.epilog.vector.body4452:                       ; preds = %vec.epilog.vector.body4452, %vec.epilog.ph4448
  %index4453 = phi i64 [ %vec.epilog.resume.val4440, %vec.epilog.ph4448 ], [ %index.next4456, %vec.epilog.vector.body4452 ] ; 3 uses
  %i.mas = shl i64 %index4453, 2
  %next.gep4454 = getelementptr i8, ptr %i.lyo, i64 %i.mas
  %gep4838.a = getelementptr [4 x i8], ptr %invariant.gep4837.a, i64 %index4453
  %wide.load4455 = load <8 x float>, ptr %gep4838.a, align 4, !tbaa !12, !alias.scope !550, !noalias !549
  %i.mat = fmul reassoc nsz arcp contract afn <8 x float> %wide.load4455, %broadcast.splat4451
  store <8 x float> %i.mat, ptr %next.gep4454, align 16, !tbaa !12, !noalias !549
  %index.next4456 = add nuw i64 %index4453, 8     ; 2 uses
  %i.mau = icmp eq i64 %index.next4456, %n.vec4449
  br i1 %i.mau, label %vec.epilog.middle.block4457, label %vec.epilog.vector.body4452, !llvm.loop !333

vec.epilog.middle.block4457:                      ; preds = %vec.epilog.vector.body4452
  br i1 %cmp.n4458, label %._crit_edge.i570, label %_calc_gamma.exit.us.i.preheader

_calc_gamma.exit.us.i.preheader:                  ; preds = %iter.check4444, %vec.epilog.iter.check4446, %vec.epilog.middle.block4457
  %indvars.iv1219.i.ph = phi i64 [ %i.lym, %iter.check4444 ], [ %i.lyw, %vec.epilog.iter.check4446 ], [ %i.maq, %vec.epilog.middle.block4457 ]
  %.09161034.us.i.ph = phi ptr [ %i.lyo, %iter.check4444 ], [ %i.lyx, %vec.epilog.iter.check4446 ], [ %i.mar, %vec.epilog.middle.block4457 ]
end_hunk_9
begin_hunk_10_@process:bb.a
  %i.mlt = fadd reassoc nsz arcp contract afn float %i.mlq, %i.mls
  %i.mlu = fmul reassoc nsz arcp contract afn float %i.mlt, 5.000000e-01
  %i.mlv = fsub reassoc nsz arcp contract afn float %i.mln, %i.mlu ; 3 uses
  %i.mlw = fcmp reassoc nsz arcp contract afn ult float %i.mlh, -1.000000e+00
  %.inv.i = fcmp reassoc nsz arcp contract afn ole float %i.mlh, 0.000000e+00
  %spec.select957.i = select reassoc nsz arcp contract afn i1 %.inv.i, float %i.mlh, float 0.000000e+00
  %i.mlx = select reassoc nsz arcp contract afn i1 %i.mlw, float -1.000000e+00, float %spec.select957.i
  %i.mly = fadd reassoc nsz arcp contract afn float %i.mlx, %i.mlb
  store float %i.mly, ptr %i.mkr, align 4, !tbaa !12, !noalias !549
  %i.mlz = fcmp reassoc nsz arcp contract afn ult float %i.mlv, -1.000000e+00
  %.inv987.i = fcmp reassoc nsz arcp contract afn ole float %i.mlv, 0.000000e+00
  %spec.select958.i = select reassoc nsz arcp contract afn i1 %.inv987.i, float %i.mlv, float 0.000000e+00
  %i.mma = select reassoc nsz arcp contract afn i1 %i.mlz, float -1.000000e+00, float %spec.select958.i
  %i.mmb = fadd reassoc nsz arcp contract afn float %i.mma, %i.mlb
  store float %i.mmb, ptr %i.mks, align 4, !tbaa !12, !noalias !549
  %indvars.iv.next1229.i = add nuw nsw i64 %indvars.iv1228.i, 2 ; 2 uses
  %i.mmc = icmp slt i64 %indvars.iv.next1229.i, %i.lyl
  br i1 %i.mmc, label %scalar.ph4342, label %._crit_edge1047.i, !llvm.loop !338

.lr.ph1059.i:                                     ; preds = %._crit_edge1052.i, %.preheader1019.lr.ph.i
  %i.mmd = add nsw i32 %i.lxt, 2
  %i.mme = sext i32 %i.mmd to i64                 ; 2 uses
  br label %bb.ph

.preheader1019.i:                                 ; preds = %.preheader1019.i.preheader, %._crit_edge1052.i
  %indvars.iv1237.i = phi i64 [ %indvars.iv.next1238.i, %._crit_edge1052.i ], [ 4, %.preheader1019.i.preheader ] ; 2 uses
  %i.mmf = mul nuw nsw i64 %indvars.iv1237.i, 136 ; 4 uses
  %i.mmg = getelementptr inbounds nuw [4 x i8], ptr %i.ltv, i64 %i.mmf ; 2 uses
  %i.mmh = getelementptr inbounds nuw [4 x i8], ptr %i.ltx, i64 %i.mmf ; 2 uses
  %i.mmi = getelementptr inbounds nuw [4 x i8], ptr %i.lty, i64 %i.mmf ; 2 uses
  %i.mmj = getelementptr inbounds nuw [4 x i8], ptr %i.ltz, i64 %i.mmf ; 2 uses
  br i1 %min.iters.check4315, label %scalar.ph4314.preheader, label %vector.body4318

vector.body4318:                                  ; preds = %.preheader1019.i, %vector.body4318
  %index4319 = phi i64 [ %index.next4338, %vector.body4318 ], [ 0, %.preheader1019.i ] ; 2 uses
  %i.mmk = or disjoint i64 %index4319, 4          ; 4 uses
  %i.mml = getelementptr inbounds nuw [4 x i8], ptr %i.mmg, i64 %i.mmk ; 9 uses
  %i.mmm = getelementptr inbounds nuw [4 x i8], ptr %i.mmh, i64 %i.mmk ; 9 uses
  %i.mmn = getelementptr inbounds nuw [4 x i8], ptr %i.mmi, i64 %i.mmk
  %i.mmo = getelementptr inbounds nuw [4 x i8], ptr %i.mmj, i64 %i.mmk
  %wide.load4320.a = load <8 x float>, ptr %i.mml, align 16, !tbaa !12, !noalias !549
  %i.mmp = fmul reassoc nsz arcp contract afn <8 x float> %wide.load4320.a, splat (float f0x3E51104A)
  %i.mmq = getelementptr inbounds i8, ptr %i.mml, i64 -4
  %wide.load4321.a = load <8 x float>, ptr %i.mmq, align 4, !tbaa !12, !noalias !549
  %i.mmr = getelementptr inbounds nuw i8, ptr %i.mml, i64 4
  %wide.load4322.a = load <8 x float>, ptr %i.mmr, align 4, !tbaa !12, !noalias !549
  %i.mms = fadd reassoc nsz arcp contract afn <8 x float> %wide.load4322.a, %wide.load4321.a
  %i.mmt = fmul reassoc nsz arcp contract afn <8 x float> %i.mms, splat (float f0x3E387F7D)
  %i.mmu = fadd reassoc nsz arcp contract afn <8 x float> %i.mmt, %i.mmp
  %i.mmv = getelementptr inbounds i8, ptr %i.mml, i64 -8
  %wide.load4323.a = load <8 x float>, ptr %i.mmv, align 8, !tbaa !12, !noalias !549
  %i.mmw = getelementptr inbounds nuw i8, ptr %i.mml, i64 8
  %wide.load4324.a = load <8 x float>, ptr %i.mmw, align 8, !tbaa !12, !noalias !549
  %i.mmx = fadd reassoc nsz arcp contract afn <8 x float> %wide.load4324.a, %wide.load4323.a
  %i.mmy = fmul reassoc nsz arcp contract afn <8 x float> %i.mmx, splat (float f0x3DFD9B65)
  %i.mmz = fadd reassoc nsz arcp contract afn <8 x float> %i.mmu, %i.mmy
  %i.mna = getelementptr inbounds i8, ptr %i.mml, i64 -12
  %wide.load4325.a = load <8 x float>, ptr %i.mna, align 4, !tbaa !12, !noalias !549
  %i.mnb = getelementptr inbounds nuw i8, ptr %i.mml, i64 12
  %wide.load4326.a = load <8 x float>, ptr %i.mnb, align 4, !tbaa !12, !noalias !549
  %i.mnc = fadd reassoc nsz arcp contract afn <8 x float> %wide.load4326.a, %wide.load4325.a
  %i.mnd = fmul reassoc nsz arcp contract afn <8 x float> %i.mnc, splat (float f0x3D87BEFD)
  %i.mne = fadd reassoc nsz arcp contract afn <8 x float> %i.mmz, %i.mnd
  %i.mnf = getelementptr inbounds i8, ptr %i.mml, i64 -16
  %wide.load4327.a = load <8 x float>, ptr %i.mnf, align 32, !tbaa !12, !noalias !549
  %i.mng = getelementptr inbounds nuw i8, ptr %i.mml, i64 16
  %wide.load4328.a = load <8 x float>, ptr %i.mng, align 32, !tbaa !12, !noalias !549
  %i.mnh = fadd reassoc nsz arcp contract afn <8 x float> %wide.load4328.a, %wide.load4327.a
  %i.mni = fmul reassoc nsz arcp contract afn <8 x float> %i.mnh, splat (float f0x3CE25978)
  %i.mnj = fadd reassoc nsz arcp contract afn <8 x float> %i.mne, %i.mni
  store <8 x float> %i.mnj, ptr %i.mmn, align 16, !tbaa !12, !noalias !549
  %wide.load4329.a = load <8 x float>, ptr %i.mmm, align 16, !tbaa !12, !noalias !549
  %i.mnk = fmul reassoc nsz arcp contract afn <8 x float> %wide.load4329.a, splat (float f0x3E51104A)
  %i.mnl = getelementptr inbounds i8, ptr %i.mmm, i64 -544
  %wide.load4330.a = load <8 x float>, ptr %i.mnl, align 16, !tbaa !12, !noalias !549
  %i.mnm = getelementptr inbounds nuw i8, ptr %i.mmm, i64 544
  %wide.load4331 = load <8 x float>, ptr %i.mnm, align 16, !tbaa !12, !noalias !549
  %i.mnn = fadd reassoc nsz arcp contract afn <8 x float> %wide.load4331, %wide.load4330.a
  %i.mno = fmul reassoc nsz arcp contract afn <8 x float> %i.mnn, splat (float f0x3E387F7D)
  %i.mnp = fadd reassoc nsz arcp contract afn <8 x float> %i.mno, %i.mnk
  %i.mnq = getelementptr inbounds i8, ptr %i.mmm, i64 -1088
  %wide.load4332 = load <8 x float>, ptr %i.mnq, align 16, !tbaa !12, !noalias !549
  %i.mnr = getelementptr inbounds nuw i8, ptr %i.mmm, i64 1088
  %wide.load4333 = load <8 x float>, ptr %i.mnr, align 16, !tbaa !12, !noalias !549
  %i.mns = fadd reassoc nsz arcp contract afn <8 x float> %wide.load4333, %wide.load4332
  %i.mnt = fmul reassoc nsz arcp contract afn <8 x float> %i.mns, splat (float f0x3DFD9B65)
  %i.mnu = fadd reassoc nsz arcp contract afn <8 x float> %i.mnp, %i.mnt
  %i.mnv = getelementptr inbounds i8, ptr %i.mmm, i64 -1632
  %wide.load4334 = load <8 x float>, ptr %i.mnv, align 16, !tbaa !12, !noalias !549
  %i.mnw = getelementptr inbounds nuw i8, ptr %i.mmm, i64 1632
  %wide.load4335 = load <8 x float>, ptr %i.mnw, align 16, !tbaa !12, !noalias !549
  %i.mnx = fadd reassoc nsz arcp contract afn <8 x float> %wide.load4335, %wide.load4334
  %i.mny = fmul reassoc nsz arcp contract afn <8 x float> %i.mnx, splat (float f0x3D87BEFD)
  %i.mnz = fadd reassoc nsz arcp contract afn <8 x float> %i.mnu, %i.mny
  %i.moa = getelementptr inbounds i8, ptr %i.mmm, i64 -2176
  %wide.load4336 = load <8 x float>, ptr %i.moa, align 16, !tbaa !12, !noalias !549
  %i.mob = getelementptr inbounds nuw i8, ptr %i.mmm, i64 2176
  %wide.load4337 = load <8 x float>, ptr %i.mob, align 16, !tbaa !12, !noalias !549
  %i.moc = fadd reassoc nsz arcp contract afn <8 x float> %wide.load4337, %wide.load4336
  %i.mod = fmul reassoc nsz arcp contract afn <8 x float> %i.moc, splat (float f0x3CE25978)
  %i.moe = fadd reassoc nsz arcp contract afn <8 x float> %i.mnz, %i.mod
  store <8 x float> %i.moe, ptr %i.mmo, align 16, !tbaa !12, !noalias !549
  %index.next4338 = add nuw i64 %index4319, 8     ; 2 uses
  %i.mof = icmp eq i64 %index.next4338, %n.vec4317
  br i1 %i.mof, label %middle.block4339, label %vector.body4318, !llvm.loop !339

middle.block4339:                                 ; preds = %vector.body4318
  br i1 %cmp.n4340, label %._crit_edge1052.i, label %scalar.ph4314.preheader

scalar.ph4314.preheader:                          ; preds = %.preheader1019.i, %middle.block4339
  %indvars.iv1234.i.ph = phi i64 [ 4, %.preheader1019.i ], [ %i.mcz, %middle.block4339 ]
  br label %scalar.ph4314

._crit_edge1052.i:                                ; preds = %scalar.ph4314, %middle.block4339
  %indvars.iv.next1238.i = add nuw nsw i64 %indvars.iv1237.i, 1 ; 2 uses
  %exitcond1127.not = icmp eq i64 %indvars.iv.next1238.i, %smax1153
  br i1 %exitcond1127.not, label %.lr.ph1059.i, label %.preheader1019.i

scalar.ph4314:                                    ; preds = %scalar.ph4314.preheader, %scalar.ph4314
  %indvars.iv1234.i = phi i64 [ %indvars.iv.next1235.i, %scalar.ph4314 ], [ %indvars.iv1234.i.ph, %scalar.ph4314.preheader ] ; 6 uses
  %i.mog = getelementptr inbounds nuw [4 x i8], ptr %i.mmg, i64 %indvars.iv1234.i ; 9 uses
  %i.moh = getelementptr inbounds nuw [4 x i8], ptr %i.mmh, i64 %indvars.iv1234.i ; 9 uses
  %i.moi = getelementptr inbounds nuw [4 x i8], ptr %i.mmi, i64 %indvars.iv1234.i
  %i.moj = getelementptr inbounds nuw [4 x i8], ptr %i.mmj, i64 %indvars.iv1234.i
  %i.mok = load float, ptr %i.mog, align 4, !tbaa !12, !noalias !549
  %i.mol = fmul reassoc nsz arcp contract afn float %i.mok, f0x3E51104A
  %i.mom = getelementptr inbounds i8, ptr %i.mog, i64 -4
  %i.mon = load float, ptr %i.mom, align 4, !tbaa !12, !noalias !549
  %i.moo = getelementptr inbounds nuw i8, ptr %i.mog, i64 4
  %i.mop = load float, ptr %i.moo, align 4, !tbaa !12, !noalias !549
  %i.moq = fadd reassoc nsz arcp contract afn float %i.mop, %i.mon
  %i.mor = fmul reassoc nsz arcp contract afn float %i.moq, f0x3E387F7D
  %i.mos = fadd reassoc nsz arcp contract afn float %i.mor, %i.mol
  %i.mot = getelementptr inbounds i8, ptr %i.mog, i64 -8
  %i.mou = load float, ptr %i.mot, align 4, !tbaa !12, !noalias !549
  %i.mov = getelementptr inbounds nuw i8, ptr %i.mog, i64 8
  %i.mow = load float, ptr %i.mov, align 4, !tbaa !12, !noalias !549
  %i.mox = fadd reassoc nsz arcp contract afn float %i.mow, %i.mou
  %i.moy = fmul reassoc nsz arcp contract afn float %i.mox, f0x3DFD9B65
  %i.moz = fadd reassoc nsz arcp contract afn float %i.mos, %i.moy
  %i.mpa = getelementptr inbounds i8, ptr %i.mog, i64 -12
  %i.mpb = load float, ptr %i.mpa, align 4, !tbaa !12, !noalias !549
  %i.mpc = getelementptr inbounds nuw i8, ptr %i.mog, i64 12
  %i.mpd = load float, ptr %i.mpc, align 4, !tbaa !12, !noalias !549
  %i.mpe = fadd reassoc nsz arcp contract afn float %i.mpd, %i.mpb
  %i.mpf = fmul reassoc nsz arcp contract afn float %i.mpe, f0x3D87BEFD
  %i.mpg = fadd reassoc nsz arcp contract afn float %i.moz, %i.mpf
  %i.mph = getelementptr inbounds i8, ptr %i.mog, i64 -16
  %i.mpi = load float, ptr %i.mph, align 4, !tbaa !12, !noalias !549
  %i.mpj = getelementptr inbounds nuw i8, ptr %i.mog, i64 16
  %i.mpk = load float, ptr %i.mpj, align 4, !tbaa !12, !noalias !549
  %i.mpl = fadd reassoc nsz arcp contract afn float %i.mpk, %i.mpi
  %i.mpm = fmul reassoc nsz arcp contract afn float %i.mpl, f0x3CE25978
  %i.mpn = fadd reassoc nsz arcp contract afn float %i.mpg, %i.mpm
  store float %i.mpn, ptr %i.moi, align 4, !tbaa !12, !noalias !549
  %i.mpo = load float, ptr %i.moh, align 4, !tbaa !12, !noalias !549
  %i.mpp = fmul reassoc nsz arcp contract afn float %i.mpo, f0x3E51104A
  %i.mpq = getelementptr inbounds i8, ptr %i.moh, i64 -544
  %i.mpr = load float, ptr %i.mpq, align 4, !tbaa !12, !noalias !549
  %i.mps = getelementptr inbounds nuw i8, ptr %i.moh, i64 544
  %i.mpt = load float, ptr %i.mps, align 4, !tbaa !12, !noalias !549
  %i.mpu = fadd reassoc nsz arcp contract afn float %i.mpt, %i.mpr
  %i.mpv = fmul reassoc nsz arcp contract afn float %i.mpu, f0x3E387F7D
  %i.mpw = fadd reassoc nsz arcp contract afn float %i.mpv, %i.mpp
  %i.mpx = getelementptr inbounds i8, ptr %i.moh, i64 -1088
  %i.mpy = load float, ptr %i.mpx, align 4, !tbaa !12, !noalias !549
  %i.mpz = getelementptr inbounds nuw i8, ptr %i.moh, i64 1088
  %i.mqa = load float, ptr %i.mpz, align 4, !tbaa !12, !noalias !549
  %i.mqb = fadd reassoc nsz arcp contract afn float %i.mqa, %i.mpy
  %i.mqc = fmul reassoc nsz arcp contract afn float %i.mqb, f0x3DFD9B65
  %i.mqd = fadd reassoc nsz arcp contract afn float %i.mpw, %i.mqc
  %i.mqe = getelementptr inbounds i8, ptr %i.moh, i64 -1632
  %i.mqf = load float, ptr %i.mqe, align 4, !tbaa !12, !noalias !549
  %i.mqg = getelementptr inbounds nuw i8, ptr %i.moh, i64 1632
  %i.mqh = load float, ptr %i.mqg, align 4, !tbaa !12, !noalias !549
  %i.mqi = fadd reassoc nsz arcp contract afn float %i.mqh, %i.mqf
  %i.mqj = fmul reassoc nsz arcp contract afn float %i.mqi, f0x3D87BEFD
  %i.mqk = fadd reassoc nsz arcp contract afn float %i.mqd, %i.mqj
  %i.mql = getelementptr inbounds i8, ptr %i.moh, i64 -2176
  %i.mqm = load float, ptr %i.mql, align 4, !tbaa !12, !noalias !549
  %i.mqn = getelementptr inbounds nuw i8, ptr %i.moh, i64 2176
  %i.mqo = load float, ptr %i.mqn, align 4, !tbaa !12, !noalias !549
  %i.mqp = fadd reassoc nsz arcp contract afn float %i.mqo, %i.mqm
  %i.mqq = fmul reassoc nsz arcp contract afn float %i.mqp, f0x3CE25978
  %i.mqr = fadd reassoc nsz arcp contract afn float %i.mqk, %i.mqq
  store float %i.mqr, ptr %i.moj, align 4, !tbaa !12, !noalias !549
  %indvars.iv.next1235.i = add nuw nsw i64 %indvars.iv1234.i, 1
  %exitcond1124.not = icmp eq i64 %indvars.iv1234.i, %i.lxo
  br i1 %exitcond1124.not, label %._crit_edge1052.i, label %scalar.ph4314, !llvm.loop !340

._crit_edge1060.i:                                ; preds = %._crit_edge1057.i, %.preheader1025.i, %.preheader1026.i
  br i1 %i.lvd, label %.lr.ph1071.i, label %._crit_edge1085.i

.lr.ph1071.i:                                     ; preds = %._crit_edge1060.i
  %i.mqs = add nsw i32 %i.lxp, -4
  %i.mqt = icmp sgt i32 %i.lxs, -8
  br i1 %i.mqt, label %.lr.ph1066.preheader.i, label %.preheader1023.i

.lr.ph1066.preheader.i:                           ; preds = %.lr.ph1071.i
  %i.mqu = sext i32 %i.lxu to i64                 ; 3 uses
  %i.mqv = icmp eq i32 %i.lxb, 0
  %unroll_iter4710 = and i64 %i.mqu, -2
  %i.mqw = and i32 %i.lxt, 1
  %lcmp.mod4708.not = icmp eq i32 %i.mqw, 0
  %lcmp.mod4709 = trunc i32 %i.lxt to i1
  %i.mqx = icmp eq i32 %i.lxb, 0
  %unroll_iter4718.a = and i64 %i.mqu, -2
  %i.mqy = and i32 %i.lxt, 1
  %lcmp.mod4716.not.a = icmp eq i32 %i.mqy, 0
  %lcmp.mod4717.a = trunc i32 %i.lxt to i1
  br label %.lr.ph1066.i

bb.ph:                                            ; preds = %._crit_edge1057.i, %.lr.ph1059.i
  %indvars.iv1243.i = phi i64 [ 4, %.lr.ph1059.i ], [ %indvars.iv.next1244.i, %._crit_edge1057.i ] ; 3 uses
  %i.mqz = trunc nuw nsw i64 %indvars.iv1243.i to i32
  %i.mra = shl i32 %i.mqz, 2
  %i.mrb = and i32 %i.mra, 28
  %i.mrc = lshr i32 %.fr1070, %i.mrb              ; 2 uses
  %i.mrd = and i32 %i.mrc, 1                      ; 2 uses
  %i.mre = icmp sgt i32 %i.lxs, %i.mrd
  br i1 %i.mre, label %.lr.ph1056.i, label %._crit_edge1057.i

.lr.ph1056.i:                                     ; preds = %bb.ph
  %i.mrf = mul nuw nsw i64 %indvars.iv1243.i, 136 ; 5 uses
  %i.mrg = getelementptr inbounds nuw [4 x i8], ptr %i.ltv, i64 %i.mrf ; 2 uses
  %i.mrh = getelementptr inbounds nuw [4 x i8], ptr %i.ltx, i64 %i.mrf ; 2 uses
  %i.mri = getelementptr inbounds nuw [4 x i8], ptr %i.lty, i64 %i.mrf ; 2 uses
  %i.mrj = getelementptr inbounds nuw [4 x i8], ptr %i.ltz, i64 %i.mrf ; 2 uses
  %i.mrk = getelementptr inbounds nuw [4 x i8], ptr %i.lua, i64 %i.mrf ; 2 uses
  %i.mrl = or disjoint i32 %i.mrd, 4
  %i.mrm = zext nneg i32 %i.mrl to i64            ; 4 uses
  %i.mrn = and i32 %i.mrc, 1
  %i.mro = zext nneg i32 %i.mrn to i64            ; 2 uses
  %i.mrp = or disjoint i64 %i.mro, 4
  %i.mrq = call i64 @llvm.smax.i64(i64 %i.mrp, i64 %i.mme)
  %i.mrr = add nsw i64 %i.mrq, -3
  %i.mrs = sub i64 %i.mrr, %i.mro                 ; 2 uses
  %min.iters.check4236 = icmp ult i64 %i.mrs, 16
  br i1 %min.iters.check4236, label %scalar.ph4235.preheader, label %vector.ph4237

scalar.ph4235.preheader:                          ; preds = %vector.body4242, %.lr.ph1056.i
  %indvars.iv1240.i.ph = phi i64 [ %i.mrm, %.lr.ph1056.i ], [ %i.mrz, %vector.body4242 ]
  br label %scalar.ph4235

vector.ph4237:                                    ; preds = %.lr.ph1056.i
  %i.mrt = lshr i64 %i.mrs, 1
  %i.mru = add nuw nsw i64 %i.mrt, 1              ; 2 uses
  %i.mrv = and i64 %i.mru, 7                      ; 2 uses
  %i.mrw = icmp eq i64 %i.mrv, 0
  %i.mrx = select i1 %i.mrw, i64 8, i64 %i.mrv
  %n.vec4238 = sub nsw i64 %i.mru, %i.mrx         ; 2 uses
  %i.mry = shl i64 %n.vec4238, 1
  %i.mrz = add i64 %i.mry, %i.mrm
  %broadcast.splatinsert4239 = insertelement <8 x i64> poison, i64 %i.mrm, i64 0
  %broadcast.splat4240 = shufflevector <8 x i64> %broadcast.splatinsert4239, <8 x i64> poison, <8 x i32> zeroinitializer
  %induction4241 = add nuw nsw <8 x i64> %broadcast.splat4240, <i64 0, i64 2, i64 4, i64 6, i64 8, i64 10, i64 12, i64 14>
  br label %vector.body4242

vector.body4242:                                  ; preds = %vector.body4242, %vector.ph4237
  %index4243 = phi i64 [ 0, %vector.ph4237 ], [ %index.next4310, %vector.body4242 ] ; 2 uses
  %vec.ind4244 = phi <8 x i64> [ %induction4241, %vector.ph4237 ], [ %vec.ind.next4311, %vector.body4242 ] ; 2 uses
  %i.msa = shl nuw i64 %index4243, 1
  %i.msb = or disjoint i64 %i.msa, %i.mrm         ; 4 uses
  %i.msc = getelementptr inbounds nuw [4 x i8], ptr %i.mrg, i64 %i.msb ; 5 uses
  %i.msd = getelementptr inbounds nuw [4 x i8], ptr %i.mrh, i64 %i.msb ; 9 uses
  %i.mse = getelementptr inbounds nuw [4 x i8], ptr %i.mri, i64 %i.msb ; 5 uses
  %i.msf = getelementptr inbounds nuw [4 x i8], ptr %i.mrj, i64 %i.msb ; 9 uses
  %wide.gep4245 = getelementptr inbounds nuw [4 x i8], ptr %i.mrk, <8 x i64> %vec.ind4244
  %i.msg = getelementptr inbounds i8, ptr %i.mse, i64 -16
  %wide.vec4246 = load <16 x float>, ptr %i.msg, align 4, !tbaa !12, !noalias !549
  %strided.vec4247 = shufflevector <16 x float> %wide.vec4246, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 3 uses
  %i.msh = getelementptr inbounds i8, ptr %i.mse, i64 -12
  %wide.vec4248 = load <16 x float>, ptr %i.msh, align 4, !tbaa !12, !noalias !549 ; 2 uses
  %strided.vec4249.a = shufflevector <16 x float> %wide.vec4248, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 3 uses
  %strided.vec4250 = shufflevector <16 x float> %wide.vec4248, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15> ; 3 uses
  %i.msi = getelementptr inbounds i8, ptr %i.mse, i64 -4
  %wide.vec4251 = load <16 x float>, ptr %i.msi, align 4, !tbaa !12, !noalias !549 ; 2 uses
  %strided.vec4252.a = shufflevector <16 x float> %wide.vec4251, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 3 uses
  %strided.vec4253 = shufflevector <16 x float> %wide.vec4251, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15> ; 4 uses
  %i.msj = getelementptr inbounds nuw i8, ptr %i.mse, i64 4
  %wide.vec4254 = load <16 x float>, ptr %i.msj, align 4, !tbaa !12, !noalias !549 ; 2 uses
  %strided.vec4255 = shufflevector <16 x float> %wide.vec4254, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 3 uses
  %strided.vec4256.a = shufflevector <16 x float> %wide.vec4254, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15> ; 3 uses
  %i.msk = getelementptr inbounds nuw i8, ptr %i.mse, i64 12
  %wide.vec4257 = load <16 x float>, ptr %i.msk, align 4, !tbaa !12, !noalias !549 ; 2 uses
  %strided.vec4258 = shufflevector <16 x float> %wide.vec4257, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 3 uses
  %strided.vec4259.a = shufflevector <16 x float> %wide.vec4257, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15> ; 3 uses
  %i.msl = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec4249.a, %strided.vec4247
  %i.msm = fadd reassoc nsz arcp contract afn <8 x float> %i.msl, %strided.vec4250
  %i.msn = fadd reassoc nsz arcp contract afn <8 x float> %i.msm, %strided.vec4252.a
  %i.mso = fadd reassoc nsz arcp contract afn <8 x float> %i.msn, %strided.vec4253
  %i.msp = fadd reassoc nsz arcp contract afn <8 x float> %i.mso, %strided.vec4255
  %i.msq = fadd reassoc nsz arcp contract afn <8 x float> %i.msp, %strided.vec4256.a
  %i.msr = fadd reassoc nsz arcp contract afn <8 x float> %i.msq, %strided.vec4258
  %i.mss = fadd reassoc nsz arcp contract afn <8 x float> %i.msr, %strided.vec4259.a
  %i.mst = fmul reassoc nsz arcp contract afn <8 x float> %i.mss, splat (float f0x3DE38E39) ; 9 uses
  %i.msu = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec4247, %i.mst ; 2 uses
  %i.msv = fmul reassoc nsz arcp contract afn <8 x float> %i.msu, %i.msu
  %i.msw = fadd reassoc nsz arcp contract afn <8 x float> %i.msv, splat (float 1.000000e-07)
  %i.msx = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec4249.a, %i.mst ; 2 uses
  %i.msy = fmul reassoc nsz arcp contract afn <8 x float> %i.msx, %i.msx
  %i.msz = fadd reassoc nsz arcp contract afn <8 x float> %i.msw, %i.msy
  %i.mta = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec4250, %i.mst ; 2 uses
  %i.mtb = fmul reassoc nsz arcp contract afn <8 x float> %i.mta, %i.mta
  %i.mtc = fadd reassoc nsz arcp contract afn <8 x float> %i.msz, %i.mtb
  %i.mtd = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec4252.a, %i.mst ; 2 uses
  %i.mte = fmul reassoc nsz arcp contract afn <8 x float> %i.mtd, %i.mtd
  %i.mtf = fadd reassoc nsz arcp contract afn <8 x float> %i.mtc, %i.mte
  %i.mtg = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec4253, %i.mst ; 2 uses
  %i.mth = fmul reassoc nsz arcp contract afn <8 x float> %i.mtg, %i.mtg
  %i.mti = fadd reassoc nsz arcp contract afn <8 x float> %i.mtf, %i.mth
  %i.mtj = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec4255, %i.mst ; 2 uses
  %i.mtk = fmul reassoc nsz arcp contract afn <8 x float> %i.mtj, %i.mtj
  %i.mtl = fadd reassoc nsz arcp contract afn <8 x float> %i.mti, %i.mtk
  %i.mtm = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec4256.a, %i.mst ; 2 uses
  %i.mtn = fmul reassoc nsz arcp contract afn <8 x float> %i.mtm, %i.mtm
  %i.mto = fadd reassoc nsz arcp contract afn <8 x float> %i.mtl, %i.mtn
  %i.mtp = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec4258, %i.mst ; 2 uses
  %i.mtq = fmul reassoc nsz arcp contract afn <8 x float> %i.mtp, %i.mtp
  %i.mtr = fadd reassoc nsz arcp contract afn <8 x float> %i.mto, %i.mtq
  %i.mts = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec4259.a, %i.mst ; 2 uses
  %i.mtt = fmul reassoc nsz arcp contract afn <8 x float> %i.mts, %i.mts
  %i.mtu = fadd reassoc nsz arcp contract afn <8 x float> %i.mtr, %i.mtt ; 3 uses
  %i.mtv = getelementptr inbounds i8, ptr %i.msc, i64 -16
  %wide.vec4260 = load <16 x float>, ptr %i.mtv, align 4, !tbaa !12, !noalias !549
  %strided.vec4261 = shufflevector <16 x float> %wide.vec4260, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.mtw = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec4247, %strided.vec4261 ; 2 uses
  %i.mtx = getelementptr inbounds i8, ptr %i.msc, i64 -12
  %wide.vec4262 = load <16 x float>, ptr %i.mtx, align 4, !tbaa !12, !noalias !549 ; 2 uses
  %strided.vec4263.a = shufflevector <16 x float> %wide.vec4262, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec4264 = shufflevector <16 x float> %wide.vec4262, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.mty = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec4249.a, %strided.vec4263.a ; 2 uses
  %i.mtz = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec4250, %strided.vec4264 ; 2 uses
  %i.mua = getelementptr inbounds i8, ptr %i.msc, i64 -4
  %wide.vec4265 = load <16 x float>, ptr %i.mua, align 4, !tbaa !12, !noalias !549 ; 2 uses
  %strided.vec4266.a = shufflevector <16 x float> %wide.vec4265, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec4267 = shufflevector <16 x float> %wide.vec4265, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15> ; 2 uses
  %i.mub = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec4252.a, %strided.vec4266.a ; 2 uses
  %i.muc = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec4253, %strided.vec4267 ; 2 uses
  %i.mud = getelementptr inbounds nuw i8, ptr %i.msc, i64 4
  %wide.vec4268 = load <16 x float>, ptr %i.mud, align 4, !tbaa !12, !noalias !549 ; 2 uses
  %strided.vec4269 = shufflevector <16 x float> %wide.vec4268, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec4270.a = shufflevector <16 x float> %wide.vec4268, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.mue = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec4255, %strided.vec4269 ; 2 uses
  %i.muf = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec4256.a, %strided.vec4270.a ; 2 uses
  %i.mug = getelementptr inbounds nuw i8, ptr %i.msc, i64 12
  %wide.vec4271.a = load <16 x float>, ptr %i.mug, align 4, !tbaa !12, !noalias !549 ; 2 uses
  %strided.vec4272.a = shufflevector <16 x float> %wide.vec4271.a, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec4273 = shufflevector <16 x float> %wide.vec4271.a, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.muh = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec4258, %strided.vec4272.a ; 2 uses
  %i.mui = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec4259.a, %strided.vec4273 ; 2 uses
  %i.muj = fmul reassoc nsz arcp contract afn <8 x float> %i.mtw, %i.mtw
  %i.muk = fadd reassoc nsz arcp contract afn <8 x float> %i.muj, splat (float 1.000000e-07)
  %i.mul = fmul reassoc nsz arcp contract afn <8 x float> %i.mty, %i.mty
  %i.mum = fadd reassoc nsz arcp contract afn <8 x float> %i.muk, %i.mul
  %i.mun = fmul reassoc nsz arcp contract afn <8 x float> %i.mtz, %i.mtz
  %i.muo = fadd reassoc nsz arcp contract afn <8 x float> %i.mum, %i.mun
  %i.mup = fmul reassoc nsz arcp contract afn <8 x float> %i.mub, %i.mub
  %i.muq = fadd reassoc nsz arcp contract afn <8 x float> %i.muo, %i.mup
  %i.mur = fmul reassoc nsz arcp contract afn <8 x float> %i.muc, %i.muc
  %i.mus = fadd reassoc nsz arcp contract afn <8 x float> %i.muq, %i.mur
  %i.mut = fmul reassoc nsz arcp contract afn <8 x float> %i.mue, %i.mue
  %i.muu = fadd reassoc nsz arcp contract afn <8 x float> %i.mus, %i.mut
  %i.muv = fmul reassoc nsz arcp contract afn <8 x float> %i.muf, %i.muf
  %i.muw = fadd reassoc nsz arcp contract afn <8 x float> %i.muu, %i.muv
  %i.mux = fmul reassoc nsz arcp contract afn <8 x float> %i.muh, %i.muh
  %i.muy = fadd reassoc nsz arcp contract afn <8 x float> %i.muw, %i.mux
  %i.muz = fmul reassoc nsz arcp contract afn <8 x float> %i.mui, %i.mui
  %i.mva = fadd reassoc nsz arcp contract afn <8 x float> %i.muy, %i.muz ; 3 uses
  %i.mvb = fmul reassoc nsz arcp contract afn <8 x float> %i.mtu, %strided.vec4267
  %i.mvc = fmul reassoc nsz arcp contract afn <8 x float> %i.mva, %strided.vec4253
  %i.mvd = fadd reassoc nsz arcp contract afn <8 x float> %i.mvb, %i.mvc
  %i.mve = fadd reassoc nsz arcp contract afn <8 x float> %i.mtu, %i.mva ; 2 uses
  %i.mvf = fmul reassoc nsz arcp contract afn <8 x float> %i.mtu, %i.mva
  %i.mvg = fdiv reassoc nsz arcp contract afn <8 x float> %i.mvf, %i.mve ; 2 uses
  %i.mvh = getelementptr inbounds i8, ptr %i.msf, i64 -2176
  %wide.vec4274 = load <16 x float>, ptr %i.mvh, align 4, !tbaa !12, !noalias !549
  %strided.vec4275 = shufflevector <16 x float> %wide.vec4274, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 3 uses
  %i.mvi = getelementptr inbounds i8, ptr %i.msf, i64 -1632
  %wide.vec4276 = load <16 x float>, ptr %i.mvi, align 4, !tbaa !12, !noalias !549
  %strided.vec4277 = shufflevector <16 x float> %wide.vec4276, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 3 uses
  %i.mvj = getelementptr inbounds i8, ptr %i.msf, i64 -1088
  %wide.vec4278 = load <16 x float>, ptr %i.mvj, align 4, !tbaa !12, !noalias !549
  %strided.vec4279 = shufflevector <16 x float> %wide.vec4278, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 3 uses
  %i.mvk = getelementptr inbounds i8, ptr %i.msf, i64 -544
  %wide.vec4280 = load <16 x float>, ptr %i.mvk, align 4, !tbaa !12, !noalias !549
  %strided.vec4281 = shufflevector <16 x float> %wide.vec4280, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 3 uses
  %wide.vec4282 = load <16 x float>, ptr %i.msf, align 4, !tbaa !12, !noalias !549
  %strided.vec4283 = shufflevector <16 x float> %wide.vec4282, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 4 uses
  %i.mvl = getelementptr inbounds nuw i8, ptr %i.msf, i64 544
  %wide.vec4284 = load <16 x float>, ptr %i.mvl, align 4, !tbaa !12, !noalias !549
  %strided.vec4285 = shufflevector <16 x float> %wide.vec4284, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 3 uses
  %i.mvm = getelementptr inbounds nuw i8, ptr %i.msf, i64 1088
  %wide.vec4286 = load <16 x float>, ptr %i.mvm, align 4, !tbaa !12, !noalias !549
  %strided.vec4287 = shufflevector <16 x float> %wide.vec4286, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 3 uses
  %i.mvn = getelementptr inbounds nuw i8, ptr %i.msf, i64 1632
  %wide.vec4288 = load <16 x float>, ptr %i.mvn, align 4, !tbaa !12, !noalias !549
  %strided.vec4289 = shufflevector <16 x float> %wide.vec4288, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 3 uses
  %i.mvo = getelementptr inbounds nuw i8, ptr %i.msf, i64 2176
  %wide.vec4290 = load <16 x float>, ptr %i.mvo, align 4, !tbaa !12, !noalias !549
  %strided.vec4291 = shufflevector <16 x float> %wide.vec4290, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 3 uses
  %i.mvp = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec4277, %strided.vec4275
  %i.mvq = fadd reassoc nsz arcp contract afn <8 x float> %i.mvp, %strided.vec4279
  %i.mvr = fadd reassoc nsz arcp contract afn <8 x float> %i.mvq, %strided.vec4281
  %i.mvs = fadd reassoc nsz arcp contract afn <8 x float> %i.mvr, %strided.vec4283
  %i.mvt = fadd reassoc nsz arcp contract afn <8 x float> %i.mvs, %strided.vec4285
end_hunk_10
begin_hunk_11_@process:bb.a
  %i.nhu = mul nuw nsw i64 %indvar4179, 544       ; 6 uses
  %i.nhv = getelementptr i8, ptr %i.ltv, i64 %i.nhu
  %scevgep4186 = getelementptr i8, ptr %i.nhv, i64 73988
  %i.nhw = getelementptr i8, ptr %i.ltv, i64 %i.nhu
  %scevgep4188 = getelementptr i8, ptr %i.nhw, i64 75080
  %indvars.iv1261.tr.i = trunc nuw i64 %indvars.iv1261.i to i32
  %i.nhx = shl nuw i32 %indvars.iv1261.tr.i, 1
  %i.nhy = and i32 %i.nhx, 14                     ; 2 uses
  %i.nhz = shl nuw nsw i32 %i.nhy, 1
  %i.nia = lshr i32 %.fr1070, %i.nhz              ; 3 uses
  %i.nib = and i32 %i.nia, 1                      ; 3 uses
  %i.nic = icmp slt i32 %i.nib, %i.nel
  br i1 %i.nic, label %.lr.ph1074.i, label %._crit_edge1075.i

.lr.ph1074.i:                                     ; preds = %bb.pq
  %i.nid = or disjoint i32 %i.nib, %i.nhy
  %i.nie = shl nuw nsw i32 %i.nid, 1
  %i.nif = lshr i32 %.fr1070, %i.nie
  %i.nig = and i32 %i.nif, 3                      ; 2 uses
  %i.nih = zext nneg i32 %i.nig to i64
  %i.nii = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.nih
  %i.nij = load ptr, ptr %i.nii, align 8, !tbaa !140, !noalias !551 ; 3 uses
  %i.nik = mul nuw nsw i64 %indvars.iv1261.i, 136 ; 3 uses
  %i.nil = getelementptr inbounds nuw [4 x i8], ptr %i.nij, i64 %i.nik ; 2 uses
  %i.nim = getelementptr inbounds nuw [4 x i8], ptr %i.ltx, i64 %i.nik ; 2 uses
  %i.nin = sub nsw i32 2, %i.nig
  %i.nio = sext i32 %i.nin to i64
  %i.nip = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.nio
  %i.niq = load ptr, ptr %i.nip, align 8, !tbaa !140, !noalias !551 ; 3 uses
  %i.nir = getelementptr inbounds nuw [4 x i8], ptr %i.niq, i64 %i.nik ; 2 uses
  %narrow1350.i = add nuw nsw i32 %i.nib, 1
  %i.nis = zext nneg i32 %narrow1350.i to i64     ; 5 uses
  %i.nit = and i32 %i.nia, 1
  %i.niu = zext nneg i32 %i.nit to i64            ; 2 uses
  %i.niv = add nuw nsw i64 %i.niu, 3
  %i.niw = call i64 @llvm.smax.i64(i64 %i.nek, i64 %i.niv)
  %i.nix = add nsw i64 %i.niw, -2
  %i.niy = sub i64 %i.nix, %i.niu                 ; 2 uses
  %i.niz = lshr i64 %i.niy, 1
  %i.nja = add nuw nsw i64 %i.niz, 1              ; 2 uses
  %min.iters.check4202 = icmp ult i64 %i.niy, 16
  br i1 %min.iters.check4202, label %scalar.ph4201.preheader, label %vector.memcheck4178

scalar.ph4201.preheader:                          ; preds = %vector.body4208, %vector.memcheck4178, %.lr.ph1074.i
  %indvars.iv1258.i.ph = phi i64 [ %i.nis, %vector.memcheck4178 ], [ %i.nis, %.lr.ph1074.i ], [ %i.njy, %vector.body4208 ]
  br label %scalar.ph4201

vector.memcheck4178:                              ; preds = %.lr.ph1074.i
  %i.njb = and i32 %i.nia, 1
  %i.njc = zext nneg i32 %i.njb to i64            ; 3 uses
  %i.njd = shl nuw nsw i64 %i.njc, 2              ; 6 uses
  %i.nje = getelementptr i8, ptr %i.nij, i64 %i.nhu
  %i.njf = getelementptr i8, ptr %i.nje, i64 544
  %scevgep4181 = getelementptr i8, ptr %i.njf, i64 %i.njd ; 2 uses
  %i.njg = add nuw nsw i64 %i.njc, 3
  %smax4182 = call i64 @llvm.smax.i64(i64 %i.nek, i64 %i.njg)
  %i.njh = add nsw i64 %smax4182, -2
  %i.nji = sub i64 %i.njh, %i.njc
  %i.njj = shl nuw nsw i64 %i.nji, 2
  %i.njk = and i64 %i.njj, 9223372036854775800    ; 3 uses
  %i.njl = getelementptr i8, ptr %i.nij, i64 %i.nhu
  %i.njm = getelementptr i8, ptr %i.njl, i64 556
  %i.njn = getelementptr i8, ptr %i.njm, i64 %i.njk
  %scevgep4183 = getelementptr i8, ptr %i.njn, i64 %i.njd ; 2 uses
  %i.njo = getelementptr i8, ptr %i.niq, i64 %i.nhu
  %i.njp = getelementptr i8, ptr %i.njo, i64 4
  %scevgep4184 = getelementptr i8, ptr %i.njp, i64 %i.njd ; 2 uses
  %i.njq = getelementptr i8, ptr %i.niq, i64 %i.nhu
  %i.njr = getelementptr i8, ptr %i.njq, i64 1096
  %i.njs = getelementptr i8, ptr %i.njr, i64 %i.njk
  %scevgep4185 = getelementptr i8, ptr %i.njs, i64 %i.njd ; 2 uses
  %scevgep4187 = getelementptr i8, ptr %scevgep4186, i64 %i.njd ; 2 uses
  %i.njt = getelementptr i8, ptr %scevgep4188, i64 %i.njk
  %scevgep4189 = getelementptr i8, ptr %i.njt, i64 %i.njd ; 2 uses
  %bound04190.a = icmp ult ptr %scevgep4181, %scevgep4185
  %bound14191.a = icmp ult ptr %scevgep4184, %scevgep4183
  %found.conflict4192.a = and i1 %bound04190.a, %bound14191.a
  %bound04193 = icmp ult ptr %scevgep4181, %scevgep4189
  %bound14194 = icmp ult ptr %scevgep4187, %scevgep4183
  %found.conflict4195 = and i1 %bound04193, %bound14194
  %conflict.rdx4196 = or i1 %found.conflict4192.a, %found.conflict4195
  %bound04197 = icmp ult ptr %scevgep4184, %scevgep4189
  %bound14198 = icmp ult ptr %scevgep4187, %scevgep4185
  %found.conflict4199 = and i1 %bound04197, %bound14198
  %conflict.rdx4200 = or i1 %conflict.rdx4196, %found.conflict4199
  br i1 %conflict.rdx4200, label %scalar.ph4201.preheader, label %vector.ph4203

vector.ph4203:                                    ; preds = %vector.memcheck4178
  %i.nju = and i64 %i.nja, 7                      ; 2 uses
  %i.njv = icmp eq i64 %i.nju, 0
  %i.njw = select i1 %i.njv, i64 8, i64 %i.nju
  %n.vec4204 = sub nsw i64 %i.nja, %i.njw         ; 2 uses
  %i.njx = shl i64 %n.vec4204, 1
  %i.njy = add i64 %i.njx, %i.nis
  %broadcast.splatinsert4205 = insertelement <8 x i64> poison, i64 %i.nis, i64 0
  %broadcast.splat4206 = shufflevector <8 x i64> %broadcast.splatinsert4205, <8 x i64> poison, <8 x i32> zeroinitializer
  %induction4207 = add nuw nsw <8 x i64> %broadcast.splat4206, <i64 0, i64 2, i64 4, i64 6, i64 8, i64 10, i64 12, i64 14>
  %invariant.gep4843 = getelementptr [4 x i8], ptr %i.nim, i64 %i.nis
  br label %vector.body4208

vector.body4208:                                  ; preds = %vector.body4208, %vector.ph4203
  %index4209 = phi i64 [ 0, %vector.ph4203 ], [ %index.next4231, %vector.body4208 ] ; 2 uses
  %vec.ind4210 = phi <8 x i64> [ %induction4207, %vector.ph4203 ], [ %vec.ind.next4232, %vector.body4208 ] ; 3 uses
  %wide.gep4211 = getelementptr inbounds nuw [4 x i8], ptr %i.nil, <8 x i64> %vec.ind4210 ; 2 uses
  %i.njz = extractelement <8 x ptr> %wide.gep4211, i64 0 ; 2 uses
  %.idx4563 = shl nuw i64 %index4209, 3
  %gep4844 = getelementptr i8, ptr %invariant.gep4843, i64 %.idx4563 ; 4 uses
  %i.nka = getelementptr inbounds i8, ptr %gep4844, i64 -4
  %wide.vec4212.a = load <16 x float>, ptr %i.nka, align 4, !tbaa !12, !alias.scope !553, !noalias !549 ; 2 uses
  %strided.vec4213.a = shufflevector <16 x float> %wide.vec4212.a, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec4214.a = shufflevector <16 x float> %wide.vec4212.a, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.nkb = getelementptr inbounds i8, ptr %i.njz, i64 -4
  %wide.vec4215 = load <16 x float>, ptr %i.nkb, align 4, !tbaa !12, !alias.scope !554, !noalias !549
  %strided.vec4216 = shufflevector <16 x float> %wide.vec4215, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.nkc = getelementptr inbounds nuw i8, ptr %i.njz, i64 4
  %wide.vec4217 = load <16 x float>, ptr %i.nkc, align 4, !tbaa !12, !alias.scope !554, !noalias !549
  %strided.vec4218 = shufflevector <16 x float> %wide.vec4217, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %wide.vec4219 = load <16 x float>, ptr %gep4844, align 4, !tbaa !12, !alias.scope !553, !noalias !549 ; 2 uses
  %strided.vec4220 = shufflevector <16 x float> %wide.vec4219, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec4221.a = shufflevector <16 x float> %wide.vec4219, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.nkd = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec4216, %strided.vec4218
  %i.nke = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec4213.a, %strided.vec4221.a
  %i.nkf = fsub reassoc nsz arcp contract afn <8 x float> %i.nkd, %i.nke
  %i.nkg = fmul reassoc nsz arcp contract afn <8 x float> %i.nkf, splat (float 5.000000e-01)
  %i.nkh = fadd reassoc nsz arcp contract afn <8 x float> %i.nkg, %strided.vec4214.a
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.nkh, <8 x ptr> align 4 %wide.gep4211, <8 x i1> splat (i1 true)), !tbaa !12, !alias.scope !554, !noalias !555
  %wide.gep4222 = getelementptr inbounds nuw [4 x i8], ptr %i.nir, <8 x i64> %vec.ind4210 ; 2 uses
  %i.nki = extractelement <8 x ptr> %wide.gep4222, i64 0 ; 2 uses
  %i.nkj = getelementptr inbounds i8, ptr %i.nki, i64 -544
  %wide.vec4223 = load <16 x float>, ptr %i.nkj, align 4, !tbaa !12, !alias.scope !556, !noalias !549
  %strided.vec4224 = shufflevector <16 x float> %wide.vec4223, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.nkk = getelementptr inbounds i8, ptr %gep4844, i64 -544
  %wide.vec4225 = load <16 x float>, ptr %i.nkk, align 4, !tbaa !12, !alias.scope !553, !noalias !549
  %strided.vec4226 = shufflevector <16 x float> %wide.vec4225, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.nkl = getelementptr inbounds nuw i8, ptr %i.nki, i64 544
  %wide.vec4227 = load <16 x float>, ptr %i.nkl, align 4, !tbaa !12, !alias.scope !556, !noalias !549
  %strided.vec4228 = shufflevector <16 x float> %wide.vec4227, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.nkm = getelementptr inbounds nuw i8, ptr %gep4844, i64 544
  %wide.vec4229 = load <16 x float>, ptr %i.nkm, align 4, !tbaa !12, !alias.scope !553, !noalias !549
  %strided.vec4230 = shufflevector <16 x float> %wide.vec4229, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.nkn = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec4224, %strided.vec4228
  %i.nko = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec4226, %strided.vec4230
  %i.nkp = fsub reassoc nsz arcp contract afn <8 x float> %i.nkn, %i.nko
  %i.nkq = fmul reassoc nsz arcp contract afn <8 x float> %i.nkp, splat (float 5.000000e-01)
  %i.nkr = fadd reassoc nsz arcp contract afn <8 x float> %i.nkq, %strided.vec4220
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.nkr, <8 x ptr> align 4 %wide.gep4222, <8 x i1> splat (i1 true)), !tbaa !12, !alias.scope !556, !noalias !557
  %index.next4231 = add nuw i64 %index4209, 8     ; 2 uses
  %vec.ind.next4232 = add nuw nsw <8 x i64> %vec.ind4210, splat (i64 16)
  %i.nks = icmp eq i64 %index.next4231, %n.vec4204
  br i1 %i.nks, label %scalar.ph4201.preheader, label %vector.body4208, !llvm.loop !347

._crit_edge1075.i:                                ; preds = %scalar.ph4201, %bb.pq
  %indvars.iv.next1262.i = add nuw nsw i64 %indvars.iv1261.i, 1 ; 2 uses
  %exitcond1140.not = icmp eq i64 %indvars.iv.next1262.i, %smax1145
  %indvar.next4180 = add i64 %indvar4179, 1
  br i1 %exitcond1140.not, label %.preheader1022.i, label %bb.pq

scalar.ph4201:                                    ; preds = %scalar.ph4201.preheader, %scalar.ph4201
  %indvars.iv1258.i = phi i64 [ %indvars.iv.next1259.i, %scalar.ph4201 ], [ %indvars.iv1258.i.ph, %scalar.ph4201.preheader ] ; 4 uses
  %i.nkt = getelementptr inbounds nuw [4 x i8], ptr %i.nil, i64 %indvars.iv1258.i ; 3 uses
  %i.nku = getelementptr inbounds nuw [4 x i8], ptr %i.nim, i64 %indvars.iv1258.i ; 6 uses
  %i.nkv = load float, ptr %i.nku, align 4, !tbaa !12, !noalias !549
  %i.nkw = getelementptr inbounds i8, ptr %i.nkt, i64 -4
  %i.nkx = load float, ptr %i.nkw, align 4, !tbaa !12, !noalias !549
  %i.nky = getelementptr inbounds i8, ptr %i.nku, i64 -4
  %i.nkz = load float, ptr %i.nky, align 4, !tbaa !12, !noalias !549
  %i.nla = getelementptr inbounds nuw i8, ptr %i.nkt, i64 4
  %i.nlb = load float, ptr %i.nla, align 4, !tbaa !12, !noalias !549
  %i.nlc = getelementptr inbounds nuw i8, ptr %i.nku, i64 4
  %i.nld = load float, ptr %i.nlc, align 4, !tbaa !12, !noalias !549
  %i.nle = fadd reassoc nsz arcp contract afn float %i.nkx, %i.nlb
  %i.nlf = fadd reassoc nsz arcp contract afn float %i.nkz, %i.nld
  %i.nlg = fsub reassoc nsz arcp contract afn float %i.nle, %i.nlf
  %i.nlh = fmul reassoc nsz arcp contract afn float %i.nlg, 5.000000e-01
  %i.nli = fadd reassoc nsz arcp contract afn float %i.nlh, %i.nkv
  store float %i.nli, ptr %i.nkt, align 4, !tbaa !12, !noalias !549
  %i.nlj = getelementptr inbounds nuw [4 x i8], ptr %i.nir, i64 %indvars.iv1258.i ; 3 uses
  %i.nlk = load float, ptr %i.nku, align 4, !tbaa !12, !noalias !549
  %i.nll = getelementptr inbounds i8, ptr %i.nlj, i64 -544
  %i.nlm = load float, ptr %i.nll, align 4, !tbaa !12, !noalias !549
  %i.nln = getelementptr inbounds i8, ptr %i.nku, i64 -544
  %i.nlo = load float, ptr %i.nln, align 4, !tbaa !12, !noalias !549
  %i.nlp = getelementptr inbounds nuw i8, ptr %i.nlj, i64 544
  %i.nlq = load float, ptr %i.nlp, align 4, !tbaa !12, !noalias !549
  %i.nlr = getelementptr inbounds nuw i8, ptr %i.nku, i64 544
  %i.nls = load float, ptr %i.nlr, align 4, !tbaa !12, !noalias !549
  %i.nlt = fadd reassoc nsz arcp contract afn float %i.nlm, %i.nlq
  %i.nlu = fadd reassoc nsz arcp contract afn float %i.nlo, %i.nls
  %i.nlv = fsub reassoc nsz arcp contract afn float %i.nlt, %i.nlu
  %i.nlw = fmul reassoc nsz arcp contract afn float %i.nlv, 5.000000e-01
  %i.nlx = fadd reassoc nsz arcp contract afn float %i.nlw, %i.nlk
  store float %i.nlx, ptr %i.nlj, align 4, !tbaa !12, !noalias !549
  %indvars.iv.next1259.i = add nuw nsw i64 %indvars.iv1258.i, 2 ; 2 uses
  %i.nly = icmp slt i64 %indvars.iv.next1259.i, %i.nek
  br i1 %i.nly, label %scalar.ph4201, label %._crit_edge1075.i, !llvm.loop !348

._crit_edge1085.i:                                ; preds = %._crit_edge1082.i, %.preheader1023.i, %._crit_edge1060.i
  %i.nlz = icmp eq i32 %.08871185.i, 0            ; 2 uses
  %i.nma = select i1 %i.nlz, i32 6, i32 0         ; 21 uses
  %i.nmb = icmp eq i32 %.08871185.i, %i.aoo       ; 2 uses
  %.neg.i556 = select i1 %i.nmb, i32 -6, i32 0    ; 5 uses
  %i.nmc = add nsw i32 %i.lxu, %.neg.i556         ; 4 uses
  br i1 %.not1191.i, label %.preheader1021.i, label %.preheader1018.lr.ph.i

.preheader1018.lr.ph.i:                           ; preds = %._crit_edge1085.i
  %i.nmd = icmp slt i32 %i.lxs, -5
  %i.nme = zext nneg i32 %i.nma to i64            ; 11 uses
  %invariant.gep.i557 = getelementptr inbounds nuw [4 x i8], ptr %i.ltv, i64 %i.nme
  %invariant.gep1131.i = getelementptr inbounds nuw [4 x i8], ptr %i.ltx, i64 %i.nme
  %invariant.gep1133.i = getelementptr inbounds nuw [4 x i8], ptr %i.lty, i64 %i.nme
  %invariant.gep1135.i = getelementptr inbounds nuw [4 x i8], ptr %i.ltz, i64 %i.nme
  %invariant.gep1137.i = getelementptr inbounds nuw [4 x i8], ptr %i.lua, i64 %i.nme
  %i.nmf = add nsw i32 %i.nmc, -1                 ; 3 uses
  %i.nmg = icmp slt i32 %i.nma, %i.nmf            ; 2 uses
  %i.nmh = add nsw i32 %i.lxt, 6                  ; 3 uses
  %i.nmi = sext i32 %i.nmh to i64                 ; 6 uses
  %brmerge.i558 = select i1 %i.lve, i1 true, i1 %i.nmd
  %i.nmj = shl nuw nsw i64 %i.nme, 2              ; 4 uses
  %scevgep3943.a = getelementptr i8, ptr %scevgep3942.a, i64 %i.nmj ; 2 uses
  %i.nmk = add nsw i32 %.neg.i556, 6
  %i.nml = add i32 %i.nmk, %i.lxt
  %i.nmm = sub i32 %i.nml, %i.nma
  %i.nmn = lshr i32 %i.nmm, 1
  %i.nmo = zext nneg i32 %i.nmn to i64
  %i.nmp = shl nuw nsw i64 %i.nmo, 3              ; 2 uses
  %i.nmq = getelementptr i8, ptr %scevgep3945.a, i64 %i.nmp
  %scevgep3946 = getelementptr i8, ptr %i.nmq, i64 %i.nmj ; 2 uses
  %.reass = or disjoint i64 %i.nmj, %invariant.op
  %i.nmr = add nuw nsw i64 %i.lwh, %i.nmp
  %i.nms = add nuw nsw i64 %i.nmr, %i.nmj
  %i.nmt = add nsw i32 %.neg.i556, 6
  %i.nmu = add i32 %i.nmt, %i.lxt
  %i.nmv = sub i32 %i.nmu, %i.nma
  %i.nmw = lshr i32 %i.nmv, 1
  %i.nmx = zext nneg i32 %i.nmw to i64
  %i.nmy = shl nuw nsw i64 %i.nmx, 3              ; 2 uses
  %i.nmz = add nuw nsw i64 %i.lwi, %i.nmy
  %i.nna = shl nuw nsw i64 %i.nme, 2              ; 3 uses
  %i.nnb = add nuw nsw i64 %i.nmz, %i.nna
  %scevgep4012 = getelementptr i8, ptr %scevgep4011, i64 %i.nna ; 2 uses
  %i.nnc = getelementptr i8, ptr %scevgep4014, i64 %i.nmy
  %scevgep4015 = getelementptr i8, ptr %i.nnc, i64 %i.nna ; 2 uses
  %min.iters.check4106 = icmp ult i32 %i.nmh, 8
  %n.vec4108 = and i64 %i.nmi, -8                 ; 3 uses
  %i.nnd = or disjoint i64 %n.vec4108, 1
  %cmp.n4131 = icmp eq i64 %n.vec4108, %i.nmi
  %min.iters.check4078 = icmp ult i32 %i.nmh, 8
  %n.vec4080 = and i64 %i.nmi, -8                 ; 3 uses
  %i.nne = or disjoint i64 %n.vec4080, 1
  %cmp.n4103 = icmp eq i64 %n.vec4080, %i.nmi
  %i.nnf = add i32 %.neg.i556, %i.lxt
  %i.nng = add i32 %i.nnf, 6
  %i.nnh = sub i32 %i.nng, %i.nma                 ; 2 uses
  %i.nni = lshr i32 %i.nnh, 1
  %narrow = add nuw i32 %i.nni, 1
  %i.nnj = zext i32 %narrow to i64                ; 2 uses
  %min.iters.check4029 = icmp ult i32 %i.nnh, 16
  %i.nnk = and i64 %i.nnj, 7                      ; 2 uses
  %i.nnl = icmp eq i64 %i.nnk, 0
  %i.nnm = select i1 %i.nnl, i64 8, i64 %i.nnk
  %n.vec4031 = sub nsw i64 %i.nnj, %i.nnm         ; 3 uses
  %i.nnn = trunc i64 %n.vec4031 to i32
  %i.nno = shl i32 %i.nnn, 1
  %i.nnp = add i32 %i.nma, %i.nno
  %i.nnq = shl nsw i64 %n.vec4031, 3              ; 7 uses
  %i.nnr = add i32 %.neg.i556, %i.lxt
  %i.nns = add i32 %i.nnr, 6
  %i.nnt = sub i32 %i.nns, %i.nma                 ; 2 uses
  %i.nnu = lshr i32 %i.nnt, 1
  %narrow4565 = add nuw i32 %i.nnu, 1
  %i.nnv = zext i32 %narrow4565 to i64            ; 2 uses
  %min.iters.check3965 = icmp ult i32 %i.nnt, 16
  %i.nnw = and i64 %i.nnv, 7                      ; 2 uses
  %i.nnx = icmp eq i64 %i.nnw, 0
  %i.nny = select i1 %i.nnx, i64 8, i64 %i.nnw
  %n.vec3967 = sub nsw i64 %i.nnv, %i.nny         ; 3 uses
  %i.nnz = shl nsw i64 %n.vec3967, 3              ; 7 uses
  %i.noa = trunc i64 %n.vec3967 to i32
  %i.nob = shl i32 %i.noa, 1
  %i.noc = add i32 %i.nma, %i.nob
  br label %.preheader1018.i

bb.pr:                                            ; preds = %._crit_edge1082.i, %.preheader1022.i
  %indvar4134 = phi i64 [ %indvar.next4135, %._crit_edge1082.i ], [ 0, %.preheader1022.i ] ; 2 uses
  %indvars.iv1267.i = phi i64 [ %indvars.iv.next1268.i, %._crit_edge1082.i ], [ 1, %.preheader1022.i ] ; 3 uses
  %i.nod = mul nuw nsw i64 %indvar4134, 544       ; 4 uses
  %i.noe = getelementptr i8, ptr %i.ltv, i64 %i.nod
  %scevgep4139 = getelementptr i8, ptr %i.noe, i64 73988
  %i.nof = getelementptr i8, ptr %i.ltv, i64 %i.nod
  %scevgep4141 = getelementptr i8, ptr %i.nof, i64 75080
  %indvars.iv1267.tr.i = trunc nuw i64 %indvars.iv1267.i to i32
  %i.nog = shl nuw i32 %indvars.iv1267.tr.i, 1
  %i.noh = and i32 %i.nog, 14                     ; 2 uses
  %.tr.i965.i = shl nuw nsw i32 %i.noh, 1
  %i.noi = or disjoint i32 %.tr.i965.i, 2
  %i.noj = lshr i32 %.fr1070, %i.noi              ; 3 uses
  %i.nok = and i32 %i.noj, 1
  %i.nol = add nuw nsw i32 %i.nok, 1              ; 3 uses
  %i.nom = icmp slt i32 %i.nol, %i.nej
  br i1 %i.nom, label %.lr.ph1081.i, label %._crit_edge1082.i

.lr.ph1081.i:                                     ; preds = %bb.pr
  %i.non = and i32 %i.nol, 1
  %i.noo = or disjoint i32 %i.non, %i.noh
  %i.nop = shl nuw nsw i32 %i.noo, 1
  %i.noq = lshr i32 %.fr1070, %i.nop
  %i.nor = and i32 %i.noq, 3
  %i.nos = sub nsw i32 2, %i.nor
  %i.not = sext i32 %i.nos to i64
  %i.nou = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.not
  %i.nov = load ptr, ptr %i.nou, align 8, !tbaa !140, !noalias !551 ; 3 uses
  %i.now = mul nuw nsw i64 %indvars.iv1267.i, 136 ; 2 uses
  %i.nox = getelementptr inbounds nuw [4 x i8], ptr %i.nov, i64 %i.now ; 2 uses
  %i.noy = getelementptr inbounds nuw [4 x i8], ptr %i.ltx, i64 %i.now ; 2 uses
  %i.noz = zext nneg i32 %i.nol to i64            ; 5 uses
  %i.npa = and i32 %i.noj, 1
  %i.npb = zext nneg i32 %i.npa to i64            ; 2 uses
  %i.npc = add nuw nsw i64 %i.npb, 3
  %i.npd = call i64 @llvm.umax.i64(i64 %i.npc, i64 %i.nht)
  %i.npe = add nsw i64 %i.npd, -2
  %i.npf = sub nsw i64 %i.npe, %i.npb             ; 2 uses
  %i.npg = lshr i64 %i.npf, 1
  %i.nph = add nuw nsw i64 %i.npg, 1              ; 2 uses
  %min.iters.check4147 = icmp ult i64 %i.npf, 8
  br i1 %min.iters.check4147, label %scalar.ph4146.preheader, label %vector.memcheck4133

scalar.ph4146.preheader:                          ; preds = %vector.body4153, %vector.memcheck4133, %.lr.ph1081.i
  %indvars.iv1264.i.ph = phi i64 [ %i.noz, %vector.memcheck4133 ], [ %i.noz, %.lr.ph1081.i ], [ %i.nqa, %vector.body4153 ]
  br label %scalar.ph4146

vector.memcheck4133:                              ; preds = %.lr.ph1081.i
  %i.npi = and i32 %i.noj, 1
  %i.npj = zext nneg i32 %i.npi to i64            ; 3 uses
  %i.npk = shl nuw nsw i64 %i.npj, 2              ; 4 uses
  %i.npl = getelementptr i8, ptr %i.nov, i64 %i.nod
  %i.npm = getelementptr i8, ptr %i.npl, i64 4
  %scevgep4136 = getelementptr i8, ptr %i.npm, i64 %i.npk
  %i.npn = add nuw nsw i64 %i.npj, 3
  %umax4137 = call i64 @llvm.umax.i64(i64 %i.npn, i64 %i.nht)
  %i.npo = add nsw i64 %umax4137, -2
  %i.npp = sub nsw i64 %i.npo, %i.npj
  %i.npq = shl nuw nsw i64 %i.npp, 2
  %i.npr = and i64 %i.npq, 9223372036854775800    ; 2 uses
  %i.nps = getelementptr i8, ptr %i.nov, i64 %i.nod
  %i.npt = getelementptr i8, ptr %i.nps, i64 1096
  %i.npu = getelementptr i8, ptr %i.npt, i64 %i.npr
  %scevgep4138 = getelementptr i8, ptr %i.npu, i64 %i.npk
  %scevgep4140 = getelementptr i8, ptr %scevgep4139, i64 %i.npk
  %i.npv = getelementptr i8, ptr %scevgep4141, i64 %i.npr
  %scevgep4142 = getelementptr i8, ptr %i.npv, i64 %i.npk
  %bound04143 = icmp ult ptr %scevgep4136, %scevgep4142
  %bound14144 = icmp ult ptr %scevgep4140, %scevgep4138
  %found.conflict4145 = and i1 %bound04143, %bound14144
  br i1 %found.conflict4145, label %scalar.ph4146.preheader, label %vector.ph4148

vector.ph4148:                                    ; preds = %vector.memcheck4133
  %i.npw = and i64 %i.nph, 3                      ; 2 uses
  %i.npx = icmp eq i64 %i.npw, 0
  %i.npy = select i1 %i.npx, i64 4, i64 %i.npw
  %n.vec4149 = sub nsw i64 %i.nph, %i.npy         ; 2 uses
  %i.npz = shl i64 %n.vec4149, 1
  %i.nqa = add i64 %i.npz, %i.noz
  %broadcast.splatinsert4150 = insertelement <4 x i64> poison, i64 %i.noz, i64 0
  %broadcast.splat4151 = shufflevector <4 x i64> %broadcast.splatinsert4150, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction4152 = add nuw nsw <4 x i64> %broadcast.splat4151, <i64 0, i64 2, i64 4, i64 6>
  %invariant.gep4845 = getelementptr [4 x i8], ptr %i.noy, i64 %i.noz
  br label %vector.body4153

vector.body4153:                                  ; preds = %vector.body4153, %vector.ph4148
  %index4154 = phi i64 [ 0, %vector.ph4148 ], [ %index.next4174, %vector.body4153 ] ; 2 uses
  %vec.ind4155 = phi <4 x i64> [ %induction4152, %vector.ph4148 ], [ %vec.ind.next4175, %vector.body4153 ] ; 2 uses
  %wide.gep4156 = getelementptr inbounds nuw [4 x i8], ptr %i.nox, <4 x i64> %vec.ind4155 ; 2 uses
  %i.nqb = extractelement <4 x ptr> %wide.gep4156, i64 0 ; 4 uses
  %.idx4564 = shl nuw i64 %index4154, 3
  %gep4846 = getelementptr i8, ptr %invariant.gep4845, i64 %.idx4564 ; 4 uses
  %wide.vec4157.a = load <8 x float>, ptr %gep4846, align 4, !tbaa !12, !alias.scope !558, !noalias !549 ; 2 uses
  %strided.vec4158.a = shufflevector <8 x float> %wide.vec4157.a, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec4159 = shufflevector <8 x float> %wide.vec4157.a, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.nqc = getelementptr inbounds i8, ptr %i.nqb, i64 -544
  %wide.vec4160 = load <8 x float>, ptr %i.nqc, align 4, !tbaa !12, !alias.scope !559, !noalias !549
  %strided.vec4161 = shufflevector <8 x float> %wide.vec4160, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.nqd = getelementptr inbounds i8, ptr %gep4846, i64 -544
  %wide.vec4162 = load <8 x float>, ptr %i.nqd, align 4, !tbaa !12, !alias.scope !558, !noalias !549
  %strided.vec4163 = shufflevector <8 x float> %wide.vec4162, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.nqe = getelementptr inbounds i8, ptr %i.nqb, i64 -4
  %wide.vec4164 = load <8 x float>, ptr %i.nqe, align 4, !tbaa !12, !alias.scope !559, !noalias !549
  %strided.vec4165 = shufflevector <8 x float> %wide.vec4164, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.nqf = getelementptr inbounds i8, ptr %gep4846, i64 -4
  %wide.vec4166 = load <8 x float>, ptr %i.nqf, align 4, !tbaa !12, !alias.scope !558, !noalias !549
  %strided.vec4167 = shufflevector <8 x float> %wide.vec4166, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.nqg = getelementptr inbounds nuw i8, ptr %i.nqb, i64 4
  %wide.vec4168 = load <8 x float>, ptr %i.nqg, align 4, !tbaa !12, !alias.scope !559, !noalias !549
  %strided.vec4169 = shufflevector <8 x float> %wide.vec4168, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.nqh = getelementptr inbounds nuw i8, ptr %i.nqb, i64 544
  %wide.vec4170 = load <8 x float>, ptr %i.nqh, align 4, !tbaa !12, !alias.scope !559, !noalias !549
  %strided.vec4171 = shufflevector <8 x float> %wide.vec4170, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.nqi = getelementptr inbounds nuw i8, ptr %gep4846, i64 544
  %wide.vec4172 = load <8 x float>, ptr %i.nqi, align 4, !tbaa !12, !alias.scope !558, !noalias !549
  %strided.vec4173 = shufflevector <8 x float> %wide.vec4172, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.nqj = fadd reassoc nsz arcp contract afn <4 x float> %strided.vec4161, %strided.vec4165
  %i.nqk = fadd reassoc nsz arcp contract afn <4 x float> %strided.vec4163, %strided.vec4167
end_hunk_11
begin_hunk_12_@process:bb.a
  store float %i.oko, ptr %.0903.lcssa.i, align 4, !tbaa !12, !noalias !549
  br label %bb.pw

bb.pu:                                            ; preds = %.lr.ph1129.i
  %i.okp = sub nsw i32 2, %i.ohp
  %i.okq = icmp ne i32 %i.ohp, 2
  %.neg952.i = sext i1 %i.okq to i32
  %reass.sub.i = sub nsw i32 %.neg952.i, %i.ohp
  %i.okr = sext i32 %i.okp to i64
  %i.oks = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.okr
  %i.okt = load ptr, ptr %i.oks, align 8, !tbaa !140, !noalias !551 ; 2 uses
  %i.oku = getelementptr [4 x i8], ptr %i.okt, i64 %i.ohl
  %i.okv = getelementptr [4 x i8], ptr %i.oku, i64 %i.nme ; 7 uses
  %i.okw = sext i32 %reass.sub.i to i64
  %i.okx = getelementptr [8 x i8], ptr %i.b, i64 %i.okw
  %i.oky = getelementptr i8, ptr %i.okx, i64 40
  %i.okz = load ptr, ptr %i.oky, align 8, !tbaa !140, !noalias !551 ; 2 uses
  %i.ola = getelementptr [4 x i8], ptr %i.okz, i64 %i.ohl
  %i.olb = getelementptr [4 x i8], ptr %i.ola, i64 %i.nme ; 7 uses
  br i1 %i.nmg, label %.lr.ph1101.i.preheader, label %._crit_edge1102.i

.lr.ph1101.i.preheader:                           ; preds = %bb.pu
  br i1 %min.iters.check4029, label %.lr.ph1101.i.preheader4609, label %vector.memcheck4009

vector.memcheck4009:                              ; preds = %.lr.ph1101.i.preheader
  %scevgep4010 = getelementptr i8, ptr %i.okt, i64 %i.ohh ; 2 uses
  %scevgep4016 = getelementptr i8, ptr %i.okz, i64 %i.ohh ; 2 uses
  %bound04017.a = icmp ult ptr %i.okv, %scevgep4015
  %bound14018.a = icmp ult ptr %scevgep4012, %scevgep4010
  %found.conflict4019.a = and i1 %bound04017.a, %bound14018.a
  %bound04020 = icmp ult ptr %i.okv, %scevgep4016
  %bound14021 = icmp ult ptr %i.olb, %scevgep4010
  %found.conflict4022 = and i1 %bound04020, %bound14021
  %conflict.rdx4023 = or i1 %found.conflict4019.a, %found.conflict4022
  %bound04024 = icmp ult ptr %scevgep4012, %scevgep4016
  %bound14025 = icmp ult ptr %i.olb, %scevgep4015
  %found.conflict4026 = and i1 %bound04024, %bound14025
  %conflict.rdx4027 = or i1 %conflict.rdx4023, %found.conflict4026
  br i1 %conflict.rdx4027, label %.lr.ph1101.i.preheader4609, label %vector.ph4030

vector.ph4030:                                    ; preds = %vector.memcheck4009
  %i.olc = getelementptr i8, ptr %i.olb, i64 %i.nnq
  %i.old = getelementptr i8, ptr %i.okv, i64 %i.nnq
  %i.ole = getelementptr i8, ptr %gep1138.i, i64 %i.nnq
  %i.olf = getelementptr i8, ptr %gep1136.i, i64 %i.nnq
  %i.olg = getelementptr i8, ptr %gep1134.i, i64 %i.nnq
  %i.olh = getelementptr i8, ptr %gep1132.i, i64 %i.nnq
  %i.oli = getelementptr i8, ptr %gep.i563, i64 %i.nnq
  br label %vector.body4032

vector.body4032:                                  ; preds = %vector.body4032, %vector.ph4030
  %index4033 = phi i64 [ 0, %vector.ph4030 ], [ %index.next4063, %vector.body4032 ] ; 2 uses
  %pointer.phi4034 = phi ptr [ %i.okv, %vector.ph4030 ], [ %ptr.ind4064, %vector.body4032 ] ; 2 uses
  %pointer.phi4035 = phi ptr [ %gep1134.i, %vector.ph4030 ], [ %ptr.ind4065, %vector.body4032 ] ; 2 uses
  %pointer.phi4036 = phi ptr [ %gep1132.i, %vector.ph4030 ], [ %ptr.ind4066, %vector.body4032 ] ; 2 uses
  %pointer.phi4037 = phi ptr [ %gep.i563, %vector.ph4030 ], [ %ptr.ind4067, %vector.body4032 ] ; 2 uses
  %vector.gep4038 = getelementptr i8, ptr %pointer.phi4037, <8 x i64> <i64 0, i64 8, i64 16, i64 24, i64 32, i64 40, i64 48, i64 56> ; 2 uses
  %vector.gep4039 = getelementptr i8, ptr %pointer.phi4036, <8 x i64> <i64 0, i64 8, i64 16, i64 24, i64 32, i64 40, i64 48, i64 56> ; 2 uses
  %vector.gep4040 = getelementptr i8, ptr %pointer.phi4035, <8 x i64> <i64 0, i64 8, i64 16, i64 24, i64 32, i64 40, i64 48, i64 56> ; 2 uses
  %vector.gep4041 = getelementptr i8, ptr %pointer.phi4034, <8 x i64> <i64 0, i64 8, i64 16, i64 24, i64 32, i64 40, i64 48, i64 56>
  %i.olj = extractelement <8 x ptr> %vector.gep4038, i64 0
  %i.olk = extractelement <8 x ptr> %vector.gep4039, i64 0
  %i.oll = extractelement <8 x ptr> %vector.gep4040, i64 0
  %i.olm = shl i64 %index4033, 3                  ; 3 uses
  %next.gep4042 = getelementptr i8, ptr %i.olb, i64 %i.olm
  %next.gep4043 = getelementptr i8, ptr %gep1138.i, i64 %i.olm ; 2 uses
  %next.gep4044 = getelementptr i8, ptr %gep1136.i, i64 %i.olm
  %wide.vec4045.a = load <16 x float>, ptr %i.olk, align 4, !tbaa !12, !alias.scope !566, !noalias !549 ; 2 uses
  %strided.vec4046.a = shufflevector <16 x float> %wide.vec4045.a, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec4047.a = shufflevector <16 x float> %wide.vec4045.a, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15> ; 2 uses
  %wide.vec4048.a = load <16 x float>, ptr %next.gep4042, align 4, !tbaa !12, !alias.scope !567, !noalias !549
  %strided.vec4049.a = shufflevector <16 x float> %wide.vec4048.a, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.oln = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec4049.a, %strided.vec4046.a
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.oln, <8 x ptr> align 4 %vector.gep4041, <8 x i1> splat (i1 true)), !tbaa !12, !alias.scope !568, !noalias !569
  %wide.vec4050.a = load <16 x float>, ptr %i.olj, align 4, !tbaa !12, !alias.scope !566, !noalias !549
  %strided.vec4051.a = shufflevector <16 x float> %wide.vec4050.a, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %wide.vec4052 = load <16 x float>, ptr %next.gep4044, align 8, !tbaa !12, !alias.scope !566, !noalias !549 ; 2 uses
  %strided.vec4053 = shufflevector <16 x float> %wide.vec4052, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec4054 = shufflevector <16 x float> %wide.vec4052, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %wide.vec4055 = load <16 x float>, ptr %i.oll, align 4, !tbaa !12, !alias.scope !566, !noalias !549
  %strided.vec4056 = shufflevector <16 x float> %wide.vec4055, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %wide.vec4057 = load <16 x float>, ptr %next.gep4043, align 8, !tbaa !12, !alias.scope !566, !noalias !549
  %strided.vec4058 = shufflevector <16 x float> %wide.vec4057, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.olo = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec4051.a, %strided.vec4056
  %i.olp = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec4053, %strided.vec4058
  %i.olq = fsub reassoc nsz arcp contract afn <8 x float> %i.olo, %i.olp
  %i.olr = fmul reassoc nsz arcp contract afn <8 x float> %i.olq, splat (float 5.000000e-01)
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.olr, <8 x ptr> align 4 %vector.gep4039, <8 x i1> splat (i1 true)), !tbaa !12, !alias.scope !566, !noalias !570
  %wide.gep4059 = getelementptr inbounds nuw i8, <8 x ptr> %vector.gep4038, i64 4
  %wide.gep4060 = getelementptr inbounds nuw i8, <8 x ptr> %vector.gep4040, i64 4
  %i.ols = getelementptr inbounds nuw i8, ptr %next.gep4043, i64 4
  %i.olt = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec4054, %strided.vec4047.a
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.olt, <8 x ptr> align 4 %wide.gep4059, <8 x i1> splat (i1 true)), !tbaa !12, !alias.scope !566, !noalias !570
  %wide.vec4061 = load <16 x float>, ptr %i.ols, align 4, !tbaa !12, !alias.scope !566, !noalias !549
  %strided.vec4062 = shufflevector <16 x float> %wide.vec4061, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.olu = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec4062, %strided.vec4047.a
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.olu, <8 x ptr> align 4 %wide.gep4060, <8 x i1> splat (i1 true)), !tbaa !12, !alias.scope !566, !noalias !570
  %index.next4063 = add nuw i64 %index4033, 8     ; 2 uses
  %ptr.ind4064 = getelementptr i8, ptr %pointer.phi4034, i64 64
  %ptr.ind4065 = getelementptr i8, ptr %pointer.phi4035, i64 64
  %ptr.ind4066 = getelementptr i8, ptr %pointer.phi4036, i64 64
  %ptr.ind4067 = getelementptr i8, ptr %pointer.phi4037, i64 64
  %i.olv = icmp eq i64 %index.next4063, %n.vec4031
  br i1 %i.olv, label %.lr.ph1101.i.preheader4609, label %vector.body4032, !llvm.loop !368

.lr.ph1101.i.preheader4609:                       ; preds = %vector.body4032, %vector.memcheck4009, %.lr.ph1101.i.preheader
  %.08931099.i.ph = phi i32 [ %i.nma, %vector.memcheck4009 ], [ %i.nma, %.lr.ph1101.i.preheader ], [ %i.nnp, %vector.body4032 ]
  %.08941098.i.ph = phi ptr [ %i.olb, %vector.memcheck4009 ], [ %i.olb, %.lr.ph1101.i.preheader ], [ %i.olc, %vector.body4032 ]
  %.08951097.i.ph = phi ptr [ %i.okv, %vector.memcheck4009 ], [ %i.okv, %.lr.ph1101.i.preheader ], [ %i.old, %vector.body4032 ]
  %.19001096.i.ph = phi ptr [ %gep1138.i, %vector.memcheck4009 ], [ %gep1138.i, %.lr.ph1101.i.preheader ], [ %i.ole, %vector.body4032 ]
  %.19021095.i.ph = phi ptr [ %gep1136.i, %vector.memcheck4009 ], [ %gep1136.i, %.lr.ph1101.i.preheader ], [ %i.olf, %vector.body4032 ]
  %.19041094.i.ph = phi ptr [ %gep1134.i, %vector.memcheck4009 ], [ %gep1134.i, %.lr.ph1101.i.preheader ], [ %i.olg, %vector.body4032 ]
  %.19061093.i.ph = phi ptr [ %gep1132.i, %vector.memcheck4009 ], [ %gep1132.i, %.lr.ph1101.i.preheader ], [ %i.olh, %vector.body4032 ]
  %.19081092.i.ph = phi ptr [ %gep.i563, %vector.memcheck4009 ], [ %gep.i563, %.lr.ph1101.i.preheader ], [ %i.oli, %vector.body4032 ]
  br label %.lr.ph1101.i

.lr.ph1101.i:                                     ; preds = %.lr.ph1101.i.preheader4609, %.lr.ph1101.i
  %.08931099.i = phi i32 [ %i.omy, %.lr.ph1101.i ], [ %.08931099.i.ph, %.lr.ph1101.i.preheader4609 ]
  %.08941098.i = phi ptr [ %i.omx, %.lr.ph1101.i ], [ %.08941098.i.ph, %.lr.ph1101.i.preheader4609 ] ; 2 uses
  %.08951097.i = phi ptr [ %i.omw, %.lr.ph1101.i ], [ %.08951097.i.ph, %.lr.ph1101.i.preheader4609 ] ; 2 uses
  %.19001096.i = phi ptr [ %i.omv, %.lr.ph1101.i ], [ %.19001096.i.ph, %.lr.ph1101.i.preheader4609 ] ; 3 uses
  %.19021095.i = phi ptr [ %i.omu, %.lr.ph1101.i ], [ %.19021095.i.ph, %.lr.ph1101.i.preheader4609 ] ; 3 uses
  %.19041094.i = phi ptr [ %i.omt, %.lr.ph1101.i ], [ %.19041094.i.ph, %.lr.ph1101.i.preheader4609 ] ; 3 uses
  %.19061093.i = phi ptr [ %i.oms, %.lr.ph1101.i ], [ %.19061093.i.ph, %.lr.ph1101.i.preheader4609 ] ; 4 uses
  %.19081092.i = phi ptr [ %i.omr, %.lr.ph1101.i ], [ %.19081092.i.ph, %.lr.ph1101.i.preheader4609 ] ; 3 uses
  %i.olw = load float, ptr %.19061093.i, align 4, !tbaa !12, !noalias !549
  %i.olx = load float, ptr %.08941098.i, align 4, !tbaa !12, !noalias !549
  %i.oly = fadd reassoc nsz arcp contract afn float %i.olx, %i.olw
  store float %i.oly, ptr %.08951097.i, align 4, !tbaa !12, !noalias !549
  %i.olz = load float, ptr %.19081092.i, align 4, !tbaa !12, !noalias !549
  %i.oma = load float, ptr %.19021095.i, align 4, !tbaa !12, !noalias !549
  %i.omb = load float, ptr %.19041094.i, align 4, !tbaa !12, !noalias !549
  %i.omc = load float, ptr %.19001096.i, align 4, !tbaa !12, !noalias !549
  %i.omd = fadd reassoc nsz arcp contract afn float %i.olz, %i.omb
  %i.ome = fadd reassoc nsz arcp contract afn float %i.oma, %i.omc
  %i.omf = fsub reassoc nsz arcp contract afn float %i.omd, %i.ome
  %i.omg = fmul reassoc nsz arcp contract afn float %i.omf, 5.000000e-01
  store float %i.omg, ptr %.19061093.i, align 4, !tbaa !12, !noalias !549
  %i.omh = getelementptr inbounds nuw i8, ptr %.19081092.i, i64 4
  %i.omi = getelementptr inbounds nuw i8, ptr %.19061093.i, i64 4
  %i.omj = getelementptr inbounds nuw i8, ptr %.19041094.i, i64 4
  %i.omk = getelementptr inbounds nuw i8, ptr %.19021095.i, i64 4
  %i.oml = getelementptr inbounds nuw i8, ptr %.19001096.i, i64 4
  %i.omm = load float, ptr %i.omi, align 4, !tbaa !12, !noalias !549 ; 2 uses
  %i.omn = load float, ptr %i.omk, align 4, !tbaa !12, !noalias !549
  %i.omo = fadd reassoc nsz arcp contract afn float %i.omn, %i.omm
  store float %i.omo, ptr %i.omh, align 4, !tbaa !12, !noalias !549
  %i.omp = load float, ptr %i.oml, align 4, !tbaa !12, !noalias !549
  %i.omq = fadd reassoc nsz arcp contract afn float %i.omp, %i.omm
  store float %i.omq, ptr %i.omj, align 4, !tbaa !12, !noalias !549
  %i.omr = getelementptr inbounds nuw i8, ptr %.19081092.i, i64 8 ; 2 uses
  %i.oms = getelementptr inbounds nuw i8, ptr %.19061093.i, i64 8 ; 2 uses
  %i.omt = getelementptr inbounds nuw i8, ptr %.19041094.i, i64 8 ; 2 uses
  %i.omu = getelementptr inbounds nuw i8, ptr %.19021095.i, i64 8 ; 2 uses
  %i.omv = getelementptr inbounds nuw i8, ptr %.19001096.i, i64 8 ; 2 uses
  %i.omw = getelementptr inbounds nuw i8, ptr %.08951097.i, i64 8 ; 2 uses
  %i.omx = getelementptr inbounds nuw i8, ptr %.08941098.i, i64 8 ; 2 uses
  %i.omy = add nuw nsw i32 %.08931099.i, 2        ; 3 uses
  %i.omz = icmp slt i32 %i.omy, %i.nmf
  br i1 %i.omz, label %.lr.ph1101.i, label %._crit_edge1102.i, !llvm.loop !369

._crit_edge1102.i:                                ; preds = %.lr.ph1101.i, %bb.pu
  %.1908.lcssa.i = phi ptr [ %gep.i563, %bb.pu ], [ %i.omr, %.lr.ph1101.i ]
  %.1906.lcssa.i = phi ptr [ %gep1132.i, %bb.pu ], [ %i.oms, %.lr.ph1101.i ] ; 2 uses
  %.1904.lcssa.i = phi ptr [ %gep1134.i, %bb.pu ], [ %i.omt, %.lr.ph1101.i ]
  %.1902.lcssa.i = phi ptr [ %gep1136.i, %bb.pu ], [ %i.omu, %.lr.ph1101.i ]
  %.1900.lcssa.i = phi ptr [ %gep1138.i, %bb.pu ], [ %i.omv, %.lr.ph1101.i ]
  %.0895.lcssa.i = phi ptr [ %i.okv, %bb.pu ], [ %i.omw, %.lr.ph1101.i ]
  %.0894.lcssa.i = phi ptr [ %i.olb, %bb.pu ], [ %i.omx, %.lr.ph1101.i ]
  %.0893.lcssa.i = phi i32 [ %i.nma, %bb.pu ], [ %i.omy, %.lr.ph1101.i ]
  %i.ona = icmp slt i32 %.0893.lcssa.i, %i.nmc
  br i1 %i.ona, label %bb.pv, label %bb.pw

bb.pv:                                            ; preds = %._crit_edge1102.i
  %i.onb = load float, ptr %.1906.lcssa.i, align 4, !tbaa !12, !noalias !549
  %i.onc = load float, ptr %.0894.lcssa.i, align 4, !tbaa !12, !noalias !549
  %i.ond = fadd reassoc nsz arcp contract afn float %i.onc, %i.onb
  store float %i.ond, ptr %.0895.lcssa.i, align 4, !tbaa !12, !noalias !549
  %i.one = load float, ptr %.1908.lcssa.i, align 4, !tbaa !12, !noalias !549
  %i.onf = load float, ptr %.1902.lcssa.i, align 4, !tbaa !12, !noalias !549
  %i.ong = load float, ptr %.1904.lcssa.i, align 4, !tbaa !12, !noalias !549
  %i.onh = load float, ptr %.1900.lcssa.i, align 4, !tbaa !12, !noalias !549
  %i.oni = fadd reassoc nsz arcp contract afn float %i.one, %i.ong
  %i.onj = fadd reassoc nsz arcp contract afn float %i.onf, %i.onh
  %i.onk = fsub reassoc nsz arcp contract afn float %i.oni, %i.onj
  %i.onl = fmul reassoc nsz arcp contract afn float %i.onk, 5.000000e-01
  store float %i.onl, ptr %.1906.lcssa.i, align 4, !tbaa !12, !noalias !549
  br label %bb.pw

bb.pw:                                            ; preds = %bb.pv, %._crit_edge1102.i, %bb.pt, %._crit_edge1121.i
  %indvars.iv.next1281.i = add nuw nsw i64 %indvars.iv1280.i, 1 ; 2 uses
  %exitcond1148.not = icmp eq i64 %indvars.iv.next1281.i, %i.lvy
  %indvar.next3948 = add i64 %indvar3947, 1
  br i1 %exitcond1148.not, label %._crit_edge1130.i, label %.lr.ph1129.i

.preheader1020.i:                                 ; preds = %._crit_edge1142.i, %.preheader1021.i
  br i1 %i.luh, label %.lr.ph1167.i, label %._crit_edge1168.i

.lr.ph1167.i:                                     ; preds = %.preheader1020.i
  %i.onm = add nuw nsw i32 %i.nma, 2              ; 3 uses
  %i.onn = add i32 %i.nmc, -2                     ; 4 uses
  %i.ono = sext i32 %i.onn to i64                 ; 9 uses
  br i1 %i.lvn, label %.lr.ph1150.i.preheader.preheader, label %._crit_edge1168.i

.lr.ph1150.i.preheader.preheader:                 ; preds = %.lr.ph1167.i
  %i.onp = zext nneg i32 %i.nma to i64            ; 2 uses
  %i.onq = add nsw i64 %i.ono, 4611686018427387901
  %i.onr = zext nneg i32 %i.nma to i64            ; 2 uses
  %i.ons = add nsw i64 %i.ono, 4611686018427387901
  %i.ont = zext nneg i32 %i.nma to i64            ; 2 uses
  %i.onu = add nsw i64 %i.ono, 4611686018427387901
  %i.onv = add nsw i64 %i.ono, -3
  %i.onw = add nsw i64 %i.ono, -3
  %i.onx = add nsw i64 %i.ono, -3
  br label %.lr.ph1150.i.preheader

.preheader1016.i:                                 ; preds = %.preheader1016.i.preheader, %._crit_edge1142.i
  %indvars.iv1286.i = phi i64 [ %indvars.iv.next1287.i, %._crit_edge1142.i ], [ 4, %.preheader1016.i.preheader ] ; 3 uses
  %i.ony = mul nuw nsw i64 %indvars.iv1286.i, 136 ; 5 uses
  %indvars.iv1286.tr.i = trunc nuw i64 %indvars.iv1286.i to i32
  %i.onz = shl nuw i32 %indvars.iv1286.tr.i, 1
  %i.ooa = and i32 %i.onz, 14                     ; 5 uses
  br i1 %i.nry, label %.epil.preheader4720, label %.preheader1016.i.new

.preheader1016.i.new:                             ; preds = %.preheader1016.i
  %i.oob = shl nuw nsw i32 %i.ooa, 1
  %i.ooc = lshr i32 %.fr1070, %i.oob
  %i.ood = and i32 %i.ooc, 3
  %i.ooe = zext nneg i32 %i.ood to i64
  %i.oof = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ooe
  %i.oog = load ptr, ptr %i.oof, align 8, !tbaa !140, !noalias !551
  %i.ooh = shl nuw nsw i32 %i.ooa, 1
  %i.ooi = or disjoint i32 %i.ooh, 2
  %i.ooj = lshr i32 %.fr1070, %i.ooi
  %i.ook = and i32 %i.ooj, 3
  %i.ool = zext nneg i32 %i.ook to i64
  %i.oom = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ool
  %i.oon = load ptr, ptr %i.oom, align 8, !tbaa !140, !noalias !551
  %i.ooo = shl nuw nsw i32 %i.ooa, 1
  %i.oop = lshr i32 %.fr1070, %i.ooo
  %i.ooq = and i32 %i.oop, 3
  %i.oor = zext nneg i32 %i.ooq to i64
  %i.oos = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.oor
  %i.oot = load ptr, ptr %i.oos, align 8, !tbaa !140, !noalias !551
  %i.oou = shl nuw nsw i32 %i.ooa, 1
  %i.oov = or disjoint i32 %i.oou, 2
  %i.oow = lshr i32 %.fr1070, %i.oov
  %i.oox = and i32 %i.oow, 3
  %i.ooy = zext nneg i32 %i.oox to i64
  %i.ooz = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ooy
  %i.opa = load ptr, ptr %i.ooz, align 8, !tbaa !140, !noalias !551
  br label %bb.py

._crit_edge1142.i.unr-lcssa:                      ; preds = %bb.py
  br i1 %lcmp.mod4725.not, label %._crit_edge1142.i, label %.epil.preheader4720

.epil.preheader4720:                              ; preds = %._crit_edge1142.i.unr-lcssa, %.preheader1016.i
  %indvars.iv1283.i.epil.init = phi i64 [ 4, %.preheader1016.i ], [ %indvars.iv.next1284.i.3, %._crit_edge1142.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod4726)
  br label %bb.px

bb.px:                                            ; preds = %bb.px, %.epil.preheader4720
  %indvars.iv1283.i.epil = phi i64 [ %indvars.iv1283.i.epil.init, %.epil.preheader4720 ], [ %indvars.iv.next1284.i.epil, %bb.px ] ; 3 uses
  %epil.iter4724 = phi i64 [ 0, %.epil.preheader4720 ], [ %epil.iter4724.next, %bb.px ]
  %i.opb = add nuw nsw i64 %indvars.iv1283.i.epil, %i.ony ; 2 uses
  %i.opc = trunc nuw nsw i64 %indvars.iv1283.i.epil to i32
  %i.opd = and i32 %i.opc, 1
  %i.ope = or disjoint i32 %i.opd, %i.ooa
  %i.opf = shl nuw nsw i32 %i.ope, 1
  %i.opg = lshr i32 %.fr1070, %i.opf
  %i.oph = and i32 %i.opg, 3
  %i.opi = getelementptr inbounds nuw [4 x i8], ptr %i.lub, i64 %i.opb
  %i.opj = load float, ptr %i.opi, align 4, !tbaa !12, !noalias !549
  %i.opk = zext nneg i32 %i.oph to i64
  %i.opl = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.opk
  %i.opm = load ptr, ptr %i.opl, align 8, !tbaa !140, !noalias !551
  %i.opn = getelementptr inbounds nuw [4 x i8], ptr %i.opm, i64 %i.opb
  store float %i.opj, ptr %i.opn, align 4, !tbaa !12, !noalias !549
  %indvars.iv.next1284.i.epil = add nuw nsw i64 %indvars.iv1283.i.epil, 1
  %epil.iter4724.next = add i64 %epil.iter4724, 1 ; 2 uses
  %epil.iter4724.cmp.not = icmp eq i64 %epil.iter4724.next, %xtraiter4723
  br i1 %epil.iter4724.cmp.not, label %._crit_edge1142.i, label %bb.px, !llvm.loop !370

._crit_edge1142.i:                                ; preds = %bb.px, %._crit_edge1142.i.unr-lcssa
  %indvars.iv.next1287.i = add nuw nsw i64 %indvars.iv1286.i, 1 ; 2 uses
  %exitcond1154.not = icmp eq i64 %indvars.iv.next1287.i, %smax1153
  br i1 %exitcond1154.not, label %.preheader1020.i, label %.preheader1016.i

bb.py:                                            ; preds = %bb.py, %.preheader1016.i.new
  %indvars.iv1283.i = phi i64 [ 4, %.preheader1016.i.new ], [ %indvars.iv.next1284.i.3, %bb.py ] ; 5 uses
  %niter4728 = phi i64 [ 0, %.preheader1016.i.new ], [ %niter4728.next.3, %bb.py ]
  %i.opo = add nuw nsw i64 %indvars.iv1283.i, %i.ony ; 2 uses
  %i.opp = getelementptr inbounds nuw [4 x i8], ptr %i.lub, i64 %i.opo
  %i.opq = load float, ptr %i.opp, align 16, !tbaa !12, !noalias !549
  %i.opr = getelementptr inbounds nuw [4 x i8], ptr %i.oog, i64 %i.opo
  store float %i.opq, ptr %i.opr, align 4, !tbaa !12, !noalias !549
  %indvars.iv.next1284.i = or disjoint i64 %indvars.iv1283.i, 1
  %i.ops = add nuw nsw i64 %indvars.iv.next1284.i, %i.ony ; 2 uses
  %i.opt = getelementptr inbounds nuw [4 x i8], ptr %i.lub, i64 %i.ops
  %i.opu = load float, ptr %i.opt, align 4, !tbaa !12, !noalias !549
  %i.opv = getelementptr inbounds nuw [4 x i8], ptr %i.oon, i64 %i.ops
  store float %i.opu, ptr %i.opv, align 4, !tbaa !12, !noalias !549
  %indvars.iv.next1284.i.1 = or disjoint i64 %indvars.iv1283.i, 2
  %i.opw = add nuw nsw i64 %indvars.iv.next1284.i.1, %i.ony ; 2 uses
  %i.opx = getelementptr inbounds nuw [4 x i8], ptr %i.lub, i64 %i.opw
  %i.opy = load float, ptr %i.opx, align 8, !tbaa !12, !noalias !549
  %i.opz = getelementptr inbounds nuw [4 x i8], ptr %i.oot, i64 %i.opw
  store float %i.opy, ptr %i.opz, align 4, !tbaa !12, !noalias !549
  %indvars.iv.next1284.i.2 = or disjoint i64 %indvars.iv1283.i, 3
  %i.oqa = add nuw nsw i64 %indvars.iv.next1284.i.2, %i.ony ; 2 uses
  %i.oqb = getelementptr inbounds nuw [4 x i8], ptr %i.lub, i64 %i.oqa
  %i.oqc = load float, ptr %i.oqb, align 4, !tbaa !12, !noalias !549
  %i.oqd = getelementptr inbounds nuw [4 x i8], ptr %i.opa, i64 %i.oqa
  store float %i.oqc, ptr %i.oqd, align 4, !tbaa !12, !noalias !549
  %indvars.iv.next1284.i.3 = add nuw nsw i64 %indvars.iv1283.i, 4 ; 2 uses
  %niter4728.next.3 = add i64 %niter4728, 4       ; 2 uses
  %niter4728.ncmp.3 = icmp eq i64 %niter4728.next.3, %unroll_iter4727
  br i1 %niter4728.ncmp.3, label %._crit_edge1142.i.unr-lcssa, label %bb.py

._crit_edge1168.i:                                ; preds = %._crit_edge1165.i.loopexit, %.lr.ph1167.i, %.preheader1020.i
  %i.oqe = select i1 %i.nlz, i32 4, i32 8         ; 3 uses
  %i.oqf = or disjoint i32 %i.oqe, %i.lxp         ; 7 uses
  %.neg951.i = select i1 %i.nmb, i32 -4, i32 -8   ; 2 uses
  %i.oqg = add nsw i32 %i.lxr, %.neg951.i         ; 3 uses
  br i1 %i.lvr, label %.lr.ph1182.i, label %._crit_edge1183.split.i

.lr.ph1182.i:                                     ; preds = %._crit_edge1168.i
  %i.oqh = icmp slt i32 %i.oqf, %i.oqg
  %i.oqi = load ptr, ptr @lmmse_gamma_out, align 8, !noalias !551 ; 7 uses
  %i.oqj = icmp eq ptr %i.oqi, null
  br i1 %i.oqh, label %.lr.ph1175.i.preheader, label %._crit_edge1183.split.i

.lr.ph1175.i.preheader:                           ; preds = %.lr.ph1182.i
  %reass.sub = sub nsw i32 %i.oqf, %i.lxp
  %.reass1178.i = add nsw i32 %reass.sub, 4
  %i.oqk = add i32 %.neg951.i, %i.lxr             ; 2 uses
  %i.oql = add i32 %i.oqk, %i.lxk
  %i.oqm = sub i32 %i.oql, %i.oqe                 ; 2 uses
  %i.oqn = zext i32 %i.oqm to i64
  %i.oqo = add nuw nsw i64 %i.oqn, 1              ; 2 uses
  %min.iters.check3703 = icmp ult i32 %i.oqm, 7
  %n.vec3705 = and i64 %i.oqo, 8589934584         ; 5 uses
  %i.oqp = trunc i64 %n.vec3705 to i32
  %i.oqq = add i32 %i.oqf, %i.oqp
  %i.oqr = shl nuw nsw i64 %n.vec3705, 2          ; 3 uses
  %i.oqs = shl nuw nsw i64 %n.vec3705, 4
  %cmp.n3738 = icmp eq i64 %i.oqo, %n.vec3705
  %i.oqt = add i32 %i.oqk, %i.lxl
  %i.oqu = sub i32 %i.oqt, %i.oqe                 ; 2 uses
  %i.oqv = zext i32 %i.oqu to i64
  %i.oqw = add nuw nsw i64 %i.oqv, 1              ; 2 uses
  %min.iters.check3680 = icmp ult i32 %i.oqu, 7
  %n.vec3682 = and i64 %i.oqw, 8589934584         ; 5 uses
  %i.oqx = trunc i64 %n.vec3682 to i32
  %i.oqy = add i32 %i.oqf, %i.oqx
  %i.oqz = shl nuw nsw i64 %n.vec3682, 2          ; 3 uses
  %i.ora = shl nuw nsw i64 %n.vec3682, 4
  %cmp.n3696 = icmp eq i64 %i.oqw, %n.vec3682
  br label %.lr.ph1175.i

.lr.ph1150.i.preheader:                           ; preds = %.lr.ph1150.i.preheader.preheader, %._crit_edge1165.i.loopexit
  %.08901166.i = phi i32 [ %i.pgq, %._crit_edge1165.i.loopexit ], [ 0, %.lr.ph1150.i.preheader.preheader ]
  br label %.lr.ph1150.i

.lr.ph1150.i:                                     ; preds = %.lr.ph1150.i.preheader, %._crit_edge1147.i
  %indvar3891 = phi i64 [ 0, %.lr.ph1150.i.preheader ], [ %indvar.next3892, %._crit_edge1147.i ] ; 2 uses
  %indvars.iv1292.i = phi i64 [ %i.lvt, %.lr.ph1150.i.preheader ], [ %indvars.iv.next1293.i, %._crit_edge1147.i ] ; 3 uses
  %i.orb = mul i64 %indvar3891, 544               ; 4 uses
  %scevgep3893 = getelementptr i8, ptr %i.lwk, i64 %i.orb
  %scevgep3895 = getelementptr i8, ptr %i.lwm, i64 %i.orb
  %indvars.iv1292.tr.i = trunc nuw i64 %indvars.iv1292.i to i32
  %i.orc = shl nuw i32 %indvars.iv1292.tr.i, 1
  %i.ord = and i32 %i.orc, 14                     ; 2 uses
  %i.ore = shl nuw nsw i32 %i.ord, 1
  %i.orf = lshr i32 %.fr1070, %i.ore              ; 3 uses
  %i.org = and i32 %i.orf, 1                      ; 2 uses
  %i.orh = or disjoint i32 %i.org, %i.onm         ; 2 uses
  %i.ori = icmp slt i32 %i.orh, %i.onn
  br i1 %i.ori, label %.lr.ph1146.i, label %._crit_edge1147.i

.lr.ph1146.i:                                     ; preds = %.lr.ph1150.i
  %i.orj = or disjoint i32 %i.org, %i.ord
  %i.ork = shl nuw nsw i32 %i.orj, 1
  %i.orl = lshr i32 %.fr1070, %i.ork
  %i.orm = and i32 %i.orl, 3
  %i.orn = mul nuw nsw i64 %indvars.iv1292.i, 136 ; 2 uses
  %i.oro = getelementptr inbounds nuw [4 x i8], ptr %i.ltx, i64 %i.orn ; 2 uses
  %i.orp = zext nneg i32 %i.orm to i64
  %i.orq = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.orp
  %i.orr = load ptr, ptr %i.orq, align 8, !tbaa !140, !noalias !551 ; 3 uses
  %i.ors = getelementptr inbounds nuw [4 x i8], ptr %i.orr, i64 %i.orn ; 2 uses
  %i.ort = zext nneg i32 %i.orh to i64            ; 5 uses
  %i.oru = and i32 %i.orf, 1
  %i.orv = or disjoint i32 %i.nma, %i.oru
  %i.orw = zext nneg i32 %i.orv to i64
  %i.orx = sub nsw i64 %i.onv, %i.orw             ; 2 uses
  %i.ory = lshr i64 %i.orx, 1
  %i.orz = add nuw i64 %i.ory, 1                  ; 2 uses
  %min.iters.check3903 = icmp ult i64 %i.orx, 8
  br i1 %min.iters.check3903, label %scalar.ph3902.preheader, label %vector.memcheck3890

scalar.ph3902.preheader:                          ; preds = %vector.body3909, %vector.memcheck3890, %.lr.ph1146.i
  %indvars.iv1289.i.ph = phi i64 [ %i.ort, %vector.memcheck3890 ], [ %i.ort, %.lr.ph1146.i ], [ %i.osu, %vector.body3909 ]
  br label %scalar.ph3902

vector.memcheck3890:                              ; preds = %.lr.ph1146.i
  %i.osa = and i32 %i.orf, 1
  %i.osb = zext nneg i32 %i.osa to i64            ; 2 uses
  %i.osc = or disjoint i64 %i.ont, %i.osb
  %i.osd = shl nuw nsw i64 %i.osc, 2              ; 4 uses
  %scevgep3894 = getelementptr i8, ptr %scevgep3893, i64 %i.osd
  %i.ose = or disjoint i64 %i.ont, %i.osb
  %i.osf = sub nsw i64 %i.onu, %i.ose
  %i.osg = shl i64 %i.osf, 2
end_hunk_12
begin_hunk_13_@_vng_lininterpolate:bb.a
  %i.vr = getelementptr inbounds nuw i8, ptr %.0179268, i64 20
  %i.vs = load i32, ptr %i.vr, align 4, !tbaa !15
  %i.vt = sext i32 %i.vs to i64
  %i.vu = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.vt ; 2 uses
  %i.vv = load float, ptr %i.vu, align 4, !tbaa !12
  %i.vw = fadd reassoc nsz arcp contract afn float %i.vv, %i.vq
  store float %i.vw, ptr %i.vu, align 4, !tbaa !12
  %i.vx = getelementptr inbounds nuw i8, ptr %.0179268, i64 24 ; 2 uses
  %.not209.1 = icmp eq i32 %i.vh, 0
  br i1 %.not209.1, label %.lr.ph273.preheader, label %.lr.ph

.lr.ph273.preheader:                              ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bb.bb
  %.1272.ph = phi ptr [ %i.tx, %bb.bb ], [ %.lcssa.unr, %.lr.ph.prol.loopexit ], [ %i.vx, %.lr.ph ]
  br label %.lr.ph273

._crit_edge274:                                   ; preds = %.lr.ph273
  %i.vy = load float, ptr %.1183, align 4, !tbaa !12
  %i.vz = load i32, ptr %i.wp, align 4, !tbaa !15
  %i.wa = sext i32 %i.vz to i64
  %i.wb = getelementptr inbounds [4 x i8], ptr %.1185, i64 %i.wa
  store float %i.vy, ptr %i.wb, align 4, !tbaa !12
  %.val.i = load <4 x float>, ptr %.1185, align 16, !tbaa !133
  %i.wc = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.val.i, <4 x float> zeroinitializer)
  store <4 x float> %i.wc, ptr %.1185, align 16, !tbaa !133
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #27
  %i.wd = add nsw i32 %.1181, 1                   ; 2 uses
  %i.we = icmp slt i32 %i.wd, %i.nw
  br i1 %i.we, label %bb.ba, label %._crit_edge281

.lr.ph273:                                        ; preds = %.lr.ph273.preheader, %.lr.ph273
  %i.wf = phi i32 [ %i.wq, %.lr.ph273 ], [ %i.oe, %.lr.ph273.preheader ]
  %.1272 = phi ptr [ %i.wp, %.lr.ph273 ], [ %.1272.ph, %.lr.ph273.preheader ] ; 3 uses
  %i.wg = load i32, ptr %.1272, align 4, !tbaa !15
  %i.wh = sext i32 %i.wg to i64                   ; 2 uses
  %i.wi = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.wh
  %i.wj = load float, ptr %i.wi, align 4, !tbaa !12
  %i.wk = getelementptr inbounds nuw i8, ptr %.1272, i64 4
  %i.wl = load i32, ptr %i.wk, align 4, !tbaa !15
  %i.wm = sitofp reassoc nsz arcp contract afn i32 %i.wl to float
  %i.wn = fdiv reassoc nsz arcp contract afn float %i.wj, %i.wm
  %i.wo = getelementptr inbounds [4 x i8], ptr %.1185, i64 %i.wh
  store float %i.wn, ptr %i.wo, align 4, !tbaa !12
  %i.wp = getelementptr inbounds nuw i8, ptr %.1272, i64 8 ; 2 uses
  %i.wq = add nsw i32 %i.wf, -1                   ; 2 uses
  %.not210 = icmp eq i32 %i.wq, 0
  br i1 %.not210, label %._crit_edge274, label %.lr.ph273, !llvm.loop !724

._crit_edge281:                                   ; preds = %._crit_edge274, %bb.ba
  %indvars.iv.next368 = add nuw nsw i64 %indvars.iv367, 1 ; 2 uses
  %exitcond371.not = icmp eq i64 %indvars.iv.next368, %wide.trip.count370
  br i1 %exitcond371.not, label %._crit_edge285.split, label %.lr.ph280
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x float> @llvm.x86.sse.max.ps(<4 x float>, <4 x float>) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.exp.f32(float) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.log.f64(double) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.exp.f64(double) #12

declare void @dt_gaussian_fast_blur(ptr noundef, ptr noundef, i32 noundef, i32 noundef, float noundef, float noundef, float noundef, i32 noundef) local_unnamed_addr #3

declare void @dt_iop_image_fill(ptr noundef, float noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare float @hypotf(float noundef, float noundef) local_unnamed_addr #22

declare ptr @dt_masks_calc_scharr_mask(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @dt_masks_calc_detail_blend(ptr noundef, ptr noundef, i64 noundef, float noundef, i32 noundef) local_unnamed_addr #3

declare void @dt_bauhaus_widget_set_quad_paint(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @dt_bauhaus_widget_set_quad_toggle(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i64 @g_signal_connect_data(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @dt_bauhaus_widget_set_quad_tooltip(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @dt_bauhaus_widget_get_quad_active(ptr noundef) local_unnamed_addr #3

declare ptr @gtk_label_new(ptr noundef) local_unnamed_addr #3

declare void @g_object_set(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

declare void @dt_bauhaus_slider_set_val(ptr noundef, float noundef) local_unnamed_addr #3

declare void @dt_dev_add_history_item(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.powi.f32.i32(float, i32) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #23

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr>, <8 x i1>, <8 x float>) #24

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(write)
declare void @llvm.masked.scatter.v8f32.v8p0(<8 x float>, <8 x ptr>, <8 x i1>) #25

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(write)
declare void @llvm.masked.scatter.v4f32.v4p0(<4 x float>, <4 x ptr>, <4 x i1>) #25

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <8 x float> @llvm.masked.load.v8f32.p0(ptr captures(none), <8 x i1>, <8 x float>) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.exp.v8f32(<8 x float>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v8f32(float, <8 x float>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.umax.v8i32(<8 x i32>, <8 x i32>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.fabs.v8f32(<8 x float>) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.masked.store.v4i8.p0(<4 x i8>, ptr captures(none), <4 x i1>) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.umax.v8i32(<8 x i32>) #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.abs.v8i32(<8 x i32>, i1 immarg) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.maxnum.v8f32(<8 x float>, <8 x float>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.vector.reduce.add.v8i8(<8 x i8>) #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.abs.v4i32(<4 x i32>, i1 immarg) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr>, <4 x i1>, <4 x float>) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.maxnum.v4f32(<4 x float>, <4 x float>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.vector.reduce.add.v4i8(<4 x i8>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v4f32(float, <4 x float>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fabs.v4f32(<4 x float>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.minnum.v8f32(<8 x float>, <8 x float>) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <3 x i16> @llvm.masked.load.v3i16.p0(ptr captures(none), <3 x i1>, <3 x i16>) #26

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <13 x i16> @llvm.masked.load.v13i16.p0(ptr captures(none), <13 x i1>, <13 x i16>) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.maxnum.v2f32(<2 x float>, <2 x float>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fabs.v2f32(<2 x float>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smax.v4i32(<4 x i32>, <4 x i32>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x float> @llvm.maxnum.v16f32(<16 x float>, <16 x float>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v2f32(float, <2 x float>) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <4 x i8> @llvm.masked.load.v4i8.p0(ptr captures(none), <4 x i1>, <4 x i8>) #26

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <4 x float> @llvm.masked.load.v4f32.p0(ptr captures(none), <4 x i1>, <4 x float>) #26

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #2 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #3 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #4 = { mustprogress nofree nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #8 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #9 = { nounwind uwtable "min-legal-vector-width"="128" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #10 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #11 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { mustprogress nofree nounwind willreturn memory(argmem: write, inaccessiblemem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #16 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #19 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="128" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #22 = { mustprogress nocallback nofree nosync nounwind willreturn memory(none) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #25 = { nocallback nofree nosync nounwind willreturn memory(write) }
attributes #26 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #27 = { nounwind }
attributes #28 = { nounwind allocsize(0) }
attributes #29 = { nounwind willreturn memory(none) }
attributes #30 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = !{!"float", !7, i64 0}
!12 = !{!11, !11, i64 0}
!13 = !{!"any pointer", !7, i64 0}
!14 = !{!13, !13, i64 0}
!15 = !{!8, !8, i64 0}
!16 = !{!"p1 _ZTS8_GModule", !13, i64 0}
!17 = !{!"p1 int", !13, i64 0}
!18 = !{!"long", !7, i64 0}
!19 = !{!"dt_dev_histogram_stats_t", !8, i64 0, !18, i64 8, !8, i64 16, !8, i64 20}
!20 = !{!"p1 _ZTS12dt_develop_t", !13, i64 0}
!21 = !{!"dt_pthread_mutex_t", !7, i64 0}
!22 = !{!"p1 _ZTS25dt_develop_blend_params_t", !13, i64 0}
!23 = !{!"p1 _ZTS11_GHashTable", !13, i64 0}
!24 = !{!"", !23, i64 0, !23, i64 8}
!25 = !{!"p1 _ZTS15dt_iop_module_t", !13, i64 0}
!26 = !{!"", !25, i64 0, !8, i64 8}
!27 = !{!"", !24, i64 0, !26, i64 16}
!28 = !{!"p1 _ZTS10_GtkWidget", !13, i64 0}
!29 = !{!"p1 _ZTS7_GSList", !13, i64 0}
!30 = !{!"p1 _ZTS18dt_iop_module_so_t", !13, i64 0}
!31 = !{!"dt_iop_module_t", !8, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !13, i64 48, !13, i64 56, !13, i64 64, !13, i64 72, !13, i64 80, !13, i64 88, !13, i64 96, !13, i64 104, !13, i64 112, !13, i64 120, !13, i64 128, !13, i64 136, !13, i64 144, !13, i64 152, !13, i64 160, !13, i64 168, !13, i64 176, !13, i64 184, !13, i64 192, !13, i64 200, !13, i64 208, !13, i64 216, !13, i64 224, !13, i64 232, !13, i64 240, !13, i64 248, !13, i64 256, !13, i64 264, !13, i64 272, !13, i64 280, !13, i64 288, !13, i64 296, !13, i64 304, !13, i64 312, !13, i64 320, !13, i64 328, !13, i64 336, !13, i64 344, !13, i64 352, !13, i64 360, !13, i64 368, !13, i64 376, !13, i64 384, !13, i64 392, !13, i64 400, !13, i64 408, !13, i64 416, !13, i64 424, !13, i64 432, !13, i64 440, !16, i64 448, !7, i64 456, !8, i64 476, !8, i64 480, !8, i64 484, !8, i64 488, !8, i64 492, !8, i64 496, !8, i64 500, !8, i64 504, !7, i64 512, !7, i64 528, !7, i64 544, !7, i64 560, !7, i64 576, !7, i64 592, !17, i64 608, !19, i64 616, !7, i64 640, !8, i64 656, !8, i64 660, !20, i64 664, !8, i64 672, !8, i64 676, !13, i64 680, !13, i64 688, !8, i64 696, !13, i64 704, !21, i64 712, !13, i64 752, !13, i64 760, !22, i64 768, !22, i64 776, !13, i64 784, !27, i64 792, !28, i64 824, !28, i64 832, !28, i64 840, !28, i64 848, !28, i64 856, !28, i64 864, !28, i64 872, !8, i64 880, !28, i64 888, !28, i64 896, !28, i64 904, !29, i64 912, !29, i64 920, !28, i64 928, !28, i64 936, !8, i64 944, !30, i64 952, !8, i64 960, !7, i64 964, !8, i64 1092, !28, i64 1096, !13, i64 1104, !8, i64 1112}
!32 = !{!31, !20, i64 664}
!33 = !{!"dt_iop_roi_t", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !11, i64 16}
!34 = !{!33, !11, i64 16}
!35 = !{i64 0, i64 4, !15, i64 4, i64 4, !15, i64 8, i64 4, !15, i64 12, i64 4, !15, i64 16, i64 4, !12}
!36 = !{!33, !8, i64 0}
!37 = !{!33, !8, i64 4}
!38 = !{!"p1 _ZTS18dt_dev_pixelpipe_t", !13, i64 0}
!39 = !{!"p1 _ZTS18dt_histogram_roi_t", !13, i64 0}
!40 = !{!"dt_dev_histogram_collection_params_t", !39, i64 0, !8, i64 8}
!41 = !{!"short", !7, i64 0}
!42 = !{!"", !41, i64 0, !41, i64 2}
!43 = !{!"", !8, i64 0, !7, i64 16}
!44 = !{!"dt_iop_buffer_dsc_t", !8, i64 0, !8, i64 4, !8, i64 8, !7, i64 12, !42, i64 48, !43, i64 64, !7, i64 96, !8, i64 112}
!45 = !{!"p1 float", !13, i64 0}
!46 = !{!"dt_dev_distorted_mask_cache_t", !45, i64 0, !33, i64 8, !18, i64 32, !18, i64 40}
!47 = !{!"dt_dev_pixelpipe_iop_t", !25, i64 0, !38, i64 8, !13, i64 16, !13, i64 24, !8, i64 32, !8, i64 36, !40, i64 40, !17, i64 56, !19, i64 64, !7, i64 88, !11, i64 104, !8, i64 108, !8, i64 112, !18, i64 120, !8, i64 128, !8, i64 132, !33, i64 136, !33, i64 156, !33, i64 176, !33, i64 196, !8, i64 216, !8, i64 220, !44, i64 224, !44, i64 352, !7, i64 480, !8, i64 516, !23, i64 520, !46, i64 528, !46, i64 576}
!48 = !{!"p1 _ZTS6_GList", !13, i64 0}
!49 = !{!"p1 omnipotent char", !13, i64 0}
!50 = !{!"dt_image_raw_parameters_t", !8, i64 0, !8, i64 3}
!51 = !{!"double", !7, i64 0}
!52 = !{!"dt_image_geoloc_t", !51, i64 0, !51, i64 8, !51, i64 16}
!53 = !{!"_color_harmony_t", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !7, i64 16}
!54 = !{!"p1 _ZTS16dt_cache_entry_t", !13, i64 0}
!55 = !{!"dt_image_t", !8, i64 0, !8, i64 4, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20, !11, i64 24, !11, i64 28, !11, i64 32, !11, i64 36, !8, i64 40, !7, i64 44, !7, i64 108, !7, i64 172, !7, i64 300, !7, i64 364, !7, i64 428, !7, i64 492, !18, i64 560, !8, i64 568, !7, i64 572, !7, i64 800, !7, i64 864, !7, i64 928, !7, i64 992, !8, i64 1120, !7, i64 1124, !8, i64 1380, !8, i64 1384, !8, i64 1388, !8, i64 1392, !8, i64 1396, !8, i64 1400, !8, i64 1404, !8, i64 1408, !8, i64 1412, !8, i64 1416, !11, i64 1420, !8, i64 1424, !8, i64 1428, !8, i64 1432, !8, i64 1436, !8, i64 1440, !8, i64 1444, !18, i64 1448, !18, i64 1456, !18, i64 1464, !18, i64 1472, !8, i64 1480, !44, i64 1488, !7, i64 1616, !49, i64 1656, !8, i64 1664, !8, i64 1668, !50, i64 1672, !52, i64 1680, !53, i64 1704, !41, i64 1736, !7, i64 1738, !8, i64 1748, !8, i64 1752, !11, i64 1756, !11, i64 1760, !7, i64 1776, !7, i64 1792, !7, i64 1840, !48, i64 1856, !54, i64 1864, !8, i64 1872, !8, i64 1876}
!56 = !{!47, !13, i64 16}
!57 = !{!31, !13, i64 704}
!58 = !{!55, !8, i64 1428}
!59 = !{!"dt_iop_demosaic_data_t", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !11, i64 16, !7, i64 24, !11, i64 120, !11, i64 124, !11, i64 128, !11, i64 132, !8, i64 136, !11, i64 140, !8, i64 144}
!60 = !{!59, !8, i64 8}
!61 = !{!"p1 _ZTS15dt_masks_form_t", !13, i64 0}
!62 = !{!"p1 _ZTS19dt_masks_form_gui_t", !13, i64 0}
!63 = !{!"dt_dev_proxy_exposure_t", !25, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32}
!64 = !{!"p1 _ZTS15dt_lib_module_t", !13, i64 0}
!65 = !{!"", !64, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !13, i64 48, !13, i64 56, !13, i64 64}
!66 = !{!"", !64, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32}
!67 = !{!"", !63, i64 0, !25, i64 40, !65, i64 48, !66, i64 120}
!68 = !{!"dt_dev_chroma_t", !25, i64 0, !25, i64 8, !7, i64 16, !7, i64 32, !7, i64 64, !8, i64 96}
!69 = !{!"", !25, i64 0, !25, i64 8, !13, i64 16}
!70 = !{!"", !28, i64 0, !28, i64 8, !8, i64 16, !8, i64 20, !11, i64 24, !11, i64 28, !8, i64 32}
!71 = !{!"", !28, i64 0, !28, i64 8, !8, i64 16, !8, i64 20, !8, i64 24, !11, i64 28}
!72 = !{!"", !28, i64 0, !28, i64 8}
!73 = !{!"", !28, i64 0, !8, i64 8}
!74 = !{!"", !28, i64 0, !28, i64 8, !28, i64 16, !28, i64 24, !28, i64 32}
!75 = !{!"dt_dev_viewport_t", !28, i64 0, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !51, i64 32, !51, i64 40, !51, i64 48, !8, i64 56, !8, i64 60, !8, i64 64, !11, i64 68, !11, i64 72, !11, i64 76, !38, i64 80, !28, i64 88, !20, i64 96}
!76 = !{!"dt_develop_t", !8, i64 0, !8, i64 4, !8, i64 8, !13, i64 16, !51, i64 24, !51, i64 32, !8, i64 40, !8, i64 44, !8, i64 48, !8, i64 52, !8, i64 56, !51, i64 64, !8, i64 72, !8, i64 76, !8, i64 80, !25, i64 88, !38, i64 96, !55, i64 112, !8, i64 2000, !8, i64 2004, !21, i64 2008, !8, i64 2048, !48, i64 2056, !8, i64 2064, !25, i64 2072, !8, i64 2080, !48, i64 2088, !48, i64 2096, !8, i64 2104, !48, i64 2112, !48, i64 2120, !17, i64 2128, !17, i64 2136, !8, i64 2144, !8, i64 2148, !48, i64 2152, !61, i64 2160, !62, i64 2168, !48, i64 2176, !8, i64 2184, !8, i64 2188, !8, i64 2192, !11, i64 2196, !11, i64 2200, !25, i64 2208, !8, i64 2216, !67, i64 2224, !68, i64 2384, !69, i64 2496, !70, i64 2520, !71, i64 2560, !72, i64 2592, !73, i64 2608, !74, i64 2624, !28, i64 2664, !28, i64 2672, !75, i64 2680, !75, i64 2784, !8, i64 2888, !8, i64 2892, !8, i64 2896, !8, i64 2900, !48, i64 2904, !8, i64 2912, !20, i64 2920}
!77 = !{!"p1 _ZTS7_GtkBox", !13, i64 0}
!78 = !{!"p1 _ZTS11dt_action_t", !13, i64 0}
!79 = !{!"_gui_collapsible_section_t", !77, i64 0, !49, i64 8, !28, i64 16, !28, i64 24, !28, i64 32, !77, i64 40, !78, i64 48}
!80 = !{!"dt_iop_demosaic_gui_data_t", !28, i64 0, !28, i64 8, !28, i64 16, !28, i64 24, !28, i64 32, !28, i64 40, !28, i64 48, !28, i64 56, !28, i64 64, !28, i64 72, !28, i64 80, !28, i64 88, !28, i64 96, !28, i64 104, !28, i64 112, !79, i64 120, !8, i64 176, !8, i64 180, !8, i64 184, !8, i64 188, !8, i64 192, !11, i64 196, !11, i64 200}
!81 = !{!80, !8, i64 180}
!82 = !{!80, !8, i64 176}
!83 = !{!59, !8, i64 144}
!84 = !{!80, !8, i64 184}
!85 = !{!"dt_codepath_t", !8, i64 0}
!86 = !{!"p1 _ZTS11_JsonParser", !13, i64 0}
!87 = !{!"p1 _ZTS9dt_conf_t", !13, i64 0}
!88 = !{!"p1 _ZTS8dt_lib_t", !13, i64 0}
!89 = !{!"p1 _ZTS17dt_view_manager_t", !13, i64 0}
!90 = !{!"p1 _ZTS12dt_control_t", !13, i64 0}
!91 = !{!"p1 _ZTS19dt_control_signal_t", !13, i64 0}
!92 = !{!"p1 _ZTS12dt_gui_gtk_t", !13, i64 0}
!93 = !{!"p1 _ZTS17dt_mipmap_cache_t", !13, i64 0}
!94 = !{!"p1 _ZTS16dt_image_cache_t", !13, i64 0}
!95 = !{!"p1 _ZTS12dt_bauhaus_t", !13, i64 0}
!96 = !{!"p1 _ZTS13dt_database_t", !13, i64 0}
!97 = !{!"p1 _ZTS14dt_pwstorage_t", !13, i64 0}
!98 = !{!"p1 _ZTS11dt_camctl_t", !13, i64 0}
!99 = !{!"p1 _ZTS15dt_collection_t", !13, i64 0}
!100 = !{!"p1 _ZTS14dt_selection_t", !13, i64 0}
!101 = !{!"p1 _ZTS11dt_points_t", !13, i64 0}
!102 = !{!"p1 _ZTS12dt_imageio_t", !13, i64 0}
!103 = !{!"p1 _ZTS11dt_opencl_t", !13, i64 0}
!104 = !{!"p1 _ZTS9dt_dbus_t", !13, i64 0}
!105 = !{!"p1 _ZTS9dt_undo_t", !13, i64 0}
!106 = !{!"p1 _ZTS16dt_colorspaces_t", !13, i64 0}
!107 = !{!"p1 _ZTS9dt_l10n_t", !13, i64 0}
!108 = !{!"p1 _ZTS9lua_State", !13, i64 0}
!109 = !{!"_Bool", !7, i64 0}
!110 = !{!"p1 _ZTS10_GMainLoop", !13, i64 0}
!111 = !{!"p1 _ZTS13_GMainContext", !13, i64 0}
!112 = !{!"p1 _ZTS12_GThreadPool", !13, i64 0}
!113 = !{!"p1 _ZTS12_GAsyncQueue", !13, i64 0}
!114 = !{!"", !108, i64 0, !21, i64 8, !7, i64 48, !109, i64 96, !109, i64 97, !110, i64 104, !111, i64 112, !112, i64 120, !113, i64 128, !113, i64 136, !113, i64 144}
!115 = !{!"p1 _ZTS10_GTimeZone", !13, i64 0}
!116 = !{!"p1 _ZTS10_GDateTime", !13, i64 0}
!117 = !{!"dt_sys_resources_t", !18, i64 0, !18, i64 8, !17, i64 16, !17, i64 24, !8, i64 32}
!118 = !{!"dt_backthumb_t", !51, i64 0, !51, i64 8, !8, i64 16, !8, i64 20}
!119 = !{!"dt_gimp_t", !8, i64 0, !49, i64 8, !49, i64 16, !8, i64 24, !8, i64 28}
!120 = !{!"dt_splash_t", !28, i64 0, !28, i64 8, !28, i64 16, !28, i64 24, !8, i64 32}
!121 = !{!"darktable_t", !85, i64 0, !8, i64 4, !8, i64 8, !48, i64 16, !48, i64 24, !48, i64 32, !48, i64 40, !86, i64 48, !87, i64 56, !20, i64 64, !88, i64 72, !89, i64 80, !90, i64 88, !91, i64 96, !92, i64 104, !93, i64 112, !94, i64 120, !95, i64 128, !96, i64 136, !97, i64 144, !98, i64 152, !99, i64 160, !100, i64 168, !101, i64 176, !102, i64 184, !103, i64 192, !104, i64 200, !105, i64 208, !106, i64 216, !107, i64 224, !7, i64 232, !21, i64 2792, !21, i64 2832, !21, i64 2872, !21, i64 2912, !21, i64 2952, !21, i64 2992, !49, i64 3032, !49, i64 3040, !49, i64 3048, !49, i64 3056, !49, i64 3064, !49, i64 3072, !49, i64 3080, !49, i64 3088, !49, i64 3096, !49, i64 3104, !49, i64 3112, !49, i64 3120, !49, i64 3128, !114, i64 3136, !48, i64 3288, !51, i64 3296, !48, i64 3304, !8, i64 3312, !7, i64 3316, !8, i64 3512, !8, i64 3516, !115, i64 3520, !116, i64 3528, !117, i64 3536, !118, i64 3576, !119, i64 3600, !120, i64 3632, !8, i64 3672}
!122 = !{!121, !8, i64 8}
!123 = !{!59, !8, i64 0}
!124 = !{!55, !11, i64 20}
!125 = !{!80, !8, i64 192}
!126 = !{!31, !13, i64 680}
!127 = !{!55, !8, i64 1748}
!128 = !{!"dt_iop_demosaic_params_t", !8, i64 0, !11, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !11, i64 20, !11, i64 24, !11, i64 28, !11, i64 32, !8, i64 36, !11, i64 40, !8, i64 44}
!129 = !{!128, !11, i64 28}
!130 = !{!80, !11, i64 200}
!131 = !{!80, !11, i64 196}
!132 = !{!80, !8, i64 188}
!133 = !{!7, !7, i64 0}
!134 = !{!"llvm.loop.isvectorized", i32 1}
!135 = !{!"llvm.loop.unroll.runtime.disable"}
!136 = !{!"llvm.loop.unroll.disable"}
!137 = !{!128, !11, i64 24}
!138 = !{!"branch_weights", i32 4, i32 12}
!139 = !{!59, !8, i64 12}
!140 = !{!45, !45, i64 0}
!141 = !{!59, !11, i64 16}
!142 = !{!59, !11, i64 140}
!143 = !{!59, !8, i64 136}
!144 = !{!"dt_iop_demosaic_global_data_t", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !8, i64 32, !8, i64 36, !8, i64 40, !8, i64 44, !8, i64 48, !8, i64 52, !8, i64 56, !8, i64 60, !8, i64 64, !8, i64 68, !8, i64 72, !8, i64 76, !8, i64 80, !8, i64 84, !8, i64 88, !8, i64 92, !8, i64 96, !8, i64 100, !8, i64 104, !8, i64 108, !8, i64 112, !8, i64 116, !8, i64 120, !8, i64 124, !8, i64 128, !8, i64 132, !8, i64 136, !8, i64 140, !8, i64 144, !8, i64 148, !8, i64 152, !8, i64 156, !8, i64 160, !8, i64 164, !8, i64 168, !8, i64 172, !8, i64 176, !8, i64 180, !8, i64 184, !8, i64 188, !8, i64 192, !8, i64 196, !8, i64 200, !8, i64 204, !8, i64 208, !45, i64 216}
!145 = !{!144, !45, i64 216}
!146 = !{!59, !8, i64 4}
!147 = !{!"dt_action_t", !8, i64 0, !49, i64 8, !49, i64 16, !13, i64 24, !78, i64 32, !78, i64 40}
!148 = !{!"dt_iop_module_so_t", !147, i64 0, !13, i64 48, !13, i64 56, !13, i64 64, !13, i64 72, !13, i64 80, !13, i64 88, !13, i64 96, !13, i64 104, !13, i64 112, !13, i64 120, !13, i64 128, !13, i64 136, !13, i64 144, !13, i64 152, !13, i64 160, !13, i64 168, !13, i64 176, !13, i64 184, !13, i64 192, !13, i64 200, !13, i64 208, !13, i64 216, !13, i64 224, !13, i64 232, !13, i64 240, !13, i64 248, !13, i64 256, !13, i64 264, !13, i64 272, !13, i64 280, !13, i64 288, !13, i64 296, !13, i64 304, !13, i64 312, !13, i64 320, !13, i64 328, !13, i64 336, !13, i64 344, !13, i64 352, !13, i64 360, !13, i64 368, !13, i64 376, !13, i64 384, !13, i64 392, !13, i64 400, !13, i64 408, !13, i64 416, !13, i64 424, !13, i64 432, !13, i64 440, !13, i64 448, !13, i64 456, !13, i64 464, !13, i64 472, !13, i64 480, !16, i64 488, !7, i64 496, !13, i64 520, !8, i64 528, !13, i64 536, !8, i64 544, !8, i64 548}
!149 = !{!148, !13, i64 520}
!150 = !{!128, !8, i64 12}
!151 = !{!128, !8, i64 44}
!152 = !{!55, !8, i64 1496}
end_hunk_13
