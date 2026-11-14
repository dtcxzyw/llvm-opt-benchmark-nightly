Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_clipping?download=true
inline.NumInlined: 74
inline.NumDeleted: 28
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@legacy_params:bb.a
  store <4 x float> %i.i, ptr %i.a, align 4, !tbaa !13
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = load float, ptr %i.j, align 4, !tbaa !262
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store float %i.k, ptr %i.l, align 4, !tbaa !263
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  store <8 x float> <float 2.000000e-01, float 2.000000e-01, float 8.000000e-01, float 2.000000e-01, float 8.000000e-01, float 8.000000e-01, float 2.000000e-01, float 8.000000e-01>, ptr %i.m, align 4, !tbaa !13
  %i.n = and i32 %spec.select, 1073741823
  %i.o = icmp eq i32 %i.n, 0
  %i.p = fcmp reassoc nsz arcp contract afn oeq float %spec.select129, 0.000000e+00
  %or.cond130 = select i1 %i.o, i1 %i.p, i1 false
  %. = select i1 %or.cond130, i32 0, i32 4
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 60
  store i32 %., ptr %i.q, align 4, !tbaa !264
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i32 0, ptr %i.r, align 4, !tbaa !265
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 68
  store i32 0, ptr %i.s, align 4, !tbaa !266
  br label %.sink.split

bb.c:                                             ; preds = %bb.a
  %i.t = tail call noalias dereferenceable_or_null(84) ptr @malloc(i64 noundef 84) #24 ; 8 uses
  %i.u = load <4 x float>, ptr %1, align 4, !tbaa !13
  store <4 x float> %i.u, ptr %i.t, align 4, !tbaa !13
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.y = load float, ptr %i.x, align 4, !tbaa !258
  %i.z = load <2 x float>, ptr %i.v, align 4, !tbaa !13
  store <2 x float> %i.z, ptr %i.w, align 4, !tbaa !13
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !267 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  store float %i.ab, ptr %i.ac, align 4, !tbaa !261
  %i.ad = getelementptr inbounds nuw i8, ptr %i.t, i64 28
  store <8 x float> <float 2.000000e-01, float 2.000000e-01, float 8.000000e-01, float 2.000000e-01, float 8.000000e-01, float 8.000000e-01, float 2.000000e-01, float 8.000000e-01>, ptr %i.ad, align 4, !tbaa !13
  %i.ae = fcmp reassoc nsz arcp contract afn oeq float %i.y, 0.000000e+00
  %i.af = fcmp reassoc nsz arcp contract afn oeq float %i.ab, 0.000000e+00
  %or.cond = select i1 %i.ae, i1 %i.af, i1 false
  %spec.select132 = select i1 %or.cond, i32 0, i32 4
  %i.ag = getelementptr inbounds nuw i8, ptr %i.t, i64 60
  store i32 %spec.select132, ptr %i.ag, align 4, !tbaa !264
  %i.ah = getelementptr inbounds nuw i8, ptr %i.t, i64 64
  store i32 0, ptr %i.ah, align 4, !tbaa !265
  %i.ai = getelementptr inbounds nuw i8, ptr %i.t, i64 68
  store i32 0, ptr %i.ai, align 4, !tbaa !266
  br label %.sink.split

bb.d:                                             ; preds = %bb.a
  %i.aj = tail call noalias dereferenceable_or_null(84) ptr @malloc(i64 noundef 84) #24 ; 7 uses
  %i.ak = load <8 x float>, ptr %1, align 4, !tbaa !13
  store <8 x float> %i.ak, ptr %i.aj, align 4, !tbaa !13
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  %i.an = load <4 x float>, ptr %i.al, align 4, !tbaa !13
  store <4 x float> %i.an, ptr %i.am, align 4, !tbaa !13
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ap = getelementptr inbounds nuw i8, ptr %i.aj, i64 48
  %i.aq = load <2 x float>, ptr %i.ao, align 4, !tbaa !13
  store <2 x float> %i.aq, ptr %i.ap, align 4, !tbaa !13
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.as = load float, ptr %i.ar, align 4, !tbaa !269
  %i.at = getelementptr inbounds nuw i8, ptr %i.aj, i64 56
  store float %i.as, ptr %i.at, align 4, !tbaa !270
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.av = getelementptr inbounds nuw i8, ptr %i.aj, i64 60
  %i.aw = load <2 x i32>, ptr %i.au, align 4, !tbaa !14
  store <2 x i32> %i.aw, ptr %i.av, align 4, !tbaa !14
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !271
  %i.az = getelementptr inbounds nuw i8, ptr %i.aj, i64 68
  store i32 %i.ay, ptr %i.az, align 4, !tbaa !266
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !272
  br label %.sink.split

.sink.split:                                      ; preds = %bb.b, %bb.c, %bb.d
  %.sink140 = phi ptr [ %i.aj, %bb.d ], [ %i.t, %bb.c ], [ %i.a, %bb.b ] ; 4 uses
  %.sink138 = phi i32 [ %i.bb, %bb.d ], [ 1, %bb.c ], [ 1, %bb.b ]
  %i.bc = getelementptr inbounds nuw i8, ptr %.sink140, i64 72
  store i32 %.sink138, ptr %i.bc, align 4, !tbaa !273
  %i.bd = getelementptr inbounds nuw i8, ptr %.sink140, i64 76
  store i32 -2, ptr %i.bd, align 4, !tbaa !274
  %i.be = getelementptr inbounds nuw i8, ptr %.sink140, i64 80
  store i32 -2, ptr %i.be, align 4, !tbaa !275
  store ptr %.sink140, ptr %3, align 8, !tbaa !16
  store i32 84, ptr %4, align 4, !tbaa !14
  store i32 5, ptr %5, align 4, !tbaa !14
  br label %bb.e

bb.e:                                             ; preds = %.sink.split, %bb.a
  %.0 = phi i32 [ 1, %bb.a ], [ 0, %.sink.split ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nounwind uwtable
define ptr @deprecated_msg() local_unnamed_addr #4 {
bb.a:
  %i.a = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 5) #25
  ret ptr %i.a
}

; Function Attrs: nounwind
declare ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define ptr @name() local_unnamed_addr #4 {
bb.a:
  %i.a = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 5) #25
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define ptr @aliases() local_unnamed_addr #4 {
bb.a:
  %i.a = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef 5) #25
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define ptr @description(ptr noundef %0) local_unnamed_addr #4 {
bb.a:
  %i.a = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.3, i32 noundef 5) #25
  %i.b = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef 5) #25
  %i.c = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.5, i32 noundef 5) #25
  %i.d = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.6, i32 noundef 5) #25
  %i.e = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.5, i32 noundef 5) #25
  %i.f = tail call ptr @dt_iop_set_description(ptr noundef %0, ptr noundef %i.a, ptr noundef %i.b, ptr noundef %i.c, ptr noundef %i.d, ptr noundef %i.e) #25
  ret ptr %i.f
}

declare ptr @dt_iop_set_description(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @default_group() local_unnamed_addr #0 {
bb.a:
  ret i32 33
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @flags() local_unnamed_addr #0 {
bb.a:
  ret i32 53460
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @operation_tags() local_unnamed_addr #0 {
bb.a:
  ret i32 5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @operation_tags_filter() local_unnamed_addr #0 {
bb.a:
  ret i32 6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @default_colorspace(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef readnone captures(none) %2) local_unnamed_addr #0 {
bb.a:
  ret i32 2
}

; Function Attrs: nounwind uwtable
define noundef i32 @distort_transform(ptr noundef %0, ptr noundef %1, ptr noalias nofree noundef captures(none) %2, i64 noundef %3) local_unnamed_addr #4 {
bb.a:
  %4 = alloca %struct.dt_iop_roi_t, align 4       ; 4 uses
  %5 = alloca %struct.dt_iop_roi_t, align 4       ; 6 uses
  %i.a = alloca [4 x float], align 16             ; 4 uses
  %i.b = alloca float, align 4                    ; 5 uses
  %i.c = alloca float, align 4                    ; 5 uses
  %i.d = alloca float, align 4                    ; 5 uses
  %i.e = alloca float, align 4                    ; 5 uses
  %i.f = alloca float, align 4                    ; 5 uses
  %i.g = alloca float, align 4                    ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !33
  %i.j = getelementptr i8, ptr %i.i, i64 644
  %.val = load i32, ptr %i.j, align 4, !tbaa !50
  %i.k = and i32 %.val, 4
  %.not = icmp eq i32 %i.k, 0
  %spec.select = select nsz i1 %.not, float 1.000000e+00, float 1.000000e+02 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.o = load <2 x i32>, ptr %i.l, align 8, !tbaa !14
  %i.p = sitofp reassoc nsz arcp contract afn <2 x i32> %i.o to <2 x float>
  %i.q = insertelement <2 x float> poison, float %spec.select, i64 0
  %i.r = shufflevector <2 x float> %i.q, <2 x float> poison, <2 x i32> zeroinitializer
  %i.s = fmul reassoc nnan nsz arcp contract afn <2 x float> %i.r, %i.p
  %i.t = fptosi <2 x float> %i.s to <2 x i32>
  store <2 x i32> %i.t, ptr %i.m, align 4, !tbaa !14
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 16, !tbaa !61
  call void %i.v(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %4, ptr noundef nonnull %5) #25
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.x = load ptr, ptr %i.w, align 16, !tbaa !62  ; 19 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 100
  %i.z = load <2 x i32>, ptr %i.l, align 16, !tbaa !14 ; 3 uses
  %i.aa = shufflevector <2 x i32> %i.z, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.ab = sitofp reassoc nsz arcp contract afn <4 x i32> %i.aa to <4 x float> ; 4 uses
  %i.ac = load <4 x float>, ptr %i.y, align 4, !tbaa !13
  %i.ad = fmul reassoc nsz arcp contract afn <4 x float> %i.ac, %i.ab ; 5 uses
  store <4 x float> %i.ad, ptr %i.a, align 16, !tbaa !13
  %i.ae = getelementptr inbounds nuw i8, ptr %i.x, i64 116
  %i.af = getelementptr inbounds nuw i8, ptr %i.x, i64 124
  %i.ag = load float, ptr %i.af, align 4, !tbaa !64
  %i.ah = getelementptr inbounds nuw i8, ptr %i.x, i64 132
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !65
  %i.aj = load <2 x float>, ptr %i.ae, align 4, !tbaa !13
  %i.ak = shufflevector <4 x float> %i.ab, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.al = fmul reassoc nsz arcp contract afn <2 x float> %i.aj, %i.ak ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.x, i64 128
  %i.an = call <5 x float> @llvm.masked.load.v5f32.p0(ptr nonnull align 4 %i.am, <5 x i1> <i1 true, i1 false, i1 true, i1 true, i1 true>, <5 x float> poison), !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  store float 0.000000e+00, ptr %i.b, align 4, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  store float 0.000000e+00, ptr %i.c, align 4, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #25
  store float 0.000000e+00, ptr %i.d, align 4, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #25
  store float 0.000000e+00, ptr %i.e, align 4, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #25
  store float 0.000000e+00, ptr %i.f, align 4, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #25
  store float 0.000000e+00, ptr %i.g, align 4, !tbaa !13
  %i.ao = getelementptr inbounds nuw i8, ptr %i.x, i64 172
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !66
  %i.aq = icmp eq i32 %i.ap, 1                    ; 2 uses
  br i1 %i.aq, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.ar = shufflevector <5 x float> %i.an, <5 x float> poison, <4 x i32> <i32 0, i32 2, i32 3, i32 4>
  %i.as = extractelement <4 x float> %i.ab, i64 0 ; 2 uses
  %i.at = shufflevector <4 x float> %i.ab, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 0, i32 1>
  %i.au = fmul reassoc nsz arcp contract afn <4 x float> %i.ar, %i.at ; 4 uses
  %i.av = fmul reassoc nsz arcp contract afn float %i.ai, %i.as
  %i.aw = fmul reassoc nsz arcp contract afn float %i.ag, %i.as
  %i.ax = extractelement <4 x float> %i.au, i64 0
  %i.ay = extractelement <4 x float> %i.au, i64 1
  %i.az = extractelement <4 x float> %i.au, i64 2
  %i.ba = extractelement <4 x float> %i.au, i64 3
  call fastcc void @keystone_get_matrix(ptr noundef nonnull %i.a, float noundef %i.aw, float noundef %i.av, float noundef %i.az, float noundef %i.ax, float noundef %i.ay, float noundef %i.ba, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f, ptr noundef nonnull %i.g)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.bb = shl i64 %3, 1                           ; 4 uses
  %.not103 = icmp eq i64 %i.bb, 0
  br i1 %.not103, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.bc = load float, ptr %i.b, align 4           ; 2 uses
  %i.bd = load float, ptr %i.c, align 4           ; 2 uses
  %i.be = load float, ptr %i.d, align 4           ; 2 uses
  %i.bf = load float, ptr %i.e, align 4           ; 2 uses
  %i.bg = load float, ptr %i.f, align 4           ; 2 uses
  %i.bh = load float, ptr %i.g, align 4           ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.x, i64 56
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !67
  %i.bk = fdiv reassoc nsz arcp contract afn float %i.bj, %spec.select ; 6 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.x, i64 60
  %i.bm = load float, ptr %i.bl, align 4, !tbaa !68
  %i.bn = fdiv reassoc nsz arcp contract afn float %i.bm, %spec.select ; 6 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.bp = getelementptr inbounds nuw i8, ptr %i.x, i64 44
  %i.bq = load float, ptr %i.bp, align 4, !tbaa !69 ; 4 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.x, i64 52
  %i.bs = load float, ptr %i.br, align 4, !tbaa !70 ; 4 uses
  %i.bt = load float, ptr %i.bo, align 4, !tbaa !13 ; 4 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.x, i64 28
  %i.bv = load float, ptr %i.bu, align 4, !tbaa !13 ; 4 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %i.bx = load float, ptr %i.bw, align 4, !tbaa !13 ; 4 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.x, i64 36
  %i.bz = load float, ptr %i.by, align 4, !tbaa !13 ; 4 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.x, i64 96
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !71
  %.not86 = icmp eq i32 %i.cb, 0                  ; 2 uses
  %.sroa.9.0.v = select i1 %.not86, float %i.bn, float %i.bk
  %.sroa.0.0.v = select i1 %.not86, float %i.bk, float %i.bn
  %i.cc = getelementptr inbounds nuw i8, ptr %i.x, i64 80
  %i.cd = load float, ptr %i.cc, align 4, !tbaa !72
  %i.ce = getelementptr inbounds nuw i8, ptr %i.x, i64 180
  %i.cf = load float, ptr %i.ce, align 4, !tbaa !73
  %i.cg = fsub reassoc nsz arcp contract afn float %i.cf, %i.cd
  %.neg = fdiv reassoc nsz arcp contract afn float %i.cg, %spec.select
  %invariant.op = fadd reassoc nsz arcp contract afn float %.sroa.0.0.v, %.neg ; 4 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.x, i64 84
  %i.ci = load float, ptr %i.ch, align 4, !tbaa !74
  %i.cj = getelementptr inbounds nuw i8, ptr %i.x, i64 184
  %i.ck = load float, ptr %i.cj, align 4, !tbaa !75
  %i.cl = fsub reassoc nsz arcp contract afn float %i.ck, %i.ci
  %.neg99 = fdiv reassoc nsz arcp contract afn float %i.cl, %spec.select
  %invariant.op101 = fadd reassoc nsz arcp contract afn float %.sroa.9.0.v, %.neg99 ; 4 uses
  %i.cm = add i64 %i.bb, -2                       ; 2 uses
  %i.cn = lshr exact i64 %i.cm, 1
  %i.co = add nuw i64 %i.cn, 1                    ; 4 uses
  %min.iters.check127 = icmp ult i64 %i.cm, 14    ; 2 uses
  br i1 %i.aq, label %.lr.ph.split.us.preheader, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  br i1 %min.iters.check127, label %.lr.ph.split.preheader182, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.split.preheader
  %n.vec = and i64 %i.co, -8                      ; 3 uses
  %i.cp = shl i64 %n.vec, 1
  %broadcast.splatinsert = insertelement <8 x float> poison, float %i.bk, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert107 = insertelement <8 x float> poison, float %i.bn, i64 0
  %broadcast.splat108 = shufflevector <8 x float> %broadcast.splatinsert107, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert109 = insertelement <8 x float> poison, float %i.bt, i64 0
  %broadcast.splat110 = shufflevector <8 x float> %broadcast.splatinsert109, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert111 = insertelement <8 x float> poison, float %i.bv, i64 0
  %broadcast.splat112 = shufflevector <8 x float> %broadcast.splatinsert111, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert113 = insertelement <8 x float> poison, float %i.bx, i64 0
  %broadcast.splat114 = shufflevector <8 x float> %broadcast.splatinsert113, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert115 = insertelement <8 x float> poison, float %i.bz, i64 0
  %broadcast.splat116 = shufflevector <8 x float> %broadcast.splatinsert115, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert117 = insertelement <8 x float> poison, float %i.bq, i64 0
  %broadcast.splat118 = shufflevector <8 x float> %broadcast.splatinsert117, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert119 = insertelement <8 x float> poison, float %i.bs, i64 0
  %broadcast.splat120 = shufflevector <8 x float> %broadcast.splatinsert119, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert121 = insertelement <8 x float> poison, float %invariant.op, i64 0
  %broadcast.splatinsert123 = insertelement <8 x float> poison, float %invariant.op101, i64 0
  %i.cq = shufflevector <8 x float> %broadcast.splatinsert121, <8 x float> %broadcast.splatinsert123, <16 x i32> <i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %.idx = shl nuw i64 %index, 3
  %i.cr = getelementptr inbounds nuw i8, ptr %2, i64 %.idx ; 2 uses
  %wide.vec = load <16 x float>, ptr %i.cr, align 4, !tbaa !13 ; 2 uses
  %strided.vec = shufflevector <16 x float> %wide.vec, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec125 = shufflevector <16 x float> %wide.vec, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.cs = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec, %broadcast.splat ; 2 uses
  %i.ct = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec125, %broadcast.splat108 ; 2 uses
  %i.cu = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat110, %i.cs
  %i.cv = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat112, %i.ct
  %i.cw = fadd reassoc nsz arcp contract afn <8 x float> %i.cv, %i.cu ; 2 uses
  %i.cx = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat114, %i.cs
  %i.cy = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat116, %i.ct
  %i.cz = fadd reassoc nsz arcp contract afn <8 x float> %i.cy, %i.cx
  %i.da = fmul reassoc nsz arcp contract afn <8 x float> %i.cw, %broadcast.splat118
  %i.db = fadd reassoc nsz arcp contract afn <8 x float> %i.da, splat (float 1.000000e+00)
  %i.dc = fmul reassoc nsz arcp contract afn <8 x float> %i.cz, %i.db ; 2 uses
  %i.dd = fmul reassoc nsz arcp contract afn <8 x float> %i.dc, %broadcast.splat120
  %i.de = fadd reassoc nsz arcp contract afn <8 x float> %i.dd, splat (float 1.000000e+00)
  %i.df = fmul reassoc nsz arcp contract afn <8 x float> %i.de, %i.cw
  %i.dg = shufflevector <8 x float> %i.df, <8 x float> %i.dc, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %interleaved.vec = fadd reassoc nsz arcp contract afn <16 x float> %i.dg, %i.cq
  store <16 x float> %interleaved.vec, ptr %i.cr, align 4, !tbaa !13
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dh = icmp eq i64 %index.next, %n.vec
  br i1 %i.dh, label %middle.block, label %vector.body, !llvm.loop !276

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.co, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.split.preheader182

.lr.ph.split.preheader182:                        ; preds = %.lr.ph.split.preheader, %middle.block
  %.0100.ph = phi i64 [ 0, %.lr.ph.split.preheader ], [ %i.cp, %middle.block ]
  br label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  br i1 %min.iters.check127, label %.lr.ph.split.us.preheader181, label %vector.ph128

vector.ph128:                                     ; preds = %.lr.ph.split.us.preheader
  %n.vec129 = and i64 %i.co, -8                   ; 3 uses
  %i.di = shl i64 %n.vec129, 1
  %broadcast.splat131 = shufflevector <2 x float> %i.al, <2 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splat133 = shufflevector <2 x float> %i.al, <2 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %broadcast.splatinsert134 = insertelement <8 x float> poison, float %i.bg, i64 0
  %broadcast.splat135 = shufflevector <8 x float> %broadcast.splatinsert134, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert136 = insertelement <8 x float> poison, float %i.bh, i64 0
  %broadcast.splat137 = shufflevector <8 x float> %broadcast.splatinsert136, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert138 = insertelement <8 x float> poison, float %i.bc, i64 0
  %broadcast.splat139 = shufflevector <8 x float> %broadcast.splatinsert138, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert140 = insertelement <8 x float> poison, float %i.bd, i64 0
  %broadcast.splat141 = shufflevector <8 x float> %broadcast.splatinsert140, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splat143 = shufflevector <4 x float> %i.ad, <4 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert144 = insertelement <8 x float> poison, float %i.be, i64 0
  %broadcast.splat145 = shufflevector <8 x float> %broadcast.splatinsert144, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert146 = insertelement <8 x float> poison, float %i.bf, i64 0
  %broadcast.splat147 = shufflevector <8 x float> %broadcast.splatinsert146, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splat149 = shufflevector <4 x float> %i.ad, <4 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %broadcast.splatinsert150 = insertelement <8 x float> poison, float %i.bk, i64 0
  %broadcast.splat151 = shufflevector <8 x float> %broadcast.splatinsert150, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert152 = insertelement <8 x float> poison, float %i.bn, i64 0
  %broadcast.splat153 = shufflevector <8 x float> %broadcast.splatinsert152, <8 x float> poison, <8 x i32> zeroinitializer
end_hunk_0
begin_hunk_1_@distort_transform:bb.a
  store float %.reass102, ptr %i.gl, align 4, !tbaa !13
  %i.hb = add nuw i64 %.0100, 2                   ; 2 uses
  %i.hc = icmp ult i64 %i.hb, %i.bb
  br i1 %i.hc, label %.lr.ph.split, label %._crit_edge, !llvm.loop !279

bb.d:                                             ; preds = %._crit_edge
  %i.hd = extractelement <2 x i32> %i.z, i64 0
  store i32 %i.hd, ptr %i.m, align 4, !tbaa !78
  %i.he = extractelement <2 x i32> %i.z, i64 1
  store i32 %i.he, ptr %i.n, align 4, !tbaa !79
  %i.hf = load ptr, ptr %i.u, align 16, !tbaa !61
  call void %i.hf(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %4, ptr noundef nonnull %5) #25
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @keystone_get_matrix(ptr nofree noundef readonly captures(none) %0, float noundef %1, float noundef %2, float noundef %3, float noundef %4, float noundef %5, float noundef %6, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %7, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %8, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %9, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %10, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %11, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %12) unnamed_addr #7 {
bb.a:
  %i.a = fmul reassoc nsz arcp contract afn float %6, %6 ; 3 uses
  %i.b = fmul reassoc nsz arcp contract afn float %6, %5 ; 5 uses
  %i.c = fsub reassoc nsz arcp contract afn float %i.a, %i.b ; 2 uses
  %i.d = fmul reassoc nsz arcp contract afn float %i.c, %1
  %i.e = fmul reassoc nsz arcp contract afn float %6, %2 ; 4 uses
  %i.f = fmul reassoc nsz arcp contract afn float %i.e, %6 ; 3 uses
  %i.g = fsub reassoc nsz arcp contract afn float %i.d, %i.f
  %i.h = fmul reassoc nsz arcp contract afn float %6, %3 ; 2 uses
  %i.i = fsub reassoc nsz arcp contract afn float %i.e, %i.h
  %i.j = fmul reassoc nsz arcp contract afn float %i.i, %4
  %i.k = fmul reassoc nsz arcp contract afn float %5, %3 ; 6 uses
  %i.l = fmul reassoc nsz arcp contract afn float %i.k, %6 ; 2 uses
  %i.m = fadd reassoc nsz arcp contract afn float %i.j, %i.l
  %i.n = fadd reassoc nsz arcp contract afn float %i.m, %i.g
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.p = load float, ptr %i.o, align 4, !tbaa !13
  %i.q = fneg reassoc nsz arcp contract afn float %i.n
  %i.r = fmul reassoc nsz arcp contract afn float %i.p, %i.q
  %i.s = fsub reassoc nsz arcp contract afn float %i.f, %i.l
  %i.t = fmul reassoc nsz arcp contract afn float %i.s, %1
  %i.u = fmul reassoc nsz arcp contract afn float %3, %3 ; 2 uses
  %i.v = fmul reassoc nsz arcp contract afn float %5, %i.u ; 4 uses
  %i.w = fmul reassoc nsz arcp contract afn float %3, %2 ; 5 uses
  %i.x = fmul reassoc nsz arcp contract afn float %6, %i.w ; 2 uses
  %i.y = fsub reassoc nsz arcp contract afn float %i.v, %i.x
  %i.z = fmul reassoc nsz arcp contract afn float %i.y, %4
  %i.aa = fadd reassoc nsz arcp contract afn float %i.t, %i.z ; 2 uses
  %i.ab = fdiv reassoc nsz arcp contract afn float %i.r, %i.aa
  store float %i.ab, ptr %7, align 4, !tbaa !13
  %i.ac = fsub reassoc nsz arcp contract afn float %i.h, %i.k
  %i.ad = fmul reassoc nsz arcp contract afn float %i.ac, %1
  %i.ae = fsub reassoc nsz arcp contract afn float %i.ad, %i.x
  %i.af = fsub reassoc nsz arcp contract afn float %i.w, %i.u
  %i.ag = fmul reassoc nsz arcp contract afn float %i.af, %4
  %i.ah = fadd reassoc nsz arcp contract afn float %i.v, %i.ag
  %i.ai = fadd reassoc nsz arcp contract afn float %i.ah, %i.ae
  %i.aj = load float, ptr %i.o, align 4, !tbaa !13
  %i.ak = fmul reassoc nsz arcp contract afn float %i.aj, %i.ai
  %i.al = fdiv reassoc nsz arcp contract afn float %i.ak, %i.aa
  store float %i.al, ptr %8, align 4, !tbaa !13
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.an = load float, ptr %i.am, align 4, !tbaa !13 ; 2 uses
  %i.ao = fsub reassoc nsz arcp contract afn float %6, %5 ; 2 uses
  %i.ap = fmul reassoc nsz arcp contract afn float %i.ao, %1
  %reass.add = fadd reassoc nsz arcp contract afn float %i.ap, %i.k
  %i.aq = fsub reassoc nsz arcp contract afn float %reass.add, %i.e
  %i.ar = fmul reassoc nsz arcp contract afn float %i.aq, %i.an
  %i.as = fmul reassoc nsz arcp contract afn float %i.ar, %4
  %i.at = fmul reassoc nsz arcp contract afn float %4, %4 ; 5 uses
  %i.au = fsub reassoc nsz arcp contract afn float %2, %3 ; 2 uses
  %i.av = fmul reassoc nsz arcp contract afn float %i.at, %i.au
  %i.aw = fmul reassoc nsz arcp contract afn float %i.av, %i.an
  %i.ax = fadd reassoc nsz arcp contract afn float %i.as, %i.aw
  %i.ay = fmul reassoc nsz arcp contract afn float %4, %1 ; 3 uses
  %i.az = fneg reassoc nsz arcp contract afn float %2
  %i.ba = fmul reassoc nsz arcp contract afn float %6, %i.az
  %i.bb = fsub reassoc nsz arcp contract afn float %i.ba, %i.k
  %i.bc = fmul reassoc nsz arcp contract afn float %i.bb, %i.ay
  %i.bd = fmul reassoc nsz arcp contract afn float %1, %1 ; 5 uses
  %i.be = fmul reassoc nsz arcp contract afn float %i.b, %i.bd
  %i.bf = fmul reassoc nsz arcp contract afn float %i.at, %i.w
  %i.bg = fadd reassoc nsz arcp contract afn float %i.be, %i.bf
  %i.bh = fadd reassoc nsz arcp contract afn float %i.bg, %i.bc ; 2 uses
  %i.bi = fdiv reassoc nsz arcp contract afn float %i.ax, %i.bh
  store float %i.bi, ptr %9, align 4, !tbaa !13
  %i.bj = load float, ptr %i.am, align 4, !tbaa !13
  %i.bk = fsub reassoc nsz arcp contract afn float %i.k, %i.e
  %i.bl = fmul reassoc nsz arcp contract afn float %i.bk, %1
  %i.bm = fmul reassoc nsz arcp contract afn float %i.ao, %i.bd
  %i.bn = fmul reassoc nsz arcp contract afn float %i.ay, %i.au
  %reass.add273 = fadd reassoc nsz arcp contract afn float %i.bn, %i.bl
  %reass.add274 = fadd reassoc nsz arcp contract afn float %reass.add273, %i.bm
  %reass.mul275 = fneg reassoc nsz arcp contract afn float %i.bj
  %i.bo = fmul reassoc nsz arcp contract afn float %reass.add274, %reass.mul275
  %i.bp = fdiv reassoc nsz arcp contract afn float %i.bo, %i.bh
  store float %i.bp, ptr %10, align 4, !tbaa !13
  %i.bq = fmul reassoc nsz arcp contract afn float %2, 2.000000e+00 ; 2 uses
  %i.br = fmul reassoc nsz arcp contract afn float %i.c, %i.bq
  %i.bs = fmul reassoc nsz arcp contract afn float %i.br, %1
  %i.bt = fmul reassoc nsz arcp contract afn float %2, %2 ; 3 uses
  %i.bu = fmul reassoc nsz arcp contract afn float %6, %i.bt ; 2 uses
  %i.bv = fmul reassoc nsz arcp contract afn float %i.bu, %6 ; 2 uses
  %i.bw = fmul reassoc nsz arcp contract afn float %i.bq, %3 ; 2 uses
  %i.bx = fmul reassoc nsz arcp contract afn float %i.b, %i.bw ; 2 uses
  %i.by = fmul reassoc nsz arcp contract afn float %i.v, %5 ; 3 uses
  %i.bz = fadd reassoc nsz arcp contract afn float %i.by, %i.bv
  %i.ca = fsub reassoc nsz arcp contract afn float %i.bx, %i.bz
  %i.cb = fadd reassoc nsz arcp contract afn float %i.ca, %i.bs
  %i.cc = fmul reassoc nsz arcp contract afn float %i.cb, %4
  %i.cd = fmul reassoc nsz arcp contract afn float %5, %5
  %i.ce = fsub reassoc nsz arcp contract afn float %i.cd, %i.b
  %i.cf = fmul reassoc nsz arcp contract afn float %6, %i.bd
  %i.cg = fmul reassoc nsz arcp contract afn float %i.cf, %i.ce
  %i.ch = fmul reassoc nsz arcp contract afn float %i.w, -2.000000e+00
  %i.ci = fmul reassoc nsz arcp contract afn float %i.ch, %6
  %i.cj = fadd reassoc nsz arcp contract afn float %i.bu, %i.v
  %i.ck = fadd reassoc nsz arcp contract afn float %i.cj, %i.ci
  %i.cl = fmul reassoc nsz arcp contract afn float %i.ck, %i.at
  %i.cm = fadd reassoc nsz arcp contract afn float %i.cl, %i.cg
  %i.cn = fadd reassoc nsz arcp contract afn float %i.cm, %i.cc
  %i.co = fneg reassoc nsz arcp contract afn float %i.cn
  %i.cp = fmul reassoc nsz arcp contract afn float %i.k, %5 ; 2 uses
  %i.cq = fmul reassoc nsz arcp contract afn float %i.cp, %6
  %i.cr = fmul reassoc nsz arcp contract afn float %i.a, %2
  %i.cs = fmul reassoc nsz arcp contract afn float %i.cr, %5
  %i.ct = fsub reassoc nsz arcp contract afn float %i.cq, %i.cs
  %i.cu = fmul reassoc nsz arcp contract afn float %i.ct, %i.bd
  %i.cv = fsub reassoc nsz arcp contract afn float %i.bv, %i.by
  %i.cw = fmul reassoc nsz arcp contract afn float %i.cv, %i.ay
  %i.cx = fmul reassoc nsz arcp contract afn float %i.w, %3 ; 2 uses
  %i.cy = fmul reassoc nsz arcp contract afn float %5, %i.cx
  %i.cz = fmul reassoc nsz arcp contract afn float %i.bt, %3 ; 2 uses
  %i.da = fmul reassoc nsz arcp contract afn float %6, %i.cz
  %i.db = fsub reassoc nsz arcp contract afn float %i.cy, %i.da
  %i.dc = fmul reassoc nsz arcp contract afn float %i.db, %i.at
  %i.dd = fadd reassoc nsz arcp contract afn float %i.cw, %i.dc
  %i.de = fadd reassoc nsz arcp contract afn float %i.dd, %i.cu ; 2 uses
  %i.df = fdiv reassoc nsz arcp contract afn float %i.co, %i.de
  store float %i.df, ptr %11, align 4, !tbaa !13
  %i.dg = fmul reassoc nsz arcp contract afn float %i.bt, %i.a
  %i.dh = fadd reassoc nsz arcp contract afn float %i.dg, %i.by
  %i.di = fsub reassoc nsz arcp contract afn float %i.bx, %i.dh
  %i.dj = fmul reassoc nsz arcp contract afn float %3, 2.000000e+00 ; 2 uses
  %i.dk = fmul reassoc nsz arcp contract afn float %i.dj, %i.b
  %i.dl = fsub reassoc nsz arcp contract afn float %i.cp, %i.dk
  %i.dm = fadd reassoc nsz arcp contract afn float %i.dl, %i.f
  %i.dn = fmul reassoc nsz arcp contract afn float %i.dm, %i.bd
  %i.do = fmul reassoc nsz arcp contract afn float %i.dj, %3
  %i.dp = fsub reassoc nsz arcp contract afn float %i.do, %i.bw
  %i.dq = fmul reassoc nsz arcp contract afn float %i.dp, %4
  %i.dr = fmul reassoc nsz arcp contract afn float %i.dq, %5
  %i.ds = fsub reassoc nsz arcp contract afn float %i.cz, %i.cx
  %i.dt = fmul reassoc nsz arcp contract afn float %i.at, %i.ds
  %reass.add280 = fadd reassoc nsz arcp contract afn float %i.di, %i.dr
  %reass.mul281 = fmul reassoc nsz arcp contract afn float %reass.add280, %1
  %i.du = fadd reassoc nsz arcp contract afn float %i.dn, %i.dt
  %i.dv = fadd reassoc nsz arcp contract afn float %i.du, %reass.mul281
  %i.dw = fdiv reassoc nsz arcp contract afn float %i.dv, %i.de
  store float %i.dw, ptr %12, align 4, !tbaa !13
  ret void
}

