Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/nanovg?download=true
inline.NumInlined: 893
inline.NumDeleted: 136
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 41
loop-unroll.NumUnrolled: 56
begin_hunk_0_@nvgResetFallbackFontsId:bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 268
  store i32 0, ptr %i.i, align 4, !tbaa !162
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 272
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1024) %i.j, i8 -1, i64 1024, i1 false), !tbaa !70
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @nvgResetFallbackFonts(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp eq ptr %1, null
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8872
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !236 ; 3 uses
  br i1 %i.a, label %nvgFindFont.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.pre, i64 116
  %i.c = load i32, ptr %i.b, align 4, !tbaa !146  ; 2 uses
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %.lr.ph.i.i, label %nvgFindFont.exit

.lr.ph.i.i:                                       ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %.pre, i64 96
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !144
  %wide.trip.count.i.i = zext nneg i32 %i.c to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.d ] ; 3 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv.i.i
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !155
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 160
  %i.j = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.i, ptr noundef nonnull readonly dereferenceable(1) %1) #41
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %nvgFindFont.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %nvgFindFont.exit, label %bb.c, !llvm.loop !19

nvgFindFont.exit:                                 ; preds = %bb.c, %bb.d, %bb.a, %bb.b
  %.0.i = phi i64 [ -1, %bb.a ], [ -1, %bb.b ], [ %indvars.iv.i.i, %bb.c ], [ -1, %bb.d ]
  %i.l = getelementptr inbounds nuw i8, ptr %.pre, i64 96
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !144
  %i.n = getelementptr inbounds [8 x i8], ptr %i.m, i64 %.0.i
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !155  ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 1376
  store i32 0, ptr %i.p, align 8, !tbaa !161
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 268
  store i32 0, ptr %i.q, align 4, !tbaa !162
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 272
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1024) %i.r, i8 -1, i64 1024, i1 false), !tbaa !70
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @nvgFontSize(ptr nofree noundef captures(none) %0, float noundef %1) local_unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8840
  %i.b = load i32, ptr %i.a, align 8, !tbaa !224
  %i.c = sext i32 %i.b to i64
  %i.d = getelementptr [272 x i8], ptr %0, i64 %i.c
  %i.e = getelementptr i8, ptr %i.d, i64 112
  store float %1, ptr %i.e, align 4, !tbaa !285
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @nvgFontBlur(ptr nofree noundef captures(none) %0, float noundef %1) local_unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8840
  %i.b = load i32, ptr %i.a, align 8, !tbaa !224
  %i.c = sext i32 %i.b to i64
  %i.d = getelementptr [272 x i8], ptr %0, i64 %i.c
  %i.e = getelementptr i8, ptr %i.d, i64 124
  store float %1, ptr %i.e, align 4, !tbaa !286
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @nvgTextLetterSpacing(ptr nofree noundef captures(none) %0, float noundef %1) local_unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8840
  %i.b = load i32, ptr %i.a, align 8, !tbaa !224
  %i.c = sext i32 %i.b to i64
  %i.d = getelementptr [272 x i8], ptr %0, i64 %i.c
  %i.e = getelementptr i8, ptr %i.d, i64 116
  store float %1, ptr %i.e, align 4, !tbaa !287
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @nvgTextLineHeight(ptr nofree noundef captures(none) %0, float noundef %1) local_unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8840
  %i.b = load i32, ptr %i.a, align 8, !tbaa !224
  %i.c = sext i32 %i.b to i64
  %i.d = getelementptr [272 x i8], ptr %0, i64 %i.c
  %i.e = getelementptr i8, ptr %i.d, i64 120
  store float %1, ptr %i.e, align 4, !tbaa !288
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @nvgTextAlign(ptr nofree noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8840
  %i.b = load i32, ptr %i.a, align 8, !tbaa !224
  %i.c = sext i32 %i.b to i64
  %i.d = getelementptr [272 x i8], ptr %0, i64 %i.c
  %i.e = getelementptr i8, ptr %i.d, i64 128
  store i32 %1, ptr %i.e, align 4, !tbaa !233
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @nvgFontFaceId(ptr nofree noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8840
  %i.b = load i32, ptr %i.a, align 8, !tbaa !224
  %i.c = sext i32 %i.b to i64
  %i.d = getelementptr [272 x i8], ptr %0, i64 %i.c
  %i.e = getelementptr i8, ptr %i.d, i64 132
  store i32 %1, ptr %i.e, align 4, !tbaa !234
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @nvgFontFace(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8840
  %i.b = load i32, ptr %i.a, align 8, !tbaa !224
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8872
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !236  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 116
  %i.f = load i32, ptr %i.e, align 4, !tbaa !146  ; 2 uses
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %.lr.ph.i, label %fonsGetFontByName.exit

.lr.ph.i:                                         ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !144
  %wide.trip.count.i = zext nneg i32 %i.f to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.c ] ; 3 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.i
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !155
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 160
  %i.m = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.l, ptr noundef nonnull readonly dereferenceable(1) %1) #41
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %._crit_edge.loopexit.split.loop.exit12.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %fonsGetFontByName.exit, label %bb.b, !llvm.loop !19

._crit_edge.loopexit.split.loop.exit12.i:         ; preds = %bb.b
  %i.o = trunc nuw nsw i64 %indvars.iv.i to i32
  br label %fonsGetFontByName.exit

fonsGetFontByName.exit:                           ; preds = %bb.c, %bb.a, %._crit_edge.loopexit.split.loop.exit12.i
  %.07.i = phi i32 [ -1, %bb.a ], [ %i.o, %._crit_edge.loopexit.split.loop.exit12.i ], [ -1, %bb.c ]
  %i.p = sext i32 %i.b to i64
  %i.q = getelementptr [272 x i8], ptr %0, i64 %i.p
  %i.r = getelementptr i8, ptr %i.q, i64 132
  store i32 %.07.i, ptr %i.r, align 4, !tbaa !234
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local float @nvgText(ptr noundef %0, float noundef %1, float noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #2 {
bb.a:
  %5 = alloca %struct.NVGpaint, align 4           ; 7 uses
  %6 = alloca %struct.NVGpaint, align 4           ; 7 uses
  %7 = alloca %struct.FONStextIter, align 8       ; 11 uses
  %8 = alloca %struct.FONStextIter, align 8       ; 5 uses
  %9 = alloca %struct.FONSquad, align 8           ; 13 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8840 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !224
  %i.c = sext i32 %i.b to i64
  %i.d = getelementptr [272 x i8], ptr %0, i64 %i.c ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #40
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #40
  %i.e = getelementptr i8, ptr %i.d, i64 56       ; 2 uses
  %i.f = getelementptr i8, ptr %i.d, i64 64       ; 2 uses
  %i.g = load <2 x float>, ptr %i.e, align 4, !tbaa !81 ; 4 uses
  %i.h = load <2 x float>, ptr %i.f, align 4, !tbaa !81 ; 4 uses
  %i.i = fmul <2 x float> %i.h, %i.h
  %i.j = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.g, <2 x float> %i.g, <2 x float> %i.i)
  %i.k = tail call <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.j)
  %i.l = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.k)
  %i.m = fmul float %i.l, 5.000000e-01
  %i.n = fdiv float %i.m, f0x3C23D70A
  %i.o = fadd float %i.n, 5.000000e-01
  %i.p = fptosi float %i.o to i32
  %10 = uitofp nneg i32 %i.p to float
  %i.q = fmul nnan float %10, f0x3C23D70A         ; 2 uses
  %i.r = fcmp olt float %i.q, 4.000000e+00
  %i.s = select i1 %i.r, float %i.q, float 4.000000e+00
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8868
  %i.u = load float, ptr %i.t, align 4, !tbaa !242
  %i.v = fmul float %i.u, %i.s                    ; 7 uses
  %i.w = fdiv float 1.000000e+00, %i.v
  %i.x = extractelement <2 x float> %i.g, i64 1
  %i.y = fneg float %i.x
  %i.z = extractelement <2 x float> %i.h, i64 0
  %i.aa = fmul float %i.z, %i.y
  %i.ab = extractelement <2 x float> %i.g, i64 0
  %i.ac = extractelement <2 x float> %i.h, i64 1
  %i.ad = tail call float @llvm.fmuladd.f32(float %i.ab, float %i.ac, float %i.aa)
  %i.ae = fcmp uge float %i.ad, 0.000000e+00
  %i.af = icmp eq ptr %4, null
  br i1 %i.af, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.ag = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #41
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 %i.ag
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.086 = phi ptr [ %i.ah, %bb.b ], [ %4, %bb.a ] ; 2 uses
  %i.ai = getelementptr i8, ptr %i.d, i64 132
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !234 ; 2 uses
  %i.ak = icmp eq i32 %i.aj, -1
  br i1 %i.ak, label %nvg__allocTempVerts.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8872 ; 6 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !236 ; 3 uses
  %i.an = getelementptr i8, ptr %i.d, i64 112
  %i.ao = load float, ptr %i.an, align 4, !tbaa !285
  %i.ap = fmul float %i.v, %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 21100
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !148
  %i.as = sext i32 %i.ar to i64
  %i.at = getelementptr [24 x i8], ptr %i.am, i64 %i.as ; 5 uses
  %i.au = getelementptr i8, ptr %i.at, i64 20604
  store float %i.ap, ptr %i.au, align 4, !tbaa !150
  %i.av = getelementptr i8, ptr %i.d, i64 116
  %i.aw = load float, ptr %i.av, align 4, !tbaa !287
  %i.ax = fmul float %i.v, %i.aw
  %i.ay = getelementptr i8, ptr %i.at, i64 20616
  store float %i.ax, ptr %i.ay, align 4, !tbaa !163
  %i.az = getelementptr i8, ptr %i.d, i64 124
  %i.ba = load float, ptr %i.az, align 4, !tbaa !286
  %i.bb = fmul float %i.v, %i.ba
  %i.bc = getelementptr i8, ptr %i.at, i64 20612
  store float %i.bb, ptr %i.bc, align 4, !tbaa !164
  %i.bd = getelementptr i8, ptr %i.d, i64 128
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !233
  %i.bf = getelementptr i8, ptr %i.at, i64 20600
  store i32 %i.be, ptr %i.bf, align 4, !tbaa !153
  %i.bg = getelementptr i8, ptr %i.at, i64 20596
  store i32 %i.aj, ptr %i.bg, align 4, !tbaa !152
  %i.bh = ptrtoint ptr %.086 to i64
  %i.bi = ptrtoint ptr %3 to i64
  %i.bj = sub i64 %i.bh, %i.bi
  %i.bk = trunc i64 %i.bj to i32
  %i.bl = tail call range(i32 1, -2147483648) i32 @llvm.smax.i32(i32 %i.bk, i32 2)
  %i.bm = mul nuw nsw i32 %i.bl, 6                ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 8848 ; 2 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !222 ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 44
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !223
  %i.br = icmp sgt i32 %i.bm, %i.bq
  br i1 %i.br, label %bb.e, label %nvg__allocTempVerts.exit

bb.e:                                             ; preds = %bb.d
  %i.bs = add nuw nsw i32 %i.bm, 254
  %i.bt = and i32 %i.bs, 2147483392               ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bo, i64 32
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !221
  %i.bw = zext nneg i32 %i.bt to i64
  %i.bx = shl nuw nsw i64 %i.bw, 4
  %i.by = tail call ptr @realloc(ptr noundef %i.bv, i64 noundef %i.bx) #43 ; 3 uses
  %i.bz = icmp eq ptr %i.by, null
  br i1 %i.bz, label %nvg__allocTempVerts.exit.thread, label %nvg__allocTempVerts.exit.thread98

nvg__allocTempVerts.exit.thread98:                ; preds = %bb.e
  %i.ca = load ptr, ptr %i.bn, align 8, !tbaa !222 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 32
  store ptr %i.by, ptr %i.cb, align 8, !tbaa !221
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 44
  store i32 %i.bt, ptr %i.cc, align 4, !tbaa !223
  %.pre = load ptr, ptr %i.al, align 8, !tbaa !236
  br label %bb.f

nvg__allocTempVerts.exit:                         ; preds = %bb.d
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.bo, i64 32
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !221 ; 2 uses
  %i.cd = icmp eq ptr %.pre.i, null
  br i1 %i.cd, label %nvg__allocTempVerts.exit.thread, label %bb.f

