inline.NumInlined: 74
inline.NumDeleted: 11
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 13
begin_hunk_0_@GLES2_UpdateTexture:bb.a
  %i.b = load ptr, ptr %i.a, align 8              ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 312
  %i.d = load ptr, ptr %i.c, align 8              ; 9 uses
  %i.e = tail call ptr @SDL_GL_GetCurrentContext_REAL() #10
  %i.f = load ptr, ptr %i.b, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.e, %i.f
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 696
  store ptr null, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call zeroext i1 @SDL_GL_MakeCurrent_REAL(ptr noundef %i.i, ptr noundef %i.f) #10
  br i1 %i.j, label %bb.c, label %GLES2_ActivateRenderer.exit

bb.c:                                             ; preds = %bb.b, %bb.a
  %.val.i = load ptr, ptr %i.a, align 8           ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.val.i, i64 8
  %i.l = load i8, ptr %i.k, align 8, !range !3, !noundef !4
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %.preheader.i.i, label %GLES2_ActivateRenderer.exit

.preheader.i.i:                                   ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %.val.i, i64 200
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.preheader.i.i
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = tail call i32 %i.o() #10, !inline_history !8
  %.not.i.i = icmp eq i32 %i.p, 0
  br i1 %.not.i.i, label %GLES2_ActivateRenderer.exit, label %bb.d, !llvm.loop !9

GLES2_ActivateRenderer.exit:                      ; preds = %bb.d, %bb.b, %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  %i.r = load i32, ptr %i.q, align 4
  %i.s = icmp slt i32 %i.r, 1
  br i1 %i.s, label %GL_CheckAllErrors.exit, label %bb.e

bb.e:                                             ; preds = %GLES2_ActivateRenderer.exit
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 8 uses
  %i.u = load i32, ptr %i.t, align 4
  %i.v = icmp slt i32 %i.u, 1
  br i1 %i.v, label %GL_CheckAllErrors.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 624
  store ptr null, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 4 uses
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 12 ; 8 uses
  %i.aa = load i32, ptr %i.z, align 4
  %i.ab = load i32, ptr %i.d, align 8
  tail call void %i.y(i32 noundef %i.aa, i32 noundef %i.ab) #10
  %i.ac = load i32, ptr %i.z, align 4
  %i.ad = load i32, ptr %2, align 4
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.af = load i32, ptr %i.ae, align 4
  %i.ag = load i32, ptr %i.q, align 4             ; 3 uses
  %i.ah = load i32, ptr %i.t, align 4             ; 7 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 3 uses
  %i.aj = load i32, ptr %i.ai, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.d, i64 20 ; 3 uses
  %i.al = load i32, ptr %i.ak, align 4
  %i.am = load i32, ptr %1, align 8               ; 4 uses
  %.not = icmp eq i32 %i.am, 0
  %.mask = and i32 %i.am, -268435456
  %.not84 = icmp eq i32 %.mask, 268435456
  %or.cond = or i1 %.not, %.not84
  br i1 %or.cond, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  switch i32 %i.am, label %bb.h [
    i32 844715353, label %switch.edge
    i32 1498831189, label %switch.edge
    i32 1431918169, label %switch.edge
    i32 808530000, label %switch.edge
  ]

bb.h:                                             ; preds = %bb.g
  br label %switch.edge

bb.i:                                             ; preds = %bb.f
  %i.an = and i32 %i.am, 255
  br label %switch.edge

switch.edge:                                      ; preds = %bb.g, %bb.h, %bb.g, %bb.g, %bb.g, %bb.i
  %i.ao = phi i32 [ %i.an, %bb.i ], [ 2, %bb.g ], [ 2, %bb.g ], [ 2, %bb.g ], [ 1, %bb.h ], [ 2, %bb.g ] ; 2 uses
  %i.ap = icmp eq i32 %i.ag, 0
  %i.aq = icmp eq i32 %i.ah, 0
  %or.cond.i = or i1 %i.ap, %i.aq
  %i.ar = icmp eq i32 %i.ao, 0
  %or.cond3.i = or i1 %or.cond.i, %i.ar
  br i1 %or.cond3.i, label %GLES2_TexSubImage2D.exit, label %bb.j

bb.j:                                             ; preds = %switch.edge
  %i.as = sext i32 %i.ag to i64
  %i.at = zext nneg i32 %i.ao to i64
  %i.au = mul nsw i64 %i.at, %i.as                ; 12 uses
  %i.av = sext i32 %4 to i64                      ; 6 uses
  %.not.i85 = icmp eq i64 %i.au, %i.av
  br i1 %.not.i85, label %.loopexit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aw = sext i32 %i.ah to i64
  %i.ax = mul i64 %i.au, %i.aw
  %i.ay = tail call noalias ptr @SDL_malloc_REAL(i64 noundef %i.ax) #10 ; 9 uses
  %.not46.i = icmp eq ptr %i.ay, null
  br i1 %.not46.i, label %GLES2_TexSubImage2D.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.k
  %i.az = icmp sgt i32 %i.ah, 0
  br i1 %i.az, label %.lr.ph.i.preheader, label %.loopexit.i

.lr.ph.i.preheader:                               ; preds = %.preheader.i
  %xtraiter = and i32 %i.ah, 3                    ; 3 uses
  %i.ba = icmp ult i32 %i.ah, 4
  br i1 %i.ba, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i32 %i.ah, 2147483644
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.03648.i = phi ptr [ %i.ay, %.lr.ph.i.preheader.new ], [ %i.bh, %.lr.ph.i ] ; 2 uses
  %.03947.i = phi ptr [ %3, %.lr.ph.i.preheader.new ], [ %i.bi, %.lr.ph.i ] ; 2 uses
  %niter = phi i32 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.3, %.lr.ph.i ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.03648.i, ptr align 1 %.03947.i, i64 %i.au, i1 false)
  %i.bb = getelementptr inbounds nuw i8, ptr %.03648.i, i64 %i.au ; 2 uses
  %i.bc = getelementptr inbounds i8, ptr %.03947.i, i64 %i.av ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bb, ptr align 1 %i.bc, i64 %i.au, i1 false)
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.au ; 2 uses
  %i.be = getelementptr inbounds i8, ptr %i.bc, i64 %i.av ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bd, ptr align 1 %i.be, i64 %i.au, i1 false)
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.au ; 2 uses
  %i.bg = getelementptr inbounds i8, ptr %i.be, i64 %i.av ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bf, ptr align 1 %i.bg, i64 %i.au, i1 false)
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.au ; 2 uses
  %i.bi = getelementptr inbounds i8, ptr %i.bg, i64 %i.av ; 2 uses
  %niter.next.3 = add nuw nsw i32 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.i.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !11

.loopexit.i.loopexit.unr-lcssa:                   ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %.loopexit.i.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.03648.i.epil.init = phi ptr [ %i.ay, %.lr.ph.i.preheader ], [ %i.bh, %.loopexit.i.loopexit.unr-lcssa ]
  %.03947.i.epil.init = phi ptr [ %3, %.lr.ph.i.preheader ], [ %i.bi, %.loopexit.i.loopexit.unr-lcssa ]
  %lcmp.mod160 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod160)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.03648.i.epil = phi ptr [ %i.bj, %.lr.ph.i.epil ], [ %.03648.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %.03947.i.epil = phi ptr [ %i.bk, %.lr.ph.i.epil ], [ %.03947.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.03648.i.epil, ptr align 1 %.03947.i.epil, i64 %i.au, i1 false)
  %i.bj = getelementptr inbounds nuw i8, ptr %.03648.i.epil, i64 %i.au
  %i.bk = getelementptr inbounds i8, ptr %.03947.i.epil, i64 %i.av
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit.i, label %.lr.ph.i.epil, !llvm.loop !12

.loopexit.i:                                      ; preds = %.loopexit.i.loopexit.unr-lcssa, %.lr.ph.i.epil, %.preheader.i, %bb.j
  %.037.i = phi ptr [ null, %bb.j ], [ %i.ay, %.preheader.i ], [ %i.ay, %.lr.ph.i.epil ], [ %i.ay, %.loopexit.i.loopexit.unr-lcssa ]
  %.1.i = phi ptr [ %3, %bb.j ], [ %i.ay, %.preheader.i ], [ %i.ay, %.lr.ph.i.epil ], [ %i.ay, %.loopexit.i.loopexit.unr-lcssa ]
  %i.bl = getelementptr inbounds nuw i8, ptr %i.b, i64 312
  %i.bm = load ptr, ptr %i.bl, align 8
  tail call void %i.bm(i32 noundef %i.ac, i32 noundef 0, i32 noundef %i.ad, i32 noundef %i.af, i32 noundef %i.ag, i32 noundef %i.ah, i32 noundef %i.aj, i32 noundef %i.al, ptr noundef %.1.i) #10, !inline_history !14
  tail call void @SDL_free_REAL(ptr noundef %.037.i) #10
  br label %GLES2_TexSubImage2D.exit

GLES2_TexSubImage2D.exit:                         ; preds = %switch.edge, %bb.k, %.loopexit.i
  %i.bn = getelementptr inbounds nuw i8, ptr %i.d, i64 36
  %i.bo = load i8, ptr %i.bn, align 4, !range !3, !noundef !4
  %i.bp = trunc nuw i8 %i.bo to i1
  br i1 %i.bp, label %bb.l, label %bb.q

bb.l:                                             ; preds = %GLES2_TexSubImage2D.exit
  %i.bq = load i32, ptr %i.t, align 4
  %i.br = mul nsw i32 %i.bq, %4
  %i.bs = sext i32 %i.br to i64
  %i.bt = getelementptr inbounds i8, ptr %3, i64 %i.bs ; 4 uses
  %i.bu = load i32, ptr %1, align 8
  %i.bv = icmp eq i32 %i.bu, 842094169
  %i.bw = load ptr, ptr %i.x, align 8
  %i.bx = load i32, ptr %i.z, align 4
  %. = select i1 %i.bv, i64 40, i64 48
  %i.by = getelementptr inbounds nuw i8, ptr %i.d, i64 %.
  %i.bz = load i32, ptr %i.by, align 8
  tail call void %i.bw(i32 noundef %i.bx, i32 noundef %i.bz) #10
  %i.ca = load i32, ptr %i.z, align 4
  %i.cb = load <2 x i32>, ptr %2, align 4
  %i.cc = sdiv <2 x i32> %i.cb, splat (i32 2)     ; 2 uses
  %i.cd = load i32, ptr %i.q, align 4             ; 2 uses
  %i.ce = add nsw i32 %i.cd, 1
  %i.cf = sdiv i32 %i.ce, 2                       ; 3 uses
  %i.cg = load i32, ptr %i.t, align 4             ; 3 uses
  %i.ch = add i32 %i.cg, 1
  %i.ci = sdiv i32 %i.ch, 2                       ; 5 uses
  %i.cj = load i32, ptr %i.ai, align 8
  %i.ck = load i32, ptr %i.ak, align 4
  %i.cl = add nsw i32 %4, 1
  %i.cm = sdiv i32 %i.cl, 2                       ; 5 uses
  %.off136 = add i32 %i.cd, 2
  %i.cn = icmp ult i32 %.off136, 3
  %.off137 = add i32 %i.cg, 2
  %i.co = icmp ult i32 %.off137, 3
  %or.cond.i86 = or i1 %i.cn, %i.co
  br i1 %or.cond.i86, label %GLES2_TexSubImage2D.exit100, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cp = sext i32 %i.cf to i64                   ; 11 uses
  %i.cq = sext i32 %i.cm to i64                   ; 5 uses
  %.not.i88 = icmp eq i32 %i.cf, %i.cm
  br i1 %.not.i88, label %.loopexit.i91, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cr = sext i32 %i.ci to i64
  %i.cs = mul nsw i64 %i.cr, %i.cp
  %i.ct = tail call noalias ptr @SDL_malloc_REAL(i64 noundef %i.cs) #10 ; 9 uses
  %.not46.i89 = icmp eq ptr %i.ct, null
  br i1 %.not46.i89, label %GLES2_TexSubImage2D.exit100, label %.preheader.i90

.preheader.i90:                                   ; preds = %bb.n
  %i.cu = icmp sgt i32 %i.cg, 0
  br i1 %i.cu, label %.lr.ph.i95.preheader, label %.loopexit.i91

.lr.ph.i95.preheader:                             ; preds = %.preheader.i90
  %i.cv = add nsw i32 %i.ci, -1
  %xtraiter167 = and i32 %i.ci, 3                 ; 3 uses
  %i.cw = icmp ult i32 %i.cv, 3
  br i1 %i.cw, label %.lr.ph.i95.epil.preheader, label %.lr.ph.i95.preheader.new

.lr.ph.i95.preheader.new:                         ; preds = %.lr.ph.i95.preheader
  %unroll_iter171 = and i32 %i.ci, -4
  br label %.lr.ph.i95

.lr.ph.i95:                                       ; preds = %.lr.ph.i95, %.lr.ph.i95.preheader.new
  %.03648.i97 = phi ptr [ %i.ct, %.lr.ph.i95.preheader.new ], [ %i.dd, %.lr.ph.i95 ] ; 2 uses
  %.03947.i98 = phi ptr [ %i.bt, %.lr.ph.i95.preheader.new ], [ %i.de, %.lr.ph.i95 ] ; 2 uses
  %niter172 = phi i32 [ 0, %.lr.ph.i95.preheader.new ], [ %niter172.next.3, %.lr.ph.i95 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.03648.i97, ptr align 1 %.03947.i98, i64 %i.cp, i1 false)
  %i.cx = getelementptr inbounds nuw i8, ptr %.03648.i97, i64 %i.cp ; 2 uses
  %i.cy = getelementptr inbounds i8, ptr %.03947.i98, i64 %i.cq ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cx, ptr align 1 %i.cy, i64 %i.cp, i1 false)
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.cp ; 2 uses
  %i.da = getelementptr inbounds i8, ptr %i.cy, i64 %i.cq ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cz, ptr align 1 %i.da, i64 %i.cp, i1 false)
  %i.db = getelementptr inbounds nuw i8, ptr %i.cz, i64 %i.cp ; 2 uses
  %i.dc = getelementptr inbounds i8, ptr %i.da, i64 %i.cq ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.db, ptr align 1 %i.dc, i64 %i.cp, i1 false)
  %i.dd = getelementptr inbounds nuw i8, ptr %i.db, i64 %i.cp ; 2 uses
  %i.de = getelementptr inbounds i8, ptr %i.dc, i64 %i.cq ; 2 uses
  %niter172.next.3 = add i32 %niter172, 4         ; 2 uses
  %niter172.ncmp.3 = icmp eq i32 %niter172.next.3, %unroll_iter171
  br i1 %niter172.ncmp.3, label %.loopexit.i91.loopexit.unr-lcssa, label %.lr.ph.i95, !llvm.loop !11

