Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sdl/original/SDL_surface?download=true
inline.NumInlined: 117
inline.NumDeleted: 4
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@SDL_BlitSurfaceTiled_REAL:bb.a
  br i1 %.not64, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.af = and i32 %i.ac, -2049
  store i32 %i.af, ptr %i.ab, align 8
  call void @SDL_InvalidateMap(ptr noundef nonnull %i.ae) #10
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ag = load i32, ptr %i.w, align 4             ; 2 uses
  %i.ah = load i32, ptr %i.q, align 4             ; 4 uses
  %i.ai = sdiv i32 %i.ag, %i.ah                   ; 4 uses
  %i.aj = load i32, ptr %i.v, align 8             ; 2 uses
  %i.ak = load i32, ptr %i.p, align 4             ; 3 uses
  %i.al = sdiv i32 %i.aj, %i.ak                   ; 4 uses
  %i.am = srem i32 %i.aj, %i.ak                   ; 8 uses
  %i.an = srem i32 %i.ag, %i.ah                   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %6, ptr noundef nonnull align 4 dereferenceable(16) %4, i64 16, i1 false)
  %i.ao = load i32, ptr %i.u, align 4             ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %7, i64 4 ; 6 uses
  store i32 %i.ao, ptr %i.ap, align 4
  %i.aq = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 8 uses
  store i32 %i.ak, ptr %i.aq, align 4
  %i.ar = getelementptr inbounds nuw i8, ptr %7, i64 12 ; 4 uses
  store i32 %i.ah, ptr %i.ar, align 4
  %.not6791 = icmp sgt i32 %i.ai, 0
  br i1 %.not6791, label %.lr.ph93, label %.critedge72

.lr.ph93:                                         ; preds = %bb.m
  %.not6589 = icmp sgt i32 %i.al, 0
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %.not66 = icmp eq i32 %i.am, 0                  ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  br i1 %.not6589, label %.lr.ph.us, label %.lr.ph93.split

.lr.ph.us:                                        ; preds = %.lr.ph93, %bb.r
  %.05192.us = phi i32 [ %i.bj, %bb.r ], [ 0, %.lr.ph93 ]
  %i.au = load i32, ptr %5, align 8
  store i32 %i.au, ptr %7, align 4
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph.us, %bb.o
  %.05090.us = phi i32 [ 0, %.lr.ph.us ], [ %i.bb, %bb.o ]
  %i.av = call zeroext i1 @SDL_ValidateMap(ptr noundef nonnull %0, ptr noundef nonnull %2) #10
  br i1 %i.av, label %SDL_BlitSurfaceUnchecked_REAL.exit.us, label %SDL_BlitSurfaceUnchecked_REAL.exit.thread

SDL_BlitSurfaceUnchecked_REAL.exit.us:            ; preds = %bb.n
  %i.aw = load ptr, ptr %i.as, align 8
  %i.ax = call zeroext i1 %i.aw(ptr noundef nonnull %0, ptr noundef nonnull %6, ptr noundef nonnull %2, ptr noundef nonnull %7) #10, !inline_history !9
  br i1 %i.ax, label %bb.o, label %SDL_BlitSurfaceUnchecked_REAL.exit.thread

bb.o:                                             ; preds = %SDL_BlitSurfaceUnchecked_REAL.exit.us
  %i.ay = load i32, ptr %i.aq, align 4
  %i.az = load i32, ptr %7, align 4
  %i.ba = add nsw i32 %i.az, %i.ay
  store i32 %i.ba, ptr %7, align 4
  %i.bb = add nuw nsw i32 %.05090.us, 1           ; 2 uses
  %exitcond103.not = icmp eq i32 %i.bb, %i.al
  br i1 %exitcond103.not, label %..critedge_crit_edge.us, label %bb.n, !llvm.loop !10

bb.p:                                             ; preds = %..critedge_crit_edge.us
  store i32 %i.am, ptr %i.at, align 4
  store i32 %i.am, ptr %i.aq, align 4
  %i.bc = call zeroext i1 @SDL_ValidateMap(ptr noundef nonnull %0, ptr noundef nonnull %2) #10
  br i1 %i.bc, label %SDL_BlitSurfaceUnchecked_REAL.exit78.us, label %SDL_BlitSurfaceUnchecked_REAL.exit.thread

SDL_BlitSurfaceUnchecked_REAL.exit78.us:          ; preds = %bb.p
  %i.bd = load ptr, ptr %i.as, align 8
  %i.be = call zeroext i1 %i.bd(ptr noundef nonnull %0, ptr noundef nonnull %6, ptr noundef nonnull %2, ptr noundef nonnull %7) #10, !inline_history !9
  br i1 %i.be, label %bb.q, label %SDL_BlitSurfaceUnchecked_REAL.exit.thread

