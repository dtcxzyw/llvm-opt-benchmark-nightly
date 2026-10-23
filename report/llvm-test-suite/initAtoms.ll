Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/initAtoms?download=true
inline.NumInlined: 18
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@initAtoms:bb.a
  %i.d = shl nsw i32 %i.c, 6                      ; 2 uses
  %i.e = sext i32 %i.d to i64                     ; 3 uses
  %i.f = shl nsw i64 %i.e, 2                      ; 2 uses
  %i.g = tail call noalias noundef ptr @malloc(i64 noundef range(i64 -51539607552, 51539607529) %i.f) #10 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.g, ptr %i.h, align 8, !tbaa !13
  %i.i = tail call noalias noundef ptr @malloc(i64 noundef range(i64 -51539607552, 51539607529) %i.f) #10 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.i, ptr %i.j, align 8, !tbaa !14
  %i.k = mul nsw i64 %i.e, 24                     ; 3 uses
  %i.l = tail call noalias noundef ptr @malloc(i64 noundef range(i64 -51539607552, 51539607529) %i.k) #10 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.l, ptr %i.m, align 8, !tbaa !15
  %i.n = tail call noalias noundef ptr @malloc(i64 noundef range(i64 -51539607552, 51539607529) %i.k) #10 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %i.n, ptr %i.o, align 8, !tbaa !16
  %i.p = tail call noalias noundef ptr @malloc(i64 noundef range(i64 -51539607552, 51539607529) %i.k) #10 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr %i.p, ptr %i.q, align 8, !tbaa !17
  %i.r = shl nsw i64 %i.e, 3
  %i.s = tail call noalias noundef ptr @malloc(i64 noundef range(i64 -51539607552, 51539607529) %i.r) #10 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %i.s, ptr %i.t, align 8, !tbaa !18
  store i32 0, ptr %i.a, align 8, !tbaa !39
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 0, ptr %i.u, align 4, !tbaa !19
  %i.v = icmp sgt i32 %i.c, 0
  br i1 %i.v, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.w = zext nneg i32 %i.d to i64                ; 3 uses
  %i.x = shl nuw nsw i64 %i.w, 2                  ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.g, i8 0, i64 %i.x, i1 false), !tbaa !7
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.i, i8 0, i64 %i.x, i1 false), !tbaa !7
  %i.y = shl nuw nsw i64 %i.w, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.s, i8 0, i64 %i.y, i1 false), !tbaa !21
  %i.z = mul nuw nsw i64 %i.w, 24                 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.l, i8 0, i64 %i.z, i1 false)
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.n, i8 0, i64 %i.z, i1 false)
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.p, i8 0, i64 %i.z, i1 false)
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.preheader, %bb.a
  ret ptr %i.a
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define dso_local void @destroyAtoms(ptr noundef captures(none) %0) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !13   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef nonnull %i.b) #11
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  store ptr null, ptr %i.a, align 8, !tbaa !13
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !14   ; 2 uses
  %.not24 = icmp eq ptr %i.d, null
  br i1 %.not24, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @free(ptr noundef nonnull %i.d) #11
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  store ptr null, ptr %i.c, align 8, !tbaa !14
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !15   ; 2 uses
  %.not25 = icmp eq ptr %i.f, null
  br i1 %.not25, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @free(ptr noundef nonnull %i.f) #11
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  store ptr null, ptr %i.e, align 8, !tbaa !15
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !16   ; 2 uses
  %.not26 = icmp eq ptr %i.h, null
  br i1 %.not26, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @free(ptr noundef nonnull %i.h) #11
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  store ptr null, ptr %i.g, align 8, !tbaa !16
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !17   ; 2 uses
  %.not27 = icmp eq ptr %i.j, null
  br i1 %.not27, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @free(ptr noundef nonnull %i.j) #11
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  store ptr null, ptr %i.i, align 8, !tbaa !17
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !18   ; 2 uses
  %.not28 = icmp eq ptr %i.l, null
  br i1 %.not28, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @free(ptr noundef nonnull %i.l) #11
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  tail call void @free(ptr noundef nonnull %0) #11
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @createFccLattice(i32 noundef %0, i32 noundef %1, i32 noundef %2, double noundef %3, ptr nofree noundef readonly captures(none) %4) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !40   ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 96 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 120 ; 5 uses
  %i.e = load double, ptr %i.c, align 8, !tbaa !21
  %i.f = fdiv double %i.e, %3
  %i.g = tail call double @llvm.floor.f64(double %i.f)
  %i.h = fptosi double %i.g to i32                ; 2 uses
  %i.i = load double, ptr %i.d, align 8, !tbaa !21
  %i.j = fdiv double %i.i, %3
  %i.k = tail call double @llvm.ceil.f64(double %i.j)
  %i.l = fptosi double %i.k to i32                ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.o = load <2 x double>, ptr %i.m, align 8, !tbaa !21
  %i.p = insertelement <2 x double> poison, double %3, i64 0
  %i.q = shufflevector <2 x double> %i.p, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.r = fdiv <2 x double> %i.o, %i.q
  %i.s = tail call <2 x double> @llvm.floor.v2f64(<2 x double> %i.r)
  %i.t = load <2 x double>, ptr %i.n, align 8, !tbaa !21
  %i.u = fdiv <2 x double> %i.t, %i.q
  %i.v = tail call <2 x double> @llvm.ceil.v2f64(<2 x double> %i.u)
  %i.w = fptosi <2 x double> %i.s to <2 x i32>    ; 3 uses
  %i.x = fptosi <2 x double> %i.v to <2 x i32>    ; 3 uses
  %i.y = icmp slt i32 %i.h, %i.l
  br i1 %i.y, label %.lr.ph74, label %._crit_edge75.split

