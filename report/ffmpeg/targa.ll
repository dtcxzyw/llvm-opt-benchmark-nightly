Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/targa?download=true
inline.NumInlined: 3
inline.NumDeleted: 1
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@decode_frame:bb.a
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %.0219303 = phi i32 [ %i.np, %._crit_edge ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %i.kv = load ptr, ptr %1, align 8, !tbaa !35
  %i.kw = load i32, ptr %i.kn, align 8, !tbaa !44
  %i.kx = mul nsw i32 %i.kw, %.0219303
  %i.ky = sext i32 %i.kx to i64
  %i.kz = getelementptr inbounds i8, ptr %i.kv, i64 %i.ky ; 14 uses
  switch i8 %trunc, label %._crit_edge [
    i8 32, label %.lr.ph.split.us.preheader
    i8 24, label %.lr.ph.split.us297
    i8 16, label %.lr.ph.split.us299.preheader
    i8 8, label %.lr.ph.split.us301.preheader
  ]

.lr.ph.split.us301.preheader:                     ; preds = %.lr.ph
  %i.la = getelementptr i8, ptr %i.kz, i64 %i.kp  ; 3 uses
  br i1 %i.ks, label %.lr.ph.split.us301.epil.preheader, label %.lr.ph.split.us301

.lr.ph.split.us299.preheader:                     ; preds = %.lr.ph
  %i.lb = getelementptr [2 x i8], ptr %i.kz, i64 %i.kp ; 3 uses
  br i1 %i.kt, label %.lr.ph.split.us299.epil.preheader, label %.lr.ph.split.us299

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %i.lc = getelementptr [4 x i8], ptr %i.kz, i64 %i.kp ; 3 uses
  br i1 %i.ku, label %.lr.ph.split.us.epil.preheader, label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader, %.lr.ph.split.us
  %indvars.iv328 = phi i64 [ %indvars.iv.next329.1, %.lr.ph.split.us ], [ 0, %.lr.ph.split.us.preheader ] ; 5 uses
  %niter446 = phi i64 [ %niter446.next.1, %.lr.ph.split.us ], [ 0, %.lr.ph.split.us.preheader ]
  %i.ld = xor i64 %indvars.iv328, -1
  %i.le = getelementptr [4 x i8], ptr %i.lc, i64 %i.ld ; 2 uses
  %i.lf = load i32, ptr %i.le, align 4, !tbaa !44
  %i.lg = getelementptr inbounds nuw [4 x i8], ptr %i.kz, i64 %indvars.iv328 ; 2 uses
  %i.lh = load i32, ptr %i.lg, align 4, !tbaa !44
  store i32 %i.lh, ptr %i.le, align 4, !tbaa !44
  store i32 %i.lf, ptr %i.lg, align 4, !tbaa !44
  %i.li = xor i64 %indvars.iv328, -2
  %i.lj = getelementptr [4 x i8], ptr %i.lc, i64 %i.li ; 2 uses
  %i.lk = load i32, ptr %i.lj, align 4, !tbaa !44
  %i.ll = getelementptr inbounds nuw [4 x i8], ptr %i.kz, i64 %indvars.iv328
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ll, i64 4 ; 2 uses
  %i.ln = load i32, ptr %i.lm, align 4, !tbaa !44
  store i32 %i.ln, ptr %i.lj, align 4, !tbaa !44
  store i32 %i.lk, ptr %i.lm, align 4, !tbaa !44
  %indvars.iv.next329.1 = add nuw nsw i64 %indvars.iv328, 2 ; 2 uses
  %niter446.next.1 = add i64 %niter446, 2         ; 2 uses
  %niter446.ncmp.1 = icmp eq i64 %niter446.next.1, %unroll_iter445
  br i1 %niter446.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph.split.us, !llvm.loop !72

.lr.ph.split.us297:                               ; preds = %.lr.ph, %.lr.ph.split.us297
  %indvars.iv323 = phi i64 [ %indvars.iv.next324, %.lr.ph.split.us297 ], [ 0, %.lr.ph ] ; 3 uses
  %i.lo = mul nuw nsw i64 %indvars.iv323, 3
  %i.lp = sub nuw nsw i64 %i.kq, %indvars.iv323
  %i.lq = mul nuw nsw i64 %i.lp, 3
  %i.lr = getelementptr i8, ptr %i.kz, i64 %i.lq  ; 3 uses
  %i.ls = getelementptr i8, ptr %i.lr, i64 -3     ; 2 uses
  %i.lt = load i8, ptr %i.ls, align 1, !tbaa !36
  %i.lu = getelementptr inbounds nuw i8, ptr %i.kz, i64 %i.lo ; 4 uses
  %i.lv = load i8, ptr %i.lu, align 1, !tbaa !36
  store i8 %i.lv, ptr %i.ls, align 1, !tbaa !36
  store i8 %i.lt, ptr %i.lu, align 1, !tbaa !36
  %i.lw = getelementptr i8, ptr %i.lr, i64 -2     ; 2 uses
  %i.lx = load i8, ptr %i.lw, align 1, !tbaa !36
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lu, i64 1 ; 2 uses
  %i.lz = load i8, ptr %i.ly, align 1, !tbaa !36
  store i8 %i.lz, ptr %i.lw, align 1, !tbaa !36
  store i8 %i.lx, ptr %i.ly, align 1, !tbaa !36
  %i.ma = getelementptr i8, ptr %i.lr, i64 -1     ; 2 uses
  %i.mb = load i8, ptr %i.ma, align 1, !tbaa !36
  %i.mc = getelementptr inbounds nuw i8, ptr %i.lu, i64 2 ; 2 uses
  %i.md = load i8, ptr %i.mc, align 1, !tbaa !36
  store i8 %i.md, ptr %i.ma, align 1, !tbaa !36
  store i8 %i.mb, ptr %i.mc, align 1, !tbaa !36
  %indvars.iv.next324 = add nuw nsw i64 %indvars.iv323, 1 ; 2 uses
  %exitcond327.not = icmp eq i64 %indvars.iv.next324, %wide.trip.count326
  br i1 %exitcond327.not, label %._crit_edge, label %.lr.ph.split.us297, !llvm.loop !72

.lr.ph.split.us299:                               ; preds = %.lr.ph.split.us299.preheader, %.lr.ph.split.us299
  %indvars.iv318 = phi i64 [ %indvars.iv.next319.1, %.lr.ph.split.us299 ], [ 0, %.lr.ph.split.us299.preheader ] ; 5 uses
  %niter441 = phi i64 [ %niter441.next.1, %.lr.ph.split.us299 ], [ 0, %.lr.ph.split.us299.preheader ]
  %i.me = xor i64 %indvars.iv318, -1
  %i.mf = getelementptr [2 x i8], ptr %i.lb, i64 %i.me ; 2 uses
  %i.mg = load i16, ptr %i.mf, align 2, !tbaa !73
  %i.mh = getelementptr inbounds nuw [2 x i8], ptr %i.kz, i64 %indvars.iv318 ; 2 uses
  %i.mi = load i16, ptr %i.mh, align 2, !tbaa !73
  store i16 %i.mi, ptr %i.mf, align 2, !tbaa !73
  store i16 %i.mg, ptr %i.mh, align 2, !tbaa !73
  %i.mj = xor i64 %indvars.iv318, -2
  %i.mk = getelementptr [2 x i8], ptr %i.lb, i64 %i.mj ; 2 uses
  %i.ml = load i16, ptr %i.mk, align 2, !tbaa !73
  %i.mm = getelementptr inbounds nuw [2 x i8], ptr %i.kz, i64 %indvars.iv318
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mm, i64 2 ; 2 uses
  %i.mo = load i16, ptr %i.mn, align 2, !tbaa !73
  store i16 %i.mo, ptr %i.mk, align 2, !tbaa !73
  store i16 %i.ml, ptr %i.mn, align 2, !tbaa !73
  %indvars.iv.next319.1 = add nuw nsw i64 %indvars.iv318, 2 ; 2 uses
  %niter441.next.1 = add i64 %niter441, 2         ; 2 uses
  %niter441.ncmp.1 = icmp eq i64 %niter441.next.1, %unroll_iter440
  br i1 %niter441.ncmp.1, label %._crit_edge.loopexit420.unr-lcssa, label %.lr.ph.split.us299, !llvm.loop !72

.lr.ph.split.us301:                               ; preds = %.lr.ph.split.us301.preheader, %.lr.ph.split.us301
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph.split.us301 ], [ 0, %.lr.ph.split.us301.preheader ] ; 5 uses
  %niter436 = phi i64 [ %niter436.next.1, %.lr.ph.split.us301 ], [ 0, %.lr.ph.split.us301.preheader ]
  %i.mp = xor i64 %indvars.iv, -1
  %i.mq = getelementptr i8, ptr %i.la, i64 %i.mp  ; 2 uses
  %i.mr = load i8, ptr %i.mq, align 1, !tbaa !36
  %i.ms = getelementptr inbounds nuw i8, ptr %i.kz, i64 %indvars.iv ; 2 uses
  %i.mt = load i8, ptr %i.ms, align 1, !tbaa !36
  store i8 %i.mt, ptr %i.mq, align 1, !tbaa !36
  store i8 %i.mr, ptr %i.ms, align 1, !tbaa !36
  %i.mu = xor i64 %indvars.iv, -2
  %i.mv = getelementptr i8, ptr %i.la, i64 %i.mu  ; 2 uses
  %i.mw = load i8, ptr %i.mv, align 1, !tbaa !36
  %i.mx = getelementptr inbounds nuw i8, ptr %i.kz, i64 %indvars.iv
  %i.my = getelementptr inbounds nuw i8, ptr %i.mx, i64 1 ; 2 uses
  %i.mz = load i8, ptr %i.my, align 1, !tbaa !36
  store i8 %i.mz, ptr %i.mv, align 1, !tbaa !36
  store i8 %i.mw, ptr %i.my, align 1, !tbaa !36
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter436.next.1 = add i64 %niter436, 2         ; 2 uses
  %niter436.ncmp.1 = icmp eq i64 %niter436.next.1, %unroll_iter435
  br i1 %niter436.ncmp.1, label %._crit_edge.loopexit421.unr-lcssa, label %.lr.ph.split.us301, !llvm.loop !72

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph.split.us
  br i1 %lcmp.mod443.not, label %._crit_edge, label %.lr.ph.split.us.epil.preheader

