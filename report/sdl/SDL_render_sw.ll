Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sdl/original/SDL_render_sw?download=true
inline.NumInlined: 11
inline.NumDeleted: 4
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@SW_ChangeTexturePalette:bb.a
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @SW_CreateTexture(ptr nofree readnone captures(none) %0, ptr nofree noundef captures(none) %1, i32 %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.b = load i32, ptr %i.a, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i32, ptr %i.c, align 8
  %i.e = load i32, ptr %1, align 8
  %i.f = tail call ptr @SDL_CreateSurface_REAL(i32 noundef %i.b, i32 noundef %i.d, i32 noundef %i.e) #8 ; 8 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.6) #8
  br label %bb.u

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 312
  store ptr %i.f, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.j = load float, ptr %i.i, align 8            ; 3 uses
  %i.k = fcmp olt float %i.j, 0.000000e+00
  br i1 %i.k, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = fcmp ogt float %i.j, 1.000000e+00
  br i1 %i.l, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = fmul float %i.j, 2.550000e+02
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %i.n = phi float [ 0.000000e+00, %bb.c ], [ %i.m, %bb.e ], [ 2.550000e+02, %bb.d ]
  %i.o = tail call float @SDL_roundf_REAL(float noundef %i.n) #8
  %i.p = fptoui float %i.o to i8
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.r = load float, ptr %i.q, align 4            ; 3 uses
  %i.s = fcmp olt float %i.r, 0.000000e+00
  br i1 %i.s, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = fcmp ogt float %i.r, 1.000000e+00
  br i1 %i.t, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = fmul float %i.r, 2.550000e+02
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  %i.v = phi float [ 0.000000e+00, %bb.f ], [ %i.u, %bb.h ], [ 2.550000e+02, %bb.g ]
  %i.w = tail call float @SDL_roundf_REAL(float noundef %i.v) #8
  %i.x = fptoui float %i.w to i8
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.z = load float, ptr %i.y, align 8            ; 3 uses
  %i.aa = fcmp olt float %i.z, 0.000000e+00
  br i1 %i.aa, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ab = fcmp ogt float %i.z, 1.000000e+00
  br i1 %i.ab, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ac = fmul float %i.z, 2.550000e+02
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i
  %i.ad = phi float [ 0.000000e+00, %bb.i ], [ %i.ac, %bb.k ], [ 2.550000e+02, %bb.j ]
  %i.ae = tail call float @SDL_roundf_REAL(float noundef %i.ad) #8
  %i.af = fptoui float %i.ae to i8
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.ah = load float, ptr %i.ag, align 4          ; 3 uses
  %i.ai = fcmp olt float %i.ah, 0.000000e+00
  br i1 %i.ai, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aj = fcmp ogt float %i.ah, 1.000000e+00
  br i1 %i.aj, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ak = fmul float %i.ah, 2.550000e+02
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l
  %i.al = phi float [ 0.000000e+00, %bb.l ], [ %i.ak, %bb.n ], [ 2.550000e+02, %bb.m ]
  %i.am = tail call float @SDL_roundf_REAL(float noundef %i.al) #8
  %i.an = fptoui float %i.am to i8
  %i.ao = tail call zeroext i1 @SDL_SetSurfaceColorMod_REAL(ptr noundef nonnull %i.f, i8 noundef zeroext %i.p, i8 noundef zeroext %i.x, i8 noundef zeroext %i.af) #8 ; 0 uses
  %i.ap = tail call zeroext i1 @SDL_SetSurfaceAlphaMod_REAL(ptr noundef nonnull %i.f, i8 noundef zeroext %i.an) #8 ; 0 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ar = load i32, ptr %i.aq, align 8
  %i.as = tail call zeroext i1 @SDL_SetSurfaceBlendMode_REAL(ptr noundef nonnull %i.f, i32 noundef %i.ar) #8 ; 0 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.au = load i32, ptr %i.at, align 4            ; 4 uses
  %.not47 = icmp eq i32 %i.au, 0
  %.mask = and i32 %i.au, -268435456
  %.not48 = icmp eq i32 %.mask, 268435456
  %or.cond = or i1 %.not47, %.not48
  br i1 %or.cond, label %bb.p, label %bb.s

bb.p:                                             ; preds = %bb.o
  %i.av = lshr i32 %i.au, 24
  %i.aw = and i32 %i.av, 15
  switch i32 %i.aw, label %bb.s [
    i32 1, label %bb.q
    i32 12, label %bb.q
    i32 2, label %bb.q
    i32 3, label %bb.q
  ]

bb.q:                                             ; preds = %bb.p, %bb.p, %bb.p, %bb.p
  %i.ax = lshr i32 %i.au, 8
  %i.ay = and i32 %i.ax, 255
  %i.az = shl nuw i32 1, %i.ay
  %i.ba = tail call ptr @SDL_CreatePalette_REAL(i32 noundef %i.az) #8 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  store ptr %i.ba, ptr %i.bb, align 8
  %.not52 = icmp eq ptr %i.ba, null
  br i1 %.not52, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bc = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.7) #8
  br label %bb.u

bb.s:                                             ; preds = %bb.p, %bb.o, %bb.q
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.be = load i32, ptr %i.bd, align 4
  %i.bf = icmp eq i32 %i.be, 0
  br i1 %i.bf, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bg = tail call zeroext i1 @SDL_SetSurfaceRLE_REAL(ptr noundef nonnull %i.f, i1 noundef zeroext true) #8 ; 0 uses
  br label %bb.u

bb.u:                                             ; preds = %bb.r, %bb.t, %bb.s, %bb.b
  %.1 = phi i1 [ %i.g, %bb.b ], [ %i.bc, %bb.r ], [ true, %bb.t ], [ true, %bb.s ]
  ret i1 %.1
}

; Function Attrs: nounwind uwtable
define internal noundef zeroext i1 @SW_UpdateTexture(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 312
  %i.b = load ptr, ptr %i.a, align 8              ; 7 uses
  %i.c = load i32, ptr %i.b, align 8
  %i.d = and i32 %i.c, 2
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call zeroext i1 @SDL_LockSurface_REAL(ptr noundef nonnull %i.b) #8
  br i1 %i.e, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 5
  %i.j = load i8, ptr %i.i, align 1               ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.l = load i32, ptr %i.k, align 4
  %i.m = sext i32 %i.l to i64
  %i.n = zext i8 %i.j to i64
  %i.o = mul nsw i64 %i.m, %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  %i.q = load i32, ptr %i.p, align 4
  %i.r = icmp sgt i32 %i.q, 0
  br i1 %i.r, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = load i32, ptr %i.f, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.w = load i32, ptr %i.v, align 4
  %i.x = mul nsw i32 %i.u, %i.w
  %i.y = sext i32 %i.x to i64
  %i.z = getelementptr inbounds i8, ptr %i.t, i64 %i.y
  %i.aa = load i32, ptr %2, align 4
  %i.ab = zext i8 %i.j to i32
  %i.ac = mul nsw i32 %i.aa, %i.ab
  %i.ad = sext i32 %i.ac to i64
  %i.ae = getelementptr inbounds i8, ptr %i.z, i64 %i.ad
  %i.af = sext i32 %4 to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %.029 = phi i32 [ 0, %.lr.ph ], [ %i.ak, %bb.d ]
  %.02328 = phi ptr [ %i.ae, %.lr.ph ], [ %i.aj, %bb.d ] ; 2 uses
  %.02427 = phi ptr [ %3, %.lr.ph ], [ %i.ag, %bb.d ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.02328, ptr align 1 %.02427, i64 %i.o, i1 false)
  %i.ag = getelementptr inbounds i8, ptr %.02427, i64 %i.af
  %i.ah = load i32, ptr %i.f, align 8
  %i.ai = sext i32 %i.ah to i64
  %i.aj = getelementptr inbounds i8, ptr %.02328, i64 %i.ai
  %i.ak = add nuw nsw i32 %.029, 1                ; 2 uses
  %i.al = load i32, ptr %i.p, align 4
  %i.am = icmp slt i32 %i.ak, %i.al
  br i1 %i.am, label %bb.d, label %._crit_edge, !llvm.loop !9

._crit_edge:                                      ; preds = %bb.d, %bb.c
  %i.an = load i32, ptr %i.b, align 8
  %i.ao = and i32 %i.an, 2
  %.not26 = icmp eq i32 %i.ao, 0
  br i1 %.not26, label %bb.f, label %bb.e

bb.e:                                             ; preds = %._crit_edge
  tail call void @SDL_UnlockSurface_REAL(ptr noundef nonnull %i.b) #8
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge, %bb.e, %bb.b
  %.025 = phi i1 [ false, %bb.b ], [ true, %bb.e ], [ true, %._crit_edge ]
  ret i1 %.025
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef zeroext i1 @SW_LockTexture(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %3, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %4) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 312
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.f = load i32, ptr %i.e, align 4
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8
  %i.i = mul nsw i32 %i.h, %i.f
  %i.j = sext i32 %i.i to i64
  %i.k = getelementptr inbounds i8, ptr %i.d, i64 %i.j
  %i.l = load i32, ptr %2, align 4
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 5
  %i.p = load i8, ptr %i.o, align 1
  %i.q = zext i8 %i.p to i32
  %i.r = mul nsw i32 %i.l, %i.q
  %i.s = sext i32 %i.r to i64
  %i.t = getelementptr inbounds i8, ptr %i.k, i64 %i.s
  store ptr %i.t, ptr %3, align 8
  %i.u = load i32, ptr %i.g, align 8
  store i32 %i.u, ptr %4, align 4
  ret i1 true
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @SW_UnlockTexture(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1) #6 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef zeroext i1 @SW_SetRenderTarget(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(address_is_null) %1) #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 736
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq ptr %1, null
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 312
  %storemerge.in = select i1 %.not, ptr %i.c, ptr %i.d
  %storemerge = load ptr, ptr %storemerge.in, align 8
  store ptr %storemerge, ptr %i.b, align 8
  ret i1 true
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef zeroext i1 @SW_QueueNoOp(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1) #6 {
bb.a:
  ret i1 true
}

; Function Attrs: nounwind uwtable
define internal noundef zeroext i1 @SW_QueueDrawPoints(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) #0 {
bb.a:
  %i.a = sext i32 %3 to i64                       ; 2 uses
  %i.b = shl nsw i64 %i.a, 3
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = tail call ptr @SDL_AllocateRenderVertices(ptr noundef %0, i64 noundef %i.b, i64 noundef 0, ptr noundef nonnull %i.c) #8 ; 7 uses
  %.not = icmp ne ptr %i.d, null                  ; 2 uses
  br i1 %.not, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 %i.a, ptr %i.e, align 8
  %i.f = icmp sgt i32 %3, 0
  br i1 %i.f, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.g = zext nneg i32 %3 to i64                  ; 2 uses
  %min.iters.check = icmp ult i32 %3, 6
  br i1 %min.iters.check, label %.lr.ph.preheader28, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.h = add nsw i32 %3, -1
  %i.i = zext i32 %i.h to i64
  %i.j = shl nuw nsw i64 %i.i, 3
  %i.k = add nuw nsw i64 %i.j, 8                  ; 2 uses
  %scevgep = getelementptr i8, ptr %i.d, i64 %i.k
  %scevgep23 = getelementptr i8, ptr %2, i64 %i.k
  %bound0 = icmp ult ptr %i.d, %scevgep23
  %bound1 = icmp ult ptr %2, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader28, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.g, 2147483646               ; 4 uses
  %i.l = trunc nuw nsw i64 %n.vec to i32
  %i.m = shl nuw nsw i64 %n.vec, 3                ; 2 uses
  %i.n = getelementptr i8, ptr %i.d, i64 %i.m
  %i.o = getelementptr i8, ptr %2, i64 %i.m
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.p = shl i64 %index, 3                        ; 2 uses
  %next.gep = getelementptr i8, ptr %i.d, i64 %i.p
  %next.gep24 = getelementptr i8, ptr %2, i64 %i.p
  %wide.vec = load <4 x float>, ptr %next.gep24, align 4, !alias.scope !15
  %interleaved.vec = fptosi <4 x float> %wide.vec to <4 x i32>
  store <4 x i32> %interleaved.vec, ptr %next.gep, align 4, !alias.scope !16, !noalias !15
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.q = icmp eq i64 %index.next, %n.vec
  br i1 %i.q, label %middle.block, label %vector.body, !llvm.loop !13

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.g
  br i1 %cmp.n, label %.loopexit, label %.lr.ph.preheader28

.lr.ph.preheader28:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.021.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %i.l, %middle.block ] ; 4 uses
  %.01520.ph = phi ptr [ %i.d, %vector.memcheck ], [ %i.d, %.lr.ph.preheader ], [ %i.n, %middle.block ] ; 4 uses
  %.01719.ph = phi ptr [ %2, %vector.memcheck ], [ %2, %.lr.ph.preheader ], [ %i.o, %middle.block ] ; 4 uses
  %i.r = sub i32 %3, %.021.ph
  %.neg = add i32 %.021.ph, 1
  %xtraiter = and i32 %i.r, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader28
  %i.s = load float, ptr %.01719.ph, align 4
  %i.t = fptosi float %i.s to i32
  store i32 %i.t, ptr %.01520.ph, align 4
  %i.u = getelementptr inbounds nuw i8, ptr %.01719.ph, i64 4
  %i.v = load float, ptr %i.u, align 4
  %i.w = fptosi float %i.v to i32
  %i.x = getelementptr inbounds nuw i8, ptr %.01520.ph, i64 4
  store i32 %i.w, ptr %i.x, align 4
  %i.y = add nuw nsw i32 %.021.ph, 1
  %i.z = getelementptr inbounds nuw i8, ptr %.01520.ph, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %.01719.ph, i64 8
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader28
  %.021.unr = phi i32 [ %.021.ph, %.lr.ph.preheader28 ], [ %i.y, %.lr.ph.prol ]
  %.01520.unr = phi ptr [ %.01520.ph, %.lr.ph.preheader28 ], [ %i.z, %.lr.ph.prol ]
  %.01719.unr = phi ptr [ %.01719.ph, %.lr.ph.preheader28 ], [ %i.aa, %.lr.ph.prol ]
  %i.ab = icmp eq i32 %3, %.neg
  br i1 %i.ab, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.021 = phi i32 [ %i.aq, %.lr.ph ], [ %.021.unr, %.lr.ph.prol.loopexit ]
  %.01520 = phi ptr [ %i.ar, %.lr.ph ], [ %.01520.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %.01719 = phi ptr [ %i.as, %.lr.ph ], [ %.01719.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %i.ac = load float, ptr %.01719, align 4
  %i.ad = fptosi float %i.ac to i32
  store i32 %i.ad, ptr %.01520, align 4
  %i.ae = getelementptr inbounds nuw i8, ptr %.01719, i64 4
  %i.af = load float, ptr %i.ae, align 4
  %i.ag = fptosi float %i.af to i32
  %i.ah = getelementptr inbounds nuw i8, ptr %.01520, i64 4
  store i32 %i.ag, ptr %i.ah, align 4
  %i.ai = getelementptr inbounds nuw i8, ptr %.01520, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %.01719, i64 8
  %i.ak = load float, ptr %i.aj, align 4
  %i.al = fptosi float %i.ak to i32
  store i32 %i.al, ptr %i.ai, align 4
  %i.am = getelementptr inbounds nuw i8, ptr %.01719, i64 12
  %i.an = load float, ptr %i.am, align 4
  %i.ao = fptosi float %i.an to i32
  %i.ap = getelementptr inbounds nuw i8, ptr %.01520, i64 12
  store i32 %i.ao, ptr %i.ap, align 4
  %i.aq = add nuw nsw i32 %.021, 2                ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.01520, i64 16
  %i.as = getelementptr inbounds nuw i8, ptr %.01719, i64 16
  %exitcond.not.1 = icmp eq i32 %i.aq, %3
  br i1 %exitcond.not.1, label %.loopexit, label %.lr.ph, !llvm.loop !14

.loopexit:                                        ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %bb.b, %bb.a
  ret i1 %.not
}

; Function Attrs: nounwind uwtable
define internal noundef zeroext i1 @SW_QueueFillRects(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) #0 {
bb.a:
  %i.a = sext i32 %3 to i64                       ; 2 uses
  %i.b = shl nsw i64 %i.a, 4
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = tail call ptr @SDL_AllocateRenderVertices(ptr noundef %0, i64 noundef %i.b, i64 noundef 0, ptr noundef nonnull %i.c) #8 ; 2 uses
  %.not = icmp ne ptr %i.d, null                  ; 2 uses
  br i1 %.not, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 %i.a, ptr %i.e, align 8
  %i.f = icmp sgt i32 %3, 0
  br i1 %i.f, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.b, %bb.f
  %.037 = phi i32 [ %i.aa, %bb.f ], [ 0, %bb.b ]
  %.02936 = phi ptr [ %i.ab, %bb.f ], [ %i.d, %bb.b ] ; 6 uses
  %.03135 = phi ptr [ %i.ac, %bb.f ], [ %2, %bb.b ] ; 5 uses
  %i.g = load float, ptr %.03135, align 4
  %i.h = fptosi float %i.g to i32                 ; 2 uses
  store i32 %i.h, ptr %.02936, align 4
  %i.i = getelementptr inbounds nuw i8, ptr %.03135, i64 8
  %i.j = load float, ptr %i.i, align 4
  %i.k = fptosi float %i.j to i32                 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.02936, i64 8 ; 2 uses
  store i32 %i.k, ptr %i.l, align 4
  %i.m = icmp slt i32 %i.k, 0
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph
  %i.n = sub nsw i32 0, %i.k
  store i32 %i.n, ptr %i.l, align 4
  %i.o = add nsw i32 %i.k, %i.h
  store i32 %i.o, ptr %.02936, align 4
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph
  %i.p = getelementptr inbounds nuw i8, ptr %.03135, i64 4
  %i.q = load float, ptr %i.p, align 4
  %i.r = fptosi float %i.q to i32                 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.02936, i64 4 ; 2 uses
  store i32 %i.r, ptr %i.s, align 4
  %i.t = getelementptr inbounds nuw i8, ptr %.03135, i64 12
  %i.u = load float, ptr %i.t, align 4
  %i.v = fptosi float %i.u to i32                 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.02936, i64 12 ; 2 uses
  store i32 %i.v, ptr %i.w, align 4
  %i.x = icmp slt i32 %i.v, 0
  br i1 %i.x, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.y = sub nsw i32 0, %i.v
  store i32 %i.y, ptr %i.w, align 4
  %i.z = add nsw i32 %i.v, %i.r
  store i32 %i.z, ptr %i.s, align 4
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.aa = add nuw nsw i32 %.037, 1                ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.02936, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %.03135, i64 16
  %exitcond.not = icmp eq i32 %i.aa, %3
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !17

.loopexit:                                        ; preds = %bb.f, %bb.b, %bb.a
  ret i1 %.not
}

