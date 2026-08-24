Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/llubenchmark?download=true
inline.NumInlined: 9
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
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
  %.090141 = phi i32 [ %.1, %bb.k ], [ 1, %bb.a ] ; 7 uses
  %.0101140 = phi float [ %.1102, %bb.k ], [ 3.330000e-01, %bb.a ] ; 6 uses
  %.0103139 = phi i32 [ %.1104, %bb.k ], [ 1, %bb.a ] ; 6 uses
  %.0107138 = phi i32 [ %.1108, %bb.k ], [ 196, %bb.a ] ; 6 uses
  %.0111137 = phi i32 [ %.1112, %bb.k ], [ 1000, %bb.a ] ; 6 uses
  %i.b = sext i32 %.090141 to i64
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
  %i.m = add nsw i32 %.090141, 1                  ; 7 uses
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
  %i.n = add nsw i32 %.090141, 2
  %i.o = sext i32 %i.m to i64
  %i.p = getelementptr inbounds [8 x i8], ptr %1, i64 %i.o
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !8
  %i.r = tail call double @strtod(ptr noundef nonnull captures(none) %i.q, ptr noundef null) #9, !inline_history !12
  %i.s = fptrunc double %i.r to float
  br label %bb.k

bb.f:                                             ; preds = %bb.d
  %i.t = add nsw i32 %.090141, 2
  %i.u = sext i32 %i.m to i64
  %i.v = getelementptr inbounds [8 x i8], ptr %1, i64 %i.u
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !8
  %i.x = tail call i64 @strtol(ptr noundef nonnull captures(none) %i.w, ptr noundef null, i32 noundef 10) #9, !inline_history !13
  %i.y = trunc i64 %i.x to i32
  br label %bb.k

bb.g:                                             ; preds = %bb.d
  %i.z = add nsw i32 %.090141, 2
  %i.aa = sext i32 %i.m to i64
  %i.ab = getelementptr inbounds [8 x i8], ptr %1, i64 %i.aa
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !8
  %i.ad = tail call i64 @strtol(ptr noundef nonnull captures(none) %i.ac, ptr noundef null, i32 noundef 10) #9, !inline_history !13
  %i.ae = trunc i64 %i.ad to i32
  br label %bb.k

bb.h:                                             ; preds = %bb.d
  %i.af = add nsw i32 %.090141, 2
  %i.ag = sext i32 %i.m to i64
  %i.ah = getelementptr inbounds [8 x i8], ptr %1, i64 %i.ag
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !8
  %i.aj = tail call i64 @strtol(ptr noundef nonnull captures(none) %i.ai, ptr noundef null, i32 noundef 10) #9, !inline_history !13
  %i.ak = trunc i64 %i.aj to i32
  br label %bb.k

bb.i:                                             ; preds = %bb.d
  %i.al = add nsw i32 %.090141, 2
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
  %.1112 = phi i32 [ %.0111137, %bb.d ], [ %.0111137, %bb.e ], [ %i.y, %bb.f ], [ %.0111137, %bb.g ], [ %.0111137, %bb.h ], [ %.0111137, %bb.i ], [ %.0111137, %bb.d ] ; 2 uses
  %.1108 = phi i32 [ %.0107138, %bb.d ], [ %.0107138, %bb.e ], [ %.0107138, %bb.f ], [ %.0107138, %bb.g ], [ %i.ak, %bb.h ], [ %.0107138, %bb.i ], [ %.0107138, %bb.d ] ; 2 uses
  %.1104 = phi i32 [ %.0103139, %bb.d ], [ %.0103139, %bb.e ], [ %.0103139, %bb.f ], [ %i.ae, %bb.g ], [ %.0103139, %bb.h ], [ %.0103139, %bb.i ], [ %.0103139, %bb.d ] ; 2 uses
  %.1102 = phi float [ %.0101140, %bb.d ], [ %i.s, %bb.e ], [ %.0101140, %bb.f ], [ %.0101140, %bb.g ], [ %.0101140, %bb.h ], [ %.0101140, %bb.i ], [ %.0101140, %bb.d ] ; 2 uses
  %.1 = phi i32 [ %i.m, %bb.d ], [ %i.n, %bb.e ], [ %i.t, %bb.f ], [ %i.z, %bb.g ], [ %i.af, %bb.h ], [ %i.al, %bb.i ], [ %i.m, %bb.d ] ; 2 uses
  %i.av = icmp slt i32 %.1, %0
  br i1 %i.av, label %.lr.ph, label %._crit_edge, !llvm.loop !14

