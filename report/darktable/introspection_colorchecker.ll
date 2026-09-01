Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_colorchecker?download=true
inline.NumInlined: 70
inline.NumDeleted: 28
loop-unroll.NumCompletelyUnrolled: 50
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 64
begin_hunk_0_@_colorchecker_update_sliders:bb.a
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.m, float noundef %i.q) #23
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !169
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 784 ; 2 uses
  %i.u = load i32, ptr %i.e, align 8, !tbaa !162
  %i.v = sext i32 %i.u to i64
  %i.w = getelementptr inbounds [4 x i8], ptr %i.t, i64 %i.v
  %i.x = load float, ptr %i.w, align 4, !tbaa !13
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.s, float noundef %i.x) #23
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !170
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 980 ; 2 uses
  %i.ab = load i32, ptr %i.e, align 8, !tbaa !162
  %i.ac = sext i32 %i.ab to i64
  %i.ad = getelementptr inbounds [4 x i8], ptr %i.aa, i64 %i.ac
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !13
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.z, float noundef %i.ae) #23
  %i.af = load i32, ptr %i.e, align 8, !tbaa !162
  %i.ag = sext i32 %i.af to i64                   ; 2 uses
  %i.ah = getelementptr inbounds [4 x i8], ptr %i.t, i64 %i.ag
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !13 ; 2 uses
  %i.aj = fmul reassoc nsz arcp contract afn float %i.ai, %i.ai
  %i.ak = getelementptr inbounds [4 x i8], ptr %i.aa, i64 %i.ag
  %i.al = load float, ptr %i.ak, align 4, !tbaa !13 ; 2 uses
  %i.am = fmul reassoc nsz arcp contract afn float %i.al, %i.al
  %i.an = fadd reassoc nsz arcp contract afn float %i.am, %i.aj
  %i.ao = tail call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.an)
  %i.ap = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !171
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.aq, float noundef %i.ao) #23
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.o
  %i.as = load float, ptr %i.ar, align 4, !tbaa !13
  %i.at = fsub reassoc nsz arcp contract afn float %i.q, %i.as
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.m, float noundef %i.at) #23
  %i.au = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !169
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 784 ; 2 uses
  %i.ax = load i32, ptr %i.e, align 8, !tbaa !162
  %i.ay = sext i32 %i.ax to i64                   ; 2 uses
  %i.az = getelementptr inbounds [4 x i8], ptr %i.aw, i64 %i.ay
  %i.ba = load float, ptr %i.az, align 4, !tbaa !13
  %i.bb = getelementptr inbounds nuw i8, ptr %i.b, i64 196 ; 2 uses
  %i.bc = getelementptr inbounds [4 x i8], ptr %i.bb, i64 %i.ay
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !13
  %i.be = fsub reassoc nsz arcp contract afn float %i.ba, %i.bd
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.av, float noundef %i.be) #23
  %i.bf = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !170
  %i.bh = getelementptr inbounds nuw i8, ptr %i.b, i64 980 ; 2 uses
  %i.bi = load i32, ptr %i.e, align 8, !tbaa !162
  %i.bj = sext i32 %i.bi to i64                   ; 2 uses
  %i.bk = getelementptr inbounds [4 x i8], ptr %i.bh, i64 %i.bj
  %i.bl = load float, ptr %i.bk, align 4, !tbaa !13
  %i.bm = getelementptr inbounds nuw i8, ptr %i.b, i64 392 ; 2 uses
  %i.bn = getelementptr inbounds [4 x i8], ptr %i.bm, i64 %i.bj
  %i.bo = load float, ptr %i.bn, align 4, !tbaa !13
  %i.bp = fsub reassoc nsz arcp contract afn float %i.bl, %i.bo
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.bg, float noundef %i.bp) #23
  %i.bq = load i32, ptr %i.e, align 8, !tbaa !162
  %i.br = sext i32 %i.bq to i64                   ; 4 uses
  %i.bs = getelementptr inbounds [4 x i8], ptr %i.bb, i64 %i.br
  %i.bt = load float, ptr %i.bs, align 4, !tbaa !13 ; 2 uses
  %i.bu = fmul reassoc nsz arcp contract afn float %i.bt, %i.bt
  %i.bv = getelementptr inbounds [4 x i8], ptr %i.bm, i64 %i.br
  %i.bw = load float, ptr %i.bv, align 4, !tbaa !13 ; 2 uses
  %i.bx = fmul reassoc nsz arcp contract afn float %i.bw, %i.bw
  %i.by = fadd reassoc nsz arcp contract afn float %i.bx, %i.bu
  %i.bz = tail call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.by)
  %i.ca = getelementptr inbounds [4 x i8], ptr %i.aw, i64 %i.br
  %i.cb = load float, ptr %i.ca, align 4, !tbaa !13 ; 2 uses
  %i.cc = fmul reassoc nsz arcp contract afn float %i.cb, %i.cb
  %i.cd = getelementptr inbounds [4 x i8], ptr %i.bh, i64 %i.br
  %i.ce = load float, ptr %i.cd, align 4, !tbaa !13 ; 2 uses
  %i.cf = fmul reassoc nsz arcp contract afn float %i.ce, %i.ce
  %i.cg = fadd reassoc nsz arcp contract afn float %i.cf, %i.cc
  %i.ch = tail call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.cg)
  %i.ci = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !171
  %i.ck = fsub reassoc nsz arcp contract afn float %i.ch, %i.bz
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.cj, float noundef %i.ck) #23
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.a
  ret void
}