; Function Attrs: nounwind uwtable
define noundef i32 @distort_backtransform(ptr noundef %0, ptr noundef %1, ptr noalias nofree noundef captures(none) %2, i64 noundef %3) local_unnamed_addr #4 {
bb.a:
  %4 = alloca %struct.dt_iop_roi_t, align 4       ; 4 uses
  %5 = alloca %struct.dt_iop_roi_t, align 4       ; 6 uses
  %i.a = alloca [4 x float], align 16             ; 4 uses
  %i.b = alloca float, align 4                    ; 4 uses
  %i.c = alloca float, align 4                    ; 4 uses
  %i.d = alloca float, align 4                    ; 4 uses
  %i.e = alloca float, align 4                    ; 4 uses
  %i.f = alloca float, align 4                    ; 4 uses
  %i.g = alloca float, align 4                    ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !33
  %i.j = getelementptr i8, ptr %i.i, i64 644
  %.val = load i32, ptr %i.j, align 4, !tbaa !50
  %i.k = and i32 %.val, 4
  %.not = icmp eq i32 %i.k, 0
  %spec.select = select nsz i1 %.not, float 1.000000e+00, float 1.000000e+02 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.o = load <2 x i32>, ptr %i.l, align 8, !tbaa !14
  %i.p = sitofp reassoc nsz arcp contract afn <2 x i32> %i.o to <2 x float>
  %i.q = insertelement <2 x float> poison, float %spec.select, i64 0
  %i.r = shufflevector <2 x float> %i.q, <2 x float> poison, <2 x i32> zeroinitializer
  %i.s = fmul reassoc nnan nsz arcp contract afn <2 x float> %i.r, %i.p
  %i.t = fptosi <2 x float> %i.s to <2 x i32>
  store <2 x i32> %i.t, ptr %i.m, align 4, !tbaa !14
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 16, !tbaa !61
  call void %i.v(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %4, ptr noundef nonnull %5) #25
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.x = load ptr, ptr %i.w, align 16, !tbaa !62  ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 100
  %i.z = load <2 x i32>, ptr %i.l, align 16, !tbaa !14 ; 3 uses
  %i.aa = shufflevector <2 x i32> %i.z, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.ab = sitofp reassoc nsz arcp contract afn <4 x i32> %i.aa to <4 x float> ; 4 uses
  %i.ac = load <4 x float>, ptr %i.y, align 4, !tbaa !13
  %i.ad = fmul reassoc nsz arcp contract afn <4 x float> %i.ac, %i.ab ; 5 uses
  store <4 x float> %i.ad, ptr %i.a, align 16, !tbaa !13
  %i.ae = getelementptr inbounds nuw i8, ptr %i.x, i64 116
  %i.af = load float, ptr %i.ae, align 4, !tbaa !80
  %i.ag = extractelement <4 x float> %i.ab, i64 0 ; 3 uses
  %i.ah = fmul reassoc nsz arcp contract afn float %i.af, %i.ag ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.x, i64 124
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !64
  %i.ak = getelementptr inbounds nuw i8, ptr %i.x, i64 132
  %i.al = load float, ptr %i.ak, align 4, !tbaa !65
  %i.am = getelementptr inbounds nuw i8, ptr %i.x, i64 120
  %i.an = load float, ptr %i.am, align 4, !tbaa !81
  %i.ao = extractelement <4 x float> %i.ab, i64 1
  %i.ap = fmul reassoc nsz arcp contract afn float %i.an, %i.ao ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.x, i64 128
  %i.ar = call <5 x float> @llvm.masked.load.v5f32.p0(ptr nonnull align 4 %i.aq, <5 x i1> <i1 true, i1 false, i1 true, i1 true, i1 true>, <5 x float> poison), !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #25
  %i.as = getelementptr inbounds nuw i8, ptr %i.x, i64 172
  %i.at = load i32, ptr %i.as, align 4, !tbaa !66
  %i.au = icmp eq i32 %i.at, 1                    ; 2 uses
  br i1 %i.au, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.av = shufflevector <5 x float> %i.ar, <5 x float> poison, <4 x i32> <i32 0, i32 2, i32 3, i32 4>
  %i.aw = shufflevector <4 x float> %i.ab, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 0, i32 1>
  %i.ax = fmul reassoc nsz arcp contract afn <4 x float> %i.av, %i.aw ; 4 uses
  %i.ay = fmul reassoc nsz arcp contract afn float %i.al, %i.ag
  %i.az = fmul reassoc nsz arcp contract afn float %i.aj, %i.ag
  %i.ba = extractelement <4 x float> %i.ax, i64 0
  %i.bb = extractelement <4 x float> %i.ax, i64 1
  %i.bc = extractelement <4 x float> %i.ax, i64 2
  %i.bd = extractelement <4 x float> %i.ax, i64 3
  call fastcc void @keystone_get_matrix(ptr noundef nonnull %i.a, float noundef %i.az, float noundef %i.ay, float noundef %i.bc, float noundef %i.ba, float noundef %i.bb, float noundef %i.bd, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f, ptr noundef nonnull %i.g)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.be = shl i64 %3, 1                           ; 4 uses
  %.not105 = icmp eq i64 %i.be, 0
  br i1 %.not105, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.bf = getelementptr inbounds nuw i8, ptr %i.x, i64 180
  %i.bg = getelementptr inbounds nuw i8, ptr %i.x, i64 80
  %i.bh = getelementptr inbounds nuw i8, ptr %i.x, i64 96
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !71
  %.not86 = icmp eq i32 %i.bi, 0                  ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.x, i64 56 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.x, i64 60 ; 3 uses
  %. = select i1 %.not86, ptr %i.bk, ptr %i.bj
  %.102 = select i1 %.not86, ptr %i.bj, ptr %i.bk
  %.pn101 = load float, ptr %.102, align 4, !tbaa !13
  %.pn99 = load float, ptr %., align 4, !tbaa !13
  %i.bl = load <2 x float>, ptr %i.bf, align 4, !tbaa !13
  %i.bm = load <2 x float>, ptr %i.bg, align 4, !tbaa !13
  %i.bn = insertelement <2 x float> poison, float %.pn101, i64 0
  %i.bo = insertelement <2 x float> %i.bn, float %.pn99, i64 1
  %i.bp = fadd reassoc nsz arcp contract afn <2 x float> %i.bl, %i.bo
  %i.bq = fsub reassoc nsz arcp contract afn <2 x float> %i.bm, %i.bp ; 2 uses
  %i.br = extractelement <2 x float> %i.bq, i64 0
  %invariant.op = fdiv reassoc nsz arcp contract afn float %i.br, %spec.select ; 4 uses
  %i.bs = extractelement <2 x float> %i.bq, i64 1
  %invariant.op104 = fdiv reassoc nsz arcp contract afn float %i.bs, %spec.select ; 4 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.x, i64 44
  %i.bv = load float, ptr %i.bu, align 4, !tbaa !69 ; 4 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.x, i64 52
  %i.bx = load float, ptr %i.bw, align 4, !tbaa !70 ; 4 uses
  %i.by = load float, ptr %i.bt, align 4, !tbaa !13 ; 4 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.x, i64 12
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !13 ; 4 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.cc = load float, ptr %i.cb, align 4, !tbaa !13 ; 4 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.x, i64 20
  %i.ce = load float, ptr %i.cd, align 4, !tbaa !13 ; 4 uses
  %i.cf = load float, ptr %i.bj, align 4, !tbaa !67
  %i.cg = fdiv reassoc nsz arcp contract afn float %i.cf, %spec.select ; 4 uses
  %i.ch = load float, ptr %i.bk, align 4, !tbaa !68
  %i.ci = fdiv reassoc nsz arcp contract afn float %i.ch, %spec.select ; 4 uses
  %i.cj = load float, ptr %i.b, align 4           ; 3 uses
  %i.ck = load float, ptr %i.c, align 4           ; 3 uses
  %i.cl = load float, ptr %i.d, align 4           ; 3 uses
  %i.cm = load float, ptr %i.e, align 4           ; 3 uses
  %i.cn = load float, ptr %i.f, align 4           ; 2 uses
  %i.co = load float, ptr %i.g, align 4           ; 2 uses
  %i.cp = fmul reassoc nsz arcp contract afn float %i.cm, %i.cj
  %i.cq = fmul reassoc nsz arcp contract afn float %i.ck, %i.cl
  %i.cr = fsub reassoc nsz arcp contract afn float %i.cp, %i.cq ; 2 uses
  %i.cs = add i64 %i.be, -2                       ; 2 uses
  %i.ct = lshr exact i64 %i.cs, 1
  %i.cu = add nuw i64 %i.ct, 1                    ; 4 uses
  %min.iters.check129 = icmp ult i64 %i.cs, 14    ; 2 uses
  br i1 %i.au, label %.lr.ph.split.us.preheader, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  br i1 %min.iters.check129, label %.lr.ph.split.preheader186, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.split.preheader
  %n.vec = and i64 %i.cu, -8                      ; 3 uses
  %i.cv = shl i64 %n.vec, 1
  %broadcast.splatinsert = insertelement <8 x float> poison, float %invariant.op, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert109 = insertelement <8 x float> poison, float %invariant.op104, i64 0
  %broadcast.splat110 = shufflevector <8 x float> %broadcast.splatinsert109, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert111 = insertelement <8 x float> poison, float %i.bv, i64 0
  %broadcast.splat112 = shufflevector <8 x float> %broadcast.splatinsert111, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert113 = insertelement <8 x float> poison, float %i.bx, i64 0
  %broadcast.splat114 = shufflevector <8 x float> %broadcast.splatinsert113, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert115 = insertelement <8 x float> poison, float %i.by, i64 0
  %broadcast.splat116 = shufflevector <8 x float> %broadcast.splatinsert115, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert117 = insertelement <8 x float> poison, float %i.ca, i64 0
  %broadcast.splat118 = shufflevector <8 x float> %broadcast.splatinsert117, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert119 = insertelement <8 x float> poison, float %i.cc, i64 0
  %broadcast.splat120 = shufflevector <8 x float> %broadcast.splatinsert119, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert121 = insertelement <8 x float> poison, float %i.ce, i64 0
  %broadcast.splat122 = shufflevector <8 x float> %broadcast.splatinsert121, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert123 = insertelement <8 x float> poison, float %i.cg, i64 0
  %broadcast.splatinsert125 = insertelement <8 x float> poison, float %i.ci, i64 0
  %i.cw = shufflevector <8 x float> %broadcast.splatinsert123, <8 x float> %broadcast.splatinsert125, <16 x i32> <i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %.idx = shl nuw i64 %index, 3
  %i.cx = getelementptr inbounds nuw i8, ptr %2, i64 %.idx ; 2 uses
  %wide.vec = load <16 x float>, ptr %i.cx, align 4, !tbaa !13 ; 2 uses
  %strided.vec = shufflevector <16 x float> %wide.vec, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec127 = shufflevector <16 x float> %wide.vec, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.cy = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec, %broadcast.splat ; 2 uses
  %i.cz = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec127, %broadcast.splat110
  %i.da = fmul reassoc nsz arcp contract afn <8 x float> %i.cy, %broadcast.splat112
  %i.db = fadd reassoc nsz arcp contract afn <8 x float> %i.da, splat (float 1.000000e+00)
  %i.dc = fdiv reassoc nsz arcp contract afn <8 x float> %i.cz, %i.db ; 3 uses
  %i.dd = fmul reassoc nsz arcp contract afn <8 x float> %i.dc, %broadcast.splat114
  %i.de = fadd reassoc nsz arcp contract afn <8 x float> %i.dd, splat (float 1.000000e+00)
  %i.df = fdiv reassoc nsz arcp contract afn <8 x float> %i.cy, %i.de ; 2 uses
  %i.dg = fmul reassoc nsz arcp contract afn <8 x float> %i.df, %broadcast.splat116
  %i.dh = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat118, %i.dc
  %i.di = fadd reassoc nsz arcp contract afn <8 x float> %i.dg, %i.dh
  %i.dj = fmul reassoc nsz arcp contract afn <8 x float> %i.df, %broadcast.splat120
  %i.dk = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat122, %i.dc
  %i.dl = fadd reassoc nsz arcp contract afn <8 x float> %i.dj, %i.dk
  %i.dm = shufflevector <8 x float> %i.di, <8 x float> %i.dl, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %interleaved.vec = fadd reassoc nsz arcp contract afn <16 x float> %i.dm, %i.cw
  store <16 x float> %interleaved.vec, ptr %i.cx, align 4, !tbaa !13
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dn = icmp eq i64 %index.next, %n.vec
  br i1 %i.dn, label %middle.block, label %vector.body, !llvm.loop !280

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cu, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.split.preheader186

.lr.ph.split.preheader186:                        ; preds = %.lr.ph.split.preheader, %middle.block
  %.0103.ph = phi i64 [ 0, %.lr.ph.split.preheader ], [ %i.cv, %middle.block ]
  br label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  br i1 %min.iters.check129, label %.lr.ph.split.us.preheader185, label %vector.ph130

vector.ph130:                                     ; preds = %.lr.ph.split.us.preheader
  %n.vec131 = and i64 %i.cu, -8                   ; 3 uses
  %i.do = shl i64 %n.vec131, 1
  %broadcast.splatinsert132 = insertelement <8 x float> poison, float %invariant.op, i64 0
  %broadcast.splat133 = shufflevector <8 x float> %broadcast.splatinsert132, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert134 = insertelement <8 x float> poison, float %invariant.op104, i64 0
  %broadcast.splat135 = shufflevector <8 x float> %broadcast.splatinsert134, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert136 = insertelement <8 x float> poison, float %i.bv, i64 0
  %broadcast.splat137 = shufflevector <8 x float> %broadcast.splatinsert136, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert138 = insertelement <8 x float> poison, float %i.bx, i64 0
  %broadcast.splat139 = shufflevector <8 x float> %broadcast.splatinsert138, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert140 = insertelement <8 x float> poison, float %i.by, i64 0
  %broadcast.splat141 = shufflevector <8 x float> %broadcast.splatinsert140, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert142 = insertelement <8 x float> poison, float %i.ca, i64 0
  %broadcast.splat143 = shufflevector <8 x float> %broadcast.splatinsert142, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert144 = insertelement <8 x float> poison, float %i.cc, i64 0
  %broadcast.splat145 = shufflevector <8 x float> %broadcast.splatinsert144, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert146 = insertelement <8 x float> poison, float %i.ce, i64 0
  %broadcast.splat147 = shufflevector <8 x float> %broadcast.splatinsert146, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert148 = insertelement <8 x float> poison, float %i.cg, i64 0
  %broadcast.splat149 = shufflevector <8 x float> %broadcast.splatinsert148, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert150 = insertelement <8 x float> poison, float %i.ci, i64 0
  %broadcast.splat151 = shufflevector <8 x float> %broadcast.splatinsert150, <8 x float> poison, <8 x i32> zeroinitializer
end_hunk_1
begin_hunk_2_@distort_mask:bb.a
  %i.ee = fmul reassoc nsz arcp contract afn float %i.ed, %i.dy
  %i.ef = fadd reassoc nsz arcp contract afn float %i.ee, 1.000000e+00
  %i.eg = fdiv reassoc nsz arcp contract afn float %i.dw, %i.ef
  %i.eh = load <4 x float>, ptr %i.ca, align 4, !tbaa !13 ; 2 uses
  %i.ei = insertelement <2 x float> poison, float %i.eg, i64 0
  %i.ej = shufflevector <2 x float> %i.ei, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ek = shufflevector <4 x float> %i.eh, <4 x float> poison, <2 x i32> <i32 0, i32 2>
  %i.el = fmul reassoc nsz arcp contract afn <2 x float> %i.ej, %i.ek
  %i.em = insertelement <2 x float> poison, float %i.ed, i64 0
  %i.en = shufflevector <2 x float> %i.em, <2 x float> poison, <2 x i32> zeroinitializer
  %i.eo = shufflevector <4 x float> %i.eh, <4 x float> poison, <2 x i32> <i32 1, i32 3>
  %i.ep = fmul reassoc nsz arcp contract afn <2 x float> %i.en, %i.eo
  %i.eq = load <2 x float>, ptr %i.by, align 4, !tbaa !13
  %i.er = fadd reassoc nsz arcp contract afn <2 x float> %i.eq, %i.ep
  %i.es = fadd reassoc nsz arcp contract afn <2 x float> %i.er, %i.el
  %i.et = insertelement <2 x float> poison, float %i.ec, i64 0
  %i.eu = shufflevector <2 x float> %i.et, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ev = fmul reassoc nsz arcp contract afn <2 x float> %i.es, %i.eu ; 2 uses
  %i.ew = load i32, ptr %i.bb, align 4, !tbaa !66
  %i.ex = icmp eq i32 %i.ew, 1
  br i1 %i.ex, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ey = fsub reassoc nsz arcp contract afn <2 x float> %i.ev, %i.au ; 2 uses
  %i.ez = shufflevector <2 x float> %i.ey, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.fa = fmul reassoc nsz arcp contract afn <2 x float> %i.ct, %i.ez ; 2 uses
  %i.fb = shufflevector <2 x float> %i.ey, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fc = fmul reassoc nsz arcp contract afn <2 x float> %i.cr, %i.fb ; 2 uses
  %i.fd = fsub reassoc nsz arcp contract afn <2 x float> %i.fc, %i.fa ; 2 uses
  %i.fe = extractelement <2 x float> %i.fd, i64 1
  %i.ff = fmul reassoc nsz arcp contract afn float %i.ci, %i.fe
  %foldExtExtBinop = fsub reassoc nsz arcp contract afn <2 x float> %i.fa, %i.fc
  %i.fg = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.fh = fmul reassoc nsz arcp contract afn float %i.fg, %i.ch
  %i.fi = fadd reassoc nsz arcp contract afn float %i.cl, %i.fh
  %i.fj = fadd reassoc nsz arcp contract afn float %i.fi, %i.ff
  %i.fk = insertelement <2 x float> poison, float %i.fj, i64 0
  %i.fl = shufflevector <2 x float> %i.fk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fm = fdiv reassoc nsz arcp contract afn <2 x float> %i.fd, %i.fl ; 2 uses
  %i.fn = fadd reassoc nsz arcp contract afn <2 x float> %i.ay, %i.fm
  %i.fo = fsub reassoc nsz arcp contract afn <2 x float> %i.ay, %i.fm
  %i.fp = shufflevector <2 x float> %i.fn, <2 x float> %i.fo, <2 x i32> <i32 0, i32 3>
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.fq = phi <2 x float> [ %i.fp, %bb.k ], [ %i.ev, %bb.j ]
  %i.fr = load <2 x i32>, ptr %4, align 4, !tbaa !14
  %i.fs = sitofp reassoc nsz arcp contract afn <2 x i32> %i.fr to <2 x float> ; 2 uses
  %i.ft = fadd reassoc nsz arcp contract afn <2 x float> %i.fq, splat (float -5.000000e-01) ; 2 uses
  %foldExtExtBinop168 = fsub reassoc nsz arcp contract afn <2 x float> %i.ft, %i.fs
  %i.fu = extractelement <2 x float> %foldExtExtBinop168, i64 0 ; 3 uses
  %foldExtExtBinop170 = fsub reassoc nsz arcp contract afn <2 x float> %i.ft, %i.fs
  %i.fv = extractelement <2 x float> %foldExtExtBinop170, i64 1 ; 3 uses
  %i.fw = load i32, ptr %i.cm, align 4, !tbaa !78 ; 2 uses
  %i.fx = load i32, ptr %i.cn, align 4, !tbaa !79
  %i.fy = tail call reassoc nsz arcp contract afn float @dt_interpolation_compute_sample(ptr noundef %i.ac, ptr noundef %2, float noundef %i.fu, float noundef %i.fv, i32 noundef %i.fw, i32 noundef %i.fx, i32 noundef 1, i32 noundef %i.fw) #25
  %i.fz = fcmp reassoc nsz arcp contract afn ult float %i.fy, 0.000000e+00
  br i1 %i.fz, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ga = load i32, ptr %i.cm, align 4, !tbaa !78 ; 2 uses
  %i.gb = load i32, ptr %i.cn, align 4, !tbaa !79
  %i.gc = tail call reassoc nsz arcp contract afn float @dt_interpolation_compute_sample(ptr noundef %i.ac, ptr noundef %2, float noundef %i.fu, float noundef %i.fv, i32 noundef %i.ga, i32 noundef %i.gb, i32 noundef 1, i32 noundef %i.ga) #25
  %i.gd = fcmp reassoc nsz arcp contract afn ugt float %i.gc, 1.000000e+00
  br i1 %i.gd, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ge = load i32, ptr %i.cm, align 4, !tbaa !78 ; 2 uses
  %i.gf = load i32, ptr %i.cn, align 4, !tbaa !79
  %i.gg = tail call reassoc nsz arcp contract afn float @dt_interpolation_compute_sample(ptr noundef %i.ac, ptr noundef %2, float noundef %i.fu, float noundef %i.fv, i32 noundef %i.ge, i32 noundef %i.gf, i32 noundef 1, i32 noundef %i.ge) #25
  br label %bb.o

bb.o:                                             ; preds = %bb.l, %bb.n, %bb.m
  %i.gh = phi reassoc nsz arcp contract afn float [ 1.000000e+00, %bb.m ], [ %i.gg, %bb.n ], [ 0.000000e+00, %bb.l ]
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %i.cy, i64 %indvars.iv
  store float %i.gh, ptr %i.gi, align 4, !tbaa !13
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.gj = load i32, ptr %i.br, align 4, !tbaa !78 ; 2 uses
  %i.gk = sext i32 %i.gj to i64
  %i.gl = icmp slt i64 %indvars.iv.next, %i.gk
  br i1 %i.gl, label %bb.j, label %._crit_edge.loopexit

bb.p:                                             ; preds = %._crit_edge157, %bb.f
  ret void
}

declare ptr @dt_interpolation_new(i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

declare float @dt_interpolation_compute_sample(ptr noundef, ptr noundef, float noundef, float noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define void @modify_roi_out(ptr noundef %0, ptr nofree noundef captures(none) %1, ptr noundef initializes((0, 20)) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #4 {
bb.a:
  %4 = alloca %struct.dt_iop_roi_t, align 16      ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) %4, ptr noundef nonnull align 4 dereferenceable(20) %3, i64 20, i1 false), !tbaa.struct !87
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !62  ; 37 uses
  %i.c = load float, ptr %i.b, align 4, !tbaa !83 ; 2 uses
  %sincos = tail call reassoc nsz arcp contract afn { float, float } @llvm.sincos.f32(float %i.c) ; 2 uses
  %sin = extractvalue { float, float } %sincos, 0 ; 2 uses
  %cos = extractvalue { float, float } %sincos, 1
  %i.d = fneg reassoc nsz arcp contract afn float %sin
  %i.e = fcmp reassoc nsz arcp contract afn oeq float %i.c, 0.000000e+00 ; 3 uses
  %.sroa.9344.0 = select i1 %i.e, float 1.000000e+00, float %cos ; 9 uses
  %.sroa.7.0 = select i1 %i.e, float 0.000000e+00, float %i.d ; 5 uses
  %.sroa.5343.0 = select i1 %i.e, float 0.000000e+00, float %sin ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store float %.sroa.9344.0, ptr %i.f, align 4, !tbaa !13
  %.sroa.5343.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store float %.sroa.5343.0, ptr %.sroa.5343.0..sroa_idx, align 4, !tbaa !13
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store float %.sroa.7.0, ptr %.sroa.7.0..sroa_idx, align 4, !tbaa !13
  %.sroa.9344.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  store float %.sroa.9344.0, ptr %.sroa.9344.0..sroa_idx, align 4, !tbaa !13
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 92
  %i.h = load i32, ptr %i.g, align 4, !tbaa !82   ; 2 uses
  %i.i = and i32 %i.h, 1
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = fneg reassoc nsz arcp contract afn float %.sroa.9344.0 ; 2 uses
  store float %i.j, ptr %i.f, align 4, !tbaa !13
  %i.k = fneg reassoc nsz arcp contract afn float %.sroa.7.0 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store float %i.k, ptr %i.l, align 4, !tbaa !13
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.m = phi float [ %i.k, %bb.b ], [ %.sroa.7.0, %bb.a ] ; 2 uses
  %i.n = phi float [ %i.j, %bb.b ], [ %.sroa.9344.0, %bb.a ] ; 2 uses
  %i.o = and i32 %i.h, 2
  %.not271 = icmp eq i32 %i.o, 0
  br i1 %.not271, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = fneg reassoc nsz arcp contract afn float %.sroa.5343.0 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store float %i.p, ptr %i.q, align 4, !tbaa !13
  %i.r = fneg reassoc nsz arcp contract afn float %.sroa.9344.0 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  store float %i.r, ptr %i.s, align 4, !tbaa !13
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.t = phi float [ %i.p, %bb.d ], [ %.sroa.5343.0, %bb.c ] ; 2 uses
  %i.u = phi float [ %i.r, %bb.d ], [ %.sroa.9344.0, %bb.c ] ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.w = fmul reassoc nsz arcp contract afn float %i.u, %i.n
  %i.x = fmul reassoc nsz arcp contract afn float %i.m, %i.t
  %i.y = fsub reassoc nsz arcp contract afn float %i.w, %i.x
  %i.z = fneg reassoc nsz arcp contract afn float %i.t
  %i.aa = fneg reassoc nsz arcp contract afn float %i.m
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.ac = insertelement <4 x float> poison, float %i.u, i64 0
  %i.ad = insertelement <4 x float> %i.ac, float %i.z, i64 1
  %i.ae = insertelement <4 x float> %i.ad, float %i.aa, i64 2
  %i.af = insertelement <4 x float> %i.ae, float %i.n, i64 3
  %i.ag = insertelement <4 x float> poison, float %i.y, i64 0
  %i.ah = shufflevector <4 x float> %i.ag, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ai = fdiv reassoc nsz arcp contract afn <4 x float> %i.af, %i.ah
  store <4 x float> %i.ai, ptr %i.v, align 4, !tbaa !13
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 172 ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !66
  %i.al = icmp eq i32 %i.ak, 0
  br i1 %i.al, label %bb.f, label %bb.ap

bb.f:                                             ; preds = %bb.e
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 176
  %i.an = load i32, ptr %i.am, align 4, !tbaa !88
  %i.ao = icmp eq i32 %i.an, 1
  br i1 %i.ao, label %bb.g, label %bb.ap

bb.g:                                             ; preds = %bb.f
  %i.ap = fmul reassoc nsz arcp contract afn float %.sroa.9344.0, %.sroa.9344.0
  %i.aq = fmul reassoc nsz arcp contract afn float %.sroa.5343.0, %.sroa.7.0
  %i.ar = fsub reassoc nsz arcp contract afn float %i.ap, %i.aq ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %2, ptr noundef nonnull align 16 dereferenceable(20) %4, i64 20, i1 false), !tbaa.struct !87
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.au = load float, ptr %i.at, align 4, !tbaa !89
  %i.av = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !90
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 52
  %i.az = load <2 x i32>, ptr %i.as, align 8, !tbaa !14 ; 5 uses
  %i.ba = extractelement <2 x i32> %i.az, i64 0
  %i.bb = extractelement <2 x i32> %i.az, i64 1
  %i.bc = tail call i32 @llvm.smin.i32(i32 %i.ba, i32 %i.bb)
  %i.bd = sitofp i32 %i.bc to float
  %i.be = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.bd ; 2 uses
  %i.bf = fmul reassoc nsz arcp contract afn float %i.be, %i.au ; 2 uses
  store float %i.bf, ptr %i.av, align 4, !tbaa !69
  %i.bg = fmul reassoc nsz arcp contract afn float %i.ax, %i.be ; 2 uses
  store float %i.bg, ptr %i.ay, align 4, !tbaa !70
  %i.bh = sitofp reassoc nsz arcp contract afn <2 x i32> %i.az to <2 x float> ; 5 uses
  %i.bi = fmul reassoc nnan nsz arcp contract afn <2 x float> %i.bh, splat (float 5.000000e-01) ; 6 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.b, i64 96 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.b, i64 72 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bo = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.ar ; 2 uses
  %invariant.op = fmul reassoc nsz arcp contract afn float %i.bo, %i.bg
  %i.bp = shufflevector <2 x float> %i.bi, <2 x float> %i.bh, <2 x i32> <i32 0, i32 2>
  %i.bq = fmul reassoc nnan arcp contract afn <2 x float> %i.bp, <float 1.000000e+00, float -5.000000e-01> ; 2 uses
  %i.br = insertelement <2 x float> poison, float %.sroa.9344.0, i64 0
  %i.bs = shufflevector <2 x float> %i.br, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bt = fmul reassoc nsz arcp contract afn <2 x float> %i.bq, %i.bs
  %i.bu = shufflevector <2 x float> %i.bt, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.bv = insertelement <2 x float> poison, float %.sroa.7.0, i64 0
  %i.bw = shufflevector <2 x float> %i.bq, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.bx = shufflevector <2 x float> %i.bv, <2 x float> poison, <4 x i32> zeroinitializer
  %i.by = fmul reassoc nsz arcp contract afn <4 x float> %i.bw, %i.bx
  %i.bz = shufflevector <2 x float> %i.bi, <2 x float> %i.bh, <2 x i32> <i32 1, i32 3>
  %i.ca = fmul reassoc nnan arcp contract afn <2 x float> %i.bz, <float 1.000000e+00, float -5.000000e-01> ; 2 uses
  %i.cb = insertelement <2 x float> poison, float %.sroa.5343.0, i64 0
  %i.cc = shufflevector <2 x float> %i.ca, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.cd = shufflevector <2 x float> %i.cb, <2 x float> poison, <4 x i32> zeroinitializer
  %i.ce = fmul reassoc nsz arcp contract afn <4 x float> %i.cc, %i.cd
  %i.cf = fmul reassoc nsz arcp contract afn <2 x float> %i.ca, %i.bs
  %i.cg = shufflevector <2 x float> %i.cf, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.ch = fsub reassoc nsz arcp contract afn <4 x float> %i.bu, %i.ce
  %i.ci = insertelement <4 x float> poison, float %i.ar, i64 0
  %i.cj = shufflevector <4 x float> %i.ci, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ck = fdiv reassoc nsz arcp contract afn <4 x float> %i.ch, %i.cj ; 2 uses
  %i.cl = fsub reassoc nsz arcp contract afn <4 x float> %i.cg, %i.by
  %i.cm = insertelement <4 x float> poison, float %i.bf, i64 0
  %i.cn = shufflevector <4 x float> %i.cm, <4 x float> poison, <4 x i32> zeroinitializer
  %i.co = fmul reassoc nsz arcp contract afn <4 x float> %i.ck, %i.cn
  %i.cp = fadd reassoc nsz arcp contract afn <4 x float> %i.co, splat (float 1.000000e+00)
  %i.cq = fmul reassoc nsz arcp contract afn <4 x float> %i.cp, %i.cl ; 2 uses
  %i.cr = insertelement <4 x float> poison, float %invariant.op, i64 0
  %i.cs = shufflevector <4 x float> %i.cr, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ct = fmul reassoc nsz arcp contract afn <4 x float> %i.cq, %i.cs
  %i.cu = fadd reassoc nsz arcp contract afn <4 x float> %i.ct, splat (float 1.000000e+00)
  %i.cv = shufflevector <4 x float> %i.cq, <4 x float> %i.ck, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %i.cw = insertelement <8 x float> poison, float %i.bo, i64 0
  %i.cx = shufflevector <8 x float> %i.cw, <8 x float> poison, <8 x i32> <i32 0, i32 poison, i32 0, i32 poison, i32 0, i32 poison, i32 0, i32 poison>
  %i.cy = shufflevector <4 x float> %i.cu, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cz = shufflevector <8 x float> %i.cy, <8 x float> %i.cx, <8 x i32> <i32 8, i32 0, i32 10, i32 1, i32 12, i32 2, i32 14, i32 3>
  %i.da = fmul reassoc nsz arcp contract afn <8 x float> %i.cv, %i.cz ; 10 uses
  %i.db = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.da, zeroinitializer ; 8 uses
  %i.dc = extractelement <8 x i1> %i.db, i64 7    ; 2 uses
  %i.dd = extractelement <8 x i1> %i.db, i64 6    ; 2 uses
  %i.de = extractelement <8 x i1> %i.db, i64 5    ; 2 uses
  %i.df = extractelement <8 x i1> %i.db, i64 4    ; 2 uses
  %i.dg = extractelement <8 x i1> %i.db, i64 3    ; 2 uses
  %i.dh = extractelement <8 x i1> %i.db, i64 2    ; 2 uses
  %i.di = extractelement <8 x i1> %i.db, i64 1    ; 2 uses
  %i.dj = tail call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.da)
  %i.dk = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.dj, splat (float 1.000000e-03) ; 8 uses
  %i.dl = extractelement <8 x i1> %i.db, i64 0    ; 2 uses
  %i.dm = shufflevector <2 x i32> %i.az, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  %i.dn = extractelement <8 x float> %i.da, i64 0 ; 2 uses
  %i.do = extractelement <8 x float> %i.da, i64 1 ; 2 uses
  %i.dp = extractelement <8 x float> %i.da, i64 2 ; 2 uses
  %i.dq = extractelement <8 x float> %i.da, i64 3 ; 2 uses
  %i.dr = extractelement <8 x float> %i.da, i64 4 ; 2 uses
  %i.ds = extractelement <8 x float> %i.da, i64 5 ; 2 uses
  %i.dt = extractelement <8 x float> %i.da, i64 6 ; 2 uses
  %i.du = extractelement <8 x float> %i.da, i64 7 ; 2 uses
  %i.dv = extractelement <8 x i1> %i.dk, i64 0    ; 2 uses
  %i.dw = extractelement <8 x i1> %i.dk, i64 1    ; 2 uses
  %i.dx = extractelement <8 x i1> %i.dk, i64 2    ; 2 uses
  %i.dy = extractelement <8 x i1> %i.dk, i64 3    ; 2 uses
  %i.dz = extractelement <8 x i1> %i.dk, i64 4    ; 2 uses
  %i.ea = extractelement <8 x i1> %i.dk, i64 5    ; 2 uses
  %i.eb = extractelement <8 x i1> %i.dk, i64 6    ; 2 uses
  %i.ec = extractelement <8 x i1> %i.dk, i64 7    ; 2 uses
  %i.ed = shufflevector <2 x i32> %i.az, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.ee = sitofp reassoc nsz arcp contract afn <4 x i32> %i.ed to <4 x float>
  %i.ef = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.ee, <float -5.000000e-01, float -5.000000e-01, float 5.000000e-01, float 5.000000e-01> ; 16 uses
  br i1 %i.ec, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %.sroa.0.8.vec.extract = extractelement <4 x float> %i.ef, i64 2
  %.sroa.0.0.vec.extract470 = extractelement <4 x float> %i.ef, i64 0
  %.sroa.speculated455 = select i1 %i.dc, float %.sroa.0.8.vec.extract, float %.sroa.0.0.vec.extract470
  %i.eg = fdiv reassoc nsz arcp contract afn float %.sroa.speculated455, %i.du
  %i.eh = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.eg, float 1.000000e+00)
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %.2 = phi nsz float [ %i.eh, %bb.h ], [ 1.000000e+00, %bb.g ] ; 2 uses
  br i1 %i.eb, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %.sroa.0.12.vec.extract = extractelement <4 x float> %i.ef, i64 3
  %.sroa.0.4.vec.extract = extractelement <4 x float> %i.ef, i64 1
  %.sroa.speculated431 = select i1 %i.dd, float %.sroa.0.12.vec.extract, float %.sroa.0.4.vec.extract
  %i.ei = fdiv reassoc nsz arcp contract afn float %.sroa.speculated431, %i.dt
  %i.ej = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %.2, float %i.ei)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.2.1 = phi nsz float [ %i.ej, %bb.j ], [ %.2, %bb.i ] ; 2 uses
  br i1 %i.ea, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %.sroa.0.8.vec.extract490 = extractelement <4 x float> %i.ef, i64 2
  %.sroa.0.0.vec.extract466 = extractelement <4 x float> %i.ef, i64 0
  %.sroa.speculated449 = select i1 %i.de, float %.sroa.0.8.vec.extract490, float %.sroa.0.0.vec.extract466
  %i.ek = fdiv reassoc nsz arcp contract afn float %.sroa.speculated449, %i.ds
  %i.el = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %.2.1, float %i.ek)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.2.1309 = phi nsz float [ %i.el, %bb.l ], [ %.2.1, %bb.k ] ; 2 uses
  br i1 %i.dz, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %.sroa.0.12.vec.extract504 = extractelement <4 x float> %i.ef, i64 3
  %.sroa.0.4.vec.extract476 = extractelement <4 x float> %i.ef, i64 1
  %.sroa.speculated425 = select i1 %i.df, float %.sroa.0.12.vec.extract504, float %.sroa.0.4.vec.extract476
  %i.em = fdiv reassoc nsz arcp contract afn float %.sroa.speculated425, %i.dr
  %i.en = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %.2.1309, float %i.em)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.2.1.1 = phi nsz float [ %i.en, %bb.n ], [ %.2.1309, %bb.m ] ; 2 uses
  br i1 %i.dy, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %.sroa.0.8.vec.extract494 = extractelement <4 x float> %i.ef, i64 2
  %.sroa.0.0.vec.extract462 = extractelement <4 x float> %i.ef, i64 0
  %.sroa.speculated443 = select i1 %i.dg, float %.sroa.0.8.vec.extract494, float %.sroa.0.0.vec.extract462
  %i.eo = fdiv reassoc nsz arcp contract afn float %.sroa.speculated443, %i.dq
  %i.ep = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %.2.1.1, float %i.eo)
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.2.2 = phi nsz float [ %i.ep, %bb.p ], [ %.2.1.1, %bb.o ] ; 2 uses
  br i1 %i.dx, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %.sroa.0.12.vec.extract508 = extractelement <4 x float> %i.ef, i64 3
  %.sroa.0.4.vec.extract480 = extractelement <4 x float> %i.ef, i64 1
  %.sroa.speculated419 = select i1 %i.dh, float %.sroa.0.12.vec.extract508, float %.sroa.0.4.vec.extract480
  %i.eq = fdiv reassoc nsz arcp contract afn float %.sroa.speculated419, %i.dp
  %i.er = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %.2.2, float %i.eq)
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.2.1.2 = phi nsz float [ %i.er, %bb.r ], [ %.2.2, %bb.q ] ; 2 uses
  br i1 %i.dw, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %.sroa.0.8.vec.extract498 = extractelement <4 x float> %i.ef, i64 2
  %.sroa.0.0.vec.extract = extractelement <4 x float> %i.ef, i64 0
  %.sroa.speculated437 = select i1 %i.di, float %.sroa.0.8.vec.extract498, float %.sroa.0.0.vec.extract
  %i.es = fdiv reassoc nsz arcp contract afn float %.sroa.speculated437, %i.do
  %i.et = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %.2.1.2, float %i.es)
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.2.3 = phi nsz float [ %i.et, %bb.t ], [ %.2.1.2, %bb.s ] ; 2 uses
  br i1 %i.dv, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %.sroa.0.12.vec.extract512 = extractelement <4 x float> %i.ef, i64 3
  %.sroa.0.4.vec.extract484 = extractelement <4 x float> %i.ef, i64 1
  %.sroa.speculated = select i1 %i.dl, float %.sroa.0.12.vec.extract512, float %.sroa.0.4.vec.extract484
  %i.eu = fdiv reassoc nsz arcp contract afn float %.sroa.speculated, %i.dn
  %i.ev = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %.2.3, float %i.eu)
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.2.1.3 = phi nsz float [ %i.ev, %bb.v ], [ %.2.3, %bb.u ] ; 3 uses
  %i.ew = fcmp reassoc nsz arcp contract afn ult float %.2.1.3, -1.000000e+00
  br i1 %i.ew, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  store <2 x float> %i.bi, ptr %i.bj, align 4, !tbaa !13
  store i32 0, ptr %i.bk, align 4, !tbaa !71
  %i.ex = insertelement <2 x float> poison, float %.2.1.3, i64 0
  %i.ey = shufflevector <2 x float> %i.ex, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ez = fmul reassoc nsz arcp contract afn <2 x float> %i.ey, %i.bh ; 2 uses
  %i.fa = load <2 x float>, ptr %i.bl, align 4, !tbaa !13
  %i.fb = load <2 x float>, ptr %i.bm, align 4, !tbaa !13 ; 2 uses
  %i.fc = fsub reassoc nsz arcp contract afn <2 x float> %i.fa, %i.fb
  %i.fd = fsub reassoc nsz arcp contract afn <2 x float> splat (float 5.000000e-01), %i.fb
  %i.fe = fmul reassoc nsz arcp contract afn <2 x float> %i.ez, %i.fd
  %i.ff = fsub reassoc nsz arcp contract afn <2 x float> %i.bi, %i.fe
  %i.fg = fptosi <2 x float> %i.ff to <2 x i32>
  store <2 x i32> %i.fg, ptr %2, align 4, !tbaa !14
  %i.fh = fmul reassoc nsz arcp contract afn <2 x float> %i.ez, %i.fc
  %i.fi = fptosi <2 x float> %i.fh to <2 x i32>
  store <2 x i32> %i.fi, ptr %i.bn, align 4, !tbaa !14
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.1259 = phi nsz float [ -1.000000e+00, %bb.w ], [ %.2.1.3, %bb.x ]
  %i.fj = shufflevector <2 x i32> %i.dm, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.fk = sitofp reassoc nsz arcp contract afn <4 x i32> %i.fj to <4 x float>
  %i.fl = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.fk, <float -5.000000e-01, float -5.000000e-01, float 5.000000e-01, float 5.000000e-01> ; 16 uses
  br i1 %i.ec, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %.sroa.0.8.vec.extract488 = extractelement <4 x float> %i.fl, i64 2
  %.sroa.0.0.vec.extract472 = extractelement <4 x float> %i.fl, i64 0
  %.sroa.speculated458 = select i1 %i.dc, float %.sroa.0.8.vec.extract488, float %.sroa.0.0.vec.extract472
  %i.fm = fdiv reassoc nsz arcp contract afn float %.sroa.speculated458, %i.du
  %i.fn = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.fm, float 1.000000e+00)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.2.1390 = phi nsz float [ %i.fn, %bb.z ], [ 1.000000e+00, %bb.y ] ; 2 uses
  br i1 %i.eb, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %.sroa.0.12.vec.extract502 = extractelement <4 x float> %i.fl, i64 3
  %.sroa.0.4.vec.extract474 = extractelement <4 x float> %i.fl, i64 1
  %.sroa.speculated434 = select i1 %i.dd, float %.sroa.0.12.vec.extract502, float %.sroa.0.4.vec.extract474
  %i.fo = fdiv reassoc nsz arcp contract afn float %.sroa.speculated434, %i.dt
  %i.fp = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %.2.1390, float %i.fo)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.2.1.1391 = phi nsz float [ %i.fp, %bb.ab ], [ %.2.1390, %bb.aa ] ; 2 uses
  br i1 %i.ea, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %.sroa.0.8.vec.extract492 = extractelement <4 x float> %i.fl, i64 2
  %.sroa.0.0.vec.extract468 = extractelement <4 x float> %i.fl, i64 0
  %.sroa.speculated452 = select i1 %i.de, float %.sroa.0.8.vec.extract492, float %.sroa.0.0.vec.extract468
  %i.fq = fdiv reassoc nsz arcp contract afn float %.sroa.speculated452, %i.ds
  %i.fr = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %.2.1.1391, float %i.fq)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.2.1309.1 = phi nsz float [ %i.fr, %bb.ad ], [ %.2.1.1391, %bb.ac ] ; 2 uses
  br i1 %i.dz, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %.sroa.0.12.vec.extract506 = extractelement <4 x float> %i.fl, i64 3
  %.sroa.0.4.vec.extract478 = extractelement <4 x float> %i.fl, i64 1
  %.sroa.speculated428 = select i1 %i.df, float %.sroa.0.12.vec.extract506, float %.sroa.0.4.vec.extract478
  %i.fs = fdiv reassoc nsz arcp contract afn float %.sroa.speculated428, %i.dr
  %i.ft = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %.2.1309.1, float %i.fs)
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.2.1.1.1 = phi nsz float [ %i.ft, %bb.af ], [ %.2.1309.1, %bb.ae ] ; 2 uses
  br i1 %i.dy, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %.sroa.0.8.vec.extract496 = extractelement <4 x float> %i.fl, i64 2
  %.sroa.0.0.vec.extract464 = extractelement <4 x float> %i.fl, i64 0
  %.sroa.speculated446 = select i1 %i.dg, float %.sroa.0.8.vec.extract496, float %.sroa.0.0.vec.extract464
  %i.fu = fdiv reassoc nsz arcp contract afn float %.sroa.speculated446, %i.dq
  %i.fv = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %.2.1.1.1, float %i.fu)
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %.2.2.1 = phi nsz float [ %i.fv, %bb.ah ], [ %.2.1.1.1, %bb.ag ] ; 2 uses
  br i1 %i.dx, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %.sroa.0.12.vec.extract510 = extractelement <4 x float> %i.fl, i64 3
  %.sroa.0.4.vec.extract482 = extractelement <4 x float> %i.fl, i64 1
  %.sroa.speculated422 = select i1 %i.dh, float %.sroa.0.12.vec.extract510, float %.sroa.0.4.vec.extract482
  %i.fw = fdiv reassoc nsz arcp contract afn float %.sroa.speculated422, %i.dp
  %i.fx = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %.2.2.1, float %i.fw)
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.2.1.2.1 = phi nsz float [ %i.fx, %bb.aj ], [ %.2.2.1, %bb.ai ] ; 2 uses
  br i1 %i.dw, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %.sroa.0.8.vec.extract500 = extractelement <4 x float> %i.fl, i64 2
  %.sroa.0.0.vec.extract460 = extractelement <4 x float> %i.fl, i64 0
  %.sroa.speculated440 = select i1 %i.di, float %.sroa.0.8.vec.extract500, float %.sroa.0.0.vec.extract460
  %i.fy = fdiv reassoc nsz arcp contract afn float %.sroa.speculated440, %i.do
  %i.fz = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %.2.1.2.1, float %i.fy)
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %.2.3.1 = phi nsz float [ %i.fz, %bb.al ], [ %.2.1.2.1, %bb.ak ] ; 2 uses
  br i1 %i.dv, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %.sroa.0.12.vec.extract514 = extractelement <4 x float> %i.fl, i64 3
  %.sroa.0.4.vec.extract486 = extractelement <4 x float> %i.fl, i64 1
  %.sroa.speculated416 = select i1 %i.dl, float %.sroa.0.12.vec.extract514, float %.sroa.0.4.vec.extract486
  %i.ga = fdiv reassoc nsz arcp contract afn float %.sroa.speculated416, %i.dn
  %i.gb = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %.2.3.1, float %i.ga)
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %.2.1.3.1 = phi nsz float [ %i.gb, %bb.an ], [ %.2.3.1, %bb.am ] ; 2 uses
  %i.gc = fcmp reassoc nsz arcp contract afn ult float %.2.1.3.1, %.1259
  br i1 %i.gc, label %.loopexit.a, label %.thread

