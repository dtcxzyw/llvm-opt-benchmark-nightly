inline.NumInlined: 69
inline.NumDeleted: 30
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZL15print_localdataPK9t_complexPKciP12fft5d_plan_t:bb.a
  %i.n = load i32, ptr %i.k, align 4, !tbaa !9    ; 3 uses
  %i.o = load i32, ptr %i.l, align 4, !tbaa !9
  br label %bb.l

bb.f:                                             ; preds = %bb.d, %bb.c
  %.sroa.14.0.ph.i = phi i32 [ 1, %bb.d ], [ 3, %bb.c ]
  %.sroa.8.0.ph.i = phi i32 [ 3, %bb.d ], [ %2, %bb.c ]
  %i.p = zext nneg i32 %2 to i64                  ; 4 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.p ; 2 uses
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.p ; 2 uses
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.p
  %i.t = load i32, ptr %i.q, align 4, !tbaa !9    ; 2 uses
  br label %bb.h

bb.g:                                             ; preds = %bb.e, %bb.b
  %.sroa.8.0.i = phi i32 [ 2, %bb.e ], [ 1, %bb.b ]
  %i.u = zext nneg i32 %2 to i64                  ; 4 uses
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.u ; 2 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.u ; 2 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.u ; 2 uses
  %i.y = load i32, ptr %i.v, align 4, !tbaa !9    ; 2 uses
  %i.z = load i32, ptr %i.w, align 4, !tbaa !9
  %i.aa = mul nsw i32 %i.z, %i.y
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ab = phi i32 [ %i.y, %bb.g ], [ %i.t, %bb.f ] ; 4 uses
  %.sroa.042.0 = phi i32 [ %i.aa, %bb.g ], [ %i.t, %bb.f ] ; 3 uses
  %.sink.in.i = phi ptr [ %i.x, %bb.g ], [ %i.r, %bb.f ]
  %i.ac = phi ptr [ %i.x, %bb.g ], [ %i.s, %bb.f ] ; 2 uses
  %i.ad = phi ptr [ %i.w, %bb.g ], [ %i.r, %bb.f ] ; 4 uses
  %i.ae = phi ptr [ %i.v, %bb.g ], [ %i.q, %bb.f ] ; 2 uses
  %i.af = phi i64 [ %i.u, %bb.g ], [ %i.p, %bb.f ] ; 3 uses
  %.sroa.8.092.i = phi i32 [ %.sroa.8.0.i, %bb.g ], [ %.sroa.8.0.ph.i, %bb.f ] ; 2 uses
  %.sroa.14.090.i = phi i32 [ %2, %bb.g ], [ %.sroa.14.0.ph.i, %bb.f ] ; 2 uses
  %.sink.i = load i32, ptr %.sink.in.i, align 4, !tbaa !9 ; 3 uses
  switch i32 %.sroa.8.092.i, label %default.unreachable [
    i32 1, label %bb.k
    i32 2, label %bb.j
    i32 3, label %bb.i
  ]

bb.i:                                             ; preds = %bb.h
  %i.ag = load i32, ptr %i.ad, align 4, !tbaa !9
  %i.ah = mul nsw i32 %i.ag, %i.ab
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  br label %bb.k

bb.k:                                             ; preds = %bb.h, %bb.j, %bb.i
  %.sroa.1045.0 = phi i32 [ %.sroa.8.092.i, %bb.h ], [ %i.ah, %bb.i ], [ %i.ab, %bb.j ] ; 3 uses
  %.sink108.i = phi ptr [ %i.ae, %bb.h ], [ %i.ac, %bb.i ], [ %i.ad, %bb.j ]
  %i.ai = load i32, ptr %.sink108.i, align 4, !tbaa !9 ; 3 uses
  switch i32 %.sroa.14.090.i, label %default.unreachable86.i [
    i32 1, label %bb.n
    i32 2, label %bb.m
    i32 3, label %bb.l
  ]

