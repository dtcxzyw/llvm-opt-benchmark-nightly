Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sdl/original/SDL_vulkan_utils?download=true
inline.NumInlined: 1
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@SDL_Vulkan_GetResultString:bb.a

bb.b:                                             ; preds = %bb.a
  br label %bb.an

bb.c:                                             ; preds = %bb.a
  br label %bb.an

bb.d:                                             ; preds = %bb.a
  br label %bb.an

bb.e:                                             ; preds = %bb.a
  br label %bb.an

bb.f:                                             ; preds = %bb.a
  br label %bb.an

bb.g:                                             ; preds = %bb.a
  br label %bb.an

bb.h:                                             ; preds = %bb.a
  br label %bb.an

bb.i:                                             ; preds = %bb.a
  br label %bb.an

bb.j:                                             ; preds = %bb.a
  br label %bb.an

bb.k:                                             ; preds = %bb.a
  br label %bb.an

bb.l:                                             ; preds = %bb.a
  br label %bb.an

bb.m:                                             ; preds = %bb.a
  br label %bb.an

bb.n:                                             ; preds = %bb.a
  br label %bb.an

bb.o:                                             ; preds = %bb.a
  br label %bb.an

bb.p:                                             ; preds = %bb.a
  br label %bb.an

bb.q:                                             ; preds = %bb.a
  br label %bb.an

bb.r:                                             ; preds = %bb.a
  br label %bb.an

bb.s:                                             ; preds = %bb.a
  br label %bb.an

bb.t:                                             ; preds = %bb.a
  br label %bb.an

bb.u:                                             ; preds = %bb.a
  br label %bb.an

bb.v:                                             ; preds = %bb.a
  br label %bb.an

bb.w:                                             ; preds = %bb.a
  br label %bb.an

bb.x:                                             ; preds = %bb.a
  br label %bb.an

bb.y:                                             ; preds = %bb.a
  br label %bb.an

bb.z:                                             ; preds = %bb.a
  br label %bb.an

bb.aa:                                            ; preds = %bb.a
  br label %bb.an

bb.ab:                                            ; preds = %bb.a
  br label %bb.an

bb.ac:                                            ; preds = %bb.a
  br label %bb.an

bb.ad:                                            ; preds = %bb.a
  br label %bb.an

bb.ae:                                            ; preds = %bb.a
  br label %bb.an

bb.af:                                            ; preds = %bb.a
  br label %bb.an

bb.ag:                                            ; preds = %bb.a
  br label %bb.an

bb.ah:                                            ; preds = %bb.a
  br label %bb.an

bb.ai:                                            ; preds = %bb.a
  br label %bb.an

bb.aj:                                            ; preds = %bb.a
  br label %bb.an

bb.ak:                                            ; preds = %bb.a
  br label %bb.an

bb.al:                                            ; preds = %bb.a
  br label %bb.an

