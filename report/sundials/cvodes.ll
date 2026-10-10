Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sundials/original/cvodes?download=true
inline.NumInlined: 74
inline.NumDeleted: 54
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 33
loop-unroll.NumUnrolled: 55
begin_hunk_0_@CVodeRootInit:bb.a
  tail call void @free(ptr noundef %i.aj) #13
  store ptr null, ptr %i.ai, align 8, !tbaa !184
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 2488 ; 2 uses
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
  br i1 %i.al, label %bb.l, label %bb.dr

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
end_hunk_0
begin_hunk_1_@CVode:bb.a

bb.fb:                                            ; preds = %bb.ew, %bb.ez, %bb.dz
  %i.pq = getelementptr inbounds nuw i8, ptr %0, i64 992 ; 24 uses
  %i.pr = getelementptr inbounds nuw i8, ptr %0, i64 1008 ; 3 uses
  %i.ps = getelementptr inbounds nuw i8, ptr %0, i64 960 ; 29 uses
  %i.pt = getelementptr inbounds nuw i8, ptr %0, i64 968 ; 3 uses
  %i.pu = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.pv = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 27 uses
  %i.pw = getelementptr inbounds nuw i8, ptr %0, i64 448 ; 9 uses
  %i.px = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.py = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 12 uses
  %i.pz = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 6 uses
  %i.qa = getelementptr inbounds nuw i8, ptr %0, i64 512 ; 10 uses
  %i.qb = getelementptr inbounds nuw i8, ptr %0, i64 616 ; 5 uses
  %i.qc = getelementptr inbounds nuw i8, ptr %0, i64 148 ; 12 uses
  %i.qd = getelementptr inbounds nuw i8, ptr %0, i64 648 ; 13 uses
  %i.qe = getelementptr inbounds nuw i8, ptr %0, i64 752 ; 6 uses
  %i.qf = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 11 uses
  %i.qg = getelementptr inbounds nuw i8, ptr %0, i64 300 ; 6 uses
  %i.qh = getelementptr inbounds nuw i8, ptr %0, i64 800 ; 10 uses
  %i.qi = getelementptr inbounds nuw i8, ptr %0, i64 904 ; 5 uses
  %i.qj = getelementptr inbounds nuw i8, ptr %0, i64 1456
  %i.qk = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 6 uses
  %i.ql = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 39 uses
  %i.qm = getelementptr inbounds nuw i8, ptr %0, i64 2688 ; 22 uses
  %i.qn = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.qo = getelementptr inbounds nuw i8, ptr %0, i64 2112 ; 4 uses
  %i.qp = getelementptr inbounds nuw i8, ptr %0, i64 1032 ; 26 uses
  %i.qq = getelementptr inbounds nuw i8, ptr %0, i64 1768 ; 3 uses
  %i.qr = getelementptr inbounds nuw i8, ptr %0, i64 1464 ; 2 uses
  %i.qs = getelementptr inbounds nuw i8, ptr %0, i64 156 ; 3 uses
  %i.qt = getelementptr inbounds nuw i8, ptr %0, i64 1440 ; 3 uses
  %i.qu = getelementptr inbounds nuw i8, ptr %0, i64 1000 ; 11 uses
  %i.qv = getelementptr inbounds nuw i8, ptr %0, i64 964 ; 13 uses
  %i.qw = getelementptr inbounds nuw i8, ptr %0, i64 2712 ; 3 uses
  %i.qx = getelementptr inbounds nuw i8, ptr %0, i64 976 ; 5 uses
  %i.qy = getelementptr inbounds nuw i8, ptr %0, i64 972 ; 10 uses
  %i.qz = getelementptr inbounds nuw i8, ptr %0, i64 2576 ; 2 uses
  %i.ra = getelementptr inbounds nuw i8, ptr %0, i64 2568
  %i.rb = getelementptr inbounds nuw i8, ptr %0, i64 944 ; 4 uses
  %i.rc = getelementptr inbounds nuw i8, ptr %0, i64 952 ; 4 uses
  %i.rd = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.re = getelementptr inbounds nuw i8, ptr %0, i64 1208 ; 21 uses
  %i.rf = getelementptr inbounds nuw i8, ptr %0, i64 1216 ; 3 uses
  %scevgep.i.i.i = getelementptr i8, ptr %0, i64 1224
  %i.rg = getelementptr inbounds nuw i8, ptr %0, i64 2584 ; 5 uses
  %i.rh = getelementptr inbounds nuw i8, ptr %0, i64 1176 ; 6 uses
  %i.ri = getelementptr inbounds nuw i8, ptr %0, i64 1200 ; 6 uses
  %i.rj = getelementptr inbounds nuw i8, ptr %0, i64 1168 ; 4 uses
  %i.rk = getelementptr inbounds nuw i8, ptr %0, i64 1048 ; 2 uses
  %i.rl = getelementptr inbounds nuw i8, ptr %0, i64 1184 ; 4 uses
  %i.rm = getelementptr inbounds nuw i8, ptr %0, i64 1432 ; 3 uses
  %i.rn = getelementptr inbounds nuw i8, ptr %0, i64 1192 ; 7 uses
  %scevgep.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.ro = getelementptr inbounds nuw i8, ptr %0, i64 1312 ; 3 uses
  %i.rp = getelementptr inbounds nuw i8, ptr %0, i64 1320
  %i.rq = getelementptr inbounds nuw i8, ptr %0, i64 1328 ; 2 uses
  %i.rr = getelementptr inbounds nuw i8, ptr %0, i64 1336
  %i.rs = getelementptr inbounds nuw i8, ptr %0, i64 2016 ; 3 uses
  %i.rt = getelementptr inbounds nuw i8, ptr %0, i64 1936 ; 2 uses
  %i.ru = getelementptr inbounds nuw i8, ptr %0, i64 2072
  %i.rv = getelementptr inbounds nuw i8, ptr %0, i64 2048
  %i.rw = getelementptr inbounds nuw i8, ptr %0, i64 2056
  %i.rx = getelementptr inbounds nuw i8, ptr %0, i64 2064
  %i.ry = getelementptr inbounds nuw i8, ptr %0, i64 1344
  %i.rz = getelementptr inbounds nuw i8, ptr %0, i64 1352 ; 2 uses
  %i.sa = getelementptr inbounds nuw i8, ptr %0, i64 1848 ; 4 uses
  %i.sb = getelementptr inbounds nuw i8, ptr %0, i64 464 ; 15 uses
  %i.sc = getelementptr inbounds nuw i8, ptr %0, i64 1952 ; 4 uses
  %i.sd = getelementptr inbounds nuw i8, ptr %0, i64 1672 ; 2 uses
  %i.se = getelementptr inbounds nuw i8, ptr %0, i64 1864 ; 2 uses
  %i.sf = getelementptr inbounds nuw i8, ptr %0, i64 1944
  %i.sg = getelementptr inbounds nuw i8, ptr %0, i64 1960
  %i.sh = getelementptr inbounds nuw i8, ptr %0, i64 1696 ; 2 uses
  %i.si = getelementptr inbounds nuw i8, ptr %0, i64 1392 ; 2 uses
  %i.sj = getelementptr inbounds nuw i8, ptr %0, i64 768 ; 11 uses
  %i.sk = getelementptr inbounds nuw i8, ptr %0, i64 760 ; 4 uses
  %i.sl = getelementptr inbounds nuw i8, ptr %0, i64 1384 ; 3 uses
  %i.sm = getelementptr inbounds nuw i8, ptr %0, i64 2104 ; 3 uses
  %i.sn = getelementptr inbounds nuw i8, ptr %0, i64 1648 ; 3 uses
  %i.so = getelementptr inbounds nuw i8, ptr %0, i64 2536 ; 3 uses
  %i.sp = getelementptr inbounds nuw i8, ptr %0, i64 480 ; 2 uses
  %i.sq = getelementptr inbounds nuw i8, ptr %0, i64 472 ; 5 uses
  %i.sr = getelementptr inbounds nuw i8, ptr %0, i64 488 ; 3 uses
  %i.ss = getelementptr inbounds nuw i8, ptr %0, i64 2544 ; 2 uses
  %i.st = getelementptr inbounds nuw i8, ptr %0, i64 2552 ; 2 uses
  %i.su = getelementptr inbounds nuw i8, ptr %0, i64 1480 ; 4 uses
  %i.sv = getelementptr inbounds nuw i8, ptr %0, i64 2560
  %i.sw = getelementptr inbounds nuw i8, ptr %0, i64 1016 ; 14 uses
  %i.sx = getelementptr inbounds nuw i8, ptr %0, i64 2580 ; 2 uses
  %i.sy = getelementptr inbounds nuw i8, ptr %0, i64 1720
  %i.sz = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ta = getelementptr inbounds nuw i8, ptr %0, i64 632 ; 11 uses
  %i.tb = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.tc = getelementptr inbounds nuw i8, ptr %0, i64 1608 ; 2 uses
  %i.td = getelementptr inbounds nuw i8, ptr %0, i64 936 ; 2 uses
  %i.te = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.tf = getelementptr inbounds nuw i8, ptr %0, i64 624
  %i.tg = getelementptr inbounds nuw i8, ptr %0, i64 1400
  %i.th = getelementptr inbounds nuw i8, ptr %0, i64 1728
  %i.ti = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.tj = getelementptr inbounds nuw i8, ptr %0, i64 1600 ; 2 uses
  %i.tk = getelementptr inbounds nuw i8, ptr %0, i64 1908
  %i.tl = getelementptr inbounds nuw i8, ptr %0, i64 1920 ; 4 uses
  %i.tm = getelementptr inbounds nuw i8, ptr %0, i64 1896 ; 3 uses
  %i.tn = getelementptr inbounds nuw i8, ptr %0, i64 1688 ; 2 uses
  %i.to = getelementptr inbounds nuw i8, ptr %0, i64 1712 ; 2 uses
  %i.tp = getelementptr inbounds nuw i8, ptr %0, i64 1664 ; 2 uses
  %i.tq = getelementptr inbounds nuw i8, ptr %0, i64 1976 ; 2 uses
  %i.tr = getelementptr inbounds nuw i8, ptr %0, i64 1880 ; 3 uses
  %i.ts = getelementptr inbounds nuw i8, ptr %0, i64 1968
  %i.tt = getelementptr inbounds nuw i8, ptr %0, i64 1984
  %i.tu = getelementptr inbounds nuw i8, ptr %0, i64 1680 ; 6 uses
  %i.tv = getelementptr inbounds nuw i8, ptr %0, i64 1704 ; 6 uses
  %i.tw = getelementptr inbounds nuw i8, ptr %0, i64 1656 ; 5 uses
  %i.tx = getelementptr inbounds nuw i8, ptr %0, i64 1416
  %i.ty = getelementptr inbounds nuw i8, ptr %0, i64 1408 ; 2 uses
  %i.tz = getelementptr inbounds nuw i8, ptr %0, i64 1736
  %i.ua = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.ub = getelementptr inbounds nuw i8, ptr %0, i64 920 ; 10 uses
  %i.uc = getelementptr inbounds nuw i8, ptr %0, i64 640 ; 3 uses
  %i.ud = getelementptr inbounds nuw i8, ptr %0, i64 1632 ; 2 uses
  %i.ue = getelementptr inbounds nuw i8, ptr %0, i64 808
  %i.uf = getelementptr inbounds nuw i8, ptr %0, i64 912
  %i.ug = getelementptr inbounds nuw i8, ptr %0, i64 1424
  %i.uh = getelementptr inbounds nuw i8, ptr %0, i64 1744
  %i.ui = getelementptr inbounds nuw i8, ptr %0, i64 2400 ; 5 uses
  %i.uj = getelementptr inbounds nuw i8, ptr %0, i64 2088
  %i.uk = getelementptr inbounds nuw i8, ptr %0, i64 2068
  %i.ul = getelementptr inbounds nuw i8, ptr %0, i64 1056 ; 2 uses
  %i.um = getelementptr inbounds nuw i8, ptr %0, i64 1064 ; 2 uses
  %i.un = getelementptr inbounds nuw i8, ptr %0, i64 1448 ; 14 uses
  %i.uo = getelementptr inbounds nuw i8, ptr %0, i64 2096 ; 2 uses
  %i.up = getelementptr inbounds nuw i8, ptr %0, i64 2136
  %i.uq = getelementptr inbounds nuw i8, ptr %0, i64 1496 ; 4 uses
  %i.ur = getelementptr inbounds nuw i8, ptr %0, i64 1784 ; 2 uses
  %i.us = getelementptr inbounds nuw i8, ptr %0, i64 1504 ; 3 uses
  %i.ut = getelementptr inbounds nuw i8, ptr %0, i64 1512 ; 3 uses
  %i.uu = getelementptr inbounds nuw i8, ptr %0, i64 1488 ; 3 uses
  %i.uv = getelementptr inbounds nuw i8, ptr %0, i64 1544 ; 2 uses
  %i.uw = getelementptr inbounds nuw i8, ptr %0, i64 1776 ; 4 uses
  %i.ux = getelementptr inbounds nuw i8, ptr %0, i64 1792 ; 2 uses
  %i.uy = getelementptr inbounds nuw i8, ptr %0, i64 776 ; 2 uses
  %i.uz = getelementptr inbounds nuw i8, ptr %0, i64 928 ; 2 uses
  %i.va = getelementptr inbounds nuw i8, ptr %0, i64 2200
  %i.vb = getelementptr i8, ptr %0, i64 2344      ; 3 uses
  %i.vc = getelementptr i8, ptr %0, i64 2376
  %i.vd = getelementptr i8, ptr %0, i64 2312      ; 3 uses
  %i.ve = getelementptr i8, ptr %0, i64 2280      ; 3 uses
  %i.vf = getelementptr i8, ptr %0, i64 2248      ; 3 uses
  %i.vg = getelementptr i8, ptr %0, i64 2352
  %i.vh = getelementptr i8, ptr %0, i64 2320
  %i.vi = getelementptr i8, ptr %0, i64 2288
  %i.vj = getelementptr i8, ptr %0, i64 2256      ; 2 uses
  %i.vk = getelementptr i8, ptr %0, i64 2360      ; 3 uses
  %i.vl = getelementptr i8, ptr %0, i64 2392
  %i.vm = getelementptr i8, ptr %0, i64 2328      ; 3 uses
  %i.vn = getelementptr i8, ptr %0, i64 2296      ; 3 uses
  %i.vo = getelementptr i8, ptr %0, i64 2264      ; 2 uses
  %i.vp = getelementptr inbounds nuw i8, ptr %0, i64 2208
  %i.vq = getelementptr inbounds nuw i8, ptr %0, i64 2240
  %i.vr = getelementptr inbounds nuw i8, ptr %i.g, i64 160
  %i.vs = getelementptr inbounds nuw i8, ptr %i.g, i64 128
  %i.vt = getelementptr inbounds nuw i8, ptr %i.g, i64 96
  %i.vu = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  %i.vv = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.vw = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.vx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.vy = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.vz = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.wa = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.wb = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %i.wc = getelementptr inbounds nuw i8, ptr %i.h, i64 80
  %i.wd = getelementptr inbounds nuw i8, ptr %i.h, i64 72
  %i.we = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.wf = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  %i.wg = getelementptr inbounds nuw i8, ptr %i.h, i64 136
  %i.wh = getelementptr inbounds nuw i8, ptr %i.h, i64 152
  %i.wi = getelementptr inbounds nuw i8, ptr %i.h, i64 88
  %i.wj = getelementptr inbounds nuw i8, ptr %i.h, i64 144
  %i.wk = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.wl = getelementptr inbounds nuw i8, ptr %i.h, i64 168
  %i.wm = getelementptr inbounds nuw i8, ptr %i.h, i64 176
  %i.wn = getelementptr inbounds nuw i8, ptr %i.g, i64 168
  %i.wo = getelementptr inbounds nuw i8, ptr %i.g, i64 136
  %i.wp = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  %i.wq = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.wr = getelementptr inbounds nuw i8, ptr %i.g, i64 184
  %i.ws = getelementptr inbounds nuw i8, ptr %i.g, i64 152
  %i.wt = getelementptr inbounds nuw i8, ptr %i.g, i64 88
  %i.wu = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %i.wv = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ww = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %gep364.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %gep364.1.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  %gep364.2.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 104
  %gep364.2423.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %gep364.1.2.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 88
  %gep364.2.2.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 120
  %i.wx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %5 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.wy = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.wz = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.xa = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.xb = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.xc = getelementptr inbounds nuw i8, ptr %0, i64 2408 ; 2 uses
  %i.xd = getelementptr inbounds nuw i8, ptr %0, i64 1576
  %i.xe = getelementptr inbounds nuw i8, ptr %0, i64 2424 ; 2 uses
  %i.xf = getelementptr inbounds nuw i8, ptr %0, i64 2520
  %i.xg = getelementptr inbounds nuw i8, ptr %0, i64 2528
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %bb.fb
  %.0519 = phi i64 [ 0, %bb.fb ], [ %i.cru, %.backedge.backedge ] ; 2 uses
  %i.xh = load double, ptr %i.pq, align 8, !tbaa !197
  store double %i.xh, ptr %i.pr, align 8, !tbaa !97
  %i.xi = load i32, ptr %i.ps, align 8, !tbaa !79
  store i32 %i.xi, ptr %i.pt, align 8, !tbaa !98
  %i.xj = load i64, ptr %i.aj, align 8, !tbaa !301
  %i.xk = icmp sgt i64 %i.xj, 0
  br i1 %i.xk, label %bb.fc, label %bb.fs

