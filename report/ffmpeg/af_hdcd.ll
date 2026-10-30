Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/af_hdcd?download=true
inline.NumInlined: 22
inline.NumDeleted: 10
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 15
begin_hunk_0_@hdcd_control_stereo:bb.a
  %i.d = lshr i8 %i.c, 4
  %.lobit.i = and i8 %i.d, 1
  %i.e = zext nneg i8 %.lobit.i to i32
  %i.f = select i1 %.not.i, i32 %i.e, i32 1
  store i32 %i.f, ptr %1, align 4, !tbaa !39
  %i.g = and i8 %i.c, 15                          ; 3 uses
  %i.h = zext nneg i8 %i.g to i32                 ; 3 uses
  %.val = load i32, ptr %i.a, align 4, !tbaa !64
  %.not.i22 = icmp eq i32 %.val, 0
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 154
  %i.j = load i8, ptr %i.i, align 2, !tbaa !65    ; 2 uses
  %i.k = lshr i8 %i.j, 4
  %.lobit.i23 = and i8 %i.k, 1
  %i.l = zext nneg i8 %.lobit.i23 to i32
  %i.m = select i1 %.not.i22, i32 %i.l, i32 1
  store i32 %i.m, ptr %2, align 4, !tbaa !39
  %i.n = and i8 %i.j, 15                          ; 3 uses
  %i.o = zext nneg i8 %i.n to i32                 ; 2 uses
  %i.p = icmp eq i8 %i.g, %i.n
  br i1 %i.p, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.q = shl nuw nsw i32 %i.h, 7
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 324
  store i32 %i.q, ptr %i.r, align 4, !tbaa !61
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !25
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.v = load i32, ptr %i.u, align 8, !tbaa !24
  %.not = icmp eq i8 %i.g, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = lshr i32 %i.h, 1
  %i.x = uitofp nneg i32 %i.w to float
  %i.y = fneg nsz float %i.x
  %i.z = fpext nsz float %i.y to double
  %i.aa = and i32 %i.h, 1
  %.not16 = icmp eq i32 %i.aa, 0
  %i.ab = select nsz i1 %.not16, double 0.000000e+00, double 5.000000e-01
  %i.ac = fsub nsz double %i.z, %i.ab
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.ad = phi nsz double [ %i.ac, %bb.d ], [ 0.000000e+00, %bb.c ]
  %.not17 = icmp eq i8 %i.n, 0
  br i1 %.not17, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ae = lshr i32 %i.o, 1
  %i.af = uitofp nneg i32 %i.ae to float
  %i.ag = fneg nsz float %i.af
  %i.ah = fpext nsz float %i.ag to double
  %i.ai = and i32 %i.o, 1
  %.not18 = icmp eq i32 %i.ai, 0
  %i.aj = select nsz i1 %.not18, double 0.000000e+00, double 5.000000e-01
  %i.ak = fsub nsz double %i.ah, %i.aj
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.al = phi nsz double [ %i.ak, %bb.f ], [ 0.000000e+00, %bb.e ]
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 324
  %i.an = load i32, ptr %i.am, align 4, !tbaa !61 ; 3 uses
  %.not19 = icmp ult i32 %i.an, 128
  br i1 %.not19, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ao = ashr i32 %i.an, 8
  %i.ap = sitofp nsz i32 %i.ao to float
  %i.aq = fneg nsz float %i.ap
  %i.ar = fpext nsz float %i.aq to double
  %i.as = and i32 %i.an, 128
  %.not20 = icmp eq i32 %i.as, 0
  %i.at = select nsz i1 %.not20, double 0.000000e+00, double 5.000000e-01
  %i.au = fsub nsz double %i.ar, %i.at
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.av = phi nsz double [ %i.au, %bb.h ], [ 0.000000e+00, %bb.g ]
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.t, i32 noundef 40, ptr noundef nonnull @.str.8, i32 noundef %i.v, double noundef %i.ad, double noundef %i.al, double noundef %i.av) #10
  br label %bb.j