.lr.ph.split.us.epil.preheader:                   ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.split.us.preheader
  %indvars.iv328.epil.init = phi i64 [ 0, %.lr.ph.split.us.preheader ], [ %indvars.iv.next329.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod444)
  %i.na = xor i64 %indvars.iv328.epil.init, -1
  %i.nb = getelementptr [4 x i8], ptr %i.lc, i64 %i.na ; 2 uses
  %i.nc = load i32, ptr %i.nb, align 4, !tbaa !44
  %i.nd = getelementptr inbounds nuw [4 x i8], ptr %i.kz, i64 %indvars.iv328.epil.init ; 2 uses
  %i.ne = load i32, ptr %i.nd, align 4, !tbaa !44
  store i32 %i.ne, ptr %i.nb, align 4, !tbaa !44
  store i32 %i.nc, ptr %i.nd, align 4, !tbaa !44
  br label %._crit_edge

._crit_edge.loopexit420.unr-lcssa:                ; preds = %.lr.ph.split.us299
  br i1 %lcmp.mod438.not, label %._crit_edge, label %.lr.ph.split.us299.epil.preheader

.lr.ph.split.us299.epil.preheader:                ; preds = %._crit_edge.loopexit420.unr-lcssa, %.lr.ph.split.us299.preheader
  %indvars.iv318.epil.init = phi i64 [ 0, %.lr.ph.split.us299.preheader ], [ %indvars.iv.next319.1, %._crit_edge.loopexit420.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod439)
  %i.nf = xor i64 %indvars.iv318.epil.init, -1
  %i.ng = getelementptr [2 x i8], ptr %i.lb, i64 %i.nf ; 2 uses
  %i.nh = load i16, ptr %i.ng, align 2, !tbaa !73
  %i.ni = getelementptr inbounds nuw [2 x i8], ptr %i.kz, i64 %indvars.iv318.epil.init ; 2 uses
  %i.nj = load i16, ptr %i.ni, align 2, !tbaa !73
  store i16 %i.nj, ptr %i.ng, align 2, !tbaa !73
  store i16 %i.nh, ptr %i.ni, align 2, !tbaa !73
  br label %._crit_edge

