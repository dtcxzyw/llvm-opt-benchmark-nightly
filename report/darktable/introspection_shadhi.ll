inline.NumInlined: 13
inline.NumDeleted: 7
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@flags:bb.a
bb.a:
  ret i32 19
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @default_group() local_unnamed_addr #0 {
bb.a:
  ret i32 65
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @default_colorspace(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef readnone captures(none) %2) local_unnamed_addr #0 {
bb.a:
  ret i32 1
}

; Function Attrs: nounwind uwtable
define ptr @description(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 5) #19
  %i.b = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef 5) #19
  %i.c = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.3, i32 noundef 5) #19
  %i.d = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef 5) #19
  %i.e = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.5, i32 noundef 5) #19
  %i.f = tail call ptr @dt_iop_set_description(ptr noundef %0, ptr noundef %i.a, ptr noundef %i.b, ptr noundef %i.c, ptr noundef %i.d, ptr noundef %i.e) #19
  ret ptr %i.f
}

declare ptr @dt_iop_set_description(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define range(i32 0, 2) i32 @legacy_params(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef writeonly captures(none) %4, ptr nofree noundef writeonly captures(none) %5) local_unnamed_addr #4 {
bb.a:
  switch i32 %2, label %bb.f [
    i32 1, label %bb.b
    i32 2, label %bb.c
    i32 3, label %bb.d
    i32 4, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noalias dereferenceable_or_null(48) ptr @malloc(i64 noundef 48) #20 ; 7 uses
  %i.b = load i32, ptr %1, align 4, !tbaa !11
  store i32 %i.b, ptr %i.a, align 4, !tbaa !14
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.d = load float, ptr %i.c, align 4, !tbaa !16 ; 2 uses
  %i.e = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.d)
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store float %i.e, ptr %i.f, align 4, !tbaa !17
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.i = load <4 x float>, ptr %i.g, align 4, !tbaa !18
  %i.j = fmul reassoc nsz arcp contract afn <4 x float> %i.i, <float 5.000000e-01, float 1.000000e+00, float -5.000000e-01, float 1.000000e+00>
  store <4 x float> %i.j, ptr %i.h, align 4, !tbaa !18
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  store i32 0, ptr %i.k, align 4, !tbaa !19
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.m = load float, ptr %i.l, align 4, !tbaa !20
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store float %i.m, ptr %i.n, align 4, !tbaa !21
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  store <2 x float> <float 1.000000e+02, float 0.000000e+00>, ptr %i.o, align 4, !tbaa !18
  br label %.sink.split

bb.c:                                             ; preds = %bb.a
  %i.p = tail call noalias dereferenceable_or_null(48) ptr @malloc(i64 noundef 48) #20 ; 7 uses
  %i.q = load i32, ptr %1, align 4, !tbaa !22
  store i32 %i.q, ptr %i.p, align 4, !tbaa !14
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.s = load float, ptr %i.r, align 4, !tbaa !24 ; 2 uses
  %i.t = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.s)
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  store float %i.t, ptr %i.u, align 4, !tbaa !17
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.x = load <4 x float>, ptr %i.v, align 4, !tbaa !18
  store <4 x float> %i.x, ptr %i.w, align 4, !tbaa !18
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.z = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.aa = load <2 x float>, ptr %i.y, align 4, !tbaa !18
  store <2 x float> %i.aa, ptr %i.z, align 4, !tbaa !18
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !25
  %i.ad = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  store float %i.ac, ptr %i.ad, align 4, !tbaa !26
  %i.ae = getelementptr inbounds nuw i8, ptr %i.p, i64 36
  store i32 0, ptr %i.ae, align 4, !tbaa !19
  br label %.sink.split

bb.d:                                             ; preds = %bb.a
  %i.af = tail call noalias dereferenceable_or_null(48) ptr @malloc(i64 noundef 48) #20 ; 7 uses
  %i.ag = load i32, ptr %1, align 4, !tbaa !27
  store i32 %i.ag, ptr %i.af, align 4, !tbaa !14
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !29 ; 2 uses
  %i.aj = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.ai)
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 4
  store float %i.aj, ptr %i.ak, align 4, !tbaa !17
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.an = load <4 x float>, ptr %i.al, align 4, !tbaa !18
  store <4 x float> %i.an, ptr %i.am, align 4, !tbaa !18
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ap = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.aq = load <2 x float>, ptr %i.ao, align 4, !tbaa !18
  store <2 x float> %i.aq, ptr %i.ap, align 4, !tbaa !18
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.as = load float, ptr %i.ar, align 4, !tbaa !30
  %i.at = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  store float %i.as, ptr %i.at, align 4, !tbaa !26
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.av = load i32, ptr %i.au, align 4, !tbaa !31
  %i.aw = getelementptr inbounds nuw i8, ptr %i.af, i64 36
  store i32 %i.av, ptr %i.aw, align 4, !tbaa !19
  br label %.sink.split

