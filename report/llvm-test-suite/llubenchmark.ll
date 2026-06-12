inline.NumInlined: 9
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"%s:\0A\00", align 1
@free_list = dso_local local_unnamed_addr global ptr null, align 8
@next_free = dso_local local_unnamed_addr global i32 127, align 4
@element_size = dso_local local_unnamed_addr global i32 32, align 4
@num_allocated = dso_local local_unnamed_addr global i32 0, align 4
@.str.9 = private unnamed_addr constant [19 x i8] c"parse error in %s\0A\00", align 1
@.str.10 = private unnamed_addr constant [25 x i8] c"unrecognized option: %c\0A\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"output = %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [18 x i8] c"num allocated %d\0A\00", align 1
@str = private unnamed_addr constant [28 x i8] c"-i <number of (I)terations>\00", align 1
@str.1 = private unnamed_addr constant [57 x i8] c"[-l <initial (L)ength of list, in elements>] (default 1)\00", align 1
@str.2 = private unnamed_addr constant [42 x i8] c"[-n <(N)umber of lists>] (default 1 list)\00", align 1
@str.3 = private unnamed_addr constant [44 x i8] c"[-s <(S)ize of element>] (default 32 bytes)\00", align 1
@str.4 = private unnamed_addr constant [69 x i8] c"[-g <(G)rowth rate per list, in elements per iteration>] (default 0)\00", align 1
@str.5 = private unnamed_addr constant [58 x i8] c"[-d] ((D)irty each element during traversal, default off)\00", align 1
@str.6 = private unnamed_addr constant [45 x i8] c"[-t] (insert at (T)ail of list, default off)\00", align 1
@str.7 = private unnamed_addr constant [63 x i8] c"This benchmark modified to not use hard coded pool allocation!\00", align 1

; Function Attrs: nofree nounwind uwtable
define dso_local void @usage(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef %0) ; 0 uses
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  %puts1 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.1) ; 0 uses
  %puts2 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.2) ; 0 uses
  %puts3 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.3) ; 0 uses
  %puts4 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.4) ; 0 uses
  %puts5 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.5) ; 0 uses
  %puts6 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.6) ; 0 uses
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, argmem: none, target_mem: none) uwtable
define dso_local noalias noundef ptr @allocate() local_unnamed_addr #2 {
bb.a:
  %i.a = load i32, ptr @num_allocated, align 4, !tbaa !4
  %i.b = add nsw i32 %i.a, 1
  store i32 %i.b, ptr @num_allocated, align 4, !tbaa !4
  %i.c = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #8
  ret ptr %i.c
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind uwtable
define dso_local range(i32 -1, 1) i32 @main(i32 noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.7) ; 0 uses
  %i.a = icmp sgt i32 %0, 1
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %bb.k
  %.090141 = phi i32 [ %.1, %bb.k ], [ 1000, %bb.a ] ; 6 uses
  %.091140 = phi i32 [ %.192, %bb.k ], [ 1, %bb.a ] ; 7 uses
  %.0103139 = phi float [ %.1104, %bb.k ], [ 3.330000e-01, %bb.a ] ; 6 uses
  %.0105138 = phi i32 [ %.1106, %bb.k ], [ 1, %bb.a ] ; 6 uses
  %.0109137 = phi i32 [ %.1110, %bb.k ], [ 196, %bb.a ] ; 6 uses
  %i.b = sext i32 %.091140 to i64
  %i.c = getelementptr inbounds [8 x i8], ptr %1, i64 %i.b
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !8    ; 4 uses
  %i.e = load i8, ptr %i.d, align 1, !tbaa !11
  %.not115 = icmp eq i8 %i.e, 45
  br i1 %.not115, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  %i.g = load i8, ptr %i.f, align 1, !tbaa !11
  %.not116 = icmp eq i8 %i.g, 0
  br i1 %.not116, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph
  %i.h = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, ptr noundef nonnull %i.d) ; 0 uses
  %i.i = load ptr, ptr %1, align 8, !tbaa !8
  %i.j = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef %i.i) ; 0 uses
  %puts.i = tail call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  %puts1.i = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.1) ; 0 uses
  %puts2.i = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.2) ; 0 uses
  %puts3.i = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.3) ; 0 uses
  %puts4.i = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.4) ; 0 uses
  %puts5.i = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.5) ; 0 uses
  %puts6.i = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.6) ; 0 uses
  br label %bb.s

