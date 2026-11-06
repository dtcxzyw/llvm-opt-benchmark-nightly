Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sdl/original/SDL_stb?download=true
inline.NumInlined: 380
inline.NumDeleted: 85
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 69
loop-unroll.NumUnrolled: 95
begin_hunk_0_@SDL_LoadPNG_IO_REAL:bb.a

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
  %3 = alloca %struct.tdefl_output_buffer, align 8 ; 20 uses
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
  br i1 %or.cond, label %bb.l, label %bb.bd

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
  br i1 %niter.ncmp.1.not, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !34

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
  %lcmp.mod228 = trunc i32 %i.z to i1
  tail call void @llvm.assume(i1 %lcmp.mod228)
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
  %.073 = phi i32 [ 0, %.thread ], [ 0, %bb.m ], [ %i.o, %bb.l ], [ %i.o, %.loopexit.loopexit.unr-lcssa ], [ %i.o, %.lr.ph.epil.preheader ] ; 6 uses
  %.072 = phi i32 [ 0, %.thread ], [ 0, %bb.m ], [ %i.n, %bb.l ], [ %i.n, %.loopexit.loopexit.unr-lcssa ], [ %i.n, %.lr.ph.epil.preheader ] ; 5 uses
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
  %i.ck = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 14 uses
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
  %i.cs = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 35 uses
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
  %i.fp = and i32 %i.fo, 15
  %i.fq = zext nneg i32 %i.fp to i64
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr @mz_crc32.s_crc32, i64 %i.fq
  %i.fs = load i32, ptr %i.fr, align 4
  %i.ft = xor i32 %i.fm, %i.fs                    ; 2 uses
  %i.fu = lshr i32 %i.ft, 4
  %i.fv = xor i32 %i.ft, %i.bw
  %i.fw = and i32 %i.fv, 15
  %i.fx = zext nneg i32 %i.fw to i64
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr @mz_crc32.s_crc32, i64 %i.fx
  %i.fz = load i32, ptr %i.fy, align 4
  %i.ga = xor i32 %i.fu, %i.fz                    ; 2 uses
  %i.gb = lshr i32 %i.ga, 4
  %i.gc = lshr i32 %i.bw, 4
  %i.gd = xor i32 %i.ga, %i.gc
  %i.ge = and i32 %i.gd, 15
  %i.gf = zext nneg i32 %i.ge to i64
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr @mz_crc32.s_crc32, i64 %i.gf
  %i.gh = load i32, ptr %i.gg, align 4
  %i.gi = xor i32 %i.gb, %i.gh                    ; 2 uses
  %i.gj = lshr i32 %i.gi, 4
  %i.gk = and i32 %i.gi, 15
  %i.gl = xor i32 %i.gk, 8
  %i.gm = zext nneg i32 %i.gl to i64
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr @mz_crc32.s_crc32, i64 %i.gm
  %i.go = load i32, ptr %i.gn, align 4
  %i.gp = xor i32 %i.gj, %i.go                    ; 2 uses
  %i.gq = lshr i32 %i.gp, 4
  %i.gr = and i32 %i.gp, 15
  %i.gs = zext nneg i32 %i.gr to i64
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr @mz_crc32.s_crc32, i64 %i.gs
  %i.gu = load i32, ptr %i.gt, align 4
  %i.gv = xor i32 %i.gq, %i.gu                    ; 2 uses
  %i.gw = lshr i32 %i.gv, 4
  %i.gx = zext i8 %.sroa.22.0.i to i32            ; 2 uses
  %i.gy = xor i32 %i.gv, %i.gx
  %i.gz = and i32 %i.gy, 15
  %i.ha = zext nneg i32 %i.gz to i64
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr @mz_crc32.s_crc32, i64 %i.ha
  %i.hc = load i32, ptr %i.hb, align 4
  %i.hd = xor i32 %i.gw, %i.hc                    ; 2 uses
  %i.he = lshr i32 %i.hd, 4
  %i.hf = and i32 %i.hd, 15
  %i.hg = lshr i32 %i.gx, 4
  %i.hh = xor i32 %i.hf, %i.hg
  %i.hi = zext nneg i32 %i.hh to i64
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr @mz_crc32.s_crc32, i64 %i.hi
  %i.hk = load i32, ptr %i.hj, align 4
  %i.hl = xor i32 %i.he, %i.hk                    ; 2 uses
  %i.hm = lshr i32 %i.hl, 4
  %i.hn = and i32 %i.hl, 15
  %i.ho = zext nneg i32 %i.hn to i64
  %i.hp = getelementptr inbounds nuw [4 x i8], ptr @mz_crc32.s_crc32, i64 %i.ho
  %i.hq = load i32, ptr %i.hp, align 4
  %i.hr = xor i32 %i.hm, %i.hq                    ; 2 uses
  %i.hs = lshr i32 %i.hr, 4
  %i.ht = and i32 %i.hr, 15
  %i.hu = zext nneg i32 %i.ht to i64
  %i.hv = getelementptr inbounds nuw [4 x i8], ptr @mz_crc32.s_crc32, i64 %i.hu
  %i.hw = load i32, ptr %i.hv, align 4
  %i.hx = xor i32 %i.hs, %i.hw                    ; 2 uses
  %i.hy = lshr i32 %i.hx, 4
  %i.hz = and i32 %i.hx, 15
  %i.ia = zext nneg i32 %i.hz to i64
  %i.ib = getelementptr inbounds nuw [4 x i8], ptr @mz_crc32.s_crc32, i64 %i.ia
  %i.ic = load i32, ptr %i.ib, align 4
  %i.id = xor i32 %i.hy, %i.ic                    ; 2 uses
  %i.ie = lshr i32 %i.id, 4
  %i.if = and i32 %i.id, 15
  %i.ig = zext nneg i32 %i.if to i64
  %i.ih = getelementptr inbounds nuw [4 x i8], ptr @mz_crc32.s_crc32, i64 %i.ig
  %i.ii = load i32, ptr %i.ih, align 4
  %i.ij = xor i32 %i.ie, %i.ii                    ; 2 uses
  %i.ik = lshr i32 %i.ij, 4
  %i.il = and i32 %i.ij, 15
  %i.im = zext nneg i32 %i.il to i64
  %i.in = getelementptr inbounds nuw [4 x i8], ptr @mz_crc32.s_crc32, i64 %i.im
  %i.io = load i32, ptr %i.in, align 4
  %i.ip = xor i32 %i.ik, %i.io                    ; 2 uses
  %i.iq = lshr i32 %i.ip, 4
  %i.ir = and i32 %i.ip, 15
  %i.is = zext nneg i32 %i.ir to i64
  %i.it = getelementptr inbounds nuw [4 x i8], ptr @mz_crc32.s_crc32, i64 %i.is
  %i.iu = load i32, ptr %i.it, align 4
  %i.iv = xor i32 %i.iu, %i.iq
  %i.iw = xor i32 %i.iv, -1
  %i.ix = load i64, ptr %3, align 8               ; 3 uses
  %i.iy = add i64 %i.ix, 33                       ; 4 uses
  %i.iz = load i64, ptr %i.ck, align 8            ; 3 uses
  %i.ja = icmp ugt i64 %i.iy, %i.iz
  br i1 %i.ja, label %bb.u, label %.critedge.i

bb.u:                                             ; preds = %.lr.ph.i.i
  %i.jb = load i32, ptr %i.ce, align 8
  %.not.i.i = icmp eq i32 %i.jb, 0
  br i1 %.not.i.i, label %bb.w, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.u, %.preheader.i.i
  %.025.i.i = phi i64 [ %i.jd, %.preheader.i.i ], [ %i.iz, %bb.u ]
  %i.jc = shl i64 %.025.i.i, 1
  %i.jd = tail call i64 @llvm.umax.i64(i64 %i.jc, i64 128) ; 5 uses
  %i.je = icmp ugt i64 %i.iy, %i.jd
  br i1 %i.je, label %.preheader.i.i, label %bb.v, !llvm.loop !0

