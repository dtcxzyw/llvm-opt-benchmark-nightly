inline.NumInlined: 37
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 31
loop-unroll.NumUnrolled: 33
begin_hunk_0_@circuitModel:bb.a

bb.e:                                             ; preds = %bb.d
  %i.j = load ptr, ptr @stderr, align 8, !tbaa !42
  %i.k = shl nuw nsw i64 %i.d, 2
  %i.l = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.j, ptr noundef nonnull @.str.15, i64 noundef %i.k) #17 ; 0 uses
  tail call fastcc void @graphviz_exit() #18
  unreachable

gv_calloc.exit:                                   ; preds = %.thread.i, %bb.d
  %i.m = phi ptr [ %i.e, %.thread.i ], [ %i.h, %bb.d ] ; 4 uses
  %i.n = tail call ptr @new_array(i32 noundef %1, i32 noundef %1, double noundef 0.000000e+00) #15 ; 10 uses
  %i.o = tail call ptr @new_array(i32 noundef %1, i32 noundef %1, double noundef 0.000000e+00) #15 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !44
  %.not = icmp eq ptr %i.q, null
  %i.r = icmp sgt i32 %1, 0                       ; 2 uses
  br i1 %.not, label %.preheader81, label %.preheader84

.preheader84:                                     ; preds = %gv_calloc.exit
  br i1 %i.r, label %.preheader83.preheader, label %.loopexit82

.preheader83.preheader:                           ; preds = %.preheader84
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %.preheader83

.preheader81:                                     ; preds = %gv_calloc.exit
  br i1 %i.r, label %.preheader80.preheader, label %.loopexit82

.preheader80.preheader:                           ; preds = %.preheader81
  %wide.trip.count103 = zext nneg i32 %1 to i64
  br label %.preheader80

.preheader83:                                     ; preds = %.preheader83.preheader, %._crit_edge
  %indvars.iv = phi i64 [ 0, %.preheader83.preheader ], [ %indvars.iv.next, %._crit_edge ] ; 6 uses
  %i.s = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %indvars.iv ; 3 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !48   ; 3 uses
  %i.u = icmp ugt i64 %i.t, 1
  br i1 %i.u, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader83
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !49   ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !44   ; 3 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !8   ; 3 uses
  %i.ab = add i64 %i.t, -1                        ; 3 uses
  %xtraiter = and i64 %i.ab, 1
  %i.ac = icmp eq i64 %i.t, 2
  br i1 %i.ac, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.ab, -2
  br label %bb.f

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.f
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %.07186.epil.init = phi i64 [ 1, %.lr.ph ], [ %i.bl, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod128 = trunc i64 %i.ab to i1
  tail call void @llvm.assume(i1 %lcmp.mod128)
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %.07186.epil.init
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !50
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %.07186.epil.init
  %i.ag = load float, ptr %i.af, align 4, !tbaa !51
  %i.ah = fpext float %i.ag to double
  %i.ai = fdiv double -1.000000e+00, %i.ah        ; 2 uses
  %i.aj = sext i32 %i.ae to i64                   ; 2 uses
  %i.ak = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.aj
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !8
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %indvars.iv
  store double %i.ai, ptr %i.am, align 8, !tbaa !34
  %i.an = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %i.aj
  store double %i.ai, ptr %i.an, align 8, !tbaa !34
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %.preheader83
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond98.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond98.not, label %.loopexit82, label %.preheader83, !llvm.loop !53

bb.f:                                             ; preds = %bb.f, %.lr.ph.new
  %.07186 = phi i64 [ 1, %.lr.ph.new ], [ %i.bl, %bb.f ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.f ]
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %.07186
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !50
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %.07186
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !51
  %i.as = fpext float %i.ar to double
  %i.at = fdiv double -1.000000e+00, %i.as        ; 2 uses
  %i.au = sext i32 %i.ap to i64                   ; 2 uses
  %i.av = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.au
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !8
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %indvars.iv
  store double %i.at, ptr %i.ax, align 8, !tbaa !34
  %i.ay = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %i.au
  store double %i.at, ptr %i.ay, align 8, !tbaa !34
  %i.az = add nuw i64 %.07186, 1                  ; 2 uses
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.az
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !50
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.az
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !51
  %i.be = fpext float %i.bd to double
  %i.bf = fdiv double -1.000000e+00, %i.be        ; 2 uses
  %i.bg = sext i32 %i.bb to i64                   ; 2 uses
  %i.bh = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.bg
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !8
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %indvars.iv
  store double %i.bf, ptr %i.bj, align 8, !tbaa !34
  %i.bk = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %i.bg
  store double %i.bf, ptr %i.bk, align 8, !tbaa !34
  %i.bl = add nuw i64 %.07186, 2                  ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.f, !llvm.loop !54

.preheader80:                                     ; preds = %.preheader80.preheader, %._crit_edge90
  %indvars.iv100 = phi i64 [ 0, %.preheader80.preheader ], [ %indvars.iv.next101, %._crit_edge90 ] ; 6 uses
  %i.bm = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %indvars.iv100 ; 2 uses
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !48 ; 3 uses
  %i.bo = icmp ugt i64 %i.bn, 1
  br i1 %i.bo, label %.lr.ph89, label %._crit_edge90

.lr.ph89:                                         ; preds = %.preheader80
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !49 ; 3 uses
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv100
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !8  ; 3 uses
  %i.bt = add i64 %i.bn, -1                       ; 3 uses
  %xtraiter130 = and i64 %i.bt, 1
  %i.bu = icmp eq i64 %i.bn, 2
  br i1 %i.bu, label %.epil.preheader129, label %.lr.ph89.new

.lr.ph89.new:                                     ; preds = %.lr.ph89
  %unroll_iter133 = and i64 %i.bt, -2
  br label %bb.g

._crit_edge90.loopexit.unr-lcssa:                 ; preds = %bb.g
  %lcmp.mod131.not = icmp eq i64 %xtraiter130, 0
  br i1 %lcmp.mod131.not, label %._crit_edge90, label %.epil.preheader129

.epil.preheader129:                               ; preds = %._crit_edge90.loopexit.unr-lcssa, %.lr.ph89
  %.07088.epil.init = phi i64 [ 1, %.lr.ph89 ], [ %i.cr, %._crit_edge90.loopexit.unr-lcssa ]
  %lcmp.mod132 = trunc i64 %i.bt to i1
  tail call void @llvm.assume(i1 %lcmp.mod132)
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %.07088.epil.init
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !50
  %i.bx = sext i32 %i.bw to i64                   ; 2 uses
  %i.by = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.bx
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !8
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %indvars.iv100
  store double -1.000000e+00, ptr %i.ca, align 8, !tbaa !34
  %i.cb = getelementptr inbounds [8 x i8], ptr %i.bs, i64 %i.bx
  store double -1.000000e+00, ptr %i.cb, align 8, !tbaa !34
  br label %._crit_edge90

._crit_edge90:                                    ; preds = %.epil.preheader129, %._crit_edge90.loopexit.unr-lcssa, %.preheader80
  %indvars.iv.next101 = add nuw nsw i64 %indvars.iv100, 1 ; 2 uses
  %exitcond104.not = icmp eq i64 %indvars.iv.next101, %wide.trip.count103
  br i1 %exitcond104.not, label %.loopexit82, label %.preheader80, !llvm.loop !55

bb.g:                                             ; preds = %bb.g, %.lr.ph89.new
  %.07088 = phi i64 [ 1, %.lr.ph89.new ], [ %i.cr, %bb.g ] ; 3 uses
  %niter134 = phi i64 [ 0, %.lr.ph89.new ], [ %niter134.next.1, %bb.g ]
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %.07088
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !50
  %i.ce = sext i32 %i.cd to i64                   ; 2 uses
  %i.cf = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.ce
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !8
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %indvars.iv100
  store double -1.000000e+00, ptr %i.ch, align 8, !tbaa !34
  %i.ci = getelementptr inbounds [8 x i8], ptr %i.bs, i64 %i.ce
  store double -1.000000e+00, ptr %i.ci, align 8, !tbaa !34
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %.07088
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 4
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !50
  %i.cm = sext i32 %i.cl to i64                   ; 2 uses
  %i.cn = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.cm
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !8
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %indvars.iv100
  store double -1.000000e+00, ptr %i.cp, align 8, !tbaa !34
  %i.cq = getelementptr inbounds [8 x i8], ptr %i.bs, i64 %i.cm
  store double -1.000000e+00, ptr %i.cq, align 8, !tbaa !34
  %i.cr = add nuw i64 %.07088, 2                  ; 2 uses
  %niter134.next.1 = add nuw i64 %niter134, 2     ; 2 uses
  %niter134.ncmp.1 = icmp eq i64 %niter134.next.1, %unroll_iter133
  br i1 %niter134.ncmp.1, label %._crit_edge90.loopexit.unr-lcssa, label %bb.g, !llvm.loop !56

.loopexit82:                                      ; preds = %._crit_edge, %._crit_edge90, %.preheader84, %.preheader81
  %i.cs = tail call i32 @solveCircuit(i32 noundef %1, ptr noundef %i.n, ptr noundef %i.o) #15
  %.not78 = icmp eq i32 %i.cs, 0
  br i1 %.not78, label %bb.l, label %.preheader79

.preheader79:                                     ; preds = %.loopexit82
  %i.ct = icmp sgt i32 %1, 0
  br i1 %i.ct, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %.preheader79
  %wide.trip.count118 = zext nneg i32 %1 to i64   ; 2 uses
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %bb.k
  %indvars.iv114 = phi i32 [ 0, %.preheader.preheader ], [ %indvars.iv.next115, %bb.k ] ; 2 uses
  %.07594 = phi i32 [ %1, %.preheader.preheader ], [ %indvars.iv.next110, %bb.k ] ; 2 uses
  %indvars.iv105 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next106, %bb.k ] ; 5 uses
  %i.cu = sext i32 %indvars.iv114 to i64
  %2 = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv105
  br label %bb.h