bb.j:                                             ; preds = %bb.b, %bb.i
  %.0 = phi i32 [ 0, %bb.b ], [ 1, %bb.i ]
  ret i32 %.0
}

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal fastcc i32 @hdcd_scan(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, i32 noundef range(i32 1, 3) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef range(i32 0, -2147483648) %4) unnamed_addr #1 {
bb.a:
  %i.a = alloca [2 x i32], align 8                ; 7 uses
  %wide.trip.count = zext nneg i32 %2 to i64
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !62   ; 4 uses
  %.not68 = icmp eq i32 %i.c, 0                   ; 2 uses
  br i1 %.not68, label %bb.e, label %bb.b

.preheader77:                                     ; preds = %bb.f, %bb.i, %bb.e
  %.sroa.5.0 = phi i1 [ true, %bb.e ], [ %.not68.1, %bb.i ], [ %.not68.1, %bb.f ]
  %.260.lcssa = phi i32 [ %.260, %bb.e ], [ %.260, %bb.f ], [ %.159.1, %bb.i ] ; 3 uses
  %i.d = icmp sgt i32 %.260.lcssa, 0
  br i1 %i.d, label %.lr.ph, label %.thread

.lr.ph:                                           ; preds = %.preheader77
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %exitcond.not.i = icmp eq i32 %2, 1
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 144
  %exitcond153.not.i = icmp eq i32 %2, 1
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  br label %bb.j

bb.b:                                             ; preds = %bb.a
  %.not69 = icmp ugt i32 %i.c, %4
  br i1 %.not69, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 10
  store i8 0, ptr %i.j, align 2, !tbaa !65
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.159 = phi i32 [ %i.c, %bb.c ], [ %4, %bb.b ]  ; 2 uses
  %i.k = sub i32 %i.c, %.159
  store i32 %i.k, ptr %i.b, align 4, !tbaa !62
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  %.260 = phi i32 [ %4, %bb.a ], [ %.159, %bb.d ] ; 4 uses
  %exitcond.not = icmp eq i32 %2, 1
  br i1 %exitcond.not, label %.preheader77, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 148 ; 2 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !62   ; 4 uses
  %.not68.1 = icmp eq i32 %i.m, 0                 ; 3 uses
  br i1 %.not68.1, label %.preheader77, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.not69.1 = icmp ugt i32 %i.m, %.260
  br i1 %.not69.1, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 146
  store i8 0, ptr %i.n, align 2, !tbaa !65
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.159.1 = phi i32 [ %i.m, %bb.h ], [ %.260, %bb.g ] ; 2 uses
  %i.o = sub i32 %i.m, %.159.1
  store i32 %i.o, ptr %i.l, align 4, !tbaa !62
  br label %.preheader77

