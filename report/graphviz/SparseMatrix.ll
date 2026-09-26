Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/graphviz/original/SparseMatrix?download=true
inline.NumInlined: 68
inline.NumDeleted: 10
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 20
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [45 x i8] c"%s:%d: claimed unreachable code was reached\0A\00", align 1
@.str.1 = private unnamed_addr constant [60 x i8] c"/opt-bench/work/graphviz/graphviz/lib/sparse/SparseMatrix.c\00", align 1
@.str.2 = private unnamed_addr constant [55 x i8] c"exporting coordinate format matrices is not supported\0A\00", align 1
@.str.3 = private unnamed_addr constant [58 x i8] c"integer overflow when trying to allocate %zu * %zu bytes\0A\00", align 1
@.str.4 = private unnamed_addr constant [49 x i8] c"out of memory when trying to allocate %zu bytes\0A\00", align 1
@.str.5 = private unnamed_addr constant [52 x i8] c"%%%%MatrixMarket matrix coordinate integer general\0A\00", align 1
@.str.6 = private unnamed_addr constant [47 x i8] c"export of non-integer matrices is unsupported\0A\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"%d %d %zu\0A\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"%d %d %d\0A\00", align 1

; Function Attrs: nounwind uwtable
define ptr @SparseMatrix_sort(ptr noundef captures(address_is_null) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @SparseMatrix_transpose(ptr noundef %0) ; 6 uses
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %SparseMatrix_delete.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !13
  tail call void @free(ptr noundef %i.c) #17
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !14
  tail call void @free(ptr noundef %i.e) #17
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !15
  tail call void @free(ptr noundef %i.g) #17
  tail call void @free(ptr noundef nonnull %0) #17
  br label %SparseMatrix_delete.exit

SparseMatrix_delete.exit:                         ; preds = %bb.a, %bb.b
  %i.h = tail call ptr @SparseMatrix_transpose(ptr noundef %i.a)
  %.not.i5 = icmp eq ptr %i.a, null
  br i1 %.not.i5, label %SparseMatrix_delete.exit6, label %bb.c

bb.c:                                             ; preds = %SparseMatrix_delete.exit
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !13
  tail call void @free(ptr noundef %i.j) #17
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !14
  tail call void @free(ptr noundef %i.l) #17
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !15
  tail call void @free(ptr noundef %i.n) #17
  tail call void @free(ptr noundef nonnull %i.a) #17
  br label %SparseMatrix_delete.exit6

SparseMatrix_delete.exit6:                        ; preds = %SparseMatrix_delete.exit, %bb.c
  ret ptr %i.h
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nofree nounwind uwtable
define ptr @SparseMatrix_transpose(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #2 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !13   ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !14   ; 4 uses
  %i.e = load i32, ptr %0, align 8, !tbaa !16     ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !17   ; 8 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !18   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.k = load i32, ptr %i.j, align 8, !tbaa !19
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !20   ; 2 uses
  switch i32 %i.i, label %bb.e [
    i32 1, label %SparseMatrix_new.exit
    i32 4, label %bb.c
    i32 8, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  br label %SparseMatrix_new.exit

bb.d:                                             ; preds = %bb.b
  br label %SparseMatrix_new.exit

bb.e:                                             ; preds = %bb.b
  %i.n = load ptr, ptr @stderr, align 8, !tbaa !22
  %i.o = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.n, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 40) #18 ; 0 uses
  tail call void @abort() #19
  unreachable

SparseMatrix_new.exit:                            ; preds = %bb.b, %bb.c, %bb.d
  %.0.i.i = phi i64 [ 0, %bb.d ], [ 4, %bb.c ], [ 8, %bb.b ]
  %i.p = tail call fastcc nonnull ptr @SparseMatrix_general_new(i32 noundef %i.g, i32 noundef %i.e, i64 noundef %i.m, i32 noundef %i.i, i64 noundef %.0.i.i, i32 noundef %i.k) ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i64 %i.m, ptr %i.q, align 8, !tbaa !20
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !13   ; 18 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !14   ; 3 uses
  %.not120132 = icmp slt i32 %i.g, 0
  br i1 %.not120132, label %.preheader128, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %SparseMatrix_new.exit
  %i.v = add nuw i32 %i.g, 1
  %i.w = zext i32 %i.v to i64
  %i.x = shl nuw nsw i64 %i.w, 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.s, i8 0, i64 %i.x, i1 false), !tbaa !23
  br label %.preheader128

.preheader128:                                    ; preds = %.lr.ph.preheader, %SparseMatrix_new.exit
  %i.y = icmp sgt i32 %i.e, 0                     ; 4 uses
  br i1 %i.y, label %.lr.ph137.preheader, label %.preheader126

.lr.ph137.preheader:                              ; preds = %.preheader128
  %wide.trip.count = zext nneg i32 %i.e to i64
  %.pre = load i32, ptr %i.b, align 4, !tbaa !23
  br label %.lr.ph137

.loopexit127:                                     ; preds = %.lr.ph135, %.lr.ph137
  %i.z = phi i32 [ %i.ae, %.lr.ph137 ], [ %i.ao, %.lr.ph135 ]
  %exitcond.not = icmp eq i64 %indvars.iv.next166, %wide.trip.count
  br i1 %exitcond.not, label %.preheader126, label %.lr.ph137, !llvm.loop !33

.preheader126:                                    ; preds = %.loopexit127, %.preheader128
  %i.aa = icmp sgt i32 %i.g, 0                    ; 2 uses
  br i1 %i.aa, label %.lr.ph139.preheader, label %._crit_edge

.lr.ph139.preheader:                              ; preds = %.preheader126
  %wide.trip.count171 = zext nneg i32 %i.g to i64 ; 2 uses
  %.pre200 = load i32, ptr %i.s, align 4, !tbaa !23 ; 2 uses
  %xtraiter = and i64 %wide.trip.count171, 3      ; 3 uses
  %i.ab = icmp ult i32 %i.g, 4
  br i1 %i.ab, label %.lr.ph139.epil.preheader, label %.lr.ph139.preheader.new

.lr.ph139.preheader.new:                          ; preds = %.lr.ph139.preheader
  %unroll_iter = and i64 %wide.trip.count171, 2147483644
  br label %.lr.ph139

.lr.ph137:                                        ; preds = %.lr.ph137.preheader, %.loopexit127
  %i.ac = phi i32 [ %.pre, %.lr.ph137.preheader ], [ %i.z, %.loopexit127 ] ; 2 uses
  %indvars.iv165 = phi i64 [ 0, %.lr.ph137.preheader ], [ %indvars.iv.next166, %.loopexit127 ]
  %indvars.iv.next166 = add nuw nsw i64 %indvars.iv165, 1 ; 3 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next166 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !23 ; 2 uses
  %i.af = icmp slt i32 %i.ac, %i.ae
  br i1 %i.af, label %.lr.ph135.preheader, label %.loopexit127

.lr.ph135.preheader:                              ; preds = %.lr.ph137
  %i.ag = sext i32 %i.ac to i64
  br label %.lr.ph135

.lr.ph135:                                        ; preds = %.lr.ph135.preheader, %.lr.ph135
  %indvars.iv = phi i64 [ %i.ag, %.lr.ph135.preheader ], [ %indvars.iv.next, %.lr.ph135 ] ; 2 uses
  %i.ah = getelementptr inbounds [4 x i8], ptr %i.d, i64 %indvars.iv
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !23
  %i.aj = sext i32 %i.ai to i64
  %i.ak = getelementptr [4 x i8], ptr %i.s, i64 %i.aj
  %i.al = getelementptr i8, ptr %i.ak, i64 4      ; 2 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !23
  %i.an = add nsw i32 %i.am, 1
  store i32 %i.an, ptr %i.al, align 4, !tbaa !23
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.ao = load i32, ptr %i.ad, align 4, !tbaa !23 ; 2 uses
  %i.ap = sext i32 %i.ao to i64
  %i.aq = icmp slt i64 %indvars.iv.next, %i.ap
  br i1 %i.aq, label %.lr.ph135, label %.loopexit127, !llvm.loop !34

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph139
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph139.epil.preheader

.lr.ph139.epil.preheader:                         ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph139.preheader
  %.epil.init = phi i32 [ %.pre200, %.lr.ph139.preheader ], [ %i.bl, %._crit_edge.loopexit.unr-lcssa ]
  %indvars.iv168.epil.init = phi i64 [ 0, %.lr.ph139.preheader ], [ %indvars.iv.next169.3, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod233 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod233)
  br label %.lr.ph139.epil

.lr.ph139.epil:                                   ; preds = %.lr.ph139.epil, %.lr.ph139.epil.preheader
  %i.ar = phi i32 [ %.epil.init, %.lr.ph139.epil.preheader ], [ %i.au, %.lr.ph139.epil ]
  %indvars.iv168.epil = phi i64 [ %indvars.iv168.epil.init, %.lr.ph139.epil.preheader ], [ %indvars.iv.next169.epil, %.lr.ph139.epil ]
  %epil.iter = phi i64 [ 0, %.lr.ph139.epil.preheader ], [ %epil.iter.next, %.lr.ph139.epil ]
  %indvars.iv.next169.epil = add nuw nsw i64 %indvars.iv168.epil, 1 ; 2 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv.next169.epil ; 2 uses
  %i.at = load i32, ptr %i.as, align 4, !tbaa !23
  %i.au = add nsw i32 %i.at, %i.ar                ; 2 uses
  store i32 %i.au, ptr %i.as, align 4, !tbaa !23
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph139.epil, !llvm.loop !35

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph139.epil, %.preheader126
  %i.av = load i32, ptr %i.h, align 8, !tbaa !18
  switch i32 %i.av, label %bb.h [
    i32 1, label %bb.f
    i32 4, label %bb.g
    i32 8, label %.preheader
  ]

.preheader:                                       ; preds = %._crit_edge
  br i1 %i.y, label %.lr.ph144.preheader, label %.loopexit121

.lr.ph144.preheader:                              ; preds = %.preheader
  %wide.trip.count179 = zext nneg i32 %i.e to i64
  %.pre201 = load i32, ptr %i.b, align 4, !tbaa !23
  br label %.lr.ph144

.lr.ph139:                                        ; preds = %.lr.ph139, %.lr.ph139.preheader.new
  %i.aw = phi i32 [ %.pre200, %.lr.ph139.preheader.new ], [ %i.bl, %.lr.ph139 ]
  %indvars.iv168 = phi i64 [ 0, %.lr.ph139.preheader.new ], [ %indvars.iv.next169.3, %.lr.ph139 ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph139.preheader.new ], [ %niter.next.3, %.lr.ph139 ]
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv168
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 4 ; 2 uses
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !23
  %i.ba = add nsw i32 %i.az, %i.aw                ; 2 uses
  store i32 %i.ba, ptr %i.ay, align 4, !tbaa !23
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv168
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8 ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !23
  %i.be = add nsw i32 %i.bd, %i.ba                ; 2 uses
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !23
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv168
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 12 ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !23
  %i.bi = add nsw i32 %i.bh, %i.be                ; 2 uses
  store i32 %i.bi, ptr %i.bg, align 4, !tbaa !23
  %indvars.iv.next169.3 = add nuw nsw i64 %indvars.iv168, 4 ; 3 uses
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv.next169.3 ; 2 uses
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !23
  %i.bl = add nsw i32 %i.bk, %i.bi                ; 3 uses
  store i32 %i.bl, ptr %i.bj, align 4, !tbaa !23
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph139, !llvm.loop !36

bb.f:                                             ; preds = %._crit_edge
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !15
  %i.bo = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !15
  br i1 %i.y, label %.lr.ph156.preheader, label %.loopexit121

.lr.ph156.preheader:                              ; preds = %bb.f
  %wide.trip.count195 = zext nneg i32 %i.e to i64
  %.pre203 = load i32, ptr %i.b, align 4, !tbaa !23
  br label %.lr.ph156

.loopexit:                                        ; preds = %.lr.ph153, %.lr.ph156
  %i.bq = phi i32 [ %i.bt, %.lr.ph156 ], [ %i.cn, %.lr.ph153 ]
  %exitcond196.not = icmp eq i64 %indvars.iv.next193, %wide.trip.count195
  br i1 %exitcond196.not, label %.loopexit121, label %.lr.ph156, !llvm.loop !37

.lr.ph156:                                        ; preds = %.lr.ph156.preheader, %.loopexit
  %i.br = phi i32 [ %.pre203, %.lr.ph156.preheader ], [ %i.bq, %.loopexit ] ; 2 uses
  %indvars.iv192 = phi i64 [ 0, %.lr.ph156.preheader ], [ %indvars.iv.next193, %.loopexit ] ; 2 uses
  %indvars.iv.next193 = add nuw nsw i64 %indvars.iv192, 1 ; 3 uses
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next193 ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !23 ; 2 uses
  %i.bu = icmp slt i32 %i.br, %i.bt
  br i1 %i.bu, label %.lr.ph153.preheader, label %.loopexit

.lr.ph153.preheader:                              ; preds = %.lr.ph156
  %i.bv = sext i32 %i.br to i64
  %i.bw = trunc nuw nsw i64 %indvars.iv192 to i32
  br label %.lr.ph153

.lr.ph153:                                        ; preds = %.lr.ph153.preheader, %.lr.ph153
  %indvars.iv189 = phi i64 [ %i.bv, %.lr.ph153.preheader ], [ %indvars.iv.next190, %.lr.ph153 ] ; 3 uses
  %i.bx = getelementptr inbounds [4 x i8], ptr %i.d, i64 %indvars.iv189 ; 2 uses
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !23
  %i.bz = sext i32 %i.by to i64
  %i.ca = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.bz
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !23
  %i.cc = sext i32 %i.cb to i64
  %i.cd = getelementptr inbounds [4 x i8], ptr %i.u, i64 %i.cc
  store i32 %i.bw, ptr %i.cd, align 4, !tbaa !23
  %i.ce = getelementptr inbounds [8 x i8], ptr %i.bn, i64 %indvars.iv189
  %i.cf = load double, ptr %i.ce, align 8, !tbaa !27
  %i.cg = load i32, ptr %i.bx, align 4, !tbaa !23
  %i.ch = sext i32 %i.cg to i64
  %i.ci = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.ch ; 2 uses
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !23 ; 2 uses
  %i.ck = add nsw i32 %i.cj, 1
  store i32 %i.ck, ptr %i.ci, align 4, !tbaa !23
  %i.cl = sext i32 %i.cj to i64
  %i.cm = getelementptr inbounds [8 x i8], ptr %i.bp, i64 %i.cl
  store double %i.cf, ptr %i.cm, align 8, !tbaa !27
  %indvars.iv.next190 = add nsw i64 %indvars.iv189, 1 ; 2 uses
  %i.cn = load i32, ptr %i.bs, align 4, !tbaa !23 ; 2 uses
  %i.co = sext i32 %i.cn to i64
  %i.cp = icmp slt i64 %indvars.iv.next190, %i.co
  br i1 %i.cp, label %.lr.ph153, label %.loopexit, !llvm.loop !38

bb.g:                                             ; preds = %._crit_edge
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !15
  %i.cs = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !15
  br i1 %i.y, label %.lr.ph150.preheader, label %.loopexit121

.lr.ph150.preheader:                              ; preds = %bb.g
  %wide.trip.count187 = zext nneg i32 %i.e to i64
  %.pre202 = load i32, ptr %i.b, align 4, !tbaa !23
  br label %.lr.ph150

.loopexit122:                                     ; preds = %.lr.ph147, %.lr.ph150
  %i.cu = phi i32 [ %i.cx, %.lr.ph150 ], [ %i.dr, %.lr.ph147 ]
  %exitcond188.not = icmp eq i64 %indvars.iv.next185, %wide.trip.count187
  br i1 %exitcond188.not, label %.loopexit121, label %.lr.ph150, !llvm.loop !39

.lr.ph150:                                        ; preds = %.lr.ph150.preheader, %.loopexit122
  %i.cv = phi i32 [ %.pre202, %.lr.ph150.preheader ], [ %i.cu, %.loopexit122 ] ; 2 uses
  %indvars.iv184 = phi i64 [ 0, %.lr.ph150.preheader ], [ %indvars.iv.next185, %.loopexit122 ] ; 2 uses
  %indvars.iv.next185 = add nuw nsw i64 %indvars.iv184, 1 ; 3 uses
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next185 ; 2 uses
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !23 ; 2 uses
  %i.cy = icmp slt i32 %i.cv, %i.cx
  br i1 %i.cy, label %.lr.ph147.preheader, label %.loopexit122

.lr.ph147.preheader:                              ; preds = %.lr.ph150
  %i.cz = sext i32 %i.cv to i64
  %i.da = trunc nuw nsw i64 %indvars.iv184 to i32
  br label %.lr.ph147

.lr.ph147:                                        ; preds = %.lr.ph147.preheader, %.lr.ph147
  %indvars.iv181 = phi i64 [ %i.cz, %.lr.ph147.preheader ], [ %indvars.iv.next182, %.lr.ph147 ] ; 3 uses
  %i.db = getelementptr inbounds [4 x i8], ptr %i.d, i64 %indvars.iv181 ; 2 uses
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !23
  %i.dd = sext i32 %i.dc to i64
  %i.de = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.dd
  %i.df = load i32, ptr %i.de, align 4, !tbaa !23
  %i.dg = sext i32 %i.df to i64
  %i.dh = getelementptr inbounds [4 x i8], ptr %i.u, i64 %i.dg
  store i32 %i.da, ptr %i.dh, align 4, !tbaa !23
  %i.di = getelementptr inbounds [4 x i8], ptr %i.cr, i64 %indvars.iv181
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !23
  %i.dk = load i32, ptr %i.db, align 4, !tbaa !23
  %i.dl = sext i32 %i.dk to i64
  %i.dm = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.dl ; 2 uses
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !23 ; 2 uses
  %i.do = add nsw i32 %i.dn, 1
  store i32 %i.do, ptr %i.dm, align 4, !tbaa !23
  %i.dp = sext i32 %i.dn to i64
  %i.dq = getelementptr inbounds [4 x i8], ptr %i.ct, i64 %i.dp
  store i32 %i.dj, ptr %i.dq, align 4, !tbaa !23
  %indvars.iv.next182 = add nsw i64 %indvars.iv181, 1 ; 2 uses
  %i.dr = load i32, ptr %i.cw, align 4, !tbaa !23 ; 2 uses
  %i.ds = sext i32 %i.dr to i64
  %i.dt = icmp slt i64 %indvars.iv.next182, %i.ds
  br i1 %i.dt, label %.lr.ph147, label %.loopexit122, !llvm.loop !40

.loopexit124:                                     ; preds = %.lr.ph142, %.lr.ph144
  %i.du = phi i32 [ %i.dx, %.lr.ph144 ], [ %i.ej, %.lr.ph142 ]
  %exitcond180.not = icmp eq i64 %indvars.iv.next177, %wide.trip.count179
  br i1 %exitcond180.not, label %.loopexit121, label %.lr.ph144, !llvm.loop !41

.lr.ph144:                                        ; preds = %.lr.ph144.preheader, %.loopexit124
  %i.dv = phi i32 [ %.pre201, %.lr.ph144.preheader ], [ %i.du, %.loopexit124 ] ; 2 uses
  %indvars.iv176 = phi i64 [ 0, %.lr.ph144.preheader ], [ %indvars.iv.next177, %.loopexit124 ] ; 2 uses
  %indvars.iv.next177 = add nuw nsw i64 %indvars.iv176, 1 ; 3 uses
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next177 ; 2 uses
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !23 ; 2 uses
  %i.dy = icmp slt i32 %i.dv, %i.dx
  br i1 %i.dy, label %.lr.ph142.preheader, label %.loopexit124

.lr.ph142.preheader:                              ; preds = %.lr.ph144
  %i.dz = sext i32 %i.dv to i64
  %i.ea = trunc nuw nsw i64 %indvars.iv176 to i32
  br label %.lr.ph142

.lr.ph142:                                        ; preds = %.lr.ph142.preheader, %.lr.ph142
  %indvars.iv173 = phi i64 [ %i.dz, %.lr.ph142.preheader ], [ %indvars.iv.next174, %.lr.ph142 ] ; 2 uses
  %i.eb = getelementptr inbounds [4 x i8], ptr %i.d, i64 %indvars.iv173
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !23
  %i.ed = sext i32 %i.ec to i64
  %i.ee = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.ed ; 2 uses
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !23 ; 2 uses
  %i.eg = add nsw i32 %i.ef, 1
  store i32 %i.eg, ptr %i.ee, align 4, !tbaa !23
  %i.eh = sext i32 %i.ef to i64
  %i.ei = getelementptr inbounds [4 x i8], ptr %i.u, i64 %i.eh
  store i32 %i.ea, ptr %i.ei, align 4, !tbaa !23
  %indvars.iv.next174 = add nsw i64 %indvars.iv173, 1 ; 2 uses
  %i.ej = load i32, ptr %i.dw, align 4, !tbaa !23 ; 2 uses
  %i.ek = sext i32 %i.ej to i64
  %i.el = icmp slt i64 %indvars.iv.next174, %i.ek
  br i1 %i.el, label %.lr.ph142, label %.loopexit124, !llvm.loop !42

bb.h:                                             ; preds = %._crit_edge
  %i.em = load ptr, ptr @stderr, align 8, !tbaa !22
  %i.en = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.em, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 116) #18 ; 0 uses
  tail call void @abort() #19
  unreachable

.loopexit121:                                     ; preds = %.loopexit124, %.loopexit122, %.loopexit, %.preheader, %bb.g, %bb.f
  br i1 %i.aa, label %.lr.ph159.preheader, label %._crit_edge160

.lr.ph159.preheader:                              ; preds = %.loopexit121
  %i.eo = zext nneg i32 %i.g to i64               ; 5 uses
  %min.iters.check = icmp ult i32 %i.g, 8
  br i1 %min.iters.check, label %.lr.ph159.preheader227, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph159.preheader
  %n.vec = and i64 %i.eo, 2147483640              ; 2 uses
  %i.ep = and i64 %i.eo, 7
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.eq = sub i64 %i.eo, %index                   ; 2 uses
  %i.er = getelementptr [4 x i8], ptr %i.s, i64 %i.eq ; 2 uses
  %i.es = getelementptr i8, ptr %i.er, i64 -16
  %i.et = getelementptr i8, ptr %i.er, i64 -32
  %wide.load = load <4 x i32>, ptr %i.es, align 4, !tbaa !23
  %wide.load226 = load <4 x i32>, ptr %i.et, align 4, !tbaa !23
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.eq ; 2 uses
  %i.ev = getelementptr inbounds i8, ptr %i.eu, i64 -12
  %i.ew = getelementptr inbounds i8, ptr %i.eu, i64 -28
  store <4 x i32> %wide.load, ptr %i.ev, align 4, !tbaa !23
  store <4 x i32> %wide.load226, ptr %i.ew, align 4, !tbaa !23
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ex = icmp eq i64 %index.next, %n.vec
  br i1 %i.ex, label %middle.block, label %vector.body, !llvm.loop !43

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.eo
  br i1 %cmp.n, label %._crit_edge160, label %.lr.ph159.preheader227

.lr.ph159.preheader227:                           ; preds = %.lr.ph159.preheader, %middle.block
  %indvars.iv197.ph = phi i64 [ %i.eo, %.lr.ph159.preheader ], [ %i.ep, %middle.block ]
  br label %.lr.ph159

._crit_edge160:                                   ; preds = %.lr.ph159, %middle.block, %.loopexit121
  store i32 0, ptr %i.s, align 4, !tbaa !23
  br label %bb.i

.lr.ph159:                                        ; preds = %.lr.ph159.preheader227, %.lr.ph159
  %indvars.iv197 = phi i64 [ %indvars.iv.next198, %.lr.ph159 ], [ %indvars.iv197.ph, %.lr.ph159.preheader227 ] ; 3 uses
  %indvars.iv.next198 = add nsw i64 %indvars.iv197, -1 ; 2 uses
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv.next198
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !23
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv197
  store i32 %i.ez, ptr %i.fa, align 4, !tbaa !23
  %i.fb = icmp samesign ugt i64 %indvars.iv197, 1
  br i1 %i.fb, label %.lr.ph159, label %._crit_edge160, !llvm.loop !44

