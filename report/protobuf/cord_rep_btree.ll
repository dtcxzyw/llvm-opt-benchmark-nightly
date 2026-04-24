inline.NumInlined: 753
inline.NumDeleted: 205
begin_hunk_0_@_ZN4absl12lts_2025051213cord_internal12CordRepBtree5MergeILNS2_8EdgeTypeE1EEEPS2_S5_S5_:bb.a
  %i.b = load i64, ptr %1, align 8, !tbaa !8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 13 ; 2 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !7     ; 2 uses
  %i.e = zext i8 %i.d to i32                      ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 13
  %i.g = load i8, ptr %i.f, align 1, !tbaa !7     ; 2 uses
  %i.h = zext i8 %i.g to i32                      ; 3 uses
  %i.i = sub nsw i32 %i.e, %i.h                   ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  %i.j = icmp sgt i32 %i.i, 0
end_hunk_0
begin_hunk_1_@_ZN4absl12lts_2025051213cord_internal12CordRepBtree5MergeILNS2_8EdgeTypeE1EEEPS2_S5_S5_:bb.a
  br label %.critedge.i

.critedge.i:                                      ; preds = %.critedge.loopexit.i, %bb.a
  %.014.lcssa.i = phi ptr [ %0, %bb.a ], [ %.01416.i, %.critedge.loopexit.i ] ; 4 uses
  %.0.lcssa.i = phi i32 [ 0, %bb.a ], [ %i.z, %.critedge.loopexit.i ] ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.014.lcssa.i, i64 8
  %i.ab = load atomic i32, ptr %i.aa acquire, align 4
  %i.ac = icmp eq i32 %i.ab, 2
  %i.ad = zext i1 %i.ac to i32
  %i.ae = add nuw nsw i32 %.0.lcssa.i, %i.ad      ; 4 uses
  store i32 %i.ae, ptr %2, align 8, !tbaa !34
  %i.af = icmp slt i32 %.0.lcssa.i, %i.i
  br i1 %i.af, label %.lr.ph24.i, label %_ZN4absl12lts_2025051213cord_internal12_GLOBAL__N_115StackOperationsILNS1_12CordRepBtree8EdgeTypeE1EE10BuildStackEPS4_i.exit

.lr.ph24.i:                                       ; preds = %.critedge.i
  %3 = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  %4 = zext i32 %.0.lcssa.i to i64                ; 2 uses
  %5 = add i32 %.0.lcssa.i, %i.h
  %6 = sub i32 %i.e, %5
  %xtraiter = and i32 %6, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph24.i, %.prol.preheader
  %indvars.iv27.i.prol = phi i64 [ %indvars.iv.next28.i.prol, %.prol.preheader ], [ %4, %.lr.ph24.i ] ; 2 uses
  %.11522.i.prol = phi ptr [ %11, %.prol.preheader ], [ %.014.lcssa.i, %.lr.ph24.i ] ; 3 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph24.i ]
  %indvars.iv.next28.i.prol = add nuw nsw i64 %indvars.iv27.i.prol, 1 ; 2 uses
  %7 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv27.i.prol
  store ptr %.11522.i.prol, ptr %7, align 8, !tbaa !14
  %i.ag = getelementptr inbounds nuw i8, ptr %.11522.i.prol, i64 15
  %8 = load i8, ptr %i.ag, align 1
  %i.ah = zext i8 %8 to i64
  %9 = getelementptr i8, ptr %.11522.i.prol, i64 8
  %10 = getelementptr [8 x i8], ptr %9, i64 %i.ah
  %11 = load ptr, ptr %10, align 8, !tbaa !17     ; 3 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !112

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph24.i
  %indvars.iv27.i.unr = phi i64 [ %4, %.lr.ph24.i ], [ %indvars.iv.next28.i.prol, %.prol.preheader ]
  %.11522.i.unr = phi ptr [ %.014.lcssa.i, %.lr.ph24.i ], [ %11, %.prol.preheader ]
  %.lcssa100.unr = phi ptr [ poison, %.lr.ph24.i ], [ %11, %.prol.preheader ]
  %12 = sub i32 %.0.lcssa.i, %i.e
  %13 = add i32 %12, %i.h
  %14 = icmp ugt i32 %13, -4
  br i1 %14, label %_ZN4absl12lts_2025051213cord_internal12_GLOBAL__N_115StackOperationsILNS1_12CordRepBtree8EdgeTypeE1EE10BuildStackEPS4_i.exit, label %.lr.ph24.i.new

