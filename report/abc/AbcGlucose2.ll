Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/AbcGlucose2?download=true
inline.NumInlined: 637
inline.NumDeleted: 155
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_Z18Glucose_ReadDimacsPcRN6Gluco210SimpSolverE:bb.a
  br i1 %.not.i52, label %_ZN6Gluco23vecINS_3LitEE5clearEb.exit54, label %.preheader.i53

.preheader.i53:                                   ; preds = %_ZN6Gluco210SimpSolver6addVarEi.exit
  store i32 0, ptr %i.e, align 8, !tbaa !24
  br label %_ZN6Gluco23vecINS_3LitEE5clearEb.exit54

bb.g:                                             ; preds = %.loopexit
  %i.aa = add nsw i32 %i.r, -1                    ; 2 uses
  %i.ab = tail call noundef range(i32 0, -1) i32 @llvm.smax.i32(i32 range(i32 0, -1) %.0, i32 range(i32 0, -1) %i.aa)
  %i.ac = shl nsw i32 %i.aa, 1
  %i.ad = or disjoint i32 %i.ac, %.039
  %i.ae = load i32, ptr %i.e, align 8, !tbaa !24  ; 5 uses
  %i.af = load i32, ptr %i.f, align 4, !tbaa !26
  %i.ag = icmp eq i32 %i.ae, %i.af
  br i1 %i.ag, label %bb.h, label %._ZN6Gluco23vecINS_3LitEE8capacityEi.exit_crit_edge.i

._ZN6Gluco23vecINS_3LitEE8capacityEi.exit_crit_edge.i: ; preds = %bb.g
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !23
  br label %_ZN6Gluco23vecINS_3LitEE4pushERKS1_.exit

bb.h:                                             ; preds = %bb.g
  %i.ah = ashr i32 %i.ae, 1
  %i.ai = and i32 %i.ah, -2
  %i.aj = tail call i32 @llvm.smax.i32(i32 %i.ai, i32 0)
  %i.ak = add nuw nsw i32 %i.aj, 2                ; 2 uses
  %i.al = sub nsw i32 2147483647, %i.ae
  %i.am = icmp samesign ugt i32 %i.ak, %i.al
  br i1 %i.am, label %.loopexit56, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.an = load ptr, ptr %i.a, align 8, !tbaa !23
  %i.ao = add nsw i32 %i.ak, %i.ae                ; 2 uses
  store i32 %i.ao, ptr %i.f, align 4, !tbaa !26
  %i.ap = sext i32 %i.ao to i64
  %i.aq = shl nsw i64 %i.ap, 2
  %i.ar = tail call ptr @realloc(ptr noundef %i.an, i64 noundef %i.aq) #30 ; 3 uses
  store ptr %i.ar, ptr %i.a, align 8, !tbaa !23
  %i.as = icmp eq ptr %i.ar, null
  br i1 %i.as, label %.loopexit56, label %._ZN6Gluco23vecINS_3LitEE4pushERKS1_.exit_crit_edge

._ZN6Gluco23vecINS_3LitEE4pushERKS1_.exit_crit_edge: ; preds = %bb.i
  %.pre60 = load i32, ptr %i.e, align 8, !tbaa !24
  br label %_ZN6Gluco23vecINS_3LitEE4pushERKS1_.exit

.loopexit56:                                      ; preds = %bb.h, %bb.i
  tail call fastcc void @_ZN6Gluco2L19fatal_out_of_memoryEv()
  unreachable

_ZN6Gluco23vecINS_3LitEE4pushERKS1_.exit:         ; preds = %._ZN6Gluco23vecINS_3LitEE4pushERKS1_.exit_crit_edge, %._ZN6Gluco23vecINS_3LitEE8capacityEi.exit_crit_edge.i
  %i.at = phi i32 [ %i.ae, %._ZN6Gluco23vecINS_3LitEE8capacityEi.exit_crit_edge.i ], [ %.pre60, %._ZN6Gluco23vecINS_3LitEE4pushERKS1_.exit_crit_edge ] ; 2 uses
  %i.au = phi ptr [ %.pre.i, %._ZN6Gluco23vecINS_3LitEE8capacityEi.exit_crit_edge.i ], [ %i.ar, %._ZN6Gluco23vecINS_3LitEE4pushERKS1_.exit_crit_edge ]
  %i.av = add nsw i32 %i.at, 1
  store i32 %i.av, ptr %i.e, align 8, !tbaa !24
  %i.aw = sext i32 %i.at to i64
  %i.ax = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.aw
  store i32 %i.ad, ptr %i.ax, align 4, !tbaa !16
  br label %_ZN6Gluco23vecINS_3LitEE5clearEb.exit54

_ZN6Gluco23vecINS_3LitEE5clearEb.exit54:          ; preds = %.preheader.i53, %_ZN6Gluco210SimpSolver6addVarEi.exit, %bb.e, %_ZN6Gluco23vecINS_3LitEE4pushERKS1_.exit
  %.1 = phi i32 [ %i.ab, %_ZN6Gluco23vecINS_3LitEE4pushERKS1_.exit ], [ %.0, %bb.e ], [ %.0, %_ZN6Gluco210SimpSolver6addVarEi.exit ], [ %.0, %.preheader.i53 ]
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %_ZN6Gluco23vecINS_3LitEE5clearEb.exit54
  %.5 = phi ptr [ %spec.select, %_ZN6Gluco23vecINS_3LitEE5clearEb.exit54 ], [ %i.ba, %bb.j ] ; 3 uses
  %i.ay = load i8, ptr %.5, align 1, !tbaa !75
  %i.az = add i8 %i.ay, -48
  %or.cond = icmp ult i8 %i.az, 10
  %i.ba = getelementptr inbounds nuw i8, ptr %.5, i64 1
  br i1 %or.cond, label %bb.j, label %.critedge2, !llvm.loop !180

.critedge2:                                       ; preds = %bb.c, %bb.j
  %.6 = phi ptr [ %.5, %bb.j ], [ %.141, %bb.c ]
  %.2 = phi i32 [ %.1, %bb.j ], [ %.0, %bb.c ]
  %i.bb = getelementptr inbounds nuw i8, ptr %.6, i64 1
  br label %bb.b, !llvm.loop !181

bb.k:                                             ; preds = %bb.b
  %.not49 = icmp eq ptr %i.b, null
  br i1 %.not49, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @free(ptr noundef nonnull %i.b) #29
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  ret void
}

declare ptr @Extra_FileReadContents(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #11

; Function Attrs: mustprogress nounwind uwtable
define void @Glucose2_SolveCnf(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.timespec, align 8           ; 5 uses
  %3 = alloca %struct.timespec, align 8           ; 5 uses
  %4 = alloca %struct.timespec, align 8           ; 5 uses
  %5 = alloca %struct.timespec, align 8           ; 5 uses
  %6 = alloca %"class.Gluco2::SimpSolver", align 8 ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  %i.a = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %5) #29
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %_ZL9Abc_Clockv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %5, align 8, !tbaa !99
  %i.d = mul nsw i64 %i.c, 1000000
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !100
  %i.g = sdiv i64 %i.f, 1000
  %i.h = add nsw i64 %i.g, %i.d
  br label %_ZL9Abc_Clockv.exit

_ZL9Abc_Clockv.exit:                              ; preds = %bb.a, %bb.b
  %.0.i = phi i64 [ %i.h, %bb.b ], [ -1, %bb.a ]  ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #29
  call void @_ZN6Gluco210SimpSolverC1Ev(ptr noundef nonnull align 8 dereferenceable(1684) %6) #29
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 3 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !102
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 128
  store i32 %i.j, ptr %i.k, align 8, !tbaa !103
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.m = load i32, ptr %i.l, align 4, !tbaa !104  ; 2 uses
  %i.n = icmp sgt i32 %i.m, 0
  %i.o = zext nneg i32 %i.m to i64
  %spec.select = select i1 %i.n, i64 %i.o, i64 -1
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 360
  %i.q = load i64, ptr %i.p, align 8, !tbaa !89
  %i.r = add nsw i64 %spec.select, %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 1128
  store i64 %i.r, ptr %i.s, align 8, !tbaa !90
  call void @_Z18Glucose_ReadDimacsPcRN6Gluco210SimpSolverE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(1684) %6)
  %i.t = load i32, ptr %i.i, align 4, !tbaa !102
  %.not = icmp eq i32 %i.t, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZL9Abc_Clockv.exit
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str.7) ; 0 uses
  %puts9 = call i32 @puts(ptr nonnull dereferenceable(1) @str.8) ; 0 uses
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 736
  %i.v = load i32, ptr %i.u, align 8, !tbaa !20
  %i.w = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, i32 noundef %i.v) ; 0 uses
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 608
  %i.y = load i32, ptr %i.x, align 8, !tbaa !91
  %i.z = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17, i32 noundef %i.y) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZL9Abc_Clockv.exit
  %i.aa = load i32, ptr %1, align 4, !tbaa !105
  %.not10 = icmp eq i32 %i.aa, 0
  br i1 %.not10, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ab = call noundef zeroext i1 @_ZN6Gluco210SimpSolver9eliminateEb(ptr noundef nonnull align 8 dereferenceable(1684) %6, i1 noundef zeroext true) #29 ; 0 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 1452
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !88
  %i.ae = getelementptr inbounds nuw i8, ptr %6, i64 1456
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !106
  %i.ag = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.18, i32 noundef %i.ad, i32 noundef %i.af) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  %i.ah = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %4) #29
  %i.ai = icmp slt i32 %i.ah, 0
  br i1 %i.ai, label %_ZL9Abc_Clockv.exit13, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aj = load i64, ptr %4, align 8, !tbaa !99
  %i.ak = mul nsw i64 %i.aj, 1000000
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.am = load i64, ptr %i.al, align 8, !tbaa !100
  %i.an = sdiv i64 %i.am, 1000
  %i.ao = add nsw i64 %i.an, %i.ak
  br label %_ZL9Abc_Clockv.exit13

