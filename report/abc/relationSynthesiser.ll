Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/relationSynthesiser?download=true
inline.NumInlined: 1251
inline.NumDeleted: 373
loop-unroll.NumCompletelyUnrolled: 21
loop-unroll.NumUnrolled: 21
begin_hunk_0_@_ZN5eSLIM19RelationSynthesiser22addGateValueConstraintEiiRKSt6vectorIiSaIiEE:bb.a
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %indvars.iv ; 2 uses
  %.not.i30 = icmp eq ptr %.sroa.23.081, %.sroa.39.080
  br i1 %.not.i30, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.lr.ph
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !46
  store i32 %i.bp, ptr %.sroa.23.081, align 4, !tbaa !46
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.n:                                             ; preds = %.lr.ph
  %i.bq = ptrtoint ptr %.sroa.23.081 to i64
  %i.br = ptrtoint ptr %.sroa.046.082 to i64
  %i.bs = sub i64 %i.bq, %i.br                    ; 6 uses
  %i.bt = icmp eq i64 %i.bs, 9223372036854775804
  br i1 %i.bt, label %bb.o, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i

bb.o:                                             ; preds = %bb.n
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #15
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.n
  %i.bu = ashr exact i64 %i.bs, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.bu, i64 1)
  %i.bv = add nsw i64 %.sroa.speculated.i.i.i, %i.bu ; 2 uses
  %i.bw = icmp ult i64 %i.bv, %i.bu
  %i.bx = tail call i64 @llvm.umin.i64(i64 %i.bv, i64 2305843009213693951)
  %i.by = select i1 %i.bw, i64 2305843009213693951, i64 %i.bx ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.by, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.bz = shl nuw nsw i64 %i.by, 2
  %i.ca = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bz) #14 ; 4 uses
  %i.cb = getelementptr inbounds i8, ptr %i.ca, i64 %i.bs ; 2 uses
  %i.cc = load i32, ptr %i.bo, align 4, !tbaa !46
  store i32 %i.cc, ptr %i.cb, align 4, !tbaa !46
  %i.cd = icmp sgt i64 %i.bs, 0
  br i1 %i.cd, label %bb.p, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i

bb.p:                                             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ca, ptr align 4 %.sroa.046.082, i64 %i.bs, i1 false)
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i: ; preds = %bb.p, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.046.082, i64 noundef %i.bs) #16
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %i.by
  %.pre102 = load ptr, ptr %i.h, align 8, !tbaa !47
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

_ZNSt6vectorIiSaIiEE9push_backERKi.exit:          ; preds = %bb.m, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i
  %i.cf = phi ptr [ %.pre102, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %i.bm, %bb.m ] ; 2 uses
  %.sroa.39.4 = phi ptr [ %i.ce, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %.sroa.39.080, %bb.m ] ; 2 uses
  %.pn76 = phi ptr [ %i.cb, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %.sroa.23.081, %bb.m ]
  %.sroa.046.4 = phi ptr [ %i.ca, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %.sroa.046.082, %bb.m ] ; 2 uses
  %.sroa.23.4 = getelementptr inbounds nuw i8, ptr %.pn76, i64 4 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 4
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !126
  %i.ci = sext i32 %i.ch to i64
  %i.cj = icmp slt i64 %indvars.iv.next, %i.ci
  br i1 %i.cj, label %.lr.ph, label %._crit_edge, !llvm.loop !186

.preheader:                                       ; preds = %.preheader.lr.ph, %_ZN5eSLIM13CadicalSolver9addClauseERKSt6vectorIiSaIiEE.exit41
  %i.ck = phi i32 [ %i.bk, %.preheader.lr.ph ], [ %i.du, %_ZN5eSLIM13CadicalSolver9addClauseERKSt6vectorIiSaIiEE.exit41 ] ; 2 uses
  %indvars.iv98 = phi i64 [ 1, %.preheader.lr.ph ], [ %indvars.iv.next99, %_ZN5eSLIM13CadicalSolver9addClauseERKSt6vectorIiSaIiEE.exit41 ] ; 3 uses
  %i.cl = phi ptr [ %i.bj, %.preheader.lr.ph ], [ %i.dt, %_ZN5eSLIM13CadicalSolver9addClauseERKSt6vectorIiSaIiEE.exit41 ] ; 2 uses
  %i.cm = icmp sgt i32 %i.ck, 0
  br i1 %i.cm, label %.lr.ph87.preheader, label %.preheader.._crit_edge88_crit_edge

