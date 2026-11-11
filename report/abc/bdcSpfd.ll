Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/bdcSpfd?download=true
inline.NumInlined: 142
inline.NumDeleted: 28
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 10
begin_hunk_0_@Bdc_SpfdPrint_rec:bb.a
  %i.e = and i32 %i.d, 255
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = lshr exact i32 %i.d, 8
  %i.h = and i32 %i.g, 4095
  %i.i = add nuw nsw i32 %i.h, 97
  %putchar21 = tail call i32 @putchar(i32 %i.i)   ; 0 uses
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.j = getelementptr i8, ptr %2, i64 8
  %.val29 = load ptr, ptr %i.j, align 8, !tbaa !11
  %i.k = and i64 %i.c, 255
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %.val29, i64 %i.k
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !12
  %i.n = lshr i64 %i.c, 8
  %i.o = and i64 %i.n, 4095
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %i.o
  tail call void @Bdc_SpfdPrint_rec(ptr noundef %i.p, i32 poison, ptr noundef %2)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.q = load i64, ptr %0, align 8
  %i.r = and i64 %i.q, 4194304
  %.not22 = icmp eq i64 %i.r, 0
  %. = select i1 %.not22, i32 42, i32 43
  %putchar23 = tail call i32 @putchar(i32 %.)     ; 0 uses
  %i.s = load i64, ptr %0, align 8                ; 2 uses
  %i.t = and i64 %i.s, 2097152
  %.not25 = icmp eq i64 %i.t, 0
  br i1 %.not25, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %putchar26 = tail call i32 @putchar(i32 33)     ; 0 uses
  %.pre30 = load i64, ptr %0, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.u = phi i64 [ %.pre30, %bb.g ], [ %i.s, %bb.f ] ; 4 uses
  %i.v = and i64 %i.u, 1095216660480
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.x = lshr i64 %i.u, 40
  %i.y = trunc nuw nsw i64 %i.x to i32
  %i.z = and i32 %i.y, 4095
  %i.aa = add nuw nsw i32 %i.z, 97
  %putchar27 = tail call i32 @putchar(i32 %i.aa)  ; 0 uses
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.ab = lshr i64 %i.u, 32
  %i.ac = getelementptr i8, ptr %2, i64 8
  %.val = load ptr, ptr %i.ac, align 8, !tbaa !11
  %i.ad = and i64 %i.ab, 255
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %.val, i64 %i.ad
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !12
  %i.ag = lshr i64 %i.u, 40
  %i.ah = and i64 %i.ag, 4095
  %i.ai = getelementptr inbounds nuw [16 x i8], ptr %i.af, i64 %i.ah
  tail call void @Bdc_SpfdPrint_rec(ptr noundef %i.ai, i32 poison, ptr noundef %2)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %putchar28 = tail call i32 @putchar(i32 41)     ; 0 uses
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define void @Bdc_SpfdPrint(ptr noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !15
  %i.d = xor i64 %i.c, %3
  store i64 %i.d, ptr %i.a, align 8, !tbaa !16
  %i.e = load ptr, ptr @stdout, align 8, !tbaa !18
  tail call void @Extra_PrintHex(ptr noundef %i.e, ptr noundef nonnull %i.b, i32 noundef 6) #21
  %i.f = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6) ; 0 uses
  %i.g = load ptr, ptr @stdout, align 8, !tbaa !18
  call void @Extra_PrintHex(ptr noundef %i.g, ptr noundef nonnull %i.a, i32 noundef 6) #21
  %i.h = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6) ; 0 uses
  call void @Bdc_SpfdPrint_rec(ptr noundef %0, i32 poison, ptr noundef %2)
  %i.i = load i64, ptr %0, align 8
  %i.j = lshr i64 %i.i, 52
  %i.k = trunc nuw nsw i64 %i.j to i32
  %i.l = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef %i.k) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret void
}

declare void @Extra_PrintHex(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define void @Bdc_SpfdDecompose(i64 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca i64, align 8                      ; 40 uses
  %4 = alloca %struct.timespec, align 8           ; 5 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %5 = alloca %struct.timespec, align 8           ; 5 uses
  %6 = alloca %struct.timespec, align 8           ; 5 uses
  %7 = alloca %struct.timespec, align 8           ; 5 uses
  %i.d = add i32 %3, 1                            ; 3 uses
  %i.e = mul i32 %2, 5
  %i.f = mul i32 %i.e, %2
  %i.g = mul i32 %i.f, %i.d                       ; 2 uses
  %i.h = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, i32 noundef %i.g, i32 noundef %2, i32 noundef %2, i32 noundef %i.d, i32 noundef 5) ; 0 uses
  %i.i = insertelement <2 x i64> poison, i64 %0, i64 0 ; 2 uses
  %i.j = shufflevector <2 x i64> %i.i, <2 x i64> poison, <2 x i32> zeroinitializer ; 11 uses
  %i.k = xor <2 x i64> %i.j, <i64 -1, i64 0>      ; 2 uses
  %i.l = xor <2 x i64> %i.j, <i64 0, i64 -1>      ; 2 uses
  %i.m = xor <2 x i64> %i.j, <i64 -1, i64 0>      ; 2 uses
  %i.n = xor <2 x i64> %i.j, <i64 0, i64 -1>      ; 2 uses
  %i.o = xor <2 x i64> %i.j, <i64 -1, i64 0>      ; 2 uses
  %i.p = xor <2 x i64> %i.j, <i64 0, i64 -1>      ; 2 uses
  %i.q = xor <2 x i64> %i.j, <i64 0, i64 -1>      ; 2 uses
  %i.r = and <2 x i64> %i.q, splat (i64 6148914691236517205)
  %i.s = lshr <2 x i64> %i.q, splat (i64 1)
  %i.t = and <2 x i64> %i.s, splat (i64 6148914691236517205)
  %i.u = add nuw <2 x i64> %i.t, %i.r             ; 2 uses
  %i.v = and <2 x i64> %i.u, splat (i64 3689348814741910323)
  %i.w = lshr <2 x i64> %i.u, splat (i64 2)
  %i.x = and <2 x i64> %i.w, splat (i64 3689348814741910323)
  %i.y = add nuw nsw <2 x i64> %i.x, %i.v         ; 2 uses
  %i.z = and <2 x i64> %i.y, splat (i64 506381209866536711)
  %i.aa = lshr <2 x i64> %i.y, splat (i64 4)
  %i.ab = and <2 x i64> %i.aa, splat (i64 506381209866536711)
  %i.ac = add nuw nsw <2 x i64> %i.ab, %i.z       ; 2 uses
  %i.ad = and <2 x i64> %i.ac, splat (i64 4222189076152335)
  %i.ae = lshr <2 x i64> %i.ac, splat (i64 8)
  %i.af = and <2 x i64> %i.ae, splat (i64 4222189076152335)
  %i.ag = add nuw nsw <2 x i64> %i.af, %i.ad      ; 2 uses
  %i.ah = and <2 x i64> %i.ag, splat (i64 133143986207)
  %i.ai = lshr <2 x i64> %i.ag, splat (i64 16)
  %i.aj = and <2 x i64> %i.ai, splat (i64 133143986207)
  %i.ak = add nuw nsw <2 x i64> %i.aj, %i.ah      ; 2 uses
  %i.al = lshr <2 x i64> %i.ak, splat (i64 32)
  %i.am = add nuw nsw <2 x i64> %i.al, %i.ak
  %i.an = trunc <2 x i64> %i.am to <2 x i32>      ; 2 uses
  %i.ao = extractelement <2 x i32> %i.an, i64 0
  %i.ap = extractelement <2 x i32> %i.an, i64 1
  %i.aq = mul nuw nsw i32 %i.ao, %i.ap
  %i.ar = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, i32 noundef %i.aq) ; 0 uses
  %i.as = add i64 %0, 1
  %or.cond = icmp ult i64 %i.as, 2
  br i1 %or.cond, label %bb.b, label %.preheader561

.preheader561:                                    ; preds = %bb.a
  %i.at = icmp sgt i32 %1, 0                      ; 3 uses
  br i1 %i.at, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader561
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %.lr.ph

bb.b:                                             ; preds = %bb.a
  %puts473 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.2) ; 0 uses
  br label %bb.bg

bb.c:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !42

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.c ] ; 2 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr @Truths, i64 %indvars.iv
  %i.av = load i64, ptr %i.au, align 8, !tbaa !16 ; 2 uses
  %i.aw = icmp eq i64 %0, %i.av
  %i.ax = xor i64 %i.av, %0
  %i.ay = icmp eq i64 %i.ax, -1
  %or.cond475 = or i1 %i.aw, %i.ay
  br i1 %or.cond475, label %bb.d, label %bb.c

bb.d:                                             ; preds = %.lr.ph
  %puts472 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.1) ; 0 uses
  br label %bb.bg

._crit_edge:                                      ; preds = %bb.c, %.preheader561
  %i.az = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #22 ; 20 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 4 ; 9 uses
  store i32 100, ptr %i.az, align 8, !tbaa !59
  %i.bb = tail call noalias dereferenceable_or_null(800) ptr @malloc(i64 noundef 800) #22 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 8 ; 13 uses
  store ptr %i.bb, ptr %i.bc, align 8, !tbaa !11
  %i.bd = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #22 ; 8 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 4 ; 4 uses
  store i32 100, ptr %i.bd, align 8, !tbaa !22
  %i.bf = tail call noalias dereferenceable_or_null(400) ptr @malloc(i64 noundef 400) #22 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 8 ; 8 uses
  store ptr %i.bf, ptr %i.bg, align 8, !tbaa !23
  %i.bh = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #22 ; 6 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 4 ; 4 uses
  store i32 0, ptr %i.bi, align 4, !tbaa !24
  store i32 100, ptr %i.bh, align 8, !tbaa !22
  %i.bj = tail call noalias dereferenceable_or_null(400) ptr @malloc(i64 noundef 400) #22
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 8 ; 7 uses
  store ptr %i.bj, ptr %i.bk, align 8, !tbaa !23
  %i.bl = and i32 %1, 255
  %i.bm = zext nneg i32 %i.bl to i64
  %i.bn = tail call noalias ptr @calloc(i64 noundef %i.bm, i64 noundef 16) #23 ; 11 uses
  br i1 %i.at, label %.lr.ph569.preheader, label %Vec_IntPush.exit

.lr.ph569.preheader:                              ; preds = %._crit_edge
  %wide.trip.count654 = zext nneg i32 %1 to i64   ; 4 uses
  %xtraiter = and i64 %wide.trip.count654, 3      ; 3 uses
  %i.bo = icmp ult i32 %1, 4
  br i1 %i.bo, label %.lr.ph569.epil.preheader, label %.lr.ph569.preheader.new

.lr.ph569.preheader.new:                          ; preds = %.lr.ph569.preheader
  %unroll_iter = and i64 %wide.trip.count654, 2147483644
  br label %.lr.ph569

.lr.ph571.preheader.unr-lcssa:                    ; preds = %.lr.ph569
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph571.preheader, label %.lr.ph569.epil.preheader

.lr.ph569.epil.preheader:                         ; preds = %.lr.ph571.preheader.unr-lcssa, %.lr.ph569.preheader
  %indvars.iv651.epil.init = phi i64 [ 0, %.lr.ph569.preheader ], [ %indvars.iv.next652.3, %.lr.ph571.preheader.unr-lcssa ]
  %lcmp.mod837 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod837)
  br label %.lr.ph569.epil

.lr.ph569.epil:                                   ; preds = %.lr.ph569.epil, %.lr.ph569.epil.preheader
  %indvars.iv651.epil = phi i64 [ %indvars.iv651.epil.init, %.lr.ph569.epil.preheader ], [ %indvars.iv.next652.epil, %.lr.ph569.epil ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.lr.ph569.epil.preheader ], [ %epil.iter.next, %.lr.ph569.epil ]
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr @Truths, i64 %indvars.iv651.epil
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !16
  %i.br = getelementptr inbounds nuw [16 x i8], ptr %i.bn, i64 %indvars.iv651.epil
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  store i64 %i.bq, ptr %i.bs, align 8, !tbaa !15
  %indvars.iv.next652.epil = add nuw nsw i64 %indvars.iv651.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.lr.ph571.preheader, label %.lr.ph569.epil, !llvm.loop !43

