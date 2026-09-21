Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/AbcGlucose?download=true
inline.NumInlined: 549
inline.NumDeleted: 128
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_Z18Glucose_ReadDimacsPcRN5Gluco10SimpSolverE:bb.a
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
  %i.ar = tail call ptr @realloc(ptr noundef %i.an, i64 noundef %i.aq) #29 ; 3 uses
  store ptr %i.ar, ptr %i.a, align 8, !tbaa !23
  %i.as = icmp eq ptr %i.ar, null
  br i1 %i.as, label %.loopexit56, label %._ZN5Gluco3vecINS_3LitEE4pushERKS1_.exit_crit_edge

._ZN5Gluco3vecINS_3LitEE4pushERKS1_.exit_crit_edge: ; preds = %bb.i
  %.pre60 = load i32, ptr %i.e, align 8, !tbaa !24
  br label %_ZN5Gluco3vecINS_3LitEE4pushERKS1_.exit

.loopexit56:                                      ; preds = %bb.h, %bb.i
  tail call fastcc void @_ZN5GlucoL19fatal_out_of_memoryEv()
  unreachable

_ZN5Gluco3vecINS_3LitEE4pushERKS1_.exit:          ; preds = %._ZN5Gluco3vecINS_3LitEE4pushERKS1_.exit_crit_edge, %._ZN5Gluco3vecINS_3LitEE8capacityEi.exit_crit_edge.i
  %i.at = phi i32 [ %i.ae, %._ZN5Gluco3vecINS_3LitEE8capacityEi.exit_crit_edge.i ], [ %.pre60, %._ZN5Gluco3vecINS_3LitEE4pushERKS1_.exit_crit_edge ] ; 2 uses
  %i.au = phi ptr [ %.pre.i, %._ZN5Gluco3vecINS_3LitEE8capacityEi.exit_crit_edge.i ], [ %i.ar, %._ZN5Gluco3vecINS_3LitEE4pushERKS1_.exit_crit_edge ]
  %i.av = add nsw i32 %i.at, 1
  store i32 %i.av, ptr %i.e, align 8, !tbaa !24
  %i.aw = sext i32 %i.at to i64
  %i.ax = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.aw
  store i32 %i.ad, ptr %i.ax, align 4, !tbaa !16
  br label %_ZN5Gluco3vecINS_3LitEE5clearEb.exit54

_ZN5Gluco3vecINS_3LitEE5clearEb.exit54:           ; preds = %.preheader.i53, %_ZN5Gluco10SimpSolver6addVarEi.exit, %bb.e, %_ZN5Gluco3vecINS_3LitEE4pushERKS1_.exit
  %.1 = phi i32 [ %i.ab, %_ZN5Gluco3vecINS_3LitEE4pushERKS1_.exit ], [ %.0, %bb.e ], [ %.0, %_ZN5Gluco10SimpSolver6addVarEi.exit ], [ %.0, %.preheader.i53 ]
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %_ZN5Gluco3vecINS_3LitEE5clearEb.exit54
  %.5 = phi ptr [ %spec.select, %_ZN5Gluco3vecINS_3LitEE5clearEb.exit54 ], [ %i.ba, %bb.j ] ; 3 uses
  %i.ay = load i8, ptr %.5, align 1, !tbaa !63
  %i.az = add i8 %i.ay, -48
  %or.cond = icmp ult i8 %i.az, 10
  %i.ba = getelementptr inbounds nuw i8, ptr %.5, i64 1
  br i1 %or.cond, label %bb.j, label %.critedge2, !llvm.loop !167

.critedge2:                                       ; preds = %bb.c, %bb.j
  %.6 = phi ptr [ %.5, %bb.j ], [ %.141, %bb.c ]
  %.2 = phi i32 [ %.1, %bb.j ], [ %.0, %bb.c ]
  %i.bb = getelementptr inbounds nuw i8, ptr %.6, i64 1
  br label %bb.b, !llvm.loop !168

bb.k:                                             ; preds = %bb.b
  %.not49 = icmp eq ptr %i.b, null
  br i1 %.not49, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @free(ptr noundef nonnull %i.b) #28
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  ret void
}

declare ptr @Extra_FileReadContents(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: mustprogress nounwind uwtable
define void @Glucose_SolveCnf(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.timespec, align 8           ; 5 uses
  %4 = alloca %struct.timespec, align 8           ; 5 uses
  %5 = alloca %"class.Gluco::vec.0", align 8      ; 6 uses
  %6 = alloca %struct.timespec, align 8           ; 5 uses
  %7 = alloca %struct.timespec, align 8           ; 5 uses
  %8 = alloca %"class.Gluco::SimpSolver", align 8 ; 19 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  %i.a = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %7) #28
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %_ZL9Abc_Clockv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %7, align 8, !tbaa !86
  %i.d = mul nsw i64 %i.c, 1000000
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !87
  %i.g = sdiv i64 %i.f, 1000
  %i.h = add nsw i64 %i.g, %i.d
  br label %_ZL9Abc_Clockv.exit

_ZL9Abc_Clockv.exit:                              ; preds = %bb.a, %bb.b
  %.0.i = phi i64 [ %i.h, %bb.b ], [ -1, %bb.a ]  ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  call void @_ZN5Gluco10SimpSolverC1Ev(ptr noundef nonnull align 8 dereferenceable(1484) %8) #28
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 3 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !89
  %i.k = getelementptr inbounds nuw i8, ptr %8, i64 128
  store i32 %i.j, ptr %i.k, align 8, !tbaa !90
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.m = load i32, ptr %i.l, align 4, !tbaa !91   ; 2 uses
  %i.n = icmp sgt i32 %i.m, 0
  %i.o = zext nneg i32 %i.m to i64
  %spec.select = select i1 %i.n, i64 %i.o, i64 -1
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 360
  %i.q = load i64, ptr %i.p, align 8, !tbaa !77
  %i.r = add nsw i64 %spec.select, %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 1128
  store i64 %i.r, ptr %i.s, align 8, !tbaa !78
  call void @_Z18Glucose_ReadDimacsPcRN5Gluco10SimpSolverE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(1484) %8)
  %i.t = load i32, ptr %i.i, align 4, !tbaa !89
  %.not = icmp eq i32 %i.t, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZL9Abc_Clockv.exit
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str.8) ; 0 uses
  %puts13 = call i32 @puts(ptr nonnull dereferenceable(1) @str.9) ; 0 uses
  %i.u = getelementptr inbounds nuw i8, ptr %8, i64 736
  %i.v = load i32, ptr %i.u, align 8, !tbaa !20
  %i.w = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, i32 noundef %i.v) ; 0 uses
  %i.x = getelementptr inbounds nuw i8, ptr %8, i64 608
  %i.y = load i32, ptr %i.x, align 8, !tbaa !79
  %i.z = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17, i32 noundef %i.y) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZL9Abc_Clockv.exit
  %i.aa = load i32, ptr %1, align 4, !tbaa !92
  %.not14 = icmp eq i32 %i.aa, 0
  br i1 %.not14, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ab = call noundef zeroext i1 @_ZN5Gluco10SimpSolver9eliminateEb(ptr noundef nonnull align 8 dereferenceable(1484) %8, i1 noundef zeroext true) #28 ; 0 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %8, i64 1252
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !76
  %i.ae = getelementptr inbounds nuw i8, ptr %8, i64 1256
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !93
  %i.ag = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.18, i32 noundef %i.ad, i32 noundef %i.af) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  %i.ah = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %6) #28
  %i.ai = icmp slt i32 %i.ah, 0
  br i1 %i.ai, label %_ZL9Abc_Clockv.exit19, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aj = load i64, ptr %6, align 8, !tbaa !86
  %i.ak = mul nsw i64 %i.aj, 1000000
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.am = load i64, ptr %i.al, align 8, !tbaa !87
  %i.an = sdiv i64 %i.am, 1000
  %i.ao = add nsw i64 %i.an, %i.ak
  br label %_ZL9Abc_Clockv.exit19

_ZL9Abc_Clockv.exit19:                            ; preds = %bb.e, %bb.f
  %.0.i18 = phi i64 [ %i.ao, %bb.f ], [ -1, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  %i.ap = sub nsw i64 %.0.i18, %.0.i
  call void (i32, ptr, ...) @_ZL9Abc_PrintiPKcz(i32 poison, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.19)
  %i.aq = sitofp i64 %i.ap to double
  %i.ar = fdiv double %i.aq, 1.000000e+06
  call void (i32, ptr, ...) @_ZL9Abc_PrintiPKcz(i32 poison, ptr noundef nonnull @.str.43, double noundef %i.ar)
  %.not15 = icmp eq i32 %2, 0
  br i1 %.not15, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZL9Abc_Clockv.exit19
  %i.as = call ptr @Extra_FileNameGenericAppend(ptr noundef %0, ptr noundef nonnull @.str.20) #28 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  call void @_ZN5Gluco6Solver8toDimacsEPKcRKNS_3vecINS_3LitEEE(ptr noundef nonnull align 8 dereferenceable(1216) %8, ptr noundef %i.as, ptr noundef nonnull align 8 dereferenceable(16) %5) #28
  %i.at = load ptr, ptr %5, align 8, !tbaa !23    ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.at, null
  br i1 %.not.i.i.i, label %_ZN5Gluco6Solver8toDimacsEPKc.exit, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.g
  %i.au = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 0, ptr %i.au, align 8, !tbaa !24
  call void @free(ptr noundef nonnull %i.at) #28
  br label %_ZN5Gluco6Solver8toDimacsEPKc.exit

_ZN5Gluco6Solver8toDimacsEPKc.exit:               ; preds = %bb.g, %.preheader.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  %i.av = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.21, ptr noundef %i.as) ; 0 uses
  %puts17 = call i32 @puts(ptr nonnull dereferenceable(1) @str.2) ; 0 uses
  br label %bb.q

bb.h:                                             ; preds = %_ZL9Abc_Clockv.exit19, %bb.d
  %i.aw = getelementptr inbounds nuw i8, ptr %8, i64 760 ; 7 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !23
  %.not.i.i24 = icmp eq ptr %i.ax, null
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %8, i64 768 ; 2 uses
  br i1 %.not.i.i24, label %_ZN5Gluco3vecINS_3LitEE5clearEb.exit.i, label %_ZNK5Gluco3vecINS_3LitEE6copyToERS2_.exit.sink.split

_ZN5Gluco3vecINS_3LitEE5clearEb.exit.i:           ; preds = %bb.h
  %.pre.i = load i32, ptr %.phi.trans.insert.i, align 8, !tbaa !24 ; 3 uses
  %.not.i7.i = icmp slt i32 %.pre.i, 0
  br i1 %.not.i7.i, label %bb.i, label %_ZNK5Gluco3vecINS_3LitEE6copyToERS2_.exit

