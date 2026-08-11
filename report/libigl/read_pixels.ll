inline.NumInlined: 117
inline.NumDeleted: 75
begin_hunk_0_@_ZN3igl6opengl11read_pixelsIhEEvjjRN5Eigen6MatrixIT_Lin1ELin1ELi0ELin1ELin1EEES6_S6_S6_S6_:bb.a
  br i1 %i.s, label %bb.h, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i63

bb.h:                                             ; preds = %bb.g
  %i.t = tail call ptr @__cxa_allocate_exception(i64 8) #6 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.t, align 8, !tbaa !9
  tail call void @__cxa_throw(ptr nonnull %i.t, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #7
  unreachable

_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i63: ; preds = %bb.g, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIhLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !11
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !16
  %i.y = mul nsw i64 %i.x, %i.v
  %.not.i.i64 = icmp eq i64 %i.h, %i.y
  br i1 %.not.i.i64, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIhLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit67, label %bb.i

bb.i:                                             ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i63
  %i.z = load ptr, ptr %3, align 8, !tbaa !17
  tail call void @free(ptr noundef %i.z) #6
  %.not86 = icmp eq i64 %i.h, 0
  br i1 %.not86, label %.sink.split.i.i65, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aa = tail call noalias ptr @malloc(i64 noundef %i.h) #8 ; 2 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %bb.k, label %.sink.split.i.i65

bb.k:                                             ; preds = %bb.j
  %i.ac = tail call ptr @__cxa_allocate_exception(i64 8) #6 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.ac, align 8, !tbaa !9
  tail call void @__cxa_throw(ptr nonnull %i.ac, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #7
  unreachable

.sink.split.i.i65:                                ; preds = %bb.j, %bb.i
  %.sink.i.i66 = phi ptr [ %i.aa, %bb.j ], [ null, %bb.i ]
  store ptr %.sink.i.i66, ptr %3, align 8, !tbaa !17
  br label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIhLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit67

_ZN5Eigen15PlainObjectBaseINS_6MatrixIhLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit67: ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i63, %.sink.split.i.i65
  store i64 %i.a, ptr %i.u, align 8, !tbaa !11
  store i64 %i.b, ptr %i.w, align 8, !tbaa !16
  br i1 %or.cond.i.i, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i69, label %bb.l

bb.l:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIhLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit67
  %i.ad = udiv i64 9223372036854775807, %i.b
  %i.ae = icmp samesign ult i64 %i.ad, %i.a
  br i1 %i.ae, label %bb.m, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i69

bb.m:                                             ; preds = %bb.l
  %i.af = tail call ptr @__cxa_allocate_exception(i64 8) #6 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.af, align 8, !tbaa !9
  tail call void @__cxa_throw(ptr nonnull %i.af, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #7
  unreachable

_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i69: ; preds = %bb.l, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIhLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit67
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !11
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !16
  %i.ak = mul nsw i64 %i.aj, %i.ah
  %.not.i.i70 = icmp eq i64 %i.h, %i.ak
  br i1 %.not.i.i70, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIhLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit73, label %bb.n

bb.n:                                             ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i69
  %i.al = load ptr, ptr %4, align 8, !tbaa !17
  tail call void @free(ptr noundef %i.al) #6
  %.not87 = icmp eq i64 %i.h, 0
  br i1 %.not87, label %.sink.split.i.i71, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.am = tail call noalias ptr @malloc(i64 noundef %i.h) #8 ; 2 uses
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %bb.p, label %.sink.split.i.i71

bb.p:                                             ; preds = %bb.o
  %i.ao = tail call ptr @__cxa_allocate_exception(i64 8) #6 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.ao, align 8, !tbaa !9
  tail call void @__cxa_throw(ptr nonnull %i.ao, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #7
  unreachable

.sink.split.i.i71:                                ; preds = %bb.o, %bb.n
  %.sink.i.i72 = phi ptr [ %i.am, %bb.o ], [ null, %bb.n ]
  store ptr %.sink.i.i72, ptr %4, align 8, !tbaa !17
  br label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIhLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit73

_ZN5Eigen15PlainObjectBaseINS_6MatrixIhLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit73: ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i69, %.sink.split.i.i71
  store i64 %i.a, ptr %i.ag, align 8, !tbaa !11
  store i64 %i.b, ptr %i.ai, align 8, !tbaa !16
  br i1 %or.cond.i.i, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i75, label %bb.q

bb.q:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIhLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit73
  %i.ap = udiv i64 9223372036854775807, %i.b
  %i.aq = icmp samesign ult i64 %i.ap, %i.a
  br i1 %i.aq, label %bb.r, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i75

bb.r:                                             ; preds = %bb.q
  %i.ar = tail call ptr @__cxa_allocate_exception(i64 8) #6 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.ar, align 8, !tbaa !9
  tail call void @__cxa_throw(ptr nonnull %i.ar, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #7
  unreachable

_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i75: ; preds = %bb.q, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIhLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit73
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.at = load i64, ptr %i.as, align 8, !tbaa !11
  %i.au = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.av = load i64, ptr %i.au, align 8, !tbaa !16
  %i.aw = mul nsw i64 %i.av, %i.at
  %.not.i.i76 = icmp eq i64 %i.h, %i.aw
  br i1 %.not.i.i76, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIhLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit79, label %bb.s

bb.s:                                             ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i75
  %i.ax = load ptr, ptr %5, align 8, !tbaa !17
  tail call void @free(ptr noundef %i.ax) #6
  %.not88 = icmp eq i64 %i.h, 0
  br i1 %.not88, label %.sink.split.i.i77, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ay = tail call noalias ptr @malloc(i64 noundef %i.h) #8 ; 2 uses
  %i.az = icmp eq ptr %i.ay, null
  br i1 %i.az, label %bb.u, label %.sink.split.i.i77

bb.u:                                             ; preds = %bb.t
  %i.ba = tail call ptr @__cxa_allocate_exception(i64 8) #6 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.ba, align 8, !tbaa !9
  tail call void @__cxa_throw(ptr nonnull %i.ba, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #7
  unreachable

.sink.split.i.i77:                                ; preds = %bb.t, %bb.s
  %.sink.i.i78 = phi ptr [ %i.ay, %bb.t ], [ null, %bb.s ]
  store ptr %.sink.i.i78, ptr %5, align 8, !tbaa !17
  br label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIhLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit79

_ZN5Eigen15PlainObjectBaseINS_6MatrixIhLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit79: ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i75, %.sink.split.i.i77
  store i64 %i.a, ptr %i.as, align 8, !tbaa !11
  store i64 %i.b, ptr %i.au, align 8, !tbaa !16
  br i1 %or.cond.i.i, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i81, label %bb.v

bb.v:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIhLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit79
  %i.bb = udiv i64 9223372036854775807, %i.b
  %i.bc = icmp samesign ult i64 %i.bb, %i.a
  br i1 %i.bc, label %bb.w, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i81

bb.w:                                             ; preds = %bb.v
  %i.bd = tail call ptr @__cxa_allocate_exception(i64 8) #6 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.bd, align 8, !tbaa !9
  tail call void @__cxa_throw(ptr nonnull %i.bd, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #7
  unreachable

_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i81: ; preds = %bb.v, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIhLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit79
  %i.be = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !11
  %i.bg = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !16
  %i.bi = mul nsw i64 %i.bh, %i.bf
  %.not.i.i82 = icmp eq i64 %i.h, %i.bi
  br i1 %.not.i.i82, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIhLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit85, label %bb.x

bb.x:                                             ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i81
  %i.bj = load ptr, ptr %6, align 8, !tbaa !17
  tail call void @free(ptr noundef %i.bj) #6
  %.not89 = icmp eq i64 %i.h, 0
  br i1 %.not89, label %.sink.split.i.i83, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bk = tail call noalias ptr @malloc(i64 noundef %i.h) #8 ; 2 uses
  %i.bl = icmp eq ptr %i.bk, null
  br i1 %i.bl, label %bb.z, label %.sink.split.i.i83

bb.z:                                             ; preds = %bb.y
  %i.bm = tail call ptr @__cxa_allocate_exception(i64 8) #6 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.bm, align 8, !tbaa !9
  tail call void @__cxa_throw(ptr nonnull %i.bm, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #7
  unreachable

.sink.split.i.i83:                                ; preds = %bb.y, %bb.x
  %.sink.i.i84 = phi ptr [ %i.bk, %bb.y ], [ null, %bb.x ]
  store ptr %.sink.i.i84, ptr %6, align 8, !tbaa !17
  br label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIhLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit85

_ZN5Eigen15PlainObjectBaseINS_6MatrixIhLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit85: ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i81, %.sink.split.i.i83
  store i64 %i.a, ptr %i.be, align 8, !tbaa !11
  store i64 %i.b, ptr %i.bg, align 8, !tbaa !16
  %i.bn = mul i32 %1, %0                          ; 2 uses
  %i.bo = shl i32 %i.bn, 2
  %i.bp = zext i32 %i.bo to i64
  %i.bq = tail call noalias ptr @calloc(i64 noundef %i.bp, i64 noundef 1) #9 ; 3 uses
  %i.br = zext i32 %i.bn to i64
  %i.bs = tail call noalias ptr @calloc(i64 noundef %i.br, i64 noundef 1) #9 ; 3 uses
  %i.bt = load ptr, ptr @glad_glReadPixels, align 8, !tbaa !18
  tail call void %i.bt(i32 noundef 0, i32 noundef 0, i32 noundef %0, i32 noundef %1, i32 noundef 6408, i32 noundef 5121, ptr noundef %i.bq)
  %i.bu = load ptr, ptr @glad_glReadPixels, align 8, !tbaa !18
  tail call void %i.bu(i32 noundef 0, i32 noundef 0, i32 noundef %0, i32 noundef %1, i32 noundef 6402, i32 noundef 5121, ptr noundef %i.bs)
  %i.bv = icmp ne i32 %1, 0
  %i.bw = icmp ne i32 %0, 0
  %or.cond = and i1 %i.bv, %i.bw
  br i1 %or.cond, label %.preheader, label %._crit_edge94.split

.preheader:                                       ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIhLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit85, %._crit_edge
  %indvars.iv100 = phi i64 [ %indvars.iv.next101, %._crit_edge ], [ 0, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIhLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit85 ] ; 6 uses
  %indvars.iv95 = phi i32 [ %indvars.iv.next96, %._crit_edge ], [ 0, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIhLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit85 ] ; 2 uses
  %7 = sext i32 %indvars.iv95 to i64
  br label %bb.aa

._crit_edge94.split:                              ; preds = %._crit_edge, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIhLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit85
  tail call void @free(ptr noundef %i.bq) #6
  tail call void @free(ptr noundef %i.bs) #6
  ret void

._crit_edge:                                      ; preds = %bb.aa
  %indvars.iv.next101 = add nuw nsw i64 %indvars.iv100, 1 ; 2 uses
  %indvars.iv.next96 = add i32 %indvars.iv95, %0
  %exitcond104.not = icmp eq i64 %indvars.iv.next101, %i.b
  br i1 %exitcond104.not, label %._crit_edge94.split, label %.preheader, !llvm.loop !19

bb.aa:                                            ; preds = %.preheader, %bb.aa
  %indvars.iv95.a = phi i64 [ %7, %.preheader ], [ %indvars.iv.next96.a, %bb.aa ] ; 3 uses
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %bb.aa ] ; 6 uses
  %i.bx = shl nsw i64 %indvars.iv95.a, 2
  %i.by = getelementptr inbounds i8, ptr %i.bq, i64 %i.bx ; 4 uses
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !21
  %i.ca = load ptr, ptr %2, align 8, !tbaa !17
  %i.cb = load i64, ptr %i.i, align 8, !tbaa !11
  %i.cc = mul nsw i64 %i.cb, %indvars.iv100
  %i.cd = getelementptr i8, ptr %i.ca, i64 %indvars.iv
  %i.ce = getelementptr i8, ptr %i.cd, i64 %i.cc
  store i8 %i.bz, ptr %i.ce, align 1, !tbaa !21
  %i.cf = getelementptr i8, ptr %i.by, i64 1
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !21
  %i.ch = load ptr, ptr %3, align 8, !tbaa !17
  %i.ci = load i64, ptr %i.u, align 8, !tbaa !11
  %i.cj = mul nsw i64 %i.ci, %indvars.iv100
  %i.ck = getelementptr i8, ptr %i.ch, i64 %indvars.iv
  %i.cl = getelementptr i8, ptr %i.ck, i64 %i.cj
  store i8 %i.cg, ptr %i.cl, align 1, !tbaa !21
  %i.cm = getelementptr i8, ptr %i.by, i64 2
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !21
  %i.co = load ptr, ptr %4, align 8, !tbaa !17
  %i.cp = load i64, ptr %i.ag, align 8, !tbaa !11
  %i.cq = mul nsw i64 %i.cp, %indvars.iv100
  %i.cr = getelementptr i8, ptr %i.co, i64 %indvars.iv
  %i.cs = getelementptr i8, ptr %i.cr, i64 %i.cq
  store i8 %i.cn, ptr %i.cs, align 1, !tbaa !21
  %i.ct = getelementptr i8, ptr %i.by, i64 3
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !21
  %i.cv = load ptr, ptr %5, align 8, !tbaa !17
  %i.cw = load i64, ptr %i.as, align 8, !tbaa !11
  %i.cx = mul nsw i64 %i.cw, %indvars.iv100
  %i.cy = getelementptr i8, ptr %i.cv, i64 %indvars.iv
  %i.cz = getelementptr i8, ptr %i.cy, i64 %i.cx
  store i8 %i.cu, ptr %i.cz, align 1, !tbaa !21
  %i.da = getelementptr inbounds i8, ptr %i.bs, i64 %indvars.iv95.a
  %i.db = load i8, ptr %i.da, align 1, !tbaa !21
  %i.dc = load ptr, ptr %6, align 8, !tbaa !17
  %i.dd = load i64, ptr %i.be, align 8, !tbaa !11
  %i.de = mul nsw i64 %i.dd, %indvars.iv100
  %i.df = getelementptr i8, ptr %i.dc, i64 %indvars.iv
  %i.dg = getelementptr i8, ptr %i.df, i64 %i.de
  store i8 %i.db, ptr %i.dg, align 1, !tbaa !21
  %indvars.iv.next96.a = add nsw i64 %indvars.iv95.a, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.a
  br i1 %exitcond.not, label %._crit_edge, label %bb.aa, !llvm.loop !22
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl6opengl11read_pixelsIdEEvjjRN5Eigen6MatrixIT_Lin1ELin1ELi0ELin1ELin1EEES6_S6_S6_S6_(i32 noundef %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %6) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = zext i32 %0 to i64                       ; 15 uses
  %i.b = zext i32 %1 to i64                       ; 9 uses
  %i.c = icmp eq i32 %0, 0                        ; 2 uses
  %i.d = icmp eq i32 %1, 0                        ; 2 uses
  %or.cond.i.i = or i1 %i.c, %i.d
  br i1 %or.cond.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit69, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = udiv i64 9223372036854775807, %i.b
  %i.f = icmp samesign ult i64 %i.e, %i.a
  br i1 %i.f, label %bb.c, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit69

bb.c:                                             ; preds = %bb.b
  %i.g = tail call ptr @__cxa_allocate_exception(i64 8) #6 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.g, align 8, !tbaa !9
  tail call void @__cxa_throw(ptr nonnull %i.g, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #7
  unreachable

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit69: ; preds = %bb.b, %bb.a
  %i.h = mul nuw nsw i64 %i.b, %i.a               ; 5 uses
  tail call void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.h, i64 noundef %i.a, i64 noundef %i.b)
  tail call void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %i.h, i64 noundef %i.a, i64 noundef %i.b)
  tail call void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %4, i64 noundef %i.h, i64 noundef %i.a, i64 noundef %i.b)
  tail call void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %5, i64 noundef %i.h, i64 noundef %i.a, i64 noundef %i.b)
  tail call void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %6, i64 noundef %i.h, i64 noundef %i.a, i64 noundef %i.b)
  %i.i = mul i32 %1, %0                           ; 2 uses
  %i.j = shl i32 %i.i, 2
  %i.k = zext i32 %i.j to i64
  %i.l = tail call noalias ptr @calloc(i64 noundef %i.k, i64 noundef 4) #9 ; 5 uses
  %i.m = zext i32 %i.i to i64
  %i.n = tail call noalias ptr @calloc(i64 noundef %i.m, i64 noundef 4) #9 ; 4 uses
  %i.o = load ptr, ptr @glad_glReadPixels, align 8, !tbaa !18
  tail call void %i.o(i32 noundef 0, i32 noundef 0, i32 noundef %0, i32 noundef %1, i32 noundef 6408, i32 noundef 5126, ptr noundef %i.l)
  %i.p = load ptr, ptr @glad_glReadPixels, align 8, !tbaa !18
  tail call void %i.p(i32 noundef 0, i32 noundef 0, i32 noundef %0, i32 noundef %1, i32 noundef 6402, i32 noundef 5126, ptr noundef %i.n)
  %brmerge = or i1 %i.d, %i.c
  br i1 %brmerge, label %._crit_edge82.split, label %.preheader.lr.ph.split

.preheader.lr.ph.split:                           ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit69
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.v = load ptr, ptr %2, align 8, !tbaa !23     ; 3 uses
  %i.w = load i64, ptr %i.u, align 8, !tbaa !26   ; 3 uses
  %i.x = load ptr, ptr %3, align 8, !tbaa !23     ; 5 uses
  %i.y = load i64, ptr %i.t, align 8, !tbaa !26   ; 3 uses
  %i.z = load ptr, ptr %4, align 8, !tbaa !23     ; 6 uses
  %i.aa = load i64, ptr %i.s, align 8, !tbaa !26  ; 4 uses
  %i.ab = load ptr, ptr %5, align 8, !tbaa !23    ; 6 uses
  %i.ac = load i64, ptr %i.r, align 8, !tbaa !26  ; 4 uses
  %i.ad = load ptr, ptr %6, align 8, !tbaa !23    ; 6 uses
  %i.ae = load i64, ptr %i.q, align 8, !tbaa !26  ; 4 uses
  %i.af = add nsw i64 %i.b, -1                    ; 5 uses
  %i.ag = mul i64 %i.w, %i.af
  %i.ah = add i64 %i.ag, %i.a
  %i.ai = shl i64 %i.ah, 3
  %scevgep = getelementptr i8, ptr %i.v, i64 %i.ai
  %i.aj = mul i64 %i.y, %i.af
  %i.ak = add i64 %i.aj, %i.a
  %i.al = shl i64 %i.ak, 3
  %scevgep97 = getelementptr i8, ptr %i.x, i64 %i.al ; 3 uses
  %i.am = mul i64 %i.aa, %i.af
  %i.an = add i64 %i.am, %i.a
  %i.ao = shl i64 %i.an, 3
  %scevgep98 = getelementptr i8, ptr %i.z, i64 %i.ao ; 4 uses
  %i.ap = mul i64 %i.ac, %i.af
  %i.aq = add i64 %i.ap, %i.a
  %i.ar = shl i64 %i.aq, 3
  %scevgep99 = getelementptr i8, ptr %i.ab, i64 %i.ar ; 4 uses
  %i.as = mul i64 %i.ae, %i.af
  %i.at = add i64 %i.as, %i.a
  %i.au = shl i64 %i.at, 3
  %scevgep100 = getelementptr i8, ptr %i.ad, i64 %i.au ; 4 uses
  %i.av = insertelement <4 x ptr> poison, ptr %i.v, i64 0
  %i.aw = shufflevector <4 x ptr> %i.av, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.ax = insertelement <4 x ptr> poison, ptr %scevgep97, i64 0
  %i.ay = insertelement <4 x ptr> %i.ax, ptr %scevgep98, i64 1
  %i.az = insertelement <4 x ptr> %i.ay, ptr %scevgep99, i64 2
  %i.ba = insertelement <4 x ptr> %i.az, ptr %scevgep100, i64 3
  %i.bb = insertelement <4 x ptr> poison, ptr %i.x, i64 0
  %i.bc = insertelement <4 x ptr> %i.bb, ptr %i.z, i64 1
  %i.bd = insertelement <4 x ptr> %i.bc, ptr %i.ab, i64 2
  %i.be = insertelement <4 x ptr> %i.bd, ptr %i.ad, i64 3
  %i.bf = insertelement <4 x ptr> poison, ptr %scevgep, i64 0
  %i.bg = shufflevector <4 x ptr> %i.bf, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.bh = insertelement <2 x ptr> poison, ptr %i.ab, i64 0
  %i.bi = insertelement <2 x ptr> %i.bh, ptr %i.z, i64 1
  %i.bj = insertelement <2 x ptr> poison, ptr %scevgep97, i64 0 ; 2 uses
  %i.bk = insertelement <2 x ptr> %i.bj, ptr %scevgep99, i64 1
  %i.bl = insertelement <2 x ptr> poison, ptr %i.x, i64 0 ; 2 uses
  %i.bm = insertelement <2 x ptr> %i.bl, ptr %i.ab, i64 1
  %i.bn = insertelement <2 x ptr> poison, ptr %scevgep99, i64 0
  %i.bo = insertelement <2 x ptr> %i.bn, ptr %scevgep98, i64 1
  %i.bp = insertelement <2 x ptr> poison, ptr %i.ad, i64 0
  %i.bq = insertelement <2 x ptr> %i.bp, ptr %i.z, i64 1
  %i.br = insertelement <2 x ptr> %i.bj, ptr %scevgep100, i64 1
  %i.bs = insertelement <2 x ptr> %i.bl, ptr %i.ad, i64 1
  %i.bt = insertelement <2 x ptr> poison, ptr %scevgep100, i64 0
  %i.bu = insertelement <2 x ptr> %i.bt, ptr %scevgep98, i64 1
  %min.iters.check = icmp ult i32 %0, 22
  %i.bv = icmp ult <4 x ptr> %i.aw, %i.ba
  %i.bw = icmp ult <4 x ptr> %i.be, %i.bg
  %i.bx = and <4 x i1> %i.bv, %i.bw
  %bound0119 = icmp ult ptr %i.x, %scevgep98
  %bound1120 = icmp ult ptr %i.z, %scevgep97
  %found.conflict121 = and i1 %bound0119, %bound1120
  %i.by = icmp ult <2 x ptr> %i.bm, %i.bo
  %i.bz = icmp ult <2 x ptr> %i.bi, %i.bk
  %i.ca = icmp ult <2 x ptr> %i.bs, %i.bu
  %i.cb = icmp ult <2 x ptr> %i.bq, %i.br
  %i.cc = or i64 %i.ae, %i.y
  %i.cd = or i64 %i.ae, %i.aa
  %bound0149 = icmp ult ptr %i.ab, %scevgep100
  %bound1150 = icmp ult ptr %i.ad, %scevgep99
  %found.conflict151 = and i1 %bound0149, %bound1150
  %i.ce = bitcast <4 x i1> %i.bx to i4
  %i.cf = icmp ne i4 %i.ce, 0
  %i.cg = or i64 %i.ac, %i.cc
  %i.ch = or i64 %i.ac, %i.cd
  %i.ci = and <2 x i1> %i.bz, %i.by
  %i.cj = and <2 x i1> %i.cb, %i.ca
  %i.ck = or <2 x i1> %i.ci, %i.cj
  %i.cl = or i64 %i.aa, %i.cg
  %.mask = and i64 %i.ch, 1152921504606846976
  %i.cm = icmp ne i64 %.mask, 0
  %op.rdx165 = or i1 %i.cm, %found.conflict121
  %i.cn = bitcast <2 x i1> %i.ck to i2
  %op.rdx166 = icmp ne i2 %i.cn, 0
  %i.co = or i64 %i.cl, %i.w
  %.mask172 = and i64 %i.co, 1152921504606846976
  %i.cp = icmp ne i64 %.mask172, 0
  %op.rdx167 = or i1 %i.cf, %i.cp
  %op.rdx168 = or i1 %op.rdx165, %op.rdx166
  %op.rdx169 = or i1 %op.rdx167, %op.rdx168
  %op.rdx170 = or i1 %op.rdx169, %found.conflict151
  %n.vec = and i64 %i.a, 4294967294               ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %i.a
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph.split, %._crit_edge
  %indvars.iv89 = phi i64 [ 0, %.preheader.lr.ph.split ], [ %indvars.iv.next92, %._crit_edge ] ; 6 uses
  %indvars.iv84 = phi i32 [ 0, %.preheader.lr.ph.split ], [ %indvars.iv.next85, %._crit_edge ] ; 2 uses
  %7 = sext i32 %indvars.iv84 to i64              ; 3 uses
  %i.cq = mul nsw i64 %i.w, %indvars.iv89
  %invariant.gep = getelementptr [8 x i8], ptr %i.v, i64 %i.cq ; 2 uses
  %i.cr = mul nsw i64 %i.y, %indvars.iv89
  %invariant.gep72 = getelementptr [8 x i8], ptr %i.x, i64 %i.cr ; 2 uses
  %i.cs = mul nsw i64 %i.aa, %indvars.iv89
  %invariant.gep74 = getelementptr [8 x i8], ptr %i.z, i64 %i.cs ; 2 uses
  %i.ct = mul nsw i64 %i.ac, %indvars.iv89
  %invariant.gep76 = getelementptr [8 x i8], ptr %i.ab, i64 %i.ct ; 2 uses
  %i.cu = mul nsw i64 %i.ae, %indvars.iv89
  %invariant.gep78 = getelementptr [8 x i8], ptr %i.ad, i64 %i.cu ; 2 uses
  %brmerge175 = select i1 %min.iters.check, i1 true, i1 %op.rdx170
  br i1 %brmerge175, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader
  %i.cv = add nsw i64 %n.vec, %7
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 7 uses
  %i.cw = add i64 %index, %7                      ; 3 uses
  %i.cx = shl nsw i64 %i.cw, 4
  %i.cy = shl i64 %i.cw, 4
  %i.cz = getelementptr inbounds i8, ptr %i.l, i64 %i.cx ; 4 uses
  %i.da = getelementptr i8, ptr %i.l, i64 %i.cy   ; 4 uses
  %i.db = getelementptr i8, ptr %i.da, i64 16
  %i.dc = load float, ptr %i.cz, align 4, !tbaa !27
  %i.dd = load float, ptr %i.db, align 4, !tbaa !27
  %i.de = insertelement <2 x float> poison, float %i.dc, i64 0
  %i.df = insertelement <2 x float> %i.de, float %i.dd, i64 1
  %i.dg = fpext <2 x float> %i.df to <2 x double>
  %i.dh = getelementptr [8 x i8], ptr %invariant.gep, i64 %index
  store <2 x double> %i.dg, ptr %i.dh, align 8, !tbaa !29, !alias.scope !31, !noalias !34
  %i.di = getelementptr i8, ptr %i.cz, i64 4
  %i.dj = getelementptr i8, ptr %i.da, i64 20
  %i.dk = load float, ptr %i.di, align 4, !tbaa !27
  %i.dl = load float, ptr %i.dj, align 4, !tbaa !27
  %i.dm = insertelement <2 x float> poison, float %i.dk, i64 0
  %i.dn = insertelement <2 x float> %i.dm, float %i.dl, i64 1
  %i.do = fpext <2 x float> %i.dn to <2 x double>
  %i.dp = getelementptr [8 x i8], ptr %invariant.gep72, i64 %index
  store <2 x double> %i.do, ptr %i.dp, align 8, !tbaa !29, !alias.scope !39, !noalias !40
  %i.dq = getelementptr i8, ptr %i.cz, i64 8
  %i.dr = getelementptr i8, ptr %i.da, i64 24
  %i.ds = load float, ptr %i.dq, align 4, !tbaa !27
  %i.dt = load float, ptr %i.dr, align 4, !tbaa !27
  %i.du = insertelement <2 x float> poison, float %i.ds, i64 0
  %i.dv = insertelement <2 x float> %i.du, float %i.dt, i64 1
  %i.dw = fpext <2 x float> %i.dv to <2 x double>
  %i.dx = getelementptr [8 x i8], ptr %invariant.gep74, i64 %index
  store <2 x double> %i.dw, ptr %i.dx, align 8, !tbaa !29, !alias.scope !41, !noalias !42
  %i.dy = getelementptr i8, ptr %i.cz, i64 12
  %i.dz = getelementptr i8, ptr %i.da, i64 28
  %i.ea = load float, ptr %i.dy, align 4, !tbaa !27
  %i.eb = load float, ptr %i.dz, align 4, !tbaa !27
  %i.ec = insertelement <2 x float> poison, float %i.ea, i64 0
  %i.ed = insertelement <2 x float> %i.ec, float %i.eb, i64 1
  %i.ee = fpext <2 x float> %i.ed to <2 x double>
  %i.ef = getelementptr [8 x i8], ptr %invariant.gep76, i64 %index
  store <2 x double> %i.ee, ptr %i.ef, align 8, !tbaa !29, !alias.scope !43, !noalias !44
  %i.eg = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.cw
  %wide.load = load <2 x float>, ptr %i.eg, align 4, !tbaa !27
  %i.eh = fpext <2 x float> %wide.load to <2 x double>
  %i.ei = getelementptr [8 x i8], ptr %invariant.gep78, i64 %index
  store <2 x double> %i.eh, ptr %i.ei, align 8, !tbaa !29, !alias.scope !44
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.ej = icmp eq i64 %index.next, %n.vec
  br i1 %i.ej, label %middle.block, label %vector.body, !llvm.loop !45

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader, %middle.block
  %indvars.iv84.ph = phi i64 [ %i.cv, %middle.block ], [ %7, %.preheader ]
  %indvars.iv.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.preheader ]
  br label %scalar.ph

._crit_edge82.split:                              ; preds = %._crit_edge, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit69
  tail call void @free(ptr noundef %i.l) #6
  tail call void @free(ptr noundef %i.n) #6
  ret void

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %indvars.iv.next92 = add nuw nsw i64 %indvars.iv89, 1 ; 2 uses
  %indvars.iv.next85 = add i32 %indvars.iv84, %0
  %exitcond93.not = icmp eq i64 %indvars.iv.next92, %i.b
  br i1 %exitcond93.not, label %._crit_edge82.split, label %.preheader, !llvm.loop !48

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv84.a = phi i64 [ %indvars.iv.next85.a, %scalar.ph ], [ %indvars.iv84.ph, %scalar.ph.preheader ] ; 3 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 6 uses
  %.idx = shl nsw i64 %indvars.iv84.a, 4
  %i.ek = getelementptr inbounds i8, ptr %i.l, i64 %.idx
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv
  %gep73 = getelementptr [8 x i8], ptr %invariant.gep72, i64 %indvars.iv
  %gep75 = getelementptr [8 x i8], ptr %invariant.gep74, i64 %indvars.iv
  %i.el = load <4 x float>, ptr %i.ek, align 4, !tbaa !27
  %i.em = fpext <4 x float> %i.el to <4 x double> ; 4 uses
  %i.en = extractelement <4 x double> %i.em, i64 0
  store double %i.en, ptr %gep, align 8, !tbaa !29
  %i.eo = extractelement <4 x double> %i.em, i64 1
  store double %i.eo, ptr %gep73, align 8, !tbaa !29
  %i.ep = extractelement <4 x double> %i.em, i64 2
  store double %i.ep, ptr %gep75, align 8, !tbaa !29
  %gep77 = getelementptr [8 x i8], ptr %invariant.gep76, i64 %indvars.iv
  %i.eq = extractelement <4 x double> %i.em, i64 3
  store double %i.eq, ptr %gep77, align 8, !tbaa !29
  %i.er = getelementptr inbounds [4 x i8], ptr %i.n, i64 %indvars.iv84.a
  %i.es = load float, ptr %i.er, align 4, !tbaa !27
  %i.et = fpext float %i.es to double
  %gep79 = getelementptr [8 x i8], ptr %invariant.gep78, i64 %indvars.iv
  store double %i.et, ptr %gep79, align 8, !tbaa !29
  %indvars.iv.next85.a = add nsw i64 %indvars.iv84.a, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.a
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !49
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl6opengl11read_pixelsIfEEvjjRN5Eigen6MatrixIT_Lin1ELin1ELi0ELin1ELin1EEES6_S6_S6_S6_(i32 noundef %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %6) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = zext i32 %0 to i64                       ; 17 uses
  %i.b = zext i32 %1 to i64                       ; 9 uses
  %i.c = icmp eq i32 %0, 0                        ; 2 uses
  %i.d = icmp eq i32 %1, 0                        ; 2 uses
  %or.cond.i.i = or i1 %i.c, %i.d
  br i1 %or.cond.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit69, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = udiv i64 9223372036854775807, %i.b
  %i.f = icmp samesign ult i64 %i.e, %i.a
  br i1 %i.f, label %bb.c, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit69

bb.c:                                             ; preds = %bb.b
  %i.g = tail call ptr @__cxa_allocate_exception(i64 8) #6 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.g, align 8, !tbaa !9
  tail call void @__cxa_throw(ptr nonnull %i.g, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #7
  unreachable

_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit69: ; preds = %bb.b, %bb.a
  %i.h = mul nuw nsw i64 %i.b, %i.a               ; 5 uses
  tail call void @_ZN5Eigen12DenseStorageIfLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.h, i64 noundef %i.a, i64 noundef %i.b)
  tail call void @_ZN5Eigen12DenseStorageIfLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %i.h, i64 noundef %i.a, i64 noundef %i.b)
  tail call void @_ZN5Eigen12DenseStorageIfLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %4, i64 noundef %i.h, i64 noundef %i.a, i64 noundef %i.b)
  tail call void @_ZN5Eigen12DenseStorageIfLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %5, i64 noundef %i.h, i64 noundef %i.a, i64 noundef %i.b)
  tail call void @_ZN5Eigen12DenseStorageIfLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %6, i64 noundef %i.h, i64 noundef %i.a, i64 noundef %i.b)
  %i.i = mul i32 %1, %0                           ; 2 uses
  %i.j = shl i32 %i.i, 2
  %i.k = zext i32 %i.j to i64
  %i.l = tail call noalias ptr @calloc(i64 noundef %i.k, i64 noundef 4) #9 ; 9 uses
  %i.m = zext i32 %i.i to i64
  %i.n = tail call noalias ptr @calloc(i64 noundef %i.m, i64 noundef 4) #9 ; 6 uses
  %i.o = load ptr, ptr @glad_glReadPixels, align 8, !tbaa !18
  tail call void %i.o(i32 noundef 0, i32 noundef 0, i32 noundef %0, i32 noundef %1, i32 noundef 6408, i32 noundef 5126, ptr noundef %i.l)
  %i.p = load ptr, ptr @glad_glReadPixels, align 8, !tbaa !18
  tail call void %i.p(i32 noundef 0, i32 noundef 0, i32 noundef %0, i32 noundef %1, i32 noundef 6402, i32 noundef 5126, ptr noundef %i.n)
  %brmerge = or i1 %i.d, %i.c
  br i1 %brmerge, label %._crit_edge82.split, label %.preheader.lr.ph.split