bb.q:                                             ; preds = %SDL_BlitSurfaceUnchecked_REAL.exit78.us
  %i.bf = load i32, ptr %i.p, align 4             ; 2 uses
  store i32 %i.bf, ptr %i.at, align 4
  store i32 %i.bf, ptr %i.aq, align 4
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %..critedge_crit_edge.us
  %i.bg = load i32, ptr %i.ar, align 4
  %i.bh = load i32, ptr %i.ap, align 4
  %i.bi = add nsw i32 %i.bh, %i.bg
  store i32 %i.bi, ptr %i.ap, align 4
  %i.bj = add nuw nsw i32 %.05192.us, 1           ; 2 uses
  %exitcond104.not = icmp eq i32 %i.bj, %i.ai
  br i1 %exitcond104.not, label %.critedge72, label %.lr.ph.us, !llvm.loop !11

..critedge_crit_edge.us:                          ; preds = %bb.o
  br i1 %.not66, label %bb.r, label %bb.p

.lr.ph93.split:                                   ; preds = %.lr.ph93
  br i1 %.not66, label %.lr.ph93.split.split.us, label %.critedge

.lr.ph93.split.split.us:                          ; preds = %.lr.ph93.split
  %i.bk = mul i32 %i.ah, %i.ai
  %i.bl = add i32 %i.ao, %i.bk
  store i32 %i.bl, ptr %i.ap, align 4
  br label %.critedge72

.critedge:                                        ; preds = %.lr.ph93.split, %bb.s
  %.05192 = phi i32 [ %i.bu, %bb.s ], [ 0, %.lr.ph93.split ]
  %i.bm = load i32, ptr %5, align 8
  store i32 %i.bm, ptr %7, align 4
  store i32 %i.am, ptr %i.at, align 4
  store i32 %i.am, ptr %i.aq, align 4
  %i.bn = call zeroext i1 @SDL_ValidateMap(ptr noundef nonnull %0, ptr noundef nonnull %2) #10
  br i1 %i.bn, label %SDL_BlitSurfaceUnchecked_REAL.exit78, label %SDL_BlitSurfaceUnchecked_REAL.exit.thread

SDL_BlitSurfaceUnchecked_REAL.exit78:             ; preds = %.critedge
  %i.bo = load ptr, ptr %i.as, align 8
  %i.bp = call zeroext i1 %i.bo(ptr noundef nonnull %0, ptr noundef nonnull %6, ptr noundef nonnull %2, ptr noundef nonnull %7) #10, !inline_history !9
  br i1 %i.bp, label %bb.s, label %SDL_BlitSurfaceUnchecked_REAL.exit.thread

bb.s:                                             ; preds = %SDL_BlitSurfaceUnchecked_REAL.exit78
  %i.bq = load i32, ptr %i.p, align 4             ; 2 uses
  store i32 %i.bq, ptr %i.at, align 4
  store i32 %i.bq, ptr %i.aq, align 4
  %i.br = load i32, ptr %i.ar, align 4
  %i.bs = load i32, ptr %i.ap, align 4
  %i.bt = add nsw i32 %i.bs, %i.br
  store i32 %i.bt, ptr %i.ap, align 4
  %i.bu = add nuw nsw i32 %.05192, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.bu, %i.ai
  br i1 %exitcond.not, label %.critedge72, label %.critedge, !llvm.loop !11

.critedge72:                                      ; preds = %bb.s, %bb.r, %.lr.ph93.split.split.us, %bb.m
  %.not68 = icmp eq i32 %i.an, 0
  br i1 %.not68, label %bb.x, label %bb.t

bb.t:                                             ; preds = %.critedge72
  %i.bv = getelementptr inbounds nuw i8, ptr %6, i64 12
  store i32 %i.an, ptr %i.bv, align 4
  store i32 %i.an, ptr %i.ar, align 4
  %i.bw = load i32, ptr %5, align 8
  store i32 %i.bw, ptr %7, align 4
  %.not6997 = icmp sgt i32 %i.al, 0
  br i1 %.not6997, label %.lr.ph, label %.critedge74

.lr.ph:                                           ; preds = %bb.t
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 128
  br label %bb.u

bb.u:                                             ; preds = %.lr.ph, %bb.v
  %.098 = phi i32 [ 0, %.lr.ph ], [ %i.ce, %bb.v ]
  %i.by = call zeroext i1 @SDL_ValidateMap(ptr noundef nonnull %0, ptr noundef nonnull %2) #10
  br i1 %i.by, label %SDL_BlitSurfaceUnchecked_REAL.exit80, label %SDL_BlitSurfaceUnchecked_REAL.exit.thread

