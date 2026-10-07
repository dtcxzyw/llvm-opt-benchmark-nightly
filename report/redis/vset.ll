Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/redis/original/vset?download=true
inline.NumInlined: 130
inline.NumDeleted: 15
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 4
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@exprCompile:bb.a
  br i1 %i.cf, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.cg = shl nsw i32 %i.cd, 1                    ; 2 uses
  %i.ch = sext i32 %i.cg to i64
  %i.ci = load ptr, ptr @RedisModule_Realloc, align 8, !tbaa !24
  %i.cj = shl nsw i64 %i.ch, 3
  %i.ck = tail call ptr %i.ci(ptr noundef %.pre.i75, i64 noundef %i.cj) #22, !inline_history !52 ; 2 uses
  store ptr %i.ck, ptr %i.v, align 8, !tbaa !35
  store i32 %i.cg, ptr %i.z, align 4, !tbaa !37
  %.pre12.i76 = load i32, ptr %i.y, align 8, !tbaa !36
  %.pre = load i32, ptr %i.o, align 8, !tbaa !113
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.cl = phi i32 [ %.pre, %bb.p ], [ %i.bh, %bb.o ] ; 2 uses
  %i.cm = phi i32 [ %.pre12.i76, %bb.p ], [ %i.cd, %bb.o ] ; 2 uses
  %i.cn = phi ptr [ %i.ck, %bb.p ], [ %.pre.i75, %bb.o ]
  %i.co = sext i32 %i.cm to i64
  %i.cp = getelementptr inbounds [8 x i8], ptr %i.cn, i64 %i.co
  store ptr %i.bl, ptr %i.cp, align 8, !tbaa !30
  %i.cq = add nsw i32 %i.cm, 1
  store i32 %i.cq, ptr %i.y, align 8, !tbaa !36
  %reass.sub = sub i32 %i.bg, %i.ca
  %i.cr = add i32 %reass.sub, 1                   ; 2 uses
  %i.cs = icmp sgt i32 %i.cl, 0
  br i1 %i.cs, label %exprStackPop.exit, label %._crit_edge94

._crit_edge94:                                    ; preds = %bb.q, %._crit_edge
  %.lcssa91 = phi i32 [ %.promoted, %._crit_edge ], [ %i.cr, %bb.q ]
  %.not71 = icmp eq i32 %.lcssa91, 1
  br i1 %.not71, label %bb.t, label %bb.r

bb.r:                                             ; preds = %._crit_edge94
  %.not72 = icmp eq ptr %1, null
  br i1 %.not72, label %.sink.split, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ct = load ptr, ptr %i.q, align 8, !tbaa !112
  %i.cu = load i32, ptr %i.t, align 8, !tbaa !111
  %i.cv = sext i32 %i.cu to i64
  %i.cw = getelementptr [8 x i8], ptr %i.ct, i64 %i.cv
  %i.cx = getelementptr i8, ptr %i.cw, i64 -8
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !30
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %i.da = load i32, ptr %i.cz, align 8, !tbaa !55
  store i32 %i.da, ptr %1, align 4, !tbaa !22
  br label %.sink.split

.sink.split:                                      ; preds = %bb.f, %bb.r, %bb.s, %.critedge, %.thread82
  tail call void @exprFree(ptr noundef nonnull %i.c)
  br label %bb.t

bb.t:                                             ; preds = %.sink.split, %._crit_edge94
  %.6 = phi ptr [ %i.c, %._crit_edge94 ], [ null, %.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.b
  %.7 = phi ptr [ null, %bb.b ], [ %.6, %bb.t ]
  ret ptr %.7
}