bb.v:                                             ; preds = %.preheader.i.i
  %i.jf = tail call ptr @SDL_realloc_REAL(ptr noundef nonnull %i.cr, i64 noundef %i.jd) #14 ; 3 uses
  %.not31.i.i = icmp eq ptr %i.jf, null
  br i1 %.not31.i.i, label %bb.w, label %.critedge.i.i

.critedge.i.i:                                    ; preds = %bb.v
  store ptr %i.jf, ptr %i.cs, align 8
  store i64 %i.jd, ptr %i.ck, align 8
  br label %.critedge.i

bb.w:                                             ; preds = %bb.v, %bb.u
  tail call void @SDL_free_REAL(ptr noundef nonnull %i.cd) #13
  %i.jg = load ptr, ptr %i.cs, align 8
  tail call void @SDL_free_REAL(ptr noundef %i.jg) #13
  br label %tdefl_write_image_to_png_file_in_memory_ex.exit.thread

.critedge.i:                                      ; preds = %.critedge.i.i, %.lr.ph.i.i
  %i.jh = phi i64 [ %i.jd, %.critedge.i.i ], [ %i.iz, %.lr.ph.i.i ] ; 4 uses
  %i.ji = phi ptr [ %i.jf, %.critedge.i.i ], [ %i.cr, %.lr.ph.i.i ]
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 %i.ix ; 16 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.jj, ptr noundef nonnull align 16 dereferenceable(12) @__const.tdefl_write_image_to_png_file_in_memory_ex.pnghdr, i64 12, i1 false)
  %.sroa.10.0..sroa_idx.i.a = getelementptr inbounds nuw i8, ptr %i.jj, i64 12
  store <4 x i8> <i8 73, i8 72, i8 68, i8 82>, ptr %.sroa.10.0..sroa_idx.i.a, align 1
  %.sroa.11.0..sroa_idx.i.a = getelementptr inbounds nuw i8, ptr %i.jj, i64 16
  store i8 0, ptr %.sroa.11.0..sroa_idx.i.a, align 1
  %.sroa.13.0..sroa_idx.i.a = getelementptr inbounds nuw i8, ptr %i.jj, i64 17
  store i8 0, ptr %.sroa.13.0..sroa_idx.i.a, align 1
  %.sroa.15.0..sroa_idx.i.a = getelementptr inbounds nuw i8, ptr %i.jj, i64 18
  store i8 %i.cv, ptr %.sroa.15.0..sroa_idx.i.a, align 1
  %.sroa.16.0..sroa_idx.i.a = getelementptr inbounds nuw i8, ptr %i.jj, i64 19
  store i8 %i.cw, ptr %.sroa.16.0..sroa_idx.i.a, align 1
  %.sroa.17.0..sroa_idx.i.a = getelementptr inbounds nuw i8, ptr %i.jj, i64 20
  store i8 0, ptr %.sroa.17.0..sroa_idx.i.a, align 1
  %.sroa.19.0..sroa_idx.i.a = getelementptr inbounds nuw i8, ptr %i.jj, i64 21
  store i8 0, ptr %.sroa.19.0..sroa_idx.i.a, align 1
  %.sroa.21.0..sroa_idx.i.a = getelementptr inbounds nuw i8, ptr %i.jj, i64 22
  store i8 %i.cy, ptr %.sroa.21.0..sroa_idx.i.a, align 1
  %.sroa.22.0..sroa_idx.i.a = getelementptr inbounds nuw i8, ptr %i.jj, i64 23
  store i8 %i.cz, ptr %.sroa.22.0..sroa_idx.i.a, align 1
  %.sroa.25.0..sroa_idx.i.a = getelementptr inbounds nuw i8, ptr %i.jj, i64 24
  store i8 8, ptr %.sroa.25.0..sroa_idx.i.a, align 1
  %.sroa.26.0..sroa_idx.i.a = getelementptr inbounds nuw i8, ptr %i.jj, i64 25
  store i8 %.sroa.22.0.i, ptr %.sroa.26.0..sroa_idx.i.a, align 1
  %.sroa.27.0..sroa_idx.i.a = getelementptr inbounds nuw i8, ptr %i.jj, i64 26
  store i8 0, ptr %.sroa.27.0..sroa_idx.i.a, align 1
  %.sroa.28.0..sroa_idx.i.a = getelementptr inbounds nuw i8, ptr %i.jj, i64 27
  store i8 0, ptr %.sroa.28.0..sroa_idx.i.a, align 1
  %.sroa.29.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.jj, i64 28
  store i8 0, ptr %.sroa.29.0..sroa_idx.i, align 1
  %.sroa.30.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.jj, i64 29
  %4 = tail call i32 @llvm.bswap.i32(i32 %i.iw)
  store i32 %4, ptr %.sroa.30.0..sroa_idx.i, align 1
  br i1 %i.cl, label %bb.x, label %.loopexit267.i

bb.x:                                             ; preds = %.critedge.i
  %i.jk = add i64 %i.ix, 41                       ; 5 uses
  %i.jl = icmp ugt i64 %i.jk, %i.jh
  br i1 %i.jl, label %bb.y, label %._crit_edge.i146.i

._crit_edge.i146.i:                               ; preds = %bb.x
  %.pre.i148.i = load ptr, ptr %i.cs, align 8
  br label %bb.ab

bb.y:                                             ; preds = %bb.x
  %i.jm = load i32, ptr %i.ce, align 8
  %.not.i150.i = icmp eq i32 %i.jm, 0
  br i1 %.not.i150.i, label %._crit_edge336.i, label %.preheader.i151.i

._crit_edge336.i:                                 ; preds = %bb.y
  %.pre337.i = load ptr, ptr %i.cs, align 8
  br label %bb.aa

.preheader.i151.i:                                ; preds = %bb.y, %.preheader.i151.i
  %.025.i152.i = phi i64 [ %i.jo, %.preheader.i151.i ], [ %i.jh, %bb.y ]
  %i.jn = shl i64 %.025.i152.i, 1
  %i.jo = tail call i64 @llvm.umax.i64(i64 %i.jn, i64 128) ; 5 uses
  %i.jp = icmp ugt i64 %i.jk, %i.jo
  br i1 %i.jp, label %.preheader.i151.i, label %bb.z, !llvm.loop !0

bb.z:                                             ; preds = %.preheader.i151.i
  %i.jq = load ptr, ptr %i.cs, align 8            ; 2 uses
  %i.jr = tail call ptr @SDL_realloc_REAL(ptr noundef %i.jq, i64 noundef %i.jo) #14 ; 3 uses
  %.not31.i153.i = icmp eq ptr %i.jr, null
  br i1 %.not31.i153.i, label %bb.aa, label %.critedge.i154.i

.critedge.i154.i:                                 ; preds = %bb.z
  store ptr %i.jr, ptr %i.cs, align 8
  store i64 %i.jo, ptr %i.ck, align 8
  br label %bb.ab

bb.aa:                                            ; preds = %bb.z, %._crit_edge336.i
  %i.js = phi ptr [ %.pre337.i, %._crit_edge336.i ], [ %i.jq, %bb.z ]
  tail call void @SDL_free_REAL(ptr noundef nonnull %i.cd) #13
  tail call void @SDL_free_REAL(ptr noundef %i.js) #13
  br label %tdefl_write_image_to_png_file_in_memory_ex.exit.thread

