Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/abcSpeedup?download=true
inline.NumInlined: 319
inline.NumDeleted: 55
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 15
begin_hunk_0_@Abc_NtkDelayTraceTCEdges:bb.a
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !34
  %i.ez = sext i32 %.0.lcssa.i to i64
  %i.fa = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.ez ; 2 uses
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !34
  store i32 %i.fb, ptr %i.ex, align 4, !tbaa !34
  store i32 %i.ey, ptr %i.fa, align 4, !tbaa !34
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.j, %._crit_edge.i
  %indvars.iv.next62.i = add nuw nsw i64 %indvars.iv61.i, 1
  %exitcond87.not = icmp eq i64 %indvars.iv.next67.i, %i.cn
  br i1 %exitcond87.not, label %.lr.ph, label %.lr.ph57.i, !llvm.loop !42

.lr.ph:                                           ; preds = %.critedge.i, %.critedge.preheader.i
  %i.fc = getelementptr i8, ptr %1, i64 32
  %.val59 = load ptr, ptr %i.fc, align 8, !tbaa !16
  %i.fd = getelementptr i8, ptr %.val70, i64 32
  %.val58.val = load ptr, ptr %i.fd, align 8, !tbaa !17
  %i.fe = getelementptr i8, ptr %.val58.val, i64 8
  %.val58.val.val = load ptr, ptr %i.fe, align 8, !tbaa !31
  %wide.trip.count = zext nneg i32 %.val52 to i64
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph, %bb.k
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.k ] ; 3 uses
  %.475 = phi i32 [ 0, %.lr.ph ], [ %.5, %bb.k ]
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !34 ; 2 uses
  %i.fh = sext i32 %i.fg to i64
  %i.fi = getelementptr inbounds [4 x i8], ptr %.val59, i64 %i.fh
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !34
  %i.fk = sext i32 %i.fj to i64
  %i.fl = getelementptr inbounds [8 x i8], ptr %.val58.val.val, i64 %i.fk
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !35 ; 2 uses
  %.val64 = load ptr, ptr %i.fm, align 8, !tbaa !15
  %i.fn = getelementptr i8, ptr %i.fm, i64 16
  %.val65 = load i32, ptr %i.fn, align 8, !tbaa !36
  %i.fo = getelementptr i8, ptr %.val64, i64 400
  %.val64.val = load ptr, ptr %i.fo, align 8, !tbaa !37
  %i.fp = mul nsw i32 %.val65, 3
  %i.fq = sext i32 %i.fp to i64
  %i.fr = getelementptr inbounds [4 x i8], ptr %.val64.val, i64 %i.fq
  %i.fs = load float, ptr %i.fr, align 4, !tbaa !38
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %indvars.iv
  %i.fu = load float, ptr %i.ft, align 4, !tbaa !38
  %i.fv = fadd float %i.fs, %i.fu
  %i.fw = fadd float %2, %i.fv
  %i.fx = fcmp olt float %i.k, %i.fw
  %i.fy = shl nuw i32 1, %i.fg
  %i.fz = select i1 %i.fx, i32 %i.fy, i32 0
  %.5 = or i32 %i.fz, %.475                       ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond89.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond89.not, label %.critedge, label %bb.k, !llvm.loop !84

.critedge:                                        ; preds = %bb.k, %bb.g, %bb.d, %bb.h, %bb.f, %.preheader
  %.6 = phi i32 [ %.3, %bb.g ], [ 0, %bb.h ], [ 0, %.preheader ], [ 0, %bb.f ], [ %.148, %bb.d ], [ %.5, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret i32 %.6
}

