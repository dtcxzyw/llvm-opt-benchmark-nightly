Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/llubenchmark?download=true
inline.NumInlined: 9
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0

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
  %i.a = load i32, ptr @num_allocated, align 4, !tbaa !7
  %i.b = add nsw i32 %i.a, 1
  store i32 %i.b, ptr @num_allocated, align 4, !tbaa !7
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
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !21   ; 4 uses
  %i.e = load i8, ptr %i.d, align 1, !tbaa !22
  %.not115 = icmp eq i8 %i.e, 45
  br i1 %.not115, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  %i.g = load i8, ptr %i.f, align 1, !tbaa !22
  %.not116 = icmp eq i8 %i.g, 0
  br i1 %.not116, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph
  %i.h = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, ptr noundef nonnull %i.d) ; 0 uses
  %i.i = load ptr, ptr %1, align 8, !tbaa !21
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
  %i.l = load i8, ptr %i.k, align 1, !tbaa !22    ; 2 uses
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
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !21
  %i.r = tail call double @strtod(ptr noundef nonnull captures(none) %i.q, ptr noundef null) #9, !inline_history !8
  %i.s = fptrunc double %i.r to float
  br label %bb.k

bb.f:                                             ; preds = %bb.d
  %i.t = add nsw i32 %.090141, 2
  %i.u = sext i32 %i.m to i64
  %i.v = getelementptr inbounds [8 x i8], ptr %1, i64 %i.u
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !21
  %i.x = tail call i64 @strtol(ptr noundef nonnull captures(none) %i.w, ptr noundef null, i32 noundef 10) #9, !inline_history !9
  %i.y = trunc i64 %i.x to i32
  br label %bb.k

bb.g:                                             ; preds = %bb.d
  %i.z = add nsw i32 %.090141, 2
  %i.aa = sext i32 %i.m to i64
  %i.ab = getelementptr inbounds [8 x i8], ptr %1, i64 %i.aa
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !21
  %i.ad = tail call i64 @strtol(ptr noundef nonnull captures(none) %i.ac, ptr noundef null, i32 noundef 10) #9, !inline_history !9
  %i.ae = trunc i64 %i.ad to i32
  br label %bb.k

bb.h:                                             ; preds = %bb.d
  %i.af = add nsw i32 %.090141, 2
  %i.ag = sext i32 %i.m to i64
  %i.ah = getelementptr inbounds [8 x i8], ptr %1, i64 %i.ag
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !21
  %i.aj = tail call i64 @strtol(ptr noundef nonnull captures(none) %i.ai, ptr noundef null, i32 noundef 10) #9, !inline_history !9
  %i.ak = trunc i64 %i.aj to i32
  br label %bb.k

bb.i:                                             ; preds = %bb.d
  %i.al = add nsw i32 %.090141, 2
  %i.am = sext i32 %i.m to i64
  %i.an = getelementptr inbounds [8 x i8], ptr %1, i64 %i.am
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !21
  %i.ap = tail call i64 @strtol(ptr noundef nonnull captures(none) %i.ao, ptr noundef null, i32 noundef 10) #9, !inline_history !9
  %i.aq = trunc i64 %i.ap to i32
  store i32 %i.aq, ptr @element_size, align 4, !tbaa !7
  br label %bb.k

bb.j:                                             ; preds = %bb.d
  %i.ar = sext i8 %i.l to i32
  %i.as = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, i32 noundef %i.ar) ; 0 uses
  %i.at = load ptr, ptr %1, align 8, !tbaa !21
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
  br i1 %i.av, label %.lr.ph, label %._crit_edge, !llvm.loop !10

._crit_edge:                                      ; preds = %bb.k, %bb.a
  %.0111.lcssa = phi i32 [ 1000, %bb.a ], [ %.1112, %bb.k ] ; 2 uses
  %.0107.lcssa = phi i32 [ 196, %bb.a ], [ %.1108, %bb.k ] ; 11 uses
  %.0103.lcssa = phi i32 [ 1, %bb.a ], [ %.1104, %bb.k ] ; 3 uses
  %.0101.lcssa = phi float [ 3.330000e-01, %bb.a ], [ %.1102, %bb.k ]
  %i.aw = sext i32 %.0107.lcssa to i64
  %i.ax = shl nsw i64 %i.aw, 3
  %i.ay = tail call noalias ptr @malloc(i64 noundef %i.ax) #8 ; 6 uses
  %i.az = icmp sgt i32 %.0107.lcssa, 0            ; 2 uses
  br i1 %i.az, label %.preheader126, label %.preheader124