bb.e:                                             ; preds = %bb.a
  %i.ax = tail call noalias dereferenceable_or_null(48) ptr @malloc(i64 noundef 48) #20 ; 7 uses
  %i.ay = load i32, ptr %1, align 4, !tbaa !32
  store i32 %i.ay, ptr %i.ax, align 4, !tbaa !14
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ba = load float, ptr %i.az, align 4, !tbaa !34 ; 2 uses
  %i.bb = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.ba)
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ax, i64 4
  store float %i.bb, ptr %i.bc, align 4, !tbaa !17
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.bf = load <4 x float>, ptr %i.bd, align 4, !tbaa !18
  store <4 x float> %i.bf, ptr %i.be, align 4, !tbaa !18
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.bi = load <2 x float>, ptr %i.bg, align 4, !tbaa !18
  store <2 x float> %i.bi, ptr %i.bh, align 4, !tbaa !18
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bk = load float, ptr %i.bj, align 4, !tbaa !35
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ax, i64 32
  store float %i.bk, ptr %i.bl, align 4, !tbaa !26
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !36
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ax, i64 36
  store i32 %i.bn, ptr %i.bo, align 4, !tbaa !19
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bq = load float, ptr %i.bp, align 4, !tbaa !37
  br label %.sink.split

.sink.split:                                      ; preds = %bb.b, %bb.c, %bb.d, %bb.e
  %.sink121 = phi ptr [ %i.ax, %bb.e ], [ %i.af, %bb.d ], [ %i.p, %bb.c ], [ %i.a, %bb.b ] ; 3 uses
  %.sink119 = phi float [ %i.bq, %bb.e ], [ f0x3C23D70A, %bb.d ], [ f0x3C23D70A, %bb.c ], [ f0x3C23D70A, %bb.b ]
  %.sink118 = phi float [ %i.ba, %bb.e ], [ %i.ai, %bb.d ], [ %i.s, %bb.c ], [ %i.d, %bb.b ]
  %i.br = getelementptr inbounds nuw i8, ptr %.sink121, i64 40
  store float %.sink119, ptr %i.br, align 4, !tbaa !38
  %i.bs = fcmp reassoc nsz arcp contract afn olt float %.sink118, 0.000000e+00
  %i.bt = zext i1 %i.bs to i32
  %i.bu = getelementptr inbounds nuw i8, ptr %.sink121, i64 44
  store i32 %i.bt, ptr %i.bu, align 4, !tbaa !39
  store ptr %.sink121, ptr %3, align 8, !tbaa !40
  store i32 48, ptr %4, align 4, !tbaa !42
  store i32 5, ptr %5, align 4, !tbaa !42
  br label %bb.f

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

; Function Attrs: nounwind uwtable
define void @process(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca [4 x float], align 16             ; 6 uses
  %i.b = alloca [4 x float], align 16             ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 132
  %i.d = load i32, ptr %i.c, align 4, !tbaa !43
  %i.e = tail call i32 @dt_iop_have_required_input_format(i32 noundef 4, ptr noundef %0, i32 noundef %i.d, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) #19
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %.critedge231, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load ptr, ptr %i.f, align 16, !tbaa !60  ; 8 uses
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.i = load i32, ptr %i.h, align 4, !tbaa !61   ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.k = load i32, ptr %i.j, align 4, !tbaa !62   ; 3 uses
  %i.l = load i32, ptr %i.g, align 4, !tbaa !63
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.o = load float, ptr %i.n, align 4, !tbaa !65
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.q = load float, ptr %i.p, align 8, !tbaa !66
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.s = load <2 x float>, ptr %i.r, align 4, !tbaa !18
  %i.t = tail call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.s, <2 x float> splat (float -1.000000e+02))
  %i.u = tail call reassoc nnan nsz arcp contract afn <2 x float> @llvm.minnum.v2f32(<2 x float> %i.t, <2 x float> splat (float 1.000000e+02))
  %i.v = fmul reassoc nnan nsz arcp contract afn <2 x float> %i.u, splat (float 2.000000e-02) ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.x = load float, ptr %i.w, align 4, !tbaa !67
  %i.y = fmul reassoc nsz arcp contract afn float %i.x, f0x3C23D70A
  %i.z = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.y
  %i.aa = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.z, float f0x3C23D70A) ; 2 uses
  %i.ab = tail call <7 x float> @llvm.masked.load.v7f32.p0(ptr nonnull align 4 %i.m, <7 x i1> <i1 true, i1 false, i1 false, i1 false, i1 true, i1 true, i1 true>, <7 x float> poison), !tbaa !18
  %i.ac = shufflevector <7 x float> %i.ab, <7 x float> poison, <4 x i32> <i32 0, i32 4, i32 5, i32 6>
  %i.ad = tail call reassoc nsz arcp contract afn <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.ac, <4 x float> <float 1.000000e-01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>) ; 3 uses
  %i.ae = extractelement <4 x float> %i.ad, i64 0
  %i.af = fmul reassoc nsz arcp contract afn float %i.ae, %i.o
  %i.ag = fdiv reassoc nsz arcp contract afn float %i.af, %i.q ; 2 uses
  %i.ah = extractelement <4 x float> %i.ad, i64 1
  %i.ai = tail call reassoc nnan nsz arcp contract afn float @llvm.minnum.f32(float %i.ah, float 9.900000e+01)
  %6 = fmul reassoc nnan nsz arcp contract afn float %i.ai, f0x3C23D70A ; 2 uses
  %i.aj = shufflevector <4 x float> %i.ad, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.ak = tail call reassoc nnan nsz arcp contract afn <2 x float> @llvm.minnum.v2f32(<2 x float> %i.aj, <2 x float> splat (float 1.000000e+02))
  %7 = fmul reassoc nnan nsz arcp contract afn <2 x float> %i.ak, splat (float f0x3C23D70A)
  %i.al = fpext nnan <2 x float> %7 to <2 x double>
  %i.am = fadd reassoc nnan nsz arcp contract afn <2 x double> %i.al, splat (double -5.000000e-01)
  %i.an = insertelement <2 x float> %i.v, float 0.000000e+00, i64 1
  %i.ao = insertelement <2 x float> %i.v, float 0.000000e+00, i64 0
  %i.ap = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.an, %i.ao
  %i.aq = select <2 x i1> %i.ap, <2 x float> splat (float -1.000000e+00), <2 x float> splat (float 1.000000e+00) ; 3 uses
  %i.ar = fpext nnan ninf <2 x float> %i.aq to <2 x double>
  %i.as = fmul reassoc nnan nsz arcp contract afn <2 x double> %i.am, %i.ar
  %i.at = fadd reassoc nnan nsz arcp contract afn <2 x double> %i.as, splat (double 5.000000e-01)
  %i.au = fptrunc <2 x double> %i.at to <2 x float> ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !68 ; 5 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !69 ; 2 uses
  %i.az = icmp eq i32 %i.ay, 1
  %i.ba = and i32 %i.aw, 128
  %.not217 = icmp ne i32 %i.ba, 0
  %or.cond.not = select i1 %i.az, i1 %.not217, i1 false ; 2 uses
  br i1 %or.cond.not, label %.thread, label %bb.c