; Function Attrs: nounwind uwtable
define ptr @Abc_NtkSpeedup(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call float @Abc_NtkDelayTraceLut(ptr noundef %0, i32 noundef %1) ; 2 uses
  %.not = icmp eq i32 %1, 0                       ; 3 uses
  %i.b = sitofp i32 %2 to float
  %i.c = fmul float %i.a, %i.b
  %i.d = fdiv float %i.c, 1.000000e+02
  %i.e = select i1 %.not, float 1.000000e+00, float %i.d ; 5 uses
  %.not234 = icmp eq i32 %4, 0                    ; 3 uses
  br i1 %.not234, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = fpext float %i.a to double
  %i.g = fpext float %i.e to double
  %i.h = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, double noundef %i.f, double noundef %i.g) ; 0 uses
  %i.i = select i1 %.not, ptr @.str.3, ptr @.str.2
  %i.j = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, ptr noundef nonnull %i.i) ; 0 uses
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, i32 noundef %2) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %putchar = tail call i32 @putchar(i32 10)       ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  %i.l = getelementptr i8, ptr %0, i64 32         ; 4 uses
  %.val285 = load ptr, ptr %i.l, align 8, !tbaa !17 ; 3 uses
  %i.m = getelementptr i8, ptr %.val285, i64 4
  %.val285.val = load i32, ptr %i.m, align 4, !tbaa !45 ; 3 uses
  %i.n = sext i32 %.val285.val to i64
  %i.o = shl nsw i64 %i.n, 2
  %calloc = tail call ptr @calloc(i64 1, i64 %i.o) ; 8 uses
  %i.p = icmp sgt i32 %.val285.val, 0
  br i1 %i.p, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.e, %bb.i
  %i.q = phi ptr [ %i.aj, %bb.i ], [ %.val285, %bb.e ] ; 4 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.i ], [ 0, %bb.e ] ; 2 uses
  %i.r = getelementptr i8, ptr %i.q, i64 8
  %.val295.val.a = load ptr, ptr %i.r, align 8, !tbaa !31
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %.val295.val.a, i64 %indvars.iv
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !35   ; 5 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  %i.v = getelementptr i8, ptr %i.t, i64 20
  %.val298.a = load i32, ptr %i.v, align 4
  %i.w = and i32 %.val298.a, 15
  %.not387 = icmp eq i32 %i.w, 7
  br i1 %.not387, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %.val317.a = load ptr, ptr %i.t, align 8, !tbaa !15
  %i.x = getelementptr i8, ptr %i.t, i64 16       ; 2 uses
  %.val318 = load i32, ptr %i.x, align 8, !tbaa !36
  %i.y = getelementptr i8, ptr %.val317.a, i64 400
  %.val317.val = load ptr, ptr %i.y, align 8, !tbaa !37
  %i.z = mul nsw i32 %.val318, 3
  %i.aa = sext i32 %i.z to i64
  %i.ab = getelementptr [4 x i8], ptr %.val317.val, i64 %i.aa
  %i.ac = getelementptr i8, ptr %i.ab, i64 8
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !38
  %i.ae = fcmp ult float %i.ad, %i.e
  br i1 %i.ae, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.af = tail call i32 @Abc_NtkDelayTraceTCEdges(ptr nonnull poison, ptr noundef nonnull %i.t, float noundef %i.e, i32 noundef %1)
  %i.ag = load i32, ptr %i.x, align 8, !tbaa !36
  %i.ah = sext i32 %i.ag to i64
  %i.ai = getelementptr inbounds [4 x i8], ptr %calloc, i64 %i.ah
  store i32 %i.af, ptr %i.ai, align 4, !tbaa !34
  %.pre = load ptr, ptr %i.l, align 8, !tbaa !17
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.f, %.lr.ph, %bb.g
  %i.aj = phi ptr [ %.pre, %bb.h ], [ %i.q, %bb.f ], [ %i.q, %.lr.ph ], [ %i.q, %bb.g ] ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ak = getelementptr i8, ptr %i.aj, i64 4
  %.val283 = load i32, ptr %i.ak, align 4, !tbaa !45 ; 2 uses
  %i.al = sext i32 %.val283 to i64
  %i.am = icmp slt i64 %indvars.iv.next, %i.al
  br i1 %i.am, label %.lr.ph, label %.critedge, !llvm.loop !85

.critedge:                                        ; preds = %bb.i, %bb.e
  %.lcssa394 = phi ptr [ %.val285, %bb.e ], [ %i.aj, %bb.i ]
  %.val283.lcssa = phi i32 [ %.val285.val, %bb.e ], [ %.val283, %bb.i ] ; 2 uses
  br i1 %.not234, label %bb.p, label %.preheader393.a

.preheader393.a:                                  ; preds = %.critedge
  %i.an = icmp sgt i32 %.val283.lcssa, 0
  br i1 %i.an, label %.lr.ph405, label %.critedge2

