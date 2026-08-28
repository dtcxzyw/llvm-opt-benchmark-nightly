Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/nwkSpeedup?download=true
inline.NumInlined: 134
inline.NumDeleted: 36
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@Nwk_ManDelayTraceTCEdges:bb.a
  %i.ap = shl nuw i32 1, %i.ao
  %i.aq = select i1 %i.an, i32 %i.ap, i32 0
  %.3 = or i32 %i.aq, %.25070                     ; 2 uses
  %indvars.iv.next88 = add nuw nsw i64 %indvars.iv87, 1 ; 2 uses
  %exitcond91.not = icmp eq i64 %indvars.iv.next88, %wide.trip.count90
  br i1 %exitcond91.not, label %.critedge, label %bb.g, !llvm.loop !71

bb.i:                                             ; preds = %bb.e
  call void @Nwk_ManDelayTraceSortPins(ptr noundef nonnull %1, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #15
  %i.ar = load i32, ptr %i.ab, align 4, !tbaa !62 ; 2 uses
  %i.as = icmp sgt i32 %i.ar, 0
  br i1 %i.as, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.i
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !63 ; 2 uses
  %wide.trip.count = zext nneg i32 %i.ar to i64
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph, %bb.k
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.k ] ; 4 uses
  %.466 = phi i32 [ 0, %.lr.ph ], [ %.5, %bb.k ]  ; 2 uses
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !64
  %.not56 = icmp eq ptr %i.aw, null
  br i1 %.not56, label %.critedge, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !72 ; 2 uses
  %i.az = sext i32 %i.ay to i64
  %i.ba = getelementptr inbounds [8 x i8], ptr %i.au, i64 %i.az
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !64
  %i.bc = getelementptr i8, ptr %i.bb, i64 48
  %.val58 = load float, ptr %i.bc, align 8, !tbaa !66
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %indvars.iv
  %i.be = load float, ptr %i.bd, align 4, !tbaa !70
  %i.bf = fadd float %.val58, %i.be
  %i.bg = fadd float %2, %i.bf
  %i.bh = fcmp olt float %.val, %i.bg
  %i.bi = shl nuw i32 1, %i.ay
  %i.bj = select i1 %i.bh, i32 %i.bi, i32 0
  %.5 = or i32 %i.bj, %.466                       ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge, label %bb.j, !llvm.loop !73

.critedge:                                        ; preds = %bb.j, %bb.k, %bb.g, %bb.h, %bb.d, %bb.c, %bb.i, %bb.f, %.preheader
  %.6 = phi i32 [ %.3, %bb.h ], [ 0, %bb.i ], [ 0, %.preheader ], [ %.04876, %bb.c ], [ 0, %bb.f ], [ %.149, %bb.d ], [ %.25070, %bb.g ], [ %.466, %bb.j ], [ %.5, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret i32 %.6
}