.lr.ph571.preheader:                              ; preds = %.lr.ph569.epil, %.lr.ph571.preheader.unr-lcssa
  %wide.trip.count659 = zext nneg i32 %1 to i64
  %min.iters.check = icmp eq i32 %1, 1
  br i1 %min.iters.check, label %.lr.ph571.preheader836, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph571.preheader
  %n.vec = and i64 %wide.trip.count654, 2147483646 ; 3 uses
  %i.bt = xor <2 x i64> %i.i, <i64 -1, i64 poison>
  %broadcast.splat = shufflevector <2 x i64> %i.bt, <2 x i64> poison, <2 x i32> zeroinitializer ; 4 uses
  %invariant.op844 = and <2 x i64> %broadcast.splat, splat (i64 6148914691236517205)
  %invariant.op845 = and <2 x i64> %broadcast.splat, splat (i64 6148914691236517205)
  %invariant.op847 = and <2 x i64> %i.j, splat (i64 6148914691236517205)
  %invariant.op849 = and <2 x i64> %i.j, splat (i64 6148914691236517205)
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bu = getelementptr inbounds nuw [16 x i8], ptr %i.bn, i64 %index ; 2 uses
  %i.bv = getelementptr inbounds nuw [16 x i8], ptr %i.bn, i64 %index
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  %wide.vec = load <4 x i64>, ptr %i.bu, align 8  ; 2 uses
  %strided.vec = shufflevector <4 x i64> %wide.vec, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec824 = shufflevector <4 x i64> %wide.vec, <4 x i64> poison, <2 x i32> <i32 1, i32 3> ; 5 uses
  %i.bx = xor <2 x i64> %strided.vec824, splat (i64 -1) ; 4 uses
  %i.by = and <2 x i64> %broadcast.splat, %i.bx
  %.reass = and <2 x i64> %i.bx, %invariant.op844
  %i.bz = lshr <2 x i64> %i.by, splat (i64 1)
  %i.ca = and <2 x i64> %i.bz, splat (i64 6148914691236517205)
  %i.cb = add nuw <2 x i64> %i.ca, %.reass        ; 2 uses
  %i.cc = and <2 x i64> %i.cb, splat (i64 3689348814741910323)
  %i.cd = lshr <2 x i64> %i.cb, splat (i64 2)
  %i.ce = and <2 x i64> %i.cd, splat (i64 3689348814741910323)
  %i.cf = add nuw nsw <2 x i64> %i.ce, %i.cc      ; 2 uses
  %i.cg = and <2 x i64> %i.cf, splat (i64 506381209866536711)
  %i.ch = lshr <2 x i64> %i.cf, splat (i64 4)
  %i.ci = and <2 x i64> %i.ch, splat (i64 506381209866536711)
  %i.cj = add nuw nsw <2 x i64> %i.ci, %i.cg      ; 2 uses
  %i.ck = and <2 x i64> %i.cj, splat (i64 4222189076152335)
  %i.cl = lshr <2 x i64> %i.cj, splat (i64 8)
  %i.cm = and <2 x i64> %i.cl, splat (i64 4222189076152335)
  %i.cn = add nuw nsw <2 x i64> %i.cm, %i.ck      ; 2 uses
  %i.co = and <2 x i64> %i.cn, splat (i64 133143986207)
  %i.cp = lshr <2 x i64> %i.cn, splat (i64 16)
  %i.cq = and <2 x i64> %i.cp, splat (i64 133143986207)
  %i.cr = add nuw nsw <2 x i64> %i.cq, %i.co      ; 2 uses
  %i.cs = lshr <2 x i64> %i.cr, splat (i64 32)
  %i.ct = add nuw nsw <2 x i64> %i.cs, %i.cr
  %i.cu = and <2 x i64> %strided.vec824, %broadcast.splat
  %.reass846 = and <2 x i64> %strided.vec824, %invariant.op845
  %i.cv = lshr <2 x i64> %i.cu, splat (i64 1)
  %i.cw = and <2 x i64> %i.cv, splat (i64 6148914691236517205)
  %i.cx = add nuw <2 x i64> %i.cw, %.reass846     ; 2 uses
  %i.cy = and <2 x i64> %i.cx, splat (i64 3689348814741910323)
  %i.cz = lshr <2 x i64> %i.cx, splat (i64 2)
  %i.da = and <2 x i64> %i.cz, splat (i64 3689348814741910323)
  %i.db = add nuw nsw <2 x i64> %i.da, %i.cy      ; 2 uses
  %i.dc = and <2 x i64> %i.db, splat (i64 506381209866536711)
  %i.dd = lshr <2 x i64> %i.db, splat (i64 4)
  %i.de = and <2 x i64> %i.dd, splat (i64 506381209866536711)
  %i.df = add nuw nsw <2 x i64> %i.de, %i.dc      ; 2 uses
  %i.dg = and <2 x i64> %i.df, splat (i64 4222189076152335)
  %i.dh = lshr <2 x i64> %i.df, splat (i64 8)
  %i.di = and <2 x i64> %i.dh, splat (i64 4222189076152335)
  %i.dj = add nuw nsw <2 x i64> %i.di, %i.dg      ; 2 uses
  %i.dk = and <2 x i64> %i.dj, splat (i64 133143986207)
  %i.dl = lshr <2 x i64> %i.dj, splat (i64 16)
  %i.dm = and <2 x i64> %i.dl, splat (i64 133143986207)
  %i.dn = add nuw nsw <2 x i64> %i.dm, %i.dk      ; 2 uses
  %i.do = lshr <2 x i64> %i.dn, splat (i64 32)
  %i.dp = add nuw nsw <2 x i64> %i.do, %i.dn
  %i.dq = and <2 x i64> %i.j, %i.bx
  %.reass848 = and <2 x i64> %i.bx, %invariant.op847
  %i.dr = lshr <2 x i64> %i.dq, splat (i64 1)
  %i.ds = and <2 x i64> %i.dr, splat (i64 6148914691236517205)
  %i.dt = add nuw <2 x i64> %i.ds, %.reass848     ; 2 uses
  %i.du = and <2 x i64> %i.dt, splat (i64 3689348814741910323)
  %i.dv = lshr <2 x i64> %i.dt, splat (i64 2)
  %i.dw = and <2 x i64> %i.dv, splat (i64 3689348814741910323)
  %i.dx = add nuw nsw <2 x i64> %i.dw, %i.du      ; 2 uses
  %i.dy = and <2 x i64> %i.dx, splat (i64 506381209866536711)
  %i.dz = lshr <2 x i64> %i.dx, splat (i64 4)
  %i.ea = and <2 x i64> %i.dz, splat (i64 506381209866536711)
  %i.eb = add nuw nsw <2 x i64> %i.ea, %i.dy      ; 2 uses
  %i.ec = and <2 x i64> %i.eb, splat (i64 4222189076152335)
  %i.ed = lshr <2 x i64> %i.eb, splat (i64 8)
  %i.ee = and <2 x i64> %i.ed, splat (i64 4222189076152335)
  %i.ef = add nuw nsw <2 x i64> %i.ee, %i.ec      ; 2 uses
  %i.eg = and <2 x i64> %i.ef, splat (i64 133143986207)
  %i.eh = lshr <2 x i64> %i.ef, splat (i64 16)
  %i.ei = and <2 x i64> %i.eh, splat (i64 133143986207)
  %i.ej = add nuw nsw <2 x i64> %i.ei, %i.eg      ; 2 uses
  %i.ek = lshr <2 x i64> %i.ej, splat (i64 32)
  %i.el = add nuw nsw <2 x i64> %i.ek, %i.ej
  %i.em = and <2 x i64> %strided.vec824, %i.j
  %.reass850 = and <2 x i64> %strided.vec824, %invariant.op849
  %i.en = lshr <2 x i64> %i.em, splat (i64 1)
  %i.eo = and <2 x i64> %i.en, splat (i64 6148914691236517205)
  %i.ep = add nuw <2 x i64> %i.eo, %.reass850     ; 2 uses
  %i.eq = and <2 x i64> %i.ep, splat (i64 3689348814741910323)
  %i.er = lshr <2 x i64> %i.ep, splat (i64 2)
  %i.es = and <2 x i64> %i.er, splat (i64 3689348814741910323)
  %i.et = add nuw nsw <2 x i64> %i.es, %i.eq      ; 2 uses
  %i.eu = and <2 x i64> %i.et, splat (i64 506381209866536711)
  %i.ev = lshr <2 x i64> %i.et, splat (i64 4)
  %i.ew = and <2 x i64> %i.ev, splat (i64 506381209866536711)
  %i.ex = add nuw nsw <2 x i64> %i.ew, %i.eu      ; 2 uses
  %i.ey = and <2 x i64> %i.ex, splat (i64 4222189076152335)
  %i.ez = lshr <2 x i64> %i.ex, splat (i64 8)
  %i.fa = and <2 x i64> %i.ez, splat (i64 4222189076152335)
  %i.fb = add nuw nsw <2 x i64> %i.fa, %i.ey      ; 2 uses
  %i.fc = and <2 x i64> %i.fb, splat (i64 133143986207)
  %i.fd = lshr <2 x i64> %i.fb, splat (i64 16)
  %i.fe = and <2 x i64> %i.fd, splat (i64 133143986207)
  %i.ff = add nuw nsw <2 x i64> %i.fe, %i.fc      ; 2 uses
  %i.fg = lshr <2 x i64> %i.ff, splat (i64 32)
  %i.fh = add nuw nsw <2 x i64> %i.fg, %i.ff
  %i.fi = mul <2 x i64> %i.ct, %i.fh
  %i.fj = mul <2 x i64> %i.el, %i.dp
  %i.fk = add <2 x i64> %i.fi, %i.fj
  %i.fl = shl <2 x i64> %i.fk, splat (i64 52)
  %i.fm = and <2 x i64> %strided.vec, splat (i64 4503599627370495)
  %i.fn = or disjoint <2 x i64> %i.fl, %i.fm      ; 2 uses
  %i.fo = extractelement <2 x i64> %i.fn, i64 0
  store i64 %i.fo, ptr %i.bu, align 8
  %i.fp = extractelement <2 x i64> %i.fn, i64 1
  store i64 %i.fp, ptr %i.bw, align 8
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.fq = icmp eq i64 %index.next, %n.vec
  br i1 %i.fq, label %middle.block, label %vector.body, !llvm.loop !44

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count654
  br i1 %cmp.n, label %Vec_IntPush.exit.loopexit, label %.lr.ph571.preheader836

.lr.ph571.preheader836:                           ; preds = %.lr.ph571.preheader, %middle.block
  %indvars.iv656.ph = phi i64 [ 0, %.lr.ph571.preheader ], [ %n.vec, %middle.block ]
  %invariant.op851 = and <2 x i64> %i.k, splat (i64 6148914691236517205)
  %invariant.op853 = and <2 x i64> %i.l, splat (i64 6148914691236517205)
  br label %.lr.ph571

.lr.ph569:                                        ; preds = %.lr.ph569, %.lr.ph569.preheader.new
  %indvars.iv651 = phi i64 [ 0, %.lr.ph569.preheader.new ], [ %indvars.iv.next652.3, %.lr.ph569 ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph569.preheader.new ], [ %niter.next.3, %.lr.ph569 ]
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr @Truths, i64 %indvars.iv651
  %i.fs = load i64, ptr %i.fr, align 16, !tbaa !16
  %i.ft = getelementptr inbounds nuw [16 x i8], ptr %i.bn, i64 %indvars.iv651
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 8
  store i64 %i.fs, ptr %i.fu, align 8, !tbaa !15
  %indvars.iv.next652 = or disjoint i64 %indvars.iv651, 1 ; 2 uses
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr @Truths, i64 %indvars.iv.next652
  %i.fw = load i64, ptr %i.fv, align 8, !tbaa !16
  %i.fx = getelementptr inbounds nuw [16 x i8], ptr %i.bn, i64 %indvars.iv.next652
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 8
  store i64 %i.fw, ptr %i.fy, align 8, !tbaa !15
  %indvars.iv.next652.1 = or disjoint i64 %indvars.iv651, 2 ; 2 uses
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr @Truths, i64 %indvars.iv.next652.1
  %i.ga = load i64, ptr %i.fz, align 16, !tbaa !16
