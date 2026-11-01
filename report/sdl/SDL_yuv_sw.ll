Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sdl/original/SDL_yuv_sw?download=true
inline.NumInlined: 2
begin_hunk_0_@SDL_SW_CreateYUVTexture:bb.a
    i32 825382478, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str) #7 ; 0 uses
  br label %bb.j

bb.c:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  %i.c = tail call noalias dereferenceable_or_null(88) ptr @SDL_calloc_REAL(i64 noundef 1, i64 noundef 88) #8 ; 27 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.j, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i32 %0, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 %1, ptr %i.d, align 4
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i32 0, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  store i32 %2, ptr %i.f, align 4
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i32 %3, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.h = call zeroext i1 @SDL_CalculateYUVSize(i32 noundef %0, i32 noundef %2, i32 noundef %3, ptr noundef nonnull %i.a, ptr noundef null) #7
  br i1 %i.h, label %bb.e, label %SDL_SW_DestroyYUVTexture.exit

SDL_SW_DestroyYUVTexture.exit:                    ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.j = load ptr, ptr %i.i, align 8
  br label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.k = call i64 @SDL_GetSIMDAlignment_REAL() #7
  %i.l = load i64, ptr %i.a, align 8
  %i.m = call noalias ptr @SDL_aligned_alloc_REAL(i64 noundef %i.k, i64 noundef %i.l) #7 ; 7 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr %i.m, ptr %i.n, align 8
  %.not53 = icmp eq ptr %i.m, null
  br i1 %.not53, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  switch i32 %0, label %bb.j [
    i32 842094169, label %bb.g
    i32 1448433993, label %bb.g
    i32 844715353, label %bb.h
    i32 1498831189, label %bb.h
    i32 1431918169, label %bb.h
    i32 842094158, label %bb.i
    i32 825382478, label %bb.i
  ]

bb.g:                                             ; preds = %bb.f, %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store i32 %2, ptr %i.o, align 8
  %i.p = add nsw i32 %2, 1
  %i.q = sdiv i32 %i.p, 2                         ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 36
  store i32 %i.q, ptr %i.r, align 4
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store i32 %i.q, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store ptr %i.m, ptr %i.t, align 8
  %i.u = mul nsw i32 %3, %2
  %i.v = sext i32 %i.u to i64
  %i.w = getelementptr inbounds i8, ptr %i.m, i64 %i.v ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  store ptr %i.w, ptr %i.x, align 8
  %i.y = add nsw i32 %3, 1
  %i.z = sdiv i32 %i.y, 2
  %i.aa = mul nsw i32 %i.z, %i.q
  %i.ab = sext i32 %i.aa to i64
  %i.ac = getelementptr inbounds i8, ptr %i.w, i64 %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  store ptr %i.ac, ptr %i.ad, align 8
  br label %bb.j

bb.h:                                             ; preds = %bb.f, %bb.f, %bb.f
  %i.ae = add nsw i32 %2, 1
  %i.af = sdiv i32 %i.ae, 2
  %i.ag = shl nsw i32 %i.af, 2
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store i32 %i.ag, ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store ptr %i.m, ptr %i.ai, align 8
  br label %bb.j

bb.i:                                             ; preds = %bb.f, %bb.f
  %i.aj = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store i32 %2, ptr %i.aj, align 8
  %i.ak = add nsw i32 %2, 1
  %i.al = sdiv i32 %i.ak, 2
  %i.am = shl nsw i32 %i.al, 1
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 36
  store i32 %i.am, ptr %i.an, align 4
  %i.ao = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store ptr %i.m, ptr %i.ao, align 8
  %i.ap = mul nsw i32 %3, %2
  %i.aq = sext i32 %i.ap to i64
  %i.ar = getelementptr inbounds i8, ptr %i.m, i64 %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  store ptr %i.ar, ptr %i.as, align 8
  br label %bb.j