bb.d:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %i.l = load i8, ptr %i.k, align 1, !tbaa !11    ; 2 uses
  %i.m = add nsw i32 %.091140, 1                  ; 7 uses
  switch i8 %i.l, label %bb.j [
    i8 100, label %bb.k
    i8 103, label %bb.e
    i8 105, label %bb.f
    i8 108, label %bb.g
    i8 110, label %bb.h
    i8 115, label %bb.i
    i8 116, label %bb.k
  ]

bb.e:                                             ; preds = %bb.d
  %i.n = add nsw i32 %.091140, 2
  %i.o = sext i32 %i.m to i64
  %i.p = getelementptr inbounds [8 x i8], ptr %1, i64 %i.o
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !8
  %i.r = tail call double @strtod(ptr noundef nonnull captures(none) %i.q, ptr noundef null) #9, !inline_history !12
  %i.s = fptrunc double %i.r to float
  br label %bb.k

bb.f:                                             ; preds = %bb.d
  %i.t = add nsw i32 %.091140, 2
  %i.u = sext i32 %i.m to i64
  %i.v = getelementptr inbounds [8 x i8], ptr %1, i64 %i.u
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !8
  %i.x = tail call i64 @strtol(ptr noundef nonnull captures(none) %i.w, ptr noundef null, i32 noundef 10) #9, !inline_history !13
  %i.y = trunc i64 %i.x to i32
  br label %bb.k

bb.g:                                             ; preds = %bb.d
  %i.z = add nsw i32 %.091140, 2
  %i.aa = sext i32 %i.m to i64
  %i.ab = getelementptr inbounds [8 x i8], ptr %1, i64 %i.aa
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !8
  %i.ad = tail call i64 @strtol(ptr noundef nonnull captures(none) %i.ac, ptr noundef null, i32 noundef 10) #9, !inline_history !13
  %i.ae = trunc i64 %i.ad to i32
  br label %bb.k

bb.h:                                             ; preds = %bb.d
  %i.af = add nsw i32 %.091140, 2
  %i.ag = sext i32 %i.m to i64
  %i.ah = getelementptr inbounds [8 x i8], ptr %1, i64 %i.ag
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !8
  %i.aj = tail call i64 @strtol(ptr noundef nonnull captures(none) %i.ai, ptr noundef null, i32 noundef 10) #9, !inline_history !13
  %i.ak = trunc i64 %i.aj to i32
  br label %bb.k

bb.i:                                             ; preds = %bb.d
  %i.al = add nsw i32 %.091140, 2
  %i.am = sext i32 %i.m to i64
  %i.an = getelementptr inbounds [8 x i8], ptr %1, i64 %i.am
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !8
  %i.ap = tail call i64 @strtol(ptr noundef nonnull captures(none) %i.ao, ptr noundef null, i32 noundef 10) #9, !inline_history !13
  %i.aq = trunc i64 %i.ap to i32
  store i32 %i.aq, ptr @element_size, align 4, !tbaa !4
  br label %bb.k

bb.j:                                             ; preds = %bb.d
  %i.ar = sext i8 %i.l to i32
  %i.as = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, i32 noundef %i.ar) ; 0 uses
  %i.at = load ptr, ptr %1, align 8, !tbaa !8
  %i.au = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef %i.at) ; 0 uses
  %puts.i117 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  %puts1.i118 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.1) ; 0 uses
  %puts2.i119 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.2) ; 0 uses
  %puts3.i120 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.3) ; 0 uses
  %puts4.i121 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.4) ; 0 uses
  %puts5.i122 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.5) ; 0 uses
  %puts6.i123 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.6) ; 0 uses
  br label %bb.s

