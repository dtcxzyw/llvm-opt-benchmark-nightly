Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sundials/original/cvodes?download=true
inline.NumInlined: 74
inline.NumDeleted: 54
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 33
loop-unroll.NumUnrolled: 55
begin_hunk_0_@CVodeRootInit:bb.a
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !185
  tail call void @free(ptr noundef %i.al) #13
  store ptr null, ptr %i.ak, align 8, !tbaa !185
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 2432 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !186
  tail call void @free(ptr noundef %i.an) #13
  store ptr null, ptr %i.am, align 8, !tbaa !186
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 2440 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !187
  tail call void @free(ptr noundef %i.ap) #13
  store ptr null, ptr %i.ao, align 8, !tbaa !187
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 2520 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !188
  tail call void @free(ptr noundef %i.ar) #13
  store ptr null, ptr %i.aq, align 8, !tbaa !188
  %i.as = mul nuw nsw i32 %i.b, 3
  %i.at = zext nneg i32 %i.as to i64
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 1832 ; 2 uses
  %i.av = load <2 x i64>, ptr %i.au, align 8, !tbaa !65
  %i.aw = insertelement <2 x i64> poison, i64 %i.at, i64 0
  %i.ax = shufflevector <2 x i64> %i.aw, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.ay = sub nsw <2 x i64> %i.av, %i.ax
  store <2 x i64> %i.ay, ptr %i.au, align 8, !tbaa !65
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @cvProcessError(ptr noundef nonnull %0, i32 noundef -22, i32 noundef 2771, ptr noundef nonnull @__func__.CVodeRootInit, ptr noundef nonnull @.str, ptr noundef nonnull @.str.33)
  br label %bb.z

bb.k:                                             ; preds = %bb.i
  store ptr %2, ptr %i.ad, align 8, !tbaa !189
  br label %bb.z

bb.l:                                             ; preds = %bb.g
  store i32 %i.b, ptr %i.c, align 8, !tbaa !182
  %i.az = icmp eq ptr %2, null
  br i1 %i.az, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @cvProcessError(ptr noundef nonnull %0, i32 noundef -22, i32 noundef 2788, ptr noundef nonnull @__func__.CVodeRootInit, ptr noundef nonnull @.str, ptr noundef nonnull @.str.33)
  br label %bb.z

bb.n:                                             ; preds = %bb.l
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 2416
  store ptr %2, ptr %i.ba, align 8, !tbaa !189
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 2472 ; 6 uses
  %i.bc = zext nneg i32 %i.b to i64               ; 2 uses
  %i.bd = shl nuw nsw i64 %i.bc, 3                ; 3 uses
  %i.be = tail call noalias ptr @malloc(i64 noundef %i.bd) #14 ; 7 uses
  store ptr %i.be, ptr %i.bb, align 8, !tbaa !183
  %i.bf = icmp eq ptr %i.be, null
  br i1 %i.bf, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @cvProcessError(ptr noundef nonnull %0, i32 noundef -20, i32 noundef 2799, ptr noundef nonnull @__func__.CVodeRootInit, ptr noundef nonnull @.str, ptr noundef nonnull @.str.8)
  br label %bb.z

bb.p:                                             ; preds = %bb.n
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 2480 ; 5 uses
  %i.bh = tail call noalias ptr @malloc(i64 noundef %i.bd) #14 ; 6 uses
  store ptr %i.bh, ptr %i.bg, align 8, !tbaa !184
  %i.bi = icmp eq ptr %i.bh, null
  br i1 %i.bi, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  tail call void @free(ptr noundef nonnull %i.be) #13
  store ptr null, ptr %i.bb, align 8, !tbaa !183
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @cvProcessError(ptr noundef nonnull %0, i32 noundef -20, i32 noundef 2810, ptr noundef nonnull @__func__.CVodeRootInit, ptr noundef nonnull @.str, ptr noundef nonnull @.str.8)
  br label %bb.z

bb.r:                                             ; preds = %bb.p
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 2488 ; 4 uses
  %i.bk = tail call noalias ptr @malloc(i64 noundef %i.bd) #14 ; 5 uses
  store ptr %i.bk, ptr %i.bj, align 8, !tbaa !185
  %i.bl = icmp eq ptr %i.bk, null
  br i1 %i.bl, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  tail call void @free(ptr noundef nonnull %i.be) #13
  store ptr null, ptr %i.bb, align 8, !tbaa !183
  tail call void @free(ptr noundef nonnull %i.bh) #13
  store ptr null, ptr %i.bg, align 8, !tbaa !184
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @cvProcessError(ptr noundef nonnull %0, i32 noundef -20, i32 noundef 2823, ptr noundef nonnull @__func__.CVodeRootInit, ptr noundef nonnull @.str, ptr noundef nonnull @.str.8)
  br label %bb.z

bb.t:                                             ; preds = %bb.r
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 2432 ; 3 uses
  %i.bn = shl nuw nsw i64 %i.bc, 2                ; 3 uses
  %i.bo = tail call noalias ptr @malloc(i64 noundef %i.bn) #14 ; 4 uses
  store ptr %i.bo, ptr %i.bm, align 8, !tbaa !186
  %i.bp = icmp eq ptr %i.bo, null
  br i1 %i.bp, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  tail call void @free(ptr noundef nonnull %i.be) #13
  store ptr null, ptr %i.bb, align 8, !tbaa !183
  tail call void @free(ptr noundef nonnull %i.bh) #13
  store ptr null, ptr %i.bg, align 8, !tbaa !184
  tail call void @free(ptr noundef nonnull %i.bk) #13
  store ptr null, ptr %i.bj, align 8, !tbaa !185
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @cvProcessError(ptr noundef nonnull %0, i32 noundef -20, i32 noundef 2838, ptr noundef nonnull @__func__.CVodeRootInit, ptr noundef nonnull @.str, ptr noundef nonnull @.str.8)
  br label %bb.z

bb.v:                                             ; preds = %bb.t
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 2440 ; 2 uses
  %i.br = tail call noalias ptr @malloc(i64 noundef %i.bn) #14 ; 4 uses
  store ptr %i.br, ptr %i.bq, align 8, !tbaa !187
  %i.bs = icmp eq ptr %i.br, null
  br i1 %i.bs, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  tail call void @free(ptr noundef nonnull %i.be) #13
  store ptr null, ptr %i.bb, align 8, !tbaa !183
  tail call void @free(ptr noundef nonnull %i.bh) #13
  store ptr null, ptr %i.bg, align 8, !tbaa !184
  tail call void @free(ptr noundef nonnull %i.bk) #13
  store ptr null, ptr %i.bj, align 8, !tbaa !185
  tail call void @free(ptr noundef nonnull %i.bo) #13
  store ptr null, ptr %i.bm, align 8, !tbaa !186
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @cvProcessError(ptr noundef nonnull %0, i32 noundef -20, i32 noundef 2855, ptr noundef nonnull @__func__.CVodeRootInit, ptr noundef nonnull @.str, ptr noundef nonnull @.str.8)
  br label %bb.z

bb.x:                                             ; preds = %bb.v
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 2520
  %i.bu = tail call noalias ptr @malloc(i64 noundef %i.bn) #14 ; 4 uses
  store ptr %i.bu, ptr %i.bt, align 8, !tbaa !188
  %i.bv = icmp eq ptr %i.bu, null
  br i1 %i.bv, label %bb.y, label %.lr.ph141.preheader

bb.y:                                             ; preds = %bb.x
  tail call void @free(ptr noundef nonnull %i.be) #13
  store ptr null, ptr %i.bb, align 8, !tbaa !183
  tail call void @free(ptr noundef nonnull %i.bh) #13
  store ptr null, ptr %i.bg, align 8, !tbaa !184
  tail call void @free(ptr noundef nonnull %i.bk) #13
  store ptr null, ptr %i.bj, align 8, !tbaa !185
  tail call void @free(ptr noundef nonnull %i.bo) #13
  store ptr null, ptr %i.bm, align 8, !tbaa !186
  tail call void @free(ptr noundef nonnull %i.br) #13
  store ptr null, ptr %i.bq, align 8, !tbaa !187
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @cvProcessError(ptr noundef nonnull %0, i32 noundef -20, i32 noundef 2874, ptr noundef nonnull @__func__.CVodeRootInit, ptr noundef nonnull @.str, ptr noundef nonnull @.str.8)
  br label %bb.z

.lr.ph141.preheader:                              ; preds = %bb.x
  %i.bw = zext nneg i32 %1 to i64
  %i.bx = shl nuw nsw i64 %i.bw, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.br, i8 0, i64 %i.bx, i1 false), !tbaa !56
  %wide.trip.count = zext nneg i32 %1 to i64      ; 3 uses
  %min.iters.check = icmp ult i32 %1, 8
  br i1 %min.iters.check, label %.lr.ph141.preheader153, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph141.preheader
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %index ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  store <4 x i32> splat (i32 1), ptr %i.by, align 4, !tbaa !56
  store <4 x i32> splat (i32 1), ptr %i.bz, align 4, !tbaa !56
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ca = icmp eq i64 %index.next, %n.vec
  br i1 %i.ca, label %middle.block, label %vector.body, !llvm.loop !257

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph141.preheader153

.lr.ph141.preheader153:                           ; preds = %.lr.ph141.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph141.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph141

.lr.ph141:                                        ; preds = %.lr.ph141.preheader153, %.lr.ph141
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph141 ], [ %indvars.iv.ph, %.lr.ph141.preheader153 ] ; 2 uses
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %indvars.iv
  store i32 1, ptr %i.cb, align 4, !tbaa !56
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph141, !llvm.loop !258

._crit_edge:                                      ; preds = %.lr.ph141, %middle.block
  %i.cc = mul nuw nsw i32 %i.b, 3
  %i.cd = zext nneg i32 %i.cc to i64
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 1832 ; 2 uses
  %i.cf = load <2 x i64>, ptr %i.ce, align 8, !tbaa !65
  %i.cg = insertelement <2 x i64> poison, i64 %i.cd, i64 0
  %i.ch = shufflevector <2 x i64> %i.cg, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.ci = add nsw <2 x i64> %i.cf, %i.ch
  store <2 x i64> %i.ci, ptr %i.ce, align 8, !tbaa !65
  br label %bb.z