bb.i:                                             ; preds = %_ZN5Gluco3vecINS_3LitEE5clearEb.exit.i
  %i.ay = getelementptr inbounds nuw i8, ptr %8, i64 772 ; 2 uses
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !26 ; 5 uses
  %.not.i.i.i26 = icmp slt i32 %i.az, 0
  br i1 %.not.i.i.i26, label %bb.j, label %.lr.ph.preheader.i.i

bb.j:                                             ; preds = %bb.i
  %i.ba = sub i32 1, %i.az
  %i.bb = and i32 %i.ba, -2
  %i.bc = ashr i32 %i.az, 1
  %i.bd = and i32 %i.bc, -2
  %i.be = add nsw i32 %i.bd, 2
  %i.bf = call noundef i32 @llvm.smax.i32(i32 %i.be, i32 %i.bb) ; 2 uses
  %9 = sub nsw i32 2147483647, %i.az
  %10 = icmp samesign ugt i32 %i.bf, %9
  br i1 %10, label %bb.l, label %11

11:                                               ; preds = %bb.j
  %12 = add nuw nsw i32 %i.bf, %i.az              ; 2 uses
  store i32 %12, ptr %i.ay, align 4, !tbaa !26
  %13 = zext nneg i32 %12 to i64
  %14 = shl nuw nsw i64 %13, 2
  %malloc = call ptr @malloc(i64 %14)             ; 2 uses
  store ptr %malloc, ptr %i.aw, align 8, !tbaa !23
  %15 = icmp eq ptr %malloc, null
  br i1 %15, label %bb.k, label %.lr.ph.preheader.i.i

bb.k:                                             ; preds = %11
  %i.bg = tail call ptr @__errno_location() #30
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !16
  %i.bi = icmp eq i32 %i.bh, 12
  br i1 %i.bi, label %bb.l, label %.lr.ph.preheader.i.i

bb.l:                                             ; preds = %bb.k, %bb.j
  call fastcc void @_ZN5GlucoL19fatal_out_of_memoryEv()
  unreachable

.lr.ph.preheader.i.i:                             ; preds = %bb.i, %11, %bb.k
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
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !169

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.preheader.i.i
  %indvars.iv.i.i.unr = phi i64 [ %i.bj, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i.prol, %.lr.ph.i.i.prol ]
  %i.bn = icmp ugt i32 %.pre.i, -4
  br i1 %i.bn, label %_ZNK5Gluco3vecINS_3LitEE6copyToERS2_.exit.sink.split, label %.lr.ph.i.i

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
  br i1 %exitcond.not.i.i.3, label %_ZNK5Gluco3vecINS_3LitEE6copyToERS2_.exit.sink.split, label %.lr.ph.i.i, !llvm.loop !4

_ZNK5Gluco3vecINS_3LitEE6copyToERS2_.exit.sink.split: ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.h
  store i32 0, ptr %.phi.trans.insert.i, align 8, !tbaa !24
  br label %_ZNK5Gluco3vecINS_3LitEE6copyToERS2_.exit

_ZNK5Gluco3vecINS_3LitEE6copyToERS2_.exit:        ; preds = %_ZNK5Gluco3vecINS_3LitEE6copyToERS2_.exit.sink.split, %_ZN5Gluco3vecINS_3LitEE5clearEb.exit.i
  %i.bz = call i8 @_ZN5Gluco10SimpSolver6solve_Ebb(ptr noundef nonnull align 8 dereferenceable(1484) %8, i1 noundef zeroext false, i1 noundef zeroext false) #28 ; 2 uses
  %i.ca = load i32, ptr %i.i, align 4, !tbaa !89
  %.not16 = icmp eq i32 %i.ca, 0
  br i1 %.not16, label %bb.o, label %bb.m

bb.m:                                             ; preds = %_ZNK5Gluco3vecINS_3LitEE6copyToERS2_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  %i.cb = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %4) #28
  %i.cc = icmp slt i32 %i.cb, 0
  br i1 %i.cc, label %_ZL9Abc_Clockv.exit21, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cd = load i64, ptr %4, align 8, !tbaa !86
  %i.ce = mul nsw i64 %i.cd, 1000000
  %i.cf = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !87
  %i.ch = sdiv i64 %i.cg, 1000
  %i.ci = add nsw i64 %i.ch, %i.ce
  br label %_ZL9Abc_Clockv.exit21

_ZL9Abc_Clockv.exit21:                            ; preds = %bb.m, %bb.n
  %.0.i20 = phi i64 [ %i.ci, %bb.n ], [ -1, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  %i.cj = sub nsw i64 %.0.i20, %.0.i
  call void @_Z19glucose_print_statsRN5Gluco10SimpSolverEl(ptr noundef nonnull align 8 dereferenceable(1484) %8, i64 noundef %i.cj)
  br label %bb.o

bb.o:                                             ; preds = %_ZL9Abc_Clockv.exit21, %_ZNK5Gluco3vecINS_3LitEE6copyToERS2_.exit
  %i.ck = icmp eq i8 %i.bz, 0
  %i.cl = icmp eq i8 %i.bz, 1
  %.str.24..str.25 = select i1 %i.cl, ptr @.str.24, ptr @.str.25
  %i.cm = select i1 %i.ck, ptr @.str.23, ptr %.str.24..str.25
  %i.cn = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) %i.cm) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %i.co = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %3) #28
  %i.cp = icmp slt i32 %i.co, 0
  br i1 %i.cp, label %_ZN5Gluco3vecINS_3LitEED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cq = load i64, ptr %3, align 8, !tbaa !86
  %i.cr = mul nsw i64 %i.cq, 1000000
  %i.cs = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !87
  %i.cu = sdiv i64 %i.ct, 1000
  %i.cv = add nsw i64 %i.cu, %i.cr
  br label %_ZN5Gluco3vecINS_3LitEED2Ev.exit

_ZN5Gluco3vecINS_3LitEED2Ev.exit:                 ; preds = %bb.p, %bb.o
  %.0.i22 = phi i64 [ %i.cv, %bb.p ], [ -1, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  %i.cw = sub nsw i64 %.0.i22, %.0.i
  call void (i32, ptr, ...) @_ZL9Abc_PrintiPKcz(i32 poison, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.26)
  %i.cx = sitofp i64 %i.cw to double
  %i.cy = fdiv double %i.cx, 1.000000e+06
  call void (i32, ptr, ...) @_ZL9Abc_PrintiPKcz(i32 poison, ptr noundef nonnull @.str.43, double noundef %i.cy)
  br label %bb.q

bb.q:                                             ; preds = %_ZN5Gluco3vecINS_3LitEED2Ev.exit, %_ZN5Gluco6Solver8toDimacsEPKc.exit
  call void @_ZN5Gluco10SimpSolverD1Ev(ptr noundef nonnull align 8 dead_on_return(1484) dereferenceable(1484) %8) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  ret void
}

declare ptr @Extra_FileNameGenericAppend(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZN5Gluco10SimpSolverD1Ev(ptr noundef nonnull align 8 dead_on_return(1484) dereferenceable(1484)) unnamed_addr #11

; Function Attrs: mustprogress nounwind uwtable
define noalias noundef ptr @_Z21Glucose_SolverFromAigP10Gia_Man_t_RN5Gluco10SimpSolverE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(1484) %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.timespec, align 8           ; 5 uses
  %3 = alloca %struct.timespec, align 8           ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %i.a = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %3) #28
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %_ZL9Abc_Clockv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %3, align 8, !tbaa !86
  %.neg35 = mul i64 %i.c, -1000000
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !87
  %.neg = sdiv i64 %i.e, -1000
  %.neg36 = add i64 %.neg, %.neg35
  br label %_ZL9Abc_Clockv.exit

_ZL9Abc_Clockv.exit:                              ; preds = %bb.a, %bb.b
  %.0.i.neg = phi i64 [ %.neg36, %bb.b ], [ 1, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 5 uses
  %i.g = call ptr @Mf_ManGenerateCnf(ptr noundef %0, i32 noundef 8, i32 noundef 0, i32 noundef 1, i32 noundef 0, i32 noundef 0) #28 ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !99   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 736 ; 4 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !20
  %.not1.i.not = icmp sgt i32 %i.i, %i.k
  br i1 %.not1.i.not, label %.lr.ph.i, label %_ZN5Gluco10SimpSolver6addVarEi.exit

.lr.ph.i:                                         ; preds = %_ZL9Abc_Clockv.exit, %.lr.ph.i
  %i.l = call noundef i32 @_ZN5Gluco10SimpSolver6newVarEbb(ptr noundef nonnull align 8 dereferenceable(1484) %1, i1 noundef zeroext true, i1 noundef zeroext true) #28 ; 0 uses
  %i.m = load i32, ptr %i.j, align 8, !tbaa !20
  %.not.i.not = icmp sgt i32 %i.i, %i.m
  br i1 %.not.i.not, label %.lr.ph.i, label %_ZN5Gluco10SimpSolver6addVarEi.exit, !llvm.loop !3

_ZN5Gluco10SimpSolver6addVarEi.exit:              ; preds = %.lr.ph.i, %_ZL9Abc_Clockv.exit
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !100  ; 2 uses
  %i.p = icmp sgt i32 %i.o, 0
  br i1 %i.p, label %.lr.ph44, label %._crit_edge45

.lr.ph44:                                         ; preds = %_ZN5Gluco10SimpSolver6addVarEi.exit
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 84 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 1080 ; 2 uses
  br label %bb.d

._crit_edge45:                                    ; preds = %._crit_edge, %_ZN5Gluco10SimpSolver6addVarEi.exit
  %i.u = phi i32 [ %i.o, %_ZN5Gluco10SimpSolver6addVarEi.exit ], [ %i.bb, %._crit_edge ]
  %i.v = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !101
  %i.x = getelementptr i8, ptr %0, i64 24
  %.val = load i32, ptr %i.x, align 8, !tbaa !117 ; 3 uses
  %i.y = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #31 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  store i32 %.val, ptr %i.z, align 4, !tbaa !118
  store i32 %.val, ptr %i.y, align 8, !tbaa !119
  %i.aa = sext i32 %.val to i64
  %i.ab = shl nsw i64 %i.aa, 2                    ; 2 uses
  %i.ac = call noalias ptr @malloc(i64 noundef %i.ab) #31 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store ptr %i.ac, ptr %i.ad, align 8, !tbaa !120
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.ac, ptr readonly align 4 %i.w, i64 %i.ab, i1 false)
  %i.ae = load i32, ptr %i.h, align 8, !tbaa !99
  %i.af = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !172
  %i.ah = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.27, i32 noundef %i.ae, i32 noundef %i.u, i32 noundef %i.ag) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  %i.ai = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %2) #28
  %i.aj = icmp slt i32 %i.ai, 0
  br i1 %i.aj, label %_ZL9Abc_Clockv.exit29, label %bb.c