._crit_edge.loopexit421.unr-lcssa:                ; preds = %.lr.ph.split.us301
  br i1 %lcmp.mod433.not, label %._crit_edge, label %.lr.ph.split.us301.epil.preheader

.lr.ph.split.us301.epil.preheader:                ; preds = %._crit_edge.loopexit421.unr-lcssa, %.lr.ph.split.us301.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.split.us301.preheader ], [ %indvars.iv.next.1, %._crit_edge.loopexit421.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod434)
  %i.nk = xor i64 %indvars.iv.epil.init, -1
  %i.nl = getelementptr i8, ptr %i.la, i64 %i.nk  ; 2 uses
  %i.nm = load i8, ptr %i.nl, align 1, !tbaa !36
  %i.nn = getelementptr inbounds nuw i8, ptr %i.kz, i64 %indvars.iv.epil.init ; 2 uses
  %i.no = load i8, ptr %i.nn, align 1, !tbaa !36
  store i8 %i.no, ptr %i.nl, align 1, !tbaa !36
  store i8 %i.nm, ptr %i.nn, align 1, !tbaa !36
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.split.us301.epil.preheader, %._crit_edge.loopexit421.unr-lcssa, %.lr.ph.split.us299.epil.preheader, %._crit_edge.loopexit420.unr-lcssa, %.lr.ph.split.us297, %.lr.ph.split.us.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %i.np = add nuw nsw i32 %.0219303, 1            ; 2 uses
  %exitcond333.not = icmp eq i32 %i.np, %.0.i265
  br i1 %exitcond333.not, label %.loopexit, label %.lr.ph, !llvm.loop !75