bb.h:                                             ; preds = %.preheader, %bb.j
  %indvars.iv109 = phi i64 [ %i.cu, %.preheader ], [ %indvars.iv.next110.a, %bb.j ] ; 2 uses
  %indvars.iv107 = phi i64 [ %indvars.iv105, %.preheader ], [ %indvars.iv.next108, %bb.j ] ; 5 uses
  %i.cv = icmp eq i64 %indvars.iv105, %indvars.iv107
  br i1 %i.cv, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cw = load ptr, ptr %2, align 8, !tbaa !8     ; 2 uses
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %indvars.iv105
  %i.cy = load double, ptr %i.cx, align 8, !tbaa !34
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv107
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !8
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.da, i64 %indvars.iv107
  %i.dc = load double, ptr %i.db, align 8, !tbaa !34
  %i.dd = fadd double %i.cy, %i.dc
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %indvars.iv107
  %i.df = load double, ptr %i.de, align 8, !tbaa !34
  %i.dg = tail call double @llvm.fmuladd.f64(double %i.df, double -2.000000e+00, double %i.dd)
  %i.dh = fptrunc double %i.dg to float
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %.0 = phi float [ %i.dh, %bb.i ], [ 0.000000e+00, %bb.h ]
  %indvars.iv.next110.a = add nsw i64 %indvars.iv109, 1
  %i.di = getelementptr inbounds [4 x i8], ptr %i.m, i64 %indvars.iv109
  store float %.0, ptr %i.di, align 4, !tbaa !51
  %indvars.iv.next108 = add nuw nsw i64 %indvars.iv107, 1 ; 2 uses
  %exitcond116.not = icmp eq i64 %indvars.iv.next108, %wide.trip.count118
  br i1 %exitcond116.not, label %bb.k, label %bb.h, !llvm.loop !57

bb.k:                                             ; preds = %bb.j
  %indvars.iv.next106 = add nuw nsw i64 %indvars.iv105, 1 ; 2 uses
  %indvars.iv.next110 = add i32 %.07594, -1
  %indvars.iv.next115 = add i32 %indvars.iv114, %.07594
  %exitcond119.not = icmp eq i64 %indvars.iv.next106, %wide.trip.count118
  br i1 %exitcond119.not, label %.loopexit, label %.preheader, !llvm.loop !58

bb.l:                                             ; preds = %.loopexit82
  tail call void @free(ptr noundef %i.m) #15
  br label %.loopexit

.loopexit:                                        ; preds = %bb.k, %.preheader79, %bb.l
  %.074 = phi ptr [ null, %bb.l ], [ %i.m, %.preheader79 ], [ %i.m, %bb.k ]
  tail call void @free_array(ptr noundef %i.n) #15
  tail call void @free_array(ptr noundef %i.o) #15
  ret ptr %.074
}

declare ptr @new_array(i32 noundef, i32 noundef, double noundef) local_unnamed_addr #3

declare i32 @solveCircuit(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #4

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #5

declare void @free_array(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define hidden noundef ptr @mdsModel(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !44
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call fastcc ptr @compute_weighted_apsp_packed(ptr noundef nonnull %0, i32 noundef %1) ; 3 uses
  %i.e = icmp sgt i32 %1, 0
  br i1 %i.e, label %.lr.ph48.preheader, label %._crit_edge49

.lr.ph48.preheader:                               ; preds = %bb.b
  %i.f = zext nneg i32 %1 to i64
  br label %.lr.ph48

.lr.ph48:                                         ; preds = %.lr.ph48.preheader, %._crit_edge
  %indvars.iv = phi i64 [ 0, %.lr.ph48.preheader ], [ %indvars.iv.next, %._crit_edge ] ; 5 uses
  %.03646 = phi double [ 0.000000e+00, %.lr.ph48.preheader ], [ %.1.lcssa, %._crit_edge ] ; 2 uses
  %.03745 = phi i32 [ 0, %.lr.ph48.preheader ], [ %i.h, %._crit_edge ]
  %i.g = trunc nuw nsw i64 %indvars.iv to i32
  %i.h = add nuw nsw i32 %.03745, %i.g            ; 2 uses
  %i.i = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %indvars.iv ; 3 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !48   ; 2 uses
  %i.k = icmp ugt i64 %i.j, 1
  br i1 %i.k, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.lr.ph48
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !49
  %i.n = trunc i64 %indvars.iv to i32
  %i.o = mul i32 %1, %i.n
  %i.p = sub nsw i32 %i.o, %i.h
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  br label %bb.c

._crit_edge:                                      ; preds = %bb.e, %.lr.ph48
  %.1.lcssa = phi double [ %.03646, %.lr.ph48 ], [ %.2, %bb.e ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond52.not = icmp eq i64 %indvars.iv.next, %i.f
  br i1 %exitcond52.not, label %._crit_edge49, label %.lr.ph48, !llvm.loop !59

bb.c:                                             ; preds = %.lr.ph, %bb.e
  %.043 = phi i64 [ 1, %.lr.ph ], [ %i.ag, %bb.e ] ; 3 uses
  %.142 = phi double [ %.03646, %.lr.ph ], [ %.2, %bb.e ] ; 2 uses
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %.043
  %i.s = load i32, ptr %i.r, align 4, !tbaa !50   ; 2 uses
  %i.t = sext i32 %i.s to i64
  %i.u = icmp sgt i64 %indvars.iv, %i.t
  br i1 %i.u, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = add i32 %i.p, %i.s
  %i.w = sext i32 %i.v to i64
  %i.x = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.w ; 2 uses
  %i.y = load float, ptr %i.x, align 4, !tbaa !51
  %i.z = load ptr, ptr %i.q, align 8, !tbaa !44
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %.043
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !51 ; 2 uses
  %i.ac = fsub float %i.y, %i.ab
  %i.ad = tail call float @llvm.fabs.f32(float %i.ac)
  %i.ae = fpext float %i.ad to double
  %i.af = fadd double %.142, %i.ae
  store float %i.ab, ptr %i.x, align 4, !tbaa !51
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.2 = phi double [ %.142, %bb.c ], [ %i.af, %bb.d ] ; 2 uses
  %i.ag = add nuw i64 %.043, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.ag, %i.j
  br i1 %exitcond.not, label %._crit_edge, label %bb.c, !llvm.loop !60

._crit_edge49:                                    ; preds = %._crit_edge, %bb.b
  %.036.lcssa = phi double [ 0.000000e+00, %bb.b ], [ %.1.lcssa, %._crit_edge ]
  %i.ah = load i8, ptr @Verbose, align 1, !tbaa !61
  %.not = icmp eq i8 %i.ah, 0
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %._crit_edge49
  %i.ai = load ptr, ptr @stderr, align 8, !tbaa !42
  %i.aj = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ai, ptr noundef nonnull @.str, double noundef %.036.lcssa) #17 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge49, %bb.f, %bb.a
  %.038 = phi ptr [ null, %bb.a ], [ %i.d, %bb.f ], [ %i.d, %._crit_edge49 ]
  ret ptr %.038
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @compute_weighted_apsp_packed(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = add nsw i32 %1, 1
  %i.b = mul nsw i32 %i.a, %1                     ; 3 uses
  %i.c = sdiv i32 %i.b, 2
  %i.d = sext i32 %i.c to i64                     ; 3 uses
  %.off = add i32 %i.b, 1
  %.not.i = icmp ult i32 %.off, 3
  br i1 %.not.i, label %.thread.i, label %bb.b

.thread.i:                                        ; preds = %bb.a
  %i.e = tail call noalias ptr @calloc(i64 noundef 0, i64 noundef 4) #16
  br label %gv_calloc.exit

bb.b:                                             ; preds = %bb.a
  %mul.ov.i = icmp slt i32 %i.b, -1
  br i1 %mul.ov.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr @stderr, align 8, !tbaa !42
  %i.g = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.f, ptr noundef nonnull @.str.14, i64 noundef %i.d, i64 noundef 4) #17 ; 0 uses
  tail call fastcc void @graphviz_exit() #18
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.h = tail call noalias ptr @calloc(i64 noundef %i.d, i64 noundef 4) #16 ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.e, label %gv_calloc.exit

bb.e:                                             ; preds = %bb.d
  %i.j = load ptr, ptr @stderr, align 8, !tbaa !42
  %i.k = shl nuw nsw i64 %i.d, 2
  %i.l = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.j, ptr noundef nonnull @.str.15, i64 noundef %i.k) #17 ; 0 uses
  tail call fastcc void @graphviz_exit() #18
  unreachable

gv_calloc.exit:                                   ; preds = %.thread.i, %bb.d
  %i.m = phi ptr [ %i.e, %.thread.i ], [ %i.h, %bb.d ] ; 2 uses
  %i.n = sext i32 %1 to i64                       ; 3 uses
  %.not.i22 = icmp eq i32 %1, 0
  br i1 %.not.i22, label %gv_calloc.exit26, label %bb.f

bb.f:                                             ; preds = %gv_calloc.exit
  %mul.ov.i24 = icmp slt i32 %1, 0
  br i1 %mul.ov.i24, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.o = load ptr, ptr @stderr, align 8, !tbaa !42
  %i.p = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.o, ptr noundef nonnull @.str.14, i64 noundef %i.n, i64 noundef 4) #17 ; 0 uses
  tail call fastcc void @graphviz_exit() #18
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.q = tail call noalias ptr @calloc(i64 noundef %i.n, i64 noundef 4) #16 ; 4 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.i, label %.lr.ph.preheader

bb.i:                                             ; preds = %bb.h
  %i.s = load ptr, ptr @stderr, align 8, !tbaa !42
  %i.t = shl nuw nsw i64 %i.n, 2
  %i.u = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.s, ptr noundef nonnull @.str.15, i64 noundef %i.t) #17 ; 0 uses
  tail call fastcc void @graphviz_exit() #18
  unreachable