declare void @dt_bauhaus_slider_set(ptr noundef, float noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #16

; Function Attrs: nounwind uwtable
define void @gui_update(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !161
  tail call void @_colorchecker_rebuild_patch_list(ptr noundef %0)
  tail call void @_colorchecker_update_sliders(ptr noundef %0)
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !165
  tail call void @gtk_widget_queue_draw(ptr noundef %i.c) #23
  ret void
}

declare void @gtk_widget_queue_draw(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind memory(write, inaccessiblemem: readwrite, target_mem: none) uwtable
define void @init(ptr nofree noundef writeonly captures(none) initializes((676, 700), (704, 712)) %0) local_unnamed_addr #17 {
vector.ph:
  %i.a = tail call noalias dereferenceable_or_null(1180) ptr @calloc(i64 noundef 1, i64 noundef 1180) #28
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 680
  store ptr %i.a, ptr %i.b, align 8, !tbaa !150
  %i.c = tail call noalias dereferenceable_or_null(1180) ptr @calloc(i64 noundef 1, i64 noundef 1180) #28 ; 20 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 688
  store ptr %i.c, ptr %i.d, align 16, !tbaa !172
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 676
  store i32 0, ptr %i.e, align 4, !tbaa !173
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 696
  store i32 1180, ptr %i.f, align 8, !tbaa !174
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 704
  store ptr null, ptr %i.g, align 16, !tbaa !161
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 1176
  store i32 24, ptr %i.h, align 4, !tbaa !18
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 392
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 980
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 196
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 784
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 588
  store <8 x float> <float 3.799000e+01, float 6.571000e+01, float 4.993000e+01, float 4.314000e+01, float 5.511000e+01, float 7.072000e+01, float 6.266000e+01, float 4.002000e+01>, ptr %i.m, align 4, !tbaa !13
  store <8 x float> <float 3.799000e+01, float 6.571000e+01, float 4.993000e+01, float 4.314000e+01, float 5.511000e+01, float 7.072000e+01, float 6.266000e+01, float 4.002000e+01>, ptr %i.c, align 4, !tbaa !13
  store <8 x float> <float 1.356000e+01, float 1.813000e+01, float -4.880000e+00, float -1.310000e+01, float 8.840000e+00, float -3.340000e+01, float 3.607000e+01, float 1.041000e+01>, ptr %i.l, align 4, !tbaa !13
  store <8 x float> <float 1.356000e+01, float 1.813000e+01, float -4.880000e+00, float -1.310000e+01, float 8.840000e+00, float -3.340000e+01, float 3.607000e+01, float 1.041000e+01>, ptr %i.k, align 4, !tbaa !13
  store <8 x float> <float 1.406000e+01, float 1.781000e+01, float -2.193000e+01, float 2.191000e+01, float -2.540000e+01, float -2.000000e-01, float 5.710000e+01, float -4.596000e+01>, ptr %i.j, align 4, !tbaa !13
  store <8 x float> <float 1.406000e+01, float 1.781000e+01, float -2.193000e+01, float 2.191000e+01, float -2.540000e+01, float -2.000000e-01, float 5.710000e+01, float -4.596000e+01>, ptr %i.i, align 4, !tbaa !13
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 620
  store <8 x float> <float 5.112000e+01, float 3.033000e+01, float f0x42910F5C, float 7.194000e+01, float 2.878000e+01, float 5.526000e+01, float 4.210000e+01, float 8.173000e+01>, ptr %i.n, align 4, !tbaa !13
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store <8 x float> <float 5.112000e+01, float 3.033000e+01, float f0x42910F5C, float 7.194000e+01, float 2.878000e+01, float 5.526000e+01, float 4.210000e+01, float 8.173000e+01>, ptr %i.o, align 4, !tbaa !13
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 816
  store <8 x float> <float 4.824000e+01, float 2.298000e+01, float -2.371000e+01, float 1.936000e+01, float 1.418000e+01, float -3.834000e+01, float 5.338000e+01, float 4.040000e+00>, ptr %i.p, align 4, !tbaa !13
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 228
  store <8 x float> <float 4.824000e+01, float 2.298000e+01, float -2.371000e+01, float 1.936000e+01, float 1.418000e+01, float -3.834000e+01, float 5.338000e+01, float 4.040000e+00>, ptr %i.q, align 4, !tbaa !13
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 1012
  store <8 x float> <float 1.625000e+01, float -2.159000e+01, float 5.726000e+01, float 6.786000e+01, float -5.030000e+01, float 3.137000e+01, float 2.819000e+01, float 7.982000e+01>, ptr %i.r, align 4, !tbaa !13
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 424
  store <8 x float> <float 1.625000e+01, float -2.159000e+01, float 5.726000e+01, float 6.786000e+01, float -5.030000e+01, float 3.137000e+01, float 2.819000e+01, float 7.982000e+01>, ptr %i.s, align 4, !tbaa !13
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 652
  store <8 x float> <float 5.194000e+01, float 5.104000e+01, float 9.654000e+01, float 8.126000e+01, float 6.677000e+01, float 5.087000e+01, float 3.566000e+01, float 2.046000e+01>, ptr %i.t, align 4, !tbaa !13
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  store <8 x float> <float 5.194000e+01, float 5.104000e+01, float 9.654000e+01, float 8.126000e+01, float 6.677000e+01, float 5.087000e+01, float 3.566000e+01, float 2.046000e+01>, ptr %i.u, align 4, !tbaa !13
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 848
  store <8 x float> <float 4.999000e+01, float -2.863000e+01, float -4.300000e-01, float -6.400000e-01, float -7.300000e-01, float -1.500000e-01, float -4.200000e-01, float -8.000000e-02>, ptr %i.v, align 4, !tbaa !13
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 260
  store <8 x float> <float 4.999000e+01, float -2.863000e+01, float -4.300000e-01, float -6.400000e-01, float -7.300000e-01, float -1.500000e-01, float -4.200000e-01, float -8.000000e-02>, ptr %i.w, align 4, !tbaa !13
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 1044
  store <8 x float> <float -1.457000e+01, float -2.864000e+01, float 1.190000e+00, float -3.400000e-01, float -5.000000e-01, float -2.700000e-01, float -1.230000e+00, float -9.700000e-01>, ptr %i.x, align 4, !tbaa !13
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 456
  store <8 x float> <float -1.457000e+01, float -2.864000e+01, float 1.190000e+00, float -3.400000e-01, float -5.000000e-01, float -2.700000e-01, float -1.230000e+00, float -9.700000e-01>, ptr %i.y, align 4, !tbaa !13
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #18

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, inaccessiblemem: readwrite, target_mem: none) uwtable
define void @init_global(ptr nofree noundef writeonly captures(none) initializes((520, 528)) %0) local_unnamed_addr #19 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(4) ptr @malloc(i64 noundef 4) #27 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 520
  store ptr %i.a, ptr %i.b, align 8, !tbaa !175
  store i32 -999, ptr %i.a, align 4, !tbaa !176
  ret void
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define void @cleanup_global(ptr nofree noundef captures(none) %0) local_unnamed_addr #14 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 520 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !175
  tail call void @free(ptr noundef %i.b) #23
  store ptr null, ptr %i.a, align 8, !tbaa !175
  ret void
}