bb.i:                                             ; preds = %bb.a, %._crit_edge160
  %.0116 = phi ptr [ %i.p, %._crit_edge160 ], [ null, %bb.a ]
  ret ptr %.0116
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define void @SparseMatrix_delete(ptr noundef captures(address_is_null) %0) local_unnamed_addr #3 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !13
  tail call void @free(ptr noundef %i.b) #17
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !14
  tail call void @free(ptr noundef %i.d) #17
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !15
  tail call void @free(ptr noundef %i.f) #17
  tail call void @free(ptr noundef nonnull %0) #17
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define noundef ptr @SparseMatrix_make_undirected(ptr nofree noundef captures(address_is_null) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @SparseMatrix_symmetrize(ptr noundef %0, i1 noundef zeroext false) ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 60 ; 2 uses
  %i.c = load i8, ptr %i.b, align 4
  %i.d = or i8 %i.c, 4
  store i8 %i.d, ptr %i.b, align 4
  %i.e = tail call ptr @SparseMatrix_remove_upper(ptr noundef %i.a) ; 0 uses
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define ptr @SparseMatrix_symmetrize(ptr nofree noundef captures(address_is_null) %0, i1 noundef zeroext %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call zeroext i1 @SparseMatrix_is_symmetric(ptr noundef %0, i1 noundef zeroext %1)
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %2 = tail call ptr @SparseMatrix_copy(ptr noundef %0)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.b = tail call ptr @SparseMatrix_transpose(ptr noundef %0) ; 6 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.d, label %SparseMatrix_delete.exit

SparseMatrix_delete.exit:                         ; preds = %bb.c
  %i.c = tail call ptr @SparseMatrix_add(ptr noundef %0, ptr noundef nonnull %i.b) ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !13
  tail call void @free(ptr noundef %i.e) #17
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !14
  tail call void @free(ptr noundef %i.g) #17
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !15
  tail call void @free(ptr noundef %i.i) #17
  tail call void @free(ptr noundef nonnull %i.b) #17
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 60 ; 2 uses
  %i.k = load i8, ptr %i.j, align 4
  %i.l = or i8 %i.k, 3
  store i8 %i.l, ptr %i.j, align 4
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %SparseMatrix_delete.exit, %bb.b
  %.0 = phi ptr [ %2, %bb.b ], [ %i.c, %SparseMatrix_delete.exit ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: nofree nounwind uwtable
define noundef ptr @SparseMatrix_remove_upper(ptr nofree noundef returned captures(address_is_null, ret: address, provenance) %0) local_unnamed_addr #2 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !13   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !14   ; 6 uses
  %i.e = load i32, ptr %i.b, align 4, !tbaa !23   ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load i32, ptr %i.f, align 8, !tbaa !18
  switch i32 %i.g, label %bb.k [
    i32 1, label %bb.c
    i32 4, label %bb.f
    i32 8, label %.preheader104
  ]

.preheader104:                                    ; preds = %bb.b
  %i.h = load i32, ptr %0, align 8, !tbaa !16
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %.preheader103, label %._crit_edge149

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !15   ; 2 uses
  %i.l = load i32, ptr %0, align 8, !tbaa !16
  %i.m = icmp sgt i32 %i.l, 0
  br i1 %i.m, label %.preheader, label %._crit_edge149

.preheader:                                       ; preds = %bb.c, %._crit_edge141
  %indvars.iv167 = phi i64 [ %indvars.iv.next168, %._crit_edge141 ], [ 0, %bb.c ] ; 2 uses
  %.0148 = phi i64 [ %.1.lcssa, %._crit_edge141 ], [ 0, %bb.c ] ; 2 uses
  %.085147 = phi i32 [ %.lcssa, %._crit_edge141 ], [ %i.e, %bb.c ] ; 2 uses
  %indvars.iv.next168 = add nuw nsw i64 %indvars.iv167, 1 ; 3 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next168 ; 3 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !23   ; 3 uses
  %i.p = icmp slt i32 %.085147, %i.o
  br i1 %i.p, label %.lr.ph140.preheader, label %._crit_edge141

.lr.ph140.preheader:                              ; preds = %.preheader
  %i.q = sext i32 %.085147 to i64
  br label %.lr.ph140

.lr.ph140:                                        ; preds = %.lr.ph140.preheader, %bb.e
  %i.r = phi i32 [ %i.o, %.lr.ph140.preheader ], [ %i.ab, %bb.e ]
  %indvars.iv164 = phi i64 [ %i.q, %.lr.ph140.preheader ], [ %indvars.iv.next165, %bb.e ] ; 3 uses
  %.1139 = phi i64 [ %.0148, %.lr.ph140.preheader ], [ %.2, %bb.e ] ; 4 uses
  %i.s = getelementptr inbounds [4 x i8], ptr %i.d, i64 %indvars.iv164
  %i.t = load i32, ptr %i.s, align 4, !tbaa !23   ; 2 uses
  %i.u = sext i32 %i.t to i64
  %i.v = icmp sgt i64 %indvars.iv167, %i.u
  br i1 %i.v, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph140
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %.1139
  store i32 %i.t, ptr %i.w, align 4, !tbaa !23
  %i.x = getelementptr inbounds [8 x i8], ptr %i.k, i64 %indvars.iv164
  %i.y = load double, ptr %i.x, align 8, !tbaa !27
  %i.z = add i64 %.1139, 1
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %.1139
  store double %i.y, ptr %i.aa, align 8, !tbaa !27
  %.pre171 = load i32, ptr %i.n, align 4, !tbaa !23
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph140, %bb.d
  %i.ab = phi i32 [ %.pre171, %bb.d ], [ %i.r, %.lr.ph140 ] ; 3 uses
  %.2 = phi i64 [ %i.z, %bb.d ], [ %.1139, %.lr.ph140 ] ; 2 uses
  %indvars.iv.next165 = add nsw i64 %indvars.iv164, 1 ; 2 uses
  %i.ac = sext i32 %i.ab to i64
  %i.ad = icmp slt i64 %indvars.iv.next165, %i.ac
  br i1 %i.ad, label %.lr.ph140, label %._crit_edge141, !llvm.loop !45

._crit_edge141:                                   ; preds = %bb.e, %.preheader
  %.1.lcssa = phi i64 [ %.0148, %.preheader ], [ %.2, %bb.e ] ; 3 uses
  %.lcssa = phi i32 [ %i.o, %.preheader ], [ %i.ab, %bb.e ]
  %i.ae = trunc i64 %.1.lcssa to i32
  store i32 %i.ae, ptr %i.n, align 4, !tbaa !23
  %i.af = load i32, ptr %0, align 8, !tbaa !16
  %i.ag = sext i32 %i.af to i64
  %i.ah = icmp slt i64 %indvars.iv.next168, %i.ag
  br i1 %i.ah, label %.preheader, label %._crit_edge149, !llvm.loop !46

bb.f:                                             ; preds = %bb.b
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !15 ; 2 uses
  %i.ak = load i32, ptr %0, align 8, !tbaa !16
  %i.al = icmp sgt i32 %i.ak, 0
  br i1 %i.al, label %.preheader102, label %._crit_edge149

.preheader102:                                    ; preds = %bb.f, %._crit_edge127
  %indvars.iv161 = phi i64 [ %indvars.iv.next162, %._crit_edge127 ], [ 0, %bb.f ] ; 2 uses
  %.3134 = phi i64 [ %.4.lcssa, %._crit_edge127 ], [ 0, %bb.f ] ; 2 uses
  %.186133 = phi i32 [ %.lcssa107, %._crit_edge127 ], [ %i.e, %bb.f ] ; 2 uses
  %indvars.iv.next162 = add nuw nsw i64 %indvars.iv161, 1 ; 3 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next162 ; 3 uses
  %i.an = load i32, ptr %i.am, align 4, !tbaa !23 ; 3 uses
  %i.ao = icmp slt i32 %.186133, %i.an
  br i1 %i.ao, label %.lr.ph126.preheader, label %._crit_edge127

.lr.ph126.preheader:                              ; preds = %.preheader102
  %i.ap = sext i32 %.186133 to i64
  br label %.lr.ph126

.lr.ph126:                                        ; preds = %.lr.ph126.preheader, %bb.h
  %i.aq = phi i32 [ %i.an, %.lr.ph126.preheader ], [ %i.ba, %bb.h ]
  %indvars.iv158 = phi i64 [ %i.ap, %.lr.ph126.preheader ], [ %indvars.iv.next159, %bb.h ] ; 3 uses
  %.4125 = phi i64 [ %.3134, %.lr.ph126.preheader ], [ %.5, %bb.h ] ; 4 uses
  %i.ar = getelementptr inbounds [4 x i8], ptr %i.d, i64 %indvars.iv158
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !23 ; 2 uses
  %i.at = sext i32 %i.as to i64
  %i.au = icmp sgt i64 %indvars.iv161, %i.at
  br i1 %i.au, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph126
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %.4125
  store i32 %i.as, ptr %i.av, align 4, !tbaa !23
  %i.aw = getelementptr inbounds [4 x i8], ptr %i.aj, i64 %indvars.iv158
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !23
  %i.ay = add i64 %.4125, 1
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %.4125
  store i32 %i.ax, ptr %i.az, align 4, !tbaa !23
  %.pre170 = load i32, ptr %i.am, align 4, !tbaa !23
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph126, %bb.g
  %i.ba = phi i32 [ %.pre170, %bb.g ], [ %i.aq, %.lr.ph126 ] ; 3 uses
  %.5 = phi i64 [ %i.ay, %bb.g ], [ %.4125, %.lr.ph126 ] ; 2 uses
  %indvars.iv.next159 = add nsw i64 %indvars.iv158, 1 ; 2 uses
  %i.bb = sext i32 %i.ba to i64
  %i.bc = icmp slt i64 %indvars.iv.next159, %i.bb
  br i1 %i.bc, label %.lr.ph126, label %._crit_edge127, !llvm.loop !47

._crit_edge127:                                   ; preds = %bb.h, %.preheader102
  %.4.lcssa = phi i64 [ %.3134, %.preheader102 ], [ %.5, %bb.h ] ; 3 uses
  %.lcssa107 = phi i32 [ %i.an, %.preheader102 ], [ %i.ba, %bb.h ]
  %i.bd = trunc i64 %.4.lcssa to i32
  store i32 %i.bd, ptr %i.am, align 4, !tbaa !23
  %i.be = load i32, ptr %0, align 8, !tbaa !16
  %i.bf = sext i32 %i.be to i64
  %i.bg = icmp slt i64 %indvars.iv.next162, %i.bf
  br i1 %i.bg, label %.preheader102, label %._crit_edge149, !llvm.loop !48

.preheader103:                                    ; preds = %.preheader104, %._crit_edge
  %indvars.iv155 = phi i64 [ %indvars.iv.next156, %._crit_edge ], [ 0, %.preheader104 ] ; 2 uses
  %.6121 = phi i64 [ %.7.lcssa, %._crit_edge ], [ 0, %.preheader104 ] ; 2 uses
  %.287120 = phi i32 [ %.lcssa110, %._crit_edge ], [ %i.e, %.preheader104 ] ; 2 uses
  %indvars.iv.next156 = add nuw nsw i64 %indvars.iv155, 1 ; 3 uses
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next156 ; 3 uses
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !23 ; 3 uses
  %i.bj = icmp slt i32 %.287120, %i.bi
  br i1 %i.bj, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader103
  %i.bk = sext i32 %.287120 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.j
  %i.bl = phi i32 [ %i.bi, %.lr.ph.preheader ], [ %i.bs, %bb.j ]
  %indvars.iv = phi i64 [ %i.bk, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.j ] ; 2 uses
  %.7115 = phi i64 [ %.6121, %.lr.ph.preheader ], [ %.8, %bb.j ] ; 3 uses
  %i.bm = getelementptr inbounds [4 x i8], ptr %i.d, i64 %indvars.iv
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !23 ; 2 uses
  %i.bo = sext i32 %i.bn to i64
  %i.bp = icmp sgt i64 %indvars.iv155, %i.bo
  br i1 %i.bp, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.lr.ph
  %i.bq = add i64 %.7115, 1
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %.7115
  store i32 %i.bn, ptr %i.br, align 4, !tbaa !23
  %.pre = load i32, ptr %i.bh, align 4, !tbaa !23
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph, %bb.i
  %i.bs = phi i32 [ %.pre, %bb.i ], [ %i.bl, %.lr.ph ] ; 3 uses
  %.8 = phi i64 [ %i.bq, %bb.i ], [ %.7115, %.lr.ph ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.bt = sext i32 %i.bs to i64
  %i.bu = icmp slt i64 %indvars.iv.next, %i.bt
  br i1 %i.bu, label %.lr.ph, label %._crit_edge, !llvm.loop !49

._crit_edge:                                      ; preds = %bb.j, %.preheader103
  %.7.lcssa = phi i64 [ %.6121, %.preheader103 ], [ %.8, %bb.j ] ; 3 uses
  %.lcssa110 = phi i32 [ %i.bi, %.preheader103 ], [ %i.bs, %bb.j ]
  %i.bv = trunc i64 %.7.lcssa to i32
  store i32 %i.bv, ptr %i.bh, align 4, !tbaa !23
  %i.bw = load i32, ptr %0, align 8, !tbaa !16
  %i.bx = sext i32 %i.bw to i64
  %i.by = icmp slt i64 %indvars.iv.next156, %i.bx
  br i1 %i.by, label %.preheader103, label %._crit_edge149, !llvm.loop !50

bb.k:                                             ; preds = %bb.b
  %i.bz = load ptr, ptr @stderr, align 8, !tbaa !22
  %i.ca = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bz, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 1119) #18 ; 0 uses
  tail call void @abort() #19
  unreachable

._crit_edge149:                                   ; preds = %._crit_edge, %._crit_edge127, %._crit_edge141, %.preheader104, %bb.f, %bb.c
  %.6.lcssa.sink = phi i64 [ %.4.lcssa, %._crit_edge127 ], [ %.1.lcssa, %._crit_edge141 ], [ 0, %bb.c ], [ 0, %bb.f ], [ 0, %.preheader104 ], [ %.7.lcssa, %._crit_edge ]
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.6.lcssa.sink, ptr %i.cb, align 8, !tbaa !20
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.cd = load i8, ptr %i.cc, align 4
  %i.ce = and i8 %i.cd, -4
  store i8 %i.ce, ptr %i.cc, align 4
  br label %bb.l

bb.l:                                             ; preds = %bb.a, %._crit_edge149
  ret ptr %0
}

; Function Attrs: nofree nounwind uwtable
define nonnull ptr @SparseMatrix_new(i32 noundef %0, i32 noundef %1, i64 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #2 {
bb.a:
  switch i32 %3, label %bb.d [
    i32 1, label %size_of_matrix_type.exit
    i32 4, label %bb.b
    i32 8, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  br label %size_of_matrix_type.exit

bb.c:                                             ; preds = %bb.a
  br label %size_of_matrix_type.exit

bb.d:                                             ; preds = %bb.a
  %i.a = load ptr, ptr @stderr, align 8, !tbaa !22
  %i.b = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.a, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 40) #18 ; 0 uses
  tail call void @abort() #19
  unreachable

size_of_matrix_type.exit:                         ; preds = %bb.a, %bb.b, %bb.c
  %.0.i = phi i64 [ 0, %bb.c ], [ 4, %bb.b ], [ 8, %bb.a ]
  %i.c = tail call fastcc ptr @SparseMatrix_general_new(i32 noundef %0, i32 noundef %1, i64 noundef %2, i32 noundef %3, i64 noundef %.0.i, i32 noundef %4)
  ret ptr %i.c
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #4

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define noundef zeroext i1 @SparseMatrix_is_symmetric(ptr nofree noundef captures(address_is_null) %0, i1 noundef zeroext %1) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.r, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 3 uses
  %i.b = load i8, ptr %i.a, align 4               ; 2 uses
  %i.c = and i8 %i.b, 2
  %.not153 = icmp ne i8 %i.c, 0
  %i.d = trunc i8 %i.b to i1
  %or.cond = and i1 %1, %i.d
  %or.cond160 = or i1 %.not153, %or.cond
  br i1 %or.cond160, label %bb.r, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load i32, ptr %0, align 8, !tbaa !16
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !17
  %.not154 = icmp eq i32 %i.e, %i.g
  br i1 %.not154, label %bb.d, label %bb.r

bb.d:                                             ; preds = %bb.c
  %i.h = tail call ptr @SparseMatrix_transpose(ptr noundef nonnull %0) ; 7 uses
  %.not155 = icmp eq ptr %i.h, null
  br i1 %.not155, label %bb.r, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !13   ; 7 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !14   ; 15 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 32 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !13   ; 13 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 40 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !14   ; 5 uses
  %i.q = load i32, ptr %0, align 8, !tbaa !16     ; 8 uses
  %i.r = sext i32 %i.q to i64                     ; 4 uses
  %.not168.not = icmp eq i32 %i.q, 0              ; 4 uses
  br i1 %.not168.not, label %gv_calloc.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %mul.ov.i = icmp slt i32 %i.q, 0
  br i1 %mul.ov.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.s = load ptr, ptr @stderr, align 8, !tbaa !22
  %i.t = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.s, ptr noundef nonnull @.str.3, i64 noundef %i.r, i64 noundef 4) #18 ; 0 uses
  tail call fastcc void @graphviz_exit() #20
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.u = tail call noalias ptr @calloc(i64 noundef %i.r, i64 noundef 4) #21 ; 3 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.i, label %.lr.ph.preheader

bb.i:                                             ; preds = %bb.h
  %i.w = load ptr, ptr @stderr, align 8, !tbaa !22
  %i.x = shl nuw nsw i64 %i.r, 2
  %i.y = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.w, ptr noundef nonnull @.str.4, i64 noundef %i.x) #18 ; 0 uses
  tail call fastcc void @graphviz_exit() #20
  unreachable

gv_calloc.exit:                                   ; preds = %bb.e
  %i.z = tail call noalias ptr @calloc(i64 noundef %i.r, i64 noundef 4) #21
  br label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.h
  %i.aa = zext nneg i32 %i.q to i64
  %i.ab = shl nuw nsw i64 %i.aa, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.u, i8 -1, i64 %i.ab, i1 false), !tbaa !23
  br label %._crit_edge

._crit_edge:                                      ; preds = %gv_calloc.exit, %.lr.ph.preheader
  %i.ac = phi ptr [ %i.u, %.lr.ph.preheader ], [ %i.z, %gv_calloc.exit ] ; 21 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !18
  %spec.store.select = select i1 %1, i32 8, i32 %i.ae
  switch i32 %spec.store.select, label %bb.q [
    i32 1, label %.lr.ph221.preheader
    i32 4, label %bb.m
    i32 8, label %.preheader181
  ]

.preheader181:                                    ; preds = %._crit_edge
  br i1 %.not168.not, label %.loopexit172, label %.lr.ph202.preheader

.lr.ph202.preheader:                              ; preds = %.preheader181
  %wide.trip.count251 = zext nneg i32 %i.q to i64
  %.pre = load i32, ptr %i.j, align 4, !tbaa !23
  br label %.lr.ph202

.lr.ph221.preheader:                              ; preds = %._crit_edge
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !15
  %i.ah = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !15
  %i.aj = add nuw i32 %i.q, 1
  %wide.trip.count276 = zext i32 %i.aj to i64
  br label %.lr.ph221

bb.j:                                             ; preds = %.lr.ph221
  %indvars.iv.next274 = add nuw nsw i64 %indvars.iv273, 1 ; 2 uses
  %exitcond277.not = icmp eq i64 %indvars.iv.next274, %wide.trip.count276
  br i1 %exitcond277.not, label %.preheader171, label %.lr.ph221, !llvm.loop !51

.preheader171:                                    ; preds = %bb.j
  br i1 %.not168.not, label %.loopexit172, label %.lr.ph234.preheader

.lr.ph234.preheader:                              ; preds = %.preheader171
  %wide.trip.count296 = zext nneg i32 %i.q to i64
  %.pre299 = load i32, ptr %i.j, align 4, !tbaa !23
  br label %.lr.ph234

.lr.ph221:                                        ; preds = %.lr.ph221.preheader, %bb.j
  %indvars.iv273 = phi i64 [ 0, %.lr.ph221.preheader ], [ %indvars.iv.next274, %bb.j ] ; 3 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv273
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !23
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv273
  %i.an = load i32, ptr %i.am, align 4, !tbaa !23
  %.not158 = icmp eq i32 %i.al, %i.an
  br i1 %.not158, label %bb.j, label %SparseMatrix_delete.exit

.loopexit:                                        ; preds = %bb.l, %._crit_edge225
  %exitcond297.not = icmp eq i64 %indvars.iv.next294, %wide.trip.count296
  br i1 %exitcond297.not, label %.loopexit172, label %.lr.ph234, !llvm.loop !52

.lr.ph234:                                        ; preds = %.lr.ph234.preheader, %.loopexit
  %i.ao = phi i32 [ %.pre299, %.lr.ph234.preheader ], [ %i.aq, %.loopexit ] ; 3 uses
  %indvars.iv293 = phi i64 [ 0, %.lr.ph234.preheader ], [ %indvars.iv.next294, %.loopexit ] ; 2 uses
  %indvars.iv.next294 = add nuw nsw i64 %indvars.iv293, 1 ; 4 uses
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.next294
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !23 ; 3 uses
  %i.ar = icmp slt i32 %i.ao, %i.aq
  br i1 %i.ar, label %.lr.ph224.preheader, label %._crit_edge225

.lr.ph224.preheader:                              ; preds = %.lr.ph234
  %i.as = sext i32 %i.ao to i64                   ; 4 uses
  %wide.trip.count281 = sext i32 %i.aq to i64     ; 3 uses
  %i.at = sub nsw i64 %wide.trip.count281, %i.as
  %xtraiter345 = and i64 %i.at, 3                 ; 2 uses
  %lcmp.mod346.not = icmp eq i64 %xtraiter345, 0
  br i1 %lcmp.mod346.not, label %.lr.ph224.prol.loopexit, label %.lr.ph224.prol

.lr.ph224.prol:                                   ; preds = %.lr.ph224.preheader, %.lr.ph224.prol
  %indvars.iv278.prol = phi i64 [ %indvars.iv.next279.prol, %.lr.ph224.prol ], [ %i.as, %.lr.ph224.preheader ] ; 3 uses
  %prol.iter347 = phi i64 [ %prol.iter347.next, %.lr.ph224.prol ], [ 0, %.lr.ph224.preheader ]
  %i.au = getelementptr inbounds [4 x i8], ptr %i.l, i64 %indvars.iv278.prol
  %i.av = load i32, ptr %i.au, align 4, !tbaa !23
  %i.aw = sext i32 %i.av to i64
  %i.ax = getelementptr inbounds [4 x i8], ptr %i.ac, i64 %i.aw
  %i.ay = trunc nsw i64 %indvars.iv278.prol to i32
  store i32 %i.ay, ptr %i.ax, align 4, !tbaa !23
  %indvars.iv.next279.prol = add nsw i64 %indvars.iv278.prol, 1 ; 2 uses
  %prol.iter347.next = add i64 %prol.iter347, 1   ; 2 uses
  %prol.iter347.cmp.not = icmp eq i64 %prol.iter347.next, %xtraiter345
  br i1 %prol.iter347.cmp.not, label %.lr.ph224.prol.loopexit, label %.lr.ph224.prol, !llvm.loop !53

.lr.ph224.prol.loopexit:                          ; preds = %.lr.ph224.prol, %.lr.ph224.preheader
  %indvars.iv278.unr = phi i64 [ %i.as, %.lr.ph224.preheader ], [ %indvars.iv.next279.prol, %.lr.ph224.prol ]
  %i.az = sub nsw i64 %i.as, %wide.trip.count281
  %i.ba = icmp ugt i64 %i.az, -4
  br i1 %i.ba, label %._crit_edge225, label %.lr.ph224

.lr.ph224:                                        ; preds = %.lr.ph224.prol.loopexit, %.lr.ph224
  %indvars.iv278 = phi i64 [ %indvars.iv.next279.3, %.lr.ph224 ], [ %indvars.iv278.unr, %.lr.ph224.prol.loopexit ] ; 6 uses
  %i.bb = getelementptr inbounds [4 x i8], ptr %i.l, i64 %indvars.iv278
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !23
  %i.bd = sext i32 %i.bc to i64
  %i.be = getelementptr inbounds [4 x i8], ptr %i.ac, i64 %i.bd
  %i.bf = trunc nsw i64 %indvars.iv278 to i32
  store i32 %i.bf, ptr %i.be, align 4, !tbaa !23
  %indvars.iv.next279 = add nsw i64 %indvars.iv278, 1 ; 2 uses
  %i.bg = getelementptr inbounds [4 x i8], ptr %i.l, i64 %indvars.iv.next279
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !23
  %i.bi = sext i32 %i.bh to i64
  %i.bj = getelementptr inbounds [4 x i8], ptr %i.ac, i64 %i.bi
  %i.bk = trunc nsw i64 %indvars.iv.next279 to i32
  store i32 %i.bk, ptr %i.bj, align 4, !tbaa !23
  %indvars.iv.next279.1 = add nsw i64 %indvars.iv278, 2 ; 2 uses
  %i.bl = getelementptr inbounds [4 x i8], ptr %i.l, i64 %indvars.iv.next279.1
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !23
  %i.bn = sext i32 %i.bm to i64
  %i.bo = getelementptr inbounds [4 x i8], ptr %i.ac, i64 %i.bn
  %i.bp = trunc nsw i64 %indvars.iv.next279.1 to i32
  store i32 %i.bp, ptr %i.bo, align 4, !tbaa !23
  %indvars.iv.next279.2 = add nsw i64 %indvars.iv278, 3 ; 2 uses
  %i.bq = getelementptr inbounds [4 x i8], ptr %i.l, i64 %indvars.iv.next279.2
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !23
  %i.bs = sext i32 %i.br to i64
  %i.bt = getelementptr inbounds [4 x i8], ptr %i.ac, i64 %i.bs
  %i.bu = trunc nsw i64 %indvars.iv.next279.2 to i32
  store i32 %i.bu, ptr %i.bt, align 4, !tbaa !23
  %indvars.iv.next279.3 = add nsw i64 %indvars.iv278, 4 ; 2 uses
  %exitcond282.not.3 = icmp eq i64 %indvars.iv.next279.3, %wide.trip.count281
  br i1 %exitcond282.not.3, label %._crit_edge225, label %.lr.ph224, !llvm.loop !54

._crit_edge225:                                   ; preds = %.lr.ph224.prol.loopexit, %.lr.ph224, %.lr.ph234
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv293
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !23 ; 3 uses
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv.next294
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !23 ; 3 uses
  %i.bz = icmp slt i32 %i.bw, %i.by
  br i1 %i.bz, label %.lr.ph229.preheader, label %.loopexit

.lr.ph229.preheader:                              ; preds = %._crit_edge225
  %i.ca = sext i32 %i.bw to i64
  br label %.lr.ph229

bb.k:                                             ; preds = %.lr.ph229
  %indvars.iv.next284 = add nsw i64 %indvars.iv283, 1 ; 2 uses
  %lftr.wideiv286 = trunc i64 %indvars.iv.next284 to i32
  %exitcond287.not = icmp eq i32 %i.by, %lftr.wideiv286
  br i1 %exitcond287.not, label %.lr.ph232.preheader, label %.lr.ph229, !llvm.loop !55

.lr.ph232.preheader:                              ; preds = %bb.k
  %i.cb = sext i32 %i.bw to i64
  br label %.lr.ph232

.lr.ph229:                                        ; preds = %.lr.ph229.preheader, %bb.k
  %indvars.iv283 = phi i64 [ %i.ca, %.lr.ph229.preheader ], [ %indvars.iv.next284, %bb.k ] ; 2 uses
  %i.cc = getelementptr inbounds [4 x i8], ptr %i.p, i64 %indvars.iv283
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !23
  %i.ce = sext i32 %i.cd to i64
  %i.cf = getelementptr inbounds [4 x i8], ptr %i.ac, i64 %i.ce
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !23
  %i.ch = icmp slt i32 %i.cg, %i.ao
  br i1 %i.ch, label %SparseMatrix_delete.exit, label %bb.k

bb.l:                                             ; preds = %.lr.ph232
  %indvars.iv.next289 = add nsw i64 %indvars.iv288, 1 ; 2 uses
  %lftr.wideiv291 = trunc i64 %indvars.iv.next289 to i32
  %exitcond292.not = icmp eq i32 %i.by, %lftr.wideiv291
  br i1 %exitcond292.not, label %.loopexit, label %.lr.ph232, !llvm.loop !56

.lr.ph232:                                        ; preds = %.lr.ph232.preheader, %bb.l
end_hunk_0
begin_hunk_1_@SparseMatrix_is_symmetric:bb.a

.lr.ph205:                                        ; preds = %.lr.ph205.prol.loopexit, %.lr.ph205
  %indvars.iv253 = phi i64 [ %indvars.iv.next254.3, %.lr.ph205 ], [ %indvars.iv253.unr, %.lr.ph205.prol.loopexit ] ; 6 uses
  %i.dm = getelementptr inbounds [4 x i8], ptr %i.l, i64 %indvars.iv253
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !23
  %i.do = sext i32 %i.dn to i64
  %i.dp = getelementptr inbounds [4 x i8], ptr %i.ac, i64 %i.do
  %i.dq = trunc nsw i64 %indvars.iv253 to i32
  store i32 %i.dq, ptr %i.dp, align 4, !tbaa !23
  %indvars.iv.next254 = add nsw i64 %indvars.iv253, 1 ; 2 uses
  %i.dr = getelementptr inbounds [4 x i8], ptr %i.l, i64 %indvars.iv.next254
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !23
  %i.dt = sext i32 %i.ds to i64
  %i.du = getelementptr inbounds [4 x i8], ptr %i.ac, i64 %i.dt
  %i.dv = trunc nsw i64 %indvars.iv.next254 to i32
  store i32 %i.dv, ptr %i.du, align 4, !tbaa !23
  %indvars.iv.next254.1 = add nsw i64 %indvars.iv253, 2 ; 2 uses
  %i.dw = getelementptr inbounds [4 x i8], ptr %i.l, i64 %indvars.iv.next254.1
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !23
  %i.dy = sext i32 %i.dx to i64
  %i.dz = getelementptr inbounds [4 x i8], ptr %i.ac, i64 %i.dy
  %i.ea = trunc nsw i64 %indvars.iv.next254.1 to i32
  store i32 %i.ea, ptr %i.dz, align 4, !tbaa !23
  %indvars.iv.next254.2 = add nsw i64 %indvars.iv253, 3 ; 2 uses
  %i.eb = getelementptr inbounds [4 x i8], ptr %i.l, i64 %indvars.iv.next254.2
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !23
  %i.ed = sext i32 %i.ec to i64
  %i.ee = getelementptr inbounds [4 x i8], ptr %i.ac, i64 %i.ed
  %i.ef = trunc nsw i64 %indvars.iv.next254.2 to i32
  store i32 %i.ef, ptr %i.ee, align 4, !tbaa !23
  %indvars.iv.next254.3 = add nsw i64 %indvars.iv253, 4 ; 2 uses
  %exitcond257.not.3 = icmp eq i64 %indvars.iv.next254.3, %wide.trip.count256
  br i1 %exitcond257.not.3, label %._crit_edge206, label %.lr.ph205, !llvm.loop !59

