Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/vf_colorcorrect?download=true
inline.NumInlined: 12
inline.NumDeleted: 1
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@filter_frame:bb.a
  %i.ar = fadd nsz <4 x float> %i.am, %i.aq
  %i.as = getelementptr inbounds nuw [16 x i8], ptr %i.t, i64 %indvars.iv
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 32
  %i.au = load <4 x float>, ptr %i.at, align 4, !tbaa !37
  %i.av = shufflevector <4 x float> %i.au, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %i.aw = fadd nsz <4 x float> %i.ar, %i.av
  %i.ax = getelementptr inbounds nuw [16 x i8], ptr %i.t, i64 %indvars.iv
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 48
  %i.az = load <4 x float>, ptr %i.ay, align 4, !tbaa !37
  %i.ba = shufflevector <4 x float> %i.az, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %i.bb = fadd nsz <4 x float> %i.aw, %i.ba       ; 3 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %bb.d, !llvm.loop !55

bb.e:                                             ; preds = %._crit_edge, %bb.b
  %i.bc = phi i32 [ %i.aa, %._crit_edge ], [ %., %bb.b ]
  %i.bd = getelementptr inbounds nuw i8, ptr %i.d, i64 120
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !39
  %i.bf = tail call i32 @ff_filter_execute(ptr noundef nonnull %i.b, ptr noundef %i.be, ptr noundef %1, ptr noundef null, i32 noundef %i.bc) #8 ; 0 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !57
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !59
  %i.bj = tail call i32 @ff_filter_frame(ptr noundef %i.bi, ptr noundef %1) #8
  ret i32 %i.bj
}