.thread:                                          ; preds = %bb.b
  %i.bb = getelementptr inbounds nuw i8, ptr %i.g, i64 36
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !70
  br label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.bd = icmp eq i32 %i.ay, 0
  %i.be = and i32 %i.aw, 64
  %i.bf = icmp ne i32 %i.be, 0                    ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.g, i64 36
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !70 ; 2 uses
  br i1 %i.bd, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, ptr noundef nonnull align 16 dereferenceable(16) @__const.process.Labmax, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.b, ptr noundef nonnull align 16 dereferenceable(16) @__const.process.Labmin, i64 16, i1 false)
  br i1 %i.bf, label %.preheader255.preheader, label %.loopexit

.preheader255.preheader:                          ; preds = %bb.d
  store <4 x float> splat (float f0x7F7FFFFF), ptr %i.a, align 16, !tbaa !18
  store <4 x float> splat (float f0xFF7FFFFF), ptr %i.b, align 16, !tbaa !18
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader255.preheader, %bb.d
  %i.bi = call ptr @dt_gaussian_init(i32 noundef %i.i, i32 noundef %i.k, i32 noundef 4, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, float noundef %i.ag, i32 noundef %i.l) #19 ; 3 uses
  %.not219.not = icmp eq ptr %i.bi, null
  br i1 %.not219.not, label %.critedge, label %bb.e

bb.e:                                             ; preds = %.loopexit
  call void @dt_gaussian_blur_4c(ptr noundef nonnull %i.bi, ptr noundef %2, ptr noundef %3) #19
  call void @dt_gaussian_free(ptr noundef nonnull %i.bi) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %bb.h

bb.f:                                             ; preds = %.thread, %bb.c
  %i.bj = phi float [ %i.bc, %.thread ], [ %i.bh, %bb.c ]
  %i.bk = tail call ptr @dt_bilateral_init(i32 noundef %i.i, i32 noundef %i.k, float noundef %i.ag, float noundef 1.000000e+02) #19 ; 5 uses
  %.not218.not = icmp eq ptr %i.bk, null
  br i1 %.not218.not, label %.critedge231, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @dt_bilateral_splat(ptr noundef nonnull %i.bk, ptr noundef %2) #19
  tail call void @dt_bilateral_blur(ptr noundef nonnull %i.bk) #19
  tail call void @dt_bilateral_slice(ptr noundef nonnull %i.bk, ptr noundef %2, ptr noundef %3, float noundef -1.000000e+00) #19
  tail call void @dt_bilateral_free(ptr noundef nonnull %i.bk) #19
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.e
  %i.bl = phi float [ %i.bj, %bb.g ], [ %i.bh, %bb.e ] ; 2 uses
  %i.bm = phi i1 [ %or.cond.not, %bb.g ], [ %i.bf, %bb.e ] ; 2 uses
  %i.bn = sext i32 %i.i to i64
  %i.bo = sext i32 %i.k to i64
  %i.bp = shl nsw i64 %i.bn, 2
  %i.bq = mul i64 %i.bp, %i.bo                    ; 2 uses
  %.not277 = icmp eq i64 %i.bq, 0
  br i1 %.not277, label %.critedge231, label %.lr.ph276