bb.ab:                                            ; preds = %.critedge.i154.i, %._crit_edge.i146.i
  %i.jt = phi i64 [ %i.jh, %._crit_edge.i146.i ], [ %i.jo, %.critedge.i154.i ] ; 3 uses
  %i.ju = phi ptr [ %.pre.i148.i, %._crit_edge.i146.i ], [ %i.jr, %.critedge.i154.i ] ; 4 uses
  %.sroa.7244.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ju, i64 %i.iy ; 2 uses
  %5 = tail call i32 @llvm.bswap.i32(i32 %.073)
  store i32 %5, ptr %.sroa.7244.0..sroa_idx.i, align 1
  %.sroa.9246.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.7244.0..sroa_idx.i, i64 4
  store i32 1163152464, ptr %.sroa.9246.0..sroa_idx.i, align 1
  %i.jv = zext nneg i32 %.073 to i64              ; 2 uses
  %i.jw = add i64 %i.jk, %i.jv                    ; 6 uses
  %i.jx = icmp ugt i64 %i.jw, %i.jt
  br i1 %i.jx, label %bb.ac, label %._crit_edge.i157.i

bb.ac:                                            ; preds = %bb.ab
  %i.jy = load i32, ptr %i.ce, align 8
  %.not.i161.i = icmp eq i32 %i.jy, 0
  br i1 %.not.i161.i, label %bb.ae, label %.preheader.i162.i

.preheader.i162.i:                                ; preds = %bb.ac, %.preheader.i162.i
  %.025.i163.i = phi i64 [ %i.ka, %.preheader.i162.i ], [ %i.jt, %bb.ac ]
  %i.jz = shl i64 %.025.i163.i, 1
  %i.ka = tail call i64 @llvm.umax.i64(i64 %i.jz, i64 128) ; 5 uses
  %i.kb = icmp ugt i64 %i.jw, %i.ka
  br i1 %i.kb, label %.preheader.i162.i, label %bb.ad, !llvm.loop !0

bb.ad:                                            ; preds = %.preheader.i162.i
  %i.kc = tail call ptr @SDL_realloc_REAL(ptr noundef nonnull %i.ju, i64 noundef %i.ka) #14 ; 3 uses
  %.not31.i164.i = icmp eq ptr %i.kc, null
  br i1 %.not31.i164.i, label %bb.ae, label %.critedge.i165.i

.critedge.i165.i:                                 ; preds = %bb.ad
  store ptr %i.kc, ptr %i.cs, align 8
  store i64 %i.ka, ptr %i.ck, align 8
  br label %._crit_edge.i157.i

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  tail call void @SDL_free_REAL(ptr noundef nonnull %i.cd) #13
  tail call void @SDL_free_REAL(ptr noundef nonnull %i.ju) #13
  br label %tdefl_write_image_to_png_file_in_memory_ex.exit.thread

._crit_edge.i157.i:                               ; preds = %.critedge.i165.i, %bb.ab
  %i.kd = phi i64 [ %i.ka, %.critedge.i165.i ], [ %i.jt, %bb.ab ] ; 2 uses
  %i.ke = phi ptr [ %i.kc, %.critedge.i165.i ], [ %i.ju, %bb.ab ] ; 4 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 %i.jk
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.kf, ptr readonly align 1 %.079, i64 %i.jv, i1 false)
  store i64 %i.jw, ptr %3, align 8
  %i.kg = add i64 %i.jw, 4                        ; 3 uses
  %i.kh = icmp ugt i64 %i.kg, %i.kd
  br i1 %i.kh, label %bb.af, label %._crit_edge.i168.i

bb.af:                                            ; preds = %._crit_edge.i157.i
  %i.ki = load i32, ptr %i.ce, align 8
  %.not.i172.i = icmp eq i32 %i.ki, 0
  br i1 %.not.i172.i, label %bb.ah, label %.preheader.i173.i

.preheader.i173.i:                                ; preds = %bb.af, %.preheader.i173.i
  %.025.i174.i = phi i64 [ %i.kk, %.preheader.i173.i ], [ %i.kd, %bb.af ]
  %i.kj = shl i64 %.025.i174.i, 1
  %i.kk = tail call i64 @llvm.umax.i64(i64 %i.kj, i64 128) ; 4 uses
  %i.kl = icmp ugt i64 %i.kg, %i.kk
  br i1 %i.kl, label %.preheader.i173.i, label %bb.ag, !llvm.loop !0

bb.ag:                                            ; preds = %.preheader.i173.i
  %i.km = tail call ptr @SDL_realloc_REAL(ptr noundef nonnull %i.ke, i64 noundef %i.kk) #14 ; 3 uses
  %.not31.i175.i = icmp eq ptr %i.km, null
  br i1 %.not31.i175.i, label %bb.ah, label %.critedge.i176.i

.critedge.i176.i:                                 ; preds = %bb.ag
  store ptr %i.km, ptr %i.cs, align 8
  store i64 %i.kk, ptr %i.ck, align 8
  br label %._crit_edge.i168.i

bb.ah:                                            ; preds = %bb.ag, %bb.af
  tail call void @SDL_free_REAL(ptr noundef nonnull %i.cd) #13
  tail call void @SDL_free_REAL(ptr noundef nonnull %i.ke) #13
  br label %tdefl_write_image_to_png_file_in_memory_ex.exit.thread

._crit_edge.i168.i:                               ; preds = %.critedge.i176.i, %._crit_edge.i157.i
  %i.kn = phi ptr [ %i.km, %.critedge.i176.i ], [ %i.ke, %._crit_edge.i157.i ]
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 %i.jw
  store i32 0, ptr %i.ko, align 1
  %i.kp = load ptr, ptr %i.cs, align 8            ; 2 uses
  %i.kq = add nuw i32 %.073, 4
  %i.kr = zext i32 %i.kq to i64                   ; 2 uses
  %xtraiter229 = and i64 %i.kr, 1
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kp, i64 %i.jk
  %i.kt = getelementptr inbounds i8, ptr %i.ks, i64 -4
  %unroll_iter233 = and i64 %i.kr, 4294967294
  br label %.lr.ph.i180.i

.lr.ph.i180.i:                                    ; preds = %.lr.ph.i180.i, %._crit_edge.i168.i
  %.01220.i181.i = phi i32 [ -1, %._crit_edge.i168.i ], [ %i.md, %.lr.ph.i180.i ] ; 2 uses
  %.01418.i183.i = phi ptr [ %i.kt, %._crit_edge.i168.i ], [ %i.lm, %.lr.ph.i180.i ] ; 3 uses
  %niter234 = phi i64 [ 0, %._crit_edge.i168.i ], [ %niter234.next.1, %.lr.ph.i180.i ]
  %i.ku = getelementptr inbounds nuw i8, ptr %.01418.i183.i, i64 1
  %i.kv = load i8, ptr %.01418.i183.i, align 1
  %i.kw = lshr i32 %.01220.i181.i, 4
  %i.kx = zext i8 %i.kv to i32                    ; 2 uses
  %i.ky = xor i32 %.01220.i181.i, %i.kx
  %i.kz = and i32 %i.ky, 15
  %i.la = zext nneg i32 %i.kz to i64
  %i.lb = getelementptr inbounds nuw [4 x i8], ptr @mz_crc32.s_crc32, i64 %i.la
  %i.lc = load i32, ptr %i.lb, align 4
  %i.ld = xor i32 %i.lc, %i.kw                    ; 2 uses
  %i.le = lshr i32 %i.ld, 4
  %i.lf = and i32 %i.ld, 15
  %i.lg = lshr i32 %i.kx, 4
  %i.lh = xor i32 %i.lf, %i.lg
  %i.li = zext nneg i32 %i.lh to i64
  %i.lj = getelementptr inbounds nuw [4 x i8], ptr @mz_crc32.s_crc32, i64 %i.li
  %i.lk = load i32, ptr %i.lj, align 4
  %i.ll = xor i32 %i.le, %i.lk                    ; 2 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %.01418.i183.i, i64 2 ; 2 uses
  %i.ln = load i8, ptr %i.ku, align 1
  %i.lo = lshr i32 %i.ll, 4
  %i.lp = zext i8 %i.ln to i32                    ; 2 uses
  %i.lq = xor i32 %i.ll, %i.lp
  %i.lr = and i32 %i.lq, 15
  %i.ls = zext nneg i32 %i.lr to i64
  %i.lt = getelementptr inbounds nuw [4 x i8], ptr @mz_crc32.s_crc32, i64 %i.ls
  %i.lu = load i32, ptr %i.lt, align 4
  %i.lv = xor i32 %i.lu, %i.lo                    ; 2 uses
  %i.lw = lshr i32 %i.lv, 4
  %i.lx = and i32 %i.lv, 15
  %i.ly = lshr i32 %i.lp, 4
  %i.lz = xor i32 %i.lx, %i.ly
  %i.ma = zext nneg i32 %i.lz to i64
  %i.mb = getelementptr inbounds nuw [4 x i8], ptr @mz_crc32.s_crc32, i64 %i.ma
  %i.mc = load i32, ptr %i.mb, align 4
  %i.md = xor i32 %i.lw, %i.mc                    ; 4 uses
  %niter234.next.1 = add nuw nsw i64 %niter234, 2 ; 2 uses
  %niter234.ncmp.1 = icmp eq i64 %niter234.next.1, %unroll_iter233
  br i1 %niter234.ncmp.1, label %mz_crc32.exit186.i.unr-lcssa, label %.lr.ph.i180.i, !llvm.loop !1