.lr.ph24.i.new:                                   ; preds = %.prol.loopexit, %.lr.ph24.i.new
  %indvars.iv27.i = phi i64 [ %indvars.iv.next28.i.3, %.lr.ph24.i.new ], [ %indvars.iv27.i.unr, %.prol.loopexit ] ; 5 uses
  %.11522.i = phi ptr [ %i.ao, %.lr.ph24.i.new ], [ %.11522.i.unr, %.prol.loopexit ] ; 3 uses
  %15 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv27.i
  store ptr %.11522.i, ptr %15, align 8, !tbaa !14
  %16 = getelementptr inbounds nuw i8, ptr %.11522.i, i64 15
  %17 = load i8, ptr %16, align 1
  %18 = zext i8 %17 to i64
  %19 = getelementptr i8, ptr %.11522.i, i64 8
  %20 = getelementptr [8 x i8], ptr %19, i64 %18
  %21 = load ptr, ptr %20, align 8, !tbaa !17     ; 3 uses
  %22 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv27.i
  %23 = getelementptr inbounds nuw i8, ptr %22, i64 8
  store ptr %21, ptr %23, align 8, !tbaa !14
  %24 = getelementptr inbounds nuw i8, ptr %21, i64 15
  %25 = load i8, ptr %24, align 1
  %26 = zext i8 %25 to i64
  %27 = getelementptr i8, ptr %21, i64 8
  %28 = getelementptr [8 x i8], ptr %27, i64 %26
  %29 = load ptr, ptr %28, align 8, !tbaa !17     ; 3 uses
  %30 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv27.i
  %31 = getelementptr inbounds nuw i8, ptr %30, i64 16
  store ptr %29, ptr %31, align 8, !tbaa !14
  %32 = getelementptr inbounds nuw i8, ptr %29, i64 15
  %33 = load i8, ptr %32, align 1
  %34 = zext i8 %33 to i64
  %35 = getelementptr i8, ptr %29, i64 8
  %36 = getelementptr [8 x i8], ptr %35, i64 %34
  %37 = load ptr, ptr %36, align 8, !tbaa !17     ; 3 uses
  %indvars.iv.next28.i.3 = add nuw nsw i64 %indvars.iv27.i, 4 ; 2 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv27.i
  %38 = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  store ptr %37, ptr %38, align 8, !tbaa !14
  %i.aj = getelementptr inbounds nuw i8, ptr %37, i64 15
  %i.ak = load i8, ptr %i.aj, align 1
  %i.al = zext i8 %i.ak to i64
  %i.am = getelementptr i8, ptr %37, i64 8
  %i.an = getelementptr [8 x i8], ptr %i.am, i64 %i.al
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !17 ; 2 uses
  %39 = trunc nuw i64 %indvars.iv.next28.i.3 to i32
  %40 = icmp sgt i32 %i.i, %39
  br i1 %40, label %.lr.ph24.i.new, label %_ZN4absl12lts_2025051213cord_internal12_GLOBAL__N_115StackOperationsILNS1_12CordRepBtree8EdgeTypeE1EE10BuildStackEPS4_i.exit, !llvm.loop !37

_ZN4absl12lts_2025051213cord_internal12_GLOBAL__N_115StackOperationsILNS1_12CordRepBtree8EdgeTypeE1EE10BuildStackEPS4_i.exit: ; preds = %.prol.loopexit, %.lr.ph24.i.new, %.critedge.thread.i, %.critedge.i
  %.val = phi i32 [ %i.ae, %.critedge.i ], [ %i.y, %.critedge.thread.i ], [ %i.ae, %.lr.ph24.i.new ], [ %i.ae, %.prol.loopexit ]
  %.115.lcssa.i = phi ptr [ %.014.lcssa.i, %.critedge.i ], [ %i.t, %.critedge.thread.i ], [ %.lcssa100.unr, %.prol.loopexit ], [ %i.ao, %.lr.ph24.i.new ] ; 6 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.115.lcssa.i, i64 15 ; 2 uses
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !7
  %i.ar = zext i8 %i.aq to i64
end_hunk_1
begin_hunk_2_@_ZN4absl12lts_2025051213cord_internal12CordRepBtree5MergeILNS2_8EdgeTypeE1EEEPS2_S5_S5_:bb.a
  store <2 x ptr> %wide.load, ptr %i.cl, align 8, !tbaa !17
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.cn = icmp eq i64 %index.next, %n.vec
  br i1 %i.cn, label %middle.block, label %vector.body, !llvm.loop !113

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ch, %n.vec
end_hunk_2
begin_hunk_3_@_ZN4absl12lts_2025051213cord_internal12CordRepBtree5MergeILNS2_8EdgeTypeE1EEEPS2_S5_S5_:bb.a
  store ptr %i.cq, ptr %i.co, align 8, !tbaa !17
  %i.cr = add nuw nsw i64 %.011.i.i48, 1          ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.cr, %i.ch
  br i1 %exitcond.not.i.i, label %_ZN4absl12lts_2025051213cord_internal12CordRepBtree10AlignBeginEv.exit.i, label %scalar.ph, !llvm.loop !114

_ZN4absl12lts_2025051213cord_internal12CordRepBtree10AlignBeginEv.exit.i: ; preds = %scalar.ph, %middle.block, %bb.f, %_ZN4absl12lts_2025051213cord_internal12CordRepBtree10ToOpResultEb.exit
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 15 ; 2 uses
end_hunk_3
begin_hunk_4_@_ZN4absl12lts_2025051213cord_internal12CordRepBtree5MergeILNS2_8EdgeTypeE1EEEPS2_S5_S5_:bb.a
  store <2 x ptr> %wide.load93, ptr %i.dm, align 8, !tbaa !17
  %index.next94 = add nuw i64 %index90, 4         ; 2 uses
  %i.dn = icmp eq i64 %index.next94, %n.vec88
  br i1 %i.dn, label %middle.block95, label %vector.body89, !llvm.loop !115

middle.block95:                                   ; preds = %vector.body89
  %cmp.n96 = icmp eq i64 %i.dc, %n.vec88
end_hunk_4
begin_hunk_5_@_ZN4absl12lts_2025051213cord_internal12CordRepBtree5MergeILNS2_8EdgeTypeE1EEEPS2_S5_S5_:bb.a
  store ptr %i.dp, ptr %i.dr, align 8, !tbaa !17
  %i.ds = getelementptr inbounds nuw i8, ptr %.0912.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.ds, %i.cu
  br i1 %.not.i, label %._crit_edge.loopexit.i, label %scalar.ph84, !llvm.loop !116

