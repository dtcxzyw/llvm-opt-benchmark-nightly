inline.NumInlined: 18
inline.NumDeleted: 4
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, argmem: read, inaccessiblemem: readwrite, target_mem: none) uwtable
define dso_local noalias noundef ptr @initAtoms(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noalias noundef dereferenceable_or_null(56) ptr @malloc(i64 noundef 56) #10 ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.c = load i32, ptr %i.b, align 4, !tbaa !8    ; 2 uses
  %i.d = shl nsw i32 %i.c, 6                      ; 2 uses
  %i.e = sext i32 %i.d to i64                     ; 3 uses
  %i.f = shl nsw i64 %i.e, 2                      ; 2 uses
  %i.g = tail call noalias noundef ptr @malloc(i64 noundef range(i64 -51539607552, 51539607529) %i.f) #10 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.g, ptr %i.h, align 8, !tbaa !12
  %i.i = tail call noalias noundef ptr @malloc(i64 noundef range(i64 -51539607552, 51539607529) %i.f) #10 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.i, ptr %i.j, align 8, !tbaa !15
  %i.k = mul nsw i64 %i.e, 24                     ; 3 uses
  %i.l = tail call noalias noundef ptr @malloc(i64 noundef range(i64 -51539607552, 51539607529) %i.k) #10 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.l, ptr %i.m, align 8, !tbaa !16
  %i.n = tail call noalias noundef ptr @malloc(i64 noundef range(i64 -51539607552, 51539607529) %i.k) #10 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %i.n, ptr %i.o, align 8, !tbaa !17
  %i.p = tail call noalias noundef ptr @malloc(i64 noundef range(i64 -51539607552, 51539607529) %i.k) #10 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr %i.p, ptr %i.q, align 8, !tbaa !18
  %i.r = shl nsw i64 %i.e, 3
  %i.s = tail call noalias noundef ptr @malloc(i64 noundef range(i64 -51539607552, 51539607529) %i.r) #10 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %i.s, ptr %i.t, align 8, !tbaa !19
  store i32 0, ptr %i.a, align 8, !tbaa !20
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 0, ptr %i.u, align 4, !tbaa !21
  %i.v = icmp sgt i32 %i.c, 0
  br i1 %i.v, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.w = zext nneg i32 %i.d to i64                ; 3 uses
  %i.x = shl nuw nsw i64 %i.w, 2                  ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.g, i8 0, i64 %i.x, i1 false), !tbaa !4
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.i, i8 0, i64 %i.x, i1 false), !tbaa !4
  %i.y = shl nuw nsw i64 %i.w, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.s, i8 0, i64 %i.y, i1 false), !tbaa !22
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !12   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef nonnull %i.b) #11
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  store ptr null, ptr %i.a, align 8, !tbaa !12
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !15   ; 2 uses
  %.not24 = icmp eq ptr %i.d, null
  br i1 %.not24, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @free(ptr noundef nonnull %i.d) #11
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  store ptr null, ptr %i.c, align 8, !tbaa !15
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !16   ; 2 uses
  %.not25 = icmp eq ptr %i.f, null
  br i1 %.not25, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @free(ptr noundef nonnull %i.f) #11
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  store ptr null, ptr %i.e, align 8, !tbaa !16
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !17   ; 2 uses
  %.not26 = icmp eq ptr %i.h, null
  br i1 %.not26, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @free(ptr noundef nonnull %i.h) #11
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  store ptr null, ptr %i.g, align 8, !tbaa !17
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !18   ; 2 uses
  %.not27 = icmp eq ptr %i.j, null
  br i1 %.not27, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @free(ptr noundef nonnull %i.j) #11
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  store ptr null, ptr %i.i, align 8, !tbaa !18
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !19   ; 2 uses
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !24   ; 10 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 96 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 120 ; 5 uses
  %i.e = load double, ptr %i.c, align 8, !tbaa !22
  %i.f = fdiv double %i.e, %3
  %i.g = tail call double @llvm.floor.f64(double %i.f)
  %i.h = fptosi double %i.g to i32                ; 2 uses
  %i.i = load double, ptr %i.d, align 8, !tbaa !22
  %i.j = fdiv double %i.i, %3
  %i.k = tail call double @llvm.ceil.f64(double %i.j)
  %i.l = fptosi double %i.k to i32                ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %5 = load double, ptr %i.m, align 8, !tbaa !22
  %6 = fdiv double %5, %3
  %7 = tail call double @llvm.floor.f64(double %6)
  %8 = fptosi double %7 to i32                    ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %9 = load double, ptr %i.n, align 8, !tbaa !22
  %10 = fdiv double %9, %3
  %11 = tail call double @llvm.ceil.f64(double %10)
  %12 = fptosi double %11 to i32                  ; 2 uses
  %13 = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %14 = load double, ptr %13, align 8, !tbaa !22
  %15 = fdiv double %14, %3
  %16 = tail call double @llvm.floor.f64(double %15)
  %17 = fptosi double %16 to i32                  ; 2 uses
  %18 = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %19 = load double, ptr %18, align 8, !tbaa !22
  %20 = fdiv double %19, %3
  %21 = tail call double @llvm.ceil.f64(double %20)
  %22 = fptosi double %21 to i32                  ; 2 uses
  %i.o = icmp slt i32 %i.h, %i.l
  br i1 %i.o, label %.lr.ph73, label %._crit_edge

