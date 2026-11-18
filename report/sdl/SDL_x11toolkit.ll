Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sdl/original/SDL_x11toolkit?download=true
inline.NumInlined: 23
inline.NumDeleted: 7
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 5
begin_hunk_0_@X11Toolkit_CalculateIconControl:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  %i.i = load ptr, ptr @X11_XTextExtents, align 8
  %i.j = call i32 %i.i(ptr noundef %i.e, ptr noundef nonnull %i.f, i32 noundef 1, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %1) #14, !inline_history !29 ; 0 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.l = load i16, ptr %i.k, align 2
  %i.m = sext i16 %i.l to i32                     ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.o = load i16, ptr %i.n, align 2
  %i.p = sext i16 %i.o to i32                     ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.r = load i16, ptr %i.q, align 2
  %i.s = sext i16 %i.r to i32
  %i.t = add nsw i32 %i.s, %i.p                   ; 4 uses
  store i32 %i.t, ptr %i.g, align 4
  store i32 %i.p, ptr %i.h, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #14
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 3 uses
  store i32 %i.m, ptr %i.u, align 4
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  store i32 %i.t, ptr %i.v, align 8
  %. = call i32 @llvm.smax.i32(i32 %i.t, i32 %i.m)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.x = load ptr, ptr %0, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 292 ; 3 uses
  %i.z = load i32, ptr %i.y, align 4
  %i.aa = shl nsw i32 %i.z, 3
  %i.ab = add nsw i32 %i.aa, %.                   ; 6 uses
  store i32 %i.ab, ptr %i.u, align 4
  store i32 %i.ab, ptr %i.v, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %i.ac, align 8
  store i32 0, ptr %i.w, align 4
  %i.ad = sub nsw i32 %i.ab, %i.t
  %i.ae = sdiv i32 %i.ad, 2
  %i.af = add nsw i32 %i.ae, %i.p
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 108
  store i32 %i.af, ptr %i.ag, align 4
  %i.ah = sub nsw i32 %i.ab, %i.m
  %i.ai = sdiv i32 %i.ah, 2
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i32 %i.ai, ptr %i.aj, align 8
  %i.ak = load i32, ptr %i.y, align 4
  %i.al = shl nsw i32 %i.ak, 1
  %i.am = add nsw i32 %i.al, %i.ab
  store i32 %i.am, ptr %i.u, align 4
  %i.an = load i32, ptr %i.y, align 4
  %i.ao = shl nsw i32 %i.an, 1
  %i.ap = add nsw i32 %i.ao, %i.ab
  store i32 %i.ap, ptr %i.v, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @X11Toolkit_OnIconControlScaleChange(ptr nofree noundef captures(none) %0) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.b = load ptr, ptr @X11_XFreeFont, align 8
  %i.c = load ptr, ptr %0, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 4 uses
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call i32 %i.b(ptr noundef %i.e, ptr noundef %i.g) #14 ; 0 uses
  %i.i = load ptr, ptr %0, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 292
  %i.k = load i32, ptr %i.j, align 4
  %i.l = mul nsw i32 %i.k, 22
  %i.m = call i32 (ptr, ptr, ...) @SDL_asprintf_REAL(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.52, i32 noundef %i.l) #14 ; 0 uses
  %i.n = load ptr, ptr @X11_XLoadQueryFont, align 8
  %i.o = load ptr, ptr %0, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = load ptr, ptr %i.a, align 8
  %i.s = call ptr %i.n(ptr noundef %i.q, ptr noundef %i.r) #14
  store ptr %i.s, ptr %i.f, align 8
  %i.t = load ptr, ptr %i.a, align 8
  call void @SDL_free_REAL(ptr noundef %i.t) #14
  %i.u = load ptr, ptr %i.f, align 8
  %.not = icmp eq ptr %i.u, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.v = load ptr, ptr %0, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 292
  %i.x = load i32, ptr %i.w, align 4
  %i.y = mul nsw i32 %i.x, 140
  %i.z = call i32 (ptr, ptr, ...) @SDL_asprintf_REAL(ptr noundef nonnull %i.a, ptr noundef nonnull @g_ToolkitFontLatin1, i32 noundef %i.y) #14 ; 0 uses
  %i.aa = load ptr, ptr @X11_XLoadQueryFont, align 8
  %i.ab = load ptr, ptr %0, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = load ptr, ptr %i.a, align 8
  %i.af = call ptr %i.aa(ptr noundef %i.ad, ptr noundef %i.ae) #14
  store ptr %i.af, ptr %i.f, align 8
  %i.ag = load ptr, ptr %i.a, align 8
  call void @SDL_free_REAL(ptr noundef %i.ag) #14
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret void
}

