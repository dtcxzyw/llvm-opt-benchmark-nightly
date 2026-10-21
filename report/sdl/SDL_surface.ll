Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sdl/original/SDL_surface?download=true
inline.NumInlined: 117
inline.NumDeleted: 4
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@SDL_BlitSurface9Grid_REAL:bb.a
  store i32 %2, ptr %i.ap, align 4
  %i.bq = load i32, ptr %.0139.sroa.phi246, align 4
  store i32 %i.bq, ptr %11, align 4
  store i32 %.0138, ptr %i.au, align 4
  %i.br = call zeroext i1 @SDL_BlitSurfaceScaled_REAL(ptr noundef nonnull %0, ptr noundef nonnull %10, ptr noundef nonnull %8, ptr noundef nonnull %11, i32 noundef %7)
  br i1 %i.br, label %bb.m, label %bb.r

bb.m:                                             ; preds = %bb.l
  %i.bs = load i32, ptr %.0141.sroa.phi191, align 4
  %i.bt = add nsw i32 %i.bs, %4
  store i32 %i.bt, ptr %i.ao, align 4
  %i.bu = load i32, ptr %.0141.sroa.phi197, align 4
  %i.bv = add i32 %5, %4                          ; 2 uses
  %i.bw = sub i32 %i.bu, %i.bv
  store i32 %i.bw, ptr %i.aq, align 4
  %i.bx = load i32, ptr %.0139.sroa.phi249, align 4
  %i.by = add nsw i32 %i.bx, %.0136
  store i32 %i.by, ptr %i.at, align 4
  %i.bz = load i32, ptr %.0139.sroa.phi255, align 4
  %i.ca = add i32 %.0, %.0136                     ; 2 uses
  %i.cb = sub i32 %i.bz, %i.ca
  store i32 %i.cb, ptr %i.av, align 4
  %i.cc = call zeroext i1 @SDL_BlitSurfaceScaled_REAL(ptr noundef nonnull %0, ptr noundef nonnull %10, ptr noundef nonnull %8, ptr noundef nonnull %11, i32 noundef %7)
  br i1 %i.cc, label %bb.n, label %bb.r

bb.n:                                             ; preds = %bb.m
  %i.cd = load i32, ptr %.0141.sroa.phi188, align 4
  %i.ce = load i32, ptr %.0141.sroa.phi194, align 4
  %i.cf = sub i32 %i.cd, %3
  %i.cg = add i32 %i.cf, %i.ce
  store i32 %i.cg, ptr %10, align 4
  store i32 %3, ptr %i.ap, align 4
  %i.ch = load i32, ptr %.0139.sroa.phi246, align 4
  %i.ci = load i32, ptr %.0139.sroa.phi252, align 4
  %i.cj = sub i32 %i.ch, %.0137
  %i.ck = add i32 %i.cj, %i.ci
  store i32 %i.ck, ptr %11, align 4
  store i32 %.0137, ptr %i.au, align 4
  %i.cl = call zeroext i1 @SDL_BlitSurfaceScaled_REAL(ptr noundef nonnull %0, ptr noundef nonnull %10, ptr noundef nonnull %8, ptr noundef nonnull %11, i32 noundef %7)
  br i1 %i.cl, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.cm = load i32, ptr %.0141.sroa.phi188, align 4
  %i.cn = add nsw i32 %i.cm, %2
  store i32 %i.cn, ptr %10, align 4
  %i.co = load i32, ptr %.0141.sroa.phi191, align 4
  store i32 %i.co, ptr %i.ao, align 4
  %i.cp = load i32, ptr %.0141.sroa.phi194, align 4
  %i.cq = add i32 %3, %2                          ; 2 uses
  %i.cr = sub i32 %i.cp, %i.cq
  store i32 %i.cr, ptr %i.ap, align 4
  store i32 %4, ptr %i.aq, align 4
  %i.cs = load i32, ptr %.0139.sroa.phi246, align 4
  %i.ct = add nsw i32 %i.cs, %.0138
  store i32 %i.ct, ptr %11, align 4
  %i.cu = load i32, ptr %.0139.sroa.phi249, align 4
  store i32 %i.cu, ptr %i.at, align 4
  %i.cv = load i32, ptr %.0139.sroa.phi252, align 4
  %i.cw = add i32 %.0137, %.0138                  ; 2 uses
  %i.cx = sub i32 %i.cv, %i.cw
  store i32 %i.cx, ptr %i.au, align 4
  store i32 %.0136, ptr %i.av, align 4
  %i.cy = call zeroext i1 @SDL_BlitSurfaceScaled_REAL(ptr noundef nonnull %0, ptr noundef nonnull %10, ptr noundef nonnull %8, ptr noundef nonnull %11, i32 noundef %7)
  br i1 %i.cy, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.cz = load i32, ptr %.0141.sroa.phi191, align 4
  %i.da = load i32, ptr %.0141.sroa.phi197, align 4
  %i.db = sub i32 %i.cz, %5
  %i.dc = add i32 %i.db, %i.da
  store i32 %i.dc, ptr %i.ao, align 4
  %i.dd = load i32, ptr %.0139.sroa.phi249, align 4
  %i.de = load i32, ptr %.0139.sroa.phi255, align 4
  %i.df = sub i32 %i.dd, %.0
  %i.dg = add i32 %i.df, %i.de
  store i32 %i.dg, ptr %i.at, align 4
  store i32 %.0, ptr %i.av, align 4
  %i.dh = call zeroext i1 @SDL_BlitSurfaceScaled_REAL(ptr noundef nonnull %0, ptr noundef nonnull %10, ptr noundef nonnull %8, ptr noundef nonnull %11, i32 noundef %7)
  br i1 %i.dh, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.di = load i32, ptr %.0141.sroa.phi188, align 4
  %i.dj = add nsw i32 %i.di, %2
  store i32 %i.dj, ptr %10, align 4
  %i.dk = load i32, ptr %.0141.sroa.phi191, align 4
  %i.dl = add nsw i32 %i.dk, %4
  store i32 %i.dl, ptr %i.ao, align 4
  %i.dm = load i32, ptr %.0141.sroa.phi194, align 4
  %i.dn = sub i32 %i.dm, %i.cq
  store i32 %i.dn, ptr %i.ap, align 4
  %i.do = load i32, ptr %.0141.sroa.phi197, align 4
  %i.dp = sub i32 %i.do, %i.bv
  store i32 %i.dp, ptr %i.aq, align 4
  %i.dq = load i32, ptr %.0139.sroa.phi246, align 4
  %i.dr = add nsw i32 %i.dq, %.0138
  store i32 %i.dr, ptr %11, align 4
  %i.ds = load i32, ptr %.0139.sroa.phi249, align 4
  %i.dt = add nsw i32 %i.ds, %.0136
  store i32 %i.dt, ptr %i.at, align 4
  %i.du = load i32, ptr %.0139.sroa.phi252, align 4
  %i.dv = sub i32 %i.du, %i.cw
  store i32 %i.dv, ptr %i.au, align 4
  %i.dw = load i32, ptr %.0139.sroa.phi255, align 4
  %i.dx = sub i32 %i.dw, %i.ca
  store i32 %i.dx, ptr %i.av, align 4
  %i.dy = call zeroext i1 @SDL_BlitSurfaceScaled_REAL(ptr noundef nonnull %0, ptr noundef nonnull %10, ptr noundef nonnull %8, ptr noundef nonnull %11, i32 noundef %7)
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %SDL_SurfaceValid.exit267.thread, %SDL_SurfaceValid.exit.thread
  %.0140 = phi i1 [ false, %bb.p ], [ %i.dy, %bb.q ], [ false, %bb.o ], [ false, %bb.n ], [ false, %bb.m ], [ false, %bb.l ], [ false, %bb.k ], [ false, %bb.j ], [ false, %bb.i ], [ %i.d, %SDL_SurfaceValid.exit.thread ], [ %i.h, %SDL_SurfaceValid.exit267.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0258)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9259)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.16260)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.21261)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.16)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.21)
  ret i1 %.0140
}

declare void @SDL_UnRLESurface(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define hidden zeroext i1 @SDL_FlipSurface_REAL(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1) local_unnamed_addr #2 {
bb.a:
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %SDL_SurfaceValid.exit.thread, label %SDL_SurfaceValid.exit

SDL_SurfaceValid.exit:                            ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = icmp eq ptr %i.b, @SDL_surface_magic
  br i1 %i.c, label %bb.b, label %SDL_SurfaceValid.exit.thread

SDL_SurfaceValid.exit.thread:                     ; preds = %bb.a, %SDL_SurfaceValid.exit
  %i.d = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str, ptr noundef nonnull @.str.6) #10
  br label %bb.h