_ZL9Abc_Clockv.exit13:                            ; preds = %bb.e, %bb.f
  %.0.i12 = phi i64 [ %i.ao, %bb.f ], [ -1, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  %i.ap = sub nsw i64 %.0.i12, %.0.i
  call void (i32, ptr, ...) @_ZL9Abc_PrintiPKcz(i32 poison, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.19)
  %i.aq = sitofp i64 %i.ap to double
  %i.ar = fdiv double %i.aq, 1.000000e+06
  call void (i32, ptr, ...) @_ZL9Abc_PrintiPKcz(i32 poison, ptr noundef nonnull @.str.40, double noundef %i.ar)
  br label %bb.g

bb.g:                                             ; preds = %_ZL9Abc_Clockv.exit13, %bb.d
  %i.as = getelementptr inbounds nuw i8, ptr %6, i64 760 ; 7 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !23
  %.not.i.i18 = icmp eq ptr %i.at, null
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %6, i64 768 ; 2 uses
  br i1 %.not.i.i18, label %_ZN6Gluco23vecINS_3LitEE5clearEb.exit.i, label %_ZNK6Gluco23vecINS_3LitEE6copyToERS2_.exit.sink.split

_ZN6Gluco23vecINS_3LitEE5clearEb.exit.i:          ; preds = %bb.g
  %.pre.i = load i32, ptr %.phi.trans.insert.i, align 8, !tbaa !24 ; 3 uses
  %.not.i7.i = icmp slt i32 %.pre.i, 0
  br i1 %.not.i7.i, label %bb.h, label %_ZNK6Gluco23vecINS_3LitEE6copyToERS2_.exit

bb.h:                                             ; preds = %_ZN6Gluco23vecINS_3LitEE5clearEb.exit.i
  %i.au = getelementptr inbounds nuw i8, ptr %6, i64 772 ; 2 uses
  %i.av = load i32, ptr %i.au, align 4, !tbaa !26 ; 4 uses
  %.not.i.i.i = icmp slt i32 %i.av, 0
  br i1 %.not.i.i.i, label %bb.i, label %.lr.ph.preheader.i.i

bb.i:                                             ; preds = %bb.h
  %i.aw = sub i32 1, %i.av
  %i.ax = and i32 %i.aw, -2
  %i.ay = ashr i32 %i.av, 1
  %i.az = and i32 %i.ay, -2
  %i.ba = add nsw i32 %i.az, 2
  %i.bb = call noundef i32 @llvm.smax.i32(i32 %i.ba, i32 %i.ax)
  %7 = add nuw nsw i32 %i.bb, %i.av               ; 2 uses
  store i32 %7, ptr %i.au, align 4, !tbaa !26
  %8 = zext nneg i32 %7 to i64
  %9 = shl nuw nsw i64 %8, 2
  %malloc = call ptr @malloc(i64 %9)              ; 2 uses
  store ptr %malloc, ptr %i.as, align 8, !tbaa !23
  %10 = icmp eq ptr %malloc, null
  br i1 %10, label %bb.j, label %.lr.ph.preheader.i.i

bb.j:                                             ; preds = %bb.i
  %i.bc = tail call ptr @__errno_location() #31
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !16
  %i.be = icmp eq i32 %i.bd, 12
  br i1 %i.be, label %bb.k, label %.lr.ph.preheader.i.i

bb.k:                                             ; preds = %bb.j
  call fastcc void @_ZN6Gluco2L19fatal_out_of_memoryEv()
  unreachable

.lr.ph.preheader.i.i:                             ; preds = %bb.h, %bb.i, %bb.j
  %i.bf = sext i32 %.pre.i to i64                 ; 3 uses
  %i.bg = sub nsw i64 0, %i.bf
  %xtraiter = and i64 %i.bg, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.preheader.i.i, %.lr.ph.i.i.prol
  %indvars.iv.i.i.prol = phi i64 [ %indvars.iv.next.i.i.prol, %.lr.ph.i.i.prol ], [ %i.bf, %.lr.ph.preheader.i.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.preheader.i.i ]
  %i.bh = load ptr, ptr %i.as, align 8, !tbaa !23
  %i.bi = getelementptr inbounds [4 x i8], ptr %i.bh, i64 %indvars.iv.i.i.prol
  store i32 0, ptr %i.bi, align 4
  %indvars.iv.next.i.i.prol = add nsw i64 %indvars.iv.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !182

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.preheader.i.i
  %indvars.iv.i.i.unr = phi i64 [ %i.bf, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i.prol, %.lr.ph.i.i.prol ]
  %i.bj = icmp ugt i32 %.pre.i, -4
  br i1 %i.bj, label %_ZNK6Gluco23vecINS_3LitEE6copyToERS2_.exit.sink.split, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.3, %.lr.ph.i.i ], [ %indvars.iv.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 5 uses
  %i.bk = load ptr, ptr %i.as, align 8, !tbaa !23
  %i.bl = getelementptr inbounds [4 x i8], ptr %i.bk, i64 %indvars.iv.i.i
  store i32 0, ptr %i.bl, align 4
  %i.bm = load ptr, ptr %i.as, align 8, !tbaa !23
  %i.bn = getelementptr [4 x i8], ptr %i.bm, i64 %indvars.iv.i.i
  %i.bo = getelementptr i8, ptr %i.bn, i64 4
  store i32 0, ptr %i.bo, align 4
  %i.bp = load ptr, ptr %i.as, align 8, !tbaa !23
  %i.bq = getelementptr [4 x i8], ptr %i.bp, i64 %indvars.iv.i.i
  %i.br = getelementptr i8, ptr %i.bq, i64 8
  store i32 0, ptr %i.br, align 4
  %i.bs = load ptr, ptr %i.as, align 8, !tbaa !23
  %i.bt = getelementptr [4 x i8], ptr %i.bs, i64 %indvars.iv.i.i
  %i.bu = getelementptr i8, ptr %i.bt, i64 12
  store i32 0, ptr %i.bu, align 4
  %indvars.iv.next.i.i.3 = add nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.3, 0
  br i1 %exitcond.not.i.i.3, label %_ZNK6Gluco23vecINS_3LitEE6copyToERS2_.exit.sink.split, label %.lr.ph.i.i, !llvm.loop !4

_ZNK6Gluco23vecINS_3LitEE6copyToERS2_.exit.sink.split: ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.g
  store i32 0, ptr %.phi.trans.insert.i, align 8, !tbaa !24
  br label %_ZNK6Gluco23vecINS_3LitEE6copyToERS2_.exit

_ZNK6Gluco23vecINS_3LitEE6copyToERS2_.exit:       ; preds = %_ZNK6Gluco23vecINS_3LitEE6copyToERS2_.exit.sink.split, %_ZN6Gluco23vecINS_3LitEE5clearEb.exit.i
  %i.bv = call i8 @_ZN6Gluco210SimpSolver6solve_Ebb(ptr noundef nonnull align 8 dereferenceable(1684) %6, i1 noundef zeroext false, i1 noundef zeroext false) #29 ; 2 uses
  %i.bw = load i32, ptr %i.i, align 4, !tbaa !102
  %.not11 = icmp eq i32 %i.bw, 0
  br i1 %.not11, label %bb.n, label %bb.l

bb.l:                                             ; preds = %_ZNK6Gluco23vecINS_3LitEE6copyToERS2_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  %i.bx = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %3) #29
  %i.by = icmp slt i32 %i.bx, 0
  br i1 %i.by, label %_ZL9Abc_Clockv.exit15, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bz = load i64, ptr %3, align 8, !tbaa !99
  %i.ca = mul nsw i64 %i.bz, 1000000
  %i.cb = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !100
  %i.cd = sdiv i64 %i.cc, 1000
  %i.ce = add nsw i64 %i.cd, %i.ca
  br label %_ZL9Abc_Clockv.exit15

_ZL9Abc_Clockv.exit15:                            ; preds = %bb.l, %bb.m
  %.0.i14 = phi i64 [ %i.ce, %bb.m ], [ -1, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  %i.cf = sub nsw i64 %.0.i14, %.0.i
  call void @_Z20glucose2_print_statsRN6Gluco210SimpSolverEl(ptr noundef nonnull align 8 dereferenceable(1684) %6, i64 noundef %i.cf)
  br label %bb.n

bb.n:                                             ; preds = %_ZL9Abc_Clockv.exit15, %_ZNK6Gluco23vecINS_3LitEE6copyToERS2_.exit
  %i.cg = icmp eq i8 %i.bv, 0
  %i.ch = icmp eq i8 %i.bv, 1
  %.str.21..str.22 = select i1 %i.ch, ptr @.str.21, ptr @.str.22
  %i.ci = select i1 %i.cg, ptr @.str.20, ptr %.str.21..str.22
  %i.cj = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) %i.ci) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  %i.ck = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %2) #29
  %i.cl = icmp slt i32 %i.ck, 0
  br i1 %i.cl, label %_ZN6Gluco23vecINS_3LitEED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cm = load i64, ptr %2, align 8, !tbaa !99
  %i.cn = mul nsw i64 %i.cm, 1000000
  %i.co = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !100
  %i.cq = sdiv i64 %i.cp, 1000
  %i.cr = add nsw i64 %i.cq, %i.cn
  br label %_ZN6Gluco23vecINS_3LitEED2Ev.exit

_ZN6Gluco23vecINS_3LitEED2Ev.exit:                ; preds = %bb.o, %bb.n
  %.0.i16 = phi i64 [ %i.cr, %bb.o ], [ -1, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  %i.cs = sub nsw i64 %.0.i16, %.0.i
  call void (i32, ptr, ...) @_ZL9Abc_PrintiPKcz(i32 poison, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.23)
  %i.ct = sitofp i64 %i.cs to double
  %i.cu = fdiv double %i.ct, 1.000000e+06
  call void (i32, ptr, ...) @_ZL9Abc_PrintiPKcz(i32 poison, ptr noundef nonnull @.str.40, double noundef %i.cu)
  call void @_ZN6Gluco210SimpSolverD1Ev(ptr noundef nonnull align 8 dead_on_return(1684) dereferenceable(1684) %6) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  ret void
}

; Function Attrs: nounwind
declare void @_ZN6Gluco210SimpSolverD1Ev(ptr noundef nonnull align 8 dead_on_return(1684) dereferenceable(1684)) unnamed_addr #12

; Function Attrs: mustprogress nounwind uwtable
define noalias noundef ptr @_Z21Glucose_SolverFromAigP10Gia_Man_t_RN6Gluco210SimpSolverE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(1684) %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.timespec, align 8           ; 5 uses
  %3 = alloca %struct.timespec, align 8           ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  %i.a = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %3) #29
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %_ZL9Abc_Clockv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %3, align 8, !tbaa !99
  %.neg35 = mul i64 %i.c, -1000000
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !100
  %.neg = sdiv i64 %i.e, -1000
  %.neg36 = add i64 %.neg, %.neg35
  br label %_ZL9Abc_Clockv.exit

_ZL9Abc_Clockv.exit:                              ; preds = %bb.a, %bb.b
  %.0.i.neg = phi i64 [ %.neg36, %bb.b ], [ 1, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 5 uses
  %i.g = call ptr @Mf_ManGenerateCnf(ptr noundef %0, i32 noundef 8, i32 noundef 0, i32 noundef 1, i32 noundef 0, i32 noundef 0) #29 ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !112  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 736 ; 4 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !20
  %.not1.i.not = icmp sgt i32 %i.i, %i.k
  br i1 %.not1.i.not, label %.lr.ph.i, label %_ZN6Gluco210SimpSolver6addVarEi.exit

.lr.ph.i:                                         ; preds = %_ZL9Abc_Clockv.exit, %.lr.ph.i
  %i.l = call noundef i32 @_ZN6Gluco210SimpSolver6newVarEbb(ptr noundef nonnull align 8 dereferenceable(1684) %1, i1 noundef zeroext true, i1 noundef zeroext true) #29 ; 0 uses
  %i.m = load i32, ptr %i.j, align 8, !tbaa !20
  %.not.i.not = icmp sgt i32 %i.i, %i.m
  br i1 %.not.i.not, label %.lr.ph.i, label %_ZN6Gluco210SimpSolver6addVarEi.exit, !llvm.loop !3

_ZN6Gluco210SimpSolver6addVarEi.exit:             ; preds = %.lr.ph.i, %_ZL9Abc_Clockv.exit
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !113  ; 2 uses
  %i.p = icmp sgt i32 %i.o, 0
  br i1 %i.p, label %.lr.ph44, label %._crit_edge45

.lr.ph44:                                         ; preds = %_ZN6Gluco210SimpSolver6addVarEi.exit
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 84 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 1080 ; 2 uses
  br label %bb.d

._crit_edge45:                                    ; preds = %._crit_edge, %_ZN6Gluco210SimpSolver6addVarEi.exit
  %i.u = phi i32 [ %i.o, %_ZN6Gluco210SimpSolver6addVarEi.exit ], [ %i.bb, %._crit_edge ]
  %i.v = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !114
  %i.x = getelementptr i8, ptr %0, i64 24
  %.val = load i32, ptr %i.x, align 8, !tbaa !130 ; 3 uses
  %i.y = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #32 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  store i32 %.val, ptr %i.z, align 4, !tbaa !131
  store i32 %.val, ptr %i.y, align 8, !tbaa !132
  %i.aa = sext i32 %.val to i64
  %i.ab = shl nsw i64 %i.aa, 2                    ; 2 uses
  %i.ac = call noalias ptr @malloc(i64 noundef %i.ab) #32 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store ptr %i.ac, ptr %i.ad, align 8, !tbaa !133
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.ac, ptr readonly align 4 %i.w, i64 %i.ab, i1 false)
  %i.ae = load i32, ptr %i.h, align 8, !tbaa !112
  %i.af = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !185
  %i.ah = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.24, i32 noundef %i.ae, i32 noundef %i.u, i32 noundef %i.ag) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  %i.ai = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %2) #29
  %i.aj = icmp slt i32 %i.ai, 0
  br i1 %i.aj, label %_ZL9Abc_Clockv.exit29, label %bb.c

bb.c:                                             ; preds = %._crit_edge45
  %i.ak = load i64, ptr %2, align 8, !tbaa !99
  %i.al = mul nsw i64 %i.ak, 1000000
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.an = load i64, ptr %i.am, align 8, !tbaa !100
  %i.ao = sdiv i64 %i.an, 1000
  %i.ap = add nsw i64 %i.ao, %i.al
  br label %_ZL9Abc_Clockv.exit29