; Function Attrs: nounwind uwtable
define void @color_picker_apply(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef readnone captures(none) %2) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !150  ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.d = load ptr, ptr %i.c, align 16, !tbaa !161 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 1176
  %i.f = load i32, ptr %i.e, align 4, !tbaa !18   ; 4 uses
  %i.g = icmp slt i32 %i.f, 1
  br i1 %i.g, label %bb.c, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 512
  %3 = load <3 x float>, ptr %i.h, align 16, !tbaa !13 ; 3 uses
  %.not41 = icmp eq i32 %i.f, 1
  br i1 %.not41, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 196 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 392 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 492
  %i.l = load i32, ptr %i.k, align 4, !tbaa !178
  %i.m = icmp eq i32 %i.l, 1
  br i1 %i.m, label %.lr.ph.split.us.preheader, label %._crit_edge

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %wide.trip.count47 = zext nneg i32 %i.f to i64
  %.pre = load float, ptr %i.b, align 4, !tbaa !13 ; 2 uses
  %.pre50 = load float, ptr %i.i, align 4, !tbaa !13 ; 2 uses
  %.pre51 = load float, ptr %i.j, align 4, !tbaa !13 ; 2 uses
  %4 = shufflevector <3 x float> %3, <3 x float> poison, <2 x i32> <i32 1, i32 1> ; 3 uses
  %i.n = shufflevector <3 x float> %3, <3 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %5 = shufflevector <3 x float> %3, <3 x float> poison, <2 x i32> <i32 2, i32 2> ; 3 uses
  %i.o = add nsw i64 %wide.trip.count47, -1       ; 3 uses
  %xtraiter = and i64 %i.o, 1
  %i.p = icmp eq i32 %i.f, 2
  br i1 %i.p, label %.lr.ph.split.us.epil.preheader, label %.lr.ph.split.us.preheader.new

