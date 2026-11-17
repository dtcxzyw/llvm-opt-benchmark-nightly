Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_filmicrgb?download=true
inline.NumInlined: 325
inline.NumDeleted: 106
loop-unroll.NumCompletelyUnrolled: 71
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 80
begin_hunk_0_@legacy_params:bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  store i32 1, ptr %i.t, align 4, !tbaa !246
  br label %.sink.split

bb.c:                                             ; preds = %bb.a
  %i.u = tail call noalias dereferenceable_or_null(116) ptr @malloc(i64 noundef 116) #36 ; 13 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.x = load <8 x float>, ptr %i.v, align 4, !tbaa !13
  store <8 x float> %i.x, ptr %i.w, align 4, !tbaa !13
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.z = load float, ptr %i.y, align 4, !tbaa !248
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 64
  store float %i.z, ptr %i.aa, align 4, !tbaa !240
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.ac = getelementptr inbounds nuw i8, ptr %i.u, i64 72
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.ae = getelementptr inbounds nuw i8, ptr %i.u, i64 96
  %i.af = load <2 x i32>, ptr %i.ad, align 4, !tbaa !14
  store <2 x i32> %i.af, ptr %i.ae, align 4, !tbaa !14
  %i.ag = load <8 x float>, ptr %1, align 4, !tbaa !13
  store <8 x float> %i.ag, ptr %i.u, align 4, !tbaa !13
  %i.ah = load <4 x i32>, ptr %i.ab, align 4, !tbaa !14
  store <4 x i32> %i.ah, ptr %i.ac, align 4, !tbaa !14
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !249
  %i.ak = getelementptr inbounds nuw i8, ptr %i.u, i64 88
  store i32 %i.aj, ptr %i.ak, align 4, !tbaa !250
  %i.al = getelementptr inbounds nuw i8, ptr %i.u, i64 68
  %i.am = getelementptr inbounds nuw i8, ptr %i.u, i64 92
  store i32 1, ptr %i.am, align 4, !tbaa !251
  store float 0.000000e+00, ptr %i.al, align 4, !tbaa !244
  %i.an = getelementptr inbounds nuw i8, ptr %i.u, i64 108
  store i32 0, ptr %i.an, align 4, !tbaa !245
  %i.ao = getelementptr inbounds nuw i8, ptr %i.u, i64 104
  store i32 0, ptr %i.ao, align 4, !tbaa !252
  %i.ap = getelementptr inbounds nuw i8, ptr %i.u, i64 112
  store i32 1, ptr %i.ap, align 4, !tbaa !246
  tail call fastcc void @convert_to_spline_v3(ptr noundef nonnull %i.u)
  br label %.sink.split

bb.d:                                             ; preds = %bb.a
  %i.aq = tail call noalias dereferenceable_or_null(116) ptr @malloc(i64 noundef 116) #36 ; 13 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  %i.at = load <8 x float>, ptr %i.ar, align 4, !tbaa !13
  store <8 x float> %i.at, ptr %i.as, align 4, !tbaa !13
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.av = load float, ptr %i.au, align 4, !tbaa !254
  %i.aw = getelementptr inbounds nuw i8, ptr %i.aq, i64 64
  store float %i.av, ptr %i.aw, align 4, !tbaa !240
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aq, i64 72
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aq, i64 96
  %i.bb = load <2 x i32>, ptr %i.az, align 4, !tbaa !14
  store <2 x i32> %i.bb, ptr %i.ba, align 4, !tbaa !14
  %i.bc = load <8 x float>, ptr %1, align 4, !tbaa !13
  store <8 x float> %i.bc, ptr %i.aq, align 4, !tbaa !13
  %i.bd = load <4 x i32>, ptr %i.ax, align 4, !tbaa !14
  store <4 x i32> %i.bd, ptr %i.ay, align 4, !tbaa !14
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !255
  %i.bg = getelementptr inbounds nuw i8, ptr %i.aq, i64 88
  store i32 %i.bf, ptr %i.bg, align 4, !tbaa !250
  %i.bh = getelementptr inbounds nuw i8, ptr %i.aq, i64 68
  store float 2.000000e-01, ptr %i.bh, align 4, !tbaa !244
  %i.bi = getelementptr inbounds nuw i8, ptr %i.aq, i64 92
  store i32 1, ptr %i.bi, align 4, !tbaa !251
  %i.bj = getelementptr inbounds nuw i8, ptr %i.aq, i64 108
  store i32 0, ptr %i.bj, align 4, !tbaa !245
  %i.bk = getelementptr inbounds nuw i8, ptr %i.aq, i64 104
  store i32 0, ptr %i.bk, align 4, !tbaa !252
  %i.bl = getelementptr inbounds nuw i8, ptr %i.aq, i64 112
  store i32 1, ptr %i.bl, align 4, !tbaa !246
  tail call fastcc void @convert_to_spline_v3(ptr noundef nonnull %i.aq)
  br label %.sink.split

bb.e:                                             ; preds = %bb.a
  %i.bm = tail call noalias dereferenceable_or_null(116) ptr @malloc(i64 noundef 116) #36 ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(112) %i.bm, ptr noundef nonnull align 4 dereferenceable(112) %1, i64 112, i1 false)
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !257
  %switch.tableidx = add i32 %i.bo, -2019         ; 2 uses
  %i.bp = icmp ult i32 %switch.tableidx, 3
  br i1 %i.bp, label %switch.lookup, label %bb.g

switch.lookup:                                    ; preds = %bb.e
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bm, i64 108
  store i32 %switch.tableidx, ptr %i.bq, align 4, !tbaa !245
  %i.br = getelementptr inbounds nuw i8, ptr %i.bm, i64 112
  store i32 1, ptr %i.br, align 4, !tbaa !246
  tail call fastcc void @convert_to_spline_v3(ptr noundef nonnull %i.bm)
  br label %.sink.split

bb.f:                                             ; preds = %bb.a
  %i.bs = tail call noalias dereferenceable_or_null(116) ptr @malloc(i64 noundef 116) #36 ; 7 uses
  %i.bt = load <8 x float>, ptr %1, align 4, !tbaa !13
  store <8 x float> %i.bt, ptr %i.bs, align 4, !tbaa !13
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 32
  %i.bw = load <8 x float>, ptr %i.bu, align 4, !tbaa !13
  store <8 x float> %i.bw, ptr %i.bv, align 4, !tbaa !13
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.by = getelementptr inbounds nuw i8, ptr %i.bs, i64 64
  %i.bz = load <2 x float>, ptr %i.bx, align 4, !tbaa !13
  store <2 x float> %i.bz, ptr %i.by, align 4, !tbaa !13
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bs, i64 72
  %i.cc = load <8 x i32>, ptr %i.ca, align 4, !tbaa !14
  store <8 x i32> %i.cc, ptr %i.cb, align 4, !tbaa !14
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bs, i64 104
  %i.cf = load <2 x i32>, ptr %i.cd, align 4, !tbaa !14
  store <2 x i32> %i.cf, ptr %i.ce, align 4, !tbaa !14
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bs, i64 112
  store i32 1, ptr %i.cg, align 4, !tbaa !246
  br label %.sink.split

.sink.split:                                      ; preds = %bb.b, %bb.c, %bb.d, %bb.f, %switch.lookup
  %.sink249 = phi ptr [ %i.bm, %switch.lookup ], [ %i.bs, %bb.f ], [ %i.aq, %bb.d ], [ %i.u, %bb.c ], [ %i.a, %bb.b ]
  store ptr %.sink249, ptr %3, align 8, !tbaa !16
  store i32 116, ptr %4, align 4, !tbaa !14
  store i32 6, ptr %5, align 4, !tbaa !14
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %.sink.split, %bb.a
  %.1 = phi i32 [ 1, %bb.a ], [ 1, %bb.e ], [ 0, %.sink.split ]
  ret i32 %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #5

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #6

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc void @convert_to_spline_v3(ptr nofree noundef captures(none) %0) unnamed_addr #4 {
bb.a:
  %1 = alloca %struct.dt_iop_filmic_rgb_spline_t, align 16 ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !18
  %i.c = icmp eq i32 %i.b, 2
  br i1 %i.c, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  %i.d = call fastcc i32 @dt_iop_filmic_rgb_compute_spline(ptr noundef nonnull %0, ptr noundef nonnull %1) ; 0 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 116
  %i.f = load float, ptr %i.e, align 4, !tbaa !13 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.h = load float, ptr %i.g, align 16, !tbaa !13
  %i.i = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.h, float %i.f)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.k = load float, ptr %i.j, align 8, !tbaa !13
  %i.l = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.k, float %i.f)
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.n = load float, ptr %i.m, align 8, !tbaa !13 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.p = load float, ptr %i.o, align 16, !tbaa !13 ; 8 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.r = load float, ptr %i.q, align 8, !tbaa !13 ; 3 uses
  %i.s = fsub reassoc nsz arcp contract afn float %i.r, %i.n ; 2 uses
  %i.t = fmul reassoc nsz arcp contract afn float %i.s, f0x3C23D70A ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 92
  %i.v = load float, ptr %i.u, align 4, !tbaa !13
  %i.w = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.v, float %i.p) ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 100
  %i.y = load float, ptr %i.x, align 4, !tbaa !13
  %i.z = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.y, float %i.p) ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !19 ; 4 uses
  %i.ac = fsub reassoc nsz arcp contract afn float %i.z, %i.w
  %i.ad = fsub reassoc nsz arcp contract afn float %i.l, %i.i
  %i.ae = fadd reassoc nsz arcp contract afn float %i.t, %i.n ; 3 uses
  %i.af = fcmp reassoc nsz arcp contract afn olt float %i.w, %i.ae
  %spec.select = select nsz i1 %i.af, float %i.ae, float %i.w ; 2 uses
  %i.ag = fsub reassoc nsz arcp contract afn float %i.r, %i.t ; 3 uses
  %i.ah = fcmp reassoc nsz arcp contract afn ogt float %i.z, %i.ag
  %.088 = select nsz i1 %i.ah, float %i.ag, float %i.z ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !20
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.al = load float, ptr %i.ak, align 4, !tbaa !21
  %i.am = fsub reassoc nsz arcp contract afn float %i.aj, %i.al
  %i.an = fmul reassoc nsz arcp contract afn float %i.am, %i.ad
  %i.ao = fadd reassoc nsz arcp contract afn float %i.ab, -1.000000e+00
  %i.ap = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.p, float %i.ao)
  %i.aq = fmul reassoc nsz arcp contract afn float %i.ab, 8.000000e+00
  %i.ar = fmul reassoc nsz arcp contract afn float %i.aq, %i.ac
  %i.as = fmul reassoc nsz arcp contract afn float %i.ar, %i.ap
  %i.at = fdiv reassoc nsz arcp contract afn float %i.as, %i.an
  %i.au = fsub reassoc nsz arcp contract afn float %.088, %spec.select
  %i.av = fmul reassoc nsz arcp contract afn float %i.s, 9.800000e-01
  %i.aw = fdiv reassoc nsz arcp contract afn float %i.au, %i.av ; 3 uses
  %i.ax = fcmp reassoc nsz arcp contract afn ogt float %i.aw, 9.900000e-01
  %i.ay = fcmp reassoc nsz arcp contract afn olt float %i.aw, 0.000000e+00
  %spec.select96 = select reassoc nsz arcp contract afn i1 %i.ay, float 0.000000e+00, float %i.aw
  %i.az = select reassoc nsz arcp contract afn i1 %i.ax, float 9.900000e-01, float %spec.select96 ; 4 uses
  %i.ba = fsub reassoc ninf nsz arcp contract afn float 1.000000e+00, %i.az
  %i.bb = fmul reassoc nsz arcp contract afn float %i.ba, %i.p ; 2 uses
  %i.bc = fmul reassoc nsz arcp contract afn float %i.az, %i.ag
  %i.bd = fadd reassoc nsz arcp contract afn float %i.bb, %i.bc ; 2 uses
  %i.be = fcmp reassoc nsz arcp contract afn olt float %.088, %i.bd
  br i1 %i.be, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.bf = fsub reassoc nsz arcp contract afn float %.088, %i.p
  %i.bg = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.bf, float 0.000000e+00)
  %i.bh = fsub reassoc nsz arcp contract afn float %i.bd, %i.p
  %i.bi = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.bh, float f0x3727C5AC)
  %i.bj = fmul reassoc nnan nsz arcp contract afn float %i.bg, 5.000000e-01
  %i.bk = fdiv reassoc nsz arcp contract afn float %i.bj, %i.bi
  %i.bl = fsub reassoc nsz arcp contract afn float 5.000000e-01, %i.bk
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.bm = fsub reassoc nsz arcp contract afn float %i.p, %spec.select
  %i.bn = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.bm, float 0.000000e+00)
  %i.bo = fmul reassoc nsz arcp contract afn float %i.ae, %i.az
  %i.bp = fadd reassoc nsz arcp contract afn float %i.bo, %i.bb
  %i.bq = fsub reassoc nsz arcp contract afn float %i.p, %i.bp
  %i.br = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.bq, float f0x3727C5AC)
  %i.bs = fmul reassoc nnan nsz arcp contract afn float %i.bn, 5.000000e-01
  %i.bt = fdiv reassoc nsz arcp contract afn float %i.bs, %i.br
  %i.bu = fadd reassoc nsz arcp contract afn float %i.bt, -5.000000e-01
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi nsz float [ %i.bl, %bb.c ], [ %i.bu, %bb.d ]
  %i.bv = load i32, ptr %i.a, align 4, !tbaa !18
  %i.bw = icmp eq i32 %i.bv, 0
  br i1 %i.bw, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bx = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.n, float %i.ab)
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bz = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.r, float %i.ab)
  %i.ca = insertelement <2 x float> poison, float %i.bx, i64 0
  %i.cb = insertelement <2 x float> %i.ca, float %i.bz, i64 1
  %i.cc = fmul reassoc nsz arcp contract afn <2 x float> %i.cb, splat (float 1.000000e+02)
  store <2 x float> %i.cc, ptr %i.by, align 4, !tbaa !13
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.cd = fmul reassoc nsz arcp contract afn float %i.az, 1.000000e+02
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 52
  store float %i.cd, ptr %i.ce, align 4, !tbaa !22
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 56
  store float %i.at, ptr %i.cf, align 4, !tbaa !23
  %i.cg = fmul reassoc nsz arcp contract afn float %.0, 1.000000e+02
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 64
  store float %i.cg, ptr %i.ch, align 4, !tbaa !24
  store i32 2, ptr %i.a, align 4, !tbaa !18
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %bb.g
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @tiling_callback(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readnone captures(none) %3, ptr nofree noundef writeonly captures(none) initializes((0, 28)) %4) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr i8, ptr %2, i64 16
  %.val = load float, ptr %i.a, align 4, !tbaa !26
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.c = load float, ptr %i.b, align 8, !tbaa !42 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 148
  %i.e = load i32, ptr %i.d, align 4, !tbaa !43
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.g = load i32, ptr %i.f, align 8, !tbaa !44
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load ptr, ptr %i.h, align 16, !tbaa !45  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 276
  %i.k = load i32, ptr %i.j, align 4, !tbaa !48
  %.not = icmp eq i32 %i.k, 0
  br i1 %.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !49
  %i.n = getelementptr i8, ptr %i.m, i64 644
  %.val17 = load i32, ptr %i.n, align 4, !tbaa !66
  %.val17.fr = freeze i32 %.val17
  %i.o = and i32 %.val17.fr, 256
  %.not19 = icmp eq i32 %i.o, 0
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 80
  %i.q = load i32, ptr %i.p, align 16, !tbaa !67
  %i.r = icmp sgt i32 %i.q, 0
  %i.s = select i1 %i.r, float 8.500000e+00, float 7.250000e+00
  %spec.select = select i1 %.not19, float %i.s, float 2.250000e+00
  br label %.thread

.thread:                                          ; preds = %bb.a, %bb.b
  %i.t = phi float [ %spec.select, %bb.b ], [ 2.250000e+00, %bb.a ]
  %i.u = fmul reassoc nsz arcp contract afn float %.val, 1.000000e-01
  %i.v = sitofp reassoc nsz arcp contract afn i32 %i.e to float
  %i.w = fmul reassoc nsz arcp contract afn float %i.c, %i.v ; 2 uses
  %i.x = sitofp reassoc nsz arcp contract afn i32 %i.g to float
  %i.y = fmul reassoc nsz arcp contract afn float %i.c, %i.x ; 2 uses
  %i.z = fcmp reassoc nsz arcp contract afn ogt float %i.w, %i.y
  %..i = select reassoc nsz arcp contract afn i1 %i.z, float %i.w, float %i.y
  %i.aa = fptoui float %..i to i64
  %i.ab = uitofp reassoc nsz arcp contract afn i64 %i.aa to float
  %i.ac = fmul reassoc nsz arcp contract afn float %i.u, %i.ab
  %i.ad = fdiv reassoc nsz arcp contract afn float %i.ac, %i.c
  %i.ae = fadd reassoc nsz arcp contract afn float %i.ad, -1.000000e+00
  %i.af = tail call reassoc nsz arcp contract afn float @llvm.log2.f32(float %i.ae)
  %i.ag = tail call reassoc nsz arcp contract afn float @llvm.floor.f32(float %i.af)
  %i.ah = fptosi float %i.ag to i32
  %i.ai = tail call i32 @llvm.smax.i32(i32 %i.ah, i32 1)
  %i.aj = tail call range(i32 1, 11) i32 @llvm.umin.i32(i32 %i.ai, i32 10)
  %i.ak = shl nuw nsw i32 1, %i.aj
  store float %i.t, ptr %4, align 4, !tbaa !259
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 4
  store <2 x float> <float 9.000000e+00, float 1.000000e+00>, ptr %i.al, align 4, !tbaa !13
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 12
  store float 1.000000e+00, ptr %i.am, align 4, !tbaa !260
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 0, ptr %i.an, align 4, !tbaa !261
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 20
  store i32 %i.ak, ptr %i.ao, align 4, !tbaa !262
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 1, ptr %i.ap, align 4, !tbaa !263
  ret void
}

; Function Attrs: nounwind uwtable
define void @process(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noalias noundef %2, ptr noalias noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #8 {
bb.a:
  %i.a = alloca [4 x [4 x float]], align 64       ; 10 uses
  %i.b = alloca [4 x [4 x float]], align 64       ; 4 uses
  %i.c = alloca [4 x [4 x float]], align 64       ; 4 uses
  %i.d = alloca [4 x [4 x float]], align 64       ; 4 uses
  %i.e = alloca [4 x [4 x float]], align 64       ; 4 uses
  %i.f = alloca [4 x [4 x float]], align 64       ; 4 uses
  %i.g = alloca [4 x float], align 16             ; 4 uses
  %i.h = alloca [4 x float], align 16             ; 6 uses
  %i.i = alloca [4 x float], align 16             ; 7 uses
  %i.j = alloca [4 x float], align 16             ; 4 uses
  %i.k = alloca [4 x float], align 16             ; 4 uses
  %i.l = alloca [4 x float], align 16             ; 4 uses
  %i.m = alloca [4 x [4 x float]], align 64       ; 10 uses
  %i.n = alloca [4 x [4 x float]], align 64       ; 4 uses
  %i.o = alloca [4 x [4 x float]], align 64       ; 4 uses
  %i.p = alloca [4 x [4 x float]], align 64       ; 4 uses
  %i.q = alloca [4 x [4 x float]], align 64       ; 4 uses
  %i.r = alloca [4 x [4 x float]], align 64       ; 4 uses
  %i.s = alloca [4 x float], align 16             ; 6 uses
  %i.t = alloca [4 x float], align 16             ; 4 uses
  %i.u = alloca [4 x float], align 16             ; 6 uses
  %i.v = alloca [4 x float], align 16             ; 7 uses
  %6 = alloca %struct.dt_iop_filmic_rgb_spline_t, align 16 ; 20 uses
  %i.w = alloca i32, align 4                      ; 4 uses
  %i.x = alloca i32, align 4                      ; 4 uses
  %i.y = alloca i32, align 4                      ; 4 uses
  %i.z = alloca i32, align 4                      ; 4 uses
  %i.aa = alloca i32, align 4                     ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 132
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !314
  %i.ad = tail call i32 @dt_iop_have_required_input_format(i32 noundef 4, ptr noundef %0, i32 noundef %i.ac, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) #20
  %.not = icmp eq i32 %i.ad, 0
  br i1 %.not, label %bb.dd, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.af = load ptr, ptr %i.ae, align 16, !tbaa !45 ; 101 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !49
  %i.ai = tail call ptr @dt_ioppr_get_pipe_work_profile_info(ptr noundef %i.ah) #20 ; 20 uses
  %i.aj = load ptr, ptr %i.ag, align 8, !tbaa !49
  %i.ak = tail call ptr @dt_ioppr_get_pipe_output_profile_info(ptr noundef %i.aj) #20 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 17 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !68
  %i.an = sext i32 %i.am to i64
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 15 uses
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !69
  %i.aq = sext i32 %i.ap to i64
  %i.ar = shl nsw i64 %i.an, 2
  %i.as = mul i64 %i.ar, %i.aq
  %i.at = tail call ptr @dt_alloc_aligned(i64 noundef %i.as) #20 ; 20 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.at, i64 64) ]
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.av = load float, ptr %i.au, align 8, !tbaa !42
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !26
  %i.ay = fdiv reassoc nsz arcp contract afn float %i.av, %i.ax
  %i.az = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.ay, float 1.000000e+00)
  %i.ba = getelementptr inbounds nuw i8, ptr %i.af, i64 276
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !48
  %.not202 = icmp eq i32 %i.bb, 0
  br i1 %.not202, label %bb.d, label %bb.c

end_hunk_0
begin_hunk_1_@process:bb.a
  %i.amo = fadd reassoc nsz arcp contract afn float %i.amn, %i.akc ; 19 uses
  %i.amp = fcmp reassoc nsz arcp contract afn olt float %i.amo, %.sroa.15305.0.copyload
  br i1 %i.amp, label %bb.ba, label %bb.au

bb.au:                                            ; preds = %filmic_spline.exit.i238
  %i.amq = fcmp reassoc nsz arcp contract afn ogt float %i.amo, %.sroa.16.0.copyload
  br i1 %i.amq, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.amr = fmul reassoc nsz arcp contract afn float %i.amo, %.sroa.8.0.copyload
  %i.ams = fadd reassoc nsz arcp contract afn float %i.amr, %.sroa.5.0.copyload
  br label %filmic_spline.exit.1.i

bb.aw:                                            ; preds = %bb.au
  switch i32 %.sroa.18.0.copyload, label %bb.az [
    i32 0, label %bb.ay
    i32 1, label %bb.ax
  ]

bb.ax:                                            ; preds = %bb.aw
  %i.amt = fmul reassoc nsz arcp contract afn float %i.amo, %.sroa.12.0.copyload
  %i.amu = fadd reassoc nsz arcp contract afn float %i.amt, %.sroa.10.0.copyload
  %i.amv = fmul reassoc nsz arcp contract afn float %i.amu, %i.amo
  %i.amw = fadd reassoc nsz arcp contract afn float %i.amv, %.sroa.7.0.copyload
  %i.amx = fmul reassoc nsz arcp contract afn float %i.amw, %i.amo
  %i.amy = fadd reassoc nsz arcp contract afn float %i.amx, %.sroa.4.0.copyload
  br label %filmic_spline.exit.1.i

bb.ay:                                            ; preds = %bb.aw
  %i.amz = fmul reassoc nsz arcp contract afn float %i.amo, %.sroa.14.0.copyload
  %i.ana = fadd reassoc nsz arcp contract afn float %i.amz, %.sroa.12.0.copyload
  %i.anb = fmul reassoc nsz arcp contract afn float %i.ana, %i.amo
  %i.anc = fadd reassoc nsz arcp contract afn float %i.anb, %.sroa.10.0.copyload
  %i.and = fmul reassoc nsz arcp contract afn float %i.anc, %i.amo
  %i.ane = fadd reassoc nsz arcp contract afn float %i.and, %.sroa.7.0.copyload
  %i.anf = fmul reassoc nsz arcp contract afn float %i.ane, %i.amo
  %i.ang = fadd reassoc nsz arcp contract afn float %i.anf, %.sroa.4.0.copyload
  br label %filmic_spline.exit.1.i

bb.az:                                            ; preds = %bb.aw
  %i.anh = fsub reassoc nsz arcp contract afn float %i.amo, %.sroa.16.0.copyload ; 2 uses
  %i.ani = fmul reassoc nsz arcp contract afn float %i.anh, %.sroa.7.0.copyload
  %i.anj = fadd reassoc nsz arcp contract afn float %i.ani, 1.000000e+00
  %i.ank = fmul reassoc nsz arcp contract afn float %i.anj, %i.anh ; 2 uses
  %i.anl = fmul reassoc nsz arcp contract afn float %i.ank, %.sroa.4.0.copyload
  %i.anm = fadd reassoc nsz arcp contract afn float %i.ank, %.sroa.10.0.copyload
  %i.ann = fdiv reassoc nsz arcp contract afn float %i.anl, %i.anm
  %i.ano = fadd reassoc nsz arcp contract afn float %i.ann, %.sroa.12.0.copyload
  br label %filmic_spline.exit.1.i

bb.ba:                                            ; preds = %filmic_spline.exit.i238
  switch i32 %.sroa.17306.0.copyload, label %bb.bd [
    i32 0, label %bb.bc
    i32 1, label %bb.bb
  ]