.lr.ph74:                                         ; preds = %bb.a
  %i.z = icmp sge <2 x i32> %i.w, %i.x            ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 104 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 128 ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 112 ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 136 ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 4 uses
  %i.ag = extractelement <2 x i1> %i.z, i64 0
  %i.ah = extractelement <2 x i1> %i.z, i64 1
  %brmerge = select i1 %i.ag, i1 true, i1 %i.ah
  br i1 %brmerge, label %._crit_edge75.split, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.lr.ph74
  %i.ai = extractelement <2 x i32> %i.w, i64 0
  %i.aj = extractelement <2 x i32> %i.w, i64 1
  %i.ak = extractelement <2 x i32> %i.x, i64 0
  %i.al = extractelement <2 x i32> %i.x, i64 1
  br label %.lr.ph

._crit_edge75.split:                              ; preds = %._crit_edge71, %.lr.ph74, %bb.a
  tail call void @profileStart(i32 noundef 10) #11
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !29 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 4
  tail call void @addIntParallel(ptr noundef %i.an, ptr noundef nonnull %i.ao, i32 noundef 1) #11
  tail call void @profileStop(i32 noundef 10) #11
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge71
  %.06172 = phi i32 [ %i.av, %._crit_edge71 ], [ %i.h, %.lr.ph.preheader ] ; 3 uses
  %i.ap = sitofp i32 %.06172 to double            ; 2 uses
  %i.aq = mul nsw i32 %.06172, %1
  %i.ar = fadd nnan double %i.ap, 2.500000e-01
  %i.as = fmul double %3, %i.ar                   ; 6 uses
  %i.at = fadd nnan double %i.ap, 7.500000e-01
  %i.au = fmul double %3, %i.at                   ; 6 uses
  br label %.preheader.lr.ph

._crit_edge71:                                    ; preds = %._crit_edge
  %i.av = add i32 %.06172, 1                      ; 2 uses
  %exitcond81.not = icmp eq i32 %i.av, %i.l
  br i1 %exitcond81.not, label %._crit_edge75.split, label %.lr.ph