._crit_edge:                                      ; preds = %bb.k, %bb.a
  %.0111.lcssa = phi i32 [ 1000, %bb.a ], [ %.1112, %bb.k ] ; 2 uses
  %.0107.lcssa = phi i32 [ 196, %bb.a ], [ %.1108, %bb.k ] ; 9 uses
  %.0103.lcssa = phi i32 [ 1, %bb.a ], [ %.1104, %bb.k ] ; 2 uses
  %.0101.lcssa = phi float [ 3.330000e-01, %bb.a ], [ %.1102, %bb.k ] ; 2 uses
  %i.aw = sext i32 %.0107.lcssa to i64
  %i.ax = shl nsw i64 %i.aw, 3
  %i.ay = tail call noalias ptr @malloc(i64 noundef %i.ax) #8 ; 6 uses
  %i.az = icmp sgt i32 %.0107.lcssa, 0            ; 2 uses
  br i1 %i.az, label %.preheader126, label %.preheader124

.preheader126:                                    ; preds = %._crit_edge
  %i.ba = zext nneg i32 %.0107.lcssa to i64
  %i.bb = shl nuw nsw i64 %i.ba, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ay, i8 0, i64 %i.bb, i1 false), !tbaa !16
  %i.bc = icmp sgt i32 %.0103.lcssa, 0
  br i1 %i.bc, label %.preheader125.preheader, label %.preheader124

.preheader125.preheader:                          ; preds = %.preheader126
  %wide.trip.count = zext nneg i32 %.0107.lcssa to i64
  br label %.preheader125

.preheader125:                                    ; preds = %.preheader125.preheader, %._crit_edge150
  %.199151 = phi i32 [ %i.bk, %._crit_edge150 ], [ 0, %.preheader125.preheader ]
  br label %bb.l

.preheader124:                                    ; preds = %._crit_edge150, %._crit_edge, %.preheader126
  %i.bd = icmp sgt i32 %.0111.lcssa, 0
  br i1 %i.bd, label %.lr.ph174, label %._crit_edge175

.lr.ph174:                                        ; preds = %.preheader124
  %i.be = icmp slt i32 %.0107.lcssa, 1
  %wide.trip.count190 = zext i32 %.0107.lcssa to i64 ; 2 uses
  %wide.trip.count195 = zext nneg i32 %.0107.lcssa to i64
  %xtraiter = and i64 %wide.trip.count190, 1
  %i.bf = icmp eq i32 %.0107.lcssa, 1
  %unroll_iter = and i64 %wide.trip.count190, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod225 = trunc i32 %.0107.lcssa to i1
  br label %bb.m

bb.l:                                             ; preds = %.preheader125, %bb.l
  %indvars.iv = phi i64 [ 0, %.preheader125 ], [ %indvars.iv.next, %bb.l ] ; 2 uses
  %2 = load i32, ptr @num_allocated, align 4, !tbaa !4
  %3 = add nsw i32 %2, 1
  store i32 %3, ptr @num_allocated, align 4, !tbaa !4
  %i.bg = tail call noalias noundef dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #8 ; 3 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %indvars.iv ; 2 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !16
  store ptr %i.bi, ptr %i.bg, align 8, !tbaa !18
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store i32 0, ptr %i.bj, align 8, !tbaa !20
  store ptr %i.bg, ptr %i.bh, align 8, !tbaa !16
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge150, label %bb.l, !llvm.loop !21

._crit_edge150:                                   ; preds = %bb.l
  %i.bk = add nuw nsw i32 %.199151, 1             ; 2 uses
  %exitcond186.not = icmp eq i32 %i.bk, %.0103.lcssa
  br i1 %exitcond186.not, label %.preheader124, label %.preheader125, !llvm.loop !22