bb.bb:                                            ; preds = %bb.ba
  %i.anp = fmul reassoc nsz arcp contract afn float %i.amo, %.sroa.11303.0.copyload
  %i.anq = fadd reassoc nsz arcp contract afn float %i.anp, %.sroa.9302.0.copyload
  %i.anr = fmul reassoc nsz arcp contract afn float %i.anq, %i.amo
  %i.ans = fadd reassoc nsz arcp contract afn float %i.anr, %.sroa.6301.0.copyload
  %i.ant = fmul reassoc nsz arcp contract afn float %i.ans, %i.amo
  %i.anu = fadd reassoc nsz arcp contract afn float %i.ant, %.sroa.0.0.copyload
  br label %filmic_spline.exit.1.i

bb.bc:                                            ; preds = %bb.ba
  %i.anv = fmul reassoc nsz arcp contract afn float %i.amo, %.sroa.13304.0.copyload
  %i.anw = fadd reassoc nsz arcp contract afn float %i.anv, %.sroa.11303.0.copyload
  %i.anx = fmul reassoc nsz arcp contract afn float %i.anw, %i.amo
  %i.any = fadd reassoc nsz arcp contract afn float %i.anx, %.sroa.9302.0.copyload
  %i.anz = fmul reassoc nsz arcp contract afn float %i.any, %i.amo
  %i.aoa = fadd reassoc nsz arcp contract afn float %i.anz, %.sroa.6301.0.copyload
  %i.aob = fmul reassoc nsz arcp contract afn float %i.aoa, %i.amo
  %i.aoc = fadd reassoc nsz arcp contract afn float %i.aob, %.sroa.0.0.copyload
  br label %filmic_spline.exit.1.i

bb.bd:                                            ; preds = %bb.ba
  %i.aod = fsub reassoc nsz arcp contract afn float %.sroa.15305.0.copyload, %i.amo ; 2 uses
  %i.aoe = fmul reassoc nsz arcp contract afn float %i.aod, %.sroa.6301.0.copyload
  %i.aof = fadd reassoc nsz arcp contract afn float %i.aoe, 1.000000e+00
  %i.aog = fmul reassoc nsz arcp contract afn float %i.aof, %i.aod ; 2 uses
  %i.aoh = fmul reassoc nsz arcp contract afn float %i.aog, %.sroa.0.0.copyload
  %i.aoi = fadd reassoc nsz arcp contract afn float %i.aog, %.sroa.9302.0.copyload
  %i.aoj = fdiv reassoc nsz arcp contract afn float %i.aoh, %i.aoi
  %i.aok = fsub reassoc nsz arcp contract afn float %.sroa.11303.0.copyload, %i.aoj
  br label %filmic_spline.exit.1.i

filmic_spline.exit.1.i:                           ; preds = %bb.bd, %bb.bc, %bb.bb, %bb.az, %bb.ay, %bb.ax, %bb.av
  %.0.i.1.i = phi nsz float [ %i.aoc, %bb.bc ], [ %i.anu, %bb.bb ], [ %i.aok, %bb.bd ], [ %i.ang, %bb.ay ], [ %i.amy, %bb.ax ], [ %i.ano, %bb.az ], [ %i.ams, %bb.av ]
  %.sroa.0.4.vec.insert51.i = insertelement <4 x float> %.sroa.0.0.vec.insert48.i, float %.0.i.1.i, i64 1
  %i.aol = fsub reassoc nsz arcp contract afn float %i.ajt, %i.akc
  %i.aom = fmul reassoc nsz arcp contract afn float %i.akm, %i.aol
  %i.aon = fadd reassoc nsz arcp contract afn float %i.aom, %i.akc ; 19 uses
  %i.aoo = fcmp reassoc nsz arcp contract afn olt float %i.aon, %.sroa.15305.0.copyload
  br i1 %i.aoo, label %bb.bk, label %bb.be

bb.be:                                            ; preds = %filmic_spline.exit.1.i
  %i.aop = fcmp reassoc nsz arcp contract afn ogt float %i.aon, %.sroa.16.0.copyload
  br i1 %i.aop, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.aoq = fmul reassoc nsz arcp contract afn float %i.aon, %.sroa.8.0.copyload
  %i.aor = fadd reassoc nsz arcp contract afn float %i.aoq, %.sroa.5.0.copyload
  br label %filmic_spline.exit.2.i

bb.bg:                                            ; preds = %bb.be
  switch i32 %.sroa.18.0.copyload, label %bb.bj [
    i32 0, label %bb.bi
    i32 1, label %bb.bh
  ]

bb.bh:                                            ; preds = %bb.bg
  %i.aos = fmul reassoc nsz arcp contract afn float %i.aon, %.sroa.12.0.copyload
  %i.aot = fadd reassoc nsz arcp contract afn float %i.aos, %.sroa.10.0.copyload
  %i.aou = fmul reassoc nsz arcp contract afn float %i.aot, %i.aon
  %i.aov = fadd reassoc nsz arcp contract afn float %i.aou, %.sroa.7.0.copyload
  %i.aow = fmul reassoc nsz arcp contract afn float %i.aov, %i.aon
  %i.aox = fadd reassoc nsz arcp contract afn float %i.aow, %.sroa.4.0.copyload
  br label %filmic_spline.exit.2.i

bb.bi:                                            ; preds = %bb.bg
  %i.aoy = fmul reassoc nsz arcp contract afn float %i.aon, %.sroa.14.0.copyload
  %i.aoz = fadd reassoc nsz arcp contract afn float %i.aoy, %.sroa.12.0.copyload
  %i.apa = fmul reassoc nsz arcp contract afn float %i.aoz, %i.aon
  %i.apb = fadd reassoc nsz arcp contract afn float %i.apa, %.sroa.10.0.copyload
  %i.apc = fmul reassoc nsz arcp contract afn float %i.apb, %i.aon
  %i.apd = fadd reassoc nsz arcp contract afn float %i.apc, %.sroa.7.0.copyload
  %i.ape = fmul reassoc nsz arcp contract afn float %i.apd, %i.aon
  %i.apf = fadd reassoc nsz arcp contract afn float %i.ape, %.sroa.4.0.copyload
  br label %filmic_spline.exit.2.i

bb.bj:                                            ; preds = %bb.bg
  %i.apg = fsub reassoc nsz arcp contract afn float %i.aon, %.sroa.16.0.copyload ; 2 uses
  %i.aph = fmul reassoc nsz arcp contract afn float %i.apg, %.sroa.7.0.copyload
  %i.api = fadd reassoc nsz arcp contract afn float %i.aph, 1.000000e+00
  %i.apj = fmul reassoc nsz arcp contract afn float %i.api, %i.apg ; 2 uses
  %i.apk = fmul reassoc nsz arcp contract afn float %i.apj, %.sroa.4.0.copyload
  %i.apl = fadd reassoc nsz arcp contract afn float %i.apj, %.sroa.10.0.copyload
  %i.apm = fdiv reassoc nsz arcp contract afn float %i.apk, %i.apl
  %i.apn = fadd reassoc nsz arcp contract afn float %i.apm, %.sroa.12.0.copyload
  br label %filmic_spline.exit.2.i

bb.bk:                                            ; preds = %filmic_spline.exit.1.i
  switch i32 %.sroa.17306.0.copyload, label %bb.bn [
    i32 0, label %bb.bm
    i32 1, label %bb.bl
  ]

bb.bl:                                            ; preds = %bb.bk
  %i.apo = fmul reassoc nsz arcp contract afn float %i.aon, %.sroa.11303.0.copyload
  %i.app = fadd reassoc nsz arcp contract afn float %i.apo, %.sroa.9302.0.copyload
  %i.apq = fmul reassoc nsz arcp contract afn float %i.app, %i.aon
  %i.apr = fadd reassoc nsz arcp contract afn float %i.apq, %.sroa.6301.0.copyload
  %i.aps = fmul reassoc nsz arcp contract afn float %i.apr, %i.aon
  %i.apt = fadd reassoc nsz arcp contract afn float %i.aps, %.sroa.0.0.copyload
  br label %filmic_spline.exit.2.i

bb.bm:                                            ; preds = %bb.bk
  %i.apu = fmul reassoc nsz arcp contract afn float %i.aon, %.sroa.13304.0.copyload
  %i.apv = fadd reassoc nsz arcp contract afn float %i.apu, %.sroa.11303.0.copyload
  %i.apw = fmul reassoc nsz arcp contract afn float %i.apv, %i.aon
  %i.apx = fadd reassoc nsz arcp contract afn float %i.apw, %.sroa.9302.0.copyload
  %i.apy = fmul reassoc nsz arcp contract afn float %i.apx, %i.aon
  %i.apz = fadd reassoc nsz arcp contract afn float %i.apy, %.sroa.6301.0.copyload
  %i.aqa = fmul reassoc nsz arcp contract afn float %i.apz, %i.aon
  %i.aqb = fadd reassoc nsz arcp contract afn float %i.aqa, %.sroa.0.0.copyload
  br label %filmic_spline.exit.2.i

bb.bn:                                            ; preds = %bb.bk
  %i.aqc = fsub reassoc nsz arcp contract afn float %.sroa.15305.0.copyload, %i.aon ; 2 uses
  %i.aqd = fmul reassoc nsz arcp contract afn float %i.aqc, %.sroa.6301.0.copyload
  %i.aqe = fadd reassoc nsz arcp contract afn float %i.aqd, 1.000000e+00
  %i.aqf = fmul reassoc nsz arcp contract afn float %i.aqe, %i.aqc ; 2 uses
  %i.aqg = fmul reassoc nsz arcp contract afn float %i.aqf, %.sroa.0.0.copyload
  %i.aqh = fadd reassoc nsz arcp contract afn float %i.aqf, %.sroa.9302.0.copyload
  %i.aqi = fdiv reassoc nsz arcp contract afn float %i.aqg, %i.aqh
  %i.aqj = fsub reassoc nsz arcp contract afn float %.sroa.11303.0.copyload, %i.aqi
  br label %filmic_spline.exit.2.i

filmic_spline.exit.2.i:                           ; preds = %bb.bn, %bb.bm, %bb.bl, %bb.bj, %bb.bi, %bb.bh, %bb.bf
  %.0.i.2.i = phi nsz float [ %i.aqb, %bb.bm ], [ %i.apt, %bb.bl ], [ %i.aqj, %bb.bn ], [ %i.apf, %bb.bi ], [ %i.aox, %bb.bh ], [ %i.apn, %bb.bj ], [ %i.aor, %bb.bf ]
  %.sroa.0.8.vec.insert54.i = insertelement <4 x float> %.sroa.0.4.vec.insert51.i, float %.0.i.2.i, i64 2
  %i.aqk = call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.0.8.vec.insert54.i, <4 x float> zeroinitializer)
  %i.aql = call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.aqk, <4 x float> splat (float 1.000000e+00))
  %bc.i = bitcast <4 x float> %i.aql to <4 x i32> ; 2 uses
  %i.aqm = and <4 x i32> %bc.i, splat (i32 8388607)
  %i.aqn = or disjoint <4 x i32> %i.aqm, splat (i32 1065353216)
  %i.aqo = bitcast <4 x i32> %i.aqn to <4 x float> ; 5 uses
  %i.aqp = lshr <4 x i32> %bc.i, splat (i32 23)
  %i.aqq = and <4 x i32> %i.aqp, splat (i32 255)
  %i.aqr = add nsw <4 x i32> %i.aqq, splat (i32 -127)
  %i.aqs = sitofp <4 x i32> %i.aqr to <4 x float>
  %i.aqt = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.aqo, splat (float f0x3D74552F)
  %i.aqu = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.aqt, splat (float f0xBEEE7397)
  %i.aqv = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.aqu, %i.aqo
  %i.aqw = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.aqv, splat (float f0x3FBD96DD)
  %i.aqx = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.aqw, %i.aqo
  %i.aqy = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.aqx, splat (float f0xC02153F6)
  %i.aqz = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.aqy, %i.aqo
  %i.ara = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.aqz, splat (float f0x4038D96C)
  %i.arb = fadd fast <4 x float> %i.aqo, splat (float -1.000000e+00)
  %i.arc = fmul reassoc nsz arcp contract afn <4 x float> %i.ara, %i.arb
  %i.ard = fadd reassoc nsz arcp contract afn <4 x float> %i.arc, %i.aqs
  %i.are = fmul reassoc nsz arcp contract afn <4 x float> %i.ard, %i.aiv
  %i.arf = call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.are, <4 x float> splat (float 1.290000e+02))
  %i.arg = call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.arf, <4 x float> splat (float f0xC2FDFFFF)) ; 2 uses
  %i.arh = fadd reassoc nsz arcp contract afn <4 x float> %i.arg, splat (float -5.000000e-01)
  %i.ari = call <4 x i32> @llvm.x86.sse2.cvtps2dq(<4 x float> %i.arh)
  %i.arj = sitofp reassoc nsz arcp contract afn <4 x i32> %i.ari to <4 x float> ; 2 uses
  %i.ark = fsub reassoc nsz arcp contract afn <4 x float> %i.arg, %i.arj ; 4 uses
  %i.arl = fptosi <4 x float> %i.arj to <4 x i32>
  %i.arm = shl <4 x i32> %i.arl, splat (i32 23)
  %i.arn = add <4 x i32> %i.arm, splat (i32 1065353216)
  %i.aro = fmul reassoc nsz arcp contract afn <4 x float> %i.ark, splat (float f0x3C5DBE69)
  %i.arp = fadd reassoc nsz arcp contract afn <4 x float> %i.aro, splat (float f0x3D5509F9)
  %i.arq = fmul reassoc nsz arcp contract afn <4 x float> %i.arp, %i.ark
  %i.arr = fadd reassoc nsz arcp contract afn <4 x float> %i.arq, splat (float f0x3E773CC5)
  %i.ars = fmul reassoc nsz arcp contract afn <4 x float> %i.arr, %i.ark
  %i.art = fadd reassoc nsz arcp contract afn <4 x float> %i.ars, splat (float f0x3F3168B3)
  %i.aru = fmul reassoc nsz arcp contract afn <4 x float> %i.art, %i.ark
  %i.arv = fadd reassoc nsz arcp contract afn <4 x float> %i.aru, splat (float f0x3F800016)
  %i.arw = bitcast <4 x i32> %i.arn to <4 x float>
  %i.arx = fmul reassoc nsz arcp contract afn <4 x float> %i.arv, %i.arw
  %i.ary = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.03843.i
  store <4 x float> %i.arx, ptr %i.ary, align 16, !tbaa !109, !alias.scope !341, !nontemporal !110
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #20, !noalias !340
  %i.arz = add nuw i64 %.03843.i, 4               ; 2 uses
  %i.asa = icmp ult i64 %i.arz, %i.aic
  br i1 %i.asa, label %bb.ag, label %filmic_split_v2_v3.exit

filmic_split_v2_v3.exit:                          ; preds = %filmic_spline.exit.2.i, %bb.af
  call void @llvm.x86.sse.sfence(), !noalias !340
  br label %.sink.split

bb.bo:                                            ; preds = %bb.ad
  %i.asb = load i32, ptr %i.al, align 4, !tbaa !68
  %i.asc = sext i32 %i.asb to i64
  %i.asd = load i32, ptr %i.ao, align 4, !tbaa !69
  %i.ase = sext i32 %i.asd to i64
  call fastcc void @filmic_split_v4(ptr noundef %.1192, ptr noundef %3, ptr noundef %i.ai, ptr noundef %i.ak, ptr noundef nonnull %i.af, ptr noundef nonnull byval(%struct.dt_iop_filmic_rgb_spline_t) align 16 %i.yj, i64 noundef %i.asc, i64 noundef %i.ase, float noundef %i.yr, float noundef %i.yp)
  br label %.sink.split

bb.bp:                                            ; preds = %bb.ac
  switch i32 %i.yt, label %.sink.split [
    i32 0, label %bb.bq
    i32 1, label %bb.ce
    i32 2, label %bb.ce
    i32 3, label %bb.cr
  ]

bb.bq:                                            ; preds = %bb.bp
  %i.asf = load i32, ptr %i.al, align 4, !tbaa !68
  %i.asg = sext i32 %i.asf to i64
  %i.ash = load i32, ptr %i.ao, align 4, !tbaa !69
  %i.asi = sext i32 %i.ash to i64
  call void @llvm.experimental.noalias.scope.decl(metadata !342)
  call void @llvm.experimental.noalias.scope.decl(metadata !343)
  %.sroa.0307.0.copyload = load float, ptr %i.yj, align 16 ; 3 uses
  %.sroa.6310.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 132
  %.sroa.6310.0.copyload = load float, ptr %.sroa.6310.0..sroa_idx, align 4 ; 3 uses
  %.sroa.9313.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 136
  %.sroa.9313.0.copyload = load float, ptr %.sroa.9313.0..sroa_idx, align 8
  %.sroa.10315.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 144
  %.sroa.10315.0.copyload = load float, ptr %.sroa.10315.0..sroa_idx, align 16 ; 3 uses
  %.sroa.11316.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 148
  %.sroa.11316.0.copyload = load float, ptr %.sroa.11316.0..sroa_idx, align 4 ; 3 uses
  %.sroa.14319.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 152
  %.sroa.14319.0.copyload = load float, ptr %.sroa.14319.0..sroa_idx, align 8
  %.sroa.15321.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 160
  %.sroa.15321.0.copyload = load float, ptr %.sroa.15321.0..sroa_idx, align 16 ; 3 uses
  %.sroa.18324.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 164
  %.sroa.18324.0.copyload = load float, ptr %.sroa.18324.0..sroa_idx, align 4 ; 3 uses
  %.sroa.21327.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 176
  %.sroa.21327.0.copyload = load float, ptr %.sroa.21327.0..sroa_idx, align 16 ; 3 uses
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 180
  %.sroa.24.0.copyload = load float, ptr %.sroa.24.0..sroa_idx, align 4 ; 3 uses
  %.sroa.25330.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 192
  %.sroa.25330.0.copyload = load float, ptr %.sroa.25330.0..sroa_idx, align 16
  %.sroa.26.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 196
  %.sroa.26.0.copyload = load float, ptr %.sroa.26.0..sroa_idx, align 4
  %.sroa.27331.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 208
  %.sroa.27331.0.copyload = load float, ptr %.sroa.27331.0..sroa_idx, align 16 ; 2 uses
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 212
  %.sroa.28.0.copyload = load float, ptr %.sroa.28.0..sroa_idx, align 4 ; 2 uses
  %.sroa.29332.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 256
  %.sroa.29332.0.copyload = load i32, ptr %.sroa.29332.0..sroa_idx, align 16
  %.sroa.30.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 260
  %.sroa.30.0.copyload = load i32, ptr %.sroa.30.0..sroa_idx, align 4
  %i.asj = shl nsw i64 %i.asg, 2
  %i.ask = mul i64 %i.asj, %i.asi                 ; 2 uses
  %.not71.i = icmp eq i64 %i.ask, 0
  br i1 %.not71.i, label %filmic_chroma_v1.exit, label %.lr.ph.i245

.lr.ph.i245:                                      ; preds = %bb.bq
  %i.asl = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.asm = load float, ptr %i.asl, align 8, !tbaa !116, !noalias !344
  %i.asn = getelementptr inbounds nuw i8, ptr %i.af, i64 12
  %i.aso = load float, ptr %i.asn, align 4, !tbaa !117, !noalias !344
  %i.asp = getelementptr inbounds nuw i8, ptr %i.af, i64 40
  %i.asq = load float, ptr %i.asp, align 8, !tbaa !118, !noalias !344
  %i.asr = getelementptr inbounds nuw i8, ptr %i.af, i64 56
  %i.ass = load <2 x float>, ptr %i.asr, align 8, !tbaa !13, !noalias !344
  %i.ast = getelementptr inbounds nuw i8, ptr %i.af, i64 44
  %i.asu = load float, ptr %i.ast, align 4, !tbaa !119, !noalias !344
  %.not.i246 = icmp eq ptr %i.ai, null
  %i.asv = getelementptr inbounds nuw i8, ptr %i.ai, i64 576
  %i.asw = getelementptr inbounds nuw i8, ptr %i.ai, i64 712
  %i.asx = getelementptr inbounds nuw i8, ptr %i.ai, i64 768
  %i.asy = getelementptr inbounds nuw i8, ptr %i.ai, i64 704
  %i.asz = getelementptr inbounds nuw i8, ptr %i.ai, i64 852
  %i.ata = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.asm
  %i.atb = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.asq
  %i.atc = fdiv reassoc nsz arcp contract afn <2 x float> splat (float 1.000000e+00), %i.ass
  %i.atd = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.asu
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %filmic_spline.exit, %.lr.ph.i245
  %.06070.i = phi i64 [ 0, %.lr.ph.i245 ], [ %i.axq, %filmic_spline.exit ] ; 3 uses
  %i.ate = getelementptr inbounds nuw [4 x i8], ptr %.1192, i64 %.06070.i ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #20, !noalias !344
  %i.atf = call reassoc nsz arcp contract afn fastcc float @get_pixel_norm(ptr noundef readonly %i.ate, i32 noundef range(i32 1, 0) %i.ahp, ptr noundef readonly %i.ai), !noalias !343 ; 2 uses
  %i.atg = fcmp reassoc nsz arcp contract afn ogt float %i.atf, f0x37800000
  %spec.select.i247 = select reassoc nsz arcp contract afn i1 %i.atg, float %i.atf, float f0x37800000 ; 2 uses
  %i.ath = load <4 x float>, ptr %i.ate, align 4, !tbaa !13, !alias.scope !342
  %i.ati = insertelement <4 x float> poison, float %spec.select.i247, i64 0
  %i.atj = shufflevector <4 x float> %i.ati, <4 x float> poison, <4 x i32> zeroinitializer
  %i.atk = fdiv reassoc nsz arcp contract afn <4 x float> %i.ath, %i.atj ; 5 uses
  %i.atl = extractelement <4 x float> %i.atk, i64 0 ; 2 uses
  %i.atm = extractelement <4 x float> %i.atk, i64 1 ; 2 uses
  %i.atn = fcmp reassoc nsz arcp contract afn olt float %i.atl, %i.atm
  %i.ato = select reassoc nsz arcp contract afn i1 %i.atn, float %i.atl, float %i.atm ; 2 uses
  %i.atp = extractelement <4 x float> %i.atk, i64 2 ; 2 uses
  %i.atq = fcmp reassoc nsz arcp contract afn olt float %i.ato, %i.atp
  %..i = select reassoc nsz arcp contract afn i1 %i.atq, float %i.ato, float %i.atp ; 2 uses
  %i.atr = fcmp reassoc nsz arcp contract afn olt float %..i, 0.000000e+00
  %i.ats = insertelement <4 x float> poison, float %..i, i64 0
  %i.att = shufflevector <4 x float> %i.ats, <4 x float> poison, <4 x i32> zeroinitializer
  %i.atu = fsub reassoc nsz arcp contract afn <4 x float> %i.atk, %i.att
  %i.atv = select i1 %i.atr, <4 x float> %i.atu, <4 x float> %i.atk
  %i.atw = fmul reassoc nsz arcp contract afn float %spec.select.i247, %i.ata
  %i.atx = call reassoc nsz arcp contract afn float @llvm.log2.f32(float %i.atw)
  %i.aty = fsub reassoc nsz arcp contract afn float %i.atx, %i.aso
  %i.atz = fmul reassoc nsz arcp contract afn float %i.aty, %i.atb ; 3 uses
  %i.aua = fcmp reassoc nsz arcp contract afn ogt float %i.atz, 1.000000e+00
  %i.aub = fcmp reassoc nsz arcp contract afn olt float %i.atz, f0x37800000
  %i.auc = select reassoc nsz arcp contract afn i1 %i.aub, float f0x37800000, float %i.atz
  %i.aud = select reassoc nsz arcp contract afn i1 %i.aua, float 1.000000e+00, float %i.auc ; 22 uses
  %i.aue = insertelement <4 x float> poison, float %i.aud, i64 0
  %i.auf = shufflevector <4 x float> %i.aue, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.aug = fmul reassoc nsz arcp contract afn <4 x float> %i.atv, %i.auf ; 5 uses
  store <4 x float> %i.aug, ptr %i.k, align 16, !tbaa !13, !noalias !344
  %i.auh = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.aud
  %i.aui = insertelement <2 x float> poison, float %i.aud, i64 0
  %i.auj = insertelement <2 x float> %i.aui, float %i.auh, i64 1 ; 2 uses
  %i.auk = fmul reassoc nsz arcp contract afn <2 x float> %i.auj, %i.auj
  %i.aul = fmul reassoc nsz arcp contract afn <2 x float> %i.auk, splat (float -5.000000e-01)
  %i.aum = fmul reassoc nsz arcp contract afn <2 x float> %i.aul, %i.atc
  %i.aun = call reassoc nsz arcp contract afn <2 x float> @llvm.exp.v2f32(<2 x float> %i.aum)
  %i.auo = call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v2f32(float 0.000000e+00, <2 x float> %i.aun)
  %i.aup = fmul reassoc nsz arcp contract afn float %i.auo, %i.atd
  %i.auq = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.aup, float 0.000000e+00)
  %i.aur = call reassoc nnan nsz arcp contract afn float @llvm.minnum.f32(float %i.auq, float 1.000000e+00)
  %i.aus = fsub fast float 1.000000e+00, %i.aur
  br i1 %.not.i246, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %.loopexit.i
  %i.aut = load i32, ptr %i.asy, align 64, !tbaa !121, !noalias !344
  %i.auu = load i32, ptr %i.asz, align 4, !tbaa !122, !noalias !344
  %i.auv = call reassoc nsz arcp contract afn fastcc float @dt_ioppr_get_rgb_matrix_luminance(ptr noundef nonnull %i.k, ptr noundef readonly %i.asv, ptr noundef readonly %i.asw, ptr noundef readonly %i.asx, i32 noundef %i.aut, i32 noundef %i.auu), !noalias !344
  br label %bb.bt