.preheader.lr.ph.split:                           ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit69
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.v = load ptr, ptr %2, align 8, !tbaa !50     ; 5 uses
  %i.w = load i64, ptr %i.u, align 8, !tbaa !53   ; 4 uses
  %i.x = load ptr, ptr %3, align 8, !tbaa !50     ; 8 uses
  %i.y = load i64, ptr %i.t, align 8, !tbaa !53   ; 4 uses
  %i.z = load ptr, ptr %4, align 8, !tbaa !50     ; 5 uses
  %i.aa = load i64, ptr %i.s, align 8, !tbaa !53  ; 4 uses
  %i.ab = load ptr, ptr %5, align 8, !tbaa !50    ; 8 uses
  %i.ac = load i64, ptr %i.r, align 8, !tbaa !53  ; 4 uses
  %i.ad = load ptr, ptr %6, align 8, !tbaa !50    ; 8 uses
  %i.ae = load i64, ptr %i.q, align 8, !tbaa !53  ; 3 uses
  %i.af = add nsw i64 %i.b, -1                    ; 5 uses
  %i.ag = mul i64 %i.w, %i.af
  %i.ah = shl nuw nsw i64 %i.a, 2
  %i.ai = add i64 %i.ag, %i.a
  %i.aj = shl i64 %i.ai, 2
  %scevgep102.a = getelementptr i8, ptr %i.v, i64 %i.aj ; 3 uses
  %i.ak = mul i64 %i.y, %i.af
  %i.al = add i64 %i.ak, %i.a
  %i.am = shl i64 %i.al, 2
  %scevgep103.a = getelementptr i8, ptr %i.x, i64 %i.am ; 6 uses
  %i.an = mul i64 %i.aa, %i.af
  %i.ao = add i64 %i.an, %i.a
  %i.ap = shl i64 %i.ao, 2
  %scevgep104.a = getelementptr i8, ptr %i.z, i64 %i.ap ; 3 uses
  %i.aq = mul i64 %i.ac, %i.af
  %i.ar = add i64 %i.aq, %i.a
  %i.as = shl i64 %i.ar, 2
  %scevgep105.a = getelementptr i8, ptr %i.ab, i64 %i.as ; 6 uses
  %i.at = mul i64 %i.ae, %i.af
  %i.au = add i64 %i.at, %i.a
  %i.av = shl i64 %i.au, 2
  %scevgep106.a = getelementptr i8, ptr %i.ad, i64 %i.av ; 6 uses
  %i.aw = shl nuw nsw i64 %i.a, 4
  %scevgep108.a = getelementptr i8, ptr %i.l, i64 %i.aw
  %scevgep111 = getelementptr i8, ptr %i.n, i64 %i.ah
  %i.ax = insertelement <4 x ptr> poison, ptr %i.v, i64 0
  %i.ay = shufflevector <4 x ptr> %i.ax, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.az = insertelement <4 x ptr> poison, ptr %scevgep103.a, i64 0
  %i.ba = insertelement <4 x ptr> %i.az, ptr %scevgep104.a, i64 1
  %i.bb = insertelement <4 x ptr> %i.ba, ptr %scevgep105.a, i64 2
  %i.bc = insertelement <4 x ptr> %i.bb, ptr %scevgep106.a, i64 3
  %i.bd = insertelement <4 x ptr> poison, ptr %i.x, i64 0
  %i.be = insertelement <4 x ptr> %i.bd, ptr %i.z, i64 1
  %i.bf = insertelement <4 x ptr> %i.be, ptr %i.ab, i64 2
  %i.bg = insertelement <4 x ptr> %i.bf, ptr %i.ad, i64 3
  %i.bh = insertelement <4 x ptr> poison, ptr %scevgep102.a, i64 0
  %i.bi = shufflevector <4 x ptr> %i.bh, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.bj = insertelement <4 x ptr> poison, ptr %i.z, i64 0
  %i.bk = shufflevector <4 x ptr> %i.bj, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.bl = insertelement <4 x ptr> poison, ptr %scevgep105.a, i64 0
  %i.bm = insertelement <4 x ptr> %i.bl, ptr %scevgep106.a, i64 1
  %i.bn = insertelement <4 x ptr> poison, ptr %i.ab, i64 0
  %i.bo = insertelement <4 x ptr> %i.bn, ptr %i.ad, i64 1
  %i.bp = insertelement <4 x ptr> poison, ptr %scevgep104.a, i64 0
  %i.bq = shufflevector <4 x ptr> %i.bp, <4 x ptr> poison, <4 x i32> zeroinitializer
  %min.iters.check = icmp ult i32 %0, 52
  %i.br = icmp ult <4 x ptr> %i.ay, %i.bc
  %i.bs = icmp ult <4 x ptr> %i.bg, %i.bi
  %i.bt = and <4 x i1> %i.br, %i.bs
  %bound0141 = icmp ult ptr %i.x, %scevgep104.a
  %bound1142 = icmp ult ptr %i.z, %scevgep103.a
  %found.conflict143 = and i1 %bound0141, %bound1142
  %bound0147 = icmp ult ptr %i.x, %scevgep105.a
  %bound1148 = icmp ult ptr %i.ab, %scevgep103.a
  %found.conflict149 = and i1 %bound0147, %bound1148
  %bound0153 = icmp ult ptr %i.x, %scevgep106.a
  %bound1154 = icmp ult ptr %i.ad, %scevgep103.a
  %found.conflict155 = and i1 %bound0153, %bound1154
  %bound0191 = icmp ult ptr %i.ab, %scevgep106.a
  %bound1192 = icmp ult ptr %i.ad, %scevgep105.a
  %found.conflict193 = and i1 %bound0191, %bound1192
  %i.bu = bitcast <4 x i1> %i.bt to i4
  %i.bv = icmp ne i4 %i.bu, 0
  %op.rdx250.a = or i1 %found.conflict149, %found.conflict155
  %i.bw = or i64 %i.w, %i.y
  %i.bx = or i64 %i.bw, %i.ac
  %i.by = or i64 %i.bx, %i.aa
  %.mask = and i64 %i.by, 2305843009213693952
  %i.bz = icmp ne i64 %.mask, 0
  %i.ca = or i64 %i.y, %i.ae
  %i.cb = or i64 %i.ca, %i.ac
  %i.cc = or i64 %i.cb, %i.aa
  %i.cd = or i64 %i.cc, %i.w
  %.mask276 = and i64 %i.cd, 2305843009213693952
  %i.ce = icmp ne i64 %.mask276, 0
  %op.rdx274 = or i1 %i.ce, %i.bv
  %n.vec = and i64 %i.a, 4294967292               ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %i.a
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph.split, %._crit_edge
  %indvars.iv89 = phi i64 [ 0, %.preheader.lr.ph.split ], [ %indvars.iv.next92, %._crit_edge ] ; 6 uses
  %indvars.iv84 = phi i32 [ 0, %.preheader.lr.ph.split ], [ %indvars.iv.next85, %._crit_edge ] ; 3 uses
  %7 = sext i32 %indvars.iv84 to i64              ; 4 uses
  %i.cf = mul nsw i64 %i.w, %indvars.iv89
  %invariant.gep = getelementptr [4 x i8], ptr %i.v, i64 %i.cf ; 2 uses
  %i.cg = mul nsw i64 %i.y, %indvars.iv89
  %invariant.gep72 = getelementptr [4 x i8], ptr %i.x, i64 %i.cg ; 2 uses
  %i.ch = mul nsw i64 %i.aa, %indvars.iv89
  %invariant.gep74 = getelementptr [4 x i8], ptr %i.z, i64 %i.ch ; 2 uses
  %i.ci = mul nsw i64 %i.ac, %indvars.iv89
  %invariant.gep76 = getelementptr [4 x i8], ptr %i.ab, i64 %i.ci ; 2 uses
  %i.cj = mul nsw i64 %i.ae, %indvars.iv89
  %invariant.gep78 = getelementptr [4 x i8], ptr %i.ad, i64 %i.cj ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader
  %8 = sext i32 %indvars.iv84 to i64              ; 2 uses
  %i.ck = shl nsw i64 %8, 2                       ; 2 uses
  %scevgep107.a = getelementptr i8, ptr %scevgep111, i64 %i.ck ; 5 uses
  %scevgep109 = getelementptr i8, ptr %i.n, i64 %i.ck ; 5 uses
  %i.cl = shl nsw i64 %8, 4                       ; 2 uses
  %scevgep110 = getelementptr i8, ptr %scevgep108.a, i64 %i.cl ; 5 uses
  %scevgep112 = getelementptr i8, ptr %i.l, i64 %i.cl ; 5 uses
  %bound0131 = icmp ult ptr %i.v, %scevgep110
  %bound1132 = icmp ult ptr %scevgep112, %scevgep102.a
  %found.conflict133 = and i1 %bound0131, %bound1132
  %bound0136 = icmp ult ptr %i.v, %scevgep107.a
  %bound1137 = icmp ult ptr %scevgep109, %scevgep102.a
  %found.conflict138 = and i1 %bound0136, %bound1137
  %bound0159 = icmp ult ptr %i.x, %scevgep110
  %bound1160 = icmp ult ptr %scevgep112, %scevgep103.a
  %found.conflict161 = and i1 %bound0159, %bound1160
  %bound0164 = icmp ult ptr %i.x, %scevgep107.a
  %bound1165 = icmp ult ptr %scevgep109, %scevgep103.a
  %found.conflict166 = and i1 %bound0164, %bound1165
  %i.cm = insertelement <4 x ptr> %i.bm, ptr %scevgep110, i64 2
  %i.cn = insertelement <4 x ptr> %i.cm, ptr %scevgep107.a, i64 3
  %i.co = icmp ult <4 x ptr> %i.bk, %i.cn
  %i.cp = insertelement <4 x ptr> %i.bo, ptr %scevgep112, i64 2
  %i.cq = insertelement <4 x ptr> %i.cp, ptr %scevgep109, i64 3
  %i.cr = icmp ult <4 x ptr> %i.cq, %i.bq
  %i.cs = and <4 x i1> %i.co, %i.cr
  %bound0197 = icmp ult ptr %i.ab, %scevgep110
  %bound1198 = icmp ult ptr %scevgep112, %scevgep105.a
  %found.conflict199 = and i1 %bound0197, %bound1198
  %bound0202 = icmp ult ptr %i.ab, %scevgep107.a
  %bound1203 = icmp ult ptr %scevgep109, %scevgep105.a
  %found.conflict204 = and i1 %bound0202, %bound1203
  %bound0207 = icmp ult ptr %i.ad, %scevgep110
  %bound1208 = icmp ult ptr %scevgep112, %scevgep106.a
  %found.conflict209 = and i1 %bound0207, %bound1208
  %bound0212 = icmp ult ptr %i.ad, %scevgep107.a
  %bound1213 = icmp ult ptr %scevgep109, %scevgep106.a
  %found.conflict214 = and i1 %bound0212, %bound1213
  %i.ct = bitcast <4 x i1> %i.cs to i4
  %i.cu = icmp ne i4 %i.ct, 0
  %op.rdx248.a = or i1 %i.cu, %found.conflict133
  %op.rdx249.a = or i1 %found.conflict138, %found.conflict143
  %op.rdx251 = or i1 %found.conflict161, %found.conflict166
  %op.rdx252 = or i1 %found.conflict193, %found.conflict199
  %op.rdx253 = or i1 %found.conflict204, %found.conflict209
  %op.rdx262.a = or i1 %op.rdx248.a, %op.rdx249.a
  %op.rdx263 = or i1 %op.rdx250.a, %op.rdx251
  %op.rdx264 = or i1 %op.rdx252, %op.rdx253
  %op.rdx265 = or i1 %found.conflict214, %i.bz
  %op.rdx269 = or i1 %op.rdx262.a, %op.rdx263
  %op.rdx270.a = or i1 %op.rdx264, %op.rdx265
  %op.rdx273 = or i1 %op.rdx269, %op.rdx270.a
  %op.rdx275 = or i1 %op.rdx273, %op.rdx274
  br i1 %op.rdx275, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.cv = add nsw i64 %n.vec, %7
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 7 uses
  %i.cw = add i64 %index, %7                      ; 5 uses
  %i.cx = shl nsw i64 %i.cw, 4
  %i.cy = shl i64 %i.cw, 4
  %i.cz = shl i64 %i.cw, 4
  %i.da = shl i64 %i.cw, 4
  %i.db = getelementptr inbounds i8, ptr %i.l, i64 %i.cx ; 4 uses
  %i.dc = getelementptr i8, ptr %i.l, i64 %i.cy   ; 4 uses
  %i.dd = getelementptr i8, ptr %i.dc, i64 16
  %i.de = getelementptr i8, ptr %i.l, i64 %i.cz   ; 4 uses
  %i.df = getelementptr i8, ptr %i.de, i64 32
  %i.dg = getelementptr i8, ptr %i.l, i64 %i.da   ; 4 uses
  %i.dh = getelementptr i8, ptr %i.dg, i64 48
  %i.di = load float, ptr %i.db, align 4, !tbaa !27, !alias.scope !54
  %i.dj = load float, ptr %i.dd, align 4, !tbaa !27, !alias.scope !54
  %i.dk = load float, ptr %i.df, align 4, !tbaa !27, !alias.scope !54
  %i.dl = load float, ptr %i.dh, align 4, !tbaa !27, !alias.scope !54
  %i.dm = insertelement <4 x float> poison, float %i.di, i64 0
  %i.dn = insertelement <4 x float> %i.dm, float %i.dj, i64 1
  %i.do = insertelement <4 x float> %i.dn, float %i.dk, i64 2
  %i.dp = insertelement <4 x float> %i.do, float %i.dl, i64 3
  %i.dq = getelementptr [4 x i8], ptr %invariant.gep, i64 %index
  store <4 x float> %i.dp, ptr %i.dq, align 4, !tbaa !27, !alias.scope !57, !noalias !59
  %i.dr = getelementptr i8, ptr %i.db, i64 4
  %i.ds = getelementptr i8, ptr %i.dc, i64 20
  %i.dt = getelementptr i8, ptr %i.de, i64 36
  %i.du = getelementptr i8, ptr %i.dg, i64 52
  %i.dv = load float, ptr %i.dr, align 4, !tbaa !27, !alias.scope !54
  %i.dw = load float, ptr %i.ds, align 4, !tbaa !27, !alias.scope !54
  %i.dx = load float, ptr %i.dt, align 4, !tbaa !27, !alias.scope !54
  %i.dy = load float, ptr %i.du, align 4, !tbaa !27, !alias.scope !54
  %i.dz = insertelement <4 x float> poison, float %i.dv, i64 0
  %i.ea = insertelement <4 x float> %i.dz, float %i.dw, i64 1
  %i.eb = insertelement <4 x float> %i.ea, float %i.dx, i64 2
  %i.ec = insertelement <4 x float> %i.eb, float %i.dy, i64 3
  %i.ed = getelementptr [4 x i8], ptr %invariant.gep72, i64 %index
  store <4 x float> %i.ec, ptr %i.ed, align 4, !tbaa !27, !alias.scope !65, !noalias !66
  %i.ee = getelementptr i8, ptr %i.db, i64 8
  %i.ef = getelementptr i8, ptr %i.dc, i64 24
  %i.eg = getelementptr i8, ptr %i.de, i64 40
  %i.eh = getelementptr i8, ptr %i.dg, i64 56
  %i.ei = load float, ptr %i.ee, align 4, !tbaa !27, !alias.scope !54
  %i.ej = load float, ptr %i.ef, align 4, !tbaa !27, !alias.scope !54
  %i.ek = load float, ptr %i.eg, align 4, !tbaa !27, !alias.scope !54
  %i.el = load float, ptr %i.eh, align 4, !tbaa !27, !alias.scope !54
  %i.em = insertelement <4 x float> poison, float %i.ei, i64 0
  %i.en = insertelement <4 x float> %i.em, float %i.ej, i64 1
  %i.eo = insertelement <4 x float> %i.en, float %i.ek, i64 2
  %i.ep = insertelement <4 x float> %i.eo, float %i.el, i64 3
  %i.eq = getelementptr [4 x i8], ptr %invariant.gep74, i64 %index
  store <4 x float> %i.ep, ptr %i.eq, align 4, !tbaa !27, !alias.scope !67, !noalias !68
  %i.er = getelementptr i8, ptr %i.db, i64 12
  %i.es = getelementptr i8, ptr %i.dc, i64 28
  %i.et = getelementptr i8, ptr %i.de, i64 44
  %i.eu = getelementptr i8, ptr %i.dg, i64 60
  %i.ev = load float, ptr %i.er, align 4, !tbaa !27, !alias.scope !54
  %i.ew = load float, ptr %i.es, align 4, !tbaa !27, !alias.scope !54
  %i.ex = load float, ptr %i.et, align 4, !tbaa !27, !alias.scope !54
  %i.ey = load float, ptr %i.eu, align 4, !tbaa !27, !alias.scope !54
  %i.ez = insertelement <4 x float> poison, float %i.ev, i64 0
  %i.fa = insertelement <4 x float> %i.ez, float %i.ew, i64 1
  %i.fb = insertelement <4 x float> %i.fa, float %i.ex, i64 2
  %i.fc = insertelement <4 x float> %i.fb, float %i.ey, i64 3
  %i.fd = getelementptr [4 x i8], ptr %invariant.gep76, i64 %index
  store <4 x float> %i.fc, ptr %i.fd, align 4, !tbaa !27, !alias.scope !69, !noalias !70
  %i.fe = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.cw
  %wide.load = load <4 x float>, ptr %i.fe, align 4, !tbaa !27, !alias.scope !71
  %i.ff = getelementptr [4 x i8], ptr %invariant.gep78, i64 %index
  store <4 x float> %wide.load, ptr %i.ff, align 4, !tbaa !27, !alias.scope !72, !noalias !73
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.fg = icmp eq i64 %index.next, %n.vec
  br i1 %i.fg, label %middle.block, label %vector.body, !llvm.loop !74

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.preheader, %middle.block
  %indvars.iv86.ph = phi i64 [ %7, %vector.memcheck ], [ %7, %.preheader ], [ %i.cv, %middle.block ]
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.preheader ], [ %n.vec, %middle.block ]
  br label %scalar.ph