_ZL9Abc_Clockv.exit29:                            ; preds = %._crit_edge45, %bb.c
  %.0.i28 = phi i64 [ %i.ap, %bb.c ], [ -1, %._crit_edge45 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  %i.aq = add i64 %.0.i28, %.0.i.neg
  call void (i32, ptr, ...) @_ZL9Abc_PrintiPKcz(i32 poison, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.19)
end_hunk_0
begin_hunk_1_@_Z22Glucose2_GenerateCubesPPvP10Vec_Int_t_S2_i:bb.a
  %i.fi = load i32, ptr %i.b, align 8, !tbaa !137
  %i.fj = icmp eq i32 %i.fh, %i.fi
  br i1 %i.fj, label %bb.aj, label %_ZL11Vec_StrFreeP10Vec_Str_t_.exit._ZL11Vec_StrPushP10Vec_Str_t_c.exit_crit_edge

_ZL11Vec_StrFreeP10Vec_Str_t_.exit._ZL11Vec_StrPushP10Vec_Str_t_c.exit_crit_edge: ; preds = %_ZL11Vec_StrFreeP10Vec_Str_t_.exit
  %.pre134 = load ptr, ptr %i.e, align 8, !tbaa !138
  br label %_ZL11Vec_StrPushP10Vec_Str_t_c.exit

bb.aj:                                            ; preds = %_ZL11Vec_StrFreeP10Vec_Str_t_.exit
  %i.fk = icmp slt i32 %i.fh, 16
  br i1 %i.fk, label %bb.ak, label %bb.an

bb.ak:                                            ; preds = %bb.aj
  %i.fl = load ptr, ptr %i.e, align 8, !tbaa !138 ; 2 uses
  %.not9.i.i94 = icmp eq ptr %i.fl, null
  br i1 %.not9.i.i94, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.fm = tail call dereferenceable_or_null(16) ptr @realloc(ptr noundef nonnull %i.fl, i64 noundef 16) #30
  br label %_ZL11Vec_StrGrowP10Vec_Str_t_i.exit11.sink.split.i

bb.am:                                            ; preds = %bb.ak
  %i.fn = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #32
  br label %_ZL11Vec_StrGrowP10Vec_Str_t_i.exit11.sink.split.i

bb.an:                                            ; preds = %bb.aj
  %i.fo = icmp samesign ult i32 %i.fh, 1073741823
  %i.fp = shl nuw nsw i32 %i.fh, 1
  %spec.select.i90 = select i1 %i.fo, i32 %i.fp, i32 2147483647 ; 4 uses
  %.not.i9.i91 = icmp samesign ult i32 %i.fh, %spec.select.i90
  %.pre135 = load ptr, ptr %i.e, align 8, !tbaa !138 ; 3 uses
  br i1 %.not.i9.i91, label %bb.ao, label %_ZL11Vec_StrPushP10Vec_Str_t_c.exit

bb.ao:                                            ; preds = %bb.an
  %.not9.i10.i92 = icmp eq ptr %.pre135, null
  %i.fq = zext nneg i32 %spec.select.i90 to i64   ; 2 uses
  br i1 %.not9.i10.i92, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.fr = tail call ptr @realloc(ptr noundef nonnull %.pre135, i64 noundef %i.fq) #30
  br label %_ZL11Vec_StrGrowP10Vec_Str_t_i.exit11.sink.split.i

bb.aq:                                            ; preds = %bb.ao
  %i.fs = tail call noalias ptr @malloc(i64 noundef %i.fq) #32
  br label %_ZL11Vec_StrGrowP10Vec_Str_t_i.exit11.sink.split.i

_ZL11Vec_StrGrowP10Vec_Str_t_i.exit11.sink.split.i: ; preds = %bb.ap, %bb.aq, %bb.al, %bb.am
  %storemerge100 = phi ptr [ %i.fn, %bb.am ], [ %i.fm, %bb.al ], [ %i.fr, %bb.ap ], [ %i.fs, %bb.aq ] ; 2 uses
  %spec.select.sink.i93 = phi i32 [ 16, %bb.am ], [ 16, %bb.al ], [ %spec.select.i90, %bb.ap ], [ %spec.select.i90, %bb.aq ]
  store ptr %storemerge100, ptr %i.e, align 8, !tbaa !138
  store i32 %spec.select.sink.i93, ptr %i.b, align 8, !tbaa !137
  br label %_ZL11Vec_StrPushP10Vec_Str_t_c.exit

_ZL11Vec_StrPushP10Vec_Str_t_c.exit:              ; preds = %_ZL11Vec_StrFreeP10Vec_Str_t_.exit._ZL11Vec_StrPushP10Vec_Str_t_c.exit_crit_edge, %bb.an, %_ZL11Vec_StrGrowP10Vec_Str_t_i.exit11.sink.split.i
  %i.ft = phi ptr [ %.pre134, %_ZL11Vec_StrFreeP10Vec_Str_t_.exit._ZL11Vec_StrPushP10Vec_Str_t_c.exit_crit_edge ], [ %.pre135, %bb.an ], [ %storemerge100, %_ZL11Vec_StrGrowP10Vec_Str_t_i.exit11.sink.split.i ]
  %i.fu = add nsw i32 %i.fh, 1
  store i32 %i.fu, ptr %i.c, align 4, !tbaa !136
  %i.fv = sext i32 %i.fh to i64
  %i.fw = getelementptr inbounds i8, ptr %i.ft, i64 %i.fv
  store i8 0, ptr %i.fw, align 1, !tbaa !75
  ret ptr %i.b
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZL13Vec_StrPrintFP10Vec_Str_t_PKcz(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, ...) unnamed_addr #7 {
bb.a:
  %2 = alloca [1 x %struct.__va_list_tag], align 16 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  call void @llvm.va_start.p0(ptr nonnull %2)
  %i.a = getelementptr i8, ptr %0, i64 4          ; 6 uses
  %.val18 = load i32, ptr %i.a, align 4, !tbaa !136 ; 3 uses
  %i.b = add nsw i32 %.val18, 1000                ; 3 uses
  %i.c = load i32, ptr %0, align 8, !tbaa !137
  %.not.i = icmp slt i32 %i.c, %i.b
  %i.d = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !138  ; 3 uses
  br i1 %.not.i, label %bb.b, label %_ZL11Vec_StrGrowP10Vec_Str_t_i.exit

bb.b:                                             ; preds = %bb.a
  %.not9.i = icmp eq ptr %i.e, null
  %i.f = sext i32 %i.b to i64                     ; 2 uses
  br i1 %.not9.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = call ptr @realloc(ptr noundef nonnull %i.e, i64 noundef %i.f) #30
  %.val23.pre.pre = load i32, ptr %i.a, align 4, !tbaa !136
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.h = call noalias ptr @malloc(i64 noundef %i.f) #32
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.val23.pre = phi i32 [ %.val23.pre.pre, %bb.c ], [ %.val18, %bb.d ]
  %i.i = phi ptr [ %i.g, %bb.c ], [ %i.h, %bb.d ] ; 2 uses
  store ptr %i.i, ptr %i.d, align 8, !tbaa !138
  store i32 %i.b, ptr %0, align 8, !tbaa !137
  br label %_ZL11Vec_StrGrowP10Vec_Str_t_i.exit

_ZL11Vec_StrGrowP10Vec_Str_t_i.exit:              ; preds = %bb.a, %bb.e
  %.val24 = phi ptr [ %i.i, %bb.e ], [ %i.e, %bb.a ]
  %.val23 = phi i32 [ %.val23.pre, %bb.e ], [ %.val18, %bb.a ]
  %i.j = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %i.k = sext i32 %.val23 to i64
  %i.l = getelementptr inbounds i8, ptr %.val24, i64 %i.k
  %i.m = call i32 @vsnprintf(ptr noundef %i.l, i64 noundef 1000, ptr noundef %1, ptr noundef nonnull %2) #29 ; 4 uses
  %i.n = icmp sgt i32 %i.m, 1000
  br i1 %i.n, label %bb.f, label %bb.k

bb.f:                                             ; preds = %_ZL11Vec_StrGrowP10Vec_Str_t_i.exit
  %.val = load i32, ptr %i.a, align 4, !tbaa !136 ; 3 uses
  %i.o = add nuw i32 %i.m, 1000
  %i.p = add i32 %i.o, %.val                      ; 3 uses
  %i.q = load i32, ptr %0, align 8, !tbaa !137
  %.not.i25 = icmp slt i32 %i.q, %i.p
  %.val22.pre = load ptr, ptr %i.j, align 8, !tbaa !138 ; 3 uses
  br i1 %.not.i25, label %bb.g, label %_ZL11Vec_StrGrowP10Vec_Str_t_i.exit27

bb.g:                                             ; preds = %bb.f
  %.not9.i26 = icmp eq ptr %.val22.pre, null
  %i.r = sext i32 %i.p to i64                     ; 2 uses
  br i1 %.not9.i26, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = call ptr @realloc(ptr noundef nonnull %.val22.pre, i64 noundef %i.r) #30
  %.val21.pre.pre = load i32, ptr %i.a, align 4, !tbaa !136
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.t = call noalias ptr @malloc(i64 noundef %i.r) #32
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.val21.pre = phi i32 [ %.val21.pre.pre, %bb.h ], [ %.val, %bb.i ]
  %i.u = phi ptr [ %i.s, %bb.h ], [ %i.t, %bb.i ] ; 2 uses
  store ptr %i.u, ptr %i.j, align 8, !tbaa !138
  store i32 %i.p, ptr %0, align 8, !tbaa !137
  br label %_ZL11Vec_StrGrowP10Vec_Str_t_i.exit27

_ZL11Vec_StrGrowP10Vec_Str_t_i.exit27:            ; preds = %bb.f, %bb.j
  %.val22 = phi ptr [ %.val22.pre, %bb.f ], [ %i.u, %bb.j ]
  %.val21 = phi i32 [ %.val, %bb.f ], [ %.val21.pre, %bb.j ]
  %i.v = sext i32 %.val21 to i64
  %i.w = getelementptr inbounds i8, ptr %.val22, i64 %i.v
  %i.x = zext nneg i32 %i.m to i64
  %i.y = call i32 @vsnprintf(ptr noundef %i.w, i64 noundef %i.x, ptr noundef %1, ptr noundef nonnull %2) #29 ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %_ZL11Vec_StrGrowP10Vec_Str_t_i.exit27, %_ZL11Vec_StrGrowP10Vec_Str_t_i.exit
  %i.z = load i32, ptr %i.a, align 4, !tbaa !136
  %i.aa = add nsw i32 %i.z, %i.m
  store i32 %i.aa, ptr %i.a, align 4, !tbaa !136
  call void @llvm.va_end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define noalias noundef ptr @bmcg2_sat_solver_sop(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [2 x ptr], align 16               ; 7 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  %i.c = tail call noalias noundef nonnull dereferenceable(1688) ptr @_Znwm(i64 noundef 1688) #28 ; 5 uses
  tail call void @_ZN6Gluco210SimpSolverC1Ev(ptr noundef nonnull align 8 dereferenceable(1684) %i.c) #29
  tail call void @_ZN6Gluco26Solver18setIncrementalModeEv(ptr noundef nonnull align 8 dereferenceable(1416) %i.c) #29
  store ptr %i.c, ptr %i.a, align 16, !tbaa !139
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = tail call noalias noundef nonnull dereferenceable(1688) ptr @_Znwm(i64 noundef 1688) #28 ; 5 uses
  tail call void @_ZN6Gluco210SimpSolverC1Ev(ptr noundef nonnull align 8 dereferenceable(1684) %i.e) #29
  tail call void @_ZN6Gluco26Solver18setIncrementalModeEv(ptr noundef nonnull align 8 dereferenceable(1416) %i.e) #29
  store ptr %i.e, ptr %i.d, align 8, !tbaa !139
  %i.f = tail call ptr @Mf_ManGenerateCnf(ptr noundef %0, i32 noundef 8, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0) #29 ; 5 uses
  %i.g = getelementptr i8, ptr %0, i64 64
  %.val = load ptr, ptr %i.g, align 8, !tbaa !140
  %i.h = getelementptr i8, ptr %.val, i64 4
  %.val.val = load i32, ptr %i.h, align 4, !tbaa !131 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #29
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !112  ; 6 uses
  %i.k = sub nsw i32 %i.j, %.val.val
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %indvars.iv92.sroa.gep133 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.l
  %i.n = phi i1 [ true, %bb.a ], [ false, %bb.l ]
  %indvars.iv92.sroa.phi = phi ptr [ %i.a, %bb.a ], [ %indvars.iv92.sroa.gep133, %bb.l ]
  %indvars.iv92 = phi i32 [ 0, %bb.a ], [ 1, %bb.l ] ; 2 uses
  %i.o = load ptr, ptr %indvars.iv92.sroa.phi, align 8, !tbaa !139 ; 9 uses
  %i.p = load i32, ptr %i.i, align 8, !tbaa !112  ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 736 ; 3 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !20   ; 2 uses
  %i.s = icmp slt i32 %i.r, %i.p
  br i1 %i.s, label %.lr.ph.i, label %bmcg2_sat_solver_set_nvars.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.04.i = phi i32 [ %i.u, %.lr.ph.i ], [ %i.r, %bb.b ]
  %i.t = tail call noundef i32 @_ZN6Gluco210SimpSolver6newVarEbb(ptr noundef nonnull align 8 dereferenceable(1684) %i.o, i1 noundef zeroext true, i1 noundef zeroext true) #29 ; 0 uses
  %i.u = add nsw i32 %.04.i, 1                    ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.u, %i.p
  br i1 %exitcond.not.i, label %bmcg2_sat_solver_set_nvars.exit, label %.lr.ph.i, !llvm.loop !2

bmcg2_sat_solver_set_nvars.exit:                  ; preds = %.lr.ph.i, %bb.b
  %i.v = xor i32 %indvars.iv92, 3
  store i32 %i.v, ptr %i.b, align 4, !tbaa !16
  %i.w = load i32, ptr %i.l, align 8, !tbaa !113
  %i.x = icmp sgt i32 %i.w, 0
  br i1 %i.x, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bmcg2_sat_solver_set_nvars.exit
  %i.y = getelementptr inbounds nuw i8, ptr %i.o, i64 1080 ; 10 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.o, i64 1088 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.o, i64 1092 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_Z25glucose2_solver_addclausePN6Gluco210SimpSolverEPii.exit
  %indvars.iv89 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next90, %_Z25glucose2_solver_addclausePN6Gluco210SimpSolverEPii.exit ] ; 2 uses
  %i.aa = load ptr, ptr %i.m, align 8, !tbaa !134 ; 2 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %indvars.iv89
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !72 ; 2 uses
  %indvars.iv.next90 = add nuw nsw i64 %indvars.iv89, 1 ; 3 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %indvars.iv.next90
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !72
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = ptrtoint ptr %i.ac to i64
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = lshr exact i64 %i.ah, 2                 ; 2 uses
  %i.aj = trunc i64 %i.ai to i32                  ; 2 uses
  %i.ak = icmp sgt i32 %i.aj, 0
  br i1 %i.ak, label %.preheader.i.preheader, label %._crit_edge12.i

.preheader.i.preheader:                           ; preds = %bb.c
  %wide.trip.count = and i64 %i.ai, 2147483647
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %_ZN6Gluco23vecINS_3LitEE4pushERKS1_.exit.i
  %indvars.iv = phi i64 [ 0, %.preheader.i.preheader ], [ %indvars.iv.next, %_ZN6Gluco23vecINS_3LitEE4pushERKS1_.exit.i ] ; 3 uses
  %.sroa.0.1 = phi ptr [ null, %.preheader.i.preheader ], [ %.sroa.0.2, %_ZN6Gluco23vecINS_3LitEE4pushERKS1_.exit.i ]
  %i.al = phi ptr [ null, %.preheader.i.preheader ], [ %.pre.i15.i, %_ZN6Gluco23vecINS_3LitEE4pushERKS1_.exit.i ] ; 2 uses
  %i.am = phi i32 [ 0, %.preheader.i.preheader ], [ %i.dx, %_ZN6Gluco23vecINS_3LitEE4pushERKS1_.exit.i ] ; 5 uses
  %.0810.i = phi ptr [ %i.ac, %.preheader.i.preheader ], [ %i.dz, %_ZN6Gluco23vecINS_3LitEE4pushERKS1_.exit.i ] ; 3 uses
  %i.an = load i32, ptr %.0810.i, align 4, !tbaa !16 ; 2 uses
  %i.ao = sdiv i32 %i.an, 2
  %i.ap = load i32, ptr %i.q, align 8, !tbaa !20
  %.not9.i = icmp slt i32 %i.ao, %i.ap
  br i1 %.not9.i, label %._crit_edge.i, label %.lr.ph.i50

._crit_edge12.i:                                  ; preds = %_ZN6Gluco23vecINS_3LitEE4pushERKS1_.exit.i, %bb.c
  %.sroa.0.0 = phi ptr [ null, %bb.c ], [ %.sroa.0.2, %_ZN6Gluco23vecINS_3LitEE4pushERKS1_.exit.i ] ; 9 uses
  %.sroa.6.0 = phi i32 [ 0, %bb.c ], [ %i.aj, %_ZN6Gluco23vecINS_3LitEE4pushERKS1_.exit.i ] ; 9 uses
  %.sroa.0.0124 = ptrtoaddr ptr %.sroa.0.0 to i64
  %i.aq = load ptr, ptr %i.y, align 8, !tbaa !23  ; 2 uses
  %.not.i.i53 = icmp eq ptr %i.aq, null
  br i1 %.not.i.i53, label %._ZN6Gluco23vecINS_3LitEE5clearEb.exit_crit_edge.i, label %.preheader.i.i

._ZN6Gluco23vecINS_3LitEE5clearEb.exit_crit_edge.i: ; preds = %._crit_edge12.i
  %.pre.i = load i32, ptr %.phi.trans.insert.i, align 8, !tbaa !24
  br label %_ZN6Gluco23vecINS_3LitEE5clearEb.exit.i

.preheader.i.i:                                   ; preds = %._crit_edge12.i
  store i32 0, ptr %.phi.trans.insert.i, align 8, !tbaa !24
  br label %_ZN6Gluco23vecINS_3LitEE5clearEb.exit.i

_ZN6Gluco23vecINS_3LitEE5clearEb.exit.i:          ; preds = %.preheader.i.i, %._ZN6Gluco23vecINS_3LitEE5clearEb.exit_crit_edge.i
  %i.ar = phi i32 [ %.pre.i, %._ZN6Gluco23vecINS_3LitEE5clearEb.exit_crit_edge.i ], [ 0, %.preheader.i.i ]
  %.not.i7.i = icmp slt i32 %i.ar, %.sroa.6.0
  br i1 %.not.i7.i, label %bb.d, label %_ZN6Gluco23vecINS_3LitEE6growToEi.exit.i

bb.d:                                             ; preds = %_ZN6Gluco23vecINS_3LitEE5clearEb.exit.i
  %i.as = load i32, ptr %i.z, align 4, !tbaa !26  ; 5 uses
  %.not.i.i.i56 = icmp slt i32 %i.as, %.sroa.6.0
  br i1 %.not.i.i.i56, label %bb.e, label %_ZN6Gluco23vecINS_3LitEE8capacityEi.exit.i.i

bb.e:                                             ; preds = %bb.d
  %i.at = add nuw i32 %.sroa.6.0, 1
  %i.au = sub i32 %i.at, %i.as
  %i.av = and i32 %i.au, -2
  %i.aw = ashr i32 %i.as, 1
  %i.ax = and i32 %i.aw, -2
  %i.ay = add nsw i32 %i.ax, 2
  %i.az = tail call noundef i32 @llvm.smax.i32(i32 %i.ay, i32 %i.av) ; 2 uses
  %i.ba = sub nsw i32 2147483647, %i.as
  %i.bb = icmp samesign ugt i32 %i.az, %i.ba
  br i1 %i.bb, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bc = add nsw i32 %i.az, %i.as                ; 2 uses
  store i32 %i.bc, ptr %i.z, align 4, !tbaa !26
  %i.bd = sext i32 %i.bc to i64
  %i.be = shl nsw i64 %i.bd, 2
  %i.bf = tail call ptr @realloc(ptr noundef %i.aq, i64 noundef %i.be) #30 ; 2 uses
  store ptr %i.bf, ptr %i.y, align 8, !tbaa !23
  %i.bg = icmp eq ptr %i.bf, null
  br i1 %i.bg, label %bb.g, label %_ZN6Gluco23vecINS_3LitEE8capacityEi.exit.i.i

bb.g:                                             ; preds = %bb.f
  %i.bh = tail call ptr @__errno_location() #31
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !16
  %i.bj = icmp eq i32 %i.bi, 12
  br i1 %i.bj, label %bb.h, label %_ZN6Gluco23vecINS_3LitEE8capacityEi.exit.i.i

bb.h:                                             ; preds = %bb.g, %bb.e
  tail call fastcc void @_ZN6Gluco2L19fatal_out_of_memoryEv()
  unreachable

_ZN6Gluco23vecINS_3LitEE8capacityEi.exit.i.i:     ; preds = %bb.g, %bb.f, %bb.d
  %i.bk = load i32, ptr %.phi.trans.insert.i, align 8, !tbaa !24 ; 2 uses
  %i.bl = icmp slt i32 %i.bk, %.sroa.6.0
  br i1 %i.bl, label %.lr.ph.preheader.i.i, label %._crit_edge.i.i

.lr.ph.preheader.i.i:                             ; preds = %_ZN6Gluco23vecINS_3LitEE8capacityEi.exit.i.i
  %i.bm = sext i32 %i.bk to i64                   ; 4 uses
  %wide.trip.count.i.i = zext nneg i32 %.sroa.6.0 to i64 ; 3 uses
  %i.bn = sub nsw i64 %wide.trip.count.i.i, %i.bm
  %xtraiter = and i64 %i.bn, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.preheader.i.i, %.lr.ph.i.i.prol
  %indvars.iv.i.i.prol = phi i64 [ %indvars.iv.next.i.i.prol, %.lr.ph.i.i.prol ], [ %i.bm, %.lr.ph.preheader.i.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.preheader.i.i ]
  %i.bo = load ptr, ptr %i.y, align 8, !tbaa !23
  %i.bp = getelementptr inbounds [4 x i8], ptr %i.bo, i64 %indvars.iv.i.i.prol
  store i32 0, ptr %i.bp, align 4
  %indvars.iv.next.i.i.prol = add nsw i64 %indvars.iv.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !196

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.preheader.i.i
  %indvars.iv.i.i.unr = phi i64 [ %i.bm, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i.prol, %.lr.ph.i.i.prol ]
  %i.bq = sub nsw i64 %i.bm, %wide.trip.count.i.i
  %i.br = icmp ugt i64 %i.bq, -4
  br i1 %i.br, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %_ZN6Gluco23vecINS_3LitEE8capacityEi.exit.i.i
  store i32 %.sroa.6.0, ptr %.phi.trans.insert.i, align 8, !tbaa !24
  br label %_ZN6Gluco23vecINS_3LitEE6growToEi.exit.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.3, %.lr.ph.i.i ], [ %indvars.iv.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 5 uses
  %i.bs = load ptr, ptr %i.y, align 8, !tbaa !23
  %i.bt = getelementptr inbounds [4 x i8], ptr %i.bs, i64 %indvars.iv.i.i
  store i32 0, ptr %i.bt, align 4
  %i.bu = load ptr, ptr %i.y, align 8, !tbaa !23
  %i.bv = getelementptr [4 x i8], ptr %i.bu, i64 %indvars.iv.i.i
  %i.bw = getelementptr i8, ptr %i.bv, i64 4
  store i32 0, ptr %i.bw, align 4
  %i.bx = load ptr, ptr %i.y, align 8, !tbaa !23
  %i.by = getelementptr [4 x i8], ptr %i.bx, i64 %indvars.iv.i.i
  %i.bz = getelementptr i8, ptr %i.by, i64 8
  store i32 0, ptr %i.bz, align 4
  %i.ca = load ptr, ptr %i.y, align 8, !tbaa !23
  %i.cb = getelementptr [4 x i8], ptr %i.ca, i64 %indvars.iv.i.i
  %i.cc = getelementptr i8, ptr %i.cb, i64 12
  store i32 0, ptr %i.cc, align 4
  %indvars.iv.next.i.i.3 = add nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.3, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.3, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !4

_ZN6Gluco23vecINS_3LitEE6growToEi.exit.i:         ; preds = %._crit_edge.i.i, %_ZN6Gluco23vecINS_3LitEE5clearEb.exit.i
  %i.cd = icmp sgt i32 %.sroa.6.0, 0
  br i1 %i.cd, label %.lr.ph.i55, label %_ZNK6Gluco23vecINS_3LitEE6copyToERS2_.exit

.lr.ph.i55:                                       ; preds = %_ZN6Gluco23vecINS_3LitEE6growToEi.exit.i
  %i.ce = load ptr, ptr %i.y, align 8, !tbaa !23  ; 7 uses
  %i.cf = zext nneg i32 %.sroa.6.0 to i64         ; 5 uses
  %min.iters.check = icmp ult i32 %.sroa.6.0, 8
  %i.cg = ptrtoaddr ptr %i.ce to i64
  %i.ch = sub i64 %.sroa.0.0124, %i.cg
  %diff.check = icmp ugt i64 %i.ch, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i55
  %n.vec = and i64 %i.cf, 2147483640              ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0, i64 %index ; 2 uses
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %index ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %wide.load = load <4 x i32>, ptr %i.ci, align 4, !tbaa !16
  %wide.load125 = load <4 x i32>, ptr %i.ck, align 4, !tbaa !16
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  store <4 x i32> %wide.load, ptr %i.cj, align 4, !tbaa !16
  store <4 x i32> %wide.load125, ptr %i.cl, align 4, !tbaa !16
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cm = icmp eq i64 %index.next, %n.vec
  br i1 %i.cm, label %middle.block, label %vector.body, !llvm.loop !197

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.cf
  br i1 %cmp.n, label %_ZNK6Gluco23vecINS_3LitEE6copyToERS2_.exit.thread, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i55, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.i55 ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter130 = and i64 %i.cf, 3                 ; 2 uses
end_hunk_1
begin_hunk_2_@_Z25Gia_ManSatAndCollect2_recP10Gia_Man_t_iP10Vec_Int_t_S2_:bb.a
bb.d:                                             ; preds = %bb.c, %bb.b
  %i.t = getelementptr i8, ptr %2, i64 4          ; 3 uses
  %.val = load i32, ptr %i.t, align 4, !tbaa !131 ; 12 uses
  %i.u = load i32, ptr %2, align 8, !tbaa !132
  %i.v = icmp eq i32 %.val, %i.u
  br i1 %i.v, label %bb.e, label %_ZL11Vec_IntPushP10Vec_Int_t_i.exit

bb.e:                                             ; preds = %bb.d
  %i.w = icmp slt i32 %.val, 16
  br i1 %i.w, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !133  ; 2 uses
  %.not9.i.i = icmp eq ptr %i.y, null
  br i1 %.not9.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.y, i64 noundef 64) #30
  br label %_ZL11Vec_IntGrowP10Vec_Int_t_i.exit.i