bb.bs:                                            ; preds = %.loopexit.i
  %i.auw = extractelement <4 x float> %i.aug, i64 0
  %i.aux = fmul reassoc nsz arcp contract afn float %i.auw, f0x3E63D838
  %i.auy = extractelement <4 x float> %i.aug, i64 1
  %i.auz = fmul reassoc nsz arcp contract afn float %i.auy, f0x3F37855B
  %i.ava = extractelement <4 x float> %i.aug, i64 2
  %i.avb = fmul reassoc nsz arcp contract afn float %i.ava, 6.061690e-02
  %i.avc = fadd reassoc nsz arcp contract afn float %i.auz, %i.avb
  %i.avd = fadd reassoc nsz arcp contract afn float %i.avc, %i.aux
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %bb.br
  %i.ave = phi reassoc nsz arcp contract afn float [ %i.auv, %bb.br ], [ %i.avd, %bb.bs ]
  %i.avf = insertelement <4 x float> poison, float %i.ave, i64 0
  %i.avg = shufflevector <4 x float> %i.avf, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.avh = fsub reassoc nsz arcp contract afn <4 x float> %i.aug, %i.avg
  %i.avi = insertelement <4 x float> poison, float %i.aus, i64 0
  %i.avj = shufflevector <4 x float> %i.avi, <4 x float> poison, <4 x i32> zeroinitializer
  %i.avk = fmul reassoc nsz arcp contract afn <4 x float> %i.avh, %i.avj
  %i.avl = fadd reassoc nsz arcp contract afn <4 x float> %i.avk, %i.avg
  %i.avm = fcmp reassoc nsz arcp contract afn olt float %i.aud, %.sroa.27331.0.copyload
  br i1 %i.avm, label %bb.bu, label %bb.by

bb.bu:                                            ; preds = %bb.bt
  switch i32 %.sroa.29332.0.copyload, label %bb.bx [
    i32 0, label %bb.bv
    i32 1, label %bb.bw
  ]

bb.bv:                                            ; preds = %bb.bu
  %i.avn = fmul reassoc nsz arcp contract afn float %i.aud, %.sroa.25330.0.copyload
  %i.avo = fadd reassoc nsz arcp contract afn float %i.avn, %.sroa.21327.0.copyload
  %i.avp = fmul reassoc nsz arcp contract afn float %i.avo, %i.aud
  %i.avq = fadd reassoc nsz arcp contract afn float %i.avp, %.sroa.15321.0.copyload
  %i.avr = fmul reassoc nsz arcp contract afn float %i.avq, %i.aud
  %i.avs = fadd reassoc nsz arcp contract afn float %i.avr, %.sroa.10315.0.copyload
  %i.avt = fmul reassoc nsz arcp contract afn float %i.avs, %i.aud
  %i.avu = fadd reassoc nsz arcp contract afn float %i.avt, %.sroa.0307.0.copyload
  br label %filmic_spline.exit

bb.bw:                                            ; preds = %bb.bu
  %i.avv = fmul reassoc nsz arcp contract afn float %i.aud, %.sroa.21327.0.copyload
  %i.avw = fadd reassoc nsz arcp contract afn float %i.avv, %.sroa.15321.0.copyload
  %i.avx = fmul reassoc nsz arcp contract afn float %i.avw, %i.aud
  %i.avy = fadd reassoc nsz arcp contract afn float %i.avx, %.sroa.10315.0.copyload
  %i.avz = fmul reassoc nsz arcp contract afn float %i.avy, %i.aud
  %i.awa = fadd reassoc nsz arcp contract afn float %i.avz, %.sroa.0307.0.copyload
  br label %filmic_spline.exit

bb.bx:                                            ; preds = %bb.bu
  %i.awb = fsub reassoc nsz arcp contract afn float %.sroa.27331.0.copyload, %i.aud ; 2 uses
  %i.awc = fmul reassoc nsz arcp contract afn float %i.awb, %.sroa.10315.0.copyload
  %i.awd = fadd reassoc nsz arcp contract afn float %i.awc, 1.000000e+00
  %i.awe = fmul reassoc nsz arcp contract afn float %i.awd, %i.awb ; 2 uses
  %i.awf = fmul reassoc nsz arcp contract afn float %i.awe, %.sroa.0307.0.copyload
  %i.awg = fadd reassoc nsz arcp contract afn float %i.awe, %.sroa.15321.0.copyload
  %i.awh = fdiv reassoc nsz arcp contract afn float %i.awf, %i.awg
  %i.awi = fsub reassoc nsz arcp contract afn float %.sroa.21327.0.copyload, %i.awh
  br label %filmic_spline.exit

bb.by:                                            ; preds = %bb.bt
  %i.awj = fcmp reassoc nsz arcp contract afn ogt float %i.aud, %.sroa.28.0.copyload
  br i1 %i.awj, label %bb.bz, label %bb.cd

bb.bz:                                            ; preds = %bb.by
  switch i32 %.sroa.30.0.copyload, label %bb.cc [
    i32 0, label %bb.ca
    i32 1, label %bb.cb
  ]

bb.ca:                                            ; preds = %bb.bz
  %i.awk = fmul reassoc nsz arcp contract afn float %i.aud, %.sroa.26.0.copyload
  %i.awl = fadd reassoc nsz arcp contract afn float %i.awk, %.sroa.24.0.copyload
  %i.awm = fmul reassoc nsz arcp contract afn float %i.awl, %i.aud
  %i.awn = fadd reassoc nsz arcp contract afn float %i.awm, %.sroa.18324.0.copyload
  %i.awo = fmul reassoc nsz arcp contract afn float %i.awn, %i.aud
  %i.awp = fadd reassoc nsz arcp contract afn float %i.awo, %.sroa.11316.0.copyload
  %i.awq = fmul reassoc nsz arcp contract afn float %i.awp, %i.aud
  %i.awr = fadd reassoc nsz arcp contract afn float %i.awq, %.sroa.6310.0.copyload
  br label %filmic_spline.exit

bb.cb:                                            ; preds = %bb.bz
  %i.aws = fmul reassoc nsz arcp contract afn float %i.aud, %.sroa.24.0.copyload
  %i.awt = fadd reassoc nsz arcp contract afn float %i.aws, %.sroa.18324.0.copyload
  %i.awu = fmul reassoc nsz arcp contract afn float %i.awt, %i.aud
  %i.awv = fadd reassoc nsz arcp contract afn float %i.awu, %.sroa.11316.0.copyload
  %i.aww = fmul reassoc nsz arcp contract afn float %i.awv, %i.aud
  %i.awx = fadd reassoc nsz arcp contract afn float %i.aww, %.sroa.6310.0.copyload
  br label %filmic_spline.exit

bb.cc:                                            ; preds = %bb.bz
  %i.awy = fsub reassoc nsz arcp contract afn float %i.aud, %.sroa.28.0.copyload ; 2 uses
  %i.awz = fmul reassoc nsz arcp contract afn float %i.awy, %.sroa.11316.0.copyload
  %i.axa = fadd reassoc nsz arcp contract afn float %i.awz, 1.000000e+00
  %i.axb = fmul reassoc nsz arcp contract afn float %i.axa, %i.awy ; 2 uses
  %i.axc = fmul reassoc nsz arcp contract afn float %i.axb, %.sroa.6310.0.copyload
  %i.axd = fadd reassoc nsz arcp contract afn float %i.axb, %.sroa.18324.0.copyload
  %i.axe = fdiv reassoc nsz arcp contract afn float %i.axc, %i.axd
  %i.axf = fadd reassoc nsz arcp contract afn float %i.axe, %.sroa.24.0.copyload
  br label %filmic_spline.exit

bb.cd:                                            ; preds = %bb.by
  %i.axg = fmul reassoc nsz arcp contract afn float %i.aud, %.sroa.14319.0.copyload
  %i.axh = fadd reassoc nsz arcp contract afn float %i.axg, %.sroa.9313.0.copyload
  br label %filmic_spline.exit

filmic_spline.exit:                               ; preds = %bb.bv, %bb.bw, %bb.bx, %bb.ca, %bb.cb, %bb.cc, %bb.cd
  %.0.i = phi nsz float [ %i.avu, %bb.bv ], [ %i.awa, %bb.bw ], [ %i.awi, %bb.bx ], [ %i.awr, %bb.ca ], [ %i.awx, %bb.cb ], [ %i.axf, %bb.cc ], [ %i.axh, %bb.cd ]
  %i.axi = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %.0.i, float 0.000000e+00)
  %i.axj = call reassoc nsz arcp contract afn noundef float @llvm.minnum.f32(float %i.axi, float 1.000000e+00)
  %i.axk = call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.axj, float %i.yo)
  %i.axl = insertelement <4 x float> poison, float %i.axk, i64 0
  %i.axm = shufflevector <4 x float> %i.axl, <4 x float> poison, <4 x i32> zeroinitializer
  %i.axn = fmul reassoc nsz arcp contract afn <4 x float> %i.axm, %i.avl
  %i.axo = fdiv reassoc nsz arcp contract afn <4 x float> %i.axn, %i.auf
  %i.axp = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.06070.i
  store <4 x float> %i.axo, ptr %i.axp, align 16, !tbaa !109, !alias.scope !345, !nontemporal !110
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #20, !noalias !344
  %i.axq = add nuw i64 %.06070.i, 4               ; 2 uses
  %i.axr = icmp ult i64 %i.axq, %i.ask
  br i1 %i.axr, label %.loopexit.i, label %filmic_chroma_v1.exit

filmic_chroma_v1.exit:                            ; preds = %filmic_spline.exit, %bb.bq
  call void @llvm.x86.sse.sfence(), !noalias !344
  br label %.sink.split

bb.ce:                                            ; preds = %bb.bp, %bb.bp
  %i.axs = load i32, ptr %i.al, align 4, !tbaa !68
  %i.axt = sext i32 %i.axs to i64
  %i.axu = load i32, ptr %i.ao, align 4, !tbaa !69
  %i.axv = sext i32 %i.axu to i64
  call void @llvm.experimental.noalias.scope.decl(metadata !346)
  call void @llvm.experimental.noalias.scope.decl(metadata !347)
  %.sroa.0333.0.copyload = load float, ptr %i.yj, align 16 ; 3 uses
  %.sroa.6336.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 132
  %.sroa.6336.0.copyload = load float, ptr %.sroa.6336.0..sroa_idx, align 4 ; 3 uses
  %.sroa.9339.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 136
  %.sroa.9339.0.copyload = load float, ptr %.sroa.9339.0..sroa_idx, align 8
  %.sroa.10341.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 144
  %.sroa.10341.0.copyload = load float, ptr %.sroa.10341.0..sroa_idx, align 16 ; 3 uses
  %.sroa.11342.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 148
  %.sroa.11342.0.copyload = load float, ptr %.sroa.11342.0..sroa_idx, align 4 ; 3 uses
  %.sroa.14345.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 152
  %.sroa.14345.0.copyload = load float, ptr %.sroa.14345.0..sroa_idx, align 8
  %.sroa.15347.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 160
  %.sroa.15347.0.copyload = load float, ptr %.sroa.15347.0..sroa_idx, align 16 ; 3 uses
  %.sroa.18350.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 164
  %.sroa.18350.0.copyload = load float, ptr %.sroa.18350.0..sroa_idx, align 4 ; 3 uses
  %.sroa.21354.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 176
  %.sroa.21354.0.copyload = load float, ptr %.sroa.21354.0..sroa_idx, align 16 ; 3 uses
  %.sroa.24357.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 180
  %.sroa.24357.0.copyload = load float, ptr %.sroa.24357.0..sroa_idx, align 4 ; 3 uses
  %.sroa.25359.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 192
  %.sroa.25359.0.copyload = load float, ptr %.sroa.25359.0..sroa_idx, align 16
  %.sroa.26360.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 196
  %.sroa.26360.0.copyload = load float, ptr %.sroa.26360.0..sroa_idx, align 4
  %.sroa.27362.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 208
  %.sroa.27362.0.copyload = load float, ptr %.sroa.27362.0..sroa_idx, align 16 ; 2 uses
  %.sroa.28363.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 212
  %.sroa.28363.0.copyload = load float, ptr %.sroa.28363.0..sroa_idx, align 4 ; 2 uses
  %.sroa.29365.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 256
  %.sroa.29365.0.copyload = load i32, ptr %.sroa.29365.0..sroa_idx, align 16
  %.sroa.30366.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 260
  %.sroa.30366.0.copyload = load i32, ptr %.sroa.30366.0..sroa_idx, align 4
  %i.axw = shl nsw i64 %i.axt, 2
  %i.axx = mul i64 %i.axw, %i.axv                 ; 2 uses
  %.not.i254 = icmp eq i64 %i.axx, 0
  br i1 %.not.i254, label %filmic_chroma_v2_v3.exit, label %.lr.ph.i255

.lr.ph.i255:                                      ; preds = %bb.ce
  %i.axy = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.axz = load float, ptr %i.axy, align 8, !tbaa !116, !noalias !348
  %i.aya = getelementptr inbounds nuw i8, ptr %i.af, i64 12
  %i.ayb = load float, ptr %i.aya, align 4, !tbaa !117, !noalias !348
  %i.ayc = getelementptr inbounds nuw i8, ptr %i.af, i64 40
  %i.ayd = load float, ptr %i.ayc, align 8, !tbaa !118, !noalias !348
  %i.aye = getelementptr inbounds nuw i8, ptr %i.af, i64 56
  %i.ayf = load <2 x float>, ptr %i.aye, align 8, !tbaa !13, !noalias !348
  %i.ayg = getelementptr inbounds nuw i8, ptr %i.af, i64 44
  %i.ayh = load float, ptr %i.ayg, align 4, !tbaa !119, !noalias !348 ; 3 uses
  %i.ayi = call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.ayh)
  %invariant.op.i = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.ayh
  %i.ayj = icmp eq i32 %i.yt, 2
  %i.ayk = fdiv reassoc nsz arcp contract afn float -5.000000e-01, %i.ayi
  %i.ayl = insertelement <2 x float> poison, float %i.ayk, i64 0
  %i.aym = shufflevector <2 x float> %i.ayl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ayn = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.axz
  %i.ayo = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.ayd
  %i.ayp = fdiv reassoc nsz arcp contract afn <2 x float> splat (float 1.000000e+00), %i.ayf
  br label %.loopexit90.i

.loopexit90.i:                                    ; preds = %.loopexit.i265, %.lr.ph.i255
end_hunk_1
begin_hunk_2_@reconstruct_highlights:bb.a
  %i.qa = fcmp reassoc nsz arcp contract afn ogt float %i.px, %i.pz
  %i.qb = extractelement <2 x float> %i.pu, i64 1
  %i.qc = select reassoc nsz arcp contract afn i1 %i.qa, float %i.pw, float %i.qb ; 2 uses
  %i.qd = load <4 x float>, ptr %i.ph, align 16, !tbaa !13, !alias.scope !391 ; 3 uses
  %i.qe = load float, ptr %i.pl, align 8, !tbaa !13, !alias.scope !391
  %i.qf = load float, ptr %i.pk, align 4, !tbaa !13, !alias.scope !391
  %i.qg = extractelement <4 x float> %i.qd, i64 0
  %i.qh = fadd reassoc nsz arcp contract afn float %i.qf, %i.qg
  %i.qi = fadd reassoc nsz arcp contract afn float %i.qh, %i.qe
  %i.qj = fmul reassoc nsz arcp contract afn float %i.qi, f0x3EAAAAAB
  %i.qk = insertelement <4 x float> poison, float %i.qc, i64 0
  %i.ql = insertelement <4 x float> %i.qk, float %i.qj, i64 1 ; 2 uses
  %i.qm = shufflevector <4 x float> %i.ql, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.qn = shufflevector <4 x float> %i.pm, <4 x float> %i.qd, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  %i.qo = fadd reassoc nsz arcp contract afn <4 x float> %i.qm, %i.qn
  %i.qp = fmul reassoc nsz arcp contract afn <4 x float> %i.qo, %i.em
  %i.qq = shufflevector <4 x float> %i.ql, <4 x float> %i.pm, <4 x i32> <i32 1, i32 0, i32 1, i32 7>
  %i.qr = shufflevector <4 x float> %i.qd, <4 x float> %i.pm, <4 x i32> <i32 0, i32 5, i32 2, i32 poison>
  %i.qs = insertelement <4 x float> %i.qr, float %i.qc, i64 3
  %i.qt = fadd reassoc nsz arcp contract afn <4 x float> %i.qq, %i.qs
  %i.qu = fmul reassoc nsz arcp contract afn <4 x float> %i.qt, %i.ek
  %i.qv = fadd reassoc nsz arcp contract afn <4 x float> %i.qu, %i.qp ; 2 uses
  br i1 %i.mx, label %.split.us.preheader.i128, label %.preheader.i124

.split.us.preheader.i128:                         ; preds = %scalar.ph61
  %i.qw = getelementptr [4 x i8], ptr %.0106, i64 %.04956.i
  %i.qx = load <4 x float>, ptr %i.qw, align 16, !tbaa !13, !alias.scope !392
  %i.qy = fadd reassoc nsz arcp contract afn <4 x float> %i.qx, %i.qv
  br label %.preheader.i124

.preheader.i124:                                  ; preds = %.split.us.preheader.i128, %scalar.ph61
  %i.qz = phi <4 x float> [ %i.qy, %.split.us.preheader.i128 ], [ %i.qv, %scalar.ph61 ]
  %i.ra = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.04956.i ; 2 uses
  %i.rb = insertelement <4 x float> poison, float %i.pg, i64 0
  %i.rc = shufflevector <4 x float> %i.rb, <4 x float> poison, <4 x i32> zeroinitializer
  %i.rd = fmul reassoc nsz arcp contract afn <4 x float> %i.qz, %i.rc
  %i.re = load <4 x float>, ptr %i.ra, align 4, !tbaa !13, !alias.scope !395
  %i.rf = fadd reassoc nsz arcp contract afn <4 x float> %i.re, %i.rd
  store <4 x float> %i.rf, ptr %i.ra, align 4, !tbaa !13, !alias.scope !395
  %i.rg = add nuw i64 %.04956.i, 4                ; 2 uses
  %i.rh = icmp ult i64 %i.rg, %i.hv
  br i1 %i.rh, label %scalar.ph61, label %wavelets_reconstruct_RGB.exit, !llvm.loop !378

wavelets_reconstruct_RGB.exit:                    ; preds = %.preheader.i124, %.preheader.i, %middle.block105, %middle.block, %bb.f, %bb.e
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond13.not = icmp eq i64 %indvars.iv.next, %i.eh
  br i1 %exitcond13.not, label %.loopexit, label %bb.d

.loopexit:                                        ; preds = %wavelets_reconstruct_RGB.exit, %bb.b
  %.0109 = phi i32 [ 0, %bb.b ], [ 1, %wavelets_reconstruct_RGB.exit ]
  tail call void @free(ptr noundef %i.az) #20
  tail call void @free(ptr noundef %i.ae) #20
  tail call void @free(ptr noundef %i.al) #20
  tail call void @free(ptr noundef %i.as) #20
  ret i32 %.0109
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.pow.f32(float, float) #9

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @filmic_split_v1(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(address_is_null) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly byval(%struct.dt_iop_filmic_rgb_spline_t) align 16 captures(none) %4, i64 noundef range(i64 -2147483648, 2147483648) %5, i64 noundef range(i64 -2147483648, 2147483648) %6) unnamed_addr #11 {
bb.a:
  %i.a = alloca [4 x float], align 16             ; 5 uses
  %i.b = shl nsw i64 %5, 2
  %i.c = mul i64 %i.b, %6                         ; 2 uses
  %.not44 = icmp eq i64 %i.c, 0
  br i1 %.not44, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.e = load float, ptr %i.d, align 16, !tbaa !115
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.g = load float, ptr %i.f, align 8, !tbaa !116 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.i = load float, ptr %i.h, align 4, !tbaa !117 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.k = load float, ptr %i.j, align 8, !tbaa !118 ; 2 uses
  %.not = icmp eq ptr %2, null
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 576
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 712
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 768
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 704
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 852
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.s = load <2 x float>, ptr %i.r, align 8, !tbaa !13
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.u = load float, ptr %i.t, align 4, !tbaa !119
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.z = load float, ptr %i.y, align 16, !tbaa !124 ; 6 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 84
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !125 ; 6 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ad = load float, ptr %i.ac, align 8          ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.af = load float, ptr %i.ae, align 8          ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 132
  %i.ah = load i32, ptr %i.ag, align 4            ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 52
  %i.aj = load float, ptr %i.ai, align 4          ; 9 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.al = load float, ptr %i.ak, align 4          ; 9 uses
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 20
  %i.an = load float, ptr %i.am, align 4          ; 9 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 36
  %i.ap = load float, ptr %i.ao, align 4          ; 9 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 68
  %i.ar = load float, ptr %i.aq, align 4          ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 128
  %i.au = load i32, ptr %i.at, align 16           ; 3 uses
  %i.av = load float, ptr %i.as, align 16         ; 9 uses
  %i.aw = load float, ptr %4, align 16            ; 9 uses
  %i.ax = load float, ptr %i.v, align 16          ; 9 uses
  %i.ay = load float, ptr %i.w, align 16          ; 9 uses
  %i.az = load float, ptr %i.x, align 16          ; 3 uses
  %i.ba = insertelement <4 x float> poison, float %i.e, i64 0
  %i.bb = shufflevector <4 x float> %i.ba, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bc = insertelement <2 x float> poison, float %i.g, i64 0
  %i.bd = shufflevector <2 x float> %i.bc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.be = insertelement <2 x float> poison, float %i.i, i64 0
  %i.bf = shufflevector <2 x float> %i.be, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bg = insertelement <2 x float> poison, float %i.k, i64 0
  %i.bh = shufflevector <2 x float> %i.bg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bi = fdiv reassoc nsz arcp contract afn <2 x float> splat (float 1.000000e+00), %i.bd
  %i.bj = fdiv reassoc nsz arcp contract afn <2 x float> splat (float 1.000000e+00), %i.bh
  %i.bk = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.g
  %i.bl = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.k
  %i.bm = fdiv reassoc nsz arcp contract afn <2 x float> splat (float 1.000000e+00), %i.s
  %i.bn = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.u
  br label %bb.b

._crit_edge:                                      ; preds = %filmic_spline.exit.2, %bb.a
  tail call void @llvm.x86.sse.sfence()
  ret void

bb.b:                                             ; preds = %.lr.ph, %filmic_spline.exit.2
  %.03843 = phi i64 [ 0, %.lr.ph ], [ %i.kx, %filmic_spline.exit.2 ] ; 3 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.03843 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.bp = load <2 x float>, ptr %i.bo, align 4, !tbaa !13 ; 2 uses
  %i.bq = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.bp, splat (float f0x37800000)
  %i.br = select <2 x i1> %i.bq, <2 x float> %i.bp, <2 x float> splat (float f0x37800000)
  %i.bs = fmul reassoc nsz arcp contract afn <2 x float> %i.br, %i.bi
  %i.bt = tail call reassoc nsz arcp contract afn <2 x float> @llvm.log2.v2f32(<2 x float> %i.bs)
  %i.bu = fsub reassoc nsz arcp contract afn <2 x float> %i.bt, %i.bf
  %i.bv = fmul reassoc nsz arcp contract afn <2 x float> %i.bu, %i.bj ; 3 uses
  %i.bw = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.bv, splat (float 1.000000e+00)
  %i.bx = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.bv, splat (float f0x37800000)
  %i.by = select <2 x i1> %i.bx, <2 x float> splat (float f0x37800000), <2 x float> %i.bv
  %i.bz = select <2 x i1> %i.bw, <2 x float> splat (float 1.000000e+00), <2 x float> %i.by ; 5 uses
  store <2 x float> %i.bz, ptr %i.a, align 16, !tbaa !13
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.cb = load float, ptr %i.ca, align 4, !tbaa !13 ; 2 uses
  %i.cc = fcmp reassoc nsz arcp contract afn ogt float %i.cb, f0x37800000
  %spec.select.2 = select reassoc nsz arcp contract afn i1 %i.cc, float %i.cb, float f0x37800000
  %i.cd = fmul reassoc nsz arcp contract afn float %spec.select.2, %i.bk
  %i.ce = tail call reassoc nsz arcp contract afn float @llvm.log2.f32(float %i.cd)
  %i.cf = fsub reassoc nsz arcp contract afn float %i.ce, %i.i
  %i.cg = fmul reassoc nsz arcp contract afn float %i.cf, %i.bl ; 3 uses
  %i.ch = fcmp reassoc nsz arcp contract afn ogt float %i.cg, 1.000000e+00
  %i.ci = fcmp reassoc nsz arcp contract afn olt float %i.cg, f0x37800000
  %i.cj = select reassoc nsz arcp contract afn i1 %i.ci, float f0x37800000, float %i.cg
  %i.ck = select reassoc nsz arcp contract afn i1 %i.ch, float 1.000000e+00, float %i.cj ; 3 uses
  store float %i.ck, ptr %i.q, align 8, !tbaa !13
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.cl = load i32, ptr %i.o, align 64, !tbaa !121
  %i.cm = load i32, ptr %i.p, align 4, !tbaa !122
  %i.cn = call reassoc nsz arcp contract afn fastcc float @dt_ioppr_get_rgb_matrix_luminance(ptr noundef nonnull %i.a, ptr noundef %i.l, ptr noundef %i.m, ptr noundef %i.n, i32 noundef %i.cl, i32 noundef %i.cm)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.co = extractelement <2 x float> %i.bz, i64 0
  %i.cp = fmul reassoc nsz arcp contract afn float %i.co, f0x3E63D838
  %i.cq = extractelement <2 x float> %i.bz, i64 1
  %i.cr = fmul reassoc nsz arcp contract afn float %i.cq, f0x3F37855B
  %i.cs = fadd reassoc nsz arcp contract afn float %i.cr, %i.cp
  %i.ct = fmul reassoc nsz arcp contract afn float %i.ck, 6.061690e-02
  %i.cu = fadd reassoc nsz arcp contract afn float %i.cs, %i.ct
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.cv = phi reassoc nsz arcp contract afn float [ %i.cn, %bb.c ], [ %i.cu, %bb.d ] ; 8 uses
  %i.cw = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.cv
  %i.cx = insertelement <2 x float> poison, float %i.cv, i64 0
  %i.cy = insertelement <2 x float> %i.cx, float %i.cw, i64 1 ; 2 uses
  %i.cz = fmul reassoc nsz arcp contract afn <2 x float> %i.cy, %i.cy
  %i.da = fmul reassoc nsz arcp contract afn <2 x float> %i.cz, splat (float -5.000000e-01)
  %i.db = fmul reassoc nsz arcp contract afn <2 x float> %i.da, %i.bm
  %i.dc = tail call reassoc nsz arcp contract afn <2 x float> @llvm.exp.v2f32(<2 x float> %i.db)
  %i.dd = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v2f32(float 0.000000e+00, <2 x float> %i.dc)
  %i.de = fmul reassoc nsz arcp contract afn float %i.dd, %i.bn
  %i.df = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.de, float 0.000000e+00)
  %i.dg = tail call reassoc nnan nsz arcp contract afn float @llvm.minnum.f32(float %i.df, float 1.000000e+00)
  %i.dh = fsub fast float 1.000000e+00, %i.dg     ; 3 uses
  %i.di = extractelement <2 x float> %i.bz, i64 0
  %i.dj = fsub reassoc nsz arcp contract afn float %i.di, %i.cv
  %i.dk = fmul reassoc nsz arcp contract afn float %i.dj, %i.dh
  %i.dl = fadd reassoc nsz arcp contract afn float %i.dk, %i.cv ; 19 uses
  %i.dm = fcmp reassoc nsz arcp contract afn olt float %i.dl, %i.z
  br i1 %i.dm, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  switch i32 %i.au, label %bb.i [
    i32 0, label %bb.g
    i32 1, label %bb.h
  ]