.thread:                                          ; preds = %bb.ao
  store <2 x float> %i.bi, ptr %i.bj, align 4, !tbaa !13
  store i32 1, ptr %i.bk, align 4, !tbaa !71
  %i.gd = load <2 x float>, ptr %i.bl, align 4, !tbaa !13
  %i.ge = load <2 x float>, ptr %i.bm, align 4, !tbaa !13 ; 2 uses
  %i.gf = fsub reassoc nsz arcp contract afn <2 x float> %i.gd, %i.ge
  %i.gg = insertelement <2 x float> poison, float %.2.1.3.1, i64 0
  %i.gh = shufflevector <2 x float> %i.gg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gi = fmul reassoc nsz arcp contract afn <2 x float> %i.gh, %i.bh ; 2 uses
  %i.gj = shufflevector <2 x float> %i.bi, <2 x float> %i.gi, <4 x i32> <i32 1, i32 0, i32 3, i32 2> ; 2 uses
  %i.gk = shufflevector <2 x float> %i.gf, <2 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 0, i32 1>
  %i.gl = shufflevector <2 x float> %i.gi, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 poison, i32 poison>
  %i.gm = fsub reassoc nsz arcp contract afn <2 x float> splat (float 5.000000e-01), %i.ge
  %i.gn = shufflevector <2 x float> %i.gm, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.go = fmul reassoc nsz arcp contract afn <4 x float> %i.gl, %i.gn
  %i.gp = shufflevector <4 x float> %i.go, <4 x float> %i.gk, <4 x i32> <i32 0, i32 1, i32 6, i32 7> ; 2 uses
  %i.gq = fsub reassoc nsz arcp contract afn <4 x float> %i.gj, %i.gp
  %i.gr = fmul reassoc nsz arcp contract afn <4 x float> %i.gj, %i.gp
  %i.gs = shufflevector <4 x float> %i.gq, <4 x float> %i.gr, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.gt = fptosi <4 x float> %i.gs to <4 x i32>
  store <4 x i32> %i.gt, ptr %2, align 4, !tbaa !14
  br label %.loopexit.a

bb.ap:                                            ; preds = %bb.f, %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %2, ptr noundef nonnull align 16 dereferenceable(20) %4, i64 20, i1 false), !tbaa.struct !87
  %i.gu = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.gv = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  store i32 0, ptr %i.gv, align 4, !tbaa !71
  %i.gw = load i32, ptr %i.aj, align 4, !tbaa !66
  %i.gx = icmp eq i32 %i.gw, 1
  %i.gy = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  %i.gz = load float, ptr %i.gy, align 4, !tbaa !69 ; 4 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.b, i64 52
  %i.hb = load float, ptr %i.ha, align 4, !tbaa !70 ; 6 uses
  %i.hc = load <2 x i32>, ptr %i.gu, align 8, !tbaa !14 ; 2 uses
  %i.hd = shufflevector <2 x i32> %i.hc, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.he = sitofp reassoc nsz arcp contract afn <4 x i32> %i.hd to <4 x float> ; 11 uses
  %i.hf = shufflevector <4 x float> %i.he, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.hg = fmul reassoc nnan nsz arcp contract afn <2 x float> %i.hf, splat (float 5.000000e-01) ; 5 uses
  %i.hh = load <2 x float>, ptr %i.v, align 4, !tbaa !13 ; 6 uses
  %i.hi = load <2 x float>, ptr %i.ab, align 4, !tbaa !13 ; 2 uses
  %i.hj = shufflevector <2 x float> %i.hi, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 3 uses
  br i1 %i.gx, label %.split.us, label %.split.preheader

.split.preheader:                                 ; preds = %bb.ap
  %i.hk = fneg reassoc nsz arcp contract afn <2 x float> %i.hg
  %i.hl = shufflevector <4 x float> %i.he, <4 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 0, i32 1>
  %i.hm = shufflevector <2 x float> %i.hk, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 3 uses
  %i.hn = shufflevector <4 x float> %i.hm, <4 x float> %i.hl, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.ho = fmul reassoc nsz arcp contract afn <4 x float> %i.hn, <float 1.000000e+00, float 1.000000e+00, float 5.000000e-01, float 5.000000e-01> ; 2 uses
  %i.hp = shufflevector <4 x float> %i.he, <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x i32> <i32 poison, i32 0, i32 0, i32 7>
  %i.hq = shufflevector <4 x float> %i.hm, <4 x float> %i.hp, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.hr = fmul reassoc nsz arcp contract afn <4 x float> %i.hq, <float 1.000000e+00, float 5.000000e-01, float 5.000000e-01, float 1.000000e+00>
  %i.hs = shufflevector <2 x float> %i.hh, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 poison>
  %i.ht = insertelement <4 x float> %i.hs, float -0.000000e+00, i64 3
  %i.hu = fmul reassoc arcp contract afn <4 x float> %i.ht, %i.hr ; 2 uses
  %i.hv = shufflevector <2 x float> %i.hh, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 poison>
  %i.hw = insertelement <4 x float> %i.hv, float 1.000000e+00, i64 3
  %i.hx = shufflevector <4 x float> %i.hm, <4 x float> %i.ho, <4 x i32> <i32 1, i32 1, i32 7, i32 poison>
  %i.hy = insertelement <4 x float> %i.hx, float 1.000000e+00, i64 3
  %i.hz = fmul reassoc nsz arcp contract afn <4 x float> %i.hw, %i.hy ; 2 uses
  %i.ia = fadd reassoc nsz arcp contract afn <4 x float> %i.hz, %i.hu ; 3 uses
  %shift = shufflevector <4 x float> %i.hz, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop = fadd reassoc nsz arcp contract afn <4 x float> %shift, %i.hu
  %i.ib = extractelement <4 x float> %foldExtExtBinop, i64 0
  %i.ic = fmul reassoc nsz arcp contract afn <4 x float> %i.hj, %i.ho ; 2 uses
  %i.id = insertelement <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, float %i.gz, i64 0
  %i.ie = shufflevector <4 x float> %i.id, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.if = fmul reassoc arcp contract afn <4 x float> %i.ie, %i.ia
  %i.ig = fadd reassoc nsz arcp contract afn <4 x float> %i.if, splat (float 1.000000e+00)
  %i.ih = shufflevector <4 x float> %i.ic, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %i.ii = fadd reassoc nsz arcp contract afn <4 x float> %i.ic, %i.ih
  %i.ij = fmul reassoc nsz arcp contract afn <4 x float> %i.ii, %i.ig ; 3 uses
  %i.ik = extractelement <4 x float> %i.ij, i64 0
  %i.il = fmul reassoc nsz arcp contract afn float %i.ik, %i.hb
  %i.im = fadd reassoc nsz arcp contract afn float %i.il, 1.000000e+00
  %i.in = extractelement <4 x float> %i.ia, i64 0
  %i.io = fmul reassoc nsz arcp contract afn float %i.im, %i.in
  %i.ip = shufflevector <4 x float> %i.ij, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.iq = insertelement <2 x float> poison, float %i.hb, i64 0
  %i.ir = shufflevector <2 x float> %i.iq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.is = fmul reassoc nsz arcp contract afn <2 x float> %i.ip, %i.ir
  %i.it = fadd reassoc nsz arcp contract afn <2 x float> %i.is, splat (float 1.000000e+00)
  %i.iu = shufflevector <4 x float> %i.ia, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.iv = fmul reassoc nsz arcp contract afn <2 x float> %i.it, %i.iu ; 2 uses
  %i.iw = extractelement <2 x float> %i.iv, i64 0
  %i.ix = extractelement <2 x float> %i.iv, i64 1
  br label %.split297.us

.split.us:                                        ; preds = %bb.ap
  %i.iy = shufflevector <2 x float> %i.hg, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.iz = shufflevector <4 x float> %i.he, <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x i32> <i32 1, i32 0, i32 1, i32 7>
  %i.ja = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %i.jb = getelementptr inbounds nuw i8, ptr %i.b, i64 116
  %i.jc = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.jd = getelementptr inbounds nuw i8, ptr %i.b, i64 164
  %i.je = getelementptr inbounds nuw i8, ptr %i.b, i64 148
  %i.jf = getelementptr inbounds nuw i8, ptr %i.b, i64 100
  %i.jg = load float, ptr %i.jd, align 4, !tbaa !91
  %i.jh = load float, ptr %i.jc, align 4, !tbaa !92
  %i.ji = load float, ptr %i.jb, align 4, !tbaa !80
  %i.jj = load float, ptr %i.ja, align 4, !tbaa !81
  %i.jk = shufflevector <4 x float> %i.he, <4 x float> <float 0.000000e+00, float poison, float poison, float poison>, <2 x i32> <i32 4, i32 1>
  %i.jl = shufflevector <4 x float> %i.he, <4 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.jm = fdiv reassoc nsz arcp contract afn <2 x float> %i.jk, %i.jl
  %i.jn = insertelement <2 x float> poison, float %i.jj, i64 0
  %i.jo = shufflevector <2 x float> %i.jn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jp = fsub reassoc nsz arcp contract afn <2 x float> %i.jm, %i.jo ; 2 uses
  %i.jq = load <4 x float>, ptr %i.je, align 4, !tbaa !13 ; 4 uses
  %i.jr = load <2 x float>, ptr %i.jf, align 4, !tbaa !13
  %i.js = shufflevector <2 x float> %i.jr, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 3 uses
  %i.jt = shufflevector <4 x float> %i.he, <4 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ju = insertelement <2 x float> %i.jt, float 0.000000e+00, i64 0
  %i.jv = fdiv reassoc nsz arcp contract afn <2 x float> %i.ju, %i.jt
  %i.jw = insertelement <2 x float> poison, float %i.ji, i64 0
  %i.jx = shufflevector <2 x float> %i.jw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jy = fsub reassoc nsz arcp contract afn <2 x float> %i.jv, %i.jx ; 3 uses
  %i.jz = insertelement <2 x float> poison, float %i.jg, i64 0
  %i.ka = shufflevector <2 x float> %i.jy, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 0>
  %i.kb = shufflevector <2 x float> %i.jz, <2 x float> poison, <4 x i32> zeroinitializer
  %i.kc = fmul reassoc nsz arcp contract afn <4 x float> %i.ka, %i.kb
  %i.kd = fadd reassoc nsz arcp contract afn <4 x float> %i.kc, splat (float 1.000000e+00)
  %i.ke = shufflevector <2 x float> %i.jy, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.kf = shufflevector <2 x float> %i.jy, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 0>
  %i.kg = shufflevector <4 x float> %i.jq, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 0, i32 2>
  %i.kh = fmul reassoc nsz arcp contract afn <4 x float> %i.kf, %i.kg ; 2 uses
  %i.ki = shufflevector <4 x float> %i.jq, <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, <4 x i32> <i32 2, i32 0, i32 2, i32 7>
  %i.kj = shufflevector <4 x float> %i.ke, <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x i32> <i32 0, i32 1, i32 1, i32 7>
  %i.kk = fmul reassoc arcp contract afn <4 x float> %i.ki, %i.kj
  %i.kl = insertelement <2 x float> poison, float %i.jh, i64 0
  %i.km = shufflevector <2 x float> %i.jp, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.kn = shufflevector <2 x float> %i.kl, <2 x float> poison, <4 x i32> zeroinitializer
  %i.ko = fmul reassoc nsz arcp contract afn <4 x float> %i.km, %i.kn
  %i.kp = shufflevector <2 x float> %i.jp, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1> ; 2 uses
  %i.kq = shufflevector <4 x float> %i.jq, <4 x float> poison, <4 x i32> <i32 1, i32 3, i32 1, i32 3>
  %i.kr = fmul reassoc nsz arcp contract afn <4 x float> %i.kp, %i.kq ; 2 uses
  %i.ks = shufflevector <4 x float> %i.jq, <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, <4 x i32> <i32 3, i32 1, i32 3, i32 7>
  %i.kt = shufflevector <4 x float> %i.kp, <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x i32> <i32 0, i32 0, i32 2, i32 7>
  %i.ku = fmul reassoc arcp contract afn <4 x float> %i.ks, %i.kt
  %i.kv = fadd reassoc nsz arcp contract afn <4 x float> %i.kd, %i.ko ; 3 uses
  %i.kw = fadd reassoc nsz arcp contract afn <4 x float> %i.kr, %i.kh
  %i.kx = fdiv reassoc nsz arcp contract afn <4 x float> %i.kw, %i.kv
  %i.ky = fadd reassoc nsz arcp contract afn <4 x float> %i.kx, %i.js
  %i.kz = fmul reassoc nsz arcp contract afn <4 x float> %i.ky, %i.he
  %i.la = fsub reassoc nsz arcp contract afn <4 x float> %i.kz, %i.iy ; 4 uses
  %i.lb = extractelement <4 x float> %i.la, i64 0
  %i.lc = extractelement <2 x float> %i.hh, i64 0 ; 2 uses
  %i.ld = fmul reassoc nsz arcp contract afn float %i.lc, %i.lb
  %i.le = fadd reassoc arcp contract afn <4 x float> %i.ku, %i.kk
  %i.lf = insertelement <4 x float> %i.kv, float 1.000000e+00, i64 3
  %i.lg = fdiv reassoc arcp contract afn <4 x float> %i.le, %i.lf
  %i.lh = shufflevector <4 x float> %i.js, <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x i32> <i32 1, i32 0, i32 1, i32 7>
  %i.li = fadd reassoc nsz arcp contract afn <4 x float> %i.lh, %i.lg
  %i.lj = fadd reassoc nsz arcp contract afn <4 x float> %i.li, <float -5.000000e-01, float -5.000000e-01, float -5.000000e-01, float -0.000000e+00>
  %i.lk = fmul reassoc nsz arcp contract afn <4 x float> %i.lj, %i.iz ; 3 uses
  %i.ll = extractelement <4 x float> %i.lk, i64 0
  %i.lm = extractelement <2 x float> %i.hh, i64 1 ; 2 uses
  %i.ln = fmul reassoc nsz arcp contract afn float %i.lm, %i.ll
  %i.lo = fadd reassoc nsz arcp contract afn float %i.ln, %i.ld ; 2 uses
  %i.lp = fmul reassoc nsz arcp contract afn float %i.lo, %i.gz
  %i.lq = fadd reassoc nsz arcp contract afn float %i.lp, 1.000000e+00
  %i.lr = shufflevector <4 x float> %i.hj, <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, <4 x i32> <i32 1, i32 0, i32 1, i32 7>
  %i.ls = fmul reassoc arcp contract afn <4 x float> %i.lr, %i.lk
  %i.lt = shufflevector <2 x float> %i.hh, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.lu = shufflevector <4 x float> %i.la, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.lv = fmul reassoc nsz arcp contract afn <2 x float> %i.lt, %i.lu
  %i.lw = shufflevector <4 x float> %i.lk, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.lx = fmul reassoc nsz arcp contract afn <2 x float> %i.hh, %i.lw
  %i.ly = fadd reassoc nsz arcp contract afn <2 x float> %i.lx, %i.lv ; 3 uses
  %i.lz = insertelement <2 x float> poison, float %i.gz, i64 0
  %i.ma = shufflevector <2 x float> %i.lz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.mb = fmul reassoc nsz arcp contract afn <2 x float> %i.ly, %i.ma
  %i.mc = fadd reassoc nsz arcp contract afn <2 x float> %i.mb, splat (float 1.000000e+00)
  %shift373 = shufflevector <4 x float> %i.kr, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop374 = fadd reassoc nsz arcp contract afn <4 x float> %shift373, %i.kh
  %shift376 = shufflevector <4 x float> %i.kv, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop377 = fdiv reassoc nsz arcp contract afn <4 x float> %foldExtExtBinop374, %shift376
  %foldExtExtBinop379 = fadd reassoc nsz arcp contract afn <4 x float> %foldExtExtBinop377, %i.js
  %foldExtExtBinop381 = fmul reassoc nsz arcp contract afn <4 x float> %foldExtExtBinop379, %i.he
  %foldExtExtBinop383 = fsub reassoc nsz arcp contract afn <4 x float> %foldExtExtBinop381, %i.iy ; 2 uses
  %i.md = extractelement <4 x float> %foldExtExtBinop383, i64 0
  %foldExtExtBinop385 = fmul reassoc nsz arcp contract afn <4 x float> %i.hj, %foldExtExtBinop383
  %i.me = shufflevector <2 x float> %i.hi, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.mf = fmul reassoc nsz arcp contract afn <4 x float> %i.me, %i.la
  %i.mg = fadd reassoc nsz arcp contract afn <4 x float> %i.mf, %i.ls ; 2 uses
  %i.mh = insertelement <4 x float> poison, float %i.lq, i64 0
  %i.mi = shufflevector <2 x float> %i.mc, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.mj = shufflevector <4 x float> %i.mh, <4 x float> %i.mi, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.mk = shufflevector <4 x float> %i.mj, <4 x float> %foldExtExtBinop385, <4 x i32> <i32 0, i32 1, i32 2, i32 4> ; 2 uses
  %i.ml = fmul reassoc nsz arcp contract afn <4 x float> %i.mg, %i.mk ; 4 uses
  %i.mm = fadd reassoc nsz arcp contract afn <4 x float> %i.mg, %i.mk
  %i.mn = shufflevector <4 x float> %i.ml, <4 x float> %i.mm, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.mo = extractelement <4 x float> %i.ml, i64 0
  %i.mp = fmul reassoc nsz arcp contract afn float %i.mo, %i.hb
  %i.mq = fadd reassoc nsz arcp contract afn float %i.mp, 1.000000e+00
  %i.mr = fmul reassoc nsz arcp contract afn float %i.mq, %i.lo
  %i.ms = extractelement <4 x float> %i.ml, i64 1
  %i.mt = fmul reassoc nsz arcp contract afn float %i.ms, %i.hb
  %i.mu = fadd reassoc nsz arcp contract afn float %i.mt, 1.000000e+00
  %i.mv = extractelement <2 x float> %i.ly, i64 0
  %i.mw = fmul reassoc nsz arcp contract afn float %i.mu, %i.mv
  %i.mx = extractelement <4 x float> %i.ml, i64 2
  %i.my = fmul reassoc nsz arcp contract afn float %i.mx, %i.hb
  %i.mz = fadd reassoc nsz arcp contract afn float %i.my, 1.000000e+00
  %i.na = extractelement <2 x float> %i.ly, i64 1
  %i.nb = fmul reassoc nsz arcp contract afn float %i.mz, %i.na
  %i.nc = fmul reassoc nsz arcp contract afn float %i.lc, %i.md
  %i.nd = extractelement <4 x float> %i.la, i64 3
  %i.ne = fmul reassoc nsz arcp contract afn float %i.lm, %i.nd
  %i.nf = fadd reassoc nsz arcp contract afn float %i.ne, %i.nc
  br label %.split297.us

.split297.us:                                     ; preds = %.split.preheader, %.split.us
  %.sink367 = phi float [ %i.ib, %.split.preheader ], [ %i.nf, %.split.us ] ; 2 uses
  %.pn = phi float [ %i.io, %.split.preheader ], [ %i.mr, %.split.us ]
  %.pn350 = phi float [ %i.iw, %.split.preheader ], [ %i.mw, %.split.us ]
  %.pn351 = phi float [ %i.ix, %.split.preheader ], [ %i.nb, %.split.us ]
  %i.ng = phi <4 x float> [ %i.ij, %.split.preheader ], [ %i.mn, %.split.us ]
  %.scalar = fmul reassoc arcp contract afn float %.sink367, %i.gz
  %.scalar387 = fadd reassoc nsz arcp contract afn float %.scalar, 1.000000e+00
  %i.nh = insertelement <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float poison>, float %.scalar387, i64 3
  %i.ni = fmul <4 x float> %i.ng, %i.nh           ; 2 uses
  %i.nj = extractelement <4 x float> %i.ni, i64 3
  %i.nk = fmul reassoc nsz arcp contract afn float %i.nj, %i.hb
  %i.nl = fadd reassoc nsz arcp contract afn float %i.nk, 1.000000e+00
  %i.nm = fmul reassoc nsz arcp contract afn float %i.nl, %.sink367
  %i.nn = shufflevector <2 x float> %i.hg, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.no = fadd reassoc nsz arcp contract afn <4 x float> %i.ni, %i.nn ; 4 uses
  %i.np = extractelement <2 x float> %i.hg, i64 0 ; 5 uses
  %.sroa.12313.0 = fadd reassoc nsz arcp contract afn float %i.nm, %i.np ; 2 uses
  %.sroa.9312.0 = fadd reassoc nsz arcp contract afn float %.pn351, %i.np ; 2 uses
  %.sroa.6311.0 = fadd reassoc nsz arcp contract afn float %.pn350, %i.np ; 2 uses
  %.sroa.0310.0 = fadd reassoc nsz arcp contract afn float %.pn, %i.np ; 2 uses
  %i.nq = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %.sroa.0310.0, float %.sroa.6311.0)
  %i.nr = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.nq, float %.sroa.9312.0)
  %i.ns = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.nr, float %.sroa.12313.0) ; 2 uses
  %i.nt = extractelement <4 x float> %i.he, i64 0 ; 5 uses
  %i.nu = fadd reassoc nsz arcp contract afn float %i.ns, %i.nt
  %i.nv = fcmp reassoc nsz arcp contract afn olt float %i.nu, 0.000000e+00
  %i.nw = extractelement <4 x float> %i.no, i64 0 ; 2 uses
  %i.nx = extractelement <4 x float> %i.no, i64 1 ; 2 uses
  %i.ny = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.nw, float %i.nx)
  %i.nz = extractelement <4 x float> %i.no, i64 2 ; 2 uses
  %i.oa = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.ny, float %i.nz)
  %i.ob = extractelement <4 x float> %i.no, i64 3 ; 2 uses
  %i.oc = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.oa, float %i.ob) ; 2 uses
  %i.od = extractelement <4 x float> %i.he, i64 1 ; 6 uses
  %i.oe = fadd reassoc nsz arcp contract afn float %i.oc, %i.od
  %i.of = fcmp reassoc nsz arcp contract afn olt float %i.oe, 0.000000e+00
  %i.og = sub nsw <2 x i32> zeroinitializer, %i.hc
  %i.oh = sitofp reassoc nsz arcp contract afn <2 x i32> %i.og to <2 x float> ; 2 uses
  %i.oi = extractelement <2 x float> %i.oh, i64 0
  %.0250 = select nsz i1 %i.nv, float %i.oi, float %i.ns ; 3 uses
  %i.oj = extractelement <2 x float> %i.oh, i64 1
  %.0248 = select nsz i1 %i.of, float %i.oj, float %i.oc ; 3 uses
  %i.ok = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %.sroa.0310.0, float %.sroa.6311.0)
  %i.ol = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.ok, float %.sroa.9312.0)
  %i.om = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.ol, float %.sroa.12313.0) ; 2 uses
  %i.on = fmul reassoc nnan nsz arcp contract afn float %i.nt, 2.000000e+00 ; 2 uses
  %i.oo = fcmp reassoc nsz arcp contract afn ogt float %i.om, %i.on
  %.0246 = select nsz i1 %i.oo, float %i.on, float %i.om ; 3 uses
  %i.op = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.nw, float %i.nx)
  %i.oq = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.op, float %i.nz)
  %i.or = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.oq, float %i.ob) ; 2 uses
  %i.os = fmul reassoc nnan nsz arcp contract afn float %i.od, 2.000000e+00 ; 2 uses
  %i.ot = fcmp reassoc nsz arcp contract afn ogt float %i.or, %i.os
  %.0244 = select nsz i1 %i.ot, float %i.os, float %i.or ; 2 uses
  %i.ou = fsub reassoc nsz arcp contract afn float %.0246, %.0250
  %i.ov = fmul reassoc nnan nsz arcp contract afn float %i.nt, 1.250000e-01
  %i.ow = fcmp reassoc nsz arcp contract afn olt float %i.ou, %i.ov
  br i1 %i.ow, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %.split297.us
  %i.ox = fadd reassoc nsz arcp contract afn float %.0250, %.0246
  %i.oy = fmul reassoc nsz arcp contract afn float %i.ox, 5.000000e-01 ; 2 uses
  %i.oz = fmul reassoc nnan nsz arcp contract afn float %i.nt, 6.250000e-02 ; 4 uses
  %i.pa = fcmp reassoc nsz arcp contract afn olt float %i.oy, %i.oz
  %spec.select = select nsz i1 %i.pa, float %i.oz, float %i.oy ; 2 uses
  %i.pb = fmul reassoc nnan nsz arcp contract afn float %i.nt, 9.375000e-01 ; 2 uses
  %i.pc = fcmp reassoc nsz arcp contract afn ult float %spec.select, %i.pb
  %i.pd = fadd reassoc nsz arcp contract afn float %i.pb, -1.000000e+00
  %.1243 = select nsz i1 %i.pc, float %spec.select, float %i.pd ; 2 uses
  %i.pe = fsub reassoc nsz arcp contract afn float %.1243, %i.oz
  %i.pf = fadd reassoc nsz arcp contract afn float %.1243, %i.oz
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %.split297.us
  %.1251 = phi nsz float [ %i.pe, %bb.aq ], [ %.0250, %.split297.us ] ; 2 uses
  %.1247 = phi nsz float [ %i.pf, %bb.aq ], [ %.0246, %.split297.us ]
  %i.pg = fsub reassoc nsz arcp contract afn float %.0244, %.0248 ; 2 uses
  %i.ph = fmul reassoc nnan nsz arcp contract afn float %i.od, 1.250000e-01
  %i.pi = fcmp reassoc nsz arcp contract afn olt float %i.pg, %i.ph
  br i1 %i.pi, label %bb.as, label %.thread358