.critedge:                                        ; preds = %bb.e, %SDL_SW_DestroyYUVTexture.exit
  %.sink = phi ptr [ %i.j, %SDL_SW_DestroyYUVTexture.exit ], [ null, %bb.e ]
  call void @SDL_aligned_free_REAL(ptr noundef %.sink) #7
  %i.at = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.au = load ptr, ptr %i.at, align 8
  call void @SDL_DestroySurface_REAL(ptr noundef %i.au) #7
  %i.av = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %i.aw = load ptr, ptr %i.av, align 8
  call void @SDL_DestroySurface_REAL(ptr noundef %i.aw) #7
  call void @SDL_free_REAL(ptr noundef nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.j

bb.j:                                             ; preds = %bb.g, %bb.h, %bb.i, %bb.f, %.critedge, %bb.c, %bb.b
  %.1 = phi ptr [ null, %bb.b ], [ null, %bb.c ], [ null, %.critedge ], [ %i.c, %bb.f ], [ %i.c, %bb.i ], [ %i.c, %bb.h ], [ %i.c, %bb.g ]
  ret ptr %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare zeroext i1 @SDL_SetError_REAL(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: allocsize(0,1)
declare noalias ptr @SDL_calloc_REAL(i64 noundef, i64 noundef) local_unnamed_addr #3

declare zeroext i1 @SDL_CalculateYUVSize(i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden void @SDL_SW_DestroyYUVTexture(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8
  tail call void @SDL_aligned_free_REAL(ptr noundef %i.b) #7
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.d = load ptr, ptr %i.c, align 8
  tail call void @SDL_DestroySurface_REAL(ptr noundef %i.d) #7
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.f = load ptr, ptr %i.e, align 8
  tail call void @SDL_DestroySurface_REAL(ptr noundef %i.f) #7
  tail call void @SDL_free_REAL(ptr noundef nonnull %0) #7
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

declare noalias ptr @SDL_aligned_alloc_REAL(i64 noundef, i64 noundef) local_unnamed_addr #2

declare i64 @SDL_GetSIMDAlignment_REAL() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden noundef zeroext i1 @SDL_SW_QueryYUVTexturePixels(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %1, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %2) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8
  store ptr %i.b, ptr %1, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load i32, ptr %i.c, align 8
  store i32 %i.d, ptr %2, align 4
  ret i1 true
}

; Function Attrs: nounwind uwtable
define hidden zeroext i1 @SDL_SW_UpdateYUVTexture(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %0, align 8
  switch i32 %i.a, label %bb.u [
    i32 842094169, label %bb.b
    i32 1448433993, label %bb.b
    i32 844715353, label %bb.k
    i32 1498831189, label %bb.k
    i32 1431918169, label %bb.k
    i32 842094158, label %bb.m
    i32 825382478, label %bb.m
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  %i.b = load i32, ptr %1, align 4                ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.e = load i32, ptr %i.d, align 4
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load i32, ptr %i.g, align 4              ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.j = load i32, ptr %i.i, align 4
  %i.k = icmp eq i32 %i.h, %i.j
  br i1 %i.k, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.m = load i32, ptr %i.l, align 4              ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load i32, ptr %i.n, align 8
  %i.p = icmp eq i32 %i.m, %i.o
  br i1 %i.p, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = mul nsw i32 %i.m, %i.h
  %i.t = sext i32 %i.s to i64
  %4 = add nsw i32 %i.m, 1
  %5 = sdiv i32 %4, 2
  %6 = add nsw i32 %i.h, 1
  %7 = sdiv i32 %6, 2
  %8 = shl nsw i32 %7, 1
  %i.u = mul i32 %8, %5
  %i.v = sext i32 %i.u to i64
  %i.w = add nsw i64 %i.v, %i.t
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.r, ptr align 1 %2, i64 %i.w, i1 false)
  br label %.loopexit

bb.g:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 6 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.aa = load i32, ptr %i.z, align 4
  %i.ab = sext i32 %i.aa to i64
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 4 uses
  %i.ad = load i32, ptr %i.ac, align 4
  %i.ae = icmp sgt i32 %i.ad, 0
  br i1 %i.ae, label %.lr.ph187, label %.loopexit

.lr.ph187:                                        ; preds = %bb.g
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ag = load ptr, ptr %i.x, align 8
  %i.ah = load i32, ptr %i.y, align 4
  %i.ai = load i32, ptr %i.af, align 4
  %i.aj = mul nsw i32 %i.ah, %i.ai
  %i.ak = sext i32 %i.aj to i64
  %i.al = getelementptr inbounds i8, ptr %i.ag, i64 %i.ak
  %i.am = sext i32 %i.b to i64
  %i.an = getelementptr inbounds i8, ptr %i.al, i64 %i.am
  %i.ao = sext i32 %3 to i64
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph187, %bb.h
  %.0147185 = phi i32 [ 0, %.lr.ph187 ], [ %i.at, %bb.h ]
  %.0149184 = phi ptr [ %i.an, %.lr.ph187 ], [ %i.as, %bb.h ] ; 2 uses
  %.0152183 = phi ptr [ %2, %.lr.ph187 ], [ %i.ap, %bb.h ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0149184, ptr align 1 %.0152183, i64 %i.ab, i1 false)
  %i.ap = getelementptr inbounds i8, ptr %.0152183, i64 %i.ao
  %i.aq = load i32, ptr %i.y, align 4
  %i.ar = sext i32 %i.aq to i64
  %i.as = getelementptr inbounds i8, ptr %.0149184, i64 %i.ar
  %i.at = add nuw nsw i32 %.0147185, 1            ; 2 uses
  %i.au = load i32, ptr %i.ac, align 4            ; 3 uses
  %i.av = icmp slt i32 %i.at, %i.au
  br i1 %i.av, label %bb.h, label %._crit_edge188, !llvm.loop !4

._crit_edge188:                                   ; preds = %bb.h
  %.pre209 = load i32, ptr %i.z, align 4
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ax = add nsw i32 %.pre209, 1
  %i.ay = sdiv i32 %i.ax, 2
  %i.az = sext i32 %i.ay to i64
  %i.ba = icmp sgt i32 %i.au, 0
  br i1 %i.ba, label %.lr.ph194, label %.loopexit

.lr.ph194:                                        ; preds = %._crit_edge188
  %i.bb = load ptr, ptr %i.x, align 8
  %i.bc = load i32, ptr %i.y, align 4             ; 2 uses
  %i.bd = load i32, ptr %i.aw, align 8
  %i.be = mul nsw i32 %i.bc, %i.bd
  %i.bf = sext i32 %i.be to i64
  %i.bg = getelementptr inbounds i8, ptr %i.bb, i64 %i.bf
  %i.bh = add nsw i32 %i.bc, 1
  %i.bi = sdiv i32 %i.bh, 2
  %i.bj = load <2 x i32>, ptr %1, align 4
  %i.bk = sdiv <2 x i32> %i.bj, splat (i32 2)     ; 2 uses
  %i.bl = extractelement <2 x i32> %i.bk, i64 1
  %i.bm = mul nsw i32 %i.bl, %i.bi
  %i.bn = extractelement <2 x i32> %i.bk, i64 0
  %i.bo = add nsw i32 %i.bm, %i.bn
  %i.bp = sext i32 %i.bo to i64
  %i.bq = getelementptr inbounds i8, ptr %i.bg, i64 %i.bp
  %i.br = mul nsw i32 %i.au, %3
  %i.bs = sext i32 %i.br to i64
  %i.bt = getelementptr inbounds i8, ptr %2, i64 %i.bs
  %i.bu = add nsw i32 %3, 1
  %i.bv = sdiv i32 %i.bu, 2
  %i.bw = sext i32 %i.bv to i64
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph194, %bb.i
  %.1148192 = phi i32 [ 0, %.lr.ph194 ], [ %i.cd, %bb.i ]
  %.1150191 = phi ptr [ %i.bq, %.lr.ph194 ], [ %i.cc, %bb.i ] ; 2 uses
  %.1153190 = phi ptr [ %i.bt, %.lr.ph194 ], [ %i.bx, %bb.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.1150191, ptr align 1 %.1153190, i64 %i.az, i1 false)
  %i.bx = getelementptr inbounds i8, ptr %.1153190, i64 %i.bw
  %i.by = load i32, ptr %i.y, align 4
  %i.bz = add nsw i32 %i.by, 1
  %i.ca = sdiv i32 %i.bz, 2
  %i.cb = sext i32 %i.ca to i64
  %i.cc = getelementptr inbounds i8, ptr %.1150191, i64 %i.cb
  %i.cd = add nuw nsw i32 %.1148192, 1            ; 2 uses
  %i.ce = load i32, ptr %i.ac, align 4            ; 3 uses
  %i.cf = add nsw i32 %i.ce, 1
  %i.cg = sdiv i32 %i.cf, 2                       ; 2 uses
  %i.ch = icmp slt i32 %i.cd, %i.cg
  br i1 %i.ch, label %bb.i, label %._crit_edge195, !llvm.loop !5

._crit_edge195:                                   ; preds = %bb.i
  %.pre210 = load i32, ptr %i.z, align 4
  %.pre211 = add nsw i32 %.pre210, 1
  %.pre212 = sdiv i32 %.pre211, 2
  %.pre214 = sext i32 %.pre212 to i64
  %i.ci = icmp sgt i32 %i.ce, 0
  br i1 %i.ci, label %.lr.ph202, label %.loopexit

.lr.ph202:                                        ; preds = %._crit_edge195
  %i.cj = load ptr, ptr %i.x, align 8
  %i.ck = load i32, ptr %i.y, align 4             ; 2 uses
  %i.cl = load i32, ptr %i.aw, align 8            ; 2 uses
  %i.cm = mul nsw i32 %i.ck, %i.cl
  %i.cn = sext i32 %i.cm to i64
  %i.co = getelementptr inbounds i8, ptr %i.cj, i64 %i.cn
  %i.cp = add nsw i32 %i.ck, 1
  %i.cq = sdiv i32 %i.cp, 2                       ; 2 uses
  %i.cr = add nsw i32 %i.cl, 1
  %i.cs = sdiv i32 %i.cr, 2
  %i.ct = mul nsw i32 %i.cq, %i.cs
  %i.cu = sext i32 %i.ct to i64
  %i.cv = getelementptr inbounds i8, ptr %i.co, i64 %i.cu
  %i.cw = load <2 x i32>, ptr %1, align 4
  %i.cx = sdiv <2 x i32> %i.cw, splat (i32 2)     ; 2 uses
  %i.cy = extractelement <2 x i32> %i.cx, i64 1
  %i.cz = mul nsw i32 %i.cy, %i.cq
  %i.da = extractelement <2 x i32> %i.cx, i64 0
  %i.db = add nsw i32 %i.cz, %i.da
  %i.dc = sext i32 %i.db to i64
  %i.dd = getelementptr inbounds i8, ptr %i.cv, i64 %i.dc
  %i.de = mul nsw i32 %i.ce, %3
  %i.df = sext i32 %i.de to i64
  %i.dg = getelementptr inbounds i8, ptr %2, i64 %i.df
  %i.dh = add nsw i32 %3, 1
  %i.di = sdiv i32 %i.dh, 2                       ; 2 uses
  %i.dj = mul nsw i32 %i.cg, %i.di
  %i.dk = sext i32 %i.dj to i64
  %i.dl = getelementptr inbounds i8, ptr %i.dg, i64 %i.dk
  %i.dm = sext i32 %i.di to i64
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph202, %bb.j
  %.2200 = phi i32 [ 0, %.lr.ph202 ], [ %i.dt, %bb.j ]
  %.2151199 = phi ptr [ %i.dd, %.lr.ph202 ], [ %i.ds, %bb.j ] ; 2 uses
  %.2154198 = phi ptr [ %i.dl, %.lr.ph202 ], [ %i.dn, %bb.j ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.2151199, ptr align 1 %.2154198, i64 %.pre214, i1 false)
  %i.dn = getelementptr inbounds i8, ptr %.2154198, i64 %i.dm
  %i.do = load i32, ptr %i.y, align 4
  %i.dp = add nsw i32 %i.do, 1
  %i.dq = sdiv i32 %i.dp, 2
  %i.dr = sext i32 %i.dq to i64
  %i.ds = getelementptr inbounds i8, ptr %.2151199, i64 %i.dr
  %i.dt = add nuw nsw i32 %.2200, 1               ; 2 uses
  %i.du = load i32, ptr %i.ac, align 4
  %i.dv = add nsw i32 %i.du, 1
  %i.dw = sdiv i32 %i.dv, 2
  %i.dx = icmp slt i32 %i.dt, %i.dw
  br i1 %i.dx, label %bb.j, label %.loopexit, !llvm.loop !6

bb.k:                                             ; preds = %bb.a, %bb.a, %bb.a
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ea = load i32, ptr %i.dz, align 4
  %i.eb = sext i32 %i.ea to i64
  %i.ec = shl nsw i64 %i.eb, 1
  %i.ed = add nsw i64 %i.ec, 2
  %i.ee = and i64 %i.ed, -4
  %i.ef = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.eg = load i32, ptr %i.ef, align 4
  %i.eh = icmp sgt i32 %i.eg, 0
  br i1 %i.eh, label %.lr.ph182, label %.loopexit

.lr.ph182:                                        ; preds = %bb.k
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ej = load ptr, ptr %i.ei, align 8
  %i.ek = load i32, ptr %i.dy, align 8
  %i.el = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.em = load i32, ptr %i.el, align 4
  %i.en = mul nsw i32 %i.ek, %i.em
  %i.eo = sext i32 %i.en to i64
  %i.ep = getelementptr inbounds i8, ptr %i.ej, i64 %i.eo
  %i.eq = load i32, ptr %1, align 4
  %i.er = shl nsw i32 %i.eq, 1
  %i.es = sext i32 %i.er to i64
  %i.et = getelementptr inbounds i8, ptr %i.ep, i64 %i.es
  %i.eu = sext i32 %3 to i64
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph182, %bb.l
  %.0144180 = phi i32 [ 0, %.lr.ph182 ], [ %i.ez, %bb.l ]
  %.0145179 = phi ptr [ %i.et, %.lr.ph182 ], [ %i.ey, %bb.l ] ; 2 uses
  %.0146178 = phi ptr [ %2, %.lr.ph182 ], [ %i.ev, %bb.l ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0145179, ptr align 1 %.0146178, i64 %i.ee, i1 false)
  %i.ev = getelementptr inbounds i8, ptr %.0146178, i64 %i.eu
  %i.ew = load i32, ptr %i.dy, align 8
  %i.ex = sext i32 %i.ew to i64
  %i.ey = getelementptr inbounds i8, ptr %.0145179, i64 %i.ex
  %i.ez = add nuw nsw i32 %.0144180, 1            ; 2 uses
  %i.fa = load i32, ptr %i.ef, align 4
  %i.fb = icmp slt i32 %i.ez, %i.fa
  br i1 %i.fb, label %bb.l, label %.loopexit, !llvm.loop !7

bb.m:                                             ; preds = %bb.a, %bb.a
  %i.fc = load i32, ptr %1, align 4               ; 2 uses
  %i.fd = icmp eq i32 %i.fc, 0
  br i1 %i.fd, label %bb.n, label %bb.r

bb.n:                                             ; preds = %bb.m
  %i.fe = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ff = load i32, ptr %i.fe, align 4
  %i.fg = icmp eq i32 %i.ff, 0
  br i1 %i.fg, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.fh = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.fi = load i32, ptr %i.fh, align 4            ; 3 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.fk = load i32, ptr %i.fj, align 4
  %i.fl = icmp eq i32 %i.fi, %i.fk
  br i1 %i.fl, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.fm = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.fn = load i32, ptr %i.fm, align 4            ; 3 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.fp = load i32, ptr %i.fo, align 8
  %i.fq = icmp eq i32 %i.fn, %i.fp
  br i1 %i.fq, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.fs = load ptr, ptr %i.fr, align 8
  %i.ft = mul nsw i32 %i.fn, %i.fi
  %i.fu = sext i32 %i.ft to i64
  %9 = add nsw i32 %i.fn, 1
  %10 = sdiv i32 %9, 2
  %11 = add nsw i32 %i.fi, 1
  %12 = sdiv i32 %11, 2
  %13 = shl nsw i32 %12, 1
  %i.fv = mul i32 %13, %10
  %i.fw = sext i32 %i.fv to i64
  %i.fx = add nsw i64 %i.fw, %i.fu
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.fs, ptr align 1 %2, i64 %i.fx, i1 false)
  br label %.loopexit

bb.r:                                             ; preds = %bb.p, %bb.o, %bb.n, %bb.m
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 4 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.gb = load i32, ptr %i.ga, align 4
  %i.gc = sext i32 %i.gb to i64
  %i.gd = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 3 uses
  %i.ge = load i32, ptr %i.gd, align 4
  %i.gf = icmp sgt i32 %i.ge, 0
  br i1 %i.gf, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.r
  %i.gg = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.gh = load ptr, ptr %i.fy, align 8
  %i.gi = load i32, ptr %i.fz, align 4
  %i.gj = load i32, ptr %i.gg, align 4
  %i.gk = mul nsw i32 %i.gi, %i.gj
  %i.gl = sext i32 %i.gk to i64
  %i.gm = getelementptr inbounds i8, ptr %i.gh, i64 %i.gl
  %i.gn = sext i32 %i.fc to i64
  %i.go = getelementptr inbounds i8, ptr %i.gm, i64 %i.gn
  %i.gp = sext i32 %3 to i64
  br label %bb.s

bb.s:                                             ; preds = %.lr.ph, %bb.s
  %.0172 = phi i32 [ 0, %.lr.ph ], [ %i.gu, %bb.s ]
  %.0140171 = phi ptr [ %i.go, %.lr.ph ], [ %i.gt, %bb.s ] ; 2 uses
  %.0142170 = phi ptr [ %2, %.lr.ph ], [ %i.gq, %bb.s ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0140171, ptr align 1 %.0142170, i64 %i.gc, i1 false)
  %i.gq = getelementptr inbounds i8, ptr %.0142170, i64 %i.gp
  %i.gr = load i32, ptr %i.fz, align 4
  %i.gs = sext i32 %i.gr to i64
  %i.gt = getelementptr inbounds i8, ptr %.0140171, i64 %i.gs
  %i.gu = add nuw nsw i32 %.0172, 1               ; 2 uses
  %i.gv = load i32, ptr %i.gd, align 4            ; 3 uses
  %i.gw = icmp slt i32 %i.gu, %i.gv
  br i1 %i.gw, label %bb.s, label %._crit_edge, !llvm.loop !8

._crit_edge:                                      ; preds = %bb.s
  %.pre = load i32, ptr %i.ga, align 4
  %.pre216 = sext i32 %.pre to i64
  %i.gx = add nsw i64 %.pre216, 1
  %i.gy = and i64 %i.gx, -2
  %i.gz = icmp sgt i32 %i.gv, 0
  br i1 %i.gz, label %.lr.ph177, label %.loopexit

.lr.ph177:                                        ; preds = %._crit_edge
  %i.ha = load ptr, ptr %i.fy, align 8
  %i.hb = load i32, ptr %i.fz, align 4            ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.hd = load i32, ptr %i.hc, align 8
  %i.he = mul nsw i32 %i.hb, %i.hd
  %i.hf = sext i32 %i.he to i64
  %i.hg = getelementptr inbounds i8, ptr %i.ha, i64 %i.hf
  %i.hh = add nsw i32 %i.hb, 1
  %i.hi = sdiv i32 %i.hh, 2
  %i.hj = load <2 x i32>, ptr %1, align 4
  %i.hk = add nsw <2 x i32> %i.hj, <i32 0, i32 1>
  %i.hl = sdiv <2 x i32> %i.hk, splat (i32 2)     ; 2 uses
  %i.hm = extractelement <2 x i32> %i.hl, i64 1
  %i.hn = mul i32 %i.hm, %i.hi
  %i.ho = extractelement <2 x i32> %i.hl, i64 0
  %reass.add = add i32 %i.hn, %i.ho
  %reass.mul = shl i32 %reass.add, 1
  %i.hp = sext i32 %reass.mul to i64
  %i.hq = getelementptr inbounds i8, ptr %i.hg, i64 %i.hp
  %i.hr = mul nsw i32 %i.gv, %3
  %i.hs = sext i32 %i.hr to i64
  %i.ht = getelementptr inbounds i8, ptr %2, i64 %i.hs
  %i.hu = add nsw i32 %3, 1
  %i.hv = sdiv i32 %i.hu, 2
  %i.hw = shl nsw i32 %i.hv, 1
  %i.hx = sext i32 %i.hw to i64
  br label %bb.t

bb.t:                                             ; preds = %.lr.ph177, %bb.t
  %.1175 = phi i32 [ 0, %.lr.ph177 ], [ %i.if, %bb.t ]
  %.1141174 = phi ptr [ %i.hq, %.lr.ph177 ], [ %i.ie, %bb.t ] ; 2 uses
  %.1143173 = phi ptr [ %i.ht, %.lr.ph177 ], [ %i.hy, %bb.t ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.1141174, ptr align 1 %.1143173, i64 %i.gy, i1 false)
  %i.hy = getelementptr inbounds i8, ptr %.1143173, i64 %i.hx
  %i.hz = load i32, ptr %i.fz, align 4
  %i.ia = add nsw i32 %i.hz, 1
  %i.ib = sdiv i32 %i.ia, 2
  %i.ic = shl nsw i32 %i.ib, 1
  %i.id = sext i32 %i.ic to i64
  %i.ie = getelementptr inbounds i8, ptr %.1141174, i64 %i.id
  %i.if = add nuw nsw i32 %.1175, 1               ; 2 uses
  %i.ig = load i32, ptr %i.gd, align 4
  %i.ih = add nsw i32 %i.ig, 1
  %i.ii = sdiv i32 %i.ih, 2
  %i.ij = icmp slt i32 %i.if, %i.ii
  br i1 %i.ij, label %bb.t, label %.loopexit, !llvm.loop !9

bb.u:                                             ; preds = %bb.a
  %i.ik = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str) #7
  br label %.loopexit

.loopexit:                                        ; preds = %bb.t, %bb.l, %bb.j, %bb.r, %bb.g, %._crit_edge188, %._crit_edge, %bb.k, %._crit_edge195, %bb.f, %bb.q, %bb.u
  %.0155 = phi i1 [ %i.ik, %bb.u ], [ true, %._crit_edge195 ], [ true, %bb.k ], [ true, %bb.f ], [ true, %bb.q ], [ true, %._crit_edge ], [ true, %bb.g ], [ true, %bb.r ], [ true, %bb.l ], [ true, %bb.j ], [ true, %._crit_edge188 ], [ true, %bb.t ]
  ret i1 %.0155
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @SDL_SW_UpdateYUVTexturePlanar(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5, ptr nofree noundef readonly captures(none) %6, i32 noundef %7) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.d = load i32, ptr %i.c, align 4
  %i.e = sext i32 %i.d to i64
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 4 uses
  %i.g = load i32, ptr %i.f, align 4
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.j = load ptr, ptr %i.a, align 8
  %i.k = load i32, ptr %i.b, align 4
  %i.l = load i32, ptr %i.i, align 4
  %i.m = mul nsw i32 %i.k, %i.l
  %i.n = sext i32 %i.m to i64
  %i.o = getelementptr inbounds i8, ptr %i.j, i64 %i.n
  %i.p = load i32, ptr %1, align 4
  %i.q = sext i32 %i.p to i64
  %i.r = getelementptr inbounds i8, ptr %i.o, i64 %i.q
  %i.s = sext i32 %3 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.073 = phi i32 [ 0, %.lr.ph ], [ %i.x, %bb.b ]
  %.06572 = phi ptr [ %i.r, %.lr.ph ], [ %i.w, %bb.b ] ; 2 uses
  %.06871 = phi ptr [ %2, %.lr.ph ], [ %i.t, %bb.b ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.06572, ptr align 1 %.06871, i64 %i.e, i1 false)
  %i.t = getelementptr inbounds i8, ptr %.06871, i64 %i.s
  %i.u = load i32, ptr %i.b, align 4
  %i.v = sext i32 %i.u to i64
  %i.w = getelementptr inbounds i8, ptr %.06572, i64 %i.v
  %i.x = add nuw nsw i32 %.073, 1                 ; 2 uses
  %i.y = load i32, ptr %i.f, align 4              ; 2 uses
  %i.z = icmp slt i32 %i.x, %i.y
  br i1 %i.z, label %bb.b, label %._crit_edge.loopexit, !llvm.loop !10

._crit_edge.loopexit:                             ; preds = %bb.b
  %i.aa = icmp sgt i32 %i.y, 0
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %i.ab = phi i1 [ %i.aa, %._crit_edge.loopexit ], [ false, %bb.a ]
  %i.ac = load i32, ptr %0, align 8               ; 2 uses
  %i.ad = icmp eq i32 %i.ac, 1448433993
  %i.ae = load ptr, ptr %i.a, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ag = load i32, ptr %i.af, align 8            ; 2 uses
  %i.ah = load i32, ptr %i.b, align 4             ; 4 uses
  %i.ai = mul nsw i32 %i.ah, %i.ag
  %i.aj = sext i32 %i.ai to i64
  %i.ak = getelementptr inbounds i8, ptr %i.ae, i64 %i.aj ; 2 uses
  br i1 %i.ad, label %bb.d, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  %i.al = add nsw i32 %i.ag, 1
  %i.am = sdiv i32 %i.al, 2
  %i.an = add nsw i32 %i.ah, 1
  %i.ao = sdiv i32 %i.an, 2
  %i.ap = mul nsw i32 %i.ao, %i.am
  %i.aq = sext i32 %i.ap to i64
  %i.ar = getelementptr inbounds i8, ptr %i.ak, i64 %i.aq
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.c
  %.166 = phi ptr [ %i.ar, %bb.c ], [ %i.ak, %._crit_edge ]
  %i.as = load i32, ptr %i.c, align 4
  %i.at = add nsw i32 %i.as, 1
  %i.au = sdiv i32 %i.at, 2
  %i.av = sext i32 %i.au to i64
  br i1 %i.ab, label %.lr.ph78, label %._crit_edge79

.lr.ph78:                                         ; preds = %bb.d
  %i.aw = add nsw i32 %i.ah, 1
  %i.ax = sdiv i32 %i.aw, 2
  %i.ay = load <2 x i32>, ptr %1, align 4
  %i.az = sdiv <2 x i32> %i.ay, splat (i32 2)     ; 2 uses
  %i.ba = extractelement <2 x i32> %i.az, i64 1
  %i.bb = mul nsw i32 %i.ax, %i.ba
  %i.bc = extractelement <2 x i32> %i.az, i64 0
  %i.bd = add nsw i32 %i.bb, %i.bc
  %i.be = sext i32 %i.bd to i64
  %i.bf = getelementptr inbounds i8, ptr %.166, i64 %i.be
  %i.bg = sext i32 %5 to i64
  br label %bb.e
end_hunk_0
