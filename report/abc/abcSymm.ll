Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/abcSymm?download=true
inline.NumInlined: 78
inline.NumDeleted: 45
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 10
begin_hunk_0_@Abc_NtkSymmetries:bb.a
  %i.bw = call ptr @Extra_SymmPairsCompute(ptr noundef %i.g, ptr noundef %i.bn) #18
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.026.i.i = phi ptr [ %i.bv, %bb.o ], [ %i.bw, %bb.p ] ; 5 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.026.i.i, i64 8 ; 2 uses
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !79
  %i.bz = add nsw i32 %i.by, %.02535.i.i
  br i1 %.not27.i.i, label %Ntk_NetworkSymmsPrint.exit.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ca = call ptr @Abc_ObjName(ptr noundef nonnull %i.ad) #18
  %i.cb = load i32, ptr %i.bx, align 8, !tbaa !79
  %i.cc = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, ptr noundef %i.ca, i32 noundef %i.cb) ; 0 uses
  %.val.i.i.i = load ptr, ptr %i.aa, align 8, !tbaa !80
  %i.cd = getelementptr i8, ptr %.val.i.i.i, i64 4
  %.val.val.i.i.i = load i32, ptr %i.cd, align 4, !tbaa !61
  %i.ce = call ptr @Abc_NtkCollectCioNames(ptr noundef nonnull %0, i32 noundef 0) #18 ; 4 uses
  %i.cf = sext i32 %.val.val.i.i.i to i64
  %i.cg = shl nsw i64 %i.cf, 2
  %calloc.i.i.i = call ptr @calloc(i64 1, i64 %i.cg) ; 4 uses
  %i.ch = load i32, ptr %.026.i.i, align 8, !tbaa !81 ; 2 uses
  %i.ci = icmp sgt i32 %i.ch, 0
  br i1 %i.ci, label %.lr.ph45.split.us.preheader.i.i.i, label %._crit_edge46.i.i.i

.lr.ph45.split.us.preheader.i.i.i:                ; preds = %bb.r
  %i.cj = getelementptr inbounds nuw i8, ptr %.026.i.i, i64 24
  %i.ck = getelementptr inbounds nuw i8, ptr %.026.i.i, i64 16 ; 2 uses
  %wide.trip.count52.i.i.i = zext nneg i32 %i.ch to i64 ; 3 uses
  br label %.lr.ph45.split.us.i.i.i

.lr.ph45.split.us.i.i.i:                          ; preds = %bb.w, %.lr.ph45.split.us.preheader.i.i.i
  %indvars.iv49.i.i.i = phi i64 [ 0, %.lr.ph45.split.us.preheader.i.i.i ], [ %indvars.iv.next50.i.i.i, %bb.w ] ; 5 uses
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %calloc.i.i.i, i64 %indvars.iv49.i.i.i ; 2 uses
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !16
  %.not40.us.i.i.i = icmp eq i32 %i.cm, 0
  br i1 %.not40.us.i.i.i, label %.preheader.us.outer.i.i.i, label %bb.w

.preheader.us.outer.i.i.i:                        ; preds = %.lr.ph45.split.us.i.i.i, %.thread.i.i.i
  %indvars.iv.ph.i.i.i = phi i64 [ %indvars.iv.next57.i.i.i, %.thread.i.i.i ], [ 0, %.lr.ph45.split.us.i.i.i ]
  %i.cn = phi i1 [ false, %.thread.i.i.i ], [ true, %.lr.ph45.split.us.i.i.i ]
  %i.co = phi i1 [ true, %.thread.i.i.i ], [ false, %.lr.ph45.split.us.i.i.i ]
  br label %.preheader.us.i.i.i

.preheader.us.i.i.i:                              ; preds = %bb.v, %.preheader.us.outer.i.i.i
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i, %bb.v ], [ %indvars.iv.ph.i.i.i, %.preheader.us.outer.i.i.i ] ; 6 uses
  %i.cp = icmp eq i64 %indvars.iv.i.i.i, %indvars.iv49.i.i.i
  br i1 %i.cp, label %bb.v, label %bb.s

bb.s:                                             ; preds = %.preheader.us.i.i.i
  %i.cq = load ptr, ptr %i.cj, align 8, !tbaa !82
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.cq, i64 %indvars.iv49.i.i.i
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !83
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 %indvars.iv.i.i.i
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !17
  %i.cv = icmp eq i8 %i.cu, 0
  br i1 %i.cv, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  br i1 %i.cn, label %bb.u, label %.thread.i.i.i

bb.u:                                             ; preds = %bb.t
  %i.cw = load ptr, ptr %i.ck, align 8, !tbaa !84
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %indvars.iv49.i.i.i
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !16
  %i.cz = sext i32 %i.cy to i64
  %i.da = getelementptr inbounds [8 x i8], ptr %i.ce, i64 %i.cz
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !83
  %i.dc = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.22, ptr noundef %i.db) ; 0 uses
  store i32 1, ptr %i.cl, align 4, !tbaa !16
  br label %.thread.i.i.i

bb.v:                                             ; preds = %bb.s, %.preheader.us.i.i.i
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %wide.trip.count52.i.i.i
  br i1 %exitcond.not.i.i.i, label %._crit_edge.us.i.i.i, label %.preheader.us.i.i.i, !llvm.loop !40

.thread.i.i.i:                                    ; preds = %bb.u, %bb.t
  %i.dd = load ptr, ptr %i.ck, align 8, !tbaa !84
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %indvars.iv.i.i.i
  %i.df = load i32, ptr %i.de, align 4, !tbaa !16
  %i.dg = sext i32 %i.df to i64
  %i.dh = getelementptr inbounds [8 x i8], ptr %i.ce, i64 %i.dg
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !83
  %i.dj = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.23, ptr noundef %i.di) ; 0 uses
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %calloc.i.i.i, i64 %indvars.iv.i.i.i
  store i32 1, ptr %i.dk, align 4, !tbaa !16
  %indvars.iv.next57.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond.not58.i.i.i = icmp eq i64 %indvars.iv.next57.i.i.i, %wide.trip.count52.i.i.i
  br i1 %exitcond.not58.i.i.i, label %._crit_edge.us.thread.i.i.i, label %.preheader.us.outer.i.i.i, !llvm.loop !40

._crit_edge.us.thread.i.i.i:                      ; preds = %.thread.i.i.i, %._crit_edge.us.i.i.i
  %i.dl = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.24) ; 0 uses
  br label %bb.w

bb.w:                                             ; preds = %._crit_edge.us.i.i.i, %._crit_edge.us.thread.i.i.i, %.lr.ph45.split.us.i.i.i
  %indvars.iv.next50.i.i.i = add nuw nsw i64 %indvars.iv49.i.i.i, 1 ; 2 uses
  %exitcond53.not.i.i.i = icmp eq i64 %indvars.iv.next50.i.i.i, %wide.trip.count52.i.i.i
  br i1 %exitcond53.not.i.i.i, label %._crit_edge46.i.i.i, label %.lr.ph45.split.us.i.i.i, !llvm.loop !41

._crit_edge.us.i.i.i:                             ; preds = %bb.v
  br i1 %i.co, label %._crit_edge.us.thread.i.i.i, label %bb.w