end_hunk_0
begin_hunk_1_@Bdc_SpfdDecompose:bb.a
bb.l:                                             ; preds = %bb.k
  %.not9.i11.i492 = icmp eq ptr %.pre751, null
  %i.li = zext nneg i32 %spec.select.i490 to i64
  %i.lj = shl nuw nsw i64 %i.li, 3                ; 2 uses
  br i1 %.not9.i11.i492, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.lk = call ptr @realloc(ptr noundef nonnull %.pre751, i64 noundef %i.lj) #24
  br label %Vec_PtrGrow.exit12.sink.split.i493

bb.n:                                             ; preds = %bb.l
  %i.ll = call noalias ptr @malloc(i64 noundef %i.lj) #22
  br label %Vec_PtrGrow.exit12.sink.split.i493

Vec_PtrGrow.exit12.sink.split.i493:               ; preds = %bb.m, %bb.n, %bb.i, %bb.j
  %storemerge = phi ptr [ %i.lf, %bb.j ], [ %i.le, %bb.i ], [ %i.lk, %bb.m ], [ %i.ll, %bb.n ] ; 2 uses
  %spec.select.sink.i494 = phi i32 [ 16, %bb.j ], [ 16, %bb.i ], [ %spec.select.i490, %bb.m ], [ %spec.select.i490, %bb.n ]
  store ptr %storemerge, ptr %i.bc, align 8, !tbaa !11
  store i32 %spec.select.sink.i494, ptr %i.az, align 8, !tbaa !59
  %.pre752 = load i32, ptr %i.ba, align 4, !tbaa !61
  br label %Vec_PtrPush.exit497

Vec_PtrPush.exit497:                              ; preds = %._crit_edge585.Vec_PtrPush.exit497_crit_edge, %bb.k, %Vec_PtrGrow.exit12.sink.split.i493
  %i.lm = phi i32 [ %i.kz, %._crit_edge585.Vec_PtrPush.exit497_crit_edge ], [ %i.kz, %bb.k ], [ %.pre752, %Vec_PtrGrow.exit12.sink.split.i493 ] ; 2 uses
  %i.ln = phi ptr [ %.pre750, %._crit_edge585.Vec_PtrPush.exit497_crit_edge ], [ %.pre751, %bb.k ], [ %storemerge, %Vec_PtrGrow.exit12.sink.split.i493 ]
  %i.lo = add nsw i32 %i.lm, 1
  store i32 %i.lo, ptr %i.ba, align 4, !tbaa !61
  %i.lp = sext i32 %i.lm to i64
  %i.lq = getelementptr inbounds [8 x i8], ptr %i.ln, i64 %i.lp
  store ptr %i.iz, ptr %i.lq, align 8, !tbaa !12
  %i.lr = load i32, ptr %i.bd, align 8, !tbaa !22
  %i.ls = icmp eq i32 %i.lr, 1
  br i1 %i.ls, label %Vec_IntGrow.exit11.sink.split.i501, label %Vec_PtrPush.exit497.Vec_IntPush.exit505_crit_edge

Vec_PtrPush.exit497.Vec_IntPush.exit505_crit_edge: ; preds = %Vec_PtrPush.exit497
  %.pre753 = load ptr, ptr %i.bg, align 8, !tbaa !23
  br label %Vec_IntPush.exit505

Vec_IntGrow.exit11.sink.split.i501:               ; preds = %Vec_PtrPush.exit497
  %i.lt = call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.in, i64 noundef 64) #24 ; 2 uses
  store ptr %i.lt, ptr %i.bg, align 8, !tbaa !23
  store i32 16, ptr %i.bd, align 8, !tbaa !22
  br label %Vec_IntPush.exit505

Vec_IntPush.exit505:                              ; preds = %Vec_PtrPush.exit497.Vec_IntPush.exit505_crit_edge, %Vec_IntGrow.exit11.sink.split.i501
  %i.lu = phi ptr [ %.pre753, %Vec_PtrPush.exit497.Vec_IntPush.exit505_crit_edge ], [ %i.lt, %Vec_IntGrow.exit11.sink.split.i501 ]
  store i32 2, ptr %i.be, align 4, !tbaa !24
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lu, i64 4
  store i32 %.0440.lcssa, ptr %i.lv, align 4, !tbaa !27
  %i.lw = icmp sgt i32 %.0440.lcssa, 0
  br i1 %i.lw, label %.lr.ph588.preheader, label %._crit_edge589

.lr.ph588.preheader:                              ; preds = %Vec_IntPush.exit505
  %wide.trip.count680 = zext nneg i32 %.0440.lcssa to i64
  %invariant.op855 = and <2 x i64> %i.m, splat (i64 6148914691236517205)
  %invariant.op857 = and <2 x i64> %i.n, splat (i64 6148914691236517205)
  br label %.lr.ph588

bb.o:                                             ; preds = %.lr.ph588
  %indvars.iv.next678 = add nuw nsw i64 %indvars.iv677, 1 ; 2 uses
  %exitcond681.not = icmp eq i64 %indvars.iv.next678, %wide.trip.count680
  br i1 %exitcond681.not, label %._crit_edge589, label %.lr.ph588, !llvm.loop !49

.lr.ph588:                                        ; preds = %.lr.ph588.preheader, %bb.o
  %indvars.iv677 = phi i64 [ 0, %.lr.ph588.preheader ], [ %indvars.iv.next678, %bb.o ] ; 2 uses
  %i.lx = getelementptr inbounds nuw [16 x i8], ptr %i.iz, i64 %indvars.iv677 ; 3 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lx, i64 8
  %i.lz = load i64, ptr %i.ly, align 8, !tbaa !15 ; 4 uses
  %i.ma = xor i64 %i.lz, -1
  %i.mb = insertelement <2 x i64> poison, i64 %i.ma, i64 0
  %i.mc = shufflevector <2 x i64> %i.mb, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.md = and <2 x i64> %i.mc, %i.m
  %.reass856 = and <2 x i64> %i.mc, %invariant.op855
  %i.me = lshr <2 x i64> %i.md, splat (i64 1)
  %i.mf = and <2 x i64> %i.me, splat (i64 6148914691236517205)
  %i.mg = add nuw <2 x i64> %i.mf, %.reass856     ; 2 uses
  %i.mh = and <2 x i64> %i.mg, splat (i64 3689348814741910323)
  %i.mi = lshr <2 x i64> %i.mg, splat (i64 2)
  %i.mj = and <2 x i64> %i.mi, splat (i64 3689348814741910323)
  %i.mk = insertelement <2 x i64> poison, i64 %i.lz, i64 0
  %i.ml = shufflevector <2 x i64> %i.mk, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.mm = and <2 x i64> %i.ml, %i.n
  %.reass858 = and <2 x i64> %i.ml, %invariant.op857
  %i.mn = lshr <2 x i64> %i.mm, splat (i64 1)
  %i.mo = and <2 x i64> %i.mn, splat (i64 6148914691236517205)
  %i.mp = add nuw <2 x i64> %i.mo, %.reass858     ; 2 uses
  %i.mq = and <2 x i64> %i.mp, splat (i64 3689348814741910323)
  %i.mr = lshr <2 x i64> %i.mp, splat (i64 2)
  %i.ms = and <2 x i64> %i.mr, splat (i64 3689348814741910323)
  %i.mt = add nuw nsw <2 x i64> %i.mj, %i.mh      ; 2 uses
  %i.mu = and <2 x i64> %i.mt, splat (i64 506381209866536711)
  %i.mv = lshr <2 x i64> %i.mt, splat (i64 4)
  %i.mw = and <2 x i64> %i.mv, splat (i64 506381209866536711)
  %i.mx = add nuw nsw <2 x i64> %i.mw, %i.mu      ; 2 uses
  %i.my = and <2 x i64> %i.mx, splat (i64 4222189076152335)
  %i.mz = lshr <2 x i64> %i.mx, splat (i64 8)
  %i.na = and <2 x i64> %i.mz, splat (i64 4222189076152335)
  %i.nb = add nuw nsw <2 x i64> %i.na, %i.my      ; 2 uses
  %i.nc = and <2 x i64> %i.nb, splat (i64 133143986207)
  %i.nd = lshr <2 x i64> %i.nb, splat (i64 16)
  %i.ne = and <2 x i64> %i.nd, splat (i64 133143986207)
  %i.nf = add nuw nsw <2 x i64> %i.ne, %i.nc      ; 2 uses
  %i.ng = lshr <2 x i64> %i.nf, splat (i64 32)
  %i.nh = add nuw nsw <2 x i64> %i.ng, %i.nf
  %i.ni = add nuw nsw <2 x i64> %i.ms, %i.mq      ; 2 uses
  %i.nj = and <2 x i64> %i.ni, splat (i64 506381209866536711)
  %i.nk = lshr <2 x i64> %i.ni, splat (i64 4)
  %i.nl = and <2 x i64> %i.nk, splat (i64 506381209866536711)
  %i.nm = add nuw nsw <2 x i64> %i.nl, %i.nj      ; 2 uses
  %i.nn = and <2 x i64> %i.nm, splat (i64 4222189076152335)
  %i.no = lshr <2 x i64> %i.nm, splat (i64 8)
  %i.np = and <2 x i64> %i.no, splat (i64 4222189076152335)
  %i.nq = add nuw nsw <2 x i64> %i.np, %i.nn      ; 2 uses
  %i.nr = and <2 x i64> %i.nq, splat (i64 133143986207)
  %i.ns = lshr <2 x i64> %i.nq, splat (i64 16)
  %i.nt = and <2 x i64> %i.ns, splat (i64 133143986207)
  %i.nu = add nuw nsw <2 x i64> %i.nt, %i.nr      ; 2 uses
  %i.nv = lshr <2 x i64> %i.nu, splat (i64 32)
  %i.nw = add nuw nsw <2 x i64> %i.nv, %i.nu
  %i.nx = mul <2 x i64> %i.nh, %i.nw
  %i.ny = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %i.nx)
  %i.nz = load i64, ptr %i.lx, align 8
  %i.oa = shl i64 %i.ny, 52
  %i.ob = and i64 %i.nz, 4503599627370495
  %i.oc = or disjoint i64 %i.oa, %i.ob
  store i64 %i.oc, ptr %i.lx, align 8
  %i.od = icmp eq i64 %0, %i.lz
  %i.oe = xor i64 %i.lz, %0
  %i.of = icmp eq i64 %i.oe, -1
  %or.cond477 = or i1 %i.od, %i.of
  br i1 %or.cond477, label %.thread543, label %bb.o

.thread543:                                       ; preds = %.lr.ph588
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  br label %bb.ba

._crit_edge589:                                   ; preds = %bb.o, %Vec_IntPush.exit505
  %i.og = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, i32 noundef %.0440.lcssa, i32 noundef 1) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  %i.oh = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %6) #21
  %i.oi = icmp slt i32 %i.oh, 0
  br i1 %i.oi, label %Abc_Clock.exit507, label %bb.p

bb.p:                                             ; preds = %._crit_edge589
  %i.oj = load i64, ptr %6, align 8, !tbaa !29
  %i.ok = mul nsw i64 %i.oj, 1000000
  %i.ol = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.om = load i64, ptr %i.ol, align 8, !tbaa !30
  %i.on = sdiv i64 %i.om, 1000
  %i.oo = add nsw i64 %i.on, %i.ok
  br label %Abc_Clock.exit507