mz_crc32.exit186.i.unr-lcssa:                     ; preds = %.lr.ph.i180.i
  %lcmp.mod230.not = icmp eq i64 %xtraiter229, 0
  br i1 %lcmp.mod230.not, label %mz_crc32.exit186.i, label %.lr.ph.i180.i.epil.preheader

.lr.ph.i180.i.epil.preheader:                     ; preds = %mz_crc32.exit186.i.unr-lcssa
  %lcmp.mod232 = trunc i32 %.073 to i1
  tail call void @llvm.assume(i1 %lcmp.mod232)
  %i.me = load i8, ptr %i.lm, align 1
  %i.mf = lshr i32 %i.md, 4
  %i.mg = zext i8 %i.me to i32                    ; 2 uses
  %i.mh = xor i32 %i.md, %i.mg
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
  %i.mu = xor i32 %i.mn, %i.mt
  br label %mz_crc32.exit186.i

mz_crc32.exit186.i:                               ; preds = %mz_crc32.exit186.i.unr-lcssa, %.lr.ph.i180.i.epil.preheader
  %.lcssa223 = phi i32 [ %i.md, %mz_crc32.exit186.i.unr-lcssa ], [ %i.mu, %.lr.ph.i180.i.epil.preheader ]
  %i.mv = xor i32 %.lcssa223, -1
  %i.mw = getelementptr inbounds i8, ptr %i.kp, i64 %i.jw
  %6 = tail call i32 @llvm.bswap.i32(i32 %i.mv)
  store i32 %6, ptr %i.mw, align 1
  %.pre331.pre.i = load i64, ptr %i.ck, align 8
  br label %.loopexit267.i

.loopexit267.i:                                   ; preds = %mz_crc32.exit186.i, %.critedge.i
  %.pre331.i = phi i64 [ %.pre331.pre.i, %mz_crc32.exit186.i ], [ %i.jh, %.critedge.i ] ; 4 uses
  %.pre32.i196.i = phi i64 [ %i.kg, %mz_crc32.exit186.i ], [ %i.iy, %.critedge.i ] ; 3 uses
  br i1 %i.co, label %bb.ai, label %.loopexit.i

bb.ai:                                            ; preds = %.loopexit267.i
  %i.mx = add i64 %.pre32.i196.i, 8               ; 5 uses
  %i.my = icmp ugt i64 %i.mx, %.pre331.i
  br i1 %i.my, label %bb.aj, label %._crit_edge.i187.i

._crit_edge.i187.i:                               ; preds = %bb.ai
  %.pre.i189.i = load ptr, ptr %i.cs, align 8
  br label %bb.am

bb.aj:                                            ; preds = %bb.ai
  %i.mz = load i32, ptr %i.ce, align 8
  %.not.i191.i = icmp eq i32 %i.mz, 0
  br i1 %.not.i191.i, label %._crit_edge334.i, label %.preheader.i192.i

._crit_edge334.i:                                 ; preds = %bb.aj
  %.pre335.i = load ptr, ptr %i.cs, align 8
  br label %bb.al

.preheader.i192.i:                                ; preds = %bb.aj, %.preheader.i192.i
  %.025.i193.i = phi i64 [ %i.nb, %.preheader.i192.i ], [ %.pre331.i, %bb.aj ]
  %i.na = shl i64 %.025.i193.i, 1
  %i.nb = tail call i64 @llvm.umax.i64(i64 %i.na, i64 128) ; 5 uses
  %i.nc = icmp ugt i64 %i.mx, %i.nb
  br i1 %i.nc, label %.preheader.i192.i, label %bb.ak, !llvm.loop !0

bb.ak:                                            ; preds = %.preheader.i192.i
  %i.nd = load ptr, ptr %i.cs, align 8            ; 2 uses
  %i.ne = tail call ptr @SDL_realloc_REAL(ptr noundef %i.nd, i64 noundef %i.nb) #14 ; 3 uses
  %.not31.i194.i = icmp eq ptr %i.ne, null
  br i1 %.not31.i194.i, label %bb.al, label %.critedge.i195.i

.critedge.i195.i:                                 ; preds = %bb.ak
  store ptr %i.ne, ptr %i.cs, align 8
  store i64 %i.nb, ptr %i.ck, align 8
  br label %bb.am

bb.al:                                            ; preds = %bb.ak, %._crit_edge334.i
  %i.nf = phi ptr [ %.pre335.i, %._crit_edge334.i ], [ %i.nd, %bb.ak ]
  tail call void @SDL_free_REAL(ptr noundef nonnull %i.cd) #13
  tail call void @SDL_free_REAL(ptr noundef %i.nf) #13
  br label %tdefl_write_image_to_png_file_in_memory_ex.exit.thread

bb.am:                                            ; preds = %.critedge.i195.i, %._crit_edge.i187.i
  %i.ng = phi i64 [ %.pre331.i, %._crit_edge.i187.i ], [ %i.nb, %.critedge.i195.i ] ; 3 uses
  %i.nh = phi ptr [ %.pre.i189.i, %._crit_edge.i187.i ], [ %i.ne, %.critedge.i195.i ] ; 4 uses
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.nh, i64 %.pre32.i196.i ; 2 uses
  %7 = tail call i32 @llvm.bswap.i32(i32 %.072)
  store i32 %7, ptr %.sroa.7.0..sroa_idx.i, align 1
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.7.0..sroa_idx.i, i64 4
  store i32 1397641844, ptr %.sroa.9.0..sroa_idx.i, align 1
  %i.ni = zext nneg i32 %.072 to i64              ; 2 uses
  %i.nj = add i64 %i.mx, %i.ni                    ; 6 uses
  %i.nk = icmp ugt i64 %i.nj, %i.ng
  br i1 %i.nk, label %bb.an, label %._crit_edge.i198.i

bb.an:                                            ; preds = %bb.am
  %i.nl = load i32, ptr %i.ce, align 8
  %.not.i202.i = icmp eq i32 %i.nl, 0
  br i1 %.not.i202.i, label %bb.ap, label %.preheader.i203.i

.preheader.i203.i:                                ; preds = %bb.an, %.preheader.i203.i
  %.025.i204.i = phi i64 [ %i.nn, %.preheader.i203.i ], [ %i.ng, %bb.an ]
  %i.nm = shl i64 %.025.i204.i, 1
  %i.nn = tail call i64 @llvm.umax.i64(i64 %i.nm, i64 128) ; 5 uses
  %i.no = icmp ugt i64 %i.nj, %i.nn
  br i1 %i.no, label %.preheader.i203.i, label %bb.ao, !llvm.loop !0