._crit_edge46.i.i.i:                              ; preds = %bb.w, %bb.r
  %putchar.i.i.i = call i32 @putchar(i32 10)      ; 0 uses
  %.not.i.i.i = icmp eq ptr %i.ce, null
  br i1 %.not.i.i.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %._crit_edge46.i.i.i
  call void @free(ptr noundef nonnull %i.ce) #18
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %._crit_edge46.i.i.i
  %.not39.i.i.i = icmp eq ptr %calloc.i.i.i, null
  br i1 %.not39.i.i.i, label %Ntk_NetworkSymmsPrint.exit.i.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @free(ptr noundef nonnull %calloc.i.i.i) #18
  br label %Ntk_NetworkSymmsPrint.exit.i.i

Ntk_NetworkSymmsPrint.exit.i.i:                   ; preds = %bb.z, %bb.y, %bb.q
  call void @Extra_SymmPairsDissolve(ptr noundef %.026.i.i) #18
  br label %bb.aa

bb.aa:                                            ; preds = %Ntk_NetworkSymmsPrint.exit.i.i, %Abc_ObjGlobalBdd.exit.i.i
  %.1.i.i = phi i32 [ %.02535.i.i, %Abc_ObjGlobalBdd.exit.i.i ], [ %i.bz, %Ntk_NetworkSymmsPrint.exit.i.i ] ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %.val.i.i = load ptr, ptr %i.x, align 8, !tbaa !59 ; 2 uses
  %i.dm = getelementptr i8, ptr %.val.i.i, i64 4
  %.val.val.i.i = load i32, ptr %i.dm, align 4, !tbaa !61
  %i.dn = sext i32 %.val.val.i.i to i64
  %i.do = icmp slt i64 %indvars.iv.next.i.i, %i.dn
  br i1 %i.do, label %bb.f, label %Ntk_NetworkSymmsBdd.exit.i, !llvm.loop !42

Ntk_NetworkSymmsBdd.exit.i:                       ; preds = %bb.aa, %Abc_Clock.exit25.i
  %.025.lcssa.i.i = phi i32 [ 0, %Abc_Clock.exit25.i ], [ %.1.i.i, %bb.aa ]
  %.024.lcssa.i.i = phi i32 [ 0, %Abc_Clock.exit25.i ], [ %i.bp, %bb.aa ]
  %i.dp = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.20, i32 noundef %.024.lcssa.i.i) ; 0 uses
  %i.dq = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.21, i32 noundef %.025.lcssa.i.i) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  %i.dr = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %5) #18
  %i.ds = icmp slt i32 %i.dr, 0
  br i1 %i.ds, label %Abc_NtkSymmetriesUsingBdds.exit, label %bb.ab

bb.ab:                                            ; preds = %Ntk_NetworkSymmsBdd.exit.i
  %i.dt = load i64, ptr %5, align 8, !tbaa !44
  %i.du = mul nsw i64 %i.dt, 1000000
  %i.dv = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !45
  %i.dx = sdiv i64 %i.dw, 1000
  %i.dy = add nsw i64 %i.dx, %i.du
  br label %Abc_NtkSymmetriesUsingBdds.exit

Abc_NtkSymmetriesUsingBdds.exit:                  ; preds = %Ntk_NetworkSymmsBdd.exit.i, %bb.ab
  %.0.i26.i = phi i64 [ %i.dy, %bb.ab ], [ -1, %Ntk_NetworkSymmsBdd.exit.i ]
  %i.dz = add i64 %.0.i22.i, %.0.i.neg.i          ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  %i.ea = add i64 %.0.i26.i, %.0.i24.neg.i        ; 2 uses
  %i.eb = call ptr @Abc_NtkFreeGlobalBdds(ptr noundef nonnull %0, i32 noundef 1) #18 ; 0 uses
  %puts.i = call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  %.not.i = icmp eq i32 %2, 0
  %i.ec = select i1 %.not.i, ptr @.str.11, ptr @.str.10
  %.not21.i = icmp eq i32 %3, 0
  %i.ed = select i1 %.not21.i, ptr @.str.13, ptr @.str.12
  %i.ee = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, ptr noundef nonnull %i.ec, ptr noundef nonnull %i.ed, ptr noundef nonnull @.str.12) ; 0 uses
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15)
  %i.ef = sitofp i64 %i.dz to double
  %i.eg = sitofp i64 %i.ea to double
  %i.eh = insertelement <2 x double> poison, double %i.ef, i64 0
  %i.ei = insertelement <2 x double> %i.eh, double %i.eg, i64 1
  %i.ej = fdiv <2 x double> %i.ei, splat (double 1.000000e+06) ; 2 uses
  %i.ek = extractelement <2 x double> %i.ej, i64 0
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.16, double noundef %i.ek)
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.17)
  %i.el = extractelement <2 x double> %i.ej, i64 1
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.16, double noundef %i.el)
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.18)
  %i.em = add nsw i64 %i.ea, %i.dz
  %i.en = sitofp i64 %i.em to double
  %i.eo = fdiv double %i.en, 1.000000e+06
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.16, double noundef %i.eo)
  br label %bb.ad

bb.ac:                                            ; preds = %bb.a
  %i.ep = tail call i32 @Sim_ComputeTwoVarSymms(ptr noundef %0, i32 noundef %4) #18
  %i.eq = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, i32 noundef %i.ep) ; 0 uses
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %Abc_NtkSymmetriesUsingBdds.exit
  ret void
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define void @Ntk_SymTryRandomFlips(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readnone captures(none) %1, i32 noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp slt i32 %2, 7
  %i.b = add nsw i32 %2, -6
  %i.c = shl nuw i32 1, %i.b
  %i.d = select i1 %i.a, i32 1, i32 %i.c          ; 6 uses
  %i.e = sext i32 %i.d to i64                     ; 2 uses
  %i.f = tail call noalias ptr @calloc(i64 noundef %i.e, i64 noundef 8) #21 ; 12 uses
  %i.g = icmp sgt i32 %i.d, 0
  br i1 %i.g, label %Abc_TtCopy.exit, label %.split

Abc_TtCopy.exit:                                  ; preds = %bb.a
  %wide.trip.count24.i = zext nneg i32 %i.d to i64 ; 2 uses
  %i.h = shl nuw nsw i64 %wide.trip.count24.i, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.f, ptr noundef nonnull align 8 dereferenceable(1) %0, i64 %i.h, i1 false), !tbaa !19
  %i.i = add nsw i32 %2, -1
  %i.j = icmp eq i32 %i.d, 1
  %.idx.i = shl nuw nsw i64 %i.e, 3
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 %.idx.i
  br i1 %i.j, label %.split.thread, label %Abc_TtCopy.exit.split.split.us.preheader

Abc_TtCopy.exit.split.split.us.preheader:         ; preds = %Abc_TtCopy.exit
  %min.iters.check = icmp ult i32 %i.d, 4
  %n.vec = and i64 %wide.trip.count24.i, 2147483644
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %exitcond60.not.i.us.1 = icmp eq i32 %i.d, 2
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  br label %Abc_TtCopy.exit.split.split.us