.loopexit:                                        ; preds = %._crit_edge, %.lr.ph304, %advance_line.exit.thread
  store i32 1, ptr %2, align 4, !tbaa !44
  %i.nq = load i32, ptr %i.e, align 8, !tbaa !31
  br label %.critedge

.critedge:                                        ; preds = %.thread279, %.thread, %bb.ah, %bb.ae, %bb.y, %bb.al, %.loopexit, %bb.ad, %bb.aa, %bb.x, %bb.v, %bb.q
  %.6 = phi i32 [ -1094995529, %bb.q ], [ -1094995529, %bb.v ], [ -1094995529, %bb.x ], [ -1094995529, %bb.ad ], [ %i.cu, %bb.aa ], [ %i.cq, %bb.y ], [ %i.nq, %.loopexit ], [ %i.jd, %bb.al ], [ -1094995529, %.thread279 ], [ %i.dj, %bb.ae ], [ -1094995529, %.thread ], [ -1094995529, %bb.ah ]
  ret i32 %.6
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

declare i32 @ff_set_dimensions(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @ff_get_buffer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1094995529, 1) i32 @targa_decode_rle(ptr noundef %0, ptr nofree noundef captures(none) %1, ptr nofree noundef writeonly captures(address) %2, i32 noundef range(i32 0, 65536) %3, i32 noundef range(i32 0, 65536) %4, i32 noundef %5, i32 noundef range(i32 0, 256) %6, i32 noundef range(i32 1, 5) %7) unnamed_addr #0 {
bb.a:
  %.sroa.0 = alloca i32, align 4                  ; 8 uses
  %i.a = add nuw nsw i32 %6, 1
  %i.b = lshr i32 %i.a, 3                         ; 2 uses
  %.not116 = icmp eq ptr %2, null
  br i1 %.not116, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = zext nneg i32 %i.b to i64                ; 11 uses
  %i.e = add nsw i32 %7, -1                       ; 2 uses
  %i.f = mul nsw i32 %7, %5
  %i.g = sext i32 %i.f to i64                     ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %advance_line.exit.thread
  %.064120 = phi ptr [ %2, %.lr.ph ], [ %.6, %advance_line.exit.thread ] ; 2 uses
  %.065119 = phi ptr [ %2, %.lr.ph ], [ %.570, %advance_line.exit.thread ] ; 2 uses
  %.075118 = phi i32 [ 0, %.lr.ph ], [ %.580, %advance_line.exit.thread ] ; 2 uses
  %.094117 = phi i32 [ 0, %.lr.ph ], [ %.599, %advance_line.exit.thread ] ; 2 uses
  %i.h = load ptr, ptr %i.c, align 8, !tbaa !34
  %i.i = load ptr, ptr %1, align 8, !tbaa !37     ; 3 uses
  %i.j = ptrtoint ptr %i.h to i64                 ; 2 uses
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = trunc i64 %i.l to i32
  %i.n = icmp slt i32 %i.m, 1
  br i1 %i.n, label %._crit_edge.thread.sink.split, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 1 ; 5 uses
  store ptr %i.o, ptr %1, align 8, !tbaa !35
  %i.p = load i8, ptr %i.i, align 1, !tbaa !36    ; 2 uses
  %i.q = and i8 %i.p, 127
  %narrow = add nuw i8 %i.q, 1
  %i.r = zext i8 %narrow to i32                   ; 2 uses
  %.not87 = icmp sgt i8 %i.p, -1
  br i1 %.not87, label %.preheader, label %bb.h

.preheader:                                       ; preds = %bb.c, %advance_line.exit
  %i.s = phi ptr [ %i.ae, %advance_line.exit ], [ %i.o, %bb.c ] ; 2 uses
  %.195 = phi i32 [ %.296, %advance_line.exit ], [ %.094117, %bb.c ] ; 2 uses
  %.176 = phi i32 [ %.277, %advance_line.exit ], [ %.075118, %bb.c ] ; 2 uses
  %.172 = phi i32 [ %i.af, %advance_line.exit ], [ %i.r, %bb.c ] ; 2 uses
  %.166 = phi ptr [ %.267, %advance_line.exit ], [ %.065119, %bb.c ] ; 2 uses
  %.1 = phi ptr [ %.2, %advance_line.exit ], [ %.064120, %bb.c ] ; 2 uses
  %i.t = sub nsw i32 %3, %.176
  %i.u = tail call i32 @llvm.smin.i32(i32 %.172, i32 %i.t) ; 3 uses
  %i.v = mul nsw i32 %i.u, %i.b                   ; 2 uses
  %i.w = load ptr, ptr %i.c, align 8, !tbaa !34
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = ptrtoint ptr %i.s to i64
  %i.z = sub i64 %i.x, %i.y
  %i.aa = zext i32 %i.v to i64
  %i.ab = tail call i64 @llvm.smin.i64(i64 %i.z, i64 %i.aa)
  %i.ac = and i64 %i.ab, 4294967295               ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.1, ptr align 1 %i.s, i64 %i.ac, i1 false)
  %i.ad = load ptr, ptr %1, align 8, !tbaa !37
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ac ; 2 uses
  store ptr %i.ae, ptr %1, align 8, !tbaa !37
  %i.af = sub nsw i32 %.172, %i.u                 ; 4 uses
  %i.ag = sext i32 %i.v to i64
  %i.ah = getelementptr inbounds i8, ptr %.1, i64 %i.ag
  %i.ai = add nsw i32 %i.u, %.176                 ; 2 uses
  %i.aj = icmp eq i32 %i.ai, %3
  br i1 %i.aj, label %bb.d, label %advance_line.exit