bb.l:                                             ; preds = %.thread, %bb.k
  %i.aj = phi i32 [ %i.o, %.thread ], [ %i.ai, %bb.k ]
  %i.ak = phi ptr [ %i.m, %.thread ], [ %i.ac, %bb.k ]
  %i.al = phi ptr [ %i.l, %.thread ], [ %i.ad, %bb.k ]
  %i.am = phi i64 [ 0, %.thread ], [ %i.af, %bb.k ]
  %.sroa.035.080 = phi i32 [ %i.n, %.thread ], [ %.sink.i, %bb.k ]
  %.sroa.042.178 = phi i32 [ 1, %.thread ], [ %.sroa.042.0, %bb.k ]
  %.sroa.1045.076 = phi i32 [ %i.n, %.thread ], [ %.sroa.1045.0, %bb.k ]
  %i.an = phi i32 [ %i.n, %.thread ], [ %i.ab, %bb.k ]
  %i.ao = load i32, ptr %i.al, align 4, !tbaa !9
  %i.ap = mul nsw i32 %i.ao, %i.an
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  br label %bb.n

bb.n:                                             ; preds = %bb.k, %bb.m, %bb.l
  %i.aq = phi i32 [ %i.aj, %bb.l ], [ %i.ai, %bb.m ], [ %i.ai, %bb.k ] ; 3 uses
  %i.ar = phi i64 [ %i.am, %bb.l ], [ %i.af, %bb.m ], [ %i.af, %bb.k ]
  %.sroa.035.081 = phi i32 [ %.sroa.035.080, %bb.l ], [ %.sink.i, %bb.m ], [ %.sink.i, %bb.k ] ; 3 uses
  %.sroa.042.179 = phi i32 [ %.sroa.042.178, %bb.l ], [ %.sroa.042.0, %bb.m ], [ %.sroa.042.0, %bb.k ] ; 3 uses
  %.sroa.1045.077 = phi i32 [ %.sroa.1045.076, %bb.l ], [ %.sroa.1045.0, %bb.m ], [ %.sroa.1045.0, %bb.k ] ; 3 uses
  %.sroa.18.0 = phi i32 [ %i.ap, %bb.l ], [ %i.ab, %bb.m ], [ %.sroa.14.090.i, %bb.k ] ; 3 uses
  %.sink113.i = phi ptr [ %i.ak, %bb.l ], [ %i.ad, %bb.m ], [ %i.ae, %bb.k ]
  %i.as = load i32, ptr %.sink113.i, align 4, !tbaa !9 ; 3 uses
  %i.at = and i32 %i.c, 2                         ; 3 uses
  %.not74.i = icmp eq i32 %i.at, 0
  br i1 %.not74.i, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  br i1 %.not.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n
  %.sroa.18.1 = phi i32 [ %.sroa.18.0, %bb.n ], [ %.sroa.042.179, %bb.o ], [ %.sroa.1045.077, %bb.p ]
  %.sroa.1045.1 = phi i32 [ %.sroa.1045.077, %bb.n ], [ %.sroa.18.0, %bb.o ], [ %.sroa.042.179, %bb.p ]
  %.sroa.042.2 = phi i32 [ %.sroa.042.179, %bb.n ], [ %.sroa.1045.077, %bb.o ], [ %.sroa.18.0, %bb.p ]
  %.sroa.16.0 = phi i32 [ %i.as, %bb.n ], [ %.sroa.035.081, %bb.o ], [ %i.aq, %bb.p ] ; 3 uses
  %.sroa.10.0 = phi i32 [ %i.aq, %bb.n ], [ %i.as, %bb.o ], [ %.sroa.035.081, %bb.p ] ; 3 uses
  %.sroa.035.1 = phi i32 [ %.sroa.035.081, %bb.n ], [ %i.aq, %bb.o ], [ %i.as, %bb.p ] ; 2 uses
  %.not76.i = icmp eq i32 %i.d, 0
  br i1 %.not76.i, label %_ZL15compute_offsetsP12fft5d_plan_tPiS1_S1_S1_i.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.au = or i32 %i.at, %2
  %or.cond.i = icmp eq i32 %i.au, 0
  br i1 %or.cond.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.av = icmp ne i32 %i.at, 0
  %i.aw = icmp eq i32 %2, 2
  %or.cond3.i = and i1 %i.aw, %i.av
  br i1 %or.cond3.i, label %bb.t, label %_ZL15compute_offsetsP12fft5d_plan_tPiS1_S1_S1_i.exit

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.ar
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !9
  br label %_ZL15compute_offsetsP12fft5d_plan_tPiS1_S1_S1_i.exit