Abc_TtCopy.exit.split.split.us:                   ; preds = %Abc_TtCopy.exit.split.split.us.preheader, %Abc_TtFlip.exit.us16
  %indvars.iv = phi i64 [ %indvars.iv.next, %Abc_TtFlip.exit.us16 ], [ 0, %Abc_TtCopy.exit.split.split.us.preheader ] ; 2 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr @__const.Ntk_SymTryRandomFlips.Rand, i64 %indvars.iv
  %i.o = load i32, ptr %i.n, align 4, !tbaa !16
  %i.p = srem i32 %i.o, %i.i                      ; 4 uses
  %i.q = icmp slt i32 %i.p, 6
  br i1 %i.q, label %.lr.ph.i.us, label %.preheader.lr.ph.i.us

.preheader.lr.ph.i.us:                            ; preds = %Abc_TtCopy.exit.split.split.us
  %i.r = add nsw i32 %i.p, -6                     ; 3 uses
  %.not.i.us = icmp eq i32 %i.r, 31
  %i.s = shl i32 2, %i.r
  %i.t = sext i32 %i.s to i64                     ; 2 uses
  br i1 %.not.i.us, label %Abc_TtFlip.exit.us16, label %.preheader.us.preheader.i.us

.preheader.us.preheader.i.us:                     ; preds = %.preheader.lr.ph.i.us
  %i.u = shl nuw i32 1, %i.r                      ; 4 uses
  %i.v = sext i32 %i.u to i64                     ; 2 uses
  %smax.i.us = tail call i32 @llvm.smax.i32(i32 %i.u, i32 1) ; 2 uses
  %wide.trip.count.i.us = zext nneg i32 %smax.i.us to i64 ; 5 uses
  %i.w = shl nuw nsw i64 %wide.trip.count.i.us, 3
  %3 = add nsw i64 %i.v, %wide.trip.count.i.us
  %4 = shl nsw i64 %3, 3
  %5 = shl nsw i64 %i.t, 3
  %min.iters.check42 = icmp slt i32 %i.u, 4
  %6 = getelementptr i8, ptr %i.f, i64 %i.w
  %7 = getelementptr i8, ptr %i.f, i64 %4
  %n.vec44 = and i64 %wide.trip.count.i.us, 2147483644
  %xtraiter = and i64 %wide.trip.count.i.us, 1
  %i.x = icmp slt i32 %i.u, 2
  %unroll_iter = and i64 %wide.trip.count.i.us, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod58 = trunc i32 %smax.i.us to i1
  br label %.preheader.us.i.us

.preheader.us.i.us:                               ; preds = %._crit_edge.us.i.us, %.preheader.us.preheader.i.us
  %indvar = phi i64 [ %indvar.next, %._crit_edge.us.i.us ], [ 0, %.preheader.us.preheader.i.us ] ; 2 uses
  %.051.us.i.us = phi ptr [ %i.am, %._crit_edge.us.i.us ], [ %i.f, %.preheader.us.preheader.i.us ] ; 7 uses
  %invariant.gep.i.us = getelementptr [8 x i8], ptr %.051.us.i.us, i64 %i.v ; 5 uses
  br i1 %min.iters.check42, label %scalar.ph41.preheader, label %vector.memcheck

scalar.ph41.preheader:                            ; preds = %vector.memcheck, %.preheader.us.i.us
  br i1 %i.x, label %scalar.ph41.epil.preheader, label %scalar.ph41

vector.memcheck:                                  ; preds = %.preheader.us.i.us
  %8 = mul i64 %indvar, %5                        ; 2 uses
  %9 = getelementptr i8, ptr %6, i64 %8
  %10 = getelementptr i8, ptr %7, i64 %8
  %bound0 = icmp ult ptr %.051.us.i.us, %10
  %bound1 = icmp ult ptr %invariant.gep.i.us, %9
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph41.preheader, label %vector.body45

vector.body45:                                    ; preds = %vector.memcheck, %vector.body45
  %index46 = phi i64 [ %index.next51, %vector.body45 ], [ 0, %vector.memcheck ] ; 3 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %.051.us.i.us, i64 %index46 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16 ; 2 uses
  %wide.load47 = load <2 x i64>, ptr %i.y, align 8, !tbaa !19, !alias.scope !92, !noalias !93
  %wide.load48 = load <2 x i64>, ptr %i.z, align 8, !tbaa !19, !alias.scope !92, !noalias !93
  %i.aa = getelementptr [8 x i8], ptr %invariant.gep.i.us, i64 %index46 ; 3 uses
  %i.ab = getelementptr i8, ptr %i.aa, i64 16     ; 2 uses
  %wide.load49 = load <2 x i64>, ptr %i.aa, align 8, !tbaa !19, !alias.scope !93
  %wide.load50 = load <2 x i64>, ptr %i.ab, align 8, !tbaa !19, !alias.scope !93
  store <2 x i64> %wide.load49, ptr %i.y, align 8, !tbaa !19, !alias.scope !92, !noalias !93
  store <2 x i64> %wide.load50, ptr %i.z, align 8, !tbaa !19, !alias.scope !92, !noalias !93
  store <2 x i64> %wide.load47, ptr %i.aa, align 8, !tbaa !19, !alias.scope !93
  store <2 x i64> %wide.load48, ptr %i.ab, align 8, !tbaa !19, !alias.scope !93
  %index.next51 = add nuw i64 %index46, 4         ; 2 uses
  %i.ac = icmp eq i64 %index.next51, %n.vec44
  br i1 %i.ac, label %._crit_edge.us.i.us, label %vector.body45, !llvm.loop !88

scalar.ph41:                                      ; preds = %scalar.ph41.preheader, %scalar.ph41
  %indvars.iv.i.us = phi i64 [ %indvars.iv.next.i.us.1, %scalar.ph41 ], [ 0, %scalar.ph41.preheader ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %scalar.ph41 ], [ 0, %scalar.ph41.preheader ]
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %.051.us.i.us, i64 %indvars.iv.i.us ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !19
  %gep.i.us = getelementptr [8 x i8], ptr %invariant.gep.i.us, i64 %indvars.iv.i.us ; 2 uses
  %i.af = load i64, ptr %gep.i.us, align 8, !tbaa !19
  store i64 %i.af, ptr %i.ad, align 8, !tbaa !19
  store i64 %i.ae, ptr %gep.i.us, align 8, !tbaa !19
  %indvars.iv.next.i.us = or disjoint i64 %indvars.iv.i.us, 1 ; 2 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %.051.us.i.us, i64 %indvars.iv.next.i.us ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !19
  %gep.i.us.1 = getelementptr [8 x i8], ptr %invariant.gep.i.us, i64 %indvars.iv.next.i.us ; 2 uses
  %i.ai = load i64, ptr %gep.i.us.1, align 8, !tbaa !19
  store i64 %i.ai, ptr %i.ag, align 8, !tbaa !19
  store i64 %i.ah, ptr %gep.i.us.1, align 8, !tbaa !19
  %indvars.iv.next.i.us.1 = add nuw nsw i64 %indvars.iv.i.us, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us.i.us.loopexit.unr-lcssa, label %scalar.ph41, !llvm.loop !89

._crit_edge.us.i.us.loopexit.unr-lcssa:           ; preds = %scalar.ph41
  br i1 %lcmp.mod.not, label %._crit_edge.us.i.us, label %scalar.ph41.epil.preheader