bb.g:                                             ; preds = %bb.f
  %i.dn = fmul reassoc nsz arcp contract afn float %i.az, %i.dl
  %i.do = fadd reassoc nsz arcp contract afn float %i.dn, %i.ay
  %i.dp = fmul reassoc nsz arcp contract afn float %i.do, %i.dl
  %i.dq = fadd reassoc nsz arcp contract afn float %i.dp, %i.ax
  %i.dr = fmul reassoc nsz arcp contract afn float %i.dq, %i.dl
  %i.ds = fadd reassoc nsz arcp contract afn float %i.dr, %i.av
  %i.dt = fmul reassoc nsz arcp contract afn float %i.ds, %i.dl
  %i.du = fadd reassoc nsz arcp contract afn float %i.dt, %i.aw
  br label %filmic_spline.exit

bb.h:                                             ; preds = %bb.f
  %i.dv = fmul reassoc nsz arcp contract afn float %i.ay, %i.dl
  %i.dw = fadd reassoc nsz arcp contract afn float %i.dv, %i.ax
  %i.dx = fmul reassoc nsz arcp contract afn float %i.dw, %i.dl
  %i.dy = fadd reassoc nsz arcp contract afn float %i.dx, %i.av
  %i.dz = fmul reassoc nsz arcp contract afn float %i.dy, %i.dl
  %i.ea = fadd reassoc nsz arcp contract afn float %i.dz, %i.aw
  br label %filmic_spline.exit

bb.i:                                             ; preds = %bb.f
  %i.eb = fsub reassoc nsz arcp contract afn float %i.z, %i.dl ; 2 uses
  %i.ec = fmul reassoc nsz arcp contract afn float %i.av, %i.eb
  %i.ed = fadd reassoc nsz arcp contract afn float %i.ec, 1.000000e+00
  %i.ee = fmul reassoc nsz arcp contract afn float %i.ed, %i.eb ; 2 uses
  %i.ef = fmul reassoc nsz arcp contract afn float %i.aw, %i.ee
  %i.eg = fadd reassoc nsz arcp contract afn float %i.ax, %i.ee
  %i.eh = fdiv reassoc nsz arcp contract afn float %i.ef, %i.eg
  %i.ei = fsub reassoc nsz arcp contract afn float %i.ay, %i.eh
  br label %filmic_spline.exit

bb.j:                                             ; preds = %bb.e
  %i.ej = fcmp reassoc nsz arcp contract afn ogt float %i.dl, %i.ab
  br i1 %i.ej, label %bb.k, label %bb.o

bb.k:                                             ; preds = %bb.j
  switch i32 %i.ah, label %bb.n [
    i32 0, label %bb.l
    i32 1, label %bb.m
  ]

bb.l:                                             ; preds = %bb.k
  %i.ek = fmul reassoc nsz arcp contract afn float %i.ar, %i.dl
  %i.el = fadd reassoc nsz arcp contract afn float %i.ek, %i.aj
  %i.em = fmul reassoc nsz arcp contract afn float %i.el, %i.dl
  %i.en = fadd reassoc nsz arcp contract afn float %i.em, %i.ap
  %i.eo = fmul reassoc nsz arcp contract afn float %i.en, %i.dl
  %i.ep = fadd reassoc nsz arcp contract afn float %i.eo, %i.an
  %i.eq = fmul reassoc nsz arcp contract afn float %i.ep, %i.dl
  %i.er = fadd reassoc nsz arcp contract afn float %i.eq, %i.al
  br label %filmic_spline.exit

bb.m:                                             ; preds = %bb.k
  %i.es = fmul reassoc nsz arcp contract afn float %i.aj, %i.dl
  %i.et = fadd reassoc nsz arcp contract afn float %i.ap, %i.es
  %i.eu = fmul reassoc nsz arcp contract afn float %i.et, %i.dl
  %i.ev = fadd reassoc nsz arcp contract afn float %i.eu, %i.an
  %i.ew = fmul reassoc nsz arcp contract afn float %i.ev, %i.dl
  %i.ex = fadd reassoc nsz arcp contract afn float %i.ew, %i.al
  br label %filmic_spline.exit

bb.n:                                             ; preds = %bb.k
  %i.ey = fsub reassoc nsz arcp contract afn float %i.dl, %i.ab ; 2 uses
  %i.ez = fmul reassoc nsz arcp contract afn float %i.an, %i.ey
  %i.fa = fadd reassoc nsz arcp contract afn float %i.ez, 1.000000e+00
  %i.fb = fmul reassoc nsz arcp contract afn float %i.fa, %i.ey ; 2 uses
  %i.fc = fmul reassoc nsz arcp contract afn float %i.fb, %i.al
  %i.fd = fadd reassoc nsz arcp contract afn float %i.fb, %i.ap
  %i.fe = fdiv reassoc nsz arcp contract afn float %i.fc, %i.fd
  %i.ff = fadd reassoc nsz arcp contract afn float %i.fe, %i.aj
  br label %filmic_spline.exit

bb.o:                                             ; preds = %bb.j
  %i.fg = fmul reassoc nsz arcp contract afn float %i.af, %i.dl
  %i.fh = fadd reassoc nsz arcp contract afn float %i.fg, %i.ad
  br label %filmic_spline.exit

filmic_spline.exit:                               ; preds = %bb.g, %bb.h, %bb.i, %bb.l, %bb.m, %bb.n, %bb.o
  %.0.i = phi nsz float [ %i.du, %bb.g ], [ %i.ea, %bb.h ], [ %i.ei, %bb.i ], [ %i.er, %bb.l ], [ %i.ex, %bb.m ], [ %i.ff, %bb.n ], [ %i.fh, %bb.o ]
  %.sroa.0.0.vec.insert50 = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %.0.i, i64 0
  %i.fi = extractelement <2 x float> %i.bz, i64 1
  %i.fj = fsub reassoc nsz arcp contract afn float %i.fi, %i.cv
  %i.fk = fmul reassoc nsz arcp contract afn float %i.fj, %i.dh
  %i.fl = fadd reassoc nsz arcp contract afn float %i.fk, %i.cv ; 19 uses
  %i.fm = fcmp reassoc nsz arcp contract afn olt float %i.fl, %i.z
  br i1 %i.fm, label %bb.v, label %bb.p

bb.p:                                             ; preds = %filmic_spline.exit
  %i.fn = fcmp reassoc nsz arcp contract afn ogt float %i.fl, %i.ab
  br i1 %i.fn, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.fo = fmul reassoc nsz arcp contract afn float %i.af, %i.fl
  %i.fp = fadd reassoc nsz arcp contract afn float %i.fo, %i.ad
  br label %filmic_spline.exit.1

bb.r:                                             ; preds = %bb.p
  switch i32 %i.ah, label %bb.u [
    i32 0, label %bb.t
    i32 1, label %bb.s
  ]

bb.s:                                             ; preds = %bb.r
  %i.fq = fmul reassoc nsz arcp contract afn float %i.aj, %i.fl
  %i.fr = fadd reassoc nsz arcp contract afn float %i.ap, %i.fq
  %i.fs = fmul reassoc nsz arcp contract afn float %i.fr, %i.fl
  %i.ft = fadd reassoc nsz arcp contract afn float %i.fs, %i.an
  %i.fu = fmul reassoc nsz arcp contract afn float %i.ft, %i.fl
  %i.fv = fadd reassoc nsz arcp contract afn float %i.fu, %i.al
  br label %filmic_spline.exit.1

bb.t:                                             ; preds = %bb.r
  %i.fw = fmul reassoc nsz arcp contract afn float %i.ar, %i.fl
  %i.fx = fadd reassoc nsz arcp contract afn float %i.fw, %i.aj
  %i.fy = fmul reassoc nsz arcp contract afn float %i.fx, %i.fl
  %i.fz = fadd reassoc nsz arcp contract afn float %i.fy, %i.ap
  %i.ga = fmul reassoc nsz arcp contract afn float %i.fz, %i.fl
  %i.gb = fadd reassoc nsz arcp contract afn float %i.ga, %i.an
  %i.gc = fmul reassoc nsz arcp contract afn float %i.gb, %i.fl
  %i.gd = fadd reassoc nsz arcp contract afn float %i.gc, %i.al
  br label %filmic_spline.exit.1

bb.u:                                             ; preds = %bb.r
  %i.ge = fsub reassoc nsz arcp contract afn float %i.fl, %i.ab ; 2 uses
  %i.gf = fmul reassoc nsz arcp contract afn float %i.an, %i.ge
  %i.gg = fadd reassoc nsz arcp contract afn float %i.gf, 1.000000e+00
  %i.gh = fmul reassoc nsz arcp contract afn float %i.gg, %i.ge ; 2 uses
  %i.gi = fmul reassoc nsz arcp contract afn float %i.gh, %i.al
  %i.gj = fadd reassoc nsz arcp contract afn float %i.gh, %i.ap
  %i.gk = fdiv reassoc nsz arcp contract afn float %i.gi, %i.gj
  %i.gl = fadd reassoc nsz arcp contract afn float %i.gk, %i.aj
  br label %filmic_spline.exit.1

bb.v:                                             ; preds = %filmic_spline.exit
  switch i32 %i.au, label %bb.y [
    i32 0, label %bb.x
    i32 1, label %bb.w
  ]

bb.w:                                             ; preds = %bb.v
  %i.gm = fmul reassoc nsz arcp contract afn float %i.ay, %i.fl
  %i.gn = fadd reassoc nsz arcp contract afn float %i.gm, %i.ax
  %i.go = fmul reassoc nsz arcp contract afn float %i.gn, %i.fl
  %i.gp = fadd reassoc nsz arcp contract afn float %i.go, %i.av
  %i.gq = fmul reassoc nsz arcp contract afn float %i.gp, %i.fl
  %i.gr = fadd reassoc nsz arcp contract afn float %i.gq, %i.aw
  br label %filmic_spline.exit.1

bb.x:                                             ; preds = %bb.v
  %i.gs = fmul reassoc nsz arcp contract afn float %i.az, %i.fl
  %i.gt = fadd reassoc nsz arcp contract afn float %i.gs, %i.ay
  %i.gu = fmul reassoc nsz arcp contract afn float %i.gt, %i.fl
  %i.gv = fadd reassoc nsz arcp contract afn float %i.gu, %i.ax
  %i.gw = fmul reassoc nsz arcp contract afn float %i.gv, %i.fl
  %i.gx = fadd reassoc nsz arcp contract afn float %i.gw, %i.av
  %i.gy = fmul reassoc nsz arcp contract afn float %i.gx, %i.fl
  %i.gz = fadd reassoc nsz arcp contract afn float %i.gy, %i.aw
  br label %filmic_spline.exit.1

bb.y:                                             ; preds = %bb.v
  %i.ha = fsub reassoc nsz arcp contract afn float %i.z, %i.fl ; 2 uses
  %i.hb = fmul reassoc nsz arcp contract afn float %i.av, %i.ha
  %i.hc = fadd reassoc nsz arcp contract afn float %i.hb, 1.000000e+00
  %i.hd = fmul reassoc nsz arcp contract afn float %i.hc, %i.ha ; 2 uses
  %i.he = fmul reassoc nsz arcp contract afn float %i.aw, %i.hd
  %i.hf = fadd reassoc nsz arcp contract afn float %i.ax, %i.hd
  %i.hg = fdiv reassoc nsz arcp contract afn float %i.he, %i.hf
  %i.hh = fsub reassoc nsz arcp contract afn float %i.ay, %i.hg
  br label %filmic_spline.exit.1

filmic_spline.exit.1:                             ; preds = %bb.y, %bb.x, %bb.w, %bb.u, %bb.t, %bb.s, %bb.q
  %.0.i.1 = phi nsz float [ %i.gz, %bb.x ], [ %i.gr, %bb.w ], [ %i.hh, %bb.y ], [ %i.gd, %bb.t ], [ %i.fv, %bb.s ], [ %i.gl, %bb.u ], [ %i.fp, %bb.q ]
  %.sroa.0.4.vec.insert53 = insertelement <4 x float> %.sroa.0.0.vec.insert50, float %.0.i.1, i64 1
  %i.hi = fsub reassoc nsz arcp contract afn float %i.ck, %i.cv
  %i.hj = fmul reassoc nsz arcp contract afn float %i.hi, %i.dh
  %i.hk = fadd reassoc nsz arcp contract afn float %i.hj, %i.cv ; 19 uses
  %i.hl = fcmp reassoc nsz arcp contract afn olt float %i.hk, %i.z
  br i1 %i.hl, label %bb.af, label %bb.z

bb.z:                                             ; preds = %filmic_spline.exit.1
  %i.hm = fcmp reassoc nsz arcp contract afn ogt float %i.hk, %i.ab
  br i1 %i.hm, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.hn = fmul reassoc nsz arcp contract afn float %i.af, %i.hk
  %i.ho = fadd reassoc nsz arcp contract afn float %i.hn, %i.ad
  br label %filmic_spline.exit.2

bb.ab:                                            ; preds = %bb.z
  switch i32 %i.ah, label %bb.ae [
    i32 0, label %bb.ad
    i32 1, label %bb.ac
  ]

bb.ac:                                            ; preds = %bb.ab
  %i.hp = fmul reassoc nsz arcp contract afn float %i.aj, %i.hk
  %i.hq = fadd reassoc nsz arcp contract afn float %i.ap, %i.hp
  %i.hr = fmul reassoc nsz arcp contract afn float %i.hq, %i.hk
  %i.hs = fadd reassoc nsz arcp contract afn float %i.hr, %i.an
  %i.ht = fmul reassoc nsz arcp contract afn float %i.hs, %i.hk
  %i.hu = fadd reassoc nsz arcp contract afn float %i.ht, %i.al
  br label %filmic_spline.exit.2

bb.ad:                                            ; preds = %bb.ab
  %i.hv = fmul reassoc nsz arcp contract afn float %i.ar, %i.hk
  %i.hw = fadd reassoc nsz arcp contract afn float %i.hv, %i.aj
  %i.hx = fmul reassoc nsz arcp contract afn float %i.hw, %i.hk
  %i.hy = fadd reassoc nsz arcp contract afn float %i.hx, %i.ap
  %i.hz = fmul reassoc nsz arcp contract afn float %i.hy, %i.hk
  %i.ia = fadd reassoc nsz arcp contract afn float %i.hz, %i.an
  %i.ib = fmul reassoc nsz arcp contract afn float %i.ia, %i.hk
  %i.ic = fadd reassoc nsz arcp contract afn float %i.ib, %i.al
  br label %filmic_spline.exit.2

bb.ae:                                            ; preds = %bb.ab
  %i.id = fsub reassoc nsz arcp contract afn float %i.hk, %i.ab ; 2 uses
  %i.ie = fmul reassoc nsz arcp contract afn float %i.an, %i.id
  %i.if = fadd reassoc nsz arcp contract afn float %i.ie, 1.000000e+00
  %i.ig = fmul reassoc nsz arcp contract afn float %i.if, %i.id ; 2 uses
  %i.ih = fmul reassoc nsz arcp contract afn float %i.ig, %i.al
  %i.ii = fadd reassoc nsz arcp contract afn float %i.ig, %i.ap
  %i.ij = fdiv reassoc nsz arcp contract afn float %i.ih, %i.ii
  %i.ik = fadd reassoc nsz arcp contract afn float %i.ij, %i.aj
  br label %filmic_spline.exit.2

bb.af:                                            ; preds = %filmic_spline.exit.1
  switch i32 %i.au, label %bb.ai [
    i32 0, label %bb.ah
    i32 1, label %bb.ag
  ]

bb.ag:                                            ; preds = %bb.af
  %i.il = fmul reassoc nsz arcp contract afn float %i.ay, %i.hk
  %i.im = fadd reassoc nsz arcp contract afn float %i.il, %i.ax
  %i.in = fmul reassoc nsz arcp contract afn float %i.im, %i.hk
  %i.io = fadd reassoc nsz arcp contract afn float %i.in, %i.av
  %i.ip = fmul reassoc nsz arcp contract afn float %i.io, %i.hk
  %i.iq = fadd reassoc nsz arcp contract afn float %i.ip, %i.aw
  br label %filmic_spline.exit.2

bb.ah:                                            ; preds = %bb.af
  %i.ir = fmul reassoc nsz arcp contract afn float %i.az, %i.hk
  %i.is = fadd reassoc nsz arcp contract afn float %i.ir, %i.ay
  %i.it = fmul reassoc nsz arcp contract afn float %i.is, %i.hk
  %i.iu = fadd reassoc nsz arcp contract afn float %i.it, %i.ax
  %i.iv = fmul reassoc nsz arcp contract afn float %i.iu, %i.hk
  %i.iw = fadd reassoc nsz arcp contract afn float %i.iv, %i.av
  %i.ix = fmul reassoc nsz arcp contract afn float %i.iw, %i.hk
  %i.iy = fadd reassoc nsz arcp contract afn float %i.ix, %i.aw
  br label %filmic_spline.exit.2

bb.ai:                                            ; preds = %bb.af
  %i.iz = fsub reassoc nsz arcp contract afn float %i.z, %i.hk ; 2 uses
  %i.ja = fmul reassoc nsz arcp contract afn float %i.av, %i.iz
  %i.jb = fadd reassoc nsz arcp contract afn float %i.ja, 1.000000e+00
  %i.jc = fmul reassoc nsz arcp contract afn float %i.jb, %i.iz ; 2 uses
  %i.jd = fmul reassoc nsz arcp contract afn float %i.aw, %i.jc
  %i.je = fadd reassoc nsz arcp contract afn float %i.ax, %i.jc
  %i.jf = fdiv reassoc nsz arcp contract afn float %i.jd, %i.je
  %i.jg = fsub reassoc nsz arcp contract afn float %i.ay, %i.jf
  br label %filmic_spline.exit.2