bb.fc:                                            ; preds = %.backedge
  %i.xl = load ptr, ptr %i.pu, align 8, !tbaa !109
  %i.xm = load ptr, ptr %i.pv, align 8, !tbaa !52
  %i.xn = load ptr, ptr %i.pw, align 8, !tbaa !58
  %i.xo = load ptr, ptr %i.px, align 8, !tbaa !110
  %i.xp = call i32 %i.xl(ptr noundef %i.xm, ptr noundef %i.xn, ptr noundef %i.xo) #13
  %.not569 = icmp eq i32 %i.xp, 0
  br i1 %.not569, label %bb.fh, label %bb.fd

bb.fd:                                            ; preds = %bb.fc
  %i.xq = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.xr = load i32, ptr %i.xq, align 4, !tbaa !107
  %i.xs = icmp eq i32 %i.xr, 3
  %i.xt = load double, ptr %i.qp, align 8, !tbaa !77 ; 2 uses
  br i1 %i.xs, label %bb.fe, label %bb.ff

bb.fe:                                            ; preds = %bb.fd
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @cvProcessError(ptr noundef nonnull %0, i32 noundef -22, i32 noundef 3443, ptr noundef nonnull @__func__.CVode, ptr noundef nonnull @.str, ptr noundef nonnull @.str.52, double noundef %i.xt)
  br label %bb.fg