scalar.ph41.epil.preheader:                       ; preds = %._crit_edge.us.i.us.loopexit.unr-lcssa, %scalar.ph41.preheader
  %indvars.iv.i.us.epil.init = phi i64 [ 0, %scalar.ph41.preheader ], [ %indvars.iv.next.i.us.1, %._crit_edge.us.i.us.loopexit.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod58)
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %.051.us.i.us, i64 %indvars.iv.i.us.epil.init ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !19
  %gep.i.us.epil = getelementptr [8 x i8], ptr %invariant.gep.i.us, i64 %indvars.iv.i.us.epil.init ; 2 uses
  %i.al = load i64, ptr %gep.i.us.epil, align 8, !tbaa !19
  store i64 %i.al, ptr %i.aj, align 8, !tbaa !19
  store i64 %i.ak, ptr %gep.i.us.epil, align 8, !tbaa !19
  br label %._crit_edge.us.i.us

._crit_edge.us.i.us:                              ; preds = %vector.body45, %scalar.ph41.epil.preheader, %._crit_edge.us.i.us.loopexit.unr-lcssa
  %i.am = getelementptr inbounds [8 x i8], ptr %.051.us.i.us, i64 %i.t ; 2 uses
  %i.an = icmp ult ptr %i.am, %i.k
  %indvar.next = add i64 %indvar, 1
  br i1 %i.an, label %.preheader.us.i.us, label %Abc_TtFlip.exit.us16, !llvm.loop !0

.lr.ph.i.us:                                      ; preds = %Abc_TtCopy.exit.split.split.us
  %i.ao = shl nuw nsw i32 1, %i.p
  %i.ap = zext nneg i32 %i.ao to i64              ; 7 uses
  %i.aq = sext i32 %i.p to i64
  %i.ar = getelementptr inbounds [8 x i8], ptr @s_Truths6, i64 %i.aq
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !19 ; 7 uses
  br i1 %min.iters.check, label %scalar.ph, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.us
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.ap, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert37 = insertelement <2 x i64> poison, i64 %i.as, i64 0
  %broadcast.splat38 = shufflevector <2 x i64> %broadcast.splatinsert37, <2 x i64> poison, <2 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %index ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.at, align 8, !tbaa !19 ; 2 uses
  %wide.load39 = load <2 x i64>, ptr %i.au, align 8, !tbaa !19 ; 2 uses
  %i.av = shl <2 x i64> %wide.load, %broadcast.splat
  %i.aw = shl <2 x i64> %wide.load39, %broadcast.splat
  %i.ax = and <2 x i64> %i.av, %broadcast.splat38
  %i.ay = and <2 x i64> %i.aw, %broadcast.splat38
  %i.az = and <2 x i64> %wide.load, %broadcast.splat38
  %i.ba = and <2 x i64> %wide.load39, %broadcast.splat38
  %i.bb = lshr <2 x i64> %i.az, %broadcast.splat
  %i.bc = lshr <2 x i64> %i.ba, %broadcast.splat
  %i.bd = or <2 x i64> %i.bb, %i.ax
  %i.be = or <2 x i64> %i.bc, %i.ay
  store <2 x i64> %i.bd, ptr %i.at, align 8, !tbaa !19
  store <2 x i64> %i.be, ptr %i.au, align 8, !tbaa !19
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bf = icmp eq i64 %index.next, %n.vec
  br i1 %i.bf, label %Abc_TtFlip.exit.us16, label %vector.body, !llvm.loop !90

scalar.ph:                                        ; preds = %.lr.ph.i.us
  %i.bg = load i64, ptr %i.f, align 8, !tbaa !19  ; 2 uses
  %i.bh = shl i64 %i.bg, %i.ap
  %i.bi = and i64 %i.bh, %i.as
  %i.bj = and i64 %i.bg, %i.as
  %i.bk = lshr i64 %i.bj, %i.ap
  %i.bl = or i64 %i.bk, %i.bi
  store i64 %i.bl, ptr %i.f, align 8, !tbaa !19
  %i.bm = load i64, ptr %i.l, align 8, !tbaa !19  ; 2 uses
  %i.bn = shl i64 %i.bm, %i.ap
  %i.bo = and i64 %i.bn, %i.as
  %i.bp = and i64 %i.bm, %i.as
  %i.bq = lshr i64 %i.bp, %i.ap
  %i.br = or i64 %i.bq, %i.bo
  store i64 %i.br, ptr %i.l, align 8, !tbaa !19
  br i1 %exitcond60.not.i.us.1, label %Abc_TtFlip.exit.us16, label %scalar.ph.2

scalar.ph.2:                                      ; preds = %scalar.ph
  %i.bs = load i64, ptr %i.m, align 8, !tbaa !19  ; 2 uses
  %i.bt = shl i64 %i.bs, %i.ap
  %i.bu = and i64 %i.bt, %i.as
  %i.bv = and i64 %i.bs, %i.as
  %i.bw = lshr i64 %i.bv, %i.ap
  %i.bx = or i64 %i.bw, %i.bu
  store i64 %i.bx, ptr %i.m, align 8, !tbaa !19
  br label %Abc_TtFlip.exit.us16

Abc_TtFlip.exit.us16:                             ; preds = %._crit_edge.us.i.us, %vector.body, %scalar.ph, %scalar.ph.2, %.preheader.lr.ph.i.us
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 16
  br i1 %exitcond.not, label %.split, label %Abc_TtCopy.exit.split.split.us, !llvm.loop !91

.split:                                           ; preds = %Abc_TtFlip.exit.us16, %bb.a
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.b, label %.split.thread

.split.thread:                                    ; preds = %Abc_TtCopy.exit, %.split
  tail call void @free(ptr noundef nonnull %i.f) #18
  br label %bb.b