_ZN4absl12lts_2025051213cord_internal12CordRepBtree3AddILNS2_8EdgeTypeE1EEEvNS0_4SpanIKPNS1_7CordRepEEE.exit: ; preds = %_ZN4absl12lts_2025051213cord_internal12CordRepBtree10AlignBeginEv.exit.i, %._crit_edge.loopexit.i
  %.0.lcssa.i50 = phi i8 [ %i.ct, %_ZN4absl12lts_2025051213cord_internal12CordRepBtree10AlignBeginEv.exit.i ], [ %i.do, %._crit_edge.loopexit.i ]
end_hunk_5
begin_hunk_6_@_ZN4absl12lts_2025051213cord_internal12CordRepBtree5MergeILNS2_8EdgeTypeE0EEEPS2_S5_S5_:bb.a
  %i.b = load i64, ptr %1, align 8, !tbaa !8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 13
  %i.d = load i8, ptr %i.c, align 1, !tbaa !7     ; 2 uses
  %i.e = zext i8 %i.d to i32                      ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 13
  %i.g = load i8, ptr %i.f, align 1, !tbaa !7     ; 2 uses
  %i.h = zext i8 %i.g to i32                      ; 3 uses
  %i.i = sub nsw i32 %i.e, %i.h                   ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  %i.j = icmp sgt i32 %i.i, 0
end_hunk_6
begin_hunk_7_@_ZN4absl12lts_2025051213cord_internal12CordRepBtree5MergeILNS2_8EdgeTypeE0EEEPS2_S5_S5_:bb.a
  br label %.critedge.i

.critedge.i:                                      ; preds = %.critedge.loopexit.i, %bb.a
  %.014.lcssa.i = phi ptr [ %0, %bb.a ], [ %.01416.i, %.critedge.loopexit.i ] ; 4 uses
  %.0.lcssa.i = phi i32 [ 0, %bb.a ], [ %i.aa, %.critedge.loopexit.i ] ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.014.lcssa.i, i64 8
  %i.ac = load atomic i32, ptr %i.ab acquire, align 4
  %i.ad = icmp eq i32 %i.ac, 2
  %i.ae = zext i1 %i.ad to i32
  %i.af = add nuw nsw i32 %.0.lcssa.i, %i.ae      ; 4 uses
  store i32 %i.af, ptr %2, align 8, !tbaa !21
  %i.ag = icmp slt i32 %.0.lcssa.i, %i.i
  br i1 %i.ag, label %.lr.ph24.i, label %_ZN4absl12lts_2025051213cord_internal12_GLOBAL__N_115StackOperationsILNS1_12CordRepBtree8EdgeTypeE0EE10BuildStackEPS4_i.exit

.lr.ph24.i:                                       ; preds = %.critedge.i
  %3 = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  %4 = zext i32 %.0.lcssa.i to i64                ; 2 uses
  %5 = add i32 %.0.lcssa.i, %i.h
  %6 = sub i32 %i.e, %5
  %xtraiter = and i32 %6, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph24.i, %.prol.preheader
  %indvars.iv27.i.prol = phi i64 [ %indvars.iv.next28.i.prol, %.prol.preheader ], [ %4, %.lr.ph24.i ] ; 2 uses
  %.11522.i.prol = phi ptr [ %11, %.prol.preheader ], [ %.014.lcssa.i, %.lr.ph24.i ] ; 3 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph24.i ]
  %indvars.iv.next28.i.prol = add nuw nsw i64 %indvars.iv27.i.prol, 1 ; 2 uses
  %7 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv27.i.prol
  store ptr %.11522.i.prol, ptr %7, align 8, !tbaa !14
  %i.ah = getelementptr inbounds nuw i8, ptr %.11522.i.prol, i64 14
  %8 = load i8, ptr %i.ah, align 1
  %i.ai = zext i8 %8 to i64
  %9 = getelementptr inbounds nuw i8, ptr %.11522.i.prol, i64 16
  %10 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %i.ai
  %11 = load ptr, ptr %10, align 8, !tbaa !17     ; 3 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !117

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph24.i
  %indvars.iv27.i.unr = phi i64 [ %4, %.lr.ph24.i ], [ %indvars.iv.next28.i.prol, %.prol.preheader ]
  %.11522.i.unr = phi ptr [ %.014.lcssa.i, %.lr.ph24.i ], [ %11, %.prol.preheader ]
  %.lcssa.unr = phi ptr [ poison, %.lr.ph24.i ], [ %11, %.prol.preheader ]
  %12 = sub i32 %.0.lcssa.i, %i.e
  %13 = add i32 %12, %i.h
  %14 = icmp ugt i32 %13, -4
  br i1 %14, label %_ZN4absl12lts_2025051213cord_internal12_GLOBAL__N_115StackOperationsILNS1_12CordRepBtree8EdgeTypeE0EE10BuildStackEPS4_i.exit, label %.lr.ph24.i.new