bb.f:                                             ; preds = %nvg__allocTempVerts.exit.thread98, %nvg__allocTempVerts.exit
  %i.ce = phi ptr [ %.pre, %nvg__allocTempVerts.exit.thread98 ], [ %i.am, %nvg__allocTempVerts.exit ]
  %.1.i100 = phi ptr [ %i.by, %nvg__allocTempVerts.exit.thread98 ], [ %.pre.i, %nvg__allocTempVerts.exit ] ; 3 uses
  %i.cf = fmul float %1, %i.v
  %i.cg = fmul float %2, %i.v
  %i.ch = call i32 @fonsTextIterInit(ptr noundef %i.ce, ptr noundef nonnull %7, float noundef %i.cf, float noundef %i.cg, ptr noundef %3, ptr noundef nonnull %.086, i32 noundef 2) ; 0 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %8, ptr noundef nonnull align 8 dereferenceable(80) %7, i64 80, i1 false), !tbaa.struct !289
  %i.ci = load ptr, ptr %i.al, align 8, !tbaa !236
  %i.cj = call i32 @fonsTextIterNext(ptr noundef %i.ci, ptr noundef nonnull %7, ptr noundef nonnull %9)
  %.not103 = icmp eq i32 %i.cj, 0
  br i1 %.not103, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f
  %i.ck = getelementptr inbounds nuw i8, ptr %7, i64 40 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 8880
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 8896
  %i.cn = getelementptr inbounds nuw i8, ptr %6, i64 72
  %i.co = getelementptr inbounds nuw i8, ptr %6, i64 52 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %6, i64 68 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 8864
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 8900 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 8912 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %9, i64 4 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %9, i64 20 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %9, i64 12 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %9, i64 28 ; 2 uses
  %i.cy = getelementptr i8, ptr %i.d, i64 72
  %i.cz = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.da = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.db = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.dc = insertelement <2 x float> poison, float %i.w, i64 0
  %i.dd = shufflevector <2 x float> %i.dc, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.p
  %.085104 = phi i32 [ 0, %.lr.ph ], [ %.4, %bb.p ] ; 4 uses
  %i.de = load i32, ptr %i.ck, align 8, !tbaa !199
  %i.df = icmp eq i32 %i.de, -1
  br i1 %i.df, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g
  %.not89 = icmp eq i32 %.085104, 0
  br i1 %.not89, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.dg = load i32, ptr %i.a, align 8, !tbaa !224
  %i.dh = sext i32 %i.dg to i64
  %i.di = getelementptr [272 x i8], ptr %0, i64 %i.dh ; 5 uses
  %i.dj = getelementptr i8, ptr %i.di, i64 -136
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #40
  %i.dk = getelementptr i8, ptr %i.di, i64 -116
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(76) %6, ptr noundef nonnull align 4 dereferenceable(76) %i.dk, i64 72, i1 false), !tbaa.struct !249
  %i.dl = load i32, ptr %i.cm, align 8, !tbaa !238
  %i.dm = sext i32 %i.dl to i64
  %i.dn = getelementptr inbounds [4 x i8], ptr %i.cl, i64 %i.dm
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !70
  store i32 %i.do, ptr %i.cn, align 4, !tbaa !254
  %i.dp = getelementptr i8, ptr %i.di, i64 52
  %i.dq = load float, ptr %i.dp, align 4, !tbaa !248 ; 2 uses
  %i.dr = load float, ptr %i.co, align 4, !tbaa !38
  %i.ds = fmul float %i.dq, %i.dr
  store float %i.ds, ptr %i.co, align 4, !tbaa !38
  %i.dt = load float, ptr %i.cp, align 4, !tbaa !38
  %i.du = fmul float %i.dq, %i.dt
  store float %i.du, ptr %i.cp, align 4, !tbaa !38
  %i.dv = load ptr, ptr %i.cq, align 8, !tbaa !493
  %i.dw = load ptr, ptr %0, align 8, !tbaa !235
  %i.dx = getelementptr i8, ptr %i.di, i64 80
  %i.dy = load float, ptr %i.cr, align 8, !tbaa !241
  %i.dz = load i64, ptr %i.dj, align 4
  %i.ea = getelementptr i8, ptr %i.di, i64 -128
  %i.eb = load i64, ptr %i.ea, align 4
  call void %i.dv(ptr noundef %i.dw, ptr noundef nonnull %6, i64 %i.dz, i64 %i.eb, ptr noundef nonnull %i.dx, ptr noundef nonnull %.1.i100, i32 noundef %.085104, float noundef %i.dy) #40, !inline_history !492
  %i.ec = load i32, ptr %i.cs, align 4, !tbaa !266
  %i.ed = add nsw i32 %i.ec, 1
  store i32 %i.ed, ptr %i.cs, align 4, !tbaa !266
  %i.ee = sdiv i32 %.085104, 3
  %i.ef = load i32, ptr %i.ct, align 8, !tbaa !494
  %i.eg = add nsw i32 %i.ef, %i.ee
  store i32 %i.eg, ptr %i.ct, align 8, !tbaa !494
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #40
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.eh = call fastcc i32 @nvg__allocTextAtlas(ptr noundef nonnull %0)
  %.not90 = icmp eq i32 %i.eh, 0
  br i1 %.not90, label %.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %7, ptr noundef nonnull align 8 dereferenceable(80) %8, i64 80, i1 false), !tbaa.struct !289
  %i.ei = load ptr, ptr %i.al, align 8, !tbaa !236
  %i.ej = call i32 @fonsTextIterNext(ptr noundef %i.ei, ptr noundef nonnull %7, ptr noundef nonnull %9) ; 0 uses
  %i.ek = load i32, ptr %i.ck, align 8, !tbaa !199
  %i.el = icmp eq i32 %i.ek, -1
  br i1 %i.el, label %.thread, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.g
  %.2 = phi i32 [ 0, %bb.k ], [ %.085104, %bb.g ] ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %8, ptr noundef nonnull align 8 dereferenceable(80) %7, i64 80, i1 false), !tbaa.struct !289
  br i1 %i.ae, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
end_hunk_0
begin_hunk_1_@nvgText:bb.a
  %i.id = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !493
  %i.if = load ptr, ptr %0, align 8, !tbaa !235
  %i.ig = getelementptr i8, ptr %i.hl, i64 80
  %i.ih = getelementptr inbounds nuw i8, ptr %0, i64 8864
  %i.ii = load float, ptr %i.ih, align 8, !tbaa !241
  %i.ij = load i64, ptr %i.hm, align 4
  %i.ik = getelementptr i8, ptr %i.hl, i64 -128
  %i.il = load i64, ptr %i.ik, align 4
  call void %i.ie(ptr noundef %i.if, ptr noundef nonnull %5, i64 %i.ij, i64 %i.il, ptr noundef nonnull %i.ig, ptr noundef nonnull %.1.i100, i32 noundef %.5, float noundef %i.ii) #40, !inline_history !492
  %i.im = getelementptr inbounds nuw i8, ptr %0, i64 8900 ; 2 uses
  %i.in = load i32, ptr %i.im, align 4, !tbaa !266
  %i.io = add nsw i32 %i.in, 1
  store i32 %i.io, ptr %i.im, align 4, !tbaa !266
  %i.ip = sdiv i32 %.5, 3
  %i.iq = getelementptr inbounds nuw i8, ptr %0, i64 8912 ; 2 uses
  %i.ir = load i32, ptr %i.iq, align 8, !tbaa !494
  %i.is = add nsw i32 %i.ir, %i.ip
  store i32 %i.is, ptr %i.iq, align 8, !tbaa !494
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #40
  %i.it = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.iu = load float, ptr %i.it, align 8, !tbaa !192
  %i.iv = fdiv float %i.iu, %i.v
  br label %nvg__allocTempVerts.exit.thread