bb.c:                                             ; preds = %._crit_edge45
  %i.ak = load i64, ptr %2, align 8, !tbaa !86
  %i.al = mul nsw i64 %i.ak, 1000000
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.an = load i64, ptr %i.am, align 8, !tbaa !87
  %i.ao = sdiv i64 %i.an, 1000
  %i.ap = add nsw i64 %i.ao, %i.al
  br label %_ZL9Abc_Clockv.exit29

end_hunk_0
begin_hunk_1_@_Z21Glucose_GenerateCubesPPvP10Vec_Int_t_S2_i:bb.a
  %i.fi = load i32, ptr %i.b, align 8, !tbaa !124
  %i.fj = icmp eq i32 %i.fh, %i.fi
  br i1 %i.fj, label %bb.aj, label %_ZL11Vec_StrFreeP10Vec_Str_t_.exit._ZL11Vec_StrPushP10Vec_Str_t_c.exit_crit_edge

_ZL11Vec_StrFreeP10Vec_Str_t_.exit._ZL11Vec_StrPushP10Vec_Str_t_c.exit_crit_edge: ; preds = %_ZL11Vec_StrFreeP10Vec_Str_t_.exit
  %.pre134 = load ptr, ptr %i.e, align 8, !tbaa !125
  br label %_ZL11Vec_StrPushP10Vec_Str_t_c.exit

bb.aj:                                            ; preds = %_ZL11Vec_StrFreeP10Vec_Str_t_.exit
  %i.fk = icmp slt i32 %i.fh, 16
  br i1 %i.fk, label %bb.ak, label %bb.an

bb.ak:                                            ; preds = %bb.aj
  %i.fl = load ptr, ptr %i.e, align 8, !tbaa !125 ; 2 uses
  %.not9.i.i94 = icmp eq ptr %i.fl, null
  br i1 %.not9.i.i94, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.fm = call dereferenceable_or_null(16) ptr @realloc(ptr noundef nonnull %i.fl, i64 noundef 16) #29
  br label %_ZL11Vec_StrGrowP10Vec_Str_t_i.exit11.sink.split.i

bb.am:                                            ; preds = %bb.ak
  %i.fn = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #31
  br label %_ZL11Vec_StrGrowP10Vec_Str_t_i.exit11.sink.split.i

bb.an:                                            ; preds = %bb.aj
  %i.fo = icmp samesign ult i32 %i.fh, 1073741823
  %i.fp = shl nuw nsw i32 %i.fh, 1
  %spec.select.i90 = select i1 %i.fo, i32 %i.fp, i32 2147483647 ; 4 uses
  %.not.i9.i91 = icmp samesign ult i32 %i.fh, %spec.select.i90
  %.pre135 = load ptr, ptr %i.e, align 8, !tbaa !125 ; 3 uses
  br i1 %.not.i9.i91, label %bb.ao, label %_ZL11Vec_StrPushP10Vec_Str_t_c.exit

bb.ao:                                            ; preds = %bb.an
  %.not9.i10.i92 = icmp eq ptr %.pre135, null
  %i.fq = zext nneg i32 %spec.select.i90 to i64   ; 2 uses
  br i1 %.not9.i10.i92, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.fr = call ptr @realloc(ptr noundef nonnull %.pre135, i64 noundef %i.fq) #29
  br label %_ZL11Vec_StrGrowP10Vec_Str_t_i.exit11.sink.split.i

bb.aq:                                            ; preds = %bb.ao
  %i.fs = call noalias ptr @malloc(i64 noundef %i.fq) #31
  br label %_ZL11Vec_StrGrowP10Vec_Str_t_i.exit11.sink.split.i

_ZL11Vec_StrGrowP10Vec_Str_t_i.exit11.sink.split.i: ; preds = %bb.ap, %bb.aq, %bb.al, %bb.am
  %storemerge100 = phi ptr [ %i.fn, %bb.am ], [ %i.fm, %bb.al ], [ %i.fr, %bb.ap ], [ %i.fs, %bb.aq ] ; 2 uses
  %spec.select.sink.i93 = phi i32 [ 16, %bb.am ], [ 16, %bb.al ], [ %spec.select.i90, %bb.ap ], [ %spec.select.i90, %bb.aq ]
  store ptr %storemerge100, ptr %i.e, align 8, !tbaa !125
  store i32 %spec.select.sink.i93, ptr %i.b, align 8, !tbaa !124
  br label %_ZL11Vec_StrPushP10Vec_Str_t_c.exit

_ZL11Vec_StrPushP10Vec_Str_t_c.exit:              ; preds = %_ZL11Vec_StrFreeP10Vec_Str_t_.exit._ZL11Vec_StrPushP10Vec_Str_t_c.exit_crit_edge, %bb.an, %_ZL11Vec_StrGrowP10Vec_Str_t_i.exit11.sink.split.i
  %i.ft = phi ptr [ %.pre134, %_ZL11Vec_StrFreeP10Vec_Str_t_.exit._ZL11Vec_StrPushP10Vec_Str_t_c.exit_crit_edge ], [ %.pre135, %bb.an ], [ %storemerge100, %_ZL11Vec_StrGrowP10Vec_Str_t_i.exit11.sink.split.i ]
  %i.fu = add nsw i32 %i.fh, 1
  store i32 %i.fu, ptr %i.c, align 4, !tbaa !123
  %i.fv = sext i32 %i.fh to i64
  %i.fw = getelementptr inbounds i8, ptr %i.ft, i64 %i.fv
  store i8 0, ptr %i.fw, align 1, !tbaa !63
  ret ptr %i.b
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZL13Vec_StrPrintFP10Vec_Str_t_PKcz(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, ...) unnamed_addr #12 {
bb.a:
  %2 = alloca [1 x %struct.__va_list_tag], align 16 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  call void @llvm.va_start.p0(ptr nonnull %2)
  %i.a = getelementptr i8, ptr %0, i64 4          ; 6 uses
  %.val18 = load i32, ptr %i.a, align 4, !tbaa !123 ; 3 uses
  %i.b = add nsw i32 %.val18, 1000                ; 3 uses
  %i.c = load i32, ptr %0, align 8, !tbaa !124
  %.not.i = icmp slt i32 %i.c, %i.b
  %i.d = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !125  ; 3 uses
  br i1 %.not.i, label %bb.b, label %_ZL11Vec_StrGrowP10Vec_Str_t_i.exit

bb.b:                                             ; preds = %bb.a
  %.not9.i = icmp eq ptr %i.e, null
  %i.f = sext i32 %i.b to i64                     ; 2 uses
  br i1 %.not9.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = call ptr @realloc(ptr noundef nonnull %i.e, i64 noundef %i.f) #29
  %.val23.pre.pre = load i32, ptr %i.a, align 4, !tbaa !123
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.h = call noalias ptr @malloc(i64 noundef %i.f) #31
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.val23.pre = phi i32 [ %.val23.pre.pre, %bb.c ], [ %.val18, %bb.d ]
  %i.i = phi ptr [ %i.g, %bb.c ], [ %i.h, %bb.d ] ; 2 uses
  store ptr %i.i, ptr %i.d, align 8, !tbaa !125
  store i32 %i.b, ptr %0, align 8, !tbaa !124
  br label %_ZL11Vec_StrGrowP10Vec_Str_t_i.exit

_ZL11Vec_StrGrowP10Vec_Str_t_i.exit:              ; preds = %bb.a, %bb.e
  %.val24 = phi ptr [ %i.i, %bb.e ], [ %i.e, %bb.a ]
  %.val23 = phi i32 [ %.val23.pre, %bb.e ], [ %.val18, %bb.a ]
  %i.j = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %i.k = sext i32 %.val23 to i64
  %i.l = getelementptr inbounds i8, ptr %.val24, i64 %i.k
  %i.m = call i32 @vsnprintf(ptr noundef %i.l, i64 noundef 1000, ptr noundef %1, ptr noundef nonnull %2) #28 ; 4 uses
  %i.n = icmp sgt i32 %i.m, 1000
  br i1 %i.n, label %bb.f, label %bb.k

bb.f:                                             ; preds = %_ZL11Vec_StrGrowP10Vec_Str_t_i.exit
  %.val = load i32, ptr %i.a, align 4, !tbaa !123 ; 3 uses
  %i.o = add nuw i32 %i.m, 1000
  %i.p = add i32 %i.o, %.val                      ; 3 uses
  %i.q = load i32, ptr %0, align 8, !tbaa !124
  %.not.i25 = icmp slt i32 %i.q, %i.p
  %.val22.pre = load ptr, ptr %i.j, align 8, !tbaa !125 ; 3 uses
  br i1 %.not.i25, label %bb.g, label %_ZL11Vec_StrGrowP10Vec_Str_t_i.exit27

bb.g:                                             ; preds = %bb.f
  %.not9.i26 = icmp eq ptr %.val22.pre, null
  %i.r = sext i32 %i.p to i64                     ; 2 uses
  br i1 %.not9.i26, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = call ptr @realloc(ptr noundef nonnull %.val22.pre, i64 noundef %i.r) #29
  %.val21.pre.pre = load i32, ptr %i.a, align 4, !tbaa !123
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.t = call noalias ptr @malloc(i64 noundef %i.r) #31
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.val21.pre = phi i32 [ %.val21.pre.pre, %bb.h ], [ %.val, %bb.i ]
  %i.u = phi ptr [ %i.s, %bb.h ], [ %i.t, %bb.i ] ; 2 uses
  store ptr %i.u, ptr %i.j, align 8, !tbaa !125
  store i32 %i.p, ptr %0, align 8, !tbaa !124
  br label %_ZL11Vec_StrGrowP10Vec_Str_t_i.exit27