Abc_Clock.exit507:                                ; preds = %._crit_edge589, %bb.p
  %.0.i506 = phi i64 [ %i.oo, %bb.p ], [ -1, %._crit_edge589 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  %i.op = add i64 %.0.i506, %.0.i.neg
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.14)
  %i.oq = sitofp i64 %i.op to double
  %i.or = fdiv double %i.oq, 1.000000e+06
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.39, double noundef %i.or)
  %i.os = sext i32 %i.g to i64
  %i.ot = call noalias ptr @calloc(i64 noundef %i.os, i64 noundef 16) #23 ; 6 uses
  %.not632 = icmp slt i32 %3, 2
  br i1 %.not632, label %._crit_edge635, label %.lr.ph634

.lr.ph634:                                        ; preds = %Abc_Clock.exit507
  %i.ou = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ov = sext i32 %2 to i64
  %i.ow = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ox = zext i32 %2 to i64
  %wide.trip.count744 = zext i32 %i.d to i64
  %invariant.op889.a = and <2 x i64> %i.o, splat (i64 6148914691236517205)
  %invariant.op891.a = and <2 x i64> %i.p, splat (i64 6148914691236517205)
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph634, %Abc_Clock.exit535
  %indvars.iv739 = phi i64 [ 2, %.lr.ph634 ], [ %indvars.iv.next740, %Abc_Clock.exit535 ] ; 4 uses
  %indvars.iv737 = phi i64 [ 1, %.lr.ph634 ], [ %indvars.iv.next738, %Abc_Clock.exit535 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  %i.oy = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %5) #21
  %i.oz = icmp slt i32 %i.oy, 0
  br i1 %i.oz, label %.lr.ph601, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.pa = load i64, ptr %5, align 8, !tbaa !29
  %.neg555 = mul i64 %i.pa, -1000000
  %i.pb = load i64, ptr %i.ou, align 8, !tbaa !30
  %.neg554 = sdiv i64 %i.pb, -1000
  %.neg556 = add i64 %.neg554, %.neg555
  br label %.lr.ph601

.lr.ph601:                                        ; preds = %bb.r, %bb.q
  %.0.i508.neg = phi i64 [ %.neg556, %bb.r ], [ 1, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  %i.pc = add nsw i64 %indvars.iv739, -1          ; 4 uses
  %.val481 = load ptr, ptr %i.bc, align 8, !tbaa !11 ; 2 uses
  %i.pd = getelementptr inbounds [8 x i8], ptr %.val481, i64 %i.pc
  %i.pe = load ptr, ptr %i.pd, align 8, !tbaa !12 ; 3 uses
  %.val484 = load ptr, ptr %i.bg, align 8, !tbaa !23 ; 6 uses
  %i.pf = getelementptr inbounds [4 x i8], ptr %.val484, i64 %i.pc
  %i.pg = load i32, ptr %i.pf, align 4, !tbaa !27 ; 5 uses
  %8 = icmp slt i32 %i.pg, 1
  %9 = shl i64 %i.pc, 32
  %10 = and i64 %9, 1095216660480                 ; 5 uses
  %wide.trip.count689 = zext nneg i32 %i.pg to i64
  br label %bb.s

.preheader558:                                    ; preds = %._crit_edge597
  %11 = icmp sgt i32 %i.pg, 0
  br i1 %11, label %.lr.ph618.a, label %._crit_edge619

.lr.ph618.a:                                      ; preds = %.preheader558
  %12 = and i64 %i.pc, 255                        ; 6 uses
  %13 = shl nuw nsw i64 %12, 32                   ; 5 uses
  %14 = zext nneg i32 %i.pg to i64
  %wide.trip.count717.a = zext nneg i32 %i.pg to i64 ; 2 uses
  %invariant.op874 = or disjoint i64 %13, %12
  %invariant.op877 = or disjoint i64 %13, %12
  %invariant.op880 = or disjoint i64 %13, %12
  %invariant.op883 = or disjoint i64 %13, %12
  %invariant.op886 = or disjoint i64 %13, %12
  br label %bb.u

bb.s:                                             ; preds = %.lr.ph601, %._crit_edge597
  %indvars.iv696 = phi i64 [ 0, %.lr.ph601 ], [ %indvars.iv.next697, %._crit_edge597 ] ; 4 uses
  %.2600 = phi i32 [ 0, %.lr.ph601 ], [ %.3.lcssa, %._crit_edge597 ] ; 2 uses
  %i.ph = getelementptr inbounds nuw [8 x i8], ptr %.val481, i64 %indvars.iv696
  %i.pi = load ptr, ptr %i.ph, align 8, !tbaa !12
  %i.pj = getelementptr inbounds nuw [4 x i8], ptr %.val484, i64 %indvars.iv696
  %i.pk = load i32, ptr %i.pj, align 4, !tbaa !27 ; 2 uses
  %15 = icmp slt i32 %i.pk, 1
  %brmerge = select i1 %15, i1 true, i1 %8
  br i1 %brmerge, label %._crit_edge597, label %.preheader.us.preheader

.preheader.us.preheader:                          ; preds = %bb.s
  %i.pl = and i64 %indvars.iv696, 255             ; 5 uses
  %wide.trip.count694 = zext nneg i32 %i.pk to i64
  %i.pm = sext i32 %.2600 to i64
  %invariant.op859 = or disjoint i64 %10, %i.pl
  %invariant.op862 = or disjoint i64 %10, %i.pl
  %invariant.op865 = or disjoint i64 %10, %i.pl
  %invariant.op868 = or disjoint i64 %10, %i.pl
  %invariant.op871 = or disjoint i64 %10, %i.pl
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge593.us
  %indvars.iv691 = phi i64 [ 0, %.preheader.us.preheader ], [ %indvars.iv.next692, %._crit_edge593.us ] ; 3 uses
  %.3596.us = phi i64 [ %i.pm, %.preheader.us.preheader ], [ %indvars.iv.next683, %._crit_edge593.us ]
  %i.pn = getelementptr inbounds nuw [16 x i8], ptr %i.pi, i64 %indvars.iv691
  %i.po = getelementptr inbounds nuw i8, ptr %i.pn, i64 8 ; 5 uses
  %i.pp = shl i64 %indvars.iv691, 8
  %i.pq = and i64 %i.pp, 1048320                  ; 5 uses
  %invariant.op861 = or disjoint i64 %invariant.op859, %i.pq
  %invariant.op864 = or disjoint i64 %invariant.op862, %i.pq
  %invariant.op867 = or disjoint i64 %invariant.op865, %i.pq
  %invariant.op870 = or disjoint i64 %invariant.op868, %i.pq
  %invariant.op873 = or disjoint i64 %invariant.op871, %i.pq
  br label %bb.t

bb.t:                                             ; preds = %.preheader.us, %bb.t
  %indvars.iv684 = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next685, %bb.t ] ; 3 uses
  %indvars.iv682 = phi i64 [ %.3596.us, %.preheader.us ], [ %indvars.iv.next683, %bb.t ] ; 2 uses
  %i.pr = load i64, ptr %i.po, align 8, !tbaa !15
  %i.ps = getelementptr inbounds nuw [16 x i8], ptr %i.pe, i64 %indvars.iv684
  %i.pt = getelementptr inbounds nuw i8, ptr %i.ps, i64 8 ; 5 uses
  %i.pu = load i64, ptr %i.pt, align 8, !tbaa !15
  %i.pv = and i64 %i.pu, %i.pr
  %i.pw = getelementptr [16 x i8], ptr %i.ot, i64 %indvars.iv682 ; 11 uses
  %i.px = getelementptr inbounds nuw i8, ptr %i.pw, i64 8
  store i64 %i.pv, ptr %i.px, align 8, !tbaa !15
  %i.py = load i64, ptr %i.pw, align 8
  %i.pz = and i64 %i.py, -4503599627370496
  %i.qa = shl i64 %indvars.iv684, 40
  %i.qb = and i64 %i.qa, 4502500115742720         ; 5 uses
  %.reass788.reass = or disjoint i64 %i.pz, %invariant.op861
  %i.qc = or disjoint i64 %.reass788.reass, %i.qb
  store i64 %i.qc, ptr %i.pw, align 8
  %i.qd = load i64, ptr %i.po, align 8, !tbaa !15
  %i.qe = xor i64 %i.qd, -1
  %i.qf = load i64, ptr %i.pt, align 8, !tbaa !15
  %i.qg = and i64 %i.qf, %i.qe
  %i.qh = getelementptr i8, ptr %i.pw, i64 16     ; 2 uses
  %i.qi = getelementptr i8, ptr %i.pw, i64 24
  store i64 %i.qg, ptr %i.qi, align 8, !tbaa !15
  %i.qj = load i64, ptr %i.qh, align 8
  %i.qk = and i64 %i.qj, -4503599627370496
  %.reass791.reass = or disjoint i64 %i.qk, %invariant.op864
  %i.ql = or disjoint i64 %.reass791.reass, %i.qb
  %i.qm = or disjoint i64 %i.ql, 1048576
  store i64 %i.qm, ptr %i.qh, align 8
  %i.qn = load i64, ptr %i.po, align 8, !tbaa !15
  %i.qo = load i64, ptr %i.pt, align 8, !tbaa !15
  %i.qp = xor i64 %i.qo, -1
  %i.qq = and i64 %i.qn, %i.qp
  %i.qr = getelementptr i8, ptr %i.pw, i64 32     ; 2 uses
  %i.qs = getelementptr i8, ptr %i.pw, i64 40
  store i64 %i.qq, ptr %i.qs, align 8, !tbaa !15
  %i.qt = load i64, ptr %i.qr, align 8
  %i.qu = and i64 %i.qt, -4503599627370496
  %.reass794.reass = or disjoint i64 %i.qu, %invariant.op867
  %i.qv = or disjoint i64 %.reass794.reass, %i.qb
  %i.qw = or disjoint i64 %i.qv, 2097152
  store i64 %i.qw, ptr %i.qr, align 8
  %i.qx = load i64, ptr %i.po, align 8, !tbaa !15
  %i.qy = load i64, ptr %i.pt, align 8, !tbaa !15
  %.demorgan468.us = or i64 %i.qy, %i.qx
  %i.qz = xor i64 %.demorgan468.us, -1
  %i.ra = getelementptr i8, ptr %i.pw, i64 48     ; 2 uses
  %i.rb = getelementptr i8, ptr %i.pw, i64 56
  store i64 %i.qz, ptr %i.rb, align 8, !tbaa !15
  %i.rc = load i64, ptr %i.ra, align 8
  %i.rd = and i64 %i.rc, -4503599627370496
  %.reass797.reass = or disjoint i64 %i.rd, %invariant.op870
  %i.re = or disjoint i64 %.reass797.reass, %i.qb
  %i.rf = or disjoint i64 %i.re, 3145728
  store i64 %i.rf, ptr %i.ra, align 8
  %i.rg = load i64, ptr %i.po, align 8, !tbaa !15
  %i.rh = load i64, ptr %i.pt, align 8, !tbaa !15
  %i.ri = xor i64 %i.rh, %i.rg
  %i.rj = getelementptr i8, ptr %i.pw, i64 64     ; 2 uses
  %i.rk = getelementptr i8, ptr %i.pw, i64 72
  store i64 %i.ri, ptr %i.rk, align 8, !tbaa !15
  %i.rl = load i64, ptr %i.rj, align 8
  %i.rm = and i64 %i.rl, -4503599627370496
  %indvars.iv.next683 = add nsw i64 %indvars.iv682, 5 ; 3 uses
  %.reass800.reass = or disjoint i64 %i.rm, %invariant.op873
  %i.rn = or disjoint i64 %.reass800.reass, %i.qb
  %i.ro = or disjoint i64 %i.rn, 4194304
  store i64 %i.ro, ptr %i.rj, align 8
  %indvars.iv.next685 = add nuw nsw i64 %indvars.iv684, 1 ; 2 uses
  %exitcond690.not = icmp eq i64 %indvars.iv.next685, %wide.trip.count689
  br i1 %exitcond690.not, label %._crit_edge593.us, label %bb.t, !llvm.loop !50

._crit_edge593.us:                                ; preds = %bb.t
  %indvars.iv.next692 = add nuw nsw i64 %indvars.iv691, 1 ; 2 uses
  %exitcond695.not = icmp eq i64 %indvars.iv.next692, %wide.trip.count694
  br i1 %exitcond695.not, label %._crit_edge597.loopexit, label %.preheader.us, !llvm.loop !51