.preheader.lr.ph:                                 ; preds = %.lr.ph, %._crit_edge
  %.06069 = phi i32 [ %i.ai, %.lr.ph ], [ %i.bk, %._crit_edge ] ; 3 uses
  %i.aw = sitofp i32 %.06069 to double            ; 3 uses
  %i.ax = add nsw i32 %.06069, %i.aq
  %i.ay = mul nsw i32 %i.ax, %2
  %5 = fadd nnan double %i.aw, 2.500000e-01
  %6 = fmul double %3, %5                         ; 6 uses
  %i.az = fadd nnan double %i.aw, 7.500000e-01
  %i.ba = fmul double %3, %i.az                   ; 10 uses
  %i.bb = fadd nnan double %i.aw, 7.500000e-01
  %i.bc = fmul double %3, %i.bb
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %bb.ac
  %.05968 = phi i32 [ %i.aj, %.preheader.lr.ph ], [ %i.dp, %bb.ac ] ; 3 uses
  %i.bd = sitofp i32 %.05968 to double            ; 3 uses
  %i.be = add nsw i32 %.05968, %i.ay
  %i.bf = shl nsw i32 %i.be, 2                    ; 4 uses
  %i.bg = fadd nnan double %i.bd, 2.500000e-01
  %i.bh = fmul double %3, %i.bg                   ; 6 uses
  %i.bi = load double, ptr %i.c, align 8, !tbaa !21 ; 7 uses
  %i.bj = fcmp olt double %i.as, %i.bi
  br i1 %i.bj, label %.thread, label %bb.b

.thread:                                          ; preds = %.preheader
  %7 = fadd nnan double %i.bd, 7.500000e-01
  %8 = fmul double %3, %7
  br label %bb.o

._crit_edge:                                      ; preds = %bb.ac
  %i.bk = add i32 %.06069, 1                      ; 2 uses
  %exitcond80.not = icmp eq i32 %i.bk, %i.ak
  br i1 %exitcond80.not, label %._crit_edge71, label %.preheader.lr.ph

bb.b:                                             ; preds = %.preheader
  %i.bl = load double, ptr %i.d, align 8, !tbaa !21
  %i.bm = fcmp ult double %i.as, %i.bl
  br i1 %i.bm, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.bn = load double, ptr %i.aa, align 8, !tbaa !21
  %i.bo = fcmp olt double %6, %i.bn
  br i1 %i.bo, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bp = load double, ptr %i.ab, align 8, !tbaa !21
  %i.bq = fcmp ult double %6, %i.bp
  br i1 %i.bq, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.br = load double, ptr %i.ac, align 8, !tbaa !21
  %i.bs = fcmp olt double %i.bh, %i.br
  br i1 %i.bs, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bt = load double, ptr %i.ad, align 8, !tbaa !21
  %i.bu = fcmp ult double %i.bh, %i.bt
  br i1 %i.bu, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bv = load ptr, ptr %i.ae, align 8, !tbaa !30
  %i.bw = load ptr, ptr %i.af, align 8, !tbaa !29
  tail call void @putAtomInBox(ptr noundef %i.bv, ptr noundef %i.bw, i32 noundef %i.bf, i32 noundef 0, double noundef %i.as, double noundef %6, double noundef %i.bh, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00) #11
  %.pre = load double, ptr %i.c, align 8, !tbaa !21
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.f, %bb.c, %bb.d, %bb.b, %bb.g
  %9 = phi double [ %i.bi, %bb.e ], [ %i.bi, %bb.f ], [ %i.bi, %bb.c ], [ %i.bi, %bb.d ], [ %.pre, %bb.g ], [ %i.bi, %bb.b ] ; 7 uses
  %i.bx = fadd nnan double %i.bd, 7.500000e-01
  %i.by = fmul double %3, %i.bx                   ; 10 uses
  %i.bz = fcmp olt double %i.as, %9
  br i1 %i.bz, label %bb.o, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ca = load double, ptr %i.d, align 8, !tbaa !21
  %i.cb = fcmp ult double %i.as, %i.ca
  br i1 %i.cb, label %bb.j, label %bb.o