; Function Attrs: cold nounwind optsize uwtable
define internal range(i32 -558323010, 1) i32 @config_input(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !19   ; 19 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.f = load i32, ptr %i.e, align 4, !tbaa !60
  %i.g = tail call ptr @av_pix_fmt_desc_get(i32 noundef %i.f) #8 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.i = load i32, ptr %i.h, align 8, !tbaa !62   ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 4 uses
  store i32 %i.i, ptr %i.j, align 8, !tbaa !40
  %notmask = shl nsw i32 -1, %i.i
  %i.k = xor i32 %notmask, -1
  %i.l = uitofp nsz nneg i32 %i.k to float        ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 36 ; 2 uses
  store float %i.l, ptr %i.m, align 4, !tbaa !41
  %i.n = fdiv nsz float 1.000000e+00, %i.l
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store float %i.n, ptr %i.o, align 8, !tbaa !42
  %i.p = icmp slt i32 %i.i, 9
  %i.q = select i1 %i.p, ptr @colorcorrect_slice8, ptr @colorcorrect_slice16
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 120
  store ptr %i.q, ptr %i.r, align 8, !tbaa !39
  %i.s = icmp eq i32 %i.i, 8
  %i.t = select i1 %i.s, i64 256, i64 65536
  %i.u = tail call noalias ptr @av_calloc(i64 noundef %i.t, i64 noundef 4) #8 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 88
  store ptr %i.u, ptr %i.v, align 8, !tbaa !43
  %.not = icmp eq ptr %i.u, null
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.w = load float, ptr %i.m, align 4, !tbaa !41
  %i.x = fcmp nsz oeq float %i.w, 2.550000e+02
  %i.y = select i1 %i.x, i64 256, i64 65536
  %i.z = tail call noalias ptr @av_calloc(i64 noundef %i.y, i64 noundef 4) #8 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  store ptr %i.z, ptr %i.aa, align 8, !tbaa !44
  %.not53 = icmp eq ptr %i.z, null
  br i1 %.not53, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 3 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !63
  %i.ad = sext i32 %i.ac to i64
  %i.ae = tail call noalias ptr @av_calloc(i64 noundef %i.ad, i64 noundef 16) #8 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.d, i64 104
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !36
  %.not54 = icmp eq ptr %i.ae, null
  br i1 %.not54, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ag = getelementptr inbounds nuw i8, ptr %i.d, i64 28
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !33
  switch i32 %i.ah, label %bb.i [
    i32 0, label %bb.h
    i32 1, label %bb.e
    i32 2, label %bb.f
    i32 3, label %bb.g
  ]

bb.e:                                             ; preds = %bb.d
  %i.ai = load i32, ptr %i.j, align 8, !tbaa !40
  %i.aj = icmp slt i32 %i.ai, 9
  %i.ak = select i1 %i.aj, ptr @average_slice8, ptr @average_slice16
  br label %.sink.split

bb.f:                                             ; preds = %bb.d
  %i.al = load i32, ptr %i.j, align 8, !tbaa !40
  %i.am = icmp slt i32 %i.al, 9
  %i.an = select i1 %i.am, ptr @minmax_slice8, ptr @minmax_slice16
  br label %.sink.split

bb.g:                                             ; preds = %bb.d
  %i.ao = load i32, ptr %i.j, align 8, !tbaa !40
  %i.ap = icmp slt i32 %i.ao, 9
  %i.aq = select i1 %i.ap, ptr @median_8, ptr @median_16
  br label %.sink.split

.sink.split:                                      ; preds = %bb.e, %bb.f, %bb.g
  %.sink = phi ptr [ %i.aq, %bb.g ], [ %i.an, %bb.f ], [ %i.ak, %bb.e ]
  %i.ar = getelementptr inbounds nuw i8, ptr %i.d, i64 112
  store ptr %.sink, ptr %i.ar, align 8, !tbaa !34
  br label %bb.h

bb.h:                                             ; preds = %.sink.split, %bb.d
  %i.as = getelementptr inbounds nuw i8, ptr %i.g, i64 9
  %i.at = load i8, ptr %i.as, align 1, !tbaa !66
  %i.au = zext i8 %i.at to i32                    ; 2 uses
  %i.av = shl nuw i32 1, %i.au
  %i.aw = getelementptr inbounds nuw i8, ptr %i.d, i64 44
  store i32 %i.av, ptr %i.aw, align 4, !tbaa !45
  %i.ax = getelementptr inbounds nuw i8, ptr %i.g, i64 10
  %i.ay = load i8, ptr %i.ax, align 2, !tbaa !67
  %i.az = zext i8 %i.ay to i32                    ; 2 uses
  %i.ba = shl nuw i32 1, %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  store i32 %i.ba, ptr %i.bb, align 8, !tbaa !46
  %i.bc = load i32, ptr %i.ab, align 4, !tbaa !63
  %i.bd = sub nsw i32 0, %i.bc
  %i.be = ashr i32 %i.bd, %i.az
  %i.bf = sub nsw i32 0, %i.be                    ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.d, i64 52
  %i.bh = getelementptr inbounds nuw i8, ptr %i.d, i64 60
  store i32 %i.bf, ptr %i.bh, align 4, !tbaa !35
  %i.bi = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  store i32 %i.bf, ptr %i.bi, align 8, !tbaa !35
  %i.bj = load i32, ptr %i.ab, align 4, !tbaa !63 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  store i32 %i.bj, ptr %i.bk, align 8, !tbaa !35
  store i32 %i.bj, ptr %i.bg, align 4, !tbaa !35
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !68
  %i.bn = sub nsw i32 0, %i.bm
  %i.bo = ashr i32 %i.bn, %i.au
  %i.bp = sub nsw i32 0, %i.bo                    ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.d, i64 68
  %i.br = getelementptr inbounds nuw i8, ptr %i.d, i64 76
  store i32 %i.bp, ptr %i.br, align 4, !tbaa !35
  %i.bs = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  store i32 %i.bp, ptr %i.bs, align 8, !tbaa !35
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !68 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  store i32 %i.bu, ptr %i.bv, align 8, !tbaa !35
  store i32 %i.bu, ptr %i.bq, align 4, !tbaa !35
  br label %bb.i

bb.i:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.a, %bb.h
  %.0 = phi i32 [ -12, %bb.c ], [ 0, %bb.h ], [ -12, %bb.b ], [ -12, %bb.a ], [ -558323010, %bb.d ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @ff_filter_get_nb_threads(ptr noundef) local_unnamed_addr #3

declare i32 @ff_filter_execute(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @ff_filter_frame(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @av_pix_fmt_desc_get(i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @colorcorrect_slice8(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19   ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  %i.d = load float, ptr %i.c, align 4, !tbaa !41 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.f = load float, ptr %i.e, align 8, !tbaa !42 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  %i.h = load i32, ptr %i.g, align 4, !tbaa !45   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.j = load i32, ptr %i.i, align 8, !tbaa !35   ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.l = load i32, ptr %i.k, align 8, !tbaa !35
  %i.m = sext i32 %i.l to i64                     ; 2 uses
  %i.n = sext i32 %2 to i64
  %i.o = mul nsw i64 %i.m, %i.n
  %i.p = sext i32 %3 to i64                       ; 2 uses
  %i.q = sdiv i64 %i.o, %i.p                      ; 3 uses
  %i.r = trunc i64 %i.q to i32                    ; 3 uses
  %i.s = add nsw i32 %2, 1
  %i.t = sext i32 %i.s to i64
  %i.u = mul nsw i64 %i.m, %i.t
  %i.v = sdiv i64 %i.u, %i.p                      ; 2 uses
  %i.w = trunc i64 %i.v to i32                    ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.y = load i32, ptr %i.x, align 4, !tbaa !35   ; 3 uses
  %i.z = sext i32 %i.y to i64                     ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !35 ; 3 uses
  %i.ac = sext i32 %i.ab to i64                   ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.ae = load float, ptr %i.ad, align 8, !tbaa !47 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ah = load <2 x float>, ptr %i.af, align 8, !tbaa !37 ; 6 uses
  %i.ai = load <2 x float>, ptr %i.ag, align 8, !tbaa !37
  %i.aj = fsub nsz <2 x float> %i.ai, %i.ah       ; 5 uses
  %i.ak = icmp slt i32 %i.r, %i.w
  br i1 %i.ak, label %.preheader.lr.ph, label %._crit_edge89.split

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.am = load i32, ptr %i.al, align 8, !tbaa !46 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !35
  %i.ap = sext i32 %i.ao to i64                   ; 3 uses
  %i.aq = icmp sgt i32 %i.j, 0
  %i.ar = sext i32 %i.am to i64                   ; 2 uses
  %i.as = mul nsw i64 %i.ap, %i.ar                ; 2 uses
  br i1 %i.aq, label %.preheader.preheader, label %._crit_edge89.split

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.at = load ptr, ptr %1, align 8, !tbaa !48    ; 2 uses
  %i.au = mul i32 %i.am, %i.r
  %i.av = sext i32 %i.au to i64                   ; 2 uses
  %i.aw = mul nsw i64 %i.av, %i.ap
  %i.ax = getelementptr i8, ptr %i.at, i64 %i.aw  ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !48 ; 2 uses
  %sext = shl i64 %i.q, 32
  %i.ba = ashr exact i64 %sext, 32                ; 3 uses
  %i.bb = mul nsw i64 %i.ba, %i.z
  %i.bc = getelementptr i8, ptr %i.az, i64 %i.bb  ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !48 ; 2 uses
  %i.bf = mul nsw i64 %i.ba, %i.ac
  %i.bg = getelementptr i8, ptr %i.be, i64 %i.bf  ; 3 uses
  %i.bh = sext i32 %i.h to i64
  %wide.trip.count = zext nneg i32 %i.j to i64    ; 9 uses
  %i.bi = xor i64 %i.q, -1
  %i.bj = add i64 %i.v, %i.bi
  %i.bk = and i64 %i.bj, 4294967295               ; 2 uses
  %i.bl = add nsw i64 %i.ba, %i.bk                ; 2 uses
  %i.bm = mul i64 %i.bl, %i.z
  %i.bn = getelementptr i8, ptr %i.az, i64 %i.bm
  %scevgep = getelementptr i8, ptr %i.bn, i64 %wide.trip.count ; 2 uses
  %i.bo = mul i64 %i.bl, %i.ac
  %i.bp = getelementptr i8, ptr %i.be, i64 %i.bo
  %scevgep95 = getelementptr i8, ptr %i.bp, i64 %wide.trip.count ; 2 uses
  %i.bq = mul nsw i64 %i.bk, %i.ar
  %i.br = add i64 %i.bq, %i.av
  %i.bs = mul i64 %i.br, %i.ap
  %i.bt = getelementptr i8, ptr %i.at, i64 %i.bs
  %scevgep96 = getelementptr i8, ptr %i.bt, i64 %wide.trip.count ; 2 uses
  %min.iters.check = icmp ugt i32 %i.j, 3
  %ident.check.not = icmp eq i32 %i.h, 1
  %or.cond = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  %bound0 = icmp ult ptr %i.bc, %scevgep95
  %bound1 = icmp ult ptr %i.bg, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %i.bu = or i32 %i.ab, %i.y
  %i.bv = icmp slt i32 %i.bu, 0
  %i.bw = or i1 %found.conflict, %i.bv
  %bound098 = icmp ult ptr %i.bc, %scevgep96
  %bound199 = icmp ult ptr %i.ax, %scevgep
  %found.conflict100 = and i1 %bound098, %bound199
  %stride.check101 = icmp slt i32 %i.y, 0
  %4 = or i1 %found.conflict100, %stride.check101
  %stride.check102 = icmp slt i64 %i.as, 0
  %i.bx = or i1 %4, %stride.check102
  %conflict.rdx = or i1 %i.bw, %i.bx
  %bound0103 = icmp ult ptr %i.bg, %scevgep96
  %bound1104 = icmp ult ptr %i.ax, %scevgep95
  %found.conflict105 = and i1 %bound0103, %bound1104
  %stride.check106 = icmp slt i32 %i.ab, 0
  %5 = or i1 %found.conflict105, %stride.check106
  %conflict.rdx108 = or i1 %5, %conflict.rdx
  %min.iters.check109 = icmp ult i32 %i.j, 16
  %i.by = and i64 %wide.trip.count, 12
  %n.vec = and i64 %wide.trip.count, 2147483632   ; 4 uses
  %broadcast.splatinsert = insertelement <16 x float> poison, float %i.f, i64 0
  %broadcast.splat = shufflevector <16 x float> %broadcast.splatinsert, <16 x float> poison, <16 x i32> zeroinitializer ; 3 uses
  %broadcast.splat111 = shufflevector <2 x float> %i.aj, <2 x float> poison, <16 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat113 = shufflevector <2 x float> %i.ah, <2 x float> poison, <16 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %broadcast.splatinsert114 = insertelement <16 x float> poison, float %i.ae, i64 0
  %broadcast.splat115 = shufflevector <16 x float> %broadcast.splatinsert114, <16 x float> poison, <16 x i32> zeroinitializer ; 2 uses
  %broadcast.splat117 = shufflevector <2 x float> %i.aj, <2 x float> poison, <16 x i32> zeroinitializer
  %broadcast.splat119 = shufflevector <2 x float> %i.ah, <2 x float> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert120 = insertelement <16 x float> poison, float %i.d, i64 0
  %broadcast.splat121 = shufflevector <16 x float> %broadcast.splatinsert120, <16 x float> poison, <16 x i32> zeroinitializer ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %min.epilog.iters.check = icmp eq i64 %i.by, 0
  %n.vec124 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %broadcast.splatinsert125 = insertelement <4 x float> poison, float %i.f, i64 0
  %broadcast.splat126 = shufflevector <4 x float> %broadcast.splatinsert125, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %broadcast.splat128 = shufflevector <2 x float> %i.aj, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat130 = shufflevector <2 x float> %i.ah, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %broadcast.splatinsert131 = insertelement <4 x float> poison, float %i.ae, i64 0
  %broadcast.splat132 = shufflevector <4 x float> %broadcast.splatinsert131, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splat134 = shufflevector <2 x float> %i.aj, <2 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat136 = shufflevector <2 x float> %i.ah, <2 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert137 = insertelement <4 x float> poison, float %i.d, i64 0
  %broadcast.splat138 = shufflevector <4 x float> %broadcast.splatinsert137, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %cmp.n144 = icmp eq i64 %n.vec124, %wide.trip.count
  %i.bz = insertelement <2 x float> poison, float %i.f, i64 0
  %i.ca = shufflevector <2 x float> %i.bz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cb = insertelement <2 x float> poison, float %i.ae, i64 0
  %i.cc = shufflevector <2 x float> %i.cb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cd = insertelement <2 x float> poison, float %i.d, i64 0
  %i.ce = shufflevector <2 x float> %i.cd, <2 x float> poison, <2 x i32> zeroinitializer
  br label %iter.check

iter.check:                                       ; preds = %.preheader.preheader, %._crit_edge
  %.07588 = phi i32 [ %i.em, %._crit_edge ], [ %i.r, %.preheader.preheader ]
  %.07687 = phi ptr [ %i.el, %._crit_edge ], [ %i.bg, %.preheader.preheader ] ; 4 uses
  %.07786 = phi ptr [ %i.ek, %._crit_edge ], [ %i.bc, %.preheader.preheader ] ; 4 uses
  %.07885 = phi ptr [ %i.ej, %._crit_edge ], [ %i.ax, %.preheader.preheader ] ; 4 uses
  %or.cond.not = xor i1 %or.cond, true
  %brmerge = select i1 %or.cond.not, i1 true, i1 %conflict.rdx108
  br i1 %brmerge, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check109, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 4 uses
  %i.cf = getelementptr inbounds i8, ptr %.07885, i64 %index
  %wide.load = load <16 x i8>, ptr %i.cf, align 1, !tbaa !49, !alias.scope !77
  %i.cg = uitofp <16 x i8> %wide.load to <16 x float>
  %i.ch = fmul nsz <16 x float> %broadcast.splat, %i.cg ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.07786, i64 %index ; 2 uses
  %wide.load122 = load <16 x i8>, ptr %i.ci, align 1, !tbaa !49, !alias.scope !78, !noalias !79
  %i.cj = uitofp <16 x i8> %wide.load122 to <16 x float>
  %i.ck = tail call nsz <16 x float> @llvm.fmuladd.v16f32(<16 x float> %i.cj, <16 x float> %broadcast.splat, <16 x float> splat (float -5.000000e-01))
  %i.cl = getelementptr inbounds nuw i8, ptr %.07687, i64 %index ; 2 uses
  %wide.load123 = load <16 x i8>, ptr %i.cl, align 1, !tbaa !49, !alias.scope !80, !noalias !77
  %i.cm = uitofp <16 x i8> %wide.load123 to <16 x float>
  %i.cn = tail call nsz <16 x float> @llvm.fmuladd.v16f32(<16 x float> %i.cm, <16 x float> %broadcast.splat, <16 x float> splat (float -5.000000e-01))
  %i.co = tail call nsz <16 x float> @llvm.fmuladd.v16f32(<16 x float> %i.ch, <16 x float> %broadcast.splat111, <16 x float> %i.ck)
  %i.cp = fadd nsz <16 x float> %broadcast.splat113, %i.co
  %i.cq = fmul nsz <16 x float> %broadcast.splat115, %i.cp
  %i.cr = tail call nsz <16 x float> @llvm.fmuladd.v16f32(<16 x float> %i.ch, <16 x float> %broadcast.splat117, <16 x float> %i.cn)
  %i.cs = fadd nsz <16 x float> %broadcast.splat119, %i.cr
  %i.ct = fmul nsz <16 x float> %broadcast.splat115, %i.cs
  %i.cu = fadd nsz <16 x float> %i.cq, splat (float 5.000000e-01)
  %i.cv = fmul nsz <16 x float> %broadcast.splat121, %i.cu
  %i.cw = fptosi <16 x float> %i.cv to <16 x i32>
  %i.cx = tail call <16 x i32> @llvm.smax.v16i32(<16 x i32> %i.cw, <16 x i32> zeroinitializer)
  %i.cy = tail call <16 x i32> @llvm.umin.v16i32(<16 x i32> %i.cx, <16 x i32> splat (i32 255))
  %i.cz = trunc nuw <16 x i32> %i.cy to <16 x i8>
  store <16 x i8> %i.cz, ptr %i.ci, align 1, !tbaa !49, !alias.scope !78, !noalias !79
  %i.da = fadd nsz <16 x float> %i.ct, splat (float 5.000000e-01)
  %i.db = fmul nsz <16 x float> %broadcast.splat121, %i.da
  %i.dc = fptosi <16 x float> %i.db to <16 x i32>
  %i.dd = tail call <16 x i32> @llvm.smax.v16i32(<16 x i32> %i.dc, <16 x i32> zeroinitializer)
  %i.de = tail call <16 x i32> @llvm.umin.v16i32(<16 x i32> %i.dd, <16 x i32> splat (i32 255))
  %i.df = trunc nuw <16 x i32> %i.de to <16 x i8>
  store <16 x i8> %i.df, ptr %i.cl, align 1, !tbaa !49, !alias.scope !80, !noalias !77
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.dg = icmp eq i64 %index.next, %n.vec
  br i1 %i.dg, label %middle.block, label %vector.body, !llvm.loop !73

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !81

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index139 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next143, %vec.epilog.vector.body ] ; 4 uses
  %i.dh = getelementptr inbounds i8, ptr %.07885, i64 %index139
  %wide.load140 = load <4 x i8>, ptr %i.dh, align 1, !tbaa !49, !alias.scope !77
  %i.di = uitofp <4 x i8> %wide.load140 to <4 x float>
  %i.dj = fmul nsz <4 x float> %broadcast.splat126, %i.di ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.07786, i64 %index139 ; 2 uses
  %wide.load141 = load <4 x i8>, ptr %i.dk, align 1, !tbaa !49, !alias.scope !78, !noalias !79
  %i.dl = uitofp <4 x i8> %wide.load141 to <4 x float>
  %i.dm = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dl, <4 x float> %broadcast.splat126, <4 x float> splat (float -5.000000e-01))
  %i.dn = getelementptr inbounds nuw i8, ptr %.07687, i64 %index139 ; 2 uses
  %wide.load142 = load <4 x i8>, ptr %i.dn, align 1, !tbaa !49, !alias.scope !80, !noalias !77
  %i.do = uitofp <4 x i8> %wide.load142 to <4 x float>
  %i.dp = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.do, <4 x float> %broadcast.splat126, <4 x float> splat (float -5.000000e-01))
  %i.dq = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dj, <4 x float> %broadcast.splat128, <4 x float> %i.dm)
  %i.dr = fadd nsz <4 x float> %broadcast.splat130, %i.dq
  %i.ds = fmul nsz <4 x float> %broadcast.splat132, %i.dr
  %i.dt = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dj, <4 x float> %broadcast.splat134, <4 x float> %i.dp)
  %i.du = fadd nsz <4 x float> %broadcast.splat136, %i.dt
  %i.dv = fmul nsz <4 x float> %broadcast.splat132, %i.du
  %i.dw = fadd nsz <4 x float> %i.ds, splat (float 5.000000e-01)
  %i.dx = fmul nsz <4 x float> %broadcast.splat138, %i.dw
  %i.dy = fptosi <4 x float> %i.dx to <4 x i32>
  %i.dz = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.dy, <4 x i32> zeroinitializer)
  %i.ea = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.dz, <4 x i32> splat (i32 255))
  %i.eb = trunc nuw <4 x i32> %i.ea to <4 x i8>
  store <4 x i8> %i.eb, ptr %i.dk, align 1, !tbaa !49, !alias.scope !78, !noalias !79
  %i.ec = fadd nsz <4 x float> %i.dv, splat (float 5.000000e-01)
  %i.ed = fmul nsz <4 x float> %broadcast.splat138, %i.ec
  %i.ee = fptosi <4 x float> %i.ed to <4 x i32>
  %i.ef = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.ee, <4 x i32> zeroinitializer)
  %i.eg = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.ef, <4 x i32> splat (i32 255))
  %i.eh = trunc nuw <4 x i32> %i.eg to <4 x i8>
  store <4 x i8> %i.eh, ptr %i.dn, align 1, !tbaa !49, !alias.scope !80, !noalias !77
  %index.next143 = add nuw i64 %index139, 4       ; 2 uses
  %i.ei = icmp eq i64 %index.next143, %n.vec124
  br i1 %i.ei, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !74

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n144, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec124, %vec.epilog.middle.block ], [ %n.vec, %vec.epilog.iter.check ]
  br label %vec.epilog.scalar.ph

