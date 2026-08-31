Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sdl/original/SDL_kmsdrmvulkan?download=true
begin_hunk_0_@KMSDRM_Vulkan_UnloadLibrary:bb.a
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @SDL_UnloadObject_REAL(ptr noundef nonnull %i.b) #5
  store ptr null, ptr %i.a, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden noundef nonnull ptr @KMSDRM_Vulkan_GetInstanceExtensions(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef writeonly captures(address_is_null) %1) local_unnamed_addr #3 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 2, ptr %1, align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret ptr @KMSDRM_Vulkan_GetInstanceExtensions.extensionsForKMSDRM
}

; Function Attrs: nounwind uwtable
define hidden noundef zeroext i1 @KMSDRM_Vulkan_CreateSurface(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 7 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 6 uses
  %i.d = alloca i32, align 4                      ; 7 uses
  %5 = alloca %struct.VkDisplayPlaneCapabilitiesKHR, align 4 ; 4 uses
  %6 = alloca %struct.VkDisplayModeCreateInfoKHR, align 8 ; 8 uses
  %7 = alloca %struct.VkDisplaySurfaceCreateInfoKHR, align 8 ; 10 uses
  %i.e = alloca ptr, align 8                      ; 8 uses
  %i.f = alloca i32, align 4                      ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #5
  store ptr null, ptr %i.e, align 8
  %i.g = tail call i32 @SDL_GetDisplayForWindow_REAL(ptr noundef %1) #5
  %i.h = tail call i32 @SDL_GetDisplayIndex(i32 noundef %i.g) #5
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1376
  %i.j = load ptr, ptr %i.i, align 8              ; 9 uses
  %i.k = tail call ptr %i.j(ptr noundef %2, ptr noundef nonnull @.str.9) #5 ; 2 uses
  %i.l = tail call ptr %i.j(ptr noundef %2, ptr noundef nonnull @.str.10) #5 ; 2 uses
  %i.m = tail call ptr %i.j(ptr noundef %2, ptr noundef nonnull @.str.11) #5
  %i.n = tail call ptr %i.j(ptr noundef %2, ptr noundef nonnull @.str.12) #5 ; 2 uses
  %i.o = tail call ptr %i.j(ptr noundef %2, ptr noundef nonnull @.str.13) #5 ; 2 uses
  %i.p = tail call ptr %i.j(ptr noundef %2, ptr noundef nonnull @.str.14) #5 ; 2 uses
  %i.q = tail call ptr %i.j(ptr noundef %2, ptr noundef nonnull @.str.15) #5 ; 2 uses
  %i.r = tail call ptr %i.j(ptr noundef %2, ptr noundef nonnull @.str.16) #5
  %i.s = tail call ptr %i.j(ptr noundef %2, ptr noundef nonnull @.str.17) #5
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1656
  %i.u = load ptr, ptr %i.t, align 8
  %.not = icmp eq ptr %i.u, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.v = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.18) #5 ; 0 uses
  br label %bb.af

bb.c:                                             ; preds = %bb.a
  %.not159 = icmp eq ptr %i.k, null
  br i1 %.not159, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.w = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.19) #5 ; 0 uses
  br label %bb.af

bb.e:                                             ; preds = %bb.c
  %i.x = call i32 %i.l(ptr noundef %2, ptr noundef nonnull %i.a, ptr noundef null) #5 ; 0 uses
  %i.y = load i32, ptr %i.a, align 4              ; 2 uses
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.aa = call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.20) #5 ; 0 uses
  br label %bb.af

bb.g:                                             ; preds = %bb.e
  %i.ab = zext i32 %i.y to i64
  %i.ac = shl nuw nsw i64 %i.ab, 3
  %i.ad = call noalias ptr @SDL_malloc_REAL(i64 noundef %i.ac) #5 ; 12 uses
  %i.ae = call noalias ptr @SDL_malloc_REAL(i64 noundef 824) #5 ; 12 uses
  %i.af = call i32 %i.l(ptr noundef %2, ptr noundef nonnull %i.a, ptr noundef %i.ad) #5 ; 0 uses
  %i.ag = load i32, ptr %i.a, align 4
  %.not184 = icmp eq i32 %i.ag, 0
  br i1 %.not184, label %.critedge167, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %bb.j
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.j ] ; 3 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv
  %i.aj = load ptr, ptr %i.ai, align 8
  call void %i.m(ptr noundef %i.aj, ptr noundef %i.ae) #5
  %i.ak = load i32, ptr %i.ae, align 8
  %.not160 = icmp eq i32 %i.ak, 0
  br i1 %.not160, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.al = load i32, ptr %i.ah, align 8
  %.off = add i32 %i.al, -1
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.am = load i32, ptr %i.a, align 4
  %i.an = zext i32 %i.am to i64
  %i.ao = icmp samesign ult i64 %indvars.iv.next, %i.an
  br i1 %i.ao, label %bb.h, label %.critedge167, !llvm.loop !5