.preheader126:                                    ; preds = %._crit_edge
  %i.ba = zext nneg i32 %.0107.lcssa to i64
  %i.bb = shl nuw nsw i64 %i.ba, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ay, i8 0, i64 %i.bb, i1 false), !tbaa !25
  %num_allocated.promoted152 = load i32, ptr @num_allocated, align 4
  %i.bc = icmp sgt i32 %.0103.lcssa, 0
  br i1 %i.bc, label %.preheader125.preheader, label %.preheader124

.preheader125.preheader:                          ; preds = %.preheader126
  %wide.trip.count = zext nneg i32 %.0107.lcssa to i64
  br label %.preheader125

.preheader125:                                    ; preds = %.preheader125.preheader, %._crit_edge150
  %.199156 = phi i32 [ %i.bm, %._crit_edge150 ], [ 0, %.preheader125.preheader ]
  br label %bb.l

..preheader124_crit_edge:                         ; preds = %._crit_edge150
  %i.bd = mul i32 %.0103.lcssa, %.0107.lcssa
  %i.be = add i32 %num_allocated.promoted152, %i.bd
  store i32 %i.be, ptr @num_allocated, align 4, !tbaa !7
  br label %.preheader124

.preheader124:                                    ; preds = %._crit_edge, %..preheader124_crit_edge, %.preheader126
  %i.bf = icmp sgt i32 %.0111.lcssa, 0
  br i1 %i.bf, label %.lr.ph184, label %._crit_edge185

.lr.ph184:                                        ; preds = %.preheader124
  %i.bg = icmp slt i32 %.0107.lcssa, 1
  %wide.trip.count202 = zext i32 %.0107.lcssa to i64 ; 2 uses
  %wide.trip.count207 = zext nneg i32 %.0107.lcssa to i64
  %xtraiter = and i64 %wide.trip.count202, 1
  %i.bh = icmp eq i32 %.0107.lcssa, 1
  %unroll_iter = and i64 %wide.trip.count202, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod235 = trunc i32 %.0107.lcssa to i1
  br label %bb.m

bb.l:                                             ; preds = %.preheader125, %bb.l
  %indvars.iv = phi i64 [ 0, %.preheader125 ], [ %indvars.iv.next, %bb.l ] ; 2 uses
  %i.bi = tail call noalias noundef dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #8 ; 3 uses
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %indvars.iv ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !25
  store ptr %i.bk, ptr %i.bi, align 8, !tbaa !27
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  store i32 0, ptr %i.bl, align 8, !tbaa !28
  store ptr %i.bi, ptr %i.bj, align 8, !tbaa !25
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge150, label %bb.l, !llvm.loop !11

._crit_edge150:                                   ; preds = %bb.l
  %i.bm = add nuw nsw i32 %.199156, 1             ; 2 uses
  %exitcond198.not = icmp eq i32 %i.bm, %.0103.lcssa
  br i1 %exitcond198.not, label %..preheader124_crit_edge, label %.preheader125, !llvm.loop !12

bb.m:                                             ; preds = %.lr.ph184, %._crit_edge180.split
  %.091183 = phi float [ 0.000000e+00, %.lr.ph184 ], [ %i.cj, %._crit_edge180.split ]
  %.092182 = phi i32 [ 0, %.lr.ph184 ], [ %.193.lcssa, %._crit_edge180.split ] ; 3 uses
  %.2100181 = phi i32 [ 0, %.lr.ph184 ], [ %i.cw, %._crit_edge180.split ] ; 3 uses
  %i.bn = urem i32 %.2100181, 1000
  %i.bo = icmp eq i32 %i.bn, 0
  br i1 %i.bo, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bp = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11, i32 noundef %.2100181) ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  br i1 %i.az, label %.lr.ph168.preheader, label %._crit_edge169

.lr.ph168.preheader:                              ; preds = %bb.o
  br i1 %i.bh, label %.lr.ph168.epil.preheader, label %.lr.ph168

.lr.ph168:                                        ; preds = %.lr.ph168.preheader, %._crit_edge163.1
  %indvars.iv199 = phi i64 [ %indvars.iv.next200.1, %._crit_edge163.1 ], [ 0, %.lr.ph168.preheader ] ; 3 uses
  %.193166 = phi i32 [ %.2.lcssa.1, %._crit_edge163.1 ], [ %.092182, %.lr.ph168.preheader ] ; 2 uses
  %niter = phi i64 [ %niter.next.1, %._crit_edge163.1 ], [ 0, %.lr.ph168.preheader ]
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %indvars.iv199
  %.088157 = load ptr, ptr %i.bq, align 8, !tbaa !25 ; 2 uses
  %.not114158 = icmp eq ptr %.088157, null
  br i1 %.not114158, label %._crit_edge163, label %.lr.ph162