._crit_edge206:                                   ; preds = %.lr.ph205.prol.loopexit, %.lr.ph205, %.lr.ph217
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv268
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !23 ; 3 uses
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv.next269
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !23 ; 3 uses
  %i.ek = icmp slt i32 %i.eh, %i.ej
  br i1 %i.ek, label %.lr.ph210.preheader, label %.loopexit175

.lr.ph210.preheader:                              ; preds = %._crit_edge206
  %i.el = sext i32 %i.eh to i64
  br label %.lr.ph210

bb.n:                                             ; preds = %.lr.ph210
  %indvars.iv.next259 = add nsw i64 %indvars.iv258, 1 ; 2 uses
  %lftr.wideiv261 = trunc i64 %indvars.iv.next259 to i32
  %exitcond262.not = icmp eq i32 %i.ej, %lftr.wideiv261
  br i1 %exitcond262.not, label %.lr.ph213.preheader, label %.lr.ph210, !llvm.loop !60

.lr.ph213.preheader:                              ; preds = %bb.n
  %i.em = sext i32 %i.eh to i64
  br label %.lr.ph213

.lr.ph210:                                        ; preds = %.lr.ph210.preheader, %bb.n
  %indvars.iv258 = phi i64 [ %i.el, %.lr.ph210.preheader ], [ %indvars.iv.next259, %bb.n ] ; 2 uses
  %i.en = getelementptr inbounds [4 x i8], ptr %i.p, i64 %indvars.iv258
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !23
  %i.ep = sext i32 %i.eo to i64
  %i.eq = getelementptr inbounds [4 x i8], ptr %i.ac, i64 %i.ep
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !23
  %i.es = icmp slt i32 %i.er, %i.cz
  br i1 %i.es, label %SparseMatrix_delete.exit, label %bb.n

bb.o:                                             ; preds = %.lr.ph213
  %indvars.iv.next264 = add nsw i64 %indvars.iv263, 1 ; 2 uses
  %lftr.wideiv266 = trunc i64 %indvars.iv.next264 to i32
  %exitcond267.not = icmp eq i32 %i.ej, %lftr.wideiv266
  br i1 %exitcond267.not, label %.loopexit175, label %.lr.ph213, !llvm.loop !61

.lr.ph213:                                        ; preds = %.lr.ph213.preheader, %bb.o
  %indvars.iv263 = phi i64 [ %i.em, %.lr.ph213.preheader ], [ %indvars.iv.next264, %bb.o ] ; 3 uses
  %i.et = getelementptr inbounds [4 x i8], ptr %i.cy, i64 %indvars.iv263
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !23
  %i.ev = getelementptr inbounds [4 x i8], ptr %i.p, i64 %indvars.iv263
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !23
  %i.ex = sext i32 %i.ew to i64
  %i.ey = getelementptr inbounds [4 x i8], ptr %i.ac, i64 %i.ex
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !23
  %i.fa = sext i32 %i.ez to i64
  %i.fb = getelementptr inbounds [4 x i8], ptr %i.cw, i64 %i.fa
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !23
  %.not156 = icmp eq i32 %i.eu, %i.fc
  br i1 %.not156, label %bb.o, label %SparseMatrix_delete.exit

.loopexit179:                                     ; preds = %bb.p, %._crit_edge196
  %exitcond252.not = icmp eq i64 %indvars.iv.next249, %wide.trip.count251
  br i1 %exitcond252.not, label %.loopexit172, label %.lr.ph202, !llvm.loop !62

.lr.ph202:                                        ; preds = %.lr.ph202.preheader, %.loopexit179
  %i.fd = phi i32 [ %.pre, %.lr.ph202.preheader ], [ %i.ff, %.loopexit179 ] ; 3 uses
  %indvars.iv248 = phi i64 [ 0, %.lr.ph202.preheader ], [ %indvars.iv.next249, %.loopexit179 ] ; 2 uses
  %indvars.iv.next249 = add nuw nsw i64 %indvars.iv248, 1 ; 4 uses
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.next249
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !23 ; 3 uses
  %i.fg = icmp slt i32 %i.fd, %i.ff
  br i1 %i.fg, label %.lr.ph195.preheader, label %._crit_edge196

.lr.ph195.preheader:                              ; preds = %.lr.ph202
  %i.fh = sext i32 %i.fd to i64                   ; 4 uses
  %wide.trip.count = sext i32 %i.ff to i64        ; 3 uses
  %i.fi = sub nsw i64 %wide.trip.count, %i.fh
  %xtraiter = and i64 %i.fi, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph195.prol.loopexit, label %.lr.ph195.prol

.lr.ph195.prol:                                   ; preds = %.lr.ph195.preheader, %.lr.ph195.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph195.prol ], [ %i.fh, %.lr.ph195.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph195.prol ], [ 0, %.lr.ph195.preheader ]
  %i.fj = getelementptr inbounds [4 x i8], ptr %i.l, i64 %indvars.iv.prol
  %i.fk = load i32, ptr %i.fj, align 4, !tbaa !23
  %i.fl = sext i32 %i.fk to i64
  %i.fm = getelementptr inbounds [4 x i8], ptr %i.ac, i64 %i.fl
  %i.fn = trunc nsw i64 %indvars.iv.prol to i32
  store i32 %i.fn, ptr %i.fm, align 4, !tbaa !23
  %indvars.iv.next.prol = add nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph195.prol.loopexit, label %.lr.ph195.prol, !llvm.loop !63

.lr.ph195.prol.loopexit:                          ; preds = %.lr.ph195.prol, %.lr.ph195.preheader
  %indvars.iv.unr = phi i64 [ %i.fh, %.lr.ph195.preheader ], [ %indvars.iv.next.prol, %.lr.ph195.prol ]
  %i.fo = sub nsw i64 %i.fh, %wide.trip.count
  %i.fp = icmp ugt i64 %i.fo, -4
  br i1 %i.fp, label %._crit_edge196, label %.lr.ph195

.lr.ph195:                                        ; preds = %.lr.ph195.prol.loopexit, %.lr.ph195
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph195 ], [ %indvars.iv.unr, %.lr.ph195.prol.loopexit ] ; 6 uses
  %i.fq = getelementptr inbounds [4 x i8], ptr %i.l, i64 %indvars.iv
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !23
  %i.fs = sext i32 %i.fr to i64
  %i.ft = getelementptr inbounds [4 x i8], ptr %i.ac, i64 %i.fs
  %i.fu = trunc nsw i64 %indvars.iv to i32
  store i32 %i.fu, ptr %i.ft, align 4, !tbaa !23
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.fv = getelementptr inbounds [4 x i8], ptr %i.l, i64 %indvars.iv.next
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !23
  %i.fx = sext i32 %i.fw to i64
  %i.fy = getelementptr inbounds [4 x i8], ptr %i.ac, i64 %i.fx
  %i.fz = trunc nsw i64 %indvars.iv.next to i32
  store i32 %i.fz, ptr %i.fy, align 4, !tbaa !23
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, 2 ; 2 uses
  %i.ga = getelementptr inbounds [4 x i8], ptr %i.l, i64 %indvars.iv.next.1
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !23
  %i.gc = sext i32 %i.gb to i64
  %i.gd = getelementptr inbounds [4 x i8], ptr %i.ac, i64 %i.gc
  %i.ge = trunc nsw i64 %indvars.iv.next.1 to i32
  store i32 %i.ge, ptr %i.gd, align 4, !tbaa !23
  %indvars.iv.next.2 = add nsw i64 %indvars.iv, 3 ; 2 uses
  %i.gf = getelementptr inbounds [4 x i8], ptr %i.l, i64 %indvars.iv.next.2
  %i.gg = load i32, ptr %i.gf, align 4, !tbaa !23
  %i.gh = sext i32 %i.gg to i64
  %i.gi = getelementptr inbounds [4 x i8], ptr %i.ac, i64 %i.gh
  %i.gj = trunc nsw i64 %indvars.iv.next.2 to i32
  store i32 %i.gj, ptr %i.gi, align 4, !tbaa !23
  %indvars.iv.next.3 = add nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge196, label %.lr.ph195, !llvm.loop !64

._crit_edge196:                                   ; preds = %.lr.ph195.prol.loopexit, %.lr.ph195, %.lr.ph202
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv248
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !23 ; 2 uses
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv.next249
  %i.gn = load i32, ptr %i.gm, align 4, !tbaa !23 ; 2 uses
  %i.go = icmp slt i32 %i.gl, %i.gn
  br i1 %i.go, label %.lr.ph200.preheader, label %.loopexit179

.lr.ph200.preheader:                              ; preds = %._crit_edge196
  %i.gp = sext i32 %i.gl to i64
  br label %.lr.ph200

bb.p:                                             ; preds = %.lr.ph200
  %indvars.iv.next245 = add nsw i64 %indvars.iv244, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next245 to i32
  %exitcond247.not = icmp eq i32 %i.gn, %lftr.wideiv
  br i1 %exitcond247.not, label %.loopexit179, label %.lr.ph200, !llvm.loop !65

.lr.ph200:                                        ; preds = %.lr.ph200.preheader, %bb.p
  %indvars.iv244 = phi i64 [ %i.gp, %.lr.ph200.preheader ], [ %indvars.iv.next245, %bb.p ] ; 2 uses
  %i.gq = getelementptr inbounds [4 x i8], ptr %i.p, i64 %indvars.iv244
  %i.gr = load i32, ptr %i.gq, align 4, !tbaa !23
  %i.gs = sext i32 %i.gr to i64
  %i.gt = getelementptr inbounds [4 x i8], ptr %i.ac, i64 %i.gs
  %i.gu = load i32, ptr %i.gt, align 4, !tbaa !23
  %i.gv = icmp slt i32 %i.gu, %i.fd
  br i1 %i.gv, label %SparseMatrix_delete.exit, label %bb.p

bb.q:                                             ; preds = %._crit_edge
  %i.gw = load ptr, ptr @stderr, align 8, !tbaa !22
  %i.gx = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.gw, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 219) #18 ; 0 uses
  tail call void @abort() #19
  unreachable

.loopexit172:                                     ; preds = %.loopexit179, %.loopexit175, %.loopexit, %.preheader181, %bb.m, %.preheader171
  %.pre300 = load i8, ptr %i.a, align 4
  %i.gy = select i1 %1, i8 1, i8 3
  %i.gz = or i8 %i.gy, %.pre300
  store i8 %i.gz, ptr %i.a, align 4
  %.pre301 = load ptr, ptr %i.m, align 8, !tbaa !13
  br label %SparseMatrix_delete.exit

SparseMatrix_delete.exit:                         ; preds = %.lr.ph200, %.lr.ph210, %.lr.ph213, %.lr.ph221, %.lr.ph229, %.lr.ph232, %.loopexit172
  %2 = phi ptr [ %.pre301, %.loopexit172 ], [ %i.n, %.lr.ph232 ], [ %i.n, %.lr.ph229 ], [ %i.n, %.lr.ph210 ], [ %i.n, %.lr.ph221 ], [ %i.n, %.lr.ph213 ], [ %i.n, %.lr.ph200 ]
  %.3147 = phi i1 [ true, %.loopexit172 ], [ false, %.lr.ph232 ], [ false, %.lr.ph229 ], [ false, %.lr.ph210 ], [ false, %.lr.ph221 ], [ false, %.lr.ph213 ], [ false, %.lr.ph200 ]
  tail call void @free(ptr noundef %i.ac) #17
  tail call void @free(ptr noundef %2) #17
  %3 = load ptr, ptr %i.o, align 8, !tbaa !14
  tail call void @free(ptr noundef %3) #17
  %i.ha = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !15
  tail call void @free(ptr noundef %i.hb) #17
  tail call void @free(ptr noundef nonnull %i.h) #17
  br label %bb.r

bb.r:                                             ; preds = %SparseMatrix_delete.exit, %bb.b, %bb.c, %bb.d, %bb.a
  %.1149 = phi i1 [ false, %bb.a ], [ false, %bb.c ], [ true, %bb.b ], [ %.3147, %SparseMatrix_delete.exit ], [ false, %bb.d ]
  ret i1 %.1149
}

; Function Attrs: nofree nounwind uwtable
define ptr @SparseMatrix_copy(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #2 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i32, ptr %0, align 8, !tbaa !16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !17
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !20
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load i32, ptr %i.f, align 8, !tbaa !18
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !30
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.k = load i32, ptr %i.j, align 8, !tbaa !19
  %i.l = tail call fastcc ptr @SparseMatrix_general_new(i32 noundef %i.a, i32 noundef %i.c, i64 noundef %i.e, i32 noundef %i.g, i64 noundef %i.i, i32 noundef %i.k) ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !13
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !13
  %i.q = load i32, ptr %0, align 8, !tbaa !16
  %i.r = add nsw i32 %i.q, 1
  %i.s = sext i32 %i.r to i64
  %i.t = shl nsw i64 %i.s, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.n, ptr align 4 %i.p, i64 %i.t, i1 false)
  %i.u = load ptr, ptr %i.o, align 8, !tbaa !13
  %i.v = load i32, ptr %0, align 8, !tbaa !16
  %i.w = sext i32 %i.v to i64
  %i.x = getelementptr inbounds [4 x i8], ptr %i.u, i64 %i.w
  %i.y = load i32, ptr %i.x, align 4, !tbaa !23   ; 2 uses
  %.not35 = icmp eq i32 %i.y, 0
  br i1 %.not35, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.z = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !14
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !14
  %i.ad = sext i32 %i.y to i64
  %i.ae = shl nsw i64 %i.ad, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.aa, ptr align 4 %i.ac, i64 %i.ae, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !15 ; 2 uses
  %.not36 = icmp eq ptr %i.ag, null
  br i1 %.not36, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ah = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !15
  %i.aj = load i64, ptr %i.h, align 8, !tbaa !30
  %i.ak = load i64, ptr %i.d, align 8, !tbaa !20
  %i.al = mul i64 %i.ak, %i.aj
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ai, ptr nonnull align 1 %i.ag, i64 %i.al, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 3 uses
  %i.an = load i8, ptr %i.am, align 4
  %i.ao = getelementptr inbounds nuw i8, ptr %i.l, i64 60 ; 4 uses
  %1 = and i8 %i.an, 1
  %2 = load i8, ptr %i.ao, align 4
  %3 = and i8 %2, -2
  %4 = or disjoint i8 %3, %1                      ; 2 uses
  store i8 %4, ptr %i.ao, align 4
  %5 = load i8, ptr %i.am, align 4
  %.lobit = and i8 %5, 2
  %6 = and i8 %4, -3
  %7 = or disjoint i8 %6, %.lobit                 ; 2 uses
  store i8 %7, ptr %i.ao, align 4
  %i.ap = load i8, ptr %i.am, align 4
  %.lobit37 = and i8 %i.ap, 4
  %i.aq = and i8 %7, -5
  %i.ar = or disjoint i8 %i.aq, %.lobit37
  store i8 %i.ar, ptr %i.ao, align 4
  %i.as = load i64, ptr %i.d, align 8, !tbaa !20
  %i.at = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i64 %i.as, ptr %i.at, align 8, !tbaa !20
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.f
  %.0 = phi ptr [ %i.l, %bb.f ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define ptr @SparseMatrix_add(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !13   ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !14   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !13   ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !14   ; 3 uses
  %i.i = load i32, ptr %0, align 8, !tbaa !16     ; 8 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.k = load i32, ptr %i.j, align 4, !tbaa !17   ; 6 uses
  %i.l = load i32, ptr %1, align 8, !tbaa !16
  %.not = icmp eq i32 %i.i, %i.l
  br i1 %.not, label %bb.b, label %bb.y

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.n = load i32, ptr %i.m, align 4, !tbaa !17
  %.not189 = icmp eq i32 %i.k, %i.n
  br i1 %.not189, label %bb.c, label %bb.y

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = load i64, ptr %i.o, align 8, !tbaa !20
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !20
  %i.s = add i64 %i.r, %i.p
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.u = load i32, ptr %i.t, align 8, !tbaa !18   ; 2 uses
  switch i32 %i.u, label %bb.f [
    i32 1, label %SparseMatrix_new.exit
    i32 4, label %bb.d
    i32 8, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  br label %SparseMatrix_new.exit

bb.e:                                             ; preds = %bb.c
  br label %SparseMatrix_new.exit

bb.f:                                             ; preds = %bb.c
  %i.v = load ptr, ptr @stderr, align 8, !tbaa !22
  %i.w = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.v, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 40) #18 ; 0 uses
  tail call void @abort() #19
  unreachable

SparseMatrix_new.exit:                            ; preds = %bb.c, %bb.d, %bb.e
  %.0.i.i = phi i64 [ 0, %bb.e ], [ 4, %bb.d ], [ 8, %bb.c ]
  %i.x = tail call fastcc nonnull ptr @SparseMatrix_general_new(i32 noundef %i.i, i32 noundef %i.k, i64 noundef %i.s, i32 noundef %i.u, i64 noundef %.0.i.i, i32 noundef 0) ; 6 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !13   ; 7 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 40
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !14 ; 6 uses
  %i.ac = sext i32 %i.k to i64                    ; 4 uses
  %.not191 = icmp eq i32 %i.k, 0
  br i1 %.not191, label %gv_calloc.exit, label %bb.g

bb.g:                                             ; preds = %SparseMatrix_new.exit
  %mul.ov.i = icmp slt i32 %i.k, 0
  br i1 %mul.ov.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ad = load ptr, ptr @stderr, align 8, !tbaa !22
  %i.ae = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ad, ptr noundef nonnull @.str.3, i64 noundef %i.ac, i64 noundef 4) #18 ; 0 uses
  tail call fastcc void @graphviz_exit() #20
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.af = tail call noalias ptr @calloc(i64 noundef %i.ac, i64 noundef 4) #21 ; 3 uses
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %bb.j, label %.lr.ph.preheader

bb.j:                                             ; preds = %bb.i
  %i.ah = load ptr, ptr @stderr, align 8, !tbaa !22
  %i.ai = shl nuw nsw i64 %i.ac, 2
  %i.aj = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ah, ptr noundef nonnull @.str.4, i64 noundef %i.ai) #18 ; 0 uses
  tail call fastcc void @graphviz_exit() #20
  unreachable

gv_calloc.exit:                                   ; preds = %SparseMatrix_new.exit
  %i.ak = tail call noalias ptr @calloc(i64 noundef %i.ac, i64 noundef 4) #21
  br label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.i
  %i.al = zext nneg i32 %i.k to i64
  %i.am = shl nuw nsw i64 %i.al, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.af, i8 -1, i64 %i.am, i1 false), !tbaa !23
  br label %._crit_edge

._crit_edge:                                      ; preds = %gv_calloc.exit, %.lr.ph.preheader
  %i.an = phi ptr [ %i.af, %.lr.ph.preheader ], [ %i.ak, %gv_calloc.exit ] ; 7 uses
  store i32 0, ptr %i.z, align 4, !tbaa !23
  %i.ao = load i32, ptr %i.t, align 8, !tbaa !18
  switch i32 %i.ao, label %bb.x [
    i32 1, label %bb.k
    i32 4, label %bb.p
    i32 8, label %.preheader
  ]

.preheader:                                       ; preds = %._crit_edge
  %i.ap = icmp sgt i32 %i.i, 0
  br i1 %i.ap, label %.lr.ph215.preheader, label %.loopexit

.lr.ph215.preheader:                              ; preds = %.preheader
  %wide.trip.count = zext nneg i32 %i.i to i64
  br label %.lr.ph215

bb.k:                                             ; preds = %._crit_edge
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !15
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !15 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.x, i64 48
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !15 ; 3 uses
  %i.aw = icmp sgt i32 %i.i, 0
  br i1 %i.aw, label %.lr.ph253.preheader, label %.loopexit

.lr.ph253.preheader:                              ; preds = %bb.k
  %wide.trip.count287 = zext nneg i32 %i.i to i64
  br label %.lr.ph253

.lr.ph253:                                        ; preds = %.lr.ph253.preheader, %._crit_edge248
  %indvars.iv284 = phi i64 [ 0, %.lr.ph253.preheader ], [ %indvars.iv.next285, %._crit_edge248 ] ; 4 uses
  %.0176250 = phi i64 [ 0, %.lr.ph253.preheader ], [ %.2.lcssa, %._crit_edge248 ] ; 2 uses
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv284
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !23 ; 2 uses
  %indvars.iv.next285 = add nuw nsw i64 %indvars.iv284, 1 ; 5 uses
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next285 ; 2 uses
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !23
  %i.bb = icmp slt i32 %i.ay, %i.ba
  br i1 %i.bb, label %.lr.ph239.preheader, label %._crit_edge240

.lr.ph239.preheader:                              ; preds = %.lr.ph253
  %i.bc = sext i32 %i.ay to i64
  br label %.lr.ph239

.lr.ph239:                                        ; preds = %.lr.ph239.preheader, %.lr.ph239
  %indvars.iv278 = phi i64 [ %i.bc, %.lr.ph239.preheader ], [ %indvars.iv.next279, %.lr.ph239 ] ; 3 uses
  %.1237 = phi i64 [ %.0176250, %.lr.ph239.preheader ], [ %i.bm, %.lr.ph239 ] ; 4 uses
  %i.bd = trunc i64 %.1237 to i32
  %i.be = getelementptr inbounds [4 x i8], ptr %i.d, i64 %indvars.iv278
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !23 ; 2 uses
  %i.bg = sext i32 %i.bf to i64
  %i.bh = getelementptr inbounds [4 x i8], ptr %i.an, i64 %i.bg
  store i32 %i.bd, ptr %i.bh, align 4, !tbaa !23
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %.1237
  store i32 %i.bf, ptr %i.bi, align 4, !tbaa !23
  %i.bj = getelementptr inbounds [8 x i8], ptr %i.ar, i64 %indvars.iv278
  %i.bk = load double, ptr %i.bj, align 8, !tbaa !27
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %.1237
  store double %i.bk, ptr %i.bl, align 8, !tbaa !27
  %i.bm = add i64 %.1237, 1                       ; 2 uses
  %indvars.iv.next279 = add nsw i64 %indvars.iv278, 1 ; 2 uses
  %i.bn = load i32, ptr %i.az, align 4, !tbaa !23
  %i.bo = sext i32 %i.bn to i64
  %i.bp = icmp slt i64 %indvars.iv.next279, %i.bo
  br i1 %i.bp, label %.lr.ph239, label %._crit_edge240, !llvm.loop !66

._crit_edge240:                                   ; preds = %.lr.ph239, %.lr.ph253
  %.1.lcssa = phi i64 [ %.0176250, %.lr.ph253 ], [ %i.bm, %.lr.ph239 ] ; 2 uses
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv284
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !23 ; 2 uses
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.next285 ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !23 ; 2 uses
  %i.bu = icmp slt i32 %i.br, %i.bt
  br i1 %i.bu, label %.lr.ph247, label %._crit_edge248

.lr.ph247:                                        ; preds = %._crit_edge240
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv284
  %i.bw = sext i32 %i.br to i64
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph247, %bb.o
  %i.bx = phi i32 [ %i.bt, %.lr.ph247 ], [ %i.cq, %bb.o ]
  %indvars.iv281 = phi i64 [ %i.bw, %.lr.ph247 ], [ %indvars.iv.next282, %bb.o ] ; 4 uses
  %.2245 = phi i64 [ %.1.lcssa, %.lr.ph247 ], [ %.3, %bb.o ] ; 4 uses
  %i.by = getelementptr inbounds [4 x i8], ptr %i.h, i64 %indvars.iv281
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !23 ; 2 uses
  %i.ca = sext i32 %i.bz to i64
  %i.cb = getelementptr inbounds [4 x i8], ptr %i.an, i64 %i.ca
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !23 ; 2 uses
  %i.cd = load i32, ptr %i.bv, align 4, !tbaa !23
  %i.ce = icmp slt i32 %i.cc, %i.cd
  br i1 %i.ce, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %.2245
  store i32 %i.bz, ptr %i.cf, align 4, !tbaa !23
  %i.cg = getelementptr inbounds [8 x i8], ptr %i.at, i64 %indvars.iv281
  %i.ch = load double, ptr %i.cg, align 8, !tbaa !27
  %i.ci = add i64 %.2245, 1
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %.2245
  store double %i.ch, ptr %i.cj, align 8, !tbaa !27
  %.pre289 = load i32, ptr %i.bs, align 4, !tbaa !23
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.ck = getelementptr inbounds [8 x i8], ptr %i.at, i64 %indvars.iv281
  %i.cl = load double, ptr %i.ck, align 8, !tbaa !27
  %i.cm = sext i32 %i.cc to i64
  %i.cn = getelementptr inbounds [8 x i8], ptr %i.av, i64 %i.cm ; 2 uses
  %i.co = load double, ptr %i.cn, align 8, !tbaa !27
  %i.cp = fadd double %i.cl, %i.co
  store double %i.cp, ptr %i.cn, align 8, !tbaa !27
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n
  %i.cq = phi i32 [ %.pre289, %bb.m ], [ %i.bx, %bb.n ] ; 2 uses
  %.3 = phi i64 [ %i.ci, %bb.m ], [ %.2245, %bb.n ] ; 2 uses
  %indvars.iv.next282 = add nsw i64 %indvars.iv281, 1 ; 2 uses
  %i.cr = sext i32 %i.cq to i64
  %i.cs = icmp slt i64 %indvars.iv.next282, %i.cr
  br i1 %i.cs, label %bb.l, label %._crit_edge248, !llvm.loop !67

._crit_edge248:                                   ; preds = %bb.o, %._crit_edge240
  %.2.lcssa = phi i64 [ %.1.lcssa, %._crit_edge240 ], [ %.3, %bb.o ] ; 3 uses
  %i.ct = trunc i64 %.2.lcssa to i32
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv.next285
  store i32 %i.ct, ptr %i.cu, align 4, !tbaa !23
  %exitcond288.not = icmp eq i64 %indvars.iv.next285, %wide.trip.count287
  br i1 %exitcond288.not, label %.loopexit, label %.lr.ph253, !llvm.loop !68

bb.p:                                             ; preds = %._crit_edge
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !15
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !15 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.x, i64 48
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !15 ; 3 uses
  %i.db = icmp sgt i32 %i.i, 0
  br i1 %i.db, label %.lr.ph234.preheader, label %.loopexit

.lr.ph234.preheader:                              ; preds = %bb.p
  %wide.trip.count276 = zext nneg i32 %i.i to i64
  br label %.lr.ph234

.lr.ph234:                                        ; preds = %.lr.ph234.preheader, %._crit_edge229
  %indvars.iv273 = phi i64 [ 0, %.lr.ph234.preheader ], [ %indvars.iv.next274, %._crit_edge229 ] ; 4 uses
  %.4231 = phi i64 [ 0, %.lr.ph234.preheader ], [ %.6.lcssa, %._crit_edge229 ] ; 2 uses
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv273
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !23 ; 2 uses
  %indvars.iv.next274 = add nuw nsw i64 %indvars.iv273, 1 ; 5 uses
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next274 ; 2 uses
  %i.df = load i32, ptr %i.de, align 4, !tbaa !23
  %i.dg = icmp slt i32 %i.dd, %i.df
  br i1 %i.dg, label %.lr.ph220.preheader, label %._crit_edge221

.lr.ph220.preheader:                              ; preds = %.lr.ph234
  %i.dh = sext i32 %i.dd to i64
  br label %.lr.ph220

