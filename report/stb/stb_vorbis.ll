Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/stb/original/stb_vorbis?download=true
inline.NumInlined: 339
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 34
loop-unroll.NumUnrolled: 46
begin_hunk_0_@compute_window:bb.a

.lr.ph:                                           ; preds = %bb.a
  %i.c = uitofp nneg i32 %i.a to double
  %wide.trip.count = zext nneg i32 %i.a to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %i.d = trunc nuw nsw i64 %indvars.iv to i32
  %i.e = uitofp nneg i32 %i.d to double
  %i.f = fadd nnan double %i.e, 5.000000e-01
  %i.g = fdiv nnan double %i.f, %i.c
  %i.h = fmul nnan double %i.g, 5.000000e-01
  %i.i = fmul nnan double %i.h, f0x400921FB54442D18
  %i.j = tail call double @sin(double noundef %i.i) #30
  %i.k = fptrunc double %i.j to float             ; 2 uses
  %i.l = fmul float %i.k, %i.k
  %i.m = fpext float %i.l to double
  %i.n = fmul double %i.m, f0x3FF921FB54442D18
  %i.o = tail call double @sin(double noundef %i.n) #30
  %i.p = fptrunc double %i.o to float
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  store float %i.p, ptr %i.q, align 4, !tbaa !63
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !3

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: write) uwtable
define void @compute_bitreverse(i32 noundef %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp slt i32 %0, 0
  br i1 %i.a, label %ilog.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp samesign ult i32 %0, 16384
  br i1 %i.b, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.c = icmp samesign ult i32 %0, 16
  br i1 %i.c, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.d = zext nneg i32 %0 to i64
  %i.e = getelementptr inbounds nuw i8, ptr @__const.ilog.log2_4, i64 %i.d
  %i.f = load i8, ptr %i.e, align 1, !tbaa !49
  %i.g = sext i8 %i.f to i32
  br label %ilog.exit

bb.e:                                             ; preds = %bb.c
  %i.h = icmp samesign ult i32 %0, 512
  br i1 %i.h, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.i = lshr i32 %0, 5
  %i.j = zext nneg i32 %i.i to i64
  %i.k = getelementptr inbounds nuw i8, ptr @__const.ilog.log2_4, i64 %i.j
  %i.l = load i8, ptr %i.k, align 1, !tbaa !49
  %i.m = sext i8 %i.l to i32
  %i.n = add nsw i32 %i.m, 5
  br label %ilog.exit

bb.g:                                             ; preds = %bb.e
  %i.o = lshr i32 %0, 10
  %i.p = zext nneg i32 %i.o to i64
  %i.q = getelementptr inbounds nuw i8, ptr @__const.ilog.log2_4, i64 %i.p
  %i.r = load i8, ptr %i.q, align 1, !tbaa !49
  %i.s = sext i8 %i.r to i32
  %i.t = add nsw i32 %i.s, 10
  br label %ilog.exit

bb.h:                                             ; preds = %bb.b
  %i.u = icmp samesign ult i32 %0, 16777216
  br i1 %i.u, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.v = icmp samesign ult i32 %0, 524288
  br i1 %i.v, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.w = lshr i32 %0, 15
  %i.x = zext nneg i32 %i.w to i64
  %i.y = getelementptr inbounds nuw i8, ptr @__const.ilog.log2_4, i64 %i.x
  %i.z = load i8, ptr %i.y, align 1, !tbaa !49
  %i.aa = sext i8 %i.z to i32
  %i.ab = add nsw i32 %i.aa, 15
  br label %ilog.exit

bb.k:                                             ; preds = %bb.i
  %i.ac = lshr i32 %0, 20
  %i.ad = zext nneg i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw i8, ptr @__const.ilog.log2_4, i64 %i.ad
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !49
  %i.ag = sext i8 %i.af to i32
  %i.ah = add nsw i32 %i.ag, 20
  br label %ilog.exit

bb.l:                                             ; preds = %bb.h
  %i.ai = icmp samesign ult i32 %0, 536870912
  br i1 %i.ai, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.aj = lshr i32 %0, 25
  %i.ak = zext nneg i32 %i.aj to i64
  %i.al = getelementptr inbounds nuw i8, ptr @__const.ilog.log2_4, i64 %i.ak
  %i.am = load i8, ptr %i.al, align 1, !tbaa !49
  %i.an = sext i8 %i.am to i32
  %i.ao = add nsw i32 %i.an, 25
  br label %ilog.exit

bb.n:                                             ; preds = %bb.l
  %i.ap = lshr i32 %0, 30
  %i.aq = zext nneg i32 %i.ap to i64
  %i.ar = getelementptr inbounds nuw i8, ptr @__const.ilog.log2_4, i64 %i.aq
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !49
  %i.at = sext i8 %i.as to i32
  %i.au = add nsw i32 %i.at, 30
  br label %ilog.exit

ilog.exit:                                        ; preds = %bb.a, %bb.d, %bb.f, %bb.g, %bb.j, %bb.k, %bb.m, %bb.n
  %.0.i = phi i32 [ %i.au, %bb.n ], [ %i.g, %bb.d ], [ %i.n, %bb.f ], [ %i.t, %bb.g ], [ %i.ab, %bb.j ], [ %i.ah, %bb.k ], [ %i.ao, %bb.m ], [ 0, %bb.a ]
  %i.av = ashr i32 %0, 3                          ; 3 uses
  %i.aw = icmp sgt i32 %i.av, 0
  br i1 %i.aw, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %ilog.exit
  %i.ax = sub nsw i32 36, %.0.i                   ; 2 uses
  %wide.trip.count = zext nneg i32 %i.av to i64   ; 3 uses
  %min.iters.check = icmp ult i32 %i.av, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.ax, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <8 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.ay = tail call <8 x i32> @llvm.bitreverse.v8i32(<8 x i32> %vec.ind)
  %i.az = lshr <8 x i32> %i.ay, %broadcast.splat
  %i.ba = trunc <8 x i32> %i.az to <8 x i16>
  %i.bb = shl <8 x i16> %i.ba, splat (i16 2)
  %i.bc = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index
  store <8 x i16> %i.bb, ptr %i.bc, align 2, !tbaa !58
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <8 x i32> %vec.ind, splat (i32 8)
  %i.bd = icmp eq i64 %index.next, %n.vec
  br i1 %i.bd, label %middle.block, label %vector.body, !llvm.loop !169

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %i.be = trunc nuw nsw i64 %indvars.iv to i32
  %i.bf = tail call noundef i32 @llvm.bitreverse.i32(i32 %i.be)
  %i.bg = lshr i32 %i.bf, %i.ax
  %.tr = trunc i32 %i.bg to i16
  %i.bh = shl i16 %.tr, 2
  %i.bi = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv
  store i16 %i.bh, ptr %i.bi, align 2, !tbaa !58
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !170

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %ilog.exit
  ret void
}