bb.as:                                            ; preds = %bb.ar
  %i.pj = fadd reassoc nsz arcp contract afn float %.0248, %.0244
  %i.pk = fmul reassoc nsz arcp contract afn float %i.pj, 5.000000e-01 ; 2 uses
  %i.pl = fmul reassoc nnan nsz arcp contract afn float %i.od, 6.250000e-02 ; 3 uses
  %i.pm = fcmp reassoc nsz arcp contract afn olt float %i.pk, %i.pl
  %spec.select275 = select nsz i1 %i.pm, float %i.pl, float %i.pk ; 2 uses
  %i.pn = fmul reassoc nnan nsz arcp contract afn float %i.od, 9.375000e-01 ; 2 uses
  %i.po = fcmp reassoc nsz arcp contract afn ult float %spec.select275, %i.pn
  %i.pp = fadd reassoc nsz arcp contract afn float %i.pn, -1.000000e+00
  %.1 = select nsz i1 %i.po, float %spec.select275, float %i.pp
  %i.pq = fsub reassoc nsz arcp contract afn float %.1, %i.pl
  %.pre347 = fmul reassoc nnan nsz arcp contract afn float %i.od, 1.250000e-01
  br label %.thread358

.thread358:                                       ; preds = %bb.ar, %bb.as
  %.pre-phi = phi float [ %.pre347, %bb.as ], [ %i.pg, %bb.ar ]
  %.1249 = phi nsz float [ %i.pq, %bb.as ], [ %.0248, %bb.ar ]
  %i.pr = fsub reassoc nsz arcp contract afn float %.1247, %.1251
  %i.ps = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.pt = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.pu = getelementptr inbounds nuw i8, ptr %i.b, i64 180
  %i.pv = load <2 x float>, ptr %i.ps, align 4, !tbaa !13 ; 2 uses
  %i.pw = insertelement <2 x float> poison, float %i.pr, i64 0
  %i.px = insertelement <2 x float> %i.pw, float %.pre-phi, i64 1 ; 2 uses
  %i.py = fmul reassoc nsz arcp contract afn <2 x float> %i.pv, %i.px
  %i.pz = insertelement <2 x float> poison, float %.1251, i64 0
  %i.qa = insertelement <2 x float> %i.pz, float %.1249, i64 1
  %i.qb = fadd reassoc nsz arcp contract afn <2 x float> %i.py, %i.qa ; 2 uses
  %i.qc = load <2 x float>, ptr %i.pt, align 4, !tbaa !13
  %i.qd = fsub reassoc nsz arcp contract afn <2 x float> %i.qc, %i.pv
  %i.qe = fmul reassoc nsz arcp contract afn <2 x float> %i.qd, %i.px
  %i.qf = fneg reassoc nsz arcp contract afn <2 x float> %i.qb
  %i.qg = tail call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.qf, <2 x float> zeroinitializer)
  store <2 x float> %i.qg, ptr %i.pu, align 4, !tbaa !13
  %i.qh = shufflevector <2 x float> %i.qe, <2 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 0, i32 1>
  %i.qi = tail call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.qb, <2 x float> zeroinitializer)
  %i.qj = shufflevector <2 x float> %i.qi, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.qk = shufflevector <4 x float> %i.qj, <4 x float> %i.qh, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.ql = fptosi <4 x float> %i.qk to <4 x i32>   ; 2 uses
  store <4 x i32> %i.ql, ptr %2, align 4, !tbaa !14
  %i.qm = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store float %i.np, ptr %i.qm, align 4, !tbaa !67
  %i.qn = getelementptr inbounds nuw i8, ptr %i.b, i64 60
  %i.qo = extractelement <2 x float> %i.hg, i64 1
  store float %i.qo, ptr %i.qn, align 4, !tbaa !68
  %i.qp = extractelement <4 x i32> %i.ql, i64 0
  br label %bb.au

.loopexit.a:                                      ; preds = %bb.ao, %.thread
  %.pre = load i32, ptr %2, align 4, !tbaa !93    ; 2 uses
  %i.qq = icmp slt i32 %.pre, 0
  br i1 %i.qq, label %bb.at, label %bb.au

bb.at:                                            ; preds = %.loopexit.a
  store i32 0, ptr %2, align 4, !tbaa !93
  br label %bb.au

bb.au:                                            ; preds = %.thread358, %bb.at, %.loopexit.a
  %5 = phi i32 [ 0, %bb.at ], [ %.pre, %.loopexit.a ], [ %i.qp, %.thread358 ]
  %i.qr = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 3 uses
  %i.qs = load i32, ptr %i.qr, align 4, !tbaa !94 ; 2 uses
  %i.qt = icmp slt i32 %i.qs, 0
  br i1 %i.qt, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  store i32 0, ptr %i.qr, align 4, !tbaa !94
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %i.qu = phi i32 [ 0, %bb.av ], [ %i.qs, %bb.au ]
  %i.qv = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.qw = load i32, ptr %i.qv, align 4, !tbaa !78
  %i.qx = icmp slt i32 %i.qw, 4
  br i1 %i.qx, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.qy = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.qz = load i32, ptr %i.qy, align 4, !tbaa !79
  %i.ra = icmp slt i32 %i.qz, 4
  br i1 %i.ra, label %bb.ay, label %bb.bc

bb.ay:                                            ; preds = %bb.aw, %bb.ax
  %i.rb = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !132
  %i.rc = and i32 %i.rb, 33554432
  %.not272 = icmp eq i32 %i.rc, 0
  br i1 %.not272, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.rd = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.re = load ptr, ptr %i.rd, align 8, !tbaa !33
  call void (ptr, ptr, ptr, i32, ptr, ptr, ptr, ...) @dt_print_pipe_ext(ptr noundef nonnull @.str.7, ptr noundef %i.re, ptr noundef %0, i32 noundef -2, ptr noundef nonnull %4, ptr noundef nonnull %2, ptr noundef nonnull @.str.8) #25
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %i.rf = load <4 x i32>, ptr %4, align 16, !tbaa !14 ; 3 uses
  store <4 x i32> %i.rf, ptr %2, align 4, !tbaa !14
  %i.rg = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i32 0, ptr %i.rg, align 16, !tbaa !285
  %i.rh = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ri = load ptr, ptr %i.rh, align 8, !tbaa !33
  %i.rj = getelementptr i8, ptr %i.ri, i64 644
  %.val = load i32, ptr %i.rj, align 4, !tbaa !50
  %i.rk = and i32 %.val, 2
  %.not273 = icmp eq i32 %i.rk, 0
  %i.rl = extractelement <4 x i32> %i.rf, i64 0
  %i.rm = extractelement <4 x i32> %i.rf, i64 1
  br i1 %.not273, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.rn = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.9, i32 noundef 5) #25
  %i.ro = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.rp = load ptr, ptr %i.ro, align 8, !tbaa !133
  %i.rq = call ptr %i.rp() #25
  call void (ptr, ...) @dt_control_log(ptr noundef %i.rn, ptr noundef %i.rq) #25
  %.pre345 = load i32, ptr %2, align 4, !tbaa !93
  %.pre346 = load i32, ptr %i.qr, align 4, !tbaa !94
  br label %bb.bc

bb.bc:                                            ; preds = %bb.ba, %bb.bb, %bb.ax
  %i.rr = phi i32 [ %i.rm, %bb.ba ], [ %.pre346, %bb.bb ], [ %i.qu, %bb.ax ]
  %i.rs = phi i32 [ %i.rl, %bb.ba ], [ %.pre345, %bb.bb ], [ %5, %bb.ax ]
  %i.rt = sitofp reassoc nsz arcp contract afn i32 %i.rs to float
  %i.ru = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  store float %i.rt, ptr %i.ru, align 4, !tbaa !72
  %i.rv = sitofp reassoc nsz arcp contract afn i32 %i.rr to float
  %i.rw = getelementptr inbounds nuw i8, ptr %i.b, i64 84
  store float %i.rv, ptr %i.rw, align 4, !tbaa !74
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.minnum.f32(float, float) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.maxnum.f32(float, float) #9

declare void @dt_print_pipe_ext(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #6

declare void @dt_control_log(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @modify_roi_in(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef writeonly captures(none) initializes((0, 20)) %3) local_unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !62  ; 26 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %3, ptr noundef nonnull align 4 dereferenceable(20) %2, i64 20, i1 false), !tbaa.struct !87
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.d = load float, ptr %i.c, align 4, !tbaa !85 ; 10 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 180
  %i.g = load float, ptr %i.f, align 4, !tbaa !73
  %i.h = fmul reassoc nsz arcp contract afn float %i.g, %i.d
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 184
  %i.j = load float, ptr %i.i, align 4, !tbaa !75
  %i.k = fmul reassoc nsz arcp contract afn float %i.j, %i.d
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.m = load float, ptr %i.l, align 4, !tbaa !72
  %i.n = fmul reassoc nsz arcp contract afn float %i.m, %i.d
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 84
  %i.p = load float, ptr %i.o, align 4, !tbaa !74
  %i.q = fmul reassoc nsz arcp contract afn float %i.p, %i.d
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.t = load <4 x i32>, ptr %2, align 4, !tbaa !14
  %i.u = sitofp reassoc nsz arcp contract afn <4 x i32> %i.t to <4 x float> ; 4 uses
  %i.v = extractelement <4 x float> %i.u, i64 0
  %i.w = fsub reassoc nsz arcp contract afn float %i.v, %i.h
  %i.x = extractelement <4 x float> %i.u, i64 1
  %i.y = fsub reassoc nsz arcp contract afn float %i.x, %i.k
  %i.z = fadd reassoc nsz arcp contract afn float %i.n, %i.w ; 3 uses
  %i.aa = fadd reassoc nsz arcp contract afn float %i.q, %i.y ; 3 uses
  %i.ab = extractelement <4 x float> %i.u, i64 2
  %i.ac = fadd reassoc nsz arcp contract afn float %i.z, %i.ab ; 2 uses
  %i.ad = extractelement <4 x float> %i.u, i64 3
  %i.ae = fadd reassoc nsz arcp contract afn float %i.aa, %i.ad ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !71
  %.not116 = icmp eq i32 %i.ag, 0                 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 60 ; 3 uses
  %. = select i1 %.not116, ptr %i.ai, ptr %i.ah
  %.151 = select i1 %.not116, ptr %i.ah, ptr %i.ai
  %.pn150 = load float, ptr %.151, align 4, !tbaa !13
  %i.aj = load <2 x i32>, ptr %i.e, align 16, !tbaa !14
  %i.ak = sitofp reassoc nsz arcp contract afn <2 x i32> %i.aj to <2 x float>
  %i.al = insertelement <2 x float> poison, float %i.d, i64 0
  %i.am = shufflevector <2 x float> %i.al, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.an = fmul reassoc nsz arcp contract afn <2 x float> %i.am, %i.ak ; 5 uses
  %.pn149 = fmul reassoc nsz arcp contract afn float %.pn150, %i.d ; 2 uses
  %.pn148 = load float, ptr %., align 4, !tbaa !13
  %.pn = fmul reassoc nsz arcp contract afn float %.pn148, %i.d ; 2 uses
  %i.ao = fpext reassoc nsz arcp contract afn float %i.d to double
  %i.ap = fdiv reassoc nsz arcp contract afn double 1.000000e+00, %i.ao ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  %i.as = load float, ptr %i.ar, align 4, !tbaa !69 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.b, i64 52
  %i.au = load float, ptr %i.at, align 4, !tbaa !70 ; 2 uses
  %i.av = load float, ptr %i.aq, align 4, !tbaa !13 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !13 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.az = load float, ptr %i.ay, align 4, !tbaa !13 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !13 ; 2 uses
  %i.bc = load float, ptr %i.ah, align 4, !tbaa !67 ; 2 uses
  %i.bd = load float, ptr %i.ai, align 4, !tbaa !68 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.b, i64 172
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !66
  %i.bg = icmp eq i32 %i.bf, 1
  %i.bh = fdiv reassoc nsz arcp contract afn <2 x float> %i.am, %i.an ; 4 uses
  br i1 %i.bg, label %.split.us, label %.split

.split.us:                                        ; preds = %bb.a
  %i.bi = getelementptr i8, ptr %i.b, i64 104
  %i.bj = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %i.bk = getelementptr inbounds nuw i8, ptr %i.b, i64 116
  %i.bl = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.bm = getelementptr inbounds nuw i8, ptr %i.b, i64 164
  %i.bn = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  %i.bo = getelementptr inbounds nuw i8, ptr %i.b, i64 156
  %i.bp = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  %i.bq = getelementptr inbounds nuw i8, ptr %i.b, i64 148
  %i.br = getelementptr inbounds nuw i8, ptr %i.b, i64 100
  %i.bs = load float, ptr %i.bq, align 4, !tbaa !286 ; 2 uses
  %i.bt = load float, ptr %i.bp, align 4, !tbaa !287 ; 2 uses
  %i.bu = load float, ptr %i.bo, align 4, !tbaa !288 ; 2 uses
  %i.bv = load float, ptr %i.bn, align 4, !tbaa !289 ; 2 uses
  %i.bw = load float, ptr %i.bm, align 4, !tbaa !91
  %i.bx = load float, ptr %i.bl, align 4, !tbaa !92
  %i.by = load float, ptr %i.bk, align 4, !tbaa !80
  %i.bz = load float, ptr %i.bj, align 4, !tbaa !81
  %.val.us = load float, ptr %i.br, align 4, !tbaa !13
  %.val120.us = load float, ptr %i.bi, align 4, !tbaa !13
  %i.ca = fmul reassoc nsz arcp contract afn float %i.bv, %i.bs
  %i.cb = fmul reassoc nsz arcp contract afn float %i.bt, %i.bu
  %i.cc = fsub reassoc nsz arcp contract afn float %i.ca, %i.cb
  %i.cd = insertelement <2 x float> poison, float %i.z, i64 0
  %i.ce = insertelement <2 x float> %i.cd, float %i.ac, i64 1
  %i.cf = insertelement <2 x float> poison, float %.pn149, i64 0
  %i.cg = shufflevector <2 x float> %i.cf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ch = fsub reassoc nsz arcp contract afn <2 x float> %i.ce, %i.cg
  %i.ci = insertelement <2 x float> poison, float %i.aa, i64 0
  %i.cj = insertelement <2 x float> %i.ci, float %i.ae, i64 1
  %i.ck = insertelement <2 x float> poison, float %.pn, i64 0
  %i.cl = shufflevector <2 x float> %i.ck, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cm = fsub reassoc nsz arcp contract afn <2 x float> %i.cj, %i.cl
  %i.cn = fpext reassoc nsz arcp contract afn <2 x float> %i.cm to <2 x double>
  %i.co = fpext reassoc nsz arcp contract afn <2 x float> %i.ch to <2 x double>
  %i.cp = insertelement <2 x double> poison, double %i.ap, i64 0
  %i.cq = shufflevector <2 x double> %i.cp, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cr = fmul reassoc nsz arcp contract afn <2 x double> %i.cq, %i.co
  %i.cs = shufflevector <2 x double> %i.cr, <2 x double> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.ct = fptrunc reassoc nsz arcp contract afn <4 x double> %i.cs to <4 x float> ; 3 uses
  %i.cu = extractelement <4 x float> %i.ct, i64 0
  %i.cv = fmul reassoc nsz arcp contract afn float %i.as, %i.cu
  %i.cw = extractelement <4 x float> %i.ct, i64 2
  %i.cx = fmul reassoc nsz arcp contract afn float %i.as, %i.cw
  %i.cy = insertelement <4 x float> poison, float %i.cv, i64 0
  %i.cz = insertelement <4 x float> %i.cy, float %i.cx, i64 2
  %i.da = fadd reassoc nsz arcp contract afn <4 x float> %i.cz, <float 1.000000e+00, float poison, float 1.000000e+00, float poison>
  %i.db = shufflevector <4 x float> %i.da, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 2>
  %i.dc = fmul reassoc nsz arcp contract afn <2 x double> %i.cq, %i.cn
  %i.dd = shufflevector <2 x double> %i.dc, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.de = fptrunc reassoc nsz arcp contract afn <4 x double> %i.dd to <4 x float>
  %i.df = fdiv reassoc nsz arcp contract afn <4 x float> %i.de, %i.db ; 3 uses
  %i.dg = insertelement <4 x float> poison, float %i.au, i64 0
  %i.dh = shufflevector <4 x float> %i.dg, <4 x float> poison, <4 x i32> zeroinitializer
  %i.di = fmul reassoc nsz arcp contract afn <4 x float> %i.df, %i.dh
  %i.dj = fadd reassoc nsz arcp contract afn <4 x float> %i.di, splat (float 1.000000e+00)
  %i.dk = fdiv reassoc nsz arcp contract afn <4 x float> %i.ct, %i.dj ; 2 uses
  %i.dl = insertelement <4 x float> poison, float %i.av, i64 0
  %i.dm = shufflevector <4 x float> %i.dl, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dn = fmul reassoc nsz arcp contract afn <4 x float> %i.dk, %i.dm
  %i.do = insertelement <4 x float> poison, float %i.ax, i64 0
  %i.dp = shufflevector <4 x float> %i.do, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dq = fmul reassoc nsz arcp contract afn <4 x float> %i.df, %i.dp
  %i.dr = insertelement <4 x float> poison, float %i.az, i64 0
  %i.ds = shufflevector <4 x float> %i.dr, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dt = fmul reassoc nsz arcp contract afn <4 x float> %i.dk, %i.ds
  %i.du = insertelement <4 x float> poison, float %i.bb, i64 0
  %i.dv = shufflevector <4 x float> %i.du, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dw = fmul reassoc nsz arcp contract afn <4 x float> %i.df, %i.dv
  %i.dx = insertelement <4 x float> poison, float %i.bc, i64 0
  %i.dy = shufflevector <4 x float> %i.dx, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dz = fadd reassoc nsz arcp contract afn <4 x float> %i.dq, %i.dy
  %i.ea = fadd reassoc nsz arcp contract afn <4 x float> %i.dz, %i.dn
  %i.eb = shufflevector <2 x float> %i.bh, <2 x float> poison, <4 x i32> zeroinitializer
  %i.ec = fmul reassoc nsz arcp contract afn <4 x float> %i.ea, %i.eb
  %i.ed = insertelement <4 x float> poison, float %i.bd, i64 0
  %i.ee = shufflevector <4 x float> %i.ed, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ef = fadd reassoc nsz arcp contract afn <4 x float> %i.ee, %i.dw
  %i.eg = fadd reassoc nsz arcp contract afn <4 x float> %i.ef, %i.dt
  %i.eh = shufflevector <2 x float> %i.bh, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.ei = fmul reassoc nsz arcp contract afn <4 x float> %i.eg, %i.eh
  %i.ej = insertelement <4 x float> poison, float %.val.us, i64 0
  %i.ek = shufflevector <4 x float> %i.ej, <4 x float> poison, <4 x i32> zeroinitializer
  %i.el = fsub reassoc nsz arcp contract afn <4 x float> %i.ec, %i.ek ; 2 uses
  %i.em = insertelement <4 x float> poison, float %.val120.us, i64 0
  %i.en = shufflevector <4 x float> %i.em, <4 x float> poison, <4 x i32> zeroinitializer
  %i.eo = fsub reassoc nsz arcp contract afn <4 x float> %i.ei, %i.en ; 2 uses
  %i.ep = insertelement <4 x float> poison, float %i.bt, i64 0
  %i.eq = shufflevector <4 x float> %i.ep, <4 x float> poison, <4 x i32> zeroinitializer
  %i.er = fmul reassoc nsz arcp contract afn <4 x float> %i.eo, %i.eq ; 2 uses
  %i.es = insertelement <4 x float> poison, float %i.bv, i64 0
  %i.et = shufflevector <4 x float> %i.es, <4 x float> poison, <4 x i32> zeroinitializer
  %i.eu = fmul reassoc nsz arcp contract afn <4 x float> %i.el, %i.et ; 2 uses
  %i.ev = insertelement <4 x float> poison, float %i.bu, i64 0
  %i.ew = shufflevector <4 x float> %i.ev, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ex = fmul reassoc nsz arcp contract afn <4 x float> %i.el, %i.ew
  %i.ey = insertelement <4 x float> poison, float %i.bs, i64 0
  %i.ez = shufflevector <4 x float> %i.ey, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fa = fmul reassoc nsz arcp contract afn <4 x float> %i.eo, %i.ez
  %i.fb = fsub reassoc nsz arcp contract afn <4 x float> %i.ex, %i.fa ; 2 uses
  %i.fc = insertelement <4 x float> poison, float %i.bx, i64 0
  %i.fd = shufflevector <4 x float> %i.fc, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fe = fmul reassoc nsz arcp contract afn <4 x float> %i.fb, %i.fd
  %i.ff = fsub reassoc nsz arcp contract afn <4 x float> %i.er, %i.eu
  %i.fg = insertelement <4 x float> poison, float %i.bw, i64 0
  %i.fh = shufflevector <4 x float> %i.fg, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fi = fmul reassoc nsz arcp contract afn <4 x float> %i.ff, %i.fh
  %i.fj = insertelement <4 x float> poison, float %i.cc, i64 0
  %i.fk = shufflevector <4 x float> %i.fj, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fl = fadd reassoc nsz arcp contract afn <4 x float> %i.fk, %i.fi
  %i.fm = fadd reassoc nsz arcp contract afn <4 x float> %i.fl, %i.fe ; 2 uses
  %i.fn = fdiv reassoc nsz arcp contract afn <4 x float> %i.fb, %i.fm
  %i.fo = insertelement <4 x float> poison, float %i.bz, i64 0
  %i.fp = shufflevector <4 x float> %i.fo, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fq = fsub reassoc nsz arcp contract afn <4 x float> %i.fp, %i.fn
  %i.fr = shufflevector <2 x float> %i.an, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.fs = fmul reassoc nsz arcp contract afn <4 x float> %i.fq, %i.fr ; 4 uses
  %i.ft = fsub reassoc nsz arcp contract afn <4 x float> %i.eu, %i.er
  %i.fu = fdiv reassoc nsz arcp contract afn <4 x float> %i.ft, %i.fm
  %i.fv = insertelement <4 x float> poison, float %i.by, i64 0
  %i.fw = shufflevector <4 x float> %i.fv, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fx = fadd reassoc nsz arcp contract afn <4 x float> %i.fu, %i.fw
  %i.fy = shufflevector <2 x float> %i.an, <2 x float> poison, <4 x i32> zeroinitializer
  %i.fz = fmul reassoc nsz arcp contract afn <4 x float> %i.fx, %i.fy ; 4 uses
  %i.ga = shufflevector <4 x float> %i.fz, <4 x float> %i.fs, <2 x i32> <i32 0, i32 4> ; 2 uses
  %i.gb = tail call reassoc nsz arcp contract afn <2 x float> @llvm.minnum.v2f32(<2 x float> %i.ga, <2 x float> splat (float f0x7F7FFFFF))
  %i.gc = tail call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.ga, <2 x float> splat (float f0xFF7FFFFF))
  %i.gd = shufflevector <4 x float> %i.fz, <4 x float> %i.fs, <2 x i32> <i32 2, i32 6> ; 2 uses
  %i.ge = tail call reassoc nsz arcp contract afn <2 x float> @llvm.minnum.v2f32(<2 x float> %i.gb, <2 x float> %i.gd)
  %i.gf = tail call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.gc, <2 x float> %i.gd)
  %i.gg = shufflevector <4 x float> %i.fz, <4 x float> %i.fs, <2 x i32> <i32 1, i32 5> ; 2 uses
  %i.gh = tail call reassoc nsz arcp contract afn <2 x float> @llvm.minnum.v2f32(<2 x float> %i.ge, <2 x float> %i.gg)
  %i.gi = tail call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.gf, <2 x float> %i.gg)
  %i.gj = shufflevector <4 x float> %i.fz, <4 x float> %i.fs, <2 x i32> <i32 3, i32 7> ; 2 uses
  %i.gk = tail call reassoc nsz arcp contract afn <2 x float> @llvm.minnum.v2f32(<2 x float> %i.gh, <2 x float> %i.gj)
  %i.gl = tail call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.gi, <2 x float> %i.gj)
  br label %.split160.us

.split:                                           ; preds = %bb.a
  %foldExtExtBinop = fmul reassoc nsz arcp contract afn <2 x float> %i.bh, %i.an
  %foldExtExtBinop188 = fmul reassoc nsz arcp contract afn <2 x float> %i.bh, %i.an
  %i.gm = insertelement <2 x float> poison, float %i.z, i64 0
  %i.gn = insertelement <2 x float> %i.gm, float %i.ac, i64 1
  %i.go = insertelement <2 x float> poison, float %.pn149, i64 0
  %i.gp = shufflevector <2 x float> %i.go, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gq = fsub reassoc nsz arcp contract afn <2 x float> %i.gn, %i.gp
  %i.gr = insertelement <2 x float> poison, float %i.aa, i64 0
  %i.gs = insertelement <2 x float> %i.gr, float %i.ae, i64 1
  %i.gt = insertelement <2 x float> poison, float %.pn, i64 0
  %i.gu = shufflevector <2 x float> %i.gt, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gv = fsub reassoc nsz arcp contract afn <2 x float> %i.gs, %i.gu
  %i.gw = fpext reassoc nsz arcp contract afn <2 x float> %i.gq to <2 x double>
  %i.gx = insertelement <2 x double> poison, double %i.ap, i64 0
  %i.gy = shufflevector <2 x double> %i.gx, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.gz = fmul reassoc nsz arcp contract afn <2 x double> %i.gy, %i.gw
  %i.ha = fptrunc reassoc nsz arcp contract afn <2 x double> %i.gz to <2 x float> ; 2 uses
  %i.hb = insertelement <2 x float> poison, float %i.as, i64 0
  %i.hc = shufflevector <2 x float> %i.hb, <2 x float> poison, <4 x i32> zeroinitializer
  %i.hd = shufflevector <2 x float> %i.ha, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.he = fmul reassoc nsz arcp contract afn <4 x float> %i.hc, %i.hd
  %i.hf = fadd reassoc nsz arcp contract afn <4 x float> %i.he, splat (float 1.000000e+00)
  %i.hg = fpext reassoc nsz arcp contract afn <2 x float> %i.gv to <2 x double>
  %i.hh = fmul reassoc nsz arcp contract afn <2 x double> %i.gy, %i.hg
  %i.hi = shufflevector <2 x double> %i.hh, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.hj = fptrunc reassoc nsz arcp contract afn <4 x double> %i.hi to <4 x float>
  %i.hk = fdiv reassoc nsz arcp contract afn <4 x float> %i.hj, %i.hf ; 3 uses
  %i.hl = insertelement <4 x float> poison, float %i.au, i64 0
  %i.hm = shufflevector <4 x float> %i.hl, <4 x float> poison, <4 x i32> zeroinitializer
  %i.hn = fmul reassoc nsz arcp contract afn <4 x float> %i.hk, %i.hm
  %i.ho = fadd reassoc nsz arcp contract afn <4 x float> %i.hn, splat (float 1.000000e+00)
  %i.hp = shufflevector <2 x float> %i.ha, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.hq = fdiv reassoc nsz arcp contract afn <4 x float> %i.hp, %i.ho ; 2 uses
  %i.hr = insertelement <4 x float> poison, float %i.az, i64 0
  %i.hs = shufflevector <4 x float> %i.hr, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ht = fmul reassoc nsz arcp contract afn <4 x float> %i.hq, %i.hs
  %i.hu = insertelement <4 x float> poison, float %i.bb, i64 0
  %i.hv = shufflevector <4 x float> %i.hu, <4 x float> poison, <4 x i32> zeroinitializer
  %i.hw = fmul reassoc nsz arcp contract afn <4 x float> %i.hk, %i.hv
  %i.hx = insertelement <4 x float> poison, float %i.bd, i64 0
  %i.hy = shufflevector <4 x float> %i.hx, <4 x float> poison, <4 x i32> zeroinitializer
  %i.hz = fadd reassoc nsz arcp contract afn <4 x float> %i.hy, %i.hw
  %i.ia = fadd reassoc nsz arcp contract afn <4 x float> %i.hz, %i.ht
  %i.ib = shufflevector <2 x float> %foldExtExtBinop188, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.ic = fmul reassoc nsz arcp contract afn <4 x float> %i.ia, %i.ib ; 4 uses
  %i.id = insertelement <4 x float> poison, float %i.av, i64 0
  %i.ie = shufflevector <4 x float> %i.id, <4 x float> poison, <4 x i32> zeroinitializer
  %i.if = fmul reassoc nsz arcp contract afn <4 x float> %i.hq, %i.ie
  %i.ig = insertelement <4 x float> poison, float %i.ax, i64 0
  %i.ih = shufflevector <4 x float> %i.ig, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ii = fmul reassoc nsz arcp contract afn <4 x float> %i.hk, %i.ih
  %i.ij = insertelement <4 x float> poison, float %i.bc, i64 0
  %i.ik = shufflevector <4 x float> %i.ij, <4 x float> poison, <4 x i32> zeroinitializer
  %i.il = fadd reassoc nsz arcp contract afn <4 x float> %i.ii, %i.ik
  %i.im = fadd reassoc nsz arcp contract afn <4 x float> %i.il, %i.if
  %i.in = shufflevector <2 x float> %foldExtExtBinop, <2 x float> poison, <4 x i32> zeroinitializer
  %i.io = fmul reassoc nsz arcp contract afn <4 x float> %i.im, %i.in ; 4 uses
  %i.ip = shufflevector <4 x float> %i.io, <4 x float> %i.ic, <2 x i32> <i32 0, i32 4> ; 2 uses
  %i.iq = tail call reassoc nsz arcp contract afn <2 x float> @llvm.minnum.v2f32(<2 x float> %i.ip, <2 x float> splat (float f0x7F7FFFFF))
  %i.ir = tail call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.ip, <2 x float> splat (float f0xFF7FFFFF))
  %i.is = shufflevector <4 x float> %i.io, <4 x float> %i.ic, <2 x i32> <i32 2, i32 6> ; 2 uses
  %i.it = tail call reassoc nsz arcp contract afn <2 x float> @llvm.minnum.v2f32(<2 x float> %i.iq, <2 x float> %i.is)
  %i.iu = tail call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.ir, <2 x float> %i.is)
  %i.iv = shufflevector <4 x float> %i.io, <4 x float> %i.ic, <2 x i32> <i32 1, i32 5> ; 2 uses
  %i.iw = tail call reassoc nsz arcp contract afn <2 x float> @llvm.minnum.v2f32(<2 x float> %i.it, <2 x float> %i.iv)
  %i.ix = tail call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.iu, <2 x float> %i.iv)
  %i.iy = shufflevector <4 x float> %i.io, <4 x float> %i.ic, <2 x i32> <i32 3, i32 7> ; 2 uses
  %i.iz = tail call reassoc nsz arcp contract afn <2 x float> @llvm.minnum.v2f32(<2 x float> %i.iw, <2 x float> %i.iy)
  %i.ja = tail call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.ix, <2 x float> %i.iy)
  br label %.split160.us

.split160.us:                                     ; preds = %.split, %.split.us
  %i.jb = phi <2 x float> [ %i.gl, %.split.us ], [ %i.ja, %.split ]
  %i.jc = phi <2 x float> [ %i.gk, %.split.us ], [ %i.iz, %.split ] ; 3 uses
  %i.jd = extractelement <2 x float> %i.jc, i64 0 ; 2 uses
  %i.je = fadd reassoc nsz arcp contract afn float %i.jd, -1.000000e+00 ; 2 uses
  %i.jf = extractelement <2 x float> %i.jc, i64 1 ; 2 uses
  %i.jg = fadd reassoc nsz arcp contract afn float %i.jf, -1.000000e+00 ; 2 uses
  %i.jh = fadd reassoc nsz arcp contract afn <2 x float> %i.jb, splat (float 2.000000e+00)
  %i.ji = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.jj = fsub reassoc nsz arcp contract afn <2 x float> %i.jh, %i.jc
  %i.jk = fptosi <2 x float> %i.jj to <2 x i32>   ; 2 uses
  %i.jl = extractelement <2 x i32> %i.jk, i64 0   ; 3 uses
  store i32 %i.jl, ptr %i.ji, align 4, !tbaa !78
  %i.jm = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 3 uses
  %i.jn = extractelement <2 x i32> %i.jk, i64 1   ; 3 uses
  store i32 %i.jn, ptr %i.jm, align 4, !tbaa !79
  %i.jo = load float, ptr %i.b, align 4, !tbaa !83
  %i.jp = fcmp reassoc nsz arcp contract afn oeq float %i.jo, 0.000000e+00
  br i1 %i.jp, label %bb.b, label %bb.d

