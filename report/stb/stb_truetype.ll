Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/stb/original/stb_truetype?download=true
inline.NumInlined: 388
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 27
loop-unroll.NumUnrolled: 38
begin_hunk_0_@stbtt_BakeFontBitmap_internal:bb.a
  %i.bf = shl nuw nsw i32 %i.az, 2
  %i.bg = zext nneg i32 %i.bf to i64
  %i.bh = getelementptr i8, ptr %i.ao, i64 %i.bg  ; 2 uses
  %i.bi = getelementptr i8, ptr %i.bh, i64 -4
  %i.bj = getelementptr i8, ptr %i.bh, i64 -3
  %.sink108.in = select i1 %i.ba, ptr %i.be, ptr %i.bj
  %.sink.in.in.in = select i1 %i.ba, ptr %i.bd, ptr %i.bi
  %.sink.in.in = load i8, ptr %.sink.in.in.in, align 1, !tbaa !14
  %.sink.in = zext i8 %.sink.in.in to i16
  %.sink = shl nuw i16 %.sink.in, 8
  %.sink108 = load i8, ptr %.sink108.in, align 1, !tbaa !14
  %i.bk = zext i8 %.sink108 to i16
  %i.bl = or disjoint i16 %.sink, %i.bk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  store i32 0, ptr %i.a, align 4, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #29
  store i32 0, ptr %i.b, align 4, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #29
  %i.bm = call i32 @stbtt_GetGlyphBox(ptr noundef nonnull readonly %9, i32 noundef %i.at, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d)
  %.not.i.i = icmp eq i32 %i.bm, 0
  br i1 %.not.i.i, label %stbtt_GetGlyphBitmapBox.exit, label %bb.c

bb.c:                                             ; preds = %stbtt_GetGlyphHMetrics.exit
  %i.bn = load i32, ptr %i.a, align 4, !tbaa !19
  %i.bo = load i32, ptr %i.d, align 4, !tbaa !19
  %i.bp = sub nsw i32 0, %i.bo
  %i.bq = insertelement <2 x i32> poison, i32 %i.bn, i64 0
  %i.br = insertelement <2 x i32> %i.bq, i32 %i.bp, i64 1
  %i.bs = sitofp <2 x i32> %i.br to <2 x float>
  %i.bt = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bs, <2 x float> %i.aq, <2 x float> zeroinitializer)
  %i.bu = call <2 x float> @llvm.floor.v2f32(<2 x float> %i.bt)
  %i.bv = fptosi <2 x float> %i.bu to <2 x i32>
  %i.bw = load i32, ptr %i.c, align 4, !tbaa !19
  %i.bx = load i32, ptr %i.b, align 4, !tbaa !19
  %i.by = sub nsw i32 0, %i.bx
  %i.bz = insertelement <2 x i32> poison, i32 %i.bw, i64 0
  %i.ca = insertelement <2 x i32> %i.bz, i32 %i.by, i64 1
  %i.cb = sitofp <2 x i32> %i.ca to <2 x float>
  %i.cc = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cb, <2 x float> %i.aq, <2 x float> zeroinitializer)
  %i.cd = call <2 x float> @llvm.ceil.v2f32(<2 x float> %i.cc)
  %i.ce = fptosi <2 x float> %i.cd to <2 x i32>
  br label %stbtt_GetGlyphBitmapBox.exit