bb.j:                                             ; preds = %bb.i
  %i.cc = load double, ptr %i.aa, align 8, !tbaa !21
  %i.cd = fcmp olt double %i.ba, %i.cc
  br i1 %i.cd, label %bb.o, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ce = load double, ptr %i.ab, align 8, !tbaa !21
  %i.cf = fcmp ult double %i.ba, %i.ce
  br i1 %i.cf, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.cg = load double, ptr %i.ac, align 8, !tbaa !21
  %i.ch = fcmp olt double %i.by, %i.cg
  br i1 %i.ch, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ci = load double, ptr %i.ad, align 8, !tbaa !21
  %i.cj = fcmp ult double %i.by, %i.ci
  br i1 %i.cj, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ck = or disjoint i32 %i.bf, 1
  %i.cl = load ptr, ptr %i.ae, align 8, !tbaa !30
  %i.cm = load ptr, ptr %i.af, align 8, !tbaa !29
  tail call void @putAtomInBox(ptr noundef %i.cl, ptr noundef %i.cm, i32 noundef %i.ck, i32 noundef 0, double noundef %i.as, double noundef %i.ba, double noundef %i.by, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00) #11
  %.pre85 = load double, ptr %i.c, align 8, !tbaa !21
  br label %bb.o

bb.o:                                             ; preds = %.thread, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h
  %10 = phi double [ %i.by, %bb.n ], [ %i.by, %bb.m ], [ %i.by, %bb.l ], [ %i.by, %bb.k ], [ %i.by, %bb.j ], [ %i.by, %bb.i ], [ %i.by, %bb.h ], [ %8, %.thread ] ; 3 uses
  %11 = phi double [ %i.ba, %bb.n ], [ %i.ba, %bb.m ], [ %i.ba, %bb.l ], [ %i.ba, %bb.k ], [ %i.ba, %bb.j ], [ %i.ba, %bb.i ], [ %i.ba, %bb.h ], [ %i.bc, %.thread ] ; 3 uses
  %12 = phi double [ %.pre85, %bb.n ], [ %9, %bb.m ], [ %9, %bb.l ], [ %9, %bb.k ], [ %9, %bb.j ], [ %9, %bb.i ], [ %9, %bb.h ], [ %i.bi, %.thread ] ; 6 uses
  %i.cn = fcmp olt double %i.au, %12
  br i1 %i.cn, label %bb.ac, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.co = load double, ptr %i.d, align 8, !tbaa !21
  %i.cp = fcmp ult double %i.au, %i.co
  br i1 %i.cp, label %bb.q, label %bb.v

bb.q:                                             ; preds = %bb.p
  %i.cq = load double, ptr %i.aa, align 8, !tbaa !21
  %i.cr = fcmp olt double %6, %i.cq
  br i1 %i.cr, label %bb.v, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cs = load double, ptr %i.ab, align 8, !tbaa !21
  %i.ct = fcmp ult double %6, %i.cs
  br i1 %i.ct, label %bb.s, label %bb.v

bb.s:                                             ; preds = %bb.r
  %i.cu = load double, ptr %i.ac, align 8, !tbaa !21
  %i.cv = fcmp olt double %10, %i.cu
  br i1 %i.cv, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cw = load double, ptr %i.ad, align 8, !tbaa !21
  %i.cx = fcmp ult double %10, %i.cw
  br i1 %i.cx, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.cy = or disjoint i32 %i.bf, 2
  %i.cz = load ptr, ptr %i.ae, align 8, !tbaa !30
  %i.da = load ptr, ptr %i.af, align 8, !tbaa !29
  tail call void @putAtomInBox(ptr noundef %i.cz, ptr noundef %i.da, i32 noundef %i.cy, i32 noundef 0, double noundef %i.au, double noundef %6, double noundef %10, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00) #11
  %.pre86 = load double, ptr %i.c, align 8, !tbaa !21
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p
  %13 = phi double [ %.pre86, %bb.u ], [ %12, %bb.t ], [ %12, %bb.s ], [ %12, %bb.r ], [ %12, %bb.q ], [ %12, %bb.p ]
  %i.db = fcmp olt double %i.au, %13
  br i1 %i.db, label %bb.ac, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dc = load double, ptr %i.d, align 8, !tbaa !21
  %i.dd = fcmp ult double %i.au, %i.dc
  br i1 %i.dd, label %bb.x, label %bb.ac