._crit_edge89.split:                              ; preds = %._crit_edge, %.preheader.lr.ph, %bb.a
  ret i32 0

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %i.ej = getelementptr inbounds i8, ptr %.07885, i64 %i.as
  %i.ek = getelementptr inbounds i8, ptr %.07786, i64 %i.z
  %i.el = getelementptr inbounds i8, ptr %.07687, i64 %i.ac
  %i.em = add nsw i32 %.07588, 1                  ; 2 uses
  %exitcond91.not = icmp eq i32 %i.em, %i.w
  br i1 %exitcond91.not, label %._crit_edge89.split, label %iter.check, !llvm.loop !75

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %vec.epilog.scalar.ph ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 4 uses
  %i.en = mul nsw i64 %indvars.iv, %i.bh
  %i.eo = getelementptr inbounds i8, ptr %.07885, i64 %i.en
  %i.ep = load i8, ptr %i.eo, align 1, !tbaa !49
  %i.eq = uitofp i8 %i.ep to float
  %i.er = fmul nsz float %i.f, %i.eq
  %i.es = getelementptr inbounds nuw i8, ptr %.07786, i64 %indvars.iv ; 2 uses
  %i.et = load i8, ptr %i.es, align 1, !tbaa !49
  %i.eu = getelementptr inbounds nuw i8, ptr %.07687, i64 %indvars.iv ; 2 uses
  %i.ev = load i8, ptr %i.eu, align 1, !tbaa !49
  %i.ew = insertelement <2 x i8> poison, i8 %i.ev, i64 0
  %i.ex = insertelement <2 x i8> %i.ew, i8 %i.et, i64 1
  %i.ey = uitofp <2 x i8> %i.ex to <2 x float>
  %i.ez = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ey, <2 x float> %i.ca, <2 x float> splat (float -5.000000e-01))
  %i.fa = insertelement <2 x float> poison, float %i.er, i64 0
  %i.fb = shufflevector <2 x float> %i.fa, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fc = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fb, <2 x float> %i.aj, <2 x float> %i.ez)
  %i.fd = fadd nsz <2 x float> %i.ah, %i.fc
  %i.fe = fmul nsz <2 x float> %i.cc, %i.fd
  %i.ff = fadd nsz <2 x float> %i.fe, splat (float 5.000000e-01)
  %i.fg = fmul nsz <2 x float> %i.ce, %i.ff
  %i.fh = fptosi <2 x float> %i.fg to <2 x i32>
  %i.fi = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.fh, <2 x i32> zeroinitializer)
  %i.fj = tail call <2 x i32> @llvm.umin.v2i32(<2 x i32> %i.fi, <2 x i32> splat (i32 255))
  %i.fk = trunc nuw <2 x i32> %i.fj to <2 x i8>   ; 2 uses
  %i.fl = extractelement <2 x i8> %i.fk, i64 1
  store i8 %i.fl, ptr %i.es, align 1, !tbaa !49
  %i.fm = extractelement <2 x i8> %i.fk, i64 0
  store i8 %i.fm, ptr %i.eu, align 1, !tbaa !49
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !76
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @colorcorrect_slice16(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19   ; 10 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  %i.d = load float, ptr %i.c, align 4, !tbaa !41 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.f = load float, ptr %i.e, align 8, !tbaa !42 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  %i.h = load i32, ptr %i.g, align 4, !tbaa !45   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.j = load i32, ptr %i.i, align 8, !tbaa !35   ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.l = load i32, ptr %i.k, align 8, !tbaa !35
  %i.m = sext i32 %i.l to i64                     ; 2 uses
  %i.n = sext i32 %2 to i64
  %i.o = mul nsw i64 %i.m, %i.n
  %i.p = sext i32 %3 to i64                       ; 2 uses
  %i.q = sdiv i64 %i.o, %i.p                      ; 3 uses
  %i.r = trunc i64 %i.q to i32                    ; 3 uses
  %i.s = add nsw i32 %2, 1
  %i.t = sext i32 %i.s to i64
  %i.u = mul nsw i64 %i.m, %i.t
  %i.v = sdiv i64 %i.u, %i.p                      ; 2 uses
  %i.w = trunc i64 %i.v to i32                    ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.y = load i32, ptr %i.x, align 4, !tbaa !35   ; 3 uses
  %i.z = sdiv i32 %i.y, 2
  %i.aa = sext i32 %i.z to i64                    ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !35 ; 2 uses
  %i.ad = sdiv i32 %i.ac, 2
  %i.ae = sext i32 %i.ad to i64                   ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.ag = load float, ptr %i.af, align 8, !tbaa !47 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.aj = load <2 x float>, ptr %i.ah, align 8, !tbaa !37 ; 4 uses
  %i.ak = load <2 x float>, ptr %i.ai, align 8, !tbaa !37
  %i.al = fsub nsz <2 x float> %i.ak, %i.aj       ; 3 uses
  %i.am = icmp slt i32 %i.r, %i.w
  br i1 %i.am, label %.preheader.lr.ph, label %._crit_edge91.split

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !35
  %i.ap = sdiv i32 %i.ao, 2
  %i.aq = sext i32 %i.ap to i64                   ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !46 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.au = load i32, ptr %i.at, align 8, !tbaa !40
  %i.av = icmp sgt i32 %i.j, 0
  %notmask.i82 = shl nsw i32 -1, %i.au            ; 3 uses
  %i.aw = xor i32 %notmask.i82, -1                ; 2 uses
  %i.ax = sext i32 %i.as to i64                   ; 3 uses
  %i.ay = mul nsw i64 %i.aq, %i.ax
  br i1 %i.av, label %.preheader.preheader, label %._crit_edge91.split

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.az = load ptr, ptr %1, align 8, !tbaa !48    ; 2 uses
  %i.ba = mul i32 %i.as, %i.r
  %i.bb = sext i32 %i.ba to i64                   ; 2 uses
  %i.bc = mul nsw i64 %i.aq, %i.bb
  %i.bd = getelementptr [2 x i8], ptr %i.az, i64 %i.bc ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !48 ; 2 uses
  %sext = shl i64 %i.q, 32                        ; 2 uses
  %i.bg = ashr exact i64 %sext, 32                ; 2 uses
  %i.bh = mul nsw i64 %i.bg, %i.aa
  %i.bi = getelementptr [2 x i8], ptr %i.bf, i64 %i.bh ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !48 ; 2 uses
  %i.bl = mul nsw i64 %i.bg, %i.ae
  %i.bm = getelementptr [2 x i8], ptr %i.bk, i64 %i.bl ; 3 uses
  %i.bn = sext i32 %i.h to i64
  %wide.trip.count = zext nneg i32 %i.j to i64    ; 4 uses
  %i.bo = ashr exact i64 %sext, 31
  %i.bp = xor i64 %i.q, -1
  %i.bq = add i64 %i.v, %i.bp
  %i.br = and i64 %i.bq, 4294967295               ; 2 uses
  %i.bs = shl nuw nsw i64 %i.br, 1
  %i.bt = add nsw i64 %i.bo, %i.bs                ; 2 uses
  %i.bu = mul i64 %i.bt, %i.aa
  %i.bv = shl nuw nsw i64 %wide.trip.count, 1     ; 3 uses
  %i.bw = getelementptr i8, ptr %i.bf, i64 %i.bu
  %scevgep = getelementptr i8, ptr %i.bw, i64 %i.bv ; 2 uses
  %i.bx = mul i64 %i.bt, %i.ae
  %i.by = getelementptr i8, ptr %i.bk, i64 %i.bx
  %scevgep97 = getelementptr i8, ptr %i.by, i64 %i.bv ; 2 uses
  %i.bz = mul nsw i64 %i.br, %i.ax
  %i.ca = add i64 %i.bz, %i.bb
  %i.cb = shl i64 %i.ca, 1
  %i.cc = mul i64 %i.cb, %i.aq
  %i.cd = getelementptr i8, ptr %i.az, i64 %i.cc
  %scevgep98 = getelementptr i8, ptr %i.cd, i64 %i.bv ; 2 uses
  %i.ce = mul nsw i64 %i.ax, %i.aq
  %min.iters.check = icmp ugt i32 %i.j, 7
  %ident.check.not = icmp eq i32 %i.h, 1
  %or.cond = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  %bound0 = icmp ult ptr %i.bi, %scevgep97
  %bound1 = icmp ult ptr %i.bm, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %stride.check = icmp slt i32 %i.y, -1
  %i.cf = or i1 %found.conflict, %stride.check
  %stride.check99 = icmp slt i32 %i.ac, -1
  %i.cg = or i1 %i.cf, %stride.check99
  %bound0100 = icmp ult ptr %i.bi, %scevgep98
  %bound1101 = icmp ult ptr %i.bd, %scevgep
  %found.conflict102 = and i1 %bound0100, %bound1101
  %stride.check103 = icmp slt i32 %i.y, -1
  %4 = or i1 %found.conflict102, %stride.check103
  %stride.check104 = icmp slt i64 %i.ce, 0
  %i.ch = or i1 %4, %stride.check104
  %conflict.rdx = or i1 %i.cg, %i.ch
  %bound0105 = icmp ult ptr %i.bm, %scevgep98
  %bound1106 = icmp ult ptr %i.bd, %scevgep97
  %found.conflict107 = and i1 %bound0105, %bound1106
  %conflict.rdx110 = or i1 %found.conflict107, %conflict.rdx
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %broadcast.splatinsert = insertelement <8 x float> poison, float %i.f, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer ; 3 uses
  %broadcast.splat112 = shufflevector <2 x float> %i.al, <2 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat114 = shufflevector <2 x float> %i.aj, <2 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %broadcast.splatinsert115 = insertelement <8 x float> poison, float %i.ag, i64 0
  %broadcast.splat116 = shufflevector <8 x float> %broadcast.splatinsert115, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splat118 = shufflevector <2 x float> %i.al, <2 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splat120 = shufflevector <2 x float> %i.aj, <2 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert121 = insertelement <8 x float> poison, float %i.d, i64 0
  %broadcast.splat122 = shufflevector <8 x float> %broadcast.splatinsert121, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert123 = insertelement <8 x i32> poison, i32 %notmask.i82, i64 0
  %broadcast.splat124 = shufflevector <8 x i32> %broadcast.splatinsert123, <8 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert125 = insertelement <8 x i32> poison, i32 %i.aw, i64 0
  %broadcast.splat126 = shufflevector <8 x i32> %broadcast.splatinsert125, <8 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %i.ci = insertelement <2 x float> poison, float %i.f, i64 0
  %i.cj = shufflevector <2 x float> %i.ci, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ck = insertelement <2 x float> poison, float %i.ag, i64 0
  %i.cl = shufflevector <2 x float> %i.ck, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cm = insertelement <2 x float> poison, float %i.d, i64 0
  %i.cn = shufflevector <2 x float> %i.cm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.co = insertelement <2 x i32> poison, i32 %notmask.i82, i64 0
  %i.cp = shufflevector <2 x i32> %i.co, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.cq = insertelement <2 x i32> poison, i32 %i.aw, i64 0
  %i.cr = shufflevector <2 x i32> %i.cq, <2 x i32> poison, <2 x i32> zeroinitializer
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %.07890 = phi i32 [ %i.ed, %._crit_edge ], [ %i.r, %.preheader.preheader ]
  %.07989 = phi ptr [ %i.ec, %._crit_edge ], [ %i.bm, %.preheader.preheader ] ; 3 uses
  %.08088 = phi ptr [ %i.eb, %._crit_edge ], [ %i.bi, %.preheader.preheader ] ; 3 uses
  %.08187 = phi ptr [ %i.ea, %._crit_edge ], [ %i.bd, %.preheader.preheader ] ; 3 uses
  %or.cond.not = xor i1 %or.cond, true
  %brmerge = select i1 %or.cond.not, i1 true, i1 %conflict.rdx110
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader ] ; 4 uses
  %i.cs = getelementptr inbounds [2 x i8], ptr %.08187, i64 %index
  %wide.load = load <8 x i16>, ptr %i.cs, align 2, !tbaa !53, !alias.scope !89
  %i.ct = uitofp <8 x i16> %wide.load to <8 x float>
  %i.cu = fmul nsz <8 x float> %broadcast.splat, %i.ct ; 2 uses
  %i.cv = getelementptr inbounds nuw [2 x i8], ptr %.08088, i64 %index ; 2 uses
  %wide.load127 = load <8 x i16>, ptr %i.cv, align 2, !tbaa !53, !alias.scope !90, !noalias !91
  %i.cw = uitofp <8 x i16> %wide.load127 to <8 x float>
  %i.cx = tail call nsz <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.cw, <8 x float> %broadcast.splat, <8 x float> splat (float -5.000000e-01))
  %i.cy = getelementptr inbounds nuw [2 x i8], ptr %.07989, i64 %index ; 2 uses
  %wide.load128 = load <8 x i16>, ptr %i.cy, align 2, !tbaa !53, !alias.scope !92, !noalias !89
  %i.cz = uitofp <8 x i16> %wide.load128 to <8 x float>
  %i.da = tail call nsz <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.cz, <8 x float> %broadcast.splat, <8 x float> splat (float -5.000000e-01))
  %i.db = tail call nsz <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.cu, <8 x float> %broadcast.splat112, <8 x float> %i.cx)
  %i.dc = fadd nsz <8 x float> %broadcast.splat114, %i.db
  %i.dd = fmul nsz <8 x float> %broadcast.splat116, %i.dc
  %i.de = tail call nsz <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.cu, <8 x float> %broadcast.splat118, <8 x float> %i.da)
  %i.df = fadd nsz <8 x float> %broadcast.splat120, %i.de
  %i.dg = fmul nsz <8 x float> %broadcast.splat116, %i.df
  %i.dh = fadd nsz <8 x float> %i.dd, splat (float 5.000000e-01)
  %i.di = fmul nsz <8 x float> %broadcast.splat122, %i.dh
  %i.dj = fptosi <8 x float> %i.di to <8 x i32>   ; 3 uses
  %i.dk = and <8 x i32> %broadcast.splat124, %i.dj
  %i.dl = icmp eq <8 x i32> %i.dk, zeroinitializer
  %i.dm = icmp slt <8 x i32> %i.dj, zeroinitializer
  %i.dn = select <8 x i1> %i.dm, <8 x i32> zeroinitializer, <8 x i32> %broadcast.splat126
  %i.do = select <8 x i1> %i.dl, <8 x i32> %i.dj, <8 x i32> %i.dn
  %i.dp = trunc <8 x i32> %i.do to <8 x i16>
  store <8 x i16> %i.dp, ptr %i.cv, align 2, !tbaa !53, !alias.scope !90, !noalias !91
  %i.dq = fadd nsz <8 x float> %i.dg, splat (float 5.000000e-01)
  %i.dr = fmul nsz <8 x float> %broadcast.splat122, %i.dq
  %i.ds = fptosi <8 x float> %i.dr to <8 x i32>   ; 3 uses
  %i.dt = and <8 x i32> %broadcast.splat124, %i.ds
  %i.du = icmp eq <8 x i32> %i.dt, zeroinitializer
  %i.dv = icmp slt <8 x i32> %i.ds, zeroinitializer
  %i.dw = select <8 x i1> %i.dv, <8 x i32> zeroinitializer, <8 x i32> %broadcast.splat126
  %i.dx = select <8 x i1> %i.du, <8 x i32> %i.ds, <8 x i32> %i.dw
  %i.dy = trunc <8 x i32> %i.dx to <8 x i16>
  store <8 x i16> %i.dy, ptr %i.cy, align 2, !tbaa !53, !alias.scope !92, !noalias !89
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dz = icmp eq i64 %index.next, %n.vec
  br i1 %i.dz, label %middle.block, label %vector.body, !llvm.loop !86

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.preheader ]
  br label %scalar.ph