bb.ff:                                            ; preds = %bb.fd
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @cvProcessError(ptr noundef nonnull %0, i32 noundef -22, i32 noundef 3448, ptr noundef nonnull @__func__.CVode, ptr noundef nonnull @.str, ptr noundef nonnull @.str.53, double noundef %i.xt)
  br label %bb.fg

bb.fg:                                            ; preds = %bb.ff, %bb.fe
  %i.xu = load double, ptr %i.qp, align 8, !tbaa !77 ; 2 uses
  store double %i.xu, ptr %3, align 8, !tbaa !29
  %i.xv = getelementptr inbounds nuw i8, ptr %0, i64 1040
  store double %i.xu, ptr %i.xv, align 8, !tbaa !191
  %i.xw = load ptr, ptr %i.pv, align 8, !tbaa !52
  call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.xw, ptr noundef nonnull %2) #13
  br label %bb.pa

bb.fh:                                            ; preds = %bb.fc
  %i.xx = load i32, ptr %i.py, align 8, !tbaa !121
  %.not570 = icmp eq i32 %i.xx, 0
  br i1 %.not570, label %bb.fl, label %bb.fi

bb.fi:                                            ; preds = %bb.fh
  %i.xy = load i32, ptr %i.pz, align 8, !tbaa !192
  %.not571 = icmp eq i32 %i.xy, 0
  br i1 %.not571, label %bb.fl, label %bb.fj

bb.fj:                                            ; preds = %bb.fi
  %i.xz = load ptr, ptr %i.qa, align 8, !tbaa !52
  %i.ya = load ptr, ptr %i.qb, align 8, !tbaa !114
  %i.yb = call fastcc i32 @cvQuadEwtSet(ptr noundef %0, ptr noundef %i.xz, ptr noundef %i.ya)
  %.not572 = icmp eq i32 %i.yb, 0
  br i1 %.not572, label %bb.fl, label %bb.fk

bb.fk:                                            ; preds = %bb.fj
  %i.yc = load double, ptr %i.qp, align 8, !tbaa !77
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @cvProcessError(ptr noundef nonnull %0, i32 noundef -22, i32 noundef 3463, ptr noundef nonnull @__func__.CVode, ptr noundef nonnull @.str, ptr noundef nonnull @.str.54, double noundef %i.yc)
  %i.yd = load double, ptr %i.qp, align 8, !tbaa !77 ; 2 uses
  store double %i.yd, ptr %3, align 8, !tbaa !29
  %i.ye = getelementptr inbounds nuw i8, ptr %0, i64 1040
  store double %i.yd, ptr %i.ye, align 8, !tbaa !191
  %i.yf = load ptr, ptr %i.pv, align 8, !tbaa !52
  call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.yf, ptr noundef nonnull %2) #13
  br label %bb.pa

bb.fl:                                            ; preds = %bb.fj, %bb.fi, %bb.fh
  %i.yg = load i32, ptr %i.qc, align 4, !tbaa !141
  %.not573 = icmp eq i32 %i.yg, 0
  br i1 %.not573, label %bb.fo, label %bb.fm

bb.fm:                                            ; preds = %bb.fl
  %i.yh = load ptr, ptr %i.qd, align 8, !tbaa !135
  %i.yi = load ptr, ptr %i.qe, align 8, !tbaa !145
  %i.yj = call fastcc i32 @cvSensEwtSet(ptr noundef %0, ptr noundef %i.yh, ptr noundef %i.yi)
  %.not574 = icmp eq i32 %i.yj, 0
  br i1 %.not574, label %bb.fo, label %bb.fn

bb.fn:                                            ; preds = %bb.fm
  %i.yk = load double, ptr %i.qp, align 8, !tbaa !77
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @cvProcessError(ptr noundef nonnull %0, i32 noundef -22, i32 noundef 3477, ptr noundef nonnull @__func__.CVode, ptr noundef nonnull @.str, ptr noundef nonnull @.str.55, double noundef %i.yk)
  %i.yl = load double, ptr %i.qp, align 8, !tbaa !77 ; 2 uses
  store double %i.yl, ptr %3, align 8, !tbaa !29
  %i.ym = getelementptr inbounds nuw i8, ptr %0, i64 1040
  store double %i.yl, ptr %i.ym, align 8, !tbaa !191
  %i.yn = load ptr, ptr %i.pv, align 8, !tbaa !52
  call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.yn, ptr noundef nonnull %2) #13
  br label %bb.pa

bb.fo:                                            ; preds = %bb.fm, %bb.fl
  %i.yo = load i32, ptr %i.qf, align 8, !tbaa !173
  %.not575 = icmp eq i32 %i.yo, 0
  br i1 %.not575, label %bb.fs, label %bb.fp

bb.fp:                                            ; preds = %bb.fo
  %i.yp = load i32, ptr %i.qg, align 4, !tbaa !193
  %.not576 = icmp eq i32 %i.yp, 0
  br i1 %.not576, label %bb.fs, label %bb.fq

bb.fq:                                            ; preds = %bb.fp
  %i.yq = load ptr, ptr %i.qh, align 8, !tbaa !135
  %i.yr = load ptr, ptr %i.qi, align 8, !tbaa !166
  %i.ys = call fastcc i32 @cvQuadSensEwtSet(ptr noundef %0, ptr noundef %i.yq, ptr noundef %i.yr)
  %.not577 = icmp eq i32 %i.ys, 0
  br i1 %.not577, label %bb.fs, label %bb.fr