declare void @Nwk_ManDelayTraceSortPins(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define ptr @Nwk_ManSpeedup(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !56
  %.not = icmp eq i32 %1, 0                       ; 5 uses
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %i.a, align 8, !tbaa !56
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !74   ; 3 uses
  %.not267 = icmp eq ptr %i.d, null
  br i1 %.not267, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call ptr @Tim_ManDup(ptr noundef nonnull %i.d, i32 noundef 1) #15
  store ptr %i.e, ptr %i.c, align 8, !tbaa !74
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %.0251 = phi ptr [ null, %bb.a ], [ %i.d, %bb.c ], [ null, %bb.b ] ; 2 uses
  %i.f = tail call float @Nwk_ManDelayTraceLut(ptr noundef nonnull %0) #15 ; 2 uses
  %i.g = sitofp i32 %2 to float
  %i.h = fmul float %i.f, %i.g
  %i.i = fdiv float %i.h, 1.000000e+02
  %i.j = select i1 %.not, float 1.000000e+00, float %i.i ; 5 uses
  %.not268 = icmp eq i32 %4, 0                    ; 3 uses
  br i1 %.not268, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = fpext float %i.f to double
  %i.l = fpext float %i.j to double
  %i.m = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef %i.k, double noundef %i.l) ; 0 uses
  %i.n = select i1 %.not, ptr @.str.3, ptr @.str.2
  %i.o = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, ptr noundef nonnull %i.n) ; 0 uses
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, i32 noundef %2) ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %putchar = tail call i32 @putchar(i32 10)       ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.d
  %i.q = getelementptr i8, ptr %0, i64 32         ; 4 uses
  %.val321 = load ptr, ptr %i.q, align 8, !tbaa !75 ; 3 uses
  %i.r = getelementptr i8, ptr %.val321, i64 4
  %.val321.val = load i32, ptr %i.r, align 4, !tbaa !27 ; 3 uses
  %i.s = sext i32 %.val321.val to i64
  %i.t = shl nsw i64 %i.s, 2
  %calloc = tail call ptr @calloc(i64 1, i64 %i.t) ; 8 uses
  %i.u = icmp sgt i32 %.val321.val, 0
  br i1 %i.u, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.h, %bb.l
  %i.v = phi ptr [ %i.aj, %bb.l ], [ %.val321, %bb.h ] ; 4 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.l ], [ 0, %bb.h ] ; 2 uses
  %i.w = getelementptr i8, ptr %i.v, i64 8
  %.val317.a = load ptr, ptr %i.w, align 8, !tbaa !30
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %.val317.a, i64 %indvars.iv
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !31   ; 5 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %bb.l, label %bb.i

bb.i:                                             ; preds = %.lr.ph
  %i.aa = getelementptr i8, ptr %i.y, i64 32
  %.val324.a = load i32, ptr %i.aa, align 8
  %i.ab = and i32 %.val324.a, 7
  %.not401.a = icmp eq i32 %i.ab, 3
  br i1 %.not401.a, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.ac = getelementptr i8, ptr %i.y, i64 56
  %.val334.a = load float, ptr %i.ac, align 8, !tbaa !76
  %i.ad = fcmp ult float %.val334.a, %i.j
  br i1 %i.ad, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ae = tail call i32 @Nwk_ManDelayTraceTCEdges(ptr noundef nonnull %0, ptr noundef nonnull %i.y, float noundef %i.j, i32 noundef %1)
  %i.af = getelementptr inbounds nuw i8, ptr %i.y, i64 36
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !77
  %i.ah = sext i32 %i.ag to i64
  %i.ai = getelementptr inbounds [4 x i8], ptr %calloc, i64 %i.ah
  store i32 %i.ae, ptr %i.ai, align 4, !tbaa !72
  %.pre = load ptr, ptr %i.q, align 8, !tbaa !75
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.i, %.lr.ph, %bb.j
  %i.aj = phi ptr [ %.pre, %bb.k ], [ %i.v, %bb.i ], [ %i.v, %.lr.ph ], [ %i.v, %bb.j ] ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ak = getelementptr i8, ptr %i.aj, i64 4
  %.val307 = load i32, ptr %i.ak, align 4, !tbaa !27 ; 2 uses
  %i.al = sext i32 %.val307 to i64
  %i.am = icmp slt i64 %indvars.iv.next, %i.al
  br i1 %i.am, label %.lr.ph, label %.critedge, !llvm.loop !78

.critedge:                                        ; preds = %bb.l, %bb.h
  %.lcssa408 = phi ptr [ %.val321, %bb.h ], [ %i.aj, %bb.l ]
  %.val307.lcssa = phi i32 [ %.val321.val, %bb.h ], [ %.val307, %bb.l ] ; 2 uses
  br i1 %.not268, label %bb.t, label %.preheader407.a

.preheader407.a:                                  ; preds = %.critedge
  %i.an = icmp sgt i32 %.val307.lcssa, 0
  br i1 %i.an, label %.lr.ph421, label %.critedge2