_ZL11Vec_StrGrowP10Vec_Str_t_i.exit27:            ; preds = %bb.f, %bb.j
  %.val22 = phi ptr [ %.val22.pre, %bb.f ], [ %i.u, %bb.j ]
  %.val21 = phi i32 [ %.val, %bb.f ], [ %.val21.pre, %bb.j ]
  %i.v = sext i32 %.val21 to i64
  %i.w = getelementptr inbounds i8, ptr %.val22, i64 %i.v
  %i.x = zext nneg i32 %i.m to i64
  %i.y = call i32 @vsnprintf(ptr noundef %i.w, i64 noundef %i.x, ptr noundef %1, ptr noundef nonnull %2) #28 ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %_ZL11Vec_StrGrowP10Vec_Str_t_i.exit27, %_ZL11Vec_StrGrowP10Vec_Str_t_i.exit
  %i.z = load i32, ptr %i.a, align 4, !tbaa !123
  %i.aa = add nsw i32 %i.z, %i.m
  store i32 %i.aa, ptr %i.a, align 4, !tbaa !123
  call void @llvm.va_end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define noalias noundef ptr @bmcg_sat_solver_sop(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [2 x ptr], align 16               ; 7 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %i.c = tail call noalias noundef nonnull dereferenceable(1488) ptr @_Znwm(i64 noundef 1488) #27 ; 5 uses
  tail call void @_ZN5Gluco10SimpSolverC1Ev(ptr noundef nonnull align 8 dereferenceable(1484) %i.c) #28
  tail call void @_ZN5Gluco6Solver18setIncrementalModeEv(ptr noundef nonnull align 8 dereferenceable(1216) %i.c) #28
  store ptr %i.c, ptr %i.a, align 16, !tbaa !126
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = tail call noalias noundef nonnull dereferenceable(1488) ptr @_Znwm(i64 noundef 1488) #27 ; 5 uses
  tail call void @_ZN5Gluco10SimpSolverC1Ev(ptr noundef nonnull align 8 dereferenceable(1484) %i.e) #28
  tail call void @_ZN5Gluco6Solver18setIncrementalModeEv(ptr noundef nonnull align 8 dereferenceable(1216) %i.e) #28
  store ptr %i.e, ptr %i.d, align 8, !tbaa !126
  %i.f = tail call ptr @Mf_ManGenerateCnf(ptr noundef %0, i32 noundef 8, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0) #28 ; 5 uses
  %i.g = getelementptr i8, ptr %0, i64 64
  %.val = load ptr, ptr %i.g, align 8, !tbaa !127
  %i.h = getelementptr i8, ptr %.val, i64 4
  %.val.val = load i32, ptr %i.h, align 4, !tbaa !118 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !99   ; 6 uses
  %i.k = sub nsw i32 %i.j, %.val.val
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %indvars.iv92.sroa.gep133 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.l
  %i.n = phi i1 [ true, %bb.a ], [ false, %bb.l ]
  %indvars.iv92.sroa.phi = phi ptr [ %i.a, %bb.a ], [ %indvars.iv92.sroa.gep133, %bb.l ]
  %indvars.iv92 = phi i32 [ 0, %bb.a ], [ 1, %bb.l ] ; 2 uses
  %i.o = load ptr, ptr %indvars.iv92.sroa.phi, align 8, !tbaa !126 ; 9 uses
  %i.p = load i32, ptr %i.i, align 8, !tbaa !99   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 736 ; 3 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !20   ; 2 uses
  %i.s = icmp slt i32 %i.r, %i.p
  br i1 %i.s, label %.lr.ph.i, label %bmcg_sat_solver_set_nvars.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.04.i = phi i32 [ %i.u, %.lr.ph.i ], [ %i.r, %bb.b ]
  %i.t = tail call noundef i32 @_ZN5Gluco10SimpSolver6newVarEbb(ptr noundef nonnull align 8 dereferenceable(1484) %i.o, i1 noundef zeroext true, i1 noundef zeroext true) #28 ; 0 uses
  %i.u = add i32 %.04.i, 1                        ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.u, %i.p
  br i1 %exitcond.not.i, label %bmcg_sat_solver_set_nvars.exit, label %.lr.ph.i, !llvm.loop !2

bmcg_sat_solver_set_nvars.exit:                   ; preds = %.lr.ph.i, %bb.b
  %i.v = xor i32 %indvars.iv92, 3
  store i32 %i.v, ptr %i.b, align 4, !tbaa !16
  %i.w = load i32, ptr %i.l, align 8, !tbaa !100
  %i.x = icmp sgt i32 %i.w, 0
  br i1 %i.x, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bmcg_sat_solver_set_nvars.exit
  %i.y = getelementptr inbounds nuw i8, ptr %i.o, i64 1080 ; 10 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.o, i64 1088 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.o, i64 1092 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_Z24glucose_solver_addclausePN5Gluco10SimpSolverEPii.exit
  %indvars.iv89 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next90, %_Z24glucose_solver_addclausePN5Gluco10SimpSolverEPii.exit ] ; 2 uses
  %i.aa = load ptr, ptr %i.m, align 8, !tbaa !121 ; 2 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %indvars.iv89
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !60 ; 2 uses
  %indvars.iv.next90 = add nuw nsw i64 %indvars.iv89, 1 ; 3 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %indvars.iv.next90
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !60
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

.preheader.i:                                     ; preds = %.preheader.i.preheader, %_ZN5Gluco3vecINS_3LitEE4pushERKS1_.exit.i
  %indvars.iv = phi i64 [ 0, %.preheader.i.preheader ], [ %indvars.iv.next, %_ZN5Gluco3vecINS_3LitEE4pushERKS1_.exit.i ] ; 3 uses
  %.sroa.0.1 = phi ptr [ null, %.preheader.i.preheader ], [ %.sroa.0.2, %_ZN5Gluco3vecINS_3LitEE4pushERKS1_.exit.i ]
  %i.al = phi ptr [ null, %.preheader.i.preheader ], [ %.pre.i15.i, %_ZN5Gluco3vecINS_3LitEE4pushERKS1_.exit.i ] ; 2 uses
  %i.am = phi i32 [ 0, %.preheader.i.preheader ], [ %i.dx, %_ZN5Gluco3vecINS_3LitEE4pushERKS1_.exit.i ] ; 5 uses
  %.0810.i = phi ptr [ %i.ac, %.preheader.i.preheader ], [ %i.dz, %_ZN5Gluco3vecINS_3LitEE4pushERKS1_.exit.i ] ; 3 uses
  %i.an = load i32, ptr %.0810.i, align 4, !tbaa !16 ; 2 uses
  %i.ao = sdiv i32 %i.an, 2
  %i.ap = load i32, ptr %i.q, align 8, !tbaa !20
  %.not9.i = icmp slt i32 %i.ao, %i.ap
  br i1 %.not9.i, label %._crit_edge.i, label %.lr.ph.i50

._crit_edge12.i:                                  ; preds = %_ZN5Gluco3vecINS_3LitEE4pushERKS1_.exit.i, %bb.c
  %.sroa.0.0 = phi ptr [ null, %bb.c ], [ %.sroa.0.2, %_ZN5Gluco3vecINS_3LitEE4pushERKS1_.exit.i ] ; 9 uses
  %.sroa.6.0 = phi i32 [ 0, %bb.c ], [ %i.aj, %_ZN5Gluco3vecINS_3LitEE4pushERKS1_.exit.i ] ; 9 uses
  %.sroa.0.0124 = ptrtoaddr ptr %.sroa.0.0 to i64
  %i.aq = load ptr, ptr %i.y, align 8, !tbaa !23  ; 2 uses
  %.not.i.i53 = icmp eq ptr %i.aq, null
  br i1 %.not.i.i53, label %._ZN5Gluco3vecINS_3LitEE5clearEb.exit_crit_edge.i, label %.preheader.i.i

._ZN5Gluco3vecINS_3LitEE5clearEb.exit_crit_edge.i: ; preds = %._crit_edge12.i
  %.pre.i = load i32, ptr %.phi.trans.insert.i, align 8, !tbaa !24
  br label %_ZN5Gluco3vecINS_3LitEE5clearEb.exit.i

.preheader.i.i:                                   ; preds = %._crit_edge12.i
  store i32 0, ptr %.phi.trans.insert.i, align 8, !tbaa !24
  br label %_ZN5Gluco3vecINS_3LitEE5clearEb.exit.i

_ZN5Gluco3vecINS_3LitEE5clearEb.exit.i:           ; preds = %.preheader.i.i, %._ZN5Gluco3vecINS_3LitEE5clearEb.exit_crit_edge.i
  %i.ar = phi i32 [ %.pre.i, %._ZN5Gluco3vecINS_3LitEE5clearEb.exit_crit_edge.i ], [ 0, %.preheader.i.i ]
  %.not.i7.i = icmp slt i32 %i.ar, %.sroa.6.0
  br i1 %.not.i7.i, label %bb.d, label %_ZN5Gluco3vecINS_3LitEE6growToEi.exit.i

bb.d:                                             ; preds = %_ZN5Gluco3vecINS_3LitEE5clearEb.exit.i
  %i.as = load i32, ptr %i.z, align 4, !tbaa !26  ; 5 uses
  %.not.i.i.i56 = icmp slt i32 %i.as, %.sroa.6.0
  br i1 %.not.i.i.i56, label %bb.e, label %_ZN5Gluco3vecINS_3LitEE8capacityEi.exit.i.i

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
  %i.bf = tail call ptr @realloc(ptr noundef %i.aq, i64 noundef %i.be) #29 ; 2 uses
  store ptr %i.bf, ptr %i.y, align 8, !tbaa !23
  %i.bg = icmp eq ptr %i.bf, null
  br i1 %i.bg, label %bb.g, label %_ZN5Gluco3vecINS_3LitEE8capacityEi.exit.i.i

bb.g:                                             ; preds = %bb.f
  %i.bh = tail call ptr @__errno_location() #30
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !16
  %i.bj = icmp eq i32 %i.bi, 12
  br i1 %i.bj, label %bb.h, label %_ZN5Gluco3vecINS_3LitEE8capacityEi.exit.i.i

bb.h:                                             ; preds = %bb.g, %bb.e
  tail call fastcc void @_ZN5GlucoL19fatal_out_of_memoryEv()
  unreachable

_ZN5Gluco3vecINS_3LitEE8capacityEi.exit.i.i:      ; preds = %bb.g, %bb.f, %bb.d
  %i.bk = load i32, ptr %.phi.trans.insert.i, align 8, !tbaa !24 ; 2 uses
  %i.bl = icmp slt i32 %i.bk, %.sroa.6.0
  br i1 %i.bl, label %.lr.ph.preheader.i.i, label %._crit_edge.i.i

.lr.ph.preheader.i.i:                             ; preds = %_ZN5Gluco3vecINS_3LitEE8capacityEi.exit.i.i
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
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !183

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.preheader.i.i
  %indvars.iv.i.i.unr = phi i64 [ %i.bm, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i.prol, %.lr.ph.i.i.prol ]
  %i.bq = sub nsw i64 %i.bm, %wide.trip.count.i.i
  %i.br = icmp ugt i64 %i.bq, -4
  br i1 %i.br, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %_ZN5Gluco3vecINS_3LitEE8capacityEi.exit.i.i
  store i32 %.sroa.6.0, ptr %.phi.trans.insert.i, align 8, !tbaa !24
  br label %_ZN5Gluco3vecINS_3LitEE6growToEi.exit.i

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