bb.m:                                             ; preds = %.lr.ph174, %._crit_edge170.split
  %.091173 = phi float [ 0.000000e+00, %.lr.ph174 ], [ %10, %._crit_edge170.split ] ; 2 uses
  %.092172 = phi i32 [ 0, %.lr.ph174 ], [ %.193.lcssa208, %._crit_edge170.split ] ; 3 uses
  %.2100171 = phi i32 [ 0, %.lr.ph174 ], [ %i.cs, %._crit_edge170.split ] ; 3 uses
  %i.bl = urem i32 %.2100171, 1000
  %i.bm = icmp eq i32 %i.bl, 0
  br i1 %i.bm, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bn = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11, i32 noundef %.2100171) ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  br i1 %i.az, label %.lr.ph163.preheader, label %._crit_edge164.thread

.lr.ph163.preheader:                              ; preds = %bb.o
  br i1 %i.bf, label %.lr.ph163.epil.preheader, label %.lr.ph163

._crit_edge164.thread:                            ; preds = %bb.o
  %4 = fadd float %.0101.lcssa, %.091173          ; 2 uses
  %5 = fptosi float %4 to i32
  %6 = sitofp i32 %5 to float
  %7 = fsub float %4, %6
  br label %._crit_edge170.split

.lr.ph163:                                        ; preds = %.lr.ph163.preheader, %._crit_edge158.1
  %indvars.iv187 = phi i64 [ %indvars.iv.next188.1, %._crit_edge158.1 ], [ 0, %.lr.ph163.preheader ] ; 3 uses
  %.193161 = phi i32 [ %.2.lcssa.1, %._crit_edge158.1 ], [ %.092172, %.lr.ph163.preheader ] ; 2 uses
  %niter = phi i64 [ %niter.next.1, %._crit_edge158.1 ], [ 0, %.lr.ph163.preheader ]
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %indvars.iv187
  %.088152 = load ptr, ptr %i.bo, align 8, !tbaa !16 ; 2 uses
  %.not114153 = icmp eq ptr %.088152, null
  br i1 %.not114153, label %._crit_edge158, label %.lr.ph157

.lr.ph157:                                        ; preds = %.lr.ph163, %.lr.ph157
  %.088155 = phi ptr [ %.088, %.lr.ph157 ], [ %.088152, %.lr.ph163 ] ; 2 uses
  %.2154 = phi i32 [ %i.br, %.lr.ph157 ], [ %.193161, %.lr.ph163 ]
  %i.bp = getelementptr inbounds nuw i8, ptr %.088155, i64 8 ; 2 uses
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !20 ; 2 uses
  %i.br = add nsw i32 %i.bq, %.2154               ; 2 uses
  %i.bs = add nsw i32 %i.bq, 1
  store i32 %i.bs, ptr %i.bp, align 8, !tbaa !20
  %.088 = load ptr, ptr %.088155, align 8, !tbaa !16 ; 2 uses
  %.not114 = icmp eq ptr %.088, null
  br i1 %.not114, label %._crit_edge158, label %.lr.ph157, !llvm.loop !23

._crit_edge158:                                   ; preds = %.lr.ph157, %.lr.ph163
  %.2.lcssa = phi i32 [ %.193161, %.lr.ph163 ], [ %i.br, %.lr.ph157 ] ; 2 uses
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %indvars.iv187
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %.088152.1 = load ptr, ptr %i.bu, align 8, !tbaa !16 ; 2 uses
  %.not114153.1 = icmp eq ptr %.088152.1, null
  br i1 %.not114153.1, label %._crit_edge158.1, label %.lr.ph157.1