SDL_BlitSurfaceUnchecked_REAL.exit80:             ; preds = %bb.u
  %i.bz = load ptr, ptr %i.bx, align 8
  %i.ca = call zeroext i1 %i.bz(ptr noundef nonnull %0, ptr noundef nonnull %6, ptr noundef nonnull %2, ptr noundef nonnull %7) #10, !inline_history !9
  br i1 %i.ca, label %bb.v, label %SDL_BlitSurfaceUnchecked_REAL.exit.thread

bb.v:                                             ; preds = %SDL_BlitSurfaceUnchecked_REAL.exit80
  %i.cb = load i32, ptr %i.aq, align 4
  %i.cc = load i32, ptr %7, align 4
  %i.cd = add nsw i32 %i.cc, %i.cb
  store i32 %i.cd, ptr %7, align 4
  %i.ce = add nuw nsw i32 %.098, 1                ; 2 uses
  %exitcond105.not = icmp eq i32 %i.ce, %i.al
  br i1 %exitcond105.not, label %.critedge74, label %bb.u, !llvm.loop !12

.critedge74:                                      ; preds = %bb.v, %bb.t
  %.not70 = icmp eq i32 %i.am, 0
  br i1 %.not70, label %bb.x, label %bb.w

bb.w:                                             ; preds = %.critedge74
  %i.cf = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 %i.am, ptr %i.cf, align 4
  store i32 %i.am, ptr %i.aq, align 4
  %i.cg = call zeroext i1 @SDL_ValidateMap(ptr noundef nonnull %0, ptr noundef nonnull %2) #10
  br i1 %i.cg, label %SDL_BlitSurfaceUnchecked_REAL.exit82, label %SDL_BlitSurfaceUnchecked_REAL.exit.thread

SDL_BlitSurfaceUnchecked_REAL.exit82:             ; preds = %bb.w
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ci = load ptr, ptr %i.ch, align 8
  %i.cj = call zeroext i1 %i.ci(ptr noundef nonnull %0, ptr noundef nonnull %6, ptr noundef nonnull %2, ptr noundef nonnull %7) #10, !inline_history !9
  br i1 %i.cj, label %bb.x, label %SDL_BlitSurfaceUnchecked_REAL.exit.thread

bb.x:                                             ; preds = %.critedge74, %SDL_BlitSurfaceUnchecked_REAL.exit82, %.critedge72
  br label %SDL_BlitSurfaceUnchecked_REAL.exit.thread

SDL_BlitSurfaceUnchecked_REAL.exit.thread:        ; preds = %SDL_BlitSurfaceUnchecked_REAL.exit78, %.critedge, %SDL_BlitSurfaceUnchecked_REAL.exit78.us, %bb.p, %SDL_BlitSurfaceUnchecked_REAL.exit.us, %bb.n, %bb.u, %SDL_BlitSurfaceUnchecked_REAL.exit80, %bb.w, %SDL_BlitSurfaceUnchecked_REAL.exit82, %bb.x
  %.4 = phi i1 [ true, %bb.x ], [ false, %SDL_BlitSurfaceUnchecked_REAL.exit82 ], [ false, %bb.w ], [ false, %SDL_BlitSurfaceUnchecked_REAL.exit78.us ], [ false, %bb.u ], [ false, %SDL_BlitSurfaceUnchecked_REAL.exit.us ], [ false, %SDL_BlitSurfaceUnchecked_REAL.exit80 ], [ false, %bb.n ], [ false, %bb.p ], [ false, %.critedge ], [ false, %SDL_BlitSurfaceUnchecked_REAL.exit78 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  br label %bb.y

bb.y:                                             ; preds = %bb.j, %bb.i, %SDL_BlitSurfaceUnchecked_REAL.exit.thread, %bb.e, %SDL_SurfaceValid.exit76.thread, %SDL_SurfaceValid.exit.thread
  %.5 = phi i1 [ %i.m, %bb.e ], [ %i.d, %SDL_SurfaceValid.exit.thread ], [ true, %bb.i ], [ %.4, %SDL_BlitSurfaceUnchecked_REAL.exit.thread ], [ %i.h, %SDL_SurfaceValid.exit76.thread ], [ true, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  ret i1 %.5
}

; Function Attrs: nounwind uwtable
define hidden zeroext i1 @SDL_BlitSurfaceTiledWithScale_REAL(ptr noundef %0, ptr noundef %1, float noundef %2, i32 noundef %3, ptr noundef %4, ptr nofree noundef readonly captures(address_is_null) %5) local_unnamed_addr #2 {
bb.a:
  %6 = alloca %struct.SDL_Rect, align 4           ; 9 uses
  %7 = alloca %struct.SDL_Rect, align 8           ; 11 uses
  %8 = alloca %struct.SDL_Rect, align 4           ; 11 uses
  %9 = alloca %struct.SDL_Rect, align 4           ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #10
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %SDL_SurfaceValid.exit.thread, label %SDL_SurfaceValid.exit

SDL_SurfaceValid.exit:                            ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = icmp eq ptr %i.b, @SDL_surface_magic
  br i1 %i.c, label %bb.b, label %SDL_SurfaceValid.exit.thread

SDL_SurfaceValid.exit.thread:                     ; preds = %bb.a, %SDL_SurfaceValid.exit
  %i.d = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str, ptr noundef nonnull @.str.18) #10
  br label %bb.aa