.lr.ph24.i.new:                                   ; preds = %.prol.loopexit, %.lr.ph24.i.new
  %indvars.iv27.i = phi i64 [ %indvars.iv.next28.i.3, %.lr.ph24.i.new ], [ %indvars.iv27.i.unr, %.prol.loopexit ] ; 5 uses
  %.11522.i = phi ptr [ %i.ap, %.lr.ph24.i.new ], [ %.11522.i.unr, %.prol.loopexit ] ; 3 uses
  %15 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv27.i
  store ptr %.11522.i, ptr %15, align 8, !tbaa !14
  %16 = getelementptr inbounds nuw i8, ptr %.11522.i, i64 14
  %17 = load i8, ptr %16, align 1
  %18 = zext i8 %17 to i64
  %19 = getelementptr inbounds nuw i8, ptr %.11522.i, i64 16
  %20 = getelementptr inbounds nuw [8 x i8], ptr %19, i64 %18
  %21 = load ptr, ptr %20, align 8, !tbaa !17     ; 3 uses
  %22 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv27.i
  %23 = getelementptr inbounds nuw i8, ptr %22, i64 8
  store ptr %21, ptr %23, align 8, !tbaa !14
  %24 = getelementptr inbounds nuw i8, ptr %21, i64 14
  %25 = load i8, ptr %24, align 1
  %26 = zext i8 %25 to i64
  %27 = getelementptr inbounds nuw i8, ptr %21, i64 16
  %28 = getelementptr inbounds nuw [8 x i8], ptr %27, i64 %26
  %29 = load ptr, ptr %28, align 8, !tbaa !17     ; 3 uses
  %30 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv27.i
  %31 = getelementptr inbounds nuw i8, ptr %30, i64 16
  store ptr %29, ptr %31, align 8, !tbaa !14
  %32 = getelementptr inbounds nuw i8, ptr %29, i64 14
  %33 = load i8, ptr %32, align 1
  %34 = zext i8 %33 to i64
  %35 = getelementptr inbounds nuw i8, ptr %29, i64 16
  %36 = getelementptr inbounds nuw [8 x i8], ptr %35, i64 %34
  %37 = load ptr, ptr %36, align 8, !tbaa !17     ; 3 uses
  %indvars.iv.next28.i.3 = add nuw nsw i64 %indvars.iv27.i, 4 ; 2 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv27.i
  %38 = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  store ptr %37, ptr %38, align 8, !tbaa !14
  %i.ak = getelementptr inbounds nuw i8, ptr %37, i64 14
  %i.al = load i8, ptr %i.ak, align 1
  %i.am = zext i8 %i.al to i64
  %i.an = getelementptr inbounds nuw i8, ptr %37, i64 16
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.am
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !17 ; 2 uses
  %39 = trunc nuw i64 %indvars.iv.next28.i.3 to i32
  %40 = icmp sgt i32 %i.i, %39
  br i1 %40, label %.lr.ph24.i.new, label %_ZN4absl12lts_2025051213cord_internal12_GLOBAL__N_115StackOperationsILNS1_12CordRepBtree8EdgeTypeE0EE10BuildStackEPS4_i.exit, !llvm.loop !25

_ZN4absl12lts_2025051213cord_internal12_GLOBAL__N_115StackOperationsILNS1_12CordRepBtree8EdgeTypeE0EE10BuildStackEPS4_i.exit: ; preds = %.prol.loopexit, %.lr.ph24.i.new, %.critedge.thread.i, %.critedge.i
  %.val = phi i32 [ %i.af, %.critedge.i ], [ %i.z, %.critedge.thread.i ], [ %i.af, %.lr.ph24.i.new ], [ %i.af, %.prol.loopexit ]
  %.115.lcssa.i = phi ptr [ %.014.lcssa.i, %.critedge.i ], [ %i.u, %.critedge.thread.i ], [ %.lcssa.unr, %.prol.loopexit ], [ %i.ap, %.lr.ph24.i.new ] ; 6 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.115.lcssa.i, i64 15 ; 2 uses
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !7
  %i.as = zext i8 %i.ar to i64
end_hunk_7
begin_hunk_8_@_ZN4absl12lts_2025051213cord_internal12CordRepBtree5MergeILNS2_8EdgeTypeE0EEEPS2_S5_S5_:bb.a
  store <2 x ptr> %wide.load80, ptr %i.dl, align 8, !tbaa !17
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dm = icmp eq i64 %index.next, %n.vec
  br i1 %i.dm, label %middle.block, label %vector.body, !llvm.loop !118

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cz, %n.vec
end_hunk_8
begin_hunk_9_@_ZN4absl12lts_2025051213cord_internal12CordRepBtree5MergeILNS2_8EdgeTypeE0EEEPS2_S5_S5_:bb.a
  store ptr %i.dn, ptr %i.dp, align 8, !tbaa !17
  %i.dq = getelementptr inbounds nuw i8, ptr %.0913.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.dq, %i.cs
  br i1 %.not.i, label %_ZN4absl12lts_2025051213cord_internal12CordRepBtree3AddILNS2_8EdgeTypeE0EEEvNS0_4SpanIKPNS1_7CordRepEEE.exit, label %scalar.ph, !llvm.loop !119

_ZN4absl12lts_2025051213cord_internal12CordRepBtree3AddILNS2_8EdgeTypeE0EEEvNS0_4SpanIKPNS1_7CordRepEEE.exit: ; preds = %scalar.ph, %middle.block, %_ZN4absl12lts_2025051213cord_internal12CordRepBtree8AlignEndEv.exit.i
  %i.dr = load i64, ptr %1, align 8, !tbaa !8
end_hunk_9
begin_hunk_10_@_ZNK4absl12lts_2025051213cord_internal12CordRepBtree6IsFlatEPSt17basic_string_viewIcSt11char_traitsIcEE:bb.a
  %.sroa.3.0.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 %.010.i.i
  store i64 %i.o, ptr %1, align 8, !tbaa !96
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %.sroa.3.0.i.i, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !120
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %bb.b, %bb.c, %_ZNK4absl12lts_2025051213cord_internal12CordRepBtree4DataEm.exit
end_hunk_10
begin_hunk_11_@_ZNK4absl12lts_2025051213cord_internal12CordRepBtree6IsFlatEmmPSt17basic_string_viewIcSt11char_traitsIcEE:bb.a
bb.d:                                             ; preds = %_ZNK4absl12lts_2025051213cord_internal12CordRepBtree7IndexOfEm.exit
  %i.v = add nsw i32 %.021, -1
  %i.w = icmp slt i32 %.021, 1
  br i1 %i.w, label %bb.e, label %bb.c, !llvm.loop !121