bb.z:                                             ; preds = %bb.h, %._crit_edge, %bb.y, %bb.w, %bb.u, %bb.s, %bb.q, %bb.o, %bb.m, %bb.k, %bb.j, %bb.f, %bb.b
  %.0131 = phi i32 [ -21, %bb.b ], [ 0, %bb.f ], [ -22, %bb.j ], [ 0, %bb.k ], [ 0, %._crit_edge ], [ -22, %bb.m ], [ -20, %bb.o ], [ -20, %bb.q ], [ -20, %bb.s ], [ -20, %bb.u ], [ -20, %bb.w ], [ -20, %bb.y ], [ 0, %bb.h ]
  ret i32 %.0131
}

; Function Attrs: nounwind uwtable
define range(i32 -9999, 3) i32 @CVode(ptr noundef %0, double noundef %1, ptr noundef %2, ptr nofree noundef writeonly captures(address_is_null) %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x double], align 16            ; 8 uses
  %i.b = alloca [4 x double], align 16            ; 8 uses
  %i.c = alloca [4 x double], align 16            ; 8 uses
  %i.d = alloca [4 x double], align 16            ; 7 uses
  %i.e = alloca [4 x [4 x double]], align 16      ; 11 uses
  %i.f = alloca [5 x double], align 16            ; 8 uses
  %i.g = alloca [6 x [4 x double]], align 16      ; 17 uses
  %i.h = alloca [6 x [4 x double]], align 16      ; 16 uses
  %i.i = alloca i64, align 8                      ; 5 uses
  %i.j = alloca i64, align 8                      ; 5 uses
  %i.k = alloca i64, align 8                      ; 5 uses
  %i.l = alloca i64, align 8                      ; 5 uses
  %i.m = alloca i64, align 8                      ; 5 uses
  %i.n = alloca i64, align 8                      ; 5 uses
  %i.o = alloca [13 x double], align 16           ; 25 uses
  %i.p = alloca double, align 8                   ; 12 uses
  %i.q = alloca double, align 8                   ; 6 uses
  %i.r = alloca double, align 8                   ; 6 uses
  %i.s = alloca double, align 8                   ; 6 uses
  %i.t = alloca i32, align 4                      ; 22 uses
  %i.u = alloca i32, align 4                      ; 11 uses
  %i.v = alloca i32, align 4                      ; 6 uses
  %i.w = alloca i32, align 4                      ; 9 uses
  %i.x = alloca i32, align 4                      ; 7 uses
  %i.y = alloca i32, align 4                      ; 8 uses
  %i.z = alloca i32, align 4                      ; 8 uses
  %i.aa = alloca i32, align 4                     ; 6 uses
  %i.ab = icmp eq ptr %0, null
  br i1 %i.ab, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @cvProcessError(ptr noundef null, i32 noundef -21, i32 noundef 2932, ptr noundef nonnull @__func__.CVode, ptr noundef nonnull @.str, ptr noundef nonnull @.str.4)
  br label %cvInitialSetup.exit.thread

bb.c:                                             ; preds = %bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 2144
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !100
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @cvProcessError(ptr noundef nonnull %0, i32 noundef -23, i32 noundef 2942, ptr noundef nonnull @__func__.CVode, ptr noundef nonnull @.str, ptr noundef nonnull @.str.10)
  br label %cvInitialSetup.exit.thread

bb.e:                                             ; preds = %bb.c
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 456 ; 8 uses
  store ptr %2, ptr %i.af, align 8, !tbaa !190
  %i.ag = icmp eq ptr %2, null
  br i1 %i.ag, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @cvProcessError(ptr noundef nonnull %0, i32 noundef -22, i32 noundef 2951, ptr noundef nonnull @__func__.CVode, ptr noundef nonnull @.str, ptr noundef nonnull @.str.34)
  br label %cvInitialSetup.exit.thread

bb.g:                                             ; preds = %bb.e
  %i.ah = icmp eq ptr %3, null
  br i1 %i.ah, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @cvProcessError(ptr noundef nonnull %0, i32 noundef -22, i32 noundef 2960, ptr noundef nonnull @__func__.CVode, ptr noundef nonnull @.str, ptr noundef nonnull @.str.35)
  br label %cvInitialSetup.exit.thread

bb.i:                                             ; preds = %bb.g
  %i.ai = add i32 %4, -3
  %or.cond = icmp ult i32 %i.ai, -2
  br i1 %or.cond, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @cvProcessError(ptr noundef nonnull %0, i32 noundef -22, i32 noundef 2969, ptr noundef nonnull @__func__.CVode, ptr noundef nonnull @.str, ptr noundef nonnull @.str.36)
  br label %cvInitialSetup.exit.thread

bb.k:                                             ; preds = %bb.i
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 1592 ; 10 uses
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !301
  %i.al = icmp eq i64 %i.ak, 0
  br i1 %i.al, label %bb.l, label %bb.dt

bb.l:                                             ; preds = %bb.k
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 1032 ; 14 uses
  %i.an = load double, ptr %i.am, align 8, !tbaa !77 ; 4 uses
  store double %i.an, ptr %3, align 8, !tbaa !29
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 1040
  store double %i.an, ptr %i.ao, align 8, !tbaa !191
  %i.ap = fsub double %1, %i.an                   ; 2 uses
  %i.aq = fcmp oeq double %i.ap, 0.000000e+00
  br i1 %i.aq, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ar = tail call double @llvm.fabs.f64(double %i.an) ; 2 uses
  %i.as = tail call double @llvm.fabs.f64(double %1) ; 2 uses
  %i.at = fcmp ogt double %i.ar, %i.as
  %..i = select i1 %i.at, double %i.ar, double %i.as
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.av = load double, ptr %i.au, align 8, !tbaa !24
  %i.aw = tail call double @llvm.fabs.f64(double %i.ap)
  %i.ax = fmul double %..i, %i.av
  %i.ay = fmul double %i.ax, 2.000000e+00
  %i.az = fcmp olt double %i.aw, %i.ay
  br i1 %i.az, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m, %bb.l
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @cvProcessError(ptr noundef nonnull %0, i32 noundef -27, i32 noundef 5221, ptr noundef nonnull @__func__.cvInitialSetup, ptr noundef nonnull @.str, ptr noundef nonnull @.str.67)
  br label %cvInitialSetup.exit.thread

bb.o:                                             ; preds = %bb.m
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !107
  %i.bc = icmp eq i32 %i.bb, 0
  br i1 %i.bc, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @cvProcessError(ptr noundef nonnull %0, i32 noundef -22, i32 noundef 5229, ptr noundef nonnull @__func__.cvInitialSetup, ptr noundef nonnull @.str, ptr noundef nonnull @.str.68)
  br label %cvInitialSetup.exit.thread

bb.q:                                             ; preds = %bb.o
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !108
  %.not.i = icmp eq i32 %i.be, 0
  br i1 %.not.i, label %bb.r, label %bb.u

bb.r:                                             ; preds = %bb.q
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !25
  %.not113.i = icmp eq i32 %i.bg, 0
  br i1 %.not113.i, label %bb.v, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !69
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !63
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 184
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !111
  %.not114.i = icmp eq ptr %i.bm, null
  br i1 %.not114.i, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @cvProcessError(ptr noundef nonnull %0, i32 noundef -22, i32 noundef 5239, ptr noundef nonnull @__func__.cvInitialSetup, ptr noundef nonnull @.str, ptr noundef nonnull @.str.13)
  br label %cvInitialSetup.exit.thread

bb.u:                                             ; preds = %bb.q
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !60
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.s, %bb.r
  %.sink.i = phi ptr [ %i.bo, %bb.u ], [ %0, %bb.s ], [ %0, %bb.r ] ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  store ptr %.sink.i, ptr %i.bp, align 8, !tbaa !110
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 2536
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !103 ; 2 uses
  %.not116.i = icmp eq ptr %i.br, null
  br i1 %.not116.i, label %bb.ab, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !141
  %.not117.i = icmp eq i32 %i.bt, 0
  br i1 %.not117.i, label %bb.z, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 156
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !130
  %i.bw = icmp eq i32 %i.bv, 1
  br i1 %i.bw, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @cvProcessError(ptr noundef nonnull %0, i32 noundef -22, i32 noundef 5253, ptr noundef nonnull @__func__.cvInitialSetup, ptr noundef nonnull @.str, ptr noundef nonnull @.str.69)
  br label %cvInitialSetup.exit.thread

bb.z:                                             ; preds = %bb.x, %bb.w
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !52
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !69
  %i.cb = tail call i32 @N_VConstrMask(ptr noundef nonnull %i.br, ptr noundef %i.by, ptr noundef %i.ca) #13
  %.not118.i = icmp eq i32 %i.cb, 0
  br i1 %.not118.i, label %bb.aa, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.z
  %.pre.i = load ptr, ptr %i.bp, align 8, !tbaa !110
  br label %bb.ab

bb.aa:                                            ; preds = %bb.z
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @cvProcessError(ptr noundef nonnull %0, i32 noundef -22, i32 noundef 5262, ptr noundef nonnull @__func__.cvInitialSetup, ptr noundef nonnull @.str, ptr noundef nonnull @.str.70)
  br label %cvInitialSetup.exit.thread

bb.ab:                                            ; preds = %._crit_edge.i, %bb.v
  %i.cc = phi ptr [ %.pre.i, %._crit_edge.i ], [ %.sink.i, %bb.v ]
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !109
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 5 uses
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !52
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !58
  %i.cj = tail call i32 %i.ce(ptr noundef %i.cg, ptr noundef %i.ci, ptr noundef %i.cc) #13, !inline_history !259
  %.not119.i = icmp eq i32 %i.cj, 0
  br i1 %.not119.i, label %bb.af, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ck = load i32, ptr %i.ba, align 4, !tbaa !107
  %i.cl = icmp eq i32 %i.ck, 3
  br i1 %i.cl, label %bb.ad, label %bb.ae

end_hunk_0
begin_hunk_1_@CVode:bb.a

bb.fc:                                            ; preds = %bb.fb
  store double %i.ov, ptr %3, align 8, !tbaa !29
  store double %i.ov, ptr %i.pc, align 8, !tbaa !191
  %i.ph = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.pi = load ptr, ptr %i.ph, align 8, !tbaa !52
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.pi, ptr noundef nonnull %2) #13
  br label %cvInitialSetup.exit.thread