bb.b:                                             ; preds = %SDL_SurfaceValid.exit
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  switch i32 %1, label %bb.g [
    i32 1, label %bb.d
    i32 2, label %bb.e
    i32 3, label %bb.f
  ]

bb.d:                                             ; preds = %bb.c
  %i.g = tail call fastcc zeroext i1 @SDL_FlipSurfaceHorizontal(ptr noundef nonnull %0)
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.h = tail call fastcc zeroext i1 @SDL_FlipSurfaceVertical(ptr noundef nonnull %0)
  br label %bb.h

bb.f:                                             ; preds = %bb.c
  %i.i = tail call fastcc zeroext i1 @SDL_FlipSurfaceHorizontal(ptr noundef nonnull %0)
  %i.j = tail call fastcc zeroext i1 @SDL_FlipSurfaceVertical(ptr noundef nonnull %0)
  %i.k = and i1 %i.i, %i.j
  br label %bb.h

bb.g:                                             ; preds = %bb.c
  %i.l = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str, ptr noundef nonnull @.str.24) #10
  br label %bb.h

bb.h:                                             ; preds = %bb.d, %bb.e, %bb.f, %bb.g, %bb.b, %SDL_SurfaceValid.exit.thread
  %.010 = phi i1 [ true, %bb.b ], [ %i.d, %SDL_SurfaceValid.exit.thread ], [ %i.l, %bb.g ], [ %i.g, %bb.d ], [ %i.h, %bb.e ], [ %i.k, %bb.f ]
  ret i1 %.010
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i1 @SDL_FlipSurfaceHorizontal(ptr nofree noundef readonly captures(none) %0) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 4              ; 3 uses
  %.mask = and i32 %i.b, -268435456
  %.not52 = icmp ne i32 %.mask, 268435456
  %i.c = and i32 %i.b, 63488
  %i.d = icmp eq i32 %i.c, 0
  %or.cond62 = or i1 %.not52, %i.d
  br i1 %or.cond62, label %.critedge, label %bb.b

.critedge:                                        ; preds = %bb.a
  %i.e = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.16) #10
  br label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4              ; 2 uses
  %i.h = icmp slt i32 %i.g, 1
  br i1 %i.h, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8
  %i.k = icmp slt i32 %i.j, 2
  br i1 %i.k, label %bb.g, label %switch.edge

switch.edge:                                      ; preds = %bb.c
  %i.l = and i32 %i.b, 255                        ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.p = load i32, ptr %i.o, align 8              ; 2 uses
  %i.q = sext i32 %i.p to i64                     ; 2 uses
  %i.r = icmp ult i32 %i.p, 128                   ; 2 uses
  br i1 %i.r, label %.thread77, label %bb.d

.thread77:                                        ; preds = %switch.edge
  %i.s = alloca i8, i64 %i.q, align 16
  br label %.lr.ph71

bb.d:                                             ; preds = %switch.edge
  %i.t = tail call noalias ptr @SDL_malloc_REAL(i64 noundef %i.q) #10 ; 3 uses
  %.not56 = icmp eq ptr %i.t, null
  br i1 %.not56, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.pre = load i32, ptr %i.f, align 4             ; 2 uses
  %.not5768 = icmp eq i32 %.pre, 0
  br i1 %.not5768, label %._crit_edge72.thread, label %.lr.ph71

.lr.ph71:                                         ; preds = %.thread77, %bb.e
  %i.u = phi ptr [ %i.s, %.thread77 ], [ %i.t, %bb.e ] ; 7 uses
  %i.v = phi i32 [ %i.g, %.thread77 ], [ %.pre, %bb.e ]
  %i.w = zext nneg i32 %i.l to i64                ; 13 uses
  %i.x = sub nsw i64 0, %i.w                      ; 3 uses
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph71, %._crit_edge
  %.in.a = phi i32 [ %i.v, %.lr.ph71 ], [ %1, %._crit_edge ]
  %.04669 = phi ptr [ %i.n, %.lr.ph71 ], [ %i.ap, %._crit_edge ] ; 6 uses
  %1 = add nsw i32 %.in.a, -1                     ; 2 uses
  %2 = load i32, ptr %i.i, align 8                ; 4 uses
  %.off = add i32 %2, 1
  %.not5864 = icmp ult i32 %.off, 3
  br i1 %.not5864, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.f
  %i.y = sdiv i32 %2, 2                           ; 3 uses
  %i.z = add nsw i32 %2, -1
  %i.aa = mul nsw i32 %i.z, %i.l
  %i.ab = sext i32 %i.aa to i64
  %i.ac = getelementptr inbounds i8, ptr %.04669, i64 %i.ab ; 4 uses
  %xtraiter = and i32 %i.y, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.ad = add nsw i32 %i.y, -1
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.u, ptr align 1 %.04669, i64 %i.w, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.04669, ptr align 1 %i.ac, i64 %i.w, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ac, ptr nonnull align 1 %i.u, i64 %i.w, i1 false)
  %i.ae = getelementptr inbounds nuw i8, ptr %.04669, i64 %i.w
  %i.af = getelementptr inbounds i8, ptr %i.ac, i64 %i.x
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.067.unr = phi i32 [ %i.y, %.lr.ph.preheader ], [ %i.ad, %.lr.ph.prol ]
  %.04466.unr = phi ptr [ %i.ac, %.lr.ph.preheader ], [ %i.af, %.lr.ph.prol ]
  %.04565.unr = phi ptr [ %.04669, %.lr.ph.preheader ], [ %i.ae, %.lr.ph.prol ]
  %i.ag = and i32 %2, -2
  %i.ah = icmp eq i32 %i.ag, 2
  br i1 %i.ah, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.067 = phi i32 [ %i.ak, %.lr.ph ], [ %.067.unr, %.lr.ph.prol.loopexit ]
  %.04466 = phi ptr [ %i.am, %.lr.ph ], [ %.04466.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %.04565 = phi ptr [ %i.al, %.lr.ph ], [ %.04565.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.u, ptr align 1 %.04565, i64 %i.w, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.04565, ptr align 1 %.04466, i64 %i.w, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.04466, ptr nonnull align 1 %i.u, i64 %i.w, i1 false)
  %i.ai = getelementptr inbounds nuw i8, ptr %.04565, i64 %i.w ; 3 uses
  %i.aj = getelementptr inbounds i8, ptr %.04466, i64 %i.x ; 3 uses
  %i.ak = add nsw i32 %.067, -2                   ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.u, ptr align 1 %i.ai, i64 %i.w, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ai, ptr align 1 %i.aj, i64 %i.w, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aj, ptr nonnull align 1 %i.u, i64 %i.w, i1 false)
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.w
  %i.am = getelementptr inbounds i8, ptr %i.aj, i64 %i.x
  %.not58.1 = icmp eq i32 %i.ak, 0
  br i1 %.not58.1, label %._crit_edge, label %.lr.ph, !llvm.loop !19

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bb.f
  %i.an = load i32, ptr %i.o, align 8
  %i.ao = sext i32 %i.an to i64
  %i.ap = getelementptr inbounds i8, ptr %.04669, i64 %i.ao
  %.not57 = icmp eq i32 %1, 0
  br i1 %.not57, label %._crit_edge72, label %bb.f, !llvm.loop !20

._crit_edge72:                                    ; preds = %._crit_edge
  br i1 %i.r, label %bb.g, label %._crit_edge72.thread

._crit_edge72.thread:                             ; preds = %bb.e, %._crit_edge72
  %i.aq = phi ptr [ %i.u, %._crit_edge72 ], [ %i.t, %bb.e ]
  call void @SDL_free_REAL(ptr noundef nonnull %i.aq) #10
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge72.thread, %._crit_edge72, %bb.d, %bb.c, %bb.b, %.critedge
  %.047 = phi i1 [ %i.e, %.critedge ], [ true, %bb.c ], [ true, %bb.b ], [ false, %bb.d ], [ true, %._crit_edge72 ], [ true, %._crit_edge72.thread ]
  ret i1 %.047
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef zeroext i1 @SDL_FlipSurfaceVertical(ptr nofree noundef readonly captures(none) %0) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4              ; 3 uses
  %i.c = icmp slt i32 %i.b, 2
  br i1 %i.c, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = add nsw i32 %i.b, -1
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.h = load i32, ptr %i.g, align 8              ; 3 uses
  %i.i = mul nsw i32 %i.h, %i.f
  %i.j = sext i32 %i.i to i64
  %i.k = getelementptr inbounds i8, ptr %i.e, i64 %i.j
  %i.l = sext i32 %i.h to i64                     ; 2 uses
  %i.m = icmp ult i32 %i.h, 128                   ; 2 uses
  br i1 %i.m, label %.thread, label %bb.c