_ZN5Gluco3vecINS_3LitEE6growToEi.exit.i:          ; preds = %._crit_edge.i.i, %_ZN5Gluco3vecINS_3LitEE5clearEb.exit.i
  %i.cd = icmp sgt i32 %.sroa.6.0, 0
  br i1 %i.cd, label %.lr.ph.i55, label %_ZNK5Gluco3vecINS_3LitEE6copyToERS2_.exit

.lr.ph.i55:                                       ; preds = %_ZN5Gluco3vecINS_3LitEE6growToEi.exit.i
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
  br i1 %i.cm, label %middle.block, label %vector.body, !llvm.loop !184

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.cf
  br i1 %cmp.n, label %_ZNK5Gluco3vecINS_3LitEE6copyToERS2_.exit.thread, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i55, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.i55 ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter130 = and i64 %i.cf, 3                 ; 2 uses
end_hunk_1
begin_hunk_2_@_Z24Gia_ManSatAndCollect_recP10Gia_Man_t_iP10Vec_Int_t_S2_:bb.a
bb.d:                                             ; preds = %bb.c, %bb.b
  %i.t = getelementptr i8, ptr %2, i64 4          ; 3 uses
  %.val = load i32, ptr %i.t, align 4, !tbaa !118 ; 12 uses
  %i.u = load i32, ptr %2, align 8, !tbaa !119
  %i.v = icmp eq i32 %.val, %i.u
  br i1 %i.v, label %bb.e, label %_ZL11Vec_IntPushP10Vec_Int_t_i.exit

bb.e:                                             ; preds = %bb.d
  %i.w = icmp slt i32 %.val, 16
  br i1 %i.w, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !120  ; 2 uses
  %.not9.i.i = icmp eq ptr %i.y, null
  br i1 %.not9.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.y, i64 noundef 64) #29
  br label %_ZL11Vec_IntGrowP10Vec_Int_t_i.exit.i

bb.h:                                             ; preds = %bb.f
  %i.aa = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #31
  br label %_ZL11Vec_IntGrowP10Vec_Int_t_i.exit.i

_ZL11Vec_IntGrowP10Vec_Int_t_i.exit.i:            ; preds = %bb.h, %bb.g
  %i.ab = phi ptr [ %i.z, %bb.g ], [ %i.aa, %bb.h ]
  store ptr %i.ab, ptr %i.x, align 8, !tbaa !120
  br label %_ZL11Vec_IntGrowP10Vec_Int_t_i.exit11.sink.split.i

bb.i:                                             ; preds = %bb.e
  %i.ac = icmp samesign ult i32 %.val, 1073741823
  %i.ad = shl nuw nsw i32 %.val, 1
  %spec.select.i = select i1 %i.ac, i32 %i.ad, i32 2147483647 ; 3 uses
  %.not.i9.i = icmp samesign ult i32 %.val, %spec.select.i
  br i1 %.not.i9.i, label %bb.j, label %_ZL11Vec_IntPushP10Vec_Int_t_i.exit

bb.j:                                             ; preds = %bb.i
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !120 ; 2 uses
  %.not9.i10.i = icmp eq ptr %i.af, null
  %i.ag = zext nneg i32 %spec.select.i to i64
  %i.ah = shl nuw nsw i64 %i.ag, 2                ; 2 uses
  br i1 %.not9.i10.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ai = tail call ptr @realloc(ptr noundef nonnull %i.af, i64 noundef %i.ah) #29
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.aj = tail call noalias ptr @malloc(i64 noundef %i.ah) #31
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ak = phi ptr [ %i.ai, %bb.k ], [ %i.aj, %bb.l ]
  store ptr %i.ak, ptr %i.ae, align 8, !tbaa !120
  br label %_ZL11Vec_IntGrowP10Vec_Int_t_i.exit11.sink.split.i

_ZL11Vec_IntGrowP10Vec_Int_t_i.exit11.sink.split.i: ; preds = %bb.m, %_ZL11Vec_IntGrowP10Vec_Int_t_i.exit.i
  %spec.select.sink.i = phi i32 [ %spec.select.i, %bb.m ], [ 16, %_ZL11Vec_IntGrowP10Vec_Int_t_i.exit.i ]
  store i32 %spec.select.sink.i, ptr %2, align 8, !tbaa !119
  %.pre = load i32, ptr %i.t, align 4, !tbaa !118
  br label %_ZL11Vec_IntPushP10Vec_Int_t_i.exit

_ZL11Vec_IntPushP10Vec_Int_t_i.exit:              ; preds = %bb.d, %bb.i, %_ZL11Vec_IntGrowP10Vec_Int_t_i.exit11.sink.split.i
  %i.al = phi i32 [ %.val, %bb.d ], [ %.val, %bb.i ], [ %.pre, %_ZL11Vec_IntGrowP10Vec_Int_t_i.exit11.sink.split.i ] ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !120
  %i.ao = add nsw i32 %i.al, 1
  store i32 %i.ao, ptr %i.t, align 4, !tbaa !118
  %i.ap = sext i32 %i.al to i64
  %i.aq = getelementptr inbounds [4 x i8], ptr %i.an, i64 %i.ap
  store i32 %1, ptr %i.aq, align 4, !tbaa !16
  %.val36 = load ptr, ptr %i.a, align 8, !tbaa !120
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
  %i.au = load i32, ptr %i.at, align 4, !tbaa !118 ; 7 uses
  %i.av = load i32, ptr %3, align 8, !tbaa !119
  %i.aw = icmp eq i32 %i.au, %i.av
  br i1 %i.aw, label %bb.p, label %_ZL11Vec_IntPushP10Vec_Int_t_i.exit46

bb.p:                                             ; preds = %bb.o
  %i.ax = icmp slt i32 %i.au, 16
  br i1 %i.ax, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !120 ; 2 uses
  %.not9.i.i44 = icmp eq ptr %i.az, null
  br i1 %.not9.i.i44, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ba = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.az, i64 noundef 64) #29
  br label %_ZL11Vec_IntGrowP10Vec_Int_t_i.exit.i45

bb.s:                                             ; preds = %bb.q
  %i.bb = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #31
  br label %_ZL11Vec_IntGrowP10Vec_Int_t_i.exit.i45

_ZL11Vec_IntGrowP10Vec_Int_t_i.exit.i45:          ; preds = %bb.s, %bb.r
  %i.bc = phi ptr [ %i.ba, %bb.r ], [ %i.bb, %bb.s ]
  store ptr %i.bc, ptr %i.ay, align 8, !tbaa !120
  br label %_ZL11Vec_IntGrowP10Vec_Int_t_i.exit11.sink.split.i42

bb.t:                                             ; preds = %bb.p
  %i.bd = icmp samesign ult i32 %i.au, 1073741823
  %i.be = shl nuw nsw i32 %i.au, 1
  %spec.select.i39 = select i1 %i.bd, i32 %i.be, i32 2147483647 ; 3 uses
  %.not.i9.i40 = icmp samesign ult i32 %i.au, %spec.select.i39
  br i1 %.not.i9.i40, label %bb.u, label %_ZL11Vec_IntPushP10Vec_Int_t_i.exit46

bb.u:                                             ; preds = %bb.t
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !120 ; 2 uses
  %.not9.i10.i41 = icmp eq ptr %i.bg, null
  %i.bh = zext nneg i32 %spec.select.i39 to i64
  %i.bi = shl nuw nsw i64 %i.bh, 2                ; 2 uses
  br i1 %.not9.i10.i41, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bj = tail call ptr @realloc(ptr noundef nonnull %i.bg, i64 noundef %i.bi) #29
  br label %bb.x

bb.w:                                             ; preds = %bb.u
  %i.bk = tail call noalias ptr @malloc(i64 noundef %i.bi) #31
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.bl = phi ptr [ %i.bj, %bb.v ], [ %i.bk, %bb.w ]
  store ptr %i.bl, ptr %i.bf, align 8, !tbaa !120
  br label %_ZL11Vec_IntGrowP10Vec_Int_t_i.exit11.sink.split.i42

_ZL11Vec_IntGrowP10Vec_Int_t_i.exit11.sink.split.i42: ; preds = %bb.x, %_ZL11Vec_IntGrowP10Vec_Int_t_i.exit.i45
  %spec.select.sink.i43 = phi i32 [ %spec.select.i39, %bb.x ], [ 16, %_ZL11Vec_IntGrowP10Vec_Int_t_i.exit.i45 ]
  store i32 %spec.select.sink.i43, ptr %3, align 8, !tbaa !119
  %.pre48 = load i32, ptr %i.at, align 4, !tbaa !118
  br label %_ZL11Vec_IntPushP10Vec_Int_t_i.exit46

_ZL11Vec_IntPushP10Vec_Int_t_i.exit46:            ; preds = %bb.o, %bb.t, %_ZL11Vec_IntGrowP10Vec_Int_t_i.exit11.sink.split.i42
  %i.bm = phi i32 [ %i.au, %bb.o ], [ %i.au, %bb.t ], [ %.pre48, %_ZL11Vec_IntGrowP10Vec_Int_t_i.exit11.sink.split.i42 ] ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !120
  %i.bp = add nsw i32 %i.bm, 1
  store i32 %i.bp, ptr %i.at, align 4, !tbaa !118
  %i.bq = sext i32 %i.bm to i64
  %i.br = getelementptr inbounds [4 x i8], ptr %i.bo, i64 %i.bq
  store i32 %.val, ptr %i.br, align 4, !tbaa !16
  br label %bb.y