.lr.ph276:                                        ; preds = %bb.h
  %i.br = fmul reassoc nnan nsz arcp contract afn <2 x float> %i.v, %i.v ; 3 uses
  %i.bs = fsub reassoc nsz arcp contract afn float 1.000000e+00, %6 ; 2 uses
  %i.bt = and i32 %i.aw, 8
  %.not225 = icmp eq i32 %i.bt, 0                 ; 3 uses
  %i.bu = and i32 %i.aw, 16
  %.not228 = icmp eq i32 %i.bu, 0
  %i.bv = insertelement <4 x i32> poison, i32 %i.aw, i64 0
  %i.bw = shufflevector <4 x i32> %i.bv, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.bx = and <4 x i32> %i.bw, <i32 4, i32 2, i32 1, i32 32>
  %i.by = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.br, zeroinitializer ; 2 uses
  %i.bz = icmp eq <4 x i32> %i.bx, zeroinitializer ; 4 uses
  %i.ca = extractelement <2 x i1> %i.by, i64 0
  %i.cb = extractelement <2 x i1> %i.by, i64 1
  %i.cc = extractelement <2 x float> %i.br, i64 0
  %i.cd = extractelement <2 x float> %i.br, i64 1
  %i.ce = extractelement <2 x float> %i.aq, i64 0
  %i.cf = extractelement <2 x float> %i.aq, i64 1
  %i.cg = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.aa
  %i.ch = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.aa
  %i.ci = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.bs
  %i.cj = extractelement <4 x i1> %i.bz, i64 3
  %i.ck = insertelement <2 x float> poison, float %i.bl, i64 0
  %i.cl = shufflevector <2 x float> %i.ck, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cm = extractelement <2 x float> %i.au, i64 1
  %i.cn = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.bs
  %i.co = extractelement <4 x i1> %i.bz, i64 0
  %i.cp = extractelement <4 x i1> %i.bz, i64 1
  %i.cq = extractelement <4 x i1> %i.bz, i64 2
  %i.cr = insertelement <2 x float> poison, float %i.bl, i64 0
  %i.cs = shufflevector <2 x float> %i.cr, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ct = extractelement <2 x float> %i.au, i64 0
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph276, %._crit_edge270
  %.0190274 = phi i64 [ 0, %.lr.ph276 ], [ %i.is, %._crit_edge270 ] ; 3 uses
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.0190274 ; 3 uses
  %i.cv = load float, ptr %i.cu, align 4, !tbaa !18
  %i.cw = fmul reassoc nsz arcp contract afn float %i.cv, f0x3C23D70A ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cu, i64 4
  %i.cy = load float, ptr %i.cx, align 4, !tbaa !18
  %i.cz = fmul reassoc nsz arcp contract afn float %i.cy, 7.812500e-03 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %i.db = load float, ptr %i.da, align 4, !tbaa !18
  %i.dc = fmul reassoc nsz arcp contract afn float %i.db, 7.812500e-03 ; 2 uses
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.0190274 ; 3 uses
  %i.de = load float, ptr %i.dd, align 4, !tbaa !18
  %i.df = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  %i.dg = fmul reassoc nsz arcp contract afn float %i.de, f0x3C23D70A
  %i.dh = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.dg ; 3 uses
  %i.di = fcmp reassoc nsz arcp contract afn ogt float %i.cw, 0.000000e+00
  %i.dj = fmul reassoc nsz arcp contract afn float %i.cw, %i.cg
  %i.dk = select reassoc nsz arcp contract afn i1 %i.di, float %i.dj, float %i.cw ; 2 uses
  %i.dl = fcmp reassoc nsz arcp contract afn ogt float %i.dh, 0.000000e+00
  %i.dm = fmul reassoc nsz arcp contract afn float %i.dh, %i.ch
  %i.dn = select reassoc nsz arcp contract afn i1 %i.dl, float %i.dm, float %i.dh ; 4 uses
  %i.do = fmul reassoc nsz arcp contract afn float %i.dn, %i.ci
  %i.dp = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.do ; 3 uses
  %i.dq = fcmp reassoc nsz arcp contract afn ogt float %i.dp, 1.000000e+00
  br i1 %i.dq, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.dr = fcmp reassoc nsz arcp contract afn olt float %i.dp, 0.000000e+00
  br i1 %i.dr, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i
  %i.ds = phi reassoc nsz arcp contract afn float [ 1.000000e+00, %bb.i ], [ %i.dp, %bb.k ], [ 0.000000e+00, %bb.j ]
  br i1 %i.cb, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.l
  %i.dt = fadd reassoc nsz arcp contract afn float %i.dn, -5.000000e-01
  %i.du = fmul reassoc nsz arcp contract afn float %i.dt, %i.cf ; 2 uses
  %i.dv = fneg reassoc nsz arcp contract afn float %i.du
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph, %bb.ae
  %.0191261 = phi float [ %i.cd, %.lr.ph ], [ %i.es, %bb.ae ] ; 3 uses
  %.sroa.22.0260 = phi float [ %i.dc, %.lr.ph ], [ %i.fz, %bb.ae ]
  %.sroa.14244.0259 = phi float [ %i.cz, %.lr.ph ], [ %i.fv, %bb.ae ]
  %.sroa.0238.0258 = phi float [ %i.dk, %.lr.ph ], [ %i.fi, %bb.ae ] ; 4 uses
  br i1 %.not225, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.dw = fcmp reassoc nsz arcp contract afn ogt float %.sroa.0238.0258, 1.000000e+00
  br i1 %i.dw, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dx = fcmp reassoc nsz arcp contract afn olt float %.sroa.0238.0258, 0.000000e+00
  %i.dy = select reassoc nsz arcp contract afn i1 %i.dx, float 0.000000e+00, float %.sroa.0238.0258
  br label %bb.p