.lr.ph.split.us.preheader.new:                    ; preds = %.lr.ph.split.us.preheader
  %unroll_iter = and i64 %i.o, -2
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us, %.lr.ph.split.us.preheader.new
  %i.q = phi float [ %.pre51, %.lr.ph.split.us.preheader.new ], [ %i.bs, %.lr.ph.split.us ] ; 2 uses
  %i.r = phi float [ %.pre50, %.lr.ph.split.us.preheader.new ], [ %i.br, %.lr.ph.split.us ] ; 2 uses
  %i.s = phi float [ %.pre, %.lr.ph.split.us.preheader.new ], [ %i.bq, %.lr.ph.split.us ] ; 2 uses
  %indvars.iv44 = phi i64 [ 1, %.lr.ph.split.us.preheader.new ], [ %indvars.iv.next45.1, %.lr.ph.split.us ] ; 6 uses
  %.03139.us = phi i32 [ 0, %.lr.ph.split.us.preheader.new ], [ %spec.select.us.1, %.lr.ph.split.us ]
  %niter = phi i64 [ 0, %.lr.ph.split.us.preheader.new ], [ %niter.next.1, %.lr.ph.split.us ]
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv44
  %i.u = load float, ptr %i.t, align 4, !tbaa !13 ; 2 uses
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv44
  %i.w = load float, ptr %i.v, align 4, !tbaa !13 ; 2 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv44
  %i.y = load float, ptr %i.x, align 4, !tbaa !13 ; 2 uses
  %i.z = insertelement <2 x float> poison, float %i.u, i64 0
  %i.aa = insertelement <2 x float> %i.z, float %i.s, i64 1
  %i.ab = fsub reassoc nsz arcp contract afn <2 x float> %i.n, %i.aa ; 2 uses
  %i.ac = fmul reassoc nsz arcp contract afn <2 x float> %i.ab, %i.ab
  %i.ad = insertelement <2 x float> poison, float %i.w, i64 0
  %i.ae = insertelement <2 x float> %i.ad, float %i.r, i64 1
  %i.af = fsub reassoc nsz arcp contract afn <2 x float> %4, %i.ae ; 2 uses
  %i.ag = fmul reassoc nsz arcp contract afn <2 x float> %i.af, %i.af
  %i.ah = fadd reassoc nsz arcp contract afn <2 x float> %i.ag, %i.ac
  %i.ai = insertelement <2 x float> poison, float %i.y, i64 0
  %i.aj = insertelement <2 x float> %i.ai, float %i.q, i64 1
  %i.ak = fsub reassoc nsz arcp contract afn <2 x float> %5, %i.aj ; 2 uses
  %i.al = fmul reassoc nsz arcp contract afn <2 x float> %i.ak, %i.ak
  %i.am = fadd reassoc nsz arcp contract afn <2 x float> %i.ah, %i.al ; 2 uses
  %shift = shufflevector <2 x float> %i.am, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.an = fcmp olt <2 x float> %i.am, %shift
  %i.ao = extractelement <2 x i1> %i.an, i64 0    ; 4 uses
  %i.ap = trunc nuw nsw i64 %indvars.iv44 to i32
  %spec.select.us = select i1 %i.ao, i32 %i.ap, i32 %.03139.us
  %indvars.iv.next45 = add nuw nsw i64 %indvars.iv44, 1 ; 4 uses
  %i.aq = select i1 %i.ao, float %i.u, float %i.s ; 2 uses
  %i.ar = select i1 %i.ao, float %i.w, float %i.r ; 2 uses
  %i.as = select i1 %i.ao, float %i.y, float %i.q ; 2 uses
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next45
  %i.au = load float, ptr %i.at, align 4, !tbaa !13 ; 2 uses
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv.next45
  %i.aw = load float, ptr %i.av, align 4, !tbaa !13 ; 2 uses
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.next45
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !13 ; 2 uses
  %i.az = insertelement <2 x float> poison, float %i.au, i64 0
  %i.ba = insertelement <2 x float> %i.az, float %i.aq, i64 1
  %i.bb = fsub reassoc nsz arcp contract afn <2 x float> %i.n, %i.ba ; 2 uses
  %i.bc = fmul reassoc nsz arcp contract afn <2 x float> %i.bb, %i.bb
  %i.bd = insertelement <2 x float> poison, float %i.aw, i64 0
  %i.be = insertelement <2 x float> %i.bd, float %i.ar, i64 1
  %i.bf = fsub reassoc nsz arcp contract afn <2 x float> %4, %i.be ; 2 uses
  %i.bg = fmul reassoc nsz arcp contract afn <2 x float> %i.bf, %i.bf
  %i.bh = fadd reassoc nsz arcp contract afn <2 x float> %i.bg, %i.bc
  %i.bi = insertelement <2 x float> poison, float %i.ay, i64 0
  %i.bj = insertelement <2 x float> %i.bi, float %i.as, i64 1
  %i.bk = fsub reassoc nsz arcp contract afn <2 x float> %5, %i.bj ; 2 uses
  %i.bl = fmul reassoc nsz arcp contract afn <2 x float> %i.bk, %i.bk
  %i.bm = fadd reassoc nsz arcp contract afn <2 x float> %i.bh, %i.bl ; 2 uses
  %shift.1 = shufflevector <2 x float> %i.bm, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.bn = fcmp olt <2 x float> %i.bm, %shift.1
  %i.bo = extractelement <2 x i1> %i.bn, i64 0    ; 4 uses
  %i.bp = trunc nuw nsw i64 %indvars.iv.next45 to i32
  %spec.select.us.1 = select i1 %i.bo, i32 %i.bp, i32 %spec.select.us ; 3 uses
  %indvars.iv.next45.1 = add nuw nsw i64 %indvars.iv44, 2 ; 2 uses
  %i.bq = select i1 %i.bo, float %i.au, float %i.aq ; 2 uses
  %i.br = select i1 %i.bo, float %i.aw, float %i.ar ; 2 uses
  %i.bs = select i1 %i.bo, float %i.ay, float %i.as ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph.split.us

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph.split.us
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.split.us.epil.preheader