stbtt_GetGlyphBitmapBox.exit:                     ; preds = %stbtt_GetGlyphHMetrics.exit, %bb.c
  %i.cf = phi <2 x i32> [ %i.bv, %bb.c ], [ zeroinitializer, %stbtt_GetGlyphHMetrics.exit ] ; 3 uses
  %i.cg = phi <2 x i32> [ %i.ce, %bb.c ], [ zeroinitializer, %stbtt_GetGlyphHMetrics.exit ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  %foldExtExtBinop = sub nsw <2 x i32> %i.cg, %i.cf
  %i.ch = extractelement <2 x i32> %foldExtExtBinop, i64 0 ; 3 uses
  %foldExtExtBinop111 = sub nsw <2 x i32> %i.cg, %i.cf
  %i.ci = extractelement <2 x i32> %foldExtExtBinop111, i64 1 ; 2 uses
  %i.cj = add i32 %.06796, 1
  %i.ck = add i32 %i.cj, %i.ch
  %.not74 = icmp slt i32 %i.ck, %4                ; 2 uses
  %spec.select77 = select i1 %.not74, i32 %.06597, i32 %.06498 ; 4 uses
  %i.cl = add nsw i32 %spec.select77, %i.ci       ; 2 uses
  %i.cm = add nsw i32 %i.cl, 1                    ; 2 uses
  %.not75 = icmp slt i32 %i.cm, %5
  br i1 %.not75, label %bb.e, label %bb.d

bb.d:                                             ; preds = %stbtt_GetGlyphBitmapBox.exit
  %i.cn = trunc nuw nsw i64 %indvars.iv to i32
  %i.co = sub nsw i32 0, %i.cn
  br label %.loopexit

bb.e:                                             ; preds = %stbtt_GetGlyphBitmapBox.exit
  %spec.select = select i1 %.not74, i32 %.06796, i32 1 ; 3 uses
  %i.cp = sext i32 %spec.select to i64
  %i.cq = getelementptr inbounds i8, ptr %3, i64 %i.cp
  %i.cr = mul nsw i32 %spec.select77, %4
  %i.cs = sext i32 %i.cr to i64
  %i.ct = getelementptr inbounds i8, ptr %i.cq, i64 %i.cs
  call void @stbtt_MakeGlyphBitmapSubpixel(ptr noundef nonnull readonly %9, ptr noundef %i.ct, i32 noundef %i.ch, i32 noundef %i.ci, i32 noundef %4, float noundef %i.ah, float noundef %i.ah, float noundef 0.000000e+00, float noundef 0.000000e+00, i32 noundef %i.at)
  %i.cu = trunc i32 %spec.select to i16
  %i.cv = getelementptr inbounds nuw [20 x i8], ptr %8, i64 %indvars.iv ; 6 uses
  store i16 %i.cu, ptr %i.cv, align 4, !tbaa !155
  %i.cw = trunc i32 %spec.select77 to i16
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cv, i64 2
  store i16 %i.cw, ptr %i.cx, align 2, !tbaa !157
  %i.cy = add nsw i32 %spec.select, %i.ch         ; 2 uses
  %i.cz = trunc i32 %i.cy to i16
  %i.da = getelementptr inbounds nuw i8, ptr %i.cv, i64 4
  store i16 %i.cz, ptr %i.da, align 4, !tbaa !158
  %i.db = trunc i32 %i.cl to i16
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cv, i64 6
  store i16 %i.db, ptr %i.dc, align 2, !tbaa !159
  %i.dd = sitofp i16 %i.bl to float
  %i.de = fmul float %i.ah, %i.dd
  %i.df = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  store float %i.de, ptr %i.df, align 4, !tbaa !160
  %i.dg = sitofp <2 x i32> %i.cf to <2 x float>
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  store <2 x float> %i.dg, ptr %i.dh, align 4, !tbaa !74
  %i.di = add nsw i32 %i.cy, 1
  %spec.select78 = call i32 @llvm.smax.i32(i32 %.06498, i32 %i.cm) ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %stbtt_GetGlyphHMetrics.exit, !llvm.loop !161

.loopexit:                                        ; preds = %bb.e, %bb.b, %bb.d, %bb.a
  %.272 = phi i32 [ %i.co, %bb.d ], [ -1, %bb.a ], [ 1, %bb.b ], [ %spec.select78, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #29
  ret i32 %.272
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 2) i32 @stbtt_InitFont(ptr nofree noundef captures(none) initializes((8, 20), (64, 80)) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #3 {
bb.a:
  %i.a = tail call i32 @stbtt_InitFont_internal(ptr noundef %0, ptr noundef %1, i32 noundef %2)
  ret i32 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @stbtt_GetBakedQuad(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef captures(none) %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef writeonly captures(none) initializes((0, 32)) %6, i32 noundef %7) local_unnamed_addr #2 {
bb.a:
  %.not = icmp eq i32 %7, 0
  %i.a = select i1 %.not, float -5.000000e-01, float 0.000000e+00
  %i.b = insertelement <2 x i32> poison, i32 %1, i64 0
  %i.c = insertelement <2 x i32> %i.b, i32 %2, i64 1
  %i.d = sitofp <2 x i32> %i.c to <2 x float>
  %i.e = sext i32 %3 to i64
  %i.f = getelementptr inbounds [20 x i8], ptr %0, i64 %i.e ; 4 uses
  %i.g = load float, ptr %4, align 4, !tbaa !74
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.i = load float, ptr %5, align 4, !tbaa !74
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.l = fdiv <2 x float> splat (float 1.000000e+00), %i.d
  %i.m = load <2 x float>, ptr %i.h, align 4, !tbaa !74
  %i.n = insertelement <2 x float> poison, float %i.g, i64 0
  %i.o = insertelement <2 x float> %i.n, float %i.i, i64 1
  %i.p = fadd <2 x float> %i.o, %i.m
  %i.q = fadd <2 x float> %i.p, splat (float 5.000000e-01)
  %i.r = tail call <2 x float> @llvm.floor.v2f32(<2 x float> %i.q)
  %i.s = fptosi <2 x float> %i.r to <2 x i32>     ; 2 uses
  %i.t = sitofp <2 x i32> %i.s to <2 x float>
  %i.u = load <2 x i16>, ptr %i.f, align 4, !tbaa !59 ; 2 uses
  %i.v = uitofp <2 x i16> %i.u to <2 x float>
  %i.w = insertelement <4 x float> poison, float %i.a, i64 0
  %i.x = shufflevector <4 x float> %i.w, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 poison, i32 poison> ; 2 uses
  %i.y = shufflevector <2 x float> %i.l, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.z = shufflevector <4 x float> %i.x, <4 x float> %i.y, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 2 uses
  %i.aa = shufflevector <2 x float> %i.t, <2 x float> %i.v, <4 x i32> <i32 0, i32 1, i32 2, i32 3> ; 2 uses
  %i.ab = fadd <4 x float> %i.z, %i.aa
  %i.ac = fmul <4 x float> %i.z, %i.aa
  %i.ad = shufflevector <4 x float> %i.ab, <4 x float> %i.ac, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x float> %i.ad, ptr %6, align 4, !tbaa !74
  %i.ae = load <2 x i16>, ptr %i.j, align 4, !tbaa !59 ; 2 uses
  %i.af = zext <2 x i16> %i.ae to <2 x i32>
  %i.ag = add nsw <2 x i32> %i.af, %i.s
  %i.ah = zext <2 x i16> %i.u to <2 x i32>
  %i.ai = sub <2 x i32> %i.ag, %i.ah
  %i.aj = sitofp <2 x i32> %i.ai to <2 x float>
  %i.ak = uitofp <2 x i16> %i.ae to <2 x float>
  %i.al = shufflevector <4 x float> %i.y, <4 x float> %i.x, <4 x i32> <i32 4, i32 5, i32 0, i32 1> ; 2 uses
  %i.am = shufflevector <2 x float> %i.aj, <2 x float> %i.ak, <4 x i32> <i32 0, i32 1, i32 2, i32 3> ; 2 uses
  %i.an = fadd <4 x float> %i.al, %i.am
  %i.ao = fmul <4 x float> %i.al, %i.am
  %i.ap = shufflevector <4 x float> %i.an, <4 x float> %i.ao, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x float> %i.ap, ptr %i.k, align 4, !tbaa !74
  %i.aq = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !160
  %i.as = load float, ptr %4, align 4, !tbaa !74
  %i.at = fadd float %i.ar, %i.as
  store float %i.at, ptr %4, align 4, !tbaa !74
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @stbrp_init_target(ptr nofree noundef writeonly captures(none) initializes((0, 20)) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef readnone captures(none) %3, i32 noundef %4) local_unnamed_addr #11 {
bb.a:
  store i32 %1, ptr %0, align 4, !tbaa !162
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %2, ptr %i.a, align 4, !tbaa !164
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.b, align 4, !tbaa !165
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 0, ptr %i.c, align 4, !tbaa !166
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %i.d, align 4, !tbaa !167
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @stbrp_pack_rects(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, i32 noundef %2) local_unnamed_addr #21 {
bb.a:
  %i.a = icmp sgt i32 %2, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = load i32, ptr %0, align 4, !tbaa !162
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !164
  %.promoted = load i32, ptr %i.b, align 4, !tbaa !165
  %.promoted41 = load i32, ptr %i.e, align 4, !tbaa !166
  %wide.trip.count = zext nneg i32 %2 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.g
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.g ] ; 3 uses
  %i.h = phi i32 [ %.promoted41, %.lr.ph ], [ %i.o, %bb.g ]
  %3 = phi i32 [ %.promoted, %.lr.ph ], [ %i.w, %bb.g ] ; 2 uses
  %i.i = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %indvars.iv ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  %i.k = load i32, ptr %i.j, align 4, !tbaa !168  ; 2 uses
  %i.l = add nsw i32 %i.k, %3
  %i.m = icmp sgt i32 %i.l, %i.c
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.b, align 4, !tbaa !165
  %i.n = load i32, ptr %i.d, align 4, !tbaa !167  ; 2 uses
  store i32 %i.n, ptr %i.e, align 4, !tbaa !166
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.o = phi i32 [ %i.n, %bb.c ], [ %i.h, %bb.b ] ; 3 uses
  %i.p = phi i32 [ 0, %bb.c ], [ %3, %bb.b ]      ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.r = load i32, ptr %i.q, align 4, !tbaa !170
  %i.s = add nsw i32 %i.r, %i.o                   ; 3 uses
  %i.t = icmp sgt i32 %i.s, %i.g
  br i1 %i.t, label %._crit_edge.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i32 %i.p, ptr %i.i, align 4, !tbaa !171
  %i.u = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  store i32 %i.o, ptr %i.u, align 4, !tbaa !172
  %i.v = getelementptr inbounds nuw i8, ptr %i.i, i64 20
  store i32 1, ptr %i.v, align 4, !tbaa !173
  %i.w = add nsw i32 %i.p, %i.k                   ; 2 uses
  store i32 %i.w, ptr %i.b, align 4, !tbaa !165
  %i.x = load i32, ptr %i.d, align 4, !tbaa !167
  %i.y = icmp sgt i32 %i.s, %i.x
  br i1 %i.y, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 %i.s, ptr %i.d, align 4, !tbaa !167
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge45, label %bb.b, !llvm.loop !174

._crit_edge.loopexit:                             ; preds = %bb.d
  %i.z = trunc nuw nsw i64 %indvars.iv to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %i.z, %._crit_edge.loopexit ] ; 4 uses
  %i.aa = icmp slt i32 %.0.lcssa, %2
  br i1 %i.aa, label %.lr.ph44.preheader, label %._crit_edge45

.lr.ph44.preheader:                               ; preds = %._crit_edge
  %i.ab = zext i32 %.0.lcssa to i64               ; 2 uses
  %i.ac = sub i32 %2, %.0.lcssa
  %xtraiter = and i32 %i.ac, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph44.prol.loopexit, label %.lr.ph44.prol

.lr.ph44.prol:                                    ; preds = %.lr.ph44.preheader, %.lr.ph44.prol
  %indvars.iv47.prol = phi i64 [ %indvars.iv.next48.prol, %.lr.ph44.prol ], [ %i.ab, %.lr.ph44.preheader ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph44.prol ], [ 0, %.lr.ph44.preheader ]
  %i.ad = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %indvars.iv47.prol
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 20
  store i32 0, ptr %i.ae, align 4, !tbaa !173
  %indvars.iv.next48.prol = add nuw nsw i64 %indvars.iv47.prol, 1 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph44.prol.loopexit, label %.lr.ph44.prol, !llvm.loop !175

.lr.ph44.prol.loopexit:                           ; preds = %.lr.ph44.prol, %.lr.ph44.preheader
  %indvars.iv47.unr = phi i64 [ %i.ab, %.lr.ph44.preheader ], [ %indvars.iv.next48.prol, %.lr.ph44.prol ]
  %i.af = sub i32 %.0.lcssa, %2
  %i.ag = icmp ugt i32 %i.af, -8
  br i1 %i.ag, label %._crit_edge45, label %.lr.ph44