bb.b:                                             ; preds = %SDL_SurfaceValid.exit
  %.not.i98 = icmp eq ptr %4, null
  br i1 %.not.i98, label %SDL_SurfaceValid.exit99.thread, label %SDL_SurfaceValid.exit99

SDL_SurfaceValid.exit99:                          ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = icmp eq ptr %i.f, @SDL_surface_magic
  br i1 %i.g, label %bb.c, label %SDL_SurfaceValid.exit99.thread

SDL_SurfaceValid.exit99.thread:                   ; preds = %bb.b, %SDL_SurfaceValid.exit99
  %i.h = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str, ptr noundef nonnull @.str.19) #10
  br label %bb.aa

bb.c:                                             ; preds = %SDL_SurfaceValid.exit99
  %i.i = load i32, ptr %0, align 8
  %i.j = and i32 %i.i, 4
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = load i32, ptr %4, align 8
  %i.l = and i32 %i.k, 4
  %.not87 = icmp eq i32 %i.l, 0
  br i1 %.not87, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.m = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.20) #10
  br label %bb.aa

bb.f:                                             ; preds = %bb.d
  %i.n = fcmp olt float %2, 0.000000e+00
  br i1 %i.n, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.o = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str, ptr noundef nonnull @.str.23) #10
  br label %bb.aa

bb.h:                                             ; preds = %bb.f
  store i32 0, ptr %6, align 4
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i32 0, ptr %i.p, align 4
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 12
  %i.t = load <2 x i32>, ptr %i.q, align 8
  store <2 x i32> %i.t, ptr %i.r, align 4
  %.not88 = icmp eq ptr %5, null
  br i1 %.not88, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.u = load <2 x i32>, ptr %5, align 4
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %.pn = phi ptr [ %5, %bb.i ], [ %4, %bb.h ]
  %i.v = phi <2 x i32> [ %i.u, %bb.i ], [ zeroinitializer, %bb.h ]
  %.sink120.in = getelementptr inbounds nuw i8, ptr %.pn, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %7, i64 4
  store <2 x i32> %i.v, ptr %7, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %7, i64 12
  %i.z = load <2 x i32>, ptr %.sink120.in, align 4
  store <2 x i32> %i.z, ptr %i.x, align 8
  %.not89 = icmp eq ptr %1, null
  br i1 %.not89, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aa = call zeroext i1 @SDL_GetRectIntersection_REAL(ptr noundef nonnull %1, ptr noundef nonnull %6, ptr noundef nonnull %6) #10
  br i1 %i.aa, label %bb.l, label %bb.aa

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 100
  %i.ac = call zeroext i1 @SDL_GetRectIntersection_REAL(ptr noundef nonnull %7, ptr noundef nonnull %i.ab, ptr noundef nonnull %7) #10
  br i1 %i.ac, label %bb.m, label %bb.aa