.loopexit.i91.loopexit.unr-lcssa:                 ; preds = %.lr.ph.i95
  %lcmp.mod169.not = icmp eq i32 %xtraiter167, 0
  br i1 %lcmp.mod169.not, label %.loopexit.i91, label %.lr.ph.i95.epil.preheader

.lr.ph.i95.epil.preheader:                        ; preds = %.loopexit.i91.loopexit.unr-lcssa, %.lr.ph.i95.preheader
  %.03648.i97.epil.init = phi ptr [ %i.ct, %.lr.ph.i95.preheader ], [ %i.dd, %.loopexit.i91.loopexit.unr-lcssa ]
  %.03947.i98.epil.init = phi ptr [ %i.bt, %.lr.ph.i95.preheader ], [ %i.de, %.loopexit.i91.loopexit.unr-lcssa ]
  %lcmp.mod170 = icmp ne i32 %xtraiter167, 0
  tail call void @llvm.assume(i1 %lcmp.mod170)
  br label %.lr.ph.i95.epil

.lr.ph.i95.epil:                                  ; preds = %.lr.ph.i95.epil, %.lr.ph.i95.epil.preheader
  %.03648.i97.epil = phi ptr [ %i.df, %.lr.ph.i95.epil ], [ %.03648.i97.epil.init, %.lr.ph.i95.epil.preheader ] ; 2 uses
  %.03947.i98.epil = phi ptr [ %i.dg, %.lr.ph.i95.epil ], [ %.03947.i98.epil.init, %.lr.ph.i95.epil.preheader ] ; 2 uses
  %epil.iter168 = phi i32 [ %epil.iter168.next, %.lr.ph.i95.epil ], [ 0, %.lr.ph.i95.epil.preheader ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.03648.i97.epil, ptr align 1 %.03947.i98.epil, i64 %i.cp, i1 false)
  %i.df = getelementptr inbounds nuw i8, ptr %.03648.i97.epil, i64 %i.cp
  %i.dg = getelementptr inbounds i8, ptr %.03947.i98.epil, i64 %i.cq
  %epil.iter168.next = add i32 %epil.iter168, 1   ; 2 uses
  %epil.iter168.cmp.not = icmp eq i32 %epil.iter168.next, %xtraiter167
  br i1 %epil.iter168.cmp.not, label %.loopexit.i91, label %.lr.ph.i95.epil, !llvm.loop !15

.loopexit.i91:                                    ; preds = %.loopexit.i91.loopexit.unr-lcssa, %.lr.ph.i95.epil, %.preheader.i90, %bb.m
  %.037.i92 = phi ptr [ null, %bb.m ], [ %i.ct, %.preheader.i90 ], [ %i.ct, %.lr.ph.i95.epil ], [ %i.ct, %.loopexit.i91.loopexit.unr-lcssa ]
  %.1.i93 = phi ptr [ %i.bt, %bb.m ], [ %i.ct, %.preheader.i90 ], [ %i.ct, %.lr.ph.i95.epil ], [ %i.ct, %.loopexit.i91.loopexit.unr-lcssa ]
  %i.dh = getelementptr inbounds nuw i8, ptr %i.b, i64 312
  %i.di = load ptr, ptr %i.dh, align 8
  %i.dj = extractelement <2 x i32> %i.cc, i64 0
  %i.dk = extractelement <2 x i32> %i.cc, i64 1
  tail call void %i.di(i32 noundef %i.ca, i32 noundef 0, i32 noundef %i.dj, i32 noundef %i.dk, i32 noundef %i.cf, i32 noundef %i.ci, i32 noundef %i.cj, i32 noundef %i.ck, ptr noundef %.1.i93) #10, !inline_history !14
  tail call void @SDL_free_REAL(ptr noundef %.037.i92) #10
  br label %GLES2_TexSubImage2D.exit100

GLES2_TexSubImage2D.exit100:                      ; preds = %bb.l, %bb.n, %.loopexit.i91
  %i.dl = load i32, ptr %i.t, align 4
  %i.dm = add nsw i32 %i.dl, 1
  %i.dn = sdiv i32 %i.dm, 2
  %i.do = mul nsw i32 %i.dn, %i.cm
  %i.dp = sext i32 %i.do to i64
  %i.dq = getelementptr inbounds i8, ptr %i.bt, i64 %i.dp ; 3 uses
  %i.dr = load i32, ptr %1, align 8
  %i.ds = icmp eq i32 %i.dr, 842094169
  %i.dt = load ptr, ptr %i.x, align 8
  %i.du = load i32, ptr %i.z, align 4
  %.159 = select i1 %i.ds, i64 48, i64 40
  %i.dv = getelementptr inbounds nuw i8, ptr %i.d, i64 %.159
  %i.dw = load i32, ptr %i.dv, align 8
  tail call void %i.dt(i32 noundef %i.du, i32 noundef %i.dw) #10
  %i.dx = load i32, ptr %i.z, align 4
  %i.dy = load <2 x i32>, ptr %2, align 4
  %i.dz = sdiv <2 x i32> %i.dy, splat (i32 2)     ; 2 uses
  %i.ea = load i32, ptr %i.q, align 4             ; 2 uses
  %i.eb = add nsw i32 %i.ea, 1
  %i.ec = sdiv i32 %i.eb, 2                       ; 3 uses
  %i.ed = load i32, ptr %i.t, align 4             ; 3 uses
  %i.ee = add i32 %i.ed, 1
  %i.ef = sdiv i32 %i.ee, 2                       ; 5 uses
  %i.eg = load i32, ptr %i.ai, align 8
  %i.eh = load i32, ptr %i.ak, align 4
  %.off138 = add i32 %i.ea, 2
  %i.ei = icmp ult i32 %.off138, 3
  %.off139 = add i32 %i.ed, 2
  %i.ej = icmp ult i32 %.off139, 3
  %or.cond.i101 = or i1 %i.ei, %i.ej
  br i1 %or.cond.i101, label %GLES2_TexSubImage2D.exit115, label %bb.o

bb.o:                                             ; preds = %GLES2_TexSubImage2D.exit100
  %i.ek = sext i32 %i.ec to i64                   ; 11 uses
  %i.el = sext i32 %i.cm to i64                   ; 5 uses
  %.not.i103 = icmp eq i32 %i.ec, %i.cm
  br i1 %.not.i103, label %.loopexit.i106, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.em = sext i32 %i.ef to i64
  %i.en = mul nsw i64 %i.em, %i.ek
  %i.eo = tail call noalias ptr @SDL_malloc_REAL(i64 noundef %i.en) #10 ; 9 uses
  %.not46.i104 = icmp eq ptr %i.eo, null
  br i1 %.not46.i104, label %GLES2_TexSubImage2D.exit115, label %.preheader.i105