.lr.ph44:                                         ; preds = %.lr.ph44.prol.loopexit, %.lr.ph44
  %indvars.iv47 = phi i64 [ %indvars.iv.next48.7, %.lr.ph44 ], [ %indvars.iv47.unr, %.lr.ph44.prol.loopexit ] ; 9 uses
  %i.ah = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %indvars.iv47
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 20
  store i32 0, ptr %i.ai, align 4, !tbaa !173
  %i.aj = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %indvars.iv47
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 44
  store i32 0, ptr %i.ak, align 4, !tbaa !173
  %i.al = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %indvars.iv47
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 68
  store i32 0, ptr %i.am, align 4, !tbaa !173
  %i.an = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %indvars.iv47
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 92
  store i32 0, ptr %i.ao, align 4, !tbaa !173
  %i.ap = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %indvars.iv47
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 116
  store i32 0, ptr %i.aq, align 4, !tbaa !173
  %i.ar = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %indvars.iv47
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 140
  store i32 0, ptr %i.as, align 4, !tbaa !173
  %i.at = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %indvars.iv47
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 164
  store i32 0, ptr %i.au, align 4, !tbaa !173
  %i.av = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %indvars.iv47
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 188
  store i32 0, ptr %i.aw, align 4, !tbaa !173
  %indvars.iv.next48.7 = add nuw nsw i64 %indvars.iv47, 8 ; 2 uses
  %i.ax = trunc nuw i64 %indvars.iv.next48.7 to i32
  %i.ay = icmp sgt i32 %2, %i.ax
  br i1 %i.ay, label %.lr.ph44, label %._crit_edge45, !llvm.loop !177

._crit_edge45:                                    ; preds = %bb.g, %.lr.ph44.prol.loopexit, %.lr.ph44, %._crit_edge
  ret void
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, argmem: write, target_mem: none) uwtable
define range(i32 0, 2) i32 @stbtt_PackBegin(ptr nofree noundef writeonly captures(none) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6) local_unnamed_addr #23 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(20) ptr @malloc(i64 noundef 20) #30 ; 8 uses
  %i.b = sub nsw i32 %2, %5                       ; 2 uses
  %i.c = sext i32 %i.b to i64
  %i.d = tail call noalias ptr @malloc(i64 noundef %i.c) #30 ; 3 uses
  %i.e = icmp eq ptr %i.a, null                   ; 2 uses
  %i.f = icmp eq ptr %i.d, null                   ; 2 uses
  %or.cond = or i1 %i.e, %i.f
  br i1 %or.cond, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @free(ptr noundef nonnull %i.a) #29
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  br i1 %i.f, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @free(ptr noundef nonnull %i.d) #29
  br label %bb.h