bb.fd:                                            ; preds = %bb.ey, %bb.fb, %bb.eb
  %i.pj = getelementptr inbounds nuw i8, ptr %0, i64 992 ; 24 uses
  %i.pk = getelementptr inbounds nuw i8, ptr %0, i64 1008 ; 3 uses
  %i.pl = getelementptr inbounds nuw i8, ptr %0, i64 960 ; 29 uses
  %i.pm = getelementptr inbounds nuw i8, ptr %0, i64 968 ; 3 uses
  %i.pn = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.po = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 27 uses
  %i.pp = getelementptr inbounds nuw i8, ptr %0, i64 448 ; 9 uses
  %i.pq = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.pr = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 12 uses
  %i.ps = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 6 uses
  %i.pt = getelementptr inbounds nuw i8, ptr %0, i64 512 ; 10 uses
  %i.pu = getelementptr inbounds nuw i8, ptr %0, i64 616 ; 5 uses
  %i.pv = getelementptr inbounds nuw i8, ptr %0, i64 148 ; 12 uses
  %i.pw = getelementptr inbounds nuw i8, ptr %0, i64 648 ; 13 uses
  %i.px = getelementptr inbounds nuw i8, ptr %0, i64 752 ; 6 uses
  %i.py = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 11 uses
  %i.pz = getelementptr inbounds nuw i8, ptr %0, i64 300 ; 6 uses
  %i.qa = getelementptr inbounds nuw i8, ptr %0, i64 800 ; 10 uses
  %i.qb = getelementptr inbounds nuw i8, ptr %0, i64 904 ; 5 uses
  %i.qc = getelementptr inbounds nuw i8, ptr %0, i64 1456
  %i.qd = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 6 uses
  %i.qe = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 39 uses
  %i.qf = getelementptr inbounds nuw i8, ptr %0, i64 2688 ; 22 uses
  %i.qg = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.qh = getelementptr inbounds nuw i8, ptr %0, i64 2112 ; 4 uses
  %i.qi = getelementptr inbounds nuw i8, ptr %0, i64 1032 ; 26 uses
  %i.qj = getelementptr inbounds nuw i8, ptr %0, i64 1768 ; 3 uses
  %i.qk = getelementptr inbounds nuw i8, ptr %0, i64 1464 ; 2 uses
  %i.ql = getelementptr inbounds nuw i8, ptr %0, i64 156 ; 3 uses
  %i.qm = getelementptr inbounds nuw i8, ptr %0, i64 1440 ; 3 uses
  %i.qn = getelementptr inbounds nuw i8, ptr %0, i64 1000 ; 11 uses
  %i.qo = getelementptr inbounds nuw i8, ptr %0, i64 964 ; 13 uses
  %i.qp = getelementptr inbounds nuw i8, ptr %0, i64 2712 ; 3 uses
  %i.qq = getelementptr inbounds nuw i8, ptr %0, i64 976 ; 5 uses
  %i.qr = getelementptr inbounds nuw i8, ptr %0, i64 972 ; 10 uses
  %i.qs = getelementptr inbounds nuw i8, ptr %0, i64 2576 ; 2 uses
  %i.qt = getelementptr inbounds nuw i8, ptr %0, i64 2568
  %i.qu = getelementptr inbounds nuw i8, ptr %0, i64 944 ; 4 uses
  %i.qv = getelementptr inbounds nuw i8, ptr %0, i64 952 ; 4 uses
  %i.qw = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.qx = getelementptr inbounds nuw i8, ptr %0, i64 1208 ; 21 uses
  %i.qy = getelementptr inbounds nuw i8, ptr %0, i64 1216 ; 3 uses
  %scevgep.i.i.i = getelementptr i8, ptr %0, i64 1224
  %i.qz = getelementptr inbounds nuw i8, ptr %0, i64 2584 ; 5 uses
  %i.ra = getelementptr inbounds nuw i8, ptr %0, i64 1176 ; 6 uses
  %i.rb = getelementptr inbounds nuw i8, ptr %0, i64 1200 ; 6 uses
  %i.rc = getelementptr inbounds nuw i8, ptr %0, i64 1168 ; 4 uses
  %i.rd = getelementptr inbounds nuw i8, ptr %0, i64 1048 ; 2 uses
  %i.re = getelementptr inbounds nuw i8, ptr %0, i64 1184 ; 4 uses
  %i.rf = getelementptr inbounds nuw i8, ptr %0, i64 1432 ; 3 uses
  %i.rg = getelementptr inbounds nuw i8, ptr %0, i64 1192 ; 7 uses
  %scevgep.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.rh = getelementptr inbounds nuw i8, ptr %0, i64 1312 ; 3 uses
  %i.ri = getelementptr inbounds nuw i8, ptr %0, i64 1320
  %i.rj = getelementptr inbounds nuw i8, ptr %0, i64 1328 ; 2 uses
  %i.rk = getelementptr inbounds nuw i8, ptr %0, i64 1336
  %i.rl = getelementptr inbounds nuw i8, ptr %0, i64 2016 ; 3 uses
  %i.rm = getelementptr inbounds nuw i8, ptr %0, i64 1936 ; 2 uses
  %i.rn = getelementptr inbounds nuw i8, ptr %0, i64 2072
  %i.ro = getelementptr inbounds nuw i8, ptr %0, i64 2048
  %i.rp = getelementptr inbounds nuw i8, ptr %0, i64 2056
  %i.rq = getelementptr inbounds nuw i8, ptr %0, i64 2064
  %i.rr = getelementptr inbounds nuw i8, ptr %0, i64 1344
  %i.rs = getelementptr inbounds nuw i8, ptr %0, i64 1352 ; 2 uses
  %i.rt = getelementptr inbounds nuw i8, ptr %0, i64 1848 ; 4 uses
  %i.ru = getelementptr inbounds nuw i8, ptr %0, i64 464 ; 15 uses
  %i.rv = getelementptr inbounds nuw i8, ptr %0, i64 1952 ; 4 uses
  %i.rw = getelementptr inbounds nuw i8, ptr %0, i64 1672 ; 2 uses
  %i.rx = getelementptr inbounds nuw i8, ptr %0, i64 1864 ; 2 uses
  %i.ry = getelementptr inbounds nuw i8, ptr %0, i64 1944
  %i.rz = getelementptr inbounds nuw i8, ptr %0, i64 1960
  %i.sa = getelementptr inbounds nuw i8, ptr %0, i64 1696 ; 2 uses
  %i.sb = getelementptr inbounds nuw i8, ptr %0, i64 1392 ; 2 uses
  %i.sc = getelementptr inbounds nuw i8, ptr %0, i64 768 ; 11 uses
  %i.sd = getelementptr inbounds nuw i8, ptr %0, i64 760 ; 4 uses
  %i.se = getelementptr inbounds nuw i8, ptr %0, i64 1384 ; 3 uses
  %i.sf = getelementptr inbounds nuw i8, ptr %0, i64 2104 ; 3 uses
  %i.sg = getelementptr inbounds nuw i8, ptr %0, i64 1648 ; 3 uses
  %i.sh = getelementptr inbounds nuw i8, ptr %0, i64 2536 ; 3 uses
  %i.si = getelementptr inbounds nuw i8, ptr %0, i64 480 ; 2 uses
  %i.sj = getelementptr inbounds nuw i8, ptr %0, i64 472 ; 5 uses
  %i.sk = getelementptr inbounds nuw i8, ptr %0, i64 488 ; 3 uses
  %i.sl = getelementptr inbounds nuw i8, ptr %0, i64 2544 ; 2 uses
  %i.sm = getelementptr inbounds nuw i8, ptr %0, i64 2552 ; 2 uses
  %i.sn = getelementptr inbounds nuw i8, ptr %0, i64 1480 ; 4 uses
  %i.so = getelementptr inbounds nuw i8, ptr %0, i64 2560
  %i.sp = getelementptr inbounds nuw i8, ptr %0, i64 1016 ; 14 uses
  %i.sq = getelementptr inbounds nuw i8, ptr %0, i64 2580 ; 2 uses
  %i.sr = getelementptr inbounds nuw i8, ptr %0, i64 1720
  %i.ss = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.st = getelementptr inbounds nuw i8, ptr %0, i64 632 ; 11 uses
  %i.su = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.sv = getelementptr inbounds nuw i8, ptr %0, i64 1608 ; 2 uses
  %i.sw = getelementptr inbounds nuw i8, ptr %0, i64 936 ; 2 uses
  %i.sx = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.sy = getelementptr inbounds nuw i8, ptr %0, i64 624
  %i.sz = getelementptr inbounds nuw i8, ptr %0, i64 1400
  %i.ta = getelementptr inbounds nuw i8, ptr %0, i64 1728
  %i.tb = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.tc = getelementptr inbounds nuw i8, ptr %0, i64 1600 ; 2 uses
  %i.td = getelementptr inbounds nuw i8, ptr %0, i64 1908
  %i.te = getelementptr inbounds nuw i8, ptr %0, i64 1920 ; 4 uses
  %i.tf = getelementptr inbounds nuw i8, ptr %0, i64 1896 ; 3 uses
  %i.tg = getelementptr inbounds nuw i8, ptr %0, i64 1688 ; 2 uses
  %i.th = getelementptr inbounds nuw i8, ptr %0, i64 1712 ; 2 uses
  %i.ti = getelementptr inbounds nuw i8, ptr %0, i64 1664 ; 2 uses
  %i.tj = getelementptr inbounds nuw i8, ptr %0, i64 1976 ; 2 uses
  %i.tk = getelementptr inbounds nuw i8, ptr %0, i64 1880 ; 3 uses
  %i.tl = getelementptr inbounds nuw i8, ptr %0, i64 1968
  %i.tm = getelementptr inbounds nuw i8, ptr %0, i64 1984
  %i.tn = getelementptr inbounds nuw i8, ptr %0, i64 1680 ; 6 uses
  %i.to = getelementptr inbounds nuw i8, ptr %0, i64 1704 ; 6 uses
  %i.tp = getelementptr inbounds nuw i8, ptr %0, i64 1656 ; 5 uses
  %i.tq = getelementptr inbounds nuw i8, ptr %0, i64 1416
  %i.tr = getelementptr inbounds nuw i8, ptr %0, i64 1408 ; 2 uses
  %i.ts = getelementptr inbounds nuw i8, ptr %0, i64 1736
  %i.tt = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.tu = getelementptr inbounds nuw i8, ptr %0, i64 920 ; 10 uses
  %i.tv = getelementptr inbounds nuw i8, ptr %0, i64 640 ; 3 uses
  %i.tw = getelementptr inbounds nuw i8, ptr %0, i64 1632 ; 2 uses
  %i.tx = getelementptr inbounds nuw i8, ptr %0, i64 808
  %i.ty = getelementptr inbounds nuw i8, ptr %0, i64 912
  %i.tz = getelementptr inbounds nuw i8, ptr %0, i64 1424
  %i.ua = getelementptr inbounds nuw i8, ptr %0, i64 1744
  %i.ub = getelementptr inbounds nuw i8, ptr %0, i64 2400 ; 5 uses
  %i.uc = getelementptr inbounds nuw i8, ptr %0, i64 2088
  %i.ud = getelementptr inbounds nuw i8, ptr %0, i64 2068
  %i.ue = getelementptr inbounds nuw i8, ptr %0, i64 1056 ; 2 uses
  %i.uf = getelementptr inbounds nuw i8, ptr %0, i64 1064 ; 2 uses
  %i.ug = getelementptr inbounds nuw i8, ptr %0, i64 1448 ; 14 uses
  %i.uh = getelementptr inbounds nuw i8, ptr %0, i64 2096 ; 2 uses
  %i.ui = getelementptr inbounds nuw i8, ptr %0, i64 2136
  %i.uj = getelementptr inbounds nuw i8, ptr %0, i64 1496 ; 4 uses
  %i.uk = getelementptr inbounds nuw i8, ptr %0, i64 1784 ; 2 uses
  %i.ul = getelementptr inbounds nuw i8, ptr %0, i64 1504 ; 3 uses
  %i.um = getelementptr inbounds nuw i8, ptr %0, i64 1512 ; 3 uses
  %i.un = getelementptr inbounds nuw i8, ptr %0, i64 1488 ; 3 uses
  %i.uo = getelementptr inbounds nuw i8, ptr %0, i64 1544 ; 2 uses
  %i.up = getelementptr inbounds nuw i8, ptr %0, i64 1776 ; 4 uses
  %i.uq = getelementptr inbounds nuw i8, ptr %0, i64 1792 ; 2 uses
  %i.ur = getelementptr inbounds nuw i8, ptr %0, i64 776 ; 2 uses
  %i.us = getelementptr inbounds nuw i8, ptr %0, i64 928 ; 2 uses
  %i.ut = getelementptr inbounds nuw i8, ptr %0, i64 2200
  %i.uu = getelementptr i8, ptr %0, i64 2344      ; 3 uses
  %i.uv = getelementptr i8, ptr %0, i64 2376
  %i.uw = getelementptr i8, ptr %0, i64 2312      ; 3 uses
  %i.ux = getelementptr i8, ptr %0, i64 2280      ; 3 uses
  %i.uy = getelementptr i8, ptr %0, i64 2248      ; 3 uses
  %i.uz = getelementptr i8, ptr %0, i64 2352
  %i.va = getelementptr i8, ptr %0, i64 2320
  %i.vb = getelementptr i8, ptr %0, i64 2288
  %i.vc = getelementptr i8, ptr %0, i64 2256      ; 2 uses
  %i.vd = getelementptr i8, ptr %0, i64 2360      ; 3 uses
  %i.ve = getelementptr i8, ptr %0, i64 2392
  %i.vf = getelementptr i8, ptr %0, i64 2328      ; 3 uses
  %i.vg = getelementptr i8, ptr %0, i64 2296      ; 3 uses
  %i.vh = getelementptr i8, ptr %0, i64 2264      ; 2 uses
  %i.vi = getelementptr inbounds nuw i8, ptr %0, i64 2208
  %i.vj = getelementptr inbounds nuw i8, ptr %0, i64 2240
  %i.vk = getelementptr inbounds nuw i8, ptr %i.g, i64 160
  %i.vl = getelementptr inbounds nuw i8, ptr %i.g, i64 128
  %i.vm = getelementptr inbounds nuw i8, ptr %i.g, i64 96
  %i.vn = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  %i.vo = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.vp = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.vq = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.vr = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.vs = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.vt = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.vu = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %i.vv = getelementptr inbounds nuw i8, ptr %i.h, i64 80
  %i.vw = getelementptr inbounds nuw i8, ptr %i.h, i64 72
  %i.vx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.vy = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  %i.vz = getelementptr inbounds nuw i8, ptr %i.h, i64 136
  %i.wa = getelementptr inbounds nuw i8, ptr %i.h, i64 152
  %i.wb = getelementptr inbounds nuw i8, ptr %i.h, i64 88
  %i.wc = getelementptr inbounds nuw i8, ptr %i.h, i64 144
  %i.wd = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.we = getelementptr inbounds nuw i8, ptr %i.h, i64 168
  %i.wf = getelementptr inbounds nuw i8, ptr %i.h, i64 176
  %i.wg = getelementptr inbounds nuw i8, ptr %i.g, i64 168
  %i.wh = getelementptr inbounds nuw i8, ptr %i.g, i64 136
  %i.wi = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  %i.wj = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.wk = getelementptr inbounds nuw i8, ptr %i.g, i64 184
  %i.wl = getelementptr inbounds nuw i8, ptr %i.g, i64 152
  %i.wm = getelementptr inbounds nuw i8, ptr %i.g, i64 88
  %i.wn = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %i.wo = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.wp = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %gep364.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %gep364.1.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  %gep364.2.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 104
  %gep364.2423.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %gep364.1.2.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 88
  %gep364.2.2.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 120
  %i.wq = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.wr = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.ws = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.wt = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.wu = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.wv = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.ww = getelementptr inbounds nuw i8, ptr %0, i64 2408 ; 2 uses
  %i.wx = getelementptr inbounds nuw i8, ptr %0, i64 1576
  %i.wy = getelementptr inbounds nuw i8, ptr %0, i64 2424 ; 2 uses
  %i.wz = getelementptr inbounds nuw i8, ptr %0, i64 2520
  %i.xa = getelementptr inbounds nuw i8, ptr %0, i64 2528
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %bb.fd
  %.0519 = phi i64 [ 0, %bb.fd ], [ %i.csc, %.backedge.backedge ] ; 2 uses
  %i.xb = load double, ptr %i.pj, align 8, !tbaa !197
  store double %i.xb, ptr %i.pk, align 8, !tbaa !97
  %i.xc = load i32, ptr %i.pl, align 8, !tbaa !79
  store i32 %i.xc, ptr %i.pm, align 8, !tbaa !98
  %i.xd = load i64, ptr %i.aj, align 8, !tbaa !301
  %i.xe = icmp sgt i64 %i.xd, 0
  br i1 %i.xe, label %bb.fe, label %bb.fu