.lr.ph421:                                        ; preds = %.preheader407.a
  %i.ao = getelementptr i8, ptr %.lcssa408, i64 8
  %.val316.a = load ptr, ptr %i.ao, align 8, !tbaa !30
  %wide.trip.count463 = zext nneg i32 %.val307.lcssa to i64
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph421, %bb.s
  %indvars.iv460 = phi i64 [ 0, %.lr.ph421 ], [ %indvars.iv.next461, %bb.s ] ; 2 uses
  %.0234420 = phi i32 [ 0, %.lr.ph421 ], [ %.1235, %bb.s ] ; 3 uses
  %.0236419 = phi i32 [ 0, %.lr.ph421 ], [ %.3239, %bb.s ] ; 4 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %.val316.a, i64 %indvars.iv460
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !31 ; 5 uses
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %bb.s, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.as = getelementptr i8, ptr %i.aq, i64 32
  %.val323.a = load i32, ptr %i.as, align 8
  %i.at = and i32 %.val323.a, 7
  %.not392 = icmp eq i32 %i.at, 3
  br i1 %.not392, label %.preheader406.a, label %bb.s

.preheader406.a:                                  ; preds = %bb.n
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 60
  %i.av = load i32, ptr %i.au, align 4, !tbaa !62 ; 2 uses
  %i.aw = icmp sgt i32 %i.av, 0
  br i1 %i.aw, label %.lr.ph414, label %.critedge4

.lr.ph414:                                        ; preds = %.preheader406.a
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aq, i64 72
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !63
  %wide.trip.count = zext nneg i32 %i.av to i64
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph414, %bb.r
  %indvars.iv457 = phi i64 [ 0, %.lr.ph414 ], [ %indvars.iv.next458, %bb.r ] ; 2 uses
  %.1237413 = phi i32 [ %.0236419, %.lr.ph414 ], [ %.2238, %bb.r ] ; 4 uses
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %indvars.iv457
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !64 ; 3 uses
  %.not294 = icmp eq ptr %i.ba, null
  br i1 %.not294, label %.critedge4, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bb = getelementptr i8, ptr %i.ba, i64 32
  %.val338.a = load i32, ptr %i.bb, align 8
  %i.bc = and i32 %.val338.a, 7
  %.not393 = icmp eq i32 %i.bc, 1
  br i1 %.not393, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bd = getelementptr i8, ptr %i.ba, i64 56
  %.val333.a = load float, ptr %i.bd, align 8, !tbaa !76
  %i.be = fcmp olt float %.val333.a, %i.j
  br i1 %i.be, label %6, label %bb.r

6:                                                ; preds = %bb.q
  %7 = add nsw i32 %.1237413, 1
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q, %6
  %.2238 = phi i32 [ %.1237413, %bb.p ], [ %7, %6 ], [ %.1237413, %bb.q ] ; 2 uses
  %indvars.iv.next458 = add nuw nsw i64 %indvars.iv457, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next458, %wide.trip.count
  br i1 %exitcond.not, label %.critedge4, label %bb.o, !llvm.loop !79

.critedge4:                                       ; preds = %bb.o, %bb.r, %.preheader406.a
  %.1237.lcssa = phi i32 [ %.0236419, %.preheader406.a ], [ %.2238, %bb.r ], [ %.1237413, %bb.o ]
  %i.bf = getelementptr inbounds nuw i8, ptr %i.aq, i64 36
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !77
  %i.bh = sext i32 %i.bg to i64
  %i.bi = getelementptr inbounds [4 x i8], ptr %calloc, i64 %i.bh
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !72
  %i.bk = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.bj)
  %i.bl = add nsw i32 %i.bk, %.0234420
  %i.bm = freeze i32 %.1237.lcssa
  br label %bb.s

