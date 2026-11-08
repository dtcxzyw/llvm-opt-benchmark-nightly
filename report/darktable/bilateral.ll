Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/bilateral?download=true
inline.NumInlined: 16
inline.NumDeleted: 7
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@dt_bilateral_singlebuffer_size2:bb.a
  %spec.store.select.i.i = select i1 %i.a, float 5.000000e-01, float %2
  %i.b = insertelement <2 x i32> poison, i32 %1, i64 0
  %i.c = insertelement <2 x i32> %i.b, i32 %0, i64 1
  %i.d = sitofp reassoc nsz arcp contract afn <2 x i32> %i.c to <2 x float> ; 4 uses
  %i.e = fdiv reassoc nsz arcp contract afn float 1.000000e+02, %3
  %i.f = tail call reassoc nsz arcp contract afn float @llvm.round.f32(float %i.e)
  %i.g = fptosi float %i.f to i32
  %i.h = tail call i32 @llvm.smax.i32(i32 %i.g, i32 4)
  %i.i = tail call i32 @llvm.umin.i32(i32 %i.h, i32 50)
  %i.j = insertelement <2 x float> poison, float %spec.store.select.i.i, i64 0
  %i.k = shufflevector <2 x float> %i.j, <2 x float> poison, <2 x i32> zeroinitializer
  %i.l = fdiv reassoc nsz arcp contract afn <2 x float> %i.d, %i.k
  %i.m = tail call reassoc nsz arcp contract afn <2 x float> @llvm.round.v2f32(<2 x float> %i.l)
  %i.n = fptosi <2 x float> %i.m to <2 x i32>
  %i.o = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.n, <2 x i32> splat (i32 4))
  %i.p = tail call <2 x i32> @llvm.umin.v2i32(<2 x i32> %i.o, <2 x i32> splat (i32 3000))
  %i.q = uitofp nneg <2 x i32> %i.p to <2 x float>
  %i.r = fdiv reassoc nsz arcp contract afn <2 x float> %i.d, %i.q ; 2 uses
  %i.s = extractelement <2 x float> %i.r, i64 0   ; 2 uses
  %i.t = extractelement <2 x float> %i.r, i64 1   ; 2 uses
  %i.u = fcmp reassoc nsz arcp contract afn ogt float %i.s, %i.t
  %..i.i = select reassoc nsz arcp contract afn i1 %i.u, float %i.s, float %i.t
  %i.v = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %..i.i ; 2 uses
  %i.w = extractelement <2 x float> %i.d, i64 1
  %i.x = fmul reassoc nsz arcp contract afn float %i.v, %i.w
  %i.y = tail call reassoc nsz arcp contract afn float @llvm.ceil.f32(float %i.x)
  %i.z = fptosi float %i.y to i32
  %i.aa = add nsw i32 %i.z, 1
  %i.ab = sext i32 %i.aa to i64
  %i.ac = extractelement <2 x float> %i.d, i64 0
  %i.ad = fmul reassoc nsz arcp contract afn float %i.v, %i.ac
  %i.ae = tail call reassoc nsz arcp contract afn float @llvm.ceil.f32(float %i.ad)
  %i.af = fptosi float %i.ae to i32
  %i.ag = sext i32 %i.af to i64
  %i.ah = add nsw i64 %i.ag, 4
  %i.ai = shl nuw nsw i32 %i.i, 2
  %i.aj = add nuw nsw i32 %i.ai, 4
  %i.ak = zext nneg i32 %i.aj to i64
  %i.al = mul nsw i64 %i.ab, %i.ak
  %i.am = mul i64 %i.al, %i.ah
  ret i64 %i.am
}