bb.x:                                             ; preds = %bb.w
  %i.de = load double, ptr %i.aa, align 8, !tbaa !21
  %i.df = fcmp olt double %11, %i.de
  br i1 %i.df, label %bb.ac, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dg = load double, ptr %i.ab, align 8, !tbaa !21
  %i.dh = fcmp ult double %11, %i.dg
  br i1 %i.dh, label %bb.z, label %bb.ac

bb.z:                                             ; preds = %bb.y
  %i.di = load double, ptr %i.ac, align 8, !tbaa !21
  %i.dj = fcmp olt double %i.bh, %i.di
  br i1 %i.dj, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dk = load double, ptr %i.ad, align 8, !tbaa !21
  %i.dl = fcmp ult double %i.bh, %i.dk
  br i1 %i.dl, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.dm = or disjoint i32 %i.bf, 3
  %i.dn = load ptr, ptr %i.ae, align 8, !tbaa !30
  %i.do = load ptr, ptr %i.af, align 8, !tbaa !29
  tail call void @putAtomInBox(ptr noundef %i.dn, ptr noundef %i.do, i32 noundef %i.dm, i32 noundef 0, double noundef %i.au, double noundef %11, double noundef %i.bh, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00) #11
  br label %bb.ac

bb.ac:                                            ; preds = %bb.o, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v
  %i.dp = add i32 %.05968, 1                      ; 2 uses
  %exitcond.not = icmp eq i32 %i.dp, %i.al
  br i1 %exitcond.not, label %._crit_edge, label %.preheader
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.ceil.f64(double) #4

declare void @putAtomInBox(ptr noundef, ptr noundef, i32 noundef, i32 noundef, double noundef, double noundef, double noundef, double noundef, double noundef, double noundef) local_unnamed_addr #5

declare void @profileStart(i32 noundef) local_unnamed_addr #5

