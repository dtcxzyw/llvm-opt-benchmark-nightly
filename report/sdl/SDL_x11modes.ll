Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sdl/original/SDL_x11modes?download=true
inline.NumInlined: 18
inline.NumDeleted: 11
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@SetXRandRModeInfo:bb.a
  %i.r = icmp ne i32 %i.q, 0
  %i.s = load ptr, ptr %i.a, align 8              ; 4 uses
  %i.t = icmp ne ptr %i.s, null
  %or.cond = select i1 %i.r, i1 %i.t, i1 false
  br i1 %or.cond, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 64
  %i.v = load i32, ptr %i.u, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 80
  %i.x = load i32, ptr %i.w, align 8
  %i.y = load ptr, ptr @X11_XFree, align 8
  %i.z = call i32 %i.y(ptr noundef nonnull %i.s) #8 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.036 = phi i32 [ %i.v, %bb.f ], [ 65536, %bb.e ]
  %.035 = phi i32 [ %i.x, %bb.f ], [ 65536, %bb.e ]
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 8
  %. = select i1 %.037, i64 8, i64 12
  %.61 = select i1 %.037, i64 12, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.g, i64 %.
  %.sink58 = load i32, ptr %i.ab, align 4
  %i.ac = mul i32 %.sink58, %.036
  %i.ad = add i32 %i.ac, 65535
  %i.ae = lshr i32 %i.ad, 16
  store i32 %i.ae, ptr %i.aa, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.g, i64 %.61
  %.pn = load i32, ptr %i.af, align 4
  %.sink.in.in = mul i32 %.pn, %.035
  %.sink.in = add i32 %.sink.in.in, 65535
  %.sink = lshr i32 %.sink.in, 16
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 %.sink, ptr %i.ag, align 4
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 28
  %i.aj = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %i.ak = load i32, ptr %i.aj, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  %i.am = load i64, ptr %i.al, align 8
  %i.an = trunc i64 %i.am to i32                  ; 2 uses
  %i.ao = lshr i32 %i.an, 5
  %i.ap = and i32 %i.ao, 1
  %spec.select.i = shl i32 %i.ak, %i.ap
  %i.aq = lshr i32 %i.an, 4
  %i.ar = and i32 %i.aq, 1
  %.1.i = lshr i32 %spec.select.i, %i.ar          ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.g, i64 32 ; 2 uses
  %i.at = load i32, ptr %i.as, align 8
  %i.au = icmp ne i32 %i.at, 0
  %i.av = icmp ne i32 %.1.i, 0
  %or.cond.i = select i1 %i.au, i1 %i.av, i1 false
  br i1 %or.cond.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.aw = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.ax = load i64, ptr %i.aw, align 8
  %i.ay = trunc i64 %i.ax to i32
  store i32 %i.ay, ptr %i.ah, align 8
  %i.az = load i32, ptr %i.as, align 8
  %i.ba = mul i32 %i.az, %.1.i
  br label %CalculateXRandRRefreshRate.exit

bb.i:                                             ; preds = %bb.g
  store i32 0, ptr %i.ah, align 8
  br label %CalculateXRandRRefreshRate.exit

CalculateXRandRRefreshRate.exit:                  ; preds = %bb.h, %bb.i
  %storemerge.i = phi i32 [ 0, %bb.i ], [ %i.ba, %bb.h ]
  store i32 %storemerge.i, ptr %i.ai, align 4
  %i.bb = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.bc = load ptr, ptr %i.bb, align 8
  store i64 %3, ptr %i.bc, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %bb.a, %CalculateXRandRRefreshRate.exit
  %i.bd = phi i1 [ true, %CalculateXRandRRefreshRate.exit ], [ false, %bb.a ], [ false, %bb.b ]
  ret i1 %i.bd
}