declare i32 @SDL_asprintf_REAL(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden noundef zeroext i1 @X11Toolkit_NotifyControlOfSizeChange(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not = icmp ne ptr %i.b, null                  ; 2 uses
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void %i.b(ptr noundef nonnull %0) #14
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret i1 %.not
}

; Function Attrs: nounwind uwtable
define hidden ptr @X11Toolkit_CreateButtonControl(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noalias ptr @SDL_malloc_REAL(i64 noundef 136) #14 ; 26 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.20) #14 ; 0 uses
  br label %X11Toolkit_AddControlToWindow.exit

bb.c:                                             ; preds = %bb.a
  store ptr %0, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr @X11Toolkit_CalculateButtonControl, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr @X11Toolkit_DrawButtonControl, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store ptr @X11Toolkit_OnButtonControlStateChange, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store ptr @X11Toolkit_DestroyButtonControl, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store ptr null, ptr %i.h, align 8
  store i32 0, ptr %i.c, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 28 ; 3 uses
  store i8 0, ptr %i.i, align 4
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 29
  store i8 1, ptr %i.j, align 1
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 30 ; 2 uses
  store i8 0, ptr %i.k, align 2
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 31
  %i.m = load i32, ptr %1, align 8                ; 2 uses
  %i.n = trunc i32 %i.m to i8
  %i.o = lshr i8 %i.n, 1
  %spec.store.select = and i8 %i.o, 1
  store i8 %spec.store.select, ptr %i.l, align 1
  %i.p = and i32 %i.m, 1
  %.not38 = icmp eq i32 %i.p, 0
  br i1 %.not38, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i8 1, ptr %i.k, align 2
  store i8 1, ptr %i.i, align 4
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  store ptr null, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store ptr %1, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.t = load ptr, ptr %i.s, align 8              ; 2 uses
  %i.u = tail call i64 @SDL_strlen_REAL(ptr noundef %i.t) #14
  %i.v = tail call ptr @X11Toolkit_MakeTextElements(ptr noundef %0, ptr noundef %i.t, i64 noundef %i.u, ptr noundef null) ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  store ptr %i.v, ptr %i.w, align 8
  tail call void @X11Toolkit_ShapeTextElements(ptr noundef %0, ptr noundef %i.v)
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 116
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  %.not23.i.i = icmp eq ptr %i.v, null
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  store i64 0, ptr %i.ab, align 8
  br i1 %.not23.i.i, label %X11Toolkit_CalculateButtonControl.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.e, %.lr.ph.i.i
  %i.ac = phi i32 [ %..i.i, %.lr.ph.i.i ], [ 0, %bb.e ]
  %i.ad = phi i32 [ %i.ah, %.lr.ph.i.i ], [ 0, %bb.e ]
  %.01924.i.i = phi ptr [ %i.al, %.lr.ph.i.i ], [ %i.v, %bb.e ] ; 2 uses
  %i.ae = load ptr, ptr %.01924.i.i, align 8      ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  %i.ag = load i32, ptr %i.af, align 8
  %i.ah = add nsw i32 %i.ag, %i.ad                ; 3 uses
  store i32 %i.ah, ptr %i.aa, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 36
  %i.aj = load i32, ptr %i.ai, align 4
  %..i.i = tail call i32 @llvm.smax.i32(i32 %i.ac, i32 %i.aj) ; 3 uses
  store i32 %..i.i, ptr %i.z, align 4
  %i.ak = getelementptr inbounds nuw i8, ptr %.01924.i.i, i64 8
  %i.al = load ptr, ptr %i.ak, align 8            ; 2 uses
  %.not.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i.i, label %X11Toolkit_CalculateButtonControl.exit, label %.lr.ph.i.i, !llvm.loop !0

X11Toolkit_CalculateButtonControl.exit:           ; preds = %.lr.ph.i.i, %bb.e
  %i.am = phi i32 [ 0, %bb.e ], [ %..i.i, %.lr.ph.i.i ]
  %i.an = phi i32 [ 0, %bb.e ], [ %i.ah, %.lr.ph.i.i ]
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 292
  %i.ap = load i32, ptr %i.ao, align 4            ; 2 uses
  %i.aq = shl nsw i32 %i.ap, 4                    ; 2 uses
  %i.ar = add nsw i32 %i.aq, %i.an
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  store i32 %i.ar, ptr %i.as, align 4
  %i.at = add nsw i32 %i.aq, %i.am
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i32 %i.at, ptr %i.au, align 8
  %i.av = insertelement <2 x i32> poison, i32 %i.ap, i64 0
  %i.aw = shl nsw <2 x i32> %i.av, <i32 3, i32 poison>
  %i.ax = shufflevector <2 x i32> %i.aw, <2 x i32> poison, <2 x i32> zeroinitializer
  store <2 x i32> %i.ax, ptr %i.y, align 8
  store i8 0, ptr %i.x, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 528 ; 3 uses
  %i.az = load i64, ptr %i.ay, align 8            ; 2 uses
  %i.ba = add i64 %i.az, 1                        ; 2 uses
  store i64 %i.ba, ptr %i.ay, align 8
  %i.bb = icmp eq i64 %i.az, 0
  br i1 %i.bb, label %bb.f, label %bb.g

bb.f:                                             ; preds = %X11Toolkit_CalculateButtonControl.exit
  %i.bc = tail call noalias ptr @SDL_malloc_REAL(i64 noundef 8) #14 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 520
  store ptr %i.bc, ptr %i.bd, align 8
  br label %bb.h

bb.g:                                             ; preds = %X11Toolkit_CalculateButtonControl.exit
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 520 ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8
  %i.bg = shl i64 %i.ba, 3
  %i.bh = tail call ptr @SDL_realloc_REAL(ptr noundef %i.bf, i64 noundef %i.bg) #16 ; 2 uses
  store ptr %i.bh, ptr %i.be, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.bi = phi ptr [ %i.bh, %bb.g ], [ %i.bc, %bb.f ]
  %i.bj = load i64, ptr %i.ay, align 8
  %i.bk = getelementptr [8 x i8], ptr %i.bi, i64 %i.bj
  %i.bl = getelementptr i8, ptr %i.bk, i64 -8
  store ptr %i.a, ptr %i.bl, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 544 ; 3 uses
  %i.bn = load i64, ptr %i.bm, align 8            ; 2 uses
  %i.bo = add i64 %i.bn, 1                        ; 2 uses
  store i64 %i.bo, ptr %i.bm, align 8
  %i.bp = icmp eq i64 %i.bn, 0
  br i1 %i.bp, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bq = tail call noalias ptr @SDL_malloc_REAL(i64 noundef 8) #14 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 536
  store ptr %i.bq, ptr %i.br, align 8
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 536 ; 2 uses
  %i.bt = load ptr, ptr %i.bs, align 8
  %i.bu = shl i64 %i.bo, 3
  %i.bv = tail call ptr @SDL_realloc_REAL(ptr noundef %i.bt, i64 noundef %i.bu) #16 ; 2 uses
  store ptr %i.bv, ptr %i.bs, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %i.bw = phi ptr [ %i.bv, %bb.j ], [ %i.bq, %bb.i ]
  %i.bx = load i64, ptr %i.bm, align 8
  %i.by = getelementptr [8 x i8], ptr %i.bw, i64 %i.bx
  %i.bz = getelementptr i8, ptr %i.by, i64 -8
  store ptr %i.a, ptr %i.bz, align 8
  %.pre = load i8, ptr %i.i, align 4, !range !6
  %i.ca = trunc nuw i8 %.pre to i1
  br i1 %i.ca, label %bb.l, label %X11Toolkit_AddControlToWindow.exit

bb.l:                                             ; preds = %bb.k
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 504
  store ptr %i.a, ptr %i.cb, align 8
  br label %X11Toolkit_AddControlToWindow.exit

X11Toolkit_AddControlToWindow.exit:               ; preds = %bb.l, %bb.k, %bb.b
  ret ptr %i.a
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @X11Toolkit_CalculateButtonControl(ptr nofree noundef captures(none) initializes((104, 120)) %0) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 112
  %.not23.i = icmp eq ptr %i.b, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  br i1 %.not23.i, label %X11Toolkit_GetTextElementsRect.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %i.f = phi i32 [ %..i, %.lr.ph.i ], [ 0, %bb.a ]
  %i.g = phi i32 [ %i.l, %.lr.ph.i ], [ 0, %bb.a ]
  %.01924.i = phi ptr [ %i.o, %.lr.ph.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.h = load ptr, ptr %.01924.i, align 8         ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.j = load i32, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 36
  %i.l = add nsw i32 %i.j, %i.g                   ; 3 uses
  store i32 %i.l, ptr %i.e, align 8
  %i.m = load i32, ptr %i.k, align 4
  %..i = tail call i32 @llvm.smax.i32(i32 %i.f, i32 %i.m) ; 3 uses
  store i32 %..i, ptr %i.d, align 4
  %i.n = getelementptr inbounds nuw i8, ptr %.01924.i, i64 8
  %i.o = load ptr, ptr %i.n, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.o, null
  br i1 %.not.i, label %X11Toolkit_GetTextElementsRect.exit, label %.lr.ph.i, !llvm.loop !0

X11Toolkit_GetTextElementsRect.exit:              ; preds = %.lr.ph.i, %bb.a
  %i.p = phi i32 [ 0, %bb.a ], [ %..i, %.lr.ph.i ] ; 2 uses
  %i.q = phi i32 [ 0, %bb.a ], [ %i.l, %.lr.ph.i ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.s = load i8, ptr %i.r, align 8, !range !6, !noundef !7
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %bb.b, label %X11Toolkit_GetTextElementsRect.exit._crit_edge

X11Toolkit_GetTextElementsRect.exit._crit_edge:   ; preds = %X11Toolkit_GetTextElementsRect.exit
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 20
  %.phi.trans.insert16 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.pre = load i32, ptr %.phi.trans.insert, align 4
  %.pre17 = load i32, ptr %.phi.trans.insert16, align 8
  br label %bb.c

bb.b:                                             ; preds = %X11Toolkit_GetTextElementsRect.exit
  %i.u = load ptr, ptr %0, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 292 ; 2 uses
  %i.w = load i32, ptr %i.v, align 4
  %i.x = shl nsw i32 %i.w, 4
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.z = add nsw i32 %i.x, %i.q                   ; 2 uses
  store i32 %i.z, ptr %i.y, align 4
  %i.aa = load i32, ptr %i.v, align 4
  %i.ab = shl nsw i32 %i.aa, 4
  %i.ac = add nsw i32 %i.ab, %i.p                 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.ac, ptr %i.ad, align 8
  br label %bb.c

bb.c:                                             ; preds = %X11Toolkit_GetTextElementsRect.exit._crit_edge, %bb.b
  %i.ae = phi i32 [ %.pre17, %X11Toolkit_GetTextElementsRect.exit._crit_edge ], [ %i.ac, %bb.b ]
  %i.af = phi i32 [ %.pre, %X11Toolkit_GetTextElementsRect.exit._crit_edge ], [ %i.z, %bb.b ]
  %i.ag = sub nsw i32 %i.af, %i.q
  %i.ah = sub nsw i32 %i.ae, %i.p
  %i.ai = insertelement <2 x i32> poison, i32 %i.ag, i64 0
  %i.aj = insertelement <2 x i32> %i.ai, i32 %i.ah, i64 1
  %i.ak = sdiv <2 x i32> %i.aj, splat (i32 2)
  store <2 x i32> %i.ak, ptr %i.c, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @X11Toolkit_DrawButtonControl(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = load ptr, ptr @X11_XSetForeground, align 8
  %i.b = load ptr, ptr %0, align 8                ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 200
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 352
  %i.h = load i64, ptr %i.g, align 8
  %i.i = tail call i32 %i.a(ptr noundef %i.d, ptr noundef %i.f, i64 noundef %i.h) #14 ; 0 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.k = load i32, ptr %i.j, align 8
  %i.l = and i32 %i.k, -2
  %switch = icmp eq i32 %i.l, 2
  br i1 %switch, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.m = load ptr, ptr @X11_XSetForeground, align 8
  %i.n = load ptr, ptr %0, align 8                ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 200
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 448
  %i.t = load i64, ptr %i.s, align 8
  %i.u = tail call i32 %i.m(ptr noundef %i.p, ptr noundef %i.r, i64 noundef %i.t) #14 ; 0 uses
  %i.v = load ptr, ptr @X11_XFillRectangle, align 8
  %i.w = load ptr, ptr %0, align 8                ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 64
  %i.aa = load i64, ptr %i.z, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 200
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 5 uses
  %i.ae = load i32, ptr %i.ad, align 4
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.ag = load i32, ptr %i.af, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 5 uses
  %i.ai = load i32, ptr %i.ah, align 4
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.ak = load i32, ptr %i.aj, align 8
  %i.al = tail call i32 %i.v(ptr noundef %i.y, i64 noundef %i.aa, ptr noundef %i.ac, i32 noundef %i.ae, i32 noundef %i.ag, i32 noundef %i.ai, i32 noundef %i.ak) #14 ; 0 uses
  %i.am = load ptr, ptr @X11_XSetForeground, align 8
  %i.an = load ptr, ptr %0, align 8               ; 3 uses
end_hunk_0
begin_hunk_1_@X11Toolkit_DestroyWindow:bb.a
  %i.cb = load ptr, ptr %i.ca, align 8            ; 2 uses
  %.not77 = icmp eq ptr %i.cb, null
  br i1 %.not77, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  tail call void @xsettings_client_destroy(ptr noundef nonnull %i.cb) #14
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.cc = load ptr, ptr @X11_XFreeGC, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.ce = load ptr, ptr %i.cd, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.cg = load ptr, ptr %i.cf, align 8
  %i.ch = tail call i32 %i.cc(ptr noundef %i.ce, ptr noundef %i.cg) #14 ; 0 uses
  %i.ci = load ptr, ptr %i.cd, align 8            ; 2 uses
  %.not78 = icmp eq ptr %i.ci, null
  br i1 %.not78, label %bb.ad, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.ck = load i64, ptr %i.cj, align 8            ; 2 uses
  %.not79 = icmp eq i64 %i.ck, 0
  br i1 %.not79, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cl = load ptr, ptr @X11_XWithdrawWindow, align 8
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cn = load i32, ptr %i.cm, align 8
  %i.co = tail call i32 %i.cl(ptr noundef nonnull %i.ci, i64 noundef %i.ck, i32 noundef %i.cn) #14 ; 0 uses
  %i.cp = load ptr, ptr @X11_XDestroyWindow, align 8
  %i.cq = load ptr, ptr %i.cd, align 8
  %i.cr = load i64, ptr %i.cj, align 8
  %i.cs = tail call i32 %i.cp(ptr noundef %i.cq, i64 noundef %i.cr) #14 ; 0 uses
  store i64 0, ptr %i.cj, align 8
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.cu = load i8, ptr %i.ct, align 4, !range !6, !noundef !7
  %i.cv = trunc nuw i8 %i.cu to i1
  br i1 %i.cv, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.cw = load ptr, ptr @X11_XCloseDisplay, align 8
  %i.cx = load ptr, ptr %i.cd, align 8
  %i.cy = tail call i32 %i.cw(ptr noundef %i.cx) #14 ; 0 uses
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  store ptr null, ptr %i.cd, align 8
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.x
  %i.cz = load ptr, ptr %0, align 8               ; 2 uses
  %.not80 = icmp eq ptr %i.cz, null
  br i1 %.not80, label %bb.ag, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.da = load i32, ptr %i.a, align 8
  %i.db = icmp eq i32 %i.da, 0
  br i1 %i.db, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.dc = tail call ptr @setlocale(i32 noundef 6, ptr noundef nonnull %i.cz) #14 ; 0 uses
  %i.dd = load ptr, ptr %0, align 8
  tail call void @SDL_free_REAL(ptr noundef %i.dd) #14
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae, %bb.ad
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 640
  %i.df = load ptr, ptr %i.de, align 8
  tail call void @SDL_FriBidi_Destroy(ptr noundef %i.df) #14
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 656
  %i.dh = load ptr, ptr %i.dg, align 8
  tail call void @SDL_LibThai_Destroy(ptr noundef %i.dh) #14
  tail call void @SDL_free_REAL(ptr noundef nonnull %0) #14
  br label %bb.ah

bb.ah:                                            ; preds = %bb.a, %bb.ag
  ret void
}

; Function Attrs: nounwind
declare i32 @shmdt(ptr noundef) local_unnamed_addr #6

declare void @xsettings_client_destroy(ptr noundef) local_unnamed_addr #2

declare void @SDL_FriBidi_Destroy(ptr noundef) local_unnamed_addr #2

declare void @SDL_LibThai_Destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden ptr @X11Toolkit_CreateLabelControl(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %X11Toolkit_AddControlToWindow.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i32 @SDL_strcmp_REAL(ptr noundef nonnull %1, ptr noundef nonnull @.str.3) #14
  %.not64 = icmp eq i32 %i.a, 0
  br i1 %.not64, label %X11Toolkit_AddControlToWindow.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = tail call noalias ptr @SDL_malloc_REAL(i64 noundef 104) #14 ; 20 uses
  %.not65 = icmp eq ptr %i.b, null
  br i1 %.not65, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.c = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.21) #14 ; 0 uses
  br label %X11Toolkit_AddControlToWindow.exit

bb.e:                                             ; preds = %bb.c
  store ptr %0, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store ptr @X11Toolkit_DrawLabelControl, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  store ptr null, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store ptr @X11Toolkit_CalculateLabelControl, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  store ptr @X11Toolkit_DestroyLabelControl, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store ptr null, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 0, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 29
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.l, i8 0, i64 12, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %select.unfold.i, %bb.e
  %.010.i = phi ptr [ %1, %bb.e ], [ %i.p, %select.unfold.i ] ; 2 uses
  %.069.i = phi i32 [ 0, %bb.e ], [ %i.o, %select.unfold.i ] ; 2 uses
  %i.m = load i8, ptr %.010.i, align 1
  %.not7.i = icmp eq i8 %i.m, 0
  br i1 %.not7.i, label %X11Toolkit_CountLinesOfText.exit, label %select.unfold.i

select.unfold.i:                                  ; preds = %bb.f
  %i.n = tail call ptr @SDL_strchr_REAL(ptr noundef nonnull %.010.i, i32 noundef 10) #14 ; 2 uses
  %i.o = add nuw nsw i32 %.069.i, 1               ; 2 uses
  %.not8.i = icmp eq ptr %i.n, null
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 1
  br i1 %.not8.i, label %X11Toolkit_CountLinesOfText.exit, label %bb.f

X11Toolkit_CountLinesOfText.exit:                 ; preds = %bb.f, %select.unfold.i
  %.06.lcssa.i = phi i32 [ %i.o, %select.unfold.i ], [ %.069.i, %bb.f ] ; 2 uses
  %i.q = sext i32 %.06.lcssa.i to i64             ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  store i64 %i.q, ptr %i.r, align 8
  %i.s = tail call noalias ptr @SDL_calloc_REAL(i64 noundef %i.q, i64 noundef 32) #15 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  store ptr %i.s, ptr %i.t, align 8
  %.not73 = icmp eq i32 %.06.lcssa.i, 0
  br i1 %.not73, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %X11Toolkit_CountLinesOfText.exit, %bb.j
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.j ], [ 0, %X11Toolkit_CountLinesOfText.exit ] ; 2 uses
  %.05870 = phi ptr [ %i.al, %bb.j ], [ %1, %X11Toolkit_CountLinesOfText.exit ] ; 6 uses
  %i.u = tail call ptr @SDL_strchr_REAL(ptr noundef %.05870, i32 noundef 10) #14 ; 4 uses
  %.not66 = icmp eq ptr %i.u, null                ; 2 uses
  br i1 %.not66, label %.thread, label %bb.g

.thread:                                          ; preds = %.lr.ph
  %i.v = tail call i64 @SDL_strlen_REAL(ptr noundef %.05870) #14 ; 2 uses
  br label %bb.i

bb.g:                                             ; preds = %.lr.ph
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = ptrtoint ptr %.05870 to i64
  %i.y = sub i64 %i.w, %i.x                       ; 4 uses
  %i.z = icmp ugt ptr %i.u, %.05870
  br i1 %i.z, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.aa = getelementptr inbounds i8, ptr %i.u, i64 -1
  %i.ab = load i8, ptr %i.aa, align 1
  %i.ac = icmp eq i8 %i.ab, 13
  %i.ad = sext i1 %i.ac to i64
  %spec.select = add i64 %i.y, %i.ad
  br label %bb.i

bb.i:                                             ; preds = %.thread, %bb.h, %bb.g
  %i.ae = phi i64 [ %i.y, %bb.g ], [ %i.y, %bb.h ], [ %i.v, %.thread ]
  %.0 = phi i64 [ %i.y, %bb.g ], [ %spec.select, %bb.h ], [ %i.v, %.thread ]
  %sext = shl i64 %.0, 32
  %i.af = ashr exact i64 %sext, 32
  %i.ag = getelementptr inbounds nuw [32 x i8], ptr %i.s, i64 %indvars.iv ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.ai = tail call ptr @X11Toolkit_MakeTextElements(ptr noundef %0, ptr noundef %.05870, i64 noundef %i.af, ptr noundef nonnull %i.ah) ; 2 uses
  store ptr %i.ai, ptr %i.ag, align 8
  tail call void @X11Toolkit_ShapeTextElements(ptr noundef %0, ptr noundef %i.ai)
  br i1 %.not66, label %._crit_edge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aj = shl i64 %i.ae, 32
  %sext67 = add i64 %i.aj, 4294967296
  %i.ak = ashr exact i64 %sext67, 32
  %i.al = getelementptr inbounds i8, ptr %.05870, i64 %i.ak
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %2 = icmp ult i64 %indvars.iv.next, %i.q
  br i1 %2, label %.lr.ph, label %._crit_edge, !llvm.loop !31

._crit_edge:                                      ; preds = %bb.j, %bb.i, %X11Toolkit_CountLinesOfText.exit
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  store i8 1, ptr %i.am, align 8
  tail call void @X11Toolkit_CalculateLabelControl(ptr noundef nonnull %i.b)
  store i8 0, ptr %i.am, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 528 ; 3 uses
  %i.ao = load i64, ptr %i.an, align 8            ; 2 uses
  %i.ap = add i64 %i.ao, 1                        ; 2 uses
  store i64 %i.ap, ptr %i.an, align 8
  %i.aq = icmp eq i64 %i.ao, 0
  br i1 %i.aq, label %bb.k, label %bb.l

bb.k:                                             ; preds = %._crit_edge
  %i.ar = tail call noalias ptr @SDL_malloc_REAL(i64 noundef 8) #14 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 520
  store ptr %i.ar, ptr %i.as, align 8
  br label %bb.m

bb.l:                                             ; preds = %._crit_edge
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 520 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = shl i64 %i.ap, 3
  %i.aw = tail call ptr @SDL_realloc_REAL(ptr noundef %i.au, i64 noundef %i.av) #16 ; 2 uses
  store ptr %i.aw, ptr %i.at, align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ax = phi ptr [ %i.aw, %bb.l ], [ %i.ar, %bb.k ]
  %i.ay = load i64, ptr %i.an, align 8
  %i.az = getelementptr [8 x i8], ptr %i.ax, i64 %i.ay
  %i.ba = getelementptr i8, ptr %i.az, i64 -8
  store ptr %i.b, ptr %i.ba, align 8
  %i.bb = load i8, ptr %i.k, align 1, !range !6, !noundef !7
  %i.bc = trunc nuw i8 %i.bb to i1
  br i1 %i.bc, label %bb.n, label %bb.r

bb.n:                                             ; preds = %bb.m
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 544 ; 3 uses
  %i.be = load i64, ptr %i.bd, align 8            ; 2 uses
  %i.bf = add i64 %i.be, 1                        ; 2 uses
  store i64 %i.bf, ptr %i.bd, align 8
  %i.bg = icmp eq i64 %i.be, 0
  br i1 %i.bg, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bh = tail call noalias ptr @SDL_malloc_REAL(i64 noundef 8) #14 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 536
  store ptr %i.bh, ptr %i.bi, align 8
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 536 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8
  %i.bl = shl i64 %i.bf, 3
  %i.bm = tail call ptr @SDL_realloc_REAL(ptr noundef %i.bk, i64 noundef %i.bl) #16 ; 2 uses
  store ptr %i.bm, ptr %i.bj, align 8
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.bn = phi ptr [ %i.bm, %bb.p ], [ %i.bh, %bb.o ]
  %i.bo = load i64, ptr %i.bd, align 8
  %i.bp = getelementptr [8 x i8], ptr %i.bn, i64 %i.bo
  %i.bq = getelementptr i8, ptr %i.bp, i64 -8
  store ptr %i.b, ptr %i.bq, align 8
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.m
  %i.br = load i8, ptr %i.j, align 4, !range !6, !noundef !7
  %i.bs = trunc nuw i8 %i.br to i1
  br i1 %i.bs, label %bb.s, label %X11Toolkit_AddControlToWindow.exit

bb.s:                                             ; preds = %bb.r
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 504
  store ptr %i.b, ptr %i.bt, align 8
  br label %X11Toolkit_AddControlToWindow.exit

X11Toolkit_AddControlToWindow.exit:               ; preds = %bb.s, %bb.r, %bb.b, %bb.a, %bb.d
  %.059 = phi ptr [ null, %bb.b ], [ null, %bb.d ], [ null, %bb.a ], [ %i.b, %bb.r ], [ %i.b, %bb.s ]
  ret ptr %.059
}

declare i32 @SDL_strcmp_REAL(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @X11Toolkit_DrawLabelControl(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = load ptr, ptr @X11_XSetForeground, align 8
  %i.b = load ptr, ptr %0, align 8                ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 200
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 352
  %i.h = load i64, ptr %i.g, align 8
  %i.i = tail call i32 %i.a(ptr noundef %i.d, ptr noundef %i.f, i64 noundef %i.h) #14 ; 0 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8
  %.not = icmp eq i64 %i.k, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.o = load ptr, ptr %0, align 8
  %i.p = load ptr, ptr %i.l, align 8
  %i.q = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %indvars.iv ; 3 uses
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = load i32, ptr %i.m, align 4
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.u = load i32, ptr %i.t, align 8
  %i.v = add nsw i32 %i.u, %i.s
  %i.w = load i32, ptr %i.n, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 12
  %i.y = load i32, ptr %i.x, align 4
  %i.z = add nsw i32 %i.y, %i.w
  tail call void @X11Toolkit_DrawTextElements(ptr noundef %i.o, ptr noundef %i.r, i32 noundef %i.v, i32 noundef %i.z)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.aa = load i64, ptr %i.j, align 8
  %i.ab = icmp ugt i64 %i.aa, %indvars.iv.next
  br i1 %i.ab, label %bb.b, label %._crit_edge, !llvm.loop !32

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @X11Toolkit_CalculateLabelControl(ptr nofree noundef captures(none) %0) #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.b = load i8, ptr %i.a, align 8, !range !6, !noundef !7
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 0, ptr %i.d, align 4
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.e, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 4 uses
  %i.g = load i64, ptr %i.f, align 8
  %.not99 = icmp eq i64 %i.g, 0
  br i1 %.not99, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.h
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.h ] ; 5 uses
  %i.j = load ptr, ptr %i.h, align 8
  %i.k = getelementptr inbounds nuw [32 x i8], ptr %i.j, i64 %indvars.iv ; 4 uses
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 20
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.not23.i = icmp eq ptr %i.l, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, i8 0, i64 16, i1 false)
  br i1 %.not23.i, label %X11Toolkit_GetTextElementsRect.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %.lr.ph.i
  %i.p = phi i32 [ %..i, %.lr.ph.i ], [ 0, %bb.d ]
  %i.q = phi i32 [ %i.u, %.lr.ph.i ], [ 0, %bb.d ]
  %.025.i = phi i32 [ %i.z, %.lr.ph.i ], [ 0, %bb.d ]
  %.01924.i = phi ptr [ %i.ab, %.lr.ph.i ], [ %i.l, %bb.d ] ; 2 uses
  %i.r = load ptr, ptr %.01924.i, align 8         ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.t = load i32, ptr %i.s, align 8
  %i.u = add nsw i32 %i.t, %i.q                   ; 2 uses
  store i32 %i.u, ptr %i.o, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 36
  %i.w = load i32, ptr %i.v, align 4
  %..i = tail call i32 @llvm.smax.i32(i32 %i.p, i32 %i.w) ; 2 uses
  store i32 %..i, ptr %i.n, align 4
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  %i.y = load i32, ptr %i.x, align 8
  %i.z = tail call i32 @llvm.smax.i32(i32 %.025.i, i32 %i.y) ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.01924.i, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8            ; 2 uses
  %.not.i = icmp eq ptr %i.ab, null
  br i1 %.not.i, label %X11Toolkit_GetTextElementsRect.exit, label %.lr.ph.i, !llvm.loop !0

X11Toolkit_GetTextElementsRect.exit:              ; preds = %.lr.ph.i, %bb.d
  %.0.lcssa.i = phi i32 [ 0, %bb.d ], [ %i.z, %.lr.ph.i ]
  %i.ac = load i8, ptr %i.a, align 8, !range !6, !noundef !7
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %bb.e, label %bb.f

bb.e:                                             ; preds = %X11Toolkit_GetTextElementsRect.exit
  %i.ae = load i32, ptr %i.i, align 4
  %i.af = load ptr, ptr %i.h, align 8
end_hunk_1
