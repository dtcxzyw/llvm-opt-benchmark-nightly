Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/graphviz/original/SparseMatrix?download=true
inline.NumInlined: 68
inline.NumDeleted: 10
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 20
begin_hunk_0_@SparseMatrix_multiply_vector:bb.a

bb.m:                                             ; preds = %bb.l
  %i.bi = load ptr, ptr @stderr, align 8, !tbaa !21
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
  br i1 %exitcond82.not, label %.loopexit64, label %.lr.ph70, !llvm.loop !104

.lr.ph70:                                         ; preds = %.lr.ph70.preheader, %.loopexit65
  %i.bm = phi i32 [ %.pre, %.lr.ph70.preheader ], [ %i.bp, %.loopexit65 ] ; 2 uses
  %indvars.iv78 = phi i64 [ 0, %.lr.ph70.preheader ], [ %indvars.iv.next79, %.loopexit65 ] ; 2 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %.1110, i64 %indvars.iv78 ; 4 uses
  store double 0.000000e+00, ptr %i.bn, align 8, !tbaa !31
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
  %i.ca = load double, ptr %i.bz, align 8, !tbaa !31
  %i.cb = tail call double @llvm.fmuladd.f64(double %i.bv, double %i.ca, double 0.000000e+00) ; 2 uses
  store double %i.cb, ptr %i.bn, align 8, !tbaa !31
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
  %i.cm = load double, ptr %i.cl, align 8, !tbaa !31
  %i.cn = tail call double @llvm.fmuladd.f64(double %i.ch, double %i.cm, double %i.ce) ; 2 uses
  store double %i.cn, ptr %i.bn, align 8, !tbaa !31
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.co = getelementptr inbounds [4 x i8], ptr %i.bc, i64 %indvars.iv.next
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !23
  %i.cq = sitofp i32 %i.cp to double
  %i.cr = getelementptr inbounds [4 x i8], ptr %i.d, i64 %indvars.iv.next
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !23
  %i.ct = sext i32 %i.cs to i64
  %i.cu = getelementptr inbounds [8 x i8], ptr %1, i64 %i.ct
  %i.cv = load double, ptr %i.cu, align 8, !tbaa !31
  %i.cw = tail call double @llvm.fmuladd.f64(double %i.cq, double %i.cv, double %i.cn) ; 2 uses
  store double %i.cw, ptr %i.bn, align 8, !tbaa !31
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %.loopexit65, label %.lr.ph.new, !llvm.loop !105

bb.n:                                             ; preds = %bb.a
  %i.cx = load ptr, ptr @stderr, align 8, !tbaa !21
  %i.cy = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cx, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 680) #18 ; 0 uses
  tail call void @abort() #19
  unreachable

.loopexit64.sink.split:                           ; preds = %bb.i, %bb.c
  %.sink = phi i64 [ %i.k, %bb.c ], [ %i.bd, %bb.i ]
  %i.cz = tail call noalias ptr @calloc(i64 noundef %.sink, i64 noundef 8) #21
  br label %.loopexit64

.loopexit64:                                      ; preds = %.loopexit65, %.loopexit, %.loopexit64.sink.split, %gv_calloc.exit58, %gv_calloc.exit
  %.2 = phi ptr [ %i.f, %gv_calloc.exit ], [ %i.f, %gv_calloc.exit58 ], [ %.0106, %.loopexit ], [ %i.cz, %.loopexit64.sink.split ], [ %.1110, %.loopexit65 ]
  store ptr %.2, ptr %2, align 8, !tbaa !100
  ret void
}