bb.e:                                             ; preds = %bb.d
  %.not = icmp eq ptr %3, null
end_hunk_11
begin_hunk_12_@_ZNK4absl12lts_2025051213cord_internal12CordRepBtree6IsFlatEmmPSt17basic_string_viewIcSt11char_traitsIcEE:bb.a
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.3.0.i, i64 %.06.lcssa.i
  store i64 %.sroa.speculated.i, ptr %3, align 8, !tbaa !96
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.al, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !120
  br label %.thread

.thread:                                          ; preds = %_ZNK4absl12lts_2025051213cord_internal12CordRepBtree7IndexOfEm.exit, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit, %bb.e, %bb.a
end_hunk_12
begin_hunk_13_@_ZNK4absl12lts_2025051213cord_internal12CordRepBtree12GetCharacterEm:bb.a
  %.06.lcssa.i = phi i64 [ %.011, %bb.b ], [ %i.m, %.lr.ph.i ] ; 2 uses
  %i.r = icmp sgt i32 %.013, 0
  %i.s = add nsw i32 %.013, -1
  br i1 %i.r, label %bb.b, label %bb.c, !llvm.loop !122

bb.c:                                             ; preds = %_ZNK4absl12lts_2025051213cord_internal12CordRepBtree7IndexOfEm.exit
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 12
end_hunk_13
begin_hunk_14_@_ZN4absl12lts_2025051213cord_internal12CordRepBtree19GetAppendBufferSlowEm:bb.a
  store ptr %i.i, ptr %i.m, align 8, !tbaa !14
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !123

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %.024.lcssa = phi ptr [ %0, %bb.a ], [ %i.i, %bb.b ] ; 2 uses
end_hunk_14
begin_hunk_15_@_ZN4absl12lts_2025051213cord_internal12CordRepBtree19GetAppendBufferSlowEm:bb.a
  %indvars.iv.next44.3 = add nuw nsw i64 %indvars.iv43, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.thread.loopexit.unr-lcssa, label %.lr.ph38, !llvm.loop !124

.thread.loopexit.unr-lcssa:                       ; preds = %.lr.ph38
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
end_hunk_15
begin_hunk_16_@_ZN4absl12lts_2025051213cord_internal12CordRepBtree19GetAppendBufferSlowEm:bb.a
  %indvars.iv.next44.epil = add nuw nsw i64 %indvars.iv43.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.thread, label %.lr.ph38.epil, !llvm.loop !125

.thread:                                          ; preds = %.lr.ph, %.thread.loopexit.unr-lcssa, %.lr.ph38.epil, %bb.e, %bb.d, %._crit_edge, %bb.c
  %.sroa.5.2 = phi i64 [ 0, %bb.d ], [ 0, %._crit_edge ], [ 0, %bb.c ], [ %.sroa.speculated, %bb.e ], [ %.sroa.speculated, %.thread.loopexit.unr-lcssa ], [ %.sroa.speculated, %.lr.ph38.epil ], [ 0, %.lr.ph ]
end_hunk_16
begin_hunk_17_@_ZN4absl12lts_2025051213cord_internal12CordRepBtree10CreateSlowEPNS1_7CordRepE:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store ptr null, ptr %i.a, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17
  store ptr %i.a, ptr %1, align 8, !tbaa !126
  call void @_ZN4absl12lts_2025051213cord_internal7ConsumeEPNS1_7CordRepENS0_11FunctionRefIFvS3_mmEEE(ptr noundef nonnull %0, ptr nonnull %1, ptr nonnull @"_ZN4absl12lts_2025051219functional_internal12InvokeObjectIZNS0_13cord_internal12CordRepBtree10CreateSlowEPNS3_7CordRepEE3$_0vJS6_mmEEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE")
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
end_hunk_17
begin_hunk_18_@_ZN4absl12lts_2025051213cord_internal12CordRepBtree10AppendSlowEPS2_PNS1_7CordRepE:bb.a

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  store ptr %i.a, ptr %2, align 8, !tbaa !126
  call void @_ZN4absl12lts_2025051213cord_internal7ConsumeEPNS1_7CordRepENS0_11FunctionRefIFvS3_mmEEE(ptr noundef nonnull %1, ptr nonnull %2, ptr nonnull @"_ZN4absl12lts_2025051219functional_internal12InvokeObjectIZNS0_13cord_internal12CordRepBtree10AppendSlowEPS4_PNS3_7CordRepEE3$_0vJS7_mmEEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE")
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
end_hunk_18
begin_hunk_19_@_ZN4absl12lts_2025051213cord_internal12CordRepBtree11PrependSlowEPS2_PNS1_7CordRepE:bb.a

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  store ptr %i.a, ptr %2, align 8, !tbaa !126
  call void @_ZN4absl12lts_2025051213cord_internal14ReverseConsumeEPNS1_7CordRepENS0_11FunctionRefIFvS3_mmEEE(ptr noundef nonnull %1, ptr nonnull %2, ptr nonnull @"_ZN4absl12lts_2025051219functional_internal12InvokeObjectIZNS0_13cord_internal12CordRepBtree11PrependSlowEPS4_PNS3_7CordRepEE3$_0vJS7_mmEEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE")
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
end_hunk_19
begin_hunk_20_@_ZN4absl12lts_2025051213cord_internal12CordRepBtree7RebuildEPPS2_S3_b:bb.a
  store <2 x ptr> %wide.load153, ptr %i.ao, align 8, !tbaa !17
  %index.next154 = add nuw i64 %index152, 2       ; 2 uses
  %i.aq = icmp eq i64 %index.next154, %n.vec150
  br i1 %i.aq, label %middle.block155, label %vector.body151, !llvm.loop !129