bb.ao:                                            ; preds = %.preheader.i203.i
  %i.np = tail call ptr @SDL_realloc_REAL(ptr noundef nonnull %i.nh, i64 noundef %i.nn) #14 ; 3 uses
  %.not31.i205.i = icmp eq ptr %i.np, null
  br i1 %.not31.i205.i, label %bb.ap, label %.critedge.i206.i

.critedge.i206.i:                                 ; preds = %bb.ao
  store ptr %i.np, ptr %i.cs, align 8
  store i64 %i.nn, ptr %i.ck, align 8
  br label %._crit_edge.i198.i

bb.ap:                                            ; preds = %bb.ao, %bb.an
  tail call void @SDL_free_REAL(ptr noundef nonnull %i.cd) #13
  tail call void @SDL_free_REAL(ptr noundef nonnull %i.nh) #13
  br label %tdefl_write_image_to_png_file_in_memory_ex.exit.thread

._crit_edge.i198.i:                               ; preds = %.critedge.i206.i, %bb.am
  %i.nq = phi i64 [ %i.nn, %.critedge.i206.i ], [ %i.ng, %bb.am ] ; 2 uses
  %i.nr = phi ptr [ %i.np, %.critedge.i206.i ], [ %i.nh, %bb.am ] ; 4 uses
  %i.ns = getelementptr inbounds nuw i8, ptr %i.nr, i64 %i.mx
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ns, ptr readonly align 1 %.077, i64 %i.ni, i1 false)
  store i64 %i.nj, ptr %3, align 8
  %i.nt = add i64 %i.nj, 4                        ; 3 uses
  %i.nu = icmp ugt i64 %i.nt, %i.nq
  br i1 %i.nu, label %bb.aq, label %.loopexit.loopexit.i

bb.aq:                                            ; preds = %._crit_edge.i198.i
  %i.nv = load i32, ptr %i.ce, align 8
  %.not.i213.i = icmp eq i32 %i.nv, 0
  br i1 %.not.i213.i, label %bb.as, label %.preheader.i214.i

.preheader.i214.i:                                ; preds = %bb.aq, %.preheader.i214.i
  %.025.i215.i = phi i64 [ %i.nx, %.preheader.i214.i ], [ %i.nq, %bb.aq ]
  %i.nw = shl i64 %.025.i215.i, 1
  %i.nx = tail call i64 @llvm.umax.i64(i64 %i.nw, i64 128) ; 4 uses
  %i.ny = icmp ugt i64 %i.nt, %i.nx
  br i1 %i.ny, label %.preheader.i214.i, label %bb.ar, !llvm.loop !0

bb.ar:                                            ; preds = %.preheader.i214.i
  %i.nz = tail call ptr @SDL_realloc_REAL(ptr noundef nonnull %i.nr, i64 noundef %i.nx) #14 ; 3 uses
  %.not31.i216.i = icmp eq ptr %i.nz, null
  br i1 %.not31.i216.i, label %bb.as, label %.critedge.i217.i

.critedge.i217.i:                                 ; preds = %bb.ar
  store ptr %i.nz, ptr %i.cs, align 8
  store i64 %i.nx, ptr %i.ck, align 8
  br label %.loopexit.loopexit.i

bb.as:                                            ; preds = %bb.ar, %bb.aq
  tail call void @SDL_free_REAL(ptr noundef nonnull %i.cd) #13
  tail call void @SDL_free_REAL(ptr noundef nonnull %i.nr) #13
  br label %tdefl_write_image_to_png_file_in_memory_ex.exit.thread

.loopexit.loopexit.i:                             ; preds = %.critedge.i217.i, %._crit_edge.i198.i
  %i.oa = phi ptr [ %i.nz, %.critedge.i217.i ], [ %i.nr, %._crit_edge.i198.i ]
  %i.ob = getelementptr inbounds nuw i8, ptr %i.oa, i64 %i.nj
  store i32 0, ptr %i.ob, align 1
  %i.oc = load ptr, ptr %i.cs, align 8            ; 2 uses
  %i.od = getelementptr inbounds nuw i8, ptr %i.oc, i64 %i.mx
  %i.oe = getelementptr inbounds i8, ptr %i.od, i64 -4
  %i.of = add nuw nsw i32 %.072, 4
  %i.og = zext nneg i32 %i.of to i64
  %i.oh = tail call fastcc i64 @mz_crc32(ptr noundef nonnull %i.oe, i64 noundef %i.og) ; 4 uses
  %i.oi = trunc i64 %i.oh to i8
  %i.oj = lshr i64 %i.oh, 24
  %i.ok = trunc nuw i64 %i.oj to i8
  %i.ol = getelementptr inbounds i8, ptr %i.oc, i64 %i.nj ; 4 uses
  store i8 %i.ok, ptr %i.ol, align 1
  %i.om = lshr i64 %i.oh, 16
  %i.on = trunc i64 %i.om to i8
  %i.oo = getelementptr inbounds nuw i8, ptr %i.ol, i64 1
  store i8 %i.on, ptr %i.oo, align 1
  %i.op = lshr i64 %i.oh, 8
  %i.oq = trunc i64 %i.op to i8
  %i.or = getelementptr inbounds nuw i8, ptr %i.ol, i64 2
  store i8 %i.oq, ptr %i.or, align 1
  %i.os = getelementptr inbounds nuw i8, ptr %i.ol, i64 3
  store i8 %i.oi, ptr %i.os, align 1
  %.pre.i = load i64, ptr %i.ck, align 8
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.loopexit.loopexit.i, %.loopexit267.i
  %i.ot = phi i64 [ %.pre.i, %.loopexit.loopexit.i ], [ %.pre331.i, %.loopexit267.i ] ; 2 uses
  %.pre32.i229.i = phi i64 [ %i.nt, %.loopexit.loopexit.i ], [ %.pre32.i196.i, %.loopexit267.i ] ; 3 uses
  %i.ou = add i64 %.pre32.i229.i, 8               ; 8 uses
  %i.ov = icmp ugt i64 %i.ou, %i.ot
  br i1 %i.ov, label %bb.at, label %._crit_edge.i220.i

._crit_edge.i220.i:                               ; preds = %.loopexit.i
  %.pre.i222.i = load ptr, ptr %i.cs, align 8
  br label %bb.aw

bb.at:                                            ; preds = %.loopexit.i
  %i.ow = load i32, ptr %i.ce, align 8
  %.not.i224.i = icmp eq i32 %i.ow, 0
  br i1 %.not.i224.i, label %._crit_edge332.i, label %.preheader.i225.i

._crit_edge332.i:                                 ; preds = %bb.at
  %.pre333.i = load ptr, ptr %i.cs, align 8
  br label %bb.av

.preheader.i225.i:                                ; preds = %bb.at, %.preheader.i225.i
  %.025.i226.i = phi i64 [ %i.oy, %.preheader.i225.i ], [ %i.ot, %bb.at ]
  %i.ox = shl i64 %.025.i226.i, 1
  %i.oy = tail call i64 @llvm.umax.i64(i64 %i.ox, i64 128) ; 4 uses
  %i.oz = icmp ugt i64 %i.ou, %i.oy
  br i1 %i.oz, label %.preheader.i225.i, label %bb.au, !llvm.loop !0

bb.au:                                            ; preds = %.preheader.i225.i
  %i.pa = load ptr, ptr %i.cs, align 8            ; 2 uses
  %i.pb = tail call ptr @SDL_realloc_REAL(ptr noundef %i.pa, i64 noundef %i.oy) #14 ; 3 uses
  %.not31.i227.i = icmp eq ptr %i.pb, null
  br i1 %.not31.i227.i, label %bb.av, label %.critedge.i228.i

.critedge.i228.i:                                 ; preds = %bb.au
  store ptr %i.pb, ptr %i.cs, align 8
  store i64 %i.oy, ptr %i.ck, align 8
  br label %bb.aw