.preheader.i105:                                  ; preds = %bb.p
  %i.ep = icmp sgt i32 %i.ed, 0
  br i1 %i.ep, label %.lr.ph.i110.preheader, label %.loopexit.i106

.lr.ph.i110.preheader:                            ; preds = %.preheader.i105
  %i.eq = add nsw i32 %i.ef, -1
  %xtraiter173 = and i32 %i.ef, 3                 ; 3 uses
  %i.er = icmp ult i32 %i.eq, 3
  br i1 %i.er, label %.lr.ph.i110.epil.preheader, label %.lr.ph.i110.preheader.new

.lr.ph.i110.preheader.new:                        ; preds = %.lr.ph.i110.preheader
  %unroll_iter177 = and i32 %i.ef, -4
  br label %.lr.ph.i110

.lr.ph.i110:                                      ; preds = %.lr.ph.i110, %.lr.ph.i110.preheader.new
  %.03648.i112 = phi ptr [ %i.eo, %.lr.ph.i110.preheader.new ], [ %i.ey, %.lr.ph.i110 ] ; 2 uses
  %.03947.i113 = phi ptr [ %i.dq, %.lr.ph.i110.preheader.new ], [ %i.ez, %.lr.ph.i110 ] ; 2 uses
  %niter178 = phi i32 [ 0, %.lr.ph.i110.preheader.new ], [ %niter178.next.3, %.lr.ph.i110 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.03648.i112, ptr align 1 %.03947.i113, i64 %i.ek, i1 false)
  %i.es = getelementptr inbounds nuw i8, ptr %.03648.i112, i64 %i.ek ; 2 uses
  %i.et = getelementptr inbounds i8, ptr %.03947.i113, i64 %i.el ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.es, ptr align 1 %i.et, i64 %i.ek, i1 false)
  %i.eu = getelementptr inbounds nuw i8, ptr %i.es, i64 %i.ek ; 2 uses
  %i.ev = getelementptr inbounds i8, ptr %i.et, i64 %i.el ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.eu, ptr align 1 %i.ev, i64 %i.ek, i1 false)
  %i.ew = getelementptr inbounds nuw i8, ptr %i.eu, i64 %i.ek ; 2 uses
  %i.ex = getelementptr inbounds i8, ptr %i.ev, i64 %i.el ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ew, ptr align 1 %i.ex, i64 %i.ek, i1 false)
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ew, i64 %i.ek ; 2 uses
  %i.ez = getelementptr inbounds i8, ptr %i.ex, i64 %i.el ; 2 uses
  %niter178.next.3 = add i32 %niter178, 4         ; 2 uses
  %niter178.ncmp.3 = icmp eq i32 %niter178.next.3, %unroll_iter177
  br i1 %niter178.ncmp.3, label %.loopexit.i106.loopexit.unr-lcssa, label %.lr.ph.i110, !llvm.loop !11

.loopexit.i106.loopexit.unr-lcssa:                ; preds = %.lr.ph.i110
  %lcmp.mod175.not = icmp eq i32 %xtraiter173, 0
  br i1 %lcmp.mod175.not, label %.loopexit.i106, label %.lr.ph.i110.epil.preheader

.lr.ph.i110.epil.preheader:                       ; preds = %.loopexit.i106.loopexit.unr-lcssa, %.lr.ph.i110.preheader
  %.03648.i112.epil.init = phi ptr [ %i.eo, %.lr.ph.i110.preheader ], [ %i.ey, %.loopexit.i106.loopexit.unr-lcssa ]
  %.03947.i113.epil.init = phi ptr [ %i.dq, %.lr.ph.i110.preheader ], [ %i.ez, %.loopexit.i106.loopexit.unr-lcssa ]
  %lcmp.mod176 = icmp ne i32 %xtraiter173, 0
  tail call void @llvm.assume(i1 %lcmp.mod176)
  br label %.lr.ph.i110.epil

.lr.ph.i110.epil:                                 ; preds = %.lr.ph.i110.epil, %.lr.ph.i110.epil.preheader
  %.03648.i112.epil = phi ptr [ %i.fa, %.lr.ph.i110.epil ], [ %.03648.i112.epil.init, %.lr.ph.i110.epil.preheader ] ; 2 uses
  %.03947.i113.epil = phi ptr [ %i.fb, %.lr.ph.i110.epil ], [ %.03947.i113.epil.init, %.lr.ph.i110.epil.preheader ] ; 2 uses
  %epil.iter174 = phi i32 [ %epil.iter174.next, %.lr.ph.i110.epil ], [ 0, %.lr.ph.i110.epil.preheader ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.03648.i112.epil, ptr align 1 %.03947.i113.epil, i64 %i.ek, i1 false)
  %i.fa = getelementptr inbounds nuw i8, ptr %.03648.i112.epil, i64 %i.ek
  %i.fb = getelementptr inbounds i8, ptr %.03947.i113.epil, i64 %i.el
  %epil.iter174.next = add i32 %epil.iter174, 1   ; 2 uses
  %epil.iter174.cmp.not = icmp eq i32 %epil.iter174.next, %xtraiter173
  br i1 %epil.iter174.cmp.not, label %.loopexit.i106, label %.lr.ph.i110.epil, !llvm.loop !16

.loopexit.i106:                                   ; preds = %.loopexit.i106.loopexit.unr-lcssa, %.lr.ph.i110.epil, %.preheader.i105, %bb.o
  %.037.i107 = phi ptr [ null, %bb.o ], [ %i.eo, %.preheader.i105 ], [ %i.eo, %.lr.ph.i110.epil ], [ %i.eo, %.loopexit.i106.loopexit.unr-lcssa ]
  %.1.i108 = phi ptr [ %i.dq, %bb.o ], [ %i.eo, %.preheader.i105 ], [ %i.eo, %.lr.ph.i110.epil ], [ %i.eo, %.loopexit.i106.loopexit.unr-lcssa ]
  %i.fc = getelementptr inbounds nuw i8, ptr %i.b, i64 312
  %i.fd = load ptr, ptr %i.fc, align 8
  %i.fe = extractelement <2 x i32> %i.dz, i64 0
  %i.ff = extractelement <2 x i32> %i.dz, i64 1
  tail call void %i.fd(i32 noundef %i.dx, i32 noundef 0, i32 noundef %i.fe, i32 noundef %i.ff, i32 noundef %i.ec, i32 noundef %i.ef, i32 noundef %i.eg, i32 noundef %i.eh, ptr noundef %.1.i108) #10, !inline_history !14
  br label %GLES2_TexSubImage2D.exit115.sink.split

bb.q:                                             ; preds = %GLES2_TexSubImage2D.exit
  %i.fg = getelementptr inbounds nuw i8, ptr %i.d, i64 37
  %i.fh = load i8, ptr %i.fg, align 1, !range !3, !noundef !4
  %i.fi = trunc nuw i8 %i.fh to i1
  br i1 %i.fi, label %bb.r, label %GLES2_TexSubImage2D.exit115

bb.r:                                             ; preds = %bb.q
  %i.fj = load i32, ptr %i.t, align 4
  %i.fk = mul nsw i32 %i.fj, %4
  %i.fl = sext i32 %i.fk to i64
  %i.fm = getelementptr inbounds i8, ptr %3, i64 %i.fl ; 3 uses
  %i.fn = load ptr, ptr %i.x, align 8
  %i.fo = load i32, ptr %i.z, align 4
  %i.fp = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.fq = load i32, ptr %i.fp, align 8
  tail call void %i.fn(i32 noundef %i.fo, i32 noundef %i.fq) #10
  %i.fr = load i32, ptr %i.z, align 4
  %i.fs = load <2 x i32>, ptr %2, align 4
  %i.ft = sdiv <2 x i32> %i.fs, splat (i32 2)     ; 2 uses
  %i.fu = load i32, ptr %i.q, align 4             ; 2 uses
  %i.fv = add nsw i32 %i.fu, 1
  %i.fw = sdiv i32 %i.fv, 2                       ; 2 uses
  %i.fx = load i32, ptr %i.t, align 4             ; 3 uses
  %i.fy = add i32 %i.fx, 1
  %i.fz = sdiv i32 %i.fy, 2                       ; 5 uses
  %.off = add i32 %i.fu, 2
  %i.ga = icmp ult i32 %.off, 3
  %.off135 = add i32 %i.fx, 2
  %i.gb = icmp ult i32 %.off135, 3
  %or.cond.i116 = or i1 %i.ga, %i.gb
  br i1 %or.cond.i116, label %GLES2_TexSubImage2D.exit115, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.gc = add nsw i32 %4, 1
  %i.gd = sdiv i32 %i.gc, 2
  %i.ge = shl nsw i32 %i.gd, 1
  %i.gf = sext i32 %i.fw to i64
  %i.gg = shl nsw i64 %i.gf, 1                    ; 12 uses
  %i.gh = sext i32 %i.ge to i64                   ; 6 uses
  %.not.i118 = icmp eq i64 %i.gg, %i.gh
  br i1 %.not.i118, label %.loopexit.i121, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.gi = sext i32 %i.fz to i64
  %i.gj = mul nsw i64 %i.gg, %i.gi
  %i.gk = tail call noalias ptr @SDL_malloc_REAL(i64 noundef %i.gj) #10 ; 9 uses
  %.not46.i119 = icmp eq ptr %i.gk, null
  br i1 %.not46.i119, label %GLES2_TexSubImage2D.exit115, label %.preheader.i120

.preheader.i120:                                  ; preds = %bb.t
  %i.gl = icmp sgt i32 %i.fx, 0
  br i1 %i.gl, label %.lr.ph.i125.preheader, label %.loopexit.i121

.lr.ph.i125.preheader:                            ; preds = %.preheader.i120
  %i.gm = add nsw i32 %i.fz, -1
  %xtraiter161 = and i32 %i.fz, 3                 ; 3 uses
  %i.gn = icmp ult i32 %i.gm, 3
  br i1 %i.gn, label %.lr.ph.i125.epil.preheader, label %.lr.ph.i125.preheader.new

.lr.ph.i125.preheader.new:                        ; preds = %.lr.ph.i125.preheader
  %unroll_iter165 = and i32 %i.fz, -4
  br label %.lr.ph.i125