._crit_edge597.loopexit:                          ; preds = %._crit_edge593.us
  %i.rp = trunc nsw i64 %indvars.iv.next683 to i32
  br label %._crit_edge597

._crit_edge597:                                   ; preds = %bb.s, %._crit_edge597.loopexit
  %.3.lcssa = phi i32 [ %.2600, %bb.s ], [ %i.rp, %._crit_edge597.loopexit ] ; 3 uses
  %indvars.iv.next697 = add nuw nsw i64 %indvars.iv696, 1 ; 2 uses
  %exitcond702.not = icmp eq i64 %indvars.iv.next697, %indvars.iv737
  br i1 %exitcond702.not, label %.preheader558, label %bb.s, !llvm.loop !52

.loopexit.loopexit:                               ; preds = %bb.v
  %i.rq = trunc nsw i64 %indvars.iv.next704 to i32
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.u
  %.6.lcssa = phi i32 [ %.5617, %bb.u ], [ %i.rq, %.loopexit.loopexit ] ; 2 uses
  %indvars.iv.next706 = add nuw nsw i64 %indvars.iv705, 1
  %exitcond718.not = icmp eq i64 %indvars.iv.next715, %wide.trip.count717.a
  br i1 %exitcond718.not, label %._crit_edge619, label %bb.u, !llvm.loop !53

bb.u:                                             ; preds = %.lr.ph618.a, %.loopexit
  %indvars.iv714 = phi i64 [ 0, %.lr.ph618.a ], [ %indvars.iv.next715, %.loopexit ] ; 3 uses
  %indvars.iv705 = phi i64 [ 1, %.lr.ph618.a ], [ %indvars.iv.next706, %.loopexit ] ; 2 uses
  %.5617 = phi i32 [ %.3.lcssa, %.lr.ph618.a ], [ %.6.lcssa, %.loopexit ] ; 2 uses
  %indvars.iv.next715 = add nuw nsw i64 %indvars.iv714, 1 ; 3 uses
  %i.rr = icmp samesign ult i64 %indvars.iv.next715, %14
  br i1 %i.rr, label %.lr.ph614, label %.loopexit

.lr.ph614:                                        ; preds = %bb.u
  %i.rs = getelementptr inbounds nuw [16 x i8], ptr %i.pe, i64 %indvars.iv714
  %i.rt = getelementptr inbounds nuw i8, ptr %i.rs, i64 8 ; 5 uses
  %i.ru = shl i64 %indvars.iv714, 8
  %i.rv = and i64 %i.ru, 1048320                  ; 5 uses
  %i.rw = sext i32 %.5617 to i64
  %invariant.op876 = or disjoint i64 %invariant.op874, %i.rv
  %invariant.op879 = or disjoint i64 %invariant.op877, %i.rv
  %invariant.op882 = or disjoint i64 %invariant.op880, %i.rv
  %invariant.op885 = or disjoint i64 %invariant.op883, %i.rv
  %invariant.op888 = or disjoint i64 %invariant.op886, %i.rv
  br label %bb.v

bb.v:                                             ; preds = %.lr.ph614, %bb.v
  %indvars.iv707 = phi i64 [ %indvars.iv705, %.lr.ph614 ], [ %indvars.iv.next708, %bb.v ] ; 3 uses
  %indvars.iv703 = phi i64 [ %i.rw, %.lr.ph614 ], [ %indvars.iv.next704, %bb.v ] ; 2 uses
  %i.rx = load i64, ptr %i.rt, align 8, !tbaa !15
  %i.ry = getelementptr inbounds nuw [16 x i8], ptr %i.pe, i64 %indvars.iv707
  %i.rz = getelementptr inbounds nuw i8, ptr %i.ry, i64 8 ; 5 uses
  %i.sa = load i64, ptr %i.rz, align 8, !tbaa !15
  %i.sb = and i64 %i.sa, %i.rx
  %i.sc = getelementptr [16 x i8], ptr %i.ot, i64 %indvars.iv703 ; 11 uses
  %i.sd = getelementptr inbounds nuw i8, ptr %i.sc, i64 8
  store i64 %i.sb, ptr %i.sd, align 8, !tbaa !15
  %i.se = load i64, ptr %i.sc, align 8
  %i.sf = and i64 %i.se, -4503599627370496
  %i.sg = shl i64 %indvars.iv707, 40
  %i.sh = and i64 %i.sg, 4502500115742720         ; 5 uses
  %.reass803.reass = or disjoint i64 %i.sf, %invariant.op876
  %i.si = or disjoint i64 %.reass803.reass, %i.sh
  store i64 %i.si, ptr %i.sc, align 8
  %i.sj = load i64, ptr %i.rt, align 8, !tbaa !15
  %i.sk = xor i64 %i.sj, -1
  %i.sl = load i64, ptr %i.rz, align 8, !tbaa !15
  %i.sm = and i64 %i.sl, %i.sk
  %i.sn = getelementptr i8, ptr %i.sc, i64 16     ; 2 uses
  %i.so = getelementptr i8, ptr %i.sc, i64 24
  store i64 %i.sm, ptr %i.so, align 8, !tbaa !15
  %i.sp = load i64, ptr %i.sn, align 8
  %i.sq = and i64 %i.sp, -4503599627370496
  %.reass806.reass = or disjoint i64 %i.sq, %invariant.op879
  %i.sr = or disjoint i64 %.reass806.reass, %i.sh
  %i.ss = or disjoint i64 %i.sr, 1048576
  store i64 %i.ss, ptr %i.sn, align 8
  %i.st = load i64, ptr %i.rt, align 8, !tbaa !15
  %i.su = load i64, ptr %i.rz, align 8, !tbaa !15
  %i.sv = xor i64 %i.su, -1
  %i.sw = and i64 %i.st, %i.sv
  %i.sx = getelementptr i8, ptr %i.sc, i64 32     ; 2 uses
  %i.sy = getelementptr i8, ptr %i.sc, i64 40
  store i64 %i.sw, ptr %i.sy, align 8, !tbaa !15
  %i.sz = load i64, ptr %i.sx, align 8
  %i.ta = and i64 %i.sz, -4503599627370496
  %.reass809.reass = or disjoint i64 %i.ta, %invariant.op882
  %i.tb = or disjoint i64 %.reass809.reass, %i.sh
  %i.tc = or disjoint i64 %i.tb, 2097152
  store i64 %i.tc, ptr %i.sx, align 8
  %i.td = load i64, ptr %i.rt, align 8, !tbaa !15
  %i.te = load i64, ptr %i.rz, align 8, !tbaa !15
  %.demorgan = or i64 %i.te, %i.td
  %i.tf = xor i64 %.demorgan, -1
  %i.tg = getelementptr i8, ptr %i.sc, i64 48     ; 2 uses
  %i.th = getelementptr i8, ptr %i.sc, i64 56
  store i64 %i.tf, ptr %i.th, align 8, !tbaa !15
  %i.ti = load i64, ptr %i.tg, align 8
  %i.tj = and i64 %i.ti, -4503599627370496
  %.reass812.reass = or disjoint i64 %i.tj, %invariant.op885
  %i.tk = or disjoint i64 %.reass812.reass, %i.sh
  %i.tl = or disjoint i64 %i.tk, 3145728
  store i64 %i.tl, ptr %i.tg, align 8
  %i.tm = load i64, ptr %i.rt, align 8, !tbaa !15
  %i.tn = load i64, ptr %i.rz, align 8, !tbaa !15
  %i.to = xor i64 %i.tn, %i.tm
  %i.tp = getelementptr i8, ptr %i.sc, i64 64     ; 2 uses
  %i.tq = getelementptr i8, ptr %i.sc, i64 72
  store i64 %i.to, ptr %i.tq, align 8, !tbaa !15
  %i.tr = load i64, ptr %i.tp, align 8
  %i.ts = and i64 %i.tr, -4503599627370496
  %indvars.iv.next704 = add nsw i64 %indvars.iv703, 5 ; 2 uses
  %.reass815.reass = or disjoint i64 %i.ts, %invariant.op888
  %i.tt = or disjoint i64 %.reass815.reass, %i.sh
  %i.tu = or disjoint i64 %i.tt, 4194304
  store i64 %i.tu, ptr %i.tp, align 8
  %indvars.iv.next708 = add nuw nsw i64 %indvars.iv707, 1 ; 2 uses
  %exitcond713.not = icmp eq i64 %indvars.iv.next708, %wide.trip.count717.a
  br i1 %exitcond713.not, label %.loopexit.loopexit, label %bb.v, !llvm.loop !54

._crit_edge619:                                   ; preds = %.loopexit, %.preheader558
  %.5.lcssa = phi i32 [ %.3.lcssa, %.preheader558 ], [ %.6.lcssa, %.loopexit ] ; 7 uses
  store i32 0, ptr %i.bi, align 4, !tbaa !24
  %i.tv = icmp sgt i32 %.5.lcssa, 0               ; 2 uses
  br i1 %i.tv, label %.lr.ph623.preheader, label %._crit_edge619.._crit_edge624_crit_edge

._crit_edge619.._crit_edge624_crit_edge:          ; preds = %._crit_edge619
  %.val485.pre = load ptr, ptr %i.bk, align 8, !tbaa !23
  br label %._crit_edge624

.lr.ph623.preheader:                              ; preds = %._crit_edge619
  %wide.trip.count722 = zext nneg i32 %.5.lcssa to i64
  br label %.lr.ph623

bb.w:                                             ; preds = %Vec_IntPush.exit517
  %indvars.iv.next720 = add nuw nsw i64 %indvars.iv719, 1 ; 2 uses
  %exitcond723.not = icmp eq i64 %indvars.iv.next720, %wide.trip.count722
  br i1 %exitcond723.not, label %._crit_edge624, label %.lr.ph623, !llvm.loop !55