bb.av:                                            ; preds = %bb.au, %._crit_edge332.i
  %i.pc = phi ptr [ %.pre333.i, %._crit_edge332.i ], [ %i.pa, %bb.au ]
  tail call void @SDL_free_REAL(ptr noundef nonnull %i.cd) #13
  tail call void @SDL_free_REAL(ptr noundef %i.pc) #13
  br label %tdefl_write_image_to_png_file_in_memory_ex.exit.thread

bb.aw:                                            ; preds = %.critedge.i228.i, %._crit_edge.i220.i
  %i.pd = phi ptr [ %.pre.i222.i, %._crit_edge.i220.i ], [ %i.pb, %.critedge.i228.i ]
  %i.pe = getelementptr inbounds nuw i8, ptr %i.pd, i64 %.pre32.i229.i
  store i64 6071208852995440640, ptr %i.pe, align 1
  store i64 %i.ou, ptr %3, align 8
  store ptr @tdefl_output_buffer_putter, ptr %i.cd, align 8
  %i.pf = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  store ptr %3, ptr %i.pf, align 8
  %i.pg = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  store <4 x i32> <i32 4224, i32 44, i32 12, i32 0>, ptr %i.pg, align 8
  %i.ph = getelementptr inbounds nuw i8, ptr %i.cd, i64 168618
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(65536) %i.ph, i8 0, i64 65536, i1 false)
  %i.pi = getelementptr inbounds nuw i8, ptr %i.cd, i64 84
  %i.pj = getelementptr inbounds nuw i8, ptr %i.cd, i64 112
  %i.pk = getelementptr inbounds nuw i8, ptr %i.cd, i64 37546
  %i.pl = getelementptr inbounds nuw i8, ptr %i.cd, i64 37547
  %i.pm = getelementptr inbounds nuw i8, ptr %i.cd, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.pi, i8 0, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.pj, i8 0, i64 20, i1 false)
  store ptr %i.pl, ptr %i.pm, align 8
  %i.pn = getelementptr inbounds nuw i8, ptr %i.cd, i64 56
  store ptr %i.pk, ptr %i.pn, align 8
  %i.po = getelementptr inbounds nuw i8, ptr %i.cd, i64 80
  store i32 8, ptr %i.po, align 8
  %i.pp = getelementptr inbounds nuw i8, ptr %i.cd, i64 234154 ; 2 uses
  %i.pq = getelementptr inbounds nuw i8, ptr %i.cd, i64 64
  store ptr %i.pp, ptr %i.pq, align 8
  %i.pr = getelementptr inbounds nuw i8, ptr %i.cd, i64 72
  store ptr %i.pp, ptr %i.pr, align 8
  %i.ps = getelementptr inbounds nuw i8, ptr %i.cd, i64 132
  store i32 0, ptr %i.ps, align 4
  %i.pt = getelementptr inbounds nuw i8, ptr %i.cd, i64 108
  store i32 0, ptr %i.pt, align 4
  %i.pu = getelementptr inbounds nuw i8, ptr %i.cd, i64 104
  store i32 0, ptr %i.pu, align 8
  %i.pv = getelementptr inbounds nuw i8, ptr %i.cd, i64 100
  store i32 0, ptr %i.pv, align 4
  %i.pw = getelementptr inbounds nuw i8, ptr %i.cd, i64 32
  store <4 x i32> <i32 1, i32 0, i32 0, i32 0>, ptr %i.pw, align 8
  %i.px = getelementptr inbounds nuw i8, ptr %i.cd, i64 136
  %i.py = getelementptr inbounds nuw i8, ptr %i.cd, i64 176
  %i.pz = getelementptr inbounds nuw i8, ptr %i.cd, i64 33226
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.px, i8 0, i64 36, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.py, i8 0, i64 24, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(640) %i.pz, i8 0, i64 640, i1 false)
  %i.qa = icmp sgt i32 %i.bw, 0
  br i1 %i.qa, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.aw
  %i.qb = sext i32 %i.cf to i64
  %i.qc = sext i32 %i.cc to i64
  %wide.trip.count.i = zext nneg i32 %i.bw to i64
  br label %bb.ax

bb.ax:                                            ; preds = %bb.ax, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.ax ] ; 2 uses
  %i.qd = call fastcc i32 @tdefl_compress_buffer(ptr noundef %i.cd, ptr noundef nonnull %i.a, i64 noundef 1, i32 noundef 0) ; 0 uses
  %i.qe = mul nsw i64 %indvars.iv.i, %i.qc
end_hunk_0
begin_hunk_1_@tdefl_optimize_huffman_table:bb.a
  store i32 0, ptr %i.py, align 4
  %i.pz = add nsw i64 %wide.trip.count147.pre-phi, -2 ; 2 uses
  %i.qa = add nsw i64 %wide.trip.count147.pre-phi, -3
  %xtraiter238 = and i64 %i.pz, 3                 ; 3 uses
  %i.qb = icmp ult i64 %i.qa, 3
  br i1 %i.qb, label %.epil.preheader237, label %.loopexit.new

.loopexit.new:                                    ; preds = %.loopexit
  %unroll_iter242 = and i64 %i.pz, -4
  br label %bb.ab

.preheader.unr-lcssa:                             ; preds = %bb.ab
  %lcmp.mod240.not = icmp eq i64 %xtraiter238, 0
  br i1 %lcmp.mod240.not, label %.preheader, label %.epil.preheader237

.epil.preheader237:                               ; preds = %.preheader.unr-lcssa, %.loopexit
  %indvars.iv144.epil.init = phi i64 [ 2, %.loopexit ], [ %indvars.iv.next145.3, %.preheader.unr-lcssa ]
  %.2114.epil.init = phi i32 [ 0, %.loopexit ], [ %i.rj, %.preheader.unr-lcssa ]
  %lcmp.mod241 = icmp ne i64 %xtraiter238, 0
  tail call void @llvm.assume(i1 %lcmp.mod241)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.aa, %.epil.preheader237
  %indvars.iv144.epil = phi i64 [ %indvars.iv144.epil.init, %.epil.preheader237 ], [ %indvars.iv.next145.epil, %bb.aa ] ; 3 uses
  %.2114.epil = phi i32 [ %.2114.epil.init, %.epil.preheader237 ], [ %i.qg, %bb.aa ]
  %epil.iter239 = phi i64 [ 0, %.epil.preheader237 ], [ %epil.iter239.next, %bb.aa ]
  %i.qc = getelementptr [4 x i8], ptr %i.c, i64 %indvars.iv144.epil
  %i.qd = getelementptr i8, ptr %i.qc, i64 -4
  %i.qe = load i32, ptr %i.qd, align 4
  %i.qf = add nsw i32 %i.qe, %.2114.epil
  %i.qg = shl i32 %i.qf, 1                        ; 2 uses
  %i.qh = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv144.epil
  store i32 %i.qg, ptr %i.qh, align 4
  %indvars.iv.next145.epil = add nuw nsw i64 %indvars.iv144.epil, 1
  %epil.iter239.next = add i64 %epil.iter239, 1   ; 2 uses
  %epil.iter239.cmp.not = icmp eq i64 %epil.iter239.next, %xtraiter238
  br i1 %epil.iter239.cmp.not, label %.preheader, label %bb.aa, !llvm.loop !354

.preheader:                                       ; preds = %bb.aa, %.preheader.unr-lcssa
  %i.qi = getelementptr inbounds nuw i8, ptr %0, i64 36682
  %i.qj = zext nneg i32 %1 to i64                 ; 2 uses
  %i.qk = getelementptr inbounds nuw [288 x i8], ptr %i.qi, i64 %i.qj
  %i.ql = getelementptr inbounds nuw i8, ptr %0, i64 34954
  %i.qm = getelementptr inbounds nuw [576 x i8], ptr %i.ql, i64 %i.qj
  %wide.trip.count152 = zext nneg i32 %2 to i64
  br label %bb.ac