gv_calloc.exit26:                                 ; preds = %gv_calloc.exit
  %i.v = tail call noalias ptr @calloc(i64 noundef 0, i64 noundef 4) #16
  br label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.h
  %i.w = add nsw i32 %1, -1                       ; 2 uses
  %wide.trip.count40 = zext nneg i32 %1 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv40 = phi i32 [ %1, %.lr.ph.preheader ], [ %indvars.iv.next35, %.lr.ph ] ; 2 uses
  %indvars.iv34 = phi i32 [ %i.w, %.lr.ph.preheader ], [ %indvars.iv.next39, %.lr.ph ] ; 2 uses
  %indvar = phi i64 [ 0, %.lr.ph.preheader ], [ %i.ad, %.lr.ph ] ; 4 uses
  %.02029 = phi i32 [ 0, %.lr.ph.preheader ], [ %indvars.iv40, %.lr.ph ]
  %indvars39 = trunc i64 %indvar to i32
  %2 = sext i32 %.02029 to i64
  %3 = shl nsw i64 %2, 2
  %scevgep = getelementptr i8, ptr %i.m, i64 %3
  %i.x = shl nuw nsw i64 %indvar, 2
  %scevgep31 = getelementptr i8, ptr %i.q, i64 %i.x
  %i.y = trunc i64 %indvar to i32
  %i.z = sub i32 %i.w, %i.y
  %i.aa = zext i32 %i.z to i64
  %i.ab = shl nuw nsw i64 %i.aa, 2
  %i.ac = add nuw nsw i64 %i.ab, 4
  tail call void @dijkstra_f(i32 noundef %indvars39, ptr noundef %0, i32 noundef %1, ptr noundef nonnull %i.q) #15
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep, ptr noundef nonnull align 4 dereferenceable(1) %scevgep31, i64 %i.ac, i1 false), !tbaa !51
  %i.ad = add nuw nsw i64 %indvar, 1              ; 2 uses
  %indvars.iv.next39 = add i32 %indvars.iv34, -1
  %indvars.iv.next35 = add i32 %indvars.iv40, %indvars.iv34
  %exitcond.not = icmp eq i64 %i.ad, %wide.trip.count40
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !62

._crit_edge:                                      ; preds = %.lr.ph, %gv_calloc.exit26
  %i.ae = phi ptr [ %i.v, %gv_calloc.exit26 ], [ %i.q, %.lr.ph ]
  tail call void @free(ptr noundef %i.ae) #15
  ret ptr %i.m
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #4

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define hidden noundef ptr @compute_apsp_packed(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = add nsw i32 %1, 1
  %i.b = mul nsw i32 %i.a, %1                     ; 3 uses
  %i.c = sdiv i32 %i.b, 2
  %i.d = sext i32 %i.c to i64                     ; 3 uses
  %.off = add i32 %i.b, 1
  %.not.i = icmp ult i32 %.off, 3
  br i1 %.not.i, label %.thread.i, label %bb.b

.thread.i:                                        ; preds = %bb.a
  %i.e = tail call noalias ptr @calloc(i64 noundef 0, i64 noundef 4) #16
  br label %gv_calloc.exit

bb.b:                                             ; preds = %bb.a
  %mul.ov.i = icmp slt i32 %i.b, -1
  br i1 %mul.ov.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr @stderr, align 8, !tbaa !42
  %i.g = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.f, ptr noundef nonnull @.str.14, i64 noundef %i.d, i64 noundef 4) #17 ; 0 uses
  tail call fastcc void @graphviz_exit() #18
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.h = tail call noalias ptr @calloc(i64 noundef %i.d, i64 noundef 4) #16 ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.e, label %gv_calloc.exit

bb.e:                                             ; preds = %bb.d
  %i.j = load ptr, ptr @stderr, align 8, !tbaa !42
  %i.k = shl nuw nsw i64 %i.d, 2
  %i.l = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.j, ptr noundef nonnull @.str.15, i64 noundef %i.k) #17 ; 0 uses
  tail call fastcc void @graphviz_exit() #18
  unreachable

gv_calloc.exit:                                   ; preds = %.thread.i, %bb.d
  %i.m = phi ptr [ %i.e, %.thread.i ], [ %i.h, %bb.d ] ; 3 uses
  %i.n = sext i32 %1 to i64                       ; 3 uses
  %.not.i22 = icmp eq i32 %1, 0
  br i1 %.not.i22, label %gv_calloc.exit26, label %bb.f

bb.f:                                             ; preds = %gv_calloc.exit
  %mul.ov.i24 = icmp slt i32 %1, 0
  br i1 %mul.ov.i24, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.o = load ptr, ptr @stderr, align 8, !tbaa !42
  %i.p = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.o, ptr noundef nonnull @.str.14, i64 noundef %i.n, i64 noundef 4) #17 ; 0 uses
  tail call fastcc void @graphviz_exit() #18
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.q = tail call noalias ptr @calloc(i64 noundef %i.n, i64 noundef 4) #16 ; 5 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.i, label %.lr.ph.preheader

bb.i:                                             ; preds = %bb.h
  %i.s = load ptr, ptr @stderr, align 8, !tbaa !42
  %i.t = shl nuw nsw i64 %i.n, 2
  %i.u = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.s, ptr noundef nonnull @.str.15, i64 noundef %i.t) #17 ; 0 uses
  tail call fastcc void @graphviz_exit() #18
  unreachable