.thread:                                          ; preds = %bb.b
  %i.n = alloca i8, i64 %i.l, align 16
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.o = tail call noalias ptr @SDL_malloc_REAL(i64 noundef %i.l) #10 ; 2 uses
  %.not = icmp eq ptr %i.o, null
  br i1 %.not, label %bb.f, label %._crit_edge39

._crit_edge39:                                    ; preds = %bb.c
  %.pre = load i32, ptr %i.a, align 4
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge39, %.thread
  %i.p = phi i32 [ %i.b, %.thread ], [ %.pre, %._crit_edge39 ] ; 2 uses
  %i.q = phi ptr [ %i.n, %.thread ], [ %i.o, %._crit_edge39 ] ; 3 uses
  %.off = add i32 %i.p, 1
  %.not3335 = icmp ult i32 %.off, 3
  br i1 %.not3335, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.d
  %i.r = sdiv i32 %i.p, 2
  %.pre40 = load i32, ptr %i.g, align 8
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %i.s = phi i32 [ %i.x, %.lr.ph ], [ %.pre40, %.lr.ph.preheader ]
  %.038 = phi i32 [ %i.t, %.lr.ph ], [ %i.r, %.lr.ph.preheader ]
  %.02737 = phi ptr [ %i.ab, %.lr.ph ], [ %i.k, %.lr.ph.preheader ] ; 3 uses
  %.02836 = phi ptr [ %i.z, %.lr.ph ], [ %i.e, %.lr.ph.preheader ] ; 3 uses
  %i.t = add nsw i32 %.038, -1                    ; 2 uses
  %i.u = sext i32 %i.s to i64                     ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.q, ptr align 1 %.02836, i64 %i.u, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.02836, ptr align 1 %.02737, i64 %i.u, i1 false)
  %i.v = load i32, ptr %i.g, align 8
  %i.w = sext i32 %i.v to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.02737, ptr nonnull align 1 %i.q, i64 %i.w, i1 false)
  %i.x = load i32, ptr %i.g, align 8              ; 2 uses
  %i.y = sext i32 %i.x to i64                     ; 2 uses
  %i.z = getelementptr inbounds i8, ptr %.02836, i64 %i.y
  %i.aa = sub nsw i64 0, %i.y
  %i.ab = getelementptr inbounds i8, ptr %.02737, i64 %i.aa
  %.not33 = icmp eq i32 %i.t, 0
  br i1 %.not33, label %._crit_edge, label %.lr.ph, !llvm.loop !21

._crit_edge:                                      ; preds = %.lr.ph, %bb.d
  br i1 %i.m, label %bb.f, label %bb.e

bb.e:                                             ; preds = %._crit_edge
  call void @SDL_free_REAL(ptr noundef nonnull %i.q) #10
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge, %bb.c, %bb.a
  %.029 = phi i1 [ true, %bb.a ], [ false, %bb.c ], [ true, %._crit_edge ], [ true, %bb.e ]
  ret i1 %.029
}

; Function Attrs: nounwind uwtable
define hidden ptr @SDL_ConvertSurfaceAndColorspace_REAL(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call fastcc ptr @SDL_ConvertSurfaceRectAndColorspace(ptr noundef %0, ptr noundef null, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @SDL_ConvertSurfaceRectAndColorspace(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5) unnamed_addr #2 {
bb.a:
  %6 = alloca %struct.SDL_Rect, align 4           ; 6 uses
  %7 = alloca %struct.SDL_Rect, align 4           ; 8 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i32, align 4                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #10
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %SDL_SurfaceValid.exit.thread, label %SDL_SurfaceValid.exit

SDL_SurfaceValid.exit:                            ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = icmp eq ptr %i.e, @SDL_surface_magic
  %.0303.sroa.gep = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.0303.sroa.gep304 = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  %.0303.sroa.gep306 = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.0303.sroa.gep307 = getelementptr inbounds nuw i8, ptr %7, i64 12
  br i1 %i.f, label %bb.b, label %SDL_SurfaceValid.exit.thread

SDL_SurfaceValid.exit.thread:                     ; preds = %bb.a, %SDL_SurfaceValid.exit
  %i.g = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str, ptr noundef nonnull @.str.6) #10 ; 0 uses
  br label %.thread462

bb.b:                                             ; preds = %SDL_SurfaceValid.exit
  %i.h = icmp eq i32 %2, 0
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str, ptr noundef nonnull @.str.3) #10 ; 0 uses
  br label %.thread462

bb.d:                                             ; preds = %bb.b
  store i32 0, ptr %7, align 4
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i32 0, ptr %i.j, align 4
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.m = load <2 x i32>, ptr %i.k, align 8
  store <2 x i32> %i.m, ptr %.0303.sroa.gep304, align 4
  %.not344 = icmp eq ptr %1, null
  br i1 %.not344, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = load <2 x i32>, ptr %.0303.sroa.gep, align 4
  store <2 x i32> %i.n, ptr %.0303.sroa.gep304, align 4
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.0303.sroa.phi308 = phi ptr [ %.0303.sroa.gep, %bb.e ], [ %.0303.sroa.gep304, %bb.d ] ; 2 uses
  %.0303.sroa.phi311 = phi ptr [ %.0303.sroa.gep306, %bb.e ], [ %.0303.sroa.gep307, %bb.d ] ; 2 uses
  %.0303 = phi ptr [ %1, %bb.e ], [ %7, %bb.d ]
  %.not345 = icmp eq ptr %3, null
  br i1 %.not345, label %bb.k, label %.preheader466

.preheader466:                                    ; preds = %bb.f
  %i.o = load i32, ptr %3, align 8                ; 3 uses
  %i.p = icmp sgt i32 %i.o, 0
  br i1 %i.p, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader466
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.r = load ptr, ptr %i.q, align 8
  %wide.trip.count = zext nneg i32 %i.o to i64
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.j
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.j ] ; 3 uses
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv ; 3 uses
  %i.t = load i8, ptr %i.s, align 1
  %.not348 = icmp eq i8 %i.t, -1
  br i1 %.not348, label %bb.h, label %._crit_edge.loopexit

bb.h:                                             ; preds = %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  %i.v = load i8, ptr %i.u, align 1
  %.not349 = icmp eq i8 %i.v, -1
  br i1 %.not349, label %bb.i, label %._crit_edge.loopexit

bb.i:                                             ; preds = %bb.h
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 2
  %i.x = load i8, ptr %i.w, align 1
  %.not350 = icmp eq i8 %i.x, -1
  br i1 %.not350, label %bb.j, label %._crit_edge.loopexit

bb.j:                                             ; preds = %bb.i
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.thread, label %bb.g, !llvm.loop !22

._crit_edge.loopexit:                             ; preds = %bb.g, %bb.h, %bb.i
  %i.y = trunc nuw nsw i64 %indvars.iv to i32
  br label %._crit_edge

end_hunk_0
begin_hunk_1_@SDL_LoadSurface_IO_REAL:bb.a
bb.g:                                             ; preds = %bb.e
  br i1 %1, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.f = tail call zeroext i1 @SDL_CloseIO_REAL(ptr noundef nonnull %0) #10 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.g = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.30) #10 ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.f, %bb.d, %bb.b
  %.0 = phi ptr [ %i.c, %bb.d ], [ %i.e, %bb.f ], [ null, %bb.i ], [ null, %bb.b ]
  ret ptr %.0
}

declare zeroext i1 @SDL_IsBMP(ptr noundef) local_unnamed_addr #4