bb.j:                                             ; preds = %.lr.ph, %bb.an
  %.05584 = phi i32 [ 0, %.lr.ph ], [ %i.dp, %bb.an ] ; 2 uses
  %.06183 = phi ptr [ %3, %.lr.ph ], [ %i.eg, %bb.an ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store i64 0, ptr %i.a, align 8
  %i.p = sub nsw i32 %.260.lcssa, %.05584
  %i.q = load i8, ptr %i.g, align 8, !tbaa !68
  %i.r = zext i8 %i.q to i32
  %.0121..i = tail call i32 @llvm.smin.i32(i32 %i.p, i32 %i.r) ; 2 uses
  br i1 %exitcond.not.i, label %.preheader137.i, label %bb.k

.preheader137.i:                                  ; preds = %bb.k, %bb.j
  %.0121..i.lcssa = phi i32 [ %.0121..i, %bb.j ], [ %.0121..i.1, %bb.k ] ; 6 uses
  %i.s = icmp sgt i32 %.0121..i.lcssa, 0
  br i1 %i.s, label %.preheader136.i.preheader, label %.preheader.i

.preheader136.i.preheader:                        ; preds = %.preheader137.i
  %.promoted = load i32, ptr %i.a, align 8, !tbaa !39
  %.promoted12 = load i32, ptr %i.i, align 4
  br label %.preheader136.i

bb.k:                                             ; preds = %bb.j
  %i.t = load i8, ptr %i.h, align 8, !tbaa !68
  %i.u = zext i8 %i.t to i32
  %.0121..i.1 = tail call i32 @llvm.smin.i32(i32 %.0121..i, i32 %i.u)
  br label %.preheader137.i

.preheader136.i:                                  ; preds = %.preheader136.i.preheader, %bb.m
  %i.v = phi i32 [ %i.aj, %bb.m ], [ %.promoted12, %.preheader136.i.preheader ] ; 2 uses
  %i.w = phi i32 [ %i.ab, %bb.m ], [ %.promoted, %.preheader136.i.preheader ]
  %.0119144.in.i = phi i32 [ %.0119144.i, %bb.m ], [ %.0121..i.lcssa, %.preheader136.i.preheader ] ; 2 uses
  %.0123143.i = phi ptr [ %.lcssa, %bb.m ], [ %.06183, %.preheader136.i.preheader ] ; 3 uses
  %.0119144.i = add nsw i32 %.0119144.in.i, -1    ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.0123143.i, i64 4 ; 2 uses
  %i.y = load i32, ptr %.0123143.i, align 4, !tbaa !39
  %i.z = and i32 %i.y, 1
  %i.aa = shl nuw i32 %i.z, %.0119144.i
  %i.ab = or i32 %i.aa, %i.w                      ; 2 uses
  store i32 %i.ab, ptr %i.a, align 8, !tbaa !39
  br i1 %exitcond153.not.i, label %bb.m, label %bb.l

.preheader.i:                                     ; preds = %bb.m, %.preheader137.i
  %i.ac = zext nneg i32 %.0121..i.lcssa to i64
  %i.ad = trunc i32 %.0121..i.lcssa to i8         ; 2 uses
  br label %bb.n

bb.l:                                             ; preds = %.preheader136.i
  %i.ae = getelementptr inbounds nuw i8, ptr %.0123143.i, i64 8
  %i.af = load i32, ptr %i.x, align 4, !tbaa !39
  %i.ag = and i32 %i.af, 1
  %i.ah = shl nuw i32 %i.ag, %.0119144.i
  %i.ai = or i32 %i.ah, %i.v                      ; 2 uses
  store i32 %i.ai, ptr %i.i, align 4, !tbaa !39
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.preheader136.i
  %i.aj = phi i32 [ %i.v, %.preheader136.i ], [ %i.ai, %bb.l ]
  %.lcssa = phi ptr [ %i.x, %.preheader136.i ], [ %i.ae, %bb.l ]
  %i.ak = icmp samesign ugt i32 %.0119144.in.i, 1
  br i1 %i.ak, label %.preheader136.i, label %.preheader.i, !llvm.loop !120

bb.n:                                             ; preds = %bb.ah, %.preheader.i
  %.072 = phi i32 [ 0, %.preheader.i ], [ %.173, %bb.ah ] ; 6 uses
  %indvars.iv154.i = phi i64 [ 0, %.preheader.i ], [ %indvars.iv.next155.i, %bb.ah ] ; 4 uses
  %i.al = getelementptr inbounds nuw [136 x i8], ptr %1, i64 %indvars.iv154.i ; 13 uses
  %i.am = load i64, ptr %i.al, align 8, !tbaa !67
  %i.an = shl i64 %i.am, %i.ac
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv154.i
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !39
  %i.aq = zext i32 %i.ap to i64
  %i.ar = or i64 %i.an, %i.aq                     ; 4 uses
  store i64 %i.ar, ptr %i.al, align 8, !tbaa !67
  %i.as = getelementptr inbounds nuw i8, ptr %i.al, i64 8 ; 5 uses
  %i.at = load i8, ptr %i.as, align 8, !tbaa !68  ; 2 uses
  %i.au = sub i8 %i.at, %i.ad
  store i8 %i.au, ptr %i.as, align 8, !tbaa !68
  %i.av = icmp eq i8 %i.at, %i.ad
  br i1 %i.av, label %bb.o, label %bb.ah

bb.o:                                             ; preds = %bb.n
  %i.aw = lshr i64 %i.ar, 5
  %i.ax = lshr i64 %i.ar, 23
  %i.ay = xor i64 %i.aw, %i.ax
  %i.az = xor i64 %i.ay, %i.ar                    ; 4 uses
  %i.ba = trunc i64 %i.az to i32                  ; 12 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.al, i64 9 ; 3 uses
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !69
  %.not.i = icmp eq i8 %i.bc, 0
  br i1 %.not.i, label %bb.ac, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bd = and i32 %i.ba, 262145280
  %i.be = icmp eq i32 %i.bd, 262145280
  br i1 %i.be, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  %i.bf = and i32 %i.ba, 200
  %i.bg = icmp eq i32 %i.bf, 0
  br i1 %i.bg, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bh = and i32 %i.ba, 7
  %i.bi = add nuw nsw i32 %i.bh, %i.ba
  %i.bj = trunc i32 %i.bi to i8
  br label %.critedge.i

bb.s:                                             ; preds = %bb.q
  %i.bk = getelementptr inbounds nuw i8, ptr %i.al, i64 28 ; 2 uses
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !34
  %i.bm = add nsw i32 %i.bl, 1
  store i32 %i.bm, ptr %i.bk, align 4, !tbaa !34
  %i.bn = load ptr, ptr %i.e, align 8, !tbaa !25
  %i.bo = and i32 %i.ba, 255
  %i.bp = load i32, ptr %i.f, align 8, !tbaa !24
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.bn, i32 noundef 40, ptr noundef nonnull @.str.9, i32 noundef %i.bo, i32 noundef %i.bp) #10
  br label %bb.ab