bb.m:                                             ; preds = %bb.l
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 8            ; 2 uses
  %i.af = and i32 %i.ae, 2048
  %.not90 = icmp eq i32 %i.af, 0
  br i1 %.not90, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ah = and i32 %i.ae, -2049
  store i32 %i.ah, ptr %i.ad, align 8
  call void @SDL_InvalidateMap(ptr noundef nonnull %i.ag) #10
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.ai = load i32, ptr %i.r, align 4
  %i.aj = sitofp i32 %i.ai to float
  %i.ak = fmul float %2, %i.aj
  %i.al = call float @SDL_roundf_REAL(float noundef %i.ak) #10
  %i.am = load i32, ptr %i.s, align 4
  %i.an = sitofp i32 %i.am to float
  %i.ao = fmul float %2, %i.an
  %i.ap = call float @SDL_roundf_REAL(float noundef %i.ao) #10
  %i.aq = fptosi float %i.ap to i32               ; 5 uses
  %i.ar = fptosi float %i.al to i32               ; 7 uses
  %i.as = icmp slt i32 %i.ar, 1
  %i.at = icmp slt i32 %i.aq, 1
  %or.cond = select i1 %i.as, i1 true, i1 %i.at
  br i1 %or.cond, label %bb.aa, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.au = load i32, ptr %i.y, align 4             ; 2 uses
  %i.av = load i32, ptr %i.x, align 8             ; 2 uses
  %i.aw = sdiv i32 %i.au, %i.aq                   ; 4 uses
  %i.ax = sdiv i32 %i.av, %i.ar                   ; 5 uses
  %i.ay = mul i32 %i.aw, %i.aq
  %i.az = mul nsw i32 %i.ax, %i.ar                ; 0 uses
  %.recomposed = srem i32 %i.au, %i.aq            ; 3 uses
  %.recomposed151 = srem i32 %i.av, %i.ar         ; 6 uses
  %i.ba = insertelement <2 x i32> poison, i32 %.recomposed151, i64 0
  %i.bb = insertelement <2 x i32> %i.ba, i32 %.recomposed, i64 1
  %i.bc = sitofp <2 x i32> %i.bb to <2 x float>
  %i.bd = insertelement <2 x float> poison, float %2, i64 0
  %i.be = shufflevector <2 x float> %i.bd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bf = fdiv <2 x float> %i.bc, %i.be           ; 2 uses
  %i.bg = extractelement <2 x float> %i.bf, i64 0
  %i.bh = fptosi float %i.bg to i32               ; 3 uses
  %i.bi = extractelement <2 x float> %i.bf, i64 1
  %i.bj = fptosi float %i.bi to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %8, ptr noundef nonnull align 4 dereferenceable(16) %6, i64 16, i1 false)
  %i.bk = load i32, ptr %i.w, align 4             ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %9, i64 4 ; 6 uses
  store i32 %i.bk, ptr %i.bl, align 4
  %i.bm = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 8 uses
  store i32 %i.ar, ptr %i.bm, align 4
  %i.bn = getelementptr inbounds nuw i8, ptr %9, i64 12 ; 4 uses
  store i32 %i.aq, ptr %i.bn, align 4
  %.not92104 = icmp sgt i32 %i.aw, 0
  br i1 %.not92104, label %.lr.ph106, label %.critedge95

.lr.ph106:                                        ; preds = %bb.p
  %.not91102 = icmp sgt i32 %i.ax, 0
  %i.bo = icmp sgt i32 %.recomposed151, 0         ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 4 uses
  br i1 %.not91102, label %.lr.ph.us, label %.lr.ph106.split

.lr.ph.us:                                        ; preds = %.lr.ph106, %bb.u
  %.074105.us = phi i32 [ %i.cb, %bb.u ], [ 0, %.lr.ph106 ]
  %i.bq = load i32, ptr %7, align 8
  store i32 %i.bq, ptr %9, align 4
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph.us, %bb.r
  %.073103.us = phi i32 [ 0, %.lr.ph.us ], [ %i.bv, %bb.r ]
  %i.br = call zeroext i1 @SDL_BlitSurfaceUncheckedScaled_REAL(ptr noundef nonnull %0, ptr noundef nonnull %8, ptr noundef nonnull %4, ptr noundef nonnull %9, i32 noundef %3)
  br i1 %i.br, label %bb.r, label %.loopexit

bb.r:                                             ; preds = %bb.q
  %i.bs = load i32, ptr %i.bm, align 4
  %i.bt = load i32, ptr %9, align 4
  %i.bu = add nsw i32 %i.bt, %i.bs
  store i32 %i.bu, ptr %9, align 4
  %i.bv = add nuw nsw i32 %.073103.us, 1          ; 2 uses
  %exitcond117.not = icmp eq i32 %i.bv, %i.ax
  br i1 %exitcond117.not, label %..critedge_crit_edge.us, label %bb.q, !llvm.loop !13

bb.s:                                             ; preds = %..critedge_crit_edge.us
  store i32 %i.bh, ptr %i.bp, align 4
  store i32 %.recomposed151, ptr %i.bm, align 4
  %i.bw = call zeroext i1 @SDL_BlitSurfaceUncheckedScaled_REAL(ptr noundef nonnull %0, ptr noundef nonnull %8, ptr noundef nonnull %4, ptr noundef nonnull %9, i32 noundef %3)
  br i1 %i.bw, label %bb.t, label %.loopexit