.critedge167:                                     ; preds = %bb.j, %bb.g
  %i.ap = call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.21) #5 ; 0 uses
  br label %bb.af

bb.k:                                             ; preds = %bb.i
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv
  %i.ar = load ptr, ptr %i.aq, align 8            ; 10 uses
  %i.as = call i32 %i.n(ptr noundef %i.ar, ptr noundef nonnull %i.b, ptr noundef null) #5 ; 0 uses
  %i.at = load i32, ptr %i.b, align 4             ; 2 uses
  %i.au = icmp eq i32 %i.at, 0
  br i1 %i.au, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.av = call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.22) #5 ; 0 uses
  br label %bb.af

bb.m:                                             ; preds = %bb.k
  %i.aw = zext i32 %i.at to i64
  %i.ax = mul nuw nsw i64 %i.aw, 48
  %i.ay = call noalias ptr @SDL_malloc_REAL(i64 noundef %i.ax) #5 ; 9 uses
  %i.az = call i32 %i.n(ptr noundef %i.ar, ptr noundef nonnull %i.b, ptr noundef %i.ay) #5 ; 0 uses
  %i.ba = sext i32 %i.h to i64
  %i.bb = getelementptr inbounds [48 x i8], ptr %i.ay, i64 %i.ba ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8            ; 5 uses
  %i.bd = call i32 %i.o(ptr noundef %i.ar, ptr noundef %i.bc, ptr noundef nonnull %i.c, ptr noundef null) #5 ; 0 uses
  %i.be = load i32, ptr %i.c, align 4             ; 2 uses
  %i.bf = icmp eq i32 %i.be, 0
  br i1 %i.bf, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8
  %i.bi = call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.23, i32 noundef 0, ptr noundef %i.bh) #5 ; 0 uses
  br label %bb.af

bb.o:                                             ; preds = %bb.m
  %i.bj = zext i32 %i.be to i64
  %i.bk = mul nuw nsw i64 %i.bj, 24
  %i.bl = call noalias ptr @SDL_malloc_REAL(i64 noundef %i.bk) #5 ; 8 uses
  %i.bm = call i32 %i.o(ptr noundef %i.ar, ptr noundef %i.bc, ptr noundef nonnull %i.c, ptr noundef %i.bl) #5 ; 0 uses
  %i.bn = load i32, ptr %i.c, align 4             ; 2 uses
  %.not185 = icmp eq i32 %i.bn, 0
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.pre = load i32, ptr %.phi.trans.insert, align 8 ; 3 uses
  br i1 %.not185, label %.critedge, label %.lr.ph178

.lr.ph178:                                        ; preds = %bb.o
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 36
  %wide.trip.count = zext i32 %i.bn to i64
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph178, %bb.s
  %indvars.iv196 = phi i64 [ 0, %.lr.ph178 ], [ %indvars.iv.next197, %bb.s ] ; 2 uses
  %i.bp = getelementptr inbounds nuw [24 x i8], ptr %i.bl, i64 %indvars.iv196 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.br = load i32, ptr %i.bq, align 8
  %i.bs = icmp eq i32 %i.br, %.pre
  br i1 %i.bs, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bp, i64 12
  %i.bu = load i32, ptr %i.bt, align 4            ; 2 uses
  %i.bv = load i32, ptr %i.bo, align 4
  %i.bw = icmp eq i32 %i.bu, %i.bv
  br i1 %i.bw, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bx = icmp ne i32 %.pre, 0
  %i.by = icmp ne i32 %i.bu, 0
  %i.bz = and i1 %i.bx, %i.by
  br i1 %i.bz, label %bb.t, label %.critedge

bb.s:                                             ; preds = %bb.p, %bb.q
  %indvars.iv.next197 = add nuw nsw i64 %indvars.iv196, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next197, %wide.trip.count
  br i1 %exitcond.not, label %.critedge, label %bb.p, !llvm.loop !6