._crit_edge91.split:                              ; preds = %._crit_edge, %.preheader.lr.ph, %bb.a
  ret i32 0

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %i.ea = getelementptr inbounds [2 x i8], ptr %.08187, i64 %i.ay
  %i.eb = getelementptr inbounds [2 x i8], ptr %.08088, i64 %i.aa
  %i.ec = getelementptr inbounds [2 x i8], ptr %.07989, i64 %i.ae
  %i.ed = add nsw i32 %.07890, 1                  ; 2 uses
  %exitcond93.not = icmp eq i32 %i.ed, %i.w
  br i1 %exitcond93.not, label %._crit_edge91.split, label %.preheader, !llvm.loop !87

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 4 uses
  %i.ee = mul nsw i64 %indvars.iv, %i.bn
  %i.ef = getelementptr inbounds [2 x i8], ptr %.08187, i64 %i.ee
  %i.eg = load i16, ptr %i.ef, align 2, !tbaa !53
  %i.eh = uitofp i16 %i.eg to float
  %i.ei = fmul nsz float %i.f, %i.eh
  %i.ej = getelementptr inbounds nuw [2 x i8], ptr %.08088, i64 %indvars.iv ; 2 uses
  %i.ek = load i16, ptr %i.ej, align 2, !tbaa !53
  %i.el = getelementptr inbounds nuw [2 x i8], ptr %.07989, i64 %indvars.iv ; 2 uses
  %i.em = load i16, ptr %i.el, align 2, !tbaa !53
  %i.en = insertelement <2 x i16> poison, i16 %i.em, i64 0
  %i.eo = insertelement <2 x i16> %i.en, i16 %i.ek, i64 1
  %i.ep = uitofp <2 x i16> %i.eo to <2 x float>
  %i.eq = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ep, <2 x float> %i.cj, <2 x float> splat (float -5.000000e-01))
  %i.er = insertelement <2 x float> poison, float %i.ei, i64 0
  %i.es = shufflevector <2 x float> %i.er, <2 x float> poison, <2 x i32> zeroinitializer
  %i.et = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.es, <2 x float> %i.al, <2 x float> %i.eq)
  %i.eu = fadd nsz <2 x float> %i.aj, %i.et
  %i.ev = fmul nsz <2 x float> %i.cl, %i.eu
  %i.ew = fadd nsz <2 x float> %i.ev, splat (float 5.000000e-01)
  %i.ex = fmul nsz <2 x float> %i.cn, %i.ew
  %i.ey = fptosi <2 x float> %i.ex to <2 x i32>   ; 3 uses
  %i.ez = and <2 x i32> %i.cp, %i.ey
  %i.fa = icmp eq <2 x i32> %i.ez, zeroinitializer
  %i.fb = icmp slt <2 x i32> %i.ey, zeroinitializer
  %i.fc = select <2 x i1> %i.fb, <2 x i32> zeroinitializer, <2 x i32> %i.cr
  %i.fd = select <2 x i1> %i.fa, <2 x i32> %i.ey, <2 x i32> %i.fc
  %i.fe = trunc <2 x i32> %i.fd to <2 x i16>      ; 2 uses
  %i.ff = extractelement <2 x i16> %i.fe, i64 1
  store i16 %i.ff, ptr %i.ej, align 2, !tbaa !53
  %i.fg = extractelement <2 x i16> %i.fe, i64 0
  store i16 %i.fg, ptr %i.el, align 2, !tbaa !53
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !88
}