.lr.ph.i125:                                      ; preds = %.lr.ph.i125, %.lr.ph.i125.preheader.new
  %.03648.i127 = phi ptr [ %i.gk, %.lr.ph.i125.preheader.new ], [ %i.gu, %.lr.ph.i125 ] ; 2 uses
  %.03947.i128 = phi ptr [ %i.fm, %.lr.ph.i125.preheader.new ], [ %i.gv, %.lr.ph.i125 ] ; 2 uses
  %niter166 = phi i32 [ 0, %.lr.ph.i125.preheader.new ], [ %niter166.next.3, %.lr.ph.i125 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.03648.i127, ptr align 1 %.03947.i128, i64 %i.gg, i1 false)
  %i.go = getelementptr inbounds nuw i8, ptr %.03648.i127, i64 %i.gg ; 2 uses
  %i.gp = getelementptr inbounds i8, ptr %.03947.i128, i64 %i.gh ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.go, ptr align 1 %i.gp, i64 %i.gg, i1 false)
  %i.gq = getelementptr inbounds nuw i8, ptr %i.go, i64 %i.gg ; 2 uses
  %i.gr = getelementptr inbounds i8, ptr %i.gp, i64 %i.gh ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.gq, ptr align 1 %i.gr, i64 %i.gg, i1 false)
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gq, i64 %i.gg ; 2 uses
  %i.gt = getelementptr inbounds i8, ptr %i.gr, i64 %i.gh ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.gs, ptr align 1 %i.gt, i64 %i.gg, i1 false)
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gs, i64 %i.gg ; 2 uses
  %i.gv = getelementptr inbounds i8, ptr %i.gt, i64 %i.gh ; 2 uses
  %niter166.next.3 = add i32 %niter166, 4         ; 2 uses
  %niter166.ncmp.3 = icmp eq i32 %niter166.next.3, %unroll_iter165
  br i1 %niter166.ncmp.3, label %.loopexit.i121.loopexit.unr-lcssa, label %.lr.ph.i125, !llvm.loop !11

.loopexit.i121.loopexit.unr-lcssa:                ; preds = %.lr.ph.i125
  %lcmp.mod163.not = icmp eq i32 %xtraiter161, 0
  br i1 %lcmp.mod163.not, label %.loopexit.i121, label %.lr.ph.i125.epil.preheader

.lr.ph.i125.epil.preheader:                       ; preds = %.loopexit.i121.loopexit.unr-lcssa, %.lr.ph.i125.preheader
  %.03648.i127.epil.init = phi ptr [ %i.gk, %.lr.ph.i125.preheader ], [ %i.gu, %.loopexit.i121.loopexit.unr-lcssa ]
  %.03947.i128.epil.init = phi ptr [ %i.fm, %.lr.ph.i125.preheader ], [ %i.gv, %.loopexit.i121.loopexit.unr-lcssa ]
  %lcmp.mod164 = icmp ne i32 %xtraiter161, 0
  tail call void @llvm.assume(i1 %lcmp.mod164)
  br label %.lr.ph.i125.epil

.lr.ph.i125.epil:                                 ; preds = %.lr.ph.i125.epil, %.lr.ph.i125.epil.preheader
  %.03648.i127.epil = phi ptr [ %i.gw, %.lr.ph.i125.epil ], [ %.03648.i127.epil.init, %.lr.ph.i125.epil.preheader ] ; 2 uses
  %.03947.i128.epil = phi ptr [ %i.gx, %.lr.ph.i125.epil ], [ %.03947.i128.epil.init, %.lr.ph.i125.epil.preheader ] ; 2 uses
  %epil.iter162 = phi i32 [ %epil.iter162.next, %.lr.ph.i125.epil ], [ 0, %.lr.ph.i125.epil.preheader ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.03648.i127.epil, ptr align 1 %.03947.i128.epil, i64 %i.gg, i1 false)
  %i.gw = getelementptr inbounds nuw i8, ptr %.03648.i127.epil, i64 %i.gg
  %i.gx = getelementptr inbounds i8, ptr %.03947.i128.epil, i64 %i.gh
  %epil.iter162.next = add i32 %epil.iter162, 1   ; 2 uses
  %epil.iter162.cmp.not = icmp eq i32 %epil.iter162.next, %xtraiter161
  br i1 %epil.iter162.cmp.not, label %.loopexit.i121, label %.lr.ph.i125.epil, !llvm.loop !17

.loopexit.i121:                                   ; preds = %.loopexit.i121.loopexit.unr-lcssa, %.lr.ph.i125.epil, %.preheader.i120, %bb.s
  %.037.i122 = phi ptr [ null, %bb.s ], [ %i.gk, %.preheader.i120 ], [ %i.gk, %.lr.ph.i125.epil ], [ %i.gk, %.loopexit.i121.loopexit.unr-lcssa ]
  %.1.i123 = phi ptr [ %i.fm, %bb.s ], [ %i.gk, %.preheader.i120 ], [ %i.gk, %.lr.ph.i125.epil ], [ %i.gk, %.loopexit.i121.loopexit.unr-lcssa ]
  %i.gy = getelementptr inbounds nuw i8, ptr %i.b, i64 312
  %i.gz = load ptr, ptr %i.gy, align 8
  %i.ha = extractelement <2 x i32> %i.ft, i64 0
  %i.hb = extractelement <2 x i32> %i.ft, i64 1
  tail call void %i.gz(i32 noundef %i.fr, i32 noundef 0, i32 noundef %i.ha, i32 noundef %i.hb, i32 noundef %i.fw, i32 noundef %i.fz, i32 noundef 6410, i32 noundef 5121, ptr noundef %.1.i123) #10, !inline_history !14
  br label %GLES2_TexSubImage2D.exit115.sink.split

GLES2_TexSubImage2D.exit115.sink.split:           ; preds = %.loopexit.i106, %.loopexit.i121
  %.037.i122.sink = phi ptr [ %.037.i122, %.loopexit.i121 ], [ %.037.i107, %.loopexit.i106 ]
  tail call void @SDL_free_REAL(ptr noundef %.037.i122.sink) #10
  br label %GLES2_TexSubImage2D.exit115

GLES2_TexSubImage2D.exit115:                      ; preds = %GLES2_TexSubImage2D.exit115.sink.split, %bb.t, %bb.r, %bb.p, %GLES2_TexSubImage2D.exit100, %bb.q
  %.val = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.hd = load i8, ptr %i.hc, align 8, !range !3, !noundef !4
  %i.he = trunc nuw i8 %i.hd to i1
  br i1 %i.he, label %.preheader.i132, label %GL_CheckAllErrors.exit

.preheader.i132:                                  ; preds = %GLES2_TexSubImage2D.exit115
  %i.hf = getelementptr inbounds nuw i8, ptr %.val, i64 200 ; 2 uses
  %i.hg = load ptr, ptr %i.hf, align 8
  %i.hh = tail call i32 %i.hg() #10, !inline_history !5 ; 2 uses
  %.not5.i = icmp eq i32 %i.hh, 0
  br i1 %.not5.i, label %GL_CheckAllErrors.exit, label %.lr.ph.i133

.lr.ph.i133:                                      ; preds = %.preheader.i132, %bb.u
  %i.hi = phi i32 [ %i.hn, %bb.u ], [ %i.hh, %.preheader.i132 ] ; 2 uses
  %switch.tableidx = add i32 %i.hi, -1280         ; 2 uses
  %i.hj = icmp ult i32 %switch.tableidx, 6
  br i1 %i.hj, label %switch.lookup, label %bb.u

switch.lookup:                                    ; preds = %.lr.ph.i133
  %i.hk = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.GL_CheckAllErrors, i64 %i.hk
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %bb.u

bb.u:                                             ; preds = %.lr.ph.i133, %switch.lookup
  %.0.i.i = phi ptr [ %switch.load, %switch.lookup ], [ @.str.112, %.lr.ph.i133 ]
  %i.hl = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.106, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.9, i32 noundef 2064, ptr noundef nonnull @__func__.GLES2_UpdateTexture, ptr noundef nonnull %.0.i.i, i32 noundef %i.hi) #10 ; 0 uses
  %i.hm = load ptr, ptr %i.hf, align 8
  %i.hn = tail call i32 %i.hm() #10, !inline_history !5 ; 2 uses
  %.not.i134 = icmp eq i32 %i.hn, 0
  br i1 %.not.i134, label %GL_CheckAllErrors.exit, label %.lr.ph.i133

GL_CheckAllErrors.exit:                           ; preds = %bb.u, %.preheader.i132, %GLES2_TexSubImage2D.exit115, %GLES2_ActivateRenderer.exit, %bb.e
  %.0 = phi i1 [ true, %GLES2_ActivateRenderer.exit ], [ true, %bb.e ], [ true, %GLES2_TexSubImage2D.exit115 ], [ true, %.preheader.i132 ], [ false, %bb.u ]
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define internal noundef zeroext i1 @GLES2_UpdateTextureYUV(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, i32 noundef %6, ptr noundef %7, i32 noundef %8) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 736 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 312
  %i.d = load ptr, ptr %i.c, align 8              ; 6 uses
  %i.e = tail call ptr @SDL_GL_GetCurrentContext_REAL() #10
  %i.f = load ptr, ptr %i.b, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.e, %i.f
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 696
  store ptr null, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call zeroext i1 @SDL_GL_MakeCurrent_REAL(ptr noundef %i.i, ptr noundef %i.f) #10
  br i1 %i.j, label %bb.c, label %GLES2_ActivateRenderer.exit

bb.c:                                             ; preds = %bb.b, %bb.a
  %.val.i = load ptr, ptr %i.a, align 8           ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.val.i, i64 8
  %i.l = load i8, ptr %i.k, align 8, !range !3, !noundef !4
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %.preheader.i.i, label %GLES2_ActivateRenderer.exit

.preheader.i.i:                                   ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %.val.i, i64 200
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.preheader.i.i
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = tail call i32 %i.o() #10, !inline_history !8
  %.not.i.i = icmp eq i32 %i.p, 0
  br i1 %.not.i.i, label %GLES2_ActivateRenderer.exit, label %bb.d, !llvm.loop !9

GLES2_ActivateRenderer.exit:                      ; preds = %bb.d, %bb.b, %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.r = load i32, ptr %i.q, align 4
  %i.s = icmp slt i32 %i.r, 1
  br i1 %i.s, label %GL_CheckAllErrors.exit, label %bb.e