bb.fr:                                            ; preds = %bb.fq
  %i.yt = load double, ptr %i.qp, align 8, !tbaa !77
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @cvProcessError(ptr noundef nonnull %0, i32 noundef -22, i32 noundef 3491, ptr noundef nonnull @__func__.CVode, ptr noundef nonnull @.str, ptr noundef nonnull @.str.56, double noundef %i.yt)
  %i.yu = load double, ptr %i.qp, align 8, !tbaa !77 ; 2 uses
  store double %i.yu, ptr %3, align 8, !tbaa !29
  %i.yv = getelementptr inbounds nuw i8, ptr %0, i64 1040
  store double %i.yu, ptr %i.yv, align 8, !tbaa !191
  %i.yw = load ptr, ptr %i.pv, align 8, !tbaa !52
  call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.yw, ptr noundef nonnull %2) #13
  br label %bb.pa

bb.fs:                                            ; preds = %bb.fo, %bb.fp, %bb.fq, %.backedge
  %i.yx = load i64, ptr %i.qj, align 8, !tbaa !27 ; 2 uses
  %i.yy = icmp slt i64 %i.yx, 1
  %.not578 = icmp slt i64 %.0519, %i.yx
  %or.cond597 = select i1 %i.yy, i1 true, i1 %.not578
  br i1 %or.cond597, label %bb.fu, label %bb.ft

bb.ft:                                            ; preds = %bb.fs
  %i.yz = load double, ptr %i.qp, align 8, !tbaa !77
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @cvProcessError(ptr noundef nonnull %0, i32 noundef -1, i32 noundef 3504, ptr noundef nonnull @__func__.CVode, ptr noundef nonnull @.str, ptr noundef nonnull @.str.57, double noundef %i.yz)
  %i.za = load double, ptr %i.qp, align 8, !tbaa !77 ; 2 uses
  store double %i.za, ptr %3, align 8, !tbaa !29
  %i.zb = getelementptr inbounds nuw i8, ptr %0, i64 1040
  store double %i.za, ptr %i.zb, align 8, !tbaa !191
  %i.zc = load ptr, ptr %i.pv, align 8, !tbaa !52
  call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.zc, ptr noundef nonnull %2) #13
  br label %bb.pa

bb.fu:                                            ; preds = %bb.fs
  %i.zd = load ptr, ptr %i.pv, align 8, !tbaa !52
  %i.ze = load ptr, ptr %i.pw, align 8, !tbaa !58
  %i.zf = call double @N_VWrmsNorm(ptr noundef %i.zd, ptr noundef %i.ze) #13 ; 4 uses
  %i.zg = load i32, ptr %i.py, align 8, !tbaa !121
  %.not579 = icmp eq i32 %i.zg, 0
  br i1 %.not579, label %bb.fx, label %bb.fv

bb.fv:                                            ; preds = %bb.fu
  %i.zh = load i32, ptr %i.pz, align 8, !tbaa !192
  %.not580 = icmp eq i32 %i.zh, 0
  br i1 %.not580, label %bb.fx, label %bb.fw

bb.fw:                                            ; preds = %bb.fv
  %i.zi = load ptr, ptr %i.qa, align 8, !tbaa !52
  %i.zj = load ptr, ptr %i.qb, align 8, !tbaa !114
  %i.zk = call double @N_VWrmsNorm(ptr noundef %i.zi, ptr noundef %i.zj) #13 ; 2 uses
  %i.zl = fcmp ogt double %i.zf, %i.zk
  %..i600 = select i1 %i.zl, double %i.zf, double %i.zk
  br label %bb.fx

bb.fx:                                            ; preds = %bb.fw, %bb.fv, %bb.fu
  %.0512 = phi double [ %..i600, %bb.fw ], [ %i.zf, %bb.fv ], [ %i.zf, %bb.fu ] ; 4 uses
  %i.zm = load i32, ptr %i.qc, align 4, !tbaa !141
  %.not581 = icmp eq i32 %i.zm, 0
  br i1 %.not581, label %bb.ga, label %bb.fy

bb.fy:                                            ; preds = %bb.fx
  %i.zn = load i32, ptr %i.qk, align 8, !tbaa !202
  %.not582 = icmp eq i32 %i.zn, 0
  br i1 %.not582, label %bb.ga, label %bb.fz

bb.fz:                                            ; preds = %bb.fy
  %i.zo = load ptr, ptr %i.qd, align 8, !tbaa !135
  %i.zp = load ptr, ptr %i.qe, align 8, !tbaa !145
  %i.zq = load i32, ptr %i.ql, align 8, !tbaa !129
  %i.zr = load ptr, ptr %i.qm, align 8, !tbaa !74
  %i.zs = call i32 @N_VWrmsNormVectorArray(i32 noundef %i.zq, ptr noundef %i.zo, ptr noundef %i.zp, ptr noundef %i.zr) #13 ; 0 uses
  %i.zt = load ptr, ptr %i.qm, align 8, !tbaa !74 ; 6 uses
  %i.zu = load double, ptr %i.zt, align 8, !tbaa !29 ; 3 uses
  %i.zv = load i32, ptr %i.ql, align 8, !tbaa !129 ; 3 uses
  %i.zw = icmp sgt i32 %i.zv, 1
  br i1 %i.zw, label %.lr.ph.preheader.i.i, label %cvSensUpdateNorm.exit

.lr.ph.preheader.i.i:                             ; preds = %bb.fz
  %wide.trip.count.i.i = zext nneg i32 %i.zv to i64
  %i.zx = add nsw i64 %wide.trip.count.i.i, -1    ; 2 uses
  %xtraiter = and i64 %i.zx, 3                    ; 3 uses
  %i.zy = add nsw i32 %i.zv, -2
end_hunk_1
begin_hunk_2_@CVode:bb.a
  %.186.i.i = phi i32 [ %i.bzf, %.lr.ph.i306.i ], [ %.186.i.i.ph, %.lr.ph.i306.i.preheader ] ; 2 uses
  %i.bze = mul nuw nsw i32 %.186.i.i, %.087.i.i   ; 2 uses
  %i.bzf = add nuw nsw i32 %.186.i.i, 1           ; 2 uses
  %exitcond.not.i307.i = icmp eq i32 %i.bzf, %i.byo
  br i1 %exitcond.not.i307.i, label %._crit_edge.i308.i, label %.lr.ph.i306.i, !llvm.loop !296

._crit_edge.i308.i:                               ; preds = %.lr.ph.i306.i, %middle.block950
  %.lcssa903 = phi i32 [ %i.bzd, %middle.block950 ], [ %i.bze, %.lr.ph.i306.i ] ; 2 uses
  %i.bzg = mul nuw nsw i32 %.lcssa903, %i.byo     ; 2 uses
  %i.bzh = add nuw nsw i32 %i.byo, 1
  %i.bzi = mul nuw nsw i32 %i.bzg, %i.bzh
  %i.bzj = uitofp nneg i32 %i.bzi to double
  %i.bzk = load double, ptr %i.sl, align 8, !tbaa !329
  %i.bzl = fmul double %i.bzk, %i.bzj
  %i.bzm = load double, ptr %i.ri, align 8, !tbaa !29 ; 2 uses
  %i.bzn = fcmp ogt double %i.bzm, 1.000000e-10
  %i.bzo = select i1 %i.bzn, double %i.bzm, double 1.000000e-10
  %i.bzp = uitofp nneg i32 %i.bzg to double
  %i.bzq = zext nneg i32 %i.byo to i64
  %i.bzr = getelementptr inbounds nuw [8 x i8], ptr %i.pv, i64 %i.bzq
  %i.bzs = load ptr, ptr %i.bzr, align 8, !tbaa !52
  %i.bzt = load ptr, ptr %i.pw, align 8, !tbaa !58
  %i.bzu = call double @N_VWrmsNorm(ptr noundef %i.bzs, ptr noundef %i.bzt) #13
  %i.bzv = uitofp nneg i32 %.lcssa903 to double
  %i.bzw = load i32, ptr %i.ps, align 8, !tbaa !79
  %i.bzx = sext i32 %i.bzw to i64
  %i.bzy = getelementptr [8 x i8], ptr %i.pv, i64 %i.bzx
  %i.bzz = getelementptr i8, ptr %i.bzy, i64 -8
  %i.caa = load ptr, ptr %i.bzz, align 8, !tbaa !52
  %i.cab = load ptr, ptr %i.pw, align 8, !tbaa !58
  %i.cac = call double @N_VWrmsNorm(ptr noundef %i.caa, ptr noundef %i.cab) #13
  %i.cad = fmul double %i.cac, %i.bzv             ; 2 uses
  %i.cae = fmul double %i.cad, %i.cad
  store double %i.cae, ptr %i.vf, align 8, !tbaa !29
  %i.caf = fdiv double %i.bzl, %i.bzo
  %i.cag = fmul double %i.bzu, %i.bzp
  %i.cah = insertelement <2 x double> poison, double %i.cag, i64 0
  %i.cai = insertelement <2 x double> %i.cah, double %i.caf, i64 1 ; 2 uses
  %i.caj = fmul <2 x double> %i.cai, %i.cai
  store <2 x double> %i.caj, ptr %i.vj, align 8, !tbaa !29
  %.pr.i.i = load i32, ptr %i.ps, align 8, !tbaa !79
  br label %bb.na