bb.p:                                             ; preds = %bb.m, %bb.o, %bb.n
  %i.dz = phi reassoc nsz arcp contract afn float [ 1.000000e+00, %bb.n ], [ %i.dy, %bb.o ], [ %.sroa.0238.0258, %bb.m ] ; 5 uses
  %i.ea = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.dz ; 2 uses
  %i.eb = fcmp reassoc nsz arcp contract afn olt float %i.ea, 0.000000e+00
  %i.ec = select reassoc nsz arcp contract afn i1 %i.eb, float %i.dv, float %i.du
  %i.ed = fadd reassoc nsz arcp contract afn float %i.ec, 5.000000e-01 ; 4 uses
  br i1 %i.bm, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ee = fcmp reassoc nsz arcp contract afn ogt float %i.ed, 1.000000e+00
  br i1 %i.ee, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ef = fcmp reassoc nsz arcp contract afn olt float %i.ed, 0.000000e+00
  %i.eg = select reassoc nsz arcp contract afn i1 %i.ef, float 0.000000e+00, float %i.ed
  br label %bb.s

bb.s:                                             ; preds = %bb.p, %bb.r, %bb.q
  %i.eh = phi reassoc nsz arcp contract afn float [ 1.000000e+00, %bb.q ], [ %i.eg, %bb.r ], [ %i.ed, %bb.p ] ; 2 uses
  %i.ei = insertelement <2 x float> poison, float %i.dz, i64 0
  %i.ej = insertelement <2 x float> %i.ei, float %i.ea, i64 1 ; 2 uses
  %i.ek = call reassoc nsz arcp contract afn <2 x float> @llvm.fabs.v2f32(<2 x float> %i.ej) ; 2 uses
  %i.el = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.ek, %i.cl
  %i.em = select <2 x i1> %i.el, <2 x float> %i.ek, <2 x float> %i.cl
  %i.en = fdiv reassoc nsz arcp contract afn <2 x float> splat (float 1.000000e+00), %i.em
  %i.eo = call reassoc nsz arcp contract afn <2 x float> @llvm.copysign.v2f32(<2 x float> %i.en, <2 x float> %i.ej) ; 2 uses
  %i.ep = fcmp reassoc nsz arcp contract afn ogt float %.0191261, 1.000000e+00
  %i.eq = select reassoc nsz arcp contract afn i1 %i.ep, float 1.000000e+00, float %.0191261
  %i.er = fmul reassoc nsz arcp contract afn float %i.eq, %i.ds ; 3 uses
  %i.es = fadd reassoc nsz arcp contract afn float %.0191261, -1.000000e+00 ; 2 uses
  %i.et = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.er ; 2 uses
  %i.eu = fmul reassoc nsz arcp contract afn float %i.dz, %i.et
  %i.ev = fcmp reassoc nsz arcp contract afn ogt float %i.dz, 5.000000e-01
  %i.ew = fmul reassoc nsz arcp contract afn float %i.dz, 2.000000e+00 ; 2 uses
  br i1 %i.ev, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ex = fsub reassoc nnan nsz arcp contract afn float 2.000000e+00, %i.ew
  %i.ey = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.eh
  %i.ez = fmul reassoc nsz arcp contract afn float %i.ey, %i.ex
  %i.fa = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.ez
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  %i.fb = fmul reassoc nsz arcp contract afn float %i.ew, %i.eh
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.fc = phi reassoc nsz arcp contract afn float [ %i.fa, %bb.t ], [ %i.fb, %bb.u ]
  %i.fd = fmul reassoc nsz arcp contract afn float %i.fc, %i.er
  %i.fe = fadd reassoc nsz arcp contract afn float %i.fd, %i.eu ; 4 uses
  br i1 %.not225, label %bb.w, label %bb.y

bb.w:                                             ; preds = %bb.v
  %i.ff = fcmp reassoc nsz arcp contract afn ogt float %i.fe, 1.000000e+00
  br i1 %i.ff, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.fg = fcmp reassoc nsz arcp contract afn olt float %i.fe, 0.000000e+00
  %i.fh = select reassoc nsz arcp contract afn i1 %i.fg, float 0.000000e+00, float %i.fe
  br label %bb.y