bb.fe:                                            ; preds = %.backedge
  %i.xf = load ptr, ptr %i.pn, align 8, !tbaa !109
  %i.xg = load ptr, ptr %i.po, align 8, !tbaa !52
  %i.xh = load ptr, ptr %i.pp, align 8, !tbaa !58
  %i.xi = load ptr, ptr %i.pq, align 8, !tbaa !110
  %i.xj = call i32 %i.xf(ptr noundef %i.xg, ptr noundef %i.xh, ptr noundef %i.xi) #13
  %.not569 = icmp eq i32 %i.xj, 0
  br i1 %.not569, label %bb.fj, label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  %i.xk = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.xl = load i32, ptr %i.xk, align 4, !tbaa !107
  %i.xm = icmp eq i32 %i.xl, 3
  %i.xn = load double, ptr %i.qi, align 8, !tbaa !77 ; 2 uses
  br i1 %i.xm, label %bb.fg, label %bb.fh

bb.fg:                                            ; preds = %bb.ff
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @cvProcessError(ptr noundef nonnull %0, i32 noundef -22, i32 noundef 3443, ptr noundef nonnull @__func__.CVode, ptr noundef nonnull @.str, ptr noundef nonnull @.str.52, double noundef %i.xn)
  br label %bb.fi

bb.fh:                                            ; preds = %bb.ff
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @cvProcessError(ptr noundef nonnull %0, i32 noundef -22, i32 noundef 3448, ptr noundef nonnull @__func__.CVode, ptr noundef nonnull @.str, ptr noundef nonnull @.str.53, double noundef %i.xn)
  br label %bb.fi

bb.fi:                                            ; preds = %bb.fh, %bb.fg
  %i.xo = load double, ptr %i.qi, align 8, !tbaa !77 ; 2 uses
  store double %i.xo, ptr %3, align 8, !tbaa !29
  %i.xp = getelementptr inbounds nuw i8, ptr %0, i64 1040
  store double %i.xo, ptr %i.xp, align 8, !tbaa !191
  %i.xq = load ptr, ptr %i.po, align 8, !tbaa !52
  call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.xq, ptr noundef nonnull %2) #13
  br label %bb.pc

bb.fj:                                            ; preds = %bb.fe
  %i.xr = load i32, ptr %i.pr, align 8, !tbaa !121
  %.not570 = icmp eq i32 %i.xr, 0
  br i1 %.not570, label %bb.fn, label %bb.fk

bb.fk:                                            ; preds = %bb.fj
  %i.xs = load i32, ptr %i.ps, align 8, !tbaa !192
  %.not571 = icmp eq i32 %i.xs, 0
  br i1 %.not571, label %bb.fn, label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  %i.xt = load ptr, ptr %i.pt, align 8, !tbaa !52
  %i.xu = load ptr, ptr %i.pu, align 8, !tbaa !114
  %i.xv = call fastcc i32 @cvQuadEwtSet(ptr noundef %0, ptr noundef %i.xt, ptr noundef %i.xu)
  %.not572 = icmp eq i32 %i.xv, 0
  br i1 %.not572, label %bb.fn, label %bb.fm

bb.fm:                                            ; preds = %bb.fl
  %i.xw = load double, ptr %i.qi, align 8, !tbaa !77
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @cvProcessError(ptr noundef nonnull %0, i32 noundef -22, i32 noundef 3463, ptr noundef nonnull @__func__.CVode, ptr noundef nonnull @.str, ptr noundef nonnull @.str.54, double noundef %i.xw)
  %i.xx = load double, ptr %i.qi, align 8, !tbaa !77 ; 2 uses
  store double %i.xx, ptr %3, align 8, !tbaa !29
  %i.xy = getelementptr inbounds nuw i8, ptr %0, i64 1040
  store double %i.xx, ptr %i.xy, align 8, !tbaa !191
  %i.xz = load ptr, ptr %i.po, align 8, !tbaa !52
  call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.xz, ptr noundef nonnull %2) #13
  br label %bb.pc