; Function Attrs: mustprogress nofree norecurse nounwind willreturn uwtable
define dso_local double @exprTokenToNum(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #12 {
bb.a:
  %i.a = alloca [256 x i8], align 16              ; 5 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !26
  switch i32 %i.d, label %bb.e [
    i32 1, label %bb.b
    i32 2, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load double, ptr %i.e, align 8, !tbaa !28
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load i64, ptr %i.g, align 8, !tbaa !28   ; 3 uses
  %i.i = icmp ult i64 %i.h, 256
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !28
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr align 1 %i.k, i64 %i.h, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.h
  store i8 0, ptr %i.l, align 1, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  %i.m = call double @strtod(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #22
  %i.n = load ptr, ptr %i.b, align 8, !tbaa !49
  %i.o = load i8, ptr %i.n, align 1, !tbaa !28
  %i.p = icmp eq i8 %i.o, 0
  %i.q = select i1 %i.p, double %i.m, double 0.000000e+00
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.a, %bb.d, %bb.b
  %.0 = phi double [ %i.f, %bb.b ], [ %i.q, %bb.d ], [ 0.000000e+00, %bb.a ], [ 0.000000e+00, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  ret double %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local double @exprTokenToBool(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #13 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !26   ; 2 uses
  switch i32 %i.b, label %bb.d [
    i32 1, label %bb.b
    i32 2, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load double, ptr %i.c, align 8, !tbaa !28
  %i.e = fcmp une double %i.d, 0.000000e+00
  %i.f = uitofp i1 %i.e to double
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load i64, ptr %i.g, align 8, !tbaa !28
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c
  %i.j = icmp eq i32 %i.b, 6
  %. = select i1 %i.j, double 0.000000e+00, double 1.000000e+00
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %.0 = phi double [ %i.f, %bb.b ], [ 0.000000e+00, %bb.c ], [ %., %bb.d ]
  ret double %.0
}

; Function Attrs: mustprogress nofree norecurse nounwind willreturn uwtable
define dso_local range(i32 0, 2) i32 @exprTokensEqual(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #12 {
bb.a:
  %i.a = alloca [256 x i8], align 16              ; 5 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca [256 x i8], align 16              ; 5 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !26   ; 3 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !26 ; 7 uses
  switch i32 %i.f, label %.thread20 [
    i32 2, label %bb.b
    i32 1, label %bb.e
    i32 6, label %._crit_edge
  ]

bb.b:                                             ; preds = %bb.a
  %i.g = icmp eq i32 %.pre, 2
  br i1 %i.g, label %bb.c, label %.thread20

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load i64, ptr %i.h, align 8, !tbaa !28   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.k = load i64, ptr %i.j, align 8, !tbaa !28
  %i.l = icmp eq i64 %i.i, %i.k
  br i1 %i.l, label %bb.d, label %bb.n

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !28
  %i.p = load ptr, ptr %i.m, align 8, !tbaa !28
  %bcmp = tail call i32 @bcmp(ptr %i.o, ptr %i.p, i64 %i.i)
  %i.q = icmp eq i32 %bcmp, 0
  br label %bb.n

bb.e:                                             ; preds = %bb.a
  %i.r = icmp eq i32 %.pre, 1
  br i1 %i.r, label %bb.f, label %.thread20

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.t = load double, ptr %i.s, align 8, !tbaa !28
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.v = load double, ptr %i.u, align 8, !tbaa !28
  %i.w = fcmp oeq double %i.t, %i.v
  br label %bb.n

.thread20:                                        ; preds = %bb.a, %bb.b, %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.y = icmp eq i32 %.pre, 6
  br i1 %i.y, label %._crit_edge, label %bb.g

._crit_edge:                                      ; preds = %bb.a, %.thread20
  %2 = phi i32 [ 6, %.thread20 ], [ %.pre, %bb.a ]
  %i.z = icmp eq i32 %i.f, %2
  br label %bb.n

bb.g:                                             ; preds = %.thread20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #22
  switch i32 %i.f, label %exprTokenToNum.exit [
    i32 1, label %bb.h
    i32 2, label %bb.i
  ]

bb.h:                                             ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !28
  br label %exprTokenToNum.exit

bb.i:                                             ; preds = %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !28 ; 3 uses
  %i.ae = icmp ult i64 %i.ad, 256
  br i1 %i.ae, label %bb.j, label %exprTokenToNum.exit

bb.j:                                             ; preds = %bb.i
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !28
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.c, ptr align 1 %i.ag, i64 %i.ad, i1 false)
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.ad
  store i8 0, ptr %i.ah, align 1, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #22
  %i.ai = call double @strtod(ptr noundef nonnull %i.c, ptr noundef nonnull %i.d) #22
  %i.aj = load ptr, ptr %i.d, align 8, !tbaa !49
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !28
  %i.al = icmp eq i8 %i.ak, 0
  %i.am = select i1 %i.al, double %i.ai, double 0.000000e+00
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #22
  %.pr.pre = load i32, ptr %i.x, align 4, !tbaa !26
  br label %exprTokenToNum.exit

exprTokenToNum.exit:                              ; preds = %bb.h, %bb.i, %bb.j, %bb.g
  %i.an = phi i32 [ %.pre, %bb.g ], [ %.pre, %bb.i ], [ %.pr.pre, %bb.j ], [ %.pre, %bb.h ]
  %.0.i = phi double [ 0.000000e+00, %bb.g ], [ 0.000000e+00, %bb.i ], [ %i.am, %bb.j ], [ %i.ab, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  switch i32 %i.an, label %exprTokenToNum.exit19 [
    i32 1, label %bb.k
    i32 2, label %bb.l
  ]

bb.k:                                             ; preds = %exprTokenToNum.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !28
  br label %exprTokenToNum.exit19

bb.l:                                             ; preds = %exprTokenToNum.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !28 ; 3 uses
  %i.as = icmp ult i64 %i.ar, 256
  br i1 %i.as, label %bb.m, label %exprTokenToNum.exit19

bb.m:                                             ; preds = %bb.l
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !28
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr align 1 %i.au, i64 %i.ar, i1 false)
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ar
  store i8 0, ptr %i.av, align 1, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  %i.aw = call double @strtod(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #22
  %i.ax = load ptr, ptr %i.b, align 8, !tbaa !49
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !28
  %i.az = icmp eq i8 %i.ay, 0
  %i.ba = select i1 %i.az, double %i.aw, double 0.000000e+00
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  br label %exprTokenToNum.exit19

exprTokenToNum.exit19:                            ; preds = %exprTokenToNum.exit, %bb.k, %bb.l, %bb.m
  %.0.i18 = phi double [ %i.ap, %bb.k ], [ %i.ba, %bb.m ], [ 0.000000e+00, %exprTokenToNum.exit ], [ 0.000000e+00, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.bb = fcmp oeq double %.0.i, %.0.i18
  br label %bb.n

bb.n:                                             ; preds = %bb.c, %bb.d, %exprTokenToNum.exit19, %._crit_edge, %bb.f
  %.0.shrunk = phi i1 [ %i.bb, %exprTokenToNum.exit19 ], [ %i.w, %bb.f ], [ %i.z, %._crit_edge ], [ false, %bb.c ], [ %i.q, %bb.d ]
  %.0 = zext i1 %.0.shrunk to i32
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @exprTokensStringIn(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !26
  %i.c = icmp eq i32 %i.b, 2
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !26
  %i.f = icmp eq i32 %i.e, 2
  br i1 %i.f, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = load ptr, ptr @RedisModule__Assert, align 8, !tbaa !24
  tail call void %i.g(ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.22, i32 noundef 740) #22
  tail call void @exit(i32 noundef 1) #23
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load i64, ptr %i.h, align 8, !tbaa !28   ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.k = load i64, ptr %i.j, align 8, !tbaa !28   ; 2 uses
  %i.l = icmp ugt i64 %i.i, %i.k
  br i1 %i.l, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = sub nuw i64 %i.k, %i.i
  %i.p = load ptr, ptr %i.m, align 8, !tbaa !28
  %i.q = load ptr, ptr %i.n, align 8, !tbaa !28
  br label %bb.f

bb.e:                                             ; preds = %bb.f
  %i.r = add i64 %.01316, 1                       ; 2 uses
  %.not = icmp ugt i64 %i.r, %i.o
  br i1 %.not, label %.loopexit, label %bb.f, !llvm.loop !7

bb.f:                                             ; preds = %.preheader, %bb.e
  %.01316 = phi i64 [ 0, %.preheader ], [ %i.r, %bb.e ] ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %.01316
  %bcmp = tail call i32 @bcmp(ptr %i.s, ptr %i.q, i64 %i.i)
  %i.t = icmp eq i32 %bcmp, 0
  br i1 %i.t, label %.loopexit, label %bb.e

.loopexit:                                        ; preds = %bb.f, %bb.e, %bb.d
  %.1 = phi i32 [ 0, %bb.d ], [ 0, %bb.e ], [ 1, %bb.f ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @jsonExtractField(ptr noundef %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %1 ; 34 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  %i.c = ptrtoaddr ptr %i.b to i64                ; 7 uses
  %.not11 = icmp eq i64 %1, 0
  br i1 %.not11, label %jsonSkipWhiteSpaces.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.d = tail call ptr @__ctype_b_loc() #24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !42
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i
  %.275.i = phi ptr [ %0, %.lr.ph.i.i ], [ %i.k, %bb.c ] ; 3 uses
  %i.f = load i8, ptr %.275.i, align 1, !tbaa !28
  %i.g = zext i8 %i.f to i64
  %i.h = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %i.g
  %i.i = load i16, ptr %i.h, align 2, !tbaa !44
  %i.j = and i16 %i.i, 8192
  %.not.i.i = icmp eq i16 %i.j, 0
  br i1 %.not.i.i, label %jsonSkipWhiteSpaces.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %.275.i, i64 1 ; 2 uses
  %exitcond.not.i.i = icmp eq ptr %i.k, %i.b
  br i1 %exitcond.not.i.i, label %jsonSeekField.exit.thread, label %bb.b, !llvm.loop !8

jsonSkipWhiteSpaces.exit.i:                       ; preds = %bb.b, %bb.a
  %.376.i = phi ptr [ %0, %bb.a ], [ %.275.i, %bb.b ] ; 3 uses
  %.not.i = icmp ult ptr %.376.i, %i.b
  br i1 %.not.i, label %bb.d, label %jsonSeekField.exit.thread

bb.d:                                             ; preds = %jsonSkipWhiteSpaces.exit.i
  %i.l = load i8, ptr %.376.i, align 1, !tbaa !28
  %.not31.i = icmp eq i8 %i.l, 123
  br i1 %.not31.i, label %.preheader.i, label %jsonSeekField.exit.thread

.preheader.i:                                     ; preds = %bb.d, %bb.ap
  %.376.pn.i = phi ptr [ %.16.i, %bb.ap ], [ %.376.i, %bb.d ] ; 3 uses
  %.073.i = getelementptr inbounds nuw i8, ptr %.376.pn.i, i64 1 ; 3 uses
  %i.m = icmp ult ptr %.073.i, %i.b
  br i1 %i.m, label %.lr.ph.i42.i, label %jsonSkipWhiteSpaces.exit45.i

.lr.ph.i42.i:                                     ; preds = %.preheader.i
  %.376.pn168.i = ptrtoaddr ptr %.376.pn.i to i64
  %i.n = tail call ptr @__ctype_b_loc() #24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !42
  %scevgep167.i = getelementptr i8, ptr %.376.pn.i, i64 %i.c
  %i.p = sub i64 0, %.376.pn168.i
  %scevgep169.i = getelementptr i8, ptr %scevgep167.i, i64 %i.p
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %.lr.ph.i42.i
  %.4.i = phi ptr [ %.073.i, %.lr.ph.i42.i ], [ %i.v, %bb.f ] ; 3 uses
  %i.q = load i8, ptr %.4.i, align 1, !tbaa !28
  %i.r = zext i8 %i.q to i64
  %i.s = getelementptr inbounds nuw [2 x i8], ptr %i.o, i64 %i.r
  %i.t = load i16, ptr %i.s, align 2, !tbaa !44
  %i.u = and i16 %i.t, 8192
  %.not.i43.i = icmp eq i16 %i.u, 0
end_hunk_0