.preheader.._crit_edge88_crit_edge:               ; preds = %.preheader
  %.pre103 = sext i32 %i.ck to i64
  br label %._crit_edge88

.lr.ph87.preheader:                               ; preds = %.preheader
  %i.cn = trunc nuw nsw i64 %indvars.iv98 to i32
  br label %.lr.ph87

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %_ZN5eSLIM13CadicalSolver9addClauseERKSt6vectorIiSaIiEE.exit41, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit29
  %i.co = ptrtoint ptr %.sroa.39.3 to i64
  %i.cp = ptrtoint ptr %.sroa.046.3 to i64
  %i.cq = sub i64 %i.co, %i.cp
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.046.3, i64 noundef %i.cq) #16
  ret void

._crit_edge88:                                    ; preds = %.lr.ph87, %.preheader.._crit_edge88_crit_edge
  %.pre-phi = phi i64 [ %.pre103, %.preheader.._crit_edge88_crit_edge ], [ %i.eg, %.lr.ph87 ]
  %i.cr = load ptr, ptr %i.bl, align 8, !tbaa !81
  %i.cs = getelementptr inbounds nuw [24 x i8], ptr %i.cr, i64 %i.b
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !45
  %i.cu = getelementptr [4 x i8], ptr %i.ct, i64 %indvars.iv98
  %i.cv = getelementptr i8, ptr %i.cu, i64 -4
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !46 ; 2 uses
  %i.cx = sub nsw i32 0, %i.cw
  %i.cy = getelementptr [4 x i8], ptr %.sroa.046.3, i64 %.pre-phi
  %i.cz = getelementptr i8, ptr %i.cy, i64 4
  store i32 %i.cx, ptr %i.cz, align 4, !tbaa !46
  %i.da = load i32, ptr %i.cl, align 4, !tbaa !126
  %i.db = sext i32 %i.da to i64
  %i.dc = getelementptr [4 x i8], ptr %.sroa.046.3, i64 %i.db
  %i.dd = getelementptr i8, ptr %i.dc, i64 8
  store i32 %2, ptr %i.dd, align 4, !tbaa !46
  br i1 %.not8.i32, label %_ZN5eSLIM13CadicalSolver9addClauseERKSt6vectorIiSaIiEE.exit36, label %.lr.ph.i33

.lr.ph.i33:                                       ; preds = %._crit_edge88, %.lr.ph.i33
  %.sroa.05.09.i34 = phi ptr [ %i.df, %.lr.ph.i33 ], [ %.sroa.046.3, %._crit_edge88 ] ; 2 uses
  %i.de = load i32, ptr %.sroa.05.09.i34, align 4, !tbaa !46
  tail call void @_ZN7CaDiCaL6Solver3addEi(ptr noundef nonnull align 8 dereferenceable(24) %i.ar, i32 noundef %i.de) #13
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i34, i64 4 ; 2 uses
  %.not.i35 = icmp eq ptr %i.df, %.sroa.23.3
  br i1 %.not.i35, label %_ZN5eSLIM13CadicalSolver9addClauseERKSt6vectorIiSaIiEE.exit36, label %.lr.ph.i33

_ZN5eSLIM13CadicalSolver9addClauseERKSt6vectorIiSaIiEE.exit36: ; preds = %.lr.ph.i33, %._crit_edge88
  tail call void @_ZN7CaDiCaL6Solver3addEi(ptr noundef nonnull align 8 dereferenceable(24) %i.ar, i32 noundef 0) #13
  %i.dg = load ptr, ptr %i.h, align 8, !tbaa !47, !nonnull !43, !align !44
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 4 ; 2 uses
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !126
  %i.dj = sext i32 %i.di to i64
  %i.dk = getelementptr [4 x i8], ptr %.sroa.046.3, i64 %i.dj
  %i.dl = getelementptr i8, ptr %i.dk, i64 4
  store i32 %i.cw, ptr %i.dl, align 4, !tbaa !46
  %i.dm = load i32, ptr %i.dh, align 4, !tbaa !126
  %i.dn = sext i32 %i.dm to i64
  %i.do = getelementptr [4 x i8], ptr %.sroa.046.3, i64 %i.dn
  %i.dp = getelementptr i8, ptr %i.do, i64 8
  store i32 %i.an, ptr %i.dp, align 4, !tbaa !46
  br i1 %.not8.i32, label %_ZN5eSLIM13CadicalSolver9addClauseERKSt6vectorIiSaIiEE.exit41, label %.lr.ph.i38