bb.t:                                             ; preds = %bb.p
  %i.bq = and i32 %i.ba, -1610219520
  %i.br = icmp eq i32 %i.bq, -1610219520
  br i1 %i.br, label %bb.u, label %bb.ab

bb.u:                                             ; preds = %bb.t
  %i.bs = xor i32 %i.ba, -1                       ; 2 uses
  %i.bt = lshr i32 %i.bs, 8
  %i.bu = and i32 %i.bt, 255
  %.masked.i = and i32 %i.ba, -65281
  %i.bv = xor i32 %i.bu, %.masked.i
  %i.bw = icmp eq i32 %i.bv, -1610219520
  br i1 %i.bw, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.bx = lshr i64 %i.az, 8
  %i.by = trunc i64 %i.bx to i8
  br label %.critedge.i

bb.w:                                             ; preds = %bb.u
  %i.bz = getelementptr inbounds nuw i8, ptr %i.al, i64 36 ; 2 uses
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !35
  %i.cb = add nsw i32 %i.ca, 1
  store i32 %i.cb, ptr %i.bz, align 4, !tbaa !35
  %i.cc = load ptr, ptr %i.e, align 8, !tbaa !25
  %i.cd = and i32 %i.ba, 65535
  %i.ce = lshr i32 %i.ba, 8
  %i.cf = and i32 %i.ce, 255
  %i.cg = and i32 %i.bs, 255
  %i.ch = load i32, ptr %i.f, align 8, !tbaa !24
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.cc, i32 noundef 40, ptr noundef nonnull @.str.10, i32 noundef %i.cd, i32 noundef %i.cf, i32 noundef %i.cg, i32 noundef %i.ch) #10
  br label %bb.ab