bb.h:                                             ; preds = %bb.f
  %i.aa = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #32
  br label %_ZL11Vec_IntGrowP10Vec_Int_t_i.exit.i

_ZL11Vec_IntGrowP10Vec_Int_t_i.exit.i:            ; preds = %bb.h, %bb.g
  %i.ab = phi ptr [ %i.z, %bb.g ], [ %i.aa, %bb.h ]
  store ptr %i.ab, ptr %i.x, align 8, !tbaa !133
  br label %_ZL11Vec_IntGrowP10Vec_Int_t_i.exit11.sink.split.i

bb.i:                                             ; preds = %bb.e
  %i.ac = icmp samesign ult i32 %.val, 1073741823
  %i.ad = shl nuw nsw i32 %.val, 1
  %spec.select.i = select i1 %i.ac, i32 %i.ad, i32 2147483647 ; 3 uses
  %.not.i9.i = icmp samesign ult i32 %.val, %spec.select.i
  br i1 %.not.i9.i, label %bb.j, label %_ZL11Vec_IntPushP10Vec_Int_t_i.exit

bb.j:                                             ; preds = %bb.i
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !133 ; 2 uses
  %.not9.i10.i = icmp eq ptr %i.af, null
  %i.ag = zext nneg i32 %spec.select.i to i64
  %i.ah = shl nuw nsw i64 %i.ag, 2                ; 2 uses
  br i1 %.not9.i10.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ai = tail call ptr @realloc(ptr noundef nonnull %i.af, i64 noundef %i.ah) #30
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.aj = tail call noalias ptr @malloc(i64 noundef %i.ah) #32
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ak = phi ptr [ %i.ai, %bb.k ], [ %i.aj, %bb.l ]
  store ptr %i.ak, ptr %i.ae, align 8, !tbaa !133
  br label %_ZL11Vec_IntGrowP10Vec_Int_t_i.exit11.sink.split.i