bb.b:                                             ; preds = %.split160.us
  %i.jq = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.jr = load i32, ptr %i.jq, align 4, !tbaa !84
  %.not = icmp eq i32 %i.jr, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.js = load i32, ptr %i.r, align 4, !tbaa !78  ; 2 uses
  store i32 %i.js, ptr %i.ji, align 4, !tbaa !78
  %i.jt = load i32, ptr %i.s, align 4, !tbaa !79  ; 2 uses
  store i32 %i.jt, ptr %i.jm, align 4, !tbaa !79
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %.split160.us
  %i.ju = phi i32 [ %i.jt, %bb.c ], [ %i.jn, %bb.b ], [ %i.jn, %.split160.us ] ; 2 uses
  %i.jv = phi i32 [ %i.js, %bb.c ], [ %i.jl, %bb.b ], [ %i.jl, %.split160.us ] ; 2 uses
  %.in = phi float [ %i.jf, %bb.c ], [ %i.jg, %bb.b ], [ %i.jg, %.split160.us ]
  %.in186 = phi float [ %i.jd, %bb.c ], [ %i.je, %bb.b ], [ %i.je, %.split160.us ]
  %i.jw = getelementptr inbounds nuw i8, ptr %1, i64 148
  %i.jx = fptosi float %.in186 to i32             ; 2 uses
  %i.jy = fptosi float %.in to i32                ; 2 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.ka = load i32, ptr %i.e, align 16, !tbaa !290
  %i.kb = sitofp reassoc nsz arcp contract afn i32 %i.ka to float
  %i.kc = fmul reassoc nsz arcp contract afn float %i.d, %i.kb ; 2 uses
  %i.kd = load i32, ptr %i.jw, align 4, !tbaa !291
  %i.ke = sitofp reassoc nsz arcp contract afn i32 %i.kd to float
  %i.kf = fmul reassoc nsz arcp contract afn float %i.d, %i.ke ; 2 uses
  %i.kg = tail call reassoc nsz arcp contract afn float @llvm.floor.f32(float %i.kc)
  %i.kh = fptosi float %i.kg to i32               ; 2 uses
  %i.ki = icmp sgt i32 %i.jx, %i.kh
  %spec.select = tail call i32 @llvm.smax.i32(i32 %i.jx, i32 0)
  %i.kj = select i1 %i.ki, i32 %i.kh, i32 %spec.select ; 2 uses
  store i32 %i.kj, ptr %3, align 4, !tbaa !93
  %i.kk = tail call reassoc nsz arcp contract afn float @llvm.floor.f32(float %i.kf)
  %i.kl = fptosi float %i.kk to i32               ; 2 uses
  %i.km = icmp sgt i32 %i.jy, %i.kl
  %spec.select117 = tail call i32 @llvm.smax.i32(i32 %i.jy, i32 0)
  %i.kn = select i1 %i.km, i32 %i.kl, i32 %spec.select117 ; 2 uses
  store i32 %i.kn, ptr %i.jz, align 4, !tbaa !94
  %i.ko = tail call reassoc nsz arcp contract afn float @llvm.ceil.f32(float %i.kc)
  %i.kp = fptosi float %i.ko to i32
  %i.kq = sub nsw i32 %i.kp, %i.kj                ; 2 uses
  %i.kr = icmp sgt i32 %i.jv, %i.kq
  %spec.select118 = tail call i32 @llvm.smax.i32(i32 %i.jv, i32 1)
  %i.ks = select i1 %i.kr, i32 %i.kq, i32 %spec.select118
  store i32 %i.ks, ptr %i.ji, align 4, !tbaa !78
  %i.kt = tail call reassoc nsz arcp contract afn float @llvm.ceil.f32(float %i.kf)
  %i.ku = fptosi float %i.kt to i32
  %i.kv = sub nsw i32 %i.ku, %i.kn                ; 2 uses
  %i.kw = icmp sgt i32 %i.ju, %i.kv
  %spec.select119 = tail call i32 @llvm.smax.i32(i32 %i.ju, i32 1)
  %i.kx = select i1 %i.kw, i32 %i.kv, i32 %spec.select119
  store i32 %i.kx, ptr %i.jm, align 4, !tbaa !79
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.ceil.f32(float) #9

; Function Attrs: nounwind uwtable
define void @process(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca [4 x float], align 16             ; 5 uses
  %i.b = alloca float, align 4                    ; 4 uses
  %i.c = alloca float, align 4                    ; 4 uses
  %i.d = alloca float, align 4                    ; 4 uses
  %i.e = alloca float, align 4                    ; 4 uses
  %i.f = alloca float, align 4                    ; 4 uses
  %i.g = alloca float, align 4                    ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 132
  %i.i = load i32, ptr %i.h, align 4, !tbaa !293
  %i.j = tail call i32 @dt_iop_have_required_input_format(i32 noundef 4, ptr noundef %0, i32 noundef %i.i, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) #25
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = load ptr, ptr %i.k, align 16, !tbaa !62  ; 20 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !78   ; 3 uses
  %i.o = shl nsw i32 %i.n, 2
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 92
  %i.q = load i32, ptr %i.p, align 4, !tbaa !82
  %.not111 = icmp eq i32 %i.q, 0
  br i1 %.not111, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.r = load float, ptr %i.l, align 4, !tbaa !83
  %i.s = fcmp reassoc nsz arcp contract afn oeq float %i.r, 0.000000e+00
  br i1 %i.s, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 88
  %i.u = load i32, ptr %i.t, align 4, !tbaa !84
  %.not112 = icmp eq i32 %i.u, 0
  br i1 %.not112, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.w = load i32, ptr %i.v, align 4, !tbaa !78
  %i.x = icmp eq i32 %i.n, %i.w
  br i1 %i.x, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.z = load i32, ptr %i.y, align 4, !tbaa !79   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !79
  %i.ac = icmp eq i32 %i.z, %i.ab
  br i1 %i.ac, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ad = sext i32 %i.n to i64
  %i.ae = sext i32 %i.z to i64
  %i.af = shl nsw i64 %i.ad, 2
  %i.ag = mul i64 %i.af, %i.ae
  tail call void @dt_iop_image_copy(ptr noundef %3, ptr noundef %2, i64 noundef %i.ag) #25
  br label %bb.n

bb.h:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %i.ah = tail call ptr @dt_interpolation_new(i32 noundef 3) #25
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !85
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.al = getelementptr inbounds nuw i8, ptr %i.l, i64 100
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.l, i64 108
  %i.ao = getelementptr inbounds nuw i8, ptr %i.l, i64 116
  %i.ap = getelementptr inbounds nuw i8, ptr %i.l, i64 124
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !64
  %i.ar = getelementptr inbounds nuw i8, ptr %i.l, i64 132
  %i.as = load float, ptr %i.ar, align 4, !tbaa !65
  %i.at = load <2 x i32>, ptr %i.ai, align 16, !tbaa !14
  %i.au = sitofp reassoc nsz arcp contract afn <2 x i32> %i.at to <2 x float>
  %i.av = insertelement <2 x float> poison, float %i.ak, i64 0
  %i.aw = shufflevector <2 x float> %i.av, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ax = fmul reassoc nsz arcp contract afn <2 x float> %i.aw, %i.au ; 5 uses
  %i.ay = load <2 x float>, ptr %i.al, align 4, !tbaa !13
  %i.az = fmul reassoc nsz arcp contract afn <2 x float> %i.ay, %i.ax ; 2 uses
  store <2 x float> %i.az, ptr %i.a, align 16, !tbaa !13
  %i.ba = load <2 x float>, ptr %i.an, align 4, !tbaa !13
  %i.bb = fmul reassoc nsz arcp contract afn <2 x float> %i.ba, %i.ax
  store <2 x float> %i.bb, ptr %i.am, align 8, !tbaa !13
  %i.bc = load <2 x float>, ptr %i.ao, align 4, !tbaa !13
  %i.bd = fmul reassoc nsz arcp contract afn <2 x float> %i.bc, %i.ax ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.l, i64 128
  %i.bf = tail call <5 x float> @llvm.masked.load.v5f32.p0(ptr nonnull align 4 %i.be, <5 x i1> <i1 true, i1 false, i1 true, i1 true, i1 true>, <5 x float> poison), !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #25
  %i.bg = getelementptr inbounds nuw i8, ptr %i.l, i64 172 ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !66
  %i.bi = icmp eq i32 %i.bh, 1
  br i1 %i.bi, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bj = shufflevector <5 x float> %i.bf, <5 x float> poison, <4 x i32> <i32 0, i32 2, i32 3, i32 4>
  %i.bk = extractelement <2 x float> %i.ax, i64 0 ; 2 uses
  %i.bl = shufflevector <2 x float> %i.ax, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 0, i32 1>
  %i.bm = fmul reassoc nsz arcp contract afn <4 x float> %i.bj, %i.bl ; 4 uses
  %i.bn = fmul reassoc nsz arcp contract afn float %i.as, %i.bk
  %i.bo = fmul reassoc nsz arcp contract afn float %i.aq, %i.bk
  %i.bp = extractelement <4 x float> %i.bm, i64 0
  %i.bq = extractelement <4 x float> %i.bm, i64 1
  %i.br = extractelement <4 x float> %i.bm, i64 2
  %i.bs = extractelement <4 x float> %i.bm, i64 3
  call fastcc void @keystone_get_matrix(ptr noundef nonnull %i.a, float noundef %i.bo, float noundef %i.bn, float noundef %i.br, float noundef %i.bp, float noundef %i.bq, float noundef %i.bs, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f, ptr noundef nonnull %i.g)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.bt = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !79 ; 2 uses
  %i.bv = icmp sgt i32 %i.bu, 0
  br i1 %i.bv, label %.lr.ph151, label %._crit_edge152

.lr.ph151:                                        ; preds = %bb.j
  %i.bw = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.by = getelementptr inbounds nuw i8, ptr %i.l, i64 180
  %i.bz = getelementptr inbounds nuw i8, ptr %i.l, i64 80
  %i.ca = getelementptr inbounds nuw i8, ptr %i.l, i64 184
  %i.cb = getelementptr inbounds nuw i8, ptr %i.l, i64 84
  %i.cc = getelementptr inbounds nuw i8, ptr %i.l, i64 96
  %i.cd = getelementptr inbounds nuw i8, ptr %i.l, i64 56 ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.l, i64 60 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.l, i64 44
  %i.ch = getelementptr inbounds nuw i8, ptr %i.l, i64 52
  %i.ci = load float, ptr %i.b, align 4           ; 2 uses
  %i.cj = load float, ptr %i.c, align 4           ; 2 uses
  %i.ck = load float, ptr %i.d, align 4           ; 2 uses
  %i.cl = load float, ptr %i.e, align 4           ; 2 uses
  %i.cm = load float, ptr %i.f, align 4
  %i.cn = load float, ptr %i.g, align 4
  %i.co = fmul reassoc nsz arcp contract afn float %i.cl, %i.ci
  %i.cp = fmul reassoc nsz arcp contract afn float %i.cj, %i.ck
  %i.cq = fsub reassoc nsz arcp contract afn float %i.co, %i.cp
  %i.cr = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.cs = load i32, ptr %i.bw, align 4, !tbaa !78 ; 2 uses
  %i.ct = icmp sgt i32 %i.cs, 0
  br i1 %i.ct, label %.lr.ph151.split.preheader, label %._crit_edge152

.lr.ph151.split.preheader:                        ; preds = %.lr.ph151
  %i.cu = insertelement <2 x float> poison, float %i.cl, i64 0
  %i.cv = insertelement <2 x float> %i.cu, float %i.ck, i64 1
  %i.cw = insertelement <2 x float> poison, float %i.cj, i64 0
  %i.cx = insertelement <2 x float> %i.cw, float %i.ci, i64 1
  br label %.lr.ph151.split

._crit_edge152:                                   ; preds = %._crit_edge, %.lr.ph151, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %bb.n

.lr.ph151.split:                                  ; preds = %.lr.ph151.split.preheader, %._crit_edge
  %i.cy = phi i32 [ %i.di, %._crit_edge ], [ %i.bu, %.lr.ph151.split.preheader ]
  %i.cz = phi i32 [ %i.dj, %._crit_edge ], [ %i.cs, %.lr.ph151.split.preheader ] ; 3 uses
  %indvars.iv155 = phi i64 [ %indvars.iv.next156, %._crit_edge ], [ 0, %.lr.ph151.split.preheader ] ; 3 uses
  %i.da = shl nuw nsw i64 %indvars.iv155, 2
  %i.db = sext i32 %i.cz to i64
  %i.dc = mul i64 %i.da, %i.db
end_hunk_2
begin_hunk_3_@g_list_free_full
declare void @g_list_free_full(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal void @free_aspect(ptr noundef %0) #4 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !208
  tail call void @g_free(ptr noundef %i.a) #25
  store ptr null, ptr %0, align 8, !tbaa !208
  tail call void @g_free(ptr noundef nonnull %0) #25
  ret void
}

; Function Attrs: nounwind uwtable
define void @gui_post_expose(ptr noundef %0, ptr noundef %1, float noundef %2, float noundef %3, float noundef %4, float noundef %5, float noundef %6) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 5 uses
  %7 = alloca %struct._PangoRectangle, align 4    ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca double, align 8                   ; 4 uses
  %i.e = alloca double, align 8                   ; 4 uses
  %i.f = alloca double, align 8                   ; 4 uses
  %i.g = alloca double, align 8                   ; 4 uses
  %8 = alloca %struct._PangoRectangle, align 4    ; 5 uses
  %i.h = alloca [16 x i8], align 16               ; 5 uses
  %i.i = alloca [8 x float], align 16             ; 22 uses
  %9 = alloca %struct._PangoRectangle, align 4    ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 664 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !158
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.m = load ptr, ptr %i.l, align 16, !tbaa !153 ; 23 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !154  ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 204
  %i.q = load i32, ptr %i.p, align 4, !tbaa !178
  %.not = icmp eq i32 %i.q, 0
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @apply_box_aspect(ptr noundef nonnull %0, i32 noundef 5)
  %i.r = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !180
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 1432
  %i.t = load double, ptr %i.s, align 8, !tbaa !219
  %i.u = fpext reassoc nsz arcp contract afn float %6 to double ; 20 uses
  %i.v = tail call fastcc i32 @_iop_clipping_set_max_clip(ptr noundef nonnull %0)
  %.not511 = icmp eq i32 %i.v, 0
  br i1 %.not511, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @cairo_set_source_rgba(ptr noundef %1, double noundef 2.000000e-01, double noundef 2.000000e-01, double noundef 2.000000e-01, double noundef 8.000000e-01) #25
  tail call void @cairo_set_fill_rule(ptr noundef %1, i32 noundef 1) #25
  %i.w = getelementptr inbounds nuw i8, ptr %i.m, i64 140
  %i.x = load <4 x float>, ptr %i.w, align 4, !tbaa !13
  %i.y = insertelement <4 x float> poison, float %2, i64 0
  %i.z = insertelement <4 x float> %i.y, float %3, i64 1
  %i.aa = shufflevector <4 x float> %i.z, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.ab = fmul reassoc nsz arcp contract afn <4 x float> %i.x, %i.aa
  %i.ac = fpext reassoc nsz arcp contract afn <4 x float> %i.ab to <4 x double>
  %i.ad = fadd reassoc nsz arcp contract afn <4 x double> %i.ac, <double -1.000000e+00, double -1.000000e+00, double 2.000000e+00, double 2.000000e+00> ; 4 uses
  %i.ae = extractelement <4 x double> %i.ad, i64 0
  %i.af = extractelement <4 x double> %i.ad, i64 1
  %i.ag = extractelement <4 x double> %i.ad, i64 2
  %i.ah = extractelement <4 x double> %i.ad, i64 3
  tail call void @cairo_rectangle(ptr noundef %1, double noundef %i.ae, double noundef %i.af, double noundef %i.ag, double noundef %i.ah) #25
  %i.ai = getelementptr inbounds nuw i8, ptr %i.m, i64 100
  %i.aj = load <4 x float>, ptr %i.ai, align 4, !tbaa !13
  %i.ak = fmul reassoc nsz arcp contract afn <4 x float> %i.aj, %i.aa
  %i.al = fpext reassoc nsz arcp contract afn <4 x float> %i.ak to <4 x double> ; 4 uses
  %i.am = extractelement <4 x double> %i.al, i64 0
  %i.an = extractelement <4 x double> %i.al, i64 1
  %i.ao = extractelement <4 x double> %i.al, i64 2
  %i.ap = extractelement <4 x double> %i.al, i64 3
  tail call void @cairo_rectangle(ptr noundef %1, double noundef %i.am, double noundef %i.an, double noundef %i.ao, double noundef %i.ap) #25
  tail call void @cairo_fill(ptr noundef %1) #25
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.aq = getelementptr inbounds nuw i8, ptr %i.m, i64 100 ; 13 uses
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !189
  %i.as = fcmp reassoc nsz arcp contract afn ogt float %i.ar, 0.000000e+00
  br i1 %i.as, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.at = getelementptr inbounds nuw i8, ptr %i.m, i64 104
  %i.au = load float, ptr %i.at, align 8, !tbaa !193
  %i.av = fcmp reassoc nsz arcp contract afn ogt float %i.au, 0.000000e+00
  br i1 %i.av, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aw = getelementptr inbounds nuw i8, ptr %i.m, i64 108
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !190
  %i.ay = fcmp reassoc nsz arcp contract afn olt float %i.ax, 1.000000e+00
  br i1 %i.ay, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.az = getelementptr inbounds nuw i8, ptr %i.m, i64 112
  %i.ba = load float, ptr %i.az, align 8, !tbaa !194
  %i.bb = fcmp reassoc nsz arcp contract afn olt float %i.ba, 1.000000e+00
  br i1 %i.bb, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.d
  %i.bc = fmul reassoc nsz arcp contract afn double %i.t, 2.500000e+00
  %i.bd = fdiv reassoc nsz arcp contract afn double %i.bc, %i.u
  tail call void @cairo_set_line_width(ptr noundef %1, double noundef %i.bd) #25
  %i.be = load <4 x float>, ptr %i.aq, align 4, !tbaa !13
  %i.bf = insertelement <4 x float> poison, float %2, i64 0
  %i.bg = insertelement <4 x float> %i.bf, float %3, i64 1
  %i.bh = shufflevector <4 x float> %i.bg, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.bi = fmul reassoc nsz arcp contract afn <4 x float> %i.be, %i.bh
  %i.bj = fpext reassoc nsz arcp contract afn <4 x float> %i.bi to <4 x double> ; 4 uses
  %i.bk = extractelement <4 x double> %i.bj, i64 0
  %i.bl = extractelement <4 x double> %i.bj, i64 1
  %i.bm = extractelement <4 x double> %i.bj, i64 2
  %i.bn = extractelement <4 x double> %i.bj, i64 3
  tail call void @cairo_rectangle(ptr noundef %1, double noundef %i.bk, double noundef %i.bl, double noundef %i.bm, double noundef %i.bn) #25
  %i.bo = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !180 ; 4 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 1408
  %i.bq = load double, ptr %i.bp, align 8, !tbaa !220
  %i.br = fmul reassoc nsz arcp contract afn double %i.bq, 5.000000e-01
  %i.bs = fadd reassoc nsz arcp contract afn double %i.br, 5.000000e-01 ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bo, i64 1384
  %i.bu = load double, ptr %i.bt, align 8, !tbaa !221
  %i.bv = fmul reassoc nsz arcp contract afn double %i.bs, %i.bu
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bo, i64 1400
  %i.bx = load double, ptr %i.bw, align 8, !tbaa !222
  %i.by = fmul reassoc nsz arcp contract afn double %i.bx, %i.bs
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bo, i64 1392
  %i.ca = load double, ptr %i.bz, align 8, !tbaa !223
  %i.cb = fmul reassoc nsz arcp contract afn double %i.ca, %i.bs
  tail call void @cairo_set_source_rgba(ptr noundef %1, double noundef %i.bv, double noundef %i.by, double noundef %i.cb, double noundef 1.000000e+00) #25
  tail call void @cairo_stroke(ptr noundef %1) #25
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.cc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 88), align 8, !tbaa !224 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 624
  %i.ce = load i32, ptr %i.cd, align 8, !tbaa !233
  %.not512 = icmp eq i32 %i.ce, 0
  br i1 %.not512, label %bb.q, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cc, i64 628
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !234
  %i.ch = icmp eq i32 %i.cg, 1
  br i1 %i.ch, label %bb.k, label %bb.q

bb.k:                                             ; preds = %bb.j
  %i.ci = getelementptr inbounds nuw i8, ptr %i.m, i64 172
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !196
  %.not513 = icmp eq i32 %i.cj, 1
  br i1 %.not513, label %bb.q, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i8 0, ptr %i.a, align 16, !tbaa !207
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  %i.ck = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 128), align 8, !tbaa !235
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 336
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !243
  %i.cn = tail call ptr @pango_font_description_copy_static(ptr noundef %i.cm) #25 ; 4 uses
  tail call void @pango_font_description_set_weight(ptr noundef %i.cn, i32 noundef 700) #25
  %i.co = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !180
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 1432
  %i.cq = load double, ptr %i.cp, align 8, !tbaa !219
  %i.cr = fmul reassoc nsz arcp contract afn double %i.cq, 1.638400e+04
  %i.cs = fdiv reassoc nsz arcp contract afn double %i.cr, %i.u
  tail call void @pango_font_description_set_absolute_size(ptr noundef %i.cn, double noundef %i.cs) #25
  %i.ct = tail call ptr @pango_cairo_create_layout(ptr noundef %1) #25 ; 5 uses
  tail call void @pango_layout_set_font_description(ptr noundef %i.ct, ptr noundef %i.cn) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  %i.cu = getelementptr inbounds nuw i8, ptr %i.k, i64 2680
  %i.cv = call i32 @dt_dev_get_processed_size(ptr noundef nonnull %i.cu, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #25 ; 0 uses
  %i.cw = load i32, ptr %i.b, align 4, !tbaa !14
  %i.cx = sitofp reassoc nsz arcp contract afn i32 %i.cw to float
  %i.cy = getelementptr inbounds nuw i8, ptr %i.m, i64 108 ; 2 uses
  %i.cz = load float, ptr %i.cy, align 4, !tbaa !190
  %i.da = fmul reassoc nsz arcp contract afn float %i.cz, %i.cx
  %i.db = fptosi float %i.da to i32
  %i.dc = load i32, ptr %i.c, align 4, !tbaa !14
  %i.dd = sitofp reassoc nsz arcp contract afn i32 %i.dc to float
  %i.de = getelementptr inbounds nuw i8, ptr %i.m, i64 112
  %i.df = load float, ptr %i.de, align 8, !tbaa !194
  %i.dg = fmul reassoc nsz arcp contract afn float %i.df, %i.dd
  %i.dh = fptosi float %i.dg to i32
  %i.di = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 16, ptr noundef nonnull @.str.74, i32 noundef %i.db, i32 noundef %i.dh) #25 ; 0 uses
  call void @pango_layout_set_text(ptr noundef %i.ct, ptr noundef nonnull %i.a, i32 noundef -1) #25
  call void @pango_layout_get_pixel_extents(ptr noundef %i.ct, ptr noundef null, ptr noundef nonnull %7) #25
  %i.dj = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !245
  %i.dl = sitofp reassoc nsz arcp contract afn i32 %i.dk to float ; 3 uses
  %i.dm = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !180
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 1432
  %i.do = load double, ptr %i.dn, align 8, !tbaa !219 ; 2 uses
  %i.dp = fmul reassoc nsz arcp contract afn double %i.do, 1.800000e+01
  %i.dq = fdiv reassoc nsz arcp contract afn double %i.dp, %i.u
  %i.dr = fptrunc reassoc nsz arcp contract afn double %i.dq to float ; 3 uses
  %i.ds = fmul reassoc nsz arcp contract afn double %i.do, 6.000000e+00
  %i.dt = fdiv reassoc nsz arcp contract afn double %i.ds, %i.u
  %i.du = fptrunc reassoc nsz arcp contract afn double %i.dt to float ; 4 uses
  %i.dv = fmul reassoc nnan nsz arcp contract afn float %i.dl, 5.000000e-01
  %i.dw = load <2 x float>, ptr %i.aq, align 4, !tbaa !13
  %i.dx = load <2 x float>, ptr %i.cy, align 4, !tbaa !13
  %i.dy = fmul reassoc nsz arcp contract afn <2 x float> %i.dx, splat (float 5.000000e-01)
  %i.dz = fadd reassoc nsz arcp contract afn <2 x float> %i.dy, %i.dw ; 2 uses
  %i.ea = extractelement <2 x float> %i.dz, i64 0
  %i.eb = fmul reassoc nsz arcp contract afn float %i.ea, %2
  %i.ec = fsub reassoc nsz arcp contract afn float %i.eb, %i.dv
  %i.ed = extractelement <2 x float> %i.dz, i64 1
  %i.ee = fmul reassoc nsz arcp contract afn float %i.ed, %3
  %i.ef = fmul reassoc nsz arcp contract afn float %i.dr, 5.000000e-01
  %i.eg = fsub reassoc nsz arcp contract afn float %i.ee, %i.ef
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #25
  call void @cairo_clip_extents(ptr noundef %1, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f, ptr noundef nonnull %i.g) #25
  %i.eh = fpext reassoc nsz arcp contract afn float %i.ec to double ; 3 uses
  %i.ei = load double, ptr %i.d, align 8, !tbaa !314
  %i.ej = fpext reassoc nsz arcp contract afn float %i.du to double
  %i.ek = fmul reassoc nsz arcp contract afn double %i.ej, 2.000000e+00 ; 4 uses
  %i.el = fadd reassoc nsz arcp contract afn double %i.ei, %i.ek ; 2 uses
  %i.em = fcmp reassoc nsz arcp contract afn ugt double %i.el, %i.eh
  br i1 %i.em, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.en = load double, ptr %i.f, align 8, !tbaa !314
  %i.eo = fpext reassoc nsz arcp contract afn float %i.dl to double
  %i.ep = fadd reassoc nsz arcp contract afn double %i.ek, %i.eo
  %i.eq = fsub reassoc nsz arcp contract afn double %i.en, %i.ep ; 2 uses
  %.inv = fcmp reassoc nsz arcp contract afn oge double %i.eq, %i.eh
  %. = select reassoc nsz arcp contract afn i1 %.inv, double %i.eh, double %i.eq
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %i.er = phi reassoc nsz arcp contract afn double [ %., %bb.m ], [ %i.el, %bb.l ]
  %i.es = fptrunc reassoc nsz arcp contract afn double %i.er to float ; 2 uses
  %i.et = fpext reassoc nsz arcp contract afn float %i.eg to double ; 3 uses
  %i.eu = load double, ptr %i.e, align 8, !tbaa !314
  %i.ev = fadd reassoc nsz arcp contract afn double %i.eu, %i.ek ; 2 uses
  %i.ew = fcmp reassoc nsz arcp contract afn ugt double %i.ev, %i.et
  br i1 %i.ew, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ex = load double, ptr %i.g, align 8, !tbaa !314
  %i.ey = fpext reassoc nsz arcp contract afn float %i.dr to double
  %i.ez = fadd reassoc nsz arcp contract afn double %i.ek, %i.ey
  %i.fa = fsub reassoc nsz arcp contract afn double %i.ex, %i.ez ; 2 uses
  %.inv520 = fcmp reassoc nsz arcp contract afn oge double %i.fa, %i.et
  %.519 = select reassoc nsz arcp contract afn i1 %.inv520, double %i.et, double %i.fa
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
  %i.fb = phi reassoc nsz arcp contract afn double [ %.519, %bb.o ], [ %i.ev, %bb.n ]
  %i.fc = fptrunc reassoc nsz arcp contract afn double %i.fb to float ; 2 uses
  call void @cairo_set_source_rgba(ptr noundef %1, double noundef 5.000000e-01, double noundef 5.000000e-01, double noundef 5.000000e-01, double noundef 9.000000e-01) #25
  %i.fd = fmul reassoc nsz arcp contract afn float %i.du, 2.000000e+00 ; 2 uses
  %i.fe = fadd reassoc nsz arcp contract afn float %i.fd, %i.dl
  %i.ff = fadd reassoc nsz arcp contract afn float %i.fd, %i.dr
  %i.fg = fsub reassoc nsz arcp contract afn float %i.es, %i.du
  %i.fh = fsub reassoc nsz arcp contract afn float %i.fc, %i.du
  call void @dt_gui_draw_rounded_rectangle(ptr noundef %1, float noundef %i.fe, float noundef %i.ff, float noundef %i.fg, float noundef %i.fh) #25
  call void @cairo_set_source_rgb(ptr noundef %1, double noundef f0x3FE6666666666666, double noundef f0x3FE6666666666666, double noundef f0x3FE6666666666666) #25
  %i.fi = fpext reassoc nsz arcp contract afn float %i.es to double
  %i.fj = fpext reassoc nsz arcp contract afn float %i.fc to double
  call void @cairo_move_to(ptr noundef %1, double noundef %i.fi, double noundef %i.fj) #25
  call void @pango_cairo_show_layout(ptr noundef %1, ptr noundef %i.ct) #25
  call void @pango_font_description_free(ptr noundef %i.cn) #25
  call void @g_object_unref(ptr noundef %i.ct) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.k, %bb.j, %bb.i
  %i.fk = getelementptr inbounds nuw i8, ptr %i.m, i64 104 ; 8 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.m, i64 108 ; 6 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.m, i64 112 ; 5 uses
  %i.fn = load <4 x float>, ptr %i.aq, align 4, !tbaa !13
  %i.fo = insertelement <4 x float> poison, float %2, i64 0 ; 2 uses
  %i.fp = insertelement <4 x float> %i.fo, float %3, i64 1
  %i.fq = shufflevector <4 x float> %i.fp, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.fr = fmul reassoc nsz arcp contract afn <4 x float> %i.fn, %i.fq ; 4 uses
  %i.fs = extractelement <4 x float> %i.fr, i64 0
  %i.ft = extractelement <4 x float> %i.fr, i64 1
  %i.fu = extractelement <4 x float> %i.fr, i64 2
  %i.fv = extractelement <4 x float> %i.fr, i64 3
  call void @dt_guides_draw(ptr noundef %1, float noundef %i.fs, float noundef %i.ft, float noundef %i.fu, float noundef %i.fv, float noundef %6) #25
  %i.fw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !180
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 1432
  %i.fy = load double, ptr %i.fx, align 8, !tbaa !219
  %i.fz = fmul reassoc nsz arcp contract afn double %i.fy, 2.000000e+00
  %i.ga = fdiv reassoc nsz arcp contract afn double %i.fz, %i.u
  call void @cairo_set_line_width(ptr noundef %1, double noundef %i.ga) #25
  %i.gb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !180 ; 4 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 1408
  %i.gd = load double, ptr %i.gc, align 8, !tbaa !220
  %i.ge = fmul reassoc nsz arcp contract afn double %i.gd, 5.000000e-01
  %i.gf = fsub reassoc nsz arcp contract afn double 5.000000e-01, %i.ge ; 3 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gb, i64 1384
  %i.gh = load double, ptr %i.gg, align 8, !tbaa !221
  %i.gi = fmul reassoc nsz arcp contract afn double %i.gf, %i.gh
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gb, i64 1400
  %i.gk = load double, ptr %i.gj, align 8, !tbaa !222
  %i.gl = fmul reassoc nsz arcp contract afn double %i.gk, %i.gf
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gb, i64 1392
  %i.gn = load double, ptr %i.gm, align 8, !tbaa !223
  %i.go = fmul reassoc nsz arcp contract afn double %i.gn, %i.gf
  call void @cairo_set_source_rgba(ptr noundef %1, double noundef %i.gi, double noundef %i.gl, double noundef %i.go, double noundef 1.000000e+00) #25
  %i.gp = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !180
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 1432
  %i.gr = load double, ptr %i.gq, align 8, !tbaa !219
  %i.gs = fmul reassoc nsz arcp contract afn double %i.gr, 3.000000e+01
  %i.gt = fdiv reassoc nsz arcp contract afn double %i.gs, %i.u
  %i.gu = fptosi double %i.gt to i32              ; 14 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.m, i64 188
  %i.gw = load i32, ptr %i.gv, align 4, !tbaa !246
  %.not514 = icmp eq i32 %i.gw, 0
  br i1 %.not514, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  %i.gx = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 128), align 8, !tbaa !235
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 336
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !243
  %i.ha = call ptr @pango_font_description_copy_static(ptr noundef %i.gz) #25 ; 4 uses
  call void @pango_font_description_set_weight(ptr noundef %i.ha, i32 noundef 700) #25
  %i.hb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !180
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 1432
  %i.hd = load double, ptr %i.hc, align 8, !tbaa !219
  %i.he = fmul reassoc nsz arcp contract afn double %i.hd, 1.638400e+04
  %i.hf = fdiv reassoc nsz arcp contract afn double %i.he, %i.u
  call void @pango_font_description_set_absolute_size(ptr noundef %i.ha, double noundef %i.hf) #25
  %i.hg = call ptr @pango_cairo_create_layout(ptr noundef %1) #25 ; 5 uses
  call void @pango_layout_set_font_description(ptr noundef %i.hg, ptr noundef %i.ha) #25
  %i.hh = getelementptr inbounds nuw i8, ptr %i.m, i64 88
  %i.hi = load float, ptr %i.hh, align 8, !tbaa !247
  %i.hj = getelementptr inbounds nuw i8, ptr %i.m, i64 92
  %i.hk = load float, ptr %i.hj, align 4, !tbaa !248
  %i.hl = fmul reassoc nsz arcp contract afn float %i.hi, %2 ; 2 uses
  %i.hm = fpext reassoc nsz arcp contract afn float %i.hl to double ; 2 uses
  %i.hn = fmul reassoc nsz arcp contract afn float %i.hk, %3 ; 2 uses
  %i.ho = fpext reassoc nsz arcp contract afn float %i.hn to double ; 2 uses
  %i.hp = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !180
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 1432
  %i.hr = load double, ptr %i.hq, align 8, !tbaa !219
  %i.hs = fmul reassoc nsz arcp contract afn double %i.hr, 3.000000e+00
  call void @cairo_arc(ptr noundef %1, double noundef %i.hm, double noundef %i.ho, double noundef %i.hs, double noundef 0.000000e+00, double noundef f0x401921FB54442D18) #25
  call void @cairo_stroke(ptr noundef %1) #25
  %i.ht = fmul reassoc nsz arcp contract afn float %4, %2 ; 2 uses
  %i.hu = fpext reassoc nsz arcp contract afn float %i.ht to double ; 3 uses
  %i.hv = fmul reassoc nsz arcp contract afn float %5, %3 ; 3 uses
  %i.hw = fpext reassoc nsz arcp contract afn float %i.hv to double ; 2 uses
  %i.hx = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !180
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 1432
  %i.hz = load double, ptr %i.hy, align 8, !tbaa !219
  %i.ia = fmul reassoc nsz arcp contract afn double %i.hz, 3.000000e+00
  call void @cairo_arc(ptr noundef %1, double noundef %i.hu, double noundef %i.hw, double noundef %i.ia, double noundef 0.000000e+00, double noundef f0x401921FB54442D18) #25
  call void @cairo_stroke(ptr noundef %1) #25
  call void @cairo_move_to(ptr noundef %1, double noundef %i.hm, double noundef %i.ho) #25
  call void @cairo_line_to(ptr noundef %1, double noundef %i.hu, double noundef %i.hw) #25
  call void @cairo_stroke(ptr noundef %1) #25
  %i.ib = fsub reassoc nsz arcp contract afn float %i.ht, %i.hl ; 3 uses
  %i.ic = fsub reassoc nsz arcp contract afn float %i.hv, %i.hn ; 2 uses
  %i.id = fcmp reassoc nsz arcp contract afn olt float %i.ib, 0.000000e+00 ; 2 uses
  %i.ie = fneg reassoc nsz arcp contract afn float %i.ib
  %i.if = fneg reassoc nsz arcp contract afn float %i.ic
  %.0493 = select nsz i1 %i.id, float %i.ie, float %i.ib
  %.0492 = select nsz i1 %i.id, float %i.if, float %i.ic
  %i.ig = call reassoc nsz arcp contract afn float @llvm.atan2.f32(float %.0492, float %.0493)
  %i.ih = fmul reassoc nsz arcp contract afn float %i.ig, f0x42652EE0 ; 3 uses
  %i.ii = fcmp reassoc nsz arcp contract afn ogt float %i.ih, 4.500000e+01
  %i.ij = fadd reassoc nsz arcp contract afn float %i.ih, -9.000000e+01
  %.0491 = select nsz i1 %i.ii, float %i.ij, float %i.ih ; 3 uses
  %i.ik = fcmp reassoc nsz arcp contract afn olt float %.0491, -4.500000e+01
  %i.il = fadd reassoc nsz arcp contract afn float %.0491, 9.000000e+01
  %.1 = select nsz i1 %i.ik, float %i.il, float %.0491
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #25
  store i8 0, ptr %i.h, align 16, !tbaa !207
  %i.im = fpext reassoc nsz arcp contract afn float %.1 to double
  %i.in = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.h, i64 noundef 16, ptr noundef nonnull @.str.75, double noundef %i.im) #25 ; 0 uses
  call void @pango_layout_set_text(ptr noundef %i.hg, ptr noundef nonnull %i.h, i32 noundef -1) #25
  call void @pango_layout_get_pixel_extents(ptr noundef %i.hg, ptr noundef nonnull %8, ptr noundef null) #25
  %i.io = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ip = load i32, ptr %i.io, align 4, !tbaa !245
  %i.iq = sitofp reassoc nsz arcp contract afn i32 %i.ip to float
  %i.ir = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !180
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 1432
  %i.it = load double, ptr %i.is, align 8, !tbaa !219 ; 2 uses
  %i.iu = fmul reassoc nsz arcp contract afn double %i.it, 1.800000e+01
  %i.iv = fdiv reassoc nsz arcp contract afn double %i.iu, %i.u
  %i.iw = fptrunc reassoc nsz arcp contract afn double %i.iv to float
  call void @cairo_set_source_rgba(ptr noundef %1, double noundef 5.000000e-01, double noundef 5.000000e-01, double noundef 5.000000e-01, double noundef 9.000000e-01) #25
  %i.ix = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !180
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 1432
  %i.iz = load double, ptr %i.iy, align 8, !tbaa !219