.lr.ph157.1:                                      ; preds = %._crit_edge158, %.lr.ph157.1
  %.088155.1 = phi ptr [ %.088.1, %.lr.ph157.1 ], [ %.088152.1, %._crit_edge158 ] ; 2 uses
  %.2154.1 = phi i32 [ %i.bx, %.lr.ph157.1 ], [ %.2.lcssa, %._crit_edge158 ]
  %i.bv = getelementptr inbounds nuw i8, ptr %.088155.1, i64 8 ; 2 uses
  %i.bw = load i32, ptr %i.bv, align 8, !tbaa !20 ; 2 uses
  %i.bx = add nsw i32 %i.bw, %.2154.1             ; 2 uses
  %i.by = add nsw i32 %i.bw, 1
  store i32 %i.by, ptr %i.bv, align 8, !tbaa !20
  %.088.1 = load ptr, ptr %.088155.1, align 8, !tbaa !16 ; 2 uses
  %.not114.1 = icmp eq ptr %.088.1, null
  br i1 %.not114.1, label %._crit_edge158.1, label %.lr.ph157.1, !llvm.loop !23

._crit_edge158.1:                                 ; preds = %.lr.ph157.1, %._crit_edge158
  %.2.lcssa.1 = phi i32 [ %.2.lcssa, %._crit_edge158 ], [ %i.bx, %.lr.ph157.1 ] ; 3 uses
  %indvars.iv.next188.1 = add nuw nsw i64 %indvars.iv187, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge164.unr-lcssa, label %.lr.ph163, !llvm.loop !24

._crit_edge164.unr-lcssa:                         ; preds = %._crit_edge158.1
  br i1 %lcmp.mod.not, label %._crit_edge164, label %.lr.ph163.epil.preheader

.lr.ph163.epil.preheader:                         ; preds = %._crit_edge164.unr-lcssa, %.lr.ph163.preheader
  %indvars.iv187.epil.init = phi i64 [ 0, %.lr.ph163.preheader ], [ %indvars.iv.next188.1, %._crit_edge164.unr-lcssa ]
  %.193161.epil.init = phi i32 [ %.092172, %.lr.ph163.preheader ], [ %.2.lcssa.1, %._crit_edge164.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod225)
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %indvars.iv187.epil.init
  %.088152.epil = load ptr, ptr %i.bz, align 8, !tbaa !16 ; 2 uses
  %.not114153.epil = icmp eq ptr %.088152.epil, null
  br i1 %.not114153.epil, label %._crit_edge164, label %.lr.ph157.epil

.lr.ph157.epil:                                   ; preds = %.lr.ph163.epil.preheader, %.lr.ph157.epil
  %.088155.epil = phi ptr [ %.088.epil, %.lr.ph157.epil ], [ %.088152.epil, %.lr.ph163.epil.preheader ] ; 2 uses
  %.2154.epil = phi i32 [ %i.cc, %.lr.ph157.epil ], [ %.193161.epil.init, %.lr.ph163.epil.preheader ]
  %i.ca = getelementptr inbounds nuw i8, ptr %.088155.epil, i64 8 ; 2 uses
  %i.cb = load i32, ptr %i.ca, align 8, !tbaa !20 ; 2 uses
  %i.cc = add nsw i32 %i.cb, %.2154.epil          ; 2 uses
  %i.cd = add nsw i32 %i.cb, 1
  store i32 %i.cd, ptr %i.ca, align 8, !tbaa !20
  %.088.epil = load ptr, ptr %.088155.epil, align 8, !tbaa !16 ; 2 uses
  %.not114.epil = icmp eq ptr %.088.epil, null
  br i1 %.not114.epil, label %._crit_edge164, label %.lr.ph157.epil, !llvm.loop !23

._crit_edge164:                                   ; preds = %.lr.ph163.epil.preheader, %.lr.ph157.epil, %._crit_edge164.unr-lcssa
  %.2.lcssa.lcssa = phi i32 [ %.2.lcssa.1, %._crit_edge164.unr-lcssa ], [ %.193161.epil.init, %.lr.ph163.epil.preheader ], [ %i.cc, %.lr.ph157.epil ] ; 2 uses
  %i.ce = fadd float %.0101.lcssa, %.091173       ; 2 uses
  %i.cf = fptosi float %i.ce to i32               ; 3 uses
  %i.cg = sitofp i32 %i.cf to float
  %i.ch = fsub float %i.ce, %i.cg                 ; 2 uses
  %i.ci = icmp slt i32 %i.cf, 1
  %brmerge = or i1 %i.ci, %i.be
  br i1 %brmerge, label %._crit_edge170.split, label %.preheader.preheader