.lr.ph.i38:                                       ; preds = %_ZN5eSLIM13CadicalSolver9addClauseERKSt6vectorIiSaIiEE.exit36, %.lr.ph.i38
  %.sroa.05.09.i39 = phi ptr [ %i.dr, %.lr.ph.i38 ], [ %.sroa.046.3, %_ZN5eSLIM13CadicalSolver9addClauseERKSt6vectorIiSaIiEE.exit36 ] ; 2 uses
  %i.dq = load i32, ptr %.sroa.05.09.i39, align 4, !tbaa !46
  tail call void @_ZN7CaDiCaL6Solver3addEi(ptr noundef nonnull align 8 dereferenceable(24) %i.ar, i32 noundef %i.dq) #13
  %i.dr = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i39, i64 4 ; 2 uses
  %.not.i40 = icmp eq ptr %i.dr, %.sroa.23.3
  br i1 %.not.i40, label %_ZN5eSLIM13CadicalSolver9addClauseERKSt6vectorIiSaIiEE.exit41, label %.lr.ph.i38

_ZN5eSLIM13CadicalSolver9addClauseERKSt6vectorIiSaIiEE.exit41: ; preds = %.lr.ph.i38, %_ZN5eSLIM13CadicalSolver9addClauseERKSt6vectorIiSaIiEE.exit36
  tail call void @_ZN7CaDiCaL6Solver3addEi(ptr noundef nonnull align 8 dereferenceable(24) %i.ar, i32 noundef 0) #13
  %indvars.iv.next99 = add nuw nsw i64 %indvars.iv98, 1 ; 2 uses
  %i.ds = load ptr, ptr %i.h, align 8, !tbaa !47, !nonnull !43, !align !44
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 4 ; 2 uses
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !126 ; 2 uses
  %i.dv = trunc nuw i64 %indvars.iv.next99 to i32
  %.021.highbits = lshr i32 %i.dv, %i.du
  %i.dw = icmp eq i32 %.021.highbits, 0
  br i1 %i.dw, label %.preheader, label %_ZNSt6vectorIiSaIiEED2Ev.exit, !llvm.loop !187

.lr.ph87:                                         ; preds = %.lr.ph87.preheader, %.lr.ph87
  %indvars.iv95 = phi i64 [ 0, %.lr.ph87.preheader ], [ %indvars.iv.next96, %.lr.ph87 ] ; 2 uses
  %indvars.iv.next96 = add nuw nsw i64 %indvars.iv95, 1 ; 3 uses
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %.sroa.046.3, i64 %indvars.iv.next96 ; 2 uses
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !46
  %i.dz = tail call i32 @llvm.abs.i32(i32 %i.dy, i1 true) ; 2 uses
  %i.ea = trunc nuw nsw i64 %indvars.iv95 to i32
  %i.eb = lshr i32 %i.cn, %i.ea
  %i.ec = trunc i32 %i.eb to i1
  %i.ed = sub nsw i32 0, %i.dz
  %i.ee = select i1 %i.ec, i32 %i.ed, i32 %i.dz
  store i32 %i.ee, ptr %i.dx, align 4, !tbaa !46
  %i.ef = load i32, ptr %i.cl, align 4, !tbaa !126
  %i.eg = sext i32 %i.ef to i64                   ; 2 uses
  %i.eh = icmp slt i64 %indvars.iv.next96, %i.eg
  br i1 %i.eh, label %.lr.ph87, label %._crit_edge88, !llvm.loop !188
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #5

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN5eSLIM19RelationSynthesiser19setupFaninVariablesEiii(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::vector") align 8 captures(none) initializes((0, 24)) %0, ptr noundef nonnull align 8 dereferenceable(224) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !79, !nonnull !43, !align !44 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !76
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !45
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = lshr exact i64 %i.i, 2
  %i.k = sext i32 %2 to i64                       ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !47, !nonnull !43, !align !44
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.o = load i32, ptr %i.n, align 4, !tbaa !126  ; 4 uses
  %i.p = trunc i64 %i.j to i32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !189)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false), !alias.scope !189
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i = icmp eq i32 %i.o, 0
  br i1 %.not.i, label %._crit_edge109, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.r = zext i32 %i.o to i64                     ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.t = shl nuw nsw i64 %i.r, 2
  %i.u = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #14, !noalias !189 ; 3 uses
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.r
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit.i, %.lr.ph.i
  %i.x = phi ptr [ %i.u, %.lr.ph.i ], [ %.pn, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit.i ] ; 4 uses
  %.010.i = phi i32 [ 0, %.lr.ph.i ], [ %i.as, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit.i ]
  %i.y = phi ptr [ %i.v, %.lr.ph.i ], [ %i.ar, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit.i ] ; 3 uses
  %i.z = phi ptr [ %i.u, %.lr.ph.i ], [ %i.aq, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit.i ] ; 5 uses
  %i.aa = load i32, ptr %i.w, align 8, !tbaa !41, !noalias !189
  %i.ab = add nsw i32 %i.aa, 1                    ; 3 uses
  store i32 %i.ab, ptr %i.w, align 8, !tbaa !41, !noalias !189
  %.not.i.i.i = icmp eq ptr %i.x, %i.y
  br i1 %.not.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 %i.ab, ptr %i.x, align 4, !tbaa !46, !noalias !189
  %5 = getelementptr inbounds nuw i8, ptr %i.x, i64 4 ; 2 uses
  store ptr %5, ptr %i.s, align 8, !tbaa !76, !alias.scope !189
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit.i