.lr.ph220:                                        ; preds = %.lr.ph220.preheader, %.lr.ph220
  %indvars.iv267 = phi i64 [ %i.dh, %.lr.ph220.preheader ], [ %indvars.iv.next268, %.lr.ph220 ] ; 3 uses
  %.5218 = phi i64 [ %.4231, %.lr.ph220.preheader ], [ %i.dr, %.lr.ph220 ] ; 4 uses
  %i.di = trunc i64 %.5218 to i32
  %i.dj = getelementptr inbounds [4 x i8], ptr %i.d, i64 %indvars.iv267
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !23 ; 2 uses
  %i.dl = sext i32 %i.dk to i64
  %i.dm = getelementptr inbounds [4 x i8], ptr %i.an, i64 %i.dl
  store i32 %i.di, ptr %i.dm, align 4, !tbaa !23
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %.5218
  store i32 %i.dk, ptr %i.dn, align 4, !tbaa !23
  %i.do = getelementptr inbounds [4 x i8], ptr %i.cw, i64 %indvars.iv267
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !23
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %.5218
  store i32 %i.dp, ptr %i.dq, align 4, !tbaa !23
  %i.dr = add i64 %.5218, 1                       ; 2 uses
  %indvars.iv.next268 = add nsw i64 %indvars.iv267, 1 ; 2 uses
  %i.ds = load i32, ptr %i.de, align 4, !tbaa !23
  %i.dt = sext i32 %i.ds to i64
  %i.du = icmp slt i64 %indvars.iv.next268, %i.dt
  br i1 %i.du, label %.lr.ph220, label %._crit_edge221, !llvm.loop !69

._crit_edge221:                                   ; preds = %.lr.ph220, %.lr.ph234
  %.5.lcssa = phi i64 [ %.4231, %.lr.ph234 ], [ %i.dr, %.lr.ph220 ] ; 2 uses
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv273
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !23 ; 2 uses
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.next274 ; 2 uses
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !23
  %i.dz = icmp slt i32 %i.dw, %i.dy
  br i1 %i.dz, label %.lr.ph228, label %._crit_edge229

.lr.ph228:                                        ; preds = %._crit_edge221
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv273
  %i.eb = sext i32 %i.dw to i64
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph228, %bb.t
  %indvars.iv270 = phi i64 [ %i.eb, %.lr.ph228 ], [ %indvars.iv.next271, %bb.t ] ; 4 uses
  %.6226 = phi i64 [ %.5.lcssa, %.lr.ph228 ], [ %.7, %bb.t ] ; 4 uses
  %i.ec = getelementptr inbounds [4 x i8], ptr %i.h, i64 %indvars.iv270
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !23 ; 2 uses
  %i.ee = sext i32 %i.ed to i64
  %i.ef = getelementptr inbounds [4 x i8], ptr %i.an, i64 %i.ee
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !23 ; 2 uses
  %i.eh = load i32, ptr %i.ea, align 4, !tbaa !23
  %i.ei = icmp slt i32 %i.eg, %i.eh
  br i1 %i.ei, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %.6226
  store i32 %i.ed, ptr %i.ej, align 4, !tbaa !23
  %i.ek = getelementptr inbounds [4 x i8], ptr %i.cy, i64 %indvars.iv270
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !23
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %.6226
  store i32 %i.el, ptr %i.em, align 4, !tbaa !23
  %i.en = add i64 %.6226, 1
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  %i.eo = getelementptr inbounds [4 x i8], ptr %i.cy, i64 %indvars.iv270
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !23
  %i.eq = sext i32 %i.eg to i64
  %i.er = getelementptr inbounds [4 x i8], ptr %i.da, i64 %i.eq ; 2 uses
  %i.es = load i32, ptr %i.er, align 4, !tbaa !23
  %i.et = add nsw i32 %i.es, %i.ep
  store i32 %i.et, ptr %i.er, align 4, !tbaa !23
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s
  %.7 = phi i64 [ %i.en, %bb.r ], [ %.6226, %bb.s ] ; 2 uses
  %indvars.iv.next271 = add nsw i64 %indvars.iv270, 1 ; 2 uses
  %i.eu = load i32, ptr %i.dx, align 4, !tbaa !23
  %i.ev = sext i32 %i.eu to i64
  %i.ew = icmp slt i64 %indvars.iv.next271, %i.ev
  br i1 %i.ew, label %bb.q, label %._crit_edge229, !llvm.loop !70

._crit_edge229:                                   ; preds = %bb.t, %._crit_edge221
  %.6.lcssa = phi i64 [ %.5.lcssa, %._crit_edge221 ], [ %.7, %bb.t ] ; 3 uses
  %i.ex = trunc i64 %.6.lcssa to i32
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv.next274
  store i32 %i.ex, ptr %i.ey, align 4, !tbaa !23
  %exitcond277.not = icmp eq i64 %indvars.iv.next274, %wide.trip.count276
  br i1 %exitcond277.not, label %.loopexit, label %.lr.ph234, !llvm.loop !71

.lr.ph215:                                        ; preds = %.lr.ph215.preheader, %._crit_edge211
  %indvars.iv264 = phi i64 [ 0, %.lr.ph215.preheader ], [ %indvars.iv.next265, %._crit_edge211 ] ; 4 uses
  %.8213 = phi i64 [ 0, %.lr.ph215.preheader ], [ %.10.lcssa, %._crit_edge211 ] ; 2 uses
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv264
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !23 ; 2 uses
  %indvars.iv.next265 = add nuw nsw i64 %indvars.iv264, 1 ; 5 uses
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next265 ; 2 uses
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !23
  %i.fd = icmp slt i32 %i.fa, %i.fc
  br i1 %i.fd, label %.lr.ph203.preheader, label %._crit_edge204

.lr.ph203.preheader:                              ; preds = %.lr.ph215
  %i.fe = sext i32 %i.fa to i64
  br label %.lr.ph203

.lr.ph203:                                        ; preds = %.lr.ph203.preheader, %.lr.ph203
  %indvars.iv = phi i64 [ %i.fe, %.lr.ph203.preheader ], [ %indvars.iv.next, %.lr.ph203 ] ; 2 uses
  %.9201 = phi i64 [ %.8213, %.lr.ph203.preheader ], [ %i.fl, %.lr.ph203 ] ; 3 uses
  %i.ff = trunc i64 %.9201 to i32
  %i.fg = getelementptr inbounds [4 x i8], ptr %i.d, i64 %indvars.iv
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !23 ; 2 uses
  %i.fi = sext i32 %i.fh to i64
  %i.fj = getelementptr inbounds [4 x i8], ptr %i.an, i64 %i.fi
  store i32 %i.ff, ptr %i.fj, align 4, !tbaa !23
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %.9201
  store i32 %i.fh, ptr %i.fk, align 4, !tbaa !23
  %i.fl = add i64 %.9201, 1                       ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.fm = load i32, ptr %i.fb, align 4, !tbaa !23
  %i.fn = sext i32 %i.fm to i64
  %i.fo = icmp slt i64 %indvars.iv.next, %i.fn
  br i1 %i.fo, label %.lr.ph203, label %._crit_edge204, !llvm.loop !72

._crit_edge204:                                   ; preds = %.lr.ph203, %.lr.ph215
  %.9.lcssa = phi i64 [ %.8213, %.lr.ph215 ], [ %i.fl, %.lr.ph203 ] ; 2 uses
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv264
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !23 ; 2 uses
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.next265 ; 2 uses
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !23 ; 2 uses
  %i.ft = icmp slt i32 %i.fq, %i.fs
  br i1 %i.ft, label %.lr.ph210, label %._crit_edge211

.lr.ph210:                                        ; preds = %._crit_edge204
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv264
  %i.fv = sext i32 %i.fq to i64
  br label %bb.u

bb.u:                                             ; preds = %.lr.ph210, %bb.w
  %i.fw = phi i32 [ %i.fs, %.lr.ph210 ], [ %i.gg, %bb.w ]
  %indvars.iv261 = phi i64 [ %i.fv, %.lr.ph210 ], [ %indvars.iv.next262, %bb.w ] ; 2 uses
  %.10208 = phi i64 [ %.9.lcssa, %.lr.ph210 ], [ %.11, %bb.w ] ; 3 uses
  %i.fx = getelementptr inbounds [4 x i8], ptr %i.h, i64 %indvars.iv261
  %i.fy = load i32, ptr %i.fx, align 4, !tbaa !23 ; 2 uses
  %i.fz = sext i32 %i.fy to i64
  %i.ga = getelementptr inbounds [4 x i8], ptr %i.an, i64 %i.fz
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !23
  %i.gc = load i32, ptr %i.fu, align 4, !tbaa !23
  %i.gd = icmp slt i32 %i.gb, %i.gc
  br i1 %i.gd, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %.10208
  store i32 %i.fy, ptr %i.ge, align 4, !tbaa !23
  %i.gf = add i64 %.10208, 1
  %.pre = load i32, ptr %i.fr, align 4, !tbaa !23
  br label %bb.w

bb.w:                                             ; preds = %bb.u, %bb.v
  %i.gg = phi i32 [ %.pre, %bb.v ], [ %i.fw, %bb.u ] ; 2 uses
  %.11 = phi i64 [ %i.gf, %bb.v ], [ %.10208, %bb.u ] ; 2 uses
  %indvars.iv.next262 = add nsw i64 %indvars.iv261, 1 ; 2 uses
  %i.gh = sext i32 %i.gg to i64
  %i.gi = icmp slt i64 %indvars.iv.next262, %i.gh
  br i1 %i.gi, label %bb.u, label %._crit_edge211, !llvm.loop !73

._crit_edge211:                                   ; preds = %bb.w, %._crit_edge204
  %.10.lcssa = phi i64 [ %.9.lcssa, %._crit_edge204 ], [ %.11, %bb.w ] ; 3 uses
  %i.gj = trunc i64 %.10.lcssa to i32
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv.next265
  store i32 %i.gj, ptr %i.gk, align 4, !tbaa !23
  %exitcond.not = icmp eq i64 %indvars.iv.next265, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph215, !llvm.loop !74

bb.x:                                             ; preds = %._crit_edge
  %i.gl = load ptr, ptr @stderr, align 8, !tbaa !22
  %i.gm = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.gl, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 611) #18 ; 0 uses
  tail call void @abort() #19
  unreachable

.loopexit:                                        ; preds = %._crit_edge211, %._crit_edge229, %._crit_edge248, %.preheader, %bb.p, %bb.k
  %.12 = phi i64 [ %.6.lcssa, %._crit_edge229 ], [ %.2.lcssa, %._crit_edge248 ], [ 0, %bb.k ], [ 0, %bb.p ], [ 0, %.preheader ], [ %.10.lcssa, %._crit_edge211 ]
  %i.gn = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store i64 %.12, ptr %i.gn, align 8, !tbaa !20
  tail call void @free(ptr noundef %i.an) #17
  br label %bb.y

bb.y:                                             ; preds = %bb.a, %bb.b, %.loopexit
  %.0184 = phi ptr [ %i.x, %.loopexit ], [ null, %bb.b ], [ null, %bb.a ]
  ret ptr %.0184
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #6

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: nofree nounwind uwtable
define internal fastcc nonnull ptr @SparseMatrix_general_new(i32 noundef %0, i32 noundef %1, i64 noundef %2, i32 noundef %3, i64 noundef %4, i32 noundef %5) unnamed_addr #2 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(72) ptr @calloc(i64 noundef 1, i64 noundef 72) #21 ; 14 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %gv_alloc.exit.i

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @stderr, align 8, !tbaa !22
  %i.d = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.c, ptr noundef nonnull @.str.4, i64 noundef 72) #18 ; 0 uses
  tail call fastcc void @graphviz_exit() #20
  unreachable

gv_alloc.exit.i:                                  ; preds = %bb.a
  store i32 %0, ptr %i.a, align 8, !tbaa !16
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %1, ptr %i.e, align 4, !tbaa !17
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i32 %3, ptr %i.f, align 8, !tbaa !18
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i64 %4, ptr %i.g, align 8, !tbaa !30
  %cond.i = icmp eq i32 %5, 1
  br i1 %cond.i, label %SparseMatrix_init.exit, label %bb.c

bb.c:                                             ; preds = %gv_alloc.exit.i
  %i.h = add nsw i32 %0, 1                        ; 2 uses
  %i.i = sext i32 %i.h to i64                     ; 4 uses
  %.not.i = icmp eq i32 %i.h, 0
  br i1 %.not.i, label %.thread.i, label %bb.d

.thread.i:                                        ; preds = %bb.c
  %i.j = tail call noalias ptr @calloc(i64 noundef %i.i, i64 noundef 4) #21
  br label %SparseMatrix_init.exit.thread

bb.d:                                             ; preds = %bb.c
  %mul.ov.i.i = icmp slt i32 %0, -1
  br i1 %mul.ov.i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.k = load ptr, ptr @stderr, align 8, !tbaa !22
  %i.l = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.k, ptr noundef nonnull @.str.3, i64 noundef %i.i, i64 noundef 4) #18 ; 0 uses
  tail call fastcc void @graphviz_exit() #20
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.m = tail call noalias ptr @calloc(i64 noundef %i.i, i64 noundef 4) #21 ; 2 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.g, label %SparseMatrix_init.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.o = load ptr, ptr @stderr, align 8, !tbaa !22
  %i.p = shl nuw nsw i64 %i.i, 2
  %i.q = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.o, ptr noundef nonnull @.str.4, i64 noundef %i.p) #18 ; 0 uses
  tail call fastcc void @graphviz_exit() #20
  unreachable

SparseMatrix_init.exit:                           ; preds = %gv_alloc.exit.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i32 1, ptr %i.r, align 8, !tbaa !19
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %bb.y, label %bb.h

SparseMatrix_init.exit.thread:                    ; preds = %.thread.i, %bb.f
  %i.s = phi ptr [ %i.j, %.thread.i ], [ %i.m, %bb.f ]
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %i.s, ptr %i.t, align 8, !tbaa !13
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i32 %5, ptr %i.u, align 8, !tbaa !19
  %.not11 = icmp eq i64 %2, 0
  br i1 %.not11, label %bb.y, label %bb.q

bb.h:                                             ; preds = %SparseMatrix_init.exit
  %mul.ov.i.i9 = icmp ugt i64 %2, 4611686018427387903
  br i1 %mul.ov.i.i9, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.v = load ptr, ptr @stderr, align 8, !tbaa !22
  %i.w = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.v, ptr noundef nonnull @.str.3, i64 noundef range(i64 1, 0) %2, i64 noundef 4) #18 ; 0 uses
  tail call fastcc void @graphviz_exit() #20
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.x = tail call noalias ptr @calloc(i64 noundef range(i64 1, 0) %2, i64 noundef 4) #21 ; 2 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.z = load ptr, ptr @stderr, align 8, !tbaa !22
  %i.aa = shl nuw i64 %2, 2
  %i.ab = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.z, ptr noundef nonnull @.str.4, i64 noundef %i.aa) #18 ; 0 uses
  tail call fastcc void @graphviz_exit() #20
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %i.x, ptr %i.ac, align 8, !tbaa !13
  %i.ad = tail call noalias ptr @calloc(i64 noundef range(i64 1, 0) %2, i64 noundef 4) #21 ; 2 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %bb.m, label %gv_calloc.exit22.i

bb.m:                                             ; preds = %bb.l
  %i.af = load ptr, ptr @stderr, align 8, !tbaa !22
  %i.ag = shl nuw i64 %2, 2
  %i.ah = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.af, ptr noundef nonnull @.str.4, i64 noundef %i.ag) #18 ; 0 uses
  tail call fastcc void @graphviz_exit() #20
  unreachable

gv_calloc.exit22.i:                               ; preds = %bb.l
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr %i.ad, ptr %i.ai, align 8, !tbaa !14
  %mul.i23.i = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 range(i64 1, 0) %2, i64 %4)
  %mul.ov.i24.i = extractvalue { i64, i1 } %mul.i23.i, 1
  br i1 %mul.ov.i24.i, label %bb.n, label %bb.o

bb.n:                                             ; preds = %gv_calloc.exit22.i
  %i.aj = load ptr, ptr @stderr, align 8, !tbaa !22
  %i.ak = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.aj, ptr noundef nonnull @.str.3, i64 noundef range(i64 1, 0) %2, i64 noundef %4) #18 ; 0 uses
  tail call fastcc void @graphviz_exit() #20
  unreachable

bb.o:                                             ; preds = %gv_calloc.exit22.i
  %i.al = tail call noalias ptr @calloc(i64 noundef range(i64 1, 0) %2, i64 noundef %4) #21 ; 2 uses
  %i.am = icmp ne i64 %4, 0
  %i.an = icmp eq ptr %i.al, null
  %i.ao = and i1 %i.am, %i.an
  br i1 %i.ao, label %bb.p, label %.sink.split.i

bb.p:                                             ; preds = %bb.o
  %i.ap = load ptr, ptr @stderr, align 8, !tbaa !22
  %i.aq = mul i64 %4, %2
  %i.ar = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ap, ptr noundef nonnull @.str.4, i64 noundef %i.aq) #18 ; 0 uses
  tail call fastcc void @graphviz_exit() #20
  unreachable

bb.q:                                             ; preds = %SparseMatrix_init.exit.thread
  %mul.ov.i.i912 = icmp ugt i64 %2, 4611686018427387903
  br i1 %mul.ov.i.i912, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.as = load ptr, ptr @stderr, align 8, !tbaa !22
  %i.at = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.as, ptr noundef nonnull @.str.3, i64 noundef range(i64 1, 0) %2, i64 noundef 4) #18 ; 0 uses
  tail call fastcc void @graphviz_exit() #20
  unreachable

bb.s:                                             ; preds = %bb.q
  %i.au = tail call noalias ptr @calloc(i64 noundef range(i64 1, 0) %2, i64 noundef 4) #21 ; 2 uses
  %i.av = icmp eq ptr %i.au, null
  br i1 %i.av, label %bb.t, label %gv_calloc.exit28.i

bb.t:                                             ; preds = %bb.s
  %i.aw = load ptr, ptr @stderr, align 8, !tbaa !22
  %i.ax = shl nuw i64 %2, 2
  %i.ay = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.aw, ptr noundef nonnull @.str.4, i64 noundef %i.ax) #18 ; 0 uses
  tail call fastcc void @graphviz_exit() #20
  unreachable

gv_calloc.exit28.i:                               ; preds = %bb.s
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr %i.au, ptr %i.az, align 8, !tbaa !14
  %.not.i10 = icmp eq i64 %4, 0
  br i1 %.not.i10, label %SparseMatrix_alloc.exit, label %bb.u

bb.u:                                             ; preds = %gv_calloc.exit28.i
  %mul.i29.i = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 range(i64 1, 0) %2, i64 %4)
  %mul.ov.i30.i = extractvalue { i64, i1 } %mul.i29.i, 1
  br i1 %mul.ov.i30.i, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.ba = load ptr, ptr @stderr, align 8, !tbaa !22
  %i.bb = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ba, ptr noundef nonnull @.str.3, i64 noundef range(i64 1, 0) %2, i64 noundef %4) #18 ; 0 uses
  tail call fastcc void @graphviz_exit() #20
  unreachable

bb.w:                                             ; preds = %bb.u
  %i.bc = tail call noalias ptr @calloc(i64 noundef range(i64 1, 0) %2, i64 noundef %4) #21 ; 2 uses
  %i.bd = icmp eq ptr %i.bc, null
  br i1 %i.bd, label %bb.x, label %.sink.split.i

bb.x:                                             ; preds = %bb.w
  %i.be = load ptr, ptr @stderr, align 8, !tbaa !22
  %i.bf = mul i64 %4, %2
  %i.bg = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.be, ptr noundef nonnull @.str.4, i64 noundef %i.bf) #18 ; 0 uses
  tail call fastcc void @graphviz_exit() #20
  unreachable

.sink.split.i:                                    ; preds = %bb.w, %bb.o
  %.sink.i = phi ptr [ %i.al, %bb.o ], [ %i.bc, %bb.w ]
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %.sink.i, ptr %i.bh, align 8, !tbaa !15
  br label %SparseMatrix_alloc.exit

SparseMatrix_alloc.exit:                          ; preds = %gv_calloc.exit28.i, %.sink.split.i
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %2, ptr %i.bi, align 8, !tbaa !31
  br label %bb.y

bb.y:                                             ; preds = %SparseMatrix_init.exit.thread, %SparseMatrix_alloc.exit, %SparseMatrix_init.exit
  ret ptr %i.a
}

; Function Attrs: nofree nounwind uwtable
define void @SparseMatrix_export(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #2 {
end_hunk_1
begin_hunk_2_@SparseMatrix_multiply_vector:bb.a
  br i1 %exitcond92.not, label %.loopexit64, label %.lr.ph75, !llvm.loop !101

.lr.ph75:                                         ; preds = %.lr.ph75.preheader, %.loopexit
  %i.t = phi i32 [ %.pre93, %.lr.ph75.preheader ], [ %i.w, %.loopexit ] ; 2 uses
  %indvars.iv88 = phi i64 [ 0, %.lr.ph75.preheader ], [ %indvars.iv.next89, %.loopexit ] ; 2 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %.0106, i64 %indvars.iv88 ; 4 uses
  store double 0.000000e+00, ptr %i.u, align 8, !tbaa !27
  %indvars.iv.next89 = add nuw nsw i64 %indvars.iv88, 1 ; 3 uses
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next89
  %i.w = load i32, ptr %i.v, align 4, !tbaa !23   ; 3 uses
  %i.x = icmp slt i32 %i.t, %i.w
  br i1 %i.x, label %.lr.ph72, label %.loopexit

.lr.ph72:                                         ; preds = %.lr.ph75
  %i.y = sext i32 %i.t to i64                     ; 6 uses
  %wide.trip.count86 = sext i32 %i.w to i64       ; 3 uses
  %i.z = sub nsw i64 %wide.trip.count86, %i.y
  %xtraiter118 = and i64 %i.z, 1
  %lcmp.mod119.not = icmp eq i64 %xtraiter118, 0
  br i1 %lcmp.mod119.not, label %.prol.loopexit117, label %.prol.loopexit117.unr-lcssa

.prol.loopexit117.unr-lcssa:                      ; preds = %.lr.ph72
  %i.aa = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.y
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !27
  %i.ac = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.y
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !23
  %i.ae = sext i32 %i.ad to i64
  %i.af = getelementptr inbounds [8 x i8], ptr %1, i64 %i.ae
  %i.ag = load double, ptr %i.af, align 8, !tbaa !27
  %i.ah = tail call double @llvm.fmuladd.f64(double %i.ab, double %i.ag, double 0.000000e+00) ; 2 uses
  store double %i.ah, ptr %i.u, align 8, !tbaa !27
  %indvars.iv.next84.prol = add nsw i64 %i.y, 1
  br label %.prol.loopexit117

.prol.loopexit117:                                ; preds = %.prol.loopexit117.unr-lcssa, %.lr.ph72
  %indvars.iv83.unr = phi i64 [ %i.y, %.lr.ph72 ], [ %indvars.iv.next84.prol, %.prol.loopexit117.unr-lcssa ]
  %.unr120 = phi double [ 0.000000e+00, %.lr.ph72 ], [ %i.ah, %.prol.loopexit117.unr-lcssa ]
  %i.ai = add nsw i64 %wide.trip.count86, -1
  %i.aj = icmp eq i64 %i.ai, %i.y
  br i1 %i.aj, label %.loopexit, label %.lr.ph72.new

.lr.ph72.new:                                     ; preds = %.prol.loopexit117, %.lr.ph72.new
  %indvars.iv83 = phi i64 [ %indvars.iv.next84.1, %.lr.ph72.new ], [ %indvars.iv83.unr, %.prol.loopexit117 ] ; 4 uses
  %i.ak = phi double [ %i.ba, %.lr.ph72.new ], [ %.unr120, %.prol.loopexit117 ]
  %i.al = getelementptr inbounds [8 x i8], ptr %i.j, i64 %indvars.iv83
  %i.am = load double, ptr %i.al, align 8, !tbaa !27
  %i.an = getelementptr inbounds [4 x i8], ptr %i.d, i64 %indvars.iv83
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !23
  %i.ap = sext i32 %i.ao to i64
  %i.aq = getelementptr inbounds [8 x i8], ptr %1, i64 %i.ap
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !27
  %i.as = tail call double @llvm.fmuladd.f64(double %i.am, double %i.ar, double %i.ak) ; 2 uses
  store double %i.as, ptr %i.u, align 8, !tbaa !27
  %indvars.iv.next84 = add nsw i64 %indvars.iv83, 1 ; 2 uses
  %i.at = getelementptr inbounds [8 x i8], ptr %i.j, i64 %indvars.iv.next84
  %i.au = load double, ptr %i.at, align 8, !tbaa !27
  %i.av = getelementptr inbounds [4 x i8], ptr %i.d, i64 %indvars.iv.next84
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !23
  %i.ax = sext i32 %i.aw to i64
  %i.ay = getelementptr inbounds [8 x i8], ptr %1, i64 %i.ax
  %i.az = load double, ptr %i.ay, align 8, !tbaa !27
  %i.ba = tail call double @llvm.fmuladd.f64(double %i.au, double %i.az, double %i.as) ; 2 uses
  store double %i.ba, ptr %i.u, align 8, !tbaa !27
  %indvars.iv.next84.1 = add nsw i64 %indvars.iv83, 2 ; 2 uses
  %exitcond87.not.1 = icmp eq i64 %indvars.iv.next84.1, %wide.trip.count86
  br i1 %exitcond87.not.1, label %.loopexit, label %.lr.ph72.new, !llvm.loop !102

bb.h:                                             ; preds = %bb.a
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !15 ; 3 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.i, label %gv_calloc.exit58

bb.i:                                             ; preds = %bb.h
  %i.bd = sext i32 %i.e to i64                    ; 4 uses
  %.not62 = icmp eq i32 %i.e, 0
  br i1 %.not62, label %.loopexit64.sink.split, label %bb.j

bb.j:                                             ; preds = %bb.i
  %mul.ov.i57 = icmp slt i32 %i.e, 0
  br i1 %mul.ov.i57, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.be = load ptr, ptr @stderr, align 8, !tbaa !22
  %i.bf = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.be, ptr noundef nonnull @.str.3, i64 noundef %i.bd, i64 noundef 8) #18 ; 0 uses
  tail call fastcc void @graphviz_exit() #20
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.bg = tail call noalias ptr @calloc(i64 noundef %i.bd, i64 noundef 8) #21 ; 2 uses
  %i.bh = icmp eq ptr %i.bg, null
  br i1 %i.bh, label %bb.m, label %.lr.ph70.preheader

bb.m:                                             ; preds = %bb.l
  %i.bi = load ptr, ptr @stderr, align 8, !tbaa !22
  %i.bj = shl nuw nsw i64 %i.bd, 3
  %i.bk = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bi, ptr noundef nonnull @.str.4, i64 noundef %i.bj) #18 ; 0 uses
  tail call fastcc void @graphviz_exit() #20
  unreachable

gv_calloc.exit58:                                 ; preds = %bb.h
  %i.bl = icmp sgt i32 %i.e, 0
  br i1 %i.bl, label %.lr.ph70.preheader, label %.loopexit64

.lr.ph70.preheader:                               ; preds = %bb.l, %gv_calloc.exit58
  %.1110 = phi ptr [ %i.f, %gv_calloc.exit58 ], [ %i.bg, %bb.l ] ; 2 uses
  %wide.trip.count81 = zext nneg i32 %i.e to i64
  %.pre = load i32, ptr %i.b, align 4, !tbaa !23
  br label %.lr.ph70

.loopexit65:                                      ; preds = %.prol.loopexit, %.lr.ph.new, %.lr.ph70
  %exitcond82.not = icmp eq i64 %indvars.iv.next79, %wide.trip.count81
  br i1 %exitcond82.not, label %.loopexit64, label %.lr.ph70, !llvm.loop !103

.lr.ph70:                                         ; preds = %.lr.ph70.preheader, %.loopexit65
  %i.bm = phi i32 [ %.pre, %.lr.ph70.preheader ], [ %i.bp, %.loopexit65 ] ; 2 uses
  %indvars.iv78 = phi i64 [ 0, %.lr.ph70.preheader ], [ %indvars.iv.next79, %.loopexit65 ] ; 2 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %.1110, i64 %indvars.iv78 ; 4 uses
  store double 0.000000e+00, ptr %i.bn, align 8, !tbaa !27
  %indvars.iv.next79 = add nuw nsw i64 %indvars.iv78, 1 ; 3 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next79
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !23 ; 3 uses
  %i.bq = icmp slt i32 %i.bm, %i.bp
  br i1 %i.bq, label %.lr.ph, label %.loopexit65