; Function Attrs: nounwind uwtable
define ptr @SparseMatrix_multiply(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8    ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !14   ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !8    ; 4 uses
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
  br i1 %exitcond315.not, label %.critedge, label %.lr.ph244, !llvm.loop !106

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
  %.2212232 = phi i64 [ %.1211235, %.lr.ph234.preheader ], [ %.3213, %bb.g ] ; 3 uses
  %i.an = getelementptr inbounds [4 x i8], ptr %i.h, i64 %indvars.iv
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !23
  %i.ap = sext i32 %i.ao to i64
  %i.aq = getelementptr inbounds [4 x i8], ptr %i.t, i64 %i.ap ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !23
  %i.as = zext i32 %i.ar to i64
  %.not198 = icmp eq i64 %i.ab, %i.as
  br i1 %.not198, label %bb.g, label %bb.e

bb.e:                                             ; preds = %.lr.ph234
  %2 = icmp eq i64 %.2212232, -1
  br i1 %2, label %.sink.split, label %bb.f

bb.f:                                             ; preds = %bb.e
  %3 = add nuw i64 %.2212232, 1
  store i32 %i.ad, ptr %i.aq, align 4, !tbaa !23
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph234, %bb.f
  %.3213 = phi i64 [ %.2212232, %.lr.ph234 ], [ %3, %bb.f ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.ak, %lftr.wideiv
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph234, !llvm.loop !107

._crit_edge:                                      ; preds = %bb.g, %bb.d
  %.2212.lcssa = phi i64 [ %.1211235, %bb.d ], [ %.3213, %bb.g ] ; 2 uses
  %indvars.iv.next308 = add nsw i64 %indvars.iv307, 1 ; 2 uses
  %lftr.wideiv310 = trunc i64 %indvars.iv.next308 to i32
  %exitcond311.not = icmp eq i32 %i.z, %lftr.wideiv310
  br i1 %exitcond311.not, label %.loopexit219, label %bb.d, !llvm.loop !108

.critedge:                                        ; preds = %.loopexit219, %.preheader
  %.0210.lcssa = phi i64 [ 0, %.preheader ], [ %.1211.lcssa, %.loopexit219 ] ; 3 uses
  switch i32 %i.n, label %bb.h [
    i32 1, label %bb.i
    i32 4, label %bb.o
    i32 8, label %bb.u
  ]

bb.h:                                             ; preds = %.critedge
  %i.at = load ptr, ptr @stderr, align 8, !tbaa !21
  %i.au = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.at, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 40) #18 ; 0 uses
  tail call void @abort() #19
  unreachable

bb.i:                                             ; preds = %.critedge
  %i.av = tail call fastcc nonnull ptr @SparseMatrix_general_new(i32 noundef %i.i, i32 noundef %i.r, i64 noundef %.0210.lcssa, i32 noundef 1, i64 noundef 8, i32 noundef 0) ; 5 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 32
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !8  ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 40
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !14
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !15
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !15 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.av, i64 48
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !15 ; 2 uses
  store i32 0, ptr %i.ax, align 4, !tbaa !23
  br i1 %.not199241, label %.lr.ph301.preheader, label %.loopexit

.lr.ph301.preheader:                              ; preds = %bb.i
  %wide.trip.count347 = zext nneg i32 %i.i to i64
  br label %.lr.ph301

.lr.ph301:                                        ; preds = %.lr.ph301.preheader, %._crit_edge294
  %indvars.iv344 = phi i64 [ 0, %.lr.ph301.preheader ], [ %indvars.iv.next345, %._crit_edge294 ] ; 3 uses
  %.5298 = phi i64 [ 0, %.lr.ph301.preheader ], [ %.6.lcssa, %._crit_edge294 ] ; 2 uses
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv344
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !23 ; 2 uses
  %indvars.iv.next345 = add nuw nsw i64 %indvars.iv344, 1 ; 4 uses
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next345 ; 2 uses
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !23 ; 2 uses
  %i.bk = icmp slt i32 %i.bh, %i.bj
  br i1 %i.bk, label %.lr.ph293, label %._crit_edge294

.lr.ph293:                                        ; preds = %.lr.ph301
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %indvars.iv344
  %i.bm = sext i32 %i.bh to i64
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph293, %._crit_edge288
  %i.bn = phi i32 [ %i.bj, %.lr.ph293 ], [ %i.cy, %._crit_edge288 ]
  %indvars.iv341 = phi i64 [ %i.bm, %.lr.ph293 ], [ %indvars.iv.next342, %._crit_edge288 ] ; 3 uses
  %.6290 = phi i64 [ %.5298, %.lr.ph293 ], [ %.7.lcssa, %._crit_edge288 ] ; 2 uses
  %i.bo = getelementptr inbounds [4 x i8], ptr %i.d, i64 %indvars.iv341
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !23
  %i.bq = sext i32 %i.bp to i64
  %i.br = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.bq ; 2 uses
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !23 ; 2 uses
  %i.bt = getelementptr i8, ptr %i.br, i64 4      ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !23 ; 2 uses
  %i.bv = icmp slt i32 %i.bs, %i.bu
  br i1 %i.bv, label %.lr.ph287, label %._crit_edge288

.lr.ph287:                                        ; preds = %bb.j
  %i.bw = getelementptr inbounds [8 x i8], ptr %i.bb, i64 %indvars.iv341 ; 2 uses
  %i.bx = sext i32 %i.bs to i64
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph287, %bb.n
  %i.by = phi i32 [ %i.bu, %.lr.ph287 ], [ %i.cv, %bb.n ]
  %indvars.iv338 = phi i64 [ %i.bx, %.lr.ph287 ], [ %indvars.iv.next339, %bb.n ] ; 4 uses
  %.7284 = phi i64 [ %.6290, %.lr.ph287 ], [ %.8, %bb.n ] ; 5 uses
  %i.bz = getelementptr inbounds [4 x i8], ptr %i.h, i64 %indvars.iv338
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !23 ; 2 uses
  %i.cb = sext i32 %i.ca to i64
  %i.cc = getelementptr inbounds [4 x i8], ptr %i.t, i64 %i.cb ; 2 uses
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !23 ; 2 uses
  %i.ce = load i32, ptr %i.bl, align 4, !tbaa !23
  %i.cf = icmp slt i32 %i.cd, %i.ce
  br i1 %i.cf, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.cg = trunc i64 %.7284 to i32
  store i32 %i.cg, ptr %i.cc, align 4, !tbaa !23
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %.7284
  store i32 %i.ca, ptr %i.ch, align 4, !tbaa !23
  %i.ci = load double, ptr %i.bw, align 8, !tbaa !31
  %i.cj = getelementptr inbounds [8 x i8], ptr %i.bd, i64 %indvars.iv338
  %i.ck = load double, ptr %i.cj, align 8, !tbaa !31
  %i.cl = fmul double %i.ci, %i.ck
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %.7284
  store double %i.cl, ptr %i.cm, align 8, !tbaa !31
  %i.cn = add i64 %.7284, 1
  %.pre352 = load i32, ptr %i.bt, align 4, !tbaa !23
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.co = load double, ptr %i.bw, align 8, !tbaa !31
  %i.cp = getelementptr inbounds [8 x i8], ptr %i.bd, i64 %indvars.iv338
  %i.cq = load double, ptr %i.cp, align 8, !tbaa !31
  %i.cr = sext i32 %i.cd to i64
  %i.cs = getelementptr inbounds [8 x i8], ptr %i.bf, i64 %i.cr ; 2 uses
  %i.ct = load double, ptr %i.cs, align 8, !tbaa !31
  %i.cu = tail call double @llvm.fmuladd.f64(double %i.co, double %i.cq, double %i.ct)
  store double %i.cu, ptr %i.cs, align 8, !tbaa !31
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %i.cv = phi i32 [ %.pre352, %bb.l ], [ %i.by, %bb.m ] ; 2 uses
  %.8 = phi i64 [ %i.cn, %bb.l ], [ %.7284, %bb.m ] ; 2 uses
  %indvars.iv.next339 = add nsw i64 %indvars.iv338, 1 ; 2 uses
  %i.cw = sext i32 %i.cv to i64
  %i.cx = icmp slt i64 %indvars.iv.next339, %i.cw
  br i1 %i.cx, label %bb.k, label %._crit_edge288.loopexit, !llvm.loop !109

._crit_edge288.loopexit:                          ; preds = %bb.n
  %.pre353 = load i32, ptr %i.bi, align 4, !tbaa !23
  br label %._crit_edge288

._crit_edge288:                                   ; preds = %._crit_edge288.loopexit, %bb.j
  %i.cy = phi i32 [ %i.bn, %bb.j ], [ %.pre353, %._crit_edge288.loopexit ] ; 2 uses
  %.7.lcssa = phi i64 [ %.6290, %bb.j ], [ %.8, %._crit_edge288.loopexit ] ; 2 uses
  %indvars.iv.next342 = add nsw i64 %indvars.iv341, 1 ; 2 uses
  %i.cz = sext i32 %i.cy to i64
  %i.da = icmp slt i64 %indvars.iv.next342, %i.cz
  br i1 %i.da, label %bb.j, label %._crit_edge294, !llvm.loop !110

._crit_edge294:                                   ; preds = %._crit_edge288, %.lr.ph301
  %.6.lcssa = phi i64 [ %.5298, %.lr.ph301 ], [ %.7.lcssa, %._crit_edge288 ] ; 3 uses
  %i.db = trunc i64 %.6.lcssa to i32
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %indvars.iv.next345
  store i32 %i.db, ptr %i.dc, align 4, !tbaa !23
  %exitcond348.not = icmp eq i64 %indvars.iv.next345, %wide.trip.count347
  br i1 %exitcond348.not, label %.loopexit, label %.lr.ph301, !llvm.loop !111

bb.o:                                             ; preds = %.critedge
  %i.dd = tail call fastcc nonnull ptr @SparseMatrix_general_new(i32 noundef %i.i, i32 noundef %i.r, i64 noundef %.0210.lcssa, i32 noundef 4, i64 noundef 4, i32 noundef 0) ; 5 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 32
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !8  ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dd, i64 40
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !14
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !15
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !15 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dd, i64 48
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !15 ; 2 uses
  store i32 0, ptr %i.df, align 4, !tbaa !23
  br i1 %.not199241, label %.lr.ph282.preheader, label %.loopexit

.lr.ph282.preheader:                              ; preds = %bb.o
  %wide.trip.count336 = zext nneg i32 %i.i to i64
  br label %.lr.ph282

.lr.ph282:                                        ; preds = %.lr.ph282.preheader, %._crit_edge275
  %indvars.iv333 = phi i64 [ 0, %.lr.ph282.preheader ], [ %indvars.iv.next334, %._crit_edge275 ] ; 3 uses
  %.9279 = phi i64 [ 0, %.lr.ph282.preheader ], [ %.10.lcssa, %._crit_edge275 ] ; 2 uses
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv333
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !23 ; 2 uses
  %indvars.iv.next334 = add nuw nsw i64 %indvars.iv333, 1 ; 4 uses
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next334 ; 2 uses
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !23 ; 2 uses
  %i.ds = icmp slt i32 %i.dp, %i.dr
  br i1 %i.ds, label %.lr.ph274, label %._crit_edge275

.lr.ph274:                                        ; preds = %.lr.ph282
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %indvars.iv333
  %i.du = sext i32 %i.dp to i64
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph274, %._crit_edge269
  %i.dv = phi i32 [ %i.dr, %.lr.ph274 ], [ %i.fg, %._crit_edge269 ]
  %indvars.iv330 = phi i64 [ %i.du, %.lr.ph274 ], [ %indvars.iv.next331, %._crit_edge269 ] ; 3 uses
  %.10271 = phi i64 [ %.9279, %.lr.ph274 ], [ %.11.lcssa, %._crit_edge269 ] ; 2 uses
  %i.dw = getelementptr inbounds [4 x i8], ptr %i.d, i64 %indvars.iv330
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !23
  %i.dy = sext i32 %i.dx to i64
  %i.dz = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.dy ; 2 uses
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !23 ; 2 uses
  %i.eb = getelementptr i8, ptr %i.dz, i64 4      ; 2 uses
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !23
  %i.ed = icmp slt i32 %i.ea, %i.ec
  br i1 %i.ed, label %.lr.ph268, label %._crit_edge269

.lr.ph268:                                        ; preds = %bb.p
  %i.ee = getelementptr inbounds [4 x i8], ptr %i.dj, i64 %indvars.iv330 ; 2 uses
  %i.ef = sext i32 %i.ea to i64
  br label %bb.q
end_hunk_0
begin_hunk_1_@SparseMatrix_multiply:bb.a
  %i.gg = sext i32 %i.gc to i64
  br label %.lr.ph249

.lr.ph249:                                        ; preds = %.lr.ph249.preheader, %bb.x
  %i.gh = phi i32 [ %i.ge, %.lr.ph249.preheader ], [ %i.gs, %bb.x ]
  %indvars.iv316 = phi i64 [ %i.gg, %.lr.ph249.preheader ], [ %indvars.iv.next317, %bb.x ] ; 2 uses
  %.15246 = phi i64 [ %.14252, %.lr.ph249.preheader ], [ %.16, %bb.x ] ; 4 uses
  %i.gi = getelementptr inbounds [4 x i8], ptr %i.h, i64 %indvars.iv316
  %i.gj = load i32, ptr %i.gi, align 4, !tbaa !23 ; 2 uses
  %i.gk = sext i32 %i.gj to i64
  %i.gl = getelementptr inbounds [4 x i8], ptr %i.t, i64 %i.gk ; 2 uses
  %i.gm = load i32, ptr %i.gl, align 4, !tbaa !23
  %i.gn = load i32, ptr %i.fv, align 4, !tbaa !23
  %i.go = icmp slt i32 %i.gm, %i.gn
  br i1 %i.go, label %bb.w, label %bb.x

bb.w:                                             ; preds = %.lr.ph249
  %i.gp = trunc i64 %.15246 to i32
  store i32 %i.gp, ptr %i.gl, align 4, !tbaa !23
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %i.fp, i64 %.15246
  store i32 %i.gj, ptr %i.gq, align 4, !tbaa !23
  %i.gr = add i64 %.15246, 1
  %.pre349 = load i32, ptr %i.gd, align 4, !tbaa !23
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %.lr.ph249
  %i.gs = phi i32 [ %.pre349, %bb.w ], [ %i.gh, %.lr.ph249 ] ; 2 uses
  %.16 = phi i64 [ %i.gr, %bb.w ], [ %.15246, %.lr.ph249 ] ; 2 uses
  %indvars.iv.next317 = add nsw i64 %indvars.iv316, 1 ; 2 uses
  %i.gt = sext i32 %i.gs to i64
  %i.gu = icmp slt i64 %indvars.iv.next317, %i.gt
  br i1 %i.gu, label %.lr.ph249, label %._crit_edge250.loopexit, !llvm.loop !115

._crit_edge250.loopexit:                          ; preds = %bb.x
  %.pre350 = load i32, ptr %i.fs, align 4, !tbaa !23
  br label %._crit_edge250

._crit_edge250:                                   ; preds = %._crit_edge250.loopexit, %bb.v
  %i.gv = phi i32 [ %i.fx, %bb.v ], [ %.pre350, %._crit_edge250.loopexit ] ; 2 uses
  %.15.lcssa = phi i64 [ %.14252, %bb.v ], [ %.16, %._crit_edge250.loopexit ] ; 2 uses
  %indvars.iv.next320 = add nsw i64 %indvars.iv319, 1 ; 2 uses
  %i.gw = sext i32 %i.gv to i64
  %i.gx = icmp slt i64 %indvars.iv.next320, %i.gw
  br i1 %i.gx, label %bb.v, label %._crit_edge256, !llvm.loop !116

._crit_edge256:                                   ; preds = %._crit_edge250, %.lr.ph263
  %.14.lcssa = phi i64 [ %.13260, %.lr.ph263 ], [ %.15.lcssa, %._crit_edge250 ] ; 3 uses
  %i.gy = trunc i64 %.14.lcssa to i32
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %i.fn, i64 %indvars.iv.next323
  store i32 %i.gy, ptr %i.gz, align 4, !tbaa !23
  %exitcond326.not = icmp eq i64 %indvars.iv.next323, %wide.trip.count325
  br i1 %exitcond326.not, label %.loopexit, label %.lr.ph263, !llvm.loop !117

.loopexit:                                        ; preds = %._crit_edge256, %._crit_edge275, %._crit_edge294, %bb.u, %bb.o, %bb.i
  %i.ha = phi ptr [ %i.av, %bb.i ], [ %i.dd, %bb.o ], [ %i.fl, %bb.u ], [ %i.dd, %._crit_edge275 ], [ %i.av, %._crit_edge294 ], [ %i.fl, %._crit_edge256 ] ; 2 uses
  %.17 = phi i64 [ 0, %bb.i ], [ 0, %bb.o ], [ 0, %bb.u ], [ %.10.lcssa, %._crit_edge275 ], [ %.6.lcssa, %._crit_edge294 ], [ %.14.lcssa, %._crit_edge256 ]
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 8
  store i64 %.17, ptr %i.hb, align 8, !tbaa !20
  br label %.sink.split

.sink.split:                                      ; preds = %bb.e, %.loopexit
  %.2190.ph = phi ptr [ %i.ha, %.loopexit ], [ null, %bb.e ]
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8    ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !14   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !8    ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !14   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !8    ; 2 uses
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
  br i1 %exitcond224.not, label %.critedge, label %.lr.ph182, !llvm.loop !118

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
  %.3164 = phi i64 [ %.2154167, %.lr.ph166.preheader ], [ %.4, %bb.i ] ; 3 uses
  %i.bf = getelementptr inbounds [4 x i8], ptr %i.l, i64 %indvars.iv
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !23
  %i.bh = sext i32 %i.bg to i64
  %i.bi = getelementptr inbounds [4 x i8], ptr %i.ac, i64 %i.bh ; 2 uses
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !23
  %i.bk = zext i32 %i.bj to i64
  %.not145 = icmp eq i64 %i.ak, %i.bk
  br i1 %.not145, label %bb.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph166
  %3 = icmp eq i64 %.3164, -1
  br i1 %3, label %.sink.split, label %bb.h

bb.h:                                             ; preds = %bb.g
  %4 = add nuw i64 %.3164, 1
  store i32 %i.am, ptr %i.bi, align 4, !tbaa !23
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph166, %bb.h
  %.4 = phi i64 [ %.3164, %.lr.ph166 ], [ %4, %bb.h ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.bc, %lftr.wideiv
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph166, !llvm.loop !119

._crit_edge:                                      ; preds = %bb.i, %.lr.ph170
  %.3.lcssa = phi i64 [ %.2154167, %.lr.ph170 ], [ %.4, %bb.i ] ; 2 uses
  %indvars.iv.next212 = add nsw i64 %indvars.iv211, 1 ; 2 uses
  %lftr.wideiv214 = trunc i64 %indvars.iv.next212 to i32
  %exitcond215.not = icmp eq i32 %i.at, %lftr.wideiv214
  br i1 %exitcond215.not, label %._crit_edge171, label %.lr.ph170, !llvm.loop !120

._crit_edge171:                                   ; preds = %._crit_edge, %bb.f
  %.2154.lcssa = phi i64 [ %.1153173, %bb.f ], [ %.3.lcssa, %._crit_edge ] ; 2 uses
  %indvars.iv.next217 = add nsw i64 %indvars.iv216, 1 ; 2 uses
  %lftr.wideiv219 = trunc i64 %indvars.iv.next217 to i32
  %exitcond220.not = icmp eq i32 %i.ai, %lftr.wideiv219
  br i1 %exitcond220.not, label %.loopexit, label %bb.f, !llvm.loop !121

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
  %i.bl = load ptr, ptr @stderr, align 8, !tbaa !21
  %i.bm = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bl, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 40) #18 ; 0 uses
  tail call void @abort() #19
  unreachable

SparseMatrix_new.exit:                            ; preds = %.critedge, %bb.j, %bb.k
  %.0.i.i = phi i64 [ 0, %bb.k ], [ 4, %bb.j ], [ 8, %.critedge ]
  %i.bn = tail call fastcc nonnull ptr @SparseMatrix_general_new(i32 noundef %i.m, i32 noundef %i.aa, i64 noundef %.0152.lcssa, i32 noundef %i.u, i64 noundef %.0.i.i, i32 noundef 0) ; 5 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 32
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !8  ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 40
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !14
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !15
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !15
  %i.bw = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !15 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bn, i64 48
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !15 ; 2 uses
  store i32 0, ptr %i.bp, align 4, !tbaa !23
  br i1 %.not146179, label %.lr.ph206.preheader, label %._crit_edge207

.lr.ph206.preheader:                              ; preds = %SparseMatrix_new.exit
  %wide.trip.count237 = zext nneg i32 %i.m to i64
  br label %.lr.ph206

._crit_edge207:                                   ; preds = %._crit_edge200, %SparseMatrix_new.exit
  %.6.lcssa = phi i64 [ 0, %SparseMatrix_new.exit ], [ %.7.lcssa, %._crit_edge200 ]
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  store i64 %.6.lcssa, ptr %i.ca, align 8, !tbaa !20
  br label %.sink.split

.lr.ph206:                                        ; preds = %.lr.ph206.preheader, %._crit_edge200
  %indvars.iv234 = phi i64 [ 0, %.lr.ph206.preheader ], [ %indvars.iv.next235, %._crit_edge200 ] ; 3 uses
  %.6204 = phi i64 [ 0, %.lr.ph206.preheader ], [ %.7.lcssa, %._crit_edge200 ] ; 2 uses
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv234
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !23 ; 2 uses
  %indvars.iv.next235 = add nuw nsw i64 %indvars.iv234, 1 ; 4 uses
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next235 ; 2 uses
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !23 ; 2 uses
  %i.cf = icmp slt i32 %i.cc, %i.ce
  br i1 %i.cf, label %.lr.ph199, label %._crit_edge200

.lr.ph199:                                        ; preds = %.lr.ph206
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %indvars.iv234
  %i.ch = sext i32 %i.cc to i64
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph199, %._crit_edge194
  %i.ci = phi i32 [ %i.ce, %.lr.ph199 ], [ %i.el, %._crit_edge194 ]
  %indvars.iv231 = phi i64 [ %i.ch, %.lr.ph199 ], [ %indvars.iv.next232, %._crit_edge194 ] ; 3 uses
  %.7196 = phi i64 [ %.6204, %.lr.ph199 ], [ %.8.lcssa, %._crit_edge194 ] ; 2 uses
  %i.cj = getelementptr inbounds [4 x i8], ptr %i.d, i64 %indvars.iv231
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !23
  %i.cl = sext i32 %i.ck to i64
  %i.cm = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.cl ; 2 uses
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !23 ; 2 uses
  %i.co = getelementptr i8, ptr %i.cm, i64 4      ; 2 uses
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !23 ; 2 uses
  %i.cq = icmp slt i32 %i.cn, %i.cp
  br i1 %i.cq, label %.lr.ph193, label %._crit_edge194

.lr.ph193:                                        ; preds = %bb.m
  %i.cr = getelementptr inbounds [8 x i8], ptr %i.bt, i64 %indvars.iv231 ; 2 uses
  %i.cs = sext i32 %i.cn to i64
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph193, %._crit_edge188
  %i.ct = phi i32 [ %i.cp, %.lr.ph193 ], [ %i.ei, %._crit_edge188 ]
  %indvars.iv228 = phi i64 [ %i.cs, %.lr.ph193 ], [ %indvars.iv.next229, %._crit_edge188 ] ; 3 uses
  %.8190 = phi i64 [ %.7196, %.lr.ph193 ], [ %.9.lcssa, %._crit_edge188 ] ; 2 uses
  %i.cu = getelementptr inbounds [4 x i8], ptr %i.h, i64 %indvars.iv228
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !23
  %i.cw = sext i32 %i.cv to i64
  %i.cx = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.cw ; 2 uses
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !23 ; 2 uses
  %i.cz = getelementptr i8, ptr %i.cx, i64 4      ; 2 uses
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !23 ; 2 uses
  %i.db = icmp slt i32 %i.cy, %i.da
  br i1 %i.db, label %.lr.ph187, label %._crit_edge188

.lr.ph187:                                        ; preds = %bb.n
  %i.dc = getelementptr inbounds [8 x i8], ptr %i.bv, i64 %indvars.iv228 ; 2 uses
  %i.dd = sext i32 %i.cy to i64
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph187, %bb.r
  %i.de = phi i32 [ %i.da, %.lr.ph187 ], [ %i.ef, %bb.r ]
  %indvars.iv225 = phi i64 [ %i.dd, %.lr.ph187 ], [ %indvars.iv.next226, %bb.r ] ; 4 uses
  %.9184 = phi i64 [ %.8190, %.lr.ph187 ], [ %.10, %bb.r ] ; 5 uses
  %i.df = getelementptr inbounds [4 x i8], ptr %i.l, i64 %indvars.iv225
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !23 ; 2 uses
  %i.dh = sext i32 %i.dg to i64
  %i.di = getelementptr inbounds [4 x i8], ptr %i.ac, i64 %i.dh ; 2 uses
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !23 ; 2 uses
  %i.dk = load i32, ptr %i.cg, align 4, !tbaa !23
  %i.dl = icmp slt i32 %i.dj, %i.dk
  br i1 %i.dl, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.dm = trunc i64 %.9184 to i32
  store i32 %i.dm, ptr %i.di, align 4, !tbaa !23
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %.9184
  store i32 %i.dg, ptr %i.dn, align 4, !tbaa !23
  %i.do = load double, ptr %i.cr, align 8, !tbaa !31
  %i.dp = load double, ptr %i.dc, align 8, !tbaa !31
  %i.dq = fmul double %i.do, %i.dp
  %i.dr = getelementptr inbounds [8 x i8], ptr %i.bx, i64 %indvars.iv225
  %i.ds = load double, ptr %i.dr, align 8, !tbaa !31
  %i.dt = fmul double %i.dq, %i.ds
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %.9184
  store double %i.dt, ptr %i.du, align 8, !tbaa !31
  %i.dv = add i64 %.9184, 1
  %.pre239 = load i32, ptr %i.cz, align 4, !tbaa !23
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.dw = load double, ptr %i.cr, align 8, !tbaa !31
  %i.dx = load double, ptr %i.dc, align 8, !tbaa !31
  %i.dy = fmul double %i.dw, %i.dx
  %i.dz = getelementptr inbounds [8 x i8], ptr %i.bx, i64 %indvars.iv225
  %i.ea = load double, ptr %i.dz, align 8, !tbaa !31
  %i.eb = sext i32 %i.dj to i64
  %i.ec = getelementptr inbounds [8 x i8], ptr %i.bz, i64 %i.eb ; 2 uses
  %i.ed = load double, ptr %i.ec, align 8, !tbaa !31
  %i.ee = tail call double @llvm.fmuladd.f64(double %i.dy, double %i.ea, double %i.ed)
  store double %i.ee, ptr %i.ec, align 8, !tbaa !31
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q
  %i.ef = phi i32 [ %.pre239, %bb.p ], [ %i.de, %bb.q ] ; 2 uses
  %.10 = phi i64 [ %i.dv, %bb.p ], [ %.9184, %bb.q ] ; 2 uses
  %indvars.iv.next226 = add nsw i64 %indvars.iv225, 1 ; 2 uses
  %i.eg = sext i32 %i.ef to i64
  %i.eh = icmp slt i64 %indvars.iv.next226, %i.eg
  br i1 %i.eh, label %bb.o, label %._crit_edge188.loopexit, !llvm.loop !122

._crit_edge188.loopexit:                          ; preds = %bb.r
  %.pre240 = load i32, ptr %i.co, align 4, !tbaa !23
  br label %._crit_edge188

._crit_edge188:                                   ; preds = %._crit_edge188.loopexit, %bb.n
  %i.ei = phi i32 [ %i.ct, %bb.n ], [ %.pre240, %._crit_edge188.loopexit ] ; 2 uses
  %.9.lcssa = phi i64 [ %.8190, %bb.n ], [ %.10, %._crit_edge188.loopexit ] ; 2 uses
  %indvars.iv.next229 = add nsw i64 %indvars.iv228, 1 ; 2 uses
  %i.ej = sext i32 %i.ei to i64
  %i.ek = icmp slt i64 %indvars.iv.next229, %i.ej
  br i1 %i.ek, label %bb.n, label %._crit_edge194.loopexit, !llvm.loop !123

._crit_edge194.loopexit:                          ; preds = %._crit_edge188
  %.pre241 = load i32, ptr %i.cd, align 4, !tbaa !23
  br label %._crit_edge194

._crit_edge194:                                   ; preds = %._crit_edge194.loopexit, %bb.m
  %i.el = phi i32 [ %i.ci, %bb.m ], [ %.pre241, %._crit_edge194.loopexit ] ; 2 uses
  %.8.lcssa = phi i64 [ %.7196, %bb.m ], [ %.9.lcssa, %._crit_edge194.loopexit ] ; 2 uses
  %indvars.iv.next232 = add nsw i64 %indvars.iv231, 1 ; 2 uses
  %i.em = sext i32 %i.el to i64
  %i.en = icmp slt i64 %indvars.iv.next232, %i.em
  br i1 %i.en, label %bb.m, label %._crit_edge200, !llvm.loop !124

._crit_edge200:                                   ; preds = %._crit_edge194, %.lr.ph206
  %.7.lcssa = phi i64 [ %.6204, %.lr.ph206 ], [ %.8.lcssa, %._crit_edge194 ] ; 3 uses
  %i.eo = trunc i64 %.7.lcssa to i32
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %indvars.iv.next235
end_hunk_1
begin_hunk_2_@SparseMatrix_distance_matrix:bb.a
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
  %i.bj = load ptr, ptr %i.a, align 8, !tbaa !147 ; 2 uses
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
  %i.bx = getelementptr inbounds [4 x i8], ptr %i.m, i64 %i.bw
  store i32 %i.bs, ptr %i.bx, align 4, !tbaa !23
  %indvars.iv.next87 = add nsw i64 %indvars.iv86, 1 ; 2 uses
  %i.by = load i32, ptr %i.bo, align 4, !tbaa !23 ; 2 uses
  %i.bz = sext i32 %i.by to i64
  %i.ca = icmp slt i64 %indvars.iv.next87, %i.bz
  br i1 %i.ca, label %.lr.ph67, label %.loopexit, !llvm.loop !190

._crit_edge71:                                    ; preds = %.loopexit, %.lr.ph73
  %i.cb = add nuw nsw i32 %.072, 1                ; 2 uses
  %exitcond94.not = icmp eq i32 %i.cb, %i.f
  br i1 %exitcond94.not, label %._crit_edge74.loopexit, label %.lr.ph73, !llvm.loop !191

._crit_edge74.loopexit:                           ; preds = %._crit_edge71
  %.pre95 = load ptr, ptr %i.a, align 8, !tbaa !147
  %.pre96 = load ptr, ptr %i.b, align 8, !tbaa !147
  %.pre97 = load ptr, ptr %i.c, align 8, !tbaa !147
  br label %._crit_edge74

._crit_edge74:                                    ; preds = %bb.c, %.preheader59, %._crit_edge74.loopexit
  %i.cc = phi ptr [ %.pre97, %._crit_edge74.loopexit ], [ null, %bb.c ], [ null, %.preheader59 ]
  %i.cd = phi ptr [ %.pre96, %._crit_edge74.loopexit ], [ null, %bb.c ], [ null, %.preheader59 ]
  %i.ce = phi ptr [ %.pre95, %._crit_edge74.loopexit ], [ null, %bb.c ], [ null, %.preheader59 ]
  tail call void @free(ptr noundef %i.ce) #17
  tail call void @free(ptr noundef %i.cd) #17
  tail call void @free(ptr noundef %i.cc) #17
  %.not57 = icmp eq ptr %.054, %0
  %.not.i = icmp eq ptr %.054, null
  %or.cond = or i1 %.not57, %.not.i
  br i1 %or.cond, label %SparseMatrix_delete.exit, label %bb.e

bb.e:                                             ; preds = %._crit_edge74
  %i.cf = getelementptr inbounds nuw i8, ptr %.054, i64 32
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !8
  tail call void @free(ptr noundef %i.cg) #17
  %i.ch = getelementptr inbounds nuw i8, ptr %.054, i64 40
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !14
  tail call void @free(ptr noundef %i.ci) #17
  %i.cj = getelementptr inbounds nuw i8, ptr %.054, i64 48
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !15
  tail call void @free(ptr noundef %i.ck) #17
  tail call void @free(ptr noundef nonnull %.054) #17
  br label %SparseMatrix_delete.exit

SparseMatrix_delete.exit:                         ; preds = %bb.e, %._crit_edge74
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret ptr %i.k
}