.lr.ph73:                                         ; preds = %bb.a
  %23 = icmp slt i32 %8, %12
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 104 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 128 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 112 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 136 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 4 uses
  %24 = icmp slt i32 %17, %22
  %or.cond = select i1 %23, i1 %24, i1 false
  br i1 %or.cond, label %.lr.ph.us.us, label %._crit_edge

.lr.ph.us.us:                                     ; preds = %.lr.ph73, %._crit_edge71.split.us.us.us
  %.05972.us.us = phi i32 [ %i.cy, %._crit_edge71.split.us.us.us ], [ %i.h, %.lr.ph73 ] ; 3 uses
  %i.v = sitofp i32 %.05972.us.us to double       ; 2 uses
  %i.w = mul nsw i32 %.05972.us.us, %1
  %i.x = fadd nnan double %i.v, 2.500000e-01
  %i.y = fmul double %3, %i.x                     ; 6 uses
  %i.z = fadd nnan double %i.v, 7.500000e-01
  %i.aa = fmul double %3, %i.z                    ; 6 uses
  br label %.preheader.lr.ph.us.us.us

.preheader.lr.ph.us.us.us:                        ; preds = %._crit_edge.us.us.us, %.lr.ph.us.us
  %.06069.us.us.us = phi i32 [ %8, %.lr.ph.us.us ], [ %i.cx, %._crit_edge.us.us.us ] ; 3 uses
  %i.ab = sitofp i32 %.06069.us.us.us to double   ; 2 uses
  %i.ac = add nsw i32 %.06069.us.us.us, %i.w
  %i.ad = mul nsw i32 %i.ac, %2
  %i.ae = fadd nnan double %i.ab, 2.500000e-01
  %i.af = fmul double %3, %i.ae                   ; 6 uses
  %i.ag = fadd nnan double %i.ab, 7.500000e-01
  %i.ah = fmul double %3, %i.ag                   ; 6 uses
  br label %.preheader.us.us.us

bb.b:                                             ; preds = %.preheader.us.us.us
  %i.ai = load double, ptr %i.d, align 8, !tbaa !22
  %i.aj = fcmp ult double %i.y, %i.ai
  br i1 %i.aj, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.ak = load double, ptr %i.p, align 8, !tbaa !22
  %i.al = fcmp olt double %i.af, %i.ak
  br i1 %i.al, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.am = load double, ptr %i.q, align 8, !tbaa !22
  %i.an = fcmp ult double %i.af, %i.am
  br i1 %i.an, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.ao = load double, ptr %i.r, align 8, !tbaa !22
  %i.ap = fcmp olt double %i.cu, %i.ao
  br i1 %i.ap, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aq = load double, ptr %i.s, align 8, !tbaa !22
  %i.ar = fcmp ult double %i.cu, %i.aq
  br i1 %i.ar, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.as = load ptr, ptr %i.t, align 8, !tbaa !32
  %i.at = load ptr, ptr %i.u, align 8, !tbaa !33
  tail call void @putAtomInBox(ptr noundef %i.as, ptr noundef %i.at, i32 noundef %i.cs, i32 noundef 0, double noundef %i.y, double noundef %i.af, double noundef %i.cu, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00) #11
  %.pre = load double, ptr %i.c, align 8, !tbaa !22
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %.preheader.us.us.us
  %i.au = phi double [ %.pre, %bb.g ], [ %i.cv, %bb.f ], [ %i.cv, %bb.e ], [ %i.cv, %bb.d ], [ %i.cv, %bb.c ], [ %i.cv, %bb.b ], [ %i.cv, %.preheader.us.us.us ] ; 7 uses
  %i.av = fadd nnan double %i.cq, 7.500000e-01
  %i.aw = fmul double %3, %i.av                   ; 6 uses
  %i.ax = fcmp olt double %i.y, %i.au
  br i1 %i.ax, label %bb.o, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ay = load double, ptr %i.d, align 8, !tbaa !22
  %i.az = fcmp ult double %i.y, %i.ay
  br i1 %i.az, label %bb.j, label %bb.o