; Function Attrs: nounwind uwtable
define internal noundef zeroext i1 @SW_QueueCopy(ptr noundef %0, ptr noundef %1, ptr nofree readnone captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = tail call ptr @SDL_AllocateRenderVertices(ptr noundef %0, i64 noundef 32, i64 noundef 0, ptr noundef nonnull %i.a) #8 ; 15 uses
  %.not = icmp ne ptr %i.b, null                  ; 2 uses
  br i1 %.not, label %bb.b, label %.rtcont

bb.b:                                             ; preds = %bb.a
  %i.c = ptrtoaddr ptr %i.b to i64                ; 2 uses
  %i.d = ptrtoaddr ptr %3 to i64                  ; 2 uses
  %i.e = add i64 %i.d, 16
  %i.f = add i64 %i.c, 32
  %rt.bound0 = icmp ugt i64 %i.e, %i.c
  %rt.bound1 = icmp ugt i64 %i.f, %i.d
  %rt.conflict = and i1 %rt.bound0, %rt.bound1
  %rt.guard = freeze i1 %rt.conflict
  br i1 %rt.guard, label %.rtscalar, label %.rtvec, !prof !6

.rtcont:                                          ; preds = %.rtvec, %.rtscalar, %bb.a
  ret i1 %.not

.rtvec:                                           ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 1, ptr %i.g, align 8
  %i.h = load <4 x float>, ptr %3, align 4
  %i.i = fptosi <4 x float> %i.h to <4 x i32>
  store <4 x i32> %i.i, ptr %i.b, align 4
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.k = load float, ptr %4, align 4
  %i.l = fptosi float %i.k to i32
  store i32 %i.l, ptr %i.j, align 4
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.n = load float, ptr %i.m, align 4
  %i.o = fptosi float %i.n to i32
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  store i32 %i.o, ptr %i.p, align 4
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.r = load float, ptr %i.q, align 4
  %i.s = fptosi float %i.r to i32
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i32 %i.s, ptr %i.t, align 4
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.v = load float, ptr %i.u, align 4
  %i.w = fptosi float %i.v to i32
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  store i32 %i.w, ptr %i.x, align 4
  br label %.rtcont

.rtscalar:                                        ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 1, ptr %i.y, align 8
  %i.z = load float, ptr %3, align 4
  %i.aa = fptosi float %i.z to i32
  store i32 %i.aa, ptr %i.b, align 4
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.ac = load float, ptr %i.ab, align 4
  %i.ad = fptosi float %i.ac to i32
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 %i.ad, ptr %i.ae, align 4
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ag = load float, ptr %i.af, align 4
  %i.ah = fptosi float %i.ag to i32
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 %i.ah, ptr %i.ai, align 4
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.ak = load float, ptr %i.aj, align 4
  %i.al = fptosi float %i.ak to i32
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 %i.al, ptr %i.am, align 4
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ao = load float, ptr %4, align 4
  %i.ap = fptosi float %i.ao to i32
  store i32 %i.ap, ptr %i.an, align 4
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.ar = load float, ptr %i.aq, align 4
  %i.as = fptosi float %i.ar to i32
  %i.at = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  store i32 %i.as, ptr %i.at, align 4
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.av = load float, ptr %i.au, align 4
  %i.aw = fptosi float %i.av to i32
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i32 %i.aw, ptr %i.ax, align 4
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.az = load float, ptr %i.ay, align 4
  %i.ba = fptosi float %i.az to i32
  %i.bb = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  store i32 %i.ba, ptr %i.bb, align 4
  br label %.rtcont
}

; Function Attrs: nounwind uwtable
define internal noundef zeroext i1 @SW_QueueCopyEx(ptr noundef %0, ptr noundef %1, ptr nofree readnone captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, double noundef %5, ptr nofree noundef readonly captures(none) %6, i32 noundef %7, float noundef %8, float noundef %9) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = tail call ptr @SDL_AllocateRenderVertices(ptr noundef %0, i64 noundef 64, i64 noundef 0, ptr noundef nonnull %i.a) #8 ; 25 uses
  %.not = icmp ne ptr %i.b, null                  ; 2 uses
  br i1 %.not, label %bb.b, label %.rtcont

bb.b:                                             ; preds = %bb.a
  %i.c = ptrtoaddr ptr %i.b to i64                ; 2 uses
  %i.d = ptrtoaddr ptr %3 to i64                  ; 2 uses
  %i.e = add i64 %i.d, 16
  %i.f = add i64 %i.c, 60
  %rt.bound0 = icmp ugt i64 %i.e, %i.c
  %rt.bound1 = icmp ugt i64 %i.f, %i.d
  %rt.conflict = and i1 %rt.bound0, %rt.bound1
  %rt.guard = freeze i1 %rt.conflict
  br i1 %rt.guard, label %.rtscalar, label %.rtvec, !prof !6

.rtcont:                                          ; preds = %.rtvec, %.rtscalar, %bb.a
  ret i1 %.not

.rtvec:                                           ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 1, ptr %i.g, align 8
  %i.h = load <4 x float>, ptr %3, align 4
  %i.i = fptosi <4 x float> %i.h to <4 x i32>
  store <4 x i32> %i.i, ptr %i.b, align 8
  %i.j = load float, ptr %4, align 4
  %i.k = fptosi float %i.j to i32
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i32 %i.k, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.n = load float, ptr %i.m, align 4
  %i.o = fptosi float %i.n to i32
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  store i32 %i.o, ptr %i.p, align 4
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.r = load float, ptr %i.q, align 4
  %i.s = fptosi float %i.r to i32
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i32 %i.s, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.v = load float, ptr %i.u, align 4
  %i.w = fptosi float %i.v to i32
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  store i32 %i.w, ptr %i.x, align 4
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store double %5, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.aa = load i64, ptr %6, align 4
  store i64 %i.aa, ptr %i.z, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store i32 %7, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 52
  store float %8, ptr %i.ac, align 4
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store float %9, ptr %i.ad, align 8
  br label %.rtcont

.rtscalar:                                        ; preds = %bb.b
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 1, ptr %i.ae, align 8
  %i.af = load float, ptr %3, align 4
  %i.ag = fptosi float %i.af to i32
  store i32 %i.ag, ptr %i.b, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.ai = load float, ptr %i.ah, align 4
  %i.aj = fptosi float %i.ai to i32
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 %i.aj, ptr %i.ak, align 4
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.am = load float, ptr %i.al, align 4
  %i.an = fptosi float %i.am to i32
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 %i.an, ptr %i.ao, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.aq = load float, ptr %i.ap, align 4
  %i.ar = fptosi float %i.aq to i32
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 %i.ar, ptr %i.as, align 4
  %i.at = load float, ptr %4, align 4
  %i.au = fptosi float %i.at to i32
  %i.av = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i32 %i.au, ptr %i.av, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.ax = load float, ptr %i.aw, align 4
  %i.ay = fptosi float %i.ax to i32
  %i.az = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  store i32 %i.ay, ptr %i.az, align 4
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bb = load float, ptr %i.ba, align 4
  %i.bc = fptosi float %i.bb to i32
  %i.bd = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i32 %i.bc, ptr %i.bd, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.bf = load float, ptr %i.be, align 4
  %i.bg = fptosi float %i.bf to i32
  %i.bh = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  store i32 %i.bg, ptr %i.bh, align 4
  %i.bi = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store double %5, ptr %i.bi, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.bk = load i64, ptr %6, align 4
  store i64 %i.bk, ptr %i.bj, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store i32 %7, ptr %i.bl, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.b, i64 52
  store float %8, ptr %i.bm, align 4
  %i.bn = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store float %9, ptr %i.bn, align 8
  br label %.rtcont
}

; Function Attrs: nounwind uwtable
define internal noundef zeroext i1 @SW_QueueGeometry(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(address_is_null) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4, ptr nofree noundef readonly captures(none) %5, i32 noundef %6, ptr nofree noundef readonly captures(none) %7, i32 noundef %8, i32 noundef %9, ptr nofree noundef readonly captures(address_is_null) %10, i32 noundef %11, i32 noundef %12, float noundef %13, float noundef %14) #0 {
bb.a:
  %.not = icmp eq ptr %10, null                   ; 2 uses
  %i.a = select i1 %.not, i32 %9, i32 %11         ; 4 uses
  %.not140 = icmp eq ptr %2, null                 ; 2 uses
  %i.b = select i1 %.not140, i64 12, i64 20
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load float, ptr %i.d, align 8            ; 6 uses
  %i.f = sext i32 %i.a to i64                     ; 2 uses
  %i.g = mul nsw i64 %i.b, %i.f
  %i.h = tail call ptr @SDL_AllocateRenderVertices(ptr noundef %0, i64 noundef %i.g, i64 noundef 0, ptr noundef nonnull %i.c) #8 ; 3 uses
  %.not141 = icmp ne ptr %i.h, null               ; 2 uses
  br i1 %.not141, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 %i.f, ptr %i.i, align 8
  %i.j = select i1 %.not, i32 0, i32 %12          ; 2 uses
  %i.k = icmp sgt i32 %i.a, 0                     ; 2 uses
  br i1 %.not140, label %.preheader, label %.preheader142

.preheader142:                                    ; preds = %bb.b
  br i1 %i.k, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader142
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8
  %wide.trip.count = zext nneg i32 %i.a to i64
  br label %bb.c

.preheader:                                       ; preds = %bb.b
  br i1 %i.k, label %.lr.ph148.preheader, label %.loopexit

.lr.ph148.preheader:                              ; preds = %.preheader
  %wide.trip.count154 = zext nneg i32 %i.a to i64
  br label %.lr.ph148

bb.c:                                             ; preds = %.lr.ph, %bb.o
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.o ] ; 5 uses
  %.0128145 = phi ptr [ %i.h, %.lr.ph ], [ %i.cj, %bb.o ] ; 9 uses
  %i.n = trunc nuw nsw i64 %indvars.iv to i32
  switch i32 %i.j, label %bb.g [
    i32 4, label %bb.d
    i32 2, label %bb.e
    i32 1, label %bb.f
  ]

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %10, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw [2 x i8], ptr %10, i64 %indvars.iv
  %i.r = load i16, ptr %i.q, align 2
  %i.s = zext i16 %i.r to i32
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %10, i64 %indvars.iv
  %i.u = load i8, ptr %i.t, align 1
  %i.v = zext i8 %i.u to i32
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %bb.e, %bb.f, %bb.d
  %.0127 = phi i32 [ %i.p, %bb.d ], [ %i.s, %bb.e ], [ %i.v, %bb.f ], [ %i.n, %bb.c ] ; 3 uses
  %i.w = mul nsw i32 %.0127, %4
  %i.x = sext i32 %i.w to i64
  %i.y = getelementptr inbounds i8, ptr %3, i64 %i.x ; 2 uses
  %i.z = mul nsw i32 %.0127, %6
  %i.aa = sext i32 %i.z to i64
  %i.ab = getelementptr inbounds i8, ptr %5, i64 %i.aa ; 4 uses
  %.sroa.021.0.copyload = load float, ptr %i.ab, align 4
  %.sroa.624.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  %.sroa.624.0.copyload = load float, ptr %.sroa.624.0..sroa_idx, align 4
  %.sroa.927.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.sroa.927.0.copyload = load float, ptr %.sroa.927.0..sroa_idx, align 4
  %.sroa.1230.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 12
  %.sroa.1230.0.copyload = load float, ptr %.sroa.1230.0..sroa_idx, align 4 ; 3 uses
  %i.ac = mul nsw i32 %.0127, %8
  %i.ad = sext i32 %i.ac to i64
  %i.ae = getelementptr inbounds i8, ptr %7, i64 %i.ad ; 2 uses
  %i.af = load float, ptr %i.ae, align 4
  %i.ag = load i32, ptr %i.l, align 4
  %i.ah = sitofp i32 %i.ag to float
  %i.ai = fmul float %i.af, %i.ah
  %i.aj = fptosi float %i.ai to i32
  store i32 %i.aj, ptr %.0128145, align 4
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  %i.al = load float, ptr %i.ak, align 4
  %i.am = load i32, ptr %i.m, align 8
  %i.an = sitofp i32 %i.am to float
  %i.ao = fmul float %i.al, %i.an
  %i.ap = fptosi float %i.ao to i32
  %i.aq = getelementptr inbounds nuw i8, ptr %.0128145, i64 4
  store i32 %i.ap, ptr %i.aq, align 4
  %i.ar = load float, ptr %i.y, align 4
  %i.as = fmul float %13, %i.ar
  %i.at = fptosi float %i.as to i32
  %i.au = getelementptr inbounds nuw i8, ptr %.0128145, i64 8 ; 2 uses
  store i32 %i.at, ptr %i.au, align 4
  %i.av = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  %i.aw = load float, ptr %i.av, align 4
  %i.ax = fmul float %14, %i.aw
  %i.ay = fptosi float %i.ax to i32
  %i.az = getelementptr inbounds nuw i8, ptr %.0128145, i64 12
  store i32 %i.ay, ptr %i.az, align 4
  tail call void @trianglepoint_2_fixedpoint(ptr noundef nonnull %i.au) #8
  %i.ba = fmul float %i.e, %.sroa.021.0.copyload  ; 3 uses
  %i.bb = fcmp olt float %i.ba, 0.000000e+00
  br i1 %i.bb, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bc = fcmp ogt float %i.ba, 1.000000e+00
  %i.bd = select i1 %i.bc, float 1.000000e+00, float %i.ba
  %i.be = fmul float %i.bd, 2.550000e+02
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.bf = phi float [ %i.be, %bb.h ], [ 0.000000e+00, %bb.g ]
  %i.bg = tail call float @SDL_roundf_REAL(float noundef %i.bf) #8
  %i.bh = fptoui float %i.bg to i8
  %i.bi = getelementptr inbounds nuw i8, ptr %.0128145, i64 16
  store i8 %i.bh, ptr %i.bi, align 4
  %i.bj = fmul float %i.e, %.sroa.624.0.copyload  ; 3 uses
  %i.bk = fcmp olt float %i.bj, 0.000000e+00
  br i1 %i.bk, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bl = fcmp ogt float %i.bj, 1.000000e+00
  %i.bm = select i1 %i.bl, float 1.000000e+00, float %i.bj
  %i.bn = fmul float %i.bm, 2.550000e+02
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %i.bo = phi float [ %i.bn, %bb.j ], [ 0.000000e+00, %bb.i ]
  %i.bp = tail call float @SDL_roundf_REAL(float noundef %i.bo) #8
  %i.bq = fptoui float %i.bp to i8
  %i.br = getelementptr inbounds nuw i8, ptr %.0128145, i64 17
  store i8 %i.bq, ptr %i.br, align 1
  %i.bs = fmul float %i.e, %.sroa.927.0.copyload  ; 3 uses
  %i.bt = fcmp olt float %i.bs, 0.000000e+00
  br i1 %i.bt, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bu = fcmp ogt float %i.bs, 1.000000e+00
  %i.bv = select i1 %i.bu, float 1.000000e+00, float %i.bs
  %i.bw = fmul float %i.bv, 2.550000e+02
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  %i.bx = phi float [ %i.bw, %bb.l ], [ 0.000000e+00, %bb.k ]
  %i.by = tail call float @SDL_roundf_REAL(float noundef %i.bx) #8
  %i.bz = fptoui float %i.by to i8
  %i.ca = getelementptr inbounds nuw i8, ptr %.0128145, i64 18
  store i8 %i.bz, ptr %i.ca, align 2
  %i.cb = fcmp olt float %.sroa.1230.0.copyload, 0.000000e+00
  br i1 %i.cb, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cc = fcmp ogt float %.sroa.1230.0.copyload, 1.000000e+00
  %i.cd = select i1 %i.cc, float 1.000000e+00, float %.sroa.1230.0.copyload
  %i.ce = fmul float %i.cd, 2.550000e+02
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n
  %i.cf = phi float [ %i.ce, %bb.n ], [ 0.000000e+00, %bb.m ]
  %i.cg = tail call float @SDL_roundf_REAL(float noundef %i.cf) #8
  %i.ch = fptoui float %i.cg to i8
  %i.ci = getelementptr inbounds nuw i8, ptr %.0128145, i64 19
  store i8 %i.ch, ptr %i.ci, align 1
  %i.cj = getelementptr inbounds nuw i8, ptr %.0128145, i64 20
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.c, !llvm.loop !18