bb.t:                                             ; preds = %bb.r
  %.sroa.067.0.copyload = load i64, ptr %i.bp, align 8
  %8 = inttoptr i64 %.sroa.067.0.copyload to ptr  ; 2 uses
  store ptr %8, ptr %i.e, align 8
  br label %bb.v

.critedge:                                        ; preds = %bb.s, %bb.o, %bb.r
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.cb = load i32, ptr %i.ca, align 4
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 220
  %i.cd = load float, ptr %i.cc, align 4
  %i.ce = fmul float %i.cd, 1.000000e+03
  %i.cf = fptoui float %i.ce to i32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, i8 0, i64 24, i1 false)
  store i32 1000002000, ptr %6, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %6, i64 20
  store i32 %.pre, ptr %i.cg, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i32 %i.cb, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 28
  store i32 %i.cf, ptr %.sroa.6.0..sroa_idx, align 4
  %i.ch = call i32 %i.s(ptr noundef %i.ar, ptr noundef %i.bc, ptr noundef nonnull %6, ptr noundef null, ptr noundef nonnull %i.e) #5
  %.not161 = icmp eq i32 %i.ch, 0
  br i1 %.not161, label %thread-pre-split, label %bb.u

bb.u:                                             ; preds = %.critedge
  %i.ci = call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.24) #5 ; 0 uses
  br label %bb.af

thread-pre-split:                                 ; preds = %.critedge
  %.pr = load ptr, ptr %i.e, align 8
  br label %bb.v

bb.v:                                             ; preds = %thread-pre-split, %bb.t
  %i.cj = phi ptr [ %.pr, %thread-pre-split ], [ %8, %bb.t ]
  %.not162 = icmp eq ptr %i.cj, null
  br i1 %.not162, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.ck = call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.25) #5 ; 0 uses
  br label %bb.af

bb.x:                                             ; preds = %bb.v
  %i.cl = call i32 %i.p(ptr noundef %i.ar, ptr noundef nonnull %i.d, ptr noundef null) #5 ; 0 uses
  %i.cm = load i32, ptr %i.d, align 4             ; 2 uses
  %i.cn = icmp eq i32 %i.cm, 0
  br i1 %i.cn, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.co = call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.26) #5 ; 0 uses
  br label %bb.af

bb.z:                                             ; preds = %bb.x
  %i.cp = zext i32 %i.cm to i64
  %i.cq = shl nuw nsw i64 %i.cp, 4
  %i.cr = call noalias ptr @SDL_malloc_REAL(i64 noundef %i.cq) #5 ; 5 uses
  %i.cs = call i32 %i.p(ptr noundef %i.ar, ptr noundef nonnull %i.d, ptr noundef %i.cr) #5 ; 0 uses
  %i.ct = load i32, ptr %i.d, align 4
  %.not186 = icmp eq i32 %i.ct, 0
  br i1 %.not186, label %.loopexit.thread, label %.lr.ph183