bb.ab:                                            ; preds = %bb.ab, %.loopexit.new
  %indvars.iv144 = phi i64 [ 2, %.loopexit.new ], [ %indvars.iv.next145.3, %bb.ab ] ; 6 uses
  %.2114 = phi i32 [ 0, %.loopexit.new ], [ %i.rj, %bb.ab ]
  %niter243 = phi i64 [ 0, %.loopexit.new ], [ %niter243.next.3, %bb.ab ]
  %i.qn = getelementptr [4 x i8], ptr %i.c, i64 %indvars.iv144
  %i.qo = getelementptr i8, ptr %i.qn, i64 -4
  %i.qp = load i32, ptr %i.qo, align 4
  %i.qq = add nsw i32 %i.qp, %.2114
  %i.qr = shl i32 %i.qq, 1                        ; 2 uses
  %i.qs = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv144
  store i32 %i.qr, ptr %i.qs, align 8
  %indvars.iv.next145 = or disjoint i64 %indvars.iv144, 1 ; 2 uses
  %i.qt = getelementptr [4 x i8], ptr %i.c, i64 %indvars.iv.next145
  %i.qu = getelementptr i8, ptr %i.qt, i64 -4
  %i.qv = load i32, ptr %i.qu, align 8
  %i.qw = add nsw i32 %i.qv, %i.qr
  %i.qx = shl i32 %i.qw, 1                        ; 2 uses
  %i.qy = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.next145
  store i32 %i.qx, ptr %i.qy, align 4
  %indvars.iv.next145.1 = add nuw nsw i64 %indvars.iv144, 2 ; 2 uses
  %i.qz = getelementptr [4 x i8], ptr %i.c, i64 %indvars.iv.next145.1
  %i.ra = getelementptr i8, ptr %i.qz, i64 -4
  %i.rb = load i32, ptr %i.ra, align 4
  %i.rc = add nsw i32 %i.rb, %i.qx
  %i.rd = shl i32 %i.rc, 1                        ; 2 uses
  %i.re = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.next145.1
  store i32 %i.rd, ptr %i.re, align 8
  %indvars.iv.next145.2 = add nuw nsw i64 %indvars.iv144, 3 ; 2 uses
  %i.rf = getelementptr [4 x i8], ptr %i.c, i64 %indvars.iv.next145.2
  %i.rg = getelementptr i8, ptr %i.rf, i64 -4
  %i.rh = load i32, ptr %i.rg, align 8
  %i.ri = add nsw i32 %i.rh, %i.rd
  %i.rj = shl i32 %i.ri, 1                        ; 3 uses
  %i.rk = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.next145.2
  store i32 %i.rj, ptr %i.rk, align 4
  %indvars.iv.next145.3 = add nuw nsw i64 %indvars.iv144, 4 ; 2 uses
  %niter243.next.3 = add nuw i64 %niter243, 4     ; 2 uses
  %niter243.ncmp.3 = icmp eq i64 %niter243.next.3, %unroll_iter242
  br i1 %niter243.ncmp.3, label %.preheader.unr-lcssa, label %bb.ab, !llvm.loop !355

bb.ac:                                            ; preds = %.preheader, %bb.ag
  %indvars.iv149 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next150, %bb.ag ] ; 3 uses
  %i.rl = getelementptr inbounds nuw i8, ptr %i.qk, i64 %indvars.iv149
  %i.rm = load i8, ptr %i.rl, align 1             ; 4 uses
  %i.rn = icmp eq i8 %i.rm, 0
  br i1 %i.rn, label %bb.ag, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ro = zext i8 %i.rm to i32                    ; 2 uses
  %i.rp = zext i8 %i.rm to i64
  %i.rq = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.rp ; 2 uses
  %i.rr = load i32, ptr %i.rq, align 4            ; 3 uses
  %i.rs = add i32 %i.rr, 1
  store i32 %i.rs, ptr %i.rq, align 4
  %xtraiter247 = and i32 %i.ro, 3                 ; 3 uses
  %i.rt = icmp ult i8 %i.rm, 4
  br i1 %i.rt, label %.epil.preheader246, label %.new244

.new244:                                          ; preds = %bb.ad
  %unroll_iter253 = and i32 %i.ro, 252
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ae, %.new244
  %.0117 = phi i32 [ %i.rr, %.new244 ], [ %i.sh, %bb.ae ] ; 5 uses
  %.067116 = phi i32 [ 0, %.new244 ], [ %i.sg, %bb.ae ]
  %niter254 = phi i32 [ 0, %.new244 ], [ %niter254.next.3, %bb.ae ]
  %i.ru = shl i32 %.067116, 3
  %i.rv = shl i32 %.0117, 2
  %i.rw = and i32 %i.rv, 4
  %i.rx = or disjoint i32 %i.ru, %i.rw
  %i.ry = and i32 %.0117, 2
  %i.rz = or disjoint i32 %i.ry, %i.rx
  %i.sa = lshr i32 %.0117, 2
  %i.sb = and i32 %i.sa, 1
  %i.sc = or disjoint i32 %i.sb, %i.rz
  %i.sd = lshr i32 %.0117, 3
  %i.se = shl i32 %i.sc, 1
  %i.sf = and i32 %i.sd, 1
  %i.sg = or disjoint i32 %i.sf, %i.se            ; 3 uses
  %i.sh = lshr i32 %.0117, 4                      ; 2 uses
  %niter254.next.3 = add i32 %niter254, 4         ; 2 uses
  %niter254.ncmp.3.not = icmp eq i32 %niter254.next.3, %unroll_iter253
  br i1 %niter254.ncmp.3.not, label %.unr-lcssa245, label %bb.ae, !llvm.loop !6

.unr-lcssa245:                                    ; preds = %bb.ae
  %lcmp.mod249.not = icmp eq i32 %xtraiter247, 0
  br i1 %lcmp.mod249.not, label %.epilog-lcssa250, label %.epil.preheader246

.epil.preheader246:                               ; preds = %.unr-lcssa245, %bb.ad
  %.0117.epil.init = phi i32 [ %i.rr, %bb.ad ], [ %i.sh, %.unr-lcssa245 ]
  %.067116.epil.init = phi i32 [ 0, %bb.ad ], [ %i.sg, %.unr-lcssa245 ]
  %lcmp.mod252 = icmp ne i32 %xtraiter247, 0
  tail call void @llvm.assume(i1 %lcmp.mod252)
  br label %bb.af

bb.af:                                            ; preds = %bb.af, %.epil.preheader246
  %.0117.epil = phi i32 [ %.0117.epil.init, %.epil.preheader246 ], [ %i.sl, %bb.af ] ; 2 uses
  %.067116.epil = phi i32 [ %.067116.epil.init, %.epil.preheader246 ], [ %i.sk, %bb.af ]
  %epil.iter248 = phi i32 [ 0, %.epil.preheader246 ], [ %epil.iter248.next, %bb.af ]
  %i.si = shl i32 %.067116.epil, 1
  %i.sj = and i32 %.0117.epil, 1
  %i.sk = or disjoint i32 %i.sj, %i.si            ; 2 uses
  %i.sl = lshr i32 %.0117.epil, 1
  %epil.iter248.next = add i32 %epil.iter248, 1   ; 2 uses
  %epil.iter248.cmp.not = icmp eq i32 %epil.iter248.next, %xtraiter247
  br i1 %epil.iter248.cmp.not, label %.epilog-lcssa250, label %bb.af, !llvm.loop !356