bb.j:                                             ; preds = %bb.i
  %i.ba = load double, ptr %i.p, align 8, !tbaa !22
  %i.bb = fcmp olt double %i.ah, %i.ba
  br i1 %i.bb, label %bb.o, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bc = load double, ptr %i.q, align 8, !tbaa !22
  %i.bd = fcmp ult double %i.ah, %i.bc
  br i1 %i.bd, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.be = load double, ptr %i.r, align 8, !tbaa !22
  %i.bf = fcmp olt double %i.aw, %i.be
  br i1 %i.bf, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bg = load double, ptr %i.s, align 8, !tbaa !22
  %i.bh = fcmp ult double %i.aw, %i.bg
  br i1 %i.bh, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bi = or disjoint i32 %i.cs, 1
  %i.bj = load ptr, ptr %i.t, align 8, !tbaa !32
  %i.bk = load ptr, ptr %i.u, align 8, !tbaa !33
  tail call void @putAtomInBox(ptr noundef %i.bj, ptr noundef %i.bk, i32 noundef %i.bi, i32 noundef 0, double noundef %i.y, double noundef %i.ah, double noundef %i.aw, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00) #11
  %.pre86 = load double, ptr %i.c, align 8, !tbaa !22
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h
  %i.bl = phi double [ %.pre86, %bb.n ], [ %i.au, %bb.m ], [ %i.au, %bb.l ], [ %i.au, %bb.k ], [ %i.au, %bb.j ], [ %i.au, %bb.i ], [ %i.au, %bb.h ] ; 7 uses
  %i.bm = fcmp olt double %i.aa, %i.bl
  br i1 %i.bm, label %bb.v, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bn = load double, ptr %i.d, align 8, !tbaa !22
  %i.bo = fcmp ult double %i.aa, %i.bn
  br i1 %i.bo, label %bb.q, label %bb.v

bb.q:                                             ; preds = %bb.p
  %i.bp = load double, ptr %i.p, align 8, !tbaa !22
  %i.bq = fcmp olt double %i.af, %i.bp
  br i1 %i.bq, label %bb.v, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.br = load double, ptr %i.q, align 8, !tbaa !22
  %i.bs = fcmp ult double %i.af, %i.br
  br i1 %i.bs, label %bb.s, label %bb.v

bb.s:                                             ; preds = %bb.r
  %i.bt = load double, ptr %i.r, align 8, !tbaa !22
  %i.bu = fcmp olt double %i.aw, %i.bt
  br i1 %i.bu, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bv = load double, ptr %i.s, align 8, !tbaa !22
  %i.bw = fcmp ult double %i.aw, %i.bv
  br i1 %i.bw, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.bx = or disjoint i32 %i.cs, 2
  %i.by = load ptr, ptr %i.t, align 8, !tbaa !32
  %i.bz = load ptr, ptr %i.u, align 8, !tbaa !33
  tail call void @putAtomInBox(ptr noundef %i.by, ptr noundef %i.bz, i32 noundef %i.bx, i32 noundef 0, double noundef %i.aa, double noundef %i.af, double noundef %i.aw, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00) #11
  %.pre87 = load double, ptr %i.c, align 8, !tbaa !22
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o
  %i.ca = phi double [ %.pre87, %bb.u ], [ %i.bl, %bb.t ], [ %i.bl, %bb.s ], [ %i.bl, %bb.r ], [ %i.bl, %bb.q ], [ %i.bl, %bb.p ], [ %i.bl, %bb.o ]
  %i.cb = fcmp olt double %i.aa, %i.ca
  br i1 %i.cb, label %bb.ac, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cc = load double, ptr %i.d, align 8, !tbaa !22
  %i.cd = fcmp ult double %i.aa, %i.cc
  br i1 %i.cd, label %bb.x, label %bb.ac