bb.am:                                            ; preds = %bb.a
  %i.a = icmp slt i32 %0, 0
  %.str.38..str.39 = select i1 %i.a, ptr @.str.38, ptr @.str.39
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.a, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.0 = phi ptr [ %.str.38..str.39, %bb.am ], [ @.str, %bb.a ], [ @.str.37, %bb.al ], [ @.str.1, %bb.b ], [ @.str.2, %bb.c ], [ @.str.3, %bb.d ], [ @.str.4, %bb.e ], [ @.str.5, %bb.f ], [ @.str.6, %bb.g ], [ @.str.7, %bb.h ], [ @.str.8, %bb.i ], [ @.str.9, %bb.j ], [ @.str.10, %bb.k ], [ @.str.11, %bb.l ], [ @.str.12, %bb.m ], [ @.str.13, %bb.n ], [ @.str.14, %bb.o ], [ @.str.15, %bb.p ], [ @.str.16, %bb.q ], [ @.str.17, %bb.r ], [ @.str.18, %bb.s ], [ @.str.19, %bb.t ], [ @.str.20, %bb.u ], [ @.str.21, %bb.v ], [ @.str.22, %bb.w ], [ @.str.23, %bb.x ], [ @.str.24, %bb.y ], [ @.str.25, %bb.z ], [ @.str.26, %bb.aa ], [ @.str.27, %bb.ab ], [ @.str.28, %bb.ac ], [ @.str.29, %bb.ad ], [ @.str.30, %bb.ae ], [ @.str.31, %bb.af ], [ @.str.32, %bb.ag ], [ @.str.33, %bb.ah ], [ @.str.34, %bb.ai ], [ @.str.35, %bb.aj ], [ @.str.36, %bb.ak ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define hidden ptr @SDL_Vulkan_CreateInstanceExtensionsList(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca i32, align 4                      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  store i32 0, ptr %i.a, align 4
  %i.b = call i32 %0(ptr noundef null, ptr noundef nonnull %i.a, ptr noundef null) #7 ; 3 uses
  switch i32 %i.b, label %bb.c [
    i32 -9, label %bb.b
    i32 0, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.14, i32 noundef -9) #7 ; 0 uses
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.d = call ptr @SDL_Vulkan_GetResultString(i32 noundef %i.b)
  %i.e = call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.43, ptr noundef nonnull %i.d, i32 noundef %i.b) #7 ; 0 uses
  br label %bb.h

bb.d:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.a, align 4
  %narrow = call i32 @llvm.umax.i32(i32 %i.f, i32 1)
  %.sink = zext i32 %narrow to i64
  %i.g = call noalias ptr @SDL_calloc_REAL(i64 noundef %.sink, i64 noundef 260) #8 ; 4 uses
  %.not20 = icmp eq ptr %i.g, null
  br i1 %.not20, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = call i32 %0(ptr noundef null, ptr noundef nonnull %i.a, ptr noundef nonnull %i.g) #7 ; 3 uses
  %.not21 = icmp eq i32 %i.h, 0
  br i1 %.not21, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = call ptr @SDL_Vulkan_GetResultString(i32 noundef %i.h)
  %i.j = call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.43, ptr noundef nonnull %i.i, i32 noundef %i.h) #7 ; 0 uses
  call void @SDL_free_REAL(ptr noundef nonnull %i.g) #7
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.k = load i32, ptr %i.a, align 4
  store i32 %i.k, ptr %1, align 4
  br label %bb.h