.lr.ph405:                                        ; preds = %.preheader393.a
  %i.ao = getelementptr i8, ptr %.lcssa394, i64 8
  %.val294.val.a = load ptr, ptr %i.ao, align 8, !tbaa !31
  %wide.trip.count446 = zext nneg i32 %.val283.lcssa to i64
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph405, %bb.o
  %indvars.iv443 = phi i64 [ 0, %.lr.ph405 ], [ %indvars.iv.next444, %bb.o ] ; 2 uses
  %.0209404 = phi i32 [ 0, %.lr.ph405 ], [ %.1210, %bb.o ] ; 3 uses
  %.0211403 = phi i32 [ 0, %.lr.ph405 ], [ %.3214, %bb.o ] ; 4 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %.val294.val.a, i64 %indvars.iv443
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !35 ; 6 uses
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %bb.o, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.as = getelementptr i8, ptr %i.aq, i64 20
  %.val297.a = load i32, ptr %i.as, align 4
  %i.at = and i32 %.val297.a, 15
  %.not373 = icmp eq i32 %i.at, 7
  br i1 %.not373, label %.preheader392.a, label %bb.o

.preheader392.a:                                  ; preds = %bb.k
  %i.au = getelementptr i8, ptr %i.aq, i64 28
  %.val257.a = load i32, ptr %i.au, align 4, !tbaa !8 ; 2 uses
  %i.av = icmp sgt i32 %.val257.a, 0
  br i1 %i.av, label %.lr.ph400, label %.critedge4

.lr.ph400:                                        ; preds = %.preheader392.a
  %.val270.a = load ptr, ptr %i.aq, align 8, !tbaa !15
  %i.aw = getelementptr i8, ptr %i.aq, i64 32
  %.val271 = load ptr, ptr %i.aw, align 8, !tbaa !16
  %i.ax = getelementptr i8, ptr %.val270.a, i64 32
  %.val270.val = load ptr, ptr %i.ax, align 8, !tbaa !17
  %i.ay = getelementptr i8, ptr %.val270.val, i64 8
  %.val270.val.val = load ptr, ptr %i.ay, align 8, !tbaa !31
  %wide.trip.count = zext nneg i32 %.val257.a to i64
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph400, %bb.n
  %indvars.iv440 = phi i64 [ 0, %.lr.ph400 ], [ %indvars.iv.next441, %bb.n ] ; 2 uses
  %.1212399 = phi i32 [ %.0211403, %.lr.ph400 ], [ %.2213, %bb.n ] ; 3 uses
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %.val271, i64 %indvars.iv440
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !34
  %i.bb = sext i32 %i.ba to i64
  %i.bc = getelementptr inbounds [8 x i8], ptr %.val270.val.val, i64 %i.bb
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !35 ; 3 uses
  %i.be = getelementptr i8, ptr %i.bd, i64 20
  %.val323.a = load i32, ptr %i.be, align 4
  %i.bf = and i32 %.val323.a, 15
  switch i32 %i.bf, label %bb.m [
    i32 5, label %bb.n
    i32 2, label %bb.n
  ]

bb.m:                                             ; preds = %bb.l
  %.val315.a = load ptr, ptr %i.bd, align 8, !tbaa !15
  %i.bg = getelementptr i8, ptr %i.bd, i64 16
  %.val316 = load i32, ptr %i.bg, align 8, !tbaa !36
  %i.bh = getelementptr i8, ptr %.val315.a, i64 400
  %.val315.val = load ptr, ptr %i.bh, align 8, !tbaa !37
  %i.bi = mul nsw i32 %.val316, 3
  %i.bj = sext i32 %i.bi to i64
  %i.bk = getelementptr [4 x i8], ptr %.val315.val, i64 %i.bj
  %i.bl = getelementptr i8, ptr %i.bk, i64 8
  %i.bm = load float, ptr %i.bl, align 4, !tbaa !38
  %i.bn = fcmp olt float %i.bm, %i.e
  %6 = zext i1 %i.bn to i32
  %spec.select = add nsw i32 %.1212399, %6
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.l, %bb.m
  %.2213 = phi i32 [ %.1212399, %bb.l ], [ %spec.select, %bb.m ], [ %.1212399, %bb.l ] ; 2 uses
  %indvars.iv.next441 = add nuw nsw i64 %indvars.iv440, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next441, %wide.trip.count
  br i1 %exitcond.not, label %.critedge4, label %bb.l, !llvm.loop !86