bb.y:                                             ; preds = %_ZL11Vec_IntPushP10Vec_Int_t_i.exit, %bb.n, %_ZL11Vec_IntPushP10Vec_Int_t_i.exit46, %bb.a
  %.0 = phi i32 [ %i.d, %bb.a ], [ %.val, %_ZL11Vec_IntPushP10Vec_Int_t_i.exit46 ], [ %.val, %bb.n ], [ %.val, %_ZL11Vec_IntPushP10Vec_Int_t_i.exit ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define void @_Z19Gia_ManQuantLoadCnfP10Gia_Man_t_P10Vec_Int_t_PPv(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [3 x i32], align 4                ; 10 uses
  %i.b = alloca [3 x i32], align 4                ; 10 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = load ptr, ptr %2, align 8, !tbaa !126    ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !15
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 8 dereferenceable(1484) %i.d) #28, !inline_history !131
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !126  ; 3 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !15
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(1484) %i.i) #28, !inline_history !131
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.m = load ptr, ptr %2, align 8, !tbaa !126    ; 2 uses
  %i.n = getelementptr i8, ptr %1, i64 4          ; 4 uses
  %.val54 = load i32, ptr %i.n, align 4, !tbaa !118 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 736
  %i.p = load i32, ptr %i.o, align 8, !tbaa !20   ; 2 uses
  %i.q = icmp slt i32 %i.p, %.val54
  br i1 %i.q, label %.lr.ph.i, label %bmcg_sat_solver_set_nvars.exit

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %.04.i = phi i32 [ %i.s, %.lr.ph.i ], [ %i.p, %bb.c ]
  %i.r = tail call noundef i32 @_ZN5Gluco10SimpSolver6newVarEbb(ptr noundef nonnull align 8 dereferenceable(1484) %i.m, i1 noundef zeroext true, i1 noundef zeroext true) #28 ; 0 uses
  %i.s = add i32 %.04.i, 1                        ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.s, %.val54
  br i1 %exitcond.not.i, label %bmcg_sat_solver_set_nvars.exit.loopexit, label %.lr.ph.i, !llvm.loop !2

bmcg_sat_solver_set_nvars.exit.loopexit:          ; preds = %.lr.ph.i
  %.val82.pre86.pre = load i32, ptr %i.n, align 4, !tbaa !118
  br label %bmcg_sat_solver_set_nvars.exit

bmcg_sat_solver_set_nvars.exit:                   ; preds = %bmcg_sat_solver_set_nvars.exit.loopexit, %bb.c
  %.val82.pre86 = phi i32 [ %.val82.pre86.pre, %bmcg_sat_solver_set_nvars.exit.loopexit ], [ %.val54, %bb.c ] ; 4 uses
  %i.t = load ptr, ptr %i.h, align 8, !tbaa !126  ; 3 uses
  %.not47 = icmp eq ptr %i.t, null
  br i1 %.not47, label %bmcg_sat_solver_set_nvars.exit73, label %bb.d

bb.d:                                             ; preds = %bmcg_sat_solver_set_nvars.exit
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 736
  %i.v = load i32, ptr %i.u, align 8, !tbaa !20   ; 2 uses
  %i.w = icmp slt i32 %i.v, %.val82.pre86
  br i1 %i.w, label %.lr.ph.i70, label %bmcg_sat_solver_set_nvars.exit73

.lr.ph.i70:                                       ; preds = %bb.d, %.lr.ph.i70
  %.04.i71 = phi i32 [ %i.y, %.lr.ph.i70 ], [ %i.v, %bb.d ]
  %i.x = tail call noundef i32 @_ZN5Gluco10SimpSolver6newVarEbb(ptr noundef nonnull align 8 dereferenceable(1484) %i.t, i1 noundef zeroext true, i1 noundef zeroext true) #28 ; 0 uses
  %i.y = add i32 %.04.i71, 1                      ; 2 uses
  %exitcond.not.i72 = icmp eq i32 %i.y, %.val82.pre86
  br i1 %exitcond.not.i72, label %bmcg_sat_solver_set_nvars.exit73.loopexit, label %.lr.ph.i70, !llvm.loop !2

bmcg_sat_solver_set_nvars.exit73.loopexit:        ; preds = %.lr.ph.i70
  %.val82.pre = load i32, ptr %i.n, align 4, !tbaa !118
  br label %bmcg_sat_solver_set_nvars.exit73

bmcg_sat_solver_set_nvars.exit73:                 ; preds = %bmcg_sat_solver_set_nvars.exit73.loopexit, %bb.d, %bmcg_sat_solver_set_nvars.exit
  %.val82 = phi i32 [ %.val82.pre, %bmcg_sat_solver_set_nvars.exit73.loopexit ], [ %.val82.pre86, %bb.d ], [ %.val82.pre86, %bmcg_sat_solver_set_nvars.exit ]
  %i.z = getelementptr i8, ptr %1, i64 8
  %i.aa = icmp sgt i32 %.val82, 0
  br i1 %i.aa, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bmcg_sat_solver_set_nvars.exit73
  %i.ab = getelementptr i8, ptr %0, i64 32
  %i.ac = getelementptr i8, ptr %0, i64 408       ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.q
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.q ] ; 2 uses
  %.val55 = load ptr, ptr %i.z, align 8, !tbaa !120
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %.val55, i64 %indvars.iv
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !16 ; 3 uses
  %.val56 = load ptr, ptr %i.ab, align 8, !tbaa !129 ; 2 uses
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
  %.val64 = load ptr, ptr %i.ac, align 8, !tbaa !120 ; 3 uses
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
  %i.bd = load ptr, ptr %2, align 8, !tbaa !126   ; 3 uses
  %i.be = lshr i32 %i.aq, 29
  %i.bf = and i32 %i.be, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  %i.bg = shl nsw i32 %i.ap, 1                    ; 3 uses
  %i.bh = or disjoint i32 %i.bg, 1                ; 4 uses
  store i32 %i.bh, ptr %i.b, align 4, !tbaa !16
  %i.bi = shl nsw i32 %i.av, 1                    ; 2 uses
  %i.bj = or disjoint i32 %i.bi, %i.bf            ; 2 uses
  store i32 %i.bj, ptr %i.ad, align 4, !tbaa !16
  %i.bk = call noundef range(i32 0, 2) i32 @_Z24glucose_solver_addclausePN5Gluco10SimpSolverEPii(ptr noundef %i.bd, ptr noundef nonnull readonly %i.b, i32 noundef 2)
  %.not17.i = icmp eq i32 %i.bk, 0
  br i1 %.not17.i, label %bmcg_sat_solver_add_and.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bl = lshr i64 %.val65, 61
  %i.bm = trunc nuw nsw i64 %i.bl to i32
  %i.bn = and i32 %i.bm, 1
  store i32 %i.bh, ptr %i.b, align 4, !tbaa !16
  %i.bo = shl nsw i32 %i.bc, 1
  %i.bp = or disjoint i32 %i.bo, %i.bn            ; 2 uses
  store i32 %i.bp, ptr %i.ad, align 4, !tbaa !16
  %i.bq = call noundef range(i32 0, 2) i32 @_Z24glucose_solver_addclausePN5Gluco10SimpSolverEPii(ptr noundef %i.bd, ptr noundef nonnull readonly %i.b, i32 noundef 2)
  %.not18.i = icmp eq i32 %i.bq, 0
  br i1 %.not18.i, label %bmcg_sat_solver_add_and.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i32 %i.bg, ptr %i.b, align 4, !tbaa !16
  %i.br = xor i32 %i.bj, 1
  store i32 %i.br, ptr %i.ad, align 4, !tbaa !16
  %i.bs = xor i32 %i.bp, 1
  store i32 %i.bs, ptr %i.ae, align 4, !tbaa !16
  %i.bt = call noundef range(i32 0, 2) i32 @_Z24glucose_solver_addclausePN5Gluco10SimpSolverEPii(ptr noundef %i.bd, ptr noundef nonnull readonly %i.b, i32 noundef 3) ; 0 uses
  br label %bmcg_sat_solver_add_and.exit

bmcg_sat_solver_add_and.exit:                     ; preds = %bb.g, %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  %i.bu = load ptr, ptr %i.h, align 8, !tbaa !126 ; 4 uses
  %.not52 = icmp eq ptr %i.bu, null
  br i1 %.not52, label %bb.q, label %bb.j

bb.j:                                             ; preds = %bmcg_sat_solver_add_and.exit
  %.val59 = load i64, ptr %i.ak, align 4          ; 2 uses
  %i.bv = trunc i64 %.val59 to i32
  %i.bw = lshr i32 %i.bv, 29
  %i.bx = and i32 %i.bw, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i32 %i.bh, ptr %i.a, align 4, !tbaa !16
  %i.by = or disjoint i32 %i.bx, %i.bi            ; 2 uses
  store i32 %i.by, ptr %i.af, align 4, !tbaa !16
  %i.bz = call noundef range(i32 0, 2) i32 @_Z24glucose_solver_addclausePN5Gluco10SimpSolverEPii(ptr noundef nonnull %i.bu, ptr noundef nonnull readonly %i.a, i32 noundef 2)
  %.not17.i74 = icmp eq i32 %i.bz, 0
  br i1 %.not17.i74, label %bmcg_sat_solver_add_and.exit79, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ca = lshr i64 %.val59, 61
  %i.cb = trunc nuw nsw i64 %i.ca to i32
  %i.cc = and i32 %i.cb, 1
  store i32 %i.bh, ptr %i.a, align 4, !tbaa !16
  %i.cd = shl nsw i32 %i.bc, 1
  %i.ce = or disjoint i32 %i.cc, %i.cd            ; 2 uses
  store i32 %i.ce, ptr %i.af, align 4, !tbaa !16
  %i.cf = call noundef range(i32 0, 2) i32 @_Z24glucose_solver_addclausePN5Gluco10SimpSolverEPii(ptr noundef nonnull %i.bu, ptr noundef nonnull readonly %i.a, i32 noundef 2)
  %.not18.i75 = icmp eq i32 %i.cf, 0
  br i1 %.not18.i75, label %bmcg_sat_solver_add_and.exit79, label %bb.l

bb.l:                                             ; preds = %bb.k
  store i32 %i.bg, ptr %i.a, align 4, !tbaa !16
  %i.cg = xor i32 %i.by, 1
  store i32 %i.cg, ptr %i.af, align 4, !tbaa !16
  %i.ch = xor i32 %i.ce, 1
  store i32 %i.ch, ptr %i.ag, align 4, !tbaa !16
  %i.ci = call noundef range(i32 0, 2) i32 @_Z24glucose_solver_addclausePN5Gluco10SimpSolverEPii(ptr noundef nonnull %i.bu, ptr noundef nonnull readonly %i.a, i32 noundef 3) ; 0 uses
  br label %bmcg_sat_solver_add_and.exit79

bmcg_sat_solver_add_and.exit79:                   ; preds = %bb.j, %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  br label %bb.q