bb.h:                                             ; preds = %bb.d, %bb.g, %bb.f, %bb.c, %bb.b
  %.016 = phi ptr [ null, %bb.b ], [ null, %bb.c ], [ null, %bb.f ], [ %i.g, %bb.g ], [ null, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret ptr %.016
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare zeroext i1 @SDL_SetError_REAL(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: allocsize(0,1)
declare noalias ptr @SDL_calloc_REAL(i64 noundef, i64 noundef) local_unnamed_addr #4

declare void @SDL_free_REAL(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nounwind uwtable
define hidden noundef zeroext i1 @SDL_Vulkan_Display_CreateSurface(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #1 {
bb.a:
  %4 = alloca %struct.VkDisplaySurfaceCreateInfoKHR, align 8 ; 13 uses
  %i.a = alloca i32, align 4                      ; 9 uses
  %i.b = alloca i32, align 4                      ; 10 uses
  %i.c = alloca i32, align 4                      ; 10 uses
  %i.d = alloca i32, align 4                      ; 11 uses
  %5 = alloca %struct.VkDisplayPlaneCapabilitiesKHR, align 4 ; 11 uses
  %i.e = alloca i32, align 4                      ; 11 uses
  %i.f = tail call ptr %0(ptr noundef %1, ptr noundef nonnull @.str.44) #7 ; 3 uses
  %i.g = tail call ptr %0(ptr noundef %1, ptr noundef nonnull @.str.45) #7 ; 3 uses
  %i.h = tail call ptr %0(ptr noundef %1, ptr noundef nonnull @.str.46) #7 ; 3 uses
  %i.i = tail call ptr %0(ptr noundef %1, ptr noundef nonnull @.str.47) #7 ; 3 uses
  %i.j = tail call ptr %0(ptr noundef %1, ptr noundef nonnull @.str.48) #7
  %.fr402 = freeze ptr %i.j                       ; 2 uses
  %i.k = tail call ptr %0(ptr noundef %1, ptr noundef nonnull @.str.49) #7
  %.fr400 = freeze ptr %i.k                       ; 3 uses
  %i.l = tail call ptr %0(ptr noundef %1, ptr noundef nonnull @.str.50) #7 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  store i32 0, ptr %i.a, align 4
  %i.m = insertelement <4 x ptr> poison, ptr %i.f, i64 0
  %i.n = insertelement <4 x ptr> %i.m, ptr %i.g, i64 1
  %i.o = insertelement <4 x ptr> %i.n, ptr %i.h, i64 2
  %i.p = insertelement <4 x ptr> %i.o, ptr %i.i, i64 3
  %.fr = freeze <4 x ptr> %i.p
  %i.q = icmp ne ptr %.fr402, null
  %i.r = icmp ne ptr %.fr400, null
  %i.s = icmp ne ptr %i.l, null
  %i.t = icmp eq <4 x ptr> %.fr, splat (ptr null)
  %i.u = bitcast <4 x i1> %i.t to i4
  %i.v = icmp eq i4 %i.u, 0
  %op.rdx = and i1 %i.v, %i.q
  %6 = and i1 %op.rdx, %i.r
  %op.rdx399 = select i1 %6, i1 %i.s, i1 false
  br i1 %op.rdx399, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.w = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.51) #7 ; 0 uses
  br label %bb.bc

bb.c:                                             ; preds = %bb.a
  %i.x = tail call ptr @SDL_GetHint_REAL(ptr noundef nonnull @.str.52) #7 ; 2 uses
  %.not = icmp eq ptr %i.x, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.y = tail call i32 @SDL_atoi_REAL(ptr noundef nonnull %i.x) #7
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0197 = phi i32 [ %i.y, %bb.d ], [ 0, %bb.c ]
  %i.z = call i32 %i.f(ptr noundef %1, ptr noundef nonnull %i.a, ptr noundef null) #7
  %.not225 = icmp eq i32 %i.z, 0
  br i1 %.not225, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aa = call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.53) #7 ; 0 uses
  br label %bb.bc

bb.g:                                             ; preds = %bb.e
  %i.ab = load i32, ptr %i.a, align 4             ; 2 uses
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ad = call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.54) #7 ; 0 uses
  br label %bb.bc

bb.i:                                             ; preds = %bb.g
  %i.ae = zext i32 %i.ab to i64
  %i.af = shl nuw nsw i64 %i.ae, 3
  %i.ag = call noalias ptr @SDL_malloc_REAL(i64 noundef %i.af) #7 ; 6 uses
  %.not226 = icmp eq ptr %i.ag, null
  br i1 %.not226, label %bb.bc, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ah = call i32 %i.f(ptr noundef %1, ptr noundef nonnull %i.a, ptr noundef nonnull %i.ag) #7
  %.not227 = icmp eq i32 %i.ah, 0
  br i1 %.not227, label %.preheader262, label %bb.k

.preheader262:                                    ; preds = %bb.j
  %i.ai = load i32, ptr %i.a, align 4
  %.not293 = icmp eq i32 %i.ai, 0
  br i1 %.not293, label %.loopexit263, label %.lr.ph

bb.k:                                             ; preds = %bb.j
  %i.aj = call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.55) #7 ; 0 uses
  br label %bb.bc

.lr.ph:                                           ; preds = %.preheader262, %bb.ax
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.ax ], [ 0, %.preheader262 ] ; 3 uses
  %.1198283 = phi i32 [ %.2199.ph, %bb.ax ], [ %.0197, %.preheader262 ] ; 5 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %indvars.iv
  %i.al = load ptr, ptr %i.ak, align 8            ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  store i32 0, ptr %i.b, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  store i32 0, ptr %i.c, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  store i32 0, ptr %i.d, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(68) %5, i8 0, i64 68, i1 false)
  %i.am = call i32 %i.g(ptr noundef %i.al, ptr noundef nonnull %i.b, ptr noundef null) #7
  %i.an = icmp ne i32 %i.am, 0
  %i.ao = load i32, ptr %i.b, align 4             ; 2 uses
  %i.ap = icmp eq i32 %i.ao, 0
  %or.cond13 = select i1 %i.an, i1 true, i1 %i.ap
  br i1 %or.cond13, label %bb.ax, label %bb.l

bb.l:                                             ; preds = %.lr.ph
  %i.aq = trunc nuw i64 %indvars.iv to i32        ; 2 uses
  call void (i32, ptr, ...) @SDL_LogDebug_REAL(i32 noundef 5, ptr noundef nonnull @.str.56, i32 noundef %i.aq, i32 noundef %i.ao) #7
  %i.ar = icmp sgt i32 %.1198283, -1
  %i.as = load i32, ptr %i.b, align 4             ; 3 uses
  %.not228 = icmp ult i32 %.1198283, %i.as
  %or.cond291 = select i1 %i.ar, i1 %.not228, i1 false
  br i1 %or.cond291, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.at = sub i32 %.1198283, %i.as
  br label %bb.ax