filmic_spline.exit.2:                             ; preds = %bb.ai, %bb.ah, %bb.ag, %bb.ae, %bb.ad, %bb.ac, %bb.aa
  %.0.i.2 = phi nsz float [ %i.iy, %bb.ah ], [ %i.iq, %bb.ag ], [ %i.jg, %bb.ai ], [ %i.ic, %bb.ad ], [ %i.hu, %bb.ac ], [ %i.ik, %bb.ae ], [ %i.ho, %bb.aa ]
  %.sroa.0.8.vec.insert56 = insertelement <4 x float> %.sroa.0.4.vec.insert53, float %.0.i.2, i64 2
  %i.jh = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.0.8.vec.insert56, <4 x float> zeroinitializer)
  %i.ji = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.jh, <4 x float> splat (float 1.000000e+00))
  %i.jj = bitcast <4 x float> %i.ji to <4 x i32>  ; 2 uses
  %i.jk = and <4 x i32> %i.jj, splat (i32 8388607)
  %i.jl = or disjoint <4 x i32> %i.jk, splat (i32 1065353216)
  %i.jm = bitcast <4 x i32> %i.jl to <4 x float>  ; 5 uses
  %i.jn = lshr <4 x i32> %i.jj, splat (i32 23)
  %i.jo = and <4 x i32> %i.jn, splat (i32 255)
  %i.jp = add nsw <4 x i32> %i.jo, splat (i32 -127)
  %i.jq = sitofp <4 x i32> %i.jp to <4 x float>
  %i.jr = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.jm, splat (float f0x3D74552F)
  %i.js = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.jr, splat (float f0xBEEE7397)
  %i.jt = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.js, %i.jm
  %i.ju = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.jt, splat (float f0x3FBD96DD)
  %i.jv = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.ju, %i.jm
  %i.jw = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.jv, splat (float f0xC02153F6)
  %i.jx = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.jw, %i.jm
  %i.jy = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.jx, splat (float f0x4038D96C)
  %i.jz = fadd fast <4 x float> %i.jm, splat (float -1.000000e+00)
  %i.ka = fmul reassoc nsz arcp contract afn <4 x float> %i.jy, %i.jz
  %i.kb = fadd reassoc nsz arcp contract afn <4 x float> %i.ka, %i.jq
  %i.kc = fmul reassoc nsz arcp contract afn <4 x float> %i.kb, %i.bb
  %i.kd = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.kc, <4 x float> splat (float 1.290000e+02))
  %i.ke = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.kd, <4 x float> splat (float f0xC2FDFFFF)) ; 2 uses
  %i.kf = fadd reassoc nsz arcp contract afn <4 x float> %i.ke, splat (float -5.000000e-01)
  %i.kg = tail call <4 x i32> @llvm.x86.sse2.cvtps2dq(<4 x float> %i.kf)
  %i.kh = sitofp reassoc nsz arcp contract afn <4 x i32> %i.kg to <4 x float> ; 2 uses
  %i.ki = fsub reassoc nsz arcp contract afn <4 x float> %i.ke, %i.kh ; 4 uses
  %i.kj = fptosi <4 x float> %i.kh to <4 x i32>
  %i.kk = shl <4 x i32> %i.kj, splat (i32 23)
  %i.kl = add <4 x i32> %i.kk, splat (i32 1065353216)
  %i.km = fmul reassoc nsz arcp contract afn <4 x float> %i.ki, splat (float f0x3C5DBE69)
  %i.kn = fadd reassoc nsz arcp contract afn <4 x float> %i.km, splat (float f0x3D5509F9)
  %i.ko = fmul reassoc nsz arcp contract afn <4 x float> %i.kn, %i.ki
  %i.kp = fadd reassoc nsz arcp contract afn <4 x float> %i.ko, splat (float f0x3E773CC5)
  %i.kq = fmul reassoc nsz arcp contract afn <4 x float> %i.kp, %i.ki
  %i.kr = fadd reassoc nsz arcp contract afn <4 x float> %i.kq, splat (float f0x3F3168B3)
  %i.ks = fmul reassoc nsz arcp contract afn <4 x float> %i.kr, %i.ki
  %i.kt = fadd reassoc nsz arcp contract afn <4 x float> %i.ks, splat (float f0x3F800016)
  %i.ku = bitcast <4 x i32> %i.kl to <4 x float>
  %i.kv = fmul reassoc nsz arcp contract afn <4 x float> %i.kt, %i.ku
  %i.kw = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.03843
  store <4 x float> %i.kv, ptr %i.kw, align 16, !tbaa !109, !alias.scope !398, !nontemporal !110
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  %i.kx = add nuw i64 %.03843, 4                  ; 2 uses
  %i.ky = icmp ult i64 %i.kx, %i.c
  br i1 %i.ky, label %bb.b, label %._crit_edge
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @filmic_split_v4(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(address_is_null) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readonly byval(%struct.dt_iop_filmic_rgb_spline_t) align 16 captures(none) %5, i64 noundef range(i64 -2147483648, 2147483648) %6, i64 noundef range(i64 -2147483648, 2147483648) %7, float noundef %8, float noundef %9) unnamed_addr #11 {
bb.a:
  %i.a = alloca [4 x [4 x float]], align 64       ; 10 uses
  %i.b = alloca [4 x [4 x float]], align 64       ; 4 uses
  %i.c = alloca [4 x [4 x float]], align 64       ; 4 uses
  %i.d = alloca [4 x [4 x float]], align 64       ; 4 uses
  %i.e = alloca [4 x [4 x float]], align 64       ; 4 uses
  %i.f = alloca [4 x [4 x float]], align 64       ; 4 uses
  %i.g = alloca [4 x float], align 16             ; 8 uses
  %i.h = alloca [4 x float], align 16             ; 6 uses
  %i.i = alloca [4 x float], align 16             ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #20
  %i.j = call fastcc i32 @filmic_v4_prepare_matrices(ptr noundef %i.a, ptr noundef %i.b, ptr noundef %i.c, ptr noundef %i.d, ptr noundef %i.e, ptr noundef %i.f, ptr noundef %2, ptr noundef %3)
  %i.k = shl nsw i64 %6, 2
  %i.l = mul i64 %i.k, %7                         ; 2 uses
  %.not = icmp eq i64 %i.l, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  %i.r = load <3 x float>, ptr %i.a, align 64, !tbaa !13 ; 3 uses
  %i.s = load float, ptr %i.o, align 4, !tbaa !13
  %i.t = load <3 x float>, ptr %i.m, align 16, !tbaa !13 ; 3 uses
  %i.u = load float, ptr %i.p, align 4, !tbaa !13
  %i.v = load <3 x float>, ptr %i.n, align 32, !tbaa !13 ; 3 uses
  %i.w = load float, ptr %i.q, align 4, !tbaa !13
  %i.x = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.y = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.aa = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.ac = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.af = load float, ptr %i.ae, align 4, !tbaa !119
  %i.ag = extractelement <3 x float> %i.t, i64 0
  %i.ah = extractelement <3 x float> %i.t, i64 2
  %i.ai = extractelement <3 x float> %i.r, i64 0
  %i.aj = extractelement <3 x float> %i.r, i64 2
  %i.ak = extractelement <3 x float> %i.v, i64 0
  %i.al = extractelement <3 x float> %i.v, i64 2
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  tail call void @llvm.x86.sse.sfence()
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.021 = phi i64 [ 0, %.lr.ph ], [ %i.eh, %bb.b ] ; 3 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.021 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #20
  call fastcc void @RGB_tone_mapping_v4(ptr noundef %i.am, ptr noundef %i.g, ptr noundef nonnull %4, ptr noundef nonnull byval(%struct.dt_iop_filmic_rgb_spline_t) align 16 %5, float noundef %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #20
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 4
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ap = load float, ptr %i.am, align 4, !tbaa !13
  %i.aq = load float, ptr %i.an, align 4, !tbaa !13
  %i.ar = load float, ptr %i.ao, align 4, !tbaa !13
  %i.as = insertelement <3 x float> poison, float %i.ap, i64 0
  %i.at = shufflevector <3 x float> %i.as, <3 x float> poison, <3 x i32> zeroinitializer
  %i.au = fmul reassoc nsz arcp contract afn <3 x float> %i.r, %i.at
  %i.av = insertelement <3 x float> poison, float %i.aq, i64 0
  %i.aw = shufflevector <3 x float> %i.av, <3 x float> poison, <3 x i32> zeroinitializer
  %i.ax = fmul reassoc nsz arcp contract afn <3 x float> %i.t, %i.aw
  %i.ay = fadd reassoc nsz arcp contract afn <3 x float> %i.ax, %i.au
  %i.az = insertelement <3 x float> poison, float %i.ar, i64 0
  %i.ba = shufflevector <3 x float> %i.az, <3 x float> poison, <3 x i32> zeroinitializer
  %i.bb = fmul reassoc nsz arcp contract afn <3 x float> %i.v, %i.ba
  %i.bc = fadd reassoc nsz arcp contract afn <3 x float> %i.ay, %i.bb ; 4 uses
  %i.bd = extractelement <3 x float> %i.bc, i64 0 ; 2 uses
  %i.be = extractelement <3 x float> %i.bc, i64 1 ; 2 uses
  %i.bf = fadd reassoc nsz arcp contract afn float %i.be, %i.bd
  %i.bg = extractelement <3 x float> %i.bc, i64 2
  %i.bh = fadd reassoc nsz arcp contract afn float %i.bf, %i.bg ; 2 uses
  %i.bi = fcmp reassoc nsz arcp contract afn oeq float %i.bh, 0.000000e+00
  %i.bj = insertelement <3 x float> poison, float %i.bh, i64 0
  %i.bk = shufflevector <3 x float> %i.bj, <3 x float> poison, <3 x i32> zeroinitializer
  %i.bl = fdiv reassoc nsz arcp contract afn <3 x float> %i.bc, %i.bk
  %i.bm = insertelement <3 x i1> poison, i1 %i.bi, i64 0
  %i.bn = shufflevector <3 x i1> %i.bm, <3 x i1> poison, <3 x i32> zeroinitializer
  %i.bo = select <3 x i1> %i.bn, <3 x float> zeroinitializer, <3 x float> %i.bl ; 3 uses
  %i.bp = fmul reassoc nsz arcp contract afn float %i.bd, f0x3F309D77
  %i.bq = fmul reassoc nsz arcp contract afn float %i.be, f0x3EB2573F
  %i.br = fadd reassoc nsz arcp contract afn float %i.bq, %i.bp
  %i.bs = shufflevector <3 x float> %i.bo, <3 x float> poison, <2 x i32> zeroinitializer
  %i.bt = fmul reassoc nsz arcp contract afn <2 x float> %i.bs, <float f0x3F8B3A63, float f0xBDB3A62D>
  %i.bu = shufflevector <3 x float> %i.bo, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bv = fmul reassoc nsz arcp contract afn <2 x float> %i.bu, <float f0xBF2AAAAB, float f0x3FD55555>
  %i.bw = shufflevector <3 x float> %i.bo, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.bx = fmul reassoc nsz arcp contract afn <2 x float> %i.bw, <float f0x3CA8E841, float f0xBD53224F>
  %i.by = fadd reassoc nsz arcp contract afn <2 x float> %i.bt, <float f0xBE604727, float -5.437140e-01>
  %i.bz = fadd reassoc nsz arcp contract afn <2 x float> %i.by, %i.bv
  %i.ca = fadd reassoc nsz arcp contract afn <2 x float> %i.bz, %i.bx ; 3 uses
  %i.cb = extractelement <2 x float> %i.ca, i64 0
  %i.cc = extractelement <2 x float> %i.ca, i64 1
  %i.cd = tail call reassoc nsz arcp contract afn float @hypotf(float noundef %i.cc, float noundef %i.cb) #37 ; 5 uses
  %i.ce = fcmp reassoc nsz arcp contract afn une float %i.cd, 0.000000e+00
  %i.cf = insertelement <2 x float> poison, float %i.cd, i64 0
  %i.cg = shufflevector <2 x float> %i.cf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ch = fdiv reassoc nsz arcp contract afn <2 x float> %i.ca, %i.cg
  %i.ci = insertelement <2 x i1> poison, i1 %i.ce, i64 0
  %i.cj = shufflevector <2 x i1> %i.ci, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.ck = select <2 x i1> %i.cj, <2 x float> %i.ch, <2 x float> <float 1.000000e+00, float 0.000000e+00>
  store float %i.br, ptr %i.h, align 16, !tbaa !13
  store float %i.cd, ptr %i.x, align 4, !tbaa !13
  store <2 x float> %i.ck, ptr %i.y, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #20
  %i.cl = load float, ptr %i.g, align 16, !tbaa !13 ; 3 uses
  %i.cm = fmul reassoc nsz arcp contract afn float %i.cl, %i.ai
  %i.cn = load float, ptr %i.z, align 4, !tbaa !13 ; 3 uses
  %i.co = fmul reassoc nsz arcp contract afn float %i.cn, %i.ag
  %i.cp = fadd reassoc nsz arcp contract afn float %i.co, %i.cm
  %i.cq = load float, ptr %i.aa, align 8, !tbaa !13 ; 3 uses
  %i.cr = fmul reassoc nsz arcp contract afn float %i.cq, %i.ak
  %i.cs = fadd reassoc nsz arcp contract afn float %i.cp, %i.cr ; 3 uses
  %i.ct = fmul reassoc nsz arcp contract afn float %i.cl, %i.s
  %i.cu = fmul reassoc nsz arcp contract afn float %i.cn, %i.u
  %i.cv = fadd reassoc nsz arcp contract afn float %i.cu, %i.ct
  %i.cw = fmul reassoc nsz arcp contract afn float %i.cq, %i.w
  %i.cx = fadd reassoc nsz arcp contract afn float %i.cv, %i.cw ; 3 uses
  %i.cy = fmul reassoc nsz arcp contract afn float %i.cl, %i.aj
  %i.cz = fmul reassoc nsz arcp contract afn float %i.cn, %i.ah
  %i.da = fadd reassoc nsz arcp contract afn float %i.cz, %i.cy
  %i.db = fmul reassoc nsz arcp contract afn float %i.cq, %i.al
  %i.dc = fadd reassoc nsz arcp contract afn float %i.da, %i.db ; 2 uses
  %i.dd = fadd reassoc nsz arcp contract afn float %i.cx, %i.cs
  %i.de = fadd reassoc nsz arcp contract afn float %i.dd, %i.dc ; 4 uses
  %i.df = fcmp reassoc nsz arcp contract afn oeq float %i.de, 0.000000e+00 ; 3 uses
  %i.dg = fdiv reassoc nsz arcp contract afn float %i.cs, %i.de
  %i.dh = fdiv reassoc nsz arcp contract afn float %i.cx, %i.de
  %i.di = fdiv reassoc nsz arcp contract afn float %i.dc, %i.de
  %.sroa.0.0.i.i18 = select nsz i1 %i.df, float 0.000000e+00, float %i.dg ; 2 uses
  %.sroa.6.0.i.i19 = select nsz i1 %i.df, float 0.000000e+00, float %i.dh ; 2 uses
  %.sroa.8.0.i.i20 = select nsz i1 %i.df, float 0.000000e+00, float %i.di ; 2 uses
  %i.dj = fmul reassoc nsz arcp contract afn float %i.cs, f0x3F309D77
  %i.dk = fmul reassoc nsz arcp contract afn float %i.cx, f0x3EB2573F
  %i.dl = fadd reassoc nsz arcp contract afn float %i.dk, %i.dj
  %i.dm = fmul reassoc nsz arcp contract afn float %.sroa.0.0.i.i18, f0x3F8B3A63
  %i.dn = fmul reassoc nsz arcp contract afn float %.sroa.6.0.i.i19, f0xBF2AAAAB
  %i.do = fmul reassoc nsz arcp contract afn float %.sroa.8.0.i.i20, f0x3CA8E841
  %i.dp = fmul reassoc nsz arcp contract afn float %.sroa.0.0.i.i18, f0xBDB3A62D
  %i.dq = fmul reassoc nsz arcp contract afn float %.sroa.6.0.i.i19, f0x3FD55555
  %i.dr = fmul reassoc nsz arcp contract afn float %.sroa.8.0.i.i20, f0xBD53224F
  %i.ds = fadd reassoc nsz arcp contract afn float %i.dm, f0xBE604727
  %i.dt = fadd reassoc nsz arcp contract afn float %i.ds, %i.dn
  %i.du = fadd reassoc nsz arcp contract afn float %i.dt, %i.do ; 2 uses
  %i.dv = fadd reassoc nsz arcp contract afn float %i.dp, -5.437140e-01
  %i.dw = fadd reassoc nsz arcp contract afn float %i.dv, %i.dq
  %i.dx = fadd reassoc nsz arcp contract afn float %i.dw, %i.dr ; 2 uses
  %i.dy = tail call reassoc nsz arcp contract afn float @hypotf(float noundef %i.dx, float noundef %i.du) #37 ; 5 uses
  %i.dz = fcmp reassoc nsz arcp contract afn une float %i.dy, 0.000000e+00 ; 2 uses
  %i.ea = fdiv reassoc nsz arcp contract afn float %i.du, %i.dy
  %i.eb = select reassoc nsz arcp contract afn i1 %i.dz, float %i.ea, float 1.000000e+00
  %i.ec = fdiv reassoc nsz arcp contract afn float %i.dx, %i.dy
end_hunk_2
begin_hunk_3_@commit_params:bb.a
  %i.cn = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.co = load <2 x float>, ptr %i.cm, align 4, !tbaa !13
  %i.cp = fmul reassoc nsz arcp contract afn <2 x float> %i.co, splat (float 5.000000e-03)
  %i.cq = fadd reassoc nsz arcp contract afn <2 x float> %i.cp, splat (float 5.000000e-01)
  store <2 x float> %i.cq, ptr %i.cn, align 8, !tbaa !13
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !182
  %i.ct = getelementptr inbounds nuw i8, ptr %i.b, i64 276
  store i32 %i.cs, ptr %i.ct, align 4, !tbaa !48
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #9

; Function Attrs: inlinehint nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc range(i32 0, 2) i32 @dt_iop_filmic_rgb_compute_spline(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) initializes((0, 12), (16, 28), (32, 44), (48, 60), (72, 76), (80, 136)) %1) unnamed_addr #12 {
bb.a:
  %i.a = alloca [25 x double], align 16           ; 18 uses
  %i.b = alloca [5 x double], align 16            ; 8 uses
  %i.c = alloca [16 x double], align 16           ; 14 uses
  %i.d = alloca [4 x double], align 16            ; 7 uses
  %i.e = alloca [16 x double], align 16           ; 13 uses
  %i.f = alloca [4 x double], align 16            ; 7 uses
  %i.g = alloca [25 x double], align 16           ; 17 uses
  %i.h = alloca [5 x double], align 16            ; 8 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.j = load i32, ptr %i.i, align 4, !tbaa !178
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.l = load float, ptr %i.k, align 4, !tbaa !134 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.n = load float, ptr %i.m, align 4, !tbaa !183 ; 2 uses
  %i.o = fcmp reassoc nsz arcp contract afn ogt float %i.l, %i.n
  br i1 %i.o, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.q = load float, ptr %i.p, align 4, !tbaa !184 ; 2 uses
  %i.r = fcmp reassoc nsz arcp contract afn olt float %i.l, %i.q
  %. = select reassoc nsz arcp contract afn i1 %i.r, float %i.q, float %i.l
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.s = phi reassoc nsz arcp contract afn float [ %i.n, %bb.b ], [ %., %bb.c ]
  %i.t = fmul reassoc nsz arcp contract afn float %i.s, f0x3C23D70A
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.v = load float, ptr %i.u, align 4, !tbaa !19 ; 2 uses
  %i.w = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.v
  %i.x = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.t, float %i.w)
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.z = load float, ptr %i.y, align 4, !tbaa !19 ; 2 uses
  %i.aa = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.z
  %i.ab = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float 1.845000e-01, float %i.aa)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ac = phi float [ %i.v, %bb.d ], [ %i.z, %bb.e ] ; 3 uses
  %.0 = phi nsz float [ %i.x, %bb.d ], [ %i.ab, %bb.e ] ; 6 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !20 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ag = load float, ptr %i.af, align 4, !tbaa !21 ; 3 uses
  %i.ah = fsub reassoc nsz arcp contract afn float %i.ae, %i.ag ; 7 uses
  %i.ai = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.ag)
  %i.aj = fdiv reassoc nsz arcp contract afn float %i.ai, %i.ah ; 10 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !18 ; 2 uses
  %i.am = icmp eq i32 %i.al, 0
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ao = load float, ptr %i.an, align 4, !tbaa !184 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !134 ; 4 uses
  %i.ar = fcmp reassoc nsz arcp contract afn ogt float %i.ao, %i.aq
  %i.as = fcmp reassoc nsz arcp contract afn olt float %i.ao, 0.000000e+00
  %spec.select = select reassoc nsz arcp contract afn i1 %i.as, float 0.000000e+00, float %i.ao
  %i.at = select reassoc nsz arcp contract afn i1 %i.ar, float %i.aq, float %spec.select
  %i.au = fmul reassoc nsz arcp contract afn float %i.at, f0x3C23D70A ; 2 uses
  br i1 %i.am, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.aw = load float, ptr %i.av, align 4, !tbaa !183
  %i.ax = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.aw, float %i.aq)
  %i.ay = fmul reassoc nsz arcp contract afn float %i.ax, f0x3C23D70A
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.az = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.ac ; 2 uses
  %i.ba = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.au, float %i.az)
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !183
  %i.bd = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.bc, float %i.aq)
  %i.be = fmul reassoc nsz arcp contract afn float %i.bd, f0x3C23D70A
  %i.bf = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.be, float %i.az)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.0336 = phi nsz float [ %i.ay, %bb.g ], [ %i.bf, %bb.h ] ; 5 uses
  %.0335 = phi nsz float [ %i.au, %bb.g ], [ %i.ba, %bb.h ] ; 7 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !24 ; 3 uses
  %i.bi = fcmp reassoc nsz arcp contract afn ogt float %i.bh, 5.000000e+01
  %i.bj = fcmp reassoc nsz arcp contract afn olt float %i.bh, -5.000000e+01
  %i.bk = fmul reassoc nsz arcp contract afn float %i.bh, f0x3C23D70A
  %spec.select358 = select i1 %i.bj, float -5.000000e-01, float %i.bk
  %i.bl = select i1 %i.bi, float 5.000000e-01, float %spec.select358 ; 3 uses
  %i.bm = icmp ult i32 %i.al, 2
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.bo = load float, ptr %i.bn, align 4, !tbaa !22 ; 3 uses
  %i.bp = fcmp reassoc nsz arcp contract afn ogt float %i.bo, 1.000000e+02
  %i.bq = fcmp reassoc nsz arcp contract afn olt float %i.bo, 0.000000e+00
  %i.br = fmul reassoc nsz arcp contract afn float %i.bo, f0x3C23D70A
  %spec.select359 = select i1 %i.bq, float 0.000000e+00, float %i.br
  %i.bs = select i1 %i.bp, float 1.000000e+00, float %spec.select359 ; 4 uses
  br i1 %i.bm, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bt = fmul reassoc nsz arcp contract afn float %i.bs, %i.ah ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bv = load float, ptr %i.bu, align 4, !tbaa !23 ; 3 uses
  %i.bw = fcmp reassoc nsz arcp contract afn ogt float %i.bv, 6.000000e+00
  %i.bx = fcmp reassoc nsz arcp contract afn olt float %i.bv, 1.000010e+00
  %spec.select360 = select reassoc nsz arcp contract afn i1 %i.bx, float 1.000010e+00, float %i.bv
  %i.by = select reassoc nsz arcp contract afn i1 %i.bw, float 6.000000e+00, float %spec.select360 ; 8 uses
  %i.bz = fdiv reassoc nsz arcp contract afn float %i.bt, %i.ah ; 2 uses
  %i.ca = fdiv reassoc nsz arcp contract afn float %i.ag, %i.ah
  %i.cb = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.ca)
  %i.cc = fmul reassoc nsz arcp contract afn float %i.bz, %i.cb
  %i.cd = fsub reassoc nsz arcp contract afn float %i.aj, %i.cc ; 2 uses
  %i.ce = fdiv reassoc nsz arcp contract afn float %i.ae, %i.ah
  %i.cf = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.ce)
  %i.cg = fmul reassoc nsz arcp contract afn float %i.bz, %i.cf
  %i.ch = fadd reassoc nsz arcp contract afn float %i.cg, %i.aj ; 2 uses
  %i.ci = fmul reassoc nsz arcp contract afn float %i.by, %i.aj
  %i.cj = fsub reassoc nsz arcp contract afn float %.0, %i.ci
  %i.ck = fmul reassoc nsz arcp contract afn float %i.cd, %i.by
  %i.cl = fmul reassoc nsz arcp contract afn float %i.ch, %i.by
  %i.cm = fmul reassoc nsz arcp contract afn float %i.by, %i.by
  %i.cn = fadd reassoc nsz arcp contract afn float %i.cm, 1.000000e+00
  %i.co = tail call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.cn) ; 2 uses
  %i.cp = fmul reassoc nsz arcp contract afn float %i.bl, -2.000000e+00
  %i.cq = fmul reassoc nsz arcp contract afn float %i.cp, %i.bt
  %i.cr = fdiv reassoc nsz arcp contract afn float %i.cq, %i.ah ; 2 uses
  %i.cs = fmul reassoc nsz arcp contract afn float %i.cr, %i.by
  %i.ct = fdiv reassoc nsz arcp contract afn float %i.cs, %i.co
  %i.cu = fadd reassoc nsz arcp contract afn float %i.ct, %i.cj ; 2 uses
  %i.cv = fadd reassoc nsz arcp contract afn float %i.cu, %i.ck
  %i.cw = fadd reassoc nsz arcp contract afn float %i.cu, %i.cl
  %i.cx = fdiv reassoc nsz arcp contract afn float %i.cr, %i.co ; 2 uses
  %i.cy = fadd reassoc nsz arcp contract afn float %i.cx, %i.cd ; 2 uses
  %i.cz = fadd reassoc nsz arcp contract afn float %i.cx, %i.ch
  %.pre = fmul reassoc nsz arcp contract afn float %i.cy, %i.by
  br label %bb.n

bb.k:                                             ; preds = %bb.i
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.db = load float, ptr %i.da, align 4, !tbaa !23
  %i.dc = fmul reassoc nsz arcp contract afn float %i.ah, 1.250000e-01
  %i.dd = fmul reassoc nsz arcp contract afn float %i.dc, %i.db
  %i.de = fadd reassoc nsz arcp contract afn float %i.ac, -1.000000e+00
  %i.df = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %.0, float %i.de)
  %i.dg = fmul reassoc nsz arcp contract afn float %i.df, %i.ac
  %i.dh = fdiv reassoc nsz arcp contract afn float %i.dd, %i.dg ; 4 uses
  %i.di = fcmp reassoc nsz arcp contract afn ogt float %i.dh, 1.000000e+02
  br i1 %i.di, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.dj = fsub reassoc nsz arcp contract afn float %.0336, %.0
  %i.dk = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.aj
  %i.dl = fdiv reassoc nsz arcp contract afn float %i.dj, %i.dk
  %i.dm = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.dl, float 1.000000e+00)
  %i.dn = fsub reassoc nsz arcp contract afn float %.0, %.0335
  %i.do = fdiv reassoc nsz arcp contract afn float %i.dn, %i.aj
  %i.dp = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.dm, float %i.do)
  %i.dq = fadd reassoc nsz arcp contract afn float %i.dp, f0x3C23D70A ; 2 uses
  %i.dr = fcmp reassoc nsz arcp contract afn olt float %i.dh, %i.dq
  %i.ds = select reassoc nsz arcp contract afn i1 %i.dr, float %i.dq, float %i.dh
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  %i.dt = phi reassoc nsz arcp contract afn float [ %i.ds, %bb.l ], [ 1.000000e+02, %bb.k ] ; 7 uses
  %i.du = fcmp reassoc nsz arcp contract afn une float %i.dt, %i.dh
  %i.dv = zext i1 %i.du to i32
  %i.dw = fmul reassoc nsz arcp contract afn float %i.dt, %i.aj
  %i.dx = fsub reassoc nsz arcp contract afn float %.0, %i.dw ; 4 uses
  %i.dy = fsub reassoc nsz arcp contract afn float %.0336, %.0335
  %i.dz = fmul reassoc nsz arcp contract afn float %i.dy, f0x3C23D70A ; 2 uses
  %i.ea = fadd reassoc nsz arcp contract afn float %i.dz, %.0335
  %i.eb = fsub reassoc nsz arcp contract afn float %i.ea, %i.dx
  %i.ec = fdiv reassoc nsz arcp contract afn float %i.eb, %i.dt ; 2 uses
  %i.ed = fadd reassoc nsz arcp contract afn float %i.dz, %i.dx
  %i.ee = fsub reassoc nsz arcp contract afn float %.0336, %i.ed
  %i.ef = fdiv reassoc nsz arcp contract afn float %i.ee, %i.dt ; 3 uses
  %i.eg = fsub reassoc ninf nsz arcp contract afn float 1.000000e+00, %i.bs
  %i.eh = fmul reassoc nsz arcp contract afn float %i.eg, %i.aj ; 2 uses
  %i.ei = fmul reassoc nsz arcp contract afn float %i.ec, %i.bs
  %i.ej = fadd reassoc nsz arcp contract afn float %i.ei, %i.eh ; 2 uses
  %i.ek = fmul reassoc nsz arcp contract afn float %i.ef, %i.bs
  %i.el = fadd reassoc nsz arcp contract afn float %i.ek, %i.eh ; 2 uses
  %i.em = fcmp reassoc nsz arcp contract afn ogt float %i.bl, 0.000000e+00
  %i.en = fmul reassoc nsz arcp contract afn float %i.bl, 2.000000e+00
  %i.eo = fsub reassoc nsz arcp contract afn float %i.aj, %i.ej
  %i.ep = fsub reassoc nsz arcp contract afn float %i.el, %i.aj
  %.sink = select i1 %i.em, float %i.ep, float %i.eo
  %i.eq = fmul reassoc nsz arcp contract afn float %i.en, %.sink ; 2 uses
  %i.er = fsub reassoc nsz arcp contract afn float %i.ej, %i.eq
  %i.es = fsub reassoc nsz arcp contract afn float %i.el, %i.eq ; 2 uses
  %i.et = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.er, float %i.ec) ; 2 uses
  %i.eu = fcmp reassoc nsz arcp contract afn olt float %i.es, %i.ef
  %i.ev = select reassoc nsz arcp contract afn i1 %i.eu, float %i.es, float %i.ef ; 2 uses
  %i.ew = fmul reassoc nsz arcp contract afn float %i.et, %i.dt ; 2 uses
  %i.ex = fadd reassoc nsz arcp contract afn float %i.ew, %i.dx
  %i.ey = fmul reassoc nsz arcp contract afn float %i.ev, %i.dt
  %i.ez = fadd reassoc nsz arcp contract afn float %i.ey, %i.dx
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.j
  %.pre-phi = phi float [ %i.ew, %bb.m ], [ %.pre, %bb.j ] ; 2 uses
  %.0341 = phi nsz float [ %i.dt, %bb.m ], [ %i.by, %bb.j ] ; 10 uses
  %.0340 = phi nsz float [ %i.ez, %bb.m ], [ %i.cw, %bb.j ] ; 3 uses
  %.0339 = phi nsz float [ %i.ex, %bb.m ], [ %i.cv, %bb.j ] ; 6 uses
  %.0338 = phi nsz float [ %i.ev, %bb.m ], [ %i.cz, %bb.j ] ; 4 uses
  %.0337 = phi nsz float [ %i.et, %bb.m ], [ %i.cy, %bb.j ] ; 7 uses
  %.0334 = phi i32 [ %i.dv, %bb.m ], [ 0, %bb.j ]
  %i.fa = getelementptr inbounds nuw i8, ptr %1, i64 108
  store float 0.000000e+00, ptr %i.fa, align 4, !tbaa !13
  %i.fb = getelementptr inbounds nuw i8, ptr %1, i64 112
  store float %.0337, ptr %i.fb, align 4, !tbaa !13
  %i.fc = getelementptr inbounds nuw i8, ptr %1, i64 116
  store float %i.aj, ptr %i.fc, align 4, !tbaa !13
  %i.fd = getelementptr inbounds nuw i8, ptr %1, i64 120
  store float %.0338, ptr %i.fd, align 4, !tbaa !13
  %i.fe = getelementptr inbounds nuw i8, ptr %1, i64 124
  store float 1.000000e+00, ptr %i.fe, align 4, !tbaa !13
  %i.ff = getelementptr inbounds nuw i8, ptr %1, i64 88
  store float %.0335, ptr %i.ff, align 8, !tbaa !13
  %i.fg = getelementptr inbounds nuw i8, ptr %1, i64 92
  store float %.0339, ptr %i.fg, align 4, !tbaa !13
  %i.fh = getelementptr inbounds nuw i8, ptr %1, i64 96
  store float %.0, ptr %i.fh, align 8, !tbaa !13
  %i.fi = getelementptr inbounds nuw i8, ptr %1, i64 100 ; 3 uses
  store float %.0340, ptr %i.fi, align 4, !tbaa !13
  %i.fj = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  store float %.0336, ptr %i.fj, align 8, !tbaa !13
  %i.fk = getelementptr inbounds nuw i8, ptr %1, i64 80
  store float %.0337, ptr %i.fk, align 16, !tbaa !124
  %i.fl = getelementptr inbounds nuw i8, ptr %1, i64 84
  store float %.0338, ptr %i.fl, align 4, !tbaa !125
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !416
  %i.fo = getelementptr inbounds nuw i8, ptr %1, i64 128
  store i32 %i.fn, ptr %i.fo, align 16, !tbaa !14
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 2 uses
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !417
  %i.fr = getelementptr inbounds nuw i8, ptr %1, i64 132
  store i32 %i.fq, ptr %i.fr, align 4, !tbaa !14
  %i.fs = fpext reassoc nsz arcp contract afn float %.0337 to double ; 10 uses
  %i.ft = fmul reassoc nsz arcp contract afn double %i.fs, %i.fs ; 6 uses
  %i.fu = fmul reassoc nsz arcp contract afn double %i.ft, %i.fs ; 4 uses
  %i.fv = fpext reassoc nsz arcp contract afn float %.0338 to double ; 10 uses
  %i.fw = fmul reassoc nsz arcp contract afn double %i.fv, %i.fv ; 6 uses
  %i.fx = fmul reassoc nsz arcp contract afn double %i.fw, %i.fv ; 4 uses
  %i.fy = fmul reassoc nsz arcp contract afn double %i.fx, %i.fv
  %i.fz = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  store float %.0341, ptr %i.ga, align 8, !tbaa !13
  %i.gb = fsub reassoc nsz arcp contract afn float %.0339, %.pre-phi
  %i.gc = getelementptr inbounds nuw i8, ptr %1, i64 8
  store float %i.gb, ptr %i.gc, align 8, !tbaa !13
  %i.gd = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %1, i64 40
  store float 0.000000e+00, ptr %i.ge, align 8, !tbaa !13
  %i.gf = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %1, i64 56
  store float 0.000000e+00, ptr %i.gg, align 8, !tbaa !13
  %i.gh = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %1, i64 72
  store float 0.000000e+00, ptr %i.gi, align 8, !tbaa !13
  %i.gj = load i32, ptr %i.fm, align 4, !tbaa !416
  switch i32 %i.gj, label %bb.q [
    i32 0, label %bb.o
    i32 1, label %bb.p
  ]