.lr.ph148:                                        ; preds = %.lr.ph148.preheader, %bb.aa
  %indvars.iv151 = phi i64 [ 0, %.lr.ph148.preheader ], [ %indvars.iv.next152, %bb.aa ] ; 5 uses
  %.0126147 = phi ptr [ %i.h, %.lr.ph148.preheader ], [ %i.eq, %bb.aa ] ; 8 uses
  %i.ck = trunc nuw nsw i64 %indvars.iv151 to i32
  switch i32 %i.j, label %bb.s [
    i32 4, label %bb.p
    i32 2, label %bb.q
    i32 1, label %bb.r
  ]

bb.p:                                             ; preds = %.lr.ph148
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %10, i64 %indvars.iv151
  %i.cm = load i32, ptr %i.cl, align 4
  br label %bb.s

bb.q:                                             ; preds = %.lr.ph148
  %i.cn = getelementptr inbounds nuw [2 x i8], ptr %10, i64 %indvars.iv151
  %i.co = load i16, ptr %i.cn, align 2
  %i.cp = zext i16 %i.co to i32
  br label %bb.s

bb.r:                                             ; preds = %.lr.ph148
  %i.cq = getelementptr inbounds nuw i8, ptr %10, i64 %indvars.iv151
  %i.cr = load i8, ptr %i.cq, align 1
  %i.cs = zext i8 %i.cr to i32
  br label %bb.s

bb.s:                                             ; preds = %.lr.ph148, %bb.q, %bb.r, %bb.p
  %.0 = phi i32 [ %i.cm, %bb.p ], [ %i.cp, %bb.q ], [ %i.cs, %bb.r ], [ %i.ck, %.lr.ph148 ] ; 2 uses
  %i.ct = mul nsw i32 %.0, %4
  %i.cu = sext i32 %i.ct to i64
  %i.cv = getelementptr inbounds i8, ptr %3, i64 %i.cu ; 2 uses
  %i.cw = mul nsw i32 %.0, %6
  %i.cx = sext i32 %i.cw to i64
  %i.cy = getelementptr inbounds i8, ptr %5, i64 %i.cx ; 4 uses
  %.sroa.0.0.copyload = load float, ptr %i.cy, align 4
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cy, i64 4
  %.sroa.6.0.copyload = load float, ptr %.sroa.6.0..sroa_idx, align 4
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %.sroa.9.0.copyload = load float, ptr %.sroa.9.0..sroa_idx, align 4
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cy, i64 12
  %.sroa.12.0.copyload = load float, ptr %.sroa.12.0..sroa_idx, align 4 ; 3 uses
  %i.cz = load float, ptr %i.cv, align 4
  %i.da = fmul float %13, %i.cz
  %i.db = fptosi float %i.da to i32
  store i32 %i.db, ptr %.0126147, align 4
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cv, i64 4
  %i.dd = load float, ptr %i.dc, align 4
  %i.de = fmul float %14, %i.dd
  %i.df = fptosi float %i.de to i32
  %i.dg = getelementptr inbounds nuw i8, ptr %.0126147, i64 4
  store i32 %i.df, ptr %i.dg, align 4
  tail call void @trianglepoint_2_fixedpoint(ptr noundef nonnull %.0126147) #8
  %i.dh = fmul float %i.e, %.sroa.0.0.copyload    ; 3 uses
  %i.di = fcmp olt float %i.dh, 0.000000e+00
  br i1 %i.di, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dj = fcmp ogt float %i.dh, 1.000000e+00
  %i.dk = select i1 %i.dj, float 1.000000e+00, float %i.dh
  %i.dl = fmul float %i.dk, 2.550000e+02
  br label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.t
  %i.dm = phi float [ %i.dl, %bb.t ], [ 0.000000e+00, %bb.s ]
  %i.dn = tail call float @SDL_roundf_REAL(float noundef %i.dm) #8
  %i.do = fptoui float %i.dn to i8
  %i.dp = getelementptr inbounds nuw i8, ptr %.0126147, i64 8
  store i8 %i.do, ptr %i.dp, align 4
  %i.dq = fmul float %i.e, %.sroa.6.0.copyload    ; 3 uses
  %i.dr = fcmp olt float %i.dq, 0.000000e+00
  br i1 %i.dr, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ds = fcmp ogt float %i.dq, 1.000000e+00
  %i.dt = select i1 %i.ds, float 1.000000e+00, float %i.dq
  %i.du = fmul float %i.dt, 2.550000e+02
  br label %bb.w

bb.w:                                             ; preds = %bb.u, %bb.v
  %i.dv = phi float [ %i.du, %bb.v ], [ 0.000000e+00, %bb.u ]
  %i.dw = tail call float @SDL_roundf_REAL(float noundef %i.dv) #8
  %i.dx = fptoui float %i.dw to i8
  %i.dy = getelementptr inbounds nuw i8, ptr %.0126147, i64 9
  store i8 %i.dx, ptr %i.dy, align 1
  %i.dz = fmul float %i.e, %.sroa.9.0.copyload    ; 3 uses
  %i.ea = fcmp olt float %i.dz, 0.000000e+00
  br i1 %i.ea, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.eb = fcmp ogt float %i.dz, 1.000000e+00
  %i.ec = select i1 %i.eb, float 1.000000e+00, float %i.dz
  %i.ed = fmul float %i.ec, 2.550000e+02
  br label %bb.y

bb.y:                                             ; preds = %bb.w, %bb.x
  %i.ee = phi float [ %i.ed, %bb.x ], [ 0.000000e+00, %bb.w ]
  %i.ef = tail call float @SDL_roundf_REAL(float noundef %i.ee) #8
  %i.eg = fptoui float %i.ef to i8
  %i.eh = getelementptr inbounds nuw i8, ptr %.0126147, i64 10
  store i8 %i.eg, ptr %i.eh, align 2
  %i.ei = fcmp olt float %.sroa.12.0.copyload, 0.000000e+00
  br i1 %i.ei, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ej = fcmp ogt float %.sroa.12.0.copyload, 1.000000e+00
  %i.ek = select i1 %i.ej, float 1.000000e+00, float %.sroa.12.0.copyload
  %i.el = fmul float %i.ek, 2.550000e+02
  br label %bb.aa

bb.aa:                                            ; preds = %bb.y, %bb.z
  %i.em = phi float [ %i.el, %bb.z ], [ 0.000000e+00, %bb.y ]
  %i.en = tail call float @SDL_roundf_REAL(float noundef %i.em) #8
  %i.eo = fptoui float %i.en to i8
  %i.ep = getelementptr inbounds nuw i8, ptr %.0126147, i64 11
  store i8 %i.eo, ptr %i.ep, align 1
  %i.eq = getelementptr inbounds nuw i8, ptr %.0126147, i64 12
  %indvars.iv.next152 = add nuw nsw i64 %indvars.iv151, 1 ; 2 uses
  %exitcond155.not = icmp eq i64 %indvars.iv.next152, %wide.trip.count154
  br i1 %exitcond155.not, label %.loopexit, label %.lr.ph148, !llvm.loop !19

.loopexit:                                        ; preds = %bb.o, %bb.aa, %.preheader142, %.preheader, %bb.a
  ret i1 %.not141
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @SW_InvalidateCachedState(ptr nofree readnone captures(none) %0) #6 {
bb.a:
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef zeroext i1 @SW_RunCommandQueue(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2, i64 %3) #0 {
bb.a:
  %4 = alloca %struct.SDL_Rect, align 16          ; 4 uses
  %5 = alloca %struct.SDL_Rect, align 16          ; 4 uses
  %6 = alloca %struct.SDL_Rect, align 16          ; 4 uses
  %7 = alloca %struct.SDL_Rect, align 16          ; 14 uses
  %i.a = alloca i32, align 4                      ; 10 uses
  %i.b = alloca i8, align 1                       ; 7 uses
  %i.c = alloca i8, align 1                       ; 6 uses
  %i.d = alloca i8, align 1                       ; 6 uses
  %i.e = alloca i8, align 1                       ; 6 uses
  %8 = alloca %struct.SDL_Rect, align 4           ; 5 uses
  %9 = alloca %struct.SDL_Rect, align 8           ; 7 uses
  %i.f = alloca double, align 8                   ; 5 uses
  %i.g = alloca double, align 8                   ; 5 uses
  %10 = alloca %struct.SDL_Rect, align 16         ; 9 uses
  %11 = alloca %struct.SW_DrawStateCache, align 8 ; 23 uses
  %12 = alloca %struct.SDL_Rect, align 4          ; 6 uses
  %i.h = alloca i32, align 4                      ; 4 uses
  %i.i = alloca i8, align 1                       ; 4 uses
  %i.j = alloca i8, align 1                       ; 4 uses
  %i.k = alloca i8, align 1                       ; 4 uses
  %i.l = alloca i8, align 1                       ; 4 uses
  %13 = alloca %struct.SDL_Point, align 8         ; 5 uses
  %14 = alloca %struct.SDL_Point, align 8         ; 5 uses
  %i.m = getelementptr i8, ptr %0, i64 280
  %.val = load ptr, ptr %i.m, align 8             ; 3 uses
  %i.n = getelementptr i8, ptr %0, i64 736
  %.val361 = load ptr, ptr %i.n, align 8          ; 6 uses
  %i.o = load ptr, ptr %.val361, align 8          ; 2 uses
  %.not.i = icmp eq ptr %i.o, null
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %.val361, i64 8
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  store ptr %i.q, ptr %.val361, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.r = phi ptr [ %i.q, %bb.b ], [ %i.o, %bb.a ] ; 3 uses
  %.not15.i = icmp eq ptr %.val, null
  br i1 %.not15.i, label %SW_ActivateRenderer.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not16.i = icmp eq ptr %i.r, null
  br i1 %.not16.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %.val, i64 264
  %i.t = load i8, ptr %i.s, align 8, !range !7, !noundef !8
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %SW_ActivateRenderer.exit, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.v = tail call ptr @SDL_GetWindowSurface_REAL(ptr noundef nonnull %.val) #8 ; 4 uses
  %.not17.i = icmp eq ptr %i.v, null
  br i1 %.not17.i, label %._crit_edge.i, label %bb.g

._crit_edge.i:                                    ; preds = %bb.f
  %.pre.i = load ptr, ptr %.val361, align 8
  br label %SW_ActivateRenderer.exit

bb.g:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %.val361, i64 8
  store ptr %i.v, ptr %i.w, align 8
  store ptr %i.v, ptr %.val361, align 8
  br label %SW_ActivateRenderer.exit

SW_ActivateRenderer.exit:                         ; preds = %bb.c, %bb.e, %._crit_edge.i, %bb.g
  %i.x = phi ptr [ %.pre.i, %._crit_edge.i ], [ %i.v, %bb.g ], [ %i.r, %bb.e ], [ %i.r, %bb.c ] ; 35 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #8
  %i.y = tail call zeroext i1 @SDL_SurfaceValid(ptr noundef %i.x) #8 ; 2 uses
  br i1 %i.y, label %bb.h, label %.loopexit375

bb.h:                                             ; preds = %SW_ActivateRenderer.exit
  %i.z = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %11, i8 0, i64 16, i1 false)
  store i8 1, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %11, i64 17 ; 8 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %11, i64 18 ; 7 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %11, i64 19 ; 7 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %11, i64 20 ; 7 uses
  %.not398 = icmp eq ptr %1, null
  store i32 0, ptr %i.ab, align 1
  br i1 %.not398, label %.loopexit375, label %.lr.ph401

.lr.ph401:                                        ; preds = %bb.h
  %i.af = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.ag = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %7, i64 12
  %i.ai = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.x, i64 12
  %i.al = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.am = getelementptr inbounds nuw i8, ptr %12, i64 4
  %i.an = getelementptr inbounds nuw i8, ptr %12, i64 8
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph401, %.loopexit373
  %.0300399 = phi ptr [ %1, %.lr.ph401 ], [ %i.aai, %.loopexit373 ] ; 39 uses
  %i.ao = load i32, ptr %.0300399, align 8
  switch i32 %i.ao, label %.loopexit373 [
    i32 3, label %bb.j
    i32 1, label %bb.w
    i32 2, label %bb.x
    i32 4, label %bb.y
    i32 5, label %bb.al
    i32 6, label %bb.ar
    i32 7, label %bb.ax
    i32 8, label %bb.be
    i32 9, label %bb.bw
    i32 10, label %bb.ea
  ]

bb.j:                                             ; preds = %bb.i
  %i.ap = getelementptr inbounds nuw i8, ptr %.0300399, i64 20
  %i.aq = load float, ptr %i.ap, align 4
  %i.ar = getelementptr inbounds nuw i8, ptr %.0300399, i64 16 ; 3 uses
  %i.as = load float, ptr %i.ar, align 8
  %i.at = fmul float %i.aq, %i.as                 ; 3 uses
  %i.au = fcmp olt float %i.at, 0.000000e+00
  br i1 %i.au, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.av = fcmp ogt float %i.at, 1.000000e+00
  br i1 %i.av, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aw = fmul float %i.at, 2.550000e+02
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j
  %i.ax = phi float [ 0.000000e+00, %bb.j ], [ %i.aw, %bb.l ], [ 2.550000e+02, %bb.k ]
  %i.ay = call float @SDL_roundf_REAL(float noundef %i.ax) #8
  %i.az = fptoui float %i.ay to i8
  store i8 %i.az, ptr %i.ab, align 1
  %i.ba = getelementptr inbounds nuw i8, ptr %.0300399, i64 24
  %i.bb = load float, ptr %i.ba, align 8
  %i.bc = load float, ptr %i.ar, align 8
  %i.bd = fmul float %i.bb, %i.bc                 ; 3 uses
  %i.be = fcmp olt float %i.bd, 0.000000e+00
  br i1 %i.be, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bf = fcmp ogt float %i.bd, 1.000000e+00
  br i1 %i.bf, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bg = fmul float %i.bd, 2.550000e+02
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m
  %i.bh = phi float [ 0.000000e+00, %bb.m ], [ %i.bg, %bb.o ], [ 2.550000e+02, %bb.n ]
  %i.bi = call float @SDL_roundf_REAL(float noundef %i.bh) #8
  %i.bj = fptoui float %i.bi to i8
  store i8 %i.bj, ptr %i.ac, align 2
  %i.bk = getelementptr inbounds nuw i8, ptr %.0300399, i64 28
  %i.bl = load float, ptr %i.bk, align 4
  %i.bm = load float, ptr %i.ar, align 8
  %i.bn = fmul float %i.bl, %i.bm                 ; 3 uses
  %i.bo = fcmp olt float %i.bn, 0.000000e+00
  br i1 %i.bo, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bp = fcmp ogt float %i.bn, 1.000000e+00
  br i1 %i.bp, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bq = fmul float %i.bn, 2.550000e+02
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.p
  %i.br = phi float [ 0.000000e+00, %bb.p ], [ %i.bq, %bb.r ], [ 2.550000e+02, %bb.q ]
  %i.bs = call float @SDL_roundf_REAL(float noundef %i.br) #8
  %i.bt = fptoui float %i.bs to i8
  store i8 %i.bt, ptr %i.ad, align 1
  %i.bu = getelementptr inbounds nuw i8, ptr %.0300399, i64 32
  %i.bv = load float, ptr %i.bu, align 8          ; 3 uses
  %i.bw = fcmp olt float %i.bv, 0.000000e+00
  br i1 %i.bw, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bx = fcmp ogt float %i.bv, 1.000000e+00
  br i1 %i.bx, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.by = fmul float %i.bv, 2.550000e+02
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.s
  %i.bz = phi float [ 0.000000e+00, %bb.s ], [ %i.by, %bb.u ], [ 2.550000e+02, %bb.t ]
  %i.ca = call float @SDL_roundf_REAL(float noundef %i.bz) #8
  %i.cb = fptoui float %i.ca to i8
  store i8 %i.cb, ptr %i.ae, align 4
  br label %.loopexit373