; Function Attrs: nounwind uwtable
define noalias noundef ptr @dt_bilateral_init(i32 noundef %0, i32 noundef %1, float noundef %2, float noundef %3) local_unnamed_addr #3 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #14 ; 16 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = fcmp reassoc nsz arcp contract afn olt float %2, 5.000000e-01
  %spec.store.select.i = select i1 %i.b, float 5.000000e-01, float %2
  %i.c = insertelement <2 x i32> poison, i32 %1, i64 0
  %i.d = insertelement <2 x i32> %i.c, i32 %0, i64 1
  %i.e = sitofp reassoc nsz arcp contract afn <2 x i32> %i.d to <2 x float> ; 3 uses
  %i.f = fdiv reassoc nsz arcp contract afn float 1.000000e+02, %3
  %i.g = tail call reassoc nsz arcp contract afn float @llvm.round.f32(float %i.f)
  %i.h = fptosi float %i.g to i32
  %i.i = tail call i32 @llvm.smax.i32(i32 %i.h, i32 4)
  %i.j = tail call i32 @llvm.umin.i32(i32 %i.i, i32 50)
  %i.k = uitofp nneg i32 %i.j to float
  %i.l = insertelement <2 x float> poison, float %spec.store.select.i, i64 0
  %i.m = shufflevector <2 x float> %i.l, <2 x float> poison, <2 x i32> zeroinitializer
  %i.n = fdiv reassoc nsz arcp contract afn <2 x float> %i.e, %i.m
  %i.o = tail call reassoc nsz arcp contract afn <2 x float> @llvm.round.v2f32(<2 x float> %i.n)
  %i.p = fptosi <2 x float> %i.o to <2 x i32>
  %i.q = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.p, <2 x i32> splat (i32 4))
  %i.r = tail call <2 x i32> @llvm.umin.v2i32(<2 x i32> %i.q, <2 x i32> splat (i32 3000))
  %i.s = uitofp nneg <2 x i32> %i.r to <2 x float>
  %i.t = fdiv reassoc nsz arcp contract afn <2 x float> %i.e, %i.s ; 2 uses
  %i.u = extractelement <2 x float> %i.t, i64 0   ; 2 uses
  %i.v = extractelement <2 x float> %i.t, i64 1   ; 2 uses
  %i.w = fcmp reassoc nsz arcp contract afn ogt float %i.u, %i.v
  %..i = select reassoc nsz arcp contract afn i1 %i.w, float %i.u, float %i.v ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  store float %..i, ptr %i.x, align 4, !tbaa !16
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.z = insertelement <2 x float> poison, float %i.k, i64 0
  %i.aa = insertelement <2 x float> %i.z, float %..i, i64 1
  %i.ab = fdiv reassoc nsz arcp contract afn <2 x float> <float 1.000000e+02, float 1.000000e+00>, %i.aa ; 3 uses
  store <2 x float> %i.ab, ptr %i.y, align 16, !tbaa !18
  %i.ac = extractelement <2 x float> %i.ab, i64 0 ; 2 uses
  %i.ad = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.ac ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store float %i.ad, ptr %i.ae, align 8, !tbaa !20
  %i.af = shufflevector <2 x float> %i.ab, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ag = fmul reassoc nsz arcp contract afn <2 x float> %i.af, %i.e
  %i.ah = tail call reassoc nsz arcp contract afn <2 x float> @llvm.ceil.v2f32(<2 x float> %i.ag)
  %i.ai = fptosi <2 x float> %i.ah to <2 x i32>   ; 2 uses
  %i.aj = add nsw <2 x i32> %i.ai, splat (i32 1)  ; 2 uses
  %i.ak = extractelement <2 x i32> %i.aj, i64 1   ; 3 uses
  %i.al = sext i32 %i.ak to i64                   ; 2 uses
  store i64 %i.al, ptr %i.a, align 64, !tbaa !21
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.an = extractelement <2 x i32> %i.aj, i64 0   ; 3 uses
  %i.ao = sext i32 %i.an to i64
  store i64 %i.ao, ptr %i.am, align 8, !tbaa !22
  %i.ap = fmul reassoc nnan nsz arcp contract afn float %i.ad, 1.000000e+02
  %i.aq = tail call reassoc nsz arcp contract afn float @llvm.ceil.f32(float %i.ap)
  %i.ar = fptosi float %i.aq to i32
  %i.as = add nuw nsw i32 %i.ar, 1
  %i.at = sext i32 %i.as to i64                   ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.at, ptr %i.au, align 16, !tbaa !19
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i32 %0, ptr %i.av, align 8, !tbaa !23
  %i.aw = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  store i32 %1, ptr %i.aw, align 4, !tbaa !24
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i32 1, ptr %i.ax, align 32, !tbaa !25
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  store i32 %1, ptr %i.ay, align 4, !tbaa !26
  %i.az = extractelement <2 x i32> %i.ai, i64 0
  %i.ba = add i32 %i.az, 3                        ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i32 %i.ba, ptr %i.bb, align 8, !tbaa !27
  %i.bc = sext i32 %i.ba to i64
  %i.bd = shl nsw i64 %i.at, 2
  %i.be = mul i64 %i.bd, %i.al
  %i.bf = mul i64 %i.be, %i.bc                    ; 2 uses
  %i.bg = tail call ptr @dt_alloc_aligned(i64 noundef %i.bf) #15 ; 4 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.bg, i64 64) ]
  %.not.i = icmp eq ptr %i.bg, null
  br i1 %.not.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.bh = sext i32 %i.an to i64
  %i.bi = sext i32 %i.ak to i64
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str, i64 noundef %i.bi, i64 noundef %i.bh, i64 noundef %i.at) #15
  tail call void @free(ptr noundef nonnull %i.a) #15
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr nonnull align 64 %i.bg, i8 0, i64 %i.bf, i1 false)
  %i.bj = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store ptr %i.bg, ptr %i.bj, align 64, !tbaa !28
  %i.bk = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !77
  %i.bl = and i32 %i.bk, 4
  %.not39 = icmp eq i32 %i.bl, 0
  br i1 %.not39, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bm = fpext reassoc nsz arcp contract afn float %..i to double
  %i.bn = fpext reassoc nsz arcp contract afn float %2 to double
  %i.bo = fpext reassoc nsz arcp contract afn float %i.ac to double
  %i.bp = fpext reassoc nsz arcp contract afn float %3 to double
  %i.bq = sext i32 %i.an to i64
  %i.br = sext i32 %i.ak to i64
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.1, i64 noundef %i.br, i64 noundef %i.bq, i64 noundef %i.at, double noundef %i.bm, double noundef %i.bn, double noundef %i.bo, double noundef %i.bp) #15
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.a, %bb.c
  %.0 = phi ptr [ null, %bb.a ], [ null, %bb.c ], [ %i.a, %bb.e ], [ %i.a, %bb.d ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #4

declare void @dt_print_ext(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @dt_bilateral_splat(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 64, !tbaa !28  ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %0, align 64, !tbaa !21    ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i64, ptr %i.d, align 16, !tbaa !19  ; 6 uses
  %i.f = mul i64 %i.e, %i.c                       ; 3 uses
  %i.g = trunc i64 %i.f to i32
  %i.h = trunc i64 %i.e to i32
  %sext128 = shl i64 %i.f, 32
  %i.i = ashr exact i64 %sext128, 32              ; 2 uses
  %i.j = add nsw i32 %i.g, 1                      ; 2 uses
  %i.k = sext i32 %i.j to i64
  %i.l = add nsw i32 %i.j, %i.h
  %i.m = sext i32 %i.l to i64
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.o = load i32, ptr %i.n, align 32, !tbaa !25  ; 2 uses
  %i.p = icmp sgt i32 %i.o, 0
  br i1 %i.p, label %.lr.ph157, label %._crit_edge

.lr.ph157:                                        ; preds = %bb.b
  %sext = shl i64 %i.e, 32                        ; 2 uses
  %sext130 = add i64 %sext, 4294967296
  %i.q = add i64 %i.f, %i.e
  %sext129 = shl i64 %i.q, 32
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.s = load float, ptr %i.r, align 4, !tbaa !16 ; 2 uses
  %i.t = fmul reassoc nsz arcp contract afn float %i.s, %i.s ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.v = load i32, ptr %i.u, align 4, !tbaa !26   ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.x = load i32, ptr %i.w, align 4, !tbaa !24
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.z = load i32, ptr %i.y, align 8, !tbaa !27
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ad = insertelement <2 x i64> poison, i64 %i.c, i64 0
  %i.ae = insertelement <2 x i64> %i.ad, i64 %i.e, i64 1 ; 2 uses
  %i.af = add <2 x i64> %i.ae, splat (i64 -1)
  %i.ag = uitofp reassoc nsz arcp contract afn <2 x i64> %i.af to <2 x float> ; 2 uses
  %i.ah = add <2 x i64> %i.ae, splat (i64 -2)     ; 2 uses
  %i.ai = trunc <2 x i64> %i.ah to <2 x i32>
  %i.aj = sext i32 %i.v to i64
  %i.ak = ashr exact i64 %sext, 30
  %i.al = ashr exact i64 %sext130, 30
  %i.am = ashr exact i64 %sext129, 30
  %i.an = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.t
  %i.ao = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.t
  %i.ap = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.t
  %i.aq = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.t
  br label %bb.c

.loopexit:                                        ; preds = %._crit_edge.us, %.lr.ph, %bb.c
  %indvars.iv.next162 = add nsw i64 %indvars.iv161.a, %i.aj
  %exitcond166.not = icmp eq i32 %3, %i.o
  br i1 %exitcond166.not, label %._crit_edge, label %bb.c

bb.c:                                             ; preds = %.lr.ph157, %.loopexit
  %indvars.iv161.a = phi i64 [ 0, %.lr.ph157 ], [ %indvars.iv.next162, %.loopexit ] ; 2 uses
  %.0119156 = phi i32 [ 0, %.lr.ph157 ], [ %3, %.loopexit ] ; 3 uses
  %2 = mul nsw i32 %i.v, %.0119156                ; 2 uses
  %3 = add nuw nsw i32 %.0119156, 1               ; 3 uses
  %i.ar = mul nsw i32 %i.v, %3
  %. = tail call i32 @llvm.smin.i32(i32 %i.ar, i32 %i.x) ; 2 uses
  %4 = mul nsw i32 %i.z, %.0119156
  %i.as = sitofp reassoc nsz arcp contract afn i32 %2 to float
  %i.at = load float, ptr %i.aa, align 4, !tbaa !29
  %i.au = fmul reassoc nsz arcp contract afn float %i.at, %i.as
  %i.av = fptosi float %i.au to i32
  %i.aw = sub i32 %4, %i.av
  %i.ax = icmp slt i32 %2, %.
  br i1 %i.ax, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.c
  %i.ay = load i64, ptr %i.ab, align 8, !tbaa !22 ; 2 uses
  %i.az = add i64 %i.ay, -2                       ; 2 uses
  %i.ba = trunc i64 %i.az to i32
  %i.bb = load i32, ptr %i.ac, align 8, !tbaa !23 ; 3 uses
  %i.bc = icmp sgt i32 %i.bb, 0
  br i1 %i.bc, label %.lr.ph.split.us.preheader, label %.loopexit

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %5 = sext i32 %. to i64
  %i.bd = zext nneg i32 %i.bb to i64
  %i.be = add i64 %i.ay, -1
  %i.bf = uitofp reassoc nsz arcp contract afn i64 %i.be to float ; 2 uses
  %wide.trip.count = zext nneg i32 %i.bb to i64
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader, %._crit_edge.us
  %indvars.iv163 = phi i64 [ %indvars.iv161.a, %.lr.ph.split.us.preheader ], [ %indvars.iv.next164, %._crit_edge.us ] ; 3 uses
  %i.bg = trunc nsw i64 %indvars.iv163 to i32
  %i.bh = sitofp reassoc nsz arcp contract afn i32 %i.bg to float
  %i.bi = load float, ptr %i.aa, align 4, !tbaa !29
  %i.bj = fmul reassoc nsz arcp contract afn float %i.bi, %i.bh ; 3 uses
  %i.bk = fcmp reassoc nsz arcp contract afn ogt float %i.bj, 0.000000e+00
  %i.bl = fcmp reassoc nsz arcp contract afn olt float %i.bj, %i.bf
  %.131.us = select reassoc nsz arcp contract afn i1 %i.bl, float %i.bj, float %i.bf
  %i.bm = select reassoc nsz arcp contract afn i1 %i.bk, float %.131.us, float 0.000000e+00 ; 2 uses
  %i.bn = fptosi float %i.bm to i32               ; 2 uses
  %i.bo = zext nneg i32 %i.bn to i64
  %i.bp = icmp ugt i64 %i.az, %i.bo
  %i.bq = select i1 %i.bp, i32 %i.bn, i32 %i.ba   ; 2 uses
  %i.br = sitofp reassoc nsz arcp contract afn i32 %i.bq to float
  %i.bs = fsub reassoc nsz arcp contract afn float %i.bm, %i.br ; 2 uses
  %i.bt = add nsw i32 %i.aw, %i.bq
  %i.bu = sext i32 %i.bt to i64
  %i.bv = mul nsw i64 %i.i, %i.bu
  %i.bw = mul nsw i64 %indvars.iv163, %i.bd
  %i.bx = fmul reassoc nnan nsz arcp contract afn float %i.bs, 1.000000e+02
  %i.by = fsub reassoc nsz arcp contract afn float 1.000000e+02, %i.bx ; 2 uses
  %i.bz = fmul reassoc nnan nsz arcp contract afn float %i.bs, 1.000000e+02 ; 2 uses
  %i.ca = getelementptr [4 x i8], ptr %i.b, i64 %i.bv
  br label %image_to_relgrid.exit.us

image_to_relgrid.exit.us:                         ; preds = %.lr.ph.split.us, %image_to_relgrid.exit.us
  %indvars.iv = phi i64 [ 0, %.lr.ph.split.us ], [ %indvars.iv.next, %image_to_relgrid.exit.us ] ; 3 uses
  %i.cb = add nsw i64 %i.bw, %indvars.iv
  %.idx = shl nsw i64 %i.cb, 4
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %i.cd = load float, ptr %i.cc, align 4, !tbaa !18
  %i.ce = trunc nuw nsw i64 %indvars.iv to i32
  %i.cf = uitofp nsz nneg i32 %i.ce to float
  %i.cg = load <2 x float>, ptr %i.aa, align 4, !tbaa !18
  %i.ch = insertelement <2 x float> poison, float %i.cf, i64 0
  %i.ci = insertelement <2 x float> %i.ch, float %i.cd, i64 1
  %i.cj = fmul reassoc nsz arcp contract afn <2 x float> %i.cg, %i.ci ; 3 uses
  %i.ck = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.cj, zeroinitializer
  %i.cl = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.cj, %i.ag
  %i.cm = select <2 x i1> %i.cl, <2 x float> %i.cj, <2 x float> %i.ag
  %i.cn = select <2 x i1> %i.ck, <2 x float> %i.cm, <2 x float> zeroinitializer ; 3 uses
  %i.co = fptosi <2 x float> %i.cn to <2 x i32>   ; 2 uses
  %i.cp = zext <2 x i32> %i.co to <2 x i64>
  %i.cq = icmp ugt <2 x i64> %i.ah, %i.cp
  %i.cr = select <2 x i1> %i.cq, <2 x i32> %i.co, <2 x i32> %i.ai ; 3 uses
  %i.cs = sitofp reassoc nsz arcp contract afn <2 x i32> %i.cr to <2 x float> ; 2 uses
  %foldExtExtBinop = fsub reassoc nsz arcp contract afn <2 x float> %i.cn, %i.cs
  %i.ct = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 3 uses
  %foldExtExtBinop176 = fsub reassoc nsz arcp contract afn <2 x float> %i.cn, %i.cs ; 2 uses
  %i.cu = extractelement <2 x float> %foldExtExtBinop176, i64 1 ; 4 uses
  %i.cv = extractelement <2 x i32> %i.cr, i64 0
  %i.cw = sext i32 %i.cv to i64
  %i.cx = mul i64 %i.e, %i.cw
  %i.cy = extractelement <2 x i32> %i.cr, i64 1
  %i.cz = sext i32 %i.cy to i64
  %i.da = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.ct ; 2 uses
  %i.db = fmul reassoc nsz arcp contract afn float %i.by, %i.da
  %i.dc = fmul reassoc nsz arcp contract afn float %i.db, %i.an
  %i.dd = fmul reassoc nsz arcp contract afn float %i.by, %i.ct
  %i.de = fmul reassoc nsz arcp contract afn float %i.dd, %i.ao ; 2 uses
  %i.df = fmul reassoc nsz arcp contract afn float %i.bz, %i.da
  %i.dg = fmul reassoc nsz arcp contract afn float %i.df, %i.ap ; 2 uses
  %i.dh = fmul reassoc nsz arcp contract afn float %i.bz, %i.ct
  %i.di = fmul reassoc nsz arcp contract afn float %i.dh, %i.aq ; 2 uses
  %i.dj = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.cu ; 4 uses
  %i.dk = getelementptr [4 x i8], ptr %i.ca, i64 %i.cx
  %i.dl = getelementptr [4 x i8], ptr %i.dk, i64 %i.cz ; 8 uses
  %i.dm = insertelement <2 x float> poison, float %i.dc, i64 0
  %i.dn = shufflevector <2 x float> %i.dm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.do = insertelement <2 x float> %foldExtExtBinop176, float %i.dj, i64 0
  %i.dp = fmul reassoc nsz arcp contract afn <2 x float> %i.dn, %i.do
  %i.dq = load <2 x float>, ptr %i.dl, align 4, !tbaa !18
  %i.dr = fadd reassoc nsz arcp contract afn <2 x float> %i.dq, %i.dp
  store <2 x float> %i.dr, ptr %i.dl, align 4, !tbaa !18
  %i.ds = fmul reassoc nsz arcp contract afn float %i.de, %i.dj
  %i.dt = getelementptr i8, ptr %i.dl, i64 %i.ak  ; 2 uses
  %i.du = load float, ptr %i.dt, align 4, !tbaa !18
  %i.dv = fadd reassoc nsz arcp contract afn float %i.du, %i.ds
  store float %i.dv, ptr %i.dt, align 4, !tbaa !18
  %i.dw = fmul reassoc nsz arcp contract afn float %i.de, %i.cu
  %i.dx = getelementptr i8, ptr %i.dl, i64 %i.al  ; 2 uses
  %i.dy = load float, ptr %i.dx, align 4, !tbaa !18
  %i.dz = fadd reassoc nsz arcp contract afn float %i.dy, %i.dw
  store float %i.dz, ptr %i.dx, align 4, !tbaa !18
  %i.ea = fmul reassoc nsz arcp contract afn float %i.dg, %i.dj
  %i.eb = getelementptr [4 x i8], ptr %i.dl, i64 %i.i ; 2 uses
  %i.ec = load float, ptr %i.eb, align 4, !tbaa !18
  %i.ed = fadd reassoc nsz arcp contract afn float %i.ec, %i.ea
  store float %i.ed, ptr %i.eb, align 4, !tbaa !18
  %i.ee = fmul reassoc nsz arcp contract afn float %i.dg, %i.cu
  %i.ef = getelementptr [4 x i8], ptr %i.dl, i64 %i.k ; 2 uses
  %i.eg = load float, ptr %i.ef, align 4, !tbaa !18
  %i.eh = fadd reassoc nsz arcp contract afn float %i.eg, %i.ee
  store float %i.eh, ptr %i.ef, align 4, !tbaa !18
  %i.ei = fmul reassoc nsz arcp contract afn float %i.di, %i.dj
  %i.ej = getelementptr i8, ptr %i.dl, i64 %i.am  ; 2 uses
  %i.ek = load float, ptr %i.ej, align 4, !tbaa !18
  %i.el = fadd reassoc nsz arcp contract afn float %i.ek, %i.ei
  store float %i.el, ptr %i.ej, align 4, !tbaa !18
  %i.em = fmul reassoc nsz arcp contract afn float %i.di, %i.cu
  %i.en = getelementptr [4 x i8], ptr %i.dl, i64 %i.m ; 2 uses
  %i.eo = load float, ptr %i.en, align 4, !tbaa !18
  %i.ep = fadd reassoc nsz arcp contract afn float %i.eo, %i.em
  store float %i.ep, ptr %i.en, align 4, !tbaa !18
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us, label %image_to_relgrid.exit.us

._crit_edge.us:                                   ; preds = %image_to_relgrid.exit.us
  %indvars.iv.next164 = add nsw i64 %indvars.iv163, 1 ; 2 uses
  %i.eq = icmp slt i64 %indvars.iv.next164, %5
  br i1 %i.eq, label %.lr.ph.split.us, label %.loopexit

._crit_edge:                                      ; preds = %.loopexit, %bb.b, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @dt_bilateral_blur(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #7 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %blur_line_z.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 64, !tbaa !28  ; 2 uses
  %.not23 = icmp eq ptr %i.b, null
  br i1 %.not23, label %blur_line_z.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.d = load i64, ptr %i.c, align 16, !tbaa !19  ; 3 uses
  %i.e = trunc i64 %i.d to i32                    ; 3 uses
  %i.f = load i64, ptr %0, align 64, !tbaa !21    ; 2 uses
  %i.g = mul i64 %i.f, %i.d                       ; 2 uses
  %i.h = trunc i64 %i.g to i32                    ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !22
  %i.k = trunc i64 %i.j to i32
  %i.l = trunc i64 %i.f to i32
  tail call fastcc void @blur_line(ptr noundef nonnull %i.b, i32 noundef %i.h, i32 noundef %i.e, i32 noundef %i.e, i32 noundef %i.k, i32 noundef %i.l)
  %i.m = load ptr, ptr %i.a, align 64, !tbaa !28
  %i.n = load i64, ptr %i.c, align 16, !tbaa !19
  %i.o = trunc i64 %i.n to i32
  %i.p = load i64, ptr %0, align 64, !tbaa !21
  %i.q = trunc i64 %i.p to i32
  %i.r = load i64, ptr %i.i, align 8, !tbaa !22
  %i.s = trunc i64 %i.r to i32
  tail call fastcc void @blur_line(ptr noundef %i.m, i32 noundef %i.e, i32 noundef %i.h, i32 noundef %i.o, i32 noundef %i.q, i32 noundef %i.s)
  %i.t = load ptr, ptr %i.a, align 64, !tbaa !28  ; 9 uses
  %i.u = load i64, ptr %0, align 64, !tbaa !21    ; 2 uses
  %i.v = trunc i64 %i.u to i32
  %i.w = load i64, ptr %i.i, align 8, !tbaa !22   ; 2 uses
  %i.x = trunc i64 %i.w to i32                    ; 5 uses
  %i.y = load i64, ptr %i.c, align 16, !tbaa !19  ; 3 uses
  %i.z = trunc i64 %i.y to i32                    ; 2 uses
  %i.aa = icmp sgt i32 %i.v, 0
  br i1 %i.aa, label %.lr.ph.i, label %blur_line_z.exit

.lr.ph.i:                                         ; preds = %bb.c
  %sext = shl i64 %i.d, 32
  %i.ab = ashr exact i64 %sext, 32                ; 2 uses
  %i.ac = icmp sgt i32 %i.x, 0
  %i.ad = sub i64 %i.g, %i.y
  %sext24 = shl i64 %i.ad, 32
  %i.ae = ashr exact i64 %sext24, 32
  %i.af = add nsw i64 %i.ae, 2                    ; 3 uses
  br i1 %i.ac, label %.lr.ph.split.i, label %blur_line_z.exit

.lr.ph.split.i:                                   ; preds = %.lr.ph.i
  %i.ag = icmp sgt i32 %i.z, 4
  %wide.trip.count100.i = and i64 %i.u, 2147483647 ; 2 uses
  br i1 %i.ag, label %.lr.ph86.us.preheader.i, label %.lr.ph86.i.preheader

.lr.ph86.i.preheader:                             ; preds = %.lr.ph.split.i
  %xtraiter = and i32 %i.x, 1
  %i.ah = icmp eq i32 %i.x, 1
  %unroll_iter = and i32 %i.x, 2147483646
  %invariant.op = add i64 2, %i.af
  %invariant.op77 = add i64 2, %i.af
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %lcmp.mod71 = trunc i64 %i.w to i1
  br label %.lr.ph86.i

.lr.ph86.us.preheader.i:                          ; preds = %.lr.ph.split.i
  %i.ai = add nsw i32 %i.z, -3
  %i.aj = add i64 %i.y, 4294967292                ; 2 uses
  %i.ak = and i64 %i.aj, 4294967295               ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.ak, 32
  %n.vec = and i64 %i.aj, 4294967264              ; 4 uses
  %i.al = trunc nuw i64 %n.vec to i32
  %i.am = or disjoint i32 %i.al, 2
  %cmp.n = icmp eq i64 %i.ak, %n.vec
  br label %.lr.ph86.us.i

.lr.ph86.us.i:                                    ; preds = %._crit_edge87.split.us.us.i, %.lr.ph86.us.preheader.i
  %indvars.iv97.i = phi i64 [ 0, %.lr.ph86.us.preheader.i ], [ %indvars.iv.next98.i, %._crit_edge87.split.us.us.i ] ; 2 uses
  %i.an = mul nsw i64 %indvars.iv97.i, %i.ab
  br label %.lr.ph.us.us.i

.lr.ph.us.us.i:                                   ; preds = %._crit_edge.us.us.i, %.lr.ph86.us.i
  %.07484.us.us.i = phi i32 [ 0, %.lr.ph86.us.i ], [ %i.ed, %._crit_edge.us.us.i ]
  %.07583.us.us.i = phi i64 [ %i.an, %.lr.ph86.us.i ], [ %i.ec, %._crit_edge.us.us.i ] ; 2 uses
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %.07583.us.us.i ; 4 uses
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !18 ; 3 uses
  %i.aq = getelementptr i8, ptr %i.ao, i64 4      ; 2 uses
  %i.ar = load <2 x float>, ptr %i.aq, align 4, !tbaa !18 ; 5 uses
  %i.as = extractelement <2 x float> %i.ar, i64 0
  %i.at = fmul reassoc nsz arcp contract afn float %i.as, 2.500000e-01
  %i.au = extractelement <2 x float> %i.ar, i64 1 ; 2 uses
  %i.av = fmul reassoc nsz arcp contract afn float %i.au, 1.250000e-01
  %i.aw = fadd reassoc nsz arcp contract afn float %i.av, %i.at
  store float %i.aw, ptr %i.ao, align 4, !tbaa !18
  %i.ax = add i64 %.07583.us.us.i, 2              ; 3 uses
  %i.ay = fsub reassoc nsz arcp contract afn float %i.au, %i.ap
  %i.az = fmul reassoc nsz arcp contract afn float %i.ay, 2.500000e-01
  %i.ba = getelementptr i8, ptr %i.ao, i64 12
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !18
  %i.bc = fmul reassoc nsz arcp contract afn float %i.bb, 1.250000e-01
  %i.bd = fadd reassoc nsz arcp contract afn float %i.bc, %i.az
  store float %i.bd, ptr %i.aq, align 4, !tbaa !18
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.us.us.i
  %i.be = add i64 %i.ax, %n.vec                   ; 2 uses
  %i.bf = shufflevector <2 x float> %i.ar, <2 x float> poison, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 1>
  %i.bg = shufflevector <2 x float> %i.ar, <2 x float> poison, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 0>
  %vector.recur.init51 = insertelement <8 x float> poison, float %i.ap, i64 7
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vector.recur = phi <8 x float> [ %i.bf, %vector.ph ], [ %wide.load55, %vector.body ]
  %vector.recur50 = phi <8 x float> [ %i.bg, %vector.ph ], [ %i.bp, %vector.body ]
  %vector.recur52 = phi <8 x float> [ %vector.recur.init51, %vector.ph ], [ %i.bt, %vector.body ]
  %i.bh = add i64 %i.ax, %index                   ; 2 uses
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.bh ; 8 uses
  %i.bj = getelementptr [4 x i8], ptr %i.t, i64 %i.bh ; 4 uses
  %i.bk = getelementptr i8, ptr %i.bj, i64 4
  %i.bl = getelementptr i8, ptr %i.bj, i64 36
  %i.bm = getelementptr i8, ptr %i.bj, i64 68
  %i.bn = getelementptr i8, ptr %i.bj, i64 100
  %wide.load = load <8 x float>, ptr %i.bk, align 4, !tbaa !18 ; 3 uses
  %wide.load53 = load <8 x float>, ptr %i.bl, align 4, !tbaa !18 ; 4 uses
  %wide.load54 = load <8 x float>, ptr %i.bm, align 4, !tbaa !18 ; 6 uses
  %wide.load55 = load <8 x float>, ptr %i.bn, align 4, !tbaa !18 ; 9 uses
  %i.bo = shufflevector <8 x float> %vector.recur, <8 x float> %wide.load, <8 x i32> <i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 poison>
  %i.bp = shufflevector <8 x float> %wide.load54, <8 x float> %wide.load55, <8 x i32> <i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14>
  %i.bq = shufflevector <8 x float> %vector.recur50, <8 x float> %i.bo, <8 x i32> <i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14> ; 3 uses
  %i.br = shufflevector <8 x float> %wide.load, <8 x float> %wide.load53, <8 x i32> <i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13> ; 2 uses
  %i.bs = shufflevector <8 x float> %wide.load53, <8 x float> %wide.load54, <8 x i32> <i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13>
  %i.bt = shufflevector <8 x float> %wide.load54, <8 x float> %wide.load55, <8 x i32> <i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13> ; 2 uses
  %i.bu = shufflevector <8 x float> %vector.recur52, <8 x float> %i.bq, <8 x i32> <i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14>
  %i.bv = shufflevector <8 x float> %i.bq, <8 x float> %i.br, <8 x i32> <i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14>
  %i.bw = shufflevector <8 x float> %wide.load53, <8 x float> %wide.load54, <8 x i32> <i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12>
  %i.bx = shufflevector <8 x float> %wide.load54, <8 x float> %wide.load55, <8 x i32> <i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12>
  %i.by = fsub reassoc nsz arcp contract afn <8 x float> %wide.load, %i.bq
  %i.bz = fsub reassoc nsz arcp contract afn <8 x float> %wide.load53, %i.br
  %i.ca = fsub reassoc nsz arcp contract afn <8 x float> %wide.load54, %i.bs
  %i.cb = fsub reassoc nsz arcp contract afn <8 x float> %wide.load55, %i.bt
  %i.cc = fmul reassoc nsz arcp contract afn <8 x float> %i.by, splat (float 2.500000e-01)
  %i.cd = fmul reassoc nsz arcp contract afn <8 x float> %i.bz, splat (float 2.500000e-01)
  %i.ce = fmul reassoc nsz arcp contract afn <8 x float> %i.ca, splat (float 2.500000e-01)
  %i.cf = fmul reassoc nsz arcp contract afn <8 x float> %i.cb, splat (float 2.500000e-01)
  %i.cg = getelementptr i8, ptr %i.bi, i64 8
  %i.ch = getelementptr i8, ptr %i.bi, i64 40
  %i.ci = getelementptr i8, ptr %i.bi, i64 72
  %i.cj = getelementptr i8, ptr %i.bi, i64 104
  %wide.load56 = load <8 x float>, ptr %i.cg, align 4, !tbaa !18
  %wide.load57 = load <8 x float>, ptr %i.ch, align 4, !tbaa !18
  %wide.load58 = load <8 x float>, ptr %i.ci, align 4, !tbaa !18
  %wide.load59 = load <8 x float>, ptr %i.cj, align 4, !tbaa !18 ; 2 uses
  %i.ck = fsub reassoc nsz arcp contract afn <8 x float> %wide.load56, %i.bu
  %i.cl = fsub reassoc nsz arcp contract afn <8 x float> %wide.load57, %i.bv
  %i.cm = fsub reassoc nsz arcp contract afn <8 x float> %wide.load58, %i.bw
  %i.cn = fsub reassoc nsz arcp contract afn <8 x float> %wide.load59, %i.bx
  %i.co = fmul reassoc nsz arcp contract afn <8 x float> %i.ck, splat (float 1.250000e-01)
  %i.cp = fmul reassoc nsz arcp contract afn <8 x float> %i.cl, splat (float 1.250000e-01)
  %i.cq = fmul reassoc nsz arcp contract afn <8 x float> %i.cm, splat (float 1.250000e-01)
  %i.cr = fmul reassoc nsz arcp contract afn <8 x float> %i.cn, splat (float 1.250000e-01)
  %i.cs = fadd reassoc nsz arcp contract afn <8 x float> %i.co, %i.cc
  %i.ct = fadd reassoc nsz arcp contract afn <8 x float> %i.cp, %i.cd
  %i.cu = fadd reassoc nsz arcp contract afn <8 x float> %i.cq, %i.ce
  %i.cv = fadd reassoc nsz arcp contract afn <8 x float> %i.cr, %i.cf
  %i.cw = getelementptr inbounds nuw i8, ptr %i.bi, i64 32
  %i.cx = getelementptr inbounds nuw i8, ptr %i.bi, i64 64
  %i.cy = getelementptr inbounds nuw i8, ptr %i.bi, i64 96
  store <8 x float> %i.cs, ptr %i.bi, align 4, !tbaa !18
  store <8 x float> %i.ct, ptr %i.cw, align 4, !tbaa !18
  store <8 x float> %i.cu, ptr %i.cx, align 4, !tbaa !18
  store <8 x float> %i.cv, ptr %i.cy, align 4, !tbaa !18
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.cz = icmp eq i64 %index.next, %n.vec
  br i1 %i.cz, label %middle.block, label %vector.body, !llvm.loop !78

middle.block:                                     ; preds = %vector.body
  %vector.recur.extract = extractelement <8 x float> %wide.load55, i64 7
  %vector.recur.extract62 = extractelement <8 x float> %wide.load55, i64 5
  %i.da = extractelement <8 x float> %wide.load59, i64 7
  %i.db = shufflevector <8 x float> %wide.load55, <8 x float> poison, <2 x i32> <i32 5, i32 6>
  %i.dc = shufflevector <8 x float> %wide.load55, <8 x float> poison, <2 x i32> <i32 6, i32 7>
  br i1 %cmp.n, label %._crit_edge.us.us.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.us.us.i, %middle.block
  %.080.us.us.i.ph = phi i32 [ 2, %.lr.ph.us.us.i ], [ %i.am, %middle.block ]
  %.07378.us.us.i.ph = phi float [ %i.ap, %.lr.ph.us.us.i ], [ %vector.recur.extract62, %middle.block ]
  %.177.us.us.i.ph = phi i64 [ %i.ax, %.lr.ph.us.us.i ], [ %i.be, %middle.block ]
  %.ph = phi <2 x float> [ %i.ar, %.lr.ph.us.us.i ], [ %i.dc, %middle.block ]
end_hunk_0