bb.x:                                             ; preds = %bb.w
  %i.ce = load double, ptr %i.p, align 8, !tbaa !22
  %i.cf = fcmp olt double %i.ah, %i.ce
  br i1 %i.cf, label %bb.ac, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cg = load double, ptr %i.q, align 8, !tbaa !22
  %i.ch = fcmp ult double %i.ah, %i.cg
  br i1 %i.ch, label %bb.z, label %bb.ac

bb.z:                                             ; preds = %bb.y
  %i.ci = load double, ptr %i.r, align 8, !tbaa !22
  %i.cj = fcmp olt double %i.cu, %i.ci
  br i1 %i.cj, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ck = load double, ptr %i.s, align 8, !tbaa !22
  %i.cl = fcmp ult double %i.cu, %i.ck
  br i1 %i.cl, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.cm = or disjoint i32 %i.cs, 3
  %i.cn = load ptr, ptr %i.t, align 8, !tbaa !32
  %i.co = load ptr, ptr %i.u, align 8, !tbaa !33
  tail call void @putAtomInBox(ptr noundef %i.cn, ptr noundef %i.co, i32 noundef %i.cm, i32 noundef 0, double noundef %i.aa, double noundef %i.ah, double noundef %i.cu, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00) #11
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v
  %i.cp = add i32 %.06268.us.us.us, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.cp, %22
  br i1 %exitcond.not, label %._crit_edge.us.us.us, label %.preheader.us.us.us

.preheader.us.us.us:                              ; preds = %bb.ac, %.preheader.lr.ph.us.us.us
  %.06268.us.us.us = phi i32 [ %17, %.preheader.lr.ph.us.us.us ], [ %i.cp, %bb.ac ] ; 3 uses
  %i.cq = sitofp i32 %.06268.us.us.us to double   ; 2 uses
  %i.cr = add nsw i32 %.06268.us.us.us, %i.ad
  %i.cs = shl nsw i32 %i.cr, 2                    ; 4 uses
  %i.ct = fadd nnan double %i.cq, 2.500000e-01
  %i.cu = fmul double %3, %i.ct                   ; 6 uses
  %i.cv = load double, ptr %i.c, align 8, !tbaa !22 ; 7 uses
  %i.cw = fcmp olt double %i.y, %i.cv
  br i1 %i.cw, label %bb.h, label %bb.b

._crit_edge.us.us.us:                             ; preds = %bb.ac
  %i.cx = add i32 %.06069.us.us.us, 1             ; 2 uses
  %exitcond81.not = icmp eq i32 %i.cx, %12
  br i1 %exitcond81.not, label %._crit_edge71.split.us.us.us, label %.preheader.lr.ph.us.us.us

._crit_edge71.split.us.us.us:                     ; preds = %._crit_edge.us.us.us
  %i.cy = add i32 %.05972.us.us, 1                ; 2 uses
  %exitcond82.not = icmp eq i32 %i.cy, %i.l
  br i1 %exitcond82.not, label %._crit_edge, label %.lr.ph.us.us

._crit_edge:                                      ; preds = %._crit_edge71.split.us.us.us, %.lr.ph73, %bb.a
  tail call void @profileStart(i32 noundef 10) #11
  %i.cz = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !33 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 4
  tail call void @addIntParallel(ptr noundef %i.da, ptr noundef nonnull %i.db, i32 noundef 1) #11
  tail call void @profileStop(i32 noundef 10) #11
  ret void
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
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !32   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.f = load i32, ptr %i.e, align 4, !tbaa !34   ; 2 uses
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %.lr.ph37.i, label %computeVcm.exit