nvg__allocTempVerts.exit.thread:                  ; preds = %bb.e, %nvg__allocTempVerts.exit, %bb.c, %nvg__flushTextTexture.exit
  %.0 = phi float [ %i.iv, %nvg__flushTextTexture.exit ], [ %1, %bb.c ], [ %1, %nvg__allocTempVerts.exit ], [ %1, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #40
  ret float %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @nvg__allocTextAtlas(ptr nofree noundef captures(none) %0) unnamed_addr #2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 8 uses
  %i.b = alloca i32, align 4                      ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #40
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8872 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !236  ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 80 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !70   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 88 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !70   ; 2 uses
  %i.i = icmp slt i32 %i.f, %i.h
  br i1 %i.i, label %bb.b, label %nvg__flushTextTexture.exit

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 84
  %i.k = load i32, ptr %i.j, align 4, !tbaa !70   ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 92 ; 2 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !70   ; 2 uses
  %i.n = icmp slt i32 %i.k, %i.m
  br i1 %i.n, label %bb.c, label %nvg__flushTextTexture.exit

bb.c:                                             ; preds = %bb.b
  %i.o = load <2 x i32>, ptr %i.d, align 8, !tbaa !70
  store <2 x i32> %i.o, ptr %i.e, align 8, !tbaa !70
  store i32 0, ptr %i.g, align 8, !tbaa !70
  store i32 0, ptr %i.l, align 4, !tbaa !70
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8880
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8896
  %i.r = load i32, ptr %i.q, align 8, !tbaa !238
  %i.s = sext i32 %i.r to i64
  %i.t = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.s
  %i.u = load i32, ptr %i.t, align 4, !tbaa !70   ; 2 uses
  %.not12.i = icmp eq i32 %i.u, 0
  br i1 %.not12.i, label %nvg__flushTextTexture.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !147
  %i.x = sub nsw i32 %i.h, %i.f
  %i.y = sub nsw i32 %i.m, %i.k
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !251
  %i.ab = load ptr, ptr %0, align 8, !tbaa !235
  %i.ac = tail call i32 %i.aa(ptr noundef %i.ab, i32 noundef %i.u, i32 noundef %i.f, i32 noundef %i.k, i32 noundef %i.x, i32 noundef %i.y, ptr noundef %i.w) #40, !inline_history !22 ; 0 uses
  br label %nvg__flushTextTexture.exit

nvg__flushTextTexture.exit:                       ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8896 ; 4 uses
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !238 ; 2 uses
  %i.af = icmp sgt i32 %i.ae, 2
  br i1 %i.af, label %bb.n, label %bb.e

bb.e:                                             ; preds = %nvg__flushTextTexture.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8880 ; 2 uses
  %i.ah = sext i32 %i.ae to i64
  %i.ai = getelementptr [4 x i8], ptr %i.ag, i64 %i.ah ; 2 uses
  %i.aj = getelementptr i8, ptr %i.ai, i64 4
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !70 ; 2 uses
  %.not = icmp eq i32 %i.ak, 0
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !243
  %i.an = load ptr, ptr %0, align 8, !tbaa !235
  %i.ao = call i32 %i.am(ptr noundef %i.an, i32 noundef %i.ak, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #40, !inline_history !244 ; 0 uses
  br label %bb.m

bb.g:                                             ; preds = %bb.e
  %i.ap = load i32, ptr %i.ai, align 4, !tbaa !70
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !243
  %i.as = load ptr, ptr %0, align 8, !tbaa !235
  %i.at = call i32 %i.ar(ptr noundef %i.as, i32 noundef %i.ap, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #40, !inline_history !244 ; 0 uses
  %i.au = load i32, ptr %i.a, align 4, !tbaa !70  ; 3 uses
  %i.av = load i32, ptr %i.b, align 4, !tbaa !70  ; 3 uses
  %i.aw = icmp sgt i32 %i.au, %i.av
  br i1 %i.aw, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ax = shl nsw i32 %i.av, 1                    ; 2 uses
  store i32 %i.ax, ptr %i.b, align 4, !tbaa !70
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.ay = shl nsw i32 %i.au, 1                    ; 2 uses
  store i32 %i.ay, ptr %i.a, align 4, !tbaa !70
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.az = phi i32 [ %i.av, %bb.i ], [ %i.ax, %bb.h ] ; 2 uses
  %i.ba = phi i32 [ %i.ay, %bb.i ], [ %i.au, %bb.h ] ; 2 uses
  %i.bb = icmp sgt i32 %i.ba, 2048
  %i.bc = icmp sgt i32 %i.az, 2048
  %or.cond = select i1 %i.bb, i1 true, i1 %i.bc
  br i1 %or.cond, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 2048, ptr %i.b, align 4, !tbaa !70
  store i32 2048, ptr %i.a, align 4, !tbaa !70
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %i.bd = phi i32 [ %i.az, %bb.j ], [ 2048, %bb.k ]
  %i.be = phi i32 [ %i.ba, %bb.j ], [ 2048, %bb.k ]
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !237
  %i.bh = load ptr, ptr %0, align 8, !tbaa !235
  %i.bi = call i32 %i.bg(ptr noundef %i.bh, i32 noundef 1, i32 noundef %i.be, i32 noundef %i.bd, i32 noundef 0, ptr noundef null) #40
  %i.bj = load i32, ptr %i.ad, align 8, !tbaa !238
  %i.bk = sext i32 %i.bj to i64
  %i.bl = getelementptr [4 x i8], ptr %i.ag, i64 %i.bk
  %i.bm = getelementptr i8, ptr %i.bl, i64 4
  store i32 %i.bi, ptr %i.bm, align 4, !tbaa !70
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.f
  %i.bn = load i32, ptr %i.ad, align 8, !tbaa !238
  %i.bo = add nsw i32 %i.bn, 1
  store i32 %i.bo, ptr %i.ad, align 8, !tbaa !238
  %i.bp = load ptr, ptr %i.c, align 8, !tbaa !236
  %i.bq = load i32, ptr %i.a, align 4, !tbaa !70
  %i.br = load i32, ptr %i.b, align 4, !tbaa !70
  %i.bs = call i32 @fonsResetAtlas(ptr noundef %i.bp, i32 noundef %i.bq, i32 noundef %i.br) ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %nvg__flushTextTexture.exit, %bb.m
  %.0 = phi i32 [ 1, %bb.m ], [ 0, %nvg__flushTextTexture.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local void @nvgTextBox(ptr noundef %0, float noundef %1, float noundef %2, float noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #2 {
bb.a:
  %6 = alloca [2 x %struct.NVGtextRow], align 16  ; 14 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8840
  %i.b = load i32, ptr %i.a, align 8, !tbaa !224
  %i.c = sext i32 %i.b to i64
  %i.d = getelementptr [272 x i8], ptr %0, i64 %i.c ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #40
  %i.e = getelementptr i8, ptr %i.d, i64 128      ; 3 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !233
  %.fr68 = freeze i32 %i.f                        ; 6 uses
  %i.g = getelementptr i8, ptr %i.d, i64 132
  %i.h = load i32, ptr %i.g, align 4, !tbaa !234  ; 5 uses
  %i.i = icmp eq i32 %i.h, -1
  br i1 %i.i, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = and i32 %.fr68, 120
  %i.k = getelementptr i8, ptr %i.d, i64 56
  %i.l = getelementptr i8, ptr %i.d, i64 64
  %i.m = load <2 x float>, ptr %i.k, align 4, !tbaa !81 ; 2 uses
  %i.n = load <2 x float>, ptr %i.l, align 4, !tbaa !81 ; 2 uses
  %i.o = fmul <2 x float> %i.n, %i.n
  %i.p = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.m, <2 x float> %i.m, <2 x float> %i.o)
  %i.q = tail call <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.p)
  %i.r = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.q)
  %i.s = fmul float %i.r, 5.000000e-01
  %i.t = fdiv float %i.s, f0x3C23D70A
  %i.u = fadd float %i.t, 5.000000e-01
  %i.v = fptosi float %i.u to i32
  %7 = uitofp nneg i32 %i.v to float
  %i.w = fmul nnan float %7, f0x3C23D70A          ; 2 uses
  %i.x = fcmp olt float %i.w, 4.000000e+00
  %i.y = select i1 %i.x, float %i.w, float 4.000000e+00
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8868
  %i.aa = load float, ptr %i.z, align 4, !tbaa !242
  %i.ab = fmul float %i.aa, %i.y                  ; 4 uses
  %i.ac = fdiv float 1.000000e+00, %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8872
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !236 ; 4 uses
  %i.af = getelementptr i8, ptr %i.d, i64 112
  %i.ag = load float, ptr %i.af, align 4, !tbaa !285
  %i.ah = fmul float %i.ab, %i.ag                 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 21100
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !148
  %i.ak = sext i32 %i.aj to i64
  %i.al = getelementptr [24 x i8], ptr %i.ae, i64 %i.ak ; 5 uses
  %i.am = getelementptr i8, ptr %i.al, i64 20604
  store float %i.ah, ptr %i.am, align 4, !tbaa !150
  %i.an = getelementptr i8, ptr %i.d, i64 116
  %i.ao = load float, ptr %i.an, align 4, !tbaa !287
  %i.ap = fmul float %i.ab, %i.ao
  %i.aq = getelementptr i8, ptr %i.al, i64 20616
  store float %i.ap, ptr %i.aq, align 4, !tbaa !163
  %i.ar = getelementptr i8, ptr %i.d, i64 124
  %i.as = load float, ptr %i.ar, align 4, !tbaa !286
  %i.at = fmul float %i.ab, %i.as
  %i.au = getelementptr i8, ptr %i.al, i64 20612
  store float %i.at, ptr %i.au, align 4, !tbaa !164
  %i.av = getelementptr i8, ptr %i.al, i64 20600
  store i32 %.fr68, ptr %i.av, align 4, !tbaa !153
  %i.aw = getelementptr i8, ptr %i.al, i64 20596
  store i32 %i.h, ptr %i.aw, align 4, !tbaa !152
  %i.ax = icmp slt i32 %i.h, 0
  br i1 %i.ax, label %nvgTextMetrics.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ae, i64 116
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !146
  %.not.i.i = icmp slt i32 %i.h, %i.az
  br i1 %.not.i.i, label %bb.d, label %nvgTextMetrics.exit

bb.d:                                             ; preds = %bb.c
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ae, i64 96
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !144
  %i.bc = zext nneg i32 %i.h to i64
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.bc
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !155 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 224
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !160
  %i.bh = icmp eq ptr %i.bg, null
  br i1 %i.bh, label %nvgTextMetrics.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bi = fmul float %i.ah, 1.000000e+01
  %i.bj = fptosi float %i.bi to i16
  %i.bk = getelementptr inbounds nuw i8, ptr %i.be, i64 248
  %i.bl = load float, ptr %i.bk, align 8, !tbaa !166
  %i.bm = sitofp i16 %i.bj to float
  %i.bn = fmul float %i.bl, %i.bm
  %i.bo = fdiv float %i.bn, 1.000000e+01
  br label %nvgTextMetrics.exit

nvgTextMetrics.exit:                              ; preds = %bb.b, %bb.c, %bb.d, %bb.e
  %.049 = phi float [ 0.000000e+00, %bb.b ], [ 0.000000e+00, %bb.d ], [ %i.bo, %bb.e ], [ 0.000000e+00, %bb.c ]
  %i.bp = fmul float %i.ac, %.049                 ; 3 uses
  %i.bq = or disjoint i32 %i.j, 1
  store i32 %i.bq, ptr %i.e, align 4, !tbaa !233
  %i.br = call i32 @nvgTextBreakLines(ptr noundef nonnull %0, ptr noundef %4, ptr noundef %5, float noundef %3, ptr noundef nonnull %6, i32 noundef 2) ; 5 uses
  %.not55 = icmp eq i32 %i.br, 0
  br i1 %.not55, label %._crit_edge57, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %nvgTextMetrics.exit
  %i.bs = and i32 %.fr68, 1
  %.not45 = icmp eq i32 %i.bs, 0
  %i.bt = tail call float @llvm.fmuladd.f32(float %3, float 5.000000e-01, float %1)
  %i.bu = and i32 %.fr68, 4
  %.not47 = icmp eq i32 %i.bu, 0
  %i.bv = fadd float %1, %3
  %i.bw = getelementptr i8, ptr %i.d, i64 120     ; 3 uses
  br i1 %.not45, label %.preheader.lr.ph.split.us, label %.preheader

.preheader.lr.ph.split.us:                        ; preds = %.preheader.lr.ph
  %i.bx = and i32 %.fr68, 2
  %.not46 = icmp eq i32 %i.bx, 0
  br i1 %.not46, label %.preheader.lr.ph.split.us.split.us, label %.preheader.us

.preheader.lr.ph.split.us.split.us:               ; preds = %.preheader.lr.ph.split.us
  br i1 %.not47, label %.preheader.us.us.us, label %.preheader.us.us

.preheader.us.us.us:                              ; preds = %.preheader.lr.ph.split.us.split.us, %.preheader.us.us.us
  %i.by = phi i32 [ %i.cd, %.preheader.us.us.us ], [ %i.br, %.preheader.lr.ph.split.us.split.us ]
  %i.bz = sext i32 %i.by to i64
  %i.ca = getelementptr [40 x i8], ptr %6, i64 %i.bz
  %i.cb = getelementptr i8, ptr %i.ca, i64 -24
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !291
  %i.cd = call i32 @nvgTextBreakLines(ptr noundef nonnull %0, ptr noundef %i.cc, ptr noundef %5, float noundef %3, ptr noundef nonnull %6, i32 noundef 2) ; 2 uses
  %.not.us.us.us = icmp eq i32 %i.cd, 0
  br i1 %.not.us.us.us, label %._crit_edge57, label %.preheader.us.us.us, !llvm.loop !495

.preheader.us.us:                                 ; preds = %.preheader.lr.ph.split.us.split.us, %._crit_edge.split.us.split.us.split.us66.us
  %i.ce = phi i32 [ %i.cu, %._crit_edge.split.us.split.us.split.us66.us ], [ %i.br, %.preheader.lr.ph.split.us.split.us ] ; 3 uses
  %.04256.us.us = phi float [ %.1.lcssa.us.us, %._crit_edge.split.us.split.us.split.us66.us ], [ %2, %.preheader.lr.ph.split.us.split.us ] ; 2 uses
  %i.cf = icmp sgt i32 %i.ce, 0
  br i1 %i.cf, label %.lr.ph.us.us.preheader, label %._crit_edge.split.us.split.us.split.us66.us

.lr.ph.us.us.preheader:                           ; preds = %.preheader.us.us
  %wide.trip.count84 = zext nneg i32 %i.ce to i64
  br label %.lr.ph.us.us

.lr.ph.us.us:                                     ; preds = %.lr.ph.us.us.preheader, %.lr.ph.us.us
  %indvars.iv81 = phi i64 [ 0, %.lr.ph.us.us.preheader ], [ %indvars.iv.next82, %.lr.ph.us.us ] ; 2 uses
  %.151.us.us.us65.us = phi float [ %.04256.us.us, %.lr.ph.us.us.preheader ], [ %i.cp, %.lr.ph.us.us ] ; 2 uses
  %i.cg = getelementptr inbounds nuw [40 x i8], ptr %6, i64 %indvars.iv81 ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 24
  %i.ci = load float, ptr %i.ch, align 8, !tbaa !292
  %i.cj = fsub float %i.bv, %i.ci
  %i.ck = load ptr, ptr %i.cg, align 8, !tbaa !293
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !294
  %i.cn = tail call float @nvgText(ptr noundef nonnull %0, float noundef %i.cj, float noundef %.151.us.us.us65.us, ptr noundef %i.ck, ptr noundef %i.cm) ; 0 uses
  %i.co = load float, ptr %i.bw, align 4, !tbaa !288
  %i.cp = tail call float @llvm.fmuladd.f32(float %i.bp, float %i.co, float %.151.us.us.us65.us) ; 2 uses
  %indvars.iv.next82 = add nuw nsw i64 %indvars.iv81, 1 ; 2 uses
  %exitcond85.not = icmp eq i64 %indvars.iv.next82, %wide.trip.count84
  br i1 %exitcond85.not, label %._crit_edge.split.us.split.us.split.us66.us, label %.lr.ph.us.us, !llvm.loop !496

._crit_edge.split.us.split.us.split.us66.us:      ; preds = %.lr.ph.us.us, %.preheader.us.us
  %.1.lcssa.us.us = phi float [ %.04256.us.us, %.preheader.us.us ], [ %i.cp, %.lr.ph.us.us ]
  %i.cq = sext i32 %i.ce to i64
  %i.cr = getelementptr [40 x i8], ptr %6, i64 %i.cq
  %i.cs = getelementptr i8, ptr %i.cr, i64 -24
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !291
  %i.cu = call i32 @nvgTextBreakLines(ptr noundef nonnull %0, ptr noundef %i.ct, ptr noundef %5, float noundef %3, ptr noundef nonnull %6, i32 noundef 2) ; 2 uses
  %.not.us.us = icmp eq i32 %i.cu, 0
  br i1 %.not.us.us, label %._crit_edge57, label %.preheader.us.us, !llvm.loop !495

.preheader.us:                                    ; preds = %.preheader.lr.ph.split.us, %._crit_edge.split.us.split.us61
  %i.cv = phi i32 [ %i.dm, %._crit_edge.split.us.split.us61 ], [ %i.br, %.preheader.lr.ph.split.us ] ; 3 uses
  %.04256.us = phi float [ %.1.lcssa.us, %._crit_edge.split.us.split.us61 ], [ %2, %.preheader.lr.ph.split.us ] ; 2 uses
  %i.cw = icmp sgt i32 %i.cv, 0
  br i1 %i.cw, label %.lr.ph.us.preheader, label %._crit_edge.split.us.split.us61

.lr.ph.us.preheader:                              ; preds = %.preheader.us
  %wide.trip.count79 = zext nneg i32 %i.cv to i64
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %.lr.ph.us
  %indvars.iv76 = phi i64 [ 0, %.lr.ph.us.preheader ], [ %indvars.iv.next77, %.lr.ph.us ] ; 2 uses
  %.151.us.us60 = phi float [ %.04256.us, %.lr.ph.us.preheader ], [ %i.dh, %.lr.ph.us ] ; 2 uses
  %i.cx = getelementptr inbounds nuw [40 x i8], ptr %6, i64 %indvars.iv76 ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 24
  %i.cz = load float, ptr %i.cy, align 8, !tbaa !292
  %i.da = fneg float %i.cz
  %i.db = tail call float @llvm.fmuladd.f32(float %i.da, float 5.000000e-01, float %i.bt)
  %i.dc = load ptr, ptr %i.cx, align 8, !tbaa !293
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !294
  %i.df = tail call float @nvgText(ptr noundef nonnull %0, float noundef %i.db, float noundef %.151.us.us60, ptr noundef %i.dc, ptr noundef %i.de) ; 0 uses
  %i.dg = load float, ptr %i.bw, align 4, !tbaa !288
  %i.dh = tail call float @llvm.fmuladd.f32(float %i.bp, float %i.dg, float %.151.us.us60) ; 2 uses
  %indvars.iv.next77 = add nuw nsw i64 %indvars.iv76, 1 ; 2 uses
  %exitcond80.not = icmp eq i64 %indvars.iv.next77, %wide.trip.count79
  br i1 %exitcond80.not, label %._crit_edge.split.us.split.us61, label %.lr.ph.us, !llvm.loop !496

._crit_edge.split.us.split.us61:                  ; preds = %.lr.ph.us, %.preheader.us
  %.1.lcssa.us = phi float [ %.04256.us, %.preheader.us ], [ %i.dh, %.lr.ph.us ]
  %i.di = sext i32 %i.cv to i64
  %i.dj = getelementptr [40 x i8], ptr %6, i64 %i.di
  %i.dk = getelementptr i8, ptr %i.dj, i64 -24
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !291
  %i.dm = call i32 @nvgTextBreakLines(ptr noundef nonnull %0, ptr noundef %i.dl, ptr noundef %5, float noundef %3, ptr noundef nonnull %6, i32 noundef 2) ; 2 uses
  %.not.us = icmp eq i32 %i.dm, 0
  br i1 %.not.us, label %._crit_edge57, label %.preheader.us, !llvm.loop !495

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge.split
  %i.dn = phi i32 [ %i.ea, %._crit_edge.split ], [ %i.br, %.preheader.lr.ph ] ; 3 uses
  %.04256 = phi float [ %.1.lcssa, %._crit_edge.split ], [ %2, %.preheader.lr.ph ] ; 2 uses
  %i.do = icmp sgt i32 %i.dn, 0
  br i1 %i.do, label %.lr.ph.preheader, label %._crit_edge.split

.lr.ph.preheader:                                 ; preds = %.preheader
  %wide.trip.count = zext nneg i32 %i.dn to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %.151 = phi float [ %.04256, %.lr.ph.preheader ], [ %i.dv, %.lr.ph ] ; 2 uses
  %i.dp = getelementptr inbounds nuw [40 x i8], ptr %6, i64 %indvars.iv ; 2 uses
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !293
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !294
  %i.dt = tail call float @nvgText(ptr noundef nonnull %0, float noundef %1, float noundef %.151, ptr noundef %i.dq, ptr noundef %i.ds) ; 0 uses
  %i.du = load float, ptr %i.bw, align 4, !tbaa !288
  %i.dv = tail call float @llvm.fmuladd.f32(float %i.bp, float %i.du, float %.151) ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.split, label %.lr.ph, !llvm.loop !496

._crit_edge.split:                                ; preds = %.lr.ph, %.preheader
  %.1.lcssa = phi float [ %.04256, %.preheader ], [ %i.dv, %.lr.ph ]
  %i.dw = sext i32 %i.dn to i64
  %i.dx = getelementptr [40 x i8], ptr %6, i64 %i.dw
  %i.dy = getelementptr i8, ptr %i.dx, i64 -24
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !291
  %i.ea = call i32 @nvgTextBreakLines(ptr noundef nonnull %0, ptr noundef %i.dz, ptr noundef %5, float noundef %3, ptr noundef nonnull %6, i32 noundef 2) ; 2 uses
  %.not = icmp eq i32 %i.ea, 0
  br i1 %.not, label %._crit_edge57, label %.preheader, !llvm.loop !495

._crit_edge57:                                    ; preds = %._crit_edge.split, %._crit_edge.split.us.split.us61, %._crit_edge.split.us.split.us.split.us66.us, %.preheader.us.us.us, %nvgTextMetrics.exit
  store i32 %.fr68, ptr %i.e, align 4, !tbaa !233
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %._crit_edge57
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #40
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @nvgTextMetrics(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(address_is_null) %1, ptr nofree noundef captures(address_is_null) %2, ptr nofree noundef captures(address_is_null) %3) local_unnamed_addr #17 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8840
  %i.b = load i32, ptr %i.a, align 8, !tbaa !224
  %i.c = sext i32 %i.b to i64
  %i.d = getelementptr [272 x i8], ptr %0, i64 %i.c ; 7 uses
  %i.e = getelementptr i8, ptr %i.d, i64 56
  %i.f = getelementptr i8, ptr %i.d, i64 64
  %i.g = load <2 x float>, ptr %i.e, align 4, !tbaa !81 ; 2 uses
  %i.h = load <2 x float>, ptr %i.f, align 4, !tbaa !81 ; 2 uses
  %i.i = fmul <2 x float> %i.h, %i.h
  %i.j = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.g, <2 x float> %i.g, <2 x float> %i.i)
  %i.k = tail call <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.j)
  %i.l = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.k)
  %i.m = fmul float %i.l, 5.000000e-01
  %i.n = fdiv float %i.m, f0x3C23D70A
  %i.o = fadd float %i.n, 5.000000e-01
  %i.p = fptosi float %i.o to i32
  %4 = uitofp nneg i32 %i.p to float
  %i.q = fmul nnan float %4, f0x3C23D70A          ; 2 uses
  %i.r = fcmp olt float %i.q, 4.000000e+00
  %i.s = select i1 %i.r, float %i.q, float 4.000000e+00
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8868
  %i.u = load float, ptr %i.t, align 4, !tbaa !242
  %i.v = fmul float %i.u, %i.s                    ; 4 uses
  %i.w = fdiv float 1.000000e+00, %i.v            ; 3 uses
  %i.x = getelementptr i8, ptr %i.d, i64 132
  %i.y = load i32, ptr %i.x, align 4, !tbaa !234  ; 5 uses
  %i.z = icmp eq i32 %i.y, -1
  br i1 %i.z, label %bb.p, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8872
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !236 ; 4 uses
  %i.ac = getelementptr i8, ptr %i.d, i64 112
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !285
  %i.ae = fmul float %i.v, %i.ad                  ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 21100
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !148
  %i.ah = sext i32 %i.ag to i64
  %i.ai = getelementptr [24 x i8], ptr %i.ab, i64 %i.ah ; 5 uses
  %i.aj = getelementptr i8, ptr %i.ai, i64 20604
  store float %i.ae, ptr %i.aj, align 4, !tbaa !150
  %i.ak = getelementptr i8, ptr %i.d, i64 116
  %i.al = load float, ptr %i.ak, align 4, !tbaa !287
  %i.am = fmul float %i.v, %i.al
  %i.an = getelementptr i8, ptr %i.ai, i64 20616
  store float %i.am, ptr %i.an, align 4, !tbaa !163
  %i.ao = getelementptr i8, ptr %i.d, i64 124
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !286
  %i.aq = fmul float %i.v, %i.ap
  %i.ar = getelementptr i8, ptr %i.ai, i64 20612
  store float %i.aq, ptr %i.ar, align 4, !tbaa !164
  %i.as = getelementptr i8, ptr %i.d, i64 128
  %i.at = load i32, ptr %i.as, align 4, !tbaa !233
  %i.au = getelementptr i8, ptr %i.ai, i64 20600
  store i32 %i.at, ptr %i.au, align 4, !tbaa !153
  %i.av = getelementptr i8, ptr %i.ai, i64 20596
  store i32 %i.y, ptr %i.av, align 4, !tbaa !152
  %i.aw = icmp slt i32 %i.y, 0
  br i1 %i.aw, label %fonsVertMetrics.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ab, i64 116
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !146
  %.not.i = icmp slt i32 %i.y, %i.ay
  br i1 %.not.i, label %bb.d, label %fonsVertMetrics.exit