.critedge.i:                                      ; preds = %bb.v, %bb.r
  %.sink.i = phi i8 [ %i.by, %bb.v ], [ %i.bj, %bb.r ] ; 4 uses
  %.sink161.i = phi i64 [ 32, %bb.v ], [ 24, %bb.r ]
  %i.ci = getelementptr inbounds nuw i8, ptr %i.al, i64 10
  store i8 %.sink.i, ptr %i.ci, align 2, !tbaa !65
  %i.cj = getelementptr inbounds nuw i8, ptr %i.al, i64 %.sink161.i ; 2 uses
  %i.ck = load i32, ptr %i.cj, align 8, !tbaa !39
  %i.cl = add nsw i32 %i.ck, 1
  store i32 %i.cl, ptr %i.cj, align 8, !tbaa !39
  %i.cm = trunc nuw nsw i64 %indvars.iv154.i to i32
  %i.cn = shl nuw nsw i32 1, %i.cm
  %i.co = or i32 %i.cn, %.072
  %i.cp = and i8 %.sink.i, 16
  %.not133.i = icmp eq i8 %i.cp, 0
  br i1 %.not133.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %.critedge.i
  %i.cq = getelementptr inbounds nuw i8, ptr %i.al, i64 48 ; 2 uses
  %i.cr = load i32, ptr %i.cq, align 8, !tbaa !32
  %i.cs = add nsw i32 %i.cr, 1
  store i32 %i.cs, ptr %i.cq, align 8, !tbaa !32
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %.critedge.i
  %i.ct = and i8 %.sink.i, 32
  %.not134.i = icmp eq i8 %i.ct, 0
  br i1 %.not134.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cu = getelementptr inbounds nuw i8, ptr %i.al, i64 52 ; 2 uses
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !33
  %i.cw = add nsw i32 %i.cv, 1
  store i32 %i.cw, ptr %i.cu, align 4, !tbaa !33
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.cx = getelementptr inbounds nuw i8, ptr %i.al, i64 56
  %i.cy = and i8 %.sink.i, 15                     ; 2 uses
  %i.cz = zext nneg i8 %i.cy to i64
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.cx, i64 %i.cz ; 2 uses
  %i.db = load i32, ptr %i.da, align 4, !tbaa !39
  %i.dc = add nsw i32 %i.db, 1
  store i32 %i.dc, ptr %i.da, align 4, !tbaa !39
  %i.dd = getelementptr inbounds nuw i8, ptr %i.al, i64 120 ; 2 uses
  %i.de = load i32, ptr %i.dd, align 8, !tbaa !38
  %i.df = zext nneg i8 %i.cy to i32
  %..i = tail call i32 @llvm.smax.i32(i32 %i.de, i32 %i.df)
  store i32 %..i, ptr %i.dd, align 8, !tbaa !38
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.w, %bb.t, %bb.s
  %.274 = phi i32 [ %i.co, %bb.aa ], [ %.072, %bb.s ], [ %.072, %bb.w ], [ %.072, %bb.t ]
  store i8 0, ptr %i.bb, align 1, !tbaa !69
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.o
  %.3 = phi i32 [ %.072, %bb.o ], [ %.274, %bb.ab ] ; 3 uses
  %i.dg = add i32 %i.ba, -2114953221
  %or.cond.i = icmp ult i32 %i.dg, 2
  br i1 %or.cond.i, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %.tr.i = trunc i64 %i.az to i8
  %i.dh = shl i8 %.tr.i, 3
  %i.di = and i8 %i.dh, 24
  store i8 %i.di, ptr %i.as, align 8, !tbaa !68
  store i8 1, ptr %i.bb, align 1, !tbaa !69
  %i.dj = getelementptr inbounds nuw i8, ptr %i.al, i64 40 ; 2 uses
  %i.dk = load i32, ptr %i.dj, align 8, !tbaa !31
  %i.dl = add nsw i32 %i.dk, 1
  store i32 %i.dl, ptr %i.dj, align 8, !tbaa !31
  br label %bb.ah

bb.ae:                                            ; preds = %bb.ac
  %.not135.i = icmp eq i32 %i.ba, 0
  br i1 %.not135.i, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dm = and i64 %i.az, 255
  %i.dn = getelementptr inbounds nuw i8, ptr @readaheadtab, i64 %i.dm
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !122
  store i8 %i.do, ptr %i.as, align 8, !tbaa !68
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ae
  store i8 31, ptr %i.as, align 8, !tbaa !68
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af, %bb.ad, %bb.n
  %.173 = phi i32 [ %.3, %bb.ad ], [ %.3, %bb.ag ], [ %.3, %bb.af ], [ %.072, %bb.n ] ; 4 uses
  %indvars.iv.next155.i = add nuw nsw i64 %indvars.iv154.i, 1 ; 2 uses
  %exitcond158.not.i = icmp eq i64 %indvars.iv.next155.i, %wide.trip.count
  br i1 %exitcond158.not.i, label %hdcd_integrate.exit, label %bb.n, !llvm.loop !121

hdcd_integrate.exit:                              ; preds = %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  %i.dp = add nsw i32 %.0121..i.lcssa, %.05584    ; 6 uses
  %.not = icmp eq i32 %.173, 0
  br i1 %.not, label %bb.an, label %.preheader

.preheader:                                       ; preds = %hdcd_integrate.exit
  %i.dq = and i32 %.173, 1
  %.not67 = icmp eq i32 %i.dq, 0
  br i1 %.not67, label %bb.ak, label %bb.ai

bb.ai:                                            ; preds = %.preheader
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ds = load i32, ptr %i.dr, align 8, !tbaa !70
  %i.dt = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 %i.ds, ptr %i.dt, align 4, !tbaa !62
end_hunk_0