bb.d:                                             ; preds = %bb.b
  %i.ac = ptrtoint ptr %i.x to i64
  %i.ad = ptrtoint ptr %i.z to i64
  %i.ae = sub i64 %i.ac, %i.ad                    ; 6 uses
  %i.af = icmp eq i64 %i.ae, 9223372036854775804
  br i1 %i.af, label %bb.e, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i.i

bb.e:                                             ; preds = %bb.d
  store ptr %i.y, ptr %i.q, align 8, !alias.scope !189
  store ptr %i.z, ptr %0, align 8, !alias.scope !189
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #15, !noalias !189
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.d
  %i.ag = ashr exact i64 %i.ae, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ag, i64 1)
  %i.ah = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.ag ; 2 uses
  %i.ai = icmp ult i64 %i.ah, %i.ag
  %i.aj = tail call i64 @llvm.umin.i64(i64 %i.ah, i64 2305843009213693951)
  %i.ak = select i1 %i.ai, i64 2305843009213693951, i64 %i.aj ; 3 uses
  %.not.i.i.i.i.i = icmp ne i64 %i.ak, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i)
  %i.al = shl nuw nsw i64 %i.ak, 2
  %i.am = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.al) #14, !noalias !189 ; 4 uses
  %i.an = getelementptr inbounds i8, ptr %i.am, i64 %i.ae ; 2 uses
  store i32 %i.ab, ptr %i.an, align 4, !tbaa !46, !noalias !189
  %i.ao = icmp sgt i64 %i.ae, 0
  br i1 %i.ao, label %bb.f, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.i

bb.f:                                             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.am, ptr align 4 %i.z, i64 %i.ae, i1 false), !noalias !189
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.i: ; preds = %bb.f, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i.i
  %6 = getelementptr inbounds nuw i8, ptr %i.an, i64 4 ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %i.z, i64 noundef %i.ae) #16, !noalias !189
  store ptr %6, ptr %i.s, align 8, !tbaa !76, !alias.scope !189
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.ak
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit.i

_ZNSt6vectorIiSaIiEE9push_backEOi.exit.i:         ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.i, %bb.c
  %.pn = phi ptr [ %5, %bb.c ], [ %6, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.i ]
  %i.aq = phi ptr [ %i.z, %bb.c ], [ %i.am, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.i ] ; 4 uses
  %i.ar = phi ptr [ %i.y, %bb.c ], [ %i.ap, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.i ] ; 2 uses
  %i.as = add nuw i32 %.010.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.as, %i.o
  br i1 %exitcond.not.i, label %_ZN5eSLIM19RelationSynthesiser20getNewVariableVectorEj.exit, label %bb.b, !llvm.loop !125