bb.n:                                             ; preds = %bb.l
  %i.au = zext i32 %i.as to i64
  %i.av = mul nuw nsw i64 %i.au, 48
  %i.aw = call noalias ptr @SDL_malloc_REAL(i64 noundef %i.av) #7 ; 5 uses
  %.not229 = icmp eq ptr %i.aw, null
  br i1 %.not229, label %.thread252, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ax = call i32 %i.g(ptr noundef %i.al, ptr noundef nonnull %i.b, ptr noundef nonnull %i.aw) #7
  %i.ay = icmp ne i32 %i.ax, 0
  %i.az = load i32, ptr %i.b, align 4
  %i.ba = icmp eq i32 %i.az, 0
  %or.cond15 = select i1 %i.ay, i1 true, i1 %i.ba
  br i1 %or.cond15, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  call void @SDL_free_REAL(ptr noundef nonnull %i.aw) #7
  %i.bb = call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.57) #7 ; 0 uses
  br label %.thread252

bb.q:                                             ; preds = %bb.o
  %i.bc = zext nneg i32 %.1198283 to i64
  %i.bd = getelementptr inbounds nuw [48 x i8], ptr %i.aw, i64 %i.bc ; 4 uses
  %i.be = load ptr, ptr %i.bd, align 8            ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  %.sroa.0.0.copyload = load i32, ptr %i.bf, align 8 ; 5 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bd, i64 28
  %.sroa.8.0.copyload = load i32, ptr %.sroa.8.0..sroa_idx, align 4 ; 5 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8
  call void (i32, ptr, ...) @SDL_LogDebug_REAL(i32 noundef 5, ptr noundef nonnull @.str.58, ptr noundef %i.bh, i32 noundef %.sroa.0.0.copyload, i32 noundef %.sroa.8.0.copyload) #7
  call void @SDL_free_REAL(ptr noundef nonnull %i.aw) #7
  %i.bi = call i32 %i.h(ptr noundef %i.al, ptr noundef %i.be, ptr noundef nonnull %i.c, ptr noundef null) #7
  %i.bj = icmp ne i32 %i.bi, 0
  %i.bk = load i32, ptr %i.c, align 4             ; 2 uses
  %i.bl = icmp eq i32 %i.bk, 0
  %or.cond17 = select i1 %i.bj, i1 true, i1 %i.bl
  br i1 %or.cond17, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bm = call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.59) #7 ; 0 uses
  br label %.thread252

bb.s:                                             ; preds = %bb.q
  call void (i32, ptr, ...) @SDL_LogDebug_REAL(i32 noundef 5, ptr noundef nonnull @.str.60, i32 noundef %i.bk) #7
  %i.bn = load i32, ptr %i.c, align 4
  %i.bo = zext i32 %i.bn to i64
  %i.bp = mul nuw nsw i64 %i.bo, 24
  %i.bq = call noalias ptr @SDL_malloc_REAL(i64 noundef %i.bp) #7 ; 7 uses
  %.not230 = icmp eq ptr %i.bq, null
  br i1 %.not230, label %.thread252, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.br = call i32 %i.h(ptr noundef %i.al, ptr noundef %i.be, ptr noundef nonnull %i.c, ptr noundef nonnull %i.bq) #7
  %i.bs = icmp ne i32 %i.br, 0
  %i.bt = load i32, ptr %i.c, align 4             ; 2 uses
  %i.bu = icmp eq i32 %i.bt, 0
  %or.cond19 = select i1 %i.bs, i1 true, i1 %i.bu
  br i1 %or.cond19, label %bb.u, label %.preheader261.preheader

.preheader261.preheader:                          ; preds = %bb.t
  %wide.trip.count = zext i32 %i.bt to i64
  br label %.preheader261

bb.u:                                             ; preds = %bb.t
  %i.bv = call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.59) #7 ; 0 uses
  call void @SDL_free_REAL(ptr noundef nonnull %i.bq) #7
  br label %.thread252

.preheader261:                                    ; preds = %.preheader261.preheader, %bb.x
  %indvars.iv315 = phi i64 [ 0, %.preheader261.preheader ], [ %indvars.iv.next316, %bb.x ] ; 3 uses
  %.0193285 = phi i32 [ 0, %.preheader261.preheader ], [ %.1194, %bb.x ] ; 4 uses
  %.0195284 = phi i32 [ -1, %.preheader261.preheader ], [ %.1196, %bb.x ] ; 3 uses
  %i.bw = getelementptr inbounds nuw [24 x i8], ptr %i.bq, i64 %indvars.iv315 ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.by = load i32, ptr %i.bx, align 8
  %i.bz = icmp eq i32 %i.by, %.sroa.0.0.copyload
  br i1 %i.bz, label %bb.v, label %bb.x