bb.d:                                             ; preds = %bb.c
  %i.az = getelementptr inbounds nuw i8, ptr %i.ab, i64 96
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !144
  %i.bb = zext nneg i32 %i.y to i64
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.bb
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !155 ; 4 uses
  %i.be = fmul float %i.ae, 1.000000e+01
  %i.bf = fptosi float %i.be to i16               ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 224
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !160
  %i.bi = icmp eq ptr %i.bh, null
  br i1 %i.bi, label %fonsVertMetrics.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not24.i = icmp eq ptr %1, null
  br i1 %.not24.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bd, i64 240
  %i.bk = load float, ptr %i.bj, align 8, !tbaa !168
  %i.bl = sitofp i16 %i.bf to float
  %i.bm = fmul float %i.bk, %i.bl
  %i.bn = fdiv float %i.bm, 1.000000e+01
  store float %i.bn, ptr %1, align 4, !tbaa !81
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.not25.i = icmp eq ptr %2, null
  br i1 %.not25.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bd, i64 244
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !169
  %i.bq = sitofp i16 %i.bf to float
  %i.br = fmul float %i.bp, %i.bq
  %i.bs = fdiv float %i.br, 1.000000e+01
  store float %i.bs, ptr %2, align 4, !tbaa !81
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.not26.i = icmp eq ptr %3, null
  br i1 %.not26.i, label %fonsVertMetrics.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bd, i64 248
  %i.bu = load float, ptr %i.bt, align 8, !tbaa !166
  %i.bv = sitofp i16 %i.bf to float
  %i.bw = fmul float %i.bu, %i.bv
  %i.bx = fdiv float %i.bw, 1.000000e+01
  store float %i.bx, ptr %3, align 4, !tbaa !81
  br label %fonsVertMetrics.exit

fonsVertMetrics.exit:                             ; preds = %bb.b, %bb.c, %bb.d, %bb.i, %bb.j
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.l, label %bb.k