_ZN5eSLIM19RelationSynthesiser20getNewVariableVectorEj.exit: ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit.i
  %.pre = load ptr, ptr %i.l, align 8, !tbaa !47
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 4
  %.pre125.a = load i32, ptr %.phi.trans.insert, align 4, !tbaa !126
  %i.at = icmp sgt i32 %.pre125.a, 0
  store ptr %i.ar, ptr %i.q, align 8, !alias.scope !189
  store ptr %i.aq, ptr %0, align 8, !alias.scope !189
  br i1 %i.at, label %.lr.ph108, label %._crit_edge109

.lr.ph108:                                        ; preds = %_ZN5eSLIM19RelationSynthesiser20getNewVariableVectorEj.exit
  %invariant.op = sub i32 %i.p, %i.o
  %i.au = add i32 %2, 1
  %.reass = add i32 %i.au, %invariant.op
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 152 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 11 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 200 ; 2 uses
  %i.ay = sext i32 %4 to i64                      ; 2 uses
  %i.az = sext i32 %.reass to i64
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph108, %._crit_edge106
  %indvars.iv = phi i64 [ 0, %.lr.ph108 ], [ %indvars.iv.next, %._crit_edge106 ] ; 9 uses
  %i.ba = add nsw i64 %indvars.iv, %i.az          ; 3 uses
  %i.bb = load ptr, ptr %i.a, align 8, !tbaa !79, !nonnull !43, !align !44 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 32
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !76
  %i.bf = load ptr, ptr %i.bc, align 8, !tbaa !45
  %i.bg = ptrtoint ptr %i.be to i64
  %i.bh = ptrtoint ptr %i.bf to i64
  %i.bi = sub i64 %i.bg, %i.bh                    ; 2 uses
  %i.bj = ashr exact i64 %i.bi, 2
  %spec.select96 = tail call i64 @llvm.umin.i64(i64 %i.bj, i64 %i.ba)
  %sext = shl i64 %spec.select96, 32
  %i.bk = ashr exact i64 %sext, 32                ; 2 uses
  %i.bl = icmp slt i64 %indvars.iv, %i.bk
  br i1 %i.bl, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.g
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %indvars.iv
  br label %.lr.ph.i47

._crit_edge.loopexit:                             ; preds = %.lr.ph.i47
  %.pre126.a = load ptr, ptr %i.a, align 8, !tbaa !79 ; 2 uses
  %.phi.trans.insert127 = getelementptr inbounds nuw i8, ptr %.pre126.a, i64 32
  %.pre128 = load ptr, ptr %.phi.trans.insert127, align 8, !tbaa !76
  %.phi.trans.insert129 = getelementptr inbounds nuw i8, ptr %.pre126.a, i64 24
  %.pre130 = load ptr, ptr %.phi.trans.insert129, align 8, !tbaa !45
  %.pre131 = ptrtoint ptr %.pre128 to i64
  %.pre132 = ptrtoint ptr %.pre130 to i64
  %.pre134 = sub i64 %.pre131, %.pre132
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.g
  %.pre-phi135 = phi i64 [ %.pre134, %._crit_edge.loopexit ], [ %i.bi, %bb.g ]
  %sext145 = shl i64 %.pre-phi135, 30
  %i.bn = ashr i64 %sext145, 32                   ; 2 uses
  %i.bo = icmp sgt i64 %i.ba, %i.bn
  br i1 %i.bo, label %.lr.ph.i58.lr.ph, label %._crit_edge106

.lr.ph.i58.lr.ph:                                 ; preds = %._crit_edge
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %indvars.iv ; 2 uses
  br label %.lr.ph.i58