.critedge4:                                       ; preds = %bb.n, %.preheader392.a
  %.1212.lcssa = phi i32 [ %.0211403, %.preheader392.a ], [ %.2213, %bb.n ]
  %i.bo = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !36
  %i.bq = sext i32 %i.bp to i64
  %i.br = getelementptr inbounds [4 x i8], ptr %calloc, i64 %i.bq
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !34
  %i.bt = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.bs)
  %i.bu = add nsw i32 %i.bt, %.0209404
  br label %bb.o

bb.o:                                             ; preds = %.critedge4, %bb.k, %bb.j
  %.3214 = phi i32 [ %.0211403, %bb.j ], [ %.1212.lcssa, %.critedge4 ], [ %.0211403, %bb.k ] ; 2 uses
  %.1210 = phi i32 [ %.0209404, %bb.j ], [ %i.bu, %.critedge4 ], [ %.0209404, %bb.k ] ; 2 uses
  %indvars.iv.next444 = add nuw nsw i64 %indvars.iv443, 1 ; 2 uses
  %exitcond447.not = icmp eq i64 %indvars.iv.next444, %wide.trip.count446
  br i1 %exitcond447.not, label %.critedge2, label %bb.j, !llvm.loop !87

.critedge2:                                       ; preds = %bb.o, %.preheader393.a
  %.0211.lcssa = phi i32 [ 0, %.preheader393.a ], [ %.3214, %bb.o ] ; 2 uses
  %.0209.lcssa = phi i32 [ 0, %.preheader393.a ], [ %.1210, %bb.o ] ; 2 uses
  %i.bv = tail call i32 @Abc_NtkGetTotalFanins(ptr noundef %0) #17
  %i.bw = sitofp i32 %.0209.lcssa to double
  %i.bx = sitofp i32 %.0211.lcssa to double
  %i.by = fdiv double %i.bw, %i.bx
  %i.bz = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11, i32 noundef %i.bv, i32 noundef %.0211.lcssa, i32 noundef %.0209.lcssa, double noundef %i.by) ; 0 uses
  br label %bb.p

bb.p:                                             ; preds = %.critedge2, %.critedge
  %i.ca = tail call ptr @Abc_NtkStrash(ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef 0) #17 ; 3 uses
  %i.cb = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #18 ; 6 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 4 ; 3 uses
  store i32 0, ptr %i.cc, align 4, !tbaa !45
  store i32 16, ptr %i.cb, align 8, !tbaa !70
  %i.cd = tail call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #18 ; 6 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cb, i64 8 ; 2 uses
  store ptr %i.cd, ptr %i.ce, align 8, !tbaa !31
  %i.cf = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #18 ; 9 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 4 ; 4 uses
  store i32 0, ptr %i.cg, align 4, !tbaa !45
  store i32 16, ptr %i.cf, align 8, !tbaa !70
  %i.ch = tail call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #18
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cf, i64 8 ; 12 uses
  store ptr %i.ch, ptr %i.ci, align 8, !tbaa !31
  %i.cj = load ptr, ptr %i.l, align 8, !tbaa !17  ; 2 uses
  %i.ck = getelementptr i8, ptr %i.cj, i64 4
  %.val281427 = load i32, ptr %i.ck, align 4, !tbaa !45
  %i.cl = icmp sgt i32 %.val281427, 0
  br i1 %i.cl, label %.lr.ph431, label %.critedge6