gv_calloc.exit26:                                 ; preds = %gv_calloc.exit
  %i.v = tail call noalias ptr @calloc(i64 noundef 0, i64 noundef 4) #16
  br label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.h
  %wide.trip.count = zext nneg i32 %1 to i64      ; 3 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.loopexit
  %indvars.iv38 = phi i32 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next39, %.loopexit ] ; 2 uses
  %.02029 = phi i32 [ %1, %.lr.ph.preheader ], [ %indvars.iv.next34, %.loopexit ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.loopexit ] ; 6 uses
  %2 = sub nsw i64 %wide.trip.count, %indvars.iv  ; 3 uses
  %indvars40 = trunc i64 %indvars.iv to i32
  %i.w = sext i32 %indvars.iv38 to i64            ; 3 uses
  tail call void @bfs(i32 noundef %indvars40, ptr noundef %0, i32 noundef %1, ptr noundef nonnull %i.q) #15
  %min.iters.check = icmp ult i64 %2, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %2, -8                         ; 4 uses
  %i.x = add i64 %n.vec, %i.w
  %i.y = add i64 %indvars.iv, %n.vec
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv
  %invariant.gep = getelementptr [4 x i8], ptr %i.m, i64 %i.w
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %index ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %wide.load = load <4 x i32>, ptr %i.aa, align 4, !tbaa !50
  %wide.load45 = load <4 x i32>, ptr %i.ab, align 4, !tbaa !50
  %i.ac = sitofp <4 x i32> %wide.load to <4 x float>
  %i.ad = sitofp <4 x i32> %wide.load45 to <4 x float>
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %gep, i64 16
  store <4 x float> %i.ac, ptr %gep, align 4, !tbaa !51
  store <4 x float> %i.ad, ptr %i.ae, align 4, !tbaa !51
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.af = icmp eq i64 %index.next, %n.vec
  br i1 %i.af, label %middle.block, label %vector.body, !llvm.loop !63

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %2, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv33.ph = phi i64 [ %i.w, %.lr.ph ], [ %i.x, %middle.block ]
  %indvars.iv31.ph = phi i64 [ %indvars.iv, %.lr.ph ], [ %i.y, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv33 = phi i64 [ %indvars.iv.next34.a, %scalar.ph ], [ %indvars.iv33.ph, %scalar.ph.preheader ] ; 2 uses
  %indvars.iv31 = phi i64 [ %indvars.iv.next32, %scalar.ph ], [ %indvars.iv31.ph, %scalar.ph.preheader ] ; 2 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv31
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !50
  %i.ai = sitofp i32 %i.ah to float
  %indvars.iv.next34.a = add nsw i64 %indvars.iv33, 1
  %i.aj = getelementptr inbounds [4 x i8], ptr %i.m, i64 %indvars.iv33
  store float %i.ai, ptr %i.aj, align 4, !tbaa !51
  %indvars.iv.next32 = add nuw nsw i64 %indvars.iv31, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next32, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %scalar.ph, !llvm.loop !66

.loopexit:                                        ; preds = %scalar.ph, %middle.block
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %indvars.iv.next34 = add i32 %.02029, -1
  %indvars.iv.next39 = add i32 %indvars.iv38, %.02029
  %exitcond41.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond41.not, label %._crit_edge, label %.lr.ph, !llvm.loop !67

._crit_edge:                                      ; preds = %.loopexit, %gv_calloc.exit26
  %i.ak = phi ptr [ %i.v, %gv_calloc.exit26 ], [ %i.q, %.loopexit ]
  tail call void @free(ptr noundef %i.ak) #15
  ret ptr %i.m
}

declare hidden void @bfs(i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define hidden noundef ptr @compute_apsp_artificial_weights_packed(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !44   ; 4 uses
  %i.c = icmp sgt i32 %1, 0                       ; 2 uses
  br i1 %i.c, label %.lr.ph.preheader, label %gv_calloc.exit

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %1 to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.d = icmp ult i32 %1, 4
  br i1 %i.d, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.3, %.lr.ph ] ; 5 uses
  %.097117 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.s, %.lr.ph ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.e = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %indvars.iv
  %i.f = load i64, ptr %i.e, align 8, !tbaa !48
  %i.g = add i64 %i.f, %.097117
  %i.h = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %indvars.iv
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.j = load i64, ptr %i.i, align 8, !tbaa !48
  %i.k = add i64 %i.j, %i.g
  %i.l = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %indvars.iv
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 80
  %i.n = load i64, ptr %i.m, align 8, !tbaa !48
  %i.o = add i64 %i.n, %i.k
  %i.p = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %indvars.iv
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 120
  %i.r = load i64, ptr %i.q, align 8, !tbaa !48
  %i.s = add i64 %i.r, %i.o                       ; 3 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.unr-lcssa, label %.lr.ph, !llvm.loop !68

._crit_edge.unr-lcssa:                            ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.3, %._crit_edge.unr-lcssa ]
  %.097117.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.s, %._crit_edge.unr-lcssa ]
  %lcmp.mod177 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod177)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.lr.ph.epil.preheader ], [ %indvars.iv.next.epil, %.lr.ph.epil ] ; 2 uses
  %.097117.epil = phi i64 [ %.097117.epil.init, %.lr.ph.epil.preheader ], [ %i.v, %.lr.ph.epil ]
  %epil.iter = phi i64 [ 0, %.lr.ph.epil.preheader ], [ %epil.iter.next, %.lr.ph.epil ]
  %i.t = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %indvars.iv.epil
  %i.u = load i64, ptr %i.t, align 8, !tbaa !48
  %i.v = add i64 %i.u, %.097117.epil              ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !69

._crit_edge:                                      ; preds = %.lr.ph.epil, %._crit_edge.unr-lcssa
  %.lcssa = phi i64 [ %i.s, %._crit_edge.unr-lcssa ], [ %i.v, %.lr.ph.epil ] ; 5 uses
  %.not.i = icmp eq i64 %.lcssa, 0
  br i1 %.not.i, label %gv_calloc.exit.thread164, label %bb.b

gv_calloc.exit.thread164:                         ; preds = %._crit_edge
  %i.w = tail call noalias ptr @calloc(i64 noundef 0, i64 noundef 4) #16
  br label %gv_calloc.exit.thread

bb.b:                                             ; preds = %._crit_edge
  %mul.ov.i = icmp ugt i64 %.lcssa, 4611686018427387903
  br i1 %mul.ov.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.x = load ptr, ptr @stderr, align 8, !tbaa !42
  %i.y = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.x, ptr noundef nonnull @.str.14, i64 noundef %.lcssa, i64 noundef 4) #17 ; 0 uses
  tail call fastcc void @graphviz_exit() #18
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.z = tail call noalias ptr @calloc(i64 noundef %.lcssa, i64 noundef 4) #16 ; 2 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %bb.e, label %gv_calloc.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.ab = load ptr, ptr @stderr, align 8, !tbaa !42
  %i.ac = shl nuw i64 %.lcssa, 2
  %i.ad = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ab, ptr noundef nonnull @.str.15, i64 noundef %i.ac) #17 ; 0 uses
  tail call fastcc void @graphviz_exit() #18
  unreachable

gv_calloc.exit:                                   ; preds = %bb.a
  %.not.i108 = icmp eq i32 %1, 0
  br i1 %.not.i108, label %gv_calloc.exit112.thread, label %bb.f

bb.f:                                             ; preds = %gv_calloc.exit
  %i.ae = sext i32 %1 to i64
  %i.af = load ptr, ptr @stderr, align 8, !tbaa !42
  %i.ag = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.af, ptr noundef nonnull @.str.14, i64 noundef %i.ae, i64 noundef 4) #17 ; 0 uses
  tail call fastcc void @graphviz_exit() #18
  unreachable

gv_calloc.exit.thread:                            ; preds = %bb.d, %gv_calloc.exit.thread164
  %.ph166 = phi ptr [ %i.w, %gv_calloc.exit.thread164 ], [ %i.z, %bb.d ] ; 2 uses
  %i.ah = zext nneg i32 %1 to i64                 ; 2 uses
  %i.ai = tail call noalias ptr @calloc(i64 noundef %i.ah, i64 noundef 4) #16 ; 9 uses
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %bb.g, label %gv_calloc.exit112

bb.g:                                             ; preds = %gv_calloc.exit.thread
  %i.ak = load ptr, ptr @stderr, align 8, !tbaa !42
  %i.al = shl nuw nsw i64 %i.ah, 2
  %i.am = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ak, ptr noundef nonnull @.str.15, i64 noundef %i.al) #17 ; 0 uses
  tail call fastcc void @graphviz_exit() #18
  unreachable

gv_calloc.exit112:                                ; preds = %gv_calloc.exit.thread
  %.not.not = icmp eq ptr %i.b, null
  %wide.trip.count144 = zext nneg i32 %1 to i64   ; 2 uses
  br i1 %.not.not, label %.lr.ph134, label %.lr.ph125

gv_calloc.exit112.thread:                         ; preds = %gv_calloc.exit
  %i.an = tail call noalias ptr @calloc(i64 noundef 0, i64 noundef 4) #16 ; 2 uses
  %.not168.not = icmp eq ptr %i.b, null
  br i1 %.not168.not, label %._crit_edge135, label %._crit_edge126

.lr.ph125:                                        ; preds = %gv_calloc.exit112, %._crit_edge122
  %indvars.iv146 = phi i64 [ %indvars.iv.next147, %._crit_edge122 ], [ 0, %gv_calloc.exit112 ] ; 3 uses
  %.096124 = phi ptr [ %i.ax, %._crit_edge122 ], [ %.ph166, %gv_calloc.exit112 ] ; 3 uses
  %i.ao = trunc nuw nsw i64 %indvars.iv146 to i32 ; 2 uses
  tail call void @fill_neighbors_vec_unweighted(ptr noundef nonnull %0, i32 noundef %i.ao, ptr noundef nonnull %i.ai) #15
  %i.ap = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %indvars.iv146 ; 5 uses
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !48 ; 2 uses
  %i.ar = add i64 %i.aq, -1                       ; 2 uses
  %.not107118 = icmp eq i64 %i.ar, 0
  br i1 %.not107118, label %._crit_edge122, label %.lr.ph121