declare ptr @SDL_LoadBMP_IO_REAL(ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

declare zeroext i1 @SDL_IsPNG(ptr noundef) local_unnamed_addr #4

declare ptr @SDL_LoadPNG_IO_REAL(ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

declare zeroext i1 @SDL_CloseIO_REAL(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define hidden ptr @SDL_LoadSurface_REAL(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call ptr @SDL_IOFromFile_REAL(ptr noundef %0, ptr noundef nonnull @.str.31) #10 ; 6 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %SDL_LoadSurface_IO_REAL.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call zeroext i1 @SDL_IsBMP(ptr noundef nonnull %i.a) #10
  br i1 %i.b, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = tail call ptr @SDL_LoadBMP_IO_REAL(ptr noundef nonnull %i.a, i1 noundef zeroext true) #10
  br label %SDL_LoadSurface_IO_REAL.exit

bb.d:                                             ; preds = %bb.b
  %i.d = tail call zeroext i1 @SDL_IsPNG(ptr noundef nonnull %i.a) #10
  br i1 %i.d, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.e = tail call ptr @SDL_LoadPNG_IO_REAL(ptr noundef nonnull %i.a, i1 noundef zeroext true) #10
  br label %SDL_LoadSurface_IO_REAL.exit

bb.f:                                             ; preds = %bb.d
  %i.f = tail call zeroext i1 @SDL_CloseIO_REAL(ptr noundef nonnull %i.a) #10 ; 0 uses
  %i.g = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.30) #10 ; 0 uses
  br label %SDL_LoadSurface_IO_REAL.exit

SDL_LoadSurface_IO_REAL.exit:                     ; preds = %bb.f, %bb.e, %bb.c, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ %i.c, %bb.c ], [ %i.e, %bb.e ], [ null, %bb.f ]
  ret ptr %.0
}

declare ptr @SDL_IOFromFile_REAL(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #7

declare ptr @SDL_GetPixelFormatDetails_REAL(i32 noundef) local_unnamed_addr #4

declare zeroext i1 @SDL_CopyProperties_REAL(i32 noundef, i32 noundef) local_unnamed_addr #4

declare void @SDL_DitherPalette(ptr noundef) local_unnamed_addr #4

declare void @SDL_DetectPalette(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @SDL_memcmp_REAL(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc void @SDL_ConvertColorkeyToAlpha(ptr noundef nonnull %0) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = icmp eq ptr %i.b, @SDL_surface_magic
  br i1 %i.c, label %bb.b, label %SDL_SetSurfaceBlendMode_REAL.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 5 uses
  %i.e = load i32, ptr %i.d, align 8
  %i.f = and i32 %i.e, 1024
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %SDL_SetSurfaceBlendMode_REAL.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.h = load i32, ptr %i.g, align 4              ; 6 uses
  %.not122 = icmp eq i32 %i.h, 0
  %.mask = and i32 %i.h, -268435456
  %.not123 = icmp eq i32 %.mask, 268435456
  %or.cond = or i1 %.not122, %.not123
  br i1 %or.cond, label %bb.d, label %SDL_SetSurfaceBlendMode_REAL.exit

bb.d:                                             ; preds = %bb.c
  %i.i = lshr i32 %i.h, 24
  %i.j = and i32 %i.i, 15                         ; 2 uses
  %.off = add nsw i32 %i.j, -4
  %switch = icmp ult i32 %.off, 3
  br i1 %switch, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.k = lshr i32 %i.h, 20
  %i.l = and i32 %i.k, 15
  switch i32 %i.l, label %SDL_SetSurfaceBlendMode_REAL.exit [
    i32 3, label %bb.h
    i32 4, label %bb.h
    i32 7, label %bb.h
    i32 8, label %bb.h
  ]

bb.f:                                             ; preds = %bb.d
  %.off136 = add nsw i32 %i.j, -7
  %switch137 = icmp ult i32 %.off136, 5
  br i1 %switch137, label %bb.g, label %SDL_SetSurfaceBlendMode_REAL.exit

bb.g:                                             ; preds = %bb.f
  %i.m = lshr i32 %i.h, 20
  %i.n = and i32 %i.m, 15
  switch i32 %i.n, label %SDL_SetSurfaceBlendMode_REAL.exit [
    i32 3, label %bb.h
    i32 2, label %bb.h
    i32 6, label %bb.h
    i32 5, label %bb.h
  ]

bb.h:                                             ; preds = %bb.g, %bb.g, %bb.g, %bb.g, %bb.e, %bb.e, %bb.e, %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 5 uses
  %i.p = load i32, ptr %i.o, align 8              ; 2 uses
  %.not.i = icmp eq i32 %i.p, 0
  br i1 %.not.i, label %bb.i, label %SDL_LockSurface_REAL.exit

bb.i:                                             ; preds = %bb.h
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.r = load i32, ptr %i.q, align 8
  %i.s = and i32 %i.r, 4
  %.not8.i = icmp eq i32 %i.s, 0
  br i1 %.not8.i, label %SDL_LockSurface_REAL.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @SDL_UnRLESurface(ptr noundef nonnull %0) #10
  %.pre.i = load i32, ptr %i.o, align 8
  br label %SDL_LockSurface_REAL.exit

SDL_LockSurface_REAL.exit:                        ; preds = %bb.h, %bb.i, %bb.j
  %i.t = phi i32 [ 0, %bb.i ], [ %.pre.i, %bb.j ], [ %i.p, %bb.h ]
  %i.u = add nsw i32 %i.t, 1
  store i32 %i.u, ptr %i.o, align 8
  %i.v = load i32, ptr %0, align 8
  %i.w = or i32 %i.v, 6
  store i32 %i.w, ptr %0, align 8
  %trunc = trunc i32 %i.h to i8
  switch i8 %trunc, label %.loopexit [
    i8 2, label %bb.k
    i8 4, label %bb.n
  ]

bb.k:                                             ; preds = %SDL_LockSurface_REAL.exit
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 20
  %i.aa = load i32, ptr %i.z, align 4
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 268
  %i.ac = load i32, ptr %i.ab, align 4
  %i.ad = and i32 %i.aa, 65535
  %i.ae = xor i32 %i.ad, 65535                    ; 4 uses
  %i.af = and i32 %i.ae, %i.ac                    ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ah = load i32, ptr %i.ag, align 4            ; 2 uses
  %.not132161 = icmp eq i32 %i.ah, 0
  br i1 %.not132161, label %.loopexit, label %.lr.ph164

.lr.ph164:                                        ; preds = %bb.k
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ak = load i32, ptr %i.ai, align 8            ; 2 uses
  %i.al = icmp eq i32 %i.ak, 0
  br i1 %i.al, label %.loopexit, label %.lr.ph164.split.preheader

.lr.ph164.split.preheader:                        ; preds = %.lr.ph164
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = trunc nuw i32 %i.af to i16              ; 21 uses
  %broadcast.splatinsert32 = insertelement <8 x i32> poison, i32 %i.ae, i64 0
  %broadcast.splat33 = shufflevector <8 x i32> %broadcast.splatinsert32, <8 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert34 = insertelement <8 x i32> poison, i32 %i.af, i64 0
  %broadcast.splat35 = shufflevector <8 x i32> %broadcast.splatinsert34, <8 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert94 = insertelement <4 x i32> poison, i32 %i.ae, i64 0
  %broadcast.splat95 = shufflevector <4 x i32> %broadcast.splatinsert94, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert96 = insertelement <4 x i32> poison, i32 %i.af, i64 0
  %broadcast.splat97 = shufflevector <4 x i32> %broadcast.splatinsert96, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %.lr.ph164.split

.lr.ph164.splitthread-pre-split:                  ; preds = %._crit_edge160
  %1 = load i32, ptr %i.aj, align 8
  %2 = sdiv i32 %1, 2
  %3 = sext i32 %2 to i64
  %4 = getelementptr inbounds [2 x i8], ptr %.0102162, i64 %3
  %.pr = load i32, ptr %i.ai, align 8
  br label %.lr.ph164.split

.lr.ph164.split:                                  ; preds = %.lr.ph164.splitthread-pre-split, %.lr.ph164.split.preheader
  %i.ap = phi i32 [ %.pr, %.lr.ph164.splitthread-pre-split ], [ %i.ak, %.lr.ph164.split.preheader ] ; 7 uses
  %.in178 = phi i32 [ %i.aq, %.lr.ph164.splitthread-pre-split ], [ %i.ah, %.lr.ph164.split.preheader ]
  %.0102162 = phi ptr [ %4, %.lr.ph164.splitthread-pre-split ], [ %i.an, %.lr.ph164.split.preheader ] ; 24 uses
  %i.aq = add nsw i32 %.in178, -1                 ; 2 uses
  %.not133156 = icmp eq i32 %i.ap, 0
  br i1 %.not133156, label %._crit_edge160, label %iter.check

iter.check:                                       ; preds = %.lr.ph164.split
  %i.ar = zext i32 %i.ap to i64                   ; 5 uses
  %min.iters.check28 = icmp ult i32 %i.ap, 4
  br i1 %min.iters.check28, label %.lr.ph159.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check29 = icmp ult i32 %i.ap, 16
  br i1 %min.iters.check29, label %vec.epilog.ph, label %vector.ph30

vector.ph30:                                      ; preds = %vector.main.loop.iter.check
  %i.as = and i64 %i.ar, 12
  %n.vec31 = and i64 %i.ar, 4294967280            ; 5 uses
  %i.at = trunc nuw i64 %n.vec31 to i32
  %i.au = sub i32 %i.ap, %i.at
  %i.av = shl nuw nsw i64 %n.vec31, 1
  %i.aw = getelementptr i8, ptr %.0102162, i64 %i.av
  br label %vector.body36

vector.body36:                                    ; preds = %vector.ph30, %pred.store.continue87
  %index37 = phi i64 [ 0, %vector.ph30 ], [ %index.next88, %pred.store.continue87 ] ; 2 uses
  %i.ax = shl i64 %index37, 1                     ; 16 uses
  %next.gep38 = getelementptr i8, ptr %.0102162, i64 %i.ax ; 3 uses
  %i.ay = getelementptr i8, ptr %.0102162, i64 %i.ax
  %next.gep39 = getelementptr i8, ptr %i.ay, i64 2
  %i.az = getelementptr i8, ptr %.0102162, i64 %i.ax
  %next.gep40 = getelementptr i8, ptr %i.az, i64 4
  %i.ba = getelementptr i8, ptr %.0102162, i64 %i.ax
  %next.gep41 = getelementptr i8, ptr %i.ba, i64 6
  %i.bb = getelementptr i8, ptr %.0102162, i64 %i.ax
  %next.gep42 = getelementptr i8, ptr %i.bb, i64 8
  %i.bc = getelementptr i8, ptr %.0102162, i64 %i.ax
  %next.gep43 = getelementptr i8, ptr %i.bc, i64 10
  %i.bd = getelementptr i8, ptr %.0102162, i64 %i.ax
  %next.gep44 = getelementptr i8, ptr %i.bd, i64 12
  %i.be = getelementptr i8, ptr %.0102162, i64 %i.ax
  %next.gep45 = getelementptr i8, ptr %i.be, i64 14
  %i.bf = getelementptr i8, ptr %.0102162, i64 %i.ax
  %next.gep46 = getelementptr i8, ptr %i.bf, i64 16
  %i.bg = getelementptr i8, ptr %.0102162, i64 %i.ax
  %next.gep47 = getelementptr i8, ptr %i.bg, i64 18
  %i.bh = getelementptr i8, ptr %.0102162, i64 %i.ax
  %next.gep48 = getelementptr i8, ptr %i.bh, i64 20
  %i.bi = getelementptr i8, ptr %.0102162, i64 %i.ax
  %next.gep49 = getelementptr i8, ptr %i.bi, i64 22
  %i.bj = getelementptr i8, ptr %.0102162, i64 %i.ax
  %next.gep50 = getelementptr i8, ptr %i.bj, i64 24
  %i.bk = getelementptr i8, ptr %.0102162, i64 %i.ax
  %next.gep51 = getelementptr i8, ptr %i.bk, i64 26
  %i.bl = getelementptr i8, ptr %.0102162, i64 %i.ax
  %next.gep52 = getelementptr i8, ptr %i.bl, i64 28
  %i.bm = getelementptr i8, ptr %.0102162, i64 %i.ax
  %next.gep53 = getelementptr i8, ptr %i.bm, i64 30
  %i.bn = getelementptr i8, ptr %next.gep38, i64 16
  %wide.load54 = load <8 x i16>, ptr %next.gep38, align 2
  %wide.load55 = load <8 x i16>, ptr %i.bn, align 2
  %i.bo = zext <8 x i16> %wide.load54 to <8 x i32>
  %i.bp = zext <8 x i16> %wide.load55 to <8 x i32>
  %i.bq = and <8 x i32> %broadcast.splat33, %i.bo
  %i.br = and <8 x i32> %broadcast.splat33, %i.bp
  %i.bs = icmp eq <8 x i32> %i.bq, %broadcast.splat35 ; 8 uses
  %i.bt = icmp eq <8 x i32> %i.br, %broadcast.splat35 ; 8 uses
  %i.bu = extractelement <8 x i1> %i.bs, i64 0
  br i1 %i.bu, label %pred.store.if56, label %pred.store.continue57

pred.store.if56:                                  ; preds = %vector.body36
  store i16 %i.ao, ptr %next.gep38, align 2
  br label %pred.store.continue57

pred.store.continue57:                            ; preds = %pred.store.if56, %vector.body36
  %i.bv = extractelement <8 x i1> %i.bs, i64 1
  br i1 %i.bv, label %pred.store.if58, label %pred.store.continue59

pred.store.if58:                                  ; preds = %pred.store.continue57
  store i16 %i.ao, ptr %next.gep39, align 2
  br label %pred.store.continue59

pred.store.continue59:                            ; preds = %pred.store.if58, %pred.store.continue57
  %i.bw = extractelement <8 x i1> %i.bs, i64 2
  br i1 %i.bw, label %pred.store.if60, label %pred.store.continue61

pred.store.if60:                                  ; preds = %pred.store.continue59
  store i16 %i.ao, ptr %next.gep40, align 2
  br label %pred.store.continue61

pred.store.continue61:                            ; preds = %pred.store.if60, %pred.store.continue59
  %i.bx = extractelement <8 x i1> %i.bs, i64 3
  br i1 %i.bx, label %pred.store.if62, label %pred.store.continue63

pred.store.if62:                                  ; preds = %pred.store.continue61
  store i16 %i.ao, ptr %next.gep41, align 2
  br label %pred.store.continue63

pred.store.continue63:                            ; preds = %pred.store.if62, %pred.store.continue61
  %i.by = extractelement <8 x i1> %i.bs, i64 4
  br i1 %i.by, label %pred.store.if64, label %pred.store.continue65

pred.store.if64:                                  ; preds = %pred.store.continue63
  store i16 %i.ao, ptr %next.gep42, align 2
  br label %pred.store.continue65

pred.store.continue65:                            ; preds = %pred.store.if64, %pred.store.continue63
  %i.bz = extractelement <8 x i1> %i.bs, i64 5
  br i1 %i.bz, label %pred.store.if66, label %pred.store.continue67

pred.store.if66:                                  ; preds = %pred.store.continue65
  store i16 %i.ao, ptr %next.gep43, align 2
  br label %pred.store.continue67

pred.store.continue67:                            ; preds = %pred.store.if66, %pred.store.continue65
  %i.ca = extractelement <8 x i1> %i.bs, i64 6
  br i1 %i.ca, label %pred.store.if68, label %pred.store.continue69

pred.store.if68:                                  ; preds = %pred.store.continue67
  store i16 %i.ao, ptr %next.gep44, align 2
  br label %pred.store.continue69

pred.store.continue69:                            ; preds = %pred.store.if68, %pred.store.continue67
  %i.cb = extractelement <8 x i1> %i.bs, i64 7
  br i1 %i.cb, label %pred.store.if70, label %pred.store.continue71

pred.store.if70:                                  ; preds = %pred.store.continue69
  store i16 %i.ao, ptr %next.gep45, align 2
  br label %pred.store.continue71

pred.store.continue71:                            ; preds = %pred.store.if70, %pred.store.continue69
  %i.cc = extractelement <8 x i1> %i.bt, i64 0
  br i1 %i.cc, label %pred.store.if72, label %pred.store.continue73

pred.store.if72:                                  ; preds = %pred.store.continue71
  store i16 %i.ao, ptr %next.gep46, align 2
  br label %pred.store.continue73

pred.store.continue73:                            ; preds = %pred.store.if72, %pred.store.continue71
  %i.cd = extractelement <8 x i1> %i.bt, i64 1
  br i1 %i.cd, label %pred.store.if74, label %pred.store.continue75

pred.store.if74:                                  ; preds = %pred.store.continue73
  store i16 %i.ao, ptr %next.gep47, align 2
  br label %pred.store.continue75

pred.store.continue75:                            ; preds = %pred.store.if74, %pred.store.continue73
  %i.ce = extractelement <8 x i1> %i.bt, i64 2
  br i1 %i.ce, label %pred.store.if76, label %pred.store.continue77

pred.store.if76:                                  ; preds = %pred.store.continue75
  store i16 %i.ao, ptr %next.gep48, align 2
  br label %pred.store.continue77

pred.store.continue77:                            ; preds = %pred.store.if76, %pred.store.continue75
  %i.cf = extractelement <8 x i1> %i.bt, i64 3
  br i1 %i.cf, label %pred.store.if78, label %pred.store.continue79

pred.store.if78:                                  ; preds = %pred.store.continue77
  store i16 %i.ao, ptr %next.gep49, align 2
  br label %pred.store.continue79

pred.store.continue79:                            ; preds = %pred.store.if78, %pred.store.continue77
  %i.cg = extractelement <8 x i1> %i.bt, i64 4
  br i1 %i.cg, label %pred.store.if80, label %pred.store.continue81

pred.store.if80:                                  ; preds = %pred.store.continue79
  store i16 %i.ao, ptr %next.gep50, align 2
  br label %pred.store.continue81

pred.store.continue81:                            ; preds = %pred.store.if80, %pred.store.continue79
  %i.ch = extractelement <8 x i1> %i.bt, i64 5
  br i1 %i.ch, label %pred.store.if82, label %pred.store.continue83

pred.store.if82:                                  ; preds = %pred.store.continue81
  store i16 %i.ao, ptr %next.gep51, align 2
  br label %pred.store.continue83

pred.store.continue83:                            ; preds = %pred.store.if82, %pred.store.continue81
  %i.ci = extractelement <8 x i1> %i.bt, i64 6
  br i1 %i.ci, label %pred.store.if84, label %pred.store.continue85

pred.store.if84:                                  ; preds = %pred.store.continue83
  store i16 %i.ao, ptr %next.gep52, align 2
  br label %pred.store.continue85

pred.store.continue85:                            ; preds = %pred.store.if84, %pred.store.continue83
  %i.cj = extractelement <8 x i1> %i.bt, i64 7
  br i1 %i.cj, label %pred.store.if86, label %pred.store.continue87

pred.store.if86:                                  ; preds = %pred.store.continue85
  store i16 %i.ao, ptr %next.gep53, align 2
  br label %pred.store.continue87

pred.store.continue87:                            ; preds = %pred.store.if86, %pred.store.continue85
  %index.next88 = add nuw i64 %index37, 16        ; 2 uses
  %i.ck = icmp eq i64 %index.next88, %n.vec31
  br i1 %i.ck, label %middle.block89, label %vector.body36, !llvm.loop !51

middle.block89:                                   ; preds = %pred.store.continue87
  %cmp.n90 = icmp eq i64 %n.vec31, %i.ar
  br i1 %cmp.n90, label %._crit_edge160, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block89
  %min.epilog.iters.check = icmp eq i64 %i.as, 0
  br i1 %min.epilog.iters.check, label %.lr.ph159.preheader, label %vec.epilog.ph, !prof !58

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec31, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec93 = and i64 %i.ar, 4294967292            ; 4 uses
  %i.cl = trunc nuw i64 %n.vec93 to i32
  %i.cm = sub i32 %i.ap, %i.cl
  %i.cn = shl nuw nsw i64 %n.vec93, 1
  %i.co = getelementptr i8, ptr %.0102162, i64 %i.cn
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %pred.store.continue111, %vec.epilog.ph
  %index98 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next112, %pred.store.continue111 ] ; 2 uses
  %i.cp = shl i64 %index98, 1                     ; 4 uses
  %next.gep99 = getelementptr i8, ptr %.0102162, i64 %i.cp ; 2 uses
  %i.cq = getelementptr i8, ptr %.0102162, i64 %i.cp
  %next.gep100 = getelementptr i8, ptr %i.cq, i64 2
  %i.cr = getelementptr i8, ptr %.0102162, i64 %i.cp
  %next.gep101 = getelementptr i8, ptr %i.cr, i64 4
  %i.cs = getelementptr i8, ptr %.0102162, i64 %i.cp
  %next.gep102 = getelementptr i8, ptr %i.cs, i64 6
  %wide.load103 = load <4 x i16>, ptr %next.gep99, align 2
  %i.ct = zext <4 x i16> %wide.load103 to <4 x i32>
  %i.cu = and <4 x i32> %broadcast.splat95, %i.ct
  %i.cv = icmp eq <4 x i32> %i.cu, %broadcast.splat97 ; 4 uses
  %i.cw = extractelement <4 x i1> %i.cv, i64 0
  br i1 %i.cw, label %pred.store.if104, label %pred.store.continue105

pred.store.if104:                                 ; preds = %vec.epilog.vector.body
  store i16 %i.ao, ptr %next.gep99, align 2
  br label %pred.store.continue105

pred.store.continue105:                           ; preds = %pred.store.if104, %vec.epilog.vector.body
  %i.cx = extractelement <4 x i1> %i.cv, i64 1
  br i1 %i.cx, label %pred.store.if106, label %pred.store.continue107

pred.store.if106:                                 ; preds = %pred.store.continue105
  store i16 %i.ao, ptr %next.gep100, align 2
  br label %pred.store.continue107

pred.store.continue107:                           ; preds = %pred.store.if106, %pred.store.continue105
  %i.cy = extractelement <4 x i1> %i.cv, i64 2
  br i1 %i.cy, label %pred.store.if108, label %pred.store.continue109

pred.store.if108:                                 ; preds = %pred.store.continue107
  store i16 %i.ao, ptr %next.gep101, align 2
  br label %pred.store.continue109

pred.store.continue109:                           ; preds = %pred.store.if108, %pred.store.continue107
  %i.cz = extractelement <4 x i1> %i.cv, i64 3
  br i1 %i.cz, label %pred.store.if110, label %pred.store.continue111

pred.store.if110:                                 ; preds = %pred.store.continue109
  store i16 %i.ao, ptr %next.gep102, align 2
  br label %pred.store.continue111

pred.store.continue111:                           ; preds = %pred.store.if110, %pred.store.continue109
  %index.next112 = add nuw i64 %index98, 4        ; 2 uses
  %i.da = icmp eq i64 %index.next112, %n.vec93
  br i1 %i.da, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !52

vec.epilog.middle.block:                          ; preds = %pred.store.continue111
  %cmp.n113 = icmp eq i64 %n.vec93, %i.ar
  br i1 %cmp.n113, label %._crit_edge160, label %.lr.ph159.preheader

.lr.ph159.preheader:                              ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.in165.ph = phi i32 [ %i.ap, %iter.check ], [ %i.au, %vec.epilog.iter.check ], [ %i.cm, %vec.epilog.middle.block ]
  %.0100157.ph = phi ptr [ %.0102162, %iter.check ], [ %i.aw, %vec.epilog.iter.check ], [ %i.co, %vec.epilog.middle.block ]
  br label %.lr.ph159

.lr.ph159:                                        ; preds = %.lr.ph159.preheader, %bb.m
  %.in165 = phi i32 [ %i.db, %bb.m ], [ %.in165.ph, %.lr.ph159.preheader ]
  %.0100157 = phi ptr [ %i.dg, %bb.m ], [ %.0100157.ph, %.lr.ph159.preheader ] ; 3 uses
  %i.db = add nsw i32 %.in165, -1                 ; 2 uses
  %i.dc = load i16, ptr %.0100157, align 2
  %i.dd = zext i16 %i.dc to i32
  %i.de = and i32 %i.ae, %i.dd
  %i.df = icmp eq i32 %i.de, %i.af
  br i1 %i.df, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.lr.ph159
  store i16 %i.ao, ptr %.0100157, align 2
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.lr.ph159
  %i.dg = getelementptr inbounds nuw i8, ptr %.0100157, i64 2
  %.not133 = icmp eq i32 %i.db, 0
  br i1 %.not133, label %._crit_edge160, label %.lr.ph159, !llvm.loop !53

._crit_edge160:                                   ; preds = %bb.m, %middle.block89, %vec.epilog.middle.block, %.lr.ph164.split
  %.not132 = icmp eq i32 %i.aq, 0
  br i1 %.not132, label %.loopexit, label %.lr.ph164.splitthread-pre-split, !llvm.loop !54

bb.n:                                             ; preds = %SDL_LockSurface_REAL.exit
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.di = load ptr, ptr %i.dh, align 8
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 20
  %i.dk = load i32, ptr %i.dj, align 4
  %i.dl = xor i32 %i.dk, -1                       ; 3 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 268
  %i.dn = load i32, ptr %i.dm, align 4
  %i.do = and i32 %i.dn, %i.dl                    ; 11 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.dq = load i32, ptr %i.dp, align 4            ; 2 uses
  %.not130152 = icmp eq i32 %i.dq, 0
  br i1 %.not130152, label %.loopexit, label %.lr.ph155

.lr.ph155:                                        ; preds = %bb.n
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.dt = load i32, ptr %i.dr, align 8            ; 2 uses
  %i.du = icmp eq i32 %i.dt, 0
  br i1 %i.du, label %.loopexit, label %.lr.ph155.split.preheader

.lr.ph155.split.preheader:                        ; preds = %.lr.ph155
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.dw = load ptr, ptr %i.dv, align 8
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.dl, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert2 = insertelement <4 x i32> poison, i32 %i.do, i64 0
  %broadcast.splat3 = shufflevector <4 x i32> %broadcast.splatinsert2, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %.lr.ph155.split

.lr.ph155.splitthread-pre-split:                  ; preds = %._crit_edge
  %5 = load i32, ptr %i.ds, align 8
  %6 = sdiv i32 %5, 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds [4 x i8], ptr %.098153, i64 %7
  %.pr181 = load i32, ptr %i.dr, align 8
  br label %.lr.ph155.split

.lr.ph155.split:                                  ; preds = %.lr.ph155.splitthread-pre-split, %.lr.ph155.split.preheader
  %i.dx = phi i32 [ %.pr181, %.lr.ph155.splitthread-pre-split ], [ %i.dt, %.lr.ph155.split.preheader ] ; 5 uses
  %.in177 = phi i32 [ %i.dy, %.lr.ph155.splitthread-pre-split ], [ %i.dq, %.lr.ph155.split.preheader ]
  %.098153 = phi ptr [ %8, %.lr.ph155.splitthread-pre-split ], [ %i.dw, %.lr.ph155.split.preheader ] ; 11 uses
  %i.dy = add nsw i32 %.in177, -1                 ; 2 uses
  %.not131150 = icmp eq i32 %i.dx, 0
  br i1 %.not131150, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.lr.ph155.split
  %i.dz = zext i32 %i.dx to i64                   ; 2 uses
  %min.iters.check = icmp ult i32 %i.dx, 8
  br i1 %min.iters.check, label %.lr.ph.preheader116, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.dz, 4294967288              ; 4 uses
  %i.ea = trunc nuw i64 %n.vec to i32
  %i.eb = sub i32 %i.dx, %i.ea
  %i.ec = shl nuw nsw i64 %n.vec, 2
  %i.ed = getelementptr i8, ptr %.098153, i64 %i.ec
  br label %vector.body

vector.body:                                      ; preds = %pred.store.continue25, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue25 ] ; 2 uses
  %i.ee = shl i64 %index, 2                       ; 8 uses
  %next.gep = getelementptr i8, ptr %.098153, i64 %i.ee ; 3 uses
  %i.ef = getelementptr i8, ptr %.098153, i64 %i.ee
  %next.gep4 = getelementptr i8, ptr %i.ef, i64 4
  %i.eg = getelementptr i8, ptr %.098153, i64 %i.ee
  %next.gep5 = getelementptr i8, ptr %i.eg, i64 8
  %i.eh = getelementptr i8, ptr %.098153, i64 %i.ee
  %next.gep6 = getelementptr i8, ptr %i.eh, i64 12
  %i.ei = getelementptr i8, ptr %.098153, i64 %i.ee
  %next.gep7 = getelementptr i8, ptr %i.ei, i64 16
  %i.ej = getelementptr i8, ptr %.098153, i64 %i.ee
  %next.gep8 = getelementptr i8, ptr %i.ej, i64 20
  %i.ek = getelementptr i8, ptr %.098153, i64 %i.ee
  %next.gep9 = getelementptr i8, ptr %i.ek, i64 24
  %i.el = getelementptr i8, ptr %.098153, i64 %i.ee
  %next.gep10 = getelementptr i8, ptr %i.el, i64 28
  %i.em = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4
  %wide.load11 = load <4 x i32>, ptr %i.em, align 4
  %i.en = and <4 x i32> %wide.load, %broadcast.splat
  %i.eo = and <4 x i32> %wide.load11, %broadcast.splat
  %i.ep = icmp eq <4 x i32> %i.en, %broadcast.splat3 ; 4 uses
  %i.eq = icmp eq <4 x i32> %i.eo, %broadcast.splat3 ; 4 uses
  %i.er = extractelement <4 x i1> %i.ep, i64 0
  br i1 %i.er, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  store i32 %i.do, ptr %next.gep, align 4
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.es = extractelement <4 x i1> %i.ep, i64 1
  br i1 %i.es, label %pred.store.if12, label %pred.store.continue13

pred.store.if12:                                  ; preds = %pred.store.continue
  store i32 %i.do, ptr %next.gep4, align 4
  br label %pred.store.continue13

pred.store.continue13:                            ; preds = %pred.store.if12, %pred.store.continue
  %i.et = extractelement <4 x i1> %i.ep, i64 2
  br i1 %i.et, label %pred.store.if14, label %pred.store.continue15

pred.store.if14:                                  ; preds = %pred.store.continue13
  store i32 %i.do, ptr %next.gep5, align 4
  br label %pred.store.continue15

pred.store.continue15:                            ; preds = %pred.store.if14, %pred.store.continue13
  %i.eu = extractelement <4 x i1> %i.ep, i64 3
  br i1 %i.eu, label %pred.store.if16, label %pred.store.continue17

pred.store.if16:                                  ; preds = %pred.store.continue15
  store i32 %i.do, ptr %next.gep6, align 4
  br label %pred.store.continue17

pred.store.continue17:                            ; preds = %pred.store.if16, %pred.store.continue15
  %i.ev = extractelement <4 x i1> %i.eq, i64 0
  br i1 %i.ev, label %pred.store.if18, label %pred.store.continue19

pred.store.if18:                                  ; preds = %pred.store.continue17
  store i32 %i.do, ptr %next.gep7, align 4
  br label %pred.store.continue19

pred.store.continue19:                            ; preds = %pred.store.if18, %pred.store.continue17
  %i.ew = extractelement <4 x i1> %i.eq, i64 1
  br i1 %i.ew, label %pred.store.if20, label %pred.store.continue21

pred.store.if20:                                  ; preds = %pred.store.continue19
  store i32 %i.do, ptr %next.gep8, align 4
  br label %pred.store.continue21

pred.store.continue21:                            ; preds = %pred.store.if20, %pred.store.continue19
  %i.ex = extractelement <4 x i1> %i.eq, i64 2
  br i1 %i.ex, label %pred.store.if22, label %pred.store.continue23

pred.store.if22:                                  ; preds = %pred.store.continue21
  store i32 %i.do, ptr %next.gep9, align 4
  br label %pred.store.continue23

pred.store.continue23:                            ; preds = %pred.store.if22, %pred.store.continue21
  %i.ey = extractelement <4 x i1> %i.eq, i64 3
  br i1 %i.ey, label %pred.store.if24, label %pred.store.continue25

pred.store.if24:                                  ; preds = %pred.store.continue23
  store i32 %i.do, ptr %next.gep10, align 4
  br label %pred.store.continue25

pred.store.continue25:                            ; preds = %pred.store.if24, %pred.store.continue23
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ez = icmp eq i64 %index.next, %n.vec
  br i1 %i.ez, label %middle.block, label %vector.body, !llvm.loop !55

middle.block:                                     ; preds = %pred.store.continue25
  %cmp.n = icmp eq i64 %n.vec, %i.dz
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader116

.lr.ph.preheader116:                              ; preds = %.lr.ph.preheader, %middle.block
  %.in.ph = phi i32 [ %i.dx, %.lr.ph.preheader ], [ %i.eb, %middle.block ]
  %.0151.ph = phi ptr [ %.098153, %.lr.ph.preheader ], [ %i.ed, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader116, %bb.p
  %.in = phi i32 [ %i.fa, %bb.p ], [ %.in.ph, %.lr.ph.preheader116 ]
  %.0151 = phi ptr [ %i.fe, %bb.p ], [ %.0151.ph, %.lr.ph.preheader116 ] ; 3 uses
  %i.fa = add nsw i32 %.in, -1                    ; 2 uses
  %i.fb = load i32, ptr %.0151, align 4
  %i.fc = and i32 %i.fb, %i.dl
  %i.fd = icmp eq i32 %i.fc, %i.do
  br i1 %i.fd, label %bb.o, label %bb.p

bb.o:                                             ; preds = %.lr.ph
  store i32 %i.do, ptr %.0151, align 4
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.lr.ph
  %i.fe = getelementptr inbounds nuw i8, ptr %.0151, i64 4
  %.not131 = icmp eq i32 %i.fa, 0
  br i1 %.not131, label %._crit_edge, label %.lr.ph, !llvm.loop !56

._crit_edge:                                      ; preds = %bb.p, %middle.block, %.lr.ph155.split
  %.not130 = icmp eq i32 %i.dy, 0
  br i1 %.not130, label %.loopexit, label %.lr.ph155.splitthread-pre-split, !llvm.loop !57

.loopexit:                                        ; preds = %._crit_edge, %._crit_edge160, %.lr.ph155, %.lr.ph164, %bb.n, %bb.k, %SDL_LockSurface_REAL.exit
  %i.ff = load ptr, ptr %i.a, align 8
  %i.fg = icmp eq ptr %i.ff, @SDL_surface_magic
  br i1 %i.fg, label %bb.q, label %SDL_SurfaceValid.exit.thread.i141

bb.q:                                             ; preds = %.loopexit
  %i.fh = load i32, ptr %i.o, align 8             ; 3 uses
  %.not.i139 = icmp eq i32 %i.fh, 0
  br i1 %.not.i139, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.fi = add nsw i32 %i.fh, -1
  store i32 %i.fi, ptr %i.o, align 8
  %i.fj = icmp sgt i32 %i.fh, 1
  br i1 %i.fj, label %bb.s, label %SDL_UpdateSurfaceLockFlag.exit.i140

SDL_UpdateSurfaceLockFlag.exit.i140:              ; preds = %bb.r
  %i.fk = load i32, ptr %0, align 8
  %i.fl = and i32 %i.fk, -7
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.fn = load i32, ptr %i.fm, align 8
  %i.fo = lshr i32 %i.fn, 1
  %i.fp = and i32 %i.fo, 2
  %storemerge.i.i = or disjoint i32 %i.fp, %i.fl
  store i32 %storemerge.i.i, ptr %0, align 8
  br label %bb.s

SDL_SurfaceValid.exit.thread.i141:                ; preds = %.loopexit
  %i.fq = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str, ptr noundef nonnull @.str.6) #10 ; 0 uses
  br label %SDL_SetSurfaceColorKey_REAL.exit

bb.s:                                             ; preds = %bb.q, %bb.r, %SDL_UpdateSurfaceLockFlag.exit.i140
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.fs = load ptr, ptr %i.fr, align 8            ; 2 uses
  %.not.i143 = icmp eq ptr %i.fs, null
  br i1 %.not.i143, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ft = load i32, ptr %i.fs, align 8
  %.not14.i.not = icmp eq i32 %i.ft, 0
  br i1 %.not14.i.not, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.fu = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str, ptr noundef nonnull @.str.13) #10 ; 0 uses
  br label %SDL_SetSurfaceColorKey_REAL.exit

bb.v:                                             ; preds = %bb.t, %bb.s
  %i.fv = load i32, ptr %i.d, align 8             ; 2 uses
  %i.fw = and i32 %i.fv, -1025                    ; 2 uses
  store i32 %i.fw, ptr %i.d, align 8
  %.not15.i = icmp eq i32 %i.fw, %i.fv
  br i1 %.not15.i, label %SDL_SetSurfaceColorKey_REAL.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 120
  tail call void @SDL_InvalidateMap(ptr noundef nonnull %i.fx) #10
  br label %SDL_SetSurfaceColorKey_REAL.exit

SDL_SetSurfaceColorKey_REAL.exit:                 ; preds = %SDL_SurfaceValid.exit.thread.i141, %bb.u, %bb.v, %bb.w
  %i.fy = load ptr, ptr %i.a, align 8
  %i.fz = icmp eq ptr %i.fy, @SDL_surface_magic
  br i1 %i.fz, label %bb.x, label %SDL_SurfaceValid.exit.thread.i144

SDL_SurfaceValid.exit.thread.i144:                ; preds = %SDL_SetSurfaceColorKey_REAL.exit
  %i.ga = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str, ptr noundef nonnull @.str.6) #10 ; 0 uses
  br label %SDL_SetSurfaceBlendMode_REAL.exit