bb.f:                                             ; preds = %bb.a
  store ptr %6, ptr %0, align 8, !tbaa !178
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %2, ptr %i.g, align 8, !tbaa !180
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %3, ptr %i.h, align 4, !tbaa !181
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %1, ptr %i.i, align 8, !tbaa !182
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %i.j, align 8, !tbaa !183
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.d, ptr %i.k, align 8, !tbaa !184
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %5, ptr %i.l, align 4, !tbaa !185
  %.not = icmp eq i32 %4, 0
  %i.m = select i1 %.not, i32 %2, i32 %4
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.m, ptr %i.n, align 8, !tbaa !186
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 1, ptr %i.o, align 4, !tbaa !187
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 1, ptr %i.p, align 8, !tbaa !188
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 0, ptr %i.q, align 8, !tbaa !189
  %i.r = sub nsw i32 %3, %5
  store i32 %i.b, ptr %i.a, align 4, !tbaa !162
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %i.r, ptr %i.s, align 4, !tbaa !164
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 0, ptr %i.t, align 4, !tbaa !165
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 0, ptr %i.u, align 4, !tbaa !166
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i32 0, ptr %i.v, align 4, !tbaa !167
  %.not46 = icmp eq ptr %1, null
  br i1 %.not46, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = mul nsw i32 %3, %2
  %i.x = sext i32 %i.w to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %1, i8 0, i64 %i.x, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.d, %bb.e
  %.0 = phi i32 [ 0, %bb.d ], [ 0, %bb.e ], [ 1, %bb.g ], [ 1, %bb.f ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define void @stbtt_PackEnd(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #24 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !184
  tail call void @free(ptr noundef %i.b) #29
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !183
  tail call void @free(ptr noundef %i.d) #29
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @stbtt_PackSetOversampling(ptr nofree noundef writeonly captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #11 {
bb.a:
  %i.a = icmp ult i32 %1, 9
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 %1, ptr %i.b, align 4, !tbaa !187
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = icmp ult i32 %2, 9
  br i1 %i.c, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %2, ptr %i.d, align 8, !tbaa !188
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @stbtt_PackSetSkipMissingCodepoints(ptr nofree noundef writeonly captures(none) initializes((32, 36)) %0, i32 noundef %1) local_unnamed_addr #11 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %1, ptr %i.a, align 8, !tbaa !189
  ret void
}

end_hunk_0
begin_hunk_1_@stbtt_PackFontRangesRenderIntoRects:bb.a
  %i.tg = load i8, ptr %i.tf, align 1, !tbaa !14
  %i.th = zext i8 %i.tg to i32
  %i.ti = sub nsw i32 %i.td, %i.th
  %i.tj = add i32 %i.ti, %.2134.i.epil.init       ; 2 uses
  %i.tk = xor i64 %i.te, 4
  %i.tl = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.tk
  store i8 %i.tc, ptr %i.tl, align 1, !tbaa !14
  %i.tm = lshr i32 %i.tj, 2
  %i.tn = trunc i32 %i.tm to i8
  store i8 %i.tn, ptr %i.tb, align 1, !tbaa !14
  br label %.loopexit.i164

.loopexit.i164:                                   ; preds = %.lr.ph.i160, %.lr.ph135.i.epil.preheader, %.loopexit.i164.loopexit358.unr-lcssa, %.lr.ph141.i, %.lr.ph147.i, %.lr.ph153.i, %.preheader.i172, %.preheader120.i, %.preheader122.i, %.preheader124.i, %.preheader126.i
  %.5108.i = phi i32 [ %i.pl, %.lr.ph153.i ], [ %i.pl, %.lr.ph147.i ], [ %i.pl, %.lr.ph141.i ], [ %i.pl, %.lr.ph135.i.epil.preheader ], [ 0, %.preheader.i172 ], [ 0, %.preheader120.i ], [ 0, %.preheader122.i ], [ 0, %.preheader124.i ], [ 0, %.preheader126.i ], [ %i.pl, %.loopexit.i164.loopexit358.unr-lcssa ], [ %i.pl, %.lr.ph.i160 ] ; 2 uses
  %.5.i165 = phi i32 [ %i.st, %.lr.ph153.i ], [ %i.px, %.lr.ph147.i ], [ %i.qm, %.lr.ph141.i ], [ %i.tj, %.lr.ph135.i.epil.preheader ], [ 0, %.preheader.i172 ], [ 0, %.preheader120.i ], [ 0, %.preheader122.i ], [ 0, %.preheader124.i ], [ 0, %.preheader126.i ], [ %i.rp, %.loopexit.i164.loopexit358.unr-lcssa ], [ %i.sd, %.lr.ph.i160 ] ; 2 uses
  %i.to = icmp slt i32 %.5108.i, %.pre272
  br i1 %i.to, label %.lr.ph158.preheader.i, label %._crit_edge.i166

.lr.ph158.preheader.i:                            ; preds = %.loopexit.i164
  %i.tp = sext i32 %.5108.i to i64                ; 6 uses
  %i.tq = sub nsw i64 %wide.trip.count202.i, %i.tp
  %xtraiter389 = and i64 %i.tq, 1
  %lcmp.mod390.not = icmp eq i64 %xtraiter389, 0
  br i1 %lcmp.mod390.not, label %.lr.ph158.i.prol.loopexit, label %.lr.ph158.i.prol

.lr.ph158.i.prol:                                 ; preds = %.lr.ph158.preheader.i
  %i.tr = and i64 %i.tp, 7
  %i.ts = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.tr
  %i.tt = load i8, ptr %i.ts, align 1, !tbaa !14
  %i.tu = zext i8 %i.tt to i32
  %i.tv = sub i32 %.5.i165, %i.tu                 ; 2 uses
  %i.tw = udiv i32 %i.tv, %i.oy
  %i.tx = trunc i32 %i.tw to i8
  %i.ty = mul nsw i64 %i.tp, %i.pk
  %i.tz = getelementptr inbounds i8, ptr %.0111159.i, i64 %i.ty
  store i8 %i.tx, ptr %i.tz, align 1, !tbaa !14
  %indvars.iv.next200.i.prol = add nuw nsw i64 %i.tp, 1
  br label %.lr.ph158.i.prol.loopexit

.lr.ph158.i.prol.loopexit:                        ; preds = %.lr.ph158.i.prol, %.lr.ph158.preheader.i
  %indvars.iv199.i.unr = phi i64 [ %i.tp, %.lr.ph158.preheader.i ], [ %indvars.iv.next200.i.prol, %.lr.ph158.i.prol ]
  %.6157.i.unr = phi i32 [ %.5.i165, %.lr.ph158.preheader.i ], [ %i.tv, %.lr.ph158.i.prol ]
  %i.ua = icmp eq i64 %i.pn, %i.tp
  br i1 %i.ua, label %._crit_edge.i166, label %.lr.ph158.i

.lr.ph158.i:                                      ; preds = %.lr.ph158.i.prol.loopexit, %.lr.ph158.i
  %indvars.iv199.i = phi i64 [ %indvars.iv.next200.i.1, %.lr.ph158.i ], [ %indvars.iv199.i.unr, %.lr.ph158.i.prol.loopexit ] ; 4 uses
  %.6157.i = phi i32 [ %i.uo, %.lr.ph158.i ], [ %.6157.i.unr, %.lr.ph158.i.prol.loopexit ]
  %i.ub = and i64 %indvars.iv199.i, 7
  %i.uc = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ub
  %i.ud = load i8, ptr %i.uc, align 1, !tbaa !14
  %i.ue = zext i8 %i.ud to i32
  %i.uf = sub i32 %.6157.i, %i.ue                 ; 2 uses
  %i.ug = udiv i32 %i.uf, %i.oy
  %i.uh = trunc i32 %i.ug to i8
  %i.ui = mul nsw i64 %indvars.iv199.i, %i.pk
  %i.uj = getelementptr inbounds i8, ptr %.0111159.i, i64 %i.ui
  store i8 %i.uh, ptr %i.uj, align 1, !tbaa !14
  %indvars.iv.next200.i = add nuw nsw i64 %indvars.iv199.i, 1 ; 2 uses
  %i.uk = and i64 %indvars.iv.next200.i, 7
  %i.ul = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.uk
  %i.um = load i8, ptr %i.ul, align 1, !tbaa !14
  %i.un = zext i8 %i.um to i32
  %i.uo = sub i32 %i.uf, %i.un                    ; 2 uses
  %i.up = udiv i32 %i.uo, %i.oy
  %i.uq = trunc i32 %i.up to i8
  %i.ur = mul nsw i64 %indvars.iv.next200.i, %i.pk
  %i.us = getelementptr inbounds i8, ptr %.0111159.i, i64 %i.ur
  store i8 %i.uq, ptr %i.us, align 1, !tbaa !14
  %indvars.iv.next200.i.1 = add nuw nsw i64 %indvars.iv199.i, 2 ; 2 uses
  %exitcond203.not.i.1 = icmp eq i64 %indvars.iv.next200.i.1, %wide.trip.count202.i
  br i1 %exitcond203.not.i.1, label %._crit_edge.i166, label %.lr.ph158.i, !llvm.loop !202

._crit_edge.i166:                                 ; preds = %.lr.ph158.i.prol.loopexit, %.lr.ph158.i, %.loopexit.i164
  %i.ut = getelementptr inbounds nuw i8, ptr %.0111159.i, i64 1
  %i.uu = add nuw nsw i32 %.0110161.i, 1          ; 2 uses
  %exitcond204.not.i = icmp eq i32 %i.uu, %.pre270
  br i1 %exitcond204.not.i, label %stbtt__v_prefilter.exit.loopexit, label %bb.w, !llvm.loop !203

stbtt__v_prefilter.exit.loopexit:                 ; preds = %._crit_edge.i166
  %.pre265.pre = load i32, ptr %i.cn, align 4, !tbaa !171
  %.pre267.pre = load i32, ptr %i.di, align 4, !tbaa !172
  %.pre269.pre = load i32, ptr %i.cq, align 4, !tbaa !168
  %.pre271.pre = load i32, ptr %i.cs, align 4, !tbaa !170
  br label %stbtt__v_prefilter.exit

stbtt__v_prefilter.exit:                          ; preds = %stbtt__v_prefilter.exit.loopexit, %bb.v
  %.pre271 = phi i32 [ %.pre271.pre, %stbtt__v_prefilter.exit.loopexit ], [ %.pre272, %bb.v ]
  %.pre269 = phi i32 [ %.pre269.pre, %stbtt__v_prefilter.exit.loopexit ], [ %.pre270, %bb.v ]
  %.pre267 = phi i32 [ %.pre267.pre, %stbtt__v_prefilter.exit.loopexit ], [ %.pre268, %bb.v ]
  %.pre265 = phi i32 [ %.pre265.pre, %stbtt__v_prefilter.exit.loopexit ], [ %.pre266, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  br label %bb.x

bb.x:                                             ; preds = %stbtt__v_prefilter.exit, %bb.u
  %i.uv = phi i32 [ %.pre271, %stbtt__v_prefilter.exit ], [ %.pre272, %bb.u ] ; 2 uses
  %i.uw = phi i32 [ %.pre269, %stbtt__v_prefilter.exit ], [ %.pre270, %bb.u ] ; 2 uses
  %i.ux = phi i32 [ %.pre267, %stbtt__v_prefilter.exit ], [ %.pre268, %bb.u ] ; 2 uses
  %i.uy = phi i32 [ %.pre265, %stbtt__v_prefilter.exit ], [ %.pre266, %bb.u ] ; 2 uses
  %i.uz = trunc i32 %i.uy to i16
  store i16 %i.uz, ptr %i.cv, align 4, !tbaa !214
  %i.va = trunc i32 %i.ux to i16
  %i.vb = getelementptr inbounds nuw i8, ptr %i.cv, i64 2
  store i16 %i.va, ptr %i.vb, align 2, !tbaa !216
  %i.vc = add nsw i32 %i.uw, %i.uy
  %i.vd = trunc i32 %i.vc to i16
  %i.ve = getelementptr inbounds nuw i8, ptr %i.cv, i64 4
  store i16 %i.vd, ptr %i.ve, align 4, !tbaa !217
  %i.vf = add nsw i32 %i.uv, %i.ux
  %i.vg = trunc i32 %i.vf to i16
  %i.vh = getelementptr inbounds nuw i8, ptr %i.cv, i64 6
  store i16 %i.vg, ptr %i.vh, align 2, !tbaa !218
  %i.vi = sitofp i16 %i.en to float
  %i.vj = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %i.vk = extractelement <2 x i32> %i.hu, i64 0
  %i.vl = add nsw i32 %i.uw, %i.vk
  %i.vm = sitofp i32 %i.vl to float
  %i.vn = shufflevector <2 x i32> %i.hu, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.vo = sitofp <4 x i32> %i.vn to <4 x float>
  %i.vp = insertelement <4 x float> %i.vo, float %i.bm, i64 2
  %i.vq = insertelement <4 x float> %i.vp, float %i.vm, i64 3
  %i.vr = insertelement <4 x float> %i.ci, float %i.vi, i64 2
  %i.vs = shufflevector <4 x float> %i.vr, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.vt = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.vq, <4 x float> %i.vs, <4 x float> %i.cm)
  store <4 x float> %i.vt, ptr %i.vj, align 4, !tbaa !74
  %i.vu = extractelement <2 x i32> %i.hu, i64 1
  %i.vv = add nsw i32 %i.uv, %i.vu
  %i.vw = sitofp i32 %i.vv to float
  %i.vx = call float @llvm.fmuladd.f32(float %i.vw, float %i.cj, float %i.ch)
  %i.vy = getelementptr inbounds nuw i8, ptr %i.cv, i64 24
  store float %i.vx, ptr %i.vy, align 4, !tbaa !219
  %i.vz = icmp eq i32 %i.de, 0
  %i.wa = trunc nuw nsw i64 %indvars.iv252 to i32
  %spec.select = select i1 %i.vz, i32 %i.wa, i32 %.1140221
  br label %.thread198

bb.y:                                             ; preds = %bb.f
  %i.wb = load i32, ptr %i.u, align 8, !tbaa !189
  %.not153.not = icmp eq i32 %i.wb, 0
  br i1 %.not153.not, label %bb.z, label %.thread198

bb.z:                                             ; preds = %bb.y
  %i.wc = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  %i.wd = load i32, ptr %i.wc, align 4, !tbaa !170
  %i.we = icmp eq i32 %i.wd, 0
  %i.wf = icmp sgt i32 %.1140221, -1
  %or.cond = select i1 %i.we, i1 %i.wf, i1 false
  br i1 %or.cond, label %bb.aa, label %.thread198

bb.aa:                                            ; preds = %bb.z
  %i.wg = load ptr, ptr %i.cc, align 8, !tbaa !213 ; 2 uses
  %i.wh = getelementptr inbounds nuw [28 x i8], ptr %i.wg, i64 %indvars.iv252
  %i.wi = zext nneg i32 %.1140221 to i64
  %i.wj = getelementptr inbounds nuw [28 x i8], ptr %i.wg, i64 %i.wi
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.wh, ptr noundef nonnull align 4 dereferenceable(28) %i.wj, i64 28, i1 false), !tbaa.struct !220
  br label %.thread198

.thread198:                                       ; preds = %bb.g, %bb.y, %bb.e, %bb.z, %bb.aa, %bb.x
  %.3 = phi i32 [ %spec.select, %bb.x ], [ %.1140221, %bb.y ], [ %.1140221, %bb.aa ], [ %.1140221, %bb.z ], [ %.1140221, %bb.e ], [ %.1140221, %bb.g ] ; 2 uses
  %.2 = phi i32 [ %.1222, %bb.x ], [ 0, %bb.y ], [ %.1222, %bb.aa ], [ 0, %bb.z ], [ 0, %bb.e ], [ 0, %bb.g ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %indvars.iv.next253 = add nuw nsw i64 %indvars.iv252, 1 ; 2 uses
  %i.wk = load i32, ptr %i.bq, align 8, !tbaa !208
  %i.wl = sext i32 %i.wk to i64
  %i.wm = icmp slt i64 %indvars.iv.next253, %i.wl
  br i1 %i.wm, label %bb.e, label %._crit_edge.loopexit, !llvm.loop !221

._crit_edge.loopexit:                             ; preds = %.thread198
  %i.wn = trunc nsw i64 %indvars.iv.next to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %stbtt__oversample_shift.exit
  %.1143.lcssa = phi i32 [ %.0142226, %stbtt__oversample_shift.exit ], [ %i.wn, %._crit_edge.loopexit ]
  %.1140.lcssa = phi i32 [ %.0139227, %stbtt__oversample_shift.exit ], [ %.3, %._crit_edge.loopexit ]
  %.1.lcssa = phi i32 [ %.0228, %stbtt__oversample_shift.exit ], [ %.2, %._crit_edge.loopexit ] ; 2 uses
  %indvars.iv.next258 = add nuw nsw i64 %indvars.iv257, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next258, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge231, label %bb.b, !llvm.loop !222

._crit_edge231:                                   ; preds = %._crit_edge, %bb.a
  %.0.lcssa = phi i32 [ 1, %bb.a ], [ %.1.lcssa, %._crit_edge ]
  store <2 x i32> %i.e, ptr %i.c, align 4, !tbaa !19
  ret i32 %.0.lcssa
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @stbtt_PackFontRangesPackRects(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, i32 noundef %2) local_unnamed_addr #12 {
bb.a:
  %i.a = icmp sgt i32 %2, 0
  br i1 %i.a, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !183  ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.e = load i32, ptr %i.c, align 4, !tbaa !162
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 12 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.i = load i32, ptr %i.h, align 4, !tbaa !164
  %.promoted.i = load i32, ptr %i.d, align 4, !tbaa !165
  %.promoted41.i = load i32, ptr %i.g, align 4, !tbaa !166
  %wide.trip.count.i = zext nneg i32 %2 to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.g, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.g ] ; 3 uses
  %i.j = phi i32 [ %.promoted41.i, %.lr.ph.i ], [ %i.q, %bb.g ]
  %3 = phi i32 [ %.promoted.i, %.lr.ph.i ], [ %i.y, %bb.g ] ; 2 uses
  %i.k = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %indvars.iv.i ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  %i.m = load i32, ptr %i.l, align 4, !tbaa !168  ; 2 uses
  %i.n = add nsw i32 %i.m, %3
  %i.o = icmp sgt i32 %i.n, %i.e
  br i1 %i.o, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.d, align 4, !tbaa !165
  %i.p = load i32, ptr %i.f, align 4, !tbaa !167  ; 2 uses
  store i32 %i.p, ptr %i.g, align 4, !tbaa !166
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.q = phi i32 [ %i.p, %bb.c ], [ %i.j, %bb.b ] ; 3 uses
  %i.r = phi i32 [ 0, %bb.c ], [ %3, %bb.b ]      ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.t = load i32, ptr %i.s, align 4, !tbaa !170
  %i.u = add nsw i32 %i.t, %i.q                   ; 3 uses
  %i.v = icmp sgt i32 %i.u, %i.i
  br i1 %i.v, label %._crit_edge.loopexit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i32 %i.r, ptr %i.k, align 4, !tbaa !171
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  store i32 %i.q, ptr %i.w, align 4, !tbaa !172
  %i.x = getelementptr inbounds nuw i8, ptr %i.k, i64 20
  store i32 1, ptr %i.x, align 4, !tbaa !173
  %i.y = add nsw i32 %i.r, %i.m                   ; 2 uses
  store i32 %i.y, ptr %i.d, align 4, !tbaa !165
  %i.z = load i32, ptr %i.f, align 4, !tbaa !167
  %i.aa = icmp sgt i32 %i.u, %i.z
  br i1 %i.aa, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 %i.u, ptr %i.f, align 4, !tbaa !167
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %stbrp_pack_rects.exit, label %bb.b, !llvm.loop !174

._crit_edge.loopexit.i:                           ; preds = %bb.d
  %i.ab = trunc nuw nsw i64 %indvars.iv.i to i32
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %bb.a
  %.0.lcssa.i = phi i32 [ 0, %bb.a ], [ %i.ab, %._crit_edge.loopexit.i ] ; 2 uses
  %i.ac = icmp slt i32 %.0.lcssa.i, %2
  br i1 %i.ac, label %.lr.ph44.preheader.i, label %stbrp_pack_rects.exit

.lr.ph44.preheader.i:                             ; preds = %._crit_edge.i
  %i.ad = zext i32 %.0.lcssa.i to i64             ; 4 uses
  %wide.trip.count = zext i32 %2 to i64           ; 3 uses
  %i.ae = sub nsw i64 %wide.trip.count, %i.ad
  %xtraiter = and i64 %i.ae, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph44.i.prol.loopexit, label %.lr.ph44.i.prol

.lr.ph44.i.prol:                                  ; preds = %.lr.ph44.preheader.i, %.lr.ph44.i.prol
  %indvars.iv47.i.prol = phi i64 [ %indvars.iv.next48.i.prol, %.lr.ph44.i.prol ], [ %i.ad, %.lr.ph44.preheader.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph44.i.prol ], [ 0, %.lr.ph44.preheader.i ]
  %i.af = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %indvars.iv47.i.prol
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 20
  store i32 0, ptr %i.ag, align 4, !tbaa !173
  %indvars.iv.next48.i.prol = add nuw nsw i64 %indvars.iv47.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph44.i.prol.loopexit, label %.lr.ph44.i.prol, !llvm.loop !223

.lr.ph44.i.prol.loopexit:                         ; preds = %.lr.ph44.i.prol, %.lr.ph44.preheader.i
  %indvars.iv47.i.unr = phi i64 [ %i.ad, %.lr.ph44.preheader.i ], [ %indvars.iv.next48.i.prol, %.lr.ph44.i.prol ]
  %i.ah = sub nsw i64 %i.ad, %wide.trip.count
  %i.ai = icmp ugt i64 %i.ah, -8
  br i1 %i.ai, label %stbrp_pack_rects.exit, label %.lr.ph44.i

.lr.ph44.i:                                       ; preds = %.lr.ph44.i.prol.loopexit, %.lr.ph44.i
  %indvars.iv47.i = phi i64 [ %indvars.iv.next48.i.7, %.lr.ph44.i ], [ %indvars.iv47.i.unr, %.lr.ph44.i.prol.loopexit ] ; 9 uses
  %i.aj = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %indvars.iv47.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 20
  store i32 0, ptr %i.ak, align 4, !tbaa !173
  %i.al = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %indvars.iv47.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 44
  store i32 0, ptr %i.am, align 4, !tbaa !173
  %i.an = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %indvars.iv47.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 68
  store i32 0, ptr %i.ao, align 4, !tbaa !173
  %i.ap = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %indvars.iv47.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 92
  store i32 0, ptr %i.aq, align 4, !tbaa !173
  %i.ar = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %indvars.iv47.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 116
  store i32 0, ptr %i.as, align 4, !tbaa !173
  %i.at = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %indvars.iv47.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 140
  store i32 0, ptr %i.au, align 4, !tbaa !173
  %i.av = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %indvars.iv47.i
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 164
  store i32 0, ptr %i.aw, align 4, !tbaa !173
  %i.ax = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %indvars.iv47.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 188
  store i32 0, ptr %i.ay, align 4, !tbaa !173
  %indvars.iv.next48.i.7 = add nuw nsw i64 %indvars.iv47.i, 8 ; 2 uses
  %exitcond.not.7 = icmp eq i64 %indvars.iv.next48.i.7, %wide.trip.count
  br i1 %exitcond.not.7, label %stbrp_pack_rects.exit, label %.lr.ph44.i, !llvm.loop !177

stbrp_pack_rects.exit:                            ; preds = %bb.g, %.lr.ph44.i.prol.loopexit, %.lr.ph44.i, %._crit_edge.i
  ret void
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define range(i32 0, 2) i32 @stbtt_PackFontRanges(ptr nofree noundef captures(none) %0, ptr noundef %1, i32 noundef %2, ptr nofree noundef captures(none) %3, i32 noundef %4) local_unnamed_addr #10 {
bb.a:
  %5 = alloca %struct.stbtt_fontinfo, align 8     ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  %i.a = icmp sgt i32 %4, 0
  br i1 %i.a, label %.preheader50.preheader, label %._crit_edge57

.preheader50.preheader:                           ; preds = %bb.a
  %wide.trip.count64 = zext nneg i32 %4 to i64    ; 3 uses
  br label %.preheader50

.preheader50:                                     ; preds = %.preheader50.preheader, %._crit_edge
  %indvars.iv61 = phi i64 [ 0, %.preheader50.preheader ], [ %indvars.iv.next62, %._crit_edge ] ; 2 uses
  %i.b = getelementptr inbounds nuw [40 x i8], ptr %3, i64 %indvars.iv61 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load i32, ptr %i.c, align 8, !tbaa !208  ; 3 uses
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader50
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !213  ; 5 uses
  %wide.trip.count = zext nneg i32 %i.d to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.h = icmp ult i32 %i.d, 4
  br i1 %i.h, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %bb.b

.lr.ph56.preheader:                               ; preds = %._crit_edge
  %wide.trip.count69 = zext nneg i32 %4 to i64
  %min.iters.check = icmp ult i32 %4, 8
  br i1 %min.iters.check, label %.lr.ph56.preheader83, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph56.preheader
  %n.vec = and i64 %wide.trip.count64, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 9 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ao, %vector.body ]
  %vec.phi80 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ap, %vector.body ]
  %i.i = getelementptr inbounds nuw [40 x i8], ptr %3, i64 %index
  %i.j = getelementptr inbounds nuw [40 x i8], ptr %3, i64 %index
  %i.k = getelementptr inbounds nuw [40 x i8], ptr %3, i64 %index
  %i.l = getelementptr inbounds nuw [40 x i8], ptr %3, i64 %index
  %i.m = getelementptr inbounds nuw [40 x i8], ptr %3, i64 %index
  %i.n = getelementptr inbounds nuw [40 x i8], ptr %3, i64 %index
  %i.o = getelementptr inbounds nuw [40 x i8], ptr %3, i64 %index
  %i.p = getelementptr inbounds nuw [40 x i8], ptr %3, i64 %index
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 96
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 136
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 176
  %i.v = getelementptr inbounds nuw i8, ptr %i.n, i64 216
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 256
  %i.x = getelementptr inbounds nuw i8, ptr %i.p, i64 296
  %i.y = load i32, ptr %i.q, align 8, !tbaa !208
  %i.z = load i32, ptr %i.r, align 8, !tbaa !208
  %i.aa = load i32, ptr %i.s, align 8, !tbaa !208
  %i.ab = load i32, ptr %i.t, align 8, !tbaa !208
  %i.ac = insertelement <4 x i32> poison, i32 %i.y, i64 0
  %i.ad = insertelement <4 x i32> %i.ac, i32 %i.z, i64 1
  %i.ae = insertelement <4 x i32> %i.ad, i32 %i.aa, i64 2
  %i.af = insertelement <4 x i32> %i.ae, i32 %i.ab, i64 3
  %i.ag = load i32, ptr %i.u, align 8, !tbaa !208
  %i.ah = load i32, ptr %i.v, align 8, !tbaa !208
  %i.ai = load i32, ptr %i.w, align 8, !tbaa !208
  %i.aj = load i32, ptr %i.x, align 8, !tbaa !208
  %i.ak = insertelement <4 x i32> poison, i32 %i.ag, i64 0
  %i.al = insertelement <4 x i32> %i.ak, i32 %i.ah, i64 1
  %i.am = insertelement <4 x i32> %i.al, i32 %i.ai, i64 2
  %i.an = insertelement <4 x i32> %i.am, i32 %i.aj, i64 3
  %i.ao = add <4 x i32> %i.af, %vec.phi           ; 2 uses
  %i.ap = add <4 x i32> %i.an, %vec.phi80         ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.aq = icmp eq i64 %index.next, %n.vec
  br i1 %i.aq, label %middle.block, label %vector.body, !llvm.loop !224

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.ap, %i.ao
  %i.ar = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count64
  br i1 %cmp.n, label %._crit_edge57.loopexit, label %.lr.ph56.preheader83