bb.v:                                             ; preds = %.preheader261
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bw, i64 12
  %i.cb = load i32, ptr %i.ca, align 4
  %i.cc = icmp eq i32 %i.cb, %.sroa.8.0.copyload
  br i1 %i.cc, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %i.ce = load i32, ptr %i.cd, align 8            ; 2 uses
  %i.cf = icmp ugt i32 %i.ce, %.0193285
  %i.cg = trunc nuw i64 %indvars.iv315 to i32
  %spec.select = select i1 %i.cf, i32 %i.cg, i32 %.0195284
  %spec.select241 = call i32 @llvm.umax.i32(i32 %i.ce, i32 %.0193285)
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %.preheader261, %bb.v
  %.1196 = phi i32 [ %.0195284, %.preheader261 ], [ %spec.select, %bb.w ], [ %.0195284, %bb.v ] ; 3 uses
  %.1194 = phi i32 [ %.0193285, %.preheader261 ], [ %spec.select241, %bb.w ], [ %.0193285, %bb.v ] ; 2 uses
  %indvars.iv.next316 = add nuw nsw i64 %indvars.iv315, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next316, %wide.trip.count
  br i1 %exitcond.not, label %bb.y, label %.preheader261, !llvm.loop !3

bb.y:                                             ; preds = %bb.x
  %i.ch = icmp slt i32 %.1196, 0
  br i1 %i.ch, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.ci = call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.61) #7 ; 0 uses
  call void @SDL_free_REAL(ptr noundef nonnull %i.bq) #7
  br label %.thread252

bb.aa:                                            ; preds = %bb.y
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %4, i8 0, i64 64, i1 false)
  %i.cj = zext nneg i32 %.1196 to i64
  %i.ck = getelementptr inbounds nuw [24 x i8], ptr %i.bq, i64 %i.cj ; 3 uses
  %i.cl = load ptr, ptr %i.ck, align 8            ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %i.cl, ptr %i.cm, align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %i.co = load i32, ptr %i.cn, align 8
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ck, i64 12
  %i.cq = load i32, ptr %i.cp, align 4
  call void (i32, ptr, ...) @SDL_LogDebug_REAL(i32 noundef 5, ptr noundef nonnull @.str.62, i32 noundef %i.co, i32 noundef %i.cq, i32 noundef %.1194) #7
  call void @SDL_free_REAL(ptr noundef nonnull %i.bq) #7
  %i.cr = call i32 %i.i(ptr noundef %i.al, ptr noundef nonnull %i.d, ptr noundef null) #7
  %i.cs = icmp ne i32 %i.cr, 0
  %i.ct = load i32, ptr %i.d, align 4             ; 2 uses
  %i.cu = icmp eq i32 %i.ct, 0
  %or.cond21 = select i1 %i.cs, i1 true, i1 %i.cu
  br i1 %or.cond21, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.cv = call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.63) #7 ; 0 uses
  br label %.thread252

bb.ac:                                            ; preds = %bb.aa
  call void (i32, ptr, ...) @SDL_LogDebug_REAL(i32 noundef 5, ptr noundef nonnull @.str.64, i32 noundef %i.ct) #7
  %i.cw = load i32, ptr %i.d, align 4
  %i.cx = zext i32 %i.cw to i64
  %i.cy = shl nuw nsw i64 %i.cx, 4
  %i.cz = call noalias ptr @SDL_malloc_REAL(i64 noundef %i.cy) #7 ; 7 uses
  %.not231 = icmp eq ptr %i.cz, null
  br i1 %.not231, label %.thread252, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.da = call i32 %i.i(ptr noundef %i.al, ptr noundef nonnull %i.d, ptr noundef nonnull %i.cz) #7
  %i.db = icmp ne i32 %i.da, 0
  %i.dc = load i32, ptr %i.d, align 4
  %i.dd = icmp eq i32 %i.dc, 0
  %or.cond23 = select i1 %i.db, i1 true, i1 %i.dd
  br i1 %or.cond23, label %bb.ae, label %.lr.ph289