bb.m:                                             ; preds = %bb.f
  %i.cj = and i64 %.val65, 2305843005455597567
  %narrow.i80.not = icmp eq i64 %i.cj, 2305843005455597567
  br i1 %narrow.i80.not, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #28
  %.val61 = load ptr, ptr %i.ac, align 8, !tbaa !120
  %i.ck = load i32, ptr %.val61, align 4, !tbaa !16
  %i.cl = shl nsw i32 %i.ck, 1
  %i.cm = or disjoint i32 %i.cl, 1
  store i32 %i.cm, ptr %i.c, align 4, !tbaa !16
  %i.cn = load ptr, ptr %2, align 8, !tbaa !126
  %i.co = call noundef range(i32 0, 2) i32 @_Z24glucose_solver_addclausePN5Gluco10SimpSolverEPii(ptr noundef %i.cn, ptr noundef nonnull readonly %i.c, i32 noundef 1) ; 0 uses
  %i.cp = load ptr, ptr %i.h, align 8, !tbaa !126 ; 2 uses
  %.not51 = icmp eq ptr %i.cp, null
  br i1 %.not51, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cq = call noundef range(i32 0, 2) i32 @_Z24glucose_solver_addclausePN5Gluco10SimpSolverEPii(ptr noundef nonnull %i.cp, ptr noundef nonnull readonly %i.c, i32 noundef 1) ; 0 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  br label %bb.q

bb.q:                                             ; preds = %bmcg_sat_solver_add_and.exit, %bmcg_sat_solver_add_and.exit79, %bb.p, %bb.m
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.val = load i32, ptr %i.n, align 4, !tbaa !118
  %i.cr = sext i32 %.val to i64
  %i.cs = icmp slt i64 %indvars.iv.next, %i.cr
  br i1 %i.cs, label %bb.e, label %.critedge, !llvm.loop !197

.critedge:                                        ; preds = %bb.e, %bb.q, %bmcg_sat_solver_set_nvars.exit73
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define noundef i32 @_Z16Gia_ManFactorSopP10Gia_Man_t_P10Vec_Int_t_P10Vec_Str_t_i(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %2, i64 8
  %.val35 = load ptr, ptr %i.a, align 8, !tbaa !125
  %i.b = tail call ptr @Abc_SopSynthesizeOne(ptr noundef %.val35, i32 noundef 1) #28 ; 6 uses
  %i.c = getelementptr i8, ptr %i.b, i64 32       ; 4 uses
  %.val40 = load ptr, ptr %i.c, align 8, !tbaa !129
  %.val40.fr = freeze ptr %.val40                 ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.val40.fr, i64 8
  store i32 0, ptr %i.d, align 4, !tbaa !202
  %i.e = getelementptr i8, ptr %i.b, i64 16
  %.val41 = load i32, ptr %i.e, align 8, !tbaa !203
  %i.f = getelementptr i8, ptr %i.b, i64 64
  %.val42 = load ptr, ptr %i.f, align 8, !tbaa !127 ; 2 uses
  %i.g = getelementptr i8, ptr %.val42, i64 4
  %.val42.val = load i32, ptr %i.g, align 4, !tbaa !118
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
define void @_Z25Glucose_CheckTwoNodesTestP10Gia_Man_t_(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(1488) ptr @_Znwm(i64 noundef 1488) #27 ; 10 uses
  tail call void @_ZN5Gluco10SimpSolverC1Ev(ptr noundef nonnull align 8 dereferenceable(1484) %i.a) #28
  tail call void @_ZN5Gluco6Solver18setIncrementalModeEv(ptr noundef nonnull align 8 dereferenceable(1216) %i.a) #28
  %i.b = getelementptr i8, ptr %0, i64 32         ; 2 uses
  %i.c = getelementptr i8, ptr %0, i64 72         ; 2 uses
  %.val14 = load ptr, ptr %i.b, align 8, !tbaa !129 ; 2 uses
  %.val15 = load ptr, ptr %i.c, align 8, !tbaa !130
  %i.d = getelementptr i8, ptr %.val15, i64 8
  %.val15.val = load ptr, ptr %i.d, align 8, !tbaa !120 ; 2 uses
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
  %i.z = tail call i32 @bmcg_sat_solver_equiv_overlap_check(ptr noundef nonnull %i.a, ptr noundef %0, i32 noundef %i.n, i32 noundef %i.y, i32 noundef 0)
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !15
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8
  tail call void %i.ac(ptr noundef nonnull align 8 dereferenceable(1484) %i.a) #28, !inline_history !131
  %.not12 = icmp eq i32 %i.z, 0
  %.str.39..str.40 = select i1 %.not12, ptr @.str.40, ptr @.str.39
  %i.ad = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.36, ptr noundef nonnull @.str.38, ptr noundef nonnull %.str.39..str.40) ; 0 uses
  %.val14.1 = load ptr, ptr %i.b, align 8, !tbaa !129 ; 2 uses
  %.val15.1 = load ptr, ptr %i.c, align 8, !tbaa !130
  %i.ae = getelementptr i8, ptr %.val15.1, i64 8
  %.val15.val.1 = load ptr, ptr %i.ae, align 8, !tbaa !120 ; 2 uses
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
  %i.ba = tail call i32 @bmcg_sat_solver_equiv_overlap_check(ptr noundef nonnull %i.a, ptr noundef %0, i32 noundef %i.ao, i32 noundef %i.az, i32 noundef 1)
  %i.bb = load ptr, ptr %i.a, align 8, !tbaa !15
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.bd = load ptr, ptr %i.bc, align 8
  tail call void %i.bd(ptr noundef nonnull align 8 dereferenceable(1484) %i.a) #28, !inline_history !131
  %.not12.1 = icmp eq i32 %i.ba, 0
  %.str.39..str.40.1 = select i1 %.not12.1, ptr @.str.40, ptr @.str.39
  %i.be = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.36, ptr noundef nonnull @.str.37, ptr noundef nonnull %.str.39..str.40.1) ; 0 uses
  %i.bf = load ptr, ptr %i.a, align 8, !tbaa !15
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8
  tail call void %i.bh(ptr noundef nonnull align 8 dereferenceable(1484) %i.a) #28, !inline_history !128
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define range(i32 0, 21) i32 @Glucose_SolveAig(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.timespec, align 8           ; 5 uses
  %3 = alloca %struct.timespec, align 8           ; 5 uses
  %4 = alloca %struct.timespec, align 8           ; 5 uses
  %5 = alloca %struct.timespec, align 8           ; 5 uses
  %6 = alloca %"class.Gluco::SimpSolver", align 8 ; 22 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  %i.a = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %5) #28
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %_ZL9Abc_Clockv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %5, align 8, !tbaa !86
  %i.d = mul nsw i64 %i.c, 1000000
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !87
  %i.g = sdiv i64 %i.f, 1000
  %i.h = add nsw i64 %i.g, %i.d
  br label %_ZL9Abc_Clockv.exit

_ZL9Abc_Clockv.exit:                              ; preds = %bb.a, %bb.b
  %.0.i = phi i64 [ %i.h, %bb.b ], [ -1, %bb.a ]  ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  call void @_ZN5Gluco10SimpSolverC1Ev(ptr noundef nonnull align 8 dereferenceable(1484) %6) #28
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 3 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !89
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 128
  store i32 %i.j, ptr %i.k, align 8, !tbaa !90
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 132
  store i32 50000, ptr %i.l, align 4, !tbaa !213
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 136
  store i32 0, ptr %i.m, align 8, !tbaa !214
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.o = load i32, ptr %i.n, align 4, !tbaa !91   ; 2 uses
  %i.p = icmp sgt i32 %i.o, 0
  %i.q = zext nneg i32 %i.o to i64
  %spec.select = select i1 %i.p, i64 %i.q, i64 -1
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 360
  %i.s = load i64, ptr %i.r, align 8, !tbaa !77
  %i.t = add nsw i64 %spec.select, %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 1128
  store i64 %i.t, ptr %i.u, align 8, !tbaa !78
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 1216 ; 2 uses
  store i32 1, ptr %i.v, align 8, !tbaa !215
  %i.w = call noundef ptr @_Z21Glucose_SolverFromAigP10Gia_Man_t_RN5Gluco10SimpSolverE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(1484) %6) ; 3 uses
  store i32 0, ptr %i.v, align 8, !tbaa !215
  %i.x = load i32, ptr %i.i, align 4, !tbaa !89
  %.not = icmp eq i32 %i.x, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZL9Abc_Clockv.exit
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str.8) ; 0 uses
  %puts24 = call i32 @puts(ptr nonnull dereferenceable(1) @str.9) ; 0 uses
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 736
  %i.z = load i32, ptr %i.y, align 8, !tbaa !20
  %i.aa = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, i32 noundef %i.z) ; 0 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 608
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !79
  %i.ad = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17, i32 noundef %i.ac) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZL9Abc_Clockv.exit
  %i.ae = load i32, ptr %1, align 4, !tbaa !92
  %.not25 = icmp eq i32 %i.ae, 0
  br i1 %.not25, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.af = call noundef zeroext i1 @_ZN5Gluco10SimpSolver9eliminateEb(ptr noundef nonnull align 8 dereferenceable(1484) %6, i1 noundef zeroext true) #28 ; 0 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 1252
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !76
  %i.ai = getelementptr inbounds nuw i8, ptr %6, i64 1256
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !93
  %i.ak = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.18, i32 noundef %i.ah, i32 noundef %i.aj) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  %i.al = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %4) #28
  %i.am = icmp slt i32 %i.al, 0
  br i1 %i.am, label %_ZL9Abc_Clockv.exit34, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.an = load i64, ptr %4, align 8, !tbaa !86
  %i.ao = mul nsw i64 %i.an, 1000000
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !87
  %i.ar = sdiv i64 %i.aq, 1000
  %i.as = add nsw i64 %i.ar, %i.ao
  br label %_ZL9Abc_Clockv.exit34