.lr.ph623:                                        ; preds = %.lr.ph623.preheader, %bb.w
  %indvars.iv719 = phi i64 [ 0, %.lr.ph623.preheader ], [ %indvars.iv.next720, %bb.w ] ; 2 uses
  %i.tw = getelementptr inbounds nuw [16 x i8], ptr %i.ot, i64 %indvars.iv719 ; 8 uses
  %i.tx = getelementptr inbounds nuw i8, ptr %i.tw, i64 8 ; 5 uses
  %i.ty = load i64, ptr %i.tx, align 8, !tbaa !15 ; 3 uses
  %i.tz = xor i64 %i.ty, -1
  %i.ua = insertelement <2 x i64> poison, i64 %i.tz, i64 0
  %i.ub = shufflevector <2 x i64> %i.ua, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.uc = and <2 x i64> %i.ub, %i.o
  %.reass890 = and <2 x i64> %i.ub, %invariant.op889.a
  %i.ud = lshr <2 x i64> %i.uc, splat (i64 1)
  %i.ue = and <2 x i64> %i.ud, splat (i64 6148914691236517205)
  %i.uf = add nuw <2 x i64> %i.ue, %.reass890     ; 2 uses
  %i.ug = and <2 x i64> %i.uf, splat (i64 3689348814741910323)
  %i.uh = lshr <2 x i64> %i.uf, splat (i64 2)
  %i.ui = and <2 x i64> %i.uh, splat (i64 3689348814741910323)
  %i.uj = insertelement <2 x i64> poison, i64 %i.ty, i64 0
  %i.uk = shufflevector <2 x i64> %i.uj, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ul = and <2 x i64> %i.uk, %i.p
  %.reass892 = and <2 x i64> %i.uk, %invariant.op891.a
  %i.um = lshr <2 x i64> %i.ul, splat (i64 1)
  %i.un = and <2 x i64> %i.um, splat (i64 6148914691236517205)
  %i.uo = add nuw <2 x i64> %i.un, %.reass892     ; 2 uses
  %i.up = and <2 x i64> %i.uo, splat (i64 3689348814741910323)
  %i.uq = lshr <2 x i64> %i.uo, splat (i64 2)
  %i.ur = and <2 x i64> %i.uq, splat (i64 3689348814741910323)
  %i.us = add nuw nsw <2 x i64> %i.ui, %i.ug      ; 2 uses
  %i.ut = and <2 x i64> %i.us, splat (i64 506381209866536711)
  %i.uu = lshr <2 x i64> %i.us, splat (i64 4)
  %i.uv = and <2 x i64> %i.uu, splat (i64 506381209866536711)
  %i.uw = add nuw nsw <2 x i64> %i.uv, %i.ut      ; 2 uses
  %i.ux = and <2 x i64> %i.uw, splat (i64 4222189076152335)
  %i.uy = lshr <2 x i64> %i.uw, splat (i64 8)
  %i.uz = and <2 x i64> %i.uy, splat (i64 4222189076152335)
  %i.va = add nuw nsw <2 x i64> %i.uz, %i.ux      ; 2 uses
  %i.vb = and <2 x i64> %i.va, splat (i64 133143986207)
  %i.vc = lshr <2 x i64> %i.va, splat (i64 16)
  %i.vd = and <2 x i64> %i.vc, splat (i64 133143986207)
  %i.ve = add nuw nsw <2 x i64> %i.vd, %i.vb      ; 2 uses
  %i.vf = lshr <2 x i64> %i.ve, splat (i64 32)
  %i.vg = add nuw nsw <2 x i64> %i.vf, %i.ve
  %i.vh = trunc <2 x i64> %i.vg to <2 x i16>
  %i.vi = add nuw nsw <2 x i64> %i.ur, %i.up      ; 2 uses
  %i.vj = and <2 x i64> %i.vi, splat (i64 506381209866536711)
  %i.vk = lshr <2 x i64> %i.vi, splat (i64 4)
  %i.vl = and <2 x i64> %i.vk, splat (i64 506381209866536711)
  %i.vm = add nuw nsw <2 x i64> %i.vl, %i.vj      ; 2 uses
  %i.vn = and <2 x i64> %i.vm, splat (i64 4222189076152335)
  %i.vo = lshr <2 x i64> %i.vm, splat (i64 8)
  %i.vp = and <2 x i64> %i.vo, splat (i64 4222189076152335)
  %i.vq = add nuw nsw <2 x i64> %i.vp, %i.vn      ; 2 uses
  %i.vr = and <2 x i64> %i.vq, splat (i64 133143986207)
  %i.vs = lshr <2 x i64> %i.vq, splat (i64 16)
  %i.vt = and <2 x i64> %i.vs, splat (i64 133143986207)
  %i.vu = add nuw nsw <2 x i64> %i.vt, %i.vr      ; 2 uses
  %i.vv = lshr <2 x i64> %i.vu, splat (i64 32)
  %i.vw = add nuw nsw <2 x i64> %i.vv, %i.vu
  %i.vx = trunc <2 x i64> %i.vw to <2 x i16>
  %i.vy = mul nuw <2 x i16> %i.vh, %i.vx          ; 2 uses
  %i.vz = extractelement <2 x i16> %i.vy, i64 0
  %i.wa = zext i16 %i.vz to i32
  %i.wb = extractelement <2 x i16> %i.vy, i64 1
  %i.wc = zext i16 %i.wb to i32
  %i.wd = add nuw nsw i32 %i.wa, %i.wc
  %i.we = load i64, ptr %i.tw, align 8
  %i.wf = and i32 %i.wd, 4095                     ; 3 uses
  %i.wg = zext nneg i32 %i.wf to i64
  %i.wh = shl nuw i64 %i.wg, 52
  %i.wi = and i64 %i.we, 4503599627370495
  %i.wj = or disjoint i64 %i.wh, %i.wi
  store i64 %i.wj, ptr %i.tw, align 8
  %i.wk = icmp samesign ugt i32 %i.wf, 300
  br i1 %i.wk, label %bb.x, label %bb.y

bb.x:                                             ; preds = %.lr.ph623
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #21
  %i.wl = xor i64 %i.ty, %0
  store i64 %i.wl, ptr %i.c, align 8, !tbaa !16
  %i.wm = load ptr, ptr @stdout, align 8, !tbaa !18
  call void @Extra_PrintHex(ptr noundef %i.wm, ptr noundef nonnull %i.tx, i32 noundef 6) #21
  %i.wn = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6) ; 0 uses
  %i.wo = load ptr, ptr @stdout, align 8, !tbaa !18
  call void @Extra_PrintHex(ptr noundef %i.wo, ptr noundef nonnull %i.c, i32 noundef 6) #21
  %i.wp = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6) ; 0 uses
  call void @Bdc_SpfdPrint_rec(ptr noundef nonnull %i.tw, i32 poison, ptr noundef nonnull %i.az)
  %i.wq = load i64, ptr %i.tw, align 8
  %i.wr = lshr i64 %i.wq, 52
  %i.ws = trunc nuw nsw i64 %i.wr to i32
  %i.wt = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef %i.ws) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  %.pre754 = load i64, ptr %i.tw, align 8
  %i.wu = lshr i64 %.pre754, 52
  %i.wv = trunc nuw nsw i64 %i.wu to i32
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %.lr.ph623
  %i.ww = phi i32 [ %i.wv, %bb.x ], [ %i.wf, %.lr.ph623 ]
  %i.wx = load i32, ptr %i.bi, align 4, !tbaa !24 ; 7 uses
  %i.wy = load i32, ptr %i.bh, align 8, !tbaa !22
  %i.wz = icmp eq i32 %i.wx, %i.wy
  br i1 %i.wz, label %bb.z, label %.Vec_IntPush.exit517_crit_edge

.Vec_IntPush.exit517_crit_edge:                   ; preds = %bb.y
  %.pre755 = load ptr, ptr %i.bk, align 8, !tbaa !23
  br label %Vec_IntPush.exit517

bb.z:                                             ; preds = %bb.y
  %i.xa = icmp slt i32 %i.wx, 16
  br i1 %i.xa, label %bb.aa, label %bb.ad

bb.aa:                                            ; preds = %bb.z
  %i.xb = load ptr, ptr %i.bk, align 8, !tbaa !23 ; 2 uses
  %.not9.i.i515 = icmp eq ptr %i.xb, null
  br i1 %.not9.i.i515, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.xc = call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.xb, i64 noundef 64) #24
  br label %Vec_IntGrow.exit11.sink.split.i513

bb.ac:                                            ; preds = %bb.aa
  %i.xd = call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #22
  br label %Vec_IntGrow.exit11.sink.split.i513

bb.ad:                                            ; preds = %bb.z
  %i.xe = icmp samesign ult i32 %i.wx, 1073741823
  %i.xf = shl nuw nsw i32 %i.wx, 1
  %spec.select.i510 = select i1 %i.xe, i32 %i.xf, i32 2147483647 ; 4 uses
  %.not.i9.i511 = icmp samesign ult i32 %i.wx, %spec.select.i510
  %.pre756 = load ptr, ptr %i.bk, align 8, !tbaa !23 ; 3 uses
  br i1 %.not.i9.i511, label %bb.ae, label %Vec_IntPush.exit517

bb.ae:                                            ; preds = %bb.ad
  %.not9.i10.i512 = icmp eq ptr %.pre756, null
  %i.xg = zext nneg i32 %spec.select.i510 to i64
  %i.xh = shl nuw nsw i64 %i.xg, 2                ; 2 uses
  br i1 %.not9.i10.i512, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.xi = call ptr @realloc(ptr noundef nonnull %.pre756, i64 noundef %i.xh) #24
  br label %Vec_IntGrow.exit11.sink.split.i513

bb.ag:                                            ; preds = %bb.ae
  %i.xj = call noalias ptr @malloc(i64 noundef %i.xh) #22
  br label %Vec_IntGrow.exit11.sink.split.i513

Vec_IntGrow.exit11.sink.split.i513:               ; preds = %bb.af, %bb.ag, %bb.ab, %bb.ac
  %storemerge557 = phi ptr [ %i.xd, %bb.ac ], [ %i.xc, %bb.ab ], [ %i.xi, %bb.af ], [ %i.xj, %bb.ag ] ; 2 uses
  %spec.select.sink.i514 = phi i32 [ 16, %bb.ac ], [ 16, %bb.ab ], [ %spec.select.i510, %bb.af ], [ %spec.select.i510, %bb.ag ]
  store ptr %storemerge557, ptr %i.bk, align 8, !tbaa !23
  store i32 %spec.select.sink.i514, ptr %i.bh, align 8, !tbaa !22
  br label %Vec_IntPush.exit517

Vec_IntPush.exit517:                              ; preds = %.Vec_IntPush.exit517_crit_edge, %bb.ad, %Vec_IntGrow.exit11.sink.split.i513
  %i.xk = phi ptr [ %.pre755, %.Vec_IntPush.exit517_crit_edge ], [ %.pre756, %bb.ad ], [ %storemerge557, %Vec_IntGrow.exit11.sink.split.i513 ] ; 2 uses
  %i.xl = add nsw i32 %i.wx, 1
  store i32 %i.xl, ptr %i.bi, align 4, !tbaa !24
  %i.xm = sext i32 %i.wx to i64
  %i.xn = getelementptr inbounds [4 x i8], ptr %i.xk, i64 %i.xm
  store i32 %i.ww, ptr %i.xn, align 4, !tbaa !27
  %i.xo = load i64, ptr %i.tx, align 8, !tbaa !15 ; 2 uses
  %i.xp = icmp eq i64 %0, %i.xo
  %i.xq = xor i64 %i.xo, %0
  %i.xr = icmp eq i64 %i.xq, -1
  %or.cond479 = or i1 %i.xp, %i.xr
  br i1 %or.cond479, label %.thread546, label %bb.w

.thread546:                                       ; preds = %Vec_IntPush.exit517
  %i.xs = trunc nuw nsw i64 %indvars.iv739 to i32
  %i.xt = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.15, i32 noundef %i.xs) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  %i.xu = load i64, ptr %i.tx, align 8, !tbaa !15
  %i.xv = xor i64 %i.xu, %0
  store i64 %i.xv, ptr %i.b, align 8, !tbaa !16
  %i.xw = load ptr, ptr @stdout, align 8, !tbaa !18
  call void @Extra_PrintHex(ptr noundef %i.xw, ptr noundef nonnull %i.tx, i32 noundef 6) #21
  %i.xx = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6) ; 0 uses
  %i.xy = load ptr, ptr @stdout, align 8, !tbaa !18
  call void @Extra_PrintHex(ptr noundef %i.xy, ptr noundef nonnull %i.b, i32 noundef 6) #21
  %i.xz = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6) ; 0 uses
  call void @Bdc_SpfdPrint_rec(ptr noundef nonnull %i.tw, i32 poison, ptr noundef nonnull %i.az)
  %i.ya = load i64, ptr %i.tw, align 8
  %i.yb = lshr i64 %i.ya, 52
  %i.yc = trunc nuw nsw i64 %i.yb to i32
  %i.yd = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef %i.yc) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  br label %bb.az

._crit_edge624:                                   ; preds = %bb.w, %._crit_edge619.._crit_edge624_crit_edge
  %.val485 = phi ptr [ %.val485.pre, %._crit_edge619.._crit_edge624_crit_edge ], [ %i.xk, %bb.w ] ; 2 uses
  %i.ye = call ptr @Abc_MergeSortCost(ptr noundef %.val485, i32 noundef %.5.lcssa) #21 ; 3 uses
  %i.yf = add nsw i32 %.5.lcssa, -1               ; 2 uses
  %i.yg = sext i32 %i.yf to i64
  %i.yh = getelementptr inbounds [4 x i8], ptr %i.ye, i64 %i.yg
  %i.yi = load i32, ptr %i.yh, align 4, !tbaa !27
  %i.yj = sext i32 %i.yi to i64
  %i.yk = getelementptr inbounds [4 x i8], ptr %.val485, i64 %i.yj
  %i.yl = load i32, ptr %i.yk, align 4, !tbaa !27
  %i.ym = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, i32 noundef %i.yl) ; 0 uses
  %i.yn = call noalias ptr @calloc(i64 noundef %i.ov, i64 noundef 16) #23 ; 23 uses
  br i1 %i.tv, label %.lr.ph628.preheader, label %.loopexit779