bb.t:                                             ; preds = %bb.s
  %i.bx = load i32, ptr %i.r, align 4
  store i32 %i.bx, ptr %i.bp, align 4
  store i32 %i.ar, ptr %i.bm, align 4
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %..critedge_crit_edge.us
  %i.by = load i32, ptr %i.bn, align 4
  %i.bz = load i32, ptr %i.bl, align 4
  %i.ca = add nsw i32 %i.bz, %i.by
  store i32 %i.ca, ptr %i.bl, align 4
  %i.cb = add nuw nsw i32 %.074105.us, 1          ; 2 uses
  %exitcond118.not = icmp eq i32 %i.cb, %i.aw
  br i1 %exitcond118.not, label %.critedge95, label %.lr.ph.us, !llvm.loop !14

..critedge_crit_edge.us:                          ; preds = %bb.r
  br i1 %i.bo, label %bb.s, label %bb.u

.lr.ph106.split:                                  ; preds = %.lr.ph106
  br i1 %i.bo, label %.critedge.us107, label %.lr.ph106.split.split

.critedge.us107:                                  ; preds = %.lr.ph106.split, %bb.v
  %.074105.us108 = phi i32 [ %i.ci, %bb.v ], [ 0, %.lr.ph106.split ]
  %i.cc = load i32, ptr %7, align 8
  store i32 %i.cc, ptr %9, align 4
  store i32 %i.bh, ptr %i.bp, align 4
  store i32 %.recomposed151, ptr %i.bm, align 4
  %i.cd = call zeroext i1 @SDL_BlitSurfaceUncheckedScaled_REAL(ptr noundef nonnull %0, ptr noundef nonnull %8, ptr noundef nonnull %4, ptr noundef nonnull %9, i32 noundef %3)
  br i1 %i.cd, label %bb.v, label %.loopexit

bb.v:                                             ; preds = %.critedge.us107
  %i.ce = load i32, ptr %i.r, align 4
  store i32 %i.ce, ptr %i.bp, align 4
  store i32 %i.ar, ptr %i.bm, align 4
  %i.cf = load i32, ptr %i.bn, align 4
  %i.cg = load i32, ptr %i.bl, align 4
  %i.ch = add nsw i32 %i.cg, %i.cf
  store i32 %i.ch, ptr %i.bl, align 4
  %i.ci = add nuw nsw i32 %.074105.us108, 1       ; 2 uses
  %exitcond.not = icmp eq i32 %i.ci, %i.aw
  br i1 %exitcond.not, label %.critedge95, label %.critedge.us107, !llvm.loop !14

.lr.ph106.split.split:                            ; preds = %.lr.ph106.split
  %i.cj = add i32 %i.bk, %i.ay
  store i32 %i.cj, ptr %i.bl, align 4
  br label %.critedge95

.critedge95:                                      ; preds = %bb.v, %bb.u, %.lr.ph106.split.split, %bb.p
  %i.ck = icmp sgt i32 %.recomposed, 0
  br i1 %i.ck, label %bb.w, label %bb.z

bb.w:                                             ; preds = %.critedge95
  %i.cl = getelementptr inbounds nuw i8, ptr %8, i64 12
  store i32 %i.bj, ptr %i.cl, align 4
  store i32 %.recomposed, ptr %i.bn, align 4
  %i.cm = load i32, ptr %7, align 8
  store i32 %i.cm, ptr %9, align 4
  %.not93111 = icmp sgt i32 %i.ax, 0
  br i1 %.not93111, label %.lr.ph, label %.critedge97

.lr.ph:                                           ; preds = %bb.w, %bb.x
  %.0112 = phi i32 [ %i.cr, %bb.x ], [ 0, %bb.w ]
  %i.cn = call zeroext i1 @SDL_BlitSurfaceUncheckedScaled_REAL(ptr noundef nonnull %0, ptr noundef nonnull %8, ptr noundef nonnull %4, ptr noundef nonnull %9, i32 noundef %3)
  br i1 %i.cn, label %bb.x, label %.loopexit

bb.x:                                             ; preds = %.lr.ph
  %i.co = load i32, ptr %i.bm, align 4
  %i.cp = load i32, ptr %9, align 4
  %i.cq = add nsw i32 %i.cp, %i.co
  store i32 %i.cq, ptr %9, align 4
  %i.cr = add nuw nsw i32 %.0112, 1               ; 2 uses
  %exitcond119.not = icmp eq i32 %i.cr, %i.ax
  br i1 %exitcond119.not, label %.critedge97, label %.lr.ph, !llvm.loop !15

.critedge97:                                      ; preds = %bb.x, %bb.w
  %i.cs = icmp sgt i32 %.recomposed151, 0
  br i1 %i.cs, label %bb.y, label %bb.z