bb.k:                                             ; preds = %bb.d, %bb.d, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e
  %.1110 = phi i32 [ %.0109137, %bb.d ], [ %.0109137, %bb.e ], [ %.0109137, %bb.f ], [ %.0109137, %bb.g ], [ %i.ak, %bb.h ], [ %.0109137, %bb.i ], [ %.0109137, %bb.d ] ; 2 uses
  %.1106 = phi i32 [ %.0105138, %bb.d ], [ %.0105138, %bb.e ], [ %.0105138, %bb.f ], [ %i.ae, %bb.g ], [ %.0105138, %bb.h ], [ %.0105138, %bb.i ], [ %.0105138, %bb.d ] ; 2 uses
  %.1104 = phi float [ %.0103139, %bb.d ], [ %i.s, %bb.e ], [ %.0103139, %bb.f ], [ %.0103139, %bb.g ], [ %.0103139, %bb.h ], [ %.0103139, %bb.i ], [ %.0103139, %bb.d ] ; 2 uses
  %.192 = phi i32 [ %i.m, %bb.d ], [ %i.n, %bb.e ], [ %i.t, %bb.f ], [ %i.z, %bb.g ], [ %i.af, %bb.h ], [ %i.al, %bb.i ], [ %i.m, %bb.d ] ; 2 uses
  %.1 = phi i32 [ %.090141, %bb.d ], [ %.090141, %bb.e ], [ %i.y, %bb.f ], [ %.090141, %bb.g ], [ %.090141, %bb.h ], [ %.090141, %bb.i ], [ %.090141, %bb.d ] ; 2 uses
  %i.av = icmp slt i32 %.192, %0
  br i1 %i.av, label %.lr.ph, label %._crit_edge, !llvm.loop !14

._crit_edge:                                      ; preds = %bb.k, %bb.a
  %.0109.lcssa = phi i32 [ 196, %bb.a ], [ %.1110, %bb.k ] ; 9 uses
  %.0105.lcssa = phi i32 [ 1, %bb.a ], [ %.1106, %bb.k ] ; 2 uses
  %.0103.lcssa = phi float [ 3.330000e-01, %bb.a ], [ %.1104, %bb.k ] ; 2 uses
  %.090.lcssa = phi i32 [ 1000, %bb.a ], [ %.1, %bb.k ] ; 2 uses
  %i.aw = sext i32 %.0109.lcssa to i64
  %i.ax = shl nsw i64 %i.aw, 3
  %i.ay = tail call noalias ptr @malloc(i64 noundef %i.ax) #8 ; 6 uses
  %i.az = icmp sgt i32 %.0109.lcssa, 0            ; 2 uses
  br i1 %i.az, label %.preheader126, label %.preheader124

.preheader126:                                    ; preds = %._crit_edge
  %i.ba = zext nneg i32 %.0109.lcssa to i64
  %i.bb = shl nuw nsw i64 %i.ba, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ay, i8 0, i64 %i.bb, i1 false), !tbaa !16
  %i.bc = icmp sgt i32 %.0105.lcssa, 0
  br i1 %i.bc, label %.preheader125.us.preheader, label %.preheader124

.preheader125.us.preheader:                       ; preds = %.preheader126
  %wide.trip.count = zext nneg i32 %.0109.lcssa to i64
  br label %.preheader125.us

.preheader125.us:                                 ; preds = %.preheader125.us.preheader, %._crit_edge150.us
  %.1101151.us = phi i32 [ %i.bj, %._crit_edge150.us ], [ 0, %.preheader125.us.preheader ]
  br label %bb.l

.preheader124:                                    ; preds = %._crit_edge150.us, %._crit_edge, %.preheader126
  %2 = icmp sgt i32 %.090.lcssa, 0
  br i1 %2, label %.lr.ph174, label %._crit_edge175

.lr.ph174:                                        ; preds = %.preheader124
  %3 = icmp slt i32 %.0109.lcssa, 1
  %wide.trip.count190 = zext i32 %.0109.lcssa to i64 ; 2 uses
  %wide.trip.count195 = zext nneg i32 %.0109.lcssa to i64
  %xtraiter = and i64 %wide.trip.count190, 1
  %4 = icmp eq i32 %.0109.lcssa, 1
  %unroll_iter = and i64 %wide.trip.count190, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod225 = trunc i32 %.0109.lcssa to i1
  br label %bb.m

bb.l:                                             ; preds = %.preheader125.us, %bb.l
  %indvars.iv = phi i64 [ 0, %.preheader125.us ], [ %indvars.iv.next, %bb.l ] ; 2 uses
  %i.bd = load i32, ptr @num_allocated, align 4, !tbaa !4
  %i.be = add nsw i32 %i.bd, 1
  store i32 %i.be, ptr @num_allocated, align 4, !tbaa !4
  %i.bf = tail call noalias noundef dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #8 ; 3 uses
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %indvars.iv ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !16
  store ptr %i.bh, ptr %i.bf, align 8, !tbaa !18
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  store i32 0, ptr %i.bi, align 8, !tbaa !20
  store ptr %i.bf, ptr %i.bg, align 8, !tbaa !16
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge150.us, label %bb.l, !llvm.loop !21

