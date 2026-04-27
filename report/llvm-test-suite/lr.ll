inline.NumInlined: 35
inline.NumDeleted: 18
begin_hunk_0_@build_LR_tables:bb.a
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !89 ; 2 uses
  %i.ce = load i32, ptr %i.bx, align 8, !tbaa !90
  %.not26.i.i = icmp eq i32 %i.ce, 0
  br i1 %.not26.i.i, label %.preheader.i.i, label %.lr.ph.i9.i

.lr.ph.i9.i:                                      ; preds = %bb.v
  store i32 1, ptr %1, align 8, !tbaa !8
  br label %.lr.ph.i9.i.a

.preheader.i.loopexit.i:                          ; preds = %.lr.ph.i9.i.a
  %.pre.i = load i32, ptr %i.af, align 8, !tbaa !23
end_hunk_0
begin_hunk_1_@build_LR_tables:bb.a
.preheader.i.i:                                   ; preds = %.preheader.i.loopexit.i, %bb.v
  %i.cf = phi i32 [ %.pre.i, %.preheader.i.loopexit.i ], [ %i.ca, %bb.v ]
  %.not27.i.i = icmp eq i32 %i.cf, 0
  br i1 %.not27.i.i, label %._crit_edge.i.i, label %.lr.ph21.i.i

.lr.ph21.i.i:                                     ; preds = %.preheader.i.i
  store i32 0, ptr %1, align 8, !tbaa !8
  br label %.lr.ph21.i.i.a

.lr.ph.i9.i.a:                                    ; preds = %.lr.ph.i9.i.a, %.lr.ph.i9.i
  %indvars.iv.i10.i = phi i64 [ 0, %.lr.ph.i9.i ], [ %indvars.iv.next.i11.i, %.lr.ph.i9.i.a ] ; 2 uses
  %i.cg = load ptr, ptr %i.by, align 8, !tbaa !91
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %indvars.iv.i10.i
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !92
end_hunk_1
begin_hunk_2_@build_LR_tables:bb.a
  %i.cl = icmp samesign ult i64 %indvars.iv.next.i11.i, %i.ck
  br i1 %i.cl, label %.lr.ph.i9.i.a, label %.preheader.i.loopexit.i, !llvm.loop !93

.lr.ph21.i.i.a:                                   ; preds = %.lr.ph21.i.i.a, %.lr.ph21.i.i
  %indvars.iv29.i.i = phi i64 [ 0, %.lr.ph21.i.i ], [ %indvars.iv.next30.i.i, %.lr.ph21.i.i.a ] ; 2 uses
  %i.cm = load ptr, ptr %i.b, align 8, !tbaa !76
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %indvars.iv29.i.i
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !77
end_hunk_2