bb.na:                                            ; preds = %._crit_edge.i308.i, %bb.mz
  %i.cak = phi i32 [ %.pr.i.i, %._crit_edge.i308.i ], [ %i.byo, %bb.mz ] ; 6 uses
  %i.cal = load i32, ptr %i.qv, align 4, !tbaa !312
  %.not.i296.i = icmp slt i32 %i.cal, %i.cak
  br i1 %.not.i296.i, label %bb.ny, label %bb.nb

bb.nb:                                            ; preds = %bb.na
  %i.cam = icmp sgt i32 %i.cak, 2
  br i1 %i.cam, label %bb.nc, label %cvBDFStab.exit.i

bb.nc:                                            ; preds = %bb.nb
  %i.can = load i32, ptr %i.ui, align 8, !tbaa !94
  %i.cao = add nuw nsw i32 %i.cak, 5
  %.not76.i.i = icmp slt i32 %i.can, %i.cao
  br i1 %.not76.i.i, label %cvBDFStab.exit.i, label %bb.nd

bb.nd:                                            ; preds = %bb.nc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #13
  br label %bb.ne

bb.ne:                                            ; preds = %bb.nf, %bb.nd
  %indvars.iv.i.i297.i = phi i64 [ 1, %bb.nd ], [ %indvars.iv.next.i.i298.i, %bb.nf ] ; 13 uses
  %i.cap = getelementptr inbounds nuw [8 x i8], ptr %i.vq, i64 %indvars.iv.i.i297.i
  %i.caq = load double, ptr %i.cap, align 8, !tbaa !29 ; 7 uses
  %invariant.gep.i.i.i = getelementptr inbounds nuw [8 x i8], ptr %i.vp, i64 %indvars.iv.i.i297.i ; 4 uses
  %i.car = fcmp olt double %i.caq, 0.000000e+00
  %i.cas = select i1 %i.car, double 0.000000e+00, double %i.caq ; 2 uses
  %gep.1.i.i.i = getelementptr inbounds nuw i8, ptr %invariant.gep.i.i.i, i64 64
  %i.cat = load double, ptr %gep.1.i.i.i, align 8, !tbaa !29 ; 8 uses
  %i.cau = fcmp olt double %i.caq, %i.cat
  %.0298..1.i.i.i = select i1 %i.cau, double %i.caq, double %i.cat ; 2 uses
  %i.cav = fcmp ogt double %i.cas, %i.cat
  %i.caw = select i1 %i.cav, double %i.cas, double %i.cat ; 2 uses
  %gep.2.i.i.i = getelementptr inbounds nuw i8, ptr %invariant.gep.i.i.i, i64 96
  %i.cax = load double, ptr %gep.2.i.i.i, align 8, !tbaa !29 ; 10 uses
  %i.cay = fcmp olt double %.0298..1.i.i.i, %i.cax
  %.0298..2.i.i.i = select i1 %i.cay, double %.0298..1.i.i.i, double %i.cax ; 2 uses
  %i.caz = fcmp ogt double %i.caw, %i.cax
  %i.cba = select i1 %i.caz, double %i.caw, double %i.cax ; 2 uses
  %gep.3.i.i.i = getelementptr inbounds nuw i8, ptr %invariant.gep.i.i.i, i64 128
  %i.cbb = load double, ptr %gep.3.i.i.i, align 8, !tbaa !29 ; 9 uses
  %i.cbc = fcmp olt double %.0298..2.i.i.i, %i.cbb
  %.0298..3.i.i.i = select i1 %i.cbc, double %.0298..2.i.i.i, double %i.cbb ; 2 uses
  %i.cbd = fcmp ogt double %i.cba, %i.cbb
  %i.cbe = select i1 %i.cbd, double %i.cba, double %i.cbb ; 2 uses
  %gep.4.i.i.i = getelementptr inbounds nuw i8, ptr %invariant.gep.i.i.i, i64 160
  %i.cbf = load double, ptr %gep.4.i.i.i, align 8, !tbaa !29 ; 7 uses
  %i.cbg = fcmp olt double %.0298..3.i.i.i, %i.cbf
  %.0298..4.i.i.i = select i1 %i.cbg, double %.0298..3.i.i.i, double %i.cbf
  %i.cbh = fcmp ogt double %i.cbe, %i.cbf
  %i.cbi = select i1 %i.cbh, double %i.cbe, double %i.cbf ; 4 uses
  %i.cbj = fmul double %i.cbi, 1.000000e-10
  %i.cbk = fcmp olt double %.0298..4.i.i.i, %i.cbj
  br i1 %i.cbk, label %cvSLdet.exit.thread.i.i, label %bb.nf