.lr.ph:                                           ; preds = %.lr.ph70
  %i.br = sext i32 %i.bm to i64                   ; 6 uses
  %wide.trip.count = sext i32 %i.bp to i64        ; 3 uses
  %i.bs = sub nsw i64 %wide.trip.count, %i.br
  %xtraiter = and i64 %i.bs, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph
  %i.bt = getelementptr inbounds [4 x i8], ptr %i.bc, i64 %i.br
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !23
  %i.bv = sitofp i32 %i.bu to double
  %i.bw = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.br
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !23
  %i.by = sext i32 %i.bx to i64
  %i.bz = getelementptr inbounds [8 x i8], ptr %1, i64 %i.by
  %i.ca = load double, ptr %i.bz, align 8, !tbaa !27
  %i.cb = tail call double @llvm.fmuladd.f64(double %i.bv, double %i.ca, double 0.000000e+00) ; 2 uses
  store double %i.cb, ptr %i.bn, align 8, !tbaa !27
  %indvars.iv.next.prol = add nsw i64 %i.br, 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.unr = phi i64 [ %i.br, %.lr.ph ], [ %indvars.iv.next.prol, %.prol.loopexit.unr-lcssa ]
  %.unr = phi double [ 0.000000e+00, %.lr.ph ], [ %i.cb, %.prol.loopexit.unr-lcssa ]
  %i.cc = add nsw i64 %wide.trip.count, -1
  %i.cd = icmp eq i64 %i.cc, %i.br
  br i1 %i.cd, label %.loopexit65, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.prol.loopexit, %.lr.ph.new
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph.new ], [ %indvars.iv.unr, %.prol.loopexit ] ; 4 uses
  %i.ce = phi double [ %i.cw, %.lr.ph.new ], [ %.unr, %.prol.loopexit ]
  %i.cf = getelementptr inbounds [4 x i8], ptr %i.bc, i64 %indvars.iv
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !23
  %i.ch = sitofp i32 %i.cg to double
  %i.ci = getelementptr inbounds [4 x i8], ptr %i.d, i64 %indvars.iv
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !23
  %i.ck = sext i32 %i.cj to i64
  %i.cl = getelementptr inbounds [8 x i8], ptr %1, i64 %i.ck
  %i.cm = load double, ptr %i.cl, align 8, !tbaa !27
  %i.cn = tail call double @llvm.fmuladd.f64(double %i.ch, double %i.cm, double %i.ce) ; 2 uses
  store double %i.cn, ptr %i.bn, align 8, !tbaa !27
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.co = getelementptr inbounds [4 x i8], ptr %i.bc, i64 %indvars.iv.next
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !23
  %i.cq = sitofp i32 %i.cp to double
  %i.cr = getelementptr inbounds [4 x i8], ptr %i.d, i64 %indvars.iv.next
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !23
  %i.ct = sext i32 %i.cs to i64
  %i.cu = getelementptr inbounds [8 x i8], ptr %1, i64 %i.ct
  %i.cv = load double, ptr %i.cu, align 8, !tbaa !27
  %i.cw = tail call double @llvm.fmuladd.f64(double %i.cq, double %i.cv, double %i.cn) ; 2 uses
  store double %i.cw, ptr %i.bn, align 8, !tbaa !27
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %.loopexit65, label %.lr.ph.new, !llvm.loop !104

bb.n:                                             ; preds = %bb.a
  %i.cx = load ptr, ptr @stderr, align 8, !tbaa !22
  %i.cy = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cx, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 680) #18 ; 0 uses
  tail call void @abort() #19
  unreachable

.loopexit64.sink.split:                           ; preds = %bb.i, %bb.c
  %.sink = phi i64 [ %i.k, %bb.c ], [ %i.bd, %bb.i ]
  %i.cz = tail call noalias ptr @calloc(i64 noundef %.sink, i64 noundef 8) #21
  br label %.loopexit64

.loopexit64:                                      ; preds = %.loopexit65, %.loopexit, %.loopexit64.sink.split, %gv_calloc.exit58, %gv_calloc.exit
  %.2 = phi ptr [ %i.f, %gv_calloc.exit ], [ %i.f, %gv_calloc.exit58 ], [ %.0106, %.loopexit ], [ %i.cz, %.loopexit64.sink.split ], [ %.1110, %.loopexit65 ]
  store ptr %.2, ptr %2, align 8, !tbaa !106
  ret void
}

; Function Attrs: nounwind uwtable
define ptr @SparseMatrix_multiply(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !13   ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !14   ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !13   ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !14   ; 4 uses
  %i.i = load i32, ptr %0, align 8, !tbaa !16     ; 8 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.k = load i32, ptr %i.j, align 4, !tbaa !17
  %i.l = load i32, ptr %1, align 8, !tbaa !16
  %.not = icmp eq i32 %i.k, %i.l
  br i1 %.not, label %bb.b, label %bb.y

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = load i32, ptr %i.m, align 8, !tbaa !18   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.p = load i32, ptr %i.o, align 8, !tbaa !18
  %.not196 = icmp eq i32 %i.n, %i.p
  br i1 %.not196, label %bb.c, label %bb.y

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.r = load i32, ptr %i.q, align 4, !tbaa !17   ; 6 uses
  %i.s = sext i32 %i.r to i64
  %i.t = tail call noalias ptr @calloc(i64 noundef %i.s, i64 noundef 4) #21 ; 7 uses
  %.not197 = icmp eq ptr %i.t, null
  br i1 %.not197, label %bb.y, label %.preheader220

.preheader220:                                    ; preds = %bb.c
  %i.u = icmp sgt i32 %i.r, 0
  br i1 %i.u, label %.lr.ph.preheader, label %.preheader

.lr.ph.preheader:                                 ; preds = %.preheader220
  %i.v = zext nneg i32 %i.r to i64
  %i.w = shl nuw nsw i64 %i.v, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.t, i8 -1, i64 %i.w, i1 false), !tbaa !23
  br label %.preheader

.preheader:                                       ; preds = %.lr.ph.preheader, %.preheader220
  %.not199241 = icmp sgt i32 %i.i, 0              ; 4 uses
  br i1 %.not199241, label %.lr.ph244.preheader, label %.critedge

.lr.ph244.preheader:                              ; preds = %.preheader
  %wide.trip.count = zext nneg i32 %i.i to i64
  %.pre = load i32, ptr %i.b, align 4, !tbaa !23
  br label %.lr.ph244

.loopexit219:                                     ; preds = %._crit_edge, %.lr.ph244
  %.1211.lcssa = phi i64 [ %.0210242, %.lr.ph244 ], [ %.2212.lcssa, %._crit_edge ] ; 2 uses
  %exitcond315.not = icmp eq i64 %indvars.iv.next313, %wide.trip.count
  br i1 %exitcond315.not, label %.critedge, label %.lr.ph244, !llvm.loop !107

.lr.ph244:                                        ; preds = %.lr.ph244.preheader, %.loopexit219
  %i.x = phi i32 [ %.pre, %.lr.ph244.preheader ], [ %i.z, %.loopexit219 ] ; 2 uses
  %indvars.iv312 = phi i64 [ 0, %.lr.ph244.preheader ], [ %indvars.iv.next313, %.loopexit219 ] ; 2 uses
  %.0210242 = phi i64 [ 0, %.lr.ph244.preheader ], [ %.1211.lcssa, %.loopexit219 ] ; 2 uses
  %indvars.iv.next313 = add nuw nsw i64 %indvars.iv312, 1 ; 3 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next313
  %i.z = load i32, ptr %i.y, align 4, !tbaa !23   ; 3 uses
  %i.aa = icmp slt i32 %i.x, %i.z
  br i1 %i.aa, label %.lr.ph238, label %.loopexit219

.lr.ph238:                                        ; preds = %.lr.ph244
  %i.ab = sub nuw nsw i64 4294967294, %indvars.iv312 ; 2 uses
  %i.ac = sext i32 %i.x to i64
  %i.ad = trunc nuw i64 %i.ab to i32
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph238, %._crit_edge
  %indvars.iv307 = phi i64 [ %i.ac, %.lr.ph238 ], [ %indvars.iv.next308, %._crit_edge ] ; 2 uses
  %.1211235 = phi i64 [ %.0210242, %.lr.ph238 ], [ %.2212.lcssa, %._crit_edge ] ; 2 uses
  %i.ae = getelementptr inbounds [4 x i8], ptr %i.d, i64 %indvars.iv307
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !23
  %i.ag = sext i32 %i.af to i64
  %i.ah = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.ag ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !23 ; 2 uses
  %i.aj = getelementptr i8, ptr %i.ah, i64 4
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !23 ; 2 uses
  %i.al = icmp slt i32 %i.ai, %i.ak
  br i1 %i.al, label %.lr.ph234.preheader, label %._crit_edge

.lr.ph234.preheader:                              ; preds = %bb.d
  %i.am = sext i32 %i.ai to i64
  br label %.lr.ph234

.lr.ph234:                                        ; preds = %.lr.ph234.preheader, %bb.g
  %indvars.iv = phi i64 [ %i.am, %.lr.ph234.preheader ], [ %indvars.iv.next, %bb.g ] ; 2 uses
  %.2212232 = phi i64 [ %.1211235, %.lr.ph234.preheader ], [ %.3213, %bb.g ] ; 2 uses
  %i.an = getelementptr inbounds [4 x i8], ptr %i.h, i64 %indvars.iv
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !23
  %i.ap = sext i32 %i.ao to i64
  %i.aq = getelementptr inbounds [4 x i8], ptr %i.t, i64 %i.ap ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !23
  %i.as = zext i32 %i.ar to i64
  %.not198 = icmp eq i64 %i.ab, %i.as
  br i1 %.not198, label %bb.g, label %bb.e

bb.e:                                             ; preds = %.lr.ph234
  %i.at = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %.2212232, i64 1) ; 2 uses
  %i.au = extractvalue { i64, i1 } %i.at, 1
  br i1 %i.au, label %.sink.split, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.av = extractvalue { i64, i1 } %i.at, 0
  store i32 %i.ad, ptr %i.aq, align 4, !tbaa !23
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph234, %bb.f
  %.3213 = phi i64 [ %.2212232, %.lr.ph234 ], [ %i.av, %bb.f ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.ak, %lftr.wideiv
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph234, !llvm.loop !108

._crit_edge:                                      ; preds = %bb.g, %bb.d
  %.2212.lcssa = phi i64 [ %.1211235, %bb.d ], [ %.3213, %bb.g ] ; 2 uses
  %indvars.iv.next308 = add nsw i64 %indvars.iv307, 1 ; 2 uses
  %lftr.wideiv310 = trunc i64 %indvars.iv.next308 to i32
  %exitcond311.not = icmp eq i32 %i.z, %lftr.wideiv310
  br i1 %exitcond311.not, label %.loopexit219, label %bb.d, !llvm.loop !109

.critedge:                                        ; preds = %.loopexit219, %.preheader
  %.0210.lcssa = phi i64 [ 0, %.preheader ], [ %.1211.lcssa, %.loopexit219 ] ; 3 uses
  switch i32 %i.n, label %bb.h [
    i32 1, label %bb.i
    i32 4, label %bb.o
    i32 8, label %bb.u
  ]

bb.h:                                             ; preds = %.critedge
  %i.aw = load ptr, ptr @stderr, align 8, !tbaa !22
  %i.ax = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.aw, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 40) #18 ; 0 uses
  tail call void @abort() #19
  unreachable

bb.i:                                             ; preds = %.critedge
  %i.ay = tail call fastcc nonnull ptr @SparseMatrix_general_new(i32 noundef %i.i, i32 noundef %i.r, i64 noundef %.0210.lcssa, i32 noundef 1, i64 noundef 8, i32 noundef 0) ; 5 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 32
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !13 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 40
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !14
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !15
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !15 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ay, i64 48
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !15 ; 2 uses
  store i32 0, ptr %i.ba, align 4, !tbaa !23
  br i1 %.not199241, label %.lr.ph301.preheader, label %.loopexit

.lr.ph301.preheader:                              ; preds = %bb.i
  %wide.trip.count347 = zext nneg i32 %i.i to i64
  br label %.lr.ph301

.lr.ph301:                                        ; preds = %.lr.ph301.preheader, %._crit_edge294
  %indvars.iv344 = phi i64 [ 0, %.lr.ph301.preheader ], [ %indvars.iv.next345, %._crit_edge294 ] ; 3 uses
  %.5298 = phi i64 [ 0, %.lr.ph301.preheader ], [ %.6.lcssa, %._crit_edge294 ] ; 2 uses
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv344
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !23 ; 2 uses
  %indvars.iv.next345 = add nuw nsw i64 %indvars.iv344, 1 ; 4 uses
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next345 ; 2 uses
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !23 ; 2 uses
  %i.bn = icmp slt i32 %i.bk, %i.bm
  br i1 %i.bn, label %.lr.ph293, label %._crit_edge294

.lr.ph293:                                        ; preds = %.lr.ph301
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %indvars.iv344
  %i.bp = sext i32 %i.bk to i64
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph293, %._crit_edge288
  %i.bq = phi i32 [ %i.bm, %.lr.ph293 ], [ %i.db, %._crit_edge288 ]
  %indvars.iv341 = phi i64 [ %i.bp, %.lr.ph293 ], [ %indvars.iv.next342, %._crit_edge288 ] ; 3 uses
  %.6290 = phi i64 [ %.5298, %.lr.ph293 ], [ %.7.lcssa, %._crit_edge288 ] ; 2 uses
  %i.br = getelementptr inbounds [4 x i8], ptr %i.d, i64 %indvars.iv341
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !23
  %i.bt = sext i32 %i.bs to i64
  %i.bu = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.bt ; 2 uses
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !23 ; 2 uses
  %i.bw = getelementptr i8, ptr %i.bu, i64 4      ; 2 uses
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !23 ; 2 uses
  %i.by = icmp slt i32 %i.bv, %i.bx
  br i1 %i.by, label %.lr.ph287, label %._crit_edge288

.lr.ph287:                                        ; preds = %bb.j
  %i.bz = getelementptr inbounds [8 x i8], ptr %i.be, i64 %indvars.iv341 ; 2 uses
  %i.ca = sext i32 %i.bv to i64
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph287, %bb.n
  %i.cb = phi i32 [ %i.bx, %.lr.ph287 ], [ %i.cy, %bb.n ]
  %indvars.iv338 = phi i64 [ %i.ca, %.lr.ph287 ], [ %indvars.iv.next339, %bb.n ] ; 4 uses
  %.7284 = phi i64 [ %.6290, %.lr.ph287 ], [ %.8, %bb.n ] ; 5 uses
  %i.cc = getelementptr inbounds [4 x i8], ptr %i.h, i64 %indvars.iv338
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !23 ; 2 uses
  %i.ce = sext i32 %i.cd to i64
  %i.cf = getelementptr inbounds [4 x i8], ptr %i.t, i64 %i.ce ; 2 uses
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !23 ; 2 uses
  %i.ch = load i32, ptr %i.bo, align 4, !tbaa !23
  %i.ci = icmp slt i32 %i.cg, %i.ch
  br i1 %i.ci, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.cj = trunc i64 %.7284 to i32
  store i32 %i.cj, ptr %i.cf, align 4, !tbaa !23
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %.7284
  store i32 %i.cd, ptr %i.ck, align 4, !tbaa !23
  %i.cl = load double, ptr %i.bz, align 8, !tbaa !27
  %i.cm = getelementptr inbounds [8 x i8], ptr %i.bg, i64 %indvars.iv338
  %i.cn = load double, ptr %i.cm, align 8, !tbaa !27
  %i.co = fmul double %i.cl, %i.cn
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %.7284
  store double %i.co, ptr %i.cp, align 8, !tbaa !27
  %i.cq = add i64 %.7284, 1
  %.pre352 = load i32, ptr %i.bw, align 4, !tbaa !23
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.cr = load double, ptr %i.bz, align 8, !tbaa !27
  %i.cs = getelementptr inbounds [8 x i8], ptr %i.bg, i64 %indvars.iv338
  %i.ct = load double, ptr %i.cs, align 8, !tbaa !27
  %i.cu = sext i32 %i.cg to i64
  %i.cv = getelementptr inbounds [8 x i8], ptr %i.bi, i64 %i.cu ; 2 uses
  %i.cw = load double, ptr %i.cv, align 8, !tbaa !27
  %i.cx = tail call double @llvm.fmuladd.f64(double %i.cr, double %i.ct, double %i.cw)
  store double %i.cx, ptr %i.cv, align 8, !tbaa !27
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %i.cy = phi i32 [ %.pre352, %bb.l ], [ %i.cb, %bb.m ] ; 2 uses
  %.8 = phi i64 [ %i.cq, %bb.l ], [ %.7284, %bb.m ] ; 2 uses
  %indvars.iv.next339 = add nsw i64 %indvars.iv338, 1 ; 2 uses
  %i.cz = sext i32 %i.cy to i64
  %i.da = icmp slt i64 %indvars.iv.next339, %i.cz
  br i1 %i.da, label %bb.k, label %._crit_edge288.loopexit, !llvm.loop !110

._crit_edge288.loopexit:                          ; preds = %bb.n
  %.pre353 = load i32, ptr %i.bl, align 4, !tbaa !23
  br label %._crit_edge288

._crit_edge288:                                   ; preds = %._crit_edge288.loopexit, %bb.j
  %i.db = phi i32 [ %i.bq, %bb.j ], [ %.pre353, %._crit_edge288.loopexit ] ; 2 uses
  %.7.lcssa = phi i64 [ %.6290, %bb.j ], [ %.8, %._crit_edge288.loopexit ] ; 2 uses
  %indvars.iv.next342 = add nsw i64 %indvars.iv341, 1 ; 2 uses
  %i.dc = sext i32 %i.db to i64
  %i.dd = icmp slt i64 %indvars.iv.next342, %i.dc
  br i1 %i.dd, label %bb.j, label %._crit_edge294, !llvm.loop !111

._crit_edge294:                                   ; preds = %._crit_edge288, %.lr.ph301
  %.6.lcssa = phi i64 [ %.5298, %.lr.ph301 ], [ %.7.lcssa, %._crit_edge288 ] ; 3 uses
  %i.de = trunc i64 %.6.lcssa to i32
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %indvars.iv.next345
  store i32 %i.de, ptr %i.df, align 4, !tbaa !23
  %exitcond348.not = icmp eq i64 %indvars.iv.next345, %wide.trip.count347
  br i1 %exitcond348.not, label %.loopexit, label %.lr.ph301, !llvm.loop !112

bb.o:                                             ; preds = %.critedge
  %i.dg = tail call fastcc nonnull ptr @SparseMatrix_general_new(i32 noundef %i.i, i32 noundef %i.r, i64 noundef %.0210.lcssa, i32 noundef 4, i64 noundef 4, i32 noundef 0) ; 5 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 32
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !13 ; 3 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dg, i64 40
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !14
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !15
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !15 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dg, i64 48
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !15 ; 2 uses
  store i32 0, ptr %i.di, align 4, !tbaa !23
  br i1 %.not199241, label %.lr.ph282.preheader, label %.loopexit

.lr.ph282.preheader:                              ; preds = %bb.o
  %wide.trip.count336 = zext nneg i32 %i.i to i64
  br label %.lr.ph282

.lr.ph282:                                        ; preds = %.lr.ph282.preheader, %._crit_edge275
  %indvars.iv333 = phi i64 [ 0, %.lr.ph282.preheader ], [ %indvars.iv.next334, %._crit_edge275 ] ; 3 uses
  %.9279 = phi i64 [ 0, %.lr.ph282.preheader ], [ %.10.lcssa, %._crit_edge275 ] ; 2 uses
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv333
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !23 ; 2 uses
  %indvars.iv.next334 = add nuw nsw i64 %indvars.iv333, 1 ; 4 uses
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next334 ; 2 uses
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !23 ; 2 uses
  %i.dv = icmp slt i32 %i.ds, %i.du
  br i1 %i.dv, label %.lr.ph274, label %._crit_edge275

.lr.ph274:                                        ; preds = %.lr.ph282
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.di, i64 %indvars.iv333
  %i.dx = sext i32 %i.ds to i64
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph274, %._crit_edge269
  %i.dy = phi i32 [ %i.du, %.lr.ph274 ], [ %i.fj, %._crit_edge269 ]
  %indvars.iv330 = phi i64 [ %i.dx, %.lr.ph274 ], [ %indvars.iv.next331, %._crit_edge269 ] ; 3 uses
  %.10271 = phi i64 [ %.9279, %.lr.ph274 ], [ %.11.lcssa, %._crit_edge269 ] ; 2 uses
  %i.dz = getelementptr inbounds [4 x i8], ptr %i.d, i64 %indvars.iv330
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !23
  %i.eb = sext i32 %i.ea to i64
  %i.ec = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.eb ; 2 uses
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !23 ; 2 uses
  %i.ee = getelementptr i8, ptr %i.ec, i64 4      ; 2 uses
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !23
  %i.eg = icmp slt i32 %i.ed, %i.ef
  br i1 %i.eg, label %.lr.ph268, label %._crit_edge269

.lr.ph268:                                        ; preds = %bb.p
  %i.eh = getelementptr inbounds [4 x i8], ptr %i.dm, i64 %indvars.iv330 ; 2 uses
  %i.ei = sext i32 %i.ed to i64
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph268, %bb.t
  %indvars.iv327 = phi i64 [ %i.ei, %.lr.ph268 ], [ %indvars.iv.next328, %bb.t ] ; 4 uses
  %.11265 = phi i64 [ %.10271, %.lr.ph268 ], [ %.12, %bb.t ] ; 5 uses
  %i.ej = getelementptr inbounds [4 x i8], ptr %i.h, i64 %indvars.iv327
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !23 ; 2 uses
  %i.el = sext i32 %i.ek to i64
  %i.em = getelementptr inbounds [4 x i8], ptr %i.t, i64 %i.el ; 2 uses
  %i.en = load i32, ptr %i.em, align 4, !tbaa !23 ; 2 uses
  %i.eo = load i32, ptr %i.dw, align 4, !tbaa !23
  %i.ep = icmp slt i32 %i.en, %i.eo
  br i1 %i.ep, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.eq = trunc i64 %.11265 to i32
  store i32 %i.eq, ptr %i.em, align 4, !tbaa !23
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.dk, i64 %.11265
  store i32 %i.ek, ptr %i.er, align 4, !tbaa !23
  %i.es = load i32, ptr %i.eh, align 4, !tbaa !23
  %i.et = getelementptr inbounds [4 x i8], ptr %i.do, i64 %indvars.iv327
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !23
  %i.ev = mul nsw i32 %i.eu, %i.es
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %i.dq, i64 %.11265
  store i32 %i.ev, ptr %i.ew, align 4, !tbaa !23
  %i.ex = add i64 %.11265, 1
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  %i.ey = load i32, ptr %i.eh, align 4, !tbaa !23
  %i.ez = getelementptr inbounds [4 x i8], ptr %i.do, i64 %indvars.iv327
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !23
  %i.fb = mul nsw i32 %i.fa, %i.ey
  %i.fc = sext i32 %i.en to i64
  %i.fd = getelementptr inbounds [4 x i8], ptr %i.dq, i64 %i.fc ; 2 uses
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !23
  %i.ff = add nsw i32 %i.fe, %i.fb
  store i32 %i.ff, ptr %i.fd, align 4, !tbaa !23
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s
  %.12 = phi i64 [ %i.ex, %bb.r ], [ %.11265, %bb.s ] ; 2 uses
  %indvars.iv.next328 = add nsw i64 %indvars.iv327, 1 ; 2 uses
  %i.fg = load i32, ptr %i.ee, align 4, !tbaa !23
  %i.fh = sext i32 %i.fg to i64
  %i.fi = icmp slt i64 %indvars.iv.next328, %i.fh
  br i1 %i.fi, label %bb.q, label %._crit_edge269.loopexit, !llvm.loop !113

._crit_edge269.loopexit:                          ; preds = %bb.t
  %.pre351 = load i32, ptr %i.dt, align 4, !tbaa !23
  br label %._crit_edge269

._crit_edge269:                                   ; preds = %._crit_edge269.loopexit, %bb.p
  %i.fj = phi i32 [ %i.dy, %bb.p ], [ %.pre351, %._crit_edge269.loopexit ] ; 2 uses
  %.11.lcssa = phi i64 [ %.10271, %bb.p ], [ %.12, %._crit_edge269.loopexit ] ; 2 uses
  %indvars.iv.next331 = add nsw i64 %indvars.iv330, 1 ; 2 uses
  %i.fk = sext i32 %i.fj to i64
  %i.fl = icmp slt i64 %indvars.iv.next331, %i.fk
  br i1 %i.fl, label %bb.p, label %._crit_edge275, !llvm.loop !114

._crit_edge275:                                   ; preds = %._crit_edge269, %.lr.ph282
  %.10.lcssa = phi i64 [ %.9279, %.lr.ph282 ], [ %.11.lcssa, %._crit_edge269 ] ; 3 uses
  %i.fm = trunc i64 %.10.lcssa to i32
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %i.di, i64 %indvars.iv.next334
  store i32 %i.fm, ptr %i.fn, align 4, !tbaa !23
  %exitcond337.not = icmp eq i64 %indvars.iv.next334, %wide.trip.count336
  br i1 %exitcond337.not, label %.loopexit, label %.lr.ph282, !llvm.loop !115

bb.u:                                             ; preds = %.critedge
  %i.fo = tail call fastcc nonnull ptr @SparseMatrix_general_new(i32 noundef %i.i, i32 noundef %i.r, i64 noundef %.0210.lcssa, i32 noundef 8, i64 noundef 0, i32 noundef 0) ; 4 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 32
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !13 ; 3 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fo, i64 40
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !14
  store i32 0, ptr %i.fq, align 4, !tbaa !23
  br i1 %.not199241, label %.lr.ph263.preheader, label %.loopexit

.lr.ph263.preheader:                              ; preds = %bb.u
  %wide.trip.count325 = zext nneg i32 %i.i to i64
  br label %.lr.ph263

.lr.ph263:                                        ; preds = %.lr.ph263.preheader, %._crit_edge256
  %indvars.iv322 = phi i64 [ 0, %.lr.ph263.preheader ], [ %indvars.iv.next323, %._crit_edge256 ] ; 3 uses
  %.13260 = phi i64 [ 0, %.lr.ph263.preheader ], [ %.14.lcssa, %._crit_edge256 ] ; 2 uses
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv322
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !23 ; 2 uses
  %indvars.iv.next323 = add nuw nsw i64 %indvars.iv322, 1 ; 4 uses
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next323 ; 2 uses
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !23 ; 2 uses
  %i.fx = icmp slt i32 %i.fu, %i.fw
  br i1 %i.fx, label %.lr.ph255, label %._crit_edge256

.lr.ph255:                                        ; preds = %.lr.ph263
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %i.fq, i64 %indvars.iv322
  %i.fz = sext i32 %i.fu to i64
  br label %bb.v

bb.v:                                             ; preds = %.lr.ph255, %._crit_edge250
  %i.ga = phi i32 [ %i.fw, %.lr.ph255 ], [ %i.gy, %._crit_edge250 ]
  %indvars.iv319 = phi i64 [ %i.fz, %.lr.ph255 ], [ %indvars.iv.next320, %._crit_edge250 ] ; 2 uses
  %.14252 = phi i64 [ %.13260, %.lr.ph255 ], [ %.15.lcssa, %._crit_edge250 ] ; 2 uses
  %i.gb = getelementptr inbounds [4 x i8], ptr %i.d, i64 %indvars.iv319
  %i.gc = load i32, ptr %i.gb, align 4, !tbaa !23
  %i.gd = sext i32 %i.gc to i64
  %i.ge = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.gd ; 2 uses
  %i.gf = load i32, ptr %i.ge, align 4, !tbaa !23 ; 2 uses
  %i.gg = getelementptr i8, ptr %i.ge, i64 4      ; 2 uses
  %i.gh = load i32, ptr %i.gg, align 4, !tbaa !23 ; 2 uses
  %i.gi = icmp slt i32 %i.gf, %i.gh
  br i1 %i.gi, label %.lr.ph249.preheader, label %._crit_edge250