bb.e:                                             ; preds = %GLES2_ActivateRenderer.exit
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 4 uses
  %i.u = load i32, ptr %i.t, align 4
  %i.v = icmp slt i32 %i.u, 1
  br i1 %i.v, label %GL_CheckAllErrors.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 624
  store ptr null, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 3 uses
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 12 ; 6 uses
  %i.aa = load i32, ptr %i.z, align 4
  %i.ab = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.ac = load i32, ptr %i.ab, align 8
  tail call void %i.y(i32 noundef %i.aa, i32 noundef %i.ac) #10
  %i.ad = load i32, ptr %i.z, align 4
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.af = load <2 x i32>, ptr %2, align 4
  %i.ag = sdiv <2 x i32> %i.af, splat (i32 2)     ; 2 uses
  %i.ah = load i32, ptr %i.q, align 4             ; 2 uses
  %i.ai = add nsw i32 %i.ah, 1
  %i.aj = sdiv i32 %i.ai, 2                       ; 3 uses
  %i.ak = load i32, ptr %i.t, align 4             ; 3 uses
  %i.al = add i32 %i.ak, 1
  %i.am = sdiv i32 %i.al, 2                       ; 5 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 3 uses
  %i.ao = load i32, ptr %i.an, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.d, i64 20 ; 3 uses
  %i.aq = load i32, ptr %i.ap, align 4
  %.off = add i32 %i.ah, 2
  %i.ar = icmp ult i32 %.off, 3
  %.off79 = add i32 %i.ak, 2
  %i.as = icmp ult i32 %.off79, 3
  %or.cond.i = or i1 %i.ar, %i.as
  br i1 %or.cond.i, label %GLES2_TexSubImage2D.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.at = sext i32 %i.aj to i64                   ; 11 uses
  %i.au = sext i32 %8 to i64                      ; 5 uses
  %.not.i46 = icmp eq i32 %i.aj, %8
  br i1 %.not.i46, label %.loopexit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.av = sext i32 %i.am to i64
  %i.aw = mul nsw i64 %i.av, %i.at
  %i.ax = tail call noalias ptr @SDL_malloc_REAL(i64 noundef %i.aw) #10 ; 9 uses
  %.not46.i = icmp eq ptr %i.ax, null
  br i1 %.not46.i, label %GLES2_TexSubImage2D.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.h
  %i.ay = icmp sgt i32 %i.ak, 0
  br i1 %i.ay, label %.lr.ph.i.preheader, label %.loopexit.i

.lr.ph.i.preheader:                               ; preds = %.preheader.i
  %i.az = add nsw i32 %i.am, -1
  %xtraiter = and i32 %i.am, 3                    ; 3 uses
  %i.ba = icmp ult i32 %i.az, 3
  br i1 %i.ba, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i32 %i.am, -4
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.03648.i = phi ptr [ %i.ax, %.lr.ph.i.preheader.new ], [ %i.bh, %.lr.ph.i ] ; 2 uses
  %.03947.i = phi ptr [ %7, %.lr.ph.i.preheader.new ], [ %i.bi, %.lr.ph.i ] ; 2 uses
  %niter = phi i32 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.3, %.lr.ph.i ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.03648.i, ptr align 1 %.03947.i, i64 %i.at, i1 false)
  %i.bb = getelementptr inbounds nuw i8, ptr %.03648.i, i64 %i.at ; 2 uses
  %i.bc = getelementptr inbounds i8, ptr %.03947.i, i64 %i.au ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bb, ptr align 1 %i.bc, i64 %i.at, i1 false)
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.at ; 2 uses
  %i.be = getelementptr inbounds i8, ptr %i.bc, i64 %i.au ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bd, ptr align 1 %i.be, i64 %i.at, i1 false)
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.at ; 2 uses
  %i.bg = getelementptr inbounds i8, ptr %i.be, i64 %i.au ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bf, ptr align 1 %i.bg, i64 %i.at, i1 false)
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.at ; 2 uses
  %i.bi = getelementptr inbounds i8, ptr %i.bg, i64 %i.au ; 2 uses
  %niter.next.3 = add i32 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.i.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !11

.loopexit.i.loopexit.unr-lcssa:                   ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %.loopexit.i.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.03648.i.epil.init = phi ptr [ %i.ax, %.lr.ph.i.preheader ], [ %i.bh, %.loopexit.i.loopexit.unr-lcssa ]
  %.03947.i.epil.init = phi ptr [ %7, %.lr.ph.i.preheader ], [ %i.bi, %.loopexit.i.loopexit.unr-lcssa ]
  %lcmp.mod90 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod90)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.03648.i.epil = phi ptr [ %i.bj, %.lr.ph.i.epil ], [ %.03648.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %.03947.i.epil = phi ptr [ %i.bk, %.lr.ph.i.epil ], [ %.03947.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.03648.i.epil, ptr align 1 %.03947.i.epil, i64 %i.at, i1 false)
  %i.bj = getelementptr inbounds nuw i8, ptr %.03648.i.epil, i64 %i.at
  %i.bk = getelementptr inbounds i8, ptr %.03947.i.epil, i64 %i.au
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit.i, label %.lr.ph.i.epil, !llvm.loop !18

.loopexit.i:                                      ; preds = %.loopexit.i.loopexit.unr-lcssa, %.lr.ph.i.epil, %.preheader.i, %bb.g
  %.037.i = phi ptr [ null, %bb.g ], [ %i.ax, %.preheader.i ], [ %i.ax, %.lr.ph.i.epil ], [ %i.ax, %.loopexit.i.loopexit.unr-lcssa ]
  %.1.i = phi ptr [ %7, %bb.g ], [ %i.ax, %.preheader.i ], [ %i.ax, %.lr.ph.i.epil ], [ %i.ax, %.loopexit.i.loopexit.unr-lcssa ]
  %i.bl = getelementptr inbounds nuw i8, ptr %i.b, i64 312
  %i.bm = load ptr, ptr %i.bl, align 8
  %i.bn = extractelement <2 x i32> %i.ag, i64 0
  %i.bo = extractelement <2 x i32> %i.ag, i64 1
  tail call void %i.bm(i32 noundef %i.ad, i32 noundef 0, i32 noundef %i.bn, i32 noundef %i.bo, i32 noundef %i.aj, i32 noundef %i.am, i32 noundef %i.ao, i32 noundef %i.aq, ptr noundef %.1.i) #10, !inline_history !14
  tail call void @SDL_free_REAL(ptr noundef %.037.i) #10
  br label %GLES2_TexSubImage2D.exit

GLES2_TexSubImage2D.exit:                         ; preds = %bb.f, %bb.h, %.loopexit.i
  %i.bp = load ptr, ptr %i.x, align 8
  %i.bq = load i32, ptr %i.z, align 4
  %i.br = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.bs = load i32, ptr %i.br, align 8
  tail call void %i.bp(i32 noundef %i.bq, i32 noundef %i.bs) #10
  %i.bt = load i32, ptr %i.z, align 4
  %i.bu = load <2 x i32>, ptr %2, align 4
  %i.bv = sdiv <2 x i32> %i.bu, splat (i32 2)     ; 2 uses
  %i.bw = load i32, ptr %i.q, align 4             ; 2 uses
  %i.bx = add nsw i32 %i.bw, 1
  %i.by = sdiv i32 %i.bx, 2                       ; 3 uses
  %i.bz = load i32, ptr %i.t, align 4             ; 3 uses
  %i.ca = add i32 %i.bz, 1
  %i.cb = sdiv i32 %i.ca, 2                       ; 5 uses
  %i.cc = load i32, ptr %i.an, align 8
  %i.cd = load i32, ptr %i.ap, align 4
  %.off80 = add i32 %i.bw, 2
  %i.ce = icmp ult i32 %.off80, 3
  %.off81 = add i32 %i.bz, 2
  %i.cf = icmp ult i32 %.off81, 3
  %or.cond.i47 = or i1 %i.ce, %i.cf
  br i1 %or.cond.i47, label %GLES2_TexSubImage2D.exit60, label %bb.i

bb.i:                                             ; preds = %GLES2_TexSubImage2D.exit
  %i.cg = sext i32 %i.by to i64                   ; 11 uses
  %i.ch = sext i32 %6 to i64                      ; 5 uses
  %.not.i48 = icmp eq i32 %i.by, %6
  br i1 %.not.i48, label %.loopexit.i51, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ci = sext i32 %i.cb to i64
  %i.cj = mul nsw i64 %i.ci, %i.cg
  %i.ck = tail call noalias ptr @SDL_malloc_REAL(i64 noundef %i.cj) #10 ; 9 uses
  %.not46.i49 = icmp eq ptr %i.ck, null
  br i1 %.not46.i49, label %GLES2_TexSubImage2D.exit60, label %.preheader.i50

.preheader.i50:                                   ; preds = %bb.j
  %i.cl = icmp sgt i32 %i.bz, 0
  br i1 %i.cl, label %.lr.ph.i55.preheader, label %.loopexit.i51

.lr.ph.i55.preheader:                             ; preds = %.preheader.i50
  %i.cm = add nsw i32 %i.cb, -1
  %xtraiter91 = and i32 %i.cb, 3                  ; 3 uses
  %i.cn = icmp ult i32 %i.cm, 3
  br i1 %i.cn, label %.lr.ph.i55.epil.preheader, label %.lr.ph.i55.preheader.new

.lr.ph.i55.preheader.new:                         ; preds = %.lr.ph.i55.preheader
  %unroll_iter95 = and i32 %i.cb, -4
  br label %.lr.ph.i55

.lr.ph.i55:                                       ; preds = %.lr.ph.i55, %.lr.ph.i55.preheader.new
  %.03648.i57 = phi ptr [ %i.ck, %.lr.ph.i55.preheader.new ], [ %i.cu, %.lr.ph.i55 ] ; 2 uses
  %.03947.i58 = phi ptr [ %5, %.lr.ph.i55.preheader.new ], [ %i.cv, %.lr.ph.i55 ] ; 2 uses
  %niter96 = phi i32 [ 0, %.lr.ph.i55.preheader.new ], [ %niter96.next.3, %.lr.ph.i55 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.03648.i57, ptr align 1 %.03947.i58, i64 %i.cg, i1 false)
  %i.co = getelementptr inbounds nuw i8, ptr %.03648.i57, i64 %i.cg ; 2 uses
  %i.cp = getelementptr inbounds i8, ptr %.03947.i58, i64 %i.ch ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.co, ptr align 1 %i.cp, i64 %i.cg, i1 false)
  %i.cq = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.cg ; 2 uses
  %i.cr = getelementptr inbounds i8, ptr %i.cp, i64 %i.ch ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cq, ptr align 1 %i.cr, i64 %i.cg, i1 false)
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 %i.cg ; 2 uses
  %i.ct = getelementptr inbounds i8, ptr %i.cr, i64 %i.ch ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cs, ptr align 1 %i.ct, i64 %i.cg, i1 false)
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cs, i64 %i.cg ; 2 uses
  %i.cv = getelementptr inbounds i8, ptr %i.ct, i64 %i.ch ; 2 uses
  %niter96.next.3 = add i32 %niter96, 4           ; 2 uses
  %niter96.ncmp.3 = icmp eq i32 %niter96.next.3, %unroll_iter95
  br i1 %niter96.ncmp.3, label %.loopexit.i51.loopexit.unr-lcssa, label %.lr.ph.i55, !llvm.loop !11

.loopexit.i51.loopexit.unr-lcssa:                 ; preds = %.lr.ph.i55
  %lcmp.mod93.not = icmp eq i32 %xtraiter91, 0
  br i1 %lcmp.mod93.not, label %.loopexit.i51, label %.lr.ph.i55.epil.preheader