._crit_edge150.us:                                ; preds = %bb.l
  %i.bj = add nuw nsw i32 %.1101151.us, 1         ; 2 uses
  %exitcond186.not = icmp eq i32 %i.bj, %.0105.lcssa
  br i1 %exitcond186.not, label %.preheader124, label %.preheader125.us, !llvm.loop !22

bb.m:                                             ; preds = %.lr.ph174, %._crit_edge170
  %.093173 = phi float [ 0.000000e+00, %.lr.ph174 ], [ %i.ct, %._crit_edge170 ] ; 2 uses
  %.094172 = phi i32 [ 0, %.lr.ph174 ], [ %.195.lcssa205, %._crit_edge170 ] ; 3 uses
  %.2102171 = phi i32 [ 0, %.lr.ph174 ], [ %i.cu, %._crit_edge170 ] ; 3 uses
  %i.bk = urem i32 %.2102171, 1000
  %i.bl = icmp eq i32 %i.bk, 0
  br i1 %i.bl, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bm = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11, i32 noundef %.2102171) ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  br i1 %i.az, label %.lr.ph163.preheader, label %._crit_edge164.thread

.lr.ph163.preheader:                              ; preds = %bb.o
  br i1 %4, label %.lr.ph163.epil.preheader, label %.lr.ph163

._crit_edge164.thread:                            ; preds = %bb.o
  %5 = fadd float %.0103.lcssa, %.093173          ; 2 uses
  %6 = fptosi float %5 to i32
  %7 = sitofp i32 %6 to float
  %8 = fsub float %5, %7
  br label %._crit_edge170

.lr.ph163:                                        ; preds = %.lr.ph163.preheader, %._crit_edge158.1
  %indvars.iv187 = phi i64 [ %indvars.iv.next188.1, %._crit_edge158.1 ], [ 0, %.lr.ph163.preheader ] ; 3 uses
  %.195161 = phi i32 [ %.2.lcssa.1, %._crit_edge158.1 ], [ %.094172, %.lr.ph163.preheader ] ; 2 uses
  %niter = phi i64 [ %niter.next.1, %._crit_edge158.1 ], [ 0, %.lr.ph163.preheader ]
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %indvars.iv187
  %.089152 = load ptr, ptr %i.bn, align 8, !tbaa !16 ; 2 uses
  %.not114153 = icmp eq ptr %.089152, null
  br i1 %.not114153, label %._crit_edge158, label %.lr.ph157

.lr.ph157:                                        ; preds = %.lr.ph163, %.lr.ph157
  %.089155 = phi ptr [ %.089, %.lr.ph157 ], [ %.089152, %.lr.ph163 ] ; 2 uses
  %.2154 = phi i32 [ %i.bq, %.lr.ph157 ], [ %.195161, %.lr.ph163 ]
  %i.bo = getelementptr inbounds nuw i8, ptr %.089155, i64 8 ; 2 uses
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !20 ; 2 uses
  %i.bq = add nsw i32 %i.bp, %.2154               ; 2 uses
  %i.br = add nsw i32 %i.bp, 1
  store i32 %i.br, ptr %i.bo, align 8, !tbaa !20
  %.089 = load ptr, ptr %.089155, align 8, !tbaa !16 ; 2 uses
  %.not114 = icmp eq ptr %.089, null
  br i1 %.not114, label %._crit_edge158, label %.lr.ph157, !llvm.loop !23

._crit_edge158:                                   ; preds = %.lr.ph157, %.lr.ph163
  %.2.lcssa = phi i32 [ %.195161, %.lr.ph163 ], [ %i.bq, %.lr.ph157 ] ; 2 uses
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %indvars.iv187
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %.089152.1 = load ptr, ptr %i.bt, align 8, !tbaa !16 ; 2 uses
  %.not114153.1 = icmp eq ptr %.089152.1, null
  br i1 %.not114153.1, label %._crit_edge158.1, label %.lr.ph157.1

.lr.ph157.1:                                      ; preds = %._crit_edge158, %.lr.ph157.1
  %.089155.1 = phi ptr [ %.089.1, %.lr.ph157.1 ], [ %.089152.1, %._crit_edge158 ] ; 2 uses
  %.2154.1 = phi i32 [ %i.bw, %.lr.ph157.1 ], [ %.2.lcssa, %._crit_edge158 ]
  %i.bu = getelementptr inbounds nuw i8, ptr %.089155.1, i64 8 ; 2 uses
  %i.bv = load i32, ptr %i.bu, align 8, !tbaa !20 ; 2 uses
  %i.bw = add nsw i32 %i.bv, %.2154.1             ; 2 uses
  %i.bx = add nsw i32 %i.bv, 1
  store i32 %i.bx, ptr %i.bu, align 8, !tbaa !20
  %.089.1 = load ptr, ptr %.089155.1, align 8, !tbaa !16 ; 2 uses
  %.not114.1 = icmp eq ptr %.089.1, null
  br i1 %.not114.1, label %._crit_edge158.1, label %.lr.ph157.1, !llvm.loop !23