.lr.ph.split.us.epil.preheader:                   ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.split.us.preheader
  %.epil.init = phi float [ %.pre51, %.lr.ph.split.us.preheader ], [ %i.bs, %._crit_edge.loopexit.unr-lcssa ]
  %.epil.init55 = phi float [ %.pre50, %.lr.ph.split.us.preheader ], [ %i.br, %._crit_edge.loopexit.unr-lcssa ]
  %.epil.init57 = phi float [ %.pre, %.lr.ph.split.us.preheader ], [ %i.bq, %._crit_edge.loopexit.unr-lcssa ]
  %indvars.iv44.epil.init = phi i64 [ 1, %.lr.ph.split.us.preheader ], [ %indvars.iv.next45.1, %._crit_edge.loopexit.unr-lcssa ] ; 4 uses
  %.03139.us.epil.init = phi i32 [ 0, %.lr.ph.split.us.preheader ], [ %spec.select.us.1, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod59 = trunc i64 %i.o to i1
  tail call void @llvm.assume(i1 %lcmp.mod59)
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv44.epil.init
  %i.bu = load float, ptr %i.bt, align 4, !tbaa !13
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv44.epil.init
  %i.bw = load float, ptr %i.bv, align 4, !tbaa !13
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv44.epil.init
  %i.by = load float, ptr %i.bx, align 4, !tbaa !13
  %i.bz = insertelement <2 x float> poison, float %i.bu, i64 0
  %i.ca = insertelement <2 x float> %i.bz, float %.epil.init57, i64 1
  %i.cb = fsub reassoc nsz arcp contract afn <2 x float> %i.n, %i.ca ; 2 uses
  %i.cc = fmul reassoc nsz arcp contract afn <2 x float> %i.cb, %i.cb
  %i.cd = insertelement <2 x float> poison, float %i.bw, i64 0
  %i.ce = insertelement <2 x float> %i.cd, float %.epil.init55, i64 1
  %i.cf = fsub reassoc nsz arcp contract afn <2 x float> %4, %i.ce ; 2 uses
  %i.cg = fmul reassoc nsz arcp contract afn <2 x float> %i.cf, %i.cf
  %i.ch = fadd reassoc nsz arcp contract afn <2 x float> %i.cg, %i.cc
  %i.ci = insertelement <2 x float> poison, float %i.by, i64 0
  %i.cj = insertelement <2 x float> %i.ci, float %.epil.init, i64 1
  %i.ck = fsub reassoc nsz arcp contract afn <2 x float> %5, %i.cj ; 2 uses
  %i.cl = fmul reassoc nsz arcp contract afn <2 x float> %i.ck, %i.ck
  %i.cm = fadd reassoc nsz arcp contract afn <2 x float> %i.ch, %i.cl ; 2 uses
  %shift.epil = shufflevector <2 x float> %i.cm, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.cn = fcmp olt <2 x float> %i.cm, %shift.epil
  %i.co = extractelement <2 x i1> %i.cn, i64 0
  %i.cp = trunc nuw nsw i64 %indvars.iv44.epil.init to i32
  %spec.select.us.epil = select i1 %i.co, i32 %i.cp, i32 %.03139.us.epil.init
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.split.us.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %.lr.ph, %.preheader
  %.031.lcssa = phi i32 [ 0, %.preheader ], [ 0, %.lr.ph ], [ %spec.select.us.1, %._crit_edge.loopexit.unr-lcssa ], [ %spec.select.us.epil, %.lr.ph.split.us.epil.preheader ] ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.d, i64 60 ; 3 uses
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !166
  %.not = icmp eq i32 %.031.lcssa, %i.cr
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  store i32 %.031.lcssa, ptr %i.cq, align 4, !tbaa !166
  %i.cs = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  store i32 %.031.lcssa, ptr %i.cs, align 8, !tbaa !162
  %i.ct = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !179
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 104
  %i.cv = atomicrmw add ptr %i.cu, i32 1 seq_cst, align 4 ; 0 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !164
  %i.cy = load i32, ptr %i.cq, align 4, !tbaa !166
  tail call void @dt_bauhaus_combobox_set(ptr noundef %i.cx, i32 noundef %i.cy) #23
  tail call void @_colorchecker_update_sliders(ptr noundef nonnull %0)
  %i.cz = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !179
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 104
  %i.db = atomicrmw sub ptr %i.da, i32 1 seq_cst, align 4 ; 0 uses
  %i.dc = load ptr, ptr %i.d, align 8, !tbaa !165
  tail call void @gtk_widget_queue_draw(ptr noundef %i.dc) #23
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.b, %bb.a
  ret void
}