_ZL11Vec_IntGrowP10Vec_Int_t_i.exit11.sink.split.i: ; preds = %bb.m, %_ZL11Vec_IntGrowP10Vec_Int_t_i.exit.i
  %spec.select.sink.i = phi i32 [ %spec.select.i, %bb.m ], [ 16, %_ZL11Vec_IntGrowP10Vec_Int_t_i.exit.i ]
  store i32 %spec.select.sink.i, ptr %2, align 8, !tbaa !132
  %.pre = load i32, ptr %i.t, align 4, !tbaa !131
  br label %_ZL11Vec_IntPushP10Vec_Int_t_i.exit

_ZL11Vec_IntPushP10Vec_Int_t_i.exit:              ; preds = %bb.d, %bb.i, %_ZL11Vec_IntGrowP10Vec_Int_t_i.exit11.sink.split.i
  %i.al = phi i32 [ %.val, %bb.d ], [ %.val, %bb.i ], [ %.pre, %_ZL11Vec_IntGrowP10Vec_Int_t_i.exit11.sink.split.i ] ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !133
  %i.ao = add nsw i32 %i.al, 1
  store i32 %i.ao, ptr %i.t, align 4, !tbaa !131
  %i.ap = sext i32 %i.al to i64
  %i.aq = getelementptr inbounds [4 x i8], ptr %i.an, i64 %i.ap
  store i32 %1, ptr %i.aq, align 4, !tbaa !16
  %.val36 = load ptr, ptr %i.a, align 8, !tbaa !133
  %i.ar = getelementptr inbounds [4 x i8], ptr %.val36, i64 %i.b
  store i32 %.val, ptr %i.ar, align 4, !tbaa !16
  %.not29 = icmp eq ptr %3, null
  br i1 %.not29, label %bb.y, label %bb.n

bb.n:                                             ; preds = %_ZL11Vec_IntPushP10Vec_Int_t_i.exit
  %.val37 = load i64, ptr %i.g, align 4
  %i.as = and i64 %.val37, 2684354559
  %narrow.i38.not = icmp eq i64 %i.as, 2684354559
  br i1 %narrow.i38.not, label %bb.o, label %bb.y

bb.o:                                             ; preds = %bb.n
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 3 uses
  %i.au = load i32, ptr %i.at, align 4, !tbaa !131 ; 7 uses
  %i.av = load i32, ptr %3, align 8, !tbaa !132
  %i.aw = icmp eq i32 %i.au, %i.av
  br i1 %i.aw, label %bb.p, label %_ZL11Vec_IntPushP10Vec_Int_t_i.exit46

bb.p:                                             ; preds = %bb.o
  %i.ax = icmp slt i32 %i.au, 16
  br i1 %i.ax, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !133 ; 2 uses
  %.not9.i.i44 = icmp eq ptr %i.az, null
  br i1 %.not9.i.i44, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ba = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.az, i64 noundef 64) #30
  br label %_ZL11Vec_IntGrowP10Vec_Int_t_i.exit.i45

bb.s:                                             ; preds = %bb.q
  %i.bb = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #32
  br label %_ZL11Vec_IntGrowP10Vec_Int_t_i.exit.i45

_ZL11Vec_IntGrowP10Vec_Int_t_i.exit.i45:          ; preds = %bb.s, %bb.r
  %i.bc = phi ptr [ %i.ba, %bb.r ], [ %i.bb, %bb.s ]
  store ptr %i.bc, ptr %i.ay, align 8, !tbaa !133
  br label %_ZL11Vec_IntGrowP10Vec_Int_t_i.exit11.sink.split.i42

bb.t:                                             ; preds = %bb.p
  %i.bd = icmp samesign ult i32 %i.au, 1073741823
  %i.be = shl nuw nsw i32 %i.au, 1
  %spec.select.i39 = select i1 %i.bd, i32 %i.be, i32 2147483647 ; 3 uses
  %.not.i9.i40 = icmp samesign ult i32 %i.au, %spec.select.i39
  br i1 %.not.i9.i40, label %bb.u, label %_ZL11Vec_IntPushP10Vec_Int_t_i.exit46

bb.u:                                             ; preds = %bb.t
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !133 ; 2 uses
  %.not9.i10.i41 = icmp eq ptr %i.bg, null
  %i.bh = zext nneg i32 %spec.select.i39 to i64
  %i.bi = shl nuw nsw i64 %i.bh, 2                ; 2 uses
  br i1 %.not9.i10.i41, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bj = tail call ptr @realloc(ptr noundef nonnull %i.bg, i64 noundef %i.bi) #30
  br label %bb.x

bb.w:                                             ; preds = %bb.u
  %i.bk = tail call noalias ptr @malloc(i64 noundef %i.bi) #32
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.bl = phi ptr [ %i.bj, %bb.v ], [ %i.bk, %bb.w ]
  store ptr %i.bl, ptr %i.bf, align 8, !tbaa !133
  br label %_ZL11Vec_IntGrowP10Vec_Int_t_i.exit11.sink.split.i42

_ZL11Vec_IntGrowP10Vec_Int_t_i.exit11.sink.split.i42: ; preds = %bb.x, %_ZL11Vec_IntGrowP10Vec_Int_t_i.exit.i45
  %spec.select.sink.i43 = phi i32 [ %spec.select.i39, %bb.x ], [ 16, %_ZL11Vec_IntGrowP10Vec_Int_t_i.exit.i45 ]
  store i32 %spec.select.sink.i43, ptr %3, align 8, !tbaa !132
  %.pre48 = load i32, ptr %i.at, align 4, !tbaa !131
  br label %_ZL11Vec_IntPushP10Vec_Int_t_i.exit46

_ZL11Vec_IntPushP10Vec_Int_t_i.exit46:            ; preds = %bb.o, %bb.t, %_ZL11Vec_IntGrowP10Vec_Int_t_i.exit11.sink.split.i42
  %i.bm = phi i32 [ %i.au, %bb.o ], [ %i.au, %bb.t ], [ %.pre48, %_ZL11Vec_IntGrowP10Vec_Int_t_i.exit11.sink.split.i42 ] ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !133
  %i.bp = add nsw i32 %i.bm, 1
  store i32 %i.bp, ptr %i.at, align 4, !tbaa !131
  %i.bq = sext i32 %i.bm to i64
  %i.br = getelementptr inbounds [4 x i8], ptr %i.bo, i64 %i.bq
  store i32 %.val, ptr %i.br, align 4, !tbaa !16
  br label %bb.y

bb.y:                                             ; preds = %_ZL11Vec_IntPushP10Vec_Int_t_i.exit, %bb.n, %_ZL11Vec_IntPushP10Vec_Int_t_i.exit46, %bb.a
  %.0 = phi i32 [ %i.d, %bb.a ], [ %.val, %_ZL11Vec_IntPushP10Vec_Int_t_i.exit46 ], [ %.val, %bb.n ], [ %.val, %_ZL11Vec_IntPushP10Vec_Int_t_i.exit ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define void @_Z20Gia_ManQuantLoadCnf2P10Gia_Man_t_P10Vec_Int_t_PPv(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [3 x i32], align 4                ; 10 uses
  %i.b = alloca [3 x i32], align 4                ; 10 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = load ptr, ptr %2, align 8, !tbaa !139    ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !15
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 8 dereferenceable(1684) %i.d) #29, !inline_history !144
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !139  ; 3 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !15
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(1684) %i.i) #29, !inline_history !144
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.m = load ptr, ptr %2, align 8, !tbaa !139    ; 2 uses
  %i.n = getelementptr i8, ptr %1, i64 4          ; 4 uses
  %.val54 = load i32, ptr %i.n, align 4, !tbaa !131 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 736
  %i.p = load i32, ptr %i.o, align 8, !tbaa !20   ; 2 uses
  %i.q = icmp slt i32 %i.p, %.val54
  br i1 %i.q, label %.lr.ph.i, label %bmcg2_sat_solver_set_nvars.exit

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %.04.i = phi i32 [ %i.s, %.lr.ph.i ], [ %i.p, %bb.c ]
  %i.r = tail call noundef i32 @_ZN6Gluco210SimpSolver6newVarEbb(ptr noundef nonnull align 8 dereferenceable(1684) %i.m, i1 noundef zeroext true, i1 noundef zeroext true) #29 ; 0 uses
  %i.s = add nsw i32 %.04.i, 1                    ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.s, %.val54
  br i1 %exitcond.not.i, label %bmcg2_sat_solver_set_nvars.exit.loopexit, label %.lr.ph.i, !llvm.loop !2

bmcg2_sat_solver_set_nvars.exit.loopexit:         ; preds = %.lr.ph.i
  %.val82.pre86.pre = load i32, ptr %i.n, align 4, !tbaa !131
  br label %bmcg2_sat_solver_set_nvars.exit

bmcg2_sat_solver_set_nvars.exit:                  ; preds = %bmcg2_sat_solver_set_nvars.exit.loopexit, %bb.c
  %.val82.pre86 = phi i32 [ %.val82.pre86.pre, %bmcg2_sat_solver_set_nvars.exit.loopexit ], [ %.val54, %bb.c ] ; 4 uses
  %i.t = load ptr, ptr %i.h, align 8, !tbaa !139  ; 3 uses
  %.not47 = icmp eq ptr %i.t, null
  br i1 %.not47, label %bmcg2_sat_solver_set_nvars.exit73, label %bb.d