.lr.ph.i55.epil.preheader:                        ; preds = %.loopexit.i51.loopexit.unr-lcssa, %.lr.ph.i55.preheader
  %.03648.i57.epil.init = phi ptr [ %i.ck, %.lr.ph.i55.preheader ], [ %i.cu, %.loopexit.i51.loopexit.unr-lcssa ]
  %.03947.i58.epil.init = phi ptr [ %5, %.lr.ph.i55.preheader ], [ %i.cv, %.loopexit.i51.loopexit.unr-lcssa ]
  %lcmp.mod94 = icmp ne i32 %xtraiter91, 0
  tail call void @llvm.assume(i1 %lcmp.mod94)
  br label %.lr.ph.i55.epil

.lr.ph.i55.epil:                                  ; preds = %.lr.ph.i55.epil, %.lr.ph.i55.epil.preheader
  %.03648.i57.epil = phi ptr [ %i.cw, %.lr.ph.i55.epil ], [ %.03648.i57.epil.init, %.lr.ph.i55.epil.preheader ] ; 2 uses
  %.03947.i58.epil = phi ptr [ %i.cx, %.lr.ph.i55.epil ], [ %.03947.i58.epil.init, %.lr.ph.i55.epil.preheader ] ; 2 uses
  %epil.iter92 = phi i32 [ %epil.iter92.next, %.lr.ph.i55.epil ], [ 0, %.lr.ph.i55.epil.preheader ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.03648.i57.epil, ptr align 1 %.03947.i58.epil, i64 %i.cg, i1 false)
  %i.cw = getelementptr inbounds nuw i8, ptr %.03648.i57.epil, i64 %i.cg
  %i.cx = getelementptr inbounds i8, ptr %.03947.i58.epil, i64 %i.ch
  %epil.iter92.next = add i32 %epil.iter92, 1     ; 2 uses
  %epil.iter92.cmp.not = icmp eq i32 %epil.iter92.next, %xtraiter91
  br i1 %epil.iter92.cmp.not, label %.loopexit.i51, label %.lr.ph.i55.epil, !llvm.loop !19

.loopexit.i51:                                    ; preds = %.loopexit.i51.loopexit.unr-lcssa, %.lr.ph.i55.epil, %.preheader.i50, %bb.i
  %.037.i52 = phi ptr [ null, %bb.i ], [ %i.ck, %.preheader.i50 ], [ %i.ck, %.lr.ph.i55.epil ], [ %i.ck, %.loopexit.i51.loopexit.unr-lcssa ]
  %.1.i53 = phi ptr [ %5, %bb.i ], [ %i.ck, %.preheader.i50 ], [ %i.ck, %.lr.ph.i55.epil ], [ %i.ck, %.loopexit.i51.loopexit.unr-lcssa ]
  %i.cy = getelementptr inbounds nuw i8, ptr %i.b, i64 312
  %i.cz = load ptr, ptr %i.cy, align 8
  %i.da = extractelement <2 x i32> %i.bv, i64 0
  %i.db = extractelement <2 x i32> %i.bv, i64 1
  tail call void %i.cz(i32 noundef %i.bt, i32 noundef 0, i32 noundef %i.da, i32 noundef %i.db, i32 noundef %i.by, i32 noundef %i.cb, i32 noundef %i.cc, i32 noundef %i.cd, ptr noundef %.1.i53) #10, !inline_history !14
  tail call void @SDL_free_REAL(ptr noundef %.037.i52) #10
  br label %GLES2_TexSubImage2D.exit60

GLES2_TexSubImage2D.exit60:                       ; preds = %GLES2_TexSubImage2D.exit, %bb.j, %.loopexit.i51
  %i.dc = load ptr, ptr %i.x, align 8
  %i.dd = load i32, ptr %i.z, align 4
  %i.de = load i32, ptr %i.d, align 8
  tail call void %i.dc(i32 noundef %i.dd, i32 noundef %i.de) #10
  %i.df = load i32, ptr %i.z, align 4
  %i.dg = load i32, ptr %2, align 4
  %i.dh = load i32, ptr %i.ae, align 4
  %i.di = load i32, ptr %i.q, align 4             ; 4 uses
  %i.dj = load i32, ptr %i.t, align 4             ; 7 uses
  %i.dk = load i32, ptr %i.an, align 8
  %i.dl = load i32, ptr %i.ap, align 4
  %i.dm = icmp eq i32 %i.di, 0
  %i.dn = icmp eq i32 %i.dj, 0
  %or.cond.i61 = or i1 %i.dm, %i.dn
  br i1 %or.cond.i61, label %GLES2_TexSubImage2D.exit74, label %bb.k

bb.k:                                             ; preds = %GLES2_TexSubImage2D.exit60
  %i.do = sext i32 %i.di to i64                   ; 11 uses
  %i.dp = sext i32 %4 to i64                      ; 5 uses
  %.not.i62 = icmp eq i32 %i.di, %4
  br i1 %.not.i62, label %.loopexit.i65, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.dq = sext i32 %i.dj to i64
  %i.dr = mul nsw i64 %i.dq, %i.do
  %i.ds = tail call noalias ptr @SDL_malloc_REAL(i64 noundef %i.dr) #10 ; 9 uses
  %.not46.i63 = icmp eq ptr %i.ds, null
  br i1 %.not46.i63, label %GLES2_TexSubImage2D.exit74, label %.preheader.i64

.preheader.i64:                                   ; preds = %bb.l
  %i.dt = icmp sgt i32 %i.dj, 0
  br i1 %i.dt, label %.lr.ph.i69.preheader, label %.loopexit.i65

.lr.ph.i69.preheader:                             ; preds = %.preheader.i64
  %xtraiter97 = and i32 %i.dj, 3                  ; 3 uses
  %i.du = icmp ult i32 %i.dj, 4
  br i1 %i.du, label %.lr.ph.i69.epil.preheader, label %.lr.ph.i69.preheader.new

.lr.ph.i69.preheader.new:                         ; preds = %.lr.ph.i69.preheader
  %unroll_iter101 = and i32 %i.dj, 2147483644
  br label %.lr.ph.i69

.lr.ph.i69:                                       ; preds = %.lr.ph.i69, %.lr.ph.i69.preheader.new
  %.03648.i71 = phi ptr [ %i.ds, %.lr.ph.i69.preheader.new ], [ %i.eb, %.lr.ph.i69 ] ; 2 uses
  %.03947.i72 = phi ptr [ %3, %.lr.ph.i69.preheader.new ], [ %i.ec, %.lr.ph.i69 ] ; 2 uses
  %niter102 = phi i32 [ 0, %.lr.ph.i69.preheader.new ], [ %niter102.next.3, %.lr.ph.i69 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.03648.i71, ptr align 1 %.03947.i72, i64 %i.do, i1 false)
  %i.dv = getelementptr inbounds nuw i8, ptr %.03648.i71, i64 %i.do ; 2 uses
  %i.dw = getelementptr inbounds i8, ptr %.03947.i72, i64 %i.dp ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dv, ptr align 1 %i.dw, i64 %i.do, i1 false)
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dv, i64 %i.do ; 2 uses
  %i.dy = getelementptr inbounds i8, ptr %i.dw, i64 %i.dp ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dx, ptr align 1 %i.dy, i64 %i.do, i1 false)
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dx, i64 %i.do ; 2 uses
  %i.ea = getelementptr inbounds i8, ptr %i.dy, i64 %i.dp ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dz, ptr align 1 %i.ea, i64 %i.do, i1 false)
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dz, i64 %i.do ; 2 uses
  %i.ec = getelementptr inbounds i8, ptr %i.ea, i64 %i.dp ; 2 uses
  %niter102.next.3 = add nuw nsw i32 %niter102, 4 ; 2 uses
  %niter102.ncmp.3 = icmp eq i32 %niter102.next.3, %unroll_iter101
  br i1 %niter102.ncmp.3, label %.loopexit.i65.loopexit.unr-lcssa, label %.lr.ph.i69, !llvm.loop !11

.loopexit.i65.loopexit.unr-lcssa:                 ; preds = %.lr.ph.i69
  %lcmp.mod99.not = icmp eq i32 %xtraiter97, 0
  br i1 %lcmp.mod99.not, label %.loopexit.i65, label %.lr.ph.i69.epil.preheader

.lr.ph.i69.epil.preheader:                        ; preds = %.loopexit.i65.loopexit.unr-lcssa, %.lr.ph.i69.preheader
  %.03648.i71.epil.init = phi ptr [ %i.ds, %.lr.ph.i69.preheader ], [ %i.eb, %.loopexit.i65.loopexit.unr-lcssa ]
  %.03947.i72.epil.init = phi ptr [ %3, %.lr.ph.i69.preheader ], [ %i.ec, %.loopexit.i65.loopexit.unr-lcssa ]
  %lcmp.mod100 = icmp ne i32 %xtraiter97, 0
  tail call void @llvm.assume(i1 %lcmp.mod100)
  br label %.lr.ph.i69.epil

.lr.ph.i69.epil:                                  ; preds = %.lr.ph.i69.epil, %.lr.ph.i69.epil.preheader
  %.03648.i71.epil = phi ptr [ %i.ed, %.lr.ph.i69.epil ], [ %.03648.i71.epil.init, %.lr.ph.i69.epil.preheader ] ; 2 uses
  %.03947.i72.epil = phi ptr [ %i.ee, %.lr.ph.i69.epil ], [ %.03947.i72.epil.init, %.lr.ph.i69.epil.preheader ] ; 2 uses
  %epil.iter98 = phi i32 [ %epil.iter98.next, %.lr.ph.i69.epil ], [ 0, %.lr.ph.i69.epil.preheader ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.03648.i71.epil, ptr align 1 %.03947.i72.epil, i64 %i.do, i1 false)
  %i.ed = getelementptr inbounds nuw i8, ptr %.03648.i71.epil, i64 %i.do
  %i.ee = getelementptr inbounds i8, ptr %.03947.i72.epil, i64 %i.dp
  %epil.iter98.next = add i32 %epil.iter98, 1     ; 2 uses
  %epil.iter98.cmp.not = icmp eq i32 %epil.iter98.next, %xtraiter97
  br i1 %epil.iter98.cmp.not, label %.loopexit.i65, label %.lr.ph.i69.epil, !llvm.loop !20

.loopexit.i65:                                    ; preds = %.loopexit.i65.loopexit.unr-lcssa, %.lr.ph.i69.epil, %.preheader.i64, %bb.k
  %.037.i66 = phi ptr [ null, %bb.k ], [ %i.ds, %.preheader.i64 ], [ %i.ds, %.lr.ph.i69.epil ], [ %i.ds, %.loopexit.i65.loopexit.unr-lcssa ]
  %.1.i67 = phi ptr [ %3, %bb.k ], [ %i.ds, %.preheader.i64 ], [ %i.ds, %.lr.ph.i69.epil ], [ %i.ds, %.loopexit.i65.loopexit.unr-lcssa ]
  %i.ef = getelementptr inbounds nuw i8, ptr %i.b, i64 312
  %i.eg = load ptr, ptr %i.ef, align 8
  tail call void %i.eg(i32 noundef %i.df, i32 noundef 0, i32 noundef %i.dg, i32 noundef %i.dh, i32 noundef %i.di, i32 noundef %i.dj, i32 noundef %i.dk, i32 noundef %i.dl, ptr noundef %.1.i67) #10, !inline_history !14
  tail call void @SDL_free_REAL(ptr noundef %.037.i66) #10
  br label %GLES2_TexSubImage2D.exit74