.lr.ph162:                                        ; preds = %.lr.ph168, %.lr.ph162
  %.088160 = phi ptr [ %.088, %.lr.ph162 ], [ %.088157, %.lr.ph168 ] ; 2 uses
  %.2159 = phi i32 [ %i.bt, %.lr.ph162 ], [ %.193166, %.lr.ph168 ]
  %i.br = getelementptr inbounds nuw i8, ptr %.088160, i64 8 ; 2 uses
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !28 ; 2 uses
  %i.bt = add nsw i32 %i.bs, %.2159               ; 2 uses
  %i.bu = add nsw i32 %i.bs, 1
  store i32 %i.bu, ptr %i.br, align 8, !tbaa !28
  %.088 = load ptr, ptr %.088160, align 8, !tbaa !25 ; 2 uses
  %.not114 = icmp eq ptr %.088, null
  br i1 %.not114, label %._crit_edge163, label %.lr.ph162, !llvm.loop !13

._crit_edge163:                                   ; preds = %.lr.ph162, %.lr.ph168
  %.2.lcssa = phi i32 [ %.193166, %.lr.ph168 ], [ %i.bt, %.lr.ph162 ] ; 2 uses
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %indvars.iv199
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %.088157.1 = load ptr, ptr %i.bw, align 8, !tbaa !25 ; 2 uses
  %.not114158.1 = icmp eq ptr %.088157.1, null
  br i1 %.not114158.1, label %._crit_edge163.1, label %.lr.ph162.1

.lr.ph162.1:                                      ; preds = %._crit_edge163, %.lr.ph162.1
  %.088160.1 = phi ptr [ %.088.1, %.lr.ph162.1 ], [ %.088157.1, %._crit_edge163 ] ; 2 uses
  %.2159.1 = phi i32 [ %i.bz, %.lr.ph162.1 ], [ %.2.lcssa, %._crit_edge163 ]
  %i.bx = getelementptr inbounds nuw i8, ptr %.088160.1, i64 8 ; 2 uses
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !28 ; 2 uses
  %i.bz = add nsw i32 %i.by, %.2159.1             ; 2 uses
  %i.ca = add nsw i32 %i.by, 1
  store i32 %i.ca, ptr %i.bx, align 8, !tbaa !28
  %.088.1 = load ptr, ptr %.088160.1, align 8, !tbaa !25 ; 2 uses
  %.not114.1 = icmp eq ptr %.088.1, null
  br i1 %.not114.1, label %._crit_edge163.1, label %.lr.ph162.1, !llvm.loop !13

._crit_edge163.1:                                 ; preds = %.lr.ph162.1, %._crit_edge163
  %.2.lcssa.1 = phi i32 [ %.2.lcssa, %._crit_edge163 ], [ %i.bz, %.lr.ph162.1 ] ; 3 uses
  %indvars.iv.next200.1 = add nuw nsw i64 %indvars.iv199, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge169.loopexit.unr-lcssa, label %.lr.ph168, !llvm.loop !14

._crit_edge169.loopexit.unr-lcssa:                ; preds = %._crit_edge163.1
  br i1 %lcmp.mod.not, label %._crit_edge169, label %.lr.ph168.epil.preheader

.lr.ph168.epil.preheader:                         ; preds = %._crit_edge169.loopexit.unr-lcssa, %.lr.ph168.preheader
  %indvars.iv199.epil.init = phi i64 [ 0, %.lr.ph168.preheader ], [ %indvars.iv.next200.1, %._crit_edge169.loopexit.unr-lcssa ]
  %.193166.epil.init = phi i32 [ %.092182, %.lr.ph168.preheader ], [ %.2.lcssa.1, %._crit_edge169.loopexit.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod235)
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %indvars.iv199.epil.init
  %.088157.epil = load ptr, ptr %i.cb, align 8, !tbaa !25 ; 2 uses
  %.not114158.epil = icmp eq ptr %.088157.epil, null
  br i1 %.not114158.epil, label %._crit_edge169, label %.lr.ph162.epil

.lr.ph162.epil:                                   ; preds = %.lr.ph168.epil.preheader, %.lr.ph162.epil
  %.088160.epil = phi ptr [ %.088.epil, %.lr.ph162.epil ], [ %.088157.epil, %.lr.ph168.epil.preheader ] ; 2 uses
  %.2159.epil = phi i32 [ %i.ce, %.lr.ph162.epil ], [ %.193166.epil.init, %.lr.ph168.epil.preheader ]
  %i.cc = getelementptr inbounds nuw i8, ptr %.088160.epil, i64 8 ; 2 uses
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !28 ; 2 uses
  %i.ce = add nsw i32 %i.cd, %.2159.epil          ; 2 uses
  %i.cf = add nsw i32 %i.cd, 1
  store i32 %i.cf, ptr %i.cc, align 8, !tbaa !28
  %.088.epil = load ptr, ptr %.088160.epil, align 8, !tbaa !25 ; 2 uses
  %.not114.epil = icmp eq ptr %.088.epil, null
  br i1 %.not114.epil, label %._crit_edge169, label %.lr.ph162.epil, !llvm.loop !13

