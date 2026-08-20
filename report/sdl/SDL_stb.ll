inline.NumInlined: 380
inline.NumDeleted: 85
loop-unroll.NumCompletelyUnrolled: 27
loop-unroll.NumRuntimeUnrolled: 59
loop-unroll.NumUnrolled: 91
begin_hunk_0_@SDL_LoadPNG_IO_REAL:bb.a

._crit_edge.i:                                    ; preds = %._crit_edge.i.unr-lcssa, %.epil.preheader
  %.lcssa46 = phi ptr [ %i.hx, %._crit_edge.i.unr-lcssa ], [ %i.if, %.epil.preheader ]
  %.lcssa = phi ptr [ %i.ic, %._crit_edge.i.unr-lcssa ], [ %i.ik, %.epil.preheader ]
  %i.il = getelementptr inbounds i8, ptr %.lcssa, i64 %i.hj
  %i.im = add nuw nsw i32 %.0125211.i, 1          ; 2 uses
  %exitcond225.not.i = icmp eq i32 %i.im, %i.gz
  br i1 %exitcond225.not.i, label %._crit_edge212.split.i, label %.preheader204.i, !llvm.loop !28

bb.ag:                                            ; preds = %bb.z
  %i.in = call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.33, i32 noundef %.pre.i) #13 ; 0 uses
  br label %.thread185.i

._crit_edge212.split.i:                           ; preds = %._crit_edge.i, %.preheader204.lr.ph.i, %bb.af
  call void @SDL_free_REAL(ptr noundef nonnull %.020.i.i.i) #13
  br label %SDL_LoadSTB_IO.exit

.thread185.i:                                     ; preds = %bb.ag, %bb.ae, %bb.aa, %bb.r
  %.0143171175189.i = phi ptr [ %i.az, %bb.r ], [ %.020.i.i.i, %bb.ag ], [ %.020.i.i.i, %bb.ae ], [ %.020.i.i.i, %bb.aa ]
  call void @SDL_free_REAL(ptr noundef nonnull %.0143171175189.i) #13
  %i.io = call i64 @SDL_SeekIO_REAL(ptr noundef nonnull %0, i64 noundef %i.r, i32 noundef 0) #13 ; 0 uses
  br label %SDL_LoadSTB_IO.exit

SDL_LoadSTB_IO.exit:                              ; preds = %bb.q, %.thread182.i, %.loopexit.i, %._crit_edge212.split.i, %.thread185.i
  %.0.i8 = phi ptr [ null, %bb.q ], [ null, %.thread185.i ], [ %i.ha, %._crit_edge212.split.i ], [ %i.gc, %.loopexit.i ], [ %i.ei, %.thread182.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  br label %bb.ah

bb.ah:                                            ; preds = %SDL_LoadSTB_IO.exit, %bb.d
  %.0 = phi ptr [ %.0.i8, %SDL_LoadSTB_IO.exit ], [ null, %bb.d ] ; 2 uses
  br i1 %1, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.ip = call zeroext i1 @SDL_CloseIO_REAL(ptr noundef nonnull %0) #13 ; 0 uses
  br label %bb.aj

bb.aj:                                            ; preds = %.thread, %bb.ai, %bb.ah
  %.017 = phi ptr [ null, %.thread ], [ %.0, %bb.ai ], [ %.0, %bb.ah ]
  ret ptr %.017
}

declare zeroext i1 @SDL_CloseIO_REAL(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden ptr @SDL_LoadPNG_REAL(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @SDL_IOFromFile_REAL(ptr noundef %0, ptr noundef nonnull @.str.4) #13 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @SDL_LoadPNG_IO_REAL(ptr noundef nonnull %i.a, i1 noundef zeroext true)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.b, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

declare ptr @SDL_IOFromFile_REAL(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden zeroext i1 @SDL_SavePNG_IO_REAL(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.tdefl_output_buffer, align 8 ; 28 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = tail call zeroext i1 @SDL_SurfaceValid(ptr noundef %0) #13
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.5) #13 ; 0 uses
  br label %.thread115

bb.c:                                             ; preds = %bb.a
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.d = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.6) #13 ; 0 uses
  br label %.thread115

bb.e:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.f = load i32, ptr %i.e, align 4              ; 5 uses
  %.not96 = icmp eq i32 %i.f, 0
  %.mask = and i32 %i.f, -268435456
  %.not97 = icmp eq i32 %.mask, 268435456
  %or.cond108 = or i1 %.not96, %.not97
  br i1 %or.cond108, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  %i.g = lshr i32 %i.f, 24
  %i.h = and i32 %i.g, 15
  switch i32 %i.h, label %bb.m [
    i32 1, label %bb.g
    i32 12, label %bb.g
    i32 2, label %bb.g
    i32 3, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f, %bb.f, %bb.f, %bb.f
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %.not98 = icmp eq ptr %i.j, null
  br i1 %.not98, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.k = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.7) #13 ; 0 uses
  br label %.thread115

bb.i:                                             ; preds = %bb.g
  %.not99 = icmp ne i32 %i.f, 318769153           ; 5 uses
  br i1 %.not99, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.l = tail call ptr @SDL_ConvertSurface_REAL(ptr noundef nonnull %0, i32 noundef 318769153) #13 ; 3 uses
  %.not100 = icmp eq ptr %i.l, null
  br i1 %.not100, label %.thread115, label %._crit_edge

._crit_edge:                                      ; preds = %bb.j
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.l, i64 72
  %.pre = load ptr, ptr %.phi.trans.insert, align 8
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge, %bb.i
  %i.m = phi ptr [ %i.j, %bb.i ], [ %.pre, %._crit_edge ]
  %.0 = phi ptr [ %0, %bb.i ], [ %i.l, %._crit_edge ] ; 5 uses
  %i.n = load i32, ptr %i.m, align 8              ; 5 uses
  %i.o = mul nsw i32 %i.n, 3                      ; 4 uses
  %i.p = sext i32 %i.o to i64
  %i.q = tail call noalias ptr @SDL_malloc_REAL(i64 noundef %i.p) #13 ; 9 uses
  %i.r = sext i32 %i.n to i64
  %i.s = tail call noalias ptr @SDL_malloc_REAL(i64 noundef %i.r) #13 ; 9 uses
  %i.t = icmp ne ptr %i.q, null
  %i.u = icmp ne ptr %i.s, null
  %or.cond = select i1 %i.t, i1 %i.u, i1 false
  br i1 %or.cond, label %bb.l, label %bb.bf

bb.l:                                             ; preds = %bb.k
  %i.v = getelementptr inbounds nuw i8, ptr %.0, i64 72
  %i.w = load ptr, ptr %i.v, align 8              ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load ptr, ptr %i.x, align 8              ; 3 uses
  %i.z = load i32, ptr %i.w, align 8              ; 4 uses
  %i.aa = icmp sgt i32 %i.z, 0
  br i1 %i.aa, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.l
  %i.ab = zext nneg i32 %i.z to i64               ; 2 uses
  %xtraiter = and i64 %i.ab, 1
  %i.ac = icmp eq i32 %i.z, 1
  br i1 %i.ac, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.ab, 2147483646
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %.lr.ph ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv ; 4 uses
  %i.ae = load i8, ptr %i.ad, align 1
  %i.af = mul nuw nsw i64 %indvars.iv, 3
  %i.ag = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.af ; 3 uses
  store i8 %i.ae, ptr %i.ag, align 1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 1
  %i.ai = load i8, ptr %i.ah, align 1
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 1
  store i8 %i.ai, ptr %i.aj, align 1
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ad, i64 2
  %i.al = load i8, ptr %i.ak, align 1
  %i.am = getelementptr inbounds nuw i8, ptr %i.ag, i64 2
  store i8 %i.al, ptr %i.am, align 1
  %i.an = getelementptr inbounds nuw i8, ptr %i.ad, i64 3
  %i.ao = load i8, ptr %i.an, align 1
  %i.ap = getelementptr inbounds nuw i8, ptr %i.s, i64 %indvars.iv
  store i8 %i.ao, ptr %i.ap, align 1
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 3 uses
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv.next ; 4 uses
  %i.ar = load i8, ptr %i.aq, align 1
  %i.as = mul nuw nsw i64 %indvars.iv.next, 3
  %i.at = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.as ; 3 uses
  store i8 %i.ar, ptr %i.at, align 1
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 1
  %i.av = load i8, ptr %i.au, align 1
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 1
  store i8 %i.av, ptr %i.aw, align 1
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aq, i64 2
  %i.ay = load i8, ptr %i.ax, align 1
  %i.az = getelementptr inbounds nuw i8, ptr %i.at, i64 2
  store i8 %i.ay, ptr %i.az, align 1
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aq, i64 3
  %i.bb = load i8, ptr %i.ba, align 1
  %i.bc = getelementptr inbounds nuw i8, ptr %i.s, i64 %indvars.iv.next
  store i8 %i.bb, ptr %i.bc, align 1
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !29

bb.m:                                             ; preds = %bb.f
  %.not101 = icmp eq i32 %i.f, 376840196
  br i1 %.not101, label %.loopexit, label %.thread

.thread:                                          ; preds = %bb.e, %bb.m
  %i.bd = tail call ptr @SDL_ConvertSurface_REAL(ptr noundef nonnull %0, i32 noundef 376840196) #13 ; 2 uses
  %.not102 = icmp eq ptr %i.bd, null
  br i1 %.not102, label %.thread115, label %.loopexit

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.1, %.loopexit.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod227 = trunc i32 %i.z to i1
  tail call void @llvm.assume(i1 %lcmp.mod227)
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv.epil.init ; 4 uses
  %i.bf = load i8, ptr %i.be, align 1
  %i.bg = mul nuw nsw i64 %indvars.iv.epil.init, 3
  %i.bh = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.bg ; 3 uses
  store i8 %i.bf, ptr %i.bh, align 1
  %i.bi = getelementptr inbounds nuw i8, ptr %i.be, i64 1
  %i.bj = load i8, ptr %i.bi, align 1
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 1
  store i8 %i.bj, ptr %i.bk, align 1
  %i.bl = getelementptr inbounds nuw i8, ptr %i.be, i64 2
  %i.bm = load i8, ptr %i.bl, align 1
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bh, i64 2
  store i8 %i.bm, ptr %i.bn, align 1
  %i.bo = getelementptr inbounds nuw i8, ptr %i.be, i64 3
  %i.bp = load i8, ptr %i.bo, align 1
  %i.bq = getelementptr inbounds nuw i8, ptr %i.s, i64 %indvars.iv.epil.init
  store i8 %i.bp, ptr %i.bq, align 1
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.l, %.thread, %bb.m
  %.079 = phi ptr [ null, %.thread ], [ null, %bb.m ], [ %i.q, %bb.l ], [ %i.q, %.loopexit.loopexit.unr-lcssa ], [ %i.q, %.lr.ph.epil.preheader ] ; 5 uses
  %.077 = phi ptr [ null, %.thread ], [ null, %bb.m ], [ %i.s, %bb.l ], [ %i.s, %.loopexit.loopexit.unr-lcssa ], [ %i.s, %.lr.ph.epil.preheader ] ; 5 uses
  %.175 = phi i1 [ true, %.thread ], [ false, %bb.m ], [ %.not99, %bb.l ], [ %.not99, %.loopexit.loopexit.unr-lcssa ], [ %.not99, %.lr.ph.epil.preheader ] ; 2 uses
  %.073 = phi i32 [ 0, %.thread ], [ 0, %bb.m ], [ %i.o, %bb.l ], [ %i.o, %.loopexit.loopexit.unr-lcssa ], [ %i.o, %.lr.ph.epil.preheader ] ; 9 uses
  %.072 = phi i32 [ 0, %.thread ], [ 0, %bb.m ], [ %i.n, %bb.l ], [ %i.n, %.loopexit.loopexit.unr-lcssa ], [ %i.n, %.lr.ph.epil.preheader ] ; 8 uses
  %.1 = phi ptr [ %i.bd, %.thread ], [ %0, %bb.m ], [ %.0, %bb.l ], [ %.0, %.loopexit.loopexit.unr-lcssa ], [ %.0, %.lr.ph.epil.preheader ] ; 7 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.1, i64 24
  %i.bs = load ptr, ptr %i.br, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %.1, i64 8
  %i.bu = load i32, ptr %i.bt, align 8            ; 6 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.1, i64 12
  %i.bw = load i32, ptr %i.bv, align 4            ; 8 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.1, i64 4
  %i.by = load i32, ptr %i.bx, align 4            ; 4 uses
  %.not103 = icmp eq i32 %i.by, 0
  %.mask105 = and i32 %i.by, -268435456
  %.not104 = icmp eq i32 %.mask105, 268435456
  %or.cond109 = or i1 %.not103, %.not104
  br i1 %or.cond109, label %bb.p, label %bb.n

bb.n:                                             ; preds = %.loopexit
  switch i32 %i.by, label %bb.o [
    i32 844715353, label %switch.edge
    i32 1498831189, label %switch.edge
    i32 1431918169, label %switch.edge
    i32 808530000, label %switch.edge
  ]

bb.o:                                             ; preds = %bb.n
  br label %switch.edge

bb.p:                                             ; preds = %.loopexit
  %i.bz = and i32 %i.by, 255
  br label %switch.edge

switch.edge:                                      ; preds = %bb.n, %bb.o, %bb.n, %bb.n, %bb.n, %bb.p
  %i.ca = phi i32 [ %i.bz, %bb.p ], [ 2, %bb.n ], [ 2, %bb.n ], [ 2, %bb.n ], [ 1, %bb.o ], [ 2, %bb.n ] ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.1, i64 16
  %i.cc = load i32, ptr %i.cb, align 8
  %i.cd = tail call noalias ptr @SDL_malloc_REAL(i64 noundef 319352) #13 ; 38 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store i32 0, ptr %i.a, align 4
  %.not.i = icmp eq ptr %i.cd, null
  br i1 %.not.i, label %tdefl_write_image_to_png_file_in_memory_ex.exit.thread, label %bb.q

bb.q:                                             ; preds = %switch.edge
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, i8 0, i64 32, i1 false)
  %i.ce = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 10 uses
  store i32 1, ptr %i.ce, align 8
  %i.cf = mul nsw i32 %i.ca, %i.bu                ; 2 uses
  %i.cg = add nsw i32 %i.cf, 1
  %i.ch = mul nsw i32 %i.cg, %i.bw
  %i.ci = tail call i32 @llvm.smax.i32(i32 %i.ch, i32 64)
  %narrow.i = add nuw nsw i32 %i.ci, 57
  %i.cj = zext nneg i32 %narrow.i to i64
  %i.ck = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 17 uses
  %i.cl = icmp sgt i32 %.073, 0                   ; 3 uses
  %i.cm = add nuw nsw i32 %.073, 12
  %narrow265.i = select i1 %i.cl, i32 %i.cm, i32 0
  %i.cn = zext i32 %narrow265.i to i64
  %i.co = icmp sgt i32 %.072, 0                   ; 2 uses
  %i.cp = add nuw nsw i32 %.072, 12
  %narrow287.i = select i1 %i.co, i32 %i.cp, i32 0
  %i.cq = zext i32 %narrow287.i to i64
  %storemerge.i = add nuw nsw i64 %i.cq, %i.cn
  %storemerge266.i = add nuw nsw i64 %storemerge.i, %i.cj ; 2 uses
  store i64 %storemerge266.i, ptr %i.ck, align 8
  %i.cr = tail call noalias ptr @SDL_malloc_REAL(i64 noundef %storemerge266.i) #13 ; 4 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 47 uses
  store ptr %i.cr, ptr %i.cs, align 8
  %i.ct = icmp eq ptr %i.cr, null
  br i1 %i.ct, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  tail call void @SDL_free_REAL(ptr noundef nonnull %i.cd) #13
  br label %tdefl_write_image_to_png_file_in_memory_ex.exit.thread

bb.s:                                             ; preds = %bb.q
  %i.cu = lshr i32 %i.bu, 8                       ; 2 uses
  %i.cv = trunc i32 %i.cu to i8
  %i.cw = trunc i32 %i.bu to i8
  %i.cx = lshr i32 %i.bw, 8                       ; 2 uses
  %i.cy = trunc i32 %i.cx to i8
  %i.cz = trunc i32 %i.bw to i8
  %i.da = icmp eq i32 %i.ca, 1
  %or.cond.i = and i1 %i.cl, %i.da
  br i1 %or.cond.i, label %.lr.ph.i.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.db = zext nneg i32 %i.ca to i64
  %i.dc = getelementptr inbounds nuw i8, ptr @tdefl_write_image_to_png_file_in_memory_ex.chans, i64 %i.db
  %i.dd = load i8, ptr %i.dc, align 1
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.t, %bb.s
  %.sroa.22.0.i = phi i8 [ %i.dd, %bb.t ], [ 3, %bb.s ] ; 2 uses
  %i.de = and i32 %i.cu, 15
  %i.df = xor i32 %i.de, 4
  %i.dg = zext nneg i32 %i.df to i64
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr @mz_crc32.s_crc32, i64 %i.dg
  %i.di = load i32, ptr %i.dh, align 4
  %i.dj = xor i32 %i.di, 123367996                ; 2 uses
  %i.dk = lshr i32 %i.dj, 4
  %i.dl = lshr i32 %i.bu, 12
  %i.dm = xor i32 %i.dj, %i.dl
  %i.dn = and i32 %i.dm, 15
  %i.do = zext nneg i32 %i.dn to i64
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr @mz_crc32.s_crc32, i64 %i.do
  %i.dq = load i32, ptr %i.dp, align 4
  %i.dr = xor i32 %i.dk, %i.dq                    ; 2 uses
  %i.ds = lshr i32 %i.dr, 4
  %i.dt = xor i32 %i.dr, %i.bu
  %i.du = and i32 %i.dt, 15
  %i.dv = zext nneg i32 %i.du to i64
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr @mz_crc32.s_crc32, i64 %i.dv
  %i.dx = load i32, ptr %i.dw, align 4
  %i.dy = xor i32 %i.ds, %i.dx                    ; 2 uses
  %i.dz = lshr i32 %i.dy, 4
  %i.ea = lshr i32 %i.bu, 4
  %i.eb = xor i32 %i.dy, %i.ea
  %i.ec = and i32 %i.eb, 15
  %i.ed = zext nneg i32 %i.ec to i64
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr @mz_crc32.s_crc32, i64 %i.ed
  %i.ef = load i32, ptr %i.ee, align 4
  %i.eg = xor i32 %i.dz, %i.ef                    ; 2 uses
  %i.eh = lshr i32 %i.eg, 4
  %i.ei = and i32 %i.eg, 15
  %i.ej = zext nneg i32 %i.ei to i64
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr @mz_crc32.s_crc32, i64 %i.ej
  %i.el = load i32, ptr %i.ek, align 4
  %i.em = xor i32 %i.eh, %i.el                    ; 2 uses
  %i.en = lshr i32 %i.em, 4
  %i.eo = and i32 %i.em, 15
  %i.ep = zext nneg i32 %i.eo to i64
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr @mz_crc32.s_crc32, i64 %i.ep
  %i.er = load i32, ptr %i.eq, align 4
  %i.es = xor i32 %i.en, %i.er                    ; 2 uses
  %i.et = lshr i32 %i.es, 4
  %i.eu = and i32 %i.es, 15
  %i.ev = zext nneg i32 %i.eu to i64
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr @mz_crc32.s_crc32, i64 %i.ev
  %i.ex = load i32, ptr %i.ew, align 4
  %i.ey = xor i32 %i.et, %i.ex                    ; 2 uses
  %i.ez = lshr i32 %i.ey, 4
  %i.fa = and i32 %i.ey, 15
  %i.fb = zext nneg i32 %i.fa to i64
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr @mz_crc32.s_crc32, i64 %i.fb
  %i.fd = load i32, ptr %i.fc, align 4
  %i.fe = xor i32 %i.ez, %i.fd                    ; 2 uses
  %i.ff = lshr i32 %i.fe, 4
  %i.fg = xor i32 %i.fe, %i.cx
  %i.fh = and i32 %i.fg, 15
  %i.fi = zext nneg i32 %i.fh to i64
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr @mz_crc32.s_crc32, i64 %i.fi
  %i.fk = load i32, ptr %i.fj, align 4
  %i.fl = xor i32 %i.ff, %i.fk                    ; 2 uses
  %i.fm = lshr i32 %i.fl, 4
  %i.fn = lshr i32 %i.bw, 12
  %i.fo = xor i32 %i.fl, %i.fn
end_hunk_0
begin_hunk_1_@SDL_SavePNG_IO_REAL:bb.a
  store i8 %i.jc, ptr %.sroa.30.0..sroa_idx.i, align 1
  %.sroa.31.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.jp, i64 32
  store i8 %i.jd, ptr %.sroa.31.0..sroa_idx.i, align 1
  br i1 %i.cl, label %bb.x, label %.loopexit267.i

bb.x:                                             ; preds = %.critedge.i
  %i.jq = lshr i32 %.073, 24
  %i.jr = trunc nuw nsw i32 %i.jq to i8
  %i.js = lshr i32 %.073, 16
  %i.jt = trunc i32 %i.js to i8
  %i.ju = lshr i32 %.073, 8
  %i.jv = trunc i32 %i.ju to i8
  %i.jw = trunc i32 %.073 to i8
  %i.jx = add i64 %i.je, 41                       ; 5 uses
  %i.jy = load i64, ptr %i.ck, align 8            ; 2 uses
  %i.jz = icmp ugt i64 %i.jx, %i.jy
  br i1 %i.jz, label %bb.y, label %._crit_edge.i146.i

._crit_edge.i146.i:                               ; preds = %bb.x
  %.pre.i148.i = load ptr, ptr %i.cs, align 8
  br label %bb.ab

bb.y:                                             ; preds = %bb.x
  %i.ka = load i32, ptr %i.ce, align 8
  %.not.i150.i = icmp eq i32 %i.ka, 0
  br i1 %.not.i150.i, label %._crit_edge340.i, label %.preheader.i151.i

._crit_edge340.i:                                 ; preds = %bb.y
  %.pre341.i = load ptr, ptr %i.cs, align 8
  br label %bb.aa

.preheader.i151.i:                                ; preds = %bb.y, %.preheader.i151.i
  %.025.i152.i = phi i64 [ %i.kc, %.preheader.i151.i ], [ %i.jy, %bb.y ]
  %i.kb = shl i64 %.025.i152.i, 1
  %i.kc = tail call i64 @llvm.umax.i64(i64 %i.kb, i64 128) ; 4 uses
  %i.kd = icmp ugt i64 %i.jx, %i.kc
  br i1 %i.kd, label %.preheader.i151.i, label %bb.z, !llvm.loop !30

bb.z:                                             ; preds = %.preheader.i151.i
  %i.ke = load ptr, ptr %i.cs, align 8            ; 2 uses
  %i.kf = tail call ptr @SDL_realloc_REAL(ptr noundef %i.ke, i64 noundef %i.kc) #14 ; 3 uses
  %.not31.i153.i = icmp eq ptr %i.kf, null
  br i1 %.not31.i153.i, label %bb.aa, label %.critedge.i154.i

.critedge.i154.i:                                 ; preds = %bb.z
  store ptr %i.kf, ptr %i.cs, align 8
  store i64 %i.kc, ptr %i.ck, align 8
  br label %bb.ab

bb.aa:                                            ; preds = %bb.z, %._crit_edge340.i
  %i.kg = phi ptr [ %.pre341.i, %._crit_edge340.i ], [ %i.ke, %bb.z ]
  tail call void @SDL_free_REAL(ptr noundef nonnull %i.cd) #13
  tail call void @SDL_free_REAL(ptr noundef %i.kg) #13
  br label %tdefl_write_image_to_png_file_in_memory_ex.exit.thread

bb.ab:                                            ; preds = %.critedge.i154.i, %._crit_edge.i146.i
  %i.kh = phi ptr [ %.pre.i148.i, %._crit_edge.i146.i ], [ %i.kf, %.critedge.i154.i ]
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 %i.jf ; 5 uses
  store i8 %i.jr, ptr %i.ki, align 1
  %.sroa.6243.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ki, i64 1
  store i8 %i.jt, ptr %.sroa.6243.0..sroa_idx.i, align 1
  %.sroa.7244.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ki, i64 2
  store i8 %i.jv, ptr %.sroa.7244.0..sroa_idx.i, align 1
  %.sroa.8245.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ki, i64 3
  store i8 %i.jw, ptr %.sroa.8245.0..sroa_idx.i, align 1
  %.sroa.9246.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ki, i64 4
  store i32 1163152464, ptr %.sroa.9246.0..sroa_idx.i, align 1
  %i.kj = zext nneg i32 %.073 to i64              ; 2 uses
  %i.kk = add i64 %i.jx, %i.kj                    ; 5 uses
  %i.kl = load i64, ptr %i.ck, align 8            ; 3 uses
  %i.km = icmp ugt i64 %i.kk, %i.kl
  br i1 %i.km, label %bb.ac, label %._crit_edge.i157.i

._crit_edge.i157.i:                               ; preds = %bb.ab
  %.pre.i159.i = load ptr, ptr %i.cs, align 8
  br label %bb.af

bb.ac:                                            ; preds = %bb.ab
  %i.kn = load i32, ptr %i.ce, align 8
  %.not.i161.i = icmp eq i32 %i.kn, 0
  br i1 %.not.i161.i, label %._crit_edge338.i, label %.preheader.i162.i

._crit_edge338.i:                                 ; preds = %bb.ac
  %.pre339.i = load ptr, ptr %i.cs, align 8
  br label %bb.ae

.preheader.i162.i:                                ; preds = %bb.ac, %.preheader.i162.i
  %.025.i163.i = phi i64 [ %i.kp, %.preheader.i162.i ], [ %i.kl, %bb.ac ]
  %i.ko = shl i64 %.025.i163.i, 1
  %i.kp = tail call i64 @llvm.umax.i64(i64 %i.ko, i64 128) ; 5 uses
  %i.kq = icmp ugt i64 %i.kk, %i.kp
  br i1 %i.kq, label %.preheader.i162.i, label %bb.ad, !llvm.loop !30

bb.ad:                                            ; preds = %.preheader.i162.i
  %i.kr = load ptr, ptr %i.cs, align 8            ; 2 uses
  %i.ks = tail call ptr @SDL_realloc_REAL(ptr noundef %i.kr, i64 noundef %i.kp) #14 ; 3 uses
  %.not31.i164.i = icmp eq ptr %i.ks, null
  br i1 %.not31.i164.i, label %bb.ae, label %.critedge.i165.i

.critedge.i165.i:                                 ; preds = %bb.ad
  store ptr %i.ks, ptr %i.cs, align 8
  store i64 %i.kp, ptr %i.ck, align 8
  br label %bb.af

bb.ae:                                            ; preds = %bb.ad, %._crit_edge338.i
  %i.kt = phi ptr [ %.pre339.i, %._crit_edge338.i ], [ %i.kr, %bb.ad ]
  tail call void @SDL_free_REAL(ptr noundef nonnull %i.cd) #13
  tail call void @SDL_free_REAL(ptr noundef %i.kt) #13
  br label %tdefl_write_image_to_png_file_in_memory_ex.exit.thread

bb.af:                                            ; preds = %.critedge.i165.i, %._crit_edge.i157.i
  %i.ku = phi i64 [ %i.kl, %._crit_edge.i157.i ], [ %i.kp, %.critedge.i165.i ] ; 2 uses
  %i.kv = phi ptr [ %.pre.i159.i, %._crit_edge.i157.i ], [ %i.ks, %.critedge.i165.i ] ; 4 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 %i.jx
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.kw, ptr readonly align 1 %.079, i64 %i.kj, i1 false)
  %i.kx = add i64 %i.kk, 4                        ; 3 uses
  %i.ky = icmp ugt i64 %i.kx, %i.ku
  br i1 %i.ky, label %bb.ag, label %._crit_edge.i168.i

bb.ag:                                            ; preds = %bb.af
  %i.kz = load i32, ptr %i.ce, align 8
  %.not.i172.i = icmp eq i32 %i.kz, 0
  br i1 %.not.i172.i, label %bb.ai, label %.preheader.i173.i

.preheader.i173.i:                                ; preds = %bb.ag, %.preheader.i173.i
  %.025.i174.i = phi i64 [ %i.lb, %.preheader.i173.i ], [ %i.ku, %bb.ag ]
  %i.la = shl i64 %.025.i174.i, 1
  %i.lb = tail call i64 @llvm.umax.i64(i64 %i.la, i64 128) ; 4 uses
  %i.lc = icmp ugt i64 %i.kx, %i.lb
  br i1 %i.lc, label %.preheader.i173.i, label %bb.ah, !llvm.loop !30

bb.ah:                                            ; preds = %.preheader.i173.i
  %i.ld = tail call ptr @SDL_realloc_REAL(ptr noundef %i.kv, i64 noundef %i.lb) #14 ; 3 uses
  %.not31.i175.i = icmp eq ptr %i.ld, null
  br i1 %.not31.i175.i, label %bb.ai, label %.critedge.i176.i

.critedge.i176.i:                                 ; preds = %bb.ah
  store ptr %i.ld, ptr %i.cs, align 8
  store i64 %i.lb, ptr %i.ck, align 8
  br label %._crit_edge.i168.i

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  tail call void @SDL_free_REAL(ptr noundef nonnull %i.cd) #13
  tail call void @SDL_free_REAL(ptr noundef %i.kv) #13
  br label %tdefl_write_image_to_png_file_in_memory_ex.exit.thread

._crit_edge.i168.i:                               ; preds = %.critedge.i176.i, %bb.af
  %i.le = phi ptr [ %i.ld, %.critedge.i176.i ], [ %i.kv, %bb.af ]
  %i.lf = getelementptr inbounds nuw i8, ptr %i.le, i64 %i.kk
  store i32 0, ptr %i.lf, align 1
  store i64 %i.kx, ptr %3, align 8
  %i.lg = load ptr, ptr %i.cs, align 8            ; 2 uses
  %i.lh = add nuw i32 %.073, 4
  %i.li = zext i32 %i.lh to i64                   ; 2 uses
  %xtraiter228 = and i64 %i.li, 1
  %i.lj = getelementptr inbounds nuw i8, ptr %i.lg, i64 %i.jx
  %i.lk = getelementptr inbounds i8, ptr %i.lj, i64 -4
  %unroll_iter232 = and i64 %i.li, 4294967294
  br label %.lr.ph.i180.i

.lr.ph.i180.i:                                    ; preds = %.lr.ph.i180.i, %._crit_edge.i168.i
  %.01220.i181.i = phi i32 [ -1, %._crit_edge.i168.i ], [ %i.mu, %.lr.ph.i180.i ] ; 2 uses
  %.01418.i183.i = phi ptr [ %i.lk, %._crit_edge.i168.i ], [ %i.md, %.lr.ph.i180.i ] ; 3 uses
  %niter233 = phi i64 [ 0, %._crit_edge.i168.i ], [ %niter233.next.1, %.lr.ph.i180.i ]
  %i.ll = getelementptr inbounds nuw i8, ptr %.01418.i183.i, i64 1
  %i.lm = load i8, ptr %.01418.i183.i, align 1
  %i.ln = lshr i32 %.01220.i181.i, 4
  %i.lo = zext i8 %i.lm to i32                    ; 2 uses
  %i.lp = xor i32 %.01220.i181.i, %i.lo
  %i.lq = and i32 %i.lp, 15
  %i.lr = zext nneg i32 %i.lq to i64
  %i.ls = getelementptr inbounds nuw [4 x i8], ptr @mz_crc32.s_crc32, i64 %i.lr
  %i.lt = load i32, ptr %i.ls, align 4
  %i.lu = xor i32 %i.lt, %i.ln                    ; 2 uses
  %i.lv = lshr i32 %i.lu, 4
  %i.lw = and i32 %i.lu, 15
  %i.lx = lshr i32 %i.lo, 4
  %i.ly = xor i32 %i.lw, %i.lx
  %i.lz = zext nneg i32 %i.ly to i64
  %i.ma = getelementptr inbounds nuw [4 x i8], ptr @mz_crc32.s_crc32, i64 %i.lz
  %i.mb = load i32, ptr %i.ma, align 4
  %i.mc = xor i32 %i.lv, %i.mb                    ; 2 uses
  %i.md = getelementptr inbounds nuw i8, ptr %.01418.i183.i, i64 2 ; 2 uses
  %i.me = load i8, ptr %i.ll, align 1
  %i.mf = lshr i32 %i.mc, 4
  %i.mg = zext i8 %i.me to i32                    ; 2 uses
  %i.mh = xor i32 %i.mc, %i.mg
  %i.mi = and i32 %i.mh, 15
  %i.mj = zext nneg i32 %i.mi to i64
  %i.mk = getelementptr inbounds nuw [4 x i8], ptr @mz_crc32.s_crc32, i64 %i.mj
  %i.ml = load i32, ptr %i.mk, align 4
  %i.mm = xor i32 %i.ml, %i.mf                    ; 2 uses
  %i.mn = lshr i32 %i.mm, 4
  %i.mo = and i32 %i.mm, 15
  %i.mp = lshr i32 %i.mg, 4
  %i.mq = xor i32 %i.mo, %i.mp
  %i.mr = zext nneg i32 %i.mq to i64
  %i.ms = getelementptr inbounds nuw [4 x i8], ptr @mz_crc32.s_crc32, i64 %i.mr
  %i.mt = load i32, ptr %i.ms, align 4
  %i.mu = xor i32 %i.mn, %i.mt                    ; 4 uses
  %niter233.next.1 = add i64 %niter233, 2         ; 2 uses
  %niter233.ncmp.1 = icmp eq i64 %niter233.next.1, %unroll_iter232
  br i1 %niter233.ncmp.1, label %mz_crc32.exit186.i.unr-lcssa, label %.lr.ph.i180.i, !llvm.loop !31

mz_crc32.exit186.i.unr-lcssa:                     ; preds = %.lr.ph.i180.i
  %lcmp.mod229.not = icmp eq i64 %xtraiter228, 0
  br i1 %lcmp.mod229.not, label %mz_crc32.exit186.i, label %.lr.ph.i180.i.epil.preheader

.lr.ph.i180.i.epil.preheader:                     ; preds = %mz_crc32.exit186.i.unr-lcssa
  %lcmp.mod231 = trunc i32 %.073 to i1
  tail call void @llvm.assume(i1 %lcmp.mod231)
  %i.mv = load i8, ptr %i.md, align 1
  %i.mw = lshr i32 %i.mu, 4
  %i.mx = zext i8 %i.mv to i32                    ; 2 uses
  %i.my = xor i32 %i.mu, %i.mx
  %i.mz = and i32 %i.my, 15
  %i.na = zext nneg i32 %i.mz to i64
  %i.nb = getelementptr inbounds nuw [4 x i8], ptr @mz_crc32.s_crc32, i64 %i.na
  %i.nc = load i32, ptr %i.nb, align 4
  %i.nd = xor i32 %i.nc, %i.mw                    ; 2 uses
  %i.ne = lshr i32 %i.nd, 4
  %i.nf = and i32 %i.nd, 15
  %i.ng = lshr i32 %i.mx, 4
  %i.nh = xor i32 %i.nf, %i.ng
  %i.ni = zext nneg i32 %i.nh to i64
  %i.nj = getelementptr inbounds nuw [4 x i8], ptr @mz_crc32.s_crc32, i64 %i.ni
  %i.nk = load i32, ptr %i.nj, align 4
  %i.nl = xor i32 %i.ne, %i.nk
  br label %mz_crc32.exit186.i

mz_crc32.exit186.i:                               ; preds = %mz_crc32.exit186.i.unr-lcssa, %.lr.ph.i180.i.epil.preheader
  %.lcssa222 = phi i32 [ %i.mu, %mz_crc32.exit186.i.unr-lcssa ], [ %i.nl, %.lr.ph.i180.i.epil.preheader ]
  %i.nm = xor i32 %.lcssa222, -1                  ; 4 uses
  %i.nn = lshr i32 %i.nm, 24
  %i.no = trunc nuw i32 %i.nn to i8
  %i.np = getelementptr inbounds i8, ptr %i.lg, i64 %i.kk
  store i8 %i.no, ptr %i.np, align 1
  %i.nq = lshr i32 %i.nm, 16
  %i.nr = trunc i32 %i.nq to i8
  %i.ns = load ptr, ptr %i.cs, align 8
  %i.nt = load i64, ptr %3, align 8
  %i.nu = getelementptr inbounds nuw i8, ptr %i.ns, i64 %i.nt
  %i.nv = getelementptr inbounds i8, ptr %i.nu, i64 -3
  store i8 %i.nr, ptr %i.nv, align 1
  %i.nw = lshr i32 %i.nm, 8
  %i.nx = trunc i32 %i.nw to i8
  %i.ny = load ptr, ptr %i.cs, align 8
  %i.nz = load i64, ptr %3, align 8
  %i.oa = getelementptr inbounds nuw i8, ptr %i.ny, i64 %i.nz
  %i.ob = getelementptr inbounds i8, ptr %i.oa, i64 -2
  store i8 %i.nx, ptr %i.ob, align 1
  %i.oc = trunc i32 %i.nm to i8
  %i.od = load ptr, ptr %i.cs, align 8
  %i.oe = load i64, ptr %3, align 8
  %i.of = getelementptr inbounds nuw i8, ptr %i.od, i64 %i.oe
  %i.og = getelementptr inbounds i8, ptr %i.of, i64 -1
  store i8 %i.oc, ptr %i.og, align 1
  %.pre331.pre.i = load i64, ptr %3, align 8
  br label %.loopexit267.i

.loopexit267.i:                                   ; preds = %mz_crc32.exit186.i, %.critedge.i
  %.pre331.i = phi i64 [ %.pre331.pre.i, %mz_crc32.exit186.i ], [ %i.jf, %.critedge.i ] ; 3 uses
  br i1 %i.co, label %bb.aj, label %.loopexit.i

bb.aj:                                            ; preds = %.loopexit267.i
  %i.oh = lshr i32 %.072, 24
  %i.oi = trunc nuw nsw i32 %i.oh to i8
  %i.oj = lshr i32 %.072, 16
  %i.ok = trunc i32 %i.oj to i8
  %i.ol = lshr i32 %.072, 8
  %i.om = trunc i32 %i.ol to i8
  %i.on = trunc i32 %.072 to i8
  %i.oo = add i64 %.pre331.i, 8                   ; 5 uses
  %i.op = load i64, ptr %i.ck, align 8            ; 2 uses
  %i.oq = icmp ugt i64 %i.oo, %i.op
  br i1 %i.oq, label %bb.ak, label %._crit_edge.i187.i

._crit_edge.i187.i:                               ; preds = %bb.aj
  %.pre.i189.i = load ptr, ptr %i.cs, align 8
  br label %bb.an

bb.ak:                                            ; preds = %bb.aj
  %i.or = load i32, ptr %i.ce, align 8
  %.not.i191.i = icmp eq i32 %i.or, 0
  br i1 %.not.i191.i, label %._crit_edge336.i, label %.preheader.i192.i

._crit_edge336.i:                                 ; preds = %bb.ak
  %.pre337.i = load ptr, ptr %i.cs, align 8
  br label %bb.am

.preheader.i192.i:                                ; preds = %bb.ak, %.preheader.i192.i
  %.025.i193.i = phi i64 [ %i.ot, %.preheader.i192.i ], [ %i.op, %bb.ak ]
  %i.os = shl i64 %.025.i193.i, 1
  %i.ot = tail call i64 @llvm.umax.i64(i64 %i.os, i64 128) ; 4 uses
  %i.ou = icmp ugt i64 %i.oo, %i.ot
  br i1 %i.ou, label %.preheader.i192.i, label %bb.al, !llvm.loop !30

bb.al:                                            ; preds = %.preheader.i192.i
  %i.ov = load ptr, ptr %i.cs, align 8            ; 2 uses
  %i.ow = tail call ptr @SDL_realloc_REAL(ptr noundef %i.ov, i64 noundef %i.ot) #14 ; 3 uses
  %.not31.i194.i = icmp eq ptr %i.ow, null
  br i1 %.not31.i194.i, label %bb.am, label %.critedge.i195.i

.critedge.i195.i:                                 ; preds = %bb.al
  store ptr %i.ow, ptr %i.cs, align 8
  store i64 %i.ot, ptr %i.ck, align 8
  br label %bb.an

bb.am:                                            ; preds = %bb.al, %._crit_edge336.i
  %i.ox = phi ptr [ %.pre337.i, %._crit_edge336.i ], [ %i.ov, %bb.al ]
  tail call void @SDL_free_REAL(ptr noundef nonnull %i.cd) #13
  tail call void @SDL_free_REAL(ptr noundef %i.ox) #13
  br label %tdefl_write_image_to_png_file_in_memory_ex.exit.thread

bb.an:                                            ; preds = %.critedge.i195.i, %._crit_edge.i187.i
  %i.oy = phi ptr [ %.pre.i189.i, %._crit_edge.i187.i ], [ %i.ow, %.critedge.i195.i ]
  %i.oz = getelementptr inbounds nuw i8, ptr %i.oy, i64 %.pre331.i ; 5 uses
  store i8 %i.oi, ptr %i.oz, align 1
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.oz, i64 1
  store i8 %i.ok, ptr %.sroa.6.0..sroa_idx.i, align 1
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.oz, i64 2
  store i8 %i.om, ptr %.sroa.7.0..sroa_idx.i, align 1
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.oz, i64 3
  store i8 %i.on, ptr %.sroa.8.0..sroa_idx.i, align 1
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.oz, i64 4
  store i32 1397641844, ptr %.sroa.9.0..sroa_idx.i, align 1
  %i.pa = zext nneg i32 %.072 to i64              ; 2 uses
  %i.pb = add i64 %i.oo, %i.pa                    ; 5 uses
  %i.pc = load i64, ptr %i.ck, align 8            ; 3 uses
  %i.pd = icmp ugt i64 %i.pb, %i.pc
  br i1 %i.pd, label %bb.ao, label %._crit_edge.i198.i

._crit_edge.i198.i:                               ; preds = %bb.an
  %.pre.i200.i = load ptr, ptr %i.cs, align 8
  br label %bb.ar

bb.ao:                                            ; preds = %bb.an
  %i.pe = load i32, ptr %i.ce, align 8
  %.not.i202.i = icmp eq i32 %i.pe, 0
  br i1 %.not.i202.i, label %._crit_edge334.i, label %.preheader.i203.i

._crit_edge334.i:                                 ; preds = %bb.ao
  %.pre335.i = load ptr, ptr %i.cs, align 8
  br label %bb.aq

.preheader.i203.i:                                ; preds = %bb.ao, %.preheader.i203.i
  %.025.i204.i = phi i64 [ %i.pg, %.preheader.i203.i ], [ %i.pc, %bb.ao ]
  %i.pf = shl i64 %.025.i204.i, 1
  %i.pg = tail call i64 @llvm.umax.i64(i64 %i.pf, i64 128) ; 5 uses
  %i.ph = icmp ugt i64 %i.pb, %i.pg
  br i1 %i.ph, label %.preheader.i203.i, label %bb.ap, !llvm.loop !30

bb.ap:                                            ; preds = %.preheader.i203.i
  %i.pi = load ptr, ptr %i.cs, align 8            ; 2 uses
  %i.pj = tail call ptr @SDL_realloc_REAL(ptr noundef %i.pi, i64 noundef %i.pg) #14 ; 3 uses
  %.not31.i205.i = icmp eq ptr %i.pj, null
  br i1 %.not31.i205.i, label %bb.aq, label %.critedge.i206.i

.critedge.i206.i:                                 ; preds = %bb.ap
  store ptr %i.pj, ptr %i.cs, align 8
  store i64 %i.pg, ptr %i.ck, align 8
  br label %bb.ar

bb.aq:                                            ; preds = %bb.ap, %._crit_edge334.i
  %i.pk = phi ptr [ %.pre335.i, %._crit_edge334.i ], [ %i.pi, %bb.ap ]
  tail call void @SDL_free_REAL(ptr noundef nonnull %i.cd) #13
  tail call void @SDL_free_REAL(ptr noundef %i.pk) #13
  br label %tdefl_write_image_to_png_file_in_memory_ex.exit.thread

bb.ar:                                            ; preds = %.critedge.i206.i, %._crit_edge.i198.i
  %i.pl = phi i64 [ %i.pc, %._crit_edge.i198.i ], [ %i.pg, %.critedge.i206.i ] ; 2 uses
  %i.pm = phi ptr [ %.pre.i200.i, %._crit_edge.i198.i ], [ %i.pj, %.critedge.i206.i ] ; 4 uses
  %i.pn = getelementptr inbounds nuw i8, ptr %i.pm, i64 %i.oo
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.pn, ptr readonly align 1 %.077, i64 %i.pa, i1 false)
  %i.po = add i64 %i.pb, 4                        ; 3 uses
  %i.pp = icmp ugt i64 %i.po, %i.pl
  br i1 %i.pp, label %bb.as, label %.loopexit.loopexit.i

bb.as:                                            ; preds = %bb.ar
  %i.pq = load i32, ptr %i.ce, align 8
  %.not.i213.i = icmp eq i32 %i.pq, 0
  br i1 %.not.i213.i, label %bb.au, label %.preheader.i214.i

.preheader.i214.i:                                ; preds = %bb.as, %.preheader.i214.i
  %.025.i215.i = phi i64 [ %i.ps, %.preheader.i214.i ], [ %i.pl, %bb.as ]
  %i.pr = shl i64 %.025.i215.i, 1
  %i.ps = tail call i64 @llvm.umax.i64(i64 %i.pr, i64 128) ; 4 uses
  %i.pt = icmp ugt i64 %i.po, %i.ps
  br i1 %i.pt, label %.preheader.i214.i, label %bb.at, !llvm.loop !30

bb.at:                                            ; preds = %.preheader.i214.i
  %i.pu = tail call ptr @SDL_realloc_REAL(ptr noundef %i.pm, i64 noundef %i.ps) #14 ; 3 uses
  %.not31.i216.i = icmp eq ptr %i.pu, null
  br i1 %.not31.i216.i, label %bb.au, label %.critedge.i217.i

.critedge.i217.i:                                 ; preds = %bb.at
  store ptr %i.pu, ptr %i.cs, align 8
  store i64 %i.ps, ptr %i.ck, align 8
  br label %.loopexit.loopexit.i

bb.au:                                            ; preds = %bb.at, %bb.as
end_hunk_1
begin_hunk_2_@stbi__process_frame_header:bb.a
bb.e:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  %i.m = load i32, ptr %i.l, align 8
  %.not.i = icmp eq i32 %i.m, 0
  br i1 %.not.i, label %stbi__get8.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 56 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 52
  %i.t = load i32, ptr %i.s, align 4
  %i.u = tail call i32 %i.o(ptr noundef %i.q, ptr noundef nonnull %i.r, i32 noundef %i.t) #13, !inline_history !119 ; 2 uses
  %i.v = load ptr, ptr %i.e, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 208
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = ptrtoint ptr %i.v to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = trunc i64 %i.aa to i32
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 184 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 8
  %i.ae = add nsw i32 %i.ad, %i.ab
  store i32 %i.ae, ptr %i.ac, align 8
  %i.af = icmp eq i32 %i.u, 0
  br i1 %i.af, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.l, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 57
  store i8 0, ptr %i.r, align 8
  br label %stbi__refill_buffer.exit.i

bb.h:                                             ; preds = %bb.f
  %i.ah = sext i32 %i.u to i64
  %i.ai = getelementptr inbounds i8, ptr %i.r, i64 %i.ah
  %.pre.i = load i8, ptr %i.r, align 8
  br label %stbi__refill_buffer.exit.i

stbi__refill_buffer.exit.i:                       ; preds = %bb.h, %bb.g
  %i.aj = phi i8 [ 0, %bb.g ], [ %.pre.i, %bb.h ]
  %.sink.i.i = phi ptr [ %i.ag, %bb.g ], [ %i.ai, %bb.h ]
  store ptr %.sink.i.i, ptr %i.g, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 57
  store ptr %i.ak, ptr %i.e, align 8
  br label %stbi__get8.exit

stbi__get8.exit:                                  ; preds = %bb.d, %stbi__refill_buffer.exit.i
  %.0.i = phi i8 [ %i.k, %bb.d ], [ %i.aj, %stbi__refill_buffer.exit.i ]
  %.not = icmp eq i8 %.0.i, 8
  br i1 %.not, label %bb.i, label %stbi__get8.exit.thread

stbi__get8.exit.thread:                           ; preds = %bb.e, %stbi__get8.exit
  %i.al = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.16) #13 ; 0 uses
  br label %.loopexit

bb.i:                                             ; preds = %stbi__get8.exit
  %i.am = tail call fastcc i32 @stbi__get16be(ptr noundef nonnull %i.a) ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 5 uses
  store i32 %i.am, ptr %i.an, align 4
  %i.ao = icmp eq i32 %i.am, 0
  br i1 %i.ao, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ap = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.17) #13 ; 0 uses
  br label %.loopexit

bb.k:                                             ; preds = %bb.i
  %i.aq = tail call fastcc i32 @stbi__get16be(ptr noundef nonnull %i.a) ; 2 uses
  store i32 %i.aq, ptr %i.a, align 8
  %i.ar = icmp eq i32 %i.aq, 0
  br i1 %i.ar, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.as = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.15) #13 ; 0 uses
  br label %.loopexit

bb.m:                                             ; preds = %bb.k
  %i.at = load i32, ptr %i.an, align 4
  %i.au = icmp ugt i32 %i.at, 16777216
  br i1 %i.au, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.av = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.18) #13 ; 0 uses
  br label %.loopexit

bb.o:                                             ; preds = %bb.m
  %i.aw = load ptr, ptr %i.e, align 8             ; 3 uses
  %i.ax = load ptr, ptr %i.g, align 8
  %i.ay = icmp ult ptr %i.aw, %i.ax
  br i1 %i.ay, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 1
  store ptr %i.az, ptr %i.e, align 8
  %i.ba = load i8, ptr %i.aw, align 1
  br label %stbi__get8.exit202

bb.q:                                             ; preds = %bb.o
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 8
  %.not.i197 = icmp eq i32 %i.bc, 0
  br i1 %.not.i197, label %stbi__get8.exit202.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.be = load ptr, ptr %i.bd, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.bg = load ptr, ptr %i.bf, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 56 ; 4 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 52
  %i.bj = load i32, ptr %i.bi, align 4
  %i.bk = tail call i32 %i.be(ptr noundef %i.bg, ptr noundef nonnull %i.bh, i32 noundef %i.bj) #13, !inline_history !119 ; 2 uses
  %i.bl = load ptr, ptr %i.e, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.a, i64 208
  %i.bn = load ptr, ptr %i.bm, align 8
  %i.bo = ptrtoint ptr %i.bl to i64
  %i.bp = ptrtoint ptr %i.bn to i64
  %i.bq = sub i64 %i.bo, %i.bp
  %i.br = trunc i64 %i.bq to i32
  %i.bs = getelementptr inbounds nuw i8, ptr %i.a, i64 184 ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 8
  %i.bu = add nsw i32 %i.bt, %i.br
  store i32 %i.bu, ptr %i.bs, align 8
  %i.bv = icmp eq i32 %i.bk, 0
  br i1 %i.bv, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store i32 0, ptr %i.bb, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.a, i64 57
  store i8 0, ptr %i.bh, align 8
  br label %stbi__refill_buffer.exit.i199

bb.t:                                             ; preds = %bb.r
  %i.bx = sext i32 %i.bk to i64
  %i.by = getelementptr inbounds i8, ptr %i.bh, i64 %i.bx
  %.pre.i198 = load i8, ptr %i.bh, align 8
  br label %stbi__refill_buffer.exit.i199

stbi__refill_buffer.exit.i199:                    ; preds = %bb.t, %bb.s
  %i.bz = phi i8 [ 0, %bb.s ], [ %.pre.i198, %bb.t ]
  %.sink.i.i200 = phi ptr [ %i.bw, %bb.s ], [ %i.by, %bb.t ]
  store ptr %.sink.i.i200, ptr %i.g, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %i.a, i64 57
  store ptr %i.ca, ptr %i.e, align 8
  br label %stbi__get8.exit202

stbi__get8.exit202:                               ; preds = %bb.p, %stbi__refill_buffer.exit.i199
  %.0.i201 = phi i8 [ %i.ba, %bb.p ], [ %i.bz, %stbi__refill_buffer.exit.i199 ] ; 4 uses
  switch i8 %.0.i201, label %stbi__get8.exit202.thread [
    i8 4, label %.lr.ph
    i8 3, label %.lr.ph
    i8 1, label %.lr.ph
  ]

stbi__get8.exit202.thread:                        ; preds = %bb.q, %stbi__get8.exit202
  %i.cb = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.15) #13 ; 0 uses
  br label %.loopexit

.lr.ph:                                           ; preds = %stbi__get8.exit202, %stbi__get8.exit202, %stbi__get8.exit202
  %i.cc = zext nneg i8 %.0.i201 to i32
  %i.cd = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 7 uses
  store i32 %i.cc, ptr %i.cd, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 18080 ; 5 uses
  %wide.trip.count = zext nneg i8 %.0.i201 to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.cf = add i8 %.0.i201, -1
  %i.cg = icmp ult i8 %i.cf, 3
  br i1 %i.cg, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 124
  br label %bb.u

bb.u:                                             ; preds = %bb.u, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.3, %bb.u ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.u ]
  %i.ch = getelementptr inbounds nuw [96 x i8], ptr %i.ce, i64 %indvars.iv ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 48
  store ptr null, ptr %i.ci, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ch, i64 72
  store ptr null, ptr %i.cj, align 8
  %i.ck = getelementptr inbounds nuw [96 x i8], ptr %i.ce, i64 %indvars.iv ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 144
  store ptr null, ptr %i.cl, align 8
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ck, i64 168
  store ptr null, ptr %i.cm, align 8
  %i.cn = getelementptr inbounds nuw [96 x i8], ptr %i.ce, i64 %indvars.iv ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 240
  store ptr null, ptr %i.co, align 8
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cn, i64 264
  store ptr null, ptr %i.cp, align 8
  %i.cq = getelementptr inbounds nuw [96 x i8], ptr %i.ce, i64 %indvars.iv ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 336
  store ptr null, ptr %i.cr, align 8
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 360
  store ptr null, ptr %i.cs, align 8
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.unr-lcssa, label %bb.u, !llvm.loop !128

._crit_edge.unr-lcssa:                            ; preds = %bb.u
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.3, %._crit_edge.unr-lcssa ]
  %lcmp.mod17 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod17)
  br label %bb.v

bb.v:                                             ; preds = %bb.v, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.v ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.v ]
  %i.ct = getelementptr inbounds nuw [96 x i8], ptr %i.ce, i64 %indvars.iv.epil ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 48
  store ptr null, ptr %i.cu, align 8
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ct, i64 72
  store ptr null, ptr %i.cv, align 8
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.v, !llvm.loop !129

._crit_edge:                                      ; preds = %bb.v, %._crit_edge.unr-lcssa
  %.pre = load i32, ptr %i.cd, align 8
  %i.cw = mul nsw i32 %.pre, 3
  %i.cx = add nsw i32 %i.cw, 8
  %.not189 = icmp eq i32 %i.b, %i.cx
  br i1 %.not189, label %bb.x, label %bb.w

bb.w:                                             ; preds = %._crit_edge
  %i.cy = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.15) #13 ; 0 uses
  br label %.loopexit

bb.x:                                             ; preds = %._crit_edge
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 18512 ; 3 uses
  store i32 0, ptr %i.cz, align 8
  %i.da = load i32, ptr %i.cd, align 8            ; 2 uses
  %i.db = icmp sgt i32 %i.da, 0
  br i1 %i.db, label %.lr.ph243, label %._crit_edge244

.lr.ph243:                                        ; preds = %bb.x
  %i.dc = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 6 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 3 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.a, i64 56 ; 12 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.a, i64 52 ; 3 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.a, i64 208 ; 3 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.a, i64 184 ; 6 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.a, i64 57 ; 6 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 18080
  br label %bb.y

bb.y:                                             ; preds = %.lr.ph243, %bb.av
  %indvars.iv267 = phi i64 [ 0, %.lr.ph243 ], [ %indvars.iv.next268, %bb.av ] ; 3 uses
  %i.dl = load ptr, ptr %i.e, align 8             ; 3 uses
  %i.dm = load ptr, ptr %i.g, align 8
  %i.dn = icmp ult ptr %i.dl, %i.dm
  br i1 %i.dn, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.do = getelementptr inbounds nuw i8, ptr %i.dl, i64 1
  store ptr %i.do, ptr %i.e, align 8
  %i.dp = load i8, ptr %i.dl, align 1
  br label %stbi__get8.exit208

bb.aa:                                            ; preds = %bb.y
  %i.dq = load i32, ptr %i.dc, align 8
  %.not.i203 = icmp eq i32 %i.dq, 0
  br i1 %.not.i203, label %stbi__get8.exit208, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dr = load ptr, ptr %i.dd, align 8
  %i.ds = load ptr, ptr %i.de, align 8
  %i.dt = load i32, ptr %i.dg, align 4
  %i.du = tail call i32 %i.dr(ptr noundef %i.ds, ptr noundef nonnull %i.df, i32 noundef %i.dt) #13, !inline_history !119 ; 2 uses
  %i.dv = load ptr, ptr %i.e, align 8
  %i.dw = load ptr, ptr %i.dh, align 8
  %i.dx = ptrtoint ptr %i.dv to i64
  %i.dy = ptrtoint ptr %i.dw to i64
  %i.dz = sub i64 %i.dx, %i.dy
  %i.ea = trunc i64 %i.dz to i32
  %i.eb = load i32, ptr %i.di, align 8
  %i.ec = add nsw i32 %i.eb, %i.ea
  store i32 %i.ec, ptr %i.di, align 8
  %i.ed = icmp eq i32 %i.du, 0
  br i1 %i.ed, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  store i32 0, ptr %i.dc, align 8
  store i8 0, ptr %i.df, align 8
  br label %stbi__refill_buffer.exit.i205

bb.ad:                                            ; preds = %bb.ab
  %i.ee = sext i32 %i.du to i64
  %i.ef = getelementptr inbounds i8, ptr %i.df, i64 %i.ee
  %.pre.i204 = load i8, ptr %i.df, align 8
  br label %stbi__refill_buffer.exit.i205

stbi__refill_buffer.exit.i205:                    ; preds = %bb.ad, %bb.ac
  %i.eg = phi i8 [ 0, %bb.ac ], [ %.pre.i204, %bb.ad ]
  %.sink.i.i206 = phi ptr [ %i.dj, %bb.ac ], [ %i.ef, %bb.ad ]
  store ptr %.sink.i.i206, ptr %i.g, align 8
  store ptr %i.dj, ptr %i.e, align 8
  br label %stbi__get8.exit208

stbi__get8.exit208:                               ; preds = %bb.z, %bb.aa, %stbi__refill_buffer.exit.i205
  %.0.i207 = phi i8 [ %i.dp, %bb.z ], [ %i.eg, %stbi__refill_buffer.exit.i205 ], [ 0, %bb.aa ] ; 2 uses
  %i.eh = zext i8 %.0.i207 to i32
  %i.ei = getelementptr inbounds nuw [96 x i8], ptr %i.dk, i64 %indvars.iv267 ; 6 uses
  store i32 %i.eh, ptr %i.ei, align 8
  %i.ej = load i32, ptr %i.cd, align 8
  %i.ek = icmp eq i32 %i.ej, 3
  br i1 %i.ek, label %bb.ae, label %bb.ag

bb.ae:                                            ; preds = %stbi__get8.exit208
  %i.el = getelementptr inbounds nuw i8, ptr @stbi__process_frame_header.rgb, i64 %indvars.iv267
  %i.em = load i8, ptr %i.el, align 1
  %i.en = icmp eq i8 %.0.i207, %i.em
  br i1 %i.en, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.eo = load i32, ptr %i.cz, align 8
  %i.ep = add nsw i32 %i.eo, 1
  store i32 %i.ep, ptr %i.cz, align 8
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae, %stbi__get8.exit208
  %i.eq = load ptr, ptr %i.e, align 8             ; 3 uses
  %i.er = load ptr, ptr %i.g, align 8
  %i.es = icmp ult ptr %i.eq, %i.er
  br i1 %i.es, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.et = getelementptr inbounds nuw i8, ptr %i.eq, i64 1
  store ptr %i.et, ptr %i.e, align 8
  %i.eu = load i8, ptr %i.eq, align 1
  br label %stbi__get8.exit214

bb.ai:                                            ; preds = %bb.ag
  %i.ev = load i32, ptr %i.dc, align 8
  %.not.i209 = icmp eq i32 %i.ev, 0
  br i1 %.not.i209, label %stbi__get8.exit214.thread, label %bb.aj

stbi__get8.exit214.thread:                        ; preds = %bb.ai
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ei, i64 4
  store i32 0, ptr %i.ew, align 4
  br label %.loopexit229

bb.aj:                                            ; preds = %bb.ai
  %i.ex = load ptr, ptr %i.dd, align 8
  %i.ey = load ptr, ptr %i.de, align 8
  %i.ez = load i32, ptr %i.dg, align 4
  %i.fa = tail call i32 %i.ex(ptr noundef %i.ey, ptr noundef nonnull %i.df, i32 noundef %i.ez) #13, !inline_history !119 ; 2 uses
  %i.fb = load ptr, ptr %i.e, align 8
  %i.fc = load ptr, ptr %i.dh, align 8
  %i.fd = ptrtoint ptr %i.fb to i64
  %i.fe = ptrtoint ptr %i.fc to i64
  %i.ff = sub i64 %i.fd, %i.fe
  %i.fg = trunc i64 %i.ff to i32
  %i.fh = load i32, ptr %i.di, align 8
  %i.fi = add nsw i32 %i.fh, %i.fg
  store i32 %i.fi, ptr %i.di, align 8
  %i.fj = icmp eq i32 %i.fa, 0
  br i1 %i.fj, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  store i32 0, ptr %i.dc, align 8
  store i8 0, ptr %i.df, align 8
  br label %stbi__refill_buffer.exit.i211

bb.al:                                            ; preds = %bb.aj
  %i.fk = sext i32 %i.fa to i64
  %i.fl = getelementptr inbounds i8, ptr %i.df, i64 %i.fk
  %.pre.i210 = load i8, ptr %i.df, align 8
  br label %stbi__refill_buffer.exit.i211

stbi__refill_buffer.exit.i211:                    ; preds = %bb.al, %bb.ak
  %i.fm = phi i8 [ 0, %bb.ak ], [ %.pre.i210, %bb.al ]
  %.sink.i.i212 = phi ptr [ %i.dj, %bb.ak ], [ %i.fl, %bb.al ]
  store ptr %.sink.i.i212, ptr %i.g, align 8
  store ptr %i.dj, ptr %i.e, align 8
  br label %stbi__get8.exit214

stbi__get8.exit214:                               ; preds = %bb.ah, %stbi__refill_buffer.exit.i211
  %.0.i213 = phi i8 [ %i.eu, %bb.ah ], [ %i.fm, %stbi__refill_buffer.exit.i211 ] ; 2 uses
  %i.fn = zext i8 %.0.i213 to i32                 ; 2 uses
  %i.fo = lshr i32 %i.fn, 4                       ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.ei, i64 4
  store i32 %i.fo, ptr %i.fp, align 4
  %.not194 = icmp eq i32 %i.fo, 0
  %i.fq = icmp ugt i8 %.0.i213, 79
  %or.cond = or i1 %i.fq, %.not194
  br i1 %or.cond, label %.loopexit229, label %bb.am

.loopexit229:                                     ; preds = %stbi__get8.exit214, %stbi__get8.exit214.thread
  %i.fr = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.15) #13 ; 0 uses
  br label %.loopexit

bb.am:                                            ; preds = %stbi__get8.exit214
  %i.fs = and i32 %i.fn, 15                       ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  store i32 %i.fs, ptr %i.ft, align 8
  %i.fu = add nsw i32 %i.fs, -5
  %or.cond196 = icmp ult i32 %i.fu, -4
  br i1 %or.cond196, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.fv = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.15) #13 ; 0 uses
  br label %.loopexit

bb.ao:                                            ; preds = %bb.am
  %i.fw = load ptr, ptr %i.e, align 8             ; 3 uses
  %i.fx = load ptr, ptr %i.g, align 8
  %i.fy = icmp ult ptr %i.fw, %i.fx
  br i1 %i.fy, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fw, i64 1
  store ptr %i.fz, ptr %i.e, align 8
  %i.ga = load i8, ptr %i.fw, align 1
  br label %stbi__get8.exit220

bb.aq:                                            ; preds = %bb.ao
  %i.gb = load i32, ptr %i.dc, align 8
  %.not.i215 = icmp eq i32 %i.gb, 0
  br i1 %.not.i215, label %stbi__get8.exit220.thread, label %bb.ar

stbi__get8.exit220.thread:                        ; preds = %bb.aq
  %i.gc = getelementptr inbounds nuw i8, ptr %i.ei, i64 12
  store i32 0, ptr %i.gc, align 4
  br label %bb.av

bb.ar:                                            ; preds = %bb.aq
  %i.gd = load ptr, ptr %i.dd, align 8
  %i.ge = load ptr, ptr %i.de, align 8
  %i.gf = load i32, ptr %i.dg, align 4
  %i.gg = tail call i32 %i.gd(ptr noundef %i.ge, ptr noundef nonnull %i.df, i32 noundef %i.gf) #13, !inline_history !119 ; 2 uses
  %i.gh = load ptr, ptr %i.e, align 8
  %i.gi = load ptr, ptr %i.dh, align 8
  %i.gj = ptrtoint ptr %i.gh to i64
  %i.gk = ptrtoint ptr %i.gi to i64
  %i.gl = sub i64 %i.gj, %i.gk
  %i.gm = trunc i64 %i.gl to i32
  %i.gn = load i32, ptr %i.di, align 8
  %i.go = add nsw i32 %i.gn, %i.gm
  store i32 %i.go, ptr %i.di, align 8
  %i.gp = icmp eq i32 %i.gg, 0
  br i1 %i.gp, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  store i32 0, ptr %i.dc, align 8
  store i8 0, ptr %i.df, align 8
  br label %stbi__refill_buffer.exit.i217

bb.at:                                            ; preds = %bb.ar
  %i.gq = sext i32 %i.gg to i64
  %i.gr = getelementptr inbounds i8, ptr %i.df, i64 %i.gq
  %.pre.i216 = load i8, ptr %i.df, align 8
  br label %stbi__refill_buffer.exit.i217

stbi__refill_buffer.exit.i217:                    ; preds = %bb.at, %bb.as
  %i.gs = phi i8 [ 0, %bb.as ], [ %.pre.i216, %bb.at ]
  %.sink.i.i218 = phi ptr [ %i.dj, %bb.as ], [ %i.gr, %bb.at ]
  store ptr %.sink.i.i218, ptr %i.g, align 8
  store ptr %i.dj, ptr %i.e, align 8
  br label %stbi__get8.exit220

stbi__get8.exit220:                               ; preds = %bb.ap, %stbi__refill_buffer.exit.i217
  %.0.i219 = phi i8 [ %i.ga, %bb.ap ], [ %i.gs, %stbi__refill_buffer.exit.i217 ] ; 2 uses
  %i.gt = zext i8 %.0.i219 to i32
  %i.gu = getelementptr inbounds nuw i8, ptr %i.ei, i64 12
  store i32 %i.gt, ptr %i.gu, align 4
  %i.gv = icmp ugt i8 %.0.i219, 3
  br i1 %i.gv, label %bb.au, label %bb.av

bb.au:                                            ; preds = %stbi__get8.exit220
  %i.gw = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.15) #13 ; 0 uses
  br label %.loopexit

bb.av:                                            ; preds = %stbi__get8.exit220.thread, %stbi__get8.exit220
  %indvars.iv.next268 = add nuw nsw i64 %indvars.iv267, 1 ; 2 uses
  %i.gx = load i32, ptr %i.cd, align 8            ; 2 uses
  %i.gy = sext i32 %i.gx to i64
  %i.gz = icmp slt i64 %indvars.iv.next268, %i.gy
  br i1 %i.gz, label %bb.y, label %._crit_edge244, !llvm.loop !130

._crit_edge244:                                   ; preds = %bb.av, %bb.x
  %.lcssa = phi i32 [ %i.da, %bb.x ], [ %i.gx, %bb.av ] ; 6 uses
  %i.ha = load i32, ptr %i.a, align 8
  %i.hb = load i32, ptr %i.an, align 4
  %i.hc = tail call fastcc i32 @stbi__mad3sizes_valid(i32 noundef %i.ha, i32 noundef %i.hb, i32 noundef %.lcssa, i32 noundef 0)
  %.not190 = icmp eq i32 %i.hc, 0
  br i1 %.not190, label %bb.aw, label %.preheader228

.preheader228:                                    ; preds = %._crit_edge244
  %i.hd = icmp sgt i32 %.lcssa, 0
  br i1 %i.hd, label %.lr.ph248, label %._crit_edge253

.lr.ph248:                                        ; preds = %.preheader228
  %i.he = getelementptr inbounds nuw i8, ptr %0, i64 18080 ; 3 uses
  %wide.trip.count273 = zext nneg i32 %.lcssa to i64 ; 2 uses
  %xtraiter19 = and i64 %wide.trip.count273, 1
  %i.hf = icmp eq i32 %.lcssa, 1
  br i1 %i.hf, label %.epil.preheader18, label %.lr.ph248.new

.lr.ph248.new:                                    ; preds = %.lr.ph248
  %unroll_iter25 = and i64 %wide.trip.count273, 2147483646
  br label %bb.ax

bb.aw:                                            ; preds = %._crit_edge244
  %i.hg = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.19) #13 ; 0 uses
  br label %.loopexit

.lr.ph252.unr-lcssa:                              ; preds = %bb.ax
  %lcmp.mod21.not = icmp eq i64 %xtraiter19, 0
  br i1 %lcmp.mod21.not, label %.lr.ph252, label %.epil.preheader18

.epil.preheader18:                                ; preds = %.lr.ph252.unr-lcssa, %.lr.ph248
  %indvars.iv270.epil.init = phi i64 [ 0, %.lr.ph248 ], [ %indvars.iv.next271.1, %.lr.ph252.unr-lcssa ]
  %.0247.epil.init = phi i32 [ 1, %.lr.ph248 ], [ %.1.1, %.lr.ph252.unr-lcssa ]
  %.0175246.epil.init = phi i32 [ 1, %.lr.ph248 ], [ %spec.select.1, %.lr.ph252.unr-lcssa ]
  %lcmp.mod24 = trunc i32 %.lcssa to i1
  tail call void @llvm.assume(i1 %lcmp.mod24)
  %i.hh = getelementptr inbounds nuw [96 x i8], ptr %i.he, i64 %indvars.iv270.epil.init ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 4
  %i.hj = load i32, ptr %i.hi, align 4
  %spec.select.epil = tail call i32 @llvm.smax.i32(i32 %i.hj, i32 %.0175246.epil.init)
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hh, i64 8
  %i.hl = load i32, ptr %i.hk, align 8
  %.1.epil = tail call i32 @llvm.smax.i32(i32 %i.hl, i32 %.0247.epil.init)
  br label %.lr.ph252

.lr.ph252:                                        ; preds = %.lr.ph252.unr-lcssa, %.epil.preheader18
  %spec.select.lcssa = phi i32 [ %spec.select.1, %.lr.ph252.unr-lcssa ], [ %spec.select.epil, %.epil.preheader18 ] ; 2 uses
  %.1.lcssa = phi i32 [ %.1.1, %.lr.ph252.unr-lcssa ], [ %.1.epil, %.epil.preheader18 ] ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %0, i64 18080
  %wide.trip.count278 = zext nneg i32 %.lcssa to i64
  br label %bb.az

bb.ax:                                            ; preds = %bb.ax, %.lr.ph248.new
  %indvars.iv270 = phi i64 [ 0, %.lr.ph248.new ], [ %indvars.iv.next271.1, %bb.ax ] ; 3 uses
  %.0247 = phi i32 [ 1, %.lr.ph248.new ], [ %.1.1, %bb.ax ]
  %.0175246 = phi i32 [ 1, %.lr.ph248.new ], [ %spec.select.1, %bb.ax ]
  %niter26 = phi i64 [ 0, %.lr.ph248.new ], [ %niter26.next.1, %bb.ax ]
  %i.hn = getelementptr inbounds nuw [96 x i8], ptr %i.he, i64 %indvars.iv270 ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 4
  %i.hp = load i32, ptr %i.ho, align 4
  %spec.select = tail call i32 @llvm.smax.i32(i32 %i.hp, i32 %.0175246)
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hn, i64 8
  %i.hr = load i32, ptr %i.hq, align 8
  %.1 = tail call i32 @llvm.smax.i32(i32 %i.hr, i32 %.0247)
  %i.hs = getelementptr inbounds nuw [96 x i8], ptr %i.he, i64 %indvars.iv270 ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 100
  %i.hu = load i32, ptr %i.ht, align 4
  %spec.select.1 = tail call i32 @llvm.smax.i32(i32 %i.hu, i32 %spec.select) ; 3 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hs, i64 104
  %i.hw = load i32, ptr %i.hv, align 8
  %.1.1 = tail call i32 @llvm.smax.i32(i32 %i.hw, i32 %.1) ; 3 uses
  %indvars.iv.next271.1 = add nuw nsw i64 %indvars.iv270, 2 ; 2 uses
  %niter26.next.1 = add i64 %niter26, 2           ; 2 uses
  %niter26.ncmp.1 = icmp eq i64 %niter26.next.1, %unroll_iter25
  br i1 %niter26.ncmp.1, label %.lr.ph252.unr-lcssa, label %bb.ax, !llvm.loop !131

bb.ay:                                            ; preds = %bb.bb
  %indvars.iv.next276 = add nuw nsw i64 %indvars.iv275, 1 ; 2 uses
  %exitcond279.not = icmp eq i64 %indvars.iv.next276, %wide.trip.count278
  br i1 %exitcond279.not, label %._crit_edge253, label %bb.az, !llvm.loop !132

bb.az:                                            ; preds = %.lr.ph252, %bb.ay
  %indvars.iv275 = phi i64 [ 0, %.lr.ph252 ], [ %indvars.iv.next276, %bb.ay ] ; 2 uses
  %i.hx = getelementptr inbounds nuw [96 x i8], ptr %i.hm, i64 %indvars.iv275 ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 4
  %i.hz = load i32, ptr %i.hy, align 4
  %i.ia = srem i32 %spec.select.lcssa, %i.hz
  %.not192 = icmp eq i32 %i.ia, 0
  br i1 %.not192, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.ib = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.15) #13 ; 0 uses
  br label %.loopexit

bb.bb:                                            ; preds = %bb.az
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hx, i64 8
  %i.id = load i32, ptr %i.ic, align 8
  %i.ie = srem i32 %.1.lcssa, %i.id
  %.not193 = icmp eq i32 %i.ie, 0
  br i1 %.not193, label %bb.ay, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.if = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.15) #13 ; 0 uses
  br label %.loopexit

._crit_edge253:                                   ; preds = %bb.ay, %.preheader228
  %.0.lcssa300 = phi i32 [ 1, %.preheader228 ], [ %.1.lcssa, %bb.ay ] ; 4 uses
  %.0175.lcssa298 = phi i32 [ 1, %.preheader228 ], [ %spec.select.lcssa, %bb.ay ] ; 4 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %0, i64 18056
  store i32 %.0175.lcssa298, ptr %i.ig, align 8
  %i.ih = getelementptr inbounds nuw i8, ptr %0, i64 18060
  store i32 %.0.lcssa300, ptr %i.ih, align 4
  %i.ii = shl nsw i32 %.0175.lcssa298, 3          ; 3 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %0, i64 18072
  store i32 %i.ii, ptr %i.ij, align 8
  %i.ik = shl nsw i32 %.0.lcssa300, 3             ; 3 uses
  %i.il = getelementptr inbounds nuw i8, ptr %0, i64 18076
  store i32 %i.ik, ptr %i.il, align 4
  %i.im = load i32, ptr %i.a, align 8
  %i.in = add nsw i32 %i.ii, -1
  %i.io = add i32 %i.in, %i.im
  %i.ip = udiv i32 %i.io, %i.ii
  %i.iq = getelementptr inbounds nuw i8, ptr %0, i64 18064 ; 2 uses
  store i32 %i.ip, ptr %i.iq, align 8
  %i.ir = load i32, ptr %i.an, align 4
  %i.is = add nsw i32 %i.ik, -1
  %i.it = add i32 %i.is, %i.ir
  %i.iu = udiv i32 %i.it, %i.ik
  %i.iv = getelementptr inbounds nuw i8, ptr %0, i64 18068 ; 2 uses
  store i32 %i.iu, ptr %i.iv, align 4
  %i.iw = load i32, ptr %i.cd, align 8
  %i.ix = icmp sgt i32 %i.iw, 0
  br i1 %i.ix, label %.lr.ph256, label %.loopexit

.lr.ph256:                                        ; preds = %._crit_edge253
  %i.iy = getelementptr inbounds nuw i8, ptr %0, i64 18080
  %i.iz = add nsw i32 %.0175.lcssa298, -1
  %i.ja = add nsw i32 %.0.lcssa300, -1
  %i.jb = getelementptr inbounds nuw i8, ptr %0, i64 18480
  br label %bb.bd

bb.bd:                                            ; preds = %.lr.ph256, %bb.bj
  %indvars.iv280 = phi i64 [ 0, %.lr.ph256 ], [ %indvars.iv.next281, %bb.bj ] ; 4 uses
  %i.jc = load i32, ptr %i.a, align 8
  %i.jd = getelementptr inbounds nuw [96 x i8], ptr %i.iy, i64 %indvars.iv280 ; 11 uses
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 4
  %i.jf = load i32, ptr %i.je, align 4            ; 2 uses
  %i.jg = mul i32 %i.jf, %i.jc
  %i.jh = add i32 %i.iz, %i.jg
  %i.ji = udiv i32 %i.jh, %.0175.lcssa298
  %i.jj = getelementptr inbounds nuw i8, ptr %i.jd, i64 28
  store i32 %i.ji, ptr %i.jj, align 4
  %i.jk = load i32, ptr %i.an, align 4
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jd, i64 8
  %i.jm = load i32, ptr %i.jl, align 8            ; 2 uses
  %i.jn = mul i32 %i.jm, %i.jk
  %i.jo = add i32 %i.ja, %i.jn
  %i.jp = udiv i32 %i.jo, %.0.lcssa300
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jd, i64 32
  store i32 %i.jp, ptr %i.jq, align 8
  %i.jr = load i32, ptr %i.iq, align 8
  %i.js = shl i32 %i.jf, 3
  %i.jt = mul i32 %i.js, %i.jr                    ; 2 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jd, i64 36 ; 2 uses
  store i32 %i.jt, ptr %i.ju, align 4
  %i.jv = load i32, ptr %i.iv, align 4
  %i.jw = shl i32 %i.jm, 3
  %i.jx = mul i32 %i.jw, %i.jv                    ; 2 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jd, i64 40
  store i32 %i.jx, ptr %i.jy, align 8
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jd, i64 80
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jd, i64 64 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ka, i8 0, i64 24, i1 false)
  %i.kb = tail call fastcc ptr @stbi__malloc_mad2(i32 noundef %i.jt, i32 noundef %i.jx, i32 noundef 15) ; 3 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %i.jd, i64 56
  store ptr %i.kb, ptr %i.kc, align 8
  %i.kd = icmp eq ptr %i.kb, null
  br i1 %i.kd, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.ke = trunc nuw nsw i64 %indvars.iv280 to i32
  %i.kf = add nuw nsw i32 %i.ke, 1
  %i.kg = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.10) #13 ; 0 uses
  tail call fastcc void @stbi__free_jpeg_components(ptr noundef %0, i32 noundef %i.kf)
  br label %.loopexit

bb.bf:                                            ; preds = %bb.bd
  %i.kh = ptrtoint ptr %i.kb to i64
  %i.ki = add i64 %i.kh, 15
  %i.kj = and i64 %i.ki, -16
  %i.kk = inttoptr i64 %i.kj to ptr
  %i.kl = getelementptr inbounds nuw i8, ptr %i.jd, i64 48
  store ptr %i.kk, ptr %i.kl, align 8
  %i.km = load i32, ptr %i.jb, align 8
  %.not191 = icmp eq i32 %i.km, 0
  br i1 %.not191, label %bb.bj, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.kn = getelementptr inbounds nuw i8, ptr %i.jd, i64 88
  %i.ko = load <2 x i32>, ptr %i.ju, align 4      ; 3 uses
  %i.kp = sdiv <2 x i32> %i.ko, splat (i32 8)
  store <2 x i32> %i.kp, ptr %i.kn, align 8
  %i.kq = extractelement <2 x i32> %i.ko, i64 0
  %i.kr = extractelement <2 x i32> %i.ko, i64 1
  %i.ks = tail call fastcc ptr @stbi__malloc_mad3(i32 noundef %i.kq, i32 noundef %i.kr, i32 noundef 2, i32 noundef 15) ; 3 uses
  store ptr %i.ks, ptr %i.ka, align 8
  %i.kt = icmp eq ptr %i.ks, null
  br i1 %i.kt, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.ku = trunc nuw nsw i64 %indvars.iv280 to i32
  %i.kv = add nuw nsw i32 %i.ku, 1
  %i.kw = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.10) #13 ; 0 uses
  tail call fastcc void @stbi__free_jpeg_components(ptr noundef %0, i32 noundef %i.kv)
  br label %.loopexit

bb.bi:                                            ; preds = %bb.bg
  %i.kx = ptrtoint ptr %i.ks to i64
  %i.ky = add i64 %i.kx, 15
  %i.kz = and i64 %i.ky, -16
  %i.la = inttoptr i64 %i.kz to ptr
  store ptr %i.la, ptr %i.jz, align 8
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bf, %bb.bi
  %indvars.iv.next281 = add nuw nsw i64 %indvars.iv280, 1 ; 2 uses
  %i.lb = load i32, ptr %i.cd, align 8
  %i.lc = sext i32 %i.lb to i64
  %i.ld = icmp slt i64 %indvars.iv.next281, %i.lc
  br i1 %i.ld, label %bb.bd, label %.loopexit, !llvm.loop !133

.loopexit:                                        ; preds = %bb.bj, %._crit_edge253, %bb.bh, %bb.be, %bb.bc, %bb.ba, %bb.aw, %bb.au, %bb.an, %.loopexit229, %bb.w, %stbi__get8.exit202.thread, %bb.n, %bb.l, %bb.j, %stbi__get8.exit.thread, %bb.b
  %.0179 = phi i32 [ 0, %bb.b ], [ 0, %stbi__get8.exit.thread ], [ 0, %bb.j ], [ 0, %bb.l ], [ 0, %bb.n ], [ 0, %bb.aw ], [ 0, %stbi__get8.exit202.thread ], [ 0, %bb.w ], [ 0, %.loopexit229 ], [ 0, %bb.an ], [ 0, %bb.au ], [ 0, %bb.bh ], [ 0, %bb.ba ], [ 0, %bb.bc ], [ 0, %bb.be ], [ 1, %._crit_edge253 ], [ 1, %bb.bj ]
  ret i32 %.0179
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @stbi__get8(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = icmp ult ptr %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store ptr %i.f, ptr %i.a, align 8
  %i.g = load i8, ptr %i.b, align 1
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.p = load i32, ptr %i.o, align 4
  %i.q = tail call i32 %i.k(ptr noundef %i.m, ptr noundef nonnull %i.n, i32 noundef %i.p) #13, !inline_history !134 ; 2 uses
  %i.r = load ptr, ptr %i.a, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = ptrtoint ptr %i.r to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v
end_hunk_2
begin_hunk_3_@stbi__load_main:bb.a
  %.not.i.i.i.i.i.i.i.i = icmp eq i32 %.highbits.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.hd, label %bb.hc

bb.hc:                                            ; preds = %.preheader160.i.i.i.i.i.i
  store ptr %.val2.i.i.i.i.i.i.i.i.i, ptr %9, align 8
  br label %stbi__zreceive.exit.i.i.i.i.i.i

bb.hd:                                            ; preds = %.preheader160.i.i.i.i.i.i
  %.not3.i.i.i.i.i.i.i.i.i = icmp ult ptr %i.abf, %.val2.i.i.i.i.i.i.i.i.i
  br i1 %.not3.i.i.i.i.i.i.i.i.i, label %bb.he, label %stbi__zget8.exit.i.i.i.i.i.i.i.i

bb.he:                                            ; preds = %bb.hd
  %i.abi = getelementptr inbounds nuw i8, ptr %i.abf, i64 1 ; 2 uses
  store ptr %i.abi, ptr %9, align 8
  %i.abj = load i8, ptr %i.abf, align 1
  %i.abk = zext i8 %i.abj to i32
  br label %stbi__zget8.exit.i.i.i.i.i.i.i.i

stbi__zget8.exit.i.i.i.i.i.i.i.i:                 ; preds = %bb.he, %bb.hd
  %i.abl = phi ptr [ %i.abi, %bb.he ], [ %i.abf, %bb.hd ]
  %i.abm = phi i32 [ %i.abk, %bb.he ], [ 0, %bb.hd ]
  %i.abn = shl i32 %i.abm, %i.abg
  %i.abo = or i32 %i.abn, %i.abh                  ; 4 uses
  store i32 %i.abo, ptr %i.aas, align 8
  %i.abp = add nsw i32 %i.abg, 8                  ; 2 uses
  store i32 %i.abp, ptr %i.aar, align 8
  %i.abq = icmp slt i32 %i.abg, 17
  br i1 %i.abq, label %.preheader160.i.i.i.i.i.i, label %stbi__zreceive.exit.thread.i.i.i.i.i.i, !llvm.loop !154

stbi__zreceive.exit.thread.i.i.i.i.i.i:           ; preds = %stbi__zget8.exit.i.i.i.i.i.i.i.i
  %i.abr = lshr i32 %i.abo, 1
  %i.abs = add nuw nsw i32 %i.abg, 7
  br label %stbi__zreceive.exit31.i.i.i.i.i.i

stbi__zreceive.exit.i.i.i.i.i.i:                  ; preds = %bb.hc, %bb.hb
  %i.abt = phi i32 [ %i.abd, %bb.hb ], [ %i.abg, %bb.hc ] ; 2 uses
  %i.abu = phi i32 [ %.promoted.i.i.i.i.i.i.i.i, %bb.hb ], [ %i.abh, %bb.hc ] ; 4 uses
  %i.abv = lshr i32 %i.abu, 1                     ; 3 uses
  store i32 %i.abv, ptr %i.aas, align 8
  %i.abw = add nsw i32 %i.abt, -1                 ; 3 uses
  store i32 %i.abw, ptr %i.aar, align 8
  %i.abx = icmp slt i32 %i.abt, 3
  br i1 %i.abx, label %.preheader159.i.i.preheader.i.i.i.i, label %stbi__zreceive.exit31.i.i.i.i.i.i

.preheader159.i.i.preheader.i.i.i.i:              ; preds = %stbi__zreceive.exit.i.i.i.i.i.i
  %.promoted129.i.i.i.i = load ptr, ptr %9, align 8
  %.val2.i.i.i28.i.i.i.i.i.i = load ptr, ptr %i.zx, align 8 ; 2 uses
  br label %.preheader159.i.i.i.i.i.i

.preheader159.i.i.i.i.i.i:                        ; preds = %stbi__zget8.exit.i.i30.i.i.i.i.i.i, %.preheader159.i.i.preheader.i.i.i.i
  %i.aby = phi ptr [ %i.ace, %stbi__zget8.exit.i.i30.i.i.i.i.i.i ], [ %.promoted129.i.i.i.i, %.preheader159.i.i.preheader.i.i.i.i ] ; 4 uses
  %i.abz = phi i32 [ %i.aci, %stbi__zget8.exit.i.i30.i.i.i.i.i.i ], [ %i.abw, %.preheader159.i.i.preheader.i.i.i.i ] ; 5 uses
  %i.aca = phi i32 [ %i.ach, %stbi__zget8.exit.i.i30.i.i.i.i.i.i ], [ %i.abv, %.preheader159.i.i.preheader.i.i.i.i ] ; 3 uses
  %.highbits.i.i25.i.i.i.i.i.i = lshr i32 %i.aca, %i.abz
  %.not.i.i26.i.i.i.i.i.i = icmp eq i32 %.highbits.i.i25.i.i.i.i.i.i, 0
  br i1 %.not.i.i26.i.i.i.i.i.i, label %bb.hg, label %bb.hf

bb.hf:                                            ; preds = %.preheader159.i.i.i.i.i.i
  store ptr %.val2.i.i.i28.i.i.i.i.i.i, ptr %9, align 8
  br label %stbi__zreceive.exit31.i.i.i.i.i.i

bb.hg:                                            ; preds = %.preheader159.i.i.i.i.i.i
  %.not3.i.i.i29.i.i.i.i.i.i = icmp ult ptr %i.aby, %.val2.i.i.i28.i.i.i.i.i.i
  br i1 %.not3.i.i.i29.i.i.i.i.i.i, label %bb.hh, label %stbi__zget8.exit.i.i30.i.i.i.i.i.i

bb.hh:                                            ; preds = %bb.hg
  %i.acb = getelementptr inbounds nuw i8, ptr %i.aby, i64 1 ; 2 uses
  store ptr %i.acb, ptr %9, align 8
  %i.acc = load i8, ptr %i.aby, align 1
  %i.acd = zext i8 %i.acc to i32
  br label %stbi__zget8.exit.i.i30.i.i.i.i.i.i

stbi__zget8.exit.i.i30.i.i.i.i.i.i:               ; preds = %bb.hh, %bb.hg
  %i.ace = phi ptr [ %i.acb, %bb.hh ], [ %i.aby, %bb.hg ]
  %i.acf = phi i32 [ %i.acd, %bb.hh ], [ 0, %bb.hg ]
  %i.acg = shl i32 %i.acf, %i.abz
  %i.ach = or i32 %i.acg, %i.aca                  ; 3 uses
  store i32 %i.ach, ptr %i.aas, align 8
  %i.aci = add nsw i32 %i.abz, 8                  ; 3 uses
  store i32 %i.aci, ptr %i.aar, align 8
  %i.acj = icmp slt i32 %i.abz, 17
  br i1 %i.acj, label %.preheader159.i.i.i.i.i.i, label %stbi__zreceive.exit31.i.i.i.i.i.i, !llvm.loop !154

stbi__zreceive.exit31.i.i.i.i.i.i:                ; preds = %stbi__zget8.exit.i.i30.i.i.i.i.i.i, %bb.hf, %stbi__zreceive.exit.i.i.i.i.i.i, %stbi__zreceive.exit.thread.i.i.i.i.i.i
  %.in.i.i.i.i.i.i = phi i32 [ %i.abu, %stbi__zreceive.exit.i.i.i.i.i.i ], [ %i.abu, %bb.hf ], [ %i.abo, %stbi__zreceive.exit.thread.i.i.i.i.i.i ], [ %i.abu, %stbi__zget8.exit.i.i30.i.i.i.i.i.i ]
  %i.ack = phi i32 [ %i.abw, %stbi__zreceive.exit.i.i.i.i.i.i ], [ %i.abz, %bb.hf ], [ %i.abs, %stbi__zreceive.exit.thread.i.i.i.i.i.i ], [ %i.aci, %stbi__zget8.exit.i.i30.i.i.i.i.i.i ] ; 3 uses
  %i.acl = phi i32 [ %i.abv, %stbi__zreceive.exit.i.i.i.i.i.i ], [ %i.aca, %bb.hf ], [ %i.abr, %stbi__zreceive.exit.thread.i.i.i.i.i.i ], [ %i.ach, %stbi__zget8.exit.i.i30.i.i.i.i.i.i ] ; 2 uses
  %i.acm = and i32 %.in.i.i.i.i.i.i, 1
  %i.acn = and i32 %i.acl, 3
  %i.aco = lshr i32 %i.acl, 2                     ; 6 uses
  store i32 %i.aco, ptr %i.aas, align 8
  %i.acp = add nsw i32 %i.ack, -2                 ; 7 uses
  store i32 %i.acp, ptr %i.aar, align 8
  switch i32 %i.acn, label %default.unreachable [
    i32 0, label %bb.hi
    i32 3, label %stbi__zexpand.exit19.thread.i.i.i.i
    i32 1, label %bb.hz
    i32 2, label %bb.ib
  ]

bb.hi:                                            ; preds = %stbi__zreceive.exit31.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  %i.acq = and i32 %i.acp, 7                      ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq i32 %i.acq, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.hn, label %bb.hj

bb.hj:                                            ; preds = %bb.hi
  %i.acr = icmp slt i32 %i.ack, 2
  br i1 %i.acr, label %.preheader.i.i.preheader.i.i.i.i, label %stbi__zreceive.exit.i.i.i.i.i.i.i

.preheader.i.i.preheader.i.i.i.i:                 ; preds = %bb.hj
  %.promoted166.i.i.i.i = load ptr, ptr %9, align 8
  %.val2.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.zx, align 8 ; 2 uses
  br label %.preheader.i.i.i.i.i.i

.preheader.i.i.i.i.i.i:                           ; preds = %stbi__zget8.exit.i.i.i.i.i.i.i.i.i, %.preheader.i.i.preheader.i.i.i.i
  %i.acs = phi ptr [ %i.acy, %stbi__zget8.exit.i.i.i.i.i.i.i.i.i ], [ %.promoted166.i.i.i.i, %.preheader.i.i.preheader.i.i.i.i ] ; 4 uses
  %i.act = phi i32 [ %i.adc, %stbi__zget8.exit.i.i.i.i.i.i.i.i.i ], [ %i.acp, %.preheader.i.i.preheader.i.i.i.i ] ; 5 uses
  %i.acu = phi i32 [ %i.adb, %stbi__zget8.exit.i.i.i.i.i.i.i.i.i ], [ %i.aco, %.preheader.i.i.preheader.i.i.i.i ] ; 3 uses
  %.highbits.i.i.i.i.i.i.i.i.i = lshr i32 %i.acu, %i.act
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i32 %.highbits.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.hl, label %bb.hk

bb.hk:                                            ; preds = %.preheader.i.i.i.i.i.i
  store ptr %.val2.i.i.i.i.i.i.i.i.i.i, ptr %9, align 8
  br label %stbi__zreceive.exit.i.i.i.i.i.i.i

bb.hl:                                            ; preds = %.preheader.i.i.i.i.i.i
  %.not3.i.i.i.i.i.i.i.i.i.i = icmp ult ptr %i.acs, %.val2.i.i.i.i.i.i.i.i.i.i
  br i1 %.not3.i.i.i.i.i.i.i.i.i.i, label %bb.hm, label %stbi__zget8.exit.i.i.i.i.i.i.i.i.i

bb.hm:                                            ; preds = %bb.hl
  %i.acv = getelementptr inbounds nuw i8, ptr %i.acs, i64 1 ; 2 uses
  store ptr %i.acv, ptr %9, align 8
  %i.acw = load i8, ptr %i.acs, align 1
  %i.acx = zext i8 %i.acw to i32
  br label %stbi__zget8.exit.i.i.i.i.i.i.i.i.i

stbi__zget8.exit.i.i.i.i.i.i.i.i.i:               ; preds = %bb.hm, %bb.hl
  %i.acy = phi ptr [ %i.acv, %bb.hm ], [ %i.acs, %bb.hl ]
  %i.acz = phi i32 [ %i.acx, %bb.hm ], [ 0, %bb.hl ]
  %i.ada = shl i32 %i.acz, %i.act
  %i.adb = or i32 %i.ada, %i.acu                  ; 3 uses
  store i32 %i.adb, ptr %i.aas, align 8
  %i.adc = add nsw i32 %i.act, 8                  ; 3 uses
  store i32 %i.adc, ptr %i.aar, align 8
  %i.add = icmp slt i32 %i.act, 17
  br i1 %i.add, label %.preheader.i.i.i.i.i.i, label %stbi__zreceive.exit.i.i.i.i.i.i.i, !llvm.loop !154

stbi__zreceive.exit.i.i.i.i.i.i.i:                ; preds = %stbi__zget8.exit.i.i.i.i.i.i.i.i.i, %bb.hk, %bb.hj
  %i.ade = phi i32 [ %i.acp, %bb.hj ], [ %i.act, %bb.hk ], [ %i.adc, %stbi__zget8.exit.i.i.i.i.i.i.i.i.i ]
  %i.adf = phi i32 [ %i.aco, %bb.hj ], [ %i.acu, %bb.hk ], [ %i.adb, %stbi__zget8.exit.i.i.i.i.i.i.i.i.i ]
  %i.adg = lshr i32 %i.adf, %i.acq                ; 2 uses
  store i32 %i.adg, ptr %i.aas, align 8
  %i.adh = sub nsw i32 %i.ade, %i.acq             ; 2 uses
  store i32 %i.adh, ptr %i.aar, align 8
  br label %bb.hn

bb.hn:                                            ; preds = %stbi__zreceive.exit.i.i.i.i.i.i.i, %bb.hi
  %.promoted.i.i.i.i.i.i.i = phi i32 [ %i.adg, %stbi__zreceive.exit.i.i.i.i.i.i.i ], [ %i.aco, %bb.hi ] ; 2 uses
  %.pr.i.i.i.i.i.i.i = phi i32 [ %i.adh, %stbi__zreceive.exit.i.i.i.i.i.i.i ], [ %i.acp, %bb.hi ] ; 6 uses
  %i.adi = icmp sgt i32 %.pr.i.i.i.i.i.i.i, 0
  br i1 %i.adi, label %.lr.ph.i.i.i.i.i.i.i, label %.thread.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.hn
  %i.adj = add nsw i32 %.pr.i.i.i.i.i.i.i, -1     ; 2 uses
  %i.adk = lshr i32 %i.adj, 3
  %i.adl = add nuw nsw i32 %i.adk, 1
  %wide.trip.count.i.i.i.i.i.i = zext nneg i32 %i.adl to i64 ; 3 uses
  %xtraiter788 = and i64 %wide.trip.count.i.i.i.i.i.i, 3 ; 3 uses
  %i.adm = icmp ult i32 %.pr.i.i.i.i.i.i.i, 25
  br i1 %i.adm, label %.epil.preheader, label %.lr.ph.i.i.i.i.i.i.i.new

.lr.ph.i.i.i.i.i.i.i.new:                         ; preds = %.lr.ph.i.i.i.i.i.i.i
  %unroll_iter = and i64 %wide.trip.count.i.i.i.i.i.i, 1073741820
  br label %bb.ho

bb.ho:                                            ; preds = %bb.ho, %.lr.ph.i.i.i.i.i.i.i.new
  %indvars.iv.i.i.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.new ], [ %indvars.iv.next.i.i.i.i.i.i.i.3, %bb.ho ] ; 5 uses
  %i.adn = phi i32 [ %.promoted.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.new ], [ 0, %bb.ho ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.new ], [ %niter.next.3, %bb.ho ]
  %i.ado = trunc i32 %i.adn to i8
  %i.adp = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv.i.i.i.i.i.i.i
  store i8 %i.ado, ptr %i.adp, align 2
  %i.adq = lshr i32 %i.adn, 8
  %i.adr = trunc i32 %i.adq to i8
  %i.ads = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv.i.i.i.i.i.i.i
  %i.adt = getelementptr inbounds nuw i8, ptr %i.ads, i64 1
  store i8 %i.adr, ptr %i.adt, align 1
  %i.adu = lshr i32 %i.adn, 16
  %i.adv = trunc i32 %i.adu to i8
  %i.adw = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv.i.i.i.i.i.i.i
  %i.adx = getelementptr inbounds nuw i8, ptr %i.adw, i64 2
  store i8 %i.adv, ptr %i.adx, align 2
  %i.ady = lshr i32 %i.adn, 24
  %i.adz = trunc nuw i32 %i.ady to i8
  %indvars.iv.next.i.i.i.i.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i.i, 4 ; 2 uses
  %i.aea = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv.i.i.i.i.i.i.i
  %i.aeb = getelementptr inbounds nuw i8, ptr %i.aea, i64 3
  store i8 %i.adz, ptr %i.aeb, align 1
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.unr-lcssa, label %bb.ho, !llvm.loop !155

.unr-lcssa:                                       ; preds = %bb.ho
  %lcmp.mod789.not = icmp eq i64 %xtraiter788, 0
  br i1 %lcmp.mod789.not, label %bb.hq, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i
  %indvars.iv.i.i.i.i.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i ], [ %indvars.iv.next.i.i.i.i.i.i.i.3, %.unr-lcssa ]
  %.epil.init = phi i32 [ %.promoted.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ], [ 0, %.unr-lcssa ]
  %lcmp.mod792 = icmp ne i64 %xtraiter788, 0
  tail call void @llvm.assume(i1 %lcmp.mod792)
  br label %bb.hp

bb.hp:                                            ; preds = %bb.hp, %.epil.preheader
  %indvars.iv.i.i.i.i.i.i.i.epil = phi i64 [ %indvars.iv.i.i.i.i.i.i.i.epil.init, %.epil.preheader ], [ %indvars.iv.next.i.i.i.i.i.i.i.epil, %bb.hp ] ; 3 uses
  %i.aec = phi i32 [ %.epil.init, %.epil.preheader ], [ %i.aef, %bb.hp ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.hp ]
  %i.aed = trunc i32 %i.aec to i8
  %indvars.iv.next.i.i.i.i.i.i.i.epil = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i.i.epil, 1
  %i.aee = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv.i.i.i.i.i.i.i.epil
  store i8 %i.aed, ptr %i.aee, align 1
  %i.aef = lshr i32 %i.aec, 8                     ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter788
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %bb.hp, !llvm.loop !156

.epilog-lcssa:                                    ; preds = %bb.hp
  %i.aeg = icmp samesign ult i64 %indvars.iv.i.i.i.i.i.i.i.epil, 3
  br label %bb.hq

bb.hq:                                            ; preds = %.unr-lcssa, %.epilog-lcssa
  %indvars.iv.i.i.i.i.i.i.i.lcssa = phi i1 [ false, %.unr-lcssa ], [ %i.aeg, %.epilog-lcssa ]
  %.lcssa500 = phi i32 [ 0, %.unr-lcssa ], [ %i.aef, %.epilog-lcssa ]
  %i.aeh = add nsw i32 %.pr.i.i.i.i.i.i.i, -8
  %i.aei = and i32 %i.adj, -8                     ; 2 uses
  %i.aej = sub nsw i32 %i.aeh, %i.aei             ; 3 uses
  %i.aek = sub nsw i32 %.pr.i.i.i.i.i.i.i, %i.aei
  store i32 %.lcssa500, ptr %i.aas, align 8
  store i32 %i.aej, ptr %i.aar, align 8
  %.not80.i.i.i.i.i.i.i = icmp eq i32 %i.aek, 8
  br i1 %.not80.i.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i.i, label %stbi__parse_uncompressed_block.exit.thread.i.i.i.i.i.i

.thread.i.i.i.i.i.i.i:                            ; preds = %bb.hn
  %i.ael = icmp slt i32 %.pr.i.i.i.i.i.i.i, 0
  br i1 %i.ael, label %stbi__parse_uncompressed_block.exit.thread.i.i.i.i.i.i, label %.lr.ph46.i.i.i.i.i.i.i

.preheader.i.i.i.i.i.i.i:                         ; preds = %bb.hq
  br i1 %indvars.iv.i.i.i.i.i.i.i.lcssa, label %.lr.ph46.i.i.i.i.i.i.i, label %._crit_edge47.i.i.i.i.i.i.i

.lr.ph46.i.i.i.i.i.i.i:                           ; preds = %.preheader.i.i.i.i.i.i.i, %.thread.i.i.i.i.i.i.i
  %.pr.i.i262.i.i.i.i = phi i32 [ %i.aej, %.preheader.i.i.i.i.i.i.i ], [ 0, %.thread.i.i.i.i.i.i.i ] ; 2 uses
  %.0.lcssa7072.i.i.i.i.i.i.i = phi i64 [ %wide.trip.count.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i ], [ 0, %.thread.i.i.i.i.i.i.i ] ; 5 uses
  %.val2.i.i32.i.i.i.i.i.i = load ptr, ptr %i.zx, align 8 ; 3 uses
  %.promoted48.i.i.i.i.i.i.i = load ptr, ptr %9, align 8 ; 5 uses
  %xtraiter793 = and i64 %.0.lcssa7072.i.i.i.i.i.i.i, 1
  %lcmp.mod794.not = icmp eq i64 %xtraiter793, 0
  br i1 %lcmp.mod794.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph46.i.i.i.i.i.i.i
  %.not3.i.i33.i.i.i.i.i.i.prol = icmp ult ptr %.promoted48.i.i.i.i.i.i.i, %.val2.i.i32.i.i.i.i.i.i
  br i1 %.not3.i.i33.i.i.i.i.i.i.prol, label %bb.hr, label %stbi__zget8.exit.i34.i.i.i.i.i.i.prol

bb.hr:                                            ; preds = %.prol.preheader
  %i.aem = getelementptr inbounds nuw i8, ptr %.promoted48.i.i.i.i.i.i.i, i64 1 ; 2 uses
  store ptr %i.aem, ptr %9, align 8
  %i.aen = load i8, ptr %.promoted48.i.i.i.i.i.i.i, align 1
  br label %stbi__zget8.exit.i34.i.i.i.i.i.i.prol

stbi__zget8.exit.i34.i.i.i.i.i.i.prol:            ; preds = %bb.hr, %.prol.preheader
  %i.aeo = phi ptr [ %i.aem, %bb.hr ], [ %.promoted48.i.i.i.i.i.i.i, %.prol.preheader ]
  %i.aep = phi i8 [ %i.aen, %bb.hr ], [ 0, %.prol.preheader ]
  %indvars.iv.next60.i.i.i.i.i.i.i.prol = add nuw nsw i64 %.0.lcssa7072.i.i.i.i.i.i.i, 1
  %i.aeq = getelementptr inbounds nuw i8, ptr %i.c, i64 %.0.lcssa7072.i.i.i.i.i.i.i
  store i8 %i.aep, ptr %i.aeq, align 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %stbi__zget8.exit.i34.i.i.i.i.i.i.prol, %.lr.ph46.i.i.i.i.i.i.i
  %indvars.iv59.i.i.i.i.i.i.i.unr = phi i64 [ %.0.lcssa7072.i.i.i.i.i.i.i, %.lr.ph46.i.i.i.i.i.i.i ], [ %indvars.iv.next60.i.i.i.i.i.i.i.prol, %stbi__zget8.exit.i34.i.i.i.i.i.i.prol ]
  %.unr796 = phi ptr [ %.promoted48.i.i.i.i.i.i.i, %.lr.ph46.i.i.i.i.i.i.i ], [ %i.aeo, %stbi__zget8.exit.i34.i.i.i.i.i.i.prol ]
  %i.aer = icmp eq i64 %.0.lcssa7072.i.i.i.i.i.i.i, 3
  br i1 %i.aer, label %._crit_edge47.i.i.i.i.i.i.i, label %.lr.ph46.i.i.i.i.i.i.i.new

.lr.ph46.i.i.i.i.i.i.i.new:                       ; preds = %.prol.loopexit, %stbi__zget8.exit.i34.i.i.i.i.i.i.1
  %indvars.iv59.i.i.i.i.i.i.i = phi i64 [ %indvars.iv.next60.i.i.i.i.i.i.i.1, %stbi__zget8.exit.i34.i.i.i.i.i.i.1 ], [ %indvars.iv59.i.i.i.i.i.i.i.unr, %.prol.loopexit ] ; 3 uses
  %i.aes = phi ptr [ %i.afa, %stbi__zget8.exit.i34.i.i.i.i.i.i.1 ], [ %.unr796, %.prol.loopexit ] ; 4 uses
  %.not3.i.i33.i.i.i.i.i.i = icmp ult ptr %i.aes, %.val2.i.i32.i.i.i.i.i.i
  br i1 %.not3.i.i33.i.i.i.i.i.i, label %bb.hs, label %stbi__zget8.exit.i34.i.i.i.i.i.i

bb.hs:                                            ; preds = %.lr.ph46.i.i.i.i.i.i.i.new
  %i.aet = getelementptr inbounds nuw i8, ptr %i.aes, i64 1 ; 2 uses
  store ptr %i.aet, ptr %9, align 8
  %i.aeu = load i8, ptr %i.aes, align 1
  br label %stbi__zget8.exit.i34.i.i.i.i.i.i

stbi__zget8.exit.i34.i.i.i.i.i.i:                 ; preds = %bb.hs, %.lr.ph46.i.i.i.i.i.i.i.new
  %i.aev = phi ptr [ %i.aet, %bb.hs ], [ %i.aes, %.lr.ph46.i.i.i.i.i.i.i.new ] ; 4 uses
  %i.aew = phi i8 [ %i.aeu, %bb.hs ], [ 0, %.lr.ph46.i.i.i.i.i.i.i.new ]
  %i.aex = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv59.i.i.i.i.i.i.i
  store i8 %i.aew, ptr %i.aex, align 1
  %.not3.i.i33.i.i.i.i.i.i.1 = icmp ult ptr %i.aev, %.val2.i.i32.i.i.i.i.i.i
  br i1 %.not3.i.i33.i.i.i.i.i.i.1, label %bb.ht, label %stbi__zget8.exit.i34.i.i.i.i.i.i.1

bb.ht:                                            ; preds = %stbi__zget8.exit.i34.i.i.i.i.i.i
  %i.aey = getelementptr inbounds nuw i8, ptr %i.aev, i64 1 ; 2 uses
  store ptr %i.aey, ptr %9, align 8
  %i.aez = load i8, ptr %i.aev, align 1
  br label %stbi__zget8.exit.i34.i.i.i.i.i.i.1

stbi__zget8.exit.i34.i.i.i.i.i.i.1:               ; preds = %bb.ht, %stbi__zget8.exit.i34.i.i.i.i.i.i
  %i.afa = phi ptr [ %i.aey, %bb.ht ], [ %i.aev, %stbi__zget8.exit.i34.i.i.i.i.i.i ]
  %i.afb = phi i8 [ %i.aez, %bb.ht ], [ 0, %stbi__zget8.exit.i34.i.i.i.i.i.i ]
  %indvars.iv.next60.i.i.i.i.i.i.i.1 = add nuw nsw i64 %indvars.iv59.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.afc = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv59.i.i.i.i.i.i.i
  %i.afd = getelementptr inbounds nuw i8, ptr %i.afc, i64 1
  store i8 %i.afb, ptr %i.afd, align 1
  %exitcond.not.i.i.i.i.i.i.i.1 = icmp eq i64 %indvars.iv.next60.i.i.i.i.i.i.i.1, 4
  br i1 %exitcond.not.i.i.i.i.i.i.i.1, label %._crit_edge47.i.i.i.i.i.i.i, label %.lr.ph46.i.i.i.i.i.i.i.new, !llvm.loop !157

._crit_edge47.i.i.i.i.i.i.i:                      ; preds = %.prol.loopexit, %stbi__zget8.exit.i34.i.i.i.i.i.i.1, %.preheader.i.i.i.i.i.i.i
  %.pr.i.i261.i.i.i.i = phi i32 [ %i.aej, %.preheader.i.i.i.i.i.i.i ], [ %.pr.i.i262.i.i.i.i, %stbi__zget8.exit.i34.i.i.i.i.i.i.1 ], [ %.pr.i.i262.i.i.i.i, %.prol.loopexit ]
  %i.afe = load i16, ptr %i.c, align 2            ; 3 uses
  %i.aff = zext i16 %i.afe to i32                 ; 2 uses
  %i.afg = load i16, ptr %i.aaw, align 2
  %i.afh = xor i16 %i.afg, %i.afe
  %.not33.i.i.i.i.i.i.i = icmp eq i16 %i.afh, -1
  br i1 %.not33.i.i.i.i.i.i.i, label %bb.hu, label %stbi__parse_uncompressed_block.exit.thread.i.i.i.i.i.i

bb.hu:                                            ; preds = %._crit_edge47.i.i.i.i.i.i.i
  %i.afi = load ptr, ptr %9, align 8              ; 2 uses
  %i.afj = zext i16 %i.afe to i64                 ; 4 uses
  %i.afk = getelementptr inbounds nuw i8, ptr %i.afi, i64 %i.afj ; 2 uses
  %i.afl = load ptr, ptr %i.zx, align 8
  %i.afm = icmp ugt ptr %i.afk, %i.afl
  br i1 %i.afm, label %stbi__parse_uncompressed_block.exit.thread.i.i.i.i.i.i, label %bb.hv

bb.hv:                                            ; preds = %bb.hu
  %i.afn = getelementptr inbounds nuw i8, ptr %i.abc, i64 %i.afj
  %i.afo = load ptr, ptr %i.aab, align 8          ; 2 uses
  %i.afp = icmp ugt ptr %i.afn, %i.afo
  br i1 %i.afp, label %bb.hw, label %stbi__parse_uncompressed_block.exit.i.i.i.i.i.i

bb.hw:                                            ; preds = %bb.hv
  %i.afq = load i32, ptr %i.aac, align 8
  %.not.i21.i.i.i.i = icmp eq i32 %i.afq, 0
  br i1 %.not.i21.i.i.i.i, label %stbi__parse_uncompressed_block.exit.thread.i.i.i.i.i.i, label %bb.hx

bb.hx:                                            ; preds = %bb.hw
  %i.afr = load ptr, ptr %i.zy, align 8           ; 2 uses
  %i.afs = ptrtoint ptr %i.abc to i64
  %i.aft = ptrtoint ptr %i.afr to i64             ; 2 uses
  %i.afu = sub i64 %i.afs, %i.aft                 ; 2 uses
  %i.afv = trunc i64 %i.afu to i32                ; 2 uses
  %i.afw = xor i32 %i.afv, -1
  %i.afx = icmp ugt i32 %i.aff, %i.afw
  br i1 %i.afx, label %stbi__parse_uncompressed_block.exit.thread.i.i.i.i.i.i, label %.preheader.i22.i.i.i.i

.preheader.i22.i.i.i.i:                           ; preds = %bb.hx
  %i.afy = ptrtoint ptr %i.afo to i64
  %i.afz = sub i64 %i.afy, %i.aft
  %i.aga = trunc i64 %i.afz to i32                ; 3 uses
  %i.agb = add i32 %i.afv, %i.aff                 ; 2 uses
  %i.agc = icmp ugt i32 %i.agb, %i.aga
  br i1 %i.agc, label %.lr.ph.i26.i.i.i.i, label %._crit_edge.i23.i.i.i.i

.lr.ph.i26.i.i.i.i:                               ; preds = %.preheader.i22.i.i.i.i, %bb.hy
  %.028.i27.i.i.i.i = phi i32 [ %i.age, %bb.hy ], [ %i.aga, %.preheader.i22.i.i.i.i ] ; 2 uses
  %i.agd = icmp slt i32 %.028.i27.i.i.i.i, 0
  br i1 %i.agd, label %stbi__parse_uncompressed_block.exit.thread.i.i.i.i.i.i, label %bb.hy

bb.hy:                                            ; preds = %.lr.ph.i26.i.i.i.i
  %i.age = shl nuw i32 %.028.i27.i.i.i.i, 1       ; 3 uses
  %i.agf = icmp ugt i32 %i.agb, %i.age
  br i1 %i.agf, label %.lr.ph.i26.i.i.i.i, label %._crit_edge.i23.i.i.i.i, !llvm.loop !158

._crit_edge.i23.i.i.i.i:                          ; preds = %bb.hy, %.preheader.i22.i.i.i.i
  %.0.lcssa.i24.i.i.i.i = phi i32 [ %i.aga, %.preheader.i22.i.i.i.i ], [ %i.age, %bb.hy ]
  %i.agg = zext i32 %.0.lcssa.i24.i.i.i.i to i64  ; 2 uses
  %i.agh = tail call ptr @SDL_realloc_REAL(ptr noundef %i.afr, i64 noundef %i.agg) #14 ; 4 uses
  %i.agi = icmp eq ptr %i.agh, null
  br i1 %i.agi, label %stbi__parse_uncompressed_block.exit.thread.i.i.i.i.i.i, label %._crit_edge63.i.i.i.i.i.i.i

._crit_edge63.i.i.i.i.i.i.i:                      ; preds = %._crit_edge.i23.i.i.i.i
  store ptr %i.agh, ptr %i.zy, align 8
  %i.agj = and i64 %i.afu, 4294967295
  %i.agk = getelementptr inbounds nuw i8, ptr %i.agh, i64 %i.agj
  %i.agl = getelementptr inbounds nuw i8, ptr %i.agh, i64 %i.agg
  store ptr %i.agl, ptr %i.aab, align 8
  br label %stbi__parse_uncompressed_block.exit.i.i.i.i.i.i

stbi__parse_uncompressed_block.exit.thread.i.i.i.i.i.i: ; preds = %._crit_edge.i23.i.i.i.i, %bb.hx, %bb.hw, %bb.hu, %._crit_edge47.i.i.i.i.i.i.i, %.thread.i.i.i.i.i.i.i, %bb.hq, %.lr.ph.i26.i.i.i.i
  %.str.28.sink.i.i.i.i = phi ptr [ @.str.10, %.lr.ph.i26.i.i.i.i ], [ @.str.28, %bb.hq ], [ @.str.10, %bb.hx ], [ @.str.28, %bb.hw ], [ @.str.28, %bb.hu ], [ @.str.28, %._crit_edge47.i.i.i.i.i.i.i ], [ @.str.28, %.thread.i.i.i.i.i.i.i ], [ @.str.10, %._crit_edge.i23.i.i.i.i ]
  %i.agm = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.11, ptr noundef nonnull %.str.28.sink.i.i.i.i) #13 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  br label %stbi__zexpand.exit19.thread.i.i.i.i

stbi__parse_uncompressed_block.exit.i.i.i.i.i.i:  ; preds = %._crit_edge63.i.i.i.i.i.i.i, %bb.hv
  %i.agn = phi ptr [ %i.agk, %._crit_edge63.i.i.i.i.i.i.i ], [ %i.abc, %bb.hv ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.agn, ptr align 1 %i.afi, i64 %i.afj, i1 false)
  store ptr %i.afk, ptr %9, align 8
end_hunk_3
begin_hunk_4_@stbi__load_main:bb.a
  %i.avy = phi ptr [ %i.ago, %stbi__parse_uncompressed_block.exit.i.i.i.i.i.i ], [ %.063.i.i.i.i.i.i.i, %bb.kl ] ; 2 uses
  %.not23.i.i.i.i.i.i = icmp eq i32 %i.acm, 0
  br i1 %.not23.i.i.i.i.i.i, label %thread-pre-split.i.i.i.i.i.i, label %stbi_zlib_decode_malloc_guesssize_headerflag.exit.i.i.i, !llvm.loop !165

stbi__zexpand.exit19.thread.i.i.i.i:              ; preds = %stbi__compute_huffman_codes.exit.i.i.i.i.i.i, %bb.ia, %bb.hz, %stbi__zreceive.exit31.i.i.i.i.i.i, %.loopexit100.sink.split.i.i.i.i.i.i.i, %bb.lg, %bb.le, %bb.ld, %bb.lb, %bb.kh, %bb.kf, %bb.ke, %bb.kc, %stbi__compute_huffman_codes.exit.thread.i.i.i.i.i.i, %stbi__parse_uncompressed_block.exit.thread.i.i.i.i.i.i, %stbi__parse_zlib_header.exit.thread.i.i.i.i.i.i
  %i.avz = load ptr, ptr %i.zy, align 8
  tail call void @SDL_free_REAL(ptr noundef %i.avz) #13
  br label %stbi_zlib_decode_malloc_guesssize_headerflag.exit.thread.i.i.i

stbi_zlib_decode_malloc_guesssize_headerflag.exit.thread.i.i.i: ; preds = %stbi__zexpand.exit19.thread.i.i.i.i, %bb.gw
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #13
  store ptr null, ptr %i.gt, align 8
  br label %stbi__parse_png_file.exit.thread.i.i

stbi_zlib_decode_malloc_guesssize_headerflag.exit.i.i.i: ; preds = %stbi__parse_huffman_block.exit.i.i.i.i.i.i
  %i.awa = load ptr, ptr %i.zy, align 8           ; 5 uses
  %i.awb = ptrtoint ptr %i.avy to i64
  %i.awc = ptrtoint ptr %i.awa to i64
  %i.awd = sub i64 %i.awb, %i.awc
  %i.awe = trunc i64 %i.awd to i32                ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #13
  store ptr %i.awa, ptr %i.gt, align 8
  %i.awf = icmp eq ptr %i.awa, null
  br i1 %i.awf, label %stbi__parse_png_file.exit.thread.i.i, label %bb.ll

bb.ll:                                            ; preds = %stbi_zlib_decode_malloc_guesssize_headerflag.exit.i.i.i
  %i.awg = load ptr, ptr %i.gu, align 8
  tail call void @SDL_free_REAL(ptr noundef %i.awg) #13
  store ptr null, ptr %i.gu, align 8
  %i.awh = load i32, ptr %i.mt, align 8           ; 2 uses
  %i.awi = add nsw i32 %i.awh, 1                  ; 2 uses
  %i.awj = icmp eq i32 %4, %i.awi
  %i.awk = icmp ne i32 %4, 3
  %or.cond5.not288.not293.i.i.i = and i1 %i.awk, %i.awj
  %i.awl = icmp eq i8 %.0258.i.i.i, 0             ; 3 uses
  %or.cond7.not290.i.i.i = select i1 %or.cond5.not288.not293.i.i.i, i1 %i.awl, i1 false
  %i.awm = icmp ne i8 %.0254.i.i.i, 0
  %or.cond10.i.i.i = select i1 %or.cond7.not290.i.i.i, i1 true, i1 %i.awm
  %spec.select1607.i.i.i = select i1 %or.cond10.i.i.i, i32 %i.awi, i32 %i.awh ; 4 uses
  %i.awn = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  store i32 %spec.select1607.i.i.i, ptr %i.awn, align 4
  %i.awo = load i32, ptr %i.mu, align 8           ; 4 uses
  %i.awp = icmp eq i32 %i.awo, 16
  %i.awq = zext i1 %i.awp to i32
  %i.awr = shl i32 %spec.select1607.i.i.i, %i.awq ; 6 uses
  %.not.i373.i.i.i = icmp eq i32 %.0232.i.i.i, 0
  %i.aws = load ptr, ptr %10, align 8             ; 3 uses
  %i.awt = load i32, ptr %i.aws, align 8          ; 4 uses
  %i.awu = getelementptr inbounds nuw i8, ptr %i.aws, i64 4
  %i.awv = load i32, ptr %i.awu, align 4          ; 5 uses
  br i1 %.not.i373.i.i.i, label %stbi__create_png_image.exit.i.i.i, label %bb.lm

bb.lm:                                            ; preds = %bb.ll
  %i.aww = or i32 %i.awv, %i.awt
  %or.cond.not.i.i.i.i.i.i.i = icmp sgt i32 %i.aww, -1
  br i1 %or.cond.not.i.i.i.i.i.i.i, label %bb.ln, label %stbi__malloc_mad3.exit.thread.i.i.i.i

bb.ln:                                            ; preds = %bb.lm
  %i.awx = icmp eq i32 %i.awv, 0
  br i1 %i.awx, label %stbi__mul2sizes_valid.exit.thread15.i.i.i.i.i.i, label %stbi__mul2sizes_valid.exit.i.i.i.i.i.i

stbi__mul2sizes_valid.exit.i.i.i.i.i.i:           ; preds = %bb.ln
  %i.awy = udiv i32 2147483647, %i.awv
  %.not23.i.i.i374.i.i.i = icmp sgt i32 %i.awt, %i.awy
  br i1 %.not23.i.i.i374.i.i.i, label %stbi__malloc_mad3.exit.thread.i.i.i.i, label %stbi__mul2sizes_valid.exit.thread15.i.i.i.i.i.i

stbi__mul2sizes_valid.exit.thread15.i.i.i.i.i.i:  ; preds = %stbi__mul2sizes_valid.exit.i.i.i.i.i.i, %bb.ln
  %i.awz = mul nsw i32 %i.awv, %i.awt             ; 3 uses
  %i.axa = or i32 %i.awr, %i.awz
  %or.cond.not.i10.i.i.i.i.i.i = icmp sgt i32 %i.axa, -1
  br i1 %or.cond.not.i10.i.i.i.i.i.i, label %bb.lo, label %stbi__malloc_mad3.exit.thread.i.i.i.i

bb.lo:                                            ; preds = %stbi__mul2sizes_valid.exit.thread15.i.i.i.i.i.i
  %i.axb = icmp eq i32 %i.awr, 0
  br i1 %i.axb, label %stbi__malloc_mad3.exit.i.i.i.i, label %stbi__mul2sizes_valid.exit12.i.i.i.i.i.i

stbi__mul2sizes_valid.exit12.i.i.i.i.i.i:         ; preds = %bb.lo
  %i.axc = udiv i32 2147483647, %i.awr
  %.not.i.i.i375.i.i.i = icmp sgt i32 %i.awz, %i.axc
  br i1 %.not.i.i.i375.i.i.i, label %stbi__malloc_mad3.exit.thread.i.i.i.i, label %stbi__malloc_mad3.exit.i.i.i.i

stbi__malloc_mad3.exit.i.i.i.i:                   ; preds = %stbi__mul2sizes_valid.exit12.i.i.i.i.i.i, %bb.lo
  %i.axd = mul nsw i32 %i.awr, %i.awz
  %i.axe = sext i32 %i.axd to i64
  %i.axf = tail call noalias ptr @SDL_malloc_REAL(i64 noundef range(i64 -2147483648, 4294967296) %i.axe) #13 ; 6 uses
  %.not92.i.i.i.i = icmp eq ptr %i.axf, null
  br i1 %.not92.i.i.i.i, label %stbi__malloc_mad3.exit.thread.i.i.i.i, label %.preheader100.i.i.i.i

.preheader100.i.i.i.i:                            ; preds = %stbi__malloc_mad3.exit.i.i.i.i
  %i.axg = sext i32 %i.awr to i64                 ; 9 uses
  br label %bb.lp

stbi__malloc_mad3.exit.thread.i.i.i.i:            ; preds = %stbi__malloc_mad3.exit.i.i.i.i, %stbi__mul2sizes_valid.exit12.i.i.i.i.i.i, %stbi__mul2sizes_valid.exit.thread15.i.i.i.i.i.i, %stbi__mul2sizes_valid.exit.i.i.i.i.i.i, %bb.lm
  %i.axh = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.10) #13 ; 0 uses
  br label %stbi__parse_png_file.exit.thread.i.i

bb.lp:                                            ; preds = %bb.lr, %.preheader100.i.i.i.i
  %i.axi = phi ptr [ %i.aws, %.preheader100.i.i.i.i ], [ %i.bak, %bb.lr ] ; 4 uses
  %indvars.iv112.i.i.i.i = phi i64 [ 0, %.preheader100.i.i.i.i ], [ %indvars.iv.next113.i.i.i.i, %bb.lr ] ; 5 uses
  %.076106.i.i.i.i = phi ptr [ %i.awa, %.preheader100.i.i.i.i ], [ %.379.i.i.i.i, %bb.lr ] ; 3 uses
  %.085104.i.i.i.i = phi i32 [ %i.awe, %.preheader100.i.i.i.i ], [ %.388.i.i.i.i, %bb.lr ] ; 3 uses
  %i.axj = load i32, ptr %i.axi, align 8
  %i.axk = getelementptr inbounds nuw [4 x i8], ptr @__const.stbi__create_png_image.xorig, i64 %indvars.iv112.i.i.i.i
  %i.axl = load i32, ptr %i.axk, align 4          ; 2 uses
  %i.axm = getelementptr inbounds nuw [4 x i8], ptr @__const.stbi__create_png_image.xspc, i64 %indvars.iv112.i.i.i.i
  %i.axn = load i32, ptr %i.axm, align 4          ; 4 uses
  %i.axo = xor i32 %i.axl, -1
  %i.axp = add i32 %i.axj, %i.axo
  %i.axq = add i32 %i.axp, %i.axn                 ; 2 uses
  %i.axr = udiv i32 %i.axq, %i.axn                ; 6 uses
  %i.axs = getelementptr inbounds nuw i8, ptr %i.axi, i64 4
  %i.axt = load i32, ptr %i.axs, align 4
  %i.axu = getelementptr inbounds nuw [4 x i8], ptr @__const.stbi__create_png_image.yorig, i64 %indvars.iv112.i.i.i.i
  %i.axv = load i32, ptr %i.axu, align 4          ; 2 uses
  %i.axw = getelementptr inbounds nuw [4 x i8], ptr @__const.stbi__create_png_image.yspc, i64 %indvars.iv112.i.i.i.i
  %i.axx = load i32, ptr %i.axw, align 4          ; 4 uses
  %i.axy = xor i32 %i.axv, -1
  %i.axz = add i32 %i.axt, %i.axy
  %i.aya = add i32 %i.axz, %i.axx                 ; 2 uses
  %i.ayb = udiv i32 %i.aya, %i.axx                ; 4 uses
  %i.ayc = icmp ule i32 %i.axn, %i.axq
  %i.ayd = icmp ule i32 %i.axx, %i.aya
  %or.cond.i376.i.i.i = select i1 %i.ayc, i1 %i.ayd, i1 false
  br i1 %or.cond.i376.i.i.i, label %bb.lq, label %bb.lr

bb.lq:                                            ; preds = %bb.lp
  %i.aye = getelementptr inbounds nuw i8, ptr %i.axi, i64 8
  %i.ayf = load i32, ptr %i.aye, align 8
  %i.ayg = mul i32 %i.axr, %i.awo
  %i.ayh = mul i32 %i.ayg, %i.ayf
  %i.ayi = add nsw i32 %i.ayh, 7
  %i.ayj = ashr i32 %i.ayi, 3
  %i.ayk = add nsw i32 %i.ayj, 1
  %i.ayl = mul nsw i32 %i.ayk, %i.ayb             ; 2 uses
  %i.aym = call fastcc i32 @stbi__create_png_image_raw(ptr noundef nonnull %10, ptr noundef %.076106.i.i.i.i, i32 noundef %.085104.i.i.i.i, i32 noundef %spec.select1607.i.i.i, i32 noundef %i.axr, i32 noundef %i.ayb, i32 noundef %i.awo, i32 noundef range(i32 0, 256) %.0228.i.i.i)
  %.not93.not.i.i.i.i = icmp eq i32 %i.aym, 0
  %.pre.i = load ptr, ptr %10, align 8            ; 4 uses
  br i1 %.not93.not.i.i.i.i, label %.thread.i382.i.i.i, label %.preheader99.i.i.i.i

.preheader99.i.i.i.i:                             ; preds = %bb.lq
  %i.ayn = icmp sgt i32 %i.ayb, 0
  %i.ayo = icmp sgt i32 %i.axr, 0
  %or.cond107.i.i.i.i = and i1 %i.ayo, %i.ayn
  %.pre.i378.i.i.i = load ptr, ptr %i.gv, align 8 ; 4 uses
  br i1 %or.cond107.i.i.i.i, label %.preheader.lr.ph.split.i.i.i.i, label %._crit_edge103.split.i.i.i.i

.preheader.lr.ph.split.i.i.i.i:                   ; preds = %.preheader99.i.i.i.i
  %i.ayp = sext i32 %i.axn to i64                 ; 3 uses
  %i.ayq = sext i32 %i.axl to i64                 ; 3 uses
  %i.ayr = zext nneg i32 %i.axr to i64            ; 3 uses
  %i.ays = zext nneg i32 %i.ayb to i64
  %xtraiter798 = and i64 %i.ayr, 1
  %i.ayt = icmp eq i32 %i.axr, 1
  %unroll_iter802 = and i64 %i.ayr, 2147483646
  %lcmp.mod800.not = icmp eq i64 %xtraiter798, 0
  %lcmp.mod801 = trunc i32 %i.axr to i1
  br label %.preheader.i379.i.i.i

.thread.i382.i.i.i:                               ; preds = %bb.lq
  tail call void @SDL_free_REAL(ptr noundef nonnull %i.axf) #13
  br label %stbi__parse_png_file.exit.thread.i.i

.preheader.i379.i.i.i:                            ; preds = %._crit_edge.i.i.i.i, %.preheader.lr.ph.split.i.i.i.i
  %indvars.iv109.i.i.i.i = phi i64 [ 0, %.preheader.lr.ph.split.i.i.i.i ], [ %indvars.iv.next110.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %i.ayu = trunc i64 %indvars.iv109.i.i.i.i to i32
  %i.ayv = mul i32 %i.axx, %i.ayu
  %i.ayw = add i32 %i.ayv, %i.axv
  %i.ayx = mul i32 %i.ayw, %i.awr                 ; 3 uses
  %i.ayy = mul nuw nsw i64 %indvars.iv109.i.i.i.i, %i.ayr ; 3 uses
  br i1 %i.ayt, label %.epil.preheader797, label %.preheader.i379.i.i.i.new

.preheader.i379.i.i.i.new:                        ; preds = %.preheader.i379.i.i.i, %.preheader.i379.i.i.i.new
  %indvars.iv.i380.i.i.i = phi i64 [ %indvars.iv.next.i381.i.i.i.1, %.preheader.i379.i.i.i.new ], [ 0, %.preheader.i379.i.i.i ] ; 4 uses
  %niter803 = phi i64 [ %niter803.next.1, %.preheader.i379.i.i.i.new ], [ 0, %.preheader.i379.i.i.i ]
  %i.ayz = mul nsw i64 %indvars.iv.i380.i.i.i, %i.ayp
  %i.aza = add nsw i64 %i.ayz, %i.ayq
  %i.azb = load i32, ptr %.pre.i, align 8
  %i.azc = mul i32 %i.ayx, %i.azb
  %i.azd = zext i32 %i.azc to i64
  %i.aze = getelementptr inbounds nuw i8, ptr %i.axf, i64 %i.azd
  %i.azf = mul nsw i64 %i.aza, %i.axg
  %i.azg = getelementptr inbounds i8, ptr %i.aze, i64 %i.azf
  %i.azh = add nuw nsw i64 %indvars.iv.i380.i.i.i, %i.ayy
  %i.azi = mul nsw i64 %i.azh, %i.axg
  %i.azj = getelementptr inbounds i8, ptr %.pre.i378.i.i.i, i64 %i.azi
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.azg, ptr align 1 %i.azj, i64 %i.axg, i1 false)
  %indvars.iv.next.i381.i.i.i = or disjoint i64 %indvars.iv.i380.i.i.i, 1 ; 2 uses
  %i.azk = mul nsw i64 %indvars.iv.next.i381.i.i.i, %i.ayp
  %i.azl = add nsw i64 %i.azk, %i.ayq
  %i.azm = load i32, ptr %.pre.i, align 8
  %i.azn = mul i32 %i.ayx, %i.azm
  %i.azo = zext i32 %i.azn to i64
  %i.azp = getelementptr inbounds nuw i8, ptr %i.axf, i64 %i.azo
  %i.azq = mul nsw i64 %i.azl, %i.axg
  %i.azr = getelementptr inbounds i8, ptr %i.azp, i64 %i.azq
  %i.azs = add nuw nsw i64 %indvars.iv.next.i381.i.i.i, %i.ayy
  %i.azt = mul nsw i64 %i.azs, %i.axg
  %i.azu = getelementptr inbounds i8, ptr %.pre.i378.i.i.i, i64 %i.azt
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.azr, ptr align 1 %i.azu, i64 %i.axg, i1 false)
  %indvars.iv.next.i381.i.i.i.1 = add nuw nsw i64 %indvars.iv.i380.i.i.i, 2 ; 2 uses
  %niter803.next.1 = add i64 %niter803, 2         ; 2 uses
  %niter803.ncmp.1.not = icmp eq i64 %niter803.next.1, %unroll_iter802
  br i1 %niter803.ncmp.1.not, label %._crit_edge.i.i.i.i.unr-lcssa, label %.preheader.i379.i.i.i.new, !llvm.loop !166

._crit_edge.i.i.i.i.unr-lcssa:                    ; preds = %.preheader.i379.i.i.i.new
  br i1 %lcmp.mod800.not, label %._crit_edge.i.i.i.i, label %.epil.preheader797

.epil.preheader797:                               ; preds = %._crit_edge.i.i.i.i.unr-lcssa, %.preheader.i379.i.i.i
  %indvars.iv.i380.i.i.i.epil.init = phi i64 [ 0, %.preheader.i379.i.i.i ], [ %indvars.iv.next.i381.i.i.i.1, %._crit_edge.i.i.i.i.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod801)
  %i.azv = mul nsw i64 %indvars.iv.i380.i.i.i.epil.init, %i.ayp
  %i.azw = add nsw i64 %i.azv, %i.ayq
  %i.azx = load i32, ptr %.pre.i, align 8
  %i.azy = mul i32 %i.ayx, %i.azx
  %i.azz = zext i32 %i.azy to i64
  %i.baa = getelementptr inbounds nuw i8, ptr %i.axf, i64 %i.azz
  %i.bab = mul nsw i64 %i.azw, %i.axg
  %i.bac = getelementptr inbounds i8, ptr %i.baa, i64 %i.bab
  %i.bad = add nuw nsw i64 %indvars.iv.i380.i.i.i.epil.init, %i.ayy
  %i.bae = mul nsw i64 %i.bad, %i.axg
  %i.baf = getelementptr inbounds i8, ptr %.pre.i378.i.i.i, i64 %i.bae
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bac, ptr align 1 %i.baf, i64 %i.axg, i1 false)
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %._crit_edge.i.i.i.i.unr-lcssa, %.epil.preheader797
  %indvars.iv.next110.i.i.i.i = add nuw nsw i64 %indvars.iv109.i.i.i.i, 1 ; 2 uses
  %i.bag = icmp samesign ult i64 %indvars.iv.next110.i.i.i.i, %i.ays
  br i1 %i.bag, label %.preheader.i379.i.i.i, label %._crit_edge103.split.i.i.i.i, !llvm.loop !167

._crit_edge103.split.i.i.i.i:                     ; preds = %._crit_edge.i.i.i.i, %.preheader99.i.i.i.i
  tail call void @SDL_free_REAL(ptr noundef %.pre.i378.i.i.i) #13
  %i.bah = zext i32 %i.ayl to i64
  %i.bai = getelementptr inbounds nuw i8, ptr %.076106.i.i.i.i, i64 %i.bah
  %i.baj = sub i32 %.085104.i.i.i.i, %i.ayl
  br label %bb.lr

bb.lr:                                            ; preds = %._crit_edge103.split.i.i.i.i, %bb.lp
  %i.bak = phi ptr [ %i.axi, %bb.lp ], [ %.pre.i, %._crit_edge103.split.i.i.i.i ]
  %.388.i.i.i.i = phi i32 [ %.085104.i.i.i.i, %bb.lp ], [ %i.baj, %._crit_edge103.split.i.i.i.i ]
  %.379.i.i.i.i = phi ptr [ %.076106.i.i.i.i, %bb.lp ], [ %i.bai, %._crit_edge103.split.i.i.i.i ]
  %indvars.iv.next113.i.i.i.i = add nuw nsw i64 %indvars.iv112.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i377.i.i.i = icmp eq i64 %indvars.iv.next113.i.i.i.i, 7
  br i1 %exitcond.not.i377.i.i.i, label %stbi__create_png_image.exit.thread436.i.i.i, label %bb.lp, !llvm.loop !168

stbi__create_png_image.exit.thread436.i.i.i:      ; preds = %bb.lr
  store ptr %i.axf, ptr %i.gv, align 8
  br label %bb.ls

stbi__create_png_image.exit.i.i.i:                ; preds = %bb.ll
  %i.bal = call fastcc i32 @stbi__create_png_image_raw(ptr noundef nonnull %10, ptr noundef nonnull readonly %i.awa, i32 noundef %i.awe, i32 noundef %spec.select1607.i.i.i, i32 noundef %i.awt, i32 noundef %i.awv, i32 noundef %i.awo, i32 noundef range(i32 0, 256) %.0228.i.i.i)
  %.not294.i.i.i = icmp eq i32 %i.bal, 0
  br i1 %.not294.i.i.i, label %stbi__parse_png_file.exit.thread.i.i, label %bb.ls

bb.ls:                                            ; preds = %stbi__create_png_image.exit.i.i.i, %stbi__create_png_image.exit.thread436.i.i.i
  %.not295.i.i.i = icmp eq i8 %.0254.i.i.i, 0
  br i1 %.not295.i.i.i, label %stbi__compute_transparency16.exit.thread.i.i.i, label %bb.lt

bb.lt:                                            ; preds = %bb.ls
  %i.bam = load i32, ptr %i.mu, align 8
  %i.ban = icmp eq i32 %i.bam, 16
  %i.bao = load i32, ptr %i.awn, align 4
  %.val.i.i.i = load ptr, ptr %10, align 8        ; 2 uses
  %.val325.i.i.i = load ptr, ptr %i.gv, align 8   ; 8 uses
  %.val.val.i.i.i = load i32, ptr %.val.i.i.i, align 8
  %i.bap = getelementptr i8, ptr %.val.i.i.i, i64 4
  %.val.val326.i.i.i = load i32, ptr %i.bap, align 4
  %i.baq = mul i32 %.val.val326.i.i.i, %.val.val.i.i.i ; 15 uses
  %i.bar = icmp eq i32 %i.bao, 2                  ; 2 uses
  %.not8.i.i.i.i = icmp eq i32 %i.baq, 0          ; 4 uses
  br i1 %i.ban, label %bb.lu, label %bb.me

bb.lu:                                            ; preds = %bb.lt
  br i1 %i.bar, label %.preheader.i384.i.i.i, label %.preheader1.i.i.i.i

.preheader1.i.i.i.i:                              ; preds = %bb.lu
  br i1 %.not8.i.i.i.i, label %stbi__compute_transparency16.exit.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.preheader1.i.i.i.i
  %i.bas = getelementptr inbounds nuw i8, ptr %i.f, i64 2
  %i.bat = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.bau = load i16, ptr %i.f, align 2            ; 3 uses
  %i.bav = load i16, ptr %i.bas, align 2          ; 3 uses
  %i.baw = load i16, ptr %i.bat, align 2          ; 3 uses
  %xtraiter818 = and i32 %i.baq, 1
  %i.bax = icmp eq i32 %i.baq, 1
  br i1 %i.bax, label %.epil.preheader817, label %.lr.ph.i.i.i.i.new

.lr.ph.i.i.i.i.new:                               ; preds = %.lr.ph.i.i.i.i
  %unroll_iter822 = and i32 %i.baq, -2
  br label %bb.lv

.preheader.i384.i.i.i:                            ; preds = %bb.lu
  br i1 %.not8.i.i.i.i, label %stbi__compute_transparency16.exit.i.i.i, label %.lr.ph7.i.preheader.i.i.i

.lr.ph7.i.preheader.i.i.i:                        ; preds = %.preheader.i384.i.i.i
  %i.bay = load i16, ptr %i.f, align 2            ; 5 uses
  %xtraiter824 = and i32 %i.baq, 3                ; 3 uses
  %i.baz = icmp ult i32 %i.baq, 4
  br i1 %i.baz, label %.lr.ph7.i.i.i.i.epil.preheader, label %.lr.ph7.i.preheader.i.i.i.new

.lr.ph7.i.preheader.i.i.i.new:                    ; preds = %.lr.ph7.i.preheader.i.i.i
  %unroll_iter828 = and i32 %i.baq, -4
  br label %.lr.ph7.i.i.i.i

.lr.ph7.i.i.i.i:                                  ; preds = %.lr.ph7.i.i.i.i, %.lr.ph7.i.preheader.i.i.i.new
  %.06.i.i.i.i = phi ptr [ %.val325.i.i.i, %.lr.ph7.i.preheader.i.i.i.new ], [ %i.bbt, %.lr.ph7.i.i.i.i ] ; 9 uses
  %niter829 = phi i32 [ 0, %.lr.ph7.i.preheader.i.i.i.new ], [ %niter829.next.3, %.lr.ph7.i.i.i.i ]
  %i.bba = load i16, ptr %.06.i.i.i.i, align 2
  %i.bbb = icmp ne i16 %i.bba, %i.bay
  %i.bbc = sext i1 %i.bbb to i16
  %i.bbd = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 2
  store i16 %i.bbc, ptr %i.bbd, align 2
  %i.bbe = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 4
  %i.bbf = load i16, ptr %i.bbe, align 2
  %i.bbg = icmp ne i16 %i.bbf, %i.bay
  %i.bbh = sext i1 %i.bbg to i16
  %i.bbi = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 6
  store i16 %i.bbh, ptr %i.bbi, align 2
  %i.bbj = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 8
  %i.bbk = load i16, ptr %i.bbj, align 2
  %i.bbl = icmp ne i16 %i.bbk, %i.bay
  %i.bbm = sext i1 %i.bbl to i16
  %i.bbn = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 10
  store i16 %i.bbm, ptr %i.bbn, align 2
  %i.bbo = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 12
  %i.bbp = load i16, ptr %i.bbo, align 2
  %i.bbq = icmp ne i16 %i.bbp, %i.bay
  %i.bbr = sext i1 %i.bbq to i16
  %i.bbs = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 14
  store i16 %i.bbr, ptr %i.bbs, align 2
  %i.bbt = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 16 ; 2 uses
  %niter829.next.3 = add i32 %niter829, 4         ; 2 uses
  %niter829.ncmp.3 = icmp eq i32 %niter829.next.3, %unroll_iter828
  br i1 %niter829.ncmp.3, label %stbi__compute_transparency16.exit.i.i.i.loopexit.unr-lcssa, label %.lr.ph7.i.i.i.i, !llvm.loop !169

bb.lv:                                            ; preds = %bb.md, %.lr.ph.i.i.i.i.new
  %.14.i.i.i.i = phi ptr [ %.val325.i.i.i, %.lr.ph.i.i.i.i.new ], [ %i.bcn, %bb.md ] ; 9 uses
  %niter823 = phi i32 [ 0, %.lr.ph.i.i.i.i.new ], [ %niter823.next.1, %bb.md ]
  %i.bbu = load i16, ptr %.14.i.i.i.i, align 2
  %i.bbv = icmp eq i16 %i.bbu, %i.bau
  br i1 %i.bbv, label %bb.lw, label %bb.lz

bb.lw:                                            ; preds = %bb.lv
  %i.bbw = getelementptr inbounds nuw i8, ptr %.14.i.i.i.i, i64 2
  %i.bbx = load i16, ptr %i.bbw, align 2
  %i.bby = icmp eq i16 %i.bbx, %i.bav
  br i1 %i.bby, label %bb.lx, label %bb.lz

bb.lx:                                            ; preds = %bb.lw
  %i.bbz = getelementptr inbounds nuw i8, ptr %.14.i.i.i.i, i64 4
  %i.bca = load i16, ptr %i.bbz, align 2
  %i.bcb = icmp eq i16 %i.bca, %i.baw
  br i1 %i.bcb, label %bb.ly, label %bb.lz

bb.ly:                                            ; preds = %bb.lx
  %i.bcc = getelementptr inbounds nuw i8, ptr %.14.i.i.i.i, i64 6
  store i16 0, ptr %i.bcc, align 2
  br label %bb.lz

bb.lz:                                            ; preds = %bb.ly, %bb.lx, %bb.lw, %bb.lv
  %i.bcd = getelementptr inbounds nuw i8, ptr %.14.i.i.i.i, i64 8
  %i.bce = load i16, ptr %i.bcd, align 2
  %i.bcf = icmp eq i16 %i.bce, %i.bau
  br i1 %i.bcf, label %bb.ma, label %bb.md

bb.ma:                                            ; preds = %bb.lz
  %i.bcg = getelementptr inbounds nuw i8, ptr %.14.i.i.i.i, i64 10
  %i.bch = load i16, ptr %i.bcg, align 2
  %i.bci = icmp eq i16 %i.bch, %i.bav
  br i1 %i.bci, label %bb.mb, label %bb.md

bb.mb:                                            ; preds = %bb.ma
  %i.bcj = getelementptr inbounds nuw i8, ptr %.14.i.i.i.i, i64 12
  %i.bck = load i16, ptr %i.bcj, align 2
  %i.bcl = icmp eq i16 %i.bck, %i.baw
  br i1 %i.bcl, label %bb.mc, label %bb.md

bb.mc:                                            ; preds = %bb.mb
  %i.bcm = getelementptr inbounds nuw i8, ptr %.14.i.i.i.i, i64 14
  store i16 0, ptr %i.bcm, align 2
  br label %bb.md

bb.md:                                            ; preds = %bb.mc, %bb.mb, %bb.ma, %bb.lz
  %i.bcn = getelementptr inbounds nuw i8, ptr %.14.i.i.i.i, i64 16 ; 2 uses
  %niter823.next.1 = add i32 %niter823, 2         ; 2 uses
  %niter823.ncmp.1 = icmp eq i32 %niter823.next.1, %unroll_iter822
  br i1 %niter823.ncmp.1, label %stbi__compute_transparency16.exit.i.i.i.loopexit403.unr-lcssa, label %bb.lv, !llvm.loop !170

bb.me:                                            ; preds = %bb.lt
  br i1 %i.bar, label %.preheader.i391.i.i.i, label %.preheader1.i386.i.i.i

.preheader1.i386.i.i.i:                           ; preds = %bb.me
  br i1 %.not8.i.i.i.i, label %stbi__compute_transparency16.exit.i.i.i, label %.lr.ph.i387.i.i.i

.lr.ph.i387.i.i.i:                                ; preds = %.preheader1.i386.i.i.i
  %i.bco = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %i.bcp = getelementptr inbounds nuw i8, ptr %i.e, i64 2
  %i.bcq = load i8, ptr %i.e, align 1             ; 3 uses
  %i.bcr = load i8, ptr %i.bco, align 1           ; 3 uses
  %i.bcs = load i8, ptr %i.bcp, align 1           ; 3 uses
  %xtraiter805 = and i32 %i.baq, 1
  %i.bct = icmp eq i32 %i.baq, 1
  br i1 %i.bct, label %.epil.preheader804, label %.lr.ph.i387.i.i.i.new

.lr.ph.i387.i.i.i.new:                            ; preds = %.lr.ph.i387.i.i.i
  %unroll_iter809 = and i32 %i.baq, -2
  br label %bb.mf

.preheader.i391.i.i.i:                            ; preds = %bb.me
  br i1 %.not8.i.i.i.i, label %stbi__compute_transparency16.exit.i.i.i, label %.lr.ph7.i392.preheader.i.i.i

.lr.ph7.i392.preheader.i.i.i:                     ; preds = %.preheader.i391.i.i.i
  %i.bcu = load i8, ptr %i.e, align 1             ; 5 uses
  %xtraiter811 = and i32 %i.baq, 3                ; 3 uses
  %i.bcv = icmp ult i32 %i.baq, 4
  br i1 %i.bcv, label %.lr.ph7.i392.i.i.i.epil.preheader, label %.lr.ph7.i392.preheader.i.i.i.new

.lr.ph7.i392.preheader.i.i.i.new:                 ; preds = %.lr.ph7.i392.preheader.i.i.i
  %unroll_iter815 = and i32 %i.baq, -4
  br label %.lr.ph7.i392.i.i.i

.lr.ph7.i392.i.i.i:                               ; preds = %.lr.ph7.i392.i.i.i, %.lr.ph7.i392.preheader.i.i.i.new
  %.06.i393.i.i.i = phi ptr [ %.val325.i.i.i, %.lr.ph7.i392.preheader.i.i.i.new ], [ %i.bdp, %.lr.ph7.i392.i.i.i ] ; 9 uses
  %niter816 = phi i32 [ 0, %.lr.ph7.i392.preheader.i.i.i.new ], [ %niter816.next.3, %.lr.ph7.i392.i.i.i ]
  %i.bcw = load i8, ptr %.06.i393.i.i.i, align 1
  %i.bcx = icmp ne i8 %i.bcw, %i.bcu
  %i.bcy = sext i1 %i.bcx to i8
  %i.bcz = getelementptr inbounds nuw i8, ptr %.06.i393.i.i.i, i64 1
  store i8 %i.bcy, ptr %i.bcz, align 1
  %i.bda = getelementptr inbounds nuw i8, ptr %.06.i393.i.i.i, i64 2
  %i.bdb = load i8, ptr %i.bda, align 1
  %i.bdc = icmp ne i8 %i.bdb, %i.bcu
  %i.bdd = sext i1 %i.bdc to i8
  %i.bde = getelementptr inbounds nuw i8, ptr %.06.i393.i.i.i, i64 3
  store i8 %i.bdd, ptr %i.bde, align 1
  %i.bdf = getelementptr inbounds nuw i8, ptr %.06.i393.i.i.i, i64 4
  %i.bdg = load i8, ptr %i.bdf, align 1
  %i.bdh = icmp ne i8 %i.bdg, %i.bcu
  %i.bdi = sext i1 %i.bdh to i8
  %i.bdj = getelementptr inbounds nuw i8, ptr %.06.i393.i.i.i, i64 5
  store i8 %i.bdi, ptr %i.bdj, align 1
  %i.bdk = getelementptr inbounds nuw i8, ptr %.06.i393.i.i.i, i64 6
  %i.bdl = load i8, ptr %i.bdk, align 1
  %i.bdm = icmp ne i8 %i.bdl, %i.bcu
  %i.bdn = sext i1 %i.bdm to i8
  %i.bdo = getelementptr inbounds nuw i8, ptr %.06.i393.i.i.i, i64 7
  store i8 %i.bdn, ptr %i.bdo, align 1
  %i.bdp = getelementptr inbounds nuw i8, ptr %.06.i393.i.i.i, i64 8 ; 2 uses
  %niter816.next.3 = add i32 %niter816, 4         ; 2 uses
  %niter816.ncmp.3 = icmp eq i32 %niter816.next.3, %unroll_iter815
  br i1 %niter816.ncmp.3, label %stbi__compute_transparency16.exit.i.i.i.loopexit404.unr-lcssa, label %.lr.ph7.i392.i.i.i, !llvm.loop !171

bb.mf:                                            ; preds = %bb.mn, %.lr.ph.i387.i.i.i.new
  %.14.i388.i.i.i = phi ptr [ %.val325.i.i.i, %.lr.ph.i387.i.i.i.new ], [ %i.bej, %bb.mn ] ; 9 uses
  %niter810 = phi i32 [ 0, %.lr.ph.i387.i.i.i.new ], [ %niter810.next.1, %bb.mn ]
  %i.bdq = load i8, ptr %.14.i388.i.i.i, align 1
  %i.bdr = icmp eq i8 %i.bdq, %i.bcq
  br i1 %i.bdr, label %bb.mg, label %bb.mj

bb.mg:                                            ; preds = %bb.mf
  %i.bds = getelementptr inbounds nuw i8, ptr %.14.i388.i.i.i, i64 1
  %i.bdt = load i8, ptr %i.bds, align 1
  %i.bdu = icmp eq i8 %i.bdt, %i.bcr
  br i1 %i.bdu, label %bb.mh, label %bb.mj

bb.mh:                                            ; preds = %bb.mg
  %i.bdv = getelementptr inbounds nuw i8, ptr %.14.i388.i.i.i, i64 2
  %i.bdw = load i8, ptr %i.bdv, align 1
  %i.bdx = icmp eq i8 %i.bdw, %i.bcs
  br i1 %i.bdx, label %bb.mi, label %bb.mj

bb.mi:                                            ; preds = %bb.mh
  %i.bdy = getelementptr inbounds nuw i8, ptr %.14.i388.i.i.i, i64 3
  store i8 0, ptr %i.bdy, align 1
  br label %bb.mj

bb.mj:                                            ; preds = %bb.mi, %bb.mh, %bb.mg, %bb.mf
  %i.bdz = getelementptr inbounds nuw i8, ptr %.14.i388.i.i.i, i64 4
  %i.bea = load i8, ptr %i.bdz, align 1
  %i.beb = icmp eq i8 %i.bea, %i.bcq
  br i1 %i.beb, label %bb.mk, label %bb.mn

bb.mk:                                            ; preds = %bb.mj
  %i.bec = getelementptr inbounds nuw i8, ptr %.14.i388.i.i.i, i64 5
  %i.bed = load i8, ptr %i.bec, align 1
  %i.bee = icmp eq i8 %i.bed, %i.bcr
  br i1 %i.bee, label %bb.ml, label %bb.mn

bb.ml:                                            ; preds = %bb.mk
  %i.bef = getelementptr inbounds nuw i8, ptr %.14.i388.i.i.i, i64 6
  %i.beg = load i8, ptr %i.bef, align 1
  %i.beh = icmp eq i8 %i.beg, %i.bcs
  br i1 %i.beh, label %bb.mm, label %bb.mn

bb.mm:                                            ; preds = %bb.ml
  %i.bei = getelementptr inbounds nuw i8, ptr %.14.i388.i.i.i, i64 7
  store i8 0, ptr %i.bei, align 1
  br label %bb.mn

bb.mn:                                            ; preds = %bb.mm, %bb.ml, %bb.mk, %bb.mj
  %i.bej = getelementptr inbounds nuw i8, ptr %.14.i388.i.i.i, i64 8 ; 2 uses
  %niter810.next.1 = add i32 %niter810, 2         ; 2 uses
  %niter810.ncmp.1 = icmp eq i32 %niter810.next.1, %unroll_iter809
  br i1 %niter810.ncmp.1, label %stbi__compute_transparency16.exit.i.i.i.loopexit405.unr-lcssa, label %bb.mf, !llvm.loop !172

stbi__compute_transparency16.exit.i.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph7.i.i.i.i
  %lcmp.mod826.not = icmp eq i32 %xtraiter824, 0
  br i1 %lcmp.mod826.not, label %stbi__compute_transparency16.exit.i.i.i, label %.lr.ph7.i.i.i.i.epil.preheader

.lr.ph7.i.i.i.i.epil.preheader:                   ; preds = %stbi__compute_transparency16.exit.i.i.i.loopexit.unr-lcssa, %.lr.ph7.i.preheader.i.i.i
  %.06.i.i.i.i.epil.init = phi ptr [ %.val325.i.i.i, %.lr.ph7.i.preheader.i.i.i ], [ %i.bbt, %stbi__compute_transparency16.exit.i.i.i.loopexit.unr-lcssa ]
  %lcmp.mod827 = icmp ne i32 %xtraiter824, 0
  tail call void @llvm.assume(i1 %lcmp.mod827)
  br label %.lr.ph7.i.i.i.i.epil

.lr.ph7.i.i.i.i.epil:                             ; preds = %.lr.ph7.i.i.i.i.epil, %.lr.ph7.i.i.i.i.epil.preheader
  %.06.i.i.i.i.epil = phi ptr [ %i.beo, %.lr.ph7.i.i.i.i.epil ], [ %.06.i.i.i.i.epil.init, %.lr.ph7.i.i.i.i.epil.preheader ] ; 3 uses
  %epil.iter825 = phi i32 [ %epil.iter825.next, %.lr.ph7.i.i.i.i.epil ], [ 0, %.lr.ph7.i.i.i.i.epil.preheader ]
  %i.bek = load i16, ptr %.06.i.i.i.i.epil, align 2
  %i.bel = icmp ne i16 %i.bek, %i.bay
  %i.bem = sext i1 %i.bel to i16
  %i.ben = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.epil, i64 2
  store i16 %i.bem, ptr %i.ben, align 2
  %i.beo = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.epil, i64 4
  %epil.iter825.next = add i32 %epil.iter825, 1   ; 2 uses
  %epil.iter825.cmp.not = icmp eq i32 %epil.iter825.next, %xtraiter824
  br i1 %epil.iter825.cmp.not, label %stbi__compute_transparency16.exit.i.i.i, label %.lr.ph7.i.i.i.i.epil, !llvm.loop !173

stbi__compute_transparency16.exit.i.i.i.loopexit403.unr-lcssa: ; preds = %bb.md
  %lcmp.mod820.not = icmp eq i32 %xtraiter818, 0
  br i1 %lcmp.mod820.not, label %stbi__compute_transparency16.exit.i.i.i, label %.epil.preheader817

.epil.preheader817:                               ; preds = %stbi__compute_transparency16.exit.i.i.i.loopexit403.unr-lcssa, %.lr.ph.i.i.i.i
  %.14.i.i.i.i.epil.init = phi ptr [ %.val325.i.i.i, %.lr.ph.i.i.i.i ], [ %i.bcn, %stbi__compute_transparency16.exit.i.i.i.loopexit403.unr-lcssa ] ; 4 uses
  %lcmp.mod821 = trunc i32 %i.baq to i1
  tail call void @llvm.assume(i1 %lcmp.mod821)
  %i.bep = load i16, ptr %.14.i.i.i.i.epil.init, align 2
  %i.beq = icmp eq i16 %i.bep, %i.bau
  br i1 %i.beq, label %bb.mo, label %stbi__compute_transparency16.exit.i.i.i

bb.mo:                                            ; preds = %.epil.preheader817
  %i.ber = getelementptr inbounds nuw i8, ptr %.14.i.i.i.i.epil.init, i64 2
  %i.bes = load i16, ptr %i.ber, align 2
  %i.bet = icmp eq i16 %i.bes, %i.bav
  br i1 %i.bet, label %bb.mp, label %stbi__compute_transparency16.exit.i.i.i

bb.mp:                                            ; preds = %bb.mo
  %i.beu = getelementptr inbounds nuw i8, ptr %.14.i.i.i.i.epil.init, i64 4
  %i.bev = load i16, ptr %i.beu, align 2
  %i.bew = icmp eq i16 %i.bev, %i.baw
  br i1 %i.bew, label %bb.mq, label %stbi__compute_transparency16.exit.i.i.i

bb.mq:                                            ; preds = %bb.mp
  %i.bex = getelementptr inbounds nuw i8, ptr %.14.i.i.i.i.epil.init, i64 6
  store i16 0, ptr %i.bex, align 2
  br label %stbi__compute_transparency16.exit.i.i.i

stbi__compute_transparency16.exit.i.i.i.loopexit404.unr-lcssa: ; preds = %.lr.ph7.i392.i.i.i
  %lcmp.mod813.not = icmp eq i32 %xtraiter811, 0
  br i1 %lcmp.mod813.not, label %stbi__compute_transparency16.exit.i.i.i, label %.lr.ph7.i392.i.i.i.epil.preheader

.lr.ph7.i392.i.i.i.epil.preheader:                ; preds = %stbi__compute_transparency16.exit.i.i.i.loopexit404.unr-lcssa, %.lr.ph7.i392.preheader.i.i.i
  %.06.i393.i.i.i.epil.init = phi ptr [ %.val325.i.i.i, %.lr.ph7.i392.preheader.i.i.i ], [ %i.bdp, %stbi__compute_transparency16.exit.i.i.i.loopexit404.unr-lcssa ]
  %lcmp.mod814 = icmp ne i32 %xtraiter811, 0
  tail call void @llvm.assume(i1 %lcmp.mod814)
  br label %.lr.ph7.i392.i.i.i.epil

.lr.ph7.i392.i.i.i.epil:                          ; preds = %.lr.ph7.i392.i.i.i.epil, %.lr.ph7.i392.i.i.i.epil.preheader
  %.06.i393.i.i.i.epil = phi ptr [ %i.bfc, %.lr.ph7.i392.i.i.i.epil ], [ %.06.i393.i.i.i.epil.init, %.lr.ph7.i392.i.i.i.epil.preheader ] ; 3 uses
  %epil.iter812 = phi i32 [ %epil.iter812.next, %.lr.ph7.i392.i.i.i.epil ], [ 0, %.lr.ph7.i392.i.i.i.epil.preheader ]
  %i.bey = load i8, ptr %.06.i393.i.i.i.epil, align 1
  %i.bez = icmp ne i8 %i.bey, %i.bcu
  %i.bfa = sext i1 %i.bez to i8
  %i.bfb = getelementptr inbounds nuw i8, ptr %.06.i393.i.i.i.epil, i64 1
  store i8 %i.bfa, ptr %i.bfb, align 1
  %i.bfc = getelementptr inbounds nuw i8, ptr %.06.i393.i.i.i.epil, i64 2
  %epil.iter812.next = add i32 %epil.iter812, 1   ; 2 uses
  %epil.iter812.cmp.not = icmp eq i32 %epil.iter812.next, %xtraiter811
  br i1 %epil.iter812.cmp.not, label %stbi__compute_transparency16.exit.i.i.i, label %.lr.ph7.i392.i.i.i.epil, !llvm.loop !174

stbi__compute_transparency16.exit.i.i.i.loopexit405.unr-lcssa: ; preds = %bb.mn
  %lcmp.mod807.not = icmp eq i32 %xtraiter805, 0
  br i1 %lcmp.mod807.not, label %stbi__compute_transparency16.exit.i.i.i, label %.epil.preheader804

.epil.preheader804:                               ; preds = %stbi__compute_transparency16.exit.i.i.i.loopexit405.unr-lcssa, %.lr.ph.i387.i.i.i
  %.14.i388.i.i.i.epil.init = phi ptr [ %.val325.i.i.i, %.lr.ph.i387.i.i.i ], [ %i.bej, %stbi__compute_transparency16.exit.i.i.i.loopexit405.unr-lcssa ] ; 4 uses
  %lcmp.mod808 = trunc i32 %i.baq to i1
  tail call void @llvm.assume(i1 %lcmp.mod808)
  %i.bfd = load i8, ptr %.14.i388.i.i.i.epil.init, align 1
  %i.bfe = icmp eq i8 %i.bfd, %i.bcq
  br i1 %i.bfe, label %bb.mr, label %stbi__compute_transparency16.exit.i.i.i

bb.mr:                                            ; preds = %.epil.preheader804
  %i.bff = getelementptr inbounds nuw i8, ptr %.14.i388.i.i.i.epil.init, i64 1
  %i.bfg = load i8, ptr %i.bff, align 1
  %i.bfh = icmp eq i8 %i.bfg, %i.bcr
  br i1 %i.bfh, label %bb.ms, label %stbi__compute_transparency16.exit.i.i.i

bb.ms:                                            ; preds = %bb.mr
  %i.bfi = getelementptr inbounds nuw i8, ptr %.14.i388.i.i.i.epil.init, i64 2
  %i.bfj = load i8, ptr %i.bfi, align 1
  %i.bfk = icmp eq i8 %i.bfj, %i.bcs
  br i1 %i.bfk, label %bb.mt, label %stbi__compute_transparency16.exit.i.i.i

bb.mt:                                            ; preds = %bb.ms
  %i.bfl = getelementptr inbounds nuw i8, ptr %.14.i388.i.i.i.epil.init, i64 3
  store i8 0, ptr %i.bfl, align 1
  br label %stbi__compute_transparency16.exit.i.i.i

stbi__compute_transparency16.exit.i.i.i:          ; preds = %stbi__compute_transparency16.exit.i.i.i.loopexit405.unr-lcssa, %bb.mt, %bb.ms, %bb.mr, %.epil.preheader804, %stbi__compute_transparency16.exit.i.i.i.loopexit404.unr-lcssa, %.lr.ph7.i392.i.i.i.epil, %stbi__compute_transparency16.exit.i.i.i.loopexit403.unr-lcssa, %bb.mq, %bb.mp, %bb.mo, %.epil.preheader817, %stbi__compute_transparency16.exit.i.i.i.loopexit.unr-lcssa, %.lr.ph7.i.i.i.i.epil, %.preheader.i391.i.i.i, %.preheader1.i386.i.i.i, %.preheader.i384.i.i.i, %.preheader1.i.i.i.i
  br i1 %i.awl, label %bb.mx, label %bb.mu

stbi__compute_transparency16.exit.thread.i.i.i:   ; preds = %bb.ls
  br i1 %i.awl, label %.thread441.i.i.i, label %bb.mu

bb.mu:                                            ; preds = %stbi__compute_transparency16.exit.thread.i.i.i, %stbi__compute_transparency16.exit.i.i.i
  %i.bfm = zext nneg i8 %.0258.i.i.i to i32       ; 2 uses
  store i32 %i.bfm, ptr %i.mt, align 8
  %i.bfn = icmp samesign ugt i32 %4, 2
  %spec.select.i.i.i = select i1 %i.bfn, i32 %4, i32 %i.bfm ; 4 uses
  store i32 %spec.select.i.i.i, ptr %i.awn, align 4
  br i1 %.not.i.i.i21, label %bb.mv, label %.thread441.i.i.i

bb.mv:                                            ; preds = %bb.mu
  %i.bfo = load ptr, ptr %10, align 8             ; 2 uses
  %i.bfp = load i32, ptr %i.bfo, align 8
  %i.bfq = getelementptr inbounds nuw i8, ptr %i.bfo, i64 4
  %i.bfr = load i32, ptr %i.bfq, align 4
  %i.bfs = mul i32 %i.bfr, %i.bfp                 ; 9 uses
  %i.bft = load ptr, ptr %i.gv, align 8           ; 9 uses
  %or.cond.not.i.i.i.i396.i.i.i = icmp sgt i32 %i.bfs, -1
  br i1 %or.cond.not.i.i.i.i396.i.i.i, label %stbi__mul2sizes_valid.exit.i.i.i398.i.i.i, label %stbi__expand_png_palette.exit.thread.i.i.i

stbi__mul2sizes_valid.exit.i.i.i398.i.i.i:        ; preds = %bb.mv
  %i.bfu = udiv i32 2147483647, %spec.select.i.i.i
  %.not10.i.i.i.i.i.i = icmp samesign ugt i32 %i.bfs, %i.bfu
  br i1 %.not10.i.i.i.i.i.i, label %stbi__expand_png_palette.exit.thread.i.i.i, label %stbi__malloc_mad2.exit.i.i.i.i

stbi__malloc_mad2.exit.i.i.i.i:                   ; preds = %stbi__mul2sizes_valid.exit.i.i.i398.i.i.i
  %i.bfv = mul nuw nsw i32 %i.bfs, %spec.select.i.i.i
  %i.bfw = zext nneg i32 %i.bfv to i64
  %i.bfx = tail call noalias ptr @SDL_malloc_REAL(i64 noundef range(i64 -2147483648, 4294967296) %i.bfw) #13 ; 6 uses
  %i.bfy = icmp eq ptr %i.bfx, null
  br i1 %i.bfy, label %stbi__expand_png_palette.exit.thread.i.i.i, label %bb.mw

stbi__expand_png_palette.exit.thread.i.i.i:       ; preds = %stbi__malloc_mad2.exit.i.i.i.i, %stbi__mul2sizes_valid.exit.i.i.i398.i.i.i, %bb.mv
  %i.bfz = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.10) #13 ; 0 uses
  br label %stbi__parse_png_file.exit.thread.i.i

bb.mw:                                            ; preds = %stbi__malloc_mad2.exit.i.i.i.i
  %i.bga = icmp eq i32 %spec.select.i.i.i, 3
  %.not56.i.i.i.i = icmp eq i32 %i.bfs, 0         ; 2 uses
  br i1 %i.bga, label %.preheader.i403.i.i.i, label %.preheader49.i.i.i.i

.preheader49.i.i.i.i:                             ; preds = %bb.mw
  br i1 %.not56.i.i.i.i, label %stbi__expand_png_palette.exit.i.i.i, label %.lr.ph.preheader.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %.preheader49.i.i.i.i
  %wide.trip.count.i.i.i.i = zext nneg i32 %i.bfs to i64 ; 2 uses
  %xtraiter830 = and i64 %wide.trip.count.i.i.i.i, 3 ; 3 uses
  %i.bgb = icmp ult i32 %i.bfs, 4
  br i1 %i.bgb, label %.lr.ph.i399.i.i.i.epil.preheader, label %.lr.ph.preheader.i.i.i.i.new

.lr.ph.preheader.i.i.i.i.new:                     ; preds = %.lr.ph.preheader.i.i.i.i
  %unroll_iter834 = and i64 %wide.trip.count.i.i.i.i, 2147483644
  br label %.lr.ph.i399.i.i.i

.preheader.i403.i.i.i:                            ; preds = %bb.mw
  br i1 %.not56.i.i.i.i, label %stbi__expand_png_palette.exit.i.i.i, label %.lr.ph55.preheader.i.i.i.i

.lr.ph55.preheader.i.i.i.i:                       ; preds = %.preheader.i403.i.i.i
  %wide.trip.count62.i.i.i.i = zext nneg i32 %i.bfs to i64 ; 2 uses
  %xtraiter836 = and i64 %wide.trip.count62.i.i.i.i, 1
  %i.bgc = icmp eq i32 %i.bfs, 1
  br i1 %i.bgc, label %.lr.ph55.i.i.i.i.epil.preheader, label %.lr.ph55.preheader.i.i.i.i.new

.lr.ph55.preheader.i.i.i.i.new:                   ; preds = %.lr.ph55.preheader.i.i.i.i
  %unroll_iter840 = and i64 %wide.trip.count62.i.i.i.i, 2147483646
  br label %.lr.ph55.i.i.i.i

.lr.ph55.i.i.i.i:                                 ; preds = %.lr.ph55.i.i.i.i, %.lr.ph55.preheader.i.i.i.i.new
  %indvars.iv59.i.i.i.i = phi i64 [ 0, %.lr.ph55.preheader.i.i.i.i.new ], [ %indvars.iv.next60.i.i.i.i.1, %.lr.ph55.i.i.i.i ] ; 3 uses
  %.04553.i.i.i.i = phi ptr [ %i.bfx, %.lr.ph55.preheader.i.i.i.i.new ], [ %i.bhd, %.lr.ph55.i.i.i.i ] ; 7 uses
  %niter841 = phi i64 [ 0, %.lr.ph55.preheader.i.i.i.i.new ], [ %niter841.next.1, %.lr.ph55.i.i.i.i ]
  %i.bgd = getelementptr inbounds nuw i8, ptr %i.bft, i64 %indvars.iv59.i.i.i.i
  %i.bge = load i8, ptr %i.bgd, align 1
  %i.bgf = zext i8 %i.bge to i64
  %i.bgg = shl nuw nsw i64 %i.bgf, 2
  %i.bgh = getelementptr inbounds nuw i8, ptr %.0257.i.i.i, i64 %i.bgg ; 3 uses
  %i.bgi = load i8, ptr %i.bgh, align 1
  store i8 %i.bgi, ptr %.04553.i.i.i.i, align 1
  %i.bgj = getelementptr inbounds nuw i8, ptr %i.bgh, i64 1
  %i.bgk = load i8, ptr %i.bgj, align 1
  %i.bgl = getelementptr inbounds nuw i8, ptr %.04553.i.i.i.i, i64 1
  store i8 %i.bgk, ptr %i.bgl, align 1
  %i.bgm = getelementptr inbounds nuw i8, ptr %i.bgh, i64 2
  %i.bgn = load i8, ptr %i.bgm, align 1
  %i.bgo = getelementptr inbounds nuw i8, ptr %.04553.i.i.i.i, i64 2
  store i8 %i.bgn, ptr %i.bgo, align 1
  %i.bgp = getelementptr inbounds nuw i8, ptr %.04553.i.i.i.i, i64 3
  %i.bgq = getelementptr inbounds nuw i8, ptr %i.bft, i64 %indvars.iv59.i.i.i.i
  %i.bgr = getelementptr inbounds nuw i8, ptr %i.bgq, i64 1
  %i.bgs = load i8, ptr %i.bgr, align 1
  %i.bgt = zext i8 %i.bgs to i64
  %i.bgu = shl nuw nsw i64 %i.bgt, 2
  %i.bgv = getelementptr inbounds nuw i8, ptr %.0257.i.i.i, i64 %i.bgu ; 3 uses
  %i.bgw = load i8, ptr %i.bgv, align 1
  store i8 %i.bgw, ptr %i.bgp, align 1
  %i.bgx = getelementptr inbounds nuw i8, ptr %i.bgv, i64 1
  %i.bgy = load i8, ptr %i.bgx, align 1
  %i.bgz = getelementptr inbounds nuw i8, ptr %.04553.i.i.i.i, i64 4
  store i8 %i.bgy, ptr %i.bgz, align 1
  %i.bha = getelementptr inbounds nuw i8, ptr %i.bgv, i64 2
  %i.bhb = load i8, ptr %i.bha, align 1
  %i.bhc = getelementptr inbounds nuw i8, ptr %.04553.i.i.i.i, i64 5
  store i8 %i.bhb, ptr %i.bhc, align 1
  %i.bhd = getelementptr inbounds nuw i8, ptr %.04553.i.i.i.i, i64 6 ; 2 uses
  %indvars.iv.next60.i.i.i.i.1 = add nuw nsw i64 %indvars.iv59.i.i.i.i, 2 ; 2 uses
  %niter841.next.1 = add i64 %niter841, 2         ; 2 uses
  %niter841.ncmp.1 = icmp eq i64 %niter841.next.1, %unroll_iter840
  br i1 %niter841.ncmp.1, label %stbi__expand_png_palette.exit.i.i.i.loopexit.unr-lcssa, label %.lr.ph55.i.i.i.i, !llvm.loop !175

.lr.ph.i399.i.i.i:                                ; preds = %.lr.ph.i399.i.i.i, %.lr.ph.preheader.i.i.i.i.new
  %indvars.iv.i400.i.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i.i.i.new ], [ %indvars.iv.next.i401.i.i.i.3, %.lr.ph.i399.i.i.i ] ; 5 uses
  %.14651.i.i.i.i = phi ptr [ %i.bfx, %.lr.ph.preheader.i.i.i.i.new ], [ %i.bii, %.lr.ph.i399.i.i.i ] ; 5 uses
  %niter835 = phi i64 [ 0, %.lr.ph.preheader.i.i.i.i.new ], [ %niter835.next.3, %.lr.ph.i399.i.i.i ]
  %i.bhe = getelementptr inbounds nuw i8, ptr %i.bft, i64 %indvars.iv.i400.i.i.i
  %i.bhf = load i8, ptr %i.bhe, align 1
  %i.bhg = zext i8 %i.bhf to i64
  %i.bhh = shl nuw nsw i64 %i.bhg, 2
  %i.bhi = getelementptr inbounds nuw i8, ptr %.0257.i.i.i, i64 %i.bhh
  %i.bhj = load <4 x i8>, ptr %i.bhi, align 1
  store <4 x i8> %i.bhj, ptr %.14651.i.i.i.i, align 1
  %i.bhk = getelementptr inbounds nuw i8, ptr %.14651.i.i.i.i, i64 4
  %i.bhl = getelementptr inbounds nuw i8, ptr %i.bft, i64 %indvars.iv.i400.i.i.i
  %i.bhm = getelementptr inbounds nuw i8, ptr %i.bhl, i64 1
  %i.bhn = load i8, ptr %i.bhm, align 1
  %i.bho = zext i8 %i.bhn to i64
  %i.bhp = shl nuw nsw i64 %i.bho, 2
  %i.bhq = getelementptr inbounds nuw i8, ptr %.0257.i.i.i, i64 %i.bhp
  %i.bhr = load <4 x i8>, ptr %i.bhq, align 1
  store <4 x i8> %i.bhr, ptr %i.bhk, align 1
  %i.bhs = getelementptr inbounds nuw i8, ptr %.14651.i.i.i.i, i64 8
  %i.bht = getelementptr inbounds nuw i8, ptr %i.bft, i64 %indvars.iv.i400.i.i.i
  %i.bhu = getelementptr inbounds nuw i8, ptr %i.bht, i64 2
  %i.bhv = load i8, ptr %i.bhu, align 1
  %i.bhw = zext i8 %i.bhv to i64
  %i.bhx = shl nuw nsw i64 %i.bhw, 2
  %i.bhy = getelementptr inbounds nuw i8, ptr %.0257.i.i.i, i64 %i.bhx
  %i.bhz = load <4 x i8>, ptr %i.bhy, align 1
  store <4 x i8> %i.bhz, ptr %i.bhs, align 1
  %i.bia = getelementptr inbounds nuw i8, ptr %.14651.i.i.i.i, i64 12
  %i.bib = getelementptr inbounds nuw i8, ptr %i.bft, i64 %indvars.iv.i400.i.i.i
  %i.bic = getelementptr inbounds nuw i8, ptr %i.bib, i64 3
  %i.bid = load i8, ptr %i.bic, align 1
  %i.bie = zext i8 %i.bid to i64
  %i.bif = shl nuw nsw i64 %i.bie, 2
  %i.big = getelementptr inbounds nuw i8, ptr %.0257.i.i.i, i64 %i.bif
  %i.bih = load <4 x i8>, ptr %i.big, align 1
  store <4 x i8> %i.bih, ptr %i.bia, align 1
  %i.bii = getelementptr inbounds nuw i8, ptr %.14651.i.i.i.i, i64 16 ; 2 uses
  %indvars.iv.next.i401.i.i.i.3 = add nuw nsw i64 %indvars.iv.i400.i.i.i, 4 ; 2 uses
  %niter835.next.3 = add i64 %niter835, 4         ; 2 uses
  %niter835.ncmp.3 = icmp eq i64 %niter835.next.3, %unroll_iter834
  br i1 %niter835.ncmp.3, label %stbi__expand_png_palette.exit.i.i.i.loopexit402.unr-lcssa, label %.lr.ph.i399.i.i.i, !llvm.loop !176

stbi__expand_png_palette.exit.i.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph55.i.i.i.i
  %lcmp.mod838.not = icmp eq i64 %xtraiter836, 0
  br i1 %lcmp.mod838.not, label %stbi__expand_png_palette.exit.i.i.i, label %.lr.ph55.i.i.i.i.epil.preheader

.lr.ph55.i.i.i.i.epil.preheader:                  ; preds = %stbi__expand_png_palette.exit.i.i.i.loopexit.unr-lcssa, %.lr.ph55.preheader.i.i.i.i
  %indvars.iv59.i.i.i.i.epil.init = phi i64 [ 0, %.lr.ph55.preheader.i.i.i.i ], [ %indvars.iv.next60.i.i.i.i.1, %stbi__expand_png_palette.exit.i.i.i.loopexit.unr-lcssa ]
  %.04553.i.i.i.i.epil.init = phi ptr [ %i.bfx, %.lr.ph55.preheader.i.i.i.i ], [ %i.bhd, %stbi__expand_png_palette.exit.i.i.i.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod839 = trunc i32 %i.bfs to i1
  tail call void @llvm.assume(i1 %lcmp.mod839)
  %i.bij = getelementptr inbounds nuw i8, ptr %i.bft, i64 %indvars.iv59.i.i.i.i.epil.init
  %i.bik = load i8, ptr %i.bij, align 1
  %i.bil = zext i8 %i.bik to i64
  %i.bim = shl nuw nsw i64 %i.bil, 2
  %i.bin = getelementptr inbounds nuw i8, ptr %.0257.i.i.i, i64 %i.bim ; 3 uses
  %i.bio = load i8, ptr %i.bin, align 1
  store i8 %i.bio, ptr %.04553.i.i.i.i.epil.init, align 1
  %i.bip = getelementptr inbounds nuw i8, ptr %i.bin, i64 1
  %i.biq = load i8, ptr %i.bip, align 1
  %i.bir = getelementptr inbounds nuw i8, ptr %.04553.i.i.i.i.epil.init, i64 1
  store i8 %i.biq, ptr %i.bir, align 1
  %i.bis = getelementptr inbounds nuw i8, ptr %i.bin, i64 2
  %i.bit = load i8, ptr %i.bis, align 1
  %i.biu = getelementptr inbounds nuw i8, ptr %.04553.i.i.i.i.epil.init, i64 2
  store i8 %i.bit, ptr %i.biu, align 1
  br label %stbi__expand_png_palette.exit.i.i.i

stbi__expand_png_palette.exit.i.i.i.loopexit402.unr-lcssa: ; preds = %.lr.ph.i399.i.i.i
  %lcmp.mod832.not = icmp eq i64 %xtraiter830, 0
  br i1 %lcmp.mod832.not, label %stbi__expand_png_palette.exit.i.i.i, label %.lr.ph.i399.i.i.i.epil.preheader

.lr.ph.i399.i.i.i.epil.preheader:                 ; preds = %stbi__expand_png_palette.exit.i.i.i.loopexit402.unr-lcssa, %.lr.ph.preheader.i.i.i.i
  %indvars.iv.i400.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i.i.i.i ], [ %indvars.iv.next.i401.i.i.i.3, %stbi__expand_png_palette.exit.i.i.i.loopexit402.unr-lcssa ]
  %.14651.i.i.i.i.epil.init = phi ptr [ %i.bfx, %.lr.ph.preheader.i.i.i.i ], [ %i.bii, %stbi__expand_png_palette.exit.i.i.i.loopexit402.unr-lcssa ]
  %lcmp.mod833 = icmp ne i64 %xtraiter830, 0
  tail call void @llvm.assume(i1 %lcmp.mod833)
  br label %.lr.ph.i399.i.i.i.epil

.lr.ph.i399.i.i.i.epil:                           ; preds = %.lr.ph.i399.i.i.i.epil, %.lr.ph.i399.i.i.i.epil.preheader
  %indvars.iv.i400.i.i.i.epil = phi i64 [ %indvars.iv.i400.i.i.i.epil.init, %.lr.ph.i399.i.i.i.epil.preheader ], [ %indvars.iv.next.i401.i.i.i.epil, %.lr.ph.i399.i.i.i.epil ] ; 2 uses
  %.14651.i.i.i.i.epil = phi ptr [ %.14651.i.i.i.i.epil.init, %.lr.ph.i399.i.i.i.epil.preheader ], [ %i.bjb, %.lr.ph.i399.i.i.i.epil ] ; 2 uses
  %epil.iter831 = phi i64 [ 0, %.lr.ph.i399.i.i.i.epil.preheader ], [ %epil.iter831.next, %.lr.ph.i399.i.i.i.epil ]
  %i.biv = getelementptr inbounds nuw i8, ptr %i.bft, i64 %indvars.iv.i400.i.i.i.epil
  %i.biw = load i8, ptr %i.biv, align 1
  %i.bix = zext i8 %i.biw to i64
  %i.biy = shl nuw nsw i64 %i.bix, 2
  %i.biz = getelementptr inbounds nuw i8, ptr %.0257.i.i.i, i64 %i.biy
  %i.bja = load <4 x i8>, ptr %i.biz, align 1
  store <4 x i8> %i.bja, ptr %.14651.i.i.i.i.epil, align 1
  %i.bjb = getelementptr inbounds nuw i8, ptr %.14651.i.i.i.i.epil, i64 4
  %indvars.iv.next.i401.i.i.i.epil = add nuw nsw i64 %indvars.iv.i400.i.i.i.epil, 1
  %epil.iter831.next = add i64 %epil.iter831, 1   ; 2 uses
  %epil.iter831.cmp.not = icmp eq i64 %epil.iter831.next, %xtraiter830
  br i1 %epil.iter831.cmp.not, label %stbi__expand_png_palette.exit.i.i.i, label %.lr.ph.i399.i.i.i.epil, !llvm.loop !177

stbi__expand_png_palette.exit.i.i.i:              ; preds = %stbi__expand_png_palette.exit.i.i.i.loopexit402.unr-lcssa, %.lr.ph.i399.i.i.i.epil, %.lr.ph55.i.i.i.i.epil.preheader, %stbi__expand_png_palette.exit.i.i.i.loopexit.unr-lcssa, %.preheader.i403.i.i.i, %.preheader49.i.i.i.i
  tail call void @SDL_free_REAL(ptr noundef %i.bft) #13
  store ptr %i.bfx, ptr %i.gv, align 8
  br label %.thread441.i.i.i

bb.mx:                                            ; preds = %stbi__compute_transparency16.exit.i.i.i
  %i.bjc = load i32, ptr %i.mt, align 8
  %i.bjd = add nsw i32 %i.bjc, 1
  store i32 %i.bjd, ptr %i.mt, align 8
  br label %.thread441.i.i.i

.thread441.i.i.i:                                 ; preds = %bb.mx, %stbi__expand_png_palette.exit.i.i.i, %bb.mu, %stbi__compute_transparency16.exit.thread.i.i.i
  %i.bje = load ptr, ptr %i.gt, align 8
  tail call void @SDL_free_REAL(ptr noundef %i.bje) #13
  %i.bjf = tail call fastcc i32 @stbi__get16be(ptr noundef nonnull %0) ; 0 uses
  %i.bjg = tail call fastcc i32 @stbi__get16be(ptr noundef nonnull %0) ; 0 uses
  %i.bjh = load ptr, ptr %i.mw, align 8           ; 2 uses
  %.not297.i.i.i = icmp eq ptr %i.bjh, null
  br i1 %.not297.i.i.i, label %bb.nk, label %bb.my

bb.my:                                            ; preds = %.thread441.i.i.i
  %i.bji = load ptr, ptr %i.j, align 8            ; 2 uses
  %i.bjj = load ptr, ptr %i.i, align 8            ; 2 uses
  %i.bjk = icmp ugt ptr %i.bji, %i.bjj
  br i1 %i.bjk, label %bb.mz, label %bb.nk

bb.mz:                                            ; preds = %bb.my
  %i.bjl = load ptr, ptr %i.m, align 8
  %i.bjm = ptrtoint ptr %i.bjj to i64
  %i.bjn = ptrtoint ptr %i.bji to i64
  %i.bjo = sub i64 %i.bjm, %i.bjn
  %i.bjp = trunc i64 %i.bjo to i32
  tail call void %i.bjh(ptr noundef %i.bjl, i32 noundef %i.bjp) #13, !inline_history !178
  br label %bb.nk

bb.na:                                            ; preds = %stbi__check_png_header.exit.i.i.i
  %.not323.i.i.i = icmp eq i32 %.0238.i.i.i, 0
  br i1 %.not323.i.i.i, label %bb.nc, label %bb.nb

bb.nb:                                            ; preds = %bb.na
  store ptr %i.nu, ptr %i.gu, align 8
  %i.bjq = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.28) #13 ; 0 uses
  br label %stbi__parse_png_file.exit.thread.i.i

bb.nc:                                            ; preds = %bb.na
  %i.bjr = and i32 %i.nz, 8192
  %i.bjs = icmp eq i32 %i.bjr, 0
  br i1 %i.bjs, label %bb.nd, label %bb.ne

bb.nd:                                            ; preds = %bb.nc
  store ptr %i.nu, ptr %i.gu, align 8
  %i.bjt = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.31) #13 ; 0 uses
  br label %stbi__parse_png_file.exit.thread.i.i

bb.ne:                                            ; preds = %bb.nc
  %i.bju = icmp eq i32 %i.ny, 0
  br i1 %i.bju, label %.loopexit.i.i.i, label %bb.nf

bb.nf:                                            ; preds = %bb.ne
  %i.bjv = icmp slt i32 %i.nw, 0
  br i1 %i.bjv, label %bb.ng, label %bb.nh

bb.ng:                                            ; preds = %bb.nf
  %i.bjw = load ptr, ptr %i.j, align 8
  store ptr %i.bjw, ptr %i.i, align 8
  br label %.loopexit.i.i.i

bb.nh:                                            ; preds = %bb.nf
  %i.bjx = load ptr, ptr %i.l, align 8
  %.not.i404.i.i.i = icmp eq ptr %i.bjx, null
  br i1 %.not.i404.i.i.i, label %..thread_crit_edge.i406.i.i.i, label %bb.ni

..thread_crit_edge.i406.i.i.i:                    ; preds = %bb.nh
  %.pre.i408.i.i.i = load ptr, ptr %i.i, align 8
  br label %.thread.i405.i.i.i

bb.ni:                                            ; preds = %bb.nh
  %i.bjy = load ptr, ptr %i.j, align 8            ; 2 uses
  %i.bjz = load ptr, ptr %i.i, align 8            ; 2 uses
  %i.bka = ptrtoint ptr %i.bjy to i64
  %i.bkb = ptrtoint ptr %i.bjz to i64
  %i.bkc = sub i64 %i.bka, %i.bkb
  %i.bkd = trunc i64 %i.bkc to i32                ; 2 uses
  %i.bke = icmp sgt i32 %i.ny, %i.bkd
  br i1 %i.bke, label %bb.nj, label %.thread.i405.i.i.i

bb.nj:                                            ; preds = %bb.ni
  store ptr %i.bjy, ptr %i.i, align 8
  %i.bkf = load ptr, ptr %i.mw, align 8
  %i.bkg = load ptr, ptr %i.m, align 8
  %i.bkh = sub nsw i32 %i.ny, %i.bkd
  tail call void %i.bkf(ptr noundef %i.bkg, i32 noundef %i.bkh) #13, !inline_history !146
  br label %.loopexit.i.i.i

.thread.i405.i.i.i:                               ; preds = %bb.ni, %..thread_crit_edge.i406.i.i.i
  %i.bki = phi ptr [ %.pre.i408.i.i.i, %..thread_crit_edge.i406.i.i.i ], [ %i.bjz, %bb.ni ]
  %i.bkj = zext nneg i32 %i.ny to i64
  %i.bkk = getelementptr inbounds nuw i8, ptr %i.bki, i64 %i.bkj
  store ptr %i.bkk, ptr %i.i, align 8
  br label %.loopexit.i.i.i

.loopexit.i.i.i:                                  ; preds = %stbi__get8.exit363.i.i.i, %.lr.ph782.i.i.i, %.lr.ph784.i.i.i, %stbi__get8.exit357.i.i.i, %.thread.i405.i.i.i, %bb.nj, %bb.ng, %bb.ne, %stbi__getn.exit.i.i.i, %stbi__getn.exit.thread429.i.i.i, %.preheader463.i.i.i, %.preheader465.i.i.i, %.preheader467.i.i.i, %.preheader.i.i.i, %bb.eq, %bb.eo, %.thread.i.i.i.i, %bb.de, %bb.db, %bb.cz
  %i.bkl = phi i32 [ %i.nt, %stbi__getn.exit.thread429.i.i.i ], [ %i.nt, %stbi__getn.exit.i.i.i ], [ %i.nt, %.thread.i.i.i.i ], [ %i.nt, %.thread.i405.i.i.i ], [ 16, %.preheader463.i.i.i ], [ %i.nt, %.preheader465.i.i.i ], [ %i.nt, %.preheader.i.i.i ], [ %i.nt, %bb.cz ], [ %i.nt, %bb.db ], [ %i.nt, %bb.de ], [ %i.qh, %bb.eq ], [ %i.qh, %bb.eo ], [ %i.nt, %bb.ne ], [ %i.nt, %bb.ng ], [ %i.nt, %bb.nj ], [ %i.nt, %.preheader467.i.i.i ], [ %i.nt, %.lr.ph782.i.i.i ], [ %i.nt, %stbi__get8.exit357.i.i.i ], [ 16, %.lr.ph784.i.i.i ], [ %i.nt, %stbi__get8.exit363.i.i.i ]
  %i.bkm = phi ptr [ %i.yh, %stbi__getn.exit.thread429.i.i.i ], [ %i.yh, %stbi__getn.exit.i.i.i ], [ %i.nu, %.thread.i.i.i.i ], [ %i.nu, %.thread.i405.i.i.i ], [ null, %.preheader463.i.i.i ], [ null, %.preheader465.i.i.i ], [ %i.nu, %.preheader.i.i.i ], [ %i.nu, %bb.cz ], [ %i.nu, %bb.db ], [ %i.nu, %bb.de ], [ %i.nu, %bb.eq ], [ %i.nu, %bb.eo ], [ %i.nu, %bb.ne ], [ %i.nu, %bb.ng ], [ %i.nu, %bb.nj ], [ null, %.preheader467.i.i.i ], [ null, %.lr.ph782.i.i.i ], [ %i.nu, %stbi__get8.exit357.i.i.i ], [ null, %.lr.ph784.i.i.i ], [ null, %stbi__get8.exit363.i.i.i ]
  %.3261.i.i.i = phi i8 [ %.0258.i.i.i, %stbi__getn.exit.thread429.i.i.i ], [ %.0258.i.i.i, %stbi__getn.exit.i.i.i ], [ %.0258.i.i.i, %.thread.i.i.i.i ], [ %.0258.i.i.i, %.thread.i405.i.i.i ], [ 0, %.preheader463.i.i.i ], [ 0, %.preheader465.i.i.i ], [ %.0258.i.i.i, %.preheader.i.i.i ], [ %.0258.i.i.i, %bb.cz ], [ %.0258.i.i.i, %bb.db ], [ %.0258.i.i.i, %bb.de ], [ %.1259.i.i.i, %bb.eq ], [ 0, %bb.eo ], [ %.0258.i.i.i, %bb.ne ], [ %.0258.i.i.i, %bb.ng ], [ %.0258.i.i.i, %bb.nj ], [ 4, %.preheader467.i.i.i ], [ 0, %.lr.ph782.i.i.i ], [ %.0258.i.i.i, %stbi__get8.exit357.i.i.i ], [ 0, %.lr.ph784.i.i.i ], [ 4, %stbi__get8.exit363.i.i.i ]
  %.1255.i.i.i = phi i8 [ %.0254.i.i.i, %stbi__getn.exit.thread429.i.i.i ], [ %.0254.i.i.i, %stbi__getn.exit.i.i.i ], [ %.0254.i.i.i, %.thread.i.i.i.i ], [ %.0254.i.i.i, %.thread.i405.i.i.i ], [ 1, %.preheader463.i.i.i ], [ 1, %.preheader465.i.i.i ], [ %.0254.i.i.i, %.preheader.i.i.i ], [ %.0254.i.i.i, %bb.cz ], [ %.0254.i.i.i, %bb.db ], [ %.0254.i.i.i, %bb.de ], [ %.0254.i.i.i, %bb.eq ], [ %.0254.i.i.i, %bb.eo ], [ %.0254.i.i.i, %bb.ne ], [ %.0254.i.i.i, %bb.ng ], [ %.0254.i.i.i, %bb.nj ], [ %.0254.i.i.i, %.preheader467.i.i.i ], [ 1, %.lr.ph782.i.i.i ], [ %.0254.i.i.i, %stbi__get8.exit357.i.i.i ], [ 1, %.lr.ph784.i.i.i ], [ %.0254.i.i.i, %stbi__get8.exit363.i.i.i ]
  %.1252.i.i.i = phi i32 [ %i.xx, %stbi__getn.exit.thread429.i.i.i ], [ %i.xx, %stbi__getn.exit.i.i.i ], [ %.0251.i.i.i, %.thread.i.i.i.i ], [ %.0251.i.i.i, %.thread.i405.i.i.i ], [ %.0251.i.i.i, %.preheader463.i.i.i ], [ %.0251.i.i.i, %.preheader465.i.i.i ], [ %.0251.i.i.i, %.preheader.i.i.i ], [ %.0251.i.i.i, %bb.cz ], [ %.0251.i.i.i, %bb.db ], [ %.0251.i.i.i, %bb.de ], [ %.0251.i.i.i, %bb.eq ], [ %.0251.i.i.i, %bb.eo ], [ %.0251.i.i.i, %bb.ne ], [ %.0251.i.i.i, %bb.ng ], [ %.0251.i.i.i, %bb.nj ], [ %.0251.i.i.i, %.preheader467.i.i.i ], [ %.0251.i.i.i, %.lr.ph782.i.i.i ], [ %.0251.i.i.i, %stbi__get8.exit357.i.i.i ], [ %.0251.i.i.i, %.lr.ph784.i.i.i ], [ %.0251.i.i.i, %stbi__get8.exit363.i.i.i ]
  %.4.i.i.i = phi i32 [ %.3250.i.i.i, %stbi__getn.exit.thread429.i.i.i ], [ %.3250.i.i.i, %stbi__getn.exit.i.i.i ], [ %.0247.i.i.i, %.thread.i.i.i.i ], [ %.0247.i.i.i, %.thread.i405.i.i.i ], [ %.0247.i.i.i, %.preheader463.i.i.i ], [ %.0247.i.i.i, %.preheader465.i.i.i ], [ %.0247.i.i.i, %.preheader.i.i.i ], [ %.0247.i.i.i, %bb.cz ], [ %.0247.i.i.i, %bb.db ], [ %.0247.i.i.i, %bb.de ], [ %.0247.i.i.i, %bb.eq ], [ %.0247.i.i.i, %bb.eo ], [ %.0247.i.i.i, %bb.ne ], [ %.0247.i.i.i, %bb.ng ], [ %.0247.i.i.i, %bb.nj ], [ %.0247.i.i.i, %.preheader467.i.i.i ], [ %.0247.i.i.i, %.lr.ph782.i.i.i ], [ %.0247.i.i.i, %stbi__get8.exit357.i.i.i ], [ %.0247.i.i.i, %.lr.ph784.i.i.i ], [ %.0247.i.i.i, %stbi__get8.exit363.i.i.i ]
  %.1243.i.i.i = phi i32 [ %.0242.i.i.i, %stbi__getn.exit.thread429.i.i.i ], [ %.0242.i.i.i, %stbi__getn.exit.i.i.i ], [ %.0242.i.i.i, %.thread.i.i.i.i ], [ %.0242.i.i.i, %.thread.i405.i.i.i ], [ %.0242.i.i.i, %.preheader463.i.i.i ], [ %.0242.i.i.i, %.preheader465.i.i.i ], [ %.zext.i.i.i, %.preheader.i.i.i ], [ %.0242.i.i.i, %bb.cz ], [ %.0242.i.i.i, %bb.db ], [ %.0242.i.i.i, %bb.de ], [ %.0242.i.i.i, %bb.eq ], [ %.0242.i.i.i, %bb.eo ], [ %.0242.i.i.i, %bb.ne ], [ %.0242.i.i.i, %bb.ng ], [ %.0242.i.i.i, %bb.nj ], [ %.0242.i.i.i, %.preheader467.i.i.i ], [ %.0242.i.i.i, %.lr.ph782.i.i.i ], [ %.zext.i.i.i, %stbi__get8.exit357.i.i.i ], [ %.0242.i.i.i, %.lr.ph784.i.i.i ], [ %.0242.i.i.i, %stbi__get8.exit363.i.i.i ]
  %.2240.i.i.i = phi i32 [ 0, %stbi__getn.exit.thread429.i.i.i ], [ 0, %stbi__getn.exit.i.i.i ], [ %.0238.i.i.i, %.thread.i.i.i.i ], [ 0, %.thread.i405.i.i.i ], [ 0, %.preheader463.i.i.i ], [ 0, %.preheader465.i.i.i ], [ 0, %.preheader.i.i.i ], [ %.0238.i.i.i, %bb.cz ], [ %.0238.i.i.i, %bb.db ], [ %.0238.i.i.i, %bb.de ], [ 0, %bb.eq ], [ 0, %bb.eo ], [ 0, %bb.ne ], [ 0, %bb.ng ], [ 0, %bb.nj ], [ 0, %.preheader467.i.i.i ], [ 0, %.lr.ph782.i.i.i ], [ 0, %stbi__get8.exit357.i.i.i ], [ 0, %.lr.ph784.i.i.i ], [ 0, %stbi__get8.exit363.i.i.i ]
  %.2234.i.i.i = phi i32 [ %.0232.i.i.i, %stbi__getn.exit.thread429.i.i.i ], [ %.0232.i.i.i, %stbi__getn.exit.i.i.i ], [ %.0232.i.i.i, %.thread.i.i.i.i ], [ %.0232.i.i.i, %.thread.i405.i.i.i ], [ %.0232.i.i.i, %.preheader463.i.i.i ], [ %.0232.i.i.i, %.preheader465.i.i.i ], [ %.0232.i.i.i, %.preheader.i.i.i ], [ %.0232.i.i.i, %bb.cz ], [ %.0232.i.i.i, %bb.db ], [ %.0232.i.i.i, %bb.de ], [ %i.ru, %bb.eq ], [ %i.ru, %bb.eo ], [ %.0232.i.i.i, %bb.ne ], [ %.0232.i.i.i, %bb.ng ], [ %.0232.i.i.i, %bb.nj ], [ %.0232.i.i.i, %.preheader467.i.i.i ], [ %.0232.i.i.i, %.lr.ph782.i.i.i ], [ %.0232.i.i.i, %stbi__get8.exit357.i.i.i ], [ %.0232.i.i.i, %.lr.ph784.i.i.i ], [ %.0232.i.i.i, %stbi__get8.exit363.i.i.i ]
  %.2230.i.i.i = phi i32 [ %.0228.i.i.i, %stbi__getn.exit.thread429.i.i.i ], [ %.0228.i.i.i, %stbi__getn.exit.i.i.i ], [ %.0228.i.i.i, %.thread.i.i.i.i ], [ %.0228.i.i.i, %.thread.i405.i.i.i ], [ %.0228.i.i.i, %.preheader463.i.i.i ], [ %.0228.i.i.i, %.preheader465.i.i.i ], [ %.0228.i.i.i, %.preheader.i.i.i ], [ %.0228.i.i.i, %bb.cz ], [ %.0228.i.i.i, %bb.db ], [ %.0228.i.i.i, %bb.de ], [ %i.ro, %bb.eq ], [ %i.ro, %bb.eo ], [ %.0228.i.i.i, %bb.ne ], [ %.0228.i.i.i, %bb.ng ], [ %.0228.i.i.i, %bb.nj ], [ %.0228.i.i.i, %.preheader467.i.i.i ], [ %.0228.i.i.i, %.lr.ph782.i.i.i ], [ %.0228.i.i.i, %stbi__get8.exit357.i.i.i ], [ %.0228.i.i.i, %.lr.ph784.i.i.i ], [ %.0228.i.i.i, %stbi__get8.exit363.i.i.i ]
  %.1226.i.i.i = phi i32 [ %.0225.i.i.i, %stbi__getn.exit.thread429.i.i.i ], [ %.0225.i.i.i, %stbi__getn.exit.i.i.i ], [ 1, %.thread.i.i.i.i ], [ %.0225.i.i.i, %.thread.i405.i.i.i ], [ %.0225.i.i.i, %.preheader463.i.i.i ], [ %.0225.i.i.i, %.preheader465.i.i.i ], [ %.0225.i.i.i, %.preheader.i.i.i ], [ 1, %bb.cz ], [ 1, %bb.db ], [ 1, %bb.de ], [ %.0225.i.i.i, %bb.eq ], [ %.0225.i.i.i, %bb.eo ], [ %.0225.i.i.i, %bb.ne ], [ %.0225.i.i.i, %bb.ng ], [ %.0225.i.i.i, %bb.nj ], [ %.0225.i.i.i, %.preheader467.i.i.i ], [ %.0225.i.i.i, %.lr.ph782.i.i.i ], [ %.0225.i.i.i, %stbi__get8.exit357.i.i.i ], [ %.0225.i.i.i, %.lr.ph784.i.i.i ], [ %.0225.i.i.i, %stbi__get8.exit363.i.i.i ]
  %i.bkn = tail call fastcc i32 @stbi__get16be(ptr noundef nonnull %0) ; 0 uses
  %i.bko = tail call fastcc i32 @stbi__get16be(ptr noundef nonnull %0) ; 0 uses
  br label %stbi__check_png_header.exit.i.i.i

stbi__parse_png_file.exit.thread.i.loopexit.i:    ; preds = %bb.gm
  store ptr %i.nu, ptr %i.gu, align 8
  br label %stbi__parse_png_file.exit.thread.i.i

stbi__parse_png_file.exit.thread.i.i:             ; preds = %stbi__parse_png_file.exit.thread.i.loopexit.i, %bb.nd, %bb.nb, %stbi__expand_png_palette.exit.thread.i.i.i, %stbi__create_png_image.exit.i.i.i, %.thread.i382.i.i.i, %stbi__malloc_mad3.exit.thread.i.i.i.i, %stbi_zlib_decode_malloc_guesssize_headerflag.exit.i.i.i, %stbi_zlib_decode_malloc_guesssize_headerflag.exit.thread.i.i.i, %bb.gv, %bb.gt, %stbi__getn.exit.thread.i.i.i, %.thread425.i.i.i, %bb.gl, %bb.gj, %bb.gh, %bb.ge, %bb.gc, %bb.fv, %bb.ft, %bb.fq, %bb.fo, %bb.ex, %bb.ev, %bb.et, %bb.er, %bb.ep, %bb.em, %bb.ej, %bb.eh, %bb.ef, %bb.ee, %bb.ed, %bb.ea, %bb.dt, %bb.dm, %bb.dk, %bb.di, %bb.dg, %stbi__check_png_header.exit.thread.i.i.i, %bb.bc, %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %10, i64 24
  %.pre = load ptr, ptr %.phi.trans.insert, align 8
  %.phi.trans.insert798 = getelementptr inbounds nuw i8, ptr %10, i64 16
  %.pre799 = load ptr, ptr %.phi.trans.insert798, align 8
  br label %bb.nw

bb.nk:                                            ; preds = %bb.mz, %bb.my, %.thread441.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  %i.bkp = load i32, ptr %i.mu, align 8           ; 2 uses
  %i.bkq = icmp slt i32 %i.bkp, 9                 ; 2 uses
  br i1 %i.bkq, label %bb.nn, label %bb.nl

bb.nl:                                            ; preds = %bb.nk
  %i.bkr = icmp eq i32 %i.bkp, 16
  br i1 %i.bkr, label %bb.nn, label %bb.nm

end_hunk_4
begin_hunk_5_@stbi__convert_format16:bb.a
  %i.cy = getelementptr inbounds nuw i8, ptr %.7149218, i64 2
  %i.cz = load i16, ptr %i.cy, align 2
  %i.da = zext i16 %i.cz to i32
  %i.db = getelementptr inbounds nuw i8, ptr %.7149218, i64 4
  %i.dc = load i16, ptr %i.db, align 2
  %i.dd = zext i16 %i.dc to i32
  %i.de = mul nuw nsw i32 %i.cx, 77
  %i.df = mul nuw nsw i32 %i.da, 150
  %i.dg = add nuw nsw i32 %i.df, %i.de
  %i.dh = mul nuw nsw i32 %i.dd, 29
  %i.di = add nuw nsw i32 %i.dg, %i.dh
  %i.dj = lshr i32 %i.di, 8
  %i.dk = trunc nuw i32 %i.dj to i16
  store i16 %i.dk, ptr %.7219, align 2
  %i.dl = getelementptr inbounds nuw i8, ptr %.7149218, i64 6
  %i.dm = getelementptr inbounds nuw i8, ptr %.7219, i64 2
  %.7163 = add i32 %.7163220, -1                  ; 2 uses
  %i.dn = icmp sgt i32 %.7163, -1
  br i1 %i.dn, label %.lr.ph221, label %.loopexit, !llvm.loop !215

.lr.ph216:                                        ; preds = %.preheader189, %.lr.ph216
  %.8164215 = phi i32 [ %.8164, %.lr.ph216 ], [ %.11167198, %.preheader189 ]
  %.8214 = phi ptr [ %i.ef, %.lr.ph216 ], [ %i.at, %.preheader189 ] ; 3 uses
  %.8150213 = phi ptr [ %i.ee, %.lr.ph216 ], [ %i.aq, %.preheader189 ] ; 4 uses
  %i.do = load i16, ptr %.8150213, align 2
  %i.dp = zext i16 %i.do to i32
  %i.dq = getelementptr inbounds nuw i8, ptr %.8150213, i64 2
  %i.dr = load i16, ptr %i.dq, align 2
  %i.ds = zext i16 %i.dr to i32
  %i.dt = getelementptr inbounds nuw i8, ptr %.8150213, i64 4
  %i.du = load i16, ptr %i.dt, align 2
  %i.dv = zext i16 %i.du to i32
  %i.dw = mul nuw nsw i32 %i.dp, 77
  %i.dx = mul nuw nsw i32 %i.ds, 150
  %i.dy = add nuw nsw i32 %i.dx, %i.dw
  %i.dz = mul nuw nsw i32 %i.dv, 29
  %i.ea = add nuw nsw i32 %i.dy, %i.dz
  %i.eb = lshr i32 %i.ea, 8
  %i.ec = trunc nuw i32 %i.eb to i16
  store i16 %i.ec, ptr %.8214, align 2
  %i.ed = getelementptr inbounds nuw i8, ptr %.8214, i64 2
  store i16 -1, ptr %i.ed, align 2
  %i.ee = getelementptr inbounds nuw i8, ptr %.8150213, i64 6
  %i.ef = getelementptr inbounds nuw i8, ptr %.8214, i64 4
  %.8164 = add i32 %.8164215, -1                  ; 2 uses
  %i.eg = icmp sgt i32 %.8164, -1
  br i1 %i.eg, label %.lr.ph216, label %.loopexit, !llvm.loop !216

.lr.ph211:                                        ; preds = %.preheader191, %.lr.ph211
  %.9165210 = phi i32 [ %.9165, %.lr.ph211 ], [ %.11167198, %.preheader191 ]
  %.9209 = phi ptr [ %i.ex, %.lr.ph211 ], [ %i.at, %.preheader191 ] ; 2 uses
  %.9151208 = phi ptr [ %i.ew, %.lr.ph211 ], [ %i.aq, %.preheader191 ] ; 4 uses
  %i.eh = load i16, ptr %.9151208, align 2
  %i.ei = zext i16 %i.eh to i32
  %i.ej = getelementptr inbounds nuw i8, ptr %.9151208, i64 2
  %i.ek = load i16, ptr %i.ej, align 2
  %i.el = zext i16 %i.ek to i32
  %i.em = getelementptr inbounds nuw i8, ptr %.9151208, i64 4
  %i.en = load i16, ptr %i.em, align 2
  %i.eo = zext i16 %i.en to i32
  %i.ep = mul nuw nsw i32 %i.ei, 77
  %i.eq = mul nuw nsw i32 %i.el, 150
  %i.er = add nuw nsw i32 %i.eq, %i.ep
  %i.es = mul nuw nsw i32 %i.eo, 29
  %i.et = add nuw nsw i32 %i.er, %i.es
  %i.eu = lshr i32 %i.et, 8
  %i.ev = trunc nuw i32 %i.eu to i16
  store i16 %i.ev, ptr %.9209, align 2
  %i.ew = getelementptr inbounds nuw i8, ptr %.9151208, i64 8
  %i.ex = getelementptr inbounds nuw i8, ptr %.9209, i64 2
  %.9165 = add i32 %.9165210, -1                  ; 2 uses
  %i.ey = icmp sgt i32 %.9165, -1
  br i1 %i.ey, label %.lr.ph211, label %.loopexit, !llvm.loop !217

.lr.ph206:                                        ; preds = %.preheader193, %.lr.ph206
  %.10166205 = phi i32 [ %.10166, %.lr.ph206 ], [ %.11167198, %.preheader193 ]
  %.10204 = phi ptr [ %i.fs, %.lr.ph206 ], [ %i.at, %.preheader193 ] ; 3 uses
  %.10152203 = phi ptr [ %i.fr, %.lr.ph206 ], [ %i.aq, %.preheader193 ] ; 5 uses
  %i.ez = load i16, ptr %.10152203, align 2
  %i.fa = zext i16 %i.ez to i32
  %i.fb = getelementptr inbounds nuw i8, ptr %.10152203, i64 2
  %i.fc = load i16, ptr %i.fb, align 2
  %i.fd = zext i16 %i.fc to i32
  %i.fe = getelementptr inbounds nuw i8, ptr %.10152203, i64 4
  %i.ff = load i16, ptr %i.fe, align 2
  %i.fg = zext i16 %i.ff to i32
  %i.fh = mul nuw nsw i32 %i.fa, 77
  %i.fi = mul nuw nsw i32 %i.fd, 150
  %i.fj = add nuw nsw i32 %i.fi, %i.fh
  %i.fk = mul nuw nsw i32 %i.fg, 29
  %i.fl = add nuw nsw i32 %i.fj, %i.fk
  %i.fm = lshr i32 %i.fl, 8
  %i.fn = trunc nuw i32 %i.fm to i16
  store i16 %i.fn, ptr %.10204, align 2
  %i.fo = getelementptr inbounds nuw i8, ptr %.10152203, i64 6
  %i.fp = load i16, ptr %i.fo, align 2
  %i.fq = getelementptr inbounds nuw i8, ptr %.10204, i64 2
  store i16 %i.fp, ptr %i.fq, align 2
  %i.fr = getelementptr inbounds nuw i8, ptr %.10152203, i64 8
  %i.fs = getelementptr inbounds nuw i8, ptr %.10204, i64 4
  %.10166 = add i32 %.10166205, -1                ; 2 uses
  %i.ft = icmp sgt i32 %.10166, -1
  br i1 %i.ft, label %.lr.ph206, label %.loopexit, !llvm.loop !218

.lr.ph:                                           ; preds = %.preheader195, %.lr.ph
  %.11167201 = phi i32 [ %.11167, %.lr.ph ], [ %.11167198, %.preheader195 ]
  %.11200 = phi ptr [ %i.fz, %.lr.ph ], [ %i.at, %.preheader195 ] ; 3 uses
  %.11153199 = phi ptr [ %i.fy, %.lr.ph ], [ %i.aq, %.preheader195 ] ; 3 uses
  %i.fu = load <2 x i16>, ptr %.11153199, align 2
  store <2 x i16> %i.fu, ptr %.11200, align 2
  %i.fv = getelementptr inbounds nuw i8, ptr %.11153199, i64 4
  %i.fw = load i16, ptr %i.fv, align 2
  %i.fx = getelementptr inbounds nuw i8, ptr %.11200, i64 4
  store i16 %i.fw, ptr %i.fx, align 2
  %i.fy = getelementptr inbounds nuw i8, ptr %.11153199, i64 8
  %i.fz = getelementptr inbounds nuw i8, ptr %.11200, i64 6
  %.11167 = add i32 %.11167201, -1                ; 2 uses
  %i.ga = icmp sgt i32 %.11167, -1
  br i1 %i.ga, label %.lr.ph, label %.loopexit, !llvm.loop !219

.critedge:                                        ; preds = %.lr.ph258
  tail call void @SDL_free_REAL(ptr noundef %0) #13
  tail call void @SDL_free_REAL(ptr noundef nonnull %i.l) #13
  %i.gb = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.32) #13 ; 0 uses
  br label %bb.f

.loopexit:                                        ; preds = %.lr.ph206, %.lr.ph211, %.lr.ph216, %.lr.ph221, %.lr.ph226, %.lr.ph231, %.lr.ph236, %.lr.ph241, %.lr.ph246, %.lr.ph251, %.lr.ph256, %.lr.ph, %middle.block, %.preheader195, %.preheader193, %.preheader191, %.preheader189, %.preheader187, %.preheader185, %.preheader183, %.preheader181, %.preheader179, %.preheader177, %.preheader175, %.preheader
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.e, !llvm.loop !220

._crit_edge:                                      ; preds = %.loopexit, %.preheader197
  tail call void @SDL_free_REAL(ptr noundef %0) #13
  br label %bb.f

bb.f:                                             ; preds = %.critedge, %bb.a, %._crit_edge, %stbi__malloc_mad4.exit.thread
  %.2170 = phi ptr [ %i.l, %._crit_edge ], [ null, %stbi__malloc_mad4.exit.thread ], [ null, %.critedge ], [ %0, %bb.a ]
  ret ptr %.2170
}

; Function Attrs: allocsize(1)
declare ptr @SDL_realloc_REAL(ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @stbi__zbuild_huffman(ptr nofree noundef nonnull captures(none) initializes((0, 1024)) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i32], align 16              ; 4 uses
  %i.b = alloca [17 x i32], align 16              ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(68) %i.b, i8 0, i64 68, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) %0, i8 0, i64 1024, i1 false)
  %i.c = icmp sgt i32 %2, 0                       ; 2 uses
  br i1 %i.c, label %.lr.ph.preheader, label %._crit_edge.thread

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %2 to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.d = icmp ult i32 %2, 4
  br i1 %i.d, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.3, %.lr.ph ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.f = load i8, ptr %i.e, align 1
  %i.g = zext i8 %i.f to i64
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.g ; 2 uses
  %i.i = load i32, ptr %i.h, align 4
  %i.j = add nsw i32 %i.i, 1
  store i32 %i.j, ptr %i.h, align 4
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  %i.m = load i8, ptr %i.l, align 1
  %i.n = zext i8 %i.m to i64
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.n ; 2 uses
  %i.p = load i32, ptr %i.o, align 4
  %i.q = add nsw i32 %i.p, 1
  store i32 %i.q, ptr %i.o, align 4
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 2
  %i.t = load i8, ptr %i.s, align 1
  %i.u = zext i8 %i.t to i64
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.u ; 2 uses
  %i.w = load i32, ptr %i.v, align 4
  %i.x = add nsw i32 %i.w, 1
  store i32 %i.x, ptr %i.v, align 4
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 3
  %i.aa = load i8, ptr %i.z, align 1
  %i.ab = zext i8 %i.aa to i64
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ab ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4
  %i.ae = add nsw i32 %i.ad, 1
  store i32 %i.ae, ptr %i.ac, align 4
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.unr-lcssa, label %.lr.ph, !llvm.loop !221

._crit_edge.unr-lcssa:                            ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.3, %._crit_edge.unr-lcssa ]
  %lcmp.mod161 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod161)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.lr.ph.epil.preheader ], [ %indvars.iv.next.epil, %.lr.ph.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.epil.preheader ], [ %epil.iter.next, %.lr.ph.epil ]
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.epil
  %i.ag = load i8, ptr %i.af, align 1
  %i.ah = zext i8 %i.ag to i64
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ah ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 4
  %i.ak = add nsw i32 %i.aj, 1
  store i32 %i.ak, ptr %i.ai, align 4
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !222

._crit_edge:                                      ; preds = %.lr.ph.epil, %._crit_edge.unr-lcssa
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %.pre = load i32, ptr %.phi.trans.insert, align 4
  %i.al = icmp sgt i32 %.pre, 2
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.an = load i32, ptr %i.am, align 8
  %i.ao = icmp sgt i32 %i.an, 4
  %or.cond103 = select i1 %i.al, i1 true, i1 %i.ao
  br i1 %or.cond103, label %.loopexit70.sink.split, label %bb.b

._crit_edge.thread:                               ; preds = %bb.a
  %.old = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.old101 = load i32, ptr %.old, align 8
  %.old102 = icmp sgt i32 %.old101, 4
  br i1 %.old102, label %.loopexit70.sink.split, label %bb.b

bb.b:                                             ; preds = %._crit_edge, %._crit_edge.thread
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.aq = load <8 x i32>, ptr %i.ap, align 4
  %.fr = freeze <8 x i32> %i.aq
  %i.ar = icmp sgt <8 x i32> %.fr, <i32 8, i32 16, i32 32, i32 64, i32 128, i32 256, i32 512, i32 1024> ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  %i.at = load <4 x i32>, ptr %i.as, align 4
  %.fr160 = freeze <4 x i32> %i.at
  %i.au = icmp sgt <4 x i32> %.fr160, <i32 2048, i32 4096, i32 8192, i32 16384>
  %i.av = getelementptr inbounds nuw i8, ptr %i.b, i64 60
  %i.aw = load i32, ptr %i.av, align 4
  %i.ax = icmp sgt i32 %i.aw, 32768
  %i.ay = shufflevector <8 x i1> %i.ar, <8 x i1> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %rdx.op = or <4 x i1> %i.ay, %i.au
  %i.az = shufflevector <4 x i1> %rdx.op, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ba = shufflevector <8 x i1> %i.az, <8 x i1> %i.ar, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15>
  %i.bb = bitcast <8 x i1> %i.ba to i8
  %i.bc = icmp ne i8 %i.bb, 0
  %op.rdx = select i1 %i.bc, i1 true, i1 %i.ax
  br i1 %op.rdx, label %.loopexit70.sink.split, label %.preheader

.preheader:                                       ; preds = %bb.b
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 1024 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 1124 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 1056
  br label %bb.c

bb.c:                                             ; preds = %.preheader, %bb.d
  %indvars.iv87 = phi i64 [ 1, %.preheader ], [ %indvars.iv.next88, %bb.d ] ; 8 uses
  %.06275 = phi i32 [ 0, %.preheader ], [ %i.bu, %bb.d ] ; 3 uses
  %.06374 = phi i32 [ 0, %.preheader ], [ %i.bv, %bb.d ] ; 2 uses
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv87
  store i32 %.06275, ptr %i.bg, align 4
  %i.bh = trunc i32 %.06275 to i16
  %i.bi = getelementptr inbounds nuw [2 x i8], ptr %i.bd, i64 %indvars.iv87
  store i16 %i.bh, ptr %i.bi, align 2
  %i.bj = trunc i32 %.06374 to i16
  %i.bk = getelementptr inbounds nuw [2 x i8], ptr %i.be, i64 %indvars.iv87
  store i16 %i.bj, ptr %i.bk, align 2
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv87
  %i.bm = load i32, ptr %i.bl, align 4            ; 3 uses
  %i.bn = add nsw i32 %i.bm, %.06275              ; 3 uses
  %.not68 = icmp ne i32 %i.bm, 0
  %i.bo = trunc nuw nsw i64 %indvars.iv87 to i32
  %i.bp = shl nuw nsw i32 1, %i.bo
  %.not69.not = icmp sgt i32 %i.bn, %i.bp
  %or.cond = select i1 %.not68, i1 %.not69.not, i1 false
  br i1 %or.cond, label %.loopexit70.sink.split, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bq = trunc i64 %indvars.iv87 to i32
  %i.br = sub i32 16, %i.bq
  %i.bs = shl i32 %i.bn, %i.br
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv87
  store i32 %i.bs, ptr %i.bt, align 4
  %i.bu = shl i32 %i.bn, 1
  %i.bv = add nsw i32 %i.bm, %.06374
  %indvars.iv.next88 = add nuw nsw i64 %indvars.iv87, 1 ; 2 uses
  %exitcond90.not = icmp eq i64 %indvars.iv.next88, 16
  br i1 %exitcond90.not, label %bb.e, label %bb.c, !llvm.loop !223

bb.e:                                             ; preds = %bb.d
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 1120
  store i32 65536, ptr %i.bw, align 4
  br i1 %i.c, label %.lr.ph81, label %.loopexit70

.lr.ph81:                                         ; preds = %bb.e
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 1156
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 1444
  %wide.trip.count97 = zext nneg i32 %2 to i64
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph81, %bb.i
  %indvars.iv94 = phi i64 [ 0, %.lr.ph81 ], [ %indvars.iv.next95, %bb.i ] ; 4 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv94
  %i.ca = load i8, ptr %i.bz, align 1             ; 5 uses
  %i.cb = zext i8 %i.ca to i32                    ; 3 uses
  %.not = icmp eq i8 %i.ca, 0
  br i1 %.not, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.cc = zext i8 %i.ca to i64                    ; 3 uses
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.cc ; 2 uses
  %i.ce = load i32, ptr %i.cd, align 4            ; 3 uses
  %i.cf = getelementptr inbounds nuw [2 x i8], ptr %i.bd, i64 %i.cc
  %i.cg = load i16, ptr %i.cf, align 2
  %i.ch = zext i16 %i.cg to i32
  %i.ci = sub i32 %i.ce, %i.ch
  %i.cj = getelementptr inbounds nuw [2 x i8], ptr %i.be, i64 %i.cc
  %i.ck = load i16, ptr %i.cj, align 2
  %i.cl = zext i16 %i.ck to i32
  %i.cm = add nsw i32 %i.ci, %i.cl
  %i.cn = shl nuw nsw i32 %i.cb, 9
  %i.co = trunc nuw nsw i64 %indvars.iv94 to i32
  %i.cp = or i32 %i.cn, %i.co
  %i.cq = trunc i32 %i.cp to i16
  %i.cr = sext i32 %i.cm to i64                   ; 2 uses
  %i.cs = getelementptr inbounds i8, ptr %i.bx, i64 %i.cr
  store i8 %i.ca, ptr %i.cs, align 1
  %i.ct = trunc i64 %indvars.iv94 to i16
  %i.cu = getelementptr inbounds [2 x i8], ptr %i.by, i64 %i.cr
  store i16 %i.ct, ptr %i.cu, align 2
  %i.cv = icmp ult i8 %i.ca, 10
  br i1 %i.cv, label %iter.check, label %.loopexit

iter.check:                                       ; preds = %bb.g
  %trunc.i.i = trunc i32 %i.ce to i16
  %rev.i.i = tail call i16 @llvm.bitreverse.i16(i16 %trunc.i.i)
  %i.cw = zext i16 %rev.i.i to i32
  %i.cx = sub nuw nsw i32 16, %i.cb
  %i.cy = lshr i32 %i.cw, %i.cx
  %i.cz = shl nuw nsw i32 1, %i.cb
  %i.da = zext nneg i32 %i.cy to i64
  %i.db = zext nneg i32 %i.cz to i64
  br label %bb.h

bb.h:                                             ; preds = %iter.check, %bb.h
  %indvars.iv91 = phi i64 [ %i.da, %iter.check ], [ %indvars.iv.next92, %bb.h ] ; 2 uses
  %i.dc = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv91
  store i16 %i.cq, ptr %i.dc, align 2
  %indvars.iv.next92 = add nuw nsw i64 %indvars.iv91, %i.db ; 2 uses
  %i.dd = icmp samesign ult i64 %indvars.iv.next92, 512
  br i1 %i.dd, label %bb.h, label %.loopexit, !llvm.loop !224

.loopexit:                                        ; preds = %bb.h, %bb.g
  %i.de = add nsw i32 %i.ce, 1
  store i32 %i.de, ptr %i.cd, align 4
  br label %bb.i

bb.i:                                             ; preds = %.loopexit, %bb.f
  %indvars.iv.next95 = add nuw nsw i64 %indvars.iv94, 1 ; 2 uses
  %exitcond98.not = icmp eq i64 %indvars.iv.next95, %wide.trip.count97
  br i1 %exitcond98.not, label %.loopexit70, label %bb.f, !llvm.loop !225

.loopexit70.sink.split:                           ; preds = %bb.c, %._crit_edge, %._crit_edge.thread, %bb.b
  %i.df = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.28) #13 ; 0 uses
  br label %.loopexit70

.loopexit70:                                      ; preds = %bb.i, %.loopexit70.sink.split, %bb.e
  %.065 = phi i32 [ 1, %bb.e ], [ 0, %.loopexit70.sink.split ], [ 1, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret i32 %.065
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i32 -1, 65536) i32 @stbi__zhuffman_decode(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef nonnull readonly captures(none) %1) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.b = load i32, ptr %i.a, align 8              ; 4 uses
  %i.c = icmp slt i32 %i.b, 16
  br i1 %i.c, label %bb.b, label %stbi__fill_bits.exit

bb.b:                                             ; preds = %bb.a
  %.val = load ptr, ptr %0, align 8               ; 2 uses
  %i.d = getelementptr i8, ptr %0, i64 8
end_hunk_5
begin_hunk_6_@stbi__create_png_image_raw:bb.a
  %i.pd = getelementptr inbounds nuw i8, ptr %i.ee, i64 %indvars.iv.next422.2
  store i8 %.narrow286.3, ptr %i.pd, align 1
  %indvars.iv.next422.3 = add nuw nsw i64 %indvars.iv421, 4 ; 2 uses
  %exitcond425.not.3 = icmp eq i64 %indvars.iv.next422.3, %wide.trip.count424
  br i1 %exitcond425.not.3, label %.preheader354, label %.lr.ph360, !llvm.loop !245

.lr.ph362:                                        ; preds = %.lr.ph362.preheader, %.lr.ph362
  %indvars.iv426 = phi i64 [ %indvars.iv.next427, %.lr.ph362 ], [ %indvars.iv426.ph, %.lr.ph362.preheader ] ; 5 uses
  %i.pe = getelementptr inbounds i8, ptr %i.eo, i64 %indvars.iv426
  %i.pf = load i8, ptr %i.pe, align 1
  %i.pg = sub nsw i64 %indvars.iv426, %i.ax       ; 2 uses
  %i.ph = getelementptr inbounds i8, ptr %i.ee, i64 %i.pg
  %i.pi = load i8, ptr %i.ph, align 1
  %i.pj = zext i8 %i.pi to i32                    ; 3 uses
  %i.pk = getelementptr inbounds i8, ptr %i.ej, i64 %indvars.iv426
  %i.pl = load i8, ptr %i.pk, align 1
  %i.pm = zext i8 %i.pl to i32                    ; 3 uses
  %i.pn = getelementptr inbounds i8, ptr %i.ej, i64 %i.pg
  %i.po = load i8, ptr %i.pn, align 1
  %i.pp = zext i8 %i.po to i32                    ; 2 uses
  %i.pq = mul nuw nsw i32 %i.pp, 3
  %i.pr = add nuw nsw i32 %i.pm, %i.pj
  %i.ps = sub nsw i32 %i.pq, %i.pr                ; 2 uses
  %i.pt = tail call i32 @llvm.umin.i32(i32 range(i32 0, 256) %i.pj, i32 range(i32 0, 256) %i.pm) ; 2 uses
  %i.pu = tail call i32 @llvm.umax.i32(i32 range(i32 0, 256) %i.pj, i32 range(i32 0, 256) %i.pm) ; 2 uses
  %.not.i303 = icmp sgt i32 %i.pu, %i.ps
  %i.pv = select i1 %.not.i303, i32 %i.pp, i32 %i.pt
  %.not20.i = icmp sgt i32 %i.ps, %i.pt
  %i.pw = select i1 %.not20.i, i32 %i.pv, i32 %i.pu
  %.tr = trunc nuw i32 %i.pw to i8
  %.narrow284 = add i8 %i.pf, %.tr
  %i.px = getelementptr inbounds i8, ptr %i.ee, i64 %indvars.iv426
  store i8 %.narrow284, ptr %i.px, align 1
  %indvars.iv.next427 = add nsw i64 %indvars.iv426, 1 ; 2 uses
  %exitcond430.not = icmp eq i64 %indvars.iv.next427, %i.bb
  br i1 %exitcond430.not, label %.loopexit348, label %.lr.ph362, !llvm.loop !246

bb.s:                                             ; preds = %bb.p
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ee, ptr nonnull align 1 %i.eo, i64 %i.ax, i1 false)
  br i1 %i.ay, label %iter.check719, label %.loopexit348

iter.check719:                                    ; preds = %bb.s
  br i1 %or.cond740, label %.lr.ph.preheader, label %vector.main.loop.iter.check704

vector.main.loop.iter.check704:                   ; preds = %iter.check719
  br i1 %min.iters.check705, label %vec.epilog.ph723, label %vector.body708

vector.body708:                                   ; preds = %vector.main.loop.iter.check704, %vector.body708
  %index709 = phi i64 [ %index.next714, %vector.body708 ], [ 0, %vector.main.loop.iter.check704 ] ; 3 uses
  %i.py = add i64 %index709, %i.ax                ; 2 uses
  %i.pz = getelementptr inbounds i8, ptr %i.eo, i64 %i.py ; 2 uses
  %i.qa = getelementptr inbounds nuw i8, ptr %i.pz, i64 16
  %wide.load710 = load <16 x i8>, ptr %i.pz, align 1
  %wide.load711 = load <16 x i8>, ptr %i.qa, align 1
  %i.qb = getelementptr inbounds i8, ptr %i.ee, i64 %index709 ; 2 uses
  %i.qc = getelementptr inbounds nuw i8, ptr %i.qb, i64 16
  %wide.load712 = load <16 x i8>, ptr %i.qb, align 1
  %wide.load713 = load <16 x i8>, ptr %i.qc, align 1
  %i.qd = lshr <16 x i8> %wide.load712, splat (i8 1)
  %i.qe = lshr <16 x i8> %wide.load713, splat (i8 1)
  %i.qf = add <16 x i8> %i.qd, %wide.load710
  %i.qg = add <16 x i8> %i.qe, %wide.load711
  %i.qh = getelementptr inbounds i8, ptr %i.ee, i64 %i.py ; 2 uses
  %i.qi = getelementptr inbounds nuw i8, ptr %i.qh, i64 16
  store <16 x i8> %i.qf, ptr %i.qh, align 1
  store <16 x i8> %i.qg, ptr %i.qi, align 1
  %index.next714 = add nuw i64 %index709, 32      ; 2 uses
  %i.qj = icmp eq i64 %index.next714, %n.vec707
  br i1 %i.qj, label %middle.block715, label %vector.body708, !llvm.loop !247

middle.block715:                                  ; preds = %vector.body708
  br i1 %cmp.n716, label %.loopexit348, label %vec.epilog.iter.check721

vec.epilog.iter.check721:                         ; preds = %middle.block715
  br i1 %min.epilog.iters.check722, label %.lr.ph.preheader, label %vec.epilog.ph723, !prof !235

vec.epilog.ph723:                                 ; preds = %vector.main.loop.iter.check704, %vec.epilog.iter.check721
  %vec.epilog.resume.val717 = phi i64 [ %n.vec707, %vec.epilog.iter.check721 ], [ 0, %vector.main.loop.iter.check704 ]
  br label %vec.epilog.vector.body725

vec.epilog.vector.body725:                        ; preds = %vec.epilog.vector.body725, %vec.epilog.ph723
  %index726 = phi i64 [ %vec.epilog.resume.val717, %vec.epilog.ph723 ], [ %index.next729, %vec.epilog.vector.body725 ] ; 3 uses
  %i.qk = add i64 %index726, %i.ax                ; 2 uses
  %i.ql = getelementptr inbounds i8, ptr %i.eo, i64 %i.qk
  %wide.load727 = load <8 x i8>, ptr %i.ql, align 1
  %i.qm = getelementptr inbounds i8, ptr %i.ee, i64 %index726
  %wide.load728 = load <8 x i8>, ptr %i.qm, align 1
  %i.qn = lshr <8 x i8> %wide.load728, splat (i8 1)
  %i.qo = add <8 x i8> %i.qn, %wide.load727
  %i.qp = getelementptr inbounds i8, ptr %i.ee, i64 %i.qk
  store <8 x i8> %i.qo, ptr %i.qp, align 1
  %index.next729 = add nuw i64 %index726, 8       ; 2 uses
  %i.qq = icmp eq i64 %index.next729, %n.vec724
  br i1 %i.qq, label %vec.epilog.middle.block730, label %vec.epilog.vector.body725, !llvm.loop !248

vec.epilog.middle.block730:                       ; preds = %vec.epilog.vector.body725
  br i1 %cmp.n731, label %.loopexit348, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check719, %vec.epilog.iter.check721, %vec.epilog.middle.block730
  %indvars.iv.ph = phi i64 [ %i.ax, %iter.check719 ], [ %i.bs, %vec.epilog.iter.check721 ], [ %i.bt, %vec.epilog.middle.block730 ] ; 7 uses
  %i.qr = sub nsw i64 %i.bb, %indvars.iv.ph
  %xtraiter = and i64 %i.qr, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.qs = getelementptr inbounds i8, ptr %i.eo, i64 %indvars.iv.ph
  %i.qt = load i8, ptr %i.qs, align 1
  %i.qu = sub nsw i64 %indvars.iv.ph, %i.ax
  %i.qv = getelementptr inbounds i8, ptr %i.ee, i64 %i.qu
  %i.qw = load i8, ptr %i.qv, align 1
  %i.qx = lshr i8 %i.qw, 1
  %.narrow.prol = add i8 %i.qx, %i.qt
  %i.qy = getelementptr inbounds i8, ptr %i.ee, i64 %indvars.iv.ph
  store i8 %.narrow.prol, ptr %i.qy, align 1
  %indvars.iv.next.prol = add nsw i64 %indvars.iv.ph, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.qz = icmp eq i64 %indvars.iv.ph, %i.bu
  br i1 %i.qz, label %.loopexit348, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %i.ra = getelementptr inbounds i8, ptr %i.eo, i64 %indvars.iv
  %i.rb = load i8, ptr %i.ra, align 1
  %i.rc = sub nsw i64 %indvars.iv, %i.ax
  %i.rd = getelementptr inbounds i8, ptr %i.ee, i64 %i.rc
  %i.re = load i8, ptr %i.rd, align 1
  %i.rf = lshr i8 %i.re, 1
  %.narrow = add i8 %i.rf, %i.rb
  %i.rg = getelementptr inbounds i8, ptr %i.ee, i64 %indvars.iv
  store i8 %.narrow, ptr %i.rg, align 1
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 3 uses
  %i.rh = getelementptr inbounds i8, ptr %i.eo, i64 %indvars.iv.next
  %i.ri = load i8, ptr %i.rh, align 1
  %i.rj = sub nsw i64 %indvars.iv.next, %i.ax
  %i.rk = getelementptr inbounds i8, ptr %i.ee, i64 %i.rj
  %i.rl = load i8, ptr %i.rk, align 1
  %i.rm = lshr i8 %i.rl, 1
  %.narrow.1 = add i8 %i.rm, %i.ri
  %i.rn = getelementptr inbounds i8, ptr %i.ee, i64 %indvars.iv.next
  store i8 %.narrow.1, ptr %i.rn, align 1
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %i.bb
  br i1 %exitcond.not.1, label %.loopexit348, label %.lr.ph, !llvm.loop !249

.loopexit348:                                     ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %.lr.ph362, %.lr.ph366.prol.loopexit, %.lr.ph366, %.lr.ph368.prol.loopexit, %.lr.ph368, %.lr.ph370.prol.loopexit, %.lr.ph370, %middle.block715, %vec.epilog.middle.block730, %middle.block648, %vec.epilog.middle.block665, %middle.block578, %vec.epilog.middle.block594, %middle.block546, %vec.epilog.middle.block560, %middle.block521, %vec.epilog.middle.block, %bb.s, %.preheader354, %.preheader351, %.preheader349, %bb.r, %bb.q, %bb.p
  %i.ro = getelementptr inbounds i8, ptr %i.eo, i64 %i.bb
  br i1 %i.au, label %bb.t, label %bb.ac

bb.t:                                             ; preds = %.loopexit348
  br i1 %i.bi, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.rp = load i8, ptr %i.bk, align 1
  br label %bb.v

bb.v:                                             ; preds = %bb.t, %bb.u
  %i.rq = phi i8 [ %i.rp, %bb.u ], [ 1, %bb.t ]   ; 9 uses
  switch i32 %6, label %.preheader [
    i32 4, label %.preheader336
    i32 2, label %.preheader338
  ]

.preheader338:                                    ; preds = %bb.v
  br i1 %.not404, label %.loopexit335, label %.lr.ph387.preheader

.lr.ph387.preheader:                              ; preds = %.preheader338
  br i1 %i.cv, label %.lr.ph387.epil.preheader, label %.lr.ph387

.preheader336:                                    ; preds = %bb.v
  br i1 %.not404, label %.loopexit335, label %.lr.ph392.preheader

.lr.ph392.preheader:                              ; preds = %.preheader336
  br i1 %i.cw, label %.lr.ph392.epil.preheader, label %.lr.ph392

.preheader:                                       ; preds = %bb.v
  br i1 %.not404, label %.loopexit335, label %.lr.ph397.preheader

.lr.ph397.preheader:                              ; preds = %.preheader
  br i1 %i.cx, label %.lr.ph397.epil.preheader, label %.lr.ph397

.lr.ph392:                                        ; preds = %.lr.ph392.preheader, %.lr.ph392
  %.0239390 = phi ptr [ %i.ry, %.lr.ph392 ], [ %i.en, %.lr.ph392.preheader ] ; 3 uses
  %.0242389 = phi ptr [ %i.rr, %.lr.ph392 ], [ %i.ee, %.lr.ph392.preheader ] ; 2 uses
  %.0265388 = phi i32 [ %i.rz, %.lr.ph392 ], [ 0, %.lr.ph392.preheader ]
  %niter793 = phi i32 [ %niter793.next.1, %.lr.ph392 ], [ 0, %.lr.ph392.preheader ]
  %i.rr = getelementptr inbounds nuw i8, ptr %.0242389, i64 1 ; 2 uses
  %i.rs = load i8, ptr %.0242389, align 1         ; 2 uses
  %i.rt = lshr i8 %i.rs, 4
  %i.ru = mul i8 %i.rt, %i.rq
  %i.rv = getelementptr inbounds nuw i8, ptr %.0239390, i64 1
  store i8 %i.ru, ptr %.0239390, align 1
  %i.rw = and i8 %i.rs, 15
  %i.rx = mul i8 %i.rw, %i.rq
  %i.ry = getelementptr inbounds nuw i8, ptr %.0239390, i64 2 ; 2 uses
  store i8 %i.rx, ptr %i.rv, align 1
  %i.rz = add nuw i32 %.0265388, 2                ; 2 uses
  %niter793.next.1 = add i32 %niter793, 2         ; 2 uses
  %niter793.ncmp.1 = icmp eq i32 %niter793.next.1, %unroll_iter792
  br i1 %niter793.ncmp.1, label %.loopexit335.loopexit742.unr-lcssa, label %.lr.ph392, !llvm.loop !250

.lr.ph387:                                        ; preds = %.lr.ph387.preheader, %.lr.ph387.1
  %.2238386 = phi i8 [ %i.sl, %.lr.ph387.1 ], [ 0, %.lr.ph387.preheader ]
  %.1240385 = phi ptr [ %i.sk, %.lr.ph387.1 ], [ %i.en, %.lr.ph387.preheader ] ; 3 uses
  %.2244384 = phi ptr [ %.3245, %.lr.ph387.1 ], [ %i.ee, %.lr.ph387.preheader ] ; 3 uses
  %.1266383 = phi i32 [ %i.sm, %.lr.ph387.1 ], [ 0, %.lr.ph387.preheader ] ; 2 uses
  %niter787 = phi i32 [ %niter787.next.1, %.lr.ph387.1 ], [ 0, %.lr.ph387.preheader ]
  %i.sa = and i32 %.1266383, 2
  %i.sb = icmp eq i32 %i.sa, 0
  br i1 %i.sb, label %bb.w, label %.lr.ph387.1

bb.w:                                             ; preds = %.lr.ph387
  %i.sc = getelementptr inbounds nuw i8, ptr %.2244384, i64 1
  %i.sd = load i8, ptr %.2244384, align 1
  br label %.lr.ph387.1

.lr.ph387.1:                                      ; preds = %bb.w, %.lr.ph387
  %.3245 = phi ptr [ %i.sc, %bb.w ], [ %.2244384, %.lr.ph387 ] ; 2 uses
  %.3 = phi i8 [ %i.sd, %bb.w ], [ %.2238386, %.lr.ph387 ] ; 3 uses
  %i.se = lshr i8 %.3, 6
  %i.sf = mul i8 %i.se, %i.rq
  %i.sg = getelementptr inbounds nuw i8, ptr %.1240385, i64 1
  store i8 %i.sf, ptr %.1240385, align 1
  %i.sh = lshr i8 %.3, 4
  %i.si = and i8 %i.sh, 3
  %i.sj = mul i8 %i.si, %i.rq
  %i.sk = getelementptr inbounds nuw i8, ptr %.1240385, i64 2 ; 2 uses
  store i8 %i.sj, ptr %i.sg, align 1
  %i.sl = shl i8 %.3, 4                           ; 2 uses
  %i.sm = add nuw i32 %.1266383, 2                ; 2 uses
  %niter787.next.1 = add i32 %niter787, 2         ; 2 uses
  %niter787.ncmp.1 = icmp eq i32 %niter787.next.1, %unroll_iter786
  br i1 %niter787.ncmp.1, label %.loopexit335.loopexit743.unr-lcssa, label %.lr.ph387, !llvm.loop !251

.lr.ph397:                                        ; preds = %.lr.ph397.preheader, %.lr.ph397.1
  %.4396 = phi i8 [ %i.sv, %.lr.ph397.1 ], [ 0, %.lr.ph397.preheader ]
  %.2241395 = phi ptr [ %i.su, %.lr.ph397.1 ], [ %i.en, %.lr.ph397.preheader ] ; 3 uses
  %.4246394 = phi ptr [ %.5247, %.lr.ph397.1 ], [ %i.ee, %.lr.ph397.preheader ] ; 3 uses
  %.2267393 = phi i32 [ %i.sw, %.lr.ph397.1 ], [ 0, %.lr.ph397.preheader ] ; 2 uses
  %niter799 = phi i32 [ %niter799.next.1, %.lr.ph397.1 ], [ 0, %.lr.ph397.preheader ]
  %i.sn = and i32 %.2267393, 6
  %i.so = icmp eq i32 %i.sn, 0
  br i1 %i.so, label %bb.x, label %.lr.ph397.1

bb.x:                                             ; preds = %.lr.ph397
  %i.sp = getelementptr inbounds nuw i8, ptr %.4246394, i64 1
  %i.sq = load i8, ptr %.4246394, align 1
  br label %.lr.ph397.1

.lr.ph397.1:                                      ; preds = %bb.x, %.lr.ph397
  %.5247 = phi ptr [ %i.sp, %bb.x ], [ %.4246394, %.lr.ph397 ] ; 2 uses
  %.5 = phi i8 [ %i.sq, %bb.x ], [ %.4396, %.lr.ph397 ] ; 3 uses
  %isneg = icmp slt i8 %.5, 0
  %i.sr = select i1 %isneg, i8 %i.rq, i8 0
  %i.ss = getelementptr inbounds nuw i8, ptr %.2241395, i64 1
  store i8 %i.sr, ptr %.2241395, align 1
  %.mask = and i8 %.5, 64
  %isneg.1.not = icmp eq i8 %.mask, 0
  %i.st = select i1 %isneg.1.not, i8 0, i8 %i.rq
  %i.su = getelementptr inbounds nuw i8, ptr %.2241395, i64 2 ; 2 uses
  store i8 %i.st, ptr %i.ss, align 1
  %i.sv = shl i8 %.5, 2                           ; 2 uses
  %i.sw = add nuw i32 %.2267393, 2                ; 2 uses
  %niter799.next.1 = add i32 %niter799, 2         ; 2 uses
  %niter799.ncmp.1 = icmp eq i32 %niter799.next.1, %unroll_iter798
  br i1 %niter799.ncmp.1, label %.loopexit335.loopexit.unr-lcssa, label %.lr.ph397, !llvm.loop !252

.loopexit335.loopexit.unr-lcssa:                  ; preds = %.lr.ph397.1
  br i1 %lcmp.mod796.not, label %.loopexit335, label %.lr.ph397.epil.preheader

.lr.ph397.epil.preheader:                         ; preds = %.loopexit335.loopexit.unr-lcssa, %.lr.ph397.preheader
  %.4396.epil.init = phi i8 [ 0, %.lr.ph397.preheader ], [ %i.sv, %.loopexit335.loopexit.unr-lcssa ]
  %.2241395.epil.init = phi ptr [ %i.en, %.lr.ph397.preheader ], [ %i.su, %.loopexit335.loopexit.unr-lcssa ]
  %.4246394.epil.init = phi ptr [ %i.ee, %.lr.ph397.preheader ], [ %.5247, %.loopexit335.loopexit.unr-lcssa ]
  %.2267393.epil.init = phi i32 [ 0, %.lr.ph397.preheader ], [ %i.sw, %.loopexit335.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod797)
  %i.sx = and i32 %.2267393.epil.init, 7
  %i.sy = icmp eq i32 %i.sx, 0
  br i1 %i.sy, label %bb.y, label %.loopexit335.loopexit.epilog-lcssa

bb.y:                                             ; preds = %.lr.ph397.epil.preheader
  %i.sz = load i8, ptr %.4246394.epil.init, align 1
  br label %.loopexit335.loopexit.epilog-lcssa

.loopexit335.loopexit.epilog-lcssa:               ; preds = %bb.y, %.lr.ph397.epil.preheader
  %.5.epil = phi i8 [ %i.sz, %bb.y ], [ %.4396.epil.init, %.lr.ph397.epil.preheader ]
  %isneg.epil = icmp slt i8 %.5.epil, 0
  %i.ta = select i1 %isneg.epil, i8 %i.rq, i8 0
  store i8 %i.ta, ptr %.2241395.epil.init, align 1
  br label %.loopexit335

.loopexit335.loopexit742.unr-lcssa:               ; preds = %.lr.ph392
  br i1 %lcmp.mod790.not, label %.loopexit335, label %.lr.ph392.epil.preheader

.lr.ph392.epil.preheader:                         ; preds = %.loopexit335.loopexit742.unr-lcssa, %.lr.ph392.preheader
  %.0239390.epil.init = phi ptr [ %i.en, %.lr.ph392.preheader ], [ %i.ry, %.loopexit335.loopexit742.unr-lcssa ]
  %.0242389.epil.init = phi ptr [ %i.ee, %.lr.ph392.preheader ], [ %i.rr, %.loopexit335.loopexit742.unr-lcssa ]
  %.0265388.epil.init = phi i32 [ 0, %.lr.ph392.preheader ], [ %i.rz, %.loopexit335.loopexit742.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod791)
  %i.tb = and i32 %.0265388.epil.init, 1
  %i.tc = icmp eq i32 %i.tb, 0
  br i1 %i.tc, label %bb.z, label %.loopexit335.loopexit742.epilog-lcssa

bb.z:                                             ; preds = %.lr.ph392.epil.preheader
  %i.td = load i8, ptr %.0242389.epil.init, align 1
  %i.te = lshr i8 %i.td, 4
  %i.tf = mul i8 %i.te, %i.rq
  br label %.loopexit335.loopexit742.epilog-lcssa

.loopexit335.loopexit742.epilog-lcssa:            ; preds = %bb.z, %.lr.ph392.epil.preheader
  %.1237.epil = phi i8 [ %i.tf, %bb.z ], [ 0, %.lr.ph392.epil.preheader ]
  store i8 %.1237.epil, ptr %.0239390.epil.init, align 1
  br label %.loopexit335

.loopexit335.loopexit743.unr-lcssa:               ; preds = %.lr.ph387.1
  br i1 %lcmp.mod784.not, label %.loopexit335, label %.lr.ph387.epil.preheader

.lr.ph387.epil.preheader:                         ; preds = %.loopexit335.loopexit743.unr-lcssa, %.lr.ph387.preheader
  %.2238386.epil.init = phi i8 [ 0, %.lr.ph387.preheader ], [ %i.sl, %.loopexit335.loopexit743.unr-lcssa ]
  %.1240385.epil.init = phi ptr [ %i.en, %.lr.ph387.preheader ], [ %i.sk, %.loopexit335.loopexit743.unr-lcssa ]
  %.2244384.epil.init = phi ptr [ %i.ee, %.lr.ph387.preheader ], [ %.3245, %.loopexit335.loopexit743.unr-lcssa ]
  %.1266383.epil.init = phi i32 [ 0, %.lr.ph387.preheader ], [ %i.sm, %.loopexit335.loopexit743.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod785)
  %i.tg = and i32 %.1266383.epil.init, 3
  %i.th = icmp eq i32 %i.tg, 0
  br i1 %i.th, label %bb.aa, label %.loopexit335.loopexit743.epilog-lcssa

bb.aa:                                            ; preds = %.lr.ph387.epil.preheader
  %i.ti = load i8, ptr %.2244384.epil.init, align 1
  br label %.loopexit335.loopexit743.epilog-lcssa

.loopexit335.loopexit743.epilog-lcssa:            ; preds = %bb.aa, %.lr.ph387.epil.preheader
  %.3.epil = phi i8 [ %i.ti, %bb.aa ], [ %.2238386.epil.init, %.lr.ph387.epil.preheader ]
  %i.tj = lshr i8 %.3.epil, 6
  %i.tk = mul i8 %i.tj, %i.rq
  store i8 %i.tk, ptr %.1240385.epil.init, align 1
  br label %.loopexit335

.loopexit335:                                     ; preds = %.loopexit335.loopexit743.epilog-lcssa, %.loopexit335.loopexit743.unr-lcssa, %.loopexit335.loopexit742.epilog-lcssa, %.loopexit335.loopexit742.unr-lcssa, %.loopexit335.loopexit.epilog-lcssa, %.loopexit335.loopexit.unr-lcssa, %.preheader338, %.preheader336, %.preheader
  br i1 %i.bd, label %.loopexit, label %bb.ab

bb.ab:                                            ; preds = %.loopexit335
  br i1 %i.be, label %.preheader.i, label %.preheader26.i

.preheader26.i:                                   ; preds = %bb.ab
  br i1 %i.bf, label %.lr.ph.i.preheader, label %.loopexit

.lr.ph.i.preheader:                               ; preds = %.preheader26.i
  br i1 %lcmp.mod801.not.not, label %.lr.ph.i.prol, label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader
  %i.tl = getelementptr inbounds nuw i8, ptr %i.en, i64 %i.cz ; 4 uses
  %i.tm = getelementptr inbounds nuw i8, ptr %i.tl, i64 3
  store i8 -1, ptr %i.tm, align 1
  %i.tn = getelementptr inbounds nuw i8, ptr %i.en, i64 %i.da ; 3 uses
  %i.to = getelementptr inbounds nuw i8, ptr %i.tn, i64 2
  %i.tp = load i8, ptr %i.to, align 1
  %i.tq = getelementptr inbounds nuw i8, ptr %i.tl, i64 2
  store i8 %i.tp, ptr %i.tq, align 1
  %i.tr = getelementptr inbounds nuw i8, ptr %i.tn, i64 1
  %i.ts = load i8, ptr %i.tr, align 1
  %i.tt = getelementptr inbounds nuw i8, ptr %i.tl, i64 1
  store i8 %i.ts, ptr %i.tt, align 1
  %i.tu = load i8, ptr %i.tn, align 1
  store i8 %i.tu, ptr %i.tl, align 1
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %indvars.iv.i.unr = phi i64 [ %i.bg, %.lr.ph.i.preheader ], [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ]
  br i1 %i.db, label %.loopexit, label %.lr.ph.i

.preheader.i:                                     ; preds = %bb.ab
  br i1 %i.bf, label %.lr.ph32.i.preheader, label %.loopexit

.lr.ph32.i.preheader:                             ; preds = %.preheader.i
  br i1 %lcmp.mod804.not, label %.lr.ph32.i.prol.loopexit, label %.lr.ph32.i.prol

.lr.ph32.i.prol:                                  ; preds = %.lr.ph32.i.preheader, %.lr.ph32.i.prol
  %indvars.iv35.i.prol = phi i64 [ %indvars.iv.next36.i.prol, %.lr.ph32.i.prol ], [ %i.bg, %.lr.ph32.i.preheader ] ; 3 uses
  %prol.iter805 = phi i64 [ %prol.iter805.next, %.lr.ph32.i.prol ], [ 0, %.lr.ph32.i.preheader ]
  %i.tv = shl nuw nsw i64 %indvars.iv35.i.prol, 1
  %i.tw = getelementptr inbounds nuw i8, ptr %i.en, i64 %i.tv ; 2 uses
  %i.tx = getelementptr inbounds nuw i8, ptr %i.tw, i64 1
  store i8 -1, ptr %i.tx, align 1
  %i.ty = getelementptr inbounds nuw i8, ptr %i.en, i64 %indvars.iv35.i.prol
  %i.tz = load i8, ptr %i.ty, align 1
  store i8 %i.tz, ptr %i.tw, align 1
  %indvars.iv.next36.i.prol = add nsw i64 %indvars.iv35.i.prol, -1 ; 2 uses
  %prol.iter805.next = add i64 %prol.iter805, 1   ; 2 uses
  %prol.iter805.cmp.not = icmp eq i64 %prol.iter805.next, %xtraiter803
  br i1 %prol.iter805.cmp.not, label %.lr.ph32.i.prol.loopexit, label %.lr.ph32.i.prol, !llvm.loop !253

.lr.ph32.i.prol.loopexit:                         ; preds = %.lr.ph32.i.prol, %.lr.ph32.i.preheader
  %indvars.iv35.i.unr = phi i64 [ %i.bg, %.lr.ph32.i.preheader ], [ %indvars.iv.next36.i.prol, %.lr.ph32.i.prol ]
  br i1 %i.dc, label %.loopexit, label %.lr.ph32.i

.lr.ph32.i:                                       ; preds = %.lr.ph32.i.prol.loopexit, %.lr.ph32.i
  %indvars.iv35.i = phi i64 [ %indvars.iv.next36.i.3, %.lr.ph32.i ], [ %indvars.iv35.i.unr, %.lr.ph32.i.prol.loopexit ] ; 6 uses
  %i.ua = shl nuw nsw i64 %indvars.iv35.i, 1
  %i.ub = getelementptr inbounds nuw i8, ptr %i.en, i64 %i.ua ; 2 uses
  %i.uc = getelementptr inbounds nuw i8, ptr %i.ub, i64 1
  store i8 -1, ptr %i.uc, align 1
  %i.ud = getelementptr inbounds nuw i8, ptr %i.en, i64 %indvars.iv35.i
  %i.ue = load i8, ptr %i.ud, align 1
  store i8 %i.ue, ptr %i.ub, align 1
  %indvars.iv.next36.i = add nsw i64 %indvars.iv35.i, -1 ; 2 uses
  %i.uf = shl nuw nsw i64 %indvars.iv.next36.i, 1
  %i.ug = getelementptr inbounds nuw i8, ptr %i.en, i64 %i.uf ; 2 uses
  %i.uh = getelementptr inbounds nuw i8, ptr %i.ug, i64 1
  store i8 -1, ptr %i.uh, align 1
  %i.ui = getelementptr inbounds nuw i8, ptr %i.en, i64 %indvars.iv.next36.i
  %i.uj = load i8, ptr %i.ui, align 1
  store i8 %i.uj, ptr %i.ug, align 1
  %indvars.iv.next36.i.1 = add nsw i64 %indvars.iv35.i, -2 ; 2 uses
  %i.uk = shl nuw nsw i64 %indvars.iv.next36.i.1, 1
  %i.ul = getelementptr inbounds nuw i8, ptr %i.en, i64 %i.uk ; 2 uses
  %i.um = getelementptr inbounds nuw i8, ptr %i.ul, i64 1
  store i8 -1, ptr %i.um, align 1
  %i.un = getelementptr inbounds nuw i8, ptr %i.en, i64 %indvars.iv.next36.i.1
  %i.uo = load i8, ptr %i.un, align 1
  store i8 %i.uo, ptr %i.ul, align 1
  %indvars.iv.next36.i.2 = add nsw i64 %indvars.iv35.i, -3 ; 3 uses
  %i.up = shl nuw nsw i64 %indvars.iv.next36.i.2, 1
  %i.uq = getelementptr inbounds nuw i8, ptr %i.en, i64 %i.up ; 2 uses
  %i.ur = getelementptr inbounds nuw i8, ptr %i.uq, i64 1
  store i8 -1, ptr %i.ur, align 1
  %i.us = getelementptr inbounds nuw i8, ptr %i.en, i64 %indvars.iv.next36.i.2
  %i.ut = load i8, ptr %i.us, align 1
  store i8 %i.ut, ptr %i.uq, align 1
  %indvars.iv.next36.i.3 = add nsw i64 %indvars.iv35.i, -4
  %.not39.i.3 = icmp eq i64 %indvars.iv.next36.i.2, 0
  br i1 %.not39.i.3, label %.loopexit, label %.lr.ph32.i, !llvm.loop !254

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.lr.ph.i ], [ %indvars.iv.i.unr, %.lr.ph.i.prol.loopexit ] ; 4 uses
  %i.uu = shl nsw i64 %indvars.iv.i, 2
  %i.uv = getelementptr inbounds nuw i8, ptr %i.en, i64 %i.uu ; 4 uses
  %i.uw = getelementptr inbounds nuw i8, ptr %i.uv, i64 3
  store i8 -1, ptr %i.uw, align 1
  %i.ux = mul nuw nsw i64 %indvars.iv.i, 3
  %i.uy = getelementptr inbounds nuw i8, ptr %i.en, i64 %i.ux ; 3 uses
  %i.uz = getelementptr inbounds nuw i8, ptr %i.uy, i64 2
  %i.va = load i8, ptr %i.uz, align 1
  %i.vb = getelementptr inbounds nuw i8, ptr %i.uv, i64 2
  store i8 %i.va, ptr %i.vb, align 1
  %i.vc = getelementptr inbounds nuw i8, ptr %i.uy, i64 1
  %i.vd = load i8, ptr %i.vc, align 1
  %i.ve = getelementptr inbounds nuw i8, ptr %i.uv, i64 1
  store i8 %i.vd, ptr %i.ve, align 1
  %i.vf = load i8, ptr %i.uy, align 1
  store i8 %i.vf, ptr %i.uv, align 1
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 3 uses
  %i.vg = shl nsw i64 %indvars.iv.next.i, 2
  %i.vh = getelementptr inbounds nuw i8, ptr %i.en, i64 %i.vg ; 4 uses
  %i.vi = getelementptr inbounds nuw i8, ptr %i.vh, i64 3
  store i8 -1, ptr %i.vi, align 1
  %i.vj = mul nuw nsw i64 %indvars.iv.next.i, 3
  %i.vk = getelementptr inbounds nuw i8, ptr %i.en, i64 %i.vj ; 3 uses
  %i.vl = getelementptr inbounds nuw i8, ptr %i.vk, i64 2
  %i.vm = load i8, ptr %i.vl, align 1
  %i.vn = getelementptr inbounds nuw i8, ptr %i.vh, i64 2
  store i8 %i.vm, ptr %i.vn, align 1
  %i.vo = getelementptr inbounds nuw i8, ptr %i.vk, i64 1
  %i.vp = load i8, ptr %i.vo, align 1
end_hunk_6
begin_hunk_7_@stbi__create_png_image_raw:bb.a
  store i8 %i.wb, ptr %i.vs, align 1
  br label %.lr.ph.i308.prol.loopexit

.lr.ph.i308.prol.loopexit:                        ; preds = %.lr.ph.i308.prol, %.lr.ph.i308.preheader
  %indvars.iv.i309.unr = phi i64 [ %i.bg, %.lr.ph.i308.preheader ], [ %indvars.iv.next.i310.prol, %.lr.ph.i308.prol ]
  br i1 %i.cs, label %.loopexit, label %.lr.ph.i308

.preheader.i312:                                  ; preds = %bb.af
  br i1 %i.bf, label %.lr.ph32.i314.preheader, label %.loopexit

.lr.ph32.i314.preheader:                          ; preds = %.preheader.i312
  br i1 %min.iters.check, label %.lr.ph32.i314.preheader744, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph32.i314.preheader
  %i.wc = getelementptr i8, ptr %i.ek, i64 %i.bl
  %scevgep = getelementptr i8, ptr %i.wc, i64 2
  %scevgep504 = getelementptr i8, ptr %scevgep, i64 %i.ea
  %scevgep506 = getelementptr i8, ptr %scevgep505, i64 %i.ed
  %bound0 = icmp ult ptr %i.en, %scevgep506
  %bound1 = icmp ult ptr %i.ee, %scevgep504
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph32.i314.preheader744, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 2 uses
  %i.wd = sub i64 %i.bg, %index                   ; 2 uses
  %i.we = shl nuw nsw i64 %i.wd, 1
  %i.wf = getelementptr inbounds nuw i8, ptr %i.en, i64 %i.we
  %i.wg = getelementptr inbounds nuw i8, ptr %i.ee, i64 %i.wd
  %i.wh = getelementptr inbounds i8, ptr %i.wg, i64 -7
  %wide.load = load <8 x i8>, ptr %i.wh, align 1, !alias.scope !256
  %i.wi = getelementptr inbounds i8, ptr %i.wf, i64 -14
  %interleaved.vec = shufflevector <8 x i8> %wide.load, <8 x i8> splat (i8 -1), <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec, ptr %i.wi, align 1, !alias.scope !259, !noalias !256
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.wj = icmp eq i64 %index.next, %n.vec
  br i1 %i.wj, label %middle.block, label %vector.body, !llvm.loop !261

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.loopexit, label %.lr.ph32.i314.preheader744

.lr.ph32.i314.preheader744:                       ; preds = %vector.memcheck, %.lr.ph32.i314.preheader, %middle.block
  %indvars.iv35.i315.ph = phi i64 [ %i.bg, %vector.memcheck ], [ %i.bg, %.lr.ph32.i314.preheader ], [ %i.cu, %middle.block ] ; 4 uses
  %i.wk = add nsw i64 %indvars.iv35.i315.ph, 1
  %xtraiter779 = and i64 %i.wk, 3                 ; 2 uses
  %lcmp.mod780.not = icmp eq i64 %xtraiter779, 0
  br i1 %lcmp.mod780.not, label %.lr.ph32.i314.prol.loopexit, label %.lr.ph32.i314.prol

.lr.ph32.i314.prol:                               ; preds = %.lr.ph32.i314.preheader744, %.lr.ph32.i314.prol
  %indvars.iv35.i315.prol = phi i64 [ %indvars.iv.next36.i316.prol, %.lr.ph32.i314.prol ], [ %indvars.iv35.i315.ph, %.lr.ph32.i314.preheader744 ] ; 3 uses
  %prol.iter781 = phi i64 [ %prol.iter781.next, %.lr.ph32.i314.prol ], [ 0, %.lr.ph32.i314.preheader744 ]
  %i.wl = shl nuw nsw i64 %indvars.iv35.i315.prol, 1
  %i.wm = getelementptr inbounds nuw i8, ptr %i.en, i64 %i.wl ; 2 uses
  %i.wn = getelementptr inbounds nuw i8, ptr %i.wm, i64 1
  store i8 -1, ptr %i.wn, align 1
  %i.wo = getelementptr inbounds nuw i8, ptr %i.ee, i64 %indvars.iv35.i315.prol
  %i.wp = load i8, ptr %i.wo, align 1
  store i8 %i.wp, ptr %i.wm, align 1
  %indvars.iv.next36.i316.prol = add nsw i64 %indvars.iv35.i315.prol, -1 ; 2 uses
  %prol.iter781.next = add i64 %prol.iter781, 1   ; 2 uses
  %prol.iter781.cmp.not = icmp eq i64 %prol.iter781.next, %xtraiter779
  br i1 %prol.iter781.cmp.not, label %.lr.ph32.i314.prol.loopexit, label %.lr.ph32.i314.prol, !llvm.loop !262

.lr.ph32.i314.prol.loopexit:                      ; preds = %.lr.ph32.i314.prol, %.lr.ph32.i314.preheader744
  %indvars.iv35.i315.unr = phi i64 [ %indvars.iv35.i315.ph, %.lr.ph32.i314.preheader744 ], [ %indvars.iv.next36.i316.prol, %.lr.ph32.i314.prol ]
  %i.wq = icmp ult i64 %indvars.iv35.i315.ph, 3
  br i1 %i.wq, label %.loopexit, label %.lr.ph32.i314

.lr.ph32.i314:                                    ; preds = %.lr.ph32.i314.prol.loopexit, %.lr.ph32.i314
  %indvars.iv35.i315 = phi i64 [ %indvars.iv.next36.i316.3, %.lr.ph32.i314 ], [ %indvars.iv35.i315.unr, %.lr.ph32.i314.prol.loopexit ] ; 6 uses
  %i.wr = shl nuw nsw i64 %indvars.iv35.i315, 1
  %i.ws = getelementptr inbounds nuw i8, ptr %i.en, i64 %i.wr ; 2 uses
  %i.wt = getelementptr inbounds nuw i8, ptr %i.ws, i64 1
  store i8 -1, ptr %i.wt, align 1
  %i.wu = getelementptr inbounds nuw i8, ptr %i.ee, i64 %indvars.iv35.i315
  %i.wv = load i8, ptr %i.wu, align 1
  store i8 %i.wv, ptr %i.ws, align 1
  %indvars.iv.next36.i316 = add nsw i64 %indvars.iv35.i315, -1 ; 2 uses
  %i.ww = shl nuw nsw i64 %indvars.iv.next36.i316, 1
  %i.wx = getelementptr inbounds nuw i8, ptr %i.en, i64 %i.ww ; 2 uses
  %i.wy = getelementptr inbounds nuw i8, ptr %i.wx, i64 1
  store i8 -1, ptr %i.wy, align 1
  %i.wz = getelementptr inbounds nuw i8, ptr %i.ee, i64 %indvars.iv.next36.i316
  %i.xa = load i8, ptr %i.wz, align 1
  store i8 %i.xa, ptr %i.wx, align 1
  %indvars.iv.next36.i316.1 = add nsw i64 %indvars.iv35.i315, -2 ; 2 uses
  %i.xb = shl nuw nsw i64 %indvars.iv.next36.i316.1, 1
  %i.xc = getelementptr inbounds nuw i8, ptr %i.en, i64 %i.xb ; 2 uses
  %i.xd = getelementptr inbounds nuw i8, ptr %i.xc, i64 1
  store i8 -1, ptr %i.xd, align 1
  %i.xe = getelementptr inbounds nuw i8, ptr %i.ee, i64 %indvars.iv.next36.i316.1
  %i.xf = load i8, ptr %i.xe, align 1
  store i8 %i.xf, ptr %i.xc, align 1
  %indvars.iv.next36.i316.2 = add nsw i64 %indvars.iv35.i315, -3 ; 3 uses
  %i.xg = shl nuw nsw i64 %indvars.iv.next36.i316.2, 1
  %i.xh = getelementptr inbounds nuw i8, ptr %i.en, i64 %i.xg ; 2 uses
  %i.xi = getelementptr inbounds nuw i8, ptr %i.xh, i64 1
  store i8 -1, ptr %i.xi, align 1
  %i.xj = getelementptr inbounds nuw i8, ptr %i.ee, i64 %indvars.iv.next36.i316.2
  %i.xk = load i8, ptr %i.xj, align 1
  store i8 %i.xk, ptr %i.xh, align 1
  %indvars.iv.next36.i316.3 = add nsw i64 %indvars.iv35.i315, -4
  %.not39.i317.3 = icmp eq i64 %indvars.iv.next36.i316.2, 0
  br i1 %.not39.i317.3, label %.loopexit, label %.lr.ph32.i314, !llvm.loop !263

.lr.ph.i308:                                      ; preds = %.lr.ph.i308.prol.loopexit, %.lr.ph.i308
  %indvars.iv.i309 = phi i64 [ %indvars.iv.next.i310.1, %.lr.ph.i308 ], [ %indvars.iv.i309.unr, %.lr.ph.i308.prol.loopexit ] ; 4 uses
  %i.xl = shl nsw i64 %indvars.iv.i309, 2
  %i.xm = getelementptr inbounds nuw i8, ptr %i.en, i64 %i.xl ; 4 uses
  %i.xn = getelementptr inbounds nuw i8, ptr %i.xm, i64 3
  store i8 -1, ptr %i.xn, align 1
  %i.xo = mul nuw nsw i64 %indvars.iv.i309, 3
  %i.xp = getelementptr inbounds nuw i8, ptr %i.ee, i64 %i.xo ; 3 uses
  %i.xq = getelementptr inbounds nuw i8, ptr %i.xp, i64 2
  %i.xr = load i8, ptr %i.xq, align 1
  %i.xs = getelementptr inbounds nuw i8, ptr %i.xm, i64 2
  store i8 %i.xr, ptr %i.xs, align 1
  %i.xt = getelementptr inbounds nuw i8, ptr %i.xp, i64 1
  %i.xu = load i8, ptr %i.xt, align 1
  %i.xv = getelementptr inbounds nuw i8, ptr %i.xm, i64 1
  store i8 %i.xu, ptr %i.xv, align 1
  %i.xw = load i8, ptr %i.xp, align 1
  store i8 %i.xw, ptr %i.xm, align 1
  %indvars.iv.next.i310 = add nsw i64 %indvars.iv.i309, -1 ; 3 uses
  %i.xx = shl nsw i64 %indvars.iv.next.i310, 2
  %i.xy = getelementptr inbounds nuw i8, ptr %i.en, i64 %i.xx ; 4 uses
  %i.xz = getelementptr inbounds nuw i8, ptr %i.xy, i64 3
  store i8 -1, ptr %i.xz, align 1
  %i.ya = mul nuw nsw i64 %indvars.iv.next.i310, 3
  %i.yb = getelementptr inbounds nuw i8, ptr %i.ee, i64 %i.ya ; 3 uses
  %i.yc = getelementptr inbounds nuw i8, ptr %i.yb, i64 2
  %i.yd = load i8, ptr %i.yc, align 1
  %i.ye = getelementptr inbounds nuw i8, ptr %i.xy, i64 2
  store i8 %i.yd, ptr %i.ye, align 1
  %i.yf = getelementptr inbounds nuw i8, ptr %i.yb, i64 1
  %i.yg = load i8, ptr %i.yf, align 1
  %i.yh = getelementptr inbounds nuw i8, ptr %i.xy, i64 1
  store i8 %i.yg, ptr %i.yh, align 1
  %i.yi = load i8, ptr %i.yb, align 1
  store i8 %i.yi, ptr %i.xy, align 1
  %indvars.iv.next.i310.1 = add nsw i64 %indvars.iv.i309, -2
  %.not.i311.1 = icmp eq i64 %indvars.iv.next.i310, 0
  br i1 %.not.i311.1, label %.loopexit, label %.lr.ph.i308, !llvm.loop !255

bb.ag:                                            ; preds = %bb.ac
  br i1 %i.a, label %bb.ah, label %.loopexit

bb.ah:                                            ; preds = %bb.ag
  br i1 %i.bd, label %.preheader342, label %bb.ai

.preheader342:                                    ; preds = %bb.ah
  br i1 %.not404, label %.loopexit, label %.lr.ph382.preheader

.lr.ph382.preheader:                              ; preds = %.preheader342
  br i1 %i.co, label %.lr.ph382.epil.preheader, label %.lr.ph382

.lr.ph382:                                        ; preds = %.lr.ph382.preheader, %.lr.ph382
  %.0381 = phi ptr [ %i.zr, %.lr.ph382 ], [ %i.en, %.lr.ph382.preheader ] ; 5 uses
  %.0249380 = phi ptr [ %i.zs, %.lr.ph382 ], [ %i.ee, %.lr.ph382.preheader ] ; 9 uses
  %niter775 = phi i32 [ %niter775.next.3, %.lr.ph382 ], [ 0, %.lr.ph382.preheader ]
  %i.yj = load i8, ptr %.0249380, align 1
  %i.yk = zext i8 %i.yj to i16
  %i.yl = shl nuw i16 %i.yk, 8
  %i.ym = getelementptr inbounds nuw i8, ptr %.0249380, i64 1
  %i.yn = load i8, ptr %i.ym, align 1
  %i.yo = zext i8 %i.yn to i16
  %i.yp = or disjoint i16 %i.yl, %i.yo
  store i16 %i.yp, ptr %.0381, align 2
  %i.yq = getelementptr inbounds nuw i8, ptr %.0381, i64 2
  %i.yr = getelementptr inbounds nuw i8, ptr %.0249380, i64 2
  %i.ys = load i8, ptr %i.yr, align 1
  %i.yt = zext i8 %i.ys to i16
  %i.yu = shl nuw i16 %i.yt, 8
  %i.yv = getelementptr inbounds nuw i8, ptr %.0249380, i64 3
  %i.yw = load i8, ptr %i.yv, align 1
  %i.yx = zext i8 %i.yw to i16
  %i.yy = or disjoint i16 %i.yu, %i.yx
  store i16 %i.yy, ptr %i.yq, align 2
  %i.yz = getelementptr inbounds nuw i8, ptr %.0381, i64 4
  %i.za = getelementptr inbounds nuw i8, ptr %.0249380, i64 4
  %i.zb = load i8, ptr %i.za, align 1
  %i.zc = zext i8 %i.zb to i16
  %i.zd = shl nuw i16 %i.zc, 8
  %i.ze = getelementptr inbounds nuw i8, ptr %.0249380, i64 5
  %i.zf = load i8, ptr %i.ze, align 1
  %i.zg = zext i8 %i.zf to i16
  %i.zh = or disjoint i16 %i.zd, %i.zg
  store i16 %i.zh, ptr %i.yz, align 2
  %i.zi = getelementptr inbounds nuw i8, ptr %.0381, i64 6
  %i.zj = getelementptr inbounds nuw i8, ptr %.0249380, i64 6
  %i.zk = load i8, ptr %i.zj, align 1
  %i.zl = zext i8 %i.zk to i16
  %i.zm = shl nuw i16 %i.zl, 8
  %i.zn = getelementptr inbounds nuw i8, ptr %.0249380, i64 7
  %i.zo = load i8, ptr %i.zn, align 1
  %i.zp = zext i8 %i.zo to i16
  %i.zq = or disjoint i16 %i.zm, %i.zp
  store i16 %i.zq, ptr %i.zi, align 2
  %i.zr = getelementptr inbounds nuw i8, ptr %.0381, i64 8 ; 2 uses
  %i.zs = getelementptr inbounds nuw i8, ptr %.0249380, i64 8 ; 2 uses
  %niter775.next.3 = add i32 %niter775, 4         ; 2 uses
  %niter775.ncmp.3 = icmp eq i32 %niter775.next.3, %unroll_iter774
  br i1 %niter775.ncmp.3, label %.loopexit.loopexit747.unr-lcssa, label %.lr.ph382, !llvm.loop !264

bb.ai:                                            ; preds = %bb.ah
  br i1 %i.be, label %.preheader344, label %.preheader346

.preheader346:                                    ; preds = %bb.ai
  br i1 %i.x, label %.loopexit, label %.lr.ph374

.preheader344:                                    ; preds = %bb.ai
  br i1 %i.x, label %.loopexit, label %.lr.ph378.preheader

.lr.ph378.preheader:                              ; preds = %.preheader344
  br i1 %i.cn, label %.lr.ph378.epil.preheader, label %.lr.ph378

.lr.ph378:                                        ; preds = %.lr.ph378.preheader, %.lr.ph378
  %.1377 = phi ptr [ %i.aal, %.lr.ph378 ], [ %i.en, %.lr.ph378.preheader ] ; 5 uses
  %.1250376 = phi ptr [ %i.aam, %.lr.ph378 ], [ %i.ee, %.lr.ph378.preheader ] ; 5 uses
  %niter = phi i32 [ %niter.next.1, %.lr.ph378 ], [ 0, %.lr.ph378.preheader ]
  %i.zt = load i8, ptr %.1250376, align 1
  %i.zu = zext i8 %i.zt to i16
  %i.zv = shl nuw i16 %i.zu, 8
  %i.zw = getelementptr inbounds nuw i8, ptr %.1250376, i64 1
  %i.zx = load i8, ptr %i.zw, align 1
  %i.zy = zext i8 %i.zx to i16
  %i.zz = or disjoint i16 %i.zv, %i.zy
  store i16 %i.zz, ptr %.1377, align 2
  %i.aaa = getelementptr inbounds nuw i8, ptr %.1377, i64 2
  store i16 -1, ptr %i.aaa, align 2
  %i.aab = getelementptr inbounds nuw i8, ptr %.1377, i64 4
  %i.aac = getelementptr inbounds nuw i8, ptr %.1250376, i64 2
  %i.aad = load i8, ptr %i.aac, align 1
  %i.aae = zext i8 %i.aad to i16
  %i.aaf = shl nuw i16 %i.aae, 8
  %i.aag = getelementptr inbounds nuw i8, ptr %.1250376, i64 3
  %i.aah = load i8, ptr %i.aag, align 1
  %i.aai = zext i8 %i.aah to i16
  %i.aaj = or disjoint i16 %i.aaf, %i.aai
  store i16 %i.aaj, ptr %i.aab, align 2
  %i.aak = getelementptr inbounds nuw i8, ptr %.1377, i64 6
  store i16 -1, ptr %i.aak, align 2
  %i.aal = getelementptr inbounds nuw i8, ptr %.1377, i64 8 ; 2 uses
  %i.aam = getelementptr inbounds nuw i8, ptr %.1250376, i64 4 ; 2 uses
  %niter.next.1 = add nuw i32 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit748.unr-lcssa, label %.lr.ph378, !llvm.loop !265

.lr.ph374:                                        ; preds = %.preheader346, %.lr.ph374
  %.2373 = phi ptr [ %i.abo, %.lr.ph374 ], [ %i.en, %.preheader346 ] ; 5 uses
  %.2251372 = phi ptr [ %i.abp, %.lr.ph374 ], [ %i.ee, %.preheader346 ] ; 7 uses
  %.5270371 = phi i32 [ %i.abn, %.lr.ph374 ], [ 0, %.preheader346 ]
  %i.aan = load i8, ptr %.2251372, align 1
  %i.aao = zext i8 %i.aan to i16
  %i.aap = shl nuw i16 %i.aao, 8
  %i.aaq = getelementptr inbounds nuw i8, ptr %.2251372, i64 1
  %i.aar = load i8, ptr %i.aaq, align 1
  %i.aas = zext i8 %i.aar to i16
  %i.aat = or disjoint i16 %i.aap, %i.aas
  store i16 %i.aat, ptr %.2373, align 2
  %i.aau = getelementptr inbounds nuw i8, ptr %.2251372, i64 2
  %i.aav = load i8, ptr %i.aau, align 1
  %i.aaw = zext i8 %i.aav to i16
  %i.aax = shl nuw i16 %i.aaw, 8
  %i.aay = getelementptr inbounds nuw i8, ptr %.2251372, i64 3
  %i.aaz = load i8, ptr %i.aay, align 1
  %i.aba = zext i8 %i.aaz to i16
  %i.abb = or disjoint i16 %i.aax, %i.aba
  %i.abc = getelementptr inbounds nuw i8, ptr %.2373, i64 2
  store i16 %i.abb, ptr %i.abc, align 2
  %i.abd = getelementptr inbounds nuw i8, ptr %.2251372, i64 4
  %i.abe = load i8, ptr %i.abd, align 1
  %i.abf = zext i8 %i.abe to i16
  %i.abg = shl nuw i16 %i.abf, 8
  %i.abh = getelementptr inbounds nuw i8, ptr %.2251372, i64 5
  %i.abi = load i8, ptr %i.abh, align 1
  %i.abj = zext i8 %i.abi to i16
  %i.abk = or disjoint i16 %i.abg, %i.abj
  %i.abl = getelementptr inbounds nuw i8, ptr %.2373, i64 4
  store i16 %i.abk, ptr %i.abl, align 2
  %i.abm = getelementptr inbounds nuw i8, ptr %.2373, i64 6
  store i16 -1, ptr %i.abm, align 2
  %i.abn = add nuw i32 %.5270371, 1               ; 2 uses
  %i.abo = getelementptr inbounds nuw i8, ptr %.2373, i64 8
  %i.abp = getelementptr inbounds nuw i8, ptr %.2251372, i64 6
  %exitcond451.not = icmp eq i32 %i.abn, %4
  br i1 %exitcond451.not, label %.loopexit, label %.lr.ph374, !llvm.loop !266

.loopexit.loopexit747.unr-lcssa:                  ; preds = %.lr.ph382
  br i1 %lcmp.mod772.not, label %.loopexit, label %.lr.ph382.epil.preheader

.lr.ph382.epil.preheader:                         ; preds = %.loopexit.loopexit747.unr-lcssa, %.lr.ph382.preheader
  %.0381.epil.init = phi ptr [ %i.en, %.lr.ph382.preheader ], [ %i.zr, %.loopexit.loopexit747.unr-lcssa ]
  %.0249380.epil.init = phi ptr [ %i.ee, %.lr.ph382.preheader ], [ %i.zs, %.loopexit.loopexit747.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod773)
  br label %.lr.ph382.epil

.lr.ph382.epil:                                   ; preds = %.lr.ph382.epil, %.lr.ph382.epil.preheader
  %.0381.epil = phi ptr [ %i.abx, %.lr.ph382.epil ], [ %.0381.epil.init, %.lr.ph382.epil.preheader ] ; 2 uses
  %.0249380.epil = phi ptr [ %i.aby, %.lr.ph382.epil ], [ %.0249380.epil.init, %.lr.ph382.epil.preheader ] ; 3 uses
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph382.epil ], [ 0, %.lr.ph382.epil.preheader ]
  %i.abq = load i8, ptr %.0249380.epil, align 1
  %i.abr = zext i8 %i.abq to i16
  %i.abs = shl nuw i16 %i.abr, 8
  %i.abt = getelementptr inbounds nuw i8, ptr %.0249380.epil, i64 1
  %i.abu = load i8, ptr %i.abt, align 1
  %i.abv = zext i8 %i.abu to i16
  %i.abw = or disjoint i16 %i.abs, %i.abv
  store i16 %i.abw, ptr %.0381.epil, align 2
  %i.abx = getelementptr inbounds nuw i8, ptr %.0381.epil, i64 2
  %i.aby = getelementptr inbounds nuw i8, ptr %.0249380.epil, i64 2
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter771
  br i1 %epil.iter.cmp.not, label %.loopexit, label %.lr.ph382.epil, !llvm.loop !267

.loopexit.loopexit748.unr-lcssa:                  ; preds = %.lr.ph378
  br i1 %lcmp.mod769.not, label %.loopexit, label %.lr.ph378.epil.preheader

.lr.ph378.epil.preheader:                         ; preds = %.loopexit.loopexit748.unr-lcssa, %.lr.ph378.preheader
  %.1377.epil.init = phi ptr [ %i.en, %.lr.ph378.preheader ], [ %i.aal, %.loopexit.loopexit748.unr-lcssa ] ; 2 uses
  %.1250376.epil.init = phi ptr [ %i.ee, %.lr.ph378.preheader ], [ %i.aam, %.loopexit.loopexit748.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod770)
  %i.abz = load i8, ptr %.1250376.epil.init, align 1
  %i.aca = zext i8 %i.abz to i16
  %i.acb = shl nuw i16 %i.aca, 8
  %i.acc = getelementptr inbounds nuw i8, ptr %.1250376.epil.init, i64 1
  %i.acd = load i8, ptr %i.acc, align 1
  %i.ace = zext i8 %i.acd to i16
  %i.acf = or disjoint i16 %i.acb, %i.ace
  store i16 %i.acf, ptr %.1377.epil.init, align 2
  %i.acg = getelementptr inbounds nuw i8, ptr %.1377.epil.init, i64 2
  store i16 -1, ptr %i.acg, align 2
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph374, %.lr.ph378.epil.preheader, %.loopexit.loopexit748.unr-lcssa, %.loopexit.loopexit747.unr-lcssa, %.lr.ph382.epil, %.lr.ph.i308.prol.loopexit, %.lr.ph.i308, %.lr.ph32.i314.prol.loopexit, %.lr.ph32.i314, %.lr.ph.i.prol.loopexit, %.lr.ph.i, %.lr.ph32.i.prol.loopexit, %.lr.ph32.i, %middle.block, %.preheader346, %.preheader344, %.preheader342, %.loopexit335, %bb.ag, %bb.ae, %.preheader26.i, %.preheader.i, %.preheader26.i306, %.preheader.i312
  %indvars.iv.next458 = add nuw nsw i64 %indvars.iv457, 1 ; 2 uses
  %exitcond461.not = icmp eq i64 %indvars.iv.next458, %wide.trip.count460
  br i1 %exitcond461.not, label %._crit_edge, label %bb.m, !llvm.loop !268

._crit_edge:                                      ; preds = %.loopexit, %bb.l
  tail call void @SDL_free_REAL(ptr noundef nonnull %i.as) #13
  br label %bb.ak

bb.aj:                                            ; preds = %bb.m
  %i.ach = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.28) #13 ; 0 uses
  tail call void @SDL_free_REAL(ptr noundef nonnull %i.as) #13
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %._crit_edge, %bb.k, %bb.i, %stbi__mad2sizes_valid.exit.thread, %stbi__mad3sizes_valid.exit.thread, %bb.d
  %.0271 = phi i32 [ 0, %bb.i ], [ 0, %bb.d ], [ 0, %stbi__mad3sizes_valid.exit.thread ], [ 0, %bb.k ], [ 0, %stbi__mad2sizes_valid.exit.thread ], [ 0, %bb.aj ], [ 1, %._crit_edge ]
  ret i32 %.0271
}

; Function Attrs: nounwind uwtable
define internal i32 @IMG_LoadSTB_IO_read(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
bb.a:
  %i.a = sext i32 %2 to i64
  %i.b = tail call i64 @SDL_ReadIO_REAL(ptr noundef %0, ptr noundef %1, i64 noundef %i.a) #13
  %i.c = trunc i64 %i.b to i32
  ret i32 %i.c
}

; Function Attrs: nounwind uwtable
define internal void @IMG_LoadSTB_IO_skip(ptr noundef %0, i32 noundef %1) #0 {
bb.a:
  %i.a = sext i32 %1 to i64
  %i.b = tail call i64 @SDL_SeekIO_REAL(ptr noundef %0, i64 noundef %i.a, i32 noundef 1) #13 ; 0 uses
  ret void
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @IMG_LoadSTB_IO_eof(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call i32 @SDL_GetIOStatus_REAL(ptr noundef %0) #13
  %i.b = icmp eq i32 %i.a, 2
  %i.c = zext i1 %i.b to i32
  ret i32 %i.c
}

declare ptr @SDL_CreateSurfaceFrom_REAL(i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @SDL_CreateSurfacePalette_REAL(ptr noundef) local_unnamed_addr #2

declare zeroext i1 @SDL_SetSurfaceBlendMode_REAL(ptr noundef, i32 noundef) local_unnamed_addr #2

declare zeroext i1 @SDL_SetSurfaceColorKey_REAL(ptr noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #2

declare ptr @SDL_CreateSurface_REAL(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @SDL_GetIOStatus_REAL(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define internal fastcc range(i64 0, 4294967296) i64 @mz_crc32(ptr nofree noundef readonly captures(address_is_null) %0, i64 noundef %1) unnamed_addr #8 {
bb.a:
  %.not = icmp eq ptr %0, null
  %.not1617 = icmp eq i64 %1, 0
  %or.cond = or i1 %.not, %.not1617
  br i1 %or.cond, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %xtraiter = and i64 %1, 1
end_hunk_7
begin_hunk_8_@tdefl_compress_normal:bb.a
  %i.ae = icmp ugt i32 %i.ad, 1
  br i1 %i.ae, label %bb.d, label %.critedge4

.critedge.thread:                                 ; preds = %select.unfold
  %.pre = load i32, ptr %i.g, align 8             ; 4 uses
  %i.af = load i32, ptr %i.h, align 4             ; 5 uses
  %i.ag = add i32 %i.af, %.pre
  %i.ah = icmp ugt i32 %i.ag, 1
  br i1 %i.ah, label %bb.d, label %.lr.ph

.lr.ph:                                           ; preds = %.critedge.thread
  %umax = tail call i32 @llvm.umax.i32(i32 %.pre, i32 258) ; 3 uses
  br label %bb.g

bb.d:                                             ; preds = %.critedge.thread, %.critedge
  %i.ai = phi i32 [ %i.af, %.critedge.thread ], [ %i.ac, %.critedge ] ; 2 uses
  %.promoted383 = phi i32 [ %.pre, %.critedge.thread ], [ %i.ab, %.critedge ] ; 3 uses
  %i.aj = load i32, ptr %i.i, align 4
  %i.ak = add i32 %i.aj, %.promoted383            ; 3 uses
  %i.al = add i32 %i.ak, -2                       ; 2 uses
  %i.am = and i32 %i.al, 32767
  %i.an = zext nneg i32 %i.am to i64
  %i.ao = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.an
  %i.ap = load i8, ptr %i.ao, align 1
  %i.aq = add i32 %i.ak, 32767
  %i.ar = and i32 %i.aq, 32767
  %i.as = zext nneg i32 %i.ar to i64
  %i.at = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.as
  %i.au = load i8, ptr %i.at, align 1
  %i.av = sub i32 258, %.promoted383
  %i.aw = zext i32 %i.av to i64
  %i.ax = tail call i64 @llvm.umin.i64(i64 %.0179, i64 %i.aw) ; 4 uses
  %i.ay = trunc nuw i64 %i.ax to i32
  %.not200 = icmp eq ptr %.0170, null
  %i.az = getelementptr inbounds nuw i8, ptr %.0170, i64 %i.ax
  %i.ba = sub i64 %.0179, %i.ax                   ; 2 uses
  %i.bb = add i32 %.promoted383, %i.ay            ; 3 uses
  store i32 %i.bb, ptr %i.g, align 8
  %.not201284381 = icmp samesign eq i64 %i.ax, 0
  %.not201284 = select i1 %.not200, i1 true, i1 %.not201284381
  br i1 %.not201284, label %.critedge4, label %.lr.ph289.preheader

.lr.ph289.preheader:                              ; preds = %bb.d
  %i.bc = zext i8 %i.ap to i32
  %i.bd = shl nuw nsw i32 %i.bc, 5
  %i.be = zext i8 %i.au to i32
  %i.bf = xor i32 %i.bd, %i.be
  br label %.lr.ph289

.lr.ph289:                                        ; preds = %.lr.ph289.preheader, %bb.f
  %.0177288.in = phi i32 [ %i.bw, %bb.f ], [ %i.ak, %.lr.ph289.preheader ]
  %.1171287 = phi ptr [ %i.bg, %bb.f ], [ %.0170, %.lr.ph289.preheader ] ; 2 uses
  %.0175286 = phi i32 [ %i.bo, %bb.f ], [ %i.bf, %.lr.ph289.preheader ]
  %.0176285 = phi i32 [ %i.bx, %bb.f ], [ %i.al, %.lr.ph289.preheader ] ; 3 uses
  %.0177288 = and i32 %.0177288.in, 32767         ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.1171287, i64 1 ; 3 uses
  %i.bh = load i8, ptr %.1171287, align 1         ; 3 uses
  %i.bi = zext nneg i32 %.0177288 to i64
  %i.bj = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.bi ; 2 uses
  store i8 %i.bh, ptr %i.bj, align 1
  %i.bk = icmp samesign ult i32 %.0177288, 257
  br i1 %i.bk, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph289
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 32768
  store i8 %i.bh, ptr %i.bl, align 1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph289
  %i.bm = shl nuw nsw i32 %.0175286, 5
  %i.bn = zext i8 %i.bh to i32
  %.masked214 = and i32 %i.bm, 32736
  %i.bo = xor i32 %.masked214, %i.bn              ; 2 uses
  %i.bp = zext nneg i32 %i.bo to i64
  %i.bq = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %i.bp ; 2 uses
  %i.br = load i16, ptr %i.bq, align 2
  %i.bs = and i32 %.0176285, 32767
  %i.bt = zext nneg i32 %i.bs to i64
  %i.bu = getelementptr inbounds nuw [2 x i8], ptr %i.l, i64 %i.bt
  store i16 %i.br, ptr %i.bu, align 2
  %i.bv = trunc i32 %.0176285 to i16
  store i16 %i.bv, ptr %i.bq, align 2
  %i.bw = add nuw nsw i32 %.0177288, 1
  %i.bx = add i32 %.0176285, 1
  %.not201 = icmp eq ptr %i.bg, %i.az
  br i1 %.not201, label %.critedge4, label %.lr.ph289, !llvm.loop !269

bb.g:                                             ; preds = %.lr.ph, %bb.l
  %i.by = phi i32 [ %.pre, %.lr.ph ], [ %i.ck, %bb.l ] ; 3 uses
  %.2172282 = phi ptr [ %.0170, %.lr.ph ], [ %i.ca, %bb.l ] ; 3 uses
  %.1180281 = phi i64 [ %.0179, %.lr.ph ], [ %i.cf, %bb.l ] ; 2 uses
  %exitcond.not = icmp eq i32 %i.by, %umax
  br i1 %exitcond.not, label %.critedge4.thread, label %bb.h

.critedge4.thread:                                ; preds = %bb.g
  %i.bz = sub i32 32768, %umax
  %.389 = tail call i32 @llvm.umin.i32(i32 %i.bz, i32 %i.af) ; 2 uses
  store i32 %.389, ptr %i.h, align 4
  br label %bb.m

bb.h:                                             ; preds = %bb.g
  %i.ca = getelementptr inbounds nuw i8, ptr %.2172282, i64 1 ; 2 uses
  %i.cb = load i8, ptr %.2172282, align 1         ; 3 uses
  %i.cc = load i32, ptr %i.i, align 4
  %i.cd = add i32 %i.cc, %i.by                    ; 3 uses
  %i.ce = and i32 %i.cd, 32767                    ; 2 uses
  %i.cf = add i64 %.1180281, -1                   ; 2 uses
  %i.cg = zext nneg i32 %i.ce to i64
  %i.ch = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.cg ; 2 uses
  store i8 %i.cb, ptr %i.ch, align 1
  %i.ci = icmp samesign ult i32 %i.ce, 257
  br i1 %i.ci, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ch, i64 32768
  store i8 %i.cb, ptr %i.cj, align 1
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ck = add nuw nsw i32 %i.by, 1                ; 4 uses
  store i32 %i.ck, ptr %i.g, align 8
  %i.cl = add i32 %i.ck, %i.af
  %i.cm = icmp ugt i32 %i.cl, 2
  br i1 %i.cm, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.cn = add i32 %i.cd, -2                       ; 2 uses
  %i.co = and i32 %i.cn, 32767
  %i.cp = zext nneg i32 %i.co to i64              ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.cp
  %i.cr = load i8, ptr %i.cq, align 1
  %i.cs = zext i8 %i.cr to i64
  %i.ct = shl nuw nsw i64 %i.cs, 10
  %i.cu = add i32 %i.cd, 32767
  %i.cv = and i32 %i.cu, 32767
  %i.cw = zext nneg i32 %i.cv to i64
  %i.cx = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.cw
  %i.cy = load i8, ptr %i.cx, align 1
  %i.cz = zext i8 %i.cy to i64
  %i.da = shl nuw nsw i64 %i.cz, 5
  %i.db = zext i8 %i.cb to i64
  %.masked199 = and i64 %i.ct, 31744
  %.masked = xor i64 %i.da, %i.db
  %i.dc = xor i64 %.masked, %.masked199
  %i.dd = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %i.dc ; 2 uses
  %i.de = load i16, ptr %i.dd, align 2
  %i.df = getelementptr inbounds nuw [2 x i8], ptr %i.l, i64 %i.cp
  store i16 %i.de, ptr %i.df, align 2
  %i.dg = trunc i32 %i.cn to i16
  store i16 %i.dg, ptr %i.dd, align 2
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.not198 = icmp eq i64 %i.cf, 0
  br i1 %.not198, label %.critedge4, label %bb.g, !llvm.loop !270

.critedge4:                                       ; preds = %bb.l, %bb.f, %.critedge, %bb.d
  %i.dh = phi i32 [ %i.ac, %.critedge ], [ %i.ai, %bb.d ], [ %i.ai, %bb.f ], [ %i.af, %bb.l ]
  %i.di = phi i32 [ %i.ab, %.critedge ], [ %i.bb, %bb.d ], [ %i.bb, %bb.f ], [ %i.ck, %bb.l ] ; 3 uses
  %.2181 = phi i64 [ 0, %.critedge ], [ %i.ba, %bb.d ], [ %i.ba, %bb.f ], [ 0, %bb.l ] ; 2 uses
  %.3173 = phi ptr [ %.0170, %.critedge ], [ %.0170, %bb.d ], [ %i.bg, %bb.f ], [ %i.ca, %bb.l ] ; 2 uses
  %i.dj = sub i32 32768, %i.di
  %. = tail call i32 @llvm.umin.i32(i32 %i.dj, i32 %i.dh) ; 2 uses
  store i32 %., ptr %i.h, align 4
  %i.dk = icmp ult i32 %i.di, 258
  %or.cond267 = select i1 %.not196, i1 %i.dk, i1 false
  br i1 %or.cond267, label %.critedge2, label %bb.m

bb.m:                                             ; preds = %.critedge4.thread, %.critedge4
  %.393 = phi i32 [ %.389, %.critedge4.thread ], [ %., %.critedge4 ] ; 4 uses
  %.3173392 = phi ptr [ %.2172282, %.critedge4.thread ], [ %.3173, %.critedge4 ] ; 2 uses
  %.2181391 = phi i64 [ %.1180281, %.critedge4.thread ], [ %.2181, %.critedge4 ] ; 2 uses
  %i.dl = phi i32 [ %umax, %.critedge4.thread ], [ %i.di, %.critedge4 ] ; 8 uses
  %i.dm = load i32, ptr %i.m, align 8             ; 6 uses
  %.not203 = icmp eq i32 %i.dm, 0                 ; 3 uses
  %spec.select = select i1 %.not203, i32 2, i32 %i.dm ; 8 uses
  %i.dn = load i32, ptr %i.i, align 4             ; 3 uses
  %i.do = and i32 %i.dn, 32767                    ; 9 uses
  %i.dp = load i32, ptr %i.n, align 8             ; 4 uses
  %i.dq = and i32 %i.dp, 589824
  %.not204 = icmp eq i32 %i.dq, 0
  br i1 %.not204, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.not205 = icmp ne i32 %.393, 0
  %i.dr = and i32 %i.dp, 524288
  %.not206 = icmp eq i32 %i.dr, 0
  %or.cond215 = and i1 %.not205, %.not206
  br i1 %or.cond215, label %bb.o, label %tdefl_find_match.exit

bb.o:                                             ; preds = %bb.n
  %i.ds = add i32 %i.dn, 32767
  %i.dt = and i32 %i.ds, 32767
  %i.du = zext nneg i32 %i.dt to i64
  %i.dv = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.du
  %i.dw = load i8, ptr %i.dv, align 1
  %.not335 = icmp eq i32 %i.dl, 0
  br i1 %.not335, label %._crit_edge, label %.lr.ph292.preheader

.lr.ph292.preheader:                              ; preds = %bb.o
  %wide.trip.count = zext i32 %i.dl to i64
  br label %.lr.ph292

.lr.ph292:                                        ; preds = %.lr.ph292.preheader, %bb.p
  %indvars.iv = phi i64 [ 0, %.lr.ph292.preheader ], [ %indvars.iv.next, %bb.p ] ; 2 uses
  %1 = trunc nuw i64 %indvars.iv to i32           ; 2 uses
  %2 = add i32 %i.do, %1
  %3 = zext i32 %2 to i64
  %i.dx = getelementptr inbounds nuw i8, ptr %i.j, i64 %3
  %i.dy = load i8, ptr %i.dx, align 1
  %.not207 = icmp eq i8 %i.dy, %i.dw
  br i1 %.not207, label %bb.p, label %._crit_edge

bb.p:                                             ; preds = %.lr.ph292
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond349.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond349.not, label %._crit_edge, label %.lr.ph292, !llvm.loop !271

._crit_edge:                                      ; preds = %bb.p, %.lr.ph292, %bb.o
  %storemerge.lcssa = phi i32 [ 0, %bb.o ], [ %1, %.lr.ph292 ], [ %i.dl, %bb.p ] ; 2 uses
  %i.dz = icmp ugt i32 %storemerge.lcssa, 2       ; 2 uses
  %spec.select268 = zext i1 %i.dz to i32
  %spec.select269 = select i1 %i.dz, i32 %storemerge.lcssa, i32 0
  br label %tdefl_find_match.exit

bb.q:                                             ; preds = %bb.m
  %i.ea = zext nneg i32 %i.do to i64
  %i.eb = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.ea
  %i.ec = add i32 %i.do, %spec.select             ; 2 uses
  %i.ed = zext i32 %i.ec to i64
  %i.ee = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.ed
  %i.ef = load i8, ptr %i.ee, align 1
  %i.eg = add i32 %i.ec, -1
  %i.eh = zext i32 %i.eg to i64
  %i.ei = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.eh
  %i.ej = load i8, ptr %i.ei, align 1
  %.not.i = icmp ugt i32 %i.dl, %spec.select
  br i1 %.not.i, label %.preheader, label %tdefl_find_match.exit

.preheader:                                       ; preds = %bb.q
  %i.ek = icmp ugt i32 %spec.select, 31
  %i.el = zext i1 %i.ek to i64
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.el
  %i.en = load i32, ptr %i.em, align 4
  %i.eo = add i32 %i.en, -1                       ; 2 uses
  %i.ep = icmp eq i32 %i.eo, 0
  br i1 %i.ep, label %tdefl_find_match.exit, label %.lr.ph298.lr.ph

.lr.ph298.lr.ph:                                  ; preds = %.preheader
  %i.eq = trunc i32 %i.dn to i16                  ; 3 uses
  br label %.lr.ph298

.lr.ph298:                                        ; preds = %.lr.ph298.lr.ph, %bb.al
  %i.er = phi i32 [ %i.eo, %.lr.ph298.lr.ph ], [ %i.ho, %bb.al ]
  %.0.i330 = phi i8 [ %i.ej, %.lr.ph298.lr.ph ], [ %.1.i, %bb.al ] ; 4 uses
  %.082.i329 = phi i8 [ %i.ef, %.lr.ph298.lr.ph ], [ %.183.i, %bb.al ] ; 4 uses
  %.089.i328 = phi i32 [ %i.do, %.lr.ph298.lr.ph ], [ %.2.i, %bb.al ]
  %.091.i327 = phi i32 [ %spec.select, %.lr.ph298.lr.ph ], [ %.192.i, %bb.al ] ; 5 uses
  %.2326 = phi i32 [ %spec.select, %.lr.ph298.lr.ph ], [ %.3241, %bb.al ] ; 9 uses
  %.2245325 = phi i32 [ 0, %.lr.ph298.lr.ph ], [ %.3246, %bb.al ] ; 9 uses
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph298, %bb.ad
  %i.es = phi i32 [ %i.er, %.lr.ph298 ], [ %i.gv, %bb.ad ] ; 2 uses
  %.190.i296 = phi i32 [ %.089.i328, %.lr.ph298 ], [ %i.gk, %bb.ad ]
  %i.et = zext nneg i32 %.190.i296 to i64
  %i.eu = getelementptr inbounds nuw [2 x i8], ptr %i.l, i64 %i.et
  %i.ev = load i16, ptr %i.eu, align 2            ; 3 uses
  %.not103.i = icmp eq i16 %i.ev, 0
  br i1 %.not103.i, label %tdefl_find_match.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ew = sub i16 %i.eq, %i.ev
  %i.ex = zext i16 %i.ew to i32                   ; 2 uses
  %i.ey = icmp ult i32 %.393, %i.ex
  br i1 %i.ey, label %tdefl_find_match.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ez = and i16 %i.ev, 32767                    ; 2 uses
  %i.fa = zext nneg i16 %i.ez to i32              ; 2 uses
  %i.fb = add i32 %.091.i327, %i.fa               ; 2 uses
  %i.fc = zext i32 %i.fb to i64
  %i.fd = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.fc
  %i.fe = load i8, ptr %i.fd, align 1
  %i.ff = icmp eq i8 %i.fe, %.082.i329
  br i1 %i.ff, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.fg = add i32 %i.fb, -1
  %i.fh = zext i32 %i.fg to i64
  %i.fi = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.fh
  %i.fj = load i8, ptr %i.fi, align 1
  %i.fk = icmp eq i8 %i.fj, %.0.i330
  br i1 %i.fk, label %bb.ae, label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.fl = zext nneg i16 %i.ez to i64
  %i.fm = getelementptr inbounds nuw [2 x i8], ptr %i.l, i64 %i.fl
  %i.fn = load i16, ptr %i.fm, align 2            ; 3 uses
  %.not104.i = icmp eq i16 %i.fn, 0
  br i1 %.not104.i, label %tdefl_find_match.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.fo = sub i16 %i.eq, %i.fn
  %i.fp = zext i16 %i.fo to i32                   ; 2 uses
  %i.fq = icmp ult i32 %.393, %i.fp
  br i1 %i.fq, label %tdefl_find_match.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.fr = and i16 %i.fn, 32767                    ; 2 uses
  %i.fs = zext nneg i16 %i.fr to i32              ; 2 uses
  %i.ft = add i32 %.091.i327, %i.fs               ; 2 uses
  %i.fu = zext i32 %i.ft to i64
  %i.fv = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.fu
  %i.fw = load i8, ptr %i.fv, align 1
  %i.fx = icmp eq i8 %i.fw, %.082.i329
  br i1 %i.fx, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.fy = add i32 %i.ft, -1
  %i.fz = zext i32 %i.fy to i64
  %i.ga = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.fz
  %i.gb = load i8, ptr %i.ga, align 1
  %i.gc = icmp eq i8 %i.gb, %.0.i330
  br i1 %i.gc, label %bb.ae, label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.gd = zext nneg i16 %i.fr to i64
  %i.ge = getelementptr inbounds nuw [2 x i8], ptr %i.l, i64 %i.gd
  %i.gf = load i16, ptr %i.ge, align 2            ; 3 uses
  %.not105.i = icmp eq i16 %i.gf, 0
  br i1 %.not105.i, label %tdefl_find_match.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.gg = sub i16 %i.eq, %i.gf
  %i.gh = zext i16 %i.gg to i32                   ; 2 uses
  %i.gi = icmp ult i32 %.393, %i.gh
  br i1 %i.gi, label %tdefl_find_match.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.gj = and i16 %i.gf, 32767
  %i.gk = zext nneg i16 %i.gj to i32              ; 3 uses
  %i.gl = add i32 %.091.i327, %i.gk               ; 2 uses
  %i.gm = zext i32 %i.gl to i64
  %i.gn = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.gm
  %i.go = load i8, ptr %i.gn, align 1
  %i.gp = icmp eq i8 %i.go, %.082.i329
  br i1 %i.gp, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.gq = add i32 %i.gl, -1
  %i.gr = zext i32 %i.gq to i64
  %i.gs = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.gr
  %i.gt = load i8, ptr %i.gs, align 1
  %i.gu = icmp eq i8 %i.gt, %.0.i330
  br i1 %i.gu, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.gv = add i32 %i.es, -1                       ; 2 uses
  %i.gw = icmp eq i32 %i.gv, 0
  br i1 %i.gw, label %tdefl_find_match.exit, label %bb.r

bb.ae:                                            ; preds = %bb.ac, %bb.y, %bb.u
  %.093.i = phi i32 [ %i.ex, %bb.u ], [ %i.fp, %bb.y ], [ %i.gh, %bb.ac ] ; 3 uses
  %.2.i = phi i32 [ %i.fa, %bb.u ], [ %i.fs, %bb.y ], [ %i.gk, %bb.ac ] ; 2 uses
  %.not106.i = icmp eq i32 %.093.i, 0
  br i1 %.not106.i, label %tdefl_find_match.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.gx = zext nneg i32 %.2.i to i64
  %i.gy = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.gx
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ah
  %.084.i324 = phi ptr [ %i.gy, %bb.af ], [ %i.hb, %bb.ah ] ; 2 uses
  %.085.i323 = phi ptr [ %i.eb, %bb.af ], [ %i.hc, %bb.ah ] ; 2 uses
  %.088.i322 = phi i32 [ 0, %bb.af ], [ %i.hd, %bb.ah ] ; 2 uses
  %i.gz = load i8, ptr %.085.i323, align 1
  %i.ha = load i8, ptr %.084.i324, align 1
  %.not107.i = icmp eq i8 %i.gz, %i.ha
  br i1 %.not107.i, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.hb = getelementptr inbounds nuw i8, ptr %.084.i324, i64 1
  %i.hc = getelementptr inbounds nuw i8, ptr %.085.i323, i64 1
  %i.hd = add nuw i32 %.088.i322, 1               ; 2 uses
  %exitcond350.not = icmp eq i32 %i.hd, %i.dl
  br i1 %exitcond350.not, label %bb.ai, label %bb.ag, !llvm.loop !272

bb.ai:                                            ; preds = %bb.ag, %bb.ah
  %.088.i.lcssa = phi i32 [ %.088.i322, %bb.ag ], [ %i.dl, %bb.ah ] ; 5 uses
  %i.he = icmp ugt i32 %.088.i.lcssa, %.091.i327
  br i1 %i.he, label %bb.aj, label %bb.al

bb.aj:                                            ; preds = %bb.ai
  %i.hf = icmp eq i32 %.088.i.lcssa, %i.dl
  br i1 %i.hf, label %tdefl_find_match.exit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.hg = add i32 %.088.i.lcssa, %i.do            ; 2 uses
  %i.hh = zext i32 %i.hg to i64
  %i.hi = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.hh
  %i.hj = load i8, ptr %i.hi, align 1
  %i.hk = add i32 %i.hg, -1
  %i.hl = zext i32 %i.hk to i64
  %i.hm = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.hl
  %i.hn = load i8, ptr %i.hm, align 1
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.ai
  %.3246 = phi i32 [ %.093.i, %bb.ak ], [ %.2245325, %bb.ai ] ; 2 uses
  %.3241 = phi i32 [ %.088.i.lcssa, %bb.ak ], [ %.2326, %bb.ai ] ; 2 uses
  %.192.i = phi i32 [ %.088.i.lcssa, %bb.ak ], [ %.091.i327, %bb.ai ]
  %.183.i = phi i8 [ %i.hj, %bb.ak ], [ %.082.i329, %bb.ai ]
  %.1.i = phi i8 [ %i.hn, %bb.ak ], [ %.0.i330, %bb.ai ]
  %i.ho = add i32 %i.es, -1                       ; 2 uses
  %i.hp = icmp eq i32 %i.ho, 0
  br i1 %i.hp, label %tdefl_find_match.exit, label %.lr.ph298

tdefl_find_match.exit:                            ; preds = %bb.aj, %bb.ae, %bb.al, %bb.ad, %bb.r, %bb.s, %bb.v, %bb.w, %bb.z, %bb.aa, %.preheader, %._crit_edge, %bb.q, %bb.n
end_hunk_8
begin_hunk_9_@tdefl_flush_block:bb.a

bb.bn:                                            ; preds = %bb.bm, %bb.bh
  %.0275 = phi i32 [ %i.ro, %bb.bm ], [ -1, %bb.bh ]
  ret i32 %.0275
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i32 0, 2) i32 @tdefl_compress_block(ptr nofree noundef nonnull %0, i32 noundef range(i32 0, 2) %1) unnamed_addr #10 {
bb.a:
  %i.a = alloca [320 x i8], align 16              ; 5 uses
  %i.b = alloca [320 x i8], align 16              ; 29 uses
  %i.c = alloca [33 x i32], align 16              ; 49 uses
  %i.d = alloca [33 x i32], align 16              ; 18 uses
  %i.e = alloca [33 x i32], align 16              ; 21 uses
  %i.f = alloca [33 x i32], align 16              ; 18 uses
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %bb.q, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %0, i64 36682      ; 6 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(144) %i.g, i8 8, i64 144, i1 false)
  %scevgep.i = getelementptr i8, ptr %0, i64 36826
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(112) %scevgep.i, i8 9, i64 112, i1 false)
  %scevgep73.i = getelementptr i8, ptr %0, i64 36938
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %scevgep73.i, i8 7, i64 24, i1 false)
  %scevgep74.i = getelementptr i8, ptr %0, i64 36962
  store i64 578721382704613384, ptr %scevgep74.i, align 1
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 36970 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %i.h, i8 5, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(132) %i.e, i8 0, i64 132, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %indvars.iv.i.i = phi i64 [ 0, %bb.b ], [ %indvars.iv.next.i.i.3, %bb.c ] ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 %indvars.iv.i.i
  %i.j = load i8, ptr %i.i, align 1
  %i.k = zext i8 %i.j to i64
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.k ; 2 uses
  %i.m = load i32, ptr %i.l, align 4
  %i.n = add nsw i32 %i.m, 1
  store i32 %i.n, ptr %i.l, align 4
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 %indvars.iv.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  %i.q = load i8, ptr %i.p, align 1
  %i.r = zext i8 %i.q to i64
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.r ; 2 uses
  %i.t = load i32, ptr %i.s, align 4
  %i.u = add nsw i32 %i.t, 1
  store i32 %i.u, ptr %i.s, align 4
  %i.v = getelementptr inbounds nuw i8, ptr %i.g, i64 %indvars.iv.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 2
  %i.x = load i8, ptr %i.w, align 1
  %i.y = zext i8 %i.x to i64
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.y ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4
  %i.ab = add nsw i32 %i.aa, 1
  store i32 %i.ab, ptr %i.z, align 4
  %i.ac = getelementptr inbounds nuw i8, ptr %i.g, i64 %indvars.iv.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 3
  %i.ae = load i8, ptr %i.ad, align 1
  %i.af = zext i8 %i.ae to i64
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.af ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 4
  %i.ai = add nsw i32 %i.ah, 1
  store i32 %i.ai, ptr %i.ag, align 4
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.3, 288
  br i1 %exitcond.not.i.i.3, label %.loopexit.loopexit.i.i, label %bb.c, !llvm.loop !294

.loopexit.loopexit.i.i:                           ; preds = %bb.c
  %i.aj = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  store i32 0, ptr %i.aj, align 4
  %i.ak = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.al = load i32, ptr %i.ak, align 4
  %i.am = shl i32 %i.al, 1                        ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i32 %i.am, ptr %i.an, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ap = load i32, ptr %i.ao, align 8
  %i.aq = add nsw i32 %i.ap, %i.am
  %i.ar = shl i32 %i.aq, 1                        ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  store i32 %i.ar, ptr %i.as, align 4
  %i.at = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  %i.au = load i32, ptr %i.at, align 4
  %i.av = add nsw i32 %i.au, %i.ar
  %i.aw = shl i32 %i.av, 1                        ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i32 %i.aw, ptr %i.ax, align 16
  %i.ay = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.az = load i32, ptr %i.ay, align 16
  %i.ba = add nsw i32 %i.az, %i.aw
  %i.bb = shl i32 %i.ba, 1                        ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.f, i64 20
  store i32 %i.bb, ptr %i.bc, align 4
  %i.bd = getelementptr inbounds nuw i8, ptr %i.e, i64 20
  %i.be = load i32, ptr %i.bd, align 4
  %i.bf = add nsw i32 %i.be, %i.bb
  %i.bg = shl i32 %i.bf, 1                        ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store i32 %i.bg, ptr %i.bh, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.bj = load i32, ptr %i.bi, align 8
  %i.bk = add nsw i32 %i.bj, %i.bg
  %i.bl = shl i32 %i.bk, 1                        ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.f, i64 28
  store i32 %i.bl, ptr %i.bm, align 4
  %i.bn = getelementptr inbounds nuw i8, ptr %i.e, i64 28
  %i.bo = load i32, ptr %i.bn, align 4
  %i.bp = add nsw i32 %i.bo, %i.bl
  %i.bq = shl i32 %i.bp, 1                        ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store i32 %i.bq, ptr %i.br, align 16
  %i.bs = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.bt = load i32, ptr %i.bs, align 16
  %i.bu = add nsw i32 %i.bt, %i.bq
  %i.bv = shl i32 %i.bu, 1                        ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.f, i64 36
  store i32 %i.bv, ptr %i.bw, align 4
  %i.bx = getelementptr inbounds nuw i8, ptr %i.e, i64 36
  %i.by = load i32, ptr %i.bx, align 4
  %i.bz = add nsw i32 %i.by, %i.bv
  %i.ca = shl i32 %i.bz, 1                        ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  store i32 %i.ca, ptr %i.cb, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.cd = load i32, ptr %i.cc, align 8
  %i.ce = add nsw i32 %i.cd, %i.ca
  %i.cf = shl i32 %i.ce, 1                        ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.f, i64 44
  store i32 %i.cf, ptr %i.cg, align 4
  %i.ch = getelementptr inbounds nuw i8, ptr %i.e, i64 44
  %i.ci = load i32, ptr %i.ch, align 4
  %i.cj = add nsw i32 %i.ci, %i.cf
  %i.ck = shl i32 %i.cj, 1                        ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  store i32 %i.ck, ptr %i.cl, align 16
  %i.cm = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.cn = load i32, ptr %i.cm, align 16
  %i.co = add nsw i32 %i.cn, %i.ck
  %i.cp = shl i32 %i.co, 1                        ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.f, i64 52
  store i32 %i.cp, ptr %i.cq, align 4
  %i.cr = getelementptr inbounds nuw i8, ptr %i.e, i64 52
  %i.cs = load i32, ptr %i.cr, align 4
  %i.ct = add nsw i32 %i.cs, %i.cp
  %i.cu = shl i32 %i.ct, 1                        ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  store i32 %i.cu, ptr %i.cv, align 8
  %i.cw = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %i.cx = load i32, ptr %i.cw, align 8
  %i.cy = add nsw i32 %i.cx, %i.cu
  %i.cz = shl i32 %i.cy, 1
  %i.da = getelementptr inbounds nuw i8, ptr %i.f, i64 60
  store i32 %i.cz, ptr %i.da, align 4
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 34954
  br label %bb.d

bb.d:                                             ; preds = %bb.h, %.loopexit.loopexit.i.i
  %indvars.iv147.i.i = phi i64 [ 0, %.loopexit.loopexit.i.i ], [ %indvars.iv.next148.i.i, %bb.h ] ; 3 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.g, i64 %indvars.iv147.i.i
  %i.dd = load i8, ptr %i.dc, align 1             ; 4 uses
  %i.de = icmp eq i8 %i.dd, 0
  br i1 %i.de, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.df = zext i8 %i.dd to i32                    ; 2 uses
  %i.dg = zext i8 %i.dd to i64
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.dg ; 2 uses
  %i.di = load i32, ptr %i.dh, align 4            ; 3 uses
  %i.dj = add i32 %i.di, 1
  store i32 %i.dj, ptr %i.dh, align 4
  %xtraiter = and i32 %i.df, 3                    ; 3 uses
  %i.dk = icmp ult i8 %i.dd, 4
  br i1 %i.dk, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.e
  %unroll_iter = and i32 %i.df, 252
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.new
  %.0115.i.i = phi i32 [ %i.di, %.new ], [ %i.dy, %bb.f ] ; 5 uses
  %.067114.i.i = phi i32 [ 0, %.new ], [ %i.dx, %bb.f ]
  %niter = phi i32 [ 0, %.new ], [ %niter.next.3, %bb.f ]
  %i.dl = shl i32 %.067114.i.i, 3
  %i.dm = shl i32 %.0115.i.i, 2
  %i.dn = and i32 %i.dm, 4
  %i.do = or disjoint i32 %i.dl, %i.dn
  %i.dp = and i32 %.0115.i.i, 2
  %i.dq = or disjoint i32 %i.do, %i.dp
  %i.dr = lshr i32 %.0115.i.i, 2
  %i.ds = and i32 %i.dr, 1
  %i.dt = or disjoint i32 %i.dq, %i.ds
  %i.du = lshr i32 %.0115.i.i, 3
  %i.dv = shl i32 %i.dt, 1
  %i.dw = and i32 %i.du, 1
  %i.dx = or disjoint i32 %i.dv, %i.dw            ; 3 uses
  %i.dy = lshr i32 %.0115.i.i, 4                  ; 2 uses
  %niter.next.3 = add i32 %niter, 4               ; 2 uses
  %niter.ncmp.3.not = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3.not, label %.unr-lcssa, label %bb.f, !llvm.loop !295

.unr-lcssa:                                       ; preds = %bb.f
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.epilog-lcssa, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %bb.e
  %.0115.i.i.epil.init = phi i32 [ %i.di, %bb.e ], [ %i.dy, %.unr-lcssa ]
  %.067114.i.i.epil.init = phi i32 [ 0, %bb.e ], [ %i.dx, %.unr-lcssa ]
  %lcmp.mod320 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod320)
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.epil.preheader
  %.0115.i.i.epil = phi i32 [ %.0115.i.i.epil.init, %.epil.preheader ], [ %i.ec, %bb.g ] ; 2 uses
  %.067114.i.i.epil = phi i32 [ %.067114.i.i.epil.init, %.epil.preheader ], [ %i.eb, %bb.g ]
  %epil.iter = phi i32 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.g ]
  %i.dz = shl i32 %.067114.i.i.epil, 1
  %i.ea = and i32 %.0115.i.i.epil, 1
  %i.eb = or disjoint i32 %i.dz, %i.ea            ; 2 uses
  %i.ec = lshr i32 %.0115.i.i.epil, 1
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %bb.g, !llvm.loop !296

.epilog-lcssa:                                    ; preds = %bb.g, %.unr-lcssa
  %.lcssa318 = phi i32 [ %i.dx, %.unr-lcssa ], [ %i.eb, %bb.g ]
  %i.ed = trunc i32 %.lcssa318 to i16
  %i.ee = getelementptr inbounds nuw [2 x i8], ptr %i.db, i64 %indvars.iv147.i.i
  store i16 %i.ed, ptr %i.ee, align 2
  br label %bb.h

bb.h:                                             ; preds = %.epilog-lcssa, %bb.d
  %indvars.iv.next148.i.i = add nuw nsw i64 %indvars.iv147.i.i, 1 ; 2 uses
  %exitcond151.not.i.i = icmp eq i64 %indvars.iv.next148.i.i, 288
  br i1 %exitcond151.not.i.i, label %tdefl_optimize_huffman_table.exit.i, label %bb.d, !llvm.loop !297

tdefl_optimize_huffman_table.exit.i:              ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(132) %i.c, i8 0, i64 132, i1 false)
  %i.ef = load i8, ptr %i.h, align 1
  %i.eg = zext i8 %i.ef to i64
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.eg ; 2 uses
  %i.ei = load i32, ptr %i.eh, align 4
  %i.ej = add nsw i32 %i.ei, 1
  store i32 %i.ej, ptr %i.eh, align 4
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 36971
  %i.el = load i8, ptr %i.ek, align 1
  %i.em = zext i8 %i.el to i64
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.em ; 2 uses
  %i.eo = load i32, ptr %i.en, align 4
  %i.ep = add nsw i32 %i.eo, 1
  store i32 %i.ep, ptr %i.en, align 4
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 36972
  %i.er = load i8, ptr %i.eq, align 1
  %i.es = zext i8 %i.er to i64
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.es ; 2 uses
  %i.eu = load i32, ptr %i.et, align 4
  %i.ev = add nsw i32 %i.eu, 1
  store i32 %i.ev, ptr %i.et, align 4
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 36973
  %i.ex = load i8, ptr %i.ew, align 1
  %i.ey = zext i8 %i.ex to i64
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ey ; 2 uses
  %i.fa = load i32, ptr %i.ez, align 4
  %i.fb = add nsw i32 %i.fa, 1
  store i32 %i.fb, ptr %i.ez, align 4
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 36974
  %i.fd = load i8, ptr %i.fc, align 1
  %i.fe = zext i8 %i.fd to i64
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.fe ; 2 uses
  %i.fg = load i32, ptr %i.ff, align 4
  %i.fh = add nsw i32 %i.fg, 1
  store i32 %i.fh, ptr %i.ff, align 4
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 36975
  %i.fj = load i8, ptr %i.fi, align 1
  %i.fk = zext i8 %i.fj to i64
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.fk ; 2 uses
  %i.fm = load i32, ptr %i.fl, align 4
  %i.fn = add nsw i32 %i.fm, 1
  store i32 %i.fn, ptr %i.fl, align 4
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 36976
  %i.fp = load i8, ptr %i.fo, align 1
  %i.fq = zext i8 %i.fp to i64
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.fq ; 2 uses
  %i.fs = load i32, ptr %i.fr, align 4
  %i.ft = add nsw i32 %i.fs, 1
  store i32 %i.ft, ptr %i.fr, align 4
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 36977
  %i.fv = load i8, ptr %i.fu, align 1
  %i.fw = zext i8 %i.fv to i64
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.fw ; 2 uses
  %i.fy = load i32, ptr %i.fx, align 4
  %i.fz = add nsw i32 %i.fy, 1
  store i32 %i.fz, ptr %i.fx, align 4
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 36978
  %i.gb = load i8, ptr %i.ga, align 1
  %i.gc = zext i8 %i.gb to i64
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.gc ; 2 uses
  %i.ge = load i32, ptr %i.gd, align 4
  %i.gf = add nsw i32 %i.ge, 1
  store i32 %i.gf, ptr %i.gd, align 4
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 36979
  %i.gh = load i8, ptr %i.gg, align 1
  %i.gi = zext i8 %i.gh to i64
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.gi ; 2 uses
  %i.gk = load i32, ptr %i.gj, align 4
  %i.gl = add nsw i32 %i.gk, 1
  store i32 %i.gl, ptr %i.gj, align 4
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 36980
  %i.gn = load i8, ptr %i.gm, align 1
  %i.go = zext i8 %i.gn to i64
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.go ; 2 uses
  %i.gq = load i32, ptr %i.gp, align 4
  %i.gr = add nsw i32 %i.gq, 1
  store i32 %i.gr, ptr %i.gp, align 4
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 36981
  %i.gt = load i8, ptr %i.gs, align 1
  %i.gu = zext i8 %i.gt to i64
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.gu ; 2 uses
  %i.gw = load i32, ptr %i.gv, align 4
  %i.gx = add nsw i32 %i.gw, 1
  store i32 %i.gx, ptr %i.gv, align 4
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 36982
  %i.gz = load i8, ptr %i.gy, align 1
  %i.ha = zext i8 %i.gz to i64
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ha ; 2 uses
  %i.hc = load i32, ptr %i.hb, align 4
  %i.hd = add nsw i32 %i.hc, 1
  store i32 %i.hd, ptr %i.hb, align 4
  %i.he = getelementptr inbounds nuw i8, ptr %0, i64 36983
  %i.hf = load i8, ptr %i.he, align 1
  %i.hg = zext i8 %i.hf to i64
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.hg ; 2 uses
  %i.hi = load i32, ptr %i.hh, align 4
  %i.hj = add nsw i32 %i.hi, 1
  store i32 %i.hj, ptr %i.hh, align 4
  %i.hk = getelementptr inbounds nuw i8, ptr %0, i64 36984
  %i.hl = load i8, ptr %i.hk, align 1
  %i.hm = zext i8 %i.hl to i64
  %i.hn = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.hm ; 2 uses
  %i.ho = load i32, ptr %i.hn, align 4
  %i.hp = add nsw i32 %i.ho, 1
  store i32 %i.hp, ptr %i.hn, align 4
  %i.hq = getelementptr inbounds nuw i8, ptr %0, i64 36985
  %i.hr = load i8, ptr %i.hq, align 1
  %i.hs = zext i8 %i.hr to i64
  %i.ht = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.hs ; 2 uses
  %i.hu = load i32, ptr %i.ht, align 4
  %i.hv = add nsw i32 %i.hu, 1
  store i32 %i.hv, ptr %i.ht, align 4
  %i.hw = getelementptr inbounds nuw i8, ptr %0, i64 36986
  %i.hx = load i8, ptr %i.hw, align 1
  %i.hy = zext i8 %i.hx to i64
  %i.hz = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.hy ; 2 uses
  %i.ia = load i32, ptr %i.hz, align 4
  %i.ib = add nsw i32 %i.ia, 1
  store i32 %i.ib, ptr %i.hz, align 4
  %i.ic = getelementptr inbounds nuw i8, ptr %0, i64 36987
  %i.id = load i8, ptr %i.ic, align 1
  %i.ie = zext i8 %i.id to i64
  %i.if = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ie ; 2 uses
  %i.ig = load i32, ptr %i.if, align 4
  %i.ih = add nsw i32 %i.ig, 1
  store i32 %i.ih, ptr %i.if, align 4
  %i.ii = getelementptr inbounds nuw i8, ptr %0, i64 36988
  %i.ij = load i8, ptr %i.ii, align 1
  %i.ik = zext i8 %i.ij to i64
  %i.il = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ik ; 2 uses
  %i.im = load i32, ptr %i.il, align 4
  %i.in = add nsw i32 %i.im, 1
  store i32 %i.in, ptr %i.il, align 4
  %i.io = getelementptr inbounds nuw i8, ptr %0, i64 36989
  %i.ip = load i8, ptr %i.io, align 1
  %i.iq = zext i8 %i.ip to i64
  %i.ir = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.iq ; 2 uses
  %i.is = load i32, ptr %i.ir, align 4
  %i.it = add nsw i32 %i.is, 1
  store i32 %i.it, ptr %i.ir, align 4
  %i.iu = getelementptr inbounds nuw i8, ptr %0, i64 36990
  %i.iv = load i8, ptr %i.iu, align 1
  %i.iw = zext i8 %i.iv to i64
  %i.ix = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.iw ; 2 uses
  %i.iy = load i32, ptr %i.ix, align 4
  %i.iz = add nsw i32 %i.iy, 1
  store i32 %i.iz, ptr %i.ix, align 4
  %i.ja = getelementptr inbounds nuw i8, ptr %0, i64 36991
  %i.jb = load i8, ptr %i.ja, align 1
  %i.jc = zext i8 %i.jb to i64
  %i.jd = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.jc ; 2 uses
  %i.je = load i32, ptr %i.jd, align 4
  %i.jf = add nsw i32 %i.je, 1
  store i32 %i.jf, ptr %i.jd, align 4
  %i.jg = getelementptr inbounds nuw i8, ptr %0, i64 36992
  %i.jh = load i8, ptr %i.jg, align 1
  %i.ji = zext i8 %i.jh to i64
  %i.jj = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ji ; 2 uses
  %i.jk = load i32, ptr %i.jj, align 4
  %i.jl = add nsw i32 %i.jk, 1
  store i32 %i.jl, ptr %i.jj, align 4
  %i.jm = getelementptr inbounds nuw i8, ptr %0, i64 36993
  %i.jn = load i8, ptr %i.jm, align 1
  %i.jo = zext i8 %i.jn to i64
  %i.jp = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.jo ; 2 uses
  %i.jq = load i32, ptr %i.jp, align 4
  %i.jr = add nsw i32 %i.jq, 1
  store i32 %i.jr, ptr %i.jp, align 4
  %i.js = getelementptr inbounds nuw i8, ptr %0, i64 36994
  %i.jt = load i8, ptr %i.js, align 1
  %i.ju = zext i8 %i.jt to i64
  %i.jv = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ju ; 2 uses
  %i.jw = load i32, ptr %i.jv, align 4
  %i.jx = add nsw i32 %i.jw, 1
  store i32 %i.jx, ptr %i.jv, align 4
  %i.jy = getelementptr inbounds nuw i8, ptr %0, i64 36995
  %i.jz = load i8, ptr %i.jy, align 1
  %i.ka = zext i8 %i.jz to i64
  %i.kb = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ka ; 2 uses
  %i.kc = load i32, ptr %i.kb, align 4
  %i.kd = add nsw i32 %i.kc, 1
  store i32 %i.kd, ptr %i.kb, align 4
  %i.ke = getelementptr inbounds nuw i8, ptr %0, i64 36996
  %i.kf = load i8, ptr %i.ke, align 1
  %i.kg = zext i8 %i.kf to i64
  %i.kh = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.kg ; 2 uses
  %i.ki = load i32, ptr %i.kh, align 4
  %i.kj = add nsw i32 %i.ki, 1
  store i32 %i.kj, ptr %i.kh, align 4
  %i.kk = getelementptr inbounds nuw i8, ptr %0, i64 36997
  %i.kl = load i8, ptr %i.kk, align 1
  %i.km = zext i8 %i.kl to i64
  %i.kn = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.km ; 2 uses
  %i.ko = load i32, ptr %i.kn, align 4
  %i.kp = add nsw i32 %i.ko, 1
  store i32 %i.kp, ptr %i.kn, align 4
  %i.kq = getelementptr inbounds nuw i8, ptr %0, i64 36998
  %i.kr = load i8, ptr %i.kq, align 1
  %i.ks = zext i8 %i.kr to i64
  %i.kt = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ks ; 2 uses
  %i.ku = load i32, ptr %i.kt, align 4
  %i.kv = add nsw i32 %i.ku, 1
  store i32 %i.kv, ptr %i.kt, align 4
  %i.kw = getelementptr inbounds nuw i8, ptr %0, i64 36999
  %i.kx = load i8, ptr %i.kw, align 1
  %i.ky = zext i8 %i.kx to i64
  %i.kz = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ky ; 2 uses
  %i.la = load i32, ptr %i.kz, align 4
  %i.lb = add nsw i32 %i.la, 1
  store i32 %i.lb, ptr %i.kz, align 4
  %i.lc = getelementptr inbounds nuw i8, ptr %0, i64 37000
  %i.ld = load i8, ptr %i.lc, align 1
  %i.le = zext i8 %i.ld to i64
  %i.lf = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.le ; 2 uses
  %i.lg = load i32, ptr %i.lf, align 4
  %i.lh = add nsw i32 %i.lg, 1
  store i32 %i.lh, ptr %i.lf, align 4
  %i.li = getelementptr inbounds nuw i8, ptr %0, i64 37001
  %i.lj = load i8, ptr %i.li, align 1
  %i.lk = zext i8 %i.lj to i64
  %i.ll = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.lk ; 2 uses
  %i.lm = load i32, ptr %i.ll, align 4
  %i.ln = add nsw i32 %i.lm, 1
  store i32 %i.ln, ptr %i.ll, align 4
  %i.lo = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  store i32 0, ptr %i.lo, align 4
  %i.lp = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.lq = load i32, ptr %i.lp, align 4
  %i.lr = shl i32 %i.lq, 1                        ; 2 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i32 %i.lr, ptr %i.ls, align 8
  %i.lt = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.lu = load i32, ptr %i.lt, align 8
  %i.lv = add nsw i32 %i.lu, %i.lr
  %i.lw = shl i32 %i.lv, 1                        ; 2 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  store i32 %i.lw, ptr %i.lx, align 4
  %i.ly = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.lz = load i32, ptr %i.ly, align 4
  %i.ma = add nsw i32 %i.lz, %i.lw
  %i.mb = shl i32 %i.ma, 1                        ; 2 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i32 %i.mb, ptr %i.mc, align 16
  %i.md = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.me = load i32, ptr %i.md, align 16
  %i.mf = add nsw i32 %i.me, %i.mb
  %i.mg = shl i32 %i.mf, 1                        ; 2 uses
  %i.mh = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  store i32 %i.mg, ptr %i.mh, align 4
  %i.mi = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  %i.mj = load i32, ptr %i.mi, align 4
  %i.mk = add nsw i32 %i.mj, %i.mg
  %i.ml = shl i32 %i.mk, 1                        ; 2 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i32 %i.ml, ptr %i.mm, align 8
  %i.mn = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.mo = load i32, ptr %i.mn, align 8
  %i.mp = add nsw i32 %i.mo, %i.ml
  %i.mq = shl i32 %i.mp, 1                        ; 2 uses
  %i.mr = getelementptr inbounds nuw i8, ptr %i.d, i64 28
  store i32 %i.mq, ptr %i.mr, align 4
  %i.ms = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  %i.mt = load i32, ptr %i.ms, align 4
  %i.mu = add nsw i32 %i.mt, %i.mq
  %i.mv = shl i32 %i.mu, 1                        ; 2 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store i32 %i.mv, ptr %i.mw, align 16
  %i.mx = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.my = load i32, ptr %i.mx, align 16
  %i.mz = add nsw i32 %i.my, %i.mv
  %i.na = shl i32 %i.mz, 1                        ; 2 uses
  %i.nb = getelementptr inbounds nuw i8, ptr %i.d, i64 36
  store i32 %i.na, ptr %i.nb, align 4
  %i.nc = getelementptr inbounds nuw i8, ptr %i.c, i64 36
  %i.nd = load i32, ptr %i.nc, align 4
  %i.ne = add nsw i32 %i.nd, %i.na
  %i.nf = shl i32 %i.ne, 1                        ; 2 uses
  %i.ng = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store i32 %i.nf, ptr %i.ng, align 8
  %i.nh = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.ni = load i32, ptr %i.nh, align 8
  %i.nj = add nsw i32 %i.ni, %i.nf
  %i.nk = shl i32 %i.nj, 1                        ; 2 uses
  %i.nl = getelementptr inbounds nuw i8, ptr %i.d, i64 44
  store i32 %i.nk, ptr %i.nl, align 4
  %i.nm = getelementptr inbounds nuw i8, ptr %i.c, i64 44
  %i.nn = load i32, ptr %i.nm, align 4
  %i.no = add nsw i32 %i.nn, %i.nk
  %i.np = shl i32 %i.no, 1                        ; 2 uses
  %i.nq = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  store i32 %i.np, ptr %i.nq, align 16
  %i.nr = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.ns = load i32, ptr %i.nr, align 16
  %i.nt = add nsw i32 %i.ns, %i.np
  %i.nu = shl i32 %i.nt, 1                        ; 2 uses
  %i.nv = getelementptr inbounds nuw i8, ptr %i.d, i64 52
  store i32 %i.nu, ptr %i.nv, align 4
  %i.nw = getelementptr inbounds nuw i8, ptr %i.c, i64 52
  %i.nx = load i32, ptr %i.nw, align 4
  %i.ny = add nsw i32 %i.nx, %i.nu
  %i.nz = shl i32 %i.ny, 1                        ; 2 uses
  %i.oa = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  store i32 %i.nz, ptr %i.oa, align 8
  %i.ob = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.oc = load i32, ptr %i.ob, align 8
  %i.od = add nsw i32 %i.oc, %i.nz
  %i.oe = shl i32 %i.od, 1
  %i.of = getelementptr inbounds nuw i8, ptr %i.d, i64 60
  store i32 %i.oe, ptr %i.of, align 4
  %i.og = getelementptr inbounds nuw i8, ptr %0, i64 35530
  br label %bb.i

bb.i:                                             ; preds = %bb.m, %tdefl_optimize_huffman_table.exit.i
  %indvars.iv147.i41.i = phi i64 [ 0, %tdefl_optimize_huffman_table.exit.i ], [ %indvars.iv.next148.i45.i, %bb.m ] ; 3 uses
  %i.oh = getelementptr inbounds nuw i8, ptr %i.h, i64 %indvars.iv147.i41.i
  %i.oi = load i8, ptr %i.oh, align 1             ; 4 uses
  %i.oj = icmp eq i8 %i.oi, 0
  br i1 %i.oj, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ok = zext i8 %i.oi to i32                    ; 2 uses
  %i.ol = zext i8 %i.oi to i64
  %i.om = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ol ; 2 uses
  %i.on = load i32, ptr %i.om, align 4            ; 3 uses
  %i.oo = add i32 %i.on, 1
  store i32 %i.oo, ptr %i.om, align 4
  %xtraiter324 = and i32 %i.ok, 3                 ; 3 uses
  %i.op = icmp ult i8 %i.oi, 4
  br i1 %i.op, label %.epil.preheader323, label %.new321

.new321:                                          ; preds = %bb.j
  %unroll_iter330 = and i32 %i.ok, 252
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %.new321
  %.0115.i42.i = phi i32 [ %i.on, %.new321 ], [ %i.pd, %bb.k ] ; 5 uses
  %.067114.i43.i = phi i32 [ 0, %.new321 ], [ %i.pc, %bb.k ]
  %niter331 = phi i32 [ 0, %.new321 ], [ %niter331.next.3, %bb.k ]
  %i.oq = shl i32 %.067114.i43.i, 3
  %i.or = shl i32 %.0115.i42.i, 2
  %i.os = and i32 %i.or, 4
  %i.ot = or disjoint i32 %i.oq, %i.os
  %i.ou = and i32 %.0115.i42.i, 2
  %i.ov = or disjoint i32 %i.ot, %i.ou
  %i.ow = lshr i32 %.0115.i42.i, 2
  %i.ox = and i32 %i.ow, 1
  %i.oy = or disjoint i32 %i.ov, %i.ox
  %i.oz = lshr i32 %.0115.i42.i, 3
  %i.pa = shl i32 %i.oy, 1
  %i.pb = and i32 %i.oz, 1
  %i.pc = or disjoint i32 %i.pa, %i.pb            ; 3 uses
  %i.pd = lshr i32 %.0115.i42.i, 4                ; 2 uses
  %niter331.next.3 = add i32 %niter331, 4         ; 2 uses
  %niter331.ncmp.3.not = icmp eq i32 %niter331.next.3, %unroll_iter330
  br i1 %niter331.ncmp.3.not, label %.unr-lcssa322, label %bb.k, !llvm.loop !295

.unr-lcssa322:                                    ; preds = %bb.k
  %lcmp.mod326.not = icmp eq i32 %xtraiter324, 0
  br i1 %lcmp.mod326.not, label %.epilog-lcssa327, label %.epil.preheader323

.epil.preheader323:                               ; preds = %.unr-lcssa322, %bb.j
  %.0115.i42.i.epil.init = phi i32 [ %i.on, %bb.j ], [ %i.pd, %.unr-lcssa322 ]
  %.067114.i43.i.epil.init = phi i32 [ 0, %bb.j ], [ %i.pc, %.unr-lcssa322 ]
  %lcmp.mod329 = icmp ne i32 %xtraiter324, 0
  tail call void @llvm.assume(i1 %lcmp.mod329)
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.epil.preheader323
  %.0115.i42.i.epil = phi i32 [ %.0115.i42.i.epil.init, %.epil.preheader323 ], [ %i.ph, %bb.l ] ; 2 uses
  %.067114.i43.i.epil = phi i32 [ %.067114.i43.i.epil.init, %.epil.preheader323 ], [ %i.pg, %bb.l ]
  %epil.iter325 = phi i32 [ 0, %.epil.preheader323 ], [ %epil.iter325.next, %bb.l ]
  %i.pe = shl i32 %.067114.i43.i.epil, 1
  %i.pf = and i32 %.0115.i42.i.epil, 1
  %i.pg = or disjoint i32 %i.pe, %i.pf            ; 2 uses
  %i.ph = lshr i32 %.0115.i42.i.epil, 1
  %epil.iter325.next = add i32 %epil.iter325, 1   ; 2 uses
  %epil.iter325.cmp.not = icmp eq i32 %epil.iter325.next, %xtraiter324
  br i1 %epil.iter325.cmp.not, label %.epilog-lcssa327, label %bb.l, !llvm.loop !298

.epilog-lcssa327:                                 ; preds = %bb.l, %.unr-lcssa322
  %.lcssa317 = phi i32 [ %i.pc, %.unr-lcssa322 ], [ %i.pg, %bb.l ]
  %i.pi = trunc i32 %.lcssa317 to i16
  %i.pj = getelementptr inbounds nuw [2 x i8], ptr %i.og, i64 %indvars.iv147.i41.i
  store i16 %i.pi, ptr %i.pj, align 2
  br label %bb.m

bb.m:                                             ; preds = %.epilog-lcssa327, %bb.i
  %indvars.iv.next148.i45.i = add nuw nsw i64 %indvars.iv147.i41.i, 1 ; 2 uses
  %exitcond151.not.i46.i = icmp eq i64 %indvars.iv.next148.i45.i, 32
  br i1 %exitcond151.not.i46.i, label %tdefl_optimize_huffman_table.exit47.i, label %bb.i, !llvm.loop !297

tdefl_optimize_huffman_table.exit47.i:            ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  %i.pk = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 4 uses
  %i.pl = load i32, ptr %i.pk, align 4            ; 2 uses
  %i.pm = shl nuw i32 1, %i.pl
  %i.pn = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 4 uses
  %i.po = load i32, ptr %i.pn, align 8
  %i.pp = or i32 %i.po, %i.pm                     ; 3 uses
  store i32 %i.pp, ptr %i.pn, align 8
  %i.pq = add i32 %i.pl, 2                        ; 4 uses
  store i32 %i.pq, ptr %i.pk, align 4
  %i.pr = icmp ugt i32 %i.pq, 7
  br i1 %i.pr, label %.lr.ph64.i, label %tdefl_start_static_block.exit

.lr.ph64.i:                                       ; preds = %tdefl_optimize_huffman_table.exit47.i
  %i.ps = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.pt = getelementptr inbounds nuw i8, ptr %0, i64 72
  br label %bb.n

bb.n:                                             ; preds = %bb.p, %.lr.ph64.i
  %i.pu = phi i32 [ %i.pq, %.lr.ph64.i ], [ %i.qe, %bb.p ]
  %i.pv = phi i32 [ %i.pp, %.lr.ph64.i ], [ %i.qd, %bb.p ] ; 2 uses
  %i.pw = load ptr, ptr %i.ps, align 8            ; 3 uses
  %i.px = load ptr, ptr %i.pt, align 8
  %i.py = icmp ult ptr %i.pw, %i.px
  br i1 %i.py, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.pz = trunc i32 %i.pv to i8
  %i.qa = getelementptr inbounds nuw i8, ptr %i.pw, i64 1
  store ptr %i.qa, ptr %i.ps, align 8
  store i8 %i.pz, ptr %i.pw, align 1
  %.pre.i = load i32, ptr %i.pn, align 8
  %.pre75.i = load i32, ptr %i.pk, align 4
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.qb = phi i32 [ %.pre75.i, %bb.o ], [ %i.pu, %bb.n ]
  %i.qc = phi i32 [ %.pre.i, %bb.o ], [ %i.pv, %bb.n ]
  %i.qd = lshr i32 %i.qc, 8                       ; 3 uses
  store i32 %i.qd, ptr %i.pn, align 8
  %i.qe = add i32 %i.qb, -8                       ; 4 uses
  store i32 %i.qe, ptr %i.pk, align 4
  %i.qf = icmp ugt i32 %i.qe, 7
  br i1 %i.qf, label %bb.n, label %tdefl_start_static_block.exit, !llvm.loop !299

bb.q:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  %i.qg = getelementptr inbounds nuw i8, ptr %0, i64 33738
  store i16 1, ptr %i.qg, align 2
  tail call fastcc void @tdefl_optimize_huffman_table(ptr noundef nonnull %0, i32 noundef 0, i32 noundef 288, i32 noundef 15, i32 noundef 0)
  tail call fastcc void @tdefl_optimize_huffman_table(ptr noundef nonnull %0, i32 noundef 1, i32 noundef 32, i32 noundef 15, i32 noundef 0)
  %i.qh = getelementptr i8, ptr %0, i64 36967
  %i.qi = load i8, ptr %i.qh, align 1
  %.not.i = icmp eq i8 %i.qi, 0
  br i1 %.not.i, label %bb.r, label %bb.at

bb.r:                                             ; preds = %bb.q
  %i.qj = getelementptr i8, ptr %0, i64 36966
  %i.qk = load i8, ptr %i.qj, align 2
  %.not.1.i = icmp eq i8 %i.qk, 0
  br i1 %.not.1.i, label %bb.s, label %bb.at

bb.s:                                             ; preds = %bb.r
  %i.ql = getelementptr i8, ptr %0, i64 36965
  %i.qm = load i8, ptr %i.ql, align 1
  %.not.2.i = icmp eq i8 %i.qm, 0
  br i1 %.not.2.i, label %bb.t, label %bb.at

bb.t:                                             ; preds = %bb.s
  %i.qn = getelementptr i8, ptr %0, i64 36964
  %i.qo = load i8, ptr %i.qn, align 2
  %.not.3.i = icmp eq i8 %i.qo, 0
  br i1 %.not.3.i, label %bb.u, label %bb.at

bb.u:                                             ; preds = %bb.t
  %i.qp = getelementptr i8, ptr %0, i64 36963
  %i.qq = load i8, ptr %i.qp, align 1
  %.not.4.i = icmp eq i8 %i.qq, 0
  br i1 %.not.4.i, label %bb.v, label %bb.at

bb.v:                                             ; preds = %bb.u
  %i.qr = getelementptr i8, ptr %0, i64 36962
  %i.qs = load i8, ptr %i.qr, align 2
  %.not.5.i = icmp eq i8 %i.qs, 0
  br i1 %.not.5.i, label %bb.w, label %bb.at

bb.w:                                             ; preds = %bb.v
  %i.qt = getelementptr i8, ptr %0, i64 36961
  %i.qu = load i8, ptr %i.qt, align 1
  %.not.6.i = icmp eq i8 %i.qu, 0
  br i1 %.not.6.i, label %bb.x, label %bb.at

bb.x:                                             ; preds = %bb.w
  %i.qv = getelementptr i8, ptr %0, i64 36960
  %i.qw = load i8, ptr %i.qv, align 2
  %.not.7.i = icmp eq i8 %i.qw, 0
  br i1 %.not.7.i, label %bb.y, label %bb.at

bb.y:                                             ; preds = %bb.x
  %i.qx = getelementptr i8, ptr %0, i64 36959
  %i.qy = load i8, ptr %i.qx, align 1
  %.not.8.i = icmp eq i8 %i.qy, 0
  br i1 %.not.8.i, label %bb.z, label %bb.at

bb.z:                                             ; preds = %bb.y
  %i.qz = getelementptr i8, ptr %0, i64 36958
  %i.ra = load i8, ptr %i.qz, align 2
  %.not.9.i = icmp eq i8 %i.ra, 0
  br i1 %.not.9.i, label %bb.aa, label %bb.at

bb.aa:                                            ; preds = %bb.z
  %i.rb = getelementptr i8, ptr %0, i64 36957
  %i.rc = load i8, ptr %i.rb, align 1
  %.not.10.i = icmp eq i8 %i.rc, 0
  br i1 %.not.10.i, label %bb.ab, label %bb.at

bb.ab:                                            ; preds = %bb.aa
  %i.rd = getelementptr i8, ptr %0, i64 36956
  %i.re = load i8, ptr %i.rd, align 2
  %.not.11.i = icmp eq i8 %i.re, 0
  br i1 %.not.11.i, label %bb.ac, label %bb.at

bb.ac:                                            ; preds = %bb.ab
  %i.rf = getelementptr i8, ptr %0, i64 36955
  %i.rg = load i8, ptr %i.rf, align 1
  %.not.12.i = icmp eq i8 %i.rg, 0
  br i1 %.not.12.i, label %bb.ad, label %bb.at

bb.ad:                                            ; preds = %bb.ac
  %i.rh = getelementptr i8, ptr %0, i64 36954
  %i.ri = load i8, ptr %i.rh, align 2
  %.not.13.i = icmp eq i8 %i.ri, 0
  br i1 %.not.13.i, label %bb.ae, label %bb.at

bb.ae:                                            ; preds = %bb.ad
  %i.rj = getelementptr i8, ptr %0, i64 36953
  %i.rk = load i8, ptr %i.rj, align 1
  %.not.14.i = icmp eq i8 %i.rk, 0
  br i1 %.not.14.i, label %bb.af, label %bb.at

bb.af:                                            ; preds = %bb.ae
  %i.rl = getelementptr i8, ptr %0, i64 36952
  %i.rm = load i8, ptr %i.rl, align 2
  %.not.15.i = icmp eq i8 %i.rm, 0
  br i1 %.not.15.i, label %bb.ag, label %bb.at

bb.ag:                                            ; preds = %bb.af
  %i.rn = getelementptr i8, ptr %0, i64 36951
  %i.ro = load i8, ptr %i.rn, align 1
  %.not.16.i = icmp eq i8 %i.ro, 0
  br i1 %.not.16.i, label %bb.ah, label %bb.at

bb.ah:                                            ; preds = %bb.ag
  %i.rp = getelementptr i8, ptr %0, i64 36950
  %i.rq = load i8, ptr %i.rp, align 2
  %.not.17.i = icmp eq i8 %i.rq, 0
  br i1 %.not.17.i, label %bb.ai, label %bb.at

bb.ai:                                            ; preds = %bb.ah
end_hunk_9
begin_hunk_10_@tdefl_optimize_huffman_table:bb.a
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.q ; 2 uses
  %i.s = load i32, ptr %i.r, align 4
  %i.t = add nsw i32 %i.s, 1
  store i32 %i.t, ptr %i.r, align 4
  %i.u = getelementptr inbounds nuw i8, ptr %i.g, i64 %indvars.iv
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 2
  %i.w = load i8, ptr %i.v, align 1
  %i.x = zext i8 %i.w to i64
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.x ; 2 uses
  %i.z = load i32, ptr %i.y, align 4
  %i.aa = add nsw i32 %i.z, 1
  store i32 %i.aa, ptr %i.y, align 4
  %i.ab = getelementptr inbounds nuw i8, ptr %i.g, i64 %indvars.iv
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 3
  %i.ad = load i8, ptr %i.ac, align 1
  %i.ae = zext i8 %i.ad to i64
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ae ; 2 uses
  %i.ag = load i32, ptr %i.af, align 4
  %i.ah = add nsw i32 %i.ag, 1
  store i32 %i.ah, ptr %i.af, align 4
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add nuw nsw i64 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.loopexit.unr-lcssa, label %bb.b, !llvm.loop !294

.new:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 33226
  %i.aj = zext nneg i32 %1 to i64                 ; 3 uses
  %i.ak = getelementptr inbounds nuw [576 x i8], ptr %i.ai, i64 %i.aj ; 3 uses
  %wide.trip.count126 = zext nneg i32 %2 to i64   ; 2 uses
  %xtraiter190 = and i64 %wide.trip.count126, 1
  %unroll_iter195 = and i64 %wide.trip.count126, 510
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %.new
  %indvars.iv123 = phi i64 [ 0, %.new ], [ %indvars.iv.next124.1, %bb.g ] ; 4 uses
  %.068102 = phi i32 [ 0, %.new ], [ %.1.1, %bb.g ] ; 3 uses
  %niter196 = phi i64 [ 0, %.new ], [ %niter196.next.1, %bb.g ]
  %i.al = getelementptr inbounds nuw [2 x i8], ptr %i.ak, i64 %indvars.iv123
  %i.am = load i16, ptr %i.al, align 2            ; 2 uses
  %.not79 = icmp eq i16 %i.am, 0
  br i1 %.not79, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.an = sext i32 %.068102 to i64
  %i.ao = getelementptr inbounds [4 x i8], ptr %5, i64 %i.an ; 2 uses
  store i16 %i.am, ptr %i.ao, align 4
  %i.ap = trunc i64 %indvars.iv123 to i16
  %i.aq = add nsw i32 %.068102, 1
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 2
  store i16 %i.ap, ptr %i.ar, align 2
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.1 = phi i32 [ %i.aq, %bb.d ], [ %.068102, %bb.c ] ; 3 uses
  %indvars.iv.next124 = or disjoint i64 %indvars.iv123, 1 ; 2 uses
  %i.as = getelementptr inbounds nuw [2 x i8], ptr %i.ak, i64 %indvars.iv.next124
  %i.at = load i16, ptr %i.as, align 2            ; 2 uses
  %.not79.1 = icmp eq i16 %i.at, 0
  br i1 %.not79.1, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.au = sext i32 %.1 to i64
  %i.av = getelementptr inbounds [4 x i8], ptr %5, i64 %i.au ; 2 uses
  store i16 %i.at, ptr %i.av, align 4
  %i.aw = trunc i64 %indvars.iv.next124 to i16
  %i.ax = add nsw i32 %.1, 1
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 2
  store i16 %i.aw, ptr %i.ay, align 2
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.1.1 = phi i32 [ %i.ax, %bb.f ], [ %.1, %bb.e ] ; 5 uses
  %indvars.iv.next124.1 = add nuw nsw i64 %indvars.iv123, 2 ; 3 uses
  %niter196.next.1 = add nuw nsw i64 %niter196, 2 ; 2 uses
  %niter196.ncmp.1 = icmp eq i64 %niter196.next.1, %unroll_iter195
  br i1 %niter196.ncmp.1, label %.unr-lcssa, label %bb.c, !llvm.loop !324

.unr-lcssa:                                       ; preds = %bb.g
  %lcmp.mod192.not = icmp eq i64 %xtraiter190, 0
  br i1 %lcmp.mod192.not, label %.epilog-lcssa, label %.epil.preheader189

.epil.preheader189:                               ; preds = %.unr-lcssa
  %lcmp.mod194 = trunc i32 %2 to i1
  tail call void @llvm.assume(i1 %lcmp.mod194)
  %i.az = getelementptr inbounds nuw [2 x i8], ptr %i.ak, i64 %indvars.iv.next124.1
  %i.ba = load i16, ptr %i.az, align 2            ; 2 uses
  %.not79.epil = icmp eq i16 %i.ba, 0
  br i1 %.not79.epil, label %.epilog-lcssa, label %bb.h

bb.h:                                             ; preds = %.epil.preheader189
  %i.bb = sext i32 %.1.1 to i64
  %i.bc = getelementptr inbounds [4 x i8], ptr %5, i64 %i.bb ; 2 uses
  store i16 %i.ba, ptr %i.bc, align 4
  %i.bd = trunc i64 %indvars.iv.next124.1 to i16
  %i.be = add nsw i32 %.1.1, 1
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 2
  store i16 %i.bd, ptr %i.bf, align 2
  br label %.epilog-lcssa

.epilog-lcssa:                                    ; preds = %.epil.preheader189, %bb.h, %.unr-lcssa
  %.1.lcssa = phi i32 [ %.1.1, %.unr-lcssa ], [ %i.be, %bb.h ], [ %.1.1, %.epil.preheader189 ] ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(2048) %i.a, i8 0, i64 2048, i1 false)
  %.not.i = icmp eq i32 %.1.lcssa, 0
  br i1 %.not.i, label %.critedge.preheader.split55.i.preheader, label %.lr.ph.preheader.i

.critedge.preheader.split55.i.preheader:          ; preds = %.epilog-lcssa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  br label %bb.j

.lr.ph.preheader.i:                               ; preds = %.epilog-lcssa
  %wide.trip.count.i = zext i32 %.1.lcssa to i64  ; 7 uses
  %i.bg = add nsw i64 %wide.trip.count.i, -1      ; 2 uses
  %xtraiter197 = and i64 %wide.trip.count.i, 1
  %i.bh = icmp eq i64 %i.bg, 0
  br i1 %i.bh, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter201 = and i64 %wide.trip.count.i, 4294967294
  br label %.lr.ph.i

.preheader45.i.unr-lcssa:                         ; preds = %.lr.ph.i
  %lcmp.mod199.not = icmp eq i64 %xtraiter197, 0
  br i1 %lcmp.mod199.not, label %.preheader45.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %.preheader45.i.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i.1, %.preheader45.i.unr-lcssa ]
  %lcmp.mod200 = trunc i32 %.1.lcssa to i1
  tail call void @llvm.assume(i1 %lcmp.mod200)
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv.i.epil.init
  %i.bj = load i16, ptr %i.bi, align 4
  %i.bk = zext i16 %i.bj to i32                   ; 2 uses
  %i.bl = and i32 %i.bk, 255
  %i.bm = zext nneg i32 %i.bl to i64
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.bm ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 4
  %i.bp = add i32 %i.bo, 1
  store i32 %i.bp, ptr %i.bn, align 4
  %i.bq = lshr i32 %i.bk, 8
  %i.br = zext nneg i32 %i.bq to i64
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.br
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 1024 ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 4
  %i.bv = add i32 %i.bu, 1
  store i32 %i.bv, ptr %i.bt, align 4
  br label %.preheader45.i

.preheader45.i:                                   ; preds = %.preheader45.i.unr-lcssa, %.lr.ph.i.epil.preheader
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.a, i64 1024
  %.pre.i = load i32, ptr %.phi.trans.insert.i, align 16
  %i.bw = freeze i32 %.pre.i
  %i.bx = icmp eq i32 %.1.lcssa, %i.bw
  %spec.select.i = select i1 %i.bx, i64 1, i64 2
  %xtraiter203 = and i64 %wide.trip.count.i, 1
  %i.by = icmp eq i64 %i.bg, 0
  %unroll_iter207 = and i64 %wide.trip.count.i, 4294967294
  %lcmp.mod205.not = icmp eq i64 %xtraiter203, 0
  %lcmp.mod206 = trunc i32 %.1.lcssa to i1
  br label %.critedge.preheader.split55.us.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %indvars.iv.next.i.1, %.lr.ph.i ] ; 3 uses
  %niter202 = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter202.next.1, %.lr.ph.i ]
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv.i
  %i.ca = load i16, ptr %i.bz, align 8
  %i.cb = zext i16 %i.ca to i32                   ; 2 uses
  %i.cc = and i32 %i.cb, 255
  %i.cd = zext nneg i32 %i.cc to i64
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.cd ; 2 uses
  %i.cf = load i32, ptr %i.ce, align 4
  %i.cg = add i32 %i.cf, 1
  store i32 %i.cg, ptr %i.ce, align 4
  %i.ch = lshr i32 %i.cb, 8
  %i.ci = zext nneg i32 %i.ch to i64
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ci
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 1024 ; 2 uses
  %i.cl = load i32, ptr %i.ck, align 4
  %i.cm = add i32 %i.cl, 1
  store i32 %i.cm, ptr %i.ck, align 4
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv.i
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 4
  %i.cp = load i16, ptr %i.co, align 4
  %i.cq = zext i16 %i.cp to i32                   ; 2 uses
  %i.cr = and i32 %i.cq, 255
  %i.cs = zext nneg i32 %i.cr to i64
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.cs ; 2 uses
  %i.cu = load i32, ptr %i.ct, align 4
  %i.cv = add i32 %i.cu, 1
  store i32 %i.cv, ptr %i.ct, align 4
  %i.cw = lshr i32 %i.cq, 8
  %i.cx = zext nneg i32 %i.cw to i64
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.cx
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 1024 ; 2 uses
  %i.da = load i32, ptr %i.cz, align 4
  %i.db = add i32 %i.da, 1
  store i32 %i.db, ptr %i.cz, align 4
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter202.next.1 = add i64 %niter202, 2         ; 2 uses
  %niter202.ncmp.1 = icmp eq i64 %niter202.next.1, %unroll_iter201
  br i1 %niter202.ncmp.1, label %.preheader45.i.unr-lcssa, label %.lr.ph.i, !llvm.loop !325

.critedge.preheader.split55.us.i:                 ; preds = %._crit_edge.us.i, %.preheader45.i
  %indvars.iv70.i = phi i64 [ 0, %.preheader45.i ], [ %indvars.iv.next71.i, %._crit_edge.us.i ] ; 2 uses
  %.03854.us.i = phi i32 [ 0, %.preheader45.i ], [ %i.fe, %._crit_edge.us.i ] ; 4 uses
  %.03953.us.i = phi ptr [ %6, %.preheader45.i ], [ %.04052.us.i, %._crit_edge.us.i ] ; 47 uses
  %.04052.us.i = phi ptr [ %5, %.preheader45.i ], [ %.03953.us.i, %._crit_edge.us.i ] ; 4 uses
  %.idx.i = shl nuw nsw i64 %indvars.iv70.i, 10
  %i.dc = getelementptr inbounds nuw i8, ptr %i.a, i64 %.idx.i ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.critedge.preheader.split55.us.i
  %indvars.iv61.i = phi i64 [ 0, %.critedge.preheader.split55.us.i ], [ %indvars.iv.next62.i.3, %bb.i ] ; 6 uses
  %.03748.us.i = phi i32 [ 0, %.critedge.preheader.split55.us.i ], [ %i.ds, %bb.i ] ; 2 uses
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv61.i
  store i32 %.03748.us.i, ptr %i.dd, align 16
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %indvars.iv61.i
  %i.df = load i32, ptr %i.de, align 16
  %i.dg = add i32 %i.df, %.03748.us.i             ; 2 uses
  %indvars.iv.next62.i = or disjoint i64 %indvars.iv61.i, 1 ; 2 uses
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next62.i
  store i32 %i.dg, ptr %i.dh, align 4
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %indvars.iv.next62.i
  %i.dj = load i32, ptr %i.di, align 4
  %i.dk = add i32 %i.dj, %i.dg                    ; 2 uses
  %indvars.iv.next62.i.1 = or disjoint i64 %indvars.iv61.i, 2 ; 2 uses
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next62.i.1
  store i32 %i.dk, ptr %i.dl, align 8
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %indvars.iv.next62.i.1
  %i.dn = load i32, ptr %i.dm, align 8
  %i.do = add i32 %i.dn, %i.dk                    ; 2 uses
  %indvars.iv.next62.i.2 = or disjoint i64 %indvars.iv61.i, 3 ; 2 uses
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next62.i.2
  store i32 %i.do, ptr %i.dp, align 4
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %indvars.iv.next62.i.2
  %i.dr = load i32, ptr %i.dq, align 4
  %i.ds = add i32 %i.dr, %i.do
  %indvars.iv.next62.i.3 = add nuw nsw i64 %indvars.iv61.i, 4 ; 2 uses
  %exitcond64.not.i.3 = icmp eq i64 %indvars.iv.next62.i.3, 256
  br i1 %exitcond64.not.i.3, label %.preheader.us.i.preheader, label %bb.i, !llvm.loop !326

.preheader.us.i.preheader:                        ; preds = %bb.i
  br i1 %i.by, label %.preheader.us.i.epil.preheader, label %.preheader.us.i

.preheader.us.i:                                  ; preds = %.preheader.us.i.preheader, %.preheader.us.i
  %indvars.iv65.i = phi i64 [ %indvars.iv.next66.i.1, %.preheader.us.i ], [ 0, %.preheader.us.i.preheader ] ; 3 uses
  %niter208 = phi i64 [ %niter208.next.1, %.preheader.us.i ], [ 0, %.preheader.us.i.preheader ]
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %.04052.us.i, i64 %indvars.iv65.i ; 2 uses
  %i.du = load i16, ptr %i.dt, align 8
  %i.dv = zext i16 %i.du to i32
  %i.dw = lshr i32 %i.dv, %.03854.us.i
  %i.dx = and i32 %i.dw, 255
  %i.dy = zext nneg i32 %i.dx to i64
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.dy ; 2 uses
  %i.ea = load i32, ptr %i.dz, align 4            ; 2 uses
  %i.eb = add i32 %i.ea, 1
  store i32 %i.eb, ptr %i.dz, align 4
  %i.ec = zext i32 %i.ea to i64
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %.03953.us.i, i64 %i.ec
  %i.ee = load i32, ptr %i.dt, align 8
  store i32 %i.ee, ptr %i.ed, align 4
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %.04052.us.i, i64 %indvars.iv65.i
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 4 ; 2 uses
  %i.eh = load i16, ptr %i.eg, align 4
  %i.ei = zext i16 %i.eh to i32
  %i.ej = lshr i32 %i.ei, %.03854.us.i
  %i.ek = and i32 %i.ej, 255
  %i.el = zext nneg i32 %i.ek to i64
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.el ; 2 uses
  %i.en = load i32, ptr %i.em, align 4            ; 2 uses
  %i.eo = add i32 %i.en, 1
  store i32 %i.eo, ptr %i.em, align 4
  %i.ep = zext i32 %i.en to i64
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %.03953.us.i, i64 %i.ep
  %i.er = load i32, ptr %i.eg, align 4
  store i32 %i.er, ptr %i.eq, align 4
  %indvars.iv.next66.i.1 = add nuw nsw i64 %indvars.iv65.i, 2 ; 2 uses
  %niter208.next.1 = add i64 %niter208, 2         ; 2 uses
  %niter208.ncmp.1 = icmp eq i64 %niter208.next.1, %unroll_iter207
  br i1 %niter208.ncmp.1, label %._crit_edge.us.i.unr-lcssa, label %.preheader.us.i, !llvm.loop !327

._crit_edge.us.i.unr-lcssa:                       ; preds = %.preheader.us.i
  br i1 %lcmp.mod205.not, label %._crit_edge.us.i, label %.preheader.us.i.epil.preheader

.preheader.us.i.epil.preheader:                   ; preds = %._crit_edge.us.i.unr-lcssa, %.preheader.us.i.preheader
  %indvars.iv65.i.epil.init = phi i64 [ 0, %.preheader.us.i.preheader ], [ %indvars.iv.next66.i.1, %._crit_edge.us.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod206)
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %.04052.us.i, i64 %indvars.iv65.i.epil.init ; 2 uses
  %i.et = load i16, ptr %i.es, align 4
  %i.eu = zext i16 %i.et to i32
  %i.ev = lshr i32 %i.eu, %.03854.us.i
  %i.ew = and i32 %i.ev, 255
  %i.ex = zext nneg i32 %i.ew to i64
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ex ; 2 uses
  %i.ez = load i32, ptr %i.ey, align 4            ; 2 uses
  %i.fa = add i32 %i.ez, 1
  store i32 %i.fa, ptr %i.ey, align 4
  %i.fb = zext i32 %i.ez to i64
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %.03953.us.i, i64 %i.fb
  %i.fd = load i32, ptr %i.es, align 4
  store i32 %i.fd, ptr %i.fc, align 4
  br label %._crit_edge.us.i

._crit_edge.us.i:                                 ; preds = %._crit_edge.us.i.unr-lcssa, %.preheader.us.i.epil.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  %indvars.iv.next71.i = add nuw nsw i64 %indvars.iv70.i, 1 ; 2 uses
  %i.fe = add nuw nsw i32 %.03854.us.i, 8
  %exitcond74.not.i = icmp eq i64 %indvars.iv.next71.i, %spec.select.i
  br i1 %exitcond74.not.i, label %tdefl_radix_sort_syms.exit, label %.critedge.preheader.split55.us.i, !llvm.loop !328

tdefl_radix_sort_syms.exit.thread:                ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %tdefl_huffman_enforce_max_code_size.exit

bb.j:                                             ; preds = %bb.j, %.critedge.preheader.split55.i.preheader
  %indvars.iv75.i = phi i64 [ 0, %.critedge.preheader.split55.i.preheader ], [ %indvars.iv.next76.i.3, %bb.j ] ; 6 uses
  %.03748.i = phi i32 [ 0, %.critedge.preheader.split55.i.preheader ], [ %i.fu, %bb.j ] ; 2 uses
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv75.i
  store i32 %.03748.i, ptr %i.ff, align 16
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv75.i
  %i.fh = load i32, ptr %i.fg, align 16
  %i.fi = add i32 %i.fh, %.03748.i                ; 2 uses
  %indvars.iv.next76.i = or disjoint i64 %indvars.iv75.i, 1 ; 2 uses
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next76.i
  store i32 %i.fi, ptr %i.fj, align 4
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next76.i
  %i.fl = load i32, ptr %i.fk, align 4
  %i.fm = add i32 %i.fl, %i.fi                    ; 2 uses
  %indvars.iv.next76.i.1 = or disjoint i64 %indvars.iv75.i, 2 ; 2 uses
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next76.i.1
  store i32 %i.fm, ptr %i.fn, align 8
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next76.i.1
  %i.fp = load i32, ptr %i.fo, align 8
  %i.fq = add i32 %i.fp, %i.fm                    ; 2 uses
  %indvars.iv.next76.i.2 = or disjoint i64 %indvars.iv75.i, 3 ; 2 uses
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next76.i.2
  store i32 %i.fq, ptr %i.fr, align 4
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next76.i.2
  %i.ft = load i32, ptr %i.fs, align 4
  %i.fu = add i32 %i.ft, %i.fq
  %indvars.iv.next76.i.3 = add nuw nsw i64 %indvars.iv75.i, 4 ; 2 uses
  %exitcond78.not.i.3 = icmp eq i64 %indvars.iv.next76.i.3, 256
  br i1 %exitcond78.not.i.3, label %tdefl_radix_sort_syms.exit.thread, label %bb.j, !llvm.loop !326

tdefl_radix_sort_syms.exit:                       ; preds = %._crit_edge.us.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  switch i32 %.1.lcssa, label %bb.k [
    i32 0, label %tdefl_huffman_enforce_max_code_size.exit
    i32 1, label %tdefl_calculate_minimum_redundancy.exit.thread166
  ]

tdefl_calculate_minimum_redundancy.exit.thread166: ; preds = %tdefl_radix_sort_syms.exit
  store i16 1, ptr %.03953.us.i, align 2
  br label %.lr.ph.preheader

bb.k:                                             ; preds = %tdefl_radix_sort_syms.exit
  %i.fv = getelementptr inbounds nuw i8, ptr %.03953.us.i, i64 4
  %i.fw = load i16, ptr %i.fv, align 2
  %i.fx = load i16, ptr %.03953.us.i, align 2
  %i.fy = add i16 %i.fx, %i.fw
  store i16 %i.fy, ptr %.03953.us.i, align 2
  %i.fz = add i32 %.1.lcssa, -1                   ; 2 uses
  %i.ga = icmp sgt i32 %.1.lcssa, 2
  br i1 %i.ga, label %.lr.ph.preheader.i82, label %._crit_edge.thread.i

._crit_edge.thread.i:                             ; preds = %bb.k
  %i.gb = add nsw i32 %.1.lcssa, -2               ; 2 uses
  %i.gc = sext i32 %i.gb to i64
  %i.gd = getelementptr inbounds [4 x i8], ptr %.03953.us.i, i64 %i.gc
  store i16 0, ptr %i.gd, align 2
  br label %.preheader.i81.preheader

.lr.ph.preheader.i82:                             ; preds = %bb.k
  %wide.trip.count.i83 = zext nneg i32 %i.fz to i64
  br label %.lr.ph.i84

.lr.ph.i84:                                       ; preds = %bb.s, %.lr.ph.preheader.i82
  %indvars.iv.i85 = phi i64 [ 1, %.lr.ph.preheader.i82 ], [ %indvars.iv.next.i87, %bb.s ] ; 8 uses
  %.07992.i = phi i32 [ 2, %.lr.ph.preheader.i82 ], [ %.281.i, %bb.s ] ; 4 uses
  %.08291.i = phi i32 [ 0, %.lr.ph.preheader.i82 ], [ %.284.i, %bb.s ] ; 3 uses
  %.not.i86 = icmp slt i32 %.07992.i, %.1.lcssa
  %i.ge = sext i32 %.08291.i to i64               ; 2 uses
  %i.gf = getelementptr inbounds [4 x i8], ptr %.03953.us.i, i64 %i.ge ; 2 uses
  %i.gg = load i16, ptr %i.gf, align 2            ; 2 uses
  br i1 %.not.i86, label %bb.l, label %.lr.ph._crit_edge.i

bb.l:                                             ; preds = %.lr.ph.i84
  %i.gh = sext i32 %.07992.i to i64
  %i.gi = getelementptr inbounds [4 x i8], ptr %.03953.us.i, i64 %i.gh
  %i.gj = load i16, ptr %i.gi, align 2            ; 2 uses
  %i.gk = icmp ult i16 %i.gg, %i.gj
  br i1 %i.gk, label %.lr.ph._crit_edge.i, label %bb.m

.lr.ph._crit_edge.i:                              ; preds = %bb.l, %.lr.ph.i84
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %.03953.us.i, i64 %indvars.iv.i85
  store i16 %i.gg, ptr %i.gl, align 2
  %i.gm = trunc i64 %indvars.iv.i85 to i16
  %i.gn = add nsw i32 %.08291.i, 1                ; 2 uses
  store i16 %i.gm, ptr %i.gf, align 2
  %.pre = sext i32 %i.gn to i64
  br label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.go = add nsw i32 %.07992.i, 1
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %.03953.us.i, i64 %indvars.iv.i85
  store i16 %i.gj, ptr %i.gp, align 2
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.lr.ph._crit_edge.i
  %.pre-phi = phi i64 [ %i.ge, %bb.m ], [ %.pre, %.lr.ph._crit_edge.i ] ; 4 uses
  %.183.i = phi i32 [ %.08291.i, %bb.m ], [ %i.gn, %.lr.ph._crit_edge.i ] ; 2 uses
  %.180.i = phi i32 [ %i.go, %bb.m ], [ %.07992.i, %.lr.ph._crit_edge.i ] ; 5 uses
  %.not88.i = icmp slt i32 %.180.i, %.1.lcssa
  br i1 %.not88.i, label %bb.o, label %._crit_edge127.i

._crit_edge127.i:                                 ; preds = %bb.n
  %.phi.trans.insert129.i = getelementptr inbounds [4 x i8], ptr %.03953.us.i, i64 %.pre-phi
  %.pre130.i = load i16, ptr %.phi.trans.insert129.i, align 2
  br label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.gq = icmp sgt i64 %indvars.iv.i85, %.pre-phi
  br i1 %i.gq, label %bb.p, label %._crit_edge123.i

._crit_edge123.i:                                 ; preds = %bb.o
  %.phi.trans.insert124.i = sext i32 %.180.i to i64
  %.phi.trans.insert125.i = getelementptr inbounds [4 x i8], ptr %.03953.us.i, i64 %.phi.trans.insert124.i
  %.pre126.i = load i16, ptr %.phi.trans.insert125.i, align 2
  br label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.gr = getelementptr inbounds [4 x i8], ptr %.03953.us.i, i64 %.pre-phi
  %i.gs = load i16, ptr %i.gr, align 2            ; 2 uses
  %i.gt = sext i32 %.180.i to i64
  %i.gu = getelementptr inbounds [4 x i8], ptr %.03953.us.i, i64 %i.gt
  %i.gv = load i16, ptr %i.gu, align 2            ; 2 uses
  %i.gw = icmp ult i16 %i.gs, %i.gv
  br i1 %i.gw, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p, %._crit_edge127.i
  %i.gx = phi i16 [ %.pre130.i, %._crit_edge127.i ], [ %i.gs, %bb.p ]
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr %.03953.us.i, i64 %indvars.iv.i85 ; 2 uses
  %i.gz = load i16, ptr %i.gy, align 2
  %i.ha = getelementptr inbounds [4 x i8], ptr %.03953.us.i, i64 %.pre-phi
  %i.hb = add i16 %i.gz, %i.gx
  store i16 %i.hb, ptr %i.gy, align 2
  %i.hc = trunc i64 %indvars.iv.i85 to i16
  %i.hd = add nsw i32 %.183.i, 1
  store i16 %i.hc, ptr %i.ha, align 2
  br label %bb.s

bb.r:                                             ; preds = %bb.p, %._crit_edge123.i
  %i.he = phi i16 [ %.pre126.i, %._crit_edge123.i ], [ %i.gv, %bb.p ]
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr %.03953.us.i, i64 %indvars.iv.i85 ; 2 uses
  %i.hg = load i16, ptr %i.hf, align 2
  %i.hh = add nsw i32 %.180.i, 1
  %i.hi = add i16 %i.hg, %i.he
  store i16 %i.hi, ptr %i.hf, align 2
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.284.i = phi i32 [ %i.hd, %bb.q ], [ %.183.i, %bb.r ]
  %.281.i = phi i32 [ %.180.i, %bb.q ], [ %i.hh, %bb.r ]
  %indvars.iv.next.i87 = add nuw nsw i64 %indvars.iv.i85, 1 ; 2 uses
  %exitcond.not.i88 = icmp eq i64 %indvars.iv.next.i87, %wide.trip.count.i83
  br i1 %exitcond.not.i88, label %._crit_edge.i, label %.lr.ph.i84, !llvm.loop !329

._crit_edge.i:                                    ; preds = %bb.s
  %i.hj = add nsw i32 %.1.lcssa, -2               ; 3 uses
  %i.hk = zext nneg i32 %i.hj to i64
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr %.03953.us.i, i64 %i.hk
  store i16 0, ptr %i.hl, align 2
  %i.hm = add nsw i32 %.1.lcssa, -3               ; 2 uses
  %i.hn = zext i32 %i.hm to i64                   ; 3 uses
  %i.ho = add nuw nsw i64 %i.hn, 1
  %xtraiter209 = and i64 %i.ho, 3                 ; 2 uses
  %lcmp.mod210.not = icmp eq i64 %xtraiter209, 0
end_hunk_10
begin_hunk_11_@tdefl_optimize_huffman_table:bb.a
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph96.i.prol ], [ 0, %._crit_edge.i ]
  %i.hp = getelementptr inbounds nuw [4 x i8], ptr %.03953.us.i, i64 %indvars.iv115.i.prol ; 2 uses
  %i.hq = load i16, ptr %i.hp, align 2
  %i.hr = zext i16 %i.hq to i64
  %i.hs = getelementptr inbounds nuw [4 x i8], ptr %.03953.us.i, i64 %i.hr
  %i.ht = load i16, ptr %i.hs, align 2
  %i.hu = add i16 %i.ht, 1
  store i16 %i.hu, ptr %i.hp, align 2
  %indvars.iv.next116.i.prol = add nsw i64 %indvars.iv115.i.prol, -1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter209
  br i1 %prol.iter.cmp.not, label %.lr.ph96.i.prol.loopexit, label %.lr.ph96.i.prol, !llvm.loop !330

.lr.ph96.i.prol.loopexit:                         ; preds = %.lr.ph96.i.prol, %._crit_edge.i
  %indvars.iv115.i.unr = phi i64 [ %i.hn, %._crit_edge.i ], [ %indvars.iv.next116.i.prol, %.lr.ph96.i.prol ]
  %i.hv = icmp ult i32 %i.hm, 3
  br i1 %i.hv, label %.preheader.i81.preheader, label %.lr.ph96.i

.lr.ph96.i:                                       ; preds = %.lr.ph96.i.prol.loopexit, %.lr.ph96.i
  %indvars.iv115.i = phi i64 [ %indvars.iv.next116.i.3, %.lr.ph96.i ], [ %indvars.iv115.i.unr, %.lr.ph96.i.prol.loopexit ] ; 5 uses
  %i.hw = getelementptr inbounds nuw [4 x i8], ptr %.03953.us.i, i64 %indvars.iv115.i ; 2 uses
  %i.hx = load i16, ptr %i.hw, align 2
  %i.hy = zext i16 %i.hx to i64
  %i.hz = getelementptr inbounds nuw [4 x i8], ptr %.03953.us.i, i64 %i.hy
  %i.ia = load i16, ptr %i.hz, align 2
  %i.ib = add i16 %i.ia, 1
  store i16 %i.ib, ptr %i.hw, align 2
  %i.ic = getelementptr [4 x i8], ptr %.03953.us.i, i64 %indvars.iv115.i
  %i.id = getelementptr i8, ptr %i.ic, i64 -4     ; 2 uses
  %i.ie = load i16, ptr %i.id, align 2
  %i.if = zext i16 %i.ie to i64
  %i.ig = getelementptr inbounds nuw [4 x i8], ptr %.03953.us.i, i64 %i.if
  %i.ih = load i16, ptr %i.ig, align 2
  %i.ii = add i16 %i.ih, 1
  store i16 %i.ii, ptr %i.id, align 2
  %i.ij = getelementptr [4 x i8], ptr %.03953.us.i, i64 %indvars.iv115.i
  %i.ik = getelementptr i8, ptr %i.ij, i64 -8     ; 2 uses
  %i.il = load i16, ptr %i.ik, align 2
  %i.im = zext i16 %i.il to i64
  %i.in = getelementptr inbounds nuw [4 x i8], ptr %.03953.us.i, i64 %i.im
  %i.io = load i16, ptr %i.in, align 2
  %i.ip = add i16 %i.io, 1
  store i16 %i.ip, ptr %i.ik, align 2
  %indvars.iv.next116.i.2 = add nsw i64 %indvars.iv115.i, -3 ; 2 uses
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr %.03953.us.i, i64 %indvars.iv.next116.i.2 ; 2 uses
  %i.ir = load i16, ptr %i.iq, align 2
  %i.is = zext i16 %i.ir to i64
  %i.it = getelementptr inbounds nuw [4 x i8], ptr %.03953.us.i, i64 %i.is
  %i.iu = load i16, ptr %i.it, align 2
  %i.iv = add i16 %i.iu, 1
  store i16 %i.iv, ptr %i.iq, align 2
  %indvars.iv.next116.i.3 = add nsw i64 %indvars.iv115.i, -4
  %.not140.i.3 = icmp eq i64 %indvars.iv.next116.i.2, 0
  br i1 %.not140.i.3, label %.preheader.i81.preheader, label %.lr.ph96.i, !llvm.loop !331

.preheader.i81.preheader:                         ; preds = %.lr.ph96.i.prol.loopexit, %.lr.ph96.i, %._crit_edge.thread.i
  %.385110.i.ph = phi i32 [ %i.gb, %._crit_edge.thread.i ], [ %i.hj, %.lr.ph96.i ], [ %i.hj, %.lr.ph96.i.prol.loopexit ]
  br label %.preheader.i81

.preheader.i81:                                   ; preds = %.preheader.i81.preheader, %._crit_edge108.i
  %.0113.i = phi i32 [ %i.jy, %._crit_edge108.i ], [ 0, %.preheader.i81.preheader ] ; 3 uses
  %.075112.i = phi i32 [ %i.jx, %._crit_edge108.i ], [ 1, %.preheader.i81.preheader ] ; 5 uses
  %.2111.i = phi i32 [ %.3.lcssa.i, %._crit_edge108.i ], [ %i.fz, %.preheader.i81.preheader ] ; 2 uses
  %.385110.i = phi i32 [ %.4.lcssa.i, %._crit_edge108.i ], [ %.385110.i.ph, %.preheader.i81.preheader ] ; 5 uses
  %i.iw = icmp sgt i32 %.385110.i, -1
  br i1 %i.iw, label %.lr.ph99.preheader.i, label %.critedge.i

.lr.ph99.preheader.i:                             ; preds = %.preheader.i81
  %i.ix = add nuw i32 %.385110.i, 1
  br label %.lr.ph99.i

.lr.ph99.i:                                       ; preds = %bb.t, %.lr.ph99.preheader.i
  %.198.i = phi i32 [ %i.jd, %bb.t ], [ 0, %.lr.ph99.preheader.i ] ; 3 uses
  %.497.i = phi i32 [ %i.je, %bb.t ], [ %.385110.i, %.lr.ph99.preheader.i ] ; 3 uses
  %i.iy = zext nneg i32 %.497.i to i64
  %i.iz = getelementptr inbounds nuw [4 x i8], ptr %.03953.us.i, i64 %i.iy
  %i.ja = load i16, ptr %i.iz, align 2
  %i.jb = zext i16 %i.ja to i32
  %i.jc = icmp eq i32 %.0113.i, %i.jb
  br i1 %i.jc, label %bb.t, label %.critedge.i

bb.t:                                             ; preds = %.lr.ph99.i
  %i.jd = add nuw i32 %.198.i, 1
  %i.je = add nsw i32 %.497.i, -1
  %exitcond118.not.i = icmp eq i32 %.198.i, %.385110.i
  br i1 %exitcond118.not.i, label %.critedge.i, label %.lr.ph99.i, !llvm.loop !332

.critedge.i:                                      ; preds = %bb.t, %.lr.ph99.i, %.preheader.i81
  %.4.lcssa.i = phi i32 [ %.385110.i, %.preheader.i81 ], [ %.497.i, %.lr.ph99.i ], [ -1, %bb.t ]
  %.1.lcssa.i = phi i32 [ 0, %.preheader.i81 ], [ %.198.i, %.lr.ph99.i ], [ %i.ix, %bb.t ] ; 6 uses
  %i.jf = icmp sgt i32 %.075112.i, %.1.lcssa.i
  br i1 %i.jf, label %.lr.ph107.i, label %._crit_edge108.i

.lr.ph107.i:                                      ; preds = %.critedge.i
  %i.jg = trunc i32 %.0113.i to i16               ; 5 uses
  %i.jh = sext i32 %.2111.i to i64                ; 2 uses
  %i.ji = sub i32 %.075112.i, %.1.lcssa.i
  %xtraiter211 = and i32 %i.ji, 3                 ; 2 uses
  %lcmp.mod212.not = icmp eq i32 %xtraiter211, 0
  br i1 %lcmp.mod212.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph107.i, %.prol.preheader
  %indvars.iv119.i.prol = phi i64 [ %indvars.iv.next120.i.prol, %.prol.preheader ], [ %i.jh, %.lr.ph107.i ] ; 2 uses
  %.176106.i.prol = phi i32 [ %i.jk, %.prol.preheader ], [ %.075112.i, %.lr.ph107.i ]
  %prol.iter213 = phi i32 [ %prol.iter213.next, %.prol.preheader ], [ 0, %.lr.ph107.i ]
  %indvars.iv.next120.i.prol = add nsw i64 %indvars.iv119.i.prol, -1 ; 3 uses
  %i.jj = getelementptr inbounds [4 x i8], ptr %.03953.us.i, i64 %indvars.iv119.i.prol
  store i16 %i.jg, ptr %i.jj, align 2
  %i.jk = add nsw i32 %.176106.i.prol, -1         ; 2 uses
  %prol.iter213.next = add i32 %prol.iter213, 1   ; 2 uses
  %prol.iter213.cmp.not = icmp eq i32 %prol.iter213.next, %xtraiter211
  br i1 %prol.iter213.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !333

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph107.i
  %indvars.iv119.i.unr = phi i64 [ %i.jh, %.lr.ph107.i ], [ %indvars.iv.next120.i.prol, %.prol.preheader ]
  %.176106.i.unr = phi i32 [ %.075112.i, %.lr.ph107.i ], [ %i.jk, %.prol.preheader ]
  %indvars.iv.next120.i.lcssa.unr = phi i64 [ poison, %.lr.ph107.i ], [ %indvars.iv.next120.i.prol, %.prol.preheader ]
  %i.jl = sub i32 %.1.lcssa.i, %.075112.i
  %i.jm = icmp ugt i32 %i.jl, -4
  br i1 %i.jm, label %._crit_edge108.loopexit.i, label %.lr.ph107.i.new

.lr.ph107.i.new:                                  ; preds = %.prol.loopexit, %.lr.ph107.i.new
  %indvars.iv119.i = phi i64 [ %indvars.iv.next120.i.3, %.lr.ph107.i.new ], [ %indvars.iv119.i.unr, %.prol.loopexit ] ; 5 uses
  %.176106.i = phi i32 [ %i.ju, %.lr.ph107.i.new ], [ %.176106.i.unr, %.prol.loopexit ]
  %i.jn = getelementptr inbounds [4 x i8], ptr %.03953.us.i, i64 %indvars.iv119.i
  store i16 %i.jg, ptr %i.jn, align 2
  %i.jo = getelementptr [4 x i8], ptr %.03953.us.i, i64 %indvars.iv119.i
  %i.jp = getelementptr i8, ptr %i.jo, i64 -4
  store i16 %i.jg, ptr %i.jp, align 2
  %i.jq = getelementptr [4 x i8], ptr %.03953.us.i, i64 %indvars.iv119.i
  %i.jr = getelementptr i8, ptr %i.jq, i64 -8
  store i16 %i.jg, ptr %i.jr, align 2
  %indvars.iv.next120.i.3 = add nsw i64 %indvars.iv119.i, -4 ; 2 uses
  %i.js = getelementptr [4 x i8], ptr %.03953.us.i, i64 %indvars.iv119.i
  %i.jt = getelementptr i8, ptr %i.js, i64 -12
  store i16 %i.jg, ptr %i.jt, align 2
  %i.ju = add nsw i32 %.176106.i, -4              ; 2 uses
  %i.jv = icmp sgt i32 %i.ju, %.1.lcssa.i
  br i1 %i.jv, label %.lr.ph107.i.new, label %._crit_edge108.loopexit.i, !llvm.loop !334

._crit_edge108.loopexit.i:                        ; preds = %.lr.ph107.i.new, %.prol.loopexit
  %indvars.iv.next120.i.lcssa = phi i64 [ %indvars.iv.next120.i.lcssa.unr, %.prol.loopexit ], [ %indvars.iv.next120.i.3, %.lr.ph107.i.new ]
  %i.jw = trunc nsw i64 %indvars.iv.next120.i.lcssa to i32
  br label %._crit_edge108.i

._crit_edge108.i:                                 ; preds = %._crit_edge108.loopexit.i, %.critedge.i
  %.3.lcssa.i = phi i32 [ %.2111.i, %.critedge.i ], [ %i.jw, %._crit_edge108.loopexit.i ]
  %i.jx = shl nuw nsw i32 %.1.lcssa.i, 1
  %i.jy = add nuw nsw i32 %.0113.i, 1
  %.not89.i = icmp eq i32 %.1.lcssa.i, 0
  br i1 %.not89.i, label %tdefl_calculate_minimum_redundancy.exit, label %.preheader.i81, !llvm.loop !335

tdefl_calculate_minimum_redundancy.exit:          ; preds = %._crit_edge108.i
  %i.jz = icmp sgt i32 %.1.lcssa, 0
  br i1 %i.jz, label %.lr.ph.preheader, label %tdefl_huffman_enforce_max_code_size.exit

.lr.ph.preheader:                                 ; preds = %tdefl_calculate_minimum_redundancy.exit.thread166, %tdefl_calculate_minimum_redundancy.exit
  %xtraiter214 = and i64 %wide.trip.count.i, 3    ; 3 uses
  %i.ka = icmp ult i32 %.1.lcssa, 4
  br i1 %i.ka, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter218 = and i64 %wide.trip.count.i, 4294967292
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv128 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next129.3, %.lr.ph ] ; 5 uses
  %niter219 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter219.next.3, %.lr.ph ]
  %i.kb = getelementptr inbounds nuw [4 x i8], ptr %.03953.us.i, i64 %indvars.iv128
  %i.kc = load i16, ptr %i.kb, align 2
  %i.kd = zext i16 %i.kc to i64
  %i.ke = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.kd ; 2 uses
  %i.kf = load i32, ptr %i.ke, align 4
  %i.kg = add nsw i32 %i.kf, 1
  store i32 %i.kg, ptr %i.ke, align 4
  %i.kh = getelementptr inbounds nuw [4 x i8], ptr %.03953.us.i, i64 %indvars.iv128
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 4
  %i.kj = load i16, ptr %i.ki, align 2
  %i.kk = zext i16 %i.kj to i64
  %i.kl = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.kk ; 2 uses
  %i.km = load i32, ptr %i.kl, align 4
  %i.kn = add nsw i32 %i.km, 1
  store i32 %i.kn, ptr %i.kl, align 4
  %i.ko = getelementptr inbounds nuw [4 x i8], ptr %.03953.us.i, i64 %indvars.iv128
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 8
  %i.kq = load i16, ptr %i.kp, align 2
  %i.kr = zext i16 %i.kq to i64
  %i.ks = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.kr ; 2 uses
  %i.kt = load i32, ptr %i.ks, align 4
  %i.ku = add nsw i32 %i.kt, 1
  store i32 %i.ku, ptr %i.ks, align 4
  %i.kv = getelementptr inbounds nuw [4 x i8], ptr %.03953.us.i, i64 %indvars.iv128
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 12
  %i.kx = load i16, ptr %i.kw, align 2
  %i.ky = zext i16 %i.kx to i64
  %i.kz = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ky ; 2 uses
  %i.la = load i32, ptr %i.kz, align 4
  %i.lb = add nsw i32 %i.la, 1
  store i32 %i.lb, ptr %i.kz, align 4
  %indvars.iv.next129.3 = add nuw nsw i64 %indvars.iv128, 4 ; 2 uses
  %niter219.next.3 = add i64 %niter219, 4         ; 2 uses
  %niter219.ncmp.3 = icmp eq i64 %niter219.next.3, %unroll_iter218
  br i1 %niter219.ncmp.3, label %._crit_edge.unr-lcssa, label %.lr.ph, !llvm.loop !336

._crit_edge.unr-lcssa:                            ; preds = %.lr.ph
  %lcmp.mod216.not = icmp eq i64 %xtraiter214, 0
  br i1 %lcmp.mod216.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.unr-lcssa, %.lr.ph.preheader
  %indvars.iv128.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next129.3, %._crit_edge.unr-lcssa ]
  %lcmp.mod217 = icmp ne i64 %xtraiter214, 0
  tail call void @llvm.assume(i1 %lcmp.mod217)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv128.epil = phi i64 [ %indvars.iv128.epil.init, %.lr.ph.epil.preheader ], [ %indvars.iv.next129.epil, %.lr.ph.epil ] ; 2 uses
  %epil.iter215 = phi i64 [ 0, %.lr.ph.epil.preheader ], [ %epil.iter215.next, %.lr.ph.epil ]
  %i.lc = getelementptr inbounds nuw [4 x i8], ptr %.03953.us.i, i64 %indvars.iv128.epil
  %i.ld = load i16, ptr %i.lc, align 2
  %i.le = zext i16 %i.ld to i64
  %i.lf = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.le ; 2 uses
  %i.lg = load i32, ptr %i.lf, align 4
  %i.lh = add nsw i32 %i.lg, 1
  store i32 %i.lh, ptr %i.lf, align 4
  %indvars.iv.next129.epil = add nuw nsw i64 %indvars.iv128.epil, 1
  %epil.iter215.next = add i64 %epil.iter215, 1   ; 2 uses
  %epil.iter215.cmp.not = icmp eq i64 %epil.iter215.next, %xtraiter214
  br i1 %epil.iter215.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !337

._crit_edge:                                      ; preds = %.lr.ph.epil, %._crit_edge.unr-lcssa
  %i.li = icmp eq i32 %.1.lcssa, 1
  br i1 %i.li, label %tdefl_huffman_enforce_max_code_size.exit, label %.preheader35.i

.preheader35.i:                                   ; preds = %._crit_edge
  %i.lj = zext nneg i32 %3 to i64                 ; 11 uses
  %i.lk = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.lj ; 5 uses
  %i.ll = sub nuw nsw i64 32, %i.lj               ; 2 uses
  %n.vec = and i64 %i.ll, 56                      ; 4 uses
  %i.lm = add nuw nsw i64 %n.vec, %i.lj
  %.promoted.i = load i32, ptr %i.lk, align 4
  %i.ln = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.promoted.i, i64 0
  %i.lo = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.lj ; 2 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lo, i64 4
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lo, i64 20
  %wide.load = load <4 x i32>, ptr %i.lp, align 4
  %wide.load180 = load <4 x i32>, ptr %i.lq, align 4 ; 2 uses
  %i.lr = add <4 x i32> %wide.load, %i.ln         ; 2 uses
  %i.ls = icmp eq i64 %n.vec, 8
  br i1 %i.ls, label %middle.block, label %vector.body.1

vector.body.1:                                    ; preds = %.preheader35.i
  %i.lt = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.lu = getelementptr inbounds nuw [4 x i8], ptr %i.lt, i64 %i.lj ; 2 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lu, i64 4
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lu, i64 20
  %wide.load.1 = load <4 x i32>, ptr %i.lv, align 4
  %wide.load180.1 = load <4 x i32>, ptr %i.lw, align 4
  %i.lx = add <4 x i32> %wide.load.1, %i.lr       ; 2 uses
  %i.ly = add <4 x i32> %wide.load180.1, %wide.load180 ; 2 uses
  %i.lz = icmp eq i64 %n.vec, 16
  br i1 %i.lz, label %middle.block, label %vector.body.2

vector.body.2:                                    ; preds = %vector.body.1
  %i.ma = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.mb = getelementptr inbounds nuw [4 x i8], ptr %i.ma, i64 %i.lj ; 2 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %i.mb, i64 4
  %i.md = getelementptr inbounds nuw i8, ptr %i.mb, i64 20
  %wide.load.2 = load <4 x i32>, ptr %i.mc, align 4
  %wide.load180.2 = load <4 x i32>, ptr %i.md, align 4
  %i.me = add <4 x i32> %wide.load.2, %i.lx
  %i.mf = add <4 x i32> %wide.load180.2, %i.ly
  br label %middle.block

middle.block:                                     ; preds = %vector.body.2, %vector.body.1, %.preheader35.i
  %.lcssa187 = phi <4 x i32> [ %i.lr, %.preheader35.i ], [ %i.lx, %vector.body.1 ], [ %i.me, %vector.body.2 ]
  %.lcssa186 = phi <4 x i32> [ %wide.load180, %.preheader35.i ], [ %i.ly, %vector.body.1 ], [ %i.mf, %vector.body.2 ]
  %bin.rdx = add <4 x i32> %.lcssa186, %.lcssa187
  %i.mg = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  store i32 %i.mg, ptr %i.lk, align 4
  %cmp.n = icmp eq i64 %i.ll, %n.vec
  br i1 %cmp.n, label %.preheader34.i.preheader, label %scalar.ph

.preheader34.i.preheader:                         ; preds = %scalar.ph, %middle.block
  %xtraiter220 = and i64 %i.lj, 3                 ; 3 uses
  %unroll_iter225 = and i64 %i.lj, 12
  br label %.preheader34.i

scalar.ph:                                        ; preds = %middle.block, %scalar.ph
  %indvars.iv.i89 = phi i64 [ %indvars.iv.next.i90, %scalar.ph ], [ %i.lm, %middle.block ]
  %i.mh = phi i32 [ %i.mk, %scalar.ph ], [ %i.mg, %middle.block ]
  %indvars.iv.next.i90 = add nuw nsw i64 %indvars.iv.i89, 1 ; 3 uses
  %i.mi = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.next.i90
  %i.mj = load i32, ptr %i.mi, align 4
  %i.mk = add nsw i32 %i.mj, %i.mh                ; 2 uses
  store i32 %i.mk, ptr %i.lk, align 4
  %exitcond.not.i91 = icmp eq i64 %indvars.iv.next.i90, 32
  br i1 %exitcond.not.i91, label %.preheader34.i.preheader, label %scalar.ph, !llvm.loop !338

.preheader.i92.unr-lcssa:                         ; preds = %.preheader34.i
  %lcmp.mod222.not = icmp eq i64 %xtraiter220, 0
  br i1 %lcmp.mod222.not, label %.preheader.i92, label %.preheader34.i.epil.preheader

.preheader34.i.epil.preheader:                    ; preds = %.preheader.i92.unr-lcssa
  %lcmp.mod224 = icmp ne i64 %xtraiter220, 0
  tail call void @llvm.assume(i1 %lcmp.mod224)
  br label %.preheader34.i.epil

.preheader34.i.epil:                              ; preds = %.preheader34.i.epil, %.preheader34.i.epil.preheader
  %indvars.iv48.i.epil = phi i64 [ %indvars.iv.next49.i.epil, %.preheader34.i.epil ], [ %indvars.iv.next49.i.3, %.preheader34.i.epil.preheader ] ; 3 uses
  %.040.i.epil = phi i32 [ %i.mq, %.preheader34.i.epil ], [ %i.nq, %.preheader34.i.epil.preheader ]
  %epil.iter221 = phi i64 [ %epil.iter221.next, %.preheader34.i.epil ], [ 0, %.preheader34.i.epil.preheader ]
  %i.ml = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv48.i.epil
  %i.mm = load i32, ptr %i.ml, align 4
  %i.mn = trunc i64 %indvars.iv48.i.epil to i32
  %i.mo = sub i32 %3, %i.mn
  %i.mp = shl i32 %i.mm, %i.mo
  %i.mq = add i32 %i.mp, %.040.i.epil             ; 2 uses
  %indvars.iv.next49.i.epil = add nsw i64 %indvars.iv48.i.epil, -1
  %epil.iter221.next = add i64 %epil.iter221, 1   ; 2 uses
  %epil.iter221.cmp.not = icmp eq i64 %epil.iter221.next, %xtraiter220
  br i1 %epil.iter221.cmp.not, label %.preheader.i92, label %.preheader34.i.epil, !llvm.loop !339

.preheader.i92:                                   ; preds = %.preheader34.i.epil, %.preheader.i92.unr-lcssa
  %.lcssa185 = phi i32 [ %i.nq, %.preheader.i92.unr-lcssa ], [ %i.mq, %.preheader34.i.epil ] ; 2 uses
  %i.mr = shl nuw nsw i64 1, %i.lj                ; 2 uses
  %i.ms = zext i32 %.lcssa185 to i64
  %.not42.i = icmp eq i64 %i.mr, %i.ms
  br i1 %.not42.i, label %tdefl_huffman_enforce_max_code_size.exit, label %.lr.ph.i93

.preheader34.i:                                   ; preds = %.preheader34.i, %.preheader34.i.preheader
  %indvars.iv48.i = phi i64 [ %i.lj, %.preheader34.i.preheader ], [ %indvars.iv.next49.i.3, %.preheader34.i ] ; 6 uses
  %.040.i = phi i32 [ 0, %.preheader34.i.preheader ], [ %i.nq, %.preheader34.i ]
  %niter226 = phi i64 [ 0, %.preheader34.i.preheader ], [ %niter226.next.3, %.preheader34.i ]
  %i.mt = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv48.i
  %i.mu = load i32, ptr %i.mt, align 4
  %i.mv = trunc i64 %indvars.iv48.i to i32
  %i.mw = sub nsw i32 %3, %i.mv
  %i.mx = shl i32 %i.mu, %i.mw
  %i.my = add i32 %i.mx, %.040.i
  %indvars.iv.next49.i = add nsw i64 %indvars.iv48.i, -1 ; 2 uses
  %i.mz = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.next49.i
  %i.na = load i32, ptr %i.mz, align 4
  %i.nb = trunc i64 %indvars.iv.next49.i to i32
  %i.nc = sub nsw i32 %3, %i.nb
  %i.nd = shl i32 %i.na, %i.nc
  %i.ne = add i32 %i.nd, %i.my
  %indvars.iv.next49.i.1 = add nsw i64 %indvars.iv48.i, -2 ; 2 uses
  %i.nf = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.next49.i.1
  %i.ng = load i32, ptr %i.nf, align 4
  %i.nh = trunc i64 %indvars.iv.next49.i.1 to i32
  %i.ni = sub nsw i32 %3, %i.nh
  %i.nj = shl i32 %i.ng, %i.ni
  %i.nk = add i32 %i.nj, %i.ne
  %indvars.iv.next49.i.2 = add nsw i64 %indvars.iv48.i, -3 ; 2 uses
  %i.nl = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.next49.i.2
  %i.nm = load i32, ptr %i.nl, align 4
  %i.nn = trunc i64 %indvars.iv.next49.i.2 to i32
  %i.no = sub nsw i32 %3, %i.nn
  %i.np = shl i32 %i.nm, %i.no
  %i.nq = add i32 %i.np, %i.nk                    ; 3 uses
  %indvars.iv.next49.i.3 = add nsw i64 %indvars.iv48.i, -4 ; 2 uses
  %niter226.next.3 = add nuw nsw i64 %niter226, 4 ; 2 uses
  %niter226.ncmp.3.not = icmp eq i64 %niter226.next.3, %unroll_iter225
  br i1 %niter226.ncmp.3.not, label %.preheader.i92.unr-lcssa, label %.preheader34.i, !llvm.loop !340

.lr.ph.i93:                                       ; preds = %.preheader.i92, %.loopexit.i
  %.143.i = phi i32 [ %i.ob, %.loopexit.i ], [ %.lcssa185, %.preheader.i92 ]
  %i.nr = load i32, ptr %i.lk, align 4
  %i.ns = add nsw i32 %i.nr, -1
  store i32 %i.ns, ptr %i.lk, align 4
  br label %bb.v

bb.u:                                             ; preds = %bb.v
  %i.nt = icmp sgt i64 %indvars.iv51.i178, 2
  br i1 %i.nt, label %bb.v, label %.loopexit.i, !llvm.loop !341

bb.v:                                             ; preds = %.lr.ph.i93, %bb.u
  %indvars.iv51.i178 = phi i64 [ %i.lj, %.lr.ph.i93 ], [ %indvars.iv.next52.i, %bb.u ] ; 3 uses
  %indvars.iv.next52.i = add nsw i64 %indvars.iv51.i178, -1 ; 3 uses
  %i.nu = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.next52.i
  %i.nv = load i32, ptr %i.nu, align 4            ; 2 uses
  %.not32.i = icmp eq i32 %i.nv, 0
  br i1 %.not32.i, label %bb.u, label %bb.w, !llvm.loop !341

bb.w:                                             ; preds = %bb.v
  %i.nw = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.next52.i
  %i.nx = add nsw i32 %i.nv, -1
  store i32 %i.nx, ptr %i.nw, align 4
  %i.ny = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv51.i178 ; 2 uses
  %i.nz = load i32, ptr %i.ny, align 4
  %i.oa = add nsw i32 %i.nz, 2
  store i32 %i.oa, ptr %i.ny, align 4
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %bb.u, %bb.w
  %i.ob = add i32 %.143.i, -1                     ; 2 uses
  %i.oc = zext i32 %i.ob to i64
  %.not.i94 = icmp eq i64 %i.mr, %i.oc
  br i1 %.not.i94, label %tdefl_huffman_enforce_max_code_size.exit, label %.lr.ph.i93, !llvm.loop !342

tdefl_huffman_enforce_max_code_size.exit:         ; preds = %.loopexit.i, %tdefl_radix_sort_syms.exit, %tdefl_radix_sort_syms.exit.thread, %tdefl_calculate_minimum_redundancy.exit, %._crit_edge, %.preheader.i92
end_hunk_11
begin_hunk_12_@tdefl_optimize_huffman_table:bb.a
  %i.oy = getelementptr inbounds nuw i8, ptr %i.oe, i64 %i.ox
  store i8 %i.ol, ptr %i.oy, align 1
  %i.oz = getelementptr [4 x i8], ptr %.us-phi56.i163165170, i64 %indvars.iv134
  %i.pa = getelementptr i8, ptr %i.oz, i64 -6
  %i.pb = load i16, ptr %i.pa, align 2
  %i.pc = zext i16 %i.pb to i64
  %i.pd = getelementptr inbounds nuw i8, ptr %i.oe, i64 %i.pc
  store i8 %i.ol, ptr %i.pd, align 1
  %i.pe = getelementptr [4 x i8], ptr %.us-phi56.i163165170, i64 %indvars.iv134
  %i.pf = getelementptr i8, ptr %i.pe, i64 -10
  %i.pg = load i16, ptr %i.pf, align 2
  %i.ph = zext i16 %i.pg to i64
  %i.pi = getelementptr inbounds nuw i8, ptr %i.oe, i64 %i.ph
  store i8 %i.ol, ptr %i.pi, align 1
  %indvars.iv.next135.3 = add nsw i64 %indvars.iv134, -4 ; 3 uses
  %i.pj = getelementptr inbounds [4 x i8], ptr %.us-phi56.i163165170, i64 %indvars.iv.next135.3
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pj, i64 2
  %i.pl = load i16, ptr %i.pk, align 2
  %i.pm = zext i16 %i.pl to i64
  %i.pn = getelementptr inbounds nuw i8, ptr %i.oe, i64 %i.pm
  store i8 %i.ol, ptr %i.pn, align 1
  %i.po = add nsw i32 %.069105, -4
  %i.pp = icmp sgt i32 %.069105, 4
  br i1 %i.pp, label %.lr.ph107.new, label %._crit_edge108.loopexit, !llvm.loop !344

._crit_edge108.loopexit:                          ; preds = %.lr.ph107.new, %.prol.loopexit228
  %indvars.iv.next135.lcssa = phi i64 [ %indvars.iv.next135.lcssa.unr, %.prol.loopexit228 ], [ %indvars.iv.next135.3, %.lr.ph107.new ]
  %i.pq = trunc nsw i64 %indvars.iv.next135.lcssa to i32
  br label %._crit_edge108

._crit_edge108:                                   ; preds = %._crit_edge108.loopexit, %bb.x
  %.172.lcssa = phi i32 [ %.071110, %bb.x ], [ %i.pq, %._crit_edge108.loopexit ]
  %indvars.iv.next138 = add nuw nsw i64 %indvars.iv137, 1 ; 2 uses
  %exitcond141.not = icmp eq i64 %indvars.iv.next138, %wide.trip.count140
  br i1 %exitcond141.not, label %bb.y, label %bb.x, !llvm.loop !345

bb.y:                                             ; preds = %._crit_edge108
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  br label %.loopexit

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa
  %lcmp.mod188 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod188)
  br label %bb.z

bb.z:                                             ; preds = %bb.z, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.next.3, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.z ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.z ]
  %i.pr = getelementptr inbounds nuw i8, ptr %i.g, i64 %indvars.iv.epil
  %i.ps = load i8, ptr %i.pr, align 1
  %i.pt = zext i8 %i.ps to i64
  %i.pu = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.pt ; 2 uses
  %i.pv = load i32, ptr %i.pu, align 4
  %i.pw = add nsw i32 %i.pv, 1
  store i32 %i.pw, ptr %i.pu, align 4
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit.loopexit, label %bb.z, !llvm.loop !346

.loopexit.loopexit:                               ; preds = %bb.z, %.loopexit.loopexit.unr-lcssa
  %.pre152 = add nuw nsw i32 %3, 1
  %.pre154 = zext nneg i32 %.pre152 to i64
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.y
  %wide.trip.count145.pre-phi = phi i64 [ %.pre154, %.loopexit.loopexit ], [ %wide.trip.count140, %bb.y ] ; 2 uses
  %i.px = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  store i32 0, ptr %i.px, align 4
  %i.py = add nsw i64 %wide.trip.count145.pre-phi, -2 ; 2 uses
  %i.pz = add nsw i64 %wide.trip.count145.pre-phi, -3
  %xtraiter233 = and i64 %i.py, 3                 ; 3 uses
  %i.qa = icmp ult i64 %i.pz, 3
  br i1 %i.qa, label %.epil.preheader232, label %.loopexit.new

.loopexit.new:                                    ; preds = %.loopexit
  %unroll_iter237 = and i64 %i.py, -4
  br label %bb.ab

.preheader.unr-lcssa:                             ; preds = %bb.ab
  %lcmp.mod235.not = icmp eq i64 %xtraiter233, 0
  br i1 %lcmp.mod235.not, label %.preheader, label %.epil.preheader232

.epil.preheader232:                               ; preds = %.preheader.unr-lcssa, %.loopexit
  %indvars.iv142.epil.init = phi i64 [ 2, %.loopexit ], [ %indvars.iv.next143.3, %.preheader.unr-lcssa ]
  %.2112.epil.init = phi i32 [ 0, %.loopexit ], [ %i.ri, %.preheader.unr-lcssa ]
  %lcmp.mod236 = icmp ne i64 %xtraiter233, 0
  tail call void @llvm.assume(i1 %lcmp.mod236)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.aa, %.epil.preheader232
  %indvars.iv142.epil = phi i64 [ %indvars.iv142.epil.init, %.epil.preheader232 ], [ %indvars.iv.next143.epil, %bb.aa ] ; 3 uses
  %.2112.epil = phi i32 [ %.2112.epil.init, %.epil.preheader232 ], [ %i.qf, %bb.aa ]
  %epil.iter234 = phi i64 [ 0, %.epil.preheader232 ], [ %epil.iter234.next, %bb.aa ]
  %i.qb = getelementptr [4 x i8], ptr %i.c, i64 %indvars.iv142.epil
  %i.qc = getelementptr i8, ptr %i.qb, i64 -4
  %i.qd = load i32, ptr %i.qc, align 4
  %i.qe = add nsw i32 %i.qd, %.2112.epil
  %i.qf = shl i32 %i.qe, 1                        ; 2 uses
  %i.qg = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv142.epil
  store i32 %i.qf, ptr %i.qg, align 4
  %indvars.iv.next143.epil = add nuw nsw i64 %indvars.iv142.epil, 1
  %epil.iter234.next = add i64 %epil.iter234, 1   ; 2 uses
  %epil.iter234.cmp.not = icmp eq i64 %epil.iter234.next, %xtraiter233
  br i1 %epil.iter234.cmp.not, label %.preheader, label %bb.aa, !llvm.loop !347

.preheader:                                       ; preds = %bb.aa, %.preheader.unr-lcssa
  %i.qh = getelementptr inbounds nuw i8, ptr %0, i64 36682
  %i.qi = zext nneg i32 %1 to i64                 ; 2 uses
  %i.qj = getelementptr inbounds nuw [288 x i8], ptr %i.qh, i64 %i.qi
  %i.qk = getelementptr inbounds nuw i8, ptr %0, i64 34954
  %i.ql = getelementptr inbounds nuw [576 x i8], ptr %i.qk, i64 %i.qi
  %wide.trip.count150 = zext nneg i32 %2 to i64
  br label %bb.ac

bb.ab:                                            ; preds = %bb.ab, %.loopexit.new
  %indvars.iv142 = phi i64 [ 2, %.loopexit.new ], [ %indvars.iv.next143.3, %bb.ab ] ; 6 uses
  %.2112 = phi i32 [ 0, %.loopexit.new ], [ %i.ri, %bb.ab ]
  %niter238 = phi i64 [ 0, %.loopexit.new ], [ %niter238.next.3, %bb.ab ]
  %i.qm = getelementptr [4 x i8], ptr %i.c, i64 %indvars.iv142
  %i.qn = getelementptr i8, ptr %i.qm, i64 -4
  %i.qo = load i32, ptr %i.qn, align 4
  %i.qp = add nsw i32 %i.qo, %.2112
  %i.qq = shl i32 %i.qp, 1                        ; 2 uses
  %i.qr = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv142
  store i32 %i.qq, ptr %i.qr, align 8
  %indvars.iv.next143 = or disjoint i64 %indvars.iv142, 1 ; 2 uses
  %i.qs = getelementptr [4 x i8], ptr %i.c, i64 %indvars.iv.next143
  %i.qt = getelementptr i8, ptr %i.qs, i64 -4
  %i.qu = load i32, ptr %i.qt, align 8
  %i.qv = add nsw i32 %i.qu, %i.qq
  %i.qw = shl i32 %i.qv, 1                        ; 2 uses
  %i.qx = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.next143
  store i32 %i.qw, ptr %i.qx, align 4
  %indvars.iv.next143.1 = add nuw nsw i64 %indvars.iv142, 2 ; 2 uses
  %i.qy = getelementptr [4 x i8], ptr %i.c, i64 %indvars.iv.next143.1
  %i.qz = getelementptr i8, ptr %i.qy, i64 -4
  %i.ra = load i32, ptr %i.qz, align 4
  %i.rb = add nsw i32 %i.ra, %i.qw
  %i.rc = shl i32 %i.rb, 1                        ; 2 uses
  %i.rd = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.next143.1
  store i32 %i.rc, ptr %i.rd, align 8
  %indvars.iv.next143.2 = add nuw nsw i64 %indvars.iv142, 3 ; 2 uses
  %i.re = getelementptr [4 x i8], ptr %i.c, i64 %indvars.iv.next143.2
  %i.rf = getelementptr i8, ptr %i.re, i64 -4
  %i.rg = load i32, ptr %i.rf, align 8
  %i.rh = add nsw i32 %i.rg, %i.rc
  %i.ri = shl i32 %i.rh, 1                        ; 3 uses
  %i.rj = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.next143.2
  store i32 %i.ri, ptr %i.rj, align 4
  %indvars.iv.next143.3 = add nuw nsw i64 %indvars.iv142, 4 ; 2 uses
  %niter238.next.3 = add nuw i64 %niter238, 4     ; 2 uses
  %niter238.ncmp.3 = icmp eq i64 %niter238.next.3, %unroll_iter237
  br i1 %niter238.ncmp.3, label %.preheader.unr-lcssa, label %bb.ab, !llvm.loop !348

bb.ac:                                            ; preds = %.preheader, %bb.ag
  %indvars.iv147 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next148, %bb.ag ] ; 3 uses
  %i.rk = getelementptr inbounds nuw i8, ptr %i.qj, i64 %indvars.iv147
  %i.rl = load i8, ptr %i.rk, align 1             ; 4 uses
  %i.rm = icmp eq i8 %i.rl, 0
  br i1 %i.rm, label %bb.ag, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.rn = zext i8 %i.rl to i32                    ; 2 uses
  %i.ro = zext i8 %i.rl to i64
  %i.rp = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ro ; 2 uses
  %i.rq = load i32, ptr %i.rp, align 4            ; 3 uses
  %i.rr = add i32 %i.rq, 1
  store i32 %i.rr, ptr %i.rp, align 4
  %xtraiter242 = and i32 %i.rn, 3                 ; 3 uses
  %i.rs = icmp ult i8 %i.rl, 4
  br i1 %i.rs, label %.epil.preheader241, label %.new239

.new239:                                          ; preds = %bb.ad
  %unroll_iter248 = and i32 %i.rn, 252
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ae, %.new239
  %.0115 = phi i32 [ %i.rq, %.new239 ], [ %i.sg, %bb.ae ] ; 5 uses
  %.067114 = phi i32 [ 0, %.new239 ], [ %i.sf, %bb.ae ]
  %niter249 = phi i32 [ 0, %.new239 ], [ %niter249.next.3, %bb.ae ]
  %i.rt = shl i32 %.067114, 3
  %i.ru = shl i32 %.0115, 2
  %i.rv = and i32 %i.ru, 4
  %i.rw = or disjoint i32 %i.rt, %i.rv
  %i.rx = and i32 %.0115, 2
  %i.ry = or disjoint i32 %i.rx, %i.rw
  %i.rz = lshr i32 %.0115, 2
  %i.sa = and i32 %i.rz, 1
  %i.sb = or disjoint i32 %i.sa, %i.ry
  %i.sc = lshr i32 %.0115, 3
  %i.sd = shl i32 %i.sb, 1
  %i.se = and i32 %i.sc, 1
  %i.sf = or disjoint i32 %i.se, %i.sd            ; 3 uses
  %i.sg = lshr i32 %.0115, 4                      ; 2 uses
  %niter249.next.3 = add i32 %niter249, 4         ; 2 uses
  %niter249.ncmp.3.not = icmp eq i32 %niter249.next.3, %unroll_iter248
  br i1 %niter249.ncmp.3.not, label %.unr-lcssa240, label %bb.ae, !llvm.loop !295

.unr-lcssa240:                                    ; preds = %bb.ae
  %lcmp.mod244.not = icmp eq i32 %xtraiter242, 0
  br i1 %lcmp.mod244.not, label %.epilog-lcssa245, label %.epil.preheader241

.epil.preheader241:                               ; preds = %.unr-lcssa240, %bb.ad
  %.0115.epil.init = phi i32 [ %i.rq, %bb.ad ], [ %i.sg, %.unr-lcssa240 ]
  %.067114.epil.init = phi i32 [ 0, %bb.ad ], [ %i.sf, %.unr-lcssa240 ]
  %lcmp.mod247 = icmp ne i32 %xtraiter242, 0
  tail call void @llvm.assume(i1 %lcmp.mod247)
  br label %bb.af

bb.af:                                            ; preds = %bb.af, %.epil.preheader241
  %.0115.epil = phi i32 [ %.0115.epil.init, %.epil.preheader241 ], [ %i.sk, %bb.af ] ; 2 uses
  %.067114.epil = phi i32 [ %.067114.epil.init, %.epil.preheader241 ], [ %i.sj, %bb.af ]
  %epil.iter243 = phi i32 [ 0, %.epil.preheader241 ], [ %epil.iter243.next, %bb.af ]
  %i.sh = shl i32 %.067114.epil, 1
  %i.si = and i32 %.0115.epil, 1
  %i.sj = or disjoint i32 %i.si, %i.sh            ; 2 uses
  %i.sk = lshr i32 %.0115.epil, 1
  %epil.iter243.next = add i32 %epil.iter243, 1   ; 2 uses
  %epil.iter243.cmp.not = icmp eq i32 %epil.iter243.next, %xtraiter242
  br i1 %epil.iter243.cmp.not, label %.epilog-lcssa245, label %bb.af, !llvm.loop !349

.epilog-lcssa245:                                 ; preds = %bb.af, %.unr-lcssa240
  %.lcssa = phi i32 [ %i.sf, %.unr-lcssa240 ], [ %i.sj, %bb.af ]
  %i.sl = trunc i32 %.lcssa to i16
  %i.sm = getelementptr inbounds nuw [2 x i8], ptr %i.ql, i64 %indvars.iv147
  store i16 %i.sl, ptr %i.sm, align 2
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ac, %.epilog-lcssa245
  %indvars.iv.next148 = add nuw nsw i64 %indvars.iv147, 1 ; 2 uses
  %exitcond151.not = icmp eq i64 %indvars.iv.next148, %wide.trip.count150
  br i1 %exitcond151.not, label %bb.ah, label %bb.ac, !llvm.loop !297

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.ctpop.i8(i8) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bitreverse.i16(i16) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v2i32(<2 x i32>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i32> @llvm.umin.v16i32(<16 x i32>, <16 x i32>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i32> @llvm.umax.v16i32(<16 x i32>, <16 x i32>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.umin.v4i32(<4 x i32>, <4 x i32>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.umax.v4i32(<4 x i32>, <4 x i32>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #11

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { allocsize(1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #13 = { nounwind }
attributes #14 = { nounwind allocsize(1) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!3 = !{!4}
!4 = distinct !{!4, !5}
!5 = distinct !{!5, !"LVerDomain"}
!6 = !{!7}
!7 = distinct !{!7, !5}
!8 = distinct !{!8, !9, !10, !11}
!9 = !{!"llvm.loop.mustprogress"}
!10 = !{!"llvm.loop.isvectorized", i32 1}
!11 = !{!"llvm.loop.unroll.runtime.disable"}
!12 = !{!"branch_weights", i32 4, i32 12}
!13 = distinct !{!13, !9, !10, !11}
!14 = distinct !{!14, !9, !10}
!15 = !{!16}
!16 = distinct !{!16, !17}
!17 = distinct !{!17, !"LVerDomain"}
!18 = !{!19}
!19 = distinct !{!19, !17}
!20 = distinct !{!20, !9, !10, !11}
!21 = distinct !{!21, !9, !10, !11}
!22 = distinct !{!22, !23}
!23 = !{!"llvm.loop.unroll.disable"}
!24 = distinct !{!24, !9, !10}
!25 = distinct !{!25, !9}
!26 = distinct !{!26, !9}
!27 = distinct !{!27, !9}
!28 = distinct !{!28, !9}
!29 = distinct !{!29, !9}
!30 = distinct !{!30, !9}
!31 = distinct !{!31, !9}
!32 = distinct !{!32, !9}
!33 = distinct !{null, null, null, ptr @stbi__get8, null}
!34 = distinct !{!34, !9}
!35 = distinct !{!35, !9}
!36 = distinct !{null, null, null}
!37 = distinct !{!37, !9}
!38 = distinct !{!38, !9}
!39 = distinct !{!39, !9}
!40 = distinct !{!40, !9, !41}
!41 = !{!"llvm.loop.unswitch.partial.disable"}
!42 = distinct !{!42, !9}
!43 = distinct !{!43, !9}
!44 = distinct !{!44, !9, !41}
!45 = distinct !{!45, !9}
!46 = distinct !{!46, !9}
!47 = distinct !{!47, !9}
!48 = distinct !{!48, !9}
!49 = distinct !{!49, !9}
!50 = distinct !{!50, !9}
!51 = distinct !{!51, !9, !41}
!52 = distinct !{!52, !9}
!53 = distinct !{!53, !9}
!54 = distinct !{!54, !9, !41}
!55 = distinct !{null, null, null, null}
!56 = distinct !{null, null, null, ptr @stbi__get8, null}
!57 = distinct !{!57, !9}
!58 = distinct !{!58, !9}
!59 = !{!60}
!60 = distinct !{!60, !61}
!61 = distinct !{!61, !"LVerDomain"}
!62 = !{!63}
!63 = distinct !{!63, !61}
!64 = distinct !{!64, !9, !10}
!65 = distinct !{null, null, null}
!66 = distinct !{!66, !9}
!67 = distinct !{!67, !9}
!68 = distinct !{!68, !9}
!69 = distinct !{!69, !9}
!70 = distinct !{!70, !9}
!71 = distinct !{!71, !9}
!72 = distinct !{!72, !9}
!73 = distinct !{!73, !9}
!74 = distinct !{!74, !9}
!75 = distinct !{null}
!76 = distinct !{!76, !9}
!77 = distinct !{!77, !9}
!78 = distinct !{!78, !9}
!79 = distinct !{!79, !9}
!80 = distinct !{!80, !9}
!81 = distinct !{!81, !9}
!82 = distinct !{!82, !9}
!83 = distinct !{!83, !9}
!84 = distinct !{!84, !9}
!85 = distinct !{!85, !9}
!86 = distinct !{!86, !9}
!87 = distinct !{!87, !9}
!88 = distinct !{!88, !9}
end_hunk_12