declare zeroext i1 @SDL_AddFullscreenDisplayMode(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @SDL_free_REAL(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden zeroext i1 @X11_SetDisplayMode(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(address) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1664
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.d = load ptr, ptr %i.c, align 8              ; 6 uses
  %i.e = tail call i64 @SDL_GetTicks_REAL() #8
  %i.f = add i64 %i.e, 400
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 632
  store i64 %i.f, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 1833
  %i.i = load i8, ptr %i.h, align 1, !range !5, !noundef !6
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.l = load ptr, ptr %i.k, align 8
  %.not = icmp eq ptr %i.l, %2
  br i1 %.not, label %.sink.split, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = tail call i64 @SDL_GetTicksNS_REAL() #8
  %i.n = add i64 %i.m, 5000000000
  br label %.sink.split

.sink.split:                                      ; preds = %bb.b, %bb.c
  %.sink = phi i64 [ %i.n, %bb.c ], [ 0, %bb.b ]
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store i64 %.sink, ptr %i.o, align 8
  br label %bb.d

bb.d:                                             ; preds = %.sink.split, %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.q = load i8, ptr %i.p, align 8, !range !5, !noundef !6
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.s = load ptr, ptr %i.b, align 8              ; 12 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.u = load ptr, ptr %i.t, align 8              ; 2 uses
  %i.v = load ptr, ptr @X11_XRRGetScreenResources, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 232 ; 3 uses
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = load i32, ptr %i.d, align 8
  %i.z = sext i32 %i.y to i64
  %i.aa = getelementptr inbounds [128 x i8], ptr %i.x, i64 %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load i64, ptr %i.ab, align 8
  %i.ad = tail call ptr %i.v(ptr noundef %i.s, i64 noundef %i.ac) #8 ; 10 uses
  %.not75 = icmp eq ptr %i.ad, null
  br i1 %.not75, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ae = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.7) #8
  br label %.thread

bb.g:                                             ; preds = %bb.e
  %i.af = load ptr, ptr @X11_XRRGetOutputInfo, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.d, i64 48 ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8
  %i.ai = tail call ptr %i.af(ptr noundef nonnull %i.s, ptr noundef nonnull %i.ad, i64 noundef %i.ah) #8 ; 7 uses
  %.not76 = icmp eq ptr %i.ai, null
  br i1 %.not76, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 48
  %i.ak = load i16, ptr %i.aj, align 8
  %i.al = icmp eq i16 %i.ak, 1
  br i1 %i.al, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.am = load ptr, ptr @X11_XRRFreeScreenResources, align 8
  tail call void %i.am(ptr noundef nonnull %i.ad) #8
  %i.an = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.8) #8
  br label %.thread

bb.j:                                             ; preds = %bb.h
  %i.ao = load ptr, ptr @X11_XRRGetCrtcInfo, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 3 uses
  %i.aq = load i64, ptr %i.ap, align 8
  %i.ar = tail call ptr %i.ao(ptr noundef nonnull %i.s, ptr noundef nonnull %i.ad, i64 noundef %i.aq) #8 ; 8 uses
  %.not77 = icmp eq ptr %i.ar, null
  br i1 %.not77, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.as = load ptr, ptr @X11_XRRFreeOutputInfo, align 8
  tail call void %i.as(ptr noundef nonnull %i.ai) #8
  %i.at = load ptr, ptr @X11_XRRFreeScreenResources, align 8
  tail call void %i.at(ptr noundef nonnull %i.ad) #8
  %i.au = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.9) #8
  br label %.thread

bb.l:                                             ; preds = %bb.j
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %i.aw = load i64, ptr %i.av, align 8
  %i.ax = load i64, ptr %i.u, align 8
  %i.ay = icmp eq i64 %i.aw, %i.ax
  br i1 %i.ay, label %.critedge, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.az = load ptr, ptr @X11_XGrabServer, align 8
  %i.ba = tail call i32 %i.az(ptr noundef nonnull %i.s) #8 ; 0 uses
  %i.bb = load ptr, ptr @X11_XRRSetCrtcConfig, align 8
  %i.bc = load i64, ptr %i.ap, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ar, i64 32 ; 2 uses
  %i.be = load i16, ptr %i.bd, align 8
  %i.bf = tail call i32 %i.bb(ptr noundef nonnull %i.s, ptr noundef nonnull %i.ad, i64 noundef %i.bc, i64 noundef 0, i32 noundef 0, i32 noundef 0, i64 noundef 0, i16 noundef zeroext %i.be, ptr noundef null, i32 noundef 0) #8
  %.not78 = icmp eq i32 %i.bf, 0
  br i1 %.not78, label %bb.n, label %.critedge81