bb.s:                                             ; preds = %.critedge4, %bb.n, %bb.m
  %.3239 = phi i32 [ %.0236419, %bb.m ], [ %i.bm, %.critedge4 ], [ %.0236419, %bb.n ] ; 2 uses
  %.1235 = phi i32 [ %.0234420, %bb.m ], [ %i.bl, %.critedge4 ], [ %.0234420, %bb.n ] ; 2 uses
  %indvars.iv.next461 = add nuw nsw i64 %indvars.iv460, 1 ; 2 uses
  %exitcond464.not = icmp eq i64 %indvars.iv.next461, %wide.trip.count463
  br i1 %exitcond464.not, label %.critedge2, label %bb.m, !llvm.loop !80

.critedge2:                                       ; preds = %bb.s, %.preheader407.a
  %.0236.lcssa = phi i32 [ 0, %.preheader407.a ], [ %.3239, %bb.s ] ; 3 uses
  %.0234.lcssa = phi i32 [ 0, %.preheader407.a ], [ %.1235, %bb.s ] ; 2 uses
  %i.bn = tail call i32 @Nwk_ManGetTotalFanins(ptr noundef nonnull %0) #15
  %.not269 = icmp eq i32 %.0236.lcssa, 0
  %i.bo = sitofp i32 %.0234.lcssa to double
  %i.bp = sitofp i32 %.0236.lcssa to double
  %i.bq = fdiv double %i.bo, %i.bp
  %i.br = select i1 %.not269, double 0.000000e+00, double %i.bq
  %i.bs = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, i32 noundef %i.bn, i32 noundef %.0236.lcssa, i32 noundef %.0234.lcssa, double noundef %i.br) ; 0 uses
  br label %bb.t

bb.t:                                             ; preds = %.critedge2, %.critedge
  %i.bt = tail call ptr @Nwk_ManStrash(ptr noundef nonnull %0) #15 ; 5 uses
  %i.bu = getelementptr i8, ptr %i.bt, i64 32     ; 2 uses
  %.val340 = load ptr, ptr %i.bu, align 8, !tbaa !81
  %i.bv = getelementptr i8, ptr %.val340, i64 4
  %.val340.val = load i32, ptr %i.bv, align 4, !tbaa !27 ; 2 uses
  %i.bw = mul nsw i32 %.val340.val, 3
  %i.bx = sext i32 %i.bw to i64
  %i.by = shl nsw i64 %i.bx, 3
  %i.bz = tail call noalias ptr @malloc(i64 noundef %i.by) #14 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bt, i64 248 ; 2 uses
  store ptr %i.bz, ptr %i.ca, align 8, !tbaa !53
  %i.cb = sext i32 %.val340.val to i64
  %i.cc = mul nsw i64 %i.cb, 24
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.bz, i8 0, i64 %i.cc, i1 false)
  %i.cd = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #14 ; 6 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 4 ; 3 uses
  store i32 0, ptr %i.ce, align 4, !tbaa !27
  store i32 16, ptr %i.cd, align 8, !tbaa !29
  %i.cf = tail call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #14 ; 6 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cd, i64 8 ; 2 uses
  store ptr %i.cf, ptr %i.cg, align 8, !tbaa !30
  %i.ch = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #14 ; 9 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 4 ; 4 uses
  store i32 0, ptr %i.ci, align 4, !tbaa !27
  store i32 16, ptr %i.ch, align 8, !tbaa !29
  %i.cj = tail call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #14
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ch, i64 8 ; 12 uses
  store ptr %i.cj, ptr %i.ck, align 8, !tbaa !30
  %i.cl = load ptr, ptr %i.q, align 8, !tbaa !75  ; 2 uses
  %i.cm = getelementptr i8, ptr %i.cl, i64 4
  %.val305445 = load i32, ptr %i.cm, align 4, !tbaa !27
  %i.cn = icmp sgt i32 %.val305445, 0
  br i1 %i.cn, label %.lr.ph449, label %.critedge6

.lr.ph449:                                        ; preds = %bb.t
  %i.co = icmp eq i32 %5, 0                       ; 2 uses
  br label %bb.u