bb.d:                                             ; preds = %.preheader
  %i.ak = add nsw i32 %.195, %7                   ; 3 uses
  %i.al = icmp slt i32 %i.ak, %4
  br i1 %i.al, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.am = getelementptr inbounds i8, ptr %.166, i64 %i.g ; 2 uses
  br label %advance_line.exit

bb.f:                                             ; preds = %bb.d
  %i.an = add nuw nsw i32 %i.ak, 1
  %i.ao = and i32 %i.an, %i.e                     ; 4 uses
  %.not.i = icmp ne i32 %i.ao, 0
  %i.ap = icmp samesign ult i32 %i.ao, %4
  %or.cond.i = and i1 %.not.i, %i.ap
  br i1 %or.cond.i, label %bb.g, label %._crit_edge

bb.g:                                             ; preds = %bb.f
  %i.aq = mul nsw i32 %i.ao, %5
  %i.ar = sext i32 %i.aq to i64
  %i.as = getelementptr inbounds i8, ptr %2, i64 %i.ar ; 2 uses
  br label %advance_line.exit

advance_line.exit:                                ; preds = %bb.g, %bb.e, %.preheader
  %.296 = phi i32 [ %.195, %.preheader ], [ %i.ak, %bb.e ], [ %i.ao, %bb.g ] ; 2 uses
  %.277 = phi i32 [ %i.ai, %.preheader ], [ 0, %bb.e ], [ 0, %bb.g ] ; 2 uses
  %.267 = phi ptr [ %.166, %.preheader ], [ %i.am, %bb.e ], [ %i.as, %bb.g ] ; 2 uses
  %.2 = phi ptr [ %i.ah, %.preheader ], [ %i.am, %bb.e ], [ %i.as, %bb.g ] ; 3 uses
  %i.at = icmp ne ptr %.2, null
  %i.au = icmp sgt i32 %i.af, 0
  %i.av = select i1 %i.at, i1 %i.au, i1 false
  br i1 %i.av, label %.preheader, label %advance_line.exit.thread, !llvm.loop !76

bb.h:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  %i.aw = ptrtoint ptr %i.o to i64
  %i.ax = sub i64 %i.j, %i.aw
  %i.ay = tail call i64 @llvm.smin.i64(i64 %i.ax, i64 %i.d)
  %i.az = and i64 %i.ay, 4294967295               ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0, ptr nonnull align 1 %i.o, i64 %i.az, i1 false)
  %i.ba = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.az
  store ptr %i.ba, ptr %1, align 8, !tbaa !37
  br label %bb.i