._crit_edge82.split:                              ; preds = %._crit_edge, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit69
  tail call void @free(ptr noundef %i.l) #6
  tail call void @free(ptr noundef %i.n) #6
  ret void

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %indvars.iv.next92 = add nuw nsw i64 %indvars.iv89, 1 ; 2 uses
  %indvars.iv.next85 = add i32 %indvars.iv84, %0
  %exitcond93.not = icmp eq i64 %indvars.iv.next92, %i.b
  br i1 %exitcond93.not, label %._crit_edge82.split, label %.preheader, !llvm.loop !75

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv84.a = phi i64 [ %indvars.iv.next85.a, %scalar.ph ], [ %indvars.iv86.ph, %scalar.ph.preheader ] ; 3 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 6 uses
  %.idx = shl nsw i64 %indvars.iv84.a, 4
  %i.fh = getelementptr inbounds i8, ptr %i.l, i64 %.idx ; 4 uses
  %i.fi = load float, ptr %i.fh, align 4, !tbaa !27
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  store float %i.fi, ptr %gep, align 4, !tbaa !27
  %i.fj = getelementptr i8, ptr %i.fh, i64 4
  %i.fk = load float, ptr %i.fj, align 4, !tbaa !27
  %gep73 = getelementptr [4 x i8], ptr %invariant.gep72, i64 %indvars.iv
  store float %i.fk, ptr %gep73, align 4, !tbaa !27
  %i.fl = getelementptr i8, ptr %i.fh, i64 8
  %i.fm = load float, ptr %i.fl, align 4, !tbaa !27
  %gep75 = getelementptr [4 x i8], ptr %invariant.gep74, i64 %indvars.iv
  store float %i.fm, ptr %gep75, align 4, !tbaa !27
  %i.fn = getelementptr i8, ptr %i.fh, i64 12
  %i.fo = load float, ptr %i.fn, align 4, !tbaa !27
  %gep77 = getelementptr [4 x i8], ptr %invariant.gep76, i64 %indvars.iv
  store float %i.fo, ptr %gep77, align 4, !tbaa !27
  %i.fp = getelementptr inbounds [4 x i8], ptr %i.n, i64 %indvars.iv84.a
  %i.fq = load float, ptr %i.fp, align 4, !tbaa !27
  %gep79 = getelementptr [4 x i8], ptr %invariant.gep78, i64 %indvars.iv
  store float %i.fq, ptr %gep79, align 4, !tbaa !27
  %indvars.iv.next85.a = add nsw i64 %indvars.iv84.a, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.a
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !76
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZNSt9bad_allocD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #3

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #5

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !26
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !77
  %i.e = mul nsw i64 %i.d, %i.b
  %.not = icmp eq i64 %1, %i.e
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !tbaa !23
  tail call void @free(ptr noundef %i.f) #6
  %i.g = icmp sgt i64 %1, 0
  br i1 %i.g, label %bb.c, label %.sink.split