end_hunk_3
begin_hunk_4_@gui_post_expose:bb.a
  %i.uh = shufflevector <4 x float> %i.ud, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 2>
  %i.ui = fsub reassoc nsz arcp contract afn <4 x float> %i.ug, %i.uh
  %i.uj = shufflevector <4 x float> %i.uf, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 1, i32 1>
  %i.uk = shufflevector <4 x float> %i.ud, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 3, i32 3>
  %i.ul = fsub reassoc nsz arcp contract afn <4 x float> %i.uj, %i.uk
  %i.um = insertelement <4 x float> poison, float %3, i64 0
  %i.un = shufflevector <4 x float> %i.ud, <4 x float> %i.um, <4 x i32> <i32 1, i32 4, i32 3, i32 4>
  %i.uo = fmul reassoc nsz arcp contract afn <4 x float> %i.ui, %i.un
  %i.up = fdiv reassoc nsz arcp contract afn <4 x float> %i.uo, %i.ul ; 4 uses
  %foldExtExtBinop = fsub reassoc nsz arcp contract afn <4 x float> %i.ud, %i.up ; 2 uses
  %i.uq = extractelement <4 x float> %foldExtExtBinop, i64 0
  %shift = shufflevector <4 x float> %i.up, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop569 = fadd reassoc nsz arcp contract afn <4 x float> %foldExtExtBinop, %shift
  %i.ur = extractelement <4 x float> %foldExtExtBinop569, i64 0
  %i.us = extractelement <4 x float> %i.up, i64 2
  %i.ut = fsub reassoc nsz arcp contract afn float %i.ue, %i.us ; 2 uses
  %i.uu = extractelement <4 x float> %i.up, i64 3
  %i.uv = fadd reassoc nsz arcp contract afn float %i.ut, %i.uu
  %i.uw = fpext reassoc nsz arcp contract afn float %i.uq to double
  call void @cairo_move_to(ptr noundef %1, double noundef %i.uw, double noundef 0.000000e+00) #25
  %i.ux = fpext reassoc nsz arcp contract afn float %i.ur to double
  %i.uy = fpext reassoc nsz arcp contract afn float %3 to double ; 2 uses
  call void @cairo_line_to(ptr noundef %1, double noundef %i.ux, double noundef %i.uy) #25
  call void @cairo_stroke(ptr noundef %1) #25
  %i.uz = fpext reassoc nsz arcp contract afn float %i.ut to double
  call void @cairo_move_to(ptr noundef %1, double noundef %i.uz, double noundef 0.000000e+00) #25
  %i.va = fpext reassoc nsz arcp contract afn float %i.uv to double
  call void @cairo_line_to(ptr noundef %1, double noundef %i.va, double noundef %i.uy) #25
  call void @cairo_stroke(ptr noundef %1) #25
  %i.vb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !180
  %i.vc = getelementptr inbounds nuw i8, ptr %i.vb, i64 1432
  %i.vd = load double, ptr %i.vc, align 8, !tbaa !219
  %i.ve = fmul reassoc nsz arcp contract afn double %i.vd, 4.000000e+00
  %i.vf = fdiv reassoc nsz arcp contract afn double %i.ve, %i.u
  call void @cairo_set_line_width(ptr noundef %1, double noundef %i.vf) #25
  %i.vg = getelementptr inbounds nuw i8, ptr %i.m, i64 176
  %i.vh = load i32, ptr %i.vg, align 8, !tbaa !250
  switch i32 %i.vh, label %bb.be [
    i32 0, label %bb.bc
    i32 2, label %bb.bd
  ]

bb.bc:                                            ; preds = %bb.bb
  %i.vi = load <2 x float>, ptr %i.i, align 16, !tbaa !13
  %i.vj = fpext reassoc nsz arcp contract afn <2 x float> %i.vi to <2 x double> ; 2 uses
  %i.vk = extractelement <2 x double> %i.vj, i64 0
  %i.vl = extractelement <2 x double> %i.vj, i64 1
  call void @cairo_move_to(ptr noundef %1, double noundef %i.vk, double noundef %i.vl) #25
  %i.vm = load <2 x float>, ptr %i.pi, align 8, !tbaa !13
  br label %.sink.split

bb.bd:                                            ; preds = %bb.bb
  %i.vn = load <2 x float>, ptr %i.pk, align 16, !tbaa !13
  %i.vo = fpext reassoc nsz arcp contract afn <2 x float> %i.vn to <2 x double> ; 2 uses
  %i.vp = extractelement <2 x double> %i.vo, i64 0
  %i.vq = extractelement <2 x double> %i.vo, i64 1
  call void @cairo_move_to(ptr noundef %1, double noundef %i.vp, double noundef %i.vq) #25
  %i.vr = load <2 x float>, ptr %i.pm, align 8, !tbaa !13
  br label %.sink.split

.sink.split:                                      ; preds = %bb.av, %bb.ax, %bb.aw, %bb.au, %bb.ba, %bb.az, %bb.bd, %bb.bc
  %i.vs = phi <2 x float> [ %i.vm, %bb.bc ], [ %i.vr, %bb.bd ], [ %i.tx, %bb.az ], [ %i.uc, %bb.ba ], [ %i.rv, %bb.au ], [ %i.sf, %bb.aw ], [ %i.sk, %bb.ax ], [ %i.sa, %bb.av ]
  %i.vt = fpext <2 x float> %i.vs to <2 x double> ; 2 uses
  %i.vu = extractelement <2 x double> %i.vt, i64 0
  %i.vv = extractelement <2 x double> %i.vt, i64 1
  call void @cairo_line_to(ptr noundef %1, double noundef %i.vu, double noundef %i.vv) #25
  call void @cairo_stroke(ptr noundef %1) #25
  br label %bb.be

bb.be:                                            ; preds = %.sink.split, %bb.bb, %bb.as, %bb.ay, %bb.at
  %i.vw = getelementptr inbounds nuw i8, ptr %i.m, i64 168 ; 4 uses
  %i.vx = load i32, ptr %i.vw, align 8, !tbaa !212
  %i.vy = icmp eq i32 %i.vx, 0                    ; 2 uses
  %.566 = select i1 %i.vy, double 4.000000e+00, double 2.000000e+00
  %.567 = select i1 %i.vy, double 8.000000e-01, double 5.000000e-01
  %i.vz = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !180
  %i.wa = getelementptr inbounds nuw i8, ptr %i.vz, i64 1432
  %i.wb = load double, ptr %i.wa, align 8, !tbaa !219
  %i.wc = fmul reassoc nsz arcp contract afn double %i.wb, %.566
  %i.wd = fdiv reassoc nsz arcp contract afn double %i.wc, %i.u
  call void @cairo_set_line_width(ptr noundef %1, double noundef %i.wd) #25
  call void @cairo_set_source_rgba(ptr noundef %1, double noundef 1.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef %.567) #25
  %i.we = load float, ptr %i.i, align 16, !tbaa !13
  %i.wf = fpext reassoc nsz arcp contract afn float %i.we to double
  %i.wg = load float, ptr %i.ph, align 4, !tbaa !13
  %i.wh = fpext reassoc nsz arcp contract afn float %i.wg to double
  %i.wi = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !180
  %i.wj = getelementptr inbounds nuw i8, ptr %i.wi, i64 1432
  %i.wk = load double, ptr %i.wj, align 8, !tbaa !219
  %i.wl = fmul reassoc nsz arcp contract afn double %i.wk, 5.000000e+00
  %i.wm = fdiv reassoc nsz arcp contract afn double %i.wl, %i.u
  call void @cairo_arc(ptr noundef %1, double noundef %i.wf, double noundef %i.wh, double noundef %i.wm, double noundef 0.000000e+00, double noundef f0x401921FB54442D18) #25
  call void @cairo_stroke(ptr noundef %1) #25
  %i.wn = load i32, ptr %i.vw, align 8, !tbaa !212
  %i.wo = icmp eq i32 %i.wn, 1                    ; 2 uses
  %.sink549 = select i1 %i.wo, double 4.000000e+00, double 2.000000e+00
  %.sink545 = select i1 %i.wo, double 8.000000e-01, double 5.000000e-01
  %i.wp = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !180
  %i.wq = getelementptr inbounds nuw i8, ptr %i.wp, i64 1432
  %i.wr = load double, ptr %i.wq, align 8, !tbaa !219
  %i.ws = fmul reassoc nsz arcp contract afn double %i.wr, %.sink549
  %i.wt = fdiv reassoc nsz arcp contract afn double %i.ws, %i.u
  call void @cairo_set_line_width(ptr noundef %1, double noundef %i.wt) #25
  call void @cairo_set_source_rgba(ptr noundef %1, double noundef 1.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef %.sink545) #25
  %i.wu = load float, ptr %i.pi, align 8, !tbaa !13
  %i.wv = fpext reassoc nsz arcp contract afn float %i.wu to double
  %i.ww = load float, ptr %i.pj, align 4, !tbaa !13
  %i.wx = fpext reassoc nsz arcp contract afn float %i.ww to double
  %i.wy = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !180
  %i.wz = getelementptr inbounds nuw i8, ptr %i.wy, i64 1432
  %i.xa = load double, ptr %i.wz, align 8, !tbaa !219
  %i.xb = fmul reassoc nsz arcp contract afn double %i.xa, 5.000000e+00
  %i.xc = fdiv reassoc nsz arcp contract afn double %i.xb, %i.u
  call void @cairo_arc(ptr noundef %1, double noundef %i.wv, double noundef %i.wx, double noundef %i.xc, double noundef 0.000000e+00, double noundef f0x401921FB54442D18) #25
  call void @cairo_stroke(ptr noundef %1) #25
  %i.xd = load i32, ptr %i.vw, align 8, !tbaa !212
  %i.xe = icmp eq i32 %i.xd, 2                    ; 2 uses
  %.sink556 = select i1 %i.xe, double 4.000000e+00, double 2.000000e+00
  %.sink552 = select i1 %i.xe, double 8.000000e-01, double 5.000000e-01
  %i.xf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !180
  %i.xg = getelementptr inbounds nuw i8, ptr %i.xf, i64 1432
  %i.xh = load double, ptr %i.xg, align 8, !tbaa !219
  %i.xi = fmul reassoc nsz arcp contract afn double %i.xh, %.sink556
  %i.xj = fdiv reassoc nsz arcp contract afn double %i.xi, %i.u
  call void @cairo_set_line_width(ptr noundef %1, double noundef %i.xj) #25
  call void @cairo_set_source_rgba(ptr noundef %1, double noundef 1.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef %.sink552) #25
  %i.xk = load float, ptr %i.pk, align 16, !tbaa !13
  %i.xl = fpext reassoc nsz arcp contract afn float %i.xk to double
  %i.xm = load float, ptr %i.pl, align 4, !tbaa !13
  %i.xn = fpext reassoc nsz arcp contract afn float %i.xm to double
  %i.xo = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !180
  %i.xp = getelementptr inbounds nuw i8, ptr %i.xo, i64 1432
  %i.xq = load double, ptr %i.xp, align 8, !tbaa !219
  %i.xr = fmul reassoc nsz arcp contract afn double %i.xq, 5.000000e+00
  %i.xs = fdiv reassoc nsz arcp contract afn double %i.xr, %i.u
  call void @cairo_arc(ptr noundef %1, double noundef %i.xl, double noundef %i.xn, double noundef %i.xs, double noundef 0.000000e+00, double noundef f0x401921FB54442D18) #25
  call void @cairo_stroke(ptr noundef %1) #25
  %i.xt = load i32, ptr %i.vw, align 8, !tbaa !212
  %i.xu = icmp eq i32 %i.xt, 3                    ; 2 uses
  %.sink563 = select i1 %i.xu, double 4.000000e+00, double 2.000000e+00
  %.sink559 = select i1 %i.xu, double 8.000000e-01, double 5.000000e-01
  %i.xv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !180
  %i.xw = getelementptr inbounds nuw i8, ptr %i.xv, i64 1432
  %i.xx = load double, ptr %i.xw, align 8, !tbaa !219
  %i.xy = fmul reassoc nsz arcp contract afn double %i.xx, %.sink563
  %i.xz = fdiv reassoc nsz arcp contract afn double %i.xy, %i.u
  call void @cairo_set_line_width(ptr noundef %1, double noundef %i.xz) #25
  call void @cairo_set_source_rgba(ptr noundef %1, double noundef 1.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef %.sink559) #25
  %i.ya = load float, ptr %i.pm, align 8, !tbaa !13
  %i.yb = fpext reassoc nsz arcp contract afn float %i.ya to double
  %i.yc = load float, ptr %i.pn, align 4, !tbaa !13
  %i.yd = fpext reassoc nsz arcp contract afn float %i.yc to double
  %i.ye = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !180
  %i.yf = getelementptr inbounds nuw i8, ptr %i.ye, i64 1432
  %i.yg = load double, ptr %i.yf, align 8, !tbaa !219
  %i.yh = fmul reassoc nsz arcp contract afn double %i.yg, 5.000000e+00
  %i.yi = fdiv reassoc nsz arcp contract afn double %i.yh, %i.u
  call void @cairo_arc(ptr noundef %1, double noundef %i.yb, double noundef %i.yd, double noundef %i.yi, double noundef 0.000000e+00, double noundef f0x401921FB54442D18) #25
  call void @cairo_stroke(ptr noundef %1) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  %i.yj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 128), align 8, !tbaa !235
  %i.yk = getelementptr inbounds nuw i8, ptr %i.yj, i64 336
  %i.yl = load ptr, ptr %i.yk, align 8, !tbaa !243
  %i.ym = call ptr @pango_font_description_copy_static(ptr noundef %i.yl) #25 ; 4 uses
  call void @pango_font_description_set_weight(ptr noundef %i.ym, i32 noundef 700) #25
  %i.yn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !180
  %i.yo = getelementptr inbounds nuw i8, ptr %i.yn, i64 1432
  %i.yp = load double, ptr %i.yo, align 8, !tbaa !219
  %i.yq = fmul reassoc nsz arcp contract afn double %i.yp, 1.638400e+04
  call void @pango_font_description_set_absolute_size(ptr noundef %i.ym, double noundef %i.yq) #25
  %i.yr = call ptr @pango_cairo_create_layout(ptr noundef %1) #25 ; 5 uses
  call void @pango_layout_set_font_description(ptr noundef %i.yr, ptr noundef %i.ym) #25
  %i.ys = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !180
  %i.yt = getelementptr inbounds nuw i8, ptr %i.ys, i64 1432
  %i.yu = load double, ptr %i.yt, align 8, !tbaa !219
  %i.yv = fmul reassoc nsz arcp contract afn double %i.yu, 1.600000e+01
  call void @cairo_set_font_size(ptr noundef %1, double noundef %i.yv) #25
  call void @pango_layout_set_text(ptr noundef %i.yr, ptr noundef nonnull @.str.76, i32 noundef -1) #25
  call void @pango_layout_get_pixel_extents(ptr noundef %i.yr, ptr noundef nonnull %9, ptr noundef null) #25
  %i.yw = load <2 x float>, ptr %i.pk, align 16, !tbaa !13 ; 2 uses
  %i.yx = load <6 x float>, ptr %i.pi, align 8, !tbaa !13 ; 2 uses
  %i.yy = shufflevector <6 x float> %i.yx, <6 x float> poison, <2 x i32> <i32 0, i32 5> ; 2 uses
  %i.yz = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.yw, %i.yy
  %i.za = select <2 x i1> %i.yz, <2 x float> %i.yw, <2 x float> %i.yy
  %i.zb = load <2 x float>, ptr %i.i, align 16, !tbaa !13 ; 2 uses
  %i.zc = shufflevector <6 x float> %i.yx, <6 x float> poison, <2 x i32> <i32 4, i32 1> ; 2 uses
  %i.zd = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.zb, %i.zc
  %i.ze = select <2 x i1> %i.zd, <2 x float> %i.zb, <2 x float> %i.zc
  %i.zf = fadd reassoc nsz arcp contract afn <2 x float> %i.ze, %i.za
  %i.zg = fmul reassoc nsz arcp contract afn <2 x float> %i.zf, splat (float 5.000000e-01)
  call void @cairo_set_source_rgba(ptr noundef %1, double noundef 5.000000e-01, double noundef 5.000000e-01, double noundef 5.000000e-01, double noundef 9.000000e-01) #25
  %i.zh = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.zi = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !180
  %i.zj = getelementptr inbounds nuw i8, ptr %i.zi, i64 1432
  %i.zk = load double, ptr %i.zj, align 8, !tbaa !219
  %i.zl = fptosi <2 x float> %i.zg to <2 x i32>   ; 2 uses
  %i.zm = load <2 x i32>, ptr %i.zh, align 4, !tbaa !14 ; 2 uses
  %i.zn = sitofp reassoc nsz arcp contract afn <2 x i32> %i.zm to <2 x double>
  %i.zo = sitofp reassoc nsz arcp contract afn <2 x i32> %i.zl to <2 x float>
  %i.zp = sitofp reassoc nsz arcp contract afn <2 x i32> %i.zm to <2 x float>
  %i.zq = fmul reassoc nnan nsz arcp contract afn <2 x float> %i.zp, splat (float 5.000000e-01)
  %i.zr = fsub reassoc nsz arcp contract afn <2 x float> %i.zo, %i.zq
  %i.zs = fpext reassoc nsz arcp contract afn <2 x float> %i.zr to <2 x double>
  %i.zt = insertelement <4 x double> poison, double %i.zk, i64 0
  %i.zu = shufflevector <4 x double> %i.zt, <4 x double> poison, <4 x i32> zeroinitializer
  %i.zv = fmul reassoc nsz arcp contract afn <4 x double> %i.zu, <double 8.000000e+00, double 1.200000e+01, double 4.000000e+00, double 6.000000e+00> ; 2 uses
  %i.zw = shufflevector <2 x double> %i.zn, <2 x double> %i.zs, <4 x i32> <i32 0, i32 1, i32 2, i32 3> ; 2 uses
  %i.zx = fadd reassoc nsz arcp contract afn <4 x double> %i.zw, %i.zv
  %i.zy = fsub reassoc nsz arcp contract afn <4 x double> %i.zw, %i.zv
  %i.zz = shufflevector <4 x double> %i.zx, <4 x double> %i.zy, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.aaa = fptrunc reassoc nsz arcp contract afn <4 x double> %i.zz to <4 x float> ; 4 uses
  %i.aab = extractelement <4 x float> %i.aaa, i64 0
  %i.aac = extractelement <4 x float> %i.aaa, i64 1
  %i.aad = extractelement <4 x float> %i.aaa, i64 2
  %i.aae = extractelement <4 x float> %i.aaa, i64 3
  call void @dt_gui_draw_rounded_rectangle(ptr noundef %1, float noundef %i.aab, float noundef %i.aac, float noundef %i.aad, float noundef %i.aae) #25
  %i.aaf = load <2 x i32>, ptr %i.zh, align 4, !tbaa !14
  %i.aag = sitofp reassoc nsz arcp contract afn <2 x i32> %i.aaf to <2 x double>
  %i.aah = sitofp reassoc nsz arcp contract afn <2 x i32> %i.zl to <2 x double>
  %i.aai = fmul reassoc nnan nsz arcp contract afn <2 x double> %i.aag, <double 5.000000e-01, double 7.500000e-01>
  %i.aaj = fsub reassoc nsz arcp contract afn <2 x double> %i.aah, %i.aai ; 2 uses
  %i.aak = extractelement <2 x double> %i.aaj, i64 0
  %i.aal = extractelement <2 x double> %i.aaj, i64 1
  call void @cairo_move_to(ptr noundef %1, double noundef %i.aak, double noundef %i.aal) #25
  %i.aam = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !180 ; 4 uses
  %i.aan = getelementptr inbounds nuw i8, ptr %i.aam, i64 1408
  %i.aao = load double, ptr %i.aan, align 8, !tbaa !220
  %i.aap = fmul reassoc nsz arcp contract afn double %i.aao, 5.000000e-01
  %i.aaq = fsub reassoc nsz arcp contract afn double 5.000000e-01, %i.aap ; 3 uses
  %i.aar = getelementptr inbounds nuw i8, ptr %i.aam, i64 1384
  %i.aas = load double, ptr %i.aar, align 8, !tbaa !221
  %i.aat = fmul reassoc nsz arcp contract afn double %i.aaq, %i.aas
  %i.aau = getelementptr inbounds nuw i8, ptr %i.aam, i64 1400
  %i.aav = load double, ptr %i.aau, align 8, !tbaa !222
  %i.aaw = fmul reassoc nsz arcp contract afn double %i.aav, %i.aaq
  %i.aax = getelementptr inbounds nuw i8, ptr %i.aam, i64 1392
  %i.aay = load double, ptr %i.aax, align 8, !tbaa !223
  %i.aaz = fmul reassoc nsz arcp contract afn double %i.aay, %i.aaq
  call void @cairo_set_source_rgba(ptr noundef %1, double noundef %i.aat, double noundef %i.aaw, double noundef %i.aaz, double noundef 9.000000e-01) #25
  call void @pango_cairo_show_layout(ptr noundef %1, ptr noundef %i.yr) #25
  call void @pango_font_description_free(ptr noundef %i.ym) #25
  call void @g_object_unref(ptr noundef %i.yr) #25
  %i.aba = load i32, ptr %i.oy, align 4, !tbaa !142 ; 2 uses
  switch i32 %i.aba, label %bb.bg [
    i32 1, label %bb.bf
    i32 3, label %bb.bf
  ]

bb.bf:                                            ; preds = %bb.be, %bb.be
  %i.abb = getelementptr inbounds nuw i8, ptr %i.o, i64 64
  %i.abc = load i32, ptr %i.abb, align 4, !tbaa !251
  %i.abd = add i32 %i.abc, -1
  %switch.and = and i32 %i.abd, -3
  %switch.selectcmp = icmp eq i32 %switch.and, 0
  %i.abe = zext i1 %switch.selectcmp to i32       ; 2 uses
  %i.abf = load float, ptr %i.i, align 16, !tbaa !13
  %i.abg = load float, ptr %i.pm, align 8, !tbaa !13
  %i.abh = fadd reassoc nsz arcp contract afn float %i.abg, %i.abf
  %i.abi = fmul reassoc nsz arcp contract afn float %i.abh, 5.000000e-01
  %i.abj = load float, ptr %i.ph, align 4, !tbaa !13
  %i.abk = load float, ptr %i.pn, align 4, !tbaa !13
  %i.abl = fadd reassoc nsz arcp contract afn float %i.abk, %i.abj
  %i.abm = fmul reassoc nsz arcp contract afn float %i.abl, 5.000000e-01
  call fastcc void @gui_draw_sym(ptr noundef %1, float noundef %i.abi, float noundef %i.abm, i32 noundef %i.abe)
  %i.abn = load float, ptr %i.pi, align 8, !tbaa !13
  %i.abo = load float, ptr %i.pk, align 16, !tbaa !13
  %i.abp = fadd reassoc nsz arcp contract afn float %i.abo, %i.abn
  %i.abq = fmul reassoc nsz arcp contract afn float %i.abp, 5.000000e-01
  %i.abr = load float, ptr %i.pj, align 4, !tbaa !13
  %i.abs = load float, ptr %i.pl, align 4, !tbaa !13
  %i.abt = fadd reassoc nsz arcp contract afn float %i.abs, %i.abr
  %i.abu = fmul reassoc nsz arcp contract afn float %i.abt, 5.000000e-01
  call fastcc void @gui_draw_sym(ptr noundef %1, float noundef %i.abq, float noundef %i.abu, i32 noundef %i.abe)
  %.pre = load i32, ptr %i.oy, align 4, !tbaa !142
  br label %bb.bg

bb.bg:                                            ; preds = %bb.be, %bb.bf
  %i.abv = phi i32 [ %i.aba, %bb.be ], [ %.pre, %bb.bf ]
  %i.abw = and i32 %i.abv, -2
  %switch = icmp eq i32 %i.abw, 2
  br i1 %switch, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.abx = getelementptr inbounds nuw i8, ptr %i.o, i64 64
  %i.aby = load i32, ptr %i.abx, align 4, !tbaa !251
  %i.abz = icmp sgt i32 %i.aby, 1
  %i.aca = zext i1 %i.abz to i32                  ; 2 uses
  %i.acb = load float, ptr %i.i, align 16, !tbaa !13
  %i.acc = load float, ptr %i.pi, align 8, !tbaa !13
  %i.acd = fadd reassoc nsz arcp contract afn float %i.acc, %i.acb
  %i.ace = fmul reassoc nsz arcp contract afn float %i.acd, 5.000000e-01
  %i.acf = load float, ptr %i.ph, align 4, !tbaa !13
  %i.acg = load float, ptr %i.pj, align 4, !tbaa !13
  %i.ach = fadd reassoc nsz arcp contract afn float %i.acg, %i.acf
  %i.aci = fmul reassoc nsz arcp contract afn float %i.ach, 5.000000e-01
  call fastcc void @gui_draw_sym(ptr noundef %1, float noundef %i.ace, float noundef %i.aci, i32 noundef %i.aca)
  %i.acj = load float, ptr %i.pm, align 8, !tbaa !13
  %i.ack = load float, ptr %i.pk, align 16, !tbaa !13
  %i.acl = fadd reassoc nsz arcp contract afn float %i.ack, %i.acj
  %i.acm = fmul reassoc nsz arcp contract afn float %i.acl, 5.000000e-01
  %i.acn = load float, ptr %i.pn, align 4, !tbaa !13
  %i.aco = load float, ptr %i.pl, align 4, !tbaa !13
  %i.acp = fadd reassoc nsz arcp contract afn float %i.aco, %i.acn
  %i.acq = fmul reassoc nsz arcp contract afn float %i.acp, 5.000000e-01
  call fastcc void @gui_draw_sym(ptr noundef %1, float noundef %i.acm, float noundef %i.acq, i32 noundef %i.aca)
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bg, %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #25
  br label %.critedge