.lr.ph121:                                        ; preds = %.lr.ph125
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.at = add i64 %i.aq, -2
  %i.au = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  br label %bb.h

._crit_edge122:                                   ; preds = %bb.h, %.lr.ph125
  tail call void @empty_neighbors_vec(ptr noundef nonnull %0, i32 noundef %i.ao, ptr noundef nonnull %i.ai) #15
  %i.av = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  store ptr %.096124, ptr %i.av, align 8, !tbaa !44
  %i.aw = load i64, ptr %i.ap, align 8, !tbaa !48
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %.096124, i64 %i.aw
  %indvars.iv.next147 = add nuw nsw i64 %indvars.iv146, 1 ; 2 uses
  %exitcond150.not = icmp eq i64 %indvars.iv.next147, %wide.trip.count144
  br i1 %exitcond150.not, label %._crit_edge126, label %.lr.ph125, !llvm.loop !70

bb.h:                                             ; preds = %.lr.ph121, %bb.h
  %.094119 = phi i64 [ 1, %.lr.ph121 ], [ %i.bo, %bb.h ] ; 4 uses
  %i.ay = load ptr, ptr %i.as, align 8, !tbaa !49
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %.094119
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !50 ; 2 uses
  %i.bb = sext i32 %i.ba to i64
  %i.bc = getelementptr inbounds [40 x i8], ptr %0, i64 %i.bb
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !48
  %i.be = tail call i64 @common_neighbors(ptr noundef nonnull %0, i32 noundef %i.ba, ptr noundef nonnull %i.ai) #15
  %i.bf = add i64 %i.at, %i.bd
  %i.bg = shl i64 %i.be, 1
  %i.bh = sub i64 %i.bf, %i.bg
  %i.bi = uitofp nsz i64 %i.bh to float
  %i.bj = load ptr, ptr %i.au, align 8, !tbaa !44
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %.094119
  %i.bl = load float, ptr %i.bk, align 4, !tbaa !51
  %i.bm = tail call nsz float @llvm.maxnum.f32(float %i.bi, float %i.bl)
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %.096124, i64 %.094119
  store float %i.bm, ptr %i.bn, align 4, !tbaa !51
  %i.bo = add i64 %.094119, 1                     ; 2 uses
  %.not107 = icmp ugt i64 %i.bo, %i.ar
  br i1 %.not107, label %._crit_edge122, label %bb.h, !llvm.loop !71

._crit_edge126:                                   ; preds = %._crit_edge122, %gv_calloc.exit112.thread
  %i.bp = phi ptr [ %i.an, %gv_calloc.exit112.thread ], [ %i.ai, %._crit_edge122 ]
  %i.bq = tail call fastcc ptr @compute_weighted_apsp_packed(ptr noundef nonnull %0, i32 noundef %1)
  br label %bb.j

.lr.ph134:                                        ; preds = %gv_calloc.exit112, %._crit_edge131
  %indvars.iv141 = phi i64 [ %indvars.iv.next142, %._crit_edge131 ], [ 0, %gv_calloc.exit112 ] ; 3 uses
  %.1133 = phi ptr [ %i.bz, %._crit_edge131 ], [ %.ph166, %gv_calloc.exit112 ] ; 3 uses