._crit_edge158.1:                                 ; preds = %.lr.ph157.1, %._crit_edge158
  %.2.lcssa.1 = phi i32 [ %.2.lcssa, %._crit_edge158 ], [ %i.bw, %.lr.ph157.1 ] ; 3 uses
  %indvars.iv.next188.1 = add nuw nsw i64 %indvars.iv187, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge164.unr-lcssa, label %.lr.ph163, !llvm.loop !24

._crit_edge164.unr-lcssa:                         ; preds = %._crit_edge158.1
  br i1 %lcmp.mod.not, label %._crit_edge164, label %.lr.ph163.epil.preheader

.lr.ph163.epil.preheader:                         ; preds = %._crit_edge164.unr-lcssa, %.lr.ph163.preheader
  %indvars.iv187.epil.init = phi i64 [ 0, %.lr.ph163.preheader ], [ %indvars.iv.next188.1, %._crit_edge164.unr-lcssa ]
  %.195161.epil.init = phi i32 [ %.094172, %.lr.ph163.preheader ], [ %.2.lcssa.1, %._crit_edge164.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod225)
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %indvars.iv187.epil.init
  %.089152.epil = load ptr, ptr %i.by, align 8, !tbaa !16 ; 2 uses
  %.not114153.epil = icmp eq ptr %.089152.epil, null
  br i1 %.not114153.epil, label %._crit_edge164, label %.lr.ph157.epil

.lr.ph157.epil:                                   ; preds = %.lr.ph163.epil.preheader, %.lr.ph157.epil
  %.089155.epil = phi ptr [ %.089.epil, %.lr.ph157.epil ], [ %.089152.epil, %.lr.ph163.epil.preheader ] ; 2 uses
  %.2154.epil = phi i32 [ %i.cb, %.lr.ph157.epil ], [ %.195161.epil.init, %.lr.ph163.epil.preheader ]
  %i.bz = getelementptr inbounds nuw i8, ptr %.089155.epil, i64 8 ; 2 uses
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !20 ; 2 uses
  %i.cb = add nsw i32 %i.ca, %.2154.epil          ; 2 uses
  %i.cc = add nsw i32 %i.ca, 1
  store i32 %i.cc, ptr %i.bz, align 8, !tbaa !20
  %.089.epil = load ptr, ptr %.089155.epil, align 8, !tbaa !16 ; 2 uses
  %.not114.epil = icmp eq ptr %.089.epil, null
  br i1 %.not114.epil, label %._crit_edge164, label %.lr.ph157.epil, !llvm.loop !23

._crit_edge164:                                   ; preds = %.lr.ph163.epil.preheader, %.lr.ph157.epil, %._crit_edge164.unr-lcssa
  %.2.lcssa.lcssa = phi i32 [ %.2.lcssa.1, %._crit_edge164.unr-lcssa ], [ %.195161.epil.init, %.lr.ph163.epil.preheader ], [ %i.cb, %.lr.ph157.epil ] ; 2 uses
  %i.cd = fadd float %.0103.lcssa, %.093173       ; 2 uses
  %i.ce = fptosi float %i.cd to i32               ; 3 uses
  %i.cf = sitofp i32 %i.ce to float
  %i.cg = fsub float %i.cd, %i.cf                 ; 2 uses
  %i.ch = icmp slt i32 %i.ce, 1
  %brmerge = or i1 %i.ch, %3
  br i1 %brmerge, label %._crit_edge170, label %.preheader.us.preheader

.preheader.us.preheader:                          ; preds = %._crit_edge164
  %i.ci = zext nneg i32 %i.ce to i64
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge168.us
  %indvars.iv197 = phi i64 [ %i.ci, %.preheader.us.preheader ], [ %indvars.iv.next198, %._crit_edge168.us ] ; 3 uses
  br label %bb.p