_ZL15compute_offsetsP12fft5d_plan_tPiS1_S1_S1_i.exit: ; preds = %bb.q, %bb.s, %bb.t
  %.sroa.035.3 = phi i32 [ %.sroa.035.1, %bb.q ], [ %i.ay, %bb.t ], [ %.sroa.035.1, %bb.s ]
  %.sroa.035.3.fr = freeze i32 %.sroa.035.3       ; 2 uses
  %i.az = load ptr, ptr @debug, align 8, !tbaa !13
  %i.ba = load i32, ptr %i.a, align 8, !tbaa !9
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 324 ; 3 uses
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !9
  %i.bd = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.az, ptr noundef %1, i32 noundef %i.ba, i32 noundef %i.bc) #13 ; 0 uses
  %factor.op.mul58 = shl i32 %.sroa.18.1, 1
  %i.be = icmp sgt i32 %.sroa.16.0, 0
  br i1 %i.be, label %.preheader50.lr.ph, label %._crit_edge.split

.preheader50.lr.ph:                               ; preds = %_ZL15compute_offsetsP12fft5d_plan_tPiS1_S1_S1_i.exit
  %factor.op.mul = shl i32 %.sroa.1045.1, 1
  %i.bf = icmp sgt i32 %.sroa.10.0, 0
  %.lobit = lshr exact i32 %i.d, 2
  %i.bg = xor i32 %.lobit, 1
  br i1 %i.bf, label %.preheader50.lr.ph.split, label %._crit_edge.split

.preheader50.lr.ph.split:                         ; preds = %.preheader50.lr.ph
  %i.bh = icmp sgt i32 %.sroa.035.3.fr, 0
  br i1 %i.bh, label %.preheader50.us, label %.preheader50.a

.preheader50.us:                                  ; preds = %.preheader50.lr.ph.split, %._crit_edge57.split.us.us
  %.02559.us = phi i32 [ %i.cc, %._crit_edge57.split.us.us ], [ 0, %.preheader50.lr.ph.split ] ; 2 uses
  %factor.op.mul55.reass.us = mul i32 %.02559.us, %factor.op.mul58
  br label %.preheader.lr.ph.us.us

.preheader.lr.ph.us.us:                           ; preds = %._crit_edge.us.us, %.preheader50.us
  %.02356.us.us = phi i32 [ 0, %.preheader50.us ], [ %i.cb, %._crit_edge.us.us ] ; 2 uses
  %i.bi = load ptr, ptr @debug, align 8, !tbaa !13
  %i.bj = load i32, ptr %i.a, align 8, !tbaa !9
  %i.bk = load i32, ptr %i.bb, align 4, !tbaa !9
  %i.bl = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bi, ptr noundef nonnull @.str.15, i32 noundef %i.bj, i32 noundef %i.bk) #13 ; 0 uses
  %factor.op.mul52.reass.us.us = mul i32 %.02356.us.us, %factor.op.mul
  %i.bm = add i32 %factor.op.mul52.reass.us.us, %factor.op.mul55.reass.us
  br label %.preheader.us.us