GLES2_TexSubImage2D.exit74:                       ; preds = %GLES2_TexSubImage2D.exit60, %bb.l, %.loopexit.i65
  %.val = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.ei = load i8, ptr %i.eh, align 8, !range !3, !noundef !4
  %i.ej = trunc nuw i8 %i.ei to i1
  br i1 %i.ej, label %.preheader.i76, label %GL_CheckAllErrors.exit

.preheader.i76:                                   ; preds = %GLES2_TexSubImage2D.exit74
  %i.ek = getelementptr inbounds nuw i8, ptr %.val, i64 200 ; 2 uses
  %i.el = load ptr, ptr %i.ek, align 8
  %i.em = tail call i32 %i.el() #10, !inline_history !5 ; 2 uses
  %.not5.i = icmp eq i32 %i.em, 0
  br i1 %.not5.i, label %GL_CheckAllErrors.exit, label %.lr.ph.i77

.lr.ph.i77:                                       ; preds = %.preheader.i76, %bb.m
  %i.en = phi i32 [ %i.es, %bb.m ], [ %i.em, %.preheader.i76 ] ; 2 uses
  %switch.tableidx = add i32 %i.en, -1280         ; 2 uses
  %i.eo = icmp ult i32 %switch.tableidx, 6
  br i1 %i.eo, label %switch.lookup, label %bb.m

switch.lookup:                                    ; preds = %.lr.ph.i77
  %i.ep = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.GL_CheckAllErrors, i64 %i.ep
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph.i77, %switch.lookup
  %.0.i.i = phi ptr [ %switch.load, %switch.lookup ], [ @.str.112, %.lr.ph.i77 ]
  %i.eq = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.106, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.9, i32 noundef 2116, ptr noundef nonnull @__func__.GLES2_UpdateTextureYUV, ptr noundef nonnull %.0.i.i, i32 noundef %i.en) #10 ; 0 uses
  %i.er = load ptr, ptr %i.ek, align 8
  %i.es = tail call i32 %i.er() #10, !inline_history !5 ; 2 uses
  %.not.i78 = icmp eq i32 %i.es, 0
  br i1 %.not.i78, label %GL_CheckAllErrors.exit, label %.lr.ph.i77

GL_CheckAllErrors.exit:                           ; preds = %bb.m, %.preheader.i76, %GLES2_TexSubImage2D.exit74, %GLES2_ActivateRenderer.exit, %bb.e
  %.0 = phi i1 [ true, %GLES2_ActivateRenderer.exit ], [ true, %bb.e ], [ true, %GLES2_TexSubImage2D.exit74 ], [ true, %.preheader.i76 ], [ false, %bb.m ]
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define internal noundef zeroext i1 @GLES2_UpdateTextureNV(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, i32 noundef %6) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 736 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 312
  %i.d = load ptr, ptr %i.c, align 8              ; 5 uses
  %i.e = tail call ptr @SDL_GL_GetCurrentContext_REAL() #10
  %i.f = load ptr, ptr %i.b, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.e, %i.f
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 696
  store ptr null, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call zeroext i1 @SDL_GL_MakeCurrent_REAL(ptr noundef %i.i, ptr noundef %i.f) #10
  br i1 %i.j, label %bb.c, label %GLES2_ActivateRenderer.exit

bb.c:                                             ; preds = %bb.b, %bb.a
  %.val.i = load ptr, ptr %i.a, align 8           ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.val.i, i64 8
  %i.l = load i8, ptr %i.k, align 8, !range !3, !noundef !4
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %.preheader.i.i, label %GLES2_ActivateRenderer.exit

.preheader.i.i:                                   ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %.val.i, i64 200
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.preheader.i.i
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = tail call i32 %i.o() #10, !inline_history !8
  %.not.i.i = icmp eq i32 %i.p, 0
  br i1 %.not.i.i, label %GLES2_ActivateRenderer.exit, label %bb.d, !llvm.loop !9

GLES2_ActivateRenderer.exit:                      ; preds = %bb.d, %bb.b, %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.r = load i32, ptr %i.q, align 4
  %i.s = icmp slt i32 %i.r, 1
  br i1 %i.s, label %GL_CheckAllErrors.exit, label %bb.e

bb.e:                                             ; preds = %GLES2_ActivateRenderer.exit
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 3 uses
  %i.u = load i32, ptr %i.t, align 4
  %i.v = icmp slt i32 %i.u, 1
  br i1 %i.v, label %GL_CheckAllErrors.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 624
  store ptr null, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 12 ; 4 uses
  %i.aa = load i32, ptr %i.z, align 4
  %i.ab = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.ac = load i32, ptr %i.ab, align 8
  tail call void %i.y(i32 noundef %i.aa, i32 noundef %i.ac) #10
  %i.ad = load i32, ptr %i.z, align 4
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.af = load <2 x i32>, ptr %2, align 4
  %i.ag = sdiv <2 x i32> %i.af, splat (i32 2)     ; 2 uses
  %i.ah = load i32, ptr %i.q, align 4             ; 2 uses
  %i.ai = add nsw i32 %i.ah, 1
  %i.aj = sdiv i32 %i.ai, 2                       ; 2 uses
  %i.ak = load i32, ptr %i.t, align 4             ; 3 uses
  %i.al = add i32 %i.ak, 1
  %i.am = sdiv i32 %i.al, 2                       ; 5 uses
  %.off = add i32 %i.ah, 2
  %i.an = icmp ult i32 %.off, 3
  %.off50 = add i32 %i.ak, 2
  %i.ao = icmp ult i32 %.off50, 3
  %or.cond.i = or i1 %i.an, %i.ao
  br i1 %or.cond.i, label %GLES2_TexSubImage2D.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ap = sext i32 %i.aj to i64
  %i.aq = shl nsw i64 %i.ap, 1                    ; 12 uses
  %i.ar = sext i32 %6 to i64                      ; 6 uses
  %.not.i31 = icmp eq i64 %i.aq, %i.ar
  br i1 %.not.i31, label %.loopexit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.as = sext i32 %i.am to i64
  %i.at = mul nsw i64 %i.aq, %i.as
  %i.au = tail call noalias ptr @SDL_malloc_REAL(i64 noundef %i.at) #10 ; 9 uses
  %.not46.i = icmp eq ptr %i.au, null
  br i1 %.not46.i, label %GLES2_TexSubImage2D.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.h
  %i.av = icmp sgt i32 %i.ak, 0
  br i1 %i.av, label %.lr.ph.i.preheader, label %.loopexit.i

.lr.ph.i.preheader:                               ; preds = %.preheader.i
  %i.aw = add nsw i32 %i.am, -1
  %xtraiter = and i32 %i.am, 3                    ; 3 uses
  %i.ax = icmp ult i32 %i.aw, 3
  br i1 %i.ax, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i32 %i.am, -4
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.03648.i = phi ptr [ %i.au, %.lr.ph.i.preheader.new ], [ %i.be, %.lr.ph.i ] ; 2 uses
  %.03947.i = phi ptr [ %5, %.lr.ph.i.preheader.new ], [ %i.bf, %.lr.ph.i ] ; 2 uses
  %niter = phi i32 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.3, %.lr.ph.i ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.03648.i, ptr align 1 %.03947.i, i64 %i.aq, i1 false)
  %i.ay = getelementptr inbounds nuw i8, ptr %.03648.i, i64 %i.aq ; 2 uses
  %i.az = getelementptr inbounds i8, ptr %.03947.i, i64 %i.ar ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ay, ptr align 1 %i.az, i64 %i.aq, i1 false)
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.aq ; 2 uses
  %i.bb = getelementptr inbounds i8, ptr %i.az, i64 %i.ar ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ba, ptr align 1 %i.bb, i64 %i.aq, i1 false)
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.aq ; 2 uses
  %i.bd = getelementptr inbounds i8, ptr %i.bb, i64 %i.ar ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bc, ptr align 1 %i.bd, i64 %i.aq, i1 false)
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.aq ; 2 uses
  %i.bf = getelementptr inbounds i8, ptr %i.bd, i64 %i.ar ; 2 uses
  %niter.next.3 = add i32 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.i.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !11