bb.d:                                             ; preds = %bmcg2_sat_solver_set_nvars.exit
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 736
  %i.v = load i32, ptr %i.u, align 8, !tbaa !20   ; 2 uses
  %i.w = icmp slt i32 %i.v, %.val82.pre86
  br i1 %i.w, label %.lr.ph.i70, label %bmcg2_sat_solver_set_nvars.exit73

.lr.ph.i70:                                       ; preds = %bb.d, %.lr.ph.i70
  %.04.i71 = phi i32 [ %i.y, %.lr.ph.i70 ], [ %i.v, %bb.d ]
  %i.x = tail call noundef i32 @_ZN6Gluco210SimpSolver6newVarEbb(ptr noundef nonnull align 8 dereferenceable(1684) %i.t, i1 noundef zeroext true, i1 noundef zeroext true) #29 ; 0 uses
  %i.y = add nsw i32 %.04.i71, 1                  ; 2 uses
  %exitcond.not.i72 = icmp eq i32 %i.y, %.val82.pre86
  br i1 %exitcond.not.i72, label %bmcg2_sat_solver_set_nvars.exit73.loopexit, label %.lr.ph.i70, !llvm.loop !2

bmcg2_sat_solver_set_nvars.exit73.loopexit:       ; preds = %.lr.ph.i70
  %.val82.pre = load i32, ptr %i.n, align 4, !tbaa !131
  br label %bmcg2_sat_solver_set_nvars.exit73

bmcg2_sat_solver_set_nvars.exit73:                ; preds = %bmcg2_sat_solver_set_nvars.exit73.loopexit, %bb.d, %bmcg2_sat_solver_set_nvars.exit
  %.val82 = phi i32 [ %.val82.pre, %bmcg2_sat_solver_set_nvars.exit73.loopexit ], [ %.val82.pre86, %bb.d ], [ %.val82.pre86, %bmcg2_sat_solver_set_nvars.exit ]
  %i.z = getelementptr i8, ptr %1, i64 8
  %i.aa = icmp sgt i32 %.val82, 0
  br i1 %i.aa, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bmcg2_sat_solver_set_nvars.exit73
  %i.ab = getelementptr i8, ptr %0, i64 32
  %i.ac = getelementptr i8, ptr %0, i64 408       ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.q
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.q ] ; 2 uses
  %.val55 = load ptr, ptr %i.z, align 8, !tbaa !133
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %.val55, i64 %indvars.iv
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !16 ; 3 uses
  %.val56 = load ptr, ptr %i.ab, align 8, !tbaa !142 ; 2 uses
  %i.aj = sext i32 %i.ai to i64                   ; 2 uses
  %i.ak = getelementptr inbounds [12 x i8], ptr %.val56, i64 %i.aj ; 2 uses
  %.not48 = icmp eq ptr %.val56, null
  br i1 %.not48, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.val65 = load i64, ptr %i.ak, align 4          ; 6 uses
  %i.al = and i64 %.val65, 2147483648
  %.not.i = icmp ne i64 %i.al, 0
  %i.am = and i64 %.val65, 536870911
  %i.an = icmp eq i64 %i.am, 536870911
  %narrow.i.not = or i1 %.not.i, %i.an
  br i1 %narrow.i.not, label %bb.m, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.val64 = load ptr, ptr %i.ac, align 8, !tbaa !133 ; 3 uses
  %i.ao = getelementptr inbounds [4 x i8], ptr %.val64, i64 %i.aj
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !16
  %i.aq = trunc i64 %.val65 to i32                ; 2 uses
  %i.ar = and i32 %i.aq, 536870911
  %i.as = sub nsw i32 %i.ai, %i.ar
  %i.at = sext i32 %i.as to i64
  %i.au = getelementptr inbounds [4 x i8], ptr %.val64, i64 %i.at
  %i.av = load i32, ptr %i.au, align 4, !tbaa !16
  %i.aw = lshr i64 %.val65, 32
  %i.ax = trunc nuw i64 %i.aw to i32
  %i.ay = and i32 %i.ax, 536870911
  %i.az = sub nsw i32 %i.ai, %i.ay
  %i.ba = sext i32 %i.az to i64
  %i.bb = getelementptr inbounds [4 x i8], ptr %.val64, i64 %i.ba
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !16 ; 2 uses
  %i.bd = load ptr, ptr %2, align 8, !tbaa !139   ; 3 uses
  %i.be = lshr i32 %i.aq, 29
  %i.bf = and i32 %i.be, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #29
  %i.bg = shl nsw i32 %i.ap, 1                    ; 3 uses
  %i.bh = or disjoint i32 %i.bg, 1                ; 4 uses
  store i32 %i.bh, ptr %i.b, align 4, !tbaa !16
  %i.bi = shl nsw i32 %i.av, 1                    ; 2 uses
  %i.bj = or disjoint i32 %i.bi, %i.bf            ; 2 uses
  store i32 %i.bj, ptr %i.ad, align 4, !tbaa !16
  %i.bk = call noundef range(i32 0, 2) i32 @_Z25glucose2_solver_addclausePN6Gluco210SimpSolverEPii(ptr noundef %i.bd, ptr noundef nonnull readonly %i.b, i32 noundef 2)
  %.not17.i = icmp eq i32 %i.bk, 0
  br i1 %.not17.i, label %bmcg2_sat_solver_add_and.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bl = lshr i64 %.val65, 61
  %i.bm = trunc nuw nsw i64 %i.bl to i32
  %i.bn = and i32 %i.bm, 1
  store i32 %i.bh, ptr %i.b, align 4, !tbaa !16
  %i.bo = shl nsw i32 %i.bc, 1
  %i.bp = or disjoint i32 %i.bo, %i.bn            ; 2 uses
  store i32 %i.bp, ptr %i.ad, align 4, !tbaa !16
  %i.bq = call noundef range(i32 0, 2) i32 @_Z25glucose2_solver_addclausePN6Gluco210SimpSolverEPii(ptr noundef %i.bd, ptr noundef nonnull readonly %i.b, i32 noundef 2)
  %.not18.i = icmp eq i32 %i.bq, 0
  br i1 %.not18.i, label %bmcg2_sat_solver_add_and.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i32 %i.bg, ptr %i.b, align 4, !tbaa !16
  %i.br = xor i32 %i.bj, 1
  store i32 %i.br, ptr %i.ad, align 4, !tbaa !16
  %i.bs = xor i32 %i.bp, 1
  store i32 %i.bs, ptr %i.ae, align 4, !tbaa !16
  %i.bt = call noundef range(i32 0, 2) i32 @_Z25glucose2_solver_addclausePN6Gluco210SimpSolverEPii(ptr noundef %i.bd, ptr noundef nonnull readonly %i.b, i32 noundef 3) ; 0 uses
  br label %bmcg2_sat_solver_add_and.exit

bmcg2_sat_solver_add_and.exit:                    ; preds = %bb.g, %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #29
  %i.bu = load ptr, ptr %i.h, align 8, !tbaa !139 ; 4 uses
  %.not52 = icmp eq ptr %i.bu, null
  br i1 %.not52, label %bb.q, label %bb.j

bb.j:                                             ; preds = %bmcg2_sat_solver_add_and.exit
  %.val59 = load i64, ptr %i.ak, align 4          ; 2 uses
  %i.bv = trunc i64 %.val59 to i32
  %i.bw = lshr i32 %i.bv, 29
  %i.bx = and i32 %i.bw, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  store i32 %i.bh, ptr %i.a, align 4, !tbaa !16
  %i.by = or disjoint i32 %i.bx, %i.bi            ; 2 uses
  store i32 %i.by, ptr %i.af, align 4, !tbaa !16
  %i.bz = call noundef range(i32 0, 2) i32 @_Z25glucose2_solver_addclausePN6Gluco210SimpSolverEPii(ptr noundef nonnull %i.bu, ptr noundef nonnull readonly %i.a, i32 noundef 2)
  %.not17.i74 = icmp eq i32 %i.bz, 0
  br i1 %.not17.i74, label %bmcg2_sat_solver_add_and.exit79, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ca = lshr i64 %.val59, 61
  %i.cb = trunc nuw nsw i64 %i.ca to i32
  %i.cc = and i32 %i.cb, 1
  store i32 %i.bh, ptr %i.a, align 4, !tbaa !16
  %i.cd = shl nsw i32 %i.bc, 1
  %i.ce = or disjoint i32 %i.cc, %i.cd            ; 2 uses
  store i32 %i.ce, ptr %i.af, align 4, !tbaa !16
  %i.cf = call noundef range(i32 0, 2) i32 @_Z25glucose2_solver_addclausePN6Gluco210SimpSolverEPii(ptr noundef nonnull %i.bu, ptr noundef nonnull readonly %i.a, i32 noundef 2)
  %.not18.i75 = icmp eq i32 %i.cf, 0
  br i1 %.not18.i75, label %bmcg2_sat_solver_add_and.exit79, label %bb.l

bb.l:                                             ; preds = %bb.k
  store i32 %i.bg, ptr %i.a, align 4, !tbaa !16
  %i.cg = xor i32 %i.by, 1
  store i32 %i.cg, ptr %i.af, align 4, !tbaa !16
  %i.ch = xor i32 %i.ce, 1
  store i32 %i.ch, ptr %i.ag, align 4, !tbaa !16
  %i.ci = call noundef range(i32 0, 2) i32 @_Z25glucose2_solver_addclausePN6Gluco210SimpSolverEPii(ptr noundef nonnull %i.bu, ptr noundef nonnull readonly %i.a, i32 noundef 3) ; 0 uses
  br label %bmcg2_sat_solver_add_and.exit79

bmcg2_sat_solver_add_and.exit79:                  ; preds = %bb.j, %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  br label %bb.q

bb.m:                                             ; preds = %bb.f
  %i.cj = and i64 %.val65, 2305843005455597567
  %narrow.i80.not = icmp eq i64 %i.cj, 2305843005455597567
  br i1 %narrow.i80.not, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #29
  %.val61 = load ptr, ptr %i.ac, align 8, !tbaa !133
  %i.ck = load i32, ptr %.val61, align 4, !tbaa !16
  %i.cl = shl nsw i32 %i.ck, 1
  %i.cm = or disjoint i32 %i.cl, 1
  store i32 %i.cm, ptr %i.c, align 4, !tbaa !16
  %i.cn = load ptr, ptr %2, align 8, !tbaa !139
  %i.co = call noundef range(i32 0, 2) i32 @_Z25glucose2_solver_addclausePN6Gluco210SimpSolverEPii(ptr noundef %i.cn, ptr noundef nonnull readonly %i.c, i32 noundef 1) ; 0 uses
  %i.cp = load ptr, ptr %i.h, align 8, !tbaa !139 ; 2 uses
  %.not51 = icmp eq ptr %i.cp, null
  br i1 %.not51, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cq = call noundef range(i32 0, 2) i32 @_Z25glucose2_solver_addclausePN6Gluco210SimpSolverEPii(ptr noundef nonnull %i.cp, ptr noundef nonnull readonly %i.c, i32 noundef 1) ; 0 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #29
  br label %bb.q

bb.q:                                             ; preds = %bmcg2_sat_solver_add_and.exit, %bmcg2_sat_solver_add_and.exit79, %bb.p, %bb.m
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.val = load i32, ptr %i.n, align 4, !tbaa !131
  %i.cr = sext i32 %.val to i64
  %i.cs = icmp slt i64 %indvars.iv.next, %i.cr
  br i1 %i.cs, label %bb.e, label %.critedge, !llvm.loop !210