.lr.ph56.preheader83:                             ; preds = %.lr.ph56.preheader, %middle.block
  %indvars.iv66.ph = phi i64 [ 0, %.lr.ph56.preheader ], [ %n.vec, %middle.block ]
  %.055.ph = phi i32 [ 0, %.lr.ph56.preheader ], [ %i.ar, %middle.block ]
  br label %.lr.ph56

bb.b:                                             ; preds = %bb.b, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.3, %bb.b ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.b ]
  %i.as = getelementptr inbounds nuw [28 x i8], ptr %i.g, i64 %indvars.iv
  store i64 0, ptr %i.as, align 4
  %i.at = getelementptr inbounds nuw [28 x i8], ptr %i.g, i64 %indvars.iv
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 28
  store i64 0, ptr %i.au, align 4
  %i.av = getelementptr inbounds nuw [28 x i8], ptr %i.g, i64 %indvars.iv
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 56
  store i64 0, ptr %i.aw, align 4
  %i.ax = getelementptr inbounds nuw [28 x i8], ptr %i.g, i64 %indvars.iv
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 84
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  store i64 0, ptr %i.ay, align 4
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %bb.b, !llvm.loop !225

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.3, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod87 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod87)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.c ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.c ]
  %i.az = getelementptr inbounds nuw [28 x i8], ptr %i.g, i64 %indvars.iv.epil
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  store i64 0, ptr %i.az, align 4
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.c, !llvm.loop !226

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.c, %.preheader50
  %indvars.iv.next62 = add nuw nsw i64 %indvars.iv61, 1 ; 2 uses
  %exitcond65.not = icmp eq i64 %indvars.iv.next62, %wide.trip.count64
  br i1 %exitcond65.not, label %.lr.ph56.preheader, label %.preheader50, !llvm.loop !227