.lr.ph628.preheader:                              ; preds = %._crit_edge624
  %i.yo = zext nneg i32 %i.yf to i64
  %wide.trip.count731 = zext nneg i32 %.5.lcssa to i64
  br label %.lr.ph628

bb.ah:                                            ; preds = %.lr.ph628
  %indvars.iv.next727 = add nsw i64 %indvars.iv726, -1
  %exitcond732.not = icmp eq i64 %indvars.iv.next725, %wide.trip.count731
  br i1 %exitcond732.not, label %.loopexit779, label %.lr.ph628, !llvm.loop !56

.lr.ph628:                                        ; preds = %.lr.ph628.preheader, %bb.ah
  %indvars.iv726 = phi i64 [ %i.yo, %.lr.ph628.preheader ], [ %indvars.iv.next727, %bb.ah ] ; 2 uses
  %indvars.iv724 = phi i64 [ 0, %.lr.ph628.preheader ], [ %indvars.iv.next725, %bb.ah ] ; 2 uses
  %indvars.iv.next725 = add nuw nsw i64 %indvars.iv724, 1 ; 3 uses
  %i.yp = getelementptr inbounds nuw [16 x i8], ptr %i.yn, i64 %indvars.iv724
  %i.yq = getelementptr inbounds nuw [4 x i8], ptr %i.ye, i64 %indvars.iv726
  %i.yr = load i32, ptr %i.yq, align 4, !tbaa !27
  %i.ys = sext i32 %i.yr to i64
  %i.yt = getelementptr inbounds [16 x i8], ptr %i.ot, i64 %i.ys
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.yp, ptr noundef nonnull align 8 dereferenceable(16) %i.yt, i64 16, i1 false), !tbaa.struct !63
  %i.yu = icmp eq i64 %indvars.iv.next725, %i.ox
  br i1 %i.yu, label %.loopexit779, label %bb.ah

.loopexit779:                                     ; preds = %bb.ah, %.lr.ph628, %._crit_edge624
  %.4446541 = phi i32 [ 0, %._crit_edge624 ], [ %2, %.lr.ph628 ], [ %.5.lcssa, %bb.ah ] ; 2 uses
  call void @free(ptr noundef nonnull %i.ye) #21
  %i.yv = load i32, ptr %i.ba, align 4, !tbaa !61 ; 7 uses
  %i.yw = load i32, ptr %i.az, align 8, !tbaa !59
  %i.yx = icmp eq i32 %i.yv, %i.yw
  br i1 %i.yx, label %bb.ai, label %.Vec_PtrPush.exit525_crit_edge

.Vec_PtrPush.exit525_crit_edge:                   ; preds = %.loopexit779
  %.pre758 = load ptr, ptr %i.bc, align 8, !tbaa !11
  br label %Vec_PtrPush.exit525

bb.ai:                                            ; preds = %.loopexit779
  %i.yy = icmp slt i32 %i.yv, 16
  br i1 %i.yy, label %bb.aj, label %bb.am

bb.aj:                                            ; preds = %bb.ai
  %i.yz = load ptr, ptr %i.bc, align 8, !tbaa !11 ; 2 uses
  %.not9.i.i523 = icmp eq ptr %i.yz, null
  br i1 %.not9.i.i523, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.za = call dereferenceable_or_null(128) ptr @realloc(ptr noundef nonnull %i.yz, i64 noundef 128) #24
  br label %Vec_PtrGrow.exit12.sink.split.i521

bb.al:                                            ; preds = %bb.aj
  %i.zb = call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #22
  br label %Vec_PtrGrow.exit12.sink.split.i521

bb.am:                                            ; preds = %bb.ai
  %i.zc = icmp samesign ult i32 %i.yv, 1073741823
  %i.zd = shl nuw nsw i32 %i.yv, 1
  %spec.select.i518 = select i1 %i.zc, i32 %i.zd, i32 2147483647 ; 4 uses
  %.not.i10.i519 = icmp samesign ult i32 %i.yv, %spec.select.i518
  %.pre759 = load ptr, ptr %i.bc, align 8, !tbaa !11 ; 3 uses
  br i1 %.not.i10.i519, label %bb.an, label %Vec_PtrPush.exit525

bb.an:                                            ; preds = %bb.am
  %.not9.i11.i520 = icmp eq ptr %.pre759, null
  %i.ze = zext nneg i32 %spec.select.i518 to i64
  %i.zf = shl nuw nsw i64 %i.ze, 3                ; 2 uses
  br i1 %.not9.i11.i520, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.zg = call ptr @realloc(ptr noundef nonnull %.pre759, i64 noundef %i.zf) #24
  br label %Vec_PtrGrow.exit12.sink.split.i521

bb.ap:                                            ; preds = %bb.an
  %i.zh = call noalias ptr @malloc(i64 noundef %i.zf) #22
  br label %Vec_PtrGrow.exit12.sink.split.i521

Vec_PtrGrow.exit12.sink.split.i521:               ; preds = %bb.ao, %bb.ap, %bb.ak, %bb.al
  %storemerge552 = phi ptr [ %i.zb, %bb.al ], [ %i.za, %bb.ak ], [ %i.zg, %bb.ao ], [ %i.zh, %bb.ap ] ; 2 uses
  %spec.select.sink.i522 = phi i32 [ 16, %bb.al ], [ 16, %bb.ak ], [ %spec.select.i518, %bb.ao ], [ %spec.select.i518, %bb.ap ]
  store ptr %storemerge552, ptr %i.bc, align 8, !tbaa !11
  store i32 %spec.select.sink.i522, ptr %i.az, align 8, !tbaa !59
  %.pre760 = load i32, ptr %i.ba, align 4, !tbaa !61
  br label %Vec_PtrPush.exit525

Vec_PtrPush.exit525:                              ; preds = %.Vec_PtrPush.exit525_crit_edge, %bb.am, %Vec_PtrGrow.exit12.sink.split.i521
  %i.zi = phi i32 [ %i.yv, %.Vec_PtrPush.exit525_crit_edge ], [ %i.yv, %bb.am ], [ %.pre760, %Vec_PtrGrow.exit12.sink.split.i521 ] ; 2 uses
  %i.zj = phi ptr [ %.pre758, %.Vec_PtrPush.exit525_crit_edge ], [ %.pre759, %bb.am ], [ %storemerge552, %Vec_PtrGrow.exit12.sink.split.i521 ]
  %i.zk = add nsw i32 %i.zi, 1
  store i32 %i.zk, ptr %i.ba, align 4, !tbaa !61
  %i.zl = sext i32 %i.zi to i64
  %i.zm = getelementptr inbounds [8 x i8], ptr %i.zj, i64 %i.zl
  store ptr %i.yn, ptr %i.zm, align 8, !tbaa !12
  %i.zn = load i32, ptr %i.be, align 4, !tbaa !24 ; 7 uses
  %i.zo = load i32, ptr %i.bd, align 8, !tbaa !22
  %i.zp = icmp eq i32 %i.zn, %i.zo
  br i1 %i.zp, label %bb.aq, label %Vec_IntPush.exit533

bb.aq:                                            ; preds = %Vec_PtrPush.exit525
  %i.zq = icmp slt i32 %i.zn, 16
  br i1 %i.zq, label %bb.ar, label %bb.au

bb.ar:                                            ; preds = %bb.aq
  %.not9.i.i531 = icmp eq ptr %.val484, null
  br i1 %.not9.i.i531, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.zr = call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %.val484, i64 noundef 64) #24
  br label %Vec_IntGrow.exit11.sink.split.i529

bb.at:                                            ; preds = %bb.ar
  %i.zs = call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #22
  br label %Vec_IntGrow.exit11.sink.split.i529

bb.au:                                            ; preds = %bb.aq
  %i.zt = icmp samesign ult i32 %i.zn, 1073741823
  %i.zu = shl nuw nsw i32 %i.zn, 1
  %spec.select.i526 = select i1 %i.zt, i32 %i.zu, i32 2147483647 ; 4 uses
  %.not.i9.i527 = icmp samesign ult i32 %i.zn, %spec.select.i526
  br i1 %.not.i9.i527, label %bb.av, label %Vec_IntPush.exit533

bb.av:                                            ; preds = %bb.au
  %.not9.i10.i528 = icmp eq ptr %.val484, null
  %i.zv = zext nneg i32 %spec.select.i526 to i64
  %i.zw = shl nuw nsw i64 %i.zv, 2                ; 2 uses
  br i1 %.not9.i10.i528, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.zx = call ptr @realloc(ptr noundef nonnull %.val484, i64 noundef %i.zw) #24
  br label %Vec_IntGrow.exit11.sink.split.i529

bb.ax:                                            ; preds = %bb.av
  %i.zy = call noalias ptr @malloc(i64 noundef %i.zw) #22
  br label %Vec_IntGrow.exit11.sink.split.i529

Vec_IntGrow.exit11.sink.split.i529:               ; preds = %bb.aw, %bb.ax, %bb.as, %bb.at
  %storemerge553 = phi ptr [ %i.zs, %bb.at ], [ %i.zr, %bb.as ], [ %i.zx, %bb.aw ], [ %i.zy, %bb.ax ]
  %spec.select.sink.i530 = phi i32 [ 16, %bb.at ], [ 16, %bb.as ], [ %spec.select.i526, %bb.aw ], [ %spec.select.i526, %bb.ax ]
  store ptr %storemerge553, ptr %i.bg, align 8, !tbaa !23
  store i32 %spec.select.sink.i530, ptr %i.bd, align 8, !tbaa !22
  br label %Vec_IntPush.exit533

Vec_IntPush.exit533:                              ; preds = %Vec_PtrPush.exit525, %bb.au, %Vec_IntGrow.exit11.sink.split.i529
  %i.zz = load ptr, ptr %i.bg, align 8, !tbaa !23
  %i.aaa = add nsw i32 %i.zn, 1
  store i32 %i.aaa, ptr %i.be, align 4, !tbaa !24
  %i.aab = sext i32 %i.zn to i64
  %i.aac = getelementptr inbounds [4 x i8], ptr %i.zz, i64 %i.aab
  store i32 %.4446541, ptr %i.aac, align 4, !tbaa !27
  %i.aad = trunc nuw nsw i64 %indvars.iv739 to i32
  %i.aae = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17, i32 noundef %.4446541, i32 noundef %.5.lcssa, i32 noundef %i.aad) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %i.aaf = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %4) #21
  %i.aag = icmp slt i32 %i.aaf, 0
  br i1 %i.aag, label %Abc_Clock.exit535, label %bb.ay

bb.ay:                                            ; preds = %Vec_IntPush.exit533
  %i.aah = load i64, ptr %4, align 8, !tbaa !29
  %i.aai = mul nsw i64 %i.aah, 1000000
  %i.aaj = load i64, ptr %i.ow, align 8, !tbaa !30
  %i.aak = sdiv i64 %i.aaj, 1000
  %i.aal = add nsw i64 %i.aak, %i.aai
  br label %Abc_Clock.exit535