bb.c:                                             ; preds = %bb.b
  %i.h = icmp samesign ugt i64 %1, 2305843009213693951
  br i1 %i.h, label %bb.d, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i

bb.d:                                             ; preds = %bb.c
  %i.i = tail call ptr @__cxa_allocate_exception(i64 8) #6 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.i, align 8, !tbaa !9
  tail call void @__cxa_throw(ptr nonnull %i.i, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #7
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i: ; preds = %bb.c
  %i.j = shl nuw i64 %1, 3
  %i.k = tail call noalias ptr @malloc(i64 noundef %i.j) #8 ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.e, label %.sink.split

bb.e:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i
  %i.m = tail call ptr @__cxa_allocate_exception(i64 8) #6 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.m, align 8, !tbaa !9
  tail call void @__cxa_throw(ptr nonnull %i.m, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #7
  unreachable

.sink.split:                                      ; preds = %bb.b, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i
  %.sink = phi ptr [ %i.k, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i ], [ null, %bb.b ]
  store ptr %.sink, ptr %0, align 8, !tbaa !23
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.a
  store i64 %2, ptr %i.a, align 8, !tbaa !26
  store i64 %3, ptr %i.c, align 8, !tbaa !77
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen12DenseStorageIfLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !53
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !78
  %i.e = mul nsw i64 %i.d, %i.b
  %.not = icmp eq i64 %1, %i.e
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !tbaa !50
  tail call void @free(ptr noundef %i.f) #6
  %i.g = icmp sgt i64 %1, 0
  br i1 %i.g, label %bb.c, label %.sink.split

bb.c:                                             ; preds = %bb.b
  %i.h = icmp samesign ugt i64 %1, 4611686018427387903
  br i1 %i.h, label %bb.d, label %_ZN5Eigen8internal23check_size_for_overflowIfEEvm.exit.i

bb.d:                                             ; preds = %bb.c
  %i.i = tail call ptr @__cxa_allocate_exception(i64 8) #6 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.i, align 8, !tbaa !9
  tail call void @__cxa_throw(ptr nonnull %i.i, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #7
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIfEEvm.exit.i: ; preds = %bb.c
  %i.j = shl nuw i64 %1, 2
  %i.k = tail call noalias ptr @malloc(i64 noundef %i.j) #8 ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.e, label %.sink.split

bb.e:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIfEEvm.exit.i
  %i.m = tail call ptr @__cxa_allocate_exception(i64 8) #6 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.m, align 8, !tbaa !9
  tail call void @__cxa_throw(ptr nonnull %i.m, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #7
  unreachable

.sink.split:                                      ; preds = %bb.b, %_ZN5Eigen8internal23check_size_for_overflowIfEEvm.exit.i
  %.sink = phi ptr [ %i.k, %_ZN5Eigen8internal23check_size_for_overflowIfEEvm.exit.i ], [ null, %bb.b ]
  store ptr %.sink, ptr %0, align 8, !tbaa !50
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.a
  store i64 %2, ptr %i.a, align 8, !tbaa !53
  store i64 %3, ptr %i.c, align 8, !tbaa !78
  ret void
}

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold noreturn }
attributes #5 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { noreturn }
attributes #8 = { nounwind allocsize(0) }
attributes #9 = { nounwind allocsize(0,1) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"vtable pointer", !8, i64 0}
!11 = !{!12, !15, i64 8}
!12 = !{!"_ZTSN5Eigen12DenseStorageIhLin1ELin1ELin1ELi0EEE", !13, i64 0, !15, i64 8, !15, i64 16}
!13 = !{!"p1 omnipotent char", !14, i64 0}
!14 = !{!"any pointer", !7, i64 0}
!15 = !{!"long", !7, i64 0}
!16 = !{!12, !15, i64 16}
!17 = !{!12, !13, i64 0}
!18 = !{!14, !14, i64 0}
!19 = distinct !{!19, !20}
!20 = !{!"llvm.loop.mustprogress"}
!21 = !{!7, !7, i64 0}
!22 = distinct !{!22, !20}
!23 = !{!24, !25, i64 0}
!24 = !{!"_ZTSN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EEE", !25, i64 0, !15, i64 8, !15, i64 16}
!25 = !{!"p1 double", !14, i64 0}
!26 = !{!24, !15, i64 8}
!27 = !{!28, !28, i64 0}
!28 = !{!"float", !7, i64 0}
!29 = !{!30, !30, i64 0}
!30 = !{!"double", !7, i64 0}
!31 = !{!32}
!32 = distinct !{!32, !33}
!33 = distinct !{!33, !"LVerDomain"}
!34 = !{!35, !36, !37, !38}
!35 = distinct !{!35, !33}
!36 = distinct !{!36, !33}
!37 = distinct !{!37, !33}
!38 = distinct !{!38, !33}
!39 = !{!35}
!40 = !{!36, !37, !38}
!41 = !{!36}
!42 = !{!37, !38}
!43 = !{!37}
!44 = !{!38}
!45 = distinct !{!45, !20, !46, !47}
!46 = !{!"llvm.loop.isvectorized", i32 1}
!47 = !{!"llvm.loop.unroll.runtime.disable"}
!48 = distinct !{!48, !20}
!49 = distinct !{!49, !20, !46}
!50 = !{!51, !52, i64 0}
!51 = !{!"_ZTSN5Eigen12DenseStorageIfLin1ELin1ELin1ELi0EEE", !52, i64 0, !15, i64 8, !15, i64 16}
!52 = !{!"p1 float", !14, i64 0}
!53 = !{!51, !15, i64 8}
!54 = !{!55}
!55 = distinct !{!55, !56}
!56 = distinct !{!56, !"LVerDomain"}
!57 = !{!58}
!58 = distinct !{!58, !56}
!59 = !{!60, !61, !62, !63, !55, !64}
!60 = distinct !{!60, !56}
!61 = distinct !{!61, !56}
!62 = distinct !{!62, !56}
!63 = distinct !{!63, !56}
!64 = distinct !{!64, !56}
!65 = !{!60}
!66 = !{!61, !62, !63, !55, !64}
end_hunk_0