.critedge:                                        ; preds = %bb.bj, %bb.ap, %bb.ao, %bb.aq, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @apply_box_aspect(ptr noundef %0, i32 noundef %1) unnamed_addr #4 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.d = load ptr, ptr %i.c, align 16, !tbaa !153 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !186
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 2680
  %i.g = call i32 @dt_dev_get_processed_size(ptr noundef nonnull %i.f, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #25 ; 0 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !200
  %i.j = call reassoc nsz arcp contract afn fastcc float @_ratio_get_aspect(ptr noundef %0, ptr noundef %i.i) ; 2 uses
  %i.k = load i32, ptr %i.a, align 4, !tbaa !14   ; 3 uses
  %i.l = load i32, ptr %i.b, align 4, !tbaa !14   ; 3 uses
  %i.m = icmp slt i32 %i.k, %i.l
  %i.n = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.j
  %spec.select = select nsz i1 %i.m, float %i.n, float %i.j ; 2 uses
  %i.o = fcmp reassoc nsz arcp contract afn ogt float %spec.select, 0.000000e+00
  br i1 %i.o, label %bb.b, label %bb.t

bb.b:                                             ; preds = %bb.a
  %i.p = insertelement <2 x i32> poison, i32 %i.k, i64 0
  %i.q = insertelement <2 x i32> %i.p, i32 %i.l, i64 1
  %i.r = sitofp reassoc nsz arcp contract afn <2 x i32> %i.q to <2 x float> ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 100 ; 2 uses
  %i.t = load <2 x float>, ptr %i.s, align 4, !tbaa !13
  %i.u = fmul reassoc nsz arcp contract afn <2 x float> %i.t, %i.r
  %i.v = fdiv reassoc nsz arcp contract afn <2 x float> %i.u, %i.r ; 2 uses
  %i.w = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.v, zeroinitializer
  %i.x = fpext reassoc nsz arcp contract afn <2 x float> %i.v to <2 x double>
  %i.y = select <2 x i1> %i.w, <2 x double> %i.x, <2 x double> zeroinitializer ; 11 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 108 ; 2 uses
  %i.aa = sitofp reassoc nsz arcp contract afn i32 %i.k to double
  %i.ab = sitofp reassoc nsz arcp contract afn i32 %i.l to double
  %i.ac = fpext reassoc nsz arcp contract afn float %spec.select to double
  %i.ad = fmul reassoc nsz arcp contract afn double %i.ac, %i.ab
  %i.ae = load <2 x float>, ptr %i.z, align 4, !tbaa !13 ; 2 uses
  %i.af = fmul reassoc nsz arcp contract afn <2 x float> %i.ae, %i.r
  %i.ag = fdiv reassoc nsz arcp contract afn <2 x float> %i.af, %i.r ; 2 uses
  %i.ah = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.ag, splat (float 1.000000e+00)
  %i.ai = select <2 x i1> %i.ah, <2 x float> %i.ag, <2 x float> splat (float 1.000000e+00)
  %i.aj = fpext <2 x float> %i.ai to <2 x double> ; 12 uses
  %i.ak = fpext reassoc nsz arcp contract afn <2 x float> %i.ae to <2 x double>
  %i.al = insertelement <2 x double> poison, double %i.aa, i64 0
  %i.am = insertelement <2 x double> %i.al, double %i.ad, i64 1 ; 2 uses
  %i.an = fmul reassoc nsz arcp contract afn <2 x double> %i.am, %i.ak
  %i.ao = shufflevector <2 x double> %i.an, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.ap = fdiv reassoc nsz arcp contract afn <2 x double> %i.ao, %i.am ; 8 uses
  switch i32 %1, label %bb.g [
    i32 3, label %bb.c
    i32 6, label %bb.d
    i32 12, label %bb.e
    i32 9, label %bb.f
  ]

bb.c:                                             ; preds = %bb.b
  %i.aq = fadd reassoc nsz arcp contract afn <2 x double> %i.ap, %i.aj
  %i.ar = fadd reassoc nsz arcp contract afn <2 x double> %i.y, %i.aj
  %i.as = fmul reassoc nsz arcp contract afn <2 x double> %i.aq, splat (double 5.000000e-01) ; 2 uses
  %i.at = fsub reassoc nsz arcp contract afn <2 x double> %i.ar, %i.as
  br label %bb.k

bb.d:                                             ; preds = %bb.b
  %foldExtExtBinop = fadd reassoc nsz arcp contract afn <2 x double> %i.y, %i.aj
  %i.au = fadd reassoc nsz arcp contract afn <2 x double> %i.ap, %i.aj
  %i.av = fmul reassoc nsz arcp contract afn <2 x double> %i.au, splat (double 5.000000e-01) ; 2 uses
  %foldExtExtBinop185 = fsub reassoc nsz arcp contract afn <2 x double> %foldExtExtBinop, %i.av
  %i.aw = shufflevector <2 x double> %i.y, <2 x double> %foldExtExtBinop185, <2 x i32> <i32 0, i32 3>
  br label %bb.k

bb.e:                                             ; preds = %bb.b
  %i.ax = fadd reassoc nsz arcp contract afn <2 x double> %i.ap, %i.aj
  %i.ay = fmul reassoc nsz arcp contract afn <2 x double> %i.ax, splat (double 5.000000e-01)
  br label %bb.k

bb.f:                                             ; preds = %bb.b
  %i.az = fadd reassoc nsz arcp contract afn <2 x double> %i.ap, %i.aj
  %foldExtExtBinop187 = fadd reassoc nsz arcp contract afn <2 x double> %i.y, %i.aj
  %i.ba = fmul reassoc nsz arcp contract afn <2 x double> %i.az, splat (double 5.000000e-01) ; 2 uses
  %foldExtExtBinop189 = fsub reassoc nsz arcp contract afn <2 x double> %foldExtExtBinop187, %i.ba
  %i.bb = shufflevector <2 x double> %foldExtExtBinop189, <2 x double> %i.y, <2 x i32> <i32 0, i32 3>
  br label %bb.k

bb.g:                                             ; preds = %bb.b
  %i.bc = and i32 %1, 5
  %.not = icmp eq i32 %i.bc, 0
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %foldExtExtBinop191 = fsub reassoc nsz arcp contract afn <2 x double> %i.ap, %i.aj
  %i.bd = extractelement <2 x double> %foldExtExtBinop191, i64 1
  %i.be = fmul reassoc nsz arcp contract afn double %i.bd, 5.000000e-01
  %i.bf = extractelement <2 x double> %i.y, i64 1
  %i.bg = fsub reassoc nsz arcp contract afn double %i.bf, %i.be
  %i.bh = shufflevector <2 x double> %i.aj, <2 x double> %i.ap, <2 x i32> <i32 0, i32 3>
  %i.bi = insertelement <2 x double> %i.y, double %i.bg, i64 1
  br label %bb.k

end_hunk_4
begin_hunk_5_@apply_box_aspect:bb.a
  %i.bo = shufflevector <2 x double> %i.ap, <2 x double> %i.aj, <2 x i32> <i32 0, i32 3>
  %i.bp = insertelement <2 x double> %i.y, double %i.bn, i64 0
  br label %bb.k

bb.k:                                             ; preds = %bb.d, %bb.f, %bb.i, %bb.j, %bb.h, %bb.e, %bb.c
  %i.bq = phi <2 x double> [ %i.as, %bb.c ], [ %i.av, %bb.d ], [ %i.ay, %bb.e ], [ %i.ba, %bb.f ], [ %i.bh, %bb.h ], [ %i.bo, %bb.j ], [ %i.aj, %bb.i ] ; 4 uses
  %i.br = phi <2 x double> [ %i.at, %bb.c ], [ %i.aw, %bb.d ], [ %i.y, %bb.e ], [ %i.bb, %bb.f ], [ %i.bi, %bb.h ], [ %i.bp, %bb.j ], [ %i.y, %bb.i ] ; 4 uses
  %i.bs = extractelement <2 x double> %i.br, i64 1 ; 3 uses
  %i.bt = extractelement <2 x double> %i.br, i64 0 ; 2 uses
  %i.bu = extractelement <2 x double> %i.bq, i64 1 ; 3 uses
  %i.bv = extractelement <2 x double> %i.bq, i64 0 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.d, i64 140
  %i.bx = load float, ptr %i.bw, align 4, !tbaa !252 ; 2 uses
  %i.by = fpext reassoc nsz arcp contract afn float %i.bx to double ; 4 uses
  %i.bz = fcmp reassoc nsz arcp contract afn olt double %i.bt, %i.by
  br i1 %i.bz, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %foldExtExtBinop195 = fadd reassoc nsz arcp contract afn <2 x double> %i.bq, %i.br
  %i.ca = extractelement <2 x double> %foldExtExtBinop195, i64 0
  %i.cb = fsub reassoc nsz arcp contract afn double %i.ca, %i.by ; 3 uses
  %i.cc = fmul reassoc nsz arcp contract afn double %i.cb, %i.bu
  %i.cd = fdiv reassoc nsz arcp contract afn double %i.cc, %i.bv ; 3 uses
  %i.ce = and i32 %1, 2
  %.not167 = icmp eq i32 %i.ce, 0
  %i.cf = fadd reassoc nsz arcp contract afn double %i.bu, %i.bs
  %i.cg = fsub reassoc nsz arcp contract afn double %i.cf, %i.cd
  %.1147 = select nsz i1 %.not167, double %i.bs, double %i.cg ; 2 uses
  %i.ch = insertelement <2 x double> poison, double %i.cb, i64 0
  %i.ci = insertelement <2 x double> %i.ch, double %i.cd, i64 1
  %i.cj = insertelement <2 x double> poison, double %i.by, i64 0
  %i.ck = insertelement <2 x double> %i.cj, double %.1147, i64 1
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.1152 = phi nsz double [ %i.by, %bb.l ], [ %i.bt, %bb.k ] ; 2 uses
  %.2148 = phi nsz double [ %.1147, %bb.l ], [ %i.bs, %bb.k ] ; 2 uses
  %.1142 = phi nsz double [ %i.cb, %bb.l ], [ %i.bv, %bb.k ] ; 3 uses
  %.1 = phi nsz double [ %i.cd, %bb.l ], [ %i.bu, %bb.k ] ; 3 uses
  %i.cl = phi <2 x double> [ %i.ci, %bb.l ], [ %i.bq, %bb.k ]
  %i.cm = phi <2 x double> [ %i.ck, %bb.l ], [ %i.br, %bb.k ]
  %i.cn = getelementptr inbounds nuw i8, ptr %i.d, i64 144
  %i.co = load float, ptr %i.cn, align 8, !tbaa !253 ; 2 uses
  %i.cp = fpext reassoc nsz arcp contract afn float %i.co to double ; 3 uses
  %i.cq = fcmp reassoc nsz arcp contract afn olt double %.2148, %i.cp
  br i1 %i.cq, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.cr = fadd reassoc nsz arcp contract afn double %.1, %.2148
  %i.cs = fsub reassoc nsz arcp contract afn double %i.cr, %i.cp ; 3 uses
  %i.ct = fmul reassoc nsz arcp contract afn double %i.cs, %.1142
  %i.cu = fdiv reassoc nsz arcp contract afn double %i.ct, %.1 ; 3 uses
  %i.cv = and i32 %1, 1
  %.not168 = icmp eq i32 %i.cv, 0
  %i.cw = fadd reassoc nsz arcp contract afn double %.1142, %.1152
  %i.cx = fsub reassoc nsz arcp contract afn double %i.cw, %i.cu
  %.2153 = select nsz i1 %.not168, double %.1152, double %i.cx
  %i.cy = insertelement <2 x double> poison, double %i.cu, i64 0
  %i.cz = insertelement <2 x double> %i.cy, double %i.cs, i64 1
  %i.da = insertelement <2 x double> poison, double %.2153, i64 0
  %i.db = insertelement <2 x double> %i.da, double %i.cp, i64 1
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.2143 = phi nsz double [ %i.cu, %bb.n ], [ %.1142, %bb.m ] ; 3 uses
  %.2 = phi nsz double [ %i.cs, %bb.n ], [ %.1, %bb.m ] ; 3 uses
  %i.dc = phi <2 x double> [ %i.cz, %bb.n ], [ %i.cl, %bb.m ]
  %i.dd = phi <2 x double> [ %i.db, %bb.n ], [ %i.cm, %bb.m ] ; 2 uses
  %i.de = extractelement <2 x double> %i.dd, i64 0 ; 5 uses
  %i.df = fadd reassoc nsz arcp contract afn double %.2143, %i.de
  %i.dg = getelementptr inbounds nuw i8, ptr %i.d, i64 148
  %i.dh = load float, ptr %i.dg, align 4, !tbaa !254
  %i.di = fadd reassoc nsz arcp contract afn float %i.dh, %i.bx
  %i.dj = fpext reassoc nsz arcp contract afn float %i.di to double ; 2 uses
  %i.dk = fcmp reassoc nsz arcp contract afn ogt double %i.df, %i.dj
  %i.dl = extractelement <2 x double> %i.dd, i64 1 ; 3 uses
  br i1 %i.dk, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.dm = fsub reassoc nsz arcp contract afn double %i.dj, %i.de ; 3 uses
  %i.dn = fmul reassoc nsz arcp contract afn double %i.dm, %.2
  %i.do = fdiv reassoc nsz arcp contract afn double %i.dn, %.2143 ; 3 uses
  %i.dp = and i32 %1, 2
  %.not169 = icmp eq i32 %i.dp, 0
  %i.dq = fadd reassoc nsz arcp contract afn double %.2, %i.dl
  %i.dr = fsub reassoc nsz arcp contract afn double %i.dq, %i.do
  %.4150 = select nsz i1 %.not169, double %i.dl, double %i.dr
  %i.ds = insertelement <2 x double> poison, double %i.dm, i64 0
  %i.dt = insertelement <2 x double> %i.ds, double %i.do, i64 1
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.5 = phi nsz double [ %.4150, %bb.p ], [ %i.dl, %bb.o ] ; 3 uses
  %.3144 = phi nsz double [ %i.dm, %bb.p ], [ %.2143, %bb.o ] ; 2 uses
  %.3 = phi nsz double [ %i.do, %bb.p ], [ %.2, %bb.o ] ; 2 uses
  %i.du = phi <2 x double> [ %i.dt, %bb.p ], [ %i.dc, %bb.o ]
  %i.dv = fadd reassoc nsz arcp contract afn double %.3, %.5
  %i.dw = getelementptr inbounds nuw i8, ptr %i.d, i64 152
  %i.dx = load float, ptr %i.dw, align 8, !tbaa !255
  %i.dy = fadd reassoc nsz arcp contract afn float %i.dx, %i.co
  %i.dz = fpext reassoc nsz arcp contract afn float %i.dy to double ; 2 uses
  %i.ea = fcmp reassoc nsz arcp contract afn ogt double %i.dv, %i.dz
  br i1 %i.ea, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.eb = fsub reassoc nsz arcp contract afn double %i.dz, %.5 ; 2 uses
  %i.ec = fmul reassoc nsz arcp contract afn double %i.eb, %.3144
  %i.ed = fdiv reassoc nsz arcp contract afn double %i.ec, %.3 ; 2 uses
  %i.ee = and i32 %1, 1
  %.not170 = icmp eq i32 %i.ee, 0
  %i.ef = fadd reassoc nsz arcp contract afn double %.3144, %i.de
  %i.eg = fsub reassoc nsz arcp contract afn double %i.ef, %i.ed
  %.4155 = select nsz i1 %.not170, double %i.de, double %i.eg
  %i.eh = insertelement <2 x double> poison, double %i.ed, i64 0
  %i.ei = insertelement <2 x double> %i.eh, double %i.eb, i64 1
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.5156 = phi nsz double [ %.4155, %bb.r ], [ %i.de, %bb.q ]
  %i.ej = phi <2 x double> [ %i.ei, %bb.r ], [ %i.du, %bb.q ]
  %i.ek = insertelement <2 x double> poison, double %.5156, i64 0
  %i.el = insertelement <2 x double> %i.ek, double %.5, i64 1
  %i.em = fptrunc reassoc nsz arcp contract afn <2 x double> %i.el to <2 x float>
  %i.en = call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.em, <2 x float> zeroinitializer)
  store <2 x float> %i.en, ptr %i.s, align 4, !tbaa !13
  %i.eo = fptrunc reassoc nsz arcp contract afn <2 x double> %i.ej to <2 x float>
  %i.ep = call reassoc nsz arcp contract afn <2 x float> @llvm.minnum.v2f32(<2 x float> %i.eo, <2 x float> splat (float 1.000000e+00))
  store <2 x float> %i.ep, ptr %i.z, align 4, !tbaa !13
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @_iop_clipping_set_max_clip(ptr noundef %0) unnamed_addr #4 {
bb.a:
  %i.a = alloca [8 x float], align 16             ; 10 uses
  %i.b = alloca float, align 4                    ; 4 uses
  %i.c = alloca float, align 4                    ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.e = load ptr, ptr %i.d, align 16, !tbaa !153 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !154  ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 160 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !177
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 664 ; 4 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !158  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 96
  %i.m = load ptr, ptr %i.l, align 16, !tbaa !183 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 416
  %i.o = load i64, ptr %i.n, align 16, !tbaa !315
  %i.p = icmp eq i64 %i.i, %i.o
  br i1 %i.p, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.q = tail call ptr @dt_dev_distort_get_iop_pipe(ptr noundef nonnull %i.k, ptr noundef nonnull %i.m, ptr noundef nonnull %0) #25 ; 2 uses
  %.not = icmp eq ptr %i.q, null
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 164
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.t = load <2 x float>, ptr %i.s, align 4, !tbaa !13 ; 3 uses
  %i.u = fcmp reassoc nsz arcp contract afn ult <2 x float> %i.t, zeroinitializer
  %i.v = fcmp reassoc nsz arcp contract afn ole <2 x float> %i.t, splat (float f0x3F666666)
  %i.w = select <2 x i1> %i.v, <2 x float> %i.t, <2 x float> splat (float f0x3F666666)
  %i.x = select <2 x i1> %i.u, <2 x float> zeroinitializer, <2 x float> %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  %i.z = load float, ptr %i.y, align 4, !tbaa !141
  %i.aa = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.z) ; 3 uses
  %i.ab = fcmp reassoc nsz arcp contract afn ult float %i.aa, 1.000000e-01
  %.inv60 = fcmp reassoc nsz arcp contract afn ole float %i.aa, 1.000000e+00
  %spec.select57 = select reassoc nsz arcp contract afn i1 %.inv60, float %i.aa, float 1.000000e+00
  %i.ac = select reassoc nsz arcp contract afn i1 %i.ab, float 1.000000e-01, float %spec.select57
  %i.ad = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !140
  %i.af = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.ae) ; 3 uses
  %i.ag = fcmp reassoc nsz arcp contract afn ult float %i.af, 1.000000e-01
  %.inv61 = fcmp reassoc nsz arcp contract afn ole float %i.af, 1.000000e+00
  %spec.select58 = select reassoc nsz arcp contract afn i1 %.inv61, float %i.af, float 1.000000e+00
  %i.ah = select reassoc nsz arcp contract afn i1 %i.ag, float 1.000000e-01, float %spec.select58
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store <2 x float> zeroinitializer, ptr %i.a, align 16, !tbaa !13
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.ak = load <2 x i32>, ptr %i.r, align 4, !tbaa !14
  %i.al = shufflevector <2 x i32> %i.ak, <2 x i32> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0>
  %i.am = sitofp reassoc nsz arcp contract afn <4 x i32> %i.al to <4 x float> ; 3 uses
  %i.an = extractelement <4 x float> %i.am, i64 1
  store float %i.an, ptr %i.ai, align 8, !tbaa !13
  %i.ao = shufflevector <2 x float> %i.x, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ap = shufflevector <4 x float> <float 1.000000e+00, float poison, float poison, float poison>, <4 x float> %i.ao, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.aq = insertelement <4 x float> %i.ap, float %i.ac, i64 3
  %i.ar = fmul reassoc nsz arcp contract afn <4 x float> %i.aq, %i.am
  store <4 x float> %i.ar, ptr %i.aj, align 4, !tbaa !13
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %i.at = extractelement <4 x float> %i.am, i64 0
  %i.au = fmul reassoc nnan nsz arcp contract afn float %i.ah, %i.at
  store float %i.au, ptr %i.as, align 4, !tbaa !13
  %i.av = load ptr, ptr %i.j, align 8, !tbaa !158 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 96
  %i.ax = load ptr, ptr %i.aw, align 16, !tbaa !183
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.az = load i32, ptr %i.ay, align 16, !tbaa !184
  %i.ba = sitofp reassoc nsz arcp contract afn i32 %i.az to double
  %i.bb = call i32 @dt_dev_distort_transform_plus(ptr noundef %i.av, ptr noundef %i.ax, double noundef %i.ba, i32 noundef 2, ptr noundef nonnull %i.a, i64 noundef 4) #25
  %.not55 = icmp eq i32 %i.bb, 0
  br i1 %.not55, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bc = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  %i.be = load ptr, ptr %i.j, align 8, !tbaa !158
  %i.bf = call i32 @dt_dev_get_preview_size(ptr noundef %i.be, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #25 ; 0 uses
  %i.bg = load float, ptr %i.b, align 4, !tbaa !13
  %i.bh = getelementptr inbounds nuw i8, ptr %i.e, i64 140
  %i.bi = load float, ptr %i.c, align 4, !tbaa !13
  %i.bj = getelementptr inbounds nuw i8, ptr %i.e, i64 148
  %i.bk = getelementptr inbounds nuw i8, ptr %i.e, i64 100
  %i.bl = load <2 x float>, ptr %i.a, align 16, !tbaa !13 ; 2 uses
  %i.bm = insertelement <2 x float> poison, float %i.bg, i64 0
  %i.bn = insertelement <2 x float> %i.bm, float %i.bi, i64 1 ; 4 uses
  %i.bo = fdiv reassoc nsz arcp contract afn <2 x float> %i.bl, %i.bn
  %i.bp = call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.bo, <2 x float> zeroinitializer) ; 2 uses
  store <2 x float> %i.bp, ptr %i.bh, align 4, !tbaa !13
  %i.bq = load <2 x float>, ptr %i.bd, align 16, !tbaa !13 ; 2 uses
  %i.br = fdiv reassoc nsz arcp contract afn <2 x float> %i.bq, %i.bn
  %i.bs = call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.br, <2 x float> %i.bp)
  store <2 x float> %i.bs, ptr %i.bk, align 4, !tbaa !13
  %i.bt = getelementptr inbounds nuw i8, ptr %i.e, i64 108
  %i.bu = load <2 x float>, ptr %i.ai, align 8, !tbaa !13
  %i.bv = fsub reassoc nsz arcp contract afn <2 x float> %i.bu, %i.bl
  %i.bw = fdiv reassoc nsz arcp contract afn <2 x float> %i.bv, %i.bn
  %i.bx = call reassoc nsz arcp contract afn <2 x float> @llvm.minnum.v2f32(<2 x float> %i.bw, <2 x float> splat (float 1.000000e+00)) ; 2 uses
  store <2 x float> %i.bx, ptr %i.bj, align 4, !tbaa !13
  %i.by = load <2 x float>, ptr %i.bc, align 8, !tbaa !13
  %i.bz = fsub reassoc nsz arcp contract afn <2 x float> %i.by, %i.bq
  %i.ca = fdiv reassoc nsz arcp contract afn <2 x float> %i.bz, %i.bn
  %i.cb = call reassoc nsz arcp contract afn <2 x float> @llvm.minnum.v2f32(<2 x float> %i.ca, <2 x float> %i.bx)
  store <2 x float> %i.cb, ptr %i.bt, align 4, !tbaa !13
  %i.cc = load ptr, ptr %i.j, align 8, !tbaa !158
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 96
  %i.ce = load ptr, ptr %i.cd, align 16, !tbaa !183
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 416
  %i.cg = load i64, ptr %i.cf, align 16, !tbaa !315
  store i64 %i.cg, ptr %i.h, align 8, !tbaa !177
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.0 = phi i32 [ 1, %bb.d ], [ 0, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.b, %bb.a
  %.2 = phi i32 [ 1, %bb.a ], [ %.0, %bb.e ], [ 0, %bb.b ]
  ret i32 %.2
}

declare void @cairo_set_source_rgba(ptr noundef, double noundef, double noundef, double noundef, double noundef) local_unnamed_addr #6

declare void @cairo_set_fill_rule(ptr noundef, i32 noundef) local_unnamed_addr #6

declare void @cairo_rectangle(ptr noundef, double noundef, double noundef, double noundef, double noundef) local_unnamed_addr #6

declare void @cairo_fill(ptr noundef) local_unnamed_addr #6

declare void @cairo_set_line_width(ptr noundef, double noundef) local_unnamed_addr #6

declare void @cairo_stroke(ptr noundef) local_unnamed_addr #6

declare ptr @pango_font_description_copy_static(ptr noundef) local_unnamed_addr #6

declare void @pango_font_description_set_weight(ptr noundef, i32 noundef) local_unnamed_addr #6

declare void @pango_font_description_set_absolute_size(ptr noundef, double noundef) local_unnamed_addr #6

declare ptr @pango_cairo_create_layout(ptr noundef) local_unnamed_addr #6

declare void @pango_layout_set_font_description(ptr noundef, ptr noundef) local_unnamed_addr #6

declare i32 @dt_dev_get_processed_size(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

declare void @pango_layout_set_text(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

declare void @pango_layout_get_pixel_extents(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

declare void @cairo_clip_extents(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

declare void @dt_gui_draw_rounded_rectangle(ptr noundef, float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #6

declare void @cairo_set_source_rgb(ptr noundef, double noundef, double noundef, double noundef) local_unnamed_addr #6

declare void @cairo_move_to(ptr noundef, double noundef, double noundef) local_unnamed_addr #6

declare void @pango_cairo_show_layout(ptr noundef, ptr noundef) local_unnamed_addr #6

declare void @pango_font_description_free(ptr noundef) local_unnamed_addr #6

declare void @g_object_unref(ptr noundef) local_unnamed_addr #6

declare void @dt_guides_draw(ptr noundef, float noundef, float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #6

declare void @cairo_arc(ptr noundef, double noundef, double noundef, double noundef, double noundef, double noundef) local_unnamed_addr #6

declare void @cairo_line_to(ptr noundef, double noundef, double noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.atan2.f32(float, float) #16

declare ptr @dt_dev_distort_get_iop_pipe(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

declare i32 @dt_dev_distort_transform_plus(ptr noundef, ptr noundef, double noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #6

declare void @cairo_set_font_size(ptr noundef, double noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal fastcc void @gui_draw_sym(ptr noundef %0, float noundef %1, float noundef %2, i32 noundef range(i32 0, 2) %3) unnamed_addr #4 {
bb.a:
  %4 = alloca %struct._PangoRectangle, align 4    ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 128), align 8, !tbaa !235
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 336
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !243
  %i.d = tail call ptr @pango_font_description_copy_static(ptr noundef %i.c) #25 ; 4 uses
  tail call void @pango_font_description_set_weight(ptr noundef %i.d, i32 noundef 700) #25
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !180
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 1432
  %i.g = load double, ptr %i.f, align 8, !tbaa !219
  %i.h = fmul reassoc nsz arcp contract afn double %i.g, 1.638400e+04
  tail call void @pango_font_description_set_absolute_size(ptr noundef %i.d, double noundef %i.h) #25
  %i.i = tail call ptr @pango_cairo_create_layout(ptr noundef %0) #25 ; 5 uses
  tail call void @pango_layout_set_font_description(ptr noundef %i.i, ptr noundef %i.d) #25
  tail call void @pango_layout_set_text(ptr noundef %i.i, ptr noundef nonnull @.str.118, i32 noundef -1) #25
  call void @pango_layout_get_pixel_extents(ptr noundef %i.i, ptr noundef nonnull %4, ptr noundef null) #25
  %i.j = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !180 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 1408
  %i.l = load double, ptr %i.k, align 8, !tbaa !220
  %i.m = fmul reassoc nsz arcp contract afn double %i.l, 5.000000e-01
  %i.n = fadd reassoc nsz arcp contract afn double %i.m, 5.000000e-01 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 1384
  %i.p = load double, ptr %i.o, align 8, !tbaa !221
  %i.q = fmul reassoc nsz arcp contract afn double %i.n, %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 1400
  %i.s = load double, ptr %i.r, align 8, !tbaa !222
  %i.t = fmul reassoc nsz arcp contract afn double %i.s, %i.n
  %i.u = getelementptr inbounds nuw i8, ptr %i.j, i64 1392
  %i.v = load double, ptr %i.u, align 8, !tbaa !223
  %i.w = fmul reassoc nsz arcp contract afn double %i.v, %i.n
  call void @cairo_set_source_rgba(ptr noundef %0, double noundef %i.q, double noundef %i.t, double noundef %i.w, double noundef 5.000000e-01) #25
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.y = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !180
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 1432
  %i.aa = load double, ptr %i.z, align 8, !tbaa !219
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.ac = load <2 x i32>, ptr %i.x, align 4, !tbaa !14 ; 2 uses
  %i.ad = sitofp reassoc nsz arcp contract afn <2 x i32> %i.ac to <2 x double>
  %i.ae = insertelement <4 x double> poison, double %i.aa, i64 0
  %i.af = shufflevector <4 x double> %i.ae, <4 x double> poison, <4 x i32> zeroinitializer
  %i.ag = fmul reassoc nsz arcp contract afn <4 x double> %i.af, <double 4.000000e+00, double 8.000000e+00, double 2.000000e+00, double 4.000000e+00> ; 2 uses
  %i.ah = sitofp reassoc nsz arcp contract afn <2 x i32> %i.ac to <2 x float>
  %i.ai = fmul reassoc nnan nsz arcp contract afn <2 x float> %i.ah, splat (float 5.000000e-01)
  %i.aj = insertelement <2 x float> poison, float %1, i64 0
  %i.ak = insertelement <2 x float> %i.aj, float %2, i64 1
  %i.al = fsub reassoc nsz arcp contract afn <2 x float> %i.ak, %i.ai
  %i.am = fpext reassoc nsz arcp contract afn <2 x float> %i.al to <2 x double>
  %i.an = shufflevector <2 x double> %i.ad, <2 x double> %i.am, <4 x i32> <i32 0, i32 1, i32 2, i32 3> ; 2 uses
  %i.ao = fadd reassoc nsz arcp contract afn <4 x double> %i.an, %i.ag
  %i.ap = fsub reassoc nsz arcp contract afn <4 x double> %i.an, %i.ag
  %i.aq = shufflevector <4 x double> %i.ao, <4 x double> %i.ap, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.ar = fptrunc reassoc nsz arcp contract afn <4 x double> %i.aq to <4 x float> ; 4 uses
  %i.as = extractelement <4 x float> %i.ar, i64 0
  %i.at = extractelement <4 x float> %i.ar, i64 1
  %i.au = extractelement <4 x float> %i.ar, i64 2
  %i.av = extractelement <4 x float> %i.ar, i64 3
  call void @dt_gui_draw_rounded_rectangle(ptr noundef %0, float noundef %i.as, float noundef %i.at, float noundef %i.au, float noundef %i.av) #25
  %i.aw = load i32, ptr %i.x, align 4, !tbaa !245
  %i.ax = sitofp reassoc nsz arcp contract afn i32 %i.aw to float
  %i.ay = fmul reassoc nnan nsz arcp contract afn float %i.ax, 5.000000e-01
  %i.az = fsub reassoc nsz arcp contract afn float %1, %i.ay
  %i.ba = fpext reassoc nsz arcp contract afn float %i.az to double
  %i.bb = fpext reassoc nsz arcp contract afn float %2 to double
  %i.bc = load i32, ptr %i.ab, align 4, !tbaa !249
  %i.bd = sitofp reassoc nsz arcp contract afn i32 %i.bc to double
  %i.be = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !180
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 1432
  %i.bg = load double, ptr %i.bf, align 8, !tbaa !219
  %.neg = fmul reassoc nnan nsz arcp contract afn double %i.bd, -7.500000e-01
  %.neg26 = fmul reassoc nsz arcp contract afn double %i.bg, -4.000000e+00
  %.neg27 = fadd reassoc nsz arcp contract afn double %.neg, %i.bb
  %i.bh = fadd reassoc nsz arcp contract afn double %.neg27, %.neg26
  call void @cairo_move_to(ptr noundef %0, double noundef %i.ba, double noundef %i.bh) #25
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @cairo_set_source_rgba(ptr noundef %0, double noundef 1.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 9.000000e-01) #25
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @cairo_set_source_rgba(ptr noundef %0, double noundef 2.000000e-01, double noundef 2.000000e-01, double noundef 2.000000e-01, double noundef 9.000000e-01) #25
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @pango_cairo_show_layout(ptr noundef %0, ptr noundef %i.i) #25
  call void @pango_font_description_free(ptr noundef %i.d) #25
  call void @g_object_unref(ptr noundef %i.i) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  ret void
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @mouse_moved(ptr noundef %0, float noundef %1, float noundef %2, double noundef %3, i32 noundef %4, float noundef %5) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca float, align 4                    ; 6 uses
  %i.b = alloca float, align 4                    ; 6 uses
  %i.c = alloca [2 x float], align 4              ; 6 uses
  %i.d = alloca [4 x float], align 16             ; 4 uses
  %i.e = alloca [2 x float], align 4              ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.g = load ptr, ptr %i.f, align 16, !tbaa !153 ; 84 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !154  ; 73 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 204
  %i.k = load i32, ptr %i.j, align 4, !tbaa !178
  %.not = icmp eq i32 %i.k, 0
  br i1 %.not, label %bb.dv, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 664 ; 7 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !158
  %i.n = call i32 @dt_dev_get_preview_size(ptr noundef %i.m, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #25 ; 0 uses
  %i.o = call fastcc i32 @_iop_clipping_set_max_clip(ptr noundef nonnull %0) ; 0 uses
  %i.p = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !180
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 1432
  %i.r = load double, ptr %i.q, align 8, !tbaa !219
  %i.s = fmul reassoc nsz arcp contract afn double %i.r, 3.000000e+01
  %i.t = fpext reassoc nsz arcp contract afn float %5 to double ; 2 uses
  %i.u = fdiv reassoc nsz arcp contract afn double %i.s, %i.t
  %i.v = fptrunc reassoc nsz arcp contract afn double %i.u to float ; 4 uses
  %i.w = load float, ptr %i.a, align 4, !tbaa !13 ; 5 uses
  %i.x = load float, ptr %i.b, align 4, !tbaa !13 ; 5 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.g, i64 100 ; 9 uses
  %i.z = load float, ptr %i.y, align 4, !tbaa !189 ; 9 uses
  %i.aa = fcmp reassoc nsz arcp contract afn olt float %1, %i.z
  br i1 %i.aa, label %get_grab.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ab = getelementptr inbounds nuw i8, ptr %i.g, i64 108
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !190
  %i.ad = fadd reassoc nsz arcp contract afn float %i.ac, %i.z ; 3 uses
  %i.ae = fcmp reassoc nsz arcp contract afn ogt float %1, %i.ad
  br i1 %i.ae, label %get_grab.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.af = getelementptr inbounds nuw i8, ptr %i.g, i64 104
  %i.ag = load float, ptr %i.af, align 8, !tbaa !193 ; 4 uses
  %i.ah = fcmp reassoc nsz arcp contract afn olt float %2, %i.ag
  br i1 %i.ah, label %get_grab.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ai = getelementptr inbounds nuw i8, ptr %i.g, i64 112
  %i.aj = load float, ptr %i.ai, align 8, !tbaa !194
  %i.ak = fadd reassoc nsz arcp contract afn float %i.aj, %i.ag ; 3 uses
  %i.al = fcmp reassoc nsz arcp contract afn ogt float %2, %i.ak
  br i1 %i.al, label %get_grab.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.am = fcmp reassoc nsz arcp contract afn ult float %1, %i.z
  br i1 %i.am, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.an = fmul reassoc nsz arcp contract afn float %i.w, %1
  %i.ao = fmul reassoc nsz arcp contract afn float %i.z, %i.w
  %i.ap = fadd reassoc nsz arcp contract afn float %i.ao, %i.v
  %i.aq = fcmp reassoc nsz arcp contract afn olt float %i.an, %i.ap
  %spec.select.i = zext i1 %i.aq to i32
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.0.i = phi i32 [ 0, %bb.f ], [ %spec.select.i, %bb.g ] ; 3 uses
  %i.ar = fcmp reassoc nsz arcp contract afn ult float %2, %i.ag
  br i1 %i.ar, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.as = fmul reassoc nsz arcp contract afn float %i.x, %2
  %i.at = fmul reassoc nsz arcp contract afn float %i.ag, %i.x
  %i.au = fadd reassoc nsz arcp contract afn float %i.at, %i.v
  %i.av = fcmp reassoc nsz arcp contract afn olt float %i.as, %i.au
  %i.aw = or disjoint i32 %.0.i, 2
  %spec.select53.i = select i1 %i.av, i32 %i.aw, i32 %.0.i
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.1.i = phi i32 [ %.0.i, %bb.h ], [ %spec.select53.i, %bb.i ] ; 3 uses
  %i.ax = fcmp reassoc nsz arcp contract afn ugt float %1, %i.ad
  br i1 %i.ax, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ay = fmul reassoc nsz arcp contract afn float %i.w, %1
  %i.az = fmul reassoc nsz arcp contract afn float %i.ad, %i.w
  %i.ba = fsub reassoc nsz arcp contract afn float %i.az, %i.v
  %i.bb = fcmp reassoc nsz arcp contract afn ogt float %i.ay, %i.ba
  %i.bc = or i32 %.1.i, 4
  %spec.select54.i = select i1 %i.bb, i32 %i.bc, i32 %.1.i
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.2.i = phi i32 [ %.1.i, %bb.j ], [ %spec.select54.i, %bb.k ] ; 3 uses
  %i.bd = fcmp reassoc nsz arcp contract afn ugt float %2, %i.ak
  br i1 %i.bd, label %get_grab.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.be = fmul reassoc nsz arcp contract afn float %i.x, %2
  %i.bf = fmul reassoc nsz arcp contract afn float %i.ak, %i.x
  %i.bg = fsub reassoc nsz arcp contract afn float %i.bf, %i.v
  %i.bh = fcmp reassoc nsz arcp contract afn ogt float %i.be, %i.bg
  %i.bi = or i32 %.2.i, 8
  %spec.select55.i = select i1 %i.bh, i32 %i.bi, i32 %.2.i
  br label %get_grab.exit

get_grab.exit:                                    ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %bb.l, %bb.m
  %.3.i = phi i32 [ 16, %bb.b ], [ 16, %bb.c ], [ 16, %bb.d ], [ 16, %bb.e ], [ %.2.i, %bb.l ], [ %spec.select55.i, %bb.m ] ; 10 uses
  %i.bj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 88), align 8, !tbaa !224 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 624
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !233
  %.not572 = icmp eq i32 %i.bl, 0
  br i1 %.not572, label %.thread, label %bb.n

bb.n:                                             ; preds = %get_grab.exit
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 628
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !234
  switch i32 %i.bn, label %.thread [
    i32 3, label %bb.o
    i32 1, label %bb.q
  ]

bb.o:                                             ; preds = %bb.n
  %i.bo = getelementptr inbounds nuw i8, ptr %i.g, i64 172
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !196
  %.not573 = icmp eq i32 %i.bp, 1
  br i1 %.not573, label %.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bq = getelementptr inbounds nuw i8, ptr %i.g, i64 188
  store i32 1, ptr %i.bq, align 4, !tbaa !246
  call void @dt_control_change_cursor(ptr noundef nonnull @.str.77) #25
  call void @dt_control_queue_redraw_center() #25
  br label %bb.du

bb.q:                                             ; preds = %bb.n
  %i.br = getelementptr inbounds nuw i8, ptr %i.g, i64 180
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !256
  %i.bt = icmp eq i32 %i.bs, 1
  br i1 %i.bt, label %bb.r, label %bb.bc

bb.r:                                             ; preds = %bb.q
  %i.bu = getelementptr inbounds nuw i8, ptr %i.g, i64 168 ; 2 uses
  %i.bv = load i32, ptr %i.bu, align 8, !tbaa !212
  %i.bw = icmp sgt i32 %i.bv, -1
  br i1 %i.bw, label %bb.s, label %bb.as

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  %i.bx = fmul reassoc nsz arcp contract afn float %i.w, %1
  store float %i.bx, ptr %i.c, align 4, !tbaa !13
  %i.by = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 2 uses
  %i.bz = fmul reassoc nsz arcp contract afn float %i.x, %2
  store float %i.bz, ptr %i.by, align 4, !tbaa !13
  %i.ca = load ptr, ptr %i.l, align 8, !tbaa !158 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 96
  %i.cc = load ptr, ptr %i.cb, align 16, !tbaa !183
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.ce = load i32, ptr %i.cd, align 16, !tbaa !184
  %i.cf = sitofp reassoc nsz arcp contract afn i32 %i.ce to double
  %i.cg = call i32 @dt_dev_distort_backtransform_plus(ptr noundef %i.ca, ptr noundef %i.cc, double noundef %i.cf, i32 noundef 2, ptr noundef nonnull %i.c, i64 noundef 1) #25 ; 0 uses
  %i.ch = load ptr, ptr %i.l, align 8, !tbaa !158 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 96
  %i.cj = load ptr, ptr %i.ci, align 16, !tbaa !183
  %i.ck = call ptr @dt_dev_distort_get_iop_pipe(ptr noundef %i.ch, ptr noundef %i.cj, ptr noundef nonnull %0) #25
  %i.cl = load float, ptr %i.c, align 4, !tbaa !13
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ck, i64 164
  %i.cn = load float, ptr %i.by, align 4, !tbaa !13
  %i.co = load <2 x i32>, ptr %i.cm, align 4, !tbaa !14
  %i.cp = sitofp reassoc nsz arcp contract afn <2 x i32> %i.co to <2 x float> ; 2 uses
  %i.cq = extractelement <2 x float> %i.cp, i64 0
end_hunk_5
begin_hunk_6_@get_f:bb.a
  %.not39 = icmp eq i32 %i.s, 0
  br i1 %.not39, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.t = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.110) #25
  %.not40 = icmp eq i32 %i.t, 0
  br i1 %.not40, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.u = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.111) #25
  %.not41 = icmp eq i32 %i.u, 0
  %. = select i1 %.not41, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 1760), ptr null
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.0 = phi ptr [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 1672), %bb.t ], [ %., %bb.u ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 1584), %bb.s ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 1496), %bb.r ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 1408), %bb.q ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 1320), %bb.p ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 1232), %bb.o ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 1144), %bb.n ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 1056), %bb.m ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 968), %bb.l ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 880), %bb.k ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 792), %bb.j ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 704), %bb.i ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 616), %bb.h ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 528), %bb.g ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 440), %bb.f ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 352), %bb.e ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 264), %bb.d ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 176), %bb.c ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 88), %bb.b ], [ @introspection_linear, %bb.a ]
  ret ptr %.0
}

declare i32 @g_ascii_strcasecmp(ptr noundef, ptr noundef) local_unnamed_addr #6

declare void @dt_iop_image_copy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #6