bb.y:                                             ; preds = %bb.v, %bb.x, %bb.w
  %i.fi = phi reassoc nsz arcp contract afn float [ 1.000000e+00, %bb.w ], [ %i.fh, %bb.x ], [ %i.fe, %bb.v ] ; 4 uses
  %i.fj = extractelement <2 x float> %i.eo, i64 0
  %i.fk = fmul reassoc nsz arcp contract afn float %i.fi, %i.fj ; 2 uses
  %i.fl = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.fi
  %i.fm = extractelement <2 x float> %i.eo, i64 1
  %i.fn = fmul reassoc nsz arcp contract afn float %i.fl, %i.fm
  %i.fo = fsub reassoc nsz arcp contract afn float %i.fn, %i.fk
  %i.fp = fmul reassoc nsz arcp contract afn float %i.fo, %i.cm
  %i.fq = fadd reassoc nsz arcp contract afn float %i.fp, %i.fk
  %i.fr = fmul reassoc nsz arcp contract afn float %i.fq, %i.er
  %reass.add251 = fadd reassoc nsz arcp contract afn float %i.fr, %i.et ; 2 uses
  %reass.mul252 = fmul reassoc nsz arcp contract afn float %reass.add251, %.sroa.14244.0259 ; 4 uses
  br i1 %.not228, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %bb.y
  %i.fs = fcmp reassoc nsz arcp contract afn ogt float %reass.mul252, 1.000000e+00
  br i1 %i.fs, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ft = fcmp reassoc nsz arcp contract afn olt float %reass.mul252, -1.000000e+00
  %i.fu = select reassoc nsz arcp contract afn i1 %i.ft, float -1.000000e+00, float %reass.mul252
  br label %bb.ab

bb.ab:                                            ; preds = %bb.y, %bb.aa, %bb.z
  %i.fv = phi reassoc nsz arcp contract afn float [ 1.000000e+00, %bb.z ], [ %i.fu, %bb.aa ], [ %reass.mul252, %bb.y ] ; 2 uses
  %reass.mul254 = fmul reassoc nsz arcp contract afn float %reass.add251, %.sroa.22.0260 ; 4 uses
  br i1 %i.cj, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %bb.ab
  %i.fw = fcmp reassoc nsz arcp contract afn ogt float %reass.mul254, 1.000000e+00
  br i1 %i.fw, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.fx = fcmp reassoc nsz arcp contract afn olt float %reass.mul254, -1.000000e+00
  %i.fy = select reassoc nsz arcp contract afn i1 %i.fx, float -1.000000e+00, float %reass.mul254
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ab, %bb.ad, %bb.ac
  %i.fz = phi reassoc nsz arcp contract afn float [ 1.000000e+00, %bb.ac ], [ %i.fy, %bb.ad ], [ %reass.mul254, %bb.ab ] ; 2 uses
  %i.ga = fcmp reassoc nsz arcp contract afn ogt float %i.es, 0.000000e+00
  br i1 %i.ga, label %bb.m, label %._crit_edge

._crit_edge:                                      ; preds = %bb.ae, %bb.l
  %.sroa.0238.0.lcssa = phi float [ %i.dk, %bb.l ], [ %i.fi, %bb.ae ] ; 2 uses
  %.sroa.14244.0.lcssa = phi float [ %i.cz, %bb.l ], [ %i.fv, %bb.ae ] ; 2 uses
  %.sroa.22.0.lcssa = phi float [ %i.dc, %bb.l ], [ %i.fz, %bb.ae ] ; 2 uses
  %i.gb = fsub reassoc nsz arcp contract afn float %i.dn, %6
  %i.gc = fmul reassoc nsz arcp contract afn float %i.gb, %i.cn ; 3 uses
  %i.gd = fcmp reassoc nsz arcp contract afn ogt float %i.gc, 1.000000e+00
  br i1 %i.gd, label %bb.ah, label %bb.af

bb.af:                                            ; preds = %._crit_edge
  %i.ge = fcmp reassoc nsz arcp contract afn olt float %i.gc, 0.000000e+00
  br i1 %i.ge, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af, %._crit_edge
  %i.gf = phi reassoc nsz arcp contract afn float [ 1.000000e+00, %._crit_edge ], [ %i.gc, %bb.ag ], [ 0.000000e+00, %bb.af ]
  br i1 %i.ca, label %.lr.ph269, label %._crit_edge270

.lr.ph269:                                        ; preds = %bb.ah
  %i.gg = fadd reassoc nsz arcp contract afn float %i.dn, -5.000000e-01
  %i.gh = fmul reassoc nsz arcp contract afn float %i.gg, %i.ce ; 2 uses
  %i.gi = fneg reassoc nsz arcp contract afn float %i.gh
  br label %bb.ai

bb.ai:                                            ; preds = %.lr.ph269, %bb.ba
  %.0192267 = phi float [ %i.cc, %.lr.ph269 ], [ %i.hf, %bb.ba ] ; 3 uses
  %.sroa.22.1266 = phi float [ %.sroa.22.0.lcssa, %.lr.ph269 ], [ %i.im, %bb.ba ]
  %.sroa.14244.1265 = phi float [ %.sroa.14244.0.lcssa, %.lr.ph269 ], [ %i.ii, %bb.ba ]
  %.sroa.0238.1264 = phi float [ %.sroa.0238.0.lcssa, %.lr.ph269 ], [ %i.hv, %bb.ba ] ; 4 uses
  br i1 %.not225, label %bb.aj, label %bb.al