.loopexit.i.loopexit.unr-lcssa:                   ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %.loopexit.i.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.03648.i.epil.init = phi ptr [ %i.au, %.lr.ph.i.preheader ], [ %i.be, %.loopexit.i.loopexit.unr-lcssa ]
  %.03947.i.epil.init = phi ptr [ %5, %.lr.ph.i.preheader ], [ %i.bf, %.loopexit.i.loopexit.unr-lcssa ]
  %lcmp.mod60 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod60)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.03648.i.epil = phi ptr [ %i.bg, %.lr.ph.i.epil ], [ %.03648.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %.03947.i.epil = phi ptr [ %i.bh, %.lr.ph.i.epil ], [ %.03947.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.03648.i.epil, ptr align 1 %.03947.i.epil, i64 %i.aq, i1 false)
  %i.bg = getelementptr inbounds nuw i8, ptr %.03648.i.epil, i64 %i.aq
  %i.bh = getelementptr inbounds i8, ptr %.03947.i.epil, i64 %i.ar
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit.i, label %.lr.ph.i.epil, !llvm.loop !21

.loopexit.i:                                      ; preds = %.loopexit.i.loopexit.unr-lcssa, %.lr.ph.i.epil, %.preheader.i, %bb.g
  %.037.i = phi ptr [ null, %bb.g ], [ %i.au, %.preheader.i ], [ %i.au, %.lr.ph.i.epil ], [ %i.au, %.loopexit.i.loopexit.unr-lcssa ]
  %.1.i = phi ptr [ %5, %bb.g ], [ %i.au, %.preheader.i ], [ %i.au, %.lr.ph.i.epil ], [ %i.au, %.loopexit.i.loopexit.unr-lcssa ]
  %i.bi = getelementptr inbounds nuw i8, ptr %i.b, i64 312
  %i.bj = load ptr, ptr %i.bi, align 8
  %i.bk = extractelement <2 x i32> %i.ag, i64 0
  %i.bl = extractelement <2 x i32> %i.ag, i64 1
  tail call void %i.bj(i32 noundef %i.ad, i32 noundef 0, i32 noundef %i.bk, i32 noundef %i.bl, i32 noundef %i.aj, i32 noundef %i.am, i32 noundef 6410, i32 noundef 5121, ptr noundef %.1.i) #10, !inline_history !14
  tail call void @SDL_free_REAL(ptr noundef %.037.i) #10
  br label %GLES2_TexSubImage2D.exit

GLES2_TexSubImage2D.exit:                         ; preds = %bb.f, %bb.h, %.loopexit.i
  %i.bm = load ptr, ptr %i.x, align 8
  %i.bn = load i32, ptr %i.z, align 4
  %i.bo = load i32, ptr %i.d, align 8
  tail call void %i.bm(i32 noundef %i.bn, i32 noundef %i.bo) #10
  %i.bp = load i32, ptr %i.z, align 4
  %i.bq = load i32, ptr %2, align 4
  %i.br = load i32, ptr %i.ae, align 4
  %i.bs = load i32, ptr %i.q, align 4             ; 4 uses
  %i.bt = load i32, ptr %i.t, align 4             ; 7 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.bv = load i32, ptr %i.bu, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  %i.bx = load i32, ptr %i.bw, align 4
  %i.by = icmp eq i32 %i.bs, 0
  %i.bz = icmp eq i32 %i.bt, 0
  %or.cond.i32 = or i1 %i.by, %i.bz
  br i1 %or.cond.i32, label %GLES2_TexSubImage2D.exit45, label %bb.i

bb.i:                                             ; preds = %GLES2_TexSubImage2D.exit
  %i.ca = sext i32 %i.bs to i64                   ; 11 uses
  %i.cb = sext i32 %4 to i64                      ; 5 uses
  %.not.i33 = icmp eq i32 %i.bs, %4
  br i1 %.not.i33, label %.loopexit.i36, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cc = sext i32 %i.bt to i64
  %i.cd = mul nsw i64 %i.cc, %i.ca
  %i.ce = tail call noalias ptr @SDL_malloc_REAL(i64 noundef %i.cd) #10 ; 9 uses
  %.not46.i34 = icmp eq ptr %i.ce, null
  br i1 %.not46.i34, label %GLES2_TexSubImage2D.exit45, label %.preheader.i35

.preheader.i35:                                   ; preds = %bb.j
  %i.cf = icmp sgt i32 %i.bt, 0
  br i1 %i.cf, label %.lr.ph.i40.preheader, label %.loopexit.i36

.lr.ph.i40.preheader:                             ; preds = %.preheader.i35
  %xtraiter61 = and i32 %i.bt, 3                  ; 3 uses
  %i.cg = icmp ult i32 %i.bt, 4
  br i1 %i.cg, label %.lr.ph.i40.epil.preheader, label %.lr.ph.i40.preheader.new

.lr.ph.i40.preheader.new:                         ; preds = %.lr.ph.i40.preheader
  %unroll_iter65 = and i32 %i.bt, 2147483644
  br label %.lr.ph.i40

.lr.ph.i40:                                       ; preds = %.lr.ph.i40, %.lr.ph.i40.preheader.new
  %.03648.i42 = phi ptr [ %i.ce, %.lr.ph.i40.preheader.new ], [ %i.cn, %.lr.ph.i40 ] ; 2 uses
  %.03947.i43 = phi ptr [ %3, %.lr.ph.i40.preheader.new ], [ %i.co, %.lr.ph.i40 ] ; 2 uses
  %niter66 = phi i32 [ 0, %.lr.ph.i40.preheader.new ], [ %niter66.next.3, %.lr.ph.i40 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.03648.i42, ptr align 1 %.03947.i43, i64 %i.ca, i1 false)
  %i.ch = getelementptr inbounds nuw i8, ptr %.03648.i42, i64 %i.ca ; 2 uses
  %i.ci = getelementptr inbounds i8, ptr %.03947.i43, i64 %i.cb ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ch, ptr align 1 %i.ci, i64 %i.ca, i1 false)
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.ca ; 2 uses
  %i.ck = getelementptr inbounds i8, ptr %i.ci, i64 %i.cb ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cj, ptr align 1 %i.ck, i64 %i.ca, i1 false)
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.ca ; 2 uses
  %i.cm = getelementptr inbounds i8, ptr %i.ck, i64 %i.cb ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cl, ptr align 1 %i.cm, i64 %i.ca, i1 false)
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.ca ; 2 uses
  %i.co = getelementptr inbounds i8, ptr %i.cm, i64 %i.cb ; 2 uses
  %niter66.next.3 = add nuw nsw i32 %niter66, 4   ; 2 uses
  %niter66.ncmp.3 = icmp eq i32 %niter66.next.3, %unroll_iter65
  br i1 %niter66.ncmp.3, label %.loopexit.i36.loopexit.unr-lcssa, label %.lr.ph.i40, !llvm.loop !11

.loopexit.i36.loopexit.unr-lcssa:                 ; preds = %.lr.ph.i40
  %lcmp.mod63.not = icmp eq i32 %xtraiter61, 0
  br i1 %lcmp.mod63.not, label %.loopexit.i36, label %.lr.ph.i40.epil.preheader

.lr.ph.i40.epil.preheader:                        ; preds = %.loopexit.i36.loopexit.unr-lcssa, %.lr.ph.i40.preheader
  %.03648.i42.epil.init = phi ptr [ %i.ce, %.lr.ph.i40.preheader ], [ %i.cn, %.loopexit.i36.loopexit.unr-lcssa ]
  %.03947.i43.epil.init = phi ptr [ %3, %.lr.ph.i40.preheader ], [ %i.co, %.loopexit.i36.loopexit.unr-lcssa ]
  %lcmp.mod64 = icmp ne i32 %xtraiter61, 0
  tail call void @llvm.assume(i1 %lcmp.mod64)
  br label %.lr.ph.i40.epil

.lr.ph.i40.epil:                                  ; preds = %.lr.ph.i40.epil, %.lr.ph.i40.epil.preheader
  %.03648.i42.epil = phi ptr [ %i.cp, %.lr.ph.i40.epil ], [ %.03648.i42.epil.init, %.lr.ph.i40.epil.preheader ] ; 2 uses
  %.03947.i43.epil = phi ptr [ %i.cq, %.lr.ph.i40.epil ], [ %.03947.i43.epil.init, %.lr.ph.i40.epil.preheader ] ; 2 uses
  %epil.iter62 = phi i32 [ %epil.iter62.next, %.lr.ph.i40.epil ], [ 0, %.lr.ph.i40.epil.preheader ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.03648.i42.epil, ptr align 1 %.03947.i43.epil, i64 %i.ca, i1 false)
  %i.cp = getelementptr inbounds nuw i8, ptr %.03648.i42.epil, i64 %i.ca
  %i.cq = getelementptr inbounds i8, ptr %.03947.i43.epil, i64 %i.cb
  %epil.iter62.next = add i32 %epil.iter62, 1     ; 2 uses
  %epil.iter62.cmp.not = icmp eq i32 %epil.iter62.next, %xtraiter61
  br i1 %epil.iter62.cmp.not, label %.loopexit.i36, label %.lr.ph.i40.epil, !llvm.loop !22

.loopexit.i36:                                    ; preds = %.loopexit.i36.loopexit.unr-lcssa, %.lr.ph.i40.epil, %.preheader.i35, %bb.i
  %.037.i37 = phi ptr [ null, %bb.i ], [ %i.ce, %.preheader.i35 ], [ %i.ce, %.lr.ph.i40.epil ], [ %i.ce, %.loopexit.i36.loopexit.unr-lcssa ]
  %.1.i38 = phi ptr [ %3, %bb.i ], [ %i.ce, %.preheader.i35 ], [ %i.ce, %.lr.ph.i40.epil ], [ %i.ce, %.loopexit.i36.loopexit.unr-lcssa ]
  %i.cr = getelementptr inbounds nuw i8, ptr %i.b, i64 312
  %i.cs = load ptr, ptr %i.cr, align 8
  tail call void %i.cs(i32 noundef %i.bp, i32 noundef 0, i32 noundef %i.bq, i32 noundef %i.br, i32 noundef %i.bs, i32 noundef %i.bt, i32 noundef %i.bv, i32 noundef %i.bx, ptr noundef %.1.i38) #10, !inline_history !14
  tail call void @SDL_free_REAL(ptr noundef %.037.i37) #10
  br label %GLES2_TexSubImage2D.exit45

GLES2_TexSubImage2D.exit45:                       ; preds = %GLES2_TexSubImage2D.exit, %bb.j, %.loopexit.i36
  %.val = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.cu = load i8, ptr %i.ct, align 8, !range !3, !noundef !4
  %i.cv = trunc nuw i8 %i.cu to i1
  br i1 %i.cv, label %.preheader.i47, label %GL_CheckAllErrors.exit

.preheader.i47:                                   ; preds = %GLES2_TexSubImage2D.exit45
  %i.cw = getelementptr inbounds nuw i8, ptr %.val, i64 200 ; 2 uses
  %i.cx = load ptr, ptr %i.cw, align 8
  %i.cy = tail call i32 %i.cx() #10, !inline_history !5 ; 2 uses
  %.not5.i = icmp eq i32 %i.cy, 0
  br i1 %.not5.i, label %GL_CheckAllErrors.exit, label %.lr.ph.i48

.lr.ph.i48:                                       ; preds = %.preheader.i47, %bb.k
  %i.cz = phi i32 [ %i.de, %bb.k ], [ %i.cy, %.preheader.i47 ] ; 2 uses
  %switch.tableidx = add i32 %i.cz, -1280         ; 2 uses
  %i.da = icmp ult i32 %switch.tableidx, 6
  br i1 %i.da, label %switch.lookup, label %bb.k

switch.lookup:                                    ; preds = %.lr.ph.i48
  %i.db = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.GL_CheckAllErrors, i64 %i.db
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph.i48, %switch.lookup
  %.0.i.i = phi ptr [ %switch.load, %switch.lookup ], [ @.str.112, %.lr.ph.i48 ]
  %i.dc = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.106, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.9, i32 noundef 2156, ptr noundef nonnull @__func__.GLES2_UpdateTextureNV, ptr noundef nonnull %.0.i.i, i32 noundef %i.cz) #10 ; 0 uses
  %i.dd = load ptr, ptr %i.cw, align 8
  %i.de = tail call i32 %i.dd() #10, !inline_history !5 ; 2 uses
  %.not.i49 = icmp eq i32 %i.de, 0
  br i1 %.not.i49, label %GL_CheckAllErrors.exit, label %.lr.ph.i48

GL_CheckAllErrors.exit:                           ; preds = %bb.k, %.preheader.i47, %GLES2_TexSubImage2D.exit45, %GLES2_ActivateRenderer.exit, %bb.e
  %.0 = phi i1 [ true, %GLES2_ActivateRenderer.exit ], [ true, %bb.e ], [ true, %GLES2_TexSubImage2D.exit45 ], [ true, %.preheader.i47 ], [ false, %bb.k ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef zeroext i1 @GLES2_LockTexture(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %3, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %4) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 312
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 4
end_hunk_0