.lr.ph183:                                        ; preds = %bb.z, %bb.ad
  %indvars.iv204 = phi i64 [ %indvars.iv.next205, %bb.ad ], [ 0, %bb.z ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #5
  store i32 0, ptr %i.f, align 4
  %i.cu = trunc nuw nsw i64 %indvars.iv204 to i32 ; 4 uses
  %i.cv = call i32 %i.q(ptr noundef %i.ar, i32 noundef %i.cu, ptr noundef nonnull %i.f, ptr noundef null) #5 ; 0 uses
  %i.cw = load i32, ptr %i.f, align 4             ; 2 uses
  %i.cx = icmp eq i32 %i.cw, 0
  br i1 %i.cx, label %bb.ad, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph183
  %i.cy = zext i32 %i.cw to i64
  %i.cz = shl nuw nsw i64 %i.cy, 3
  %i.da = call noalias ptr @SDL_malloc_REAL(i64 noundef %i.cz) #5 ; 4 uses
  %i.db = call i32 %i.q(ptr noundef %i.ar, i32 noundef %i.cu, ptr noundef nonnull %i.f, ptr noundef %i.da) #5 ; 0 uses
  %i.dc = getelementptr inbounds nuw [16 x i8], ptr %i.cr, i64 %indvars.iv204
  %i.dd = load ptr, ptr %i.dc, align 8            ; 2 uses
  %i.de = icmp eq ptr %i.dd, %i.bc
  %i.df = icmp eq ptr %i.dd, null
  %or.cond = or i1 %i.de, %i.df
  br i1 %or.cond, label %.preheader, label %bb.ad

.preheader:                                       ; preds = %bb.aa
  %i.dg = load i32, ptr %i.f, align 4             ; 2 uses
  %.not187 = icmp eq i32 %i.dg, 0
  br i1 %.not187, label %.critedge165, label %.lr.ph180.preheader

.lr.ph180.preheader:                              ; preds = %.preheader
  %wide.trip.count202 = zext i32 %i.dg to i64
  br label %.lr.ph180

bb.ab:                                            ; preds = %.lr.ph180
  %indvars.iv.next200 = add nuw nsw i64 %indvars.iv199, 1 ; 2 uses
  %exitcond203.not = icmp eq i64 %indvars.iv.next200, %wide.trip.count202
  br i1 %exitcond203.not, label %.critedge165, label %.lr.ph180, !llvm.loop !7

.lr.ph180:                                        ; preds = %.lr.ph180.preheader, %bb.ab
  %indvars.iv199 = phi i64 [ 0, %.lr.ph180.preheader ], [ %indvars.iv.next200, %bb.ab ] ; 2 uses
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.da, i64 %indvars.iv199
  %i.di = load ptr, ptr %i.dh, align 8
  %i.dj = icmp eq ptr %i.di, %i.bc
  br i1 %i.dj, label %bb.ac, label %bb.ab

.critedge165:                                     ; preds = %bb.ab, %.preheader
  call void @SDL_free_REAL(ptr noundef %i.da) #5
  br label %bb.ad

bb.ac:                                            ; preds = %.lr.ph180
  call void @SDL_free_REAL(ptr noundef nonnull %i.da) #5
  %i.dk = load ptr, ptr %i.e, align 8
  %i.dl = call i32 %i.r(ptr noundef %i.ar, ptr noundef %i.dk, i32 noundef %i.cu, ptr noundef nonnull %5) #5 ; 0 uses
  %i.dm = load i32, ptr %5, align 4
  %i.dn = icmp eq i32 %i.dm, 1
  br i1 %i.dn, label %.loopexit, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph183, %bb.ac, %.critedge165, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #5
  %indvars.iv.next205 = add nuw nsw i64 %indvars.iv204, 1 ; 2 uses
  %i.do = load i32, ptr %i.d, align 4
  %i.dp = zext i32 %i.do to i64
  %i.dq = icmp samesign ult i64 %indvars.iv.next205, %i.dp
  br i1 %i.dq, label %.lr.ph183, label %.loopexit.thread, !llvm.loop !8

.loopexit:                                        ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #5
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %7, i8 0, i64 64, i1 false)
  store i32 1000002001, ptr %7, align 8
  %i.ds = load ptr, ptr %i.e, align 8
  %i.dt = getelementptr inbounds nuw i8, ptr %7, i64 24
  store ptr %i.ds, ptr %i.dt, align 8
  %i.du = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i32 %i.cu, ptr %i.du, align 8
  %i.dv = getelementptr inbounds nuw i8, ptr %7, i64 52
  %i.dw = load <2 x i32>, ptr %i.dr, align 8
  store <2 x i32> %i.dw, ptr %i.dv, align 4
  %i.dx = getelementptr inbounds nuw i8, ptr %7, i64 40
  store i32 1, ptr %i.dx, align 8
  %i.dy = getelementptr inbounds nuw i8, ptr %7, i64 48
  store i32 1, ptr %i.dy, align 8
  %i.dz = call i32 %i.k(ptr noundef %2, ptr noundef nonnull %7, ptr noundef %3, ptr noundef %4) #5 ; 2 uses
  %.not163 = icmp eq i32 %i.dz, 0
  br i1 %.not163, label %bb.af, label %bb.ae

.loopexit.thread:                                 ; preds = %bb.ad, %bb.z
  %i.ea = call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.27) #5 ; 0 uses
  br label %bb.af

bb.ae:                                            ; preds = %.loopexit
  %i.eb = call ptr @SDL_Vulkan_GetResultString(i32 noundef %i.dz) #5
  %i.ec = call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.28, ptr noundef %i.eb) #5 ; 0 uses
  br label %bb.af