declare noalias ptr @av_calloc(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @average_slice8(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.d = load float, ptr %i.c, align 8, !tbaa !42
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.f = load i32, ptr %i.e, align 8, !tbaa !35   ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.h = load i32, ptr %i.g, align 8, !tbaa !35
  %i.i = sext i32 %i.h to i64                     ; 2 uses
  %i.j = sext i32 %2 to i64                       ; 2 uses
  %i.k = mul nsw i64 %i.i, %i.j
  %i.l = sext i32 %3 to i64                       ; 2 uses
  %i.m = sdiv i64 %i.k, %i.l                      ; 2 uses
  %i.n = trunc i64 %i.m to i32                    ; 3 uses
  %i.o = add nsw i32 %2, 1
  %i.p = sext i32 %i.o to i64
  %i.q = mul nsw i64 %i.i, %i.p
  %i.r = sdiv i64 %i.q, %i.l
  %i.s = trunc i64 %i.r to i32                    ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.u = load i32, ptr %i.t, align 4, !tbaa !35
  %i.v = sext i32 %i.u to i64                     ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.x = load i32, ptr %i.w, align 8, !tbaa !35
  %i.y = sext i32 %i.x to i64                     ; 2 uses
  %i.z = icmp slt i32 %i.n, %i.s
  %i.aa = icmp sgt i32 %i.f, 0
  %or.cond = select i1 %i.z, i1 %i.aa, i1 false
  br i1 %or.cond, label %.preheader.us.preheader, label %._crit_edge69

.preheader.us.preheader:                          ; preds = %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !48
  %sext = shl i64 %i.m, 32
  %i.ad = ashr exact i64 %sext, 32                ; 2 uses
  %i.ae = mul nsw i64 %i.ad, %i.v
  %i.af = getelementptr inbounds i8, ptr %i.ac, i64 %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !48
  %i.ai = mul nsw i64 %i.ad, %i.y
  %i.aj = getelementptr inbounds i8, ptr %i.ah, i64 %i.ai
  %wide.trip.count = zext nneg i32 %i.f to i64    ; 3 uses
  %min.iters.check = icmp ult i32 %i.f, 8
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge.us
  %.05368.us = phi i32 [ %i.bl, %._crit_edge.us ], [ %i.n, %.preheader.us.preheader ]
  %.05467.us = phi i32 [ %.lcssa, %._crit_edge.us ], [ 0, %.preheader.us.preheader ] ; 2 uses
  %.05566.us = phi i32 [ %.lcssa81, %._crit_edge.us ], [ 0, %.preheader.us.preheader ] ; 2 uses
  %.05765.us = phi ptr [ %i.bk, %._crit_edge.us ], [ %i.aj, %.preheader.us.preheader ] ; 3 uses
  %.05864.us = phi ptr [ %i.bj, %._crit_edge.us ], [ %i.af, %.preheader.us.preheader ] ; 3 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader.us
  %i.ak = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.05467.us, i64 0
  %i.al = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.05566.us, i64 0
end_hunk_0