end_hunk_0
begin_hunk_1_@stress_majorization_kD_mkernel:bb.a
  %i.en = getelementptr inbounds nuw i8, ptr %i.ea, i64 48
  store ptr %i.em, ptr %i.en, align 8, !tbaa !80
  %.idx852.i = mul nuw nsw i64 %i.ce, 28
  %i.eo = getelementptr inbounds nuw i8, ptr %i.dv, i64 %.idx852.i
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ea, i64 56
  store ptr %i.eo, ptr %i.ep, align 8, !tbaa !80
  %.idx853.i = shl nuw nsw i64 %i.ce, 5           ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.dv, i64 %.idx853.i
  %i.er = getelementptr inbounds nuw i8, ptr %i.ea, i64 64
  store ptr %i.eq, ptr %i.er, align 8, !tbaa !80
  %.idx854.i = mul nuw nsw i64 %i.ce, 36
  %i.es = getelementptr inbounds nuw i8, ptr %i.dv, i64 %.idx854.i
  %i.et = getelementptr inbounds nuw i8, ptr %i.ea, i64 72
  store ptr %i.es, ptr %i.et, align 8, !tbaa !80
  %.idx855.i = mul nuw nsw i64 %i.ce, 40          ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.dv, i64 %.idx855.i
  %i.ev = getelementptr inbounds nuw i8, ptr %i.ea, i64 80
  store ptr %i.eu, ptr %i.ev, align 8, !tbaa !80
  %.idx856.i = mul nuw nsw i64 %i.ce, 44
  %i.ew = getelementptr inbounds nuw i8, ptr %i.dv, i64 %.idx856.i
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ea, i64 88
  store ptr %i.ew, ptr %i.ex, align 8, !tbaa !80
  %.idx857.i = mul nuw nsw i64 %i.ce, 48
  %i.ey = getelementptr inbounds nuw i8, ptr %i.dv, i64 %.idx857.i
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ea, i64 96
  store ptr %i.ey, ptr %i.ez, align 8, !tbaa !80
  %.idx858.i = mul nuw nsw i64 %i.ce, 52
  %i.fa = getelementptr inbounds nuw i8, ptr %i.dv, i64 %.idx858.i
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ea, i64 104
  store ptr %i.fa, ptr %i.fb, align 8, !tbaa !80
  %.idx859.i = mul nuw nsw i64 %i.ce, 56
  %i.fc = getelementptr inbounds nuw i8, ptr %i.dv, i64 %.idx859.i
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ea, i64 112
  store ptr %i.fc, ptr %i.fd, align 8, !tbaa !80
  %.idx860.i = mul nuw nsw i64 %i.ce, 60
  %i.fe = getelementptr inbounds nuw i8, ptr %i.dv, i64 %.idx860.i
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ea, i64 120
  store ptr %i.fe, ptr %i.ff, align 8, !tbaa !80
  %.idx861.i = shl nuw nsw i64 %i.ce, 6
  %i.fg = getelementptr inbounds nuw i8, ptr %i.dv, i64 %.idx861.i
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ea, i64 128
  store ptr %i.fg, ptr %i.fh, align 8, !tbaa !80
  %.idx862.i = mul nuw nsw i64 %i.ce, 68
  %i.fi = getelementptr inbounds nuw i8, ptr %i.dv, i64 %.idx862.i
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ea, i64 136
  store ptr %i.fi, ptr %i.fj, align 8, !tbaa !80
  %.idx863.i = mul nuw nsw i64 %i.ce, 72
  %i.fk = getelementptr inbounds nuw i8, ptr %i.dv, i64 %.idx863.i
  %i.fl = getelementptr inbounds nuw i8, ptr %i.ea, i64 144
  store ptr %i.fk, ptr %i.fl, align 8, !tbaa !80
  %.idx864.i = mul nuw nsw i64 %i.ce, 76
  %i.fm = getelementptr inbounds nuw i8, ptr %i.dv, i64 %.idx864.i
  %i.fn = getelementptr inbounds nuw i8, ptr %i.ea, i64 152
  store ptr %i.fm, ptr %i.fn, align 8, !tbaa !80
  %.idx865.i = mul nuw nsw i64 %i.ce, 80
  %i.fo = getelementptr inbounds nuw i8, ptr %i.dv, i64 %.idx865.i
  %i.fp = getelementptr inbounds nuw i8, ptr %i.ea, i64 160
  store ptr %i.fo, ptr %i.fp, align 8, !tbaa !80
  %.idx866.i = mul nuw nsw i64 %i.ce, 84
  %i.fq = getelementptr inbounds nuw i8, ptr %i.dv, i64 %.idx866.i
  %i.fr = getelementptr inbounds nuw i8, ptr %i.ea, i64 168
  store ptr %i.fq, ptr %i.fr, align 8, !tbaa !80
  %.idx867.i = mul nuw nsw i64 %i.ce, 88
  %i.fs = getelementptr inbounds nuw i8, ptr %i.dv, i64 %.idx867.i
  %i.ft = getelementptr inbounds nuw i8, ptr %i.ea, i64 176
  store ptr %i.fs, ptr %i.ft, align 8, !tbaa !80
  %.idx868.i = mul nuw nsw i64 %i.ce, 92
  %i.fu = getelementptr inbounds nuw i8, ptr %i.dv, i64 %.idx868.i
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ea, i64 184
  store ptr %i.fu, ptr %i.fv, align 8, !tbaa !80
  %.idx869.i = mul nuw nsw i64 %i.ce, 96
  %i.fw = getelementptr inbounds nuw i8, ptr %i.dv, i64 %.idx869.i
  %i.fx = getelementptr inbounds nuw i8, ptr %i.ea, i64 192
  store ptr %i.fw, ptr %i.fx, align 8, !tbaa !80
  %.idx870.i = mul nuw nsw i64 %i.ce, 100
  %i.fy = getelementptr inbounds nuw i8, ptr %i.dv, i64 %.idx870.i
  %i.fz = getelementptr inbounds nuw i8, ptr %i.ea, i64 200
  store ptr %i.fy, ptr %i.fz, align 8, !tbaa !80
  %.idx871.i = mul nuw nsw i64 %i.ce, 104
  %i.ga = getelementptr inbounds nuw i8, ptr %i.dv, i64 %.idx871.i
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ea, i64 208
  store ptr %i.ga, ptr %i.gb, align 8, !tbaa !80
  %.idx872.i = mul nuw nsw i64 %i.ce, 108
  %i.gc = getelementptr inbounds nuw i8, ptr %i.dv, i64 %.idx872.i
  %i.gd = getelementptr inbounds nuw i8, ptr %i.ea, i64 216
  store ptr %i.gc, ptr %i.gd, align 8, !tbaa !80
  %.idx873.i = mul nuw nsw i64 %i.ce, 112
  %i.ge = getelementptr inbounds nuw i8, ptr %i.dv, i64 %.idx873.i
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ea, i64 224
  store ptr %i.ge, ptr %i.gf, align 8, !tbaa !80
  %.idx874.i = mul nuw nsw i64 %i.ce, 116
  %i.gg = getelementptr inbounds nuw i8, ptr %i.dv, i64 %.idx874.i
  %i.gh = getelementptr inbounds nuw i8, ptr %i.ea, i64 232
  store ptr %i.gg, ptr %i.gh, align 8, !tbaa !80
  %.idx875.i = mul nuw nsw i64 %i.ce, 120
  %i.gi = getelementptr inbounds nuw i8, ptr %i.dv, i64 %.idx875.i
  %i.gj = getelementptr inbounds nuw i8, ptr %i.ea, i64 240
  store ptr %i.gi, ptr %i.gj, align 8, !tbaa !80
  %.idx876.i = mul nuw nsw i64 %i.ce, 124
  %i.gk = getelementptr inbounds nuw i8, ptr %i.dv, i64 %.idx876.i
  %i.gl = getelementptr inbounds nuw i8, ptr %i.ea, i64 248
  store ptr %i.gk, ptr %i.gl, align 8, !tbaa !80
  %.idx877.i = shl nuw nsw i64 %i.ce, 7
  %i.gm = getelementptr inbounds nuw i8, ptr %i.dv, i64 %.idx877.i
  %i.gn = getelementptr inbounds nuw i8, ptr %i.ea, i64 256
  store ptr %i.gm, ptr %i.gn, align 8, !tbaa !80
  %.idx878.i = mul nuw nsw i64 %i.ce, 132
  %i.go = getelementptr inbounds nuw i8, ptr %i.dv, i64 %.idx878.i
  %i.gp = getelementptr inbounds nuw i8, ptr %i.ea, i64 264
  store ptr %i.go, ptr %i.gp, align 8, !tbaa !80
  %.idx879.i = mul nuw nsw i64 %i.ce, 136
  %i.gq = getelementptr inbounds nuw i8, ptr %i.dv, i64 %.idx879.i
  %i.gr = getelementptr inbounds nuw i8, ptr %i.ea, i64 272
  store ptr %i.gq, ptr %i.gr, align 8, !tbaa !80
  %.idx880.i = mul nuw nsw i64 %i.ce, 140
  %i.gs = getelementptr inbounds nuw i8, ptr %i.dv, i64 %.idx880.i
  %i.gt = getelementptr inbounds nuw i8, ptr %i.ea, i64 280
  store ptr %i.gs, ptr %i.gt, align 8, !tbaa !80
  %.idx881.i = mul nuw nsw i64 %i.ce, 144
  %i.gu = getelementptr inbounds nuw i8, ptr %i.dv, i64 %.idx881.i
  %i.gv = getelementptr inbounds nuw i8, ptr %i.ea, i64 288
  store ptr %i.gu, ptr %i.gv, align 8, !tbaa !80
  %.idx882.i = mul nuw nsw i64 %i.ce, 148
  %i.gw = getelementptr inbounds nuw i8, ptr %i.dv, i64 %.idx882.i
  %i.gx = getelementptr inbounds nuw i8, ptr %i.ea, i64 296
  store ptr %i.gw, ptr %i.gx, align 8, !tbaa !80
  %.idx883.i = mul nuw nsw i64 %i.ce, 152
  %i.gy = getelementptr inbounds nuw i8, ptr %i.dv, i64 %.idx883.i
  %i.gz = getelementptr inbounds nuw i8, ptr %i.ea, i64 304
  store ptr %i.gy, ptr %i.gz, align 8, !tbaa !80
  %.idx884.i = mul nuw nsw i64 %i.ce, 156
  %i.ha = getelementptr inbounds nuw i8, ptr %i.dv, i64 %.idx884.i
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ea, i64 312
  store ptr %i.ha, ptr %i.hb, align 8, !tbaa !80
  %i.hc = call i32 @rand() #15
  %i.hd = srem i32 %i.hc, %1                      ; 6 uses
  %i.he = sext i32 %i.hd to i64
  %i.hf = getelementptr inbounds [4 x i8], ptr %i.dd, i64 %i.he
  store i32 0, ptr %i.hf, align 4, !tbaa !50
  store i32 %i.hd, ptr %i.dp, align 4, !tbaa !50
  br i1 %i.h, label %bb.ak, label %bb.al

bb.aj:                                            ; preds = %gv_calloc.exit564.i
  %i.hg = load ptr, ptr @stderr, align 8, !tbaa !42
  %i.hh = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.hg, ptr noundef nonnull @.str.15, i64 noundef 320) #17 ; 0 uses
  call fastcc void @graphviz_exit() #18
  unreachable

bb.ak:                                            ; preds = %gv_calloc.exit565.preheader.i
  call void @ngdijkstra(i32 noundef %i.hd, ptr noundef nonnull %0, i32 noundef range(i32 2, -2147483648) %1, ptr noundef nonnull %i.dv) #15
  br label %bb.am

bb.al:                                            ; preds = %gv_calloc.exit565.preheader.i
  call void @bfs(i32 noundef %i.hd, ptr noundef nonnull %0, i32 noundef range(i32 2, -2147483648) %1, ptr noundef nonnull %i.dv) #15
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.dl, ptr noundef nonnull align 4 dereferenceable(1) %i.dv, i64 %i.df, i1 false), !tbaa !50
  %i.hi = add nsw i64 %i.ce, -1                   ; 2 uses
  %xtraiter967 = and i64 %i.ce, 3                 ; 3 uses
  %i.hj = icmp ult i64 %i.hi, 3
  br i1 %i.hj, label %.epil.preheader966, label %.new

.new:                                             ; preds = %bb.am
  %unroll_iter972 = and i64 %i.ce, 2147483644
  br label %bb.an