bb.u:                                             ; preds = %.preheader.us.us, %bb.u
  %indvars.iv = phi i64 [ 0, %.preheader.us.us ], [ %indvars.iv.next, %bb.u ] ; 3 uses
  %i.bn = load ptr, ptr @debug, align 8, !tbaa !13
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.bo = load float, ptr %gep, align 4, !tbaa !140
  %i.bp = fpext float %i.bo to double
  %i.bq = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bn, ptr noundef nonnull @.str.16, double noundef %i.bp) #13 ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.br = trunc nuw nsw i64 %indvars.iv to i32
  %i.bs = or i32 %i.d, %i.br
  %i.bt = icmp eq i32 %i.bs, 0
  br i1 %i.bt, label %bb.u, label %bb.v, !llvm.loop !142

bb.v:                                             ; preds = %bb.u
  %i.bu = load ptr, ptr @debug, align 8, !tbaa !13
  %fputc27.us.us = tail call i32 @fputc(i32 44, ptr %i.bu) ; 0 uses
  %i.bv = add nuw nsw i32 %.054.us.us, 1          ; 2 uses
  %exitcond65.not = icmp eq i32 %i.bv, %.sroa.035.3.fr
  br i1 %exitcond65.not, label %._crit_edge.us.us, label %.preheader.us.us, !llvm.loop !143

.preheader.us.us:                                 ; preds = %bb.v, %.preheader.lr.ph.us.us
  %.054.us.us = phi i32 [ 0, %.preheader.lr.ph.us.us ], [ %i.bv, %bb.v ] ; 2 uses
  %i.bw = mul nsw i32 %.054.us.us, %.sroa.042.2
  %i.bx = shl i32 %i.bw, %i.bg
  %i.by = add nsw i32 %i.bx, %i.bm
  %i.bz = sext i32 %i.by to i64
  %invariant.gep = getelementptr [4 x i8], ptr %0, i64 %i.bz
  br label %bb.u

._crit_edge.us.us:                                ; preds = %bb.v
  %i.ca = load ptr, ptr @debug, align 8, !tbaa !13
  %fputc.us.us = tail call i32 @fputc(i32 10, ptr %i.ca) ; 0 uses
  %i.cb = add nuw nsw i32 %.02356.us.us, 1        ; 2 uses
  %exitcond66.not = icmp eq i32 %i.cb, %.sroa.10.0
  br i1 %exitcond66.not, label %._crit_edge57.split.us.us, label %.preheader.lr.ph.us.us, !llvm.loop !144

._crit_edge57.split.us.us:                        ; preds = %._crit_edge.us.us
  %i.cc = add nuw nsw i32 %.02559.us, 1           ; 2 uses
  %exitcond67.not = icmp eq i32 %i.cc, %.sroa.16.0
  br i1 %exitcond67.not, label %._crit_edge.split, label %.preheader50.us, !llvm.loop !145

.preheader50.a:                                   ; preds = %.preheader50.lr.ph.split, %._crit_edge57.split
  %.02559 = phi i32 [ %5, %._crit_edge57.split ], [ 0, %.preheader50.lr.ph.split ]
  br label %bb.w

bb.w:                                             ; preds = %.preheader50.a, %bb.w
  %.02356 = phi i32 [ 0, %.preheader50.a ], [ %4, %bb.w ]
  %i.cd = load ptr, ptr @debug, align 8, !tbaa !13
  %i.ce = load i32, ptr %i.a, align 8, !tbaa !9
  %i.cf = load i32, ptr %i.bb, align 4, !tbaa !9
  %i.cg = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cd, ptr noundef nonnull @.str.15, i32 noundef %i.ce, i32 noundef %i.cf) #13 ; 0 uses
  %i.ch = load ptr, ptr @debug, align 8, !tbaa !13
  %fputc = tail call i32 @fputc(i32 10, ptr %i.ch) ; 0 uses
  %4 = add nuw nsw i32 %.02356, 1                 ; 2 uses
  %exitcond.not = icmp eq i32 %4, %.sroa.10.0
  br i1 %exitcond.not, label %._crit_edge57.split, label %bb.w, !llvm.loop !144