; Function Attrs: cold inlinehint nofree noreturn nounwind uwtable
define internal fastcc void @graphviz_exit() unnamed_addr #11 {
bb.a:
  tail call void @exit(i32 noundef 1) #24
  unreachable
}

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #6

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold inlinehint nofree noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #15 = { nofree nounwind }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #17 = { nounwind }
attributes #18 = { cold nounwind }
attributes #19 = { noreturn nounwind }
attributes #20 = { noreturn }
attributes #21 = { nounwind allocsize(0,1) }
attributes #22 = { cold }
attributes #23 = { nounwind allocsize(1) }
attributes #24 = { cold noreturn nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !11, i64 32}
!9 = !{!"SparseMatrix_struct", !5, i64 0, !5, i64 4, !10, i64 8, !10, i64 16, !5, i64 24, !11, i64 32, !11, i64 40, !12, i64 48, !5, i64 56, !13, i64 60, !13, i64 60, !13, i64 60, !10, i64 64}
!10 = !{!"long", !6, i64 0}
!11 = !{!"p1 int", !12, i64 0}
!12 = !{!"any pointer", !6, i64 0}
!13 = !{!"_Bool", !6, i64 0}
!14 = !{!9, !11, i64 40}
!15 = !{!9, !12, i64 48}
!16 = !{!9, !5, i64 0}
!17 = !{!9, !5, i64 4}
!18 = !{!9, !5, i64 24}
!19 = !{!9, !5, i64 56}
!20 = !{!9, !10, i64 8}
!21 = !{!22, !22, i64 0}
!22 = !{!"p1 _ZTS8_IO_FILE", !12, i64 0}
!23 = !{!5, !5, i64 0}
!24 = distinct !{!24, !25}
!25 = !{!"llvm.loop.mustprogress"}
!26 = distinct !{!26, !25}
!27 = distinct !{!27, !28}
!28 = !{!"llvm.loop.unroll.disable"}
!29 = distinct !{!29, !25}
!30 = distinct !{!30, !25}
!31 = !{!32, !32, i64 0}
!32 = !{!"double", !6, i64 0}
!33 = distinct !{!33, !25}
!34 = distinct !{!34, !25}
!35 = distinct !{!35, !25}
!36 = distinct !{!36, !25}
!37 = distinct !{!37, !25}
!38 = distinct !{!38, !25, !39, !40}
!39 = !{!"llvm.loop.isvectorized", i32 1}
!40 = !{!"llvm.loop.unroll.runtime.disable"}
!41 = distinct !{!41, !25, !40, !39}
!42 = distinct !{!42, !25}
!43 = distinct !{!43, !25}
!44 = distinct !{!44, !25}
!45 = distinct !{!45, !25}
!46 = distinct !{!46, !25}
!47 = distinct !{!47, !25}
!48 = distinct !{!48, !25}
!49 = distinct !{!49, !25}
!50 = distinct !{!50, !28}
!51 = distinct !{!51, !25}
!52 = distinct !{!52, !25}
!53 = distinct !{!53, !25}
!54 = distinct !{!54, !25}
!55 = distinct !{!55, !28}
!56 = distinct !{!56, !25}
!57 = distinct !{!57, !25}
!58 = distinct !{!58, !25}
!59 = distinct !{!59, !25}
!60 = distinct !{!60, !28}
!61 = distinct !{!61, !25}
!62 = distinct !{!62, !25}
!63 = !{!9, !10, i64 64}
!64 = distinct !{!64, !25}
!65 = distinct !{!65, !25}
!66 = distinct !{!66, !25}
!67 = distinct !{!67, !25}
!68 = distinct !{!68, !25}
!69 = distinct !{!69, !25}
!70 = distinct !{!70, !25}
!71 = distinct !{!71, !25}
!72 = distinct !{!72, !25}
!73 = !{!9, !10, i64 16}
!74 = distinct !{!74, !25}
!75 = distinct !{!75, !25}
!76 = distinct !{!76, !25}
!77 = distinct !{!77, !28}
!78 = distinct !{!78, !25}
!79 = distinct !{!79, !25}
!80 = distinct !{!80, !25}
!81 = distinct !{!81, !28}
!82 = distinct !{!82, !25}
!83 = distinct !{!83, !25}
!84 = distinct !{!84, !25}
!85 = distinct !{!85, !28}
!86 = distinct !{!86, !25}
!87 = distinct !{!87, !25}
!88 = distinct !{!88, !25, !39}
!89 = !{!90}
!90 = distinct !{!90, !91}
!91 = distinct !{!91, !"LVerDomain"}
!92 = !{!93}
!93 = distinct !{!93, !91}
!94 = !{!95}
!95 = distinct !{!95, !91}
!96 = !{!90, !93}
!97 = distinct !{!97, !25, !39, !40}
!98 = distinct !{!98, !25}
!99 = distinct !{!99, !25}
!100 = !{!101, !101, i64 0}
!101 = !{!"p1 double", !12, i64 0}
!102 = distinct !{!102, !25}
!103 = distinct !{!103, !25}
!104 = distinct !{!104, !25}
!105 = distinct !{!105, !25}
!106 = distinct !{!106, !25}
!107 = distinct !{!107, !25}
!108 = distinct !{!108, !25}
!109 = distinct !{!109, !25}
!110 = distinct !{!110, !25}
!111 = distinct !{!111, !25}
!112 = distinct !{!112, !25}
!113 = distinct !{!113, !25}
!114 = distinct !{!114, !25}
!115 = distinct !{!115, !25}
!116 = distinct !{!116, !25}
!117 = distinct !{!117, !25}
!118 = distinct !{!118, !25}
!119 = distinct !{!119, !25}
!120 = distinct !{!120, !25}
!121 = distinct !{!121, !25}
!122 = distinct !{!122, !25}
!123 = distinct !{!123, !25}
!124 = distinct !{!124, !25}
!125 = distinct !{!125, !25}
!126 = distinct !{!126, !25}
!127 = distinct !{!127, !25}
!128 = distinct !{!128, !25}
!129 = distinct !{!129, !25}
!130 = distinct !{!130, !25}
!131 = distinct !{!131, !25}
!132 = distinct !{!132, !25}
!133 = distinct !{!133, !25}
!134 = distinct !{!134, !25}
!135 = distinct !{!135, !25}
!136 = distinct !{!136, !25}
!137 = distinct !{!137, !25}
!138 = distinct !{!138, !25}
!139 = distinct !{!139, !25, !39, !40}
!140 = distinct !{!140, !25, !40, !39}
!141 = distinct !{!141, !25, !39, !40}
!142 = distinct !{!142, !25, !40, !39}
!143 = distinct !{!143, !25}
!144 = distinct !{!144, !25}
!145 = distinct !{!145, !25}
!146 = distinct !{!146, !25}
!147 = !{!11, !11, i64 0}
!148 = distinct !{!148, !25, !149}
end_hunk_2