bb.n:                                             ; preds = %bb.m
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.bh = load ptr, ptr %i.w, align 8
  %i.bi = load i32, ptr %i.d, align 8
  %i.bj = sext i32 %i.bi to i64
  %i.bk = getelementptr inbounds [128 x i8], ptr %i.bh, i64 %i.bj ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 32
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 12
  %3 = load <2 x i32>, ptr %i.bg, align 8
  %4 = load <2 x i32>, ptr %i.bl, align 8
  %5 = mul nsw <2 x i32> %4, %3
  %6 = load <2 x i32>, ptr %i.bm, align 8
  %7 = sdiv <2 x i32> %5, %6                      ; 2 uses
  %i.bo = load ptr, ptr @X11_XSync, align 8
  %i.bp = tail call i32 %i.bo(ptr noundef nonnull %i.s, i32 noundef 0) #8 ; 0 uses
  %i.bq = load ptr, ptr @X11_XSetErrorHandler, align 8
  %i.br = tail call ptr %i.bq(ptr noundef nonnull @SDL_XRRSetScreenSizeErrHandler) #8
  store ptr %i.br, ptr @PreXRRSetScreenSizeErrorHandler, align 8
  %i.bs = load ptr, ptr @X11_XRRSetScreenSize, align 8
  %i.bt = load ptr, ptr %i.w, align 8
  %i.bu = load i32, ptr %i.d, align 8
  %i.bv = sext i32 %i.bu to i64
  %i.bw = getelementptr inbounds [128 x i8], ptr %i.bt, i64 %i.bv
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %i.by = load i64, ptr %i.bx, align 8
  %i.bz = load i32, ptr %i.bg, align 8
  %i.ca = load i32, ptr %i.bn, align 4
  %8 = extractelement <2 x i32> %7, i64 0
  %9 = extractelement <2 x i32> %7, i64 1
  tail call void %i.bs(ptr noundef nonnull %i.s, i64 noundef %i.by, i32 noundef %i.bz, i32 noundef %i.ca, i32 noundef %8, i32 noundef %9) #8
  %i.cb = load ptr, ptr @X11_XSync, align 8
  %i.cc = tail call i32 %i.cb(ptr noundef nonnull %i.s, i32 noundef 0) #8 ; 0 uses
  %i.cd = load ptr, ptr @X11_XSetErrorHandler, align 8
  %i.ce = load ptr, ptr @PreXRRSetScreenSizeErrorHandler, align 8
  %i.cf = tail call ptr %i.cd(ptr noundef %i.ce) #8 ; 0 uses
  %i.cg = load ptr, ptr @X11_XRRSetCrtcConfig, align 8
  %i.ch = load i64, ptr %i.ap, align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.cj = load i32, ptr %i.ci, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ar, i64 12
  %i.cl = load i32, ptr %i.ck, align 4
  %i.cm = load i64, ptr %i.u, align 8
  %i.cn = load i16, ptr %i.bd, align 8
  %i.co = tail call i32 %i.cg(ptr noundef nonnull %i.s, ptr noundef nonnull %i.ad, i64 noundef %i.ch, i64 noundef 0, i32 noundef %i.cj, i32 noundef %i.cl, i64 noundef %i.cm, i16 noundef zeroext %i.cn, ptr noundef nonnull %i.ag, i32 noundef 1) #8
  %i.cp = icmp eq i32 %i.co, 0
  %i.cq = load ptr, ptr @X11_XUngrabServer, align 8
  %i.cr = tail call i32 %i.cq(ptr noundef nonnull %i.s) #8 ; 0 uses
  %i.cs = load ptr, ptr @X11_XRRFreeCrtcInfo, align 8
  tail call void %i.cs(ptr noundef nonnull %i.ar) #8
  %i.ct = load ptr, ptr @X11_XRRFreeOutputInfo, align 8
  tail call void %i.ct(ptr noundef nonnull %i.ai) #8
  %i.cu = load ptr, ptr @X11_XRRFreeScreenResources, align 8
  tail call void %i.cu(ptr noundef nonnull %i.ad) #8
  br i1 %i.cp, label %.thread, label %bb.o

.critedge81:                                      ; preds = %bb.m
  %i.cv = load ptr, ptr @X11_XUngrabServer, align 8
  %i.cw = tail call i32 %i.cv(ptr noundef nonnull %i.s) #8 ; 0 uses
  %i.cx = load ptr, ptr @X11_XRRFreeCrtcInfo, align 8
  tail call void %i.cx(ptr noundef nonnull %i.ar) #8
  %i.cy = load ptr, ptr @X11_XRRFreeOutputInfo, align 8
  tail call void %i.cy(ptr noundef nonnull %i.ai) #8
  %i.cz = load ptr, ptr @X11_XRRFreeScreenResources, align 8
  tail call void %i.cz(ptr noundef nonnull %i.ad) #8
  br label %bb.o

bb.o:                                             ; preds = %.critedge81, %bb.n
  %i.da = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.10) #8
  br label %.thread

.critedge:                                        ; preds = %bb.l
  %i.db = load ptr, ptr @X11_XRRFreeCrtcInfo, align 8
  tail call void %i.db(ptr noundef nonnull %i.ar) #8
  %i.dc = load ptr, ptr @X11_XRRFreeOutputInfo, align 8
  tail call void %i.dc(ptr noundef nonnull %i.ai) #8
  %i.dd = load ptr, ptr @X11_XRRFreeScreenResources, align 8
  tail call void %i.dd(ptr noundef nonnull %i.ad) #8
  br label %.thread