bb.y:                                             ; preds = %.critedge97
  %i.ct = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 %i.bh, ptr %i.ct, align 4
  store i32 %.recomposed151, ptr %i.bm, align 4
  %i.cu = call zeroext i1 @SDL_BlitSurfaceUncheckedScaled_REAL(ptr noundef nonnull %0, ptr noundef nonnull %8, ptr noundef nonnull %4, ptr noundef nonnull %9, i32 noundef %3)
  br i1 %i.cu, label %bb.z, label %.loopexit

bb.z:                                             ; preds = %.critedge97, %bb.y, %.critedge95
  br label %.loopexit

.loopexit:                                        ; preds = %.critedge.us107, %bb.s, %bb.q, %.lr.ph, %bb.y, %bb.z
  %.4 = phi i1 [ true, %bb.z ], [ false, %bb.y ], [ false, %.lr.ph ], [ false, %bb.s ], [ false, %bb.q ], [ false, %.critedge.us107 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #10
  br label %bb.aa

bb.aa:                                            ; preds = %.loopexit, %bb.o, %bb.l, %bb.k, %bb.g, %bb.e, %SDL_SurfaceValid.exit99.thread, %SDL_SurfaceValid.exit.thread
  %.6 = phi i1 [ %i.m, %bb.e ], [ %i.o, %bb.g ], [ %i.d, %SDL_SurfaceValid.exit.thread ], [ true, %bb.k ], [ true, %bb.l ], [ %i.h, %SDL_SurfaceValid.exit99.thread ], [ %.4, %.loopexit ], [ true, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  ret i1 %.6
}

declare float @SDL_roundf_REAL(float noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define hidden zeroext i1 @SDL_BlitSurface9Grid_REAL(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, float noundef %6, i32 noundef %7, ptr noundef %8, ptr nofree noundef readonly captures(address_is_null) %9) local_unnamed_addr #2 {
bb.a:
  %.sroa.0 = alloca i32, align 4                  ; 4 uses
  %.sroa.9 = alloca i32, align 4                  ; 4 uses
  %.sroa.16 = alloca i32, align 4                 ; 4 uses
  %.sroa.21 = alloca i32, align 4                 ; 4 uses
  %.sroa.0258 = alloca i32, align 4               ; 4 uses
  %.sroa.9259 = alloca i32, align 4               ; 4 uses
  %.sroa.16260 = alloca i32, align 4              ; 4 uses
  %.sroa.21261 = alloca i32, align 4              ; 4 uses
  %10 = alloca %struct.SDL_Rect, align 4          ; 20 uses
  %11 = alloca %struct.SDL_Rect, align 4          ; 20 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.16)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.21)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0258)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9259)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.16260)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.21261)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #10
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %SDL_SurfaceValid.exit.thread, label %SDL_SurfaceValid.exit

SDL_SurfaceValid.exit:                            ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = icmp eq ptr %i.b, @SDL_surface_magic
  %.0141.sroa.gep144 = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.0141.sroa.gep150 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.0141.sroa.gep156 = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.0139.sroa.gep202 = getelementptr inbounds nuw i8, ptr %9, i64 4
  %.0139.sroa.gep208 = getelementptr inbounds nuw i8, ptr %9, i64 8
  %.0139.sroa.gep214 = getelementptr inbounds nuw i8, ptr %9, i64 12
  br i1 %i.c, label %bb.b, label %SDL_SurfaceValid.exit.thread

SDL_SurfaceValid.exit.thread:                     ; preds = %bb.a, %SDL_SurfaceValid.exit
  %i.d = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str, ptr noundef nonnull @.str.18) #10
  br label %bb.r

bb.b:                                             ; preds = %SDL_SurfaceValid.exit
  %.not.i266 = icmp eq ptr %8, null
  br i1 %.not.i266, label %SDL_SurfaceValid.exit267.thread, label %SDL_SurfaceValid.exit267

SDL_SurfaceValid.exit267:                         ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = icmp eq ptr %i.f, @SDL_surface_magic
  br i1 %i.g, label %bb.c, label %SDL_SurfaceValid.exit267.thread

SDL_SurfaceValid.exit267.thread:                  ; preds = %bb.b, %SDL_SurfaceValid.exit267
  %i.h = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str, ptr noundef nonnull @.str.19) #10
  br label %bb.r

