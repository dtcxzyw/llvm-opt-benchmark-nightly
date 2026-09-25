Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/StbiLdrImageSaver?download=true
inline.NumInlined: 3759
inline.NumDeleted: 1104
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumRuntimeUnrolled: 34
loop-unroll.NumUnrolled: 53
begin_hunk_0_@_Z21stbiw__linear_to_rgbePhPf:bb.a
bb.c:                                             ; preds = %bb.a
  %i.k = tail call { float, i32 } @llvm.frexp.f32.i32(float %i.h) ; 2 uses
  %i.l = extractvalue { float, i32 } %i.k, 1
  %i.m = extractvalue { float, i32 } %i.k, 0
  %i.n = fmul float %i.m, 2.560000e+02
  %i.o = fdiv float %i.n, %i.h                    ; 3 uses
  %i.p = fmul float %i.a, %i.o
  %i.q = fptoui float %i.p to i8
  store i8 %i.q, ptr %0, align 1, !tbaa !59
  %i.r = load float, ptr %i.b, align 4, !tbaa !61
  %i.s = fmul float %i.o, %i.r
  %i.t = fptoui float %i.s to i8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.t, ptr %i.u, align 1, !tbaa !59
  %i.v = load float, ptr %i.d, align 4, !tbaa !61
  %i.w = fmul float %i.o, %i.v
  %i.x = fptoui float %i.w to i8
  %i.y = trunc i32 %i.l to i8
  %i.z = xor i8 %i.y, -128
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink32 = phi i8 [ 0, %bb.b ], [ %i.z, %bb.c ]
  %.sink = phi i8 [ 0, %bb.b ], [ %i.x, %bb.c ]
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 3
  store i8 %.sink32, ptr %i.aa, align 1, !tbaa !59
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 %.sink, ptr %i.ab, align 1, !tbaa !59
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_Z21stbiw__write_run_dataP19stbi__write_contextih(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 2 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  store i8 %2, ptr %i.a, align 1, !tbaa !59
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #33
  %i.c = trunc i32 %1 to i8
  %i.d = xor i8 %i.c, -128
  store i8 %i.d, ptr %i.b, align 1, !tbaa !59
  %i.e = load ptr, ptr %0, align 8, !tbaa !55
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !56
  call void %i.e(ptr noundef %i.g, ptr noundef nonnull %i.b, i32 noundef 1)
  %i.h = load ptr, ptr %0, align 8, !tbaa !55
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !56
  call void %i.h(ptr noundef %i.i, ptr noundef nonnull %i.a, i32 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #33
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_Z22stbiw__write_dump_dataP19stbi__write_contextiPh(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  %i.b = trunc i32 %1 to i8
  store i8 %i.b, ptr %i.a, align 1, !tbaa !59
  %i.c = load ptr, ptr %0, align 8, !tbaa !55
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !56
  call void %i.c(ptr noundef %i.e, ptr noundef nonnull %i.a, i32 noundef 1)
  %i.f = load ptr, ptr %0, align 8, !tbaa !55
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !56
  call void %i.f(ptr noundef %i.g, ptr noundef %2, i32 noundef %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_Z25stbiw__write_hdr_scanlineP19stbi__write_contextiiPhPf(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr nofree noundef readonly captures(none) %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = alloca [4 x i8], align 4                 ; 6 uses
  %i.e = alloca [4 x i8], align 1                 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #33
  store i32 514, ptr %i.d, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #33
  %i.f = lshr i32 %1, 8
  %i.g = trunc i32 %i.f to i8
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  store i8 %i.g, ptr %i.h, align 2, !tbaa !59
  %i.i = trunc i32 %1 to i8
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 3
  store i8 %i.i, ptr %i.j, align 1, !tbaa !59
  %i.k = add i32 %1, -32768
  %or.cond = icmp ult i32 %i.k, -32760
  br i1 %or.cond, label %.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.off114 = add i32 %2, -3
  %switch115 = icmp ult i32 %.off114, 2
  %i.l = shl nuw nsw i32 %1, 1
  %i.m = mul nuw nsw i32 %1, 3
  %i.n = zext nneg i32 %1 to i64                  ; 9 uses
  %i.o = zext nneg i32 %i.l to i64                ; 4 uses
  %i.p = zext nneg i32 %i.m to i64                ; 4 uses
  br i1 %switch115, label %.lr.ph.split.us.preheader, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %i.q = sext i32 %2 to i64
  %wide.trip.count = zext nneg i32 %1 to i64      ; 7 uses
  %invariant.gep = getelementptr i8, ptr %3, i64 %i.n ; 8 uses
  %invariant.gep200 = getelementptr i8, ptr %3, i64 %i.o ; 6 uses
  %invariant.gep202 = getelementptr i8, ptr %3, i64 %i.p ; 6 uses
  %min.iters.check = icmp ugt i32 %1, 19
  %ident.check.not = icmp eq i32 %2, 1
  %or.cond315 = and i1 %min.iters.check, %ident.check.not
  br i1 %or.cond315, label %vector.memcheck, label %.lr.ph.split.preheader323

vector.memcheck:                                  ; preds = %.lr.ph.split.preheader
  %i.r = shl nuw nsw i64 %wide.trip.count, 1
  %scevgep = getelementptr i8, ptr %3, i64 %i.r   ; 3 uses
  %i.s = getelementptr i8, ptr %3, i64 %wide.trip.count
  %scevgep219 = getelementptr i8, ptr %i.s, i64 %i.o ; 4 uses
  %i.t = getelementptr i8, ptr %3, i64 %wide.trip.count
  %scevgep220 = getelementptr i8, ptr %i.t, i64 %i.p ; 4 uses
  %i.u = shl nuw nsw i64 %wide.trip.count, 2
  %scevgep221 = getelementptr i8, ptr %4, i64 %i.u ; 4 uses
  %bound0222 = icmp ult ptr %3, %scevgep219
  %bound1 = icmp ult ptr %invariant.gep200, %invariant.gep
  %found.conflict = and i1 %bound0222, %bound1
  %bound0223 = icmp ult ptr %3, %scevgep220
  %bound1224 = icmp ult ptr %invariant.gep202, %invariant.gep
  %found.conflict225 = and i1 %bound0223, %bound1224
  %conflict.rdx = or i1 %found.conflict, %found.conflict225
  %bound0226 = icmp ult ptr %3, %scevgep221
  %bound1227 = icmp ult ptr %4, %invariant.gep
  %found.conflict228 = and i1 %bound0226, %bound1227
  %conflict.rdx229 = or i1 %conflict.rdx, %found.conflict228
  %bound0230 = icmp ult ptr %invariant.gep, %scevgep219
  %bound1231 = icmp ult ptr %invariant.gep200, %scevgep
  %found.conflict232 = and i1 %bound0230, %bound1231
  %conflict.rdx233 = or i1 %conflict.rdx229, %found.conflict232
  %bound0234 = icmp ult ptr %invariant.gep, %scevgep220
  %bound1235 = icmp ult ptr %invariant.gep202, %scevgep
  %found.conflict236 = and i1 %bound0234, %bound1235
  %conflict.rdx237 = or i1 %conflict.rdx233, %found.conflict236
  %bound0238 = icmp ult ptr %invariant.gep, %scevgep221
  %bound1239 = icmp ult ptr %4, %scevgep
  %found.conflict240 = and i1 %bound0238, %bound1239
  %conflict.rdx241 = or i1 %conflict.rdx237, %found.conflict240
  %bound0242 = icmp ult ptr %invariant.gep200, %scevgep220
  %bound1243 = icmp ult ptr %invariant.gep202, %scevgep219
  %found.conflict244 = and i1 %bound0242, %bound1243
  %conflict.rdx245 = or i1 %conflict.rdx241, %found.conflict244
  %bound0246 = icmp ult ptr %invariant.gep200, %scevgep221
  %bound1247 = icmp ult ptr %4, %scevgep219
  %found.conflict248 = and i1 %bound0246, %bound1247
  %conflict.rdx249 = or i1 %conflict.rdx245, %found.conflict248
  %bound0250 = icmp ult ptr %invariant.gep202, %scevgep221
  %bound1251 = icmp ult ptr %4, %scevgep220
  %found.conflict252 = and i1 %bound0250, %bound1251
  %conflict.rdx253 = or i1 %conflict.rdx249, %found.conflict252
  br i1 %conflict.rdx253, label %.lr.ph.split.preheader323, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 32764        ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %i.v = getelementptr inbounds [4 x i8], ptr %4, i64 %index
  %wide.load = load <4 x float>, ptr %i.v, align 4, !tbaa !61, !alias.scope !287 ; 4 uses
  %i.w = fcmp olt <4 x float> %wide.load, splat (float 1.000000e-32) ; 2 uses
  %i.x = tail call { <4 x float>, <4 x i32> } @llvm.frexp.v4f32.v4i32(<4 x float> %wide.load) ; 2 uses
  %i.y = extractvalue { <4 x float>, <4 x i32> } %i.x, 1
  %i.z = extractvalue { <4 x float>, <4 x i32> } %i.x, 0
  %i.aa = fmul <4 x float> %i.z, splat (float 2.560000e+02)
  %i.ab = fdiv <4 x float> %i.aa, %wide.load
  %i.ac = fmul <4 x float> %wide.load, %i.ab
  %i.ad = fptoui <4 x float> %i.ac to <4 x i8>
  %i.ae = trunc <4 x i32> %i.y to <4 x i8>
  %i.af = xor <4 x i8> %i.ae, splat (i8 -128)
  %predphi = select <4 x i1> %i.w, <4 x i8> zeroinitializer, <4 x i8> %i.ad ; 3 uses
  %predphi254 = select <4 x i1> %i.w, <4 x i8> zeroinitializer, <4 x i8> %i.af
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 %index
  store <4 x i8> %predphi, ptr %i.ag, align 1, !tbaa !59, !alias.scope !288, !noalias !289
  %i.ah = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %index
  store <4 x i8> %predphi, ptr %i.ah, align 1, !tbaa !59, !alias.scope !290, !noalias !291
  %i.ai = getelementptr inbounds nuw i8, ptr %invariant.gep200, i64 %index
  store <4 x i8> %predphi, ptr %i.ai, align 1, !tbaa !59, !alias.scope !292, !noalias !293
  %i.aj = getelementptr inbounds nuw i8, ptr %invariant.gep202, i64 %index
  store <4 x i8> %predphi254, ptr %i.aj, align 1, !tbaa !59, !alias.scope !294, !noalias !287
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ak = icmp eq i64 %index.next, %n.vec
  br i1 %i.ak, label %middle.block, label %vector.body, !llvm.loop !270

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.preheader129.lr.ph.preheader, label %.lr.ph.split.preheader323

.lr.ph.split.preheader323:                        ; preds = %vector.memcheck, %.lr.ph.split.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.split.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %i.al = zext nneg i32 %2 to i64                 ; 6 uses
  %invariant.gep204 = getelementptr i8, ptr %3, i64 %i.n ; 8 uses
  %invariant.gep206 = getelementptr i8, ptr %3, i64 %i.o ; 6 uses
  %invariant.gep208 = getelementptr i8, ptr %3, i64 %i.p ; 6 uses
  %min.iters.check297 = icmp ult i32 %1, 24
  br i1 %min.iters.check297, label %.lr.ph.split.us.preheader322, label %vector.memcheck257

vector.memcheck257:                               ; preds = %.lr.ph.split.us.preheader
  %i.am = shl nuw nsw i64 %i.n, 1
  %scevgep258.a = getelementptr i8, ptr %3, i64 %i.am ; 3 uses
  %i.an = getelementptr i8, ptr %3, i64 %i.n
  %scevgep259.a = getelementptr i8, ptr %i.an, i64 %i.o ; 4 uses
  %i.ao = getelementptr i8, ptr %3, i64 %i.n
  %scevgep260 = getelementptr i8, ptr %i.ao, i64 %i.p ; 4 uses
  %5 = add nuw nsw i64 %i.n, 4611686018427387903
  %6 = mul i64 %5, %i.al
  %i.ap = shl i64 %6, 2
  %i.aq = getelementptr i8, ptr %4, i64 %i.ap
  %scevgep261 = getelementptr i8, ptr %i.aq, i64 12 ; 4 uses
  %bound0263 = icmp ult ptr %3, %scevgep259.a
  %bound1264 = icmp ult ptr %invariant.gep206, %invariant.gep204
  %found.conflict265 = and i1 %bound0263, %bound1264
  %bound0266 = icmp ult ptr %3, %scevgep260
  %bound1267 = icmp ult ptr %invariant.gep208, %invariant.gep204
  %found.conflict268 = and i1 %bound0266, %bound1267
  %conflict.rdx269 = or i1 %found.conflict265, %found.conflict268
  %bound0270 = icmp ult ptr %3, %scevgep261
  %bound1271 = icmp ult ptr %4, %invariant.gep204
  %found.conflict272 = and i1 %bound0270, %bound1271
  %conflict.rdx273 = or i1 %conflict.rdx269, %found.conflict272
  %bound0274 = icmp ult ptr %invariant.gep204, %scevgep259.a
  %bound1275 = icmp ult ptr %invariant.gep206, %scevgep258.a
  %found.conflict276 = and i1 %bound0274, %bound1275
  %conflict.rdx277 = or i1 %conflict.rdx273, %found.conflict276
  %bound0278 = icmp ult ptr %invariant.gep204, %scevgep260
  %bound1279 = icmp ult ptr %invariant.gep208, %scevgep258.a
  %found.conflict280 = and i1 %bound0278, %bound1279
  %conflict.rdx281 = or i1 %conflict.rdx277, %found.conflict280
  %bound0282 = icmp ult ptr %invariant.gep204, %scevgep261
  %bound1283 = icmp ult ptr %4, %scevgep258.a
  %found.conflict284 = and i1 %bound0282, %bound1283
  %conflict.rdx285 = or i1 %conflict.rdx281, %found.conflict284
  %bound0286 = icmp ult ptr %invariant.gep206, %scevgep260
  %bound1287 = icmp ult ptr %invariant.gep208, %scevgep259.a
  %found.conflict288 = and i1 %bound0286, %bound1287
  %conflict.rdx289 = or i1 %conflict.rdx285, %found.conflict288
  %bound0290 = icmp ult ptr %invariant.gep206, %scevgep261
  %bound1291 = icmp ult ptr %4, %scevgep259.a
  %found.conflict292 = and i1 %bound0290, %bound1291
  %conflict.rdx293 = or i1 %conflict.rdx289, %found.conflict292
  %bound0294 = icmp ult ptr %invariant.gep208, %scevgep261
  %bound1295 = icmp ult ptr %4, %scevgep260
  %found.conflict296 = and i1 %bound0294, %bound1295
  %conflict.rdx297 = or i1 %conflict.rdx293, %found.conflict296
  br i1 %conflict.rdx297, label %.lr.ph.split.us.preheader322, label %vector.ph300

vector.ph300:                                     ; preds = %vector.memcheck257
  %n.vec301 = and i64 %i.n, 32764                 ; 3 uses
  br label %vector.body302

vector.body302:                                   ; preds = %vector.body302, %vector.ph300
  %index303 = phi i64 [ 0, %vector.ph300 ], [ %index.next311, %vector.body302 ] ; 9 uses
  %7 = or disjoint i64 %index303, 1
  %8 = or disjoint i64 %index303, 2
  %9 = or disjoint i64 %index303, 3
  %10 = mul nuw nsw i64 %index303, %i.al
  %11 = mul nuw nsw i64 %7, %i.al
  %12 = mul nuw nsw i64 %8, %i.al
  %13 = mul nuw nsw i64 %9, %i.al
  %14 = getelementptr [4 x i8], ptr %4, i64 %10   ; 3 uses
  %15 = getelementptr [4 x i8], ptr %4, i64 %11   ; 3 uses
  %16 = getelementptr [4 x i8], ptr %4, i64 %12   ; 3 uses
  %i.ar = getelementptr [4 x i8], ptr %4, i64 %13 ; 3 uses
  %17 = getelementptr i8, ptr %14, i64 8
  %18 = getelementptr i8, ptr %15, i64 8
  %19 = getelementptr i8, ptr %16, i64 8
  %20 = getelementptr i8, ptr %i.ar, i64 8
  %21 = load float, ptr %17, align 4, !tbaa !61, !alias.scope !295
  %22 = load float, ptr %18, align 4, !tbaa !61, !alias.scope !295
  %23 = load float, ptr %19, align 4, !tbaa !61, !alias.scope !295
  %24 = load float, ptr %20, align 4, !tbaa !61, !alias.scope !295
  %25 = insertelement <4 x float> poison, float %21, i64 0
  %26 = insertelement <4 x float> %25, float %22, i64 1
  %27 = insertelement <4 x float> %26, float %23, i64 2
  %28 = insertelement <4 x float> %27, float %24, i64 3 ; 3 uses
  %29 = getelementptr i8, ptr %14, i64 4
  %i.as = getelementptr i8, ptr %15, i64 4
  %30 = getelementptr i8, ptr %16, i64 4
  %i.at = getelementptr i8, ptr %i.ar, i64 4
  %31 = load float, ptr %29, align 4, !tbaa !61, !alias.scope !295
  %32 = load float, ptr %i.as, align 4, !tbaa !61, !alias.scope !295
  %33 = load float, ptr %30, align 4, !tbaa !61, !alias.scope !295
  %34 = load float, ptr %i.at, align 4, !tbaa !61, !alias.scope !295
  %35 = insertelement <4 x float> poison, float %31, i64 0
  %36 = insertelement <4 x float> %35, float %32, i64 1
  %37 = insertelement <4 x float> %36, float %33, i64 2
  %38 = insertelement <4 x float> %37, float %34, i64 3 ; 3 uses
  %39 = load float, ptr %14, align 4, !tbaa !61, !alias.scope !295
  %40 = load float, ptr %15, align 4, !tbaa !61, !alias.scope !295
  %41 = load float, ptr %16, align 4, !tbaa !61, !alias.scope !295
  %42 = load float, ptr %i.ar, align 4, !tbaa !61, !alias.scope !295
  %43 = insertelement <4 x float> poison, float %39, i64 0
  %44 = insertelement <4 x float> %43, float %40, i64 1
  %45 = insertelement <4 x float> %44, float %41, i64 2
  %46 = insertelement <4 x float> %45, float %42, i64 3 ; 3 uses
  %i.au = fcmp ogt <4 x float> %38, %28
  %i.av = select <4 x i1> %i.au, <4 x float> %38, <4 x float> %28 ; 2 uses
  %i.aw = fcmp ogt <4 x float> %46, %i.av
  %i.ax = select <4 x i1> %i.aw, <4 x float> %46, <4 x float> %i.av ; 3 uses
  %i.ay = fcmp olt <4 x float> %i.ax, splat (float 1.000000e-32) ; 4 uses
  %i.az = tail call { <4 x float>, <4 x i32> } @llvm.frexp.v4f32.v4i32(<4 x float> %i.ax) ; 2 uses
  %i.ba = extractvalue { <4 x float>, <4 x i32> } %i.az, 1
  %i.bb = extractvalue { <4 x float>, <4 x i32> } %i.az, 0
  %i.bc = fmul <4 x float> %i.bb, splat (float 2.560000e+02)
  %i.bd = fdiv <4 x float> %i.bc, %i.ax           ; 3 uses
  %i.be = fmul <4 x float> %46, %i.bd
  %i.bf = fptoui <4 x float> %i.be to <4 x i8>
  %i.bg = fmul <4 x float> %38, %i.bd
  %i.bh = fptoui <4 x float> %i.bg to <4 x i8>
  %i.bi = fmul <4 x float> %28, %i.bd
  %i.bj = fptoui <4 x float> %i.bi to <4 x i8>
  %i.bk = trunc <4 x i32> %i.ba to <4 x i8>
  %i.bl = xor <4 x i8> %i.bk, splat (i8 -128)
  %predphi307 = select <4 x i1> %i.ay, <4 x i8> zeroinitializer, <4 x i8> %i.bh
  %predphi308 = select <4 x i1> %i.ay, <4 x i8> zeroinitializer, <4 x i8> %i.bf
  %predphi309 = select <4 x i1> %i.ay, <4 x i8> zeroinitializer, <4 x i8> %i.bl
  %predphi310 = select <4 x i1> %i.ay, <4 x i8> zeroinitializer, <4 x i8> %i.bj
  %i.bm = getelementptr inbounds nuw i8, ptr %3, i64 %index303
  store <4 x i8> %predphi308, ptr %i.bm, align 1, !tbaa !59, !alias.scope !296, !noalias !297
  %i.bn = getelementptr inbounds nuw i8, ptr %invariant.gep204, i64 %index303
  store <4 x i8> %predphi307, ptr %i.bn, align 1, !tbaa !59, !alias.scope !298, !noalias !299
  %i.bo = getelementptr inbounds nuw i8, ptr %invariant.gep206, i64 %index303
  store <4 x i8> %predphi310, ptr %i.bo, align 1, !tbaa !59, !alias.scope !300, !noalias !301
  %i.bp = getelementptr inbounds nuw i8, ptr %invariant.gep208, i64 %index303
  store <4 x i8> %predphi309, ptr %i.bp, align 1, !tbaa !59, !alias.scope !302, !noalias !295
  %index.next311 = add nuw i64 %index303, 4       ; 2 uses
  %i.bq = icmp eq i64 %index.next311, %n.vec301
  br i1 %i.bq, label %middle.block312, label %vector.body302, !llvm.loop !277

middle.block312:                                  ; preds = %vector.body302
  %cmp.n313 = icmp eq i64 %n.vec301, %i.n
  br i1 %cmp.n313, label %.preheader129.lr.ph.preheader, label %.lr.ph.split.us.preheader322

.lr.ph.split.us.preheader322:                     ; preds = %vector.memcheck257, %.lr.ph.split.us.preheader, %middle.block312
  %indvars.iv167.ph = phi i64 [ 0, %vector.memcheck257 ], [ 0, %.lr.ph.split.us.preheader ], [ %n.vec301, %middle.block312 ]
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader322, %_Z21stbiw__linear_to_rgbePhPf.exit119.us
  %indvars.iv167 = phi i64 [ %indvars.iv.next168, %_Z21stbiw__linear_to_rgbePhPf.exit119.us ], [ %indvars.iv167.ph, %.lr.ph.split.us.preheader322 ] ; 6 uses
  %i.br = mul nuw nsw i64 %indvars.iv167, %i.al
  %i.bs = getelementptr [4 x i8], ptr %4, i64 %i.br ; 3 uses
  %i.bt = getelementptr i8, ptr %i.bs, i64 8
  %i.bu = load float, ptr %i.bt, align 4, !tbaa !61 ; 3 uses
  %i.bv = getelementptr i8, ptr %i.bs, i64 4
  %i.bw = load float, ptr %i.bv, align 4, !tbaa !61 ; 3 uses
  %i.bx = load float, ptr %i.bs, align 4, !tbaa !61 ; 3 uses
  %i.by = fcmp ogt float %i.bw, %i.bu
  %..i116.us = select i1 %i.by, float %i.bw, float %i.bu ; 2 uses
  %i.bz = fcmp ogt float %i.bx, %..i116.us
  %i.ca = select i1 %i.bz, float %i.bx, float %..i116.us ; 3 uses
  %i.cb = fcmp olt float %i.ca, 1.000000e-32
  br i1 %i.cb, label %_Z21stbiw__linear_to_rgbePhPf.exit119.us, label %bb.b

bb.b:                                             ; preds = %.lr.ph.split.us
  %i.cc = tail call { float, i32 } @llvm.frexp.f32.i32(float %i.ca) ; 2 uses
  %i.cd = extractvalue { float, i32 } %i.cc, 1
  %i.ce = extractvalue { float, i32 } %i.cc, 0
  %i.cf = fmul float %i.ce, 2.560000e+02
  %i.cg = fdiv float %i.cf, %i.ca                 ; 3 uses
  %i.ch = fmul float %i.bx, %i.cg
  %i.ci = fptoui float %i.ch to i8
  %i.cj = fmul float %i.bw, %i.cg
  %i.ck = fptoui float %i.cj to i8
  %i.cl = fmul float %i.bu, %i.cg
  %i.cm = fptoui float %i.cl to i8
  %i.cn = trunc i32 %i.cd to i8
  %i.co = xor i8 %i.cn, -128
  br label %_Z21stbiw__linear_to_rgbePhPf.exit119.us

_Z21stbiw__linear_to_rgbePhPf.exit119.us:         ; preds = %.lr.ph.split.us, %bb.b
  %i.cp = phi i8 [ %i.ck, %bb.b ], [ 0, %.lr.ph.split.us ]
  %i.cq = phi i8 [ %i.ci, %bb.b ], [ 0, %.lr.ph.split.us ]
  %.sink32.i117.us = phi i8 [ %i.co, %bb.b ], [ 0, %.lr.ph.split.us ]
  %.sink.i118.us = phi i8 [ %i.cm, %bb.b ], [ 0, %.lr.ph.split.us ]
  %i.cr = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv167
  store i8 %i.cq, ptr %i.cr, align 1, !tbaa !59
  %gep205 = getelementptr inbounds nuw i8, ptr %invariant.gep204, i64 %indvars.iv167
  store i8 %i.cp, ptr %gep205, align 1, !tbaa !59
  %gep207 = getelementptr inbounds nuw i8, ptr %invariant.gep206, i64 %indvars.iv167
  store i8 %.sink.i118.us, ptr %gep207, align 1, !tbaa !59
  %gep209 = getelementptr inbounds nuw i8, ptr %invariant.gep208, i64 %indvars.iv167
  store i8 %.sink32.i117.us, ptr %gep209, align 1, !tbaa !59
  %indvars.iv.next168 = add nuw nsw i64 %indvars.iv167, 1 ; 2 uses
  %exitcond171.not = icmp eq i64 %indvars.iv.next168, %i.n
  br i1 %exitcond171.not, label %.preheader129.lr.ph.preheader, label %.lr.ph.split.us, !llvm.loop !278

.preheader:                                       ; preds = %bb.a
  %i.cs = icmp sgt i32 %1, 0
  br i1 %i.cs, label %.lr.ph157, label %.loopexit

.lr.ph157:                                        ; preds = %.preheader
  %.off = add i32 %2, -3
  %switch = icmp ult i32 %.off, 2
  %i.ct = getelementptr inbounds nuw i8, ptr %i.e, i64 1 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.e, i64 3
  %i.cv = getelementptr inbounds nuw i8, ptr %i.e, i64 2
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cx = sext i32 %2 to i64
  %wide.trip.count189 = zext nneg i32 %1 to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph157, %_Z21stbiw__linear_to_rgbePhPf.exit
  %indvars.iv186 = phi i64 [ 0, %.lr.ph157 ], [ %indvars.iv.next187, %_Z21stbiw__linear_to_rgbePhPf.exit ] ; 2 uses
  %i.cy = mul nsw i64 %indvars.iv186, %i.cx
  %i.cz = getelementptr [4 x i8], ptr %4, i64 %i.cy ; 4 uses
  br i1 %switch, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.da = getelementptr i8, ptr %i.cz, i64 8
  %i.db = load float, ptr %i.da, align 4, !tbaa !61
  %i.dc = getelementptr i8, ptr %i.cz, i64 4
  %i.dd = load float, ptr %i.dc, align 4, !tbaa !61
  %i.de = load float, ptr %i.cz, align 4, !tbaa !61
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.df = load float, ptr %i.cz, align 4, !tbaa !61 ; 3 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.14.0 = phi float [ %i.db, %bb.d ], [ %i.df, %bb.e ] ; 3 uses
  %.sroa.6.0 = phi float [ %i.dd, %bb.d ], [ %i.df, %bb.e ] ; 3 uses
  %storemerge113 = phi float [ %i.de, %bb.d ], [ %i.df, %bb.e ] ; 3 uses
  %i.dg = fcmp ogt float %.sroa.6.0, %.sroa.14.0
  %..i = select i1 %i.dg, float %.sroa.6.0, float %.sroa.14.0 ; 2 uses
  %i.dh = fcmp ogt float %storemerge113, %..i
  %i.di = select i1 %i.dh, float %storemerge113, float %..i ; 3 uses
  %i.dj = fcmp olt float %i.di, 1.000000e-32
  br i1 %i.dj, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i8 0, ptr %i.ct, align 1, !tbaa !59
  br label %_Z21stbiw__linear_to_rgbePhPf.exit

bb.h:                                             ; preds = %bb.f
  %i.dk = call { float, i32 } @llvm.frexp.f32.i32(float %i.di) ; 2 uses
  %i.dl = extractvalue { float, i32 } %i.dk, 1
  %i.dm = extractvalue { float, i32 } %i.dk, 0
  %i.dn = fmul float %i.dm, 2.560000e+02
  %i.do = fdiv float %i.dn, %i.di                 ; 3 uses
  %i.dp = fmul float %storemerge113, %i.do
  %i.dq = fptoui float %i.dp to i8
  %i.dr = fmul float %.sroa.6.0, %i.do
  %i.ds = fptoui float %i.dr to i8
  store i8 %i.ds, ptr %i.ct, align 1, !tbaa !59
  %i.dt = fmul float %.sroa.14.0, %i.do
  %i.du = fptoui float %i.dt to i8
  %i.dv = trunc i32 %i.dl to i8
  %i.dw = xor i8 %i.dv, -128
  br label %_Z21stbiw__linear_to_rgbePhPf.exit

_Z21stbiw__linear_to_rgbePhPf.exit:               ; preds = %bb.g, %bb.h
  %.sink = phi i8 [ 0, %bb.g ], [ %i.dq, %bb.h ]
  %.sink32.i = phi i8 [ 0, %bb.g ], [ %i.dw, %bb.h ]
  %.sink.i = phi i8 [ 0, %bb.g ], [ %i.du, %bb.h ]
  store i8 %.sink, ptr %i.e, align 1, !tbaa !59
  store i8 %.sink32.i, ptr %i.cu, align 1, !tbaa !59
  store i8 %.sink.i, ptr %i.cv, align 1, !tbaa !59
  %i.dx = load ptr, ptr %0, align 8, !tbaa !55
  %i.dy = load ptr, ptr %i.cw, align 8, !tbaa !56
  call void %i.dx(ptr noundef %i.dy, ptr noundef nonnull %i.e, i32 noundef 4)
  %indvars.iv.next187 = add nuw nsw i64 %indvars.iv186, 1 ; 2 uses
  %exitcond190.not = icmp eq i64 %indvars.iv.next187, %wide.trip.count189
  br i1 %exitcond190.not, label %.loopexit, label %bb.c, !llvm.loop !279

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader323, %_Z21stbiw__linear_to_rgbePhPf.exit119
  %indvars.iv = phi i64 [ %indvars.iv.next, %_Z21stbiw__linear_to_rgbePhPf.exit119 ], [ %indvars.iv.ph, %.lr.ph.split.preheader323 ] ; 6 uses
  %i.dz = mul nsw i64 %indvars.iv, %i.q
  %i.ea = getelementptr inbounds [4 x i8], ptr %4, i64 %i.dz
  %i.eb = load float, ptr %i.ea, align 4, !tbaa !61 ; 4 uses
  %i.ec = fcmp olt float %i.eb, 1.000000e-32
  br i1 %i.ec, label %_Z21stbiw__linear_to_rgbePhPf.exit119, label %bb.i

bb.i:                                             ; preds = %.lr.ph.split
  %i.ed = tail call { float, i32 } @llvm.frexp.f32.i32(float %i.eb) ; 2 uses
  %i.ee = extractvalue { float, i32 } %i.ed, 1
  %i.ef = extractvalue { float, i32 } %i.ed, 0
  %i.eg = fmul float %i.ef, 2.560000e+02
  %i.eh = fdiv float %i.eg, %i.eb
  %i.ei = fmul float %i.eb, %i.eh
  %i.ej = fptoui float %i.ei to i8
  %i.ek = trunc i32 %i.ee to i8
  %i.el = xor i8 %i.ek, -128
  br label %_Z21stbiw__linear_to_rgbePhPf.exit119

_Z21stbiw__linear_to_rgbePhPf.exit119:            ; preds = %.lr.ph.split, %bb.i
  %i.em = phi i8 [ %i.ej, %bb.i ], [ 0, %.lr.ph.split ] ; 3 uses
  %.sink32.i117 = phi i8 [ %i.el, %bb.i ], [ 0, %.lr.ph.split ]
  %i.en = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv
  store i8 %i.em, ptr %i.en, align 1, !tbaa !59
  %gep = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %indvars.iv
  store i8 %i.em, ptr %gep, align 1, !tbaa !59
  %gep201 = getelementptr inbounds nuw i8, ptr %invariant.gep200, i64 %indvars.iv
  store i8 %i.em, ptr %gep201, align 1, !tbaa !59
  %gep203 = getelementptr inbounds nuw i8, ptr %invariant.gep202, i64 %indvars.iv
  store i8 %.sink32.i117, ptr %gep203, align 1, !tbaa !59
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader129.lr.ph.preheader, label %.lr.ph.split, !llvm.loop !280

.preheader129.lr.ph.preheader:                    ; preds = %_Z21stbiw__linear_to_rgbePhPf.exit119, %_Z21stbiw__linear_to_rgbePhPf.exit119.us, %middle.block, %middle.block312
  %i.eo = load ptr, ptr %0, align 8, !tbaa !55
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !56
  call void %i.eo(ptr noundef %i.eq, ptr noundef nonnull %i.d, i32 noundef 4)
  %i.er = zext nneg i32 %1 to i64                 ; 2 uses
  %i.es = zext nneg i32 %1 to i64
  %invariant.op = add nsw i64 %i.er, -3
  br label %.preheader129.lr.ph

end_hunk_0