declare void @dt_control_signal_disconnect(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

declare void @dt_bauhaus_combobox_clear(ptr noundef) local_unnamed_addr #6

declare ptr @dt_bauhaus_combobox_get_text(ptr noundef) local_unnamed_addr #6

declare i32 @g_strcmp0(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.copysign.f32(float, float) #9

declare ptr @dt_alloc_aligned(i64 noundef) local_unnamed_addr #6

declare void @gtk_widget_set_sensitive(ptr noundef, i32 noundef) local_unnamed_addr #6

declare noalias ptr @g_strdup_printf(ptr noundef, ...) local_unnamed_addr #6

declare noalias ptr @g_strdup(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr noundef captures(none), i32 noundef) local_unnamed_addr #22

declare i32 @gtk_accelerator_get_default_mod_mask() local_unnamed_addr #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { float, float } @llvm.sincos.f32(float) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <5 x float> @llvm.masked.load.v5f32.p0(ptr captures(none), <5 x i1>, <5 x float>) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.fabs.v8f32(<8 x float>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.maxnum.v2f32(<2 x float>, <2 x float>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.minnum.v2f32(<2 x float>, <2 x float>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fabs.v2f32(<2 x float>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.copysign.v2f32(<2 x float>, <2 x float>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v2f32(float, <2 x float>) #9

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #1 = { mustprogress nofree nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #4 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #5 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #6 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #11 = { mustprogress nofree nounwind willreturn memory(write, inaccessiblemem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #12 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #13 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #14 = { mustprogress nofree nounwind willreturn memory(argmem: write, inaccessiblemem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #16 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nofree nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #18 = { allocsize(0) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #19 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #20 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #21 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #22 = { mustprogress nocallback nofree nounwind willreturn "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #24 = { nounwind allocsize(0) }
attributes #25 = { nounwind }
attributes #26 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!11}

!0 = distinct !{null}
!1 = !{i32 7, !"Dwarf Version", i32 5}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!"__libc_errno", !9, i64 0}
!11 = !{!10, !9, i64 0}
!12 = !{!"float", !8, i64 0}
!13 = !{!12, !12, i64 0}
!14 = !{!9, !9, i64 0}
!15 = !{!"any pointer", !8, i64 0}
!16 = !{!15, !15, i64 0}
!17 = !{!"p1 _ZTS15dt_iop_module_t", !15, i64 0}
!18 = !{!"p1 _ZTS18dt_dev_pixelpipe_t", !15, i64 0}
!19 = !{!"p1 _ZTS18dt_histogram_roi_t", !15, i64 0}
!20 = !{!"dt_dev_histogram_collection_params_t", !19, i64 0, !9, i64 8}
!21 = !{!"p1 int", !15, i64 0}
!22 = !{!"long", !8, i64 0}
!23 = !{!"dt_dev_histogram_stats_t", !9, i64 0, !22, i64 8, !9, i64 16, !9, i64 20}
!24 = !{!"dt_iop_roi_t", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !12, i64 16}
!25 = !{!"short", !8, i64 0}
!26 = !{!"", !25, i64 0, !25, i64 2}
!27 = !{!"", !9, i64 0, !8, i64 16}
!28 = !{!"dt_iop_buffer_dsc_t", !9, i64 0, !9, i64 4, !9, i64 8, !8, i64 12, !26, i64 48, !27, i64 64, !8, i64 96, !9, i64 112}
!29 = !{!"p1 _ZTS11_GHashTable", !15, i64 0}
!30 = !{!"p1 float", !15, i64 0}
!31 = !{!"dt_dev_distorted_mask_cache_t", !30, i64 0, !24, i64 8, !22, i64 32, !22, i64 40}
!32 = !{!"dt_dev_pixelpipe_iop_t", !17, i64 0, !18, i64 8, !15, i64 16, !15, i64 24, !9, i64 32, !9, i64 36, !20, i64 40, !21, i64 56, !23, i64 64, !8, i64 88, !12, i64 104, !9, i64 108, !9, i64 112, !22, i64 120, !9, i64 128, !9, i64 132, !24, i64 136, !24, i64 156, !24, i64 176, !24, i64 196, !9, i64 216, !9, i64 220, !28, i64 224, !28, i64 352, !8, i64 480, !9, i64 516, !29, i64 520, !31, i64 528, !31, i64 576}
!33 = !{!32, !18, i64 8}
!34 = !{!"any p2 pointer", !15, i64 0}
!35 = !{!"p1 long", !15, i64 0}
!36 = !{!"p1 _ZTS19dt_iop_buffer_dsc_t", !15, i64 0}
!37 = !{!"dt_dev_pixelpipe_cache_t", !9, i64 0, !22, i64 8, !22, i64 16, !34, i64 24, !35, i64 32, !36, i64 40, !35, i64 48, !21, i64 56, !21, i64 64, !22, i64 72, !9, i64 80, !22, i64 88, !22, i64 96, !9, i64 104, !9, i64 108, !9, i64 112}
!38 = !{!"p1 _ZTS30dt_iop_order_iccprofile_info_t", !15, i64 0}
!39 = !{!"p1 _ZTS6_GList", !15, i64 0}
!40 = !{!"p1 omnipotent char", !15, i64 0}
!41 = !{!"dt_pthread_mutex_t", !8, i64 0}
!42 = !{!"dt_dev_detail_mask_t", !24, i64 0, !22, i64 24, !30, i64 32}
!43 = !{!"dt_image_raw_parameters_t", !9, i64 0, !9, i64 3}
!44 = !{!"double", !8, i64 0}
!45 = !{!"dt_image_geoloc_t", !44, i64 0, !44, i64 8, !44, i64 16}
!46 = !{!"_color_harmony_t", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !8, i64 16}
!47 = !{!"p1 _ZTS16dt_cache_entry_t", !15, i64 0}
!48 = !{!"dt_image_t", !9, i64 0, !9, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !12, i64 24, !12, i64 28, !12, i64 32, !12, i64 36, !9, i64 40, !8, i64 44, !8, i64 108, !8, i64 172, !8, i64 300, !8, i64 364, !8, i64 428, !8, i64 492, !22, i64 560, !9, i64 568, !8, i64 572, !8, i64 800, !8, i64 864, !8, i64 928, !8, i64 992, !9, i64 1120, !8, i64 1124, !9, i64 1380, !9, i64 1384, !9, i64 1388, !9, i64 1392, !9, i64 1396, !9, i64 1400, !9, i64 1404, !9, i64 1408, !9, i64 1412, !9, i64 1416, !12, i64 1420, !9, i64 1424, !9, i64 1428, !9, i64 1432, !9, i64 1436, !9, i64 1440, !9, i64 1444, !22, i64 1448, !22, i64 1456, !22, i64 1464, !22, i64 1472, !9, i64 1480, !28, i64 1488, !8, i64 1616, !40, i64 1656, !9, i64 1664, !9, i64 1668, !43, i64 1672, !45, i64 1680, !46, i64 1704, !25, i64 1736, !8, i64 1738, !9, i64 1748, !9, i64 1752, !12, i64 1756, !12, i64 1760, !8, i64 1776, !8, i64 1792, !8, i64 1840, !39, i64 1856, !47, i64 1864, !9, i64 1872, !9, i64 1876}
!49 = !{!"dt_dev_pixelpipe_t", !37, i64 0, !9, i64 120, !22, i64 128, !30, i64 136, !9, i64 144, !9, i64 148, !12, i64 152, !9, i64 156, !9, i64 160, !28, i64 176, !38, i64 304, !38, i64 312, !38, i64 320, !38, i64 328, !39, i64 336, !9, i64 344, !9, i64 348, !9, i64 352, !9, i64 356, !40, i64 360, !22, i64 368, !9, i64 376, !9, i64 380, !12, i64 384, !8, i64 388, !22, i64 416, !41, i64 424, !41, i64 464, !41, i64 504, !9, i64 544, !9, i64 548, !9, i64 552, !42, i64 560, !9, i64 600, !9, i64 604, !9, i64 608, !8, i64 612, !9, i64 616, !9, i64 620, !9, i64 624, !9, i64 628, !9, i64 632, !9, i64 636, !9, i64 640, !9, i64 644, !9, i64 648, !9, i64 652, !48, i64 656, !9, i64 2544, !40, i64 2552, !9, i64 2560, !39, i64 2568, !39, i64 2576, !39, i64 2584, !9, i64 2592, !30, i64 2600, !22, i64 2608, !8, i64 2616, !8, i64 2632}
!50 = !{!49, !9, i64 644}
!51 = !{!"p1 _ZTS8_GModule", !15, i64 0}
!52 = !{!"p1 _ZTS12dt_develop_t", !15, i64 0}
!53 = !{!"p1 _ZTS25dt_develop_blend_params_t", !15, i64 0}
!54 = !{!"", !29, i64 0, !29, i64 8}
!55 = !{!"", !17, i64 0, !9, i64 8}
!56 = !{!"", !54, i64 0, !55, i64 16}
!57 = !{!"p1 _ZTS10_GtkWidget", !15, i64 0}
!58 = !{!"p1 _ZTS7_GSList", !15, i64 0}
!59 = !{!"p1 _ZTS18dt_iop_module_so_t", !15, i64 0}
!60 = !{!"dt_iop_module_t", !9, i64 0, !15, i64 8, !15, i64 16, !15, i64 24, !15, i64 32, !15, i64 40, !15, i64 48, !15, i64 56, !15, i64 64, !15, i64 72, !15, i64 80, !15, i64 88, !15, i64 96, !15, i64 104, !15, i64 112, !15, i64 120, !15, i64 128, !15, i64 136, !15, i64 144, !15, i64 152, !15, i64 160, !15, i64 168, !15, i64 176, !15, i64 184, !15, i64 192, !15, i64 200, !15, i64 208, !15, i64 216, !15, i64 224, !15, i64 232, !15, i64 240, !15, i64 248, !15, i64 256, !15, i64 264, !15, i64 272, !15, i64 280, !15, i64 288, !15, i64 296, !15, i64 304, !15, i64 312, !15, i64 320, !15, i64 328, !15, i64 336, !15, i64 344, !15, i64 352, !15, i64 360, !15, i64 368, !15, i64 376, !15, i64 384, !15, i64 392, !15, i64 400, !15, i64 408, !15, i64 416, !15, i64 424, !15, i64 432, !15, i64 440, !51, i64 448, !8, i64 456, !9, i64 476, !9, i64 480, !9, i64 484, !9, i64 488, !9, i64 492, !9, i64 496, !9, i64 500, !9, i64 504, !8, i64 512, !8, i64 528, !8, i64 544, !8, i64 560, !8, i64 576, !8, i64 592, !21, i64 608, !23, i64 616, !8, i64 640, !9, i64 656, !9, i64 660, !52, i64 664, !9, i64 672, !9, i64 676, !15, i64 680, !15, i64 688, !9, i64 696, !15, i64 704, !41, i64 712, !15, i64 752, !15, i64 760, !53, i64 768, !53, i64 776, !15, i64 784, !56, i64 792, !57, i64 824, !57, i64 832, !57, i64 840, !57, i64 848, !57, i64 856, !57, i64 864, !57, i64 872, !9, i64 880, !57, i64 888, !57, i64 896, !57, i64 904, !58, i64 912, !58, i64 920, !57, i64 928, !57, i64 936, !9, i64 944, !59, i64 952, !9, i64 960, !8, i64 964, !9, i64 1092, !57, i64 1096, !15, i64 1104, !9, i64 1112}
!61 = !{!60, !15, i64 336}
!62 = !{!32, !15, i64 16}
!63 = !{!"dt_iop_clipping_data_t", !12, i64 0, !12, i64 4, !8, i64 8, !8, i64 24, !12, i64 40, !12, i64 44, !12, i64 48, !12, i64 52, !12, i64 56, !12, i64 60, !12, i64 64, !12, i64 68, !12, i64 72, !12, i64 76, !12, i64 80, !12, i64 84, !9, i64 88, !9, i64 92, !9, i64 96, !8, i64 100, !12, i64 116, !12, i64 120, !12, i64 124, !12, i64 128, !12, i64 132, !12, i64 136, !12, i64 140, !12, i64 144, !12, i64 148, !12, i64 152, !12, i64 156, !12, i64 160, !12, i64 164, !12, i64 168, !9, i64 172, !9, i64 176, !12, i64 180, !12, i64 184}
!64 = !{!63, !12, i64 124}
!65 = !{!63, !12, i64 132}
!66 = !{!63, !9, i64 172}
!67 = !{!63, !12, i64 56}
!68 = !{!63, !12, i64 60}
!69 = !{!63, !12, i64 44}
!70 = !{!63, !12, i64 52}
!71 = !{!63, !9, i64 96}
!72 = !{!63, !12, i64 80}
!73 = !{!63, !12, i64 180}
!74 = !{!63, !12, i64 84}
!75 = !{!63, !12, i64 184}
!76 = !{!"llvm.loop.isvectorized", i32 1}
!77 = !{!"llvm.loop.unroll.runtime.disable"}
!78 = !{!24, !9, i64 8}
!79 = !{!24, !9, i64 12}
!80 = !{!63, !12, i64 116}
!81 = !{!63, !12, i64 120}
!82 = !{!63, !9, i64 92}
!83 = !{!63, !12, i64 0}
!84 = !{!63, !9, i64 88}
!85 = !{!24, !12, i64 16}
!86 = !{!"llvm.loop.unswitch.partial.disable"}
!87 = !{i64 0, i64 4, !14, i64 4, i64 4, !14, i64 8, i64 4, !14, i64 12, i64 4, !14, i64 16, i64 4, !13}
!88 = !{!63, !9, i64 176}
!89 = !{!63, !12, i64 40}
!90 = !{!63, !12, i64 48}
!91 = !{!63, !12, i64 164}
!92 = !{!63, !12, i64 168}
!93 = !{!24, !9, i64 0}
!94 = !{!24, !9, i64 4}
!95 = !{!"dt_codepath_t", !9, i64 0}
!96 = !{!"p1 _ZTS11_JsonParser", !15, i64 0}
!97 = !{!"p1 _ZTS9dt_conf_t", !15, i64 0}
!98 = !{!"p1 _ZTS8dt_lib_t", !15, i64 0}
!99 = !{!"p1 _ZTS17dt_view_manager_t", !15, i64 0}
!100 = !{!"p1 _ZTS12dt_control_t", !15, i64 0}
!101 = !{!"p1 _ZTS19dt_control_signal_t", !15, i64 0}
!102 = !{!"p1 _ZTS12dt_gui_gtk_t", !15, i64 0}
!103 = !{!"p1 _ZTS17dt_mipmap_cache_t", !15, i64 0}
!104 = !{!"p1 _ZTS16dt_image_cache_t", !15, i64 0}
!105 = !{!"p1 _ZTS12dt_bauhaus_t", !15, i64 0}
!106 = !{!"p1 _ZTS13dt_database_t", !15, i64 0}
!107 = !{!"p1 _ZTS14dt_pwstorage_t", !15, i64 0}
!108 = !{!"p1 _ZTS11dt_camctl_t", !15, i64 0}
!109 = !{!"p1 _ZTS15dt_collection_t", !15, i64 0}
!110 = !{!"p1 _ZTS14dt_selection_t", !15, i64 0}
!111 = !{!"p1 _ZTS11dt_points_t", !15, i64 0}
!112 = !{!"p1 _ZTS12dt_imageio_t", !15, i64 0}
!113 = !{!"p1 _ZTS11dt_opencl_t", !15, i64 0}
!114 = !{!"p1 _ZTS9dt_dbus_t", !15, i64 0}
!115 = !{!"p1 _ZTS9dt_undo_t", !15, i64 0}
!116 = !{!"p1 _ZTS16dt_colorspaces_t", !15, i64 0}
!117 = !{!"p1 _ZTS9dt_l10n_t", !15, i64 0}
!118 = !{!"p1 _ZTS9lua_State", !15, i64 0}
!119 = !{!"_Bool", !8, i64 0}
!120 = !{!"p1 _ZTS10_GMainLoop", !15, i64 0}
!121 = !{!"p1 _ZTS13_GMainContext", !15, i64 0}
!122 = !{!"p1 _ZTS12_GThreadPool", !15, i64 0}
!123 = !{!"p1 _ZTS12_GAsyncQueue", !15, i64 0}
!124 = !{!"", !118, i64 0, !41, i64 8, !8, i64 48, !119, i64 96, !119, i64 97, !120, i64 104, !121, i64 112, !122, i64 120, !123, i64 128, !123, i64 136, !123, i64 144}
!125 = !{!"p1 _ZTS10_GTimeZone", !15, i64 0}
!126 = !{!"p1 _ZTS10_GDateTime", !15, i64 0}
!127 = !{!"dt_sys_resources_t", !22, i64 0, !22, i64 8, !21, i64 16, !21, i64 24, !9, i64 32}
!128 = !{!"dt_backthumb_t", !44, i64 0, !44, i64 8, !9, i64 16, !9, i64 20}
!129 = !{!"dt_gimp_t", !9, i64 0, !40, i64 8, !40, i64 16, !9, i64 24, !9, i64 28}
!130 = !{!"dt_splash_t", !57, i64 0, !57, i64 8, !57, i64 16, !57, i64 24, !9, i64 32}
!131 = !{!"darktable_t", !95, i64 0, !9, i64 4, !9, i64 8, !39, i64 16, !39, i64 24, !39, i64 32, !39, i64 40, !96, i64 48, !97, i64 56, !52, i64 64, !98, i64 72, !99, i64 80, !100, i64 88, !101, i64 96, !102, i64 104, !103, i64 112, !104, i64 120, !105, i64 128, !106, i64 136, !107, i64 144, !108, i64 152, !109, i64 160, !110, i64 168, !111, i64 176, !112, i64 184, !113, i64 192, !114, i64 200, !115, i64 208, !116, i64 216, !117, i64 224, !8, i64 232, !41, i64 2792, !41, i64 2832, !41, i64 2872, !41, i64 2912, !41, i64 2952, !41, i64 2992, !40, i64 3032, !40, i64 3040, !40, i64 3048, !40, i64 3056, !40, i64 3064, !40, i64 3072, !40, i64 3080, !40, i64 3088, !40, i64 3096, !40, i64 3104, !40, i64 3112, !40, i64 3120, !40, i64 3128, !124, i64 3136, !39, i64 3288, !44, i64 3296, !39, i64 3304, !9, i64 3312, !8, i64 3316, !9, i64 3512, !9, i64 3516, !125, i64 3520, !126, i64 3528, !127, i64 3536, !128, i64 3576, !129, i64 3600, !130, i64 3632, !9, i64 3672}
!132 = !{!131, !9, i64 8}
!133 = !{!60, !15, i64 40}
!134 = !{!"p1 _ZTS11dt_action_t", !15, i64 0}
!135 = !{!"dt_action_t", !9, i64 0, !40, i64 8, !40, i64 16, !15, i64 24, !134, i64 32, !134, i64 40}
!136 = !{!"dt_iop_module_so_t", !135, i64 0, !15, i64 48, !15, i64 56, !15, i64 64, !15, i64 72, !15, i64 80, !15, i64 88, !15, i64 96, !15, i64 104, !15, i64 112, !15, i64 120, !15, i64 128, !15, i64 136, !15, i64 144, !15, i64 152, !15, i64 160, !15, i64 168, !15, i64 176, !15, i64 184, !15, i64 192, !15, i64 200, !15, i64 208, !15, i64 216, !15, i64 224, !15, i64 232, !15, i64 240, !15, i64 248, !15, i64 256, !15, i64 264, !15, i64 272, !15, i64 280, !15, i64 288, !15, i64 296, !15, i64 304, !15, i64 312, !15, i64 320, !15, i64 328, !15, i64 336, !15, i64 344, !15, i64 352, !15, i64 360, !15, i64 368, !15, i64 376, !15, i64 384, !15, i64 392, !15, i64 400, !15, i64 408, !15, i64 416, !15, i64 424, !15, i64 432, !15, i64 440, !15, i64 448, !15, i64 456, !15, i64 464, !15, i64 472, !15, i64 480, !51, i64 488, !8, i64 496, !15, i64 520, !9, i64 528, !15, i64 536, !9, i64 544, !9, i64 548}
!137 = !{!136, !15, i64 520}
!138 = !{!"dt_iop_clipping_params_t", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !12, i64 24, !12, i64 28, !12, i64 32, !12, i64 36, !12, i64 40, !12, i64 44, !12, i64 48, !12, i64 52, !12, i64 56, !9, i64 60, !9, i64 64, !9, i64 68, !9, i64 72, !9, i64 76, !9, i64 80}
!139 = !{!138, !12, i64 0}
!140 = !{!138, !12, i64 16}
!141 = !{!138, !12, i64 12}
!142 = !{!138, !9, i64 60}
!143 = !{!138, !12, i64 20}
!144 = !{!138, !12, i64 24}
!145 = !{!138, !9, i64 68}
!146 = !{!138, !12, i64 36}
!147 = !{!138, !12, i64 44}
!148 = !{!138, !12, i64 52}
!149 = !{!138, !12, i64 40}
!150 = !{!138, !12, i64 48}
!151 = !{!138, !12, i64 56}
!152 = !{!138, !12, i64 8}
!153 = !{!60, !15, i64 704}
!154 = !{!60, !15, i64 680}
!155 = !{!60, !9, i64 672}
!156 = !{!131, !9, i64 3312}
!157 = !{!131, !101, i64 96}
!158 = !{!60, !52, i64 664}
!159 = !{!"p1 _ZTS15dt_masks_form_t", !15, i64 0}
!160 = !{!"p1 _ZTS19dt_masks_form_gui_t", !15, i64 0}
!161 = !{!"dt_dev_proxy_exposure_t", !17, i64 0, !15, i64 8, !15, i64 16, !15, i64 24, !15, i64 32}
!162 = !{!"p1 _ZTS15dt_lib_module_t", !15, i64 0}
!163 = !{!"", !162, i64 0, !15, i64 8, !15, i64 16, !15, i64 24, !15, i64 32, !15, i64 40, !15, i64 48, !15, i64 56, !15, i64 64}
!164 = !{!"", !162, i64 0, !15, i64 8, !15, i64 16, !15, i64 24, !15, i64 32}
!165 = !{!"", !161, i64 0, !17, i64 40, !163, i64 48, !164, i64 120}
!166 = !{!"dt_dev_chroma_t", !17, i64 0, !17, i64 8, !8, i64 16, !8, i64 32, !8, i64 64, !9, i64 96}
!167 = !{!"", !17, i64 0, !17, i64 8, !15, i64 16}
!168 = !{!"", !57, i64 0, !57, i64 8, !9, i64 16, !9, i64 20, !12, i64 24, !12, i64 28, !9, i64 32}
!169 = !{!"", !57, i64 0, !57, i64 8, !9, i64 16, !9, i64 20, !9, i64 24, !12, i64 28}
!170 = !{!"", !57, i64 0, !57, i64 8}
!171 = !{!"", !57, i64 0, !9, i64 8}
!172 = !{!"", !57, i64 0, !57, i64 8, !57, i64 16, !57, i64 24, !57, i64 32}
!173 = !{!"dt_dev_viewport_t", !57, i64 0, !9, i64 8, !9, i64 12, !9, i64 16, !9, i64 20, !9, i64 24, !44, i64 32, !44, i64 40, !44, i64 48, !9, i64 56, !9, i64 60, !9, i64 64, !12, i64 68, !12, i64 72, !12, i64 76, !18, i64 80, !57, i64 88, !52, i64 96}
!174 = !{!"dt_develop_t", !9, i64 0, !9, i64 4, !9, i64 8, !15, i64 16, !44, i64 24, !44, i64 32, !9, i64 40, !9, i64 44, !9, i64 48, !9, i64 52, !9, i64 56, !44, i64 64, !9, i64 72, !9, i64 76, !9, i64 80, !17, i64 88, !18, i64 96, !48, i64 112, !9, i64 2000, !9, i64 2004, !41, i64 2008, !9, i64 2048, !39, i64 2056, !9, i64 2064, !17, i64 2072, !9, i64 2080, !39, i64 2088, !39, i64 2096, !9, i64 2104, !39, i64 2112, !39, i64 2120, !21, i64 2128, !21, i64 2136, !9, i64 2144, !9, i64 2148, !39, i64 2152, !159, i64 2160, !160, i64 2168, !39, i64 2176, !9, i64 2184, !9, i64 2188, !9, i64 2192, !12, i64 2196, !12, i64 2200, !17, i64 2208, !9, i64 2216, !165, i64 2224, !166, i64 2384, !167, i64 2496, !168, i64 2520, !169, i64 2560, !170, i64 2592, !171, i64 2608, !172, i64 2624, !57, i64 2664, !57, i64 2672, !173, i64 2680, !173, i64 2784, !9, i64 2888, !9, i64 2892, !9, i64 2896, !9, i64 2900, !39, i64 2904, !9, i64 2912, !52, i64 2920}
!175 = !{!"p1 _ZTS12_GtkNotebook", !15, i64 0}
!176 = !{!"dt_iop_clipping_gui_data_t", !175, i64 0, !57, i64 8, !57, i64 16, !57, i64 24, !57, i64 32, !57, i64 40, !57, i64 48, !39, i64 56, !57, i64 64, !57, i64 72, !57, i64 80, !12, i64 88, !12, i64 92, !12, i64 96, !12, i64 100, !12, i64 104, !12, i64 108, !12, i64 112, !12, i64 116, !12, i64 120, !12, i64 124, !12, i64 128, !12, i64 132, !12, i64 136, !12, i64 140, !12, i64 144, !12, i64 148, !12, i64 152, !22, i64 160, !9, i64 168, !9, i64 172, !9, i64 176, !9, i64 180, !9, i64 184, !9, i64 188, !9, i64 192, !9, i64 196, !9, i64 200, !9, i64 204}
!177 = !{!176, !22, i64 160}
!178 = !{!176, !9, i64 204}
!179 = !{!176, !57, i64 72}
!180 = !{!131, !102, i64 104}
!181 = !{!176, !9, i64 184}
!182 = !{!138, !12, i64 4}
!183 = !{!174, !18, i64 96}
!184 = !{!60, !9, i64 480}
!185 = !{!176, !9, i64 192}
!186 = !{!131, !52, i64 64}
!187 = !{!176, !57, i64 16}
!188 = !{!176, !57, i64 32}
!189 = !{!176, !12, i64 100}
!190 = !{!176, !12, i64 108}
!191 = !{!176, !57, i64 24}
!192 = !{!176, !57, i64 40}
!193 = !{!176, !12, i64 104}
!194 = !{!176, !12, i64 112}
!195 = !{!176, !57, i64 80}
!196 = !{!176, !9, i64 172}
!197 = !{!176, !57, i64 48}
!198 = !{!138, !9, i64 80}
!199 = !{!138, !9, i64 76}
!200 = !{!176, !57, i64 64}
!201 = !{!39, !39, i64 0}
!202 = !{!"_GList", !15, i64 0, !39, i64 8, !39, i64 16}
!203 = !{!202, !15, i64 0}
!204 = !{!"dt_iop_clipping_aspect_t", !40, i64 0, !9, i64 8, !9, i64 12}
!205 = !{!204, !9, i64 8}
!206 = !{!204, !9, i64 12}
!207 = !{!8, !8, i64 0}
!208 = !{!204, !40, i64 0}
!209 = !{!176, !39, i64 56}
!210 = !{!176, !9, i64 196}
!211 = !{!176, !9, i64 200}
!212 = !{!176, !9, i64 168}
!213 = !{!176, !57, i64 8}
!214 = !{!"p1 _ZTS7dt_ui_t", !15, i64 0}
!215 = !{!"dt_gui_widgets_t", !57, i64 0, !57, i64 8, !57, i64 16, !57, i64 24, !9, i64 32, !9, i64 36, !9, i64 40}
!216 = !{!"dt_gui_scrollbars_t", !57, i64 0, !57, i64 8, !9, i64 16}
!217 = !{!"p1 _ZTS14_cairo_surface", !15, i64 0}
!218 = !{!"dt_gui_gtk_t", !214, i64 0, !215, i64 8, !216, i64 56, !217, i64 80, !9, i64 88, !40, i64 96, !8, i64 104, !8, i64 112, !9, i64 1360, !9, i64 1364, !9, i64 1368, !9, i64 1372, !9, i64 1376, !9, i64 1380, !44, i64 1384, !44, i64 1392, !44, i64 1400, !44, i64 1408, !57, i64 1416, !44, i64 1424, !44, i64 1432, !44, i64 1440, !44, i64 1448, !9, i64 1456, !9, i64 1460, !8, i64 1464, !9, i64 5560, !9, i64 5564, !9, i64 5568}
!219 = !{!218, !44, i64 1432}
!220 = !{!218, !44, i64 1408}
!221 = !{!218, !44, i64 1384}
!222 = !{!218, !44, i64 1400}
!223 = !{!218, !44, i64 1392}
!224 = !{!131, !100, i64 88}
!225 = !{!"p1 _ZTS10_GSequence", !15, i64 0}
!226 = !{!"p1 _ZTS10_GPtrArray", !15, i64 0}
!227 = !{!"p2 _ZTS9_dt_job_t", !34, i64 0}
!228 = !{!"", !162, i64 0, !15, i64 8, !15, i64 16, !15, i64 24, !15, i64 32, !15, i64 40}
!229 = !{!"", !39, i64 0, !22, i64 8, !22, i64 16, !44, i64 24, !41, i64 32, !228, i64 72}
!230 = !{!"", !162, i64 0, !15, i64 8}
!231 = !{!"", !230, i64 0}
!232 = !{!"dt_control_t", !9, i64 0, !134, i64 8, !135, i64 16, !135, i64 64, !135, i64 112, !135, i64 160, !135, i64 208, !135, i64 256, !135, i64 304, !135, i64 352, !135, i64 400, !135, i64 448, !135, i64 496, !134, i64 544, !225, i64 552, !9, i64 560, !57, i64 568, !9, i64 576, !9, i64 580, !226, i64 584, !58, i64 592, !44, i64 600, !9, i64 608, !9, i64 612, !22, i64 616, !9, i64 624, !9, i64 628, !9, i64 632, !44, i64 640, !44, i64 648, !9, i64 656, !9, i64 660, !9, i64 664, !9, i64 668, !9, i64 672, !41, i64 680, !9, i64 720, !9, i64 724, !8, i64 728, !9, i64 2728, !9, i64 2732, !9, i64 2736, !8, i64 2740, !9, i64 3340, !39, i64 3344, !41, i64 3352, !41, i64 3392, !41, i64 3432, !8, i64 3472, !8, i64 3476, !8, i64 3480, !9, i64 3484, !9, i64 3488, !41, i64 3496, !41, i64 3536, !8, i64 3576, !9, i64 3624, !35, i64 3632, !22, i64 3640, !22, i64 3648, !227, i64 3656, !8, i64 3664, !8, i64 3704, !41, i64 3744, !8, i64 3784, !8, i64 3808, !8, i64 3816, !229, i64 3840, !231, i64 3960}
!233 = !{!232, !9, i64 624}
!234 = !{!232, !9, i64 628}
!235 = !{!131, !105, i64 128}
!236 = !{!"p1 _ZTS16_DtBauhausWidget", !15, i64 0}
!237 = !{!"_GtkBorder", !25, i64 0, !25, i64 2, !25, i64 4, !25, i64 6}
!238 = !{!"_cairo_rectangle_int", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12}
!239 = !{!"dt_bauhaus_popup_t", !57, i64 0, !57, i64 8, !237, i64 16, !238, i64 24, !9, i64 40, !9, i64 44, !12, i64 48}
!240 = !{!"p1 _ZTS21_PangoFontDescription", !15, i64 0}
!241 = !{!"_GdkRGBA", !44, i64 0, !44, i64 8, !44, i64 16, !44, i64 24}
!242 = !{!"dt_bauhaus_t", !236, i64 0, !239, i64 8, !57, i64 64, !12, i64 72, !12, i64 76, !9, i64 80, !9, i64 84, !12, i64 88, !8, i64 92, !9, i64 272, !9, i64 276, !8, i64 280, !9, i64 288, !29, i64 296, !29, i64 304, !12, i64 312, !12, i64 316, !9, i64 320, !12, i64 324, !12, i64 328, !12, i64 332, !240, i64 336, !9, i64 344, !9, i64 348, !9, i64 352, !241, i64 360, !241, i64 392, !241, i64 424, !241, i64 456, !241, i64 488, !241, i64 520, !241, i64 552, !241, i64 584, !241, i64 616, !241, i64 648, !241, i64 680, !241, i64 712, !241, i64 744, !241, i64 776, !241, i64 808, !8, i64 840, !8, i64 936}
!243 = !{!242, !240, i64 336}
!244 = !{!"_PangoRectangle", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12}
!245 = !{!244, !9, i64 8}
!246 = !{!176, !9, i64 188}
!247 = !{!176, !12, i64 88}
!248 = !{!176, !12, i64 92}
!249 = !{!244, !9, i64 12}
!250 = !{!176, !9, i64 176}
!251 = !{!138, !9, i64 64}
!252 = !{!176, !12, i64 140}
!253 = !{!176, !12, i64 144}
!254 = !{!176, !12, i64 148}
!255 = !{!176, !12, i64 152}
!256 = !{!176, !9, i64 180}
!257 = !{!"old_params_t", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !12, i64 24}
!258 = !{!257, !12, i64 20}
!259 = !{!"dt_iop_clipping_params_v5_t", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !12, i64 24, !12, i64 28, !12, i64 32, !12, i64 36, !12, i64 40, !12, i64 44, !12, i64 48, !12, i64 52, !12, i64 56, !9, i64 60, !9, i64 64, !9, i64 68, !9, i64 72, !9, i64 76, !9, i64 80}
!260 = !{!259, !12, i64 20}
!261 = !{!259, !12, i64 24}
!262 = !{!257, !12, i64 16}
!263 = !{!259, !12, i64 16}
!264 = !{!259, !9, i64 60}
!265 = !{!259, !9, i64 64}
!266 = !{!259, !9, i64 68}
!267 = !{!257, !12, i64 24}
!268 = !{!"old_params_t", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !12, i64 24, !12, i64 28, !12, i64 32, !12, i64 36, !12, i64 40, !12, i64 44, !12, i64 48, !12, i64 52, !12, i64 56, !9, i64 60, !9, i64 64, !9, i64 68, !9, i64 72}
!269 = !{!268, !12, i64 56}
!270 = !{!259, !12, i64 56}
!271 = !{!268, !9, i64 68}
!272 = !{!268, !9, i64 72}
!273 = !{!259, !9, i64 72}
!274 = !{!259, !9, i64 76}
!275 = !{!259, !9, i64 80}
!276 = distinct !{!276, !76, !77}
!277 = distinct !{!277, !76, !77}
!278 = distinct !{!278, !77, !76}
!279 = distinct !{!279, !77, !76}
!280 = distinct !{!280, !76, !77}
!281 = distinct !{!281, !76, !77}
!282 = distinct !{!282, !77, !76}
!283 = distinct !{!283, !77, !76}
!284 = distinct !{!284, !86}
!285 = !{!32, !9, i64 32}
!286 = !{!63, !12, i64 148}
!287 = !{!63, !12, i64 152}
!288 = !{!63, !12, i64 156}
!289 = !{!63, !12, i64 160}
!290 = !{!32, !9, i64 144}
!291 = !{!32, !9, i64 148}
!292 = distinct !{!292, !86}
!293 = !{!32, !9, i64 132}
end_hunk_6