bb.u:                                             ; preds = %.lr.ph449, %.critedge11.thread
  %.val312524 = phi ptr [ %i.cf, %.lr.ph449 ], [ %.val312523, %.critedge11.thread ] ; 7 uses
  %.val314512 = phi ptr [ %i.cf, %.lr.ph449 ], [ %.val314513, %.critedge11.thread ] ; 7 uses
  %i.cp = phi ptr [ %i.cf, %.lr.ph449 ], [ %i.lj, %.critedge11.thread ] ; 7 uses
  %i.cq = phi i32 [ 16, %.lr.ph449 ], [ %i.lk, %.critedge11.thread ] ; 7 uses
  %i.cr = phi ptr [ %i.cf, %.lr.ph449 ], [ %i.ll, %.critedge11.thread ] ; 7 uses
  %indvars.iv485 = phi i64 [ 0, %.lr.ph449 ], [ %indvars.iv.next486, %.critedge11.thread ] ; 2 uses
  %i.cs = phi ptr [ %i.cl, %.lr.ph449 ], [ %i.lm, %.critedge11.thread ]
  %.2448 = phi i32 [ 0, %.lr.ph449 ], [ %.3, %.critedge11.thread ] ; 8 uses
  %.4447 = phi i32 [ 0, %.lr.ph449 ], [ %.5, %.critedge11.thread ] ; 5 uses
  %i.ct = getelementptr i8, ptr %i.cs, i64 8
  %.val315 = load ptr, ptr %i.ct, align 8, !tbaa !30
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %.val315, i64 %indvars.iv485
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !31 ; 10 uses
  %i.cw = icmp eq ptr %i.cv, null
  br i1 %i.cw, label %.critedge11.thread, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cx = getelementptr i8, ptr %i.cv, i64 32
  %.val322 = load i32, ptr %i.cx, align 8
  %i.cy = and i32 %.val322, 7
  %.not394 = icmp eq i32 %i.cy, 3
  br i1 %.not394, label %bb.w, label %.critedge11.thread

bb.w:                                             ; preds = %bb.v
  %i.cz = getelementptr i8, ptr %i.cv, i64 56
  %.val332.a = load float, ptr %i.cz, align 8, !tbaa !76
  %i.da = fcmp ult float %.val332.a, %i.j
  br i1 %i.da, label %.preheader405.a, label %.critedge11.thread

.preheader405.a:                                  ; preds = %bb.w
  %i.db = getelementptr inbounds nuw i8, ptr %i.cv, i64 60 ; 5 uses
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !62 ; 3 uses
  %i.dd = icmp sgt i32 %i.dc, 0                   ; 2 uses
  br i1 %i.dd, label %.lr.ph426, label %.critedge8

.lr.ph426:                                        ; preds = %.preheader405.a
  %i.de = getelementptr inbounds nuw i8, ptr %i.cv, i64 72
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !63
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cv, i64 36
  %wide.trip.count468 = zext nneg i32 %i.dc to i64
  br label %bb.x

bb.x:                                             ; preds = %.lr.ph426, %bb.aa
  %indvars.iv465 = phi i64 [ 0, %.lr.ph426 ], [ %indvars.iv.next466, %bb.aa ] ; 3 uses
  %.0425 = phi i32 [ 0, %.lr.ph426 ], [ %.1, %bb.aa ] ; 3 uses
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %indvars.iv465
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !64 ; 2 uses
  %.not277 = icmp eq ptr %i.di, null
  br i1 %.not277, label %.critedge8, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dj = getelementptr i8, ptr %i.di, i64 32
  %.val337.a = load i32, ptr %i.dj, align 8
  %i.dk = and i32 %.val337.a, 7
  %.not395 = icmp eq i32 %i.dk, 1
  br i1 %.not395, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dl = load i32, ptr %i.dg, align 4, !tbaa !77
  %i.dm = sext i32 %i.dl to i64
  %i.dn = getelementptr inbounds [4 x i8], ptr %calloc, i64 %i.dm
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !72
  %i.dp = trunc nuw nsw i64 %indvars.iv465 to i32
  %i.dq = lshr i32 %i.do, %i.dp
  %i.dr = and i32 %i.dq, 1
  %spec.select.a = add nsw i32 %i.dr, %.0425
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.1 = phi i32 [ %.0425, %bb.y ], [ %spec.select.a, %bb.z ] ; 2 uses
  %indvars.iv.next466 = add nuw nsw i64 %indvars.iv465, 1 ; 2 uses
  %exitcond469.not = icmp eq i64 %indvars.iv.next466, %wide.trip.count468
  br i1 %exitcond469.not, label %.critedge8, label %bb.x, !llvm.loop !82