.lr.ph289:                                        ; preds = %bb.ad
  %i.de = getelementptr inbounds nuw i8, ptr %5, i64 52
  %i.df = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.dg = getelementptr inbounds nuw i8, ptr %5, i64 60
  %i.dh = getelementptr inbounds nuw i8, ptr %5, i64 64
  br label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.di = call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.65) #7 ; 0 uses
  call void @SDL_free_REAL(ptr noundef nonnull %i.cz) #7
  br label %.thread252

bb.af:                                            ; preds = %.lr.ph289, %bb.aq
  %indvars.iv323 = phi i64 [ 0, %.lr.ph289 ], [ %indvars.iv.next324, %bb.aq ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #7
  store i32 0, ptr %i.e, align 4
  %i.dj = getelementptr inbounds nuw [16 x i8], ptr %i.cz, i64 %indvars.iv323 ; 2 uses
  %i.dk = load ptr, ptr %i.dj, align 8
  %i.dl = icmp eq ptr %i.dk, null
  br i1 %i.dl, label %bb.aq, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.dm = trunc nuw i64 %indvars.iv323 to i32     ; 7 uses
  %i.dn = call i32 %.fr400(ptr noundef %i.al, i32 noundef %i.dm, ptr noundef nonnull %i.e, ptr noundef null) #7
  %i.do = icmp ne i32 %i.dn, 0
  %i.dp = load i32, ptr %i.e, align 4             ; 2 uses
  %i.dq = icmp eq i32 %i.dp, 0
  %or.cond25 = select i1 %i.do, i1 true, i1 %i.dq
  br i1 %or.cond25, label %bb.aq, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  call void (i32, ptr, ...) @SDL_LogDebug_REAL(i32 noundef 5, ptr noundef nonnull @.str.66, i32 noundef %i.dm, i32 noundef %i.dp) #7
  %i.dr = load i32, ptr %i.e, align 4
  %i.ds = zext i32 %i.dr to i64
  %i.dt = shl nuw nsw i64 %i.ds, 3
  %i.du = call noalias ptr @SDL_malloc_REAL(i64 noundef %i.dt) #7 ; 5 uses
  %.not232 = icmp eq ptr %i.du, null
  br i1 %.not232, label %.thread246, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.dv = call i32 %.fr400(ptr noundef %i.al, i32 noundef %i.dm, ptr noundef nonnull %i.e, ptr noundef nonnull %i.du) #7
  %i.dw = icmp ne i32 %i.dv, 0
  %i.dx = load i32, ptr %i.e, align 4             ; 3 uses
  %i.dy = icmp eq i32 %i.dx, 0
  %or.cond27 = select i1 %i.dw, i1 true, i1 %i.dy
  br i1 %or.cond27, label %bb.aj, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.ai
  %wide.trip.count321 = zext i32 %i.dx to i64
  br label %.preheader

bb.aj:                                            ; preds = %bb.ai
  %i.dz = call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.67) #7 ; 0 uses
  call void @SDL_free_REAL(ptr noundef nonnull %i.du) #7
  br label %.thread246

.preheader:                                       ; preds = %.preheader.preheader, %bb.ak
  %indvars.iv318 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next319, %bb.ak ] ; 3 uses
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %indvars.iv318
  %i.eb = load ptr, ptr %i.ea, align 8
  %.not233 = icmp eq ptr %i.eb, %i.be
  br i1 %.not233, label %.critedge.split.loop.exit373, label %bb.ak

bb.ak:                                            ; preds = %.preheader
  %indvars.iv.next319 = add nuw nsw i64 %indvars.iv318, 1 ; 2 uses
  %exitcond322.not = icmp eq i64 %indvars.iv.next319, %wide.trip.count321
  br i1 %exitcond322.not, label %.critedge, label %.preheader, !llvm.loop !4

.critedge.split.loop.exit373:                     ; preds = %.preheader
  %i.ec = trunc nuw i64 %indvars.iv318 to i32
  br label %.critedge

.critedge:                                        ; preds = %bb.ak, %.critedge.split.loop.exit373
  %.0.lcssa = phi i32 [ %i.ec, %.critedge.split.loop.exit373 ], [ %i.dx, %bb.ak ]
  call void @SDL_free_REAL(ptr noundef nonnull %i.du) #7
  %i.ed = load i32, ptr %i.e, align 4
  %i.ee = icmp eq i32 %.0.lcssa, %i.ed
  br i1 %i.ee, label %bb.aq, label %bb.al