middle.block155:                                  ; preds = %vector.body151
  %cmp.n156 = icmp eq i64 %i.ac, %n.vec150
end_hunk_20
begin_hunk_21_@_ZN4absl12lts_2025051213cord_internal12CordRepBtree7RebuildEPPS2_S3_b:bb.a
  store ptr %i.at, ptr %i.ar, align 8, !tbaa !17
  %i.au = add nuw nsw i64 %.011.i.i7.i, 1         ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.au, %i.ac
  br i1 %exitcond.not.i.i.i, label %_ZN4absl12lts_2025051213cord_internal12CordRepBtree3AddILNS2_8EdgeTypeE1EEEvPNS1_7CordRepE.exit.i.loopexit, label %scalar.ph146, !llvm.loop !130

_ZN4absl12lts_2025051213cord_internal12CordRepBtree3AddILNS2_8EdgeTypeE1EEEvPNS1_7CordRepE.exit.i.loopexit: ; preds = %scalar.ph146, %middle.block155
  %.pre = load i8, ptr %i.w, align 1, !tbaa !7
end_hunk_21
begin_hunk_22_@_ZN4absl12lts_2025051213cord_internal12CordRepBtree7RebuildEPPS2_S3_b:bb.a
  store <2 x ptr> %wide.load, ptr %i.cz, align 8, !tbaa !17
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.db = icmp eq i64 %index.next, %n.vec
  br i1 %i.db, label %middle.block, label %vector.body, !llvm.loop !131

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cl, %n.vec
end_hunk_22
begin_hunk_23_@_ZN4absl12lts_2025051213cord_internal12CordRepBtree7RebuildEPPS2_S3_b:bb.a
  store ptr %i.de, ptr %i.dc, align 8, !tbaa !17
  %i.df = add nuw nsw i64 %.011.i.i7.i61, 1       ; 2 uses
  %exitcond.not.i.i.i62 = icmp eq i64 %i.df, %i.cl
  br i1 %exitcond.not.i.i.i62, label %_ZN4absl12lts_2025051213cord_internal12CordRepBtree3AddILNS2_8EdgeTypeE1EEEvPNS1_7CordRepE.exit.i63.loopexit, label %scalar.ph, !llvm.loop !132

_ZN4absl12lts_2025051213cord_internal12CordRepBtree3AddILNS2_8EdgeTypeE1EEEvPNS1_7CordRepE.exit.i63.loopexit: ; preds = %scalar.ph, %middle.block
  %.pre90 = load i8, ptr %i.cv, align 1, !tbaa !7
end_hunk_23
begin_hunk_24_@_ZN4absl12lts_2025051213cord_internal12CordRepBtree7RebuildEPPS2_S3_b:bb.a
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.dv
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !14 ; 2 uses
  %i.dy = icmp eq ptr %i.dx, null
  br i1 %i.dy, label %.lr.ph82._crit_edge, label %.lr.ph142, !llvm.loop !133

.lr.ph84:                                         ; preds = %.preheader, %.lr.ph84
  %i.dz = phi ptr [ %i.ef, %.lr.ph84 ], [ %i.bn, %.preheader ] ; 2 uses
end_hunk_24
begin_hunk_25_@_ZN4absl12lts_2025051213cord_internal12CordRepBtree7RebuildEPPS2_S3_b:bb.a
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ed
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !14 ; 2 uses
  %.not57 = icmp eq ptr %i.ef, null
  br i1 %.not57, label %._crit_edge, label %.lr.ph84, !llvm.loop !134

._crit_edge:                                      ; preds = %.lr.ph84, %.preheader
  %i.eg = getelementptr inbounds nuw i8, ptr %.086, i64 8 ; 2 uses
end_hunk_25
begin_hunk_26_@_ZN4absl12lts_2025051213cord_internal12CordRepBtree19ExtractAppendBufferEPS2_m:bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 13
  %i.n = load i8, ptr %i.m, align 1, !tbaa !7
  %.not46 = icmp eq i8 %i.n, 0
  br i1 %.not46, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !135

._crit_edge.loopexit:                             ; preds = %bb.b
  %i.o = trunc nuw i64 %indvars.iv.next to i32
end_hunk_26
begin_hunk_27_@_ZN4absl12lts_2025051213cord_internal12CordRepBtree19ExtractAppendBufferEPS2_m:bb.a
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bb, i64 noundef 64) #21
  %i.ax = trunc nuw i64 %i.az to i32
  %i.ay = icmp slt i32 %i.ax, 1
  br i1 %i.ay, label %.thread, label %bb.f, !llvm.loop !136

bb.f:                                             ; preds = %.lr.ph103, %_ZN4absl12lts_2025051213cord_internal12CordRepBtree6DeleteEPS2_.exit
  %indvars.iv82102 = phi i64 [ %i.aw, %.lr.ph103 ], [ %i.az, %_ZN4absl12lts_2025051213cord_internal12CordRepBtree6DeleteEPS2_.exit ]
end_hunk_27
begin_hunk_28_@_ZN4absl12lts_2025051213cord_internal12CordRepBtree19ExtractAppendBufferEPS2_m:bb.a
  %i.bh = zext i8 %i.bg to i64
  %i.bi = sub nsw i64 %i.be, %i.bh
  %i.bj = icmp eq i64 %i.bi, 1
  br i1 %i.bj, label %_ZN4absl12lts_2025051213cord_internal12CordRepBtree6DeleteEPS2_.exit, label %._crit_edge64.loopexit, !llvm.loop !136