bb.af:                                            ; preds = %.loopexit, %bb.ae, %.loopexit.thread, %bb.y, %bb.w, %bb.u, %bb.n, %bb.l, %.critedge167, %bb.f, %bb.d, %bb.b
  %.0144 = phi ptr [ null, %bb.f ], [ %i.ad, %bb.l ], [ %i.ad, %bb.n ], [ %i.ad, %bb.y ], [ %i.ad, %.loopexit.thread ], [ %i.ad, %bb.ae ], [ null, %bb.b ], [ %i.ad, %bb.w ], [ %i.ad, %bb.u ], [ %i.ad, %.critedge167 ], [ null, %bb.d ], [ %i.ad, %.loopexit ]
  %.0143 = phi ptr [ null, %bb.f ], [ %i.ae, %bb.l ], [ %i.ae, %bb.n ], [ %i.ae, %bb.y ], [ %i.ae, %.loopexit.thread ], [ %i.ae, %bb.ae ], [ null, %bb.b ], [ %i.ae, %bb.w ], [ %i.ae, %bb.u ], [ %i.ae, %.critedge167 ], [ null, %bb.d ], [ %i.ae, %.loopexit ]
  %.0142 = phi ptr [ null, %bb.f ], [ null, %bb.l ], [ %i.ay, %bb.n ], [ %i.ay, %bb.y ], [ %i.ay, %.loopexit.thread ], [ %i.ay, %bb.ae ], [ null, %bb.b ], [ %i.ay, %bb.w ], [ %i.ay, %bb.u ], [ null, %.critedge167 ], [ null, %bb.d ], [ %i.ay, %.loopexit ]
  %.0141 = phi ptr [ null, %bb.f ], [ null, %bb.l ], [ null, %bb.n ], [ %i.bl, %bb.y ], [ %i.bl, %.loopexit.thread ], [ %i.bl, %bb.ae ], [ null, %bb.b ], [ %i.bl, %bb.w ], [ %i.bl, %bb.u ], [ null, %.critedge167 ], [ null, %bb.d ], [ %i.bl, %.loopexit ]
  %.0140 = phi ptr [ null, %bb.f ], [ null, %bb.l ], [ null, %bb.n ], [ null, %bb.y ], [ %i.cr, %.loopexit.thread ], [ %i.cr, %bb.ae ], [ null, %bb.b ], [ null, %bb.w ], [ null, %bb.u ], [ null, %.critedge167 ], [ null, %bb.d ], [ %i.cr, %.loopexit ]
  %.0139 = phi i1 [ false, %bb.f ], [ false, %bb.l ], [ false, %bb.n ], [ false, %bb.y ], [ false, %.loopexit.thread ], [ false, %bb.ae ], [ false, %bb.b ], [ false, %bb.w ], [ false, %bb.u ], [ false, %.critedge167 ], [ false, %bb.d ], [ true, %.loopexit ]
  call void @SDL_free_REAL(ptr noundef %.0144) #5
  call void @SDL_free_REAL(ptr noundef %.0142) #5
  call void @SDL_free_REAL(ptr noundef %.0143) #5
  call void @SDL_free_REAL(ptr noundef %.0140) #5
  call void @SDL_free_REAL(ptr noundef %.0141) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret i1 %.0139
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

declare i32 @SDL_GetDisplayIndex(i32 noundef) local_unnamed_addr #2

declare i32 @SDL_GetDisplayForWindow_REAL(ptr noundef) local_unnamed_addr #2

declare noalias ptr @SDL_malloc_REAL(i64 noundef) local_unnamed_addr #2

declare ptr @SDL_Vulkan_GetResultString(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden void @KMSDRM_Vulkan_DestroySurface(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1656
  %i.b = load ptr, ptr %i.a, align 8
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1376
  %i.d = load ptr, ptr %i.c, align 8
  tail call void @SDL_Vulkan_DestroySurface_Internal(ptr noundef %i.d, ptr noundef %1, ptr noundef %2, ptr noundef %3) #5
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

declare void @SDL_Vulkan_DestroySurface_Internal(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!3 = distinct !{!3, !4}
!4 = !{!"llvm.loop.mustprogress"}
!5 = distinct !{!5, !4}
!6 = distinct !{!6, !4}
!7 = distinct !{!7, !4}
!8 = distinct !{!8, !4}
end_hunk_0