bb.w:                                             ; preds = %bb.i
  %i.cc = getelementptr inbounds nuw i8, ptr %.0300399, i64 16
  store ptr %i.cc, ptr %11, align 8
  store i8 1, ptr %i.aa, align 8
  br label %.loopexit373

bb.x:                                             ; preds = %bb.i
  %i.cd = getelementptr inbounds nuw i8, ptr %.0300399, i64 8
  %i.ce = load i8, ptr %i.cd, align 8, !range !7, !noundef !8
  %i.cf = trunc nuw i8 %i.ce to i1
  %i.cg = getelementptr inbounds nuw i8, ptr %.0300399, i64 12
  %i.ch = select i1 %i.cf, ptr %i.cg, ptr null
  store ptr %i.ch, ptr %i.z, align 8
  store i8 1, ptr %i.aa, align 8
  br label %.loopexit373

bb.y:                                             ; preds = %bb.i
  %i.ci = getelementptr inbounds nuw i8, ptr %.0300399, i64 20
  %i.cj = load float, ptr %i.ci, align 4
  %i.ck = getelementptr inbounds nuw i8, ptr %.0300399, i64 16 ; 3 uses
  %i.cl = load float, ptr %i.ck, align 8
  %i.cm = fmul float %i.cj, %i.cl                 ; 3 uses
  %i.cn = fcmp olt float %i.cm, 0.000000e+00
  br i1 %i.cn, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.co = fcmp ogt float %i.cm, 1.000000e+00
  br i1 %i.co, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cp = fmul float %i.cm, 2.550000e+02
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z, %bb.y
  %i.cq = phi float [ 0.000000e+00, %bb.y ], [ %i.cp, %bb.aa ], [ 2.550000e+02, %bb.z ]
  %i.cr = call float @SDL_roundf_REAL(float noundef %i.cq) #8
  %i.cs = fptoui float %i.cr to i8
  %i.ct = getelementptr inbounds nuw i8, ptr %.0300399, i64 24
  %i.cu = load float, ptr %i.ct, align 8
  %i.cv = load float, ptr %i.ck, align 8
  %i.cw = fmul float %i.cu, %i.cv                 ; 3 uses
  %i.cx = fcmp olt float %i.cw, 0.000000e+00
  br i1 %i.cx, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cy = fcmp ogt float %i.cw, 1.000000e+00
  br i1 %i.cy, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cz = fmul float %i.cw, 2.550000e+02
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac, %bb.ab
  %i.da = phi float [ 0.000000e+00, %bb.ab ], [ %i.cz, %bb.ad ], [ 2.550000e+02, %bb.ac ]
  %i.db = call float @SDL_roundf_REAL(float noundef %i.da) #8
  %i.dc = fptoui float %i.db to i8
  %i.dd = getelementptr inbounds nuw i8, ptr %.0300399, i64 28
  %i.de = load float, ptr %i.dd, align 4
  %i.df = load float, ptr %i.ck, align 8
  %i.dg = fmul float %i.de, %i.df                 ; 3 uses
  %i.dh = fcmp olt float %i.dg, 0.000000e+00
  br i1 %i.dh, label %bb.ah, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.di = fcmp ogt float %i.dg, 1.000000e+00
  br i1 %i.di, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.dj = fmul float %i.dg, 2.550000e+02
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af, %bb.ae
  %i.dk = phi float [ 0.000000e+00, %bb.ae ], [ %i.dj, %bb.ag ], [ 2.550000e+02, %bb.af ]
  %i.dl = call float @SDL_roundf_REAL(float noundef %i.dk) #8
  %i.dm = fptoui float %i.dl to i8
  %i.dn = getelementptr inbounds nuw i8, ptr %.0300399, i64 32
  %i.do = load float, ptr %i.dn, align 8          ; 3 uses
  %i.dp = fcmp olt float %i.do, 0.000000e+00
  br i1 %i.dp, label %bb.ak, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.dq = fcmp ogt float %i.do, 1.000000e+00
  br i1 %i.dq, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.dr = fmul float %i.do, 2.550000e+02
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai, %bb.ah
  %i.ds = phi float [ 0.000000e+00, %bb.ah ], [ %i.dr, %bb.aj ], [ 2.550000e+02, %bb.ai ]
  %i.dt = call float @SDL_roundf_REAL(float noundef %i.ds) #8
  %i.du = fptoui float %i.dt to i8
  %i.dv = call zeroext i1 @SDL_SetSurfaceClipRect_REAL(ptr noundef %i.x, ptr noundef null) #8 ; 0 uses
  %i.dw = call i32 @SDL_MapSurfaceRGBA_REAL(ptr noundef %i.x, i8 noundef zeroext %i.cs, i8 noundef zeroext %i.dc, i8 noundef zeroext %i.dm, i8 noundef zeroext %i.du) #8
  %i.dx = call zeroext i1 @SDL_FillSurfaceRect_REAL(ptr noundef %i.x, ptr noundef null, i32 noundef %i.dw) #8 ; 0 uses
  store i8 1, ptr %i.aa, align 8
  br label %.loopexit373

bb.al:                                            ; preds = %bb.i
  %i.dy = load i8, ptr %i.ab, align 1             ; 2 uses
  %i.dz = load i8, ptr %i.ac, align 2             ; 2 uses
  %i.ea = load i8, ptr %i.ad, align 1             ; 2 uses
  %i.eb = load i8, ptr %i.ae, align 4             ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.0300399, i64 8
  %i.ed = getelementptr inbounds nuw i8, ptr %.0300399, i64 16
  %i.ee = load i64, ptr %i.ed, align 8            ; 4 uses
  %i.ef = trunc i64 %i.ee to i32                  ; 4 uses
  %i.eg = load i64, ptr %i.ec, align 8            ; 2 uses
  %i.eh = getelementptr i8, ptr %2, i64 %i.eg     ; 8 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %.0300399, i64 44
  %i.ej = load i32, ptr %i.ei, align 4            ; 2 uses
  call fastcc void @SetDrawState(ptr noundef %i.x, ptr noundef %11)
  %i.ek = load ptr, ptr %11, align 8              ; 10 uses
  %.not355 = icmp eq ptr %i.ek, null
  br i1 %.not355, label %.loopexit, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.el = load i32, ptr %i.ek, align 4
  %.not356 = icmp eq i32 %i.el, 0
  br i1 %.not356, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.em = getelementptr inbounds nuw i8, ptr %i.ek, i64 4
  %i.en = load i32, ptr %i.em, align 4
  %.not357 = icmp ne i32 %i.en, 0
  %i.eo = icmp sgt i32 %i.ef, 0
  %or.cond402 = select i1 %.not357, i1 %i.eo, i1 false
  br i1 %or.cond402, label %.lr.ph397, label %.loopexit

bb.ao:                                            ; preds = %bb.am
  %.old = icmp sgt i32 %i.ef, 0
  br i1 %.old, label %.lr.ph397, label %.loopexit