._crit_edge64.loopexit:                           ; preds = %bb.f
  %i.bk = trunc i64 %i.az to i32
end_hunk_28
begin_hunk_29_@_ZN4absl12lts_2025051213cord_internal12CordRepBtree19ExtractAppendBufferEPS2_m:bb.a
  store i64 %i.bu, ptr %i.bs, align 8, !tbaa !8
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph71.prol.loopexit, label %.lr.ph71.prol, !llvm.loop !137

.lr.ph71.prol.loopexit:                           ; preds = %.lr.ph71.prol, %.lr.ph71.preheader
  %indvars.iv85.unr = phi i64 [ %i.bq, %.lr.ph71.preheader ], [ %indvars.iv.next86.prol, %.lr.ph71.prol ]
end_hunk_29
begin_hunk_30_@_ZN4absl12lts_2025051213cord_internal12CordRepBtree19ExtractAppendBufferEPS2_m:bb.a
  %i.co = sub i64 %i.cn, %i.ad
  store i64 %i.co, ptr %i.cm, align 8, !tbaa !8
  %i.cp = icmp sgt i64 %indvars.iv85, 4
  br i1 %i.cp, label %.lr.ph71, label %.preheader.preheader, !llvm.loop !138

.preheader.preheader:                             ; preds = %.lr.ph71.prol.loopexit, %.lr.ph71, %._crit_edge64
  %.3.ph = phi ptr [ %.1.lcssa61, %._crit_edge64 ], [ %.lcssa104.unr, %.lr.ph71.prol.loopexit ], [ %i.cm, %.lr.ph71 ]
end_hunk_30
begin_hunk_31_@_ZN4absl12lts_2025051213cord_internal12CordRepBtree19ExtractAppendBufferEPS2_m:bb.a
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !17 ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.3, i64 noundef 64) #21
  %.not = icmp eq i8 %i.cz, 0
  br i1 %.not, label %.thread, label %.preheader, !llvm.loop !139

.thread:                                          ; preds = %.lr.ph, %_ZN4absl12lts_2025051213cord_internal12CordRepBtree6DeleteEPS2_.exit, %_ZN4absl12lts_2025051213cord_internal12CordRepBtree6DeleteEPS2_.exit43, %.preheader, %_ZN4absl12lts_2025051213cord_internal12CordRepBtree6DeleteEPS2_.exit.preheader, %bb.d, %bb.c, %bb.e, %._crit_edge
  %.sroa.0.4 = phi ptr [ null, %_ZN4absl12lts_2025051213cord_internal12CordRepBtree6DeleteEPS2_.exit ], [ %0, %._crit_edge ], [ %0, %bb.c ], [ %0, %bb.d ], [ null, %_ZN4absl12lts_2025051213cord_internal12CordRepBtree6DeleteEPS2_.exit.preheader ], [ %0, %bb.e ], [ %.3, %.preheader ], [ %i.dc, %_ZN4absl12lts_2025051213cord_internal12CordRepBtree6DeleteEPS2_.exit43 ], [ %0, %.lr.ph ]
end_hunk_31
begin_hunk_32_@"_ZN4absl12lts_2025051219functional_internal12InvokeObjectIZNS0_13cord_internal12CordRepBtree10CreateSlowEPNS3_7CordRepEE3$_0vJS6_mmEEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE":bb.a

_ZN4absl12lts_2025051213cord_internal12_GLOBAL__N_113MakeSubstringEPNS1_7CordRepEmm.exit.i.i.i.i: ; preds = %_ZN4absl12lts_2025051213cord_internal12_GLOBAL__N_115CreateSubstringEPNS1_7CordRepEmm.exit.i.i.i.i.i, %bb.d, %bb.c, %bb.a
  %.0.i.i.i.i.i = phi ptr [ %i.r, %_ZN4absl12lts_2025051213cord_internal12_GLOBAL__N_115CreateSubstringEPNS1_7CordRepEmm.exit.i.i.i.i.i ], [ %1, %bb.a ], [ null, %bb.c ], [ null, %bb.d ] ; 5 uses
  %i.w = load ptr, ptr %0, align 8, !tbaa !140, !nonnull !28, !align !142 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !14   ; 2 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %bb.h, label %bb.j
end_hunk_32
begin_hunk_33_@"_ZN4absl12lts_2025051219functional_internal12InvokeObjectIZNS0_13cord_internal12CordRepBtree10CreateSlowEPNS3_7CordRepEE3$_0vJS6_mmEEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE":bb.a

bb.j:                                             ; preds = %_ZN4absl12lts_2025051213cord_internal12_GLOBAL__N_113MakeSubstringEPNS1_7CordRepEmm.exit.i.i.i.i
  %i.ao = tail call noundef ptr @_ZN4absl12lts_2025051213cord_internal12CordRepBtree10AddCordRepILNS2_8EdgeTypeE1EEEPS2_S5_PNS1_7CordRepE(ptr noundef nonnull %i.x, ptr noundef %.0.i.i.i.i.i)
  %i.ap = load ptr, ptr %0, align 8, !tbaa !140, !nonnull !28, !align !142
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !14
  br label %"_ZSt6invokeIRKZN4absl12lts_2025051213cord_internal12CordRepBtree10CreateSlowEPNS2_7CordRepEE3$_0JS5_mmEENSt13invoke_resultIT_JDpT0_EE4typeEOSA_DpOSB_.exit"

end_hunk_33
begin_hunk_34_@"_ZN4absl12lts_2025051219functional_internal12InvokeObjectIZNS0_13cord_internal12CordRepBtree10AppendSlowEPS4_PNS3_7CordRepEE3$_0vJS7_mmEEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE":bb.a