bb.aj:                                            ; preds = %bb.ai
  %i.gj = fcmp reassoc nsz arcp contract afn ogt float %.sroa.0238.1264, 1.000000e+00
  br i1 %i.gj, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.gk = fcmp reassoc nsz arcp contract afn olt float %.sroa.0238.1264, 0.000000e+00
  %i.gl = select reassoc nsz arcp contract afn i1 %i.gk, float 0.000000e+00, float %.sroa.0238.1264
  br label %bb.al

bb.al:                                            ; preds = %bb.ai, %bb.ak, %bb.aj
  %i.gm = phi reassoc nsz arcp contract afn float [ 1.000000e+00, %bb.aj ], [ %i.gl, %bb.ak ], [ %.sroa.0238.1264, %bb.ai ] ; 5 uses
  %i.gn = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.gm ; 2 uses
  %i.go = fcmp reassoc nsz arcp contract afn olt float %i.gn, 0.000000e+00
  %i.gp = select reassoc nsz arcp contract afn i1 %i.go, float %i.gi, float %i.gh
  %i.gq = fadd reassoc nsz arcp contract afn float %i.gp, 5.000000e-01 ; 4 uses
  br i1 %i.bm, label %bb.ao, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.gr = fcmp reassoc nsz arcp contract afn ogt float %i.gq, 1.000000e+00
  br i1 %i.gr, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.gs = fcmp reassoc nsz arcp contract afn olt float %i.gq, 0.000000e+00
  %i.gt = select reassoc nsz arcp contract afn i1 %i.gs, float 0.000000e+00, float %i.gq
  br label %bb.ao

bb.ao:                                            ; preds = %bb.al, %bb.an, %bb.am
  %i.gu = phi reassoc nsz arcp contract afn float [ 1.000000e+00, %bb.am ], [ %i.gt, %bb.an ], [ %i.gq, %bb.al ] ; 2 uses
  %i.gv = insertelement <2 x float> poison, float %i.gm, i64 0
  %i.gw = insertelement <2 x float> %i.gv, float %i.gn, i64 1 ; 2 uses
  %i.gx = call reassoc nsz arcp contract afn <2 x float> @llvm.fabs.v2f32(<2 x float> %i.gw) ; 2 uses
  %i.gy = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.gx, %i.cs
  %i.gz = select <2 x i1> %i.gy, <2 x float> %i.gx, <2 x float> %i.cs
  %i.ha = fdiv reassoc nsz arcp contract afn <2 x float> splat (float 1.000000e+00), %i.gz
  %i.hb = call reassoc nsz arcp contract afn <2 x float> @llvm.copysign.v2f32(<2 x float> %i.ha, <2 x float> %i.gw) ; 2 uses
  %i.hc = fcmp reassoc nsz arcp contract afn ogt float %.0192267, 1.000000e+00
  %i.hd = select reassoc nsz arcp contract afn i1 %i.hc, float 1.000000e+00, float %.0192267
  %i.he = fmul reassoc nsz arcp contract afn float %i.hd, %i.gf ; 3 uses
  %i.hf = fadd reassoc nsz arcp contract afn float %.0192267, -1.000000e+00 ; 2 uses
  %i.hg = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.he ; 2 uses
  %i.hh = fmul reassoc nsz arcp contract afn float %i.gm, %i.hg
  %i.hi = fcmp reassoc nsz arcp contract afn ogt float %i.gm, 5.000000e-01
  %i.hj = fmul reassoc nsz arcp contract afn float %i.gm, 2.000000e+00 ; 2 uses
  br i1 %i.hi, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.hk = fsub reassoc nnan nsz arcp contract afn float 2.000000e+00, %i.hj
  %i.hl = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.gu
  %i.hm = fmul reassoc nsz arcp contract afn float %i.hl, %i.hk
  %i.hn = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.hm
  br label %bb.ar

bb.aq:                                            ; preds = %bb.ao
  %i.ho = fmul reassoc nsz arcp contract afn float %i.hj, %i.gu
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %i.hp = phi reassoc nsz arcp contract afn float [ %i.hn, %bb.ap ], [ %i.ho, %bb.aq ]
  %i.hq = fmul reassoc nsz arcp contract afn float %i.hp, %i.he
  %i.hr = fadd reassoc nsz arcp contract afn float %i.hq, %i.hh ; 4 uses
  br i1 %i.cq, label %bb.as, label %bb.au

bb.as:                                            ; preds = %bb.ar
  %i.hs = fcmp reassoc nsz arcp contract afn ogt float %i.hr, 1.000000e+00
  br i1 %i.hs, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ht = fcmp reassoc nsz arcp contract afn olt float %i.hr, 0.000000e+00
  %i.hu = select reassoc nsz arcp contract afn i1 %i.ht, float 0.000000e+00, float %i.hr
  br label %bb.au