._crit_edge169:                                   ; preds = %._crit_edge169.loopexit.unr-lcssa, %.lr.ph162.epil, %.lr.ph168.epil.preheader, %bb.o
  %.193.lcssa = phi i32 [ %.092182, %bb.o ], [ %.2.lcssa.1, %._crit_edge169.loopexit.unr-lcssa ], [ %.193166.epil.init, %.lr.ph168.epil.preheader ], [ %i.ce, %.lr.ph162.epil ] ; 2 uses
  %i.cg = fadd float %.0101.lcssa, %.091183       ; 2 uses
  %i.ch = fptosi float %i.cg to i32               ; 4 uses
  %i.ci = sitofp i32 %i.ch to float
  %i.cj = fsub float %i.cg, %i.ci
  %num_allocated.promoted175 = load i32, ptr @num_allocated, align 4
  %i.ck = icmp slt i32 %i.ch, 1
  %brmerge = or i1 %i.ck, %i.bg
  br i1 %brmerge, label %._crit_edge180.split, label %.preheader.preheader

.preheader.preheader:                             ; preds = %._crit_edge169
  %i.cl = zext nneg i32 %i.ch to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge173
  %indvars.iv209 = phi i64 [ %i.cl, %.preheader.preheader ], [ %indvars.iv.next210, %._crit_edge173 ] ; 3 uses
  br label %bb.p

bb.p:                                             ; preds = %.preheader, %bb.r
  %indvars.iv204 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next205, %bb.r ] ; 3 uses
  %i.cm = tail call noalias noundef dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #8 ; 3 uses
  %i.cn = add nuw nsw i64 %indvars.iv204, %indvars.iv209
  %i.co = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %i.cp = trunc nuw i64 %i.cn to i32
  store i32 %i.cp, ptr %i.co, align 8, !tbaa !28
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %indvars.iv204
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !25
  br label %bb.q

bb.q:                                             ; preds = %bb.q, %bb.p
  %.0 = phi ptr [ %i.cr, %bb.p ], [ %i.cs, %bb.q ] ; 2 uses
  %i.cs = load ptr, ptr %.0, align 8, !tbaa !27   ; 2 uses
  %.not = icmp eq ptr %i.cs, null
  br i1 %.not, label %bb.r, label %bb.q, !llvm.loop !15

bb.r:                                             ; preds = %bb.q
  store ptr %i.cm, ptr %.0, align 8, !tbaa !27
  store ptr null, ptr %i.cm, align 8, !tbaa !27
  %indvars.iv.next205 = add nuw nsw i64 %indvars.iv204, 1 ; 2 uses
  %exitcond208.not = icmp eq i64 %indvars.iv.next205, %wide.trip.count207
  br i1 %exitcond208.not, label %._crit_edge173, label %bb.p, !llvm.loop !16

._crit_edge173:                                   ; preds = %bb.r
  %indvars.iv.next210 = add nsw i64 %indvars.iv209, -1
  %i.ct = icmp sgt i64 %indvars.iv209, 1
  br i1 %i.ct, label %.preheader, label %._crit_edge180, !llvm.loop !17

._crit_edge180:                                   ; preds = %._crit_edge173
  %i.cu = mul i32 %.0107.lcssa, %i.ch
  %i.cv = add i32 %num_allocated.promoted175, %i.cu
  store i32 %i.cv, ptr @num_allocated, align 4, !tbaa !7
  br label %._crit_edge180.split

._crit_edge180.split:                             ; preds = %._crit_edge169, %._crit_edge180
  %i.cw = add nuw nsw i32 %.2100181, 1            ; 2 uses
  %exitcond212.not = icmp eq i32 %i.cw, %.0111.lcssa
  br i1 %exitcond212.not, label %._crit_edge185, label %bb.m, !llvm.loop !18

._crit_edge185:                                   ; preds = %._crit_edge180.split, %.preheader124
  %.092.lcssa = phi i32 [ 0, %.preheader124 ], [ %.193.lcssa, %._crit_edge180.split ]
  %i.cx = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.12, i32 noundef %.092.lcssa) ; 0 uses
  %i.cy = load i32, ptr @num_allocated, align 4, !tbaa !7
  %i.cz = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, i32 noundef %i.cy) ; 0 uses
  br label %bb.s

bb.s:                                             ; preds = %._crit_edge185, %bb.j, %bb.c
  %.089 = phi i32 [ -1, %bb.c ], [ -1, %bb.j ], [ 0, %._crit_edge185 ]
  ret i32 %.089
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr noundef captures(none)) local_unnamed_addr #4
end_hunk_0