.critedge:                                        ; preds = %bb.e, %bb.q, %bmcg2_sat_solver_set_nvars.exit73
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define noundef i32 @_Z17Gia_ManFactorSop2P10Gia_Man_t_P10Vec_Int_t_P10Vec_Str_t_i(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %2, i64 8
  %.val35 = load ptr, ptr %i.a, align 8, !tbaa !138
  %i.b = tail call ptr @Abc_SopSynthesizeOne(ptr noundef %.val35, i32 noundef 1) #29 ; 6 uses
  %i.c = getelementptr i8, ptr %i.b, i64 32       ; 4 uses
  %.val40 = load ptr, ptr %i.c, align 8, !tbaa !142
  %.val40.fr = freeze ptr %.val40                 ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.val40.fr, i64 8
  store i32 0, ptr %i.d, align 4, !tbaa !215
  %i.e = getelementptr i8, ptr %i.b, i64 16
  %.val41 = load i32, ptr %i.e, align 8, !tbaa !216
  %i.f = getelementptr i8, ptr %i.b, i64 64
  %.val42 = load ptr, ptr %i.f, align 8, !tbaa !140 ; 2 uses
  %i.g = getelementptr i8, ptr %.val42, i64 4
  %.val42.val = load i32, ptr %i.g, align 4, !tbaa !131
  %i.h = sub nsw i32 %.val42.val, %.val41         ; 3 uses
  %.not = icmp eq ptr %.val40.fr, null
  %i.i = icmp slt i32 %i.h, 1
  %or.cond47 = or i1 %.not, %i.i
  br i1 %or.cond47, label %.critedge.preheader, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %bb.a
  %i.j = getelementptr i8, ptr %.val42, i64 8
end_hunk_2
begin_hunk_3_@Gia_ManQuantExist

; Function Attrs: mustprogress nounwind uwtable
define void @_Z26Glucose2_CheckTwoNodesTestP10Gia_Man_t_(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(1688) ptr @_Znwm(i64 noundef 1688) #28 ; 10 uses
  tail call void @_ZN6Gluco210SimpSolverC1Ev(ptr noundef nonnull align 8 dereferenceable(1684) %i.a) #29
  tail call void @_ZN6Gluco26Solver18setIncrementalModeEv(ptr noundef nonnull align 8 dereferenceable(1416) %i.a) #29
  %i.b = getelementptr i8, ptr %0, i64 32         ; 2 uses
  %i.c = getelementptr i8, ptr %0, i64 72         ; 2 uses
  %.val14 = load ptr, ptr %i.b, align 8, !tbaa !142 ; 2 uses
  %.val15 = load ptr, ptr %i.c, align 8, !tbaa !143
  %i.d = getelementptr i8, ptr %.val15, i64 8
  %.val15.val = load ptr, ptr %i.d, align 8, !tbaa !133 ; 2 uses
  %i.e = load i32, ptr %.val15.val, align 4, !tbaa !16 ; 2 uses
  %i.f = sext i32 %i.e to i64
  %i.g = getelementptr inbounds [12 x i8], ptr %.val14, i64 %i.f
  %.val3.i.i = load i64, ptr %i.g, align 4
  %i.h = trunc i64 %.val3.i.i to i32              ; 2 uses
  %i.i = and i32 %i.h, 536870911
  %i.j = sub nsw i32 %i.e, %i.i
  %i.k = lshr i32 %i.h, 29
  %i.l = and i32 %i.k, 1
  %i.m = shl nsw i32 %i.j, 1
  %i.n = or disjoint i32 %i.m, %i.l
  %i.o = getelementptr inbounds nuw i8, ptr %.val15.val, i64 4
  %i.p = load i32, ptr %i.o, align 4, !tbaa !16   ; 2 uses
  %i.q = sext i32 %i.p to i64
  %i.r = getelementptr inbounds [12 x i8], ptr %.val14, i64 %i.q
  %.val3.i.i18 = load i64, ptr %i.r, align 4
  %i.s = trunc i64 %.val3.i.i18 to i32            ; 2 uses
  %i.t = and i32 %i.s, 536870911
  %i.u = sub nsw i32 %i.p, %i.t
  %i.v = lshr i32 %i.s, 29
  %i.w = and i32 %i.v, 1
  %i.x = shl nsw i32 %i.u, 1
  %i.y = or disjoint i32 %i.x, %i.w
  %i.z = tail call i32 @bmcg2_sat_solver_equiv_overlap_check(ptr noundef nonnull %i.a, ptr noundef %0, i32 noundef %i.n, i32 noundef %i.y, i32 noundef 0)
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !15
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8
  tail call void %i.ac(ptr noundef nonnull align 8 dereferenceable(1684) %i.a) #29, !inline_history !144
  %.not12 = icmp eq i32 %i.z, 0
  %.str.36..str.37 = select i1 %.not12, ptr @.str.37, ptr @.str.36
  %i.ad = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.33, ptr noundef nonnull @.str.35, ptr noundef nonnull %.str.36..str.37) ; 0 uses
  %.val14.1 = load ptr, ptr %i.b, align 8, !tbaa !142 ; 2 uses
  %.val15.1 = load ptr, ptr %i.c, align 8, !tbaa !143
  %i.ae = getelementptr i8, ptr %.val15.1, i64 8
  %.val15.val.1 = load ptr, ptr %i.ae, align 8, !tbaa !133 ; 2 uses
  %i.af = load i32, ptr %.val15.val.1, align 4, !tbaa !16 ; 2 uses
  %i.ag = sext i32 %i.af to i64
  %i.ah = getelementptr inbounds [12 x i8], ptr %.val14.1, i64 %i.ag
  %.val3.i.i.1 = load i64, ptr %i.ah, align 4
  %i.ai = trunc i64 %.val3.i.i.1 to i32           ; 2 uses
  %i.aj = and i32 %i.ai, 536870911
  %i.ak = sub nsw i32 %i.af, %i.aj
  %i.al = lshr i32 %i.ai, 29
  %i.am = and i32 %i.al, 1
  %i.an = shl nsw i32 %i.ak, 1
  %i.ao = or disjoint i32 %i.an, %i.am
  %i.ap = getelementptr inbounds nuw i8, ptr %.val15.val.1, i64 4
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !16 ; 2 uses
  %i.ar = sext i32 %i.aq to i64
  %i.as = getelementptr inbounds [12 x i8], ptr %.val14.1, i64 %i.ar
  %.val3.i.i18.1 = load i64, ptr %i.as, align 4
  %i.at = trunc i64 %.val3.i.i18.1 to i32         ; 2 uses
  %i.au = and i32 %i.at, 536870911
  %i.av = sub nsw i32 %i.aq, %i.au
  %i.aw = lshr i32 %i.at, 29
  %i.ax = and i32 %i.aw, 1
  %i.ay = shl nsw i32 %i.av, 1
  %i.az = or disjoint i32 %i.ay, %i.ax
  %i.ba = tail call i32 @bmcg2_sat_solver_equiv_overlap_check(ptr noundef nonnull %i.a, ptr noundef %0, i32 noundef %i.ao, i32 noundef %i.az, i32 noundef 1)
  %i.bb = load ptr, ptr %i.a, align 8, !tbaa !15
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.bd = load ptr, ptr %i.bc, align 8
  tail call void %i.bd(ptr noundef nonnull align 8 dereferenceable(1684) %i.a) #29, !inline_history !144
  %.not12.1 = icmp eq i32 %i.ba, 0
  %.str.36..str.37.1 = select i1 %.not12.1, ptr @.str.37, ptr @.str.36
  %i.be = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.33, ptr noundef nonnull @.str.34, ptr noundef nonnull %.str.36..str.37.1) ; 0 uses
  %i.bf = load ptr, ptr %i.a, align 8, !tbaa !15
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8
  tail call void %i.bh(ptr noundef nonnull align 8 dereferenceable(1684) %i.a) #29, !inline_history !141
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define range(i32 0, 21) i32 @Glucose2_SolveAig(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.timespec, align 8           ; 5 uses
  %3 = alloca %struct.timespec, align 8           ; 5 uses
  %4 = alloca %struct.timespec, align 8           ; 5 uses
  %5 = alloca %struct.timespec, align 8           ; 5 uses
  %6 = alloca %"class.Gluco2::SimpSolver", align 8 ; 22 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  %i.a = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %5) #29
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %_ZL9Abc_Clockv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %5, align 8, !tbaa !99
  %i.d = mul nsw i64 %i.c, 1000000
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !100
  %i.g = sdiv i64 %i.f, 1000
  %i.h = add nsw i64 %i.g, %i.d
  br label %_ZL9Abc_Clockv.exit

_ZL9Abc_Clockv.exit:                              ; preds = %bb.a, %bb.b
  %.0.i = phi i64 [ %i.h, %bb.b ], [ -1, %bb.a ]  ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #29
  call void @_ZN6Gluco210SimpSolverC1Ev(ptr noundef nonnull align 8 dereferenceable(1684) %6) #29
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 3 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !102
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 128
  store i32 %i.j, ptr %i.k, align 8, !tbaa !103
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 132
  store i32 50000, ptr %i.l, align 4, !tbaa !226
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 136
  store i32 0, ptr %i.m, align 8, !tbaa !227
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.o = load i32, ptr %i.n, align 4, !tbaa !104  ; 2 uses
  %i.p = icmp sgt i32 %i.o, 0
  %i.q = zext nneg i32 %i.o to i64
  %spec.select = select i1 %i.p, i64 %i.q, i64 -1
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 360
  %i.s = load i64, ptr %i.r, align 8, !tbaa !89
  %i.t = add nsw i64 %spec.select, %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 1128
  store i64 %i.t, ptr %i.u, align 8, !tbaa !90
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 1416 ; 2 uses
  store i32 1, ptr %i.v, align 8, !tbaa !228
  %i.w = call noundef ptr @_Z21Glucose_SolverFromAigP10Gia_Man_t_RN6Gluco210SimpSolverE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(1684) %6) ; 3 uses
  store i32 0, ptr %i.v, align 8, !tbaa !228
  %i.x = load i32, ptr %i.i, align 4, !tbaa !102
  %.not = icmp eq i32 %i.x, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZL9Abc_Clockv.exit
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str.7) ; 0 uses
  %puts24 = call i32 @puts(ptr nonnull dereferenceable(1) @str.8) ; 0 uses
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 736
  %i.z = load i32, ptr %i.y, align 8, !tbaa !20
  %i.aa = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, i32 noundef %i.z) ; 0 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 608
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !91
  %i.ad = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17, i32 noundef %i.ac) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZL9Abc_Clockv.exit
  %i.ae = load i32, ptr %1, align 4, !tbaa !105
  %.not25 = icmp eq i32 %i.ae, 0
  br i1 %.not25, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.af = call noundef zeroext i1 @_ZN6Gluco210SimpSolver9eliminateEb(ptr noundef nonnull align 8 dereferenceable(1684) %6, i1 noundef zeroext true) #29 ; 0 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 1452
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !88
  %i.ai = getelementptr inbounds nuw i8, ptr %6, i64 1456
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !106
  %i.ak = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.18, i32 noundef %i.ah, i32 noundef %i.aj) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  %i.al = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %4) #29
  %i.am = icmp slt i32 %i.al, 0
  br i1 %i.am, label %_ZL9Abc_Clockv.exit34, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.an = load i64, ptr %4, align 8, !tbaa !99
  %i.ao = mul nsw i64 %i.an, 1000000
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !100
  %i.ar = sdiv i64 %i.aq, 1000
  %i.as = add nsw i64 %i.ar, %i.ao
  br label %_ZL9Abc_Clockv.exit34