Abc_Clock.exit535:                                ; preds = %Vec_IntPush.exit533, %bb.ay
  %.0.i534 = phi i64 [ %i.aal, %bb.ay ], [ -1, %Vec_IntPush.exit533 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  %i.aam = add i64 %.0.i534, %.0.i508.neg
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.14)
  %i.aan = sitofp i64 %i.aam to double
  %i.aao = fdiv double %i.aan, 1.000000e+06
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.39, double noundef %i.aao)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.aap = getelementptr inbounds nuw i8, ptr %i.yn, i64 8 ; 2 uses
  %i.aaq = load i64, ptr %i.aap, align 8, !tbaa !15
  %i.aar = xor i64 %i.aaq, %0
  store i64 %i.aar, ptr %i.a, align 8, !tbaa !16
  %i.aas = load ptr, ptr @stdout, align 8, !tbaa !18
  call void @Extra_PrintHex(ptr noundef %i.aas, ptr noundef nonnull %i.aap, i32 noundef 6) #21
  %i.aat = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6) ; 0 uses
  %i.aau = load ptr, ptr @stdout, align 8, !tbaa !18
  call void @Extra_PrintHex(ptr noundef %i.aau, ptr noundef nonnull %i.a, i32 noundef 6) #21
  %i.aav = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6) ; 0 uses
  call void @Bdc_SpfdPrint_rec(ptr noundef %i.yn, i32 poison, ptr noundef nonnull %i.az)
  %i.aaw = load i64, ptr %i.yn, align 8
  %i.aax = lshr i64 %i.aaw, 52
  %i.aay = trunc nuw nsw i64 %i.aax to i32
  %i.aaz = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef %i.aay) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %i.aba = getelementptr inbounds nuw i8, ptr %i.yn, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.abb = getelementptr inbounds nuw i8, ptr %i.yn, i64 24 ; 2 uses
  %i.abc = load i64, ptr %i.abb, align 8, !tbaa !15
  %i.abd = xor i64 %i.abc, %0
  store i64 %i.abd, ptr %i.a, align 8, !tbaa !16
  %i.abe = load ptr, ptr @stdout, align 8, !tbaa !18
  call void @Extra_PrintHex(ptr noundef %i.abe, ptr noundef nonnull %i.abb, i32 noundef 6) #21
  %i.abf = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6) ; 0 uses
  %i.abg = load ptr, ptr @stdout, align 8, !tbaa !18
  call void @Extra_PrintHex(ptr noundef %i.abg, ptr noundef nonnull %i.a, i32 noundef 6) #21
  %i.abh = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6) ; 0 uses
  call void @Bdc_SpfdPrint_rec(ptr noundef nonnull %i.aba, i32 poison, ptr noundef nonnull %i.az)
  %i.abi = load i64, ptr %i.aba, align 8
  %i.abj = lshr i64 %i.abi, 52
  %i.abk = trunc nuw nsw i64 %i.abj to i32
  %i.abl = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef %i.abk) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %i.abm = getelementptr inbounds nuw i8, ptr %i.yn, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.abn = getelementptr inbounds nuw i8, ptr %i.yn, i64 40 ; 2 uses
  %i.abo = load i64, ptr %i.abn, align 8, !tbaa !15
  %i.abp = xor i64 %i.abo, %0
  store i64 %i.abp, ptr %i.a, align 8, !tbaa !16
  %i.abq = load ptr, ptr @stdout, align 8, !tbaa !18
  call void @Extra_PrintHex(ptr noundef %i.abq, ptr noundef nonnull %i.abn, i32 noundef 6) #21
  %i.abr = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6) ; 0 uses
  %i.abs = load ptr, ptr @stdout, align 8, !tbaa !18
  call void @Extra_PrintHex(ptr noundef %i.abs, ptr noundef nonnull %i.a, i32 noundef 6) #21
  %i.abt = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6) ; 0 uses
  call void @Bdc_SpfdPrint_rec(ptr noundef nonnull %i.abm, i32 poison, ptr noundef nonnull %i.az)
  %i.abu = load i64, ptr %i.abm, align 8
  %i.abv = lshr i64 %i.abu, 52
  %i.abw = trunc nuw nsw i64 %i.abv to i32
  %i.abx = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef %i.abw) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %i.aby = getelementptr inbounds nuw i8, ptr %i.yn, i64 48 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.abz = getelementptr inbounds nuw i8, ptr %i.yn, i64 56 ; 2 uses
  %i.aca = load i64, ptr %i.abz, align 8, !tbaa !15
  %i.acb = xor i64 %i.aca, %0
  store i64 %i.acb, ptr %i.a, align 8, !tbaa !16
  %i.acc = load ptr, ptr @stdout, align 8, !tbaa !18
  call void @Extra_PrintHex(ptr noundef %i.acc, ptr noundef nonnull %i.abz, i32 noundef 6) #21
  %i.acd = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6) ; 0 uses
  %i.ace = load ptr, ptr @stdout, align 8, !tbaa !18
  call void @Extra_PrintHex(ptr noundef %i.ace, ptr noundef nonnull %i.a, i32 noundef 6) #21
  %i.acf = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6) ; 0 uses
  call void @Bdc_SpfdPrint_rec(ptr noundef nonnull %i.aby, i32 poison, ptr noundef nonnull %i.az)
  %i.acg = load i64, ptr %i.aby, align 8
  %i.ach = lshr i64 %i.acg, 52
  %i.aci = trunc nuw nsw i64 %i.ach to i32
  %i.acj = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef %i.aci) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %i.ack = getelementptr inbounds nuw i8, ptr %i.yn, i64 64 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.acl = getelementptr inbounds nuw i8, ptr %i.yn, i64 72 ; 2 uses
  %i.acm = load i64, ptr %i.acl, align 8, !tbaa !15
  %i.acn = xor i64 %i.acm, %0
  store i64 %i.acn, ptr %i.a, align 8, !tbaa !16
  %i.aco = load ptr, ptr @stdout, align 8, !tbaa !18
  call void @Extra_PrintHex(ptr noundef %i.aco, ptr noundef nonnull %i.acl, i32 noundef 6) #21
  %i.acp = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6) ; 0 uses
  %i.acq = load ptr, ptr @stdout, align 8, !tbaa !18
  call void @Extra_PrintHex(ptr noundef %i.acq, ptr noundef nonnull %i.a, i32 noundef 6) #21
  %i.acr = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6) ; 0 uses
  call void @Bdc_SpfdPrint_rec(ptr noundef nonnull %i.ack, i32 poison, ptr noundef nonnull %i.az)
  %i.acs = load i64, ptr %i.ack, align 8
  %i.act = lshr i64 %i.acs, 52
  %i.acu = trunc nuw nsw i64 %i.act to i32
  %i.acv = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef %i.acu) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %i.acw = getelementptr inbounds nuw i8, ptr %i.yn, i64 80 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.acx = getelementptr inbounds nuw i8, ptr %i.yn, i64 88 ; 2 uses
  %i.acy = load i64, ptr %i.acx, align 8, !tbaa !15
  %i.acz = xor i64 %i.acy, %0
  store i64 %i.acz, ptr %i.a, align 8, !tbaa !16
  %i.ada = load ptr, ptr @stdout, align 8, !tbaa !18
  call void @Extra_PrintHex(ptr noundef %i.ada, ptr noundef nonnull %i.acx, i32 noundef 6) #21
  %i.adb = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6) ; 0 uses
  %i.adc = load ptr, ptr @stdout, align 8, !tbaa !18
  call void @Extra_PrintHex(ptr noundef %i.adc, ptr noundef nonnull %i.a, i32 noundef 6) #21
  %i.add = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6) ; 0 uses
  call void @Bdc_SpfdPrint_rec(ptr noundef nonnull %i.acw, i32 poison, ptr noundef nonnull %i.az)
  %i.ade = load i64, ptr %i.acw, align 8
  %i.adf = lshr i64 %i.ade, 52
  %i.adg = trunc nuw nsw i64 %i.adf to i32
  %i.adh = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef %i.adg) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %i.adi = getelementptr inbounds nuw i8, ptr %i.yn, i64 96 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.adj = getelementptr inbounds nuw i8, ptr %i.yn, i64 104 ; 2 uses
  %i.adk = load i64, ptr %i.adj, align 8, !tbaa !15
  %i.adl = xor i64 %i.adk, %0
  store i64 %i.adl, ptr %i.a, align 8, !tbaa !16
  %i.adm = load ptr, ptr @stdout, align 8, !tbaa !18
  call void @Extra_PrintHex(ptr noundef %i.adm, ptr noundef nonnull %i.adj, i32 noundef 6) #21
  %i.adn = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6) ; 0 uses
  %i.ado = load ptr, ptr @stdout, align 8, !tbaa !18
  call void @Extra_PrintHex(ptr noundef %i.ado, ptr noundef nonnull %i.a, i32 noundef 6) #21
  %i.adp = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6) ; 0 uses
  call void @Bdc_SpfdPrint_rec(ptr noundef nonnull %i.adi, i32 poison, ptr noundef nonnull %i.az)
  %i.adq = load i64, ptr %i.adi, align 8
  %i.adr = lshr i64 %i.adq, 52
  %i.ads = trunc nuw nsw i64 %i.adr to i32
  %i.adt = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef %i.ads) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %i.adu = getelementptr inbounds nuw i8, ptr %i.yn, i64 112 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.adv = getelementptr inbounds nuw i8, ptr %i.yn, i64 120 ; 2 uses
  %i.adw = load i64, ptr %i.adv, align 8, !tbaa !15
  %i.adx = xor i64 %i.adw, %0
  store i64 %i.adx, ptr %i.a, align 8, !tbaa !16
  %i.ady = load ptr, ptr @stdout, align 8, !tbaa !18
  call void @Extra_PrintHex(ptr noundef %i.ady, ptr noundef nonnull %i.adv, i32 noundef 6) #21
  %i.adz = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6) ; 0 uses
  %i.aea = load ptr, ptr @stdout, align 8, !tbaa !18
  call void @Extra_PrintHex(ptr noundef %i.aea, ptr noundef nonnull %i.a, i32 noundef 6) #21
  %i.aeb = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6) ; 0 uses
  call void @Bdc_SpfdPrint_rec(ptr noundef nonnull %i.adu, i32 poison, ptr noundef nonnull %i.az)
  %i.aec = load i64, ptr %i.adu, align 8
  %i.aed = lshr i64 %i.aec, 52
  %i.aee = trunc nuw nsw i64 %i.aed to i32
  %i.aef = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef %i.aee) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %i.aeg = getelementptr inbounds nuw i8, ptr %i.yn, i64 128 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.aeh = getelementptr inbounds nuw i8, ptr %i.yn, i64 136 ; 2 uses
  %i.aei = load i64, ptr %i.aeh, align 8, !tbaa !15
  %i.aej = xor i64 %i.aei, %0
  store i64 %i.aej, ptr %i.a, align 8, !tbaa !16
  %i.aek = load ptr, ptr @stdout, align 8, !tbaa !18
  call void @Extra_PrintHex(ptr noundef %i.aek, ptr noundef nonnull %i.aeh, i32 noundef 6) #21
  %i.ael = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6) ; 0 uses
  %i.aem = load ptr, ptr @stdout, align 8, !tbaa !18
  call void @Extra_PrintHex(ptr noundef %i.aem, ptr noundef nonnull %i.a, i32 noundef 6) #21
  %i.aen = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6) ; 0 uses
  call void @Bdc_SpfdPrint_rec(ptr noundef nonnull %i.aeg, i32 poison, ptr noundef nonnull %i.az)
  %i.aeo = load i64, ptr %i.aeg, align 8
  %i.aep = lshr i64 %i.aeo, 52
  %i.aeq = trunc nuw nsw i64 %i.aep to i32
  %i.aer = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef %i.aeq) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %i.aes = getelementptr inbounds nuw i8, ptr %i.yn, i64 144 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.aet = getelementptr inbounds nuw i8, ptr %i.yn, i64 152 ; 2 uses
  %i.aeu = load i64, ptr %i.aet, align 8, !tbaa !15
  %i.aev = xor i64 %i.aeu, %0
  store i64 %i.aev, ptr %i.a, align 8, !tbaa !16
  %i.aew = load ptr, ptr @stdout, align 8, !tbaa !18
  call void @Extra_PrintHex(ptr noundef %i.aew, ptr noundef nonnull %i.aet, i32 noundef 6) #21
  %i.aex = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6) ; 0 uses
  %i.aey = load ptr, ptr @stdout, align 8, !tbaa !18
  call void @Extra_PrintHex(ptr noundef %i.aey, ptr noundef nonnull %i.a, i32 noundef 6) #21
  %i.aez = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6) ; 0 uses
  call void @Bdc_SpfdPrint_rec(ptr noundef nonnull %i.aes, i32 poison, ptr noundef nonnull %i.az)
  %i.afa = load i64, ptr %i.aes, align 8
  %i.afb = lshr i64 %i.afa, 52
  %i.afc = trunc nuw nsw i64 %i.afb to i32
  %i.afd = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef %i.afc) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
end_hunk_1