bb.al:                                            ; preds = %.critedge
  %i.ef = call i32 %.fr402(ptr noundef %i.al, ptr noundef %i.cl, i32 noundef %i.dm, ptr noundef nonnull %5) #7
  %.not234 = icmp eq i32 %i.ef, 0
  br i1 %.not234, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.eg = call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.68) #7 ; 0 uses
  br label %.thread246

bb.an:                                            ; preds = %bb.al
  %i.eh = load i32, ptr %i.de, align 4            ; 2 uses
  %.not235 = icmp ult i32 %.sroa.0.0.copyload, %i.eh
  br i1 %.not235, label %bb.aq, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ei = load i32, ptr %i.df, align 4            ; 2 uses
  %.not236 = icmp ult i32 %.sroa.8.0.copyload, %i.ei
  br i1 %.not236, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ej = load i32, ptr %i.dg, align 4            ; 2 uses
  %.not237 = icmp ugt i32 %.sroa.0.0.copyload, %i.ej
  %i.ek = load i32, ptr %i.dh, align 4            ; 2 uses
  %.not238 = icmp ugt i32 %.sroa.8.0.copyload, %i.ek
  %or.cond292 = select i1 %.not237, i1 true, i1 %.not238
  br i1 %or.cond292, label %bb.aq, label %bb.ar

.thread246:                                       ; preds = %bb.ah, %bb.am, %bb.aj
  call void @SDL_free_REAL(ptr noundef nonnull %i.cz) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #7
  br label %.thread252

bb.aq:                                            ; preds = %bb.af, %bb.ag, %.critedge, %bb.ap, %bb.ao, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #7
  %indvars.iv.next324 = add nuw nsw i64 %indvars.iv323, 1 ; 2 uses
  %i.el = load i32, ptr %i.d, align 4
  %i.em = zext i32 %i.el to i64
  %i.en = icmp samesign ult i64 %indvars.iv.next324, %i.em
  br i1 %i.en, label %bb.af, label %.thread249, !llvm.loop !5

bb.ar:                                            ; preds = %bb.ap
  call void (i32, ptr, ...) @SDL_LogDebug_REAL(i32 noundef 5, ptr noundef nonnull @.str.69, i32 noundef %i.dm, i32 noundef %i.eh, i32 noundef %i.ei, i32 noundef %i.ej, i32 noundef %i.ek) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #7
  %i.eo = icmp slt i32 %i.dm, 0
  br i1 %i.eo, label %.thread249, label %bb.as

.thread249:                                       ; preds = %bb.aq, %bb.ar
  %i.ep = call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.70) #7 ; 0 uses
  call void @SDL_free_REAL(ptr noundef nonnull %i.cz) #7
  br label %.thread252

bb.as:                                            ; preds = %bb.ar
  %i.eq = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i32 %i.dm, ptr %i.eq, align 8
  %i.er = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  %i.es = load i32, ptr %i.er, align 8
  %i.et = getelementptr inbounds nuw i8, ptr %4, i64 36
  store i32 %i.es, ptr %i.et, align 4
  call void @SDL_free_REAL(ptr noundef nonnull %i.cz) #7
  %i.eu = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  store i32 1, ptr %i.eu, align 8
  %i.ev = load i32, ptr %5, align 4               ; 4 uses
  %i.ew = and i32 %i.ev, 1
  %.not239 = icmp eq i32 %i.ew, 0
  br i1 %.not239, label %bb.at, label %bb.aw

bb.at:                                            ; preds = %bb.as
  %i.ex = and i32 %i.ev, 2
  %.not239.1 = icmp eq i32 %i.ex, 0
  br i1 %.not239.1, label %bb.au, label %bb.aw

bb.au:                                            ; preds = %bb.at
  %i.ey = and i32 %i.ev, 4
  %.not239.2 = icmp eq i32 %i.ey, 0
  br i1 %.not239.2, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.ez = and i32 %i.ev, 8
  %.not239.3 = icmp eq i32 %i.ez, 0
  br i1 %.not239.3, label %.loopexit, label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au, %bb.at, %bb.as
  %.lcssa = phi i32 [ 1, %bb.as ], [ 2, %bb.at ], [ 4, %bb.au ], [ 8, %bb.av ] ; 2 uses
  store i32 %.lcssa, ptr %i.eu, align 8
  br label %.loopexit