bb.an:                                            ; preds = %bb.an, %.new
  %indvars.iv724.i = phi i64 [ 0, %.new ], [ %indvars.iv.next725.i.3, %bb.an ] ; 6 uses
  %.0504657.i = phi i32 [ %i.hd, %.new ], [ %spec.select550.i.3, %bb.an ]
  %.0511656.i = phi i32 [ 0, %.new ], [ %spec.select.i.3, %bb.an ] ; 2 uses
  %niter973 = phi i64 [ 0, %.new ], [ %niter973.next.3, %bb.an ]
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %i.dv, i64 %indvars.iv724.i
  %i.hl = load i32, ptr %i.hk, align 4, !tbaa !50 ; 2 uses
  %i.hm = icmp sgt i32 %i.hl, %.0511656.i
  %spec.select.i = call i32 @llvm.smax.i32(i32 %i.hl, i32 %.0511656.i) ; 2 uses
  %i.hn = trunc nuw nsw i64 %indvars.iv724.i to i32
  %spec.select550.i = select i1 %i.hm, i32 %i.hn, i32 %.0504657.i
  %indvars.iv.next725.i = or disjoint i64 %indvars.iv724.i, 1 ; 2 uses
  %i.ho = getelementptr inbounds nuw [4 x i8], ptr %i.dv, i64 %indvars.iv.next725.i
  %i.hp = load i32, ptr %i.ho, align 4, !tbaa !50 ; 2 uses
  %i.hq = icmp sgt i32 %i.hp, %spec.select.i
  %spec.select.i.1 = call i32 @llvm.smax.i32(i32 %i.hp, i32 %spec.select.i) ; 2 uses
  %i.hr = trunc nuw nsw i64 %indvars.iv.next725.i to i32
  %spec.select550.i.1 = select i1 %i.hq, i32 %i.hr, i32 %spec.select550.i
  %indvars.iv.next725.i.1 = or disjoint i64 %indvars.iv724.i, 2 ; 2 uses
  %i.hs = getelementptr inbounds nuw [4 x i8], ptr %i.dv, i64 %indvars.iv.next725.i.1
  %i.ht = load i32, ptr %i.hs, align 4, !tbaa !50 ; 2 uses
  %i.hu = icmp sgt i32 %i.ht, %spec.select.i.1
  %spec.select.i.2 = call i32 @llvm.smax.i32(i32 %i.ht, i32 %spec.select.i.1) ; 2 uses
  %i.hv = trunc nuw nsw i64 %indvars.iv.next725.i.1 to i32
  %spec.select550.i.2 = select i1 %i.hu, i32 %i.hv, i32 %spec.select550.i.1
  %indvars.iv.next725.i.2 = or disjoint i64 %indvars.iv724.i, 3 ; 2 uses
  %i.hw = getelementptr inbounds nuw [4 x i8], ptr %i.dv, i64 %indvars.iv.next725.i.2
  %i.hx = load i32, ptr %i.hw, align 4, !tbaa !50 ; 2 uses
  %i.hy = icmp sgt i32 %i.hx, %spec.select.i.2
  %spec.select.i.3 = call i32 @llvm.smax.i32(i32 %i.hx, i32 %spec.select.i.2) ; 2 uses
  %i.hz = trunc nuw nsw i64 %indvars.iv.next725.i.2 to i32
  %spec.select550.i.3 = select i1 %i.hy, i32 %i.hz, i32 %spec.select550.i.2 ; 3 uses
  %indvars.iv.next725.i.3 = add nuw nsw i64 %indvars.iv724.i, 4 ; 2 uses
  %niter973.next.3 = add nuw i64 %niter973, 4     ; 2 uses
  %niter973.ncmp.3 = icmp eq i64 %niter973.next.3, %unroll_iter972
  br i1 %niter973.ncmp.3, label %.preheader646.i.preheader.unr-lcssa, label %bb.an, !llvm.loop !81

.preheader646.i.preheader.unr-lcssa:              ; preds = %bb.an
  %lcmp.mod969.not = icmp eq i64 %xtraiter967, 0
  br i1 %lcmp.mod969.not, label %.preheader646.i.preheader, label %.epil.preheader966

.epil.preheader966:                               ; preds = %.preheader646.i.preheader.unr-lcssa, %bb.am
  %indvars.iv724.i.epil.init = phi i64 [ 0, %bb.am ], [ %indvars.iv.next725.i.3, %.preheader646.i.preheader.unr-lcssa ]
  %.0504657.i.epil.init = phi i32 [ %i.hd, %bb.am ], [ %spec.select550.i.3, %.preheader646.i.preheader.unr-lcssa ]
  %.0511656.i.epil.init = phi i32 [ 0, %bb.am ], [ %spec.select.i.3, %.preheader646.i.preheader.unr-lcssa ]
  %lcmp.mod971 = icmp ne i64 %xtraiter967, 0
  call void @llvm.assume(i1 %lcmp.mod971)
  br label %bb.ao

bb.ao:                                            ; preds = %bb.ao, %.epil.preheader966
  %indvars.iv724.i.epil = phi i64 [ %indvars.iv724.i.epil.init, %.epil.preheader966 ], [ %indvars.iv.next725.i.epil, %bb.ao ] ; 3 uses
  %.0504657.i.epil = phi i32 [ %.0504657.i.epil.init, %.epil.preheader966 ], [ %spec.select550.i.epil, %bb.ao ]
  %.0511656.i.epil = phi i32 [ %.0511656.i.epil.init, %.epil.preheader966 ], [ %spec.select.i.epil, %bb.ao ] ; 2 uses
  %epil.iter968 = phi i64 [ 0, %.epil.preheader966 ], [ %epil.iter968.next, %bb.ao ]
  %i.ia = getelementptr inbounds nuw [4 x i8], ptr %i.dv, i64 %indvars.iv724.i.epil
  %i.ib = load i32, ptr %i.ia, align 4, !tbaa !50 ; 2 uses
  %i.ic = icmp sgt i32 %i.ib, %.0511656.i.epil
  %spec.select.i.epil = call i32 @llvm.smax.i32(i32 %i.ib, i32 %.0511656.i.epil)
  %i.id = trunc nuw nsw i64 %indvars.iv724.i.epil to i32
  %spec.select550.i.epil = select i1 %i.ic, i32 %i.id, i32 %.0504657.i.epil ; 2 uses
  %indvars.iv.next725.i.epil = add nuw nsw i64 %indvars.iv724.i.epil, 1
  %epil.iter968.next = add i64 %epil.iter968, 1   ; 2 uses
  %epil.iter968.cmp.not = icmp eq i64 %epil.iter968.next, %xtraiter967
  br i1 %epil.iter968.cmp.not, label %.preheader646.i.preheader, label %bb.ao, !llvm.loop !82

.preheader646.i.preheader:                        ; preds = %bb.ao, %.preheader646.i.preheader.unr-lcssa
  %spec.select550.i.lcssa = phi i32 [ %spec.select550.i.3, %.preheader646.i.preheader.unr-lcssa ], [ %spec.select550.i.epil, %bb.ao ]
  br label %.preheader646.i

.preheader646.i:                                  ; preds = %.preheader646.i.preheader, %bb.ar
  %indvars.iv734.i = phi i64 [ %indvars.iv.next735.i, %bb.ar ], [ 1, %.preheader646.i.preheader ] ; 4 uses
  %.2506662.i = phi i32 [ %.4508.i, %bb.ar ], [ %spec.select550.i.lcssa, %.preheader646.i.preheader ] ; 5 uses
  %i.ie = sext i32 %.2506662.i to i64
  %i.if = getelementptr inbounds [4 x i8], ptr %i.dd, i64 %i.ie
  %i.ig = trunc nuw nsw i64 %indvars.iv734.i to i32
  store i32 %i.ig, ptr %i.if, align 4, !tbaa !50
  %i.ih = getelementptr inbounds nuw [4 x i8], ptr %i.dp, i64 %indvars.iv734.i
  store i32 %.2506662.i, ptr %i.ih, align 4, !tbaa !50
  %i.ii = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %indvars.iv734.i
  %i.ij = load ptr, ptr %i.ii, align 8, !tbaa !80 ; 3 uses
  br i1 %i.h, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %.preheader646.i
  call void @ngdijkstra(i32 noundef %.2506662.i, ptr noundef %0, i32 noundef range(i32 2, -2147483648) %1, ptr noundef %i.ij) #15
  br label %.preheader964

.preheader964:                                    ; preds = %bb.aq, %bb.ap
  br label %bb.as

bb.aq:                                            ; preds = %.preheader646.i
  call void @bfs(i32 noundef %.2506662.i, ptr noundef %0, i32 noundef range(i32 2, -2147483648) %1, ptr noundef %i.ij) #15
  br label %.preheader964

bb.ar:                                            ; preds = %bb.av
  %indvars.iv.next735.i = add nuw nsw i64 %indvars.iv734.i, 1 ; 2 uses
  %exitcond737.not.i = icmp eq i64 %indvars.iv.next735.i, 40
  br i1 %exitcond737.not.i, label %.preheader645.preheader.i, label %.preheader646.i, !llvm.loop !83

.preheader645.preheader.i:                        ; preds = %bb.ar
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.dl, i8 -1, i64 %i.df, i1 false), !tbaa !50
  %i.ik = call noalias ptr @calloc(i64 noundef %i.ce, i64 noundef 32) #16 ; 9 uses
  %i.il = icmp eq ptr %i.ik, null
  br i1 %i.il, label %bb.aw, label %gv_calloc.exit571.preheader.i