.lr.ph56:                                         ; preds = %.lr.ph56.preheader83, %.lr.ph56
  %indvars.iv66 = phi i64 [ %indvars.iv.next67, %.lr.ph56 ], [ %indvars.iv66.ph, %.lr.ph56.preheader83 ] ; 2 uses
  %.055 = phi i32 [ %i.bd, %.lr.ph56 ], [ %.055.ph, %.lr.ph56.preheader83 ]
  %i.ba = getelementptr inbounds nuw [40 x i8], ptr %3, i64 %indvars.iv66
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !208
  %i.bd = add nsw i32 %i.bc, %.055                ; 2 uses
  %indvars.iv.next67 = add nuw nsw i64 %indvars.iv66, 1 ; 2 uses
  %exitcond70.not = icmp eq i64 %indvars.iv.next67, %wide.trip.count69
  br i1 %exitcond70.not, label %._crit_edge57.loopexit, label %.lr.ph56, !llvm.loop !228

._crit_edge57.loopexit:                           ; preds = %.lr.ph56, %middle.block
  %.lcssa = phi i32 [ %i.ar, %middle.block ], [ %i.bd, %.lr.ph56 ]
  %i.be = sext i32 %.lcssa to i64
  %i.bf = mul nsw i64 %i.be, 24
  br label %._crit_edge57