_ZL9Abc_Clockv.exit34:                            ; preds = %bb.e, %bb.f
  %.0.i33 = phi i64 [ %i.as, %bb.f ], [ -1, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  %i.at = sub nsw i64 %.0.i33, %.0.i
  call void (i32, ptr, ...) @_ZL9Abc_PrintiPKcz(i32 poison, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.19)
  %i.au = sitofp i64 %i.at to double
  %i.av = fdiv double %i.au, 1.000000e+06
  call void (i32, ptr, ...) @_ZL9Abc_PrintiPKcz(i32 poison, ptr noundef nonnull @.str.40, double noundef %i.av)
  br label %bb.g

bb.g:                                             ; preds = %_ZL9Abc_Clockv.exit34, %bb.d
  %i.aw = getelementptr inbounds nuw i8, ptr %6, i64 760 ; 7 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !23
  %.not.i.i39 = icmp eq ptr %i.ax, null
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %6, i64 768 ; 2 uses
  br i1 %.not.i.i39, label %_ZN6Gluco23vecINS_3LitEE5clearEb.exit.i, label %_ZNK6Gluco23vecINS_3LitEE6copyToERS2_.exit.sink.split

_ZN6Gluco23vecINS_3LitEE5clearEb.exit.i:          ; preds = %bb.g
  %.pre.i = load i32, ptr %.phi.trans.insert.i, align 8, !tbaa !24 ; 3 uses
  %.not.i7.i = icmp slt i32 %.pre.i, 0
  br i1 %.not.i7.i, label %bb.h, label %_ZNK6Gluco23vecINS_3LitEE6copyToERS2_.exit

bb.h:                                             ; preds = %_ZN6Gluco23vecINS_3LitEE5clearEb.exit.i
  %i.ay = getelementptr inbounds nuw i8, ptr %6, i64 772 ; 2 uses
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !26 ; 4 uses
  %.not.i.i.i = icmp slt i32 %i.az, 0
  br i1 %.not.i.i.i, label %bb.i, label %.lr.ph.preheader.i.i

bb.i:                                             ; preds = %bb.h
  %i.ba = sub i32 1, %i.az
  %i.bb = and i32 %i.ba, -2
  %i.bc = ashr i32 %i.az, 1
  %i.bd = and i32 %i.bc, -2
  %i.be = add nsw i32 %i.bd, 2
  %i.bf = call noundef i32 @llvm.smax.i32(i32 %i.be, i32 %i.bb)
  %7 = add nuw nsw i32 %i.bf, %i.az               ; 2 uses
  store i32 %7, ptr %i.ay, align 4, !tbaa !26
  %8 = zext nneg i32 %7 to i64
  %9 = shl nuw nsw i64 %8, 2
  %malloc = call ptr @malloc(i64 %9)              ; 2 uses
  store ptr %malloc, ptr %i.aw, align 8, !tbaa !23
  %10 = icmp eq ptr %malloc, null
  br i1 %10, label %bb.j, label %.lr.ph.preheader.i.i

bb.j:                                             ; preds = %bb.i
  %i.bg = tail call ptr @__errno_location() #31
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !16
  %i.bi = icmp eq i32 %i.bh, 12
  br i1 %i.bi, label %bb.k, label %.lr.ph.preheader.i.i

bb.k:                                             ; preds = %bb.j
  call fastcc void @_ZN6Gluco2L19fatal_out_of_memoryEv()
  unreachable

.lr.ph.preheader.i.i:                             ; preds = %bb.h, %bb.i, %bb.j
  %i.bj = sext i32 %.pre.i to i64                 ; 3 uses
  %i.bk = sub nsw i64 0, %i.bj
  %xtraiter = and i64 %i.bk, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.preheader.i.i, %.lr.ph.i.i.prol
  %indvars.iv.i.i.prol = phi i64 [ %indvars.iv.next.i.i.prol, %.lr.ph.i.i.prol ], [ %i.bj, %.lr.ph.preheader.i.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.preheader.i.i ]
  %i.bl = load ptr, ptr %i.aw, align 8, !tbaa !23
  %i.bm = getelementptr inbounds [4 x i8], ptr %i.bl, i64 %indvars.iv.i.i.prol
  store i32 0, ptr %i.bm, align 4
  %indvars.iv.next.i.i.prol = add nsw i64 %indvars.iv.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !224

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.preheader.i.i
  %indvars.iv.i.i.unr = phi i64 [ %i.bj, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i.prol, %.lr.ph.i.i.prol ]
  %i.bn = icmp ugt i32 %.pre.i, -4
  br i1 %i.bn, label %_ZNK6Gluco23vecINS_3LitEE6copyToERS2_.exit.sink.split, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.3, %.lr.ph.i.i ], [ %indvars.iv.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 5 uses
  %i.bo = load ptr, ptr %i.aw, align 8, !tbaa !23
  %i.bp = getelementptr inbounds [4 x i8], ptr %i.bo, i64 %indvars.iv.i.i
  store i32 0, ptr %i.bp, align 4
  %i.bq = load ptr, ptr %i.aw, align 8, !tbaa !23
  %i.br = getelementptr [4 x i8], ptr %i.bq, i64 %indvars.iv.i.i
  %i.bs = getelementptr i8, ptr %i.br, i64 4
  store i32 0, ptr %i.bs, align 4
  %i.bt = load ptr, ptr %i.aw, align 8, !tbaa !23
  %i.bu = getelementptr [4 x i8], ptr %i.bt, i64 %indvars.iv.i.i
  %i.bv = getelementptr i8, ptr %i.bu, i64 8
  store i32 0, ptr %i.bv, align 4
  %i.bw = load ptr, ptr %i.aw, align 8, !tbaa !23
  %i.bx = getelementptr [4 x i8], ptr %i.bw, i64 %indvars.iv.i.i
  %i.by = getelementptr i8, ptr %i.bx, i64 12
  store i32 0, ptr %i.by, align 4
  %indvars.iv.next.i.i.3 = add nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.3, 0
  br i1 %exitcond.not.i.i.3, label %_ZNK6Gluco23vecINS_3LitEE6copyToERS2_.exit.sink.split, label %.lr.ph.i.i, !llvm.loop !4

_ZNK6Gluco23vecINS_3LitEE6copyToERS2_.exit.sink.split: ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.g
  store i32 0, ptr %.phi.trans.insert.i, align 8, !tbaa !24
  br label %_ZNK6Gluco23vecINS_3LitEE6copyToERS2_.exit

_ZNK6Gluco23vecINS_3LitEE6copyToERS2_.exit:       ; preds = %_ZNK6Gluco23vecINS_3LitEE6copyToERS2_.exit.sink.split, %_ZN6Gluco23vecINS_3LitEE5clearEb.exit.i
  %i.bz = call i8 @_ZN6Gluco210SimpSolver6solve_Ebb(ptr noundef nonnull align 8 dereferenceable(1684) %6, i1 noundef zeroext false, i1 noundef zeroext false) #29 ; 2 uses
  %i.ca = load i32, ptr %i.i, align 4, !tbaa !102
  %.not26 = icmp eq i32 %i.ca, 0
  br i1 %.not26, label %bb.n, label %bb.l

bb.l:                                             ; preds = %_ZNK6Gluco23vecINS_3LitEE6copyToERS2_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  %i.cb = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %3) #29
  %i.cc = icmp slt i32 %i.cb, 0
  br i1 %i.cc, label %_ZL9Abc_Clockv.exit36, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cd = load i64, ptr %3, align 8, !tbaa !99
  %i.ce = mul nsw i64 %i.cd, 1000000
  %i.cf = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !100
  %i.ch = sdiv i64 %i.cg, 1000
  %i.ci = add nsw i64 %i.ch, %i.ce
  br label %_ZL9Abc_Clockv.exit36

_ZL9Abc_Clockv.exit36:                            ; preds = %bb.l, %bb.m
  %.0.i35 = phi i64 [ %i.ci, %bb.m ], [ -1, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  %i.cj = sub nsw i64 %.0.i35, %.0.i
  call void @_Z20glucose2_print_statsRN6Gluco210SimpSolverEl(ptr noundef nonnull align 8 dereferenceable(1684) %6, i64 noundef %i.cj)
  br label %bb.n

bb.n:                                             ; preds = %_ZL9Abc_Clockv.exit36, %_ZNK6Gluco23vecINS_3LitEE6copyToERS2_.exit
  %i.ck = icmp eq i8 %i.bz, 0                     ; 3 uses
  %i.cl = icmp eq i8 %i.bz, 1                     ; 2 uses
  %.str.21..str.22 = select i1 %i.cl, ptr @.str.21, ptr @.str.22
  %i.cm = select i1 %i.ck, ptr @.str.20, ptr %.str.21..str.22
  %i.cn = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) %i.cm) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  %i.co = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %2) #29
  %i.cp = icmp slt i32 %i.co, 0
  br i1 %i.cp, label %_ZL9Abc_Clockv.exit38, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cq = load i64, ptr %2, align 8, !tbaa !99
  %i.cr = mul nsw i64 %i.cq, 1000000
  %i.cs = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !100
  %i.cu = sdiv i64 %i.ct, 1000
  %i.cv = add nsw i64 %i.cu, %i.cr
  br label %_ZL9Abc_Clockv.exit38

_ZL9Abc_Clockv.exit38:                            ; preds = %bb.n, %bb.o
  %.0.i37 = phi i64 [ %i.cv, %bb.o ], [ -1, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  %i.cw = sub nsw i64 %.0.i37, %.0.i
  call void (i32, ptr, ...) @_ZL9Abc_PrintiPKcz(i32 poison, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.23)
  %i.cx = sitofp i64 %i.cw to double
  %i.cy = fdiv double %i.cx, 1.000000e+06
  call void (i32, ptr, ...) @_ZL9Abc_PrintiPKcz(i32 poison, ptr noundef nonnull @.str.40, double noundef %i.cy)
  br i1 %i.ck, label %bb.p, label %.critedge

bb.p:                                             ; preds = %_ZL9Abc_Clockv.exit38
  %i.cz = getelementptr i8, ptr %0, i64 64        ; 2 uses
  %.val29 = load ptr, ptr %i.cz, align 8, !tbaa !140
  %i.da = getelementptr i8, ptr %.val29, i64 4
  %.val29.val = load i32, ptr %i.da, align 4, !tbaa !131
  %i.db = call ptr @Abc_CexAlloc(i32 noundef 0, i32 noundef %.val29.val, i32 noundef 1) #29 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 376
  store ptr %i.db, ptr %i.dc, align 8, !tbaa !229
  %i.dd = load ptr, ptr %i.cz, align 8, !tbaa !140 ; 2 uses
  %i.de = getelementptr i8, ptr %i.dd, i64 4      ; 2 uses
  %.val57 = load i32, ptr %i.de, align 4, !tbaa !131 ; 2 uses
  %i.df = icmp sgt i32 %.val57, 0
  br i1 %i.df, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.p
  %i.dg = getelementptr i8, ptr %0, i64 32
  %.val31 = load ptr, ptr %i.dg, align 8, !tbaa !142
  %.not27 = icmp eq ptr %.val31, null
  %i.dh = getelementptr inbounds nuw i8, ptr %6, i64 96
  %i.di = load ptr, ptr %i.dh, align 8
  %i.dj = getelementptr inbounds nuw i8, ptr %i.db, i64 20
  br i1 %.not27, label %.critedge, label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.dk = getelementptr i8, ptr %i.w, i64 8
  %i.dl = getelementptr i8, ptr %i.dd, i64 8
  %.val32.val = load ptr, ptr %i.dl, align 8, !tbaa !133
  %.val28 = load ptr, ptr %i.dk, align 8, !tbaa !133
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph.split, %bb.s
  %.val61 = phi i32 [ %.val57, %.lr.ph.split ], [ %.val, %bb.s ]
  %indvars.iv = phi i64 [ 0, %.lr.ph.split ], [ %indvars.iv.next, %bb.s ] ; 4 uses
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %.val32.val, i64 %indvars.iv
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !16
  %i.do = sext i32 %i.dn to i64
  %i.dp = getelementptr inbounds [4 x i8], ptr %.val28, i64 %i.do
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !16
  %i.dr = sext i32 %i.dq to i64
  %i.ds = getelementptr inbounds i8, ptr %i.di, i64 %i.dr
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !65
  %i.du = icmp eq i8 %i.dt, 0
  br i1 %i.du, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.dv = trunc nuw nsw i64 %indvars.iv to i32
  %i.dw = and i32 %i.dv, 31
  %i.dx = shl nuw i32 1, %i.dw
  %i.dy = lshr i64 %indvars.iv, 5
  %i.dz = and i64 %i.dy, 134217727
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.dj, i64 %i.dz ; 2 uses
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !16
  %i.ec = or i32 %i.eb, %i.dx
  store i32 %i.ec, ptr %i.ea, align 4, !tbaa !16
  %.val.pre = load i32, ptr %i.de, align 4, !tbaa !131
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.r
  %.val = phi i32 [ %.val61, %bb.q ], [ %.val.pre, %bb.r ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ed = sext i32 %.val to i64
  %i.ee = icmp slt i64 %indvars.iv.next, %i.ed
  br i1 %i.ee, label %bb.q, label %.critedge, !llvm.loop !225

.critedge:                                        ; preds = %bb.s, %bb.p, %.lr.ph, %_ZL9Abc_Clockv.exit38
  %i.ef = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !133 ; 2 uses
  %.not.i = icmp eq ptr %i.eg, null
  br i1 %.not.i, label %_ZL11Vec_IntFreeP10Vec_Int_t_.exit, label %bb.t

bb.t:                                             ; preds = %.critedge
  call void @free(ptr noundef nonnull %i.eg) #29
  br label %_ZL11Vec_IntFreeP10Vec_Int_t_.exit

_ZL11Vec_IntFreeP10Vec_Int_t_.exit:               ; preds = %.critedge, %bb.t
  call void @free(ptr noundef nonnull %i.w) #29
  %i.eh = select i1 %i.cl, i32 20, i32 0
  %i.ei = select i1 %i.ck, i32 10, i32 %i.eh
  call void @_ZN6Gluco210SimpSolverD1Ev(ptr noundef nonnull align 8 dead_on_return(1684) dereferenceable(1684) %6) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  ret i32 %i.ei
}

declare ptr @Abc_CexAlloc(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNK6Gluco23vecINS_3LitEE6copyToERS2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !23     ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  br i1 %.not.i, label %._ZN6Gluco23vecINS_3LitEE5clearEb.exit_crit_edge, label %.preheader.i

._ZN6Gluco23vecINS_3LitEE5clearEb.exit_crit_edge: ; preds = %bb.a
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !24
end_hunk_3