bb.p:                                             ; preds = %.preheader.us, %bb.r
  %indvars.iv192 = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next193, %bb.r ] ; 3 uses
  %i.cj = load i32, ptr @num_allocated, align 4, !tbaa !4
  %i.ck = add nsw i32 %i.cj, 1
  store i32 %i.ck, ptr @num_allocated, align 4, !tbaa !4
  %i.cl = tail call noalias noundef dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #8 ; 3 uses
  %i.cm = add nuw nsw i64 %indvars.iv192, %indvars.iv197
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %i.co = trunc nuw i64 %i.cm to i32
  store i32 %i.co, ptr %i.cn, align 8, !tbaa !20
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %indvars.iv192
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !16
  br label %bb.q

bb.q:                                             ; preds = %bb.q, %bb.p
  %.0.us = phi ptr [ %i.cq, %bb.p ], [ %i.cr, %bb.q ] ; 2 uses
  %i.cr = load ptr, ptr %.0.us, align 8, !tbaa !18 ; 2 uses
  %.not.us = icmp eq ptr %i.cr, null
  br i1 %.not.us, label %bb.r, label %bb.q, !llvm.loop !25

bb.r:                                             ; preds = %bb.q
  store ptr %i.cl, ptr %.0.us, align 8, !tbaa !18
  store ptr null, ptr %i.cl, align 8, !tbaa !18
  %indvars.iv.next193 = add nuw nsw i64 %indvars.iv192, 1 ; 2 uses
  %exitcond196.not = icmp eq i64 %indvars.iv.next193, %wide.trip.count195
  br i1 %exitcond196.not, label %._crit_edge168.us, label %bb.p, !llvm.loop !26

._crit_edge168.us:                                ; preds = %bb.r
  %indvars.iv.next198 = add nsw i64 %indvars.iv197, -1
  %i.cs = icmp sgt i64 %indvars.iv197, 1
  br i1 %i.cs, label %.preheader.us, label %._crit_edge170, !llvm.loop !27

._crit_edge170:                                   ; preds = %._crit_edge168.us, %._crit_edge164.thread, %._crit_edge164
  %i.ct = phi float [ %8, %._crit_edge164.thread ], [ %i.cg, %._crit_edge164 ], [ %i.cg, %._crit_edge168.us ]
  %.195.lcssa205 = phi i32 [ %.094172, %._crit_edge164.thread ], [ %.2.lcssa.lcssa, %._crit_edge164 ], [ %.2.lcssa.lcssa, %._crit_edge168.us ] ; 2 uses
  %i.cu = add nuw nsw i32 %.2102171, 1            ; 2 uses
  %exitcond200.not = icmp eq i32 %i.cu, %.090.lcssa
  br i1 %exitcond200.not, label %._crit_edge175, label %bb.m, !llvm.loop !28

._crit_edge175:                                   ; preds = %._crit_edge170, %.preheader124
  %.094.lcssa = phi i32 [ 0, %.preheader124 ], [ %.195.lcssa205, %._crit_edge170 ]
  %i.cv = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.12, i32 noundef %.094.lcssa) ; 0 uses
  %i.cw = load i32, ptr @num_allocated, align 4, !tbaa !4
  %i.cx = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, i32 noundef %i.cw) ; 0 uses
  br label %bb.s

bb.s:                                             ; preds = %._crit_edge175, %bb.j, %bb.c
  %.088 = phi i32 [ -1, %bb.c ], [ -1, %bb.j ], [ 0, %._crit_edge175 ]
  ret i32 %.088
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr noundef captures(none), i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7

attributes #0 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nounwind willreturn memory(readwrite, argmem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #8 = { nounwind allocsize(0) }
attributes #9 = { nounwind }

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
!8 = !{!9, !9, i64 0}
!9 = !{!"p1 omnipotent char", !10, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!6, !6, i64 0}
!12 = distinct !{null}
!13 = distinct !{null}
!14 = distinct !{!14, !15}
!15 = !{!"llvm.loop.mustprogress"}
!16 = !{!17, !17, i64 0}
!17 = !{!"p1 _ZTS7element", !10, i64 0}
!18 = !{!19, !17, i64 0}
!19 = !{!"element", !17, i64 0, !5, i64 8}
!20 = !{!19, !5, i64 8}
!21 = distinct !{!21, !15}
!22 = distinct !{!22, !15}
!23 = distinct !{!23, !15}
!24 = distinct !{!24, !15}
!25 = distinct !{!25, !15}
!26 = distinct !{!26, !15}
!27 = distinct !{!27, !15}
!28 = distinct !{!28, !15}
end_hunk_0