bb.k:                                             ; preds = %fonsVertMetrics.exit
  %i.by = load float, ptr %1, align 4, !tbaa !81
  %i.bz = fmul float %i.w, %i.by
  store float %i.bz, ptr %1, align 4, !tbaa !81
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %fonsVertMetrics.exit
  %.not33 = icmp eq ptr %2, null
  br i1 %.not33, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ca = load float, ptr %2, align 4, !tbaa !81
  %i.cb = fmul float %i.w, %i.ca
  store float %i.cb, ptr %2, align 4, !tbaa !81
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.not34 = icmp eq ptr %3, null
  br i1 %.not34, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cc = load float, ptr %3, align 4, !tbaa !81
  %i.cd = fmul float %i.w, %i.cc
  store float %i.cd, ptr %3, align 4, !tbaa !81
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @nvgTextBreakLines(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr noundef %2, float noundef %3, ptr nofree noundef writeonly captures(none) %4, i32 noundef %5) local_unnamed_addr #2 {
bb.a:
  %6 = alloca %struct.FONStextIter, align 8       ; 17 uses
  %7 = alloca %struct.FONStextIter, align 8       ; 5 uses
  %8 = alloca %struct.FONSquad, align 4           ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8840
  %i.b = load i32, ptr %i.a, align 8, !tbaa !224
  %i.c = sext i32 %i.b to i64
  %i.d = getelementptr [272 x i8], ptr %0, i64 %i.c ; 7 uses
  %i.e = getelementptr i8, ptr %i.d, i64 56
  %i.f = getelementptr i8, ptr %i.d, i64 64
  %i.g = load <2 x float>, ptr %i.e, align 4, !tbaa !81 ; 2 uses
  %i.h = load <2 x float>, ptr %i.f, align 4, !tbaa !81 ; 2 uses
  %i.i = fmul <2 x float> %i.h, %i.h
  %i.j = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.g, <2 x float> %i.g, <2 x float> %i.i)
  %i.k = tail call <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.j)
  %i.l = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.k)
  %i.m = fmul float %i.l, 5.000000e-01
  %i.n = fdiv float %i.m, f0x3C23D70A
  %i.o = fadd float %i.n, 5.000000e-01
  %i.p = fptosi float %i.o to i32
  %9 = uitofp nneg i32 %i.p to float
  %i.q = fmul nnan float %9, f0x3C23D70A          ; 2 uses
  %i.r = fcmp olt float %i.q, 4.000000e+00
  %i.s = select i1 %i.r, float %i.q, float 4.000000e+00
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8868
  %i.u = load float, ptr %i.t, align 4, !tbaa !242
  %i.v = fmul float %i.u, %i.s                    ; 5 uses
  %i.w = fdiv float 1.000000e+00, %i.v            ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #40
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #40
  %i.x = icmp eq i32 %5, 0
  br i1 %i.x, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.y = getelementptr i8, ptr %i.d, i64 132
  %i.z = load i32, ptr %i.y, align 4, !tbaa !234  ; 2 uses
  %i.aa = icmp eq i32 %i.z, -1
  br i1 %i.aa, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ab = icmp eq ptr %2, null
  br i1 %i.ab, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ac = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #41
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 %i.ac
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0285 = phi ptr [ %i.ad, %bb.d ], [ %2, %bb.c ] ; 3 uses
  %i.ae = icmp eq ptr %1, %.0285
  br i1 %i.ae, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8872 ; 4 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !236 ; 3 uses
  %i.ah = getelementptr i8, ptr %i.d, i64 112
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !285
  %i.aj = fmul float %i.v, %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 21100
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !148
  %i.am = sext i32 %i.al to i64
  %i.an = getelementptr [24 x i8], ptr %i.ag, i64 %i.am ; 5 uses
  %i.ao = getelementptr i8, ptr %i.an, i64 20604
  store float %i.aj, ptr %i.ao, align 4, !tbaa !150
  %i.ap = getelementptr i8, ptr %i.d, i64 116
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !287
  %i.ar = fmul float %i.v, %i.aq
  %i.as = getelementptr i8, ptr %i.an, i64 20616
  store float %i.ar, ptr %i.as, align 4, !tbaa !163
  %i.at = getelementptr i8, ptr %i.d, i64 124
  %i.au = load float, ptr %i.at, align 4, !tbaa !286
  %i.av = fmul float %i.v, %i.au
  %i.aw = getelementptr i8, ptr %i.an, i64 20612
  store float %i.av, ptr %i.aw, align 4, !tbaa !164
  %i.ax = getelementptr i8, ptr %i.d, i64 128
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !233
  %i.az = getelementptr i8, ptr %i.an, i64 20600
  store i32 %i.ay, ptr %i.az, align 4, !tbaa !153
  %i.ba = getelementptr i8, ptr %i.an, i64 20596
  store i32 %i.z, ptr %i.ba, align 4, !tbaa !152
  %i.bb = fmul float %3, %i.v
  %i.bc = call i32 @fonsTextIterInit(ptr noundef %i.ag, ptr noundef nonnull %6, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef %1, ptr noundef nonnull %.0285, i32 noundef 1) ; 0 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %7, ptr noundef nonnull align 8 dereferenceable(80) %6, i64 80, i1 false), !tbaa.struct !289
  %i.bd = load ptr, ptr %i.af, align 8, !tbaa !236
  %i.be = call i32 @fonsTextIterNext(ptr noundef %i.bd, ptr noundef nonnull %6, ptr noundef nonnull %8)
  %.not344 = icmp eq i32 %i.be, 0
  br i1 %.not344, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f
  %i.bf = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.bg = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.bh = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %6, i64 56 ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.bl = insertelement <2 x float> poison, float %i.w, i64 0
  %i.bm = shufflevector <2 x float> %i.bl, <2 x float> poison, <2 x i32> zeroinitializer
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %.thread321
  %.0211359 = phi i32 [ 0, %.lr.ph ], [ %i.bt, %.thread321 ] ; 2 uses
  %.0212358 = phi i32 [ 0, %.lr.ph ], [ %.0213309, %.thread321 ] ; 2 uses
  %.0214357 = phi float [ 0.000000e+00, %.lr.ph ], [ %.4, %.thread321 ] ; 2 uses
  %.0215356 = phi float [ 0.000000e+00, %.lr.ph ], [ %.4219, %.thread321 ] ; 2 uses
  %.0220355 = phi ptr [ null, %.lr.ph ], [ %.4224, %.thread321 ] ; 2 uses
  %.0225354 = phi float [ 0.000000e+00, %.lr.ph ], [ %.5, %.thread321 ] ; 4 uses
  %.0230353 = phi float [ 0.000000e+00, %.lr.ph ], [ %.5235, %.thread321 ] ; 4 uses
  %.0236352 = phi ptr [ null, %.lr.ph ], [ %.5241, %.thread321 ] ; 4 uses
  %.0242351 = phi ptr [ null, %.lr.ph ], [ %.5247, %.thread321 ] ; 5 uses
  %.0248350 = phi ptr [ null, %.lr.ph ], [ %.4252, %.thread321 ] ; 8 uses
  %.0253349 = phi float [ 0.000000e+00, %.lr.ph ], [ %.5258, %.thread321 ] ; 3 uses
  %.0259348 = phi float [ 0.000000e+00, %.lr.ph ], [ %.4263, %.thread321 ] ; 4 uses
  %.0264347 = phi float [ 0.000000e+00, %.lr.ph ], [ %.5269, %.thread321 ] ; 4 uses
  %.0270346 = phi float [ 0.000000e+00, %.lr.ph ], [ %.4274, %.thread321 ] ; 6 uses
  %.0275345 = phi i32 [ 0, %.lr.ph ], [ %.4279, %.thread321 ] ; 8 uses
  %i.bn = phi <2 x float> [ zeroinitializer, %.lr.ph ], [ %i.ej, %.thread321 ]
  %i.bo = load i32, ptr %i.bf, align 8, !tbaa !199
  %i.bp = icmp slt i32 %i.bo, 0
  br i1 %i.bp, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.bq = tail call fastcc i32 @nvg__allocTextAtlas(ptr noundef nonnull %0)
  %.not296 = icmp eq i32 %i.bq, 0
  br i1 %.not296, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %6, ptr noundef nonnull align 8 dereferenceable(80) %7, i64 80, i1 false), !tbaa.struct !289
  %i.br = load ptr, ptr %i.af, align 8, !tbaa !236
  %i.bs = call i32 @fonsTextIterNext(ptr noundef %i.br, ptr noundef nonnull %6, ptr noundef nonnull %8) ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %7, ptr noundef nonnull align 8 dereferenceable(80) %6, i64 80, i1 false), !tbaa.struct !289
  %i.bt = load i32, ptr %i.bg, align 8, !tbaa !198 ; 4 uses
  switch i32 %i.bt, label %bb.k [
    i32 9, label %.thread
    i32 11, label %.thread
    i32 12, label %.thread
    i32 32, label %.thread
    i32 160, label %.thread
    i32 10, label %.split
    i32 13, label %bb.l
    i32 133, label %.thread311
  ]

.split:                                           ; preds = %bb.j
  %.not383 = icmp eq i32 %.0211359, 13
  br i1 %.not383, label %.thread, label %.thread311

bb.k:                                             ; preds = %bb.j
  %i.bu = insertelement <4 x i32> poison, i32 %i.bt, i64 0
  %i.bv = shufflevector <4 x i32> %i.bu, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.bw = add <4 x i32> %i.bv, <i32 -19968, i32 -65280, i32 -12592, i32 -44032>
  %i.bx = and i32 %i.bt, -256                     ; 2 uses
  %or.cond5 = icmp eq i32 %i.bx, 12288
  %or.cond11 = icmp eq i32 %i.bx, 4352
  %i.by = icmp ult <4 x i32> %i.bw, <i32 20992, i32 240, i32 96, i32 11184>
  %i.bz = bitcast <4 x i1> %i.by to i4
  %i.ca = icmp ne i4 %i.bz, 0
  %op.rdx = or i1 %i.ca, %or.cond5
  %op.rdx384 = or i1 %op.rdx, %or.cond11
  %spec.select = select i1 %op.rdx384, i32 3, i32 2
  br label %.thread

bb.l:                                             ; preds = %bb.j
  %.not382 = icmp eq i32 %.0211359, 10
  br i1 %.not382, label %.thread, label %.thread311

.thread311:                                       ; preds = %.split, %bb.j, %bb.l
  %.not299 = icmp eq ptr %.0248350, null
  %i.cb = load ptr, ptr %i.bh, align 8            ; 2 uses
  %i.cc = select i1 %.not299, ptr %i.cb, ptr %.0248350
  %i.cd = sext i32 %.0275345 to i64
  %i.ce = getelementptr inbounds [40 x i8], ptr %4, i64 %i.cd ; 5 uses
  store ptr %i.cc, ptr %i.ce, align 8, !tbaa !293
  %.not300 = icmp eq ptr %.0242351, null
  %i.cf = select i1 %.not300, ptr %i.cb, ptr %.0242351
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  store ptr %i.cf, ptr %i.cg, align 8, !tbaa !294
  %i.ch = fmul float %i.w, %.0264347
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ce, i64 24
  store float %i.ch, ptr %i.ci, align 8, !tbaa !292
  %i.cj = fmul <2 x float> %i.bm, %i.bn
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ce, i64 28
  store <2 x float> %i.cj, ptr %i.ck, align 4, !tbaa !81
  %i.cl = load ptr, ptr %i.bi, align 8, !tbaa !196
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  store ptr %i.cl, ptr %i.cm, align 8, !tbaa !291
  %i.cn = add nsw i32 %.0275345, 1                ; 3 uses
  %.not301 = icmp slt i32 %i.cn, %5
  br i1 %.not301, label %.thread321, label %.loopexit

.thread:                                          ; preds = %.split, %bb.k, %bb.j, %bb.j, %bb.j, %bb.j, %bb.j, %bb.l
  %.0213310 = phi i32 [ 0, %bb.l ], [ 0, %bb.j ], [ 0, %bb.j ], [ 0, %bb.j ], [ 0, %bb.j ], [ %spec.select, %bb.k ], [ 0, %bb.j ], [ 0, %.split ] ; 7 uses
  %i.co = icmp eq ptr %.0248350, null
  br i1 %i.co, label %bb.m, label %bb.o

bb.m:                                             ; preds = %.thread
  %or.cond19.not = icmp eq i32 %.0213310, 0
  br i1 %or.cond19.not, label %.thread321, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cp = load float, ptr %6, align 8, !tbaa !193 ; 5 uses
  %i.cq = load ptr, ptr %i.bh, align 8, !tbaa !195 ; 3 uses
  %i.cr = load ptr, ptr %i.bi, align 8, !tbaa !196
  %i.cs = load float, ptr %i.bj, align 8, !tbaa !192
  %i.ct = fsub float %i.cs, %i.cp
  %i.cu = load float, ptr %8, align 4, !tbaa !176
  %i.cv = fsub float %i.cu, %i.cp                 ; 2 uses
  %i.cw = load float, ptr %i.bk, align 4, !tbaa !177
  %i.cx = fsub float %i.cw, %i.cp
  br label %.thread321

bb.o:                                             ; preds = %.thread
  %i.cy = load float, ptr %i.bj, align 8, !tbaa !192 ; 3 uses
  %i.cz = fsub float %i.cy, %.0270346             ; 3 uses
  %i.da = icmp eq i32 %.0213310, 3                ; 2 uses
  %or.cond21.not = icmp eq i32 %.0213310, 0       ; 6 uses
  %i.db = load ptr, ptr %i.bi, align 8            ; 3 uses
  %i.dc = load float, ptr %i.bk, align 4          ; 3 uses
  %i.dd = fsub float %i.dc, %.0270346             ; 2 uses
  %.1265 = select i1 %or.cond21.not, float %.0264347, float %i.cz ; 2 uses
  %.1254 = select i1 %or.cond21.not, float %.0253349, float %i.dd ; 2 uses
  %.1243 = select i1 %or.cond21.not, ptr %.0242351, ptr %i.db
  %i.de = icmp samesign ugt i32 %.0212358, 1
  %or.cond25 = and i1 %i.de, %or.cond21.not
  %or.cond27 = or i1 %i.da, %or.cond25            ; 3 uses
  %i.df = load ptr, ptr %i.bh, align 8            ; 7 uses
  %.1221 = select i1 %or.cond27, ptr %i.df, ptr %.0220355 ; 4 uses
  %.1216 = select i1 %or.cond27, float %.1265, float %.0215356 ; 3 uses
  %.1 = select i1 %or.cond27, float %.1254, float %.0214357 ; 3 uses
  %i.dg = icmp eq i32 %.0212358, 0
  br i1 %i.dg, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  br i1 %or.cond21.not, label %.thread321, label %bb.r

bb.q:                                             ; preds = %bb.o
  br i1 %i.da, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.dh = load float, ptr %6, align 8, !tbaa !193
  %i.di = load float, ptr %8, align 4, !tbaa !176
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.1237 = phi ptr [ %i.df, %bb.r ], [ %.0236352, %bb.q ] ; 5 uses
  %.1231 = phi float [ %i.dh, %bb.r ], [ %.0230353, %bb.q ] ; 6 uses
  %.1226 = phi float [ %i.di, %bb.r ], [ %.0225354, %bb.q ] ; 3 uses
  %i.dj = fcmp ule float %i.cz, %i.bb
  %or.cond307.not = select i1 %or.cond21.not, i1 true, i1 %i.dj
  br i1 %or.cond307.not, label %.thread321, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dk = icmp eq ptr %.1221, %.0248350
  %i.dl = sext i32 %.0275345 to i64
  %i.dm = getelementptr inbounds [40 x i8], ptr %4, i64 %i.dl ; 6 uses
  store ptr %.0248350, ptr %i.dm, align 8, !tbaa !293
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 8 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dm, i64 24 ; 2 uses
  %i.dp = fmul float %i.w, %.0259348              ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dm, i64 28 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dm, i64 32 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dm, i64 16 ; 2 uses
  %i.dt = add nsw i32 %.0275345, 1                ; 5 uses
  %.not298 = icmp slt i32 %i.dt, %5               ; 2 uses
  br i1 %i.dk, label %bb.u, label %bb.w