.lr.ph397:                                        ; preds = %bb.an, %bb.ao
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ek, i64 4 ; 4 uses
  %wide.trip.count429 = and i64 %i.ee, 4294967295 ; 5 uses
  %min.iters.check = icmp samesign ult i64 %wide.trip.count429, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph397
  %i.eq = shl nuw nsw i64 %wide.trip.count429, 3
  %i.er = getelementptr i8, ptr %2, i64 %i.eg
  %scevgep = getelementptr i8, ptr %i.er, i64 %i.eq
  %scevgep470 = getelementptr i8, ptr %i.ek, i64 8
  %bound0 = icmp ult ptr %i.eh, %scevgep470
  %bound1 = icmp ult ptr %i.ek, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ee, 4294967292              ; 3 uses
  %i.es = load i32, ptr %i.ek, align 4, !alias.scope !38
  %broadcast.splatinsert = insertelement <2 x i32> poison, i32 %i.es, i64 0
  %broadcast.splat = shufflevector <2 x i32> %broadcast.splatinsert, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.et = load i32, ptr %i.ep, align 4, !alias.scope !38
  %broadcast.splatinsert475 = insertelement <2 x i32> poison, i32 %i.et, i64 0
  %broadcast.splat476 = shufflevector <2 x i32> %broadcast.splatinsert475, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.eh, i64 %index ; 2 uses
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.eh, i64 %index
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 16 ; 2 uses
  %wide.vec = load <4 x i32>, ptr %i.eu, align 4, !alias.scope !39, !noalias !38 ; 2 uses
  %strided.vec = shufflevector <4 x i32> %wide.vec, <4 x i32> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec471 = shufflevector <4 x i32> %wide.vec, <4 x i32> poison, <2 x i32> <i32 1, i32 3>
  %wide.vec472 = load <4 x i32>, ptr %i.ew, align 4, !alias.scope !39, !noalias !38 ; 2 uses
  %strided.vec473 = shufflevector <4 x i32> %wide.vec472, <4 x i32> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec474 = shufflevector <4 x i32> %wide.vec472, <4 x i32> poison, <2 x i32> <i32 1, i32 3>
  %i.ex = add nsw <2 x i32> %strided.vec, %broadcast.splat
  %i.ey = add nsw <2 x i32> %strided.vec473, %broadcast.splat
  %i.ez = add nsw <2 x i32> %strided.vec471, %broadcast.splat476
  %i.fa = add nsw <2 x i32> %strided.vec474, %broadcast.splat476
  %interleaved.vec = shufflevector <2 x i32> %i.ex, <2 x i32> %i.ez, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i32> %interleaved.vec, ptr %i.eu, align 4, !alias.scope !39, !noalias !38
  %interleaved.vec477 = shufflevector <2 x i32> %i.ey, <2 x i32> %i.fa, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i32> %interleaved.vec477, ptr %i.ew, align 4, !alias.scope !39, !noalias !38
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.fb = icmp eq i64 %index.next, %n.vec
  br i1 %i.fb, label %middle.block, label %vector.body, !llvm.loop !23

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %wide.trip.count429, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph397, %middle.block
  %indvars.iv425.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph397 ], [ %n.vec, %middle.block ] ; 4 uses
  %.neg535 = or disjoint i64 %indvars.iv425.ph, 1
  %xtraiter533 = and i64 %i.ee, 1
  %lcmp.mod534.not = icmp eq i64 %xtraiter533, 0
  br i1 %lcmp.mod534.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.fc = load i32, ptr %i.ek, align 4
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.eh, i64 %indvars.iv425.ph ; 3 uses
  %i.fe = load i32, ptr %i.fd, align 4
  %i.ff = add nsw i32 %i.fe, %i.fc
  store i32 %i.ff, ptr %i.fd, align 4
  %i.fg = load i32, ptr %i.ep, align 4
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fd, i64 4 ; 2 uses
  %i.fi = load i32, ptr %i.fh, align 4
  %i.fj = add nsw i32 %i.fi, %i.fg
  store i32 %i.fj, ptr %i.fh, align 4
  %indvars.iv.next426.prol = or disjoint i64 %indvars.iv425.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv425.unr = phi i64 [ %indvars.iv425.ph, %scalar.ph.preheader ], [ %indvars.iv.next426.prol, %scalar.ph.prol ]
  %i.fk = icmp eq i64 %wide.trip.count429, %.neg535
  br i1 %i.fk, label %.loopexit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv425 = phi i64 [ %indvars.iv.next426.1, %scalar.ph ], [ %indvars.iv425.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %i.fl = load i32, ptr %i.ek, align 4
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %i.eh, i64 %indvars.iv425 ; 3 uses
  %i.fn = load i32, ptr %i.fm, align 4
  %i.fo = add nsw i32 %i.fn, %i.fl
  store i32 %i.fo, ptr %i.fm, align 4
  %i.fp = load i32, ptr %i.ep, align 4
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fm, i64 4 ; 2 uses
  %i.fr = load i32, ptr %i.fq, align 4
  %i.fs = add nsw i32 %i.fr, %i.fp
  store i32 %i.fs, ptr %i.fq, align 4
  %i.ft = load i32, ptr %i.ek, align 4
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %i.eh, i64 %indvars.iv425 ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 8 ; 2 uses
  %i.fw = load i32, ptr %i.fv, align 4
  %i.fx = add nsw i32 %i.fw, %i.ft
  store i32 %i.fx, ptr %i.fv, align 4
  %i.fy = load i32, ptr %i.ep, align 4
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fu, i64 12 ; 2 uses
  %i.ga = load i32, ptr %i.fz, align 4
  %i.gb = add nsw i32 %i.ga, %i.fy
  store i32 %i.gb, ptr %i.fz, align 4
  %indvars.iv.next426.1 = add nuw nsw i64 %indvars.iv425, 2 ; 2 uses
  %exitcond430.not.1 = icmp eq i64 %indvars.iv.next426.1, %wide.trip.count429
  br i1 %exitcond430.not.1, label %.loopexit, label %scalar.ph, !llvm.loop !24

.loopexit:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.ao, %bb.an, %bb.al
  %i.gc = icmp eq i32 %i.ej, 0
  br i1 %i.gc, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %.loopexit
  %i.gd = call i32 @SDL_MapSurfaceRGBA_REAL(ptr noundef %i.x, i8 noundef zeroext %i.dy, i8 noundef zeroext %i.dz, i8 noundef zeroext %i.ea, i8 noundef zeroext %i.eb) #8
  %i.ge = call zeroext i1 @SDL_DrawPoints(ptr noundef %i.x, ptr noundef %i.eh, i32 noundef %i.ef, i32 noundef %i.gd) #8 ; 0 uses
  br label %.loopexit373

bb.aq:                                            ; preds = %.loopexit
  %i.gf = call zeroext i1 @SDL_BlendPoints(ptr noundef %i.x, ptr noundef %i.eh, i32 noundef %i.ef, i32 noundef %i.ej, i8 noundef zeroext %i.dy, i8 noundef zeroext %i.dz, i8 noundef zeroext %i.ea, i8 noundef zeroext %i.eb) #8 ; 0 uses
  br label %.loopexit373

bb.ar:                                            ; preds = %bb.i
  %i.gg = load i8, ptr %i.ab, align 1             ; 2 uses
  %i.gh = load i8, ptr %i.ac, align 2             ; 2 uses
  %i.gi = load i8, ptr %i.ad, align 1             ; 2 uses
  %i.gj = load i8, ptr %i.ae, align 4             ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %.0300399, i64 8
  %i.gl = getelementptr inbounds nuw i8, ptr %.0300399, i64 16
  %i.gm = load i64, ptr %i.gl, align 8            ; 4 uses
  %i.gn = trunc i64 %i.gm to i32                  ; 4 uses
  %i.go = load i64, ptr %i.gk, align 8            ; 2 uses
  %i.gp = getelementptr i8, ptr %2, i64 %i.go     ; 8 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %.0300399, i64 44
  %i.gr = load i32, ptr %i.gq, align 4            ; 2 uses
  call fastcc void @SetDrawState(ptr noundef %i.x, ptr noundef %11)
  %i.gs = load ptr, ptr %11, align 8              ; 10 uses
  %.not352 = icmp eq ptr %i.gs, null
  br i1 %.not352, label %.loopexit371, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.gt = load i32, ptr %i.gs, align 4
  %.not353 = icmp eq i32 %i.gt, 0
  br i1 %.not353, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gs, i64 4
  %i.gv = load i32, ptr %i.gu, align 4
  %.not354 = icmp ne i32 %i.gv, 0
  %i.gw = icmp sgt i32 %i.gn, 0
  %or.cond404 = select i1 %.not354, i1 %i.gw, i1 false
  br i1 %or.cond404, label %.lr.ph394, label %.loopexit371

bb.au:                                            ; preds = %bb.as
  %.old403 = icmp sgt i32 %i.gn, 0
  br i1 %.old403, label %.lr.ph394, label %.loopexit371

.lr.ph394:                                        ; preds = %bb.at, %bb.au
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gs, i64 4 ; 4 uses
  %wide.trip.count423 = and i64 %i.gm, 4294967295 ; 5 uses
  %min.iters.check485 = icmp samesign ult i64 %wide.trip.count423, 4
  br i1 %min.iters.check485, label %scalar.ph484.preheader, label %vector.memcheck478

vector.memcheck478:                               ; preds = %.lr.ph394
  %i.gy = shl nuw nsw i64 %wide.trip.count423, 3
  %i.gz = getelementptr i8, ptr %2, i64 %i.go
  %scevgep479 = getelementptr i8, ptr %i.gz, i64 %i.gy
  %scevgep480 = getelementptr i8, ptr %i.gs, i64 8
  %bound0481 = icmp ult ptr %i.gp, %scevgep480
  %bound1482 = icmp ult ptr %i.gs, %scevgep479
  %found.conflict483 = and i1 %bound0481, %bound1482
  br i1 %found.conflict483, label %scalar.ph484.preheader, label %vector.ph486

vector.ph486:                                     ; preds = %vector.memcheck478
  %n.vec487 = and i64 %i.gm, 4294967292           ; 3 uses
  %i.ha = load i32, ptr %i.gs, align 4, !alias.scope !40
  %broadcast.splatinsert496 = insertelement <2 x i32> poison, i32 %i.ha, i64 0
  %broadcast.splat497 = shufflevector <2 x i32> %broadcast.splatinsert496, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.hb = load i32, ptr %i.gx, align 4, !alias.scope !40
  %broadcast.splatinsert498 = insertelement <2 x i32> poison, i32 %i.hb, i64 0
  %broadcast.splat499 = shufflevector <2 x i32> %broadcast.splatinsert498, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body488

vector.body488:                                   ; preds = %vector.body488, %vector.ph486
  %index489 = phi i64 [ 0, %vector.ph486 ], [ %index.next502, %vector.body488 ] ; 3 uses
  %i.hc = getelementptr inbounds nuw [8 x i8], ptr %i.gp, i64 %index489 ; 2 uses
  %i.hd = getelementptr inbounds nuw [8 x i8], ptr %i.gp, i64 %index489
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 16 ; 2 uses
  %wide.vec490 = load <4 x i32>, ptr %i.hc, align 4, !alias.scope !41, !noalias !40 ; 2 uses
  %strided.vec491 = shufflevector <4 x i32> %wide.vec490, <4 x i32> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec492 = shufflevector <4 x i32> %wide.vec490, <4 x i32> poison, <2 x i32> <i32 1, i32 3>
  %wide.vec493 = load <4 x i32>, ptr %i.he, align 4, !alias.scope !41, !noalias !40 ; 2 uses
  %strided.vec494 = shufflevector <4 x i32> %wide.vec493, <4 x i32> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec495 = shufflevector <4 x i32> %wide.vec493, <4 x i32> poison, <2 x i32> <i32 1, i32 3>
  %i.hf = add nsw <2 x i32> %strided.vec491, %broadcast.splat497
  %i.hg = add nsw <2 x i32> %strided.vec494, %broadcast.splat497
  %i.hh = add nsw <2 x i32> %strided.vec492, %broadcast.splat499
  %i.hi = add nsw <2 x i32> %strided.vec495, %broadcast.splat499
  %interleaved.vec500 = shufflevector <2 x i32> %i.hf, <2 x i32> %i.hh, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i32> %interleaved.vec500, ptr %i.hc, align 4, !alias.scope !41, !noalias !40
  %interleaved.vec501 = shufflevector <2 x i32> %i.hg, <2 x i32> %i.hi, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i32> %interleaved.vec501, ptr %i.he, align 4, !alias.scope !41, !noalias !40
  %index.next502 = add nuw i64 %index489, 4       ; 2 uses
  %i.hj = icmp eq i64 %index.next502, %n.vec487
  br i1 %i.hj, label %middle.block503, label %vector.body488, !llvm.loop !28

middle.block503:                                  ; preds = %vector.body488
  %cmp.n504 = icmp eq i64 %wide.trip.count423, %n.vec487
  br i1 %cmp.n504, label %.loopexit371, label %scalar.ph484.preheader

scalar.ph484.preheader:                           ; preds = %vector.memcheck478, %.lr.ph394, %middle.block503
  %indvars.iv419.ph = phi i64 [ 0, %vector.memcheck478 ], [ 0, %.lr.ph394 ], [ %n.vec487, %middle.block503 ] ; 4 uses
  %.neg = or disjoint i64 %indvars.iv419.ph, 1
  %xtraiter531 = and i64 %i.gm, 1
  %lcmp.mod532.not = icmp eq i64 %xtraiter531, 0
  br i1 %lcmp.mod532.not, label %scalar.ph484.prol.loopexit, label %scalar.ph484.prol

scalar.ph484.prol:                                ; preds = %scalar.ph484.preheader
  %i.hk = load i32, ptr %i.gs, align 4
  %i.hl = getelementptr inbounds nuw [8 x i8], ptr %i.gp, i64 %indvars.iv419.ph ; 3 uses
  %i.hm = load i32, ptr %i.hl, align 4
  %i.hn = add nsw i32 %i.hm, %i.hk
  store i32 %i.hn, ptr %i.hl, align 4
  %i.ho = load i32, ptr %i.gx, align 4
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hl, i64 4 ; 2 uses
  %i.hq = load i32, ptr %i.hp, align 4
  %i.hr = add nsw i32 %i.hq, %i.ho
  store i32 %i.hr, ptr %i.hp, align 4
  %indvars.iv.next420.prol = or disjoint i64 %indvars.iv419.ph, 1
  br label %scalar.ph484.prol.loopexit

scalar.ph484.prol.loopexit:                       ; preds = %scalar.ph484.prol, %scalar.ph484.preheader
  %indvars.iv419.unr = phi i64 [ %indvars.iv419.ph, %scalar.ph484.preheader ], [ %indvars.iv.next420.prol, %scalar.ph484.prol ]
  %i.hs = icmp eq i64 %wide.trip.count423, %.neg
  br i1 %i.hs, label %.loopexit371, label %scalar.ph484

scalar.ph484:                                     ; preds = %scalar.ph484.prol.loopexit, %scalar.ph484
  %indvars.iv419 = phi i64 [ %indvars.iv.next420.1, %scalar.ph484 ], [ %indvars.iv419.unr, %scalar.ph484.prol.loopexit ] ; 3 uses
  %i.ht = load i32, ptr %i.gs, align 4
  %i.hu = getelementptr inbounds nuw [8 x i8], ptr %i.gp, i64 %indvars.iv419 ; 3 uses
  %i.hv = load i32, ptr %i.hu, align 4
  %i.hw = add nsw i32 %i.hv, %i.ht
  store i32 %i.hw, ptr %i.hu, align 4
  %i.hx = load i32, ptr %i.gx, align 4
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hu, i64 4 ; 2 uses
  %i.hz = load i32, ptr %i.hy, align 4
  %i.ia = add nsw i32 %i.hz, %i.hx
  store i32 %i.ia, ptr %i.hy, align 4
  %i.ib = load i32, ptr %i.gs, align 4
  %i.ic = getelementptr inbounds nuw [8 x i8], ptr %i.gp, i64 %indvars.iv419 ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 8 ; 2 uses
  %i.ie = load i32, ptr %i.id, align 4
  %i.if = add nsw i32 %i.ie, %i.ib
  store i32 %i.if, ptr %i.id, align 4
  %i.ig = load i32, ptr %i.gx, align 4
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ic, i64 12 ; 2 uses
  %i.ii = load i32, ptr %i.ih, align 4
  %i.ij = add nsw i32 %i.ii, %i.ig
  store i32 %i.ij, ptr %i.ih, align 4
  %indvars.iv.next420.1 = add nuw nsw i64 %indvars.iv419, 2 ; 2 uses
  %exitcond424.not.1 = icmp eq i64 %indvars.iv.next420.1, %wide.trip.count423
  br i1 %exitcond424.not.1, label %.loopexit371, label %scalar.ph484, !llvm.loop !29

.loopexit371:                                     ; preds = %scalar.ph484.prol.loopexit, %scalar.ph484, %middle.block503, %bb.au, %bb.at, %bb.ar
  %i.ik = icmp eq i32 %i.gr, 0
  br i1 %i.ik, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %.loopexit371
  %i.il = call i32 @SDL_MapSurfaceRGBA_REAL(ptr noundef %i.x, i8 noundef zeroext %i.gg, i8 noundef zeroext %i.gh, i8 noundef zeroext %i.gi, i8 noundef zeroext %i.gj) #8
  %i.im = call zeroext i1 @SDL_DrawLines(ptr noundef %i.x, ptr noundef %i.gp, i32 noundef %i.gn, i32 noundef %i.il) #8 ; 0 uses
  br label %.loopexit373

bb.aw:                                            ; preds = %.loopexit371
  %i.in = call zeroext i1 @SDL_BlendLines(ptr noundef %i.x, ptr noundef %i.gp, i32 noundef %i.gn, i32 noundef %i.gr, i8 noundef zeroext %i.gg, i8 noundef zeroext %i.gh, i8 noundef zeroext %i.gi, i8 noundef zeroext %i.gj) #8 ; 0 uses
  br label %.loopexit373

bb.ax:                                            ; preds = %bb.i
  %i.io = load i8, ptr %i.ab, align 1             ; 2 uses
  %i.ip = load i8, ptr %i.ac, align 2             ; 2 uses
  %i.iq = load i8, ptr %i.ad, align 1             ; 2 uses
  %i.ir = load i8, ptr %i.ae, align 4             ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %.0300399, i64 8
  %i.it = getelementptr inbounds nuw i8, ptr %.0300399, i64 16
  %i.iu = load i64, ptr %i.it, align 8            ; 5 uses
  %i.iv = trunc i64 %i.iu to i32                  ; 4 uses
  %i.iw = load i64, ptr %i.is, align 8
  %i.ix = getelementptr inbounds nuw i8, ptr %2, i64 %i.iw ; 5 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %.0300399, i64 44
  %i.iz = load i32, ptr %i.iy, align 4            ; 2 uses
  call fastcc void @SetDrawState(ptr noundef %i.x, ptr noundef %11)
  %i.ja = load ptr, ptr %11, align 8              ; 7 uses
  %.not349 = icmp eq ptr %i.ja, null
  br i1 %.not349, label %.loopexit372, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.jb = load i32, ptr %i.ja, align 4
  %.not350 = icmp eq i32 %i.jb, 0
  br i1 %.not350, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.jc = getelementptr inbounds nuw i8, ptr %i.ja, i64 4
  %i.jd = load i32, ptr %i.jc, align 4
  %.not351 = icmp ne i32 %i.jd, 0
  %i.je = icmp sgt i32 %i.iv, 0
  %or.cond406 = select i1 %.not351, i1 %i.je, i1 false
  br i1 %or.cond406, label %.lr.ph391, label %.loopexit372

bb.ba:                                            ; preds = %bb.ay
  %.old405 = icmp sgt i32 %i.iv, 0
  br i1 %.old405, label %.lr.ph391, label %.loopexit372

.lr.ph391:                                        ; preds = %bb.az, %bb.ba
  %i.jf = getelementptr inbounds nuw i8, ptr %i.ja, i64 4 ; 3 uses
  %wide.trip.count417 = and i64 %i.iu, 4294967295
  %xtraiter525 = and i64 %i.iu, 1
  %i.jg = icmp eq i64 %wide.trip.count417, 1
  br i1 %i.jg, label %.epil.preheader524, label %.lr.ph391.new

.lr.ph391.new:                                    ; preds = %.lr.ph391
  %unroll_iter529 = and i64 %i.iu, 4294967294
  br label %bb.bb

bb.bb:                                            ; preds = %bb.bb, %.lr.ph391.new
  %indvars.iv414 = phi i64 [ 0, %.lr.ph391.new ], [ %indvars.iv.next415.1, %bb.bb ] ; 3 uses
  %niter530 = phi i64 [ 0, %.lr.ph391.new ], [ %niter530.next.1, %bb.bb ]
  %i.jh = load i32, ptr %i.ja, align 4
  %i.ji = getelementptr inbounds nuw [16 x i8], ptr %i.ix, i64 %indvars.iv414 ; 3 uses
  %i.jj = load i32, ptr %i.ji, align 4
  %i.jk = add nsw i32 %i.jj, %i.jh
  store i32 %i.jk, ptr %i.ji, align 4
  %i.jl = load i32, ptr %i.jf, align 4
  %i.jm = getelementptr inbounds nuw i8, ptr %i.ji, i64 4 ; 2 uses
  %i.jn = load i32, ptr %i.jm, align 4
  %i.jo = add nsw i32 %i.jn, %i.jl
  store i32 %i.jo, ptr %i.jm, align 4
  %i.jp = load i32, ptr %i.ja, align 4
  %i.jq = getelementptr inbounds nuw [16 x i8], ptr %i.ix, i64 %indvars.iv414 ; 2 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 16 ; 2 uses
  %i.js = load i32, ptr %i.jr, align 4
  %i.jt = add nsw i32 %i.js, %i.jp
  store i32 %i.jt, ptr %i.jr, align 4
  %i.ju = load i32, ptr %i.jf, align 4
  %i.jv = getelementptr inbounds nuw i8, ptr %i.jq, i64 20 ; 2 uses
  %i.jw = load i32, ptr %i.jv, align 4
  %i.jx = add nsw i32 %i.jw, %i.ju
  store i32 %i.jx, ptr %i.jv, align 4
  %indvars.iv.next415.1 = add nuw nsw i64 %indvars.iv414, 2 ; 2 uses
  %niter530.next.1 = add i64 %niter530, 2         ; 2 uses
  %niter530.ncmp.1 = icmp eq i64 %niter530.next.1, %unroll_iter529
  br i1 %niter530.ncmp.1, label %.loopexit372.loopexit.unr-lcssa, label %bb.bb, !llvm.loop !30

.loopexit372.loopexit.unr-lcssa:                  ; preds = %bb.bb
  %lcmp.mod527.not = icmp eq i64 %xtraiter525, 0
  br i1 %lcmp.mod527.not, label %.loopexit372, label %.epil.preheader524

.epil.preheader524:                               ; preds = %.loopexit372.loopexit.unr-lcssa, %.lr.ph391
  %indvars.iv414.epil.init = phi i64 [ 0, %.lr.ph391 ], [ %indvars.iv.next415.1, %.loopexit372.loopexit.unr-lcssa ]
  %lcmp.mod528 = trunc i64 %i.iu to i1
  call void @llvm.assume(i1 %lcmp.mod528)
  %i.jy = load i32, ptr %i.ja, align 4
  %i.jz = getelementptr inbounds nuw [16 x i8], ptr %i.ix, i64 %indvars.iv414.epil.init ; 3 uses
  %i.ka = load i32, ptr %i.jz, align 4
  %i.kb = add nsw i32 %i.ka, %i.jy
  store i32 %i.kb, ptr %i.jz, align 4
  %i.kc = load i32, ptr %i.jf, align 4
  %i.kd = getelementptr inbounds nuw i8, ptr %i.jz, i64 4 ; 2 uses
  %i.ke = load i32, ptr %i.kd, align 4
  %i.kf = add nsw i32 %i.ke, %i.kc
  store i32 %i.kf, ptr %i.kd, align 4
  br label %.loopexit372

.loopexit372:                                     ; preds = %.epil.preheader524, %.loopexit372.loopexit.unr-lcssa, %bb.ba, %bb.az, %bb.ax
  %i.kg = icmp eq i32 %i.iz, 0
  br i1 %i.kg, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %.loopexit372
  %i.kh = call i32 @SDL_MapSurfaceRGBA_REAL(ptr noundef %i.x, i8 noundef zeroext %i.io, i8 noundef zeroext %i.ip, i8 noundef zeroext %i.iq, i8 noundef zeroext %i.ir) #8
  %i.ki = call zeroext i1 @SDL_FillSurfaceRects_REAL(ptr noundef %i.x, ptr noundef %i.ix, i32 noundef %i.iv, i32 noundef %i.kh) #8 ; 0 uses
  br label %.loopexit373

bb.bd:                                            ; preds = %.loopexit372
  %i.kj = call zeroext i1 @SDL_BlendFillRects(ptr noundef %i.x, ptr noundef %i.ix, i32 noundef %i.iv, i32 noundef %i.iz, i8 noundef zeroext %i.io, i8 noundef zeroext %i.ip, i8 noundef zeroext %i.iq, i8 noundef zeroext %i.ir) #8 ; 0 uses
  br label %.loopexit373

bb.be:                                            ; preds = %bb.i
  %i.kk = getelementptr inbounds nuw i8, ptr %.0300399, i64 8
  %i.kl = load i64, ptr %i.kk, align 8
  %i.km = getelementptr inbounds nuw i8, ptr %2, i64 %i.kl ; 12 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %i.km, i64 16 ; 6 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %.0300399, i64 48 ; 2 uses
  %i.kp = load ptr, ptr %i.ko, align 8
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 312
  %i.kr = load ptr, ptr %i.kq, align 8            ; 10 uses
  call fastcc void @SetDrawState(ptr noundef %i.x, ptr noundef %11)
  %i.ks = getelementptr i8, ptr %.0300399, i64 44
  %.0300.val365 = load i32, ptr %i.ks, align 4
  %.0300.val366 = load ptr, ptr %i.ko, align 8
  %i.kt = getelementptr i8, ptr %.0300.val366, i64 312
  %.0300.val366.val = load ptr, ptr %i.kt, align 8 ; 3 uses
  %i.ku = load i8, ptr %i.ab, align 1
  %i.kv = load i8, ptr %i.ac, align 2
  %i.kw = load i8, ptr %i.ad, align 1
  %i.kx = load i8, ptr %i.ae, align 4
  %i.ky = call zeroext i1 @SDL_SetSurfaceColorMod_REAL(ptr noundef %.0300.val366.val, i8 noundef zeroext %i.ku, i8 noundef zeroext %i.kv, i8 noundef zeroext %i.kw) #8 ; 0 uses
  %i.kz = call zeroext i1 @SDL_SetSurfaceAlphaMod_REAL(ptr noundef %.0300.val366.val, i8 noundef zeroext %i.kx) #8 ; 0 uses
  %i.la = call zeroext i1 @SDL_SetSurfaceBlendMode_REAL(ptr noundef %.0300.val366.val, i32 noundef %.0300.val365) #8 ; 0 uses
  %i.lb = load ptr, ptr %11, align 8              ; 4 uses
  %.not340 = icmp eq ptr %i.lb, null
  br i1 %.not340, label %bb.bi, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.lc = load i32, ptr %i.lb, align 4            ; 2 uses
  %.not341 = icmp eq i32 %i.lc, 0
  br i1 %.not341, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lb, i64 4
  %i.le = load i32, ptr %i.ld, align 4
  %.not342 = icmp eq i32 %i.le, 0
  br i1 %.not342, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  %i.lf = load i32, ptr %i.kn, align 4
  %i.lg = add nsw i32 %i.lf, %i.lc
  store i32 %i.lg, ptr %i.kn, align 4
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lb, i64 4
  %i.li = load i32, ptr %i.lh, align 4
  %i.lj = getelementptr inbounds nuw i8, ptr %i.km, i64 20 ; 2 uses
  %i.lk = load i32, ptr %i.lj, align 4
  %i.ll = add nsw i32 %i.lk, %i.li
  store i32 %i.ll, ptr %i.lj, align 4
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg, %bb.be
  %i.lm = getelementptr inbounds nuw i8, ptr %i.km, i64 8
  %i.ln = load i32, ptr %i.lm, align 4
  %i.lo = getelementptr inbounds nuw i8, ptr %i.km, i64 24 ; 2 uses
  %i.lp = load i32, ptr %i.lo, align 4            ; 3 uses
  %i.lq = icmp eq i32 %i.ln, %i.lp
  br i1 %i.lq, label %bb.bj, label %bb.bl

bb.bj:                                            ; preds = %bb.bi
  %i.lr = getelementptr inbounds nuw i8, ptr %i.km, i64 12
  %i.ls = load i32, ptr %i.lr, align 4
  %i.lt = getelementptr inbounds nuw i8, ptr %i.km, i64 28
  %i.lu = load i32, ptr %i.lt, align 4
  %i.lv = icmp eq i32 %i.ls, %i.lu
  br i1 %i.lv, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  %i.lw = call zeroext i1 @SDL_BlitSurface_REAL(ptr noundef %i.kr, ptr noundef nonnull %i.km, ptr noundef %i.x, ptr noundef nonnull %i.kn) #8 ; 0 uses
  br label %.loopexit373

bb.bl:                                            ; preds = %bb.bj, %bb.bi
  %i.lx = load i32, ptr %i.kn, align 4            ; 2 uses
  %i.ly = icmp slt i32 %i.lx, 0
  br i1 %i.ly, label %bb.bp, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.lz = getelementptr inbounds nuw i8, ptr %i.km, i64 20
  %i.ma = load i32, ptr %i.lz, align 4            ; 2 uses
  %i.mb = icmp slt i32 %i.ma, 0
  br i1 %i.mb, label %bb.bp, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.mc = add nsw i32 %i.lx, %i.lp
  %i.md = load i32, ptr %i.aj, align 8
  %i.me = icmp sgt i32 %i.mc, %i.md
  br i1 %i.me, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.mf = getelementptr inbounds nuw i8, ptr %i.km, i64 28
  %i.mg = load i32, ptr %i.mf, align 4
  %i.mh = add nsw i32 %i.mg, %i.ma
  %i.mi = load i32, ptr %i.ak, align 4
  %i.mj = icmp sgt i32 %i.mh, %i.mi
  br i1 %i.mj, label %bb.bp, label %bb.bv

bb.bp:                                            ; preds = %bb.bo, %bb.bn, %bb.bm, %bb.bl
  %i.mk = getelementptr inbounds nuw i8, ptr %i.kr, i64 4
  %i.ml = load i32, ptr %i.mk, align 4            ; 5 uses
  %.not343 = icmp eq i32 %i.ml, 0
  %.mask = and i32 %i.ml, -268435456
  %.not344 = icmp eq i32 %.mask, 268435456
  %or.cond = or i1 %.not343, %.not344
  br i1 %or.cond, label %bb.bq, label %.thread

bb.bq:                                            ; preds = %bb.bp
  %i.mm = lshr i32 %i.ml, 24
  %i.mn = and i32 %i.mm, 15                       ; 2 uses
  %.off = add nsw i32 %i.mn, -4
  %switch = icmp ult i32 %.off, 3
  br i1 %switch, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  %i.mo = lshr i32 %i.ml, 20
  %i.mp = and i32 %i.mo, 15
  %switch.tableidx = add nsw i32 %i.mp, -3        ; 2 uses
  %i.mq = icmp ult i32 %switch.tableidx, 6
  %switch.maskindex = trunc nsw i32 %switch.tableidx to i8
  %switch.shifted = lshr i8 51, %switch.maskindex
  %switch.lobit = trunc i8 %switch.shifted to i1
  %or.cond513 = select i1 %i.mq, i1 %switch.lobit, i1 false
  br i1 %or.cond513, label %switch.lookup, label %.thread

bb.bs:                                            ; preds = %bb.bq
  %.off359 = add nsw i32 %i.mn, -7
  %switch360 = icmp ult i32 %.off359, 5
  br i1 %switch360, label %bb.bt, label %.thread

bb.bt:                                            ; preds = %bb.bs
  %i.mr = lshr i32 %i.ml, 20
  %i.ms = and i32 %i.mr, 15
  %switch.tableidx506 = add nsw i32 %i.ms, -2     ; 2 uses
  %i.mt = icmp ult i32 %switch.tableidx506, 5
  %switch.maskindex510 = trunc nsw i32 %switch.tableidx506 to i8
  %switch.shifted511 = lshr i8 27, %switch.maskindex510
  %switch.lobit512 = trunc i8 %switch.shifted511 to i1
  %or.cond514 = select i1 %i.mt, i1 %switch.lobit512, i1 false
  br i1 %or.cond514, label %switch.lookup, label %.thread

.thread:                                          ; preds = %bb.bt, %bb.br, %bb.bp, %bb.bs
  %i.mu = load i32, ptr %i.al, align 4
  br label %switch.lookup

switch.lookup:                                    ; preds = %bb.bt, %bb.br, %.thread
  %i.mv = phi i32 [ %i.mu, %.thread ], [ 372645892, %bb.br ], [ 372645892, %bb.bt ]
  %i.mw = getelementptr inbounds nuw i8, ptr %i.km, i64 28
  %i.mx = load i32, ptr %i.mw, align 4
  %i.my = call ptr @SDL_CreateSurface_REAL(i32 noundef %i.lp, i32 noundef %i.mx, i32 noundef %i.mv) #8 ; 7 uses
  %.not348 = icmp eq ptr %i.my, null
  br i1 %.not348, label %.loopexit373, label %bb.bu

bb.bu:                                            ; preds = %switch.lookup
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #8
  %i.mz = call zeroext i1 @SDL_GetSurfaceBlendMode_REAL(ptr noundef nonnull %i.kr, ptr noundef nonnull %i.h) #8 ; 0 uses
  %i.na = call zeroext i1 @SDL_GetSurfaceAlphaMod_REAL(ptr noundef nonnull %i.kr, ptr noundef nonnull %i.i) #8 ; 0 uses
  %i.nb = call zeroext i1 @SDL_GetSurfaceColorMod_REAL(ptr noundef nonnull %i.kr, ptr noundef nonnull %i.j, ptr noundef nonnull %i.k, ptr noundef nonnull %i.l) #8 ; 0 uses
  store i32 0, ptr %12, align 4
  store i32 0, ptr %i.am, align 4
  %i.nc = load <2 x i32>, ptr %i.lo, align 4
  store <2 x i32> %i.nc, ptr %i.an, align 4
  %i.nd = call zeroext i1 @SDL_SetSurfaceBlendMode_REAL(ptr noundef nonnull %i.kr, i32 noundef 0) #8 ; 0 uses
  %i.ne = call zeroext i1 @SDL_SetSurfaceColorMod_REAL(ptr noundef nonnull %i.kr, i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext -1) #8 ; 0 uses
  %i.nf = call zeroext i1 @SDL_SetSurfaceAlphaMod_REAL(ptr noundef nonnull %i.kr, i8 noundef zeroext -1) #8 ; 0 uses
end_hunk_0
begin_hunk_1_@SW_RunCommandQueue:bb.a
  %i.uw = extractelement <2 x float> %i.po, i64 0 ; 2 uses
  %i.ux = fcmp une float %i.uw, 1.000000e+00
  %i.uy = extractelement <2 x float> %i.po, i64 1 ; 2 uses
  %i.uz = fcmp une float %i.uy, 1.000000e+00
  %or.cond.i214.i = or i1 %i.ux, %i.uz
  br i1 %or.cond.i214.i, label %.split.i, label %Blit_to_Screen.exit216.i

.split.i:                                         ; preds = %bb.dq
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #8
  %i.va = load <4 x i32>, ptr %10, align 16
  %i.vb = sitofp <4 x i32> %i.va to <4 x float>
  %i.vc = fmul <4 x float> %i.pp, %i.vb
  %i.vd = fptosi <4 x float> %i.vc to <4 x i32>
  store <4 x i32> %i.vd, ptr %5, align 16
  %i.ve = call zeroext i1 @SDL_BlitSurfaceScaled_REAL(ptr noundef %.016647.i, ptr noundef null, ptr noundef %i.x, ptr noundef nonnull %5, i32 noundef %i.pr) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  br i1 %i.ve, label %.split, label %bb.dt

Blit_to_Screen.exit216.i:                         ; preds = %bb.dq
  %i.vf = call zeroext i1 @SDL_BlitSurface_REAL(ptr noundef %.016647.i, ptr noundef null, ptr noundef %i.x, ptr noundef nonnull %10) #8
  br i1 %i.vf, label %Blit_to_Screen.exit, label %bb.dt

.split:                                           ; preds = %.split.i
  %i.vg = call zeroext i1 @SDL_SetSurfaceColorMod_REAL(ptr noundef nonnull %i.tu, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #8 ; 0 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %10, ptr noundef nonnull align 16 dereferenceable(16) %7, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #8
  %i.vh = load <4 x i32>, ptr %10, align 16
  %i.vi = sitofp <4 x i32> %i.vh to <4 x float>
  %i.vj = fmul <4 x float> %i.pp, %i.vi
  %i.vk = fptosi <4 x float> %i.vj to <4 x i32>
  store <4 x i32> %i.vk, ptr %4, align 16
  %i.vl = call zeroext i1 @SDL_BlitSurfaceScaled_REAL(ptr noundef nonnull %i.tu, ptr noundef null, ptr noundef %i.x, ptr noundef nonnull %4, i32 noundef %i.pr) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  br i1 %i.vl, label %bb.dr, label %bb.dt

Blit_to_Screen.exit:                              ; preds = %Blit_to_Screen.exit216.i
  %i.vm = call zeroext i1 @SDL_SetSurfaceColorMod_REAL(ptr noundef nonnull %i.tu, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #8 ; 0 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %10, ptr noundef nonnull align 16 dereferenceable(16) %7, i64 16, i1 false)
  %i.vn = call zeroext i1 @SDL_BlitSurface_REAL(ptr noundef nonnull %i.tu, ptr noundef null, ptr noundef %i.x, ptr noundef nonnull %10) #8
  br i1 %i.vn, label %bb.dr, label %bb.dt

bb.dr:                                            ; preds = %.split, %Blit_to_Screen.exit
  %i.vo = getelementptr inbounds nuw i8, ptr %i.tu, i64 8
  %i.vp = load i32, ptr %i.vo, align 8
  %i.vq = getelementptr inbounds nuw i8, ptr %i.tu, i64 12
  %i.vr = load i32, ptr %i.vq, align 4
  %i.vs = getelementptr inbounds nuw i8, ptr %i.tu, i64 4
  %i.vt = load i32, ptr %i.vs, align 4
  %i.vu = getelementptr inbounds nuw i8, ptr %i.tu, i64 24
  %i.vv = load ptr, ptr %i.vu, align 8
  %i.vw = getelementptr inbounds nuw i8, ptr %i.tu, i64 16
  %i.vx = load i32, ptr %i.vw, align 8
  %i.vy = call ptr @SDL_CreateSurfaceFrom_REAL(i32 noundef %i.vp, i32 noundef %i.vr, i32 noundef %i.vt, ptr noundef %i.vv, i32 noundef %i.vx) #8 ; 4 uses
  %.not203.i = icmp eq ptr %i.vy, null
  br i1 %.not203.i, label %bb.dt, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %i.vz = call zeroext i1 @SDL_SetSurfaceBlendMode_REAL(ptr noundef nonnull %i.vy, i32 noundef 2) #8 ; 0 uses
  call fastcc void @Blit_to_Screen(ptr noundef nonnull %i.vy, ptr noundef %i.x, ptr noundef %7, float noundef %i.uw, float noundef %i.uy, i32 noundef %i.pr)
  call void @SDL_DestroySurface_REAL(ptr noundef nonnull %i.vy) #8
  br label %bb.dt

bb.dt:                                            ; preds = %.split, %bb.ds, %bb.dr, %Blit_to_Screen.exit, %Blit_to_Screen.exit216.i, %.split.i
  call void @SDL_DestroySurface_REAL(ptr noundef %.016647.i) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #8
  br label %Blit_to_Screen.exit.i

Blit_to_Screen.exit.i:                            ; preds = %bb.do, %bb.dp, %bb.dt
  call void @SDL_DestroySurface_REAL(ptr noundef nonnull %i.tu) #8
  br label %bb.du

bb.du:                                            ; preds = %Blit_to_Screen.exit.i, %bb.dj, %.split46.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #8
  br label %bb.dv

bb.dv:                                            ; preds = %bb.du, %bb.dh, %.thread29.i, %.thread25.i
  %.116923.i = phi ptr [ %.116922.i, %bb.du ], [ %i.tg, %bb.dh ], [ %i.ql, %.thread25.i ], [ %i.ql, %.thread29.i ]
  %.01671521.i = phi ptr [ %.0167.i, %bb.du ], [ %.0167.i, %bb.dh ], [ null, %.thread25.i ], [ %.0167.i, %.thread29.i ] ; 2 uses
  %i.wa = load i32, ptr %.val367, align 8
  %i.wb = and i32 %i.wa, 2
  %.not204.i = icmp eq i32 %i.wb, 0
  br i1 %.not204.i, label %bb.dx, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  call void @SDL_UnlockSurface_REAL(ptr noundef nonnull %.val367) #8
  br label %bb.dx

bb.dx:                                            ; preds = %bb.dw, %bb.dv
  %.not205.i = icmp eq ptr %.01671521.i, null
  br i1 %.not205.i, label %bb.dz, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  call void @SDL_DestroySurface_REAL(ptr noundef nonnull %.01671521.i) #8
  br label %bb.dz

bb.dz:                                            ; preds = %bb.dy, %bb.dx
  call void @SDL_DestroySurface_REAL(ptr noundef nonnull %.116923.i) #8
  br label %SW_RenderCopyEx.exit

SW_RenderCopyEx.exit:                             ; preds = %bb.cc, %bb.ce, %bb.cg, %bb.ch, %bb.dz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #8
  br label %.loopexit373

bb.ea:                                            ; preds = %bb.i
  %i.wc = getelementptr inbounds nuw i8, ptr %.0300399, i64 8
  %i.wd = load i64, ptr %i.wc, align 8
  %i.we = getelementptr inbounds nuw i8, ptr %2, i64 %i.wd ; 12 uses
  %i.wf = getelementptr inbounds nuw i8, ptr %.0300399, i64 16
  %i.wg = load i64, ptr %i.wf, align 8            ; 7 uses
  %i.wh = trunc i64 %i.wg to i32                  ; 6 uses
  %i.wi = getelementptr inbounds nuw i8, ptr %.0300399, i64 48 ; 2 uses
  %i.wj = load ptr, ptr %i.wi, align 8            ; 2 uses
  %i.wk = getelementptr inbounds nuw i8, ptr %.0300399, i64 44 ; 2 uses
  %i.wl = load i32, ptr %i.wk, align 4
  call fastcc void @SetDrawState(ptr noundef %i.x, ptr noundef %11)
  %.not330 = icmp eq ptr %i.wj, null
  br i1 %.not330, label %bb.ej, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.wm = getelementptr inbounds nuw i8, ptr %i.wj, i64 312
  %i.wn = load ptr, ptr %i.wm, align 8
  %.0300.val = load i32, ptr %i.wk, align 4
  %.0300.val362 = load ptr, ptr %i.wi, align 8
  %i.wo = getelementptr i8, ptr %.0300.val362, i64 312
  %.0300.val362.val = load ptr, ptr %i.wo, align 8 ; 3 uses
  %i.wp = load i8, ptr %i.ab, align 1
  %i.wq = load i8, ptr %i.ac, align 2
  %i.wr = load i8, ptr %i.ad, align 1
  %i.ws = load i8, ptr %i.ae, align 4
  %i.wt = call zeroext i1 @SDL_SetSurfaceColorMod_REAL(ptr noundef %.0300.val362.val, i8 noundef zeroext %i.wp, i8 noundef zeroext %i.wq, i8 noundef zeroext %i.wr) #8 ; 0 uses
  %i.wu = call zeroext i1 @SDL_SetSurfaceAlphaMod_REAL(ptr noundef %.0300.val362.val, i8 noundef zeroext %i.ws) #8 ; 0 uses
  %i.wv = call zeroext i1 @SDL_SetSurfaceBlendMode_REAL(ptr noundef %.0300.val362.val, i32 noundef %.0300.val) #8 ; 0 uses
  %i.ww = load ptr, ptr %11, align 8              ; 4 uses
  %.not334 = icmp eq ptr %i.ww, null
  br i1 %.not334, label %bb.eh, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %i.wx = load i32, ptr %i.ww, align 4
  %.not335 = icmp eq i32 %i.wx, 0
  br i1 %.not335, label %bb.ed, label %bb.ee

bb.ed:                                            ; preds = %bb.ec
  %i.wy = getelementptr inbounds nuw i8, ptr %i.ww, i64 4
  %i.wz = load i32, ptr %i.wy, align 4
  %.not336 = icmp eq i32 %i.wz, 0
  br i1 %.not336, label %bb.eh, label %bb.ee

bb.ee:                                            ; preds = %bb.ed, %bb.ec
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #8
  %i.xa = load <2 x i32>, ptr %i.ww, align 4
  store <2 x i32> %i.xa, ptr %13, align 8
  call void @trianglepoint_2_fixedpoint(ptr noundef nonnull %13) #8
  %i.xb = icmp sgt i32 %i.wh, 0
  br i1 %i.xb, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.ee
  %i.xc = load <2 x i32>, ptr %13, align 8        ; 5 uses
  %wide.trip.count = and i64 %i.wg, 2147483647
  %i.xd = add nsw i64 %wide.trip.count, -1
  %xtraiter = and i64 %i.wg, 3                    ; 3 uses
  %i.xe = icmp ult i64 %i.xd, 3
  br i1 %i.xe, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.wg, 2147483644
  br label %bb.ef

bb.ef:                                            ; preds = %bb.ef, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.3, %bb.ef ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.ef ]
  %i.xf = getelementptr inbounds nuw [20 x i8], ptr %i.we, i64 %indvars.iv
  %i.xg = getelementptr inbounds nuw i8, ptr %i.xf, i64 8 ; 2 uses
  %i.xh = load <2 x i32>, ptr %i.xg, align 4
  %i.xi = add nsw <2 x i32> %i.xh, %i.xc
  store <2 x i32> %i.xi, ptr %i.xg, align 4
  %i.xj = getelementptr inbounds nuw [20 x i8], ptr %i.we, i64 %indvars.iv
  %i.xk = getelementptr inbounds nuw i8, ptr %i.xj, i64 28 ; 2 uses
  %i.xl = load <2 x i32>, ptr %i.xk, align 4
  %i.xm = add nsw <2 x i32> %i.xl, %i.xc
  store <2 x i32> %i.xm, ptr %i.xk, align 4
  %i.xn = getelementptr inbounds nuw [20 x i8], ptr %i.we, i64 %indvars.iv
  %i.xo = getelementptr inbounds nuw i8, ptr %i.xn, i64 48 ; 2 uses
  %i.xp = load <2 x i32>, ptr %i.xo, align 4
  %i.xq = add nsw <2 x i32> %i.xp, %i.xc
  store <2 x i32> %i.xq, ptr %i.xo, align 4
  %i.xr = getelementptr inbounds nuw [20 x i8], ptr %i.we, i64 %indvars.iv
  %i.xs = getelementptr inbounds nuw i8, ptr %i.xr, i64 68 ; 2 uses
  %i.xt = load <2 x i32>, ptr %i.xs, align 4
  %i.xu = add nsw <2 x i32> %i.xt, %i.xc
  store <2 x i32> %i.xu, ptr %i.xs, align 4
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %bb.ef, !llvm.loop !31

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.ef
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.3, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod516 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod516)
  br label %bb.eg

bb.eg:                                            ; preds = %bb.eg, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.eg ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.eg ]
  %i.xv = getelementptr inbounds nuw [20 x i8], ptr %i.we, i64 %indvars.iv.epil
  %i.xw = getelementptr inbounds nuw i8, ptr %i.xv, i64 8 ; 2 uses
  %i.xx = load <2 x i32>, ptr %i.xw, align 4
  %i.xy = add nsw <2 x i32> %i.xx, %i.xc
  store <2 x i32> %i.xy, ptr %i.xw, align 4
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.eg, !llvm.loop !32

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.eg, %bb.ee
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #8
  br label %bb.eh