bb.i:                                             ; preds = %advance_line.exit92, %bb.h
  %.397 = phi i32 [ %.094117, %bb.h ], [ %.498, %advance_line.exit92 ] ; 2 uses
  %.378 = phi i32 [ %.075118, %bb.h ], [ %.479, %advance_line.exit92 ] ; 2 uses
  %.273 = phi i32 [ %i.r, %bb.h ], [ %i.bm, %advance_line.exit92 ] ; 2 uses
  %.368 = phi ptr [ %.065119, %bb.h ], [ %.469, %advance_line.exit92 ] ; 2 uses
  %.3 = phi ptr [ %.064120, %bb.h ], [ %.5, %advance_line.exit92 ] ; 2 uses
  %i.bb = sub i32 %3, %.378
  %i.bc = tail call i32 @llvm.smin.i32(i32 %.273, i32 %i.bb) ; 6 uses
  %i.bd = add nsw i32 %i.bc, -1
  %xtraiter = and i32 %i.bc, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.i, %.prol.preheader
  %.4.prol = phi ptr [ %i.be, %.prol.preheader ], [ %.3, %bb.i ] ; 2 uses
  %.0.prol = phi i32 [ %i.bf, %.prol.preheader ], [ %i.bc, %bb.i ]
  %prol.iter = phi i32 [ %prol.iter.next, %.prol.preheader ], [ 0, %bb.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.4.prol, ptr nonnull align 4 %.sroa.0, i64 %i.d, i1 false)
  %i.be = getelementptr inbounds nuw i8, ptr %.4.prol, i64 %i.d ; 3 uses
  %i.bf = add nsw i32 %.0.prol, -1                ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !77

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.i
  %.lcssa.unr = phi ptr [ poison, %bb.i ], [ %i.be, %.prol.preheader ]
  %.4.unr = phi ptr [ %.3, %bb.i ], [ %i.be, %.prol.preheader ]
  %.0.unr = phi i32 [ %i.bc, %bb.i ], [ %i.bf, %.prol.preheader ]
  %i.bg = icmp ult i32 %i.bd, 3
  br i1 %i.bg, label %.unr-lcssa, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %.4 = phi ptr [ %i.bk, %.new ], [ %.4.unr, %.prol.loopexit ] ; 2 uses
  %.0 = phi i32 [ %i.bl, %.new ], [ %.0.unr, %.prol.loopexit ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.4, ptr nonnull align 4 %.sroa.0, i64 %i.d, i1 false)
  %i.bh = getelementptr inbounds nuw i8, ptr %.4, i64 %i.d ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bh, ptr nonnull align 4 %.sroa.0, i64 %i.d, i1 false)
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.d ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bi, ptr nonnull align 4 %.sroa.0, i64 %i.d, i1 false)
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.d ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bj, ptr nonnull align 4 %.sroa.0, i64 %i.d, i1 false)
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.d ; 2 uses
  %i.bl = add nsw i32 %.0, -4                     ; 2 uses
  %.not88.3 = icmp eq i32 %i.bl, 0
  br i1 %.not88.3, label %.unr-lcssa, label %.new, !llvm.loop !78

.unr-lcssa:                                       ; preds = %.new, %.prol.loopexit
  %.lcssa = phi ptr [ %.lcssa.unr, %.prol.loopexit ], [ %i.bk, %.new ]
  %i.bm = sub nsw i32 %.273, %i.bc                ; 3 uses
  %i.bn = add nsw i32 %i.bc, %.378                ; 2 uses
  %i.bo = icmp eq i32 %i.bn, %3
  br i1 %i.bo, label %bb.j, label %advance_line.exit92

bb.j:                                             ; preds = %.unr-lcssa
  %i.bp = add nsw i32 %.397, %7                   ; 3 uses
  %i.bq = icmp slt i32 %i.bp, %4
  br i1 %i.bq, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.br = getelementptr inbounds i8, ptr %.368, i64 %i.g ; 2 uses
  br label %advance_line.exit92

bb.l:                                             ; preds = %bb.j
  %i.bs = add nuw nsw i32 %i.bp, 1
  %i.bt = and i32 %i.bs, %i.e                     ; 5 uses
  %.not.i89 = icmp ne i32 %i.bt, 0
  %i.bu = icmp samesign ult i32 %i.bt, %4
  %or.cond.i90 = and i1 %.not.i89, %i.bu
  br i1 %or.cond.i90, label %bb.m, label %advance_line.exit92.thread

bb.m:                                             ; preds = %bb.l
  %i.bv = mul nsw i32 %i.bt, %5
  %i.bw = sext i32 %i.bv to i64
  %i.bx = getelementptr inbounds i8, ptr %2, i64 %i.bw ; 2 uses
  br label %advance_line.exit92

advance_line.exit92:                              ; preds = %bb.m, %bb.k, %.unr-lcssa
  %.498 = phi i32 [ %.397, %.unr-lcssa ], [ %i.bp, %bb.k ], [ %i.bt, %bb.m ] ; 2 uses
  %.479 = phi i32 [ %i.bn, %.unr-lcssa ], [ 0, %bb.k ], [ 0, %bb.m ] ; 2 uses
  %.469 = phi ptr [ %.368, %.unr-lcssa ], [ %i.br, %bb.k ], [ %i.bx, %bb.m ] ; 2 uses
  %.5 = phi ptr [ %.lcssa, %.unr-lcssa ], [ %i.br, %bb.k ], [ %i.bx, %bb.m ] ; 3 uses
  %i.by = icmp ne ptr %.5, null
  %i.bz = icmp sgt i32 %i.bm, 0
  %i.ca = select i1 %i.by, i1 %i.bz, i1 false
  br i1 %i.ca, label %bb.i, label %advance_line.exit92.thread, !llvm.loop !79