bb.fn:                                            ; preds = %bb.fl, %bb.fk, %bb.fj
  %i.ya = load i32, ptr %i.pv, align 4, !tbaa !141
  %.not573 = icmp eq i32 %i.ya, 0
  br i1 %.not573, label %bb.fq, label %bb.fo

bb.fo:                                            ; preds = %bb.fn
  %i.yb = load ptr, ptr %i.pw, align 8, !tbaa !135
  %i.yc = load ptr, ptr %i.px, align 8, !tbaa !145
  %i.yd = call fastcc i32 @cvSensEwtSet(ptr noundef %0, ptr noundef %i.yb, ptr noundef %i.yc)
  %.not574 = icmp eq i32 %i.yd, 0
  br i1 %.not574, label %bb.fq, label %bb.fp

bb.fp:                                            ; preds = %bb.fo
  %i.ye = load double, ptr %i.qi, align 8, !tbaa !77
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @cvProcessError(ptr noundef nonnull %0, i32 noundef -22, i32 noundef 3477, ptr noundef nonnull @__func__.CVode, ptr noundef nonnull @.str, ptr noundef nonnull @.str.55, double noundef %i.ye)
  %i.yf = load double, ptr %i.qi, align 8, !tbaa !77 ; 2 uses
  store double %i.yf, ptr %3, align 8, !tbaa !29
  %i.yg = getelementptr inbounds nuw i8, ptr %0, i64 1040
  store double %i.yf, ptr %i.yg, align 8, !tbaa !191
  %i.yh = load ptr, ptr %i.po, align 8, !tbaa !52
  call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.yh, ptr noundef nonnull %2) #13
  br label %bb.pc

bb.fq:                                            ; preds = %bb.fo, %bb.fn
  %i.yi = load i32, ptr %i.py, align 8, !tbaa !173
  %.not575 = icmp eq i32 %i.yi, 0
  br i1 %.not575, label %bb.fu, label %bb.fr

bb.fr:                                            ; preds = %bb.fq
  %i.yj = load i32, ptr %i.pz, align 4, !tbaa !193
  %.not576 = icmp eq i32 %i.yj, 0
  br i1 %.not576, label %bb.fu, label %bb.fs

bb.fs:                                            ; preds = %bb.fr
  %i.yk = load ptr, ptr %i.qa, align 8, !tbaa !135
  %i.yl = load ptr, ptr %i.qb, align 8, !tbaa !166
  %i.ym = call fastcc i32 @cvQuadSensEwtSet(ptr noundef %0, ptr noundef %i.yk, ptr noundef %i.yl)
  %.not577 = icmp eq i32 %i.ym, 0
  br i1 %.not577, label %bb.fu, label %bb.ft

bb.ft:                                            ; preds = %bb.fs
  %i.yn = load double, ptr %i.qi, align 8, !tbaa !77
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @cvProcessError(ptr noundef nonnull %0, i32 noundef -22, i32 noundef 3491, ptr noundef nonnull @__func__.CVode, ptr noundef nonnull @.str, ptr noundef nonnull @.str.56, double noundef %i.yn)
  %i.yo = load double, ptr %i.qi, align 8, !tbaa !77 ; 2 uses
  store double %i.yo, ptr %3, align 8, !tbaa !29
  %i.yp = getelementptr inbounds nuw i8, ptr %0, i64 1040
  store double %i.yo, ptr %i.yp, align 8, !tbaa !191
  %i.yq = load ptr, ptr %i.po, align 8, !tbaa !52
  call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.yq, ptr noundef nonnull %2) #13
  br label %bb.pc

bb.fu:                                            ; preds = %bb.fq, %bb.fr, %bb.fs, %.backedge
  %i.yr = load i64, ptr %i.qc, align 8, !tbaa !27 ; 2 uses
  %i.ys = icmp slt i64 %i.yr, 1
  %.not578 = icmp slt i64 %.0519, %i.yr
  %or.cond597 = select i1 %i.ys, i1 true, i1 %.not578
  br i1 %or.cond597, label %bb.fw, label %bb.fv

bb.fv:                                            ; preds = %bb.fu
  %i.yt = load double, ptr %i.qi, align 8, !tbaa !77
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @cvProcessError(ptr noundef nonnull %0, i32 noundef -1, i32 noundef 3504, ptr noundef nonnull @__func__.CVode, ptr noundef nonnull @.str, ptr noundef nonnull @.str.57, double noundef %i.yt)
  %i.yu = load double, ptr %i.qi, align 8, !tbaa !77 ; 2 uses
  store double %i.yu, ptr %3, align 8, !tbaa !29
  %i.yv = getelementptr inbounds nuw i8, ptr %0, i64 1040
  store double %i.yu, ptr %i.yv, align 8, !tbaa !191
  %i.yw = load ptr, ptr %i.po, align 8, !tbaa !52
  call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.yw, ptr noundef nonnull %2) #13
  br label %bb.pc

bb.fw:                                            ; preds = %bb.fu
  %i.yx = load ptr, ptr %i.po, align 8, !tbaa !52
  %i.yy = load ptr, ptr %i.pp, align 8, !tbaa !58
  %i.yz = call double @N_VWrmsNorm(ptr noundef %i.yx, ptr noundef %i.yy) #13 ; 4 uses
  %i.za = load i32, ptr %i.pr, align 8, !tbaa !121
  %.not579 = icmp eq i32 %i.za, 0
  br i1 %.not579, label %bb.fz, label %bb.fx

bb.fx:                                            ; preds = %bb.fw
  %i.zb = load i32, ptr %i.ps, align 8, !tbaa !192
  %.not580 = icmp eq i32 %i.zb, 0
  br i1 %.not580, label %bb.fz, label %bb.fy

bb.fy:                                            ; preds = %bb.fx
  %i.zc = load ptr, ptr %i.pt, align 8, !tbaa !52
  %i.zd = load ptr, ptr %i.pu, align 8, !tbaa !114
  %i.ze = call double @N_VWrmsNorm(ptr noundef %i.zc, ptr noundef %i.zd) #13 ; 2 uses
  %i.zf = fcmp ogt double %i.yz, %i.ze
  %..i600 = select i1 %i.zf, double %i.yz, double %i.ze
  br label %bb.fz

bb.fz:                                            ; preds = %bb.fy, %bb.fx, %bb.fw
  %.0512 = phi double [ %..i600, %bb.fy ], [ %i.yz, %bb.fx ], [ %i.yz, %bb.fw ] ; 4 uses
  %i.zg = load i32, ptr %i.pv, align 4, !tbaa !141
  %.not581 = icmp eq i32 %i.zg, 0
  br i1 %.not581, label %bb.gc, label %bb.ga

bb.ga:                                            ; preds = %bb.fz
  %i.zh = load i32, ptr %i.qd, align 8, !tbaa !202
  %.not582 = icmp eq i32 %i.zh, 0
  br i1 %.not582, label %bb.gc, label %bb.gb

bb.gb:                                            ; preds = %bb.ga
  %i.zi = load ptr, ptr %i.pw, align 8, !tbaa !135
  %i.zj = load ptr, ptr %i.px, align 8, !tbaa !145
  %i.zk = load i32, ptr %i.qe, align 8, !tbaa !129
  %i.zl = load ptr, ptr %i.qf, align 8, !tbaa !74
  %i.zm = call i32 @N_VWrmsNormVectorArray(i32 noundef %i.zk, ptr noundef %i.zi, ptr noundef %i.zj, ptr noundef %i.zl) #13 ; 0 uses
  %i.zn = load ptr, ptr %i.qf, align 8, !tbaa !74 ; 6 uses
  %i.zo = load double, ptr %i.zn, align 8, !tbaa !29 ; 3 uses
end_hunk_1
begin_hunk_2_@CVode:bb.a
  store double %i.ccy, ptr %gep353.1.i.i.i, align 8, !tbaa !29
  %gep353.2.i.i.i = getelementptr inbounds nuw i8, ptr %invariant.gep352.i.i.i, i64 96
  store double 0.000000e+00, ptr %gep353.2.i.i.i, align 8, !tbaa !29
  %gep353.3.i.i.i = getelementptr inbounds nuw i8, ptr %invariant.gep352.i.i.i, i64 128
  store double %i.ccw, ptr %gep353.3.i.i.i, align 8, !tbaa !29
  %gep353.4.i.i.i = getelementptr inbounds nuw i8, ptr %invariant.gep352.i.i.i, i64 160
  store double %i.cci, ptr %gep353.4.i.i.i, align 8, !tbaa !29
  %indvars.iv.next.i.i298.i = add nuw nsw i64 %indvars.iv.i.i297.i, 1 ; 2 uses
  %exitcond.not.i.i299.i = icmp eq i64 %indvars.iv.next.i.i298.i, 4
  br i1 %exitcond.not.i.i299.i, label %bb.ni, label %bb.ng

bb.ni:                                            ; preds = %bb.nh
  %i.cdd = load double, ptr %i.vp, align 8, !tbaa !29 ; 4 uses
  %i.cde = load double, ptr %i.vq, align 16, !tbaa !29 ; 4 uses
  %i.cdf = load double, ptr %i.vr, align 8, !tbaa !29 ; 4 uses
  %i.cdg = fcmp olt double %i.cde, %i.cdf
  %i.cdh = select i1 %i.cdg, double %i.cde, double %i.cdf ; 2 uses
  %i.cdi = fcmp olt double %i.cdd, %i.cdh
  %..i.i300.i = select i1 %i.cdi, double %i.cdd, double %i.cdh
  %i.cdj = fcmp olt double %..i.i300.i, 1.000000e-08
  br i1 %i.cdj, label %bb.nj, label %bb.nl

bb.nj:                                            ; preds = %bb.ni
  %i.cdk = fcmp ogt double %i.cde, %i.cdf
  %i.cdl = select i1 %i.cdk, double %i.cde, double %i.cdf ; 2 uses
  %i.cdm = fcmp ogt double %i.cdd, %i.cdl
  %i.cdn = select i1 %i.cdm, double %i.cdd, double %i.cdl
  %i.cdo = fcmp ogt double %i.cdn, 2.500000e-07
  br i1 %i.cdo, label %cvSLdet.exit.thread.i.i, label %bb.nk