bb.u:                                             ; preds = %bb.t
  store ptr %i.df, ptr %i.dn, align 8, !tbaa !294
  %i.du = fmul float %i.w, %i.cz
  store float %i.du, ptr %i.do, align 8, !tbaa !292
  store float %i.dp, ptr %i.dq, align 4, !tbaa !498
  %i.dv = fmul float %i.w, %i.dd
  store float %i.dv, ptr %i.dr, align 8, !tbaa !499
  store ptr %i.df, ptr %i.ds, align 8, !tbaa !291
  br i1 %.not298, label %bb.v, label %.loopexit

bb.v:                                             ; preds = %bb.u
  %i.dw = load float, ptr %6, align 8, !tbaa !193 ; 5 uses
  %i.dx = fsub float %i.cy, %i.dw
  %i.dy = load float, ptr %8, align 4, !tbaa !176
  %i.dz = fsub float %i.dy, %i.dw                 ; 2 uses
  %i.ea = fsub float %i.dc, %i.dw
  br label %.thread321

bb.w:                                             ; preds = %bb.t
  store ptr %.1221, ptr %i.dn, align 8, !tbaa !294
  %i.eb = fmul float %i.w, %.1216
  store float %i.eb, ptr %i.do, align 8, !tbaa !292
  store float %i.dp, ptr %i.dq, align 4, !tbaa !498
  %i.ec = fmul float %i.w, %.1
  store float %i.ec, ptr %i.dr, align 8, !tbaa !499
  store ptr %.1237, ptr %i.ds, align 8, !tbaa !291
  br i1 %.not298, label %bb.x, label %.loopexit

bb.x:                                             ; preds = %bb.w
  %i.ed = fsub float %i.cy, %.1231
  %i.ee = fsub float %.1226, %.1231
  %i.ef = fsub float %i.dc, %.1231
  br label %.thread321

.thread321:                                       ; preds = %bb.p, %bb.s, %bb.x, %bb.v, %.thread311, %bb.m, %bb.n
  %.0213309 = phi i32 [ 1, %.thread311 ], [ %.0213310, %bb.n ], [ 0, %bb.m ], [ %.0213310, %bb.v ], [ %.0213310, %bb.x ], [ %.0213310, %bb.s ], [ 0, %bb.p ]
  %.4279 = phi i32 [ %i.cn, %.thread311 ], [ %.0275345, %bb.n ], [ %.0275345, %bb.m ], [ %i.dt, %bb.v ], [ %i.dt, %bb.x ], [ %.0275345, %bb.s ], [ %.0275345, %bb.p ] ; 4 uses
  %.4274 = phi float [ %.0270346, %.thread311 ], [ %i.cp, %bb.n ], [ %.0270346, %bb.m ], [ %i.dw, %bb.v ], [ %.1231, %bb.x ], [ %.0270346, %bb.s ], [ %.0270346, %bb.p ]
  %.5269 = phi float [ 0.000000e+00, %.thread311 ], [ %i.ct, %bb.n ], [ %.0264347, %bb.m ], [ %i.dx, %bb.v ], [ %i.ed, %bb.x ], [ %.1265, %bb.s ], [ %.0264347, %bb.p ] ; 2 uses
  %.4263 = phi float [ 0.000000e+00, %.thread311 ], [ %i.cv, %bb.n ], [ %.0259348, %bb.m ], [ %i.dz, %bb.v ], [ %i.ee, %bb.x ], [ %.0259348, %bb.s ], [ %.0259348, %bb.p ] ; 3 uses
  %.5258 = phi float [ 0.000000e+00, %.thread311 ], [ %i.cx, %bb.n ], [ %.0253349, %bb.m ], [ %i.ea, %bb.v ], [ %i.ef, %bb.x ], [ %.1254, %bb.s ], [ %.0253349, %bb.p ] ; 3 uses
  %.4252 = phi ptr [ null, %.thread311 ], [ %i.cq, %bb.n ], [ null, %bb.m ], [ %i.df, %bb.v ], [ %.1237, %bb.x ], [ %.0248350, %bb.s ], [ %.0248350, %bb.p ] ; 3 uses
  %.5247 = phi ptr [ null, %.thread311 ], [ %i.cr, %bb.n ], [ %.0242351, %bb.m ], [ %i.db, %bb.v ], [ %i.db, %bb.x ], [ %.1243, %bb.s ], [ %.0242351, %bb.p ] ; 2 uses
  %.5241 = phi ptr [ %.0236352, %.thread311 ], [ %i.cq, %bb.n ], [ %.0236352, %bb.m ], [ %i.df, %bb.v ], [ %.1237, %bb.x ], [ %.1237, %bb.s ], [ %.0236352, %bb.p ]
  %.5235 = phi float [ %.0230353, %.thread311 ], [ %i.cp, %bb.n ], [ %.0230353, %bb.m ], [ %i.dw, %bb.v ], [ %.1231, %bb.x ], [ %.1231, %bb.s ], [ %.0230353, %bb.p ]
  %.5 = phi float [ %.0225354, %.thread311 ], [ %i.cv, %bb.n ], [ %.0225354, %bb.m ], [ %i.dz, %bb.v ], [ %.1226, %bb.x ], [ %.1226, %bb.s ], [ %.0225354, %bb.p ]
  %.4224 = phi ptr [ %.0248350, %.thread311 ], [ %i.cq, %bb.n ], [ %.0220355, %bb.m ], [ %i.df, %bb.v ], [ %.1237, %bb.x ], [ %.1221, %bb.s ], [ %.1221, %bb.p ]
  %.4219 = phi float [ 0.000000e+00, %.thread311 ], [ 0.000000e+00, %bb.n ], [ %.0215356, %bb.m ], [ 0.000000e+00, %bb.v ], [ 0.000000e+00, %bb.x ], [ %.1216, %bb.s ], [ %.1216, %bb.p ]
  %.4 = phi float [ 0.000000e+00, %.thread311 ], [ 0.000000e+00, %bb.n ], [ %.0214357, %bb.m ], [ 0.000000e+00, %bb.v ], [ 0.000000e+00, %bb.x ], [ %.1, %bb.s ], [ %.1, %bb.p ]
  %i.eg = load ptr, ptr %i.af, align 8, !tbaa !236
  %i.eh = call i32 @fonsTextIterNext(ptr noundef %i.eg, ptr noundef nonnull %6, ptr noundef nonnull %8)
  %.not = icmp eq i32 %i.eh, 0
  %i.ei = insertelement <2 x float> poison, float %.4263, i64 0
  %i.ej = insertelement <2 x float> %i.ei, float %.5258, i64 1
  br i1 %.not, label %._crit_edge, label %bb.g, !llvm.loop !497

._crit_edge:                                      ; preds = %.thread321
  %.not295 = icmp eq ptr %.4252, null
  br i1 %.not295, label %.loopexit, label %bb.y

bb.y:                                             ; preds = %._crit_edge
  %i.ek = sext i32 %.4279 to i64
  %i.el = getelementptr inbounds [40 x i8], ptr %4, i64 %i.ek ; 6 uses
  store ptr %.4252, ptr %i.el, align 8, !tbaa !293
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  store ptr %.5247, ptr %i.em, align 8, !tbaa !294
  %i.en = fmul float %i.w, %.5269
  %i.eo = getelementptr inbounds nuw i8, ptr %i.el, i64 24
  store float %i.en, ptr %i.eo, align 8, !tbaa !292
  %i.ep = fmul float %i.w, %.4263
  %i.eq = getelementptr inbounds nuw i8, ptr %i.el, i64 28
  store float %i.ep, ptr %i.eq, align 4, !tbaa !498
  %i.er = fmul float %i.w, %.5258
  %i.es = getelementptr inbounds nuw i8, ptr %i.el, i64 32
  store float %i.er, ptr %i.es, align 8, !tbaa !499
  %i.et = getelementptr inbounds nuw i8, ptr %i.el, i64 16
  store ptr %.0285, ptr %i.et, align 8, !tbaa !291
  %i.eu = add nsw i32 %.4279, 1
  br label %.loopexit

.loopexit:                                        ; preds = %bb.u, %bb.w, %.thread311, %bb.f, %._crit_edge, %bb.y, %bb.e, %bb.b, %bb.a
  %.3284 = phi i32 [ %i.eu, %bb.y ], [ 0, %bb.a ], [ 0, %bb.b ], [ 0, %bb.e ], [ %.4279, %._crit_edge ], [ 0, %bb.f ], [ %i.dt, %bb.u ], [ %i.cn, %.thread311 ], [ %i.dt, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #40
  ret i32 %.3284
}

; Function Attrs: nounwind uwtable
define dso_local i32 @nvgTextGlyphPositions(ptr nofree noundef captures(none) %0, float noundef %1, float noundef %2, ptr noundef %3, ptr noundef %4, ptr nofree noundef writeonly captures(none) %5, i32 noundef %6) local_unnamed_addr #2 {
bb.a:
  %7 = alloca %struct.FONStextIter, align 8       ; 12 uses
  %8 = alloca %struct.FONStextIter, align 8       ; 5 uses
  %9 = alloca %struct.FONSquad, align 4           ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8840
  %i.b = load i32, ptr %i.a, align 8, !tbaa !224
  %i.c = sext i32 %i.b to i64
  %i.d = getelementptr [272 x i8], ptr %0, i64 %i.c ; 7 uses
  %i.e = getelementptr i8, ptr %i.d, i64 56
  %i.f = getelementptr i8, ptr %i.d, i64 64
  %i.g = load <2 x float>, ptr %i.e, align 4, !tbaa !81 ; 2 uses
  %i.h = load <2 x float>, ptr %i.f, align 4, !tbaa !81 ; 2 uses
  %i.i = fmul <2 x float> %i.h, %i.h
  %i.j = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.g, <2 x float> %i.g, <2 x float> %i.i)
  %i.k = tail call <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.j)
  %i.l = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.k)
  %i.m = fmul float %i.l, 5.000000e-01
  %i.n = fdiv float %i.m, f0x3C23D70A
  %i.o = fadd float %i.n, 5.000000e-01
  %i.p = fptosi float %i.o to i32
  %10 = uitofp nneg i32 %i.p to float
  %i.q = fmul nnan float %10, f0x3C23D70A         ; 2 uses
  %i.r = fcmp olt float %i.q, 4.000000e+00
  %i.s = select i1 %i.r, float %i.q, float 4.000000e+00
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8868
  %i.u = load float, ptr %i.t, align 4, !tbaa !242
  %i.v = fmul float %i.u, %i.s                    ; 6 uses
  %i.w = fdiv float 1.000000e+00, %i.v            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #40
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #40
  %i.x = getelementptr i8, ptr %i.d, i64 132
  %i.y = load i32, ptr %i.x, align 4, !tbaa !234  ; 2 uses
  %i.z = icmp eq i32 %i.y, -1
  br i1 %i.z, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.aa = icmp eq ptr %4, null
  br i1 %i.aa, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ab = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #41
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 %i.ab
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.049 = phi ptr [ %i.ac, %bb.c ], [ %4, %bb.b ] ; 2 uses
  %i.ad = icmp eq ptr %3, %.049
  br i1 %i.ad, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8872 ; 3 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !236 ; 3 uses
  %i.ag = getelementptr i8, ptr %i.d, i64 112
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !285
  %i.ai = fmul float %i.v, %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 21100
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !148
  %i.al = sext i32 %i.ak to i64
  %i.am = getelementptr [24 x i8], ptr %i.af, i64 %i.al ; 5 uses
  %i.an = getelementptr i8, ptr %i.am, i64 20604
  store float %i.ai, ptr %i.an, align 4, !tbaa !150
  %i.ao = getelementptr i8, ptr %i.d, i64 116
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !287
  %i.aq = fmul float %i.v, %i.ap
  %i.ar = getelementptr i8, ptr %i.am, i64 20616
  store float %i.aq, ptr %i.ar, align 4, !tbaa !163
  %i.as = getelementptr i8, ptr %i.d, i64 124
  %i.at = load float, ptr %i.as, align 4, !tbaa !286
  %i.au = fmul float %i.v, %i.at
  %i.av = getelementptr i8, ptr %i.am, i64 20612
  store float %i.au, ptr %i.av, align 4, !tbaa !164
  %i.aw = getelementptr i8, ptr %i.d, i64 128
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !233
  %i.ay = getelementptr i8, ptr %i.am, i64 20600
  store i32 %i.ax, ptr %i.ay, align 4, !tbaa !153
  %i.az = getelementptr i8, ptr %i.am, i64 20596
  store i32 %i.y, ptr %i.az, align 4, !tbaa !152
  %i.ba = fmul float %1, %i.v
  %i.bb = fmul float %2, %i.v
  %i.bc = call i32 @fonsTextIterInit(ptr noundef %i.af, ptr noundef nonnull %7, float noundef %i.ba, float noundef %i.bb, ptr noundef %3, ptr noundef nonnull %.049, i32 noundef 1) ; 0 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %8, ptr noundef nonnull align 8 dereferenceable(80) %7, i64 80, i1 false), !tbaa.struct !289
  %i.bd = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.be = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.bf = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.bg = getelementptr inbounds nuw i8, ptr %9, i64 16
  %smax = tail call i32 @llvm.smax.i32(i32 %6, i32 1) ; 2 uses
  %wide.trip.count = zext nneg i32 %smax to i64
  %i.bh = insertelement <2 x float> poison, float %i.w, i64 0
  %i.bi = shufflevector <2 x float> %i.bh, <2 x float> poison, <2 x i32> zeroinitializer
  br label %bb.f