.preheader.preheader:                             ; preds = %._crit_edge164
  %i.cj = zext nneg i32 %i.cf to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge168
  %indvars.iv197 = phi i64 [ %i.cj, %.preheader.preheader ], [ %indvars.iv.next198, %._crit_edge168 ] ; 3 uses
  br label %bb.p

bb.p:                                             ; preds = %.preheader, %bb.r
  %indvars.iv192 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next193, %bb.r ] ; 3 uses
  %8 = load i32, ptr @num_allocated, align 4, !tbaa !4
  %9 = add nsw i32 %8, 1
  store i32 %9, ptr @num_allocated, align 4, !tbaa !4
  %i.ck = tail call noalias noundef dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #8 ; 3 uses
  %i.cl = add nuw nsw i64 %indvars.iv192, %indvars.iv197
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %i.cn = trunc nuw i64 %i.cl to i32
  store i32 %i.cn, ptr %i.cm, align 8, !tbaa !20
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %indvars.iv192
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !16
  br label %bb.q

bb.q:                                             ; preds = %bb.q, %bb.p
  %.0 = phi ptr [ %i.cp, %bb.p ], [ %i.cq, %bb.q ] ; 2 uses
  %i.cq = load ptr, ptr %.0, align 8, !tbaa !18   ; 2 uses
  %.not = icmp eq ptr %i.cq, null
  br i1 %.not, label %bb.r, label %bb.q, !llvm.loop !25

bb.r:                                             ; preds = %bb.q
  store ptr %i.ck, ptr %.0, align 8, !tbaa !18
  store ptr null, ptr %i.ck, align 8, !tbaa !18
  %indvars.iv.next193 = add nuw nsw i64 %indvars.iv192, 1 ; 2 uses
  %exitcond196.not = icmp eq i64 %indvars.iv.next193, %wide.trip.count195
  br i1 %exitcond196.not, label %._crit_edge168, label %bb.p, !llvm.loop !26

._crit_edge168:                                   ; preds = %bb.r
  %indvars.iv.next198 = add nsw i64 %indvars.iv197, -1
  %i.cr = icmp sgt i64 %indvars.iv197, 1
  br i1 %i.cr, label %.preheader, label %._crit_edge170.split, !llvm.loop !27

._crit_edge170.split:                             ; preds = %._crit_edge168, %._crit_edge164.thread, %._crit_edge164
  %10 = phi float [ %7, %._crit_edge164.thread ], [ %i.ch, %._crit_edge164 ], [ %i.ch, %._crit_edge168 ]
  %.193.lcssa208 = phi i32 [ %.092172, %._crit_edge164.thread ], [ %.2.lcssa.lcssa, %._crit_edge164 ], [ %.2.lcssa.lcssa, %._crit_edge168 ] ; 2 uses
  %i.cs = add nuw nsw i32 %.2100171, 1            ; 2 uses
  %exitcond200.not = icmp eq i32 %i.cs, %.0111.lcssa
  br i1 %exitcond200.not, label %._crit_edge175, label %bb.m, !llvm.loop !28

._crit_edge175:                                   ; preds = %._crit_edge170.split, %.preheader124
  %.092.lcssa = phi i32 [ 0, %.preheader124 ], [ %.193.lcssa208, %._crit_edge170.split ]
  %i.ct = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.12, i32 noundef %.092.lcssa) ; 0 uses
  %i.cu = load i32, ptr @num_allocated, align 4, !tbaa !4
  %i.cv = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, i32 noundef %i.cu) ; 0 uses
  br label %bb.s

bb.s:                                             ; preds = %._crit_edge175, %bb.j, %bb.c
  %.089 = phi i32 [ -1, %bb.c ], [ -1, %bb.j ], [ 0, %._crit_edge175 ]
  ret i32 %.089
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