.lr.ph249.preheader:                              ; preds = %bb.v
  %i.gj = sext i32 %i.gf to i64
  br label %.lr.ph249

.lr.ph249:                                        ; preds = %.lr.ph249.preheader, %bb.x
  %i.gk = phi i32 [ %i.gh, %.lr.ph249.preheader ], [ %i.gv, %bb.x ]
  %indvars.iv316 = phi i64 [ %i.gj, %.lr.ph249.preheader ], [ %indvars.iv.next317, %bb.x ] ; 2 uses
  %.15246 = phi i64 [ %.14252, %.lr.ph249.preheader ], [ %.16, %bb.x ] ; 4 uses
  %i.gl = getelementptr inbounds [4 x i8], ptr %i.h, i64 %indvars.iv316
  %i.gm = load i32, ptr %i.gl, align 4, !tbaa !23 ; 2 uses
  %i.gn = sext i32 %i.gm to i64
  %i.go = getelementptr inbounds [4 x i8], ptr %i.t, i64 %i.gn ; 2 uses
  %i.gp = load i32, ptr %i.go, align 4, !tbaa !23
  %i.gq = load i32, ptr %i.fy, align 4, !tbaa !23
  %i.gr = icmp slt i32 %i.gp, %i.gq
  br i1 %i.gr, label %bb.w, label %bb.x

bb.w:                                             ; preds = %.lr.ph249
  %i.gs = trunc i64 %.15246 to i32
  store i32 %i.gs, ptr %i.go, align 4, !tbaa !23
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %i.fs, i64 %.15246
  store i32 %i.gm, ptr %i.gt, align 4, !tbaa !23
  %i.gu = add i64 %.15246, 1
  %.pre349 = load i32, ptr %i.gg, align 4, !tbaa !23
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %.lr.ph249
  %i.gv = phi i32 [ %.pre349, %bb.w ], [ %i.gk, %.lr.ph249 ] ; 2 uses
  %.16 = phi i64 [ %i.gu, %bb.w ], [ %.15246, %.lr.ph249 ] ; 2 uses
  %indvars.iv.next317 = add nsw i64 %indvars.iv316, 1 ; 2 uses
  %i.gw = sext i32 %i.gv to i64
  %i.gx = icmp slt i64 %indvars.iv.next317, %i.gw
  br i1 %i.gx, label %.lr.ph249, label %._crit_edge250.loopexit, !llvm.loop !116

._crit_edge250.loopexit:                          ; preds = %bb.x
  %.pre350 = load i32, ptr %i.fv, align 4, !tbaa !23
  br label %._crit_edge250

._crit_edge250:                                   ; preds = %._crit_edge250.loopexit, %bb.v
  %i.gy = phi i32 [ %i.ga, %bb.v ], [ %.pre350, %._crit_edge250.loopexit ] ; 2 uses
  %.15.lcssa = phi i64 [ %.14252, %bb.v ], [ %.16, %._crit_edge250.loopexit ] ; 2 uses
  %indvars.iv.next320 = add nsw i64 %indvars.iv319, 1 ; 2 uses
  %i.gz = sext i32 %i.gy to i64
  %i.ha = icmp slt i64 %indvars.iv.next320, %i.gz
  br i1 %i.ha, label %bb.v, label %._crit_edge256, !llvm.loop !117

._crit_edge256:                                   ; preds = %._crit_edge250, %.lr.ph263
  %.14.lcssa = phi i64 [ %.13260, %.lr.ph263 ], [ %.15.lcssa, %._crit_edge250 ] ; 3 uses
  %i.hb = trunc i64 %.14.lcssa to i32
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %i.fq, i64 %indvars.iv.next323
  store i32 %i.hb, ptr %i.hc, align 4, !tbaa !23
  %exitcond326.not = icmp eq i64 %indvars.iv.next323, %wide.trip.count325
  br i1 %exitcond326.not, label %.loopexit, label %.lr.ph263, !llvm.loop !118

.loopexit:                                        ; preds = %._crit_edge256, %._crit_edge275, %._crit_edge294, %bb.u, %bb.o, %bb.i
  %i.hd = phi ptr [ %i.ay, %bb.i ], [ %i.dg, %bb.o ], [ %i.fo, %bb.u ], [ %i.dg, %._crit_edge275 ], [ %i.ay, %._crit_edge294 ], [ %i.fo, %._crit_edge256 ] ; 2 uses
  %.17 = phi i64 [ 0, %bb.i ], [ 0, %bb.o ], [ 0, %bb.u ], [ %.10.lcssa, %._crit_edge275 ], [ %.6.lcssa, %._crit_edge294 ], [ %.14.lcssa, %._crit_edge256 ]
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 8
  store i64 %.17, ptr %i.he, align 8, !tbaa !20
  br label %.sink.split

.sink.split:                                      ; preds = %bb.e, %.loopexit
  %.2190.ph = phi ptr [ %i.hd, %.loopexit ], [ null, %bb.e ]
  tail call void @free(ptr noundef %i.t) #17
  br label %bb.y

bb.y:                                             ; preds = %.sink.split, %bb.c, %bb.b, %bb.a
  %.2190 = phi ptr [ null, %bb.b ], [ null, %bb.a ], [ null, %bb.c ], [ %.2190.ph, %.sink.split ]
  ret ptr %.2190
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define ptr @SparseMatrix_multiply3(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !13   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !14   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !13   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !14   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !13   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !14   ; 2 uses
  %i.m = load i32, ptr %0, align 8, !tbaa !16     ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.o = load i32, ptr %i.n, align 4, !tbaa !17
  %i.p = load i32, ptr %1, align 8, !tbaa !16
  %.not = icmp eq i32 %i.o, %i.p
  br i1 %.not, label %bb.b, label %bb.s

bb.b:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.r = load i32, ptr %i.q, align 4, !tbaa !17
  %i.s = load i32, ptr %2, align 8, !tbaa !16
  %.not141 = icmp eq i32 %i.r, %i.s
  br i1 %.not141, label %bb.c, label %bb.s

bb.c:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.u = load i32, ptr %i.t, align 8, !tbaa !18   ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.w = load i32, ptr %i.v, align 8, !tbaa !18
  %.not142 = icmp eq i32 %i.u, %i.w
  br i1 %.not142, label %bb.d, label %bb.s

bb.d:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.y = load i32, ptr %i.x, align 8, !tbaa !18
  %.not143 = icmp eq i32 %i.u, %i.y
  br i1 %.not143, label %bb.e, label %bb.s

bb.e:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !17  ; 4 uses
  %i.ab = sext i32 %i.aa to i64
  %i.ac = tail call noalias ptr @calloc(i64 noundef %i.ab, i64 noundef 4) #21 ; 5 uses
  %.not144 = icmp eq ptr %i.ac, null
  br i1 %.not144, label %bb.s, label %.preheader155

.preheader155:                                    ; preds = %bb.e
  %i.ad = icmp sgt i32 %i.aa, 0
  br i1 %i.ad, label %.lr.ph.preheader, label %.preheader

.lr.ph.preheader:                                 ; preds = %.preheader155
  %i.ae = zext nneg i32 %i.aa to i64
  %i.af = shl nuw nsw i64 %i.ae, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ac, i8 -1, i64 %i.af, i1 false), !tbaa !23
  br label %.preheader

.preheader:                                       ; preds = %.lr.ph.preheader, %.preheader155
  %.not146179 = icmp sgt i32 %i.m, 0              ; 2 uses
  br i1 %.not146179, label %.lr.ph182.preheader, label %.critedge

.lr.ph182.preheader:                              ; preds = %.preheader
  %wide.trip.count = zext nneg i32 %i.m to i64
  %.pre = load i32, ptr %i.b, align 4, !tbaa !23
  br label %.lr.ph182

.loopexit:                                        ; preds = %._crit_edge171, %.lr.ph182
  %.1153.lcssa = phi i64 [ %.0152180, %.lr.ph182 ], [ %.2154.lcssa, %._crit_edge171 ] ; 2 uses
  %exitcond224.not = icmp eq i64 %indvars.iv.next222, %wide.trip.count
  br i1 %exitcond224.not, label %.critedge, label %.lr.ph182, !llvm.loop !119

.lr.ph182:                                        ; preds = %.lr.ph182.preheader, %.loopexit
  %i.ag = phi i32 [ %.pre, %.lr.ph182.preheader ], [ %i.ai, %.loopexit ] ; 2 uses
  %indvars.iv221 = phi i64 [ 0, %.lr.ph182.preheader ], [ %indvars.iv.next222, %.loopexit ] ; 2 uses
  %.0152180 = phi i64 [ 0, %.lr.ph182.preheader ], [ %.1153.lcssa, %.loopexit ] ; 2 uses
  %indvars.iv.next222 = add nuw nsw i64 %indvars.iv221, 1 ; 3 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next222
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !23 ; 3 uses
  %i.aj = icmp slt i32 %i.ag, %i.ai
  br i1 %i.aj, label %.lr.ph176, label %.loopexit

.lr.ph176:                                        ; preds = %.lr.ph182
  %i.ak = sub nuw nsw i64 4294967294, %indvars.iv221 ; 2 uses
  %i.al = sext i32 %i.ag to i64
  %i.am = trunc nuw i64 %i.ak to i32
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph176, %._crit_edge171
  %indvars.iv216 = phi i64 [ %i.al, %.lr.ph176 ], [ %indvars.iv.next217, %._crit_edge171 ] ; 2 uses
  %.1153173 = phi i64 [ %.0152180, %.lr.ph176 ], [ %.2154.lcssa, %._crit_edge171 ] ; 2 uses
  %i.an = getelementptr inbounds [4 x i8], ptr %i.d, i64 %indvars.iv216
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !23
  %i.ap = sext i32 %i.ao to i64
  %i.aq = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.ap ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !23 ; 2 uses
  %i.as = getelementptr i8, ptr %i.aq, i64 4
  %i.at = load i32, ptr %i.as, align 4, !tbaa !23 ; 2 uses
  %i.au = icmp slt i32 %i.ar, %i.at
  br i1 %i.au, label %.lr.ph170.preheader, label %._crit_edge171

.lr.ph170.preheader:                              ; preds = %bb.f
  %i.av = sext i32 %i.ar to i64
  br label %.lr.ph170

.lr.ph170:                                        ; preds = %.lr.ph170.preheader, %._crit_edge
  %indvars.iv211 = phi i64 [ %i.av, %.lr.ph170.preheader ], [ %indvars.iv.next212, %._crit_edge ] ; 2 uses
  %.2154167 = phi i64 [ %.1153173, %.lr.ph170.preheader ], [ %.3.lcssa, %._crit_edge ] ; 2 uses
  %i.aw = getelementptr inbounds [4 x i8], ptr %i.h, i64 %indvars.iv211
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !23
  %i.ay = sext i32 %i.ax to i64
  %i.az = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.ay ; 2 uses
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !23 ; 2 uses
  %i.bb = getelementptr i8, ptr %i.az, i64 4
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !23 ; 2 uses
  %i.bd = icmp slt i32 %i.ba, %i.bc
  br i1 %i.bd, label %.lr.ph166.preheader, label %._crit_edge

.lr.ph166.preheader:                              ; preds = %.lr.ph170
  %i.be = sext i32 %i.ba to i64
  br label %.lr.ph166

.lr.ph166:                                        ; preds = %.lr.ph166.preheader, %bb.i
  %indvars.iv = phi i64 [ %i.be, %.lr.ph166.preheader ], [ %indvars.iv.next, %bb.i ] ; 2 uses
  %.3164 = phi i64 [ %.2154167, %.lr.ph166.preheader ], [ %.4, %bb.i ] ; 2 uses
  %i.bf = getelementptr inbounds [4 x i8], ptr %i.l, i64 %indvars.iv
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !23
  %i.bh = sext i32 %i.bg to i64
  %i.bi = getelementptr inbounds [4 x i8], ptr %i.ac, i64 %i.bh ; 2 uses
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !23
  %i.bk = zext i32 %i.bj to i64
  %.not145 = icmp eq i64 %i.ak, %i.bk
  br i1 %.not145, label %bb.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph166
  %i.bl = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %.3164, i64 1) ; 2 uses
  %i.bm = extractvalue { i64, i1 } %i.bl, 1
  br i1 %i.bm, label %.sink.split, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bn = extractvalue { i64, i1 } %i.bl, 0
  store i32 %i.am, ptr %i.bi, align 4, !tbaa !23
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph166, %bb.h
  %.4 = phi i64 [ %.3164, %.lr.ph166 ], [ %i.bn, %bb.h ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.bc, %lftr.wideiv
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph166, !llvm.loop !120

._crit_edge:                                      ; preds = %bb.i, %.lr.ph170
  %.3.lcssa = phi i64 [ %.2154167, %.lr.ph170 ], [ %.4, %bb.i ] ; 2 uses
  %indvars.iv.next212 = add nsw i64 %indvars.iv211, 1 ; 2 uses
  %lftr.wideiv214 = trunc i64 %indvars.iv.next212 to i32
  %exitcond215.not = icmp eq i32 %i.at, %lftr.wideiv214
  br i1 %exitcond215.not, label %._crit_edge171, label %.lr.ph170, !llvm.loop !121

._crit_edge171:                                   ; preds = %._crit_edge, %bb.f
  %.2154.lcssa = phi i64 [ %.1153173, %bb.f ], [ %.3.lcssa, %._crit_edge ] ; 2 uses
  %indvars.iv.next217 = add nsw i64 %indvars.iv216, 1 ; 2 uses
  %lftr.wideiv219 = trunc i64 %indvars.iv.next217 to i32
  %exitcond220.not = icmp eq i32 %i.ai, %lftr.wideiv219
  br i1 %exitcond220.not, label %.loopexit, label %bb.f, !llvm.loop !122

.critedge:                                        ; preds = %.loopexit, %.preheader
  %.0152.lcssa = phi i64 [ 0, %.preheader ], [ %.1153.lcssa, %.loopexit ]
  switch i32 %i.u, label %bb.l [
    i32 1, label %SparseMatrix_new.exit
    i32 4, label %bb.j
    i32 8, label %bb.k
  ]

bb.j:                                             ; preds = %.critedge
  br label %SparseMatrix_new.exit

bb.k:                                             ; preds = %.critedge
  br label %SparseMatrix_new.exit

bb.l:                                             ; preds = %.critedge
  %i.bo = load ptr, ptr @stderr, align 8, !tbaa !22
  %i.bp = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bo, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 40) #18 ; 0 uses
  tail call void @abort() #19
  unreachable

SparseMatrix_new.exit:                            ; preds = %.critedge, %bb.j, %bb.k
  %.0.i.i = phi i64 [ 0, %bb.k ], [ 4, %bb.j ], [ 8, %.critedge ]
  %i.bq = tail call fastcc nonnull ptr @SparseMatrix_general_new(i32 noundef %i.m, i32 noundef %i.aa, i64 noundef %.0152.lcssa, i32 noundef %i.u, i64 noundef %.0.i.i, i32 noundef 0) ; 5 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 32
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !13 ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 40
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !14
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !15
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !15
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !15 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bq, i64 48
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !15 ; 2 uses
  store i32 0, ptr %i.bs, align 4, !tbaa !23
  br i1 %.not146179, label %.lr.ph206.preheader, label %._crit_edge207

.lr.ph206.preheader:                              ; preds = %SparseMatrix_new.exit
  %wide.trip.count237 = zext nneg i32 %i.m to i64
  br label %.lr.ph206

._crit_edge207:                                   ; preds = %._crit_edge200, %SparseMatrix_new.exit
  %.6.lcssa = phi i64 [ 0, %SparseMatrix_new.exit ], [ %.7.lcssa, %._crit_edge200 ]
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  store i64 %.6.lcssa, ptr %i.cd, align 8, !tbaa !20
  br label %.sink.split

.lr.ph206:                                        ; preds = %.lr.ph206.preheader, %._crit_edge200
  %indvars.iv234 = phi i64 [ 0, %.lr.ph206.preheader ], [ %indvars.iv.next235, %._crit_edge200 ] ; 3 uses
  %.6204 = phi i64 [ 0, %.lr.ph206.preheader ], [ %.7.lcssa, %._crit_edge200 ] ; 2 uses
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv234
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !23 ; 2 uses
  %indvars.iv.next235 = add nuw nsw i64 %indvars.iv234, 1 ; 4 uses
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next235 ; 2 uses
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !23 ; 2 uses
  %i.ci = icmp slt i32 %i.cf, %i.ch
  br i1 %i.ci, label %.lr.ph199, label %._crit_edge200

.lr.ph199:                                        ; preds = %.lr.ph206
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %indvars.iv234
  %i.ck = sext i32 %i.cf to i64
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph199, %._crit_edge194
  %i.cl = phi i32 [ %i.ch, %.lr.ph199 ], [ %i.eo, %._crit_edge194 ]
  %indvars.iv231 = phi i64 [ %i.ck, %.lr.ph199 ], [ %indvars.iv.next232, %._crit_edge194 ] ; 3 uses
  %.7196 = phi i64 [ %.6204, %.lr.ph199 ], [ %.8.lcssa, %._crit_edge194 ] ; 2 uses
  %i.cm = getelementptr inbounds [4 x i8], ptr %i.d, i64 %indvars.iv231
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !23
  %i.co = sext i32 %i.cn to i64
  %i.cp = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.co ; 2 uses
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !23 ; 2 uses
  %i.cr = getelementptr i8, ptr %i.cp, i64 4      ; 2 uses
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !23 ; 2 uses
  %i.ct = icmp slt i32 %i.cq, %i.cs
  br i1 %i.ct, label %.lr.ph193, label %._crit_edge194

.lr.ph193:                                        ; preds = %bb.m
  %i.cu = getelementptr inbounds [8 x i8], ptr %i.bw, i64 %indvars.iv231 ; 2 uses
  %i.cv = sext i32 %i.cq to i64
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph193, %._crit_edge188
  %i.cw = phi i32 [ %i.cs, %.lr.ph193 ], [ %i.el, %._crit_edge188 ]
  %indvars.iv228 = phi i64 [ %i.cv, %.lr.ph193 ], [ %indvars.iv.next229, %._crit_edge188 ] ; 3 uses
  %.8190 = phi i64 [ %.7196, %.lr.ph193 ], [ %.9.lcssa, %._crit_edge188 ] ; 2 uses
  %i.cx = getelementptr inbounds [4 x i8], ptr %i.h, i64 %indvars.iv228
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !23
  %i.cz = sext i32 %i.cy to i64
  %i.da = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.cz ; 2 uses
  %i.db = load i32, ptr %i.da, align 4, !tbaa !23 ; 2 uses
  %i.dc = getelementptr i8, ptr %i.da, i64 4      ; 2 uses
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !23 ; 2 uses
  %i.de = icmp slt i32 %i.db, %i.dd
  br i1 %i.de, label %.lr.ph187, label %._crit_edge188

.lr.ph187:                                        ; preds = %bb.n
  %i.df = getelementptr inbounds [8 x i8], ptr %i.by, i64 %indvars.iv228 ; 2 uses
  %i.dg = sext i32 %i.db to i64
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph187, %bb.r
  %i.dh = phi i32 [ %i.dd, %.lr.ph187 ], [ %i.ei, %bb.r ]
  %indvars.iv225 = phi i64 [ %i.dg, %.lr.ph187 ], [ %indvars.iv.next226, %bb.r ] ; 4 uses
  %.9184 = phi i64 [ %.8190, %.lr.ph187 ], [ %.10, %bb.r ] ; 5 uses
  %i.di = getelementptr inbounds [4 x i8], ptr %i.l, i64 %indvars.iv225
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !23 ; 2 uses
  %i.dk = sext i32 %i.dj to i64
  %i.dl = getelementptr inbounds [4 x i8], ptr %i.ac, i64 %i.dk ; 2 uses
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !23 ; 2 uses
  %i.dn = load i32, ptr %i.cj, align 4, !tbaa !23
  %i.do = icmp slt i32 %i.dm, %i.dn
  br i1 %i.do, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.dp = trunc i64 %.9184 to i32
  store i32 %i.dp, ptr %i.dl, align 4, !tbaa !23
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %.9184
  store i32 %i.dj, ptr %i.dq, align 4, !tbaa !23
  %i.dr = load double, ptr %i.cu, align 8, !tbaa !27
  %i.ds = load double, ptr %i.df, align 8, !tbaa !27
  %i.dt = fmul double %i.dr, %i.ds
  %i.du = getelementptr inbounds [8 x i8], ptr %i.ca, i64 %indvars.iv225
  %i.dv = load double, ptr %i.du, align 8, !tbaa !27
  %i.dw = fmul double %i.dt, %i.dv
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %.9184
  store double %i.dw, ptr %i.dx, align 8, !tbaa !27
  %i.dy = add i64 %.9184, 1
  %.pre239 = load i32, ptr %i.dc, align 4, !tbaa !23
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.dz = load double, ptr %i.cu, align 8, !tbaa !27
  %i.ea = load double, ptr %i.df, align 8, !tbaa !27
  %i.eb = fmul double %i.dz, %i.ea
  %i.ec = getelementptr inbounds [8 x i8], ptr %i.ca, i64 %indvars.iv225
  %i.ed = load double, ptr %i.ec, align 8, !tbaa !27
  %i.ee = sext i32 %i.dm to i64
  %i.ef = getelementptr inbounds [8 x i8], ptr %i.cc, i64 %i.ee ; 2 uses
  %i.eg = load double, ptr %i.ef, align 8, !tbaa !27
  %i.eh = tail call double @llvm.fmuladd.f64(double %i.eb, double %i.ed, double %i.eg)
  store double %i.eh, ptr %i.ef, align 8, !tbaa !27
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q
  %i.ei = phi i32 [ %.pre239, %bb.p ], [ %i.dh, %bb.q ] ; 2 uses
  %.10 = phi i64 [ %i.dy, %bb.p ], [ %.9184, %bb.q ] ; 2 uses
  %indvars.iv.next226 = add nsw i64 %indvars.iv225, 1 ; 2 uses
  %i.ej = sext i32 %i.ei to i64
  %i.ek = icmp slt i64 %indvars.iv.next226, %i.ej
  br i1 %i.ek, label %bb.o, label %._crit_edge188.loopexit, !llvm.loop !123

._crit_edge188.loopexit:                          ; preds = %bb.r
  %.pre240 = load i32, ptr %i.cr, align 4, !tbaa !23
  br label %._crit_edge188

._crit_edge188:                                   ; preds = %._crit_edge188.loopexit, %bb.n
  %i.el = phi i32 [ %i.cw, %bb.n ], [ %.pre240, %._crit_edge188.loopexit ] ; 2 uses
  %.9.lcssa = phi i64 [ %.8190, %bb.n ], [ %.10, %._crit_edge188.loopexit ] ; 2 uses
  %indvars.iv.next229 = add nsw i64 %indvars.iv228, 1 ; 2 uses
  %i.em = sext i32 %i.el to i64
  %i.en = icmp slt i64 %indvars.iv.next229, %i.em
  br i1 %i.en, label %bb.n, label %._crit_edge194.loopexit, !llvm.loop !124

._crit_edge194.loopexit:                          ; preds = %._crit_edge188
  %.pre241 = load i32, ptr %i.cg, align 4, !tbaa !23
  br label %._crit_edge194

._crit_edge194:                                   ; preds = %._crit_edge194.loopexit, %bb.m
  %i.eo = phi i32 [ %i.cl, %bb.m ], [ %.pre241, %._crit_edge194.loopexit ] ; 2 uses
  %.8.lcssa = phi i64 [ %.7196, %bb.m ], [ %.9.lcssa, %._crit_edge194.loopexit ] ; 2 uses
  %indvars.iv.next232 = add nsw i64 %indvars.iv231, 1 ; 2 uses
  %i.ep = sext i32 %i.eo to i64
  %i.eq = icmp slt i64 %indvars.iv.next232, %i.ep
  br i1 %i.eq, label %bb.m, label %._crit_edge200, !llvm.loop !125

._crit_edge200:                                   ; preds = %._crit_edge194, %.lr.ph206
  %.7.lcssa = phi i64 [ %.6204, %.lr.ph206 ], [ %.8.lcssa, %._crit_edge194 ] ; 3 uses
  %i.er = trunc i64 %.7.lcssa to i32
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %indvars.iv.next235
  store i32 %i.er, ptr %i.es, align 4, !tbaa !23
  %exitcond238.not = icmp eq i64 %indvars.iv.next235, %wide.trip.count237
  br i1 %exitcond238.not, label %._crit_edge207, label %.lr.ph206, !llvm.loop !126

.sink.split:                                      ; preds = %bb.g, %._crit_edge207
  %.2.ph = phi ptr [ %i.bq, %._crit_edge207 ], [ null, %bb.g ]
  tail call void @free(ptr noundef %i.ac) #17
  br label %bb.s

bb.s:                                             ; preds = %.sink.split, %bb.e, %bb.c, %bb.d, %bb.b, %bb.a
  %.2 = phi ptr [ null, %bb.c ], [ null, %bb.a ], [ null, %bb.b ], [ null, %bb.e ], [ null, %bb.d ], [ %.2.ph, %.sink.split ]
  ret ptr %.2
}

; Function Attrs: nounwind uwtable
define noundef ptr @SparseMatrix_sum_repeat_entries(ptr nofree noundef captures(ret: address, provenance) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !13   ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !14   ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load i32, ptr %i.e, align 8, !tbaa !18
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !17   ; 4 uses
  %i.i = sext i32 %i.h to i64                     ; 4 uses
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %gv_calloc.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %mul.ov.i = icmp slt i32 %i.h, 0
  br i1 %mul.ov.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = load ptr, ptr @stderr, align 8, !tbaa !22
  %i.k = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.j, ptr noundef nonnull @.str.3, i64 noundef %i.i, i64 noundef 4) #18 ; 0 uses
  tail call fastcc void @graphviz_exit() #20
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.l = tail call noalias ptr @calloc(i64 noundef %i.i, i64 noundef 4) #21 ; 3 uses
  %i.m = icmp eq ptr %i.l, null
end_hunk_2
begin_hunk_3_@SparseMatrix_remove_diagonal:bb.a
  br i1 %.not101, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph127
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %.4126
  store i32 %i.ar, ptr %i.at, align 4, !tbaa !23
  %i.au = getelementptr inbounds [4 x i8], ptr %i.ai, i64 %indvars.iv159
  %i.av = load i32, ptr %i.au, align 4, !tbaa !23
  %i.aw = add i64 %.4126, 1
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %.4126
  store i32 %i.av, ptr %i.ax, align 4, !tbaa !23
  %.pre171 = load i32, ptr %i.al, align 4, !tbaa !23
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph127, %bb.g
  %i.ay = phi i32 [ %.pre171, %bb.g ], [ %i.ap, %.lr.ph127 ] ; 3 uses
  %.5 = phi i64 [ %i.aw, %bb.g ], [ %.4126, %.lr.ph127 ] ; 2 uses
  %indvars.iv.next160 = add nsw i64 %indvars.iv159, 1 ; 2 uses
  %i.az = sext i32 %i.ay to i64
  %i.ba = icmp slt i64 %indvars.iv.next160, %i.az
  br i1 %i.ba, label %.lr.ph127, label %._crit_edge128, !llvm.loop !135