._crit_edge57:                                    ; preds = %bb.a, %._crit_edge57.loopexit
  %.0.lcssa = phi i64 [ 0, %bb.a ], [ %i.bf, %._crit_edge57.loopexit ]
  %i.bg = tail call noalias ptr @malloc(i64 noundef %.0.lcssa) #30 ; 14 uses
  %i.bh = icmp eq ptr %i.bg, null
  br i1 %i.bh, label %bb.k, label %bb.d

bb.d:                                             ; preds = %._crit_edge57
  %i.bi = load ptr, ptr %0, align 8, !tbaa !178
  store ptr %i.bi, ptr %5, align 8, !tbaa !154
  %i.bj = tail call i32 @stbtt_GetFontOffsetForIndex_internal(ptr noundef readonly %1, i32 noundef %2)
  %i.bk = call range(i32 0, 2) i32 @stbtt_InitFont_internal(ptr noundef nonnull %5, ptr noundef %1, i32 noundef %i.bj) ; 0 uses
  %i.bl = call i32 @stbtt_PackFontRangesGatherRects(ptr noundef nonnull %0, ptr noundef nonnull %5, ptr noundef %3, i32 noundef %4, ptr noundef nonnull %i.bg) ; 4 uses
  %i.bm = icmp sgt i32 %i.bl, 0
  br i1 %i.bm, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %bb.d
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !183 ; 5 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8 ; 3 uses
  %i.bq = load i32, ptr %i.bo, align 4, !tbaa !162
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 16 ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bo, i64 12 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bo, i64 4
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !164
  %.promoted.i.i = load i32, ptr %i.bp, align 4, !tbaa !165
  %.promoted41.i.i = load i32, ptr %i.bs, align 4, !tbaa !166
  %wide.trip.count.i.i = zext nneg i32 %i.bl to i64
  br label %bb.e

bb.e:                                             ; preds = %bb.j, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.j ] ; 3 uses
  %i.bv = phi i32 [ %.promoted41.i.i, %.lr.ph.i.i ], [ %i.cc, %bb.j ]
  %6 = phi i32 [ %.promoted.i.i, %.lr.ph.i.i ], [ %i.ck, %bb.j ] ; 2 uses
  %i.bw = getelementptr inbounds nuw [24 x i8], ptr %i.bg, i64 %indvars.iv.i.i ; 5 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 12
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !168 ; 2 uses
  %i.bz = add nsw i32 %i.by, %6
  %i.ca = icmp sgt i32 %i.bz, %i.bq
  br i1 %i.ca, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.bp, align 4, !tbaa !165
  %i.cb = load i32, ptr %i.br, align 4, !tbaa !167 ; 2 uses
  store i32 %i.cb, ptr %i.bs, align 4, !tbaa !166
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.cc = phi i32 [ %i.cb, %bb.f ], [ %i.bv, %bb.e ] ; 3 uses
  %i.cd = phi i32 [ 0, %bb.f ], [ %6, %bb.e ]     ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !170
  %i.cg = add nsw i32 %i.cf, %i.cc                ; 3 uses
  %i.ch = icmp sgt i32 %i.cg, %i.bu
  br i1 %i.ch, label %._crit_edge.loopexit.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i32 %i.cd, ptr %i.bw, align 4, !tbaa !171
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bw, i64 4
  store i32 %i.cc, ptr %i.ci, align 4, !tbaa !172
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bw, i64 20
  store i32 1, ptr %i.cj, align 4, !tbaa !173
  %i.ck = add nsw i32 %i.cd, %i.by                ; 2 uses
  store i32 %i.ck, ptr %i.bp, align 4, !tbaa !165
  %i.cl = load i32, ptr %i.br, align 4, !tbaa !167
  %i.cm = icmp sgt i32 %i.cg, %i.cl
  br i1 %i.cm, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 %i.cg, ptr %i.br, align 4, !tbaa !167
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %stbtt_PackFontRangesPackRects.exit, label %bb.e, !llvm.loop !174

._crit_edge.loopexit.i.i:                         ; preds = %bb.g
  %i.cn = trunc nuw nsw i64 %indvars.iv.i.i to i32
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %bb.d
  %.0.lcssa.i.i = phi i32 [ 0, %bb.d ], [ %i.cn, %._crit_edge.loopexit.i.i ] ; 2 uses
  %i.co = icmp slt i32 %.0.lcssa.i.i, %i.bl
  br i1 %i.co, label %.lr.ph44.preheader.i.i, label %stbtt_PackFontRangesPackRects.exit

.lr.ph44.preheader.i.i:                           ; preds = %._crit_edge.i.i
  %i.cp = zext i32 %.0.lcssa.i.i to i64           ; 4 uses
  %wide.trip.count.i = zext i32 %i.bl to i64      ; 3 uses
  %i.cq = sub nsw i64 %wide.trip.count.i, %i.cp
  %xtraiter88 = and i64 %i.cq, 7                  ; 2 uses
  %lcmp.mod89.not = icmp eq i64 %xtraiter88, 0
  br i1 %lcmp.mod89.not, label %.lr.ph44.i.i.prol.loopexit, label %.lr.ph44.i.i.prol

.lr.ph44.i.i.prol:                                ; preds = %.lr.ph44.preheader.i.i, %.lr.ph44.i.i.prol
  %indvars.iv47.i.i.prol = phi i64 [ %indvars.iv.next48.i.i.prol, %.lr.ph44.i.i.prol ], [ %i.cp, %.lr.ph44.preheader.i.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph44.i.i.prol ], [ 0, %.lr.ph44.preheader.i.i ]
  %i.cr = getelementptr inbounds nuw [24 x i8], ptr %i.bg, i64 %indvars.iv47.i.i.prol
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 20
  store i32 0, ptr %i.cs, align 4, !tbaa !173
  %indvars.iv.next48.i.i.prol = add nuw nsw i64 %indvars.iv47.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter88
  br i1 %prol.iter.cmp.not, label %.lr.ph44.i.i.prol.loopexit, label %.lr.ph44.i.i.prol, !llvm.loop !229

.lr.ph44.i.i.prol.loopexit:                       ; preds = %.lr.ph44.i.i.prol, %.lr.ph44.preheader.i.i
  %indvars.iv47.i.i.unr = phi i64 [ %i.cp, %.lr.ph44.preheader.i.i ], [ %indvars.iv.next48.i.i.prol, %.lr.ph44.i.i.prol ]
  %i.ct = sub nsw i64 %i.cp, %wide.trip.count.i
  %i.cu = icmp ugt i64 %i.ct, -8
  br i1 %i.cu, label %stbtt_PackFontRangesPackRects.exit, label %.lr.ph44.i.i