bb.c:                                             ; preds = %SDL_SurfaceValid.exit267
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %.sroa.0, align 4
  store i32 0, ptr %.sroa.9, align 4
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load i32, ptr %i.i, align 8
  store i32 %i.j, ptr %.sroa.16, align 4
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.l = load i32, ptr %i.k, align 4
  store i32 %i.l, ptr %.sroa.21, align 4
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0141.sroa.phi188 = phi ptr [ %1, %bb.c ], [ %.sroa.0, %bb.d ] ; 6 uses
  %.0141.sroa.phi191 = phi ptr [ %.0141.sroa.gep144, %bb.c ], [ %.sroa.9, %bb.d ] ; 6 uses
  %.0141.sroa.phi194 = phi ptr [ %.0141.sroa.gep150, %bb.c ], [ %.sroa.16, %bb.d ] ; 4 uses
  %.0141.sroa.phi197 = phi ptr [ %.0141.sroa.gep156, %bb.c ], [ %.sroa.21, %bb.d ] ; 4 uses
  %.not265 = icmp eq ptr %9, null
  br i1 %.not265, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %.sroa.0258, align 4
  store i32 0, ptr %.sroa.9259, align 4
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.n = load i32, ptr %i.m, align 8
  store i32 %i.n, ptr %.sroa.16260, align 4
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 12
  %i.p = load i32, ptr %i.o, align 4
  store i32 %i.p, ptr %.sroa.21261, align 4
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.0139.sroa.phi246 = phi ptr [ %9, %bb.e ], [ %.sroa.0258, %bb.f ] ; 6 uses
  %.0139.sroa.phi249 = phi ptr [ %.0139.sroa.gep202, %bb.e ], [ %.sroa.9259, %bb.f ] ; 6 uses
  %.0139.sroa.phi252 = phi ptr [ %.0139.sroa.gep208, %bb.e ], [ %.sroa.16260, %bb.f ] ; 4 uses
  %.0139.sroa.phi255 = phi ptr [ %.0139.sroa.gep214, %bb.e ], [ %.sroa.21261, %bb.f ] ; 4 uses
  %i.q = fcmp ole float %6, 0.000000e+00
  %i.r = fcmp oeq float %6, 1.000000e+00
  %or.cond = or i1 %i.q, %i.r
  br i1 %or.cond, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = insertelement <4 x i32> poison, i32 %2, i64 0
  %i.t = insertelement <4 x i32> %i.s, i32 %3, i64 1
  %i.u = insertelement <4 x i32> %i.t, i32 %4, i64 2
  %i.v = insertelement <4 x i32> %i.u, i32 %5, i64 3
  %i.w = sitofp <4 x i32> %i.v to <4 x float>
  %i.x = insertelement <4 x float> poison, float %6, i64 0
  %i.y = shufflevector <4 x float> %i.x, <4 x float> poison, <4 x i32> zeroinitializer
  %i.z = fmul <4 x float> %i.y, %i.w              ; 4 uses
  %i.aa = extractelement <4 x float> %i.z, i64 0
  %i.ab = tail call float @SDL_roundf_REAL(float noundef %i.aa) #10
  %i.ac = fptosi float %i.ab to i32
  %i.ad = extractelement <4 x float> %i.z, i64 1
  %i.ae = tail call float @SDL_roundf_REAL(float noundef %i.ad) #10
  %i.af = fptosi float %i.ae to i32
  %i.ag = extractelement <4 x float> %i.z, i64 2
  %i.ah = tail call float @SDL_roundf_REAL(float noundef %i.ag) #10
  %i.ai = fptosi float %i.ah to i32
  %i.aj = extractelement <4 x float> %i.z, i64 3
  %i.ak = tail call float @SDL_roundf_REAL(float noundef %i.aj) #10
  %i.al = fptosi float %i.ak to i32
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %.0138 = phi i32 [ %i.ac, %bb.h ], [ %2, %bb.g ] ; 5 uses
  %.0137 = phi i32 [ %i.af, %bb.h ], [ %3, %bb.g ] ; 5 uses
  %.0136 = phi i32 [ %i.ai, %bb.h ], [ %4, %bb.g ] ; 5 uses
  %.0 = phi i32 [ %i.al, %bb.h ], [ %5, %bb.g ]   ; 5 uses
  %i.am = load i32, ptr %.0141.sroa.phi188, align 4
  store i32 %i.am, ptr %10, align 4
  %i.an = load i32, ptr %.0141.sroa.phi191, align 4
  %i.ao = getelementptr inbounds nuw i8, ptr %10, i64 4 ; 6 uses
  store i32 %i.an, ptr %i.ao, align 4
  %i.ap = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 6 uses
  store i32 %2, ptr %i.ap, align 4
  %i.aq = getelementptr inbounds nuw i8, ptr %10, i64 12 ; 4 uses
  store i32 %4, ptr %i.aq, align 4
  %i.ar = load i32, ptr %.0139.sroa.phi246, align 4
  store i32 %i.ar, ptr %11, align 4
  %i.as = load i32, ptr %.0139.sroa.phi249, align 4
  %i.at = getelementptr inbounds nuw i8, ptr %11, i64 4 ; 6 uses
end_hunk_0