._crit_edge128:                                   ; preds = %bb.h, %.preheader103
  %.4.lcssa = phi i64 [ %.3135, %.preheader103 ], [ %.5, %bb.h ] ; 3 uses
  %.lcssa108 = phi i32 [ %i.am, %.preheader103 ], [ %i.ay, %bb.h ]
  %i.bb = trunc i64 %.4.lcssa to i32
  store i32 %i.bb, ptr %i.al, align 4, !tbaa !23
  %i.bc = load i32, ptr %0, align 8, !tbaa !16
  %i.bd = sext i32 %i.bc to i64
  %i.be = icmp slt i64 %indvars.iv.next163, %i.bd
  br i1 %i.be, label %.preheader103, label %.sink.split, !llvm.loop !136

.preheader104:                                    ; preds = %.preheader105, %._crit_edge
  %indvars.iv156 = phi i64 [ %indvars.iv.next157, %._crit_edge ], [ 0, %.preheader105 ] ; 2 uses
  %.6122 = phi i64 [ %.7.lcssa, %._crit_edge ], [ 0, %.preheader105 ] ; 2 uses
  %.285121 = phi i32 [ %.lcssa111, %._crit_edge ], [ %i.e, %.preheader105 ] ; 2 uses
  %indvars.iv.next157 = add nuw nsw i64 %indvars.iv156, 1 ; 3 uses
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next157 ; 3 uses
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !23 ; 3 uses
  %i.bh = icmp slt i32 %.285121, %i.bg
  br i1 %i.bh, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader104
  %i.bi = sext i32 %.285121 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.j
  %i.bj = phi i32 [ %i.bg, %.lr.ph.preheader ], [ %i.bp, %bb.j ]
  %indvars.iv = phi i64 [ %i.bi, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.j ] ; 2 uses
  %.7116 = phi i64 [ %.6122, %.lr.ph.preheader ], [ %.8, %bb.j ] ; 3 uses
  %i.bk = getelementptr inbounds [4 x i8], ptr %i.d, i64 %indvars.iv
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !23 ; 2 uses
  %i.bm = zext i32 %i.bl to i64
  %.not100 = icmp eq i64 %indvars.iv156, %i.bm
  br i1 %.not100, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.lr.ph
  %i.bn = add i64 %.7116, 1
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %.7116
  store i32 %i.bl, ptr %i.bo, align 4, !tbaa !23
  %.pre = load i32, ptr %i.bf, align 4, !tbaa !23
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph, %bb.i
  %i.bp = phi i32 [ %.pre, %bb.i ], [ %i.bj, %.lr.ph ] ; 3 uses
  %.8 = phi i64 [ %i.bn, %bb.i ], [ %.7116, %.lr.ph ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.bq = sext i32 %i.bp to i64
  %i.br = icmp slt i64 %indvars.iv.next, %i.bq
  br i1 %i.br, label %.lr.ph, label %._crit_edge, !llvm.loop !137

._crit_edge:                                      ; preds = %bb.j, %.preheader104
  %.7.lcssa = phi i64 [ %.6122, %.preheader104 ], [ %.8, %bb.j ] ; 3 uses
  %.lcssa111 = phi i32 [ %i.bg, %.preheader104 ], [ %i.bp, %bb.j ]
  %i.bs = trunc i64 %.7.lcssa to i32
  store i32 %i.bs, ptr %i.bf, align 4, !tbaa !23
  %i.bt = load i32, ptr %0, align 8, !tbaa !16
  %i.bu = sext i32 %i.bt to i64
  %i.bv = icmp slt i64 %indvars.iv.next157, %i.bu
  br i1 %i.bv, label %.preheader104, label %.sink.split, !llvm.loop !138

bb.k:                                             ; preds = %bb.b
  %i.bw = load ptr, ptr @stderr, align 8, !tbaa !22
  %i.bx = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bw, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 1058) #18 ; 0 uses
  tail call void @abort() #19
  unreachable

.sink.split:                                      ; preds = %._crit_edge, %._crit_edge128, %._crit_edge142, %.preheader105, %bb.f, %bb.c
  %.0.lcssa.sink = phi i64 [ %.4.lcssa, %._crit_edge128 ], [ %.1.lcssa, %._crit_edge142 ], [ 0, %bb.c ], [ 0, %bb.f ], [ 0, %.preheader105 ], [ %.7.lcssa, %._crit_edge ]
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.0.lcssa.sink, ptr %i.by, align 8, !tbaa !20
  br label %bb.l

bb.l:                                             ; preds = %.sink.split, %bb.a
  ret ptr %0
}

; Function Attrs: nofree nounwind uwtable
define noundef ptr @SparseMatrix_divide_row_by_degree(ptr nofree noundef readonly returned captures(address_is_null, ret: address, provenance) %0) local_unnamed_addr #2 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.loopexit27, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !13   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i32, ptr %i.c, align 8, !tbaa !18
  switch i32 %i.d, label %bb.e [
    i32 1, label %bb.c
    i32 4, label %bb.d
    i32 8, label %.loopexit27
  ]

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !15   ; 2 uses
  %i.g = load i32, ptr %0, align 8, !tbaa !16     ; 2 uses
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %.lr.ph30.preheader, label %.loopexit27

.lr.ph30.preheader:                               ; preds = %bb.c
  %wide.trip.count35 = zext nneg i32 %i.g to i64
  %.pre = load i32, ptr %i.b, align 4, !tbaa !23
  br label %.lr.ph30

.loopexit:                                        ; preds = %.lr.ph, %middle.block, %.lr.ph30
  %exitcond36.not = icmp eq i64 %indvars.iv.next33, %wide.trip.count35
  br i1 %exitcond36.not, label %.loopexit27, label %.lr.ph30, !llvm.loop !139

.lr.ph30:                                         ; preds = %.lr.ph30.preheader, %.loopexit
  %i.i = phi i32 [ %.pre, %.lr.ph30.preheader ], [ %i.k, %.loopexit ] ; 3 uses
  %indvars.iv32 = phi i64 [ 0, %.lr.ph30.preheader ], [ %indvars.iv.next33, %.loopexit ]
  %indvars.iv.next33 = add nuw nsw i64 %indvars.iv32, 1 ; 3 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next33
  %i.k = load i32, ptr %i.j, align 4, !tbaa !23   ; 4 uses
  %i.l = sub nsw i32 %i.k, %i.i
  %i.m = sitofp i32 %i.l to double                ; 2 uses
  %i.n = icmp slt i32 %i.i, %i.k
  br i1 %i.n, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %.lr.ph30
  %i.o = sext i32 %i.i to i64                     ; 4 uses
  %wide.trip.count = sext i32 %i.k to i64         ; 2 uses
  %i.p = sub nsw i64 %wide.trip.count, %i.o       ; 3 uses
  %min.iters.check = icmp ult i64 %i.p, 2
  br i1 %min.iters.check, label %.lr.ph.preheader40, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.p, -2                       ; 3 uses
  %i.q = add nsw i64 %n.vec, %i.o
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.m, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  %invariant.gep = getelementptr [8 x i8], ptr %i.f, i64 %i.o
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %wide.load = load <2 x double>, ptr %gep, align 8, !tbaa !27
  %i.r = fdiv <2 x double> %wide.load, %broadcast.splat
  store <2 x double> %i.r, ptr %gep, align 8, !tbaa !27
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.s = icmp eq i64 %index.next, %n.vec
  br i1 %i.s, label %middle.block, label %vector.body, !llvm.loop !140

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.p, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph.preheader40

.lr.ph.preheader40:                               ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ %i.o, %.lr.ph.preheader ], [ %i.q, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader40, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader40 ] ; 2 uses
  %i.t = getelementptr inbounds [8 x i8], ptr %i.f, i64 %indvars.iv ; 2 uses
  %i.u = load double, ptr %i.t, align 8, !tbaa !27
  %i.v = fdiv double %i.u, %i.m
  store double %i.v, ptr %i.t, align 8, !tbaa !27
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !141

bb.d:                                             ; preds = %bb.b
  %i.w = load ptr, ptr @stderr, align 8, !tbaa !22
  %i.x = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.w, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 1149) #18 ; 0 uses
  tail call void @abort() #19
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.y = load ptr, ptr @stderr, align 8, !tbaa !22
  %i.z = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.y, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 1154) #18 ; 0 uses
  tail call void @abort() #19
  unreachable

.loopexit27:                                      ; preds = %.loopexit, %bb.c, %bb.b, %bb.a
  ret ptr %0
}

; Function Attrs: nounwind uwtable
define noundef ptr @SparseMatrix_get_real_adjacency_matrix_symmetrized(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !17   ; 4 uses
  %i.c = load i32, ptr %0, align 8, !tbaa !16
  %.not39 = icmp eq i32 %i.b, %i.c
  br i1 %.not39, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !14
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !13
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !20   ; 2 uses
  %i.j = tail call fastcc nonnull ptr @SparseMatrix_general_new(i32 noundef %i.b, i32 noundef %i.b, i64 noundef %i.i, i32 noundef 8, i64 noundef 0, i32 noundef 0) ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 32 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !13
  %i.m = add nsw i32 %i.b, 1
  %i.n = sext i32 %i.m to i64
  %i.o = shl nsw i64 %i.n, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.l, ptr align 4 %i.g, i64 %i.o, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 40 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !14
  %i.r = shl i64 %i.i, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.q, ptr align 4 %i.e, i64 %i.r, i1 false)
  %i.s = load i64, ptr %i.h, align 8, !tbaa !20
  %i.t = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 %i.s, ptr %i.t, align 8, !tbaa !20
  %i.u = tail call ptr @SparseMatrix_symmetrize(ptr noundef nonnull %i.j, i1 noundef zeroext true) ; 7 uses
  %i.v = load ptr, ptr %i.k, align 8, !tbaa !13
  tail call void @free(ptr noundef %i.v) #17
  %i.w = load ptr, ptr %i.p, align 8, !tbaa !14
  tail call void @free(ptr noundef %i.w) #17
  %i.x = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !15
  tail call void @free(ptr noundef %i.y) #17
  tail call void @free(ptr noundef nonnull %i.j) #17
  %i.z = tail call ptr @SparseMatrix_remove_diagonal(ptr noundef %i.u) ; 0 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !20 ; 9 uses
  %.not41 = icmp eq i64 %i.ab, 0
  br i1 %.not41, label %gv_calloc.exit.thread, label %bb.d

gv_calloc.exit.thread:                            ; preds = %bb.c
  %i.ac = tail call noalias ptr @calloc(i64 noundef 0, i64 noundef 8) #21
  %i.ad = getelementptr inbounds nuw i8, ptr %i.u, i64 48
  store ptr %i.ac, ptr %i.ad, align 8, !tbaa !15
  br label %._crit_edge

bb.d:                                             ; preds = %bb.c
  %mul.ov.i = icmp ugt i64 %i.ab, 2305843009213693951
  br i1 %mul.ov.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ae = load ptr, ptr @stderr, align 8, !tbaa !22
  %i.af = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ae, ptr noundef nonnull @.str.3, i64 noundef %i.ab, i64 noundef 8) #18 ; 0 uses
  tail call fastcc void @graphviz_exit() #20
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.ag = tail call noalias ptr @calloc(i64 noundef %i.ab, i64 noundef 8) #21 ; 4 uses
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %bb.g, label %.lr.ph.preheader

bb.g:                                             ; preds = %bb.f
  %i.ai = load ptr, ptr @stderr, align 8, !tbaa !22
  %i.aj = shl nuw i64 %i.ab, 3
  %i.ak = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ai, ptr noundef nonnull @.str.4, i64 noundef %i.aj) #18 ; 0 uses
  tail call fastcc void @graphviz_exit() #20
  unreachable

.lr.ph.preheader:                                 ; preds = %bb.f
  %i.al = getelementptr inbounds nuw i8, ptr %i.u, i64 48
  store ptr %i.ag, ptr %i.al, align 8, !tbaa !15
  %min.iters.check = icmp ult i64 %i.ab, 4
  br i1 %min.iters.check, label %.lr.ph.preheader48, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.ab, 2305843009213693948     ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %index ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  store <2 x double> splat (double 1.000000e+00), ptr %i.am, align 8, !tbaa !27
  store <2 x double> splat (double 1.000000e+00), ptr %i.an, align 8, !tbaa !27
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ao = icmp eq i64 %index.next, %n.vec
  br i1 %i.ao, label %middle.block, label %vector.body, !llvm.loop !142

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ab, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader48

.lr.ph.preheader48:                               ; preds = %.lr.ph.preheader, %middle.block
  %.042.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %gv_calloc.exit.thread
  %i.ap = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  store i32 1, ptr %i.ap, align 8, !tbaa !18
  %i.aq = getelementptr inbounds nuw i8, ptr %i.u, i64 64
  store i64 8, ptr %i.aq, align 8, !tbaa !30
  br label %bb.h

.lr.ph:                                           ; preds = %.lr.ph.preheader48, %.lr.ph
  %.042 = phi i64 [ %i.as, %.lr.ph ], [ %.042.ph, %.lr.ph.preheader48 ] ; 2 uses
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %.042
  store double 1.000000e+00, ptr %i.ar, align 8, !tbaa !27
  %i.as = add nuw i64 %.042, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.as, %i.ab
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !143

bb.h:                                             ; preds = %._crit_edge, %bb.b, %bb.a
  %.1 = phi ptr [ null, %bb.a ], [ %i.u, %._crit_edge ], [ null, %bb.b ]
  ret ptr %.1
}

; Function Attrs: nounwind uwtable
define noundef ptr @SparseMatrix_apply_fun(ptr nofree noundef readonly returned captures(address_is_null, ret: address, provenance) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.loopexit26, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load i32, ptr %i.a, align 8, !tbaa !19
  %.not24 = icmp eq i32 %i.b, 0
  br i1 %.not24, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i32, ptr %i.c, align 8, !tbaa !18
  %.not25 = icmp eq i32 %i.d, 1
  br i1 %.not25, label %bb.d, label %.loopexit26

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !15
  %i.g = load i32, ptr %0, align 8, !tbaa !16     ; 2 uses
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %.lr.ph29, label %.loopexit26

.lr.ph29:                                         ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.pre = load ptr, ptr %i.i, align 8, !tbaa !13
  br label %bb.e

.loopexit.loopexit:                               ; preds = %.lr.ph
  %.pre34 = load i32, ptr %0, align 8, !tbaa !16
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.e
  %i.j = phi i32 [ %.pre34, %.loopexit.loopexit ], [ %i.n, %bb.e ] ; 2 uses
  %i.k = phi ptr [ %i.y, %.loopexit.loopexit ], [ %i.o, %bb.e ]
  %i.l = sext i32 %i.j to i64
  %i.m = icmp slt i64 %indvars.iv.next32, %i.l
  br i1 %i.m, label %bb.e, label %.loopexit26, !llvm.loop !144

bb.e:                                             ; preds = %.lr.ph29, %.loopexit
  %i.n = phi i32 [ %i.g, %.lr.ph29 ], [ %i.j, %.loopexit ]
  %i.o = phi ptr [ %.pre, %.lr.ph29 ], [ %i.k, %.loopexit ] ; 3 uses
  %indvars.iv31 = phi i64 [ 0, %.lr.ph29 ], [ %indvars.iv.next32, %.loopexit ] ; 2 uses
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv31
  %i.q = load i32, ptr %i.p, align 4, !tbaa !23   ; 2 uses
  %indvars.iv.next32 = add nuw nsw i64 %indvars.iv31, 1 ; 4 uses
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv.next32
  %i.s = load i32, ptr %i.r, align 4, !tbaa !23
  %i.t = icmp slt i32 %i.q, %i.s
  br i1 %i.t, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.e
  %i.u = sext i32 %i.q to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %i.u, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %i.v = getelementptr inbounds [8 x i8], ptr %i.f, i64 %indvars.iv ; 2 uses
  %i.w = load double, ptr %i.v, align 8, !tbaa !27
  %i.x = tail call double %1(double noundef %i.w) #17
  store double %i.x, ptr %i.v, align 8, !tbaa !27
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.y = load ptr, ptr %i.i, align 8, !tbaa !13   ; 2 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv.next32
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !23
  %i.ab = sext i32 %i.aa to i64
  %i.ac = icmp slt i64 %indvars.iv.next, %i.ab
  br i1 %i.ac, label %.lr.ph, label %.loopexit.loopexit, !llvm.loop !145

.loopexit26:                                      ; preds = %.loopexit, %bb.d, %bb.c, %bb.a
  ret ptr %0
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @SparseMatrix_has_diagonal(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #10 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !16     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !13   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !14
  %i.f = icmp sgt i32 %i.a, 0
  br i1 %i.f, label %.lr.ph24.preheader, label %.loopexit17

.lr.ph24.preheader:                               ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %i.a to i64
  %.pre = load i32, ptr %i.c, align 4, !tbaa !23
  br label %.lr.ph24

.loopexit:                                        ; preds = %bb.b, %.lr.ph24
  %exitcond30.not = icmp eq i64 %indvars.iv.next28, %wide.trip.count
  br i1 %exitcond30.not, label %.loopexit17, label %.lr.ph24, !llvm.loop !146

.lr.ph24:                                         ; preds = %.lr.ph24.preheader, %.loopexit
  %i.g = phi i32 [ %.pre, %.lr.ph24.preheader ], [ %i.i, %.loopexit ] ; 2 uses
  %indvars.iv27 = phi i64 [ 0, %.lr.ph24.preheader ], [ %indvars.iv.next28, %.loopexit ] ; 2 uses
  %indvars.iv.next28 = add nuw nsw i64 %indvars.iv27, 1 ; 3 uses
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.next28
  %i.i = load i32, ptr %i.h, align 4, !tbaa !23   ; 3 uses
  %i.j = icmp slt i32 %i.g, %i.i
  br i1 %i.j, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %.lr.ph24
  %i.k = sext i32 %i.g to i64
  br label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.i, %lftr.wideiv
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !147

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %indvars.iv = phi i64 [ %i.k, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.l = getelementptr inbounds [4 x i8], ptr %i.e, i64 %indvars.iv
  %i.m = load i32, ptr %i.l, align 4, !tbaa !23
  %i.n = zext i32 %i.m to i64
  %i.o = icmp eq i64 %indvars.iv27, %i.n
  br i1 %i.o, label %.loopexit17, label %bb.b

.loopexit17:                                      ; preds = %.loopexit, %.lr.ph, %bb.a
  %i.p = phi i1 [ true, %.lr.ph ], [ false, %bb.a ], [ false, %.loopexit ]
  ret i1 %i.p
}

; Function Attrs: nounwind uwtable
define noundef ptr @SparseMatrix_weakly_connected_components(ptr noundef captures(address) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 7 uses
  %i.b = alloca ptr, align 8                      ; 9 uses
  %i.c = alloca ptr, align 8                      ; 7 uses
  %i.d = alloca i32, align 4                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store ptr null, ptr %i.a, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  store ptr null, ptr %i.b, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #17
  store ptr null, ptr %i.c, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #17
  %i.e = load i32, ptr %0, align 8, !tbaa !16     ; 5 uses
  %i.f = tail call zeroext i1 @SparseMatrix_is_symmetric(ptr noundef nonnull %0, i1 noundef zeroext true)
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = tail call ptr @SparseMatrix_symmetrize(ptr noundef nonnull %0, i1 noundef zeroext true)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.026 = phi ptr [ %0, %bb.a ], [ %i.g, %bb.b ]  ; 8 uses
  %i.h = add nsw i32 %i.e, 1                      ; 2 uses
  %i.i = sext i32 %i.h to i64                     ; 4 uses
  %.not30 = icmp eq i32 %i.h, 0
  br i1 %.not30, label %gv_calloc.exit.thread, label %bb.d

gv_calloc.exit.thread:                            ; preds = %bb.c
  %i.j = tail call noalias ptr @calloc(i64 noundef %i.i, i64 noundef 4) #21
  store i32 0, ptr %1, align 4, !tbaa !23
  br label %._crit_edge

bb.d:                                             ; preds = %bb.c
  %mul.ov.i = icmp slt i32 %i.e, -1
  br i1 %mul.ov.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.k = load ptr, ptr @stderr, align 8, !tbaa !22
  %i.l = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.k, ptr noundef nonnull @.str.3, i64 noundef %i.i, i64 noundef 4) #18 ; 0 uses
  tail call fastcc void @graphviz_exit() #20
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.m = tail call noalias ptr @calloc(i64 noundef %i.i, i64 noundef 4) #21 ; 8 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.g, label %gv_calloc.exit

bb.g:                                             ; preds = %bb.f
  %i.o = load ptr, ptr @stderr, align 8, !tbaa !22
  %i.p = shl nuw nsw i64 %i.i, 2
  %i.q = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.o, ptr noundef nonnull @.str.4, i64 noundef %i.p) #18 ; 0 uses
  tail call fastcc void @graphviz_exit() #20
  unreachable

gv_calloc.exit:                                   ; preds = %bb.f
  store i32 0, ptr %1, align 4, !tbaa !23
  %.not57 = icmp eq i32 %i.e, 0
  br i1 %.not57, label %._crit_edge, label %bb.h

bb.h:                                             ; preds = %gv_calloc.exit
  %wide.trip.count = zext nneg i32 %i.e to i64
  call fastcc void @SparseMatrix_level_sets(ptr noundef %.026, i32 noundef 0, ptr noundef %i.d, ptr noundef %i.a, ptr noundef %i.b, ptr noundef %i.c, i1 noundef zeroext false)
  %i.r = load ptr, ptr %i.b, align 8, !tbaa !32   ; 2 uses
  store ptr %i.r, ptr %2, align 8, !tbaa !32
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !32  ; 3 uses
  %.pre39 = load i32, ptr %1, align 4, !tbaa !23  ; 3 uses
  %.phi.trans.insert40 = sext i32 %.pre39 to i64
  %.phi.trans.insert41 = getelementptr inbounds [4 x i8], ptr %i.m, i64 %.phi.trans.insert40
  %.pre42 = load i32, ptr %.phi.trans.insert41, align 4, !tbaa !23
  %.pre36 = load i32, ptr %i.d, align 4, !tbaa !23
  %.phi.trans.insert = sext i32 %.pre36 to i64
  %.phi.trans.insert37 = getelementptr inbounds [4 x i8], ptr %.pre, i64 %.phi.trans.insert
  %.pre38 = load i32, ptr %.phi.trans.insert37, align 4, !tbaa !23 ; 2 uses
  %i.s = sext i32 %.pre38 to i64
  %i.t = getelementptr inbounds [4 x i8], ptr %i.r, i64 %i.s
  store ptr %i.t, ptr %i.b, align 8, !tbaa !32
  %i.u = sext i32 %.pre39 to i64
  %i.v = getelementptr inbounds [4 x i8], ptr %i.m, i64 %i.u
  %i.w = add nsw i32 %.pre42, %.pre38
  %i.x = getelementptr i8, ptr %i.v, i64 4
  store i32 %i.w, ptr %i.x, align 4, !tbaa !23
  %i.y = add nsw i32 %.pre39, 1
  store i32 %i.y, ptr %1, align 4, !tbaa !23
  %exitcond.peel.not = icmp eq i32 %i.e, 1
  br i1 %exitcond.peel.not, label %._crit_edge, label %.lr.ph.peel.next

.lr.ph.peel.next:                                 ; preds = %bb.h, %bb.j
  %i.z = phi ptr [ %i.al, %bb.j ], [ %.pre, %bb.h ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.j ], [ 1, %bb.h ] ; 3 uses
  %i.aa = load ptr, ptr %i.c, align 8, !tbaa !32
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %indvars.iv
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !23
  %i.ad = icmp slt i32 %i.ac, 0
  br i1 %i.ad, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.lr.ph.peel.next
  %i.ae = trunc nuw nsw i64 %indvars.iv to i32
  call fastcc void @SparseMatrix_level_sets(ptr noundef %.026, i32 noundef %i.ae, ptr noundef %i.d, ptr noundef %i.a, ptr noundef %i.b, ptr noundef %i.c, i1 noundef zeroext false)
  %.pre49 = load i32, ptr %1, align 4, !tbaa !23  ; 2 uses
  %.phi.trans.insert50 = sext i32 %.pre49 to i64  ; 2 uses
  %.phi.trans.insert51 = getelementptr inbounds [4 x i8], ptr %i.m, i64 %.phi.trans.insert50
  %.pre52 = load i32, ptr %.phi.trans.insert51, align 4, !tbaa !23
  %.pre48 = load ptr, ptr %i.b, align 8, !tbaa !32
  %.pre43 = load ptr, ptr %i.a, align 8, !tbaa !32 ; 2 uses
  %.pre44 = load i32, ptr %i.d, align 4, !tbaa !23
  %.phi.trans.insert45 = sext i32 %.pre44 to i64
  %.phi.trans.insert46 = getelementptr inbounds [4 x i8], ptr %.pre43, i64 %.phi.trans.insert45
  %.pre47 = load i32, ptr %.phi.trans.insert46, align 4, !tbaa !23 ; 2 uses
  %i.af = sext i32 %.pre47 to i64
  %i.ag = getelementptr inbounds [4 x i8], ptr %.pre48, i64 %i.af
  store ptr %i.ag, ptr %i.b, align 8, !tbaa !32
  %i.ah = getelementptr inbounds [4 x i8], ptr %i.m, i64 %.phi.trans.insert50
  %i.ai = add nsw i32 %.pre52, %.pre47
  %i.aj = getelementptr i8, ptr %i.ah, i64 4
  store i32 %i.ai, ptr %i.aj, align 4, !tbaa !23
  %i.ak = add nsw i32 %.pre49, 1
  store i32 %i.ak, ptr %1, align 4, !tbaa !23
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph.peel.next, %bb.i
  %i.al = phi ptr [ %i.z, %.lr.ph.peel.next ], [ %.pre43, %bb.i ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.peel.next, !llvm.loop !148

._crit_edge:                                      ; preds = %bb.j, %bb.h, %gv_calloc.exit.thread, %gv_calloc.exit
  %i.am = phi ptr [ %i.j, %gv_calloc.exit.thread ], [ %i.m, %gv_calloc.exit ], [ %i.m, %bb.h ], [ %i.m, %bb.j ]
  %i.an = phi ptr [ null, %gv_calloc.exit.thread ], [ null, %gv_calloc.exit ], [ %.pre, %bb.h ], [ %i.al, %bb.j ]
  %.not = icmp eq ptr %.026, %0
  %.not.i = icmp eq ptr %.026, null
  %or.cond = or i1 %.not, %.not.i
  br i1 %or.cond, label %SparseMatrix_delete.exit, label %bb.k

bb.k:                                             ; preds = %._crit_edge
  %i.ao = getelementptr inbounds nuw i8, ptr %.026, i64 32
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !13
  tail call void @free(ptr noundef %i.ap) #17
  %i.aq = getelementptr inbounds nuw i8, ptr %.026, i64 40
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !14
  tail call void @free(ptr noundef %i.ar) #17
  %i.as = getelementptr inbounds nuw i8, ptr %.026, i64 48
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !15
  tail call void @free(ptr noundef %i.at) #17
  tail call void @free(ptr noundef nonnull %.026) #17
  br label %SparseMatrix_delete.exit

SparseMatrix_delete.exit:                         ; preds = %bb.k, %._crit_edge
  tail call void @free(ptr noundef %i.an) #17
  %i.au = load ptr, ptr %i.c, align 8, !tbaa !32
  tail call void @free(ptr noundef %i.au) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret ptr %i.am
}

; Function Attrs: nofree nounwind uwtable
define internal fastcc void @SparseMatrix_level_sets(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef nonnull captures(none) %2, ptr nofree noundef nonnull captures(none) %3, ptr nofree noundef nonnull captures(none) %4, ptr nofree noundef nonnull captures(none) %5, i1 noundef zeroext %6) unnamed_addr #2 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !16     ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !14
  %i.f = load ptr, ptr %3, align 8, !tbaa !32
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.a, 2                      ; 2 uses
  %i.h = sext i32 %i.g to i64                     ; 4 uses
  %.not88 = icmp eq i32 %i.g, 0
  br i1 %.not88, label %.thread, label %bb.c

.thread:                                          ; preds = %bb.b
  %i.i = tail call noalias ptr @calloc(i64 noundef %i.h, i64 noundef 4) #21
  br label %gv_calloc.exit

bb.c:                                             ; preds = %bb.b
  %mul.ov.i = icmp slt i32 %i.a, -2
  br i1 %mul.ov.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = load ptr, ptr @stderr, align 8, !tbaa !22
  %i.k = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.j, ptr noundef nonnull @.str.3, i64 noundef %i.h, i64 noundef 4) #18 ; 0 uses
  tail call fastcc void @graphviz_exit() #20
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.l = tail call noalias ptr @calloc(i64 noundef %i.h, i64 noundef 4) #21 ; 2 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.f, label %gv_calloc.exit