bb.nf:                                            ; preds = %bb.ne
  %i.cbl = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.i.i297.i
  store double %i.cbi, ptr %i.cbl, align 8, !tbaa !29
  %i.cbm = fmul double %i.cbi, %i.cbi
  %i.cbn = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.i.i297.i
  store double %i.cbm, ptr %i.cbn, align 8, !tbaa !29
  %i.cbo = fdiv double %i.caq, %i.cat             ; 3 uses
  %i.cbp = fadd double %i.cbo, 0.000000e+00
  %i.cbq = fdiv double %i.cat, %i.cax             ; 3 uses
  %i.cbr = fadd double %i.cbp, %i.cbq
  %i.cbs = fdiv double %i.cax, %i.cbb             ; 3 uses
  %i.cbt = fadd double %i.cbr, %i.cbs
  %i.cbu = fdiv double %i.cbb, %i.cbf             ; 3 uses
  %i.cbv = fadd double %i.cbt, %i.cbu
  %i.cbw = fmul double %i.cbv, 2.500000e-01       ; 2 uses
  %i.cbx = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.i.i297.i
  store double %i.cbw, ptr %i.cbx, align 8, !tbaa !29
  %i.cby = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv.i.i297.i
  %i.cbz = call double @llvm.fmuladd.f64(double %i.cbo, double %i.cbo, double 0.000000e+00)
  %i.cca = call double @llvm.fmuladd.f64(double %i.cbq, double %i.cbq, double %i.cbz)
  %i.ccb = call double @llvm.fmuladd.f64(double %i.cbs, double %i.cbs, double %i.cca)
  %i.ccc = call double @llvm.fmuladd.f64(double %i.cbu, double %i.cbu, double %i.ccb)
  %i.ccd = insertelement <2 x double> poison, double %i.cbw, i64 0
  %i.cce = insertelement <2 x double> %i.ccd, double %i.cat, i64 1 ; 2 uses
  %i.ccf = fneg <2 x double> %i.cce
  %i.ccg = fmul <2 x double> %i.cce, %i.ccf
  %i.cch = insertelement <2 x double> poison, double %i.ccc, i64 0
  %i.cci = insertelement <2 x double> %i.cch, double %i.caq, i64 1
  %i.ccj = insertelement <2 x double> <double 2.500000e-01, double poison>, double %i.cax, i64 1
  %i.cck = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cci, <2 x double> %i.ccj, <2 x double> %i.ccg) ; 2 uses
  %i.ccl = extractelement <2 x double> %i.cck, i64 0
  %i.ccm = call double @llvm.fabs.f64(double %i.ccl)
  store double %i.ccm, ptr %i.cby, align 8, !tbaa !29
  %i.ccn = getelementptr inbounds nuw [8 x i8], ptr %i.vr, i64 %indvars.iv.i.i297.i
  %i.cco = extractelement <2 x double> %i.cck, i64 1 ; 2 uses
  store double %i.cco, ptr %i.ccn, align 8, !tbaa !29
  %i.ccp = fneg double %i.cbb
  %i.ccq = getelementptr inbounds nuw [8 x i8], ptr %i.vs, i64 %indvars.iv.i.i297.i
  %i.ccr = getelementptr inbounds nuw [8 x i8], ptr %i.vt, i64 %indvars.iv.i.i297.i
  store double 0.000000e+00, ptr %i.ccr, align 8, !tbaa !29
  %i.ccs = insertelement <2 x double> poison, double %i.caq, i64 0
  %i.cct = insertelement <2 x double> %i.ccs, double %i.cax, i64 1
  %i.ccu = insertelement <2 x double> poison, double %i.ccp, i64 0
  %i.ccv = shufflevector <2 x double> %i.ccu, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ccw = fmul <2 x double> %i.cct, %i.ccv
  %i.ccx = insertelement <2 x double> poison, double %i.cat, i64 0
  %i.ccy = shufflevector <2 x double> %i.ccx, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ccz = insertelement <2 x double> poison, double %i.cax, i64 0
  %i.cda = insertelement <2 x double> %i.ccz, double %i.cbf, i64 1
  %i.cdb = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ccy, <2 x double> %i.cda, <2 x double> %i.ccw) ; 2 uses
  %i.cdc = extractelement <2 x double> %i.cdb, i64 0 ; 2 uses
  store double %i.cdc, ptr %i.ccq, align 8, !tbaa !29
  %i.cdd = getelementptr inbounds nuw [8 x i8], ptr %i.vu, i64 %indvars.iv.i.i297.i
  %i.cde = extractelement <2 x double> %i.cdb, i64 1 ; 2 uses
  store double %i.cde, ptr %i.cdd, align 8, !tbaa !29
  %i.cdf = fneg double %i.cbf
  %i.cdg = fmul double %i.cax, %i.cdf
  %i.cdh = call double @llvm.fmuladd.f64(double %i.cbb, double %i.cbb, double %i.cdg) ; 2 uses
  %i.cdi = getelementptr inbounds nuw [8 x i8], ptr %i.vv, i64 %indvars.iv.i.i297.i
  store double %i.cdh, ptr %i.cdi, align 8, !tbaa !29
  %invariant.gep352.i.i.i = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv.i.i297.i ; 5 uses
  %gep353.i.i.i = getelementptr inbounds nuw i8, ptr %invariant.gep352.i.i.i, i64 32
  store double %i.cdh, ptr %gep353.i.i.i, align 8, !tbaa !29
  %gep353.1.i.i.i = getelementptr inbounds nuw i8, ptr %invariant.gep352.i.i.i, i64 64
  store double %i.cde, ptr %gep353.1.i.i.i, align 8, !tbaa !29
  %gep353.2.i.i.i = getelementptr inbounds nuw i8, ptr %invariant.gep352.i.i.i, i64 96
  store double 0.000000e+00, ptr %gep353.2.i.i.i, align 8, !tbaa !29
  %gep353.3.i.i.i = getelementptr inbounds nuw i8, ptr %invariant.gep352.i.i.i, i64 128
  store double %i.cdc, ptr %gep353.3.i.i.i, align 8, !tbaa !29
  %gep353.4.i.i.i = getelementptr inbounds nuw i8, ptr %invariant.gep352.i.i.i, i64 160
  store double %i.cco, ptr %gep353.4.i.i.i, align 8, !tbaa !29
  %indvars.iv.next.i.i298.i = add nuw nsw i64 %indvars.iv.i.i297.i, 1 ; 2 uses
  %exitcond.not.i.i299.i = icmp eq i64 %indvars.iv.next.i.i298.i, 4
  br i1 %exitcond.not.i.i299.i, label %bb.ng, label %bb.ne

bb.ng:                                            ; preds = %bb.nf
  %i.cdj = load double, ptr %i.vw, align 8, !tbaa !29 ; 4 uses
  %i.cdk = load double, ptr %i.vx, align 16, !tbaa !29 ; 4 uses
  %i.cdl = load double, ptr %i.vy, align 8, !tbaa !29 ; 4 uses
  %i.cdm = fcmp olt double %i.cdk, %i.cdl
  %i.cdn = select i1 %i.cdm, double %i.cdk, double %i.cdl ; 2 uses
  %i.cdo = fcmp olt double %i.cdj, %i.cdn
  %..i.i300.i = select i1 %i.cdo, double %i.cdj, double %i.cdn
  %i.cdp = fcmp olt double %..i.i300.i, 1.000000e-08
  br i1 %i.cdp, label %bb.nh, label %bb.nj

bb.nh:                                            ; preds = %bb.ng
  %i.cdq = fcmp ogt double %i.cdk, %i.cdl
  %i.cdr = select i1 %i.cdq, double %i.cdk, double %i.cdl ; 2 uses
  %i.cds = fcmp ogt double %i.cdj, %i.cdr
  %i.cdt = select i1 %i.cds, double %i.cdj, double %i.cdr
  %i.cdu = fcmp ogt double %i.cdt, 2.500000e-07
  br i1 %i.cdu, label %cvSLdet.exit.thread.i.i, label %bb.ni

bb.ni:                                            ; preds = %bb.nh
  %i.cdv = load double, ptr %i.wx, align 8, !tbaa !29 ; 2 uses
  %6 = load double, ptr %5, align 16, !tbaa !29   ; 2 uses
  %7 = fadd double %i.cdv, %6
  %8 = load double, ptr %i.wy, align 8, !tbaa !29 ; 2 uses
  %i.cdw = fadd double %7, %8
  %i.cdx = fdiv double %i.cdw, 3.000000e+00       ; 4 uses
  %9 = fsub double %i.cdv, %i.cdx
  %10 = call double @llvm.fabs.f64(double %9)     ; 2 uses
  %11 = fsub double %6, %i.cdx
  %12 = call double @llvm.fabs.f64(double %11)    ; 2 uses
  %i.cdy = fcmp ogt double %10, %12
  %i.cdz = select i1 %i.cdy, double %10, double %12 ; 2 uses
  %i.cea = fsub double %8, %i.cdx
  %i.ceb = call double @llvm.fabs.f64(double %i.cea) ; 2 uses
  %i.cec = fcmp ogt double %i.cdz, %i.ceb
  %i.ced = select i1 %i.cec, double %i.cdz, double %i.ceb
  %i.cee = fcmp ogt double %i.ced, 5.000000e-04
  br i1 %i.cee, label %cvSLdet.exit.thread.i.i, label %bb.no

bb.nj:                                            ; preds = %bb.ng
  %i.cef = load double, ptr %i.vz, align 8, !tbaa !29 ; 3 uses
  %i.ceg = call double @llvm.fabs.f64(double %i.cef)
  %i.ceh = load double, ptr %i.wa, align 8, !tbaa !29 ; 2 uses
  %i.cei = fmul double %i.ceh, 1.000000e-10       ; 2 uses
  %i.cej = fcmp olt double %i.ceg, %i.cei
  br i1 %i.cej, label %cvSLdet.exit.thread.i.i, label %bb.nk