._crit_edge57.split:                              ; preds = %bb.w
  %5 = add nuw nsw i32 %.02559, 1                 ; 2 uses
  %exitcond63.not = icmp eq i32 %5, %.sroa.16.0
  br i1 %exitcond63.not, label %._crit_edge.split, label %.preheader50.a, !llvm.loop !145

._crit_edge.split:                                ; preds = %._crit_edge57.split, %._crit_edge57.split.us.us, %.preheader50.lr.ph, %_ZL15compute_offsetsP12fft5d_plan_tPiS1_S1_S1_i.exit
  ret void
}

declare noundef i32 @_Z20gmx_fft_many_1d_realP7gmx_fft17gmx_fft_directionPvS2_(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare noundef i32 @_Z15gmx_fft_many_1dP7gmx_fft17gmx_fft_directionPvS2_(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: convergent nounwind
declare void @__kmpc_barrier(ptr, i32) local_unnamed_addr #14

declare noundef i32 @_Z13tMPI_AlltoallPKviP14tmpi_datatype_PviS2_P10tmpi_comm_(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @_Z16wallcycleBarrierP13gmx_wallcycle(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define void @_Z13fft5d_destroyP12fft5d_plan_t(ptr noundef captures(none) %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !75   ; 2 uses
  %.not63 = icmp eq ptr %i.g, null
  br i1 %.not63, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.h = load i32, ptr %i.b, align 8, !tbaa !89
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %.preheader ] ; 2 uses
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !75
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !93
  tail call void @_Z20gmx_many_fft_destroyP7gmx_fft(ptr noundef %i.l)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.m = load i32, ptr %i.b, align 8, !tbaa !89
  %i.n = sext i32 %i.m to i64
  %i.o = icmp slt i64 %indvars.iv.next, %i.n
  br i1 %i.o, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !146

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !75
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %i.p = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.g, %.preheader ]
  tail call void @free(ptr noundef %i.p) #13
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge, %bb.a
  %i.q = load ptr, ptr %i.c, align 8, !tbaa !31   ; 2 uses
  %.not64 = icmp eq ptr %i.q, null
  br i1 %.not64, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @free(ptr noundef nonnull %i.q) #13
  store ptr null, ptr %i.c, align 8, !tbaa !31
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.r = load ptr, ptr %i.d, align 8, !tbaa !31   ; 2 uses
  %.not65 = icmp eq ptr %i.r, null
  br i1 %.not65, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @free(ptr noundef nonnull %i.r) #13
  store ptr null, ptr %i.d, align 8, !tbaa !31
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.s = load ptr, ptr %i.e, align 8, !tbaa !31   ; 2 uses
  %.not66 = icmp eq ptr %i.s, null
  br i1 %.not66, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @free(ptr noundef nonnull %i.s) #13
  store ptr null, ptr %i.e, align 8, !tbaa !31
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.t = load ptr, ptr %i.f, align 8, !tbaa !31   ; 2 uses
  %.not67 = icmp eq ptr %i.t, null
  br i1 %.not67, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @free(ptr noundef nonnull %i.t) #13
  store ptr null, ptr %i.f, align 8, !tbaa !31
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !75   ; 2 uses
  %.not63.1 = icmp eq ptr %i.v, null
  br i1 %.not63.1, label %bb.k, label %.preheader.1

.preheader.1:                                     ; preds = %bb.j
  %i.w = load i32, ptr %i.b, align 8, !tbaa !89
  %i.x = icmp sgt i32 %i.w, 0
  br i1 %i.x, label %.lr.ph.1, label %._crit_edge.1

.lr.ph.1:                                         ; preds = %.preheader.1, %.lr.ph.1
  %indvars.iv.1 = phi i64 [ %indvars.iv.next.1, %.lr.ph.1 ], [ 0, %.preheader.1 ] ; 2 uses
  %i.y = load ptr, ptr %i.u, align 8, !tbaa !75
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %indvars.iv.1
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !93
  tail call void @_Z20gmx_many_fft_destroyP7gmx_fft(ptr noundef %i.aa)
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv.1, 1 ; 2 uses
  %i.ab = load i32, ptr %i.b, align 8, !tbaa !89
  %i.ac = sext i32 %i.ab to i64
  %i.ad = icmp slt i64 %indvars.iv.next.1, %i.ac
  br i1 %i.ad, label %.lr.ph.1, label %._crit_edge.loopexit.1, !llvm.loop !146

._crit_edge.loopexit.1:                           ; preds = %.lr.ph.1
  %.pre74 = load ptr, ptr %i.u, align 8, !tbaa !75
  br label %._crit_edge.1

._crit_edge.1:                                    ; preds = %._crit_edge.loopexit.1, %.preheader.1
  %i.ae = phi ptr [ %.pre74, %._crit_edge.loopexit.1 ], [ %i.v, %.preheader.1 ]
  tail call void @free(ptr noundef %i.ae) #13
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge.1, %bb.j
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !31 ; 2 uses
  %.not64.1 = icmp eq ptr %i.ag, null
  br i1 %.not64.1, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @free(ptr noundef nonnull %i.ag) #13
  store ptr null, ptr %i.af, align 8, !tbaa !31
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !31 ; 2 uses
  %.not65.1 = icmp eq ptr %i.ai, null
  br i1 %.not65.1, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @free(ptr noundef nonnull %i.ai) #13
  store ptr null, ptr %i.ah, align 8, !tbaa !31
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !31 ; 2 uses
  %.not66.1 = icmp eq ptr %i.ak, null
  br i1 %.not66.1, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void @free(ptr noundef nonnull %i.ak) #13
  store ptr null, ptr %i.aj, align 8, !tbaa !31
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !31 ; 2 uses
  %.not67.1 = icmp eq ptr %i.am, null
  br i1 %.not67.1, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void @free(ptr noundef nonnull %i.am) #13
  store ptr null, ptr %i.al, align 8, !tbaa !31
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !75 ; 2 uses
  %.not63.2 = icmp eq ptr %i.ao, null
  br i1 %.not63.2, label %bb.t, label %.preheader.2

.preheader.2:                                     ; preds = %bb.s
  %i.ap = load i32, ptr %i.b, align 8, !tbaa !89
  %i.aq = icmp sgt i32 %i.ap, 0
  br i1 %i.aq, label %.lr.ph.2, label %._crit_edge.2

.lr.ph.2:                                         ; preds = %.preheader.2, %.lr.ph.2
  %indvars.iv.2 = phi i64 [ %indvars.iv.next.2, %.lr.ph.2 ], [ 0, %.preheader.2 ] ; 2 uses
  %i.ar = load ptr, ptr %i.an, align 8, !tbaa !75
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %indvars.iv.2
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !93
  tail call void @_Z20gmx_many_fft_destroyP7gmx_fft(ptr noundef %i.at)
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv.2, 1 ; 2 uses
  %i.au = load i32, ptr %i.b, align 8, !tbaa !89
  %i.av = sext i32 %i.au to i64
  %i.aw = icmp slt i64 %indvars.iv.next.2, %i.av
  br i1 %i.aw, label %.lr.ph.2, label %._crit_edge.loopexit.2, !llvm.loop !146

._crit_edge.loopexit.2:                           ; preds = %.lr.ph.2
  %.pre75 = load ptr, ptr %i.an, align 8, !tbaa !75
  br label %._crit_edge.2

._crit_edge.2:                                    ; preds = %._crit_edge.loopexit.2, %.preheader.2
  %i.ax = phi ptr [ %.pre75, %._crit_edge.loopexit.2 ], [ %i.ao, %.preheader.2 ]
  tail call void @free(ptr noundef %i.ax) #13
  br label %bb.t
end_hunk_0