bb.f:                                             ; preds = %bb.e
  %i.n = load ptr, ptr @stderr, align 8, !tbaa !22
  %i.o = shl nuw nsw i64 %i.h, 2
  %i.p = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.n, ptr noundef nonnull @.str.4, i64 noundef %i.o) #18 ; 0 uses
  tail call fastcc void @graphviz_exit() #20
  unreachable
end_hunk_3
begin_hunk_4_@SparseMatrix_get_submatrix:bb.a

bb.as:                                            ; preds = %.lr.ph329, %bb.ar
  %.10 = phi i64 [ %.9326, %.lr.ph329 ], [ %i.hw, %bb.ar ] ; 2 uses
  %indvars.iv.next391 = add nsw i64 %indvars.iv390, 1 ; 2 uses
  %exitcond394.not = icmp eq i64 %indvars.iv.next391, %wide.trip.count393
  br i1 %exitcond394.not, label %.loopexit279, label %.lr.ph329, !llvm.loop !179

.loopexit279:                                     ; preds = %bb.as, %bb.aq, %.lr.ph333
  %.11 = phi i64 [ %.8331, %.lr.ph333 ], [ %.8331, %bb.aq ], [ %.10, %bb.as ] ; 2 uses
  %indvars.iv.next396 = add nuw nsw i64 %indvars.iv395, 1 ; 2 uses
  %exitcond399.not = icmp eq i64 %indvars.iv.next396, %wide.trip.count398
  br i1 %exitcond399.not, label %.loopexit278, label %.lr.ph333, !llvm.loop !180

bb.at:                                            ; preds = %._crit_edge315
  %.not275 = icmp eq i64 %.0197.lcssa, 0
  br i1 %.not275, label %.thread267, label %bb.au

bb.au:                                            ; preds = %bb.at
  %mul.ov.i244 = icmp ugt i64 %.0197.lcssa, 4611686018427387903
  br i1 %mul.ov.i244, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.hx = load ptr, ptr @stderr, align 8, !tbaa !22
  %i.hy = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.hx, ptr noundef nonnull @.str.3, i64 noundef %.0197.lcssa, i64 noundef 4) #18 ; 0 uses
  tail call fastcc void @graphviz_exit() #20
  unreachable

bb.aw:                                            ; preds = %bb.au
  %i.hz = tail call noalias ptr @calloc(i64 noundef %.0197.lcssa, i64 noundef 4) #21 ; 2 uses
  %i.ia = icmp eq ptr %i.hz, null
  br i1 %i.ia, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.ib = load ptr, ptr @stderr, align 8, !tbaa !22
  %i.ic = shl nuw i64 %.0197.lcssa, 2
  %i.id = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ib, ptr noundef nonnull @.str.4, i64 noundef %i.ic) #18 ; 0 uses
  tail call fastcc void @graphviz_exit() #20
  unreachable

.thread267:                                       ; preds = %bb.at
  %i.ie = tail call noalias ptr @calloc(i64 noundef 0, i64 noundef 4) #21
  %i.if = tail call noalias ptr @calloc(i64 noundef 0, i64 noundef 4) #21
  br label %gv_calloc.exit249

bb.ay:                                            ; preds = %bb.aw
  %i.ig = tail call noalias ptr @calloc(i64 noundef %.0197.lcssa, i64 noundef 4) #21 ; 2 uses
  %i.ih = icmp eq ptr %i.ig, null
  br i1 %i.ih, label %bb.az, label %gv_calloc.exit249

bb.az:                                            ; preds = %bb.ay
  %i.ii = load ptr, ptr @stderr, align 8, !tbaa !22
  %i.ij = shl nuw i64 %.0197.lcssa, 2
  %i.ik = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ii, ptr noundef nonnull @.str.4, i64 noundef %i.ij) #18 ; 0 uses
  tail call fastcc void @graphviz_exit() #20
  unreachable

gv_calloc.exit249:                                ; preds = %.thread267, %bb.ay
  %i.il = phi ptr [ %i.if, %.thread267 ], [ %i.ig, %bb.ay ] ; 5 uses
  %i.im = phi ptr [ %i.ie, %.thread267 ], [ %i.hz, %bb.ay ] ; 5 uses
  br i1 %.not447, label %.loopexit278, label %.lr.ph324.preheader

.lr.ph324.preheader:                              ; preds = %gv_calloc.exit249
  %wide.trip.count388 = zext nneg i32 %i.e to i64
  br label %.lr.ph324

.lr.ph324:                                        ; preds = %.lr.ph324.preheader, %.loopexit281
  %indvars.iv385 = phi i64 [ 0, %.lr.ph324.preheader ], [ %indvars.iv.next386, %.loopexit281 ] ; 3 uses
  %.12322 = phi i64 [ 0, %.lr.ph324.preheader ], [ %.15, %.loopexit281 ] ; 7 uses
  %i.in = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv385
  %i.io = load i32, ptr %i.in, align 4, !tbaa !23 ; 4 uses
  %i.ip = icmp slt i32 %i.io, 0
  br i1 %i.ip, label %.loopexit281, label %bb.ba

bb.ba:                                            ; preds = %.lr.ph324
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv385 ; 2 uses
  %i.ir = load i32, ptr %i.iq, align 4, !tbaa !23 ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %i.iq, i64 4
  %i.it = load i32, ptr %i.is, align 4, !tbaa !23 ; 2 uses
  %i.iu = icmp slt i32 %i.ir, %i.it
  br i1 %i.iu, label %.lr.ph320.preheader, label %.loopexit281

.lr.ph320.preheader:                              ; preds = %bb.ba
  %i.iv = sext i32 %i.ir to i64                   ; 5 uses
  %wide.trip.count383 = sext i32 %i.it to i64     ; 3 uses
  %i.iw = sub nsw i64 %wide.trip.count383, %i.iv
  %xtraiter480 = and i64 %i.iw, 1
  %lcmp.mod481.not = icmp eq i64 %xtraiter480, 0
  br i1 %lcmp.mod481.not, label %.lr.ph320.prol.loopexit, label %.lr.ph320.prol

.lr.ph320.prol:                                   ; preds = %.lr.ph320.preheader
  %i.ix = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.iv
  %i.iy = load i32, ptr %i.ix, align 4, !tbaa !23
  %i.iz = sext i32 %i.iy to i64
  %i.ja = getelementptr inbounds [4 x i8], ptr %i.ac, i64 %i.iz
  %i.jb = load i32, ptr %i.ja, align 4, !tbaa !23 ; 2 uses
  %i.jc = icmp slt i32 %i.jb, 0
  br i1 %i.jc, label %.lr.ph320.prol.loopexit.unr-lcssa, label %bb.bb

bb.bb:                                            ; preds = %.lr.ph320.prol
  %i.jd = getelementptr inbounds nuw [4 x i8], ptr %i.im, i64 %.12322
  store i32 %i.io, ptr %i.jd, align 4, !tbaa !23
  %i.je = add i64 %.12322, 1
  %i.jf = getelementptr inbounds nuw [4 x i8], ptr %i.il, i64 %.12322
  store i32 %i.jb, ptr %i.jf, align 4, !tbaa !23
  br label %.lr.ph320.prol.loopexit.unr-lcssa

.lr.ph320.prol.loopexit.unr-lcssa:                ; preds = %bb.bb, %.lr.ph320.prol
  %.14.prol = phi i64 [ %.12322, %.lr.ph320.prol ], [ %i.je, %bb.bb ] ; 2 uses
  %indvars.iv.next381.prol = add nsw i64 %i.iv, 1
  br label %.lr.ph320.prol.loopexit

.lr.ph320.prol.loopexit:                          ; preds = %.lr.ph320.prol.loopexit.unr-lcssa, %.lr.ph320.preheader
  %.14.lcssa.unr = phi i64 [ poison, %.lr.ph320.preheader ], [ %.14.prol, %.lr.ph320.prol.loopexit.unr-lcssa ]
  %indvars.iv380.unr = phi i64 [ %i.iv, %.lr.ph320.preheader ], [ %indvars.iv.next381.prol, %.lr.ph320.prol.loopexit.unr-lcssa ]
  %.13317.unr = phi i64 [ %.12322, %.lr.ph320.preheader ], [ %.14.prol, %.lr.ph320.prol.loopexit.unr-lcssa ]
  %i.jg = add nsw i64 %wide.trip.count383, -1
  %i.jh = icmp eq i64 %i.jg, %i.iv
  br i1 %i.jh, label %.loopexit281, label %.lr.ph320

.lr.ph320:                                        ; preds = %.lr.ph320.prol.loopexit, %bb.be
  %indvars.iv380 = phi i64 [ %indvars.iv.next381.1, %bb.be ], [ %indvars.iv380.unr, %.lr.ph320.prol.loopexit ] ; 3 uses
  %.13317 = phi i64 [ %.14.1, %bb.be ], [ %.13317.unr, %.lr.ph320.prol.loopexit ] ; 4 uses
  %i.ji = getelementptr inbounds [4 x i8], ptr %i.d, i64 %indvars.iv380
  %i.jj = load i32, ptr %i.ji, align 4, !tbaa !23
  %i.jk = sext i32 %i.jj to i64
  %i.jl = getelementptr inbounds [4 x i8], ptr %i.ac, i64 %i.jk
  %i.jm = load i32, ptr %i.jl, align 4, !tbaa !23 ; 2 uses
  %i.jn = icmp slt i32 %i.jm, 0
  br i1 %i.jn, label %.lr.ph320.1, label %bb.bc

bb.bc:                                            ; preds = %.lr.ph320
  %i.jo = getelementptr inbounds nuw [4 x i8], ptr %i.im, i64 %.13317
  store i32 %i.io, ptr %i.jo, align 4, !tbaa !23
  %i.jp = add i64 %.13317, 1
  %i.jq = getelementptr inbounds nuw [4 x i8], ptr %i.il, i64 %.13317
  store i32 %i.jm, ptr %i.jq, align 4, !tbaa !23
  br label %.lr.ph320.1

.lr.ph320.1:                                      ; preds = %.lr.ph320, %bb.bc
  %.14 = phi i64 [ %.13317, %.lr.ph320 ], [ %i.jp, %bb.bc ] ; 4 uses
  %i.jr = getelementptr [4 x i8], ptr %i.d, i64 %indvars.iv380
  %i.js = getelementptr i8, ptr %i.jr, i64 4
  %i.jt = load i32, ptr %i.js, align 4, !tbaa !23
  %i.ju = sext i32 %i.jt to i64
  %i.jv = getelementptr inbounds [4 x i8], ptr %i.ac, i64 %i.ju
  %i.jw = load i32, ptr %i.jv, align 4, !tbaa !23 ; 2 uses
  %i.jx = icmp slt i32 %i.jw, 0
  br i1 %i.jx, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %.lr.ph320.1
  %i.jy = getelementptr inbounds nuw [4 x i8], ptr %i.im, i64 %.14
  store i32 %i.io, ptr %i.jy, align 4, !tbaa !23
  %i.jz = add i64 %.14, 1
  %i.ka = getelementptr inbounds nuw [4 x i8], ptr %i.il, i64 %.14
  store i32 %i.jw, ptr %i.ka, align 4, !tbaa !23
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %.lr.ph320.1
  %.14.1 = phi i64 [ %.14, %.lr.ph320.1 ], [ %i.jz, %bb.bd ] ; 2 uses
  %indvars.iv.next381.1 = add nsw i64 %indvars.iv380, 2 ; 2 uses
  %exitcond384.not.1 = icmp eq i64 %indvars.iv.next381.1, %wide.trip.count383
  br i1 %exitcond384.not.1, label %.loopexit281, label %.lr.ph320, !llvm.loop !181

.loopexit281:                                     ; preds = %.lr.ph320.prol.loopexit, %bb.be, %bb.ba, %.lr.ph324
  %.15 = phi i64 [ %.12322, %.lr.ph324 ], [ %.12322, %bb.ba ], [ %.14.lcssa.unr, %.lr.ph320.prol.loopexit ], [ %.14.1, %bb.be ] ; 2 uses
  %indvars.iv.next386 = add nuw nsw i64 %indvars.iv385, 1 ; 2 uses
  %exitcond389.not = icmp eq i64 %indvars.iv.next386, %wide.trip.count388
  br i1 %exitcond389.not, label %.loopexit278, label %.lr.ph324, !llvm.loop !182

bb.bf:                                            ; preds = %._crit_edge315
  %i.kb = load ptr, ptr @stderr, align 8, !tbaa !22
  %i.kc = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.kb, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 1601) #18 ; 0 uses
  tail call void @abort() #19
  unreachable

.loopexit278:                                     ; preds = %.loopexit281, %.loopexit279, %.loopexit, %gv_calloc.exit249, %gv_calloc.exit241, %gv_calloc.exit229
  %.16 = phi i64 [ %.11, %.loopexit279 ], [ %.7, %.loopexit ], [ 0, %gv_calloc.exit229 ], [ 0, %gv_calloc.exit241 ], [ 0, %gv_calloc.exit249 ], [ %.15, %.loopexit281 ]
  %.0193 = phi ptr [ %i.hb, %.loopexit279 ], [ %i.fh, %.loopexit ], [ %i.fh, %gv_calloc.exit229 ], [ %i.hb, %gv_calloc.exit241 ], [ %i.im, %gv_calloc.exit249 ], [ %i.im, %.loopexit281 ] ; 2 uses
  %.0192 = phi ptr [ %i.ha, %.loopexit279 ], [ %i.fg, %.loopexit ], [ %i.fg, %gv_calloc.exit229 ], [ %i.ha, %gv_calloc.exit241 ], [ %i.il, %gv_calloc.exit249 ], [ %i.il, %.loopexit281 ] ; 2 uses
  %.0191 = phi ptr [ %i.gz, %.loopexit279 ], [ %i.ff, %.loopexit ], [ %i.ff, %gv_calloc.exit229 ], [ %i.gz, %gv_calloc.exit241 ], [ null, %gv_calloc.exit249 ], [ null, %.loopexit281 ] ; 3 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ke = load i64, ptr %i.kd, align 8, !tbaa !30
  %i.kf = tail call fastcc ptr @SparseMatrix_from_coordinate_arrays_internal(i64 noundef %.16, i32 noundef %1, i32 noundef %2, ptr noundef readonly %.0193, ptr noundef readonly %.0192, ptr noundef readonly %.0191, i32 noundef %i.ci, i64 noundef %i.ke, i32 noundef 1) ; 2 uses
  tail call void @free(ptr noundef %i.ac) #17
  tail call void @free(ptr noundef %i.s) #17
  tail call void @free(ptr noundef %.0193) #17
  tail call void @free(ptr noundef %.0192) #17
  %.not211 = icmp eq ptr %.0191, null
  br i1 %.not211, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %.loopexit278
  tail call void @free(ptr noundef nonnull %.0191) #17
  br label %bb.bh

bb.bh:                                            ; preds = %.loopexit278, %bb.bg, %bb.a
  %.0201 = phi ptr [ null, %bb.a ], [ %i.kf, %bb.bg ], [ %i.kf, %.loopexit278 ]
  ret ptr %.0201
}

; Function Attrs: nounwind uwtable
define nonnull ptr @SparseMatrix_distance_matrix(ptr noundef captures(address) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !17   ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store ptr null, ptr %i.a, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  store ptr null, ptr %i.b, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #17
  store ptr null, ptr %i.c, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #17
  %i.g = tail call zeroext i1 @SparseMatrix_is_symmetric(ptr noundef %0, i1 noundef zeroext false)
  br i1 %i.g, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = tail call ptr @SparseMatrix_symmetrize(ptr noundef nonnull %0, i1 noundef zeroext false)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.054 = phi ptr [ %0, %bb.a ], [ %i.h, %bb.b ]  ; 7 uses
  %i.i = sext i32 %i.f to i64                     ; 2 uses
  %i.j = mul nsw i64 %i.i, %i.i
  %i.k = tail call fastcc nonnull ptr @SparseMatrix_general_new(i32 noundef %i.f, i32 noundef %i.f, i64 noundef %i.j, i32 noundef 4, i64 noundef 4, i32 noundef 0) ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !15   ; 8 uses
  %i.n = ptrtoaddr ptr %i.m to i64
  %.not60 = icmp slt i32 %i.f, 0
  br i1 %.not60, label %._crit_edge74, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !13   ; 2 uses
  %i.q = add nuw i32 %i.f, 1
  %wide.trip.count = zext i32 %i.q to i64         ; 3 uses
  %min.iters.check = icmp ult i32 %i.f, 7
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %wide.trip.count, 4294967288   ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.f, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4)
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %index ; 2 uses
  %i.s = mul <4 x i32> %broadcast.splat, %vec.ind
  %i.t = mul <4 x i32> %broadcast.splat, %step.add
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store <4 x i32> %i.s, ptr %i.r, align 4, !tbaa !23
  store <4 x i32> %i.t, ptr %i.u, align 4, !tbaa !23
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.v = icmp eq i64 %index.next, %n.vec
  br i1 %i.v, label %middle.block, label %vector.body, !llvm.loop !183

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.preheader59, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

.preheader59:                                     ; preds = %scalar.ph, %middle.block
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %._crit_edge74, label %.preheader58.lr.ph

.preheader58.lr.ph:                               ; preds = %.preheader59
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !14   ; 7 uses
  %i.y = ptrtoaddr ptr %i.x to i64
  %i.z = zext nneg i32 %i.f to i64                ; 7 uses
  %min.iters.check104 = icmp ult i32 %i.f, 8
  %i.aa = sub i64 %i.y, %i.n
  %diff.check = icmp ugt i64 %i.aa, -32
  %or.cond116 = select i1 %min.iters.check104, i1 true, i1 %diff.check
  %n.vec106 = and i64 %i.z, 2147483640            ; 3 uses
  %cmp.n114 = icmp eq i64 %n.vec106, %i.z
  %xtraiter = and i64 %i.z, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.preheader58

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv
  %i.ac = trunc i64 %indvars.iv to i32
  %i.ad = mul i32 %i.f, %i.ac
  store i32 %i.ad, ptr %i.ab, align 4, !tbaa !23
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader59, label %scalar.ph, !llvm.loop !184

.preheader58:                                     ; preds = %.preheader58.lr.ph, %._crit_edge
  %indvars.iv81 = phi i64 [ 0, %.preheader58.lr.ph ], [ %indvars.iv.next82, %._crit_edge ] ; 2 uses
  %i.ae = mul nuw nsw i64 %indvars.iv81, %i.z     ; 6 uses
  br i1 %or.cond116, label %scalar.ph103.preheader, label %vector.body107

vector.body107:                                   ; preds = %.preheader58, %vector.body107
  %index108 = phi i64 [ %index.next111, %vector.body107 ], [ 0, %.preheader58 ] ; 2 uses
  %vec.ind109 = phi <4 x i32> [ %vec.ind.next112, %vector.body107 ], [ <i32 0, i32 1, i32 2, i32 3>, %.preheader58 ] ; 3 uses
  %step.add110 = add <4 x i32> %vec.ind109, splat (i32 4)
  %i.af = add nuw nsw i64 %index108, %i.ae        ; 2 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.af ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  store <4 x i32> %vec.ind109, ptr %i.ag, align 4, !tbaa !23
  store <4 x i32> %step.add110, ptr %i.ah, align 4, !tbaa !23
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.af ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  store <4 x i32> splat (i32 -1), ptr %i.ai, align 4, !tbaa !23
  store <4 x i32> splat (i32 -1), ptr %i.aj, align 4, !tbaa !23
  %index.next111 = add nuw i64 %index108, 8       ; 2 uses
  %vec.ind.next112 = add <4 x i32> %vec.ind109, splat (i32 8)
  %i.ak = icmp eq i64 %index.next111, %n.vec106
  br i1 %i.ak, label %middle.block113, label %vector.body107, !llvm.loop !185

middle.block113:                                  ; preds = %vector.body107
  br i1 %cmp.n114, label %._crit_edge, label %scalar.ph103.preheader

scalar.ph103.preheader:                           ; preds = %.preheader58, %middle.block113
  %indvars.iv76.ph = phi i64 [ 0, %.preheader58 ], [ %n.vec106, %middle.block113 ] ; 3 uses
  br i1 %lcmp.mod.not, label %scalar.ph103.prol.loopexit, label %scalar.ph103.prol

scalar.ph103.prol:                                ; preds = %scalar.ph103.preheader, %scalar.ph103.prol
  %indvars.iv76.prol = phi i64 [ %indvars.iv.next77.prol, %scalar.ph103.prol ], [ %indvars.iv76.ph, %scalar.ph103.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph103.prol ], [ 0, %scalar.ph103.preheader ]
  %i.al = add nuw nsw i64 %indvars.iv76.prol, %i.ae ; 2 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.al
  %i.an = trunc nuw nsw i64 %indvars.iv76.prol to i32
  store i32 %i.an, ptr %i.am, align 4, !tbaa !23
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.al
  store i32 -1, ptr %i.ao, align 4, !tbaa !23
  %indvars.iv.next77.prol = add nuw nsw i64 %indvars.iv76.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph103.prol.loopexit, label %scalar.ph103.prol, !llvm.loop !186

scalar.ph103.prol.loopexit:                       ; preds = %scalar.ph103.prol, %scalar.ph103.preheader
  %indvars.iv76.unr = phi i64 [ %indvars.iv76.ph, %scalar.ph103.preheader ], [ %indvars.iv.next77.prol, %scalar.ph103.prol ]
  %i.ap = sub nsw i64 %indvars.iv76.ph, %i.z
  %i.aq = icmp ugt i64 %i.ap, -4
  br i1 %i.aq, label %._crit_edge, label %scalar.ph103

scalar.ph103:                                     ; preds = %scalar.ph103.prol.loopexit, %scalar.ph103
  %indvars.iv76 = phi i64 [ %indvars.iv.next77.3, %scalar.ph103 ], [ %indvars.iv76.unr, %scalar.ph103.prol.loopexit ] ; 6 uses
  %i.ar = add nuw nsw i64 %indvars.iv76, %i.ae    ; 2 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.ar
  %i.at = trunc nuw nsw i64 %indvars.iv76 to i32
  store i32 %i.at, ptr %i.as, align 4, !tbaa !23
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.ar
  store i32 -1, ptr %i.au, align 4, !tbaa !23
  %indvars.iv.next77 = add nuw nsw i64 %indvars.iv76, 1 ; 2 uses
  %i.av = add nuw nsw i64 %indvars.iv.next77, %i.ae ; 2 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.av
  %i.ax = trunc nuw nsw i64 %indvars.iv.next77 to i32
  store i32 %i.ax, ptr %i.aw, align 4, !tbaa !23
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.av
  store i32 -1, ptr %i.ay, align 4, !tbaa !23
  %indvars.iv.next77.1 = add nuw nsw i64 %indvars.iv76, 2 ; 2 uses
  %i.az = add nuw nsw i64 %indvars.iv.next77.1, %i.ae ; 2 uses
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.az
  %i.bb = trunc nuw nsw i64 %indvars.iv.next77.1 to i32
  store i32 %i.bb, ptr %i.ba, align 4, !tbaa !23
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.az
  store i32 -1, ptr %i.bc, align 4, !tbaa !23
  %indvars.iv.next77.2 = add nuw nsw i64 %indvars.iv76, 3 ; 2 uses
  %i.bd = add nuw nsw i64 %indvars.iv.next77.2, %i.ae ; 2 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.bd
  %i.bf = trunc nuw nsw i64 %indvars.iv.next77.2 to i32
  store i32 %i.bf, ptr %i.be, align 4, !tbaa !23
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.bd
  store i32 -1, ptr %i.bg, align 4, !tbaa !23
  %indvars.iv.next77.3 = add nuw nsw i64 %indvars.iv76, 4 ; 2 uses
  %exitcond80.not.3 = icmp eq i64 %indvars.iv.next77.3, %i.z
  br i1 %exitcond80.not.3, label %._crit_edge, label %scalar.ph103, !llvm.loop !187

._crit_edge:                                      ; preds = %scalar.ph103.prol.loopexit, %scalar.ph103, %middle.block113
  %indvars.iv.next82 = add nuw nsw i64 %indvars.iv81, 1 ; 2 uses
  %exitcond85.not = icmp eq i64 %indvars.iv.next82, %i.z
  br i1 %exitcond85.not, label %.lr.ph73, label %.preheader58, !llvm.loop !188

.lr.ph73:                                         ; preds = %._crit_edge, %._crit_edge71
  %.072 = phi i32 [ %i.cb, %._crit_edge71 ], [ 0, %._crit_edge ] ; 3 uses
  call fastcc void @SparseMatrix_level_sets(ptr noundef %.054, i32 noundef %.072, ptr noundef %i.d, ptr noundef %i.a, ptr noundef %i.b, ptr noundef %i.c, i1 noundef zeroext true)
  %i.bh = load i32, ptr %i.d, align 4, !tbaa !23  ; 2 uses
  %i.bi = icmp sgt i32 %i.bh, 0
  br i1 %i.bi, label %.lr.ph70, label %._crit_edge71

.lr.ph70:                                         ; preds = %.lr.ph73
  %i.bj = load ptr, ptr %i.a, align 8, !tbaa !32  ; 2 uses
  %i.bk = mul nuw nsw i32 %.072, %i.f
  %i.bl = load ptr, ptr %i.b, align 8
  %wide.trip.count92 = zext nneg i32 %i.bh to i64
  %.pre = load i32, ptr %i.bj, align 4, !tbaa !23
  br label %bb.d

.loopexit:                                        ; preds = %.lr.ph67, %bb.d
  %i.bm = phi i32 [ %i.bp, %bb.d ], [ %i.by, %.lr.ph67 ]
  %exitcond93.not = icmp eq i64 %indvars.iv.next90, %wide.trip.count92
  br i1 %exitcond93.not, label %._crit_edge71, label %bb.d, !llvm.loop !189

bb.d:                                             ; preds = %.lr.ph70, %.loopexit
  %i.bn = phi i32 [ %.pre, %.lr.ph70 ], [ %i.bm, %.loopexit ] ; 2 uses
  %indvars.iv89 = phi i64 [ 0, %.lr.ph70 ], [ %indvars.iv.next90, %.loopexit ] ; 2 uses
  %indvars.iv.next90 = add nuw nsw i64 %indvars.iv89, 1 ; 3 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %indvars.iv.next90 ; 2 uses
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !23 ; 2 uses
  %i.bq = icmp slt i32 %i.bn, %i.bp
  br i1 %i.bq, label %.lr.ph67.preheader, label %.loopexit

.lr.ph67.preheader:                               ; preds = %bb.d
  %i.br = sext i32 %i.bn to i64
  %i.bs = trunc nuw nsw i64 %indvars.iv89 to i32
  br label %.lr.ph67

.lr.ph67:                                         ; preds = %.lr.ph67.preheader, %.lr.ph67
  %indvars.iv86 = phi i64 [ %i.br, %.lr.ph67.preheader ], [ %indvars.iv.next87, %.lr.ph67 ] ; 2 uses
  %i.bt = getelementptr inbounds [4 x i8], ptr %i.bl, i64 %indvars.iv86
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !23
  %i.bv = add nsw i32 %i.bu, %i.bk
  %i.bw = sext i32 %i.bv to i64
end_hunk_4