bb.nk:                                            ; preds = %bb.nj
  %i.cdp = load double, ptr %i.wq, align 8, !tbaa !29 ; 2 uses
  %i.cdq = load double, ptr %i.wr, align 16, !tbaa !29 ; 2 uses
  %i.cdr = fadd double %i.cdp, %i.cdq
  %i.cds = load double, ptr %i.ws, align 8, !tbaa !29 ; 2 uses
  %i.cdt = fadd double %i.cdr, %i.cds
  %i.cdu = fdiv double %i.cdt, 3.000000e+00       ; 4 uses
  %i.cdv = fsub double %i.cdp, %i.cdu
  %i.cdw = call double @llvm.fabs.f64(double %i.cdv) ; 2 uses
  %i.cdx = fsub double %i.cdq, %i.cdu
  %i.cdy = call double @llvm.fabs.f64(double %i.cdx) ; 2 uses
  %i.cdz = fcmp ogt double %i.cdw, %i.cdy
  %i.cea = select i1 %i.cdz, double %i.cdw, double %i.cdy ; 2 uses
  %i.ceb = fsub double %i.cds, %i.cdu
  %i.cec = call double @llvm.fabs.f64(double %i.ceb) ; 2 uses
  %i.ced = fcmp ogt double %i.cea, %i.cec
  %i.cee = select i1 %i.ced, double %i.cea, double %i.cec
  %i.cef = fcmp ogt double %i.cee, 5.000000e-04
  br i1 %i.cef, label %cvSLdet.exit.thread.i.i, label %bb.nq

bb.nl:                                            ; preds = %bb.ni
  %i.ceg = load double, ptr %i.vs, align 8, !tbaa !29 ; 3 uses
  %i.ceh = call double @llvm.fabs.f64(double %i.ceg)
  %i.cei = load double, ptr %i.vt, align 8, !tbaa !29 ; 2 uses
  %i.cej = fmul double %i.cei, 1.000000e-10       ; 2 uses
  %i.cek = fcmp olt double %i.ceh, %i.cej
  br i1 %i.cek, label %cvSLdet.exit.thread.i.i, label %bb.nm

bb.nm:                                            ; preds = %bb.nl
  %i.cel = load double, ptr %i.vu, align 16, !tbaa !29
  %i.cem = fneg double %i.cel
  %i.cen = fdiv double %i.cem, %i.ceg             ; 3 uses
  %i.ceo = load double, ptr %i.vv, align 16, !tbaa !29
  %i.cep = load double, ptr %i.vw, align 8, !tbaa !29 ; 2 uses
  %i.ceq = call double @llvm.fmuladd.f64(double %i.cen, double %i.cep, double %i.ceo) ; 2 uses
  %i.cer = call double @llvm.fabs.f64(double %i.ceq)
  %i.ces = load double, ptr %i.vx, align 16, !tbaa !29 ; 4 uses
  %i.cet = fmul double %i.ces, 1.000000e-10       ; 2 uses
  %i.ceu = fcmp olt double %i.cer, %i.cet
  br i1 %i.ceu, label %cvSLdet.exit.thread.i.i, label %bb.nn

bb.nn:                                            ; preds = %bb.nm
  %i.cev = load double, ptr %i.vy, align 8, !tbaa !29
  %i.cew = fneg double %i.cev
  %i.cex = fdiv double %i.cew, %i.ceg             ; 3 uses
  %i.cey = load double, ptr %i.vz, align 8, !tbaa !29 ; 2 uses
  %i.cez = load double, ptr %i.wa, align 8, !tbaa !29
  %i.cfa = call double @llvm.fmuladd.f64(double %i.cex, double %i.cey, double %i.cez)
  %i.cfb = load double, ptr %i.wb, align 8, !tbaa !29
  %i.cfc = call double @llvm.fmuladd.f64(double %i.cex, double %i.cep, double %i.cfb)
  %i.cfd = load double, ptr %i.wc, align 16, !tbaa !29
  %i.cfe = call double @llvm.fmuladd.f64(double %i.cen, double %i.cey, double %i.cfd)
  %i.cff = fneg double %i.cfc
  %i.cfg = fdiv double %i.cff, %i.ceq             ; 2 uses
  %i.cfh = call double @llvm.fmuladd.f64(double %i.cfg, double %i.cfe, double %i.cfa) ; 2 uses
  %i.cfi = call double @llvm.fabs.f64(double %i.cfh)
  %i.cfj = load double, ptr %i.wd, align 8, !tbaa !29 ; 4 uses
  %i.cfk = fmul double %i.cfj, 1.000000e-10       ; 2 uses
  %i.cfl = fcmp olt double %i.cfi, %i.cfk
  br i1 %i.cfl, label %cvSLdet.exit.thread.i.i, label %bb.no

bb.no:                                            ; preds = %bb.nn
  %i.cfm = load <2 x double>, ptr %i.we, align 8
  %i.cfn = load <2 x double>, ptr %i.wf, align 16, !tbaa !29
  %i.cfo = insertelement <2 x double> poison, double %i.cen, i64 0
  %i.cfp = insertelement <2 x double> %i.cfo, double %i.cex, i64 1
  %i.cfq = shufflevector <2 x double> %i.cfm, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cfr = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cfp, <2 x double> %i.cfq, <2 x double> %i.cfn) ; 2 uses
  %i.cfs = extractelement <2 x double> %i.cfr, i64 0
  %i.cft = extractelement <2 x double> %i.cfr, i64 1
  %i.cfu = call double @llvm.fmuladd.f64(double %i.cfg, double %i.cfs, double %i.cft)
  %i.cfv = fneg double %i.cfu
  %i.cfw = fdiv double %i.cfv, %i.cfh             ; 9 uses
  %i.cfx = fcmp olt double %i.cfw, 1.000000e-10
  %i.cfy = fcmp ogt double %i.cfw, 1.000000e+02
  %or.cond.i.i301.i = or i1 %i.cfx, %i.cfy
  br i1 %or.cond.i.i301.i, label %cvSLdet.exit.thread.i.i, label %.preheader338.i.i.i

.preheader338.i.i.i:                              ; preds = %bb.no
  %i.cfz = fmul double %i.cfw, %i.cfw             ; 2 uses
  %i.cga = load <2 x double>, ptr %i.wg, align 8, !tbaa !29 ; 4 uses
  %i.cgb = load <2 x double>, ptr %i.wh, align 8, !tbaa !29 ; 4 uses
  %i.cgc = load <2 x double>, ptr %i.wi, align 8, !tbaa !29 ; 5 uses
  %i.cgd = load <2 x double>, ptr %i.wj, align 8, !tbaa !29 ; 5 uses
  %i.cge = insertelement <2 x double> poison, double %i.cfw, i64 0
  %i.cgf = shufflevector <2 x double> %i.cge, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cgg = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cgf, <2 x double> %i.cgd, <2 x double> %i.cgc)
  %i.cgh = insertelement <2 x double> poison, double %i.cfz, i64 0
  %i.cgi = shufflevector <2 x double> %i.cgh, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cgj = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cgi, <2 x double> %i.cgg, <2 x double> %i.cgb)
  %i.cgk = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cgf, <2 x double> %i.cgj, <2 x double> %i.cga) ; 2 uses
  %i.cgl = load double, ptr %i.wk, align 8, !tbaa !29 ; 3 uses
  %i.cgm = load double, ptr %i.wl, align 8, !tbaa !29 ; 4 uses
  %i.cgn = load double, ptr %i.wm, align 8, !tbaa !29 ; 4 uses
  %i.cgo = load double, ptr %i.wn, align 8, !tbaa !29 ; 4 uses
  %i.cgp = call double @llvm.fmuladd.f64(double %i.cfw, double %i.cgo, double %i.cgn)
  %i.cgq = call double @llvm.fmuladd.f64(double %i.cfz, double %i.cgp, double %i.cgm)
  %i.cgr = call double @llvm.fmuladd.f64(double %i.cfw, double %i.cgq, double %i.cgl) ; 2 uses
  %i.cgs = call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.cgk)
  %i.cgt = insertelement <2 x double> poison, double %i.cei, i64 0 ; 2 uses
  %i.cgu = insertelement <2 x double> %i.cgt, double %i.ces, i64 1 ; 2 uses
  %i.cgv = fdiv <2 x double> %i.cgs, %i.cgu       ; 2 uses
  %i.cgw = extractelement <2 x double> %i.cgv, i64 0 ; 2 uses
  %i.cgx = fcmp ogt double %i.cgw, 0.000000e+00
  %.1293.i.i.i = select i1 %i.cgx, double %i.cgw, double 0.000000e+00 ; 2 uses
  %i.cgy = extractelement <2 x double> %i.cgv, i64 1 ; 2 uses
  %i.cgz = fcmp ogt double %i.cgy, %.1293.i.i.i
  %.1293.1.i.i.i = select i1 %i.cgz, double %i.cgy, double %.1293.i.i.i ; 2 uses
  %i.cha = call double @llvm.fabs.f64(double %i.cgr)
  %i.chb = fdiv double %i.cha, %i.cfj             ; 2 uses
  %i.chc = fcmp ogt double %i.chb, %.1293.1.i.i.i
  %.1293.2.i.i.i = select i1 %i.chc, double %i.chb, double %.1293.1.i.i.i
  %i.chd = fcmp olt double %.1293.2.i.i.i, 1.000000e-03
  br i1 %i.chd, label %bb.nq, label %.preheader335.i.i.i.preheader