.epilog-lcssa250:                                 ; preds = %bb.af, %.unr-lcssa245
  %.lcssa = phi i32 [ %i.sg, %.unr-lcssa245 ], [ %i.sk, %bb.af ]
  %i.sm = trunc i32 %.lcssa to i16
  %i.sn = getelementptr inbounds nuw [2 x i8], ptr %i.qm, i64 %indvars.iv149
  store i16 %i.sm, ptr %i.sn, align 2
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ac, %.epilog-lcssa250
  %indvars.iv.next150 = add nuw nsw i64 %indvars.iv149, 1 ; 2 uses
  %exitcond153.not = icmp eq i64 %indvars.iv.next150, %wide.trip.count152
  br i1 %exitcond153.not, label %bb.ah, label %bb.ac, !llvm.loop !7

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
declare i32 @llvm.bswap.i32(i32) #11

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

!llvm.module.flags = !{!8, !9}
!llvm.ident = !{!10}

!0 = distinct !{!0, !11}
!1 = distinct !{!1, !11}
!2 = distinct !{!2, !11}
!3 = distinct !{ptr @stbi__get8, null}
!4 = distinct !{!4, !11}
!5 = distinct !{!5, !11}
!6 = distinct !{!6, !11}
!7 = distinct !{!7, !11}
!8 = !{i32 8, !"PIC Level", i32 2}
!9 = !{i32 7, !"uwtable", i32 2}
!10 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"llvm.loop.isvectorized", i32 1}
!13 = !{!"llvm.loop.unroll.runtime.disable"}
!14 = !{!"branch_weights", i32 4, i32 12}
!15 = !{!"llvm.loop.unroll.disable"}
!16 = !{!"llvm.loop.unswitch.partial.disable"}
!17 = !{!"branch_weights", i32 4, i32 28}
!18 = distinct !{!18, !11, !12, !13}
!19 = distinct !{!19, !11, !12, !13}
!20 = distinct !{!20, !11, !13, !12}
!21 = distinct !{!21, i1 false, !"LVerDomain"}
!22 = distinct !{!22, !21}
!23 = distinct !{!23, !21}
!24 = distinct !{!24, !11, !12, !13}
!25 = distinct !{!25, !11, !12, !13}
!26 = distinct !{!26, !15}
!27 = distinct !{!27, !11, !12}
!28 = distinct !{!28, !11}
!29 = distinct !{!29, !11}
!30 = distinct !{!30, !11}
!31 = distinct !{!31, !11}
!32 = !{!22}
!33 = !{!23}
!34 = distinct !{!34, !11}
!35 = distinct !{!35, !11}
!36 = distinct !{null, null, null, ptr @stbi__get8, null}
!37 = distinct !{!37, !11}
!38 = distinct !{!38, !11}
!39 = distinct !{null, null, null}
!40 = distinct !{!40, !11}
!41 = distinct !{!41, !11}
!42 = distinct !{!42, !11}
!43 = distinct !{!43, !11, !16}
!44 = distinct !{!44, !11}
!45 = distinct !{!45, !11}
!46 = distinct !{!46, !11, !16}
!47 = distinct !{!47, !11}
!48 = distinct !{!48, !11}
!49 = distinct !{!49, !11}
!50 = distinct !{!50, !11}
!51 = distinct !{!51, !11}
!52 = distinct !{!52, !11}
!53 = distinct !{!53, !11, !16}
!54 = distinct !{!54, !11}
!55 = distinct !{!55, !11}
!56 = distinct !{!56, !11, !16}
!57 = distinct !{null, null, null, null}
!58 = distinct !{null, null, null, ptr @stbi__get8, null}
!59 = distinct !{!59, !11}
!60 = distinct !{!60, !11}
!61 = distinct !{!61, i1 false, !"LVerDomain"}
!62 = distinct !{!62, !61}
!63 = distinct !{!63, !61}
!64 = distinct !{!64, !11, !12}
!65 = distinct !{null, null, null}
!66 = distinct !{!66, !11}
!67 = distinct !{!67, !11}
!68 = distinct !{!68, !11}
!69 = distinct !{!69, !11}
!70 = distinct !{!70, !11}
!71 = distinct !{!71, !11}
!72 = distinct !{!72, !11}
!73 = distinct !{!73, !11}
!74 = distinct !{null}
!75 = distinct !{!75, !11}
!76 = distinct !{!76, !11}
!77 = distinct !{!77, !11}
!78 = distinct !{!78, !11}
!79 = distinct !{!79, !11}
!80 = distinct !{!80, !11}
!81 = distinct !{!81, !11}
!82 = distinct !{!82, !11}
!83 = distinct !{!83, !11}
!84 = distinct !{!84, !11}
!85 = distinct !{!85, !11}
!86 = distinct !{!86, !11}
!87 = !{!62}
!88 = !{!63}
!89 = distinct !{!89, !11}
!90 = distinct !{!90, !11}
!91 = distinct !{!91, !11}
!92 = distinct !{!92, i1 false, !"LVerDomain"}
!93 = distinct !{!93, !92}
!94 = distinct !{!94, !92}
!95 = distinct !{!95, !92}
!96 = distinct !{!96, !11, !12, !13}
!97 = distinct !{!97, !11, !12}
!98 = !{!93}
!99 = !{!94}
!100 = !{!95}
!101 = !{!93, !94}
!102 = distinct !{!102, !11, !12, !13}
!103 = distinct !{!103, !11, !12, !13}
!104 = distinct !{!104, !11, !12}
!105 = distinct !{!105, i1 false, !"LVerDomain"}
!106 = distinct !{!106, !105}
!107 = distinct !{!107, !105}
!108 = distinct !{!108, !11, !12, !13}
!109 = distinct !{!109, !11, !12}
!110 = !{!106}
!111 = !{!107}
!112 = distinct !{!112, !11, !12, !13}
!113 = distinct !{!113, !11, !12, !13}
!114 = distinct !{!114, !11, !13, !12}
!115 = distinct !{!115, !11}
!116 = distinct !{!116, !11}
!117 = distinct !{null}
!118 = distinct !{!118, !11}
!119 = distinct !{!119, !11}
!120 = distinct !{!120, !11}
!121 = distinct !{!121, !11}
!122 = distinct !{!122, !11}
!123 = distinct !{!123, !11}
!124 = distinct !{!124, !11}
!125 = distinct !{!125, !11}
!126 = distinct !{null}
!127 = distinct !{!127, !11}
!128 = distinct !{!128, !15}
!129 = distinct !{!129, !11}
!130 = distinct !{!130, !11}
!131 = distinct !{!131, !11}
!132 = distinct !{!132, !11}
!133 = distinct !{null}
!134 = distinct !{!134, !11}
!135 = distinct !{!135, !11}
!136 = distinct !{!136, !11, !16}
!137 = distinct !{!137, !11}
!138 = distinct !{!138, !11}
!139 = distinct !{!139, !11}
!140 = distinct !{!140, !11}
!141 = distinct !{!141, !11}
!142 = distinct !{!142, !11}
!143 = distinct !{null, null, ptr @stbi__get8, null}
!144 = distinct !{null, null, null, null, ptr @stbi__get8, null}
!145 = distinct !{null, null, null, null}
!146 = distinct !{null, null, null, ptr @stbi__get8, null}
!147 = distinct !{!147, !11}
!148 = distinct !{!148, !11}
!149 = distinct !{!149, !11}
!150 = distinct !{!150, !11}
!151 = distinct !{!151, !11}
!152 = distinct !{null, null, null, null}
!153 = distinct !{!153, !11}
!154 = distinct !{!154, !15}
!155 = distinct !{!155, !11}
!156 = distinct !{!156, !11}
!157 = distinct !{!157, !11}
!158 = distinct !{!158, !11}
!159 = distinct !{!159, !11, !12, !13}
!160 = distinct !{!160, !11, !12, !13}
!161 = distinct !{!161, !15}
!162 = distinct !{!162, !11, !12}
!163 = distinct !{!163, !11}
!164 = distinct !{!164, !11}
!165 = distinct !{!165, !11}
!166 = distinct !{!166, !11}
end_hunk_1