bb.au:                                            ; preds = %bb.ar, %bb.at, %bb.as
  %i.hv = phi reassoc nsz arcp contract afn float [ 1.000000e+00, %bb.as ], [ %i.hu, %bb.at ], [ %i.hr, %bb.ar ] ; 4 uses
  %i.hw = extractelement <2 x float> %i.hb, i64 0
  %i.hx = fmul reassoc nsz arcp contract afn float %i.hv, %i.hw
  %i.hy = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.hv
  %i.hz = extractelement <2 x float> %i.hb, i64 1
  %i.ia = fmul reassoc nsz arcp contract afn float %i.hy, %i.hz ; 2 uses
  %i.ib = fsub reassoc nsz arcp contract afn float %i.hx, %i.ia
  %i.ic = fmul reassoc nsz arcp contract afn float %i.ib, %i.ct
  %i.id = fadd reassoc nsz arcp contract afn float %i.ic, %i.ia
  %i.ie = fmul reassoc nsz arcp contract afn float %i.id, %i.he
  %reass.add = fadd reassoc nsz arcp contract afn float %i.ie, %i.hg ; 2 uses
  %reass.mul = fmul reassoc nsz arcp contract afn float %reass.add, %.sroa.14244.1265 ; 4 uses
  br i1 %i.cp, label %bb.av, label %bb.ax

bb.av:                                            ; preds = %bb.au
  %i.if = fcmp reassoc nsz arcp contract afn ogt float %reass.mul, 1.000000e+00
  br i1 %i.if, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.ig = fcmp reassoc nsz arcp contract afn olt float %reass.mul, -1.000000e+00
  %i.ih = select reassoc nsz arcp contract afn i1 %i.ig, float -1.000000e+00, float %reass.mul
  br label %bb.ax

bb.ax:                                            ; preds = %bb.au, %bb.aw, %bb.av
  %i.ii = phi reassoc nsz arcp contract afn float [ 1.000000e+00, %bb.av ], [ %i.ih, %bb.aw ], [ %reass.mul, %bb.au ] ; 2 uses
  %reass.mul250 = fmul reassoc nsz arcp contract afn float %reass.add, %.sroa.22.1266 ; 4 uses
  br i1 %i.co, label %bb.ay, label %bb.ba

bb.ay:                                            ; preds = %bb.ax
  %i.ij = fcmp reassoc nsz arcp contract afn ogt float %reass.mul250, 1.000000e+00
  br i1 %i.ij, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.ik = fcmp reassoc nsz arcp contract afn olt float %reass.mul250, -1.000000e+00
  %i.il = select reassoc nsz arcp contract afn i1 %i.ik, float -1.000000e+00, float %reass.mul250
  br label %bb.ba

bb.ba:                                            ; preds = %bb.ax, %bb.az, %bb.ay
  %i.im = phi reassoc nsz arcp contract afn float [ 1.000000e+00, %bb.ay ], [ %i.il, %bb.az ], [ %reass.mul250, %bb.ax ] ; 2 uses
  %i.in = fcmp reassoc nsz arcp contract afn ogt float %i.hf, 0.000000e+00
  br i1 %i.in, label %bb.ai, label %._crit_edge270

._crit_edge270:                                   ; preds = %bb.ba, %bb.ah
  %.sroa.0238.1.lcssa = phi float [ %.sroa.0238.0.lcssa, %bb.ah ], [ %i.hv, %bb.ba ]
  %.sroa.14244.1.lcssa = phi float [ %.sroa.14244.0.lcssa, %bb.ah ], [ %i.ii, %bb.ba ]
  %.sroa.22.1.lcssa = phi float [ %.sroa.22.0.lcssa, %bb.ah ], [ %i.im, %bb.ba ]
  %i.io = insertelement <2 x float> poison, float %.sroa.0238.1.lcssa, i64 0
  %i.ip = insertelement <2 x float> %i.io, float %.sroa.14244.1.lcssa, i64 1
  %i.iq = fmul reassoc nsz arcp contract afn <2 x float> %i.ip, <float 1.000000e+02, float 1.280000e+02>
  store <2 x float> %i.iq, ptr %i.dd, align 4, !tbaa !18
  %i.ir = fmul reassoc nsz arcp contract afn float %.sroa.22.1.lcssa, 1.280000e+02
  store float %i.ir, ptr %i.df, align 4, !tbaa !18
  %i.is = add nuw i64 %.0190274, 4                ; 2 uses
  %i.it = icmp ult i64 %i.is, %i.bq
  br i1 %i.it, label %bb.i, label %.critedge231

.critedge:                                        ; preds = %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %.critedge231

.critedge231:                                     ; preds = %._crit_edge270, %bb.h, %.critedge, %bb.f, %bb.a
  ret void
}

declare i32 @dt_iop_have_required_input_format(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.maxnum.f32(float, float) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #5

declare ptr @dt_gaussian_init(i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, float noundef, i32 noundef) local_unnamed_addr #3

declare void @dt_gaussian_blur_4c(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @dt_gaussian_free(ptr noundef) local_unnamed_addr #3

declare ptr @dt_bilateral_init(i32 noundef, i32 noundef, float noundef, float noundef) local_unnamed_addr #3

declare void @dt_bilateral_splat(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @dt_bilateral_blur(ptr noundef) local_unnamed_addr #3

declare void @dt_bilateral_slice(ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #3

declare void @dt_bilateral_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #7

; Function Attrs: nounwind uwtable
define void @tiling_callback(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readnone captures(none) %3, ptr nofree noundef writeonly captures(none) initializes((0, 4), (8, 12), (16, 28)) %4) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !60  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load i32, ptr %i.c, align 4, !tbaa !61   ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 12
end_hunk_0