.preheader335.i.i.i.preheader:                    ; preds = %.preheader338.i.i.i
  %i.che = insertelement <2 x double> poison, double %i.cej, i64 0
  %i.chf = insertelement <2 x double> %i.che, double %i.cet, i64 1
  %i.chg = shufflevector <2 x double> %i.cgd, <2 x double> poison, <2 x i32> zeroinitializer
  %i.chh = shufflevector <2 x double> %i.cgc, <2 x double> poison, <2 x i32> zeroinitializer
  %i.chi = shufflevector <2 x double> %i.cgb, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.chj = shufflevector <2 x double> %i.cga, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.chk = extractelement <2 x double> %i.cga, i64 1
  %i.chl = shufflevector <2 x double> %i.cgt, <2 x double> poison, <2 x i32> zeroinitializer
  %i.chm = shufflevector <2 x double> %i.cgd, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.chn = shufflevector <2 x double> %i.cgc, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.cho = shufflevector <2 x double> %i.cgb, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.chp = shufflevector <2 x double> %i.cga, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.chq = insertelement <2 x double> poison, double %i.ces, i64 1
  %i.chr = insertelement <2 x double> poison, double %i.cgo, i64 0
  %i.chs = shufflevector <2 x double> %i.chr, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cht = insertelement <2 x double> poison, double %i.cgn, i64 0
  %i.chu = shufflevector <2 x double> %i.cht, <2 x double> poison, <2 x i32> zeroinitializer
  %i.chv = insertelement <2 x double> poison, double %i.cgm, i64 0
  %i.chw = shufflevector <2 x double> %i.chv, <2 x double> poison, <2 x i32> zeroinitializer
  %i.chx = insertelement <2 x double> poison, double %i.cgl, i64 0
  %i.chy = shufflevector <2 x double> %i.chx, <2 x double> poison, <2 x i32> zeroinitializer
  %i.chz = insertelement <2 x double> %i.cho, double %i.cgn, i64 1
  %i.cia = insertelement <2 x double> poison, double %i.cfj, i64 0
  %i.cib = shufflevector <2 x double> %i.cia, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cic = insertelement <2 x double> %i.chi, double %i.cgm, i64 0
  %i.cid = insertelement <2 x double> %i.chj, double %i.cgl, i64 0
  %i.cie = insertelement <2 x double> poison, double %i.ces, i64 0
  %i.cif = insertelement <2 x double> %i.cie, double %i.cfj, i64 1
  br label %.preheader335.i.i.i

.preheader335.i.i.i:                              ; preds = %.preheader335.i.i.i.preheader, %.preheader.i.i303.i
  %.sroa.10.0.i.i.i = phi double [ %i.cmd, %.preheader.i.i303.i ], [ %i.cgr, %.preheader335.i.i.i.preheader ]
  %.0299376.i.i.i = phi double [ %i.clz, %.preheader.i.i303.i ], [ %i.cfw, %.preheader335.i.i.i.preheader ] ; 5 uses
  %.0305375.i.i.i = phi i32 [ %.2307.2.i.i.i, %.preheader.i.i303.i ], [ 0, %.preheader335.i.i.i.preheader ]
  %.0308374.i.i.i = phi i32 [ %i.cme, %.preheader.i.i303.i ], [ 1, %.preheader335.i.i.i.preheader ]
  %i.cig = phi <2 x double> [ %i.cmg, %.preheader.i.i303.i ], [ %i.cgk, %.preheader335.i.i.i.preheader ]
  %i.cih = fmul double %.0299376.i.i.i, %.0299376.i.i.i ; 2 uses
  %i.cii = fmul double %.0299376.i.i.i, 4.000000e+00 ; 2 uses
  %i.cij = fneg <2 x double> %i.cig
  %i.cik = fmul double %i.cgo, %i.cii
  %i.cil = fneg double %.sroa.10.0.i.i.i
  %i.cim = insertelement <2 x double> poison, double %i.cii, i64 0
  %i.cin = shufflevector <2 x double> %i.cim, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cio = fmul <2 x double> %i.cgd, %i.cin
  %i.cip = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cgc, <2 x double> splat (double 3.000000e+00), <2 x double> %i.cio)
  %i.ciq = insertelement <2 x double> poison, double %i.cih, i64 0
  %i.cir = shufflevector <2 x double> %i.ciq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cis = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cir, <2 x double> %i.cip, <2 x double> %i.cgb) ; 2 uses
  %i.cit = call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.cis)
  %i.ciu = fcmp ogt <2 x double> %i.cit, %i.chf
  %i.civ = fdiv <2 x double> %i.cij, %i.cis
  %i.ciw = select <2 x i1> %i.ciu, <2 x double> %i.civ, <2 x double> zeroinitializer
  %i.cix = insertelement <2 x double> poison, double %.0299376.i.i.i, i64 0
  %i.ciy = shufflevector <2 x double> %i.cix, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ciz = fadd <2 x double> %i.ciy, %i.ciw       ; 9 uses
  store <2 x double> %i.ciz, ptr %i.wo, align 8, !tbaa !29
  %i.cja = fmul <2 x double> %i.ciz, %i.ciz       ; 3 uses
  %i.cjb = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ciz, <2 x double> %i.chg, <2 x double> %i.chh)
  %i.cjc = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cja, <2 x double> %i.cjb, <2 x double> %i.chi)
  %i.cjd = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ciz, <2 x double> %i.cjc, <2 x double> %i.chj) ; 2 uses
  store <2 x double> %i.cjd, ptr %gep364.i.i.i, align 8, !tbaa !29
  %i.cje = call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.cjd)
  %i.cjf = fdiv <2 x double> %i.cje, %i.chl       ; 3 uses
  %i.cjg = fcmp ogt <2 x double> %i.cjf, zeroinitializer ; 2 uses
  %i.cjh = extractelement <2 x i1> %i.cjg, i64 0
  %i.cji = extractelement <2 x double> %i.cjf, i64 0
  %.1291.i.i.i = select i1 %i.cjh, double %i.cji, double 0.000000e+00 ; 2 uses
  %i.cjj = extractelement <2 x i1> %i.cjg, i64 1
  %i.cjk = extractelement <2 x double> %i.cjf, i64 1
  %.1291.1422.i.i.i = select i1 %i.cjj, double %i.cjk, double 0.000000e+00
  %i.cjl = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ciz, <2 x double> %i.chm, <2 x double> %i.chn)
  %i.cjm = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cja, <2 x double> %i.cjl, <2 x double> %i.cho)
  %i.cjn = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ciz, <2 x double> %i.cjm, <2 x double> %i.chp) ; 3 uses
  %i.cjo = extractelement <2 x double> %i.cjn, i64 0
  %i.cjp = call double @llvm.fabs.f64(double %i.cjo)
  %i.cjq = call double @llvm.fmuladd.f64(double %i.cgn, double 3.000000e+00, double %i.cik)
  %i.cjr = call double @llvm.fmuladd.f64(double %i.cih, double %i.cjq, double %i.cgm) ; 2 uses
  %i.cjs = call double @llvm.fabs.f64(double %i.cjr)
  %i.cjt = fcmp ogt double %i.cjs, %i.cfk
  %i.cju = insertelement <2 x double> poison, double %i.cil, i64 0
  %i.cjv = insertelement <2 x double> %i.cju, double %i.cjp, i64 1
  %i.cjw = insertelement <2 x double> %i.chq, double %i.cjr, i64 0
  %i.cjx = fdiv <2 x double> %i.cjv, %i.cjw       ; 2 uses
  %i.cjy = extractelement <2 x double> %i.cjx, i64 0
  %.sroa.8.0.i.i.i = select i1 %i.cjt, double %i.cjy, double 0.000000e+00
  %i.cjz = fadd double %.0299376.i.i.i, %.sroa.8.0.i.i.i ; 6 uses
  store double %i.cjz, ptr %i.wp, align 8, !tbaa !29
  %i.cka = extractelement <2 x double> %i.cjx, i64 1 ; 2 uses
  %i.ckb = fcmp ogt double %i.cka, %.1291.i.i.i
  %.1291.1.i.i.i = select i1 %i.ckb, double %i.cka, double %.1291.i.i.i ; 2 uses
  store <2 x double> %i.cjn, ptr %gep364.1.i.i.i, align 8, !tbaa !29
  %i.ckc = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ciz, <2 x double> %i.chs, <2 x double> %i.chu)
  %i.ckd = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cja, <2 x double> %i.ckc, <2 x double> %i.chw)
  %i.cke = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ciz, <2 x double> %i.ckd, <2 x double> %i.chy) ; 3 uses
  store <2 x double> %i.cke, ptr %gep364.2.i.i.i, align 8, !tbaa !29
  %i.ckf = fmul double %i.cjz, %i.cjz
  %i.ckg = insertelement <2 x double> poison, double %i.cjz, i64 0
  %i.ckh = shufflevector <2 x double> %i.ckg, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cki = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ckh, <2 x double> %i.cgd, <2 x double> %i.cgc) ; 2 uses
  %i.ckj = insertelement <2 x double> poison, double %i.ckf, i64 0 ; 2 uses
  %i.ckk = insertelement <2 x double> %i.ckj, double %i.cjz, i64 1
  %i.ckl = shufflevector <2 x double> %i.cki, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.ckm = insertelement <2 x double> %i.ckl, double %i.cgo, i64 1
  %i.ckn = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ckk, <2 x double> %i.ckm, <2 x double> %i.chz) ; 2 uses
  %i.cko = shufflevector <2 x double> %i.ckj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ckp = shufflevector <2 x double> %i.ckn, <2 x double> %i.cki, <2 x i32> <i32 1, i32 2>
  %i.ckq = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cko, <2 x double> %i.ckp, <2 x double> %i.cic)
  %i.ckr = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ckh, <2 x double> %i.ckq, <2 x double> %i.cid) ; 4 uses
  %i.cks = extractelement <2 x double> %i.ckr, i64 0
  store double %i.cks, ptr %gep364.2.2.i.i.i, align 8, !tbaa !29
  %i.ckt = shufflevector <2 x double> %i.ckr, <2 x double> %i.cke, <2 x i32> <i32 0, i32 2>
  %i.cku = call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.ckt)
  %i.ckv = fdiv <2 x double> %i.cku, %i.cib       ; 3 uses
  %i.ckw = extractelement <2 x double> %i.ckv, i64 1 ; 2 uses
  %i.ckx = fcmp ogt double %i.ckw, %.1291.1.i.i.i
  %.1291.2.i.i.i = select i1 %i.ckx, double %i.ckw, double %.1291.1.i.i.i ; 3 uses
  %i.cky = extractelement <2 x double> %i.ckr, i64 1
  store double %i.cky, ptr %gep364.2423.i.i.i, align 8, !tbaa !29
  %i.ckz = shufflevector <2 x double> %i.cjn, <2 x double> %i.ckr, <2 x i32> <i32 3, i32 1>
  %i.cla = call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.ckz)
  %i.clb = fdiv <2 x double> %i.cla, %i.cgu       ; 2 uses
  %i.clc = insertelement <2 x double> <double 0.000000e+00, double poison>, double %.1291.1422.i.i.i, i64 1 ; 2 uses
  %i.cld = fcmp ogt <2 x double> %i.clb, %i.clc
  %i.cle = select <2 x i1> %i.cld, <2 x double> %i.clb, <2 x double> %i.clc ; 2 uses
  %i.clf = extractelement <2 x double> %i.ckn, i64 0
  %i.clg = call double @llvm.fmuladd.f64(double %i.cjz, double %i.clf, double %i.chk) ; 2 uses
  store double %i.clg, ptr %gep364.1.2.i.i.i, align 8, !tbaa !29
  %i.clh = insertelement <2 x double> %i.cke, double %i.clg, i64 0
  %i.cli = call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.clh)
  %i.clj = fdiv <2 x double> %i.cli, %i.cif       ; 2 uses
  %i.clk = fcmp ogt <2 x double> %i.clj, %i.cle
  %i.cll = select <2 x i1> %i.clk, <2 x double> %i.clj, <2 x double> %i.cle ; 3 uses
  %i.clm = fadd double %.1291.2.i.i.i, 1.000000e+00 ; 2 uses
  %i.cln = fcmp olt double %.1291.2.i.i.i, %i.clm ; 2 uses
  %.2307.i.i.i = select i1 %i.cln, i32 1, i32 %.0305375.i.i.i
  %.2.i.i302.i = select i1 %i.cln, double %.1291.2.i.i.i, double %i.clm ; 2 uses
  %i.clo = insertelement <2 x double> %i.ckv, double %.2.i.i302.i, i64 1
  %i.clp = fcmp ogt <2 x double> %i.clo, %i.cll   ; 2 uses
  %i.clq = extractelement <2 x i1> %i.clp, i64 1
  %.2307.1.i.i.i = select i1 %i.clq, i32 2, i32 %.2307.i.i.i
  %i.clr = shufflevector <2 x double> %i.ckv, <2 x double> %i.cll, <2 x i32> <i32 0, i32 3>
  %i.cls = insertelement <2 x double> %i.cll, double %.2.i.i302.i, i64 1
  %i.clt = select <2 x i1> %i.clp, <2 x double> %i.clr, <2 x double> %i.cls ; 2 uses
  %i.clu = extractelement <2 x double> %i.clt, i64 0 ; 2 uses
  %i.clv = extractelement <2 x double> %i.clt, i64 1 ; 2 uses
  %i.clw = fcmp olt double %i.clu, %i.clv         ; 2 uses
  %.2307.2.i.i.i = select i1 %i.clw, i32 3, i32 %.2307.1.i.i.i ; 2 uses
  %.2.2.i.i.i = select i1 %i.clw, double %i.clu, double %i.clv ; 2 uses
  %i.clx = zext nneg i32 %.2307.2.i.i.i to i64    ; 2 uses
  %i.cly = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.clx
  %i.clz = load double, ptr %i.cly, align 8, !tbaa !29 ; 2 uses
  %i.cma = fcmp olt double %.2.2.i.i.i, 1.000000e-03
  br i1 %i.cma, label %bb.np, label %.preheader.i.i303.i