bb.o:                                             ; preds = %bb.n
  %i.gk = fmul reassoc nsz arcp contract afn double %i.fu, %i.fs
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.gl = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.a, i8 0, i64 32, i1 false)
  store double 1.000000e+00, ptr %i.gl, align 16, !tbaa !185
  %i.gm = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.gn = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gm, i8 0, i64 24, i1 false)
  store <2 x double> <double 1.000000e+00, double 0.000000e+00>, ptr %i.gn, align 16, !tbaa !185
  %i.go = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store double %i.gk, ptr %i.go, align 16, !tbaa !185
  %i.gp = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store double %i.fu, ptr %i.gp, align 8, !tbaa !185
  %i.gq = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  store double %i.ft, ptr %i.gq, align 16, !tbaa !185
  %i.gr = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  store double %i.fs, ptr %i.gr, align 8, !tbaa !185
  %i.gs = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  store double 1.000000e+00, ptr %i.gs, align 16, !tbaa !185
  %i.gt = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  %i.gu = insertelement <4 x double> <double poison, double poison, double poison, double 1.000000e+00>, double %i.fu, i64 0
  %i.gv = insertelement <4 x double> %i.gu, double %i.ft, i64 1
  %i.gw = insertelement <4 x double> %i.gv, double %i.fs, i64 2
  %i.gx = fmul reassoc nsz arcp contract afn <4 x double> %i.gw, <double 4.000000e+00, double 3.000000e+00, double 2.000000e+00, double 1.000000e+00>
  store <4 x double> %i.gx, ptr %i.gt, align 8, !tbaa !185
  %i.gy = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  store double 0.000000e+00, ptr %i.gy, align 8, !tbaa !185
  %i.gz = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  %i.ha = fmul reassoc nsz arcp contract afn double %i.ft, 1.200000e+01
  store double %i.ha, ptr %i.gz, align 16, !tbaa !185
  %i.hb = getelementptr inbounds nuw i8, ptr %i.a, i64 168
  %i.hc = fmul reassoc nsz arcp contract afn double %i.fs, 6.000000e+00
  store double %i.hc, ptr %i.hb, align 8, !tbaa !185
  %i.hd = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  store double 2.000000e+00, ptr %i.hd, align 16, !tbaa !185
  %i.he = getelementptr inbounds nuw i8, ptr %i.a, i64 184
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.he, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  %i.hf = fpext reassoc nsz arcp contract afn float %.0335 to double
  store double %i.hf, ptr %i.b, align 16, !tbaa !185
  %i.hg = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store double 0.000000e+00, ptr %i.hg, align 8, !tbaa !185
  %i.hh = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.hi = insertelement <2 x float> poison, float %.0339, i64 0
  %i.hj = insertelement <2 x float> %i.hi, float %.0341, i64 1
  %i.hk = fpext reassoc nsz arcp contract afn <2 x float> %i.hj to <2 x double>
  store <2 x double> %i.hk, ptr %i.hh, align 16, !tbaa !185
  %i.hl = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  store double 0.000000e+00, ptr %i.hl, align 16, !tbaa !185
  call fastcc void @gauss_solve(ptr noundef %i.a, ptr noundef %i.b, i32 noundef 5)
  %i.hm = load <4 x double>, ptr %i.b, align 16, !tbaa !185
  %i.hn = fptrunc reassoc nsz arcp contract afn <4 x double> %i.hm to <4 x float> ; 4 uses
  %i.ho = extractelement <4 x float> %i.hn, i64 0
  store float %i.ho, ptr %i.gh, align 16, !tbaa !13
  %i.hp = extractelement <4 x float> %i.hn, i64 1
  store float %i.hp, ptr %i.gf, align 16, !tbaa !13
  %i.hq = extractelement <4 x float> %i.hn, i64 2
  store float %i.hq, ptr %i.gd, align 16, !tbaa !13
  %i.hr = extractelement <4 x float> %i.hn, i64 3
  store float %i.hr, ptr %i.fz, align 16, !tbaa !13
  %i.hs = load double, ptr %i.hl, align 16, !tbaa !185
  %i.ht = fptrunc reassoc nsz arcp contract afn double %i.hs to float
  store float %i.ht, ptr %1, align 16, !tbaa !13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %bb.r

bb.p:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  %i.hu = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  store double 1.000000e+00, ptr %i.hu, align 8, !tbaa !185
  %i.hv = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store double %i.fu, ptr %i.hv, align 16, !tbaa !185
  %i.hw = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store double %i.ft, ptr %i.hw, align 8, !tbaa !185
  %i.hx = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store double %i.fs, ptr %i.hx, align 16, !tbaa !185
  %i.hy = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  store double 1.000000e+00, ptr %i.hy, align 8, !tbaa !185
  %i.hz = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.ia = insertelement <2 x double> poison, double %i.ft, i64 0
  %i.ib = insertelement <2 x double> %i.ia, double %i.fs, i64 1
  %i.ic = fmul reassoc nsz arcp contract afn <2 x double> %i.ib, <double 3.000000e+00, double 2.000000e+00>
  store <2 x double> %i.ic, ptr %i.hz, align 16, !tbaa !185
  %i.id = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  store <2 x double> <double 1.000000e+00, double 0.000000e+00>, ptr %i.id, align 16, !tbaa !185
  %i.ie = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  %i.if = fmul reassoc nsz arcp contract afn double %i.fs, 6.000000e+00
  store double %i.if, ptr %i.ie, align 16, !tbaa !185
  %i.ig = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  store double 2.000000e+00, ptr %i.ig, align 8, !tbaa !185
  %i.ih = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ih, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #20
  %i.ii = insertelement <2 x float> poison, float %.0335, i64 0
  %i.ij = insertelement <2 x float> %i.ii, float %.0339, i64 1
  %i.ik = fpext reassoc nsz arcp contract afn <2 x float> %i.ij to <2 x double>
  store <2 x double> %i.ik, ptr %i.d, align 16, !tbaa !185
  %i.il = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.im = fpext reassoc nsz arcp contract afn float %.0341 to double
  store double %i.im, ptr %i.il, align 16, !tbaa !185
  %i.in = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store double 0.000000e+00, ptr %i.in, align 8, !tbaa !185
  call fastcc void @gauss_solve(ptr noundef %i.c, ptr noundef %i.d, i32 noundef 4)
  store float 0.000000e+00, ptr %i.gh, align 16, !tbaa !13
  %i.io = load <4 x double>, ptr %i.d, align 16, !tbaa !185
  %i.ip = fptrunc reassoc nsz arcp contract afn <4 x double> %i.io to <4 x float>
  %i.iq = shufflevector <4 x float> %i.ip, <4 x float> poison, <13 x i32> <i32 3, i32 poison, i32 poison, i32 poison, i32 2, i32 poison, i32 poison, i32 poison, i32 1, i32 poison, i32 poison, i32 poison, i32 0>
end_hunk_3
begin_hunk_4_@dt_iop_tonecurve_draw:bb.a
  %i.hf = fmul reassoc nsz arcp contract afn double %i.he, 5.000000e-01
  call void @cairo_set_line_width(ptr noundef %i.aj, double noundef %i.hf) #20
  %i.hg = load <2 x float>, ptr %i.cu, align 4, !tbaa !13
  %i.hh = fpext reassoc nsz arcp contract afn <2 x float> %i.hg to <2 x double> ; 2 uses
  %i.hi = extractelement <2 x double> %i.hh, i64 0
  %i.hj = extractelement <2 x double> %i.hh, i64 1
  call void @cairo_rectangle(ptr noundef %i.aj, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef %i.hi, double noundef %i.hj) #20
  %i.hk = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 128), align 8, !tbaa !206 ; 4 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 584
  %.sroa.01132.0.copyload = load double, ptr %i.hl, align 8
  %.sroa.41133.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hk, i64 592
  %.sroa.41133.0.copyload = load double, ptr %.sroa.41133.0..sroa_idx, align 8
  %.sroa.51134.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hk, i64 600
  %.sroa.51134.0.copyload = load double, ptr %.sroa.51134.0..sroa_idx, align 8
  %.sroa.61135.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hk, i64 608
  %.sroa.61135.0.copyload = load double, ptr %.sroa.61135.0..sroa_idx, align 8
  call void @cairo_set_source_rgba(ptr noundef %i.aj, double noundef %.sroa.01132.0.copyload, double noundef %.sroa.41133.0.copyload, double noundef %.sroa.51134.0.copyload, double noundef %.sroa.61135.0.copyload) #20
  call void @cairo_fill_preserve(ptr noundef %i.aj) #20
  %i.hm = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 128), align 8, !tbaa !206 ; 4 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 648
  %.sroa.01136.0.copyload = load double, ptr %i.hn, align 8
  %.sroa.41137.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hm, i64 656
  %.sroa.41137.0.copyload = load double, ptr %.sroa.41137.0..sroa_idx, align 8
  %.sroa.51138.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hm, i64 664
  %.sroa.51138.0.copyload = load double, ptr %.sroa.51138.0..sroa_idx, align 8
  %.sroa.61139.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hm, i64 672
  %.sroa.61139.0.copyload = load double, ptr %.sroa.61139.0..sroa_idx, align 8
  call void @cairo_set_source_rgba(ptr noundef %i.aj, double noundef %.sroa.01136.0.copyload, double noundef %.sroa.41137.0.copyload, double noundef %.sroa.51138.0.copyload, double noundef %.sroa.61139.0.copyload) #20
  call void @cairo_stroke(ptr noundef %i.aj) #20
  %i.ho = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !172
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 1432
  %i.hq = load double, ptr %i.hp, align 8, !tbaa !223
  %i.hr = fmul reassoc nsz arcp contract afn double %i.hq, 5.000000e-01
  call void @cairo_set_line_width(ptr noundef %i.aj, double noundef %i.hr) #20
  %i.hs = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 128), align 8, !tbaa !206 ; 4 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 648
  %.sroa.01140.0.copyload = load double, ptr %i.ht, align 8
  %.sroa.41141.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hs, i64 656
  %.sroa.41141.0.copyload = load double, ptr %.sroa.41141.0..sroa_idx, align 8
  %.sroa.51142.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hs, i64 664
  %.sroa.51142.0.copyload = load double, ptr %.sroa.51142.0..sroa_idx, align 8
  %.sroa.61143.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hs, i64 672
  %.sroa.61143.0.copyload = load double, ptr %.sroa.61143.0..sroa_idx, align 8
  call void @cairo_set_source_rgba(ptr noundef %i.aj, double noundef %.sroa.01140.0.copyload, double noundef %.sroa.41141.0.copyload, double noundef %.sroa.51142.0.copyload, double noundef %.sroa.61143.0.copyload) #20
  call void @cairo_save(ptr noundef %i.aj) #20
  call void @cairo_scale(ptr noundef %i.aj, double noundef 1.000000e+00, double noundef -1.000000e+00) #20
  %i.hu = load float, ptr %i.cz, align 8, !tbaa !452
  %i.hv = fneg reassoc nsz arcp contract afn float %i.hu
  %i.hw = fpext reassoc nsz arcp contract afn float %i.hv to double
  call void @cairo_translate(ptr noundef %i.aj, double noundef 0.000000e+00, double noundef %i.hw) #20
  %i.hx = load i32, ptr %i.er, align 4, !tbaa !187
  switch i32 %i.hx, label %bb.i [
    i32 0, label %bb.g
    i32 1, label %bb.g
    i32 2, label %bb.h
  ]

bb.g:                                             ; preds = %bb.f, %bb.f
  %i.hy = load float, ptr %i.cu, align 4, !tbaa !451
  %i.hz = fptosi float %i.hy to i32               ; 2 uses
  %i.ia = load float, ptr %i.cz, align 8, !tbaa !452
  %i.ib = fptosi float %i.ia to i32               ; 2 uses
  %i.ic = sitofp reassoc nsz arcp contract afn i32 %i.hz to float ; 3 uses
  %i.id = sitofp reassoc nsz arcp contract afn i32 %i.ib to float ; 3 uses
  %invariant.op.i = fmul reassoc nnan nsz arcp contract afn float %i.ic, 2.500000e-01
  %factor.op.fmul.i = fmul reassoc nnan nsz arcp contract afn float %i.id, 2.500000e-01
  %i.ie = sitofp i32 %i.ib to double              ; 3 uses
  %i.if = sitofp i32 %i.hz to double              ; 3 uses
  %i.ig = fpext reassoc nsz arcp contract afn float %invariant.op.i to double ; 2 uses
  call void @cairo_move_to(ptr noundef %i.aj, double noundef %i.ig, double noundef 0.000000e+00) #20
  call void @cairo_line_to(ptr noundef %i.aj, double noundef %i.ig, double noundef %i.ie) #20
  call void @cairo_stroke(ptr noundef %i.aj) #20
  %i.ih = fpext reassoc nsz arcp contract afn float %factor.op.fmul.i to double ; 2 uses
  call void @cairo_move_to(ptr noundef %i.aj, double noundef 0.000000e+00, double noundef %i.ih) #20
  call void @cairo_line_to(ptr noundef %i.aj, double noundef %i.if, double noundef %i.ih) #20
  call void @cairo_stroke(ptr noundef %i.aj) #20
  %.reass31.1.i = fmul reassoc nnan nsz arcp contract afn float %i.id, 5.000000e-01
  %.reass.1.i = fmul reassoc nnan nsz arcp contract afn float %i.ic, 5.000000e-01
  %i.ii = fpext reassoc nsz arcp contract afn float %.reass.1.i to double ; 2 uses
  call void @cairo_move_to(ptr noundef %i.aj, double noundef %i.ii, double noundef 0.000000e+00) #20
  call void @cairo_line_to(ptr noundef %i.aj, double noundef %i.ii, double noundef %i.ie) #20
  call void @cairo_stroke(ptr noundef %i.aj) #20
  %i.ij = fpext reassoc nsz arcp contract afn float %.reass31.1.i to double ; 2 uses
  call void @cairo_move_to(ptr noundef %i.aj, double noundef 0.000000e+00, double noundef %i.ij) #20
  call void @cairo_line_to(ptr noundef %i.aj, double noundef %i.if, double noundef %i.ij) #20
  call void @cairo_stroke(ptr noundef %i.aj) #20
  %.reass31.2.i = fmul reassoc nnan nsz arcp contract afn float %i.id, 7.500000e-01
  %.reass.2.i = fmul reassoc nnan nsz arcp contract afn float %i.ic, 7.500000e-01
  br label %.sink.split1430

bb.h:                                             ; preds = %bb.f
  %i.ik = load float, ptr %i.cu, align 4, !tbaa !451
  %i.il = fptosi float %i.ik to i32               ; 2 uses
  %i.im = load float, ptr %i.cz, align 8, !tbaa !452
  %i.in = fptosi float %i.im to i32               ; 2 uses
  %i.io = sitofp reassoc nsz arcp contract afn i32 %i.il to float ; 3 uses
  %i.ip = sitofp reassoc nsz arcp contract afn i32 %i.in to float ; 3 uses
  %i.iq = sitofp i32 %i.in to double              ; 3 uses
  %i.ir = sitofp i32 %i.il to double              ; 3 uses
  %.reass30.i = fmul reassoc nnan nsz arcp contract afn float %i.ip, f0x3F157A4A
  %.reass.i = fmul reassoc nnan nsz arcp contract afn float %i.io, f0x3F157A4A
  %i.is = fpext reassoc nsz arcp contract afn float %.reass.i to double ; 2 uses
  call void @cairo_move_to(ptr noundef %i.aj, double noundef %i.is, double noundef 0.000000e+00) #20
  call void @cairo_line_to(ptr noundef %i.aj, double noundef %i.is, double noundef %i.iq) #20
  call void @cairo_stroke(ptr noundef %i.aj) #20
  %i.it = fpext reassoc nsz arcp contract afn float %.reass30.i to double ; 2 uses
  call void @cairo_move_to(ptr noundef %i.aj, double noundef 0.000000e+00, double noundef %i.it) #20
  call void @cairo_line_to(ptr noundef %i.aj, double noundef %i.ir, double noundef %i.it) #20
  call void @cairo_stroke(ptr noundef %i.aj) #20
  %.reass30.1.i = fmul reassoc nnan nsz arcp contract afn float %i.ip, f0x3F48EFC1
  %.reass.1.i1126 = fmul reassoc nnan nsz arcp contract afn float %i.io, f0x3F48EFC1
  %i.iu = fpext reassoc nsz arcp contract afn float %.reass.1.i1126 to double ; 2 uses
  call void @cairo_move_to(ptr noundef %i.aj, double noundef %i.iu, double noundef 0.000000e+00) #20
  call void @cairo_line_to(ptr noundef %i.aj, double noundef %i.iu, double noundef %i.iq) #20
  call void @cairo_stroke(ptr noundef %i.aj) #20
  %i.iv = fpext reassoc nsz arcp contract afn float %.reass30.1.i to double ; 2 uses
  call void @cairo_move_to(ptr noundef %i.aj, double noundef 0.000000e+00, double noundef %i.iv) #20
  call void @cairo_line_to(ptr noundef %i.aj, double noundef %i.ir, double noundef %i.iv) #20
  call void @cairo_stroke(ptr noundef %i.aj) #20
  %.reass30.2.i = fmul reassoc nnan nsz arcp contract afn float %i.ip, f0x3F68D423
  %.reass.2.i1127 = fmul reassoc nnan nsz arcp contract afn float %i.io, f0x3F68D423
  br label %.sink.split1430

.sink.split1430:                                  ; preds = %bb.g, %bb.h
  %.reass.2.i1127.sink = phi float [ %.reass.2.i1127, %bb.h ], [ %.reass.2.i, %bb.g ]
  %.sink1434 = phi double [ %i.iq, %bb.h ], [ %i.ie, %bb.g ]
  %.reass30.2.i.sink = phi float [ %.reass30.2.i, %bb.h ], [ %.reass31.2.i, %bb.g ]
  %.sink = phi double [ %i.ir, %bb.h ], [ %i.if, %bb.g ]
  %i.iw = fpext reassoc nsz arcp contract afn float %.reass.2.i1127.sink to double ; 2 uses
  call void @cairo_move_to(ptr noundef %i.aj, double noundef %i.iw, double noundef 0.000000e+00) #20
  call void @cairo_line_to(ptr noundef %i.aj, double noundef %i.iw, double noundef %.sink1434) #20
  call void @cairo_stroke(ptr noundef %i.aj) #20
  %i.ix = fpext reassoc nsz arcp contract afn float %.reass30.2.i.sink to double ; 2 uses
  call void @cairo_move_to(ptr noundef %i.aj, double noundef 0.000000e+00, double noundef %i.ix) #20
  call void @cairo_line_to(ptr noundef %i.aj, double noundef %.sink, double noundef %i.ix) #20
  call void @cairo_stroke(ptr noundef %i.aj) #20
  br label %bb.i

bb.i:                                             ; preds = %.sink.split1430, %bb.f
  call void @cairo_restore(ptr noundef %i.aj) #20
  %i.iy = load float, ptr %i.cz, align 8, !tbaa !452
  %i.iz = fpext reassoc nsz arcp contract afn float %i.iy to double
  call void @cairo_move_to(ptr noundef %i.aj, double noundef 0.000000e+00, double noundef %i.iz) #20
  %i.ja = load float, ptr %i.cu, align 4, !tbaa !451
  %i.jb = fpext reassoc nsz arcp contract afn float %i.ja to double
  call void @cairo_line_to(ptr noundef %i.aj, double noundef %i.jb, double noundef 0.000000e+00) #20
  call void @cairo_stroke(ptr noundef %i.aj) #20
  %i.jc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !172
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 1432
  %i.je = load double, ptr %i.jd, align 8, !tbaa !223
  %i.jf = fmul reassoc nsz arcp contract afn double %i.je, 2.000000e+00
  call void @cairo_set_line_width(ptr noundef %i.aj, double noundef %i.jf) #20
  %i.jg = getelementptr inbounds nuw i8, ptr %i.c, i64 60
  %i.jh = load float, ptr %i.jg, align 4, !tbaa !181
  %i.ji = fmul reassoc nsz arcp contract afn float %i.jh, 2.000000e-02
  %i.jj = fadd reassoc nsz arcp contract afn float %i.ji, 1.000000e+00 ; 7 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %i.e, i64 400 ; 5 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %i.e, i64 404 ; 4 uses
  %i.jm = load <2 x float>, ptr %i.jk, align 16, !tbaa !13 ; 2 uses
  %i.jn = fmul reassoc arcp contract afn <2 x float> %i.jm, <float poison, float f0x3EAAAAAB>
  %i.jo = fmul reassoc nsz arcp contract afn <2 x float> %i.jm, <float f0x3EAAAAAB, float poison>
  %i.jp = fsub reassoc nsz arcp contract afn <2 x float> <float poison, float f0x3EAAAAAB>, %i.jn
  %i.jq = shufflevector <2 x float> %i.jo, <2 x float> %i.jp, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.jr = fmul reassoc nsz arcp contract afn <2 x float> %i.jq, %i.jq ; 5 uses
  call void @cairo_set_source_rgb(ptr noundef %i.aj, double noundef 5.000000e-01, double noundef 5.000000e-01, double noundef 5.000000e-01) #20
  call void @cairo_save(ptr noundef %i.aj) #20
  %i.js = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !172
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 1432
  %i.ju = load double, ptr %i.jt, align 8, !tbaa !223 ; 2 uses
  %i.jv = fmul reassoc nsz arcp contract afn double %i.ju, -2.000000e+00 ; 2 uses
  %i.jw = load float, ptr %i.cu, align 4, !tbaa !451
  %i.jx = fpext reassoc nsz arcp contract afn float %i.jw to double
  %i.jy = fmul reassoc nsz arcp contract afn double %i.ju, 4.000000e+00 ; 2 uses
  %i.jz = fadd reassoc nsz arcp contract afn double %i.jy, %i.jx
  %i.ka = load float, ptr %i.cz, align 8, !tbaa !452
  %i.kb = fpext reassoc nsz arcp contract afn float %i.ka to double
  %i.kc = fadd reassoc nsz arcp contract afn double %i.jy, %i.kb
  call void @cairo_rectangle(ptr noundef %i.aj, double noundef %i.jv, double noundef %i.jv, double noundef %i.jz, double noundef %i.kc) #20
  call void @cairo_clip(ptr noundef %i.aj) #20
  %i.kd = getelementptr inbounds nuw i8, ptr %i.c, i64 76
  %i.ke = load i32, ptr %i.kd, align 4, !tbaa !180
  switch i32 %i.ke, label %.loopexit [
    i32 0, label %bb.j
    i32 1, label %bb.o
    i32 2, label %bb.o
  ]