bb.b:                                             ; preds = %.split, %.split.thread
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define void @Ntk_SymFunDeriveNpn(ptr nofree noundef captures(address) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp slt i32 %1, 7
  %i.b = add nsw i32 %1, -6
  %i.c = shl nuw i32 1, %i.b
  %i.d = select i1 %i.a, i32 1, i32 %i.c          ; 7 uses
  %i.e = sext i32 %i.d to i64                     ; 2 uses
  %i.f = tail call noalias ptr @calloc(i64 noundef %i.e, i64 noundef 8) #21 ; 13 uses
  %i.g = icmp slt i32 %i.d, 1                     ; 8 uses
  br i1 %i.g, label %Abc_TtCopy.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.a
  %wide.trip.count.i = zext nneg i32 %i.d to i64  ; 5 uses
  %min.iters.check = icmp ult i32 %i.d, 4
  br i1 %min.iters.check, label %.lr.ph.i, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %wide.trip.count.i, 2147483644
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %wide.load = load <2 x i64>, ptr %i.h, align 8, !tbaa !19
  %wide.load136 = load <2 x i64>, ptr %i.i, align 8, !tbaa !19
  %i.j = xor <2 x i64> %wide.load, splat (i64 -1)
  %i.k = xor <2 x i64> %wide.load136, splat (i64 -1)
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %index ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store <2 x i64> %i.j, ptr %i.l, align 8, !tbaa !19
  store <2 x i64> %i.k, ptr %i.m, align 8, !tbaa !19
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.n = icmp eq i64 %index.next, %n.vec
  br i1 %i.n, label %Abc_TtCopy.exit, label %vector.body, !llvm.loop !94

.lr.ph.i:                                         ; preds = %.lr.ph.preheader.i
  %i.o = load i64, ptr %0, align 8, !tbaa !19
  %i.p = xor i64 %i.o, -1
  store i64 %i.p, ptr %i.f, align 8, !tbaa !19
  %exitcond.not.i = icmp eq i32 %i.d, 1
  br i1 %exitcond.not.i, label %Abc_TtCopy.exit, label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %.lr.ph.i
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !19
  %i.s = xor i64 %i.r, -1
  %i.t = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 %i.s, ptr %i.t, align 8, !tbaa !19
  %exitcond.not.i.1 = icmp eq i32 %i.d, 2
  br i1 %exitcond.not.i.1, label %Abc_TtCopy.exit, label %.lr.ph.i.2

.lr.ph.i.2:                                       ; preds = %.lr.ph.i.1
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.v = load i64, ptr %i.u, align 8, !tbaa !19
  %i.w = xor i64 %i.v, -1
  %i.x = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 %i.w, ptr %i.x, align 8, !tbaa !19
  br label %Abc_TtCopy.exit

Abc_TtCopy.exit:                                  ; preds = %vector.body, %.lr.ph.i, %.lr.ph.i.1, %.lr.ph.i.2, %bb.a
  %.pre-phi = phi i64 [ 2147483648, %bb.a ], [ %wide.trip.count.i, %.lr.ph.i ], [ %wide.trip.count.i, %.lr.ph.i.2 ], [ %wide.trip.count.i, %.lr.ph.i.1 ], [ %wide.trip.count.i, %vector.body ] ; 17 uses
  %i.y = trunc nuw i64 %.pre-phi to i32
  %i.z = icmp sgt i32 %i.y, 0
  br i1 %i.z, label %.lr.ph131, label %Abc_TtCopy.exit38

bb.b:                                             ; preds = %.lr.ph131
  %i.aa = trunc nuw i64 %i.ac to i32
  %i.ab = icmp sgt i32 %i.aa, 0
  br i1 %i.ab, label %.lr.ph131, label %Abc_TtCopy.exit38, !llvm.loop !95

.lr.ph131:                                        ; preds = %Abc_TtCopy.exit, %bb.b
  %indvars.iv.i37130 = phi i64 [ %i.ac, %bb.b ], [ %.pre-phi, %Abc_TtCopy.exit ]
  %i.ac = add nsw i64 %indvars.iv.i37130, -1      ; 4 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.ac
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !19 ; 2 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ac
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !19 ; 2 uses
  %.not.i = icmp eq i64 %i.ae, %i.ag
  br i1 %.not.i, label %bb.b, label %bb.c, !llvm.loop !95

bb.c:                                             ; preds = %.lr.ph131
  %i.ah = icmp ult i64 %i.ae, %i.ag
  %brmerge = or i1 %i.g, %i.ah
  br i1 %brmerge, label %Abc_TtCopy.exit38, label %.lr.ph18.i.preheader

.lr.ph18.i.preheader:                             ; preds = %bb.c
  %i.ai = shl nuw nsw i64 %.pre-phi, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.f, ptr nonnull align 8 %0, i64 %i.ai, i1 false), !tbaa !19
  br label %Abc_TtCopy.exit38

Abc_TtCopy.exit38:                                ; preds = %bb.b, %Abc_TtCopy.exit, %.lr.ph18.i.preheader, %bb.c
  %.not99 = icmp eq i32 %1, 31
  br i1 %.not99, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %Abc_TtCopy.exit38
  %i.aj = shl nuw nsw i32 1, %1
  %i.ak = icmp eq i32 %i.d, 1
  %.idx.i = shl nsw i64 %i.e, 3
  %i.al = getelementptr inbounds i8, ptr %0, i64 %.idx.i
  %i.am = shl nuw nsw i64 %.pre-phi, 3            ; 2 uses
  %wide.trip.count = zext nneg i32 %i.aj to i64
  %min.iters.check150 = icmp samesign ult i64 %.pre-phi, 4
  %n.vec152 = and i64 %.pre-phi, 4294967292       ; 3 uses
  %cmp.n161 = icmp eq i64 %.pre-phi, %n.vec152
  %i.an = trunc nuw i64 %.pre-phi to i32
  %i.ao = icmp sgt i32 %i.an, 0
  %min.iters.check138 = icmp samesign ult i64 %.pre-phi, 4
  %n.vec140 = and i64 %.pre-phi, 4294967292       ; 3 uses
  %cmp.n147 = icmp eq i64 %.pre-phi, %n.vec140
  %i.ap = trunc nuw i64 %.pre-phi to i32
  %i.aq = icmp sgt i32 %i.ap, 0
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %Abc_TtCopy.exit72
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %Abc_TtCopy.exit72 ] ; 2 uses
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !16 ; 6 uses
  br i1 %i.ak, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.at = load i64, ptr %0, align 8, !tbaa !19    ; 2 uses
  %i.au = shl nuw i32 1, %i.as
  %i.av = zext i32 %i.au to i64                   ; 2 uses
  %i.aw = shl i64 %i.at, %i.av
  %i.ax = sext i32 %i.as to i64
  %i.ay = getelementptr inbounds [8 x i8], ptr @s_Truths6, i64 %i.ax
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !19 ; 2 uses
  %i.ba = and i64 %i.aw, %i.az
  %i.bb = and i64 %i.az, %i.at
  %i.bc = lshr i64 %i.bb, %i.av
  %i.bd = or i64 %i.bc, %i.ba
  store i64 %i.bd, ptr %0, align 8, !tbaa !19
  br label %Abc_TtFlip.exit

bb.f:                                             ; preds = %bb.d
  %i.be = icmp slt i32 %i.as, 6
  br i1 %i.be, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  br i1 %i.g, label %Abc_TtFlip.exit, label %.lr.ph.i44

.lr.ph.i44:                                       ; preds = %bb.g
  %i.bf = shl nuw nsw i32 1, %i.as
  %i.bg = zext nneg i32 %i.bf to i64              ; 3 uses
  %i.bh = sext i32 %i.as to i64
  %i.bi = getelementptr inbounds [8 x i8], ptr @s_Truths6, i64 %i.bh
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !19 ; 3 uses
  br i1 %min.iters.check150, label %scalar.ph149.preheader, label %vector.ph151

vector.ph151:                                     ; preds = %.lr.ph.i44
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.bg, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert153 = insertelement <2 x i64> poison, i64 %i.bj, i64 0
  %broadcast.splat154 = shufflevector <2 x i64> %broadcast.splatinsert153, <2 x i64> poison, <2 x i32> zeroinitializer ; 4 uses
  br label %vector.body155

vector.body155:                                   ; preds = %vector.body155, %vector.ph151
  %index156 = phi i64 [ 0, %vector.ph151 ], [ %index.next159, %vector.body155 ] ; 2 uses
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index156 ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16 ; 2 uses
  %wide.load157 = load <2 x i64>, ptr %i.bk, align 8, !tbaa !19 ; 2 uses
  %wide.load158 = load <2 x i64>, ptr %i.bl, align 8, !tbaa !19 ; 2 uses
  %i.bm = shl <2 x i64> %wide.load157, %broadcast.splat
  %i.bn = shl <2 x i64> %wide.load158, %broadcast.splat
  %i.bo = and <2 x i64> %i.bm, %broadcast.splat154
  %i.bp = and <2 x i64> %i.bn, %broadcast.splat154
  %i.bq = and <2 x i64> %wide.load157, %broadcast.splat154
  %i.br = and <2 x i64> %wide.load158, %broadcast.splat154
  %i.bs = lshr <2 x i64> %i.bq, %broadcast.splat
  %i.bt = lshr <2 x i64> %i.br, %broadcast.splat
  %i.bu = or <2 x i64> %i.bs, %i.bo
  %i.bv = or <2 x i64> %i.bt, %i.bp
  store <2 x i64> %i.bu, ptr %i.bk, align 8, !tbaa !19
  store <2 x i64> %i.bv, ptr %i.bl, align 8, !tbaa !19
  %index.next159 = add nuw i64 %index156, 4       ; 2 uses
  %i.bw = icmp eq i64 %index.next159, %n.vec152
  br i1 %i.bw, label %middle.block160, label %vector.body155, !llvm.loop !96