.critedge8:                                       ; preds = %bb.x, %bb.aa, %.preheader405.a
  %.0.lcssa = phi i32 [ 0, %.preheader405.a ], [ %.1, %bb.aa ], [ %.0425, %bb.x ] ; 2 uses
  %i.ds = icmp eq i32 %.0.lcssa, 0                ; 2 uses
  %or.cond = select i1 %i.co, i1 %i.ds, i1 false
  br i1 %or.cond, label %.critedge11.thread, label %bb.ab

bb.ab:                                            ; preds = %.critedge8
  %i.dt = add nsw i32 %.4447, 1                   ; 5 uses
  store i32 0, ptr %i.ce, align 4, !tbaa !27
  br i1 %i.ds, label %.critedge11.thread, label %.preheader404.a

.preheader404.a:                                  ; preds = %bb.ab
  %i.du = getelementptr inbounds nuw i8, ptr %i.cv, i64 72 ; 3 uses
  br i1 %i.dd, label %.lr.ph434, label %.critedge11.thread

.lr.ph434:                                        ; preds = %.preheader404.a
  %i.dv = getelementptr inbounds nuw i8, ptr %i.cv, i64 36
  br label %bb.ac

bb.ac:                                            ; preds = %.lr.ph434, %.critedge13
  %.val312522 = phi ptr [ %.val312524, %.lr.ph434 ], [ %.val312520, %.critedge13 ] ; 5 uses
  %.val314511 = phi ptr [ %.val314512, %.lr.ph434 ], [ %.val314509, %.critedge13 ] ; 5 uses
  %i.dw = phi i32 [ %i.dc, %.lr.ph434 ], [ %i.gl, %.critedge13 ] ; 4 uses
  %i.dx = phi ptr [ %i.cp, %.lr.ph434 ], [ %i.gm, %.critedge13 ] ; 5 uses
  %i.dy = phi i32 [ %i.cq, %.lr.ph434 ], [ %i.gn, %.critedge13 ] ; 5 uses
  %i.dz = phi ptr [ %i.cr, %.lr.ph434 ], [ %i.go, %.critedge13 ] ; 5 uses
  %i.ea = phi i32 [ 0, %.lr.ph434 ], [ %i.gp, %.critedge13 ] ; 5 uses
  %indvars.iv473 = phi i64 [ 0, %.lr.ph434 ], [ %indvars.iv.next474, %.critedge13 ] ; 3 uses
  %i.eb = load ptr, ptr %i.du, align 8, !tbaa !63
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %indvars.iv473
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !64 ; 5 uses
  %.not279 = icmp eq ptr %i.ed, null
  br i1 %.not279, label %.critedge11, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ee = getelementptr i8, ptr %i.ed, i64 32
  %.val336.a = load i32, ptr %i.ee, align 8
  %i.ef = and i32 %.val336.a, 7
  %.not396 = icmp eq i32 %i.ef, 1
  br i1 %.not396, label %.critedge13, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.eg = load i32, ptr %i.dv, align 4, !tbaa !77
  %i.eh = sext i32 %i.eg to i64
  %i.ei = getelementptr inbounds [4 x i8], ptr %calloc, i64 %i.eh
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !72
  %i.ek = trunc nuw nsw i64 %indvars.iv473 to i32
  %i.el = shl nuw i32 1, %i.ek
  %i.em = and i32 %i.ej, %i.el
  %.not288 = icmp eq i32 %i.em, 0
  br i1 %.not288, label %.critedge13, label %.preheader403
end_hunk_0