bb.f:                                             ; preds = %bb.j, %bb.e
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.j ], [ 0, %bb.e ] ; 3 uses
  %i.bj = load ptr, ptr %i.ae, align 8, !tbaa !236
  %i.bk = call i32 @fonsTextIterNext(ptr noundef %i.bj, ptr noundef nonnull %7, ptr noundef nonnull %9)
  %.not = icmp eq i32 %i.bk, 0
  br i1 %.not, label %.loopexit.loopexit.split.loop.exit59, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bl = load i32, ptr %i.bd, align 8, !tbaa !199
  %i.bm = icmp slt i32 %i.bl, 0
  br i1 %i.bm, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.bn = tail call fastcc i32 @nvg__allocTextAtlas(ptr noundef nonnull %0)
  %.not54 = icmp eq i32 %i.bn, 0
  br i1 %.not54, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %7, ptr noundef nonnull align 8 dereferenceable(80) %8, i64 80, i1 false), !tbaa.struct !289
  %i.bo = load ptr, ptr %i.ae, align 8, !tbaa !236
  %i.bp = call i32 @fonsTextIterNext(ptr noundef %i.bo, ptr noundef nonnull %7, ptr noundef nonnull %9) ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %8, ptr noundef nonnull align 8 dereferenceable(80) %7, i64 80, i1 false), !tbaa.struct !289
  %i.bq = load ptr, ptr %i.be, align 8, !tbaa !195
  %i.br = getelementptr inbounds nuw [24 x i8], ptr %5, i64 %indvars.iv ; 3 uses
  store ptr %i.bq, ptr %i.br, align 8, !tbaa !502
  %i.bs = load float, ptr %7, align 8, !tbaa !193 ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bu = load float, ptr %9, align 4, !tbaa !176 ; 2 uses
  %i.bv = fcmp olt float %i.bs, %i.bu
  %i.bw = select i1 %i.bv, float %i.bs, float %i.bu
  %i.bx = insertelement <2 x float> poison, float %i.bs, i64 0
  %i.by = insertelement <2 x float> %i.bx, float %i.bw, i64 1
  %i.bz = fmul <2 x float> %i.bi, %i.by
  store <2 x float> %i.bz, ptr %i.bt, align 8, !tbaa !81
  %i.ca = load float, ptr %i.bf, align 8, !tbaa !192 ; 2 uses
  %i.cb = load float, ptr %i.bg, align 4, !tbaa !177 ; 2 uses
  %i.cc = fcmp ogt float %i.ca, %i.cb
  %i.cd = select i1 %i.cc, float %i.ca, float %i.cb
  %i.ce = fmul float %i.w, %i.cd
  %i.cf = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  store float %i.ce, ptr %i.cf, align 8, !tbaa !503
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.f, !llvm.loop !500

.loopexit.loopexit.split.loop.exit59:             ; preds = %bb.f
  %i.cg = trunc nuw nsw i64 %indvars.iv to i32
  br label %.loopexit

.loopexit:                                        ; preds = %bb.j, %.loopexit.loopexit.split.loop.exit59, %bb.d, %bb.a
  %.048 = phi i32 [ 0, %bb.d ], [ 0, %bb.a ], [ %i.cg, %.loopexit.loopexit.split.loop.exit59 ], [ %smax, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #40
  ret i32 %.048
}

; Function Attrs: nounwind uwtable
define dso_local float @nvgTextBounds(ptr nofree noundef readonly captures(none) %0, float noundef %1, float noundef %2, ptr nofree noundef readonly captures(address) %3, ptr nofree noundef readnone captures(address) %4, ptr nofree noundef captures(address_is_null) %5) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8840
  %i.b = load i32, ptr %i.a, align 8, !tbaa !224
  %i.c = sext i32 %i.b to i64
  %i.d = getelementptr [272 x i8], ptr %0, i64 %i.c ; 7 uses
  %i.e = getelementptr i8, ptr %i.d, i64 56
  %i.f = getelementptr i8, ptr %i.d, i64 64
  %i.g = load <2 x float>, ptr %i.e, align 4, !tbaa !81 ; 2 uses
  %i.h = load <2 x float>, ptr %i.f, align 4, !tbaa !81 ; 2 uses
  %i.i = fmul <2 x float> %i.h, %i.h
  %i.j = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.g, <2 x float> %i.g, <2 x float> %i.i)
  %i.k = tail call <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.j)
  %i.l = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.k)
  %i.m = fmul float %i.l, 5.000000e-01
  %i.n = fdiv float %i.m, f0x3C23D70A
  %i.o = fadd float %i.n, 5.000000e-01
  %i.p = fptosi float %i.o to i32
  %6 = uitofp nneg i32 %i.p to float
  %i.q = fmul nnan float %6, f0x3C23D70A          ; 2 uses
  %i.r = fcmp olt float %i.q, 4.000000e+00
  %i.s = select i1 %i.r, float %i.q, float 4.000000e+00
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8868
  %i.u = load float, ptr %i.t, align 4, !tbaa !242
  %i.v = fmul float %i.u, %i.s                    ; 6 uses
  %i.w = fdiv float 1.000000e+00, %i.v            ; 2 uses
  %i.x = getelementptr i8, ptr %i.d, i64 132
  %i.y = load i32, ptr %i.x, align 4, !tbaa !234  ; 2 uses
  %i.z = icmp eq i32 %i.y, -1
  br i1 %i.z, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8872 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !236 ; 3 uses
  %i.ac = getelementptr i8, ptr %i.d, i64 112
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !285
  %i.ae = fmul float %i.v, %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 21100
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !148
  %i.ah = sext i32 %i.ag to i64
  %i.ai = getelementptr [24 x i8], ptr %i.ab, i64 %i.ah ; 5 uses
  %i.aj = getelementptr i8, ptr %i.ai, i64 20604
  store float %i.ae, ptr %i.aj, align 4, !tbaa !150
  %i.ak = getelementptr i8, ptr %i.d, i64 116
  %i.al = load float, ptr %i.ak, align 4, !tbaa !287
  %i.am = fmul float %i.v, %i.al
  %i.an = getelementptr i8, ptr %i.ai, i64 20616
  store float %i.am, ptr %i.an, align 4, !tbaa !163
  %i.ao = getelementptr i8, ptr %i.d, i64 124
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !286
  %i.aq = fmul float %i.v, %i.ap
  %i.ar = getelementptr i8, ptr %i.ai, i64 20612
  store float %i.aq, ptr %i.ar, align 4, !tbaa !164
  %i.as = getelementptr i8, ptr %i.d, i64 128
  %i.at = load i32, ptr %i.as, align 4, !tbaa !233
  %i.au = getelementptr i8, ptr %i.ai, i64 20600
  store i32 %i.at, ptr %i.au, align 4, !tbaa !153
  %i.av = getelementptr i8, ptr %i.ai, i64 20596
  store i32 %i.y, ptr %i.av, align 4, !tbaa !152
  %i.aw = fmul float %1, %i.v
  %i.ax = fmul float %2, %i.v                     ; 2 uses
  %i.ay = tail call float @fonsTextBounds(ptr noundef %i.ab, float noundef %i.aw, float noundef %i.ax, ptr noundef %3, ptr noundef %4, ptr noundef %5)
  %.not = icmp eq ptr %5, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.az = load ptr, ptr %i.aa, align 8, !tbaa !236
  %i.ba = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 12
  tail call void @fonsLineBounds(ptr noundef %i.az, float noundef %i.ax, ptr noundef nonnull %i.ba, ptr noundef nonnull %i.bb)
  %i.bc = load <4 x float>, ptr %5, align 4, !tbaa !81
  %i.bd = insertelement <4 x float> poison, float %i.w, i64 0
  %i.be = shufflevector <4 x float> %i.bd, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bf = fmul <4 x float> %i.be, %i.bc
  store <4 x float> %i.bf, ptr %5, align 4, !tbaa !81
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.bg = fmul float %i.w, %i.ay
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  %.0 = phi float [ %i.bg, %bb.d ], [ 0.000000e+00, %bb.a ]
  ret float %.0
}

; Function Attrs: nounwind uwtable
define dso_local void @nvgTextBoxBounds(ptr nofree noundef captures(none) %0, float noundef %1, float noundef %2, float noundef %3, ptr noundef %4, ptr noundef %5, ptr nofree noundef writeonly captures(address_is_null) %6) local_unnamed_addr #2 {
bb.a:
  %7 = alloca [2 x %struct.NVGtextRow], align 16  ; 15 uses
  %i.a = alloca float, align 4                    ; 5 uses
  %i.b = alloca float, align 4                    ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8840
  %i.d = load i32, ptr %i.c, align 8, !tbaa !224
  %i.e = sext i32 %i.d to i64
  %i.f = getelementptr [272 x i8], ptr %0, i64 %i.e ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #40
  %i.g = getelementptr i8, ptr %i.f, i64 56
  %i.h = getelementptr i8, ptr %i.f, i64 64
  %i.i = load <2 x float>, ptr %i.g, align 4, !tbaa !81 ; 2 uses
  %i.j = load <2 x float>, ptr %i.h, align 4, !tbaa !81 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8868
  %i.l = load float, ptr %i.k, align 4, !tbaa !242
  %i.m = getelementptr i8, ptr %i.f, i64 128      ; 3 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !233
  %.fr143 = freeze i32 %i.n                       ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #40
  store float 0.000000e+00, ptr %i.a, align 4, !tbaa !81
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #40
  store float 0.000000e+00, ptr %i.b, align 4, !tbaa !81
  %i.o = getelementptr i8, ptr %i.f, i64 132
  %i.p = load i32, ptr %i.o, align 4, !tbaa !234  ; 5 uses
  %i.q = icmp eq i32 %i.p, -1
  br i1 %i.q, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %.not94 = icmp eq ptr %6, null
  br i1 %.not94, label %bb.m, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  br label %bb.m

bb.d:                                             ; preds = %bb.a
  %i.r = fmul <2 x float> %i.j, %i.j
  %i.s = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.i, <2 x float> %i.i, <2 x float> %i.r)
  %i.t = tail call <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.s)
  %i.u = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.t)
  %i.v = fmul float %i.u, 5.000000e-01
  %i.w = fdiv float %i.v, f0x3C23D70A
  %i.x = fadd float %i.w, 5.000000e-01
  %i.y = fptosi float %i.x to i32
  %8 = uitofp nneg i32 %i.y to float
  %i.z = fmul nnan float %8, f0x3C23D70A          ; 2 uses
  %i.aa = fcmp olt float %i.z, 4.000000e+00
  %i.ab = select i1 %i.aa, float %i.z, float 4.000000e+00
  %i.ac = and i32 %.fr143, 120
  %i.ad = fmul float %i.l, %i.ab                  ; 4 uses
  %i.ae = fdiv float 1.000000e+00, %i.ad          ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8872
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !236 ; 5 uses
  %i.ah = getelementptr i8, ptr %i.f, i64 112
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !285
  %i.aj = fmul float %i.ad, %i.ai                 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 21100
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !148
  %i.am = getelementptr i8, ptr %i.f, i64 116
  %i.an = load float, ptr %i.am, align 4, !tbaa !287
  %i.ao = fmul float %i.ad, %i.an
  %i.ap = getelementptr i8, ptr %i.f, i64 124
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !286
  %i.ar = fmul float %i.ad, %i.aq
  %i.as = icmp slt i32 %i.p, 0
  br i1 %i.as, label %nvgTextMetrics.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.at = getelementptr inbounds nuw i8, ptr %i.ag, i64 116
  %i.au = load i32, ptr %i.at, align 4, !tbaa !146
  %.not.i.i = icmp slt i32 %i.p, %i.au
  br i1 %.not.i.i, label %bb.f, label %nvgTextMetrics.exit

bb.f:                                             ; preds = %bb.e
  %i.av = getelementptr inbounds nuw i8, ptr %i.ag, i64 96
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !144
  %i.ax = zext nneg i32 %i.p to i64
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.ax
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !155 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 224
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !160
  %i.bc = icmp eq ptr %i.bb, null
  br i1 %i.bc, label %nvgTextMetrics.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bd = fmul float %i.aj, 1.000000e+01
  %i.be = fptosi float %i.bd to i16
  %i.bf = getelementptr inbounds nuw i8, ptr %i.az, i64 248
  %i.bg = load float, ptr %i.bf, align 8, !tbaa !166
  %i.bh = sitofp i16 %i.be to float
  %i.bi = fmul float %i.bg, %i.bh
  %i.bj = fdiv float %i.bi, 1.000000e+01
  br label %nvgTextMetrics.exit