bb.eh:                                            ; preds = %._crit_edge, %bb.ed, %bb.eb
  %i.xz = icmp sgt i32 %i.wh, 0
  br i1 %i.xz, label %.lr.ph380, label %.loopexit373

.lr.ph380:                                        ; preds = %bb.eh
  %i.ya = getelementptr inbounds nuw i8, ptr %.0300399, i64 60
  %i.yb = getelementptr inbounds nuw i8, ptr %.0300399, i64 64
  br label %bb.ei

bb.ei:                                            ; preds = %.lr.ph380, %bb.ei
  %.0294378 = phi ptr [ %i.we, %.lr.ph380 ], [ %i.yr, %bb.ei ] ; 10 uses
  %.1377 = phi i32 [ 0, %.lr.ph380 ], [ %i.yq, %bb.ei ]
  %i.yc = getelementptr inbounds nuw i8, ptr %.0294378, i64 20
  %i.yd = getelementptr inbounds nuw i8, ptr %.0294378, i64 40
  %i.ye = getelementptr inbounds nuw i8, ptr %.0294378, i64 8
  %i.yf = getelementptr inbounds nuw i8, ptr %.0294378, i64 28
  %i.yg = getelementptr inbounds nuw i8, ptr %.0294378, i64 48
  %i.yh = getelementptr inbounds nuw i8, ptr %.0294378, i64 16
  %i.yi = getelementptr inbounds nuw i8, ptr %.0294378, i64 36
  %i.yj = getelementptr inbounds nuw i8, ptr %.0294378, i64 56
  %i.yk = load i32, ptr %i.ya, align 4
  %i.yl = load i32, ptr %i.yb, align 8
  %i.ym = load i32, ptr %i.yh, align 4
  %i.yn = load i32, ptr %i.yi, align 4
  %i.yo = load i32, ptr %i.yj, align 4
  %i.yp = call zeroext i1 @SDL_SW_BlitTriangle(ptr noundef %i.wn, ptr noundef %.0294378, ptr noundef nonnull %i.yc, ptr noundef nonnull %i.yd, ptr noundef %i.x, ptr noundef nonnull %i.ye, ptr noundef nonnull %i.yf, ptr noundef nonnull %i.yg, i32 %i.ym, i32 %i.yn, i32 %i.yo, i32 noundef %i.yk, i32 noundef %i.yl) #8 ; 0 uses
  %i.yq = add nuw nsw i32 %.1377, 3               ; 2 uses
  %i.yr = getelementptr inbounds nuw i8, ptr %.0294378, i64 60
  %i.ys = icmp slt i32 %i.yq, %i.wh
  br i1 %i.ys, label %bb.ei, label %.loopexit373, !llvm.loop !33