bb.x:                                             ; preds = %SDL_SetSurfaceColorKey_REAL.exit
  %i.gb = load i32, ptr %i.d, align 8             ; 2 uses
  %i.gc = and i32 %i.gb, -1009
  %i.gd = or disjoint i32 %i.gc, 16               ; 2 uses
  store i32 %i.gd, ptr %i.d, align 8
  %.not.i146 = icmp eq i32 %i.gd, %i.gb
  br i1 %.not.i146, label %SDL_SetSurfaceBlendMode_REAL.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 120
  tail call void @SDL_InvalidateMap(ptr noundef nonnull %i.ge) #10
  br label %SDL_SetSurfaceBlendMode_REAL.exit

SDL_SetSurfaceBlendMode_REAL.exit:                ; preds = %bb.e, %bb.y, %bb.x, %SDL_SurfaceValid.exit.thread.i144, %bb.c, %bb.f, %bb.b, %bb.g, %bb.a
  ret void
}

declare zeroext i1 @SDL_ClearProperty_REAL(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smax.v4i32(<4 x i32>, <4 x i32>) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { allocsize(1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { nounwind }
attributes #11 = { nounwind allocsize(1) }

!llvm.module.flags = !{!1, !2}
!llvm.ident = !{!3}

!0 = distinct !{!0, !4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"llvm.loop.mustprogress"}
!5 = !{ptr @SDL_ConvertSurfaceAndColorspace_REAL}
!6 = !{ptr @SDL_BlitSurfaceUnchecked_REAL}
!7 = !{!"llvm.loop.unroll.disable"}
!8 = !{!"llvm.loop.isvectorized", i32 1}
!9 = !{!"llvm.loop.unroll.runtime.disable"}
!10 = !{ptr @SDL_RemoveSurfaceAlternateImages_REAL}
!11 = distinct !{!11, !4}
!12 = distinct !{!12, !4}
!13 = distinct !{!13, !4}
!14 = distinct !{!14, !4}
!15 = distinct !{!15, !4}
!16 = distinct !{!16, !4}
!17 = distinct !{!17, !4}
!18 = distinct !{!18, !4}
!19 = distinct !{!19, !4}
!20 = distinct !{!20, !4}
!21 = distinct !{!21, !4}
!22 = distinct !{!22, !4}
!23 = distinct !{!23, !4}
!24 = distinct !{!24, !4}
!25 = distinct !{!25, !7}
!26 = distinct !{!26, !4}
!27 = !{i8 0, i8 2}
!28 = !{}
!29 = distinct !{!29, !7}
!30 = distinct !{!30, !4}
!31 = distinct !{!31, !7}
!32 = distinct !{!32, !4}
!33 = distinct !{!33, i1 false, !"LVerDomain"}
!34 = distinct !{!34, !33}
!35 = distinct !{!35, !33}
!36 = distinct !{!36, !4, !8, !9}
!37 = distinct !{!37, !4, !8}
!38 = distinct !{!38, !4}
!39 = distinct !{!39, i1 false, !"LVerDomain"}
!40 = distinct !{!40, !39}
!41 = distinct !{!41, !39}
!42 = distinct !{!42, !4, !8, !9}
!43 = distinct !{!43, !4, !8}
!44 = distinct !{!44, !4}
!45 = distinct !{!45, !4}
!46 = distinct !{!46, !4}
!47 = !{!34}
!48 = !{!35}
!49 = !{!40}
!50 = !{!41}
!51 = distinct !{!51, !4, !8, !9}
!52 = distinct !{!52, !4, !8, !9}
!53 = distinct !{!53, !4, !9, !8}
!54 = distinct !{!54, !4, !59}
!55 = distinct !{!55, !4, !8, !9}
!56 = distinct !{!56, !4, !9, !8}
!57 = distinct !{!57, !4, !59}
!58 = !{!"branch_weights", i32 4, i32 12}
!59 = !{!"llvm.loop.unswitch.partial.disable"}
end_hunk_1