.preheader.i.i303.i:                              ; preds = %.preheader335.i.i.i
  %invariant.gep371.i.i.i = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.clx ; 3 uses
  %gep372.i.i.i = getelementptr inbounds nuw i8, ptr %invariant.gep371.i.i.i, i64 32
  %i.cmb = load double, ptr %gep372.i.i.i, align 8, !tbaa !29
  %gep372.1.i.i.i = getelementptr inbounds nuw i8, ptr %invariant.gep371.i.i.i, i64 64
  %i.cmc = load double, ptr %gep372.1.i.i.i, align 8, !tbaa !29
  %gep372.2.i.i.i = getelementptr inbounds nuw i8, ptr %invariant.gep371.i.i.i, i64 96
  %i.cmd = load double, ptr %gep372.2.i.i.i, align 8, !tbaa !29
  %i.cme = add nuw nsw i32 %.0308374.i.i.i, 1     ; 2 uses
  %exitcond433.not.i.i.i = icmp eq i32 %i.cme, 4
  %i.cmf = insertelement <2 x double> poison, double %i.cmb, i64 0
  %i.cmg = insertelement <2 x double> %i.cmf, double %i.cmc, i64 1
  br i1 %exitcond433.not.i.i.i, label %bb.np, label %.preheader335.i.i.i

bb.np:                                            ; preds = %.preheader.i.i303.i, %.preheader335.i.i.i
  %.0302.i.i.i = phi i32 [ 0, %.preheader.i.i303.i ], [ 3, %.preheader335.i.i.i ]
  %i.cmh = fcmp ogt double %.2.2.i.i.i, 1.000000e-03
  br i1 %i.cmh, label %cvSLdet.exit.thread.i.i, label %bb.nq

bb.nq:                                            ; preds = %bb.np, %.preheader338.i.i.i, %bb.nk
  %.1303.i.i.i = phi i32 [ %.0302.i.i.i, %bb.np ], [ 1, %bb.nk ], [ 2, %.preheader338.i.i.i ] ; 2 uses
  %.2301.i.i.i = phi double [ %i.clz, %bb.np ], [ %i.cdu, %bb.nk ], [ %i.cfw, %.preheader338.i.i.i ] ; 22 uses
  %i.cmi = fmul double %.2301.i.i.i, %.2301.i.i.i ; 3 uses
  %i.cmj = load double, ptr %i.ux, align 8, !tbaa !29
  %i.cmk = fmul double %.2301.i.i.i, %i.cmj       ; 2 uses
  %i.cml = load double, ptr %i.uw, align 8, !tbaa !29 ; 2 uses
  %i.cmm = fmul double %.2301.i.i.i, %i.cml
  %i.cmn = fmul double %.2301.i.i.i, %i.cmm       ; 2 uses
  %i.cmo = load double, ptr %i.uu, align 8, !tbaa !29
  %i.cmp = fmul double %.2301.i.i.i, %i.cmo
  %i.cmq = fmul double %.2301.i.i.i, %i.cmp
  %i.cmr = fmul double %.2301.i.i.i, %i.cmq
  %i.cms = fsub double %i.cmk, %i.cmn             ; 4 uses
  %i.cmt = fsub double %i.cmn, %i.cmr
  %i.cmu = fsub double %i.cms, %i.cmt             ; 2 uses
  %i.cmv = call double @llvm.fabs.f64(double %i.cms)
  %i.cmw = load double, ptr %i.wt, align 8, !tbaa !29
  %i.cmx = fmul double %i.cmw, 1.000000e-10
  %i.cmy = fcmp olt double %i.cmv, %i.cmx
  br i1 %i.cmy, label %cvSLdet.exit.thread.i.i, label %bb.nr

bb.nr:                                            ; preds = %bb.nq
  %i.cmz = load double, ptr %i.uy, align 8, !tbaa !29
  %i.cna = fsub double %i.cmz, %i.cmk
  %i.cnb = fsub double %i.cna, %i.cms
  %i.cnc = fsub double %i.cnb, %i.cmu
  %i.cnd = fneg double %i.cnc
  %i.cne = fdiv double %i.cnd, %i.cms             ; 3 uses
  %i.cnf = fcmp olt double %i.cne, 1.000000e-10
  %i.cng = fcmp ogt double %i.cne, 4.000000e+00
  %or.cond3.i.i.i = or i1 %i.cnf, %i.cng
  br i1 %or.cond3.i.i.i, label %cvSLdet.exit.thread.i.i, label %bb.ns

bb.ns:                                            ; preds = %bb.nr
  %i.cnh = fdiv double %i.cmu, %i.cne
  %i.cni = fdiv double %i.cnh, %i.cmi
  %i.cnj = fadd double %i.cml, %i.cni
  %i.cnk = load double, ptr %i.vb, align 8, !tbaa !29
  %i.cnl = fmul double %.2301.i.i.i, %i.cnk       ; 2 uses
  %i.cnm = load double, ptr %i.va, align 8, !tbaa !29 ; 2 uses
  %i.cnn = fmul double %.2301.i.i.i, %i.cnm
  %i.cno = fmul double %.2301.i.i.i, %i.cnn       ; 2 uses
  %i.cnp = load double, ptr %i.uz, align 8, !tbaa !29
  %i.cnq = fmul double %.2301.i.i.i, %i.cnp
  %i.cnr = fmul double %.2301.i.i.i, %i.cnq
  %i.cns = fmul double %.2301.i.i.i, %i.cnr
  %i.cnt = fsub double %i.cnl, %i.cno             ; 4 uses
  %i.cnu = fsub double %i.cno, %i.cns
  %i.cnv = fsub double %i.cnt, %i.cnu             ; 2 uses
  %i.cnw = call double @llvm.fabs.f64(double %i.cnt)
  %i.cnx = load double, ptr %i.wu, align 16, !tbaa !29
  %i.cny = fmul double %i.cnx, 1.000000e-10
  %i.cnz = fcmp olt double %i.cnw, %i.cny
  br i1 %i.cnz, label %cvSLdet.exit.thread.i.i, label %bb.nt

bb.nt:                                            ; preds = %bb.ns
  %i.coa = load double, ptr %i.vc, align 8, !tbaa !29
  %i.cob = fsub double %i.coa, %i.cnl
  %i.coc = fsub double %i.cob, %i.cnt
  %i.cod = fsub double %i.coc, %i.cnv
  %i.coe = fneg double %i.cod
  %i.cof = fdiv double %i.coe, %i.cnt             ; 3 uses
  %i.cog = fcmp olt double %i.cof, 1.000000e-10
  %i.coh = fcmp ogt double %i.cof, 4.000000e+00
  %or.cond3.1.i.i.i = or i1 %i.cog, %i.coh
  br i1 %or.cond3.1.i.i.i, label %cvSLdet.exit.thread.i.i, label %bb.nu

bb.nu:                                            ; preds = %bb.nt
  %i.coi = fdiv double %i.cnv, %i.cof
  %i.coj = fdiv double %i.coi, %i.cmi
  %i.cok = fadd double %i.cnm, %i.coj             ; 3 uses
  %i.col = load double, ptr %i.vg, align 8, !tbaa !29
  %i.com = fmul double %.2301.i.i.i, %i.col       ; 2 uses
  %i.con = load double, ptr %i.vf, align 8, !tbaa !29 ; 2 uses
  %i.coo = fmul double %.2301.i.i.i, %i.con
  %i.cop = fmul double %.2301.i.i.i, %i.coo       ; 2 uses
  %i.coq = load double, ptr %i.vd, align 8, !tbaa !29
  %i.cor = fmul double %.2301.i.i.i, %i.coq
  %i.cos = fmul double %.2301.i.i.i, %i.cor
  %i.cot = fmul double %.2301.i.i.i, %i.cos
  %i.cou = fsub double %i.com, %i.cop             ; 4 uses
  %i.cov = fsub double %i.cop, %i.cot
end_hunk_2