bb.nk:                                            ; preds = %bb.nj
  %i.cek = load double, ptr %i.wb, align 16, !tbaa !29
  %i.cel = fneg double %i.cek
  %i.cem = fdiv double %i.cel, %i.cef             ; 3 uses
  %i.cen = load double, ptr %i.wc, align 16, !tbaa !29
  %i.ceo = load double, ptr %i.wd, align 8, !tbaa !29 ; 2 uses
  %i.cep = call double @llvm.fmuladd.f64(double %i.cem, double %i.ceo, double %i.cen) ; 2 uses
  %i.ceq = call double @llvm.fabs.f64(double %i.cep)
  %i.cer = load double, ptr %i.we, align 16, !tbaa !29 ; 4 uses
  %i.ces = fmul double %i.cer, 1.000000e-10       ; 2 uses
  %i.cet = fcmp olt double %i.ceq, %i.ces
  br i1 %i.cet, label %cvSLdet.exit.thread.i.i, label %bb.nl

bb.nl:                                            ; preds = %bb.nk
  %i.ceu = load double, ptr %i.wf, align 8, !tbaa !29
  %i.cev = fneg double %i.ceu
  %i.cew = fdiv double %i.cev, %i.cef             ; 3 uses
  %i.cex = load double, ptr %i.wg, align 8, !tbaa !29 ; 2 uses
  %i.cey = load double, ptr %i.wh, align 8, !tbaa !29
  %i.cez = call double @llvm.fmuladd.f64(double %i.cew, double %i.cex, double %i.cey)
  %i.cfa = load double, ptr %i.wi, align 8, !tbaa !29
  %i.cfb = call double @llvm.fmuladd.f64(double %i.cew, double %i.ceo, double %i.cfa)
  %i.cfc = load double, ptr %i.wj, align 16, !tbaa !29
  %i.cfd = call double @llvm.fmuladd.f64(double %i.cem, double %i.cex, double %i.cfc)
  %i.cfe = fneg double %i.cfb
  %i.cff = fdiv double %i.cfe, %i.cep             ; 2 uses
  %i.cfg = call double @llvm.fmuladd.f64(double %i.cff, double %i.cfd, double %i.cez) ; 2 uses
  %i.cfh = call double @llvm.fabs.f64(double %i.cfg)
  %i.cfi = load double, ptr %i.wk, align 8, !tbaa !29 ; 4 uses
  %i.cfj = fmul double %i.cfi, 1.000000e-10       ; 2 uses
  %i.cfk = fcmp olt double %i.cfh, %i.cfj
  br i1 %i.cfk, label %cvSLdet.exit.thread.i.i, label %bb.nm

bb.nm:                                            ; preds = %bb.nl
  %i.cfl = load <2 x double>, ptr %i.wl, align 8
  %i.cfm = load <2 x double>, ptr %i.wm, align 16, !tbaa !29
  %i.cfn = insertelement <2 x double> poison, double %i.cem, i64 0
  %i.cfo = insertelement <2 x double> %i.cfn, double %i.cew, i64 1
  %i.cfp = shufflevector <2 x double> %i.cfl, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cfq = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cfo, <2 x double> %i.cfp, <2 x double> %i.cfm) ; 2 uses
  %i.cfr = extractelement <2 x double> %i.cfq, i64 0
  %i.cfs = extractelement <2 x double> %i.cfq, i64 1
  %i.cft = call double @llvm.fmuladd.f64(double %i.cff, double %i.cfr, double %i.cfs)
  %i.cfu = fneg double %i.cft
  %i.cfv = fdiv double %i.cfu, %i.cfg             ; 9 uses
  %i.cfw = fcmp olt double %i.cfv, 1.000000e-10
  %i.cfx = fcmp ogt double %i.cfv, 1.000000e+02
  %or.cond.i.i301.i = or i1 %i.cfw, %i.cfx
  br i1 %or.cond.i.i301.i, label %cvSLdet.exit.thread.i.i, label %.preheader338.i.i.i

.preheader338.i.i.i:                              ; preds = %bb.nm
  %i.cfy = fmul double %i.cfv, %i.cfv             ; 2 uses
  %i.cfz = load <2 x double>, ptr %i.wn, align 8, !tbaa !29 ; 4 uses
  %i.cga = load <2 x double>, ptr %i.wo, align 8, !tbaa !29 ; 5 uses
  %i.cgb = load <2 x double>, ptr %i.wp, align 8, !tbaa !29 ; 5 uses
  %i.cgc = load <2 x double>, ptr %i.wq, align 8, !tbaa !29 ; 5 uses
  %i.cgd = insertelement <2 x double> poison, double %i.cfv, i64 0
  %i.cge = shufflevector <2 x double> %i.cgd, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cgf = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cge, <2 x double> %i.cgc, <2 x double> %i.cgb)
  %i.cgg = insertelement <2 x double> poison, double %i.cfy, i64 0
  %i.cgh = shufflevector <2 x double> %i.cgg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cgi = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cgh, <2 x double> %i.cgf, <2 x double> %i.cga)
  %i.cgj = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cge, <2 x double> %i.cgi, <2 x double> %i.cfz) ; 2 uses
  %i.cgk = load double, ptr %i.wr, align 8, !tbaa !29 ; 3 uses
  %i.cgl = load double, ptr %i.ws, align 8, !tbaa !29 ; 4 uses
  %i.cgm = load double, ptr %i.wt, align 8, !tbaa !29 ; 4 uses
  %i.cgn = load double, ptr %i.wu, align 8, !tbaa !29 ; 4 uses
  %i.cgo = call double @llvm.fmuladd.f64(double %i.cfv, double %i.cgn, double %i.cgm)
  %i.cgp = call double @llvm.fmuladd.f64(double %i.cfy, double %i.cgo, double %i.cgl)
  %i.cgq = call double @llvm.fmuladd.f64(double %i.cfv, double %i.cgp, double %i.cgk) ; 2 uses
  %i.cgr = call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.cgj)
  %i.cgs = insertelement <2 x double> poison, double %i.ceh, i64 0 ; 2 uses
  %i.cgt = insertelement <2 x double> %i.cgs, double %i.cer, i64 1 ; 2 uses
  %i.cgu = fdiv <2 x double> %i.cgr, %i.cgt       ; 2 uses
  %i.cgv = extractelement <2 x double> %i.cgu, i64 0 ; 2 uses
  %i.cgw = fcmp ogt double %i.cgv, 0.000000e+00
  %.1293.i.i.i = select i1 %i.cgw, double %i.cgv, double 0.000000e+00 ; 2 uses
  %i.cgx = extractelement <2 x double> %i.cgu, i64 1 ; 2 uses
  %i.cgy = fcmp ogt double %i.cgx, %.1293.i.i.i
  %.1293.1.i.i.i = select i1 %i.cgy, double %i.cgx, double %.1293.i.i.i ; 2 uses
  %i.cgz = call double @llvm.fabs.f64(double %i.cgq)
  %i.cha = fdiv double %i.cgz, %i.cfi             ; 2 uses
  %i.chb = fcmp ogt double %i.cha, %.1293.1.i.i.i
  %.1293.2.i.i.i = select i1 %i.chb, double %i.cha, double %.1293.1.i.i.i
  %i.chc = fcmp olt double %.1293.2.i.i.i, 1.000000e-03
  br i1 %i.chc, label %bb.no, label %.preheader335.i.i.i.preheader