advance_line.exit92.thread:                       ; preds = %bb.l, %advance_line.exit92
  %.5112 = phi ptr [ %.5, %advance_line.exit92 ], [ null, %bb.l ]
  %.469111 = phi ptr [ %.469, %advance_line.exit92 ], [ null, %bb.l ]
  %.479110 = phi i32 [ %.479, %advance_line.exit92 ], [ 0, %bb.l ]
  %.498109 = phi i32 [ %.498, %advance_line.exit92 ], [ %i.bt, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  br label %advance_line.exit.thread

advance_line.exit.thread:                         ; preds = %advance_line.exit, %advance_line.exit92.thread
  %.599 = phi i32 [ %.498109, %advance_line.exit92.thread ], [ %.296, %advance_line.exit ]
  %.580 = phi i32 [ %.479110, %advance_line.exit92.thread ], [ %.277, %advance_line.exit ]
  %.374 = phi i32 [ %i.bm, %advance_line.exit92.thread ], [ %i.af, %advance_line.exit ]
  %.570 = phi ptr [ %.469111, %advance_line.exit92.thread ], [ %.267, %advance_line.exit ]
  %.6 = phi ptr [ %.5112, %advance_line.exit92.thread ], [ %.2, %advance_line.exit ] ; 2 uses
  %.not = icmp eq ptr %.6, null
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !80

._crit_edge:                                      ; preds = %advance_line.exit.thread, %bb.f
  %.374142 = phi i32 [ %i.af, %bb.f ], [ %.374, %advance_line.exit.thread ]
  %i.cb = icmp eq i32 %.374142, 0
  br i1 %i.cb, label %._crit_edge.thread, label %._crit_edge.thread.sink.split

._crit_edge.thread.sink.split:                    ; preds = %bb.b, %._crit_edge
  %.str.13.sink = phi ptr [ @.str.13, %._crit_edge ], [ @.str.12, %bb.b ]
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull %.str.13.sink) #6
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %._crit_edge.thread.sink.split, %bb.a, %._crit_edge
  %.081 = phi i32 [ 0, %._crit_edge ], [ 0, %bb.a ], [ -1094995529, %._crit_edge.thread.sink.split ]
  ret i32 %.081
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold nofree noreturn nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #6 = { nounwind }
attributes #7 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !12, i64 32}
!10 = !{!"AVCodecContext", !11, i64 0, !6, i64 8, !6, i64 12, !13, i64 16, !6, i64 24, !6, i64 28, !12, i64 32, !14, i64 40, !12, i64 48, !15, i64 56, !6, i64 64, !6, i64 68, !16, i64 72, !6, i64 80, !17, i64 84, !17, i64 92, !17, i64 100, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !6, i64 124, !17, i64 128, !6, i64 136, !6, i64 140, !6, i64 144, !6, i64 148, !6, i64 152, !6, i64 156, !6, i64 160, !6, i64 164, !6, i64 168, !6, i64 172, !6, i64 176, !12, i64 184, !12, i64 192, !6, i64 200, !18, i64 204, !18, i64 208, !18, i64 212, !18, i64 216, !18, i64 220, !18, i64 224, !18, i64 228, !18, i64 232, !18, i64 236, !6, i64 240, !6, i64 244, !6, i64 248, !6, i64 252, !6, i64 256, !6, i64 260, !6, i64 264, !6, i64 268, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !19, i64 288, !19, i64 296, !19, i64 304, !6, i64 312, !6, i64 316, !6, i64 320, !6, i64 324, !6, i64 328, !6, i64 332, !6, i64 336, !6, i64 340, !6, i64 344, !6, i64 348, !20, i64 352, !6, i64 376, !6, i64 380, !6, i64 384, !6, i64 388, !6, i64 392, !6, i64 396, !6, i64 400, !6, i64 404, !12, i64 408, !6, i64 416, !6, i64 420, !6, i64 424, !18, i64 428, !18, i64 432, !6, i64 436, !6, i64 440, !6, i64 444, !6, i64 448, !6, i64 452, !21, i64 456, !15, i64 464, !15, i64 472, !18, i64 480, !18, i64 484, !6, i64 488, !6, i64 492, !16, i64 496, !16, i64 504, !6, i64 512, !6, i64 516, !6, i64 520, !6, i64 524, !6, i64 528, !22, i64 536, !12, i64 544, !23, i64 552, !23, i64 560, !6, i64 568, !6, i64 572, !7, i64 576, !6, i64 640, !6, i64 644, !6, i64 648, !6, i64 652, !6, i64 656, !6, i64 660, !6, i64 664, !12, i64 672, !12, i64 680, !6, i64 688, !6, i64 692, !6, i64 696, !6, i64 700, !6, i64 704, !6, i64 708, !6, i64 712, !6, i64 716, !6, i64 720, !24, i64 728, !16, i64 736, !6, i64 744, !6, i64 748, !16, i64 752, !16, i64 760, !16, i64 768, !25, i64 776, !6, i64 784, !6, i64 788, !15, i64 792, !6, i64 800, !6, i64 804, !15, i64 808, !12, i64 816, !15, i64 824, !26, i64 832, !6, i64 840, !27, i64 848, !6, i64 856, !6, i64 860}
!11 = !{!"p1 _ZTS7AVClass", !12, i64 0}
!12 = !{!"any pointer", !7, i64 0}
!13 = !{!"p1 _ZTS7AVCodec", !12, i64 0}
!14 = !{!"p1 _ZTS15AVCodecInternal", !12, i64 0}
!15 = !{!"long", !7, i64 0}
!16 = !{!"p1 omnipotent char", !12, i64 0}
!17 = !{!"AVRational", !6, i64 0, !6, i64 4}
!18 = !{!"float", !7, i64 0}
!19 = !{!"p1 short", !12, i64 0}
!20 = !{!"AVChannelLayout", !6, i64 0, !6, i64 4, !7, i64 8, !12, i64 16}
!21 = !{!"p1 _ZTS10RcOverride", !12, i64 0}
!22 = !{!"p1 _ZTS9AVHWAccel", !12, i64 0}
!23 = !{!"p1 _ZTS11AVBufferRef", !12, i64 0}
!24 = !{!"p1 _ZTS17AVCodecDescriptor", !12, i64 0}
!25 = !{!"p1 _ZTS16AVPacketSideData", !12, i64 0}
!26 = !{!"p1 int", !12, i64 0}
!27 = !{!"p2 _ZTS15AVFrameSideData", !28, i64 0}
!28 = !{!"any p2 pointer", !12, i64 0}
!29 = !{!30, !16, i64 24}
!30 = !{!"AVPacket", !23, i64 0, !15, i64 8, !15, i64 16, !16, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !25, i64 48, !6, i64 56, !15, i64 64, !15, i64 72, !12, i64 80, !23, i64 88, !17, i64 96}
!31 = !{!30, !6, i64 32}
!32 = !{!33, !16, i64 16}
!33 = !{!"GetByteContext", !16, i64 0, !16, i64 8, !16, i64 16}
!34 = !{!33, !16, i64 8}
!35 = !{!16, !16, i64 0}
!36 = !{!7, !7, i64 0}
!37 = !{!33, !16, i64 0}
!38 = !{!10, !6, i64 136}
!39 = !{!40, !6, i64 120}
!40 = !{!"AVFrame", !7, i64 0, !7, i64 64, !41, i64 96, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !17, i64 124, !15, i64 136, !15, i64 144, !17, i64 152, !6, i64 160, !12, i64 168, !6, i64 176, !6, i64 180, !7, i64 184, !42, i64 248, !6, i64 256, !27, i64 264, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !6, i64 288, !6, i64 292, !6, i64 296, !15, i64 304, !43, i64 312, !6, i64 320, !23, i64 328, !23, i64 336, !15, i64 344, !15, i64 352, !15, i64 360, !15, i64 368, !12, i64 376, !20, i64 384, !15, i64 408, !6, i64 416}
!41 = !{!"p2 omnipotent char", !28, i64 0}
!42 = !{!"p2 _ZTS11AVBufferRef", !28, i64 0}
!43 = !{!"p1 _ZTS12AVDictionary", !12, i64 0}
!44 = !{!6, !6, i64 0}
!45 = !{!46}
!46 = distinct !{!46, !47}
!47 = distinct !{!47, !"LVerDomain"}
!48 = !{!49}
!49 = distinct !{!49, !47}
!50 = distinct !{!50, !51, !52, !53}
!51 = !{!"llvm.loop.mustprogress"}
!52 = !{!"llvm.loop.isvectorized", i32 1}
!53 = !{!"llvm.loop.unroll.runtime.disable"}
!54 = !{!55}
!55 = distinct !{!55, !47}
!56 = !{!49, !46}
!57 = !{!58}
!58 = distinct !{!58, !59}
!59 = distinct !{!59, !"LVerDomain"}
!60 = !{!61}
!61 = distinct !{!61, !59}
!62 = distinct !{!62, !51, !52, !53}
!63 = !{!64}
!64 = distinct !{!64, !59}
!65 = !{!61, !58}
!66 = distinct !{!66, !67}
!67 = !{!"llvm.loop.unroll.disable"}
!68 = distinct !{!68, !51, !52}
!69 = distinct !{!69, !51}
!70 = distinct !{!70, !51, !52}
!71 = distinct !{!71, !51}
!72 = distinct !{!72, !51}
!73 = !{!74, !74, i64 0}
!74 = !{!"short", !7, i64 0}
!75 = distinct !{!75, !51}
!76 = distinct !{!76, !51}
!77 = distinct !{!77, !67}
!78 = distinct !{!78, !51}
!79 = distinct !{!79, !51}
!80 = distinct !{!80, !51}
end_hunk_0