.lr.ph44.i.i:                                     ; preds = %.lr.ph44.i.i.prol.loopexit, %.lr.ph44.i.i
  %indvars.iv47.i.i = phi i64 [ %indvars.iv.next48.i.i.7, %.lr.ph44.i.i ], [ %indvars.iv47.i.i.unr, %.lr.ph44.i.i.prol.loopexit ] ; 9 uses
  %i.cv = getelementptr inbounds nuw [24 x i8], ptr %i.bg, i64 %indvars.iv47.i.i
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 20
  store i32 0, ptr %i.cw, align 4, !tbaa !173
  %i.cx = getelementptr inbounds nuw [24 x i8], ptr %i.bg, i64 %indvars.iv47.i.i
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 44
  store i32 0, ptr %i.cy, align 4, !tbaa !173
  %i.cz = getelementptr inbounds nuw [24 x i8], ptr %i.bg, i64 %indvars.iv47.i.i
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 68
  store i32 0, ptr %i.da, align 4, !tbaa !173
  %i.db = getelementptr inbounds nuw [24 x i8], ptr %i.bg, i64 %indvars.iv47.i.i
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 92
  store i32 0, ptr %i.dc, align 4, !tbaa !173
  %i.dd = getelementptr inbounds nuw [24 x i8], ptr %i.bg, i64 %indvars.iv47.i.i
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 116
  store i32 0, ptr %i.de, align 4, !tbaa !173
  %i.df = getelementptr inbounds nuw [24 x i8], ptr %i.bg, i64 %indvars.iv47.i.i
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 140
  store i32 0, ptr %i.dg, align 4, !tbaa !173
  %i.dh = getelementptr inbounds nuw [24 x i8], ptr %i.bg, i64 %indvars.iv47.i.i
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 164
  store i32 0, ptr %i.di, align 4, !tbaa !173
  %i.dj = getelementptr inbounds nuw [24 x i8], ptr %i.bg, i64 %indvars.iv47.i.i
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 188
  store i32 0, ptr %i.dk, align 4, !tbaa !173
  %indvars.iv.next48.i.i.7 = add nuw nsw i64 %indvars.iv47.i.i, 8 ; 2 uses
  %exitcond.not.i.7 = icmp eq i64 %indvars.iv.next48.i.i.7, %wide.trip.count.i
  br i1 %exitcond.not.i.7, label %stbtt_PackFontRangesPackRects.exit, label %.lr.ph44.i.i, !llvm.loop !177

stbtt_PackFontRangesPackRects.exit:               ; preds = %bb.j, %.lr.ph44.i.i.prol.loopexit, %.lr.ph44.i.i, %._crit_edge.i.i
  %i.dl = call i32 @stbtt_PackFontRangesRenderIntoRects(ptr noundef nonnull %0, ptr noundef nonnull %5, ptr noundef %3, i32 noundef %4, ptr noundef nonnull %i.bg)
  tail call void @free(ptr noundef nonnull %i.bg) #29
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge57, %stbtt_PackFontRangesPackRects.exit
  %.046 = phi i32 [ %i.dl, %stbtt_PackFontRangesPackRects.exit ], [ 0, %._crit_edge57 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  ret i32 %.046
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i32 @stbtt_GetFontOffsetForIndex(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #6 {
bb.a:
  %i.a = tail call i32 @stbtt_GetFontOffsetForIndex_internal(ptr noundef %0, i32 noundef %1)
  ret i32 %i.a
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define range(i32 0, 2) i32 @stbtt_PackFontRange(ptr nofree noundef captures(none) %0, ptr noundef %1, i32 noundef %2, float noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6) local_unnamed_addr #10 {
bb.a:
  %7 = alloca %struct.stbtt_pack_range, align 8   ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #29
  %i.a = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i32 %4, ptr %i.a, align 4, !tbaa !210
  %i.b = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr null, ptr %i.b, align 8, !tbaa !209
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i32 %5, ptr %i.c, align 8, !tbaa !208
  %i.d = getelementptr inbounds nuw i8, ptr %7, i64 24
  store ptr %6, ptr %i.d, align 8, !tbaa !213
  store float %3, ptr %7, align 8, !tbaa !204
  %i.e = call i32 @stbtt_PackFontRanges(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull %7, i32 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  ret i32 %i.e
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @stbtt_GetScaledFontVMetrics(ptr noundef %0, i32 noundef %1, float noundef %2, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %3, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %4, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %5) local_unnamed_addr #3 {
bb.a:
  %6 = alloca %struct.stbtt_fontinfo, align 8     ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #29
  %i.a = tail call i32 @stbtt_GetFontOffsetForIndex_internal(ptr noundef readonly %0, i32 noundef %1)
  %i.b = call range(i32 0, 2) i32 @stbtt_InitFont_internal(ptr noundef nonnull %6, ptr noundef %0, i32 noundef %i.a) ; 0 uses
  %i.c = fcmp ogt float %2, 0.000000e+00
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !25   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 36
  %i.g = load i32, ptr %i.f, align 4, !tbaa !30
  %i.h = sext i32 %i.g to i64                     ; 2 uses
  %i.i = getelementptr inbounds i8, ptr %i.e, i64 %i.h ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.k = load i8, ptr %i.j, align 1, !tbaa !14
  %i.l = zext i8 %i.k to i16
  %i.m = shl nuw i16 %i.l, 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 5
  %i.o = load i8, ptr %i.n, align 1, !tbaa !14
  %i.p = zext i8 %i.o to i16
  %i.q = or disjoint i16 %i.m, %i.p               ; 2 uses
  %i.r = sext i16 %i.q to i32
  %i.s = getelementptr inbounds nuw i8, ptr %i.i, i64 6
  %i.t = load i8, ptr %i.s, align 1, !tbaa !14
  %i.u = zext i8 %i.t to i16
  %i.v = shl nuw i16 %i.u, 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.i, i64 7
  %i.x = load i8, ptr %i.w, align 1, !tbaa !14
  %i.y = zext i8 %i.x to i16
  %i.z = or disjoint i16 %i.v, %i.y               ; 2 uses
  %i.aa = sext i16 %i.z to i32
  %i.ab = sub nsw i32 %i.r, %i.aa
  %i.ac = sitofp i32 %i.ab to float
  %i.ad = fdiv float %2, %i.ac
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.ae = fneg float %2
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !25 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %6, i64 28
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !28
  %i.aj = sext i32 %i.ai to i64
  %i.ak = getelementptr inbounds i8, ptr %i.ag, i64 %i.aj ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 18
  %i.am = load i8, ptr %i.al, align 1, !tbaa !14
  %i.an = zext i8 %i.am to i16
  %i.ao = shl nuw i16 %i.an, 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 19
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !14
  %i.ar = zext i8 %i.aq to i16
  %i.as = or disjoint i16 %i.ao, %i.ar
  %i.at = uitofp i16 %i.as to float
  %i.au = fdiv float %i.ae, %i.at
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %6, i64 36
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !30
  %.phi.trans.insert13 = sext i32 %.pre to i64    ; 2 uses
  %.phi.trans.insert14 = getelementptr inbounds i8, ptr %i.ag, i64 %.phi.trans.insert13 ; 4 uses
  %.phi.trans.insert15 = getelementptr inbounds nuw i8, ptr %.phi.trans.insert14, i64 4
  %.pre16 = load i8, ptr %.phi.trans.insert15, align 1, !tbaa !14
  %.phi.trans.insert17 = getelementptr inbounds nuw i8, ptr %.phi.trans.insert14, i64 5
  %.pre18 = load i8, ptr %.phi.trans.insert17, align 1, !tbaa !14
  %.phi.trans.insert19 = getelementptr inbounds nuw i8, ptr %.phi.trans.insert14, i64 6
  %.pre20 = load i8, ptr %.phi.trans.insert19, align 1, !tbaa !14
  %.phi.trans.insert21 = getelementptr inbounds nuw i8, ptr %.phi.trans.insert14, i64 7
  %.pre22 = load i8, ptr %.phi.trans.insert21, align 1, !tbaa !14
  %.pre23 = zext i8 %.pre16 to i16
  %.pre25 = shl nuw i16 %.pre23, 8
  %.pre27 = zext i8 %.pre18 to i16
  %.pre29 = or disjoint i16 %.pre25, %.pre27
  %.pre31 = zext i8 %.pre20 to i16
  %.pre33 = shl nuw i16 %.pre31, 8
  %.pre35 = zext i8 %.pre22 to i16
  %.pre37 = or disjoint i16 %.pre33, %.pre35
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.pre-phi38 = phi i16 [ %.pre37, %bb.c ], [ %i.z, %bb.b ]
  %.pre-phi30 = phi i16 [ %.pre29, %bb.c ], [ %i.q, %bb.b ]
  %.pre-phi = phi i64 [ %.phi.trans.insert13, %bb.c ], [ %i.h, %bb.b ]
  %i.av = phi ptr [ %i.ag, %bb.c ], [ %i.e, %bb.b ]
end_hunk_1