.preheader335.i.i.i.preheader:                    ; preds = %.preheader338.i.i.i
  %i.chd = insertelement <2 x double> poison, double %i.cei, i64 0
  %i.che = insertelement <2 x double> %i.chd, double %i.ces, i64 1
  %i.chf = shufflevector <2 x double> %i.cgc, <2 x double> poison, <2 x i32> zeroinitializer
  %i.chg = shufflevector <2 x double> %i.cgb, <2 x double> poison, <2 x i32> zeroinitializer
  %i.chh = shufflevector <2 x double> %i.cga, <2 x double> poison, <2 x i32> zeroinitializer
  %i.chi = shufflevector <2 x double> %i.cfz, <2 x double> poison, <2 x i32> zeroinitializer
  %i.chj = shufflevector <2 x double> %i.cgs, <2 x double> poison, <2 x i32> zeroinitializer
  %i.chk = shufflevector <2 x double> %i.cgc, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.chl = shufflevector <2 x double> %i.cgb, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.chm = shufflevector <2 x double> %i.cga, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.chn = shufflevector <2 x double> %i.cfz, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.cho = insertelement <2 x double> poison, double %i.cer, i64 1
  %i.chp = insertelement <2 x double> poison, double %i.cgn, i64 0
  %i.chq = shufflevector <2 x double> %i.chp, <2 x double> poison, <2 x i32> zeroinitializer
  %i.chr = insertelement <2 x double> poison, double %i.cgm, i64 0
  %i.chs = shufflevector <2 x double> %i.chr, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cht = insertelement <2 x double> poison, double %i.cgl, i64 0
  %i.chu = shufflevector <2 x double> %i.cht, <2 x double> poison, <2 x i32> zeroinitializer
  %i.chv = insertelement <2 x double> poison, double %i.cgk, i64 0
  %i.chw = shufflevector <2 x double> %i.chv, <2 x double> poison, <2 x i32> zeroinitializer
  %i.chx = insertelement <2 x double> poison, double %i.cfi, i64 0
  %i.chy = shufflevector <2 x double> %i.chx, <2 x double> poison, <2 x i32> zeroinitializer
  %i.chz = insertelement <2 x double> poison, double %i.cer, i64 0
  %i.cia = insertelement <2 x double> %i.chz, double %i.cfi, i64 1
  br label %.preheader335.i.i.i

.preheader335.i.i.i:                              ; preds = %.preheader335.i.i.i.preheader, %.preheader.i.i303.i
  %.sroa.10.0.i.i.i = phi double [ %i.clv, %.preheader.i.i303.i ], [ %i.cgq, %.preheader335.i.i.i.preheader ]
  %.0299376.i.i.i = phi double [ %i.clr, %.preheader.i.i303.i ], [ %i.cfv, %.preheader335.i.i.i.preheader ] ; 5 uses
  %.0305375.i.i.i = phi i32 [ %.2307.2.i.i.i, %.preheader.i.i303.i ], [ 0, %.preheader335.i.i.i.preheader ]
  %.0308374.i.i.i = phi i32 [ %i.clw, %.preheader.i.i303.i ], [ 1, %.preheader335.i.i.i.preheader ]
  %i.cib = phi <2 x double> [ %i.cly, %.preheader.i.i303.i ], [ %i.cgj, %.preheader335.i.i.i.preheader ]
  %i.cic = fmul double %.0299376.i.i.i, %.0299376.i.i.i ; 2 uses
  %i.cid = fmul double %.0299376.i.i.i, 4.000000e+00 ; 2 uses
  %i.cie = fneg <2 x double> %i.cib
  %i.cif = fmul double %i.cgn, %i.cid
  %i.cig = fneg double %.sroa.10.0.i.i.i
  %i.cih = insertelement <2 x double> poison, double %i.cid, i64 0
  %i.cii = shufflevector <2 x double> %i.cih, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cij = fmul <2 x double> %i.cgc, %i.cii
  %i.cik = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cgb, <2 x double> splat (double 3.000000e+00), <2 x double> %i.cij)
  %i.cil = insertelement <2 x double> poison, double %i.cic, i64 0
  %i.cim = shufflevector <2 x double> %i.cil, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cin = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cim, <2 x double> %i.cik, <2 x double> %i.cga) ; 2 uses
  %i.cio = call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.cin)
  %i.cip = fcmp ogt <2 x double> %i.cio, %i.che
  %i.ciq = fdiv <2 x double> %i.cie, %i.cin
  %i.cir = select <2 x i1> %i.cip, <2 x double> %i.ciq, <2 x double> zeroinitializer
  %i.cis = insertelement <2 x double> poison, double %.0299376.i.i.i, i64 0
  %i.cit = shufflevector <2 x double> %i.cis, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ciu = fadd <2 x double> %i.cit, %i.cir       ; 9 uses
  store <2 x double> %i.ciu, ptr %i.wv, align 8, !tbaa !29
  %i.civ = fmul <2 x double> %i.ciu, %i.ciu       ; 3 uses
  %i.ciw = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ciu, <2 x double> %i.chf, <2 x double> %i.chg)
  %i.cix = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.civ, <2 x double> %i.ciw, <2 x double> %i.chh)
  %i.ciy = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ciu, <2 x double> %i.cix, <2 x double> %i.chi) ; 2 uses
  store <2 x double> %i.ciy, ptr %gep364.i.i.i, align 8, !tbaa !29
  %i.ciz = call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.ciy)
  %i.cja = fdiv <2 x double> %i.ciz, %i.chj       ; 3 uses
  %i.cjb = fcmp ogt <2 x double> %i.cja, zeroinitializer ; 2 uses
  %i.cjc = extractelement <2 x i1> %i.cjb, i64 0
  %i.cjd = extractelement <2 x double> %i.cja, i64 0
  %.1291.i.i.i = select i1 %i.cjc, double %i.cjd, double 0.000000e+00 ; 2 uses
  %i.cje = extractelement <2 x i1> %i.cjb, i64 1
  %i.cjf = extractelement <2 x double> %i.cja, i64 1
  %.1291.1422.i.i.i = select i1 %i.cje, double %i.cjf, double 0.000000e+00
  %i.cjg = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ciu, <2 x double> %i.chk, <2 x double> %i.chl)
  %i.cjh = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.civ, <2 x double> %i.cjg, <2 x double> %i.chm)
  %i.cji = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ciu, <2 x double> %i.cjh, <2 x double> %i.chn) ; 3 uses
  %i.cjj = extractelement <2 x double> %i.cji, i64 0
  %i.cjk = call double @llvm.fabs.f64(double %i.cjj)
  %i.cjl = call double @llvm.fmuladd.f64(double %i.cgm, double 3.000000e+00, double %i.cif)
  %i.cjm = call double @llvm.fmuladd.f64(double %i.cic, double %i.cjl, double %i.cgl) ; 2 uses
  %i.cjn = call double @llvm.fabs.f64(double %i.cjm)
  %i.cjo = fcmp ogt double %i.cjn, %i.cfj
  %i.cjp = insertelement <2 x double> poison, double %i.cig, i64 0
  %i.cjq = insertelement <2 x double> %i.cjp, double %i.cjk, i64 1
  %i.cjr = insertelement <2 x double> %i.cho, double %i.cjm, i64 0
  %i.cjs = fdiv <2 x double> %i.cjq, %i.cjr       ; 2 uses
  %i.cjt = extractelement <2 x double> %i.cjs, i64 0
  %.sroa.8.0.i.i.i = select i1 %i.cjo, double %i.cjt, double 0.000000e+00
  %i.cju = fadd double %.0299376.i.i.i, %.sroa.8.0.i.i.i ; 6 uses
  store double %i.cju, ptr %i.ww, align 8, !tbaa !29
  %i.cjv = extractelement <2 x double> %i.cjs, i64 1 ; 2 uses
  %i.cjw = fcmp ogt double %i.cjv, %.1291.i.i.i
  %.1291.1.i.i.i = select i1 %i.cjw, double %i.cjv, double %.1291.i.i.i ; 2 uses
  store <2 x double> %i.cji, ptr %gep364.1.i.i.i, align 8, !tbaa !29
  %i.cjx = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ciu, <2 x double> %i.chq, <2 x double> %i.chs)
  %i.cjy = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.civ, <2 x double> %i.cjx, <2 x double> %i.chu)
  %i.cjz = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ciu, <2 x double> %i.cjy, <2 x double> %i.chw) ; 3 uses
  store <2 x double> %i.cjz, ptr %gep364.2.i.i.i, align 8, !tbaa !29
  %i.cka = fmul double %i.cju, %i.cju             ; 2 uses
  %i.ckb = insertelement <2 x double> poison, double %i.cju, i64 0
  %i.ckc = shufflevector <2 x double> %i.ckb, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ckd = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ckc, <2 x double> %i.cgc, <2 x double> %i.cgb)
  %i.cke = insertelement <2 x double> poison, double %i.cka, i64 0
  %i.ckf = shufflevector <2 x double> %i.cke, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ckg = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ckf, <2 x double> %i.ckd, <2 x double> %i.cga)
end_hunk_2