.thread252:                                       ; preds = %bb.p, %bb.r, %bb.u, %bb.z, %bb.ab, %bb.ae, %.thread246, %.thread249, %bb.s, %bb.n, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  br label %bb.bc

.loopexit:                                        ; preds = %bb.av, %bb.aw
  %i.fa = phi i32 [ %.lcssa, %bb.aw ], [ 1, %bb.av ]
  call void (i32, ptr, ...) @SDL_LogDebug_REAL(i32 noundef 5, ptr noundef nonnull @.str.71, i32 noundef %i.fa) #7
  %i.fb = getelementptr inbounds nuw i8, ptr %4, i64 52
  store i32 %.sroa.0.0.copyload, ptr %i.fb, align 4
  %.sroa.8.0..sroa_idx41 = getelementptr inbounds nuw i8, ptr %4, i64 56
  store i32 %.sroa.8.0.copyload, ptr %.sroa.8.0..sroa_idx41, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  br label %.loopexit263

bb.ax:                                            ; preds = %.lr.ph, %bb.m
  %.2199.ph = phi i32 [ %i.at, %bb.m ], [ %.1198283, %.lr.ph ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.fc = load i32, ptr %i.a, align 4
  %i.fd = zext i32 %i.fc to i64
  %i.fe = icmp samesign ult i64 %indvars.iv.next, %i.fd
  br i1 %i.fe, label %.lr.ph, label %.loopexit263.loopexit, !llvm.loop !6

.loopexit263.loopexit:                            ; preds = %bb.ax
  %i.ff = trunc nuw i64 %indvars.iv.next to i32
  br label %.loopexit263

.loopexit263:                                     ; preds = %.loopexit263.loopexit, %.preheader262, %.loopexit
  %.0200278 = phi i32 [ %i.aq, %.loopexit ], [ 0, %.preheader262 ], [ %i.ff, %.loopexit263.loopexit ]
  call void @SDL_free_REAL(ptr noundef nonnull %i.ag) #7
  %i.fg = load i32, ptr %i.a, align 4
  %i.fh = icmp eq i32 %.0200278, %i.fg
  br i1 %i.fh, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %.loopexit263
  %i.fi = call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.72) #7 ; 0 uses
  br label %bb.bc

bb.az:                                            ; preds = %.loopexit263
  store i32 1000002001, ptr %4, align 8
  %i.fj = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i32 1, ptr %i.fj, align 8
  %i.fk = getelementptr inbounds nuw i8, ptr %4, i64 44
  store float 1.000000e+00, ptr %i.fk, align 4
  %i.fl = call i32 %i.l(ptr noundef %1, ptr noundef nonnull %4, ptr noundef %2, ptr noundef %3) #7 ; 2 uses
  %.not240 = icmp eq i32 %i.fl, 0
  br i1 %.not240, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.fm = call ptr @SDL_Vulkan_GetResultString(i32 noundef %i.fl)
  %i.fn = call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.73, ptr noundef nonnull %i.fm) #7 ; 0 uses
  br label %bb.bc

bb.bb:                                            ; preds = %bb.az
  call void (i32, ptr, ...) @SDL_LogDebug_REAL(i32 noundef 5, ptr noundef nonnull @.str.74) #7
  br label %bb.bd

bb.bc:                                            ; preds = %.thread252, %bb.i, %bb.ba, %bb.ay, %bb.k, %bb.h, %bb.f, %bb.b
  %.0201 = phi ptr [ null, %bb.f ], [ null, %bb.h ], [ %i.ag, %bb.k ], [ null, %bb.ay ], [ null, %bb.ba ], [ %i.ag, %.thread252 ], [ null, %bb.i ], [ null, %bb.b ]
  call void @SDL_free_REAL(ptr noundef %.0201) #7
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %.0202 = phi i1 [ false, %bb.bc ], [ true, %bb.bb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  ret i1 %.0202
}

declare ptr @SDL_GetHint_REAL(ptr noundef) local_unnamed_addr #3

declare i32 @SDL_atoi_REAL(ptr noundef) local_unnamed_addr #3

declare noalias ptr @SDL_malloc_REAL(i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

declare void @SDL_LogDebug_REAL(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define hidden void @SDL_Vulkan_DestroySurface_Internal(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr %0(ptr noundef %1, ptr noundef nonnull @.str.75) #7 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void %i.a(ptr noundef %1, ptr noundef %2, ptr noundef %3) #7
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #6

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }
attributes #8 = { nounwind allocsize(0,1) }
end_hunk_0