.lr.ph431:                                        ; preds = %bb.p
  %i.cm = icmp eq i32 %5, 0                       ; 2 uses
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph431, %.critedge11.thread
  %.val289503 = phi ptr [ %i.cd, %.lr.ph431 ], [ %.val289502, %.critedge11.thread ] ; 7 uses
  %.val291493 = phi ptr [ %i.cd, %.lr.ph431 ], [ %.val291494, %.critedge11.thread ] ; 7 uses
  %i.cn = phi ptr [ %i.cd, %.lr.ph431 ], [ %i.nt, %.critedge11.thread ] ; 7 uses
  %i.co = phi i32 [ 16, %.lr.ph431 ], [ %i.nu, %.critedge11.thread ] ; 7 uses
  %i.cp = phi ptr [ %i.cd, %.lr.ph431 ], [ %i.nv, %.critedge11.thread ] ; 7 uses
  %indvars.iv468 = phi i64 [ 0, %.lr.ph431 ], [ %indvars.iv.next469, %.critedge11.thread ] ; 2 uses
  %i.cq = phi ptr [ %i.cj, %.lr.ph431 ], [ %i.nw, %.critedge11.thread ]
  %.2430 = phi i32 [ 0, %.lr.ph431 ], [ %.3, %.critedge11.thread ] ; 8 uses
  %.4429 = phi i32 [ 0, %.lr.ph431 ], [ %.5, %.critedge11.thread ] ; 5 uses
  %i.cr = getelementptr i8, ptr %i.cq, i64 8
  %.val293.val.a = load ptr, ptr %i.cr, align 8, !tbaa !31
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %.val293.val.a, i64 %indvars.iv468
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !35 ; 13 uses
  %i.cu = icmp eq ptr %i.ct, null
  br i1 %i.cu, label %.critedge11.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cv = getelementptr i8, ptr %i.ct, i64 20
  %.val296 = load i32, ptr %i.cv, align 4
  %i.cw = and i32 %.val296, 15
  %.not377.a = icmp eq i32 %i.cw, 7
  br i1 %.not377.a, label %bb.s, label %.critedge11.thread

bb.s:                                             ; preds = %bb.r
  %.val313 = load ptr, ptr %i.ct, align 8, !tbaa !15 ; 2 uses
  %i.cx = getelementptr i8, ptr %i.ct, i64 16     ; 4 uses
  %.val314 = load i32, ptr %i.cx, align 8, !tbaa !36 ; 2 uses
  %i.cy = getelementptr i8, ptr %.val313, i64 400
  %.val313.val = load ptr, ptr %i.cy, align 8, !tbaa !37
  %i.cz = mul nsw i32 %.val314, 3
  %i.da = sext i32 %i.cz to i64
  %i.db = getelementptr [4 x i8], ptr %.val313.val, i64 %i.da
  %i.dc = getelementptr i8, ptr %i.db, i64 8
  %i.dd = load float, ptr %i.dc, align 4, !tbaa !38
  %i.de = fcmp ult float %i.dd, %i.e
  br i1 %i.de, label %.preheader391.a, label %.critedge11.thread

.preheader391.a:                                  ; preds = %bb.s
  %i.df = getelementptr i8, ptr %i.ct, i64 28     ; 5 uses
  %.val256.a = load i32, ptr %i.df, align 4, !tbaa !8 ; 5 uses
  %i.dg = icmp sgt i32 %.val256.a, 0              ; 2 uses
  br i1 %i.dg, label %.lr.ph410, label %.critedge8

.lr.ph410:                                        ; preds = %.preheader391.a
  %i.dh = getelementptr i8, ptr %i.ct, i64 32
  %.val269 = load ptr, ptr %i.dh, align 8, !tbaa !16 ; 3 uses
  %i.di = getelementptr i8, ptr %.val313, i64 32
  %.val268.val = load ptr, ptr %i.di, align 8, !tbaa !17
  %i.dj = getelementptr i8, ptr %.val268.val, i64 8
  %.val268.val.val = load ptr, ptr %i.dj, align 8, !tbaa !31 ; 3 uses
  %i.dk = sext i32 %.val314 to i64
  %i.dl = getelementptr inbounds [4 x i8], ptr %calloc, i64 %i.dk ; 3 uses
  %wide.trip.count451 = zext nneg i32 %.val256.a to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count451, 1
  %i.dm = icmp eq i32 %.val256.a, 1
  br i1 %i.dm, label %.epil.preheader, label %.lr.ph410.new

.lr.ph410.new:                                    ; preds = %.lr.ph410
  %unroll_iter = and i64 %wide.trip.count451, 2147483646
  br label %bb.t