.lr.ph.i47:                                       ; preds = %.lr.ph, %.lr.ph.i47
  %indvars.iv118 = phi i64 [ %indvars.iv, %.lr.ph ], [ %indvars.iv.next119, %.lr.ph.i47 ] ; 3 uses
  %i.bq = trunc nuw nsw i64 %indvars.iv118 to i32
  %i.br = lshr i32 %3, %i.bq
  %i.bs = trunc i32 %i.br to i1
  %i.bt = load ptr, ptr %i.av, align 8, !tbaa !109
  %i.bu = getelementptr inbounds nuw [24 x i8], ptr %i.bt, i64 %i.k
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !81
  %i.bw = getelementptr inbounds nuw [24 x i8], ptr %i.bv, i64 %indvars.iv
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !45
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %indvars.iv118
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !46
  %i.ca = sub nsw i32 0, %i.bz                    ; 2 uses
  %i.cb = load i32, ptr %i.bm, align 4, !tbaa !46 ; 2 uses
  %i.cc = sub nsw i32 0, %i.cb
  %.sink157 = select i1 %i.bs, i32 %i.cb, i32 %i.cc
  %i.cd = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #14 ; 3 uses
  store i32 %i.ca, ptr %i.cd, align 4
  %.sroa.491.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cd, i64 4 ; 2 uses
  store i32 %.sink157, ptr %.sroa.491.0..sroa_idx, align 4
  tail call void @_ZN7CaDiCaL6Solver3addEi(ptr noundef nonnull align 8 dereferenceable(24) %i.aw, i32 noundef %i.ca) #13
  %i.ce = load i32, ptr %.sroa.491.0..sroa_idx, align 4, !tbaa !46
  tail call void @_ZN7CaDiCaL6Solver3addEi(ptr noundef nonnull align 8 dereferenceable(24) %i.aw, i32 noundef %i.ce) #13
  tail call void @_ZN7CaDiCaL6Solver3addEi(ptr noundef nonnull align 8 dereferenceable(24) %i.aw, i32 noundef 0) #13
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cd, i64 noundef 8) #16
  %indvars.iv.next119 = add nuw nsw i64 %indvars.iv118, 1 ; 2 uses
  %i.cf = icmp slt i64 %indvars.iv.next119, %i.bk
  br i1 %i.cf, label %.lr.ph.i47, label %._crit_edge.loopexit, !llvm.loop !192

._crit_edge106:                                   ; preds = %.lr.ph.i58, %._crit_edge
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cg = load ptr, ptr %i.l, align 8, !tbaa !47, !nonnull !43, !align !44
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 4
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !126
  %i.cj = sext i32 %i.ci to i64
  %i.ck = icmp slt i64 %indvars.iv.next, %i.cj
  br i1 %i.ck, label %bb.g, label %._crit_edge109, !llvm.loop !193