bb.ej:                                            ; preds = %bb.ea
  %i.yt = load ptr, ptr %11, align 8              ; 4 uses
  %.not331 = icmp eq ptr %i.yt, null
  br i1 %.not331, label %bb.ep, label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  %i.yu = load i32, ptr %i.yt, align 4
  %.not332 = icmp eq i32 %i.yu, 0
  br i1 %.not332, label %bb.el, label %bb.em

bb.el:                                            ; preds = %bb.ek
  %i.yv = getelementptr inbounds nuw i8, ptr %i.yt, i64 4
  %i.yw = load i32, ptr %i.yv, align 4
  %.not333 = icmp eq i32 %i.yw, 0
  br i1 %.not333, label %bb.ep, label %bb.em

bb.em:                                            ; preds = %bb.el, %bb.ek
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #8
  %i.yx = load <2 x i32>, ptr %i.yt, align 4
  store <2 x i32> %i.yx, ptr %14, align 8
  call void @trianglepoint_2_fixedpoint(ptr noundef nonnull %14) #8
  %i.yy = icmp sgt i32 %i.wh, 0
  br i1 %i.yy, label %.lr.ph383, label %._crit_edge384

.lr.ph383:                                        ; preds = %bb.em
  %i.yz = load <2 x i32>, ptr %14, align 8        ; 5 uses
  %wide.trip.count412 = and i64 %i.wg, 2147483647
  %i.za = add nsw i64 %wide.trip.count412, -1
  %xtraiter518 = and i64 %i.wg, 3                 ; 3 uses
  %i.zb = icmp ult i64 %i.za, 3
  br i1 %i.zb, label %.epil.preheader517, label %.lr.ph383.new

.lr.ph383.new:                                    ; preds = %.lr.ph383
  %unroll_iter522 = and i64 %i.wg, 2147483644
  br label %bb.en

bb.en:                                            ; preds = %bb.en, %.lr.ph383.new
  %indvars.iv409 = phi i64 [ 0, %.lr.ph383.new ], [ %indvars.iv.next410.3, %bb.en ] ; 5 uses
  %niter523 = phi i64 [ 0, %.lr.ph383.new ], [ %niter523.next.3, %bb.en ]
  %i.zc = getelementptr inbounds nuw [12 x i8], ptr %i.we, i64 %indvars.iv409 ; 2 uses
  %i.zd = load <2 x i32>, ptr %i.zc, align 4
  %i.ze = add nsw <2 x i32> %i.zd, %i.yz
  store <2 x i32> %i.ze, ptr %i.zc, align 4
  %i.zf = getelementptr inbounds nuw [12 x i8], ptr %i.we, i64 %indvars.iv409
  %i.zg = getelementptr inbounds nuw i8, ptr %i.zf, i64 12 ; 2 uses
  %i.zh = load <2 x i32>, ptr %i.zg, align 4
  %i.zi = add nsw <2 x i32> %i.zh, %i.yz
  store <2 x i32> %i.zi, ptr %i.zg, align 4
  %i.zj = getelementptr inbounds nuw [12 x i8], ptr %i.we, i64 %indvars.iv409
  %i.zk = getelementptr inbounds nuw i8, ptr %i.zj, i64 24 ; 2 uses
  %i.zl = load <2 x i32>, ptr %i.zk, align 4
  %i.zm = add nsw <2 x i32> %i.zl, %i.yz
  store <2 x i32> %i.zm, ptr %i.zk, align 4
  %i.zn = getelementptr inbounds nuw [12 x i8], ptr %i.we, i64 %indvars.iv409
  %i.zo = getelementptr inbounds nuw i8, ptr %i.zn, i64 36 ; 2 uses
  %i.zp = load <2 x i32>, ptr %i.zo, align 4
  %i.zq = add nsw <2 x i32> %i.zp, %i.yz
  store <2 x i32> %i.zq, ptr %i.zo, align 4
  %indvars.iv.next410.3 = add nuw nsw i64 %indvars.iv409, 4 ; 2 uses
  %niter523.next.3 = add i64 %niter523, 4         ; 2 uses
  %niter523.ncmp.3 = icmp eq i64 %niter523.next.3, %unroll_iter522
  br i1 %niter523.ncmp.3, label %._crit_edge384.loopexit.unr-lcssa, label %bb.en, !llvm.loop !34

._crit_edge384.loopexit.unr-lcssa:                ; preds = %bb.en
  %lcmp.mod520.not = icmp eq i64 %xtraiter518, 0
  br i1 %lcmp.mod520.not, label %._crit_edge384, label %.epil.preheader517

.epil.preheader517:                               ; preds = %._crit_edge384.loopexit.unr-lcssa, %.lr.ph383
  %indvars.iv409.epil.init = phi i64 [ 0, %.lr.ph383 ], [ %indvars.iv.next410.3, %._crit_edge384.loopexit.unr-lcssa ]
  %lcmp.mod521 = icmp ne i64 %xtraiter518, 0
  call void @llvm.assume(i1 %lcmp.mod521)
  br label %bb.eo

bb.eo:                                            ; preds = %bb.eo, %.epil.preheader517
  %indvars.iv409.epil = phi i64 [ %indvars.iv409.epil.init, %.epil.preheader517 ], [ %indvars.iv.next410.epil, %bb.eo ] ; 2 uses
  %epil.iter519 = phi i64 [ 0, %.epil.preheader517 ], [ %epil.iter519.next, %bb.eo ]
  %i.zr = getelementptr inbounds nuw [12 x i8], ptr %i.we, i64 %indvars.iv409.epil ; 2 uses
  %i.zs = load <2 x i32>, ptr %i.zr, align 4
  %i.zt = add nsw <2 x i32> %i.zs, %i.yz
  store <2 x i32> %i.zt, ptr %i.zr, align 4
  %indvars.iv.next410.epil = add nuw nsw i64 %indvars.iv409.epil, 1
  %epil.iter519.next = add i64 %epil.iter519, 1   ; 2 uses
  %epil.iter519.cmp.not = icmp eq i64 %epil.iter519.next, %xtraiter518
  br i1 %epil.iter519.cmp.not, label %._crit_edge384, label %bb.eo, !llvm.loop !35

._crit_edge384:                                   ; preds = %._crit_edge384.loopexit.unr-lcssa, %bb.eo, %bb.em
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #8
  br label %bb.ep

bb.ep:                                            ; preds = %._crit_edge384, %bb.el, %bb.ej
  %i.zu = icmp sgt i32 %i.wh, 0
  br i1 %i.zu, label %.lr.ph388, label %.loopexit373

.lr.ph388:                                        ; preds = %bb.ep, %.lr.ph388
  %.0386 = phi ptr [ %i.aaf, %.lr.ph388 ], [ %i.we, %bb.ep ] ; 7 uses
  %.3385 = phi i32 [ %i.aae, %.lr.ph388 ], [ 0, %bb.ep ]
  %i.zv = getelementptr inbounds nuw i8, ptr %.0386, i64 12
  %i.zw = getelementptr inbounds nuw i8, ptr %.0386, i64 24
  %i.zx = getelementptr inbounds nuw i8, ptr %.0386, i64 8
  %i.zy = getelementptr inbounds nuw i8, ptr %.0386, i64 20
  %i.zz = getelementptr inbounds nuw i8, ptr %.0386, i64 32
  %i.aaa = load i32, ptr %i.zx, align 4
  %i.aab = load i32, ptr %i.zy, align 4
  %i.aac = load i32, ptr %i.zz, align 4
  %i.aad = call zeroext i1 @SDL_SW_FillTriangle(ptr noundef %i.x, ptr noundef %.0386, ptr noundef nonnull %i.zv, ptr noundef nonnull %i.zw, i32 noundef %i.wl, i32 %i.aaa, i32 %i.aab, i32 %i.aac) #8 ; 0 uses
  %i.aae = add nuw nsw i32 %.3385, 3              ; 2 uses
  %i.aaf = getelementptr inbounds nuw i8, ptr %.0386, i64 36
  %i.aag = icmp slt i32 %i.aae, %i.wh
  br i1 %i.aag, label %.lr.ph388, label %.loopexit373, !llvm.loop !36