nvgTextMetrics.exit:                              ; preds = %bb.d, %bb.e, %bb.f, %bb.g
  %.096 = phi float [ 0.000000e+00, %bb.d ], [ 0.000000e+00, %bb.f ], [ %i.bj, %bb.g ], [ 0.000000e+00, %bb.e ]
  %i.bk = fmul float %i.ae, %.096                 ; 4 uses
  %i.bl = or disjoint i32 %i.ac, 1                ; 2 uses
  store i32 %i.bl, ptr %i.m, align 4, !tbaa !233
  %i.bm = sext i32 %i.al to i64
  %i.bn = getelementptr [24 x i8], ptr %i.ag, i64 %i.bm ; 5 uses
  %i.bo = getelementptr i8, ptr %i.bn, i64 20604
  store float %i.aj, ptr %i.bo, align 4, !tbaa !150
  %i.bp = getelementptr i8, ptr %i.bn, i64 20616
  store float %i.ao, ptr %i.bp, align 4, !tbaa !163
  %i.bq = getelementptr i8, ptr %i.bn, i64 20612
  store float %i.ar, ptr %i.bq, align 4, !tbaa !164
  %i.br = getelementptr i8, ptr %i.bn, i64 20600
  store i32 %i.bl, ptr %i.br, align 4, !tbaa !153
  %i.bs = getelementptr i8, ptr %i.bn, i64 20596
  store i32 %i.p, ptr %i.bs, align 4, !tbaa !152
  call void @fonsLineBounds(ptr noundef nonnull %i.ag, float noundef 0.000000e+00, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b)
  %i.bt = load float, ptr %i.a, align 4, !tbaa !81
  %i.bu = load float, ptr %i.b, align 4, !tbaa !81
  %i.bv = insertelement <2 x float> poison, float %i.ae, i64 0
  %i.bw = shufflevector <2 x float> %i.bv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bx = insertelement <2 x float> poison, float %i.bt, i64 0
  %i.by = insertelement <2 x float> %i.bx, float %i.bu, i64 1
  %i.bz = fmul <2 x float> %i.bw, %i.by           ; 4 uses
  %i.ca = call i32 @nvgTextBreakLines(ptr noundef nonnull %0, ptr noundef %4, ptr noundef %5, float noundef %3, ptr noundef nonnull %7, i32 noundef 2) ; 5 uses
  %.not112 = icmp eq i32 %i.ca, 0
  %i.cb = insertelement <4 x float> poison, float %1, i64 0
  %i.cc = insertelement <4 x float> %i.cb, float %2, i64 1
  %i.cd = shufflevector <4 x float> %i.cc, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 7 uses
  br i1 %.not112, label %._crit_edge118, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %nvgTextMetrics.exit
  %i.ce = and i32 %.fr143, 1
  %.not91 = icmp eq i32 %i.ce, 0
  %i.cf = and i32 %.fr143, 4
  %.not93 = icmp eq i32 %i.cf, 0
  %i.cg = getelementptr i8, ptr %i.f, i64 120     ; 4 uses
  br i1 %.not91, label %.preheader.lr.ph.split.us, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.ch = shufflevector <2 x float> %i.bz, <2 x float> poison, <4 x i32> <i32 poison, i32 0, i32 poison, i32 1> ; 2 uses
  %i.ci = shufflevector <4 x float> %i.cd, <4 x float> %i.ch, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  br label %.preheader

.preheader.lr.ph.split.us:                        ; preds = %.preheader.lr.ph
  %i.cj = and i32 %.fr143, 2
  %.not92 = icmp eq i32 %i.cj, 0
  br i1 %.not92, label %.preheader.lr.ph.split.us.split.us, label %.preheader.us.preheader

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph.split.us
  %i.ck = insertelement <4 x float> <float poison, float -0.000000e+00, float poison, float -0.000000e+00>, float %3, i64 0
  %i.cl = shufflevector <2 x float> %i.bz, <2 x float> poison, <4 x i32> <i32 poison, i32 0, i32 poison, i32 1>
  %i.cm = insertelement <2 x float> poison, float %1, i64 0
  %i.cn = shufflevector <2 x float> %i.cm, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 0, i32 poison>
  br label %.preheader.us

.preheader.lr.ph.split.us.split.us:               ; preds = %.preheader.lr.ph.split.us
  br i1 %.not93, label %.preheader.us.us.us.preheader, label %.preheader.us.us.preheader

.preheader.us.us.preheader:                       ; preds = %.preheader.lr.ph.split.us.split.us
  %i.co = shufflevector <2 x float> %i.bz, <2 x float> poison, <4 x i32> <i32 poison, i32 0, i32 poison, i32 1>
  %i.cp = insertelement <2 x float> poison, float %1, i64 0
  %i.cq = shufflevector <2 x float> %i.cp, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 0, i32 poison>
  br label %.preheader.us.us

.preheader.us.us.us.preheader:                    ; preds = %.preheader.lr.ph.split.us.split.us
  %i.cr = shufflevector <2 x float> %i.bz, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 1, i32 poison> ; 2 uses
  %i.cs = shufflevector <4 x float> %i.cd, <4 x float> %i.cr, <4 x i32> <i32 0, i32 4, i32 2, i32 6>
  br label %.preheader.us.us.us

.preheader.us.us.us:                              ; preds = %.preheader.us.us.us.preheader, %._crit_edge.split.us.us.split.us.us.split.us.us
  %i.ct = phi i32 [ %i.dt, %._crit_edge.split.us.us.split.us.us.split.us.us ], [ %i.ca, %.preheader.us.us.us.preheader ] ; 3 uses
  %.084113.us.us.us = phi float [ %.185.lcssa.us.us.us, %._crit_edge.split.us.us.split.us.us.split.us.us ], [ %2, %.preheader.us.us.us.preheader ] ; 2 uses
  %i.cu = phi <4 x float> [ %i.do, %._crit_edge.split.us.us.split.us.us.split.us.us ], [ %i.cd, %.preheader.us.us.us.preheader ] ; 2 uses
  %i.cv = icmp sgt i32 %i.ct, 0
  br i1 %i.cv, label %.lr.ph.us.us.us, label %._crit_edge.split.us.us.split.us.us.split.us.us

.lr.ph.us.us.us:                                  ; preds = %.preheader.us.us.us
  %i.cw = load float, ptr %i.cg, align 4, !tbaa !288
  %wide.trip.count180 = zext nneg i32 %i.ct to i64
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.lr.ph.us.us.us
  %indvars.iv177 = phi i64 [ %indvars.iv.next178, %bb.h ], [ 0, %.lr.ph.us.us.us ] ; 2 uses
  %.18598.us.us.us.us.us.us = phi float [ %i.dn, %bb.h ], [ %.084113.us.us.us, %.lr.ph.us.us.us ] ; 2 uses
  %i.cx = phi <4 x float> [ %i.dm, %bb.h ], [ %i.cu, %.lr.ph.us.us.us ] ; 3 uses
  %i.cy = getelementptr inbounds nuw [40 x i8], ptr %7, i64 %indvars.iv177
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 28
  %i.da = load <2 x float>, ptr %i.cz, align 4, !tbaa !81
  %i.db = shufflevector <2 x float> %i.da, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 1, i32 poison>
  %i.dc = insertelement <4 x float> poison, float %.18598.us.us.us.us.us.us, i64 0 ; 2 uses
  %i.dd = shufflevector <4 x float> %i.dc, <4 x float> poison, <4 x i32> <i32 poison, i32 0, i32 poison, i32 0>
  %i.de = shufflevector <4 x float> %i.db, <4 x float> %i.dd, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  %i.df = fadd <4 x float> %i.cs, %i.de           ; 3 uses
  %i.dg = shufflevector <4 x float> %i.df, <4 x float> %i.cr, <4 x i32> <i32 0, i32 4, i32 2, i32 6>
  %i.dh = shufflevector <4 x float> <float 0.000000e+00, float poison, float 0.000000e+00, float poison>, <4 x float> %i.dc, <4 x i32> <i32 0, i32 4, i32 2, i32 4>
  %i.di = fadd <4 x float> %i.dg, %i.dh
  %i.dj = fcmp olt <4 x float> %i.cx, %i.df
  %i.dk = fcmp ogt <4 x float> %i.cx, %i.df
  %i.dl = shufflevector <4 x i1> %i.dj, <4 x i1> %i.dk, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.dm = select <4 x i1> %i.dl, <4 x float> %i.cx, <4 x float> %i.di ; 2 uses
  %i.dn = tail call float @llvm.fmuladd.f32(float %i.bk, float %i.cw, float %.18598.us.us.us.us.us.us) ; 2 uses
  %indvars.iv.next178 = add nuw nsw i64 %indvars.iv177, 1 ; 2 uses
  %exitcond181.not = icmp eq i64 %indvars.iv.next178, %wide.trip.count180
  br i1 %exitcond181.not, label %._crit_edge.split.us.us.split.us.us.split.us.us, label %bb.h, !llvm.loop !504

._crit_edge.split.us.us.split.us.us.split.us.us:  ; preds = %bb.h, %.preheader.us.us.us
  %.185.lcssa.us.us.us = phi float [ %.084113.us.us.us, %.preheader.us.us.us ], [ %i.dn, %bb.h ]
  %i.do = phi <4 x float> [ %i.cu, %.preheader.us.us.us ], [ %i.dm, %bb.h ] ; 2 uses
  %i.dp = sext i32 %i.ct to i64
  %i.dq = getelementptr [40 x i8], ptr %7, i64 %i.dp
  %i.dr = getelementptr i8, ptr %i.dq, i64 -24
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !291
  %i.dt = call i32 @nvgTextBreakLines(ptr noundef nonnull %0, ptr noundef %i.ds, ptr noundef %5, float noundef %3, ptr noundef nonnull %7, i32 noundef 2) ; 2 uses
  %.not.us.us.us = icmp eq i32 %i.dt, 0
  br i1 %.not.us.us.us, label %._crit_edge118, label %.preheader.us.us.us, !llvm.loop !505

.preheader.us.us:                                 ; preds = %.preheader.us.us.preheader, %._crit_edge.split.us.us.split.us.us.split
  %i.du = phi i32 [ %i.ex, %._crit_edge.split.us.us.split.us.us.split ], [ %i.ca, %.preheader.us.us.preheader ] ; 3 uses
  %.084113.us.us = phi float [ %.185.lcssa.us.us, %._crit_edge.split.us.us.split.us.us.split ], [ %2, %.preheader.us.us.preheader ] ; 2 uses
  %i.dv = phi <4 x float> [ %i.es, %._crit_edge.split.us.us.split.us.us.split ], [ %i.cd, %.preheader.us.us.preheader ] ; 2 uses
  %i.dw = icmp sgt i32 %i.du, 0
  br i1 %i.dw, label %.lr.ph.us.us, label %._crit_edge.split.us.us.split.us.us.split

.lr.ph.us.us:                                     ; preds = %.preheader.us.us
  %i.dx = load float, ptr %i.cg, align 4, !tbaa !288
  %wide.trip.count175 = zext nneg i32 %i.du to i64
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.lr.ph.us.us
  %indvars.iv172 = phi i64 [ %indvars.iv.next173, %bb.i ], [ 0, %.lr.ph.us.us ] ; 2 uses
  %.18598.us.us.us.us = phi float [ %i.er, %bb.i ], [ %.084113.us.us, %.lr.ph.us.us ] ; 2 uses
  %i.dy = phi <4 x float> [ %i.eq, %bb.i ], [ %i.dv, %.lr.ph.us.us ] ; 3 uses
  %i.dz = getelementptr inbounds nuw [40 x i8], ptr %7, i64 %indvars.iv172 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 24
  %i.eb = load float, ptr %i.ea, align 8, !tbaa !292
  %i.ec = fsub float %3, %i.eb
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dz, i64 28
  %i.ee = load <2 x float>, ptr %i.ed, align 4, !tbaa !81
  %i.ef = insertelement <4 x float> poison, float %i.ec, i64 0
  %i.eg = shufflevector <4 x float> %i.ef, <4 x float> poison, <4 x i32> <i32 0, i32 poison, i32 0, i32 poison>
  %i.eh = shufflevector <4 x float> %i.eg, <4 x float> %i.co, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  %i.ei = shufflevector <2 x float> %i.ee, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 1, i32 poison>
  %i.ej = fadd <4 x float> %i.cq, %i.ei
  %i.ek = insertelement <4 x float> %i.ej, float %.18598.us.us.us.us, i64 1
  %i.el = shufflevector <4 x float> %i.ek, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %i.em = fadd <4 x float> %i.eh, %i.el           ; 3 uses
  %i.en = fcmp olt <4 x float> %i.dy, %i.em
  %i.eo = fcmp ogt <4 x float> %i.dy, %i.em
  %i.ep = shufflevector <4 x i1> %i.en, <4 x i1> %i.eo, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
end_hunk_1