bb.j:                                             ; preds = %bb.i
  %i.kf = load float, ptr %i.cz, align 8, !tbaa !452
  %i.kg = fpext reassoc nsz arcp contract afn float %i.kf to double
  %i.kh = extractelement <2 x float> %i.jr, i64 0
  %i.ki = fdiv reassoc nsz arcp contract afn float -0.000000e+00, %i.kh
  %i.kj = call reassoc nsz arcp contract afn float @llvm.exp.f32(float %i.ki)
  %i.kk = extractelement <2 x float> %i.jr, i64 1
  %i.kl = fdiv reassoc nsz arcp contract afn float -5.000000e-01, %i.kk
  %i.km = call reassoc nsz arcp contract afn float @llvm.exp.f32(float %i.kl)
  %i.kn = fadd reassoc nsz arcp contract afn float %i.km, %i.kj
  %i.ko = fdiv reassoc nsz arcp contract afn float %i.kn, %i.jj
  %i.kp = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.ko, float 0.000000e+00)
  %i.kq = call reassoc nnan nsz arcp contract afn float @llvm.minnum.f32(float %i.kp, float 1.000000e+00)
  %i.kr = fsub fast float 1.000000e+00, %i.kq
  %i.ks = fpext fast float %i.kr to double
  %i.kt = fsub reassoc nnan nsz arcp contract afn double 1.000000e+00, %i.ks
  %i.ku = fmul reassoc nsz arcp contract afn double %i.kt, %i.kg
  call void @cairo_move_to(ptr noundef %i.aj, double noundef 0.000000e+00, double noundef %i.ku) #20
  %i.kv = fmul reassoc nsz arcp contract afn float %i.ei, 1.900000e-01
  %i.kw = fdiv reassoc nsz arcp contract afn <2 x float> splat (float 1.000000e+00), %i.jr
  %i.kx = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.jj
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.n
  %.010801331 = phi i32 [ 1, %bb.j ], [ %i.mj, %bb.n ] ; 2 uses
  %i.ky = uitofp nsz nneg i32 %.010801331 to double
  %i.kz = fmul reassoc nnan nsz arcp contract afn double %i.ky, f0x3F70101010101010
  %i.la = fptrunc reassoc nsz arcp contract afn double %i.kz to float ; 5 uses
  %i.lb = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.la
  %i.lc = insertelement <2 x float> poison, float %i.la, i64 0
  %i.ld = insertelement <2 x float> %i.lc, float %i.lb, i64 1 ; 2 uses
  %i.le = fmul reassoc nsz arcp contract afn <2 x float> %i.ld, %i.ld
  %i.lf = fmul reassoc nsz arcp contract afn <2 x float> %i.le, splat (float -5.000000e-01)
  %i.lg = fmul reassoc nsz arcp contract afn <2 x float> %i.lf, %i.kw
  %i.lh = call reassoc nsz arcp contract afn <2 x float> @llvm.exp.v2f32(<2 x float> %i.lg)
  %i.li = call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v2f32(float 0.000000e+00, <2 x float> %i.lh)
  %i.lj = fmul reassoc nsz arcp contract afn float %i.li, %i.kx
  %i.lk = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.lj, float 0.000000e+00)
  %i.ll = call reassoc nnan nsz arcp contract afn float @llvm.minnum.f32(float %i.lk, float 1.000000e+00)
  %i.lm = fsub fast float 1.000000e+00, %i.ll
  %i.ln = load i32, ptr %i.er, align 4, !tbaa !187
  switch i32 %i.ln, label %bb.n [
    i32 1, label %bb.l
    i32 2, label %bb.m
  ]

bb.l:                                             ; preds = %bb.k
  %i.lo = load float, ptr %i.em, align 4, !tbaa !21
  %i.lp = fmul reassoc nsz arcp contract afn float %i.eo, %i.la
  %i.lq = fadd reassoc nsz arcp contract afn float %i.lo, %i.lp
  %i.lr = call reassoc nsz arcp contract afn float @llvm.exp2.f32(float %i.lq)
  %i.ls = fmul reassoc nsz arcp contract afn float %i.lr, %i.ej
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.lt = load float, ptr %i.em, align 4, !tbaa !21
  %i.lu = fmul reassoc nsz arcp contract afn float %i.eo, %i.la
  %i.lv = fadd reassoc nsz arcp contract afn float %i.lt, %i.lu
  %i.lw = call reassoc nsz arcp contract afn float @llvm.exp2.f32(float %i.lv)
  %i.lx = fmul reassoc nsz arcp contract afn float %i.kv, %i.lw
  %i.ly = fadd reassoc nsz arcp contract afn float %i.lx, 1.000000e+00
  %i.lz = call reassoc nsz arcp contract afn float @llvm.log.f32(float %i.ly)
  %i.ma = fmul reassoc nsz arcp contract afn float %i.lz, f0x3EAAE8E8
  br label %bb.n

bb.n:                                             ; preds = %bb.k, %bb.m, %bb.l
  %.01079 = phi nsz float [ %i.ls, %bb.l ], [ %i.ma, %bb.m ], [ %i.la, %bb.k ]
  %i.mb = load float, ptr %i.cu, align 4, !tbaa !451
  %i.mc = fmul reassoc nsz arcp contract afn float %i.mb, %.01079
  %i.md = fpext reassoc nsz arcp contract afn float %i.mc to double
  %i.me = load float, ptr %i.cz, align 8, !tbaa !452
  %i.mf = fpext reassoc nsz arcp contract afn float %i.me to double
  %i.mg = fpext fast float %i.lm to double
  %i.mh = fsub reassoc nnan nsz arcp contract afn double 1.000000e+00, %i.mg
  %i.mi = fmul reassoc nsz arcp contract afn double %i.mh, %i.mf
  call void @cairo_line_to(ptr noundef %i.aj, double noundef %i.md, double noundef %i.mi) #20
  %i.mj = add nuw nsw i32 %.010801331, 1          ; 2 uses
  %exitcond1346.not = icmp eq i32 %i.mj, 256
  br i1 %exitcond1346.not, label %.loopexit, label %bb.k

bb.o:                                             ; preds = %bb.i, %bb.i
  %i.mk = load float, ptr %i.cz, align 8, !tbaa !452
  %i.ml = fpext reassoc nsz arcp contract afn float %i.mk to double
  %i.mm = call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.jj)
  %i.mn = fdiv reassoc nsz arcp contract afn float 5.000000e-01, %i.mm ; 2 uses
  %i.mo = fmul reassoc nsz arcp contract afn float %i.mn, -0.000000e+00
  %i.mp = fneg reassoc nsz arcp contract afn float %i.mn ; 2 uses
  %i.mq = insertelement <2 x float> poison, float %i.mo, i64 0
  %i.mr = insertelement <2 x float> %i.mq, float %i.mp, i64 1
  %i.ms = fdiv reassoc nsz arcp contract afn <2 x float> %i.mr, %i.jr ; 2 uses
  %i.mt = extractelement <2 x float> %i.ms, i64 0
  %i.mu = fadd reassoc ninf nsz arcp contract afn float %i.mt, 1.000000e+00
  %i.mv = extractelement <2 x float> %i.ms, i64 1
  %i.mw = call reassoc nsz arcp contract afn float @llvm.exp.f32(float %i.mv)
  %i.mx = fadd reassoc nsz arcp contract afn float %i.mu, %i.mw
  %i.my = fmul reassoc nsz arcp contract afn float %i.mx, %i.jj
  %i.mz = fsub reassoc nsz arcp contract afn float %i.jj, %i.my
  %i.na = fpext reassoc nsz arcp contract afn float %i.mz to double
  %i.nb = fsub reassoc nsz arcp contract afn double 1.000000e+00, %i.na
  %i.nc = fmul reassoc nsz arcp contract afn double %i.nb, %i.ml
  call void @cairo_move_to(ptr noundef %i.aj, double noundef 0.000000e+00, double noundef %i.nc) #20
  %i.nd = fmul reassoc nsz arcp contract afn float %i.ei, 1.900000e-01
  %i.ne = insertelement <2 x float> poison, float %i.mp, i64 0
  %i.nf = shufflevector <2 x float> %i.ne, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ng = fdiv reassoc nsz arcp contract afn <2 x float> splat (float 1.000000e+00), %i.jr
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.s
  %.010781330 = phi i32 [ 1, %bb.o ], [ %i.ot, %bb.s ] ; 2 uses
  %i.nh = uitofp nsz nneg i32 %.010781330 to double
  %i.ni = fmul reassoc nnan nsz arcp contract afn double %i.nh, f0x3F70101010101010
  %i.nj = fptrunc reassoc nsz arcp contract afn double %i.ni to float ; 5 uses
  %i.nk = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.nj
  %i.nl = insertelement <2 x float> poison, float %i.nj, i64 0
  %i.nm = insertelement <2 x float> %i.nl, float %i.nk, i64 1 ; 2 uses
  %i.nn = fmul reassoc nsz arcp contract afn <2 x float> %i.nm, %i.nm
  %i.no = fmul reassoc nsz arcp contract afn <2 x float> %i.nn, %i.nf
  %i.np = fmul reassoc nsz arcp contract afn <2 x float> %i.no, %i.ng ; 2 uses
  %i.nq = extractelement <2 x float> %i.np, i64 0
  %i.nr = call reassoc nsz arcp contract afn float @llvm.exp.f32(float %i.nq)
  %i.ns = extractelement <2 x float> %i.np, i64 1
  %i.nt = call reassoc nsz arcp contract afn float @llvm.exp.f32(float %i.ns)
  %i.nu = fadd reassoc nsz arcp contract afn float %i.nt, %i.nr
  %i.nv = fmul reassoc nsz arcp contract afn float %i.nu, %i.jj
  %i.nw = fsub reassoc nsz arcp contract afn float %i.jj, %i.nv
  %i.nx = load i32, ptr %i.er, align 4, !tbaa !187
  switch i32 %i.nx, label %bb.s [
    i32 1, label %bb.q
    i32 2, label %bb.r
  ]

bb.q:                                             ; preds = %bb.p
  %i.ny = load float, ptr %i.em, align 4, !tbaa !21
  %i.nz = fmul reassoc nsz arcp contract afn float %i.eo, %i.nj
  %i.oa = fadd reassoc nsz arcp contract afn float %i.ny, %i.nz
  %i.ob = call reassoc nsz arcp contract afn float @llvm.exp2.f32(float %i.oa)
  %i.oc = fmul reassoc nsz arcp contract afn float %i.ob, %i.ej
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.od = load float, ptr %i.em, align 4, !tbaa !21
  %i.oe = fmul reassoc nsz arcp contract afn float %i.eo, %i.nj
  %i.of = fadd reassoc nsz arcp contract afn float %i.od, %i.oe
  %i.og = call reassoc nsz arcp contract afn float @llvm.exp2.f32(float %i.of)
  %i.oh = fmul reassoc nsz arcp contract afn float %i.nd, %i.og
  %i.oi = fadd reassoc nsz arcp contract afn float %i.oh, 1.000000e+00
  %i.oj = call reassoc nsz arcp contract afn float @llvm.log.f32(float %i.oi)
  %i.ok = fmul reassoc nsz arcp contract afn float %i.oj, f0x3EAAE8E8
  br label %bb.s

bb.s:                                             ; preds = %bb.p, %bb.r, %bb.q
  %.01077 = phi nsz float [ %i.oc, %bb.q ], [ %i.ok, %bb.r ], [ %i.nj, %bb.p ]
  %i.ol = load float, ptr %i.cu, align 4, !tbaa !451
  %i.om = fmul reassoc nsz arcp contract afn float %i.ol, %.01077
  %i.on = fpext reassoc nsz arcp contract afn float %i.om to double
  %i.oo = load float, ptr %i.cz, align 8, !tbaa !452
  %i.op = fpext reassoc nsz arcp contract afn float %i.oo to double
  %i.oq = fpext reassoc nsz arcp contract afn float %i.nw to double
  %i.or = fsub reassoc nsz arcp contract afn double 1.000000e+00, %i.oq
  %i.os = fmul reassoc nsz arcp contract afn double %i.or, %i.op
  call void @cairo_line_to(ptr noundef %i.aj, double noundef %i.on, double noundef %i.os) #20
  %i.ot = add nuw nsw i32 %.010781330, 1          ; 2 uses
  %exitcond.not = icmp eq i32 %i.ot, 256
  br i1 %exitcond.not, label %.loopexit, label %bb.p

.loopexit:                                        ; preds = %bb.s, %bb.n, %bb.i
  call void @cairo_stroke(ptr noundef %i.aj) #20
  %i.ou = load i32, ptr %i.er, align 4, !tbaa !187 ; 2 uses
  %.off = add i32 %i.ou, -1
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %bb.t, label %bb.u

bb.t:                                             ; preds = %.loopexit
  %i.ov = load float, ptr %i.em, align 4, !tbaa !21
  %i.ow = fdiv reassoc nsz arcp contract afn float 0.000000e+00, %i.ej
  %i.ox = call reassoc nsz arcp contract afn float @llvm.log2.f32(float %i.ow)
  %i.oy = fsub reassoc nsz arcp contract afn float %i.ox, %i.ov
  %i.oz = fdiv reassoc nsz arcp contract afn float %i.oy, %i.eo
  %i.pa = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.oz, float 0.000000e+00)
  %i.pb = call reassoc nsz arcp contract afn noundef float @llvm.minnum.f32(float %i.pa, float 1.000000e+00) ; 2 uses
  %i.pc = icmp eq i32 %i.ou, 2
  br i1 %i.pc, label %.thread1211, label %.thread1209

.thread1209:                                      ; preds = %bb.t
  %i.pd = getelementptr inbounds nuw i8, ptr %i.e, i64 336 ; 2 uses
  %i.pe = getelementptr inbounds nuw i8, ptr %i.e, i64 352 ; 2 uses
  %i.pf = getelementptr inbounds nuw i8, ptr %i.e, i64 368 ; 2 uses
  %i.pg = getelementptr inbounds nuw i8, ptr %i.e, i64 384 ; 2 uses
  %i.ph = load float, ptr %i.jk, align 16, !tbaa !456
  %i.pi = load float, ptr %i.jl, align 4, !tbaa !457
  %i.pj = getelementptr inbounds nuw i8, ptr %i.e, i64 448 ; 2 uses
  %i.pk = call reassoc nsz arcp contract afn fastcc float @filmic_spline(float noundef %i.pb, ptr noundef nonnull %i.f, ptr noundef nonnull %i.pd, ptr noundef nonnull %i.pe, ptr noundef nonnull %i.pf, ptr noundef nonnull %i.pg, float noundef %i.ph, float noundef %i.pi, ptr noundef nonnull %i.pj)
  %i.pl = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.pk, float 0.000000e+00)
  %i.pm = call reassoc nsz arcp contract afn noundef float @llvm.minnum.f32(float %i.pl, float 1.000000e+00)
  %i.pn = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.po = load float, ptr %i.pn, align 4, !tbaa !19
  %i.pp = call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.pm, float %i.po)
  br label %bb.v

.thread1211:                                      ; preds = %bb.t
  %i.pq = fmul reassoc nnan nsz arcp contract afn float %i.pb, 1.900000e+01
  %i.pr = fadd reassoc nnan nsz arcp contract afn float %i.pq, 1.000000e+00
  %i.ps = call reassoc nnan nsz arcp contract afn float @llvm.log.f32(float %i.pr)
  %i.pt = fmul reassoc nnan nsz arcp contract afn float %i.ps, f0x3EAAE8E8
  %i.pu = getelementptr inbounds nuw i8, ptr %i.e, i64 336 ; 2 uses
  %i.pv = getelementptr inbounds nuw i8, ptr %i.e, i64 352 ; 2 uses
  %i.pw = getelementptr inbounds nuw i8, ptr %i.e, i64 368 ; 2 uses
  %i.px = getelementptr inbounds nuw i8, ptr %i.e, i64 384 ; 2 uses
  %i.py = load float, ptr %i.jk, align 16, !tbaa !456
  %i.pz = load float, ptr %i.jl, align 4, !tbaa !457
  %i.qa = getelementptr inbounds nuw i8, ptr %i.e, i64 448 ; 2 uses
  %i.qb = call reassoc nsz arcp contract afn fastcc float @filmic_spline(float noundef %i.pt, ptr noundef nonnull %i.f, ptr noundef nonnull %i.pu, ptr noundef nonnull %i.pv, ptr noundef nonnull %i.pw, ptr noundef nonnull %i.px, float noundef %i.py, float noundef %i.pz, ptr noundef nonnull %i.qa)
  %i.qc = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.qb, float 0.000000e+00)
  %i.qd = call reassoc nsz arcp contract afn noundef float @llvm.minnum.f32(float %i.qc, float 1.000000e+00)
  %i.qe = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.qf = load float, ptr %i.qe, align 4, !tbaa !19
  %i.qg = call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.qd, float %i.qf)
  %i.qh = fmul reassoc nsz arcp contract afn float %i.qg, 1.900000e+01
  %i.qi = fadd reassoc nsz arcp contract afn float %i.qh, 1.000000e+00
  %i.qj = call reassoc nsz arcp contract afn float @llvm.log.f32(float %i.qi)
  %i.qk = fmul reassoc nsz arcp contract afn float %i.qj, f0x3EAAE8E8
  br label %bb.v

bb.u:                                             ; preds = %.loopexit
  %i.ql = getelementptr inbounds nuw i8, ptr %i.e, i64 336 ; 2 uses
  %i.qm = getelementptr inbounds nuw i8, ptr %i.e, i64 352 ; 2 uses
  %i.qn = getelementptr inbounds nuw i8, ptr %i.e, i64 368 ; 2 uses
  %i.qo = getelementptr inbounds nuw i8, ptr %i.e, i64 384 ; 2 uses
  %i.qp = load float, ptr %i.jk, align 16, !tbaa !456
  %i.qq = load float, ptr %i.jl, align 4, !tbaa !457
  %i.qr = getelementptr inbounds nuw i8, ptr %i.e, i64 448 ; 2 uses
  %i.qs = call reassoc nsz arcp contract afn fastcc float @filmic_spline(float noundef 0.000000e+00, ptr noundef nonnull %i.f, ptr noundef nonnull %i.ql, ptr noundef nonnull %i.qm, ptr noundef nonnull %i.qn, ptr noundef nonnull %i.qo, float noundef %i.qp, float noundef %i.qq, ptr noundef nonnull %i.qr)
  %i.qt = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.qs, float 0.000000e+00)
  %i.qu = call reassoc nnan nsz arcp contract afn float @llvm.minnum.f32(float %i.qt, float 1.000000e+00)
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %.thread1211, %.thread1209
  %i.qv = phi ptr [ %i.pj, %.thread1209 ], [ %i.qa, %.thread1211 ], [ %i.qr, %bb.u ]
  %i.qw = phi ptr [ %i.pg, %.thread1209 ], [ %i.px, %.thread1211 ], [ %i.qo, %bb.u ]
  %i.qx = phi ptr [ %i.pf, %.thread1209 ], [ %i.pw, %.thread1211 ], [ %i.qn, %bb.u ]
  %i.qy = phi ptr [ %i.pe, %.thread1209 ], [ %i.pv, %.thread1211 ], [ %i.qm, %bb.u ]
  %i.qz = phi ptr [ %i.pd, %.thread1209 ], [ %i.pu, %.thread1211 ], [ %i.ql, %bb.u ]
  %.01074 = phi nsz float [ %i.pp, %.thread1209 ], [ %i.qk, %.thread1211 ], [ %i.qu, %bb.u ]
  %i.ra = load float, ptr %i.cz, align 8, !tbaa !452
  %i.rb = fpext reassoc nsz arcp contract afn float %i.ra to double
  %i.rc = fpext reassoc nsz arcp contract afn float %.01074 to double
  %i.rd = fsub reassoc nsz arcp contract afn double 1.000000e+00, %i.rc
  %i.re = fmul reassoc nsz arcp contract afn double %i.rd, %i.rb
  call void @cairo_move_to(ptr noundef %i.aj, double noundef 0.000000e+00, double noundef %i.re) #20
  %i.rf = getelementptr inbounds nuw i8, ptr %i.e, i64 424 ; 3 uses
  %i.rg = getelementptr inbounds nuw i8, ptr %i.e, i64 408 ; 4 uses
  %i.rh = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 12 uses
  %i.ri = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.ei
  %i.rj = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.eo
  br label %bb.x

bb.w:                                             ; preds = %bb.ah
  call void @cairo_restore(ptr noundef %i.aj) #20
  call void @cairo_save(ptr noundef %i.aj) #20
  %i.rk = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !172
  %i.rl = getelementptr inbounds nuw i8, ptr %i.rk, i64 1432
  %i.rm = load double, ptr %i.rl, align 8, !tbaa !223 ; 2 uses
  %i.rn = fmul reassoc nsz arcp contract afn double %i.rm, -4.000000e+00 ; 2 uses
  %i.ro = fmul reassoc nsz arcp contract afn double %i.rm, 8.000000e+00 ; 2 uses
  %i.rp = load <2 x float>, ptr %i.cu, align 4, !tbaa !13
  %i.rq = fpext reassoc nsz arcp contract afn <2 x float> %i.rp to <2 x double> ; 2 uses
  %i.rr = extractelement <2 x double> %i.rq, i64 0
  %i.rs = fadd reassoc nsz arcp contract afn double %i.ro, %i.rr
  %i.rt = extractelement <2 x double> %i.rq, i64 1
  %i.ru = fadd reassoc nsz arcp contract afn double %i.ro, %i.rt
  call void @cairo_rectangle(ptr noundef %i.aj, double noundef %i.rn, double noundef %i.rn, double noundef %i.rs, double noundef %i.ru) #20
  call void @cairo_clip(ptr noundef %i.aj) #20
  %i.rv = getelementptr inbounds nuw i8, ptr %i.e, i64 428
  %i.rw = getelementptr inbounds nuw i8, ptr %i.e, i64 436
  %i.rx = load float, ptr %i.rw, align 4, !tbaa !13 ; 3 uses
  %i.ry = getelementptr inbounds nuw i8, ptr %i.e, i64 416
  %i.rz = load float, ptr %i.ry, align 32, !tbaa !13 ; 3 uses
  %i.sa = load i32, ptr %i.er, align 4, !tbaa !187
  switch i32 %i.sa, label %bb.ak [
    i32 1, label %bb.ai
    i32 2, label %bb.aj
  ]

bb.x:                                             ; preds = %bb.v, %bb.ah
  %.010731332 = phi i32 [ 1, %bb.v ], [ %i.uc, %bb.ah ] ; 2 uses
  %i.sb = uitofp nsz nneg i32 %.010731332 to float
  %i.sc = fmul reassoc nnan nsz arcp contract afn float %i.sb, f0x3B808081
  %i.sd = call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.sc, float 2.400000e+00) ; 5 uses
  %i.se = load i32, ptr %i.er, align 4, !tbaa !187 ; 2 uses
  %.off1122 = add i32 %i.se, -1
  %switch1123 = icmp ult i32 %.off1122, 2
  br i1 %switch1123, label %bb.y, label %.thread1213