"_ZSt6invokeIRKZN4absl12lts_2025051213cord_internal12CordRepBtree10AppendSlowEPS3_PNS2_7CordRepEE3$_0JS6_mmEENSt13invoke_resultIT_JDpT0_EE4typeEOSB_DpOSC_.exit": ; preds = %bb.a, %bb.c, %bb.d, %_ZN4absl12lts_2025051213cord_internal12_GLOBAL__N_115CreateSubstringEPNS1_7CordRepEmm.exit.i.i.i.i.i
  %.0.i.i.i.i.i = phi ptr [ %i.r, %_ZN4absl12lts_2025051213cord_internal12_GLOBAL__N_115CreateSubstringEPNS1_7CordRepEmm.exit.i.i.i.i.i ], [ %1, %bb.a ], [ null, %bb.c ], [ null, %bb.d ]
  %i.w = load ptr, ptr %0, align 8, !tbaa !143, !nonnull !28, !align !142
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !14
  %i.y = tail call noundef ptr @_ZN4absl12lts_2025051213cord_internal12CordRepBtree10AddCordRepILNS2_8EdgeTypeE1EEEPS2_S5_PNS1_7CordRepE(ptr noundef %i.x, ptr noundef %.0.i.i.i.i.i)
  %i.z = load ptr, ptr %0, align 8, !tbaa !143, !nonnull !28, !align !142
  store ptr %i.y, ptr %i.z, align 8, !tbaa !14
  ret void
}
end_hunk_34
begin_hunk_35_@"_ZN4absl12lts_2025051219functional_internal12InvokeObjectIZNS0_13cord_internal12CordRepBtree11PrependSlowEPS4_PNS3_7CordRepEE3$_0vJS7_mmEEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE":bb.a

"_ZSt6invokeIRKZN4absl12lts_2025051213cord_internal12CordRepBtree11PrependSlowEPS3_PNS2_7CordRepEE3$_0JS6_mmEENSt13invoke_resultIT_JDpT0_EE4typeEOSB_DpOSC_.exit": ; preds = %bb.a, %bb.c, %bb.d, %_ZN4absl12lts_2025051213cord_internal12_GLOBAL__N_115CreateSubstringEPNS1_7CordRepEmm.exit.i.i.i.i.i
  %.0.i.i.i.i.i = phi ptr [ %i.r, %_ZN4absl12lts_2025051213cord_internal12_GLOBAL__N_115CreateSubstringEPNS1_7CordRepEmm.exit.i.i.i.i.i ], [ %1, %bb.a ], [ null, %bb.c ], [ null, %bb.d ]
  %i.w = load ptr, ptr %0, align 8, !tbaa !145, !nonnull !28, !align !142
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !14
  %i.y = tail call noundef ptr @_ZN4absl12lts_2025051213cord_internal12CordRepBtree10AddCordRepILNS2_8EdgeTypeE0EEEPS2_S5_PNS1_7CordRepE(ptr noundef %i.x, ptr noundef %.0.i.i.i.i.i)
  %i.z = load ptr, ptr %0, align 8, !tbaa !145, !nonnull !28, !align !142
  store ptr %i.y, ptr %i.z, align 8, !tbaa !14
  ret void
}
end_hunk_35
begin_hunk_36_@llvm.smax.i32
!109 = distinct !{!109, !20}
!110 = distinct !{!110, !20}
!111 = distinct !{!111, !20}
!112 = distinct !{!112, !24}
!113 = distinct !{!113, !20, !24, !40, !41}
!114 = distinct !{!114, !20, !24, !40}
!115 = distinct !{!115, !40, !41}
!116 = distinct !{!116, !40}
!117 = distinct !{!117, !24}
!118 = distinct !{!118, !40, !41}
!119 = distinct !{!119, !40}
!120 = !{!77, !77, i64 0}
!121 = distinct !{!121, !20}
!122 = distinct !{!122, !20}
!123 = distinct !{!123, !20}
!124 = distinct !{!124, !20}
!125 = distinct !{!125, !24}
!126 = !{!127, !127, i64 0}
!127 = !{!"p2 _ZTSN4absl12lts_2025051213cord_internal12CordRepBtreeE", !128, i64 0}
!128 = !{!"any p2 pointer", !16, i64 0}
!129 = distinct !{!129, !20, !24, !40, !41}
!130 = distinct !{!130, !20, !24, !40}
!131 = distinct !{!131, !20, !24, !40, !41}
!132 = distinct !{!132, !20, !24, !40}
!133 = distinct !{!133, !20}
!134 = distinct !{!134, !20}
!135 = distinct !{!135, !20}
!136 = distinct !{!136, !20}
!137 = distinct !{!137, !24}
!138 = distinct !{!138, !20}
!139 = distinct !{!139, !20}
!140 = !{!141, !127, i64 0}
!141 = !{!"_ZTSZN4absl12lts_2025051213cord_internal12CordRepBtree10CreateSlowEPNS1_7CordRepEE3$_0", !127, i64 0}
!142 = !{i64 8}
!143 = !{!144, !127, i64 0}
!144 = !{!"_ZTSZN4absl12lts_2025051213cord_internal12CordRepBtree10AppendSlowEPS2_PNS1_7CordRepEE3$_0", !127, i64 0}
!145 = !{!146, !127, i64 0}
!146 = !{!"_ZTSZN4absl12lts_2025051213cord_internal12CordRepBtree11PrependSlowEPS2_PNS1_7CordRepEE3$_0", !127, i64 0}
end_hunk_36