middle.block160:                                  ; preds = %vector.body155
  br i1 %cmp.n161, label %Abc_TtFlip.exit, label %scalar.ph149.preheader

scalar.ph149.preheader:                           ; preds = %.lr.ph.i44, %middle.block160
  %indvars.iv56.i.ph = phi i64 [ 0, %.lr.ph.i44 ], [ %n.vec152, %middle.block160 ]
  br label %scalar.ph149

scalar.ph149:                                     ; preds = %scalar.ph149.preheader, %scalar.ph149
  %indvars.iv56.i = phi i64 [ %indvars.iv.next57.i, %scalar.ph149 ], [ %indvars.iv56.i.ph, %scalar.ph149.preheader ] ; 2 uses
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv56.i ; 2 uses
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !19 ; 2 uses
  %i.bz = shl i64 %i.by, %i.bg
  %i.ca = and i64 %i.bz, %i.bj
  %i.cb = and i64 %i.by, %i.bj
  %i.cc = lshr i64 %i.cb, %i.bg
  %i.cd = or i64 %i.cc, %i.ca
  store i64 %i.cd, ptr %i.bx, align 8, !tbaa !19
  %indvars.iv.next57.i = add nuw nsw i64 %indvars.iv56.i, 1 ; 2 uses
  %exitcond60.not.i = icmp eq i64 %indvars.iv.next57.i, %.pre-phi
  br i1 %exitcond60.not.i, label %Abc_TtFlip.exit, label %scalar.ph149, !llvm.loop !97

bb.h:                                             ; preds = %bb.f
  %i.ce = add nsw i32 %i.as, -6                   ; 3 uses
  %i.cf = shl nuw i32 1, %i.ce                    ; 4 uses
  br i1 %i.g, label %Abc_TtFlip.exit, label %.preheader.lr.ph.i

.preheader.lr.ph.i:                               ; preds = %bb.h
  %.not.i39 = icmp eq i32 %i.ce, 31
  %i.cg = shl i32 2, %i.ce
  %i.ch = sext i32 %i.cg to i64                   ; 2 uses
  br i1 %.not.i39, label %Abc_TtFlip.exit, label %.preheader.us.preheader.i

.preheader.us.preheader.i:                        ; preds = %.preheader.lr.ph.i
  %i.ci = sext i32 %i.cf to i64                   ; 2 uses
  %smax.i = tail call i32 @llvm.smax.i32(i32 %i.cf, i32 1) ; 2 uses
  %wide.trip.count.i40 = zext nneg i32 %smax.i to i64 ; 5 uses
  %i.cj = shl nuw nsw i64 %wide.trip.count.i40, 3
  %3 = add nsw i64 %i.ci, %wide.trip.count.i40
  %4 = shl nsw i64 %3, 3
  %5 = shl nsw i64 %i.ch, 3
  %min.iters.check165 = icmp slt i32 %i.cf, 4
  %6 = getelementptr i8, ptr %0, i64 %i.cj
  %7 = getelementptr i8, ptr %0, i64 %4
  %n.vec167 = and i64 %wide.trip.count.i40, 2147483644
  %xtraiter = and i64 %wide.trip.count.i40, 1
  %i.ck = icmp slt i32 %i.cf, 2
  %unroll_iter = and i64 %wide.trip.count.i40, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod192 = trunc i32 %smax.i to i1
  br label %.preheader.us.i

.preheader.us.i:                                  ; preds = %._crit_edge.us.i, %.preheader.us.preheader.i
  %indvar = phi i64 [ %indvar.next, %._crit_edge.us.i ], [ 0, %.preheader.us.preheader.i ] ; 2 uses
  %.051.us.i = phi ptr [ %i.cz, %._crit_edge.us.i ], [ %0, %.preheader.us.preheader.i ] ; 7 uses
  %invariant.gep.i = getelementptr [8 x i8], ptr %.051.us.i, i64 %i.ci ; 5 uses
  br i1 %min.iters.check165, label %scalar.ph164.preheader, label %vector.memcheck

scalar.ph164.preheader:                           ; preds = %vector.memcheck, %.preheader.us.i
  br i1 %i.ck, label %scalar.ph164.epil.preheader, label %scalar.ph164

vector.memcheck:                                  ; preds = %.preheader.us.i
  %8 = mul i64 %indvar, %5                        ; 2 uses
  %9 = getelementptr i8, ptr %6, i64 %8
  %10 = getelementptr i8, ptr %7, i64 %8
  %bound0 = icmp ult ptr %.051.us.i, %10
  %bound1 = icmp ult ptr %invariant.gep.i, %9
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph164.preheader, label %vector.body168

vector.body168:                                   ; preds = %vector.memcheck, %vector.body168
  %index169 = phi i64 [ %index.next174, %vector.body168 ], [ 0, %vector.memcheck ] ; 3 uses
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %.051.us.i, i64 %index169 ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 16 ; 2 uses
  %wide.load170 = load <2 x i64>, ptr %i.cl, align 8, !tbaa !19, !alias.scope !106, !noalias !107
  %wide.load171 = load <2 x i64>, ptr %i.cm, align 8, !tbaa !19, !alias.scope !106, !noalias !107
  %i.cn = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %index169 ; 3 uses
  %i.co = getelementptr i8, ptr %i.cn, i64 16     ; 2 uses
  %wide.load172 = load <2 x i64>, ptr %i.cn, align 8, !tbaa !19, !alias.scope !107
  %wide.load173 = load <2 x i64>, ptr %i.co, align 8, !tbaa !19, !alias.scope !107
  store <2 x i64> %wide.load172, ptr %i.cl, align 8, !tbaa !19, !alias.scope !106, !noalias !107
  store <2 x i64> %wide.load173, ptr %i.cm, align 8, !tbaa !19, !alias.scope !106, !noalias !107
  store <2 x i64> %wide.load170, ptr %i.cn, align 8, !tbaa !19, !alias.scope !107
  store <2 x i64> %wide.load171, ptr %i.co, align 8, !tbaa !19, !alias.scope !107
  %index.next174 = add nuw i64 %index169, 4       ; 2 uses
  %i.cp = icmp eq i64 %index.next174, %n.vec167
  br i1 %i.cp, label %._crit_edge.us.i, label %vector.body168, !llvm.loop !101