.thread:                                          ; preds = %bb.k, %bb.f, %bb.o, %bb.i, %bb.d, %bb.n, %.critedge
  %.170 = phi i1 [ true, %bb.d ], [ true, %.critedge ], [ true, %bb.n ], [ %i.au, %bb.k ], [ %i.ae, %bb.f ], [ %i.da, %bb.o ], [ %i.an, %bb.i ]
  ret i1 %.170
}

declare i64 @SDL_GetTicks_REAL() local_unnamed_addr #2

declare i64 @SDL_GetTicksNS_REAL() local_unnamed_addr #2

declare zeroext i1 @SDL_SetError_REAL(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal i32 @SDL_XRRSetScreenSizeErrHandler(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load i8, ptr %i.a, align 8
  switch i8 %i.b, label %bb.b [
    i8 8, label %bb.c
    i8 2, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @PreXRRSetScreenSizeErrorHandler, align 8
  %i.d = tail call i32 %i.c(ptr noundef %0, ptr noundef nonnull %1) #8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.a, %bb.b
  %.0 = phi i32 [ %i.d, %bb.b ], [ 0, %bb.a ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden void @X11_QuitModes(ptr nofree noundef readnone captures(none) %0) local_unnamed_addr #5 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @X11_GetDisplayBounds(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) initializes((0, 16)) %2) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load i32, ptr %i.c, align 8
  store i32 %i.d, ptr %2, align 4
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %i.f = load i32, ptr %i.e, align 4
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 %i.f, ptr %i.g, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load i32, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %i.k, ptr %i.l, align 4
  %i.m = load ptr, ptr %i.h, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 12
  %i.o = load i32, ptr %i.n, align 4
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 %i.o, ptr %i.p, align 4
  ret i1 true
}

; Function Attrs: nounwind uwtable
define hidden noundef zeroext i1 @X11_GetDisplayUsableBounds(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef initializes((0, 16)) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 3 uses
  %i.b = alloca i64, align 8                      ; 3 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  %i.e = alloca ptr, align 8                      ; 6 uses
  %3 = alloca %struct.SDL_Rect, align 16          ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1664
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = load ptr, ptr %i.g, align 8              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  store i64 0, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  store i64 0, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #8
  store ptr null, ptr %i.e, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load i32, ptr %i.k, align 8
  store i32 %i.l, ptr %2, align 4
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 28
  %i.n = load i32, ptr %i.m, align 4
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 %i.n, ptr %i.o, align 4
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load i32, ptr %i.r, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %i.s, ptr %i.t, align 4
  %i.u = load ptr, ptr %i.p, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 12
  %i.w = load i32, ptr %i.v, align 4
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 %i.w, ptr %i.x, align 4
  %i.y = load ptr, ptr @X11_XInternAtom, align 8
  %i.z = tail call i64 %i.y(ptr noundef %i.h, ptr noundef nonnull @.str.11, i32 noundef 0) #8
  %i.aa = load ptr, ptr @X11_XGetWindowProperty, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.h, i64 232
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.h, i64 224
  %i.ae = load i32, ptr %i.ad, align 8
  %i.af = sext i32 %i.ae to i64
  %i.ag = getelementptr inbounds [128 x i8], ptr %i.ac, i64 %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = load i64, ptr %i.ah, align 8
  %i.aj = call i32 %i.aa(ptr noundef %i.h, i64 noundef %i.ai, i64 noundef %i.z, i64 noundef 0, i64 noundef 4, i32 noundef 0, i64 noundef 6, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e) #8
  %i.ak = icmp eq i32 %i.aj, 0
  %i.al = load i64, ptr %i.c, align 8
  %i.am = icmp ugt i64 %i.al, 3
  %or.cond = select i1 %i.ak, i1 %i.am, i1 false  ; 2 uses
  br i1 %or.cond, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.an = load ptr, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #8
  %i.ao = load <4 x i64>, ptr %i.an, align 8
  %i.ap = trunc <4 x i64> %i.ao to <4 x i32>
  store <4 x i32> %i.ap, ptr %3, align 16
  %i.aq = call zeroext i1 @SDL_GetRectIntersection_REAL(ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull %2) #8
  br i1 %i.aq, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  %i.ar = load ptr, ptr %i.e, align 8             ; 2 uses
  %.not = icmp eq ptr %i.ar, null
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.as = load ptr, ptr @X11_XFree, align 8
  %i.at = call i32 %i.as(ptr noundef nonnull %i.ar) #8 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
end_hunk_0