bb.t:                                             ; preds = %bb.x, %.lr.ph410.new
  %indvars.iv448 = phi i64 [ 0, %.lr.ph410.new ], [ %indvars.iv.next449.1, %bb.x ] ; 4 uses
  %.0409 = phi i32 [ 0, %.lr.ph410.new ], [ %.1.1, %bb.x ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph410.new ], [ %niter.next.1, %bb.x ]
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %.val269, i64 %indvars.iv448
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !34
  %i.dp = sext i32 %i.do to i64
  %i.dq = getelementptr inbounds [8 x i8], ptr %.val268.val.val, i64 %i.dp
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !35
  %i.ds = getelementptr i8, ptr %i.dr, i64 20
  %.val322.a = load i32, ptr %i.ds, align 4
  %i.dt = and i32 %.val322.a, 15
  switch i32 %i.dt, label %bb.u [
    i32 5, label %bb.v
    i32 2, label %bb.v
  ]

bb.u:                                             ; preds = %bb.t
  %i.du = load i32, ptr %i.dl, align 4, !tbaa !34
  %i.dv = trunc nuw nsw i64 %indvars.iv448 to i32
  %i.dw = lshr i32 %i.du, %i.dv
  %i.dx = and i32 %i.dw, 1
  %spec.select.a = add nsw i32 %i.dx, %.0409
  br label %bb.v

bb.v:                                             ; preds = %bb.t, %bb.t, %bb.u
  %.1 = phi i32 [ %.0409, %bb.t ], [ %spec.select.a, %bb.u ], [ %.0409, %bb.t ] ; 3 uses
  %indvars.iv.next449 = or disjoint i64 %indvars.iv448, 1 ; 2 uses
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %.val269, i64 %indvars.iv.next449
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !34
  %i.ea = sext i32 %i.dz to i64
  %i.eb = getelementptr inbounds [8 x i8], ptr %.val268.val.val, i64 %i.ea
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !35
  %i.ed = getelementptr i8, ptr %i.ec, i64 20
  %.val322.1 = load i32, ptr %i.ed, align 4
  %i.ee = and i32 %.val322.1, 15
  switch i32 %i.ee, label %bb.w [
    i32 5, label %bb.x
    i32 2, label %bb.x
  ]

bb.w:                                             ; preds = %bb.v
  %i.ef = load i32, ptr %i.dl, align 4, !tbaa !34
  %i.eg = trunc nuw nsw i64 %indvars.iv.next449 to i32
  %i.eh = lshr i32 %i.ef, %i.eg
  %i.ei = and i32 %i.eh, 1
  %spec.select.1 = add nsw i32 %i.ei, %.1
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %bb.v
  %.1.1 = phi i32 [ %.1, %bb.v ], [ %spec.select.1, %bb.w ], [ %.1, %bb.v ] ; 3 uses
  %indvars.iv.next449.1 = add nuw nsw i64 %indvars.iv448, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.critedge8.loopexit.unr-lcssa, label %bb.t, !llvm.loop !88

.critedge8.loopexit.unr-lcssa:                    ; preds = %bb.x
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.critedge8, label %.epil.preheader

.epil.preheader:                                  ; preds = %.critedge8.loopexit.unr-lcssa, %.lr.ph410
  %indvars.iv448.epil.init = phi i64 [ 0, %.lr.ph410 ], [ %indvars.iv.next449.1, %.critedge8.loopexit.unr-lcssa ] ; 2 uses
  %.0409.epil.init = phi i32 [ 0, %.lr.ph410 ], [ %.1.1, %.critedge8.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod572 = trunc i32 %.val256.a to i1
  tail call void @llvm.assume(i1 %lcmp.mod572)
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %.val269, i64 %indvars.iv448.epil.init
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !34
  %i.el = sext i32 %i.ek to i64
  %i.em = getelementptr inbounds [8 x i8], ptr %.val268.val.val, i64 %i.el
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !35
  %i.eo = getelementptr i8, ptr %i.en, i64 20
  %.val322.epil = load i32, ptr %i.eo, align 4
  %i.ep = and i32 %.val322.epil, 15
  switch i32 %i.ep, label %bb.y [
    i32 5, label %.critedge8
    i32 2, label %.critedge8
  ]

bb.y:                                             ; preds = %.epil.preheader
  %i.eq = load i32, ptr %i.dl, align 4, !tbaa !34
end_hunk_0