end_hunk_4
begin_hunk_5_@filmic_v4_prepare_matrices:bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load float, ptr %i.n, align 4, !tbaa !13
  store float %i.o, ptr %i.i, align 4, !tbaa !13
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.q = load float, ptr %i.p, align 4, !tbaa !13
  store float %i.q, ptr %i.j, align 4, !tbaa !13
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.s = load float, ptr %i.r, align 4, !tbaa !13
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 4
  store float %i.s, ptr %i.t, align 4, !tbaa !13
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.v = load float, ptr %i.u, align 4, !tbaa !13
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 20
  store float %i.v, ptr %i.w, align 4, !tbaa !13
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.y = load float, ptr %i.x, align 4, !tbaa !13
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 36
  store float %i.y, ptr %i.z, align 4, !tbaa !13
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !13
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 52
  store float %i.ab, ptr %i.ac, align 4, !tbaa !13
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !13
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 8
  store float %i.ae, ptr %i.af, align 4, !tbaa !13
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !13
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 24
  store float %i.ah, ptr %i.ai, align 4, !tbaa !13
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !13
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 40
  store float %i.ak, ptr %i.al, align 4, !tbaa !13
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.an = load float, ptr %i.am, align 4, !tbaa !13
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 56
  store float %i.an, ptr %i.ao, align 4, !tbaa !13
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !13
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 12
  store float %i.aq, ptr %i.ar, align 4, !tbaa !13
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.at = load float, ptr %i.as, align 4, !tbaa !13
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 28
  store float %i.at, ptr %i.au, align 4, !tbaa !13
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.aw = load float, ptr %i.av, align 4, !tbaa !13
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 44
  store float %i.aw, ptr %i.ax, align 4, !tbaa !13
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.az = load float, ptr %i.ay, align 4, !tbaa !13
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 60
  store float %i.az, ptr %i.ba, align 4, !tbaa !13
  %i.bb = icmp ne ptr %7, null                    ; 2 uses
  br i1 %i.bb, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call fastcc void @prepare_RGB_Yrg_matrices(ptr noundef nonnull %7, ptr noundef %i.a, ptr noundef %4)
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.bd = load <14 x float>, ptr %i.a, align 64, !tbaa !13
  %i.be = shufflevector <14 x float> %i.bd, <14 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13>
  store <8 x float> %i.be, ptr %3, align 4, !tbaa !13
  %i.bf = load <14 x float>, ptr %i.c, align 8, !tbaa !13
  %i.bg = shufflevector <14 x float> %i.bf, <14 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13>
  store <8 x float> %i.bg, ptr %i.bc, align 4, !tbaa !13
  %i.bh = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.bi = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.bj = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.bk = load float, ptr %4, align 4, !tbaa !13
  store float %i.bk, ptr %5, align 4, !tbaa !13
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.bm = load float, ptr %i.bl, align 4, !tbaa !13
  store float %i.bm, ptr %i.bh, align 4, !tbaa !13
  %i.bn = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bo = load float, ptr %i.bn, align 4, !tbaa !13
  store float %i.bo, ptr %i.bi, align 4, !tbaa !13
  %i.bp = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.bq = load float, ptr %i.bp, align 4, !tbaa !13
  store float %i.bq, ptr %i.bj, align 4, !tbaa !13
  %i.br = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.bs = load float, ptr %i.br, align 4, !tbaa !13
  %i.bt = getelementptr inbounds nuw i8, ptr %5, i64 4
  store float %i.bs, ptr %i.bt, align 4, !tbaa !13
  %i.bu = getelementptr inbounds nuw i8, ptr %4, i64 20
  %i.bv = load float, ptr %i.bu, align 4, !tbaa !13
  %i.bw = getelementptr inbounds nuw i8, ptr %5, i64 20
  store float %i.bv, ptr %i.bw, align 4, !tbaa !13
  %i.bx = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.by = load float, ptr %i.bx, align 4, !tbaa !13
  %i.bz = getelementptr inbounds nuw i8, ptr %5, i64 36
  store float %i.by, ptr %i.bz, align 4, !tbaa !13
  %i.ca = getelementptr inbounds nuw i8, ptr %4, i64 28
  %i.cb = load float, ptr %i.ca, align 4, !tbaa !13
  %i.cc = getelementptr inbounds nuw i8, ptr %5, i64 52
  store float %i.cb, ptr %i.cc, align 4, !tbaa !13
  %i.cd = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.ce = load float, ptr %i.cd, align 4, !tbaa !13
  %i.cf = getelementptr inbounds nuw i8, ptr %5, i64 8
  store float %i.ce, ptr %i.cf, align 4, !tbaa !13
  %i.cg = getelementptr inbounds nuw i8, ptr %4, i64 36
  %i.ch = load float, ptr %i.cg, align 4, !tbaa !13
  %i.ci = getelementptr inbounds nuw i8, ptr %5, i64 24
  store float %i.ch, ptr %i.ci, align 4, !tbaa !13
  %i.cj = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.ck = load float, ptr %i.cj, align 4, !tbaa !13
  %i.cl = getelementptr inbounds nuw i8, ptr %5, i64 40
  store float %i.ck, ptr %i.cl, align 4, !tbaa !13
  %i.cm = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.cn = load float, ptr %i.cm, align 4, !tbaa !13
  %i.co = getelementptr inbounds nuw i8, ptr %5, i64 56
  store float %i.cn, ptr %i.co, align 4, !tbaa !13
  %i.cp = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.cq = load float, ptr %i.cp, align 4, !tbaa !13
  %i.cr = getelementptr inbounds nuw i8, ptr %5, i64 12
  store float %i.cq, ptr %i.cr, align 4, !tbaa !13
  %i.cs = getelementptr inbounds nuw i8, ptr %4, i64 52
  %i.ct = load float, ptr %i.cs, align 4, !tbaa !13
  %i.cu = getelementptr inbounds nuw i8, ptr %5, i64 28
  store float %i.ct, ptr %i.cu, align 4, !tbaa !13
  %i.cv = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.cw = load float, ptr %i.cv, align 4, !tbaa !13
  %i.cx = getelementptr inbounds nuw i8, ptr %5, i64 44
  store float %i.cw, ptr %i.cx, align 4, !tbaa !13
  %i.cy = getelementptr inbounds nuw i8, ptr %4, i64 60
  %i.cz = load float, ptr %i.cy, align 4, !tbaa !13
  %i.da = getelementptr inbounds nuw i8, ptr %5, i64 60
  store float %i.cz, ptr %i.da, align 4, !tbaa !13
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.db = zext i1 %i.bb to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret i32 %i.db
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @RGB_tone_mapping_v4(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 16)) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly byval(%struct.dt_iop_filmic_rgb_spline_t) align 16 captures(none) %3, float noundef %4) unnamed_addr #25 {
.preheader.preheader:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load float, ptr %i.a, align 8, !tbaa !116
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.d = load float, ptr %i.c, align 4, !tbaa !117
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.f = load float, ptr %i.e, align 8, !tbaa !118
  %i.g = load <4 x float>, ptr %0, align 4, !tbaa !13
  %i.h = insertelement <4 x float> poison, float %i.b, i64 0
  %i.i = shufflevector <4 x float> %i.h, <4 x float> poison, <4 x i32> zeroinitializer
  %i.j = fdiv reassoc nsz arcp contract afn <4 x float> %i.g, %i.i
  %i.k = tail call reassoc nsz arcp contract afn <4 x float> @llvm.log2.v4f32(<4 x float> %i.j)
  %i.l = insertelement <4 x float> poison, float %i.d, i64 0
  %i.m = shufflevector <4 x float> %i.l, <4 x float> poison, <4 x i32> zeroinitializer
  %i.n = fsub reassoc nsz arcp contract afn <4 x float> %i.k, %i.m
  %i.o = insertelement <4 x float> poison, float %i.f, i64 0
  %i.p = shufflevector <4 x float> %i.o, <4 x float> poison, <4 x i32> zeroinitializer
  %i.q = fdiv reassoc nsz arcp contract afn <4 x float> %i.n, %i.p
  %i.r = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.q, <4 x float> zeroinitializer)
  %i.s = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.r, <4 x float> splat (float 1.000000e+00)) ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.y = load float, ptr %i.x, align 16, !tbaa !124 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 84
  %i.aa = load float, ptr %i.z, align 4, !tbaa !125 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 128 ; 3 uses
  %.sroa.0.0.vec.extract = extractelement <4 x float> %i.s, i64 0
  %i.ac = call reassoc nsz arcp contract afn fastcc float @filmic_spline(float noundef %.sroa.0.0.vec.extract, ptr noundef nonnull %3, ptr noundef nonnull %i.t, ptr noundef nonnull %i.u, ptr noundef nonnull %i.v, ptr noundef nonnull %i.w, float noundef %i.y, float noundef %i.aa, ptr noundef nonnull %i.ab)
  %.sroa.0.4.vec.extract = extractelement <4 x float> %i.s, i64 1
  %i.ad = call reassoc nsz arcp contract afn fastcc float @filmic_spline(float noundef %.sroa.0.4.vec.extract, ptr noundef nonnull %3, ptr noundef nonnull %i.t, ptr noundef nonnull %i.u, ptr noundef nonnull %i.v, ptr noundef nonnull %i.w, float noundef %i.y, float noundef %i.aa, ptr noundef nonnull %i.ab)
  %.sroa.0.8.vec.extract = extractelement <4 x float> %i.s, i64 2
  %i.ae = call reassoc nsz arcp contract afn fastcc float @filmic_spline(float noundef %.sroa.0.8.vec.extract, ptr noundef nonnull %3, ptr noundef nonnull %i.t, ptr noundef nonnull %i.u, ptr noundef nonnull %i.v, ptr noundef nonnull %i.w, float noundef %i.y, float noundef %i.aa, ptr noundef nonnull %i.ab)
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ag = load float, ptr %i.af, align 16, !tbaa !115
  %i.ah = insertelement <4 x float> %i.s, float %i.ac, i64 0
  %i.ai = insertelement <4 x float> %i.ah, float %i.ad, i64 1
  %i.aj = insertelement <4 x float> %i.ai, float %i.ae, i64 2 ; 3 uses
  %i.ak = insertelement <4 x float> poison, float %4, i64 0
  %i.al = shufflevector <4 x float> %i.ak, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.am = fcmp reassoc nsz arcp contract afn ogt <4 x float> %i.aj, %i.al
  %i.an = fcmp reassoc nsz arcp contract afn olt <4 x float> %i.aj, zeroinitializer
  %i.ao = select <4 x i1> %i.an, <4 x float> zeroinitializer, <4 x float> %i.aj
  %i.ap = select <4 x i1> %i.am, <4 x float> %i.al, <4 x float> %i.ao
  %i.aq = bitcast <4 x float> %i.ap to <4 x i32>  ; 2 uses
  %i.ar = and <4 x i32> %i.aq, splat (i32 8388607)
  %i.as = or disjoint <4 x i32> %i.ar, splat (i32 1065353216)
  %i.at = bitcast <4 x i32> %i.as to <4 x float>  ; 5 uses
  %i.au = lshr <4 x i32> %i.aq, splat (i32 23)
  %i.av = and <4 x i32> %i.au, splat (i32 255)
  %i.aw = add nsw <4 x i32> %i.av, splat (i32 -127)
  %i.ax = sitofp <4 x i32> %i.aw to <4 x float>
  %i.ay = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.at, splat (float f0x3D74552F)
  %i.az = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.ay, splat (float f0xBEEE7397)
  %i.ba = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.az, %i.at
  %i.bb = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.ba, splat (float f0x3FBD96DD)
  %i.bc = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.bb, %i.at
  %i.bd = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.bc, splat (float f0xC02153F6)
  %i.be = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.bd, %i.at
  %i.bf = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.be, splat (float f0x4038D96C)
  %i.bg = fadd fast <4 x float> %i.at, splat (float -1.000000e+00)
  %i.bh = fmul reassoc nsz arcp contract afn <4 x float> %i.bf, %i.bg
  %i.bi = fadd reassoc nsz arcp contract afn <4 x float> %i.bh, %i.ax
  %i.bj = insertelement <4 x float> poison, float %i.ag, i64 0
  %i.bk = shufflevector <4 x float> %i.bj, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bl = fmul reassoc nsz arcp contract afn <4 x float> %i.bi, %i.bk
  %i.bm = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.bl, <4 x float> splat (float 1.290000e+02))
  %i.bn = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.bm, <4 x float> splat (float f0xC2FDFFFF)) ; 2 uses
  %i.bo = fadd reassoc nsz arcp contract afn <4 x float> %i.bn, splat (float -5.000000e-01)
  %i.bp = tail call <4 x i32> @llvm.x86.sse2.cvtps2dq(<4 x float> %i.bo)
  %i.bq = sitofp reassoc nsz arcp contract afn <4 x i32> %i.bp to <4 x float> ; 2 uses
  %i.br = fsub reassoc nsz arcp contract afn <4 x float> %i.bn, %i.bq ; 4 uses
  %i.bs = fptosi <4 x float> %i.bq to <4 x i32>
  %i.bt = shl <4 x i32> %i.bs, splat (i32 23)
  %i.bu = add <4 x i32> %i.bt, splat (i32 1065353216)
  %i.bv = fmul reassoc nsz arcp contract afn <4 x float> %i.br, splat (float f0x3C5DBE69)
  %i.bw = fadd reassoc nsz arcp contract afn <4 x float> %i.bv, splat (float f0x3D5509F9)
  %i.bx = fmul reassoc nsz arcp contract afn <4 x float> %i.bw, %i.br
  %i.by = fadd reassoc nsz arcp contract afn <4 x float> %i.bx, splat (float f0x3E773CC5)
  %i.bz = fmul reassoc nsz arcp contract afn <4 x float> %i.by, %i.br
  %i.ca = fadd reassoc nsz arcp contract afn <4 x float> %i.bz, splat (float f0x3F3168B3)
  %i.cb = fmul reassoc nsz arcp contract afn <4 x float> %i.ca, %i.br
  %i.cc = fadd reassoc nsz arcp contract afn <4 x float> %i.cb, splat (float f0x3F800016)
  %i.cd = bitcast <4 x i32> %i.bu to <4 x float>
  %i.ce = fmul reassoc nsz arcp contract afn <4 x float> %i.cc, %i.cd
  store <4 x float> %i.ce, ptr %1, align 4, !tbaa !13
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @gamut_mapping(ptr nofree noundef nonnull captures(none) initializes((8, 16)) %0, ptr nofree noundef nonnull readonly captures(none) %1, ptr nofree noundef nonnull captures(none) initializes((0, 16)) %2, ptr nofree noundef nonnull readonly captures(none) %3, ptr nofree noundef nonnull readonly captures(none) %4, ptr nofree noundef nonnull readonly captures(none) %5, ptr nofree noundef nonnull readonly captures(none) %6, ptr nofree noundef nonnull readonly captures(none) %7, ptr nofree noundef nonnull readonly captures(none) %8, float noundef %9, float noundef %10, float noundef %11, i32 noundef range(i32 0, 2) %12) unnamed_addr #26 {
bb.a:
  %i.a = ptrtoaddr ptr %5 to i64                  ; 2 uses
  %i.b = ptrtoaddr ptr %2 to i64                  ; 3 uses
  %i.c = ptrtoaddr ptr %6 to i64                  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load float, ptr %i.d, align 4, !tbaa !13 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %i.e, ptr %i.f, align 4, !tbaa !13
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.h = load float, ptr %i.g, align 4, !tbaa !13 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 12
  store float %i.h, ptr %i.i, align 4, !tbaa !13
  %i.j = load float, ptr %0, align 4, !tbaa !13   ; 3 uses
  %i.k = fmul reassoc nsz arcp contract afn float %10, f0x3F8767CD ; 2 uses
  %i.l = fcmp reassoc nsz arcp contract afn ogt float %i.j, %i.k
  %i.m = fmul reassoc nsz arcp contract afn float %9, f0x3F8767CD ; 2 uses
  %i.n = fcmp reassoc nsz arcp contract afn olt float %i.j, %i.m
  %. = select reassoc nsz arcp contract afn i1 %i.n, float %i.m, float %i.j
  %i.o = select reassoc nsz arcp contract afn i1 %i.l, float %i.k, float %. ; 4 uses
  store float %i.o, ptr %0, align 4, !tbaa !13
  %.val = load float, ptr %1, align 4, !tbaa !13  ; 2 uses
  %i.p = getelementptr i8, ptr %1, i64 4
  %.val36 = load float, ptr %i.p, align 4, !tbaa !13
  %i.q = fmul reassoc nsz arcp contract afn float %.val36, %.val ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.s = load float, ptr %i.r, align 4, !tbaa !13
  %i.t = fmul reassoc nsz arcp contract afn float %i.s, %i.o ; 6 uses
  %i.u = fcmp reassoc nsz arcp contract afn ogt float %i.o, %.val
  %i.v = fcmp reassoc nsz arcp contract afn olt float %i.q, %i.t
  %or.cond.i = select i1 %i.u, i1 %i.v, i1 false
  br i1 %or.cond.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.w = fadd reassoc nsz arcp contract afn float %i.t, %i.q
  %i.x = fmul reassoc nsz arcp contract afn float %i.w, 5.000000e-01
  br label %filmic_desaturate_v4.exit

bb.c:                                             ; preds = %bb.a
  %i.y = fcmp reassoc nsz arcp contract afn olt float %11, 0.000000e+00
  %i.z = fcmp reassoc nsz arcp contract afn ogt float %11, 0.000000e+00
  %i.aa = fcmp reassoc nsz arcp contract afn ogt float %i.q, %i.t
  %i.ab = fsub reassoc nsz arcp contract afn float %i.q, %i.t
  %i.ac = fmul reassoc nsz arcp contract afn float %i.ab, %11
  %or.cond3.i = select i1 %i.z, i1 %i.aa, i1 false
  %or.cond5.i = or i1 %i.y, %or.cond3.i
  %i.ad = fadd reassoc nsz arcp contract afn float %i.ac, %i.t
  %i.ae = select reassoc nsz arcp contract afn i1 %or.cond5.i, float %i.ad, float %i.t
  br label %filmic_desaturate_v4.exit

filmic_desaturate_v4.exit:                        ; preds = %bb.b, %bb.c
  %i.af = phi reassoc nsz arcp contract afn float [ %i.x, %bb.b ], [ %i.ae, %bb.c ]
  %i.ag = fdiv reassoc nsz arcp contract afn float %i.af, %i.o ; 2 uses
  %i.ah = fcmp reassoc nsz arcp contract afn ogt float %i.ag, 0.000000e+00
  %spec.select.i = select reassoc nsz arcp contract afn i1 %i.ah, float %i.ag, float 0.000000e+00 ; 4 uses
  %i.ai = fmul reassoc nsz arcp contract afn float %spec.select.i, %i.e
  %i.aj = fadd reassoc nsz arcp contract afn float %i.ai, f0x3E604727 ; 2 uses
  %i.ak = fmul reassoc nsz arcp contract afn float %spec.select.i, %i.h
  %i.al = fadd reassoc nsz arcp contract afn float %i.ak, 5.437140e-01 ; 2 uses
  %i.am = fcmp reassoc nsz arcp contract afn olt float %i.aj, 0.000000e+00
  %i.an = fdiv reassoc nsz arcp contract afn float f0xBE604727, %i.e
  %i.ao = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.an, float %spec.select.i)
  %.0.i = select nsz i1 %i.am, float %i.ao, float %spec.select.i ; 2 uses
  %i.ap = fcmp reassoc nsz arcp contract afn olt float %i.al, 0.000000e+00
  %i.aq = fdiv reassoc nsz arcp contract afn float -5.437140e-01, %i.h
  %i.ar = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.aq, float %.0.i)
  %.1.i = select nsz i1 %i.ap, float %i.ar, float %.0.i ; 2 uses
  %i.as = fadd reassoc nsz arcp contract afn float %i.al, %i.aj
  %i.at = fcmp reassoc nsz arcp contract afn ogt float %i.as, 1.000000e+00
  br i1 %i.at, label %bb.d, label %gamut_check_Yrg.exit

bb.d:                                             ; preds = %filmic_desaturate_v4.exit
  %i.au = fadd reassoc nsz arcp contract afn float %i.h, %i.e
  %i.av = fdiv reassoc nsz arcp contract afn float f0x3E72F57C, %i.au
  %i.aw = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.av, float %.1.i)
  br label %gamut_check_Yrg.exit

gamut_check_Yrg.exit:                             ; preds = %filmic_desaturate_v4.exit, %bb.d
  %.2.i = phi nsz float [ %i.aw, %bb.d ], [ %.1.i, %filmic_desaturate_v4.exit ]
  store float %.2.i, ptr %i.r, align 4, !tbaa !13
  %.not = icmp eq i32 %12, 0
  br i1 %.not, label %bb.e, label %bb.f

bb.e:                                             ; preds = %gamut_check_Yrg.exit
  tail call fastcc void @gamut_check_RGB(ptr noundef %3, ptr noundef %4, ptr noundef %5, float noundef %9, float noundef %10, ptr noundef %0, ptr noundef %2)
  br label %.rtcont

bb.f:                                             ; preds = %gamut_check_Yrg.exit
  %i.ax = add i64 %i.c, 44
  %i.ay = add i64 %i.b, 16                        ; 2 uses
  %i.az = add i64 %i.a, 48
  %rt.bound0 = icmp ugt i64 %i.az, %i.b
  %rt.bound1 = icmp ugt i64 %i.ay, %i.a
  %rt.conflict = and i1 %rt.bound0, %rt.bound1
  %rt.bound047 = icmp ugt i64 %i.ay, %i.c
  %rt.bound148 = icmp ugt i64 %i.ax, %i.b
  %rt.conflict49 = and i1 %rt.bound047, %rt.bound148
  %rt.conflict.all = or i1 %rt.conflict, %rt.conflict49
  br i1 %rt.conflict.all, label %.rtscalar, label %.rtvec, !prof !234

.rtcont:                                          ; preds = %.rtvec, %.rtscalar, %bb.e
  ret void

.rtvec:                                           ; preds = %bb.f
  tail call fastcc void @gamut_check_RGB(ptr noundef %6, ptr noundef %7, ptr noundef %8, float noundef %9, float noundef %10, ptr noundef %0, ptr noundef %2)
  %i.ba = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !13
  %i.bd = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.be = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.bf = load <2 x float>, ptr %2, align 4, !tbaa !13 ; 2 uses
  %i.bg = shufflevector <2 x float> %i.bf, <2 x float> poison, <3 x i32> <i32 0, i32 1, i32 1>
  %i.bh = tail call <5 x float> @llvm.masked.load.v5f32.p0(ptr nonnull align 4 %6, <5 x i1> <i1 true, i1 true, i1 true, i1 false, i1 true>, <5 x float> poison), !tbaa !13
  %i.bi = shufflevector <5 x float> %i.bh, <5 x float> poison, <3 x i32> <i32 4, i32 1, i32 2>
  %i.bj = shufflevector <2 x float> %i.bf, <2 x float> poison, <3 x i32> <i32 1, i32 0, i32 0>
  %i.bk = fmul reassoc nsz arcp contract afn <3 x float> %i.bi, %i.bj
  %i.bl = tail call <7 x float> @llvm.masked.load.v7f32.p0(ptr nonnull align 4 %6, <7 x i1> <i1 true, i1 false, i1 false, i1 false, i1 false, i1 true, i1 true>, <7 x float> poison), !tbaa !13
  %i.bm = shufflevector <7 x float> %i.bl, <7 x float> poison, <3 x i32> <i32 0, i32 5, i32 6>
  %i.bn = fmul reassoc nsz arcp contract afn <3 x float> %i.bm, %i.bg
  %i.bo = fadd reassoc nsz arcp contract afn <3 x float> %i.bn, %i.bk
  %i.bp = load <3 x float>, ptr %i.ba, align 4, !tbaa !13
  %i.bq = insertelement <3 x float> poison, float %i.bc, i64 0
  %i.br = shufflevector <3 x float> %i.bq, <3 x float> poison, <3 x i32> zeroinitializer
  %i.bs = fmul reassoc nsz arcp contract afn <3 x float> %i.bp, %i.br
  %i.bt = fadd reassoc nsz arcp contract afn <3 x float> %i.bo, %i.bs ; 3 uses
  %i.bu = load <4 x float>, ptr %5, align 4, !tbaa !13
  %i.bv = shufflevector <3 x float> %i.bt, <3 x float> poison, <4 x i32> zeroinitializer
  %i.bw = fmul reassoc nsz arcp contract afn <4 x float> %i.bu, %i.bv
  %i.bx = load <4 x float>, ptr %i.bd, align 4, !tbaa !13
  %i.by = shufflevector <3 x float> %i.bt, <3 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.bz = fmul reassoc nsz arcp contract afn <4 x float> %i.bx, %i.by
  %i.ca = fadd reassoc nsz arcp contract afn <4 x float> %i.bz, %i.bw
  %i.cb = load <4 x float>, ptr %i.be, align 4, !tbaa !13
  %i.cc = shufflevector <3 x float> %i.bt, <3 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.cd = fmul reassoc nsz arcp contract afn <4 x float> %i.cb, %i.cc
  %i.ce = fadd reassoc nsz arcp contract afn <4 x float> %i.ca, %i.cd
  store <4 x float> %i.ce, ptr %2, align 4, !tbaa !13
  br label %.rtcont

.rtscalar:                                        ; preds = %bb.f
  tail call fastcc void @gamut_check_RGB(ptr noundef %6, ptr noundef %7, ptr noundef %8, float noundef %9, float noundef %10, ptr noundef %0, ptr noundef %2)
  %i.cf = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.cg = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.ci = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.cj = load float, ptr %6, align 4, !tbaa !13
  %i.ck = load float, ptr %2, align 4, !tbaa !13  ; 3 uses
  %i.cl = fmul reassoc nsz arcp contract afn float %i.ck, %i.cj
  %i.cm = load float, ptr %i.cf, align 4, !tbaa !13
  %i.cn = load float, ptr %i.cg, align 4, !tbaa !13 ; 3 uses
  %i.co = fmul reassoc nsz arcp contract afn float %i.cn, %i.cm
  %i.cp = fadd reassoc nsz arcp contract afn float %i.co, %i.cl
  %i.cq = load float, ptr %i.ch, align 4, !tbaa !13
  %i.cr = load float, ptr %i.ci, align 4, !tbaa !13 ; 3 uses
  %i.cs = fmul reassoc nsz arcp contract afn float %i.cr, %i.cq
  %i.ct = fadd reassoc nsz arcp contract afn float %i.cp, %i.cs ; 4 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.cv = load float, ptr %i.cu, align 4, !tbaa !13
  %i.cw = fmul reassoc nsz arcp contract afn float %i.cv, %i.ck
  %i.cx = getelementptr inbounds nuw i8, ptr %6, i64 20
  %i.cy = load float, ptr %i.cx, align 4, !tbaa !13
  %i.cz = fmul reassoc nsz arcp contract afn float %i.cy, %i.cn
  %i.da = fadd reassoc nsz arcp contract afn float %i.cz, %i.cw
  %i.db = getelementptr inbounds nuw i8, ptr %6, i64 36
  %i.dc = load float, ptr %i.db, align 4, !tbaa !13
  %i.dd = fmul reassoc nsz arcp contract afn float %i.dc, %i.cr
  %i.de = fadd reassoc nsz arcp contract afn float %i.da, %i.dd ; 4 uses
  %i.df = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.dg = load float, ptr %i.df, align 4, !tbaa !13
  %i.dh = fmul reassoc nsz arcp contract afn float %i.dg, %i.ck
  %i.di = getelementptr inbounds nuw i8, ptr %6, i64 24
end_hunk_5