declare void @dt_bauhaus_combobox_set(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define void @gui_init(ptr noundef initializes((704, 712)) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca [1024 x i8], align 16             ; 4 uses
  %i.b = alloca [8 x ptr], align 8                ; 5 uses
  %i.c = tail call ptr @dt_alloc_aligned(i64 noundef 72) #23 ; 17 uses
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %_iop_gui_alloc.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(72) %i.c, i8 0, i64 72, i1 false)
  br label %_iop_gui_alloc.exit

_iop_gui_alloc.exit:                              ; preds = %bb.a, %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 704
  store ptr %i.c, ptr %i.d, align 16, !tbaa !161
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 688
  %i.f = load ptr, ptr %i.e, align 16, !tbaa !172
  %i.g = tail call ptr @dtgtk_drawing_area_new_with_aspect_ratio(double noundef f0x3FE5555555555555) #23 ; 2 uses
  store ptr %i.g, ptr %i.c, align 8, !tbaa !165
  tail call void @gtk_widget_add_events(ptr noundef %i.g, i32 noundef 8964) #23
  %i.h = load ptr, ptr %i.c, align 8, !tbaa !165
  %i.i = tail call i64 @g_signal_connect_data(ptr noundef %i.h, ptr noundef nonnull @.str.22, ptr noundef nonnull @checker_draw, ptr noundef %0, ptr noundef null, i32 noundef 0) #23 ; 0 uses
  %i.j = load ptr, ptr %i.c, align 8, !tbaa !165
  %i.k = tail call i64 @g_signal_connect_data(ptr noundef %i.j, ptr noundef nonnull @.str.23, ptr noundef nonnull @checker_button_press, ptr noundef %0, ptr noundef null, i32 noundef 0) #23 ; 0 uses
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !165
  %i.m = tail call i64 @g_signal_connect_data(ptr noundef %i.l, ptr noundef nonnull @.str.24, ptr noundef nonnull @checker_motion_notify, ptr noundef %0, ptr noundef null, i32 noundef 0) #23 ; 0 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  store i32 0, ptr %i.n, align 8, !tbaa !162
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 60
  store i32 -1, ptr %i.o, align 4, !tbaa !166
  %i.p = tail call ptr @dt_bauhaus_combobox_new(ptr noundef %0) #23 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 5 uses
  store ptr %i.p, ptr %i.q, align 8, !tbaa !164
  %i.r = tail call ptr @dt_bauhaus_widget_set_label(ptr noundef %i.p, ptr noundef null, ptr noundef nonnull @.str.25) #23 ; 0 uses
  %i.s = load ptr, ptr %i.q, align 8, !tbaa !164
  %i.t = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.26, i32 noundef 5) #23
  tail call void @gtk_widget_set_tooltip_text(ptr noundef %i.s, ptr noundef %i.t) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.u = getelementptr inbounds nuw i8, ptr %i.f, i64 1176 ; 2 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !18
  %i.w = icmp sgt i32 %i.v, 0
  br i1 %i.w, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %_iop_gui_alloc.exit
  %i.x = load ptr, ptr %i.q, align 8, !tbaa !164
  %i.y = call ptr @dt_color_picker_new(ptr noundef nonnull %0, i32 noundef 3, ptr noundef %i.x) #23 ; 0 uses
  %i.z = call ptr @dt_bauhaus_slider_new_with_range(ptr noundef nonnull %0, float noundef -1.000000e+02, float noundef 2.000000e+02, float noundef 0.000000e+00, float noundef 0.000000e+00, i32 noundef 2) #23 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 3 uses
  store ptr %i.z, ptr %i.aa, align 8, !tbaa !168
  %i.ab = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.27, i32 noundef 5) #23
  call void @gtk_widget_set_tooltip_text(ptr noundef %i.z, ptr noundef %i.ab) #23
  %i.ac = load ptr, ptr %i.aa, align 8, !tbaa !168
  %i.ad = call ptr @dt_bauhaus_widget_set_label(ptr noundef %i.ac, ptr noundef null, ptr noundef nonnull @.str.28) #23 ; 0 uses
  %i.ae = call ptr @dt_bauhaus_slider_new_with_range(ptr noundef nonnull %0, float noundef -2.560000e+02, float noundef 2.560000e+02, float noundef 0.000000e+00, float noundef 0.000000e+00, i32 noundef 2) #23 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 6 uses
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !169
  %i.ag = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.29, i32 noundef 5) #23
  call void @gtk_widget_set_tooltip_text(ptr noundef %i.ae, ptr noundef %i.ag) #23
  %i.ah = load ptr, ptr %i.af, align 8, !tbaa !169
  %i.ai = call ptr @dt_bauhaus_widget_set_label(ptr noundef %i.ah, ptr noundef null, ptr noundef nonnull @.str.30) #23 ; 0 uses
  %i.aj = load ptr, ptr %i.af, align 8, !tbaa !169
  call void @dt_bauhaus_slider_set_stop(ptr noundef %i.aj, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 1.000000e+00, float noundef 2.000000e-01) #23
  %i.ak = load ptr, ptr %i.af, align 8, !tbaa !169
  call void @dt_bauhaus_slider_set_stop(ptr noundef %i.ak, float noundef 5.000000e-01, float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef 1.000000e+00) #23
  %i.al = load ptr, ptr %i.af, align 8, !tbaa !169
  call void @dt_bauhaus_slider_set_stop(ptr noundef %i.al, float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef 0.000000e+00, float noundef 2.000000e-01) #23
  %i.am = call ptr @dt_bauhaus_slider_new_with_range(ptr noundef nonnull %0, float noundef -2.560000e+02, float noundef 2.560000e+02, float noundef 0.000000e+00, float noundef 0.000000e+00, i32 noundef 2) #23 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 7 uses
  store ptr %i.am, ptr %i.an, align 8, !tbaa !170
  %i.ao = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.31, i32 noundef 5) #23
  call void @gtk_widget_set_tooltip_text(ptr noundef %i.am, ptr noundef %i.ao) #23
  %i.ap = load ptr, ptr %i.an, align 8, !tbaa !170
  %i.aq = call ptr @dt_bauhaus_widget_set_label(ptr noundef %i.ap, ptr noundef null, ptr noundef nonnull @.str.32) #23 ; 0 uses
  %i.ar = load ptr, ptr %i.an, align 8, !tbaa !170
  call void @dt_bauhaus_slider_set_stop(ptr noundef %i.ar, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 1.000000e+00) #23
  %i.as = load ptr, ptr %i.an, align 8, !tbaa !170
  call void @dt_bauhaus_slider_set_stop(ptr noundef %i.as, float noundef 5.000000e-01, float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef 1.000000e+00) #23
  %i.at = load ptr, ptr %i.an, align 8, !tbaa !170
  call void @dt_bauhaus_slider_set_stop(ptr noundef %i.at, float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef 0.000000e+00) #23
  %i.au = call ptr @dt_bauhaus_slider_new_with_range(ptr noundef nonnull %0, float noundef -1.280000e+02, float noundef 1.280000e+02, float noundef 0.000000e+00, float noundef 0.000000e+00, i32 noundef 2) #23 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 3 uses
  store ptr %i.au, ptr %i.av, align 8, !tbaa !171
  %i.aw = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.33, i32 noundef 5) #23
  call void @gtk_widget_set_tooltip_text(ptr noundef %i.au, ptr noundef %i.aw) #23
  %i.ax = load ptr, ptr %i.av, align 8, !tbaa !171
  %i.ay = call ptr @dt_bauhaus_widget_set_label(ptr noundef %i.ax, ptr noundef null, ptr noundef nonnull @.str.34) #23 ; 0 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  store i32 0, ptr %i.az, align 8, !tbaa !167
  %i.ba = call ptr @dt_bauhaus_combobox_new(ptr noundef nonnull %0) #23 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 6 uses
  store ptr %i.ba, ptr %i.bb, align 8, !tbaa !218
  %i.bc = call ptr @dt_bauhaus_widget_set_label(ptr noundef %i.ba, ptr noundef null, ptr noundef nonnull @.str.35) #23 ; 0 uses
  %i.bd = load ptr, ptr %i.bb, align 8, !tbaa !218
  %i.be = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.36, i32 noundef 5) #23
  call void @gtk_widget_set_tooltip_text(ptr noundef %i.bd, ptr noundef %i.be) #23
  %i.bf = load ptr, ptr %i.bb, align 8, !tbaa !218
  %i.bg = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.37, i32 noundef 5) #23
  call void @dt_bauhaus_combobox_add(ptr noundef %i.bf, ptr noundef %i.bg) #23
  %i.bh = load ptr, ptr %i.bb, align 8, !tbaa !218
  %i.bi = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.38, i32 noundef 5) #23
  call void @dt_bauhaus_combobox_add(ptr noundef %i.bh, ptr noundef %i.bi) #23
  %i.bj = call ptr @gtk_box_new(i32 noundef 1, i32 noundef 0) #23
  %i.bk = load <4 x ptr>, ptr %i.c, align 8, !tbaa !219
  store <4 x ptr> %i.bk, ptr %i.b, align 8, !tbaa !15
  %i.bl = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.bm = load <2 x ptr>, ptr %i.an, align 8, !tbaa !219
  store <2 x ptr> %i.bm, ptr %i.bl, align 8, !tbaa !15
  %i.bn = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.bo = load ptr, ptr %i.bb, align 8, !tbaa !218
  store ptr %i.bo, ptr %i.bn, align 8, !tbaa !15
  %i.bp = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store ptr inttoptr (i64 -1 to ptr), ptr %i.bp, align 8, !tbaa !15
  %i.bq = call ptr @dt_gui_box_add(ptr noundef nonnull @.str.39, i32 noundef 1616, ptr noundef nonnull @__FUNCTION__.gui_init, ptr noundef %i.bj, ptr noundef nonnull %i.b) #23
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 824
  store ptr %i.bq, ptr %i.br, align 8, !tbaa !220
  %i.bs = load ptr, ptr %i.q, align 8, !tbaa !164
  %i.bt = call i64 @g_signal_connect_data(ptr noundef %i.bs, ptr noundef nonnull @.str.40, ptr noundef nonnull @patch_callback, ptr noundef nonnull %0, ptr noundef null, i32 noundef 0) #23 ; 0 uses
  %i.bu = load ptr, ptr %i.aa, align 8, !tbaa !168
  %i.bv = call i64 @g_signal_connect_data(ptr noundef %i.bu, ptr noundef nonnull @.str.40, ptr noundef nonnull @target_L_callback, ptr noundef nonnull %0, ptr noundef null, i32 noundef 0) #23 ; 0 uses
  %i.bw = load ptr, ptr %i.af, align 8, !tbaa !169
  %i.bx = call i64 @g_signal_connect_data(ptr noundef %i.bw, ptr noundef nonnull @.str.40, ptr noundef nonnull @target_a_callback, ptr noundef nonnull %0, ptr noundef null, i32 noundef 0) #23 ; 0 uses
  %i.by = load ptr, ptr %i.an, align 8, !tbaa !170
  %i.bz = call i64 @g_signal_connect_data(ptr noundef %i.by, ptr noundef nonnull @.str.40, ptr noundef nonnull @target_b_callback, ptr noundef nonnull %0, ptr noundef null, i32 noundef 0) #23 ; 0 uses
  %i.ca = load ptr, ptr %i.av, align 8, !tbaa !171
  %i.cb = call i64 @g_signal_connect_data(ptr noundef %i.ca, ptr noundef nonnull @.str.40, ptr noundef nonnull @target_C_callback, ptr noundef nonnull %0, ptr noundef null, i32 noundef 0) #23 ; 0 uses
  %i.cc = load ptr, ptr %i.bb, align 8, !tbaa !218
  %i.cd = call i64 @g_signal_connect_data(ptr noundef %i.cc, ptr noundef nonnull @.str.40, ptr noundef nonnull @target_callback, ptr noundef nonnull %0, ptr noundef null, i32 noundef 0) #23 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret void