declare void @addIntParallel(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

declare void @profileStop(i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local void @setVcm(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca [4 x double], align 16            ; 8 uses
  %i.b = alloca [4 x double], align 16            ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.a, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.b, i8 0, i64 32, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !30   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.f = load i32, ptr %i.e, align 4, !tbaa !31   ; 2 uses
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %.lr.ph37.i, label %computeVcm.exit

.lr.ph37.i:                                       ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 120
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !32
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %wide.trip.count.i = zext nneg i32 %i.f to i64
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge.i, %.lr.ph37.i
  %indvars.iv56.i = phi i64 [ 0, %.lr.ph37.i ], [ %indvars.iv.next57.i, %._crit_edge.i ] ; 2 uses
  %indvars.iv.i = phi i32 [ 0, %.lr.ph37.i ], [ %indvars.iv.next.i, %._crit_edge.i ] ; 3 uses
  %.promoted3046.i = phi double [ 0.000000e+00, %.lr.ph37.i ], [ %.promoted3045.i, %._crit_edge.i ] ; 2 uses
  %.promoted2943.i = phi double [ 0.000000e+00, %.lr.ph37.i ], [ %.promoted2942.i, %._crit_edge.i ] ; 2 uses
  %.promoted2840.i = phi double [ 0.000000e+00, %.lr.ph37.i ], [ %.promoted2839.i, %._crit_edge.i ] ; 2 uses
  %.promoted3334.i = phi double [ 0.000000e+00, %.lr.ph37.i ], [ %.promoted32.i, %._crit_edge.i ] ; 2 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv56.i
  %i.p = load i32, ptr %i.o, align 4, !tbaa !7    ; 2 uses
  %i.q = icmp sgt i32 %i.p, 0
  br i1 %i.q, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.r = zext i32 %indvars.iv.i to i64
  %i.s = load ptr, ptr %i.j, align 8, !tbaa !29   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !16
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !14
  %i.x = load ptr, ptr %i.m, align 8, !tbaa !33
  %i.y = add i32 %i.p, %indvars.iv.i
  br label %bb.c

._crit_edge.i:                                    ; preds = %bb.c, %bb.b
  %.promoted3045.i = phi double [ %.promoted3046.i, %bb.b ], [ %i.as, %bb.c ]
  %.promoted2942.i = phi double [ %.promoted2943.i, %bb.b ], [ %i.al, %bb.c ]
  %.promoted2839.i = phi double [ %.promoted2840.i, %bb.b ], [ %i.ai, %bb.c ]
  %.promoted32.i = phi double [ %.promoted3334.i, %bb.b ], [ %i.af, %bb.c ]
  %indvars.iv.next57.i = add nuw nsw i64 %indvars.iv56.i, 1 ; 2 uses
  %indvars.iv.next.i = add i32 %indvars.iv.i, 64
  %exitcond59.not.i = icmp eq i64 %indvars.iv.next57.i, %wide.trip.count.i
  br i1 %exitcond59.not.i, label %computeVcm.exit, label %bb.b

bb.c:                                             ; preds = %bb.c, %.lr.ph.i
  %indvars.iv53.i = phi i64 [ %i.r, %.lr.ph.i ], [ %indvars.iv.next54.i, %bb.c ] ; 3 uses
  %i.z = phi double [ %.promoted3046.i, %.lr.ph.i ], [ %i.as, %bb.c ]
  %i.aa = phi double [ %.promoted2943.i, %.lr.ph.i ], [ %i.al, %bb.c ]
  %i.ab = phi double [ %.promoted2840.i, %.lr.ph.i ], [ %i.ai, %bb.c ]
  %i.ac = phi double [ %.promoted3334.i, %.lr.ph.i ], [ %i.af, %bb.c ]
  %i.ad = getelementptr inbounds nuw [24 x i8], ptr %i.u, i64 %indvars.iv53.i ; 3 uses
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !21
  %i.af = fadd double %i.ac, %i.ae                ; 3 uses
  store double %i.af, ptr %i.a, align 16, !tbaa !21
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !21
  %i.ai = fadd double %i.ab, %i.ah                ; 3 uses
  store double %i.ai, ptr %i.k, align 8, !tbaa !21
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !21
  %i.al = fadd double %i.aa, %i.ak                ; 3 uses
  store double %i.al, ptr %i.l, align 16, !tbaa !21
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv53.i
  %i.an = load i32, ptr %i.am, align 4, !tbaa !7
  %i.ao = sext i32 %i.an to i64
  %i.ap = getelementptr inbounds [16 x i8], ptr %i.x, i64 %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !35
  %i.as = fadd double %i.z, %i.ar                 ; 3 uses
  store double %i.as, ptr %i.n, align 8, !tbaa !21
  %indvars.iv.next54.i = add nuw nsw i64 %indvars.iv53.i, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next54.i to i32
  %exitcond = icmp eq i32 %i.y, %lftr.wideiv
  br i1 %exitcond, label %._crit_edge.i, label %bb.c

computeVcm.exit:                                  ; preds = %._crit_edge.i, %bb.a
  tail call void @profileStart(i32 noundef 10) #11
  call void @addRealParallel(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i32 noundef 4) #11
  call void @profileStop(i32 noundef 10) #11
  %i.at = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.au = load double, ptr %i.at, align 8, !tbaa !21 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.aw = load double, ptr %i.av, align 16, !tbaa !21
  %i.ax = fdiv double %i.aw, %i.au
  %i.ay = load <2 x double>, ptr %i.b, align 16, !tbaa !21
  %i.az = insertelement <2 x double> poison, double %i.au, i64 0
  %i.ba = shufflevector <2 x double> %i.az, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bb = fdiv <2 x double> %i.ay, %i.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  %i.bc = load <2 x double>, ptr %1, align 8, !tbaa !21
  %i.bd = fsub <2 x double> %i.bc, %i.bb
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bf = load double, ptr %i.be, align 8, !tbaa !21
  %i.bg = fsub double %i.bf, %i.ax
  %i.bh = load ptr, ptr %i.c, align 8, !tbaa !30  ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 12
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !31 ; 2 uses
  %i.bk = icmp sgt i32 %i.bj, 0
  br i1 %i.bk, label %.lr.ph33, label %._crit_edge34

.lr.ph33:                                         ; preds = %computeVcm.exit
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bh, i64 120
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !32
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 40
  %wide.trip.count = zext nneg i32 %i.bj to i64
  br label %bb.d

._crit_edge34:                                    ; preds = %._crit_edge, %computeVcm.exit
  ret void

bb.d:                                             ; preds = %.lr.ph33, %._crit_edge
  %indvars.iv43 = phi i64 [ 0, %.lr.ph33 ], [ %indvars.iv.next44, %._crit_edge ] ; 2 uses
  %indvars.iv = phi i32 [ 0, %.lr.ph33 ], [ %indvars.iv.next, %._crit_edge ] ; 3 uses
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %indvars.iv43
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !7  ; 2 uses
  %i.br = icmp sgt i32 %i.bq, 0
  br i1 %i.br, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.d
  %i.bs = zext i32 %indvars.iv to i64
  %i.bt = load ptr, ptr %i.bn, align 8, !tbaa !29 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !14
  %i.bw = load ptr, ptr %i.bo, align 8, !tbaa !33
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bt, i64 32
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !16
  %i.bz = add i32 %i.bq, %indvars.iv
  br label %bb.e

._crit_edge:                                      ; preds = %bb.e, %bb.d
  %indvars.iv.next44 = add nuw nsw i64 %indvars.iv43, 1 ; 2 uses
  %indvars.iv.next = add i32 %indvars.iv, 64
  %exitcond46.not = icmp eq i64 %indvars.iv.next44, %wide.trip.count
  br i1 %exitcond46.not, label %._crit_edge34, label %bb.d

bb.e:                                             ; preds = %.lr.ph, %bb.e
  %indvars.iv38 = phi i64 [ %i.bs, %.lr.ph ], [ %indvars.iv.next39, %bb.e ] ; 3 uses
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %indvars.iv38
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !7
  %i.cc = sext i32 %i.cb to i64
  %i.cd = getelementptr inbounds [16 x i8], ptr %i.bw, i64 %i.cc
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.cf = load double, ptr %i.ce, align 8, !tbaa !35 ; 2 uses
  %i.cg = getelementptr inbounds nuw [24 x i8], ptr %i.by, i64 %indvars.iv38 ; 3 uses
  %i.ch = load <2 x double>, ptr %i.cg, align 8, !tbaa !21
  %i.ci = insertelement <2 x double> poison, double %i.cf, i64 0
  %i.cj = shufflevector <2 x double> %i.ci, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ck = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cj, <2 x double> %i.bd, <2 x double> %i.ch)
  store <2 x double> %i.ck, ptr %i.cg, align 8, !tbaa !21
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cg, i64 16 ; 2 uses
  %i.cm = load double, ptr %i.cl, align 8, !tbaa !21
  %i.cn = call double @llvm.fmuladd.f64(double %i.cf, double %i.bg, double %i.cm)
  store double %i.cn, ptr %i.cl, align 8, !tbaa !21
  %indvars.iv.next39 = add nuw nsw i64 %indvars.iv38, 1 ; 2 uses
  %lftr.wideiv41 = trunc i64 %indvars.iv.next39 to i32
  %exitcond42.not = icmp eq i32 %i.bz, %lftr.wideiv41
  br i1 %exitcond42.not, label %._crit_edge, label %bb.e
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #4

; Function Attrs: nounwind uwtable
end_hunk_0