bb.as:                                            ; preds = %.preheader964, %bb.av
  %indvars.iv729.i = phi i64 [ %indvars.iv.next730.i, %bb.av ], [ 0, %.preheader964 ] ; 5 uses
  %.3507660.i = phi i32 [ %.4508.i, %bb.av ], [ %.2506662.i, %.preheader964 ] ; 2 uses
  %.2513659.i = phi i32 [ %.3514.i, %bb.av ], [ 0, %.preheader964 ] ; 4 uses
  %i.im = getelementptr inbounds nuw [4 x i8], ptr %i.dl, i64 %indvars.iv729.i ; 2 uses
  %i.in = load i32, ptr %i.im, align 4, !tbaa !50
  %i.io = getelementptr inbounds nuw [4 x i8], ptr %i.ij, i64 %indvars.iv729.i
  %i.ip = load i32, ptr %i.io, align 4, !tbaa !50
  %.551.i = call i32 @llvm.smin.i32(i32 %i.in, i32 %i.ip) ; 5 uses
  store i32 %.551.i, ptr %i.im, align 4, !tbaa !50
  %i.iq = icmp sgt i32 %.551.i, %.2513659.i
  br i1 %i.iq, label %._crit_edge752, label %bb.at

._crit_edge752:                                   ; preds = %bb.as
  %.pre753 = trunc nuw nsw i64 %indvars.iv729.i to i32
  br label %bb.av

bb.at:                                            ; preds = %bb.as
  %i.ir = icmp eq i32 %.551.i, %.2513659.i
  br i1 %i.ir, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.is = call i32 @rand() #15
  %i.it = trunc i64 %indvars.iv729.i to i32       ; 2 uses
  %i.iu = add i32 %i.it, 1
  %i.iv = srem i32 %i.is, %i.iu
  %i.iw = icmp eq i32 %i.iv, 0                    ; 2 uses
  %spec.select = select i1 %i.iw, i32 %.551.i, i32 %.2513659.i
  %spec.select822 = select i1 %i.iw, i32 %i.it, i32 %.3507660.i
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %._crit_edge752, %bb.at
  %.3514.i = phi i32 [ %.2513659.i, %bb.at ], [ %spec.select, %bb.au ], [ %.551.i, %._crit_edge752 ]
  %.4508.i = phi i32 [ %.3507660.i, %bb.at ], [ %spec.select822, %bb.au ], [ %.pre753, %._crit_edge752 ] ; 2 uses
  %indvars.iv.next730.i = add nuw nsw i64 %indvars.iv729.i, 1 ; 2 uses
  %exitcond733.not.i = icmp eq i64 %indvars.iv.next730.i, %i.ce
  br i1 %exitcond733.not.i, label %bb.ar, label %bb.as, !llvm.loop !84

gv_calloc.exit571.preheader.i:                    ; preds = %.preheader645.preheader.i
  %i.ix = add nsw i32 %1, -1
  %i.iy = zext i32 %i.ix to i64                   ; 8 uses
  %i.iz = add nsw i64 %i.ce, -1                   ; 5 uses
  %i.ja = add nsw i64 %i.iy, -1
  br label %bb.ax

bb.aw:                                            ; preds = %.preheader645.preheader.i
  %i.jb = load ptr, ptr @stderr, align 8, !tbaa !42
  %i.jc = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.jb, ptr noundef nonnull @.str.15, i64 noundef %.idx853.i) #17 ; 0 uses
  call fastcc void @graphviz_exit() #18
  unreachable

bb.ax:                                            ; preds = %gv_calloc.exit571.i, %gv_calloc.exit571.preheader.i
  %indvar = phi i64 [ %indvar.next, %gv_calloc.exit571.i ], [ 0, %gv_calloc.exit571.preheader.i ] ; 2 uses
  %indvars.iv755.i = phi i64 [ %indvars.iv.next756.pre-phi.i, %gv_calloc.exit571.i ], [ 0, %gv_calloc.exit571.preheader.i ] ; 18 uses
  %indvars.iv751.i = phi i64 [ %indvars.iv.next752.i, %gv_calloc.exit571.i ], [ 1, %gv_calloc.exit571.preheader.i ] ; 7 uses
  %.0488676.i = phi i64 [ %.1.i, %gv_calloc.exit571.i ], [ 0, %gv_calloc.exit571.preheader.i ]
  %.0515673.i = phi i32 [ %.2517.i, %gv_calloc.exit571.i ], [ 0, %gv_calloc.exit571.preheader.i ] ; 6 uses
  %.0525672.i = phi ptr [ %.2527.i, %gv_calloc.exit571.i ], [ null, %gv_calloc.exit571.preheader.i ] ; 5 uses
  %.0528671.i = phi ptr [ %.2530.i, %gv_calloc.exit571.i ], [ null, %gv_calloc.exit571.preheader.i ] ; 5 uses
  %i.jd = sub i64 %i.iy, %indvar                  ; 3 uses
  %i.je = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %indvars.iv755.i
  %i.jf = load i32, ptr %i.je, align 4, !tbaa !50 ; 3 uses
  %i.jg = icmp sgt i32 %i.jf, -1
  br i1 %i.jg, label %bb.ay, label %bb.bc

bb.ay:                                            ; preds = %bb.ax
  %i.jh = call noalias ptr @calloc(i64 noundef %i.iy, i64 noundef 4) #16 ; 13 uses
  %i.ji = ptrtoaddr ptr %i.jh to i64              ; 4 uses
  %i.jj = icmp eq ptr %i.jh, null
  br i1 %i.jj, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.jk = load ptr, ptr @stderr, align 8, !tbaa !42
  %i.jl = shl nuw nsw i64 %i.iy, 2
  %i.jm = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.jk, ptr noundef nonnull @.str.15, i64 noundef %i.jl) #17 ; 0 uses
  call fastcc void @graphviz_exit() #18
  unreachable

bb.ba:                                            ; preds = %bb.ay
  %i.jn = getelementptr inbounds nuw [32 x i8], ptr %i.ik, i64 %indvars.iv755.i ; 4 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 8
  store ptr %i.jh, ptr %i.jo, align 8, !tbaa !85
  %i.jp = call noalias ptr @calloc(i64 noundef %i.iy, i64 noundef 4) #16 ; 13 uses
  %i.jq = ptrtoaddr ptr %i.jp to i64              ; 4 uses
  %i.jr = icmp eq ptr %i.jp, null
  br i1 %i.jr, label %bb.bb, label %gv_calloc.exit579.i

bb.bb:                                            ; preds = %bb.ba
  %i.js = load ptr, ptr @stderr, align 8, !tbaa !42
  %i.jt = shl nuw nsw i64 %i.iy, 2
  %i.ju = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.js, ptr noundef nonnull @.str.15, i64 noundef %i.jt) #17 ; 0 uses
  call fastcc void @graphviz_exit() #18
  unreachable

gv_calloc.exit579.i:                              ; preds = %bb.ba
  %i.jv = getelementptr inbounds nuw i8, ptr %i.jn, i64 16
  store ptr %i.jp, ptr %i.jv, align 8, !tbaa !87
  store i64 %i.iz, ptr %i.jn, align 8, !tbaa !88
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jn, i64 24
  store i8 1, ptr %i.jw, align 8, !tbaa !89
  %.not711.i = icmp eq i64 %indvars.iv755.i, 0
  br i1 %.not711.i, label %.preheader643.i, label %.lr.ph.i429

.lr.ph.i429:                                      ; preds = %gv_calloc.exit579.i
  %i.jx = zext nneg i32 %i.jf to i64
  %i.jy = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %i.jx
  %i.jz = load ptr, ptr %i.jy, align 8, !tbaa !80 ; 7 uses
  %min.iters.check848 = icmp ult i64 %indvars.iv755.i, 12
  br i1 %min.iters.check848, label %scalar.ph847.preheader, label %vector.memcheck841

vector.memcheck841:                               ; preds = %.lr.ph.i429
  %i.ka = ptrtoaddr ptr %i.jz to i64              ; 2 uses
  %i.kb = sub i64 %i.ji, %i.jq
  %diff.check842 = icmp ugt i64 %i.kb, -32
  %i.kc = sub i64 %i.ji, %i.ka
  %diff.check843 = icmp ugt i64 %i.kc, -32
  %conflict.rdx844 = or i1 %diff.check842, %diff.check843
  %i.kd = sub i64 %i.ka, %i.jq
  %diff.check845 = icmp ugt i64 %i.kd, -32
  %conflict.rdx846 = or i1 %conflict.rdx844, %diff.check845
  br i1 %conflict.rdx846, label %scalar.ph847.preheader, label %vector.ph849

vector.ph849:                                     ; preds = %vector.memcheck841
  %n.vec850 = and i64 %indvars.iv755.i, -8        ; 3 uses
  br label %vector.body851

vector.body851:                                   ; preds = %vector.body851, %vector.ph849
  %index852 = phi i64 [ 0, %vector.ph849 ], [ %index.next857, %vector.body851 ] ; 4 uses
  %vec.ind853 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph849 ], [ %vec.ind.next858, %vector.body851 ] ; 3 uses
  %step.add854 = add <4 x i32> %vec.ind853, splat (i32 4)
end_hunk_1