scalar.ph164:                                     ; preds = %scalar.ph164.preheader, %scalar.ph164
  %indvars.iv.i41 = phi i64 [ %indvars.iv.next.i42.1, %scalar.ph164 ], [ 0, %scalar.ph164.preheader ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %scalar.ph164 ], [ 0, %scalar.ph164.preheader ]
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %.051.us.i, i64 %indvars.iv.i41 ; 2 uses
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !19
  %gep.i = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i41 ; 2 uses
  %i.cs = load i64, ptr %gep.i, align 8, !tbaa !19
  store i64 %i.cs, ptr %i.cq, align 8, !tbaa !19
  store i64 %i.cr, ptr %gep.i, align 8, !tbaa !19
  %indvars.iv.next.i42 = or disjoint i64 %indvars.iv.i41, 1 ; 2 uses
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %.051.us.i, i64 %indvars.iv.next.i42 ; 2 uses
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !19
  %gep.i.1 = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i42 ; 2 uses
  %i.cv = load i64, ptr %gep.i.1, align 8, !tbaa !19
  store i64 %i.cv, ptr %i.ct, align 8, !tbaa !19
  store i64 %i.cu, ptr %gep.i.1, align 8, !tbaa !19
  %indvars.iv.next.i42.1 = add nuw nsw i64 %indvars.iv.i41, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us.i.loopexit.unr-lcssa, label %scalar.ph164, !llvm.loop !102

._crit_edge.us.i.loopexit.unr-lcssa:              ; preds = %scalar.ph164
  br i1 %lcmp.mod.not, label %._crit_edge.us.i, label %scalar.ph164.epil.preheader

scalar.ph164.epil.preheader:                      ; preds = %._crit_edge.us.i.loopexit.unr-lcssa, %scalar.ph164.preheader
  %indvars.iv.i41.epil.init = phi i64 [ 0, %scalar.ph164.preheader ], [ %indvars.iv.next.i42.1, %._crit_edge.us.i.loopexit.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod192)
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %.051.us.i, i64 %indvars.iv.i41.epil.init ; 2 uses
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !19
  %gep.i.epil = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i41.epil.init ; 2 uses
  %i.cy = load i64, ptr %gep.i.epil, align 8, !tbaa !19
  store i64 %i.cy, ptr %i.cw, align 8, !tbaa !19
  store i64 %i.cx, ptr %gep.i.epil, align 8, !tbaa !19
  br label %._crit_edge.us.i

._crit_edge.us.i:                                 ; preds = %vector.body168, %scalar.ph164.epil.preheader, %._crit_edge.us.i.loopexit.unr-lcssa
  %i.cz = getelementptr inbounds [8 x i8], ptr %.051.us.i, i64 %i.ch ; 2 uses
  %i.da = icmp ult ptr %i.cz, %i.al
  %indvar.next = add i64 %indvar, 1
  br i1 %i.da, label %.preheader.us.i, label %Abc_TtFlip.exit, !llvm.loop !0

Abc_TtFlip.exit:                                  ; preds = %._crit_edge.us.i, %scalar.ph149, %middle.block160, %bb.e, %bb.g, %bb.h, %.preheader.lr.ph.i
  br i1 %i.ao, label %.lr.ph133, label %Abc_TtCopy.exit55

bb.i:                                             ; preds = %.lr.ph133
  %i.db = trunc nuw i64 %i.dd to i32
  %i.dc = icmp sgt i32 %i.db, 0
  br i1 %i.dc, label %.lr.ph133, label %Abc_TtCopy.exit55, !llvm.loop !95

.lr.ph133:                                        ; preds = %Abc_TtFlip.exit, %bb.i
  %indvars.iv.i45132 = phi i64 [ %i.dd, %bb.i ], [ %.pre-phi, %Abc_TtFlip.exit ]
  %i.dd = add nsw i64 %indvars.iv.i45132, -1      ; 4 uses
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.dd
  %i.df = load i64, ptr %i.de, align 8, !tbaa !19 ; 2 uses
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.dd
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !19 ; 2 uses
  %.not.i47 = icmp eq i64 %i.df, %i.dh
  br i1 %.not.i47, label %bb.i, label %bb.j, !llvm.loop !95

bb.j:                                             ; preds = %.lr.ph133
  %i.di = icmp ult i64 %i.df, %i.dh
  br i1 %i.di, label %Abc_TtCopy.exit55, label %Abc_TtCompareRev.exit48

Abc_TtCompareRev.exit48:                          ; preds = %bb.j
  br i1 %i.g, label %Abc_TtNot.exit, label %.lr.ph18.i51.preheader

.lr.ph18.i51.preheader:                           ; preds = %Abc_TtCompareRev.exit48
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.f, ptr nonnull align 8 %0, i64 %i.am, i1 false), !tbaa !19
  br label %.lr.ph.preheader.i56

Abc_TtCopy.exit55:                                ; preds = %bb.i, %Abc_TtFlip.exit, %bb.j
  br i1 %i.g, label %Abc_TtNot.exit, label %.lr.ph.preheader.i56

.lr.ph.preheader.i56:                             ; preds = %.lr.ph18.i51.preheader, %Abc_TtCopy.exit55
  br i1 %min.iters.check138, label %.lr.ph.i58.preheader, label %vector.body141

vector.body141:                                   ; preds = %.lr.ph.preheader.i56, %vector.body141
  %index142 = phi i64 [ %index.next145, %vector.body141 ], [ 0, %.lr.ph.preheader.i56 ] ; 2 uses
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index142 ; 3 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 16 ; 2 uses
  %wide.load143 = load <2 x i64>, ptr %i.dj, align 8, !tbaa !19
  %wide.load144 = load <2 x i64>, ptr %i.dk, align 8, !tbaa !19
  %i.dl = xor <2 x i64> %wide.load143, splat (i64 -1)
  %i.dm = xor <2 x i64> %wide.load144, splat (i64 -1)
  store <2 x i64> %i.dl, ptr %i.dj, align 8, !tbaa !19
  store <2 x i64> %i.dm, ptr %i.dk, align 8, !tbaa !19
  %index.next145 = add nuw i64 %index142, 4       ; 2 uses
  %i.dn = icmp eq i64 %index.next145, %n.vec140
  br i1 %i.dn, label %middle.block146, label %vector.body141, !llvm.loop !103

middle.block146:                                  ; preds = %vector.body141
  br i1 %cmp.n147, label %Abc_TtNot.exit, label %.lr.ph.i58.preheader

.lr.ph.i58.preheader:                             ; preds = %.lr.ph.preheader.i56, %middle.block146
  %indvars.iv.i59.ph = phi i64 [ 0, %.lr.ph.preheader.i56 ], [ %n.vec140, %middle.block146 ]
  br label %.lr.ph.i58

.lr.ph.i58:                                       ; preds = %.lr.ph.i58.preheader, %.lr.ph.i58
  %indvars.iv.i59 = phi i64 [ %indvars.iv.next.i60, %.lr.ph.i58 ], [ %indvars.iv.i59.ph, %.lr.ph.i58.preheader ] ; 2 uses
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.i59 ; 2 uses
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !19
  %i.dq = xor i64 %i.dp, -1
  store i64 %i.dq, ptr %i.do, align 8, !tbaa !19
  %indvars.iv.next.i60 = add nuw nsw i64 %indvars.iv.i59, 1 ; 2 uses
  %exitcond.not.i61 = icmp eq i64 %indvars.iv.next.i60, %.pre-phi
  br i1 %exitcond.not.i61, label %Abc_TtNot.exit, label %.lr.ph.i58, !llvm.loop !104