.lr.ph.i58:                                       ; preds = %.lr.ph.i58.lr.ph, %.lr.ph.i58
  %indvars.iv121 = phi i64 [ %i.bn, %.lr.ph.i58.lr.ph ], [ %indvars.iv.next122, %.lr.ph.i58 ] ; 5 uses
  %i.cl = load ptr, ptr %i.av, align 8, !tbaa !109
  %i.cm = getelementptr inbounds nuw [24 x i8], ptr %i.cl, i64 %i.k
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !81
  %i.co = getelementptr inbounds nuw [24 x i8], ptr %i.cn, i64 %indvars.iv
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !45
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.cp, i64 %indvars.iv121
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !46
  %i.cs = sub nsw i32 0, %i.cr                    ; 2 uses
  %i.ct = load ptr, ptr %i.a, align 8, !tbaa !79, !nonnull !43, !align !44 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 24
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ct, i64 32
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !76
  %i.cx = load ptr, ptr %i.cu, align 8, !tbaa !45
  %i.cy = ptrtoint ptr %i.cw to i64
  %i.cz = ptrtoint ptr %i.cx to i64
  %i.da = sub i64 %i.cy, %i.cz
  %i.db = ashr exact i64 %i.da, 2
  %i.dc = sub nsw i64 %indvars.iv121, %i.db
  %i.dd = load ptr, ptr %i.ax, align 8, !tbaa !81
  %i.de = getelementptr inbounds nuw [24 x i8], ptr %i.dd, i64 %i.dc
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !45
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %i.ay
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !46
  %i.di = load i32, ptr %i.bp, align 4, !tbaa !46
  %i.dj = sub nsw i32 0, %i.di
  %i.dk = tail call noalias noundef nonnull dereferenceable(12) ptr @_Znwm(i64 noundef 12) #14 ; 4 uses
  store i32 %i.cs, ptr %i.dk, align 4
  %.sroa.476.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dk, i64 4 ; 2 uses
  store i32 %i.dh, ptr %.sroa.476.0..sroa_idx, align 4
  %.sroa.577.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dk, i64 8 ; 2 uses
  store i32 %i.dj, ptr %.sroa.577.0..sroa_idx, align 4
  tail call void @_ZN7CaDiCaL6Solver3addEi(ptr noundef nonnull align 8 dereferenceable(24) %i.aw, i32 noundef %i.cs) #13
  %i.dl = load i32, ptr %.sroa.476.0..sroa_idx, align 4, !tbaa !46
  tail call void @_ZN7CaDiCaL6Solver3addEi(ptr noundef nonnull align 8 dereferenceable(24) %i.aw, i32 noundef %i.dl) #13
  %i.dm = load i32, ptr %.sroa.577.0..sroa_idx, align 4, !tbaa !46
  tail call void @_ZN7CaDiCaL6Solver3addEi(ptr noundef nonnull align 8 dereferenceable(24) %i.aw, i32 noundef %i.dm) #13
  tail call void @_ZN7CaDiCaL6Solver3addEi(ptr noundef nonnull align 8 dereferenceable(24) %i.aw, i32 noundef 0) #13
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dk, i64 noundef 12) #16
  %i.dn = load ptr, ptr %i.av, align 8, !tbaa !109
  %i.do = getelementptr inbounds nuw [24 x i8], ptr %i.dn, i64 %i.k
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !81
  %i.dq = getelementptr inbounds nuw [24 x i8], ptr %i.dp, i64 %indvars.iv
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !45
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.dr, i64 %indvars.iv121
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !46
  %i.du = sub nsw i32 0, %i.dt                    ; 2 uses
  %i.dv = load ptr, ptr %i.a, align 8, !tbaa !79, !nonnull !43, !align !44 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 24
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dv, i64 32
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !76
  %i.dz = load ptr, ptr %i.dw, align 8, !tbaa !45
  %i.ea = ptrtoint ptr %i.dy to i64
  %i.eb = ptrtoint ptr %i.dz to i64
  %i.ec = sub i64 %i.ea, %i.eb
  %i.ed = ashr exact i64 %i.ec, 2
  %i.ee = sub nsw i64 %indvars.iv121, %i.ed
  %i.ef = load ptr, ptr %i.ax, align 8, !tbaa !81
  %i.eg = getelementptr inbounds nuw [24 x i8], ptr %i.ef, i64 %i.ee
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !45
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.eh, i64 %i.ay
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !46
  %i.ek = sub nsw i32 0, %i.ej
  %i.el = load i32, ptr %i.bp, align 4, !tbaa !46
  %i.em = tail call noalias noundef nonnull dereferenceable(12) ptr @_Znwm(i64 noundef 12) #14 ; 4 uses
  store i32 %i.du, ptr %i.em, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.em, i64 4 ; 2 uses
  store i32 %i.ek, ptr %.sroa.4.0..sroa_idx, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.em, i64 8 ; 2 uses
  store i32 %i.el, ptr %.sroa.5.0..sroa_idx, align 4
  tail call void @_ZN7CaDiCaL6Solver3addEi(ptr noundef nonnull align 8 dereferenceable(24) %i.aw, i32 noundef %i.du) #13
  %i.en = load i32, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !46
  tail call void @_ZN7CaDiCaL6Solver3addEi(ptr noundef nonnull align 8 dereferenceable(24) %i.aw, i32 noundef %i.en) #13
  %i.eo = load i32, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !46
  tail call void @_ZN7CaDiCaL6Solver3addEi(ptr noundef nonnull align 8 dereferenceable(24) %i.aw, i32 noundef %i.eo) #13
  tail call void @_ZN7CaDiCaL6Solver3addEi(ptr noundef nonnull align 8 dereferenceable(24) %i.aw, i32 noundef 0) #13
  tail call void @_ZdlPvm(ptr noundef nonnull %i.em, i64 noundef 12) #16
  %indvars.iv.next122 = add nsw i64 %indvars.iv121, 1 ; 2 uses
  %i.ep = icmp slt i64 %indvars.iv.next122, %i.ba
  br i1 %i.ep, label %.lr.ph.i58, label %._crit_edge106, !llvm.loop !194

._crit_edge109:                                   ; preds = %._crit_edge106, %bb.a, %_ZN5eSLIM19RelationSynthesiser20getNewVariableVectorEj.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN5eSLIM19RelationSynthesiser15setupGateValuesEv(ptr noundef nonnull align 8 dereferenceable(224) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %1 = alloca %"class.std::vector", align 8       ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !130  ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !164
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !131  ; 3 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = sdiv exact i64 %i.h, 24
end_hunk_0