.lr.ph:                                           ; preds = %_iop_gui_alloc.exit, %.lr.ph
  %.071 = phi i32 [ %i.ch, %.lr.ph ], [ 0, %_iop_gui_alloc.exit ] ; 2 uses
  %i.ce = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.20, i32 noundef 5) #23
  %i.cf = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 1024, ptr noundef %i.ce, i32 noundef %.071) #23 ; 0 uses
  %i.cg = load ptr, ptr %i.q, align 8, !tbaa !164
  call void @dt_bauhaus_combobox_add(ptr noundef %i.cg, ptr noundef nonnull %i.a) #23
  %i.ch = add nuw nsw i32 %.071, 1                ; 2 uses
  %i.ci = load i32, ptr %i.u, align 4, !tbaa !18
  %i.cj = icmp slt i32 %i.ch, %i.ci
  br i1 %i.cj, label %.lr.ph, label %._crit_edge
}

declare ptr @dtgtk_drawing_area_new_with_aspect_ratio(double noundef) local_unnamed_addr #3

declare void @gtk_widget_add_events(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i64 @g_signal_connect_data(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal noundef i32 @checker_draw(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2) #9 {
bb.a:
  %3 = alloca %struct._cairo_rectangle_int, align 4 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 680
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !150  ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 704
  %i.d = load ptr, ptr %i.c, align 16, !tbaa !161
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @gtk_widget_get_allocation(ptr noundef %0, ptr noundef nonnull %3) #23
end_hunk_0