.lr.ph37.i:                                       ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 120
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !35
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
  %i.p = load i32, ptr %i.o, align 4, !tbaa !4    ; 2 uses
  %i.q = icmp sgt i32 %i.p, 0
  br i1 %i.q, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.r = zext i32 %indvars.iv.i to i64
  %i.s = load ptr, ptr %i.j, align 8, !tbaa !33   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !17
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !15
  %i.x = load ptr, ptr %i.m, align 8, !tbaa !36
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
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !22
  %i.af = fadd double %i.ac, %i.ae                ; 3 uses
  store double %i.af, ptr %i.a, align 16, !tbaa !22
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !22
  %i.ai = fadd double %i.ab, %i.ah                ; 3 uses
  store double %i.ai, ptr %i.k, align 8, !tbaa !22
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !22
  %i.al = fadd double %i.aa, %i.ak                ; 3 uses
  store double %i.al, ptr %i.l, align 16, !tbaa !22
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv53.i
  %i.an = load i32, ptr %i.am, align 4, !tbaa !4
  %i.ao = sext i32 %i.an to i64
  %i.ap = getelementptr inbounds [16 x i8], ptr %i.x, i64 %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !37
  %i.as = fadd double %i.z, %i.ar                 ; 3 uses
  store double %i.as, ptr %i.n, align 8, !tbaa !22
  %indvars.iv.next54.i = add nuw nsw i64 %indvars.iv53.i, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next54.i to i32
  %exitcond = icmp eq i32 %i.y, %lftr.wideiv
  br i1 %exitcond, label %._crit_edge.i, label %bb.c

computeVcm.exit:                                  ; preds = %._crit_edge.i, %bb.a
  tail call void @profileStart(i32 noundef 10) #11
  call void @addRealParallel(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i32 noundef 4) #11
  call void @profileStop(i32 noundef 10) #11
  %i.at = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.au = load double, ptr %i.at, align 8, !tbaa !22 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.aw = load double, ptr %i.av, align 16, !tbaa !22
  %i.ax = fdiv double %i.aw, %i.au
  %i.ay = load <2 x double>, ptr %i.b, align 16, !tbaa !22
  %i.az = insertelement <2 x double> poison, double %i.au, i64 0
  %i.ba = shufflevector <2 x double> %i.az, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bb = fdiv <2 x double> %i.ay, %i.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  %i.bc = load <2 x double>, ptr %1, align 8, !tbaa !22
  %i.bd = fsub <2 x double> %i.bc, %i.bb
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bf = load double, ptr %i.be, align 8, !tbaa !22
  %i.bg = fsub double %i.bf, %i.ax
  %i.bh = load ptr, ptr %i.c, align 8, !tbaa !32  ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 12
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !34 ; 2 uses
  %i.bk = icmp sgt i32 %i.bj, 0
  br i1 %i.bk, label %.lr.ph33, label %._crit_edge34

.lr.ph33:                                         ; preds = %computeVcm.exit
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bh, i64 120
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !35
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
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !4  ; 2 uses
  %i.br = icmp sgt i32 %i.bq, 0
  br i1 %i.br, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.d
  %i.bs = zext i32 %indvars.iv to i64
  %i.bt = load ptr, ptr %i.bn, align 8, !tbaa !33 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !15
  %i.bw = load ptr, ptr %i.bo, align 8, !tbaa !36
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bt, i64 32
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !17
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
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !4
  %i.cc = sext i32 %i.cb to i64
  %i.cd = getelementptr inbounds [16 x i8], ptr %i.bw, i64 %i.cc
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.cf = load double, ptr %i.ce, align 8, !tbaa !37 ; 2 uses
  %i.cg = getelementptr inbounds nuw [24 x i8], ptr %i.by, i64 %indvars.iv38 ; 3 uses
  %i.ch = load <2 x double>, ptr %i.cg, align 8, !tbaa !22
  %i.ci = insertelement <2 x double> poison, double %i.cf, i64 0
  %i.cj = shufflevector <2 x double> %i.ci, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ck = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cj, <2 x double> %i.bd, <2 x double> %i.ch)
  store <2 x double> %i.ck, ptr %i.cg, align 8, !tbaa !22
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cg, i64 16 ; 2 uses
  %i.cm = load double, ptr %i.cl, align 8, !tbaa !22