_ZL9Abc_Clockv.exit34:                            ; preds = %bb.e, %bb.f
  %.0.i33 = phi i64 [ %i.as, %bb.f ], [ -1, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  %i.at = sub nsw i64 %.0.i33, %.0.i
  call void (i32, ptr, ...) @_ZL9Abc_PrintiPKcz(i32 poison, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.19)
  %i.au = sitofp i64 %i.at to double
  %i.av = fdiv double %i.au, 1.000000e+06
  call void (i32, ptr, ...) @_ZL9Abc_PrintiPKcz(i32 poison, ptr noundef nonnull @.str.43, double noundef %i.av)
  br label %bb.g

bb.g:                                             ; preds = %_ZL9Abc_Clockv.exit34, %bb.d
  %i.aw = getelementptr inbounds nuw i8, ptr %6, i64 760 ; 7 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !23
  %.not.i.i39 = icmp eq ptr %i.ax, null
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %6, i64 768 ; 2 uses
  br i1 %.not.i.i39, label %_ZN5Gluco3vecINS_3LitEE5clearEb.exit.i, label %_ZNK5Gluco3vecINS_3LitEE6copyToERS2_.exit.sink.split

_ZN5Gluco3vecINS_3LitEE5clearEb.exit.i:           ; preds = %bb.g
  %.pre.i = load i32, ptr %.phi.trans.insert.i, align 8, !tbaa !24 ; 3 uses
  %.not.i7.i = icmp slt i32 %.pre.i, 0
  br i1 %.not.i7.i, label %bb.h, label %_ZNK5Gluco3vecINS_3LitEE6copyToERS2_.exit

bb.h:                                             ; preds = %_ZN5Gluco3vecINS_3LitEE5clearEb.exit.i
  %i.ay = getelementptr inbounds nuw i8, ptr %6, i64 772 ; 2 uses
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !26 ; 5 uses
  %.not.i.i.i = icmp slt i32 %i.az, 0
  br i1 %.not.i.i.i, label %bb.i, label %.lr.ph.preheader.i.i

bb.i:                                             ; preds = %bb.h
  %i.ba = sub i32 1, %i.az
  %i.bb = and i32 %i.ba, -2
  %i.bc = ashr i32 %i.az, 1
  %i.bd = and i32 %i.bc, -2
  %i.be = add nsw i32 %i.bd, 2
  %i.bf = call noundef i32 @llvm.smax.i32(i32 %i.be, i32 %i.bb) ; 2 uses
  %7 = sub nsw i32 2147483647, %i.az
  %8 = icmp samesign ugt i32 %i.bf, %7
  br i1 %8, label %bb.k, label %9

9:                                                ; preds = %bb.i
  %10 = add nuw nsw i32 %i.bf, %i.az              ; 2 uses
  store i32 %10, ptr %i.ay, align 4, !tbaa !26
  %11 = zext nneg i32 %10 to i64
  %12 = shl nuw nsw i64 %11, 2
  %malloc = call ptr @malloc(i64 %12)             ; 2 uses
  store ptr %malloc, ptr %i.aw, align 8, !tbaa !23
  %13 = icmp eq ptr %malloc, null
  br i1 %13, label %bb.j, label %.lr.ph.preheader.i.i

bb.j:                                             ; preds = %9
  %i.bg = tail call ptr @__errno_location() #30
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !16
  %i.bi = icmp eq i32 %i.bh, 12
  br i1 %i.bi, label %bb.k, label %.lr.ph.preheader.i.i

bb.k:                                             ; preds = %bb.j, %bb.i
  call fastcc void @_ZN5GlucoL19fatal_out_of_memoryEv()
  unreachable

.lr.ph.preheader.i.i:                             ; preds = %bb.h, %9, %bb.j
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
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !211

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.preheader.i.i
  %indvars.iv.i.i.unr = phi i64 [ %i.bj, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i.prol, %.lr.ph.i.i.prol ]
  %i.bn = icmp ugt i32 %.pre.i, -4
  br i1 %i.bn, label %_ZNK5Gluco3vecINS_3LitEE6copyToERS2_.exit.sink.split, label %.lr.ph.i.i

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
  br i1 %exitcond.not.i.i.3, label %_ZNK5Gluco3vecINS_3LitEE6copyToERS2_.exit.sink.split, label %.lr.ph.i.i, !llvm.loop !4

_ZNK5Gluco3vecINS_3LitEE6copyToERS2_.exit.sink.split: ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.g
  store i32 0, ptr %.phi.trans.insert.i, align 8, !tbaa !24
  br label %_ZNK5Gluco3vecINS_3LitEE6copyToERS2_.exit

_ZNK5Gluco3vecINS_3LitEE6copyToERS2_.exit:        ; preds = %_ZNK5Gluco3vecINS_3LitEE6copyToERS2_.exit.sink.split, %_ZN5Gluco3vecINS_3LitEE5clearEb.exit.i
  %i.bz = call i8 @_ZN5Gluco10SimpSolver6solve_Ebb(ptr noundef nonnull align 8 dereferenceable(1484) %6, i1 noundef zeroext false, i1 noundef zeroext false) #28 ; 2 uses
  %i.ca = load i32, ptr %i.i, align 4, !tbaa !89
  %.not26 = icmp eq i32 %i.ca, 0
  br i1 %.not26, label %bb.n, label %bb.l

bb.l:                                             ; preds = %_ZNK5Gluco3vecINS_3LitEE6copyToERS2_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %i.cb = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %3) #28
  %i.cc = icmp slt i32 %i.cb, 0
  br i1 %i.cc, label %_ZL9Abc_Clockv.exit36, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cd = load i64, ptr %3, align 8, !tbaa !86
  %i.ce = mul nsw i64 %i.cd, 1000000
  %i.cf = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !87
  %i.ch = sdiv i64 %i.cg, 1000
  %i.ci = add nsw i64 %i.ch, %i.ce
  br label %_ZL9Abc_Clockv.exit36

_ZL9Abc_Clockv.exit36:                            ; preds = %bb.l, %bb.m
  %.0.i35 = phi i64 [ %i.ci, %bb.m ], [ -1, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  %i.cj = sub nsw i64 %.0.i35, %.0.i
  call void @_Z19glucose_print_statsRN5Gluco10SimpSolverEl(ptr noundef nonnull align 8 dereferenceable(1484) %6, i64 noundef %i.cj)
  br label %bb.n

bb.n:                                             ; preds = %_ZL9Abc_Clockv.exit36, %_ZNK5Gluco3vecINS_3LitEE6copyToERS2_.exit
  %i.ck = icmp eq i8 %i.bz, 0                     ; 3 uses
  %i.cl = icmp eq i8 %i.bz, 1                     ; 2 uses
  %.str.24..str.25 = select i1 %i.cl, ptr @.str.24, ptr @.str.25
  %i.cm = select i1 %i.ck, ptr @.str.23, ptr %.str.24..str.25
  %i.cn = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) %i.cm) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  %i.co = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %2) #28
  %i.cp = icmp slt i32 %i.co, 0
  br i1 %i.cp, label %_ZL9Abc_Clockv.exit38, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cq = load i64, ptr %2, align 8, !tbaa !86
  %i.cr = mul nsw i64 %i.cq, 1000000
  %i.cs = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !87
  %i.cu = sdiv i64 %i.ct, 1000
  %i.cv = add nsw i64 %i.cu, %i.cr
  br label %_ZL9Abc_Clockv.exit38

_ZL9Abc_Clockv.exit38:                            ; preds = %bb.n, %bb.o
  %.0.i37 = phi i64 [ %i.cv, %bb.o ], [ -1, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  %i.cw = sub nsw i64 %.0.i37, %.0.i
  call void (i32, ptr, ...) @_ZL9Abc_PrintiPKcz(i32 poison, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.26)
  %i.cx = sitofp i64 %i.cw to double
  %i.cy = fdiv double %i.cx, 1.000000e+06
  call void (i32, ptr, ...) @_ZL9Abc_PrintiPKcz(i32 poison, ptr noundef nonnull @.str.43, double noundef %i.cy)
  br i1 %i.ck, label %bb.p, label %.critedge

bb.p:                                             ; preds = %_ZL9Abc_Clockv.exit38
  %i.cz = getelementptr i8, ptr %0, i64 64        ; 2 uses
  %.val29 = load ptr, ptr %i.cz, align 8, !tbaa !127
  %i.da = getelementptr i8, ptr %.val29, i64 4
  %.val29.val = load i32, ptr %i.da, align 4, !tbaa !118
  %i.db = call ptr @Abc_CexAlloc(i32 noundef 0, i32 noundef %.val29.val, i32 noundef 1) #28 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 376
  store ptr %i.db, ptr %i.dc, align 8, !tbaa !216
  %i.dd = load ptr, ptr %i.cz, align 8, !tbaa !127 ; 2 uses
  %i.de = getelementptr i8, ptr %i.dd, i64 4      ; 2 uses
  %.val57 = load i32, ptr %i.de, align 4, !tbaa !118 ; 2 uses
  %i.df = icmp sgt i32 %.val57, 0
  br i1 %i.df, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.p
  %i.dg = getelementptr i8, ptr %0, i64 32
  %.val31 = load ptr, ptr %i.dg, align 8, !tbaa !129
  %.not27 = icmp eq ptr %.val31, null
  %i.dh = getelementptr inbounds nuw i8, ptr %6, i64 96
  %i.di = load ptr, ptr %i.dh, align 8
  %i.dj = getelementptr inbounds nuw i8, ptr %i.db, i64 20
  br i1 %.not27, label %.critedge, label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.dk = getelementptr i8, ptr %i.w, i64 8
  %i.dl = getelementptr i8, ptr %i.dd, i64 8
  %.val32.val = load ptr, ptr %i.dl, align 8, !tbaa !120
  %.val28 = load ptr, ptr %i.dk, align 8, !tbaa !120
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
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !58
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
  %.val.pre = load i32, ptr %i.de, align 4, !tbaa !118
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.r
  %.val = phi i32 [ %.val61, %bb.q ], [ %.val.pre, %bb.r ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ed = sext i32 %.val to i64
  %i.ee = icmp slt i64 %indvars.iv.next, %i.ed
  br i1 %i.ee, label %bb.q, label %.critedge, !llvm.loop !212

.critedge:                                        ; preds = %bb.s, %bb.p, %.lr.ph, %_ZL9Abc_Clockv.exit38
  %i.ef = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !120 ; 2 uses
  %.not.i = icmp eq ptr %i.eg, null
  br i1 %.not.i, label %_ZL11Vec_IntFreeP10Vec_Int_t_.exit, label %bb.t

bb.t:                                             ; preds = %.critedge
  call void @free(ptr noundef nonnull %i.eg) #28
  br label %_ZL11Vec_IntFreeP10Vec_Int_t_.exit

_ZL11Vec_IntFreeP10Vec_Int_t_.exit:               ; preds = %.critedge, %bb.t
  call void @free(ptr noundef nonnull %i.w) #28
  %i.eh = select i1 %i.cl, i32 20, i32 0
  %i.ei = select i1 %i.ck, i32 10, i32 %i.eh
  call void @_ZN5Gluco10SimpSolverD1Ev(ptr noundef nonnull align 8 dead_on_return(1484) dereferenceable(1484) %6) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  ret i32 %i.ei
}

declare ptr @Abc_CexAlloc(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNK5Gluco3vecINS_3LitEE6copyToERS2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !23     ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  br i1 %.not.i, label %._ZN5Gluco3vecINS_3LitEE5clearEb.exit_crit_edge, label %.preheader.i

._ZN5Gluco3vecINS_3LitEE5clearEb.exit_crit_edge:  ; preds = %bb.a
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !24
end_hunk_3