Abc_TtNot.exit:                                   ; preds = %.lr.ph.i58, %middle.block146, %Abc_TtCompareRev.exit48, %Abc_TtCopy.exit55
  br i1 %i.aq, label %.lr.ph135, label %Abc_TtCopy.exit72

bb.k:                                             ; preds = %.lr.ph135
  %i.dr = trunc nuw i64 %i.dt to i32
  %i.ds = icmp sgt i32 %i.dr, 0
  br i1 %i.ds, label %.lr.ph135, label %Abc_TtCopy.exit72, !llvm.loop !95

.lr.ph135:                                        ; preds = %Abc_TtNot.exit, %bb.k
  %indvars.iv.i62134 = phi i64 [ %i.dt, %bb.k ], [ %.pre-phi, %Abc_TtNot.exit ]
  %i.dt = add nsw i64 %indvars.iv.i62134, -1      ; 4 uses
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.dt
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !19 ; 2 uses
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.dt
  %i.dx = load i64, ptr %i.dw, align 8, !tbaa !19 ; 2 uses
  %.not.i64 = icmp eq i64 %i.dv, %i.dx
  br i1 %.not.i64, label %bb.k, label %bb.l, !llvm.loop !95

bb.l:                                             ; preds = %.lr.ph135
  %i.dy = icmp ult i64 %i.dv, %i.dx
  %brmerge89 = or i1 %i.g, %i.dy
  br i1 %brmerge89, label %Abc_TtCopy.exit72, label %.lr.ph18.i68.preheader

.lr.ph18.i68.preheader:                           ; preds = %bb.l
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.f, ptr nonnull align 8 %0, i64 %i.am, i1 false), !tbaa !19
  br label %Abc_TtCopy.exit72

Abc_TtCopy.exit72:                                ; preds = %bb.k, %Abc_TtNot.exit, %.lr.ph18.i68.preheader, %bb.l
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.d, !llvm.loop !105

._crit_edge:                                      ; preds = %Abc_TtCopy.exit72, %Abc_TtCopy.exit38
  br i1 %i.g, label %Abc_TtCopy.exit79, label %.lr.ph18.i75.preheader

.lr.ph18.i75.preheader:                           ; preds = %._crit_edge
  %i.dz = shl nuw nsw i64 %.pre-phi, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %0, ptr align 8 %i.f, i64 %i.dz, i1 false), !tbaa !19
  br label %Abc_TtCopy.exit79.thread

Abc_TtCopy.exit79:                                ; preds = %._crit_edge
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.m, label %Abc_TtCopy.exit79.thread

Abc_TtCopy.exit79.thread:                         ; preds = %.lr.ph18.i75.preheader, %Abc_TtCopy.exit79
  tail call void @free(ptr noundef nonnull %i.f) #18
  br label %bb.m

bb.m:                                             ; preds = %Abc_TtCopy.exit79, %Abc_TtCopy.exit79.thread
  ret void
}

; Function Attrs: nounwind uwtable
define void @Ntk_SymFunGenerate(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [100 x i8], align 16              ; 9 uses
  %i.b = tail call ptr @Extra_GreyCodeSchedule(i32 noundef %0) #18 ; 4 uses
  %i.c = icmp slt i32 %0, 7
  %i.d = add nsw i32 %0, -6
  %i.e = shl nuw i32 1, %i.d
  %i.f = select i1 %i.c, i32 1, i32 %i.e          ; 2 uses
  %i.g = tail call noalias dereferenceable_or_null(48) ptr @calloc(i64 noundef 1, i64 noundef 48) #21 ; 11 uses
  store i32 %i.f, ptr %i.g, align 8, !tbaa !24
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i32 12, ptr %i.h, align 8, !tbaa !25
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  store i32 4095, ptr %i.i, align 4, !tbaa !26
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 20 ; 2 uses
  store i32 -1, ptr %i.j, align 4, !tbaa !27
  br label %.critedge.i.i

.critedge.i.i:                                    ; preds = %.critedge.i.i.backedge, %bb.a
  %.012.i.i = phi i32 [ 9999, %bb.a ], [ %i.k, %.critedge.i.i.backedge ] ; 3 uses
  %i.k = add i32 %.012.i.i, 1                     ; 7 uses
  %i.l = and i32 %.012.i.i, 1
  %.not.not.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.not.i.i, label %.preheader.i.i, label %.critedge.i.i.backedge

.critedge.i.i.backedge:                           ; preds = %.lr.ph.i.i, %.critedge.i.i
  br label %.critedge.i.i

.preheader.i.i:                                   ; preds = %.critedge.i.i
  %.not15.i.i = icmp ult i32 %i.k, 9
  br i1 %.not15.i.i, label %Abc_PrimeCudd.exit.i, label %.lr.ph.i.i

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.m = add nuw nsw i32 %.01116.i.i, 2           ; 3 uses
  %i.n = mul nuw nsw i32 %i.m, %i.m
  %.not.i.i = icmp ugt i32 %i.n, %i.k
  br i1 %.not.i.i, label %Abc_PrimeCudd.exit.i, label %.lr.ph.i.i, !llvm.loop !1

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %bb.b
  %.01116.i.i = phi i32 [ %i.m, %bb.b ], [ 3, %.preheader.i.i ] ; 2 uses
  %i.o = urem i32 %i.k, %.01116.i.i
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %.critedge.i.i.backedge, label %bb.b

Abc_PrimeCudd.exit.i:                             ; preds = %.preheader.i.i, %bb.b
  %i.q = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #20 ; 4 uses
  %or.cond.i.i.i = icmp samesign ult i32 %.012.i.i, 15
  %spec.store.select.i.i.i = select i1 %or.cond.i.i.i, i32 16, i32 %i.k ; 2 uses
  store i32 %spec.store.select.i.i.i, ptr %i.q, align 8, !tbaa !28
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %i.s = zext nneg i32 %spec.store.select.i.i.i to i64
  %i.t = shl nuw nsw i64 %i.s, 2
  %i.u = tail call noalias ptr @malloc(i64 noundef %i.t) #20 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %i.u, ptr %i.v, align 8, !tbaa !29
  store i32 %i.k, ptr %i.r, align 4, !tbaa !30
  %.not.i3.i = icmp eq ptr %i.u, null
  br i1 %.not.i3.i, label %Vec_MemHashAlloc.exit, label %bb.c

bb.c:                                             ; preds = %Abc_PrimeCudd.exit.i
  %i.w = zext nneg i32 %i.k to i64
  %i.x = shl nuw nsw i64 %i.w, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.u, i8 -1, i64 %i.x, i1 false)
  br label %Vec_MemHashAlloc.exit

Vec_MemHashAlloc.exit:                            ; preds = %Abc_PrimeCudd.exit.i, %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %i.g, i64 32 ; 2 uses
  store ptr %i.q, ptr %i.y, align 8, !tbaa !31
  %i.z = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #20 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  store i32 0, ptr %i.aa, align 4, !tbaa !30
  store i32 10000, ptr %i.z, align 8, !tbaa !28
  %i.ab = tail call noalias dereferenceable_or_null(40000) ptr @malloc(i64 noundef 40000) #20
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !29
  %i.ad = getelementptr inbounds nuw i8, ptr %i.g, i64 40 ; 2 uses
  store ptr %i.z, ptr %i.ad, align 8, !tbaa !32
  %i.ae = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %0) ; 0 uses
  %i.af = add nsw i32 %0, 1                       ; 5 uses
end_hunk_0