end_hunk_0
begin_hunk_1_@setTemperature:bb.a
.lr.ph75:                                         ; preds = %bb.c
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cc, i64 120
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !35
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bt, i64 32
  %wide.trip.count = zext nneg i32 %i.ce to i64
  %i.cj = insertelement <2 x double> poison, double %i.cb, i64 0
  %i.ck = shufflevector <2 x double> %i.cj, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  br label %bb.d

._crit_edge76:                                    ; preds = %._crit_edge72, %bb.c
  call void @kineticEnergy(ptr noundef nonnull %0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  br label %bb.e

bb.d:                                             ; preds = %.lr.ph75, %._crit_edge72
  %indvars.iv88 = phi i64 [ 0, %.lr.ph75 ], [ %indvars.iv.next89, %._crit_edge72 ] ; 2 uses
  %indvars.iv83 = phi i32 [ 0, %.lr.ph75 ], [ %indvars.iv.next84, %._crit_edge72 ] ; 3 uses
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %indvars.iv88
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !4  ; 4 uses
  %i.cn = icmp sgt i32 %i.cm, 0
  br i1 %i.cn, label %.lr.ph71, label %._crit_edge72

.lr.ph71:                                         ; preds = %bb.d
  %i.co = zext i32 %indvars.iv83 to i64           ; 3 uses
  %i.cp = load ptr, ptr %i.ci, align 8, !tbaa !17 ; 3 uses
  %i.cq = add i32 %i.cm, %indvars.iv83
  %xtraiter = and i32 %i.cm, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph71
  %i.cr = getelementptr inbounds nuw [24 x i8], ptr %i.cp, i64 %i.co ; 3 uses
  %i.cs = load <2 x double>, ptr %i.cr, align 8, !tbaa !22
  %i.ct = fmul <2 x double> %i.ck, %i.cs
  store <2 x double> %i.ct, ptr %i.cr, align 8, !tbaa !22
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cr, i64 16 ; 2 uses
  %i.cv = load double, ptr %i.cu, align 8, !tbaa !22
  %i.cw = fmul double %i.cb, %i.cv
  store double %i.cw, ptr %i.cu, align 8, !tbaa !22
  %indvars.iv.next86.prol = or disjoint i64 %i.co, 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph71
  %indvars.iv85.unr = phi i64 [ %i.co, %.lr.ph71 ], [ %indvars.iv.next86.prol, %.prol.loopexit.unr-lcssa ]
  %i.cx = icmp eq i32 %i.cm, 1
  br i1 %i.cx, label %._crit_edge72, label %.lr.ph71.new

._crit_edge72:                                    ; preds = %.prol.loopexit, %.lr.ph71.new, %bb.d
  %indvars.iv.next89 = add nuw nsw i64 %indvars.iv88, 1 ; 2 uses
  %indvars.iv.next84 = add i32 %indvars.iv83, 64
  %exitcond91.not = icmp eq i64 %indvars.iv.next89, %wide.trip.count
  br i1 %exitcond91.not, label %._crit_edge76, label %bb.d

.lr.ph71.new:                                     ; preds = %.prol.loopexit, %.lr.ph71.new
  %indvars.iv85 = phi i64 [ %indvars.iv.next86.1, %.lr.ph71.new ], [ %indvars.iv85.unr, %.prol.loopexit ] ; 3 uses
  %i.cy = getelementptr inbounds nuw [24 x i8], ptr %i.cp, i64 %indvars.iv85 ; 3 uses
  %i.cz = load <2 x double>, ptr %i.cy, align 8, !tbaa !22
  %i.da = fmul <2 x double> %i.ck, %i.cz
  store <2 x double> %i.da, ptr %i.cy, align 8, !tbaa !22
  %i.db = getelementptr inbounds nuw i8, ptr %i.cy, i64 16 ; 2 uses
  %i.dc = load double, ptr %i.db, align 8, !tbaa !22
  %i.dd = fmul double %i.cb, %i.dc
  store double %i.dd, ptr %i.db, align 8, !tbaa !22
  %i.de = getelementptr inbounds nuw [24 x i8], ptr %i.cp, i64 %indvars.iv85 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 24 ; 2 uses
  %i.dg = load <2 x double>, ptr %i.df, align 8, !tbaa !22
  %i.dh = fmul <2 x double> %i.ck, %i.dg
  store <2 x double> %i.dh, ptr %i.df, align 8, !tbaa !22
  %i.di = getelementptr inbounds nuw i8, ptr %i.de, i64 40 ; 2 uses
  %i.dj = load double, ptr %i.di, align 8, !tbaa !22
  %i.dk = fmul double %i.cb, %i.dj
  store double %i.dk, ptr %i.di, align 8, !tbaa !22
  %indvars.iv.next86.1 = add nuw nsw i64 %indvars.iv85, 2 ; 2 uses
  %lftr.wideiv.1 = trunc i64 %indvars.iv.next86.1 to i32
  %exitcond.not.1 = icmp eq i32 %i.cq, %lftr.wideiv.1
  br i1 %exitcond.not.1, label %._crit_edge72, label %.lr.ph71.new

bb.e:                                             ; preds = %._crit_edge67, %._crit_edge76
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #6

declare i64 @mkSeed(i32 noundef, i32 noundef) local_unnamed_addr #5

declare double @gasdev(ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

declare void @kineticEnergy(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local void @randomDisplacements(ptr nofree noundef readonly captures(none) %0, double noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !32   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.e = load i32, ptr %i.d, align 4, !tbaa !34
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %.lr.ph25, label %._crit_edge26

.lr.ph25:                                         ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  br label %bb.b

._crit_edge26:                                    ; preds = %._crit_edge, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph25, %._crit_edge
  %i.h = phi ptr [ %i.c, %.lr.ph25 ], [ %i.o, %._crit_edge ] ; 2 uses
  %indvars.iv30 = phi i64 [ 0, %.lr.ph25 ], [ %indvars.iv.next31, %._crit_edge ] ; 3 uses
  %indvars.iv = phi i32 [ 0, %.lr.ph25 ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 120
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !35
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv30
  %i.l = load i32, ptr %i.k, align 4, !tbaa !4
  %i.m = icmp sgt i32 %i.l, 0
  br i1 %i.m, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.n = zext i32 %indvars.iv to i64
  %.pre = load ptr, ptr %i.g, align 8, !tbaa !33
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.b
  %i.o = phi ptr [ %i.h, %bb.b ], [ %i.ba, %.lr.ph ] ; 2 uses
  %indvars.iv.next31 = add nuw nsw i64 %indvars.iv30, 1 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 12
  %i.q = load i32, ptr %i.p, align 4, !tbaa !34
  %i.r = sext i32 %i.q to i64
  %i.s = icmp slt i64 %indvars.iv.next31, %i.r
  %indvars.iv.next = add i32 %indvars.iv, 64
  br i1 %i.s, label %bb.b, label %._crit_edge26

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %i.t = phi ptr [ %.pre, %.lr.ph.preheader ], [ %i.as, %.lr.ph ]
  %indvars.iv27 = phi i64 [ %i.n, %.lr.ph.preheader ], [ %indvars.iv.next28, %.lr.ph ] ; 5 uses
  %.022 = phi i32 [ 0, %.lr.ph.preheader ], [ %i.az, %.lr.ph ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !12
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv27
  %i.x = load i32, ptr %i.w, align 4, !tbaa !4
  %i.y = call i64 @mkSeed(i32 noundef %i.x, i32 noundef 457) #11
  store i64 %i.y, ptr %i.a, align 8, !tbaa !39
  %i.z = call double @lcg61(ptr noundef nonnull %i.a) #11
  %i.aa = call double @llvm.fmuladd.f64(double %i.z, double 2.000000e+00, double -1.000000e+00)
  %i.ab = load ptr, ptr %i.g, align 8, !tbaa !33
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !16
  %i.ae = getelementptr inbounds nuw [24 x i8], ptr %i.ad, i64 %indvars.iv27 ; 2 uses
  %i.af = load double, ptr %i.ae, align 8, !tbaa !22
  %i.ag = call double @llvm.fmuladd.f64(double %i.aa, double %1, double %i.af)
  store double %i.ag, ptr %i.ae, align 8, !tbaa !22
  %i.ah = call double @lcg61(ptr noundef nonnull %i.a) #11
  %i.ai = call double @llvm.fmuladd.f64(double %i.ah, double 2.000000e+00, double -1.000000e+00)
  %i.aj = load ptr, ptr %i.g, align 8, !tbaa !33
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !16
  %i.am = getelementptr inbounds nuw [24 x i8], ptr %i.al, i64 %indvars.iv27
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8 ; 2 uses
  %i.ao = load double, ptr %i.an, align 8, !tbaa !22
  %i.ap = call double @llvm.fmuladd.f64(double %i.ai, double %1, double %i.ao)
  store double %i.ap, ptr %i.an, align 8, !tbaa !22
  %i.aq = call double @lcg61(ptr noundef nonnull %i.a) #11
  %i.ar = call double @llvm.fmuladd.f64(double %i.aq, double 2.000000e+00, double -1.000000e+00)
  %i.as = load ptr, ptr %i.g, align 8, !tbaa !33  ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !16
  %i.av = getelementptr inbounds nuw [24 x i8], ptr %i.au, i64 %indvars.iv27
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16 ; 2 uses
  %i.ax = load double, ptr %i.aw, align 8, !tbaa !22
  %i.ay = call double @llvm.fmuladd.f64(double %i.ar, double %1, double %i.ax)
  store double %i.ay, ptr %i.aw, align 8, !tbaa !22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  %i.az = add nuw nsw i32 %.022, 1                ; 2 uses
  %indvars.iv.next28 = add nuw nsw i64 %indvars.iv27, 1
  %i.ba = load ptr, ptr %i.b, align 8, !tbaa !32  ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 120
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !35
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %indvars.iv30
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !4
  %i.bf = icmp slt i32 %i.az, %i.be
  br i1 %i.bf, label %.lr.ph, label %._crit_edge
}

declare double @lcg61(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #9

declare void @addRealParallel(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #4

attributes #0 = { mustprogress nofree nounwind willreturn memory(write, argmem: read, inaccessiblemem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind allocsize(0) }
attributes #11 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !5, i64 20}
!9 = !{!"LinkCellSt", !6, i64 0, !5, i64 12, !5, i64 16, !5, i64 20, !6, i64 24, !6, i64 48, !6, i64 72, !6, i64 96, !10, i64 120}
!10 = !{!"p1 int", !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!13, !10, i64 8}
!13 = !{!"AtomsSt", !5, i64 0, !5, i64 4, !10, i64 8, !10, i64 16, !14, i64 24, !14, i64 32, !14, i64 40, !14, i64 48}
!14 = !{!"p1 double", !11, i64 0}
!15 = !{!13, !10, i64 16}
!16 = !{!13, !14, i64 24}
!17 = !{!13, !14, i64 32}
!18 = !{!13, !14, i64 40}
!19 = !{!13, !14, i64 48}
!20 = !{!13, !5, i64 0}
!21 = !{!13, !5, i64 4}
!22 = !{!23, !23, i64 0}
!23 = !{!"double", !6, i64 0}
!24 = !{!25, !26, i64 16}
!25 = !{!"SimFlatSt", !5, i64 0, !5, i64 4, !23, i64 8, !26, i64 16, !27, i64 24, !28, i64 32, !29, i64 40, !23, i64 48, !23, i64 56, !30, i64 64, !31, i64 72}
!26 = !{!"p1 _ZTS8DomainSt", !11, i64 0}
!27 = !{!"p1 _ZTS10LinkCellSt", !11, i64 0}
!28 = !{!"p1 _ZTS7AtomsSt", !11, i64 0}
!29 = !{!"p1 _ZTS13SpeciesDataSt", !11, i64 0}
!30 = !{!"p1 _ZTS15BasePotentialSt", !11, i64 0}
!31 = !{!"p1 _ZTS14HaloExchangeSt", !11, i64 0}
!32 = !{!25, !27, i64 24}
!33 = !{!25, !28, i64 32}
!34 = !{!9, !5, i64 12}
!35 = !{!9, !10, i64 120}
!36 = !{!25, !29, i64 40}
!37 = !{!38, !23, i64 8}
!38 = !{!"SpeciesDataSt", !6, i64 0, !5, i64 4, !23, i64 8}
!39 = !{!40, !40, i64 0}
!40 = !{!"long", !6, i64 0}
!41 = !{!25, !23, i64 56}
end_hunk_1