.loopexit373:                                     ; preds = %bb.ei, %.lr.ph388, %bb.eh, %bb.ep, %bb.bk, %bb.bv, %bb.bu, %switch.lookup, %bb.bc, %bb.bd, %bb.av, %bb.aw, %bb.ap, %bb.aq, %SW_RenderCopyEx.exit, %bb.ak, %bb.x, %bb.w, %bb.v, %bb.i
  %i.aah = getelementptr inbounds nuw i8, ptr %.0300399, i64 80
  %i.aai = load ptr, ptr %i.aah, align 8          ; 2 uses
  %.not = icmp eq ptr %i.aai, null
  br i1 %.not, label %.loopexit375, label %bb.i, !llvm.loop !37

.loopexit375:                                     ; preds = %.loopexit373, %bb.h, %SW_ActivateRenderer.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #8
  ret i1 %i.y
}

; Function Attrs: nounwind uwtable
define internal ptr @SW_RenderReadPixels(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 280
  %.val = load ptr, ptr %i.a, align 8             ; 3 uses
  %i.b = getelementptr i8, ptr %0, i64 736
  %.val23 = load ptr, ptr %i.b, align 8           ; 6 uses
  %i.c = load ptr, ptr %.val23, align 8           ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %.val23, i64 8
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  store ptr %i.e, ptr %.val23, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = phi ptr [ %i.e, %bb.b ], [ %i.c, %bb.a ] ; 3 uses
  %.not15.i = icmp eq ptr %.val, null
  br i1 %.not15.i, label %SW_ActivateRenderer.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not16.i = icmp eq ptr %i.f, null
  br i1 %.not16.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %.val, i64 264
  %i.h = load i8, ptr %i.g, align 8, !range !7, !noundef !8
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %SW_ActivateRenderer.exit, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.j = tail call ptr @SDL_GetWindowSurface_REAL(ptr noundef nonnull %.val) #8 ; 4 uses
  %.not17.i = icmp eq ptr %i.j, null
  br i1 %.not17.i, label %._crit_edge.i, label %bb.g

._crit_edge.i:                                    ; preds = %bb.f
  %.pre.i = load ptr, ptr %.val23, align 8
  br label %SW_ActivateRenderer.exit

bb.g:                                             ; preds = %bb.f
  %i.k = getelementptr inbounds nuw i8, ptr %.val23, i64 8
  store ptr %i.j, ptr %i.k, align 8
  store ptr %i.j, ptr %.val23, align 8
  br label %SW_ActivateRenderer.exit

SW_ActivateRenderer.exit:                         ; preds = %bb.c, %bb.e, %._crit_edge.i, %bb.g
  %i.l = phi ptr [ %.pre.i, %._crit_edge.i ], [ %i.j, %bb.g ], [ %i.f, %bb.e ], [ %i.f, %bb.c ] ; 7 uses
  %i.m = tail call zeroext i1 @SDL_SurfaceValid(ptr noundef %i.l) #8
  br i1 %i.m, label %bb.h, label %bb.n

bb.h:                                             ; preds = %SW_ActivateRenderer.exit
  %i.n = load i32, ptr %1, align 4                ; 3 uses
  %i.o = icmp slt i32 %i.n, 0
  br i1 %i.o, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.q = load i32, ptr %i.p, align 4              ; 2 uses
  %i.r = add nsw i32 %i.q, %i.n
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.t = load i32, ptr %i.s, align 8
  %i.u = icmp sgt i32 %i.r, %i.t
  br i1 %i.u, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.w = load i32, ptr %i.v, align 4              ; 3 uses
  %i.x = icmp slt i32 %i.w, 0
  br i1 %i.x, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.z = load i32, ptr %i.y, align 4              ; 2 uses
  %i.aa = add nsw i32 %i.z, %i.w
  %i.ab = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  %i.ac = load i32, ptr %i.ab, align 4
  %i.ad = icmp sgt i32 %i.aa, %i.ac
  br i1 %i.ad, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i, %bb.h
  %i.ae = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.10) #8 ; 0 uses
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.af = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.ai = load i32, ptr %i.ah, align 8            ; 2 uses
  %i.aj = mul nsw i32 %i.ai, %i.w
  %i.ak = sext i32 %i.aj to i64
  %i.al = getelementptr inbounds i8, ptr %i.ag, i64 %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %i.l, i64 56
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 5
  %i.ap = load i8, ptr %i.ao, align 1
  %i.aq = zext i8 %i.ap to i32
  %i.ar = mul nuw nsw i32 %i.n, %i.aq
  %i.as = zext nneg i32 %i.ar to i64
  %i.at = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.as
  %i.au = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.av = load i32, ptr %i.au, align 4
  %i.aw = tail call ptr @SDL_DuplicatePixels(i32 noundef %i.q, i32 noundef %i.z, i32 noundef %i.av, i32 noundef 301991328, ptr noundef %i.at, i32 noundef %i.ai) #8
  br label %bb.n

bb.n:                                             ; preds = %SW_ActivateRenderer.exit, %bb.m, %bb.l
  %.0 = phi ptr [ null, %bb.l ], [ %i.aw, %bb.m ], [ null, %SW_ActivateRenderer.exit ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @SW_RenderPresent(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call zeroext i1 @SDL_UpdateWindowSurface_REAL(ptr noundef nonnull %i.b) #8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i1 [ %i.c, %bb.b ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define internal void @SW_DestroyTexture(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 312
  %i.b = load ptr, ptr %i.a, align 8
  tail call void @SDL_DestroySurface_REAL(ptr noundef %i.b) #8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @SW_DestroyRenderer(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 736
  %i.d = load ptr, ptr %i.c, align 8
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call zeroext i1 @SDL_DestroyWindowSurface_REAL(ptr noundef nonnull %i.b) #8 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @SDL_free_REAL(ptr noundef %i.d) #8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define internal noundef zeroext i1 @SW_CreateRenderer(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
bb.a:
  %i.a = tail call ptr @SDL_GetHint_REAL(ptr noundef nonnull @.str.11) #8 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i8, ptr %i.a, align 1
  %.not12 = icmp eq i8 %i.b, 0
  br i1 %.not12, label %.thread, label %bb.c

.thread:                                          ; preds = %bb.a, %bb.b
  %i.c = tail call zeroext i1 @SDL_GetBooleanProperty_REAL(i32 noundef %2, ptr noundef nonnull @.str.12, i1 noundef zeroext false) #8
  %.str.13..str.14 = select i1 %i.c, ptr @.str.13, ptr @.str.14
  %i.d = tail call zeroext i1 @SDL_SetHint_REAL(ptr noundef nonnull @.str.11, ptr noundef nonnull %.str.13..str.14) #8 ; 0 uses
  %i.e = tail call ptr @SDL_GetWindowSurface_REAL(ptr noundef %1) #8
  %i.f = tail call zeroext i1 @SDL_SetHint_REAL(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.15) #8 ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = tail call ptr @SDL_GetWindowSurface_REAL(ptr noundef %1) #8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.thread
  %i.h = phi ptr [ %i.e, %.thread ], [ %i.g, %bb.c ] ; 2 uses
  %i.i = tail call zeroext i1 @SDL_SurfaceValid(ptr noundef %i.h) #8
  br i1 %i.i, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.j = tail call zeroext i1 @SW_CreateRendererForSurface(ptr noundef %0, ptr noundef %i.h, i32 noundef %2)
  br i1 %i.j, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = tail call zeroext i1 @SDL_DestroyWindowSurface_REAL(ptr noundef %1) #8 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.d, %bb.f
  %.0 = phi i1 [ false, %bb.d ], [ false, %bb.f ], [ true, %bb.e ]
  ret i1 %.0
}

declare zeroext i1 @SDL_GetWindowSizeInPixels_REAL(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @SDL_CreatePalette_REAL(i32 noundef) local_unnamed_addr #2

declare zeroext i1 @SDL_SetPaletteColors_REAL(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @SDL_DestroyPalette_REAL(ptr noundef) local_unnamed_addr #2

declare zeroext i1 @SDL_SetSurfacePalette_REAL(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @SDL_CreateSurface_REAL(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare float @SDL_roundf_REAL(float noundef) local_unnamed_addr #2

declare zeroext i1 @SDL_SetSurfaceColorMod_REAL(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

declare zeroext i1 @SDL_SetSurfaceAlphaMod_REAL(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare zeroext i1 @SDL_SetSurfaceBlendMode_REAL(ptr noundef, i32 noundef) local_unnamed_addr #2

declare zeroext i1 @SDL_SetSurfaceRLE_REAL(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

declare zeroext i1 @SDL_LockSurface_REAL(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare void @SDL_UnlockSurface_REAL(ptr noundef) local_unnamed_addr #2

declare ptr @SDL_AllocateRenderVertices(ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare void @trianglepoint_2_fixedpoint(ptr noundef) local_unnamed_addr #2

declare zeroext i1 @SDL_SetSurfaceClipRect_REAL(ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i1 @SDL_FillSurfaceRect_REAL(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @SDL_MapSurfaceRGBA_REAL(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @SetDrawState(ptr noundef %0, ptr nofree noundef nonnull captures(none) %1) unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.SDL_Rect, align 8           ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !range !7, !noundef !8
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %1, align 8                ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8              ; 3 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %.split, label %bb.d

.split:                                           ; preds = %bb.b, %.split
  %i.g = tail call i32 @SDL_ReportAssertion_REAL(ptr noundef nonnull @SetDrawState.sdl_assert_data, ptr noundef nonnull @__func__.SetDrawState, ptr noundef nonnull @.str.9, i32 noundef 688) #8
  switch i32 %i.g, label %.thread24 [
    i32 0, label %.split
    i32 1, label %bb.c
  ]

bb.c:                                             ; preds = %.split
  tail call void @llvm.debugtrap()
  br label %.thread24

bb.d:                                             ; preds = %bb.b
  %.not26 = icmp eq ptr %i.f, null
  br i1 %.not26, label %.thread24, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #8
  %i.h = load <2 x i32>, ptr %i.f, align 4
  %i.i = load <2 x i32>, ptr %i.d, align 4
  %i.j = add nsw <2 x i32> %i.i, %i.h
  store <2 x i32> %i.j, ptr %2, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.m = load <2 x i32>, ptr %i.k, align 4
  store <2 x i32> %i.m, ptr %i.l, align 8
  %i.n = call zeroext i1 @SDL_GetRectIntersection_REAL(ptr noundef nonnull %i.d, ptr noundef nonnull %2, ptr noundef nonnull %2) #8 ; 0 uses
  %i.o = call zeroext i1 @SDL_SetSurfaceClipRect_REAL(ptr noundef %0, ptr noundef nonnull %2) #8 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  br label %bb.f

.thread24:                                        ; preds = %.split, %bb.c, %bb.d
  %i.p = load ptr, ptr %1, align 8
  %i.q = tail call zeroext i1 @SDL_SetSurfaceClipRect_REAL(ptr noundef %0, ptr noundef %i.p) #8 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %.thread24, %bb.e
  store i8 0, ptr %i.a, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.a
  ret void
}

declare zeroext i1 @SDL_DrawPoints(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare zeroext i1 @SDL_BlendPoints(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

declare zeroext i1 @SDL_DrawLines(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare zeroext i1 @SDL_BlendLines(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

declare zeroext i1 @SDL_FillSurfaceRects_REAL(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare zeroext i1 @SDL_BlendFillRects(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

declare zeroext i1 @SDL_BlitSurface_REAL(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i1 @SDL_GetSurfaceBlendMode_REAL(ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i1 @SDL_GetSurfaceAlphaMod_REAL(ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i1 @SDL_GetSurfaceColorMod_REAL(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i1 @SDL_BlitSurfaceScaled_REAL(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @SDL_DestroySurface_REAL(ptr noundef) local_unnamed_addr #2

declare zeroext i1 @SDL_SW_BlitTriangle(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32, i32, i32, i32 noundef, i32 noundef) local_unnamed_addr #2

declare zeroext i1 @SDL_SW_FillTriangle(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32, i32, i32) local_unnamed_addr #2

declare ptr @SDL_GetWindowSurface_REAL(ptr noundef) local_unnamed_addr #2

declare i32 @SDL_ReportAssertion_REAL(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.debugtrap() #8

declare zeroext i1 @SDL_GetRectIntersection_REAL(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @SDL_CreateSurfaceFrom_REAL(i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @SDLgfx_rotozoomSurfaceSizeTrig(i32 noundef, i32 noundef, double noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @SDLgfx_rotateSurface(ptr noundef, double noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, double noundef, double noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @Blit_to_Screen(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, float noundef %3, float noundef %4, i32 noundef %5) unnamed_addr #0 {
bb.a:
  %6 = alloca %struct.SDL_Rect, align 16          ; 4 uses
  %i.a = fcmp une float %3, 1.000000e+00
  %i.b = fcmp une float %4, 1.000000e+00
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #8
  %i.c = load <4 x i32>, ptr %2, align 4
  %i.d = sitofp <4 x i32> %i.c to <4 x float>
  %i.e = insertelement <4 x float> poison, float %3, i64 0
  %i.f = insertelement <4 x float> %i.e, float %4, i64 1
  %i.g = shufflevector <4 x float> %i.f, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.h = fmul <4 x float> %i.g, %i.d
  %i.i = fptosi <4 x float> %i.h to <4 x i32>
  store <4 x i32> %i.i, ptr %6, align 16
  %i.j = call zeroext i1 @SDL_BlitSurfaceScaled_REAL(ptr noundef %0, ptr noundef null, ptr noundef %1, ptr noundef nonnull %6, i32 noundef %5) #8 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.k = tail call zeroext i1 @SDL_BlitSurface_REAL(ptr noundef %0, ptr noundef null, ptr noundef %1, ptr noundef nonnull %2) #8 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

declare ptr @SDL_DuplicatePixels(i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare zeroext i1 @SDL_UpdateWindowSurface_REAL(ptr noundef) local_unnamed_addr #2

declare zeroext i1 @SDL_DestroyWindowSurface_REAL(ptr noundef) local_unnamed_addr #2

declare void @SDL_free_REAL(ptr noundef) local_unnamed_addr #2

declare zeroext i1 @SDL_AddSupportedTextureFormat(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @SDL_GetHint_REAL(ptr noundef) local_unnamed_addr #2

declare zeroext i1 @SDL_GetBooleanProperty_REAL(i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

declare zeroext i1 @SDL_SetHint_REAL(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { nounwind allocsize(0,1) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!3 = !{!"llvm.loop.mustprogress"}
!4 = !{!"llvm.loop.isvectorized", i32 1}
!5 = !{!"llvm.loop.unroll.runtime.disable"}
!6 = !{!"branch_weights", i32 1, i32 1048575}
!7 = !{i8 0, i8 2}
!8 = !{}
!9 = distinct !{!9, !3}
!10 = distinct !{!10, !"LVerDomain"}
!11 = distinct !{!11, !10}
!12 = distinct !{!12, !10}
!13 = distinct !{!13, !3, !4, !5}
!14 = distinct !{!14, !3, !4}
!15 = !{!11}
!16 = !{!12}
!17 = distinct !{!17, !3}
!18 = distinct !{!18, !3}
!19 = distinct !{!19, !3}
!20 = distinct !{!20, !"LVerDomain"}
!21 = distinct !{!21, !20}
!22 = distinct !{!22, !20}
!23 = distinct !{!23, !3, !4, !5}
!24 = distinct !{!24, !3, !4}
!25 = distinct !{!25, !"LVerDomain"}
!26 = distinct !{!26, !25}
!27 = distinct !{!27, !25}
!28 = distinct !{!28, !3, !4, !5}
!29 = distinct !{!29, !3, !4}
!30 = distinct !{!30, !3}
!31 = distinct !{!31, !3}
!32 = distinct !{!32, !42}
!33 = distinct !{!33, !3}
!34 = distinct !{!34, !3}
!35 = distinct !{!35, !42}
!36 = distinct !{!36, !3}
!37 = distinct !{!37, !3}
!38 = !{!21}
!39 = !{!22}
!40 = !{!26}
!41 = !{!27}
!42 = !{!"llvm.loop.unroll.disable"}
end_hunk_1