; Function Attrs: nofree nounwind memory(write, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define range(i32 0, 2) i32 @init_blocksize(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #20 {
bb.a:
  %i.a = shl i32 %2, 1
  %i.b = add nsw i32 %i.a, 4
  %i.c = and i32 %i.b, -8                         ; 11 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !42
  %i.f = add i32 %i.e, %i.c                       ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !43   ; 6 uses
  %.not.i = icmp eq ptr %i.h, null                ; 3 uses
  br i1 %.not.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 4 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !44   ; 3 uses
  %i.k = add nsw i32 %i.j, %i.c                   ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.m = load i32, ptr %i.l, align 4, !tbaa !45   ; 3 uses
  %i.n = icmp sgt i32 %i.k, %i.m
  br i1 %i.n, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 1416
  %4 = sext i32 %1 to i64                         ; 2 uses
  %5 = getelementptr inbounds [8 x i8], ptr %3, i64 %4 ; 2 uses
  store ptr null, ptr %5, align 8, !tbaa !64
  br label %bb.h

bb.d:                                             ; preds = %bb.a
  %.not17.i = icmp eq i32 %i.c, 0
  br i1 %.not17.i, label %.thread, label %bb.g

.thread:                                          ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1416
  %i.p = sext i32 %1 to i64                       ; 2 uses
  %i.q = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.p ; 2 uses
  store ptr null, ptr %i.q, align 8, !tbaa !64
  br label %bb.j

bb.e:                                             ; preds = %bb.b
  %6 = sext i32 %i.j to i64
  %7 = getelementptr inbounds i8, ptr %i.h, i64 %6
  store i32 %i.k, ptr %i.i, align 8, !tbaa !44
  %.pre = add nsw i32 %i.k, %i.c                  ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1416
  %i.s = sext i32 %1 to i64                       ; 3 uses
  %i.t = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.s ; 3 uses
  store ptr %7, ptr %i.t, align 8, !tbaa !64
  %i.u = icmp sgt i32 %.pre, %i.m
  br i1 %i.u, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = sext i32 %i.k to i64
  %i.w = getelementptr inbounds i8, ptr %i.h, i64 %i.v
  store i32 %.pre, ptr %i.i, align 8, !tbaa !44
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  %i.x = sext i32 %i.c to i64                     ; 2 uses
  %i.y = tail call noalias ptr @malloc(i64 noundef %i.x) #29
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 1416
  %i.aa = sext i32 %1 to i64                      ; 2 uses
  %i.ab = getelementptr inbounds [8 x i8], ptr %i.z, i64 %i.aa ; 2 uses
  store ptr %i.y, ptr %i.ab, align 8, !tbaa !64
  %i.ac = add i32 %i.f, %i.c
  %i.ad = tail call noalias ptr @malloc(i64 noundef %i.x) #29
  br label %bb.j

bb.h:                                             ; preds = %bb.c, %bb.f, %bb.e
  %8 = phi ptr [ %i.t, %bb.e ], [ %i.t, %bb.f ], [ %5, %bb.c ] ; 2 uses
  %9 = phi i64 [ %i.s, %bb.e ], [ %i.s, %bb.f ], [ %4, %bb.c ] ; 3 uses
  %10 = phi i32 [ %i.k, %bb.e ], [ %.pre, %bb.f ], [ %i.j, %bb.c ] ; 2 uses
  %.1.i59 = phi ptr [ null, %bb.e ], [ %i.w, %bb.f ], [ null, %bb.c ] ; 3 uses
  %11 = add i32 %i.f, %i.c
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 1432
  %i.af = getelementptr inbounds [8 x i8], ptr %i.ae, i64 %9
  store ptr %.1.i59, ptr %i.af, align 8, !tbaa !64
  %i.ag = add nsw i32 %2, 4
  %i.ah = and i32 %i.ag, -8                       ; 2 uses
  %i.ai = add i32 %11, %i.ah                      ; 3 uses
  store i32 %i.ai, ptr %i.d, align 8, !tbaa !42
  %i.aj = add nsw i32 %10, %i.ah                  ; 2 uses
  %i.ak = icmp sgt i32 %i.aj, %i.m
  br i1 %i.ak, label %setup_malloc.exit65, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.al = sext i32 %10 to i64
  %i.am = getelementptr inbounds i8, ptr %i.h, i64 %i.al
  store i32 %i.aj, ptr %i.i, align 8, !tbaa !44
  br label %setup_malloc.exit65

bb.j:                                             ; preds = %.thread, %bb.g
  %.sink = phi i32 [ %i.f, %.thread ], [ %i.ac, %bb.g ]
  %.ph87 = phi ptr [ %i.q, %.thread ], [ %i.ab, %bb.g ] ; 2 uses
  %.ph88 = phi i64 [ %i.p, %.thread ], [ %i.aa, %bb.g ] ; 3 uses
  %.1.i59.ph = phi ptr [ null, %.thread ], [ %i.ad, %bb.g ] ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 1432
  %i.ao = getelementptr inbounds [8 x i8], ptr %i.an, i64 %.ph88
  store ptr %.1.i59.ph, ptr %i.ao, align 8, !tbaa !64
  %i.ap = add nsw i32 %2, 4
  %i.aq = and i32 %i.ap, -8                       ; 3 uses
  %i.ar = add i32 %.sink, %i.aq                   ; 3 uses
  store i32 %i.ar, ptr %i.d, align 8, !tbaa !42
  %.not17.i64 = icmp eq i32 %i.aq, 0
  br i1 %.not17.i64, label %setup_malloc.exit65, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.as = sext i32 %i.aq to i64
  %i.at = tail call noalias ptr @malloc(i64 noundef %i.as) #29
  br label %setup_malloc.exit65

setup_malloc.exit65:                              ; preds = %bb.h, %bb.i, %bb.j, %bb.k
  %i.au = phi i32 [ %i.ai, %bb.h ], [ %i.ai, %bb.i ], [ %i.ar, %bb.k ], [ %i.ar, %bb.j ]
  %.1.i5990 = phi ptr [ %.1.i59, %bb.h ], [ %.1.i59, %bb.i ], [ %.1.i59.ph, %bb.k ], [ %.1.i59.ph, %bb.j ] ; 2 uses
  %i.av = phi i64 [ %9, %bb.h ], [ %9, %bb.i ], [ %.ph88, %bb.k ], [ %.ph88, %bb.j ] ; 4 uses
  %i.aw = phi ptr [ %8, %bb.h ], [ %8, %bb.i ], [ %.ph87, %bb.k ], [ %.ph87, %bb.j ]
  %.1.i63 = phi ptr [ null, %bb.h ], [ %i.am, %bb.i ], [ %i.at, %bb.k ], [ null, %bb.j ] ; 4 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 1448
  %i.ay = getelementptr inbounds [8 x i8], ptr %i.ax, i64 %i.av
  store ptr %.1.i63, ptr %i.ay, align 8, !tbaa !64
  %i.az = load ptr, ptr %i.aw, align 8, !tbaa !64 ; 3 uses
  %.not = icmp eq ptr %i.az, null
  br i1 %.not, label %compute_bitreverse.exit.sink.split, label %bb.l

bb.l:                                             ; preds = %setup_malloc.exit65
  %.not54 = icmp eq ptr %.1.i5990, null
  %.not55 = icmp eq ptr %.1.i63, null
  %or.cond = select i1 %.not54, i1 true, i1 %.not55
  br i1 %or.cond, label %compute_bitreverse.exit.sink.split, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ba = ashr i32 %2, 2                          ; 3 uses
  %i.bb = ashr i32 %2, 3                          ; 4 uses
  %i.bc = icmp sgt i32 %i.ba, 0
  br i1 %i.bc, label %.lr.ph.i, label %.preheader.i

.lr.ph.i:                                         ; preds = %bb.m
  %i.bd = uitofp nneg i32 %2 to double
  %i.be = insertelement <2 x double> poison, double %i.bd, i64 0
  %i.bf = shufflevector <2 x double> %i.be, <2 x double> poison, <2 x i32> zeroinitializer
  br label %bb.n

.preheader.i:                                     ; preds = %bb.n, %bb.m
  %i.bg = icmp sgt i32 %i.bb, 0                   ; 2 uses
  br i1 %i.bg, label %.lr.ph39.i, label %compute_twiddle_factors.exit

.lr.ph39.i:                                       ; preds = %.preheader.i
  %i.bh = uitofp nneg i32 %2 to double
  br label %bb.o

bb.n:                                             ; preds = %bb.n, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.n ] ; 4 uses
  %.03335.i = phi i32 [ 0, %.lr.ph.i ], [ %i.ci, %bb.n ] ; 2 uses
  %i.bi = shl nuw nsw i32 %.03335.i, 2
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv.i
  %i.bk = or disjoint i64 %indvars.iv.i, 1        ; 2 uses
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %i.bk
  %i.bm = trunc nuw nsw i64 %i.bk to i32
  %i.bn = uitofp nneg i32 %i.bi to double
  %i.bo = uitofp nneg i32 %i.bm to double
  %i.bp = insertelement <2 x double> poison, double %i.bo, i64 0
  %i.bq = insertelement <2 x double> %i.bp, double %i.bn, i64 1
  %i.br = fmul nnan <2 x double> %i.bq, splat (double f0x400921FB54442D18)
  %i.bs = fdiv <2 x double> %i.br, %i.bf          ; 2 uses
  %i.bt = extractelement <2 x double> %i.bs, i64 1 ; 2 uses
  %i.bu = tail call double @cos(double noundef %i.bt) #30
  %i.bv = fptrunc double %i.bu to float
  store float %i.bv, ptr %i.bj, align 4, !tbaa !63
  %i.bw = tail call double @sin(double noundef %i.bt) #30
  %i.bx = fptrunc double %i.bw to float
  %i.by = fneg float %i.bx
  store float %i.by, ptr %i.bl, align 4, !tbaa !63
  %i.bz = extractelement <2 x double> %i.bs, i64 0
  %i.ca = fmul double %i.bz, 5.000000e-01         ; 2 uses
  %i.cb = tail call double @cos(double noundef %i.ca) #30
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %.1.i5990, i64 %indvars.iv.i
  %i.cd = tail call double @sin(double noundef %i.ca) #30
  %i.ce = insertelement <2 x double> poison, double %i.cb, i64 0
  %i.cf = insertelement <2 x double> %i.ce, double %i.cd, i64 1
  %i.cg = fptrunc <2 x double> %i.cf to <2 x float>
  %i.ch = fmul <2 x float> %i.cg, splat (float 5.000000e-01)
  store <2 x float> %i.ch, ptr %i.cc, align 4, !tbaa !63
  %i.ci = add nuw nsw i32 %.03335.i, 1            ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 2
  %exitcond.not.i = icmp eq i32 %i.ci, %i.ba
  br i1 %exitcond.not.i, label %.preheader.i, label %bb.n, !llvm.loop !1

bb.o:                                             ; preds = %bb.o, %.lr.ph39.i
  %indvars.iv41.i = phi i64 [ 0, %.lr.ph39.i ], [ %indvars.iv.next42.i, %bb.o ] ; 3 uses
  %.13437.i = phi i32 [ 0, %.lr.ph39.i ], [ %i.cv, %bb.o ]
  %i.cj = or disjoint i64 %indvars.iv41.i, 1      ; 2 uses
  %.tr.i = trunc nuw nsw i64 %i.cj to i32
  %i.ck = shl nuw nsw i32 %.tr.i, 1
  %i.cl = uitofp nneg i32 %i.ck to double
  %i.cm = fmul nnan double %i.cl, f0x400921FB54442D18
  %i.cn = fdiv double %i.cm, %i.bh                ; 2 uses
  %i.co = tail call double @cos(double noundef %i.cn) #30
  %i.cp = fptrunc double %i.co to float
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %.1.i63, i64 %indvars.iv41.i
  store float %i.cp, ptr %i.cq, align 4, !tbaa !63
  %i.cr = tail call double @sin(double noundef %i.cn) #30
  %i.cs = fptrunc double %i.cr to float
  %i.ct = fneg float %i.cs
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %.1.i63, i64 %i.cj
  store float %i.ct, ptr %i.cu, align 4, !tbaa !63
  %i.cv = add nuw nsw i32 %.13437.i, 1            ; 2 uses
  %indvars.iv.next42.i = add nuw nsw i64 %indvars.iv41.i, 2
  %exitcond44.not.i = icmp eq i32 %i.cv, %i.bb
  br i1 %exitcond44.not.i, label %compute_twiddle_factors.exit, label %bb.o, !llvm.loop !2

compute_twiddle_factors.exit:                     ; preds = %bb.o, %.preheader.i
  %i.cw = add i32 %i.au, %i.c                     ; 2 uses
  store i32 %i.cw, ptr %i.d, align 8, !tbaa !42
  br i1 %.not.i, label %bb.r, label %bb.p

bb.p:                                             ; preds = %compute_twiddle_factors.exit
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.cy = load i32, ptr %i.cx, align 8, !tbaa !44 ; 2 uses
  %i.cz = add nsw i32 %i.cy, %i.c                 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.db = load i32, ptr %i.da, align 4, !tbaa !45
  %i.dc = icmp sgt i32 %i.cz, %i.db
  br i1 %i.dc, label %compute_bitreverse.exit.sink.split.sink.split, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dd = sext i32 %i.cy to i64
  %i.de = getelementptr inbounds i8, ptr %i.h, i64 %i.dd
  store i32 %i.cz, ptr %i.cx, align 8, !tbaa !44
  br label %setup_malloc.exit69

bb.r:                                             ; preds = %compute_twiddle_factors.exit
  %.not17.i68 = icmp eq i32 %i.c, 0
  br i1 %.not17.i68, label %compute_bitreverse.exit.sink.split.sink.split, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.df = sext i32 %i.c to i64
  %i.dg = tail call noalias ptr @malloc(i64 noundef %i.df) #29
  br label %setup_malloc.exit69

setup_malloc.exit69:                              ; preds = %bb.q, %bb.s
  %.1.i67 = phi ptr [ %i.dg, %bb.s ], [ %i.de, %bb.q ] ; 3 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 1464
  %i.di = getelementptr inbounds [8 x i8], ptr %i.dh, i64 %i.av
  store ptr %.1.i67, ptr %i.di, align 8, !tbaa !64
  %.not56 = icmp eq ptr %.1.i67, null
  br i1 %.not56, label %compute_bitreverse.exit.sink.split, label %bb.t

bb.t:                                             ; preds = %setup_malloc.exit69
  %i.dj = ashr i32 %2, 1                          ; 3 uses
  %i.dk = icmp sgt i32 %i.dj, 0
  br i1 %i.dk, label %.lr.ph.i70, label %compute_window.exit

.lr.ph.i70:                                       ; preds = %bb.t
  %i.dl = uitofp nneg i32 %i.dj to double
  %wide.trip.count.i = zext nneg i32 %i.dj to i64
  br label %bb.u

bb.u:                                             ; preds = %bb.u, %.lr.ph.i70
  %indvars.iv.i71 = phi i64 [ 0, %.lr.ph.i70 ], [ %indvars.iv.next.i72, %bb.u ] ; 3 uses
  %i.dm = trunc nuw nsw i64 %indvars.iv.i71 to i32
  %i.dn = uitofp nneg i32 %i.dm to double
  %i.do = fadd nnan double %i.dn, 5.000000e-01
  %i.dp = fdiv nnan double %i.do, %i.dl
  %i.dq = fmul nnan double %i.dp, 5.000000e-01
  %i.dr = fmul nnan double %i.dq, f0x400921FB54442D18
  %i.ds = tail call double @sin(double noundef %i.dr) #30
  %i.dt = fptrunc double %i.ds to float           ; 2 uses
  %i.du = fmul float %i.dt, %i.dt
  %i.dv = fpext float %i.du to double
  %i.dw = fmul double %i.dv, f0x3FF921FB54442D18
  %i.dx = tail call double @sin(double noundef %i.dw) #30
  %i.dy = fptrunc double %i.dx to float
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %.1.i67, i64 %indvars.iv.i71
  store float %i.dy, ptr %i.dz, align 4, !tbaa !63
  %indvars.iv.next.i72 = add nuw nsw i64 %indvars.iv.i71, 1 ; 2 uses
  %exitcond.not.i73 = icmp eq i64 %indvars.iv.next.i72, %wide.trip.count.i
  br i1 %exitcond.not.i73, label %compute_window.exit, label %bb.u, !llvm.loop !3

compute_window.exit:                              ; preds = %bb.u, %bb.t
  %i.ea = add nsw i32 %i.ba, 6
  %i.eb = and i32 %i.ea, -8                       ; 4 uses
  %i.ec = add i32 %i.cw, %i.eb
  store i32 %i.ec, ptr %i.d, align 8, !tbaa !42
  br i1 %.not.i, label %bb.x, label %bb.v

bb.v:                                             ; preds = %compute_window.exit
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.ee = load i32, ptr %i.ed, align 8, !tbaa !44 ; 2 uses
  %i.ef = add nsw i32 %i.ee, %i.eb                ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !45
  %i.ei = icmp sgt i32 %i.ef, %i.eh
  br i1 %i.ei, label %compute_bitreverse.exit.sink.split.sink.split, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ej = sext i32 %i.ee to i64
  %i.ek = getelementptr inbounds i8, ptr %i.h, i64 %i.ej
  store i32 %i.ef, ptr %i.ed, align 8, !tbaa !44
  br label %setup_malloc.exit77

bb.x:                                             ; preds = %compute_window.exit
  %.not17.i76 = icmp eq i32 %i.eb, 0
  br i1 %.not17.i76, label %compute_bitreverse.exit.sink.split.sink.split, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.el = sext i32 %i.eb to i64
  %i.em = tail call noalias ptr @malloc(i64 noundef %i.el) #29
  br label %setup_malloc.exit77

setup_malloc.exit77:                              ; preds = %bb.w, %bb.y
  %.1.i75 = phi ptr [ %i.em, %bb.y ], [ %i.ek, %bb.w ] ; 4 uses
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 1480
  %i.eo = getelementptr inbounds [8 x i8], ptr %i.en, i64 %i.av
  store ptr %.1.i75, ptr %i.eo, align 8, !tbaa !66
  %.not57 = icmp eq ptr %.1.i75, null
  br i1 %.not57, label %compute_bitreverse.exit.sink.split, label %bb.z
end_hunk_0
